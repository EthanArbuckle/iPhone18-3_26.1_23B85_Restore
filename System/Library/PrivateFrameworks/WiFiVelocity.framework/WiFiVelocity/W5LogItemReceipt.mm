@interface W5LogItemReceipt
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLogItemReceipt:(id)receipt;
- (W5LogItemReceipt)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setInfo:(id)info;
- (void)setRelativeURLs:(id)ls;
@end

@implementation W5LogItemReceipt

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5LogItemReceipt;
  [(W5LogItemReceipt *)&v3 dealloc];
}

- (void)setInfo:(id)info
{
  info = self->_info;
  if (info != info)
  {

    self->_info = 0;
    if (info)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:info requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        v11 = objc_opt_class();
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v14 = objc_opt_class();
        self->_info = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, v11, v12, v13, v14, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (void)setRelativeURLs:(id)ls
{
  relativeURLs = self->_relativeURLs;
  if (relativeURLs != ls)
  {

    self->_relativeURLs = 0;
    if (ls)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:ls requiringSecureCoding:1 error:0];
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0x277CCAAC8];
        v9 = MEMORY[0x277CBEB98];
        v10 = objc_opt_class();
        self->_relativeURLs = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"Name: %@ (%ld)\n", W5DescriptionForLogItemID(-[W5LogItemRequest itemID](self->_request, "itemID")), -[W5LogItemRequest itemID](self->_request, "itemID")];
  [v3 appendFormat:@"UUID: %@\n", -[NSUUID UUIDString](-[W5LogItemRequest uuid](self->_request, "uuid"), "UUIDString")];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateStyle:0];
  [v4 setTimeStyle:2];
  [v4 setLocale:{objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale")}];
  [v3 appendFormat:@"Started: %@\n", objc_msgSend(v4, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", self->_startedAt))];
  [v3 appendFormat:@"Completed: %@\n", objc_msgSend(v4, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", self->_completedAt))];
  [v3 appendFormat:@"Configuration: %@\n", -[W5LogItemRequest configuration](self->_request, "configuration")];
  [v3 appendFormat:@"Info: %@\n", self->_info];
  [v3 appendFormat:@"URLs: %@\n", self->_relativeURLs];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v5.receiver = self;
  v5.super_class = W5LogItemReceipt;
  if (-[W5LogItemReceipt conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([protocol isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [protocol isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToLogItemReceipt:(id)receipt
{
  uuid = [(W5LogItemRequest *)self->_request uuid];
  v5 = [objc_msgSend(receipt "request")];

  return [(NSUUID *)uuid isEqual:v5];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5LogItemReceipt *)self isEqualToLogItemReceipt:equal];
}

- (unint64_t)hash
{
  uuid = [(W5LogItemRequest *)self->_request uuid];

  return [(NSUUID *)uuid hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5LogItemReceipt allocWithZone:?]];
  [(W5LogItemReceipt *)v4 setRequest:self->_request];
  [(W5LogItemReceipt *)v4 setInfo:self->_info];
  [(W5LogItemReceipt *)v4 setRelativeURLs:self->_relativeURLs];
  [(W5LogItemReceipt *)v4 setStartedAt:self->_startedAt];
  [(W5LogItemReceipt *)v4 setCompletedAt:self->_completedAt];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_request forKey:@"_request"];
  [coder encodeObject:self->_info forKey:@"_info"];
  [coder encodeObject:self->_relativeURLs forKey:@"_relativeURLs"];
  [coder encodeDouble:@"_startedAt" forKey:self->_startedAt];
  completedAt = self->_completedAt;

  [coder encodeDouble:@"_completedAt" forKey:completedAt];
}

- (W5LogItemReceipt)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = W5LogItemReceipt;
  v4 = [(W5LogItemReceipt *)&v16 init];
  if (v4)
  {
    v4->_request = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_request", "copy"}];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_relativeURLs = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"_relativeURLs", "copy"}];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v4->_info = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, v10, v11, v12, objc_opt_class(), 0), @"_info", "copy"}];
    [coder decodeDoubleForKey:@"_startedAt"];
    v4->_startedAt = v13;
    [coder decodeDoubleForKey:@"_completedAt"];
    v4->_completedAt = v14;
  }

  return v4;
}

@end
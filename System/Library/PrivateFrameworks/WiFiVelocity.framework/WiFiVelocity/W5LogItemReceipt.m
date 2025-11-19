@interface W5LogItemReceipt
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLogItemReceipt:(id)a3;
- (W5LogItemReceipt)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setInfo:(id)a3;
- (void)setRelativeURLs:(id)a3;
@end

@implementation W5LogItemReceipt

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5LogItemReceipt;
  [(W5LogItemReceipt *)&v3 dealloc];
}

- (void)setInfo:(id)a3
{
  info = self->_info;
  if (info != a3)
  {

    self->_info = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
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

- (void)setRelativeURLs:(id)a3
{
  relativeURLs = self->_relativeURLs;
  if (relativeURLs != a3)
  {

    self->_relativeURLs = 0;
    if (a3)
    {
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
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

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = W5LogItemReceipt;
  if (-[W5LogItemReceipt conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([a3 isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToLogItemReceipt:(id)a3
{
  v4 = [(W5LogItemRequest *)self->_request uuid];
  v5 = [objc_msgSend(a3 "request")];

  return [(NSUUID *)v4 isEqual:v5];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5LogItemReceipt *)self isEqualToLogItemReceipt:a3];
}

- (unint64_t)hash
{
  v2 = [(W5LogItemRequest *)self->_request uuid];

  return [(NSUUID *)v2 hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5LogItemReceipt allocWithZone:?]];
  [(W5LogItemReceipt *)v4 setRequest:self->_request];
  [(W5LogItemReceipt *)v4 setInfo:self->_info];
  [(W5LogItemReceipt *)v4 setRelativeURLs:self->_relativeURLs];
  [(W5LogItemReceipt *)v4 setStartedAt:self->_startedAt];
  [(W5LogItemReceipt *)v4 setCompletedAt:self->_completedAt];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_request forKey:@"_request"];
  [a3 encodeObject:self->_info forKey:@"_info"];
  [a3 encodeObject:self->_relativeURLs forKey:@"_relativeURLs"];
  [a3 encodeDouble:@"_startedAt" forKey:self->_startedAt];
  completedAt = self->_completedAt;

  [a3 encodeDouble:@"_completedAt" forKey:completedAt];
}

- (W5LogItemReceipt)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = W5LogItemReceipt;
  v4 = [(W5LogItemReceipt *)&v16 init];
  if (v4)
  {
    v4->_request = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_request", "copy"}];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_relativeURLs = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"_relativeURLs", "copy"}];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v4->_info = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, v10, v11, v12, objc_opt_class(), 0), @"_info", "copy"}];
    [a3 decodeDoubleForKey:@"_startedAt"];
    v4->_startedAt = v13;
    [a3 decodeDoubleForKey:@"_completedAt"];
    v4->_completedAt = v14;
  }

  return v4;
}

@end
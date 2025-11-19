@interface W5DiagnosticsTestRequest
+ (id)requestWithTestID:(int64_t)a3 configuration:(id)a4;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDiagnosticsTestRequest:(id)a3;
- (W5DiagnosticsTestRequest)init;
- (W5DiagnosticsTestRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setConfiguration:(id)a3;
@end

@implementation W5DiagnosticsTestRequest

- (W5DiagnosticsTestRequest)init
{
  v4.receiver = self;
  v4.super_class = W5DiagnosticsTestRequest;
  v2 = [(W5DiagnosticsTestRequest *)&v4 init];
  if (v2)
  {
    v2->_uuid = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
  }

  return v2;
}

+ (id)requestWithTestID:(int64_t)a3 configuration:(id)a4
{
  v6 = objc_alloc_init(W5DiagnosticsTestRequest);
  [(W5DiagnosticsTestRequest *)v6 setTestID:a3];
  [(W5DiagnosticsTestRequest *)v6 setConfiguration:a4];
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5DiagnosticsTestRequest;
  [(W5DiagnosticsTestRequest *)&v3 dealloc];
}

- (void)setConfiguration:(id)a3
{
  configuration = self->_configuration;
  if (configuration != a3)
  {

    self->_configuration = 0;
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
        self->_configuration = [v8 unarchivedObjectOfClasses:objc_msgSend(v9 fromData:"setWithObjects:" error:{v10, v11, v12, v13, v14, objc_opt_class(), 0), v7, 0}];
      }
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"Name: %@ (%ld)\n", W5DescriptionForDiagnosticsTestID(self->_testID), self->_testID];
  [v3 appendFormat:@"Description: %@\n", W5ExtendedDescriptionForDiagnosticsTestID(self->_testID)];
  [v3 appendFormat:@"Configuration: %@\n", self->_configuration];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = W5DiagnosticsTestRequest;
  if (-[W5DiagnosticsTestRequest conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([a3 isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToDiagnosticsTestRequest:(id)a3
{
  uuid = self->_uuid;
  v4 = [a3 uuid];

  return [(NSUUID *)uuid isEqual:v4];
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

  return [(W5DiagnosticsTestRequest *)self isEqualToDiagnosticsTestRequest:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5DiagnosticsTestRequest allocWithZone:?]];
  [(W5DiagnosticsTestRequest *)v4 setTestID:self->_testID];
  [(W5DiagnosticsTestRequest *)v4 setConfiguration:self->_configuration];
  [(W5DiagnosticsTestRequest *)v4 setUuid:self->_uuid];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_testID forKey:@"_testID"];
  [a3 encodeObject:self->_configuration forKey:@"_configuration"];
  uuid = self->_uuid;

  [a3 encodeObject:uuid forKey:@"_uuid"];
}

- (W5DiagnosticsTestRequest)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = W5DiagnosticsTestRequest;
  v4 = [(W5DiagnosticsTestRequest *)&v12 init];
  if (v4)
  {
    v4->_testID = [a3 decodeIntegerForKey:@"_testID"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v4->_configuration = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, v9, v10, objc_opt_class(), 0), @"_configuration", "copy"}];
    v4->_uuid = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_uuid", "copy"}];
  }

  return v4;
}

@end
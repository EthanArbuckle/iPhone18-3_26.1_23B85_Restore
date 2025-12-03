@interface PALocationAccess
- (PALocationAccess)initWithProto:(id)proto;
- (PALocationAccess)initWithProtoData:(id)data;
- (id)proto;
@end

@implementation PALocationAccess

- (PALocationAccess)initWithProto:(id)proto
{
  protoCopy = proto;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    access = [protoCopy access];
    v8.receiver = self;
    v8.super_class = PALocationAccess;
    self = [(PAAccess *)&v8 initWithProto:access];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PALocationAccess)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[PAPBLocationAccess alloc] initWithData:dataCopy];

    v6 = [(PALocationAccess *)self initWithProto:v5];
    self = v6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v7.receiver = self;
  v7.super_class = PALocationAccess;
  proto = [(PAAccess *)&v7 proto];
  if (proto)
  {
    [v3 setAccess:proto];
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
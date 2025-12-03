@interface PAReplayKitAccess
+ (id)accessWithAccessor:(id)accessor;
+ (id)accessWithAccessor:(id)accessor fromBroadcaster:(id)broadcaster;
- (BOOL)isEqualToAccess:(id)access withOptions:(unint64_t)options;
- (PAReplayKitAccess)initWithAccessor:(id)accessor;
- (PAReplayKitAccess)initWithAccessor:(id)accessor broadcaster:(id)broadcaster identifier:(id)identifier kind:(int64_t)kind;
- (PAReplayKitAccess)initWithAccessor:(id)accessor fromBroadcaster:(id)broadcaster;
- (PAReplayKitAccess)initWithCoder:(id)coder;
- (PAReplayKitAccess)initWithProto:(id)proto;
- (PAReplayKitAccess)initWithProtoData:(id)data;
- (id)JSONObject;
- (id)copyWithNewBroadcaster:(id)broadcaster;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)proto;
- (unint64_t)hashWithOptions:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PAReplayKitAccess

+ (id)accessWithAccessor:(id)accessor fromBroadcaster:(id)broadcaster
{
  broadcasterCopy = broadcaster;
  accessorCopy = accessor;
  v8 = [[self alloc] initWithAccessor:accessorCopy fromBroadcaster:broadcasterCopy];

  return v8;
}

+ (id)accessWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v5 = [[self alloc] initWithAccessor:accessorCopy];

  return v5;
}

- (PAReplayKitAccess)initWithAccessor:(id)accessor fromBroadcaster:(id)broadcaster
{
  broadcasterCopy = broadcaster;
  v11.receiver = self;
  v11.super_class = PAReplayKitAccess;
  v8 = [(PAAccess *)&v11 initWithAccessor:accessor];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_broadcaster, broadcaster);
  }

  return v9;
}

- (PAReplayKitAccess)initWithAccessor:(id)accessor
{
  v4.receiver = self;
  v4.super_class = PAReplayKitAccess;
  return [(PAAccess *)&v4 initWithAccessor:accessor];
}

- (PAReplayKitAccess)initWithAccessor:(id)accessor broadcaster:(id)broadcaster identifier:(id)identifier kind:(int64_t)kind
{
  broadcasterCopy = broadcaster;
  v15.receiver = self;
  v15.super_class = PAReplayKitAccess;
  v12 = [(PAAccess *)&v15 initWithAccessor:accessor identifier:identifier kind:kind];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_broadcaster, broadcaster);
  }

  return v13;
}

- (id)JSONObject
{
  v7.receiver = self;
  v7.super_class = PAReplayKitAccess;
  jSONObject = [(PAAccess *)&v7 JSONObject];
  v4 = [jSONObject mutableCopy];

  jSONObject2 = [(PAApplication *)self->_broadcaster JSONObject];
  [v4 setObject:jSONObject2 forKeyedSubscript:@"broadcaster"];

  return v4;
}

- (unint64_t)hashWithOptions:(unint64_t)options
{
  v6.receiver = self;
  v6.super_class = PAReplayKitAccess;
  v4 = [(PAAccess *)&v6 hashWithOptions:options];
  return [(PAApplication *)self->_broadcaster hash]- v4 + 32 * v4;
}

- (BOOL)isEqualToAccess:(id)access withOptions:(unint64_t)options
{
  accessCopy = access;
  v13.receiver = self;
  v13.super_class = PAReplayKitAccess;
  if ([(PAAccess *)&v13 isEqualToAccess:accessCopy withOptions:options])
  {
    broadcaster = self->_broadcaster;
    broadcaster = [accessCopy broadcaster];
    if (broadcaster == broadcaster)
    {
      v11 = 1;
    }

    else
    {
      v9 = self->_broadcaster;
      broadcaster2 = [accessCopy broadcaster];
      v11 = [(PAApplication *)v9 isEqual:broadcaster2];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithNewBroadcaster:(id)broadcaster
{
  broadcasterCopy = broadcaster;
  v6 = [(PAReplayKitAccess *)self copy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 72), broadcaster);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PAReplayKitAccess;
  v4 = [(PAAccess *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ broadcaster:<%@>", v4, self->_broadcaster];

  return v5;
}

- (PAReplayKitAccess)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PAReplayKitAccess;
  v5 = [(PAAccess *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"broadcaster"];
    broadcaster = v5->_broadcaster;
    v5->_broadcaster = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PAReplayKitAccess;
  coderCopy = coder;
  [(PAAccess *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_broadcaster forKey:{@"broadcaster", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = PAReplayKitAccess;
  v5 = [(PAAccess *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(PAApplication *)self->_broadcaster copyWithZone:zone];
    v7 = v5[9];
    v5[9] = v6;
  }

  return v5;
}

- (PAReplayKitAccess)initWithProto:(id)proto
{
  protoCopy = proto;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = protoCopy;
    access = [v5 access];
    v14.receiver = self;
    v14.super_class = PAReplayKitAccess;
    self = [(PAAccess *)&v14 initWithProto:access];

    if (self)
    {
      v7 = [PAApplication alloc];
      broadcaster = [v5 broadcaster];
      v9 = [(PAApplication *)v7 initWithProto:broadcaster];
      broadcaster = self->_broadcaster;
      self->_broadcaster = v9;

      selfCopy = self;
    }

    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (PAReplayKitAccess)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[PAPBReplayKitAccess alloc] initWithData:dataCopy];

    v6 = [(PAReplayKitAccess *)self initWithProto:v5];
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
  v8.receiver = self;
  v8.super_class = PAReplayKitAccess;
  proto = [(PAAccess *)&v8 proto];
  if (proto)
  {
    [v3 setAccess:proto];
    proto2 = [(PAApplication *)self->_broadcaster proto];
    [v3 setBroadcaster:proto2];

    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
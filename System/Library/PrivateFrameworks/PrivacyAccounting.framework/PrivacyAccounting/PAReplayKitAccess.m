@interface PAReplayKitAccess
+ (id)accessWithAccessor:(id)a3;
+ (id)accessWithAccessor:(id)a3 fromBroadcaster:(id)a4;
- (BOOL)isEqualToAccess:(id)a3 withOptions:(unint64_t)a4;
- (PAReplayKitAccess)initWithAccessor:(id)a3;
- (PAReplayKitAccess)initWithAccessor:(id)a3 broadcaster:(id)a4 identifier:(id)a5 kind:(int64_t)a6;
- (PAReplayKitAccess)initWithAccessor:(id)a3 fromBroadcaster:(id)a4;
- (PAReplayKitAccess)initWithCoder:(id)a3;
- (PAReplayKitAccess)initWithProto:(id)a3;
- (PAReplayKitAccess)initWithProtoData:(id)a3;
- (id)JSONObject;
- (id)copyWithNewBroadcaster:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)proto;
- (unint64_t)hashWithOptions:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PAReplayKitAccess

+ (id)accessWithAccessor:(id)a3 fromBroadcaster:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAccessor:v7 fromBroadcaster:v6];

  return v8;
}

+ (id)accessWithAccessor:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAccessor:v4];

  return v5;
}

- (PAReplayKitAccess)initWithAccessor:(id)a3 fromBroadcaster:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PAReplayKitAccess;
  v8 = [(PAAccess *)&v11 initWithAccessor:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_broadcaster, a4);
  }

  return v9;
}

- (PAReplayKitAccess)initWithAccessor:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAReplayKitAccess;
  return [(PAAccess *)&v4 initWithAccessor:a3];
}

- (PAReplayKitAccess)initWithAccessor:(id)a3 broadcaster:(id)a4 identifier:(id)a5 kind:(int64_t)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = PAReplayKitAccess;
  v12 = [(PAAccess *)&v15 initWithAccessor:a3 identifier:a5 kind:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_broadcaster, a4);
  }

  return v13;
}

- (id)JSONObject
{
  v7.receiver = self;
  v7.super_class = PAReplayKitAccess;
  v3 = [(PAAccess *)&v7 JSONObject];
  v4 = [v3 mutableCopy];

  v5 = [(PAApplication *)self->_broadcaster JSONObject];
  [v4 setObject:v5 forKeyedSubscript:@"broadcaster"];

  return v4;
}

- (unint64_t)hashWithOptions:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PAReplayKitAccess;
  v4 = [(PAAccess *)&v6 hashWithOptions:a3];
  return [(PAApplication *)self->_broadcaster hash]- v4 + 32 * v4;
}

- (BOOL)isEqualToAccess:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PAReplayKitAccess;
  if ([(PAAccess *)&v13 isEqualToAccess:v6 withOptions:a4])
  {
    broadcaster = self->_broadcaster;
    v8 = [v6 broadcaster];
    if (broadcaster == v8)
    {
      v11 = 1;
    }

    else
    {
      v9 = self->_broadcaster;
      v10 = [v6 broadcaster];
      v11 = [(PAApplication *)v9 isEqual:v10];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithNewBroadcaster:(id)a3
{
  v5 = a3;
  v6 = [(PAReplayKitAccess *)self copy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 72), a3);
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

- (PAReplayKitAccess)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PAReplayKitAccess;
  v5 = [(PAAccess *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"broadcaster"];
    broadcaster = v5->_broadcaster;
    v5->_broadcaster = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PAReplayKitAccess;
  v4 = a3;
  [(PAAccess *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_broadcaster forKey:{@"broadcaster", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = PAReplayKitAccess;
  v5 = [(PAAccess *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(PAApplication *)self->_broadcaster copyWithZone:a3];
    v7 = v5[9];
    v5[9] = v6;
  }

  return v5;
}

- (PAReplayKitAccess)initWithProto:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 access];
    v14.receiver = self;
    v14.super_class = PAReplayKitAccess;
    self = [(PAAccess *)&v14 initWithProto:v6];

    if (self)
    {
      v7 = [PAApplication alloc];
      v8 = [v5 broadcaster];
      v9 = [(PAApplication *)v7 initWithProto:v8];
      broadcaster = self->_broadcaster;
      self->_broadcaster = v9;

      v11 = self;
    }

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PAReplayKitAccess)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[PAPBReplayKitAccess alloc] initWithData:v4];

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
  v4 = [(PAAccess *)&v8 proto];
  if (v4)
  {
    [v3 setAccess:v4];
    v5 = [(PAApplication *)self->_broadcaster proto];
    [v3 setBroadcaster:v5];

    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
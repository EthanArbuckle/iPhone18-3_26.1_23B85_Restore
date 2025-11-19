@interface PRPeer
- (BOOL)isEqual:(id)a3;
- (PRPeer)init;
- (PRPeer)initWithCoder:(id)a3;
- (PRPeer)initWithUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PRPeer

- (PRPeer)init
{
  [(PRPeer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRPeer)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PRPeer;
  v6 = [(PRPeer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
  }

  return v7;
}

- (PRPeer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];

  v6 = [(PRPeer *)self initWithUUID:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRPeer alloc];
  uuid = self->_uuid;

  return [(PRPeer *)v4 initWithUUID:uuid];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PRPeer *)self uuid];
    v7 = [v5 uuid];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
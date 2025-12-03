@interface PRPeer
- (BOOL)isEqual:(id)equal;
- (PRPeer)init;
- (PRPeer)initWithCoder:(id)coder;
- (PRPeer)initWithUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PRPeer

- (PRPeer)init
{
  [(PRPeer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRPeer)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = PRPeer;
  v6 = [(PRPeer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
  }

  return v7;
}

- (PRPeer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];

  v6 = [(PRPeer *)self initWithUUID:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRPeer alloc];
  uuid = self->_uuid;

  return [(PRPeer *)v4 initWithUUID:uuid];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uuid = [(PRPeer *)self uuid];
    uuid2 = [v5 uuid];

    v8 = [uuid isEqual:uuid2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
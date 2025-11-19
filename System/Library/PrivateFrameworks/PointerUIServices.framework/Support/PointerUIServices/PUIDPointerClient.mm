@interface PUIDPointerClient
- (PUIDPointerClient)initWithUniqueIdentifier:(id)a3 auditToken:(id)a4;
- (id)description;
@end

@implementation PUIDPointerClient

- (PUIDPointerClient)initWithUniqueIdentifier:(id)a3 auditToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PUIDPointerClient;
  v8 = [(PUIDPointerClient *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v9;

    objc_storeStrong(&v8->_auditToken, a4);
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p pid:%d>", v4, self, [(PUIDPointerClient *)self pid]];;

  return v5;
}

@end
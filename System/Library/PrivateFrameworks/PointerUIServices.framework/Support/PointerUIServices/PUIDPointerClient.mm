@interface PUIDPointerClient
- (PUIDPointerClient)initWithUniqueIdentifier:(id)identifier auditToken:(id)token;
- (id)description;
@end

@implementation PUIDPointerClient

- (PUIDPointerClient)initWithUniqueIdentifier:(id)identifier auditToken:(id)token
{
  identifierCopy = identifier;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = PUIDPointerClient;
  v8 = [(PUIDPointerClient *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v9;

    objc_storeStrong(&v8->_auditToken, token);
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
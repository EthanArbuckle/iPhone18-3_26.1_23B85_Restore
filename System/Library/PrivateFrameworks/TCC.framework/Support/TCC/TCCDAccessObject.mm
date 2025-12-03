@interface TCCDAccessObject
- (TCCDAccessObject)initWithService:(id)service indirectObject:(id)object;
- (id)description;
@end

@implementation TCCDAccessObject

- (TCCDAccessObject)initWithService:(id)service indirectObject:(id)object
{
  serviceCopy = service;
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = TCCDAccessObject;
  v8 = [(TCCDAccessObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TCCDAccessObject *)v8 setServiceObject:serviceCopy];
    [(TCCDAccessObject *)v9 setIndirectObject:objectCopy];
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  serviceObject = [(TCCDAccessObject *)self serviceObject];
  name = [serviceObject name];
  [v3 appendFormat:@"S:%@", name];

  indirectObject = [(TCCDAccessObject *)self indirectObject];
  v7 = +[TCCDAccessIndirectObject unusedIndirectObject];

  if (indirectObject != v7)
  {
    indirectObject2 = [(TCCDAccessObject *)self indirectObject];
    v9 = [indirectObject2 description];
    [v3 appendFormat:@", IO:%@", v9];
  }

  v10 = [v3 copy];

  return v10;
}

@end
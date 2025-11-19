@interface TCCDAccessObject
- (TCCDAccessObject)initWithService:(id)a3 indirectObject:(id)a4;
- (id)description;
@end

@implementation TCCDAccessObject

- (TCCDAccessObject)initWithService:(id)a3 indirectObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TCCDAccessObject;
  v8 = [(TCCDAccessObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TCCDAccessObject *)v8 setServiceObject:v6];
    [(TCCDAccessObject *)v9 setIndirectObject:v7];
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [(TCCDAccessObject *)self serviceObject];
  v5 = [v4 name];
  [v3 appendFormat:@"S:%@", v5];

  v6 = [(TCCDAccessObject *)self indirectObject];
  v7 = +[TCCDAccessIndirectObject unusedIndirectObject];

  if (v6 != v7)
  {
    v8 = [(TCCDAccessObject *)self indirectObject];
    v9 = [v8 description];
    [v3 appendFormat:@", IO:%@", v9];
  }

  v10 = [v3 copy];

  return v10;
}

@end
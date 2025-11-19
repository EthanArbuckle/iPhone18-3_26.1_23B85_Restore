@interface MURetainingKey
+ (id)retainingKeyWithObject:(id)a3;
- (MURetainingKey)initWithObject:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation MURetainingKey

+ (id)retainingKeyWithObject:(id)a3
{
  v3 = [[MURetainingKey alloc] initWithObject:a3];

  return v3;
}

- (MURetainingKey)initWithObject:(id)a3
{
  v6.receiver = self;
  v6.super_class = MURetainingKey;
  v4 = [(MURetainingKey *)&v6 init];
  if (v4)
  {
    v4->_object = a3;
  }

  return v4;
}

- (void)dealloc
{
  [(MURetainingKey *)self purge];
  v3.receiver = self;
  v3.super_class = MURetainingKey;
  [(MURetainingKey *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MURetainingKey;
  return [-[MURetainingKey description](&v3 "description")];
}

@end
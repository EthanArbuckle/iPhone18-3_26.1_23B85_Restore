@interface SKDQuery
- (BOOL)isLeaf;
- (NSSet)primitiveAttributes;
- (NSString)primitiveString;
- (SKDQuery)init;
- (id)negated;
- (id)queryAttributes;
- (id)queryString;
@end

@implementation SKDQuery

- (SKDQuery)init
{
  v3.receiver = self;
  v3.super_class = SKDQuery;
  return [(SKDQuery *)&v3 init];
}

- (id)queryAttributes
{
  result = sub_231C17E80();
  __break(1u);
  return result;
}

- (id)queryString
{
  result = sub_231C17E80();
  __break(1u);
  return result;
}

- (NSString)primitiveString
{
  result = sub_231C17E80();
  __break(1u);
  return result;
}

- (NSSet)primitiveAttributes
{
  result = sub_231C17E80();
  __break(1u);
  return result;
}

- (BOOL)isLeaf
{
  result = sub_231C17E80();
  __break(1u);
  return result;
}

- (id)negated
{
  result = sub_231C17E80();
  __break(1u);
  return result;
}

@end
@interface CNVCardParsedResultBuilderFactory
+ (id)factoryWithBlock:(id)a3;
@end

@implementation CNVCardParsedResultBuilderFactory

+ (id)factoryWithBlock:(id)a3
{
  v3 = a3;
  v4 = [[_CNVCardParsedResultBuilderBlockFactory alloc] initWithBlock:v3];

  return v4;
}

@end
@interface CNVCardParsedResultBuilderFactory
+ (id)factoryWithBlock:(id)block;
@end

@implementation CNVCardParsedResultBuilderFactory

+ (id)factoryWithBlock:(id)block
{
  blockCopy = block;
  v4 = [[_CNVCardParsedResultBuilderBlockFactory alloc] initWithBlock:blockCopy];

  return v4;
}

@end
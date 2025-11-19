@interface WFSemanticSymbolSearch
+ (id)index;
@end

@implementation WFSemanticSymbolSearch

+ (id)index
{
  swift_getObjCClassMetadata();
  v2 = static SemanticSymbolIndex.index()();

  return v2;
}

@end
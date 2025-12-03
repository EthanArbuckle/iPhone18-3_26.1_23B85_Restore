@interface SXDocumentSectionBlueprint
+ (SXDocumentSectionBlueprint)blueprintWithItems:(id)items;
@end

@implementation SXDocumentSectionBlueprint

+ (SXDocumentSectionBlueprint)blueprintWithItems:(id)items
{
  itemsCopy = items;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[1];
  v4[1] = itemsCopy;

  return v4;
}

@end
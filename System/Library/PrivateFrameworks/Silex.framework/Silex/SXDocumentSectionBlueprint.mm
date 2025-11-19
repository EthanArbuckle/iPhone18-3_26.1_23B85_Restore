@interface SXDocumentSectionBlueprint
+ (SXDocumentSectionBlueprint)blueprintWithItems:(id)a3;
@end

@implementation SXDocumentSectionBlueprint

+ (SXDocumentSectionBlueprint)blueprintWithItems:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[1];
  v4[1] = v3;

  return v4;
}

@end
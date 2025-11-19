@interface WFJSONStructureLeafNode
+ (id)optionalLeafNode;
+ (id)requiredLeafNode;
@end

@implementation WFJSONStructureLeafNode

+ (id)requiredLeafNode
{
  v2 = objc_opt_new();
  [v2 setRequired:1];

  return v2;
}

+ (id)optionalLeafNode
{
  v2 = objc_opt_new();

  return v2;
}

@end
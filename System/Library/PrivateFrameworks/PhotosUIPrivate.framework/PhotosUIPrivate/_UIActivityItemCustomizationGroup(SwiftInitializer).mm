@interface _UIActivityItemCustomizationGroup(SwiftInitializer)
+ (id)createWithGroupName:()SwiftInitializer identifier:customizations:;
@end

@implementation _UIActivityItemCustomizationGroup(SwiftInitializer)

+ (id)createWithGroupName:()SwiftInitializer identifier:customizations:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[self alloc] _initGroupWithName:v10 identifier:v9 customizations:v8];

  return v11;
}

@end
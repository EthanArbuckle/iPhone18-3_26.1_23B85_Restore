@interface _UIEditMenuProvider
+ (id)menuElementsFromResponderChain:(id)a3 atLocation:(CGPoint)a4 inCoordinateSpace:(id)a5 includeMenuControllerItems:(BOOL)a6;
@end

@implementation _UIEditMenuProvider

+ (id)menuElementsFromResponderChain:(id)a3 atLocation:(CGPoint)a4 inCoordinateSpace:(id)a5 includeMenuControllerItems:(BOOL)a6
{
  v6 = a6;
  y = a4.y;
  x = a4.x;
  v10 = a5;
  v11 = a3;
  v12 = +[UIMenuSystem contextSystem];
  v13 = [v12 _newBuilderFromResponderChain:v11 atLocation:v10 inCoordinateSpace:{x, y}];

  v14 = [v13 menuForIdentifier:@"com.apple.menu.root"];
  v15 = [v14 children];

  if (v6)
  {
    v16 = _UIMenuForUIMenuControllerMenuItems();
    if (v16)
    {
      v17 = [v15 arrayByAddingObject:v16];

      v15 = v17;
    }
  }

  return v15;
}

@end
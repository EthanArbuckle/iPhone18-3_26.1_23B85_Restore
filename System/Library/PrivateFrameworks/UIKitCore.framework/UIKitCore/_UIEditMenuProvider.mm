@interface _UIEditMenuProvider
+ (id)menuElementsFromResponderChain:(id)chain atLocation:(CGPoint)location inCoordinateSpace:(id)space includeMenuControllerItems:(BOOL)items;
@end

@implementation _UIEditMenuProvider

+ (id)menuElementsFromResponderChain:(id)chain atLocation:(CGPoint)location inCoordinateSpace:(id)space includeMenuControllerItems:(BOOL)items
{
  itemsCopy = items;
  y = location.y;
  x = location.x;
  spaceCopy = space;
  chainCopy = chain;
  v12 = +[UIMenuSystem contextSystem];
  v13 = [v12 _newBuilderFromResponderChain:chainCopy atLocation:spaceCopy inCoordinateSpace:{x, y}];

  v14 = [v13 menuForIdentifier:@"com.apple.menu.root"];
  children = [v14 children];

  if (itemsCopy)
  {
    v16 = _UIMenuForUIMenuControllerMenuItems();
    if (v16)
    {
      v17 = [children arrayByAddingObject:v16];

      children = v17;
    }
  }

  return children;
}

@end
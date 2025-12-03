@interface UITextDraggableObject
+ (id)draggableObjectWithItemProvider:(id)provider fromRange:(id)range;
@end

@implementation UITextDraggableObject

+ (id)draggableObjectWithItemProvider:(id)provider fromRange:(id)range
{
  rangeCopy = range;
  providerCopy = provider;
  v7 = objc_opt_new();
  [v7 setItemProvider:providerCopy];

  [v7 setRange:rangeCopy];

  return v7;
}

@end
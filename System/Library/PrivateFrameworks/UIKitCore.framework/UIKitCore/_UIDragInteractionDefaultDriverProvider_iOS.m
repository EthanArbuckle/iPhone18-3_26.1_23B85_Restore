@interface _UIDragInteractionDefaultDriverProvider_iOS
- (id)createDefaultDriversForDragInteraction:(id)a3;
@end

@implementation _UIDragInteractionDefaultDriverProvider_iOS

- (id)createDefaultDriversForDragInteraction:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  [v4 addObject:v5];

  LODWORD(v5) = [v3 _allowsPointerDragBeforeLiftDelay];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [[_UIDragInteractionLongPressDriver alloc] initWithBehavior:v6];
  [v4 addObject:v7];

  v8 = [v4 copy];

  return v8;
}

@end
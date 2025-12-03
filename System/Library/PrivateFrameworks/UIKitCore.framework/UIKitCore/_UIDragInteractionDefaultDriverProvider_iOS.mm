@interface _UIDragInteractionDefaultDriverProvider_iOS
- (id)createDefaultDriversForDragInteraction:(id)interaction;
@end

@implementation _UIDragInteractionDefaultDriverProvider_iOS

- (id)createDefaultDriversForDragInteraction:(id)interaction
{
  interactionCopy = interaction;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  [v4 addObject:v5];

  LODWORD(v5) = [interactionCopy _allowsPointerDragBeforeLiftDelay];
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
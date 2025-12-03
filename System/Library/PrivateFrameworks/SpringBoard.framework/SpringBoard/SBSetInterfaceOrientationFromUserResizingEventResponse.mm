@interface SBSetInterfaceOrientationFromUserResizingEventResponse
- (SBSetInterfaceOrientationFromUserResizingEventResponse)initWithDisplayItem:(id)item desiredContentOrientation:(int64_t)orientation;
@end

@implementation SBSetInterfaceOrientationFromUserResizingEventResponse

- (SBSetInterfaceOrientationFromUserResizingEventResponse)initWithDisplayItem:(id)item desiredContentOrientation:(int64_t)orientation
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = SBSetInterfaceOrientationFromUserResizingEventResponse;
  v8 = [(SBChainableModifierEventResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_displayItem, item);
    v9->_desiredOrientation = orientation;
  }

  return v9;
}

@end
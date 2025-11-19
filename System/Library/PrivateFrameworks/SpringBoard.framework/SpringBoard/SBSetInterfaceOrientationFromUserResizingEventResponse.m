@interface SBSetInterfaceOrientationFromUserResizingEventResponse
- (SBSetInterfaceOrientationFromUserResizingEventResponse)initWithDisplayItem:(id)a3 desiredContentOrientation:(int64_t)a4;
@end

@implementation SBSetInterfaceOrientationFromUserResizingEventResponse

- (SBSetInterfaceOrientationFromUserResizingEventResponse)initWithDisplayItem:(id)a3 desiredContentOrientation:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBSetInterfaceOrientationFromUserResizingEventResponse;
  v8 = [(SBChainableModifierEventResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_displayItem, a3);
    v9->_desiredOrientation = a4;
  }

  return v9;
}

@end
@interface SBHPeopleWidgetPersonDetailInteractionContext
- (CGRect)homeScreenContentFrame;
- (SBHPeopleWidgetPersonDetailInteractionContext)initWithPersonURL:(id)a3 sourceIconView:(id)a4 referenceIconView:(id)a5 containerViewController:(id)a6 containerView:(id)a7 homeScreenContentView:(id)a8 homeScreenContentFrame:(CGRect)a9;
@end

@implementation SBHPeopleWidgetPersonDetailInteractionContext

- (SBHPeopleWidgetPersonDetailInteractionContext)initWithPersonURL:(id)a3 sourceIconView:(id)a4 referenceIconView:(id)a5 containerViewController:(id)a6 containerView:(id)a7 homeScreenContentView:(id)a8 homeScreenContentFrame:(CGRect)a9
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v19 = a3;
  v28 = a4;
  v27 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v29.receiver = self;
  v29.super_class = SBHPeopleWidgetPersonDetailInteractionContext;
  v23 = [(SBHPeopleWidgetPersonDetailInteractionContext *)&v29 init];
  if (v23)
  {
    v24 = [v19 copy];
    personURL = v23->_personURL;
    v23->_personURL = v24;

    objc_storeStrong(&v23->_sourceIconView, a4);
    objc_storeStrong(&v23->_referenceIconView, a5);
    objc_storeStrong(&v23->_containerViewController, a6);
    objc_storeStrong(&v23->_containerView, a7);
    objc_storeStrong(&v23->_homeScreenContentView, a8);
    v23->_homeScreenContentFrame.origin.x = x;
    v23->_homeScreenContentFrame.origin.y = y;
    v23->_homeScreenContentFrame.size.width = width;
    v23->_homeScreenContentFrame.size.height = height;
  }

  return v23;
}

- (CGRect)homeScreenContentFrame
{
  x = self->_homeScreenContentFrame.origin.x;
  y = self->_homeScreenContentFrame.origin.y;
  width = self->_homeScreenContentFrame.size.width;
  height = self->_homeScreenContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
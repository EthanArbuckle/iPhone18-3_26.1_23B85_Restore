@interface SBHPeopleWidgetPersonDetailInteractionContext
- (CGRect)homeScreenContentFrame;
- (SBHPeopleWidgetPersonDetailInteractionContext)initWithPersonURL:(id)l sourceIconView:(id)view referenceIconView:(id)iconView containerViewController:(id)controller containerView:(id)containerView homeScreenContentView:(id)contentView homeScreenContentFrame:(CGRect)frame;
@end

@implementation SBHPeopleWidgetPersonDetailInteractionContext

- (SBHPeopleWidgetPersonDetailInteractionContext)initWithPersonURL:(id)l sourceIconView:(id)view referenceIconView:(id)iconView containerViewController:(id)controller containerView:(id)containerView homeScreenContentView:(id)contentView homeScreenContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  lCopy = l;
  viewCopy = view;
  iconViewCopy = iconView;
  controllerCopy = controller;
  containerViewCopy = containerView;
  contentViewCopy = contentView;
  v29.receiver = self;
  v29.super_class = SBHPeopleWidgetPersonDetailInteractionContext;
  v23 = [(SBHPeopleWidgetPersonDetailInteractionContext *)&v29 init];
  if (v23)
  {
    v24 = [lCopy copy];
    personURL = v23->_personURL;
    v23->_personURL = v24;

    objc_storeStrong(&v23->_sourceIconView, view);
    objc_storeStrong(&v23->_referenceIconView, iconView);
    objc_storeStrong(&v23->_containerViewController, controller);
    objc_storeStrong(&v23->_containerView, containerView);
    objc_storeStrong(&v23->_homeScreenContentView, contentView);
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
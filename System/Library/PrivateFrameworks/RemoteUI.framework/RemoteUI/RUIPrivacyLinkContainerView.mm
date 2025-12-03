@interface RUIPrivacyLinkContainerView
- (RUIPrivacyLinkContainerView)initWithAttributes:(id)attributes;
- (double)footerHeightForWidth:(double)width inView:(id)view;
- (id)_viewController;
- (void)configureInPage:(id)page;
- (void)didMoveToWindow;
@end

@implementation RUIPrivacyLinkContainerView

- (RUIPrivacyLinkContainerView)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v9.receiver = self;
  v9.super_class = RUIPrivacyLinkContainerView;
  v6 = [(RUIPrivacyLinkContainerView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributes, attributes);
  }

  return v7;
}

- (id)_viewController
{
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      nextResponder = [(RUIPrivacyLinkContainerView *)selfCopy nextResponder];

      selfCopy = nextResponder;
    }

    while (nextResponder);
  }

  return selfCopy;
}

- (void)didMoveToWindow
{
  [(OBPrivacyLinkController *)self->_linkController removeFromParentViewController];
  _viewController = [(RUIPrivacyLinkContainerView *)self _viewController];
  [_viewController addChildViewController:self->_linkController];
  [(OBPrivacyLinkController *)self->_linkController didMoveToParentViewController:_viewController];
}

- (void)configureInPage:(id)page
{
  v39[4] = *MEMORY[0x277D85DE8];
  pageCopy = page;
  if (pageCopy)
  {
    v4 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"privacyBundleIdentifier"];

    if (v4)
    {
      v5 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"privacyBundleIdentifier"];
      v32 = [v5 componentsSeparatedByString:{@", "}];

      v35 = 0;
      v36 = &v35;
      v37 = 0x2050000000;
      v6 = getOBPrivacyLinkControllerClass_softClass;
      v38 = getOBPrivacyLinkControllerClass_softClass;
      if (!getOBPrivacyLinkControllerClass_softClass)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __getOBPrivacyLinkControllerClass_block_invoke;
        v34[3] = &unk_2782E8258;
        v34[4] = &v35;
        __getOBPrivacyLinkControllerClass_block_invoke(v34);
        v6 = v36[3];
      }

      v7 = v6;
      _Block_object_dispose(&v35, 8);
      v8 = [v6 linkWithBundleIdentifiers:v32];
      linkController = self->_linkController;
      self->_linkController = v8;

      v10 = [(NSDictionary *)self->_attributes objectForKeyedSubscript:@"hidePrivacyIcon"];
      bOOLValue = [v10 BOOLValue];

      if (bOOLValue)
      {
        [(OBPrivacyLinkController *)self->_linkController setDisplayIcon:0];
        [(OBPrivacyLinkController *)self->_linkController setDisplayCaptionText:0];
      }

      view = [(OBPrivacyLinkController *)self->_linkController view];
      [(RUIPrivacyLinkContainerView *)self addSubview:view];

      view2 = [(OBPrivacyLinkController *)self->_linkController view];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

      v24 = MEMORY[0x277CCAAD0];
      view3 = [(OBPrivacyLinkController *)self->_linkController view];
      topAnchor = [view3 topAnchor];
      topAnchor2 = [(RUIPrivacyLinkContainerView *)self topAnchor];
      v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
      v39[0] = v28;
      view4 = [(OBPrivacyLinkController *)self->_linkController view];
      bottomAnchor = [view4 bottomAnchor];
      bottomAnchor2 = [(RUIPrivacyLinkContainerView *)self bottomAnchor];
      v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
      v39[1] = v14;
      view5 = [(OBPrivacyLinkController *)self->_linkController view];
      leadingAnchor = [view5 leadingAnchor];
      leadingAnchor2 = [(RUIPrivacyLinkContainerView *)self leadingAnchor];
      v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v39[2] = v18;
      view6 = [(OBPrivacyLinkController *)self->_linkController view];
      trailingAnchor = [view6 trailingAnchor];
      trailingAnchor2 = [(RUIPrivacyLinkContainerView *)self trailingAnchor];
      v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v39[3] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
      [v24 activateConstraints:v23];
    }
  }
}

- (double)footerHeightForWidth:(double)width inView:(id)view
{
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1112014848;
  [(RUIPrivacyLinkContainerView *)self systemLayoutSizeFittingSize:view withHorizontalFittingPriority:width verticalFittingPriority:*(MEMORY[0x277D76C78] + 8), v4, v5];
  return v6;
}

@end
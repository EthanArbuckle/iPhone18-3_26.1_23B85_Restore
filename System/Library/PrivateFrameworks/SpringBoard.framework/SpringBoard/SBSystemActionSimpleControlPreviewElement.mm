@interface SBSystemActionSimpleControlPreviewElement
- (BOOL)isProvidedViewConcentric:(id)concentric inLayoutMode:(int64_t)mode;
- (SBSystemActionSimpleControlPreviewElement)initWithSystemAction:(id)action;
- (void)_updateContentWithProperties:(void *)properties previousProperties:;
- (void)controlSystemAction:(id)action propertiesDidChange:(id)change;
- (void)dealloc;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason;
@end

@implementation SBSystemActionSimpleControlPreviewElement

- (SBSystemActionSimpleControlPreviewElement)initWithSystemAction:(id)action
{
  actionCopy = action;
  iconView = [(SBControlSystemAction *)actionCopy iconView];
  v6 = +[SBSystemAction defaultSymbolFont];
  [iconView setFont:v6];

  [iconView setStyle:1];
  v7 = [objc_alloc(MEMORY[0x277D67DC8]) initWithView:iconView];
  v8 = [objc_alloc(MEMORY[0x277D67E58]) initWithText:&stru_283094718 style:4];
  v9 = objc_alloc_init(MEMORY[0x277D67DF0]);
  [v9 setLeadingContentViewProvider:v7];
  [v9 setTrailingContentViewProvider:v8];
  properties = [(SBControlSystemAction *)actionCopy properties];
  queue = [(SBHomeScreenConfigurationServer *)properties queue];
  v14.receiver = self;
  v14.super_class = SBSystemActionSimpleControlPreviewElement;
  v12 = [(SBSystemActionSimplePreviewElement *)&v14 initWithSystemAction:actionCopy contentProvider:v9 keyColor:queue];

  if (v12)
  {
    objc_storeStrong(&v12->_leadingIconView, iconView);
    objc_storeStrong(&v12->_trailingTextContentProvider, v8);
    [(SBSystemActionSimpleControlPreviewElement *)v12 _updateContentWithProperties:properties previousProperties:0];
    [(SBControlSystemAction *)actionCopy addObserver:v12];
  }

  return v12;
}

- (void)dealloc
{
  systemAction = [(SBSystemActionSimplePreviewElement *)self systemAction];
  [(SBControlSystemAction *)systemAction removeObserver:?];

  v4.receiver = self;
  v4.super_class = SBSystemActionSimpleControlPreviewElement;
  [(SBSystemActionSimpleControlPreviewElement *)&v4 dealloc];
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  v12.receiver = self;
  v12.super_class = SBSystemActionSimpleControlPreviewElement;
  if ([(SBSystemApertureProvidedContentElement *)&v12 layoutMode]!= mode)
  {
    v11.receiver = self;
    v11.super_class = SBSystemActionSimpleControlPreviewElement;
    [(SBSystemApertureProvidedContentElement *)&v11 setLayoutMode:mode reason:reason];
    contentVisibilityAssertion = self->_contentVisibilityAssertion;
    if (mode < 1)
    {
      if (!contentVisibilityAssertion)
      {
        return;
      }

      [(BSInvalidatable *)contentVisibilityAssertion invalidate];
      systemAction = self->_contentVisibilityAssertion;
      self->_contentVisibilityAssertion = 0;
    }

    else
    {
      if (contentVisibilityAssertion)
      {
        return;
      }

      systemAction = [(SBSystemActionSimplePreviewElement *)self systemAction];
      v9 = [(SBControlSystemAction *)systemAction acquireContentVisibilityAssertionForReason:?];
      v10 = self->_contentVisibilityAssertion;
      self->_contentVisibilityAssertion = v9;
    }
  }
}

- (BOOL)isProvidedViewConcentric:(id)concentric inLayoutMode:(int64_t)mode
{
  trailingTextContentProvider = self->_trailingTextContentProvider;
  concentricCopy = concentric;
  providedView = [(SBUISystemApertureTextContentProvider *)trailingTextContentProvider providedView];

  return providedView != concentricCopy;
}

- (void)_updateContentWithProperties:(void *)properties previousProperties:
{
  v5 = a2;
  if (self)
  {
    propertiesCopy = properties;
    foregroundCameraShutterButtonPIDs = [(SBCameraHardwareButton *)v5 foregroundCameraShutterButtonPIDs];
    v8 = MEMORY[0x277D76578];
    v9 = 0.5;
    if ((foregroundCameraShutterButtonPIDs & 1) == 0)
    {
      v9 = 1.0;
    }

    if ((foregroundCameraShutterButtonPIDs & 2) != 0)
    {
      v8 = MEMORY[0x277D76580];
    }

    v25 = *v8;
    if ((foregroundCameraShutterButtonPIDs & 2) != 0)
    {
      v10 = 0.25;
    }

    else
    {
      v10 = v9;
    }

    v11 = *(self + 184);
    v12 = MEMORY[0x277D75D18];
    if (properties)
    {
      v13 = 0.2;
    }

    else
    {
      v13 = 0.0;
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __93__SBSystemActionSimpleControlPreviewElement__updateContentWithProperties_previousProperties___block_invoke;
    v26[3] = &unk_2783A8BC8;
    v14 = v11;
    v27 = v14;
    v28 = v10;
    [v12 animateWithDuration:v26 animations:v13];
    authenticator = [(SBHomeScreenConfigurationServer *)v5 authenticator];
    v16 = [authenticator colorWithAlphaComponent:v10];

    listener = [(SBHomeScreenConfigurationServer *)v5 listener];
    v18 = *(self + 192);
    listener2 = [(SBHomeScreenConfigurationServer *)propertiesCopy listener];

    listener3 = [(SBHomeScreenConfigurationServer *)v5 listener];
    v21 = BSEqualStrings();

    if ((v21 & 1) == 0)
    {
      if (properties)
      {
        [v18 swapInText:listener textColor:v16];
LABEL_17:
        foregroundPendingRemovalCameraShutterButtonPIDs = [(SBCameraHardwareButton *)v5 foregroundPendingRemovalCameraShutterButtonPIDs];
        [v14 setAccessibilityIdentifier:foregroundPendingRemovalCameraShutterButtonPIDs];

        [v14 setAccessibilityTraits:v25];
        providedView = [v18 providedView];
        [providedView setAccessibilityTraits:v25];

        queue = [(SBHomeScreenConfigurationServer *)v5 queue];
        [(SBSystemActionSimplePreviewElement *)self setKeyColor:queue];

        goto LABEL_18;
      }

      [v18 setText:listener];
    }

    [v18 setContentColor:v16];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)controlSystemAction:(id)action propertiesDidChange:(id)change
{
  changeCopy = change;
  properties = [(SBControlSystemAction *)action properties];
  [(SBSystemActionSimpleControlPreviewElement *)self _updateContentWithProperties:properties previousProperties:changeCopy];
}

@end
@interface SBSystemActionSimpleControlPreviewElement
- (BOOL)isProvidedViewConcentric:(id)a3 inLayoutMode:(int64_t)a4;
- (SBSystemActionSimpleControlPreviewElement)initWithSystemAction:(id)a3;
- (void)_updateContentWithProperties:(void *)a3 previousProperties:;
- (void)controlSystemAction:(id)a3 propertiesDidChange:(id)a4;
- (void)dealloc;
- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4;
@end

@implementation SBSystemActionSimpleControlPreviewElement

- (SBSystemActionSimpleControlPreviewElement)initWithSystemAction:(id)a3
{
  v4 = a3;
  v5 = [(SBControlSystemAction *)v4 iconView];
  v6 = +[SBSystemAction defaultSymbolFont];
  [v5 setFont:v6];

  [v5 setStyle:1];
  v7 = [objc_alloc(MEMORY[0x277D67DC8]) initWithView:v5];
  v8 = [objc_alloc(MEMORY[0x277D67E58]) initWithText:&stru_283094718 style:4];
  v9 = objc_alloc_init(MEMORY[0x277D67DF0]);
  [v9 setLeadingContentViewProvider:v7];
  [v9 setTrailingContentViewProvider:v8];
  v10 = [(SBControlSystemAction *)v4 properties];
  v11 = [(SBHomeScreenConfigurationServer *)v10 queue];
  v14.receiver = self;
  v14.super_class = SBSystemActionSimpleControlPreviewElement;
  v12 = [(SBSystemActionSimplePreviewElement *)&v14 initWithSystemAction:v4 contentProvider:v9 keyColor:v11];

  if (v12)
  {
    objc_storeStrong(&v12->_leadingIconView, v5);
    objc_storeStrong(&v12->_trailingTextContentProvider, v8);
    [(SBSystemActionSimpleControlPreviewElement *)v12 _updateContentWithProperties:v10 previousProperties:0];
    [(SBControlSystemAction *)v4 addObserver:v12];
  }

  return v12;
}

- (void)dealloc
{
  v3 = [(SBSystemActionSimplePreviewElement *)self systemAction];
  [(SBControlSystemAction *)v3 removeObserver:?];

  v4.receiver = self;
  v4.super_class = SBSystemActionSimpleControlPreviewElement;
  [(SBSystemActionSimpleControlPreviewElement *)&v4 dealloc];
}

- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4
{
  v12.receiver = self;
  v12.super_class = SBSystemActionSimpleControlPreviewElement;
  if ([(SBSystemApertureProvidedContentElement *)&v12 layoutMode]!= a3)
  {
    v11.receiver = self;
    v11.super_class = SBSystemActionSimpleControlPreviewElement;
    [(SBSystemApertureProvidedContentElement *)&v11 setLayoutMode:a3 reason:a4];
    contentVisibilityAssertion = self->_contentVisibilityAssertion;
    if (a3 < 1)
    {
      if (!contentVisibilityAssertion)
      {
        return;
      }

      [(BSInvalidatable *)contentVisibilityAssertion invalidate];
      v8 = self->_contentVisibilityAssertion;
      self->_contentVisibilityAssertion = 0;
    }

    else
    {
      if (contentVisibilityAssertion)
      {
        return;
      }

      v8 = [(SBSystemActionSimplePreviewElement *)self systemAction];
      v9 = [(SBControlSystemAction *)v8 acquireContentVisibilityAssertionForReason:?];
      v10 = self->_contentVisibilityAssertion;
      self->_contentVisibilityAssertion = v9;
    }
  }
}

- (BOOL)isProvidedViewConcentric:(id)a3 inLayoutMode:(int64_t)a4
{
  trailingTextContentProvider = self->_trailingTextContentProvider;
  v5 = a3;
  v6 = [(SBUISystemApertureTextContentProvider *)trailingTextContentProvider providedView];

  return v6 != v5;
}

- (void)_updateContentWithProperties:(void *)a3 previousProperties:
{
  v5 = a2;
  if (a1)
  {
    v6 = a3;
    v7 = [(SBCameraHardwareButton *)v5 foregroundCameraShutterButtonPIDs];
    v8 = MEMORY[0x277D76578];
    v9 = 0.5;
    if ((v7 & 1) == 0)
    {
      v9 = 1.0;
    }

    if ((v7 & 2) != 0)
    {
      v8 = MEMORY[0x277D76580];
    }

    v25 = *v8;
    if ((v7 & 2) != 0)
    {
      v10 = 0.25;
    }

    else
    {
      v10 = v9;
    }

    v11 = *(a1 + 184);
    v12 = MEMORY[0x277D75D18];
    if (a3)
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
    v15 = [(SBHomeScreenConfigurationServer *)v5 authenticator];
    v16 = [v15 colorWithAlphaComponent:v10];

    v17 = [(SBHomeScreenConfigurationServer *)v5 listener];
    v18 = *(a1 + 192);
    v19 = [(SBHomeScreenConfigurationServer *)v6 listener];

    v20 = [(SBHomeScreenConfigurationServer *)v5 listener];
    v21 = BSEqualStrings();

    if ((v21 & 1) == 0)
    {
      if (a3)
      {
        [v18 swapInText:v17 textColor:v16];
LABEL_17:
        v22 = [(SBCameraHardwareButton *)v5 foregroundPendingRemovalCameraShutterButtonPIDs];
        [v14 setAccessibilityIdentifier:v22];

        [v14 setAccessibilityTraits:v25];
        v23 = [v18 providedView];
        [v23 setAccessibilityTraits:v25];

        v24 = [(SBHomeScreenConfigurationServer *)v5 queue];
        [(SBSystemActionSimplePreviewElement *)a1 setKeyColor:v24];

        goto LABEL_18;
      }

      [v18 setText:v17];
    }

    [v18 setContentColor:v16];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)controlSystemAction:(id)a3 propertiesDidChange:(id)a4
{
  v6 = a4;
  v7 = [(SBControlSystemAction *)a3 properties];
  [(SBSystemActionSimpleControlPreviewElement *)self _updateContentWithProperties:v7 previousProperties:v6];
}

@end
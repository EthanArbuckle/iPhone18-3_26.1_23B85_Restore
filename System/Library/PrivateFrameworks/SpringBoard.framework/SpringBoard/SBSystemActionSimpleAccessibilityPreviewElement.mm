@interface SBSystemActionSimpleAccessibilityPreviewElement
- (SBSystemActionSimpleAccessibilityPreviewElement)initWithSystemAction:(id)action contentProvider:(id)provider keyColor:(id)color;
- (uint64_t)_updateWithAccessibilityTripleClickStateIfNeeded:(uint64_t)needed animated:;
- (void)_handleTripleClickOptionDidChangeNotification;
- (void)dealloc;
@end

@implementation SBSystemActionSimpleAccessibilityPreviewElement

- (SBSystemActionSimpleAccessibilityPreviewElement)initWithSystemAction:(id)action contentProvider:(id)provider keyColor:(id)color
{
  actionCopy = action;
  providerCopy = provider;
  colorCopy = color;
  configuredAction = [actionCopy configuredAction];
  sb_configuredIntentAction = [configuredAction sb_configuredIntentAction];

  sectionIdentifier = [sb_configuredIntentAction sectionIdentifier];
  v15 = [sectionIdentifier isEqualToString:@"Accessibility"];

  if ((v15 & 1) == 0)
  {
    [SBSystemActionSimpleAccessibilityPreviewElement initWithSystemAction:a2 contentProvider:self keyColor:?];
  }

  v30.receiver = self;
  v30.super_class = SBSystemActionSimpleAccessibilityPreviewElement;
  v16 = [(SBSystemActionSimplePreviewElement *)&v30 initWithSystemAction:actionCopy contentProvider:providerCopy keyColor:colorCopy];
  v17 = v16;
  if (v16)
  {
    v16->_accessibilityTripleClickState = -1;
    trailingContentViewProvider = [providerCopy trailingContentViewProvider];
    providedView = [trailingContentViewProvider providedView];
    v20 = objc_opt_class();
    v21 = providedView;
    if (v20)
    {
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    trailingView = v17->_trailingView;
    v17->_trailingView = v23;

    sb_accessibilityTripleClickState = [(WFConfiguredStaccatoIntentAction *)sb_configuredIntentAction sb_accessibilityTripleClickState];
    if ((sb_accessibilityTripleClickState - 1) <= 1)
    {
      v26 = v17->_trailingView;
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      [(WFApertureIconView *)v26 setSymbolColorOverride:systemBlueColor];
    }

    if (v17->_accessibilityTripleClickState != sb_accessibilityTripleClickState)
    {
      v17->_accessibilityTripleClickState = sb_accessibilityTripleClickState;
      [(WFApertureIconView *)v17->_trailingView setEnabled:sb_accessibilityTripleClickState != 2 animated:0];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v17, _SBSystemActionSimpleAccessibilityPreviewElementTripleClickOptionDidChange, [MEMORY[0x277CE7E70] tripleClickOptionDidChangeNotification], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v17;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, [MEMORY[0x277CE7E70] tripleClickOptionDidChangeNotification], 0);
  v4.receiver = self;
  v4.super_class = SBSystemActionSimpleAccessibilityPreviewElement;
  [(SBSystemActionSimpleAccessibilityPreviewElement *)&v4 dealloc];
}

- (uint64_t)_updateWithAccessibilityTripleClickStateIfNeeded:(uint64_t)needed animated:
{
  if (result)
  {
    if (*(result + 184) != a2)
    {
      *(result + 184) = a2;
      return [*(result + 192) setEnabled:a2 != 2 animated:needed];
    }
  }

  return result;
}

- (void)_handleTripleClickOptionDidChangeNotification
{
  if (self)
  {
    systemAction = [(SBSystemActionSimplePreviewElement *)self systemAction];
    configuredAction = [systemAction configuredAction];
    sb_configuredIntentAction = [configuredAction sb_configuredIntentAction];

    sb_accessibilityTripleClickState = [(WFConfiguredStaccatoIntentAction *)sb_configuredIntentAction sb_accessibilityTripleClickState];
    if (*(self + 184) != sb_accessibilityTripleClickState)
    {
      *(self + 184) = sb_accessibilityTripleClickState;
      [*(self + 192) setEnabled:sb_accessibilityTripleClickState != 2 animated:1];
    }
  }
}

- (void)initWithSystemAction:(const char *)a1 contentProvider:(uint64_t)a2 keyColor:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[configuredIntentAction sectionIdentifier] isEqualToString:WFStaccatoActionSectionIdentifierAccessibility]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSystemActionSimpleAccessibilityPreviewElement.m";
    v16 = 1024;
    v17 = 32;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end
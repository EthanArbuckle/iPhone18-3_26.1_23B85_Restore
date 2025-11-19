@interface SBAlertItem
+ (id)_alertItemsController;
+ (void)activateAlertItem:(id)a3;
- (BOOL)_hasActiveKeyboardOnScreen;
- (BOOL)wakeDisplay;
- (NSString)clientIdentifier;
- (NSString)elementIdentifier;
- (SBAlertItem)init;
- (id)_publicDescription;
- (id)_systemApertureElement;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_clearAlertController;
- (void)_deactivationCompleted;
- (void)_setPresentationState:(unint64_t)a3;
- (void)_setPresented:(BOOL)a3;
- (void)didActivate;
- (void)elementLayoutSpecifier:(id)a3 layoutModeDidChange:(int64_t)a4 reason:(int64_t)a5;
- (void)playPresentationSound;
- (void)presentationStateDidChangeFromState:(unint64_t)a3 toState:(unint64_t)a4;
- (void)setIconImagePath:(id)a3;
@end

@implementation SBAlertItem

- (SBAlertItem)init
{
  v3.receiver = self;
  v3.super_class = SBAlertItem;
  result = [(SBAlertItem *)&v3 init];
  if (result)
  {
    *&result->_allowInSetup = 256;
    result->_allowMessageInCar = 1;
    result->_presented = 0;
    result->_presentationState = 4;
    result->_shouldMaskIcon = 1;
  }

  return result;
}

+ (id)_alertItemsController
{
  v2 = NSClassFromString(&cfstr_Sbalertitemsco.isa);

  return [(objc_class *)v2 sharedInstance];
}

+ (void)activateAlertItem:(id)a3
{
  v4 = a3;
  v5 = [a1 _alertItemsController];
  [v5 activateAlertItem:v4];
}

- (BOOL)wakeDisplay
{
  v3 = [(SBAlertItem *)self undimsScreen];
  if (v3)
  {

    LOBYTE(v3) = [(SBAlertItem *)self unlocksScreen];
  }

  return v3;
}

- (void)playPresentationSound
{
  if (![(SBAlertItem *)self didPlayPresentationSound])
  {
    self->_didPlayPresentationSound = 1;
    v3 = [(SBAlertItem *)self sound];
    [v3 playInEvironments:1 completion:0];
  }
}

- (void)didActivate
{
  if (!self->_didEverActivate)
  {
    self->_didEverActivate = 1;
  }
}

- (void)setIconImagePath:(id)a3
{
  objc_storeStrong(&self->_iconImagePath, a3);
  v5 = a3;
  v6 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v5];

  [(SBAlertItem *)self setIconImage:v6];
}

- (void)_setPresentationState:(unint64_t)a3
{
  if (self->_presentationState != a3)
  {
    self->_presentationState = a3;
    [SBAlertItem presentationStateDidChangeFromState:"presentationStateDidChangeFromState:toState:" toState:?];
  }
}

- (void)presentationStateDidChangeFromState:(unint64_t)a3 toState:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 - 1 > 3)
    {
      v7 = @"Unknown";
    }

    else
    {
      v7 = off_27836B050[a4 - 1];
    }

    v9 = 134218242;
    v10 = self;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_21E74E000, v6, OS_LOG_TYPE_DEFAULT, "<%p> Presentation state changed to %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_deactivationCompleted
{
  [(SBAlertItem *)self _setPresented:0];

  [(SBAlertItem *)self _clearAlertController];
}

- (void)_clearAlertController
{
  alertController = self->_alertController;
  self->_alertController = 0;
  MEMORY[0x2821F96F8]();
}

- (id)_systemApertureElement
{
  p_systemApertureElement = &self->_systemApertureElement;
  systemApertureElement = self->_systemApertureElement;
  if (!systemApertureElement)
  {
    v5 = [(SBAlertItem *)self _createSystemApertureElement];
    if (v5)
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 addElementLayoutSpecifierObserver:self];
      }

      objc_storeStrong(p_systemApertureElement, v5);
    }

    systemApertureElement = *p_systemApertureElement;
  }

  return systemApertureElement;
}

- (void)_setPresented:(BOOL)a3
{
  presented = self->_presented;
  if (presented != a3)
  {
    self->_presented = a3;
    if (!a3 || presented)
    {
      if (presented && !a3)
      {
        [(SBAlertItem *)self alertItemDidDisappear];
      }
    }

    else
    {
      [(SBAlertItem *)self alertItemDidAppear];
    }
  }
}

- (BOOL)_hasActiveKeyboardOnScreen
{
  v2 = [(SBAlertItem *)self alertController];
  v3 = [v2 contentViewController];
  v4 = [v3 view];
  v5 = [v4 sb_hasActiveKeyboardOnScreen];

  return v5;
}

- (id)_publicDescription
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(SBAlertItem *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_presented withName:@"presented"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBAlertItem *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (NSString)elementIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)clientIdentifier
{
  if (clientIdentifier_onceToken != -1)
  {
    [SBAlertItem clientIdentifier];
  }

  v3 = clientIdentifier___clientIdentifier;

  return v3;
}

void __31__SBAlertItem_clientIdentifier__block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = clientIdentifier___clientIdentifier;
  clientIdentifier___clientIdentifier = v0;
}

- (void)elementLayoutSpecifier:(id)a3 layoutModeDidChange:(int64_t)a4 reason:(int64_t)a5
{
  if ([a3 layoutMode] <= 0 && self->_presentationState != 3)
  {

    [(SBAlertItem *)self deactivateForReason:2];
  }
}

@end
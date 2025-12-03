@interface SBAlertItem
+ (id)_alertItemsController;
+ (void)activateAlertItem:(id)item;
- (BOOL)_hasActiveKeyboardOnScreen;
- (BOOL)wakeDisplay;
- (NSString)clientIdentifier;
- (NSString)elementIdentifier;
- (SBAlertItem)init;
- (id)_publicDescription;
- (id)_systemApertureElement;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_clearAlertController;
- (void)_deactivationCompleted;
- (void)_setPresentationState:(unint64_t)state;
- (void)_setPresented:(BOOL)presented;
- (void)didActivate;
- (void)elementLayoutSpecifier:(id)specifier layoutModeDidChange:(int64_t)change reason:(int64_t)reason;
- (void)playPresentationSound;
- (void)presentationStateDidChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)setIconImagePath:(id)path;
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

+ (void)activateAlertItem:(id)item
{
  itemCopy = item;
  _alertItemsController = [self _alertItemsController];
  [_alertItemsController activateAlertItem:itemCopy];
}

- (BOOL)wakeDisplay
{
  undimsScreen = [(SBAlertItem *)self undimsScreen];
  if (undimsScreen)
  {

    LOBYTE(undimsScreen) = [(SBAlertItem *)self unlocksScreen];
  }

  return undimsScreen;
}

- (void)playPresentationSound
{
  if (![(SBAlertItem *)self didPlayPresentationSound])
  {
    self->_didPlayPresentationSound = 1;
    sound = [(SBAlertItem *)self sound];
    [sound playInEvironments:1 completion:0];
  }
}

- (void)didActivate
{
  if (!self->_didEverActivate)
  {
    self->_didEverActivate = 1;
  }
}

- (void)setIconImagePath:(id)path
{
  objc_storeStrong(&self->_iconImagePath, path);
  pathCopy = path;
  v6 = [MEMORY[0x277D755B8] imageWithContentsOfFile:pathCopy];

  [(SBAlertItem *)self setIconImage:v6];
}

- (void)_setPresentationState:(unint64_t)state
{
  if (self->_presentationState != state)
  {
    self->_presentationState = state;
    [SBAlertItem presentationStateDidChangeFromState:"presentationStateDidChangeFromState:toState:" toState:?];
  }
}

- (void)presentationStateDidChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = SBLogCFUserNotifications();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (toState - 1 > 3)
    {
      v7 = @"Unknown";
    }

    else
    {
      v7 = off_27836B050[toState - 1];
    }

    v9 = 134218242;
    selfCopy = self;
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
    _createSystemApertureElement = [(SBAlertItem *)self _createSystemApertureElement];
    if (_createSystemApertureElement)
    {
      if (objc_opt_respondsToSelector())
      {
        [_createSystemApertureElement addElementLayoutSpecifierObserver:self];
      }

      objc_storeStrong(p_systemApertureElement, _createSystemApertureElement);
    }

    systemApertureElement = *p_systemApertureElement;
  }

  return systemApertureElement;
}

- (void)_setPresented:(BOOL)presented
{
  presented = self->_presented;
  if (presented != presented)
  {
    self->_presented = presented;
    if (!presented || presented)
    {
      if (presented && !presented)
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
  alertController = [(SBAlertItem *)self alertController];
  contentViewController = [alertController contentViewController];
  view = [contentViewController view];
  sb_hasActiveKeyboardOnScreen = [view sb_hasActiveKeyboardOnScreen];

  return sb_hasActiveKeyboardOnScreen;
}

- (id)_publicDescription
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  build = [v2 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBAlertItem *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_presented withName:@"presented"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBAlertItem *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
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

- (void)elementLayoutSpecifier:(id)specifier layoutModeDidChange:(int64_t)change reason:(int64_t)reason
{
  if ([specifier layoutMode] <= 0 && self->_presentationState != 3)
  {

    [(SBAlertItem *)self deactivateForReason:2];
  }
}

@end
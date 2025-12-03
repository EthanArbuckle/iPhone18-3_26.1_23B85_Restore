@interface UIWindowSceneActivationAction
+ (UIWindowSceneActivationAction)actionWithHandler:(UIActionHandler)handler;
+ (UIWindowSceneActivationAction)actionWithIdentifier:(UIActionIdentifier)identifier alternateAction:(UIAction *)alternateAction configurationProvider:(UIWindowSceneActivationActionConfigurationProvider)configurationProvider;
+ (UIWindowSceneActivationAction)actionWithTitle:(NSString *)title image:(UIImage *)image identifier:(UIActionIdentifier)identifier handler:(UIActionHandler)handler;
- (UIWindowSceneActivationAction)initWithCoder:(id)coder;
- (UIWindowSceneActivationAction)initWithTitle:(id)title image:(id)image identifier:(id)identifier discoverabilityTitle:(id)discoverabilityTitle attributes:(unint64_t)attributes alternateAction:(id)action configurationProvider:(id)provider;
- (UIWindowSceneActivationAction)initWithTitle:(id)title image:(id)image identifier:(id)identifier discoverabilityTitle:(id)discoverabilityTitle attributes:(unint64_t)attributes state:(int64_t)state handler:(id)handler;
- (_UIWindowSceneActivator)_preferredActivator;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_requestSceneActivation;
- (void)_willBePreparedForInitialDisplay:(id)display;
- (void)setTitle:(NSString *)title;
@end

@implementation UIWindowSceneActivationAction

+ (UIWindowSceneActivationAction)actionWithIdentifier:(UIActionIdentifier)identifier alternateAction:(UIAction *)alternateAction configurationProvider:(UIWindowSceneActivationActionConfigurationProvider)configurationProvider
{
  v8 = configurationProvider;
  v9 = alternateAction;
  v10 = identifier;
  v11 = [self alloc];
  _defaultTitle = [self _defaultTitle];
  _defaultImage = [self _defaultImage];
  v14 = [v11 initWithTitle:_defaultTitle image:_defaultImage identifier:v10 discoverabilityTitle:0 attributes:0 alternateAction:v9 configurationProvider:v8];

  return v14;
}

- (UIWindowSceneActivationAction)initWithTitle:(id)title image:(id)image identifier:(id)identifier discoverabilityTitle:(id)discoverabilityTitle attributes:(unint64_t)attributes alternateAction:(id)action configurationProvider:(id)provider
{
  titleCopy = title;
  imageCopy = image;
  identifierCopy = identifier;
  discoverabilityTitleCopy = discoverabilityTitle;
  actionCopy = action;
  providerCopy = provider;
  supportsMultipleScenes = [UIApp supportsMultipleScenes];
  if (!actionCopy || (supportsMultipleScenes & 1) != 0)
  {
    state = 0;
    if (!supportsMultipleScenes)
    {
      attributes |= 4uLL;
    }

    v26 = &__block_literal_global_262;
  }

  else
  {
    title = [actionCopy title];

    image = [actionCopy image];

    discoverabilityTitle = [actionCopy discoverabilityTitle];

    attributes = [actionCopy attributes];
    state = [actionCopy state];
    discoverabilityTitleCopy = discoverabilityTitle;
    imageCopy = image;
    titleCopy = title;
    v26 = &__block_literal_global_6_7;
  }

  v33.receiver = self;
  v33.super_class = UIWindowSceneActivationAction;
  v27 = [(UIAction *)&v33 initWithTitle:titleCopy image:imageCopy identifier:identifierCopy discoverabilityTitle:discoverabilityTitleCopy attributes:attributes state:state handler:v26];
  if (v27)
  {
    v28 = [actionCopy copy];
    alternateAction = v27->__alternateAction;
    v27->__alternateAction = v28;

    v30 = [providerCopy copy];
    configurationProvider = v27->__configurationProvider;
    v27->__configurationProvider = v30;
  }

  return v27;
}

void __134__UIWindowSceneActivationAction_initWithTitle_image_identifier_discoverabilityTitle_attributes_alternateAction_configurationProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 _alternateAction];
  v3 = [v2 sender];

  [v4 performWithSender:v3 target:0];
}

- (void)setTitle:(NSString *)title
{
  v4 = title;
  _defaultTitle = v4;
  if (!v4)
  {
    _defaultTitle = [objc_opt_class() _defaultTitle];
  }

  v6.receiver = self;
  v6.super_class = UIWindowSceneActivationAction;
  [(UIAction *)&v6 setTitle:_defaultTitle];
  if (!v4)
  {
  }
}

- (void)_requestSceneActivation
{
  sender = [(UIAction *)self sender];
  _configurationProvider = [(UIWindowSceneActivationAction *)self _configurationProvider];
  v5 = (_configurationProvider)[2](_configurationProvider, self);

  if (!v5)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = [v5 copy];

  _preferredActivator = [(UIWindowSceneActivationAction *)self _preferredActivator];
  v8 = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _viewForPresenting = v8;
    window = [_viewForPresenting window];
    windowScene = [window windowScene];

    if (windowScene)
    {
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    windowScene3 = 0;
    goto LABEL_11;
  }

  _viewForPresenting = [v8 _viewForPresenting];
  window2 = [_viewForPresenting window];
  windowScene2 = [window2 windowScene];

  if (!windowScene2)
  {
    windowScene3 = 0;
    goto LABEL_8;
  }

LABEL_7:
  window3 = [_viewForPresenting window];
  windowScene3 = [window3 windowScene];

LABEL_8:
LABEL_11:

  _UIWindowSceneActivationPrepareConfiguration(v6, 0, _preferredActivator, windowScene3, &__block_literal_global_11_0);
LABEL_12:
  [(UIWindowSceneActivationAction *)self set_preferredActivator:0];
  _alternateAction = [(UIWindowSceneActivationAction *)self _alternateAction];
  userActivity = [v6 userActivity];

  if (userActivity)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__UIWindowSceneActivationAction__requestSceneActivation__block_invoke_2;
    v18[3] = &unk_1E7109F48;
    v19 = _alternateAction;
    v20 = sender;
    _UIWindowSceneActivateConfiguration(v6, v20, v18);
  }

  else if (_alternateAction)
  {
    [_alternateAction performWithSender:sender target:0];
  }
}

void *__56__UIWindowSceneActivationAction__requestSceneActivation__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result performWithSender:*(a1 + 40) target:0];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIWindowSceneActivationAction alloc];
  title = [(UIMenuElement *)self title];
  image = [(UIMenuElement *)self image];
  identifier = [(UIAction *)self identifier];
  discoverabilityTitle = [(UIAction *)self discoverabilityTitle];
  attributes = [(UIAction *)self attributes];
  _alternateAction = [(UIWindowSceneActivationAction *)self _alternateAction];
  _configurationProvider = [(UIWindowSceneActivationAction *)self _configurationProvider];
  v12 = [(UIWindowSceneActivationAction *)v4 initWithTitle:title image:image identifier:identifier discoverabilityTitle:discoverabilityTitle attributes:attributes alternateAction:_alternateAction configurationProvider:_configurationProvider];

  _preferredActivator = [(UIWindowSceneActivationAction *)self _preferredActivator];
  [(UIWindowSceneActivationAction *)v12 set_preferredActivator:_preferredActivator];

  return v12;
}

- (void)_willBePreparedForInitialDisplay:(id)display
{
  displayCopy = display;
  v5.receiver = self;
  v5.super_class = UIWindowSceneActivationAction;
  [(UIMenuElement *)&v5 _willBePreparedForInitialDisplay:displayCopy];
  if ([displayCopy conformsToProtocol:&unk_1EFFF5E68])
  {
    [(UIWindowSceneActivationAction *)self set_preferredActivator:displayCopy];
  }
}

- (UIWindowSceneActivationAction)initWithTitle:(id)title image:(id)image identifier:(id)identifier discoverabilityTitle:(id)discoverabilityTitle attributes:(unint64_t)attributes state:(int64_t)state handler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindowSceneActivationAction.m" lineNumber:203 description:@"Initializer is unavailable. Please use init(title:image:identifier:discoverabilityTitle:attributes:alternate:_:)"];

  return 0;
}

- (UIWindowSceneActivationAction)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindowSceneActivationAction.m" lineNumber:208 description:@"Initializer is unavailable. Please use init(title:image:identifier:discoverabilityTitle:attributes:alternate:_:)"];

  return 0;
}

+ (UIWindowSceneActivationAction)actionWithHandler:(UIActionHandler)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindowSceneActivationAction.m" lineNumber:213 description:@"Initializer is unavailable. Please use init(title:image:identifier:discoverabilityTitle:attributes:alternate:_:)"];

  return 0;
}

+ (UIWindowSceneActivationAction)actionWithTitle:(NSString *)title image:(UIImage *)image identifier:(UIActionIdentifier)identifier handler:(UIActionHandler)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindowSceneActivationAction.m" lineNumber:221 description:@"Initializer is unavailable. Please use init(title:image:identifier:discoverabilityTitle:attributes:alternate:_:)"];

  return 0;
}

- (_UIWindowSceneActivator)_preferredActivator
{
  WeakRetained = objc_loadWeakRetained(&self->__preferredActivator);

  return WeakRetained;
}

@end
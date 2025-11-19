@interface UIWindowSceneActivationAction
+ (UIWindowSceneActivationAction)actionWithHandler:(UIActionHandler)handler;
+ (UIWindowSceneActivationAction)actionWithIdentifier:(UIActionIdentifier)identifier alternateAction:(UIAction *)alternateAction configurationProvider:(UIWindowSceneActivationActionConfigurationProvider)configurationProvider;
+ (UIWindowSceneActivationAction)actionWithTitle:(NSString *)title image:(UIImage *)image identifier:(UIActionIdentifier)identifier handler:(UIActionHandler)handler;
- (UIWindowSceneActivationAction)initWithCoder:(id)a3;
- (UIWindowSceneActivationAction)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 discoverabilityTitle:(id)a6 attributes:(unint64_t)a7 alternateAction:(id)a8 configurationProvider:(id)a9;
- (UIWindowSceneActivationAction)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 discoverabilityTitle:(id)a6 attributes:(unint64_t)a7 state:(int64_t)a8 handler:(id)a9;
- (_UIWindowSceneActivator)_preferredActivator;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_requestSceneActivation;
- (void)_willBePreparedForInitialDisplay:(id)a3;
- (void)setTitle:(NSString *)title;
@end

@implementation UIWindowSceneActivationAction

+ (UIWindowSceneActivationAction)actionWithIdentifier:(UIActionIdentifier)identifier alternateAction:(UIAction *)alternateAction configurationProvider:(UIWindowSceneActivationActionConfigurationProvider)configurationProvider
{
  v8 = configurationProvider;
  v9 = alternateAction;
  v10 = identifier;
  v11 = [a1 alloc];
  v12 = [a1 _defaultTitle];
  v13 = [a1 _defaultImage];
  v14 = [v11 initWithTitle:v12 image:v13 identifier:v10 discoverabilityTitle:0 attributes:0 alternateAction:v9 configurationProvider:v8];

  return v14;
}

- (UIWindowSceneActivationAction)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 discoverabilityTitle:(id)a6 attributes:(unint64_t)a7 alternateAction:(id)a8 configurationProvider:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = [UIApp supportsMultipleScenes];
  if (!v19 || (v21 & 1) != 0)
  {
    v25 = 0;
    if (!v21)
    {
      a7 |= 4uLL;
    }

    v26 = &__block_literal_global_262;
  }

  else
  {
    v22 = [v19 title];

    v23 = [v19 image];

    v24 = [v19 discoverabilityTitle];

    a7 = [v19 attributes];
    v25 = [v19 state];
    v18 = v24;
    v16 = v23;
    v15 = v22;
    v26 = &__block_literal_global_6_7;
  }

  v33.receiver = self;
  v33.super_class = UIWindowSceneActivationAction;
  v27 = [(UIAction *)&v33 initWithTitle:v15 image:v16 identifier:v17 discoverabilityTitle:v18 attributes:a7 state:v25 handler:v26];
  if (v27)
  {
    v28 = [v19 copy];
    alternateAction = v27->__alternateAction;
    v27->__alternateAction = v28;

    v30 = [v20 copy];
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
  v5 = v4;
  if (!v4)
  {
    v5 = [objc_opt_class() _defaultTitle];
  }

  v6.receiver = self;
  v6.super_class = UIWindowSceneActivationAction;
  [(UIAction *)&v6 setTitle:v5];
  if (!v4)
  {
  }
}

- (void)_requestSceneActivation
{
  v3 = [(UIAction *)self sender];
  v4 = [(UIWindowSceneActivationAction *)self _configurationProvider];
  v5 = (v4)[2](v4, self);

  if (!v5)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = [v5 copy];

  v7 = [(UIWindowSceneActivationAction *)self _preferredActivator];
  v8 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = [v9 window];
    v11 = [v10 windowScene];

    if (v11)
    {
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_11;
  }

  v9 = [v8 _viewForPresenting];
  v12 = [v9 window];
  v13 = [v12 windowScene];

  if (!v13)
  {
    v15 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v14 = [v9 window];
  v15 = [v14 windowScene];

LABEL_8:
LABEL_11:

  _UIWindowSceneActivationPrepareConfiguration(v6, 0, v7, v15, &__block_literal_global_11_0);
LABEL_12:
  [(UIWindowSceneActivationAction *)self set_preferredActivator:0];
  v16 = [(UIWindowSceneActivationAction *)self _alternateAction];
  v17 = [v6 userActivity];

  if (v17)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__UIWindowSceneActivationAction__requestSceneActivation__block_invoke_2;
    v18[3] = &unk_1E7109F48;
    v19 = v16;
    v20 = v3;
    _UIWindowSceneActivateConfiguration(v6, v20, v18);
  }

  else if (v16)
  {
    [v16 performWithSender:v3 target:0];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIWindowSceneActivationAction alloc];
  v5 = [(UIMenuElement *)self title];
  v6 = [(UIMenuElement *)self image];
  v7 = [(UIAction *)self identifier];
  v8 = [(UIAction *)self discoverabilityTitle];
  v9 = [(UIAction *)self attributes];
  v10 = [(UIWindowSceneActivationAction *)self _alternateAction];
  v11 = [(UIWindowSceneActivationAction *)self _configurationProvider];
  v12 = [(UIWindowSceneActivationAction *)v4 initWithTitle:v5 image:v6 identifier:v7 discoverabilityTitle:v8 attributes:v9 alternateAction:v10 configurationProvider:v11];

  v13 = [(UIWindowSceneActivationAction *)self _preferredActivator];
  [(UIWindowSceneActivationAction *)v12 set_preferredActivator:v13];

  return v12;
}

- (void)_willBePreparedForInitialDisplay:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = UIWindowSceneActivationAction;
  [(UIMenuElement *)&v5 _willBePreparedForInitialDisplay:v4];
  if ([v4 conformsToProtocol:&unk_1EFFF5E68])
  {
    [(UIWindowSceneActivationAction *)self set_preferredActivator:v4];
  }
}

- (UIWindowSceneActivationAction)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 discoverabilityTitle:(id)a6 attributes:(unint64_t)a7 state:(int64_t)a8 handler:(id)a9
{
  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"UIWindowSceneActivationAction.m" lineNumber:203 description:@"Initializer is unavailable. Please use init(title:image:identifier:discoverabilityTitle:attributes:alternate:_:)"];

  return 0;
}

- (UIWindowSceneActivationAction)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIWindowSceneActivationAction.m" lineNumber:208 description:@"Initializer is unavailable. Please use init(title:image:identifier:discoverabilityTitle:attributes:alternate:_:)"];

  return 0;
}

+ (UIWindowSceneActivationAction)actionWithHandler:(UIActionHandler)handler
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:a1 file:@"UIWindowSceneActivationAction.m" lineNumber:213 description:@"Initializer is unavailable. Please use init(title:image:identifier:discoverabilityTitle:attributes:alternate:_:)"];

  return 0;
}

+ (UIWindowSceneActivationAction)actionWithTitle:(NSString *)title image:(UIImage *)image identifier:(UIActionIdentifier)identifier handler:(UIActionHandler)handler
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:a1 file:@"UIWindowSceneActivationAction.m" lineNumber:221 description:@"Initializer is unavailable. Please use init(title:image:identifier:discoverabilityTitle:attributes:alternate:_:)"];

  return 0;
}

- (_UIWindowSceneActivator)_preferredActivator
{
  WeakRetained = objc_loadWeakRetained(&self->__preferredActivator);

  return WeakRetained;
}

@end
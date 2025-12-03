@interface _UIEditMenuPresentationServer
+ (id)sharedPresentationServer;
- (CGRect)_editMenuPresentation:(id)presentation targetRectForConfiguration:(id)configuration;
- (_UIEditMenuPresentationServer)init;
- (void)_editMenuPresentation:(id)presentation didSelectMenuLeaf:(id)leaf completion:(id)completion;
- (void)_editMenuPresentation:(id)presentation preparedMenuForDisplay:(id)display completion:(id)completion;
- (void)_editMenuPresentation:(id)presentation willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)_editMenuPresentation:(id)presentation willPresentMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)_sendLifecycleEvent:(int64_t)event forMenuWithIdentifier:(id)identifier;
- (void)dismissEditMenuForIdentifier:(id)identifier hideReason:(int64_t)reason;
- (void)presentEditMenuWithConfiguration:(id)configuration originContext:(id)context inDisplayDelegate:(id)delegate forConnection:(id)connection;
- (void)replaceEditMenuForIdentifier:(id)identifier updatedMenu:(id)menu reason:(int64_t)reason;
- (void)updateUserInterfaceStyleForMenuWithIdentifier:(id)identifier userInterfaceStyle:(int64_t)style;
@end

@implementation _UIEditMenuPresentationServer

+ (id)sharedPresentationServer
{
  if (_MergedGlobals_1281 != -1)
  {
    dispatch_once(&_MergedGlobals_1281, &__block_literal_global_516);
  }

  v3 = qword_1ED4A0940;

  return v3;
}

- (_UIEditMenuPresentationServer)init
{
  v10.receiver = self;
  v10.super_class = _UIEditMenuPresentationServer;
  v2 = [(_UIEditMenuPresentationServer *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    configurations = v2->_configurations;
    v2->_configurations = v3;

    v5 = objc_opt_new();
    presentations = v2->_presentations;
    v2->_presentations = v5;

    v7 = objc_opt_new();
    connections = v2->_connections;
    v2->_connections = v7;

    +[UIEditMenuInteraction _registerPlatformMetrics];
  }

  return v2;
}

- (void)presentEditMenuWithConfiguration:(id)configuration originContext:(id)context inDisplayDelegate:(id)delegate forConnection:(id)connection
{
  connectionCopy = connection;
  delegateCopy = delegate;
  contextCopy = context;
  configurationCopy = configuration;
  identifier = [configurationCopy identifier];
  configurations = [(_UIEditMenuPresentationServer *)self configurations];
  [configurations setObject:configurationCopy forKey:identifier];

  connections = [(_UIEditMenuPresentationServer *)self connections];
  [connections setObject:connectionCopy forKey:identifier];

  v16 = [_UIEditMenuOverlayUIServerPresentation alloc];
  rootViewController = [delegateCopy rootViewController];
  view = [rootViewController view];
  v19 = [(_UIEditMenuPresentation *)v16 initWithDelegate:self sourceView:view];

  -[_UIEditMenuPresentation setEnforcesMenuControllerLifecycle:](v19, "setEnforcesMenuControllerLifecycle:", [configurationCopy enforcesMenuControllerLifecycle]);
  [(_UIEditMenuOverlayUIServerPresentation *)v19 displayMenuForConfiguration:configurationCopy originContext:contextCopy inDisplayDelegate:delegateCopy];

  presentations = [(_UIEditMenuPresentationServer *)self presentations];
  [presentations setObject:v19 forKey:identifier];
}

- (void)dismissEditMenuForIdentifier:(id)identifier hideReason:(int64_t)reason
{
  identifierCopy = identifier;
  presentations = [(_UIEditMenuPresentationServer *)self presentations];
  v8 = [presentations objectForKeyedSubscript:identifierCopy];

  [v8 hideMenuWithReason:reason];
}

- (void)replaceEditMenuForIdentifier:(id)identifier updatedMenu:(id)menu reason:(int64_t)reason
{
  menuCopy = menu;
  identifierCopy = identifier;
  presentations = [(_UIEditMenuPresentationServer *)self presentations];
  v11 = [presentations objectForKeyedSubscript:identifierCopy];

  [v11 replaceVisibleMenuWithMenu:menuCopy reason:reason];
}

- (void)updateUserInterfaceStyleForMenuWithIdentifier:(id)identifier userInterfaceStyle:(int64_t)style
{
  identifierCopy = identifier;
  presentations = [(_UIEditMenuPresentationServer *)self presentations];
  v8 = [presentations objectForKeyedSubscript:identifierCopy];

  [v8 setUserInterfaceStyle:style];
}

- (void)_sendLifecycleEvent:(int64_t)event forMenuWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = [[_UIOEditMenuLifecycleEventUpdateAction alloc] initWithMenuIdentifier:identifierCopy event:event];
  connections = [(_UIEditMenuPresentationServer *)self connections];
  v8 = [connections objectForKeyedSubscript:identifierCopy];

  [v8 sendAction:v9];
}

- (void)_editMenuPresentation:(id)presentation didSelectMenuLeaf:(id)leaf completion:(id)completion
{
  leafCopy = leaf;
  completionCopy = completion;
  presentationConfiguration = [presentation presentationConfiguration];
  identifier = [presentationConfiguration identifier];

  connections = [(_UIEditMenuPresentationServer *)self connections];
  v13 = [connections objectForKeyedSubscript:identifier];

  v14 = leafCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84___UIEditMenuPresentationServer__editMenuPresentation_didSelectMenuLeaf_completion___block_invoke;
  aBlock[3] = &unk_1E711FEC8;
  v15 = completionCopy;
  v25 = v15;
  v16 = v13;
  v24 = v16;
  v17 = _Block_copy(aBlock);
  if ([v14 _acceptBoolMenuVisit:0 commandVisit:&__block_literal_global_115_4 actionVisit:&__block_literal_global_119_1])
  {
    v18 = +[UIPasteboard generalPasteboard];
    v19 = [v16 pid];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __84___UIEditMenuPresentationServer__editMenuPresentation_didSelectMenuLeaf_completion___block_invoke_4;
    v20[3] = &unk_1E711FEF0;
    v22 = v17;
    v21 = v14;
    [v18 _requestSecurePasteAuthenticationMessageWithContext:0x51A2F5DDCA075EA1 forClientVersionedPID:v19 completionBlock:v20];
  }

  else
  {
    (*(v17 + 2))(v17, v14, 0);
  }
}

- (void)_editMenuPresentation:(id)presentation preparedMenuForDisplay:(id)display completion:(id)completion
{
  completionCopy = completion;
  displayCopy = display;
  presentationConfiguration = [presentation presentationConfiguration];
  identifier = [presentationConfiguration identifier];

  connections = [(_UIEditMenuPresentationServer *)self connections];
  v13 = [connections objectForKeyedSubscript:identifier];

  v14 = [_UIOMenuPreparationAction alloc];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89___UIEditMenuPresentationServer__editMenuPresentation_preparedMenuForDisplay_completion___block_invoke;
  v17[3] = &unk_1E711FF18;
  v18 = completionCopy;
  v15 = completionCopy;
  v16 = [(_UIOMenuPreparationAction *)v14 initWithMenu:displayCopy responseHandler:v17];

  [v13 sendAction:v16];
}

- (CGRect)_editMenuPresentation:(id)presentation targetRectForConfiguration:(id)configuration
{
  presentationCopy = presentation;
  presentationConfiguration = [presentationCopy presentationConfiguration];
  if (!presentationConfiguration)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEditMenuPresentationServer.m" lineNumber:163 description:@"Cannot present a menu without a presentation configuration"];
  }

  originContext = [presentationCopy originContext];
  sourceView = [presentationCopy sourceView];

  [originContext translatedReferencePointForDestinationView:sourceView];
  v11 = v10;
  v13 = v12;

  [presentationConfiguration sourceRect];
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_editMenuPresentation:(id)presentation willPresentMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  presentationConfiguration = [presentation presentationConfiguration];
  identifier = [presentationConfiguration identifier];

  [(_UIEditMenuPresentationServer *)self _sendLifecycleEvent:0 forMenuWithIdentifier:identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96___UIEditMenuPresentationServer__editMenuPresentation_willPresentMenuForConfiguration_animator___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v11[4] = self;
  v12 = identifier;
  v10 = identifier;
  [animatorCopy addCompletion:v11];
}

- (void)_editMenuPresentation:(id)presentation willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  presentationConfiguration = [presentation presentationConfiguration];
  identifier = [presentationConfiguration identifier];

  [(_UIEditMenuPresentationServer *)self _sendLifecycleEvent:2 forMenuWithIdentifier:identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96___UIEditMenuPresentationServer__editMenuPresentation_willDismissMenuForConfiguration_animator___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v11[4] = self;
  v12 = identifier;
  v10 = identifier;
  [animatorCopy addCompletion:v11];
}

@end
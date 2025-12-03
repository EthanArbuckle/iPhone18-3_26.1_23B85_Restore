@interface SWPresentationManager
- (SWPresentationManager)initWithWebContentScriptsManager:(id)manager messageHandlerManager:(id)handlerManager documentStateProvider:(id)provider logger:(id)logger;
- (double)height;
- (id)descriptionForPresentationState:(unint64_t)state;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
- (void)inspectionWithCompletion:(id)completion;
- (void)refresh;
- (void)reset;
- (void)setPresentationState:(unint64_t)state;
@end

@implementation SWPresentationManager

- (SWPresentationManager)initWithWebContentScriptsManager:(id)manager messageHandlerManager:(id)handlerManager documentStateProvider:(id)provider logger:(id)logger
{
  managerCopy = manager;
  handlerManagerCopy = handlerManager;
  providerCopy = provider;
  loggerCopy = logger;
  selfCopy = 0;
  if (managerCopy && handlerManagerCopy && providerCopy)
  {
    v25.receiver = self;
    v25.super_class = SWPresentationManager;
    v16 = [(SWPresentationManager *)&v25 init];
    p_isa = &v16->super.isa;
    if (v16)
    {
      heightValue = v16->_heightValue;
      v16->_heightValue = 0;

      objc_storeStrong(p_isa + 4, manager);
      objc_storeStrong(p_isa + 5, logger);
      v19 = [SWWeakMessageHandler handlerWithMessageHandler:p_isa];
      [handlerManagerCopy addMessageHandler:v19 name:@"presentable"];

      v20 = [SWWeakMessageHandler handlerWithMessageHandler:p_isa];
      [handlerManagerCopy addMessageHandler:v20 name:@"update"];

      objc_initWeak(&location, p_isa);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __109__SWPresentationManager_initWithWebContentScriptsManager_messageHandlerManager_documentStateProvider_logger___block_invoke;
      v22[3] = &unk_1E84DB2B8;
      objc_copyWeak(&v23, &location);
      [providerCopy onLoad:v22];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

void __109__SWPresentationManager_initWithWebContentScriptsManager_messageHandlerManager_documentStateProvider_logger___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained[6];
  WeakRetained[6] = 0;

  v2 = [WeakRetained loadBlock];

  if (v2)
  {
    v3 = [WeakRetained loadBlock];
    v3[2]();
  }
}

- (double)height
{
  heightValue = self->_heightValue;
  if (!heightValue)
  {
    return 0.0;
  }

  [(NSNumber *)heightValue floatValue];
  return v3;
}

- (void)refresh
{
  v4 = objc_alloc_init(SWRefreshScript);
  scriptsManager = [(SWPresentationManager *)self scriptsManager];
  [scriptsManager executeScript:v4 completion:0];
}

- (void)inspectionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(SWInspectionScript);
  scriptsManager = [(SWPresentationManager *)self scriptsManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SWPresentationManager_inspectionWithCompletion___block_invoke;
  v8[3] = &unk_1E84DB2E0;
  v9 = completionCopy;
  v7 = completionCopy;
  [scriptsManager executeScriptWithReturnObject:v5 completion:v8];
}

void __50__SWPresentationManager_inspectionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = a2;
    v4 = [[SWInspection alloc] initWithObject:v3];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)setPresentationState:(unint64_t)state
{
  if (self->_presentationState != state)
  {
    logger = [(SWPresentationManager *)self logger];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(SWPresentationManager *)self descriptionForPresentationState:state];
    v8 = [(SWPresentationManager *)self descriptionForPresentationState:self->_presentationState];
    v9 = [v6 stringWithFormat:@"PresentationManager: Setting presentation state to %@ from %@", v7, v8];
    [logger log:v9];

    self->_presentationState = state;
    v10 = [[SWPresentationStateScript alloc] initWithPresentationState:state];
    scriptsManager = [(SWPresentationManager *)self scriptsManager];
    [scriptsManager executeScript:v10 completion:0];
  }

  if (state == 2)
  {
    heightValue = self->_heightValue;
    self->_heightValue = 0;

    datastore = self->_datastore;
    self->_datastore = 0;
  }
}

- (void)reset
{
  heightValue = self->_heightValue;
  self->_heightValue = 0;

  datastore = self->_datastore;
  self->_datastore = 0;
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  messageCopy = message;
  body = [messageCopy body];
  v6 = [body objectForKey:@"height"];

  body2 = [messageCopy body];
  v8 = [body2 objectForKey:@"datastore"];

  logger = [(SWPresentationManager *)self logger];
  v10 = MEMORY[0x1E696AEC0];
  name = [messageCopy name];
  v12 = objc_claimAutoreleasedReturnValue();
  [logger log:v12];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v8 objectForKey:@"type"];
    v14 = [v8 objectForKey:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v15 = [[SWPresentationDatastore alloc] initWithType:v13 identifier:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v6;
    p_heightValue = &self->_heightValue;
    heightValue = self->_heightValue;
    v19 = v16 != 0;
    if (!heightValue && v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
    v16 = 0;
    p_heightValue = &self->_heightValue;
    heightValue = self->_heightValue;
  }

  if (heightValue && !v16)
  {
LABEL_15:
    v20 = 1;
    goto LABEL_19;
  }

  if (heightValue != 0 && v19)
  {
    [(NSNumber *)heightValue floatValue];
    v22 = roundf(v21);
    [v16 floatValue];
    v20 = v22 != roundf(v23);
  }

  else
  {
    v20 = 0;
  }

LABEL_19:
  datastore = self->_datastore;
  if (datastore || !v15)
  {
    if (datastore)
    {
      v26 = v15 == 0;
    }

    else
    {
      v26 = 0;
    }

    v25 = v26;
    if (datastore && v15)
    {
      v25 = ![(SWPresentationDatastore *)datastore isEqual:v15];
    }
  }

  else
  {
    v25 = 1;
  }

  if (v20)
  {
    objc_storeStrong(p_heightValue, v16);
  }

  if (v25)
  {
    objc_storeStrong(&self->_datastore, v15);
  }

  if (*p_heightValue)
  {
    v27 = 0;
    v28 = 1;
  }

  else
  {
    name2 = [messageCopy name];
    v27 = [name2 isEqualToString:@"presentable"];

    v28 = *p_heightValue != 0;
  }

  presentableBlock = [(SWPresentationManager *)self presentableBlock];
  if (presentableBlock)
  {

    if ((v27 | v25 | (v28 && v20)))
    {
      if (*p_heightValue)
      {
        [(NSNumber *)*p_heightValue floatValue];
        v32 = v31;
      }

      else
      {
        v32 = 1.79769313e308;
      }

      presentableBlock2 = [(SWPresentationManager *)self presentableBlock];
      (presentableBlock2)[2](presentableBlock2, self->_datastore, v32);
    }
  }
}

- (id)descriptionForPresentationState:(unint64_t)state
{
  v3 = @"unknown";
  if (state == 1)
  {
    v3 = @"presented";
  }

  if (state == 2)
  {
    return @"not presented";
  }

  else
  {
    return v3;
  }
}

@end
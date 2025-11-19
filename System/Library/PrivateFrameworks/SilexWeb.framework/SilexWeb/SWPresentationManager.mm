@interface SWPresentationManager
- (SWPresentationManager)initWithWebContentScriptsManager:(id)a3 messageHandlerManager:(id)a4 documentStateProvider:(id)a5 logger:(id)a6;
- (double)height;
- (id)descriptionForPresentationState:(unint64_t)a3;
- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4;
- (void)inspectionWithCompletion:(id)a3;
- (void)refresh;
- (void)reset;
- (void)setPresentationState:(unint64_t)a3;
@end

@implementation SWPresentationManager

- (SWPresentationManager)initWithWebContentScriptsManager:(id)a3 messageHandlerManager:(id)a4 documentStateProvider:(id)a5 logger:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = 0;
  if (v11 && v12 && v13)
  {
    v25.receiver = self;
    v25.super_class = SWPresentationManager;
    v16 = [(SWPresentationManager *)&v25 init];
    p_isa = &v16->super.isa;
    if (v16)
    {
      heightValue = v16->_heightValue;
      v16->_heightValue = 0;

      objc_storeStrong(p_isa + 4, a3);
      objc_storeStrong(p_isa + 5, a6);
      v19 = [SWWeakMessageHandler handlerWithMessageHandler:p_isa];
      [v12 addMessageHandler:v19 name:@"presentable"];

      v20 = [SWWeakMessageHandler handlerWithMessageHandler:p_isa];
      [v12 addMessageHandler:v20 name:@"update"];

      objc_initWeak(&location, p_isa);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __109__SWPresentationManager_initWithWebContentScriptsManager_messageHandlerManager_documentStateProvider_logger___block_invoke;
      v22[3] = &unk_1E84DB2B8;
      objc_copyWeak(&v23, &location);
      [v13 onLoad:v22];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    self = p_isa;
    v15 = self;
  }

  return v15;
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
  v3 = [(SWPresentationManager *)self scriptsManager];
  [v3 executeScript:v4 completion:0];
}

- (void)inspectionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SWInspectionScript);
  v6 = [(SWPresentationManager *)self scriptsManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SWPresentationManager_inspectionWithCompletion___block_invoke;
  v8[3] = &unk_1E84DB2E0;
  v9 = v4;
  v7 = v4;
  [v6 executeScriptWithReturnObject:v5 completion:v8];
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

- (void)setPresentationState:(unint64_t)a3
{
  if (self->_presentationState != a3)
  {
    v5 = [(SWPresentationManager *)self logger];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(SWPresentationManager *)self descriptionForPresentationState:a3];
    v8 = [(SWPresentationManager *)self descriptionForPresentationState:self->_presentationState];
    v9 = [v6 stringWithFormat:@"PresentationManager: Setting presentation state to %@ from %@", v7, v8];
    [v5 log:v9];

    self->_presentationState = a3;
    v10 = [[SWPresentationStateScript alloc] initWithPresentationState:a3];
    v11 = [(SWPresentationManager *)self scriptsManager];
    [v11 executeScript:v10 completion:0];
  }

  if (a3 == 2)
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

- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4
{
  v34 = a3;
  v5 = [v34 body];
  v6 = [v5 objectForKey:@"height"];

  v7 = [v34 body];
  v8 = [v7 objectForKey:@"datastore"];

  v9 = [(SWPresentationManager *)self logger];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [v34 name];
  v12 = objc_claimAutoreleasedReturnValue();
  [v9 log:v12];

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
    v29 = [v34 name];
    v27 = [v29 isEqualToString:@"presentable"];

    v28 = *p_heightValue != 0;
  }

  v30 = [(SWPresentationManager *)self presentableBlock];
  if (v30)
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

      v33 = [(SWPresentationManager *)self presentableBlock];
      (v33)[2](v33, self->_datastore, v32);
    }
  }
}

- (id)descriptionForPresentationState:(unint64_t)a3
{
  v3 = @"unknown";
  if (a3 == 1)
  {
    v3 = @"presented";
  }

  if (a3 == 2)
  {
    return @"not presented";
  }

  else
  {
    return v3;
  }
}

@end
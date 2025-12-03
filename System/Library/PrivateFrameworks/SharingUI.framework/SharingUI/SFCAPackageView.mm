@interface SFCAPackageView
- (BOOL)isInitialState;
- (CALayer)packageRootLayer;
- (NSString)stateName;
- (SFCAPackageView)initWithCoder:(id)coder;
- (SFCAPackageView)initWithFrame:(CGRect)frame;
- (id)_getStateWithName:(id)name;
- (id)_newStateControllerWithSuperlayer:(id)superlayer;
- (unint64_t)statesCount;
- (void)_changeAppearance;
- (void)_stcaPackageViewCommonInit;
- (void)animateToInitialStateWithCompletionHandler:(id)handler;
- (void)animateToStateName:(id)name completionHandler:(id)handler;
- (void)setInitialState;
- (void)setStateName:(id)name;
- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SFCAPackageView

- (SFCAPackageView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SFCAPackageView;
  v3 = [(SFCAPackageView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SFCAPackageView *)v3 _stcaPackageViewCommonInit];
  return v3;
}

- (SFCAPackageView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFCAPackageView;
  v3 = [(SFCAPackageView *)&v5 initWithCoder:coder];
  [(SFCAPackageView *)v3 _stcaPackageViewCommonInit];
  return v3;
}

- (void)_stcaPackageViewCommonInit
{
  v3 = objc_opt_new();
  completionHandlers = self->_completionHandlers;
  self->_completionHandlers = v3;

  layer = [(SFCAPackageView *)self layer];
  v6 = [(SFCAPackageView *)self _newStateControllerWithSuperlayer:layer];
  stateController = self->_stateController;
  self->_stateController = v6;

  [(SFCAPackageView *)self setUserInteractionEnabled:0];
}

- (id)_newStateControllerWithSuperlayer:(id)superlayer
{
  superlayerCopy = superlayer;
  makeCAPackage = [(SFCAPackageView *)self makeCAPackage];
  rootLayer = [makeCAPackage rootLayer];
  [superlayerCopy addSublayer:rootLayer];
  [superlayerCopy setGeometryFlipped:{objc_msgSend(makeCAPackage, "isGeometryFlipped")}];

  v7 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:rootLayer];
  [v7 setDelegate:self];

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = SFCAPackageView;
  [(SFCAPackageView *)&v8 traitCollectionDidChange:changeCopy];
  if (!changeCopy || (v5 = [changeCopy userInterfaceStyle], -[SFCAPackageView traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceStyle"), v6, v5 != v7))
  {
    [(SFCAPackageView *)self _changeAppearance];
  }
}

- (void)_changeAppearance
{
  packageRootLayer = [(SFCAPackageView *)self packageRootLayer];
  stateController = [(SFCAPackageView *)self stateController];
  v4 = [stateController stateOfLayer:packageRootLayer];
  name = [v4 name];

  [packageRootLayer removeFromSuperlayer];
  layer = [(SFCAPackageView *)self layer];
  v7 = [(SFCAPackageView *)self _newStateControllerWithSuperlayer:layer];
  [(SFCAPackageView *)self setStateController:v7];

  if (name)
  {
    [(SFCAPackageView *)self setStateName:name];
  }
}

- (CALayer)packageRootLayer
{
  stateController = [(SFCAPackageView *)self stateController];
  layer = [stateController layer];

  return layer;
}

- (unint64_t)statesCount
{
  packageRootLayer = [(SFCAPackageView *)self packageRootLayer];
  states = [packageRootLayer states];
  v4 = [states count];

  return v4;
}

- (BOOL)isInitialState
{
  packageRootLayer = [(SFCAPackageView *)self packageRootLayer];
  stateController = [(SFCAPackageView *)self stateController];
  v5 = [stateController stateOfLayer:packageRootLayer];

  states = [packageRootLayer states];
  v7 = [states indexOfObjectPassingTest:&__block_literal_global_3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [states objectAtIndexedSubscript:v7];
  }

  if (v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v5 isEqual:v8];
  }

  return v9;
}

- (void)setInitialState
{
  stateController = [(SFCAPackageView *)self stateController];
  packageRootLayer = [(SFCAPackageView *)self packageRootLayer];
  [stateController setInitialStatesOfLayer:packageRootLayer];
}

- (void)animateToInitialStateWithCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(SFCAPackageView *)self statesCount])
  {
    if ([(SFCAPackageView *)self isInitialState])
    {
      v5 = framework_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [SFCAPackageView animateToInitialStateWithCompletionHandler:];
      }

      handlerCopy[2](handlerCopy);
    }

    else
    {
      completionHandlers = [(SFCAPackageView *)self completionHandlers];
      v11 = _Block_copy(handlerCopy);
      [completionHandlers addObject:v11];

      v12 = framework_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        stateName = [(SFCAPackageView *)self stateName];
        *buf = 138412546;
        selfCopy = self;
        v21 = 2112;
        v22 = stateName;
        _os_log_impl(&dword_1B9E4B000, v12, OS_LOG_TYPE_DEFAULT, "%@ starting transition(s) from state %@ to initial state", buf, 0x16u);
      }

      stateController = [(SFCAPackageView *)self stateController];
      packageRootLayer = [(SFCAPackageView *)self packageRootLayer];
      LODWORD(v16) = 1.0;
      [stateController setInitialStatesOfLayer:packageRootLayer transitionSpeed:v16];
    }
  }

  else
  {
    v6 = CACurrentMediaTime();
    packageRootLayer2 = [(SFCAPackageView *)self packageRootLayer];
    [packageRootLayer2 setBeginTime:v6];

    [(SFCAPackageView *)self duration];
    v9 = dispatch_time(0, (v8 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SFCAPackageView_animateToInitialStateWithCompletionHandler___block_invoke;
    block[3] = &unk_1E7EE3CE0;
    v18 = handlerCopy;
    dispatch_after(v9, MEMORY[0x1E69E96A0], block);
  }
}

- (NSString)stateName
{
  stateController = [(SFCAPackageView *)self stateController];
  packageRootLayer = [(SFCAPackageView *)self packageRootLayer];
  v5 = [stateController stateOfLayer:packageRootLayer];
  name = [v5 name];

  return name;
}

- (void)setStateName:(id)name
{
  nameCopy = name;
  stateController = [(SFCAPackageView *)self stateController];
  v5 = [(SFCAPackageView *)self _getStateWithName:nameCopy];

  packageRootLayer = [(SFCAPackageView *)self packageRootLayer];
  [stateController setState:v5 ofLayer:packageRootLayer];
}

- (void)animateToStateName:(id)name completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  stateController = [(SFCAPackageView *)self stateController];
  packageRootLayer = [(SFCAPackageView *)self packageRootLayer];
  v10 = [stateController stateOfLayer:packageRootLayer];
  v11 = [(SFCAPackageView *)self _getStateWithName:nameCopy];
  if (v10 == v11 || ([v10 isEqual:v11] & 1) != 0)
  {
    v12 = framework_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [SFCAPackageView animateToStateName:completionHandler:];
    }

    handlerCopy[2](handlerCopy);
  }

  else
  {
    completionHandlers = [(SFCAPackageView *)self completionHandlers];
    v14 = _Block_copy(handlerCopy);
    [completionHandlers addObject:v14];

    v15 = framework_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name = [v10 name];
      v19 = 138412802;
      selfCopy = self;
      v21 = 2112;
      v22 = name;
      v23 = 2112;
      v24 = nameCopy;
      _os_log_impl(&dword_1B9E4B000, v15, OS_LOG_TYPE_DEFAULT, "%@ starting transition(s) from state %@ to state %@", &v19, 0x20u);
    }

    packageRootLayer2 = [(SFCAPackageView *)self packageRootLayer];
    LODWORD(v18) = 1.0;
    [stateController setState:v11 ofLayer:packageRootLayer2 transitionSpeed:v18];
  }
}

- (id)_getStateWithName:(id)name
{
  nameCopy = name;
  packageRootLayer = [(SFCAPackageView *)self packageRootLayer];
  v6 = [packageRootLayer stateWithName:nameCopy];

  if (!v6)
  {
    v7 = framework_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [SFCAPackageView _getStateWithName:];
    }
  }

  return v6;
}

- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed
{
  completedCopy = completed;
  v29 = *MEMORY[0x1E69E9840];
  stopCopy = stop;
  v8 = framework_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    fromState = [stopCopy fromState];
    toState = [stopCopy toState];
    *buf = 138413058;
    selfCopy = self;
    v23 = 2112;
    v24 = fromState;
    v25 = 2112;
    v26 = toState;
    v27 = 1024;
    v28 = completedCopy;
    _os_log_impl(&dword_1B9E4B000, v8, OS_LOG_TYPE_DEFAULT, "%@ stopped transition <fromState=%@ toState=%@> completed:%d", buf, 0x26u);
  }

  completionHandlers = [(SFCAPackageView *)self completionHandlers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [completionHandlers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(completionHandlers);
        }

        (*(*(*(&v16 + 1) + 8 * v15++) + 16))();
      }

      while (v13 != v15);
      v13 = [completionHandlers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  [completionHandlers removeAllObjects];
}

- (void)animateToInitialStateWithCompletionHandler:.cold.1()
{
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)animateToStateName:completionHandler:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_getStateWithName:.cold.1()
{
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end
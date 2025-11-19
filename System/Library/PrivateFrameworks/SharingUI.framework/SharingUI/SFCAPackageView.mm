@interface SFCAPackageView
- (BOOL)isInitialState;
- (CALayer)packageRootLayer;
- (NSString)stateName;
- (SFCAPackageView)initWithCoder:(id)a3;
- (SFCAPackageView)initWithFrame:(CGRect)a3;
- (id)_getStateWithName:(id)a3;
- (id)_newStateControllerWithSuperlayer:(id)a3;
- (unint64_t)statesCount;
- (void)_changeAppearance;
- (void)_stcaPackageViewCommonInit;
- (void)animateToInitialStateWithCompletionHandler:(id)a3;
- (void)animateToStateName:(id)a3 completionHandler:(id)a4;
- (void)setInitialState;
- (void)setStateName:(id)a3;
- (void)stateController:(id)a3 transitionDidStop:(id)a4 completed:(BOOL)a5;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SFCAPackageView

- (SFCAPackageView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SFCAPackageView;
  v3 = [(SFCAPackageView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SFCAPackageView *)v3 _stcaPackageViewCommonInit];
  return v3;
}

- (SFCAPackageView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFCAPackageView;
  v3 = [(SFCAPackageView *)&v5 initWithCoder:a3];
  [(SFCAPackageView *)v3 _stcaPackageViewCommonInit];
  return v3;
}

- (void)_stcaPackageViewCommonInit
{
  v3 = objc_opt_new();
  completionHandlers = self->_completionHandlers;
  self->_completionHandlers = v3;

  v5 = [(SFCAPackageView *)self layer];
  v6 = [(SFCAPackageView *)self _newStateControllerWithSuperlayer:v5];
  stateController = self->_stateController;
  self->_stateController = v6;

  [(SFCAPackageView *)self setUserInteractionEnabled:0];
}

- (id)_newStateControllerWithSuperlayer:(id)a3
{
  v4 = a3;
  v5 = [(SFCAPackageView *)self makeCAPackage];
  v6 = [v5 rootLayer];
  [v4 addSublayer:v6];
  [v4 setGeometryFlipped:{objc_msgSend(v5, "isGeometryFlipped")}];

  v7 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:v6];
  [v7 setDelegate:self];

  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFCAPackageView;
  [(SFCAPackageView *)&v8 traitCollectionDidChange:v4];
  if (!v4 || (v5 = [v4 userInterfaceStyle], -[SFCAPackageView traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceStyle"), v6, v5 != v7))
  {
    [(SFCAPackageView *)self _changeAppearance];
  }
}

- (void)_changeAppearance
{
  v8 = [(SFCAPackageView *)self packageRootLayer];
  v3 = [(SFCAPackageView *)self stateController];
  v4 = [v3 stateOfLayer:v8];
  v5 = [v4 name];

  [v8 removeFromSuperlayer];
  v6 = [(SFCAPackageView *)self layer];
  v7 = [(SFCAPackageView *)self _newStateControllerWithSuperlayer:v6];
  [(SFCAPackageView *)self setStateController:v7];

  if (v5)
  {
    [(SFCAPackageView *)self setStateName:v5];
  }
}

- (CALayer)packageRootLayer
{
  v2 = [(SFCAPackageView *)self stateController];
  v3 = [v2 layer];

  return v3;
}

- (unint64_t)statesCount
{
  v2 = [(SFCAPackageView *)self packageRootLayer];
  v3 = [v2 states];
  v4 = [v3 count];

  return v4;
}

- (BOOL)isInitialState
{
  v3 = [(SFCAPackageView *)self packageRootLayer];
  v4 = [(SFCAPackageView *)self stateController];
  v5 = [v4 stateOfLayer:v3];

  v6 = [v3 states];
  v7 = [v6 indexOfObjectPassingTest:&__block_literal_global_3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:v7];
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
  v4 = [(SFCAPackageView *)self stateController];
  v3 = [(SFCAPackageView *)self packageRootLayer];
  [v4 setInitialStatesOfLayer:v3];
}

- (void)animateToInitialStateWithCompletionHandler:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SFCAPackageView *)self statesCount])
  {
    if ([(SFCAPackageView *)self isInitialState])
    {
      v5 = framework_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [SFCAPackageView animateToInitialStateWithCompletionHandler:];
      }

      v4[2](v4);
    }

    else
    {
      v10 = [(SFCAPackageView *)self completionHandlers];
      v11 = _Block_copy(v4);
      [v10 addObject:v11];

      v12 = framework_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(SFCAPackageView *)self stateName];
        *buf = 138412546;
        v20 = self;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_1B9E4B000, v12, OS_LOG_TYPE_DEFAULT, "%@ starting transition(s) from state %@ to initial state", buf, 0x16u);
      }

      v14 = [(SFCAPackageView *)self stateController];
      v15 = [(SFCAPackageView *)self packageRootLayer];
      LODWORD(v16) = 1.0;
      [v14 setInitialStatesOfLayer:v15 transitionSpeed:v16];
    }
  }

  else
  {
    v6 = CACurrentMediaTime();
    v7 = [(SFCAPackageView *)self packageRootLayer];
    [v7 setBeginTime:v6];

    [(SFCAPackageView *)self duration];
    v9 = dispatch_time(0, (v8 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SFCAPackageView_animateToInitialStateWithCompletionHandler___block_invoke;
    block[3] = &unk_1E7EE3CE0;
    v18 = v4;
    dispatch_after(v9, MEMORY[0x1E69E96A0], block);
  }
}

- (NSString)stateName
{
  v3 = [(SFCAPackageView *)self stateController];
  v4 = [(SFCAPackageView *)self packageRootLayer];
  v5 = [v3 stateOfLayer:v4];
  v6 = [v5 name];

  return v6;
}

- (void)setStateName:(id)a3
{
  v4 = a3;
  v7 = [(SFCAPackageView *)self stateController];
  v5 = [(SFCAPackageView *)self _getStateWithName:v4];

  v6 = [(SFCAPackageView *)self packageRootLayer];
  [v7 setState:v5 ofLayer:v6];
}

- (void)animateToStateName:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SFCAPackageView *)self stateController];
  v9 = [(SFCAPackageView *)self packageRootLayer];
  v10 = [v8 stateOfLayer:v9];
  v11 = [(SFCAPackageView *)self _getStateWithName:v6];
  if (v10 == v11 || ([v10 isEqual:v11] & 1) != 0)
  {
    v12 = framework_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [SFCAPackageView animateToStateName:completionHandler:];
    }

    v7[2](v7);
  }

  else
  {
    v13 = [(SFCAPackageView *)self completionHandlers];
    v14 = _Block_copy(v7);
    [v13 addObject:v14];

    v15 = framework_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 name];
      v19 = 138412802;
      v20 = self;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_1B9E4B000, v15, OS_LOG_TYPE_DEFAULT, "%@ starting transition(s) from state %@ to state %@", &v19, 0x20u);
    }

    v17 = [(SFCAPackageView *)self packageRootLayer];
    LODWORD(v18) = 1.0;
    [v8 setState:v11 ofLayer:v17 transitionSpeed:v18];
  }
}

- (id)_getStateWithName:(id)a3
{
  v4 = a3;
  v5 = [(SFCAPackageView *)self packageRootLayer];
  v6 = [v5 stateWithName:v4];

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

- (void)stateController:(id)a3 transitionDidStop:(id)a4 completed:(BOOL)a5
{
  v5 = a5;
  v29 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = framework_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 fromState];
    v10 = [v7 toState];
    *buf = 138413058;
    v22 = self;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 1024;
    v28 = v5;
    _os_log_impl(&dword_1B9E4B000, v8, OS_LOG_TYPE_DEFAULT, "%@ stopped transition <fromState=%@ toState=%@> completed:%d", buf, 0x26u);
  }

  v11 = [(SFCAPackageView *)self completionHandlers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v16 + 1) + 8 * v15++) + 16))();
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  [v11 removeAllObjects];
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
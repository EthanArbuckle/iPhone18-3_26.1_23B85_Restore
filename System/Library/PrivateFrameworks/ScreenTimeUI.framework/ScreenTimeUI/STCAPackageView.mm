@interface STCAPackageView
- (BOOL)isInitialState;
- (CALayer)packageRootLayer;
- (NSString)stateName;
- (STCAPackageView)initWithCoder:(id)a3;
- (STCAPackageView)initWithFrame:(CGRect)a3;
- (id)_getStateWithName:(id)a3;
- (id)_newStateControllerWithSuperlayer:(id)a3;
- (void)_changeAppearance;
- (void)_stcaPackageViewCommonInit;
- (void)animateToInitialStateWithCompletionHandler:(id)a3;
- (void)animateToStateName:(id)a3 completionHandler:(id)a4;
- (void)setInitialState;
- (void)setStateName:(id)a3;
- (void)stateController:(id)a3 transitionDidStop:(id)a4 completed:(BOOL)a5;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation STCAPackageView

- (STCAPackageView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = STCAPackageView;
  v3 = [(STCAPackageView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(STCAPackageView *)v3 _stcaPackageViewCommonInit];
  return v3;
}

- (STCAPackageView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STCAPackageView;
  v3 = [(STCAPackageView *)&v5 initWithCoder:a3];
  [(STCAPackageView *)v3 _stcaPackageViewCommonInit];
  return v3;
}

- (void)_stcaPackageViewCommonInit
{
  v3 = objc_opt_new();
  completionHandlers = self->_completionHandlers;
  self->_completionHandlers = v3;

  v5 = [(STCAPackageView *)self layer];
  v6 = [(STCAPackageView *)self _newStateControllerWithSuperlayer:v5];
  stateController = self->_stateController;
  self->_stateController = v6;

  [(STCAPackageView *)self setUserInteractionEnabled:0];
}

- (id)_newStateControllerWithSuperlayer:(id)a3
{
  v4 = a3;
  v5 = [(STCAPackageView *)self makeCAPackage];
  v6 = [v5 rootLayer];
  [v4 addSublayer:v6];
  [v4 setGeometryFlipped:{objc_msgSend(v5, "isGeometryFlipped")}];

  v7 = [objc_alloc(MEMORY[0x277CD9FB8]) initWithLayer:v6];
  [v7 setDelegate:self];

  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STCAPackageView;
  [(STCAPackageView *)&v8 traitCollectionDidChange:v4];
  if (!v4 || (v5 = [v4 userInterfaceStyle], -[STCAPackageView traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceStyle"), v6, v5 != v7))
  {
    [(STCAPackageView *)self _changeAppearance];
  }
}

- (void)_changeAppearance
{
  v8 = [(STCAPackageView *)self packageRootLayer];
  v3 = [(STCAPackageView *)self stateController];
  v4 = [v3 stateOfLayer:v8];
  v5 = [v4 name];

  [v8 removeFromSuperlayer];
  v6 = [(STCAPackageView *)self layer];
  v7 = [(STCAPackageView *)self _newStateControllerWithSuperlayer:v6];
  [(STCAPackageView *)self setStateController:v7];

  if (v5)
  {
    [(STCAPackageView *)self setStateName:v5];
  }
}

- (CALayer)packageRootLayer
{
  v2 = [(STCAPackageView *)self stateController];
  v3 = [v2 layer];

  return v3;
}

- (BOOL)isInitialState
{
  v3 = [(STCAPackageView *)self packageRootLayer];
  v4 = [(STCAPackageView *)self stateController];
  v5 = [v4 stateOfLayer:v3];

  v6 = [v3 states];
  v7 = [v6 indexOfObjectPassingTest:&__block_literal_global_6];
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
  v4 = [(STCAPackageView *)self stateController];
  v3 = [(STCAPackageView *)self packageRootLayer];
  [v4 setInitialStatesOfLayer:v3];
}

- (void)animateToInitialStateWithCompletionHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(STCAPackageView *)self isInitialState])
  {
    v5 = [MEMORY[0x277D4BA00] coreAnimation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(STCAPackageView *)self animateToInitialStateWithCompletionHandler:v5];
    }

    v4[2](v4);
  }

  else
  {
    v6 = [(STCAPackageView *)self completionHandlers];
    v7 = _Block_copy(v4);

    [v6 addObject:v7];
    v8 = [MEMORY[0x277D4BA00] coreAnimation];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(STCAPackageView *)self stateName];
      v12 = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_21DD93000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ starting transition(s) from state %{public}@ to initial state", &v12, 0x16u);
    }

    v4 = [(STCAPackageView *)self stateController];
    v10 = [(STCAPackageView *)self packageRootLayer];
    LODWORD(v11) = 1.0;
    [v4 setInitialStatesOfLayer:v10 transitionSpeed:v11];
  }
}

- (NSString)stateName
{
  v3 = [(STCAPackageView *)self stateController];
  v4 = [(STCAPackageView *)self packageRootLayer];
  v5 = [v3 stateOfLayer:v4];
  v6 = [v5 name];

  return v6;
}

- (void)setStateName:(id)a3
{
  v4 = a3;
  v7 = [(STCAPackageView *)self stateController];
  v5 = [(STCAPackageView *)self _getStateWithName:v4];

  v6 = [(STCAPackageView *)self packageRootLayer];
  [v7 setState:v5 ofLayer:v6];
}

- (void)animateToStateName:(id)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(STCAPackageView *)self stateController];
  v9 = [(STCAPackageView *)self packageRootLayer];
  v10 = [v8 stateOfLayer:v9];
  v11 = [(STCAPackageView *)self _getStateWithName:v6];
  if (v10 == v11 || ([v10 isEqual:v11] & 1) != 0)
  {
    v12 = [MEMORY[0x277D4BA00] coreAnimation];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      v21 = v6;
      v22 = 2114;
      v23 = objc_opt_class();
      v13 = v23;
      _os_log_impl(&dword_21DD93000, v12, OS_LOG_TYPE_DEFAULT, "Trying to animate to %{public}@ of %{public}@ when already there", &v20, 0x16u);
    }

    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    if (v7)
    {
      v14 = [(STCAPackageView *)self completionHandlers];
      v15 = _Block_copy(v7);
      [v14 addObject:v15];
    }

    v16 = [MEMORY[0x277D4BA00] coreAnimation];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v10 name];
      v20 = 138543874;
      v21 = self;
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_21DD93000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ starting transition(s) from state %{public}@ to state %{public}@", &v20, 0x20u);
    }

    v18 = [(STCAPackageView *)self packageRootLayer];
    LODWORD(v19) = 1.0;
    [v8 setState:v11 ofLayer:v18 transitionSpeed:v19];
  }
}

- (id)_getStateWithName:(id)a3
{
  v4 = a3;
  v5 = [(STCAPackageView *)self packageRootLayer];
  v6 = [v5 stateWithName:v4];

  if (!v6)
  {
    v7 = [MEMORY[0x277D4BA00] coreAnimation];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(STCAPackageView *)v4 _getStateWithName:v7];
    }
  }

  return v6;
}

- (void)stateController:(id)a3 transitionDidStop:(id)a4 completed:(BOOL)a5
{
  v5 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [MEMORY[0x277D4BA00] coreAnimation];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 fromState];
    v10 = [v7 toState];
    *buf = 138544130;
    v22 = self;
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    v27 = 1024;
    v28 = v5;
    _os_log_impl(&dword_21DD93000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ stopped transition <fromState=%{public}@ toState=%{public}@> completed:%d", buf, 0x26u);
  }

  v11 = [(STCAPackageView *)self completionHandlers];
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

- (void)animateToInitialStateWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_fault_impl(&dword_21DD93000, a2, OS_LOG_TYPE_FAULT, "Trying to animate to the initial state of %{public}@ when already there", &v4, 0xCu);
}

- (void)_getStateWithName:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = objc_opt_class();
  v4 = v8;
  _os_log_fault_impl(&dword_21DD93000, a3, OS_LOG_TYPE_FAULT, "Invalid state name %{public}@ for %{public}@", &v5, 0x16u);
}

@end
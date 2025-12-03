@interface STCAPackageView
- (BOOL)isInitialState;
- (CALayer)packageRootLayer;
- (NSString)stateName;
- (STCAPackageView)initWithCoder:(id)coder;
- (STCAPackageView)initWithFrame:(CGRect)frame;
- (id)_getStateWithName:(id)name;
- (id)_newStateControllerWithSuperlayer:(id)superlayer;
- (void)_changeAppearance;
- (void)_stcaPackageViewCommonInit;
- (void)animateToInitialStateWithCompletionHandler:(id)handler;
- (void)animateToStateName:(id)name completionHandler:(id)handler;
- (void)setInitialState;
- (void)setStateName:(id)name;
- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation STCAPackageView

- (STCAPackageView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = STCAPackageView;
  v3 = [(STCAPackageView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(STCAPackageView *)v3 _stcaPackageViewCommonInit];
  return v3;
}

- (STCAPackageView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STCAPackageView;
  v3 = [(STCAPackageView *)&v5 initWithCoder:coder];
  [(STCAPackageView *)v3 _stcaPackageViewCommonInit];
  return v3;
}

- (void)_stcaPackageViewCommonInit
{
  v3 = objc_opt_new();
  completionHandlers = self->_completionHandlers;
  self->_completionHandlers = v3;

  layer = [(STCAPackageView *)self layer];
  v6 = [(STCAPackageView *)self _newStateControllerWithSuperlayer:layer];
  stateController = self->_stateController;
  self->_stateController = v6;

  [(STCAPackageView *)self setUserInteractionEnabled:0];
}

- (id)_newStateControllerWithSuperlayer:(id)superlayer
{
  superlayerCopy = superlayer;
  makeCAPackage = [(STCAPackageView *)self makeCAPackage];
  rootLayer = [makeCAPackage rootLayer];
  [superlayerCopy addSublayer:rootLayer];
  [superlayerCopy setGeometryFlipped:{objc_msgSend(makeCAPackage, "isGeometryFlipped")}];

  v7 = [objc_alloc(MEMORY[0x277CD9FB8]) initWithLayer:rootLayer];
  [v7 setDelegate:self];

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = STCAPackageView;
  [(STCAPackageView *)&v8 traitCollectionDidChange:changeCopy];
  if (!changeCopy || (v5 = [changeCopy userInterfaceStyle], -[STCAPackageView traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceStyle"), v6, v5 != v7))
  {
    [(STCAPackageView *)self _changeAppearance];
  }
}

- (void)_changeAppearance
{
  packageRootLayer = [(STCAPackageView *)self packageRootLayer];
  stateController = [(STCAPackageView *)self stateController];
  v4 = [stateController stateOfLayer:packageRootLayer];
  name = [v4 name];

  [packageRootLayer removeFromSuperlayer];
  layer = [(STCAPackageView *)self layer];
  v7 = [(STCAPackageView *)self _newStateControllerWithSuperlayer:layer];
  [(STCAPackageView *)self setStateController:v7];

  if (name)
  {
    [(STCAPackageView *)self setStateName:name];
  }
}

- (CALayer)packageRootLayer
{
  stateController = [(STCAPackageView *)self stateController];
  layer = [stateController layer];

  return layer;
}

- (BOOL)isInitialState
{
  packageRootLayer = [(STCAPackageView *)self packageRootLayer];
  stateController = [(STCAPackageView *)self stateController];
  v5 = [stateController stateOfLayer:packageRootLayer];

  states = [packageRootLayer states];
  v7 = [states indexOfObjectPassingTest:&__block_literal_global_6];
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
  stateController = [(STCAPackageView *)self stateController];
  packageRootLayer = [(STCAPackageView *)self packageRootLayer];
  [stateController setInitialStatesOfLayer:packageRootLayer];
}

- (void)animateToInitialStateWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(STCAPackageView *)self isInitialState])
  {
    coreAnimation = [MEMORY[0x277D4BA00] coreAnimation];
    if (os_log_type_enabled(coreAnimation, OS_LOG_TYPE_FAULT))
    {
      [(STCAPackageView *)self animateToInitialStateWithCompletionHandler:coreAnimation];
    }

    handlerCopy[2](handlerCopy);
  }

  else
  {
    completionHandlers = [(STCAPackageView *)self completionHandlers];
    v7 = _Block_copy(handlerCopy);

    [completionHandlers addObject:v7];
    coreAnimation2 = [MEMORY[0x277D4BA00] coreAnimation];
    if (os_log_type_enabled(coreAnimation2, OS_LOG_TYPE_DEFAULT))
    {
      stateName = [(STCAPackageView *)self stateName];
      v12 = 138543618;
      selfCopy = self;
      v14 = 2114;
      v15 = stateName;
      _os_log_impl(&dword_21DD93000, coreAnimation2, OS_LOG_TYPE_DEFAULT, "%{public}@ starting transition(s) from state %{public}@ to initial state", &v12, 0x16u);
    }

    handlerCopy = [(STCAPackageView *)self stateController];
    packageRootLayer = [(STCAPackageView *)self packageRootLayer];
    LODWORD(v11) = 1.0;
    [handlerCopy setInitialStatesOfLayer:packageRootLayer transitionSpeed:v11];
  }
}

- (NSString)stateName
{
  stateController = [(STCAPackageView *)self stateController];
  packageRootLayer = [(STCAPackageView *)self packageRootLayer];
  v5 = [stateController stateOfLayer:packageRootLayer];
  name = [v5 name];

  return name;
}

- (void)setStateName:(id)name
{
  nameCopy = name;
  stateController = [(STCAPackageView *)self stateController];
  v5 = [(STCAPackageView *)self _getStateWithName:nameCopy];

  packageRootLayer = [(STCAPackageView *)self packageRootLayer];
  [stateController setState:v5 ofLayer:packageRootLayer];
}

- (void)animateToStateName:(id)name completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  stateController = [(STCAPackageView *)self stateController];
  packageRootLayer = [(STCAPackageView *)self packageRootLayer];
  v10 = [stateController stateOfLayer:packageRootLayer];
  v11 = [(STCAPackageView *)self _getStateWithName:nameCopy];
  if (v10 == v11 || ([v10 isEqual:v11] & 1) != 0)
  {
    coreAnimation = [MEMORY[0x277D4BA00] coreAnimation];
    if (os_log_type_enabled(coreAnimation, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      selfCopy = nameCopy;
      v22 = 2114;
      v23 = objc_opt_class();
      v13 = v23;
      _os_log_impl(&dword_21DD93000, coreAnimation, OS_LOG_TYPE_DEFAULT, "Trying to animate to %{public}@ of %{public}@ when already there", &v20, 0x16u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    if (handlerCopy)
    {
      completionHandlers = [(STCAPackageView *)self completionHandlers];
      v15 = _Block_copy(handlerCopy);
      [completionHandlers addObject:v15];
    }

    coreAnimation2 = [MEMORY[0x277D4BA00] coreAnimation];
    if (os_log_type_enabled(coreAnimation2, OS_LOG_TYPE_DEFAULT))
    {
      name = [v10 name];
      v20 = 138543874;
      selfCopy = self;
      v22 = 2114;
      v23 = name;
      v24 = 2114;
      v25 = nameCopy;
      _os_log_impl(&dword_21DD93000, coreAnimation2, OS_LOG_TYPE_DEFAULT, "%{public}@ starting transition(s) from state %{public}@ to state %{public}@", &v20, 0x20u);
    }

    packageRootLayer2 = [(STCAPackageView *)self packageRootLayer];
    LODWORD(v19) = 1.0;
    [stateController setState:v11 ofLayer:packageRootLayer2 transitionSpeed:v19];
  }
}

- (id)_getStateWithName:(id)name
{
  nameCopy = name;
  packageRootLayer = [(STCAPackageView *)self packageRootLayer];
  v6 = [packageRootLayer stateWithName:nameCopy];

  if (!v6)
  {
    coreAnimation = [MEMORY[0x277D4BA00] coreAnimation];
    if (os_log_type_enabled(coreAnimation, OS_LOG_TYPE_FAULT))
    {
      [(STCAPackageView *)nameCopy _getStateWithName:coreAnimation];
    }
  }

  return v6;
}

- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed
{
  completedCopy = completed;
  v29 = *MEMORY[0x277D85DE8];
  stopCopy = stop;
  coreAnimation = [MEMORY[0x277D4BA00] coreAnimation];
  if (os_log_type_enabled(coreAnimation, OS_LOG_TYPE_DEFAULT))
  {
    fromState = [stopCopy fromState];
    toState = [stopCopy toState];
    *buf = 138544130;
    selfCopy = self;
    v23 = 2114;
    v24 = fromState;
    v25 = 2114;
    v26 = toState;
    v27 = 1024;
    v28 = completedCopy;
    _os_log_impl(&dword_21DD93000, coreAnimation, OS_LOG_TYPE_DEFAULT, "%{public}@ stopped transition <fromState=%{public}@ toState=%{public}@> completed:%d", buf, 0x26u);
  }

  completionHandlers = [(STCAPackageView *)self completionHandlers];
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
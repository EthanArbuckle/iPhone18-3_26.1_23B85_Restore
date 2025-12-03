@interface SUICProgressIndicatorViewController
- (BOOL)_shouldAcceptEventsFromStateMachine:(id)machine;
- (SUICProgressIndicatorViewControllerDataSource)dataSource;
- (id)_stateMachine;
- (void)loadView;
- (void)progressStateMachine:(id)machine didTransitionToState:(unint64_t)state fromState:(unint64_t)fromState forEvent:(unint64_t)event;
- (void)progressStateMachine:(id)machine ignoredEvent:(unint64_t)event;
@end

@implementation SUICProgressIndicatorViewController

- (id)_stateMachine
{
  dataSource = [(SUICProgressIndicatorViewController *)self dataSource];
  v4 = [dataSource stateMachineForProgressIndicatorViewController:self];

  return v4;
}

- (BOOL)_shouldAcceptEventsFromStateMachine:(id)machine
{
  machineCopy = machine;
  dataSource = [(SUICProgressIndicatorViewController *)self dataSource];
  if (dataSource)
  {
    _stateMachine = [(SUICProgressIndicatorViewController *)self _stateMachine];
    v7 = _stateMachine == machineCopy;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)loadView
{
  v3 = objc_alloc_init(SUICProgressIndicatorView);
  progressIndicatorView = self->_progressIndicatorView;
  self->_progressIndicatorView = v3;

  if (self->_progressIndicatorView)
  {

    [(SUICProgressIndicatorViewController *)self setView:?];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(SUICProgressIndicatorViewController *)self setView:v5];
  }
}

- (void)progressStateMachine:(id)machine didTransitionToState:(unint64_t)state fromState:(unint64_t)fromState forEvent:(unint64_t)event
{
  v45 = *MEMORY[0x1E69E9840];
  machineCopy = machine;
  if ([(SUICProgressIndicatorViewController *)self _shouldAcceptEventsFromStateMachine:machineCopy])
  {
    dataSource = [(SUICProgressIndicatorViewController *)self dataSource];
    if (objc_opt_respondsToSelector())
    {
      v12 = [dataSource shouldAnimateTransitionToState:state fromState:fromState forProgressIndicatorViewController:self];
    }

    else
    {
      v12 = 1;
    }

    if (state > 1)
    {
      if (state == 2)
      {
        dataSource2 = [(SUICProgressIndicatorViewController *)self dataSource];
        progress = [dataSource2 progress];

        [(SUICProgressIndicatorView *)self->_progressIndicatorView setSpinning:0];
        [(SUICProgressIndicatorView *)self->_progressIndicatorView setDarkened:0 animated:v12 completion:0];
        [(SUICProgressIndicatorView *)self->_progressIndicatorView setCheckmarkVisible:0 animated:v12 completion:0];
        -[SUICProgressIndicatorView setProgressValue:animated:completion:](self->_progressIndicatorView, "setProgressValue:animated:completion:", v12, 0, [progress completedUnitCount] / objc_msgSend(progress, "totalUnitCount"));
      }

      else if (state == 3)
      {
        objc_initWeak(buf, self);
        progressIndicatorView = self->_progressIndicatorView;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __100__SUICProgressIndicatorViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke_3;
        v27[3] = &unk_1E81E7DE0;
        objc_copyWeak(&v28, buf);
        v29 = v12;
        [(SUICProgressIndicatorView *)progressIndicatorView setArrowVisible:0 delay:v12 animated:v27 completion:0.0];
        [(SUICProgressIndicatorView *)self->_progressIndicatorView setSpinning:0];
        objc_destroyWeak(&v28);
        objc_destroyWeak(buf);
      }
    }

    else if (state)
    {
      if (state == 1)
      {
        [(SUICProgressIndicatorView *)self->_progressIndicatorView setArrowVisible:0 delay:v12 animated:0 completion:0.0];
        objc_initWeak(buf, self);
        v17 = self->_progressIndicatorView;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __100__SUICProgressIndicatorViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke_2;
        v30[3] = &unk_1E81E7E08;
        objc_copyWeak(&v31, buf);
        [(SUICProgressIndicatorView *)v17 setProgressValue:v12 animated:v30 completion:0.8];
        objc_destroyWeak(&v31);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      [(SUICProgressIndicatorView *)self->_progressIndicatorView setProgressValue:v12 animated:0 completion:1.0];
      [(SUICProgressIndicatorView *)self->_progressIndicatorView setSpinning:0];
      objc_initWeak(buf, self);
      v19 = self->_progressIndicatorView;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __100__SUICProgressIndicatorViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke;
      v32[3] = &unk_1E81E7DE0;
      objc_copyWeak(&v33, buf);
      v34 = v12;
      [(SUICProgressIndicatorView *)v19 setDarkened:0 animated:v12 completion:v32];
      [(SUICProgressIndicatorView *)self->_progressIndicatorView setCheckmarkVisible:0 animated:v12 completion:0];
      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }

    v22 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
    {
      v23 = v22;
      v24 = SUICProgressStateNameForState(state);
      v25 = SUICProgressStateNameForState(fromState);
      v26 = SUICProgressEventNameForEvent(event);
      *buf = 136316162;
      v36 = "[SUICProgressIndicatorViewController progressStateMachine:didTransitionToState:fromState:forEvent:]";
      v37 = 2112;
      v38 = machineCopy;
      v39 = 2112;
      v40 = v24;
      v41 = 2112;
      v42 = v25;
      v43 = 2112;
      v44 = v26;
      _os_log_impl(&dword_1C432B000, v23, OS_LOG_TYPE_INFO, "%s State machine %@ transitioned to state %@ from state %@ for event %@", buf, 0x34u);
    }
  }

  else
  {
    v13 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      _stateMachine = [(SUICProgressIndicatorViewController *)self _stateMachine];
      v16 = SUICProgressEventNameForEvent(event);
      *buf = 136315906;
      v36 = "[SUICProgressIndicatorViewController progressStateMachine:didTransitionToState:fromState:forEvent:]";
      v37 = 2112;
      v38 = machineCopy;
      v39 = 2112;
      v40 = _stateMachine;
      v41 = 2112;
      v42 = v16;
      _os_log_error_impl(&dword_1C432B000, v14, OS_LOG_TYPE_ERROR, "%s State machine %@ doesn't match data source state machine %@, not listening to event %@", buf, 0x2Au);
    }
  }
}

void __100__SUICProgressIndicatorViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 && WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained[124] setArrowVisible:1 delay:*(a1 + 40) animated:0 completion:0.25];
    WeakRetained = v5;
  }
}

void __100__SUICProgressIndicatorViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 && WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[124] setSpinning:1];
    WeakRetained = v4;
  }
}

void __100__SUICProgressIndicatorViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a2 && WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v6 = v5[124];
    v7 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __100__SUICProgressIndicatorViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke_4;
    v8[3] = &unk_1E81E7DE0;
    objc_copyWeak(&v9, &location);
    v10 = *(a1 + 40);
    [v6 setProgressValue:v7 animated:v8 completion:1.0];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __100__SUICProgressIndicatorViewController_progressStateMachine_didTransitionToState_fromState_forEvent___block_invoke_4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 && WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained[124] setDarkened:1 animated:*(a1 + 40) completion:0];
    [v5[124] setCheckmarkVisible:1 animated:*(a1 + 40) completion:0];
    WeakRetained = v5;
  }
}

- (void)progressStateMachine:(id)machine ignoredEvent:(unint64_t)event
{
  v17 = *MEMORY[0x1E69E9840];
  machineCopy = machine;
  v7 = [(SUICProgressIndicatorViewController *)self _shouldAcceptEventsFromStateMachine:machineCopy];
  v8 = *MEMORY[0x1E698D0A0];
  if (v7)
  {
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = SUICProgressEventNameForEvent(event);
      v11 = 136315650;
      v12 = "[SUICProgressIndicatorViewController progressStateMachine:ignoredEvent:]";
      v13 = 2112;
      v14 = machineCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1C432B000, v9, OS_LOG_TYPE_INFO, "%s State machine %@ ignored event %@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [(SUICProgressIndicatorViewController *)machineCopy progressStateMachine:v8 ignoredEvent:self];
  }
}

- (SUICProgressIndicatorViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)progressStateMachine:(void *)a3 ignoredEvent:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 _stateMachine];
  v7 = 136315650;
  v8 = "[SUICProgressIndicatorViewController progressStateMachine:ignoredEvent:]";
  v9 = 2112;
  v10 = a1;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&dword_1C432B000, v5, OS_LOG_TYPE_ERROR, "%s State machine %@ doesn't match data source state machine %@, not listening to event", &v7, 0x20u);
}

@end
@interface SearchUISwitchAccessoryViewController
+ (BOOL)supportsRowModel:(id)model;
- (id)setupView;
- (void)buttonPressed;
- (void)dealloc;
- (void)debounceSetOn:(BOOL)on animated:(BOOL)animated;
- (void)setIsHiddenByEvent:(BOOL)event;
- (void)setOn:(BOOL)on animated:(BOOL)animated;
- (void)updateForEvent:(id)event animated:(BOOL)animated;
- (void)updateWithNotification:(id)notification;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUISwitchAccessoryViewController

+ (BOOL)supportsRowModel:(id)model
{
  v3 = [SearchUIShortcutsUtilities commandForSettingTogglesFromRowModel:model];
  biomeStreamIdentifier = [v3 biomeStreamIdentifier];
  v5 = [biomeStreamIdentifier length] != 0;

  return v5;
}

- (id)setupView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)dealloc
{
  subscriber = [(SearchUISwitchAccessoryViewController *)self subscriber];
  [subscriber removeObserver:self];

  v4.receiver = self;
  v4.super_class = SearchUISwitchAccessoryViewController;
  [(SearchUISwitchAccessoryViewController *)&v4 dealloc];
}

- (void)updateWithRowModel:(id)model
{
  v15.receiver = self;
  v15.super_class = SearchUISwitchAccessoryViewController;
  modelCopy = model;
  [(SearchUIAccessoryViewController *)&v15 updateWithRowModel:modelCopy];
  subscriber = [(SearchUISwitchAccessoryViewController *)self subscriber];

  if (subscriber)
  {
    subscriber2 = [(SearchUISwitchAccessoryViewController *)self subscriber];
    [subscriber2 removeObserver:self];

    [(SearchUISwitchAccessoryViewController *)self setSubscriber:0];
  }

  contextualAction = [modelCopy contextualAction];
  v8 = [SearchUIShortcutsUtilities commandForSettingTogglesFromRowModel:modelCopy];

  biomeStreamIdentifier = [v8 biomeStreamIdentifier];
  [(SearchUISwitchAccessoryViewController *)self setAction:contextualAction];
  v10 = +[SearchUIBiomeSubscriberRegistry sharedManager];
  v11 = [v10 requestSubscriberForIdentifier:biomeStreamIdentifier];
  [(SearchUISwitchAccessoryViewController *)self setSubscriber:v11];

  subscriber3 = [(SearchUISwitchAccessoryViewController *)self subscriber];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__SearchUISwitchAccessoryViewController_updateWithRowModel___block_invoke;
  v14[3] = &unk_1E85B2CE8;
  v14[4] = self;
  [subscriber3 getLatestEventWithCompletion:v14];

  subscriber4 = [(SearchUISwitchAccessoryViewController *)self subscriber];
  [subscriber4 addObserver:self selector:sel_updateWithNotification_];
}

- (void)updateWithNotification:(id)notification
{
  userInfo = [notification userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"event"];

  v5 = v6;
  if (v6)
  {
    [(SearchUISwitchAccessoryViewController *)self updateForEvent:v6 animated:1];
    v5 = v6;
  }
}

- (void)updateForEvent:(id)event animated:(BOOL)animated
{
  eventCopy = event;
  action = [(SearchUISwitchAccessoryViewController *)self action];

  if (action)
  {
    action2 = [(SearchUISwitchAccessoryViewController *)self action];
    v9 = [SearchUIBiomeEvent eventForEvent:eventCopy contextualAction:action2];

    eventCopy = v9;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = eventCopy;
    objc_initWeak(&location, self);
    subscriber = [(SearchUISwitchAccessoryViewController *)self subscriber];
    streamIdentifier = [subscriber streamIdentifier];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__SearchUISwitchAccessoryViewController_updateForEvent_animated___block_invoke;
    v15[3] = &unk_1E85B2D38;
    objc_copyWeak(&v17, &location);
    v13 = streamIdentifier;
    v16 = v13;
    animatedCopy = animated;
    [v10 getEnabledStatusWithCompletion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__SearchUISwitchAccessoryViewController_updateForEvent_animated___block_invoke_74;
    v14[3] = &unk_1E85B24C8;
    v14[4] = self;
    [SearchUIUtilities dispatchMainIfNecessary:v14];
  }
}

void __65__SearchUISwitchAccessoryViewController_updateForEvent_animated___block_invoke(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__SearchUISwitchAccessoryViewController_updateForEvent_animated___block_invoke_2;
  v4[3] = &unk_1E85B2D10;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v7 = a2;
  v8 = *(a1 + 48);
  [SearchUIUtilities dispatchMainIfNecessary:v4];

  objc_destroyWeak(&v6);
}

void __65__SearchUISwitchAccessoryViewController_updateForEvent_animated___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = SearchUIBiomeLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v12 = 138412546;
    v13 = v4;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_1DA169000, v3, OS_LOG_TYPE_DEFAULT, "Evaluated event from BiomeStream (%@) to %d", &v12, 0x12u);
  }

  v6 = [WeakRetained subscriber];
  v7 = [v6 streamIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = SearchUIBiomeLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = 138412546;
      v13 = v10;
      v14 = 1024;
      v15 = v11;
      _os_log_impl(&dword_1DA169000, v9, OS_LOG_TYPE_DEFAULT, "Updated switch for BiomeStream (%@) to state: %d", &v12, 0x12u);
    }

    [WeakRetained debounceSetOn:*(a1 + 48) animated:*(a1 + 49)];
    [WeakRetained setIsHiddenByEvent:0];
  }
}

uint64_t __65__SearchUISwitchAccessoryViewController_updateForEvent_animated___block_invoke_74(uint64_t a1)
{
  v2 = SearchUIBiomeLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __65__SearchUISwitchAccessoryViewController_updateForEvent_animated___block_invoke_74_cold_1(a1, v2);
  }

  return [*(a1 + 32) setIsHiddenByEvent:1];
}

- (void)setIsHiddenByEvent:(BOOL)event
{
  eventCopy = event;
  self->_isHiddenByEvent = event;
  view = [(SearchUIAccessoryViewController *)self view];
  [view setEnabled:!eventCopy];

  if (eventCopy)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  view2 = [(SearchUIAccessoryViewController *)self view];
  [view2 setAlpha:v6];
}

- (void)debounceSetOn:(BOOL)on animated:(BOOL)animated
{
  animatedCopy = animated;
  onCopy = on;
  if ([(SearchUISwitchAccessoryViewController *)self isAwaitingUpdate])
  {
    debounceBlock = [(SearchUISwitchAccessoryViewController *)self debounceBlock];

    if (debounceBlock)
    {
      debounceBlock2 = [(SearchUISwitchAccessoryViewController *)self debounceBlock];
      dispatch_block_cancel(debounceBlock2);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__SearchUISwitchAccessoryViewController_debounceSetOn_animated___block_invoke;
    v12[3] = &unk_1E85B2D60;
    v12[4] = self;
    v13 = onCopy;
    v14 = animatedCopy;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v12);
    [(SearchUISwitchAccessoryViewController *)self setDebounceBlock:v9];

    v10 = dispatch_time(0, 50000000);
    debounceBlock3 = [(SearchUISwitchAccessoryViewController *)self debounceBlock];
    dispatch_after(v10, MEMORY[0x1E69E96A0], debounceBlock3);
  }

  else
  {

    [(SearchUISwitchAccessoryViewController *)self setOn:onCopy animated:animatedCopy];
  }
}

uint64_t __64__SearchUISwitchAccessoryViewController_debounceSetOn_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOn:*(a1 + 40) animated:*(a1 + 41)];
  v2 = *(a1 + 32);

  return [v2 setIsAwaitingUpdate:0];
}

- (void)setOn:(BOOL)on animated:(BOOL)animated
{
  animatedCopy = animated;
  onCopy = on;
  view = [(SearchUIAccessoryViewController *)self view];
  isOn = [view isOn];

  if (isOn != onCopy)
  {
    view2 = [(SearchUIAccessoryViewController *)self view];
    [view2 setOn:onCopy animated:animatedCopy];
  }
}

- (void)buttonPressed
{
  [(SearchUISwitchAccessoryViewController *)self setIsAwaitingUpdate:1];
  view = [(SearchUIAccessoryViewController *)self view];
  -[SearchUISwitchAccessoryViewController setExpectedUpdateState:](self, "setExpectedUpdateState:", [view isOn]);

  delegate = [(SearchUIAccessoryViewController *)self delegate];
  feedbackDelegate = [delegate feedbackDelegate];
  v10 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];

  rowModel = [(SearchUIAccessoryViewController *)self rowModel];
  v7 = [SearchUIShortcutsUtilities commandForSettingTogglesFromRowModel:rowModel];

  rowModel2 = [(SearchUIAccessoryViewController *)self rowModel];
  v9 = [SearchUICommandHandler handlerForCommand:v7 rowModel:rowModel2 button:0 sectionModel:0 environment:v10];

  [v9 executeWithTriggerEvent:3];
}

void __65__SearchUISwitchAccessoryViewController_updateForEvent_animated___block_invoke_74_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) action];
  v4 = [v3 settingBiomeStreamIdentifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Could not get enablement status for biome event (%@)", &v5, 0xCu);
}

@end
@interface SearchUISwitchAccessoryViewController
+ (BOOL)supportsRowModel:(id)a3;
- (id)setupView;
- (void)buttonPressed;
- (void)dealloc;
- (void)debounceSetOn:(BOOL)a3 animated:(BOOL)a4;
- (void)setIsHiddenByEvent:(BOOL)a3;
- (void)setOn:(BOOL)a3 animated:(BOOL)a4;
- (void)updateForEvent:(id)a3 animated:(BOOL)a4;
- (void)updateWithNotification:(id)a3;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUISwitchAccessoryViewController

+ (BOOL)supportsRowModel:(id)a3
{
  v3 = [SearchUIShortcutsUtilities commandForSettingTogglesFromRowModel:a3];
  v4 = [v3 biomeStreamIdentifier];
  v5 = [v4 length] != 0;

  return v5;
}

- (id)setupView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)dealloc
{
  v3 = [(SearchUISwitchAccessoryViewController *)self subscriber];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SearchUISwitchAccessoryViewController;
  [(SearchUISwitchAccessoryViewController *)&v4 dealloc];
}

- (void)updateWithRowModel:(id)a3
{
  v15.receiver = self;
  v15.super_class = SearchUISwitchAccessoryViewController;
  v4 = a3;
  [(SearchUIAccessoryViewController *)&v15 updateWithRowModel:v4];
  v5 = [(SearchUISwitchAccessoryViewController *)self subscriber];

  if (v5)
  {
    v6 = [(SearchUISwitchAccessoryViewController *)self subscriber];
    [v6 removeObserver:self];

    [(SearchUISwitchAccessoryViewController *)self setSubscriber:0];
  }

  v7 = [v4 contextualAction];
  v8 = [SearchUIShortcutsUtilities commandForSettingTogglesFromRowModel:v4];

  v9 = [v8 biomeStreamIdentifier];
  [(SearchUISwitchAccessoryViewController *)self setAction:v7];
  v10 = +[SearchUIBiomeSubscriberRegistry sharedManager];
  v11 = [v10 requestSubscriberForIdentifier:v9];
  [(SearchUISwitchAccessoryViewController *)self setSubscriber:v11];

  v12 = [(SearchUISwitchAccessoryViewController *)self subscriber];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__SearchUISwitchAccessoryViewController_updateWithRowModel___block_invoke;
  v14[3] = &unk_1E85B2CE8;
  v14[4] = self;
  [v12 getLatestEventWithCompletion:v14];

  v13 = [(SearchUISwitchAccessoryViewController *)self subscriber];
  [v13 addObserver:self selector:sel_updateWithNotification_];
}

- (void)updateWithNotification:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKeyedSubscript:@"event"];

  v5 = v6;
  if (v6)
  {
    [(SearchUISwitchAccessoryViewController *)self updateForEvent:v6 animated:1];
    v5 = v6;
  }
}

- (void)updateForEvent:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(SearchUISwitchAccessoryViewController *)self action];

  if (v7)
  {
    v8 = [(SearchUISwitchAccessoryViewController *)self action];
    v9 = [SearchUIBiomeEvent eventForEvent:v6 contextualAction:v8];

    v6 = v9;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = v6;
    objc_initWeak(&location, self);
    v11 = [(SearchUISwitchAccessoryViewController *)self subscriber];
    v12 = [v11 streamIdentifier];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__SearchUISwitchAccessoryViewController_updateForEvent_animated___block_invoke;
    v15[3] = &unk_1E85B2D38;
    objc_copyWeak(&v17, &location);
    v13 = v12;
    v16 = v13;
    v18 = a4;
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

- (void)setIsHiddenByEvent:(BOOL)a3
{
  v3 = a3;
  self->_isHiddenByEvent = a3;
  v5 = [(SearchUIAccessoryViewController *)self view];
  [v5 setEnabled:!v3];

  if (v3)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = [(SearchUIAccessoryViewController *)self view];
  [v7 setAlpha:v6];
}

- (void)debounceSetOn:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(SearchUISwitchAccessoryViewController *)self isAwaitingUpdate])
  {
    v7 = [(SearchUISwitchAccessoryViewController *)self debounceBlock];

    if (v7)
    {
      v8 = [(SearchUISwitchAccessoryViewController *)self debounceBlock];
      dispatch_block_cancel(v8);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__SearchUISwitchAccessoryViewController_debounceSetOn_animated___block_invoke;
    v12[3] = &unk_1E85B2D60;
    v12[4] = self;
    v13 = v5;
    v14 = v4;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v12);
    [(SearchUISwitchAccessoryViewController *)self setDebounceBlock:v9];

    v10 = dispatch_time(0, 50000000);
    v11 = [(SearchUISwitchAccessoryViewController *)self debounceBlock];
    dispatch_after(v10, MEMORY[0x1E69E96A0], v11);
  }

  else
  {

    [(SearchUISwitchAccessoryViewController *)self setOn:v5 animated:v4];
  }
}

uint64_t __64__SearchUISwitchAccessoryViewController_debounceSetOn_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOn:*(a1 + 40) animated:*(a1 + 41)];
  v2 = *(a1 + 32);

  return [v2 setIsAwaitingUpdate:0];
}

- (void)setOn:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(SearchUIAccessoryViewController *)self view];
  v8 = [v7 isOn];

  if (v8 != v5)
  {
    v9 = [(SearchUIAccessoryViewController *)self view];
    [v9 setOn:v5 animated:v4];
  }
}

- (void)buttonPressed
{
  [(SearchUISwitchAccessoryViewController *)self setIsAwaitingUpdate:1];
  v3 = [(SearchUIAccessoryViewController *)self view];
  -[SearchUISwitchAccessoryViewController setExpectedUpdateState:](self, "setExpectedUpdateState:", [v3 isOn]);

  v4 = [(SearchUIAccessoryViewController *)self delegate];
  v5 = [v4 feedbackDelegate];
  v10 = [SearchUIUtilities environmentForDelegate:v5];

  v6 = [(SearchUIAccessoryViewController *)self rowModel];
  v7 = [SearchUIShortcutsUtilities commandForSettingTogglesFromRowModel:v6];

  v8 = [(SearchUIAccessoryViewController *)self rowModel];
  v9 = [SearchUICommandHandler handlerForCommand:v7 rowModel:v8 button:0 sectionModel:0 environment:v10];

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
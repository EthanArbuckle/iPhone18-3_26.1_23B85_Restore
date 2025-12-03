@interface VUITransactionButton
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (VUITransactionButton)initWithType:(unint64_t)type interfaceStyle:(unint64_t)style;
- (id)_carouselView;
- (void)_addProgressIndicatorWithFrame:(CGRect)frame;
- (void)_buttonTapped:(id)tapped eventName:(id)name;
- (void)_handleTransactionDidFinishNotification:(id)notification;
- (void)_handleTransactionDidStartNotification:(id)notification;
- (void)_layoutProgressIndicatorIfNeeded;
- (void)_registerForTransactionNotification;
- (void)_unregisterTransactionNotifications;
- (void)_updateProgressIndicatorTintColor:(id)color;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setMonitorTransaction:(BOOL)transaction;
- (void)setTransactionIDs:(id)ds;
@end

@implementation VUITransactionButton

- (VUITransactionButton)initWithType:(unint64_t)type interfaceStyle:(unint64_t)style
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VUITransactionButton;
  v4 = [(VUIButton *)&v15 initWithType:type interfaceStyle:style];
  if (v4)
  {
    objc_initWeak(&location, v4);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__VUITransactionButton_initWithType_interfaceStyle___block_invoke;
    v12[3] = &unk_1E872DE30;
    objc_copyWeak(&v13, &location);
    [(VUIButton *)v4 setSelectActionHandler:v12];
    v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    transactionIDs = v4->_transactionIDs;
    v4->_transactionIDs = v5;

    objc_initWeak(&from, v4);
    v16[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__VUITransactionButton_initWithType_interfaceStyle___block_invoke_2;
    v9[3] = &unk_1E872E760;
    objc_copyWeak(&v10, &from);
    [(VUITransactionButton *)v4 vui_registerForTraitChanges:v7 withHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __52__VUITransactionButton_initWithType_interfaceStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _buttonTapped:v3 eventName:@"select"];
}

void __52__VUITransactionButton_initWithType_interfaceStyle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained progressIndicator];
  if (v1)
  {
    [WeakRetained _updateProgressIndicatorTintColor:v1];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"VUIPurchaseOrSubscribeRequestDidStartNotification" object:0];

  [(VUITransactionButton *)self _unregisterTransactionNotifications];
  v4.receiver = self;
  v4.super_class = VUITransactionButton;
  [(VUITransactionButton *)&v4 dealloc];
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  v11.receiver = self;
  v11.super_class = VUITransactionButton;
  [(VUIButton *)&v11 vui_layoutSubviews:only computationOnly:subviews.width, subviews.height];
  v6 = v5;
  v8 = v7;
  [(VUITransactionButton *)self _layoutProgressIndicatorIfNeeded];
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setTransactionIDs:(id)ds
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = dsCopy;
  if (!dsCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  objc_storeStrong(&self->_transactionIDs, v5);
  if (!dsCopy)
  {
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_transactionIDs;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([VUIActionCommerceTransaction isTransactionInProgressForBuyParams:*(*(&v14 + 1) + 8 * i), v14])
        {
          v7 = 1;
          goto LABEL_15;
        }
      }

      v7 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NSSet *)self->_transactionIDs count];
    *buf = 134218496;
    selfCopy = self;
    v20 = 1024;
    v21 = v7;
    v22 = 2048;
    v23 = v11;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUITransactionButton <%p>: anyTransactionsInProgress=%d, [_transactionIds count]=%lu", buf, 0x1Cu);
  }

  [(VUITransactionButton *)self setMonitorTransaction:v7];
  if ((v7 & 1) == 0 && [(NSSet *)self->_transactionIDs count])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"VUIPurchaseOrSubscribeRequestDidStartNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__handleTransactionDidStartNotification_ name:@"VUIPurchaseOrSubscribeRequestDidStartNotification" object:0];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = VUITransactionButton;
  [(VUITransactionButton *)&v11 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];
  v8 = nextFocusedItem;
  if (nextFocusedItem == self)
  {

LABEL_5:
    progressIndicator = [(VUITransactionButton *)self progressIndicator];
    [(VUITransactionButton *)self _updateProgressIndicatorTintColor:progressIndicator];

    goto LABEL_6;
  }

  previouslyFocusedItem = [contextCopy previouslyFocusedItem];

  if (previouslyFocusedItem == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)setMonitorTransaction:(BOOL)transaction
{
  if (self->_monitorTransaction != transaction)
  {
    self->_monitorTransaction = transaction;
    if (transaction)
    {
      v5 = *MEMORY[0x1E695F058];
      v6 = *(MEMORY[0x1E695F058] + 8);
      [(VUIButton *)self imageMaxWidth];
      v8 = v7;
      [(VUIButton *)self imageMaxHeight];
      [(VUITransactionButton *)self _addProgressIndicatorWithFrame:v5, v6, v8, v9];
      [(VUITransactionButton *)self _registerForTransactionNotification];
      v10 = 2;
    }

    else
    {
      progressIndicator = [(VUITransactionButton *)self progressIndicator];
      [progressIndicator vui_removeFromSuperView];

      [(VUITransactionButton *)self setProgressIndicator:0];
      v10 = 0;
    }

    _carouselView = [(VUITransactionButton *)self _carouselView];
    [_carouselView setScrollMode:v10];
  }
}

- (id)_carouselView
{
  superview = [(VUITransactionButton *)self superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    superview2 = [(VUITransactionButton *)self superview];
    if (superview2)
    {
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v5Superview = [superview2 superview];

        superview2 = v5Superview;
      }

      while (v5Superview);
    }
  }

  else
  {
    superview2 = 0;
  }

  return superview2;
}

- (void)_layoutProgressIndicatorIfNeeded
{
  [(VUITransactionButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VUIButton *)self padding];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  progressIndicator = [(VUITransactionButton *)self progressIndicator];
  v36 = progressIndicator;
  if (progressIndicator)
  {
    v20 = v4 + v14;
    v21 = v6 + v12;
    v22 = v8 - (v14 + v18);
    v23 = v10 - (v12 + v16);
    progressIndicator2 = [(VUITransactionButton *)self progressIndicator];
    [progressIndicator2 frame];

    v25 = v22;
    v26 = v23;
    if ([(VUIButton *)self buttonType]== 2)
    {
      goto LABEL_14;
    }

    if (_os_feature_enabled_impl())
    {
      [(VUITransactionButton *)self _progressIndicatorSize];
    }

    else
    {
      [(VUIButton *)self imageMaxWidth];
      v25 = v22;
      if (v28 <= 0.0)
      {
LABEL_8:
        if (_os_feature_enabled_impl())
        {
          [(VUITransactionButton *)self _progressIndicatorSize];
        }

        else
        {
          [(VUIButton *)self imageMaxHeight];
          if (v30 <= 0.0)
          {
            v26 = v23;
            goto LABEL_14;
          }

          [(VUIButton *)self imageMaxHeight];
        }

        v26 = v29;
LABEL_14:
        [(VUITransactionButton *)self vui_bringSubviewToFront:v36];
        progressIndicator3 = [(VUITransactionButton *)self progressIndicator];
        [progressIndicator3 setFrame:{v20 + (v22 - v25) * 0.5, v21 + (v23 - v26) * 0.5, v25, v26}];

        progressIndicator = v36;
        goto LABEL_15;
      }

      [(VUIButton *)self imageMaxWidth];
    }

    v25 = v27;
    goto LABEL_8;
  }

LABEL_15:
  v32 = progressIndicator != 0;
  textContentView = [(VUIButton *)self textContentView];
  [textContentView setHidden:v32];

  subtitleContentView = [(VUIButton *)self subtitleContentView];
  [subtitleContentView setHidden:v32];

  imageView = [(VUIButton *)self imageView];
  [imageView setHidden:v32];
}

- (void)_buttonTapped:(id)tapped eventName:(id)name
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(VUITransactionButton *)self isWaitingForTransactionToStart:tapped]|| [(VUITransactionButton *)self monitorTransaction])
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      isWaitingForTransactionToStart = [(VUITransactionButton *)self isWaitingForTransactionToStart];
      v10 = 1024;
      monitorTransaction = [(VUITransactionButton *)self monitorTransaction];
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring transaction button tap. isWaitingForTransactionToStart %d, monitorTransaction %d", buf, 0xEu);
    }
  }

  else
  {
    [(VUITransactionButton *)self setWaitingForTransactionToStart:1];
    selectActionHandler = [(VUIButton *)self selectActionHandler];

    if (selectActionHandler)
    {
      selectActionHandler2 = [(VUIButton *)self selectActionHandler];
      selectActionHandler2[2](selectActionHandler2, self);
    }
  }
}

- (void)_updateProgressIndicatorTintColor:(id)color
{
  colorCopy = color;
  textContentView = [(VUIButton *)self textContentView];
  textLayout = [textContentView textLayout];
  color = [textLayout color];

  if (!color)
  {
    color = [(VUITransactionButton *)self vuiTintColor];
  }

  [colorCopy setVuiTintColor:color];
}

- (void)_addProgressIndicatorWithFrame:(CGRect)frame
{
  if (!self->_progressIndicator)
  {
    v7 = [[VUICircularProgress alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(VUICircularProgress *)v7 setVuiBackgroundColor:clearColor];

    vuiLayer = [(VUICircularProgress *)v7 vuiLayer];
    [vuiLayer removeAllAnimations];

    [(VUICircularProgress *)v7 setUserInteractionEnabled:0];
    [(VUITransactionButton *)self _updateProgressIndicatorTintColor:v7];
    [(VUICircularProgress *)v7 setIndeterminate:1];
    [(VUITransactionButton *)self vui_addSubview:v7 oldView:0];
    [(VUITransactionButton *)self setProgressIndicator:v7];
  }
}

- (void)_registerForTransactionNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleTransactionDidFinishNotification_ name:@"VUISubscribeRequestDidFinishNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleTransactionDidFinishNotification_ name:@"VUIPurchaseRequestDidFinishNotification" object:0];
}

- (void)_unregisterTransactionNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"VUISubscribeRequestDidFinishNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"VUIPurchaseRequestDidFinishNotification" object:0];
}

- (void)_handleTransactionDidStartNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"TransactionID"];

  if ([v5 length])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__VUITransactionButton__handleTransactionDidStartNotification___block_invoke;
    v6[3] = &unk_1E872D990;
    v6[4] = self;
    v7 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __63__VUITransactionButton__handleTransactionDidStartNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) transactionIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 134217984;
      v7 = v5;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUITransactionButton <%p>: setMonitorTransaction=YES", &v6, 0xCu);
    }

    [*(a1 + 32) setMonitorTransaction:1];
    [*(a1 + 32) setWaitingForTransactionToStart:0];
  }
}

- (void)_handleTransactionDidFinishNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"TransactionID"];

  if ([v6 length])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__VUITransactionButton__handleTransactionDidFinishNotification___block_invoke;
    block[3] = &unk_1E872E008;
    block[4] = self;
    v8 = v6;
    v9 = notificationCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __64__VUITransactionButton__handleTransactionDidFinishNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) transactionIDs];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [*(a1 + 32) transactionIDs];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([VUIActionCommerceTransaction isTransactionInProgressForBuyParams:*(*(&v16 + 1) + 8 * v8)])
          {

            v10 = VUIDefaultLogObject();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(a1 + 32);
              *buf = 134217984;
              v21 = v14;
              _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUITransactionButton <%p>: one or many transactions still running, do not hide indicator", buf, 0xCu);
            }

            goto LABEL_19;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = [*(a1 + 48) userInfo];
    v10 = [v9 objectForKeyedSubscript:@"Error"];

    v11 = VUIDefaultLogObject();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = *(a1 + 32);
        *buf = 134217984;
        v21 = v13;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUITransactionButton <%p>: allTransactionsFinished & there's an error -> hide indicator", buf, 0xCu);
      }

      [*(a1 + 32) setMonitorTransaction:0];
    }

    else
    {
      if (v12)
      {
        v15 = *(a1 + 32);
        *buf = 134217984;
        v21 = v15;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUITransactionButton <%p>: allTransactionsFinished successfully, do not hide indicator, just wait for page refreshing", buf, 0xCu);
      }
    }

LABEL_19:
  }
}

@end
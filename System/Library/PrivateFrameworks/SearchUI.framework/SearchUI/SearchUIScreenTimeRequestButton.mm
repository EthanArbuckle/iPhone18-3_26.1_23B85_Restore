@interface SearchUIScreenTimeRequestButton
+ (BOOL)supportsRowModel:(id)model;
- (id)requestIdentifier;
- (int)getRequestState;
- (void)dealloc;
- (void)setupSubscription;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIScreenTimeRequestButton

+ (BOOL)supportsRowModel:(id)model
{
  modelCopy = model;
  buttonItems = [modelCopy buttonItems];
  if ([buttonItems count] == 1 && objc_msgSend(modelCopy, "buttonItemsAreTrailing"))
  {
    firstObject = [buttonItems firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      command = [firstObject command];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        punchout = [command punchout];
        label = [punchout label];
        if (label)
        {
          urls = [punchout urls];
          firstObject2 = [urls firstObject];
          scheme = [firstObject2 scheme];
          v12 = [scheme isEqualToString:@"prefs"];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)requestIdentifier
{
  command = [(SearchUIRequestButton *)self command];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    punchout = [command punchout];
    label = [punchout label];
  }

  else
  {
    label = 0;
  }

  return label;
}

- (int)getRequestState
{
  requestIdentifier = [(SearchUIScreenTimeRequestButton *)self requestIdentifier];
  if (requestIdentifier)
  {
    v3 = +[SearchUIScreenTimeRequestStatusManager sharedManager];
    v4 = [v3 statusForRequestID:requestIdentifier];

    if (v4 == 2)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    if (v4 == 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)updateWithRowModel:(id)model
{
  v13.receiver = self;
  v13.super_class = SearchUIScreenTimeRequestButton;
  modelCopy = model;
  [(SearchUIAccessoryViewController *)&v13 updateWithRowModel:modelCopy];
  buttonItems = [modelCopy buttonItems];
  firstObject = [buttonItems firstObject];

  command = [firstObject command];
  [(SearchUIRequestButton *)self setCommand:command];
  title = [firstObject title];
  viewButton = [(SearchUIRequestButton *)self viewButton];
  [viewButton setTitle:title];

  useCompactVersionOfUI = [modelCopy useCompactVersionOfUI];
  viewButton2 = [(SearchUIRequestButton *)self viewButton];
  [viewButton2 setUseCompactMode:useCompactVersionOfUI];

  [(SearchUIScreenTimeRequestButton *)self setupSubscription];
  v12.receiver = self;
  v12.super_class = SearchUIScreenTimeRequestButton;
  [(SearchUIRequestButton *)&v12 updateButtonState:0 withState:[(SearchUIScreenTimeRequestButton *)self getRequestState]];
}

- (void)setupSubscription
{
  screentimeRequestStatusObserver = [(SearchUIScreenTimeRequestButton *)self screentimeRequestStatusObserver];

  if (!screentimeRequestStatusObserver)
  {
    v4 = +[SearchUIScreenTimeRequestStatusManager sharedManager];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__SearchUIScreenTimeRequestButton_setupSubscription__block_invoke;
    v6[3] = &unk_1E85B2C98;
    v6[4] = self;
    v5 = [v4 addObserver:v6];
    [(SearchUIScreenTimeRequestButton *)self setScreentimeRequestStatusObserver:v5];
  }
}

void __52__SearchUIScreenTimeRequestButton_setupSubscription__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SearchUIScreenTimeRequestButton_setupSubscription__block_invoke_2;
  block[3] = &unk_1E85B24C8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id __52__SearchUIScreenTimeRequestButton_setupSubscription__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = v1;
  v3.super_class = SearchUIScreenTimeRequestButton;
  return objc_msgSendSuper2(&v3, sel_updateButtonState_withState_, 1, [v1 getRequestState]);
}

- (void)dealloc
{
  v3 = +[SearchUIScreenTimeRequestStatusManager sharedManager];
  screentimeRequestStatusObserver = [(SearchUIScreenTimeRequestButton *)self screentimeRequestStatusObserver];
  [v3 removeObserver:screentimeRequestStatusObserver];

  screentimeRequestStatusObserver = self->_screentimeRequestStatusObserver;
  self->_screentimeRequestStatusObserver = 0;

  v6.receiver = self;
  v6.super_class = SearchUIScreenTimeRequestButton;
  [(SearchUIScreenTimeRequestButton *)&v6 dealloc];
}

@end
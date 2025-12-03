@interface PKPassViewUserActivityManager
+ (id)sharedInstance;
- (BOOL)_shouldDonateActivity:(id)activity;
- (id)_currentUserActivityPassUniqueID;
- (id)_displayNameForPass:(id)pass;
- (id)_init;
- (id)_passViewTemplateNameForPass:(id)pass;
- (void)_endedViewingPass;
- (void)dealloc;
- (void)endedViewingPass;
- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state;
- (void)startedViewingPass:(id)pass;
@end

@implementation PKPassViewUserActivityManager

+ (id)sharedInstance
{
  if (_MergedGlobals_597 != -1)
  {
    dispatch_once(&_MergedGlobals_597, &__block_literal_global_112);
  }

  v3 = qword_1EBD6AC90;

  return v3;
}

void __47__PKPassViewUserActivityManager_sharedInstance__block_invoke()
{
  v0 = [[PKPassViewUserActivityManager alloc] _init];
  v1 = qword_1EBD6AC90;
  qword_1EBD6AC90 = v0;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = PKPassViewUserActivityManager;
  v2 = [(PKPassViewUserActivityManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.passkit.passviewuseractivitymanager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[PKUIForegroundActiveArbiter sharedInstance];
    v6 = [v5 registerObserver:v2];

    v2->_isForegroundActive = BYTE1(v6) & 1;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = PKPassViewUserActivityManager;
  [(PKPassViewUserActivityManager *)&v4 dealloc];
}

- (void)startedViewingPass:(id)pass
{
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  if (uniqueID && (PKRunningInRemoteContext() & 1) == 0)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__PKPassViewUserActivityManager_startedViewingPass___block_invoke;
    block[3] = &unk_1E8010A88;
    block[4] = self;
    v8 = uniqueID;
    v9 = passCopy;
    dispatch_async(queue, block);
  }
}

void __52__PKPassViewUserActivityManager_startedViewingPass___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24) == 1)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPassViewUserActivityManager: startedViewingPass - %@", buf, 0xCu);
    }

    v4 = [*(a1 + 32) _currentUserActivityPassUniqueID];
    if (v4 && ([*(a1 + 40) isEqualToString:v4] & 1) == 0)
    {
      [*(a1 + 32) _endedViewingPass];
    }

    v5 = *(a1 + 32);
    if (!v5[1])
    {
      if ([v5 _shouldDonateActivity:*(a1 + 48)])
      {
        v6 = objc_alloc(MEMORY[0x1E69636A8]);
        v7 = [v6 initWithActivityType:*MEMORY[0x1E69BC6C8]];
        v8 = [*(a1 + 32) _displayNameForPass:*(a1 + 48)];
        v9 = [*(a1 + 32) _passViewTemplateNameForPass:*(a1 + 48)];
        v10 = PKCoreLocalizedString(&cfstr_PassViewUserAc.isa, &stru_1F3BD6370.isa, v8, v9);
        [v7 setTitle:v10];

        [v7 setEligibleForSearch:1];
        [v7 setEligibleForHandoff:0];
        v11 = *(a1 + 40);
        v18 = *MEMORY[0x1E69BC6C0];
        v19 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        [v7 setUserInfo:v12];

        [v7 setEligibleForPrediction:1];
        v13 = MEMORY[0x1E69B8768];
        v14 = *(a1 + 48);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __52__PKPassViewUserActivityManager_startedViewingPass___block_invoke_27;
        v16[3] = &unk_1E80198E8;
        v16[4] = *(a1 + 32);
        v17 = v7;
        v15 = v7;
        [v13 searchableItemForPass:v14 completion:v16];
      }
    }
  }
}

void __52__PKPassViewUserActivityManager_startedViewingPass___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKPassViewUserActivityManager_startedViewingPass___block_invoke_2;
  block[3] = &unk_1E8010A88;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __52__PKPassViewUserActivityManager_startedViewingPass___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) attributeSet];
  [v3 setContentType:*MEMORY[0x1E69BBF98]];
  v2 = [*(a1 + 32) uniqueIdentifier];
  [v3 setRelatedUniqueIdentifier:v2];

  [*(a1 + 40) setContentAttributeSet:v3];
  [*(a1 + 40) becomeCurrent];
  objc_storeStrong((*(a1 + 48) + 8), *(a1 + 40));
}

- (void)endedViewingPass
{
  if ((PKRunningInRemoteContext() & 1) == 0)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PKPassViewUserActivityManager_endedViewingPass__block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)foregroundActiveArbiter:(id)arbiter didUpdateForegroundActiveState:(id)state
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__PKPassViewUserActivityManager_foregroundActiveArbiter_didUpdateForegroundActiveState___block_invoke;
  v5[3] = &unk_1E8019910;
  v5[4] = self;
  stateCopy = state;
  dispatch_async(queue, v5);
}

uint64_t __88__PKPassViewUserActivityManager_foregroundActiveArbiter_didUpdateForegroundActiveState___block_invoke(uint64_t result)
{
  *(*(result + 32) + 24) = *(result + 41);
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _endedViewingPass];
  }

  return result;
}

- (void)_endedViewingPass
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_currentUserActivity)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      _currentUserActivityPassUniqueID = [(PKPassViewUserActivityManager *)self _currentUserActivityPassUniqueID];
      v6 = 138412290;
      v7 = _currentUserActivityPassUniqueID;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPassViewUserActivityManager: endedViewingPass - %@", &v6, 0xCu);
    }

    [(NSUserActivity *)self->_currentUserActivity resignCurrent];
    currentUserActivity = self->_currentUserActivity;
    self->_currentUserActivity = 0;
  }
}

- (id)_currentUserActivityPassUniqueID
{
  currentUserActivity = self->_currentUserActivity;
  if (currentUserActivity)
  {
    userInfo = [(NSUserActivity *)currentUserActivity userInfo];
    v4 = [userInfo objectForKey:*MEMORY[0x1E69BC6C0]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldDonateActivity:(id)activity
{
  activityCopy = activity;
  v5 = [(PKPassViewUserActivityManager *)self _displayNameForPass:activityCopy];

  if (v5)
  {
    style = [activityCopy style];
    if (style <= 7)
    {
      LOBYTE(v5) = 0xE2u >> style;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (id)_displayNameForPass:(id)pass
{
  notificationCenterTitle = [pass notificationCenterTitle];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [notificationCenterTitle stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (!v5 || ![v5 length])
  {

    v5 = 0;
  }

  return v5;
}

- (id)_passViewTemplateNameForPass:(id)pass
{
  passCopy = pass;
  v4 = passCopy;
  if (!passCopy)
  {
    v7 = 0;
    goto LABEL_16;
  }

  style = [passCopy style];
  v6 = @"PASS_VIEW_USER_ACTIVITY_TEMPLATE_NAME_NON_PAYMENT_BOARDING_PASS";
  if (style <= 5)
  {
    if (style == 2)
    {
      goto LABEL_13;
    }

    if (style != 4)
    {
LABEL_12:
      v6 = @"PASS_VIEW_USER_ACTIVITY_TEMPLATE_NAME_NON_PAYMENT_PASS";
    }
  }

  else if (style != 10)
  {
    if (style != 9)
    {
      if (style == 6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 isAppleCardPass])
        {
          v7 = &stru_1F3BD7330;
          goto LABEL_16;
        }

        v6 = @"PASS_VIEW_USER_ACTIVITY_TEMPLATE_NAME_PAYMENT_PASS";
        goto LABEL_15;
      }

      goto LABEL_12;
    }

LABEL_13:
    v6 = @"PASS_VIEW_USER_ACTIVITY_TEMPLATE_NAME_NON_PAYMENT_TICKET";
  }

LABEL_15:
  v7 = PKCoreLocalizedString(&v6->isa);
LABEL_16:

  return v7;
}

@end
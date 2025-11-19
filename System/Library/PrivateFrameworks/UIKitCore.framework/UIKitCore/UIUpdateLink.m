@interface UIUpdateLink
+ (id)updateLinkForView:(id)a3 actionHandler:(id)a4;
+ (id)updateLinkForView:(id)a3 actionTarget:(id)a4 selector:(SEL)a5;
+ (id)updateLinkForWindowScene:(id)a3 actionHandler:(id)a4;
+ (id)updateLinkForWindowScene:(id)a3 actionTarget:(id)a4 selector:(SEL)a5;
- (id)_init;
- (id)currentUpdateInfo;
- (uint64_t)_modifyRequest:(uint64_t)result;
- (uint64_t)_modifyRequestFlags:(int)a3 on:;
- (void)_setActive:(uint64_t)a1;
- (void)addActionToPhase:(id)a3 handler:(id)a4;
- (void)addActionToPhase:(id)a3 target:(id)a4 selector:(SEL)a5;
- (void)addActionWithHandler:(id)a3;
- (void)addActionWithTarget:(id)a3 selector:(SEL)a4;
- (void)dealloc;
- (void)setEnabled:(BOOL)a3;
- (void)setPreferredFrameRateRange:(CAFrameRateRange)a3;
- (void)setRequiresContinuousUpdates:(BOOL)a3;
- (void)setWantsImmediatePresentation:(BOOL)a3;
- (void)setWantsLowLatencyEventDispatch:(BOOL)a3;
@end

@implementation UIUpdateLink

- (id)_init
{
  if (result)
  {
    v1.receiver = result;
    v1.super_class = UIUpdateLink;
    result = objc_msgSendSuper2(&v1, sel_init);
    if (result)
    {
      *(result + 1) = 0;
      *(result + 4) = 0;
    }
  }

  return result;
}

- (void)dealloc
{
  if (self && self->_engaged)
  {
    self->_engaged = 0;
    [(UIUpdateLink *)self _setActive:?];
  }

  slh_first = self->_actions.slh_first;
  if (slh_first)
  {
    do
    {
      v5 = *slh_first;
      v4 = *(slh_first + 1);
      *(slh_first + 1) = 0;

      v6 = *(slh_first + 2);
      *(slh_first + 2) = 0;

      free(slh_first);
      slh_first = v5;
    }

    while (v5);
  }

  v7.receiver = self;
  v7.super_class = UIUpdateLink;
  [(UIUpdateLink *)&v7 dealloc];
}

- (void)addActionToPhase:(id)a3 handler:(id)a4
{
  v7 = malloc_type_calloc(1uLL, 0x28uLL, 0xA0040B0408BC2uLL);
  v8 = _Block_copy(a4);
  v9 = *(v7 + 1);
  *(v7 + 1) = v8;

  objc_storeStrong(v7 + 2, a3);
  *(v7 + 3) = self;
  *v7 = self->_actions.slh_first;
  self->_actions.slh_first = v7;
  if (self->_active)
  {
    v10 = *(v7 + 2);
    if (v10)
    {
      inserted = _UIUpdateSequenceInsertItem(*(v10 + 16), *(v10 + 8), "UIUpdateLink", 0, v7, &__block_literal_global_383);
    }

    else
    {
      inserted = 0;
    }

    *(v7 + 4) = inserted;
  }
}

- (void)addActionToPhase:(id)a3 target:(id)a4 selector:(SEL)a5
{
  objc_initWeak(&location, a4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__UIUpdateLink_addActionToPhase_target_selector___block_invoke;
  v8[3] = &unk_1E7116B70;
  objc_copyWeak(v9, &location);
  v9[1] = a5;
  [(UIUpdateLink *)self addActionToPhase:a3 handler:v8];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __49__UIUpdateLink_addActionToPhase_target_selector___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v7 = *(a1 + 40);
    if (dyld_program_sdk_at_least())
    {
      [v8 v7];
    }

    else
    {
      [v8 performSelector:v7 withObject:a2 withObject:a3];
    }

    WeakRetained = v8;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    v3 = a3 && self->_engaged;
    [(UIUpdateLink *)self _setActive:v3];
  }
}

- (void)_setActive:(uint64_t)a1
{
  if (a1 && *(a1 + 49) != a2)
  {
    *(a1 + 49) = a2;
    if (a2)
    {
      _UIUpdateRequestRegistryAddRecord(&mainRegistry, (a1 + 16), 0x10003Au);
      for (i = *(a1 + 8); i; i = *i)
      {
        v4 = i[2];
        if (v4)
        {
          inserted = _UIUpdateSequenceInsertItem(*(v4 + 16), *(v4 + 8), "UIUpdateLink", 0, i, &__block_literal_global_383);
        }

        else
        {
          inserted = 0;
        }

        i[4] = inserted;
      }
    }

    else
    {
      _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, (a1 + 16), 0x10003Au);
      for (j = *(a1 + 8); j; j = *j)
      {
        v7 = j[4];
        if (v7)
        {
          v8 = *(v7 + 24);
          if (v8)
          {
            *(v7 + 24) = v8 | 2;
          }

          else
          {
            _removeItem(v7);
          }
        }

        j[4] = 0;
      }
    }
  }
}

- (uint64_t)_modifyRequest:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (*(result + 49) == 1)
    {
      _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, (result + 16), 0x10003Au);
    }

    result = (*(a2 + 16))(a2);
    if (*(v3 + 49) == 1)
    {

      return _UIUpdateRequestRegistryAddRecord(&mainRegistry, (v3 + 16), 0x10003Au);
    }
  }

  return result;
}

- (uint64_t)_modifyRequestFlags:(int)a3 on:
{
  if (result)
  {
    v5 = *(result + 16);
    v6 = v5 | a2;
    if (!a3)
    {
      v6 = v5 & ~a2;
    }

    if (v6 != v5)
    {
      v9 = v3;
      v10 = v4;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __39__UIUpdateLink__modifyRequestFlags_on___block_invoke;
      v7[3] = &unk_1E7102030;
      v7[4] = result;
      v8 = v6;
      return [(UIUpdateLink *)result _modifyRequest:v7];
    }
  }

  return result;
}

- (void)setRequiresContinuousUpdates:(BOOL)a3
{
  if (self->_actions.slh_first)
  {

    [(UIUpdateLink *)self _modifyRequestFlags:a3 on:?];
  }

  else
  {
    _os_crash();
    __break(1u);
  }
}

- (void)setWantsLowLatencyEventDispatch:(BOOL)a3
{
  v3 = a3;
  if (qword_1ED49F400 != -1)
  {
    dispatch_once(&qword_1ED49F400, &__block_literal_global_62_0);
  }

  if (_MergedGlobals_1193 == 1)
  {

    [(UIUpdateLink *)self _modifyRequestFlags:v3 on:?];
  }
}

- (void)setWantsImmediatePresentation:(BOOL)a3
{
  v3 = a3;
  if (qword_1ED49F400 != -1)
  {
    dispatch_once(&qword_1ED49F400, &__block_literal_global_62_0);
  }

  if (_MergedGlobals_1193 == 1)
  {

    [(UIUpdateLink *)self _modifyRequestFlags:v3 on:?];
  }
}

- (void)setPreferredFrameRateRange:(CAFrameRateRange)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__UIUpdateLink_setPreferredFrameRateRange___block_invoke;
  v3[3] = &unk_1E7116B98;
  v3[4] = self;
  v4 = a3;
  [(UIUpdateLink *)self _modifyRequest:v3];
}

float __43__UIUpdateLink_setPreferredFrameRateRange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 44);
  *(*(a1 + 32) + 20) = *(a1 + 40);
  *(*(a1 + 32) + 28) = v1;
  result = *(a1 + 48);
  *(*(a1 + 32) + 24) = result;
  return result;
}

- (id)currentUpdateInfo
{
  if (_UIUpdateCycleMainScheduler && *(_UIUpdateCycleMainScheduler + 568) == 1)
  {
    v2 = [[UIUpdateInfo alloc] initWithUpdateParameters:?];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)addActionWithHandler:(id)a3
{
  v5 = +[UIUpdateActionPhase afterCADisplayLinkDispatch];
  [(UIUpdateLink *)self addActionToPhase:v5 handler:a3];
}

- (void)addActionWithTarget:(id)a3 selector:(SEL)a4
{
  v7 = +[UIUpdateActionPhase afterCADisplayLinkDispatch];
  [(UIUpdateLink *)self addActionToPhase:v7 target:a3 selector:a4];
}

+ (id)updateLinkForWindowScene:(id)a3 actionHandler:(id)a4
{
  v5 = [UIUpdateLink updateLinkForWindowScene:a3];
  [v5 addActionWithHandler:a4];

  return v5;
}

+ (id)updateLinkForWindowScene:(id)a3 actionTarget:(id)a4 selector:(SEL)a5
{
  v7 = [UIUpdateLink updateLinkForWindowScene:a3];
  [v7 addActionWithTarget:a4 selector:a5];

  return v7;
}

+ (id)updateLinkForView:(id)a3 actionHandler:(id)a4
{
  v5 = [UIUpdateLink updateLinkForView:a3];
  [v5 addActionWithHandler:a4];

  return v5;
}

+ (id)updateLinkForView:(id)a3 actionTarget:(id)a4 selector:(SEL)a5
{
  v7 = [UIUpdateLink updateLinkForView:a3];
  [v7 addActionWithTarget:a4 selector:a5];

  return v7;
}

@end
@interface UIUpdateActionPhase
+ (UIUpdateActionPhase)afterCADisplayLinkDispatch;
+ (UIUpdateActionPhase)afterCATransactionCommit;
+ (UIUpdateActionPhase)afterEventDispatch;
+ (UIUpdateActionPhase)afterLowLatencyCATransactionCommit;
+ (UIUpdateActionPhase)afterLowLatencyEventDispatch;
+ (UIUpdateActionPhase)afterUpdateComplete;
+ (UIUpdateActionPhase)afterUpdateScheduled;
+ (UIUpdateActionPhase)beforeCADisplayLinkDispatch;
+ (UIUpdateActionPhase)beforeCATransactionCommit;
+ (UIUpdateActionPhase)beforeEventDispatch;
+ (UIUpdateActionPhase)beforeLowLatencyCATransactionCommit;
+ (UIUpdateActionPhase)beforeLowLatencyEventDispatch;
@end

@implementation UIUpdateActionPhase

+ (UIUpdateActionPhase)afterCADisplayLinkDispatch
{
  if (qword_1ED4A21C0 != -1)
  {
    dispatch_once(&qword_1ED4A21C0, &__block_literal_global_8_17);
  }

  v3 = qword_1ED4A21C8;

  return v3;
}

void __49__UIUpdateActionPhase_afterCADisplayLinkDispatch__block_invoke()
{
  v0 = [UIUpdateActionPhase alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = UIUpdateActionPhase;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_order = 1;
      v0->_item = _UIUpdateSequenceCADisplayLinksItemInternal;
    }
  }

  v1 = qword_1ED4A21C8;
  qword_1ED4A21C8 = v0;
}

+ (UIUpdateActionPhase)afterUpdateScheduled
{
  if (_MergedGlobals_1321 != -1)
  {
    dispatch_once(&_MergedGlobals_1321, &__block_literal_global_589);
  }

  v3 = qword_1ED4A2188;

  return v3;
}

void __43__UIUpdateActionPhase_afterUpdateScheduled__block_invoke()
{
  v0 = [UIUpdateActionPhase alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = UIUpdateActionPhase;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_order = 1;
      v0->_item = &_UIUpdateSequenceScheduledItemInternal;
    }
  }

  v1 = qword_1ED4A2188;
  qword_1ED4A2188 = v0;
}

+ (UIUpdateActionPhase)beforeEventDispatch
{
  if (qword_1ED4A2190 != -1)
  {
    dispatch_once(&qword_1ED4A2190, &__block_literal_global_2_18);
  }

  v3 = qword_1ED4A2198;

  return v3;
}

void __42__UIUpdateActionPhase_beforeEventDispatch__block_invoke()
{
  v0 = [UIUpdateActionPhase alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = UIUpdateActionPhase;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_order = 0;
      v0->_item = &_UIUpdateSequenceBeginItemInternal;
    }
  }

  v1 = qword_1ED4A2198;
  qword_1ED4A2198 = v0;
}

+ (UIUpdateActionPhase)afterEventDispatch
{
  if (qword_1ED4A21A0 != -1)
  {
    dispatch_once(&qword_1ED4A21A0, &__block_literal_global_4_16);
  }

  v3 = qword_1ED4A21A8;

  return v3;
}

void __41__UIUpdateActionPhase_afterEventDispatch__block_invoke()
{
  v0 = [UIUpdateActionPhase alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = UIUpdateActionPhase;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_order = 1;
      v0->_item = &_UIUpdateSequenceBeginItemInternal;
    }
  }

  v1 = qword_1ED4A21A8;
  qword_1ED4A21A8 = v0;
}

+ (UIUpdateActionPhase)beforeCADisplayLinkDispatch
{
  if (qword_1ED4A21B0 != -1)
  {
    dispatch_once(&qword_1ED4A21B0, &__block_literal_global_6_17);
  }

  v3 = qword_1ED4A21B8;

  return v3;
}

void __50__UIUpdateActionPhase_beforeCADisplayLinkDispatch__block_invoke()
{
  v0 = [UIUpdateActionPhase alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = UIUpdateActionPhase;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_order = 0;
      v0->_item = _UIUpdateSequenceCADisplayLinksItemInternal;
    }
  }

  v1 = qword_1ED4A21B8;
  qword_1ED4A21B8 = v0;
}

+ (UIUpdateActionPhase)beforeCATransactionCommit
{
  if (qword_1ED4A21D0 != -1)
  {
    dispatch_once(&qword_1ED4A21D0, &__block_literal_global_10_11);
  }

  v3 = qword_1ED4A21D8;

  return v3;
}

void __48__UIUpdateActionPhase_beforeCATransactionCommit__block_invoke()
{
  v0 = [UIUpdateActionPhase alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = UIUpdateActionPhase;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_order = 0;
      v0->_item = &_UIUpdateSequenceCATransactionCommitItemInternal;
    }
  }

  v1 = qword_1ED4A21D8;
  qword_1ED4A21D8 = v0;
}

+ (UIUpdateActionPhase)afterCATransactionCommit
{
  if (qword_1ED4A21E0 != -1)
  {
    dispatch_once(&qword_1ED4A21E0, &__block_literal_global_12_9);
  }

  v3 = qword_1ED4A21E8;

  return v3;
}

void __47__UIUpdateActionPhase_afterCATransactionCommit__block_invoke()
{
  v0 = [UIUpdateActionPhase alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = UIUpdateActionPhase;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_order = 1;
      v0->_item = &_UIUpdateSequenceCATransactionCommitItemInternal;
    }
  }

  v1 = qword_1ED4A21E8;
  qword_1ED4A21E8 = v0;
}

+ (UIUpdateActionPhase)beforeLowLatencyEventDispatch
{
  if (qword_1ED4A21F0 != -1)
  {
    dispatch_once(&qword_1ED4A21F0, &__block_literal_global_14_5);
  }

  v3 = qword_1ED4A21F8;

  return v3;
}

void __52__UIUpdateActionPhase_beforeLowLatencyEventDispatch__block_invoke()
{
  v0 = [UIUpdateActionPhase alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = UIUpdateActionPhase;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_order = 0;
      v0->_item = &_UIUpdateSequenceLowLatencyHIDEventsItemInternal;
    }
  }

  v1 = qword_1ED4A21F8;
  qword_1ED4A21F8 = v0;
}

+ (UIUpdateActionPhase)afterLowLatencyEventDispatch
{
  if (qword_1ED4A2200 != -1)
  {
    dispatch_once(&qword_1ED4A2200, &__block_literal_global_16_6);
  }

  v3 = qword_1ED4A2208;

  return v3;
}

void __51__UIUpdateActionPhase_afterLowLatencyEventDispatch__block_invoke()
{
  v0 = [UIUpdateActionPhase alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = UIUpdateActionPhase;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_order = 1;
      v0->_item = &_UIUpdateSequenceLowLatencyHIDEventsItemInternal;
    }
  }

  v1 = qword_1ED4A2208;
  qword_1ED4A2208 = v0;
}

+ (UIUpdateActionPhase)beforeLowLatencyCATransactionCommit
{
  if (qword_1ED4A2210 != -1)
  {
    dispatch_once(&qword_1ED4A2210, &__block_literal_global_18_5);
  }

  v3 = qword_1ED4A2218;

  return v3;
}

void __58__UIUpdateActionPhase_beforeLowLatencyCATransactionCommit__block_invoke()
{
  v0 = [UIUpdateActionPhase alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = UIUpdateActionPhase;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_order = 0;
      v0->_item = &_UIUpdateSequenceLowLatencyCATransactionCommitItemInternal;
    }
  }

  v1 = qword_1ED4A2218;
  qword_1ED4A2218 = v0;
}

+ (UIUpdateActionPhase)afterLowLatencyCATransactionCommit
{
  if (qword_1ED4A2220 != -1)
  {
    dispatch_once(&qword_1ED4A2220, &__block_literal_global_20_8);
  }

  v3 = qword_1ED4A2228;

  return v3;
}

void __57__UIUpdateActionPhase_afterLowLatencyCATransactionCommit__block_invoke()
{
  v0 = [UIUpdateActionPhase alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = UIUpdateActionPhase;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_order = 1;
      v0->_item = &_UIUpdateSequenceLowLatencyCATransactionCommitItemInternal;
    }
  }

  v1 = qword_1ED4A2228;
  qword_1ED4A2228 = v0;
}

+ (UIUpdateActionPhase)afterUpdateComplete
{
  if (qword_1ED4A2230 != -1)
  {
    dispatch_once(&qword_1ED4A2230, &__block_literal_global_22_2);
  }

  v3 = qword_1ED4A2238;

  return v3;
}

void __42__UIUpdateActionPhase_afterUpdateComplete__block_invoke()
{
  v0 = [UIUpdateActionPhase alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = UIUpdateActionPhase;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_order = 1;
      v0->_item = &_UIUpdateSequenceDoneItemInternal;
    }
  }

  v1 = qword_1ED4A2238;
  qword_1ED4A2238 = v0;
}

@end
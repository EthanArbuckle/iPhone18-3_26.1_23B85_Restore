@interface _UIHomeAffordanceObservationRecord
- (NSString)debugDescription;
- (_UIHomeAffordanceObservationRecord)init;
- (id)initWithObserver:(void *)a3 window:(void *)a4 viewServiceSessionIdentifier:;
- (id)observer;
- (id)succinctDescription;
- (void)appendDescriptionToStream:(id)a3;
- (void)setLegacyViewServiceSessionIdentifier:(uint64_t)a1;
@end

@implementation _UIHomeAffordanceObservationRecord

- (id)observer
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 1);
    v1 = vars8;
  }

  return WeakRetained;
}

- (_UIHomeAffordanceObservationRecord)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:421 description:{@"%s: init is not allowed on %@", "-[_UIHomeAffordanceObservationRecord init]", objc_opt_class()}];

  return 0;
}

- (id)initWithObserver:(void *)a3 window:(void *)a4 viewServiceSessionIdentifier:
{
  if (!a1)
  {
    return 0;
  }

  v11.receiver = a1;
  v11.super_class = _UIHomeAffordanceObservationRecord;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  if (v7)
  {
    if (a2)
    {
      if (a3)
      {
LABEL_5:
        objc_storeWeak(v7 + 1, a2);
        objc_storeWeak(v7 + 2, a3);
        objc_storeStrong(v7 + 3, a4);
        return v7;
      }
    }

    else
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:sel_initWithObserver_window_viewServiceSessionIdentifier_ object:v7 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:430 description:{@"Invalid parameter not satisfying: %@", @"observer"}];

      if (a3)
      {
        goto LABEL_5;
      }
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:sel_initWithObserver_window_viewServiceSessionIdentifier_ object:v7 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:431 description:{@"Invalid parameter not satisfying: %@", @"window"}];

    goto LABEL_5;
  }

  return v7;
}

- (void)appendDescriptionToStream:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___UIHomeAffordanceObservationRecord_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = a3;
  v6[5] = self;
  [a3 appendProem:self block:v6];
  if ([a3 hasDebugStyle])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64___UIHomeAffordanceObservationRecord_appendDescriptionToStream___block_invoke_2;
    v5[3] = &unk_1E70F35B8;
    v5[4] = a3;
    v5[5] = self;
    [a3 appendBodySectionWithName:0 block:v5];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)setLegacyViewServiceSessionIdentifier:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

@end
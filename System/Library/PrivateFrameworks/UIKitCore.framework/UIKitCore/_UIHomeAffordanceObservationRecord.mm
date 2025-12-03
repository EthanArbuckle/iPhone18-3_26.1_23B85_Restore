@interface _UIHomeAffordanceObservationRecord
- (NSString)debugDescription;
- (_UIHomeAffordanceObservationRecord)init;
- (id)initWithObserver:(void *)observer window:(void *)window viewServiceSessionIdentifier:;
- (id)observer;
- (id)succinctDescription;
- (void)appendDescriptionToStream:(id)stream;
- (void)setLegacyViewServiceSessionIdentifier:(uint64_t)identifier;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:421 description:{@"%s: init is not allowed on %@", "-[_UIHomeAffordanceObservationRecord init]", objc_opt_class()}];

  return 0;
}

- (id)initWithObserver:(void *)observer window:(void *)window viewServiceSessionIdentifier:
{
  if (!self)
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = _UIHomeAffordanceObservationRecord;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  if (v7)
  {
    if (a2)
    {
      if (observer)
      {
LABEL_5:
        objc_storeWeak(v7 + 1, a2);
        objc_storeWeak(v7 + 2, observer);
        objc_storeStrong(v7 + 3, window);
        return v7;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithObserver_window_viewServiceSessionIdentifier_ object:v7 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:430 description:{@"Invalid parameter not satisfying: %@", @"observer"}];

      if (observer)
      {
        goto LABEL_5;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel_initWithObserver_window_viewServiceSessionIdentifier_ object:v7 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:431 description:{@"Invalid parameter not satisfying: %@", @"window"}];

    goto LABEL_5;
  }

  return v7;
}

- (void)appendDescriptionToStream:(id)stream
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___UIHomeAffordanceObservationRecord_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = stream;
  v6[5] = self;
  [stream appendProem:self block:v6];
  if ([stream hasDebugStyle])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64___UIHomeAffordanceObservationRecord_appendDescriptionToStream___block_invoke_2;
    v5[3] = &unk_1E70F35B8;
    v5[4] = stream;
    v5[5] = self;
    [stream appendBodySectionWithName:0 block:v5];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

- (void)setLegacyViewServiceSessionIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    objc_storeStrong((identifier + 24), a2);
  }
}

@end
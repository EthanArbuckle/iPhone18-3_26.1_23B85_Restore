@interface _UISceneMaskingClientComponent
- (id)performWhileMasked:(id)masked reason:(int64_t)reason;
@end

@implementation _UISceneMaskingClientComponent

- (id)performWhileMasked:(id)masked reason:(int64_t)reason
{
  maskedCopy = masked;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60___UISceneMaskingClientComponent_performWhileMasked_reason___block_invoke;
  v19[3] = &unk_1E710DB08;
  v20 = maskedCopy;
  v7 = maskedCopy;
  v8 = [_UISceneMaskingAction actionForBeginMaskingWithReason:reason continuation:v19];
  scene = [(FBSSceneComponent *)self scene];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [scene sendPrivateActions:v10];

  ++_UISceneMaskingNewInvalidatableIdentifier_invalidationTokenIndex;
  v11 = MEMORY[0x1E696AEC0];
  selfCopy = self;
  v13 = objc_opt_class();
  _UISceneMaskingNewInvalidatableIdentifier_invalidationTokenIndex = [v11 stringWithFormat:@"%s-%p-%lu", class_getName(v13), selfCopy, _UISceneMaskingNewInvalidatableIdentifier_invalidationTokenIndex];

  v15 = [_UIDeallocInvalidatable alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60___UISceneMaskingClientComponent_performWhileMasked_reason___block_invoke_3;
  v18[3] = &unk_1E710DB30;
  v18[4] = selfCopy;
  v16 = [(_UIDeallocInvalidatable *)v15 initWithIdentifier:_UISceneMaskingNewInvalidatableIdentifier_invalidationTokenIndex faultForDeallocInvalidation:1 invalidationBlock:v18];

  return v16;
}

@end
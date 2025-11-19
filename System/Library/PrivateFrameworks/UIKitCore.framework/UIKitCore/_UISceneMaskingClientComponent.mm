@interface _UISceneMaskingClientComponent
- (id)performWhileMasked:(id)a3 reason:(int64_t)a4;
@end

@implementation _UISceneMaskingClientComponent

- (id)performWhileMasked:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60___UISceneMaskingClientComponent_performWhileMasked_reason___block_invoke;
  v19[3] = &unk_1E710DB08;
  v20 = v6;
  v7 = v6;
  v8 = [_UISceneMaskingAction actionForBeginMaskingWithReason:a4 continuation:v19];
  v9 = [(FBSSceneComponent *)self scene];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [v9 sendPrivateActions:v10];

  ++_UISceneMaskingNewInvalidatableIdentifier_invalidationTokenIndex;
  v11 = MEMORY[0x1E696AEC0];
  v12 = self;
  v13 = objc_opt_class();
  v14 = [v11 stringWithFormat:@"%s-%p-%lu", class_getName(v13), v12, _UISceneMaskingNewInvalidatableIdentifier_invalidationTokenIndex];

  v15 = [_UIDeallocInvalidatable alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60___UISceneMaskingClientComponent_performWhileMasked_reason___block_invoke_3;
  v18[3] = &unk_1E710DB30;
  v18[4] = v12;
  v16 = [(_UIDeallocInvalidatable *)v15 initWithIdentifier:v14 faultForDeallocInvalidation:1 invalidationBlock:v18];

  return v16;
}

@end
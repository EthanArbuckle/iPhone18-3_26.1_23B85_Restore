@interface _UIPhysicalButtonBSAction
+ (id)actionFromBuilder:(id)a3;
- (BOOL)settings:(id)a3 appendDescriptionToBuilder:(id)a4 forFlag:(int64_t)a5 object:(id)a6 ofSetting:(unint64_t)a7;
- (_UIPhysicalButtonBSAction)initWithPhysicalButton:(unint64_t)a3 behavior:(unint64_t)a4 state:(unint64_t)a5 generation:(unint64_t)a6 completion:(id)a7;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)behavior;
- (unint64_t)button;
- (unint64_t)generation;
- (unint64_t)source;
- (unint64_t)state;
@end

@implementation _UIPhysicalButtonBSAction

+ (id)actionFromBuilder:(id)a3
{
  if (!a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"_UIPhysicalButtonBSAction.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"builder"}];
  }

  v6 = objc_opt_new();
  (*(a3 + 2))(a3, v6);
  v7 = [v6 button];
  v8 = [v6 behavior];
  if ((_UIPhysicalButtonBehaviorIsValidForButton(v8, v7) & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"_UIPhysicalButtonBSAction.m" lineNumber:56 description:{@"Invalid behavior: %lu; for button: %lu", v8, v7}];
  }

  v9 = [v6 generation];
  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"_UIPhysicalButtonBSAction.m" lineNumber:59 description:{@"Generation must be greater than zero: %llu", 0}];
  }

  v10 = _UIPhysicalButtonBSActionSettings(v7, [v6 source], v8, objc_msgSend(v6, "state"), v9);
  v11 = [v6 completionHandler];

  if (v11)
  {
    v12 = MEMORY[0x1E698E5F8];
    v13 = [v6 completionHandler];
    v11 = [v12 responderWithHandler:v13];

    [v11 setQueue:MEMORY[0x1E69E96A0]];
  }

  v14 = [[_UIPhysicalButtonBSAction alloc] initWithInfo:v10 responder:v11];

  return v14;
}

- (_UIPhysicalButtonBSAction)initWithPhysicalButton:(unint64_t)a3 behavior:(unint64_t)a4 state:(unint64_t)a5 generation:(unint64_t)a6 completion:(id)a7
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89___UIPhysicalButtonBSAction_initWithPhysicalButton_behavior_state_generation_completion___block_invoke;
  v10[3] = &unk_1E7126C48;
  v10[6] = a4;
  v10[7] = a5;
  v10[8] = a6;
  v10[4] = a7;
  v10[5] = a3;
  v8 = [_UIPhysicalButtonBSAction actionFromBuilder:v10];

  return v8;
}

- (unint64_t)button
{
  v2 = [(_UIPhysicalButtonBSAction *)self info];
  v3 = [v2 objectForSetting:0];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)source
{
  v2 = [(_UIPhysicalButtonBSAction *)self info];
  v3 = [v2 objectForSetting:4];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)behavior
{
  v2 = [(_UIPhysicalButtonBSAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)state
{
  v2 = [(_UIPhysicalButtonBSAction *)self info];
  v3 = [v2 objectForSetting:3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)generation
{
  v2 = [(_UIPhysicalButtonBSAction *)self info];
  v3 = [v2 objectForSetting:2];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(_UIPhysicalButtonBSAction *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v15 = _NSStringFromUIPhysicalButtonActionSetting(0);
  v4 = _NSStringFromUIPhysicalButton([(_UIPhysicalButtonBSAction *)self button]);
  [v3 appendString:v4 withName:v15];
  v5 = _NSStringFromUIPhysicalButtonActionSetting(4uLL);
  v6 = _NSStringFromUIPhysicalButtonSource([(_UIPhysicalButtonBSAction *)self source]);
  [v3 appendString:v6 withName:v5];
  v7 = _NSStringFromUIPhysicalButtonActionSetting(1uLL);
  v8 = _NSStringFromUIPhysicalButtonBehavior([(_UIPhysicalButtonBSAction *)self behavior]);
  [v3 appendString:v8 withName:v7];
  v9 = _NSStringFromUIPhysicalButtonActionSetting(3uLL);
  v10 = _NSStringFromUIPhysicalButtonState([(_UIPhysicalButtonBSAction *)self state]);
  [v3 appendString:v10 withName:v9];
  v11 = [(_UIPhysicalButtonBSAction *)self generation];
  v12 = _NSStringFromUIPhysicalButtonActionSetting(2uLL);
  v13 = [v3 appendUInt64:v11 withName:v12];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIPhysicalButtonBSAction *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIPhysicalButtonBSAction *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67___UIPhysicalButtonBSAction_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  v12 = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

- (BOOL)settings:(id)a3 appendDescriptionToBuilder:(id)a4 forFlag:(int64_t)a5 object:(id)a6 ofSetting:(unint64_t)a7
{
  v10 = _NSStringFromUIPhysicalButtonActionSetting(a7);
  v11 = 0;
  if (a7 <= 1)
  {
    if (!a7)
    {
      v12 = _NSStringFromUIPhysicalButton([a6 unsignedIntegerValue]);
      goto LABEL_12;
    }

    if (a7 == 1)
    {
      v12 = _NSStringFromUIPhysicalButtonBehavior([a6 unsignedIntegerValue]);
      goto LABEL_12;
    }
  }

  else
  {
    switch(a7)
    {
      case 2uLL:
        v13 = [a4 appendUInt64:objc_msgSend(a6 withName:{"longLongValue"), v10}];
LABEL_13:
        v11 = 1;
        break;
      case 3uLL:
        v12 = _NSStringFromUIPhysicalButtonState([a6 unsignedIntegerValue]);
        goto LABEL_12;
      case 4uLL:
        v12 = _NSStringFromUIPhysicalButtonSource([a6 unsignedIntegerValue]);
LABEL_12:
        v14 = v12;
        [a4 appendString:v12 withName:v10];

        goto LABEL_13;
    }
  }

  return v11;
}

@end
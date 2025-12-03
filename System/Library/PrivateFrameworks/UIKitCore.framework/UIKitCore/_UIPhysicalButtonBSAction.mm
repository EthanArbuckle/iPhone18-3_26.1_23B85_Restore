@interface _UIPhysicalButtonBSAction
+ (id)actionFromBuilder:(id)builder;
- (BOOL)settings:(id)settings appendDescriptionToBuilder:(id)builder forFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (_UIPhysicalButtonBSAction)initWithPhysicalButton:(unint64_t)button behavior:(unint64_t)behavior state:(unint64_t)state generation:(unint64_t)generation completion:(id)completion;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)behavior;
- (unint64_t)button;
- (unint64_t)generation;
- (unint64_t)source;
- (unint64_t)state;
@end

@implementation _UIPhysicalButtonBSAction

+ (id)actionFromBuilder:(id)builder
{
  if (!builder)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonBSAction.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"builder"}];
  }

  v6 = objc_opt_new();
  (*(builder + 2))(builder, v6);
  button = [v6 button];
  behavior = [v6 behavior];
  if ((_UIPhysicalButtonBehaviorIsValidForButton(behavior, button) & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonBSAction.m" lineNumber:56 description:{@"Invalid behavior: %lu; for button: %lu", behavior, button}];
  }

  generation = [v6 generation];
  if (!generation)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonBSAction.m" lineNumber:59 description:{@"Generation must be greater than zero: %llu", 0}];
  }

  v10 = _UIPhysicalButtonBSActionSettings(button, [v6 source], behavior, objc_msgSend(v6, "state"), generation);
  completionHandler = [v6 completionHandler];

  if (completionHandler)
  {
    v12 = MEMORY[0x1E698E5F8];
    completionHandler2 = [v6 completionHandler];
    completionHandler = [v12 responderWithHandler:completionHandler2];

    [completionHandler setQueue:MEMORY[0x1E69E96A0]];
  }

  v14 = [[_UIPhysicalButtonBSAction alloc] initWithInfo:v10 responder:completionHandler];

  return v14;
}

- (_UIPhysicalButtonBSAction)initWithPhysicalButton:(unint64_t)button behavior:(unint64_t)behavior state:(unint64_t)state generation:(unint64_t)generation completion:(id)completion
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89___UIPhysicalButtonBSAction_initWithPhysicalButton_behavior_state_generation_completion___block_invoke;
  v10[3] = &unk_1E7126C48;
  v10[6] = behavior;
  v10[7] = state;
  v10[8] = generation;
  v10[4] = completion;
  v10[5] = button;
  v8 = [_UIPhysicalButtonBSAction actionFromBuilder:v10];

  return v8;
}

- (unint64_t)button
{
  info = [(_UIPhysicalButtonBSAction *)self info];
  v3 = [info objectForSetting:0];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)source
{
  info = [(_UIPhysicalButtonBSAction *)self info];
  v3 = [info objectForSetting:4];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)behavior
{
  info = [(_UIPhysicalButtonBSAction *)self info];
  v3 = [info objectForSetting:1];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)state
{
  info = [(_UIPhysicalButtonBSAction *)self info];
  v3 = [info objectForSetting:3];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)generation
{
  info = [(_UIPhysicalButtonBSAction *)self info];
  v3 = [info objectForSetting:2];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIPhysicalButtonBSAction *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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
  generation = [(_UIPhysicalButtonBSAction *)self generation];
  v12 = _NSStringFromUIPhysicalButtonActionSetting(2uLL);
  v13 = [v3 appendUInt64:generation withName:v12];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonBSAction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonBSAction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67___UIPhysicalButtonBSAction_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  selfCopy = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

- (BOOL)settings:(id)settings appendDescriptionToBuilder:(id)builder forFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  v10 = _NSStringFromUIPhysicalButtonActionSetting(setting);
  v11 = 0;
  if (setting <= 1)
  {
    if (!setting)
    {
      v12 = _NSStringFromUIPhysicalButton([object unsignedIntegerValue]);
      goto LABEL_12;
    }

    if (setting == 1)
    {
      v12 = _NSStringFromUIPhysicalButtonBehavior([object unsignedIntegerValue]);
      goto LABEL_12;
    }
  }

  else
  {
    switch(setting)
    {
      case 2uLL:
        v13 = [builder appendUInt64:objc_msgSend(object withName:{"longLongValue"), v10}];
LABEL_13:
        v11 = 1;
        break;
      case 3uLL:
        v12 = _NSStringFromUIPhysicalButtonState([object unsignedIntegerValue]);
        goto LABEL_12;
      case 4uLL:
        v12 = _NSStringFromUIPhysicalButtonSource([object unsignedIntegerValue]);
LABEL_12:
        v14 = v12;
        [builder appendString:v12 withName:v10];

        goto LABEL_13;
    }
  }

  return v11;
}

@end
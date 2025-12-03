@interface _UIPhysicalButtonContact
- (CGPoint)position;
- (CGPoint)positionDelta;
- (NSString)debugDescription;
- (NSString)description;
- (_UIPhysicalButtonContact)init;
- (id)_init;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_appendProemDescriptionSansSelfToFormatter:(uint64_t)result;
- (void)_appendDebugBodyDescriptionToFormatter:(uint64_t)formatter;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation _UIPhysicalButtonContact

- (_UIPhysicalButtonContact)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonContact.m" lineNumber:29 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonContact init]", objc_opt_class()}];

  return 0;
}

- (id)_init
{
  if (result)
  {
    v1.receiver = result;
    v1.super_class = _UIPhysicalButtonContact;
    return objc_msgSendSuper2(&v1, sel_init);
  }

  return result;
}

- (uint64_t)_appendProemDescriptionSansSelfToFormatter:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [a2 appendBool:*(result + 8) withName:@"isTouching"];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71___UIPhysicalButtonContact__appendProemDescriptionSansSelfToFormatter___block_invoke;
    v6[3] = &unk_1E70FA340;
    v6[4] = v3;
    [a2 appendCustomFormatWithName:@"position" block:v6];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __71___UIPhysicalButtonContact__appendProemDescriptionSansSelfToFormatter___block_invoke_2;
    v5[3] = &unk_1E70FA340;
    v5[4] = v3;
    return [a2 appendCustomFormatWithName:@"positionDelta" block:v5];
  }

  return result;
}

- (void)_appendDebugBodyDescriptionToFormatter:(uint64_t)formatter
{
  if (formatter)
  {
    v4 = [a2 appendBool:*(formatter + 8) withName:@"isTouching"];
    v5 = [a2 appendFloat:@"touchMajorRadius" withName:1 decimalPrecision:*(formatter + 16)];
    v6 = [a2 appendFloat:@"touchMinorRadius" withName:1 decimalPrecision:*(formatter + 24)];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67___UIPhysicalButtonContact__appendDebugBodyDescriptionToFormatter___block_invoke;
    v10[3] = &unk_1E70FA340;
    v10[4] = formatter;
    [a2 appendCustomFormatWithName:@"position" block:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67___UIPhysicalButtonContact__appendDebugBodyDescriptionToFormatter___block_invoke_2;
    v9[3] = &unk_1E70FA340;
    v9[4] = formatter;
    [a2 appendCustomFormatWithName:@"positionDelta" block:v9];
    v7 = _NSStringFromUITouchSenstiveButtonPositionHint(*(formatter + 32));
    v8 = [a2 appendObject:v7 withName:@"touchPositionHints"];
  }
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57___UIPhysicalButtonContact_appendDescriptionToFormatter___block_invoke;
  v3[3] = &unk_1E70F35B8;
  v3[4] = self;
  v3[5] = formatter;
  [formatter appendProem:self block:v3];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIPhysicalButtonContact *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(_UIPhysicalButtonContact *)self _appendProemDescriptionSansSelfToFormatter:v3];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonContact *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonContact *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66___UIPhysicalButtonContact_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  selfCopy = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

- (NSString)description
{
  v3 = objc_opt_new();
  [(_UIPhysicalButtonContact *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (NSString)debugDescription
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self)
  {
    [v3 appendProem:self block:&__block_literal_global_243];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60___UIPhysicalButtonContact__appendDebugDescriptionToStream___block_invoke_2;
    v7[3] = &unk_1E70F35B8;
    v7[4] = self;
    v7[5] = v4;
    [v4 appendBodySectionWithName:0 block:v7];
  }

  v5 = [v4 description];

  return v5;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)positionDelta
{
  x = self->_positionDelta.x;
  y = self->_positionDelta.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
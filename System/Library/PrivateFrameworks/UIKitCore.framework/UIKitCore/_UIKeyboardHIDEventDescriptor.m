@interface _UIKeyboardHIDEventDescriptor
+ (id)descriptorWithEvent:(__IOHIDEvent *)a3;
- (BOOL)isEqual:(id)a3;
- (_UIKeyboardHIDEventDescriptor)init;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation _UIKeyboardHIDEventDescriptor

+ (id)descriptorWithEvent:(__IOHIDEvent *)a3
{
  Type = IOHIDEventGetType();
  if (a3 && Type == 3)
  {
    SenderID = IOHIDEventGetSenderID();
    IntegerValue = IOHIDEventGetIntegerValue();
    v9 = IOHIDEventGetIntegerValue();
    v10 = [_UIKeyboardHIDEventDescriptor alloc];
    if (v10)
    {
      v13.receiver = v10;
      v13.super_class = _UIKeyboardHIDEventDescriptor;
      v10 = objc_msgSendSuper2(&v13, sel_initWithSenderID_eventType_, SenderID, 3);
      if (v10)
      {
        v10->_usagePage = IntegerValue;
        v10->_usage = v9;
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"_UIKeyboardHIDEventDescriptor.m" lineNumber:25 description:{@"Invalid event for %@: %@", a1, a3}];

    v10 = 0;
  }

  return v10;
}

- (_UIKeyboardHIDEventDescriptor)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIKeyboardHIDEventDescriptor.m" lineNumber:36 description:{@"%s: init is not allowed on %@", "-[_UIKeyboardHIDEventDescriptor init]", objc_opt_class()}];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIKeyboardHIDEventDescriptor;
  v5 = [(_UIHIDEventSenderDescriptor *)&v7 isEqual:?];
  if (v5)
  {
    LOBYTE(v5) = self->_usagePage == *(a3 + 3) && self->_usage == *(a3 + 4);
  }

  return v5;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = _UIKeyboardHIDEventDescriptor;
  v3 = [(_UIHIDEventSenderDescriptor *)&v10 hash];
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_usagePage];
  v5 = [v4 hash] ^ v3;

  v6 = [MEMORY[0x1E696AD98] numberWithLong:self->_usage];
  v7 = v5 ^ [v6 hash];

  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  return v8 ^ (v8 >> 31);
}

- (id)succinctDescription
{
  v2 = [(_UIKeyboardHIDEventDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(_UIKeyboardHIDEventDescriptor *)self appendDescriptionToFormatter:v3];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIKeyboardHIDEventDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62___UIKeyboardHIDEventDescriptor_appendDescriptionToFormatter___block_invoke;
  v3[3] = &unk_1E70F35B8;
  v3[4] = a3;
  v3[5] = self;
  [a3 appendProem:self block:v3];
}

@end
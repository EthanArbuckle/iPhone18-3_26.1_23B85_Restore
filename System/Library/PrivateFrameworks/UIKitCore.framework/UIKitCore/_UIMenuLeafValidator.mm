@interface _UIMenuLeafValidator
- (_UIValidatableCommand)validatedCommand;
- (id)validatedCommandForTarget:(id)a3 command:(id)a4 sender:(id)a5;
@end

@implementation _UIMenuLeafValidator

- (_UIValidatableCommand)validatedCommand
{
  validatedCommand = self->_validatedCommand;
  if (!validatedCommand)
  {
    v4 = objc_alloc_init(_UIValidatableCommand);
    v5 = self->_validatedCommand;
    self->_validatedCommand = v4;

    validatedCommand = self->_validatedCommand;
  }

  return validatedCommand;
}

- (id)validatedCommandForTarget:(id)a3 command:(id)a4 sender:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(_UIMenuLeafValidator *)self validatedCommand];
      [v11 useCommand:v9 alternate:0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65___UIMenuLeafValidator_validatedCommandForTarget_command_sender___block_invoke;
      v16[3] = &unk_1E70F35B8;
      v17 = v8;
      v12 = v11;
      v18 = v12;
      [v12 _performWithSender:v10 handler:v16];
      v13 = v18;
      v14 = v12;
    }

    else
    {
      v14 = v9;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end
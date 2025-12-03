@interface _UIMenuLeafValidator
- (_UIValidatableCommand)validatedCommand;
- (id)validatedCommandForTarget:(id)target command:(id)command sender:(id)sender;
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

- (id)validatedCommandForTarget:(id)target command:(id)command sender:(id)sender
{
  targetCopy = target;
  commandCopy = command;
  senderCopy = sender;
  if (targetCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      validatedCommand = [(_UIMenuLeafValidator *)self validatedCommand];
      [validatedCommand useCommand:commandCopy alternate:0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65___UIMenuLeafValidator_validatedCommandForTarget_command_sender___block_invoke;
      v16[3] = &unk_1E70F35B8;
      v17 = targetCopy;
      v12 = validatedCommand;
      v18 = v12;
      [v12 _performWithSender:senderCopy handler:v16];
      v13 = v18;
      v14 = v12;
    }

    else
    {
      v14 = commandCopy;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end
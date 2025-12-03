@interface _UIValidatableCommand
- (SEL)action;
- (_UIValidatableCommand)init;
- (id)alternates;
- (void)useCommand:(id)command alternate:(id)alternate;
@end

@implementation _UIValidatableCommand

- (SEL)action
{
  result = self->_alternate;
  if (result)
  {
    return [result action];
  }

  result = self->_command;
  if (result)
  {
    return [result action];
  }

  return result;
}

- (id)alternates
{
  if (self->_alternate || (command = self->_command) == 0)
  {
    alternates = MEMORY[0x1E695E0F0];
  }

  else
  {
    alternates = [(UICommand *)command alternates];
  }

  return alternates;
}

- (_UIValidatableCommand)init
{
  v3.receiver = self;
  v3.super_class = _UIValidatableCommand;
  return [(UICommand *)&v3 initWithTitle:&stru_1EFB14550 image:0 imageName:0 action:sel__nop_ propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:0 state:0];
}

- (void)useCommand:(id)command alternate:(id)alternate
{
  commandCopy = command;
  alternateCopy = alternate;
  objc_storeStrong(&self->_command, command);
  objc_storeStrong(&self->_alternate, alternate);
  _UIMenuLeafCopyValidatablePropertiesFromValidatedLeaf(self, commandCopy);
  if (alternateCopy)
  {
    title = [alternateCopy title];
    [(UICommand *)self setTitle:title];

    [(UIMenuElement *)self setAttributedTitle:0];
  }
}

@end
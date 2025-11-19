@interface _UIValidatableCommand
- (SEL)action;
- (_UIValidatableCommand)init;
- (id)alternates;
- (void)useCommand:(id)a3 alternate:(id)a4;
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
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [(UICommand *)command alternates];
  }

  return v4;
}

- (_UIValidatableCommand)init
{
  v3.receiver = self;
  v3.super_class = _UIValidatableCommand;
  return [(UICommand *)&v3 initWithTitle:&stru_1EFB14550 image:0 imageName:0 action:sel__nop_ propertyList:0 leafOrCommandAlternates:MEMORY[0x1E695E0F0] discoverabilityTitle:0 attributes:0 state:0];
}

- (void)useCommand:(id)a3 alternate:(id)a4
{
  v9 = a3;
  v7 = a4;
  objc_storeStrong(&self->_command, a3);
  objc_storeStrong(&self->_alternate, a4);
  _UIMenuLeafCopyValidatablePropertiesFromValidatedLeaf(self, v9);
  if (v7)
  {
    v8 = [v7 title];
    [(UICommand *)self setTitle:v8];

    [(UIMenuElement *)self setAttributedTitle:0];
  }
}

@end
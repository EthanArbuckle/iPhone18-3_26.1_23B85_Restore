@interface UIUserInterfaceStyleArbiterTransition
- (id)description;
@end

@implementation UIUserInterfaceStyleArbiterTransition

- (id)description
{
  type = [(UIUserInterfaceStyleArbiterTransition *)self type];
  if (type == 2)
  {
    v4 = @"Sunset";
  }

  else if (type == 1)
  {
    v4 = @"Sunrise";
  }

  else if (type)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Time: %02ld:%02ld", -[UIUserInterfaceStyleArbiterTransition hour](self, "hour"), -[UIUserInterfaceStyleArbiterTransition minute](self, "minute")];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p: %@>", objc_opt_class(), self, v4];

  return v5;
}

@end
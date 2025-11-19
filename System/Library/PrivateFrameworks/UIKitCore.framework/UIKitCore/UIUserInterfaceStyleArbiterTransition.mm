@interface UIUserInterfaceStyleArbiterTransition
- (id)description;
@end

@implementation UIUserInterfaceStyleArbiterTransition

- (id)description
{
  v3 = [(UIUserInterfaceStyleArbiterTransition *)self type];
  if (v3 == 2)
  {
    v4 = @"Sunset";
  }

  else if (v3 == 1)
  {
    v4 = @"Sunrise";
  }

  else if (v3)
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
@interface SXEmailActionFactory
- (id)actionForAddition:(id)a3;
- (id)actionForURL:(id)a3;
@end

@implementation SXEmailActionFactory

- (id)actionForAddition:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [SXEmailAction alloc];
    v5 = [v3 to];
    v6 = [v3 subject];
    v7 = [(SXEmailAction *)v4 initWithRecipient:v5 subject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)actionForURL:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:0];
    v4 = [v3 queryValueForName:@"recipient"];
    v5 = [v3 queryValueForName:@"subject"];
    v6 = [[SXEmailAction alloc] initWithRecipient:v4 subject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
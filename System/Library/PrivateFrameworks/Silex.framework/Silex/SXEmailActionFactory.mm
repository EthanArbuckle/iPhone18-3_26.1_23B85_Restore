@interface SXEmailActionFactory
- (id)actionForAddition:(id)addition;
- (id)actionForURL:(id)l;
@end

@implementation SXEmailActionFactory

- (id)actionForAddition:(id)addition
{
  additionCopy = addition;
  if (additionCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [SXEmailAction alloc];
    v5 = [additionCopy to];
    subject = [additionCopy subject];
    v7 = [(SXEmailAction *)v4 initWithRecipient:v5 subject:subject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)actionForURL:(id)l
{
  if (l)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
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
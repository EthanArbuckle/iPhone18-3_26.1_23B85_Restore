@interface SXCloseActionFactory
- (id)actionForURL:(id)l;
@end

@implementation SXCloseActionFactory

- (id)actionForURL:(id)l
{
  v3 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
  scheme = [v3 scheme];
  if ([scheme isEqualToString:@"action"])
  {
    host = [v3 host];
    v6 = [host isEqualToString:@"close"];

    if (v6)
    {
      v7 = objc_alloc_init(SXCloseAction);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end
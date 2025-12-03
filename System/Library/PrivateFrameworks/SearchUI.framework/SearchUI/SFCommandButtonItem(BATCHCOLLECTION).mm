@interface SFCommandButtonItem(BATCHCOLLECTION)
- (id)_searchUI_requestAppClipCommand;
@end

@implementation SFCommandButtonItem(BATCHCOLLECTION)

- (id)_searchUI_requestAppClipCommand
{
  command = [self command];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    command2 = [self command];
  }

  else
  {
    command2 = 0;
  }

  return command2;
}

@end
@interface WFDialogResponseContext(LNResponseContext)
- (id)linkResponseContext;
@end

@implementation WFDialogResponseContext(LNResponseContext)

- (id)linkResponseContext
{
  turnIdentifier = [self turnIdentifier];

  if (turnIdentifier)
  {
    turnIdentifier = objc_alloc_init(MEMORY[0x1E69ACFF8]);
    turnIdentifier2 = [self turnIdentifier];
    [turnIdentifier setIdentifier:turnIdentifier2];
  }

  return turnIdentifier;
}

@end
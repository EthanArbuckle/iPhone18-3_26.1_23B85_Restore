@interface WFDialogResponseContext(LNResponseContext)
- (id)linkResponseContext;
@end

@implementation WFDialogResponseContext(LNResponseContext)

- (id)linkResponseContext
{
  v2 = [a1 turnIdentifier];

  if (v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69ACFF8]);
    v3 = [a1 turnIdentifier];
    [v2 setIdentifier:v3];
  }

  return v2;
}

@end
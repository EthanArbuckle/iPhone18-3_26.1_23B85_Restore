@interface PXGView(PXFeed)
- (id)feedHitTestResultAtPoint:()PXFeed ignoringOverlayContent:;
- (id)feedHitTestResultsInRect:()PXFeed;
- (id)handleTouchAtPoint:()PXFeed;
- (uint64_t)handlePrimaryInteractionAtPoint:()PXFeed;
@end

@implementation PXGView(PXFeed)

- (id)handleTouchAtPoint:()PXFeed
{
  v6 = [self feedHitTestResultAtPoint:?];
  touchAction = [v6 touchAction];
  if (touchAction)
  {
    layout = [v6 layout];
    v9 = layout;
    if (layout)
    {
      rootLayout = layout;
    }

    else
    {
      rootLayout = [self rootLayout];
    }

    v12 = rootLayout;

    [self convertPoint:v12 toLayout:{a2, a3}];
    v11 = (touchAction)[2](touchAction, v12);
  }

  else
  {
    v11 = 0;
  }

  v13 = _Block_copy(v11);

  return v13;
}

- (uint64_t)handlePrimaryInteractionAtPoint:()PXFeed
{
  v1 = [self feedHitTestResultAtPoint:?];
  primaryAction = [v1 primaryAction];
  v3 = primaryAction;
  if (primaryAction)
  {
    v4 = (*(primaryAction + 16))(primaryAction);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)feedHitTestResultsInRect:()PXFeed
{
  v1 = [self hitTestResultsInRect:0 passingTest:?];
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_48];
  v3 = [v1 filteredArrayUsingPredicate:v2];

  return v3;
}

- (id)feedHitTestResultAtPoint:()PXFeed ignoringOverlayContent:
{
  if (a5)
  {
    [self hitTestResultAtPoint:&__block_literal_global_28961 padding:a2 passingTest:{a3, *off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
  }

  else
  {
    [self hitTestResultAtPoint:?];
  }
  v5 = ;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
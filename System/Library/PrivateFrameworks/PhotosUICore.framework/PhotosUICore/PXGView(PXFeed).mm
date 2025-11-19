@interface PXGView(PXFeed)
- (id)feedHitTestResultAtPoint:()PXFeed ignoringOverlayContent:;
- (id)feedHitTestResultsInRect:()PXFeed;
- (id)handleTouchAtPoint:()PXFeed;
- (uint64_t)handlePrimaryInteractionAtPoint:()PXFeed;
@end

@implementation PXGView(PXFeed)

- (id)handleTouchAtPoint:()PXFeed
{
  v6 = [a1 feedHitTestResultAtPoint:?];
  v7 = [v6 touchAction];
  if (v7)
  {
    v8 = [v6 layout];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [a1 rootLayout];
    }

    v12 = v10;

    [a1 convertPoint:v12 toLayout:{a2, a3}];
    v11 = (v7)[2](v7, v12);
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
  v1 = [a1 feedHitTestResultAtPoint:?];
  v2 = [v1 primaryAction];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)feedHitTestResultsInRect:()PXFeed
{
  v1 = [a1 hitTestResultsInRect:0 passingTest:?];
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_48];
  v3 = [v1 filteredArrayUsingPredicate:v2];

  return v3;
}

- (id)feedHitTestResultAtPoint:()PXFeed ignoringOverlayContent:
{
  if (a5)
  {
    [a1 hitTestResultAtPoint:&__block_literal_global_28961 padding:a2 passingTest:{a3, *off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
  }

  else
  {
    [a1 hitTestResultAtPoint:?];
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
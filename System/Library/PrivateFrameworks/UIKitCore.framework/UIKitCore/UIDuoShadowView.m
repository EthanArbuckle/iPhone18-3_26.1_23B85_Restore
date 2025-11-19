@interface UIDuoShadowView
@end

@implementation UIDuoShadowView

uint64_t __39___UIDuoShadowView_setSecondaryShadow___block_invoke(uint64_t a1)
{
  v2 = [UIView alloc];
  [*(a1 + 32) bounds];
  v3 = [(UIView *)v2 initWithFrame:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 408);
  *(v4 + 408) = v3;

  v6 = [*(*(a1 + 32) + 408) layer];
  [v6 setShadowPathIsBounds:1];

  v7 = [*(*(a1 + 32) + 408) layer];
  [v7 setPunchoutShadow:1];

  v8 = [*(a1 + 32) layer];
  v9 = v8;
  if (v8)
  {
    [v8 cornerRadii];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
  }

  v10 = [*(*(a1 + 32) + 408) layer];
  v12[0] = v13;
  v12[1] = v14;
  v12[2] = v15;
  v12[3] = v16;
  [v10 setCornerRadii:v12];

  return [*(a1 + 32) addSubview:*(*(a1 + 32) + 408)];
}

@end
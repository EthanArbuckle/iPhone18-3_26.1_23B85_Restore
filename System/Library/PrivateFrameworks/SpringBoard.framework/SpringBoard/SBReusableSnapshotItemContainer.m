@interface SBReusableSnapshotItemContainer
- (SBReusableSnapshotItemContainer)initWithFrame:(CGRect)a3 appLayout:(id)a4 delegate:(id)a5 active:(BOOL)a6 windowScene:(id)a7;
- (id)_snapshotView;
- (void)_updateSnapshotViewWithAppLayout:(id)a3;
- (void)prepareForReuse;
- (void)setAppLayout:(id)a3;
- (void)setContentView:(id)a3;
@end

@implementation SBReusableSnapshotItemContainer

- (id)_snapshotView
{
  v3 = objc_opt_class();
  v4 = [(SBFluidSwitcherItemContainer *)self contentView];
  v5 = SBSafeCast(v3, v4);

  return v5;
}

- (SBReusableSnapshotItemContainer)initWithFrame:(CGRect)a3 appLayout:(id)a4 delegate:(id)a5 active:(BOOL)a6 windowScene:(id)a7
{
  v8 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a4;
  v19.receiver = self;
  v19.super_class = SBReusableSnapshotItemContainer;
  v16 = [(SBFluidSwitcherItemContainer *)&v19 initWithFrame:v15 appLayout:a5 delegate:v8 active:a7 windowScene:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    [(SBReusableSnapshotItemContainer *)v16 _updateSnapshotViewWithAppLayout:v15];
  }

  return v17;
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = SBReusableSnapshotItemContainer;
  [(SBFluidSwitcherItemContainer *)&v2 prepareForReuse];
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBReusableSnapshotItemContainer *)a2 setContentView:?];
  }

  v6 = [(SBFluidSwitcherItemContainer *)self contentView];

  if (v6)
  {
    [(SBReusableSnapshotItemContainer *)a2 setContentView:?];
  }

  v8.receiver = self;
  v8.super_class = SBReusableSnapshotItemContainer;
  [(SBFluidSwitcherItemContainer *)&v8 setContentView:v5];
  v7 = [(SBFluidSwitcherItemContainer *)self appLayout];
  [(SBReusableSnapshotItemContainer *)self _updateSnapshotViewWithAppLayout:v7];
}

- (void)setAppLayout:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBReusableSnapshotItemContainer;
  v4 = a3;
  [(SBFluidSwitcherItemContainer *)&v5 setAppLayout:v4];
  [(SBReusableSnapshotItemContainer *)self _updateSnapshotViewWithAppLayout:v4, v5.receiver, v5.super_class];
}

- (void)_updateSnapshotViewWithAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBReusableSnapshotItemContainer *)self _snapshotView];
  [v5 setAppLayout:v4];
}

- (void)setContentView:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBReusableSnapshotItemContainer.m" lineNumber:39 description:@"Only SBAppSwitcherReusableSnapshotView * allowed"];
}

- (void)setContentView:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBReusableSnapshotItemContainer.m" lineNumber:40 description:@"Can't change content view once set"];
}

@end
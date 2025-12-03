@interface SBReusableSnapshotItemContainer
- (SBReusableSnapshotItemContainer)initWithFrame:(CGRect)frame appLayout:(id)layout delegate:(id)delegate active:(BOOL)active windowScene:(id)scene;
- (id)_snapshotView;
- (void)_updateSnapshotViewWithAppLayout:(id)layout;
- (void)prepareForReuse;
- (void)setAppLayout:(id)layout;
- (void)setContentView:(id)view;
@end

@implementation SBReusableSnapshotItemContainer

- (id)_snapshotView
{
  v3 = objc_opt_class();
  contentView = [(SBFluidSwitcherItemContainer *)self contentView];
  v5 = SBSafeCast(v3, contentView);

  return v5;
}

- (SBReusableSnapshotItemContainer)initWithFrame:(CGRect)frame appLayout:(id)layout delegate:(id)delegate active:(BOOL)active windowScene:(id)scene
{
  activeCopy = active;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  v19.receiver = self;
  v19.super_class = SBReusableSnapshotItemContainer;
  height = [(SBFluidSwitcherItemContainer *)&v19 initWithFrame:layoutCopy appLayout:delegate delegate:activeCopy active:scene windowScene:x, y, width, height];
  v17 = height;
  if (height)
  {
    [(SBReusableSnapshotItemContainer *)height _updateSnapshotViewWithAppLayout:layoutCopy];
  }

  return v17;
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = SBReusableSnapshotItemContainer;
  [(SBFluidSwitcherItemContainer *)&v2 prepareForReuse];
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBReusableSnapshotItemContainer *)a2 setContentView:?];
  }

  contentView = [(SBFluidSwitcherItemContainer *)self contentView];

  if (contentView)
  {
    [(SBReusableSnapshotItemContainer *)a2 setContentView:?];
  }

  v8.receiver = self;
  v8.super_class = SBReusableSnapshotItemContainer;
  [(SBFluidSwitcherItemContainer *)&v8 setContentView:viewCopy];
  appLayout = [(SBFluidSwitcherItemContainer *)self appLayout];
  [(SBReusableSnapshotItemContainer *)self _updateSnapshotViewWithAppLayout:appLayout];
}

- (void)setAppLayout:(id)layout
{
  v5.receiver = self;
  v5.super_class = SBReusableSnapshotItemContainer;
  layoutCopy = layout;
  [(SBFluidSwitcherItemContainer *)&v5 setAppLayout:layoutCopy];
  [(SBReusableSnapshotItemContainer *)self _updateSnapshotViewWithAppLayout:layoutCopy, v5.receiver, v5.super_class];
}

- (void)_updateSnapshotViewWithAppLayout:(id)layout
{
  layoutCopy = layout;
  _snapshotView = [(SBReusableSnapshotItemContainer *)self _snapshotView];
  [_snapshotView setAppLayout:layoutCopy];
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
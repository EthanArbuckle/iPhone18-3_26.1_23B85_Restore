@interface _UISceneSnapshotPresentationView
- (BOOL)capture;
- (_UISceneSnapshotPresentationView)init;
- (_UISceneSnapshotPresentationView)initWithCoder:(id)a3;
- (_UISceneSnapshotPresentationView)initWithFrame:(CGRect)a3;
- (_UISceneSnapshotPresentationView)initWithSnapshot:(id)a3;
@end

@implementation _UISceneSnapshotPresentationView

- (_UISceneSnapshotPresentationView)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UISceneSnapshotPresentationView.m" lineNumber:27 description:@"-[_UISceneSnapshotPresentationView init] is unavailable. Please use -[initWithSnapshot:]."];

  v5 = objc_alloc_init(MEMORY[0x1E699F7E0]);
  v6 = [(_UISceneSnapshotPresentationView *)self initWithSnapshot:v5];

  return v6;
}

- (_UISceneSnapshotPresentationView)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UISceneSnapshotPresentationView.m" lineNumber:32 description:@"-[_UISceneSnapshotPresentationView initWithCoder:] is unavailable. Please use -[initWithSnapshot:]."];

  v6 = objc_alloc_init(MEMORY[0x1E699F7E0]);
  v7 = [(_UISceneSnapshotPresentationView *)self initWithSnapshot:v6];

  return v7;
}

- (_UISceneSnapshotPresentationView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UISceneSnapshotPresentationView.m" lineNumber:37 description:@"-[_UISceneSnapshotPresentationView initWithFrame:] is unavailable. Please use -[initWithSnapshot:]."];

  v6 = objc_alloc_init(MEMORY[0x1E699F7E0]);
  v7 = [(_UISceneSnapshotPresentationView *)self initWithSnapshot:v6];

  return v7;
}

- (_UISceneSnapshotPresentationView)initWithSnapshot:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = _UISceneSnapshotPresentationView;
  v6 = [(UIView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshot, a3);
    v8 = [(UIView *)v7 layer];
    [v8 setAllowsDisplayCompositing:0];

    v9 = *(MEMORY[0x1E695EFD0] + 16);
    v12[0] = *MEMORY[0x1E695EFD0];
    v12[1] = v9;
    v12[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(UIView *)v7 setTransform:v12];
    v10 = [v5 configuration];
    [v10 frame];
    [(UIView *)v7 setFrame:?];
  }

  return v7;
}

- (BOOL)capture
{
  v3 = [(FBSceneSnapshot *)self->_snapshot capture];
  v4 = [(FBSceneSnapshot *)self->_snapshot IOSurface];
  if (!v4)
  {
    v4 = [(FBSceneSnapshot *)self->_snapshot CGImage];
  }

  v5 = [(UIView *)self layer];
  [v5 setContents:v4];

  return v3;
}

@end
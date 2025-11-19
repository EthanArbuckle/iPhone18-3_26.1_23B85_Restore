@interface UIScenePresenter
@end

@implementation UIScenePresenter

void __63___UIScenePresenter__snapshotPresentationViewWithConfigurator___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [(_UIScenePresenter *)*(a1 + 32) _modifySnapshotConfiguration:v4];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

@end
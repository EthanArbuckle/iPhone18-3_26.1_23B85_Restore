@interface UINavigationBarTitleRenameRemoteView
@end

@implementation UINavigationBarTitleRenameRemoteView

void __54___UINavigationBarTitleRenameRemoteView_updateMetrics__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained portalView];
    if (v10 && v5)
    {
      [v10 bounds];
      [v5 setFrame:?];
      v6 = [v10 sourceContextId];
      v7 = [v5 portalLayer];
      [v7 setSourceContextId:v6];

      v8 = [v10 sourceLayerRenderId];
      v9 = [v5 portalLayer];
      [v9 setSourceLayerRenderId:v8];

      [v10 intrinsicContentSize];
      [v4 setIntrinsicContentSize:?];
      [v10 horizontalTextInset];
      [v4 setHorizontalTextInset:?];
    }

    else
    {
      [v4 _disconnect];
    }
  }
}

@end
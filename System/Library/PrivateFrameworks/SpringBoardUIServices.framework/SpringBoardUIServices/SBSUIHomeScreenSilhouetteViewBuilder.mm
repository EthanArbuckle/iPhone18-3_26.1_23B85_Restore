@interface SBSUIHomeScreenSilhouetteViewBuilder
- (CGRect)frameForNormalizedFrame:(CGRect)frame;
- (CGSize)viewSize;
- (SBSUIHomeScreenSilhouetteViewBuilder)initWithSilhouetteLayout:(id)layout viewSize:(CGSize)size;
- (id)buildView;
- (id)makeDockView;
- (id)makeIconView;
- (id)makeRootView;
@end

@implementation SBSUIHomeScreenSilhouetteViewBuilder

- (SBSUIHomeScreenSilhouetteViewBuilder)initWithSilhouetteLayout:(id)layout viewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = SBSUIHomeScreenSilhouetteViewBuilder;
  v8 = [(SBSUIHomeScreenSilhouetteViewBuilder *)&v12 init];
  if (v8)
  {
    v9 = [layoutCopy copy];
    silhouetteLayout = v8->_silhouetteLayout;
    v8->_silhouetteLayout = v9;

    v8->_viewSize.width = width;
    v8->_viewSize.height = height;
    v8->_includesDock = 1;
  }

  return v8;
}

- (id)buildView
{
  v42 = *MEMORY[0x1E69E9840];
  [(SBSUIHomeScreenSilhouetteViewBuilder *)self viewSize];
  v36 = v3;
  makeRootView = [(SBSUIHomeScreenSilhouetteViewBuilder *)self makeRootView];
  silhouetteLayout = [(SBSUIHomeScreenSilhouetteViewBuilder *)self silhouetteLayout];
  includesDock = [(SBSUIHomeScreenSilhouetteViewBuilder *)self includesDock];
  dock = [silhouetteLayout dock];
  if (dock && includesDock)
  {
    makeDockView = [(SBSUIHomeScreenSilhouetteViewBuilder *)self makeDockView];
    if (makeDockView)
    {
      [dock frame];
      [(SBSUIHomeScreenSilhouetteViewBuilder *)self frameForNormalizedFrame:?];
      [makeDockView setFrame:?];
      [dock cornerRadius];
      [makeDockView _setContinuousCornerRadius:v36 * v9];
      [makeRootView addSubview:makeDockView];
    }
  }

  [dock frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v35 = silhouetteLayout;
  icons = [silhouetteLayout icons];
  v19 = [icons countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(icons);
        }

        v23 = *(*(&v37 + 1) + 8 * i);
        [v23 frame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        if (!includesDock)
        {
          v44.origin.x = v11;
          v44.origin.y = v13;
          v44.size.width = v15;
          v44.size.height = v17;
          v45.origin.x = v25;
          v45.origin.y = v27;
          v45.size.width = v29;
          v45.size.height = v31;
          if (CGRectContainsRect(v44, v45))
          {
            continue;
          }
        }

        makeIconView = [(SBSUIHomeScreenSilhouetteViewBuilder *)self makeIconView];
        if (makeIconView)
        {
          [(SBSUIHomeScreenSilhouetteViewBuilder *)self frameForNormalizedFrame:v25, v27, v29, v31];
          [makeIconView setFrame:?];
          [v23 cornerRadius];
          [makeIconView _setContinuousCornerRadius:v36 * v33];
          [makeRootView addSubview:makeIconView];
        }
      }

      v20 = [icons countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v20);
  }

  return makeRootView;
}

- (id)makeRootView
{
  rootViewBuilder = [(SBSUIHomeScreenSilhouetteViewBuilder *)self rootViewBuilder];
  [(SBSUIHomeScreenSilhouetteViewBuilder *)self viewSize];
  if (rootViewBuilder)
  {
    v6 = rootViewBuilder[2](rootViewBuilder, v4, v5);
    if (!v6)
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"A view must be returned from the rootViewBuilder" userInfo:0];
      objc_exception_throw(v7);
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v4.n128_f64[0], v5.n128_f64[0]}];
  }

  return v6;
}

- (id)makeDockView
{
  dockViewBuilder = [(SBSUIHomeScreenSilhouetteViewBuilder *)self dockViewBuilder];
  v3 = dockViewBuilder;
  if (dockViewBuilder)
  {
    v4 = (*(dockViewBuilder + 16))(dockViewBuilder);
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:0.6];
    [v4 setBackgroundColor:v5];
  }

  return v4;
}

- (id)makeIconView
{
  iconViewBuilder = [(SBSUIHomeScreenSilhouetteViewBuilder *)self iconViewBuilder];
  v3 = iconViewBuilder;
  if (iconViewBuilder)
  {
    v4 = (*(iconViewBuilder + 16))(iconViewBuilder);
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
    [v4 setBackgroundColor:v5];
  }

  return v4;
}

- (CGRect)frameForNormalizedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SBSUIHomeScreenSilhouetteViewBuilder *)self viewSize];
  v8 = v7;
  v10 = v9;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MinX = CGRectGetMinX(v22);
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v8;
  v23.size.height = v10;
  v21 = MinX * CGRectGetWidth(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinY = CGRectGetMinY(v24);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v8;
  v25.size.height = v10;
  v13 = MinY * CGRectGetHeight(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v14 = CGRectGetWidth(v26);
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = v8;
  v27.size.height = v10;
  v15 = v14 * CGRectGetWidth(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v16 = CGRectGetHeight(v28);
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = v8;
  v29.size.height = v10;
  v17 = v16 * CGRectGetHeight(v29);
  v18 = v21;
  v19 = v13;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
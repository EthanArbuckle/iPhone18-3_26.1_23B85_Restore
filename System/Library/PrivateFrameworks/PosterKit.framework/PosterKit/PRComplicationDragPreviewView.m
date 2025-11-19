@interface PRComplicationDragPreviewView
- (PRComplicationDragPreviewView)initWithWidgetHostViewController:(id)a3;
@end

@implementation PRComplicationDragPreviewView

- (PRComplicationDragPreviewView)initWithWidgetHostViewController:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PRComplicationDragPreviewView;
  v5 = [(PRComplicationDragPreviewView *)&v29 init];
  if (v5)
  {
    v6 = [v4 view];
    v7 = PRFindLUTFilterView(v6);

    if (v7)
    {
      v8 = [v7 layer];
      v9 = [v8 filters];

      v10 = [v7 layer];
      v11 = [v10 filters];
      v12 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_25];
      v13 = [v11 filteredArrayUsingPredicate:v12];

      v14 = [v7 layer];
      [v14 setFilters:v13];

      v15 = [v4 view];
      v16 = [v15 snapshotViewAfterScreenUpdates:1];
    }

    else
    {
      v16 = [v4 snapshotView];
      v9 = 0;
    }

    [MEMORY[0x1E6999618] complicationEdgeInset];
    v18 = v17;
    v19 = v17 + v17;
    [v16 bounds];
    v21 = v19 + v20;
    [v16 bounds];
    [(PRComplicationDragPreviewView *)v5 setFrame:0.0, 0.0, v21, v19 + v22];
    [(PRComplicationDragPreviewView *)v5 bounds];
    v31 = CGRectInset(v30, v18, v18);
    v23 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v31.origin.x, v31.origin.y, v31.size.width, v31.size.height}];
    v24 = [MEMORY[0x1E69DC888] blackColor];
    v25 = [v24 colorWithAlphaComponent:0.6];
    [v23 setBackgroundColor:v25];

    [v23 _setContinuousCornerRadius:PRWidgetPlatterCornerRadius()];
    [(PRComplicationDragPreviewView *)v5 addSubview:v23];
    [(PRComplicationDragPreviewView *)v5 addSubview:v16];
    [(PRComplicationDragPreviewView *)v5 bounds];
    MidX = CGRectGetMidX(v32);
    [(PRComplicationDragPreviewView *)v5 bounds];
    [v16 setCenter:{MidX, CGRectGetMidY(v33)}];
    if (v7 && v9)
    {
      v27 = [v7 layer];
      [v27 setFilters:v9];
    }
  }

  return v5;
}

uint64_t __66__PRComplicationDragPreviewView_initWithWidgetHostViewController___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqual:*MEMORY[0x1E6979C80]];

  return v3 ^ 1u;
}

@end
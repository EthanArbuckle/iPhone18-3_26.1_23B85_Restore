@interface PRComplicationDragPreviewView
- (PRComplicationDragPreviewView)initWithWidgetHostViewController:(id)controller;
@end

@implementation PRComplicationDragPreviewView

- (PRComplicationDragPreviewView)initWithWidgetHostViewController:(id)controller
{
  controllerCopy = controller;
  v29.receiver = self;
  v29.super_class = PRComplicationDragPreviewView;
  v5 = [(PRComplicationDragPreviewView *)&v29 init];
  if (v5)
  {
    view = [controllerCopy view];
    v7 = PRFindLUTFilterView(view);

    if (v7)
    {
      layer = [v7 layer];
      filters = [layer filters];

      layer2 = [v7 layer];
      filters2 = [layer2 filters];
      v12 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_25];
      v13 = [filters2 filteredArrayUsingPredicate:v12];

      layer3 = [v7 layer];
      [layer3 setFilters:v13];

      view2 = [controllerCopy view];
      snapshotView = [view2 snapshotViewAfterScreenUpdates:1];
    }

    else
    {
      snapshotView = [controllerCopy snapshotView];
      filters = 0;
    }

    [MEMORY[0x1E6999618] complicationEdgeInset];
    v18 = v17;
    v19 = v17 + v17;
    [snapshotView bounds];
    v21 = v19 + v20;
    [snapshotView bounds];
    [(PRComplicationDragPreviewView *)v5 setFrame:0.0, 0.0, v21, v19 + v22];
    [(PRComplicationDragPreviewView *)v5 bounds];
    v31 = CGRectInset(v30, v18, v18);
    v23 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v31.origin.x, v31.origin.y, v31.size.width, v31.size.height}];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v25 = [blackColor colorWithAlphaComponent:0.6];
    [v23 setBackgroundColor:v25];

    [v23 _setContinuousCornerRadius:PRWidgetPlatterCornerRadius()];
    [(PRComplicationDragPreviewView *)v5 addSubview:v23];
    [(PRComplicationDragPreviewView *)v5 addSubview:snapshotView];
    [(PRComplicationDragPreviewView *)v5 bounds];
    MidX = CGRectGetMidX(v32);
    [(PRComplicationDragPreviewView *)v5 bounds];
    [snapshotView setCenter:{MidX, CGRectGetMidY(v33)}];
    if (v7 && filters)
    {
      layer4 = [v7 layer];
      [layer4 setFilters:filters];
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
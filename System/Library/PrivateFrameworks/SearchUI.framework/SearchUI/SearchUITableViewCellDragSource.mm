@interface SearchUITableViewCellDragSource
- (UIEdgeInsets)customEdgeInsets;
- (id)dragParametersForPreviewView:(id)view;
@end

@implementation SearchUITableViewCellDragSource

- (id)dragParametersForPreviewView:(id)view
{
  v20.receiver = self;
  v20.super_class = SearchUITableViewCellDragSource;
  viewCopy = view;
  v5 = [(SearchUIDragSource *)&v20 dragParametersForPreviewView:viewCopy];
  [(SearchUITableViewCellDragSource *)self customEdgeInsets:v20.receiver];
  v7 = v6;
  [(SearchUITableViewCellDragSource *)self customEdgeInsets];
  v9 = v8;
  [viewCopy bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v11 + 0.0 cornerRadius:{v7 + v13, v15, v17 - (v7 + v9), 20.0}];
  [v5 setVisiblePath:v18];

  return v5;
}

- (UIEdgeInsets)customEdgeInsets
{
  top = self->_customEdgeInsets.top;
  left = self->_customEdgeInsets.left;
  bottom = self->_customEdgeInsets.bottom;
  right = self->_customEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
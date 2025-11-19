@interface _UIStatusBarIndicatorLocationItem
+ (id)groupWithPriority:(int64_t)a3;
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (_UIStatusBarImageView)prominentImageView;
- (_UIStatusBarIndicatorLocationItem)initWithIdentifier:(id)a3 statusBar:(id)a4;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (id)overriddenStyleAttributesForData:(id)a3 identifier:(id)a4;
- (id)systemImageNameForUpdate:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_prominentImageView;
@end

@implementation _UIStatusBarIndicatorLocationItem

+ (id)groupWithPriority:(int64_t)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = [a1 defaultDisplayIdentifier];
  v6 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v5 priority:1];

  v7 = [a1 prominentDisplayIdentifier];
  v8 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:2];
  v15[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v10 = [v8 excludingPlacements:v9];

  v14[0] = v6;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [(_UIStatusBarDisplayItemPlacementGroup *)_UIStatusBarDisplayItemPlacementLocationGroup groupWithPriority:a3 placements:v11];

  [v12 setRegularPlacement:v6];
  [v12 setProminentPlacement:v10];

  return v12;
}

- (_UIStatusBarIndicatorLocationItem)initWithIdentifier:(id)a3 statusBar:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarIndicatorLocationItem;
  result = [(_UIStatusBarItem *)&v5 initWithIdentifier:a3 statusBar:a4];
  if (result)
  {
    result->_previousType = -1;
  }

  return result;
}

- (id)systemImageNameForUpdate:(id)a3
{
  v3 = [a3 data];
  v4 = [v3 locationEntry];
  v5 = [v4 type];

  if (v5 == 1)
  {
    return @"location";
  }

  else
  {
    return @"location.fill";
  }
}

- (_UIStatusBarImageView)prominentImageView
{
  prominentImageView = self->_prominentImageView;
  if (!prominentImageView)
  {
    [(_UIStatusBarIndicatorLocationItem *)self _create_prominentImageView];
    prominentImageView = self->_prominentImageView;
  }

  return prominentImageView;
}

- (void)_create_prominentImageView
{
  v3 = [_UIStatusBarImageView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  prominentImageView = self->_prominentImageView;
  self->_prominentImageView = v4;
}

- (id)createDisplayItemForIdentifier:(id)a3
{
  v16.receiver = self;
  v16.super_class = _UIStatusBarIndicatorLocationItem;
  v4 = a3;
  v5 = [(_UIStatusBarItem *)&v16 createDisplayItemForIdentifier:v4];
  v6 = [objc_opt_class() prominentDisplayIdentifier];

  if (v6 == v4)
  {
    v7 = [UIImage _systemImageNamed:@"location.circle.fill"];
    v8 = [v7 imageWithRenderingMode:1];

    [v8 alignmentRectInsets];
    v13 = [v8 imageWithAlignmentRectInsets:{v9 + 0.0, v10 + 1.75, v11 + 0.0, v12 + 1.0}];

    v14 = [(_UIStatusBarIndicatorLocationItem *)self prominentImageView];
    [v14 setImage:v13];
  }

  return v5;
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() prominentDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = [(_UIStatusBarIndicatorLocationItem *)self prominentImageView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarIndicatorLocationItem;
    v6 = [(_UIStatusBarIndicatorItem *)&v9 viewForIdentifier:v4];
  }

  v7 = v6;

  return v7;
}

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [objc_opt_class() prominentDisplayIdentifier];

  if (v8 == v9)
  {
    v11 = [v7 locationEntry];
    if ([v11 isEnabled])
    {
      v12 = [v7 locationEntry];
      v10 = [v12 type] == 2;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UIStatusBarIndicatorLocationItem;
    v10 = [(_UIStatusBarItem *)&v14 canEnableDisplayItem:v6 fromData:v7];
  }

  return v10;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [objc_opt_class() defaultDisplayIdentifier];
  v10 = v9;
  if (v8 != v9)
  {

LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  v11 = [v6 dataChanged];

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = [v6 data];
  v13 = [v12 locationEntry];
  v14 = [v13 type];

  previousType = self->_previousType;
  v16 = previousType == 2 && v14 == 0;
  if (v16 || (!previousType ? (v17 = v14 == 2) : (v17 = 0), !v17 ? (v18 = 0) : (v18 = 1), v14 == previousType || previousType == -1 || (v18 & 1) != 0))
  {
    v21.receiver = self;
    v21.super_class = _UIStatusBarIndicatorLocationItem;
    v19 = [(_UIStatusBarIndicatorItem *)&v21 applyUpdate:v6 toDisplayItem:v7];
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __63___UIStatusBarIndicatorLocationItem_applyUpdate_toDisplayItem___block_invoke;
    v22[3] = &unk_1E711FA28;
    v23 = v6;
    v24 = self;
    v19 = [_UIStatusBarAnimation animationWithBlock:v22];
  }

  self->_previousType = v14;
LABEL_19:

  return v19;
}

- (id)overriddenStyleAttributesForData:(id)a3 identifier:(id)a4
{
  v4 = a4;
  v5 = [objc_opt_class() prominentDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = +[_UIStatusBarStyleAttributes overriddenStyleAttributes];
    [v6 setSymbolScale:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
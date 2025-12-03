@interface SBDodgingTesterView
- (CGPoint)initialMoveCenter;
- (CGPoint)preferredCenter;
- (CGSize)preferredSize;
- (SBDodgingResolverViewController)controller;
- (SBDodgingTesterView)initWithName:(id)name color:(id)color controller:(id)controller;
- (id)dodgingResolver:(id)resolver preferenceForDodgingItem:(id)item;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_handleChangeAnchorGesture:(id)gesture;
- (void)_handleDeleteGesture:(id)gesture;
- (void)_handleMoveGesture:(id)gesture;
- (void)_handleResizeGesture:(id)gesture;
- (void)_updateResolvedValuesLabel;
- (void)dodgingResolver:(id)resolver dodgingItemDidChange:(id)change;
- (void)dodgingResolver:(id)resolver dodgingItemDidSettle:(id)settle;
- (void)layoutSubviews;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SBDodgingTesterView

- (SBDodgingTesterView)initWithName:(id)name color:(id)color controller:(id)controller
{
  nameCopy = name;
  colorCopy = color;
  controllerCopy = controller;
  v42.receiver = self;
  v42.super_class = SBDodgingTesterView;
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v15 = [(SBDodgingTesterView *)&v42 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_controller, controllerCopy);
    v17 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v17;

    objc_storeStrong(&v16->_color, color);
    v19 = objc_opt_new();
    ignoringItems = v16->_ignoringItems;
    v16->_ignoringItems = v19;

    v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
    titleLabel = v16->_titleLabel;
    v16->_titleLabel = v21;

    v23 = v16->_titleLabel;
    v24 = [MEMORY[0x277D74300] boldSystemFontOfSize:22.0];
    [(UILabel *)v23 setFont:v24];

    [(UILabel *)v16->_titleLabel setTextAlignment:1];
    [(UILabel *)v16->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(SBDodgingTesterView *)v16 addSubview:v16->_titleLabel];
    v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
    resolvedValuesLabel = v16->_resolvedValuesLabel;
    v16->_resolvedValuesLabel = v25;

    v27 = v16->_resolvedValuesLabel;
    v28 = [MEMORY[0x277D74300] boldSystemFontOfSize:15.0];
    [(UILabel *)v27 setFont:v28];

    [(UILabel *)v16->_resolvedValuesLabel setNumberOfLines:0];
    [(UILabel *)v16->_resolvedValuesLabel setAdjustsFontSizeToFitWidth:1];
    [(SBDodgingTesterView *)v16 addSubview:v16->_resolvedValuesLabel];
    v29 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v11, v12, v13, v14}];
    resizeView = v16->_resizeView;
    v16->_resizeView = v29;

    [(SBDodgingTesterView *)v16 addSubview:v16->_resizeView];
    v31 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:0 style:{v11, v12, v13, v14}];
    otherItemsTable = v16->_otherItemsTable;
    v16->_otherItemsTable = v31;

    [(UITableView *)v16->_otherItemsTable setDelegate:v16];
    [(UITableView *)v16->_otherItemsTable setDataSource:v16];
    [(SBDodgingTesterView *)v16 addSubview:v16->_otherItemsTable];
    [(SBDodgingTesterView *)v16 _setCornerRadius:7.0];
    [(SBDodgingTesterView *)v16 setClipsToBounds:1];
    v33 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v16 action:sel__handleMoveGesture_];
    moveGesture = v16->_moveGesture;
    v16->_moveGesture = v33;

    [(SBDodgingTesterView *)v16 addGestureRecognizer:v16->_moveGesture];
    v35 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v16 action:sel__handleResizeGesture_];
    resizeGesture = v16->_resizeGesture;
    v16->_resizeGesture = v35;

    [(UIView *)v16->_resizeView addGestureRecognizer:v16->_resizeGesture];
    v37 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v16 action:sel__handleDeleteGesture_];
    [(SBDodgingTesterView *)v16 addGestureRecognizer:v37];
    v38 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v16 action:sel__handleChangeAnchorGesture_];
    [v38 setNumberOfTapsRequired:2];
    [(SBDodgingTesterView *)v16 addGestureRecognizer:v38];
    v16->_preferredSize = xmmword_21F8A7420;
    v16->_preferredCenter = *MEMORY[0x277CBF348];
    v39 = [controllerCopy addItemWithIdentifier:nameCopy view:v16 initialCenter:v16 initialSize:10.0 delegate:{-250.0, v16->_preferredSize.width, v16->_preferredSize.height}];
    item = v16->_item;
    v16->_item = v39;
  }

  return v16;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"ident"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"ident"];
  }

  v8 = -[NSArray objectAtIndex:](self->_otherIdentifiers, "objectAtIndex:", [pathCopy row]);
  textLabel = [v7 textLabel];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v8];
  [textLabel setText:v10];

  if ([(NSMutableSet *)self->_ignoringItems containsObject:v8])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v7 setAccessoryType:v11];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  otherIdentifiers = self->_otherIdentifiers;
  v9 = [pathCopy row];

  v13 = [(NSArray *)otherIdentifiers objectAtIndex:v9];
  v10 = [(NSMutableSet *)self->_ignoringItems containsObject:?];
  ignoringItems = self->_ignoringItems;
  if (v10)
  {
    [(NSMutableSet *)ignoringItems removeObject:v13];
  }

  else
  {
    [(NSMutableSet *)ignoringItems addObject:v13];
  }

  v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [viewCopy reloadSections:v12 withRowAnimation:100];

  [(SBDodgingItem *)self->_item setNeedsUpdateAnimated:1];
}

- (void)layoutSubviews
{
  [(SBDodgingTesterView *)self _updateResolvedValuesLabel];
  [(SBDodgingTesterView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_titleLabel sizeThatFits:v3, v5];
  [(UILabel *)self->_titleLabel setFrame:0.0, 10.0, v4, v7];
  resolvedValuesLabel = self->_resolvedValuesLabel;
  [(UILabel *)self->_titleLabel bounds];
  v10 = v6 - v9;
  [(UILabel *)self->_titleLabel bounds];
  [(UILabel *)resolvedValuesLabel sizeThatFits:v4 + -10.0, v10 - v11 + -15.0];
  v13 = v12;
  v14 = self->_resolvedValuesLabel;
  [(UILabel *)self->_titleLabel bounds];
  v16 = v15;
  [(UILabel *)self->_titleLabel bounds];
  [(UILabel *)v14 setFrame:5.0, v16 + v17 + 15.0, v4 + -10.0, v13];
  corner = self->_corner;
  if (corner > 1)
  {
    if (corner == 2)
    {
      p_resizeView = &self->_resizeView;
      v20 = 30.0;
      [(UIView *)self->_resizeView setFrame:v4 + -30.0, 0.0, 30.0, 30.0];
      v21 = 6.0;
      v23 = 24.0;
      v22 = 0.0;
      goto LABEL_11;
    }

    if (corner != 3)
    {
      goto LABEL_12;
    }

    p_resizeView = &self->_resizeView;
    v20 = 30.0;
    [(UIView *)self->_resizeView setFrame:0.0, 0.0, 30.0, 30.0];
    v21 = 6.0;
    v22 = 0.0;
  }

  else
  {
    if (!corner)
    {
      p_resizeView = &self->_resizeView;
      v20 = 30.0;
      [(UIView *)self->_resizeView setFrame:v4 + -30.0, v6 + -30.0, 30.0, 30.0];
      v21 = 6.0;
      v22 = 24.0;
      v23 = 24.0;
      goto LABEL_11;
    }

    if (corner != 1)
    {
      goto LABEL_12;
    }

    p_resizeView = &self->_resizeView;
    v20 = 30.0;
    [(UIView *)self->_resizeView setFrame:0.0, v6 + -30.0, 30.0, 30.0];
    v21 = 6.0;
    v22 = 24.0;
  }

  v23 = 0.0;
LABEL_11:
  layer = [MEMORY[0x277CD9F90] layer];
  v25 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, v22, v20, v21}];
  v26 = [MEMORY[0x277D75208] bezierPathWithRect:{v23, 0.0, v21, v20}];
  [v25 appendPath:v26];

  [layer setPath:{objc_msgSend(v25, "CGPath")}];
  layer2 = [(UIView *)*p_resizeView layer];
  [layer2 setMask:layer];

LABEL_12:
  [(UITableView *)self->_otherItemsTable sizeThatFits:v4, v6];
  v29 = v28;
  otherItemsTable = self->_otherItemsTable;
  [(UILabel *)self->_resolvedValuesLabel frame];
  v32 = v31;
  [(UILabel *)self->_resolvedValuesLabel frame];
  [(UITableView *)otherItemsTable setFrame:0.0, v32 + v33 + 5.0, v4, v29];
  titleLabel = self->_titleLabel;
  v35 = MEMORY[0x277D75348];
  v57 = self->_color;
  blackColor = [v35 blackColor];
  v37 = [blackColor colorWithAlphaComponent:0.15];
  v38 = [(UIColor *)v57 _colorBlendedWithColor:v37];
  [(UILabel *)titleLabel setTextColor:v38];

  v39 = self->_resolvedValuesLabel;
  blackColor2 = [MEMORY[0x277D75348] blackColor];
  v41 = [blackColor2 colorWithAlphaComponent:0.65];
  v42 = [(UIColor *)v57 _colorBlendedWithColor:v41];
  [(UILabel *)v39 setTextColor:v42];

  resizeView = self->_resizeView;
  blackColor3 = [MEMORY[0x277D75348] blackColor];
  v45 = [blackColor3 colorWithAlphaComponent:0.15];
  v46 = [(UIColor *)v57 _colorBlendedWithColor:v45];
  [(UIView *)resizeView setBackgroundColor:v46];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v48 = [whiteColor colorWithAlphaComponent:0.85];
  v49 = [(UIColor *)v57 _colorBlendedWithColor:v48];
  [(SBDodgingTesterView *)self setBackgroundColor:v49];

  [(UILabel *)self->_titleLabel setText:self->_name];
  layer3 = [(SBDodgingTesterView *)self layer];
  v51 = layer3;
  if (self->_stashed)
  {
    v52 = 5.0;
  }

  else
  {
    v52 = 0.0;
  }

  [layer3 setBorderWidth:v52];

  layer4 = [(SBDodgingTesterView *)self layer];
  blackColor4 = [MEMORY[0x277D75348] blackColor];
  v55 = [blackColor4 colorWithAlphaComponent:0.25];
  v56 = [(UIColor *)v57 _colorBlendedWithColor:v55];
  [layer4 setBorderColor:{objc_msgSend(v56, "CGColor")}];

  [(UIView *)self->_resizeView setHidden:self->_stashed];
}

- (void)_updateResolvedValuesLabel
{
  v10 = objc_opt_new();
  x = self->_preferredCenter.x;
  y = self->_preferredCenter.y;
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  [(SBDodgingTesterView *)self bounds];
  v8 = v7;
  [(SBDodgingTesterView *)self bounds];
  [v10 appendFormat:@"preferredCenter: %0.1f, %0.1f\npreferredSize: %0.1f, %0.1f\nsize: %0.1f, %0.1f", *&x, *&y, *&width, *&height, v8, v9];
  [v10 appendFormat:@"\n\ndouble tap to stash; hold to remove"];
  [v10 appendFormat:@"\nignore these:"];
  [(UILabel *)self->_resolvedValuesLabel setText:v10];
}

- (void)_handleMoveGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    [(SBDodgingItem *)self->_item center];
    self->_initialMoveCenter.x = v5;
    self->_initialMoveCenter.y = v6;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __42__SBDodgingTesterView__handleMoveGesture___block_invoke;
    v26[3] = &unk_2783A8C18;
    v26[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:4 delay:v26 options:0 animations:0.25 completion:0.0];
  }

  view = [gestureCopy view];
  superview = [view superview];
  [gestureCopy velocityInView:superview];
  v10 = v9;
  v12 = v11;

  view2 = [gestureCopy view];
  superview2 = [view2 superview];
  [gestureCopy translationInView:superview2];
  v16 = v15;
  v18 = v17;

  v19 = v16 + self->_initialMoveCenter.x;
  v20 = v18 + self->_initialMoveCenter.y;
  state = [gestureCopy state];
  v22 = v19 + v10 * 0.1;
  v23 = v20 + v12 * 0.1;
  if (state != 3)
  {
    v22 = v19;
    v23 = v20;
  }

  self->_preferredCenter.x = v22;
  self->_preferredCenter.y = v23;
  item = self->_item;
  state2 = [gestureCopy state];

  [(SBDodgingItem *)item setNeedsUpdateAnimated:state2 == 3];
}

- (void)_handleResizeGesture:(id)gesture
{
  gestureCopy = gesture;
  [gestureCopy locationInView:self];
  v6 = v5;
  v8 = v7;
  [(UIView *)self->_resizeView frame];
  UIRectGetCenter();
  v10 = v6 - v9;
  v12 = v8 - v11;
  [(SBDodgingTesterView *)self frame];
  corner = self->_corner;
  if (corner > 1)
  {
    if (corner == 2)
    {
      v13 = v10 + v13;
      v14 = v14 - v12;
    }

    else if (corner == 3)
    {
      v13 = v13 - v10;
      v14 = v14 - v12;
    }
  }

  else if (corner)
  {
    if (corner == 1)
    {
      v13 = v13 - v10;
      v14 = v12 + v14;
    }
  }

  else
  {
    v13 = v10 + v13;
    v14 = v12 + v14;
  }

  self->_preferredSize.width = v13;
  self->_preferredSize.height = v14;
  UIRectGetCenter();
  self->_preferredCenter.x = v16;
  self->_preferredCenter.y = v17;
  item = self->_item;
  state = [gestureCopy state];

  [(SBDodgingItem *)item setNeedsUpdateAnimated:state == 3];
}

- (void)_handleDeleteGesture:(id)gesture
{
  invalidate = [(SBDodgingItem *)self->_item invalidate];
  item = self->_item;
  self->_item = 0;
}

- (void)_handleChangeAnchorGesture:(id)gesture
{
  self->_stashed ^= 1u;
  [(SBDodgingTesterView *)self setNeedsLayout];
  item = self->_item;

  [(SBDodgingItem *)item setNeedsUpdateAnimated:1];
}

- (id)dodgingResolver:(id)resolver preferenceForDodgingItem:(id)item
{
  v5 = [(UIPanGestureRecognizer *)self->_moveGesture state:resolver];
  state = [(UIPanGestureRecognizer *)self->_resizeGesture state];
  v7 = [SBDodgingItemPreference alloc];
  if (self->_stashed)
  {
    x = 0.0;
    v9 = 2;
  }

  else
  {
    x = self->_preferredCenter.x;
    v9 = 3;
  }

  v11 = (v5 - 1) < 2 || (state - 1) < 2;
  v12 = [(SBDodgingItemPreference *)v7 initWithPreferredSize:v11 preferredCenter:v9 updateInteractively:self->_preferredSize.width dodgingAxisMask:self->_preferredSize.height minimumSize:x canBePositionedOutsideContainerBounds:self->_preferredCenter.y excludedDodgingIdentifiers:100.0, 100.0];

  return v12;
}

- (void)dodgingResolver:(id)resolver dodgingItemDidChange:(id)change
{
  changeCopy = change;
  [(SBDodgingTesterView *)self setNeedsLayout];
  [changeCopy center];
  v7 = v6;
  v9 = v8;
  [changeCopy containerSize];
  SBRectWithSize();
  UIRectGetCenter();
  if (v7 < v10 && v9 < v11)
  {
    v16 = 0;
    goto LABEL_21;
  }

  if (v7 >= v10 && v9 < v11)
  {
    v16 = 1;
    goto LABEL_21;
  }

  if (v7 < v10 && v9 >= v11)
  {
    v16 = 2;
LABEL_21:
    self->_corner = v16;
    goto LABEL_22;
  }

  if (v7 >= v10 && v9 >= v11)
  {
    v16 = 3;
    goto LABEL_21;
  }

LABEL_22:
  obj = [changeCopy otherDodgingIdentifiers];

  if ((BSEqualArrays() & 1) == 0)
  {
    objc_storeStrong(&self->_otherIdentifiers, obj);
    otherItemsTable = self->_otherItemsTable;
    v18 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
    [(UITableView *)otherItemsTable reloadSections:v18 withRowAnimation:100];

    [(SBDodgingTesterView *)self setNeedsLayout];
  }

  if (![(UIPanGestureRecognizer *)self->_moveGesture state])
  {
    [(SBDodgingTesterView *)self layoutIfNeeded];
  }
}

- (void)dodgingResolver:(id)resolver dodgingItemDidSettle:(id)settle
{
  v5 = [(UIPanGestureRecognizer *)self->_moveGesture state:resolver];
  v6 = [(UIPanGestureRecognizer *)self->_resizeGesture state]- 1;
  if ((v5 - 1) >= 2 && v6 >= 2)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__SBDodgingTesterView_dodgingResolver_dodgingItemDidSettle___block_invoke;
    v8[3] = &unk_2783A8C18;
    v8[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:4 delay:v8 options:0 animations:0.25 completion:0.0];
  }
}

- (SBDodgingResolverViewController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)preferredCenter
{
  x = self->_preferredCenter.x;
  y = self->_preferredCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)initialMoveCenter
{
  x = self->_initialMoveCenter.x;
  y = self->_initialMoveCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
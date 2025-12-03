@interface SBOverridePreferredFrameSwitcherModifier
- (CGPoint)newPreferredCenter;
- (CGRect)newPreferredFrame;
- (CGRect)preferredFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout bounds:(CGRect)bounds interfaceOrientation:(int64_t)orientation;
- (CGSize)newPreferredSize;
- (SBOverridePreferredFrameSwitcherModifier)initWithNewPreferredFrame:(CGRect)frame forDisplayItem:(id)item;
- (SBOverridePreferredFrameSwitcherModifier)initWithNewPreferredSize:(CGSize)size newPreferredCenter:(CGPoint)center forDisplayItem:(id)item;
- (void)setNewPreferredFrame:(CGRect)frame;
@end

@implementation SBOverridePreferredFrameSwitcherModifier

- (SBOverridePreferredFrameSwitcherModifier)initWithNewPreferredFrame:(CGRect)frame forDisplayItem:(id)item
{
  height = frame.size.height;
  width = frame.size.width;
  itemCopy = item;
  UIRectGetCenter();
  v10 = [(SBOverridePreferredFrameSwitcherModifier *)self initWithNewPreferredSize:itemCopy newPreferredCenter:width forDisplayItem:height, v8, v9];

  return v10;
}

- (SBOverridePreferredFrameSwitcherModifier)initWithNewPreferredSize:(CGSize)size newPreferredCenter:(CGPoint)center forDisplayItem:(id)item
{
  y = center.y;
  x = center.x;
  height = size.height;
  width = size.width;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = SBOverridePreferredFrameSwitcherModifier;
  v13 = [(SBSwitcherModifier *)&v15 init];
  if (v13)
  {
    if (!itemCopy)
    {
      [SBOverridePreferredFrameSwitcherModifier initWithNewPreferredSize:a2 newPreferredCenter:v13 forDisplayItem:?];
    }

    v13->_newPreferredSize.width = width;
    v13->_newPreferredSize.height = height;
    v13->_newPreferredCenter.x = x;
    v13->_newPreferredCenter.y = y;
    objc_storeStrong(&v13->_displayItem, item);
  }

  return v13;
}

- (void)setNewPreferredFrame:(CGRect)frame
{
  self->_newPreferredSize.width = frame.size.width;
  self->_newPreferredSize.height = frame.size.height;
  p_newPreferredCenter = &self->_newPreferredCenter;
  UIRectGetCenter();
  p_newPreferredCenter->x = v4;
  p_newPreferredCenter->y = v5;
}

- (CGRect)newPreferredFrame
{
  v2 = self->_newPreferredCenter.x == 1.79769313e308 && self->_newPreferredCenter.y == 1.79769313e308;
  if (v2 || (self->_newPreferredSize.width == 1.79769313e308 ? (v3 = self->_newPreferredSize.height == 1.79769313e308) : (v3 = 0), v3))
  {
    v4 = *MEMORY[0x277CBF398];
    v5 = *(MEMORY[0x277CBF398] + 8);
    v6 = *(MEMORY[0x277CBF398] + 16);
    v7 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    SBRectWithSize();
    UIRectCenteredAboutPoint();
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)preferredFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout bounds:(CGRect)bounds interfaceOrientation:(int64_t)orientation
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v14 = [layoutCopy itemForLayoutRole:role];
  if ([(SBDisplayItem *)v14 isEqualToItem:?])
  {
    v15 = self->_newPreferredSize.width == 1.79769313e308;
    if (self->_newPreferredSize.height != 1.79769313e308)
    {
      v15 = 0;
    }

    if (self->_newPreferredCenter.x != 1.79769313e308 || self->_newPreferredCenter.y != 1.79769313e308)
    {
      if (v15)
      {
        v31.receiver = self;
        v31.super_class = SBOverridePreferredFrameSwitcherModifier;
        [(SBOverridePreferredFrameSwitcherModifier *)&v31 preferredFrameForLayoutRole:role inAppLayout:layoutCopy bounds:orientation interfaceOrientation:x, y, width, height, 1.79769313e308, 1.79769313e308, 1.79769313e308, 1.79769313e308];
      }

      SBRectWithSize();
      goto LABEL_14;
    }

    if (!v15)
    {
      v30.receiver = self;
      v30.super_class = SBOverridePreferredFrameSwitcherModifier;
      [(SBOverridePreferredFrameSwitcherModifier *)&v30 preferredFrameForLayoutRole:role inAppLayout:layoutCopy bounds:orientation interfaceOrientation:x, y, width, height, 1.79769313e308, 1.79769313e308, 1.79769313e308, 1.79769313e308];
      UIRectGetCenter();
      SBRectWithSize();
LABEL_14:
      UIRectCenteredAboutPoint();
      goto LABEL_15;
    }
  }

  v29.receiver = self;
  v29.super_class = SBOverridePreferredFrameSwitcherModifier;
  [(SBOverridePreferredFrameSwitcherModifier *)&v29 preferredFrameForLayoutRole:role inAppLayout:layoutCopy bounds:orientation interfaceOrientation:x, y, width, height];
LABEL_15:
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGSize)newPreferredSize
{
  width = self->_newPreferredSize.width;
  height = self->_newPreferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)newPreferredCenter
{
  x = self->_newPreferredCenter.x;
  y = self->_newPreferredCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithNewPreferredSize:(uint64_t)a1 newPreferredCenter:(uint64_t)a2 forDisplayItem:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBOverridePreferredFrameSwitcherModifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

@end
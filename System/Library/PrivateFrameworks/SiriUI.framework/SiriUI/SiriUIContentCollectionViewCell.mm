@interface SiriUIContentCollectionViewCell
+ (UIEdgeInsets)defaultInsets;
+ (id)reuseIdentifier;
- (SiriUIContentCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)customViewEdgeInsets;
- (UIEdgeInsets)textAndAccessoryInsets;
- (UIOffset)accessoryOffset;
- (UIOffset)chevronOffset;
- (UIOffset)textOffset;
- (double)chevronTrailingMargin;
- (void)_updateSubviewConstraints;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessoryOffset:(UIOffset)offset;
- (void)setAccessoryView:(id)view;
- (void)setCustomView:(id)view;
- (void)setHasChevron:(BOOL)chevron;
- (void)setKeylineType:(int64_t)type;
- (void)setTextLabel:(id)label;
- (void)setTextOffset:(UIOffset)offset;
- (void)setVerticalAlignment:(int64_t)alignment;
- (void)updateConstraints;
@end

@implementation SiriUIContentCollectionViewCell

- (SiriUIContentCollectionViewCell)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = SiriUIContentCollectionViewCell;
  v3 = [(SiriUIClearBackgroundCell *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v5 setAutoresizingMask:18];
    siriui_highlightColor = [MEMORY[0x277D75348] siriui_highlightColor];
    [v5 setBackgroundColor:siriui_highlightColor];

    [(SiriUIContentCollectionViewCell *)v3 setSelectedBackgroundView:v5];
    v3->_keylineType = 1;
    v7 = [SiriUIKeyline keylineWithKeylineType:1];
    keyline = v3->_keyline;
    v3->_keyline = v7;

    [(SiriUIKeyline *)v3->_keyline setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(SiriUIContentCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_keyline];

    v10 = [MEMORY[0x277D755B8] siriui_semiTransparentChevronImageAndAllowNaturalLayout:1];
    chevronBlendEffectEnabled = [objc_opt_class() chevronBlendEffectEnabled];
    v12 = objc_alloc(MEMORY[0x277D755E8]);
    v13 = v10;
    if (chevronBlendEffectEnabled)
    {
      v13 = [v10 imageWithRenderingMode:2];
    }

    v14 = [v12 initWithImage:v13];
    chevronView = v3->_chevronView;
    v3->_chevronView = v14;

    if (chevronBlendEffectEnabled)
    {
    }

    [(UIImageView *)v3->_chevronView setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
    LODWORD(v16) = 1148846080;
    [(UIImageView *)v3->_chevronView setContentHuggingPriority:0 forAxis:v16];
    [(UIImageView *)v3->_chevronView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_chevronView setHidden:1];
    contentView2 = [(SiriUIContentCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_chevronView];

    if (chevronBlendEffectEnabled)
    {
      v18 = v3->_chevronView;
      siriui_blendEffectColor = [MEMORY[0x277D75348] siriui_blendEffectColor];
      [(UIImageView *)v18 setTintColor:siriui_blendEffectColor];

      [(UIImageView *)v3->_chevronView siriui_setBlendEffectEnabled:1];
    }

    [objc_opt_class() defaultInsets];
    v3->_textAndAccessoryInsets.top = v20;
    v3->_textAndAccessoryInsets.left = v21;
    v3->_textAndAccessoryInsets.bottom = v22;
    v3->_textAndAccessoryInsets.right = v23;
    v3->_verticalAlignment = 0;
    array = [MEMORY[0x277CBEB18] array];
    subviewConstraints = v3->_subviewConstraints;
    v3->_subviewConstraints = array;
  }

  return v3;
}

- (void)setKeylineType:(int64_t)type
{
  if (self->_keylineType != type)
  {
    self->_keylineType = type;
    [(SiriUIKeyline *)self->_keyline setKeylineType:?];

    [(SiriUIContentCollectionViewCell *)self setNeedsUpdateSubviewConstraints];
  }
}

- (void)_updateSubviewConstraints
{
  v57 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_subviewConstraints count])
  {
    [(SiriUIContentCollectionViewCell *)self removeConstraints:self->_subviewConstraints];
    [(NSMutableArray *)self->_subviewConstraints removeAllObjects];
  }

  if (self->_textLabel && self->_accessoryView)
  {
    subviewConstraints = self->_subviewConstraints;
    v4 = [MEMORY[0x277CCAAD0] constraintWithItem:1.0 attribute:-15.0 relatedBy:? toItem:? attribute:? multiplier:? constant:?];
    [(NSMutableArray *)subviewConstraints addObject:v4];
  }

  accessoryView = self->_accessoryView;
  if (accessoryView)
  {
    v6 = accessoryView;
  }

  else
  {
    v6 = self->_textLabel;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  horizontal = 0.0;
  if (v6 == self->_accessoryView)
  {
    horizontal = self->_accessoryOffset.horizontal;
  }

  v8 = horizontal + self->_textAndAccessoryInsets.right;
  v9 = self->_subviewConstraints;
  v10 = MEMORY[0x277CCAAD0];
  if (self->_hasChevron)
  {
    contentView = [MEMORY[0x277CCAAD0] constraintWithItem:v6 attribute:6 relatedBy:0 toItem:self->_chevronView attribute:5 multiplier:1.0 constant:-v8];
    [(NSMutableArray *)v9 addObject:contentView];
  }

  else
  {
    contentView = [(SiriUIContentCollectionViewCell *)self contentView];
    v12 = [v10 constraintWithItem:v6 attribute:6 relatedBy:0 toItem:contentView attribute:6 multiplier:1.0 constant:-v8];
    [(NSMutableArray *)v9 addObject:v12];
  }

LABEL_15:
  textLabel = self->_textLabel;
  if (textLabel)
  {
    v14 = self->_subviewConstraints;
    v15 = MEMORY[0x277CCAAD0];
    contentView2 = [(SiriUIContentCollectionViewCell *)self contentView];
    v17 = [v15 constraintWithItem:textLabel attribute:5 relatedBy:0 toItem:contentView2 attribute:5 multiplier:1.0 constant:self->_textAndAccessoryInsets.left + self->_textOffset.horizontal];
    [(NSMutableArray *)v14 addObject:v17];
  }

  array = [MEMORY[0x277CBEB18] array];
  v19 = array;
  if (self->_chevronView)
  {
    [array addObject:?];
  }

  if (self->_textLabel)
  {
    [v19 addObject:?];
  }

  v50 = v6;
  if (self->_accessoryView)
  {
    [v19 addObject:?];
  }

  keyline = self->_keyline;
  if (keyline)
  {
    v21 = self->_subviewConstraints;
    v22 = MEMORY[0x277CCAAD0];
    contentView3 = [(SiriUIContentCollectionViewCell *)self contentView];
    v24 = [v22 constraintWithItem:keyline attribute:4 relatedBy:0 toItem:contentView3 attribute:4 multiplier:1.0 constant:0.0];
    [(NSMutableArray *)v21 addObject:v24];

    v25 = self->_subviewConstraints;
    v26 = MEMORY[0x277CCAAD0];
    v27 = _NSDictionaryOfVariableBindings(&cfstr_Keyline_0.isa, self->_keyline, 0, v6);
    v28 = [v26 constraintsWithVisualFormat:@"|[_keyline]|" options:0 metrics:0 views:v27];
    [(NSMutableArray *)v25 addObjectsFromArray:v28];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v19;
  v29 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v53;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v53 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v52 + 1) + 8 * i);
        if (v33 == self->_accessoryView)
        {
          v35 = &OBJC_IVAR___SiriUIContentCollectionViewCell__accessoryOffset;
        }

        else if (v33 == self->_textLabel)
        {
          v35 = &OBJC_IVAR___SiriUIContentCollectionViewCell__textOffset;
        }

        else
        {
          v34 = 0.0;
          if (v33 != self->_chevronView)
          {
            goto LABEL_37;
          }

          v35 = &OBJC_IVAR___SiriUIContentCollectionViewCell__chevronOffset;
        }

        v34 = *(&self->super.super.super.super.super._responderFlags + *v35);
LABEL_37:
        verticalAlignment = self->_verticalAlignment;
        if (verticalAlignment)
        {
          if (verticalAlignment != 1)
          {
            continue;
          }

          v37 = self->_subviewConstraints;
          v38 = MEMORY[0x277CCAAD0];
          contentView4 = [(SiriUIContentCollectionViewCell *)self contentView];
          top = v34 + self->_textAndAccessoryInsets.top;
          v41 = 1.0;
          v42 = v38;
          v43 = v33;
          v44 = 3;
          v45 = contentView4;
          v46 = 3;
        }

        else
        {
          v37 = self->_subviewConstraints;
          v47 = MEMORY[0x277CCAAD0];
          contentView4 = [(SiriUIContentCollectionViewCell *)self contentView];
          top = self->_textAndAccessoryInsets.top;
          v41 = 1.0;
          v42 = v47;
          v43 = v33;
          v44 = 10;
          v45 = contentView4;
          v46 = 10;
        }

        v48 = [v42 constraintWithItem:v43 attribute:v44 relatedBy:0 toItem:v45 attribute:v46 multiplier:v41 constant:top];
        [(NSMutableArray *)v37 addObject:v48];
      }

      v30 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v30);
  }

  contentView5 = [(SiriUIContentCollectionViewCell *)self contentView];
  [contentView5 addConstraints:self->_subviewConstraints];
}

- (void)updateConstraints
{
  v9.receiver = self;
  v9.super_class = SiriUIContentCollectionViewCell;
  [(SiriUIContentCollectionViewCell *)&v9 updateConstraints];
  if (!self->_hasSetupStaticSubviewConstraints)
  {
    if (self->_chevronView)
    {
      contentView = [(SiriUIContentCollectionViewCell *)self contentView];
      v4 = MEMORY[0x277CCAAD0];
      chevronView = self->_chevronView;
      contentView2 = [(SiriUIContentCollectionViewCell *)self contentView];
      [objc_opt_class() defaultInsets];
      v8 = [v4 constraintWithItem:chevronView attribute:6 relatedBy:0 toItem:contentView2 attribute:6 multiplier:1.0 constant:-v7];
      [contentView addConstraint:v8];
    }

    self->_hasSetupStaticSubviewConstraints = 1;
  }

  if (!self->_hasSetUpSubviewConstraints)
  {
    [(SiriUIContentCollectionViewCell *)self _updateSubviewConstraints];
    self->_hasSetUpSubviewConstraints = 1;
  }
}

- (void)layoutSubviews
{
  [(UIView *)self recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
  v34.receiver = self;
  v34.super_class = SiriUIContentCollectionViewCell;
  [(SiriUIContentCollectionViewCell *)&v34 layoutSubviews];
  [(SiriUIContentCollectionViewCell *)self bounds];
  v4 = v3;
  v30 = v5;
  v31 = v3;
  v6 = v5;
  v8 = v7;
  v32 = v7;
  v33 = v9;
  v10 = v9;
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  [(SiriUIKeyline *)self->_keyline sizeThatFits:v7, v9];
  v14 = v13;
  v16 = v15;
  v35.origin.x = v4;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  Height = CGRectGetHeight(v35);
  v36.origin.x = v11;
  v36.origin.y = v12;
  v36.size.width = v14;
  v36.size.height = v16;
  v18 = Height - CGRectGetHeight(v36);
  [(SiriUIContentCollectionViewCell *)self bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v37.origin.x = v11;
  v37.origin.y = v18;
  v37.size.width = v14;
  v37.size.height = v16;
  v27 = v22 - CGRectGetHeight(v37);
  v38.origin.x = v11;
  v38.origin.y = v18;
  v38.size.width = v14;
  v38.size.height = v16;
  v28 = v26 + CGRectGetHeight(v38);
  selectedBackgroundView = [(SiriUIContentCollectionViewCell *)self selectedBackgroundView];
  [selectedBackgroundView setFrame:{v20, v27, v24, v28}];

  [(UIView *)self->_customView setFrame:v31 + self->_customViewEdgeInsets.left, v30 + self->_customViewEdgeInsets.top, v32 - (self->_customViewEdgeInsets.left + self->_customViewEdgeInsets.right), v33 - (self->_customViewEdgeInsets.top + self->_customViewEdgeInsets.bottom)];
}

- (void)setCustomView:(id)view
{
  viewCopy = view;
  customView = self->_customView;
  if (customView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)customView removeFromSuperview];
    objc_storeStrong(&self->_customView, view);
    contentView = [(SiriUIContentCollectionViewCell *)self contentView];
    [contentView addSubview:v8];

    customView = [(SiriUIContentCollectionViewCell *)self setNeedsLayout];
    viewCopy = v8;
  }

  MEMORY[0x2821F96F8](customView, viewCopy);
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  accessoryView = self->_accessoryView;
  if (accessoryView != viewCopy)
  {
    v16 = viewCopy;
    [(UIView *)accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, view);
    if (self->_accessoryView)
    {
      contentView = [(SiriUIContentCollectionViewCell *)self contentView];
      [contentView addSubview:self->_accessoryView];

      [(UIView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = self->_accessoryView;
      v9 = MEMORY[0x277CCAAD0];
      [(UIView *)v8 frame];
      v11 = [v9 constraintWithItem:v8 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v10];
      [(UIView *)v8 addConstraint:v11];

      v12 = self->_accessoryView;
      v13 = MEMORY[0x277CCAAD0];
      [(UIView *)v12 frame];
      v15 = [v13 constraintWithItem:v12 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v14];
      [(UIView *)v12 addConstraint:v15];
    }

    accessoryView = [(SiriUIContentCollectionViewCell *)self setNeedsUpdateSubviewConstraints];
    viewCopy = v16;
  }

  MEMORY[0x2821F96F8](accessoryView, viewCopy);
}

- (void)setVerticalAlignment:(int64_t)alignment
{
  if (self->_verticalAlignment != alignment)
  {
    self->_verticalAlignment = alignment;
    [(SiriUIContentCollectionViewCell *)self setNeedsUpdateSubviewConstraints];
  }
}

- (void)setTextLabel:(id)label
{
  labelCopy = label;
  textLabel = self->_textLabel;
  if (textLabel != labelCopy)
  {
    v9 = labelCopy;
    [(UILabel *)textLabel removeFromSuperview];
    objc_storeStrong(&self->_textLabel, label);
    v7 = self->_textLabel;
    if (v7)
    {
      [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(SiriUIContentCollectionViewCell *)self contentView];
      [contentView addSubview:self->_textLabel];
    }

    textLabel = [(SiriUIContentCollectionViewCell *)self setNeedsUpdateSubviewConstraints];
    labelCopy = v9;
  }

  MEMORY[0x2821F96F8](textLabel, labelCopy);
}

- (void)setTextOffset:(UIOffset)offset
{
  if (offset.horizontal != self->_textOffset.horizontal || offset.vertical != self->_textOffset.vertical)
  {
    self->_textOffset = offset;
    [(SiriUIContentCollectionViewCell *)self setNeedsUpdateSubviewConstraints];
  }
}

- (void)setAccessoryOffset:(UIOffset)offset
{
  if (offset.horizontal != self->_accessoryOffset.horizontal || offset.vertical != self->_accessoryOffset.vertical)
  {
    self->_accessoryOffset = offset;
    [(SiriUIContentCollectionViewCell *)self setNeedsUpdateSubviewConstraints];
  }
}

- (void)setHasChevron:(BOOL)chevron
{
  if (self->_hasChevron != chevron)
  {
    self->_hasChevron = chevron;
    [(SiriUIContentCollectionViewCell *)self setNeedsUpdateSubviewConstraints];
    chevronView = self->_chevronView;
    v5 = !self->_hasChevron;

    [(UIImageView *)chevronView setHidden:v5];
  }
}

+ (UIEdgeInsets)defaultInsets
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = ceil(16.0);
  if (v3 >= 2.0)
  {
    v5 = 16.0;
  }

  else
  {
    v5 = v4;
  }

  if (v3 >= 2.0)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = v4;
  }

  v7 = 0.0;
  v8 = 0.0;
  v9 = v5;
  v10 = v6;
  result.right = v10;
  result.bottom = v8;
  result.left = v9;
  result.top = v7;
  return result;
}

- (double)chevronTrailingMargin
{
  if (!self->_hasChevron)
  {
    return 0.0;
  }

  v3 = objc_opt_class();

  [v3 chevronTrailingMargin];
  return result;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

- (void)prepareForReuse
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = SiriUIContentCollectionViewCell;
  [(SiriUIContentCollectionViewCell *)&v21 prepareForReuse];
  self->_verticalAlignment = 0;
  [objc_opt_class() defaultInsets];
  self->_textAndAccessoryInsets.top = v3;
  self->_textAndAccessoryInsets.left = v4;
  self->_textAndAccessoryInsets.bottom = v5;
  self->_textAndAccessoryInsets.right = v6;
  v7 = *MEMORY[0x277D76DA8];
  self->_textOffset = *MEMORY[0x277D76DA8];
  self->_accessoryOffset = v7;
  [(UIView *)self->_accessoryView removeFromSuperview];
  accessoryView = self->_accessoryView;
  self->_accessoryView = 0;

  [(SiriUIContentCollectionViewCell *)self removeConstraints:self->_subviewConstraints];
  [(SiriUIContentCollectionViewCell *)self setNeedsUpdateSubviewConstraints];
  [(UILabel *)self->_textLabel removeFromSuperview];
  textLabel = self->_textLabel;
  self->_textLabel = 0;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  contentView = [(SiriUIContentCollectionViewCell *)self contentView];
  subviews = [contentView subviews];

  v12 = [subviews countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(subviews);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (v16 != self->_keyline && v16 != self->_chevronView)
        {
          [(SiriUIKeyline *)v16 removeFromSuperview];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [subviews countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v13);
  }
}

- (UIEdgeInsets)textAndAccessoryInsets
{
  top = self->_textAndAccessoryInsets.top;
  left = self->_textAndAccessoryInsets.left;
  bottom = self->_textAndAccessoryInsets.bottom;
  right = self->_textAndAccessoryInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)customViewEdgeInsets
{
  top = self->_customViewEdgeInsets.top;
  left = self->_customViewEdgeInsets.left;
  bottom = self->_customViewEdgeInsets.bottom;
  right = self->_customViewEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIOffset)textOffset
{
  horizontal = self->_textOffset.horizontal;
  vertical = self->_textOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (UIOffset)accessoryOffset
{
  horizontal = self->_accessoryOffset.horizontal;
  vertical = self->_accessoryOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (UIOffset)chevronOffset
{
  horizontal = self->_chevronOffset.horizontal;
  vertical = self->_chevronOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end
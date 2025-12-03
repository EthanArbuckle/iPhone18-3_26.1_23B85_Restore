@interface TFFeedbackFormBaseCell
+ (CGSize)sizeForEntry:(id)entry dataSource:(id)source fittingSize:(CGSize)result inTraitEnvironment:(id)environment;
- (CGRect)_separatorFrameForTop:(BOOL)top inLayoutBounds:(CGRect)bounds;
- (TFFeedbackDataUpdateProxy)updateProxy;
- (TFFeedbackFormBaseCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_createSeparatorSubview;
- (void)_setupSeparatorViewsForAppearingInSectionLocation:(int)location;
- (void)layoutSubviews;
- (void)prepareSeparatorsForCellInSectionLocation:(int)location;
@end

@implementation TFFeedbackFormBaseCell

- (TFFeedbackFormBaseCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = TFFeedbackFormBaseCell;
  v4 = [(TFFeedbackFormBaseCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    topSeparator = v4->_topSeparator;
    v4->_topSeparator = 0;

    bottomSeparator = v5->_bottomSeparator;
    v5->_bottomSeparator = 0;
  }

  return v5;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = TFFeedbackFormBaseCell;
  [(TFFeedbackFormBaseCell *)&v21 layoutSubviews];
  [(TFFeedbackFormBaseCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  topSeparator = [(TFFeedbackFormBaseCell *)self topSeparator];
  if (topSeparator)
  {
    v12 = topSeparator;
    topSeparator2 = [(TFFeedbackFormBaseCell *)self topSeparator];
    isHidden = [topSeparator2 isHidden];

    if ((isHidden & 1) == 0)
    {
      topSeparator3 = [(TFFeedbackFormBaseCell *)self topSeparator];
      [(TFFeedbackFormBaseCell *)self _separatorFrameForTop:1 inLayoutBounds:v4, v6, v8, v10];
      [topSeparator3 setFrame:?];
    }
  }

  bottomSeparator = [(TFFeedbackFormBaseCell *)self bottomSeparator];
  if (bottomSeparator)
  {
    v17 = bottomSeparator;
    bottomSeparator2 = [(TFFeedbackFormBaseCell *)self bottomSeparator];
    isHidden2 = [bottomSeparator2 isHidden];

    if ((isHidden2 & 1) == 0)
    {
      bottomSeparator3 = [(TFFeedbackFormBaseCell *)self bottomSeparator];
      [(TFFeedbackFormBaseCell *)self _separatorFrameForTop:0 inLayoutBounds:v4, v6, v8, v10];
      [bottomSeparator3 setFrame:?];
    }
  }
}

- (void)prepareSeparatorsForCellInSectionLocation:(int)location
{
  [(TFFeedbackFormBaseCell *)self _setupSeparatorViewsForAppearingInSectionLocation:*&location];

  [(TFFeedbackFormBaseCell *)self setNeedsLayout];
}

+ (CGSize)sizeForEntry:(id)entry dataSource:(id)source fittingSize:(CGSize)result inTraitEnvironment:(id)environment
{
  v6 = 44.0;
  result.height = v6;
  return result;
}

- (void)_setupSeparatorViewsForAppearingInSectionLocation:(int)location
{
  v4 = location - 5;
  if (location == 4 || location == 2)
  {
    topSeparator = [(TFFeedbackFormBaseCell *)self topSeparator];

    if (!topSeparator)
    {
      _createSeparatorSubview = [(TFFeedbackFormBaseCell *)self _createSeparatorSubview];
      [(TFFeedbackFormBaseCell *)self setTopSeparator:_createSeparatorSubview];
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  topSeparator2 = [(TFFeedbackFormBaseCell *)self topSeparator];
  [topSeparator2 setHidden:v7];

  if (v4 >= 0xFFFFFFFE)
  {
    bottomSeparator = [(TFFeedbackFormBaseCell *)self bottomSeparator];

    if (!bottomSeparator)
    {
      _createSeparatorSubview2 = [(TFFeedbackFormBaseCell *)self _createSeparatorSubview];
      [(TFFeedbackFormBaseCell *)self setBottomSeparator:_createSeparatorSubview2];
    }
  }

  bottomSeparator2 = [(TFFeedbackFormBaseCell *)self bottomSeparator];
  [bottomSeparator2 setHidden:v4 < 0xFFFFFFFE];
}

- (id)_createSeparatorSubview
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  separatorColor = [MEMORY[0x277D75348] separatorColor];
  [v3 setBackgroundColor:separatorColor];

  [(TFFeedbackFormBaseCell *)self addSubview:v3];

  return v3;
}

- (CGRect)_separatorFrameForTop:(BOOL)top inLayoutBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v11 = 1.0 / v10;

  v12 = 0.0;
  if (!top)
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v12 = CGRectGetMaxY(v17) - v11;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v13 = CGRectGetWidth(v18);
  v14 = 0.0;
  v15 = v12;
  v16 = v11;
  result.size.height = v16;
  result.size.width = v13;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (TFFeedbackDataUpdateProxy)updateProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_updateProxy);

  return WeakRetained;
}

@end
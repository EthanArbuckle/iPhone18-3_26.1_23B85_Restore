@interface TFFeedbackFormBaseCell
+ (CGSize)sizeForEntry:(id)a3 dataSource:(id)a4 fittingSize:(CGSize)result inTraitEnvironment:(id)a6;
- (CGRect)_separatorFrameForTop:(BOOL)a3 inLayoutBounds:(CGRect)a4;
- (TFFeedbackDataUpdateProxy)updateProxy;
- (TFFeedbackFormBaseCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_createSeparatorSubview;
- (void)_setupSeparatorViewsForAppearingInSectionLocation:(int)a3;
- (void)layoutSubviews;
- (void)prepareSeparatorsForCellInSectionLocation:(int)a3;
@end

@implementation TFFeedbackFormBaseCell

- (TFFeedbackFormBaseCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = TFFeedbackFormBaseCell;
  v4 = [(TFFeedbackFormBaseCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
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
  v11 = [(TFFeedbackFormBaseCell *)self topSeparator];
  if (v11)
  {
    v12 = v11;
    v13 = [(TFFeedbackFormBaseCell *)self topSeparator];
    v14 = [v13 isHidden];

    if ((v14 & 1) == 0)
    {
      v15 = [(TFFeedbackFormBaseCell *)self topSeparator];
      [(TFFeedbackFormBaseCell *)self _separatorFrameForTop:1 inLayoutBounds:v4, v6, v8, v10];
      [v15 setFrame:?];
    }
  }

  v16 = [(TFFeedbackFormBaseCell *)self bottomSeparator];
  if (v16)
  {
    v17 = v16;
    v18 = [(TFFeedbackFormBaseCell *)self bottomSeparator];
    v19 = [v18 isHidden];

    if ((v19 & 1) == 0)
    {
      v20 = [(TFFeedbackFormBaseCell *)self bottomSeparator];
      [(TFFeedbackFormBaseCell *)self _separatorFrameForTop:0 inLayoutBounds:v4, v6, v8, v10];
      [v20 setFrame:?];
    }
  }
}

- (void)prepareSeparatorsForCellInSectionLocation:(int)a3
{
  [(TFFeedbackFormBaseCell *)self _setupSeparatorViewsForAppearingInSectionLocation:*&a3];

  [(TFFeedbackFormBaseCell *)self setNeedsLayout];
}

+ (CGSize)sizeForEntry:(id)a3 dataSource:(id)a4 fittingSize:(CGSize)result inTraitEnvironment:(id)a6
{
  v6 = 44.0;
  result.height = v6;
  return result;
}

- (void)_setupSeparatorViewsForAppearingInSectionLocation:(int)a3
{
  v4 = a3 - 5;
  if (a3 == 4 || a3 == 2)
  {
    v5 = [(TFFeedbackFormBaseCell *)self topSeparator];

    if (!v5)
    {
      v6 = [(TFFeedbackFormBaseCell *)self _createSeparatorSubview];
      [(TFFeedbackFormBaseCell *)self setTopSeparator:v6];
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(TFFeedbackFormBaseCell *)self topSeparator];
  [v8 setHidden:v7];

  if (v4 >= 0xFFFFFFFE)
  {
    v9 = [(TFFeedbackFormBaseCell *)self bottomSeparator];

    if (!v9)
    {
      v10 = [(TFFeedbackFormBaseCell *)self _createSeparatorSubview];
      [(TFFeedbackFormBaseCell *)self setBottomSeparator:v10];
    }
  }

  v11 = [(TFFeedbackFormBaseCell *)self bottomSeparator];
  [v11 setHidden:v4 < 0xFFFFFFFE];
}

- (id)_createSeparatorSubview
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  v4 = [MEMORY[0x277D75348] separatorColor];
  [v3 setBackgroundColor:v4];

  [(TFFeedbackFormBaseCell *)self addSubview:v3];

  return v3;
}

- (CGRect)_separatorFrameForTop:(BOOL)a3 inLayoutBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v11 = 1.0 / v10;

  v12 = 0.0;
  if (!a3)
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
@interface TSDDoubleSegmentedControlTableViewCell
- (TSDDoubleSegmentedControlTableViewCell)initWithLeftSegmentedControl:(id)a3 rightSegmentedControl:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation TSDDoubleSegmentedControlTableViewCell

- (TSDDoubleSegmentedControlTableViewCell)initWithLeftSegmentedControl:(id)a3 rightSegmentedControl:(id)a4
{
  v10.receiver = self;
  v10.super_class = TSDDoubleSegmentedControlTableViewCell;
  v6 = [(TSDDoubleSegmentedControlTableViewCell *)&v10 initWithStyle:0 reuseIdentifier:0];
  if (v6)
  {
    v6->mLeftSegmentedControl = a3;
    v6->mRightSegmentedControl = a4;
    if (TSUPhoneUI() && TSUStatusBarIsLandscape())
    {
      LODWORD(v7) = 1132134400;
      [(TSKSegmentedControl *)v6->mLeftSegmentedControl sizeToFitWidth:v7];
      LODWORD(v8) = 1128005632;
      [(TSKSegmentedControl *)v6->mRightSegmentedControl sizeToFitWidth:v8];
    }

    else
    {
      [(TSKSegmentedControl *)v6->mLeftSegmentedControl sizeToFit];
      [(TSKSegmentedControl *)v6->mRightSegmentedControl sizeToFit];
    }

    [-[TSDDoubleSegmentedControlTableViewCell contentView](v6 "contentView")];
    [-[TSDDoubleSegmentedControlTableViewCell contentView](v6 "contentView")];
    [(TSDDoubleSegmentedControlTableViewCell *)v6 setSelectionStyle:0];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDDoubleSegmentedControlTableViewCell;
  [(TSDDoubleSegmentedControlTableViewCell *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = TSDDoubleSegmentedControlTableViewCell;
  [(TSDDoubleSegmentedControlTableViewCell *)&v10 layoutSubviews];
  [(TSDDoubleSegmentedControlTableViewCell *)self setBackgroundView:0];
  [(TSKSegmentedControl *)self->mLeftSegmentedControl frame];
  [(TSKSegmentedControl *)self->mLeftSegmentedControl setFrame:-1.0];
  [(TSKSegmentedControl *)self->mRightSegmentedControl frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [-[TSDDoubleSegmentedControlTableViewCell contentView](self "contentView")];
  [(TSKSegmentedControl *)self->mRightSegmentedControl setFrame:v9 - v6 + 3.0, v4, v6, v8];
}

@end
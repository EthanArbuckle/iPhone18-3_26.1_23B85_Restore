@interface TLKContentsView
+ (id)detailsLabel;
- (TLKContentsView)init;
- (void)updateWithTitle:(id)a3 contents:(id)a4;
@end

@implementation TLKContentsView

- (TLKContentsView)init
{
  v8.receiver = self;
  v8.super_class = TLKContentsView;
  v2 = [(TLKContentsView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(TLKStackView *)v2 setAxis:1];
    v4 = objc_opt_new();
    v5 = +[TLKFontUtilities shortSubheadBoldFont];
    [v4 setFont:v5];

    [(TLKContentsView *)v3 setTitleLabel:v4];
    [(TLKStackView *)v3 addArrangedSubview:v4];
    [(NUIContainerStackView *)v3 setCustomSpacing:v4 afterView:4.0];
    v6 = objc_opt_new();
    [(TLKContentsView *)v3 setDetailsLabels:v6];
  }

  return v3;
}

+ (id)detailsLabel
{
  v2 = objc_opt_new();
  v3 = +[TLKFontUtilities shortFootnoteFont];
  [v2 setFont:v3];

  [v2 setLineBreakMode:0];

  return v2;
}

- (void)updateWithTitle:(id)a3 contents:(id)a4
{
  v30 = a3;
  v6 = a4;
  v7 = [(TLKContentsView *)self titleLabel];
  [v7 setMultilineText:v30];

  v8 = [v30 text];
  v9 = [(TLKContentsView *)self titleLabel];
  [v9 setHidden:v8 == 0];

  v10 = [v6 count];
  v11 = [(TLKContentsView *)self detailsLabels];
  v12 = [v11 count];

  if (v10 != v12)
  {
    v17 = [v6 count];
    v18 = [(TLKContentsView *)self detailsLabels];
    v19 = [v18 count];

    if (v17 <= v19)
    {
      for (i = [v6 count]; ; ++i)
      {
        v26 = [(TLKContentsView *)self detailsLabels];
        v27 = [v26 count];

        if (i >= v27)
        {
          break;
        }

        v28 = [(TLKContentsView *)self detailsLabels];
        v29 = [v28 objectAtIndexedSubscript:i];
        [v29 setHidden:1];
      }
    }

    else
    {
      while (1)
      {
        v20 = [(TLKContentsView *)self detailsLabels];
        v21 = [v20 count];
        v22 = [v6 count];

        if (v21 >= v22)
        {
          break;
        }

        v23 = [objc_opt_class() detailsLabel];
        v24 = [(TLKContentsView *)self detailsLabels];
        [v24 addObject:v23];

        [(TLKStackView *)self addArrangedSubview:v23];
      }
    }
  }

  if ([v6 count])
  {
    v13 = 0;
    do
    {
      v14 = [v6 objectAtIndexedSubscript:v13];
      v15 = [(TLKContentsView *)self detailsLabels];
      v16 = [v15 objectAtIndexedSubscript:v13];
      [v16 setMultilineText:v14];

      ++v13;
    }

    while (v13 < [v6 count]);
  }
}

@end
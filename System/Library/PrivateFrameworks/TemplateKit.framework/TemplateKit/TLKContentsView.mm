@interface TLKContentsView
+ (id)detailsLabel;
- (TLKContentsView)init;
- (void)updateWithTitle:(id)title contents:(id)contents;
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

- (void)updateWithTitle:(id)title contents:(id)contents
{
  titleCopy = title;
  contentsCopy = contents;
  titleLabel = [(TLKContentsView *)self titleLabel];
  [titleLabel setMultilineText:titleCopy];

  text = [titleCopy text];
  titleLabel2 = [(TLKContentsView *)self titleLabel];
  [titleLabel2 setHidden:text == 0];

  v10 = [contentsCopy count];
  detailsLabels = [(TLKContentsView *)self detailsLabels];
  v12 = [detailsLabels count];

  if (v10 != v12)
  {
    v17 = [contentsCopy count];
    detailsLabels2 = [(TLKContentsView *)self detailsLabels];
    v19 = [detailsLabels2 count];

    if (v17 <= v19)
    {
      for (i = [contentsCopy count]; ; ++i)
      {
        detailsLabels3 = [(TLKContentsView *)self detailsLabels];
        v27 = [detailsLabels3 count];

        if (i >= v27)
        {
          break;
        }

        detailsLabels4 = [(TLKContentsView *)self detailsLabels];
        v29 = [detailsLabels4 objectAtIndexedSubscript:i];
        [v29 setHidden:1];
      }
    }

    else
    {
      while (1)
      {
        detailsLabels5 = [(TLKContentsView *)self detailsLabels];
        v21 = [detailsLabels5 count];
        v22 = [contentsCopy count];

        if (v21 >= v22)
        {
          break;
        }

        detailsLabel = [objc_opt_class() detailsLabel];
        detailsLabels6 = [(TLKContentsView *)self detailsLabels];
        [detailsLabels6 addObject:detailsLabel];

        [(TLKStackView *)self addArrangedSubview:detailsLabel];
      }
    }
  }

  if ([contentsCopy count])
  {
    v13 = 0;
    do
    {
      v14 = [contentsCopy objectAtIndexedSubscript:v13];
      detailsLabels7 = [(TLKContentsView *)self detailsLabels];
      v16 = [detailsLabels7 objectAtIndexedSubscript:v13];
      [v16 setMultilineText:v14];

      ++v13;
    }

    while (v13 < [contentsCopy count]);
  }
}

@end
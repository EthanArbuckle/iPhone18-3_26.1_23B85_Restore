@interface TLKContentsContainerView
- (TLKContentsContainerView)init;
- (void)updateWithContents:(id)contents;
@end

@implementation TLKContentsContainerView

- (TLKContentsContainerView)init
{
  v5.receiver = self;
  v5.super_class = TLKContentsContainerView;
  v2 = [(TLKContentsContainerView *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(TLKContentsContainerView *)v2 setContentsViews:v3];

    [(TLKStackView *)v2 setAxis:1];
    [(NUIContainerStackView *)v2 setSpacing:14.0];
  }

  return v2;
}

- (void)updateWithContents:(id)contents
{
  contentsCopy = contents;
  v4 = [contentsCopy count];
  contentsViews = [(TLKContentsContainerView *)self contentsViews];
  v6 = [contentsViews count];

  if (v4 != v6)
  {
    v14 = [contentsCopy count];
    contentsViews2 = [(TLKContentsContainerView *)self contentsViews];
    v16 = [contentsViews2 count];

    if (v14 <= v16)
    {
      for (i = [contentsCopy count]; ; ++i)
      {
        contentsViews3 = [(TLKContentsContainerView *)self contentsViews];
        v27 = [contentsViews3 count];

        if (i >= v27)
        {
          break;
        }

        contentsViews4 = [(TLKContentsContainerView *)self contentsViews];
        v29 = [contentsViews4 objectAtIndexedSubscript:i];
        [v29 setHidden:1];
      }
    }

    else
    {
      contentsViews5 = [(TLKContentsContainerView *)self contentsViews];
      v18 = [contentsViews5 count];
      v19 = [contentsCopy count];

      if (v18 < v19)
      {
        do
        {
          v20 = objc_opt_new();
          contentsViews6 = [(TLKContentsContainerView *)self contentsViews];
          [contentsViews6 addObject:v20];

          [(TLKStackView *)self addArrangedSubview:v20];
          contentsViews7 = [(TLKContentsContainerView *)self contentsViews];
          v23 = [contentsViews7 count];
          v24 = [contentsCopy count];
        }

        while (v23 < v24);
      }
    }
  }

  if ([contentsCopy count])
  {
    v7 = 0;
    do
    {
      contentsViews8 = [(TLKContentsContainerView *)self contentsViews];
      v9 = [contentsViews8 objectAtIndexedSubscript:v7];
      v10 = [contentsCopy objectAtIndexedSubscript:v7];
      title = [v10 title];
      v12 = [contentsCopy objectAtIndexedSubscript:v7];
      details = [v12 details];
      [v9 updateWithTitle:title contents:details];

      ++v7;
    }

    while (v7 < [contentsCopy count]);
  }
}

@end
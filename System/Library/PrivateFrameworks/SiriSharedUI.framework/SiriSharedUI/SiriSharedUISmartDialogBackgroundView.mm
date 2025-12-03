@interface SiriSharedUISmartDialogBackgroundView
- (void)setContinuousCornerRadius:(double)radius;
- (void)setFrame:(CGRect)frame;
@end

@implementation SiriSharedUISmartDialogBackgroundView

- (void)setContinuousCornerRadius:(double)radius
{
  v17 = *MEMORY[0x277D85DE8];
  [(SiriSharedUISmartDialogBackgroundView *)self _setContinuousCornerRadius:?];
  contentView = [(SiriSharedUISmartDialogBackgroundView *)self contentView];
  [contentView _setContinuousCornerRadius:radius];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  contentView2 = [(SiriSharedUISmartDialogBackgroundView *)self contentView];
  subviews = [contentView2 subviews];

  v8 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v12 + 1) + 8 * v11++) _setContinuousCornerRadius:radius];
      }

      while (v9 != v11);
      v9 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setFrame:(CGRect)frame
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SiriSharedUISmartDialogBackgroundView;
  [(SiriSharedUISmartDialogBackgroundView *)&v15 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  contentView = [(SiriSharedUISmartDialogBackgroundView *)self contentView];
  subviews = [contentView subviews];

  v6 = [subviews countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        [(SiriSharedUISmartDialogBackgroundView *)self bounds];
        [v10 setFrame:?];
        ++v9;
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

@end
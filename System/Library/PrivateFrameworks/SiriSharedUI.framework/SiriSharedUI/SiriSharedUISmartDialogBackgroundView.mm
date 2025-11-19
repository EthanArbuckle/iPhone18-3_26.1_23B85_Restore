@interface SiriSharedUISmartDialogBackgroundView
- (void)setContinuousCornerRadius:(double)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation SiriSharedUISmartDialogBackgroundView

- (void)setContinuousCornerRadius:(double)a3
{
  v17 = *MEMORY[0x277D85DE8];
  [(SiriSharedUISmartDialogBackgroundView *)self _setContinuousCornerRadius:?];
  v5 = [(SiriSharedUISmartDialogBackgroundView *)self contentView];
  [v5 _setContinuousCornerRadius:a3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(SiriSharedUISmartDialogBackgroundView *)self contentView];
  v7 = [v6 subviews];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) _setContinuousCornerRadius:a3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setFrame:(CGRect)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SiriSharedUISmartDialogBackgroundView;
  [(SiriSharedUISmartDialogBackgroundView *)&v15 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(SiriSharedUISmartDialogBackgroundView *)self contentView];
  v5 = [v4 subviews];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        [(SiriSharedUISmartDialogBackgroundView *)self bounds];
        [v10 setFrame:?];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

@end
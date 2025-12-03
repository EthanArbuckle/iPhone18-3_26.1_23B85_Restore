@interface PLImageScrollView
- (PLImageScrollView)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
- (void)willAnimateRotationToInterfaceOrientation:(id)orientation;
@end

@implementation PLImageScrollView

- (void)willAnimateRotationToInterfaceOrientation:(id)orientation
{
  [(PLImageScrollView *)self zoomScale];
  v6 = v5;
  [(PLImageScrollView *)self contentOffset];
  v8 = v7;
  v10 = v9;
  v11.receiver = self;
  v11.super_class = PLImageScrollView;
  [(PLImageScrollView *)&v11 willAnimateRotationToInterfaceOrientation:orientation];
  if ([(PLImageScrollView *)self adjustZoomScaleAfterRotation])
  {
    [(PLImageScrollView *)self setZoomScale:v6];
    [(PLImageScrollView *)self setContentOffset:v8, v10];
  }
}

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = PLImageScrollView;
  [(PLImageScrollView *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (PLImageScrollView)initWithFrame:(CGRect)frame
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = PLImageScrollView;
  v3 = [(PLImageScrollView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLImageScrollView *)v3 setScrollsToTop:0];
    [(PLImageScrollView *)v4 setDecelerationRate:*MEMORY[0x277D76EB8]];
    [(PLImageScrollView *)v4 setExclusiveTouch:1];
    v4->_adjustZoomScaleAfterRotation = 0;
  }

  v5 = [-[PLImageScrollView interactions](v4 "interactions")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        NSClassFromString(&cfstr_Uiscrollpocket.isa);
        if (objc_opt_isKindOfClass())
        {
          [(PLImageScrollView *)v4 removeInteraction:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

@end
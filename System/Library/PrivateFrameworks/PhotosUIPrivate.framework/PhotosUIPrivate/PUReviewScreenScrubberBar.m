@interface PUReviewScreenScrubberBar
- (void)layoutSubviews;
- (void)setScrubber:(id)a3;
@end

@implementation PUReviewScreenScrubberBar

- (void)setScrubber:(id)a3
{
  v5 = a3;
  scrubber = self->_scrubber;
  if (scrubber != v5)
  {
    v8 = v5;
    v7 = [(PUScrubberView *)scrubber superview];

    if (v7 == self)
    {
      [(PUScrubberView *)self->_scrubber removeFromSuperview];
    }

    objc_storeStrong(&self->_scrubber, a3);
    scrubber = [(PUReviewScreenScrubberBar *)self addSubview:self->_scrubber];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](scrubber, v5);
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PUReviewScreenScrubberBar;
  [(PUReviewScreenScrubberBar *)&v12 layoutSubviews];
  v3 = [(PUReviewScreenScrubberBar *)self scrubber];
  [(PUReviewScreenScrubberBar *)self bounds];
  v5 = v4;
  v7 = v6;
  [(PUReviewScreenScrubberBar *)self safeAreaInsets];
  v9 = v8;
  v10 = +[PUScrubberSettings sharedInstance];
  [v10 topOutset];
  [v3 setFrame:{0.0, -v11, v5, v7 + v11 - v9}];
}

@end
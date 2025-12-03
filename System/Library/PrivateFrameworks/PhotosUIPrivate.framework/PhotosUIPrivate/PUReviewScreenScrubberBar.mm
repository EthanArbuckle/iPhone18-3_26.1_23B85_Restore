@interface PUReviewScreenScrubberBar
- (void)layoutSubviews;
- (void)setScrubber:(id)scrubber;
@end

@implementation PUReviewScreenScrubberBar

- (void)setScrubber:(id)scrubber
{
  scrubberCopy = scrubber;
  scrubber = self->_scrubber;
  if (scrubber != scrubberCopy)
  {
    v8 = scrubberCopy;
    superview = [(PUScrubberView *)scrubber superview];

    if (superview == self)
    {
      [(PUScrubberView *)self->_scrubber removeFromSuperview];
    }

    objc_storeStrong(&self->_scrubber, scrubber);
    scrubber = [(PUReviewScreenScrubberBar *)self addSubview:self->_scrubber];
    scrubberCopy = v8;
  }

  MEMORY[0x1EEE66BB8](scrubber, scrubberCopy);
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PUReviewScreenScrubberBar;
  [(PUReviewScreenScrubberBar *)&v12 layoutSubviews];
  scrubber = [(PUReviewScreenScrubberBar *)self scrubber];
  [(PUReviewScreenScrubberBar *)self bounds];
  v5 = v4;
  v7 = v6;
  [(PUReviewScreenScrubberBar *)self safeAreaInsets];
  v9 = v8;
  v10 = +[PUScrubberSettings sharedInstance];
  [v10 topOutset];
  [scrubber setFrame:{0.0, -v11, v5, v7 + v11 - v9}];
}

@end
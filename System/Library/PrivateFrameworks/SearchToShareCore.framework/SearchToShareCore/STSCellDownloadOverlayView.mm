@interface STSCellDownloadOverlayView
- (STSCellDownloadOverlayView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation STSCellDownloadOverlayView

- (STSCellDownloadOverlayView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = STSCellDownloadOverlayView;
  v3 = [(STSCellDownloadOverlayView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [(STSCellDownloadOverlayView *)v3 setBackgroundColor:v4];

    v5 = [STSRoundProgressView alloc];
    v6 = [(STSRoundProgressView *)v5 initWithFrame:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    progressView = v3->_progressView;
    v3->_progressView = v6;

    [(STSCellDownloadOverlayView *)v3 addSubview:v3->_progressView];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(STSCellDownloadOverlayView *)self bounds];
  UIRectCenteredIntegralRectScale();
  progressView = self->_progressView;

  [(STSRoundProgressView *)progressView setFrame:?];
}

@end
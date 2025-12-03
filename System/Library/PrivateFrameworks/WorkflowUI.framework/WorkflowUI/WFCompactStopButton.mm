@interface WFCompactStopButton
- (WFCompactStopButton)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)handleTouchUpInside;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setProgress:(id)progress;
- (void)transitionToCompleted:(BOOL)completed animated:(BOOL)animated;
@end

@implementation WFCompactStopButton

- (void)transitionToCompleted:(BOOL)completed animated:(BOOL)animated
{
  animatedCopy = animated;
  completedCopy = completed;
  progressView = [(WFCompactStopButton *)self progressView];
  [progressView transitionToState:completedCopy animated:animatedCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (progressContext == context)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__WFCompactStopButton_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279EE8A78;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFCompactStopButton;
    [(WFCompactStopButton *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

void __70__WFCompactStopButton_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) progress];
  [v5 fractionCompleted];
  v3 = v2;
  v4 = [*(a1 + 32) progressView];
  [v4 setFractionCompleted:v3];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v7.receiver = self;
  v7.super_class = WFCompactStopButton;
  [(WFCompactStopButton *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__WFCompactStopButton_setHighlighted___block_invoke;
  v5[3] = &unk_279EE8AA0;
  v5[4] = self;
  highlightedCopy = highlighted;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.200000003];
}

void __38__WFCompactStopButton_setHighlighted___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.466666669;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) progressView];
  [v2 setAlpha:v1];
}

- (void)handleTouchUpInside
{
  progress = [(WFCompactStopButton *)self progress];
  [progress cancel];
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted" context:progressContext];
  progress = self->_progress;
  self->_progress = progressCopy;
  v6 = progressCopy;

  [(NSProgress *)v6 addObserver:self forKeyPath:@"fractionCompleted" options:0 context:progressContext];
}

- (void)dealloc
{
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted" context:progressContext];
  v3.receiver = self;
  v3.super_class = WFCompactStopButton;
  [(WFCompactStopButton *)&v3 dealloc];
}

- (WFCompactStopButton)initWithFrame:(CGRect)frame
{
  v26[4] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = WFCompactStopButton;
  v3 = [(WFCompactStopButton *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D7D808]);
    [v4 setStopSize:12.0];
    [v4 setProgressStrokeWidth:3.0];
    [v4 setUserInteractionEnabled:0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    v6 = [labelColor colorWithAlphaComponent:0.800000012];
    [v4 setTintColor:v6];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFCompactStopButton *)v3 addSubview:v4];
    [(WFCompactStopButton *)v3 sendSubviewToBack:v4];
    progressView = v3->_progressView;
    v3->_progressView = v4;
    v8 = v4;

    v19 = MEMORY[0x277CCAAD0];
    topAnchor = [v8 topAnchor];
    topAnchor2 = [(WFCompactStopButton *)v3 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[0] = v22;
    leadingAnchor = [v8 leadingAnchor];
    leadingAnchor2 = [(WFCompactStopButton *)v3 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v26[1] = v9;
    trailingAnchor = [v8 trailingAnchor];
    trailingAnchor2 = [(WFCompactStopButton *)v3 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[2] = v12;
    bottomAnchor = [v8 bottomAnchor];
    bottomAnchor2 = [(WFCompactStopButton *)v3 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
    [v19 activateConstraints:v16];

    [(WFCompactStopButton *)v3 addTarget:v3 action:sel_handleTouchUpInside forControlEvents:64];
    v17 = v3;
  }

  return v3;
}

@end
@interface WFCompactStopButton
- (WFCompactStopButton)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)handleTouchUpInside;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setHighlighted:(BOOL)a3;
- (void)setProgress:(id)a3;
- (void)transitionToCompleted:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation WFCompactStopButton

- (void)transitionToCompleted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(WFCompactStopButton *)self progressView];
  [v6 transitionToState:v5 animated:v4];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (progressContext == a6)
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
    [(WFCompactStopButton *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
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

- (void)setHighlighted:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WFCompactStopButton;
  [(WFCompactStopButton *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__WFCompactStopButton_setHighlighted___block_invoke;
  v5[3] = &unk_279EE8AA0;
  v5[4] = self;
  v6 = a3;
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
  v2 = [(WFCompactStopButton *)self progress];
  [v2 cancel];
}

- (void)setProgress:(id)a3
{
  v4 = a3;
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted" context:progressContext];
  progress = self->_progress;
  self->_progress = v4;
  v6 = v4;

  [(NSProgress *)v6 addObserver:self forKeyPath:@"fractionCompleted" options:0 context:progressContext];
}

- (void)dealloc
{
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted" context:progressContext];
  v3.receiver = self;
  v3.super_class = WFCompactStopButton;
  [(WFCompactStopButton *)&v3 dealloc];
}

- (WFCompactStopButton)initWithFrame:(CGRect)a3
{
  v26[4] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = WFCompactStopButton;
  v3 = [(WFCompactStopButton *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D7D808]);
    [v4 setStopSize:12.0];
    [v4 setProgressStrokeWidth:3.0];
    [v4 setUserInteractionEnabled:0];
    v5 = [MEMORY[0x277D75348] labelColor];
    v6 = [v5 colorWithAlphaComponent:0.800000012];
    [v4 setTintColor:v6];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFCompactStopButton *)v3 addSubview:v4];
    [(WFCompactStopButton *)v3 sendSubviewToBack:v4];
    progressView = v3->_progressView;
    v3->_progressView = v4;
    v8 = v4;

    v19 = MEMORY[0x277CCAAD0];
    v24 = [v8 topAnchor];
    v23 = [(WFCompactStopButton *)v3 topAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v26[0] = v22;
    v21 = [v8 leadingAnchor];
    v20 = [(WFCompactStopButton *)v3 leadingAnchor];
    v9 = [v21 constraintEqualToAnchor:v20];
    v26[1] = v9;
    v10 = [v8 trailingAnchor];
    v11 = [(WFCompactStopButton *)v3 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v26[2] = v12;
    v13 = [v8 bottomAnchor];
    v14 = [(WFCompactStopButton *)v3 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v26[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
    [v19 activateConstraints:v16];

    [(WFCompactStopButton *)v3 addTarget:v3 action:sel_handleTouchUpInside forControlEvents:64];
    v17 = v3;
  }

  return v3;
}

@end
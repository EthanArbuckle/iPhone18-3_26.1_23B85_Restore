@interface SiriUIProgressBarView
- (SiriUIProgressBarView)initWithFrame:(CGRect)a3;
- (void)beginProgressAnimationWithDuration:(double)a3;
- (void)layoutSubviews;
@end

@implementation SiriUIProgressBarView

- (SiriUIProgressBarView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = SiriUIProgressBarView;
  v3 = [(SiriUIProgressBarView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    progressBar = v3->_progressBar;
    v3->_progressBar = v5;

    v7 = v3->_progressBar;
    v8 = [MEMORY[0x277D75348] labelColor];
    v9 = [v8 colorWithAlphaComponent:0.3];
    [(UIView *)v7 setBackgroundColor:v9];

    [(SiriUIProgressBarView *)v3 addSubview:v3->_progressBar];
    [(SiriUIProgressBarView *)v3 setClipsToBounds:1];
    v3->_progressState = 0;
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriUIProgressBarView;
  [(SiriUIProgressBarView *)&v4 layoutSubviews];
  [(SiriUIProgressBarView *)self bounds];
  progressState = self->_progressState;
  if (progressState != 1)
  {
    [(UIView *)self->_progressBar setFrame:?];
  }
}

- (void)beginProgressAnimationWithDuration:(double)a3
{
  if (!self->_progressState)
  {
    v6[5] = v3;
    v6[6] = v4;
    self->_progressState = 1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__SiriUIProgressBarView_beginProgressAnimationWithDuration___block_invoke;
    v6[3] = &unk_279C59D78;
    v6[4] = self;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__SiriUIProgressBarView_beginProgressAnimationWithDuration___block_invoke_2;
    v5[3] = &unk_279C59DF0;
    v5[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5 completion:a3];
  }
}

uint64_t __60__SiriUIProgressBarView_beginProgressAnimationWithDuration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[51];
  [v1 bounds];

  return [v2 setFrame:?];
}

@end
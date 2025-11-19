@interface PNPWizardScratchpadCanvasView
- (PKCanvasViewDelegate)delegate;
- (PNPWizardScratchpadCanvasView)initWithFrame:(CGRect)a3;
- (void)_playClearAnimationWithImage:(id)a3;
- (void)clearDrawingAnimated;
- (void)layoutSubviews;
- (void)prepareCanvasView;
- (void)setDelegate:(id)a3;
- (void)setInk:(id)a3;
@end

@implementation PNPWizardScratchpadCanvasView

- (void)layoutSubviews
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = PNPWizardScratchpadCanvasView;
  [(PNPWizardScratchpadCanvasView *)&v17 layoutSubviews];
  canvasView = self->_canvasView;
  [(PNPWizardScratchpadCanvasView *)self bounds];
  [(PKCanvasView *)canvasView setFrame:?];
  v4 = self->_canvasView;
  if ([(PNPWizardScratchpadCanvasView *)self showingSnapshot])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [(PKCanvasView *)v4 setAlpha:v5];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_snapshotImageViews;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        [(PNPWizardScratchpadCanvasView *)self bounds];
        [v11 setFrame:?];
        if ([(PNPWizardScratchpadCanvasView *)self showingSnapshot])
        {
          v12 = 1.0;
        }

        else
        {
          v12 = 0.0;
        }

        [v11 setAlpha:v12];
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)_playClearAnimationWithImage:(id)a3
{
  v4 = MEMORY[0x277D755E8];
  v5 = a3;
  v6 = [[v4 alloc] initWithImage:v5];

  [(NSMutableArray *)self->_snapshotImageViews addObject:v6];
  [(PNPWizardScratchpadCanvasView *)self addSubview:v6];
  [(PNPWizardScratchpadCanvasView *)self setShowingSnapshot:1];
  canvasView = self->_canvasView;
  v8 = objc_opt_new();
  [(PKCanvasView *)canvasView setDrawing:v8];

  [(PNPWizardScratchpadCanvasView *)self layoutIfNeeded];
  v9 = MEMORY[0x277D75D18];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__PNPWizardScratchpadCanvasView__playClearAnimationWithImage___block_invoke;
  v14[3] = &unk_279A0A060;
  v14[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PNPWizardScratchpadCanvasView__playClearAnimationWithImage___block_invoke_2;
  v11[3] = &unk_279A0A218;
  v12 = v6;
  v13 = self;
  v10 = v6;
  [v9 _animateUsingDefaultTimingWithOptions:0 animations:v14 completion:v11];
}

uint64_t __62__PNPWizardScratchpadCanvasView__playClearAnimationWithImage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShowingSnapshot:0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __62__PNPWizardScratchpadCanvasView__playClearAnimationWithImage___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(*(a1 + 40) + 408) removeObject:*(a1 + 32)];
  v2 = *(a1 + 40);

  return [v2 setNeedsLayout];
}

- (void)clearDrawingAnimated
{
  [(PNPWizardScratchpadCanvasView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(PNPWizardScratchpadCanvasView *)self traitCollection];
  [v7 displayScale];
  v9 = v8;

  v10 = [objc_alloc(MEMORY[0x277CD9630]) initWithSize:v4 scale:{v6, v9}];
  v11 = [(PNPWizardScratchpadCanvasView *)self traitCollection];
  [v10 setInvertColors:{objc_msgSend(v11, "userInterfaceStyle") == 2}];

  v12 = [(PKCanvasView *)self->_canvasView drawing];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__PNPWizardScratchpadCanvasView_clearDrawingAnimated__block_invoke;
  v13[3] = &unk_279A0A240;
  v13[4] = self;
  [v10 renderDrawing:v12 completion:v13];
}

void __53__PNPWizardScratchpadCanvasView_clearDrawingAnimated__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__PNPWizardScratchpadCanvasView_clearDrawingAnimated__block_invoke_2;
  v5[3] = &unk_279A0A1F0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (void)setInk:(id)a3
{
  objc_storeStrong(&self->_ink, a3);
  v5 = a3;
  [(PKCanvasView *)self->_canvasView setInk:v5];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_canvasViewDelegate, v4);
  [(PKCanvasView *)self->_canvasView setDelegate:v4];
}

- (PKCanvasViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasViewDelegate);

  return WeakRetained;
}

- (PNPWizardScratchpadCanvasView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PNPWizardScratchpadCanvasView;
  v3 = [(PNPWizardScratchpadCanvasView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [MEMORY[0x277CBEB18] array];
  snapshotImageViews = v3->_snapshotImageViews;
  v3->_snapshotImageViews = v4;

  return v3;
}

- (void)prepareCanvasView
{
  if (!self->_canvasView)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD95F0]);
    canvasView = self->_canvasView;
    self->_canvasView = v3;

    [(PKCanvasView *)self->_canvasView setOpaque:0];
    [(PNPWizardScratchpadCanvasView *)self addSubview:self->_canvasView];
    [(PKCanvasView *)self->_canvasView setInk:self->_ink];
    v5 = self->_canvasView;
    WeakRetained = objc_loadWeakRetained(&self->_canvasViewDelegate);
    [(PKCanvasView *)v5 setDelegate:WeakRetained];
  }
}

@end
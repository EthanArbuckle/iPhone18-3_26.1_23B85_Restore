@interface CACDictationRecognizerModeOverlayManager
- (CACDictationRecognizerModeOverlayManagerDelegate)delegate;
- (void)setDelegate:(id)a3;
- (void)showOverlayForDictiationRecognizerMode;
@end

@implementation CACDictationRecognizerModeOverlayManager

- (void)showOverlayForDictiationRecognizerMode
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __82__CACDictationRecognizerModeOverlayManager_showOverlayForDictiationRecognizerMode__block_invoke_2;
  v2[3] = &unk_279CEB618;
  v2[4] = self;
  [(CACSimpleContentViewManager *)self showViewControllerWithCreationHandler:&__block_literal_global_1 updateHandler:v2];
}

CACDictationRecognizerModeOverlayViewController *__82__CACDictationRecognizerModeOverlayManager_showOverlayForDictiationRecognizerMode__block_invoke()
{
  v0 = objc_alloc_init(CACDictationRecognizerModeOverlayViewController);

  return v0;
}

void __82__CACDictationRecognizerModeOverlayManager_showOverlayForDictiationRecognizerMode__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v4 setDictationRecognizerMode:{objc_msgSend(v5, "modeForDictationRecognizerModeOverlayManager:", *(a1 + 32))}];

  v6 = [*(a1 + 32) delegate];
  [v6 imageRectForDictationRecognizerModeOverlayManager:*(a1 + 32)];
  [v4 setImageRect:?];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(CACSimpleContentViewManager *)self setContentViewManagerDelegate:obj];
  }
}

- (CACDictationRecognizerModeOverlayManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
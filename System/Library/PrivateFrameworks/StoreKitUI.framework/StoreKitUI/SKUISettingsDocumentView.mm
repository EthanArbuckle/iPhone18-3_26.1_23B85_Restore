@interface SKUISettingsDocumentView
- (SKUISettingsDocumentViewDelegate)delegate;
- (void)tintColorDidChange;
@end

@implementation SKUISettingsDocumentView

- (void)tintColorDidChange
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingsDocumentView tintColorDidChange]";
}

- (SKUISettingsDocumentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
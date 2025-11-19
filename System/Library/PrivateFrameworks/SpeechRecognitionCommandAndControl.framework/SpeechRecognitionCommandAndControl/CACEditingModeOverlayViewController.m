@interface CACEditingModeOverlayViewController
- (void)_syncUI;
- (void)loadView;
- (void)setElements:(id)a3;
@end

@implementation CACEditingModeOverlayViewController

- (void)loadView
{
  v3 = objc_alloc_init(CACEditingModeOverlayWordsView);
  [(CACEditingModeOverlayViewController *)self setView:v3];
  wordsView = self->_wordsView;
  self->_wordsView = v3;

  [(CACEditingModeOverlayViewController *)self _syncUI];
}

- (void)setElements:(id)a3
{
  objc_storeStrong(&self->_elements, a3);

  [(CACEditingModeOverlayViewController *)self _syncUI];
}

- (void)_syncUI
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_elements;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_opt_new();
        v11 = [v9 label];
        [v10 setLabel:v11];

        [v9 interfaceOrientedFrame];
        [v10 setFrame:?];
        [v3 addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(CACEditingModeOverlayWordsView *)self->_wordsView setOverlayType:self->_overlayType];
  [(CACEditingModeOverlayWordsView *)self->_wordsView setLabels:v3];
}

@end
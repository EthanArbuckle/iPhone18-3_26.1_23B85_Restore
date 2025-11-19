@interface SFShareAudioBringCloseViewController
- (void)_cycleProductImage;
- (void)eventCancel:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SFShareAudioBringCloseViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioBringCloseViewController viewWillAppear:];
  }

  v11.receiver = self;
  v11.super_class = SFShareAudioBringCloseViewController;
  [(SFShareAudioBaseViewController *)&v11 viewWillAppear:v3];
  v5 = [(SFShareAudioViewController *)self->super._mainController mainBundle];
  v6 = SFLocalizedStringEx();
  [(UILabel *)self->super._titleLabel setText:v6];

  v7 = SFAddSuffixForCurrentDeviceClass();
  v8 = SFLocalizedStringEx();
  [(UILabel *)self->_infoLabel setText:v8];

  [(SFShareAudioBringCloseViewController *)self _cycleProductImage];
  cancelButton = self->_cancelButton;
  v10 = SFLocalizedStringForKey();
  [(UIButton *)cancelButton setTitle:v10 forState:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioBringCloseViewController viewWillDisappear:];
  }

  v8.receiver = self;
  v8.super_class = SFShareAudioBringCloseViewController;
  [(SFShareAudioBaseViewController *)&v8 viewWillDisappear:v3];
  cycleImageTimer = self->_cycleImageTimer;
  if (cycleImageTimer)
  {
    v6 = cycleImageTimer;
    dispatch_source_cancel(v6);
    v7 = self->_cycleImageTimer;
    self->_cycleImageTimer = 0;
  }
}

- (void)eventCancel:(id)a3
{
  v4 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioBringCloseViewController eventCancel:];
  }

  [(SFShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)_cycleProductImage
{
  v30 = *MEMORY[0x1E69E9840];
  if (!self->_cycleImageArray)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cycleImageArray = self->_cycleImageArray;
    self->_cycleImageArray = v3;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [&unk_1F37F3FF0 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      do
      {
        v8 = 0;
        do
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(&unk_1F37F3FF0);
          }

          v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:*(*(&v25 + 1) + 8 * v8)];
          [(NSMutableArray *)self->_cycleImageArray addObject:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [&unk_1F37F3FF0 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    v10 = MEMORY[0x1E69DCAD8];
    v11 = [MEMORY[0x1E69DC888] whiteColor];
    v12 = [v10 configurationWithHierarchicalColor:v11];

    v13 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:2 scale:120.0];
    v14 = [v12 configurationByApplyingConfiguration:v13];
    [(UIImageView *)self->_shareImageView setPreferredSymbolConfiguration:v14];
    v15 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)self->_shareImageView setTintColor:v15];
  }

  if (self->_cycleImageTimer)
  {
    v16 = [MEMORY[0x1E6979538] animation];
    [v16 setDuration:0.5];
    [v16 setType:*MEMORY[0x1E697A050]];
    [v16 setSubtype:*MEMORY[0x1E697A040]];
    v17 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v16 setTimingFunction:v17];

    v18 = [(UIImageView *)self->_shareImageView layer];
    [v18 addAnimation:v16 forKey:0];
  }

  else
  {
    v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    cycleImageTimer = self->_cycleImageTimer;
    self->_cycleImageTimer = v19;
    v16 = v19;

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __58__SFShareAudioBringCloseViewController__cycleProductImage__block_invoke;
    handler[3] = &unk_1E7EE3720;
    handler[4] = self;
    dispatch_source_set_event_handler(v16, handler);
    CUDispatchTimerSet();
    dispatch_activate(v16);
  }

  cycleNextIndex = self->_cycleNextIndex;
  if ([(NSMutableArray *)self->_cycleImageArray count]> cycleNextIndex)
  {
    v22 = self->_cycleImageArray;
    ++self->_cycleNextIndex;
    v23 = [(NSMutableArray *)v22 objectAtIndexedSubscript:?];
    [(UIImageView *)self->_shareImageView setImage:v23];

    self->_cycleNextIndex %= [(NSMutableArray *)self->_cycleImageArray count];
  }
}

@end
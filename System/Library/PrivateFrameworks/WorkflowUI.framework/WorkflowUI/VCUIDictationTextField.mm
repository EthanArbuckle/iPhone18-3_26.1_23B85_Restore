@interface VCUIDictationTextField
- (CGSize)intrinsicContentSize;
- (id)placeholderLabel;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setAttributedPlaceholder:(id)placeholder;
- (void)startDictation;
@end

@implementation VCUIDictationTextField

- (void)startDictation
{
  [(VCUIDictationTextField *)self becomeFirstResponder];
  mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
  [mEMORY[0x277D75688] switchToDictationInputMode];
}

- (CGSize)intrinsicContentSize
{
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
  [v3 lineHeight];
  v5 = v4 * 3.25;

  placeholderLabel = [(VCUIDictationTextField *)self placeholderLabel];
  text = [(VCUIDictationTextField *)self text];
  v8 = [text length];

  [(VCUIDictationTextField *)self bounds];
  if (v8 || !placeholderLabel)
  {
    [(VCUIDictationTextField *)self sizeThatFits:v9, v5];
    v11 = v16;
    v15 = v17;
  }

  else
  {
    [placeholderLabel sizeThatFits:{v9, v5}];
    v11 = v10;
    v13 = v12;
    +[VCUIDictationTextField bottomPadding];
    v15 = v13 + v14;
  }

  v18 = v11;
  v19 = v15;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = VCUIDictationTextField;
  [(VCUIDictationTextField *)&v10 layoutSubviews];
  placeholderLabel = [(VCUIDictationTextField *)self placeholderLabel];
  v4 = placeholderLabel;
  if (placeholderLabel)
  {
    [placeholderLabel frame];
    v6 = v5;
    v8 = v7;
    +[VCUIDictationTextField bottomPadding];
    [v4 setFrame:{0.0, 0.0, v6, v8 + v9}];
  }
}

- (id)placeholderLabel
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  subviews = [(VCUIDictationTextField *)self subviews];
  v3 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(subviews);
      }

      v7 = *(*(&v9 + 1) + 8 * v6);
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v7 = 0;
  }

  return v7;
}

- (void)setAttributedPlaceholder:(id)placeholder
{
  v5.receiver = self;
  v5.super_class = VCUIDictationTextField;
  [(VCUIDictationTextField *)&v5 setAttributedPlaceholder:placeholder];
  placeholderLabel = [(VCUIDictationTextField *)self placeholderLabel];
  if (placeholderLabel)
  {
    [placeholderLabel setTextAlignment:{-[VCUIDictationTextField textAlignment](self, "textAlignment")}];
  }
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = VCUIDictationTextField;
  [(VCUIDictationTextField *)&v4 didMoveToSuperview];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_dictationDidFinish_ name:*MEMORY[0x277D76888] object:0];

  if ([(VCUIDictationTextField *)self conformsToProtocol:&unk_28840E128])
  {
    [(VCUIDictationTextField *)self setAcceptsDictationSearchResults:1];
  }
}

@end
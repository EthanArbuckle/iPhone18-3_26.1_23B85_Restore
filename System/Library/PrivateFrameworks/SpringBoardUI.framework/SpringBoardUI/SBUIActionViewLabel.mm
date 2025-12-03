@interface SBUIActionViewLabel
- (SBUIActionViewLabel)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)alignmentRectInsets;
- (void)mt_removeAllVisualStyling;
- (void)setFont:(id)font;
- (void)setLineBreakMode:(int64_t)mode;
- (void)setNumberOfLines:(int64_t)lines;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
@end

@implementation SBUIActionViewLabel

- (SBUIActionViewLabel)initWithFrame:(CGRect)frame
{
  v19[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SBUIActionViewLabel;
  v3 = [(SBUIActionViewLabel *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v5;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBUIActionViewLabel *)v3 addSubview:v3->_label];
    v7 = MEMORY[0x277CCAAD0];
    v18 = @"label";
    v19[0] = v3->_label;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = [v7 constraintsWithVisualFormat:@"H:|[label]|" options:0 metrics:0 views:v8];
    [v7 activateConstraints:v9];

    v10 = MEMORY[0x277CCAAD0];
    v16 = @"label";
    v17 = v3->_label;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v12 = [v10 constraintsWithVisualFormat:@"V:|[label]|" options:0 metrics:0 views:v11];
    [v10 activateConstraints:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(UILabel *)self->_label alignmentRectInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setText:(id)text
{
  v35[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:textCopy])
  {
    objc_storeStrong(&self->_text, text);
    v31 = 0;
    v6 = [textCopy sbui_rangesOfEmojiTokens:&v31];
    v7 = v31;
    if ([v6 count])
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __31__SBUIActionViewLabel_setText___block_invoke;
      v29[3] = &unk_27836B4F8;
      v30 = textCopy;
      v8 = MEMORY[0x223D63700](v29);
      label = self->_label;
      v10 = (v8)[2](v8, v6);
      [(UILabel *)label setAttributedText:v10];

      emojiLabel = self->_emojiLabel;
      if (!emojiLabel)
      {
        v12 = objc_alloc(MEMORY[0x277D756B8]);
        v13 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v14 = self->_emojiLabel;
        self->_emojiLabel = v13;

        v15 = self->_emojiLabel;
        font = [(SBUIActionViewLabel *)self font];
        [(UILabel *)v15 setFont:font];

        [(UILabel *)self->_emojiLabel setLineBreakMode:[(SBUIActionViewLabel *)self lineBreakMode]];
        [(UILabel *)self->_emojiLabel setNumberOfLines:[(SBUIActionViewLabel *)self numberOfLines]];
        [(UILabel *)self->_emojiLabel setTextAlignment:[(SBUIActionViewLabel *)self textAlignment]];
        [(UILabel *)self->_emojiLabel setTranslatesAutoresizingMaskIntoConstraints:0];
        [(SBUIActionViewLabel *)self addSubview:self->_emojiLabel];
        v17 = MEMORY[0x277CCAAD0];
        v18 = self->_emojiLabel;
        v34 = @"emojiLabel";
        v35[0] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        v20 = [v17 constraintsWithVisualFormat:@"H:|[emojiLabel]|" options:0 metrics:0 views:v19];
        [v17 activateConstraints:v20];

        v21 = MEMORY[0x277CCAAD0];
        v22 = self->_emojiLabel;
        v32 = @"emojiLabel";
        v33 = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v24 = [v21 constraintsWithVisualFormat:@"V:|[emojiLabel]|" options:0 metrics:0 views:v23];
        [v21 activateConstraints:v24];

        emojiLabel = self->_emojiLabel;
      }

      v25 = (v8)[2](v8, v7);
      [(UILabel *)emojiLabel setAttributedText:v25];

      v26 = v30;
    }

    else
    {
      [(UILabel *)self->_label setText:textCopy];
      v27 = self->_emojiLabel;
      if (!v27)
      {
LABEL_9:

        goto LABEL_10;
      }

      [(UILabel *)v27 removeFromSuperview];
      v26 = self->_emojiLabel;
      self->_emojiLabel = 0;
    }

    goto LABEL_9;
  }

LABEL_10:

  v28 = *MEMORY[0x277D85DE8];
}

id __31__SBUIActionViewLabel_setText___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:*(a1 + 32)];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = *MEMORY[0x277D740C0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v22 = v8;
        v11 = [MEMORY[0x277D75348] clearColor];
        v23 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v13 = NSRangeFromString(v10);
        [v4 addAttributes:v12 range:{v13.location, v13.length}];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  v14 = [v4 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)setFont:(id)font
{
  label = self->_label;
  fontCopy = font;
  [(UILabel *)label setFont:fontCopy];
  [(UILabel *)self->_emojiLabel setFont:fontCopy];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    [(UILabel *)self->_label setTextColor:v6];
    colorCopy = v6;
  }
}

- (void)setTextAlignment:(int64_t)alignment
{
  [(UILabel *)self->_label setTextAlignment:?];
  emojiLabel = self->_emojiLabel;

  [(UILabel *)emojiLabel setTextAlignment:alignment];
}

- (void)setLineBreakMode:(int64_t)mode
{
  [(UILabel *)self->_label setLineBreakMode:?];
  emojiLabel = self->_emojiLabel;

  [(UILabel *)emojiLabel setLineBreakMode:mode];
}

- (void)setNumberOfLines:(int64_t)lines
{
  [(UILabel *)self->_label setNumberOfLines:?];
  emojiLabel = self->_emojiLabel;

  [(UILabel *)emojiLabel setNumberOfLines:lines];
}

- (void)mt_removeAllVisualStyling
{
  [(UILabel *)self->_label mt_removeAllVisualStyling];
  [(UILabel *)self->_label setAlpha:1.0];
  label = self->_label;
  textColor = [(SBUIActionViewLabel *)self textColor];
  [(UILabel *)label setTextColor:textColor];
}

@end
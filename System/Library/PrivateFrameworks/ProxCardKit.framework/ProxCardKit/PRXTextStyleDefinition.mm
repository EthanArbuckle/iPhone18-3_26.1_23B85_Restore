@interface PRXTextStyleDefinition
- (PRXTextStyleDefinition)initWithStyle:(int64_t)style;
@end

@implementation PRXTextStyleDefinition

- (PRXTextStyleDefinition)initWithStyle:(int64_t)style
{
  v38.receiver = self;
  v38.super_class = PRXTextStyleDefinition;
  v4 = [(PRXTextStyleDefinition *)&v38 init];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    if (style > 2)
    {
      if (style != 3)
      {
        if (style == 4)
        {
          labelColor = [MEMORY[0x277D75348] labelColor];
          textColor = v5->_textColor;
          v5->_textColor = labelColor;

          v35 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A28] variant:1280];
          font = v5->_font;
          v5->_font = v35;

          v37 = *MEMORY[0x277D76558];
          v5->_textAlignment = 4;
          v5->_accessibilityTraits = v37;
          goto LABEL_17;
        }

        if (style == 5)
        {
          secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
          v10 = v5->_textColor;
          v5->_textColor = secondaryLabelColor;

          v8 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] variant:256];
          goto LABEL_11;
        }

LABEL_18:
        v31 = v5;
        goto LABEL_19;
      }

      secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
      v22 = v5->_textColor;
      v5->_textColor = secondaryLabelColor2;

      defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
      v24 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
      v25 = [defaultMetrics scaledFontForFont:v24];
      v26 = v5->_font;
      v5->_font = v25;
    }

    else
    {
      if (!style)
      {
        labelColor2 = [MEMORY[0x277D75348] labelColor];
        v14 = v5->_textColor;
        v5->_textColor = labelColor2;

        v15 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08]];
        v16 = [v15 fontDescriptorWithSymbolicTraits:{objc_msgSend(v15, "symbolicTraits") | 2}];

        v17 = MEMORY[0x277D74300];
        [v16 pointSize];
        v18 = [v17 fontWithDescriptor:v16 size:?];
        v19 = v5->_font;
        v5->_font = v18;

        v20 = *MEMORY[0x277D76558];
        v5->_textAlignment = 1;
        v5->_accessibilityTraits = v20;
        v5->_numberOfLines = 0;

        goto LABEL_18;
      }

      if (style != 1)
      {
        if (style == 2)
        {
          labelColor3 = [MEMORY[0x277D75348] labelColor];
          v7 = v5->_textColor;
          v5->_textColor = labelColor3;

          v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
LABEL_11:
          v11 = v5->_font;
          v5->_font = v8;

          v12 = 4;
LABEL_16:
          v5->_textAlignment = v12;
LABEL_17:
          v5->_numberOfLines = 0;
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      labelColor4 = [MEMORY[0x277D75348] labelColor];
      v28 = v5->_textColor;
      v5->_textColor = labelColor4;

      v29 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] variant:256];
      v30 = v5->_font;
      v5->_font = v29;
    }

    v12 = 1;
    goto LABEL_16;
  }

LABEL_19:

  return v5;
}

@end
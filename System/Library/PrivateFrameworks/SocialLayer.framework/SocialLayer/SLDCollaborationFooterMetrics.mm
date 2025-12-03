@interface SLDCollaborationFooterMetrics
- (CGColor)labelColor;
- (CGColor)secondaryLabelColor;
- (CGRect)boundingRectForString:(id)string;
- (NSAttributedString)subtitleAttributedString;
- (NSAttributedString)titleAttributedString;
- (SLDCollaborationFooterMetrics)initWithSlotStyle:(id)style tag:(id)tag;
- (double)expectedHeight;
- (id)attributedStringWithString:(id)string textStyle:(__CFString *)style color:(CGColor *)color;
@end

@implementation SLDCollaborationFooterMetrics

- (SLDCollaborationFooterMetrics)initWithSlotStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v12.receiver = self;
  v12.super_class = SLDCollaborationFooterMetrics;
  v9 = [(SLDCollaborationFooterMetrics *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_style, style);
    objc_storeStrong(&v10->_tag, tag);
  }

  return v10;
}

- (NSAttributedString)titleAttributedString
{
  v3 = [(SLDCollaborationFooterMetrics *)self tag];
  title = [v3 title];

  if (title)
  {
    labelColor = [(SLDCollaborationFooterMetrics *)self labelColor];
    v6 = [(SLDCollaborationFooterMetrics *)self tag];
    title2 = [v6 title];
    v8 = [(SLDCollaborationFooterMetrics *)self attributedStringWithString:title2 textStyle:*MEMORY[0x277CC4A50] color:labelColor];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSAttributedString)subtitleAttributedString
{
  v3 = [(SLDCollaborationFooterMetrics *)self tag];
  subtitle = [v3 subtitle];

  if (subtitle)
  {
    goto LABEL_2;
  }

  v7 = [(SLDCollaborationFooterMetrics *)self tag];
  title = [v7 title];

  if (!title)
  {
    subtitle = @"Collaboration";
LABEL_2:
    secondaryLabelColor = [(SLDCollaborationFooterMetrics *)self secondaryLabelColor];
    v6 = [(SLDCollaborationFooterMetrics *)self attributedStringWithString:subtitle textStyle:*MEMORY[0x277CC4A48] color:secondaryLabelColor];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (id)attributedStringWithString:(id)string textStyle:(__CFString *)style color:(CGColor *)color
{
  v26[1] = *MEMORY[0x277D85DE8];
  v25 = *MEMORY[0x277CC4950];
  v23 = *MEMORY[0x277CC4948];
  v24 = &unk_28469BCD8;
  v7 = MEMORY[0x277CBEAC0];
  stringCopy = string;
  v9 = [v7 dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  style = [(SLDCollaborationFooterMetrics *)self style];
  CTContentSizeCategoryForSlotStyle(style);

  v12 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v13 = CTFontCreateWithFontDescriptor(v12, 0.0, 0);
  CFRelease(v12);
  v14 = objc_alloc_init(MEMORY[0x277D74240]);
  [v14 setLineBreakStrategy:0xFFFFLL];
  v15 = *MEMORY[0x277D740A8];
  v21[0] = *MEMORY[0x277D740C0];
  v21[1] = v15;
  v22[0] = color;
  v22[1] = v13;
  v21[2] = *MEMORY[0x277D74118];
  v16 = [v14 copy];
  v22[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:stringCopy attributes:v17];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (CGRect)boundingRectForString:(id)string
{
  if (string)
  {
    stringCopy = string;
    v5 = [(SLDCollaborationFooterMetrics *)self tag];
    [v5 maxWidth];
    v7 = v6;

    v8 = [stringCopy length];
    v9 = CTFramesetterCreateWithAttributedString(stringCopy);
    v28.height = 1.79769313e308;
    v27.location = 0;
    v27.length = v8;
    v28.width = v7;
    v10 = CTFramesetterSuggestFrameSizeWithConstraints(v9, v27, 0, v28, 0);
    width = v10.width;
    height = v10.height;
    CFRelease(v9);
    v13 = CTLineCreateWithAttributedString(stringCopy);

    style = [(SLDCollaborationFooterMetrics *)self style];
    displayScale = [style displayScale];

    style2 = [(SLDCollaborationFooterMetrics *)self style];
    v17 = 0.0;
    if ([style2 layoutDirection] == 1)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 0.0;
    }

    v19 = [(SLDCollaborationFooterMetrics *)self tag];
    [v19 maxWidth];
    PenOffsetForFlush = CTLineGetPenOffsetForFlush(v13, v18, v20);
    v22 = SLRoundToScale(PenOffsetForFlush, displayScale);

    CFRelease(v13);
  }

  else
  {
    v22 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  v23 = v22;
  v24 = v17;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (double)expectedHeight
{
  titleAttributedString = [(SLDCollaborationFooterMetrics *)self titleAttributedString];
  [(SLDCollaborationFooterMetrics *)self boundingRectForString:titleAttributedString];
  v5 = v4;

  subtitleAttributedString = [(SLDCollaborationFooterMetrics *)self subtitleAttributedString];
  [(SLDCollaborationFooterMetrics *)self boundingRectForString:subtitleAttributedString];
  v8 = v7;

  return v5 + v8;
}

- (CGColor)labelColor
{
  style = [(SLDCollaborationFooterMetrics *)self style];
  if ([style userInterfaceStyle])
  {
    v3 = 1.0;
    v4 = 1.0;
    v5 = 1.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
  }

  SRGB = CGColorCreateSRGB(v3, v4, v5, 1.0);

  return CFAutorelease(SRGB);
}

- (CGColor)secondaryLabelColor
{
  style = [(SLDCollaborationFooterMetrics *)self style];
  if ([style userInterfaceStyle])
  {
    v3 = 0.75;
    v4 = 0.75;
    v5 = 0.75;
  }

  else
  {
    v3 = 0.25;
    v4 = 0.25;
    v5 = 0.25;
  }

  SRGB = CGColorCreateSRGB(v3, v4, v5, 0.6);

  return CFAutorelease(SRGB);
}

@end
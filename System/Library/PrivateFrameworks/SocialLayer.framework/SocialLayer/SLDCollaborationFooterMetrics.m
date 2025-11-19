@interface SLDCollaborationFooterMetrics
- (CGColor)labelColor;
- (CGColor)secondaryLabelColor;
- (CGRect)boundingRectForString:(id)a3;
- (NSAttributedString)subtitleAttributedString;
- (NSAttributedString)titleAttributedString;
- (SLDCollaborationFooterMetrics)initWithSlotStyle:(id)a3 tag:(id)a4;
- (double)expectedHeight;
- (id)attributedStringWithString:(id)a3 textStyle:(__CFString *)a4 color:(CGColor *)a5;
@end

@implementation SLDCollaborationFooterMetrics

- (SLDCollaborationFooterMetrics)initWithSlotStyle:(id)a3 tag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SLDCollaborationFooterMetrics;
  v9 = [(SLDCollaborationFooterMetrics *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_style, a3);
    objc_storeStrong(&v10->_tag, a4);
  }

  return v10;
}

- (NSAttributedString)titleAttributedString
{
  v3 = [(SLDCollaborationFooterMetrics *)self tag];
  v4 = [v3 title];

  if (v4)
  {
    v5 = [(SLDCollaborationFooterMetrics *)self labelColor];
    v6 = [(SLDCollaborationFooterMetrics *)self tag];
    v7 = [v6 title];
    v8 = [(SLDCollaborationFooterMetrics *)self attributedStringWithString:v7 textStyle:*MEMORY[0x277CC4A50] color:v5];
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
  v4 = [v3 subtitle];

  if (v4)
  {
    goto LABEL_2;
  }

  v7 = [(SLDCollaborationFooterMetrics *)self tag];
  v8 = [v7 title];

  if (!v8)
  {
    v4 = @"Collaboration";
LABEL_2:
    v5 = [(SLDCollaborationFooterMetrics *)self secondaryLabelColor];
    v6 = [(SLDCollaborationFooterMetrics *)self attributedStringWithString:v4 textStyle:*MEMORY[0x277CC4A48] color:v5];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (id)attributedStringWithString:(id)a3 textStyle:(__CFString *)a4 color:(CGColor *)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v25 = *MEMORY[0x277CC4950];
  v23 = *MEMORY[0x277CC4948];
  v24 = &unk_28469BCD8;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

  v11 = [(SLDCollaborationFooterMetrics *)self style];
  CTContentSizeCategoryForSlotStyle(v11);

  v12 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v13 = CTFontCreateWithFontDescriptor(v12, 0.0, 0);
  CFRelease(v12);
  v14 = objc_alloc_init(MEMORY[0x277D74240]);
  [v14 setLineBreakStrategy:0xFFFFLL];
  v15 = *MEMORY[0x277D740A8];
  v21[0] = *MEMORY[0x277D740C0];
  v21[1] = v15;
  v22[0] = a5;
  v22[1] = v13;
  v21[2] = *MEMORY[0x277D74118];
  v16 = [v14 copy];
  v22[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8 attributes:v17];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (CGRect)boundingRectForString:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SLDCollaborationFooterMetrics *)self tag];
    [v5 maxWidth];
    v7 = v6;

    v8 = [v4 length];
    v9 = CTFramesetterCreateWithAttributedString(v4);
    v28.height = 1.79769313e308;
    v27.location = 0;
    v27.length = v8;
    v28.width = v7;
    v10 = CTFramesetterSuggestFrameSizeWithConstraints(v9, v27, 0, v28, 0);
    width = v10.width;
    height = v10.height;
    CFRelease(v9);
    v13 = CTLineCreateWithAttributedString(v4);

    v14 = [(SLDCollaborationFooterMetrics *)self style];
    v15 = [v14 displayScale];

    v16 = [(SLDCollaborationFooterMetrics *)self style];
    v17 = 0.0;
    if ([v16 layoutDirection] == 1)
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
    v22 = SLRoundToScale(PenOffsetForFlush, v15);

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
  v3 = [(SLDCollaborationFooterMetrics *)self titleAttributedString];
  [(SLDCollaborationFooterMetrics *)self boundingRectForString:v3];
  v5 = v4;

  v6 = [(SLDCollaborationFooterMetrics *)self subtitleAttributedString];
  [(SLDCollaborationFooterMetrics *)self boundingRectForString:v6];
  v8 = v7;

  return v5 + v8;
}

- (CGColor)labelColor
{
  v2 = [(SLDCollaborationFooterMetrics *)self style];
  if ([v2 userInterfaceStyle])
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
  v2 = [(SLDCollaborationFooterMetrics *)self style];
  if ([v2 userInterfaceStyle])
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
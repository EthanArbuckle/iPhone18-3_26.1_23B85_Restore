@interface SKUIViewTextProperties
- (SKUIViewTextProperties)initWithStringLayout:(id)layout;
- (SKUIViewTextProperties)initWithTextLayout:(id)layout isExpanded:(BOOL)expanded;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SKUIViewTextProperties

- (SKUIViewTextProperties)initWithStringLayout:(id)layout
{
  layoutCopy = layout;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIViewTextProperties initWithStringLayout:];
  }

  v15.receiver = self;
  v15.super_class = SKUIViewTextProperties;
  v5 = [(SKUIViewTextProperties *)&v15 init];
  if (v5)
  {
    [layoutCopy firstBaselineOffset];
    v7 = v6;
    [(SKUIViewTextProperties *)v5 setFirstBaselineOffset:?];
    attributedString = [layoutCopy attributedString];
    LineHeight = SKUIAttributedStringGetLineHeight(attributedString);

    [layoutCopy boundingSize];
    v11 = v10;
    [layoutCopy baselineOffset];
    *&v12 = v11 - v12;
    [(SKUIViewTextProperties *)v5 setBaselineOffsetFromBottom:roundf(*&v12)];
    v13 = LineHeight - v7;
    [(SKUIViewTextProperties *)v5 setDesiredOffsetTop:roundf(v13)];
  }

  return v5;
}

- (SKUIViewTextProperties)initWithTextLayout:(id)layout isExpanded:(BOOL)expanded
{
  v21 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIViewTextProperties initWithTextLayout:isExpanded:];
  }

  v20.receiver = self;
  v20.super_class = SKUIViewTextProperties;
  v6 = [(SKUIViewTextProperties *)&v20 init];
  if (v6)
  {
    textFrame = [layoutCopy textFrame];
    Lines = CTFrameGetLines(textFrame);
    Count = CFArrayGetCount(Lines);
    if (Count >= 1)
    {
      v10 = Count;
      textSize = [layoutCopy textSize];
      v13 = v12;
      MEMORY[0x28223BE20](textSize);
      v22.location = 0;
      v22.length = v10;
      CTFrameGetLineOrigins(textFrame, v22, &v19 - v10);
      v14 = *(&v19 - 1);
      [(SKUIViewTextProperties *)v6 setBaselineOffsetFromBottom:roundf(v14)];
      v15 = v13 - (&v19 - 2 * v10)[1];
      v16 = roundf(v15);
      [(SKUIViewTextProperties *)v6 setFirstBaselineOffset:v16];
      [layoutCopy lineHeight];
      [(SKUIViewTextProperties *)v6 setDesiredOffsetTop:v17 - v16];
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(SKUIViewTextProperties *)self baselineOffsetFromBottom];
  [v4 setBaselineOffsetFromBottom:?];
  [(SKUIViewTextProperties *)self desiredOffsetTop];
  [v4 setDesiredOffsetTop:?];
  [(SKUIViewTextProperties *)self firstBaselineOffset];
  [v4 setFirstBaselineOffset:?];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = SKUIViewTextProperties;
  v4 = [(SKUIViewTextProperties *)&v12 description];
  [(SKUIViewTextProperties *)self baselineOffsetFromBottom];
  v6 = v5;
  [(SKUIViewTextProperties *)self firstBaselineOffset];
  v8 = v7;
  [(SKUIViewTextProperties *)self desiredOffsetTop];
  v10 = [v3 stringWithFormat:@"%@: [Bottom: %.2f, First Baseline: %.2f, Offset Top: %.2f]", v4, v6, v8, v9];

  return v10;
}

- (void)initWithStringLayout:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewTextProperties initWithStringLayout:]";
}

- (void)initWithTextLayout:isExpanded:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewTextProperties initWithTextLayout:isExpanded:]";
}

@end
@interface SKUIEditorialLayout
- (SKUIEditorialLayout)initWithEditorial:(id)a3 layoutCache:(id)a4;
- (double)layoutHeightForOrientation:(int64_t)a3 expanded:(BOOL)a4;
- (id)_bodyTextLayoutRequestWithTotalWidth:(double)a3;
- (id)_linkLayoutRequestWithTotalWidth:(double)a3;
- (id)_titleTextLayoutRequestWithTotalWidth:(double)a3;
- (id)bodyTextLayoutForOrientation:(int64_t)a3;
- (id)linkLayoutForOrientation:(int64_t)a3;
- (id)titleTextLayoutForOrientation:(int64_t)a3;
- (void)enqueueLayoutRequests;
- (void)setLayoutWidth:(double)a3 forOrientation:(int64_t)a4;
@end

@implementation SKUIEditorialLayout

- (SKUIEditorialLayout)initWithEditorial:(id)a3 layoutCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIEditorialLayout initWithEditorial:layoutCache:];
  }

  v14.receiver = self;
  v14.super_class = SKUIEditorialLayout;
  v9 = [(SKUIEditorialLayout *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_editorial, a3);
    objc_storeStrong(&v10->_textLayoutCache, a4);
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = vnegq_f64(v11);
    *&v10->_landscapeLinkLayoutIndex = v12;
    v10->_landscapeTitleLayoutIndex = 0x7FFFFFFFFFFFFFFFLL;
    *&v10->_portraitLinkLayoutIndex = v12;
    v10->_portraitTitleLayoutIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)bodyTextLayoutForOrientation:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    landscapeTextLayoutIndex = self->_landscapeTextLayoutIndex;
  }

  else
  {
    landscapeTextLayoutIndex = self->_portraitTextLayoutIndex;
  }

  if (landscapeTextLayoutIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v6 = 0;

    return v6;
  }

  v6 = [(SKUILayoutCache *)self->_textLayoutCache layoutForIndex:v3];

  return v6;
}

- (double)layoutHeightForOrientation:(int64_t)a3 expanded:(BOOL)a4
{
  v7 = [(SKUIEditorialLayout *)self bodyTextLayoutForOrientation:?];
  v8 = [(SKUIEditorialLayout *)self linkLayoutForOrientation:a3];
  v9 = [(SKUIEditorialLayout *)self titleTextLayoutForOrientation:a3];
  v10 = v9;
  if (!v7 && !v8 && !v9)
  {
    v11 = 80.0;
    goto LABEL_18;
  }

  v19 = 0.0;
  v17 = 0u;
  v18 = 0;
  editorial = self->_editorial;
  if (editorial)
  {
    [(SKUIEditorialComponent *)editorial editorialStyle:0];
  }

  if (v7)
  {
    if (a4 || ![v7 requiresTruncation])
    {
      [v7 textSize];
    }

    else
    {
      [v7 truncatedSize];
    }

    v11 = v13;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0.0;
    if (v10)
    {
LABEL_13:
      [v10 textSize];
      v11 = v11 + v14 + v19;
    }
  }

  if (v8)
  {
    if (v7 | v10)
    {
      v11 = v11 + *(&v18 + 1);
    }

    [v8 totalSize];
    v11 = v15 + v11;
  }

LABEL_18:

  return v11;
}

- (void)enqueueLayoutRequests
{
  v41[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = self->_landscapeWidth > 0.00000011920929;
  }

  else
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 bounds];
    v4 = v6 > 375.0 && self->_landscapeWidth > 0.00000011920929;
  }

  v7 = [(SKUIEditorialComponent *)self->_editorial bodyText];
  if (v7)
  {
  }

  else
  {
    v8 = [(SKUIEditorialComponent *)self->_editorial bodyAttributedText];

    if (!v8)
    {
      goto LABEL_12;
    }
  }

  textLayoutCache = self->_textLayoutCache;
  v10 = [(SKUIEditorialLayout *)self _bodyTextLayoutRequestWithTotalWidth:self->_portraitWidth];
  v41[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  v12 = [(SKUILayoutCache *)textLayoutCache addLayoutRequests:v11];

  self->_portraitTextLayoutIndex = v12;
  if (v4)
  {
    v13 = self->_textLayoutCache;
    v14 = [(SKUIEditorialLayout *)self _bodyTextLayoutRequestWithTotalWidth:self->_landscapeWidth];
    v40 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    v16 = [(SKUILayoutCache *)v13 addLayoutRequests:v15];

    self->_landscapeTextLayoutIndex = v16;
  }

LABEL_12:
  v17 = [(SKUIEditorialComponent *)self->_editorial titleText];

  if (v17)
  {
    v18 = self->_textLayoutCache;
    v19 = [(SKUIEditorialLayout *)self _titleTextLayoutRequestWithTotalWidth:self->_portraitWidth];
    v39 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    v21 = [(SKUILayoutCache *)v18 addLayoutRequests:v20];

    self->_portraitTitleLayoutIndex = v21;
    if (v4)
    {
      v22 = self->_textLayoutCache;
      v23 = [(SKUIEditorialLayout *)self _titleTextLayoutRequestWithTotalWidth:self->_landscapeWidth];
      v38 = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      v25 = [(SKUILayoutCache *)v22 addLayoutRequests:v24];

      self->_landscapeTitleLayoutIndex = v25;
    }
  }

  v26 = [(SKUIEditorialComponent *)self->_editorial links];
  v27 = [v26 count];

  if (v27)
  {
    v28 = self->_textLayoutCache;
    v29 = [(SKUIEditorialLayout *)self _linkLayoutRequestWithTotalWidth:self->_portraitWidth];
    v37 = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v31 = [(SKUILayoutCache *)v28 addLayoutRequests:v30];

    self->_portraitLinkLayoutIndex = v31;
    if (v4)
    {
      v32 = self->_textLayoutCache;
      v33 = [(SKUIEditorialLayout *)self _linkLayoutRequestWithTotalWidth:self->_landscapeWidth];
      v36 = v33;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      v35 = [(SKUILayoutCache *)v32 addLayoutRequests:v34];

      self->_landscapeLinkLayoutIndex = v35;
    }
  }
}

- (id)linkLayoutForOrientation:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    landscapeLinkLayoutIndex = self->_landscapeLinkLayoutIndex;
  }

  else
  {
    landscapeLinkLayoutIndex = self->_portraitLinkLayoutIndex;
  }

  if (landscapeLinkLayoutIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v6 = 0;

    return v6;
  }

  v6 = [(SKUILayoutCache *)self->_textLayoutCache layoutForIndex:v3];

  return v6;
}

- (void)setLayoutWidth:(double)a3 forOrientation:(int64_t)a4
{
  if (a4 == 1)
  {
    v4 = 40;
  }

  else
  {
    if (a4)
    {
      return;
    }

    v4 = 72;
  }

  *(&self->super.isa + v4) = a3;
}

- (id)titleTextLayoutForOrientation:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    landscapeTitleLayoutIndex = self->_landscapeTitleLayoutIndex;
  }

  else
  {
    landscapeTitleLayoutIndex = self->_portraitTitleLayoutIndex;
  }

  if (landscapeTitleLayoutIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v6 = 0;

    return v6;
  }

  v6 = [(SKUILayoutCache *)self->_textLayoutCache layoutForIndex:v3];

  return v6;
}

- (id)_bodyTextLayoutRequestWithTotalWidth:(double)a3
{
  v5 = objc_alloc_init(SKUITextLayoutRequest);
  v10 = 0;
  editorial = self->_editorial;
  if (editorial)
  {
    [(SKUIEditorialComponent *)editorial editorialStyle];
    editorial = self->_editorial;
  }

  v7 = [(SKUIEditorialComponent *)editorial bodyAttributedText];
  [(SKUITextLayoutRequest *)v5 setAttributedText:v7];

  [(SKUITextLayoutRequest *)v5 setFontWeight:0];
  [(SKUITextLayoutRequest *)v5 setNumberOfLines:[(SKUIEditorialComponent *)self->_editorial maximumBodyLines]];
  v8 = [(SKUIEditorialComponent *)self->_editorial bodyText];
  [(SKUITextLayoutRequest *)v5 setText:v8];

  [(SKUITextLayoutRequest *)v5 setTextAlignment:SKUICTTextAlignmentForPageComponentAlignment(v11)];
  [(SKUITextLayoutRequest *)v5 setWidth:a3];
  if (0.0 > 0.00000011921)
  {
    [(SKUITextLayoutRequest *)v5 setFontSize:0.0];
  }

  return v5;
}

- (id)_linkLayoutRequestWithTotalWidth:(double)a3
{
  v5 = objc_alloc_init(SKUIEditorialLinkLayoutRequest);
  v6 = [(SKUIEditorialComponent *)self->_editorial links];
  [(SKUIEditorialLinkLayoutRequest *)v5 setLinks:v6];

  [(SKUIEditorialLinkLayoutRequest *)v5 setWidth:a3];

  return v5;
}

- (id)_titleTextLayoutRequestWithTotalWidth:(double)a3
{
  v5 = objc_alloc_init(SKUITextLayoutRequest);
  v14 = 0;
  editorial = self->_editorial;
  if (editorial)
  {
    [(SKUIEditorialComponent *)editorial editorialStyle:0];
  }

  [(SKUITextLayoutRequest *)v5 setFontWeight:0, v14];
  v7 = [(SKUIEditorialComponent *)self->_editorial titleText];
  [(SKUITextLayoutRequest *)v5 setText:v7];

  [(SKUITextLayoutRequest *)v5 setTextAlignment:SKUICTTextAlignmentForPageComponentAlignment(v15)];
  [(SKUITextLayoutRequest *)v5 setWidth:a3];
  LODWORD(v8) = 0;
  if (0.0 <= 0.00000011921)
  {
    v10 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 1)
    {
      v12 = &kSKUITextBoxLayoutTitleFontSizeIPad;
    }

    else
    {
      v12 = &kSKUITextBoxLayoutTitleFontSizeIPhone;
    }

    v9 = *v12;
  }

  else
  {
    v9 = 0.0;
  }

  [(SKUITextLayoutRequest *)v5 setFontSize:v9];

  return v5;
}

- (void)initWithEditorial:layoutCache:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialLayout initWithEditorial:layoutCache:]";
}

@end
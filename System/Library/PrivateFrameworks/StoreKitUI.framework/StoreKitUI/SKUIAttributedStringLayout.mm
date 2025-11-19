@interface SKUIAttributedStringLayout
- (CGSize)boundingSize;
- (SKUIAttributedStringLayout)initWithLayoutRequest:(id)a3;
- (UIEdgeInsets)edgeInsetsForShadow;
@end

@implementation SKUIAttributedStringLayout

- (SKUIAttributedStringLayout)initWithLayoutRequest:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIAttributedStringLayout initWithLayoutRequest:];
  }

  v61.receiver = self;
  v61.super_class = SKUIAttributedStringLayout;
  v5 = [(SKUIAttributedStringLayout *)&v61 init];
  if (v5)
  {
    v6 = [v4 attributedString];
    attributedString = v5->_attributedString;
    v5->_attributedString = v6;

    v8 = objc_alloc_init(MEMORY[0x277D74260]);
    context = v5->_context;
    v5->_context = v8;

    v10 = [v4 numberOfLines];
    [(NSStringDrawingContext *)v5->_context setCachesLayout:1];
    [(NSStringDrawingContext *)v5->_context setMaximumNumberOfLines:v10];
    -[NSStringDrawingContext setWantsBaselineOffset:](v5->_context, "setWantsBaselineOffset:", [v4 wantsBaselineOffset]);
    [(NSStringDrawingContext *)v5->_context setWrapsForTruncationMode:v10 != 1];
    [v4 width];
    v12 = v11;
    [(NSAttributedString *)v5->_attributedString boundingRectWithSize:33 options:v5->_context context:?];
    v15 = v14;
    v16 = ceilf(v15);
    if (v12 < v16)
    {
      v16 = v12;
    }

    v5->_boundingSize.width = v16;
    v5->_boundingSize.height = v13;
    if (initWithLayoutRequest__sOnce != -1)
    {
      [SKUIAttributedStringLayout initWithLayoutRequest:];
    }

    v17 = [(NSAttributedString *)v5->_attributedString string];
    v18 = [v17 rangeOfCharacterFromSet:initWithLayoutRequest__sTallCharactersSet];

    v19 = MEMORY[0x277D768C8];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5->_usesTallCharacterSet = 1;
      v55 = 0;
      v56 = &v55;
      v57 = 0x4010000000;
      v58 = &unk_215F8ACD7;
      v20 = v19[1];
      v59 = *v19;
      v60 = v20;
      v21 = v5->_attributedString;
      v22 = [(NSAttributedString *)v21 length];
      v23 = *MEMORY[0x277D740A8];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __52__SKUIAttributedStringLayout_initWithLayoutRequest___block_invoke_2;
      v54[3] = &unk_2782004B8;
      v54[4] = &v55;
      [(NSAttributedString *)v21 enumerateAttribute:v23 inRange:0 options:v22 usingBlock:0, v54];
      v24 = v56[4];
      v5->_boundingSize.height = v5->_boundingSize.height + v56[6] + v24;
      v5->_topInset = v24;
      _Block_object_dispose(&v55, 8);
    }

    v25 = v5->_attributedString;
    v26 = *MEMORY[0x277D74138];
    v27 = [(NSAttributedString *)v25 length];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __52__SKUIAttributedStringLayout_initWithLayoutRequest___block_invoke_3;
    v52[3] = &unk_2782004E0;
    v28 = v5;
    v53 = v28;
    [(NSAttributedString *)v25 enumerateAttribute:v26 inRange:0 options:v27 usingBlock:0, v52];
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v29 = v5->_attributedString;
    v30 = [(NSAttributedString *)v29 length];
    v31 = *MEMORY[0x277D74118];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __52__SKUIAttributedStringLayout_initWithLayoutRequest___block_invoke_4;
    v51[3] = &unk_278200508;
    v51[4] = &v55;
    [(NSAttributedString *)v29 enumerateAttribute:v31 inRange:0 options:v30 usingBlock:0, v51];
    v32 = v19[1];
    *&v28->_edgeInsetsForShadow.top = *v19;
    *&v28->_edgeInsetsForShadow.bottom = v32;
    shadow = v28->_shadow;
    if (shadow)
    {
      [(NSShadow *)shadow shadowOffset];
      v35 = v34;
      [(NSShadow *)v28->_shadow shadowBlurRadius];
      v37 = -v35;
      if (v35 >= 0.0)
      {
        v37 = v35;
      }

      v38 = v37 + v36;
      if (*(v56 + 3) == 1)
      {
        v28->_edgeInsetsForShadow.right = v38 * 0.5;
        v28->_edgeInsetsForShadow.left = v38 * 0.5;
      }

      [(NSShadow *)v28->_shadow shadowOffset];
      v39 = 80;
      if (v40 < 0.0)
      {
        v39 = 64;
      }

      *(&v28->super.isa + v39) = v38;
      [(NSShadow *)v28->_shadow shadowOffset];
      v42 = v41;
      [(NSShadow *)v28->_shadow shadowBlurRadius];
      v44 = v43;
      [(NSShadow *)v28->_shadow shadowOffset];
      v46 = -v42;
      if (v42 >= 0.0)
      {
        v46 = v42;
      }

      v47 = v46 + v44;
      v48 = 72;
      if (v45 < 0.0)
      {
        v48 = 56;
      }

      *(&v28->super.isa + v48) = v47;
    }

    height = v5->_boundingSize.height;
    v5->_boundingSize.height = ceilf(height);
    _Block_object_dispose(&v55, 8);
  }

  return v5;
}

void __52__SKUIAttributedStringLayout_initWithLayoutRequest___block_invoke()
{
  v0 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  v1 = [v0 mutableCopy];

  v2 = initWithLayoutRequest__sTallCharactersSet;
  initWithLayoutRequest__sTallCharactersSet = v1;
}

uint64_t __52__SKUIAttributedStringLayout_initWithLayoutRequest___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D768C8];
  v12 = *(MEMORY[0x277D768C8] + 16);
  result = CTFontGetLanguageAwareOutsets();
  if (result)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 48);
    if (v4 < *&v12)
    {
      v4 = *&v12;
    }

    *(v3 + 48) = v4;
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    if (v6 < *(&v11 + 1))
    {
      v6 = *(&v11 + 1);
    }

    *(v5 + 40) = v6;
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 56);
    if (v8 < *(&v12 + 1))
    {
      v8 = *(&v12 + 1);
    }

    *(v7 + 56) = v8;
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 32);
    if (v10 < *&v11)
    {
      v10 = *&v11;
    }

    *(v9 + 32) = v10;
  }

  return result;
}

uint64_t __52__SKUIAttributedStringLayout_initWithLayoutRequest___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 alignment];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a5 = 1;
  return result;
}

- (CGSize)boundingSize
{
  width = self->_boundingSize.width;
  height = self->_boundingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)edgeInsetsForShadow
{
  top = self->_edgeInsetsForShadow.top;
  left = self->_edgeInsetsForShadow.left;
  bottom = self->_edgeInsetsForShadow.bottom;
  right = self->_edgeInsetsForShadow.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithLayoutRequest:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAttributedStringLayout initWithLayoutRequest:]";
}

@end
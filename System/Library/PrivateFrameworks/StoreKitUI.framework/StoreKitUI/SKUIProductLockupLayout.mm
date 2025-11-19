@interface SKUIProductLockupLayout
- (BOOL)hasBottomRightElementWithRightAlignment;
- (CGSize)_sizeForSegmentedControl:(id)a3 width:(double)a4;
- (CGSize)_sizeForVerticalViewElements:(id)a3 width:(double)a4;
- (CGSize)_sizeForViewElement:(id)a3 width:(double)a4;
- (SKUIProductLockupLayout)initWithLockup:(id)a3 width:(double)a4 context:(id)a5;
- (SKUIProductLockupLayoutSizing)layoutWidthsForWidth:(SEL)a3;
- (SKUIProductLockupLayoutSizing)sizingToFitWidth:(SEL)a3;
- (double)bottomPaddingForViewElement:(id)a3;
- (double)metadataWidthForWidth:(double)a3;
- (double)topPaddingForViewElement:(id)a3;
- (id)viewElementsForSection:(int64_t)a3;
- (void)enumerateViewElementsForWidth:(double)a3 usingBlock:(id)a4;
@end

@implementation SKUIProductLockupLayout

- (SKUIProductLockupLayout)initWithLockup:(id)a3 width:(double)a4 context:(id)a5
{
  v77 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v50 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIProductLockupLayout initWithLockup:width:context:];
  }

  v75.receiver = self;
  v75.super_class = SKUIProductLockupLayout;
  v53 = [(SKUIProductLockupLayout *)&v75 init];
  if (v53)
  {
    v57 = [v52 containsElementGroups];
    objc_storeStrong(&v53->_layoutContext, a5);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    p_bottomLeftViewElements = &v53->_bottomLeftViewElements;
    bottomLeftViewElements = v53->_bottomLeftViewElements;
    v53->_bottomLeftViewElements = v8;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    bottomRightViewElements = v53->_bottomRightViewElements;
    p_bottomRightViewElements = &v53->_bottomRightViewElements;
    v53->_bottomRightViewElements = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    middleLeftViewElements = v53->_middleLeftViewElements;
    p_middleLeftViewElements = &v53->_middleLeftViewElements;
    v53->_middleLeftViewElements = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    p_topLeftViewElements = &v53->_topLeftViewElements;
    topLeftViewElements = v53->_topLeftViewElements;
    v53->_topLeftViewElements = v15;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    topRightViewElements = v53->_topRightViewElements;
    p_topRightViewElements = &v53->_topRightViewElements;
    v53->_topRightViewElements = v18;

    v72 = 0;
    v73[0] = &v72;
    v73[1] = 0x3032000000;
    v73[2] = __Block_byref_object_copy__63;
    v73[3] = __Block_byref_object_dispose__63;
    v74 = v53->_bottomRightViewElements;
    v69 = 0;
    v70[0] = &v69;
    v70[1] = 0x3032000000;
    v70[2] = __Block_byref_object_copy__63;
    v70[3] = __Block_byref_object_dispose__63;
    v71 = v53->_middleLeftViewElements;
    if (a4 < 512.0)
    {
      objc_storeStrong((v73[0] + 40), v53->_bottomRightViewElements);
      v20 = v70;
    }

    else
    {
      v20 = v73;
      v53->_bottomLeftLayoutStyle = 2;
    }

    objc_storeStrong((*v20 + 40), *p_bottomLeftViewElements);
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __56__SKUIProductLockupLayout_initWithLockup_width_context___block_invoke;
    v63[3] = &unk_2781FE550;
    v22 = v53;
    v68 = a4 < 512.0;
    v64 = v22;
    v66 = &v72;
    v67 = &v69;
    v23 = v21;
    v65 = v23;
    [v52 enumerateChildrenUsingBlock:v63];
    v24 = *p_topLeftViewElements;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v59 objects:v76 count:16];
    if (v26)
    {
      v54 = v22;
      v27 = *v60;
      do
      {
        v28 = 0;
        do
        {
          if (*v60 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v59 + 1) + 8 * v28);
          v30 = [v29 style];
          v31 = [v30 elementPosition];

          if (v31 <= 5)
          {
            v32 = &v53->_topLeftViewElements;
            if (v31 != 2)
            {
              v32 = &v53->_bottomLeftViewElements;
              if (v31 != 3)
              {
                v32 = &v53->_middleLeftViewElements;
                if (v31 != 4)
                {
                  goto LABEL_26;
                }
              }
            }
          }

          else if (v31 > 7)
          {
            v32 = &v53->_bottomLeftViewElements;
            if (v31 != 8)
            {
              v32 = &v53->_bottomRightViewElements;
              if (v31 != 9)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
            v32 = &v53->_topLeftViewElements;
            if (v31 != 6)
            {
              v32 = &v53->_topRightViewElements;
            }
          }

          v33 = *v32;
          if (v33)
          {
            v34 = v33;
            [v33 addObject:v29];
            goto LABEL_58;
          }

LABEL_26:
          v35 = [v29 elementType];
          v34 = 0;
          if (v35 <= 76)
          {
            if (v35 <= 47)
            {
              if (v35 == 8 || v35 == 12)
              {
LABEL_54:
                if ((v57 & 1) == 0)
                {
                  v38 = *(v70[0] + 40);

                  v24 = v38;
                }

LABEL_56:
                [(SKUIViewElement *)v24 addObject:v29];
                goto LABEL_57;
              }

              if (v35 != 13)
              {
                goto LABEL_58;
              }

LABEL_43:
              v36 = (v73[0] + 40);
LABEL_44:
              v37 = *v36;
              goto LABEL_45;
            }

            if (v35 <= 49)
            {
              v37 = v24;
              if (v35 != 48)
              {
                goto LABEL_60;
              }

LABEL_45:
              [v37 addObject:v29];
              goto LABEL_57;
            }

            if (v35 == 50 || v35 == 62)
            {
              goto LABEL_54;
            }
          }

          else if (v35 > 137)
          {
            if (v35 > 143)
            {
              if (v35 != 152)
              {
                if (v35 != 144)
                {
                  goto LABEL_58;
                }

                goto LABEL_54;
              }

LABEL_60:
              if (v54->_productImageElement)
              {
                goto LABEL_57;
              }

              v39 = v29;
              productImageElement = v54->_productImageElement;
              v54->_productImageElement = v39;
              goto LABEL_73;
            }

            if (v35 == 138)
            {
              if (([v29 labelViewStyle] & 0xFFFFFFFFFFFFFFFELL) == 4)
              {
                v41 = 1;
              }

              else
              {
                v41 = v57;
              }

              if ((v41 & 1) == 0)
              {
                v42 = *(v70[0] + 40);

                v24 = v42;
              }

              goto LABEL_56;
            }

            if (v35 == 141)
            {
              goto LABEL_43;
            }
          }

          else if (v35 > 126)
          {
            if (v35 == 127)
            {
              if (v24 != *p_topLeftViewElements)
              {
                if (v24 == *p_middleLeftViewElements)
                {
                  v43 = *p_bottomLeftViewElements;
                  goto LABEL_72;
                }

LABEL_57:
                v34 = 0;
                goto LABEL_58;
              }

              v43 = *(v70[0] + 40);
LABEL_72:
              v44 = v43;
              productImageElement = v24;
              v24 = v44;
LABEL_73:

              goto LABEL_57;
            }

            if (v35 == 135)
            {
              goto LABEL_54;
            }
          }

          else
          {
            if (v35 == 77)
            {
              goto LABEL_43;
            }

            v36 = &v53->_bottomRightViewElements;
            if (v35 == 109)
            {
              goto LABEL_44;
            }
          }

LABEL_58:

          ++v28;
        }

        while (v26 != v28);
        v45 = [v25 countByEnumeratingWithState:&v59 objects:v76 count:16];
        v26 = v45;
      }

      while (v45);
    }

    if (![*p_bottomRightViewElements count])
    {
      v46 = *p_bottomRightViewElements;
      *p_bottomRightViewElements = 0;
    }

    if (![*p_middleLeftViewElements count])
    {
      v47 = *p_middleLeftViewElements;
      *p_middleLeftViewElements = 0;
    }

    if (![*p_topRightViewElements count])
    {
      v48 = *p_topRightViewElements;
      *p_topRightViewElements = 0;
    }

    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v72, 8);
  }

  return v53;
}

void __56__SKUIProductLockupLayout_initWithLockup_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 77 && (objc_msgSend(v3, "isSimpleOffer") & 1) == 0)
  {
    *(*(a1 + 32) + 8) = *(a1 + 64) ^ 1;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 16));
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 40));
  }

  [*(a1 + 40) addObject:v3];
}

- (double)bottomPaddingForViewElement:(id)a3
{
  v3 = a3;
  v4 = [v3 elementType];
  v5 = 0.0;
  if (v4 > 76)
  {
    if (v4 != 77 && v4 != 109 && v4 != 141)
    {
      goto LABEL_9;
    }

LABEL_8:
    v5 = 5.0;
    goto LABEL_9;
  }

  if (v4 != 8)
  {
    if (v4 != 13)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ([v3 badgeType] == 1)
  {
    v5 = 2.0;
  }

  else
  {
    v5 = 0.0;
  }

LABEL_9:

  return v5;
}

- (void)enumerateViewElementsForWidth:(double)a3 usingBlock:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (a3 > 0.00000011920929)
  {
    [(SKUIProductLockupLayout *)self layoutWidthsForWidth:a3];
    v11 = v29[0];
    v10 = v30;
    v9 = v32;
    v7 = middleLeftViewElements;
    v8 = v36;
  }

  productImageElement = self->_productImageElement;
  if (productImageElement)
  {
    [(SKUIViewElementLayoutContext *)self->_layoutContext sizeForViewElement:self->_productImageElement width:a3];
    v6[2](v6, productImageElement, 3, (v26 + 3));
  }

  v13 = 0;
  topRightViewElements = self->_topRightViewElements;
  v29[0] = self->_topLeftViewElements;
  v29[1] = 4;
  v30 = v7;
  v31 = topRightViewElements;
  v32 = 5;
  v33 = v8;
  middleLeftViewElements = self->_middleLeftViewElements;
  v35 = 2;
  v36 = v9;
  bottomRightViewElements = self->_bottomRightViewElements;
  bottomLeftViewElements = self->_bottomLeftViewElements;
  v38 = 0;
  v39 = v11;
  v40 = bottomRightViewElements;
  v41 = 1;
  v42 = v10;
  do
  {
    if (*(v26 + 24) == 1)
    {
      break;
    }

    v16 = v29[v13 + 2];
    v17 = v29[v13];
    v18 = v29[v13 + 1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__SKUIProductLockupLayout_enumerateViewElementsForWidth_usingBlock___block_invoke;
    v20[3] = &unk_2781FE578;
    v19 = v6;
    v22 = &v25;
    v23 = v18;
    v24 = v16;
    v21 = v19;
    [v17 enumerateObjectsUsingBlock:v20];

    v13 += 3;
  }

  while (v13 != 15);
  _Block_object_dispose(&v25, 8);
}

uint64_t __68__SKUIProductLockupLayout_enumerateViewElementsForWidth_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))(*(a1 + 56));
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (SKUIProductLockupLayoutSizing)layoutWidthsForWidth:(SEL)a3
{
  [(SKUIProductLockupLayout *)self metadataWidthForWidth:a4];
  v7 = v6;
  retstr->var0.width = v6;
  retstr->var0.height = 0.0;
  [(SKUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_bottomRightViewElements width:?];
  v9 = v8;
  retstr->var1.width = v8;
  retstr->var1.height = v10;
  retstr->var2.width = v7;
  retstr->var2.height = 0.0;
  retstr->var3.width = v7;
  retstr->var3.height = 0.0;
  [(SKUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_topRightViewElements width:v7];
  retstr->var4.width = v11;
  retstr->var4.height = v12;
  if (v9 >= v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  v14 = v7;
  if (v11 > 0.00000011920929)
  {
    v14 = v7 - v11 + -5.0;
    retstr->var3.width = v14;
  }

  if (v13 > 0.00000011920929)
  {
    retstr->var2.width = v7 - v13 + -5.0;
  }

  v15 = v7;
  if (v9 > 0.00000011920929)
  {
    v15 = v7 - v9 + -5.0;
    retstr->var0.width = v15;
  }

  result = [(SKUIProductLockupLayout *)self hasBottomRightElementWithRightAlignment];
  if (result)
  {
    if (v15 >= v14)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    if (v14 > 0.00000011920929)
    {
      retstr->var4.width = v7 - v14 + -5.0;
    }

    if (v17 > 0.00000011920929)
    {
      retstr->var2.width = v7;
    }

    if (v15 > 0.00000011920929)
    {
      retstr->var1.width = v7 - v15 + -5.0;
    }
  }

  return result;
}

- (BOOL)hasBottomRightElementWithRightAlignment
{
  v2 = [(SKUIProductLockupLayout *)self viewElementsForSection:1];
  v3 = [v2 indexOfObjectPassingTest:&__block_literal_global_38] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

BOOL __66__SKUIProductLockupLayout_hasBottomRightElementWithRightAlignment__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 style];
  v3 = [v2 elementAlignment] == 3;

  return v3;
}

- (double)metadataWidthForWidth:(double)a3
{
  v3 = a3;
  if (self->_productImageElement)
  {
    [(SKUIViewElementLayoutContext *)self->_layoutContext sizeForViewElement:a3 width:?];
    return v3 - (v4 + 13.0);
  }

  return v3;
}

- (SKUIProductLockupLayoutSizing)sizingToFitWidth:(SEL)a3
{
  v36 = *MEMORY[0x277D85DE8];
  retstr->var0.width = 0.0;
  retstr->var0.height = 0.0;
  [(SKUIProductLockupLayout *)self metadataWidthForWidth:a4];
  v7 = v6;
  [(SKUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_bottomRightViewElements width:?];
  v9 = v8;
  retstr->var1.width = v8;
  retstr->var1.height = v10;
  [(SKUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_topRightViewElements width:v7];
  v12 = v11;
  retstr->var4.width = v11;
  retstr->var4.height = v13;
  v14 = v7 - v11 + -5.0;
  if (v12 <= 0.00000011920929)
  {
    v14 = v7;
  }

  [(SKUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_topLeftViewElements width:v14];
  retstr->var3.width = v15;
  retstr->var3.height = v16;
  if (v9 >= v12)
  {
    v17 = v9;
  }

  else
  {
    v17 = v12;
  }

  if (v17 <= 0.00000011920929)
  {
    v18 = v7;
  }

  else
  {
    v18 = v7 - v17 + -5.0;
  }

  [(SKUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_middleLeftViewElements width:v18];
  retstr->var2.width = v19;
  retstr->var2.height = v20;
  if (v9 > 0.00000011920929)
  {
    v7 = v7 - v9 + -5.0;
  }

  if (self->_bottomLeftLayoutStyle == 2)
  {
    retstr->var0.width = v7;
    retstr->var0.height = 0.0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = self->_bottomLeftViewElements;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      v25 = 0.0;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [(SKUIProductLockupLayout *)self _sizeForViewElement:*(*(&v31 + 1) + 8 * i) width:v7, v31];
          if (v25 < v27)
          {
            v25 = v27;
          }
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v23);
      retstr->var0.height = v25;
    }
  }

  else
  {
    result = [(SKUIProductLockupLayout *)self _sizeForVerticalViewElements:self->_bottomLeftViewElements width:v7];
    retstr->var0.width = v29;
    retstr->var0.height = v30;
  }

  return result;
}

- (double)topPaddingForViewElement:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [v4 elementType];
  if (v5 == 8)
  {
    if ([v4 badgeType] == 1)
    {
      v17[3] = 3.0;
    }

    else
    {
      v6 = [v4 style];
      v7 = SKUIViewElementFontWithStyle(v6);

      if (v7)
      {
        [v7 _bodyLeading];
        v9 = v8;
      }

      else
      {
        v10 = SKUIFontForTextStyle(2);
        [v10 _bodyLeading];
        v9 = v11;
      }

      [(SKUIViewElementLayoutContext *)self->_layoutContext sizeForBadgeElement:v4];
      v17[3] = v9 - v12;
    }
  }

  else if (v5 == 62)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__SKUIProductLockupLayout_topPaddingForViewElement___block_invoke;
    v15[3] = &unk_2781FC560;
    v15[4] = self;
    v15[5] = &v16;
    [v4 enumerateChildrenUsingBlock:v15];
  }

  v13 = v17[3];
  _Block_object_dispose(&v16, 8);

  return v13;
}

uint64_t __52__SKUIProductLockupLayout_topPaddingForViewElement___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) topPaddingForViewElement:a2];
  *(*(*(a1 + 40) + 8) + 24) = v6;
  *a3 = 1;
  return result;
}

- (id)viewElementsForSection:(int64_t)a3
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        bottomRightViewElements = self->_bottomRightViewElements;
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_16;
        }

        bottomRightViewElements = self->_middleLeftViewElements;
      }
    }

    else
    {
      bottomRightViewElements = self->_bottomLeftViewElements;
    }

LABEL_15:
    self = bottomRightViewElements;
    goto LABEL_16;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      bottomRightViewElements = self->_topLeftViewElements;
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_16;
      }

      bottomRightViewElements = self->_topRightViewElements;
    }

    goto LABEL_15;
  }

  if (self->_productImageElement)
  {
    v5[0] = self->_productImageElement;
    self = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    self = 0;
  }

LABEL_16:

  return self;
}

- (CGSize)_sizeForSegmentedControl:(id)a3 width:(double)a4
{
  v5 = a3;
  v6 = [[SKUISegmentedControlViewElementController alloc] initWithViewElement:v5];

  [(SKUISegmentedControlViewElementController *)v6 setDesiredSegmentWidth:40.0];
  v7 = [(SKUISegmentedControlViewElementController *)v6 segmentedControlView];
  [v7 sizeThatFits:{a4, 1.79769313e308}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)_sizeForVerticalViewElements:(id)a3 width:(double)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3010000000;
  v17 = &unk_215F8ACD7;
  v18 = *MEMORY[0x277CBF3A8];
  v7 = [v6 count];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SKUIProductLockupLayout__sizeForVerticalViewElements_width___block_invoke;
  v12[3] = &unk_2781FE5C0;
  *&v12[7] = a4;
  v12[4] = self;
  v12[5] = &v14;
  v12[8] = v7;
  v12[6] = v13;
  [v6 enumerateObjectsUsingBlock:v12];
  v8 = v15[4];
  v9 = v15[5];
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

void __62__SKUIProductLockupLayout__sizeForVerticalViewElements_width___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v18 = a2;
  [*(a1 + 32) _sizeForViewElement:v18 width:*(a1 + 56)];
  v6 = v5;
  v8 = v7;
  v9 = [*(*(a1 + 32) + 32) textPropertiesForViewElement:v18 width:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 40) = v8 + *(*(*(a1 + 40) + 8) + 40);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 32);
  if (v11 < v6)
  {
    v11 = v6;
  }

  *(v10 + 32) = v11;
  if (*(a1 + 64) - 1 > a3)
  {
    [*(a1 + 32) bottomPaddingForViewElement:v18];
    *(*(*(a1 + 40) + 8) + 40) = v12 + *(*(*(a1 + 40) + 8) + 40);
  }

  if (a3)
  {
    [v9 desiredOffsetTop];
    v14 = v13;
    [*(a1 + 32) topPaddingForViewElement:v18];
    if (v14 >= v15)
    {
      v15 = v14;
    }

    v16 = v15 - *(*(*(a1 + 48) + 8) + 24);
    *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 40) + 8) + 40) + fmaxf(roundf(v16), 0.0);
  }

  [v9 baselineOffsetFromBottom];
  *(*(*(a1 + 48) + 8) + 24) = v17;
}

- (CGSize)_sizeForViewElement:(id)a3 width:(double)a4
{
  v6 = a3;
  if ([v6 elementType] == 109)
  {
    [(SKUIProductLockupLayout *)self _sizeForSegmentedControl:v6 width:a4];
  }

  else
  {
    [(SKUIViewElementLayoutContext *)self->_layoutContext sizeForViewElement:v6 width:a4];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)initWithLockup:width:context:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductLockupLayout initWithLockup:width:context:]";
}

@end
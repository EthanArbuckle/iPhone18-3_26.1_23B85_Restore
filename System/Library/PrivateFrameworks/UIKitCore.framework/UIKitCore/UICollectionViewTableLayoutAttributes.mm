@interface UICollectionViewTableLayoutAttributes
+ (int64_t)automaticValueOptionsForRepresentedElementCategory:(unint64_t)a3;
+ (void)applyValuesFromAttributes:(id)a3 toAttributes:(id)a4 valueOptions:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (UIEdgeInsets)backgroundInset;
- (UIEdgeInsets)margins;
- (UIEdgeInsets)separatorInset;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UICollectionViewTableLayoutAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = UICollectionViewTableLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:a3];
  [UICollectionViewTableLayoutAttributes applyValuesFromAttributes:self toAttributes:v4 valueOptions:31];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v10.receiver = self;
  v10.super_class = UICollectionViewTableLayoutAttributes;
  v5 = [(UICollectionViewLayoutAttributes *)&v10 isEqual:?];
  if (v5)
  {
    if (a3 == self)
    {
      LOBYTE(v5) = 1;
      return v5;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || self->_isHeader != *(a3 + 360) || self->_maxTitleWidth != *(a3 + 56) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_margins.top, *(a3 + 33)), vceqq_f64(*&self->_margins.bottom, *(a3 + 34))))) & 1) == 0 || self->_textAlignment != *(a3 + 57) || self->_floating != *(a3 + 361) || self->_accessoryType != *(a3 + 50) || self->_editingStyle != *(a3 + 51) || self->_shouldIndentWhileEditing != *(a3 + 353) || self->_showsReorderControl != *(a3 + 354) || self->_layoutMarginsFollowReadableWidth != *(a3 + 355) || self->_insetsContentViewsToSafeArea != *(a3 + 356) || self->_defaultLeadingCellMarginWidth != *(a3 + 52) || self->_defaultTrailingCellMarginWidth != *(a3 + 53) || self->_indexBarExtentFromEdge != *(a3 + 54) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_backgroundInset.top, *(a3 + 31)), vceqq_f64(*&self->_backgroundInset.bottom, *(a3 + 32))))) & 1) == 0 || self->_indentationLevel != *(a3 + 55) || self->_drawsSeparatorAtTopOfSection != *(a3 + 357) || self->_drawsSeparatorAtBottomOfSection != *(a3 + 358))
    {
      goto LABEL_33;
    }

    backgroundColor = self->_backgroundColor;
    if (backgroundColor == *(a3 + 49) || (v5 = [(UIColor *)backgroundColor isEqual:?]) != 0)
    {
      if (self->_separatorStyle != *(a3 + 46) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_separatorInset.top, *(a3 + 29)), vceqq_f64(*&self->_separatorInset.bottom, *(a3 + 30))))) & 1) == 0 || self->_separatorInsetIsRelativeToCellEdges != *(a3 + 352))
      {
        goto LABEL_33;
      }

      separatorColor = self->_separatorColor;
      if (separatorColor == *(a3 + 47) || (v5 = [(UIColor *)separatorColor isEqual:?]) != 0)
      {
        separatorEffect = self->_separatorEffect;
        if (separatorEffect == *(a3 + 48) || (v5 = [(UIVisualEffect *)separatorEffect isEqual:?]) != 0)
        {
          if (self->_sectionLocation == *(a3 + 91))
          {
            LOBYTE(v5) = self->_preferredAttributesCached == *(a3 + 359);
            return v5;
          }

LABEL_33:
          LOBYTE(v5) = 0;
        }
      }
    }
  }

  return v5;
}

+ (void)applyValuesFromAttributes:(id)a3 toAttributes:(id)a4 valueOptions:(int64_t)a5
{
  v5 = a5;
  v10 = a3;
  v7 = a4;
  if (v5)
  {
    [v7 setBackgroundColor:{objc_msgSend(v10, "backgroundColor")}];
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v7 setSectionLocation:{objc_msgSend(v10, "sectionLocation")}];
  [v7 setLayoutMarginsFollowReadableWidth:{objc_msgSend(v10, "layoutMarginsFollowReadableWidth")}];
  [v7 setInsetsContentViewsToSafeArea:{objc_msgSend(v10, "insetsContentViewsToSafeArea")}];
  [v10 defaultLeadingCellMarginWidth];
  [v7 setDefaultLeadingCellMarginWidth:?];
  [v10 defaultTrailingCellMarginWidth];
  [v7 setDefaultTrailingCellMarginWidth:?];
  [v10 indexBarExtentFromEdge];
  [v7 setIndexBarExtentFromEdge:?];
  [v10 backgroundInset];
  [v7 setBackgroundInset:?];
  [v7 setIndentationLevel:{objc_msgSend(v10, "indentationLevel")}];
  [v7 setDrawsSeparatorAtTopOfSection:{objc_msgSend(v10, "drawsSeparatorAtTopOfSection")}];
  [v7 setDrawsSeparatorAtBottomOfSection:{objc_msgSend(v10, "drawsSeparatorAtBottomOfSection")}];
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    [v7 setSeparatorStyle:{objc_msgSend(v10, "separatorStyle")}];
    [v10 separatorInset];
    [v7 setSeparatorInset:?];
    [v7 setSeparatorInsetIsRelativeToCellEdges:{objc_msgSend(v10, "separatorInsetIsRelativeToCellEdges")}];
    v8 = [v10 separatorColor];
    [v7 setSeparatorColor:v8];

    v9 = [v10 separatorEffect];
    [v7 setSeparatorEffect:v9];

    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  [v7 setAccessoryType:{objc_msgSend(v10, "accessoryType")}];
  [v7 setEditingStyle:{objc_msgSend(v10, "editingStyle")}];
  [v7 setShouldIndentWhileEditing:{objc_msgSend(v10, "shouldIndentWhileEditing")}];
  [v7 setShowsReorderControl:{objc_msgSend(v10, "showsReorderControl")}];
  if ((v5 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v5 & 0x10) != 0)
  {
LABEL_6:
    [v7 setIsHeader:{objc_msgSend(v10, "isHeader")}];
    [v10 maxTitleWidth];
    [v7 setMaxTitleWidth:?];
    [v10 margins];
    [v7 setMargins:?];
    [v7 setTextAlignment:{objc_msgSend(v10, "textAlignment")}];
    [v7 setFloating:{objc_msgSend(v10, "floating")}];
  }

LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setPreferredAttributesCached:{objc_msgSend(v10, "preferredAttributesCached")}];
    }
  }
}

+ (int64_t)automaticValueOptionsForRepresentedElementCategory:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_18A678F48[a3];
  }
}

- (UIEdgeInsets)separatorInset
{
  top = self->_separatorInset.top;
  left = self->_separatorInset.left;
  bottom = self->_separatorInset.bottom;
  right = self->_separatorInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)backgroundInset
{
  top = self->_backgroundInset.top;
  left = self->_backgroundInset.left;
  bottom = self->_backgroundInset.bottom;
  right = self->_backgroundInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)margins
{
  top = self->_margins.top;
  left = self->_margins.left;
  bottom = self->_margins.bottom;
  right = self->_margins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
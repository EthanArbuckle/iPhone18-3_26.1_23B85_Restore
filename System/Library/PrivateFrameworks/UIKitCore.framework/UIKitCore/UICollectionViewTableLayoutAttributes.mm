@interface UICollectionViewTableLayoutAttributes
+ (int64_t)automaticValueOptionsForRepresentedElementCategory:(unint64_t)category;
+ (void)applyValuesFromAttributes:(id)attributes toAttributes:(id)toAttributes valueOptions:(int64_t)options;
- (BOOL)isEqual:(id)equal;
- (UIEdgeInsets)backgroundInset;
- (UIEdgeInsets)margins;
- (UIEdgeInsets)separatorInset;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UICollectionViewTableLayoutAttributes

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = UICollectionViewTableLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:zone];
  [UICollectionViewTableLayoutAttributes applyValuesFromAttributes:self toAttributes:v4 valueOptions:31];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v10.receiver = self;
  v10.super_class = UICollectionViewTableLayoutAttributes;
  v5 = [(UICollectionViewLayoutAttributes *)&v10 isEqual:?];
  if (v5)
  {
    if (equal == self)
    {
      LOBYTE(v5) = 1;
      return v5;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || self->_isHeader != *(equal + 360) || self->_maxTitleWidth != *(equal + 56) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_margins.top, *(equal + 33)), vceqq_f64(*&self->_margins.bottom, *(equal + 34))))) & 1) == 0 || self->_textAlignment != *(equal + 57) || self->_floating != *(equal + 361) || self->_accessoryType != *(equal + 50) || self->_editingStyle != *(equal + 51) || self->_shouldIndentWhileEditing != *(equal + 353) || self->_showsReorderControl != *(equal + 354) || self->_layoutMarginsFollowReadableWidth != *(equal + 355) || self->_insetsContentViewsToSafeArea != *(equal + 356) || self->_defaultLeadingCellMarginWidth != *(equal + 52) || self->_defaultTrailingCellMarginWidth != *(equal + 53) || self->_indexBarExtentFromEdge != *(equal + 54) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_backgroundInset.top, *(equal + 31)), vceqq_f64(*&self->_backgroundInset.bottom, *(equal + 32))))) & 1) == 0 || self->_indentationLevel != *(equal + 55) || self->_drawsSeparatorAtTopOfSection != *(equal + 357) || self->_drawsSeparatorAtBottomOfSection != *(equal + 358))
    {
      goto LABEL_33;
    }

    backgroundColor = self->_backgroundColor;
    if (backgroundColor == *(equal + 49) || (v5 = [(UIColor *)backgroundColor isEqual:?]) != 0)
    {
      if (self->_separatorStyle != *(equal + 46) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_separatorInset.top, *(equal + 29)), vceqq_f64(*&self->_separatorInset.bottom, *(equal + 30))))) & 1) == 0 || self->_separatorInsetIsRelativeToCellEdges != *(equal + 352))
      {
        goto LABEL_33;
      }

      separatorColor = self->_separatorColor;
      if (separatorColor == *(equal + 47) || (v5 = [(UIColor *)separatorColor isEqual:?]) != 0)
      {
        separatorEffect = self->_separatorEffect;
        if (separatorEffect == *(equal + 48) || (v5 = [(UIVisualEffect *)separatorEffect isEqual:?]) != 0)
        {
          if (self->_sectionLocation == *(equal + 91))
          {
            LOBYTE(v5) = self->_preferredAttributesCached == *(equal + 359);
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

+ (void)applyValuesFromAttributes:(id)attributes toAttributes:(id)toAttributes valueOptions:(int64_t)options
{
  optionsCopy = options;
  attributesCopy = attributes;
  toAttributesCopy = toAttributes;
  if (optionsCopy)
  {
    [toAttributesCopy setBackgroundColor:{objc_msgSend(attributesCopy, "backgroundColor")}];
    if ((optionsCopy & 4) == 0)
    {
LABEL_3:
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((optionsCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  [toAttributesCopy setSectionLocation:{objc_msgSend(attributesCopy, "sectionLocation")}];
  [toAttributesCopy setLayoutMarginsFollowReadableWidth:{objc_msgSend(attributesCopy, "layoutMarginsFollowReadableWidth")}];
  [toAttributesCopy setInsetsContentViewsToSafeArea:{objc_msgSend(attributesCopy, "insetsContentViewsToSafeArea")}];
  [attributesCopy defaultLeadingCellMarginWidth];
  [toAttributesCopy setDefaultLeadingCellMarginWidth:?];
  [attributesCopy defaultTrailingCellMarginWidth];
  [toAttributesCopy setDefaultTrailingCellMarginWidth:?];
  [attributesCopy indexBarExtentFromEdge];
  [toAttributesCopy setIndexBarExtentFromEdge:?];
  [attributesCopy backgroundInset];
  [toAttributesCopy setBackgroundInset:?];
  [toAttributesCopy setIndentationLevel:{objc_msgSend(attributesCopy, "indentationLevel")}];
  [toAttributesCopy setDrawsSeparatorAtTopOfSection:{objc_msgSend(attributesCopy, "drawsSeparatorAtTopOfSection")}];
  [toAttributesCopy setDrawsSeparatorAtBottomOfSection:{objc_msgSend(attributesCopy, "drawsSeparatorAtBottomOfSection")}];
  if ((optionsCopy & 8) == 0)
  {
LABEL_4:
    if ((optionsCopy & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    [toAttributesCopy setSeparatorStyle:{objc_msgSend(attributesCopy, "separatorStyle")}];
    [attributesCopy separatorInset];
    [toAttributesCopy setSeparatorInset:?];
    [toAttributesCopy setSeparatorInsetIsRelativeToCellEdges:{objc_msgSend(attributesCopy, "separatorInsetIsRelativeToCellEdges")}];
    separatorColor = [attributesCopy separatorColor];
    [toAttributesCopy setSeparatorColor:separatorColor];

    separatorEffect = [attributesCopy separatorEffect];
    [toAttributesCopy setSeparatorEffect:separatorEffect];

    if ((optionsCopy & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  [toAttributesCopy setAccessoryType:{objc_msgSend(attributesCopy, "accessoryType")}];
  [toAttributesCopy setEditingStyle:{objc_msgSend(attributesCopy, "editingStyle")}];
  [toAttributesCopy setShouldIndentWhileEditing:{objc_msgSend(attributesCopy, "shouldIndentWhileEditing")}];
  [toAttributesCopy setShowsReorderControl:{objc_msgSend(attributesCopy, "showsReorderControl")}];
  if ((optionsCopy & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((optionsCopy & 0x10) != 0)
  {
LABEL_6:
    [toAttributesCopy setIsHeader:{objc_msgSend(attributesCopy, "isHeader")}];
    [attributesCopy maxTitleWidth];
    [toAttributesCopy setMaxTitleWidth:?];
    [attributesCopy margins];
    [toAttributesCopy setMargins:?];
    [toAttributesCopy setTextAlignment:{objc_msgSend(attributesCopy, "textAlignment")}];
    [toAttributesCopy setFloating:{objc_msgSend(attributesCopy, "floating")}];
  }

LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [toAttributesCopy setPreferredAttributesCached:{objc_msgSend(attributesCopy, "preferredAttributesCached")}];
    }
  }
}

+ (int64_t)automaticValueOptionsForRepresentedElementCategory:(unint64_t)category
{
  if (category > 2)
  {
    return 0;
  }

  else
  {
    return qword_18A678F48[category];
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
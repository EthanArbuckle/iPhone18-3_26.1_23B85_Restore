@interface SKUICollectionViewLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SKUICollectionViewLayoutAttributes

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUICollectionViewLayoutAttributes copyWithZone:];
  }

  v7.receiver = self;
  v7.super_class = SKUICollectionViewLayoutAttributes;
  v5 = [(UICollectionViewLayoutAttributes *)&v7 copyWithZone:zone];
  objc_storeStrong(v5 + 44, self->_backgroundColor);
  v5[45] = self->_position;
  v5[46] = *&self->_zoomingImageAlpha;
  v5[49] = *&self->_zoomingImageLambda;
  v5[47] = *&self->_zoomingImageWidth;
  v5[48] = *&self->_zoomingImageImposedAlphaOfOtherViews;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUICollectionViewLayoutAttributes isEqual:];
  }

  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((backgroundColor = equalCopy->_backgroundColor, backgroundColor == self->_backgroundColor) || [(UIColor *)backgroundColor isEqual:?]) && equalCopy->_position == self->_position && equalCopy->_zoomingImageAlpha == self->_zoomingImageAlpha && equalCopy->_zoomingImageLambda == self->_zoomingImageLambda && equalCopy->_zoomingImageWidth == self->_zoomingImageWidth && equalCopy->_zoomingImageImposedAlphaOfOtherViews == self->_zoomingImageImposedAlphaOfOtherViews)
    {
      v8.receiver = self;
      v8.super_class = SKUICollectionViewLayoutAttributes;
      v6 = [(UICollectionViewLayoutAttributes *)&v8 isEqual:equalCopy];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)copyWithZone:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICollectionViewLayoutAttributes copyWithZone:]";
}

- (void)isEqual:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICollectionViewLayoutAttributes isEqual:]";
}

@end
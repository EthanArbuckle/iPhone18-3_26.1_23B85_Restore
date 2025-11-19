@interface SKUICollectionViewLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SKUICollectionViewLayoutAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUICollectionViewLayoutAttributes copyWithZone:];
  }

  v7.receiver = self;
  v7.super_class = SKUICollectionViewLayoutAttributes;
  v5 = [(UICollectionViewLayoutAttributes *)&v7 copyWithZone:a3];
  objc_storeStrong(v5 + 44, self->_backgroundColor);
  v5[45] = self->_position;
  v5[46] = *&self->_zoomingImageAlpha;
  v5[49] = *&self->_zoomingImageLambda;
  v5[47] = *&self->_zoomingImageWidth;
  v5[48] = *&self->_zoomingImageImposedAlphaOfOtherViews;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUICollectionViewLayoutAttributes isEqual:];
  }

  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((backgroundColor = v4->_backgroundColor, backgroundColor == self->_backgroundColor) || [(UIColor *)backgroundColor isEqual:?]) && v4->_position == self->_position && v4->_zoomingImageAlpha == self->_zoomingImageAlpha && v4->_zoomingImageLambda == self->_zoomingImageLambda && v4->_zoomingImageWidth == self->_zoomingImageWidth && v4->_zoomingImageImposedAlphaOfOtherViews == self->_zoomingImageImposedAlphaOfOtherViews)
    {
      v8.receiver = self;
      v8.super_class = SKUICollectionViewLayoutAttributes;
      v6 = [(UICollectionViewLayoutAttributes *)&v8 isEqual:v4];
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
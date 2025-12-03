@interface SKUICompressedImage
- (id)description;
@end

@implementation SKUICompressedImage

- (id)description
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUICompressedImage *)v3 description:v4];
      }
    }
  }

  cornerType = [(SKUICompressedImage *)self cornerType];
  v12 = @"SKUICornerTypeArc";
  if (cornerType != 1)
  {
    v12 = 0;
  }

  if (cornerType)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"SKUICornerTypeContinuous";
  }

  v14 = MEMORY[0x277CCACA8];
  v23.receiver = self;
  v23.super_class = SKUICompressedImage;
  v15 = [(SKUICompressedImage *)&v23 description];
  [(SKUICompressedImage *)self cornerRadius];
  v17 = v16;
  [(SKUICompressedImage *)self borderWidth];
  v19 = v18;
  borderColor = [(SKUICompressedImage *)self borderColor];
  v21 = [v14 stringWithFormat:@"%@: {%@, %f} {%f, %@};", v15, v13, v17, v19, borderColor];;

  return v21;
}

@end
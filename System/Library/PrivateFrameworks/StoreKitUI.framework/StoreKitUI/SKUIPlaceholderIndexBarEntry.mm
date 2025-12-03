@interface SKUIPlaceholderIndexBarEntry
- (BOOL)isEqual:(id)equal;
- (CGSize)_calculatedContentSize;
- (CGSize)placeholderSize;
- (SKUIPlaceholderIndexBarEntry)initWithPlaceholderSize:(CGSize)size;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKUIPlaceholderIndexBarEntry

- (SKUIPlaceholderIndexBarEntry)initWithPlaceholderSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIPlaceholderIndexBarEntry *)v6 initWithPlaceholderSize:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUIPlaceholderIndexBarEntry;
  v14 = [(SKUIPlaceholderIndexBarEntry *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_placeholderSize.width = width;
    v14->_placeholderSize.height = height;
    [(SKUIIndexBarEntry *)v14 setEntryType:4];
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGSize(self->_placeholderSize);
  v7 = [v3 stringWithFormat:@"<%@ %p placeholderSize:%@>", v5, self, v6];

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = SKUIPlaceholderIndexBarEntry;
  return [(SKUIIndexBarEntry *)&v3 hash]^ (self->_placeholderSize.width * 1000.0) ^ (self->_placeholderSize.height * 10000.0);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = SKUIPlaceholderIndexBarEntry, [(SKUIIndexBarEntry *)&v7 isEqual:equalCopy]) && equalCopy->_placeholderSize.height == self->_placeholderSize.height && equalCopy->_placeholderSize.width == self->_placeholderSize.width;
  }

  return v5;
}

- (CGSize)_calculatedContentSize
{
  width = self->_placeholderSize.width;
  height = self->_placeholderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)placeholderSize
{
  width = self->_placeholderSize.width;
  height = self->_placeholderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
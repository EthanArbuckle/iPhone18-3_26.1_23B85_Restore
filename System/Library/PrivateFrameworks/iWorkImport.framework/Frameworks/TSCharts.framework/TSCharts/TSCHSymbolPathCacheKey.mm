@interface TSCHSymbolPathCacheKey
- (BOOL)isEqual:(id)equal;
- (TSCHSymbolPathCacheKey)initWithSymbolType:(int)type symbolSize:(double)size stroke:(id)stroke forHitCheck:(BOOL)check;
@end

@implementation TSCHSymbolPathCacheKey

- (TSCHSymbolPathCacheKey)initWithSymbolType:(int)type symbolSize:(double)size stroke:(id)stroke forHitCheck:(BOOL)check
{
  strokeCopy = stroke;
  v20.receiver = self;
  v20.super_class = TSCHSymbolPathCacheKey;
  v11 = [(TSCHSymbolPathCacheKey *)&v20 init];
  v16 = v11;
  if (v11)
  {
    v11->_symbolType = type;
    v11->_size = size;
    v17 = objc_msgSend_copy(strokeCopy, v12, v13, v14, v15);
    stroke = v16->_stroke;
    v16->_stroke = v17;

    v16->_forHitCheck = check;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else if (equalCopy)
  {
    objc_opt_class();
    v6 = TSUSpecificCast();
    v7 = v6;
    if (v6 && self->_symbolType == *(v6 + 8) && self->_size == *(v6 + 16) && self->_forHitCheck == *(v6 + 32))
    {
      stroke = self->_stroke;
      v9 = *(v6 + 24);
      v10 = stroke;
      v12 = v9;
      if (v10 | v12)
      {
        isEqual = objc_msgSend_isEqual_(v10, v11, v13, v14, v15, v12);
      }

      else
      {
        isEqual = 1;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

@end
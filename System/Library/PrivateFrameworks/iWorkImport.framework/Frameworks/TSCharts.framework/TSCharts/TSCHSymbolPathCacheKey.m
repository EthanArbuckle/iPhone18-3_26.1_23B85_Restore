@interface TSCHSymbolPathCacheKey
- (BOOL)isEqual:(id)a3;
- (TSCHSymbolPathCacheKey)initWithSymbolType:(int)a3 symbolSize:(double)a4 stroke:(id)a5 forHitCheck:(BOOL)a6;
@end

@implementation TSCHSymbolPathCacheKey

- (TSCHSymbolPathCacheKey)initWithSymbolType:(int)a3 symbolSize:(double)a4 stroke:(id)a5 forHitCheck:(BOOL)a6
{
  v10 = a5;
  v20.receiver = self;
  v20.super_class = TSCHSymbolPathCacheKey;
  v11 = [(TSCHSymbolPathCacheKey *)&v20 init];
  v16 = v11;
  if (v11)
  {
    v11->_symbolType = a3;
    v11->_size = a4;
    v17 = objc_msgSend_copy(v10, v12, v13, v14, v15);
    stroke = v16->_stroke;
    v16->_stroke = v17;

    v16->_forHitCheck = a6;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    isEqual = 1;
  }

  else if (v4)
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
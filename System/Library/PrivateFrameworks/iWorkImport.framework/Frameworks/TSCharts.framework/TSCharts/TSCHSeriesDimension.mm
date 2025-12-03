@interface TSCHSeriesDimension
+ (id)seriesDimensionWithSeriesIndex:(unint64_t)index axisType:(int)type;
- (BOOL)isEqual:(id)equal;
- (TSCHSeriesDimension)initWithSeriesIndex:(unint64_t)index axisType:(int)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TSCHSeriesDimension

- (TSCHSeriesDimension)initWithSeriesIndex:(unint64_t)index axisType:(int)type
{
  v7.receiver = self;
  v7.super_class = TSCHSeriesDimension;
  result = [(TSCHSeriesDimension *)&v7 init];
  if (result)
  {
    result->_seriesIndex = index;
    result->_axisType = type;
  }

  return result;
}

+ (id)seriesDimensionWithSeriesIndex:(unint64_t)index axisType:(int)type
{
  v4 = *&type;
  v6 = [TSCHSeriesDimension alloc];
  v11 = objc_msgSend_initWithSeriesIndex_axisType_(v6, v7, v8, v9, v10, index, v4);

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_seriesIndex(self, v5, v6, v7, v8);
  v15 = objc_msgSend_axisType(self, v10, v11, v12, v13);

  return objc_msgSend_initWithSeriesIndex_axisType_(v4, v14, v16, v17, v18, v9, v15);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      v26 = 1;
    }

    else
    {
      objc_opt_class();
      v6 = TSUDynamicCast();
      v11 = v6;
      if (v6 && (v12 = objc_msgSend_seriesIndex(v6, v7, v8, v9, v10), v12 == objc_msgSend_seriesIndex(self, v13, v14, v15, v16)))
      {
        v21 = objc_msgSend_axisType(v11, v17, v18, v19, v20);
        v26 = v21 == objc_msgSend_axisType(self, v22, v23, v24, v25);
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_stringWithFormat_(v3, v6, v7, v8, v9, @"<%@: %p axisType: %ld seriesIndex: %ld>", v5, self, self->_axisType, self->_seriesIndex);

  return v10;
}

@end
@interface PUImportSectionedGridLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PUImportSectionedGridLayoutAttributes

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      backgroundColor = [(PUImportSectionedGridLayoutAttributes *)self backgroundColor];
      backgroundColor2 = [(PUImportSectionedGridLayoutAttributes *)v5 backgroundColor];
      v8 = [backgroundColor isEqual:backgroundColor2];

      if (v8 && (-[PUImportSectionedGridLayoutAttributes strokeWidth](self, "strokeWidth"), v10 = v9, -[PUImportSectionedGridLayoutAttributes strokeWidth](v5, "strokeWidth"), v10 == v11) && (-[PUImportSectionedGridLayoutAttributes bottomStrokeColor](self, "bottomStrokeColor"), v12 = objc_claimAutoreleasedReturnValue(), -[PUImportSectionedGridLayoutAttributes bottomStrokeColor](v5, "bottomStrokeColor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v12 isEqual:v13], v13, v12, v14))
      {
        v17.receiver = self;
        v17.super_class = PUImportSectionedGridLayoutAttributes;
        v15 = [(PUSectionedGridLayoutAttributes *)&v17 isEqual:v5];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PUImportSectionedGridLayoutAttributes;
  v4 = [(PUSectionedGridLayoutAttributes *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 46, self->_backgroundColor);
  v4[47] = *&self->_strokeWidth;
  objc_storeStrong(v4 + 48, self->_bottomStrokeColor);
  return v4;
}

@end
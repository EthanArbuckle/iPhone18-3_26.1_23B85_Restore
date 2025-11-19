@interface WFAQIScaleCategory
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScaleCategory:(id)a3;
- (WFAQIScaleCategory)initWithCategoryIndex:(unint64_t)a3 localizedCategoryDescription:(id)a4;
- (WFAQIScaleCategory)initWithCoder:(id)a3;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAQIScaleCategory

- (WFAQIScaleCategory)initWithCategoryIndex:(unint64_t)a3 localizedCategoryDescription:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = WFAQIScaleCategory;
  v7 = [(WFAQIScaleCategory *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_categoryIndex = a3;
    v9 = [v6 copy];
    localizedCategoryDescription = v8->_localizedCategoryDescription;
    v8->_localizedCategoryDescription = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFAQIScaleCategory *)self isEqualToScaleCategory:v4];
  }

  return v5;
}

- (BOOL)isEqualToScaleCategory:(id)a3
{
  v4 = a3;
  v5 = [v4 categoryIndex];
  if (v5 == [(WFAQIScaleCategory *)self categoryIndex])
  {
    v6 = [v4 categoryName];
    v7 = [(WFAQIScaleCategory *)self categoryName];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v4 color];
      v9 = [(WFAQIScaleCategory *)self color];
      if ([v8 isEqualToString:v9])
      {
        v10 = [v4 range];
        v12 = v11;
        v15 = v10 == [(WFAQIScaleCategory *)self range]&& v12 == v13;
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

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WFAQIScaleCategory alloc];
  v5 = [(WFAQIScaleCategory *)self categoryIndex];
  v6 = [(WFAQIScaleCategory *)self localizedCategoryDescription];
  v7 = [(WFAQIScaleCategory *)v4 initWithCategoryIndex:v5 localizedCategoryDescription:v6];

  v8 = [(WFAQIScaleCategory *)self categoryName];
  [(WFAQIScaleCategory *)v7 setCategoryName:v8];

  v9 = [(WFAQIScaleCategory *)self color];
  [(WFAQIScaleCategory *)v7 setColor:v9];

  v10 = [(WFAQIScaleCategory *)self glyph];
  [(WFAQIScaleCategory *)v7 setGlyph:v10];

  v11 = [(WFAQIScaleCategory *)self recommendation];
  [(WFAQIScaleCategory *)v7 setRecommendation:v11];

  [(WFAQIScaleCategory *)v7 setCategoryNumber:[(WFAQIScaleCategory *)self categoryNumber]];
  v12 = [(WFAQIScaleCategory *)self range];
  [(WFAQIScaleCategory *)v7 setRange:v12, v13];
  return v7;
}

- (WFAQIScaleCategory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_categoryIndex);
  v6 = [v4 decodeIntegerForKey:v5];

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_localizedCategoryDescription);
  v9 = [v4 decodeObjectOfClass:v7 forKey:v8];

  v10 = [(WFAQIScaleCategory *)self initWithCategoryIndex:v6 localizedCategoryDescription:v9];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleCategoryNameKey"];
  [(WFAQIScaleCategory *)v10 setCategoryName:v11];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleCategoryColorKey"];
  [(WFAQIScaleCategory *)v10 setColor:v12];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleCategoryGlyphKey"];
  [(WFAQIScaleCategory *)v10 setGlyph:v13];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleCategoryRecommendationKey"];
  [(WFAQIScaleCategory *)v10 setRecommendation:v14];

  -[WFAQIScaleCategory setCategoryNumber:](v10, "setCategoryNumber:", [v4 decodeIntegerForKey:@"WFAQIScaleCategoryNumberKey"]);
  v15 = [v4 decodeIntegerForKey:@"WFAQIScaleCategoryRangeLocationKey"];
  v16 = [v4 decodeIntegerForKey:@"WFAQIScaleCategoryRangeLengthKey"];

  [(WFAQIScaleCategory *)v10 setRange:v15, v16];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(WFAQIScaleCategory *)self categoryIndex];
  v5 = NSStringFromSelector(sel_categoryIndex);
  [v13 encodeInteger:v4 forKey:v5];

  v6 = [(WFAQIScaleCategory *)self localizedCategoryDescription];
  v7 = NSStringFromSelector(sel_localizedCategoryDescription);
  [v13 encodeObject:v6 forKey:v7];

  v8 = [(WFAQIScaleCategory *)self categoryName];
  [v13 encodeObject:v8 forKey:@"WFAQIScaleCategoryNameKey"];

  v9 = [(WFAQIScaleCategory *)self color];
  [v13 encodeObject:v9 forKey:@"WFAQIScaleCategoryColorKey"];

  v10 = [(WFAQIScaleCategory *)self glyph];
  [v13 encodeObject:v10 forKey:@"WFAQIScaleCategoryGlyphKey"];

  v11 = [(WFAQIScaleCategory *)self recommendation];
  [v13 encodeObject:v11 forKey:@"WFAQIScaleCategoryRecommendationKey"];

  [v13 encodeInteger:-[WFAQIScaleCategory categoryNumber](self forKey:{"categoryNumber"), @"WFAQIScaleCategoryNumberKey"}];
  [v13 encodeInteger:-[WFAQIScaleCategory range](self forKey:{"range"), @"WFAQIScaleCategoryRangeLocationKey"}];
  [(WFAQIScaleCategory *)self range];
  [v13 encodeInteger:v12 forKey:@"WFAQIScaleCategoryRangeLengthKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WFAQIScaleCategory *)self categoryName];
  v5 = [(WFAQIScaleCategory *)self color];
  v6 = [(WFAQIScaleCategory *)self glyph];
  v7 = [(WFAQIScaleCategory *)self recommendation];
  v8 = [v3 stringWithFormat:@"<WFAQIScaleCategory categoryName: %@, color: %@, glyph: %@, recommendation: %@, categoryNumber: %lu", v4, v5, v6, v7, -[WFAQIScaleCategory categoryNumber](self, "categoryNumber")];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WFAQIScaleCategory *)self categoryName];
  v5 = [(WFAQIScaleCategory *)self color];
  v6 = [(WFAQIScaleCategory *)self glyph];
  v7 = [(WFAQIScaleCategory *)self recommendation];
  v8 = [(WFAQIScaleCategory *)self categoryNumber];
  v9 = [(WFAQIScaleCategory *)self range];
  [(WFAQIScaleCategory *)self range];
  v11 = [v3 stringWithFormat:@"<WFAQIScaleCategory categoryName: %@, color: %@, glyph: %@, recommendation: %@, categoryNumber: %lu, rangeLocation: %lu, rangeLength: %lu", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end
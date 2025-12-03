@interface WFAQIScaleCategory
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScaleCategory:(id)category;
- (WFAQIScaleCategory)initWithCategoryIndex:(unint64_t)index localizedCategoryDescription:(id)description;
- (WFAQIScaleCategory)initWithCoder:(id)coder;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAQIScaleCategory

- (WFAQIScaleCategory)initWithCategoryIndex:(unint64_t)index localizedCategoryDescription:(id)description
{
  descriptionCopy = description;
  v12.receiver = self;
  v12.super_class = WFAQIScaleCategory;
  v7 = [(WFAQIScaleCategory *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_categoryIndex = index;
    v9 = [descriptionCopy copy];
    localizedCategoryDescription = v8->_localizedCategoryDescription;
    v8->_localizedCategoryDescription = v9;
  }

  return v8;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFAQIScaleCategory *)self isEqualToScaleCategory:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToScaleCategory:(id)category
{
  categoryCopy = category;
  categoryIndex = [categoryCopy categoryIndex];
  if (categoryIndex == [(WFAQIScaleCategory *)self categoryIndex])
  {
    categoryName = [categoryCopy categoryName];
    categoryName2 = [(WFAQIScaleCategory *)self categoryName];
    if ([categoryName isEqualToString:categoryName2])
    {
      color = [categoryCopy color];
      color2 = [(WFAQIScaleCategory *)self color];
      if ([color isEqualToString:color2])
      {
        range = [categoryCopy range];
        v12 = v11;
        v15 = range == [(WFAQIScaleCategory *)self range]&& v12 == v13;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WFAQIScaleCategory alloc];
  categoryIndex = [(WFAQIScaleCategory *)self categoryIndex];
  localizedCategoryDescription = [(WFAQIScaleCategory *)self localizedCategoryDescription];
  v7 = [(WFAQIScaleCategory *)v4 initWithCategoryIndex:categoryIndex localizedCategoryDescription:localizedCategoryDescription];

  categoryName = [(WFAQIScaleCategory *)self categoryName];
  [(WFAQIScaleCategory *)v7 setCategoryName:categoryName];

  color = [(WFAQIScaleCategory *)self color];
  [(WFAQIScaleCategory *)v7 setColor:color];

  glyph = [(WFAQIScaleCategory *)self glyph];
  [(WFAQIScaleCategory *)v7 setGlyph:glyph];

  recommendation = [(WFAQIScaleCategory *)self recommendation];
  [(WFAQIScaleCategory *)v7 setRecommendation:recommendation];

  [(WFAQIScaleCategory *)v7 setCategoryNumber:[(WFAQIScaleCategory *)self categoryNumber]];
  range = [(WFAQIScaleCategory *)self range];
  [(WFAQIScaleCategory *)v7 setRange:range, v13];
  return v7;
}

- (WFAQIScaleCategory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_categoryIndex);
  v6 = [coderCopy decodeIntegerForKey:v5];

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_localizedCategoryDescription);
  v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];

  v10 = [(WFAQIScaleCategory *)self initWithCategoryIndex:v6 localizedCategoryDescription:v9];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleCategoryNameKey"];
  [(WFAQIScaleCategory *)v10 setCategoryName:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleCategoryColorKey"];
  [(WFAQIScaleCategory *)v10 setColor:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleCategoryGlyphKey"];
  [(WFAQIScaleCategory *)v10 setGlyph:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleCategoryRecommendationKey"];
  [(WFAQIScaleCategory *)v10 setRecommendation:v14];

  -[WFAQIScaleCategory setCategoryNumber:](v10, "setCategoryNumber:", [coderCopy decodeIntegerForKey:@"WFAQIScaleCategoryNumberKey"]);
  v15 = [coderCopy decodeIntegerForKey:@"WFAQIScaleCategoryRangeLocationKey"];
  v16 = [coderCopy decodeIntegerForKey:@"WFAQIScaleCategoryRangeLengthKey"];

  [(WFAQIScaleCategory *)v10 setRange:v15, v16];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  categoryIndex = [(WFAQIScaleCategory *)self categoryIndex];
  v5 = NSStringFromSelector(sel_categoryIndex);
  [coderCopy encodeInteger:categoryIndex forKey:v5];

  localizedCategoryDescription = [(WFAQIScaleCategory *)self localizedCategoryDescription];
  v7 = NSStringFromSelector(sel_localizedCategoryDescription);
  [coderCopy encodeObject:localizedCategoryDescription forKey:v7];

  categoryName = [(WFAQIScaleCategory *)self categoryName];
  [coderCopy encodeObject:categoryName forKey:@"WFAQIScaleCategoryNameKey"];

  color = [(WFAQIScaleCategory *)self color];
  [coderCopy encodeObject:color forKey:@"WFAQIScaleCategoryColorKey"];

  glyph = [(WFAQIScaleCategory *)self glyph];
  [coderCopy encodeObject:glyph forKey:@"WFAQIScaleCategoryGlyphKey"];

  recommendation = [(WFAQIScaleCategory *)self recommendation];
  [coderCopy encodeObject:recommendation forKey:@"WFAQIScaleCategoryRecommendationKey"];

  [coderCopy encodeInteger:-[WFAQIScaleCategory categoryNumber](self forKey:{"categoryNumber"), @"WFAQIScaleCategoryNumberKey"}];
  [coderCopy encodeInteger:-[WFAQIScaleCategory range](self forKey:{"range"), @"WFAQIScaleCategoryRangeLocationKey"}];
  [(WFAQIScaleCategory *)self range];
  [coderCopy encodeInteger:v12 forKey:@"WFAQIScaleCategoryRangeLengthKey"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  categoryName = [(WFAQIScaleCategory *)self categoryName];
  color = [(WFAQIScaleCategory *)self color];
  glyph = [(WFAQIScaleCategory *)self glyph];
  recommendation = [(WFAQIScaleCategory *)self recommendation];
  v8 = [v3 stringWithFormat:@"<WFAQIScaleCategory categoryName: %@, color: %@, glyph: %@, recommendation: %@, categoryNumber: %lu", categoryName, color, glyph, recommendation, -[WFAQIScaleCategory categoryNumber](self, "categoryNumber")];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  categoryName = [(WFAQIScaleCategory *)self categoryName];
  color = [(WFAQIScaleCategory *)self color];
  glyph = [(WFAQIScaleCategory *)self glyph];
  recommendation = [(WFAQIScaleCategory *)self recommendation];
  categoryNumber = [(WFAQIScaleCategory *)self categoryNumber];
  range = [(WFAQIScaleCategory *)self range];
  [(WFAQIScaleCategory *)self range];
  v11 = [v3 stringWithFormat:@"<WFAQIScaleCategory categoryName: %@, color: %@, glyph: %@, recommendation: %@, categoryNumber: %lu, rangeLocation: %lu, rangeLength: %lu", categoryName, color, glyph, recommendation, categoryNumber, range, v10];

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
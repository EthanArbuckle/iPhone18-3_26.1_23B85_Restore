@interface WFAQIScale
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScale:(id)scale;
- (WFAQIScale)initWithCoder:(id)coder;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAQIScale

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFAQIScale *)self isEqualToScale:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToScale:(id)scale
{
  scaleCopy = scale;
  identifier = [scaleCopy identifier];
  identifier2 = [(WFAQIScale *)self identifier];
  if ([identifier isEqualToString:identifier2] && (v7 = objc_msgSend(scaleCopy, "isNumerical"), v7 == -[WFAQIScale isNumerical](self, "isNumerical")) && (v8 = objc_msgSend(scaleCopy, "isAscending"), v8 == -[WFAQIScale isAscending](self, "isAscending")))
  {
    range = [scaleCopy range];
    v13 = v12;
    v9 = 0;
    if (range == [(WFAQIScale *)self range]&& v13 == v14)
    {
      categories = [scaleCopy categories];
      categories2 = [(WFAQIScale *)self categories];
      if ([categories isEqualToArray:categories2])
      {
        gradient = [scaleCopy gradient];
        gradient2 = [(WFAQIScale *)self gradient];
        v9 = [gradient isEqual:gradient2];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(WFAQIScale);
  identifier = [(WFAQIScale *)self identifier];
  [(WFAQIScale *)v4 setIdentifier:identifier];

  displayName = [(WFAQIScale *)self displayName];
  [(WFAQIScale *)v4 setDisplayName:displayName];

  displayLabel = [(WFAQIScale *)self displayLabel];
  [(WFAQIScale *)v4 setDisplayLabel:displayLabel];

  [(WFAQIScale *)v4 setNumerical:[(WFAQIScale *)self isNumerical]];
  [(WFAQIScale *)v4 setAscending:[(WFAQIScale *)self isAscending]];
  range = [(WFAQIScale *)self range];
  [(WFAQIScale *)v4 setRange:range, v9];
  categories = [(WFAQIScale *)self categories];
  [(WFAQIScale *)v4 setCategories:categories];

  gradient = [(WFAQIScale *)self gradient];
  [(WFAQIScale *)v4 setGradient:gradient];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFAQIScale *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"WFAQIScaleIdentifierKey"];

  displayName = [(WFAQIScale *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"WFAQIScaleDisplayNameKey"];

  displayLabel = [(WFAQIScale *)self displayLabel];
  [coderCopy encodeObject:displayLabel forKey:@"WFAQIScaleDisplayLabelKey"];

  [coderCopy encodeBool:-[WFAQIScale isNumerical](self forKey:{"isNumerical"), @"WFAQIScaleNumericalKey"}];
  [coderCopy encodeBool:-[WFAQIScale isAscending](self forKey:{"isAscending"), @"WFAQIScaleAscendingKey"}];
  [coderCopy encodeInteger:-[WFAQIScale range](self forKey:{"range"), @"WFAQIScaleRangeLocationKey"}];
  [(WFAQIScale *)self range];
  [coderCopy encodeInteger:v8 forKey:@"WFAQIScaleRangeLengthKey"];
  categories = [(WFAQIScale *)self categories];
  [coderCopy encodeObject:categories forKey:@"WFAQIScaleCategoriesKey"];

  gradient = [(WFAQIScale *)self gradient];
  [coderCopy encodeObject:gradient forKey:@"WFAQIScaleGradientKey"];
}

- (WFAQIScale)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFAQIScale;
  v5 = [(WFAQIScale *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleIdentifierKey"];
    [(WFAQIScale *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleDisplayNameKey"];
    [(WFAQIScale *)v5 setDisplayName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleDisplayLabelKey"];
    [(WFAQIScale *)v5 setDisplayLabel:v8];

    -[WFAQIScale setNumerical:](v5, "setNumerical:", [coderCopy decodeBoolForKey:@"WFAQIScaleNumericalKey"]);
    -[WFAQIScale setAscending:](v5, "setAscending:", [coderCopy decodeBoolForKey:@"WFAQIScaleAscendingKey"]);
    -[WFAQIScale setRange:](v5, "setRange:", [coderCopy decodeIntegerForKey:@"WFAQIScaleRangeLocationKey"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"WFAQIScaleRangeLengthKey"));
    if (initWithCoder__onceToken_1 != -1)
    {
      [WFAQIScale initWithCoder:];
    }

    v9 = [coderCopy decodeObjectOfClasses:initWithCoder__categoryClasses forKey:@"WFAQIScaleCategoriesKey"];
    [(WFAQIScale *)v5 setCategories:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleGradientKey"];
    [(WFAQIScale *)v5 setGradient:v10];
  }

  return v5;
}

uint64_t __28__WFAQIScale_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v3 = initWithCoder__categoryClasses;
  initWithCoder__categoryClasses = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(WFAQIScale *)self identifier];
  displayName = [(WFAQIScale *)self displayName];
  displayLabel = [(WFAQIScale *)self displayLabel];
  isNumerical = [(WFAQIScale *)self isNumerical];
  isAscending = [(WFAQIScale *)self isAscending];
  categories = [(WFAQIScale *)self categories];
  v10 = [v3 stringWithFormat:@"<WFAQIScale identifier: %@, displayName: %@, displayLabel: %@, isNumerical: %d, isAscending: %d, categories: %@", identifier, displayName, displayLabel, isNumerical, isAscending, categories];

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(WFAQIScale *)self identifier];
  displayName = [(WFAQIScale *)self displayName];
  displayLabel = [(WFAQIScale *)self displayLabel];
  isNumerical = [(WFAQIScale *)self isNumerical];
  isAscending = [(WFAQIScale *)self isAscending];
  range = [(WFAQIScale *)self range];
  [(WFAQIScale *)self range];
  v11 = v10;
  categories = [(WFAQIScale *)self categories];
  gradient = [(WFAQIScale *)self gradient];
  v14 = [v3 stringWithFormat:@"<WFAQIScale identifier: %@, displayName: %@, displayLabel: %@, isNumerical: %d, isAscending: %d, rangeLocation: %lu, rangeLength: %lu, categories: %@, gradient: %@", identifier, displayName, displayLabel, isNumerical, isAscending, range, v11, categories, gradient];

  return v14;
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
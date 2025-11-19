@interface WFAQIScale
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScale:(id)a3;
- (WFAQIScale)initWithCoder:(id)a3;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAQIScale

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFAQIScale *)self isEqualToScale:v4];
  }

  return v5;
}

- (BOOL)isEqualToScale:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(WFAQIScale *)self identifier];
  if ([v5 isEqualToString:v6] && (v7 = objc_msgSend(v4, "isNumerical"), v7 == -[WFAQIScale isNumerical](self, "isNumerical")) && (v8 = objc_msgSend(v4, "isAscending"), v8 == -[WFAQIScale isAscending](self, "isAscending")))
  {
    v11 = [v4 range];
    v13 = v12;
    v9 = 0;
    if (v11 == [(WFAQIScale *)self range]&& v13 == v14)
    {
      v15 = [v4 categories];
      v16 = [(WFAQIScale *)self categories];
      if ([v15 isEqualToArray:v16])
      {
        v17 = [v4 gradient];
        v18 = [(WFAQIScale *)self gradient];
        v9 = [v17 isEqual:v18];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(WFAQIScale);
  v5 = [(WFAQIScale *)self identifier];
  [(WFAQIScale *)v4 setIdentifier:v5];

  v6 = [(WFAQIScale *)self displayName];
  [(WFAQIScale *)v4 setDisplayName:v6];

  v7 = [(WFAQIScale *)self displayLabel];
  [(WFAQIScale *)v4 setDisplayLabel:v7];

  [(WFAQIScale *)v4 setNumerical:[(WFAQIScale *)self isNumerical]];
  [(WFAQIScale *)v4 setAscending:[(WFAQIScale *)self isAscending]];
  v8 = [(WFAQIScale *)self range];
  [(WFAQIScale *)v4 setRange:v8, v9];
  v10 = [(WFAQIScale *)self categories];
  [(WFAQIScale *)v4 setCategories:v10];

  v11 = [(WFAQIScale *)self gradient];
  [(WFAQIScale *)v4 setGradient:v11];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFAQIScale *)self identifier];
  [v4 encodeObject:v5 forKey:@"WFAQIScaleIdentifierKey"];

  v6 = [(WFAQIScale *)self displayName];
  [v4 encodeObject:v6 forKey:@"WFAQIScaleDisplayNameKey"];

  v7 = [(WFAQIScale *)self displayLabel];
  [v4 encodeObject:v7 forKey:@"WFAQIScaleDisplayLabelKey"];

  [v4 encodeBool:-[WFAQIScale isNumerical](self forKey:{"isNumerical"), @"WFAQIScaleNumericalKey"}];
  [v4 encodeBool:-[WFAQIScale isAscending](self forKey:{"isAscending"), @"WFAQIScaleAscendingKey"}];
  [v4 encodeInteger:-[WFAQIScale range](self forKey:{"range"), @"WFAQIScaleRangeLocationKey"}];
  [(WFAQIScale *)self range];
  [v4 encodeInteger:v8 forKey:@"WFAQIScaleRangeLengthKey"];
  v9 = [(WFAQIScale *)self categories];
  [v4 encodeObject:v9 forKey:@"WFAQIScaleCategoriesKey"];

  v10 = [(WFAQIScale *)self gradient];
  [v4 encodeObject:v10 forKey:@"WFAQIScaleGradientKey"];
}

- (WFAQIScale)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFAQIScale;
  v5 = [(WFAQIScale *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleIdentifierKey"];
    [(WFAQIScale *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleDisplayNameKey"];
    [(WFAQIScale *)v5 setDisplayName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleDisplayLabelKey"];
    [(WFAQIScale *)v5 setDisplayLabel:v8];

    -[WFAQIScale setNumerical:](v5, "setNumerical:", [v4 decodeBoolForKey:@"WFAQIScaleNumericalKey"]);
    -[WFAQIScale setAscending:](v5, "setAscending:", [v4 decodeBoolForKey:@"WFAQIScaleAscendingKey"]);
    -[WFAQIScale setRange:](v5, "setRange:", [v4 decodeIntegerForKey:@"WFAQIScaleRangeLocationKey"], objc_msgSend(v4, "decodeIntegerForKey:", @"WFAQIScaleRangeLengthKey"));
    if (initWithCoder__onceToken_1 != -1)
    {
      [WFAQIScale initWithCoder:];
    }

    v9 = [v4 decodeObjectOfClasses:initWithCoder__categoryClasses forKey:@"WFAQIScaleCategoriesKey"];
    [(WFAQIScale *)v5 setCategories:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAQIScaleGradientKey"];
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
  v4 = [(WFAQIScale *)self identifier];
  v5 = [(WFAQIScale *)self displayName];
  v6 = [(WFAQIScale *)self displayLabel];
  v7 = [(WFAQIScale *)self isNumerical];
  v8 = [(WFAQIScale *)self isAscending];
  v9 = [(WFAQIScale *)self categories];
  v10 = [v3 stringWithFormat:@"<WFAQIScale identifier: %@, displayName: %@, displayLabel: %@, isNumerical: %d, isAscending: %d, categories: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WFAQIScale *)self identifier];
  v5 = [(WFAQIScale *)self displayName];
  v6 = [(WFAQIScale *)self displayLabel];
  v7 = [(WFAQIScale *)self isNumerical];
  v8 = [(WFAQIScale *)self isAscending];
  v9 = [(WFAQIScale *)self range];
  [(WFAQIScale *)self range];
  v11 = v10;
  v12 = [(WFAQIScale *)self categories];
  v13 = [(WFAQIScale *)self gradient];
  v14 = [v3 stringWithFormat:@"<WFAQIScale identifier: %@, displayName: %@, displayLabel: %@, isNumerical: %d, isAscending: %d, rangeLocation: %lu, rangeLength: %lu, categories: %@, gradient: %@", v4, v5, v6, v7, v8, v9, v11, v12, v13];

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
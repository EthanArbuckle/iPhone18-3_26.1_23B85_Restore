@interface SLDImageSymbolConfiguration
+ (id)configurationWithName:(id)name coreUISize:(int64_t)size weight:(int64_t)weight pointSize:(double)pointSize;
- (BOOL)isEqual:(id)equal;
- (CGSize)minViableSizeWithDisplayScale:(double)scale RTL:(BOOL)l darkMode:(BOOL)mode;
- (CGSize)minViableSizeWithStyle:(id)style;
- (SLDImageSymbolConfiguration)init;
- (SLDImageSymbolConfiguration)initWithCoder:(id)coder;
- (SLDImageSymbolConfiguration)initWithName:(id)name coreUISize:(int64_t)size weight:(int64_t)weight pointSize:(double)pointSize;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLDImageSymbolConfiguration

+ (id)configurationWithName:(id)name coreUISize:(int64_t)size weight:(int64_t)weight pointSize:(double)pointSize
{
  nameCopy = name;
  v10 = [[SLDImageSymbolConfiguration alloc] initWithName:nameCopy coreUISize:size weight:weight pointSize:pointSize];

  return v10;
}

- (SLDImageSymbolConfiguration)init
{
  v8.receiver = self;
  v8.super_class = SLDImageSymbolConfiguration;
  v2 = [(SLDImageSymbolConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = @"exclamationmark.circle";

    *&v3->_coreUISize = xmmword_23183D050;
    v3->_pointSize = 20.0;
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:20.0];
    pointSizeNumber = v3->_pointSizeNumber;
    v3->_pointSizeNumber = v5;
  }

  return v3;
}

- (SLDImageSymbolConfiguration)initWithName:(id)name coreUISize:(int64_t)size weight:(int64_t)weight pointSize:(double)pointSize
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SLDImageSymbolConfiguration;
  v12 = [(SLDImageSymbolConfiguration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    v13->_coreUISize = size;
    v13->_weight = weight;
    v13->_pointSize = pointSize;
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:pointSize];
    pointSizeNumber = v13->_pointSizeNumber;
    v13->_pointSizeNumber = v14;
  }

  return v13;
}

- (CGSize)minViableSizeWithStyle:(id)style
{
  styleCopy = style;
  coreUISize = [(SLDImageSymbolConfiguration *)self coreUISize];
  weight = [(SLDImageSymbolConfiguration *)self weight];
  [(SLDImageSymbolConfiguration *)self pointSize];
  v7 = 10.0;
  if (v8 > 0.0)
  {
    [(SLDImageSymbolConfiguration *)self pointSize];
    v7 = v9;
  }

  if (!weight)
  {
    weight = 4;
  }

  name = [(SLDImageSymbolConfiguration *)self name];
  v11 = SLDSystemVectorGlyphWithSlotStyle(styleCopy, name, coreUISize, weight, v7);

  LODWORD(name) = [styleCopy displayScale];
  v12 = SLDVectorGlyphMinimumViableSize(v11, name);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)minViableSizeWithDisplayScale:(double)scale RTL:(BOOL)l darkMode:(BOOL)mode
{
  modeCopy = mode;
  lCopy = l;
  coreUISize = [(SLDImageSymbolConfiguration *)self coreUISize];
  weight = [(SLDImageSymbolConfiguration *)self weight];
  [(SLDImageSymbolConfiguration *)self pointSize];
  v11 = 10.0;
  if (v12 > 0.0)
  {
    [(SLDImageSymbolConfiguration *)self pointSize];
    v11 = v13;
  }

  if (!weight)
  {
    weight = 4;
  }

  name = [(SLDImageSymbolConfiguration *)self name];
  v15 = SLDSystemVectorGlyph(name, lCopy, coreUISize, weight, modeCopy, scale, v11);

  v16 = SLDVectorGlyphMinimumViableSize(v15, scale);
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(SLDImageSymbolConfiguration *)self name];
  [coderCopy encodeObject:name forKey:@"symbolName"];

  [coderCopy encodeInteger:-[SLDImageSymbolConfiguration coreUISize](self forKey:{"coreUISize"), @"coreUISize"}];
  [coderCopy encodeInteger:-[SLDImageSymbolConfiguration weight](self forKey:{"weight"), @"weight"}];
  [(SLDImageSymbolConfiguration *)self pointSize];
  [coderCopy encodeDouble:@"ptSize" forKey:?];
  pointSizeNumber = [(SLDImageSymbolConfiguration *)self pointSizeNumber];
  [coderCopy encodeObject:pointSizeNumber forKey:@"ptSizeNumber"];
}

- (SLDImageSymbolConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SLDImageSymbolConfiguration;
  v5 = [(SLDImageSymbolConfiguration *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
    name = v5->_name;
    v5->_name = v6;

    v5->_coreUISize = [coderCopy decodeIntegerForKey:@"coreUISize"];
    v5->_weight = [coderCopy decodeIntegerForKey:@"weight"];
    [coderCopy decodeDoubleForKey:@"ptSize"];
    v5->_pointSize = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ptSizeNumber"];
    pointSizeNumber = v5->_pointSizeNumber;
    v5->_pointSizeNumber = v9;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    v7 = v6;
    if (v6 == self)
    {
      v12 = 1;
    }

    else
    {
      name = [(SLDImageSymbolConfiguration *)v6 name];
      if (name || ([(SLDImageSymbolConfiguration *)self name], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        name2 = [(SLDImageSymbolConfiguration *)v7 name];
        name3 = [(SLDImageSymbolConfiguration *)self name];
        v11 = [name2 isEqual:name3];

        if (name)
        {

          if (!v11)
          {
            goto LABEL_15;
          }
        }

        else
        {

          if ((v11 & 1) == 0)
          {
LABEL_15:
            v12 = 0;
            goto LABEL_16;
          }
        }
      }

      coreUISize = [(SLDImageSymbolConfiguration *)v7 coreUISize];
      if (coreUISize != [(SLDImageSymbolConfiguration *)self coreUISize])
      {
        goto LABEL_15;
      }

      weight = [(SLDImageSymbolConfiguration *)v7 weight];
      if (weight != [(SLDImageSymbolConfiguration *)self weight])
      {
        goto LABEL_15;
      }

      [(SLDImageSymbolConfiguration *)v7 pointSize];
      v16 = v15;
      [(SLDImageSymbolConfiguration *)self pointSize];
      if (v16 != v17)
      {
        goto LABEL_15;
      }

      pointSizeNumber = [(SLDImageSymbolConfiguration *)v7 pointSizeNumber];
      pointSizeNumber2 = [(SLDImageSymbolConfiguration *)self pointSizeNumber];
      v12 = [pointSizeNumber isEqualToNumber:pointSizeNumber2];
    }

LABEL_16:

    goto LABEL_17;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (unint64_t)hash
{
  coreUISize = [(SLDImageSymbolConfiguration *)self coreUISize];
  name = [(SLDImageSymbolConfiguration *)self name];
  v5 = [name hash];
  v6 = v5 ^ coreUISize ^ [(SLDImageSymbolConfiguration *)self weight];
  pointSizeNumber = [(SLDImageSymbolConfiguration *)self pointSizeNumber];
  v8 = [pointSizeNumber hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  name = [(SLDImageSymbolConfiguration *)self name];
  [v4 setName:name];

  [v4 setCoreUISize:{-[SLDImageSymbolConfiguration coreUISize](self, "coreUISize")}];
  [v4 setWeight:{-[SLDImageSymbolConfiguration weight](self, "weight")}];
  [(SLDImageSymbolConfiguration *)self pointSize];
  [v4 setPointSize:?];
  pointSizeNumber = [(SLDImageSymbolConfiguration *)self pointSizeNumber];
  [v4 setPointSizeNumber:pointSizeNumber];

  return v4;
}

@end
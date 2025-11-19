@interface SLDImageSymbolConfiguration
+ (id)configurationWithName:(id)a3 coreUISize:(int64_t)a4 weight:(int64_t)a5 pointSize:(double)a6;
- (BOOL)isEqual:(id)a3;
- (CGSize)minViableSizeWithDisplayScale:(double)a3 RTL:(BOOL)a4 darkMode:(BOOL)a5;
- (CGSize)minViableSizeWithStyle:(id)a3;
- (SLDImageSymbolConfiguration)init;
- (SLDImageSymbolConfiguration)initWithCoder:(id)a3;
- (SLDImageSymbolConfiguration)initWithName:(id)a3 coreUISize:(int64_t)a4 weight:(int64_t)a5 pointSize:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLDImageSymbolConfiguration

+ (id)configurationWithName:(id)a3 coreUISize:(int64_t)a4 weight:(int64_t)a5 pointSize:(double)a6
{
  v9 = a3;
  v10 = [[SLDImageSymbolConfiguration alloc] initWithName:v9 coreUISize:a4 weight:a5 pointSize:a6];

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

- (SLDImageSymbolConfiguration)initWithName:(id)a3 coreUISize:(int64_t)a4 weight:(int64_t)a5 pointSize:(double)a6
{
  v11 = a3;
  v17.receiver = self;
  v17.super_class = SLDImageSymbolConfiguration;
  v12 = [(SLDImageSymbolConfiguration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    v13->_coreUISize = a4;
    v13->_weight = a5;
    v13->_pointSize = a6;
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
    pointSizeNumber = v13->_pointSizeNumber;
    v13->_pointSizeNumber = v14;
  }

  return v13;
}

- (CGSize)minViableSizeWithStyle:(id)a3
{
  v4 = a3;
  v5 = [(SLDImageSymbolConfiguration *)self coreUISize];
  v6 = [(SLDImageSymbolConfiguration *)self weight];
  [(SLDImageSymbolConfiguration *)self pointSize];
  v7 = 10.0;
  if (v8 > 0.0)
  {
    [(SLDImageSymbolConfiguration *)self pointSize];
    v7 = v9;
  }

  if (!v6)
  {
    v6 = 4;
  }

  v10 = [(SLDImageSymbolConfiguration *)self name];
  v11 = SLDSystemVectorGlyphWithSlotStyle(v4, v10, v5, v6, v7);

  LODWORD(v10) = [v4 displayScale];
  v12 = SLDVectorGlyphMinimumViableSize(v11, v10);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)minViableSizeWithDisplayScale:(double)a3 RTL:(BOOL)a4 darkMode:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(SLDImageSymbolConfiguration *)self coreUISize];
  v10 = [(SLDImageSymbolConfiguration *)self weight];
  [(SLDImageSymbolConfiguration *)self pointSize];
  v11 = 10.0;
  if (v12 > 0.0)
  {
    [(SLDImageSymbolConfiguration *)self pointSize];
    v11 = v13;
  }

  if (!v10)
  {
    v10 = 4;
  }

  v14 = [(SLDImageSymbolConfiguration *)self name];
  v15 = SLDSystemVectorGlyph(v14, v6, v9, v10, v5, a3, v11);

  v16 = SLDVectorGlyphMinimumViableSize(v15, a3);
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLDImageSymbolConfiguration *)self name];
  [v4 encodeObject:v5 forKey:@"symbolName"];

  [v4 encodeInteger:-[SLDImageSymbolConfiguration coreUISize](self forKey:{"coreUISize"), @"coreUISize"}];
  [v4 encodeInteger:-[SLDImageSymbolConfiguration weight](self forKey:{"weight"), @"weight"}];
  [(SLDImageSymbolConfiguration *)self pointSize];
  [v4 encodeDouble:@"ptSize" forKey:?];
  v6 = [(SLDImageSymbolConfiguration *)self pointSizeNumber];
  [v4 encodeObject:v6 forKey:@"ptSizeNumber"];
}

- (SLDImageSymbolConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SLDImageSymbolConfiguration;
  v5 = [(SLDImageSymbolConfiguration *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
    name = v5->_name;
    v5->_name = v6;

    v5->_coreUISize = [v4 decodeIntegerForKey:@"coreUISize"];
    v5->_weight = [v4 decodeIntegerForKey:@"weight"];
    [v4 decodeDoubleForKey:@"ptSize"];
    v5->_pointSize = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ptSizeNumber"];
    pointSizeNumber = v5->_pointSizeNumber;
    v5->_pointSizeNumber = v9;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6;
    if (v6 == self)
    {
      v12 = 1;
    }

    else
    {
      v8 = [(SLDImageSymbolConfiguration *)v6 name];
      if (v8 || ([(SLDImageSymbolConfiguration *)self name], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v9 = [(SLDImageSymbolConfiguration *)v7 name];
        v10 = [(SLDImageSymbolConfiguration *)self name];
        v11 = [v9 isEqual:v10];

        if (v8)
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

      v13 = [(SLDImageSymbolConfiguration *)v7 coreUISize];
      if (v13 != [(SLDImageSymbolConfiguration *)self coreUISize])
      {
        goto LABEL_15;
      }

      v14 = [(SLDImageSymbolConfiguration *)v7 weight];
      if (v14 != [(SLDImageSymbolConfiguration *)self weight])
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

      v18 = [(SLDImageSymbolConfiguration *)v7 pointSizeNumber];
      v19 = [(SLDImageSymbolConfiguration *)self pointSizeNumber];
      v12 = [v18 isEqualToNumber:v19];
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
  v3 = [(SLDImageSymbolConfiguration *)self coreUISize];
  v4 = [(SLDImageSymbolConfiguration *)self name];
  v5 = [v4 hash];
  v6 = v5 ^ v3 ^ [(SLDImageSymbolConfiguration *)self weight];
  v7 = [(SLDImageSymbolConfiguration *)self pointSizeNumber];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(SLDImageSymbolConfiguration *)self name];
  [v4 setName:v5];

  [v4 setCoreUISize:{-[SLDImageSymbolConfiguration coreUISize](self, "coreUISize")}];
  [v4 setWeight:{-[SLDImageSymbolConfiguration weight](self, "weight")}];
  [(SLDImageSymbolConfiguration *)self pointSize];
  [v4 setPointSize:?];
  v6 = [(SLDImageSymbolConfiguration *)self pointSizeNumber];
  [v4 setPointSizeNumber:v6];

  return v4;
}

@end
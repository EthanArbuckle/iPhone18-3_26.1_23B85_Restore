@interface PPSHistogramDimension
- ($F24F406B2B787EFB06265DBA3D28CBD5)range;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHistogramDimension:(id)a3;
- (PPSHistogramDimension)initWithBinCount:(unint64_t)a3 range:(id)a4 metricName:(id)a5;
- (PPSHistogramDimension)initWithCategories:(id)a3 metricName:(id)a4;
- (PPSHistogramDimension)initWithCoder:(id)a3;
- (PPSHistogramDimension)initWithEdges:(id)a3 metricName:(id)a4;
- (id)JSONRepresentation;
- (id)debugDescription;
- (id)description;
- (id)dictionary;
- (unint64_t)extent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSHistogramDimension

- (PPSHistogramDimension)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PPSHistogramDimension;
  v5 = [(PPSHistogramDimension *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"edges"];
    edges = v5->_edges;
    v5->_edges = v10;

    v5->_isCategoryDimension = [v4 decodeBoolForKey:@"isCategory"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metric"];
    metricName = v5->_metricName;
    v5->_metricName = v12;

    [v4 decodeDoubleForKey:@"minRange"];
    v5->_range.min = v14;
    [v4 decodeDoubleForKey:@"maxRange"];
    v5->_range.max = v15;
    v5->_size = [v4 decodeIntegerForKey:@"size"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_edges forKey:@"edges"];
  [v4 encodeBool:self->_isCategoryDimension forKey:@"isCategory"];
  [v4 encodeObject:self->_metricName forKey:@"metric"];
  [v4 encodeDouble:@"minRange" forKey:self->_range.min];
  [v4 encodeDouble:@"maxRange" forKey:self->_range.max];
  [v4 encodeInteger:self->_size forKey:@"size"];
}

- (PPSHistogramDimension)initWithBinCount:(unint64_t)a3 range:(id)a4 metricName:(id)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v10 = a5;
  if (!a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"invalid number of bins (0)"];
  }

  if (var1 <= var0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"invalid dimension range (max < min)"];
  }

  v21.receiver = self;
  v21.super_class = PPSHistogramDimension;
  v11 = [(PPSHistogramDimension *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_size = a3;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    v14 = 0;
    v15 = (var1 - var0) / a3;
    v16 = var0;
    do
    {
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
      [v13 addObject:v17];

      v16 = v15 + v16;
      ++v14;
    }

    while (v14 <= v12->_size);
    v18 = [v13 copy];
    edges = v12->_edges;
    v12->_edges = v18;

    objc_storeStrong(&v12->_metricName, a5);
    v12->_range.min = var0;
    v12->_range.max = var1;
    v12->_isCategoryDimension = 0;
  }

  return v12;
}

- (PPSHistogramDimension)initWithCategories:(id)a3 metricName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PPSHistogramDimension;
  v8 = [(PPSHistogramDimension *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    edges = v8->_edges;
    v8->_edges = v9;

    v8->_isCategoryDimension = 1;
    objc_storeStrong(&v8->_metricName, a4);
    v8->_range.min = 0.0;
    v8->_range.max = 0.0;
    v8->_size = [v6 count];
  }

  return v8;
}

- (PPSHistogramDimension)initWithEdges:(id)a3 metricName:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 count] <= 1)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = [v7 count];
    [v9 raise:*MEMORY[0x277CBE660] format:{@"at least two edges are required (%lu)", v10}];
  }

  v19.receiver = self;
  v19.super_class = PPSHistogramDimension;
  v11 = [(PPSHistogramDimension *)&v19 init];
  v12 = v11;
  v13 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_edges, a3);
    v13->_isCategoryDimension = 0;
    objc_storeStrong(&v12->_metricName, a4);
    v13->_range.min = 0.0;
    v13->_range.max = 0.0;
    if ([v7 count])
    {
      v14 = [v7 firstObject];
      [v14 doubleValue];
      v13->_range.min = v15;
      v16 = [v7 lastObject];

      [v16 doubleValue];
      v13->_range.max = v17;
    }

    v13->_size = [v7 count] - 1;
  }

  return v13;
}

- (unint64_t)extent
{
  v3 = [(PPSHistogramDimension *)self isCategoryDimension];
  v4 = [(PPSHistogramDimension *)self size];
  v5 = 1;
  if (!v3)
  {
    v5 = 2;
  }

  return v4 + v5;
}

- (id)dictionary
{
  v3 = objc_opt_new();
  v4 = [(PPSHistogramDimension *)self edges];
  [v3 setObject:v4 forKeyedSubscript:@"edges"];

  v5 = [(PPSHistogramDimension *)self metricName];
  [v3 setObject:v5 forKeyedSubscript:@"metric"];

  v6 = MEMORY[0x277CCABB0];
  [(PPSHistogramDimension *)self range];
  v7 = [v6 numberWithDouble:?];
  [v3 setObject:v7 forKeyedSubscript:@"minRange"];

  v8 = MEMORY[0x277CCABB0];
  [(PPSHistogramDimension *)self range];
  v10 = [v8 numberWithDouble:v9];
  [v3 setObject:v10 forKeyedSubscript:@"maxRange"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PPSHistogramDimension size](self, "size")}];
  [v3 setObject:v11 forKeyedSubscript:@"size"];

  v12 = [v3 copy];

  return v12;
}

- (BOOL)isEqualToHistogramDimension:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    v5 = [(PPSHistogramDimension *)self size];
    if (v5 == [(PPSHistogramDimension *)v4 size]&& ([(PPSHistogramDimension *)self range], v7 = v6, [(PPSHistogramDimension *)v4 range], v7 == v8) && ([(PPSHistogramDimension *)self range], v10 = v9, [(PPSHistogramDimension *)v4 range], v10 == v11))
    {
      v12 = [(PPSHistogramDimension *)self metricName];
      v13 = [(PPSHistogramDimension *)v4 metricName];
      if ([v12 isEqualToString:v13])
      {
        v14 = [(PPSHistogramDimension *)self edges];
        v15 = [(PPSHistogramDimension *)v4 edges];
        v16 = [v14 isEqualToArray:v15];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)JSONRepresentation
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(PPSHistogramDimension *)self dictionary];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = PPSReaderLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(PPSTimeSeries *)v5 JSONRepresentation];
    }
  }

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PPSHistogramDimension *)self description];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, v6];

  return v7;
}

- (id)description
{
  v2 = [(PPSHistogramDimension *)self dictionary];
  v3 = [v2 description];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(PPSHistogramDimension *)self edges];
  v4 = [v3 hash];
  v5 = [(PPSHistogramDimension *)self metricName];
  v6 = [v5 hash];
  [(PPSHistogramDimension *)self range];
  v8 = v7;
  [(PPSHistogramDimension *)self range];
  v10 = v4 ^ ((v6 ^ v8 ^ v9) << 32);

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPSHistogramDimension *)self isEqualToHistogramDimension:v4];
  }

  return v5;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end
@interface PPSHistogramDimension
- ($F24F406B2B787EFB06265DBA3D28CBD5)range;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHistogramDimension:(id)dimension;
- (PPSHistogramDimension)initWithBinCount:(unint64_t)count range:(id)range metricName:(id)name;
- (PPSHistogramDimension)initWithCategories:(id)categories metricName:(id)name;
- (PPSHistogramDimension)initWithCoder:(id)coder;
- (PPSHistogramDimension)initWithEdges:(id)edges metricName:(id)name;
- (id)JSONRepresentation;
- (id)debugDescription;
- (id)description;
- (id)dictionary;
- (unint64_t)extent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSHistogramDimension

- (PPSHistogramDimension)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PPSHistogramDimension;
  v5 = [(PPSHistogramDimension *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"edges"];
    edges = v5->_edges;
    v5->_edges = v10;

    v5->_isCategoryDimension = [coderCopy decodeBoolForKey:@"isCategory"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metric"];
    metricName = v5->_metricName;
    v5->_metricName = v12;

    [coderCopy decodeDoubleForKey:@"minRange"];
    v5->_range.min = v14;
    [coderCopy decodeDoubleForKey:@"maxRange"];
    v5->_range.max = v15;
    v5->_size = [coderCopy decodeIntegerForKey:@"size"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_edges forKey:@"edges"];
  [coderCopy encodeBool:self->_isCategoryDimension forKey:@"isCategory"];
  [coderCopy encodeObject:self->_metricName forKey:@"metric"];
  [coderCopy encodeDouble:@"minRange" forKey:self->_range.min];
  [coderCopy encodeDouble:@"maxRange" forKey:self->_range.max];
  [coderCopy encodeInteger:self->_size forKey:@"size"];
}

- (PPSHistogramDimension)initWithBinCount:(unint64_t)count range:(id)range metricName:(id)name
{
  var1 = range.var1;
  var0 = range.var0;
  nameCopy = name;
  if (!count)
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
    v11->_size = count;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
    v14 = 0;
    v15 = (var1 - var0) / count;
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

    objc_storeStrong(&v12->_metricName, name);
    v12->_range.min = var0;
    v12->_range.max = var1;
    v12->_isCategoryDimension = 0;
  }

  return v12;
}

- (PPSHistogramDimension)initWithCategories:(id)categories metricName:(id)name
{
  categoriesCopy = categories;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PPSHistogramDimension;
  v8 = [(PPSHistogramDimension *)&v12 init];
  if (v8)
  {
    v9 = [categoriesCopy copy];
    edges = v8->_edges;
    v8->_edges = v9;

    v8->_isCategoryDimension = 1;
    objc_storeStrong(&v8->_metricName, name);
    v8->_range.min = 0.0;
    v8->_range.max = 0.0;
    v8->_size = [categoriesCopy count];
  }

  return v8;
}

- (PPSHistogramDimension)initWithEdges:(id)edges metricName:(id)name
{
  edgesCopy = edges;
  nameCopy = name;
  if ([edgesCopy count] <= 1)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = [edgesCopy count];
    [v9 raise:*MEMORY[0x277CBE660] format:{@"at least two edges are required (%lu)", v10}];
  }

  v19.receiver = self;
  v19.super_class = PPSHistogramDimension;
  v11 = [(PPSHistogramDimension *)&v19 init];
  v12 = v11;
  v13 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_edges, edges);
    v13->_isCategoryDimension = 0;
    objc_storeStrong(&v12->_metricName, name);
    v13->_range.min = 0.0;
    v13->_range.max = 0.0;
    if ([edgesCopy count])
    {
      firstObject = [edgesCopy firstObject];
      [firstObject doubleValue];
      v13->_range.min = v15;
      lastObject = [edgesCopy lastObject];

      [lastObject doubleValue];
      v13->_range.max = v17;
    }

    v13->_size = [edgesCopy count] - 1;
  }

  return v13;
}

- (unint64_t)extent
{
  isCategoryDimension = [(PPSHistogramDimension *)self isCategoryDimension];
  v4 = [(PPSHistogramDimension *)self size];
  v5 = 1;
  if (!isCategoryDimension)
  {
    v5 = 2;
  }

  return v4 + v5;
}

- (id)dictionary
{
  v3 = objc_opt_new();
  edges = [(PPSHistogramDimension *)self edges];
  [v3 setObject:edges forKeyedSubscript:@"edges"];

  metricName = [(PPSHistogramDimension *)self metricName];
  [v3 setObject:metricName forKeyedSubscript:@"metric"];

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

- (BOOL)isEqualToHistogramDimension:(id)dimension
{
  dimensionCopy = dimension;
  if (self == dimensionCopy)
  {
    v16 = 1;
  }

  else
  {
    v5 = [(PPSHistogramDimension *)self size];
    if (v5 == [(PPSHistogramDimension *)dimensionCopy size]&& ([(PPSHistogramDimension *)self range], v7 = v6, [(PPSHistogramDimension *)dimensionCopy range], v7 == v8) && ([(PPSHistogramDimension *)self range], v10 = v9, [(PPSHistogramDimension *)dimensionCopy range], v10 == v11))
    {
      metricName = [(PPSHistogramDimension *)self metricName];
      metricName2 = [(PPSHistogramDimension *)dimensionCopy metricName];
      if ([metricName isEqualToString:metricName2])
      {
        edges = [(PPSHistogramDimension *)self edges];
        edges2 = [(PPSHistogramDimension *)dimensionCopy edges];
        v16 = [edges isEqualToArray:edges2];
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
  dictionary = [(PPSHistogramDimension *)self dictionary];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:dictionary options:1 error:&v8];
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
  dictionary = [(PPSHistogramDimension *)self dictionary];
  v3 = [dictionary description];

  return v3;
}

- (unint64_t)hash
{
  edges = [(PPSHistogramDimension *)self edges];
  v4 = [edges hash];
  metricName = [(PPSHistogramDimension *)self metricName];
  v6 = [metricName hash];
  [(PPSHistogramDimension *)self range];
  v8 = v7;
  [(PPSHistogramDimension *)self range];
  v10 = v4 ^ ((v6 ^ v8 ^ v9) << 32);

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPSHistogramDimension *)self isEqualToHistogramDimension:equalCopy];
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
@interface PPNamedEntityMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNamedEntityMetadata:(id)a3;
- (NSSet)featureNames;
- (PPNamedEntityMetadata)initWithCoder:(id)a3;
- (PPNamedEntityMetadata)initWithImpressionCount:(unsigned __int16)a3 occurrencesInSource:(unsigned __int16)a4;
- (id)featureValueForName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPNamedEntityMetadata

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"impressionCount"])
  {
    v5 = 8;
LABEL_5:
    v6 = [MEMORY[0x1E695FE60] featureValueWithInt64:*(&self->super.isa + v5)];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"occurrencesInSource"])
  {
    v5 = 10;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (NSSet)featureNames
{
  if (featureNames__pasOnceToken4_1774 != -1)
  {
    dispatch_once(&featureNames__pasOnceToken4_1774, &__block_literal_global_1775);
  }

  v3 = featureNames__pasExprOnceResult_1776;

  return v3;
}

void __37__PPNamedEntityMetadata_featureNames__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"impressionCount", @"occurrencesInSource", 0}];
  objc_autoreleasePoolPop(v1);
  v3 = featureNames__pasExprOnceResult_1776;
  featureNames__pasExprOnceResult_1776 = v2;

  objc_autoreleasePoolPop(v0);
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPNamedEntityMetadata *)self isEqualToNamedEntityMetadata:v4];
  }

  return v5;
}

- (BOOL)isEqualToNamedEntityMetadata:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (impressionCount = self->_impressionCount, impressionCount == [(PPNamedEntityMetadata *)v4 impressionCount]))
  {
    occurrencesInSource = self->_occurrencesInSource;
    v8 = occurrencesInSource == [(PPNamedEntityMetadata *)v5 occurrencesInSource];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  impressionCount = self->_impressionCount;
  v5 = a3;
  [v5 encodeInt32:impressionCount forKey:@"ict"];
  [v5 encodeInt32:self->_occurrencesInSource forKey:@"ois"];
}

- (PPNamedEntityMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"ict"];
  if (HIWORD(v5) || (v6 = v5, v7 = [v4 decodeInt32ForKey:@"ois"], HIWORD(v7)))
  {
    v8 = 0;
  }

  else
  {
    self = [(PPNamedEntityMetadata *)self initWithImpressionCount:v6 occurrencesInSource:v7];
    v8 = self;
  }

  return v8;
}

- (PPNamedEntityMetadata)initWithImpressionCount:(unsigned __int16)a3 occurrencesInSource:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = PPNamedEntityMetadata;
  result = [(PPNamedEntityMetadata *)&v7 init];
  if (result)
  {
    result->_impressionCount = a3;
    result->_occurrencesInSource = a4;
  }

  return result;
}

@end
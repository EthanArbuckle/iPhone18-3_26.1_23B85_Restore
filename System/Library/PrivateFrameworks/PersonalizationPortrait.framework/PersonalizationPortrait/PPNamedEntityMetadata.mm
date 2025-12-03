@interface PPNamedEntityMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNamedEntityMetadata:(id)metadata;
- (NSSet)featureNames;
- (PPNamedEntityMetadata)initWithCoder:(id)coder;
- (PPNamedEntityMetadata)initWithImpressionCount:(unsigned __int16)count occurrencesInSource:(unsigned __int16)source;
- (id)featureValueForName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPNamedEntityMetadata

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"impressionCount"])
  {
    v5 = 8;
LABEL_5:
    v6 = [MEMORY[0x1E695FE60] featureValueWithInt64:*(&self->super.isa + v5)];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"occurrencesInSource"])
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPNamedEntityMetadata *)self isEqualToNamedEntityMetadata:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToNamedEntityMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (metadataCopy == self)
  {
    v8 = 1;
  }

  else if (metadataCopy && (impressionCount = self->_impressionCount, impressionCount == [(PPNamedEntityMetadata *)metadataCopy impressionCount]))
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

- (void)encodeWithCoder:(id)coder
{
  impressionCount = self->_impressionCount;
  coderCopy = coder;
  [coderCopy encodeInt32:impressionCount forKey:@"ict"];
  [coderCopy encodeInt32:self->_occurrencesInSource forKey:@"ois"];
}

- (PPNamedEntityMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"ict"];
  if (HIWORD(v5) || (v6 = v5, v7 = [coderCopy decodeInt32ForKey:@"ois"], HIWORD(v7)))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PPNamedEntityMetadata *)self initWithImpressionCount:v6 occurrencesInSource:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (PPNamedEntityMetadata)initWithImpressionCount:(unsigned __int16)count occurrencesInSource:(unsigned __int16)source
{
  v7.receiver = self;
  v7.super_class = PPNamedEntityMetadata;
  result = [(PPNamedEntityMetadata *)&v7 init];
  if (result)
  {
    result->_impressionCount = count;
    result->_occurrencesInSource = source;
  }

  return result;
}

@end
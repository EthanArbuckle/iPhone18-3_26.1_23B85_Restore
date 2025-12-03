@interface PPTopicMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTopicMetadata:(id)metadata;
- (NSSet)featureNames;
- (PPTopicMetadata)initWithCoder:(id)coder;
- (PPTopicMetadata)initWithImpressionCount:(unsigned __int16)count occurrencesInSource:(unsigned __int16)source algorithmResultPosition:(unsigned __int16)position algorithmResultCount:(unsigned __int16)resultCount exactMatchInSourceText:(BOOL)text;
- (id)description;
- (id)featureValueForName:(id)name;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPTopicMetadata

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"impressionCount"])
  {
    v5 = MEMORY[0x1E695FE60];
    impressionCount = self->_impressionCount;
LABEL_11:
    v7 = [v5 featureValueWithInt64:impressionCount];
    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"occurrencesInSource"])
  {
    v5 = MEMORY[0x1E695FE60];
    impressionCount = self->_occurrencesInSource;
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"algorithmResultPosition"])
  {
    v5 = MEMORY[0x1E695FE60];
    impressionCount = self->_algorithmResultPosition;
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"algorithmResultCount"])
  {
    v5 = MEMORY[0x1E695FE60];
    impressionCount = self->_algorithmResultCount;
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"exactMatchInSourceText"])
  {
    v5 = MEMORY[0x1E695FE60];
    impressionCount = self->_exactMatchInSourceText;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (NSSet)featureNames
{
  if (featureNames__pasOnceToken4_6655 != -1)
  {
    dispatch_once(&featureNames__pasOnceToken4_6655, &__block_literal_global_6656);
  }

  v3 = featureNames__pasExprOnceResult_6657;

  return v3;
}

void __31__PPTopicMetadata_featureNames__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"impressionCount", @"occurrencesInSource", @"algorithmResultPosition", @"algorithmResultCount", @"exactMatchInSourceText", 0}];
  objc_autoreleasePoolPop(v1);
  v3 = featureNames__pasExprOnceResult_6657;
  featureNames__pasExprOnceResult_6657 = v2;

  objc_autoreleasePoolPop(v0);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_exactMatchInSourceText)
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  v5 = [v3 initWithFormat:@"<PPTopicMetadata i:%hu o:%hu arp:%hu arc:%hu em:%@>", self->_impressionCount, self->_occurrencesInSource, self->_algorithmResultPosition, self->_algorithmResultCount, v4];

  return v5;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPTopicMetadata *)self isEqualToTopicMetadata:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToTopicMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (metadataCopy == self)
  {
    v11 = 1;
  }

  else if (metadataCopy && (impressionCount = self->_impressionCount, impressionCount == [(PPTopicMetadata *)metadataCopy impressionCount]) && (occurrencesInSource = self->_occurrencesInSource, occurrencesInSource == [(PPTopicMetadata *)v5 occurrencesInSource]) && (algorithmResultPosition = self->_algorithmResultPosition, algorithmResultPosition == [(PPTopicMetadata *)v5 algorithmResultPosition]) && (algorithmResultCount = self->_algorithmResultCount, algorithmResultCount == [(PPTopicMetadata *)v5 algorithmResultCount]))
  {
    exactMatchInSourceText = self->_exactMatchInSourceText;
    v11 = exactMatchInSourceText == [(PPTopicMetadata *)v5 exactMatchInSourceText];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v2 = self->_occurrencesInSource - self->_impressionCount + 32 * self->_impressionCount;
  v3 = self->_algorithmResultPosition - v2 + 32 * v2;
  v4 = self->_algorithmResultCount - v3 + 32 * v3;
  return self->_exactMatchInSourceText - v4 + 32 * v4;
}

- (void)encodeWithCoder:(id)coder
{
  impressionCount = self->_impressionCount;
  coderCopy = coder;
  [coderCopy encodeInt32:impressionCount forKey:@"ict"];
  [coderCopy encodeInt32:self->_occurrencesInSource forKey:@"ois"];
  [coderCopy encodeInt32:self->_algorithmResultPosition forKey:@"arp"];
  [coderCopy encodeInt32:self->_algorithmResultCount forKey:@"arc"];
  [coderCopy encodeBool:self->_exactMatchInSourceText forKey:@"ext"];
}

- (PPTopicMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"ict"];
  if (HIWORD(v5) || (v6 = v5, v7 = [coderCopy decodeInt32ForKey:@"ois"], HIWORD(v7)) || (v8 = v7, v9 = objc_msgSend(coderCopy, "decodeInt32ForKey:", @"arp"), HIWORD(v9)) || (v10 = v9, v11 = objc_msgSend(coderCopy, "decodeInt32ForKey:", @"arc"), HIWORD(v11)))
  {
    selfCopy = 0;
  }

  else
  {
    self = -[PPTopicMetadata initWithImpressionCount:occurrencesInSource:algorithmResultPosition:algorithmResultCount:exactMatchInSourceText:](self, "initWithImpressionCount:occurrencesInSource:algorithmResultPosition:algorithmResultCount:exactMatchInSourceText:", v6, v8, v10, v11, [coderCopy decodeBoolForKey:@"ext"]);
    selfCopy = self;
  }

  return selfCopy;
}

- (PPTopicMetadata)initWithImpressionCount:(unsigned __int16)count occurrencesInSource:(unsigned __int16)source algorithmResultPosition:(unsigned __int16)position algorithmResultCount:(unsigned __int16)resultCount exactMatchInSourceText:(BOOL)text
{
  v13.receiver = self;
  v13.super_class = PPTopicMetadata;
  result = [(PPTopicMetadata *)&v13 init];
  if (result)
  {
    result->_impressionCount = count;
    result->_occurrencesInSource = source;
    result->_algorithmResultPosition = position;
    result->_algorithmResultCount = resultCount;
    result->_exactMatchInSourceText = text;
  }

  return result;
}

@end
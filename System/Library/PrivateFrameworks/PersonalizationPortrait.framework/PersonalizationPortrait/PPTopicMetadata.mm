@interface PPTopicMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTopicMetadata:(id)a3;
- (NSSet)featureNames;
- (PPTopicMetadata)initWithCoder:(id)a3;
- (PPTopicMetadata)initWithImpressionCount:(unsigned __int16)a3 occurrencesInSource:(unsigned __int16)a4 algorithmResultPosition:(unsigned __int16)a5 algorithmResultCount:(unsigned __int16)a6 exactMatchInSourceText:(BOOL)a7;
- (id)description;
- (id)featureValueForName:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPTopicMetadata

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"impressionCount"])
  {
    v5 = MEMORY[0x1E695FE60];
    impressionCount = self->_impressionCount;
LABEL_11:
    v7 = [v5 featureValueWithInt64:impressionCount];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"occurrencesInSource"])
  {
    v5 = MEMORY[0x1E695FE60];
    impressionCount = self->_occurrencesInSource;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"algorithmResultPosition"])
  {
    v5 = MEMORY[0x1E695FE60];
    impressionCount = self->_algorithmResultPosition;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"algorithmResultCount"])
  {
    v5 = MEMORY[0x1E695FE60];
    impressionCount = self->_algorithmResultCount;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"exactMatchInSourceText"])
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPTopicMetadata *)self isEqualToTopicMetadata:v4];
  }

  return v5;
}

- (BOOL)isEqualToTopicMetadata:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (impressionCount = self->_impressionCount, impressionCount == [(PPTopicMetadata *)v4 impressionCount]) && (occurrencesInSource = self->_occurrencesInSource, occurrencesInSource == [(PPTopicMetadata *)v5 occurrencesInSource]) && (algorithmResultPosition = self->_algorithmResultPosition, algorithmResultPosition == [(PPTopicMetadata *)v5 algorithmResultPosition]) && (algorithmResultCount = self->_algorithmResultCount, algorithmResultCount == [(PPTopicMetadata *)v5 algorithmResultCount]))
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

- (void)encodeWithCoder:(id)a3
{
  impressionCount = self->_impressionCount;
  v5 = a3;
  [v5 encodeInt32:impressionCount forKey:@"ict"];
  [v5 encodeInt32:self->_occurrencesInSource forKey:@"ois"];
  [v5 encodeInt32:self->_algorithmResultPosition forKey:@"arp"];
  [v5 encodeInt32:self->_algorithmResultCount forKey:@"arc"];
  [v5 encodeBool:self->_exactMatchInSourceText forKey:@"ext"];
}

- (PPTopicMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"ict"];
  if (HIWORD(v5) || (v6 = v5, v7 = [v4 decodeInt32ForKey:@"ois"], HIWORD(v7)) || (v8 = v7, v9 = objc_msgSend(v4, "decodeInt32ForKey:", @"arp"), HIWORD(v9)) || (v10 = v9, v11 = objc_msgSend(v4, "decodeInt32ForKey:", @"arc"), HIWORD(v11)))
  {
    v12 = 0;
  }

  else
  {
    self = -[PPTopicMetadata initWithImpressionCount:occurrencesInSource:algorithmResultPosition:algorithmResultCount:exactMatchInSourceText:](self, "initWithImpressionCount:occurrencesInSource:algorithmResultPosition:algorithmResultCount:exactMatchInSourceText:", v6, v8, v10, v11, [v4 decodeBoolForKey:@"ext"]);
    v12 = self;
  }

  return v12;
}

- (PPTopicMetadata)initWithImpressionCount:(unsigned __int16)a3 occurrencesInSource:(unsigned __int16)a4 algorithmResultPosition:(unsigned __int16)a5 algorithmResultCount:(unsigned __int16)a6 exactMatchInSourceText:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = PPTopicMetadata;
  result = [(PPTopicMetadata *)&v13 init];
  if (result)
  {
    result->_impressionCount = a3;
    result->_occurrencesInSource = a4;
    result->_algorithmResultPosition = a5;
    result->_algorithmResultCount = a6;
    result->_exactMatchInSourceText = a7;
  }

  return result;
}

@end
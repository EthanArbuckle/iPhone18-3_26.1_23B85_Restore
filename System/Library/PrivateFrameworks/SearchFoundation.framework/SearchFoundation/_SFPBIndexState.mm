@interface _SFPBIndexState
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBIndexState)initWithDictionary:(id)dictionary;
- (_SFPBIndexState)initWithFacade:(id)facade;
- (_SFPBIndexState)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBIndexState

- (_SFPBIndexState)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBIndexState *)self init];
  if (v5)
  {
    percentMessagesIndexed = [facadeCopy percentMessagesIndexed];

    if (percentMessagesIndexed)
    {
      percentMessagesIndexed2 = [facadeCopy percentMessagesIndexed];
      -[_SFPBIndexState setPercentMessagesIndexed:](v5, "setPercentMessagesIndexed:", [percentMessagesIndexed2 intValue]);
    }

    percentAttachmentsIndexed = [facadeCopy percentAttachmentsIndexed];

    if (percentAttachmentsIndexed)
    {
      percentAttachmentsIndexed2 = [facadeCopy percentAttachmentsIndexed];
      -[_SFPBIndexState setPercentAttachmentsIndexed:](v5, "setPercentAttachmentsIndexed:", [percentAttachmentsIndexed2 intValue]);
    }

    searchIndex = [facadeCopy searchIndex];

    if (searchIndex)
    {
      searchIndex2 = [facadeCopy searchIndex];
      -[_SFPBIndexState setSearchIndex:](v5, "setSearchIndex:", [searchIndex2 intValue]);
    }

    totalMessageCount = [facadeCopy totalMessageCount];

    if (totalMessageCount)
    {
      totalMessageCount2 = [facadeCopy totalMessageCount];
      -[_SFPBIndexState setTotalMessageCount:](v5, "setTotalMessageCount:", [totalMessageCount2 intValue]);
    }

    indexedMessageCount = [facadeCopy indexedMessageCount];

    if (indexedMessageCount)
    {
      indexedMessageCount2 = [facadeCopy indexedMessageCount];
      -[_SFPBIndexState setIndexedMessageCount:](v5, "setIndexedMessageCount:", [indexedMessageCount2 intValue]);
    }

    embeddedMessageCount = [facadeCopy embeddedMessageCount];

    if (embeddedMessageCount)
    {
      embeddedMessageCount2 = [facadeCopy embeddedMessageCount];
      -[_SFPBIndexState setEmbeddedMessageCount:](v5, "setEmbeddedMessageCount:", [embeddedMessageCount2 intValue]);
    }

    embeddedMessagePercentage = [facadeCopy embeddedMessagePercentage];

    if (embeddedMessagePercentage)
    {
      embeddedMessagePercentage2 = [facadeCopy embeddedMessagePercentage];
      -[_SFPBIndexState setEmbeddedMessagePercentage:](v5, "setEmbeddedMessagePercentage:", [embeddedMessagePercentage2 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (_SFPBIndexState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBIndexState;
  v5 = [(_SFPBIndexState *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"percentMessagesIndexed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setPercentMessagesIndexed:](v5, "setPercentMessagesIndexed:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"percentAttachmentsIndexed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setPercentAttachmentsIndexed:](v5, "setPercentAttachmentsIndexed:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"searchIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setSearchIndex:](v5, "setSearchIndex:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"totalMessageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setTotalMessageCount:](v5, "setTotalMessageCount:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"indexedMessageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setIndexedMessageCount:](v5, "setIndexedMessageCount:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"embeddedMessageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setEmbeddedMessageCount:](v5, "setEmbeddedMessageCount:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"embeddedMessagePercentage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setEmbeddedMessagePercentage:](v5, "setEmbeddedMessagePercentage:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBIndexState)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBIndexState *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBIndexState *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_embeddedMessageCount)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState embeddedMessageCount](self, "embeddedMessageCount")}];
    [dictionary setObject:v4 forKeyedSubscript:@"embeddedMessageCount"];
  }

  if (self->_embeddedMessagePercentage)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState embeddedMessagePercentage](self, "embeddedMessagePercentage")}];
    [dictionary setObject:v5 forKeyedSubscript:@"embeddedMessagePercentage"];
  }

  if (self->_indexedMessageCount)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState indexedMessageCount](self, "indexedMessageCount")}];
    [dictionary setObject:v6 forKeyedSubscript:@"indexedMessageCount"];
  }

  if (self->_percentAttachmentsIndexed)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState percentAttachmentsIndexed](self, "percentAttachmentsIndexed")}];
    [dictionary setObject:v7 forKeyedSubscript:@"percentAttachmentsIndexed"];
  }

  if (self->_percentMessagesIndexed)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState percentMessagesIndexed](self, "percentMessagesIndexed")}];
    [dictionary setObject:v8 forKeyedSubscript:@"percentMessagesIndexed"];
  }

  if (self->_searchIndex)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState searchIndex](self, "searchIndex")}];
    [dictionary setObject:v9 forKeyedSubscript:@"searchIndex"];
  }

  if (self->_totalMessageCount)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState totalMessageCount](self, "totalMessageCount")}];
    [dictionary setObject:v10 forKeyedSubscript:@"totalMessageCount"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (percentMessagesIndexed = self->_percentMessagesIndexed, percentMessagesIndexed == objc_msgSend(equalCopy, "percentMessagesIndexed")) && (percentAttachmentsIndexed = self->_percentAttachmentsIndexed, percentAttachmentsIndexed == objc_msgSend(equalCopy, "percentAttachmentsIndexed")) && (searchIndex = self->_searchIndex, searchIndex == objc_msgSend(equalCopy, "searchIndex")) && (totalMessageCount = self->_totalMessageCount, totalMessageCount == objc_msgSend(equalCopy, "totalMessageCount")) && (indexedMessageCount = self->_indexedMessageCount, indexedMessageCount == objc_msgSend(equalCopy, "indexedMessageCount")) && (embeddedMessageCount = self->_embeddedMessageCount, embeddedMessageCount == objc_msgSend(equalCopy, "embeddedMessageCount")))
  {
    embeddedMessagePercentage = self->_embeddedMessagePercentage;
    v12 = embeddedMessagePercentage == [equalCopy embeddedMessagePercentage];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBIndexState *)self percentMessagesIndexed])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBIndexState *)self percentAttachmentsIndexed])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBIndexState *)self searchIndex])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBIndexState *)self totalMessageCount])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBIndexState *)self indexedMessageCount])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBIndexState *)self embeddedMessageCount])
  {
    PBDataWriterWriteInt32Field();
  }

  embeddedMessagePercentage = [(_SFPBIndexState *)self embeddedMessagePercentage];
  v5 = toCopy;
  if (embeddedMessagePercentage)
  {
    PBDataWriterWriteInt32Field();
    v5 = toCopy;
  }
}

@end
@interface _SFPBIndexState
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBIndexState)initWithDictionary:(id)a3;
- (_SFPBIndexState)initWithFacade:(id)a3;
- (_SFPBIndexState)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBIndexState

- (_SFPBIndexState)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBIndexState *)self init];
  if (v5)
  {
    v6 = [v4 percentMessagesIndexed];

    if (v6)
    {
      v7 = [v4 percentMessagesIndexed];
      -[_SFPBIndexState setPercentMessagesIndexed:](v5, "setPercentMessagesIndexed:", [v7 intValue]);
    }

    v8 = [v4 percentAttachmentsIndexed];

    if (v8)
    {
      v9 = [v4 percentAttachmentsIndexed];
      -[_SFPBIndexState setPercentAttachmentsIndexed:](v5, "setPercentAttachmentsIndexed:", [v9 intValue]);
    }

    v10 = [v4 searchIndex];

    if (v10)
    {
      v11 = [v4 searchIndex];
      -[_SFPBIndexState setSearchIndex:](v5, "setSearchIndex:", [v11 intValue]);
    }

    v12 = [v4 totalMessageCount];

    if (v12)
    {
      v13 = [v4 totalMessageCount];
      -[_SFPBIndexState setTotalMessageCount:](v5, "setTotalMessageCount:", [v13 intValue]);
    }

    v14 = [v4 indexedMessageCount];

    if (v14)
    {
      v15 = [v4 indexedMessageCount];
      -[_SFPBIndexState setIndexedMessageCount:](v5, "setIndexedMessageCount:", [v15 intValue]);
    }

    v16 = [v4 embeddedMessageCount];

    if (v16)
    {
      v17 = [v4 embeddedMessageCount];
      -[_SFPBIndexState setEmbeddedMessageCount:](v5, "setEmbeddedMessageCount:", [v17 intValue]);
    }

    v18 = [v4 embeddedMessagePercentage];

    if (v18)
    {
      v19 = [v4 embeddedMessagePercentage];
      -[_SFPBIndexState setEmbeddedMessagePercentage:](v5, "setEmbeddedMessagePercentage:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (_SFPBIndexState)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _SFPBIndexState;
  v5 = [(_SFPBIndexState *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"percentMessagesIndexed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setPercentMessagesIndexed:](v5, "setPercentMessagesIndexed:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"percentAttachmentsIndexed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setPercentAttachmentsIndexed:](v5, "setPercentAttachmentsIndexed:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"searchIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setSearchIndex:](v5, "setSearchIndex:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"totalMessageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setTotalMessageCount:](v5, "setTotalMessageCount:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"indexedMessageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setIndexedMessageCount:](v5, "setIndexedMessageCount:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"embeddedMessageCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setEmbeddedMessageCount:](v5, "setEmbeddedMessageCount:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"embeddedMessagePercentage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBIndexState setEmbeddedMessagePercentage:](v5, "setEmbeddedMessagePercentage:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBIndexState)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBIndexState *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBIndexState *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_embeddedMessageCount)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState embeddedMessageCount](self, "embeddedMessageCount")}];
    [v3 setObject:v4 forKeyedSubscript:@"embeddedMessageCount"];
  }

  if (self->_embeddedMessagePercentage)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState embeddedMessagePercentage](self, "embeddedMessagePercentage")}];
    [v3 setObject:v5 forKeyedSubscript:@"embeddedMessagePercentage"];
  }

  if (self->_indexedMessageCount)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState indexedMessageCount](self, "indexedMessageCount")}];
    [v3 setObject:v6 forKeyedSubscript:@"indexedMessageCount"];
  }

  if (self->_percentAttachmentsIndexed)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState percentAttachmentsIndexed](self, "percentAttachmentsIndexed")}];
    [v3 setObject:v7 forKeyedSubscript:@"percentAttachmentsIndexed"];
  }

  if (self->_percentMessagesIndexed)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState percentMessagesIndexed](self, "percentMessagesIndexed")}];
    [v3 setObject:v8 forKeyedSubscript:@"percentMessagesIndexed"];
  }

  if (self->_searchIndex)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState searchIndex](self, "searchIndex")}];
    [v3 setObject:v9 forKeyedSubscript:@"searchIndex"];
  }

  if (self->_totalMessageCount)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBIndexState totalMessageCount](self, "totalMessageCount")}];
    [v3 setObject:v10 forKeyedSubscript:@"totalMessageCount"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (percentMessagesIndexed = self->_percentMessagesIndexed, percentMessagesIndexed == objc_msgSend(v4, "percentMessagesIndexed")) && (percentAttachmentsIndexed = self->_percentAttachmentsIndexed, percentAttachmentsIndexed == objc_msgSend(v4, "percentAttachmentsIndexed")) && (searchIndex = self->_searchIndex, searchIndex == objc_msgSend(v4, "searchIndex")) && (totalMessageCount = self->_totalMessageCount, totalMessageCount == objc_msgSend(v4, "totalMessageCount")) && (indexedMessageCount = self->_indexedMessageCount, indexedMessageCount == objc_msgSend(v4, "indexedMessageCount")) && (embeddedMessageCount = self->_embeddedMessageCount, embeddedMessageCount == objc_msgSend(v4, "embeddedMessageCount")))
  {
    embeddedMessagePercentage = self->_embeddedMessagePercentage;
    v12 = embeddedMessagePercentage == [v4 embeddedMessagePercentage];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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

  v4 = [(_SFPBIndexState *)self embeddedMessagePercentage];
  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteInt32Field();
    v5 = v6;
  }
}

@end
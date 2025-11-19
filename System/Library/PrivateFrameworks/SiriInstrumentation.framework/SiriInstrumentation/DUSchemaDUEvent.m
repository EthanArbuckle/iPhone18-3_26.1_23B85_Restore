@interface DUSchemaDUEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (DUSchemaDUEvent)initWithDictionary:(id)a3;
- (DUSchemaDUEvent)initWithJSON:(id)a3;
- (DUSchemaDUSearchSessionRecord)searchSessionRecord;
- (DUSchemaDUSpeechAudioRecord)speechAudioRecord;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteSearchSessionRecord;
- (void)deleteSpeechAudioRecord;
- (void)setSearchSessionRecord:(id)a3;
- (void)setSpeechAudioRecord:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DUSchemaDUEvent

- (DUSchemaDUEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DUSchemaDUEvent;
  v5 = [(DUSchemaDUEvent *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DUSchemaDUEventMetadata alloc] initWithDictionary:v6];
      [(DUSchemaDUEvent *)v5 setMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DUSchemaDUContent alloc] initWithDictionary:v8];
      [(DUSchemaDUEvent *)v5 setContent:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"speechAudioRecord"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[DUSchemaDUSpeechAudioRecord alloc] initWithDictionary:v10];
      [(DUSchemaDUEvent *)v5 setSpeechAudioRecord:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"searchSessionRecord"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[DUSchemaDUSearchSessionRecord alloc] initWithDictionary:v12];
      [(DUSchemaDUEvent *)v5 setSearchSessionRecord:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (DUSchemaDUEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DUSchemaDUEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DUSchemaDUEvent *)self dictionaryRepresentation];
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
  if (self->_content)
  {
    v4 = [(DUSchemaDUEvent *)self content];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"content"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"content"];
    }
  }

  if (self->_metadata)
  {
    v7 = [(DUSchemaDUEvent *)self metadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"metadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"metadata"];
    }
  }

  if (self->_searchSessionRecord)
  {
    v10 = [(DUSchemaDUEvent *)self searchSessionRecord];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"searchSessionRecord"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"searchSessionRecord"];
    }
  }

  if (self->_speechAudioRecord)
  {
    v13 = [(DUSchemaDUEvent *)self speechAudioRecord];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"speechAudioRecord"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"speechAudioRecord"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(DUSchemaDUEventMetadata *)self->_metadata hash];
  v4 = [(DUSchemaDUContent *)self->_content hash]^ v3;
  v5 = [(DUSchemaDUSpeechAudioRecord *)self->_speechAudioRecord hash];
  return v4 ^ v5 ^ [(DUSchemaDUSearchSessionRecord *)self->_searchSessionRecord hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_23;
  }

  v6 = [(DUSchemaDUEvent *)self metadata];
  v7 = [v4 metadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v8 = [(DUSchemaDUEvent *)self metadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(DUSchemaDUEvent *)self metadata];
    v11 = [v4 metadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(DUSchemaDUEvent *)self content];
  v7 = [v4 content];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(DUSchemaDUEvent *)self content];
  if (v13)
  {
    v14 = v13;
    v15 = [(DUSchemaDUEvent *)self content];
    v16 = [v4 content];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(DUSchemaDUEvent *)self speechAudioRecord];
  v7 = [v4 speechAudioRecord];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_22;
  }

  v18 = [(DUSchemaDUEvent *)self speechAudioRecord];
  if (v18)
  {
    v19 = v18;
    v20 = [(DUSchemaDUEvent *)self speechAudioRecord];
    v21 = [v4 speechAudioRecord];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = [(DUSchemaDUEvent *)self searchSessionRecord];
  v7 = [v4 searchSessionRecord];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(DUSchemaDUEvent *)self searchSessionRecord];
    if (!v23)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [(DUSchemaDUEvent *)self searchSessionRecord];
    v26 = [v4 searchSessionRecord];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(DUSchemaDUEvent *)self metadata];

  if (v4)
  {
    v5 = [(DUSchemaDUEvent *)self metadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(DUSchemaDUEvent *)self content];

  if (v6)
  {
    v7 = [(DUSchemaDUEvent *)self content];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(DUSchemaDUEvent *)self speechAudioRecord];

  if (v8)
  {
    v9 = [(DUSchemaDUEvent *)self speechAudioRecord];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(DUSchemaDUEvent *)self searchSessionRecord];

  v11 = v13;
  if (v10)
  {
    v12 = [(DUSchemaDUEvent *)self searchSessionRecord];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)deleteSearchSessionRecord
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_searchSessionRecord = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DUSchemaDUSearchSessionRecord)searchSessionRecord
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_searchSessionRecord;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSearchSessionRecord:(id)a3
{
  v4 = a3;
  speechAudioRecord = self->_speechAudioRecord;
  self->_speechAudioRecord = 0;

  v6 = 102;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  searchSessionRecord = self->_searchSessionRecord;
  self->_searchSessionRecord = v4;
}

- (void)deleteSpeechAudioRecord
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_speechAudioRecord = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DUSchemaDUSpeechAudioRecord)speechAudioRecord
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_speechAudioRecord;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeechAudioRecord:(id)a3
{
  v4 = a3;
  searchSessionRecord = self->_searchSessionRecord;
  self->_searchSessionRecord = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  speechAudioRecord = self->_speechAudioRecord;
  self->_speechAudioRecord = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(DUSchemaDUEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.dataupload.DUEvent";
  if (v2 == 102)
  {
    v3 = @"com.apple.aiml.dataupload.DUEvent.DUSearchSessionRecord";
  }

  if (v2 == 101)
  {
    return @"com.apple.aiml.dataupload.DUEvent.DUSpeechAudioRecord";
  }

  else
  {
    return v3;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DUSchemaDUEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(DUSchemaDUEvent *)self deleteContent];
  }

  if ([v4 isConditionSet:4])
  {
    [(DUSchemaDUEvent *)self deleteContent];
  }

  if ([v4 isConditionSet:5])
  {
    [(DUSchemaDUEvent *)self deleteContent];
  }

  if ([v4 isConditionSet:6])
  {
    [(DUSchemaDUEvent *)self deleteContent];
  }

  if ([v4 isConditionSet:7])
  {
    [(DUSchemaDUEvent *)self deleteContent];
  }

  v6 = [(DUSchemaDUEvent *)self metadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(DUSchemaDUEvent *)self deleteMetadata];
  }

  v9 = [(DUSchemaDUEvent *)self content];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(DUSchemaDUEvent *)self deleteContent];
  }

  v12 = [(DUSchemaDUEvent *)self speechAudioRecord];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(DUSchemaDUEvent *)self deleteSpeechAudioRecord];
  }

  v15 = [(DUSchemaDUEvent *)self searchSessionRecord];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(DUSchemaDUEvent *)self deleteSearchSessionRecord];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(DUSchemaDUEvent *)self whichEvent_Type];
  if (v3 == 101)
  {
    v4 = &OBJC_IVAR___DUSchemaDUEvent__speechAudioRecord;
    goto LABEL_5;
  }

  if (v3 == 102)
  {
    v4 = &OBJC_IVAR___DUSchemaDUEvent__searchSessionRecord;
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  v3 = @"searchSessionRecord";
  if (a3 != 102)
  {
    v3 = 0;
  }

  if (a3 == 101)
  {
    return @"speechAudioRecord";
  }

  else
  {
    return v3;
  }
}

@end
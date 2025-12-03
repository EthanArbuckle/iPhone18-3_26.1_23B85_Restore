@interface LTSchemaMTClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (LTSchemaASRSpeechTranslationEvent)asrSpeechTranslationEvent;
- (LTSchemaBatchTranslationEvent)batchTranslationEvent;
- (LTSchemaDisambiguationSpeechTranslationEvent)disambiguationSpeechTranslationEvent;
- (LTSchemaLIDSpeechTranslationEvent)lidSpeechTranslationEvent;
- (LTSchemaMTClientEvent)initWithDictionary:(id)dictionary;
- (LTSchemaMTClientEvent)initWithJSON:(id)n;
- (LTSchemaMTSpeechTranslationEvent)mtSpeechTranslationEvent;
- (LTSchemaSafariFeedbackEvent)safariFeedbackEvent;
- (LTSchemaSpeechTranslationEvent)speechTranslationEvent;
- (LTSchemaTTSSpeechTranslationEvent)ttsspeechTranslationEvent;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteAsrSpeechTranslationEvent;
- (void)deleteBatchTranslationEvent;
- (void)deleteDisambiguationSpeechTranslationEvent;
- (void)deleteLidSpeechTranslationEvent;
- (void)deleteMtSpeechTranslationEvent;
- (void)deleteSafariFeedbackEvent;
- (void)deleteSpeechTranslationEvent;
- (void)deleteTtsspeechTranslationEvent;
- (void)setAsrSpeechTranslationEvent:(id)event;
- (void)setBatchTranslationEvent:(id)event;
- (void)setDisambiguationSpeechTranslationEvent:(id)event;
- (void)setLidSpeechTranslationEvent:(id)event;
- (void)setMtSpeechTranslationEvent:(id)event;
- (void)setSafariFeedbackEvent:(id)event;
- (void)setSpeechTranslationEvent:(id)event;
- (void)setTtsspeechTranslationEvent:(id)event;
- (void)writeTo:(id)to;
@end

@implementation LTSchemaMTClientEvent

- (LTSchemaMTClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = LTSchemaMTClientEvent;
  v5 = [(LTSchemaMTClientEvent *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"safariFeedbackEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[LTSchemaSafariFeedbackEvent alloc] initWithDictionary:v6];
      [(LTSchemaMTClientEvent *)v5 setSafariFeedbackEvent:v7];
    }

    v24 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"batchTranslationEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[LTSchemaBatchTranslationEvent alloc] initWithDictionary:v8];
      [(LTSchemaMTClientEvent *)v5 setBatchTranslationEvent:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"speechTranslationEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[LTSchemaSpeechTranslationEvent alloc] initWithDictionary:v10];
      [(LTSchemaMTClientEvent *)v5 setSpeechTranslationEvent:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"lidSpeechTranslationEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[LTSchemaLIDSpeechTranslationEvent alloc] initWithDictionary:v12];
      [(LTSchemaMTClientEvent *)v5 setLidSpeechTranslationEvent:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationSpeechTranslationEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[LTSchemaDisambiguationSpeechTranslationEvent alloc] initWithDictionary:v14];
      [(LTSchemaMTClientEvent *)v5 setDisambiguationSpeechTranslationEvent:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"asrSpeechTranslationEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[LTSchemaASRSpeechTranslationEvent alloc] initWithDictionary:v16];
      [(LTSchemaMTClientEvent *)v5 setAsrSpeechTranslationEvent:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"mtSpeechTranslationEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[LTSchemaMTSpeechTranslationEvent alloc] initWithDictionary:v18];
      [(LTSchemaMTClientEvent *)v5 setMtSpeechTranslationEvent:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"ttsspeechTranslationEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[LTSchemaTTSSpeechTranslationEvent alloc] initWithDictionary:v20];
      [(LTSchemaMTClientEvent *)v5 setTtsspeechTranslationEvent:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (LTSchemaMTClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LTSchemaMTClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LTSchemaMTClientEvent *)self dictionaryRepresentation];
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
  if (self->_asrSpeechTranslationEvent)
  {
    asrSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self asrSpeechTranslationEvent];
    dictionaryRepresentation = [asrSpeechTranslationEvent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"asrSpeechTranslationEvent"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"asrSpeechTranslationEvent"];
    }
  }

  if (self->_batchTranslationEvent)
  {
    batchTranslationEvent = [(LTSchemaMTClientEvent *)self batchTranslationEvent];
    dictionaryRepresentation2 = [batchTranslationEvent dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"batchTranslationEvent"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"batchTranslationEvent"];
    }
  }

  if (self->_disambiguationSpeechTranslationEvent)
  {
    disambiguationSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self disambiguationSpeechTranslationEvent];
    dictionaryRepresentation3 = [disambiguationSpeechTranslationEvent dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"disambiguationSpeechTranslationEvent"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"disambiguationSpeechTranslationEvent"];
    }
  }

  if (self->_lidSpeechTranslationEvent)
  {
    lidSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self lidSpeechTranslationEvent];
    dictionaryRepresentation4 = [lidSpeechTranslationEvent dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"lidSpeechTranslationEvent"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"lidSpeechTranslationEvent"];
    }
  }

  if (self->_mtSpeechTranslationEvent)
  {
    mtSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self mtSpeechTranslationEvent];
    dictionaryRepresentation5 = [mtSpeechTranslationEvent dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"mtSpeechTranslationEvent"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"mtSpeechTranslationEvent"];
    }
  }

  if (self->_safariFeedbackEvent)
  {
    safariFeedbackEvent = [(LTSchemaMTClientEvent *)self safariFeedbackEvent];
    dictionaryRepresentation6 = [safariFeedbackEvent dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"safariFeedbackEvent"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"safariFeedbackEvent"];
    }
  }

  if (self->_speechTranslationEvent)
  {
    speechTranslationEvent = [(LTSchemaMTClientEvent *)self speechTranslationEvent];
    dictionaryRepresentation7 = [speechTranslationEvent dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"speechTranslationEvent"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"speechTranslationEvent"];
    }
  }

  if (self->_ttsspeechTranslationEvent)
  {
    ttsspeechTranslationEvent = [(LTSchemaMTClientEvent *)self ttsspeechTranslationEvent];
    dictionaryRepresentation8 = [ttsspeechTranslationEvent dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"ttsspeechTranslationEvent"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"ttsspeechTranslationEvent"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(LTSchemaSafariFeedbackEvent *)self->_safariFeedbackEvent hash];
  v4 = [(LTSchemaBatchTranslationEvent *)self->_batchTranslationEvent hash]^ v3;
  v5 = [(LTSchemaSpeechTranslationEvent *)self->_speechTranslationEvent hash];
  v6 = v4 ^ v5 ^ [(LTSchemaLIDSpeechTranslationEvent *)self->_lidSpeechTranslationEvent hash];
  v7 = [(LTSchemaDisambiguationSpeechTranslationEvent *)self->_disambiguationSpeechTranslationEvent hash];
  v8 = v7 ^ [(LTSchemaASRSpeechTranslationEvent *)self->_asrSpeechTranslationEvent hash];
  v9 = v6 ^ v8 ^ [(LTSchemaMTSpeechTranslationEvent *)self->_mtSpeechTranslationEvent hash];
  return v9 ^ [(LTSchemaTTSSpeechTranslationEvent *)self->_ttsspeechTranslationEvent hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_43;
  }

  safariFeedbackEvent = [(LTSchemaMTClientEvent *)self safariFeedbackEvent];
  safariFeedbackEvent2 = [equalCopy safariFeedbackEvent];
  if ((safariFeedbackEvent != 0) == (safariFeedbackEvent2 == 0))
  {
    goto LABEL_42;
  }

  safariFeedbackEvent3 = [(LTSchemaMTClientEvent *)self safariFeedbackEvent];
  if (safariFeedbackEvent3)
  {
    v9 = safariFeedbackEvent3;
    safariFeedbackEvent4 = [(LTSchemaMTClientEvent *)self safariFeedbackEvent];
    safariFeedbackEvent5 = [equalCopy safariFeedbackEvent];
    v12 = [safariFeedbackEvent4 isEqual:safariFeedbackEvent5];

    if (!v12)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  safariFeedbackEvent = [(LTSchemaMTClientEvent *)self batchTranslationEvent];
  safariFeedbackEvent2 = [equalCopy batchTranslationEvent];
  if ((safariFeedbackEvent != 0) == (safariFeedbackEvent2 == 0))
  {
    goto LABEL_42;
  }

  batchTranslationEvent = [(LTSchemaMTClientEvent *)self batchTranslationEvent];
  if (batchTranslationEvent)
  {
    v14 = batchTranslationEvent;
    batchTranslationEvent2 = [(LTSchemaMTClientEvent *)self batchTranslationEvent];
    batchTranslationEvent3 = [equalCopy batchTranslationEvent];
    v17 = [batchTranslationEvent2 isEqual:batchTranslationEvent3];

    if (!v17)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  safariFeedbackEvent = [(LTSchemaMTClientEvent *)self speechTranslationEvent];
  safariFeedbackEvent2 = [equalCopy speechTranslationEvent];
  if ((safariFeedbackEvent != 0) == (safariFeedbackEvent2 == 0))
  {
    goto LABEL_42;
  }

  speechTranslationEvent = [(LTSchemaMTClientEvent *)self speechTranslationEvent];
  if (speechTranslationEvent)
  {
    v19 = speechTranslationEvent;
    speechTranslationEvent2 = [(LTSchemaMTClientEvent *)self speechTranslationEvent];
    speechTranslationEvent3 = [equalCopy speechTranslationEvent];
    v22 = [speechTranslationEvent2 isEqual:speechTranslationEvent3];

    if (!v22)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  safariFeedbackEvent = [(LTSchemaMTClientEvent *)self lidSpeechTranslationEvent];
  safariFeedbackEvent2 = [equalCopy lidSpeechTranslationEvent];
  if ((safariFeedbackEvent != 0) == (safariFeedbackEvent2 == 0))
  {
    goto LABEL_42;
  }

  lidSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self lidSpeechTranslationEvent];
  if (lidSpeechTranslationEvent)
  {
    v24 = lidSpeechTranslationEvent;
    lidSpeechTranslationEvent2 = [(LTSchemaMTClientEvent *)self lidSpeechTranslationEvent];
    lidSpeechTranslationEvent3 = [equalCopy lidSpeechTranslationEvent];
    v27 = [lidSpeechTranslationEvent2 isEqual:lidSpeechTranslationEvent3];

    if (!v27)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  safariFeedbackEvent = [(LTSchemaMTClientEvent *)self disambiguationSpeechTranslationEvent];
  safariFeedbackEvent2 = [equalCopy disambiguationSpeechTranslationEvent];
  if ((safariFeedbackEvent != 0) == (safariFeedbackEvent2 == 0))
  {
    goto LABEL_42;
  }

  disambiguationSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self disambiguationSpeechTranslationEvent];
  if (disambiguationSpeechTranslationEvent)
  {
    v29 = disambiguationSpeechTranslationEvent;
    disambiguationSpeechTranslationEvent2 = [(LTSchemaMTClientEvent *)self disambiguationSpeechTranslationEvent];
    disambiguationSpeechTranslationEvent3 = [equalCopy disambiguationSpeechTranslationEvent];
    v32 = [disambiguationSpeechTranslationEvent2 isEqual:disambiguationSpeechTranslationEvent3];

    if (!v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  safariFeedbackEvent = [(LTSchemaMTClientEvent *)self asrSpeechTranslationEvent];
  safariFeedbackEvent2 = [equalCopy asrSpeechTranslationEvent];
  if ((safariFeedbackEvent != 0) == (safariFeedbackEvent2 == 0))
  {
    goto LABEL_42;
  }

  asrSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self asrSpeechTranslationEvent];
  if (asrSpeechTranslationEvent)
  {
    v34 = asrSpeechTranslationEvent;
    asrSpeechTranslationEvent2 = [(LTSchemaMTClientEvent *)self asrSpeechTranslationEvent];
    asrSpeechTranslationEvent3 = [equalCopy asrSpeechTranslationEvent];
    v37 = [asrSpeechTranslationEvent2 isEqual:asrSpeechTranslationEvent3];

    if (!v37)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  safariFeedbackEvent = [(LTSchemaMTClientEvent *)self mtSpeechTranslationEvent];
  safariFeedbackEvent2 = [equalCopy mtSpeechTranslationEvent];
  if ((safariFeedbackEvent != 0) == (safariFeedbackEvent2 == 0))
  {
    goto LABEL_42;
  }

  mtSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self mtSpeechTranslationEvent];
  if (mtSpeechTranslationEvent)
  {
    v39 = mtSpeechTranslationEvent;
    mtSpeechTranslationEvent2 = [(LTSchemaMTClientEvent *)self mtSpeechTranslationEvent];
    mtSpeechTranslationEvent3 = [equalCopy mtSpeechTranslationEvent];
    v42 = [mtSpeechTranslationEvent2 isEqual:mtSpeechTranslationEvent3];

    if (!v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  safariFeedbackEvent = [(LTSchemaMTClientEvent *)self ttsspeechTranslationEvent];
  safariFeedbackEvent2 = [equalCopy ttsspeechTranslationEvent];
  if ((safariFeedbackEvent != 0) != (safariFeedbackEvent2 == 0))
  {
    ttsspeechTranslationEvent = [(LTSchemaMTClientEvent *)self ttsspeechTranslationEvent];
    if (!ttsspeechTranslationEvent)
    {

LABEL_46:
      v48 = 1;
      goto LABEL_44;
    }

    v44 = ttsspeechTranslationEvent;
    ttsspeechTranslationEvent2 = [(LTSchemaMTClientEvent *)self ttsspeechTranslationEvent];
    ttsspeechTranslationEvent3 = [equalCopy ttsspeechTranslationEvent];
    v47 = [ttsspeechTranslationEvent2 isEqual:ttsspeechTranslationEvent3];

    if (v47)
    {
      goto LABEL_46;
    }
  }

  else
  {
LABEL_42:
  }

LABEL_43:
  v48 = 0;
LABEL_44:

  return v48;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  safariFeedbackEvent = [(LTSchemaMTClientEvent *)self safariFeedbackEvent];

  if (safariFeedbackEvent)
  {
    safariFeedbackEvent2 = [(LTSchemaMTClientEvent *)self safariFeedbackEvent];
    PBDataWriterWriteSubmessage();
  }

  batchTranslationEvent = [(LTSchemaMTClientEvent *)self batchTranslationEvent];

  if (batchTranslationEvent)
  {
    batchTranslationEvent2 = [(LTSchemaMTClientEvent *)self batchTranslationEvent];
    PBDataWriterWriteSubmessage();
  }

  speechTranslationEvent = [(LTSchemaMTClientEvent *)self speechTranslationEvent];

  if (speechTranslationEvent)
  {
    speechTranslationEvent2 = [(LTSchemaMTClientEvent *)self speechTranslationEvent];
    PBDataWriterWriteSubmessage();
  }

  lidSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self lidSpeechTranslationEvent];

  if (lidSpeechTranslationEvent)
  {
    lidSpeechTranslationEvent2 = [(LTSchemaMTClientEvent *)self lidSpeechTranslationEvent];
    PBDataWriterWriteSubmessage();
  }

  disambiguationSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self disambiguationSpeechTranslationEvent];

  if (disambiguationSpeechTranslationEvent)
  {
    disambiguationSpeechTranslationEvent2 = [(LTSchemaMTClientEvent *)self disambiguationSpeechTranslationEvent];
    PBDataWriterWriteSubmessage();
  }

  asrSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self asrSpeechTranslationEvent];

  if (asrSpeechTranslationEvent)
  {
    asrSpeechTranslationEvent2 = [(LTSchemaMTClientEvent *)self asrSpeechTranslationEvent];
    PBDataWriterWriteSubmessage();
  }

  mtSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self mtSpeechTranslationEvent];

  if (mtSpeechTranslationEvent)
  {
    mtSpeechTranslationEvent2 = [(LTSchemaMTClientEvent *)self mtSpeechTranslationEvent];
    PBDataWriterWriteSubmessage();
  }

  ttsspeechTranslationEvent = [(LTSchemaMTClientEvent *)self ttsspeechTranslationEvent];

  v19 = toCopy;
  if (ttsspeechTranslationEvent)
  {
    ttsspeechTranslationEvent2 = [(LTSchemaMTClientEvent *)self ttsspeechTranslationEvent];
    PBDataWriterWriteSubmessage();

    v19 = toCopy;
  }
}

- (void)deleteTtsspeechTranslationEvent
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_ttsspeechTranslationEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LTSchemaTTSSpeechTranslationEvent)ttsspeechTranslationEvent
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_ttsspeechTranslationEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTtsspeechTranslationEvent:(id)event
{
  eventCopy = event;
  safariFeedbackEvent = self->_safariFeedbackEvent;
  self->_safariFeedbackEvent = 0;

  batchTranslationEvent = self->_batchTranslationEvent;
  self->_batchTranslationEvent = 0;

  speechTranslationEvent = self->_speechTranslationEvent;
  self->_speechTranslationEvent = 0;

  lidSpeechTranslationEvent = self->_lidSpeechTranslationEvent;
  self->_lidSpeechTranslationEvent = 0;

  disambiguationSpeechTranslationEvent = self->_disambiguationSpeechTranslationEvent;
  self->_disambiguationSpeechTranslationEvent = 0;

  asrSpeechTranslationEvent = self->_asrSpeechTranslationEvent;
  self->_asrSpeechTranslationEvent = 0;

  mtSpeechTranslationEvent = self->_mtSpeechTranslationEvent;
  self->_mtSpeechTranslationEvent = 0;

  v12 = 108;
  if (!eventCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  ttsspeechTranslationEvent = self->_ttsspeechTranslationEvent;
  self->_ttsspeechTranslationEvent = eventCopy;
}

- (void)deleteMtSpeechTranslationEvent
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_mtSpeechTranslationEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LTSchemaMTSpeechTranslationEvent)mtSpeechTranslationEvent
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_mtSpeechTranslationEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMtSpeechTranslationEvent:(id)event
{
  eventCopy = event;
  safariFeedbackEvent = self->_safariFeedbackEvent;
  self->_safariFeedbackEvent = 0;

  batchTranslationEvent = self->_batchTranslationEvent;
  self->_batchTranslationEvent = 0;

  speechTranslationEvent = self->_speechTranslationEvent;
  self->_speechTranslationEvent = 0;

  lidSpeechTranslationEvent = self->_lidSpeechTranslationEvent;
  self->_lidSpeechTranslationEvent = 0;

  disambiguationSpeechTranslationEvent = self->_disambiguationSpeechTranslationEvent;
  self->_disambiguationSpeechTranslationEvent = 0;

  asrSpeechTranslationEvent = self->_asrSpeechTranslationEvent;
  self->_asrSpeechTranslationEvent = 0;

  ttsspeechTranslationEvent = self->_ttsspeechTranslationEvent;
  self->_ttsspeechTranslationEvent = 0;

  v12 = 107;
  if (!eventCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  mtSpeechTranslationEvent = self->_mtSpeechTranslationEvent;
  self->_mtSpeechTranslationEvent = eventCopy;
}

- (void)deleteAsrSpeechTranslationEvent
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_asrSpeechTranslationEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LTSchemaASRSpeechTranslationEvent)asrSpeechTranslationEvent
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_asrSpeechTranslationEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAsrSpeechTranslationEvent:(id)event
{
  eventCopy = event;
  safariFeedbackEvent = self->_safariFeedbackEvent;
  self->_safariFeedbackEvent = 0;

  batchTranslationEvent = self->_batchTranslationEvent;
  self->_batchTranslationEvent = 0;

  speechTranslationEvent = self->_speechTranslationEvent;
  self->_speechTranslationEvent = 0;

  lidSpeechTranslationEvent = self->_lidSpeechTranslationEvent;
  self->_lidSpeechTranslationEvent = 0;

  disambiguationSpeechTranslationEvent = self->_disambiguationSpeechTranslationEvent;
  self->_disambiguationSpeechTranslationEvent = 0;

  mtSpeechTranslationEvent = self->_mtSpeechTranslationEvent;
  self->_mtSpeechTranslationEvent = 0;

  ttsspeechTranslationEvent = self->_ttsspeechTranslationEvent;
  self->_ttsspeechTranslationEvent = 0;

  v12 = 106;
  if (!eventCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  asrSpeechTranslationEvent = self->_asrSpeechTranslationEvent;
  self->_asrSpeechTranslationEvent = eventCopy;
}

- (void)deleteDisambiguationSpeechTranslationEvent
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_disambiguationSpeechTranslationEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LTSchemaDisambiguationSpeechTranslationEvent)disambiguationSpeechTranslationEvent
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_disambiguationSpeechTranslationEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDisambiguationSpeechTranslationEvent:(id)event
{
  eventCopy = event;
  safariFeedbackEvent = self->_safariFeedbackEvent;
  self->_safariFeedbackEvent = 0;

  batchTranslationEvent = self->_batchTranslationEvent;
  self->_batchTranslationEvent = 0;

  speechTranslationEvent = self->_speechTranslationEvent;
  self->_speechTranslationEvent = 0;

  lidSpeechTranslationEvent = self->_lidSpeechTranslationEvent;
  self->_lidSpeechTranslationEvent = 0;

  asrSpeechTranslationEvent = self->_asrSpeechTranslationEvent;
  self->_asrSpeechTranslationEvent = 0;

  mtSpeechTranslationEvent = self->_mtSpeechTranslationEvent;
  self->_mtSpeechTranslationEvent = 0;

  ttsspeechTranslationEvent = self->_ttsspeechTranslationEvent;
  self->_ttsspeechTranslationEvent = 0;

  v12 = 105;
  if (!eventCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  disambiguationSpeechTranslationEvent = self->_disambiguationSpeechTranslationEvent;
  self->_disambiguationSpeechTranslationEvent = eventCopy;
}

- (void)deleteLidSpeechTranslationEvent
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_lidSpeechTranslationEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LTSchemaLIDSpeechTranslationEvent)lidSpeechTranslationEvent
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_lidSpeechTranslationEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLidSpeechTranslationEvent:(id)event
{
  eventCopy = event;
  safariFeedbackEvent = self->_safariFeedbackEvent;
  self->_safariFeedbackEvent = 0;

  batchTranslationEvent = self->_batchTranslationEvent;
  self->_batchTranslationEvent = 0;

  speechTranslationEvent = self->_speechTranslationEvent;
  self->_speechTranslationEvent = 0;

  disambiguationSpeechTranslationEvent = self->_disambiguationSpeechTranslationEvent;
  self->_disambiguationSpeechTranslationEvent = 0;

  asrSpeechTranslationEvent = self->_asrSpeechTranslationEvent;
  self->_asrSpeechTranslationEvent = 0;

  mtSpeechTranslationEvent = self->_mtSpeechTranslationEvent;
  self->_mtSpeechTranslationEvent = 0;

  ttsspeechTranslationEvent = self->_ttsspeechTranslationEvent;
  self->_ttsspeechTranslationEvent = 0;

  v12 = 104;
  if (!eventCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  lidSpeechTranslationEvent = self->_lidSpeechTranslationEvent;
  self->_lidSpeechTranslationEvent = eventCopy;
}

- (void)deleteSpeechTranslationEvent
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_speechTranslationEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LTSchemaSpeechTranslationEvent)speechTranslationEvent
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_speechTranslationEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeechTranslationEvent:(id)event
{
  eventCopy = event;
  safariFeedbackEvent = self->_safariFeedbackEvent;
  self->_safariFeedbackEvent = 0;

  batchTranslationEvent = self->_batchTranslationEvent;
  self->_batchTranslationEvent = 0;

  lidSpeechTranslationEvent = self->_lidSpeechTranslationEvent;
  self->_lidSpeechTranslationEvent = 0;

  disambiguationSpeechTranslationEvent = self->_disambiguationSpeechTranslationEvent;
  self->_disambiguationSpeechTranslationEvent = 0;

  asrSpeechTranslationEvent = self->_asrSpeechTranslationEvent;
  self->_asrSpeechTranslationEvent = 0;

  mtSpeechTranslationEvent = self->_mtSpeechTranslationEvent;
  self->_mtSpeechTranslationEvent = 0;

  ttsspeechTranslationEvent = self->_ttsspeechTranslationEvent;
  self->_ttsspeechTranslationEvent = 0;

  v12 = 103;
  if (!eventCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  speechTranslationEvent = self->_speechTranslationEvent;
  self->_speechTranslationEvent = eventCopy;
}

- (void)deleteBatchTranslationEvent
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_batchTranslationEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LTSchemaBatchTranslationEvent)batchTranslationEvent
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_batchTranslationEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBatchTranslationEvent:(id)event
{
  eventCopy = event;
  safariFeedbackEvent = self->_safariFeedbackEvent;
  self->_safariFeedbackEvent = 0;

  speechTranslationEvent = self->_speechTranslationEvent;
  self->_speechTranslationEvent = 0;

  lidSpeechTranslationEvent = self->_lidSpeechTranslationEvent;
  self->_lidSpeechTranslationEvent = 0;

  disambiguationSpeechTranslationEvent = self->_disambiguationSpeechTranslationEvent;
  self->_disambiguationSpeechTranslationEvent = 0;

  asrSpeechTranslationEvent = self->_asrSpeechTranslationEvent;
  self->_asrSpeechTranslationEvent = 0;

  mtSpeechTranslationEvent = self->_mtSpeechTranslationEvent;
  self->_mtSpeechTranslationEvent = 0;

  ttsspeechTranslationEvent = self->_ttsspeechTranslationEvent;
  self->_ttsspeechTranslationEvent = 0;

  v12 = 102;
  if (!eventCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  batchTranslationEvent = self->_batchTranslationEvent;
  self->_batchTranslationEvent = eventCopy;
}

- (void)deleteSafariFeedbackEvent
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_safariFeedbackEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (LTSchemaSafariFeedbackEvent)safariFeedbackEvent
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_safariFeedbackEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSafariFeedbackEvent:(id)event
{
  eventCopy = event;
  batchTranslationEvent = self->_batchTranslationEvent;
  self->_batchTranslationEvent = 0;

  speechTranslationEvent = self->_speechTranslationEvent;
  self->_speechTranslationEvent = 0;

  lidSpeechTranslationEvent = self->_lidSpeechTranslationEvent;
  self->_lidSpeechTranslationEvent = 0;

  disambiguationSpeechTranslationEvent = self->_disambiguationSpeechTranslationEvent;
  self->_disambiguationSpeechTranslationEvent = 0;

  asrSpeechTranslationEvent = self->_asrSpeechTranslationEvent;
  self->_asrSpeechTranslationEvent = 0;

  mtSpeechTranslationEvent = self->_mtSpeechTranslationEvent;
  self->_mtSpeechTranslationEvent = 0;

  ttsspeechTranslationEvent = self->_ttsspeechTranslationEvent;
  self->_ttsspeechTranslationEvent = 0;

  v12 = 101;
  if (!eventCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  safariFeedbackEvent = self->_safariFeedbackEvent;
  self->_safariFeedbackEvent = eventCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(LTSchemaMTClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 7)
  {
    return @"com.apple.aiml.mi.translation.MTClientEvent";
  }

  else
  {
    return off_1E78D8D48[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v31.receiver = self;
  v31.super_class = LTSchemaMTClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v31 applySensitiveConditionsPolicy:policyCopy];
  safariFeedbackEvent = [(LTSchemaMTClientEvent *)self safariFeedbackEvent];
  v7 = [safariFeedbackEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(LTSchemaMTClientEvent *)self deleteSafariFeedbackEvent];
  }

  batchTranslationEvent = [(LTSchemaMTClientEvent *)self batchTranslationEvent];
  v10 = [batchTranslationEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(LTSchemaMTClientEvent *)self deleteBatchTranslationEvent];
  }

  speechTranslationEvent = [(LTSchemaMTClientEvent *)self speechTranslationEvent];
  v13 = [speechTranslationEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(LTSchemaMTClientEvent *)self deleteSpeechTranslationEvent];
  }

  lidSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self lidSpeechTranslationEvent];
  v16 = [lidSpeechTranslationEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(LTSchemaMTClientEvent *)self deleteLidSpeechTranslationEvent];
  }

  disambiguationSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self disambiguationSpeechTranslationEvent];
  v19 = [disambiguationSpeechTranslationEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(LTSchemaMTClientEvent *)self deleteDisambiguationSpeechTranslationEvent];
  }

  asrSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self asrSpeechTranslationEvent];
  v22 = [asrSpeechTranslationEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(LTSchemaMTClientEvent *)self deleteAsrSpeechTranslationEvent];
  }

  mtSpeechTranslationEvent = [(LTSchemaMTClientEvent *)self mtSpeechTranslationEvent];
  v25 = [mtSpeechTranslationEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(LTSchemaMTClientEvent *)self deleteMtSpeechTranslationEvent];
  }

  ttsspeechTranslationEvent = [(LTSchemaMTClientEvent *)self ttsspeechTranslationEvent];
  v28 = [ttsspeechTranslationEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(LTSchemaMTClientEvent *)self deleteTtsspeechTranslationEvent];
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
  whichEvent_Type = [(LTSchemaMTClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9F28[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78E9F68[tag - 101];
  }
}

@end
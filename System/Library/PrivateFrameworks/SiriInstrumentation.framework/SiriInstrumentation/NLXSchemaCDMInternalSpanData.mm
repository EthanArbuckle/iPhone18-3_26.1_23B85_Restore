@interface NLXSchemaCDMInternalSpanData
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMInternalSpanData)initWithDictionary:(id)a3;
- (NLXSchemaCDMInternalSpanData)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMInternalSpanData

- (NLXSchemaCDMInternalSpanData)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NLXSchemaCDMInternalSpanData;
  v5 = [(NLXSchemaCDMInternalSpanData *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriVocabularySpanData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLXSchemaCDMSiriVocabularySpanData alloc] initWithDictionary:v6];
      [(NLXSchemaCDMInternalSpanData *)v5 setSiriVocabularySpanData:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"plumSpanData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLXSchemaPLUMSpanData alloc] initWithDictionary:v8];
      [(NLXSchemaCDMInternalSpanData *)v5 setPlumSpanData:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"mentionDetectorSpanData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaMentionDetectorSpanData alloc] initWithDictionary:v10];
      [(NLXSchemaCDMInternalSpanData *)v5 setMentionDetectorSpanData:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"mentionResolverSpanData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLXSchemaMentionResolverSpanData alloc] initWithDictionary:v12];
      [(NLXSchemaCDMInternalSpanData *)v5 setMentionResolverSpanData:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"contextualSpanData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NLXSchemaContextualSpanData alloc] initWithDictionary:v14];
      [(NLXSchemaCDMInternalSpanData *)v5 setContextualSpanData:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (NLXSchemaCDMInternalSpanData)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMInternalSpanData *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMInternalSpanData *)self dictionaryRepresentation];
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
  if (self->_contextualSpanData)
  {
    v4 = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"contextualSpanData"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"contextualSpanData"];
    }
  }

  if (self->_mentionDetectorSpanData)
  {
    v7 = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"mentionDetectorSpanData"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"mentionDetectorSpanData"];
    }
  }

  if (self->_mentionResolverSpanData)
  {
    v10 = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"mentionResolverSpanData"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"mentionResolverSpanData"];
    }
  }

  if (self->_plumSpanData)
  {
    v13 = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"plumSpanData"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"plumSpanData"];
    }
  }

  if (self->_siriVocabularySpanData)
  {
    v16 = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"siriVocabularySpanData"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"siriVocabularySpanData"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NLXSchemaCDMSiriVocabularySpanData *)self->_siriVocabularySpanData hash];
  v4 = [(NLXSchemaPLUMSpanData *)self->_plumSpanData hash]^ v3;
  v5 = [(NLXSchemaMentionDetectorSpanData *)self->_mentionDetectorSpanData hash];
  v6 = v4 ^ v5 ^ [(NLXSchemaMentionResolverSpanData *)self->_mentionResolverSpanData hash];
  return v6 ^ [(NLXSchemaContextualSpanData *)self->_contextualSpanData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];
  v6 = [v4 siriVocabularySpanData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];
    v10 = [v4 siriVocabularySpanData];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];
  v6 = [v4 plumSpanData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];
  if (v12)
  {
    v13 = v12;
    v14 = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];
    v15 = [v4 plumSpanData];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];
  v6 = [v4 mentionDetectorSpanData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];
  if (v17)
  {
    v18 = v17;
    v19 = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];
    v20 = [v4 mentionDetectorSpanData];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];
  v6 = [v4 mentionResolverSpanData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];
  if (v22)
  {
    v23 = v22;
    v24 = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];
    v25 = [v4 mentionResolverSpanData];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];
  v6 = [v4 contextualSpanData];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];
    v30 = [v4 contextualSpanData];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];

  if (v4)
  {
    v5 = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];

  if (v6)
  {
    v7 = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];

  if (v8)
  {
    v9 = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];

  if (v10)
  {
    v11 = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];

  v13 = v15;
  if (v12)
  {
    v14 = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = NLXSchemaCDMInternalSpanData;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaCDMInternalSpanData *)self deleteSiriVocabularySpanData];
  }

  v9 = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLXSchemaCDMInternalSpanData *)self deletePlumSpanData];
  }

  v12 = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(NLXSchemaCDMInternalSpanData *)self deleteMentionDetectorSpanData];
  }

  v15 = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(NLXSchemaCDMInternalSpanData *)self deleteMentionResolverSpanData];
  }

  v18 = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(NLXSchemaCDMInternalSpanData *)self deleteContextualSpanData];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
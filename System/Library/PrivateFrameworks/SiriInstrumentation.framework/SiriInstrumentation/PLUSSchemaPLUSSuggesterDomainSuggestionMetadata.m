@interface PLUSSchemaPLUSSuggesterDomainSuggestionMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggesterDomainSuggestionMetadata)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSSuggesterDomainSuggestionMetadata)initWithJSON:(id)a3;
- (PLUSSchemaPLUSSuggesterMediaSuggestionMetadata)mediaMetadata;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteMediaMetadata;
- (void)setMediaMetadata:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSSuggesterDomainSuggestionMetadata

- (PLUSSchemaPLUSSuggesterDomainSuggestionMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSSuggesterDomainSuggestionMetadata;
  v5 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mediaMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSSuggesterMediaSuggestionMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)v5 setMediaMetadata:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggesterDomainSuggestionMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self dictionaryRepresentation];
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
  if (self->_mediaMetadata)
  {
    v4 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"mediaMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"mediaMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichDomainsuggestionmetadata = self->_whichDomainsuggestionmetadata;
    if (whichDomainsuggestionmetadata == [v4 whichDomainsuggestionmetadata])
    {
      v6 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata];
      v7 = [v4 mediaMetadata];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata];
        v12 = [v4 mediaMetadata];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteMediaMetadata
{
  if (self->_whichDomainsuggestionmetadata == 100)
  {
    self->_whichDomainsuggestionmetadata = 0;
    self->_mediaMetadata = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSSuggesterMediaSuggestionMetadata)mediaMetadata
{
  if (self->_whichDomainsuggestionmetadata == 100)
  {
    v3 = self->_mediaMetadata;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMediaMetadata:(id)a3
{
  v3 = 100;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichDomainsuggestionmetadata = v3;
  objc_storeStrong(&self->_mediaMetadata, a3);
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSSuggesterDomainSuggestionMetadata;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self deleteMediaMetadata];
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
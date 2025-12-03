@interface PLUSSchemaPLUSSuggesterDomainSuggestionMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggesterDomainSuggestionMetadata)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggesterDomainSuggestionMetadata)initWithJSON:(id)n;
- (PLUSSchemaPLUSSuggesterMediaSuggestionMetadata)mediaMetadata;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteMediaMetadata;
- (void)setMediaMetadata:(id)metadata;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggesterDomainSuggestionMetadata

- (PLUSSchemaPLUSSuggesterDomainSuggestionMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSSuggesterDomainSuggestionMetadata;
  v5 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mediaMetadata"];
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

- (PLUSSchemaPLUSSuggesterDomainSuggestionMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self dictionaryRepresentation];
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
  if (self->_mediaMetadata)
  {
    mediaMetadata = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata];
    dictionaryRepresentation = [mediaMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"mediaMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"mediaMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    whichDomainsuggestionmetadata = self->_whichDomainsuggestionmetadata;
    if (whichDomainsuggestionmetadata == [equalCopy whichDomainsuggestionmetadata])
    {
      mediaMetadata = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata];
      mediaMetadata2 = [equalCopy mediaMetadata];
      v8 = mediaMetadata2;
      if ((mediaMetadata != 0) != (mediaMetadata2 == 0))
      {
        mediaMetadata3 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata];
        if (!mediaMetadata3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = mediaMetadata3;
        mediaMetadata4 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata];
        mediaMetadata5 = [equalCopy mediaMetadata];
        v13 = [mediaMetadata4 isEqual:mediaMetadata5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  mediaMetadata = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata];

  if (mediaMetadata)
  {
    mediaMetadata2 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata];
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

- (void)setMediaMetadata:(id)metadata
{
  v3 = 100;
  if (!metadata)
  {
    v3 = 0;
  }

  self->_whichDomainsuggestionmetadata = v3;
  objc_storeStrong(&self->_mediaMetadata, metadata);
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSSuggesterDomainSuggestionMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self mediaMetadata:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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
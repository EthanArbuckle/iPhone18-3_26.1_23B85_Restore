@interface PLUSSchemaPLUSSuggestionDomainOutcome
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaSuggestionOutcome)mediaOutcome;
- (PLUSSchemaPLUSSuggestionDomainOutcome)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggestionDomainOutcome)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteMediaOutcome;
- (void)setMediaOutcome:(id)outcome;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggestionDomainOutcome

- (PLUSSchemaPLUSSuggestionDomainOutcome)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSSuggestionDomainOutcome;
  v5 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mediaOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSMediaSuggestionOutcome alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggestionDomainOutcome *)v5 setMediaOutcome:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggestionDomainOutcome)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self dictionaryRepresentation];
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
  if (self->_mediaOutcome)
  {
    mediaOutcome = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome];
    dictionaryRepresentation = [mediaOutcome dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"mediaOutcome"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"mediaOutcome"];
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
    whichDomainsuggestionoutcome = self->_whichDomainsuggestionoutcome;
    if (whichDomainsuggestionoutcome == [equalCopy whichDomainsuggestionoutcome])
    {
      mediaOutcome = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome];
      mediaOutcome2 = [equalCopy mediaOutcome];
      v8 = mediaOutcome2;
      if ((mediaOutcome != 0) != (mediaOutcome2 == 0))
      {
        mediaOutcome3 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome];
        if (!mediaOutcome3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = mediaOutcome3;
        mediaOutcome4 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome];
        mediaOutcome5 = [equalCopy mediaOutcome];
        v13 = [mediaOutcome4 isEqual:mediaOutcome5];

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
  mediaOutcome = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome];

  if (mediaOutcome)
  {
    mediaOutcome2 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteMediaOutcome
{
  if (self->_whichDomainsuggestionoutcome == 100)
  {
    self->_whichDomainsuggestionoutcome = 0;
    self->_mediaOutcome = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSMediaSuggestionOutcome)mediaOutcome
{
  if (self->_whichDomainsuggestionoutcome == 100)
  {
    v3 = self->_mediaOutcome;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMediaOutcome:(id)outcome
{
  v3 = 100;
  if (!outcome)
  {
    v3 = 0;
  }

  self->_whichDomainsuggestionoutcome = v3;
  objc_storeStrong(&self->_mediaOutcome, outcome);
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSSuggestionDomainOutcome;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PLUSSchemaPLUSSuggestionDomainOutcome *)self deleteMediaOutcome];
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
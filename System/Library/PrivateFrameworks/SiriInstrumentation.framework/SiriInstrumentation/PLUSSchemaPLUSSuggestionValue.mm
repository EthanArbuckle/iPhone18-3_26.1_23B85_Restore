@interface PLUSSchemaPLUSSuggestionValue
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaSuggestion)mediaSuggestion;
- (PLUSSchemaPLUSSuggestionValue)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggestionValue)initWithJSON:(id)n;
- (PLUSSchemaPLUSUniversalSuggestion)universalSuggestion;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteMediaSuggestion;
- (void)deleteUniversalSuggestion;
- (void)setMediaSuggestion:(id)suggestion;
- (void)setUniversalSuggestion:(id)suggestion;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggestionValue

- (PLUSSchemaPLUSSuggestionValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSSuggestionValue;
  v5 = [(PLUSSchemaPLUSSuggestionValue *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"universalSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSUniversalSuggestion alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggestionValue *)v5 setUniversalSuggestion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"mediaSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PLUSSchemaPLUSMediaSuggestion alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggestionValue *)v5 setMediaSuggestion:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggestionValue)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggestionValue *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggestionValue *)self dictionaryRepresentation];
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
  if (self->_mediaSuggestion)
  {
    mediaSuggestion = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];
    dictionaryRepresentation = [mediaSuggestion dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"mediaSuggestion"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"mediaSuggestion"];
    }
  }

  if (self->_universalSuggestion)
  {
    universalSuggestion = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];
    dictionaryRepresentation2 = [universalSuggestion dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"universalSuggestion"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"universalSuggestion"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichSuggestion = self->_whichSuggestion;
  if (whichSuggestion != [equalCopy whichSuggestion])
  {
    goto LABEL_13;
  }

  universalSuggestion = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];
  universalSuggestion2 = [equalCopy universalSuggestion];
  if ((universalSuggestion != 0) == (universalSuggestion2 == 0))
  {
    goto LABEL_12;
  }

  universalSuggestion3 = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];
  if (universalSuggestion3)
  {
    v9 = universalSuggestion3;
    universalSuggestion4 = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];
    universalSuggestion5 = [equalCopy universalSuggestion];
    v12 = [universalSuggestion4 isEqual:universalSuggestion5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  universalSuggestion = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];
  universalSuggestion2 = [equalCopy mediaSuggestion];
  if ((universalSuggestion != 0) != (universalSuggestion2 == 0))
  {
    mediaSuggestion = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];
    if (!mediaSuggestion)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = mediaSuggestion;
    mediaSuggestion2 = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];
    mediaSuggestion3 = [equalCopy mediaSuggestion];
    v17 = [mediaSuggestion2 isEqual:mediaSuggestion3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  universalSuggestion = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];

  if (universalSuggestion)
  {
    universalSuggestion2 = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];
    PBDataWriterWriteSubmessage();
  }

  mediaSuggestion = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];

  if (mediaSuggestion)
  {
    mediaSuggestion2 = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteMediaSuggestion
{
  if (self->_whichSuggestion == 101)
  {
    self->_whichSuggestion = 0;
    self->_mediaSuggestion = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSMediaSuggestion)mediaSuggestion
{
  if (self->_whichSuggestion == 101)
  {
    v3 = self->_mediaSuggestion;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMediaSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  universalSuggestion = self->_universalSuggestion;
  self->_universalSuggestion = 0;

  v6 = 101;
  if (!suggestionCopy)
  {
    v6 = 0;
  }

  self->_whichSuggestion = v6;
  mediaSuggestion = self->_mediaSuggestion;
  self->_mediaSuggestion = suggestionCopy;
}

- (void)deleteUniversalSuggestion
{
  if (self->_whichSuggestion == 100)
  {
    self->_whichSuggestion = 0;
    self->_universalSuggestion = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSUniversalSuggestion)universalSuggestion
{
  if (self->_whichSuggestion == 100)
  {
    v3 = self->_universalSuggestion;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUniversalSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  mediaSuggestion = self->_mediaSuggestion;
  self->_mediaSuggestion = 0;

  v6 = 100;
  if (!suggestionCopy)
  {
    v6 = 0;
  }

  self->_whichSuggestion = v6;
  universalSuggestion = self->_universalSuggestion;
  self->_universalSuggestion = suggestionCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PLUSSchemaPLUSSuggestionValue;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  universalSuggestion = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];
  v7 = [universalSuggestion applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSSuggestionValue *)self deleteUniversalSuggestion];
  }

  mediaSuggestion = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];
  v10 = [mediaSuggestion applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSSuggestionValue *)self deleteMediaSuggestion];
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
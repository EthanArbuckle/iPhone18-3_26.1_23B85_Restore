@interface PLUSSchemaPLUSSuggestionValue
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaSuggestion)mediaSuggestion;
- (PLUSSchemaPLUSSuggestionValue)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSSuggestionValue)initWithJSON:(id)a3;
- (PLUSSchemaPLUSUniversalSuggestion)universalSuggestion;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteMediaSuggestion;
- (void)deleteUniversalSuggestion;
- (void)setMediaSuggestion:(id)a3;
- (void)setUniversalSuggestion:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSSuggestionValue

- (PLUSSchemaPLUSSuggestionValue)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSSuggestionValue;
  v5 = [(PLUSSchemaPLUSSuggestionValue *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"universalSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSUniversalSuggestion alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggestionValue *)v5 setUniversalSuggestion:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"mediaSuggestion"];
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

- (PLUSSchemaPLUSSuggestionValue)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggestionValue *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSSuggestionValue *)self dictionaryRepresentation];
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
  if (self->_mediaSuggestion)
  {
    v4 = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"mediaSuggestion"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"mediaSuggestion"];
    }
  }

  if (self->_universalSuggestion)
  {
    v7 = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"universalSuggestion"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"universalSuggestion"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichSuggestion = self->_whichSuggestion;
  if (whichSuggestion != [v4 whichSuggestion])
  {
    goto LABEL_13;
  }

  v6 = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];
  v7 = [v4 universalSuggestion];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];
  if (v8)
  {
    v9 = v8;
    v10 = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];
    v11 = [v4 universalSuggestion];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];
  v7 = [v4 mediaSuggestion];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];
    v16 = [v4 mediaSuggestion];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];

  if (v6)
  {
    v7 = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];
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

- (void)setMediaSuggestion:(id)a3
{
  v4 = a3;
  universalSuggestion = self->_universalSuggestion;
  self->_universalSuggestion = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichSuggestion = v6;
  mediaSuggestion = self->_mediaSuggestion;
  self->_mediaSuggestion = v4;
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

- (void)setUniversalSuggestion:(id)a3
{
  v4 = a3;
  mediaSuggestion = self->_mediaSuggestion;
  self->_mediaSuggestion = 0;

  v6 = 100;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichSuggestion = v6;
  universalSuggestion = self->_universalSuggestion;
  self->_universalSuggestion = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PLUSSchemaPLUSSuggestionValue;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSSuggestionValue *)self universalSuggestion];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PLUSSchemaPLUSSuggestionValue *)self deleteUniversalSuggestion];
  }

  v9 = [(PLUSSchemaPLUSSuggestionValue *)self mediaSuggestion];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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
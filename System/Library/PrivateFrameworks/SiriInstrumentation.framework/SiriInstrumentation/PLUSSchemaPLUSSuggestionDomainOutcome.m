@interface PLUSSchemaPLUSSuggestionDomainOutcome
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaSuggestionOutcome)mediaOutcome;
- (PLUSSchemaPLUSSuggestionDomainOutcome)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSSuggestionDomainOutcome)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteMediaOutcome;
- (void)setMediaOutcome:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSSuggestionDomainOutcome

- (PLUSSchemaPLUSSuggestionDomainOutcome)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSSuggestionDomainOutcome;
  v5 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mediaOutcome"];
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

- (PLUSSchemaPLUSSuggestionDomainOutcome)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self dictionaryRepresentation];
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
  if (self->_mediaOutcome)
  {
    v4 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"mediaOutcome"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"mediaOutcome"];
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
    whichDomainsuggestionoutcome = self->_whichDomainsuggestionoutcome;
    if (whichDomainsuggestionoutcome == [v4 whichDomainsuggestionoutcome])
    {
      v6 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome];
      v7 = [v4 mediaOutcome];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome];
        v12 = [v4 mediaOutcome];
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
  v4 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome];
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

- (void)setMediaOutcome:(id)a3
{
  v3 = 100;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichDomainsuggestionoutcome = v3;
  objc_storeStrong(&self->_mediaOutcome, a3);
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSSuggestionDomainOutcome;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSSuggestionDomainOutcome *)self mediaOutcome:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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
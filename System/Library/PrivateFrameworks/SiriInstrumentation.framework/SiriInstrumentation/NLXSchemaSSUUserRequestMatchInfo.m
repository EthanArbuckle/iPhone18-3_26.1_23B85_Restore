@interface NLXSchemaSSUUserRequestMatchInfo
- (BOOL)isEqual:(id)a3;
- (NLXSchemaSSUUserRequestMatchInfo)initWithDictionary:(id)a3;
- (NLXSchemaSSUUserRequestMatchInfo)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumEntities:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaSSUUserRequestMatchInfo

- (NLXSchemaSSUUserRequestMatchInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NLXSchemaSSUUserRequestMatchInfo;
  v5 = [(NLXSchemaSSUUserRequestMatchInfo *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"matchingUtteranceCandidateType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaSSUUserRequestMatchInfo setMatchingUtteranceCandidateType:](v5, "setMatchingUtteranceCandidateType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"numEntities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaSSUUserRequestMatchInfo setNumEntities:](v5, "setNumEntities:", [v7 unsignedIntValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (NLXSchemaSSUUserRequestMatchInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaSSUUserRequestMatchInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaSSUUserRequestMatchInfo *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [(NLXSchemaSSUUserRequestMatchInfo *)self matchingUtteranceCandidateType];
    v6 = @"SSUUTTERANCECANDIDATETYPE_UNKNOWN";
    if (v5 == 1)
    {
      v6 = @"SSUUTTERANCECANDIDATETYPE_ORIGINAL";
    }

    if (v5 == 2)
    {
      v7 = @"SSUUTTERANCECANDIDATETYPE_ALTERNATIVE";
    }

    else
    {
      v7 = v6;
    }

    [v3 setObject:v7 forKeyedSubscript:@"matchingUtteranceCandidateType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaSSUUserRequestMatchInfo numEntities](self, "numEntities")}];
    [v3 setObject:v8 forKeyedSubscript:@"numEntities"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_matchingUtteranceCandidateType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_numEntities;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = v4[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    matchingUtteranceCandidateType = self->_matchingUtteranceCandidateType;
    if (matchingUtteranceCandidateType != [v4 matchingUtteranceCandidateType])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = v4[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    numEntities = self->_numEntities;
    if (numEntities != [v4 numEntities])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }
}

- (void)setHasNumEntities:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
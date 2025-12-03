@interface PSESchemaPSEMaps
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PSESchemaPSEMaps)initWithDictionary:(id)dictionary;
- (PSESchemaPSEMaps)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PSESchemaPSEMaps

- (PSESchemaPSEMaps)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PSESchemaPSEMaps;
  v5 = [(PSESchemaPSEMaps *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isSiriResultUseful"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMaps setIsSiriResultUseful:](v5, "setIsSiriResultUseful:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"followup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[PSESchemaPSEMapsUserFollowup alloc] initWithDictionary:v7];
      [(PSESchemaPSEMaps *)v5 setFollowup:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (PSESchemaPSEMaps)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PSESchemaPSEMaps *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PSESchemaPSEMaps *)self dictionaryRepresentation];
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
  if (self->_followup)
  {
    followup = [(PSESchemaPSEMaps *)self followup];
    dictionaryRepresentation = [followup dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"followup"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"followup"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSEMaps isSiriResultUseful](self, "isSiriResultUseful")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isSiriResultUseful"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isSiriResultUseful;
  }

  else
  {
    v2 = 0;
  }

  return [(PSESchemaPSEMapsUserFollowup *)self->_followup hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (isSiriResultUseful = self->_isSiriResultUseful, isSiriResultUseful == [equalCopy isSiriResultUseful]))
      {
        followup = [(PSESchemaPSEMaps *)self followup];
        followup2 = [equalCopy followup];
        v8 = followup2;
        if ((followup != 0) != (followup2 == 0))
        {
          followup3 = [(PSESchemaPSEMaps *)self followup];
          if (!followup3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = followup3;
          followup4 = [(PSESchemaPSEMaps *)self followup];
          followup5 = [equalCopy followup];
          v13 = [followup4 isEqual:followup5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  followup = [(PSESchemaPSEMaps *)self followup];

  v5 = toCopy;
  if (followup)
  {
    followup2 = [(PSESchemaPSEMaps *)self followup];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PSESchemaPSEMaps;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PSESchemaPSEMaps *)self followup:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PSESchemaPSEMaps *)self deleteFollowup];
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
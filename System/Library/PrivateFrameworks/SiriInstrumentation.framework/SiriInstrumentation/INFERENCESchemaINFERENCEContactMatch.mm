@interface INFERENCESchemaINFERENCEContactMatch
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEContactMatch)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEContactMatch)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsShownToUser:(BOOL)user;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEContactMatch

- (INFERENCESchemaINFERENCEContactMatch)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = INFERENCESchemaINFERENCEContactMatch;
  v5 = [(INFERENCESchemaINFERENCEContactMatch *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contactValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCEContact alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEContactMatch *)v5 setContactValue:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"contactSignalSet"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCEContactSignalSet alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEContactMatch *)v5 setContactSignalSet:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"backgroundSignalSet"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[INFERENCESchemaINFERENCEBackgroundContactSignalSet alloc] initWithDictionary:v10];
      [(INFERENCESchemaINFERENCEContactMatch *)v5 setBackgroundSignalSet:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"featureSet"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[INFERENCESchemaINFERENCEContactFeatureSet alloc] initWithDictionary:v12];
      [(INFERENCESchemaINFERENCEContactMatch *)v5 setFeatureSet:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(INFERENCESchemaINFERENCEContactMatch *)v5 setScore:?];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"isShownToUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactMatch setIsShownToUser:](v5, "setIsShownToUser:", [v15 BOOLValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEContactMatch)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEContactMatch *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEContactMatch *)self dictionaryRepresentation];
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
  if (self->_backgroundSignalSet)
  {
    backgroundSignalSet = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];
    dictionaryRepresentation = [backgroundSignalSet dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"backgroundSignalSet"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"backgroundSignalSet"];
    }
  }

  if (self->_contactSignalSet)
  {
    contactSignalSet = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];
    dictionaryRepresentation2 = [contactSignalSet dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"contactSignalSet"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"contactSignalSet"];
    }
  }

  if (self->_contactValue)
  {
    contactValue = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];
    dictionaryRepresentation3 = [contactValue dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"contactValue"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"contactValue"];
    }
  }

  if (self->_featureSet)
  {
    featureSet = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];
    dictionaryRepresentation4 = [featureSet dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"featureSet"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"featureSet"];
    }
  }

  v16 = *(&self->_isShownToUser + 1);
  if ((v16 & 2) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactMatch isShownToUser](self, "isShownToUser")}];
    [dictionary setObject:v17 forKeyedSubscript:@"isShownToUser"];

    v16 = *(&self->_isShownToUser + 1);
  }

  if (v16)
  {
    v18 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactMatch *)self score];
    v19 = [v18 numberWithFloat:?];
    [dictionary setObject:v19 forKeyedSubscript:@"score"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(INFERENCESchemaINFERENCEContact *)self->_contactValue hash];
  v4 = [(INFERENCESchemaINFERENCEContactSignalSet *)self->_contactSignalSet hash];
  v5 = [(INFERENCESchemaINFERENCEBackgroundContactSignalSet *)self->_backgroundSignalSet hash];
  v6 = [(INFERENCESchemaINFERENCEContactFeatureSet *)self->_featureSet hash];
  if (*(&self->_isShownToUser + 1))
  {
    score = self->_score;
    if (score >= 0.0)
    {
      v11 = score;
    }

    else
    {
      v11 = -score;
    }

    *v7.i64 = floor(v11 + 0.5);
    v12 = (v11 - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v8, v7).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v9 += v12;
      }
    }

    else
    {
      v9 -= fabs(v12);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*(&self->_isShownToUser + 1) & 2) != 0)
  {
    v14 = 2654435761 * self->_isShownToUser;
  }

  else
  {
    v14 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  contactValue = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];
  contactValue2 = [equalCopy contactValue];
  if ((contactValue != 0) == (contactValue2 == 0))
  {
    goto LABEL_21;
  }

  contactValue3 = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];
  if (contactValue3)
  {
    v8 = contactValue3;
    contactValue4 = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];
    contactValue5 = [equalCopy contactValue];
    v11 = [contactValue4 isEqual:contactValue5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  contactValue = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];
  contactValue2 = [equalCopy contactSignalSet];
  if ((contactValue != 0) == (contactValue2 == 0))
  {
    goto LABEL_21;
  }

  contactSignalSet = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];
  if (contactSignalSet)
  {
    v13 = contactSignalSet;
    contactSignalSet2 = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];
    contactSignalSet3 = [equalCopy contactSignalSet];
    v16 = [contactSignalSet2 isEqual:contactSignalSet3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  contactValue = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];
  contactValue2 = [equalCopy backgroundSignalSet];
  if ((contactValue != 0) == (contactValue2 == 0))
  {
    goto LABEL_21;
  }

  backgroundSignalSet = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];
  if (backgroundSignalSet)
  {
    v18 = backgroundSignalSet;
    backgroundSignalSet2 = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];
    backgroundSignalSet3 = [equalCopy backgroundSignalSet];
    v21 = [backgroundSignalSet2 isEqual:backgroundSignalSet3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  contactValue = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];
  contactValue2 = [equalCopy featureSet];
  if ((contactValue != 0) == (contactValue2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  featureSet = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];
  if (featureSet)
  {
    v23 = featureSet;
    featureSet2 = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];
    featureSet3 = [equalCopy featureSet];
    v26 = [featureSet2 isEqual:featureSet3];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v29 = *(&self->_isShownToUser + 1);
  v30 = equalCopy[45];
  if ((v29 & 1) == (v30 & 1))
  {
    if (v29)
    {
      score = self->_score;
      [equalCopy score];
      if (score != v32)
      {
        goto LABEL_22;
      }

      v29 = *(&self->_isShownToUser + 1);
      v30 = equalCopy[45];
    }

    v33 = (v29 >> 1) & 1;
    if (v33 == ((v30 >> 1) & 1))
    {
      if (!v33 || (isShownToUser = self->_isShownToUser, isShownToUser == [equalCopy isShownToUser]))
      {
        v27 = 1;
        goto LABEL_23;
      }
    }
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  contactValue = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];

  if (contactValue)
  {
    contactValue2 = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];
    PBDataWriterWriteSubmessage();
  }

  contactSignalSet = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];

  if (contactSignalSet)
  {
    contactSignalSet2 = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];
    PBDataWriterWriteSubmessage();
  }

  backgroundSignalSet = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];

  if (backgroundSignalSet)
  {
    backgroundSignalSet2 = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];
    PBDataWriterWriteSubmessage();
  }

  featureSet = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];

  if (featureSet)
  {
    featureSet2 = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];
    PBDataWriterWriteSubmessage();
  }

  v12 = *(&self->_isShownToUser + 1);
  if (v12)
  {
    PBDataWriterWriteFloatField();
    v12 = *(&self->_isShownToUser + 1);
  }

  v13 = toCopy;
  if ((v12 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v13 = toCopy;
  }
}

- (void)setHasIsShownToUser:(BOOL)user
{
  if (user)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isShownToUser + 1) = *(&self->_isShownToUser + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = INFERENCESchemaINFERENCEContactMatch;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  contactValue = [(INFERENCESchemaINFERENCEContactMatch *)self contactValue];
  v7 = [contactValue applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEContactMatch *)self deleteContactValue];
  }

  contactSignalSet = [(INFERENCESchemaINFERENCEContactMatch *)self contactSignalSet];
  v10 = [contactSignalSet applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCEContactMatch *)self deleteContactSignalSet];
  }

  backgroundSignalSet = [(INFERENCESchemaINFERENCEContactMatch *)self backgroundSignalSet];
  v13 = [backgroundSignalSet applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(INFERENCESchemaINFERENCEContactMatch *)self deleteBackgroundSignalSet];
  }

  featureSet = [(INFERENCESchemaINFERENCEContactMatch *)self featureSet];
  v16 = [featureSet applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(INFERENCESchemaINFERENCEContactMatch *)self deleteFeatureSet];
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
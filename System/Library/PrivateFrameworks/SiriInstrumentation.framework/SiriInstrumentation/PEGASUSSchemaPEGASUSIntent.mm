@interface PEGASUSSchemaPEGASUSIntent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSIntent)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSIntent)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConfidence:(BOOL)confidence;
- (void)setHasSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSIntent

- (PEGASUSSchemaPEGASUSIntent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PEGASUSSchemaPEGASUSIntent;
  v5 = [(PEGASUSSchemaPEGASUSIntent *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSIntent *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"intentCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSIntent setIntentCategory:](v5, "setIntentCategory:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PEGASUSSchemaPEGASUSIntent *)v5 setName:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSIntent setSource:](v5, "setSource:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(PEGASUSSchemaPEGASUSIntent *)v5 setConfidence:?];
    }

    v13 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSIntent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSIntent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSIntent *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSIntent *)self confidence];
    v6 = [v5 numberWithFloat:?];
    [dictionary setObject:v6 forKeyedSubscript:@"confidence"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [(PEGASUSSchemaPEGASUSIntent *)self intentCategory]- 1;
    if (v7 > 2)
    {
      v8 = @"PEGASUSINTENTCATEGORY_UNKNOWN";
    }

    else
    {
      v8 = off_1E78DF870[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"intentCategory"];
  }

  if (self->_linkId)
  {
    linkId = [(PEGASUSSchemaPEGASUSIntent *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_name)
  {
    name = [(PEGASUSSchemaPEGASUSIntent *)self name];
    v13 = [name copy];
    [dictionary setObject:v13 forKeyedSubscript:@"name"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = [(PEGASUSSchemaPEGASUSIntent *)self source]- 1;
    if (v14 > 4)
    {
      v15 = @"PEGASUSINTENTSOURCE_UNKNOWN";
    }

    else
    {
      v15 = off_1E78DF888[v14];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"source"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_intentCategory;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_name hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_source;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v8 ^ v13;
  }

  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  confidence = self->_confidence;
  if (confidence >= 0.0)
  {
    v10 = confidence;
  }

  else
  {
    v10 = -confidence;
  }

  *v6.i64 = floor(v10 + 0.5);
  v11 = (v10 - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  linkId = [(PEGASUSSchemaPEGASUSIntent *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_14;
  }

  linkId3 = [(PEGASUSSchemaPEGASUSIntent *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(PEGASUSSchemaPEGASUSIntent *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    intentCategory = self->_intentCategory;
    if (intentCategory != [equalCopy intentCategory])
    {
      goto LABEL_15;
    }
  }

  linkId = [(PEGASUSSchemaPEGASUSIntent *)self name];
  linkId2 = [equalCopy name];
  if ((linkId != 0) == (linkId2 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  name = [(PEGASUSSchemaPEGASUSIntent *)self name];
  if (name)
  {
    v14 = name;
    name2 = [(PEGASUSSchemaPEGASUSIntent *)self name];
    name3 = [equalCopy name];
    v17 = [name2 isEqual:name3];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  has = self->_has;
  v21 = (*&has >> 1) & 1;
  v22 = equalCopy[40];
  if (v21 == ((v22 >> 1) & 1))
  {
    if (v21)
    {
      source = self->_source;
      if (source != [equalCopy source])
      {
        goto LABEL_15;
      }

      has = self->_has;
      v22 = equalCopy[40];
    }

    v24 = (*&has >> 2) & 1;
    if (v24 == ((v22 >> 2) & 1))
    {
      if (!v24 || (confidence = self->_confidence, [equalCopy confidence], confidence == v26))
      {
        v18 = 1;
        goto LABEL_16;
      }
    }
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(PEGASUSSchemaPEGASUSIntent *)self linkId];

  if (linkId)
  {
    linkId2 = [(PEGASUSSchemaPEGASUSIntent *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  name = [(PEGASUSSchemaPEGASUSIntent *)self name];

  if (name)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v8 = toCopy;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteFloatField();
    v8 = toCopy;
  }
}

- (void)setHasConfidence:(BOOL)confidence
{
  if (confidence)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PEGASUSSchemaPEGASUSIntent;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PEGASUSSchemaPEGASUSIntent *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PEGASUSSchemaPEGASUSIntent *)self deleteLinkId];
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
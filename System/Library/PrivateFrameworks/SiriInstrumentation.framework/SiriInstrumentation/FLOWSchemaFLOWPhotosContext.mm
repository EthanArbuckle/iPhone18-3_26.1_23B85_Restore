@interface FLOWSchemaFLOWPhotosContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWPhotosContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWPhotosContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEntityType:(BOOL)type;
- (void)setHasFaceType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWPhotosContext

- (FLOWSchemaFLOWPhotosContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = FLOWSchemaFLOWPhotosContext;
  v5 = [(FLOWSchemaFLOWPhotosContext *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"taskType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhotosContext setTaskType:](v5, "setTaskType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"entityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhotosContext setEntityType:](v5, "setEntityType:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"faceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhotosContext setFaceType:](v5, "setFaceType:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWPhotosContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWPhotosContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWPhotosContext *)self dictionaryRepresentation];
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
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v8 = [(FLOWSchemaFLOWPhotosContext *)self faceType]- 1;
    if (v8 > 2)
    {
      v9 = @"FLOWPHOTOSFACETYPE_UNKNOWN";
    }

    else
    {
      v9 = off_1E78D60A0[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"faceType"];
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  entityType = [(FLOWSchemaFLOWPhotosContext *)self entityType];
  v6 = @"FLOWPHOTOSENTITYTYPE_UNKNOWN";
  if (entityType == 1)
  {
    v6 = @"FLOWPHOTOSENTITYTYPE_PHOTO";
  }

  if (entityType == 2)
  {
    v7 = @"FLOWPHOTOSENTITYTYPE_MEMORY";
  }

  else
  {
    v7 = v6;
  }

  [dictionary setObject:v7 forKeyedSubscript:@"entityType"];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (has)
  {
LABEL_15:
    v10 = [(FLOWSchemaFLOWPhotosContext *)self taskType]- 1;
    if (v10 > 2)
    {
      v11 = @"FLOWPHOTOSTASKTYPE_UNKNOWN";
    }

    else
    {
      v11 = off_1E78D60B8[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"taskType"];
  }

LABEL_19:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_taskType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_entityType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_faceType;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    taskType = self->_taskType;
    if (taskType != [equalCopy taskType])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    entityType = self->_entityType;
    if (entityType == [equalCopy entityType])
    {
      has = self->_has;
      v6 = equalCopy[20];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    faceType = self->_faceType;
    if (faceType != [equalCopy faceType])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasFaceType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEntityType:(BOOL)type
{
  if (type)
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
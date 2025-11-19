@interface FLOWSchemaFLOWPhotosContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWPhotosContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWPhotosContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEntityType:(BOOL)a3;
- (void)setHasFaceType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWPhotosContext

- (FLOWSchemaFLOWPhotosContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FLOWSchemaFLOWPhotosContext;
  v5 = [(FLOWSchemaFLOWPhotosContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"taskType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhotosContext setTaskType:](v5, "setTaskType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"entityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhotosContext setEntityType:](v5, "setEntityType:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"faceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhotosContext setFaceType:](v5, "setFaceType:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWPhotosContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWPhotosContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWPhotosContext *)self dictionaryRepresentation];
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

    [v3 setObject:v9 forKeyedSubscript:@"faceType"];
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v5 = [(FLOWSchemaFLOWPhotosContext *)self entityType];
  v6 = @"FLOWPHOTOSENTITYTYPE_UNKNOWN";
  if (v5 == 1)
  {
    v6 = @"FLOWPHOTOSENTITYTYPE_PHOTO";
  }

  if (v5 == 2)
  {
    v7 = @"FLOWPHOTOSENTITYTYPE_MEMORY";
  }

  else
  {
    v7 = v6;
  }

  [v3 setObject:v7 forKeyedSubscript:@"entityType"];
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

    [v3 setObject:v11 forKeyedSubscript:@"taskType"];
  }

LABEL_19:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    taskType = self->_taskType;
    if (taskType != [v4 taskType])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    entityType = self->_entityType;
    if (entityType == [v4 entityType])
    {
      has = self->_has;
      v6 = v4[20];
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
    if (faceType != [v4 faceType])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
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
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasFaceType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEntityType:(BOOL)a3
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
@interface FLOWSchemaFLOWProfileSwitchContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWProfileSwitchContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWProfileSwitchContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasProfileSwitchByNameType:(BOOL)a3;
- (void)setHasProfileSwitchDurationInMs:(BOOL)a3;
- (void)setHasProfileSwitchFailureReason:(BOOL)a3;
- (void)setHasProfileSwitchOutcome:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWProfileSwitchContext

- (FLOWSchemaFLOWProfileSwitchContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWProfileSwitchContext;
  v5 = [(FLOWSchemaFLOWProfileSwitchContext *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"profileSwitchMethod"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWProfileSwitchContext setProfileSwitchMethod:](v5, "setProfileSwitchMethod:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"profileSwitchByNameType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWProfileSwitchContext setProfileSwitchByNameType:](v5, "setProfileSwitchByNameType:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"profileSwitchOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWProfileSwitchContext setProfileSwitchOutcome:](v5, "setProfileSwitchOutcome:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"profileSwitchFailureReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWProfileSwitchContext setProfileSwitchFailureReason:](v5, "setProfileSwitchFailureReason:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"profileSwitchDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWProfileSwitchContext setProfileSwitchDurationInMs:](v5, "setProfileSwitchDurationInMs:", [v10 unsignedIntValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWProfileSwitchContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWProfileSwitchContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWProfileSwitchContext *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v9 = [(FLOWSchemaFLOWProfileSwitchContext *)self profileSwitchByNameType]- 1;
    if (v9 > 7)
    {
      v10 = @"FLOWPROFILESWITCHBYNAMETYPE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78D60D0[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"profileSwitchByNameType"];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWProfileSwitchContext profileSwitchDurationInMs](self, "profileSwitchDurationInMs")}];
  [v3 setObject:v11 forKeyedSubscript:@"profileSwitchDurationInMs"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_20:
  v12 = [(FLOWSchemaFLOWProfileSwitchContext *)self profileSwitchFailureReason]- 1;
  if (v12 > 3)
  {
    v13 = @"FLOWPROFILESWITCHFAILUREREASON_UNKNOWN";
  }

  else
  {
    v13 = off_1E78D6110[v12];
  }

  [v3 setObject:v13 forKeyedSubscript:@"profileSwitchFailureReason"];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

LABEL_24:
  v14 = [(FLOWSchemaFLOWProfileSwitchContext *)self profileSwitchMethod]- 1;
  if (v14 > 2)
  {
    v15 = @"FLOWPROFILESWITCHMETHOD_UNKNOWN";
  }

  else
  {
    v15 = off_1E78D6130[v14];
  }

  [v3 setObject:v15 forKeyedSubscript:@"profileSwitchMethod"];
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v5 = [(FLOWSchemaFLOWProfileSwitchContext *)self profileSwitchOutcome];
  v6 = @"FLOWPROFILESWITCHOUTCOME_UNKNOWN";
  if (v5 == 1)
  {
    v6 = @"FLOWPROFILESWITCHOUTCOME_SUCCESS";
  }

  if (v5 == 2)
  {
    v7 = @"FLOWPROFILESWITCHOUTCOME_FAILURE";
  }

  else
  {
    v7 = v6;
  }

  [v3 setObject:v7 forKeyedSubscript:@"profileSwitchOutcome"];
LABEL_12:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_profileSwitchMethod;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_profileSwitchByNameType;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_profileSwitchOutcome;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_profileSwitchFailureReason;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_profileSwitchDurationInMs;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = v4[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    profileSwitchMethod = self->_profileSwitchMethod;
    if (profileSwitchMethod != [v4 profileSwitchMethod])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[28];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    profileSwitchByNameType = self->_profileSwitchByNameType;
    if (profileSwitchByNameType != [v4 profileSwitchByNameType])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[28];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    profileSwitchOutcome = self->_profileSwitchOutcome;
    if (profileSwitchOutcome != [v4 profileSwitchOutcome])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[28];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v12)
  {
    profileSwitchFailureReason = self->_profileSwitchFailureReason;
    if (profileSwitchFailureReason == [v4 profileSwitchFailureReason])
    {
      has = self->_has;
      v6 = v4[28];
      goto LABEL_18;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_22;
  }

  if (v14)
  {
    profileSwitchDurationInMs = self->_profileSwitchDurationInMs;
    if (profileSwitchDurationInMs != [v4 profileSwitchDurationInMs])
    {
      goto LABEL_22;
    }
  }

  v16 = 1;
LABEL_23:

  return v16;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
}

- (void)setHasProfileSwitchDurationInMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasProfileSwitchFailureReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasProfileSwitchOutcome:(BOOL)a3
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

- (void)setHasProfileSwitchByNameType:(BOOL)a3
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
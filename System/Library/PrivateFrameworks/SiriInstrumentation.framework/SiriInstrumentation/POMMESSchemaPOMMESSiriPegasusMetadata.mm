@interface POMMESSchemaPOMMESSiriPegasusMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESSiriPegasusMetadata)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESSiriPegasusMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsCarplay:(BOOL)a3;
- (void)setHasIsExplicitContentAllowed:(BOOL)a3;
- (void)setHasIsInRestrictedSharingMode:(BOOL)a3;
- (void)setHasIsWebContentDisabled:(BOOL)a3;
- (void)setHasMovieRestriction:(BOOL)a3;
- (void)setHasTvRestriction:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESSiriPegasusMetadata

- (POMMESSchemaPOMMESSiriPegasusMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = POMMESSchemaPOMMESSiriPegasusMetadata;
  v5 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"interactionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setInteractionType:](v5, "setInteractionType:", [v6 intValue]);
    }

    v17 = v6;
    v7 = [v4 objectForKeyedSubscript:@"isCarplay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setIsCarplay:](v5, "setIsCarplay:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"movieRestriction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setMovieRestriction:](v5, "setMovieRestriction:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"tvRestriction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setTvRestriction:](v5, "setTvRestriction:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isInRestrictedSharingMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setIsInRestrictedSharingMode:](v5, "setIsInRestrictedSharingMode:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isExplicitContentAllowed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setIsExplicitContentAllowed:](v5, "setIsExplicitContentAllowed:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"isWebContentDisabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setIsWebContentDisabled:](v5, "setIsWebContentDisabled:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"deviceState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[POMMESSchemaPOMMESDeviceState alloc] initWithDictionary:v13];
      [(POMMESSchemaPOMMESSiriPegasusMetadata *)v5 setDeviceState:v14];
    }

    v15 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESSiriPegasusMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self dictionaryRepresentation];
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
  if (self->_deviceState)
  {
    v4 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"deviceState"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"deviceState"];
    }
  }

  has = self->_has;
  if (has)
  {
    v8 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self interactionType];
    v9 = @"POMMESSIRIPEGASUSCONTEXTINTERACTIONTYPE_UNKNOWN";
    if (v8 == 1)
    {
      v9 = @"POMMESSIRIPEGASUSCONTEXTINTERACTIONTYPE_DIALOG_DRIVEN";
    }

    if (v8 == 2)
    {
      v10 = @"POMMESSIRIPEGASUSCONTEXTINTERACTIONTYPE_DISPLAY_DRIVEN";
    }

    else
    {
      v10 = v9;
    }

    [v3 setObject:v10 forKeyedSubscript:@"interactionType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESSiriPegasusMetadata isCarplay](self, "isCarplay")}];
    [v3 setObject:v13 forKeyedSubscript:@"isCarplay"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_15:
      if ((has & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_15;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESSiriPegasusMetadata isExplicitContentAllowed](self, "isExplicitContentAllowed")}];
  [v3 setObject:v14 forKeyedSubscript:@"isExplicitContentAllowed"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESSiriPegasusMetadata isInRestrictedSharingMode](self, "isInRestrictedSharingMode")}];
  [v3 setObject:v15 forKeyedSubscript:@"isInRestrictedSharingMode"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_17:
    if ((has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESSiriPegasusMetadata isWebContentDisabled](self, "isWebContentDisabled")}];
  [v3 setObject:v16 forKeyedSubscript:@"isWebContentDisabled"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_18:
    if ((has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_27:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESSiriPegasusMetadata movieRestriction](self, "movieRestriction")}];
  [v3 setObject:v17 forKeyedSubscript:@"movieRestriction"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_19:
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESSiriPegasusMetadata tvRestriction](self, "tvRestriction")}];
    [v3 setObject:v11 forKeyedSubscript:@"tvRestriction"];
  }

LABEL_20:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_interactionType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_isCarplay;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_movieRestriction;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v9 = 2654435761 * self->_tvRestriction;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v10 = 2654435761 * self->_isInRestrictedSharingMode;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v11 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v12 = 0;
    return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(POMMESSchemaPOMMESDeviceState *)self->_deviceState hash:v3];
  }

LABEL_13:
  v10 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v11 = 2654435761 * self->_isExplicitContentAllowed;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v12 = 2654435761 * self->_isWebContentDisabled;
  return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(POMMESSchemaPOMMESDeviceState *)self->_deviceState hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = v4[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    interactionType = self->_interactionType;
    if (interactionType != [v4 interactionType])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      isCarplay = self->_isCarplay;
      if (isCarplay != [v4 isCarplay])
      {
        goto LABEL_34;
      }

      has = self->_has;
      v6 = v4[40];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        movieRestriction = self->_movieRestriction;
        if (movieRestriction != [v4 movieRestriction])
        {
          goto LABEL_34;
        }

        has = self->_has;
        v6 = v4[40];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          tvRestriction = self->_tvRestriction;
          if (tvRestriction != [v4 tvRestriction])
          {
            goto LABEL_34;
          }

          has = self->_has;
          v6 = v4[40];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (v14)
          {
            isInRestrictedSharingMode = self->_isInRestrictedSharingMode;
            if (isInRestrictedSharingMode != [v4 isInRestrictedSharingMode])
            {
              goto LABEL_34;
            }

            has = self->_has;
            v6 = v4[40];
          }

          v16 = (*&has >> 5) & 1;
          if (v16 == ((v6 >> 5) & 1))
          {
            if (v16)
            {
              isExplicitContentAllowed = self->_isExplicitContentAllowed;
              if (isExplicitContentAllowed != [v4 isExplicitContentAllowed])
              {
                goto LABEL_34;
              }

              has = self->_has;
              v6 = v4[40];
            }

            v18 = (*&has >> 6) & 1;
            if (v18 == ((v6 >> 6) & 1))
            {
              if (!v18 || (isWebContentDisabled = self->_isWebContentDisabled, isWebContentDisabled == [v4 isWebContentDisabled]))
              {
                v20 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState];
                v21 = [v4 deviceState];
                v22 = v21;
                if ((v20 != 0) != (v21 == 0))
                {
                  v23 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState];
                  if (!v23)
                  {

LABEL_37:
                    v28 = 1;
                    goto LABEL_35;
                  }

                  v24 = v23;
                  v25 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState];
                  v26 = [v4 deviceState];
                  v27 = [v25 isEqual:v26];

                  if (v27)
                  {
                    goto LABEL_37;
                  }
                }

                else
                {
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  v28 = 0;
LABEL_35:

  return v28;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
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

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
  v5 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState];

  v6 = v8;
  if (v5)
  {
    v7 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasIsWebContentDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsExplicitContentAllowed:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsInRestrictedSharingMode:(BOOL)a3
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

- (void)setHasTvRestriction:(BOOL)a3
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

- (void)setHasMovieRestriction:(BOOL)a3
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

- (void)setHasIsCarplay:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESSiriPegasusMetadata;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deleteDeviceState];
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
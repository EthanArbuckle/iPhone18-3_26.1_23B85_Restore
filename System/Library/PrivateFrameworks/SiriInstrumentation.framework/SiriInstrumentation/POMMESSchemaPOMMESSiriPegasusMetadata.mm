@interface POMMESSchemaPOMMESSiriPegasusMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESSiriPegasusMetadata)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESSiriPegasusMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsCarplay:(BOOL)carplay;
- (void)setHasIsExplicitContentAllowed:(BOOL)allowed;
- (void)setHasIsInRestrictedSharingMode:(BOOL)mode;
- (void)setHasIsWebContentDisabled:(BOOL)disabled;
- (void)setHasMovieRestriction:(BOOL)restriction;
- (void)setHasTvRestriction:(BOOL)restriction;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESSiriPegasusMetadata

- (POMMESSchemaPOMMESSiriPegasusMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = POMMESSchemaPOMMESSiriPegasusMetadata;
  v5 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"interactionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setInteractionType:](v5, "setInteractionType:", [v6 intValue]);
    }

    v17 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"isCarplay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setIsCarplay:](v5, "setIsCarplay:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"movieRestriction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setMovieRestriction:](v5, "setMovieRestriction:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"tvRestriction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setTvRestriction:](v5, "setTvRestriction:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isInRestrictedSharingMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setIsInRestrictedSharingMode:](v5, "setIsInRestrictedSharingMode:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isExplicitContentAllowed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setIsExplicitContentAllowed:](v5, "setIsExplicitContentAllowed:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isWebContentDisabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESSiriPegasusMetadata setIsWebContentDisabled:](v5, "setIsWebContentDisabled:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"deviceState"];
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

- (POMMESSchemaPOMMESSiriPegasusMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self dictionaryRepresentation];
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
  if (self->_deviceState)
  {
    deviceState = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState];
    dictionaryRepresentation = [deviceState dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"deviceState"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"deviceState"];
    }
  }

  has = self->_has;
  if (has)
  {
    interactionType = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self interactionType];
    v9 = @"POMMESSIRIPEGASUSCONTEXTINTERACTIONTYPE_UNKNOWN";
    if (interactionType == 1)
    {
      v9 = @"POMMESSIRIPEGASUSCONTEXTINTERACTIONTYPE_DIALOG_DRIVEN";
    }

    if (interactionType == 2)
    {
      v10 = @"POMMESSIRIPEGASUSCONTEXTINTERACTIONTYPE_DISPLAY_DRIVEN";
    }

    else
    {
      v10 = v9;
    }

    [dictionary setObject:v10 forKeyedSubscript:@"interactionType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESSiriPegasusMetadata isCarplay](self, "isCarplay")}];
    [dictionary setObject:v13 forKeyedSubscript:@"isCarplay"];

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
  [dictionary setObject:v14 forKeyedSubscript:@"isExplicitContentAllowed"];

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
  [dictionary setObject:v15 forKeyedSubscript:@"isInRestrictedSharingMode"];

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
  [dictionary setObject:v16 forKeyedSubscript:@"isWebContentDisabled"];

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
  [dictionary setObject:v17 forKeyedSubscript:@"movieRestriction"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_19:
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESSiriPegasusMetadata tvRestriction](self, "tvRestriction")}];
    [dictionary setObject:v11 forKeyedSubscript:@"tvRestriction"];
  }

LABEL_20:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = equalCopy[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    interactionType = self->_interactionType;
    if (interactionType != [equalCopy interactionType])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      isCarplay = self->_isCarplay;
      if (isCarplay != [equalCopy isCarplay])
      {
        goto LABEL_34;
      }

      has = self->_has;
      v6 = equalCopy[40];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        movieRestriction = self->_movieRestriction;
        if (movieRestriction != [equalCopy movieRestriction])
        {
          goto LABEL_34;
        }

        has = self->_has;
        v6 = equalCopy[40];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          tvRestriction = self->_tvRestriction;
          if (tvRestriction != [equalCopy tvRestriction])
          {
            goto LABEL_34;
          }

          has = self->_has;
          v6 = equalCopy[40];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (v14)
          {
            isInRestrictedSharingMode = self->_isInRestrictedSharingMode;
            if (isInRestrictedSharingMode != [equalCopy isInRestrictedSharingMode])
            {
              goto LABEL_34;
            }

            has = self->_has;
            v6 = equalCopy[40];
          }

          v16 = (*&has >> 5) & 1;
          if (v16 == ((v6 >> 5) & 1))
          {
            if (v16)
            {
              isExplicitContentAllowed = self->_isExplicitContentAllowed;
              if (isExplicitContentAllowed != [equalCopy isExplicitContentAllowed])
              {
                goto LABEL_34;
              }

              has = self->_has;
              v6 = equalCopy[40];
            }

            v18 = (*&has >> 6) & 1;
            if (v18 == ((v6 >> 6) & 1))
            {
              if (!v18 || (isWebContentDisabled = self->_isWebContentDisabled, isWebContentDisabled == [equalCopy isWebContentDisabled]))
              {
                deviceState = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState];
                deviceState2 = [equalCopy deviceState];
                v22 = deviceState2;
                if ((deviceState != 0) != (deviceState2 == 0))
                {
                  deviceState3 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState];
                  if (!deviceState3)
                  {

LABEL_37:
                    v28 = 1;
                    goto LABEL_35;
                  }

                  v24 = deviceState3;
                  deviceState4 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState];
                  deviceState5 = [equalCopy deviceState];
                  v27 = [deviceState4 isEqual:deviceState5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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
  deviceState = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState];

  v6 = toCopy;
  if (deviceState)
  {
    deviceState2 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasIsWebContentDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsExplicitContentAllowed:(BOOL)allowed
{
  if (allowed)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsInRestrictedSharingMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTvRestriction:(BOOL)restriction
{
  if (restriction)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMovieRestriction:(BOOL)restriction
{
  if (restriction)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsCarplay:(BOOL)carplay
{
  if (carplay)
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
  v9.super_class = POMMESSchemaPOMMESSiriPegasusMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(POMMESSchemaPOMMESSiriPegasusMetadata *)self deviceState:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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
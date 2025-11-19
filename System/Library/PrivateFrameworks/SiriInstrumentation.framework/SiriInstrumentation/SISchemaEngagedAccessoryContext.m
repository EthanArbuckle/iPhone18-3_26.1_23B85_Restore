@interface SISchemaEngagedAccessoryContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaEngagedAccessoryContext)initWithDictionary:(id)a3;
- (SISchemaEngagedAccessoryContext)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAudioPlaybackCapable:(BOOL)a3;
- (void)setHasIsThirdPartyMusicEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaEngagedAccessoryContext

- (SISchemaEngagedAccessoryContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SISchemaEngagedAccessoryContext;
  v5 = [(SISchemaEngagedAccessoryContext *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"accessoryId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaEngagedAccessoryContext *)v5 setAccessoryId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"homeKitAccessoryType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEngagedAccessoryContext setHomeKitAccessoryType:](v5, "setHomeKitAccessoryType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"accessoryBrand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SISchemaEngagedAccessoryContext *)v5 setAccessoryBrand:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"accessoryModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(SISchemaEngagedAccessoryContext *)v5 setAccessoryModel:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"isAudioPlaybackCapable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEngagedAccessoryContext setIsAudioPlaybackCapable:](v5, "setIsAudioPlaybackCapable:", [v13 BOOLValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"isThirdPartyMusicEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEngagedAccessoryContext setIsThirdPartyMusicEnabled:](v5, "setIsThirdPartyMusicEnabled:", [v14 BOOLValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (SISchemaEngagedAccessoryContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaEngagedAccessoryContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaEngagedAccessoryContext *)self dictionaryRepresentation];
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
  if (self->_accessoryBrand)
  {
    v4 = [(SISchemaEngagedAccessoryContext *)self accessoryBrand];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"accessoryBrand"];
  }

  if (self->_accessoryId)
  {
    v6 = [(SISchemaEngagedAccessoryContext *)self accessoryId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"accessoryId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"accessoryId"];
    }
  }

  if (self->_accessoryModel)
  {
    v9 = [(SISchemaEngagedAccessoryContext *)self accessoryModel];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"accessoryModel"];
  }

  v11 = *(&self->_isThirdPartyMusicEnabled + 1);
  if (v11)
  {
    v12 = [(SISchemaEngagedAccessoryContext *)self homeKitAccessoryType]- 1;
    if (v12 > 0x26)
    {
      v13 = @"HOMEKITACCESSORYTYPE_UNKNOWN_HOMEKIT_ACCESSORY_TYPE";
    }

    else
    {
      v13 = off_1E78E4AA0[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"homeKitAccessoryType"];
    v11 = *(&self->_isThirdPartyMusicEnabled + 1);
  }

  if ((v11 & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEngagedAccessoryContext isAudioPlaybackCapable](self, "isAudioPlaybackCapable")}];
    [v3 setObject:v14 forKeyedSubscript:@"isAudioPlaybackCapable"];

    v11 = *(&self->_isThirdPartyMusicEnabled + 1);
  }

  if ((v11 & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEngagedAccessoryContext isThirdPartyMusicEnabled](self, "isThirdPartyMusicEnabled")}];
    [v3 setObject:v15 forKeyedSubscript:@"isThirdPartyMusicEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_accessoryId hash];
  if (*(&self->_isThirdPartyMusicEnabled + 1))
  {
    v4 = 2654435761 * self->_homeKitAccessoryType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_accessoryBrand hash];
  v6 = [(NSString *)self->_accessoryModel hash];
  if ((*(&self->_isThirdPartyMusicEnabled + 1) & 2) != 0)
  {
    v7 = 2654435761 * self->_isAudioPlaybackCapable;
    if ((*(&self->_isThirdPartyMusicEnabled + 1) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*(&self->_isThirdPartyMusicEnabled + 1) & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = 2654435761 * self->_isThirdPartyMusicEnabled;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(SISchemaEngagedAccessoryContext *)self accessoryId];
  v6 = [v4 accessoryId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(SISchemaEngagedAccessoryContext *)self accessoryId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaEngagedAccessoryContext *)self accessoryId];
    v10 = [v4 accessoryId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if (*(&self->_isThirdPartyMusicEnabled + 1) != (v4[42] & 1))
  {
    goto LABEL_20;
  }

  if (*(&self->_isThirdPartyMusicEnabled + 1))
  {
    homeKitAccessoryType = self->_homeKitAccessoryType;
    if (homeKitAccessoryType != [v4 homeKitAccessoryType])
    {
      goto LABEL_20;
    }
  }

  v5 = [(SISchemaEngagedAccessoryContext *)self accessoryBrand];
  v6 = [v4 accessoryBrand];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(SISchemaEngagedAccessoryContext *)self accessoryBrand];
  if (v13)
  {
    v14 = v13;
    v15 = [(SISchemaEngagedAccessoryContext *)self accessoryBrand];
    v16 = [v4 accessoryBrand];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(SISchemaEngagedAccessoryContext *)self accessoryModel];
  v6 = [v4 accessoryModel];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  v18 = [(SISchemaEngagedAccessoryContext *)self accessoryModel];
  if (v18)
  {
    v19 = v18;
    v20 = [(SISchemaEngagedAccessoryContext *)self accessoryModel];
    v21 = [v4 accessoryModel];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v25 = *(&self->_isThirdPartyMusicEnabled + 1);
  v26 = (v25 >> 1) & 1;
  v27 = v4[42];
  if (v26 == ((v27 >> 1) & 1))
  {
    if (v26)
    {
      isAudioPlaybackCapable = self->_isAudioPlaybackCapable;
      if (isAudioPlaybackCapable != [v4 isAudioPlaybackCapable])
      {
        goto LABEL_20;
      }

      v25 = *(&self->_isThirdPartyMusicEnabled + 1);
      v27 = v4[42];
    }

    v29 = (v25 >> 2) & 1;
    if (v29 == ((v27 >> 2) & 1))
    {
      if (!v29 || (isThirdPartyMusicEnabled = self->_isThirdPartyMusicEnabled, isThirdPartyMusicEnabled == [v4 isThirdPartyMusicEnabled]))
      {
        v23 = 1;
        goto LABEL_21;
      }
    }
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(SISchemaEngagedAccessoryContext *)self accessoryId];

  if (v4)
  {
    v5 = [(SISchemaEngagedAccessoryContext *)self accessoryId];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isThirdPartyMusicEnabled + 1))
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(SISchemaEngagedAccessoryContext *)self accessoryBrand];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(SISchemaEngagedAccessoryContext *)self accessoryModel];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = *(&self->_isThirdPartyMusicEnabled + 1);
  v9 = v10;
  if ((v8 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v9 = v10;
    v8 = *(&self->_isThirdPartyMusicEnabled + 1);
  }

  if ((v8 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v9 = v10;
  }
}

- (void)setHasIsThirdPartyMusicEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isThirdPartyMusicEnabled + 1) = *(&self->_isThirdPartyMusicEnabled + 1) & 0xFB | v3;
}

- (void)setHasIsAudioPlaybackCapable:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isThirdPartyMusicEnabled + 1) = *(&self->_isThirdPartyMusicEnabled + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaEngagedAccessoryContext;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaEngagedAccessoryContext *)self accessoryId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaEngagedAccessoryContext *)self deleteAccessoryId];
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
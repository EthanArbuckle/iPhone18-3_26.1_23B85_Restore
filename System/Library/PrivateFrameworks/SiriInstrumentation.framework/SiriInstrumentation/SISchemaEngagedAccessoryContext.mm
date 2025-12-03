@interface SISchemaEngagedAccessoryContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaEngagedAccessoryContext)initWithDictionary:(id)dictionary;
- (SISchemaEngagedAccessoryContext)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAudioPlaybackCapable:(BOOL)capable;
- (void)setHasIsThirdPartyMusicEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation SISchemaEngagedAccessoryContext

- (SISchemaEngagedAccessoryContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = SISchemaEngagedAccessoryContext;
  v5 = [(SISchemaEngagedAccessoryContext *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"accessoryId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaEngagedAccessoryContext *)v5 setAccessoryId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"homeKitAccessoryType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEngagedAccessoryContext setHomeKitAccessoryType:](v5, "setHomeKitAccessoryType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"accessoryBrand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SISchemaEngagedAccessoryContext *)v5 setAccessoryBrand:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"accessoryModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(SISchemaEngagedAccessoryContext *)v5 setAccessoryModel:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isAudioPlaybackCapable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEngagedAccessoryContext setIsAudioPlaybackCapable:](v5, "setIsAudioPlaybackCapable:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"isThirdPartyMusicEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaEngagedAccessoryContext setIsThirdPartyMusicEnabled:](v5, "setIsThirdPartyMusicEnabled:", [v14 BOOLValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (SISchemaEngagedAccessoryContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaEngagedAccessoryContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaEngagedAccessoryContext *)self dictionaryRepresentation];
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
  if (self->_accessoryBrand)
  {
    accessoryBrand = [(SISchemaEngagedAccessoryContext *)self accessoryBrand];
    v5 = [accessoryBrand copy];
    [dictionary setObject:v5 forKeyedSubscript:@"accessoryBrand"];
  }

  if (self->_accessoryId)
  {
    accessoryId = [(SISchemaEngagedAccessoryContext *)self accessoryId];
    dictionaryRepresentation = [accessoryId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"accessoryId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"accessoryId"];
    }
  }

  if (self->_accessoryModel)
  {
    accessoryModel = [(SISchemaEngagedAccessoryContext *)self accessoryModel];
    v10 = [accessoryModel copy];
    [dictionary setObject:v10 forKeyedSubscript:@"accessoryModel"];
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

    [dictionary setObject:v13 forKeyedSubscript:@"homeKitAccessoryType"];
    v11 = *(&self->_isThirdPartyMusicEnabled + 1);
  }

  if ((v11 & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEngagedAccessoryContext isAudioPlaybackCapable](self, "isAudioPlaybackCapable")}];
    [dictionary setObject:v14 forKeyedSubscript:@"isAudioPlaybackCapable"];

    v11 = *(&self->_isThirdPartyMusicEnabled + 1);
  }

  if ((v11 & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaEngagedAccessoryContext isThirdPartyMusicEnabled](self, "isThirdPartyMusicEnabled")}];
    [dictionary setObject:v15 forKeyedSubscript:@"isThirdPartyMusicEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  accessoryId = [(SISchemaEngagedAccessoryContext *)self accessoryId];
  accessoryId2 = [equalCopy accessoryId];
  if ((accessoryId != 0) == (accessoryId2 == 0))
  {
    goto LABEL_19;
  }

  accessoryId3 = [(SISchemaEngagedAccessoryContext *)self accessoryId];
  if (accessoryId3)
  {
    v8 = accessoryId3;
    accessoryId4 = [(SISchemaEngagedAccessoryContext *)self accessoryId];
    accessoryId5 = [equalCopy accessoryId];
    v11 = [accessoryId4 isEqual:accessoryId5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if (*(&self->_isThirdPartyMusicEnabled + 1) != (equalCopy[42] & 1))
  {
    goto LABEL_20;
  }

  if (*(&self->_isThirdPartyMusicEnabled + 1))
  {
    homeKitAccessoryType = self->_homeKitAccessoryType;
    if (homeKitAccessoryType != [equalCopy homeKitAccessoryType])
    {
      goto LABEL_20;
    }
  }

  accessoryId = [(SISchemaEngagedAccessoryContext *)self accessoryBrand];
  accessoryId2 = [equalCopy accessoryBrand];
  if ((accessoryId != 0) == (accessoryId2 == 0))
  {
    goto LABEL_19;
  }

  accessoryBrand = [(SISchemaEngagedAccessoryContext *)self accessoryBrand];
  if (accessoryBrand)
  {
    v14 = accessoryBrand;
    accessoryBrand2 = [(SISchemaEngagedAccessoryContext *)self accessoryBrand];
    accessoryBrand3 = [equalCopy accessoryBrand];
    v17 = [accessoryBrand2 isEqual:accessoryBrand3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  accessoryId = [(SISchemaEngagedAccessoryContext *)self accessoryModel];
  accessoryId2 = [equalCopy accessoryModel];
  if ((accessoryId != 0) == (accessoryId2 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  accessoryModel = [(SISchemaEngagedAccessoryContext *)self accessoryModel];
  if (accessoryModel)
  {
    v19 = accessoryModel;
    accessoryModel2 = [(SISchemaEngagedAccessoryContext *)self accessoryModel];
    accessoryModel3 = [equalCopy accessoryModel];
    v22 = [accessoryModel2 isEqual:accessoryModel3];

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
  v27 = equalCopy[42];
  if (v26 == ((v27 >> 1) & 1))
  {
    if (v26)
    {
      isAudioPlaybackCapable = self->_isAudioPlaybackCapable;
      if (isAudioPlaybackCapable != [equalCopy isAudioPlaybackCapable])
      {
        goto LABEL_20;
      }

      v25 = *(&self->_isThirdPartyMusicEnabled + 1);
      v27 = equalCopy[42];
    }

    v29 = (v25 >> 2) & 1;
    if (v29 == ((v27 >> 2) & 1))
    {
      if (!v29 || (isThirdPartyMusicEnabled = self->_isThirdPartyMusicEnabled, isThirdPartyMusicEnabled == [equalCopy isThirdPartyMusicEnabled]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  accessoryId = [(SISchemaEngagedAccessoryContext *)self accessoryId];

  if (accessoryId)
  {
    accessoryId2 = [(SISchemaEngagedAccessoryContext *)self accessoryId];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isThirdPartyMusicEnabled + 1))
  {
    PBDataWriterWriteInt32Field();
  }

  accessoryBrand = [(SISchemaEngagedAccessoryContext *)self accessoryBrand];

  if (accessoryBrand)
  {
    PBDataWriterWriteStringField();
  }

  accessoryModel = [(SISchemaEngagedAccessoryContext *)self accessoryModel];

  if (accessoryModel)
  {
    PBDataWriterWriteStringField();
  }

  v8 = *(&self->_isThirdPartyMusicEnabled + 1);
  v9 = toCopy;
  if ((v8 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v9 = toCopy;
    v8 = *(&self->_isThirdPartyMusicEnabled + 1);
  }

  if ((v8 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v9 = toCopy;
  }
}

- (void)setHasIsThirdPartyMusicEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isThirdPartyMusicEnabled + 1) = *(&self->_isThirdPartyMusicEnabled + 1) & 0xFB | v3;
}

- (void)setHasIsAudioPlaybackCapable:(BOOL)capable
{
  if (capable)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isThirdPartyMusicEnabled + 1) = *(&self->_isThirdPartyMusicEnabled + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaEngagedAccessoryContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaEngagedAccessoryContext *)self accessoryId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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
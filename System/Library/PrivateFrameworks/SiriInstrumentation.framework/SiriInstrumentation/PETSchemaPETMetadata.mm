@interface PETSchemaPETMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PETSchemaPETMetadata)initWithDictionary:(id)dictionary;
- (PETSchemaPETMetadata)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConfig_version:(BOOL)config_version;
- (void)setHasIs_config_enabled:(BOOL)is_config_enabled;
- (void)setHasIs_gm:(BOOL)is_gm;
- (void)setHasIs_internal:(BOOL)is_internal;
- (void)setHasIs_internal_carry:(BOOL)is_internal_carry;
- (void)setHasIs_seed:(BOOL)is_seed;
- (void)setHasIs_testing_data:(BOOL)is_testing_data;
- (void)setHasIs_trial_upload:(BOOL)is_trial_upload;
- (void)writeTo:(id)to;
@end

@implementation PETSchemaPETMetadata

- (PETSchemaPETMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v42.receiver = self;
  v42.super_class = PETSchemaPETMetadata;
  v5 = [(PETSchemaPETMetadata *)&v42 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"uploadTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setUpload_time:](v5, "setUpload_time:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"platform"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(PETSchemaPETMetadata *)v5 setPlatform:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"device"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PETSchemaPETMetadata *)v5 setDevice:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"build"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(PETSchemaPETMetadata *)v5 setBuild:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isInternal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_internal:](v5, "setIs_internal:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"isSeed"];
    objc_opt_class();
    v41 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_seed:](v5, "setIs_seed:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"isGm"];
    objc_opt_class();
    v40 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_gm:](v5, "setIs_gm:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"country"];
    objc_opt_class();
    v39 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(PETSchemaPETMetadata *)v5 setCountry:v17];
    }

    v38 = v6;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"language"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(PETSchemaPETMetadata *)v5 setLanguage:v19];
    }

    v33 = v18;
    v37 = v7;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"configVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setConfig_version:](v5, "setConfig_version:", [v20 unsignedIntValue]);
    }

    v36 = v9;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"pseudoDeviceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(PETSchemaPETMetadata *)v5 setPseudo_device_id:v22];
    }

    v35 = v11;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"isInternalCarry"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_internal_carry:](v5, "setIs_internal_carry:", [v23 BOOLValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"isConfigEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_config_enabled:](v5, "setIs_config_enabled:", [v24 BOOLValue]);
    }

    v34 = v13;
    v25 = [dictionaryCopy objectForKeyedSubscript:@"messageGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v25 copy];
      [(PETSchemaPETMetadata *)v5 setMessage_group:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"msgType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 copy];
      [(PETSchemaPETMetadata *)v5 setMsg_type:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"isTestingData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_testing_data:](v5, "setIs_testing_data:", [v29 BOOLValue]);
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"isTrialUpload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_trial_upload:](v5, "setIs_trial_upload:", [v30 BOOLValue]);
    }

    v31 = v5;
  }

  return v5;
}

- (PETSchemaPETMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PETSchemaPETMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PETSchemaPETMetadata *)self dictionaryRepresentation];
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
  if (self->_build)
  {
    build = [(PETSchemaPETMetadata *)self build];
    v5 = [build copy];
    [dictionary setObject:v5 forKeyedSubscript:@"build"];
  }

  if ((*(&self->_is_trial_upload + 1) & 0x10) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PETSchemaPETMetadata config_version](self, "config_version")}];
    [dictionary setObject:v6 forKeyedSubscript:@"configVersion"];
  }

  if (self->_country)
  {
    country = [(PETSchemaPETMetadata *)self country];
    v8 = [country copy];
    [dictionary setObject:v8 forKeyedSubscript:@"country"];
  }

  if (self->_device)
  {
    device = [(PETSchemaPETMetadata *)self device];
    v10 = [device copy];
    [dictionary setObject:v10 forKeyedSubscript:@"device"];
  }

  v11 = *(&self->_is_trial_upload + 1);
  if ((v11 & 0x40) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[PETSchemaPETMetadata is_config_enabled](self, "is_config_enabled")}];
    [dictionary setObject:v25 forKeyedSubscript:@"isConfigEnabled"];

    v11 = *(&self->_is_trial_upload + 1);
    if ((v11 & 8) == 0)
    {
LABEL_11:
      if ((v11 & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }
  }

  else if ((v11 & 8) == 0)
  {
    goto LABEL_11;
  }

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[PETSchemaPETMetadata is_gm](self, "is_gm")}];
  [dictionary setObject:v26 forKeyedSubscript:@"isGm"];

  v11 = *(&self->_is_trial_upload + 1);
  if ((v11 & 2) == 0)
  {
LABEL_12:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[PETSchemaPETMetadata is_internal](self, "is_internal")}];
  [dictionary setObject:v27 forKeyedSubscript:@"isInternal"];

  v11 = *(&self->_is_trial_upload + 1);
  if ((v11 & 0x20) == 0)
  {
LABEL_13:
    if ((v11 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[PETSchemaPETMetadata is_internal_carry](self, "is_internal_carry")}];
  [dictionary setObject:v28 forKeyedSubscript:@"isInternalCarry"];

  v11 = *(&self->_is_trial_upload + 1);
  if ((v11 & 4) == 0)
  {
LABEL_14:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[PETSchemaPETMetadata is_seed](self, "is_seed")}];
  [dictionary setObject:v29 forKeyedSubscript:@"isSeed"];

  v11 = *(&self->_is_trial_upload + 1);
  if ((v11 & 0x80) == 0)
  {
LABEL_15:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_37:
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[PETSchemaPETMetadata is_testing_data](self, "is_testing_data")}];
  [dictionary setObject:v30 forKeyedSubscript:@"isTestingData"];

  if ((*(&self->_is_trial_upload + 1) & 0x100) != 0)
  {
LABEL_16:
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PETSchemaPETMetadata is_trial_upload](self, "is_trial_upload")}];
    [dictionary setObject:v12 forKeyedSubscript:@"isTrialUpload"];
  }

LABEL_17:
  if (self->_language)
  {
    language = [(PETSchemaPETMetadata *)self language];
    v14 = [language copy];
    [dictionary setObject:v14 forKeyedSubscript:@"language"];
  }

  if (self->_message_group)
  {
    message_group = [(PETSchemaPETMetadata *)self message_group];
    v16 = [message_group copy];
    [dictionary setObject:v16 forKeyedSubscript:@"messageGroup"];
  }

  if (self->_msg_type)
  {
    msg_type = [(PETSchemaPETMetadata *)self msg_type];
    v18 = [msg_type copy];
    [dictionary setObject:v18 forKeyedSubscript:@"msgType"];
  }

  if (self->_platform)
  {
    platform = [(PETSchemaPETMetadata *)self platform];
    v20 = [platform copy];
    [dictionary setObject:v20 forKeyedSubscript:@"platform"];
  }

  if (self->_pseudo_device_id)
  {
    pseudo_device_id = [(PETSchemaPETMetadata *)self pseudo_device_id];
    v22 = [pseudo_device_id copy];
    [dictionary setObject:v22 forKeyedSubscript:@"pseudoDeviceId"];
  }

  if (*(&self->_is_trial_upload + 1))
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PETSchemaPETMetadata upload_time](self, "upload_time")}];
    [dictionary setObject:v23 forKeyedSubscript:@"uploadTime"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_is_trial_upload + 1))
  {
    v22 = 2654435761u * self->_upload_time;
  }

  else
  {
    v22 = 0;
  }

  v21 = [(NSString *)self->_platform hash];
  v20 = [(NSString *)self->_device hash];
  v19 = [(NSString *)self->_build hash];
  v3 = *(&self->_is_trial_upload + 1);
  if ((v3 & 2) == 0)
  {
    v18 = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v17 = 0;
    if ((v3 & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v18 = 2654435761 * self->_is_internal;
  if ((v3 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v17 = 2654435761 * self->_is_seed;
  if ((v3 & 8) != 0)
  {
LABEL_7:
    v16 = 2654435761 * self->_is_gm;
    goto LABEL_11;
  }

LABEL_10:
  v16 = 0;
LABEL_11:
  v4 = [(NSString *)self->_country hash];
  v5 = [(NSString *)self->_language hash];
  if ((*(&self->_is_trial_upload + 1) & 0x10) != 0)
  {
    v6 = 2654435761 * self->_config_version;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_pseudo_device_id hash];
  v8 = *(&self->_is_trial_upload + 1);
  if ((v8 & 0x20) != 0)
  {
    v9 = 2654435761 * self->_is_internal_carry;
    if ((v8 & 0x40) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    if ((v8 & 0x40) != 0)
    {
LABEL_16:
      v10 = 2654435761 * self->_is_config_enabled;
      goto LABEL_19;
    }
  }

  v10 = 0;
LABEL_19:
  v11 = [(NSString *)self->_message_group hash];
  v12 = [(NSString *)self->_msg_type hash];
  if ((*(&self->_is_trial_upload + 1) & 0x80) != 0)
  {
    v13 = 2654435761 * self->_is_testing_data;
    if ((*(&self->_is_trial_upload + 1) & 0x100) != 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    v14 = 0;
    return v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

  v13 = 0;
  if ((*(&self->_is_trial_upload + 1) & 0x100) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  v14 = 2654435761 * self->_is_trial_upload;
  return v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  if ((*(&self->_is_trial_upload + 1) & 1) != (equalCopy[53] & 1))
  {
    goto LABEL_66;
  }

  if (*(&self->_is_trial_upload + 1))
  {
    upload_time = self->_upload_time;
    if (upload_time != [equalCopy upload_time])
    {
      goto LABEL_66;
    }
  }

  platform = [(PETSchemaPETMetadata *)self platform];
  platform2 = [equalCopy platform];
  if ((platform != 0) == (platform2 == 0))
  {
    goto LABEL_65;
  }

  platform3 = [(PETSchemaPETMetadata *)self platform];
  if (platform3)
  {
    v9 = platform3;
    platform4 = [(PETSchemaPETMetadata *)self platform];
    platform5 = [equalCopy platform];
    v12 = [platform4 isEqual:platform5];

    if (!v12)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  platform = [(PETSchemaPETMetadata *)self device];
  platform2 = [equalCopy device];
  if ((platform != 0) == (platform2 == 0))
  {
    goto LABEL_65;
  }

  device = [(PETSchemaPETMetadata *)self device];
  if (device)
  {
    v14 = device;
    device2 = [(PETSchemaPETMetadata *)self device];
    device3 = [equalCopy device];
    v17 = [device2 isEqual:device3];

    if (!v17)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  platform = [(PETSchemaPETMetadata *)self build];
  platform2 = [equalCopy build];
  if ((platform != 0) == (platform2 == 0))
  {
    goto LABEL_65;
  }

  build = [(PETSchemaPETMetadata *)self build];
  if (build)
  {
    v19 = build;
    build2 = [(PETSchemaPETMetadata *)self build];
    build3 = [equalCopy build];
    v22 = [build2 isEqual:build3];

    if (!v22)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  v23 = *(&self->_is_trial_upload + 1);
  v24 = (v23 >> 1) & 1;
  v25 = equalCopy[53];
  if (v24 != ((v25 >> 1) & 1))
  {
    goto LABEL_66;
  }

  if (v24)
  {
    is_internal = self->_is_internal;
    if (is_internal != [equalCopy is_internal])
    {
      goto LABEL_66;
    }

    v23 = *(&self->_is_trial_upload + 1);
    v25 = equalCopy[53];
  }

  v27 = (v23 >> 2) & 1;
  if (v27 != ((v25 >> 2) & 1))
  {
    goto LABEL_66;
  }

  if (v27)
  {
    is_seed = self->_is_seed;
    if (is_seed != [equalCopy is_seed])
    {
      goto LABEL_66;
    }

    v23 = *(&self->_is_trial_upload + 1);
    v25 = equalCopy[53];
  }

  v29 = (v23 >> 3) & 1;
  if (v29 != ((v25 >> 3) & 1))
  {
    goto LABEL_66;
  }

  if (v29)
  {
    is_gm = self->_is_gm;
    if (is_gm != [equalCopy is_gm])
    {
      goto LABEL_66;
    }
  }

  platform = [(PETSchemaPETMetadata *)self country];
  platform2 = [equalCopy country];
  if ((platform != 0) == (platform2 == 0))
  {
    goto LABEL_65;
  }

  country = [(PETSchemaPETMetadata *)self country];
  if (country)
  {
    v32 = country;
    country2 = [(PETSchemaPETMetadata *)self country];
    country3 = [equalCopy country];
    v35 = [country2 isEqual:country3];

    if (!v35)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  platform = [(PETSchemaPETMetadata *)self language];
  platform2 = [equalCopy language];
  if ((platform != 0) == (platform2 == 0))
  {
    goto LABEL_65;
  }

  language = [(PETSchemaPETMetadata *)self language];
  if (language)
  {
    v37 = language;
    language2 = [(PETSchemaPETMetadata *)self language];
    language3 = [equalCopy language];
    v40 = [language2 isEqual:language3];

    if (!v40)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  v41 = (*(&self->_is_trial_upload + 1) >> 4) & 1;
  if (v41 != ((equalCopy[53] >> 4) & 1))
  {
    goto LABEL_66;
  }

  if (v41)
  {
    config_version = self->_config_version;
    if (config_version != [equalCopy config_version])
    {
      goto LABEL_66;
    }
  }

  platform = [(PETSchemaPETMetadata *)self pseudo_device_id];
  platform2 = [equalCopy pseudo_device_id];
  if ((platform != 0) == (platform2 == 0))
  {
    goto LABEL_65;
  }

  pseudo_device_id = [(PETSchemaPETMetadata *)self pseudo_device_id];
  if (pseudo_device_id)
  {
    v44 = pseudo_device_id;
    pseudo_device_id2 = [(PETSchemaPETMetadata *)self pseudo_device_id];
    pseudo_device_id3 = [equalCopy pseudo_device_id];
    v47 = [pseudo_device_id2 isEqual:pseudo_device_id3];

    if (!v47)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  v48 = *(&self->_is_trial_upload + 1);
  v49 = (v48 >> 5) & 1;
  v50 = equalCopy[53];
  if (v49 != ((v50 >> 5) & 1))
  {
    goto LABEL_66;
  }

  if (v49)
  {
    is_internal_carry = self->_is_internal_carry;
    if (is_internal_carry != [equalCopy is_internal_carry])
    {
      goto LABEL_66;
    }

    v48 = *(&self->_is_trial_upload + 1);
    v50 = equalCopy[53];
  }

  v52 = (v48 >> 6) & 1;
  if (v52 != ((v50 >> 6) & 1))
  {
    goto LABEL_66;
  }

  if (v52)
  {
    is_config_enabled = self->_is_config_enabled;
    if (is_config_enabled != [equalCopy is_config_enabled])
    {
      goto LABEL_66;
    }
  }

  platform = [(PETSchemaPETMetadata *)self message_group];
  platform2 = [equalCopy message_group];
  if ((platform != 0) == (platform2 == 0))
  {
    goto LABEL_65;
  }

  message_group = [(PETSchemaPETMetadata *)self message_group];
  if (message_group)
  {
    v55 = message_group;
    message_group2 = [(PETSchemaPETMetadata *)self message_group];
    message_group3 = [equalCopy message_group];
    v58 = [message_group2 isEqual:message_group3];

    if (!v58)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  platform = [(PETSchemaPETMetadata *)self msg_type];
  platform2 = [equalCopy msg_type];
  if ((platform != 0) == (platform2 == 0))
  {
LABEL_65:

    goto LABEL_66;
  }

  msg_type = [(PETSchemaPETMetadata *)self msg_type];
  if (msg_type)
  {
    v60 = msg_type;
    msg_type2 = [(PETSchemaPETMetadata *)self msg_type];
    msg_type3 = [equalCopy msg_type];
    v63 = [msg_type2 isEqual:msg_type3];

    if (!v63)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  v66 = *(&self->_is_trial_upload + 1);
  v67 = (v66 >> 7) & 1;
  v68 = equalCopy[53];
  if (v67 == ((v68 >> 7) & 1))
  {
    if (v67)
    {
      is_testing_data = self->_is_testing_data;
      if (is_testing_data != [equalCopy is_testing_data])
      {
        goto LABEL_66;
      }

      v66 = *(&self->_is_trial_upload + 1);
      v68 = equalCopy[53];
    }

    v70 = (v66 >> 8) & 1;
    if (v70 == ((v68 >> 8) & 1))
    {
      if (!v70 || (is_trial_upload = self->_is_trial_upload, is_trial_upload == [equalCopy is_trial_upload]))
      {
        v64 = 1;
        goto LABEL_67;
      }
    }
  }

LABEL_66:
  v64 = 0;
LABEL_67:

  return v64;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*(&self->_is_trial_upload + 1))
  {
    PBDataWriterWriteUint64Field();
  }

  platform = [(PETSchemaPETMetadata *)self platform];

  if (platform)
  {
    PBDataWriterWriteStringField();
  }

  device = [(PETSchemaPETMetadata *)self device];

  if (device)
  {
    PBDataWriterWriteStringField();
  }

  build = [(PETSchemaPETMetadata *)self build];

  if (build)
  {
    PBDataWriterWriteStringField();
  }

  v7 = *(&self->_is_trial_upload + 1);
  if ((v7 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = *(&self->_is_trial_upload + 1);
    if ((v7 & 4) == 0)
    {
LABEL_11:
      if ((v7 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteBOOLField();
  if ((*(&self->_is_trial_upload + 1) & 8) != 0)
  {
LABEL_12:
    PBDataWriterWriteBOOLField();
  }

LABEL_13:
  country = [(PETSchemaPETMetadata *)self country];

  if (country)
  {
    PBDataWriterWriteStringField();
  }

  language = [(PETSchemaPETMetadata *)self language];

  if (language)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_is_trial_upload + 1) & 0x10) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  pseudo_device_id = [(PETSchemaPETMetadata *)self pseudo_device_id];

  if (pseudo_device_id)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *(&self->_is_trial_upload + 1);
  if ((v11 & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
    v11 = *(&self->_is_trial_upload + 1);
  }

  if ((v11 & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  message_group = [(PETSchemaPETMetadata *)self message_group];

  if (message_group)
  {
    PBDataWriterWriteStringField();
  }

  msg_type = [(PETSchemaPETMetadata *)self msg_type];

  if (msg_type)
  {
    PBDataWriterWriteStringField();
  }

  v14 = *(&self->_is_trial_upload + 1);
  if ((v14 & 0x80) != 0)
  {
    PBDataWriterWriteBOOLField();
    v14 = *(&self->_is_trial_upload + 1);
  }

  if ((v14 & 0x100) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIs_trial_upload:(BOOL)is_trial_upload
{
  if (is_trial_upload)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFEFF | v3;
}

- (void)setHasIs_testing_data:(BOOL)is_testing_data
{
  if (is_testing_data)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFF7F | v3;
}

- (void)setHasIs_config_enabled:(BOOL)is_config_enabled
{
  if (is_config_enabled)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFFBF | v3;
}

- (void)setHasIs_internal_carry:(BOOL)is_internal_carry
{
  if (is_internal_carry)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFFDF | v3;
}

- (void)setHasConfig_version:(BOOL)config_version
{
  if (config_version)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFFEF | v3;
}

- (void)setHasIs_gm:(BOOL)is_gm
{
  if (is_gm)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFFF7 | v3;
}

- (void)setHasIs_seed:(BOOL)is_seed
{
  if (is_seed)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFFFB | v3;
}

- (void)setHasIs_internal:(BOOL)is_internal
{
  if (is_internal)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
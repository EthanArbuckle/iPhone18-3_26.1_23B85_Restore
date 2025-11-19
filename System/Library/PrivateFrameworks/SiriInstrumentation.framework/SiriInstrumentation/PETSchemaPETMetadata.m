@interface PETSchemaPETMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PETSchemaPETMetadata)initWithDictionary:(id)a3;
- (PETSchemaPETMetadata)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConfig_version:(BOOL)a3;
- (void)setHasIs_config_enabled:(BOOL)a3;
- (void)setHasIs_gm:(BOOL)a3;
- (void)setHasIs_internal:(BOOL)a3;
- (void)setHasIs_internal_carry:(BOOL)a3;
- (void)setHasIs_seed:(BOOL)a3;
- (void)setHasIs_testing_data:(BOOL)a3;
- (void)setHasIs_trial_upload:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PETSchemaPETMetadata

- (PETSchemaPETMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = PETSchemaPETMetadata;
  v5 = [(PETSchemaPETMetadata *)&v42 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"uploadTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setUpload_time:](v5, "setUpload_time:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"platform"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(PETSchemaPETMetadata *)v5 setPlatform:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"device"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PETSchemaPETMetadata *)v5 setDevice:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"build"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(PETSchemaPETMetadata *)v5 setBuild:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"isInternal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_internal:](v5, "setIs_internal:", [v13 BOOLValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"isSeed"];
    objc_opt_class();
    v41 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_seed:](v5, "setIs_seed:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"isGm"];
    objc_opt_class();
    v40 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_gm:](v5, "setIs_gm:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"country"];
    objc_opt_class();
    v39 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(PETSchemaPETMetadata *)v5 setCountry:v17];
    }

    v38 = v6;
    v18 = [v4 objectForKeyedSubscript:@"language"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(PETSchemaPETMetadata *)v5 setLanguage:v19];
    }

    v33 = v18;
    v37 = v7;
    v20 = [v4 objectForKeyedSubscript:@"configVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setConfig_version:](v5, "setConfig_version:", [v20 unsignedIntValue]);
    }

    v36 = v9;
    v21 = [v4 objectForKeyedSubscript:@"pseudoDeviceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(PETSchemaPETMetadata *)v5 setPseudo_device_id:v22];
    }

    v35 = v11;
    v23 = [v4 objectForKeyedSubscript:@"isInternalCarry"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_internal_carry:](v5, "setIs_internal_carry:", [v23 BOOLValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"isConfigEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_config_enabled:](v5, "setIs_config_enabled:", [v24 BOOLValue]);
    }

    v34 = v13;
    v25 = [v4 objectForKeyedSubscript:@"messageGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v25 copy];
      [(PETSchemaPETMetadata *)v5 setMessage_group:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"msgType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 copy];
      [(PETSchemaPETMetadata *)v5 setMsg_type:v28];
    }

    v29 = [v4 objectForKeyedSubscript:@"isTestingData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_testing_data:](v5, "setIs_testing_data:", [v29 BOOLValue]);
    }

    v30 = [v4 objectForKeyedSubscript:@"isTrialUpload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETMetadata setIs_trial_upload:](v5, "setIs_trial_upload:", [v30 BOOLValue]);
    }

    v31 = v5;
  }

  return v5;
}

- (PETSchemaPETMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PETSchemaPETMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PETSchemaPETMetadata *)self dictionaryRepresentation];
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
  if (self->_build)
  {
    v4 = [(PETSchemaPETMetadata *)self build];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"build"];
  }

  if ((*(&self->_is_trial_upload + 1) & 0x10) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PETSchemaPETMetadata config_version](self, "config_version")}];
    [v3 setObject:v6 forKeyedSubscript:@"configVersion"];
  }

  if (self->_country)
  {
    v7 = [(PETSchemaPETMetadata *)self country];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"country"];
  }

  if (self->_device)
  {
    v9 = [(PETSchemaPETMetadata *)self device];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"device"];
  }

  v11 = *(&self->_is_trial_upload + 1);
  if ((v11 & 0x40) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[PETSchemaPETMetadata is_config_enabled](self, "is_config_enabled")}];
    [v3 setObject:v25 forKeyedSubscript:@"isConfigEnabled"];

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
  [v3 setObject:v26 forKeyedSubscript:@"isGm"];

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
  [v3 setObject:v27 forKeyedSubscript:@"isInternal"];

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
  [v3 setObject:v28 forKeyedSubscript:@"isInternalCarry"];

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
  [v3 setObject:v29 forKeyedSubscript:@"isSeed"];

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
  [v3 setObject:v30 forKeyedSubscript:@"isTestingData"];

  if ((*(&self->_is_trial_upload + 1) & 0x100) != 0)
  {
LABEL_16:
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PETSchemaPETMetadata is_trial_upload](self, "is_trial_upload")}];
    [v3 setObject:v12 forKeyedSubscript:@"isTrialUpload"];
  }

LABEL_17:
  if (self->_language)
  {
    v13 = [(PETSchemaPETMetadata *)self language];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"language"];
  }

  if (self->_message_group)
  {
    v15 = [(PETSchemaPETMetadata *)self message_group];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"messageGroup"];
  }

  if (self->_msg_type)
  {
    v17 = [(PETSchemaPETMetadata *)self msg_type];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"msgType"];
  }

  if (self->_platform)
  {
    v19 = [(PETSchemaPETMetadata *)self platform];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"platform"];
  }

  if (self->_pseudo_device_id)
  {
    v21 = [(PETSchemaPETMetadata *)self pseudo_device_id];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"pseudoDeviceId"];
  }

  if (*(&self->_is_trial_upload + 1))
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PETSchemaPETMetadata upload_time](self, "upload_time")}];
    [v3 setObject:v23 forKeyedSubscript:@"uploadTime"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  if ((*(&self->_is_trial_upload + 1) & 1) != (v4[53] & 1))
  {
    goto LABEL_66;
  }

  if (*(&self->_is_trial_upload + 1))
  {
    upload_time = self->_upload_time;
    if (upload_time != [v4 upload_time])
    {
      goto LABEL_66;
    }
  }

  v6 = [(PETSchemaPETMetadata *)self platform];
  v7 = [v4 platform];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_65;
  }

  v8 = [(PETSchemaPETMetadata *)self platform];
  if (v8)
  {
    v9 = v8;
    v10 = [(PETSchemaPETMetadata *)self platform];
    v11 = [v4 platform];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  v6 = [(PETSchemaPETMetadata *)self device];
  v7 = [v4 device];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_65;
  }

  v13 = [(PETSchemaPETMetadata *)self device];
  if (v13)
  {
    v14 = v13;
    v15 = [(PETSchemaPETMetadata *)self device];
    v16 = [v4 device];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  v6 = [(PETSchemaPETMetadata *)self build];
  v7 = [v4 build];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_65;
  }

  v18 = [(PETSchemaPETMetadata *)self build];
  if (v18)
  {
    v19 = v18;
    v20 = [(PETSchemaPETMetadata *)self build];
    v21 = [v4 build];
    v22 = [v20 isEqual:v21];

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
  v25 = v4[53];
  if (v24 != ((v25 >> 1) & 1))
  {
    goto LABEL_66;
  }

  if (v24)
  {
    is_internal = self->_is_internal;
    if (is_internal != [v4 is_internal])
    {
      goto LABEL_66;
    }

    v23 = *(&self->_is_trial_upload + 1);
    v25 = v4[53];
  }

  v27 = (v23 >> 2) & 1;
  if (v27 != ((v25 >> 2) & 1))
  {
    goto LABEL_66;
  }

  if (v27)
  {
    is_seed = self->_is_seed;
    if (is_seed != [v4 is_seed])
    {
      goto LABEL_66;
    }

    v23 = *(&self->_is_trial_upload + 1);
    v25 = v4[53];
  }

  v29 = (v23 >> 3) & 1;
  if (v29 != ((v25 >> 3) & 1))
  {
    goto LABEL_66;
  }

  if (v29)
  {
    is_gm = self->_is_gm;
    if (is_gm != [v4 is_gm])
    {
      goto LABEL_66;
    }
  }

  v6 = [(PETSchemaPETMetadata *)self country];
  v7 = [v4 country];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_65;
  }

  v31 = [(PETSchemaPETMetadata *)self country];
  if (v31)
  {
    v32 = v31;
    v33 = [(PETSchemaPETMetadata *)self country];
    v34 = [v4 country];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  v6 = [(PETSchemaPETMetadata *)self language];
  v7 = [v4 language];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_65;
  }

  v36 = [(PETSchemaPETMetadata *)self language];
  if (v36)
  {
    v37 = v36;
    v38 = [(PETSchemaPETMetadata *)self language];
    v39 = [v4 language];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  v41 = (*(&self->_is_trial_upload + 1) >> 4) & 1;
  if (v41 != ((v4[53] >> 4) & 1))
  {
    goto LABEL_66;
  }

  if (v41)
  {
    config_version = self->_config_version;
    if (config_version != [v4 config_version])
    {
      goto LABEL_66;
    }
  }

  v6 = [(PETSchemaPETMetadata *)self pseudo_device_id];
  v7 = [v4 pseudo_device_id];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_65;
  }

  v43 = [(PETSchemaPETMetadata *)self pseudo_device_id];
  if (v43)
  {
    v44 = v43;
    v45 = [(PETSchemaPETMetadata *)self pseudo_device_id];
    v46 = [v4 pseudo_device_id];
    v47 = [v45 isEqual:v46];

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
  v50 = v4[53];
  if (v49 != ((v50 >> 5) & 1))
  {
    goto LABEL_66;
  }

  if (v49)
  {
    is_internal_carry = self->_is_internal_carry;
    if (is_internal_carry != [v4 is_internal_carry])
    {
      goto LABEL_66;
    }

    v48 = *(&self->_is_trial_upload + 1);
    v50 = v4[53];
  }

  v52 = (v48 >> 6) & 1;
  if (v52 != ((v50 >> 6) & 1))
  {
    goto LABEL_66;
  }

  if (v52)
  {
    is_config_enabled = self->_is_config_enabled;
    if (is_config_enabled != [v4 is_config_enabled])
    {
      goto LABEL_66;
    }
  }

  v6 = [(PETSchemaPETMetadata *)self message_group];
  v7 = [v4 message_group];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_65;
  }

  v54 = [(PETSchemaPETMetadata *)self message_group];
  if (v54)
  {
    v55 = v54;
    v56 = [(PETSchemaPETMetadata *)self message_group];
    v57 = [v4 message_group];
    v58 = [v56 isEqual:v57];

    if (!v58)
    {
      goto LABEL_66;
    }
  }

  else
  {
  }

  v6 = [(PETSchemaPETMetadata *)self msg_type];
  v7 = [v4 msg_type];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_65:

    goto LABEL_66;
  }

  v59 = [(PETSchemaPETMetadata *)self msg_type];
  if (v59)
  {
    v60 = v59;
    v61 = [(PETSchemaPETMetadata *)self msg_type];
    v62 = [v4 msg_type];
    v63 = [v61 isEqual:v62];

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
  v68 = v4[53];
  if (v67 == ((v68 >> 7) & 1))
  {
    if (v67)
    {
      is_testing_data = self->_is_testing_data;
      if (is_testing_data != [v4 is_testing_data])
      {
        goto LABEL_66;
      }

      v66 = *(&self->_is_trial_upload + 1);
      v68 = v4[53];
    }

    v70 = (v66 >> 8) & 1;
    if (v70 == ((v68 >> 8) & 1))
    {
      if (!v70 || (is_trial_upload = self->_is_trial_upload, is_trial_upload == [v4 is_trial_upload]))
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

- (void)writeTo:(id)a3
{
  v15 = a3;
  if (*(&self->_is_trial_upload + 1))
  {
    PBDataWriterWriteUint64Field();
  }

  v4 = [(PETSchemaPETMetadata *)self platform];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PETSchemaPETMetadata *)self device];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(PETSchemaPETMetadata *)self build];

  if (v6)
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
  v8 = [(PETSchemaPETMetadata *)self country];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(PETSchemaPETMetadata *)self language];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_is_trial_upload + 1) & 0x10) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v10 = [(PETSchemaPETMetadata *)self pseudo_device_id];

  if (v10)
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

  v12 = [(PETSchemaPETMetadata *)self message_group];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(PETSchemaPETMetadata *)self msg_type];

  if (v13)
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

- (void)setHasIs_trial_upload:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFEFF | v3;
}

- (void)setHasIs_testing_data:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFF7F | v3;
}

- (void)setHasIs_config_enabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFFBF | v3;
}

- (void)setHasIs_internal_carry:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFFDF | v3;
}

- (void)setHasConfig_version:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFFEF | v3;
}

- (void)setHasIs_gm:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFFF7 | v3;
}

- (void)setHasIs_seed:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_is_trial_upload + 1) = *(&self->_is_trial_upload + 1) & 0xFFFB | v3;
}

- (void)setHasIs_internal:(BOOL)a3
{
  if (a3)
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
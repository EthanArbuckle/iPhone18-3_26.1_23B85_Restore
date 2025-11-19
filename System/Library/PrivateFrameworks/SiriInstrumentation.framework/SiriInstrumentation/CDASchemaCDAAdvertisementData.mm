@interface CDASchemaCDAAdvertisementData
- (BOOL)isEqual:(id)a3;
- (CDASchemaCDAAdvertisementData)initWithDictionary:(id)a3;
- (CDASchemaCDAAdvertisementData)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConfidenceScore:(BOOL)a3;
- (void)setHasDeviceClass:(BOOL)a3;
- (void)setHasDeviceGroup:(BOOL)a3;
- (void)setHasGoodnessScore:(BOOL)a3;
- (void)setHasIsFromContextCollector:(BOOL)a3;
- (void)setHasIsSelf:(BOOL)a3;
- (void)setHasProductType:(BOOL)a3;
- (void)setHasTieBreaker:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CDASchemaCDAAdvertisementData

- (CDASchemaCDAAdvertisementData)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CDASchemaCDAAdvertisementData;
  v5 = [(CDASchemaCDAAdvertisementData *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAAdvertisementData setAudioHash:](v5, "setAudioHash:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"goodnessScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAAdvertisementData setGoodnessScore:](v5, "setGoodnessScore:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"confidenceScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAAdvertisementData setConfidenceScore:](v5, "setConfidenceScore:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:{@"deviceClass", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAAdvertisementData setDeviceClass:](v5, "setDeviceClass:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"deviceGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAAdvertisementData setDeviceGroup:](v5, "setDeviceGroup:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"productType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAAdvertisementData setProductType:](v5, "setProductType:", [v11 unsignedIntValue]);
    }

    v19 = v7;
    v12 = [v4 objectForKeyedSubscript:@"tieBreaker"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAAdvertisementData setTieBreaker:](v5, "setTieBreaker:", [v12 unsignedIntValue]);
    }

    v13 = v6;
    v14 = [v4 objectForKeyedSubscript:@"isFromContextCollector"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAAdvertisementData setIsFromContextCollector:](v5, "setIsFromContextCollector:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"isSelf"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAAdvertisementData setIsSelf:](v5, "setIsSelf:", [v15 BOOLValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (CDASchemaCDAAdvertisementData)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CDASchemaCDAAdvertisementData *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CDASchemaCDAAdvertisementData *)self dictionaryRepresentation];
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
  v4 = *(&self->_isSelf + 1);
  if (v4)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAAdvertisementData audioHash](self, "audioHash")}];
    [v3 setObject:v7 forKeyedSubscript:@"audioHash"];

    v4 = *(&self->_isSelf + 1);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAAdvertisementData confidenceScore](self, "confidenceScore")}];
  [v3 setObject:v8 forKeyedSubscript:@"confidenceScore"];

  v4 = *(&self->_isSelf + 1);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAAdvertisementData deviceClass](self, "deviceClass")}];
  [v3 setObject:v9 forKeyedSubscript:@"deviceClass"];

  v4 = *(&self->_isSelf + 1);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAAdvertisementData deviceGroup](self, "deviceGroup")}];
  [v3 setObject:v10 forKeyedSubscript:@"deviceGroup"];

  v4 = *(&self->_isSelf + 1);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAAdvertisementData goodnessScore](self, "goodnessScore")}];
  [v3 setObject:v11 forKeyedSubscript:@"goodnessScore"];

  v4 = *(&self->_isSelf + 1);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[CDASchemaCDAAdvertisementData isFromContextCollector](self, "isFromContextCollector")}];
  [v3 setObject:v12 forKeyedSubscript:@"isFromContextCollector"];

  v4 = *(&self->_isSelf + 1);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[CDASchemaCDAAdvertisementData isSelf](self, "isSelf")}];
  [v3 setObject:v13 forKeyedSubscript:@"isSelf"];

  v4 = *(&self->_isSelf + 1);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAAdvertisementData productType](self, "productType")}];
  [v3 setObject:v14 forKeyedSubscript:@"productType"];

  if ((*(&self->_isSelf + 1) & 0x40) != 0)
  {
LABEL_10:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAAdvertisementData tieBreaker](self, "tieBreaker")}];
    [v3 setObject:v5 forKeyedSubscript:@"tieBreaker"];
  }

LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v2 = *(&self->_isSelf + 1);
  if (v2)
  {
    v3 = 2654435761 * self->_audioHash;
    if ((v2 & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_goodnessScore;
      if ((v2 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_confidenceScore;
    if ((v2 & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_deviceClass;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_deviceGroup;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_productType;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_tieBreaker;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if ((*(&self->_isSelf + 1) & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761 * self->_isFromContextCollector;
  if ((*(&self->_isSelf + 1) & 0x100) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_isSelf;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = *(&self->_isSelf + 1);
  v6 = v4[19];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_38;
  }

  if (v5)
  {
    audioHash = self->_audioHash;
    if (audioHash != [v4 audioHash])
    {
      goto LABEL_38;
    }

    v5 = *(&self->_isSelf + 1);
    v6 = v4[19];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_38;
  }

  if (v8)
  {
    goodnessScore = self->_goodnessScore;
    if (goodnessScore != [v4 goodnessScore])
    {
      goto LABEL_38;
    }

    v5 = *(&self->_isSelf + 1);
    v6 = v4[19];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_38;
  }

  if (v10)
  {
    confidenceScore = self->_confidenceScore;
    if (confidenceScore != [v4 confidenceScore])
    {
      goto LABEL_38;
    }

    v5 = *(&self->_isSelf + 1);
    v6 = v4[19];
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_38;
  }

  if (v12)
  {
    deviceClass = self->_deviceClass;
    if (deviceClass != [v4 deviceClass])
    {
      goto LABEL_38;
    }

    v5 = *(&self->_isSelf + 1);
    v6 = v4[19];
  }

  v14 = (v5 >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_38;
  }

  if (v14)
  {
    deviceGroup = self->_deviceGroup;
    if (deviceGroup != [v4 deviceGroup])
    {
      goto LABEL_38;
    }

    v5 = *(&self->_isSelf + 1);
    v6 = v4[19];
  }

  v16 = (v5 >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_38;
  }

  if (v16)
  {
    productType = self->_productType;
    if (productType != [v4 productType])
    {
      goto LABEL_38;
    }

    v5 = *(&self->_isSelf + 1);
    v6 = v4[19];
  }

  v18 = (v5 >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_38;
  }

  if (v18)
  {
    tieBreaker = self->_tieBreaker;
    if (tieBreaker != [v4 tieBreaker])
    {
      goto LABEL_38;
    }

    v5 = *(&self->_isSelf + 1);
    v6 = v4[19];
  }

  v20 = (v5 >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_38;
  }

  if (v20)
  {
    isFromContextCollector = self->_isFromContextCollector;
    if (isFromContextCollector == [v4 isFromContextCollector])
    {
      v5 = *(&self->_isSelf + 1);
      v6 = v4[19];
      goto LABEL_34;
    }

LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

LABEL_34:
  v22 = (v5 >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_38;
  }

  if (v22)
  {
    isSelf = self->_isSelf;
    if (isSelf != [v4 isSelf])
    {
      goto LABEL_38;
    }
  }

  v24 = 1;
LABEL_39:

  return v24;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = *(&self->_isSelf + 1);
  if (v4)
  {
    PBDataWriterWriteUint32Field();
    v4 = *(&self->_isSelf + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  v4 = *(&self->_isSelf + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteUint32Field();
  v4 = *(&self->_isSelf + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteUint32Field();
  v4 = *(&self->_isSelf + 1);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteUint32Field();
  v4 = *(&self->_isSelf + 1);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteUint32Field();
  v4 = *(&self->_isSelf + 1);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteUint32Field();
  v4 = *(&self->_isSelf + 1);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_isSelf + 1) & 0x100) != 0)
  {
LABEL_10:
    PBDataWriterWriteBOOLField();
  }

LABEL_11:
}

- (void)setHasIsSelf:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSelf + 1) = *(&self->_isSelf + 1) & 0xFEFF | v3;
}

- (void)setHasIsFromContextCollector:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSelf + 1) = *(&self->_isSelf + 1) & 0xFF7F | v3;
}

- (void)setHasTieBreaker:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSelf + 1) = *(&self->_isSelf + 1) & 0xFFBF | v3;
}

- (void)setHasProductType:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSelf + 1) = *(&self->_isSelf + 1) & 0xFFDF | v3;
}

- (void)setHasDeviceGroup:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSelf + 1) = *(&self->_isSelf + 1) & 0xFFEF | v3;
}

- (void)setHasDeviceClass:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSelf + 1) = *(&self->_isSelf + 1) & 0xFFF7 | v3;
}

- (void)setHasConfidenceScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSelf + 1) = *(&self->_isSelf + 1) & 0xFFFB | v3;
}

- (void)setHasGoodnessScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSelf + 1) = *(&self->_isSelf + 1) & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
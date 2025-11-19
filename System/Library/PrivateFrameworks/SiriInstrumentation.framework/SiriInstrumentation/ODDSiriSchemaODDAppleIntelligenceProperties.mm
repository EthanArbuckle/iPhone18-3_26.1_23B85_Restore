@interface ODDSiriSchemaODDAppleIntelligenceProperties
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAppleIntelligenceProperties)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAppleIntelligenceProperties)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)genAIAgentsEnabledAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addGenAIAgentsEnabled:(int)a3;
- (void)setHasChatGPTAccountType:(BOOL)a3;
- (void)setHasGenAIAccountType:(BOOL)a3;
- (void)setHasIsAppleIntelligenceAvailable:(BOOL)a3;
- (void)setHasIsAppleIntelligenceHardwareCapable:(BOOL)a3;
- (void)setHasIsChatGPTConfirmationAlwaysRequired:(BOOL)a3;
- (void)setHasIsChatGPTEnabled:(BOOL)a3;
- (void)setHasIsChatGPTSetUpPrompts:(BOOL)a3;
- (void)setHasIsGenAIConfirmationAlwaysRequired:(BOOL)a3;
- (void)setHasIsGenAISetUpPrompts:(BOOL)a3;
- (void)setHasIsRecordAppleIntelligenceActivity:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAppleIntelligenceProperties

- (ODDSiriSchemaODDAppleIntelligenceProperties)initWithDictionary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = ODDSiriSchemaODDAppleIntelligenceProperties;
  v5 = [(ODDSiriSchemaODDAppleIntelligenceProperties *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isAppleIntelligenceEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAppleIntelligenceProperties setIsAppleIntelligenceEnabled:](v5, "setIsAppleIntelligenceEnabled:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isRecordAppleIntelligenceActivity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAppleIntelligenceProperties setIsRecordAppleIntelligenceActivity:](v5, "setIsRecordAppleIntelligenceActivity:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isAppleIntelligenceHardwareCapable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAppleIntelligenceProperties setIsAppleIntelligenceHardwareCapable:](v5, "setIsAppleIntelligenceHardwareCapable:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isAppleIntelligenceAvailable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAppleIntelligenceProperties setIsAppleIntelligenceAvailable:](v5, "setIsAppleIntelligenceAvailable:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isChatGPTEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAppleIntelligenceProperties setIsChatGPTEnabled:](v5, "setIsChatGPTEnabled:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isChatGPTConfirmationAlwaysRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAppleIntelligenceProperties setIsChatGPTConfirmationAlwaysRequired:](v5, "setIsChatGPTConfirmationAlwaysRequired:", [v11 BOOLValue]);
    }

    v29 = v11;
    v12 = [v4 objectForKeyedSubscript:@"chatGPTAccountType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAppleIntelligenceProperties setChatGPTAccountType:](v5, "setChatGPTAccountType:", [v12 intValue]);
    }

    v28 = v12;
    v31 = v9;
    v32 = v8;
    v13 = [v4 objectForKeyedSubscript:@"isChatGPTSetUpPrompts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAppleIntelligenceProperties setIsChatGPTSetUpPrompts:](v5, "setIsChatGPTSetUpPrompts:", [v13 BOOLValue]);
    }

    v30 = v10;
    v14 = [v4 objectForKeyedSubscript:@"genAIAgentsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v7;
      v27 = v6;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          v19 = 0;
          do
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v33 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ODDSiriSchemaODDAppleIntelligenceProperties addGenAIAgentsEnabled:](v5, "addGenAIAgentsEnabled:", [v20 intValue]);
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v17);
      }

      v7 = v26;
      v6 = v27;
    }

    v21 = [v4 objectForKeyedSubscript:@"isGenAIConfirmationAlwaysRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAppleIntelligenceProperties setIsGenAIConfirmationAlwaysRequired:](v5, "setIsGenAIConfirmationAlwaysRequired:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"genAIAccountType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAppleIntelligenceProperties setGenAIAccountType:](v5, "setGenAIAccountType:", [v22 intValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"isGenAISetUpPrompts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAppleIntelligenceProperties setIsGenAISetUpPrompts:](v5, "setIsGenAISetUpPrompts:", [v23 BOOLValue]);
    }

    v24 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAppleIntelligenceProperties)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAppleIntelligenceProperties *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAppleIntelligenceProperties *)self dictionaryRepresentation];
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
  v4 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v4 & 0x40) != 0)
  {
    v5 = [(ODDSiriSchemaODDAppleIntelligenceProperties *)self chatGPTAccountType]- 1;
    if (v5 > 2)
    {
      v6 = @"GATACCOUNTTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DC950[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"chatGPTAccountType"];
    v4 = *(&self->_isGenAISetUpPrompts + 1);
  }

  if ((v4 & 0x200) != 0)
  {
    v7 = [(ODDSiriSchemaODDAppleIntelligenceProperties *)self genAIAccountType]- 1;
    if (v7 > 2)
    {
      v8 = @"GATACCOUNTTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78DC950[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"genAIAccountType"];
  }

  if ([(NSArray *)self->_genAIAgentsEnableds count])
  {
    v9 = [(ODDSiriSchemaODDAppleIntelligenceProperties *)self genAIAgentsEnableds];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"genAIAgentsEnabled"];
  }

  v11 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v11 & 8) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAppleIntelligenceProperties isAppleIntelligenceAvailable](self, "isAppleIntelligenceAvailable")}];
    [v3 setObject:v14 forKeyedSubscript:@"isAppleIntelligenceAvailable"];

    v11 = *(&self->_isGenAISetUpPrompts + 1);
    if ((v11 & 1) == 0)
    {
LABEL_15:
      if ((v11 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAppleIntelligenceProperties isAppleIntelligenceEnabled](self, "isAppleIntelligenceEnabled")}];
  [v3 setObject:v15 forKeyedSubscript:@"isAppleIntelligenceEnabled"];

  v11 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v11 & 4) == 0)
  {
LABEL_16:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAppleIntelligenceProperties isAppleIntelligenceHardwareCapable](self, "isAppleIntelligenceHardwareCapable")}];
  [v3 setObject:v16 forKeyedSubscript:@"isAppleIntelligenceHardwareCapable"];

  v11 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v11 & 0x20) == 0)
  {
LABEL_17:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAppleIntelligenceProperties isChatGPTConfirmationAlwaysRequired](self, "isChatGPTConfirmationAlwaysRequired")}];
  [v3 setObject:v17 forKeyedSubscript:@"isChatGPTConfirmationAlwaysRequired"];

  v11 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v11 & 0x10) == 0)
  {
LABEL_18:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAppleIntelligenceProperties isChatGPTEnabled](self, "isChatGPTEnabled")}];
  [v3 setObject:v18 forKeyedSubscript:@"isChatGPTEnabled"];

  v11 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v11 & 0x80) == 0)
  {
LABEL_19:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_31:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAppleIntelligenceProperties isChatGPTSetUpPrompts](self, "isChatGPTSetUpPrompts")}];
  [v3 setObject:v19 forKeyedSubscript:@"isChatGPTSetUpPrompts"];

  v11 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v11 & 0x100) == 0)
  {
LABEL_20:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAppleIntelligenceProperties isGenAIConfirmationAlwaysRequired](self, "isGenAIConfirmationAlwaysRequired")}];
  [v3 setObject:v20 forKeyedSubscript:@"isGenAIConfirmationAlwaysRequired"];

  v11 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v11 & 0x400) == 0)
  {
LABEL_21:
    if ((v11 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_33:
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAppleIntelligenceProperties isGenAISetUpPrompts](self, "isGenAISetUpPrompts")}];
  [v3 setObject:v21 forKeyedSubscript:@"isGenAISetUpPrompts"];

  if ((*(&self->_isGenAISetUpPrompts + 1) & 2) != 0)
  {
LABEL_22:
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAppleIntelligenceProperties isRecordAppleIntelligenceActivity](self, "isRecordAppleIntelligenceActivity")}];
    [v3 setObject:v12 forKeyedSubscript:@"isRecordAppleIntelligenceActivity"];
  }

LABEL_23:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = *(&self->_isGenAISetUpPrompts + 1);
  if (v3)
  {
    v16 = 2654435761 * self->_isAppleIntelligenceEnabled;
    if ((v3 & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_isRecordAppleIntelligenceActivity;
      if ((v3 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((v3 & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_isAppleIntelligenceHardwareCapable;
    if ((v3 & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((v3 & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_isAppleIntelligenceAvailable;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
  if ((v3 & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_isChatGPTEnabled;
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
  if ((v3 & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_isChatGPTConfirmationAlwaysRequired;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v9 = 0;
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v8 = 0;
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v9 = 2654435761 * self->_chatGPTAccountType;
  if ((v3 & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_isChatGPTSetUpPrompts;
    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
LABEL_18:
  v11 = [(NSArray *)self->_genAIAgentsEnableds hash];
  if ((*(&self->_isGenAISetUpPrompts + 1) & 0x100) == 0)
  {
    v12 = 0;
    if ((*(&self->_isGenAISetUpPrompts + 1) & 0x200) != 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v13 = 0;
    if ((*(&self->_isGenAISetUpPrompts + 1) & 0x400) != 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    v14 = 0;
    return v4 ^ v16 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v11;
  }

  v12 = 2654435761 * self->_isGenAIConfirmationAlwaysRequired;
  if ((*(&self->_isGenAISetUpPrompts + 1) & 0x200) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  v13 = 2654435761 * self->_genAIAccountType;
  if ((*(&self->_isGenAISetUpPrompts + 1) & 0x400) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v14 = 2654435761 * self->_isGenAISetUpPrompts;
  return v4 ^ v16 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  v5 = *(&self->_isGenAISetUpPrompts + 1);
  v6 = *(v4 + 41);
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_51;
  }

  if (v5)
  {
    isAppleIntelligenceEnabled = self->_isAppleIntelligenceEnabled;
    if (isAppleIntelligenceEnabled != [v4 isAppleIntelligenceEnabled])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isGenAISetUpPrompts + 1);
    v6 = *(v4 + 41);
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_51;
  }

  if (v8)
  {
    isRecordAppleIntelligenceActivity = self->_isRecordAppleIntelligenceActivity;
    if (isRecordAppleIntelligenceActivity != [v4 isRecordAppleIntelligenceActivity])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isGenAISetUpPrompts + 1);
    v6 = *(v4 + 41);
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_51;
  }

  if (v10)
  {
    isAppleIntelligenceHardwareCapable = self->_isAppleIntelligenceHardwareCapable;
    if (isAppleIntelligenceHardwareCapable != [v4 isAppleIntelligenceHardwareCapable])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isGenAISetUpPrompts + 1);
    v6 = *(v4 + 41);
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_51;
  }

  if (v12)
  {
    isAppleIntelligenceAvailable = self->_isAppleIntelligenceAvailable;
    if (isAppleIntelligenceAvailable != [v4 isAppleIntelligenceAvailable])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isGenAISetUpPrompts + 1);
    v6 = *(v4 + 41);
  }

  v14 = (v5 >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_51;
  }

  if (v14)
  {
    isChatGPTEnabled = self->_isChatGPTEnabled;
    if (isChatGPTEnabled != [v4 isChatGPTEnabled])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isGenAISetUpPrompts + 1);
    v6 = *(v4 + 41);
  }

  v16 = (v5 >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_51;
  }

  if (v16)
  {
    isChatGPTConfirmationAlwaysRequired = self->_isChatGPTConfirmationAlwaysRequired;
    if (isChatGPTConfirmationAlwaysRequired != [v4 isChatGPTConfirmationAlwaysRequired])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isGenAISetUpPrompts + 1);
    v6 = *(v4 + 41);
  }

  v18 = (v5 >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_51;
  }

  if (v18)
  {
    chatGPTAccountType = self->_chatGPTAccountType;
    if (chatGPTAccountType != [v4 chatGPTAccountType])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isGenAISetUpPrompts + 1);
    v6 = *(v4 + 41);
  }

  v20 = (v5 >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_51;
  }

  if (v20)
  {
    isChatGPTSetUpPrompts = self->_isChatGPTSetUpPrompts;
    if (isChatGPTSetUpPrompts != [v4 isChatGPTSetUpPrompts])
    {
      goto LABEL_51;
    }
  }

  v22 = [(ODDSiriSchemaODDAppleIntelligenceProperties *)self genAIAgentsEnableds];
  v23 = [v4 genAIAgentsEnableds];
  if ((v22 != 0) == (v23 == 0))
  {

    goto LABEL_51;
  }

  v24 = v23;
  v25 = [(ODDSiriSchemaODDAppleIntelligenceProperties *)self genAIAgentsEnableds];
  if (v25)
  {
    v26 = v25;
    v27 = [(ODDSiriSchemaODDAppleIntelligenceProperties *)self genAIAgentsEnableds];
    v28 = [v4 genAIAgentsEnableds];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v30 = *(&self->_isGenAISetUpPrompts + 1);
  v31 = (v30 >> 8) & 1;
  v32 = *(v4 + 41);
  if (v31 != ((v32 >> 8) & 1))
  {
LABEL_51:
    v38 = 0;
    goto LABEL_52;
  }

  if (v31)
  {
    isGenAIConfirmationAlwaysRequired = self->_isGenAIConfirmationAlwaysRequired;
    if (isGenAIConfirmationAlwaysRequired != [v4 isGenAIConfirmationAlwaysRequired])
    {
      goto LABEL_51;
    }

    v30 = *(&self->_isGenAISetUpPrompts + 1);
    v32 = *(v4 + 41);
  }

  v34 = (v30 >> 9) & 1;
  if (v34 != ((v32 >> 9) & 1))
  {
    goto LABEL_51;
  }

  if (v34)
  {
    genAIAccountType = self->_genAIAccountType;
    if (genAIAccountType == [v4 genAIAccountType])
    {
      v30 = *(&self->_isGenAISetUpPrompts + 1);
      v32 = *(v4 + 41);
      goto LABEL_47;
    }

    goto LABEL_51;
  }

LABEL_47:
  v36 = (v30 >> 10) & 1;
  if (v36 != ((v32 >> 10) & 1))
  {
    goto LABEL_51;
  }

  if (v36)
  {
    isGenAISetUpPrompts = self->_isGenAISetUpPrompts;
    if (isGenAISetUpPrompts != [v4 isGenAISetUpPrompts])
    {
      goto LABEL_51;
    }
  }

  v38 = 1;
LABEL_52:

  return v38;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(&self->_isGenAISetUpPrompts + 1);
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    v5 = *(&self->_isGenAISetUpPrompts + 1);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v5 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteBOOLField();
  v5 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteBOOLField();
  v5 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteBOOLField();
  v5 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  v5 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_28:
  PBDataWriterWriteInt32Field();
  if ((*(&self->_isGenAISetUpPrompts + 1) & 0x80) != 0)
  {
LABEL_9:
    PBDataWriterWriteBOOLField();
  }

LABEL_10:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_genAIAgentsEnableds;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v11 & 0x100) == 0)
  {
    if ((*(&self->_isGenAISetUpPrompts + 1) & 0x200) == 0)
    {
      goto LABEL_19;
    }

LABEL_31:
    PBDataWriterWriteInt32Field();
    if ((*(&self->_isGenAISetUpPrompts + 1) & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  PBDataWriterWriteBOOLField();
  v11 = *(&self->_isGenAISetUpPrompts + 1);
  if ((v11 & 0x200) != 0)
  {
    goto LABEL_31;
  }

LABEL_19:
  if ((v11 & 0x400) != 0)
  {
LABEL_20:
    PBDataWriterWriteBOOLField();
  }

LABEL_21:
}

- (void)setHasIsGenAISetUpPrompts:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isGenAISetUpPrompts + 1) = *(&self->_isGenAISetUpPrompts + 1) & 0xFBFF | v3;
}

- (void)setHasGenAIAccountType:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isGenAISetUpPrompts + 1) = *(&self->_isGenAISetUpPrompts + 1) & 0xFDFF | v3;
}

- (void)setHasIsGenAIConfirmationAlwaysRequired:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isGenAISetUpPrompts + 1) = *(&self->_isGenAISetUpPrompts + 1) & 0xFEFF | v3;
}

- (int)genAIAgentsEnabledAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_genAIAgentsEnableds objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addGenAIAgentsEnabled:(int)a3
{
  v3 = *&a3;
  genAIAgentsEnableds = self->_genAIAgentsEnableds;
  if (!genAIAgentsEnableds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_genAIAgentsEnableds;
    self->_genAIAgentsEnableds = v6;

    genAIAgentsEnableds = self->_genAIAgentsEnableds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)genAIAgentsEnableds addObject:v8];
}

- (void)setHasIsChatGPTSetUpPrompts:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isGenAISetUpPrompts + 1) = *(&self->_isGenAISetUpPrompts + 1) & 0xFF7F | v3;
}

- (void)setHasChatGPTAccountType:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isGenAISetUpPrompts + 1) = *(&self->_isGenAISetUpPrompts + 1) & 0xFFBF | v3;
}

- (void)setHasIsChatGPTConfirmationAlwaysRequired:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isGenAISetUpPrompts + 1) = *(&self->_isGenAISetUpPrompts + 1) & 0xFFDF | v3;
}

- (void)setHasIsChatGPTEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isGenAISetUpPrompts + 1) = *(&self->_isGenAISetUpPrompts + 1) & 0xFFEF | v3;
}

- (void)setHasIsAppleIntelligenceAvailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isGenAISetUpPrompts + 1) = *(&self->_isGenAISetUpPrompts + 1) & 0xFFF7 | v3;
}

- (void)setHasIsAppleIntelligenceHardwareCapable:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isGenAISetUpPrompts + 1) = *(&self->_isGenAISetUpPrompts + 1) & 0xFFFB | v3;
}

- (void)setHasIsRecordAppleIntelligenceActivity:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isGenAISetUpPrompts + 1) = *(&self->_isGenAISetUpPrompts + 1) & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
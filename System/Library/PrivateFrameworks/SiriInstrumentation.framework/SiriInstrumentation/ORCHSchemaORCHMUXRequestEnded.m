@interface ORCHSchemaORCHMUXRequestEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHMUXRequestEnded)initWithDictionary:(id)a3;
- (ORCHSchemaORCHMUXRequestEnded)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addUserScores:(id)a3;
- (void)addVoiceIdScores:(id)a3;
- (void)setHasIsOutsider:(BOOL)a3;
- (void)setHasIsSelectedUserPartOfMultipleHomes:(BOOL)a3;
- (void)setHasNlRerunLatencyInMs:(BOOL)a3;
- (void)setHasNlRerunTimeInMs:(BOOL)a3;
- (void)setHasORCHUserIdentityClassification:(BOOL)a3;
- (void)setHasVoiceIdClassification:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHMUXRequestEnded

- (ORCHSchemaORCHMUXRequestEnded)initWithDictionary:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v59.receiver = self;
  v59.super_class = ORCHSchemaORCHMUXRequestEnded;
  v5 = [(ORCHSchemaORCHMUXRequestEnded *)&v59 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isMultiUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setIsMultiUser:](v5, "setIsMultiUser:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"nlRerunTimeInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setNlRerunTimeInMs:](v5, "setNlRerunTimeInMs:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"userScores"];
    objc_opt_class();
    v44 = v7;
    v45 = v6;
    if (objc_opt_isKindOfClass())
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v9 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v56;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v56 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v55 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[ORCHSchemaORCHMultiUserScore alloc] initWithDictionary:v15];
              [(ORCHSchemaORCHMUXRequestEnded *)v5 addUserScores:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v55 objects:v61 count:16];
        }

        while (v12);
      }

      v6 = v45;
      v8 = v9;
    }

    v17 = [v4 objectForKeyedSubscript:@"ORCHUserIdentityClassification"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setORCHUserIdentityClassification:](v5, "setORCHUserIdentityClassification:", [v17 intValue]);
    }

    v43 = v17;
    v18 = [v4 objectForKeyedSubscript:@"isOutsider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setIsOutsider:](v5, "setIsOutsider:", [v18 BOOLValue]);
    }

    v42 = v18;
    v19 = [v4 objectForKeyedSubscript:@"voiceIdAssetVersion"];
    objc_opt_class();
    v50 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 copy];
      [(ORCHSchemaORCHMUXRequestEnded *)v5 setVoiceIdAssetVersion:v20];
    }

    v21 = [v4 objectForKeyedSubscript:@"isSelectedUserPartOfMultipleHomes"];
    objc_opt_class();
    v49 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setIsSelectedUserPartOfMultipleHomes:](v5, "setIsSelectedUserPartOfMultipleHomes:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"selectedSharedUserId"];
    objc_opt_class();
    v48 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(ORCHSchemaORCHMUXRequestEnded *)v5 setSelectedSharedUserId:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"nlRerunLatencyInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setNlRerunLatencyInMs:](v5, "setNlRerunLatencyInMs:", [v24 unsignedLongLongValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"selectedUserEphemeralId"];
    objc_opt_class();
    v47 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[SISchemaUUID alloc] initWithDictionary:v25];
      [(ORCHSchemaORCHMUXRequestEnded *)v5 setSelectedUserEphemeralId:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"selectedloggableUserIdHash"];
    objc_opt_class();
    v46 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 copy];
      [(ORCHSchemaORCHMUXRequestEnded *)v5 setSelectedloggableUserIdHash:v28];
    }

    v29 = [v4 objectForKeyedSubscript:@"voiceIdScores"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v24;
      v41 = v8;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v30 = v29;
      v31 = [v30 countByEnumeratingWithState:&v51 objects:v60 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v52;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v52 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v51 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = [[ORCHSchemaORCHMultiUserScore alloc] initWithDictionary:v35];
              [(ORCHSchemaORCHMUXRequestEnded *)v5 addVoiceIdScores:v36];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v51 objects:v60 count:16];
        }

        while (v32);
      }

      v7 = v44;
      v6 = v45;
      v24 = v40;
      v8 = v41;
    }

    v37 = [v4 objectForKeyedSubscript:@"voiceIdClassification"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setVoiceIdClassification:](v5, "setVoiceIdClassification:", [v37 intValue]);
    }

    v38 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHMUXRequestEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHMUXRequestEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHMUXRequestEnded *)self dictionaryRepresentation];
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
  v50 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [(ORCHSchemaORCHMUXRequestEnded *)self ORCHUserIdentityClassification]- 1;
    if (v5 > 5)
    {
      v6 = @"ORCHUSERIDENTITYCLASSIFICATION_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DECA8[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"ORCHUserIdentityClassification"];
    has = self->_has;
  }

  if (has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHMUXRequestEnded isMultiUser](self, "isMultiUser")}];
    [v3 setObject:v12 forKeyedSubscript:@"isMultiUser"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_8:
      if ((has & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_8;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHMUXRequestEnded isOutsider](self, "isOutsider")}];
  [v3 setObject:v13 forKeyedSubscript:@"isOutsider"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHMUXRequestEnded isSelectedUserPartOfMultipleHomes](self, "isSelectedUserPartOfMultipleHomes")}];
  [v3 setObject:v14 forKeyedSubscript:@"isSelectedUserPartOfMultipleHomes"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_20:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ORCHSchemaORCHMUXRequestEnded nlRerunLatencyInMs](self, "nlRerunLatencyInMs")}];
  [v3 setObject:v15 forKeyedSubscript:@"nlRerunLatencyInMs"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_11:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ORCHSchemaORCHMUXRequestEnded nlRerunTimeInMs](self, "nlRerunTimeInMs")}];
    [v3 setObject:v7 forKeyedSubscript:@"nlRerunTimeInMs"];
  }

LABEL_12:
  if (self->_selectedSharedUserId)
  {
    v8 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedSharedUserId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"selectedSharedUserId"];
  }

  if (self->_selectedUserEphemeralId)
  {
    v10 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"selectedUserEphemeralId"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"selectedUserEphemeralId"];
    }
  }

  if (self->_selectedloggableUserIdHash)
  {
    v17 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedloggableUserIdHash];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"selectedloggableUserIdHash"];
  }

  if ([(NSArray *)self->_userScores count])
  {
    v19 = [MEMORY[0x1E695DF70] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v20 = self->_userScores;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v45;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v45 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v44 + 1) + 8 * i) dictionaryRepresentation];
          if (v25)
          {
            [v19 addObject:v25];
          }

          else
          {
            v26 = [MEMORY[0x1E695DFB0] null];
            [v19 addObject:v26];
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"userScores"];
  }

  if (self->_voiceIdAssetVersion)
  {
    v27 = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdAssetVersion];
    v28 = [v27 copy];
    [v3 setObject:v28 forKeyedSubscript:@"voiceIdAssetVersion"];
  }

  if ((*&self->_has & 0x40) != 0)
  {
    v29 = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdClassification]- 1;
    if (v29 > 5)
    {
      v30 = @"ORCHUSERIDENTITYCLASSIFICATION_UNKNOWN";
    }

    else
    {
      v30 = off_1E78DECA8[v29];
    }

    [v3 setObject:v30 forKeyedSubscript:@"voiceIdClassification"];
  }

  if ([(NSArray *)self->_voiceIdScores count])
  {
    v31 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = self->_voiceIdScores;
    v33 = [(NSArray *)v32 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v41;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v41 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v40 + 1) + 8 * j) dictionaryRepresentation];
          if (v37)
          {
            [v31 addObject:v37];
          }

          else
          {
            v38 = [MEMORY[0x1E695DFB0] null];
            [v31 addObject:v38];
          }
        }

        v34 = [(NSArray *)v32 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v34);
    }

    [v3 setObject:v31 forKeyedSubscript:@"voiceIdScores"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v17 = 2654435761 * self->_isMultiUser;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v16 = 2654435761 * self->_nlRerunTimeInMs;
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_6:
  v15 = [(NSArray *)self->_userScores hash];
  if ((*&self->_has & 4) != 0)
  {
    v13 = 2654435761 * self->_ORCHUserIdentityClassification;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_8:
      v3 = 2654435761 * self->_isOutsider;
      goto LABEL_11;
    }
  }

  v3 = 0;
LABEL_11:
  v4 = [(NSString *)self->_voiceIdAssetVersion hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v5 = 2654435761 * self->_isSelectedUserPartOfMultipleHomes;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_selectedSharedUserId hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v7 = 2654435761u * self->_nlRerunLatencyInMs;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SISchemaUUID *)self->_selectedUserEphemeralId hash];
  v9 = [(NSString *)self->_selectedloggableUserIdHash hash];
  v10 = [(NSArray *)self->_voiceIdScores hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v11 = 2654435761 * self->_voiceIdClassification;
  }

  else
  {
    v11 = 0;
  }

  return v16 ^ v17 ^ v14 ^ v3 ^ v15 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  has = self->_has;
  v6 = v4[92];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_52;
  }

  if (*&has)
  {
    isMultiUser = self->_isMultiUser;
    if (isMultiUser != [v4 isMultiUser])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v6 = v4[92];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_52;
  }

  if (v8)
  {
    nlRerunTimeInMs = self->_nlRerunTimeInMs;
    if (nlRerunTimeInMs != [v4 nlRerunTimeInMs])
    {
      goto LABEL_52;
    }
  }

  v10 = [(ORCHSchemaORCHMUXRequestEnded *)self userScores];
  v11 = [v4 userScores];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_51;
  }

  v12 = [(ORCHSchemaORCHMUXRequestEnded *)self userScores];
  if (v12)
  {
    v13 = v12;
    v14 = [(ORCHSchemaORCHMUXRequestEnded *)self userScores];
    v15 = [v4 userScores];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v17 = self->_has;
  v18 = (*&v17 >> 2) & 1;
  v19 = v4[92];
  if (v18 != ((v19 >> 2) & 1))
  {
    goto LABEL_52;
  }

  if (v18)
  {
    ORCHUserIdentityClassification = self->_ORCHUserIdentityClassification;
    if (ORCHUserIdentityClassification != [v4 ORCHUserIdentityClassification])
    {
      goto LABEL_52;
    }

    v17 = self->_has;
    v19 = v4[92];
  }

  v21 = (*&v17 >> 3) & 1;
  if (v21 != ((v19 >> 3) & 1))
  {
    goto LABEL_52;
  }

  if (v21)
  {
    isOutsider = self->_isOutsider;
    if (isOutsider != [v4 isOutsider])
    {
      goto LABEL_52;
    }
  }

  v10 = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdAssetVersion];
  v11 = [v4 voiceIdAssetVersion];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_51;
  }

  v23 = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdAssetVersion];
  if (v23)
  {
    v24 = v23;
    v25 = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdAssetVersion];
    v26 = [v4 voiceIdAssetVersion];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v28 = (*&self->_has >> 4) & 1;
  if (v28 != ((v4[92] >> 4) & 1))
  {
    goto LABEL_52;
  }

  if (v28)
  {
    isSelectedUserPartOfMultipleHomes = self->_isSelectedUserPartOfMultipleHomes;
    if (isSelectedUserPartOfMultipleHomes != [v4 isSelectedUserPartOfMultipleHomes])
    {
      goto LABEL_52;
    }
  }

  v10 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedSharedUserId];
  v11 = [v4 selectedSharedUserId];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_51;
  }

  v30 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedSharedUserId];
  if (v30)
  {
    v31 = v30;
    v32 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedSharedUserId];
    v33 = [v4 selectedSharedUserId];
    v34 = [v32 isEqual:v33];

    if (!v34)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v35 = (*&self->_has >> 5) & 1;
  if (v35 != ((v4[92] >> 5) & 1))
  {
    goto LABEL_52;
  }

  if (v35)
  {
    nlRerunLatencyInMs = self->_nlRerunLatencyInMs;
    if (nlRerunLatencyInMs != [v4 nlRerunLatencyInMs])
    {
      goto LABEL_52;
    }
  }

  v10 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];
  v11 = [v4 selectedUserEphemeralId];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_51;
  }

  v37 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];
  if (v37)
  {
    v38 = v37;
    v39 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];
    v40 = [v4 selectedUserEphemeralId];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v10 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedloggableUserIdHash];
  v11 = [v4 selectedloggableUserIdHash];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_51;
  }

  v42 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedloggableUserIdHash];
  if (v42)
  {
    v43 = v42;
    v44 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedloggableUserIdHash];
    v45 = [v4 selectedloggableUserIdHash];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v10 = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdScores];
  v11 = [v4 voiceIdScores];
  if ((v10 != 0) == (v11 == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  v47 = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdScores];
  if (v47)
  {
    v48 = v47;
    v49 = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdScores];
    v50 = [v4 voiceIdScores];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v54 = (*&self->_has >> 6) & 1;
  if (v54 == ((v4[92] >> 6) & 1))
  {
    if (!v54 || (voiceIdClassification = self->_voiceIdClassification, voiceIdClassification == [v4 voiceIdClassification]))
    {
      v52 = 1;
      goto LABEL_53;
    }
  }

LABEL_52:
  v52 = 0;
LABEL_53:

  return v52;
}

- (void)writeTo:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_userScores;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v11 = self->_has;
  }

  if ((v11 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v12 = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdAssetVersion];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedSharedUserId];

  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v14 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];

  if (v14)
  {
    v15 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedloggableUserIdHash];

  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = self->_voiceIdScores;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v19);
  }

  if ((*&self->_has & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasVoiceIdClassification:(BOOL)a3
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

- (void)addVoiceIdScores:(id)a3
{
  v4 = a3;
  voiceIdScores = self->_voiceIdScores;
  v8 = v4;
  if (!voiceIdScores)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_voiceIdScores;
    self->_voiceIdScores = v6;

    v4 = v8;
    voiceIdScores = self->_voiceIdScores;
  }

  [(NSArray *)voiceIdScores addObject:v4];
}

- (void)setHasNlRerunLatencyInMs:(BOOL)a3
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

- (void)setHasIsSelectedUserPartOfMultipleHomes:(BOOL)a3
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

- (void)setHasIsOutsider:(BOOL)a3
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

- (void)setHasORCHUserIdentityClassification:(BOOL)a3
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

- (void)addUserScores:(id)a3
{
  v4 = a3;
  userScores = self->_userScores;
  v8 = v4;
  if (!userScores)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_userScores;
    self->_userScores = v6;

    v4 = v8;
    userScores = self->_userScores;
  }

  [(NSArray *)userScores addObject:v4];
}

- (void)setHasNlRerunTimeInMs:(BOOL)a3
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
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ORCHSchemaORCHMUXRequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:8])
  {
    [(ORCHSchemaORCHMUXRequestEnded *)self deleteSelectedSharedUserId];
  }

  v6 = [(ORCHSchemaORCHMUXRequestEnded *)self userScores];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(ORCHSchemaORCHMUXRequestEnded *)self setUserScores:v7];

  v8 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];
  v9 = [v8 applySensitiveConditionsPolicy:v4];
  v10 = [v9 suppressMessage];

  if (v10)
  {
    [(ORCHSchemaORCHMUXRequestEnded *)self deleteSelectedUserEphemeralId];
  }

  v11 = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdScores];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v11 underConditions:v4];
  [(ORCHSchemaORCHMUXRequestEnded *)self setVoiceIdScores:v12];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end
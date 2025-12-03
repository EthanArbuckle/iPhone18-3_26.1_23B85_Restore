@interface ORCHSchemaORCHMUXRequestEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHMUXRequestEnded)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHMUXRequestEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addUserScores:(id)scores;
- (void)addVoiceIdScores:(id)scores;
- (void)setHasIsOutsider:(BOOL)outsider;
- (void)setHasIsSelectedUserPartOfMultipleHomes:(BOOL)homes;
- (void)setHasNlRerunLatencyInMs:(BOOL)ms;
- (void)setHasNlRerunTimeInMs:(BOOL)ms;
- (void)setHasORCHUserIdentityClassification:(BOOL)classification;
- (void)setHasVoiceIdClassification:(BOOL)classification;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHMUXRequestEnded

- (ORCHSchemaORCHMUXRequestEnded)initWithDictionary:(id)dictionary
{
  v62 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v59.receiver = self;
  v59.super_class = ORCHSchemaORCHMUXRequestEnded;
  v5 = [(ORCHSchemaORCHMUXRequestEnded *)&v59 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isMultiUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setIsMultiUser:](v5, "setIsMultiUser:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"nlRerunTimeInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setNlRerunTimeInMs:](v5, "setNlRerunTimeInMs:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userScores"];
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

    v17 = [dictionaryCopy objectForKeyedSubscript:@"ORCHUserIdentityClassification"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setORCHUserIdentityClassification:](v5, "setORCHUserIdentityClassification:", [v17 intValue]);
    }

    v43 = v17;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"isOutsider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setIsOutsider:](v5, "setIsOutsider:", [v18 BOOLValue]);
    }

    v42 = v18;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"voiceIdAssetVersion"];
    objc_opt_class();
    v50 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 copy];
      [(ORCHSchemaORCHMUXRequestEnded *)v5 setVoiceIdAssetVersion:v20];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"isSelectedUserPartOfMultipleHomes"];
    objc_opt_class();
    v49 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setIsSelectedUserPartOfMultipleHomes:](v5, "setIsSelectedUserPartOfMultipleHomes:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"selectedSharedUserId"];
    objc_opt_class();
    v48 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(ORCHSchemaORCHMUXRequestEnded *)v5 setSelectedSharedUserId:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"nlRerunLatencyInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setNlRerunLatencyInMs:](v5, "setNlRerunLatencyInMs:", [v24 unsignedLongLongValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"selectedUserEphemeralId"];
    objc_opt_class();
    v47 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[SISchemaUUID alloc] initWithDictionary:v25];
      [(ORCHSchemaORCHMUXRequestEnded *)v5 setSelectedUserEphemeralId:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"selectedloggableUserIdHash"];
    objc_opt_class();
    v46 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 copy];
      [(ORCHSchemaORCHMUXRequestEnded *)v5 setSelectedloggableUserIdHash:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"voiceIdScores"];
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

    v37 = [dictionaryCopy objectForKeyedSubscript:@"voiceIdClassification"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHMUXRequestEnded setVoiceIdClassification:](v5, "setVoiceIdClassification:", [v37 intValue]);
    }

    v38 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHMUXRequestEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHMUXRequestEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHMUXRequestEnded *)self dictionaryRepresentation];
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
  v50 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v6 forKeyedSubscript:@"ORCHUserIdentityClassification"];
    has = self->_has;
  }

  if (has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHMUXRequestEnded isMultiUser](self, "isMultiUser")}];
    [dictionary setObject:v12 forKeyedSubscript:@"isMultiUser"];

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
  [dictionary setObject:v13 forKeyedSubscript:@"isOutsider"];

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
  [dictionary setObject:v14 forKeyedSubscript:@"isSelectedUserPartOfMultipleHomes"];

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
  [dictionary setObject:v15 forKeyedSubscript:@"nlRerunLatencyInMs"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_11:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ORCHSchemaORCHMUXRequestEnded nlRerunTimeInMs](self, "nlRerunTimeInMs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"nlRerunTimeInMs"];
  }

LABEL_12:
  if (self->_selectedSharedUserId)
  {
    selectedSharedUserId = [(ORCHSchemaORCHMUXRequestEnded *)self selectedSharedUserId];
    v9 = [selectedSharedUserId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"selectedSharedUserId"];
  }

  if (self->_selectedUserEphemeralId)
  {
    selectedUserEphemeralId = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];
    dictionaryRepresentation = [selectedUserEphemeralId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"selectedUserEphemeralId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"selectedUserEphemeralId"];
    }
  }

  if (self->_selectedloggableUserIdHash)
  {
    selectedloggableUserIdHash = [(ORCHSchemaORCHMUXRequestEnded *)self selectedloggableUserIdHash];
    v18 = [selectedloggableUserIdHash copy];
    [dictionary setObject:v18 forKeyedSubscript:@"selectedloggableUserIdHash"];
  }

  if ([(NSArray *)self->_userScores count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v44 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array forKeyedSubscript:@"userScores"];
  }

  if (self->_voiceIdAssetVersion)
  {
    voiceIdAssetVersion = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdAssetVersion];
    v28 = [voiceIdAssetVersion copy];
    [dictionary setObject:v28 forKeyedSubscript:@"voiceIdAssetVersion"];
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

    [dictionary setObject:v30 forKeyedSubscript:@"voiceIdClassification"];
  }

  if ([(NSArray *)self->_voiceIdScores count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v40 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v34 = [(NSArray *)v32 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v34);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"voiceIdScores"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  has = self->_has;
  v6 = equalCopy[92];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_52;
  }

  if (*&has)
  {
    isMultiUser = self->_isMultiUser;
    if (isMultiUser != [equalCopy isMultiUser])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v6 = equalCopy[92];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_52;
  }

  if (v8)
  {
    nlRerunTimeInMs = self->_nlRerunTimeInMs;
    if (nlRerunTimeInMs != [equalCopy nlRerunTimeInMs])
    {
      goto LABEL_52;
    }
  }

  userScores = [(ORCHSchemaORCHMUXRequestEnded *)self userScores];
  userScores2 = [equalCopy userScores];
  if ((userScores != 0) == (userScores2 == 0))
  {
    goto LABEL_51;
  }

  userScores3 = [(ORCHSchemaORCHMUXRequestEnded *)self userScores];
  if (userScores3)
  {
    v13 = userScores3;
    userScores4 = [(ORCHSchemaORCHMUXRequestEnded *)self userScores];
    userScores5 = [equalCopy userScores];
    v16 = [userScores4 isEqual:userScores5];

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
  v19 = equalCopy[92];
  if (v18 != ((v19 >> 2) & 1))
  {
    goto LABEL_52;
  }

  if (v18)
  {
    ORCHUserIdentityClassification = self->_ORCHUserIdentityClassification;
    if (ORCHUserIdentityClassification != [equalCopy ORCHUserIdentityClassification])
    {
      goto LABEL_52;
    }

    v17 = self->_has;
    v19 = equalCopy[92];
  }

  v21 = (*&v17 >> 3) & 1;
  if (v21 != ((v19 >> 3) & 1))
  {
    goto LABEL_52;
  }

  if (v21)
  {
    isOutsider = self->_isOutsider;
    if (isOutsider != [equalCopy isOutsider])
    {
      goto LABEL_52;
    }
  }

  userScores = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdAssetVersion];
  userScores2 = [equalCopy voiceIdAssetVersion];
  if ((userScores != 0) == (userScores2 == 0))
  {
    goto LABEL_51;
  }

  voiceIdAssetVersion = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdAssetVersion];
  if (voiceIdAssetVersion)
  {
    v24 = voiceIdAssetVersion;
    voiceIdAssetVersion2 = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdAssetVersion];
    voiceIdAssetVersion3 = [equalCopy voiceIdAssetVersion];
    v27 = [voiceIdAssetVersion2 isEqual:voiceIdAssetVersion3];

    if (!v27)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v28 = (*&self->_has >> 4) & 1;
  if (v28 != ((equalCopy[92] >> 4) & 1))
  {
    goto LABEL_52;
  }

  if (v28)
  {
    isSelectedUserPartOfMultipleHomes = self->_isSelectedUserPartOfMultipleHomes;
    if (isSelectedUserPartOfMultipleHomes != [equalCopy isSelectedUserPartOfMultipleHomes])
    {
      goto LABEL_52;
    }
  }

  userScores = [(ORCHSchemaORCHMUXRequestEnded *)self selectedSharedUserId];
  userScores2 = [equalCopy selectedSharedUserId];
  if ((userScores != 0) == (userScores2 == 0))
  {
    goto LABEL_51;
  }

  selectedSharedUserId = [(ORCHSchemaORCHMUXRequestEnded *)self selectedSharedUserId];
  if (selectedSharedUserId)
  {
    v31 = selectedSharedUserId;
    selectedSharedUserId2 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedSharedUserId];
    selectedSharedUserId3 = [equalCopy selectedSharedUserId];
    v34 = [selectedSharedUserId2 isEqual:selectedSharedUserId3];

    if (!v34)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v35 = (*&self->_has >> 5) & 1;
  if (v35 != ((equalCopy[92] >> 5) & 1))
  {
    goto LABEL_52;
  }

  if (v35)
  {
    nlRerunLatencyInMs = self->_nlRerunLatencyInMs;
    if (nlRerunLatencyInMs != [equalCopy nlRerunLatencyInMs])
    {
      goto LABEL_52;
    }
  }

  userScores = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];
  userScores2 = [equalCopy selectedUserEphemeralId];
  if ((userScores != 0) == (userScores2 == 0))
  {
    goto LABEL_51;
  }

  selectedUserEphemeralId = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];
  if (selectedUserEphemeralId)
  {
    v38 = selectedUserEphemeralId;
    selectedUserEphemeralId2 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];
    selectedUserEphemeralId3 = [equalCopy selectedUserEphemeralId];
    v41 = [selectedUserEphemeralId2 isEqual:selectedUserEphemeralId3];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  userScores = [(ORCHSchemaORCHMUXRequestEnded *)self selectedloggableUserIdHash];
  userScores2 = [equalCopy selectedloggableUserIdHash];
  if ((userScores != 0) == (userScores2 == 0))
  {
    goto LABEL_51;
  }

  selectedloggableUserIdHash = [(ORCHSchemaORCHMUXRequestEnded *)self selectedloggableUserIdHash];
  if (selectedloggableUserIdHash)
  {
    v43 = selectedloggableUserIdHash;
    selectedloggableUserIdHash2 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedloggableUserIdHash];
    selectedloggableUserIdHash3 = [equalCopy selectedloggableUserIdHash];
    v46 = [selectedloggableUserIdHash2 isEqual:selectedloggableUserIdHash3];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  userScores = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdScores];
  userScores2 = [equalCopy voiceIdScores];
  if ((userScores != 0) == (userScores2 == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  voiceIdScores = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdScores];
  if (voiceIdScores)
  {
    v48 = voiceIdScores;
    voiceIdScores2 = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdScores];
    voiceIdScores3 = [equalCopy voiceIdScores];
    v51 = [voiceIdScores2 isEqual:voiceIdScores3];

    if (!v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v54 = (*&self->_has >> 6) & 1;
  if (v54 == ((equalCopy[92] >> 6) & 1))
  {
    if (!v54 || (voiceIdClassification = self->_voiceIdClassification, voiceIdClassification == [equalCopy voiceIdClassification]))
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

- (void)writeTo:(id)to
{
  v32 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  voiceIdAssetVersion = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdAssetVersion];

  if (voiceIdAssetVersion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  selectedSharedUserId = [(ORCHSchemaORCHMUXRequestEnded *)self selectedSharedUserId];

  if (selectedSharedUserId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  selectedUserEphemeralId = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];

  if (selectedUserEphemeralId)
  {
    selectedUserEphemeralId2 = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];
    PBDataWriterWriteSubmessage();
  }

  selectedloggableUserIdHash = [(ORCHSchemaORCHMUXRequestEnded *)self selectedloggableUserIdHash];

  if (selectedloggableUserIdHash)
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

- (void)setHasVoiceIdClassification:(BOOL)classification
{
  if (classification)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)addVoiceIdScores:(id)scores
{
  scoresCopy = scores;
  voiceIdScores = self->_voiceIdScores;
  v8 = scoresCopy;
  if (!voiceIdScores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_voiceIdScores;
    self->_voiceIdScores = array;

    scoresCopy = v8;
    voiceIdScores = self->_voiceIdScores;
  }

  [(NSArray *)voiceIdScores addObject:scoresCopy];
}

- (void)setHasNlRerunLatencyInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsSelectedUserPartOfMultipleHomes:(BOOL)homes
{
  if (homes)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsOutsider:(BOOL)outsider
{
  if (outsider)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasORCHUserIdentityClassification:(BOOL)classification
{
  if (classification)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addUserScores:(id)scores
{
  scoresCopy = scores;
  userScores = self->_userScores;
  v8 = scoresCopy;
  if (!userScores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_userScores;
    self->_userScores = array;

    scoresCopy = v8;
    userScores = self->_userScores;
  }

  [(NSArray *)userScores addObject:scoresCopy];
}

- (void)setHasNlRerunTimeInMs:(BOOL)ms
{
  if (ms)
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
  policyCopy = policy;
  v14.receiver = self;
  v14.super_class = ORCHSchemaORCHMUXRequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(ORCHSchemaORCHMUXRequestEnded *)self deleteSelectedSharedUserId];
  }

  userScores = [(ORCHSchemaORCHMUXRequestEnded *)self userScores];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:userScores underConditions:policyCopy];
  [(ORCHSchemaORCHMUXRequestEnded *)self setUserScores:v7];

  selectedUserEphemeralId = [(ORCHSchemaORCHMUXRequestEnded *)self selectedUserEphemeralId];
  v9 = [selectedUserEphemeralId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v9 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHMUXRequestEnded *)self deleteSelectedUserEphemeralId];
  }

  voiceIdScores = [(ORCHSchemaORCHMUXRequestEnded *)self voiceIdScores];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:voiceIdScores underConditions:policyCopy];
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
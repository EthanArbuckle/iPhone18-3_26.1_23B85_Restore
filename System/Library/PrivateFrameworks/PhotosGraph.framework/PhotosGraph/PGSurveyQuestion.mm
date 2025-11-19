@interface PGSurveyQuestion
- (BOOL)_additionalInfosAreEqualForOtherQuestionAdditionalInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToPersistedQuestion:(id)a3;
- (BOOL)isEquivalentToQuestion:(id)a3;
- (id)_additionalInfoWithAnswerReasonRemovedForQuestionType:(unsigned __int16)a3 additionalInfo:(id)a4;
- (unint64_t)hash;
- (unsigned)displayType;
- (unsigned)entityType;
- (unsigned)type;
- (void)persistWithCreationDate:(id)a3 questionVersion:(signed __int16)a4;
@end

@implementation PGSurveyQuestion

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PGSurveyQuestion *)self isEquivalentToQuestion:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PGSurveyQuestion *)self entityIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEquivalentToQuestion:(id)a3
{
  v5 = a3;
  v6 = [v5 entityIdentifier];
  v7 = [(PGSurveyQuestion *)self entityIdentifier];
  if ([v6 isEqualToString:v7])
  {
    v8 = [v5 entityType];
    if (v8 == [(PGSurveyQuestion *)self entityType])
    {
      v9 = [v5 type];
      if (v9 == [(PGSurveyQuestion *)self type])
      {
        v10 = [v5 additionalInfo];
        v11 = [v10 count];
        if (v11 || (-[PGSurveyQuestion additionalInfo](self, "additionalInfo"), v3 = objc_claimAutoreleasedReturnValue(), [v3 count]))
        {
          v12 = [v5 additionalInfo];
          v13 = [(PGSurveyQuestion *)self additionalInfo];
          v14 = [v12 isEqualToDictionary:v13];

          if (v11)
          {
LABEL_12:

            goto LABEL_9;
          }
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_12;
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (id)_additionalInfoWithAnswerReasonRemovedForQuestionType:(unsigned __int16)a3 additionalInfo:(id)a4
{
  v4 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    v11 = *MEMORY[0x277D3C8B8];
    v21 = *MEMORY[0x277D3C8E0];
    v19 = *MEMORY[0x277D3C8D8];
    v20 = *MEMORY[0x277D3C8F0];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (([v13 isEqualToString:v11] & 1) == 0)
        {
          if (v4 != 25)
          {
            if (v4 == 14)
            {
              v14 = v13;
              v15 = v20;
LABEL_12:
              if ([v14 isEqualToString:v15])
              {
                continue;
              }
            }

            v16 = [v5 objectForKeyedSubscript:v13];
            [v6 setObject:v16 forKeyedSubscript:v13];

            continue;
          }

          if ([v13 isEqualToString:v21])
          {
            continue;
          }

          v14 = v13;
          v15 = v19;
          goto LABEL_12;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)_additionalInfosAreEqualForOtherQuestionAdditionalInfo:(id)a3
{
  v4 = a3;
  v5 = [(PGSurveyQuestion *)self type];
  v6 = [(PGSurveyQuestion *)self additionalInfo];
  v7 = [(PGSurveyQuestion *)self _additionalInfoWithAnswerReasonRemovedForQuestionType:v5 additionalInfo:v6];

  v8 = [(PGSurveyQuestion *)self _additionalInfoWithAnswerReasonRemovedForQuestionType:[(PGSurveyQuestion *)self type] additionalInfo:v4];

  LOBYTE(v4) = [v7 isEqualToDictionary:v8];
  return v4;
}

- (BOOL)isEquivalentToPersistedQuestion:(id)a3
{
  v5 = a3;
  v6 = [v5 entityIdentifier];
  v7 = [(PGSurveyQuestion *)self entityIdentifier];
  if ([v6 isEqualToString:v7])
  {
    v8 = [v5 entityType];
    if (v8 == [(PGSurveyQuestion *)self entityType])
    {
      v9 = [v5 type];
      if (v9 == [(PGSurveyQuestion *)self type])
      {
        v10 = [v5 additionalInfo];
        v11 = [v10 count];
        if (v11 || (-[PGSurveyQuestion additionalInfo](self, "additionalInfo"), v3 = objc_claimAutoreleasedReturnValue(), [v3 count]))
        {
          v12 = [v5 additionalInfo];
          v13 = [(PGSurveyQuestion *)self _additionalInfosAreEqualForOtherQuestionAdditionalInfo:v12];

          if (v11)
          {
LABEL_12:

            goto LABEL_9;
          }
        }

        else
        {
          v13 = 1;
        }

        goto LABEL_12;
      }
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (unsigned)entityType
{
  v3 = objc_alloc(MEMORY[0x277CBEAD8]);
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

- (unsigned)displayType
{
  v3 = objc_alloc(MEMORY[0x277CBEAD8]);
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

- (unsigned)type
{
  v3 = objc_alloc(MEMORY[0x277CBEAD8]);
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

- (void)persistWithCreationDate:(id)a3 questionVersion:(signed __int16)a4
{
  v17 = a3;
  v6 = MEMORY[0x277CD9978];
  v7 = [(PGSurveyQuestion *)self entityIdentifier];
  v8 = [(PGSurveyQuestion *)self type];
  v9 = [(PGSurveyQuestion *)self state];
  v10 = [(PGSurveyQuestion *)self entityType];
  v11 = [(PGSurveyQuestion *)self displayType];
  [(PGSurveyQuestion *)self score];
  v13 = v12;
  v14 = [(PGSurveyQuestion *)self additionalInfo];
  LOWORD(v16) = a4;
  v15 = [v6 creationRequestForQuestionWithEntityIdentifier:v7 type:v8 state:v9 entityType:v10 displayType:v11 score:v14 additionalInfo:v13 creationDate:v17 questionVersion:v16];
}

@end
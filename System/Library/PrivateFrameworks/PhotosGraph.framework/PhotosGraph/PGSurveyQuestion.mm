@interface PGSurveyQuestion
- (BOOL)_additionalInfosAreEqualForOtherQuestionAdditionalInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToPersistedQuestion:(id)question;
- (BOOL)isEquivalentToQuestion:(id)question;
- (id)_additionalInfoWithAnswerReasonRemovedForQuestionType:(unsigned __int16)type additionalInfo:(id)info;
- (unint64_t)hash;
- (unsigned)displayType;
- (unsigned)entityType;
- (unsigned)type;
- (void)persistWithCreationDate:(id)date questionVersion:(signed __int16)version;
@end

@implementation PGSurveyQuestion

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PGSurveyQuestion *)self isEquivalentToQuestion:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  entityIdentifier = [(PGSurveyQuestion *)self entityIdentifier];
  v3 = [entityIdentifier hash];

  return v3;
}

- (BOOL)isEquivalentToQuestion:(id)question
{
  questionCopy = question;
  entityIdentifier = [questionCopy entityIdentifier];
  entityIdentifier2 = [(PGSurveyQuestion *)self entityIdentifier];
  if ([entityIdentifier isEqualToString:entityIdentifier2])
  {
    entityType = [questionCopy entityType];
    if (entityType == [(PGSurveyQuestion *)self entityType])
    {
      type = [questionCopy type];
      if (type == [(PGSurveyQuestion *)self type])
      {
        additionalInfo = [questionCopy additionalInfo];
        v11 = [additionalInfo count];
        if (v11 || (-[PGSurveyQuestion additionalInfo](self, "additionalInfo"), v3 = objc_claimAutoreleasedReturnValue(), [v3 count]))
        {
          additionalInfo2 = [questionCopy additionalInfo];
          additionalInfo3 = [(PGSurveyQuestion *)self additionalInfo];
          v14 = [additionalInfo2 isEqualToDictionary:additionalInfo3];

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

- (id)_additionalInfoWithAnswerReasonRemovedForQuestionType:(unsigned __int16)type additionalInfo:(id)info
{
  typeCopy = type;
  v27 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [infoCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (([v13 isEqualToString:v11] & 1) == 0)
        {
          if (typeCopy != 25)
          {
            if (typeCopy == 14)
            {
              v14 = v13;
              v15 = v20;
LABEL_12:
              if ([v14 isEqualToString:v15])
              {
                continue;
              }
            }

            v16 = [infoCopy objectForKeyedSubscript:v13];
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

      v9 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)_additionalInfosAreEqualForOtherQuestionAdditionalInfo:(id)info
{
  infoCopy = info;
  type = [(PGSurveyQuestion *)self type];
  additionalInfo = [(PGSurveyQuestion *)self additionalInfo];
  v7 = [(PGSurveyQuestion *)self _additionalInfoWithAnswerReasonRemovedForQuestionType:type additionalInfo:additionalInfo];

  v8 = [(PGSurveyQuestion *)self _additionalInfoWithAnswerReasonRemovedForQuestionType:[(PGSurveyQuestion *)self type] additionalInfo:infoCopy];

  LOBYTE(infoCopy) = [v7 isEqualToDictionary:v8];
  return infoCopy;
}

- (BOOL)isEquivalentToPersistedQuestion:(id)question
{
  questionCopy = question;
  entityIdentifier = [questionCopy entityIdentifier];
  entityIdentifier2 = [(PGSurveyQuestion *)self entityIdentifier];
  if ([entityIdentifier isEqualToString:entityIdentifier2])
  {
    entityType = [questionCopy entityType];
    if (entityType == [(PGSurveyQuestion *)self entityType])
    {
      type = [questionCopy type];
      if (type == [(PGSurveyQuestion *)self type])
      {
        additionalInfo = [questionCopy additionalInfo];
        v11 = [additionalInfo count];
        if (v11 || (-[PGSurveyQuestion additionalInfo](self, "additionalInfo"), v3 = objc_claimAutoreleasedReturnValue(), [v3 count]))
        {
          additionalInfo2 = [questionCopy additionalInfo];
          v13 = [(PGSurveyQuestion *)self _additionalInfosAreEqualForOtherQuestionAdditionalInfo:additionalInfo2];

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

- (void)persistWithCreationDate:(id)date questionVersion:(signed __int16)version
{
  dateCopy = date;
  v6 = MEMORY[0x277CD9978];
  entityIdentifier = [(PGSurveyQuestion *)self entityIdentifier];
  type = [(PGSurveyQuestion *)self type];
  state = [(PGSurveyQuestion *)self state];
  entityType = [(PGSurveyQuestion *)self entityType];
  displayType = [(PGSurveyQuestion *)self displayType];
  [(PGSurveyQuestion *)self score];
  v13 = v12;
  additionalInfo = [(PGSurveyQuestion *)self additionalInfo];
  LOWORD(v16) = version;
  v15 = [v6 creationRequestForQuestionWithEntityIdentifier:entityIdentifier type:type state:state entityType:entityType displayType:displayType score:additionalInfo additionalInfo:v13 creationDate:dateCopy questionVersion:v16];
}

@end
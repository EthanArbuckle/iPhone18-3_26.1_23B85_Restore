@interface MFMessageCriterion
+ (id)VIPSenderMessageCriterion;
+ (id)andCompoundCriterionWithCriteria:(id)a3;
+ (id)ccMeCriterion;
+ (id)criterionExcludingMailboxes:(id)a3;
+ (id)criterionForAccount:(id)a3;
+ (id)criterionForConversationID:(int64_t)a3;
+ (id)criterionForDateReceivedOlderThanDate:(id)a3;
+ (id)criterionForLibraryID:(id)a3;
+ (id)criterionForMailbox:(id)a3;
+ (id)criterionForMailboxURL:(id)a3;
+ (id)criterionForNotDeletedConversationID:(int64_t)a3;
+ (id)defaultsArrayFromCriteria:(id)a3;
+ (id)expressionForDate:(id)a3;
+ (id)flaggedMessageCriterion;
+ (id)hasAttachmentsCriterion;
+ (id)includesMeCriterion;
+ (id)messageIsDeletedCriterion:(BOOL)a3;
+ (id)messageIsJournaledCriterion:(BOOL)a3;
+ (id)messageIsServerSearchResultCriterion:(BOOL)a3;
+ (id)notCriterionWithCriterion:(id)a3;
+ (id)orCompoundCriterionWithCriteria:(id)a3;
+ (id)readMessageCriterion;
+ (id)stringForCriterionType:(int64_t)a3;
+ (id)threadMuteMessageCriterion;
+ (id)threadNotifyMessageCriterion;
+ (id)toMeCriterion;
+ (id)todayMessageCriterion;
+ (id)unreadMessageCriterion;
+ (int64_t)criterionTypeForString:(id)a3;
- (BOOL)_evaluateAccountCriterion:(id)a3;
- (BOOL)_evaluateAttachmentCriterion:(id)a3;
- (BOOL)_evaluateCompoundCriterion:(id)a3;
- (BOOL)_evaluateConversationIDCriterion:(id)a3;
- (BOOL)_evaluateDateCriterion:(id)a3;
- (BOOL)_evaluateFlagCriterion:(id)a3;
- (BOOL)_evaluateFullNameCriterion:(id)a3;
- (BOOL)_evaluateHeaderCriterion:(id)a3;
- (BOOL)_evaluateIsDigitallySignedCriterion:(id)a3;
- (BOOL)_evaluateIsEncryptedCriterion:(id)a3;
- (BOOL)_evaluateMailboxCriterion:(id)a3;
- (BOOL)_evaluatePartOfStructure:(id)a3;
- (BOOL)_evaluateSenderHeaderCriterion:(id)a3;
- (BOOL)doesMessageSatisfyCriterion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isVIPCriterion;
- (MFMessageCriterion)init;
- (MFMessageCriterion)initWithCriterion:(id)a3 expression:(id)a4;
- (NSString)criterionIdentifier;
- (NSString)expression;
- (id)_headersRequiredForEvaluation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dateFromExpression;
- (id)description;
- (id)descriptionWithDepth:(unsigned int)a3;
- (id)dictionaryRepresentation;
- (id)simplifiedCriterion;
- (id)simplifyOnce;
- (id)stringForMessageRuleQualifier:(int)a3;
- (int)messageRuleQualifierForString:(id)a3;
- (int64_t)criterionType;
- (unint64_t)hash;
- (void)dealloc;
- (void)setCriteria:(id)a3;
- (void)setCriterionIdentifier:(id)a3;
- (void)setCriterionType:(int64_t)a3;
- (void)setDateIsRelative:(BOOL)a3;
- (void)setExpression:(id)a3;
- (void)setIncludeRelatedMessages:(BOOL)a3;
@end

@implementation MFMessageCriterion

+ (id)defaultsArrayFromCriteria:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
        if (v9)
        {
          if (!v6)
          {
            v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
          }

          [v6 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (MFMessageCriterion)init
{
  v8.receiver = self;
  v8.super_class = MFMessageCriterion;
  v2 = [(MFMessageCriterion *)&v8 init];
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    v5 = CFUUIDCreateString(v3, v4);
    CFRelease(v4);
    uniqueId = v2->_uniqueId;
    v2->_uniqueId = &v5->isa;

    v2->_type = -1;
  }

  return v2;
}

- (MFMessageCriterion)initWithCriterion:(id)a3 expression:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFMessageCriterion *)self init];
  v9 = v8;
  if (v8)
  {
    [(MFMessageCriterion *)v8 setCriterionIdentifier:v6];
    [(MFMessageCriterion *)v9 setExpression:v7];
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMessageCriterion;
  [(MFMessageCriterion *)&v2 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [(MFMessageCriterion *)self criterionIdentifier];
  v7 = [(MFMessageCriterion *)v5 criterionIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [(MFMessageCriterion *)self qualifier];
  if (v9 != [(MFMessageCriterion *)v5 qualifier])
  {
    goto LABEL_6;
  }

  v10 = [(MFMessageCriterion *)self includeRemoteBodyContent];
  if (v10 != [(MFMessageCriterion *)v5 includeRemoteBodyContent])
  {
    goto LABEL_6;
  }

  if ([(MFMessageCriterion *)self criterionType]== 24)
  {
    v13 = [(MFMessageCriterion *)self criteria];
    v14 = [(MFMessageCriterion *)v5 criteria];
    v15 = [v13 isEqualToArray:v14];

    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = [(MFMessageCriterion *)self expression];
    v17 = [(MFMessageCriterion *)v5 expression];
    v18 = [v16 isEqualToString:v17];

    if (v18)
    {
LABEL_15:
      v11 = 1;
      goto LABEL_7;
    }
  }

LABEL_6:
  v11 = 0;
LABEL_7:

LABEL_10:
  return v11;
}

- (unint64_t)hash
{
  if ([(MFMessageCriterion *)self criterionType]== 24)
  {
    [(MFMessageCriterion *)self criteria];
  }

  else
  {
    [(MFMessageCriterion *)self expression];
  }
  v3 = ;
  v4 = [v3 hash];

  return v4;
}

- (id)descriptionWithDepth:(unsigned int)a3
{
  v5 = [MEMORY[0x277CCAB68] stringWithCapacity:4 * a3];
  if (a3)
  {
    v6 = a3;
    do
    {
      --v6;
      [v5 appendString:@"    "];
    }

    while (v6);
  }

  if ([(MFMessageCriterion *)self criterionType]== 24)
  {
    v7 = [(MFMessageCriterion *)self criteria];
    v8 = [MEMORY[0x277CCAB68] string];
    v9 = [v7 count];
    if (v9)
    {
      v10 = v9;
      [v8 appendString:@"\n"];
      v11 = v10 - 1;
      do
      {
        v12 = [v7 objectAtIndex:v11];
        v13 = [v12 descriptionWithDepth:a3 + 1];
        [v8 appendString:v13];

        --v11;
      }

      while (v11 != -1);
    }

    else
    {
      [v8 appendString:@"(none)"];
    }

    v24 = 0x277CCA000;
    v25 = MEMORY[0x277CCACA8];
    v20 = [(MFMessageCriterion *)self criterionIdentifier];
    v26 = [(MFMessageCriterion *)self name];
    if (v26)
    {
      v27 = MEMORY[0x277CCACA8];
      v24 = [(MFMessageCriterion *)self name];
      v28 = [v27 stringWithFormat:@"%@  Name: %@\n", v5, v24];
    }

    else
    {
      v28 = &stru_288159858;
    }

    v29 = [(MFMessageCriterion *)self allCriteriaMustBeSatisfied];
    v30 = @"No";
    if (v29)
    {
      v30 = @"Yes";
    }

    v31 = [v25 stringWithFormat:@"%@Criterion: %@\n%@%@  All criteria must be satisfied: %@\n%@  Criteria: %@", v5, v20, v28, v5, v30, v5, v8];
    if (v26)
    {
    }
  }

  else
  {
    if ([(MFMessageCriterion *)self criterionType]== 25)
    {
      v14 = [(MFMessageCriterion *)self criteria];
      v15 = [v14 count];

      if (v15)
      {
        v16 = [(MFMessageCriterion *)self criteria];
        v17 = [v16 firstObject];
        v7 = [v17 descriptionWithDepth:a3 + 1];
      }

      else
      {
        v7 = 0;
      }

      v32 = MEMORY[0x277CCACA8];
      v8 = [(MFMessageCriterion *)self criterionIdentifier];
      v31 = [v32 stringWithFormat:@"%@Criterion: %@\n%@ Sub-Criterion: \n%@", v5, v8, v5, v7];
      goto LABEL_30;
    }

    v18 = 0x277CCA000;
    v19 = MEMORY[0x277CCACA8];
    v7 = [(MFMessageCriterion *)self criterionIdentifier];
    v8 = [(MFMessageCriterion *)self _qualifierString];
    v20 = [(MFMessageCriterion *)self expression];
    v21 = [(MFMessageCriterion *)self name];
    if (v21)
    {
      v22 = MEMORY[0x277CCACA8];
      v18 = [(MFMessageCriterion *)self name];
      v23 = [v22 stringWithFormat:@"%@  Name: %@\n", v5, v18];
    }

    else
    {
      v23 = &stru_288159858;
    }

    v31 = [v19 stringWithFormat:@"%@Criterion: %@\n%@  Qualifier: %@\n%@  Expression: %@\n%@", v5, v7, v5, v8, v5, v20, v23];
    if (v21)
    {
    }
  }

LABEL_30:

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(MFMessageCriterion *)self descriptionWithDepth:0];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v4 = [(MFMessageCriterion *)self _qualifierString];
  [v3 setObject:self->_uniqueId forKey:@"CriterionUniqueId"];
  criterionIdentifier = self->_criterionIdentifier;
  if (criterionIdentifier && ![(NSString *)criterionIdentifier isEqualToString:&stru_288159858])
  {
    [v3 setObject:self->_criterionIdentifier forKey:@"Header"];
  }

  expression = self->_expression;
  if (expression && ![(NSString *)expression isEqualToString:&stru_288159858])
  {
    [v3 setObject:self->_expression forKey:@"Expression"];
  }

  if (v4 && ([v4 isEqualToString:&stru_288159858] & 1) == 0)
  {
    [v3 setObject:v4 forKey:@"Qualifier"];
  }

  if ([(MFMessageCriterion *)self criterionType]== 7)
  {
    v7 = [MailAccount accountWithPath:self->_expression];
    v8 = v7;
    if (v7)
    {
      v28 = @"Account";
      v29[0] = v7;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v10 = [MailAccount URLForInfo:v9];

      v11 = [v10 absoluteString];
      [v3 setObject:v11 forKey:@"AccountURL"];
    }
  }

  name = self->_name;
  if (name && ![(NSString *)name isEqualToString:&stru_288159858])
  {
    [v3 setObject:self->_name forKey:@"Name"];
  }

  if ([(MFMessageCriterion *)self criterionType]== 24)
  {
    if ([(NSArray *)self->_criteria count])
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_criteria, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = self->_criteria;
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
            [v13 addObject:v19];
          }

          v16 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v16);
      }

      [v3 setObject:v13 forKey:@"Criteria"];
    }

    [v3 mf_setBool:*(self + 68) & 1 forKey:@"AllCriteriaMustBeSatisfied"];
  }

  else if ([(MFMessageCriterion *)self criterionType]== 11 || [(MFMessageCriterion *)self criterionType]== 28)
  {
    [v3 mf_setBool:(*(self + 68) >> 1) & 1 forKey:@"DateIsRelative"];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", self->_dateUnitType];
    [v3 setObject:v20 forKey:@"DateUnitType"];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(MFMessageCriterion *)self criterionType];
  v7 = [(MFMessageCriterion *)self qualifier];
  v8 = [(MFMessageCriterion *)self expression];
  v9 = [v5 initWithType:v6 qualifier:v7 expression:v8];

  v10 = [(NSString *)self->_criterionIdentifier copyWithZone:a3];
  v11 = *(v9 + 8);
  *(v9 + 8) = v10;

  v12 = [(NSString *)self->_name copyWithZone:a3];
  v13 = *(v9 + 32);
  *(v9 + 32) = v12;

  v14 = [(NSString *)self->_uniqueId copyWithZone:a3];
  v15 = *(v9 + 40);
  *(v9 + 40) = v14;

  v16 = [(NSArray *)self->_criteria copyWithZone:a3];
  v17 = *(v9 + 56);
  *(v9 + 56) = v16;

  v18 = [(NSArray *)self->_requiredHeaders copyWithZone:a3];
  v19 = *(v9 + 72);
  *(v9 + 72) = v18;

  *(v9 + 64) = self->_dateUnitType;
  v20 = *(v9 + 68) & 0xFE | *(self + 68) & 1;
  *(v9 + 68) = v20;
  *(v9 + 68) = v20 & 0xFD | *(self + 68) & 2;
  objc_storeStrong((v9 + 88), self->_libraryIdentifiers);
  *(v9 + 80) = self->_preferFullTextSearch;
  *(v9 + 81) = self->_useFlaggedForUnreadCount;
  *(v9 + 68) = *(v9 + 68) & 0xFB | *(self + 68) & 4;
  *(v9 + 82) = self->_expressionIsSanitized;
  *(v9 + 83) = self->_includeRemoteBodyContent;
  return v9;
}

- (int64_t)criterionType
{
  result = self->_type;
  if (result == -1)
  {
    result = [objc_opt_class() criterionTypeForString:self->_criterionIdentifier];
    self->_type = result;
  }

  return result;
}

- (void)setCriterionType:(int64_t)a3
{
  v4 = [objc_opt_class() stringForCriterionType:a3];
  [(MFMessageCriterion *)self setCriterionIdentifier:v4];

  self->_type = -1;
}

- (NSString)criterionIdentifier
{
  if (self->_criterionIdentifier)
  {
    return self->_criterionIdentifier;
  }

  else
  {
    return @"From";
  }
}

- (void)setCriterionIdentifier:(id)a3
{
  v4 = a3;
  if (![(__CFString *)v4 caseInsensitiveCompare:@"To or Cc"])
  {

    v4 = @"AnyRecipient";
  }

  criterionIdentifier = self->_criterionIdentifier;
  self->_criterionIdentifier = &v4->isa;

  self->_type = -1;
}

- (NSString)expression
{
  expression = self->_expression;
  if (!expression)
  {
    v4 = [(NSIndexSet *)self->_libraryIdentifiers mf_commaSeparatedString];
    v5 = self->_expression;
    self->_expression = v4;

    expression = self->_expression;
  }

  return expression;
}

- (void)setExpression:(id)a3
{
  v4 = [a3 copy];
  expression = self->_expression;
  self->_expression = v4;

  MEMORY[0x2821F96F8]();
}

- (id)_headersRequiredForEvaluation
{
  v30[5] = *MEMORY[0x277D85DE8];
  requiredHeaders = self->_requiredHeaders;
  if (!requiredHeaders)
  {
    _MFLockGlobalLock();
    if (self->_requiredHeaders)
    {
LABEL_26:
      _MFUnlockGlobalLock();
      requiredHeaders = self->_requiredHeaders;
      goto LABEL_27;
    }

    v4 = [(MFMessageCriterion *)self criterionType];
    if (v4 <= 18)
    {
      if ((v4 - 14) < 2 || v4 == 9)
      {
        v7 = *MEMORY[0x277D06F50];
        v30[0] = *MEMORY[0x277D07038];
        v30[1] = v7;
        v8 = *MEMORY[0x277D07008];
        v30[2] = *MEMORY[0x277D07028];
        v30[3] = v8;
        v30[4] = *MEMORY[0x277D06F48];
        v5 = MEMORY[0x277CBEA60];
        v6 = v30;
        v9 = 5;
LABEL_24:
        v12 = [v5 arrayWithObjects:v6 count:v9];
LABEL_25:
        v19 = self->_requiredHeaders;
        self->_requiredHeaders = v12;

        goto LABEL_26;
      }
    }

    else
    {
      if ((v4 - 19) < 3)
      {
        v27 = *MEMORY[0x277D07060];
        v5 = MEMORY[0x277CBEA60];
        v6 = &v27;
LABEL_23:
        v9 = 1;
        goto LABEL_24;
      }

      if (v4 == 38)
      {
        v29 = *MEMORY[0x277D07038];
        v5 = MEMORY[0x277CBEA60];
        v6 = &v29;
        goto LABEL_23;
      }

      if (v4 == 39)
      {
        v28 = *MEMORY[0x277D06F50];
        v5 = MEMORY[0x277CBEA60];
        v6 = &v28;
        goto LABEL_23;
      }
    }

    v10 = [(MFMessageCriterion *)self criterionIdentifier];
    v11 = [v10 componentsSeparatedByString:@" or "];

    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [MEMORY[0x277D24F40] uniqueHeaderKeyStringForString:{*(*(&v22 + 1) + 8 * v17), v22}];
          if (v18)
          {
            [(NSArray *)v12 addObject:v18];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    goto LABEL_25;
  }

LABEL_27:
  v20 = *MEMORY[0x277D85DE8];

  return requiredHeaders;
}

- (BOOL)_evaluateCompoundCriterion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MFMessageCriterion *)self allCriteriaMustBeSatisfied];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(MFMessageCriterion *)self criteria];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v14 + 1) + 8 * v10) doesMessageSatisfyCriterion:v4];
      if (v5 != v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_evaluateFlagCriterion:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v11 = v5;
  v12[0] = &unk_2881756C8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v7 = IMAPMessageFlagsByApplyingDictionary(0, v6);
  v8 = [v4 messageFlags];

  LOBYTE(self) = [(MFMessageCriterion *)self qualifier]== 3;
  v9 = *MEMORY[0x277D85DE8];
  return self ^ ((v8 & v7) == 0);
}

- (BOOL)_evaluateHeaderCriterion:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v6 = [(MFMessageCriterion *)self qualifier];
  if (v6 == 3 || v5 && [v5 length])
  {
    v25 = v4;
    v29 = [v4 headers];
    [(MFMessageCriterion *)self _headersRequiredForEvaluation];
    v35 = 0u;
    v36 = 0u;
    v7 = v6 == 4;
    v37 = 0u;
    obj = v38 = 0u;
    v28 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v28)
    {
      v27 = *v36;
      LOBYTE(v8) = 1;
      v31 = v5;
LABEL_6:
      v9 = 0;
      while (1)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        if ((v8 & 1) == 0)
        {
          break;
        }

        v10 = *(*(&v35 + 1) + 8 * v9);
        v11 = [v29 copyHeadersForKey:v10];
        v34 = [MEMORY[0x277D24F40] isStructuredHeaderKey:v10];
        v12 = [v11 count];
        v13 = v12;
        v30 = v9;
        if (v6 != 3 || v12)
        {
          if (v12)
          {
            v14 = 0;
            v32 = v12;
            v33 = v11;
            do
            {
              v15 = [v11 objectAtIndex:v14];
              if (v15 && [v5 length])
              {
                if (v34)
                {
                  v16 = [MEMORY[0x277D24F40] addressListFromEncodedString:v15];
                  v17 = [v16 vf_flatMap:&__block_literal_global_6];
                }

                else
                {
                  v17 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v15, 0}];
                }

                v18 = [v17 count];
                if (v18)
                {
                  v19 = v18;
                  v20 = 1;
                  do
                  {
                    v21 = [v17 objectAtIndex:v20 - 1];
                    v22 = [(MFMessageCriterion *)self _evaluatePartOfStructure:v21];

                    if (v6 == 4)
                    {
                      v8 = v22;
                    }

                    else
                    {
                      v8 = !v22;
                    }

                    if (v6 == 4)
                    {
                      v7 &= v22;
                    }

                    else
                    {
                      v7 = v22;
                    }

                    if (v20 >= v19)
                    {
                      break;
                    }

                    ++v20;
                  }

                  while ((v8 & 1) != 0);
                }

                else
                {
                  v8 = 1;
                }

                v5 = v31;
                v13 = v32;
                v11 = v33;
              }

              else
              {
                v8 = 1;
              }

              if (!v8)
              {
                break;
              }

              ++v14;
            }

            while (v14 < v13);
            goto LABEL_38;
          }
        }

        else
        {
          v7 |= [v5 length] == 0;
        }

        LOBYTE(v8) = 1;
LABEL_38:

        v9 = v30 + 1;
        if (v30 + 1 == v28)
        {
          v28 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v28)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v4 = v25;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

id __47__MFMessageCriterion__evaluateHeaderCriterion___block_invoke(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 mf_addressComment];
  v4 = [v2 mf_uncommentedAddress];

  if (v4 && v3)
  {
    v13[0] = v4;
    v13[1] = v3;
    v5 = MEMORY[0x277CBEA60];
    v6 = v13;
    v7 = 2;
LABEL_9:
    v8 = [v5 arrayWithObjects:v6 count:v7];
    goto LABEL_10;
  }

  if (v4)
  {
    v12 = v4;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v12;
LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  if (v3)
  {
    v11 = v3;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v11;
    goto LABEL_8;
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_evaluateSenderHeaderCriterion:(id)a3
{
  v4 = [a3 firstSender];
  v5 = [v4 mf_addressComment];
  v6 = [v4 mf_uncommentedAddress];
  v7 = [(MFMessageCriterion *)self _evaluatePartOfStructure:v6]|| [(MFMessageCriterion *)self _evaluatePartOfStructure:v5];

  return v7;
}

- (BOOL)_evaluatePartOfStructure:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MFMessageCriterion *)self expression];
    v6 = [(MFMessageCriterion *)self qualifier];
    if (v6 > 2)
    {
      switch(v6)
      {
        case 7:
          v7 = [v4 localizedCaseInsensitiveCompare:v5] != 0;
          goto LABEL_17;
        case 4:
          v8 = 1;
LABEL_15:
          v9 = 385;
          goto LABEL_16;
        case 3:
          v7 = [v4 localizedCaseInsensitiveCompare:v5] == 0;
LABEL_17:

          goto LABEL_18;
      }

LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    if (v6 == 1)
    {
      v8 = 0;
      v9 = 393;
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_14;
      }

      v8 = 0;
      v9 = 397;
    }

LABEL_16:
    v10 = [v4 length];
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = [v4 rangeOfString:v5 options:v9 range:0 locale:{v10, v11}];

    v7 = v8 ^ (v12 != 0x7FFFFFFFFFFFFFFFLL);
    goto LABEL_17;
  }

  v7 = [(MFMessageCriterion *)self qualifier]== 4;
LABEL_18:

  return v7;
}

- (BOOL)_evaluateFullNameCriterion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [a3 headers];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 copyAddressListForTo];
  if ([v5 count])
  {
    [v4 addObjectsFromArray:v5];
  }

  v6 = [v3 copyAddressListForCc];
  if ([v6 count])
  {
    [v4 addObjectsFromArray:v6];
  }

  v20 = v3;
  v7 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 mf_addressComment];
        v15 = [v14 lowercaseString];

        if (v15 && [v13 caseInsensitiveCompare:v15])
        {
          [v7 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = [(MFMessageCriterion *)self criterionType]!= 14;
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_evaluateIsDigitallySignedCriterion:(id)a3
{
  v3 = a3;
  v4 = [v3 messageBodyUpdatingFlags:0];
  [v3 calculateAttachmentInfoFromBody:v4];

  v5 = [v3 messageFlags];
  return (v5 >> 23) & 1;
}

- (BOOL)_evaluateIsEncryptedCriterion:(id)a3
{
  v3 = a3;
  v4 = [v3 messageBodyUpdatingFlags:0];
  [v3 calculateAttachmentInfoFromBody:v4];

  v5 = [v3 messageFlags];
  return (v5 >> 3) & 1;
}

- (BOOL)_evaluateAttachmentCriterion:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v6 = v5;
  if (!v5 || ([v5 isEqualToString:&stru_288159858] & 1) != 0)
  {
    v7 = 0;
    goto LABEL_30;
  }

  v8 = [v4 messageBodyUpdatingFlags:0];
  v9 = +[MFActivityMonitor currentMonitor];
  v10 = [v9 error];
  [v9 setError:0];
  [v4 calculateAttachmentInfoFromBody:v8];
  v11 = [v9 error];
  v12 = [v11 code];

  [v9 setError:v10];
  if ((v12 - 1037) > 0xFFFFFFFFFFFFFFFDLL || ![v4 numberOfAttachments])
  {
    v7 = 0;
    goto LABEL_29;
  }

  v13 = [(MFMessageCriterion *)self qualifier];
  [v8 attachments];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v28 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v15)
  {
    v7 = 0;
    goto LABEL_28;
  }

  v16 = v15;
  v23 = v10;
  v24 = v8;
  v17 = *v26;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v26 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = [*(*(&v25 + 1) + 8 * i) mimePart];
      v20 = [v19 attachmentFilename];

      if (v13 == 3)
      {
        if (([v20 isEqualToString:v6] & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_23:
        v7 = 1;
        goto LABEL_26;
      }

      if (v13 != 2)
      {
        if (v13 == 1)
        {
          if ([v20 hasPrefix:v6])
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }

        v7 = v13 == 4 * ([v20 rangeOfString:v6 options:1] == 0x7FFFFFFFFFFFFFFFLL);
LABEL_26:

        goto LABEL_27;
      }

      if ([v20 hasSuffix:v6])
      {
        goto LABEL_23;
      }

LABEL_19:
    }

    v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  v7 = 0;
LABEL_27:
  v10 = v23;
  v8 = v24;
LABEL_28:

LABEL_29:
LABEL_30:

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_evaluateAccountCriterion:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v6 = [MailAccount accountWithPath:v5];
  v7 = [v4 account];

  return v7 == v6;
}

- (BOOL)_evaluateDateCriterion:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v6 = [(MFMessageCriterion *)self qualifier];
  v7 = [(MFMessageCriterion *)self criterionType];
  if (!v5)
  {
    goto LABEL_6;
  }

  v8 = v7;
  if ([v5 intValue] < 1)
  {
    goto LABEL_6;
  }

  if (v8 == 11)
  {
    v9 = [v4 dateReceived];
    goto LABEL_8;
  }

  if (v8 != 10)
  {
LABEL_6:
    v10 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  v9 = [v4 dateSent];
LABEL_8:
  v10 = v9;
  [v9 timeIntervalSince1970];
  v13 = v12;
  [v5 doubleValue];
  v15 = v13 <= v14;
  if (v6 != 5)
  {
    v15 = 0;
  }

  if (v6 == 6)
  {
    v11 = v13 >= v14;
  }

  else
  {
    v11 = v15;
  }

LABEL_13:

  return v11;
}

- (BOOL)_evaluateConversationIDCriterion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MFMessageCriterion *)self expression];
  v6 = [v5 longLongValue];

  if ([(MFMessageCriterion *)self qualifier]== 3)
  {
    v7 = [v4 conversationID] == v6;
  }

  else if ([(MFMessageCriterion *)self qualifier]== 7)
  {
    v7 = [v4 conversationID] != v6;
  }

  else
  {
    v8 = vm_imap_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = [(MFMessageCriterion *)self qualifier];
      v13 = 2048;
      v14 = [(MFMessageCriterion *)self criterionType];
      _os_log_impl(&dword_2720B1000, v8, OS_LOG_TYPE_DEFAULT, "Unhandled qualifier %ld for type %ld", &v11, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_evaluateMailboxCriterion:(id)a3
{
  v4 = a3;
  if ([(MFMessageCriterion *)self qualifier]== 3)
  {
    v5 = [(MFMessageCriterion *)self expression];
    v6 = [v4 originalMailboxURL];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)doesMessageSatisfyCriterion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 1;
  switch([(MFMessageCriterion *)self criterionType])
  {
    case 1:
    case 9:
    case 38:
    case 39:
      v6 = [(MFMessageCriterion *)self _evaluateHeaderCriterion:v4];
      goto LABEL_19;
    case 3:
    case 4:
      v6 = [(MFMessageCriterion *)self _evaluateAddressBookCriterion:v4];
      goto LABEL_19;
    case 7:
      v6 = [(MFMessageCriterion *)self _evaluateAccountCriterion:v4];
      goto LABEL_19;
    case 8:
      break;
    case 10:
    case 11:
      v6 = [(MFMessageCriterion *)self _evaluateDateCriterion:v4];
      goto LABEL_19;
    case 12:
    case 13:
      v6 = [(MFMessageCriterion *)self _evaluateAddressHistoryCriterion:v4];
      goto LABEL_19;
    case 14:
    case 15:
      v6 = [(MFMessageCriterion *)self _evaluateFullNameCriterion:v4];
      goto LABEL_19;
    case 16:
      v6 = [(MFMessageCriterion *)self _evaluateIsDigitallySignedCriterion:v4];
      goto LABEL_19;
    case 17:
      v6 = [(MFMessageCriterion *)self _evaluateIsEncryptedCriterion:v4];
      goto LABEL_19;
    case 18:
      v6 = [(MFMessageCriterion *)self _evaluateAttachmentCriterion:v4];
      goto LABEL_19;
    case 19:
      v6 = [(MFMessageCriterion *)self _evaluatePriorityIsHighCriterion:v4];
      goto LABEL_19;
    case 20:
      v6 = [(MFMessageCriterion *)self _evaluatePriorityIsNormalCriterion:v4];
      goto LABEL_19;
    case 21:
      v6 = [(MFMessageCriterion *)self _evaluatePriorityIsLowCriterion:v4];
      goto LABEL_19;
    case 22:
      v6 = [(MFMessageCriterion *)self _evaluateMailboxCriterion:v4];
      goto LABEL_19;
    case 24:
      v6 = [(MFMessageCriterion *)self _evaluateCompoundCriterion:v4];
      goto LABEL_19;
    case 26:
      v6 = [(MFMessageCriterion *)self _evaluateFlagCriterion:v4];
      goto LABEL_19;
    case 33:
      v6 = [(MFMessageCriterion *)self _evaluateConversationIDCriterion:v4];
      goto LABEL_19;
    case 34:
      v6 = [(MFMessageCriterion *)self _evaluateSenderHeaderCriterion:v4];
LABEL_19:
      v5 = v6;
      break;
    default:
      v9 = vm_imap_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = [(MFMessageCriterion *)self criterionType];
        _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "Unhandled criterion type %ld", &v10, 0xCu);
      }

      v5 = 0;
      break;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)messageRuleQualifierForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BeginsWith"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EndsWith"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"IsEqualTo"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"IsNotEqualTo"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"DoesNotContain"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"IsLessThan"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"IsGreaterThan"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ASCIIContains"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stringForMessageRuleQualifier:(int)a3
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return off_279E34138[a3];
  }
}

+ (int64_t)criterionTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Header"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Body"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SenderIsInAddressBook"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SenderIsNotInAddressBook"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SenderHeader"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"Account"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"AnyMessage"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"AnyRecipient"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"DateReceived"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"DateLastViewed"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"DateSent"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SenderIsInAddressHistory"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SenderIsNotInAddressHistory"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"AnyRecipientIncludesFullName"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"NoRecipientIncludesFullName"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"IsDigitallySigned"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"IsEncrypted"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"PriorityIsNormal"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"PriorityIsHigh"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"PriorityIsLow"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"AnyAttachment"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"Mailbox"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"MessageNumber"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"ExternalID"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"Compound"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"Flag"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"NotInTrashMailbox"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"ContainsAttachments"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"SpotlightSearch"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"ConversationID"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"Negation"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"MessageIdHash"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"ListIDHash"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"ToRecipient"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"CcRecipient"])
  {
    v4 = 39;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)stringForCriterionType:(int64_t)a3
{
  if ((a3 - 1) > 0x26)
  {
    return 0;
  }

  else
  {
    return off_279E34180[a3 - 1];
  }
}

- (void)setCriteria:(id)a3
{
  if (self->_criteria != a3)
  {
    v4 = [a3 copy];
    criteria = self->_criteria;
    self->_criteria = v4;
  }

  [(MFMessageCriterion *)self setCriterionType:24];
}

- (void)setDateIsRelative:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 68) = *(self + 68) & 0xFD | v3;
}

- (id)dateFromExpression
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = [(MFMessageCriterion *)self expression];
  [v3 doubleValue];
  v4 = [v2 dateWithTimeIntervalSince1970:?];

  return v4;
}

+ (id)expressionForDate:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  [a3 timeIntervalSince1970];
  return [v3 stringWithFormat:@"%f", v4];
}

- (id)simplifyOnce
{
  if ([(MFMessageCriterion *)self criterionType]== 24)
  {
    v3 = [(MFMessageCriterion *)self criteria];
    v4 = [v3 count];
    if (v4)
    {
      v5 = v4;
      if (v4 == 1)
      {
        v6 = [v3 lastObject];
        v7 = [v6 simplifiedCriterion];

        if (v7)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v7 = 0;
      v8 = 0;
      for (i = 0; i != v5; ++i)
      {
        v10 = [v3 objectAtIndex:i];
        v11 = [v10 simplifiedCriterion];
        if ([v11 criterionType] == 24 && ((v12 = -[MFMessageCriterion allCriteriaMustBeSatisfied](self, "allCriteriaMustBeSatisfied"), v12 == objc_msgSend(v11, "allCriteriaMustBeSatisfied")) || (objc_msgSend(v11, "criteria"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, !v14)))
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MFMessageCriterion);
            [(MFMessageCriterion *)v7 setCriterionType:24];
            [(MFMessageCriterion *)v7 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
            v17 = [MEMORY[0x277CBEB18] array];

            v18 = [v3 subarrayWithRange:{0, i}];
            [v17 addObjectsFromArray:v18];

            v8 = v17;
          }

          v19 = [v11 criteria];
          [v8 addObjectsFromArray:v19];
        }

        else
        {
          if (v11 != v10 && !v7)
          {
            v7 = objc_alloc_init(MFMessageCriterion);
            [(MFMessageCriterion *)v7 setCriterionType:24];
            [(MFMessageCriterion *)v7 setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
            v15 = [MEMORY[0x277CBEB18] array];

            v16 = [v3 subarrayWithRange:{0, i}];
            [v15 addObjectsFromArray:v16];

            v8 = v15;
          }

          [v8 addObject:v11];
        }
      }

      if (v7)
      {
        [(MFMessageCriterion *)v7 setCriteria:v8];

        goto LABEL_23;
      }
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_22:
  v7 = self;
LABEL_23:

  return v7;
}

- (id)simplifiedCriterion
{
  v2 = self;
  v3 = [(MFMessageCriterion *)v2 simplifyOnce];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = v2;
      v2 = v3;

      v3 = [(MFMessageCriterion *)v2 simplifyOnce];

      if (v3 == v2)
      {
        break;
      }
    }

    while (v4++ < 9);
  }

  return v3;
}

+ (id)criterionForMailbox:(id)a3
{
  v4 = [a3 URLString];
  v5 = [a1 criterionForMailboxURL:v4];

  return v5;
}

+ (id)criterionForMailboxURL:(id)a3
{
  v3 = a3;
  v4 = [[MFMessageCriterion alloc] initWithType:22 qualifier:3 expression:v3];

  return v4;
}

+ (id)criterionForAccount:(id)a3
{
  v3 = a3;
  v4 = [MFMessageCriterion alloc];
  v5 = [v3 URLString];

  v6 = [(MFMessageCriterion *)v4 initWithType:22 qualifier:1 expression:v5];

  return v6;
}

+ (id)criterionExcludingMailboxes:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 vf_map:&__block_literal_global_265];
    v5 = [MFMessageCriterion orCompoundCriterionWithCriteria:v4];
    v6 = [MFMessageCriterion notCriterionWithCriterion:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)messageIsDeletedCriterion:(BOOL)a3
{
  v3 = a3;
  v4 = [MFMessageCriterion alloc];
  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 7;
  }

  v6 = [(MFMessageCriterion *)v4 initWithType:26 qualifier:v5 expression:@"MessageIsDeleted"];

  return v6;
}

+ (id)messageIsJournaledCriterion:(BOOL)a3
{
  v3 = a3;
  v4 = [MFMessageCriterion alloc];
  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 7;
  }

  v6 = [(MFMessageCriterion *)v4 initWithType:26 qualifier:v5 expression:@"MessageIsJournaled"];

  return v6;
}

+ (id)criterionForNotDeletedConversationID:(int64_t)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [MFMessageCriterion messageIsDeletedCriterion:0];
  v10[0] = v4;
  v5 = [MFMessageCriterion criterionForConversationID:a3];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [MFMessageCriterion andCompoundCriterionWithCriteria:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)criterionForConversationID:(int64_t)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", a3];
  v4 = [[MFMessageCriterion alloc] initWithType:33 qualifier:3 expression:v3];

  return v4;
}

+ (id)criterionForLibraryID:(id)a3
{
  v3 = a3;
  v4 = [[MFMessageCriterion alloc] initWithType:23 qualifier:3 expression:v3];

  return v4;
}

+ (id)messageIsServerSearchResultCriterion:(BOOL)a3
{
  v3 = a3;
  v4 = [MFMessageCriterion alloc];
  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 7;
  }

  v6 = [(MFMessageCriterion *)v4 initWithType:26 qualifier:v5 expression:@"MessageIsServerSearchResult"];

  return v6;
}

+ (id)VIPSenderMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageSenderIsVIP"];
  [(MFMessageCriterion *)v2 setName:@"VIPCriterion"];

  return v2;
}

- (BOOL)isVIPCriterion
{
  if ([(MFMessageCriterion *)self criterionType]!= 26)
  {
    return 0;
  }

  v3 = [(MFMessageCriterion *)self expression];
  v4 = [v3 isEqualToString:@"MessageSenderIsVIP"];

  return v4;
}

+ (id)threadNotifyMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageConversationIsVIP"];
  [(MFMessageCriterion *)v2 setName:@"ThreadNotifyCriterionName"];

  return v2;
}

+ (id)threadMuteMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageConversationIsMuted"];
  [(MFMessageCriterion *)v2 setName:@"ThreadMuteCriterionName"];

  return v2;
}

+ (id)flaggedMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageIsFlagged"];
  [(MFMessageCriterion *)v2 setUseFlaggedForUnreadCount:1];
  [(MFMessageCriterion *)v2 setName:@"FlaggedCriterion"];

  return v2;
}

+ (id)unreadMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:7 expression:@"MessageIsRead"];
  [(MFMessageCriterion *)v2 setName:@"UnreadCriterion"];

  return v2;
}

+ (id)readMessageCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageIsRead"];
  [(MFMessageCriterion *)v2 setName:@"ReadCriterion"];

  return v2;
}

+ (id)includesMeCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageToOrCcContainsAccountAddress"];
  [(MFMessageCriterion *)v2 setName:@"IncludesMeCriterion"];

  return v2;
}

+ (id)toMeCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageToContainsAccountAddress"];
  [(MFMessageCriterion *)v2 setName:@"ToMeCriterionName"];

  return v2;
}

+ (id)ccMeCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MessageCcContainsAccountAddress"];
  [(MFMessageCriterion *)v2 setName:@"CcMeCriterionName"];

  return v2;
}

+ (id)hasAttachmentsCriterion
{
  v2 = [[MFMessageCriterion alloc] initWithType:26 qualifier:3 expression:@"MFMessageHasAttachments"];
  [(MFMessageCriterion *)v2 setName:@"HasAttachmentsCriterion"];

  return v2;
}

+ (id)todayMessageCriterion
{
  v2 = [MFMessageCriterion alloc];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
  v4 = [(MFMessageCriterion *)v2 initWithType:11 qualifier:5 expression:v3];

  [(MFMessageCriterion *)v4 setDateUnits:1];
  [(MFMessageCriterion *)v4 setDateIsRelative:1];
  [(MFMessageCriterion *)v4 setName:@"TodayCriterion"];

  return v4;
}

+ (id)criterionForDateReceivedOlderThanDate:(id)a3
{
  v4 = a3;
  v5 = [MFMessageCriterion alloc];
  v6 = [a1 expressionForDate:v4];

  v7 = [(MFMessageCriterion *)v5 initWithType:11 qualifier:5 expression:v6];

  return v7;
}

+ (id)notCriterionWithCriterion:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(MFMessageCriterion);
    v8[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

    [(MFMessageCriterion *)v4 setCriteria:v5];
    [(MFMessageCriterion *)v4 setCriterionType:25];
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)andCompoundCriterionWithCriteria:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 lastObject];
    }

    else
    {
      v4 = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)v4 setCriterionType:24];
      [(MFMessageCriterion *)v4 setAllCriteriaMustBeSatisfied:1];
      [(MFMessageCriterion *)v4 setCriteria:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)orCompoundCriterionWithCriteria:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 lastObject];
    }

    else
    {
      v4 = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)v4 setCriterionType:24];
      [(MFMessageCriterion *)v4 setAllCriteriaMustBeSatisfied:0];
      [(MFMessageCriterion *)v4 setCriteria:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIncludeRelatedMessages:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 68) = *(self + 68) & 0xFB | v3;
}

@end
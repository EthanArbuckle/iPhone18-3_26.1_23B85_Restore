@interface MFMessageCriterion
+ (id)VIPSenderMessageCriterion;
+ (id)andCompoundCriterionWithCriteria:(id)criteria;
+ (id)ccMeCriterion;
+ (id)criterionExcludingMailboxes:(id)mailboxes;
+ (id)criterionForAccount:(id)account;
+ (id)criterionForConversationID:(int64_t)d;
+ (id)criterionForDateReceivedOlderThanDate:(id)date;
+ (id)criterionForLibraryID:(id)d;
+ (id)criterionForMailbox:(id)mailbox;
+ (id)criterionForMailboxURL:(id)l;
+ (id)criterionForNotDeletedConversationID:(int64_t)d;
+ (id)defaultsArrayFromCriteria:(id)criteria;
+ (id)expressionForDate:(id)date;
+ (id)flaggedMessageCriterion;
+ (id)hasAttachmentsCriterion;
+ (id)includesMeCriterion;
+ (id)messageIsDeletedCriterion:(BOOL)criterion;
+ (id)messageIsJournaledCriterion:(BOOL)criterion;
+ (id)messageIsServerSearchResultCriterion:(BOOL)criterion;
+ (id)notCriterionWithCriterion:(id)criterion;
+ (id)orCompoundCriterionWithCriteria:(id)criteria;
+ (id)readMessageCriterion;
+ (id)stringForCriterionType:(int64_t)type;
+ (id)threadMuteMessageCriterion;
+ (id)threadNotifyMessageCriterion;
+ (id)toMeCriterion;
+ (id)todayMessageCriterion;
+ (id)unreadMessageCriterion;
+ (int64_t)criterionTypeForString:(id)string;
- (BOOL)_evaluateAccountCriterion:(id)criterion;
- (BOOL)_evaluateAttachmentCriterion:(id)criterion;
- (BOOL)_evaluateCompoundCriterion:(id)criterion;
- (BOOL)_evaluateConversationIDCriterion:(id)criterion;
- (BOOL)_evaluateDateCriterion:(id)criterion;
- (BOOL)_evaluateFlagCriterion:(id)criterion;
- (BOOL)_evaluateFullNameCriterion:(id)criterion;
- (BOOL)_evaluateHeaderCriterion:(id)criterion;
- (BOOL)_evaluateIsDigitallySignedCriterion:(id)criterion;
- (BOOL)_evaluateIsEncryptedCriterion:(id)criterion;
- (BOOL)_evaluateMailboxCriterion:(id)criterion;
- (BOOL)_evaluatePartOfStructure:(id)structure;
- (BOOL)_evaluateSenderHeaderCriterion:(id)criterion;
- (BOOL)doesMessageSatisfyCriterion:(id)criterion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isVIPCriterion;
- (MFMessageCriterion)init;
- (MFMessageCriterion)initWithCriterion:(id)criterion expression:(id)expression;
- (NSString)criterionIdentifier;
- (NSString)expression;
- (id)_headersRequiredForEvaluation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateFromExpression;
- (id)description;
- (id)descriptionWithDepth:(unsigned int)depth;
- (id)dictionaryRepresentation;
- (id)simplifiedCriterion;
- (id)simplifyOnce;
- (id)stringForMessageRuleQualifier:(int)qualifier;
- (int)messageRuleQualifierForString:(id)string;
- (int64_t)criterionType;
- (unint64_t)hash;
- (void)dealloc;
- (void)setCriteria:(id)criteria;
- (void)setCriterionIdentifier:(id)identifier;
- (void)setCriterionType:(int64_t)type;
- (void)setDateIsRelative:(BOOL)relative;
- (void)setExpression:(id)expression;
- (void)setIncludeRelatedMessages:(BOOL)messages;
@end

@implementation MFMessageCriterion

+ (id)defaultsArrayFromCriteria:(id)criteria
{
  v17 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [criteriaCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(criteriaCopy);
        }

        dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
        if (dictionaryRepresentation)
        {
          if (!v6)
          {
            v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(criteriaCopy, "count")}];
          }

          [v6 addObject:dictionaryRepresentation];
        }
      }

      v5 = [criteriaCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (MFMessageCriterion)initWithCriterion:(id)criterion expression:(id)expression
{
  criterionCopy = criterion;
  expressionCopy = expression;
  v8 = [(MFMessageCriterion *)self init];
  v9 = v8;
  if (v8)
  {
    [(MFMessageCriterion *)v8 setCriterionIdentifier:criterionCopy];
    [(MFMessageCriterion *)v9 setExpression:expressionCopy];
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMessageCriterion;
  [(MFMessageCriterion *)&v2 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

  v5 = equalCopy;
  criterionIdentifier = [(MFMessageCriterion *)self criterionIdentifier];
  criterionIdentifier2 = [(MFMessageCriterion *)v5 criterionIdentifier];
  v8 = [criterionIdentifier isEqualToString:criterionIdentifier2];

  if (!v8)
  {
    goto LABEL_6;
  }

  qualifier = [(MFMessageCriterion *)self qualifier];
  if (qualifier != [(MFMessageCriterion *)v5 qualifier])
  {
    goto LABEL_6;
  }

  includeRemoteBodyContent = [(MFMessageCriterion *)self includeRemoteBodyContent];
  if (includeRemoteBodyContent != [(MFMessageCriterion *)v5 includeRemoteBodyContent])
  {
    goto LABEL_6;
  }

  if ([(MFMessageCriterion *)self criterionType]== 24)
  {
    criteria = [(MFMessageCriterion *)self criteria];
    criteria2 = [(MFMessageCriterion *)v5 criteria];
    v15 = [criteria isEqualToArray:criteria2];

    if (v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    expression = [(MFMessageCriterion *)self expression];
    expression2 = [(MFMessageCriterion *)v5 expression];
    v18 = [expression isEqualToString:expression2];

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

- (id)descriptionWithDepth:(unsigned int)depth
{
  depth = [MEMORY[0x277CCAB68] stringWithCapacity:4 * depth];
  if (depth)
  {
    depthCopy = depth;
    do
    {
      --depthCopy;
      [depth appendString:@"    "];
    }

    while (depthCopy);
  }

  if ([(MFMessageCriterion *)self criterionType]== 24)
  {
    criteria = [(MFMessageCriterion *)self criteria];
    string = [MEMORY[0x277CCAB68] string];
    v9 = [criteria count];
    if (v9)
    {
      v10 = v9;
      [string appendString:@"\n"];
      v11 = v10 - 1;
      do
      {
        v12 = [criteria objectAtIndex:v11];
        v13 = [v12 descriptionWithDepth:depth + 1];
        [string appendString:v13];

        --v11;
      }

      while (v11 != -1);
    }

    else
    {
      [string appendString:@"(none)"];
    }

    name2 = 0x277CCA000;
    v25 = MEMORY[0x277CCACA8];
    criterionIdentifier = [(MFMessageCriterion *)self criterionIdentifier];
    name = [(MFMessageCriterion *)self name];
    if (name)
    {
      v27 = MEMORY[0x277CCACA8];
      name2 = [(MFMessageCriterion *)self name];
      v28 = [v27 stringWithFormat:@"%@  Name: %@\n", depth, name2];
    }

    else
    {
      v28 = &stru_288159858;
    }

    allCriteriaMustBeSatisfied = [(MFMessageCriterion *)self allCriteriaMustBeSatisfied];
    v30 = @"No";
    if (allCriteriaMustBeSatisfied)
    {
      v30 = @"Yes";
    }

    v31 = [v25 stringWithFormat:@"%@Criterion: %@\n%@%@  All criteria must be satisfied: %@\n%@  Criteria: %@", depth, criterionIdentifier, v28, depth, v30, depth, string];
    if (name)
    {
    }
  }

  else
  {
    if ([(MFMessageCriterion *)self criterionType]== 25)
    {
      criteria2 = [(MFMessageCriterion *)self criteria];
      v15 = [criteria2 count];

      if (v15)
      {
        criteria3 = [(MFMessageCriterion *)self criteria];
        firstObject = [criteria3 firstObject];
        criteria = [firstObject descriptionWithDepth:depth + 1];
      }

      else
      {
        criteria = 0;
      }

      v32 = MEMORY[0x277CCACA8];
      string = [(MFMessageCriterion *)self criterionIdentifier];
      v31 = [v32 stringWithFormat:@"%@Criterion: %@\n%@ Sub-Criterion: \n%@", depth, string, depth, criteria];
      goto LABEL_30;
    }

    name4 = 0x277CCA000;
    v19 = MEMORY[0x277CCACA8];
    criteria = [(MFMessageCriterion *)self criterionIdentifier];
    string = [(MFMessageCriterion *)self _qualifierString];
    criterionIdentifier = [(MFMessageCriterion *)self expression];
    name3 = [(MFMessageCriterion *)self name];
    if (name3)
    {
      v22 = MEMORY[0x277CCACA8];
      name4 = [(MFMessageCriterion *)self name];
      v23 = [v22 stringWithFormat:@"%@  Name: %@\n", depth, name4];
    }

    else
    {
      v23 = &stru_288159858;
    }

    v31 = [v19 stringWithFormat:@"%@Criterion: %@\n%@  Qualifier: %@\n%@  Expression: %@\n%@", depth, criteria, depth, string, depth, criterionIdentifier, v23];
    if (name3)
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
  _qualifierString = [(MFMessageCriterion *)self _qualifierString];
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

  if (_qualifierString && ([_qualifierString isEqualToString:&stru_288159858] & 1) == 0)
  {
    [v3 setObject:_qualifierString forKey:@"Qualifier"];
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

      absoluteString = [v10 absoluteString];
      [v3 setObject:absoluteString forKey:@"AccountURL"];
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

            dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
            [v13 addObject:dictionaryRepresentation];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  criterionType = [(MFMessageCriterion *)self criterionType];
  qualifier = [(MFMessageCriterion *)self qualifier];
  expression = [(MFMessageCriterion *)self expression];
  v9 = [v5 initWithType:criterionType qualifier:qualifier expression:expression];

  v10 = [(NSString *)self->_criterionIdentifier copyWithZone:zone];
  v11 = *(v9 + 8);
  *(v9 + 8) = v10;

  v12 = [(NSString *)self->_name copyWithZone:zone];
  v13 = *(v9 + 32);
  *(v9 + 32) = v12;

  v14 = [(NSString *)self->_uniqueId copyWithZone:zone];
  v15 = *(v9 + 40);
  *(v9 + 40) = v14;

  v16 = [(NSArray *)self->_criteria copyWithZone:zone];
  v17 = *(v9 + 56);
  *(v9 + 56) = v16;

  v18 = [(NSArray *)self->_requiredHeaders copyWithZone:zone];
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

- (void)setCriterionType:(int64_t)type
{
  v4 = [objc_opt_class() stringForCriterionType:type];
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

- (void)setCriterionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(__CFString *)identifierCopy caseInsensitiveCompare:@"To or Cc"])
  {

    identifierCopy = @"AnyRecipient";
  }

  criterionIdentifier = self->_criterionIdentifier;
  self->_criterionIdentifier = &identifierCopy->isa;

  self->_type = -1;
}

- (NSString)expression
{
  expression = self->_expression;
  if (!expression)
  {
    mf_commaSeparatedString = [(NSIndexSet *)self->_libraryIdentifiers mf_commaSeparatedString];
    v5 = self->_expression;
    self->_expression = mf_commaSeparatedString;

    expression = self->_expression;
  }

  return expression;
}

- (void)setExpression:(id)expression
{
  v4 = [expression copy];
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

    criterionType = [(MFMessageCriterion *)self criterionType];
    if (criterionType <= 18)
    {
      if ((criterionType - 14) < 2 || criterionType == 9)
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
      if ((criterionType - 19) < 3)
      {
        v27 = *MEMORY[0x277D07060];
        v5 = MEMORY[0x277CBEA60];
        v6 = &v27;
LABEL_23:
        v9 = 1;
        goto LABEL_24;
      }

      if (criterionType == 38)
      {
        v29 = *MEMORY[0x277D07038];
        v5 = MEMORY[0x277CBEA60];
        v6 = &v29;
        goto LABEL_23;
      }

      if (criterionType == 39)
      {
        v28 = *MEMORY[0x277D06F50];
        v5 = MEMORY[0x277CBEA60];
        v6 = &v28;
        goto LABEL_23;
      }
    }

    criterionIdentifier = [(MFMessageCriterion *)self criterionIdentifier];
    v11 = [criterionIdentifier componentsSeparatedByString:@" or "];

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

- (BOOL)_evaluateCompoundCriterion:(id)criterion
{
  v19 = *MEMORY[0x277D85DE8];
  criterionCopy = criterion;
  allCriteriaMustBeSatisfied = [(MFMessageCriterion *)self allCriteriaMustBeSatisfied];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  criteria = [(MFMessageCriterion *)self criteria];
  v7 = [criteria countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(criteria);
      }

      v11 = [*(*(&v14 + 1) + 8 * v10) doesMessageSatisfyCriterion:criterionCopy];
      if (allCriteriaMustBeSatisfied != v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [criteria countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)_evaluateFlagCriterion:(id)criterion
{
  v12[1] = *MEMORY[0x277D85DE8];
  criterionCopy = criterion;
  expression = [(MFMessageCriterion *)self expression];
  v11 = expression;
  v12[0] = &unk_2881756C8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v7 = IMAPMessageFlagsByApplyingDictionary(0, v6);
  messageFlags = [criterionCopy messageFlags];

  LOBYTE(self) = [(MFMessageCriterion *)self qualifier]== 3;
  v9 = *MEMORY[0x277D85DE8];
  return self ^ ((messageFlags & v7) == 0);
}

- (BOOL)_evaluateHeaderCriterion:(id)criterion
{
  v40 = *MEMORY[0x277D85DE8];
  criterionCopy = criterion;
  expression = [(MFMessageCriterion *)self expression];
  qualifier = [(MFMessageCriterion *)self qualifier];
  if (qualifier == 3 || expression && [expression length])
  {
    v25 = criterionCopy;
    headers = [criterionCopy headers];
    [(MFMessageCriterion *)self _headersRequiredForEvaluation];
    v35 = 0u;
    v36 = 0u;
    v7 = qualifier == 4;
    v37 = 0u;
    obj = v38 = 0u;
    v28 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v28)
    {
      v27 = *v36;
      LOBYTE(v8) = 1;
      v31 = expression;
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
        v11 = [headers copyHeadersForKey:v10];
        v34 = [MEMORY[0x277D24F40] isStructuredHeaderKey:v10];
        v12 = [v11 count];
        v13 = v12;
        v30 = v9;
        if (qualifier != 3 || v12)
        {
          if (v12)
          {
            v14 = 0;
            v32 = v12;
            v33 = v11;
            do
            {
              v15 = [v11 objectAtIndex:v14];
              if (v15 && [expression length])
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

                    if (qualifier == 4)
                    {
                      v8 = v22;
                    }

                    else
                    {
                      v8 = !v22;
                    }

                    if (qualifier == 4)
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

                expression = v31;
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
          v7 |= [expression length] == 0;
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

    criterionCopy = v25;
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

- (BOOL)_evaluateSenderHeaderCriterion:(id)criterion
{
  firstSender = [criterion firstSender];
  mf_addressComment = [firstSender mf_addressComment];
  mf_uncommentedAddress = [firstSender mf_uncommentedAddress];
  v7 = [(MFMessageCriterion *)self _evaluatePartOfStructure:mf_uncommentedAddress]|| [(MFMessageCriterion *)self _evaluatePartOfStructure:mf_addressComment];

  return v7;
}

- (BOOL)_evaluatePartOfStructure:(id)structure
{
  structureCopy = structure;
  if (structureCopy)
  {
    expression = [(MFMessageCriterion *)self expression];
    qualifier = [(MFMessageCriterion *)self qualifier];
    if (qualifier > 2)
    {
      switch(qualifier)
      {
        case 7:
          v7 = [structureCopy localizedCaseInsensitiveCompare:expression] != 0;
          goto LABEL_17;
        case 4:
          v8 = 1;
LABEL_15:
          v9 = 385;
          goto LABEL_16;
        case 3:
          v7 = [structureCopy localizedCaseInsensitiveCompare:expression] == 0;
LABEL_17:

          goto LABEL_18;
      }

LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    if (qualifier == 1)
    {
      v8 = 0;
      v9 = 393;
    }

    else
    {
      if (qualifier != 2)
      {
        goto LABEL_14;
      }

      v8 = 0;
      v9 = 397;
    }

LABEL_16:
    v10 = [structureCopy length];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = [structureCopy rangeOfString:expression options:v9 range:0 locale:{v10, currentLocale}];

    v7 = v8 ^ (v12 != 0x7FFFFFFFFFFFFFFFLL);
    goto LABEL_17;
  }

  v7 = [(MFMessageCriterion *)self qualifier]== 4;
LABEL_18:

  return v7;
}

- (BOOL)_evaluateFullNameCriterion:(id)criterion
{
  v26 = *MEMORY[0x277D85DE8];
  headers = [criterion headers];
  array = [MEMORY[0x277CBEB18] array];
  copyAddressListForTo = [headers copyAddressListForTo];
  if ([copyAddressListForTo count])
  {
    [array addObjectsFromArray:copyAddressListForTo];
  }

  copyAddressListForCc = [headers copyAddressListForCc];
  if ([copyAddressListForCc count])
  {
    [array addObjectsFromArray:copyAddressListForCc];
  }

  v20 = headers;
  array2 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = array;
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
        mf_addressComment = [v13 mf_addressComment];
        lowercaseString = [mf_addressComment lowercaseString];

        if (lowercaseString && [v13 caseInsensitiveCompare:lowercaseString])
        {
          [array2 addObject:lowercaseString];
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

- (BOOL)_evaluateIsDigitallySignedCriterion:(id)criterion
{
  criterionCopy = criterion;
  v4 = [criterionCopy messageBodyUpdatingFlags:0];
  [criterionCopy calculateAttachmentInfoFromBody:v4];

  messageFlags = [criterionCopy messageFlags];
  return (messageFlags >> 23) & 1;
}

- (BOOL)_evaluateIsEncryptedCriterion:(id)criterion
{
  criterionCopy = criterion;
  v4 = [criterionCopy messageBodyUpdatingFlags:0];
  [criterionCopy calculateAttachmentInfoFromBody:v4];

  messageFlags = [criterionCopy messageFlags];
  return (messageFlags >> 3) & 1;
}

- (BOOL)_evaluateAttachmentCriterion:(id)criterion
{
  v30 = *MEMORY[0x277D85DE8];
  criterionCopy = criterion;
  expression = [(MFMessageCriterion *)self expression];
  v6 = expression;
  if (!expression || ([expression isEqualToString:&stru_288159858] & 1) != 0)
  {
    v7 = 0;
    goto LABEL_30;
  }

  v8 = [criterionCopy messageBodyUpdatingFlags:0];
  v9 = +[MFActivityMonitor currentMonitor];
  error = [v9 error];
  [v9 setError:0];
  [criterionCopy calculateAttachmentInfoFromBody:v8];
  error2 = [v9 error];
  code = [error2 code];

  [v9 setError:error];
  if ((code - 1037) > 0xFFFFFFFFFFFFFFFDLL || ![criterionCopy numberOfAttachments])
  {
    v7 = 0;
    goto LABEL_29;
  }

  qualifier = [(MFMessageCriterion *)self qualifier];
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
  v23 = error;
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

      mimePart = [*(*(&v25 + 1) + 8 * i) mimePart];
      attachmentFilename = [mimePart attachmentFilename];

      if (qualifier == 3)
      {
        if (([attachmentFilename isEqualToString:v6] & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_23:
        v7 = 1;
        goto LABEL_26;
      }

      if (qualifier != 2)
      {
        if (qualifier == 1)
        {
          if ([attachmentFilename hasPrefix:v6])
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }

        v7 = qualifier == 4 * ([attachmentFilename rangeOfString:v6 options:1] == 0x7FFFFFFFFFFFFFFFLL);
LABEL_26:

        goto LABEL_27;
      }

      if ([attachmentFilename hasSuffix:v6])
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
  error = v23;
  v8 = v24;
LABEL_28:

LABEL_29:
LABEL_30:

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_evaluateAccountCriterion:(id)criterion
{
  criterionCopy = criterion;
  expression = [(MFMessageCriterion *)self expression];
  v6 = [MailAccount accountWithPath:expression];
  account = [criterionCopy account];

  return account == v6;
}

- (BOOL)_evaluateDateCriterion:(id)criterion
{
  criterionCopy = criterion;
  expression = [(MFMessageCriterion *)self expression];
  qualifier = [(MFMessageCriterion *)self qualifier];
  criterionType = [(MFMessageCriterion *)self criterionType];
  if (!expression)
  {
    goto LABEL_6;
  }

  v8 = criterionType;
  if ([expression intValue] < 1)
  {
    goto LABEL_6;
  }

  if (v8 == 11)
  {
    dateReceived = [criterionCopy dateReceived];
    goto LABEL_8;
  }

  if (v8 != 10)
  {
LABEL_6:
    v10 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  dateReceived = [criterionCopy dateSent];
LABEL_8:
  v10 = dateReceived;
  [dateReceived timeIntervalSince1970];
  v13 = v12;
  [expression doubleValue];
  v15 = v13 <= v14;
  if (qualifier != 5)
  {
    v15 = 0;
  }

  if (qualifier == 6)
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

- (BOOL)_evaluateConversationIDCriterion:(id)criterion
{
  v15 = *MEMORY[0x277D85DE8];
  criterionCopy = criterion;
  expression = [(MFMessageCriterion *)self expression];
  longLongValue = [expression longLongValue];

  if ([(MFMessageCriterion *)self qualifier]== 3)
  {
    v7 = [criterionCopy conversationID] == longLongValue;
  }

  else if ([(MFMessageCriterion *)self qualifier]== 7)
  {
    v7 = [criterionCopy conversationID] != longLongValue;
  }

  else
  {
    v8 = vm_imap_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      qualifier = [(MFMessageCriterion *)self qualifier];
      v13 = 2048;
      criterionType = [(MFMessageCriterion *)self criterionType];
      _os_log_impl(&dword_2720B1000, v8, OS_LOG_TYPE_DEFAULT, "Unhandled qualifier %ld for type %ld", &v11, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_evaluateMailboxCriterion:(id)criterion
{
  criterionCopy = criterion;
  if ([(MFMessageCriterion *)self qualifier]== 3)
  {
    expression = [(MFMessageCriterion *)self expression];
    originalMailboxURL = [criterionCopy originalMailboxURL];
    v7 = [expression isEqualToString:originalMailboxURL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)doesMessageSatisfyCriterion:(id)criterion
{
  v12 = *MEMORY[0x277D85DE8];
  criterionCopy = criterion;
  v5 = 1;
  switch([(MFMessageCriterion *)self criterionType])
  {
    case 1:
    case 9:
    case 38:
    case 39:
      v6 = [(MFMessageCriterion *)self _evaluateHeaderCriterion:criterionCopy];
      goto LABEL_19;
    case 3:
    case 4:
      v6 = [(MFMessageCriterion *)self _evaluateAddressBookCriterion:criterionCopy];
      goto LABEL_19;
    case 7:
      v6 = [(MFMessageCriterion *)self _evaluateAccountCriterion:criterionCopy];
      goto LABEL_19;
    case 8:
      break;
    case 10:
    case 11:
      v6 = [(MFMessageCriterion *)self _evaluateDateCriterion:criterionCopy];
      goto LABEL_19;
    case 12:
    case 13:
      v6 = [(MFMessageCriterion *)self _evaluateAddressHistoryCriterion:criterionCopy];
      goto LABEL_19;
    case 14:
    case 15:
      v6 = [(MFMessageCriterion *)self _evaluateFullNameCriterion:criterionCopy];
      goto LABEL_19;
    case 16:
      v6 = [(MFMessageCriterion *)self _evaluateIsDigitallySignedCriterion:criterionCopy];
      goto LABEL_19;
    case 17:
      v6 = [(MFMessageCriterion *)self _evaluateIsEncryptedCriterion:criterionCopy];
      goto LABEL_19;
    case 18:
      v6 = [(MFMessageCriterion *)self _evaluateAttachmentCriterion:criterionCopy];
      goto LABEL_19;
    case 19:
      v6 = [(MFMessageCriterion *)self _evaluatePriorityIsHighCriterion:criterionCopy];
      goto LABEL_19;
    case 20:
      v6 = [(MFMessageCriterion *)self _evaluatePriorityIsNormalCriterion:criterionCopy];
      goto LABEL_19;
    case 21:
      v6 = [(MFMessageCriterion *)self _evaluatePriorityIsLowCriterion:criterionCopy];
      goto LABEL_19;
    case 22:
      v6 = [(MFMessageCriterion *)self _evaluateMailboxCriterion:criterionCopy];
      goto LABEL_19;
    case 24:
      v6 = [(MFMessageCriterion *)self _evaluateCompoundCriterion:criterionCopy];
      goto LABEL_19;
    case 26:
      v6 = [(MFMessageCriterion *)self _evaluateFlagCriterion:criterionCopy];
      goto LABEL_19;
    case 33:
      v6 = [(MFMessageCriterion *)self _evaluateConversationIDCriterion:criterionCopy];
      goto LABEL_19;
    case 34:
      v6 = [(MFMessageCriterion *)self _evaluateSenderHeaderCriterion:criterionCopy];
LABEL_19:
      v5 = v6;
      break;
    default:
      v9 = vm_imap_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        criterionType = [(MFMessageCriterion *)self criterionType];
        _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "Unhandled criterion type %ld", &v10, 0xCu);
      }

      v5 = 0;
      break;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)messageRuleQualifierForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"BeginsWith"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"EndsWith"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"IsEqualTo"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"IsNotEqualTo"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"DoesNotContain"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"IsLessThan"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"IsGreaterThan"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"ASCIIContains"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stringForMessageRuleQualifier:(int)qualifier
{
  if (qualifier > 8)
  {
    return 0;
  }

  else
  {
    return off_279E34138[qualifier];
  }
}

+ (int64_t)criterionTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Header"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Body"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SenderIsInAddressBook"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"SenderIsNotInAddressBook"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"SenderHeader"])
  {
    v4 = 34;
  }

  else if ([stringCopy isEqualToString:@"Account"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"AnyMessage"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"AnyRecipient"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"DateReceived"])
  {
    v4 = 11;
  }

  else if ([stringCopy isEqualToString:@"DateLastViewed"])
  {
    v4 = 28;
  }

  else if ([stringCopy isEqualToString:@"DateSent"])
  {
    v4 = 10;
  }

  else if ([stringCopy isEqualToString:@"SenderIsInAddressHistory"])
  {
    v4 = 12;
  }

  else if ([stringCopy isEqualToString:@"SenderIsNotInAddressHistory"])
  {
    v4 = 13;
  }

  else if ([stringCopy isEqualToString:@"AnyRecipientIncludesFullName"])
  {
    v4 = 14;
  }

  else if ([stringCopy isEqualToString:@"NoRecipientIncludesFullName"])
  {
    v4 = 15;
  }

  else if ([stringCopy isEqualToString:@"IsDigitallySigned"])
  {
    v4 = 16;
  }

  else if ([stringCopy isEqualToString:@"IsEncrypted"])
  {
    v4 = 17;
  }

  else if ([stringCopy isEqualToString:@"PriorityIsNormal"])
  {
    v4 = 20;
  }

  else if ([stringCopy isEqualToString:@"PriorityIsHigh"])
  {
    v4 = 19;
  }

  else if ([stringCopy isEqualToString:@"PriorityIsLow"])
  {
    v4 = 21;
  }

  else if ([stringCopy isEqualToString:@"AnyAttachment"])
  {
    v4 = 18;
  }

  else if ([stringCopy isEqualToString:@"Mailbox"])
  {
    v4 = 22;
  }

  else if ([stringCopy isEqualToString:@"MessageNumber"])
  {
    v4 = 23;
  }

  else if ([stringCopy isEqualToString:@"ExternalID"])
  {
    v4 = 35;
  }

  else if ([stringCopy isEqualToString:@"Compound"])
  {
    v4 = 24;
  }

  else if ([stringCopy isEqualToString:@"Flag"])
  {
    v4 = 26;
  }

  else if ([stringCopy isEqualToString:@"NotInTrashMailbox"])
  {
    v4 = 27;
  }

  else if ([stringCopy isEqualToString:@"ContainsAttachments"])
  {
    v4 = 29;
  }

  else if ([stringCopy isEqualToString:@"SpotlightSearch"])
  {
    v4 = 32;
  }

  else if ([stringCopy isEqualToString:@"ConversationID"])
  {
    v4 = 33;
  }

  else if ([stringCopy isEqualToString:@"Negation"])
  {
    v4 = 25;
  }

  else if ([stringCopy isEqualToString:@"MessageIdHash"])
  {
    v4 = 36;
  }

  else if ([stringCopy isEqualToString:@"ListIDHash"])
  {
    v4 = 37;
  }

  else if ([stringCopy isEqualToString:@"ToRecipient"])
  {
    v4 = 38;
  }

  else if ([stringCopy isEqualToString:@"CcRecipient"])
  {
    v4 = 39;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)stringForCriterionType:(int64_t)type
{
  if ((type - 1) > 0x26)
  {
    return 0;
  }

  else
  {
    return off_279E34180[type - 1];
  }
}

- (void)setCriteria:(id)criteria
{
  if (self->_criteria != criteria)
  {
    v4 = [criteria copy];
    criteria = self->_criteria;
    self->_criteria = v4;
  }

  [(MFMessageCriterion *)self setCriterionType:24];
}

- (void)setDateIsRelative:(BOOL)relative
{
  if (relative)
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
  expression = [(MFMessageCriterion *)self expression];
  [expression doubleValue];
  v4 = [v2 dateWithTimeIntervalSince1970:?];

  return v4;
}

+ (id)expressionForDate:(id)date
{
  v3 = MEMORY[0x277CCACA8];
  [date timeIntervalSince1970];
  return [v3 stringWithFormat:@"%f", v4];
}

- (id)simplifyOnce
{
  if ([(MFMessageCriterion *)self criterionType]== 24)
  {
    criteria = [(MFMessageCriterion *)self criteria];
    v4 = [criteria count];
    if (v4)
    {
      v5 = v4;
      if (v4 == 1)
      {
        lastObject = [criteria lastObject];
        selfCopy = [lastObject simplifiedCriterion];

        if (selfCopy)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      selfCopy = 0;
      v8 = 0;
      for (i = 0; i != v5; ++i)
      {
        v10 = [criteria objectAtIndex:i];
        simplifiedCriterion = [v10 simplifiedCriterion];
        if ([simplifiedCriterion criterionType] == 24 && ((v12 = -[MFMessageCriterion allCriteriaMustBeSatisfied](self, "allCriteriaMustBeSatisfied"), v12 == objc_msgSend(simplifiedCriterion, "allCriteriaMustBeSatisfied")) || (objc_msgSend(simplifiedCriterion, "criteria"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, !v14)))
        {
          if (!selfCopy)
          {
            selfCopy = objc_alloc_init(MFMessageCriterion);
            [(MFMessageCriterion *)selfCopy setCriterionType:24];
            [(MFMessageCriterion *)selfCopy setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
            array = [MEMORY[0x277CBEB18] array];

            v18 = [criteria subarrayWithRange:{0, i}];
            [array addObjectsFromArray:v18];

            v8 = array;
          }

          criteria2 = [simplifiedCriterion criteria];
          [v8 addObjectsFromArray:criteria2];
        }

        else
        {
          if (simplifiedCriterion != v10 && !selfCopy)
          {
            selfCopy = objc_alloc_init(MFMessageCriterion);
            [(MFMessageCriterion *)selfCopy setCriterionType:24];
            [(MFMessageCriterion *)selfCopy setAllCriteriaMustBeSatisfied:[(MFMessageCriterion *)self allCriteriaMustBeSatisfied]];
            array2 = [MEMORY[0x277CBEB18] array];

            v16 = [criteria subarrayWithRange:{0, i}];
            [array2 addObjectsFromArray:v16];

            v8 = array2;
          }

          [v8 addObject:simplifiedCriterion];
        }
      }

      if (selfCopy)
      {
        [(MFMessageCriterion *)selfCopy setCriteria:v8];

        goto LABEL_23;
      }
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_22:
  selfCopy = self;
LABEL_23:

  return selfCopy;
}

- (id)simplifiedCriterion
{
  selfCopy = self;
  simplifyOnce = [(MFMessageCriterion *)selfCopy simplifyOnce];
  if (simplifyOnce != selfCopy)
  {
    v4 = 0;
    do
    {
      v5 = selfCopy;
      selfCopy = simplifyOnce;

      simplifyOnce = [(MFMessageCriterion *)selfCopy simplifyOnce];

      if (simplifyOnce == selfCopy)
      {
        break;
      }
    }

    while (v4++ < 9);
  }

  return simplifyOnce;
}

+ (id)criterionForMailbox:(id)mailbox
{
  uRLString = [mailbox URLString];
  v5 = [self criterionForMailboxURL:uRLString];

  return v5;
}

+ (id)criterionForMailboxURL:(id)l
{
  lCopy = l;
  v4 = [[MFMessageCriterion alloc] initWithType:22 qualifier:3 expression:lCopy];

  return v4;
}

+ (id)criterionForAccount:(id)account
{
  accountCopy = account;
  v4 = [MFMessageCriterion alloc];
  uRLString = [accountCopy URLString];

  v6 = [(MFMessageCriterion *)v4 initWithType:22 qualifier:1 expression:uRLString];

  return v6;
}

+ (id)criterionExcludingMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  if ([mailboxesCopy count])
  {
    v4 = [mailboxesCopy vf_map:&__block_literal_global_265];
    v5 = [MFMessageCriterion orCompoundCriterionWithCriteria:v4];
    v6 = [MFMessageCriterion notCriterionWithCriterion:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)messageIsDeletedCriterion:(BOOL)criterion
{
  criterionCopy = criterion;
  v4 = [MFMessageCriterion alloc];
  if (criterionCopy)
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

+ (id)messageIsJournaledCriterion:(BOOL)criterion
{
  criterionCopy = criterion;
  v4 = [MFMessageCriterion alloc];
  if (criterionCopy)
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

+ (id)criterionForNotDeletedConversationID:(int64_t)d
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [MFMessageCriterion messageIsDeletedCriterion:0];
  v10[0] = v4;
  v5 = [MFMessageCriterion criterionForConversationID:d];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [MFMessageCriterion andCompoundCriterionWithCriteria:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)criterionForConversationID:(int64_t)d
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", d];
  v4 = [[MFMessageCriterion alloc] initWithType:33 qualifier:3 expression:v3];

  return v4;
}

+ (id)criterionForLibraryID:(id)d
{
  dCopy = d;
  v4 = [[MFMessageCriterion alloc] initWithType:23 qualifier:3 expression:dCopy];

  return v4;
}

+ (id)messageIsServerSearchResultCriterion:(BOOL)criterion
{
  criterionCopy = criterion;
  v4 = [MFMessageCriterion alloc];
  if (criterionCopy)
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

  expression = [(MFMessageCriterion *)self expression];
  v4 = [expression isEqualToString:@"MessageSenderIsVIP"];

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

+ (id)criterionForDateReceivedOlderThanDate:(id)date
{
  dateCopy = date;
  v5 = [MFMessageCriterion alloc];
  v6 = [self expressionForDate:dateCopy];

  v7 = [(MFMessageCriterion *)v5 initWithType:11 qualifier:5 expression:v6];

  return v7;
}

+ (id)notCriterionWithCriterion:(id)criterion
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (criterion)
  {
    criterionCopy = criterion;
    v4 = objc_alloc_init(MFMessageCriterion);
    v8[0] = criterionCopy;
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

+ (id)andCompoundCriterionWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  if ([criteriaCopy count])
  {
    if ([criteriaCopy count] == 1)
    {
      lastObject = [criteriaCopy lastObject];
    }

    else
    {
      lastObject = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)lastObject setCriterionType:24];
      [(MFMessageCriterion *)lastObject setAllCriteriaMustBeSatisfied:1];
      [(MFMessageCriterion *)lastObject setCriteria:criteriaCopy];
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

+ (id)orCompoundCriterionWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  if ([criteriaCopy count])
  {
    if ([criteriaCopy count] == 1)
    {
      lastObject = [criteriaCopy lastObject];
    }

    else
    {
      lastObject = objc_alloc_init(MFMessageCriterion);
      [(MFMessageCriterion *)lastObject setCriterionType:24];
      [(MFMessageCriterion *)lastObject setAllCriteriaMustBeSatisfied:0];
      [(MFMessageCriterion *)lastObject setCriteria:criteriaCopy];
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (void)setIncludeRelatedMessages:(BOOL)messages
{
  if (messages)
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
@interface PKBusinessChatTransactionDisputeContext
- (PKBusinessChatTransactionDisputeContext)initWithPaymentPass:(id)pass transaction:(id)transaction account:(id)account accountUser:(id)user familyMember:(id)member physicalCards:(id)cards intent:(int64_t)intent;
- (PKBusinessChatTransactionDisputeContext)initWithPaymentPass:(id)pass transaction:(id)transaction account:(id)account accountUser:(id)user familyMember:(id)member physicalCards:(id)cards topic:(id)topic;
- (id)_formattedBodyTextForTopicBodyText:(id)text;
- (id)_formattedTransactionDate;
- (id)_replacePlaceholder:(id)placeholder withValue:(id)value inBodyText:(id)text;
- (id)bodyText;
- (id)groupParameters;
- (id)intentParameters;
@end

@implementation PKBusinessChatTransactionDisputeContext

- (PKBusinessChatTransactionDisputeContext)initWithPaymentPass:(id)pass transaction:(id)transaction account:(id)account accountUser:(id)user familyMember:(id)member physicalCards:(id)cards intent:(int64_t)intent
{
  passCopy = pass;
  transactionCopy = transaction;
  accountCopy = account;
  userCopy = user;
  memberCopy = member;
  cardsCopy = cards;
  v28.receiver = self;
  v28.super_class = PKBusinessChatTransactionDisputeContext;
  v19 = [(PKBusinessChatTransactionDisputeContext *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_paymentPass, pass);
    objc_storeStrong(&v20->_transaction, transaction);
    objc_storeStrong(&v20->_account, account);
    objc_storeStrong(&v20->_accountUser, user);
    objc_storeStrong(&v20->_familyMember, member);
    v21 = [cardsCopy copy];
    physicalCards = v20->_physicalCards;
    v20->_physicalCards = v21;

    v20->_intent = intent;
    if (userCopy)
    {
      v23 = [userCopy isCurrentUser] ^ 1;
    }

    else
    {
      v23 = 0;
    }

    v20->_disputingAccountUserTransaction = v23;
  }

  return v20;
}

- (PKBusinessChatTransactionDisputeContext)initWithPaymentPass:(id)pass transaction:(id)transaction account:(id)account accountUser:(id)user familyMember:(id)member physicalCards:(id)cards topic:(id)topic
{
  passCopy = pass;
  transactionCopy = transaction;
  accountCopy = account;
  userCopy = user;
  memberCopy = member;
  cardsCopy = cards;
  topicCopy = topic;
  v29.receiver = self;
  v29.super_class = PKBusinessChatTransactionDisputeContext;
  v18 = [(PKBusinessChatTransactionDisputeContext *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_paymentPass, pass);
    objc_storeStrong(&v19->_transaction, transaction);
    objc_storeStrong(&v19->_account, account);
    objc_storeStrong(&v19->_accountUser, user);
    objc_storeStrong(&v19->_familyMember, member);
    v20 = [cardsCopy copy];
    physicalCards = v19->_physicalCards;
    v19->_physicalCards = v20;

    v19->_intent = 5;
    objc_storeStrong(&v19->_topic, topic);
    if (userCopy)
    {
      v22 = [userCopy isCurrentUser] ^ 1;
    }

    else
    {
      v22 = 0;
    }

    v19->_disputingAccountUserTransaction = v22;
  }

  return v19;
}

- (id)intentParameters
{
  topic = self->_topic;
  if (topic)
  {
    businessChatTargetDialog = [(PKAccountSupportTopic *)topic businessChatTargetDialog];
LABEL_8:
    v6 = businessChatTargetDialog;
    goto LABEL_9;
  }

  intent = self->_intent;
  if (intent > 0xD)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E8013378[intent];
  }

  if (self->_disputingAccountUserTransaction)
  {
    businessChatTargetDialog = [(__CFString *)v6 stringByAppendingString:@"_alt"];
    goto LABEL_8;
  }

LABEL_9:
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:v6 forKeyedSubscript:@"targetDialog"];
  serviceIdentifier = [(PKPaymentTransaction *)self->_transaction serviceIdentifier];
  [v7 setObject:serviceIdentifier forKeyedSubscript:@"transactionId"];

  uniqueID = [(PKPaymentPass *)self->_paymentPass uniqueID];
  [v7 setObject:uniqueID forKeyedSubscript:@"passUniqueId"];

  associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_paymentPass associatedAccountServiceAccountIdentifier];
  [v7 setObject:associatedAccountServiceAccountIdentifier forKeyedSubscript:@"accountID"];

  effectiveTransactionSource = [(PKPaymentTransaction *)self->_transaction effectiveTransactionSource];
  v12 = PKPaymentTransactionSourceToString();
  [v7 setObject:v12 forKeyedSubscript:@"paymentMethod"];

  if (effectiveTransactionSource == 5)
  {
    cardNumberSuffix = [(PKPaymentTransaction *)self->_transaction cardNumberSuffix];
    physicalCards = self->_physicalCards;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __59__PKBusinessChatTransactionDisputeContext_intentParameters__block_invoke;
    v38[3] = &unk_1E80132B0;
    v39 = cardNumberSuffix;
    v15 = cardNumberSuffix;
    v16 = [(NSSet *)physicalCards pk_anyObjectPassingTest:v38];
  }

  else
  {
    v16 = 0;
  }

  [v16 state];
  v17 = PKStringFromPhysicalCardState();
  [v7 setObject:v17 forKeyedSubscript:@"physicalCardStatus"];

  amount = [(PKPaymentTransaction *)self->_transaction amount];
  stringValue = [amount stringValue];
  [v7 setObject:stringValue forKeyedSubscript:@"transactionAmount"];

  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  displayName = [merchant displayName];
  [v7 setObject:displayName forKeyedSubscript:@"transactionMerchantName"];

  transactionDate = [(PKPaymentTransaction *)self->_transaction transactionDate];
  v23 = PKW3CDateStringFromDate();
  [v7 setObject:v23 forKeyedSubscript:@"transactionDate"];

  accountUser = self->_accountUser;
  if (accountUser)
  {
    [(PKAccountUser *)accountUser accountState];
    v25 = PKAccountStateToString();
    [v7 setObject:v25 forKeyedSubscript:@"transactorAccountState"];

    accessLevel = [(PKAccountUser *)self->_accountUser accessLevel];
    v27 = @"participant";
    if (accessLevel != 2)
    {
      v27 = 0;
    }

    if (accessLevel == 1)
    {
      v28 = @"owner";
    }

    else
    {
      v28 = v27;
    }

    [v7 setObject:v28 forKeyedSubscript:@"transactorAccountRole"];
    firstName = [(PKAccountUser *)self->_accountUser firstName];
    [v7 setObject:firstName forKeyedSubscript:@"transactorFirstName"];
  }

  else
  {
    [(PKAccount *)self->_account state];
    v30 = PKAccountStateToString();
    [v7 setObject:v30 forKeyedSubscript:@"transactorAccountState"];

    accessLevel2 = [(PKAccount *)self->_account accessLevel];
    v32 = @"participant";
    if (accessLevel2 != 2)
    {
      v32 = 0;
    }

    if (accessLevel2 == 1)
    {
      v33 = @"owner";
    }

    else
    {
      v33 = v32;
    }

    [v7 setObject:v33 forKeyedSubscript:@"transactorAccountRole"];
  }

  if ([(PKPaymentTransaction *)self->_transaction disputeStatus])
  {
    v34 = @"true";
  }

  else
  {
    v34 = @"false";
  }

  [v7 setObject:v34 forKeyedSubscript:@"disputeInProgress"];
  [(PKPaymentTransaction *)self->_transaction transactionType];
  v35 = PKPaymentTransactionTypeToString();
  [v7 setObject:v35 forKeyedSubscript:@"transactionType"];

  v36 = [v7 copy];

  return v36;
}

uint64_t __59__PKBusinessChatTransactionDisputeContext_intentParameters__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 FPANSuffix];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (id)groupParameters
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (self->_topic)
  {
    businessChatPage = [(PKAccountSupportTopic *)self->_topic businessChatPage];
  }

  else
  {
    intent = self->_intent;
    if (intent > 0xD)
    {
      v4 = 0;
    }

    else
    {
      v4 = off_1E80133E8[intent];
    }

    if (!self->_disputingAccountUserTransaction)
    {
      goto LABEL_9;
    }

    businessChatPage = [(__CFString *)v4 stringByAppendingString:@"::alt"];
  }

  v4 = businessChatPage;
LABEL_9:
  v7[0] = @"domain";
  v7[1] = @"origin";
  v8[0] = @"apple_pay";
  v8[1] = @"Wallet";
  v7[2] = @"page";
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (id)bodyText
{
  topic = self->_topic;
  if (topic)
  {
    bodyText = [(PKAccountSupportTopic *)topic bodyText];
    v5 = [(PKBusinessChatTransactionDisputeContext *)self _formattedBodyTextForTopicBodyText:bodyText];
    goto LABEL_21;
  }

  bodyText = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentAmount];
  _formattedTransactionDate = [(PKBusinessChatTransactionDisputeContext *)self _formattedTransactionDate];
  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  displayName = [merchant displayName];

  familyMember = self->_familyMember;
  if (familyMember && ![(PKFamilyMember *)familyMember isMe])
  {
    goto LABEL_13;
  }

  accountUser = self->_accountUser;
  if (accountUser)
  {
    altDSID = [(PKAccountUser *)accountUser altDSID];
    v12 = PKCurrentUserAltDSID();
    v13 = altDSID;
    v14 = v12;
    v15 = v14;
    if (v13 == v14)
    {

      givenName = 0;
LABEL_14:

      goto LABEL_15;
    }

    if (v13 && v14)
    {
      v16 = [v13 isEqualToString:v14];

      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

LABEL_13:
    v18 = MEMORY[0x1E69B8740];
    v19 = self->_familyMember;
    nameComponents = [(PKAccountUser *)self->_accountUser nameComponents];
    v13 = [v18 contactForFamilyMember:v19 nameComponents:nameComponents imageData:0];

    givenName = [v13 givenName];
    goto LABEL_14;
  }

LABEL_10:
  givenName = 0;
LABEL_15:
  switch(self->_intent)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      v21 = PKLocalizedFeatureStringWithDefaultValue();
      goto LABEL_19;
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
      v21 = PKLocalizedFeatureStringWithDefaultValue();
LABEL_19:
      v5 = v21;
      break;
    default:
      v5 = 0;
      break;
  }

LABEL_21:

  return v5;
}

- (id)_formattedBodyTextForTopicBodyText:(id)text
{
  transaction = self->_transaction;
  textCopy = text;
  merchant = [(PKPaymentTransaction *)transaction merchant];
  displayName = [merchant displayName];
  v8 = [(PKBusinessChatTransactionDisputeContext *)self _replacePlaceholder:@"{merchantName}" withValue:displayName inBodyText:textCopy];

  _formattedTransactionDate = [(PKBusinessChatTransactionDisputeContext *)self _formattedTransactionDate];
  v10 = [(PKBusinessChatTransactionDisputeContext *)self _replacePlaceholder:@"{transactionDate}" withValue:_formattedTransactionDate inBodyText:v8];

  formattedBalanceAdjustmentAmount = [(PKPaymentTransaction *)self->_transaction formattedBalanceAdjustmentAmount];
  v12 = [(PKBusinessChatTransactionDisputeContext *)self _replacePlaceholder:@"{transactionAmount}" withValue:formattedBalanceAdjustmentAmount inBodyText:v10];

  return v12;
}

- (id)_replacePlaceholder:(id)placeholder withValue:(id)value inBodyText:(id)text
{
  placeholderCopy = placeholder;
  valueCopy = value;
  textCopy = text;
  v10 = textCopy;
  if (!textCopy)
  {
    goto LABEL_5;
  }

  if (([textCopy containsString:placeholderCopy] & 1) == 0)
  {
    v11 = v10;
    goto LABEL_7;
  }

  if (!valueCopy)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = [v10 stringByReplacingOccurrencesOfString:placeholderCopy withString:valueCopy];
LABEL_7:
  v12 = v11;
LABEL_8:

  return v12;
}

- (id)_formattedTransactionDate
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [v3 setDateStyle:3];
  [v3 setTimeStyle:1];
  transactionDate = [(PKPaymentTransaction *)self->_transaction transactionDate];
  v6 = [v3 stringFromDate:transactionDate];

  return v6;
}

@end
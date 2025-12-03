@interface PKPeerPaymentMessage
- (BOOL)hasBeenSent;
- (BOOL)isFromMe;
- (BOOL)isObserver;
- (NSDate)recurringPaymentStartDate;
- (NSDecimalNumber)amount;
- (NSUUID)identifier;
- (PKCurrencyAmount)currencyAmount;
- (PKPeerPaymentMessage)initWithType:(unint64_t)type;
- (PKPeerPaymentMessage)initWithType:(unint64_t)type session:(id)session;
- (PKPeerPaymentMessage)initWithUnderlyingMessage:(id)message;
- (PKPeerPaymentMessageLocalProperties)localProperties;
- (PKPeerPaymentRecurringPaymentMemo)recurringPaymentMemo;
- (PKPeerPaymentRequestToken)requestToken;
- (id)_recurringPaymentSummaryTextWithAmount:(id)amount memo:(id)memo;
- (id)_requestDeviceScoreIdentifier;
- (id)description;
- (int64_t)recurringPaymentColor;
- (unint64_t)recurringPaymentFrequency;
- (void)_updateDataURL;
- (void)_updateLayoutContents;
- (void)_updateSummaryText;
- (void)reportMessageSentWithLocalProperties:(id)properties;
- (void)setAmount:(id)amount;
- (void)setContext:(unint64_t)context;
- (void)setCurrency:(id)currency;
- (void)setCurrencyAmount:(id)amount;
- (void)setLocalProperties:(id)properties;
- (void)setMemo:(id)memo;
- (void)setMessagesGroupIdentifier:(id)identifier;
- (void)setPaymentIdentifier:(id)identifier;
- (void)setPaymentSignature:(id)signature;
- (void)setRecipientAddress:(id)address;
- (void)setRecurringPaymentFrequency:(unint64_t)frequency;
- (void)setRecurringPaymentIdentifier:(id)identifier;
- (void)setRecurringPaymentMemo:(id)memo;
- (void)setRecurringPaymentStartDate:(id)date;
- (void)setRequestToken:(id)token;
- (void)setSenderAddress:(id)address;
- (void)setTransactionIdentifier:(id)identifier;
- (void)setType:(unint64_t)type;
- (void)updateWithPeerPaymentPerformResponse:(id)response;
@end

@implementation PKPeerPaymentMessage

- (PKPeerPaymentMessage)initWithType:(unint64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E6973F38]);
  v6 = [(PKPeerPaymentMessage *)self initWithType:type session:v5];

  return v6;
}

- (PKPeerPaymentMessage)initWithType:(unint64_t)type session:(id)session
{
  sessionCopy = session;
  v7 = objc_alloc(MEMORY[0x1E6973F20]);
  v8 = sessionCopy;
  if (!sessionCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6973F38]);
  }

  v9 = [v7 initWithSession:v8];
  v10 = [(PKPeerPaymentMessage *)self initWithUnderlyingMessage:v9];

  if (!sessionCopy)
  {
  }

  if (v10)
  {
    [(PKPeerPaymentMessage *)v10 setType:type];
  }

  return v10;
}

- (PKPeerPaymentMessage)initWithUnderlyingMessage:(id)message
{
  messageCopy = message;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentMessage;
  v5 = [(PKPeerPaymentMessage *)&v21 init];
  if (v5)
  {
    if (messageCopy)
    {
      v6 = messageCopy;
      underlyingMessage = v5->_underlyingMessage;
      v5->_underlyingMessage = v6;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x1E6973F20]);
      underlyingMessage = objc_alloc_init(MEMORY[0x1E6973F38]);
      v9 = [v8 initWithSession:underlyingMessage];
      v10 = v5->_underlyingMessage;
      v5->_underlyingMessage = v9;
    }

    v5->_isObserverCached = 0;
    v11 = [(MSMessage *)v5->_underlyingMessage URL];
    v12 = PKPeerPaymentMessageDataWithDataURL();

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E69B90B0]) initWithData:v12];
      protoMessage = v5->_protoMessage;
      v5->_protoMessage = v13;
    }

    if (!v5->_protoMessage)
    {
      v15 = objc_alloc_init(MEMORY[0x1E69B90B0]);
      v16 = v5->_protoMessage;
      v5->_protoMessage = v15;

      [(PKProtobufPeerPaymentMessage *)v5->_protoMessage setVersion:1];
      v17 = v5->_protoMessage;
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      [(PKProtobufPeerPaymentMessage *)v17 setIdentifier:uUIDString];

      [(PKPeerPaymentMessage *)v5 _updateDataURL];
    }
  }

  return v5;
}

- (NSUUID)identifier
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  identifier = [(PKProtobufPeerPaymentMessage *)self->_protoMessage identifier];
  v5 = [v3 initWithUUIDString:identifier];

  return v5;
}

- (NSDecimalNumber)amount
{
  hasDecimalAmount = [(PKProtobufPeerPaymentMessage *)self->_protoMessage hasDecimalAmount];
  protoMessage = self->_protoMessage;
  if (hasDecimalAmount)
  {
    decimalAmount = [(PKProtobufPeerPaymentMessage *)protoMessage decimalAmount];
    v6 = PKProtoSupportDecimalNumberFromProtobuf();
  }

  else
  {
    [(PKProtobufPeerPaymentMessage *)protoMessage amount];
    v6 = PKLegacyCurrencyStorageIntegerToDecimal();
  }

  return v6;
}

- (PKCurrencyAmount)currencyAmount
{
  amount = [(PKPeerPaymentMessage *)self amount];
  currency = [(PKPeerPaymentMessage *)self currency];
  v5 = 0;
  if (currency && amount)
  {
    v5 = PKCurrencyAmountCreate(amount, currency);
  }

  return v5;
}

- (id)_requestDeviceScoreIdentifier
{
  requestDeviceScoreIdentifier = [(PKProtobufPeerPaymentMessage *)self->_protoMessage requestDeviceScoreIdentifier];
  if (requestDeviceScoreIdentifier)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:requestDeviceScoreIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PKPeerPaymentRequestToken)requestToken
{
  v3 = objc_alloc(MEMORY[0x1E69B8FF0]);
  requestToken = [(PKProtobufPeerPaymentMessage *)self->_protoMessage requestToken];
  _requestDeviceScoreIdentifier = [(PKPeerPaymentMessage *)self _requestDeviceScoreIdentifier];
  v6 = [v3 initWithRequestToken:requestToken deviceScoreIdentifier:_requestDeviceScoreIdentifier expiryDate:0];

  return v6;
}

- (int64_t)recurringPaymentColor
{
  recurringPaymentColor = [(PKProtobufPeerPaymentMessage *)self->_protoMessage recurringPaymentColor];
  PKSemanticColorFromString();

  return 0;
}

- (PKPeerPaymentRecurringPaymentMemo)recurringPaymentMemo
{
  v3 = objc_alloc_init(MEMORY[0x1E69B8FE0]);
  recurringPaymentColor = [(PKProtobufPeerPaymentMessage *)self->_protoMessage recurringPaymentColor];
  PKSemanticColorFromString();

  memo = [(PKProtobufPeerPaymentMessage *)self->_protoMessage memo];
  [v3 setText:memo];

  recurringPaymentEmoji = [(PKProtobufPeerPaymentMessage *)self->_protoMessage recurringPaymentEmoji];
  [v3 setEmoji:recurringPaymentEmoji];

  [v3 setColor:0];

  return v3;
}

- (NSDate)recurringPaymentStartDate
{
  v2 = MEMORY[0x1E695DF00];
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage recurringPaymentStartDate];

  return [v2 dateWithTimeIntervalSinceReferenceDate:?];
}

- (unint64_t)recurringPaymentFrequency
{
  recurringPaymentFrequency = [(PKProtobufPeerPaymentMessage *)self->_protoMessage recurringPaymentFrequency];
  v3 = PKPeerPaymentRecurringPaymentFrequencyFromString();

  return v3;
}

- (BOOL)isObserver
{
  if (self->_isObserverCached)
  {
    isObserver = self->_isObserver;
  }

  else if (self->_underlyingMessage && [(PKProtobufPeerPaymentMessage *)self->_protoMessage messagesContext]== 2)
  {
    recipientAddress = [(PKProtobufPeerPaymentMessage *)self->_protoMessage recipientAddress];
    IsMe = PKPeerPaymentRecipientIsMe(recipientAddress);

    isObserver = ([(MSMessage *)self->_underlyingMessage isFromMe]| IsMe) ^ 1;
    self->_isObserver = isObserver & 1;
    self->_isObserverCached = 1;
  }

  else
  {
    isObserver = 0;
    *&self->_isObserver = 256;
  }

  return isObserver & 1;
}

- (void)setType:(unint64_t)type
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setType:?];
  [(MSMessage *)self->_underlyingMessage setRequiresValidation:type - 1 < 3];
  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (void)setContext:(unint64_t)context
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setMessagesContext:context];
  self->_isObserverCached = 0;
  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (void)setCurrency:(id)currency
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setCurrency:currency];
  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (void)setAmount:(id)amount
{
  protoMessage = self->_protoMessage;
  amountCopy = amount;
  [(PKProtobufPeerPaymentMessage *)protoMessage setAmount:PKCurrencyDecimalToLegacyStorageInteger()];
  v6 = self->_protoMessage;
  v7 = PKProtoSupportProtoDecimalNumberFromDecimalNumber();

  [(PKProtobufPeerPaymentMessage *)v6 setDecimalAmount:v7];
  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (void)setCurrencyAmount:(id)amount
{
  amountCopy = amount;
  currency = [amountCopy currency];
  [(PKPeerPaymentMessage *)self setCurrency:currency];

  amount = [amountCopy amount];

  [(PKPeerPaymentMessage *)self setAmount:amount];
}

- (void)setSenderAddress:(id)address
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setSenderAddress:address];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setRecipientAddress:(id)address
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setRecipientAddress:address];
  self->_isObserverCached = 0;

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setRequestToken:(id)token
{
  protoMessage = self->_protoMessage;
  tokenCopy = token;
  requestToken = [tokenCopy requestToken];
  [(PKProtobufPeerPaymentMessage *)protoMessage setRequestToken:requestToken];

  v7 = self->_protoMessage;
  deviceScoreIdentifier = [tokenCopy deviceScoreIdentifier];

  uUIDString = [deviceScoreIdentifier UUIDString];
  [(PKProtobufPeerPaymentMessage *)v7 setRequestDeviceScoreIdentifier:uUIDString];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setPaymentIdentifier:(id)identifier
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setPaymentIdentifier:identifier];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setTransactionIdentifier:(id)identifier
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setTransactionIdentifier:identifier];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setPaymentSignature:(id)signature
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setPaymentSignature:signature];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setMemo:(id)memo
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setMemo:memo];
  [(PKPeerPaymentMessage *)self _updateDataURL];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (BOOL)hasBeenSent
{
  type = [(PKPeerPaymentMessage *)self type];
  underlyingMessage = [(PKPeerPaymentMessage *)self underlyingMessage];
  senderParticipantIdentifier = [underlyingMessage senderParticipantIdentifier];
  v6 = senderParticipantIdentifier;
  if (type == 1)
  {
    if (senderParticipantIdentifier)
    {
      paymentIdentifier = [(PKPeerPaymentMessage *)self paymentIdentifier];
      v8 = paymentIdentifier != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = senderParticipantIdentifier != 0;
  }

  return v8;
}

- (BOOL)isFromMe
{
  underlyingMessage = [(PKPeerPaymentMessage *)self underlyingMessage];
  isFromMe = [underlyingMessage isFromMe];

  return isFromMe;
}

- (void)setRecurringPaymentIdentifier:(id)identifier
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setRecurringPaymentIdentifier:identifier];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setRecurringPaymentMemo:(id)memo
{
  protoMessage = self->_protoMessage;
  memoCopy = memo;
  text = [memoCopy text];
  [(PKProtobufPeerPaymentMessage *)protoMessage setMemo:text];

  v7 = self->_protoMessage;
  emoji = [memoCopy emoji];
  [(PKProtobufPeerPaymentMessage *)v7 setRecurringPaymentEmoji:emoji];

  v9 = self->_protoMessage;
  [memoCopy color];

  v10 = PKSemanticColorToString();
  [(PKProtobufPeerPaymentMessage *)v9 setRecurringPaymentColor:v10];

  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (void)setRecurringPaymentStartDate:(id)date
{
  protoMessage = self->_protoMessage;
  [date timeIntervalSinceReferenceDate];
  [(PKProtobufPeerPaymentMessage *)protoMessage setRecurringPaymentStartDate:?];
  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (void)setRecurringPaymentFrequency:(unint64_t)frequency
{
  protoMessage = self->_protoMessage;
  v5 = PKPeerPaymentRecurringPaymentFrequencyToString();
  [(PKProtobufPeerPaymentMessage *)protoMessage setRecurringPaymentFrequency:v5];

  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (PKPeerPaymentMessageLocalProperties)localProperties
{
  localData = [(PKProtobufPeerPaymentMessage *)self->_protoMessage localData];
  if (localData)
  {
    v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:localData error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLocalProperties:(id)properties
{
  if (properties)
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:properties requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setLocalData:v4];
  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setMessagesGroupIdentifier:(id)identifier
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setMessagesGroupIdentifier:identifier];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)updateWithPeerPaymentPerformResponse:(id)response
{
  if (response)
  {
    protoMessage = self->_protoMessage;
    responseCopy = response;
    paymentIdentifier = [responseCopy paymentIdentifier];
    [(PKProtobufPeerPaymentMessage *)protoMessage setPaymentIdentifier:paymentIdentifier];

    v7 = self->_protoMessage;
    transactionIdentifier = [responseCopy transactionIdentifier];
    [(PKProtobufPeerPaymentMessage *)v7 setTransactionIdentifier:transactionIdentifier];

    v9 = self->_protoMessage;
    recurringPaymentIdentifier = [responseCopy recurringPaymentIdentifier];
    [(PKProtobufPeerPaymentMessage *)v9 setRecurringPaymentIdentifier:recurringPaymentIdentifier];

    v11 = self->_protoMessage;
    signature = [responseCopy signature];

    [(PKProtobufPeerPaymentMessage *)v11 setPaymentSignature:signature];

    [(PKPeerPaymentMessage *)self _updateDataURL];
  }
}

- (void)_updateDataURL
{
  data = [(PKProtobufPeerPaymentMessage *)self->_protoMessage data];
  v3 = PKPeerPaymentMessageDataURLWithData();
  [(MSMessage *)self->_underlyingMessage setURL:v3];
}

- (void)_updateSummaryText
{
  currencyAmount = [(PKPeerPaymentMessage *)self currencyAmount];
  v15 = currencyAmount;
  if (!currencyAmount)
  {
    type = [(PKPeerPaymentMessage *)self type];
    if (type == 3)
    {
      v14 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentMes_17.isa);
    }

    else
    {
      if (type == 2)
      {
        v7 = @"PEER_PAYMENT_MESSAGE_SUMMARY_REQUEST_NO_AMOUNT";
      }

      else
      {
        if (type != 1)
        {
          v13 = 0;
          goto LABEL_23;
        }

        v7 = @"PEER_PAYMENT_MESSAGE_SUMMARY_PAYMENT_NO_AMOUNT";
      }

      v14 = PKLocalizedPeerPaymentString(&v7->isa);
    }

    v13 = v14;
    goto LABEL_23;
  }

  minimalFormattedStringValue = [currencyAmount minimalFormattedStringValue];
  type2 = [(PKPeerPaymentMessage *)self type];
  switch(type2)
  {
    case 3uLL:
      memo = [(PKPeerPaymentMessage *)self memo];
      v13 = [(PKPeerPaymentMessage *)self _recurringPaymentSummaryTextWithAmount:minimalFormattedStringValue memo:memo];

      break;
    case 2uLL:
      amount = [v15 amount];
      zero = [MEMORY[0x1E696AB90] zero];
      v10 = [amount pk_isEqualToDecimalNumber:zero];

      if (v10)
      {
        v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_14.isa);
LABEL_21:
        v13 = v11;
        break;
      }

      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_15.isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
      v11 = LABEL_20:;
      goto LABEL_21;
    case 1uLL:
      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_13.isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
      goto LABEL_20;
    default:
      v13 = 0;
      break;
  }

LABEL_23:
  [(MSMessage *)self->_underlyingMessage setSummaryText:v13];
}

- (void)_updateLayoutContents
{
  v28[1] = *MEMORY[0x1E69E9840];
  layout = [(MSMessage *)self->_underlyingMessage layout];
  if (!layout)
  {
    v4 = objc_alloc(MEMORY[0x1E6973F28]);
    v5 = objc_alloc_init(MEMORY[0x1E6973F30]);
    layout = [v4 initWithAlternateLayout:v5];

    [(MSMessage *)self->_underlyingMessage setLayout:layout];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = layout;
    alternateLayout = [v6 alternateLayout];
    if (!alternateLayout)
    {
      goto LABEL_14;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      alternateLayout = 0;
      v6 = 0;
      goto LABEL_31;
    }

    alternateLayout = layout;
    v6 = 0;
    if (!alternateLayout)
    {
      goto LABEL_14;
    }
  }

  type = [(PKPeerPaymentMessage *)self type];
  has_internal_ui = os_variant_has_internal_ui();
  if (type == 3)
  {
    if (has_internal_ui && PKSecureElementIsAvailable() && ([MEMORY[0x1E69B91E0] sharedSecureElement], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isProductionSigned"), v10, (v11 & 1) == 0))
    {
      data = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, data, OS_LOG_TYPE_DEFAULT, "Skipping adding mediaFileURL to template layout for rdar://problem/32523250", buf, 2u);
      }
    }

    else
    {
      data = [(PKProtobufPeerPaymentMessage *)self->_protoMessage data];
      v13 = PKPeerPaymentMessageDataURLWithData();
      v14 = [PKPeerPaymentBubbleView generatedSnapshotForDataURL:v13 contentInset:0 isFromMe:0.0, 6.0, 0.0, 6.0];
      [alternateLayout setImage:v14];
    }

LABEL_14:
    if (!v6)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (has_internal_ui && PKSecureElementIsAvailable() && ([MEMORY[0x1E69B91E0] sharedSecureElement], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isProductionSigned"), v15, (v16 & 1) == 0))
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Skipping adding mediaFileURL to template layout for rdar://problem/32523250", buf, 2u);
    }
  }

  else
  {
    v17 = PKPeerPaymentMessageFallbackMediaURL();
    [alternateLayout setMediaFileURL:v17];
  }

  v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFal.isa);
  [alternateLayout setCaption:v18];

  currencyAmount = [(PKPeerPaymentMessage *)self currencyAmount];
  minimalFormattedStringValue = [currencyAmount minimalFormattedStringValue];

  if ([(PKPeerPaymentMessage *)self type]== 1)
  {
    v21 = @"PEER_PAYMENT_FALLBACK_MESSAGE_SUBCAPTION_PAYMENT_FORMAT";
  }

  else
  {
    v21 = @"PEER_PAYMENT_FALLBACK_MESSAGE_SUBCAPTION_REQUEST_FORMAT";
  }

  v22 = PKLocalizedPeerPaymentString(&v21->isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
  [alternateLayout setSubcaption:v22];

  if (v6)
  {
LABEL_25:
    v23 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v23, OS_LOG_TYPE_DEFAULT, "Using MSMessageLiveLayout", buf, 2u);
    }

    if ([(PKPeerPaymentMessage *)self type]== 3)
    {
      v28[0] = *MEMORY[0x1E69A5078];
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [v6 setRequiredCapabilities:v24];
    }

    else if ([(PKPeerPaymentMessage *)self context]== 2)
    {
      v27 = *MEMORY[0x1E69A5058];
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      [v6 setRequiredCapabilities:v25];

      [v6 setSendAlternateLayoutAsText:1];
    }
  }

LABEL_31:
}

- (id)_recurringPaymentSummaryTextWithAmount:(id)amount memo:(id)memo
{
  amountCopy = amount;
  memoCopy = memo;
  recurringPaymentFrequency = [(PKPeerPaymentMessage *)self recurringPaymentFrequency];
  v9 = 0;
  if (memoCopy)
  {
    if (recurringPaymentFrequency > 2)
    {
      if (recurringPaymentFrequency == 3)
      {
        v12 = amountCopy;
        v13 = memoCopy;
        v10 = @"PEER_PAYMENT_MESSAGE_SUMMARY_RECURRING_PAYMENT_WITH_MEMO_MONTHLY";
      }

      else
      {
        if (recurringPaymentFrequency != 4)
        {
          goto LABEL_22;
        }

        v12 = amountCopy;
        v13 = memoCopy;
        v10 = @"PEER_PAYMENT_MESSAGE_SUMMARY_RECURRING_PAYMENT_WITH_MEMO_DAILY";
      }
    }

    else if (recurringPaymentFrequency == 1)
    {
      v12 = amountCopy;
      v13 = memoCopy;
      v10 = @"PEER_PAYMENT_MESSAGE_SUMMARY_RECURRING_PAYMENT_WITH_MEMO_WEEKLY";
    }

    else
    {
      if (recurringPaymentFrequency != 2)
      {
        goto LABEL_22;
      }

      v12 = amountCopy;
      v13 = memoCopy;
      v10 = @"PEER_PAYMENT_MESSAGE_SUMMARY_RECURRING_PAYMENT_WITH_MEMO_BIWEEKLY";
    }

    PKLocalizedPeerPaymentRecurringString(&v10->isa, &stru_1F3BD6370.isa, v12, v13);
  }

  else if (recurringPaymentFrequency > 2)
  {
    if (recurringPaymentFrequency == 3)
    {
      PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentMes_24.isa, &stru_1F3BD5BF0.isa, amountCopy);
    }

    else
    {
      if (recurringPaymentFrequency != 4)
      {
        goto LABEL_22;
      }

      PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentMes_25.isa, &stru_1F3BD5BF0.isa, amountCopy);
    }
  }

  else if (recurringPaymentFrequency == 1)
  {
    PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentMes_22.isa, &stru_1F3BD5BF0.isa, amountCopy);
  }

  else
  {
    if (recurringPaymentFrequency != 2)
    {
      goto LABEL_22;
    }

    PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentMes_23.isa, &stru_1F3BD5BF0.isa, amountCopy);
  }
  v9 = ;
LABEL_22:

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  identifier = [(PKPeerPaymentMessage *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", identifier];

  [(PKPeerPaymentMessage *)self type];
  v5 = PKPeerPaymentMessageTypeToString();
  [v3 appendFormat:@"type: '%@'; ", v5];

  [(PKPeerPaymentMessage *)self context];
  v6 = PKPeerPaymentMessagesContextToString();
  [v3 appendFormat:@"context: '%@'; ", v6];

  amount = [(PKPeerPaymentMessage *)self amount];
  [v3 appendFormat:@"amount: '%@'; ", amount];

  currency = [(PKPeerPaymentMessage *)self currency];
  [v3 appendFormat:@"currency: '%@'; ", currency];

  [v3 appendFormat:@"underlyingMessage: '%@'; ", self->_underlyingMessage];
  requestToken = [(PKPeerPaymentMessage *)self requestToken];
  [v3 appendFormat:@"requestToken: '%@'; ", requestToken];

  recurringPaymentIdentifier = [(PKPeerPaymentMessage *)self recurringPaymentIdentifier];
  [v3 appendFormat:@"recurringPaymentIdentifier: '%@'; ", recurringPaymentIdentifier];

  recurringPaymentStartDate = [(PKPeerPaymentMessage *)self recurringPaymentStartDate];
  [v3 appendFormat:@"recurringPaymentStartDate: '%@'; ", recurringPaymentStartDate];

  [(PKPeerPaymentMessage *)self recurringPaymentFrequency];
  v12 = PKPeerPaymentRecurringPaymentFrequencyToString();
  [v3 appendFormat:@"recurringPaymentFrequency: '%@'; ", v12];

  isObserver = [(PKPeerPaymentMessage *)self isObserver];
  v14 = @"NO";
  if (isObserver)
  {
    v14 = @"YES";
  }

  [v3 appendFormat:@"isObserver: '%@'; ", v14];
  messagesGroupIdentifier = [(PKPeerPaymentMessage *)self messagesGroupIdentifier];
  [v3 appendFormat:@"messagesGroupIdentifier: '%@'; ", messagesGroupIdentifier];

  [v3 appendFormat:@">"];

  return v3;
}

- (void)reportMessageSentWithLocalProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  amount = [(PKPeerPaymentMessage *)self amount];
  v6 = PKAnalyticsAmountCategoryForAmount();
  [v4 setObject:v6 forKey:*MEMORY[0x1E69BA268]];

  currency = [(PKPeerPaymentMessage *)self currency];
  [v4 setObject:currency forKey:*MEMORY[0x1E69BA270]];

  if (propertiesCopy)
  {
    [propertiesCopy source];
  }

  v8 = PKPeerPaymentMessageSourceToString();
  [v4 setObject:v8 forKey:*MEMORY[0x1E69BA278]];

  type = [(PKPeerPaymentMessage *)self type];
  if (type == 1 || type == 2)
  {
    PKAnalyticsSendEventWithDailyLimit();
  }
}

@end
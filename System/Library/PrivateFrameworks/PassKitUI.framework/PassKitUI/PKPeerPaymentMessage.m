@interface PKPeerPaymentMessage
- (BOOL)hasBeenSent;
- (BOOL)isFromMe;
- (BOOL)isObserver;
- (NSDate)recurringPaymentStartDate;
- (NSDecimalNumber)amount;
- (NSUUID)identifier;
- (PKCurrencyAmount)currencyAmount;
- (PKPeerPaymentMessage)initWithType:(unint64_t)a3;
- (PKPeerPaymentMessage)initWithType:(unint64_t)a3 session:(id)a4;
- (PKPeerPaymentMessage)initWithUnderlyingMessage:(id)a3;
- (PKPeerPaymentMessageLocalProperties)localProperties;
- (PKPeerPaymentRecurringPaymentMemo)recurringPaymentMemo;
- (PKPeerPaymentRequestToken)requestToken;
- (id)_recurringPaymentSummaryTextWithAmount:(id)a3 memo:(id)a4;
- (id)_requestDeviceScoreIdentifier;
- (id)description;
- (int64_t)recurringPaymentColor;
- (unint64_t)recurringPaymentFrequency;
- (void)_updateDataURL;
- (void)_updateLayoutContents;
- (void)_updateSummaryText;
- (void)reportMessageSentWithLocalProperties:(id)a3;
- (void)setAmount:(id)a3;
- (void)setContext:(unint64_t)a3;
- (void)setCurrency:(id)a3;
- (void)setCurrencyAmount:(id)a3;
- (void)setLocalProperties:(id)a3;
- (void)setMemo:(id)a3;
- (void)setMessagesGroupIdentifier:(id)a3;
- (void)setPaymentIdentifier:(id)a3;
- (void)setPaymentSignature:(id)a3;
- (void)setRecipientAddress:(id)a3;
- (void)setRecurringPaymentFrequency:(unint64_t)a3;
- (void)setRecurringPaymentIdentifier:(id)a3;
- (void)setRecurringPaymentMemo:(id)a3;
- (void)setRecurringPaymentStartDate:(id)a3;
- (void)setRequestToken:(id)a3;
- (void)setSenderAddress:(id)a3;
- (void)setTransactionIdentifier:(id)a3;
- (void)setType:(unint64_t)a3;
- (void)updateWithPeerPaymentPerformResponse:(id)a3;
@end

@implementation PKPeerPaymentMessage

- (PKPeerPaymentMessage)initWithType:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E6973F38]);
  v6 = [(PKPeerPaymentMessage *)self initWithType:a3 session:v5];

  return v6;
}

- (PKPeerPaymentMessage)initWithType:(unint64_t)a3 session:(id)a4
{
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E6973F20]);
  v8 = v6;
  if (!v6)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6973F38]);
  }

  v9 = [v7 initWithSession:v8];
  v10 = [(PKPeerPaymentMessage *)self initWithUnderlyingMessage:v9];

  if (!v6)
  {
  }

  if (v10)
  {
    [(PKPeerPaymentMessage *)v10 setType:a3];
  }

  return v10;
}

- (PKPeerPaymentMessage)initWithUnderlyingMessage:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentMessage;
  v5 = [(PKPeerPaymentMessage *)&v21 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
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
      v18 = [MEMORY[0x1E696AFB0] UUID];
      v19 = [v18 UUIDString];
      [(PKProtobufPeerPaymentMessage *)v17 setIdentifier:v19];

      [(PKPeerPaymentMessage *)v5 _updateDataURL];
    }
  }

  return v5;
}

- (NSUUID)identifier
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage identifier];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

- (NSDecimalNumber)amount
{
  v3 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage hasDecimalAmount];
  protoMessage = self->_protoMessage;
  if (v3)
  {
    v5 = [(PKProtobufPeerPaymentMessage *)protoMessage decimalAmount];
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
  v3 = [(PKPeerPaymentMessage *)self amount];
  v4 = [(PKPeerPaymentMessage *)self currency];
  v5 = 0;
  if (v4 && v3)
  {
    v5 = PKCurrencyAmountCreate(v3, v4);
  }

  return v5;
}

- (id)_requestDeviceScoreIdentifier
{
  v2 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage requestDeviceScoreIdentifier];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v2];
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
  v4 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage requestToken];
  v5 = [(PKPeerPaymentMessage *)self _requestDeviceScoreIdentifier];
  v6 = [v3 initWithRequestToken:v4 deviceScoreIdentifier:v5 expiryDate:0];

  return v6;
}

- (int64_t)recurringPaymentColor
{
  v2 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage recurringPaymentColor];
  PKSemanticColorFromString();

  return 0;
}

- (PKPeerPaymentRecurringPaymentMemo)recurringPaymentMemo
{
  v3 = objc_alloc_init(MEMORY[0x1E69B8FE0]);
  v4 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage recurringPaymentColor];
  PKSemanticColorFromString();

  v5 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage memo];
  [v3 setText:v5];

  v6 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage recurringPaymentEmoji];
  [v3 setEmoji:v6];

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
  v2 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage recurringPaymentFrequency];
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
    v4 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage recipientAddress];
    IsMe = PKPeerPaymentRecipientIsMe(v4);

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

- (void)setType:(unint64_t)a3
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setType:?];
  [(MSMessage *)self->_underlyingMessage setRequiresValidation:a3 - 1 < 3];
  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (void)setContext:(unint64_t)a3
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setMessagesContext:a3];
  self->_isObserverCached = 0;
  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (void)setCurrency:(id)a3
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setCurrency:a3];
  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (void)setAmount:(id)a3
{
  protoMessage = self->_protoMessage;
  v5 = a3;
  [(PKProtobufPeerPaymentMessage *)protoMessage setAmount:PKCurrencyDecimalToLegacyStorageInteger()];
  v6 = self->_protoMessage;
  v7 = PKProtoSupportProtoDecimalNumberFromDecimalNumber();

  [(PKProtobufPeerPaymentMessage *)v6 setDecimalAmount:v7];
  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (void)setCurrencyAmount:(id)a3
{
  v4 = a3;
  v5 = [v4 currency];
  [(PKPeerPaymentMessage *)self setCurrency:v5];

  v6 = [v4 amount];

  [(PKPeerPaymentMessage *)self setAmount:v6];
}

- (void)setSenderAddress:(id)a3
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setSenderAddress:a3];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setRecipientAddress:(id)a3
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setRecipientAddress:a3];
  self->_isObserverCached = 0;

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setRequestToken:(id)a3
{
  protoMessage = self->_protoMessage;
  v5 = a3;
  v6 = [v5 requestToken];
  [(PKProtobufPeerPaymentMessage *)protoMessage setRequestToken:v6];

  v7 = self->_protoMessage;
  v8 = [v5 deviceScoreIdentifier];

  v9 = [v8 UUIDString];
  [(PKProtobufPeerPaymentMessage *)v7 setRequestDeviceScoreIdentifier:v9];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setPaymentIdentifier:(id)a3
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setPaymentIdentifier:a3];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setTransactionIdentifier:(id)a3
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setTransactionIdentifier:a3];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setPaymentSignature:(id)a3
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setPaymentSignature:a3];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setMemo:(id)a3
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setMemo:a3];
  [(PKPeerPaymentMessage *)self _updateDataURL];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (BOOL)hasBeenSent
{
  v3 = [(PKPeerPaymentMessage *)self type];
  v4 = [(PKPeerPaymentMessage *)self underlyingMessage];
  v5 = [v4 senderParticipantIdentifier];
  v6 = v5;
  if (v3 == 1)
  {
    if (v5)
    {
      v7 = [(PKPeerPaymentMessage *)self paymentIdentifier];
      v8 = v7 != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5 != 0;
  }

  return v8;
}

- (BOOL)isFromMe
{
  v2 = [(PKPeerPaymentMessage *)self underlyingMessage];
  v3 = [v2 isFromMe];

  return v3;
}

- (void)setRecurringPaymentIdentifier:(id)a3
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setRecurringPaymentIdentifier:a3];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setRecurringPaymentMemo:(id)a3
{
  protoMessage = self->_protoMessage;
  v5 = a3;
  v6 = [v5 text];
  [(PKProtobufPeerPaymentMessage *)protoMessage setMemo:v6];

  v7 = self->_protoMessage;
  v8 = [v5 emoji];
  [(PKProtobufPeerPaymentMessage *)v7 setRecurringPaymentEmoji:v8];

  v9 = self->_protoMessage;
  [v5 color];

  v10 = PKSemanticColorToString();
  [(PKProtobufPeerPaymentMessage *)v9 setRecurringPaymentColor:v10];

  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (void)setRecurringPaymentStartDate:(id)a3
{
  protoMessage = self->_protoMessage;
  [a3 timeIntervalSinceReferenceDate];
  [(PKProtobufPeerPaymentMessage *)protoMessage setRecurringPaymentStartDate:?];
  [(PKPeerPaymentMessage *)self _updateDataURL];
  [(PKPeerPaymentMessage *)self _updateLayoutContents];

  [(PKPeerPaymentMessage *)self _updateSummaryText];
}

- (void)setRecurringPaymentFrequency:(unint64_t)a3
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
  v2 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage localData];
  if (v2)
  {
    v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLocalProperties:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setLocalData:v4];
  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)setMessagesGroupIdentifier:(id)a3
{
  [(PKProtobufPeerPaymentMessage *)self->_protoMessage setMessagesGroupIdentifier:a3];

  [(PKPeerPaymentMessage *)self _updateDataURL];
}

- (void)updateWithPeerPaymentPerformResponse:(id)a3
{
  if (a3)
  {
    protoMessage = self->_protoMessage;
    v5 = a3;
    v6 = [v5 paymentIdentifier];
    [(PKProtobufPeerPaymentMessage *)protoMessage setPaymentIdentifier:v6];

    v7 = self->_protoMessage;
    v8 = [v5 transactionIdentifier];
    [(PKProtobufPeerPaymentMessage *)v7 setTransactionIdentifier:v8];

    v9 = self->_protoMessage;
    v10 = [v5 recurringPaymentIdentifier];
    [(PKProtobufPeerPaymentMessage *)v9 setRecurringPaymentIdentifier:v10];

    v11 = self->_protoMessage;
    v12 = [v5 signature];

    [(PKProtobufPeerPaymentMessage *)v11 setPaymentSignature:v12];

    [(PKPeerPaymentMessage *)self _updateDataURL];
  }
}

- (void)_updateDataURL
{
  v4 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage data];
  v3 = PKPeerPaymentMessageDataURLWithData();
  [(MSMessage *)self->_underlyingMessage setURL:v3];
}

- (void)_updateSummaryText
{
  v3 = [(PKPeerPaymentMessage *)self currencyAmount];
  v15 = v3;
  if (!v3)
  {
    v6 = [(PKPeerPaymentMessage *)self type];
    if (v6 == 3)
    {
      v14 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentMes_17.isa);
    }

    else
    {
      if (v6 == 2)
      {
        v7 = @"PEER_PAYMENT_MESSAGE_SUMMARY_REQUEST_NO_AMOUNT";
      }

      else
      {
        if (v6 != 1)
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

  v4 = [v3 minimalFormattedStringValue];
  v5 = [(PKPeerPaymentMessage *)self type];
  switch(v5)
  {
    case 3uLL:
      v12 = [(PKPeerPaymentMessage *)self memo];
      v13 = [(PKPeerPaymentMessage *)self _recurringPaymentSummaryTextWithAmount:v4 memo:v12];

      break;
    case 2uLL:
      v8 = [v15 amount];
      v9 = [MEMORY[0x1E696AB90] zero];
      v10 = [v8 pk_isEqualToDecimalNumber:v9];

      if (v10)
      {
        v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_14.isa);
LABEL_21:
        v13 = v11;
        break;
      }

      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_15.isa, &stru_1F3BD5BF0.isa, v4);
      v11 = LABEL_20:;
      goto LABEL_21;
    case 1uLL:
      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_13.isa, &stru_1F3BD5BF0.isa, v4);
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
  v3 = [(MSMessage *)self->_underlyingMessage layout];
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E6973F28]);
    v5 = objc_alloc_init(MEMORY[0x1E6973F30]);
    v3 = [v4 initWithAlternateLayout:v5];

    [(MSMessage *)self->_underlyingMessage setLayout:v3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
    v7 = [v6 alternateLayout];
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
      v6 = 0;
      goto LABEL_31;
    }

    v7 = v3;
    v6 = 0;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v8 = [(PKPeerPaymentMessage *)self type];
  has_internal_ui = os_variant_has_internal_ui();
  if (v8 == 3)
  {
    if (has_internal_ui && PKSecureElementIsAvailable() && ([MEMORY[0x1E69B91E0] sharedSecureElement], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isProductionSigned"), v10, (v11 & 1) == 0))
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Skipping adding mediaFileURL to template layout for rdar://problem/32523250", buf, 2u);
      }
    }

    else
    {
      v12 = [(PKProtobufPeerPaymentMessage *)self->_protoMessage data];
      v13 = PKPeerPaymentMessageDataURLWithData();
      v14 = [PKPeerPaymentBubbleView generatedSnapshotForDataURL:v13 contentInset:0 isFromMe:0.0, 6.0, 0.0, 6.0];
      [v7 setImage:v14];
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
    [v7 setMediaFileURL:v17];
  }

  v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFal.isa);
  [v7 setCaption:v18];

  v19 = [(PKPeerPaymentMessage *)self currencyAmount];
  v20 = [v19 minimalFormattedStringValue];

  if ([(PKPeerPaymentMessage *)self type]== 1)
  {
    v21 = @"PEER_PAYMENT_FALLBACK_MESSAGE_SUBCAPTION_PAYMENT_FORMAT";
  }

  else
  {
    v21 = @"PEER_PAYMENT_FALLBACK_MESSAGE_SUBCAPTION_REQUEST_FORMAT";
  }

  v22 = PKLocalizedPeerPaymentString(&v21->isa, &stru_1F3BD5BF0.isa, v20);
  [v7 setSubcaption:v22];

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

- (id)_recurringPaymentSummaryTextWithAmount:(id)a3 memo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPeerPaymentMessage *)self recurringPaymentFrequency];
  v9 = 0;
  if (v7)
  {
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        v12 = v6;
        v13 = v7;
        v10 = @"PEER_PAYMENT_MESSAGE_SUMMARY_RECURRING_PAYMENT_WITH_MEMO_MONTHLY";
      }

      else
      {
        if (v8 != 4)
        {
          goto LABEL_22;
        }

        v12 = v6;
        v13 = v7;
        v10 = @"PEER_PAYMENT_MESSAGE_SUMMARY_RECURRING_PAYMENT_WITH_MEMO_DAILY";
      }
    }

    else if (v8 == 1)
    {
      v12 = v6;
      v13 = v7;
      v10 = @"PEER_PAYMENT_MESSAGE_SUMMARY_RECURRING_PAYMENT_WITH_MEMO_WEEKLY";
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_22;
      }

      v12 = v6;
      v13 = v7;
      v10 = @"PEER_PAYMENT_MESSAGE_SUMMARY_RECURRING_PAYMENT_WITH_MEMO_BIWEEKLY";
    }

    PKLocalizedPeerPaymentRecurringString(&v10->isa, &stru_1F3BD6370.isa, v12, v13);
  }

  else if (v8 > 2)
  {
    if (v8 == 3)
    {
      PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentMes_24.isa, &stru_1F3BD5BF0.isa, v6);
    }

    else
    {
      if (v8 != 4)
      {
        goto LABEL_22;
      }

      PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentMes_25.isa, &stru_1F3BD5BF0.isa, v6);
    }
  }

  else if (v8 == 1)
  {
    PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentMes_22.isa, &stru_1F3BD5BF0.isa, v6);
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_22;
    }

    PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentMes_23.isa, &stru_1F3BD5BF0.isa, v6);
  }
  v9 = ;
LABEL_22:

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKPeerPaymentMessage *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", v4];

  [(PKPeerPaymentMessage *)self type];
  v5 = PKPeerPaymentMessageTypeToString();
  [v3 appendFormat:@"type: '%@'; ", v5];

  [(PKPeerPaymentMessage *)self context];
  v6 = PKPeerPaymentMessagesContextToString();
  [v3 appendFormat:@"context: '%@'; ", v6];

  v7 = [(PKPeerPaymentMessage *)self amount];
  [v3 appendFormat:@"amount: '%@'; ", v7];

  v8 = [(PKPeerPaymentMessage *)self currency];
  [v3 appendFormat:@"currency: '%@'; ", v8];

  [v3 appendFormat:@"underlyingMessage: '%@'; ", self->_underlyingMessage];
  v9 = [(PKPeerPaymentMessage *)self requestToken];
  [v3 appendFormat:@"requestToken: '%@'; ", v9];

  v10 = [(PKPeerPaymentMessage *)self recurringPaymentIdentifier];
  [v3 appendFormat:@"recurringPaymentIdentifier: '%@'; ", v10];

  v11 = [(PKPeerPaymentMessage *)self recurringPaymentStartDate];
  [v3 appendFormat:@"recurringPaymentStartDate: '%@'; ", v11];

  [(PKPeerPaymentMessage *)self recurringPaymentFrequency];
  v12 = PKPeerPaymentRecurringPaymentFrequencyToString();
  [v3 appendFormat:@"recurringPaymentFrequency: '%@'; ", v12];

  v13 = [(PKPeerPaymentMessage *)self isObserver];
  v14 = @"NO";
  if (v13)
  {
    v14 = @"YES";
  }

  [v3 appendFormat:@"isObserver: '%@'; ", v14];
  v15 = [(PKPeerPaymentMessage *)self messagesGroupIdentifier];
  [v3 appendFormat:@"messagesGroupIdentifier: '%@'; ", v15];

  [v3 appendFormat:@">"];

  return v3;
}

- (void)reportMessageSentWithLocalProperties:(id)a3
{
  v10 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [(PKPeerPaymentMessage *)self amount];
  v6 = PKAnalyticsAmountCategoryForAmount();
  [v4 setObject:v6 forKey:*MEMORY[0x1E69BA268]];

  v7 = [(PKPeerPaymentMessage *)self currency];
  [v4 setObject:v7 forKey:*MEMORY[0x1E69BA270]];

  if (v10)
  {
    [v10 source];
  }

  v8 = PKPeerPaymentMessageSourceToString();
  [v4 setObject:v8 forKey:*MEMORY[0x1E69BA278]];

  v9 = [(PKPeerPaymentMessage *)self type];
  if (v9 == 1 || v9 == 2)
  {
    PKAnalyticsSendEventWithDailyLimit();
  }
}

@end
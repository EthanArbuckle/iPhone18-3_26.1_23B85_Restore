void PDScheduledActivityRemoveAll(void *a1)
{
  v1 = a1;
  v2 = _ScheduledActivityQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDScheduledActivityRemoveAll_block_invoke;
  block[3] = &unk_1E79C4E28;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void __PDScheduledActivityRemoveAll_block_invoke(uint64_t a1)
{
  v2 = _RegisteredClients();
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

  _PDScheduledActivityRemoveAll(*(a1 + 32), v3);
  _ArchiveRegisteredClients();
}

id PDScheduledActivityClients()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__19;
  v8 = __Block_byref_object_dispose__19;
  v9 = 0;
  v0 = _ScheduledActivityQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDScheduledActivityClients_block_invoke;
  block[3] = &unk_1E79CB778;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void __PDScheduledActivityClients_block_invoke(uint64_t a1)
{
  v5 = _RegisteredClients();
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id PDScheduledActivitiesForClient(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  if ([v1 length])
  {
    v2 = _ScheduledActivityQueue();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PDScheduledActivitiesForClient_block_invoke;
    v5[3] = &unk_1E79C8AB0;
    v6 = v1;
    v7 = &v8;
    dispatch_sync(v2, v5);
  }

  v3 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v3;
}

void sub_1AD697378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PDScheduledActivitiesForClient_block_invoke(uint64_t a1)
{
  v2 = _RegisteredClients();
  v7 = [v2 objectForKey:*(a1 + 32)];

  v3 = [v7 activityRegistrations];
  v4 = [v3 allKeys];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id PDScheduledActivityGetContext(void *a1, void *a2)
{
  v2 = _ScheduledActivityGetRegistration(a1, a2);
  v3 = [v2 activityContext];

  return v3;
}

id PDScheduledActivityGetCriteria(void *a1, void *a2)
{
  v2 = _ScheduledActivityGetRegistration(a1, a2);
  v3 = [v2 activityCriteria];

  return v3;
}

void sub_1AD697C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 256), 8);
  _Block_object_dispose((v43 - 208), 8);
  _Block_object_dispose((v43 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1AD698BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PKAggDKeyForPaymentRequestAPIType(unint64_t a1)
{
  if (a1 <= 4)
  {
    a1 = *off_1E79CE710[a1];
  }

  return a1;
}

void sub_1AD6A224C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD6A26AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD6A2A3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1AD6A3444(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1AD6A6180(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1AD6A63F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD6A8B54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1AD6A93B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1AD6A969C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1AD6A9F2C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1AD6AAFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak((v37 - 136));
  _Unwind_Resume(a1);
}

uint64_t PKPhysicalCardStateFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = v1;
  if (v1 == @"new")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  v3 = [@"new" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"active" || (v6 = v5, v7 = [@"active" isEqualToString:v5], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_18;
    }

    v8 = v6;
    if (v8 == @"disabled" || (v9 = v8, v10 = [@"disabled" isEqualToString:v8], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_18;
    }

    v11 = v9;
    if (v11 == @"blocked" || (v12 = v11, v13 = [@"blocked" isEqualToString:v11], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_18;
    }

    v14 = v12;
    if (v14 == @"cancelled" || (v15 = v14, v16 = [@"cancelled" isEqualToString:v14], v15, v16))
    {
      v4 = 5;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_4:
  v4 = 1;
LABEL_18:

  return v4;
}

__CFString *PKStringFromPhysicalCardState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CE920[a1 - 1];
  }
}

BOOL PKAppleBalancePromotionTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = v1;
  v4 = 0;
  if (v1 != @"content")
  {
    if (!v1 || (v3 = [(__CFString *)v1 isEqualToString:@"content"], v2, !v3))
    {
      v4 = 1;
    }
  }

  return v4;
}

__CFString *PKAppleBalancePromotionTypeToString(uint64_t a1)
{
  if (a1)
  {
    return @"unknown";
  }

  else
  {
    return @"content";
  }
}

Class initMKWalletMerchantStylingInfo()
{
  if (qword_1ED6D1928 != -1)
  {
    dispatch_once(&qword_1ED6D1928, &__block_literal_global_57);
  }

  result = objc_getClass("MKWalletMerchantStylingInfo");
  _MergedGlobals_206 = result;
  getMKWalletMerchantStylingInfoClass[0] = MKWalletMerchantStylingInfoFunction;
  return result;
}

void *__LoadMapKit_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 2);
  LoadMapKit_frameworkLibrary_0 = result;
  return result;
}

id PKPeerPaymentMessageDataURLWithData(void *a1)
{
  if (a1)
  {
    v1 = [a1 base64EncodedStringWithOptions:0];
    if (v1)
    {
      v2 = [PKPeerPaymentMessageAbsoluteDataURLPrefix stringByAppendingString:v1];
      v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PKPeerPaymentMessageDataWithDataURL(void *a1)
{
  if (!a1)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v1 = a1;
  v2 = [v1 absoluteString];
  v3 = [v1 scheme];

  if ([v3 isEqualToString:@"data"])
  {
    v4 = [v2 hasPrefix:PKPeerPaymentMessageAbsoluteDataURLPrefix];

    if (!v4)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v3 = [v2 substringFromIndex:{objc_msgSend(PKPeerPaymentMessageAbsoluteDataURLPrefix, "length")}];
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v3 options:1];
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
LABEL_10:

  return v5;
}

id PKPeerPaymentMessageFallbackMediaURL()
{
  v0 = PKPassKitCoreBundle();
  v1 = [v0 URLForResource:@"PeerPaymentMessageFallbackMedia" withExtension:@"png"];

  return v1;
}

PKProtobufPeerPaymentMessage *PKProtobufForDataURL(void *a1)
{
  if (a1)
  {
    v1 = PKPeerPaymentMessageDataWithDataURL(a1);
    if (v1)
    {
      v2 = [[PKProtobufPeerPaymentMessage alloc] initWithData:v1];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKPeerPaymentMessageIdentifierFromDataURL(void *a1)
{
  v1 = PKProtobufForDataURL(a1);
  v2 = v1;
  if (v1 && [v1 hasIdentifier])
  {
    v3 = objc_alloc(MEMORY[0x1E696AFB0]);
    v4 = [v2 identifier];
    v5 = [v3 initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t PKPeerPaymentMessageTypeFromDataURL(void *a1)
{
  v1 = PKProtobufForDataURL(a1);
  v2 = PKPeerPaymentMessageTypeFromProtobuf(v1);

  return v2;
}

uint64_t PKPeerPaymentMessageTypeFromProtobuf(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasType])
  {
    v3 = [v2 type];
    if (v3 - 1 >= 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PKPeerPaymentMessageCurrencyAmountFromDataURL(void *a1)
{
  v1 = PKProtobufForDataURL(a1);
  v2 = PKPeerPaymentMessageCurrencyAmountFromProtobuf(v1);

  return v2;
}

id PKPeerPaymentMessageCurrencyAmountFromProtobuf(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasCurrency] && objc_msgSend(v2, "hasAmount"))
  {
    v3 = [v2 currency];
    if ([v2 hasDecimalAmount])
    {
      v4 = [v2 decimalAmount];
      v5 = PKProtoSupportDecimalNumberFromProtobuf(v4);
    }

    else
    {
      v5 = PKLegacyCurrencyStorageIntegerToDecimal([v2 amount], 0);
    }

    v6 = 0;
    if (v3 && v5)
    {
      v6 = PKCurrencyAmountCreate(v5, v3, 0);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id PKPeerPaymentMessageSenderAddressFromDataURL(void *a1)
{
  v1 = PKProtobufForDataURL(a1);
  v2 = v1;
  if (v1 && [v1 hasSenderAddress])
  {
    v3 = [v2 senderAddress];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PKPeerPaymentMessageRecipientAddressFromDataURL(void *a1)
{
  v1 = PKProtobufForDataURL(a1);
  v2 = v1;
  if (v1 && [v1 hasRecipientAddress])
  {
    v3 = [v2 recipientAddress];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PKPeerPaymentRequestToken *PKPeerPaymentMessageRequestTokenFromDataURL(void *a1)
{
  v1 = PKProtobufForDataURL(a1);
  v2 = v1;
  if (v1 && [v1 hasRequestToken])
  {
    if ([v2 hasRequestDeviceScoreIdentifier])
    {
      v3 = [v2 requestDeviceScoreIdentifier];
      if (v3)
      {
        v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = [PKPeerPaymentRequestToken alloc];
    v7 = [v2 requestToken];
    v5 = [(PKPeerPaymentRequestToken *)v6 initWithRequestToken:v7 deviceScoreIdentifier:v4 expiryDate:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id PKPeerPaymentMessagePaymentIdentifierFromDataURL(void *a1)
{
  v1 = PKProtobufForDataURL(a1);
  v2 = v1;
  if (v1 && [v1 hasPaymentIdentifier])
  {
    v3 = [v2 paymentIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PKPeerPaymentMessageTransactionIdentifierFromDataURL(void *a1)
{
  v1 = PKProtobufForDataURL(a1);
  v2 = v1;
  if (v1 && [v1 hasTransactionIdentifier])
  {
    v3 = [v2 transactionIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PKPeerPaymentMessageMemoFromDataURL(void *a1)
{
  v1 = PKProtobufForDataURL(a1);
  v2 = v1;
  if (v1 && [v1 hasMemo])
  {
    v3 = [v2 memo];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t PKPeerPaymentMessagesContextFromProtobuf(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasMessagesContext])
  {
    v3 = [v2 messagesContext];
    if (v3 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = v3 == 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t PKPeerPaymentMessageRecurringPaymentFrequencyFromProtobuf(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasRecurringPaymentFrequency])
  {
    v3 = [v2 recurringPaymentFrequency];
    v4 = PKPeerPaymentRecurringPaymentFrequencyFromString(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PKPeerPaymentMessageRecurringPaymentStartDateFromProtobuf(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasRecurringPaymentStartDate])
  {
    v3 = MEMORY[0x1E695DF00];
    [v2 recurringPaymentStartDate];
    v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PKPeerPaymentMessageRecurringPaymentEmojiFromProtobuf(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasRecurringPaymentEmoji])
  {
    v3 = [v2 recurringPaymentEmoji];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t PKPeerPaymentMessageRecurringPaymentColorFromProtobuf(void *a1)
{
  v1 = a1;
  v2 = v1;
  v6 = 0;
  if (v1 && [v1 hasRecurringPaymentColor])
  {
    v3 = [v2 recurringPaymentColor];
    PKSemanticColorFromString(v3, &v6);

    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PKPeerPaymentMessageDictionaryRepresentationFromDataURL(void *a1, uint64_t a2)
{
  v3 = PKProtobufForDataURL(a1);
  v4 = PKPeerPaymentMessageDictionaryRepresentationFromProtobuf(v3, a2);

  return v4;
}

id PKPeerPaymentMessageDictionaryRepresentationFromProtobuf(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v3 = [a1 dictionaryRepresentation];
  v4 = v3;
  if (a2 == 2)
  {
    v7 = MEMORY[0x1E695DF70];
    v8 = [v3 allKeys];
    v9 = [v7 arrayWithArray:v8];

    [v9 removeObjectsInArray:&unk_1F23B3D28];
    v6 = _PKFilteredDictionary(v4, v9);
  }

  else
  {
    if (a2 == 1)
    {
      v5 = _PKFilteredDictionary(v3, &unk_1F23B3D10);
    }

    else
    {
      if (a2)
      {
        v6 = 0;
        goto LABEL_11;
      }

      v5 = v3;
    }

    v6 = v5;
  }

LABEL_11:

LABEL_12:

  return v6;
}

id _PKFilteredDictionary(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DF90];
  v5 = a1;
  v6 = [v4 dictionary];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = ___PKFilteredDictionary_block_invoke;
  v14 = &unk_1E79CEA30;
  v15 = v3;
  v16 = v6;
  v7 = v6;
  v8 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:&v11];

  v9 = [v7 copy];

  return v9;
}

uint64_t PKProtobufShippingMethodReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v34 & 0x7F) << v24;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_59;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_59:
            *(a1 + 8) = -(v30 & 1) ^ (v30 >> 1);
            goto LABEL_64;
          case 2:
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_55;
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v34 & 0x7F) << v16;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_63;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_63:
            *(a1 + 56) = v22;
            goto LABEL_64;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v23 = objc_alloc_init(PKProtobufCustomPrecisionAmount);
          objc_storeStrong((a1 + 16), v23);
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !PKProtobufCustomPrecisionAmountReadFrom(v23, a2))
          {
LABEL_66:

            return 0;
          }

          goto LABEL_53;
        }

        if (v13 == 7)
        {
          v23 = objc_alloc_init(PKProtobufNSDecimalNumber);
          objc_storeStrong((a1 + 24), v23);
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !PKProtobufNSDecimalNumberReadFrom(v23, a2))
          {
            goto LABEL_66;
          }

LABEL_53:
          PBReaderRecallMark();

          goto LABEL_64;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_55;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 32;
LABEL_55:
          v31 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_64:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PDContinuityPaymentServiceInterface()
{
  if (qword_1ED6D1938 != -1)
  {
    dispatch_once(&qword_1ED6D1938, &__block_literal_global_58);
  }

  v1 = _MergedGlobals_207;

  return v1;
}

void __PDContinuityPaymentServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247C8A8];
  v1 = _MergedGlobals_207;
  _MergedGlobals_207 = v0;

  v2 = _MergedGlobals_207;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_fetchRemoteDevicesWithHandler_ argumentIndex:0 ofReply:1];
}

id PKContinuityPaymentServiceInterface()
{
  if (qword_1ED6D1948 != -1)
  {
    dispatch_once(&qword_1ED6D1948, &__block_literal_global_83_0);
  }

  v1 = qword_1ED6D1940;

  return v1;
}

void __PKContinuityPaymentServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F24199C0];
  v1 = qword_1ED6D1940;
  qword_1ED6D1940 = v0;

  v2 = qword_1ED6D1940;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_didReceiveUpdatedPaymentDevices_ argumentIndex:0 ofReply:0];
}

id PKContactFormatErrorForInvalidEmailAddressFormat()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6[0] = *MEMORY[0x1E696A578];
  v1 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_3.isa, 0);
  v7[0] = v1;
  v6[1] = *MEMORY[0x1E696A588];
  v2 = PKLocalizedPaymentString(&cfstr_InAppPaymentCo_1.isa, 0);
  v7[1] = v2;
  v7[2] = @"email";
  v6[2] = @"PKPaymentErrorContactField";
  v6[3] = @"PKPaymentErrorInvalidFormat";
  v7[3] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v4 = [v0 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v3];

  return v4;
}

id PKContactFormatErrorForInvalidPhoneNumberFormat()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6[0] = *MEMORY[0x1E696A578];
  v1 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh.isa, 0);
  v7[0] = v1;
  v6[1] = *MEMORY[0x1E696A588];
  v2 = PKLocalizedPaymentString(&cfstr_InAppPaymentCo_2.isa, 0);
  v7[1] = v2;
  v7[2] = @"phone";
  v6[2] = @"PKPaymentErrorContactField";
  v6[3] = @"PKPaymentErrorInvalidFormat";
  v7[3] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v4 = [v0 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v3];

  return v4;
}

id PKContactFormatErrorsFromShippingNameComponenentFormatErrors(uint64_t a1)
{
  v1 = a1;
  v31[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v1)
    {
      v3 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30[0] = *MEMORY[0x1E696A578];
      v4 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_5.isa, 0);
      v31[0] = v4;
      v30[1] = *MEMORY[0x1E696A588];
      v5 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_0.isa, 0);
      v31[1] = v5;
      v31[2] = @"name";
      v30[2] = @"PKPaymentErrorContactField";
      v30[3] = @"PKPaymentErrorInvalidFormat";
      v31[3] = MEMORY[0x1E695E118];
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
      v7 = [v3 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v6];

      [v2 addObject:v7];
    }

    if ((v1 & 2) != 0)
    {
      v8 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28[0] = *MEMORY[0x1E696A578];
      v9 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_5.isa, 0);
      v29[0] = v9;
      v28[1] = *MEMORY[0x1E696A588];
      v10 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_0.isa, 0);
      v29[1] = v10;
      v29[2] = @"name";
      v28[2] = @"PKPaymentErrorContactField";
      v28[3] = @"PKPaymentErrorInvalidFormat";
      v29[3] = MEMORY[0x1E695E118];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];
      v12 = [v8 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v11];

      [v2 addObject:v12];
    }

    if ((v1 & 4) != 0)
    {
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v26[0] = *MEMORY[0x1E696A578];
      v14 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_7.isa, 0);
      v27[0] = v14;
      v26[1] = *MEMORY[0x1E696A588];
      v15 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_0.isa, 0);
      v27[1] = v15;
      v27[2] = @"phoneticName";
      v26[2] = @"PKPaymentErrorContactField";
      v26[3] = @"PKPaymentErrorInvalidFormat";
      v27[3] = MEMORY[0x1E695E118];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
      v17 = [v13 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v16];

      [v2 addObject:v17];
    }

    if ((v1 & 8) != 0)
    {
      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_7.isa, 0, *MEMORY[0x1E696A578]);
      v25[0] = v19;
      v24[1] = *MEMORY[0x1E696A588];
      v20 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_0.isa, 0);
      v25[1] = v20;
      v25[2] = @"phoneticName";
      v24[2] = @"PKPaymentErrorContactField";
      v24[3] = @"PKPaymentErrorInvalidFormat";
      v25[3] = MEMORY[0x1E695E118];
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
      v22 = [v18 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v21];

      [v2 addObject:v22];
    }

    v1 = [v2 copy];
  }

  return v1;
}

id PKContactFormatErrorsFromBillingNameComponenentFormatErrors(uint64_t a1)
{
  v1 = a1;
  v31[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v1)
    {
      v3 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30[0] = *MEMORY[0x1E696A578];
      v4 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_5.isa, 0);
      v31[0] = v4;
      v30[1] = *MEMORY[0x1E696A588];
      v5 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_4.isa, 0);
      v31[1] = v5;
      v31[2] = @"name";
      v30[2] = @"PKPaymentErrorContactField";
      v30[3] = @"PKPaymentErrorInvalidFormat";
      v31[3] = MEMORY[0x1E695E118];
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
      v7 = [v3 initWithDomain:@"PKPaymentErrorDomain" code:2 userInfo:v6];

      [v2 addObject:v7];
    }

    if ((v1 & 2) != 0)
    {
      v8 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28[0] = *MEMORY[0x1E696A578];
      v9 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_5.isa, 0);
      v29[0] = v9;
      v28[1] = *MEMORY[0x1E696A588];
      v10 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_4.isa, 0);
      v29[1] = v10;
      v29[2] = @"name";
      v28[2] = @"PKPaymentErrorContactField";
      v28[3] = @"PKPaymentErrorInvalidFormat";
      v29[3] = MEMORY[0x1E695E118];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];
      v12 = [v8 initWithDomain:@"PKPaymentErrorDomain" code:2 userInfo:v11];

      [v2 addObject:v12];
    }

    if ((v1 & 4) != 0)
    {
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v26[0] = *MEMORY[0x1E696A578];
      v14 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_7.isa, 0);
      v27[0] = v14;
      v26[1] = *MEMORY[0x1E696A588];
      v15 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_4.isa, 0);
      v27[1] = v15;
      v27[2] = @"phoneticName";
      v26[2] = @"PKPaymentErrorContactField";
      v26[3] = @"PKPaymentErrorInvalidFormat";
      v27[3] = MEMORY[0x1E695E118];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
      v17 = [v13 initWithDomain:@"PKPaymentErrorDomain" code:2 userInfo:v16];

      [v2 addObject:v17];
    }

    if ((v1 & 8) != 0)
    {
      v18 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_7.isa, 0, *MEMORY[0x1E696A578]);
      v25[0] = v19;
      v24[1] = *MEMORY[0x1E696A588];
      v20 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_4.isa, 0);
      v25[1] = v20;
      v25[2] = @"phoneticName";
      v24[2] = @"PKPaymentErrorContactField";
      v24[3] = @"PKPaymentErrorInvalidFormat";
      v25[3] = MEMORY[0x1E695E118];
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
      v22 = [v18 initWithDomain:@"PKPaymentErrorDomain" code:2 userInfo:v21];

      [v2 addObject:v22];
    }

    v1 = [v2 copy];
  }

  return v1;
}

id PKContactFormatErrorsFromShippingAddressFormatErrors(uint64_t a1)
{
  v1 = a1;
  v60[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = MEMORY[0x1E696A578];
    if ((v1 & 0x40) != 0)
    {
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v59[0] = *v3;
      v12 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_9.isa, 0);
      v60[0] = v12;
      v59[1] = *MEMORY[0x1E696A588];
      v13 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_10.isa, 0);
      v14 = *MEMORY[0x1E695CC10];
      v60[1] = v13;
      v60[2] = v14;
      v59[2] = @"PKPaymentErrorPostalAddress";
      v59[3] = @"PKPaymentErrorContactField";
      v59[4] = @"PKPaymentErrorInvalidFormat";
      v60[3] = @"post";
      v60[4] = MEMORY[0x1E695E118];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:5];
      v16 = [v11 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v15];

      [v2 addObject:v16];
      if ((v1 & 1) == 0)
      {
LABEL_4:
        if ((v1 & 2) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else if ((v1 & 1) == 0)
    {
      goto LABEL_4;
    }

    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v57[0] = *v3;
    v18 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_9.isa, 0);
    v58[0] = v18;
    v57[1] = *MEMORY[0x1E696A588];
    v19 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_10.isa, 0);
    v20 = *MEMORY[0x1E695CC30];
    v58[1] = v19;
    v58[2] = v20;
    v57[2] = @"PKPaymentErrorPostalAddress";
    v57[3] = @"PKPaymentErrorContactField";
    v57[4] = @"PKPaymentErrorInvalidFormat";
    v58[3] = @"post";
    v58[4] = MEMORY[0x1E695E118];
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:5];
    v22 = [v17 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v21];

    [v2 addObject:v22];
    if ((v1 & 2) == 0)
    {
LABEL_5:
      if ((v1 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_16:
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v55[0] = *v3;
    v24 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_9.isa, 0);
    v56[0] = v24;
    v55[1] = *MEMORY[0x1E696A588];
    v25 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_10.isa, 0);
    v26 = *MEMORY[0x1E695CC40];
    v56[1] = v25;
    v56[2] = v26;
    v55[2] = @"PKPaymentErrorPostalAddress";
    v55[3] = @"PKPaymentErrorContactField";
    v55[4] = @"PKPaymentErrorInvalidFormat";
    v56[3] = @"post";
    v56[4] = MEMORY[0x1E695E118];
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:5];
    v28 = [v23 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v27];

    [v2 addObject:v28];
    if ((v1 & 4) == 0)
    {
LABEL_6:
      if ((v1 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_17:
    v29 = objc_alloc(MEMORY[0x1E696ABC0]);
    v53[0] = *v3;
    v30 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_9.isa, 0);
    v54[0] = v30;
    v53[1] = *MEMORY[0x1E696A588];
    v31 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_10.isa, 0);
    v32 = *MEMORY[0x1E695CC00];
    v54[1] = v31;
    v54[2] = v32;
    v53[2] = @"PKPaymentErrorPostalAddress";
    v53[3] = @"PKPaymentErrorContactField";
    v53[4] = @"PKPaymentErrorInvalidFormat";
    v54[3] = @"post";
    v54[4] = MEMORY[0x1E695E118];
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:5];
    v34 = [v29 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v33];

    [v2 addObject:v34];
    if ((v1 & 8) == 0)
    {
LABEL_7:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

LABEL_18:
    v35 = objc_alloc(MEMORY[0x1E696ABC0]);
    v51[0] = *v3;
    v36 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_9.isa, 0);
    v52[0] = v36;
    v51[1] = *MEMORY[0x1E696A588];
    v37 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_10.isa, 0);
    v38 = *MEMORY[0x1E695CC38];
    v52[1] = v37;
    v52[2] = v38;
    v51[2] = @"PKPaymentErrorPostalAddress";
    v51[3] = @"PKPaymentErrorContactField";
    v51[4] = @"PKPaymentErrorInvalidFormat";
    v52[3] = @"post";
    v52[4] = MEMORY[0x1E695E118];
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:5];
    v40 = [v35 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v39];

    [v2 addObject:v40];
    if ((v1 & 0x10) == 0)
    {
LABEL_8:
      if ((v1 & 0x20) == 0)
      {
LABEL_10:
        v1 = [v2 copy];

        goto LABEL_11;
      }

LABEL_9:
      v4 = objc_alloc(MEMORY[0x1E696ABC0]);
      v5 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_9.isa, 0, *v3);
      v48[0] = v5;
      v47[1] = *MEMORY[0x1E696A588];
      v6 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_10.isa, 0);
      v7 = *MEMORY[0x1E695CC18];
      v48[1] = v6;
      v48[2] = v7;
      v47[2] = @"PKPaymentErrorPostalAddress";
      v47[3] = @"PKPaymentErrorContactField";
      v47[4] = @"PKPaymentErrorInvalidFormat";
      v48[3] = @"post";
      v48[4] = MEMORY[0x1E695E118];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:5];
      v9 = [v4 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v8];

      [v2 addObject:v9];
      goto LABEL_10;
    }

LABEL_19:
    v41 = objc_alloc(MEMORY[0x1E696ABC0]);
    v49[0] = *v3;
    v42 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_9.isa, 0);
    v50[0] = v42;
    v49[1] = *MEMORY[0x1E696A588];
    v43 = PKLocalizedPaymentString(&cfstr_InAppPaymentSh_10.isa, 0);
    v44 = *MEMORY[0x1E695CC28];
    v50[1] = v43;
    v50[2] = v44;
    v49[2] = @"PKPaymentErrorPostalAddress";
    v49[3] = @"PKPaymentErrorContactField";
    v49[4] = @"PKPaymentErrorInvalidFormat";
    v50[3] = @"post";
    v50[4] = MEMORY[0x1E695E118];
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:5];
    v46 = [v41 initWithDomain:@"PKPaymentErrorDomain" code:1 userInfo:v45];

    [v2 addObject:v46];
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:

  return v1;
}

id PKContactFormatErrorsFromBillingAddressFormatErrors(uint64_t a1)
{
  v1 = a1;
  v61[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = MEMORY[0x1E696A578];
    v4 = MEMORY[0x1E696A588];
    if ((v1 & 0x40) != 0)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v60[0] = *v3;
      v13 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi.isa, 0);
      v61[0] = v13;
      v60[1] = *v4;
      v14 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_1.isa, 0);
      v15 = *MEMORY[0x1E695CC10];
      v61[1] = v14;
      v61[2] = v15;
      v60[2] = @"PKPaymentErrorPostalAddress";
      v60[3] = @"PKPaymentErrorContactField";
      v60[4] = @"PKPaymentErrorInvalidFormat";
      v61[3] = @"post";
      v61[4] = MEMORY[0x1E695E118];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:5];
      v17 = [v12 initWithDomain:@"PKPaymentErrorDomain" code:2 userInfo:v16];

      [v2 addObject:v17];
      if ((v1 & 1) == 0)
      {
LABEL_4:
        if ((v1 & 2) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else if ((v1 & 1) == 0)
    {
      goto LABEL_4;
    }

    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v58[0] = *v3;
    v19 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi.isa, 0);
    v59[0] = v19;
    v58[1] = *v4;
    v20 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_1.isa, 0);
    v21 = *MEMORY[0x1E695CC30];
    v59[1] = v20;
    v59[2] = v21;
    v58[2] = @"PKPaymentErrorPostalAddress";
    v58[3] = @"PKPaymentErrorContactField";
    v58[4] = @"PKPaymentErrorInvalidFormat";
    v59[3] = @"post";
    v59[4] = MEMORY[0x1E695E118];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:5];
    v23 = [v18 initWithDomain:@"PKPaymentErrorDomain" code:2 userInfo:v22];

    [v2 addObject:v23];
    if ((v1 & 2) == 0)
    {
LABEL_5:
      if ((v1 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_16:
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v56[0] = *v3;
    v25 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi.isa, 0);
    v57[0] = v25;
    v56[1] = *v4;
    v26 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_1.isa, 0);
    v27 = *MEMORY[0x1E695CC40];
    v57[1] = v26;
    v57[2] = v27;
    v56[2] = @"PKPaymentErrorPostalAddress";
    v56[3] = @"PKPaymentErrorContactField";
    v56[4] = @"PKPaymentErrorInvalidFormat";
    v57[3] = @"post";
    v57[4] = MEMORY[0x1E695E118];
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:5];
    v29 = [v24 initWithDomain:@"PKPaymentErrorDomain" code:2 userInfo:v28];

    [v2 addObject:v29];
    if ((v1 & 4) == 0)
    {
LABEL_6:
      if ((v1 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_17:
    v30 = objc_alloc(MEMORY[0x1E696ABC0]);
    v54[0] = *v3;
    v31 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi.isa, 0);
    v55[0] = v31;
    v54[1] = *v4;
    v32 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_1.isa, 0);
    v33 = *MEMORY[0x1E695CC00];
    v55[1] = v32;
    v55[2] = v33;
    v54[2] = @"PKPaymentErrorPostalAddress";
    v54[3] = @"PKPaymentErrorContactField";
    v54[4] = @"PKPaymentErrorInvalidFormat";
    v55[3] = @"post";
    v55[4] = MEMORY[0x1E695E118];
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:5];
    v35 = [v30 initWithDomain:@"PKPaymentErrorDomain" code:2 userInfo:v34];

    [v2 addObject:v35];
    if ((v1 & 8) == 0)
    {
LABEL_7:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

LABEL_18:
    v36 = objc_alloc(MEMORY[0x1E696ABC0]);
    v52[0] = *v3;
    v37 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi.isa, 0);
    v53[0] = v37;
    v52[1] = *v4;
    v38 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_1.isa, 0);
    v39 = *MEMORY[0x1E695CC38];
    v53[1] = v38;
    v53[2] = v39;
    v52[2] = @"PKPaymentErrorPostalAddress";
    v52[3] = @"PKPaymentErrorContactField";
    v52[4] = @"PKPaymentErrorInvalidFormat";
    v53[3] = @"post";
    v53[4] = MEMORY[0x1E695E118];
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:5];
    v41 = [v36 initWithDomain:@"PKPassKitErrorDomain" code:2 userInfo:v40];

    [v2 addObject:v41];
    if ((v1 & 0x10) == 0)
    {
LABEL_8:
      if ((v1 & 0x20) == 0)
      {
LABEL_10:
        v1 = [v2 copy];

        goto LABEL_11;
      }

LABEL_9:
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v6 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi.isa, 0, *v3);
      v49[0] = v6;
      v48[1] = *v4;
      v7 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_1.isa, 0);
      v8 = *MEMORY[0x1E695CC18];
      v49[1] = v7;
      v49[2] = v8;
      v48[2] = @"PKPaymentErrorPostalAddress";
      v48[3] = @"PKPaymentErrorContactField";
      v48[4] = @"PKPaymentErrorInvalidFormat";
      v49[3] = @"post";
      v49[4] = MEMORY[0x1E695E118];
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:5];
      v10 = [v5 initWithDomain:@"PKPaymentErrorDomain" code:2 userInfo:v9];

      [v2 addObject:v10];
      goto LABEL_10;
    }

LABEL_19:
    v42 = objc_alloc(MEMORY[0x1E696ABC0]);
    v50[0] = *v3;
    v43 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi.isa, 0);
    v51[0] = v43;
    v50[1] = *v4;
    v44 = PKLocalizedPaymentString(&cfstr_InAppPaymentBi_1.isa, 0);
    v45 = *MEMORY[0x1E695CC28];
    v51[1] = v44;
    v51[2] = v45;
    v50[2] = @"PKPaymentErrorPostalAddress";
    v50[3] = @"PKPaymentErrorContactField";
    v50[4] = @"PKPaymentErrorInvalidFormat";
    v51[3] = @"post";
    v51[4] = MEMORY[0x1E695E118];
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:5];
    v47 = [v42 initWithDomain:@"PKPaymentErrorDomain" code:2 userInfo:v46];

    [v2 addObject:v47];
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:

  return v1;
}

void PKContactFormatAssignFormatErrorsToPreferenceContact(void *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v34 = v3;
  if (v3 && v4)
  {
    v6 = [v3 preferences];
    v7 = [v3 type];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v6;
    v37 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (!v37)
    {
      goto LABEL_35;
    }

    v35 = *v39;
    v36 = v7;
    while (1)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = [v9 postalAddresses];
        v12 = [v11 firstObject];
        v13 = [v12 value];

        if (v13)
        {
          v14 = [v5 checkPostalAddressFormat:v13];
          if (v7)
          {
            if (v7 != 1)
            {
              goto LABEL_15;
            }

            v15 = PKContactFormatErrorsFromShippingAddressFormatErrors(v14);
          }

          else
          {
            v15 = PKContactFormatErrorsFromBillingAddressFormatErrors(v14);
          }

          v16 = v15;
          if (v15)
          {
            [v10 addObjectsFromArray:v15];
          }
        }

LABEL_15:
        v17 = [v9 nameComponents];
        v18 = v17;
        if (v13)
        {
          v19 = v17 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          v20 = [v13 ISOCountryCode];
          v21 = [v5 checkNameFormat:v18 forCountryCode:v20];

          if (v7)
          {
            if (v7 != 1)
            {
              goto LABEL_25;
            }

            v22 = PKContactFormatErrorsFromShippingNameComponenentFormatErrors(v21);
          }

          else
          {
            v22 = PKContactFormatErrorsFromBillingNameComponenentFormatErrors(v21);
          }

          v23 = v22;
          if (v22)
          {
            [v10 addObjectsFromArray:v22];
          }
        }

LABEL_25:
        v24 = [v9 phoneNumbers];
        v25 = [v24 firstObject];
        v26 = [v25 value];

        if (v26 && ([v5 phoneNumberIsValid:v26 forCountryCode:0] & 1) == 0)
        {
          v27 = PKContactFormatErrorForInvalidPhoneNumberFormat();
          [v10 addObject:v27];
        }

        v28 = [v9 emailAddresses];
        v29 = [v28 firstObject];
        v30 = [v29 value];

        if (v30 && ([v5 emailAddressIsValid:v30] & 1) == 0)
        {
          v31 = PKContactFormatErrorForInvalidEmailAddressFormat();
          [v10 addObject:v31];
        }

        if ([v10 count])
        {
          v32 = [v10 copy];
          [v34 setErrors:v32 forPreference:v9];
        }

        v7 = v36;
      }

      v37 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (!v37)
      {
LABEL_35:

        break;
      }
    }
  }
}

id PKContactFormatRequiredPostalAddressKeysForCountryCode(void *a1, void *a2)
{
  v25[6] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4 && [v3 length])
  {
    v5 = *MEMORY[0x1E695CC40];
    v25[0] = *MEMORY[0x1E695CC30];
    v25[1] = v5;
    v6 = *MEMORY[0x1E695CC38];
    v25[2] = *MEMORY[0x1E695CC00];
    v25[3] = v6;
    v7 = *MEMORY[0x1E695CC18];
    v25[4] = *MEMORY[0x1E695CC28];
    v25[5] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:6];
    v9 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v4 contactFieldConfigurationForPostalField:v15 forCountryCode:{v3, v20}];
          v17 = v16;
          if (v16)
          {
            if ([v16 type])
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || [v17 minLength] >= 1)
              {
                [v9 addObject:v15];
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    v18 = [v9 copy];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  return v18;
}

void PKContactFormatAssignPhoneFormatErrorToPreferenceForContact(void *a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (v5 && a2 && v6)
  {
    v8 = a2;
    v9 = [v7 phoneNumbers];
    v10 = [v9 firstObject];
    v11 = [v10 value];

    LOBYTE(v9) = [v8 phoneNumberIsValid:v11 forCountryCode:0];
    if (v9)
    {
      [v5 setErrors:MEMORY[0x1E695E0F0] forPreference:v7];
    }

    else
    {
      v12 = PKContactFormatErrorForInvalidPhoneNumberFormat();
      v14[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v5 setErrors:v13 forPreference:v7];
    }
  }
}

void PKContactFormatAssignEmailFormatErrorToPreferenceForContact(void *a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (v5 && a2 && v6)
  {
    v8 = a2;
    v9 = [v7 emailAddresses];
    v10 = [v9 firstObject];
    v11 = [v10 value];

    LOBYTE(v9) = [v8 emailAddressIsValid:v11];
    if (v9)
    {
      [v5 setErrors:MEMORY[0x1E695E0F0] forPreference:v7];
    }

    else
    {
      v12 = PKContactFormatErrorForInvalidEmailAddressFormat();
      v14[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v5 setErrors:v13 forPreference:v7];
    }
  }
}

id DateComponentsFromFelicaDateNumber(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = ([v1 intValue] >> 24) & 0xF;
    v3 = ([v1 intValue] >> 16);
    v4 = [v1 intValue];

    v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
    v6 = objc_alloc(MEMORY[0x1E695DEE8]);
    v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    [v5 setCalendar:v7];

    [v5 setDay:v3];
    [v5 setMonth:v2];
    [v5 setYear:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id DateComponentsFromFelicaTimeNumber(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 integerValue] / 60;
    v3 = [v1 integerValue];

    v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
    v5 = objc_alloc(MEMORY[0x1E695DEE8]);
    v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    [v4 setCalendar:v6];

    [v4 setHour:v2];
    [v4 setMinute:v3 % 60];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

Class initLNClientConnection()
{
  if (qword_1ED6D1958 != -1)
  {
    dispatch_once(&qword_1ED6D1958, &__block_literal_global_60);
  }

  result = objc_getClass("LNClientConnection");
  _MergedGlobals_208 = result;
  getLNClientConnectionClass[0] = LNClientConnectionFunction;
  return result;
}

void *__LoadAppIntents_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AppIntents.framework/AppIntents", 2);
  LoadAppIntents_frameworkLibrary = result;
  return result;
}

PKPaymentRequest *PKPaymentRequestFromSharingRequest(void *a1)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(PKPaymentRequest);
    [(PKPaymentRequest *)v2 setSuppressTotal:1];
    [(PKPaymentRequest *)v2 setRequestType:7];
    v3 = PKLocalizedString(&cfstr_Wallet_1.isa, 0);
    [(PKPaymentRequest *)v2 setLocalizedNavigationTitle:v3];

    [(PKPaymentRequest *)v2 setConfirmationStyle:1];
    v4 = PKLocalizedCredentialString(&cfstr_CarkeyCannotSh.isa, 0);
    [(PKPaymentRequest *)v2 setLocalizedErrorMessage:v4];

    v5 = PKLocalizedPaymentString(&cfstr_InAppPaymentPr.isa, 0);
    [(PKPaymentRequest *)v2 setLocalizedAuthorizingTitle:v5];

    v6 = PKLocalizedCredentialString(&cfstr_CarkeyCannotSh.isa, 0);
    [(PKPaymentRequest *)v2 setLocalizedCallbackErrorTitle:v6];

    v7 = PKLocalizedCredentialString(&cfstr_CarkeyCannotSh_0.isa, 0);
    [(PKPaymentRequest *)v2 setLocalizedCallbackErrorMessage:v7];

    v8 = [v1 pass];
    if ([v1 isForLocalDevice])
    {
      if (PKPearlIsAvailable())
      {
        v9 = @"CAR_KEY_SHARING_WATCH_CONFIRMATION";
      }

      else
      {
        v9 = @"CAR_KEY_SHARING_WATCH_TOUCHID_CONFIRMATION";
      }

      v10 = PKLocalizedCredentialString(&v9->isa, 0);
      v11 = objc_alloc_init(PKPaymentContentItem);
      v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10];
      [(PKPaymentContentItem *)v11 setLabel:v12];

      [(PKPaymentContentItem *)v11 setCentered:1];
      v41[0] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
      [(PKPaymentRequest *)v2 setPaymentContentItems:v13];
    }

    else
    {
      v14 = objc_alloc_init(PKPaymentContentItem);
      v11 = PKLocalizedCredentialString(&cfstr_CarKeySharingR.isa, 0);
      v15 = [v1 recipientName];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = [v1 recipientIdentifier];
      }

      v18 = v17;

      if (v11)
      {
        v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11];
        [(PKPaymentContentItem *)v14 setTitle:v19];
      }

      if (v18)
      {
        v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v18];
        [(PKPaymentContentItem *)v14 setLabel:v20];
      }

      v37 = v14;
      v21 = objc_alloc_init(PKPaymentContentItem);
      v22 = [v1 entitlement];
      v38 = [PKDisplayablePassEntitlement localizedEntitlementFromCarKeyEntitlement:v22 pass:v8];

      v23 = PKLocalizedCredentialString(&cfstr_CarKeySharingE.isa, 0);
      if (v23)
      {
        v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v23];
        [(PKPaymentContentItem *)v21 setTitle:v24];
      }

      v36 = v18;
      v39 = v8;
      v25 = [v38 localizedTitle];
      if (v25)
      {
        v26 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v25];
        [(PKPaymentContentItem *)v21 setLabel:v26];
      }

      v27 = v21;
      v28 = objc_alloc_init(PKPaymentContentItem);
      v29 = PKLocalizedCredentialString(&cfstr_CarKeySharingV.isa, 0);
      v30 = [v39 localizedDescription];
      if (v29)
      {
        v31 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v29];
        [(PKPaymentContentItem *)v28 setTitle:v31];
      }

      if (v30)
      {
        v32 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v30];
        [(PKPaymentContentItem *)v28 setLabel:v32];
      }

      v10 = v37;
      v40[0] = v37;
      v40[1] = v27;
      v40[2] = v28;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
      [(PKPaymentRequest *)v2 setPaymentContentItems:v33];

      v8 = v39;
      v13 = v36;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

Class initACCConnectionInfo()
{
  if (qword_1ED6D1968 != -1)
  {
    dispatch_once(&qword_1ED6D1968, &__block_literal_global_63);
  }

  result = objc_getClass("ACCConnectionInfo");
  _MergedGlobals_209 = result;
  getACCConnectionInfoClass = ACCConnectionInfoFunction;
  return result;
}

void *__LoadCoreAccessories_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreAccessories.framework/CoreAccessories", 2);
  LoadCoreAccessories_frameworkLibrary = result;
  return result;
}

__CFString *PKSharingMessageFormatToString(uint64_t a1)
{
  if ((a1 - 2) > 2)
  {
    v1 = PKSharingMessageFormatGenericAuthorizationTokenKey;
  }

  else
  {
    v1 = off_1E79CED28[a1 - 2];
  }

  return *v1;
}

uint64_t PKSharingMessageFormatFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && @"digitalwallet.generic.authorizationToken")
  {
    if (([(__CFString *)v1 isEqual:@"digitalwallet.generic.authorizationToken"]& 1) != 0)
    {
LABEL_4:
      v3 = 1;
      goto LABEL_23;
    }
  }

  else if (@"digitalwallet.generic.authorizationToken" == v1)
  {
    goto LABEL_4;
  }

  if (v2 && @"digitalwallet.carkey.ccc")
  {
    if (([(__CFString *)v2 isEqual:@"digitalwallet.carkey.ccc"]& 1) != 0)
    {
LABEL_9:
      v3 = 2;
      goto LABEL_23;
    }
  }

  else if (@"digitalwallet.carkey.ccc" == v2)
  {
    goto LABEL_9;
  }

  if (v2 && @"digitalwallet.apple.home")
  {
    if (([(__CFString *)v2 isEqual:@"digitalwallet.apple.home"]& 1) != 0)
    {
LABEL_14:
      v3 = 4;
      goto LABEL_23;
    }
  }

  else if (@"digitalwallet.apple.home" == v2)
  {
    goto LABEL_14;
  }

  if (v2 && @"digitalwallet.apple")
  {
    v4 = [(__CFString *)v2 isEqual:@"digitalwallet.apple"];
  }

  else
  {
    v4 = @"digitalwallet.apple" == v2;
  }

  if (v4)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

LABEL_23:

  return v3;
}

__CFString *PKSharingMessageGenericDataKeyForFormat(unint64_t a1)
{
  if (a1 > 4)
  {
    v1 = PKSharingMessageAuthorizationTokenGenericDataKey;
  }

  else
  {
    v1 = off_1E79CED40[a1];
  }

  return *v1;
}

__CFString *PKSharingMessageTypeToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 <= 6)
  {
    v2 = @"ownerCancel";
    v7 = @"friendCancel";
    v8 = @"pinEntryRequest";
    if (a1 != 6)
    {
      v8 = @"unknown";
    }

    if (a1 != 5)
    {
      v7 = v8;
    }

    if (a1 != 4)
    {
      v2 = v7;
    }

    if (a1 == 3)
    {
      v1 = @"keySigningResponse";
    }

    if (a1 == 2)
    {
      v1 = @"keySigningRequest";
    }

    if (a1 == 1)
    {
      v1 = @"invitation";
    }

    v6 = a1 <= 3;
  }

  else
  {
    v2 = @"discoveryResponse";
    v3 = @"proximitySetupAssistant";
    if (a1 != 2003)
    {
      v3 = @"unknown";
    }

    if (a1 != 2002)
    {
      v2 = v3;
    }

    v4 = @"url";
    v5 = @"discoveryRequest";
    if (a1 != 2001)
    {
      v5 = @"unknown";
    }

    if (a1 != 1003)
    {
      v4 = v5;
    }

    if (a1 <= 2001)
    {
      v2 = v4;
    }

    if (a1 == 1002)
    {
      v1 = @"externalInvitationRequest";
    }

    if (a1 == 1001)
    {
      v1 = @"invitationRequest";
    }

    if (a1 == 7)
    {
      v1 = @"pinEntryResponse";
    }

    v6 = a1 <= 1002;
  }

  if (v6)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t PKSharingMessageTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"invitation")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_41:
    v4 = 0;
    goto LABEL_42;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"invitation"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"keySigningRequest" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"keySigningRequest"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_42;
    }

    v8 = v6;
    if (v8 == @"keySigningResponse" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"keySigningResponse"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_42;
    }

    v11 = v9;
    if (v11 == @"ownerCancel" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"ownerCancel"], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_42;
    }

    v14 = v12;
    if (v14 == @"friendCancel" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"friendCancel"], v15, (v16 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_42;
    }

    v17 = v15;
    if (v17 == @"pinEntryRequest" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"pinEntryRequest"], v18, (v19 & 1) != 0))
    {
      v4 = 6;
      goto LABEL_42;
    }

    v20 = v18;
    if (v20 == @"pinEntryResponse" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"pinEntryResponse"], v21, (v22 & 1) != 0))
    {
      v4 = 7;
      goto LABEL_42;
    }

    v23 = v21;
    if (v23 == @"invitationRequest" || (v24 = v23, v25 = [(__CFString *)v23 isEqualToString:@"invitationRequest"], v24, (v25 & 1) != 0))
    {
      v4 = 1001;
      goto LABEL_42;
    }

    v26 = v24;
    if (v26 == @"externalInvitationRequest" || (v27 = v26, v28 = [(__CFString *)v26 isEqualToString:@"externalInvitationRequest"], v27, (v28 & 1) != 0))
    {
      v4 = 1002;
      goto LABEL_42;
    }

    v29 = v27;
    if (v29 == @"url" || (v30 = v29, v31 = [(__CFString *)v29 isEqualToString:@"url"], v30, (v31 & 1) != 0))
    {
      v4 = 1003;
      goto LABEL_42;
    }

    v32 = v30;
    if (v32 == @"discoveryRequest" || (v33 = v32, v34 = [(__CFString *)v32 isEqualToString:@"discoveryRequest"], v33, (v34 & 1) != 0))
    {
      v4 = 2001;
      goto LABEL_42;
    }

    v35 = v33;
    if (v35 == @"discoveryResponse" || (v36 = v35, v37 = [(__CFString *)v35 isEqualToString:@"discoveryResponse"], v36, (v37 & 1) != 0))
    {
      v4 = 2002;
      goto LABEL_42;
    }

    v38 = v36;
    if (v38 == @"proximitySetupAssistant" || (v39 = v38, v40 = [(__CFString *)v38 isEqualToString:@"proximitySetupAssistant"], v39, v40))
    {
      v4 = 2003;
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_4:
  v4 = 1;
LABEL_42:

  return v4;
}

__CFString *PKPaymentOffersSessionDetailsContextToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"ecom";
  }

  else
  {
    return off_1E79CEDB0[a1 - 1];
  }
}

uint64_t PKPaymentOffersSessionDetailsContextFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 != @"ecom" && v1 != 0)
  {
    v4 = [(__CFString *)v1 isEqualToString:@"ecom"];

    if ((v4 & 1) == 0)
    {
      v7 = v2;
      if (v7 == @"instore" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"instore"], v8, (v9 & 1) != 0))
      {
        v5 = 1;
        goto LABEL_7;
      }

      v10 = v8;
      if (v10 == @"walletProvisioning" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"walletProvisioning"], v11, (v12 & 1) != 0))
      {
        v5 = 2;
        goto LABEL_7;
      }

      v13 = v11;
      if (v13 == @"postPurchase" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"postPurchase"], v14, v15))
      {
        v5 = 3;
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t PKProtobufRecurringPaymentSummaryItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 != 3)
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          *(a1 + 32) |= 1u;
          v38 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v38 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v38;
          v35 = 8;
          goto LABEL_61;
        }

        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          LOBYTE(v38) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v38 & 0x7F) << v26;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_55;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v28;
        }

LABEL_55:
        v32 = 24;
      }

      else
      {
        if (v13 == 1)
        {
          *(a1 + 32) |= 2u;
          v38 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v38 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v38;
          v35 = 16;
LABEL_61:
          *(a1 + v35) = v34;
          goto LABEL_62;
        }

        if (v13 != 2)
        {
          goto LABEL_34;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 8u;
        while (1)
        {
          LOBYTE(v38) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_51;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_51:
        v32 = 28;
      }

      *(a1 + v32) = v20;
LABEL_62:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKPendingProvisioningStatusFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"available")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"available"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"inProgress" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"inProgress"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_18;
    }

    v8 = v6;
    if (v8 == @"actionRequired" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"actionRequired"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_18;
    }

    v11 = v9;
    if (v11 == @"unavailable" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"unavailable"], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_18;
    }

    v14 = v12;
    if (v14 == @"provisioned" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"provisioned"], v15, v16))
    {
      v4 = 5;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_4:
  v4 = 1;
LABEL_18:

  return v4;
}

__CFString *PKPendingProvisioningStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CEE10[a1 - 1];
  }
}

id PKAllPendingProvisioningTypes()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"CarKey";
  v2[1] = @"PaymentRemoteCredential";
  v2[2] = @"PaymentShareableCredential";
  v2[3] = @"AccountCredential";
  v2[4] = @"StatefulTransfer";
  v2[5] = @"PrecursorPassCredential";
  v2[6] = @"IdentityCredential";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];

  return v0;
}

id _PKSharingDisplayableError(void *a1, char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [v5 domain];
  v9 = v8;
  if (v8 == @"PKDisplayableError")
  {

    goto LABEL_7;
  }

  if (!v8 || !@"PKDisplayableError")
  {

    goto LABEL_9;
  }

  v10 = [(__CFString *)v8 isEqualToString:@"PKDisplayableError"];

  if (v10)
  {
LABEL_7:
    v11 = PKTitleForDisplayableError(v5);
LABEL_17:
    v16 = v11;
    v17 = [v5 localizedRecoverySuggestion];
LABEL_18:
    v18 = v17;
LABEL_19:
    v19 = 1;
    goto LABEL_20;
  }

LABEL_9:
  v12 = v9;
  v13 = v12;
  if (v12 == @"PKPaymentWebServiceErrorDomain")
  {
  }

  else
  {
    if (!v9 || !@"PKPaymentWebServiceErrorDomain")
    {

LABEL_29:
      v22 = v13;
      v23 = v22;
      if (v22 == @"PKSharingErrorDomain")
      {
      }

      else
      {
        if (!v9 || !@"PKSharingErrorDomain")
        {

          goto LABEL_47;
        }

        v24 = [(__CFString *)v22 isEqualToString:@"PKSharingErrorDomain"];

        if (!v24)
        {
LABEL_47:
          v27 = v23;
          v28 = v27;
          if (v27 == @"PKAddSecureElementPassErrorDomain")
          {
          }

          else
          {
            if (!v9 || !@"PKAddSecureElementPassErrorDomain")
            {

              goto LABEL_65;
            }

            v29 = [(__CFString *)v27 isEqualToString:@"PKAddSecureElementPassErrorDomain"];

            if (!v29)
            {
              goto LABEL_65;
            }
          }

          v31 = [v5 code];
          if (v31 == 6)
          {
            v16 = PKLocalizedShareableCredentialString(&cfstr_ShareableCrede_1.isa, 0);
            v32 = @"SHAREABLE_CREDENTIAL_ERROR_UNSUPPORTED_OS_VERSION_MESSAGE_IPHONE";
            goto LABEL_91;
          }

          if (v31 == 4)
          {
            v16 = PKLocalizedShareableCredentialString(&cfstr_ShareableCrede.isa, 0);
            v32 = @"SHAREABLE_CREDENTIAL_ERROR_UNSUPPORTED_DEVICE_MESSAGE";
LABEL_91:
            v17 = PKLocalizedShareableCredentialString(&v32->isa, 0);
            goto LABEL_18;
          }

LABEL_65:
          v18 = 0;
          v16 = 0;
          goto LABEL_19;
        }
      }

      v26 = [v5 code];
      v18 = 0;
      v19 = 1;
      if (v26 <= 7)
      {
        if (v26 <= 4)
        {
          if (v26 != 2)
          {
            if (v26 != 3)
            {
              v16 = 0;
              if (v26 != 4)
              {
                goto LABEL_20;
              }

LABEL_72:
              v16 = PKLocalizedShareableCredentialString(&cfstr_ShareActivatio_8.isa, 0);
              v32 = @"SHARE_ACTIVATION_ERROR_PIN_CODE_TIMEOUT_DESCRIPTION";
              goto LABEL_91;
            }

            goto LABEL_59;
          }

LABEL_81:
          v16 = PKLocalizedShareableCredentialString(&cfstr_ShareActivatio_2.isa, 0);
          v30 = @"SHARE_ACTIVATION_ERROR_PIN_CODE_INVALID_DESCRIPTION";
          goto LABEL_84;
        }

        if (v26 != 5)
        {
          if (v26 == 6)
          {
            v16 = PKLocalizedShareableCredentialString(&cfstr_ShareRedemepti.isa, 0);
            v32 = @"SHARE_REDEMEPTION_ERROR_GENERIC_MESSAGE";
            goto LABEL_91;
          }

          goto LABEL_73;
        }

LABEL_80:
        v16 = PKLocalizedShareableCredentialString(&cfstr_ShareActivatio_4.isa, 0);
        v32 = @"SHARE_ACTIVATION_ERROR_PIN_CODE_LOCKOUT_DESCRIPTION";
        goto LABEL_91;
      }

      if (v26 <= 10)
      {
        if (v26 == 8)
        {
          v16 = PKLocalizedShareableCredentialString(&cfstr_ShareRedemepti.isa, 0);
          v32 = @"SHARE_REDEMEPTION_ERROR_APPLE_NOT_SUPPORTED_DESCRIPTION_IPHONE";
          goto LABEL_91;
        }

        if (v26 != 9)
        {
          v16 = PKLocalizedShareableCredentialString(&cfstr_ShareRedemptio_1.isa, 0);
          v18 = 0;
          goto LABEL_19;
        }

        v16 = _LocalizedShareableCredentialString(@"SHARE_EDIT_ERROR_UNAVAILABLE_TITLE", v6);
        v33 = @"SHARE_EDIT_ERROR_UNAVAILABLE_DESCRIPTION";
        goto LABEL_89;
      }

      if (v26 == 11)
      {
        v16 = PKLocalizedShareableCredentialString(&cfstr_ShareRedemepti.isa, 0);
        v32 = @"SHARE_REDEMPTION_ERROR_INVITATION_ORIGINATED_LOCALLY_DESCRIPTION";
        goto LABEL_91;
      }

      if (v26 != 12)
      {
        v16 = 0;
        if (v26 != 13)
        {
          goto LABEL_20;
        }

        goto LABEL_72;
      }

LABEL_73:
      v16 = _LocalizedShareableCredentialString(@"SHARE_INITIATION_ERROR_UNAVAILABLE_TITLE", v6);
      v32 = @"SHARE_INITIATION_ERROR_UNAVAILABLE_DESCRIPTION";
      goto LABEL_91;
    }

    v14 = [(__CFString *)v12 isEqualToString:@"PKPaymentWebServiceErrorDomain"];

    if (!v14)
    {
      goto LABEL_29;
    }
  }

  v15 = [v5 localizedFailureReason];

  if (v15)
  {
    v11 = [v5 localizedFailureReason];
    goto LABEL_17;
  }

  v25 = [v5 code];
  v18 = 0;
  v19 = 1;
  if (v25 <= 60079)
  {
    if (v25 <= 60010)
    {
      if (v25 == 60009)
      {
        v16 = PKLocalizedShareableCredentialString(&cfstr_ShareActivatio_0.isa, 0);
        v30 = @"SHARE_ACTIVATION_ERROR_PIN_CODE_REQUIRED_DESCRIPTION";
        goto LABEL_84;
      }

      v16 = 0;
      if (v25 != 60010)
      {
        goto LABEL_20;
      }

      goto LABEL_81;
    }

    if (v25 == 60011)
    {
      goto LABEL_80;
    }

    v16 = 0;
    if (v25 != 60079)
    {
      goto LABEL_20;
    }

    v16 = PKLocalizedShareableCredentialString(&cfstr_ShareInitiatio_1.isa, 0);
    v33 = @"SHARE_INITIATION_ERROR_SHARE_LIMIT_REACHED_DESCRIPTION";
    goto LABEL_89;
  }

  if (v25 <= 60084)
  {
    if (v25 != 60080)
    {
      v16 = 0;
      if (v25 != 60083)
      {
        goto LABEL_20;
      }

LABEL_59:
      v16 = PKLocalizedShareableCredentialString(&cfstr_ShareActivatio_6.isa, 0);
      v30 = @"SHARE_ACTIVATION_ERROR_INVALID_LAST_ATTEMPT_DESCRIPTION";
LABEL_84:
      v18 = PKLocalizedShareableCredentialString(&v30->isa, 0);
      v19 = 0;
      goto LABEL_20;
    }

    goto LABEL_73;
  }

  if (v25 == 60085)
  {
    v16 = _LocalizedShareableCredentialString(@"SHARE_REDEMPTION_ERROR_PASS_MERGE_UNAVAILABLE_TITLE", v6);
    v33 = @"SHARE_REDEMPTION_ERROR_PASS_MERGE_UNAVAILABLE_DESCRIPTION";
LABEL_89:
    v17 = _LocalizedShareableCredentialString(v33, v6);
    goto LABEL_18;
  }

  v16 = 0;
  if (v25 == 60087)
  {
    v16 = _LocalizedShareableCredentialString(@"SHARE_INITIATION_ERROR_UNAVAILABLE_TITLE", v6);
    v32 = @"SHARE_INITIATION_ERROR_NAME_TAKEN_DESCRIPTION";
    goto LABEL_91;
  }

LABEL_20:
  if (a2)
  {
    *a2 = v19;
  }

  if (v16)
  {
    [v7 setObject:0 forKeyedSubscript:*MEMORY[0x1E696A278]];
    [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v20 = PKDisplayableErrorCustomWithType(-1, v16, v18, v5, v7);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id PKSharingProvisioningErrorFromError(void *a1)
{
  v7 = 0;
  v1 = a1;
  v2 = _PKSharingDisplayableError(v1, &v7, 0);
  if (v7)
  {
    v3 = 5;
  }

  else
  {
    v3 = 4;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v1;
  }

  v5 = [PKProvisioningError errorWithUnderlyingError:v4 defaultSeverity:v3];

  return v5;
}

void PKSharingFetchInvitationFromMailboxAddress(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PKSharingRelayChannelDescriptor existingChannelForURL:a1];
  v5 = [PKSharingChannelHandle createHandleForDescriptor:v4 queue:MEMORY[0x1E69E96A0]];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PKSharingFetchInvitationFromMailboxAddress_block_invoke;
  v8[3] = &unk_1E79C4568;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  v7 = v5;
  [v7 attachWithCompletion:v8];
}

void __PKSharingFetchInvitationFromMailboxAddress_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4 || !v5)
  {
    [v5 invalidate];
    v6 = PKLogFacilityTypeGetObject(0x22uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Unable to handle share invitation link. Error: %@", buf, 0xCu);
    }

    v7 = _PKSharingDisplayableError(v4, 0, 0);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = [MEMORY[0x1E696ABC0] pkSharingError:6];
      v9 = _PKSharingDisplayableError(v10, 0, 0);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __PKSharingFetchInvitationFromMailboxAddress_block_invoke_16;
    v11[3] = &unk_1E79CEE40;
    v12 = v5;
    v13 = *(a1 + 40);
    [v12 handleOutstandingMessage:v11];

    v9 = v12;
  }
}

void __PKSharingFetchInvitationFromMailboxAddress_block_invoke_16(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  (*(a3 + 16))(a3, 0);
  if ([v5 type] == 1)
  {
    v6 = v5;
    if (PKIsPhone())
    {
      v7 = 0;
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(0x22uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Warning, tried to find embedded mailbox address on unsupported device!", &v15, 2u);
      }

      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v12 = [v6 embeddedAddressForDeviceType:v7];
    if (v12)
    {
      v13 = PKLogFacilityTypeGetObject(0x22uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = PKPassCredentialShareTargetDeviceToString(v7);
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Found embedded message url for device '%@', following.", &v15, 0xCu);
      }

      [*(a1 + 32) relinquishWithCompletion:0];
      [*(a1 + 32) invalidate];
      PKSharingFetchInvitationFromMailboxAddress(v12, *(a1 + 40));
    }

    else
    {

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    [*(a1 + 32) invalidate];
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E696ABC0] pkSharingError:6];
    v10 = _PKSharingDisplayableError(v9, 0, 0);
    (*(v8 + 16))(v8, 0, 0, v10);
  }
}

uint64_t PKSharingIsCarKeySharingBlockedForSecureElementPass(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = [a1 devicePrimaryPaymentApplication];
  v2 = [v1 subcredentials];
  v3 = [v2 anyObject];

  v4 = [v3 manufacturerIdentifier];
  v5 = [v3 brandIdentifier];
  LODWORD(v1) = [PKDAManager isSharingEnabledForManufacturerIdentifier:v4 issuerIdentifier:v5 productPlanIdentifier:0];

  v6 = v1 ^ 1;
  return v6;
}

uint64_t PKSecureElementPassSharingMethodForPass(void *a1)
{
  v1 = a1;
  v2 = +[PKPaymentDefaultDataProvider defaultDataProvider];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = [v1 devicePrimaryPaymentApplication];
  v4 = [v3 state];

  if (v4 == 7)
  {
    goto LABEL_8;
  }

  v8 = 0;
  v5 = [v1 uniqueID];
  [v2 sharingCapabilitiesForPassIdentifier:v5 outHasShares:&v8 + 1 outHasShareableEntitlements:&v8];

  if (![v1 supportsFeatureForCurrentDevice:1] || v8 != 1)
  {
    if ((v8 & 0x100) != 0)
    {
      v6 = 2;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

NSString *_LocalizedShareableCredentialString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = PKLocalizationKeyForPassType(v3, v4);
  v6 = PKLocalizedShareableCredentialString(v5, 0);
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

LABEL_8:
LABEL_9:
    v6 = PKLocalizedShareableCredentialString(v3, 0);
    goto LABEL_12;
  }

  if (v7 && v6)
  {
    v9 = [(NSString *)v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

LABEL_11:
LABEL_12:

  return v6;
}

void sub_1AD6D8200(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 160));
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

__CFString *PKPaymentOfferCriteriaIneligibleDetailsReasonToString(uint64_t a1)
{
  if ((a1 - 1) > 0x1A)
  {
    return @"none";
  }

  else
  {
    return off_1E79CF6E8[a1 - 1];
  }
}

id PKPaymentOffersControllerGenerateCacheKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", v3, v4];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

void sub_1AD6DD4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD6DD7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD6DE354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD6DEB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v27 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AD6DF89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  objc_destroyWeak(v43);
  _Block_object_dispose(&a43, 8);
  objc_destroyWeak((v44 - 240));
  _Block_object_dispose((v44 - 232), 8);
  _Block_object_dispose((v44 - 184), 8);
  _Block_object_dispose((v44 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1AD6E13B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  objc_destroyWeak((v47 + 56));
  objc_destroyWeak((v48 + 48));
  objc_destroyWeak(&a39);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v49 - 224), 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6E2AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak((v17 + 64));
  objc_destroyWeak((v18 - 128));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6E37AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 72));
  objc_destroyWeak((v32 - 128));
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6E3FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v27 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AD6E4BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD6E6930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location, char a47)
{
  objc_destroyWeak((v47 + 80));
  objc_destroyWeak((v48 + 88));
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v49 - 208), 8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v49 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1AD6E6D0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 + 56));
  _Unwind_Resume(a1);
}

void sub_1AD6EA858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6EABB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6EAF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AD6EB350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKProtobufNSDecimalNumberReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v57 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v57 & 0x7F) << v5;
        if ((v57 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          while (1)
          {
            v62 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v62 & 0x7F) << v40;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_90;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v42;
          }

LABEL_90:
          v55 = 16;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_62;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            v61 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v61 & 0x7F) << v14;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_94:
          v55 = 12;
        }

LABEL_107:
        *(a1 + v55) = v20;
        goto LABEL_108;
      }

      if (v13 != 7)
      {
        if (v13 != 6)
        {
LABEL_62:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_108;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          v60 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v60 & 0x7F) << v27;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v29;
        }

LABEL_98:
        v55 = 32;
        goto LABEL_107;
      }

      v46 = PBReaderReadData();
      v47 = *(a1 + 24);
      *(a1 + 24) = v46;

LABEL_108:
      v56 = [a2 position];
      if (v56 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        while (1)
        {
          v58 = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v58 & 0x7F) << v33;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_86;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v35;
        }

LABEL_86:
        v55 = 36;
        break;
      case 2:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        while (1)
        {
          v59 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v59 & 0x7F) << v48;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v54 = 0;
            goto LABEL_106;
          }
        }

        if ([a2 hasError])
        {
          v54 = 0;
        }

        else
        {
          v54 = v50;
        }

LABEL_106:
        v20 = -(v54 & 1) ^ (v54 >> 1);
        v55 = 8;
        break;
      case 3:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v63 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v63 & 0x7F) << v21;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_102;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_102:
        v55 = 20;
        break;
      default:
        goto LABEL_62;
    }

    goto LABEL_107;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKSecureElementPassActivationStateForApplicationState(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return 4;
  }

  else
  {
    return qword_1ADB9A4F0[a1 - 1];
  }
}

uint64_t PKIsCarKeyPass(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) paymentNetworkIdentifier] == 301)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void sub_1AD6F0958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6F0BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6F0DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6F2DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PKSecureElementAccessPassTypeToAccessKeyString(uint64_t a1)
{
  if (a1 == 4)
  {
    v1 = @"ACCESS_PASS_TYPE_CAR";
  }

  else
  {
    v1 = @"ACCESS_PASS_TYPE_KEY";
  }

  v2 = PKLocalizedString(&v1->isa, 0);

  return v2;
}

void sub_1AD6F4970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKProtobufPaymentDeviceResponseReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v63) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v63 & 0x7F) << v5;
        if ((v63 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            a1[44] |= 1u;
            while (1)
            {
              LOBYTE(v63) = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                v40 = [a2 data];
                [v40 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v63 & 0x7F) << v35;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v11 = v36++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_111;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v37;
            }

LABEL_111:
            v60 = 8;
            goto LABEL_116;
          }

          if (v13 == 4)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            a1[44] |= 0x40u;
            while (1)
            {
              LOBYTE(v63) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v63 & 0x7F) << v15;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_101;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_101:
            v59 = 43;
            goto LABEL_121;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            a1[44] |= 0x10u;
            while (1)
            {
              LOBYTE(v63) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v63 & 0x7F) << v29;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_107;
              }
            }

            v21 = (v31 != 0) & ~[a2 hasError];
LABEL_107:
            v59 = 41;
            goto LABEL_121;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(PKProtobufPaymentInstrument);
            [a1 addPaymentInstruments:v14];
            v63 = 0;
            v64 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufPaymentInstrumentReadFrom(v14, a2))
            {
LABEL_124:

              return 0;
            }

            goto LABEL_30;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          a1[44] |= 8u;
          while (1)
          {
            LOBYTE(v63) = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v63 & 0x7F) << v47;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_118;
            }
          }

          v21 = (v49 != 0) & ~[a2 hasError];
LABEL_118:
          v59 = 40;
          goto LABEL_121;
        }

        if (v13 == 6)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          a1[44] |= 2u;
          while (1)
          {
            LOBYTE(v63) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v63 & 0x7F) << v22;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_105;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_105:
          v60 = 12;
          goto LABEL_116;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            a1[44] |= 4u;
            while (1)
            {
              LOBYTE(v63) = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v63 & 0x7F) << v41;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_115;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v43;
            }

LABEL_115:
            v60 = 24;
LABEL_116:
            *&a1[v60] = v28;
            goto LABEL_122;
          case 8:
            v53 = 0;
            v54 = 0;
            v55 = 0;
            a1[44] |= 0x20u;
            while (1)
            {
              LOBYTE(v63) = 0;
              v56 = [a2 position] + 1;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
              {
                v58 = [a2 data];
                [v58 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v55 |= (v63 & 0x7F) << v53;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v11 = v54++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_120;
              }
            }

            v21 = (v55 != 0) & ~[a2 hasError];
LABEL_120:
            v59 = 42;
LABEL_121:
            a1[v59] = v21;
            goto LABEL_122;
          case 9:
            v14 = objc_alloc_init(PKProtobufPaymentSetupFeature);
            [a1 addSupportedSetupFeatures:v14];
            v63 = 0;
            v64 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufPaymentSetupFeatureReadFrom(v14, a2))
            {
              goto LABEL_124;
            }

LABEL_30:
            PBReaderRecallMark();

            goto LABEL_122;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_122:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *PKServiceProviderOrderPaymentInstrumentTypeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"Applet";
  }

  else
  {
    return @"Unknown";
  }
}

uint64_t PKProtobufIDSSharingMessageWrapperReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadData();
        v22 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadString();
        v22 = 8;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKPaymentPassActionTypeFromString(void *a1)
{
  v1 = a1;
  if ([@"enteredValue" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"purchaseNew" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"selectedItem" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"openExternalURL" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"vehicleFunctionAction" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"autoTopUp" isEqualToString:v1])
  {
    v2 = 6;
  }

  else if ([@"displayAuxiliaryPassInformationItem" isEqualToString:v1])
  {
    v2 = 7;
  }

  else if ([@"displayTileContext" isEqualToString:v1])
  {
    v2 = 8;
  }

  else if ([@"viewImage" isEqualToString:v1])
  {
    v2 = 9;
  }

  else if ([@"openAppClip" isEqualToString:v1])
  {
    v2 = 10;
  }

  else if ([@"delete" isEqualToString:v1])
  {
    v2 = 11;
  }

  else if ([@"openApp" isEqualToString:v1])
  {
    v2 = 12;
  }

  else if ([@"shareFlightStatus" isEqualToString:v1])
  {
    v2 = 13;
  }

  else if ([@"businessChat" isEqualToString:v1])
  {
    v2 = 14;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentPassActionTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CFDE8[a1 - 1];
  }
}

id PKRenewActionForPaymentPassAndIdentifier(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = PKCommutePlanDictionaryForPassByIdentifier(v3);
  v6 = [v3 availableActions];
  v7 = v4;
  v8 = v7;
  if (@"commute_plan" != v7)
  {
    if (v7 && @"commute_plan")
    {
      v9 = [@"commute_plan" caseInsensitiveCompare:v7];

      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v10 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v10 = [v3 transitCommutePlanType] == 1;
LABEL_10:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v12)
  {
    v16 = 0;
    goto LABEL_33;
  }

  v13 = v12;
  v27 = v5;
  v28 = v3;
  v14 = *v30;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v29 + 1) + 8 * i);
      if ([v16 type] != 2)
      {
        continue;
      }

      if (v10)
      {
        v21 = v16;
        v22 = @"commute_plan";
        v5 = v27;
        v23 = v27;
        goto LABEL_30;
      }

      v17 = [v16 associatedPlanIdentifier];
      v18 = v8;
      v19 = v18;
      if (v17 == v18)
      {

LABEL_29:
        v24 = v16;
        v5 = v27;
        v23 = v27;
        v22 = v19;
LABEL_30:
        v25 = [v23 objectForKeyedSubscript:v22];
        v3 = v28;
        if (v25)
        {
          [v16 setAssociatedPlan:v25];
        }

        goto LABEL_33;
      }

      if (v8 && v17)
      {
        v20 = [(__CFString *)v17 caseInsensitiveCompare:v18];

        if (!v20)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  v16 = 0;
  v5 = v27;
  v3 = v28;
LABEL_33:

  return v16;
}

__CFString *PKContinuityProximityVerifierTypeToString(uint64_t a1)
{
  v1 = @"BLE";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"NW";
  }

  else
  {
    return v1;
  }
}

uint64_t PKContinuityProximityVerifierTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"BLE")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"BLE"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"NW" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"NW"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

uint64_t PKProtobufRemotePaymentRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
LABEL_38:
          v24 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_43;
        }

LABEL_32:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_43;
      }

      v23 = objc_alloc_init(PKProtobufPaymentRequest);
      objc_storeStrong((a1 + 24), v23);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !PKProtobufPaymentRequestReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v14 = PBReaderReadString();
      v15 = 8;
      goto LABEL_38;
    }

    if (v13 == 4)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v27[0] & 0x7F) << v16;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_42;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_42:
      *(a1 + 32) = v22;
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  return [a2 hasError] ^ 1;
}

__CFString *PKProvisioningErrorSeverityToString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CFE80[a1 - 1];
  }
}

uint64_t PKProvisioningErrorSeverityFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"cancel")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_23:
    v4 = 0;
    goto LABEL_24;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"cancel"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"warning" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"warning"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_24;
    }

    v8 = v6;
    if (v8 == @"invalidInput" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"invalidInput"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_24;
    }

    v11 = v9;
    if (v11 == @"regular" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"regular"], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_24;
    }

    v14 = v12;
    if (v14 == @"terminal" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"terminal"], v15, (v16 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_24;
    }

    v17 = v15;
    if (v17 == @"permanentlyTerminal" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"permanentlyTerminal"], v18, (v19 & 1) != 0))
    {
      v4 = 6;
      goto LABEL_24;
    }

    v20 = v18;
    if (v20 == @"catastrophic" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"catastrophic"], v21, v22))
    {
      v4 = 7;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_4:
  v4 = 1;
LABEL_24:

  return v4;
}

void sub_1AD7041DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t PKProtobufShippingMethodsReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(PKProtobufShippingMethod);
        objc_storeStrong(a1 + 1, v13);
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(PKProtobufShippingMethod);
        [a1 addMethods:v13];
      }

      v16[0] = 0;
      v16[1] = 0;
      if (!PBReaderPlaceMark() || !PKProtobufShippingMethodReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PDAssertionCoordinatorInterface()
{
  if (qword_1ED6D19A8 != -1)
  {
    dispatch_once(&qword_1ED6D19A8, &__block_literal_global_72);
  }

  v1 = _MergedGlobals_212;

  return v1;
}

void __PDAssertionCoordinatorInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F243FF80];
  v1 = _MergedGlobals_212;
  _MergedGlobals_212 = v0;
}

__CFString *PKIDSGeneralMessageIDToString(__int16 a1)
{
  if ((a1 - 1) > 0xFu)
  {
    return 0;
  }

  else
  {
    return off_1E79CFF18[(a1 - 1)];
  }
}

void PKProtobufSend(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = MEMORY[0x1E695DFD8];
  v12 = a6;
  v13 = a4;
  v14 = a2;
  v15 = a1;
  v16 = [v11 setWithObject:a3];
  PKProtobufSendWithOptions(v15, v14, v16, 300, v13, a5, 0, v12, 0);
}

void PKProtobufSendWithOptions(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, char a7, void *a8, void *a9)
{
  v55 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  v21 = [MEMORY[0x1E695DF90] dictionary];
  [v21 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A47E0]];
  if (v18)
  {
    [v21 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69A47C8]];
  }

  v22 = [MEMORY[0x1E696AD98] numberWithBool:a6];
  [v21 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69A4798]];

  if (v20)
  {
    [v21 addEntriesFromDictionary:v20];
  }

  v33 = v18;
  v23 = a4;
  if (PKForceLocalIDS() && [v17 count] == 1 && (a7 & 1) == 0)
  {
    [v21 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A47A8]];
  }

  v36 = v17;
  v24 = [v17 pk_setByApplyingBlock:&__block_literal_global_73];
  v37 = 0;
  v38 = 0;
  v34 = v15;
  v25 = [v15 sendProtobuf:v16 toDestinations:v24 priority:v23 options:v21 identifier:&v38 error:&v37];
  v26 = v38;
  v27 = v37;
  PKLogFacilityTypeGetObject(9uLL);
  v29 = v28 = v23;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    [v16 pkDescription];
    v32 = v20;
    v31 = v30 = v16;
    *buf = 138414082;
    v40 = v34;
    v41 = 2112;
    v42 = v31;
    v43 = 2112;
    v44 = v36;
    v45 = 2048;
    v46 = v28;
    v47 = 2112;
    v48 = v21;
    v49 = 2112;
    v50 = v26;
    v51 = 1024;
    v52 = v25;
    v53 = 2112;
    v54 = v27;
    _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Service %@ sent protobuf (%@) destinations %@ priority %ld options %@: identifier %@ success %d error %@", buf, 0x4Eu);

    v16 = v30;
    v20 = v32;
  }

  if (v19)
  {
    v19[2](v19, v26, v27);
  }
}

id PKProtoSupportDecimalNumberFromProtobuf(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] <= 8)
  {
    v4 = [v2 mantissa];
    if ([v4 length] == 16)
    {
      v12 = 0uLL;
      [v4 getBytes:&v12 length:16];
      v5 = [v2 exponent];
      v6 = v5 & 0xFFFFF0FF | (([v2 length] & 0xF) << 8);
      v7 = v6 & 0xFFFFEFFF | (([v2 isNegative] & 1) << 12);
      v8 = [v2 isCompact];
      v10 = v7 & 0xFFFFDFFF | ((v8 & 1) << 13) | ([v2 reserved] << 14);
      v11 = v12;
      v3 = [objc_alloc(MEMORY[0x1E696AB90]) initWithDecimal:&v10];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PKProtobufNSDecimalNumber *PKProtoSupportProtoDecimalNumberFromDecimalNumber(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    memset(v4, 0, sizeof(v4));
    [a1 decimalValue];
    v5 = *&v4[4];
    v1 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v5 length:16];
    v2 = objc_alloc_init(PKProtobufNSDecimalNumber);
    [(PKProtobufNSDecimalNumber *)v2 setExponent:0];
    [(PKProtobufNSDecimalNumber *)v2 setLength:0];
    [(PKProtobufNSDecimalNumber *)v2 setIsNegative:0];
    [(PKProtobufNSDecimalNumber *)v2 setIsCompact:0];
    [(PKProtobufNSDecimalNumber *)v2 setReserved:0];
    [(PKProtobufNSDecimalNumber *)v2 setMantissa:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PKProtobufCustomPrecisionAmount *DecimalToCustomPrecisionProtobuf(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PKProtobufCustomPrecisionAmount);
  v3 = PKCurrencyDecimalToLegacyStorageInteger(v1, 1);

  [(PKProtobufCustomPrecisionAmount *)v2 setAmount:v3];
  [(PKProtobufCustomPrecisionAmount *)v2 setDecimalDigitsMultiplier:4];

  return v2;
}

__CFString *PKPassProvisioningMetadataSourceDeviceTypeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"transfer";
  }

  else
  {
    return @"none";
  }
}

BOOL PKPassProvisioningMetadataSourceDeviceTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 1;
  if (v1 != @"transfer")
  {
    if (!v1 || (v3 = [(__CFString *)v1 isEqualToString:@"transfer"], v2, !v3))
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t PKRequiresUnifiedAccessCapableDeviceForPushableMetadata(void *a1)
{
  v1 = [a1 provisioningTarget];
  v2 = [v1 requiresSimultaneousRequestRouting];

  return v2;
}

BOOL PKRequiresFIDOCredentialForPushableMetadata(void *a1)
{
  v1 = [a1 provisioningTarget];
  v2 = [v1 relyingPartyIdentifier];
  v3 = v2 != 0;

  return v3;
}

uint64_t PKRequiresUnifiedAccessCapableDeviceForPushableConfiguration(void *a1)
{
  v1 = [a1 metadataProviders];
  v2 = [v1 pk_containsObjectPassingTest:&__block_literal_global_76];

  return v2;
}

uint64_t __PKRequiresUnifiedAccessCapableDeviceForPushableConfiguration_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 provisioningTarget];
  v3 = [v2 requiresSimultaneousRequestRouting];

  return v3;
}

uint64_t PKRequiresManateeForPushableConfiguration(void *a1)
{
  v1 = [a1 metadataProviders];
  v2 = [v1 pk_containsObjectPassingTest:&__block_literal_global_15_1];

  return v2;
}

BOOL __PKRequiresManateeForPushableConfiguration_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 provisioningTarget];
  v4 = [v3 requiresSimultaneousRequestRouting];

  v5 = (v4 & 1) != 0 || PKRequiresFIDOCredentialForPushableMetadata(v2);
  return v5;
}

__CFString *PKCloudStoreZoneTypeToString(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"card";
  }

  else
  {
    return off_1E79D0098[a1];
  }
}

id PKAutoFillCardCredentialRequestedFieldsToString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"primaryAccountNumber"];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"expiration"];
  if ((a1 & 2) != 0)
  {
LABEL_4:
    [v3 addObject:@"cvv"];
  }

LABEL_5:
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

uint64_t PKAutoFillCardCredentialRequestedFieldsFromString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:{@", "}];
  if ([v1 count])
  {
    v2 = [v1 containsObject:@"primaryAccountNumber"];
    if ([v1 containsObject:@"expiration"])
    {
      v2 |= 4uLL;
    }

    if ([v1 containsObject:@"cvv"])
    {
      v2 |= 2uLL;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1AD715E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1AD718EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SharedHardwareManagerEventListenerRemove(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __SharedHardwareManagerEventListenerRemove_block_invoke;
  v3[3] = &unk_1E79D0940;
  v4 = v1;
  v2 = v1;
  _SharedHardwareManagerEventListenerAccess(0, v3);
}

void sub_1AD71CDC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1AD720CF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1AD72656C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _SharedHardwareManagerEventListenerAccess(int a1, void *a2)
{
  v12 = a2;
  os_unfair_lock_lock(&unk_1ED6D19E8);
  v3 = qword_1ED6D1A28;
  if (qword_1ED6D1A28)
  {
    v4 = 1;
  }

  else
  {
    v4 = a1 == 0;
  }

  if (!v4)
  {
    v5 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    v6 = qword_1ED6D1A28;
    qword_1ED6D1A28 = v5;

    v3 = qword_1ED6D1A28;
  }

  v12[2](v12, v3);
  if ([qword_1ED6D1A28 count])
  {
    if (qword_1ED6D1A20)
    {
      goto LABEL_14;
    }

    v7 = objc_alloc_init(PKSecureElement_HWManagerEventListener);
    v8 = qword_1ED6D1A20;
    qword_1ED6D1A20 = v7;

    v9 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
    [v9 registerEventListener:qword_1ED6D1A20];
    goto LABEL_13;
  }

  if (qword_1ED6D1A20)
  {
    v10 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
    [v10 unregisterEventListener:qword_1ED6D1A20];
    v11 = qword_1ED6D1A20;
    qword_1ED6D1A20 = 0;
  }

  v9 = qword_1ED6D1A28;
  if (qword_1ED6D1A28)
  {
    qword_1ED6D1A28 = 0;
LABEL_13:
  }

LABEL_14:
  os_unfair_lock_unlock(&unk_1ED6D19E8);
}

void __SharedHardwareManagerEventListenerCopy_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

__CFString *PKPeerPaymentRecurringPaymentTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D0A88[a1 - 1];
  }
}

uint64_t PKPeerPaymentRecurringPaymentTypeFromString(void *a1)
{
  v1 = a1;
  if ([@"peerPayment" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"scheduledTopUp" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"thresholdTopUp" isEqualToString:v1])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PKPaymentTransaction *PKPeerPaymentTransactionForUpcomingRecurringPayment(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PKPaymentTransaction);
  v3 = [v1 identifier];
  [(PKPaymentTransaction *)v2 setIdentifier:v3];

  v4 = [v1 amount];
  [(PKPaymentTransaction *)v2 setAmount:v4];

  v5 = [v1 currency];
  [(PKPaymentTransaction *)v2 setCurrencyCode:v5];

  [(PKPaymentTransaction *)v2 setTransactionType:3];
  [(PKPaymentTransaction *)v2 setPeerPaymentType:4];
  [(PKPaymentTransaction *)v2 setTransactionStatus:1];
  v6 = [v1 recipientAddress];
  [(PKPaymentTransaction *)v2 setPeerPaymentCounterpartHandle:v6];

  v7 = [v1 upcomingPaymentDates];
  v8 = [v7 firstObject];
  [(PKPaymentTransaction *)v2 setTransactionDate:v8];

  [(PKPaymentTransaction *)v2 setAccountType:1];
  [(PKPaymentTransaction *)v2 setRecurring:1];
  [(PKPaymentTransaction *)v2 setRecurringPeerPayment:v1];

  return v2;
}

PKPaymentTransaction *PKPeerPaymentTransactionForRecurringPayment(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PKPaymentTransaction);
  v3 = [v1 identifier];
  [(PKPaymentTransaction *)v2 setIdentifier:v3];

  v4 = [v1 amount];
  [(PKPaymentTransaction *)v2 setAmount:v4];

  v5 = [v1 currency];
  [(PKPaymentTransaction *)v2 setCurrencyCode:v5];

  [(PKPaymentTransaction *)v2 setTransactionType:3];
  if ([v1 type] == 3)
  {
    v6 = 6;
  }

  else
  {
    v6 = 5;
  }

  [(PKPaymentTransaction *)v2 setPeerPaymentType:v6];
  [(PKPaymentTransaction *)v2 setTransactionStatus:1];
  v7 = [v1 recipientAddress];
  [(PKPaymentTransaction *)v2 setPeerPaymentCounterpartHandle:v7];

  v8 = [v1 upcomingPaymentDates];
  v9 = [v8 firstObject];
  [(PKPaymentTransaction *)v2 setTransactionDate:v9];

  [(PKPaymentTransaction *)v2 setAccountType:1];
  [(PKPaymentTransaction *)v2 setRecurring:1];
  [(PKPaymentTransaction *)v2 setRecurringPeerPayment:v1];

  return v2;
}

void sub_1AD72C310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

id PKCoreSpotlightTransactionCustomKeys()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"Passbook_transactionType", @"Passbook_transactionStatus", @"Passbook_transactionSource", @"Passbook_transactionCategory", @"Passbook_transactionHandle", @"Passbook_transactionAltDSID", @"Passbook_transactionRegions", @"Passbook_transactionAmount", @"Passbook_transactionCurrencyCode", @"Passbook_transactionTags", @"Passbook_transactionTagKeywords", @"Passbook_transactionSubType", @"Passbook_transactionRewardsPercentAggregate", @"Passbook_transactionRewardsCashAggregate", @"Passbook_transactionIdentifier", @"Passbook_POImuid", @"Passbook_Brandmuid", @"Passbook_transactionSourceIdentifier", 0}];

  return v0;
}

id PKCoreSpotlightTransactionKeys()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"displayName", @"contentDescription", @"addedDate", @"importantDates", @"keywords", @"URL", @"fullyFormattedAddress", @"thoroughFare", @"city", @"stateOrProvince", @"postalCode", @"country", @"latitude", @"longitude", @"primaryReceipients", @"authors", @"accountHandles", 0}];

  return v0;
}

__CFString *PKCoreSpotlightAccountTypeToString(uint64_t a1)
{
  v1 = @"card";
  if (a1 == 2)
  {
    v1 = @"cash";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"unknown";
  }
}

uint64_t PKCoreSpotlightAccountTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"card")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"card"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"cash" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"cash"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

uint64_t PKCoreSpotlightAccountTypeFromAccountType(unint64_t a1)
{
  if (a1 > 4)
  {
    return 1;
  }

  else
  {
    return qword_1ADB9A618[a1];
  }
}

uint64_t PKCoreSpotlightContentTypeForSearchableItem(void *a1)
{
  v1 = [a1 attributeSet];
  v2 = [v1 contentType];

  if ([v2 isEqualToString:@"com.apple.pkpass"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"com.apple.pktransaction"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"com.apple.finance.order"])
  {
    v3 = 4;
  }

  else if ([v2 isEqualToString:@"com.apple.finance.transaction"])
  {
    v3 = 5;
  }

  else if ([v2 isEqualToString:@"com.apple.paymentsetupproduct"])
  {
    v3 = 6;
  }

  else if ([v2 isEqualToString:@"com.apple.pkaccount"])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *PKSpotlightDataTypeIdentifierFromContentType(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_1E79D0EF8[a1 - 1];
  }

  return v2;
}

void sub_1AD732458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t PKSharedEntitlementsMostRestrictiveShareabilityForEntitlements(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      v7 = 999;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 recipientShareability] < v7)
          {
            v7 = [v9 recipientShareability];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 999;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id PKHowToUseWalletCapabilityToStrings(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 addObject:@"FaceID"];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"TouchID"];
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v3 addObject:@"ApplePayDemo"];
  if (a1)
  {
LABEL_5:
    [v3 addObject:@"Unknown"];
  }

LABEL_6:
  v4 = [v3 copy];

  return v4;
}

id initFHInsightTypeOverallSpend()
{
  if (qword_1EB5B7D18 != -1)
  {
    dispatch_once(&qword_1EB5B7D18, &__block_literal_global_85);
  }

  v0 = dlsym(qword_1EB5B7D10, "FHInsightTypeOverallSpend");
  objc_storeStrong(&qword_1EB5B7D08, *v0);
  _MergedGlobals_170 = FHInsightTypeOverallSpendFunction;
  v1 = qword_1EB5B7D08;

  return v1;
}

void *__LoadFinHealthInsights_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinHealthInsights.framework/FinHealthInsights", 2);
  qword_1EB5B7D10 = result;
  return result;
}

id initFHInsightTypeCategorySpend()
{
  if (qword_1EB5B7D18 != -1)
  {
    dispatch_once(&qword_1EB5B7D18, &__block_literal_global_85);
  }

  v0 = dlsym(qword_1EB5B7D10, "FHInsightTypeCategorySpend");
  objc_storeStrong(&_MergedGlobals_11, *v0);
  off_1ED6D1090 = FHInsightTypeCategorySpendFunction;
  v1 = _MergedGlobals_11;

  return v1;
}

Class initFHCategorySpendInsight()
{
  if (qword_1EB5B7D18 != -1)
  {
    dispatch_once(&qword_1EB5B7D18, &__block_literal_global_85);
  }

  result = objc_getClass("FHCategorySpendInsight");
  qword_1EB5B7D20 = result;
  off_1ED6D1088 = FHCategorySpendInsightFunction;
  return result;
}

uint64_t PKProtobufSubcredentialInvitationMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v34 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v34 & 0x7F) << v23;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_55:
          v31 = 48;
LABEL_60:
          *(a1 + v31) = v22;
          goto LABEL_61;
        }

        if (v13 != 2)
        {
          if (v13 != 3)
          {
            goto LABEL_46;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_59:
          v31 = 32;
          goto LABEL_60;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          v15 = 40;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_46:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_61;
          }

          v14 = PBReaderReadData();
          v15 = 16;
        }
      }

      else if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 8;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_46;
        }

        v14 = PBReaderReadString();
        v15 = 56;
      }

      v30 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_61:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKProtobufPaymentSetupRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *PKDiscoveryCardSizeTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D1108[a1];
  }
}

uint64_t PKDiscoveryCardBlurStyleFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"thin")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"thin"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"regular" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"regular"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"thick" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"thick"], v9, v10))
    {
      v4 = 3;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_4:
  v4 = 1;
LABEL_12:

  return v4;
}

void sub_1AD74444C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD744590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD746E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD747430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD748B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD74B7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD74B8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD74C3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD752790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD753A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD753BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD753D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD753E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD753F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD756A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD7580C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD7581E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD7583B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD758FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD761A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD766D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD7694BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PKCommutePlanFormatTitleFromLabelAndValue(void *a1, id *a2, id *a3, int a4)
{
  v20 = a1;
  v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = *a2;
  v9 = *a3;
  v10 = [(__CFString *)v8 stringByTrimmingCharactersInSet:v7];
  v11 = [(__CFString *)v9 stringByTrimmingCharactersInSet:v7];
  if (v8 && [v10 length])
  {
    v12 = 1;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v12 = 0;
    v8 = &stru_1F227FD28;
    if (!v9)
    {
LABEL_13:

      if ((v12 & a4) != 1)
      {
        v9 = &stru_1F227FD28;
        goto LABEL_29;
      }

      v15 = [(__CFString *)v8 copy];
      v9 = v8;
      v8 = &stru_1F227FD28;
      goto LABEL_28;
    }
  }

  if (![v11 length])
  {
    goto LABEL_13;
  }

  if (v12)
  {
    v13 = v8;
    v8 = v13;
    if (v13 == v9)
    {
    }

    else
    {
      v14 = [(__CFString *)v13 isEqualToString:v9];

      if (!v14)
      {
        if ([v20 isSuicaPass])
        {
          if (([v20 transitCommutePlanType] == 1) == a4)
          {
            goto LABEL_29;
          }
        }

        else if ((a4 & 1) == 0)
        {
          goto LABEL_29;
        }

        v16 = [(__CFString *)v9 copy];
        v15 = v8;

        v9 = v15;
        goto LABEL_27;
      }
    }

    v17 = a4 == 0;
    if (a4)
    {
      v15 = v9;
    }

    else
    {
      v15 = &stru_1F227FD28;
    }

    if (!v17)
    {
      v9 = v8;
      v8 = &stru_1F227FD28;
    }

    goto LABEL_28;
  }

  if (a4)
  {
    goto LABEL_29;
  }

  v16 = [(__CFString *)v9 copy];

  v15 = &stru_1F227FD28;
LABEL_27:
  v8 = v16;
LABEL_28:

  v9 = v15;
LABEL_29:
  v18 = v8;
  *a2 = v8;
  v19 = v9;
  *a3 = v9;
}

BOOL PKCommutePlanFieldEitherLabelOrValueIsEmpty(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a2;
  v5 = a1;
  v6 = [v3 whitespaceCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  v8 = [v4 stringByTrimmingCharactersInSet:v6];

  v9 = v7;
  v10 = v9;
  if (v9 && (v11 = [v9 length], v10, v11))
  {
    v12 = v8;
    if (!v12 || (v13 = v12, v14 = [v12 length], v13, !v14))
    {
      v17 = 1;
      goto LABEL_12;
    }

    v15 = v13;
  }

  else if (!v8)
  {
    v17 = 0;
    goto LABEL_12;
  }

  v16 = [v8 length];
  v17 = v16 != 0;

  if (v10 && v16)
  {
    v17 = [v10 length] == 0;
  }

LABEL_12:

  return v17;
}

id PKCommutePlanDictionaryForPassByIdentifier(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = [a1 transitCommutePlans];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 identifier];
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];

  return v10;
}

id PKTransitCommutePlanInPassForIdentifier(void *a1, void *a2)
{
  v3 = a2;
  v4 = PKCommutePlanDictionaryForPassByIdentifier(a1);
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

id _dateFromField(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unformattedValue];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:

  return v3;
}

uint64_t PKRemoteCredentialTransferTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"serverManaged")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [@"serverManaged" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"carKey" || (v6 = v5, v7 = [@"carKey" isEqualToString:v5], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

id initSFCreditCardNumberKey()
{
  if (qword_1EB5A0440 != -1)
  {
    dispatch_once(&qword_1EB5A0440, &__block_literal_global_1127);
  }

  v0 = dlsym(qword_1EB5A0438, "SFCreditCardNumberKey");
  objc_storeStrong(&qword_1EB5A0420, *v0);
  _MergedGlobals_32[0] = SFCreditCardNumberKeyFunction;
  v1 = qword_1EB5A0420;

  return v1;
}

void *__LoadSafariFoundation_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/SafariFoundation.framework/SafariFoundation", 2);
  qword_1EB5A0438 = result;
  return result;
}

id initSFCreditCardSecurityCodeKey()
{
  if (qword_1EB5A0440 != -1)
  {
    dispatch_once(&qword_1EB5A0440, &__block_literal_global_1127);
  }

  v0 = dlsym(qword_1EB5A0438, "SFCreditCardSecurityCodeKey");
  objc_storeStrong(&qword_1EB5A0428, *v0);
  off_1EE7B03C0[0] = SFCreditCardSecurityCodeKeyFunction;
  v1 = qword_1EB5A0428;

  return v1;
}

id initSFCreditCardCardholderNameKey()
{
  if (qword_1EB5A0440 != -1)
  {
    dispatch_once(&qword_1EB5A0440, &__block_literal_global_1127);
  }

  v0 = dlsym(qword_1EB5A0438, "SFCreditCardCardholderNameKey");
  objc_storeStrong(&_MergedGlobals_33, *v0);
  off_1EE7B03C8[0] = SFCreditCardCardholderNameKeyFunction;
  v1 = _MergedGlobals_33;

  return v1;
}

id initSFCreditCardNameKey()
{
  if (qword_1EB5A0440 != -1)
  {
    dispatch_once(&qword_1EB5A0440, &__block_literal_global_1127);
  }

  v0 = dlsym(qword_1EB5A0438, "SFCreditCardNameKey");
  objc_storeStrong(&qword_1EB5A0430, *v0);
  off_1EE7B03D0[0] = SFCreditCardNameKeyFunction;
  v1 = qword_1EB5A0430;

  return v1;
}

id initSFCreditCardExpirationDateKey()
{
  if (qword_1EB5A0440 != -1)
  {
    dispatch_once(&qword_1EB5A0440, &__block_literal_global_1127);
  }

  v0 = dlsym(qword_1EB5A0438, "SFCreditCardExpirationDateKey");
  objc_storeStrong(&qword_1EB5A0418, *v0);
  off_1EE7B03D8[0] = SFCreditCardExpirationDateKeyFunction;
  v1 = qword_1EB5A0418;

  return v1;
}

uint64_t PKProtobufPaymentSummaryItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 92) |= 1u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v33 & 0x7F) << v17;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_81;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_81:
            *(a1 + 8) = -(v23 & 1) ^ (v23 >> 1);
            goto LABEL_74;
          }

          if (v13 == 2)
          {
            v15 = PBReaderReadString();
            v16 = *(a1 + 64);
            *(a1 + 64) = v15;

            goto LABEL_74;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v24 = 0;
              v25 = 0;
              v26 = 0;
              *(a1 + 92) |= 2u;
              while (1)
              {
                LOBYTE(v33) = 0;
                v27 = [a2 position] + 1;
                if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
                {
                  v29 = [a2 data];
                  [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v26 |= (v33 & 0x7F) << v24;
                if ((v33 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v11 = v25++ >= 9;
                if (v11)
                {
                  v30 = 0;
                  goto LABEL_85;
                }
              }

              if ([a2 hasError])
              {
                v30 = 0;
              }

              else
              {
                v30 = v26;
              }

LABEL_85:
              *(a1 + 88) = v30;
              goto LABEL_74;
            case 4:
              v14 = objc_alloc_init(PKProtobufRecurringPaymentSummaryItem);
              objc_storeStrong((a1 + 72), v14);
              v33 = 0;
              v34 = 0;
              if (!PBReaderPlaceMark() || !PKProtobufRecurringPaymentSummaryItemReadFrom(v14, a2))
              {
LABEL_87:

                return 0;
              }

              goto LABEL_73;
            case 5:
              v14 = objc_alloc_init(PKProtobufDeferredPaymentSummaryItem);
              objc_storeStrong((a1 + 40), v14);
              v33 = 0;
              v34 = 0;
              if (!PBReaderPlaceMark() || !PKProtobufDeferredPaymentSummaryItemReadFrom(v14, a2))
              {
                goto LABEL_87;
              }

              goto LABEL_73;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = objc_alloc_init(PKProtobufNSDecimalNumber);
            objc_storeStrong((a1 + 32), v14);
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufNSDecimalNumberReadFrom(v14, a2))
            {
              goto LABEL_87;
            }

            goto LABEL_73;
          case 0xA:
            v14 = objc_alloc_init(PKProtobufDisbursementSummaryItem);
            objc_storeStrong((a1 + 48), v14);
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufDisbursementSummaryItemReadFrom(v14, a2))
            {
              goto LABEL_87;
            }

            goto LABEL_73;
          case 0xB:
            v14 = objc_alloc_init(PKProtobufInstantFundsOutFeeSummaryItem);
            objc_storeStrong((a1 + 56), v14);
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufInstantFundsOutFeeSummaryItemReadFrom(v14, a2))
            {
              goto LABEL_87;
            }

            goto LABEL_73;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = objc_alloc_init(PKProtobufCustomPrecisionAmount);
            objc_storeStrong((a1 + 24), v14);
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufCustomPrecisionAmountReadFrom(v14, a2))
            {
              goto LABEL_87;
            }

            goto LABEL_73;
          case 7:
            v14 = objc_alloc_init(PKProtobufShippingMethod);
            objc_storeStrong((a1 + 80), v14);
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufShippingMethodReadFrom(v14, a2))
            {
              goto LABEL_87;
            }

            goto LABEL_73;
          case 8:
            v14 = objc_alloc_init(PKProtobufAutomaticReloadPaymentSummaryItem);
            objc_storeStrong((a1 + 16), v14);
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !PKProtobufAutomaticReloadPaymentSummaryItemReadFrom(v14, a2))
            {
              goto LABEL_87;
            }

LABEL_73:
            PBReaderRecallMark();

            goto LABEL_74;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_74:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id _PKPeerPaymentWebServiceError(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGen.isa, 0);
  v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGen_0.isa, 0);
  v12 = 0;
  if (a1 <= 40013)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          goto LABEL_58;
        }

        v13 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_0.isa, 0);

        v14 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_1.isa, 0);

        v12 = 1;
        goto LABEL_57;
      }
    }

    else if ((a1 - 2) >= 3)
    {
      if (a1 == 5)
      {
        v13 = PKLocalizedPeerPaymentString(&cfstr_TermsAcceptanc.isa, 0);

        v14 = PKLocalizedPeerPaymentString(&cfstr_TermsAcceptanc_0.isa, 0);

        v12 = 5;
      }

      else
      {
        if (a1 != 40001)
        {
          goto LABEL_58;
        }

        v13 = PKLocalizedPeerPaymentString(&cfstr_StaleRecipient.isa, 0);

        v14 = PKLocalizedPeerPaymentString(&cfstr_StaleRecipient_0.isa, 0);

        v12 = 40001;
      }

LABEL_57:
      v10 = v13;
      v11 = v14;
      goto LABEL_58;
    }

LABEL_3:
    v12 = a1;
    goto LABEL_58;
  }

  switch(a1)
  {
    case 40301:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentIns.isa, 0);

      v16 = [v9 account];
      v17 = [v16 role];

      if (v17 == 1)
      {
        v18 = @"PEER_PAYMENT_INSUFFICIENT_BALANCE_ERROR_NO_CARD_DESCRIPTION";
        goto LABEL_56;
      }

      if (!v17)
      {
        v18 = @"PEER_PAYMENT_INSUFFICIENT_BALANCE_ERROR_DESCRIPTION";
LABEL_56:
        v14 = PKLocalizedPeerPaymentString(&v18->isa, 0);

        v12 = 40301;
        goto LABEL_57;
      }

      v12 = 40301;
      v10 = v13;
      break;
    case 40302:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMin.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMin_0.isa, 0);

      v12 = 40302;
      goto LABEL_57;
    case 40303:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMax.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMax_0.isa, 0);

      v12 = 40303;
      goto LABEL_57;
    case 40304:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentUns.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentUns_0.isa, 0);

      v12 = 40304;
      goto LABEL_57;
    case 40305:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentExc.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentExc_0.isa, 0);

      v12 = 40305;
      goto LABEL_57;
    case 40306:
      v24 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentWou.isa, 0);

      v25 = +[PKPeerPaymentService sharedInstance];
      v26 = [v25 account];

      v27 = [v26 currentBalance];
      v28 = [v27 currency];

      v29 = [v26 sendToUserFeatureDescriptor];
      v30 = [v29 maximumAmount];

      if (v26 && v28 && v30)
      {
        v31 = PKFormattedCurrencyStringWithMinimalFractionDigitsFromNumber(v30, v28);
        v32 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentWou_0.isa, &stru_1F2281668.isa, v31);

        v11 = v31;
      }

      else
      {
        v32 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentWou_1.isa, 0);
      }

      v12 = 40306;
      v10 = v24;
      v11 = v32;
      break;
    case 40307:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentExc_1.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentExc_2.isa, 0);

      v12 = 40307;
      goto LABEL_57;
    case 40308:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentUnd.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentUnd_0.isa, 0);

      v12 = 40308;
      goto LABEL_57;
    case 40309:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentLoc.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentLoc_0.isa, 0);

      v12 = 40309;
      goto LABEL_57;
    case 40310:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentHsa.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentHsa_0.isa, 0);

      v12 = 40310;
      goto LABEL_57;
    case 40311:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDec.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDec_0.isa, 0);

      v12 = 40311;
      goto LABEL_57;
    case 40312:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAmb.isa, 0);

      v23 = PKPrimaryAppleAccountFormattedUsername();
      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAmb_0.isa, &stru_1F2281668.isa, v23);

      v12 = 40312;
      goto LABEL_57;
    case 40313:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_0.isa, 0);

      v12 = 40313;
      goto LABEL_57;
    case 40314:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_1.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_2.isa, 0);

      v12 = 40314;
      goto LABEL_57;
    case 40315:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentExp.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentExp_0.isa, 0);

      v12 = 40315;
      goto LABEL_57;
    case 40316:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentNeg.isa, 0);

      v19 = +[PKPeerPaymentService sharedInstance];
      v20 = [v19 account];

      v21 = [v20 currentBalance];
      v22 = [v21 minimalFormattedStringValue];

      if (v22)
      {
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentNeg_0.isa, &stru_1F2281668.isa, v22);
      }

      else
      {
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentNeg_1.isa, 0);
      }
      v14 = ;

      v12 = 40316;
      goto LABEL_57;
    case 40317:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_3.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_4.isa, 0);

      v12 = 40317;
      goto LABEL_57;
    case 40318:
    case 40330:
    case 40331:
    case 40332:
    case 40333:
    case 40334:
    case 40335:
    case 40336:
    case 40337:
    case 40338:
    case 40339:
    case 40340:
    case 40341:
    case 40342:
    case 40343:
    case 40344:
    case 40345:
    case 40346:
    case 40347:
    case 40348:
    case 40349:
    case 40350:
    case 40397:
    case 40399:
      goto LABEL_3;
    case 40319:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_5.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_6.isa, 0);

      v12 = 40319;
      goto LABEL_57;
    case 40320:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPob.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPob_0.isa, 0);

      v12 = 40320;
      goto LABEL_57;
    case 40321:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_0.isa, 0);

      v12 = 40321;
      goto LABEL_57;
    case 40322:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_1.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_2.isa, 0);

      v12 = 40322;
      goto LABEL_57;
    case 40323:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_3.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_4.isa, 0);

      v12 = 40323;
      goto LABEL_57;
    case 40324:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_5.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_6.isa, 0);

      v12 = 40324;
      goto LABEL_57;
    case 40325:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_7.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_8.isa, 0);

      v12 = 40325;
      goto LABEL_57;
    case 40326:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_9.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_10.isa, 0);

      v12 = 40326;
      goto LABEL_57;
    case 40327:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_11.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_12.isa, 0);

      v12 = 40327;
      goto LABEL_57;
    case 40328:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentOsV.isa, 0);

      v15 = PDDeviceSpecificLocalizedStringKeyForKey(@"PEER_PAYMENT_OS_VERSION_UPDATE_REQUIRED_ERROR_MESSAGE");
      v14 = PKLocalizedPeerPaymentString(v15, 0);

      v12 = 40328;
      goto LABEL_57;
    case 40329:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_13.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentErr_14.isa, 0);

      v12 = 40329;
      goto LABEL_57;
    case 40351:
    case 40352:
    case 40353:
    case 40354:
    case 40355:
    case 40356:
    case 40357:
    case 40358:
    case 40359:
    case 40360:
    case 40361:
    case 40362:
    case 40363:
    case 40364:
    case 40365:
    case 40366:
    case 40367:
    case 40368:
    case 40369:
    case 40370:
    case 40371:
    case 40372:
    case 40373:
    case 40374:
    case 40375:
    case 40376:
    case 40377:
    case 40378:
    case 40379:
    case 40380:
    case 40381:
    case 40382:
    case 40383:
    case 40384:
    case 40385:
    case 40386:
    case 40387:
    case 40388:
    case 40389:
    case 40390:
    case 40391:
    case 40392:
    case 40393:
    case 40394:
    case 40395:
    case 40396:
      break;
    case 40398:
      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSer.isa, 0);

      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSer_0.isa, 0);

      v12 = 40398;
      goto LABEL_57;
    default:
      if (a1 == 40014 || a1 == 40099)
      {
        goto LABEL_3;
      }

      break;
  }

LABEL_58:
  if (os_variant_has_internal_ui() && (v12 - 2) <= 2)
  {
    v33 = [v11 stringByAppendingString:off_1E79D1F60[v12 - 2]];

    v11 = v33;
  }

  v34 = _PKPeerPaymentWebServiceErrorCustom(v12, v10, v11, v7, v8);

  return v34;
}

id _PKPeerPaymentWebServiceErrorCustom(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = MEMORY[0x1E695DF90];
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = [v10 dictionary];
  [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A588]];
  [v14 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A598]];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v13, v12];

  [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A578]];
  [v14 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v9)
  {
    [v14 addEntriesFromDictionary:v9];
  }

  v16 = MEMORY[0x1E696ABC0];
  v17 = [v14 copy];
  v18 = [v16 errorWithDomain:@"PKPeerPaymentWebServiceErrorDomain" code:a1 userInfo:v17];

  return v18;
}

BOOL PKPeerPaymentWebServiceErrorIsIdentityVerificationRequiredError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:@"PKDisplayableError"];

  if (v3)
  {
    v4 = [v1 userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v1 = v5;
  }
  v8 = v1 && ([v1 domain], v6 = ;

  return v8;
}

BOOL PKPeerPaymentWebServiceErrorIsTermsAcceptanceRequiredError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:@"PKDisplayableError"];

  if (v3)
  {
    v4 = [v1 userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v1 = v5;
  }
  v8 = v1 && ([v1 domain], v6 = ;

  return v8;
}

Class initSFService()
{
  if (qword_1EB59FFA0 != -1)
  {
    dispatch_once(&qword_1EB59FFA0, &__block_literal_global_89);
  }

  result = objc_getClass("SFService");
  qword_1EB59FF90 = result;
  _MergedGlobals_171 = SFServiceFunction;
  return result;
}

void *__LoadSharing_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
  qword_1EB59FF98 = result;
  return result;
}

id initSFServiceIdentifierApplePayLegacy()
{
  if (qword_1EB59FFA0 != -1)
  {
    dispatch_once(&qword_1EB59FFA0, &__block_literal_global_89);
  }

  v0 = dlsym(qword_1EB59FF98, "SFServiceIdentifierApplePayLegacy");
  objc_storeStrong(&_MergedGlobals_1_1, *v0);
  off_1ED6D10A0 = SFServiceIdentifierApplePayLegacyFunction;
  v1 = _MergedGlobals_1_1;

  return v1;
}

__CFString *PKShareStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D2210[a1 - 1];
  }
}

uint64_t PKShareStatusFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"active")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_37:
    v4 = 0;
    goto LABEL_38;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"active"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"pendingAcknowlegement" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"pendingAcknowlegement"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_38;
    }

    v8 = v6;
    if (v8 == @"pending" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"pending"], v9, (v10 & 1) != 0) || (v11 = v9, v11 == @"pendingAccept") || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"pendingAccept"], v12, (v13 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_38;
    }

    v14 = v12;
    if (v14 == @"pendingActivation" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"pendingActivation"], v15, (v16 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_38;
    }

    v17 = v15;
    if (v17 == @"requiresVerification" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"requiresVerification"], v18, (v19 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_38;
    }

    v20 = v18;
    if (v20 == @"revoked" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"revoked"], v21, (v22 & 1) != 0) || (v23 = v21, v23 == @"requiresConfirmation") || (v24 = v23, v25 = [(__CFString *)v23 isEqualToString:@"requiresConfirmation"], v24, (v25 & 1) != 0) || (v26 = v24, v26 == @"pendingRegister") || (v27 = v26, v28 = [(__CFString *)v26 isEqualToString:@"pendingRegister"], v27, (v28 & 1) != 0))
    {
      v4 = 6;
      goto LABEL_38;
    }

    v29 = v27;
    if (v29 == @"suspended" || (v30 = v29, v31 = [(__CFString *)v29 isEqualToString:@"suspended"], v30, (v31 & 1) != 0) || (v32 = v30, v32 == @"pendingDelete") || (v33 = v32, v34 = [(__CFString *)v32 isEqualToString:@"pendingDelete"], v33, (v34 & 1) != 0))
    {
      v4 = 7;
      goto LABEL_38;
    }

    v35 = v33;
    if (v35 == @"canceled" || (v36 = v35, v37 = [(__CFString *)v35 isEqualToString:@"canceled"], v36, (v37 & 1) != 0))
    {
      v4 = 8;
      goto LABEL_38;
    }

    v38 = v36;
    if (v38 == @"notSupported" || (v39 = v38, v40 = [(__CFString *)v38 isEqualToString:@"notSupported"], v39, v40))
    {
      v4 = 9;
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_4:
  v4 = 1;
LABEL_38:

  return v4;
}

uint64_t PKShareStatusFromCarKeyIntStatus(uint64_t a1, _BYTE *a2)
{
  if (a1 > 9)
  {
    if (a1 == 10)
    {
      result = 0;
      if (a2)
      {
        *a2 = 1;
      }
    }

    else
    {
      v3 = 6;
      if (a1 != 15)
      {
        v3 = 0;
      }

      if (a1 == 14)
      {
        return 1;
      }

      else
      {
        return v3;
      }
    }
  }

  else if ((a1 - 6) >= 4)
  {
    return (a1 - 1) < 2;
  }

  else
  {
    return 7;
  }

  return result;
}

uint64_t PKShareStatusFromCarKeyStringStatus(void *a1, _BYTE *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 == @"ACTIVE")
  {
    goto LABEL_6;
  }

  if (!v3)
  {
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v5 = [(__CFString *)v3 isEqualToString:@"ACTIVE"];

  if (v5)
  {
    goto LABEL_6;
  }

  v6 = v4;
  if (v6 == @"SUSPENDED_LOST_MODE")
  {
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [(__CFString *)v6 isEqualToString:@"SUSPENDED_LOST_MODE"];

  if (v8)
  {
    goto LABEL_6;
  }

  v10 = v7;
  if (v10 == @"TERMINATED_BY_ISSUER" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"TERMINATED_BY_ISSUER"], v11, v12))
  {
    if (a2)
    {
      v9 = 0;
      *a2 = 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v13 = v11;
  if (v13 != @"INACTIVE")
  {
    v14 = v13;
    v15 = [(__CFString *)v13 isEqualToString:@"INACTIVE"];

    if ((v15 & 1) == 0)
    {
      v16 = v14;
      if (v16 == @"IN_TERMINATION" || (v17 = v16, v18 = [(__CFString *)v16 isEqualToString:@"IN_TERMINATION"], v17, v18))
      {
        v9 = 6;
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

LABEL_6:
  v9 = 1;
LABEL_17:

  return v9;
}

__CFString *PKSharingCapabilityShareabilityToString(uint64_t a1)
{
  v1 = @"none";
  v2 = @"max_depth_3";
  v3 = @"all";
  if (a1 != 999)
  {
    v3 = @"none";
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    v1 = @"propagate";
  }

  if (a1 == 1)
  {
    v1 = @"direct";
  }

  if (a1 <= 2)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t PKSharingCapabilityShareabilityFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"direct")
  {
    goto LABEL_6;
  }

  if (!v1)
  {
LABEL_18:
    v7 = 0;
    goto LABEL_19;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"direct"];

  if ((v3 & 1) == 0)
  {
    v4 = v2;
    if (v4 != @"max_depth_1")
    {
      v5 = v4;
      v6 = [(__CFString *)v4 isEqualToString:@"max_depth_1"];

      if ((v6 & 1) == 0)
      {
        v8 = v5;
        if (v8 == @"propagate" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"propagate"], v9, (v10 & 1) != 0) || (v11 = v9, v11 == @"max_depth_2") || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"max_depth_2"], v12, (v13 & 1) != 0))
        {
          v7 = 2;
          goto LABEL_19;
        }

        v14 = v12;
        if (v14 == @"max_depth_3" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"max_depth_3"], v15, (v16 & 1) != 0))
        {
          v7 = 3;
          goto LABEL_19;
        }

        v17 = v15;
        if (v17 == @"all" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"all"], v18, v19))
        {
          v7 = 999;
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }
  }

LABEL_6:
  v7 = 1;
LABEL_19:

  return v7;
}

id PKSharingCapabilityShareabilitiesToStringArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [v2 pk_arrayByApplyingBlock:&__block_literal_global_90];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PKSharingCapabilityShareabilitiesFromStringArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [v2 pk_arrayByApplyingBlock:&__block_literal_global_94];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __PKSharingCapabilityShareabilitiesFromStringArray_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = PKSharingCapabilityShareabilityFromString(a2);

  return [v2 numberWithUnsignedInteger:v3];
}

id PKSharingCapabilityShareabilityToLocalizedString(uint64_t a1, id *a2)
{
  v3 = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_13;
      }

      v4 = @"CAPABILITY_SHAREABILITY_DIRECT_DESCRIPTION";
      v5 = @"CAPABILITY_SHAREABILITY_DIRECT_TITLE";
    }

    else
    {
      v4 = @"CAPABILITY_SHAREABILITY_NONE_DESCRIPTION";
      v5 = @"CAPABILITY_SHAREABILITY_NONE_TITLE";
    }

LABEL_12:
    v6 = PKLocalizedShareableCredentialString(&v5->isa, 0);
    v3 = PKLocalizedShareableCredentialString(&v4->isa, 0);
    if (v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  switch(a1)
  {
    case 2:
      v4 = @"CAPABILITY_SHAREABILITY_PROPAGATE_DESCRIPTION";
      v5 = @"CAPABILITY_SHAREABILITY_PROPAGATE_TITLE";
      goto LABEL_12;
    case 3:
      v4 = @"CAPABILITY_SHAREABILITY_MAX_3_DESCRIPTION";
      v5 = @"CAPABILITY_SHAREABILITY_MAX_3_TITLE";
      goto LABEL_12;
    case 999:
      v4 = @"CAPABILITY_SHAREABILITY_ALL_DESCRIPTION";
      v5 = @"CAPABILITY_SHAREABILITY_ALL_TITLE";
      goto LABEL_12;
  }

LABEL_13:
  v6 = PKLocalizedShareableCredentialString(&cfstr_CapabilityShar.isa, 0);
LABEL_14:
  if (a2)
  {
    objc_storeStrong(a2, v3);
  }

  return v6;
}

uint64_t PKSharingCapabilityShareabilityIsComplexCapability(uint64_t a1)
{
  result = 0;
  if (a1 <= 1)
  {
    if (!a1)
    {
      return result;
    }
  }

  else if (a1 == 2)
  {
    return result;
  }

  return 1;
}

__CFString *PKSharingCapabilityManageabilityToString(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"none";
  }

  else
  {
    return off_1E79D2258[a1 + 1];
  }
}

uint64_t PKSharingCapabilityManageabilityFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"propagate")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"propagate"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"all.max_depth_1" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"all.max_depth_1"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"all" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"all"], v9, v10))
    {
      v4 = -1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_4:
  v4 = 1;
LABEL_12:

  return v4;
}

id PKSharingCapabilityManageabilitiesToStringArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [v2 pk_arrayByApplyingBlock:&__block_literal_global_129_0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PKSharingCapabilityManageabilitiesFromStringArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [v2 pk_arrayByApplyingBlock:&__block_literal_global_131_0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __PKSharingCapabilityManageabilitiesFromStringArray_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = PKSharingCapabilityManageabilityFromString(a2);

  return [v2 numberWithUnsignedInteger:v3];
}

id PKSharingCapabilityManageabilityToLocalizedString(uint64_t a1)
{
  if ((a1 + 1) > 3 || (PKLocalizedShareableCredentialString(&off_1E79D2278[a1 + 1]->isa, 0), (v1 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v1 = PKLocalizedShareableCredentialString(&cfstr_CapabilityMana.isa, 0);
  }

  return v1;
}

__CFString *PKSharingCapabilityVisibilityToString(uint64_t a1)
{
  v1 = @"none";
  if (a1 == 1)
  {
    v1 = @"propagate";
  }

  if (a1 == 2)
  {
    return @"all";
  }

  else
  {
    return v1;
  }
}

uint64_t PKSharingCapabilityVisibilityFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"propagate")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"propagate"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"all" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"all"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

id PKSharingCapabilityVisibilitiesToStringArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [v2 pk_arrayByApplyingBlock:&__block_literal_global_145_0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PKSharingCapabilityVisibilitiesFromStringArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [v2 pk_arrayByApplyingBlock:&__block_literal_global_147];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __PKSharingCapabilityVisibilitiesFromStringArray_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = PKSharingCapabilityVisibilityFromString(a2);

  return [v2 numberWithUnsignedInteger:v3];
}

__CFString *PKPassShareManageabilityToString(uint64_t a1)
{
  v1 = @"none";
  if (a1 == 1)
  {
    v1 = @"revoke";
  }

  if (a1 == 2)
  {
    return @"edit";
  }

  else
  {
    return v1;
  }
}

uint64_t PKPassShareManageabilityFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"revoke")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"revoke"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"edit" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"edit"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

id PKSharingCapabilityVisibilityToLocalizedString(unint64_t a1)
{
  if (a1 > 2 || (PKLocalizedShareableCredentialString(&off_1E79D2298[a1]->isa, 0), (v1 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v1 = PKLocalizedShareableCredentialString(&cfstr_CapabilityVisi.isa, 0);
  }

  return v1;
}

uint64_t PKSharingCapabilityIsVisibilityValidForManageability(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 1) & 0xF;
  v3 = 6u >> v2;
  if ((a2 + 1) >= 4)
  {
    LOBYTE(v3) = 0;
  }

  v4 = 2u >> v2;
  if ((a2 + 1) >= 4)
  {
    LOBYTE(v4) = 0;
  }

  if (a1)
  {
    LOBYTE(v4) = 0;
  }

  if (a1 == 1)
  {
    LOBYTE(v4) = v3;
  }

  if (a1 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return v5 & 1;
}

BOOL PKSharingCapabilityIsManageabilityValidForVisibility(unint64_t a1, uint64_t a2)
{
  if (a1 < 2)
  {
    return 1;
  }

  if (a1 == 2 || a1 == -1)
  {
    return a2 == 2;
  }

  return 0;
}

__CFString *PKSharingRelayServerEnvironmentToString(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"Auto";
  }

  else
  {
    return off_1E79D22B0[a1];
  }
}

uint64_t PKSharingRelayServerEnvironmentFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 != @"Automatic" && v1 != 0)
  {
    v4 = [(__CFString *)v1 isEqualToString:@"Automatic"];

    if ((v4 & 1) == 0)
    {
      v7 = v2;
      if (v7 == @"Config" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"Config"], v8, (v9 & 1) != 0))
      {
        v5 = 1;
        goto LABEL_7;
      }

      v10 = v8;
      if (v10 == @"Prod" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"Prod"], v11, (v12 & 1) != 0))
      {
        v5 = 2;
        goto LABEL_7;
      }

      v13 = v11;
      if (v13 == @"Cert" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"Cert"], v14, (v15 & 1) != 0))
      {
        v5 = 3;
        goto LABEL_7;
      }

      v16 = v14;
      if (v16 == @"QA" || (v17 = v16, v18 = [(__CFString *)v16 isEqualToString:@"QA"], v17, (v18 & 1) != 0))
      {
        v5 = 4;
        goto LABEL_7;
      }

      v19 = v17;
      if (v19 == @"Dev" || (v20 = v19, v21 = [(__CFString *)v19 isEqualToString:@"Dev"], v20, (v21 & 1) != 0))
      {
        v5 = 5;
        goto LABEL_7;
      }

      v22 = v20;
      if (v22 == @"CN-Prod" || (v23 = v22, v24 = [(__CFString *)v22 isEqualToString:@"CN-Prod"], v23, (v24 & 1) != 0))
      {
        v5 = 6;
        goto LABEL_7;
      }

      v25 = v23;
      if (v25 == @"CN-Cert" || (v26 = v25, v27 = [(__CFString *)v25 isEqualToString:@"CN-Cert"], v26, (v27 & 1) != 0))
      {
        v5 = 7;
        goto LABEL_7;
      }

      v28 = v26;
      if (v28 == @"CN-QA" || (v29 = v28, v30 = [(__CFString *)v28 isEqualToString:@"CN-QA"], v29, (v30 & 1) != 0))
      {
        v5 = 8;
        goto LABEL_7;
      }

      v31 = v29;
      if (v31 == @"CN-Dev" || (v32 = v31, v33 = [(__CFString *)v31 isEqualToString:@"CN-Dev"], v32, v33))
      {
        v5 = 9;
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

id PKSharingRelayServerURLForCurrentEnvironment(void *a1)
{
  v1 = a1;
  v2 = _PKSharingCurrentRelayServerEnvironment();
  v3 = _PKSharingResolveRelayServerURLForEnvironment(v2, v1);

  return v3;
}

id _PKSharingResolveRelayServerURLForEnvironment(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = _PKTrimmedSharingRelayServerOverrideURL();
  if ([v5 length])
  {
    v6 = v5;
LABEL_5:
    v2 = v6;
    goto LABEL_6;
  }

  if ((a1 - 2) < 8)
  {
LABEL_4:
    v6 = _PKSharingRelayHostForEnvironment(a1);
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_15:
    v6 = v4;
    goto LABEL_5;
  }

  if (!a1)
  {
    v8 = PKSharingResolvedRelayServerEnvironment();
    if (!v4 || v8 != 2)
    {
      v6 = _PKSharingResolveRelayServerURLForEnvironment(v8, v4);
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_6:

  return v2;
}

uint64_t _PKSharingCurrentRelayServerEnvironment()
{
  v0 = PKSharingRelayServerEnvironmentOverride();
  v1 = PKSharingRelayServerEnvironmentFromString(v0);

  return v1;
}

id PKSharingRelayServerURLs()
{
  v6[8] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DF70]);
  v6[0] = @"wallet.apple.com";
  v6[1] = @"cert-wallet.apple.com";
  v6[2] = @"qa-wallet.apay.apple.com";
  v6[3] = @"dev-wallet.apay.apple.com";
  v6[4] = @"wallet.apple.com.cn";
  v6[5] = @"cert-wallet.apple.com.cn";
  v6[6] = @"qa-wallet.apple.com.cn";
  v6[7] = @"dev-wallet.apple.com.cn";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:8];
  v2 = [v0 initWithArray:v1];

  v3 = _PKTrimmedSharingRelayServerOverrideURL();
  [v2 safelyAddObject:v3];

  v4 = [v2 copy];

  return v4;
}

__CFString *_PKSharingRelayHostForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return off_1E79D2300[a1 - 1];
  }
}

id _PKTrimmedSharingRelayServerOverrideURL()
{
  v0 = PKSharingRelayServerOverrideURL();
  v1 = [v0 host];

  return v1;
}

__CFString *PKSharingRelayServerPushTopicForCurrentEnvironment()
{
  v0 = PKSharingResolvedRelayServerEnvironment();

  return PKSharingRelayServerPushTopicForEnvironment(v0);
}

__CFString *PKSharingRelayServerPushTopicForEnvironment(unint64_t a1)
{
  v3 = @"com.apple.wallet.sharing";
  if (a1 > 9)
  {
    goto LABEL_4;
  }

  if (((1 << a1) & 0x330) != 0)
  {
    v3 = @"com.apple.wallet.sharing.qa";
    goto LABEL_4;
  }

  if (a1)
  {
LABEL_4:

    return v3;
  }

  v5 = PKSharingResolvedRelayServerEnvironment();
  v3 = PKSharingRelayServerPushTopicForEnvironment(v5);

  return v3;
}

uint64_t PKSharingResolvedRelayServerEnvironment()
{
  v0 = _PKTrimmedSharingRelayServerOverrideURL();
  v1 = v0;
  if (!v0)
  {
    goto LABEL_9;
  }

  v2 = v0;
  if (v2 == @"cert-wallet.apple.com")
  {
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [(__CFString *)v2 isEqualToString:@"cert-wallet.apple.com"];

  if (v4)
  {
    goto LABEL_15;
  }

  v5 = v3;
  if (v5 == @"qa-wallet.apay.apple.com")
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [(__CFString *)v5 isEqualToString:@"qa-wallet.apay.apple.com"];

  if (v7)
  {
    goto LABEL_14;
  }

  v8 = v6;
  if (v8 != @"dev-wallet.apay.apple.com")
  {
    v9 = v8;
    v10 = [(__CFString *)v8 isEqualToString:@"dev-wallet.apay.apple.com"];

    if ((v10 & 1) == 0)
    {
LABEL_9:
      v11 = _PKSharingCurrentRelayServerEnvironment();
      if (v11)
      {
        goto LABEL_16;
      }

      if (os_variant_has_internal_ui())
      {
        v12 = PKStockholmEnvironmentName();
        if ([v12 containsString:@"Cert"])
        {

          v11 = 3;
          goto LABEL_16;
        }

        v13 = [v12 containsString:@"QA"];

        if (v13)
        {
LABEL_14:
          v11 = 4;
          goto LABEL_16;
        }
      }

LABEL_15:
      v11 = 2;
      goto LABEL_16;
    }
  }

  v11 = 5;
LABEL_16:

  return v11;
}

__CFString *PKSharingLoggableMailboxAddress(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (os_variant_has_internal_ui())
    {
      v2 = [v1 copy];
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v1];
      v4 = v3;
      if (v3 && ([v3 host], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
      {
        v7 = [v4 lastPathComponent];
        v8 = 1;
      }

      else
      {
        v7 = v1;
        v8 = 0;
      }

      v9 = [v7 length];
      if (v9 < 0x20)
      {
        v10 = @"<redacted>";
      }

      else
      {
        v10 = [v7 substringFromIndex:v9 - 8];
      }

      v11 = [@"MB-" stringByAppendingString:v10];

      if (v8)
      {
        v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v13 = [v4 pathComponents];
        v14 = [v13 count];
        if ((v14 - 1) >= 2)
        {
          v15 = v14 - 2;
          v16 = 1;
          do
          {
            v17 = [v13 objectAtIndexedSubscript:v16];
            [v12 appendFormat:@"%@/", v17];

            ++v16;
            --v15;
          }

          while (v15);
        }

        [v12 appendString:v11];
        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        v19 = [v4 scheme];
        v20 = [v4 host];
        v2 = [v18 initWithFormat:@"%@://%@/%@", v19, v20, v12];
      }

      else
      {
        v2 = v11;
      }
    }
  }

  else
  {
    v2 = @"MB-???";
  }

  return v2;
}

id PKSharingMailboxIdentifierForAddress(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DFF8];
    v2 = a1;
    v3 = [[v1 alloc] initWithString:v2];

    if (v3 && ([v3 host], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
    {
      v6 = [v3 lastPathComponent];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

__CFString *PKSharingInvitationFlowToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D2348[a1 - 1];
  }
}

uint64_t PKSharingInvitationFlowFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"externalMessages")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_20:
    v4 = 0;
    goto LABEL_21;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"externalMessages"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"externalShare" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"externalShare"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_21;
    }

    v8 = v6;
    if (v8 == @"externalAirDrop" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"externalAirDrop"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_21;
    }

    v11 = v9;
    if (v11 == @"companionDevice" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"companionDevice"], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_21;
    }

    v14 = v12;
    if (v14 == @"easyProvisioning" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"easyProvisioning"], v15, (v16 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_21;
    }

    v17 = v15;
    if (v17 == @"setupAssistant" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"setupAssistant"], v18, v19))
    {
      v4 = 6;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_4:
  v4 = 1;
LABEL_21:

  return v4;
}

__CFString *PKVehicleShareValidationTypeToString(uint64_t a1)
{
  v1 = @"none";
  if (a1 == 1)
  {
    v1 = @"vehicleEnforced";
  }

  if (a1 == 2)
  {
    return @"serverEnforced";
  }

  else
  {
    return v1;
  }
}

__CFString *PKStringFromPhysicalCardOrderReason(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"new";
  }

  else
  {
    return off_1E79D23C8[a1 - 1];
  }
}
uint64_t PKPhysicalCardOrderReasonFromString(void *a1)
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
    v4 = 5;
    goto LABEL_18;
  }

  v3 = [@"new" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"lost" || (v6 = v5, v7 = [@"lost" isEqualToString:v5], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_18;
    }

    v8 = v6;
    if (v8 == @"stolen" || (v9 = v8, v10 = [@"stolen" isEqualToString:v8], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_18;
    }

    v11 = v9;
    if (v11 == @"damaged" || (v12 = v11, v13 = [@"damaged" isEqualToString:v11], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_18;
    }

    v14 = v12;
    if (v14 == @"expired" || (v15 = v14, v16 = [@"expired" isEqualToString:v14], v15, v16))
    {
      v4 = 1;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_4:
  v4 = 0;
LABEL_18:

  return v4;
}

uint64_t PKServiceProviderPurchaseStateFromString(void *a1)
{
  v1 = a1;
  if ([@"pending" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"complete" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"refunded" isEqualToString:v1])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKServiceProviderPurchaseStateToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D23F0[a1 - 1];
  }
}

uint64_t PKPeerPaymentPurchaseDataStatusFromString(void *a1)
{
  v1 = a1;
  if ([@"pending" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"complete" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"rejected" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"canceled" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"expired" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"failed" isEqualToString:v1])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentPurchaseDataStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D2408[a1 - 1];
  }
}

Class initCHSTimelineController()
{
  if (qword_1ED6D1A58 != -1)
  {
    dispatch_once(&qword_1ED6D1A58, &__block_literal_global_91);
  }

  result = objc_getClass("CHSTimelineController");
  _MergedGlobals_219 = result;
  getCHSTimelineControllerClass[0] = CHSTimelineControllerFunction;
  return result;
}

void *__LoadChronoServices_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ChronoServices.framework/ChronoServices", 2);
  LoadChronoServices_frameworkLibrary = result;
  return result;
}

void sub_1AD790A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t PKProtobufShareableCredentialReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v21 = PBReaderReadString();
            v22 = 56;
            goto LABEL_44;
          }

          if (v13 == 8)
          {
            v21 = PBReaderReadString();
            v22 = 40;
            goto LABEL_44;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v21 = PBReaderReadString();
            v22 = 16;
            goto LABEL_44;
          }

          if (v13 == 6)
          {
            v21 = PBReaderReadString();
            v22 = 8;
LABEL_44:
            v23 = *(a1 + v22);
            *(a1 + v22) = v21;

            goto LABEL_45;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v21 = PBReaderReadString();
          v22 = 24;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v21 = PBReaderReadString();
          v22 = 48;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 32;
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 68) |= 1u;
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
              goto LABEL_52;
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

LABEL_52:
          *(a1 + 64) = v20;
          goto LABEL_45;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_45:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id _EnrollmentErrorWithUnderlyingError(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E696AA08];
  v7[0] = a1;
  v1 = MEMORY[0x1E695DF20];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v3];

  return v4;
}

id PKDataDetectorTypesValidateString(void *a1)
{
  v1 = a1;
  if (qword_1EB5B7D48 != -1)
  {
    dispatch_once(&qword_1EB5B7D48, &__block_literal_global_95);
  }

  v2 = _MergedGlobals_3;
  v3 = v1;
  v4 = v2;
  if ([v4 containsObject:v3])
  {
    v5 = 0;
  }

  else
  {
    v14 = [v4 componentsJoinedByString:{@", "}];
    v5 = PKValidationErrorWithReason(@"%@ is not in %@", v6, v7, v8, v9, v10, v11, v12, v3);
  }

  return v5;
}

void __PKDataDetectorTypesValidateString_block_invoke()
{
  v0 = _MergedGlobals_3;
  _MergedGlobals_3 = &unk_1F23B3E18;
}

uint64_t PKDataDetectorTypesFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PKDataDetectorTypePhoneNumber"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"PKDataDetectorTypeLink"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"PKDataDetectorTypeAddress"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"PKDataDetectorTypeCalendarEvent"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"PKDataDetectorTypeNone"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"PKDataDetectorTypeAll"] << 63 >> 63;
  }

  return v2;
}

__CFString *PKLocalizedPaymentUnitKeyForType(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"COMMUTE_PLAN_COUNT_BASED_NUMBER_OF_RIDES_DEFAULT";
  }

  else
  {
    return qword_1E79D27A0[a1 + 1];
  }
}

uint64_t PKPassSectionDetailDrillInFieldAuthenticationRequirementFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"deviceOwner")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"deviceOwner"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"bio" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"bio"], v6, v7))
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

void sub_1AD79D8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKProtobufRemoteRegistrationRequestResultReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___PKProtobufRemoteRegistrationRequestResult__version;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___PKProtobufRemoteRegistrationRequestResult__version;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___PKProtobufRemoteRegistrationRequestResult__result;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___PKProtobufRemoteRegistrationRequestResult__result;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

__CFString *PKCloudStoreItemTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D2920[a1 - 1];
  }
}

__CFString *PKCloudStoreCodingTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79D2980[a1];
  }
}

uint64_t PKCloudStoreCodingTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 != @"DeviceData" && v1 != 0)
  {
    v4 = [@"DeviceData" isEqualToString:v1];

    if ((v4 & 1) == 0)
    {
      v7 = v2;
      if (v7 == @"ServerData" || (v8 = v7, v9 = [@"ServerData" isEqualToString:v7], v8, (v9 & 1) != 0))
      {
        v5 = 1;
        goto LABEL_7;
      }

      v10 = v8;
      if (v10 == @"AllData" || (v11 = v10, v12 = [@"AllData" isEqualToString:v10], v11, v12))
      {
        v5 = 2;
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

void sub_1AD7A1A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD7A3294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PKPeerPaymentControllerStateToString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E79D3C90[a1 - 1];
  }
}

void sub_1AD7A7BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, char a29)
{
  objc_destroyWeak((v30 + 72));
  objc_destroyWeak((v29 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

__CFString *PKPeerPaymentControllerModeToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E79D3CD0[a1 - 1];
  }
}

void sub_1AD7AFA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PKPeerPaymentControllerStateFromString(void *a1)
{
  v1 = a1;
  if ([@"IdentifyRecipient" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"Mode" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"ChooseRecipient" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"Quote" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"Authorize" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"Perform" isEqualToString:v1])
  {
    v2 = 6;
  }

  else if ([@"Request" isEqualToString:v1])
  {
    v2 = 7;
  }

  else if ([@"Complete" isEqualToString:v1])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKPeerPaymentControllerModeFromString(void *a1)
{
  v1 = a1;
  if ([@"Send" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"DeviceTapSend" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"Request" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"Withdrawal" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"InstantWithdrawal" isEqualToString:v1])
  {
    v2 = 6;
  }

  else if ([@"TopUp" isEqualToString:v1])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKProtobufRemoteRegistrationRequestReadFrom(uint64_t a1, void *a2)
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v39 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_52;
          }
        }

        v27 = (v30 != 0) & ~[a2 hasError];
LABEL_52:
        v35 = 13;
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
              v38 = 0;
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
                goto LABEL_57;
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

LABEL_57:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_58;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v40 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v40 & 0x7F) << v21;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_50;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_50:
        v35 = 12;
      }

      *(a1 + v35) = v27;
LABEL_58:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKProtobufDeferredPaymentRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 48;
        goto LABEL_33;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v20 = objc_alloc_init(PKProtobufPaymentSummaryItem);
      objc_storeStrong((a1 + 24), v20);
      v23[0] = 0;
      v23[1] = 0;
      if (!PBReaderPlaceMark() || !PKProtobufPaymentSummaryItemReadFrom(v20, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_34:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 == 6)
      {
        *(a1 + 64) |= 1u;
        v23[0] = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v23[0];
        goto LABEL_34;
      }

      if (v13 == 7)
      {
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_33;
      }
    }

    else
    {
      if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 40;
        goto LABEL_33;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 56;
LABEL_33:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_34;
      }
    }

LABEL_30:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

__CFString *PKPaymentRewardsBalanceEligibilityToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"ineligible";
  }

  if (a1 == 1)
  {
    return @"redeemable";
  }

  else
  {
    return v1;
  }
}

uint64_t PKPaymentRewardsBalanceEligibilityFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"ineligible")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"ineligible"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"redeemable" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"redeemable"], v6, v7))
    {
      v4 = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 2;
LABEL_9:

  return v4;
}

void sub_1AD7B6B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD7B6E40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void PKEnableAutomaticSelectionForPaymentPass(void *a1)
{
  v1 = a1;
  [v1 setSettings:{objc_msgSend(v1, "settings") | 0x30}];
}

void sub_1AD7B7550(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1AD7B7940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD7B7CB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_1()
{
  if (qword_1ED6D1A88 != -1)
  {
    dispatch_once(&qword_1ED6D1A88, &__block_literal_global_162);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_222 = result;
  getNPKCompanionAgentConnectionClass_1[0] = NPKCompanionAgentConnectionFunction_1;
  return result;
}

void *__LoadNanoPassKit_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_1 = result;
  return result;
}

uint64_t PKProtobufDeviceSharingCapabilitiesReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 5:
            v26 = 0;
            v27 = 0;
            v28 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v35 = 0;
              v29 = [a2 position] + 1;
              if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
              {
                v31 = [a2 data];
                [v31 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v28 |= (v35 & 0x7F) << v26;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v11 = v27++ >= 9;
              if (v11)
              {
                LOBYTE(v32) = 0;
                goto LABEL_56;
              }
            }

            v32 = (v28 != 0) & ~[a2 hasError];
LABEL_56:
            *(a1 + 44) = v32;
            goto LABEL_40;
          case 6:
            v14 = PBReaderReadData();
            v15 = 24;
            break;
          default:
LABEL_36:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_40;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v34 = 0;
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
                goto LABEL_54;
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

LABEL_54:
            *(a1 + 40) = v22;
            goto LABEL_40;
          case 2:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          case 3:
            v14 = PBReaderReadString();
            v15 = 8;
            break;
          default:
            goto LABEL_36;
        }
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_40:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKPaymentApplicationStateMessageOverrideTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"dashboard"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"notification"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentApplicationStateMessageOverrideTypeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = &PKPassPaymentApplicationsKeyStateMessagingOverrideDashboard;
LABEL_5:
    v3 = *v2;

    return v3;
  }

  if (a1 == 2)
  {
    v2 = &PKPassPaymentApplicationsKeyStateMessagingOverrideNotification;
    goto LABEL_5;
  }

  v3 = @"unknown";

  return v3;
}

__CFString *PKPaymentOfferWebServiceConfirmOfferEventTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D40C0[a1 - 1];
  }
}

uint64_t PKPaymentOfferWebServiceConfirmOfferSelectionTypeFromCriteriaType(uint64_t a1)
{
  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return 2 * (a1 == 1);
  }
}

void sub_1AD7C095C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1AD7C2110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

PKPassSemantic *PKPassSemanticStringInDictionary(void *a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v7;
  if (([v11 isEqualToString:@"departureLocationDescription"] & 1) != 0
    || ([v11 isEqualToString:@"destinationLocationDescription"] & 1) != 0
    || ([v11 isEqualToString:@"transitProvider"] & 1) != 0
    || ([v11 isEqualToString:@"vehicleName"] & 1) != 0
    || ([v11 isEqualToString:@"vehicleNumber"] & 1) != 0
    || ([v11 isEqualToString:@"vehicleType"] & 1) != 0
    || ([v11 isEqualToString:@"boardingGroup"] & 1) != 0
    || ([v11 isEqualToString:@"boardingZone"] & 1) != 0
    || ([v11 isEqualToString:@"boardingSequenceNumber"] & 1) != 0
    || ([v11 isEqualToString:@"confirmationNumber"] & 1) != 0
    || ([v11 isEqualToString:@"transitStatus"] & 1) != 0
    || ([v11 isEqualToString:@"transitStatusReason"] & 1) != 0
    || ([v11 isEqualToString:@"membershipProgramName"] & 1) != 0
    || ([v11 isEqualToString:@"membershipProgramNumber"] & 1) != 0
    || ([v11 isEqualToString:@"membershipProgramStatus"] & 1) != 0
    || ([v11 isEqualToString:@"priorityStatus"] & 1) != 0
    || ([v11 isEqualToString:@"securityScreening"] & 1) != 0
    || ([v11 isEqualToString:@"flightCode"] & 1) != 0
    || ([v11 isEqualToString:@"airlineCode"] & 1) != 0
    || ([v11 isEqualToString:@"departureAirportCode"] & 1) != 0
    || ([v11 isEqualToString:@"departureAirportName"] & 1) != 0
    || ([v11 isEqualToString:@"departureCityName"] & 1) != 0
    || ([v11 isEqualToString:@"departureTerminal"] & 1) != 0
    || ([v11 isEqualToString:@"departureGate"] & 1) != 0
    || ([v11 isEqualToString:@"destinationAirportCode"] & 1) != 0
    || ([v11 isEqualToString:@"destinationAirportName"] & 1) != 0
    || ([v11 isEqualToString:@"destinationCityName"] & 1) != 0
    || ([v11 isEqualToString:@"destinationTerminal"] & 1) != 0
    || ([v11 isEqualToString:@"destinationGate"] & 1) != 0
    || ([v11 isEqualToString:@"departurePlatform"] & 1) != 0
    || ([v11 isEqualToString:@"departureStationName"] & 1) != 0
    || ([v11 isEqualToString:@"destinationPlatform"] & 1) != 0
    || ([v11 isEqualToString:@"destinationStationName"] & 1) != 0
    || ([v11 isEqualToString:@"carNumber"] & 1) != 0
    || ([v11 isEqualToString:@"eventName"] & 1) != 0
    || ([v11 isEqualToString:@"venueName"] & 1) != 0
    || ([v11 isEqualToString:@"venueEntrance"] & 1) != 0
    || ([v11 isEqualToString:@"venueEntranceGate"] & 1) != 0
    || ([v11 isEqualToString:@"venueEntranceDoor"] & 1) != 0
    || ([v11 isEqualToString:@"venueEntrancePortal"] & 1) != 0
    || ([v11 isEqualToString:@"venueRegionName"] & 1) != 0
    || ([v11 isEqualToString:@"venueRoom"] & 1) != 0
    || ([v11 isEqualToString:@"venuePhoneNumber"] & 1) != 0
    || ([v11 isEqualToString:@"venuePlaceID"] & 1) != 0
    || ([v11 isEqualToString:@"leagueName"] & 1) != 0
    || ([v11 isEqualToString:@"leagueAbbreviation"] & 1) != 0
    || ([v11 isEqualToString:@"homeTeamLocation"] & 1) != 0
    || ([v11 isEqualToString:@"homeTeamName"] & 1) != 0
    || ([v11 isEqualToString:@"homeTeamAbbreviation"] & 1) != 0
    || ([v11 isEqualToString:@"awayTeamLocation"] & 1) != 0
    || ([v11 isEqualToString:@"awayTeamName"] & 1) != 0
    || ([v11 isEqualToString:@"awayTeamAbbreviation"] & 1) != 0
    || ([v11 isEqualToString:@"sportName"] & 1) != 0
    || ([v11 isEqualToString:@"genre"] & 1) != 0
    || ([v11 isEqualToString:@"eventType"] & 1) != 0
    || ([v11 isEqualToString:@"eventLiveMessage"] & 1) != 0
    || ([v11 isEqualToString:@"admissionLevel"] & 1) != 0
    || ([v11 isEqualToString:@"admissionLevelAbbreviation"] & 1) != 0
    || ([v11 isEqualToString:@"attendeeName"] & 1) != 0
    || ([v11 isEqualToString:@"entranceDescription"] & 1) != 0
    || ([v11 isEqualToString:@"additionalTicketAttributes"] & 1) != 0
    || [v11 isEqualToString:@"internationalDocumentsVerifiedDeclarationName"])
  {

    goto LABEL_64;
  }

  v18 = [v11 isEqualToString:@"ticketFareClass"];

  if (v18)
  {
LABEL_64:
    v12 = objc_alloc_init(PKPassSemantic);
    [(PKPassSemantic *)v12 setSemanticKey:v11];
    v13 = [v8 objectForKeyedSubscript:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = PKLocalizedPassStringForPassBundle(v13, v9, v10);
      [(PKPassSemantic *)v12 setStringValue:v14];
      if ([(PKPassSemantic *)v12 hasValue])
      {
        v15 = v12;
LABEL_73:

        goto LABEL_74;
      }

      v16 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v11;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has no value, returning nil.", &v19, 0xCu);
      }
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v11;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has wrong value, returning nil.", &v19, 0xCu);
      }
    }

    v15 = 0;
    goto LABEL_73;
  }

  v15 = 0;
LABEL_74:

  return v15;
}

PKPassSemantic *PKPassSemanticDateInDictionary(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (([v5 isEqualToString:@"originalDepartureDate"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"currentDepartureDate") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"originalArrivalDate") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"currentArrivalDate") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"originalBoardingDate") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"currentBoardingDate") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"eventStartDate") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"venueDoorsOpenDate") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"venueGatesOpenDate") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"venueParkingLotsOpenDate") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"venueBoxOfficeOpenDate") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"venueFanZoneOpenDate") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"venueOpenDate") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"venueCloseDate"))
  {

    goto LABEL_16;
  }

  v12 = [v5 isEqualToString:@"eventEndDate"];

  if (v12)
  {
LABEL_16:
    v6 = objc_alloc_init(PKPassSemantic);
    [(PKPassSemantic *)v6 setSemanticKey:v5];
    v7 = [v4 objectForKeyedSubscript:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v7, 0, 0);
      [(PKPassSemantic *)v6 setDateValue:v8];
      if ([(PKPassSemantic *)v6 hasValue])
      {
        v9 = v6;
LABEL_25:

        goto LABEL_26;
      }

      v10 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v5;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has no value, returning nil.", &v13, 0xCu);
      }
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v5;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has wrong value, returning nil.", &v13, 0xCu);
      }
    }

    v9 = 0;
    goto LABEL_25;
  }

  v9 = 0;
LABEL_26:

  return v9;
}

PKPassSemantic *PKPassSemanticTimeZoneInDictionary(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (([v5 isEqualToString:@"eventTimeZone"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"departureAirportTimeZone") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"destinationAirportTimeZone") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"departureLocationTimeZone"))
  {

    goto LABEL_6;
  }

  v12 = [v5 isEqualToString:@"destinationLocationTimeZone"];

  if (v12)
  {
LABEL_6:
    v6 = objc_alloc_init(PKPassSemantic);
    [(PKPassSemantic *)v6 setSemanticKey:v5];
    v7 = [v4 objectForKeyedSubscript:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x1E695DFE8] timeZoneWithName:v7];
      [(PKPassSemantic *)v6 setTimeZoneValue:v8];
      if ([(PKPassSemantic *)v6 hasValue])
      {
        v9 = v6;
LABEL_15:

        goto LABEL_16;
      }

      v10 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v5;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has no value, returning nil.", &v13, 0xCu);
      }
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v5;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has wrong value, returning nil.", &v13, 0xCu);
      }
    }

    v9 = 0;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_16:

  return v9;
}

PKPassSemantic *PKPassSemanticEventDateInfoInDictionary(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"eventStartDateInfo"])
  {
    v5 = objc_alloc_init(PKPassSemantic);
    [(PKPassSemantic *)v5 setSemanticKey:v3];
    v6 = [v4 objectForKeyedSubscript:v3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [[PKEventDateInfo alloc] initWithDictionary:v7];
      [(PKPassSemantic *)v5 setEventDateInfoValue:v8];
      if ([(PKPassSemantic *)v5 hasValue])
      {
        v9 = v5;
      }

      else
      {
        v10 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543362;
          v13 = v3;
          _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has no value, returning nil.", &v12, 0xCu);
        }

        v9 = 0;
      }
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v3;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has wrong value, returning nil.", &v12, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

PKPassSemantic *PKPassSemanticNumberInDictionary(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (([v5 isEqualToString:@"flightNumber"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"duration") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"tailgatingAllowed") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"silenceRequested"))
  {

    goto LABEL_6;
  }

  v12 = [v5 isEqualToString:@"internationalDocumentsAreVerified"];

  if (v12)
  {
LABEL_6:
    v6 = objc_alloc_init(PKPassSemantic);
    [(PKPassSemantic *)v6 setSemanticKey:v5];
    v7 = [v4 objectForKeyedSubscript:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKPassSemantic *)v6 setNumberValue:v7];
      if ([(PKPassSemantic *)v6 hasValue])
      {
        v8 = v6;
LABEL_15:

        goto LABEL_16;
      }

      v9 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v5;
        v10 = "Semantic for key %{public}@ has no value, returning nil.";
        goto LABEL_13;
      }
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v5;
        v10 = "Semantic for key %{public}@ has wrong value, returning nil.";
LABEL_13:
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, v10, &v13, 0xCu);
      }
    }

    v8 = 0;
    goto LABEL_15;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

PKPassSemantic *PKPassSemanticLocationInDictionary(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (([v5 isEqualToString:@"departureLocation"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"destinationLocation"))
  {
  }

  else
  {
    v11 = [v5 isEqualToString:@"venueLocation"];

    if (!v11)
    {
      v10 = 0;
      goto LABEL_17;
    }
  }

  v6 = objc_alloc_init(PKPassSemantic);
  [(PKPassSemantic *)v6 setSemanticKey:v5];
  v7 = [v4 objectForKeyedSubscript:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [[PKLocation alloc] initWithDictionary:v8];
    [(PKPassSemantic *)v6 setLocationValue:v9];
    if ([(PKPassSemantic *)v6 hasValue])
    {
      v10 = v6;
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v5;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has no value, returning nil.", &v14, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v5;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has wrong value, returning nil.", &v14, 0xCu);
    }

    v10 = 0;
  }

LABEL_17:

  return v10;
}

PKPassSemantic *PKPassSemanticCurrencyAmountInDictionary(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (([v3 isEqualToString:@"balance"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"balance"))
  {
    v5 = objc_alloc_init(PKPassSemantic);
    [(PKPassSemantic *)v5 setSemanticKey:v3];
    v6 = [v4 objectForKeyedSubscript:v3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v7 objectForKeyedSubscript:@"currencyCode"];
      v9 = [v7 objectForKeyedSubscript:@"amount"];
      v10 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v9];
      v11 = [[PKCurrencyAmount alloc] initWithAmount:v10 currency:v8 exponent:0];
      [(PKPassSemantic *)v5 setCurrencyAmountValue:v11];
      if ([(PKPassSemantic *)v5 hasValue])
      {
        v12 = v5;
      }

      else
      {
        v13 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138543362;
          v16 = v3;
          _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has no value, returning nil.", &v15, 0xCu);
        }

        v12 = 0;
      }
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = v3;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has wrong value, returning nil.", &v15, 0xCu);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

PKPassSemantic *PKPassSemanticPersonNameComponentsInDictionary(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (![v3 isEqualToString:@"passengerName"])
  {
    v8 = 0;
    goto LABEL_13;
  }

  v5 = objc_alloc_init(PKPassSemantic);
  [(PKPassSemantic *)v5 setSemanticKey:v3];
  v6 = [v4 objectForKeyedSubscript:v3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v3;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has wrong value, returning nil.", &v11, 0xCu);
    }

    goto LABEL_11;
  }

  v7 = _PersonNameComponentsFromDictionary(v6);
  [(PKPassSemantic *)v5 setPersonNameComponentsValue:v7];
  if (![(PKPassSemantic *)v5 hasValue])
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v3;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has no value, returning nil.", &v11, 0xCu);
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = v5;
LABEL_12:

LABEL_13:

  return v8;
}

id _PersonNameComponentsFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"namePrefix"];
  v3 = [v1 objectForKeyedSubscript:@"givenName"];
  v4 = [v1 objectForKeyedSubscript:@"middleName"];
  v5 = [v1 objectForKeyedSubscript:@"familyName"];
  v6 = [v1 objectForKeyedSubscript:@"nameSuffix"];
  v7 = [v1 objectForKeyedSubscript:@"nickname"];
  v23 = [v1 objectForKeyedSubscript:@"phoneticRepresentation"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v2;
  }

  else
  {
    v19 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v22 = v2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  objc_opt_class();
  v21 = v3;
  v20 = v6;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 count])
  {
    v13 = v5;
    v14 = _PersonNameComponentsFromDictionary(v23);
  }

  else
  {
    v13 = v5;
    v14 = 0;
  }

  v15 = v4;
  if (v19 || v8 || v9 || v10 || v11 || v12 || v14)
  {
    v17 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v17 setNamePrefix:v19];
    [v17 setGivenName:v8];
    [v17 setMiddleName:v9];
    [v17 setFamilyName:v10];
    [v17 setNameSuffix:v11];
    [v17 setNickname:v12];
    [v17 setPhoneticRepresentation:v14];
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Returning nil name components for dictionary that does not contain any keys", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

PKPassSemantic *PKPassSemanticStringsInDictionary(void *a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v7;
  if (([v11 isEqualToString:@"artistIDs"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"performerNames") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"albumIDs") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"playlistIDs") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"departureLocationSecurityPrograms") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"destinationLocationSecurityPrograms") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"passengerEligibleSecurityPrograms") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"passengerCapabilities") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"passengerServiceSSRs") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"passengerInformationSSRs") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"passengerAirlineSSRs"))
  {
  }

  else
  {
    v27 = [v11 isEqualToString:@"loungePlaceIDs"];

    if (!v27)
    {
      v24 = 0;
      goto LABEL_33;
    }
  }

  v12 = objc_alloc_init(PKPassSemantic);
  [(PKPassSemantic *)v12 setSemanticKey:v11];
  v13 = [v8 objectForKeyedSubscript:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v12;
    v29 = v8;
    v14 = v13;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = PKLocalizedPassStringForPassBundle(v21, v9, v10);
            [v15 addObject:v22];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    v23 = [v15 copy];
    v12 = v28;
    [(PKPassSemantic *)v28 setStringsValue:v23];

    if ([(PKPassSemantic *)v28 hasValue])
    {
      v24 = v28;
    }

    else
    {
      v25 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v36 = v11;
        _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has no value, returning nil.", buf, 0xCu);
      }

      v24 = 0;
    }

    v8 = v29;
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v11;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has wrong value, returning nil.", buf, 0xCu);
    }

    v24 = 0;
  }

LABEL_33:

  return v24;
}

PKPassSemantic *PKPassSemanticDictionariesInDictionary(void *a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v26 = a2;
  v4 = v3;
  v24 = v4;
  if (![v4 isEqualToString:@"seats"])
  {
    v16 = [v4 isEqualToString:@"wifiAccess"];
    v17 = _os_feature_enabled_impl();
    if (!v17 || (v16 & 1) != 0)
    {
      v20 = v17 | v16;

      if (v20)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v18 = [v4 isEqualToString:@"airPlay"];

      if (v18)
      {
        goto LABEL_3;
      }
    }

    v19 = 0;
    goto LABEL_35;
  }

  _os_feature_enabled_impl();

LABEL_3:
  v25 = objc_alloc_init(PKPassSemantic);
  [(PKPassSemantic *)v25 setSemanticKey:v4];
  v23 = [v26 objectForKeyedSubscript:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v23;
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v7)
    {
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
            *&buf = 0;
            *(&buf + 1) = &buf;
            v36 = 0x2020000000;
            v37 = 1;
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __PKPassSemanticDictionariesInDictionary_block_invoke;
            v28[3] = &unk_1E79CDB98;
            v13 = v12;
            v29 = v13;
            p_buf = &buf;
            [v11 enumerateKeysAndObjectsUsingBlock:v28];
            if (*(*(&buf + 1) + 24) == 1 && [v13 count])
            {
              v14 = [v13 copy];
              [v27 addObject:v14];
            }

            _Block_object_dispose(&buf, 8);
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v7);
    }

    if ([v27 count])
    {
      v15 = [v27 copy];
      [(PKPassSemantic *)v25 setDictionariesValue:v15];
    }

    else
    {
      [(PKPassSemantic *)v25 setDictionariesValue:0];
    }

    if ([(PKPassSemantic *)v25 hasValue])
    {
      v19 = v25;
    }

    else
    {
      v21 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v24;
        _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has no value, returning nil.", &buf, 0xCu);
      }

      v19 = 0;
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Semantic for key %{public}@ has wrong value, returning nil.", &buf, 0xCu);
    }

    v19 = 0;
  }

LABEL_35:

  return v19;
}

void __PKPassSemanticDictionariesInDictionary_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if ([PKPassSemantic isSupportedDictionaryKeyType:v8]&& [PKPassSemantic isSupportedDictionaryValueType:v7])
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __PKPassSemanticsFromDictionary_block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 isEqualToString:@"departureLocationDescription"] & 1) != 0
    || ([v3 isEqualToString:@"destinationLocationDescription"] & 1) != 0
    || ([v3 isEqualToString:@"transitProvider"] & 1) != 0
    || ([v3 isEqualToString:@"vehicleName"] & 1) != 0
    || ([v3 isEqualToString:@"vehicleNumber"] & 1) != 0
    || ([v3 isEqualToString:@"vehicleType"] & 1) != 0
    || ([v3 isEqualToString:@"boardingGroup"] & 1) != 0
    || ([v3 isEqualToString:@"boardingZone"] & 1) != 0
    || ([v3 isEqualToString:@"boardingSequenceNumber"] & 1) != 0
    || ([v3 isEqualToString:@"confirmationNumber"] & 1) != 0
    || ([v3 isEqualToString:@"transitStatus"] & 1) != 0
    || ([v3 isEqualToString:@"transitStatusReason"] & 1) != 0
    || ([v3 isEqualToString:@"membershipProgramName"] & 1) != 0
    || ([v3 isEqualToString:@"membershipProgramNumber"] & 1) != 0
    || ([v3 isEqualToString:@"membershipProgramStatus"] & 1) != 0
    || ([v3 isEqualToString:@"priorityStatus"] & 1) != 0
    || ([v3 isEqualToString:@"securityScreening"] & 1) != 0
    || ([v3 isEqualToString:@"flightCode"] & 1) != 0
    || ([v3 isEqualToString:@"airlineCode"] & 1) != 0
    || ([v3 isEqualToString:@"departureAirportCode"] & 1) != 0
    || ([v3 isEqualToString:@"departureAirportName"] & 1) != 0
    || ([v3 isEqualToString:@"departureCityName"] & 1) != 0
    || ([v3 isEqualToString:@"departureTerminal"] & 1) != 0
    || ([v3 isEqualToString:@"departureGate"] & 1) != 0
    || ([v3 isEqualToString:@"destinationAirportCode"] & 1) != 0
    || ([v3 isEqualToString:@"destinationAirportName"] & 1) != 0
    || ([v3 isEqualToString:@"destinationCityName"] & 1) != 0
    || ([v3 isEqualToString:@"destinationTerminal"] & 1) != 0
    || ([v3 isEqualToString:@"destinationGate"] & 1) != 0
    || ([v3 isEqualToString:@"departurePlatform"] & 1) != 0
    || ([v3 isEqualToString:@"departureStationName"] & 1) != 0
    || ([v3 isEqualToString:@"destinationPlatform"] & 1) != 0
    || ([v3 isEqualToString:@"destinationStationName"] & 1) != 0
    || ([v3 isEqualToString:@"carNumber"] & 1) != 0
    || ([v3 isEqualToString:@"eventName"] & 1) != 0
    || ([v3 isEqualToString:@"venueName"] & 1) != 0
    || ([v3 isEqualToString:@"venueEntrance"] & 1) != 0
    || ([v3 isEqualToString:@"venueEntranceGate"] & 1) != 0
    || ([v3 isEqualToString:@"venueEntranceDoor"] & 1) != 0
    || ([v3 isEqualToString:@"venueEntrancePortal"] & 1) != 0
    || ([v3 isEqualToString:@"venueRegionName"] & 1) != 0
    || ([v3 isEqualToString:@"venueRoom"] & 1) != 0
    || ([v3 isEqualToString:@"venuePhoneNumber"] & 1) != 0
    || ([v3 isEqualToString:@"venuePlaceID"] & 1) != 0
    || ([v3 isEqualToString:@"leagueName"] & 1) != 0
    || ([v3 isEqualToString:@"leagueAbbreviation"] & 1) != 0
    || ([v3 isEqualToString:@"homeTeamLocation"] & 1) != 0
    || ([v3 isEqualToString:@"homeTeamName"] & 1) != 0
    || ([v3 isEqualToString:@"homeTeamAbbreviation"] & 1) != 0
    || ([v3 isEqualToString:@"awayTeamLocation"] & 1) != 0
    || ([v3 isEqualToString:@"awayTeamName"] & 1) != 0
    || ([v3 isEqualToString:@"awayTeamAbbreviation"] & 1) != 0
    || ([v3 isEqualToString:@"sportName"] & 1) != 0
    || ([v3 isEqualToString:@"genre"] & 1) != 0
    || ([v3 isEqualToString:@"eventType"] & 1) != 0
    || ([v3 isEqualToString:@"eventLiveMessage"] & 1) != 0
    || ([v3 isEqualToString:@"admissionLevel"] & 1) != 0
    || ([v3 isEqualToString:@"admissionLevelAbbreviation"] & 1) != 0
    || ([v3 isEqualToString:@"attendeeName"] & 1) != 0
    || ([v3 isEqualToString:@"entranceDescription"] & 1) != 0
    || ([v3 isEqualToString:@"additionalTicketAttributes"] & 1) != 0
    || [v3 isEqualToString:@"internationalDocumentsVerifiedDeclarationName"])
  {

LABEL_64:
    v4 = PKPassSemanticStringInDictionary(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48));
    goto LABEL_65;
  }

  v6 = [v3 isEqualToString:@"ticketFareClass"];

  if (v6)
  {
    goto LABEL_64;
  }

  v7 = v3;
  if (([v7 isEqualToString:@"originalDepartureDate"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"currentDepartureDate") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"originalArrivalDate") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"currentArrivalDate") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"originalBoardingDate") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"currentBoardingDate") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"eventStartDate") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"venueDoorsOpenDate") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"venueGatesOpenDate") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"venueParkingLotsOpenDate") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"venueBoxOfficeOpenDate") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"venueFanZoneOpenDate") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"venueOpenDate") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"venueCloseDate"))
  {

LABEL_85:
    v4 = PKPassSemanticDateInDictionary(v7, *(a1 + 32));
    goto LABEL_65;
  }

  v8 = [v7 isEqualToString:@"eventEndDate"];

  if (v8)
  {
    goto LABEL_85;
  }

  v9 = v7;
  if (([v9 isEqualToString:@"eventTimeZone"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"departureAirportTimeZone") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"destinationAirportTimeZone") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"departureLocationTimeZone"))
  {

LABEL_92:
    v4 = PKPassSemanticTimeZoneInDictionary(v9, *(a1 + 32));
    goto LABEL_65;
  }

  v10 = [v9 isEqualToString:@"destinationLocationTimeZone"];

  if (v10)
  {
    goto LABEL_92;
  }

  v11 = v9;
  if (([v11 isEqualToString:@"departureLocation"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"destinationLocation"))
  {

LABEL_97:
    v4 = PKPassSemanticLocationInDictionary(v11, *(a1 + 32));
    goto LABEL_65;
  }

  v12 = [v11 isEqualToString:@"venueLocation"];

  if (v12)
  {
    goto LABEL_97;
  }

  v13 = v11;
  if ([v13 isEqualToString:@"balance"])
  {

LABEL_101:
    v4 = PKPassSemanticCurrencyAmountInDictionary(v13, *(a1 + 32));
    goto LABEL_65;
  }

  v14 = [v13 isEqualToString:@"balance"];

  if (v14)
  {
    goto LABEL_101;
  }

  if ([v13 isEqualToString:@"passengerName"])
  {
    v4 = PKPassSemanticPersonNameComponentsInDictionary(v13, *(a1 + 32));
    goto LABEL_65;
  }

  v15 = v13;
  if (([v15 isEqualToString:@"flightNumber"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"duration") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"tailgatingAllowed") & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"silenceRequested"))
  {

LABEL_110:
    v4 = PKPassSemanticNumberInDictionary(v15, *(a1 + 32));
    goto LABEL_65;
  }

  v16 = [v15 isEqualToString:@"internationalDocumentsAreVerified"];

  if (v16)
  {
    goto LABEL_110;
  }

  v17 = v15;
  if (([v17 isEqualToString:@"artistIDs"] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"performerNames") & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"albumIDs") & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"playlistIDs") & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"departureLocationSecurityPrograms") & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"destinationLocationSecurityPrograms") & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"passengerEligibleSecurityPrograms") & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"passengerCapabilities") & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"passengerServiceSSRs") & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", @"passengerInformationSSRs") & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"passengerAirlineSSRs"))
  {

LABEL_124:
    v4 = PKPassSemanticStringsInDictionary(v17, *(a1 + 32), *(a1 + 40), *(a1 + 48));
    goto LABEL_65;
  }

  v18 = [v17 isEqualToString:@"loungePlaceIDs"];

  if (v18)
  {
    goto LABEL_124;
  }

  v19 = v17;
  if ([v19 isEqualToString:@"seats"])
  {
    _os_feature_enabled_impl();

LABEL_132:
    v4 = PKPassSemanticDictionariesInDictionary(v19, *(a1 + 32));
    goto LABEL_65;
  }

  v20 = [v19 isEqualToString:@"wifiAccess"];
  v21 = _os_feature_enabled_impl();
  if (!v21 || (v20 & 1) != 0)
  {
    v22 = v21 | v20;
  }

  else
  {
    v22 = [v19 isEqualToString:@"airPlay"];
  }

  if (v22)
  {
    goto LABEL_132;
  }

  if ([v19 isEqualToString:@"eventStartDateInfo"])
  {
    v4 = PKPassSemanticEventDateInfoInDictionary(v19, *(a1 + 32));
LABEL_65:
    v5 = v4;
    [v4 setFieldKey:*(a1 + 56)];
    if (v5)
    {
      [*(a1 + 64) setObject:v5 forKeyedSubscript:v3];
    }

    goto LABEL_67;
  }

  v23 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543362;
    v25 = v19;
    _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Ignoring semantic value for unknown key %{public}@.", &v24, 0xCu);
  }

  [0 setFieldKey:*(a1 + 56)];
LABEL_67:
}

id PKAllPassSemanticsInPassDictionary(void *a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v7 = a3;
  v8 = a4;
  v22 = [a1 objectForKeyedSubscript:@"semantics"];
  v30 = v7;
  v9 = v8;
  v23 = PKPassSemanticsFromDictionary(v22, 0, v7, v8);
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v26 = [&unk_1F23B3F68 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v26)
  {
    v24 = *v36;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(&unk_1F23B3F68);
        }

        v11 = [v25 PKArrayForKey:*(*(&v35 + 1) + 8 * i)];
        if ([v11 count])
        {
          v27 = v11;
          v28 = i;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v32;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v32 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v31 + 1) + 8 * j);
                v18 = [v17 objectForKeyedSubscript:@"semantics"];
                if (v18)
                {
                  v19 = [v17 PKStringForKey:@"key"];
                  v20 = PKPassSemanticsFromDictionary(v18, v19, v30, v9);
                  if (v20)
                  {
                    [v29 addEntriesFromDictionary:v20];
                  }
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v14);
          }

          v11 = v27;
          i = v28;
        }
      }

      v26 = [&unk_1F23B3F68 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v26);
  }

  [v23 addEntriesFromDictionary:v29];

  return v23;
}

id PKCreateSharingLocalChannelDescriptorTransportIdentifier(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = [v3 alloc];
  v6 = &stru_1F227FD28;
  if (a2 == 1)
  {
    v6 = @"Destination";
  }

  if (!a2)
  {
    v6 = @"Source";
  }

  v7 = [v5 initWithFormat:@"%@-%@", v6, v4];

  return v7;
}

__CFString *PKSharingProximityChannelDescriptorGroupToString(uint64_t a1)
{
  if (a1)
  {
    return @"unknown";
  }

  else
  {
    return @"setup_assistant";
  }
}

BOOL PKSharingProximityChannelDescriptorGroupFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 0;
  if (v1 != @"setup_assistant")
  {
    if (!v1 || (v3 = [(__CFString *)v1 isEqualToString:@"setup_assistant"], v2, !v3))
    {
      v4 = 1;
    }
  }

  return v4;
}

__CFString *PKPaymentOfferConfirmationRecordTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D45D8[a1 - 1];
  }
}

uint64_t PKPaymentOfferConfirmationRecordTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"selectedOffer")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"selectedOffer"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"payInFull" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"payInFull"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"setupInstallmentsPostPurchase" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"setupInstallmentsPostPurchase"], v9, v10))
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

uint64_t PKAccountPhysicalCardExpirationMessagingTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"expiringSoon")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"expiringSoon"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"expired" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"expired"], v6, v7))
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

__CFString *PKPassShareTimeConfigurationSupportToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"none";
  }

  else
  {
    return off_1E79D4740[a1 - 1];
  }
}

uint64_t PKPassShareTimeConfigurationSupportFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"userSetExpiration")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"userSetExpiration"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"scheduling" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"scheduling"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"advancedScheduling" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"advancedScheduling"], v9, v10))
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

__CFString *PKPassShareTimeScheduleFrequencyToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"none";
  }

  else
  {
    return off_1E79D4758[a1 - 1];
  }
}

uint64_t PKPassShareTimeScheduleFrequencyFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"day")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"day"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"week" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"week"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"month" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"month"], v9, v10))
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

__CFString *PKAuthenticatorEvaluationStateDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E79D47D8[a1];
  }
}

__CFString *PKAuthenticatorCoachingStateDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E79D4808[a1];
  }
}

void sub_1AD7D76C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

id initFHInsightTypeOverallSpend_0()
{
  if (qword_1ED6D1AD8 != -1)
  {
    dispatch_once(&qword_1ED6D1AD8, &__block_literal_global_73);
  }

  v0 = dlsym(qword_1ED6D1AD0, "FHInsightTypeOverallSpend");
  objc_storeStrong(&qword_1ED6D1AC8, *v0);
  getFHInsightTypeOverallSpend[0] = FHInsightTypeOverallSpendFunction_0;
  v1 = qword_1ED6D1AC8;

  return v1;
}

void *__LoadFinHealthInsights_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/FinHealthInsights.framework/FinHealthInsights", 2);
  qword_1ED6D1AD0 = result;
  return result;
}

id initFHInsightTypeCategorySpend_0()
{
  if (qword_1ED6D1AD8 != -1)
  {
    dispatch_once(&qword_1ED6D1AD8, &__block_literal_global_73);
  }

  v0 = dlsym(qword_1ED6D1AD0, "FHInsightTypeCategorySpend");
  objc_storeStrong(&_MergedGlobals_225, *v0);
  getFHInsightTypeCategorySpend[0] = FHInsightTypeCategorySpendFunction_0;
  v1 = _MergedGlobals_225;

  return v1;
}

void sub_1AD7D8B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PKAnalyticsSendEventForFeature(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = PKFeatureIdentifierToString(a2);
  v14 = PKStringWithValidatedFormat(v6, @"%@", v8, v9, v10, v11, v12, v13, v7);

  AnalyticsSendEvent();
}

void PKAnalyticsSendEventWithDailyLimit(void *a1, void *a2, uint64_t a3)
{
  v18 = a1;
  v5 = a2;
  if (a3 >= 1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v18, @"lastLoggedDate"];
    v7 = PKSharedCacheGetDateForKey(v6);

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v18, @"eventCount"];
    IntegerForKey = PKSharedCacheGetIntegerForKey(v8);

    if (v7)
    {
      v10 = [MEMORY[0x1E695DEE8] currentCalendar];
      v11 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
      [v10 setTimeZone:v11];

      if ([v10 isDateInToday:v7])
      {
        if (IntegerForKey >= a3)
        {

          goto LABEL_10;
        }

        v12 = [MEMORY[0x1E695DF00] date];

        v13 = IntegerForKey + 1;
        v7 = v12;
      }

      else
      {
        v14 = [MEMORY[0x1E695DF00] date];

        v13 = 1;
        v7 = v14;
      }
    }

    else
    {
      v7 = [MEMORY[0x1E695DF00] date];
      v13 = 1;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v18, @"lastLoggedDate"];
    PKSharedCacheSetObjectForKey(v7, v15);

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v18, @"eventCount"];
    PKSharedCacheSetObjectForKey(v16, v17);

    AnalyticsSendEvent();
LABEL_10:
  }
}

__CFString *PKAnalyticsAmountCategoryForAmount(void *a1)
{
  v1 = a1;
  if ([v1 pk_isLessThanOrEqualToInteger:25])
  {
    v2 = @"$1 — $25";
  }

  else if ([v1 pk_isLessThanOrEqualToInteger:50])
  {
    v2 = @"$25.01 — $50";
  }

  else if ([v1 pk_isLessThanOrEqualToInteger:100])
  {
    v2 = @"$50.01 — $100";
  }

  else if ([v1 pk_isLessThanOrEqualToInteger:500])
  {
    v2 = @"$100.01 — $500";
  }

  else
  {
    v2 = @"$500.01 — $10,000";
  }

  return v2;
}

void PKAnalyticsReportPaymentButtonRequest(unsigned int a1, int a2, void *a3, void *a4, void *a5)
{
  v28 = a3;
  v9 = a4;
  v10 = a5;
  if (arc4random_uniform(0x19u))
  {
    if (a1 > 0x10)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_1E79D5588[a1];
    }

    if (v10)
    {
      v12 = PKDefaultPaymentNetworkNameForPaymentPass(v10);
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = &stru_1F227FD28;
      }

      v15 = v14;

      v16 = [v10 organizationName];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = &stru_1F227FD28;
      }

      v19 = v18;

      v20 = [v10 devicePrimaryPaymentApplication];
      v21 = [v20 paymentType];
    }

    else
    {
      v21 = 0;
      v15 = &stru_1F227FD28;
      v19 = &stru_1F227FD28;
    }

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v22 setObject:@"com.apple.wallet.ecom.smartButtons.eventType.applePayButtonRequest" forKeyedSubscript:@"eventType"];
    [v22 setObject:v11 forKeyedSubscript:@"buttonType"];
    if (v28)
    {
      v23 = v28;
    }

    else
    {
      v23 = &stru_1F227FD28;
    }

    [v22 setObject:v23 forKeyedSubscript:@"appBundleID"];
    v24 = PKDeviceClass();
    [v22 setObject:v24 forKeyedSubscript:@"deviceType"];

    v25 = PKOSVersion();
    [v22 setObject:v25 forKeyedSubscript:@"osVersion"];

    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
    [v22 setObject:v26 forKeyedSubscript:@"productSubType"];

    [v22 setObject:@"inApp" forKeyedSubscript:@"environment"];
    if (a2)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    [v22 setObject:v27 forKeyedSubscript:@"isDynamic"];
    [v22 setObject:v19 forKeyedSubscript:@"issuer"];
    [v22 setObject:v15 forKeyedSubscript:@"networkName"];
    if ([v9 length])
    {
      [v22 setObject:v9 forKeyedSubscript:@"errorType"];
    }

    PKAnalyticsSendEventWithDailyLimit(@"com.apple.wallet.ecom.smartButtons", v22, 100);
  }
}

Class initMKLocalSearchCompleter()
{
  if (qword_1EB59FFB0 != -1)
  {
    dispatch_once(&qword_1EB59FFB0, &__block_literal_global_260);
  }

  result = objc_getClass("MKLocalSearchCompleter");
  _MergedGlobals_1_2 = result;
  getMKLocalSearchCompleterClass[0] = MKLocalSearchCompleterFunction;
  return result;
}

void *__LoadMapKit_block_invoke_1()
{
  result = dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 2);
  LoadMapKit_frameworkLibrary_1 = result;
  return result;
}

Class initMKLocalSearchRequest()
{
  if (qword_1EB59FFB0 != -1)
  {
    dispatch_once(&qword_1EB59FFB0, &__block_literal_global_260);
  }

  result = objc_getClass("MKLocalSearchRequest");
  qword_1EB59FFB8 = result;
  _MergedGlobals_172 = MKLocalSearchRequestFunction;
  return result;
}

Class initMKLocalSearch()
{
  if (qword_1EB59FFB0 != -1)
  {
    dispatch_once(&qword_1EB59FFB0, &__block_literal_global_260);
  }

  result = objc_getClass("MKLocalSearch");
  qword_1EB59FFC0 = result;
  off_1ED6D10B0 = MKLocalSearchFunction;
  return result;
}

uint64_t PKProtobufPaymentSetupFeatureReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___PKProtobufPaymentSetupFeature__type;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___PKProtobufPaymentSetupFeature__type;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 24) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___PKProtobufPaymentSetupFeature__state;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___PKProtobufPaymentSetupFeature__state;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKAccountRewardRedemptionTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  v2 = v1;
  if (v1 == @"applepaycash")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"applepaycash"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"statementcredit" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"statementcredit"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"savings" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"savings"], v9, v10))
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

__CFString *PKAccountRewardRedemptionTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D5700[a1 - 1];
  }
}

uint64_t PKAccountFundingSourceTypeFromStrings(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_18;
  }

  v3 = v2;
  v4 = 0;
  v5 = *v16;
  do
  {
    v6 = 0;
    do
    {
      if (*v16 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v7 = *(*(&v15 + 1) + 8 * v6);
      if (v7 == @"ACH")
      {
        goto LABEL_9;
      }

      v8 = v7;
      if (!v7)
      {
        goto LABEL_10;
      }

      v9 = [@"ACH" isEqualToString:v7];

      if (v9)
      {
LABEL_9:
        v4 |= 1uLL;
      }

      else
      {
        v10 = v8;
        if (v10 == @"APC" || (v11 = v10, v12 = [@"APC" isEqualToString:v10], v11, v12))
        {
          v4 |= 2uLL;
        }
      }

LABEL_10:
      ++v6;
    }

    while (v3 != v6);
    v13 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    v3 = v13;
  }

  while (v13);
LABEL_18:

  return v4;
}

id PKAccountFundingSourceTypeToStrings(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"ACH"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"APC"];
  }

  v4 = [v3 copy];

  return v4;
}

uint64_t PKAccountTransferTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"fundsIn")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"fundsIn"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"fundsOut" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"fundsOut"], v6, v7))
    {
      v4 = 3;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 2;
LABEL_9:

  return v4;
}

__CFString *PKAccountTransferTypeToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 3)
  {
    v1 = @"fundsOut";
  }

  if (a1 == 2)
  {
    return @"fundsIn";
  }

  else
  {
    return v1;
  }
}

uint64_t PKAccountTransferFrequencyFromStrings(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (v7 != @"now")
        {
          v8 = v7;
          if (!v7)
          {
            continue;
          }

          v9 = [@"now" isEqualToString:v7];

          if (!v9)
          {
            continue;
          }
        }

        v4 |= 2uLL;
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PKAccountTransferFrequencyToStrings(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 addObject:@"now"];
  }

  v4 = [v3 copy];

  return v4;
}

__CFString *PKAccountDeviceEventToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D5718[a1];
  }
}

uint64_t PKAccountAddBeneficiariesContactMethodFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"phone")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"phone"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"businessChat" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"businessChat"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"inApp" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"inApp"], v9, v10))
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

__CFString *PKAccountAddBeneficiariesContactMethodToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D5730[a1 - 1];
  }
}

void PDWakePassbookInBackground(void *a1)
{
  queue = a1;
  os_unfair_lock_lock(&_MergedGlobals_226);
  if (!qword_1ED6D1AE8)
  {
    v1 = PDOSTransactionCreate("PDUtilities.wake_passbook");
    v2 = qword_1ED6D1AE8;
    qword_1ED6D1AE8 = v1;
  }

  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue);
  v4 = qword_1ED6D1AF0;
  qword_1ED6D1AF0 = v3;

  v5 = qword_1ED6D1AF0;
  v6 = dispatch_time(0, 750000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
  dispatch_source_set_event_handler(qword_1ED6D1AF0, &__block_literal_global_109);
  dispatch_resume(qword_1ED6D1AF0);
  os_unfair_lock_unlock(&_MergedGlobals_226);
}

void __PDWakePassbookInBackground_block_invoke()
{
  v13[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_MergedGlobals_226);
  if (qword_1ED6D1AF0)
  {
    dispatch_source_cancel(qword_1ED6D1AF0);
    v0 = qword_1ED6D1AF0;
    qword_1ED6D1AF0 = 0;
  }

  v1 = qword_1ED6D1AE8;
  if (qword_1ED6D1AE8)
  {
    v2 = qword_1ED6D1AE8;
    v3 = qword_1ED6D1AE8;
    qword_1ED6D1AE8 = 0;
  }

  os_unfair_lock_unlock(&_MergedGlobals_226);
  if (+[PKWalletVisibility isWalletVisible])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = *MEMORY[0x1E699F818];
    v13[0] = MEMORY[0x1E695E0F8];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E699F8E0]];

    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PDWakePassbookInBackground: performing background fetch...", buf, 2u);
    }

    v7 = SBSCreateOpenApplicationService();
    v8 = [MEMORY[0x1E699FB70] optionsWithDictionary:v4];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __PDWakePassbookInBackground_block_invoke_36;
    v9[3] = &unk_1E79D5750;
    v10 = v1;
    [v7 openApplication:@"com.apple.Passbook" withOptions:v8 completion:v9];
  }
}

void __PDWakePassbookInBackground_block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PDWakePassbookInBackground: [FBSOpenApplicationService openApplication] returned error %@", &v7, 0xCu);
    }
  }
}

void PDWakePassbookUIServiceInBackground(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"shoebox-service://daemon-launch"];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v3 setObject:v2 forKeyedSubscript:*MEMORY[0x1E699F960]];
    v4 = MEMORY[0x1E695E118];
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E699F918]];
    [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E699F8E8]];
    v5 = SBSCreateOpenApplicationService();
    v6 = [MEMORY[0x1E699FB70] optionsWithDictionary:v3];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __PDWakePassbookUIServiceInBackground_block_invoke;
    v7[3] = &unk_1E79D5778;
    v8 = v1;
    [v5 openApplication:@"com.apple.PassbookUIService" withOptions:v6 completion:v7];
  }

  else if (v1)
  {
    (*(v1 + 2))(v1, 0, 0xFFFFFFFFLL);
  }
}

void __PDWakePassbookUIServiceInBackground_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PDWakePassbookUIServiceInBackground: [FBSOpenApplicationService openApplication] returned error %@", &v12, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = 0xFFFFFFFFLL;
    if (v5 && !v6)
    {
      v9 = [v5 pid];
      v8 = *(a1 + 32);
    }

    if (v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 < 0;
    }

    v11 = !v10;
    (*(v8 + 16))(v8, v11, v9);
  }
}

uint64_t PDOpenWalletUI(int a1, void *a2)
{
  v3 = a2;
  v4 = +[PKWalletVisibility isWalletVisible];
  v5 = v4 & (a1 ^ 1);
  v6 = @"prefs:root=PASSBOOK";
  if ((v4 & (a1 ^ 1)) != 0)
  {
    v6 = @"shoebox://";
  }

  v7 = v6;
  if ([v3 length])
  {
    v8 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
    v9 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v8];
    v10 = v9;
    if (v5)
    {
      [@"shoebox://" stringByAppendingFormat:@"%@/%@", @"card", v9];
    }

    else
    {
      [@"prefs:root=PASSBOOK" stringByAppendingFormat:@"&path=%@", v9, v15];
    }
    v7 = ;
  }

  v11 = [MEMORY[0x1E6963608] defaultWorkspace];
  v12 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  v13 = [v11 openSensitiveURL:v12 withOptions:0];

  return v13;
}

uint64_t PDOpenPaymentSetupUI(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((PKStoreDemoModeEnabled() & 1) != 0 || !PKSecureElementIsAvailable())
  {
    v5 = 0;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"payment_setup_select_product", v3];
    }

    else
    {
      if (a1 == 2)
      {
        v4 = PKURLActionPaymentSetupIDMSCardOnFile;
      }

      else
      {
        v4 = PKURLActionPaymentSetup;
      }

      v6 = *v4;
    }

    v7 = v6;
    if (+[PKWalletVisibility isWalletVisible])
    {
      v8 = @"shoebox://";
    }

    else
    {
      v8 = @"prefs:root=PASSBOOK&path=";
    }

    v9 = [(__CFString *)v8 stringByAppendingString:v7];
    v10 = [MEMORY[0x1E6963608] defaultWorkspace];
    v11 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    v5 = [v10 openSensitiveURL:v11 withOptions:0];
  }

  return v5;
}

void PDEnableAutomaticInternalLogging()
{
  has_internal_ui = os_variant_has_internal_ui();
  if (has_internal_ui)
  {
    has_internal_ui = 1;
    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  PKSetDiagnosticsEnabled(has_internal_ui, v1);
}

id PDGenerateRandomDeviceIdentifier()
{
  v4 = *MEMORY[0x1E69E9840];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, bytes))
  {
    v0 = 0;
  }

  else
  {
    v1 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:bytes length:16];
    v0 = [v1 hexEncoding];
  }

  return v0;
}

id PDLocalizedAppNameForPID(uint64_t a1)
{
  v1 = a1;
  v2 = PKBundleIdentifierForPID(a1);
  v3 = PDLocalizedAppNameForBundleIDOrPID(v2, v1);

  return v3;
}

id PDLocalizedAppNameForBundleIDOrPID(void *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:0], objc_msgSend(v4, "localizedName"), v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 138412546;
      *&v13[4] = v5;
      v14 = 1024;
      v15 = a2;
      v7 = "Springboard yielded localized app name '%@' for pid %d";
LABEL_14:
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, v7, v13, 0x12u);
    }
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    *v13 = 648;
    dword_1EB597F2C = a2;
    byte_1EB59FDAB = 0;
    v9 = sysctl(getprocname_name, 4u, &getprocname_kp, v13, 0, 0);
    if (byte_1EB59FDAB)
    {
      v10 = &byte_1EB59FDAB;
    }

    else
    {
      v10 = "exited?";
    }

    if (v9)
    {
      v11 = "?";
    }

    else
    {
      v11 = v10;
    }

    v5 = [v8 stringWithUTF8String:v11];
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 138412546;
      *&v13[4] = v5;
      v14 = 1024;
      v15 = a2;
      v7 = "getprocname yielded localized app name '%@' for pid %d";
      goto LABEL_14;
    }
  }

LABEL_16:

  return v5;
}

long double _PDGetDestinationCoordinate(double a1, double a2, double a3, double a4)
{
  v4 = a3 * 0.0174532925;
  v5 = a4 / 6378137.0;
  v6 = __sincos_stret(a1 * 0.0174532925);
  v7 = __sincos_stret(v5);
  v8 = __sincos_stret(v4);
  v9 = asin(v8.__cosval * (v6.__cosval * v7.__sinval) + v6.__sinval * v7.__cosval);
  v10 = sin(v9);
  atan2(v6.__cosval * (v8.__sinval * v7.__sinval), v7.__cosval - v6.__sinval * v10);
  return v9 / 0.0174532925;
}

double PDBoundingBoxForRegion(void *a1)
{
  v1 = a1;
  [v1 center];
  v3 = v2;
  v5 = v4;
  [v1 radius];
  v7 = v6;

  v8 = vabdd_f64(_PDGetDestinationCoordinate(v3, v5, 0.0, v7), v3);
  _PDGetDestinationCoordinate(v3, v5, 90.0, v7);
  return v3 - v8;
}

uint64_t PDXPCDictionaryUpdateWithDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (v3 && v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __PDXPCDictionaryUpdateWithDictionary_block_invoke;
    v8[3] = &unk_1E79D57A0;
    v9 = v3;
    v10 = &v11;
    xpc_dictionary_apply(v5, v8);

    v6 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

void sub_1AD7DFF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PDXPCDictionaryUpdateWithDictionary_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(*(a1 + 32), a2);
  v7 = v6;
  if (!v6 || !xpc_equal(v6, v5))
  {
    xpc_dictionary_set_value(*(a1 + 32), a2, v5);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return 1;
}

uint64_t _PostalAddressForSQLValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 dataUsingEncoding:4];
    if (v3)
    {
      v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:0];
      if (v4)
      {
        v5 = [MEMORY[0x1E695CF60] postalAddressWithDictionaryRepresentation:v4];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  return v5;
}

void *_UUIDForSQLValue(void *result)
{
  if (result)
  {
    v1 = MEMORY[0x1E696AFB0];
    v2 = result;
    v3 = [[v1 alloc] initWithUUIDString:v2];

    return v3;
  }

  return result;
}

uint64_t _HardwareVersionRangeForSQLValue(void *a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ACD0];
  v2 = MEMORY[0x1E695DFD8];
  v3 = a1;
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [v2 setWithArray:v4];
  v6 = [v1 unarchivedObjectOfClasses:v5 fromData:v3 error:0];

  return v6;
}

uint64_t _SQLValueForURL(void *a1)
{
  if (a1)
  {
    [a1 absoluteString];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }

  return objc_claimAutoreleasedReturnValue();
}

uint64_t _SQLValueForColor(void *a1)
{
  if (a1)
  {
    [a1 string];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }

  return objc_claimAutoreleasedReturnValue();
}

id _SQLValueForString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;

  return v4;
}

uint64_t _SQLValueForEntity(void *a1)
{
  if (a1)
  {
    [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1, "persistentID")}];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }

  return objc_claimAutoreleasedReturnValue();
}

uint64_t _SQLValueForPostalAddress(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v3 = [v1 dictionaryRepresentation];
  if (!v3)
  {
LABEL_7:
    v4 = 0;
LABEL_8:
    v5 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_9;
  }

  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:0];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

uint64_t _SQLValueForUUID(void *a1)
{
  if (a1)
  {
    [a1 UUIDString];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }

  return objc_claimAutoreleasedReturnValue();
}

uint64_t _SQLValueForOSVersionRequirementRange(void *a1)
{
  v1 = a1;
  if (!v1 || ([MEMORY[0x1E696ACC8] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:0], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = [MEMORY[0x1E695DFB0] null];
  }

  return v2;
}

uint64_t _SQLValueForHardwareVersionRange(void *a1)
{
  v1 = a1;
  if (!v1 || ([MEMORY[0x1E696ACC8] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:0], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = [MEMORY[0x1E695DFB0] null];
  }

  return v2;
}

id PDBasicError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = MEMORY[0x1E696ABC0];
  v16 = *MEMORY[0x1E696A578];
  v17[0] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14 = [v12 errorWithDomain:@"PDBasicErrorDomain" code:0 userInfo:v13];

  return v14;
}

id PDTypecheckObjectForKey(void *a1, void *a2, void *a3, uint64_t a4, char a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v19 = [a1 objectForKey:v11];
  if (v19)
  {
    if (objc_opt_isKindOfClass())
    {
      if (a6)
      {
        v20 = v19;
        v21 = 0;
        *a6 = v19;
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    objc_opt_class();
    PDBasicError(@"Wrong type object for key %@ in %@ dictionary. Expected %@ but found %@.", v22, v23, v24, v25, v26, v27, v28, v11);
  }

  else
  {
    if (a5)
    {
LABEL_6:
      v21 = 0;
      goto LABEL_10;
    }

    PDBasicError(@"The %@ dictionary is missing required key: %@", v12, v13, v14, v15, v16, v17, v18, v10);
  }
  v21 = ;
LABEL_10:

  return v21;
}

char *PDTypecheckArrayOfObjectsForKey(void *a1, void *a2, void *a3, uint64_t a4, char a5, void *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = objc_opt_class();
  v34 = 0;
  v14 = PDTypecheckObjectForKey(v10, v11, v12, v13, a5, &v34);
  v15 = v34;
  v16 = v15;
  if (!v14)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = v15;
    v14 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v14)
    {
      v29 = a6;
      v18 = *v31;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v17);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            v14 = PDBasicError(@"Array for key %@ in %@ dictionary must contain objects of type %@. Found object of type %@.", v20, v21, v22, v23, v24, v25, v26, v12);
            goto LABEL_12;
          }
        }

        v14 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

LABEL_12:
      a6 = v29;
    }

    if (a6 && !v14)
    {
      v27 = v17;
      *a6 = v17;
    }
  }

  return v14;
}

id PKPaymentApplicationSubcredentialEffectiveReaderIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 _readerIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 _readerIdentifier];
  }

  v7 = v6;

  return v7;
}

uint64_t PKPassRelevancySystemPresentmentStateFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"active"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"inactive"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"dismissed"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPassRelevancySystemPresentmentStateToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D5830[a1 - 1];
  }
}

uint64_t PKLiveActivityAttributesTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"boardingPass"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"eventTicket"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKLiveActivityAttributesTypeToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"boardingPass";
  }

  if (a1 == 2)
  {
    return @"eventTicket";
  }

  else
  {
    return v1;
  }
}

void PKSetBalanceLocalizedStringIfNeeded(void *a1, void *a2)
{
  v10 = a1;
  v3 = a2;
  v4 = [v10 localizedTitle];
  v5 = v4;
  if (!v4 || (v6 = [v4 length], v5, !v6))
  {
    v7 = v3;
    if (v7)
    {
      v8 = v7;
      v9 = [v7 length];

      if (v9)
      {
        [v10 setLocalizedTitle:v8];
      }
    }
  }
}

uint64_t PKProtobufPaymentInstrumentThumbnailRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 40) |= 2u;
          v27 = 0;
          v20 = [a2 position] + 8;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v27;
          v24 = 16;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_26:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_38;
          }

          *(a1 + 40) |= 1u;
          v27 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v23 = v27;
          v24 = 8;
        }

        *(a1 + v24) = v23;
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_26;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v19 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKAccountVirtualCardStateFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([@"active" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"cancelled" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"blocked" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"disabled" isEqualToString:v1])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKAccountVirtualCardStateToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"active";
  }

  else
  {
    return off_1E79D58C8[a1];
  }
}

uint64_t PKAccountVirtualCardTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([@"primary" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"vpan" isEqualToString:v1])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKAccountVirtualCardTypeToString(uint64_t a1)
{
  v1 = @"primary";
  if (!a1)
  {
    v1 = @"unknown";
  }

  if (a1 == 2)
  {
    return @"vpan";
  }

  else
  {
    return v1;
  }
}

id PKIDSNormalizedAddress(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 lowercaseString];

    if (([v3 hasPrefix:@"mailto:"] & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"tel:"))
    {
      v2 = v3;
      v3 = v2;
    }

    else if ([v3 containsString:@"@"])
    {
      v2 = _IDSCopyIDForEmailAddress();
    }

    else
    {
      v5 = PKBestGuessNormalizedPhoneNumber(v3);
      v2 = IDSCopyIDForPhoneNumber();
    }
  }

  else
  {
    v3 = 0;
  }

  return v2;
}

id PKIDSSanitizedAddress(void *a1)
{
  v1 = a1;
  v2 = @"mailto:";
  if (([v1 hasPrefix:@"mailto:"] & 1) != 0 || (v2 = @"tel:", objc_msgSend(v1, "hasPrefix:", @"tel:")))
  {
    v3 = [v1 substringFromIndex:{-[__CFString length](v2, "length")}];

    v1 = v3;
  }

  return v1;
}

uint64_t PKiMessageIsActive()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69A4830]);
  v1 = [v0 initWithService:*MEMORY[0x1E69A4818]];
  [v1 accounts];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v14 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isActive])
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = v3;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "iMessage Active: %i", buf, 8u);
  }

  return v3;
}

uint64_t PKIDSServiceContainsHandle(void *a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if ([v6 isEqualToString:a3])
  {
    v7 = 1;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:v5];
    if (v8)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v29 = v8;
      v9 = [v8 accounts];
      v25 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v25)
      {
        v10 = *v36;
        v27 = v9;
        v28 = v5;
        v24 = *v36;
        do
        {
          v11 = 0;
          do
          {
            if (*v36 != v10)
            {
              objc_enumerationMutation(v9);
            }

            v26 = v11;
            v12 = *(*(&v35 + 1) + 8 * v11);
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            obj = [v12 handles];
            v13 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v32;
              while (2)
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v32 != v15)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v17 = [*(*(&v31 + 1) + 8 * i) URI];
                  v18 = [v17 unprefixedURI];
                  v19 = [v18 lowercaseString];
                  v20 = [v6 _stripFZIDPrefix];
                  v21 = [v20 lowercaseString];
                  v22 = [v19 isEqualToString:v21];

                  if (v22)
                  {

                    v7 = 1;
                    v9 = v27;
                    v5 = v28;
                    goto LABEL_23;
                  }
                }

                v14 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            v11 = v26 + 1;
            v9 = v27;
            v5 = v28;
            v10 = v24;
          }

          while (v26 + 1 != v25);
          v7 = 0;
          v25 = [v27 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v25);
      }

      else
      {
        v7 = 0;
      }

LABEL_23:

      v8 = v29;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void sub_1AD7EF9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKApplicationMessageRegistrationComparison(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 badge];
  if (v8 == [v6 badge])
  {
    if (v5)
    {
      v10 = v5[3];
      if (v6)
      {
LABEL_7:
        v11 = v6[3];
        goto LABEL_8;
      }
    }

    else
    {
      v10 = 0;
      if (v6)
      {
        goto LABEL_7;
      }
    }

    v11 = 0;
LABEL_8:
    if (v10)
    {
      [v10 timeIntervalSinceDate:v7];
      v13 = v12 <= *"";
      if (v11)
      {
LABEL_10:
        [v11 timeIntervalSinceDate:v7];
        v15 = v14 <= *"";
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 1;
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v15 = 1;
LABEL_13:
    if (v15 != v13)
    {
      if (v13)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      goto LABEL_22;
    }

    if (v5)
    {
      v16 = v5[4];
      if (v6)
      {
LABEL_16:
        v17 = v6[4];
        goto LABEL_17;
      }
    }

    else
    {
      v16 = 0;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    v17 = 0;
LABEL_17:
    if (v16 > v17)
    {
      v9 = -1;
LABEL_22:

      goto LABEL_23;
    }

    if (v16 < v17)
    {
      v9 = 1;
      goto LABEL_22;
    }

    if (v10)
    {
      if (v11)
      {
        v9 = [v11 compare:v10];
        if (v9)
        {
          goto LABEL_22;
        }
      }
    }

    if (v5)
    {
      v19 = v5[2];
      if (v6)
      {
LABEL_31:
        v20 = v6[2];
        v21 = v20;
        v22 = v20 != 0;
        if (v19 && v20)
        {
          v23 = *(v19 + 1);
          v24 = v20[1];
          if (v23 >= v24)
          {
            if (v23 > v24)
            {
              goto LABEL_44;
            }

            v25 = *(v19 + 2);
            v26 = v21[2];
            v27 = v26;
            if (v25 && v26)
            {
              v9 = [v25 compare:v26];
LABEL_41:

LABEL_56:
              goto LABEL_22;
            }

            if (v25 && !v26)
            {
              v9 = -1;
              goto LABEL_41;
            }

            if (!v25)
            {
              if (v27)
              {
LABEL_44:
                v9 = 1;
                goto LABEL_56;
              }
            }

LABEL_55:
            v9 = 0;
            goto LABEL_56;
          }

          goto LABEL_53;
        }

LABEL_51:
        if (!v19 || v22)
        {
          if (v19 == 0 && v22)
          {
            goto LABEL_44;
          }

          goto LABEL_55;
        }

LABEL_53:
        v9 = -1;
        goto LABEL_56;
      }
    }

    else
    {
      v19 = 0;
      if (v6)
      {
        goto LABEL_31;
      }
    }

    v22 = 0;
    v21 = 0;
    goto LABEL_51;
  }

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

LABEL_23:

  return v9;
}

void sub_1AD7F2190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD7F25C0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1AD7F2D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD7F4110(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t PKProtobufAutomaticReloadPaymentRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v16 = objc_alloc_init(PKProtobufPaymentSummaryItem);
          objc_storeStrong((a1 + 8), v16);
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !PKProtobufPaymentSummaryItemReadFrom(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_30;
          case 4:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_30;
          case 5:
            v14 = PBReaderReadString();
            v15 = 40;
LABEL_30:
            v16 = *(a1 + v15);
            *(a1 + v15) = v14;
LABEL_31:

            goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

PKPaymentTransactionRequest *TransactionRequestForCategoryPurchaseSummary(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = objc_alloc_init(PKPaymentTransactionRequest);
  v12 = [v10 transactionSourceIdentifiers];

  [(PKPaymentTransactionRequest *)v11 setTransactionSourceIdentifiers:v12];
  [(PKPaymentTransactionRequest *)v11 setStartDate:v8];

  [(PKPaymentTransactionRequest *)v11 setEndDate:v7];
  [(PKPaymentTransactionRequest *)v11 setTransactionTypes:&unk_1F23B3F98];
  [(PKPaymentTransactionRequest *)v11 setTransactionStatuses:&unk_1F23B3FB0];
  [(PKPaymentTransactionRequest *)v11 setCurrencyCode:v9];

  return v11;
}

void sub_1AD7F66AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD7F82A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD7F89BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t TransactionIsValidForSummary(void *a1)
{
  v1 = a1;
  v2 = [v1 transactionType];
  if (v2 > 0xD)
  {
    goto LABEL_7;
  }

  if (((1 << v2) & 0x2482) == 0)
  {
    if (!v2)
    {
      v4 = [v1 transactionStatus];
      if (v4 < 9)
      {
        v3 = 0x103u >> v4;
        goto LABEL_8;
      }
    }

LABEL_7:
    LOBYTE(v3) = 0;
    goto LABEL_8;
  }

  LOBYTE(v3) = 1;
LABEL_8:

  return v3 & 1;
}

uint64_t PKProtobufPaymentMethodReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_37;
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

LABEL_37:
        *(a1 + 24) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 8;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKPassAuxiliaryCapabilityKeyAttestationTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_8;
  }

  v3 = v1;
  if (v3 != @"BAA")
  {
    v4 = v3;
    v5 = [(__CFString *)v3 isEqualToString:@"BAA"];

    if ((v5 & 1) == 0)
    {
      v7 = v4;
      if (v7 == @"CASD" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"CASD"], v8, v9))
      {
        v6 = 2;
        goto LABEL_9;
      }

LABEL_8:
      v6 = 0;
      goto LABEL_9;
    }
  }

  v6 = 1;
LABEL_9:

  return v6;
}

unint64_t PKPassAuxiliaryCapabilityKeyAttestationTypeToString(unint64_t result)
{
  if (result < 3)
  {
    return qword_1E79D61D0[result];
  }

  __break(1u);
  return result;
}

uint64_t PKPeerPaymentAccountStateFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"active"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"restricted"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"locked"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"closed"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentAccountStateToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D6280[a1 - 1];
  }
}

uint64_t PKPeerPaymentAccountStageFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"anonymous"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"identified"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"personalized"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentAccountStageToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D62A0[a1 - 1];
  }
}

uint64_t PKPeerPaymentAccountRoleFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"owner"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"participant"];
  }

  return v2;
}

__CFString *PKPeerPaymentAccountRoleToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"participant";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"owner";
  }
}

uint64_t PKPeerPaymentAccountStateReasonFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"issuingbank"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"associatedaccount"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"securitydowngrade"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"embargorecovery"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"inreview"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"terminal"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"nomoidentityinuse"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"nomodormant"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"billingaddress"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentAccountStateReasonToString(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D6238[a1];
  }
}

__CFString *PKPeerPaymentAccountSendRestrictionTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D62B8[a1];
  }
}

uint64_t PKPeerPaymentAccountSendRestrictionTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"family"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"contacts"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentAccountReceiveRestrictionTypeToString(uint64_t a1)
{
  v1 = @"unknown";
  if (!a1)
  {
    v1 = @"none";
  }

  if (a1 == 1)
  {
    return @"family";
  }

  else
  {
    return v1;
  }
}

uint64_t PKPeerPaymentAccountReceiveRestrictionTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"family"])
  {
    v2 = 1;
  }

  else
  {
    [v1 isEqualToString:@"none"];
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentAccountDeviceScoreEncryptedPayloadVersionToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79D62D0[a1];
  }
}

uint64_t PKPeerPaymentAccountDeviceScoreEncryptedPayloadVersionFromInt(uint64_t a1)
{
  v1 = 1;
  if (a1 != 1)
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void sub_1AD8036F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD803968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD803B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PKDeviceRegistrationResultToString(unint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a1)
  {
    v3 = 1;
    v4 = 1;
    do
    {
      if ((v4 & a1) != 0)
      {
        if (v4 <= 7)
        {
          switch(v4)
          {
            case 1:
              v5 = @"GenericFailure";
              goto LABEL_20;
            case 2:
              v5 = @"PreconditionsFailed";
              goto LABEL_20;
            case 4:
              v5 = @"BrokerFailed";
              goto LABEL_20;
          }
        }

        else if (v4 > 31)
        {
          if (v4 == 32)
          {
            v5 = @"PeerPaymentSucceeded";
            goto LABEL_20;
          }

          if (v4 == 64)
          {
            v5 = @"PeerPaymentDoNotRetry";
            goto LABEL_20;
          }
        }

        else
        {
          if (v4 == 8)
          {
            v5 = @"PeerPaymentFailed";
            goto LABEL_20;
          }

          if (v4 == 16)
          {
            v5 = @"BrokerSucceeded";
LABEL_20:
            [v2 addObject:v5];
          }
        }
      }

      v4 = 1 << v3++;
    }

    while (v4 <= a1);
  }

  v6 = [v2 description];

  return v6;
}

CGImageRef PKCreateApplePayButtonImageWithCornerRadius(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a3;
  v14 = PKColorSpaceStandardRGB();
  v15 = a4 * a6;
  v16 = a5 * a6;
  v17 = round(a4 * a6);
  v18 = round(v16);
  v19 = CGBitmapContextCreate(0, vcvtad_u64_f64(v15), vcvtad_u64_f64(v16), 8uLL, 0, v14, 1u);
  CGContextTranslateCTM(v19, 0.0, v18);
  CGContextScaleCTM(v19, 1.0, -1.0);
  PKDrawApplePayButtonLargeWithCornerRadius(v19, a1, a2, v13, 0.0, 0.0, v17, v18, a6, a7);

  Image = CGBitmapContextCreateImage(v19);
  CGContextRelease(v19);
  return Image;
}

CGImageRef PKCreateApplePayButtonImageWithCSSValue(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a3;
  v14 = a2;
  v15 = _PKPaymentButtonTypeFromCSSValue(a1);
  v16 = _PKPaymentButtonStyleFromCSSValue(v14);

  v17 = PKCreateApplePayButtonImageWithCornerRadius(v15, v16, v13, a4, a5, a6, a7);
  return v17;
}

uint64_t _PKPaymentButtonTypeFromCSSValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ![(__CFString *)v1 length])
  {
    goto LABEL_6;
  }

  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [(__CFString *)v2 stringByTrimmingCharactersInSet:v3];

  v5 = [v4 lowercaseString];

  v6 = v5;
  v7 = @"plain";
  if (v6 == @"plain")
  {
    goto LABEL_37;
  }

  v2 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  v8 = [@"plain" isEqualToString:v6];

  if (v8)
  {
    goto LABEL_6;
  }

  v11 = v2;
  v7 = @"buy";
  if (v11 == @"buy")
  {
    v9 = 1;
    goto LABEL_38;
  }

  v2 = v11;
  v12 = [@"buy" isEqualToString:v11];

  if (v12)
  {
    v9 = 1;
    goto LABEL_7;
  }

  v13 = v2;
  v7 = @"set-up";
  if (v13 == @"set-up")
  {
    v9 = 2;
    goto LABEL_38;
  }

  v2 = v13;
  v14 = [@"set-up" isEqualToString:v13];

  if (v14)
  {
    v9 = 2;
    goto LABEL_7;
  }

  v15 = v2;
  v7 = @"donate";
  if (v15 == @"donate")
  {
    v9 = 4;
    goto LABEL_38;
  }

  v2 = v15;
  v16 = [@"donate" isEqualToString:v15];

  if (v16)
  {
    v9 = 4;
    goto LABEL_7;
  }

  v17 = v2;
  v7 = @"check-out";
  if (v17 == @"check-out")
  {
    v9 = 5;
    goto LABEL_38;
  }

  v2 = v17;
  v18 = [@"check-out" isEqualToString:v17];

  if (v18)
  {
    v9 = 5;
    goto LABEL_7;
  }

  v19 = v2;
  v7 = @"book";
  if (v19 == @"book")
  {
    v9 = 6;
    goto LABEL_38;
  }

  v2 = v19;
  v20 = [@"book" isEqualToString:v19];

  if (v20)
  {
    v9 = 6;
    goto LABEL_7;
  }

  v21 = v2;
  v7 = @"subscribe";
  if (v21 == @"subscribe")
  {
    v9 = 7;
    goto LABEL_38;
  }

  v2 = v21;
  v22 = [@"subscribe" isEqualToString:v21];

  if (v22)
  {
    v9 = 7;
    goto LABEL_7;
  }

  v23 = v2;
  v7 = @"in-store";
  if (v23 == @"in-store")
  {
LABEL_37:
    v9 = 0;
    goto LABEL_38;
  }

  v2 = v23;
  v24 = [@"in-store" isEqualToString:v23];

  if ((v24 & 1) == 0)
  {
    v25 = v2;
    v7 = @"reload";
    if (v25 == @"reload")
    {
      v9 = 8;
    }

    else
    {
      v2 = v25;
      v26 = [@"reload" isEqualToString:v25];

      if (v26)
      {
        v9 = 8;
        goto LABEL_7;
      }

      v27 = v2;
      v7 = @"add-money";
      if (v27 == @"add-money")
      {
        v9 = 9;
      }

      else
      {
        v2 = v27;
        v28 = [@"add-money" isEqualToString:v27];

        if (v28)
        {
          v9 = 9;
          goto LABEL_7;
        }

        v29 = v2;
        v7 = @"top-up";
        if (v29 == @"top-up")
        {
          v9 = 10;
        }

        else
        {
          v2 = v29;
          v30 = [@"top-up" isEqualToString:v29];

          if (v30)
          {
            v9 = 10;
            goto LABEL_7;
          }

          v31 = v2;
          v7 = @"order";
          if (v31 == @"order")
          {
            v9 = 11;
          }

          else
          {
            v2 = v31;
            v32 = [@"order" isEqualToString:v31];

            if (v32)
            {
              v9 = 11;
              goto LABEL_7;
            }

            v33 = v2;
            v7 = @"rent";
            if (v33 == @"rent")
            {
              v9 = 12;
            }

            else
            {
              v2 = v33;
              v34 = [@"rent" isEqualToString:v33];

              if (v34)
              {
                v9 = 12;
                goto LABEL_7;
              }

              v35 = v2;
              v7 = @"support";
              if (v35 == @"support")
              {
                v9 = 13;
              }

              else
              {
                v2 = v35;
                v36 = [@"support" isEqualToString:v35];

                if (v36)
                {
                  v9 = 13;
                  goto LABEL_7;
                }

                v37 = v2;
                v7 = @"contribute";
                if (v37 == @"contribute")
                {
                  v9 = 14;
                }

                else
                {
                  v2 = v37;
                  v38 = [@"contribute" isEqualToString:v37];

                  if (v38)
                  {
                    v9 = 14;
                    goto LABEL_7;
                  }

                  v39 = v2;
                  v7 = @"tip";
                  if (v39 != @"tip")
                  {
                    v2 = v39;
                    v40 = [@"tip" isEqualToString:v39];

                    if (v40)
                    {
                      v9 = 15;
                      goto LABEL_7;
                    }

                    v2 = v2;
                    if (v2 == @"continue" || (v41 = [@"continue" isEqualToString:v2], v2, v41))
                    {
                      v9 = 16;
                      goto LABEL_7;
                    }

                    goto LABEL_6;
                  }

                  v9 = 15;
                }
              }
            }
          }
        }
      }
    }

LABEL_38:
    v2 = v7;
    goto LABEL_7;
  }

LABEL_6:
  v9 = 0;
LABEL_7:

  return v9;
}

uint64_t _PKPaymentButtonStyleFromCSSValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ![(__CFString *)v1 length])
  {
    goto LABEL_18;
  }

  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [(__CFString *)v2 stringByTrimmingCharactersInSet:v3];

  v5 = [v4 lowercaseString];

  v6 = v5;
  v7 = @"white";
  if (v6 == @"white")
  {
    v9 = 0;
    goto LABEL_8;
  }

  v2 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  v8 = [@"white" isEqualToString:v6];

  if ((v8 & 1) == 0)
  {
    v10 = v2;
    v7 = @"white-outline";
    if (v10 == @"white-outline")
    {
      v9 = 1;
    }

    else
    {
      v2 = v10;
      v11 = [@"white-outline" isEqualToString:v10];

      if (v11)
      {
        v9 = 1;
        goto LABEL_19;
      }

      v12 = v2;
      v7 = @"black";
      if (v12 != @"black")
      {
        v2 = v12;
        v13 = [@"black" isEqualToString:v12];

        if ((v13 & 1) == 0)
        {
          v2 = v2;
          if (v2 == @"automatic" || (v14 = [@"automatic" isEqualToString:v2], v2, v14))
          {
            v9 = 3;
            goto LABEL_19;
          }
        }

LABEL_18:
        v9 = 2;
        goto LABEL_19;
      }

      v9 = 2;
    }

LABEL_8:
    v2 = v7;
    goto LABEL_19;
  }

  v9 = 0;
LABEL_19:

  return v9;
}

void PKDrawApplePayButtonLargeWithCornerRadius(CGContext *a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v80[1] = *MEMORY[0x1E69E9840];
  v19 = a4;
  c = a1;
  v79 = a3;
  v76 = a5;
  v77 = a6;
  _DrawBorder(a1, a3, a5, a6, a7, a8, a9, a10);
  if ((a2 - 1) > 0xF)
  {
    v20 = 0;
  }

  else
  {
    v20 = off_1E79D6310[a2 - 1];
  }

  if (v19)
  {
    v21 = MEMORY[0x1E696AAE8];
    v22 = PKPassKitBundle();
    v23 = [v22 localizations];
    v24 = v19;
    v80[0] = v19;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
    v26 = [v21 preferredLocalizationsFromArray:v23 forPreferences:v25];
    v27 = [v26 firstObject];

    if (v27)
    {
      v28 = PKPassKitBundle();
      [v28 _cfBundle];
      v29 = CFBundleCopyLocalizedStringForLocalization();

      v30 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v27];
      v31 = [v30 languageCode];

      v32 = v31;
      v19 = v24;
      if (v29)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v31 = 0;
      v19 = v24;
    }
  }

  else
  {
    v31 = 0;
  }

  v29 = PKLocalizedPaymentString(&v20->isa, 0);
  v33 = [MEMORY[0x1E695DF58] pk_preferredLocale];
  v32 = [v33 languageCode];

LABEL_11:
  v34 = [v29 containsString:@"%[tt]@"];
  v35 = @"%@";
  if (v34)
  {
    v35 = @"%[tt]@";
  }

  v36 = v35;
  v37 = [v29 rangeOfString:v36];
  v75 = v32;
  v38 = [MEMORY[0x1E695DF58] characterDirectionForLanguage:v32];
  if (v38 == 2)
  {
    v39 = [v29 length] - 2;
  }

  else
  {
    v39 = 0;
  }

  v40 = [v29 componentsSeparatedByString:v36];
  if ([v40 count] == 2)
  {
    v41 = [v40 objectAtIndex:v38 == 2];
    v42 = [v40 objectAtIndex:v38 != 2];
  }

  else
  {
    v43 = [v40 firstObject];
    if (v37 == v39)
    {
      v42 = v43;
    }

    else
    {
      v42 = &stru_1F227FD28;
    }

    if (v37 == v39)
    {
      v41 = &stru_1F227FD28;
    }

    else
    {
      v41 = v43;
    }
  }

  v44 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  if ([(__CFString *)v42 length])
  {
    v45 = [(__CFString *)v42 stringByTrimmingCharactersInSet:v44];

    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\u200E %@", v45];
  }

  if ([(__CFString *)v41 length])
  {
    v46 = [(__CFString *)v41 stringByTrimmingCharactersInSet:v44];

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\u200E ", v46];
  }

  v47 = a7 + a7 * -0.16;
  v48 = a8 * 0.51;
  v49 = 292.0;
  v50 = a8 * 0.51 / 120.0;
  if (fmin(v47 / 292.0, v50) == 1.0)
  {
    v48 = 120.0;
  }

  else if (v47 / 292.0 >= v50)
  {
    v49 = v48 * 2.43333333;
  }

  else
  {
    v48 = v47 * 0.410958904;
    v49 = a7 + a7 * -0.16;
  }

  v51 = round(v49);
  v52 = round(v48);
  v53 = [(__CFString *)v41 stringByAppendingString:v42];
  if ([(__CFString *)v53 length])
  {
    v54 = PKRectRoundToPixelWithScale(0.0, 0.0, v47 - v51, v52 * 1.1, 1.0);
    v58 = _MaximumFontSizeForStringInRect(v53, v54, v55, v56, v57, a9);
    if (!a2)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v58 = 0.0;
    if (!a2)
    {
LABEL_41:
      v52 = a8 * 0.5;
      v51 = a8 * 0.5 / 0.410022779;
      v64 = round(v76 + (a7 - v51) * 0.5);
      v65 = round(v77 + (a8 - a8 * 0.5) * 0.5);
      goto LABEL_65;
    }
  }

  if (v52 < a8 / 2.5 || v58 == 0.0)
  {
    goto LABEL_41;
  }

  v60 = *MEMORY[0x1E695F060];
  v59 = *(MEMORY[0x1E695F060] + 8);
  if ([(__CFString *)v42 length])
  {
    AttributedStringWithFontSize = _CreateAttributedStringWithFontSize(v42, v79, v58);
    v62 = CTLineCreateWithAttributedString(AttributedStringWithFontSize);
    BoundsWithOptions = CTLineGetBoundsWithOptions(v62, 0);
    width = BoundsWithOptions.size.width;
    height = BoundsWithOptions.size.height;
    CFRelease(AttributedStringWithFontSize);
  }

  else
  {
    v62 = 0;
    width = v60;
    height = v59;
  }

  v74 = v19;
  if ([(__CFString *)v41 length])
  {
    v66 = _CreateAttributedStringWithFontSize(v41, v79, v58);
    v67 = CTLineCreateWithAttributedString(v66);
    v82 = CTLineGetBoundsWithOptions(v67, 0);
    v60 = v82.size.width;
    v59 = v82.size.height;
    CFRelease(v66);
  }

  else
  {
    v67 = 0;
  }

  if (height <= v59)
  {
    v68 = v59;
  }

  else
  {
    v68 = height;
  }

  if (v52 * 0.94 > v68)
  {
    v69 = v68 / 0.94;
    v70 = v51 / v51;
    if (v51 == 0.0)
    {
      v70 = 1.0;
    }

    v71 = v69 / v52;
    if (v52 == 0.0)
    {
      v71 = 1.0;
    }

    if (fmin(v70, v71) == 1.0)
    {
      v69 = v52;
    }

    else if (v70 >= v71)
    {
      v51 = v51 / v52 * v69;
    }

    else
    {
      v69 = v51 * (v52 / v51);
    }

    v51 = round(v51);
    v52 = round(v69);
  }

  v72 = round(v76 + (a7 - (width + v60 + v51)) * 0.5);
  v65 = round(v77 + (a8 - v52) * 0.5);
  if (v67)
  {
    CGContextSetTextPosition(c, v72, round(v65 + v52 * 0.2));
    CTLineDraw(v67, c);
    CFRelease(v67);
  }

  v64 = v60 + v72;
  if (v62)
  {
    CGContextSetTextPosition(c, v51 + v64, round(v65 + v52 * 0.2));
    CTLineDraw(v62, c);
    CFRelease(v62);
  }

  v19 = v74;
LABEL_65:
  _DrawLogoPDFIntoContext(v79, c, v64, v65, v51, v52);
}

void _DrawBorder(CGContext *a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v12 = round(a7 * 0.5);
  v24.origin.x = PKRectRoundToPixelWithScale(a3, a4, a5, a6, 1.0);
  v25 = CGRectInset(v24, v12 * 0.5, v12 * 0.5);
  v13 = [PKRoundedPath pathWithRoundedRect:v25.origin.x cornerRadius:v25.origin.y, v25.size.width, v25.size.height, a7 * a8];
  v14 = [v13 CGPath];

  CGContextBeginPath(a1);
  CGContextAddPath(a1, v14);
  CGContextClosePath(a1);
  if (a2 <= 1)
  {
    if (!a2)
    {
      CGContextSetRGBFillColor(a1, 1.0, 1.0, 1.0, 1.0);
      v20 = 1.0;
      v21 = 1.0;
      v22 = 1.0;
LABEL_11:
      v18 = 1.0;
      v19 = a1;
      goto LABEL_12;
    }

    if (a2 != 1)
    {
      goto LABEL_13;
    }

    v15 = 1.0;
    v16 = 1.0;
    v17 = 1.0;
LABEL_10:
    CGContextSetRGBFillColor(a1, v15, v16, v17, 1.0);
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_10;
  }

  if (a2 != 100)
  {
    goto LABEL_13;
  }

  CGContextSetRGBFillColor(a1, 0.133333333, 0.133333333, 0.141176471, 1.0);
  v18 = 1.0;
  v19 = a1;
  v20 = 0.133333333;
  v21 = 0.133333333;
  v22 = 0.141176471;
LABEL_12:
  CGContextSetRGBStrokeColor(v19, v20, v21, v22, v18);
LABEL_13:
  CGContextSetLineWidth(a1, v12);

  CGContextDrawPath(a1, kCGPathFillStroke);
}

double _MaximumFontSizeForStringInRect(const __CFString *a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = a6 * 10.0;
  v10 = a6 * 10.0;
  do
  {
    v11 = v10;
    AttributedStringWithFontSize = _CreateAttributedStringWithFontSize(a1, 2, v10);
    v13 = CTLineCreateWithAttributedString(AttributedStringWithFontSize);
    BoundsWithOptions = CTLineGetBoundsWithOptions(v13, 0);
    width = BoundsWithOptions.size.width;
    height = BoundsWithOptions.size.height;
    v10 = v10 + 1.0;
    CFRelease(v13);
    CFRelease(AttributedStringWithFontSize);
  }

  while (width <= a4 && height <= a5);
  v17 = 0.0;
  if (v11 != v9)
  {
    v17 = v11;
  }

  return floor(v17);
}

void _DrawLogoPDFIntoContext(uint64_t a1, CGContextRef c, CGFloat a3, CGFloat a4, double a5, double a6)
{
  CGContextSaveGState(c);
  if (a1 == 2 || a1 == 100)
  {
    v13 = @"PayButtonLogoWhite";
  }

  else
  {
    v13 = @"PayButtonLogoBlack";
  }

  v14 = PKPassKitBundle();
  v15 = [v14 URLForResource:v13 withExtension:@"pdf"];

  v16 = CGPDFDocumentCreateWithURL(v15);
  v17 = v16;
  if (v16 && CGPDFDocumentGetNumberOfPages(v16))
  {
    Page = CGPDFDocumentGetPage(v17, 1uLL);
    v19 = CGPDFPageRetain(Page);
  }

  else
  {
    v19 = 0;
  }

  BoxRect = CGPDFPageGetBoxRect(v19, kCGPDFCropBox);
  if (a5 / BoxRect.size.width >= a6 / BoxRect.size.height)
  {
    v20 = a6 / BoxRect.size.height;
  }

  else
  {
    v20 = a5 / BoxRect.size.width;
  }

  CGContextTranslateCTM(c, a3, a4);
  CGAffineTransformMakeScale(&v21, v20, v20);
  CGContextConcatCTM(c, &v21);
  CGContextDrawPDFPage(c, v19);
  CGPDFDocumentRelease(v17);
  CGPDFPageRelease(v19);
  CGContextRestoreGState(c);
}

CFAttributedStringRef _CreateAttributedStringWithFontSize(const __CFString *a1, uint64_t a2, double a3)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v27[0] = *MEMORY[0x1E6965898];
  v6 = *MEMORY[0x1E69658E0];
  v26[0] = *MEMORY[0x1E69658B8];
  v7 = *MEMORY[0x1E6965970];
  v25[0] = v6;
  v25[1] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E6965950]];
  v26[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v28[0] = v9;
  v27[1] = *MEMORY[0x1E6965848];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v28[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

  v12 = CTFontDescriptorCreateWithAttributes(v11);
  v13 = CTFontCreateWithFontDescriptor(v12, 0.0, 0);
  v14 = PKColorSpaceStandardRGB();
  if (a2 == 100 || a2 == 2)
  {
    v15 = &xmmword_1ADB9A828;
  }

  else
  {
    v15 = &xmmword_1ADB9A848;
  }

  v16 = v15[1];
  *components = *v15;
  v24 = v16;
  v17 = CGColorCreate(v14, components);
  v18 = *MEMORY[0x1E69659D8];
  components[0] = *MEMORY[0x1E6965658];
  components[1] = v18;
  v22[0] = v13;
  v22[1] = v17;
  v19 = CFDictionaryCreate(*MEMORY[0x1E695E480], components, v22, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v20 = CFAttributedStringCreate(0, a1, v19);
  CFRelease(v12);
  CFRelease(v19);
  CFRelease(v13);
  CGColorRelease(v17);

  return v20;
}

void PKDrawApplePayButtonRegularWithCornerRadius(CGContext *a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  _DrawBorder(a1, a9, a2, a3, a4, a5, a6, a7);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v15 = CGRectGetHeight(v23) * 3.0 / 20.0;
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  v16 = CGRectGetHeight(v24) * 13.0 / 20.0;
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  Width = CGRectGetWidth(v25);
  v18 = PKRectRoundToPixelWithScale((Width - v16 / 0.410022779) * 0.5, v15, v16 / 0.410022779, v16, 1.0);

  _DrawLogoPDFIntoContext(a9, a1, v18, v19, v20, v21);
}

void PKDrawApplePayButtonWithCSSValue(CGContext *a1, void *a2, void *a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v22 = a4;
  v19 = a3;
  v20 = _PKPaymentButtonTypeFromCSSValue(a2);
  v21 = _PKPaymentButtonStyleFromCSSValue(v19);

  PKDrawApplePayButtonLargeWithCornerRadius(a1, v20, v21, v22, a5, a6, a7, a8, a9, a10);
}

id PKApplePayButtonAccessibilityTitleForType(unint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1 > 0x10)
  {
    v5 = 0;
    if (!v3)
    {
LABEL_7:
      v13 = PKLocalizedPaymentString(&v5->isa, 0);
      goto LABEL_8;
    }
  }

  else
  {
    v5 = off_1E79D6390[a1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v6 = MEMORY[0x1E696AAE8];
  v7 = PKPassKitBundle();
  v8 = [v7 localizations];
  v23[0] = v4;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v10 = [v6 preferredLocalizationsFromArray:v8 forPreferences:v9];
  v11 = [v10 firstObject];

  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = PKPassKitBundle();
  [v12 _cfBundle];
  v13 = CFBundleCopyLocalizedStringForLocalization();

  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_8:
  v14 = PKLocalizedPaymentString(&cfstr_ApplePay.isa, 0);
  v21 = PKStringWithValidatedFormat(v13, @"%@", v15, v16, v17, v18, v19, v20, v14);

  return v21;
}

uint64_t PKProtobufShareableCredentialMessageReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v34[0] & 0x7F) << v23;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_59:
        *(a1 + 48) = v29;
        goto LABEL_51;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_50;
        }

        goto LABEL_46;
      }

      v32 = objc_alloc_init(PKProtobufShareableCredential);
      [a1 addShareableCredentials:v32];
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !PKProtobufShareableCredentialReadFrom(v32, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_51:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v14 = PBReaderReadData();
        v15 = 24;
        goto LABEL_50;
      }

      if (v13 == 7)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 56) |= 1u;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v34[0] & 0x7F) << v16;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_61;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_61:
        *(a1 + 52) = v22;
        goto LABEL_51;
      }
    }

    else
    {
      if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_50;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 32;
LABEL_50:
        v30 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_51;
      }
    }

LABEL_46:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

void sub_1AD80BC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD80BDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD80C004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKPaymentTransactionAwardTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"monetary")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [@"monetary" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"nonMonetary" || (v6 = v5, v7 = [@"nonMonetary" isEqualToString:v5], v6, v7))
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

__CFString *PKPaymentTransactionAwardTypeToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"nonMonetary";
  }

  if (a1 == 1)
  {
    return @"monetary";
  }

  else
  {
    return v1;
  }
}

SecAccessControlRef PKTestACLProviderDualActionACL()
{
  v29[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v0 setObject:&unk_1F23B4FE8 forKeyedSubscript:@"pkofn"];
  [v0 setObject:&unk_1F23B4FE8 forKeyedSubscript:?];
  v28[0] = @"pbioc";
  v1 = objc_opt_new();
  v28[1] = @"pbiot";
  v29[0] = v1;
  v29[1] = &unk_1F23B4FE8;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  [v0 setObject:v2 forKeyedSubscript:@"cbio"];

  [v0 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"cbtn"];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:&unk_1F23B5000 forKeyedSubscript:@"pkofn"];
  [v3 setObject:&unk_1F23B4FE8 forKeyedSubscript:@"pmuc"];
  v26[0] = @"pbioc";
  v4 = objc_opt_new();
  v26[1] = @"pbiot";
  v27[0] = v4;
  v27[1] = &unk_1F23B5000;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  [v3 setObject:v5 forKeyedSubscript:@"cbio"];

  [v3 setObject:v0 forKeyedSubscript:@"ckon"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setObject:&unk_1F23B4FE8 forKeyedSubscript:@"pkofn"];
  [v6 setObject:&unk_1F23B4FE8 forKeyedSubscript:@"pmuc"];
  v24[0] = @"pbioc";
  v7 = objc_opt_new();
  v24[1] = @"pbiot";
  v25[0] = v7;
  v25[1] = &unk_1F23B4FE8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v6 setObject:v8 forKeyedSubscript:@"cbio"];

  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"cbtn"];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 setObject:&unk_1F23B5000 forKeyedSubscript:@"pkofn"];
  [v9 setObject:&unk_1F23B5000 forKeyedSubscript:@"pmoc"];
  [v9 setObject:&unk_1F23B4FE8 forKeyedSubscript:@"pmuc"];
  v22[0] = @"pbioc";
  v10 = objc_opt_new();
  v22[1] = @"pbiot";
  v23[0] = v10;
  v23[1] = &unk_1F23B5000;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v9 setObject:v11 forKeyedSubscript:@"cbio"];

  [v9 setObject:v6 forKeyedSubscript:@"ckon"];
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = MEMORY[0x1E695E118];
  [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"oa"];
  [v12 setObject:v3 forKeyedSubscript:@"ock"];
  [v12 setObject:v13 forKeyedSubscript:@"odel"];
  [v12 setObject:v9 forKeyedSubscript:@"osgn"];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v12];
  error = 0;
  v15 = SecAccessControlCreateWithFlags(*MEMORY[0x1E695E480], *MEMORY[0x1E697AC20], 0x40000002uLL, &error);
  v16 = error;
  if (error)
  {
    v17 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v16;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Error generating accessControlRef %@", buf, 0xCu);
    }
  }

  SecAccessControlSetConstraints();

  return v15;
}

SecAccessControlRef PKTestACLProviderBiometricsACL()
{
  v30[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v0 setObject:? forKeyedSubscript:?];
  [v0 setObject:&unk_1F23B5000 forKeyedSubscript:@"pmuc"];
  v29[0] = @"pbioc";
  v1 = objc_opt_new();
  v29[1] = @"pbiot";
  v30[0] = v1;
  v30[1] = &unk_1F23B4FE8;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  [v0 setObject:v2 forKeyedSubscript:@"cbio"];

  [v0 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"cbtn"];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:&unk_1F23B5000 forKeyedSubscript:@"pkofn"];
  [v3 setObject:&unk_1F23B5000 forKeyedSubscript:@"pmuc"];
  v27[0] = @"pbioc";
  v4 = objc_opt_new();
  v27[1] = @"pbiot";
  v28[0] = v4;
  v28[1] = &unk_1F23B5000;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  [v3 setObject:v5 forKeyedSubscript:@"cbio"];

  v19 = v0;
  [v3 setObject:v0 forKeyedSubscript:@"ckon"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setObject:&unk_1F23B4FE8 forKeyedSubscript:@"pkofn"];
  [v6 setObject:&unk_1F23B5000 forKeyedSubscript:@"pmuc"];
  v25[0] = @"pbioc";
  v7 = objc_opt_new();
  v25[1] = @"pbiot";
  v26[0] = v7;
  v26[1] = &unk_1F23B4FE8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  [v6 setObject:v8 forKeyedSubscript:@"cbio"];

  v9 = MEMORY[0x1E695E118];
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"cbtn"];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:&unk_1F23B5000 forKeyedSubscript:@"pkofn"];
  [v10 setObject:&unk_1F23B5000 forKeyedSubscript:@"pmuc"];
  v23[0] = @"pbioc";
  v11 = objc_opt_new();
  v23[1] = @"pbiot";
  v24[0] = v11;
  v24[1] = &unk_1F23B5000;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v10 setObject:v12 forKeyedSubscript:@"cbio"];

  [v10 setObject:v6 forKeyedSubscript:@"ckon"];
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v13 setObject:v9 forKeyedSubscript:@"oa"];
  [v13 setObject:v3 forKeyedSubscript:@"ock"];
  [v13 setObject:v9 forKeyedSubscript:@"odel"];
  [v13 setObject:v10 forKeyedSubscript:@"osgn"];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v13];
  error = 0;
  v15 = SecAccessControlCreateWithFlags(*MEMORY[0x1E695E480], *MEMORY[0x1E697AC20], 0x40000002uLL, &error);
  v16 = error;
  if (error)
  {
    v17 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Error generating accessControlRef %@", buf, 0xCu);
    }
  }

  SecAccessControlSetConstraints();

  return v15;
}

void sub_1AD80F9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PKPaymentProvisioningControllerStateToString(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PKPaymentProvisioningControllerState-Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_1E79D7928[a1];
  }

  return v2;
}

void sub_1AD813CEC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1AD814128(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1AD816210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL PKShouldDisplayRemoteCredentialWithStatus(void *a1)
{
  v1 = a1;
  v2 = [v1 status];
  if ((v2 - 1) < 3)
  {
    goto LABEL_2;
  }

  if (v2 != 5)
  {
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v4 = [v1 transferType];
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v5 = [v1 transferableFromDevices];
      v3 = [v5 count] != 0;

      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_2:
  v3 = 1;
LABEL_8:

  return v3;
}

void sub_1AD818B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v46 - 224), 8);
  _Block_object_dispose((v46 - 176), 8);
  _Block_object_dispose((v46 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1AD81A014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD81AF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_1AD81BBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD81C13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD81D1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose((v66 - 248), 8);
  _Block_object_dispose((v66 - 200), 8);
  _Block_object_dispose((v66 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1AD81E3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v43 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose(&STACK[0x288], 8);
  _Block_object_dispose(&STACK[0x2A8], 8);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose((v44 - 232), 8);
  _Block_object_dispose((v44 - 184), 8);
  _Block_object_dispose((v44 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1AD81ED40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD81F1C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1AD8224C0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1AD823E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD826108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AD826920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD82748C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak((v16 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v18 - 88));
  _Unwind_Resume(a1);
}

void sub_1AD828EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD82A304(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1AD82B9B4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AD82CEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initCIDVUIProofingFlowManager()
{
  if (qword_1ED6D1B30 != -1)
  {
    dispatch_once(&qword_1ED6D1B30, &__block_literal_global_1330);
  }

  result = objc_getClass("CIDVUIProofingFlowManager");
  _MergedGlobals_230 = result;
  getCIDVUIProofingFlowManagerClass[0] = CIDVUIProofingFlowManagerFunction;
  return result;
}

void *__LoadCoreIDVUI_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreIDVUI.framework/CoreIDVUI", 2);
  LoadCoreIDVUI_frameworkLibrary = result;
  return result;
}

Class initNPKCompanionAgentConnection_2()
{
  if (qword_1ED6D1B40 != -1)
  {
    dispatch_once(&qword_1ED6D1B40, &__block_literal_global_1334);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  qword_1ED6D1B38 = result;
  getNPKCompanionAgentConnectionClass_2[0] = NPKCompanionAgentConnectionFunction_2;
  return result;
}

void *__LoadNanoPassKit_block_invoke_2()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_2 = result;
  return result;
}

BOOL PKPreferenceBOOLforKey(void *a1)
{
  v1 = a1;
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  if (os_variant_has_internal_ui())
  {
    v2 = CFPreferencesGetAppBooleanValue(v1, *MEMORY[0x1E695E890], 0) != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void PKSetIgnoreSignatures(uint64_t a1)
{
  if (os_variant_allows_internal_security_policies())
  {
    v2 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    _PKSetGlobalValueForKey(v2, @"PKIgnoreSignatures");
  }
}

void _PKSetGlobalValueForKey(void *a1, void *a2)
{
  v3 = _InstallGlobalPreferencesObserverIfNecessary_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v6 = *MEMORY[0x1E695E890];
  CFPreferencesSetAppValue(v4, v5, *MEMORY[0x1E695E890]);

  CFPreferencesAppSynchronize(v6);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.passbook.globalprefschanged", 0, 0, 1u);
}

void PKSetAllowHTTP(uint64_t a1)
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesSetAppValue(@"PKAllowHTTP", v6, @"com.apple.Wallet.public");
  CFPreferencesAppSynchronize(@"com.apple.Wallet.public");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Wallet.public.preferenceschanged", 0, 0, 1u);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  v4 = *MEMORY[0x1E695E890];
  CFPreferencesSetAppValue(@"PKAllowHTTP", v3, *MEMORY[0x1E695E890]);
  CFPreferencesAppSynchronize(v4);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v5, @"com.apple.passbook.globalprefschanged", 0, 0, 1u);
}

uint64_t PKSuppressLaunchOnFieldDetect()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSuppressLaunchOnFieldDetect", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

BOOL PKContactlessInterfaceHomeButtonSourceHasOccurred()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKContactlessInterfaceHomeButtonSourceHasOccuredKey", *MEMORY[0x1E695E890], 0) != 0;
}

void PKSetContactlessInterfaceHomeButtonSourceHasOccurred(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  _PKSetGlobalValueForKey(v1, @"PKContactlessInterfaceHomeButtonSourceHasOccuredKey");
}

uint64_t PKForcePrivateLabelSetupDisambiguation()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKForcePrivateLabelSetupDisambiguation", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKForceBrowseProductsSearchUI()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKForceBrowseProductsSearchUIKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKForceBrowseBankPartners()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKForceBrowseBankPartnersKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKMockBrowseBankPartners()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKMockBrowseBankPartnersKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKIdentityUseBioBindingForWalletTestPass()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKIdentityUseBioBindingKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKIdentityEnableAuxiliaryCapabilities()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKIdentityEnableAuxiliaryCapabilitiesKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKIdentityEnableAntiCloning()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKIdentityEnableAntiCloningKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKBypassCertValidation()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKBypassCertValidation", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKIgnoreSSLPinning()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKIgnoreSSLPinning", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKDisableNotificationPullTimeout()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKDisableNotificationPullTimeoutKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKLogNotificationServiceResponses()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKLogNotificationServiceResponsesKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKDisableTransactionTableTruncation()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKDisableTransactionTableTruncationKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKShowFakePaymentSetupFields()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKShowFakePaymentSetupFieldsKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKShowFakeMoreInfo()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKShowFakeMoreInfoKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetShowFakeMoreInfo(uint64_t a1)
{
  if (os_variant_has_internal_ui())
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    v2 = *MEMORY[0x1E695E890];
    CFPreferencesSetAppValue(@"PKShowFakeMoreInfoKey", v4, *MEMORY[0x1E695E890]);
    CFPreferencesAppSynchronize(v2);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.passbook.globalprefschanged", 0, 0, 1u);
  }
}

uint64_t PKShowFakeExternalDevicePicker()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKShowFakeExternalDevicePickerKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetShowFakeExternalDevicePicker(uint64_t a1)
{
  if (os_variant_has_internal_ui())
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    v2 = *MEMORY[0x1E695E890];
    CFPreferencesSetAppValue(@"PKShowFakeExternalDevicePickerKey", v4, *MEMORY[0x1E695E890]);
    CFPreferencesAppSynchronize(v2);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Wallet.preferenceschanged", 0, 0, 1u);
  }
}

uint64_t PKForceCardEducation()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKForceCardEducationKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKForceMakeDefaultCard()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKForceMakeDefaultCardKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKDisableDynamicSEAllocation()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKDisableDynamicSEAllocationKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

BOOL PKEnableTapToProvision()
{
  v12 = *MEMORY[0x1E69E9840];
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  keyExistsAndHasValidFormat = 0;
  if (!os_variant_has_internal_ui())
  {
    goto LABEL_15;
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PKEnableTapToProvisionKey", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
  v1 = AppBooleanValue != 0;
  if (keyExistsAndHasValidFormat)
  {
    v2 = AppBooleanValue;
    v3 = PKLogFacilityTypeGetObject(0x25uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"No";
      if (v2)
      {
        v4 = @"Yes";
      }

      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKEnableTapToProvision returning '%@' because key set in defaults", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v5 = PKCurrentRegion();
  if (v5 == @"US" || (v6 = v5) != 0 && (v7 = [(__CFString *)v5 isEqualToString:@"US"], v6, v6, v7))
  {
    v3 = PKLogFacilityTypeGetObject(0x25uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKEnableTapToProvision returning 'Yes' because region is US", buf, 2u);
    }

    v1 = 1;
  }

  else
  {
LABEL_15:
    v3 = PKLogFacilityTypeGetObject(0x25uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKEnableTapToProvision returning 'No'", buf, 2u);
    }

    v1 = 0;
  }

LABEL_18:

  return v1;
}

uint64_t PKDynamicSEAllocationFakeFullSE()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKDynamicSEAllocationFakeFullSEKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

BOOL PKEnableUpdatedOneTimeCodeParsing()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  keyExistsAndHasValidFormat = 0;
  if (!os_variant_has_internal_ui())
  {
    return 1;
  }

  return CFPreferencesGetAppBooleanValue(@"PKEnableUpdatedOneTimeCodeParsingKey", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat) || keyExistsAndHasValidFormat == 0;
}

BOOL PKEnableBuddyBackgroundProvisioning()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  keyExistsAndHasValidFormat = 0;
  if (!os_variant_has_internal_ui())
  {
    return 1;
  }

  return CFPreferencesGetAppBooleanValue(@"PKEnableBuddyBackgroundProvisioningKey", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat) || keyExistsAndHasValidFormat == 0;
}

BOOL PKEnableBuddyBackgroundProvisioningForPaymentCards()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  keyExistsAndHasValidFormat = 0;
  has_internal_ui = os_variant_has_internal_ui();
  result = 0;
  if (has_internal_ui)
  {
    if (CFPreferencesGetAppBooleanValue(@"PKEnableBuddyBackgroundProvisioningKey", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat))
    {
      v2 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v2 = 1;
    }

    return !v2;
  }

  return result;
}

uint64_t PKSimulateBuddyBackgroundProvisioningInWallet()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSimulateBuddyBackgroundProvisioningInWalletKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKForceSuccessfulSuperEasyProvisioningIfPossible()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKForceSuccessfulSuperEasyProvisioningIfPossibleKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKUseTapToRadarForBackgroundProvisioningFailure()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKUseTapToRadarForBackgroundProvisioningFailureKey", @"com.apple.Wallet", 0) != 0;
  }

  return result;
}

uint64_t PKPPTTestingEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKPPTTestingEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKEnableGroupVerificationMethods()
{
  v9 = *MEMORY[0x1E69E9840];
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  keyExistsAndHasValidFormat = 0;
  if (!os_variant_has_internal_ui())
  {
    return 1;
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PKEnableGroupVerificationMethodsKey", @"com.apple.Wallet", &keyExistsAndHasValidFormat);
  v1 = AppBooleanValue != 0;
  if (!keyExistsAndHasValidFormat)
  {
    return 1;
  }

  v2 = AppBooleanValue;
  v3 = PKLogFacilityTypeGetObject(0x26uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"No";
    if (v2)
    {
      v4 = @"Yes";
    }

    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKEnableGroupVerificationMethods debug override set. Returning: %@", buf, 0xCu);
  }

  return v1;
}

uint64_t PKSimulateWalletDisabledForManagedAccount()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSimulateWalletDisabledForManagedAccountKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKSkipHasExistingCardsCheckInSetupAssistant()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSkipHasExistingCardsCheckInSetupAssistantKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKShowFakeVerificationChannels()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKShowFakeVerificationChannels", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetShowFakeVerificationChannels(uint64_t a1)
{
  if (os_variant_has_internal_ui())
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    v2 = *MEMORY[0x1E695E890];
    CFPreferencesSetAppValue(@"PKShowFakeVerificationChannels", v4, *MEMORY[0x1E695E890]);
    CFPreferencesAppSynchronize(v2);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Wallet.preferenceschanged", 0, 0, 1u);
  }
}

uint64_t PKForceLargeAmountOfProducts()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKForceLargeAmountOfProductsKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKShowFakeRemoteCredentials()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKShowFakeRemoteCredentialsKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPaymentSetupForceBridgeAppearance()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKPaymentSetupForceBridgeAppearance", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPaymentSetupUseXPCProxyTargetDevice()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKPaymentSetupUseXPCProxyTargetDevice", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPaymentPassArtDownloadDelayEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKPaymentSetupPassArtDownloadDelay", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPaymentSetupForceIsBeneficiaryAccountEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKPaymentSetupForceIsBeneficiaryAccount", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPaymentSetupMockInAppProvisioningDeleteUIEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKPaymentSetupMockInAppProvisioningDeleteUI", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPaymentOffersUseAuthenticationServicesEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKPaymentOffersUseAuthenticationServicesKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPaymentOffersUseEphemeralSessionEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKPaymentOffersUseEphemeralSessionKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPaymentOffersSuppressPayInFullEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKPaymentOffersSuppressPayInFullKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPaymentOffersForceSuppressPayInFull()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKPaymentOffersForceSuppressPayInFullKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKShortenRemindersEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKShortenRemindersEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

BOOL PKUIOnlyDemoModeEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKUIOnlyDemoModeEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
}

BOOL PKHandsOnDemoModeEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKHandsOnDemoModeEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
}

uint64_t PKSensitiveFieldBroadcastingEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKAllowSensitiveFieldBroadcasting", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

BOOL PKGenerateStoreDemoTransactionsDaily()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKGenerateStoreDemoTransactionsDaily", *MEMORY[0x1E695E890], 0) != 0;
}

void PKSetGenerateStoreDemoTransactionsDaily(char a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
    _PKSetGlobalValueForKey(v2, @"PKGenerateStoreDemoTransactionsDaily");
  }

  else
  {

    _PKSetGlobalValueForKey(0, @"PKGenerateStoreDemoTransactionsDaily");
  }
}

uint64_t PKTransactionDebugDetailsEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKTransactionDetailsEnabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKTransactionDetailedLoggingEnabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKTransactionDetailedLoggingEnabled", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKSuppressSecureElementUIHinting()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKSuppressSecureElementUIHinting", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKMobileAssetEagerCatalogFetching()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKMobileAssetEagerCatalogFetchingKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKMockOsloSecureElementAuth()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKMockOsloSecureElementAuthKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

BOOL PKDisablePersonalizationValidation()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  return CFPreferencesGetAppBooleanValue(@"PKDisablePersonalizationValidationKey", *MEMORY[0x1E695E890], 0) != 0;
}

uint64_t PKForceLocalIDS()
{
  result = os_variant_has_internal_ui();
  if (result)
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    return CFPreferencesGetAppBooleanValue(@"PKForceLocalIDSKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

uint64_t PKPayStateDebugUI()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_has_internal_ui();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKPayStateDebugUI", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

id PKMarketsURLOverride()
{
  if (os_variant_has_internal_ui())
  {
    if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
    {
      dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
    }

    v0 = CFPreferencesCopyAppValue(@"PKMarketsURLOverride", *MEMORY[0x1E695E890]);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id PKTransactionServiceURLOverrideForPassUniqueIdentifier(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  has_internal_ui = os_variant_has_internal_ui();
  v3 = 0;
  if (v1 && has_internal_ui)
  {
    v4 = CFPreferencesCopyAppValue(@"PKTransactionServiceURLOverride", *MEMORY[0x1E695E890]);
    v3 = [v4 objectForKey:v1];
    if (v3)
    {
      v5 = PKLogFacilityTypeGetObject(0x18uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412546;
        v8 = v3;
        v9 = 2112;
        v10 = v1;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Using transaction service URL override %@ for pass %@", &v7, 0x16u);
      }
    }
  }

  return v3;
}

void PKSetTransactionServiceURLOverrideForPassUniqueIdentifier(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  has_internal_ui = os_variant_has_internal_ui();
  if (v3 && has_internal_ui)
  {
    v6 = PKLogFacilityTypeGetObject(0x18uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Setting transaction service URL override to %@ for pass %@", &v10, 0x16u);
    }

    v7 = CFPreferencesCopyAppValue(@"PKTransactionServiceURLOverride", *MEMORY[0x1E695E890]);
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v8 setObject:v4 forKeyedSubscript:v3];
    if ([v8 count])
    {
      v9 = [v8 copy];
      _PKSetGlobalValueForKey(v9, @"PKTransactionServiceURLOverride");
    }

    else
    {
      _PKSetGlobalValueForKey(0, @"PKTransactionServiceURLOverride");
    }
  }
}

id PKTransactionServicePushTopicOverrideForPassUniqueIdentifier(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  has_internal_ui = os_variant_has_internal_ui();
  v3 = 0;
  if (v1 && has_internal_ui)
  {
    v4 = CFPreferencesCopyAppValue(@"PKTransactionServicePushTopicOverride", *MEMORY[0x1E695E890]);
    v3 = [v4 objectForKey:v1];
    if (v3)
    {
      v5 = PKLogFacilityTypeGetObject(0x18uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412546;
        v8 = v3;
        v9 = 2112;
        v10 = v1;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Using transaction service push topic override %@ for pass %@", &v7, 0x16u);
      }
    }
  }

  return v3;
}

void PKSetTransactionServicePushTopicOverrideForPassUniqueIdentifier(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  has_internal_ui = os_variant_has_internal_ui();
  if (v3 && has_internal_ui)
  {
    v6 = PKLogFacilityTypeGetObject(0x18uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Setting transaction service push topic override to %@ for pass %@", &v10, 0x16u);
    }

    v7 = CFPreferencesCopyAppValue(@"PKTransactionServicePushTopicOverride", *MEMORY[0x1E695E890]);
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v8 setObject:v4 forKeyedSubscript:v3];
    if ([v8 count])
    {
      v9 = [v8 copy];
      _PKSetGlobalValueForKey(v9, @"PKTransactionServicePushTopicOverride");
    }

    else
    {
      _PKSetGlobalValueForKey(0, @"PKTransactionServicePushTopicOverride");
    }
  }
}

void *PKAuxiliaryCapabilityManagerPerformScheduledCheckRetrySeconds()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKAuxiliaryCapabilityManagerPerformScheduledCheckRetrySecondsKey", *MEMORY[0x1E695E890]);
  v1 = v0;
  if (v0 == @"5 minutes")
  {
    goto LABEL_6;
  }

  if (!v0)
  {
LABEL_13:
    v3 = 0;
    goto LABEL_14;
  }

  v2 = [(__CFString *)v0 isEqualToString:@"5 minutes"];

  if ((v2 & 1) == 0)
  {
    v4 = v1;
    if (v4 == @"60 minutes" || (v5 = v4, v6 = [(__CFString *)v4 isEqualToString:@"60 minutes"], v5, (v6 & 1) != 0))
    {
      v3 = &unk_1F23B5060;
      goto LABEL_14;
    }

    v7 = v5;
    if (v7 == @"4 hours" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"4 hours"], v8, v9))
    {
      v3 = &unk_1F23B5078;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_6:
  v3 = &unk_1F23B5048;
LABEL_14:

  return v3;
}

uint64_t PKAuxiliaryCapabilityManagerDisabled()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"PKAuxiliaryCapabilityManagerDisabledKey", *MEMORY[0x1E695E890], 0) != 0;
  }

  return result;
}

void PKSetHasSeenDeviceAssessmentEducation(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesSetAppValue(@"PKHasSeenDeviceAssessmentEducation", v2, @"com.apple.Wallet");
  CFPreferencesAppSynchronize(@"com.apple.Wallet");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Wallet.preferenceschanged", 0, 0, 1u);
}

id PKRawRegionFeatureOverride()
{
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = CFPreferencesCopyAppValue(@"PKRegionFeatureOverrideKey", @"com.apple.Wallet");

  return v0;
}

id PKRegionFeatureOverride()
{
  v37 = *MEMORY[0x1E69E9840];
  if (_InstallGlobalPreferencesObserverIfNecessary_onceToken != -1)
  {
    dispatch_once(&_InstallGlobalPreferencesObserverIfNecessary_onceToken, &__block_literal_global_1143);
  }

  v0 = PKRawRegionFeatureOverride();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = 0;
    goto LABEL_31;
  }

  v1 = MEMORY[0x1E696ACB0];
  v2 = [v0 dataUsingEncoding:4];
  v3 = [v1 JSONObjectWithData:v2 options:0 error:0];

  v4 = 0x1E695D000uLL;
  objc_opt_class();
  v28 = v3;
  v29 = v0;
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v3, 0}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_11;
    }

    v5 = v3;
  }

  v6 = v5;
LABEL_11:
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v11 = @"type";
    v12 = @"feature";
    do
    {
      v13 = 0;
      v31 = v9;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 PKNumberForKey:v11];
          if (!v15)
          {
            v16 = [v14 PKStringForKey:v11];
            v17 = v16;
            if (v16)
            {
              v15 = [MEMORY[0x1E696AD98] numberWithInteger:PKWebServiceRegionFeatureTypeFromString(v16)];
            }

            else
            {
              v15 = 0;
            }
          }

          v18 = [v14 PKDictionaryForKey:v12];
          v19 = [v14 PKStringForKey:@"region"];
          if (v15)
          {
            v20 = v18 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            v21 = v10;
            v22 = v7;
            v23 = v11;
            v24 = v4;
            v25 = v12;
            v26 = +[PKWebServiceRegionFeature regionFeatureWithType:dictionary:region:](PKWebServiceRegionFeature, "regionFeatureWithType:dictionary:region:", [v15 integerValue], v18, v19);
            [v30 safelyAddObject:v26];

            v12 = v25;
            v4 = v24;
            v11 = v23;
            v7 = v22;
            v10 = v21;
            v9 = v31;
          }
        }

        ++v13;
      }

      while (v9 != v13);
      v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  v0 = v29;
LABEL_31:

  return v30;
}
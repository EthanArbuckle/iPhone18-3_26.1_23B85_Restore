@interface NSURL(Telephony)
+ (BOOL)isForceTelephonyScheme:()Telephony;
+ (id)facetimeAppVoicemailURLForMessageUUID:()Telephony;
+ (id)phoneAppVoicemailURLForMessageUUID:()Telephony;
+ (id)phoneAppVoicemailURLForRecordID:()Telephony;
+ (id)telephonyURLForTelEmergencyCall;
+ (id)telephonyURLForVoicemail;
+ (id)telephonyURLWithDestinationID:()Telephony addressBookUID:;
+ (id)telephonyURLWithDestinationID:()Telephony addressBookUID:forceAssist:suppressAssist:wasAssisted:;
+ (id)telephonyURLWithDestinationID:()Telephony promptUser:;
+ (uint64_t)isDefaultAppScheme:()Telephony;
+ (uint64_t)isDefaultCallingAppScheme:()Telephony;
- (BOOL)_hasScheme:()Telephony;
- (id)_destinationIDConvertingNumbersToLatin:()Telephony;
- (id)_mobilePhonePathParameters;
- (id)_mobilePhoneQueryParameters;
- (id)formattedPhoneNumber;
- (id)originatingUIIdentifier;
- (id)recentsUniqueID;
- (id)telephonyParameterDictionary;
- (id)voicemailMessageUUID;
- (id)webSafeTelephoneURL;
- (uint64_t)_dialAssistBooleanQueryParameterValueForKey:()Telephony;
- (uint64_t)addressBookUID;
- (uint64_t)callService;
- (uint64_t)hasTelephonyOrDefaultAppScheme;
- (uint64_t)hasTelephonyScheme;
- (uint64_t)isBasebandLogURL;
- (uint64_t)isDefaultCallingAppPromptURL;
- (uint64_t)isDefaultCallingAppURL;
- (uint64_t)isEmergencyCallURL;
- (uint64_t)isForceTelephonyPromptURL;
- (uint64_t)isForceTelephonyURL;
- (uint64_t)isPhoneAppVoicemailURL;
- (uint64_t)isTelephonyURL;
- (uint64_t)isVoicemailURL;
- (uint64_t)isWebSafeTelephoneURL;
- (void)voicemailRecordID;
@end

@implementation NSURL(Telephony)

+ (id)telephonyURLWithDestinationID:()Telephony promptUser:
{
  v5 = TUURLHostForTelephoneNumber(a3);
  if ([v5 length])
  {
    v6 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v6];

    v5 = v7;
  }

  v8 = MEMORY[0x1E695DFF8];
  v9 = @"tel";
  if (a4)
  {
    v9 = @"telprompt";
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@?%@=%@", v9, v5, @"handleType", @"phoneNumber"];
  v11 = [v8 URLWithString:v10];

  return v11;
}

+ (id)telephonyURLWithDestinationID:()Telephony addressBookUID:
{
  v5 = MEMORY[0x1E696AD60];
  v6 = [a1 telephonyURLWithDestinationID:?];
  v7 = [v5 stringWithFormat:@"%@", v6];

  if (a4 != -1)
  {
    [v7 appendFormat:@"&%@=%d", @"abuid", a4];
  }

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];

  return v8;
}

+ (id)telephonyURLWithDestinationID:()Telephony addressBookUID:forceAssist:suppressAssist:wasAssisted:
{
  v12 = a3;
  v13 = [MEMORY[0x1E696AD60] string];
  v14 = v13;
  if (a4 != -1)
  {
    [v13 appendFormat:@"&%@=%d", @"abuid", a4];
  }

  if ((a5 & 1) != 0 || a6)
  {
    v15 = @"suppressAssist";
    if (a5)
    {
      v15 = @"forceAssist";
    }

    [v14 appendFormat:@"&%@=1", v15];
  }

  if (a7)
  {
    [v14 appendFormat:@"&%@=1", @"wasAssisted"];
  }

  v16 = MEMORY[0x1E695DFF8];
  v17 = MEMORY[0x1E696AEC0];
  v18 = [a1 telephonyURLWithDestinationID:v12];
  v19 = [v17 stringWithFormat:@"%@%@", v18, v14];
  v20 = [v16 URLWithString:v19];

  return v20;
}

+ (id)telephonyURLForVoicemail
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://?%@=1", @"tel", @"isVoicemail"];
  v2 = [v0 URLWithString:v1];

  return v2;
}

+ (id)telephonyURLForTelEmergencyCall
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://", @"telemergencycall"];
  v2 = [v0 URLWithString:v1];

  return v2;
}

- (id)_destinationIDConvertingNumbersToLatin:()Telephony
{
  v4 = [a1 resourceSpecifier];
  v5 = [v4 stringByRemovingPercentEncoding];

  v6 = [v5 rangeOfString:@"//" options:8];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v5 substringFromIndex:v6 + v7];

    v5 = v8;
  }

  v9 = [v5 rangeOfString:@"?"];
  if (v10)
  {
    v11 = [v5 substringToIndex:v9];

    v5 = v11;
  }

  if ([v5 length] >= 2 && objc_msgSend(v5, "characterAtIndex:", objc_msgSend(v5, "length") - 1) == 47)
  {
    v12 = [v5 substringToIndex:{objc_msgSend(v5, "length") - 1}];

    v5 = v12;
  }

  if (a3 && [v5 length])
  {
    v13 = IMCopyStringWithLatinNumbers();
    v14 = v13;
    if (v13)
    {
      v15 = v13;

      v5 = v15;
    }
  }

  return v5;
}

- (uint64_t)addressBookUID
{
  if ([a1 hasTelephonyOrDefaultAppScheme])
  {
    v2 = [a1 _mobilePhoneQueryParameters];
    v3 = v2;
    v4 = @"abuid";
  }

  else
  {
    if (([a1 isFaceTimeURL] & 1) == 0 && !objc_msgSend(a1, "isFaceTimeAudioURL"))
    {
      return 0xFFFFFFFFLL;
    }

    v2 = [a1 queryParameters];
    v3 = v2;
    v4 = @"uid";
  }

  v5 = [v2 objectForKey:v4];

  if (v5)
  {
    v6 = [v5 intValue];

    return v6;
  }

  return 0xFFFFFFFFLL;
}

- (uint64_t)callService
{
  if ([a1 hasTelephonyOrDefaultAppScheme] & 1) != 0 || (objc_msgSend(a1, "isEmergencyCallURL"))
  {
    return 1;
  }

  if ([a1 isFaceTimeAudioURL])
  {
    return 2;
  }

  if ([a1 isFaceTimeURL])
  {
    return 3;
  }

  return 0;
}

- (id)originatingUIIdentifier
{
  v1 = [a1 _mobilePhoneQueryParameters];
  v2 = [v1 objectForKey:@"originatingUI"];

  return v2;
}

- (uint64_t)_dialAssistBooleanQueryParameterValueForKey:()Telephony
{
  v4 = a3;
  if ([a1 hasTelephonyOrDefaultAppScheme])
  {
    v5 = [a1 _mobilePhoneQueryParameters];
  }

  else
  {
    if (([a1 isFaceTimeURL] & 1) == 0 && !objc_msgSend(a1, "isFaceTimeAudioURL"))
    {
      goto LABEL_8;
    }

    v5 = [a1 queryParameters];
  }

  v6 = v5;
  v7 = [v5 objectForKey:v4];

  if (!v7)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = [v7 BOOLValue];

LABEL_9:
  return v8;
}

+ (uint64_t)isDefaultAppScheme:()Telephony
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeDefaultApp];
  if ([v3 isEqualToIgnoringCase:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeDefaultAppPrompt];
    v5 = [v3 isEqualToIgnoringCase:v6];
  }

  return v5;
}

+ (uint64_t)isDefaultCallingAppScheme:()Telephony
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeDefaultApp];
  if ([v3 isEqualToIgnoringCase:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeDefaultAppPrompt];
    v5 = [v3 isEqualToIgnoringCase:v6];
  }

  return v5;
}

- (uint64_t)isDefaultCallingAppURL
{
  v1 = MEMORY[0x1E695DFF8];
  v2 = [a1 scheme];
  v3 = [v1 isDefaultCallingAppScheme:v2];

  return v3;
}

- (uint64_t)isDefaultCallingAppPromptURL
{
  v2 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeDefaultAppPrompt];
  v3 = [a1 _hasScheme:v2];

  return v3;
}

- (uint64_t)isForceTelephonyURL
{
  v2 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephony];
  if ([a1 _hasScheme:v2] & 1) != 0 || (objc_msgSend(a1, "isForceTelephonyPromptURL"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 _hasScheme:@"telSOS"];
  }

  return v3;
}

- (uint64_t)isForceTelephonyPromptURL
{
  v2 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephonyPrompt];
  v3 = [a1 _hasScheme:v2];

  return v3;
}

+ (BOOL)isForceTelephonyScheme:()Telephony
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephony];
  if ([v3 isEqualToIgnoringCase:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFF8] TUDialRequestSchemeForceTelephonyPrompt];
    if ([v3 isEqualToIgnoringCase:v6])
    {
      v5 = 1;
    }

    else if ([v3 length])
    {
      v5 = [v3 caseInsensitiveCompare:@"callto"] == 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (uint64_t)isTelephonyURL
{
  if ([a1 _hasScheme:@"tel"] & 1) != 0 || (objc_msgSend(a1, "isTelephonyPromptURL"))
  {
    return 1;
  }

  return [a1 _hasScheme:@"telSOS"];
}

- (uint64_t)hasTelephonyScheme
{
  if ([a1 isTelephonyURL])
  {
    return 1;
  }

  return [a1 _hasScheme:@"callto"];
}

- (BOOL)_hasScheme:()Telephony
{
  v4 = a3;
  v5 = [a1 scheme];
  if ([v5 length])
  {
    v6 = [a1 scheme];
    v7 = [v6 caseInsensitiveCompare:v4] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)formattedPhoneNumber
{
  if (([a1 hasTelephonyOrDefaultAppScheme] & 1) != 0 || objc_msgSend(a1, "isFaceTimeAudioURL"))
  {
    v2 = [a1 _destinationIDConvertingNumbersToLatin:0];
    if (MGGetBoolAnswer())
    {
      v3 = TUNetworkCountryCode();
      if ([v3 length])
      {
        if (PNIsValidPhoneNumberForCountry())
        {
          v4 = PNCreateFormattedStringWithCountry();
          if (v4)
          {
LABEL_13:
            v6 = v4;

            goto LABEL_15;
          }
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = v3;
    v3 = TUHomeCountryCode();

    if (![v3 length] || !PNIsValidPhoneNumberForCountry() || (v4 = PNCreateFormattedStringWithCountry()) == 0)
    {
      v4 = v2;
    }

    goto LABEL_13;
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (uint64_t)isWebSafeTelephoneURL
{
  if (![a1 hasTelephonyOrDefaultAppScheme])
  {
    return 0;
  }

  if ([a1 isVoicemailURL])
  {
    return 1;
  }

  v3 = [a1 phoneNumber];
  v4 = [v3 length];
  if (!v4)
  {
LABEL_25:
    v2 = [v3 destinationIdIsCallControlCode];
    goto LABEL_27;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  for (i = 0; i != v5; ++i)
  {
    v9 = [v3 characterAtIndex:i];
    v10 = v9 - 38;
    if ((v9 - 38) <= 0x31)
    {
      if (((1 << v10) & 0x2040000200040) != 0)
      {
        goto LABEL_12;
      }

      if (((1 << v10) & 0x81) != 0)
      {
        continue;
      }
    }

    if (v9 == 112 || v9 == 119)
    {
LABEL_12:
      v7 = 1;
      continue;
    }

    if ((v7 & 1) == 0 && (v9 == 35 || v9 == 42))
    {
      v2 = 0;
      goto LABEL_27;
    }

    if ((v9 - 48) < 0xA || (v9 & 0xFFFFFFDF) - 65 < 0x1A)
    {
      ++v6;
    }
  }

  if (v6 <= 2)
  {
    goto LABEL_25;
  }

  v2 = 1;
LABEL_27:

  return v2;
}

- (id)webSafeTelephoneURL
{
  if ([a1 hasTelephonyOrDefaultAppScheme])
  {
    v2 = [a1 phoneNumber];
    v3 = [v2 length];
    v4 = malloc_type_malloc((2 * v3) | 1, 0x1000040BDFB0063uLL);
    v5 = malloc_type_malloc((2 * v3) | 1, 0x1000040BDFB0063uLL);
    v19 = v2;
    [v2 getCharacters:v4];
    v6 = 0;
    if (v3)
    {
      v7 = MEMORY[0x1E69E9830];
      v8 = v4;
      do
      {
        v10 = *v8++;
        v9 = v10;
        if (v10 > 0x7F)
        {
          if (__maskrune(v9, 0x100uLL))
          {
LABEL_6:
            v11 = __toupper(v9);
            if (v11 < 0x57u)
            {
              v12 = 56;
            }

            else
            {
              v12 = 57;
            }

            if (v11 < 0x54u)
            {
              v12 = 55;
            }

            if (v11 <= 0x4Fu)
            {
              v13 = ((((86 * (v11 - 65)) & 0x8000) != 0) + ((86 * (v11 - 65)) >> 8) + 50);
            }

            else
            {
              v13 = v12;
            }

            v5[v6] = v13;
            goto LABEL_18;
          }
        }

        else if ((*(v7 + 4 * v9 + 60) & 0x100) != 0)
        {
          goto LABEL_6;
        }

        if ((v9 - 48) > 9)
        {
          if (v9 == 43 && !v6)
          {
            *v5 = 43;
            v6 = 1;
          }

          goto LABEL_19;
        }

        v5[v6] = v9;
LABEL_18:
        ++v6;
LABEL_19:
        --v3;
      }

      while (v3);
    }

    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E696AEC0] stringWithCharacters:v5 length:v6];
    v17 = [v15 stringWithFormat:@"%@:%@", @"tel", v16];

    v14 = [MEMORY[0x1E695DFF8] URLWithString:v17];
    free(v4);
    free(v5);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)isBasebandLogURL
{
  v1 = [a1 phoneNumber];
  v2 = [v1 rangeOfString:@"?"];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v1 substringToIndex:v2];

    v1 = v3;
  }

  if (v1)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"*5005*78283#"];
    v5 = [v1 isEqual:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)isEmergencyCallURL
{
  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"telemergencycall"];

  return v2;
}

- (uint64_t)isVoicemailURL
{
  v2 = [MEMORY[0x1E695DFF8] telephonyURLForVoicemail];
  v3 = [v2 isEqual:a1];

  return v3;
}

- (id)telephonyParameterDictionary
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [a1 _mobilePhoneQueryParameters];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = [a1 _mobilePhonePathParameters];

    v3 = v4;
    if (![v4 count])
    {
      goto LABEL_5;
    }
  }

  [v2 addEntriesFromDictionary:v3];
LABEL_5:

  return v2;
}

- (id)_mobilePhonePathParameters
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = [a1 absoluteString];
  v2 = [v1 componentsSeparatedByString:@"/"];
  v3 = v2;
  if (v2 && [v2 count] >= 2)
  {
    v4 = [v3 objectAtIndex:1];
    v5 = [MEMORY[0x1E695DF90] dictionary];
    if ([v4 length])
    {
      v16 = v4;
      v17 = v1;
      v6 = [v4 componentsSeparatedByString:@"&"];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:@"="];
            if ([v11 count] == 2)
            {
              v12 = [v11 objectAtIndex:1];
              v13 = [v11 objectAtIndex:0];
              [v5 setObject:v12 forKey:v13];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }

      v4 = v16;
      v1 = v17;
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_mobilePhoneQueryParameters
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(a1, "_TelephonyUtilities_telURLQueryParameters");
  if (v2)
  {
    goto LABEL_20;
  }

  v3 = [a1 query];
  v4 = v3;
  if (v3 && ![v3 isEqual:&stru_1F098C218])
  {
    object = a1;
    goto LABEL_8;
  }

  v5 = [a1 resourceSpecifier];
  v6 = [v5 hasPrefix:@"//"];

  if (v6)
  {
LABEL_19:

    v2 = 0;
    goto LABEL_20;
  }

  v7 = [a1 resourceSpecifier];
  v8 = [v7 componentsSeparatedByString:@"?"];

  if ([v8 count] != 2)
  {

    goto LABEL_19;
  }

  object = a1;
  v9 = [v8 objectAtIndex:1];

  v4 = v9;
LABEL_8:
  [MEMORY[0x1E695DF90] dictionary];
  v24 = v23 = v4;
  v10 = [v4 componentsSeparatedByString:@"&"];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v25 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v15 count] == 2)
        {
          v16 = [v15 objectAtIndex:1];
          v17 = [v16 stringByRemovingPercentEncoding];
          v18 = [v15 objectAtIndex:0];
          v19 = [v18 stringByRemovingPercentEncoding];
          [v24 setObject:v17 forKey:v19];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v24];
  objc_setAssociatedObject(object, "_TelephonyUtilities_telURLQueryParameters", v2, 0x301);

LABEL_20:
  v20 = *MEMORY[0x1E69E9840];

  return v2;
}

- (uint64_t)isPhoneAppVoicemailURL
{
  v1 = [a1 scheme];
  v2 = [v1 isEqualToString:@"vmshow"];

  return v2;
}

- (void)voicemailRecordID
{
  if ([a1 isPhoneAppVoicemailURL])
  {
    v2 = objc_alloc(MEMORY[0x1E696AF20]);
    v3 = [a1 absoluteString];
    v4 = [v2 initWithString:v3];

    v5 = [v4 queryItems];
    v6 = [v5 firstObject];

    v7 = [v6 name];
    if ([v7 isEqualToString:@"recordID"])
    {
      v8 = [v6 value];

      if (!v8)
      {
LABEL_8:

        return v8;
      }

      v7 = [v6 value];
      v8 = [v7 integerValue];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_8;
  }

  return 0;
}

- (id)recentsUniqueID
{
  v2 = objc_alloc(MEMORY[0x1E696AF20]);
  v3 = [a1 absoluteString];
  v4 = [v2 initWithString:v3];

  v5 = [v4 queryItems];
  v6 = [v5 firstObject];

  v7 = [v6 name];
  if ([v7 isEqualToString:@"uniqueId"])
  {
    v8 = [v6 value];

    if (v8)
    {
      v9 = [v6 value];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)voicemailMessageUUID
{
  if (![a1 isPhoneAppVoicemailURL])
  {
    v8 = 0;
    goto LABEL_9;
  }

  v2 = objc_alloc(MEMORY[0x1E696AF20]);
  v3 = [a1 absoluteString];
  v4 = [v2 initWithString:v3];

  v5 = [v4 queryItems];
  v6 = [v5 firstObject];

  v7 = [v6 name];
  if (![v7 isEqualToString:@"uuid"])
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = [v6 value];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [v6 value];
    v8 = [v9 initWithUUIDString:v7];
LABEL_7:
  }

LABEL_9:

  return v8;
}

+ (id)phoneAppVoicemailURLForRecordID:()Telephony
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v4 setScheme:@"vmshow"];
  v5 = MEMORY[0x1E696AF60];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v6 stringValue];
  v8 = [v5 queryItemWithName:@"recordID" value:v7];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v4 setQueryItems:v9];

  v10 = [v4 URL];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)phoneAppVoicemailURLForMessageUUID:()Telephony
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AF20];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"vmshow"];
  v6 = MEMORY[0x1E696AF60];
  v7 = [v4 UUIDString];

  v8 = [v6 queryItemWithName:@"uuid" value:v7];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v5 setQueryItems:v9];

  v10 = [v5 URL];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)facetimeAppVoicemailURLForMessageUUID:()Telephony
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AF20];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"vmshow"];
  v6 = MEMORY[0x1E696AF60];
  v7 = [v4 UUIDString];

  v8 = [v6 queryItemWithName:@"uuid" value:v7];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v5 setQueryItems:v9];

  v10 = [v5 URL];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (uint64_t)hasTelephonyOrDefaultAppScheme
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [a1 scheme];
  if ([v2 isForceTelephonyScheme:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = [a1 scheme];
    v4 = [v5 isDefaultCallingAppScheme:v6];
  }

  return v4;
}

@end
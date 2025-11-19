@interface NSString(TelephonyUtilities)
+ (id)tu_conversationHandoffDynamicIdentifierForEligibility:()TelephonyUtilities;
+ (id)tu_conversationHandoffDynamicIdentifierWithGroupUUID:()TelephonyUtilities participantIdentifier:uplinkMuted:sendingVideo:;
- (BOOL)destinationIdIsCallControlCode;
- (TUConversationHandoffEligibility)tu_handoffEligibility;
- (id)IDSFormattedDestinationID;
- (id)destinationIDWithoutControlOrPhoneNumberSeparatorCharacters;
- (id)formattedDisplayID;
- (id)normalizedDestinationID;
- (id)normalizedTokenURI;
- (id)tu_stringByAddingBase64Padding;
- (id)tu_stringByStrippingBase64Padding;
- (id)tu_unsignedLongLongNumber;
- (uint64_t)destinationIdIsEmailAddress;
- (uint64_t)destinationIdIsPhoneNumber;
@end

@implementation NSString(TelephonyUtilities)

- (uint64_t)destinationIdIsEmailAddress
{
  result = [a1 length];
  if (result)
  {

    return MEMORY[0x1EEE10788](a1);
  }

  return result;
}

- (uint64_t)destinationIdIsPhoneNumber
{
  result = [a1 length];
  if (result)
  {
    if ([a1 destinationIdIsEmailAddress] & 1) != 0 || (objc_msgSend(a1, "destinationIdIsTemporary") & 1) != 0 || (objc_msgSend(a1, "destinationIdIsPseudonym"))
    {
      return 0;
    }

    else
    {
      return [a1 destinationIdIsHardware] ^ 1;
    }
  }

  return result;
}

- (BOOL)destinationIdIsCallControlCode
{
  if ([a1 length] == 1)
  {
    v2 = [a1 characterAtIndex:0] - 48 >= 6;
  }

  else
  {
    if ([a1 length] != 2)
    {
      return 0;
    }

    v3 = [a1 characterAtIndex:0];
    v4 = [a1 characterAtIndex:1] - 48;
    v2 = (v3 - 49) >= 2 || v4 >= 0xA;
  }

  return !v2;
}

- (id)IDSFormattedDestinationID
{
  v2 = [MEMORY[0x1E696AB08] controlCharacterSet];
  v3 = [a1 stringByRemovingCharactersFromSet:v2];

  if (MEMORY[0x19A8B71F0](v3))
  {
    if (IDSFormattedDestinationID__pred_IDSCopyIDForTemporaryIDIDS != -1)
    {
      [NSString(TelephonyUtilities) IDSFormattedDestinationID];
    }

    v4 = &IDSFormattedDestinationID__IDSCopyIDForTemporaryID;
  }

  else if (MEMORY[0x19A8B71E0](v3))
  {
    if (IDSFormattedDestinationID__pred_IDSCopyIDForPseudonymIDIDS != -1)
    {
      [NSString(TelephonyUtilities) IDSFormattedDestinationID];
    }

    v4 = &IDSFormattedDestinationID__IDSCopyIDForPseudonymID;
  }

  else if (MEMORY[0x19A8B71D0](v3))
  {
    if (IDSFormattedDestinationID__pred_IDSCopyIDForPhoneNumberIDS != -1)
    {
      [NSString(TelephonyUtilities) IDSFormattedDestinationID];
    }

    v4 = &IDSFormattedDestinationID__IDSCopyIDForPhoneNumber;
  }

  else
  {
    if (IDSFormattedDestinationID__pred_IDSCopyIDForEmailAddressIDS != -1)
    {
      [NSString(TelephonyUtilities) IDSFormattedDestinationID];
    }

    v4 = &IDSFormattedDestinationID__IDSCopyIDForEmailAddress;
  }

  v5 = (*v4)(v3);

  return v5;
}

- (id)normalizedTokenURI
{
  v0 = IDSCopyAddressDestinationForDestination();
  v1 = IDSCopyRawAddressForDestination();

  v2 = [v1 _im_normalizedURIString];

  return v2;
}

- (id)destinationIDWithoutControlOrPhoneNumberSeparatorCharacters
{
  v2 = [MEMORY[0x1E696AB08] controlCharacterSet];
  v3 = [a1 stringByRemovingCharactersFromSet:v2];

  if ([a1 _appearsToBePhoneNumber])
  {
    v4 = [MEMORY[0x1E696AB08] phoneNumberSeparatorCharacterSet];
    v5 = [v3 stringByRemovingCharactersFromSet:v4];

    v3 = v5;
  }

  return v3;
}

- (id)normalizedDestinationID
{
  v1 = [TUHandle normalizedHandleWithDestinationID:a1];
  v2 = [v1 value];

  return v2;
}

- (id)formattedDisplayID
{
  v2 = [MEMORY[0x1E696AEC0] stringWithString:a1];
  if ([a1 _appearsToBePhoneNumber])
  {
    if (!formattedDisplayID_sCountryCode)
    {
      v3 = [MEMORY[0x1E695DF58] currentLocale];
      v4 = [v3 objectForKey:*MEMORY[0x1E695D978]];
      v5 = [v4 lowercaseString];
      v6 = formattedDisplayID_sCountryCode;
      formattedDisplayID_sCountryCode = v5;
    }

    v7 = *MEMORY[0x1E695E480];
    v8 = CFPhoneNumberCreate();
    if (v8)
    {
      v9 = v8;
      String = CFPhoneNumberCreateString();
      if (!String)
      {
        String = CFPhoneNumberCreateString();
      }

      CFRelease(v9);
      if ([String length])
      {
        v11 = [String LTRString];

        v2 = v11;
      }
    }
  }

  return v2;
}

- (id)tu_stringByStrippingBase64Padding
{
  if (([a1 length] & 3) != 0)
  {
    [MEMORY[0x1E696AEC0] stringWithString:a1];
  }

  else
  {
    [a1 stringByReplacingOccurrencesOfString:@"=" withString:&stru_1F098C218];
  }
  v2 = ;

  return v2;
}

- (id)tu_stringByAddingBase64Padding
{
  if (([a1 length] & 3) != 0)
  {
    [a1 stringByPaddingToLength:objc_msgSend(a1 withString:"length") - (objc_msgSend(a1 startingAtIndex:{"length") & 3) + 4, @"=", 0}];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithString:a1];
  }
  v2 = ;

  return v2;
}

- (id)tu_unsignedLongLongNumber
{
  v2 = [a1 length];
  if (v2)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{strtoull(objc_msgSend(a1, "UTF8String"), 0, 0)}];
  }

  return v2;
}

- (TUConversationHandoffEligibility)tu_handoffEligibility
{
  if ([a1 length])
  {
    v2 = [a1 componentsSeparatedByString:@"~"];
    if ([v2 count] < 2)
    {
      v7 = 0;
      v5 = 0;
      v11 = 0;
    }

    else
    {
      v3 = objc_alloc(MEMORY[0x1E696AFB0]);
      v4 = [v2 objectAtIndexedSubscript:0];
      v5 = [v3 initWithUUIDString:v4];

      v6 = [v2 objectAtIndexedSubscript:1];
      v7 = [v6 tu_unsignedLongLongNumber];

      v8 = [v2 objectAtIndexedSubscript:2];
      if (v8)
      {
        v9 = [v2 objectAtIndexedSubscript:2];
        v10 = [v9 isEqualToString:@"1"];
      }

      else
      {
        v10 = 0;
      }

      v12 = [v2 objectAtIndexedSubscript:3];
      if (v12)
      {
        v13 = v12;
        v14 = [v2 objectAtIndexedSubscript:3];
        v15 = [v14 isEqualToString:@"0"];

        v16 = v15 ^ 1;
      }

      else
      {
        v16 = 1;
      }

      v11 = 0;
      if (v5 && v7)
      {
        v11 = objc_alloc_init(TUConversationHandoffEligibility);
        [(TUConversationHandoffEligibility *)v11 setEligible:1];
        [(TUConversationHandoffEligibility *)v11 setConversationGroupUUID:v5];
        [(TUConversationHandoffEligibility *)v11 setUplinkMuted:v10];
        [(TUConversationHandoffEligibility *)v11 setSendingVideo:v16 & 1];
        v17 = objc_alloc_init(TUConversationParticipantAssociation);
        [(TUConversationHandoffEligibility *)v11 setAssociation:v17];

        v18 = [v7 unsignedLongLongValue];
        v19 = [(TUConversationHandoffEligibility *)v11 association];
        [v19 setIdentifier:v18];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)tu_conversationHandoffDynamicIdentifierWithGroupUUID:()TelephonyUtilities participantIdentifier:uplinkMuted:sendingVideo:
{
  v18[4] = *MEMORY[0x1E69E9840];
  v9 = [a3 UUIDString];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a4, v9];
  v11 = v10;
  v12 = @"0";
  if (a5)
  {
    v13 = @"1";
  }

  else
  {
    v13 = @"0";
  }

  v18[1] = v10;
  v18[2] = v13;
  if (a6)
  {
    v12 = @"1";
  }

  v18[3] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];

  v15 = [v14 componentsJoinedByString:@"~"];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)tu_conversationHandoffDynamicIdentifierForEligibility:()TelephonyUtilities
{
  v4 = a3;
  v5 = [v4 conversationGroupUUID];
  v6 = [v4 association];
  v7 = [v6 identifier];
  v8 = [v4 isUplinkMuted];
  v9 = [v4 isSendingVideo];

  v10 = [a1 tu_conversationHandoffDynamicIdentifierWithGroupUUID:v5 participantIdentifier:v7 uplinkMuted:v8 sendingVideo:v9];

  return v10;
}

@end
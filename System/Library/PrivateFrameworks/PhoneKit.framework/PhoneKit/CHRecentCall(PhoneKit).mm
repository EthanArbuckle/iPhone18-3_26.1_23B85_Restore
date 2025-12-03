@interface CHRecentCall(PhoneKit)
+ (id)predicateForRecentCallsMatchingCallStatus:()PhoneKit;
+ (id)predicateForRecentCallsMatchingRead:()PhoneKit;
- (id)familyName;
- (id)fullName;
- (id)givenName;
- (id)handle;
- (id)ph_uniqueIDs;
- (uint64_t)ph_supportsLocalParticipantBadge;
@end

@implementation CHRecentCall(PhoneKit)

+ (id)predicateForRecentCallsMatchingCallStatus:()PhoneKit
{
  v0 = MEMORY[0x277CCAC30];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v2 = [v0 predicateWithFormat:@"(callStatus == %@)", v1];

  return v2;
}

+ (id)predicateForRecentCallsMatchingRead:()PhoneKit
{
  v0 = MEMORY[0x277CCAC30];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v2 = [v0 predicateWithFormat:@"(read == %@)", v1];

  return v2;
}

- (id)handle
{
  callerId = [self callerId];
  if (![callerId length])
  {
    v4 = 0;
    goto LABEL_16;
  }

  handleType = [self handleType];
  v4 = 0;
  if (handleType > 1)
  {
    if (handleType == 2)
    {
      v5 = objc_alloc(MEMORY[0x277D6EEE8]);
      v6 = 2;
    }

    else
    {
      if (handleType != 3)
      {
        goto LABEL_16;
      }

      v5 = objc_alloc(MEMORY[0x277D6EEE8]);
      v6 = 3;
    }
  }

  else
  {
    if (!handleType)
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CHRecentCall(PhoneKit) *)v7 handle];
      }

      v8 = [MEMORY[0x277D6EEE8] handleWithDestinationID:callerId];
      goto LABEL_15;
    }

    if (handleType != 1)
    {
      goto LABEL_16;
    }

    v5 = objc_alloc(MEMORY[0x277D6EEE8]);
    v6 = 1;
  }

  v8 = [v5 initWithType:v6 value:callerId];
LABEL_15:
  v4 = v8;
LABEL_16:

  return v4;
}

- (uint64_t)ph_supportsLocalParticipantBadge
{
  localParticipantUUID = [self localParticipantUUID];
  outgoingLocalParticipantUUID = [self outgoingLocalParticipantUUID];
  v4 = outgoingLocalParticipantUUID;
  v5 = 0;
  if (localParticipantUUID && outgoingLocalParticipantUUID)
  {
    v5 = [localParticipantUUID isEqual:outgoingLocalParticipantUUID];
  }

  return v5;
}

- (id)ph_uniqueIDs
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  uniqueId = [self uniqueId];
  [v2 addObject:uniqueId];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  callOccurrences = [self callOccurrences];
  v5 = [callOccurrences countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x277CF7D70];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(callOccurrences);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:v8];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v6 = [callOccurrences countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v2 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)fullName
{
  identityExtension = [self identityExtension];

  if (identityExtension)
  {
    name = [self name];
    v4 = MEMORY[0x277CCACA8];
    identityExtension2 = [self identityExtension];
    v6 = [v4 stringWithFormat:@"%@: ", identityExtension2];
    v7 = [name stringByReplacingOccurrencesOfString:v6 withString:&stru_287038A20];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)givenName
{
  fullName = [self fullName];
  v2 = [fullName componentsSeparatedByString:@" "];

  if (v2 && [v2 count])
  {
    firstObject = [v2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)familyName
{
  fullName = [self fullName];
  v2 = [fullName componentsSeparatedByString:@" "];

  if (v2 && [v2 count] >= 2)
  {
    lastObject = [v2 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

@end
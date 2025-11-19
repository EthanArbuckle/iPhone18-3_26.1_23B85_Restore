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
  v2 = [a1 callerId];
  if (![v2 length])
  {
    v4 = 0;
    goto LABEL_16;
  }

  v3 = [a1 handleType];
  v4 = 0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v5 = objc_alloc(MEMORY[0x277D6EEE8]);
      v6 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_16;
      }

      v5 = objc_alloc(MEMORY[0x277D6EEE8]);
      v6 = 3;
    }
  }

  else
  {
    if (!v3)
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CHRecentCall(PhoneKit) *)v7 handle];
      }

      v8 = [MEMORY[0x277D6EEE8] handleWithDestinationID:v2];
      goto LABEL_15;
    }

    if (v3 != 1)
    {
      goto LABEL_16;
    }

    v5 = objc_alloc(MEMORY[0x277D6EEE8]);
    v6 = 1;
  }

  v8 = [v5 initWithType:v6 value:v2];
LABEL_15:
  v4 = v8;
LABEL_16:

  return v4;
}

- (uint64_t)ph_supportsLocalParticipantBadge
{
  v2 = [a1 localParticipantUUID];
  v3 = [a1 outgoingLocalParticipantUUID];
  v4 = v3;
  v5 = 0;
  if (v2 && v3)
  {
    v5 = [v2 isEqual:v3];
  }

  return v5;
}

- (id)ph_uniqueIDs
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [a1 uniqueId];
  [v2 addObject:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a1 callOccurrences];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:v8];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v2 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)fullName
{
  v2 = [a1 identityExtension];

  if (v2)
  {
    v3 = [a1 name];
    v4 = MEMORY[0x277CCACA8];
    v5 = [a1 identityExtension];
    v6 = [v4 stringWithFormat:@"%@: ", v5];
    v7 = [v3 stringByReplacingOccurrencesOfString:v6 withString:&stru_287038A20];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)givenName
{
  v1 = [a1 fullName];
  v2 = [v1 componentsSeparatedByString:@" "];

  if (v2 && [v2 count])
  {
    v3 = [v2 firstObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)familyName
{
  v1 = [a1 fullName];
  v2 = [v1 componentsSeparatedByString:@" "];

  if (v2 && [v2 count] >= 2)
  {
    v3 = [v2 lastObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
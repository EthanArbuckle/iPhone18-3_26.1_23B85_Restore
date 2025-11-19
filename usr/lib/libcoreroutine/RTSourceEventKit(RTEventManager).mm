@interface RTSourceEventKit(RTEventManager)
+ (uint64_t)isParticipationOptional:()RTEventManager;
- (id)initWithEvent:()RTEventManager;
@end

@implementation RTSourceEventKit(RTEventManager)

- (id)initWithEvent:()RTEventManager
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 calendar];
    v7 = [v6 sharingStatus];

    v8 = 2 * (v7 == 2);
    if (v7 == 1)
    {
      v8 = 1;
    }

    v29 = v8;
    v9 = [v5 customObjectForKey:@"SuggestionsSchemaOrg"];
    objc_opt_class();
    v30 = v9;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [v10 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [v10 firstObject];
      }

      else
      {
        v13 = 0;
      }

      v28 = v13;
    }

    else
    {
      v28 = 0;
    }

    v27 = [v5 eventIdentifier];
    v26 = [v5 startDate];
    v15 = [v5 endDate];
    v16 = [v5 title];
    v17 = [v5 location];
    v18 = [v5 isAllDay];
    v19 = [v5 isTentative];
    v20 = [objc_opt_class() isParticipationOptional:v5];
    v21 = [v5 suggestionInfo];
    v22 = [v21 opaqueKey];
    BYTE1(v25) = v20;
    LOBYTE(v25) = v19;
    v23 = [a1 initWithEventIdentifier:v27 startDate:v26 endDate:v15 title:v16 location:v17 allDay:v18 sharingStatus:v29 tentative:v25 participationOptional:v22 suggestionInfo_opaqueKey:v28 suggestionsSchemaOrg:?];

    a1 = v23;
    v14 = v23;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (uint64_t)isParticipationOptional:()RTEventManager
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isSelfOrganized])
  {
    v4 = 0;
  }

  else
  {
    [v3 attendees];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v13 = 0u;
    v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 isCurrentUser] && objc_msgSend(v8, "participantRole") == 2)
          {
            v4 = 1;
            goto LABEL_14;
          }
        }

        v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v4;
}

@end
@interface NCNotificationRequest(ATXUserNotificationAdditions)
- (BOOL)isSummarized;
- (id)_communicationContactIdentifiers;
- (id)atxUserNotification;
- (id)summary;
- (uint64_t)_atxAttachmentType;
- (uint64_t)_atxPriorityStatusFromNCNotificationRequestPriorityStatus:()ATXUserNotificationAdditions;
- (uint64_t)_atxSummaryStatusFromNCNotificationRequestSummaryStatus:()ATXUserNotificationAdditions;
- (uint64_t)_atxUrgencyFromInterruptionLevel:()ATXUserNotificationAdditions;
- (uint64_t)isSummaryEnabled;
@end

@implementation NCNotificationRequest(ATXUserNotificationAdditions)

- (id)atxUserNotification
{
  v2 = [a1 uuid];

  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CEB958]);
    v4 = [a1 uuid];
    v5 = [a1 content];
    v6 = [v5 date];
    [v6 timeIntervalSinceReferenceDate];
    v2 = [v3 initWithUUID:v4 timestamp:?];

    v7 = [a1 notificationIdentifier];
    [v2 setNotificationID:v7];

    v8 = [a1 context];
    v9 = [v8 objectForKey:@"recordDate"];
    [v2 setRecordDate:v9];

    v10 = [a1 content];
    v11 = [v10 title];
    [v2 setTitle:v11];

    v12 = [a1 content];
    v13 = [v12 subtitle];
    [v2 setSubtitle:v13];

    v14 = [a1 content];
    v15 = [v14 message];
    [v2 setBody:v15];

    v16 = [a1 sectionIdentifier];
    [v2 setBundleID:v16];

    v17 = [a1 sectionIdentifier];
    [v2 setSectionID:v17];

    v18 = [a1 uniqueThreadIdentifier];
    [v2 setThreadID:v18];

    v19 = [a1 _communicationContactIdentifiers];
    [v2 setContactIDs:v19];

    v20 = [a1 content];
    v21 = [v20 contentType];
    v22 = *MEMORY[0x277CE2160];
    if ([v21 isEqualToString:*MEMORY[0x277CE2160]])
    {
      [v2 setIsMessage:1];
    }

    else
    {
      v23 = [a1 content];
      v24 = [v23 contentType];
      [v2 setIsMessage:{objc_msgSend(v24, "isEqualToString:", *MEMORY[0x277CE2158])}];
    }

    v25 = [a1 content];
    v26 = [v25 contentType];
    [v2 setIsGroupMessage:{objc_msgSend(v26, "isEqualToString:", v22)}];

    [v2 setUrgency:{objc_msgSend(a1, "_atxUrgencyFromInterruptionLevel:", objc_msgSend(a1, "interruptionLevel"))}];
    [v2 setAttachmentType:{objc_msgSend(a1, "_atxAttachmentType")}];
    [a1 relevanceScore];
    [v2 setAppSpecifiedScore:v27];
    [v2 setIsPartOfStack:0];
    [v2 setIsStackSummary:0];
    v28 = [a1 summary];
    [v2 setSummary:v28];

    [v2 setIsSummarized:{objc_msgSend(a1, "isSummarized")}];
    [v2 setPriorityStatus:{objc_msgSend(a1, "_atxPriorityStatusFromNCNotificationRequestPriorityStatus:", objc_msgSend(a1, "priorityStatus"))}];
    [v2 setSummaryStatus:{objc_msgSend(a1, "_atxSummaryStatusFromNCNotificationRequestSummaryStatus:", objc_msgSend(a1, "summaryStatus"))}];
    [v2 setIsNotificationSummaryEnabled:{objc_msgSend(a1, "isSummaryEnabled")}];
    [v2 setIsPriorityNotificationEnabled:{objc_msgSend(a1, "isPriorityNotificationsEnabled")}];
  }

  return v2;
}

- (id)_communicationContactIdentifiers
{
  v1 = [a1 content];
  v2 = [v1 communicationContext];
  v3 = [v2 sender];
  v4 = [v3 cnContactIdentifier];

  if (v4)
  {
    v5 = objc_opt_new();
    [v5 addObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_atxAttachmentType
{
  v1 = [a1 userNotification];
  v2 = [v1 request];
  v3 = [v2 content];
  v4 = [v3 attachments];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 type];
    v7 = UNNotificationAttachmentFamilyFromTypeIdentifier();

    if ((v7 - 1) > 2)
    {
      v8 = 4;
    }

    else
    {
      v8 = qword_21E946788[v7 - 1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)summary
{
  v1 = [a1 content];
  v2 = [v1 summary];
  v3 = [v2 string];

  return v3;
}

- (BOOL)isSummarized
{
  v1 = [a1 summary];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 length] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)isSummaryEnabled
{
  v1 = [a1 options];
  v2 = [v1 canShowSummary];

  return v2;
}

- (uint64_t)_atxUrgencyFromInterruptionLevel:()ATXUserNotificationAdditions
{
  if (a3 >= 4)
  {
    return 4;
  }

  else
  {
    return 3 - a3;
  }
}

- (uint64_t)_atxPriorityStatusFromNCNotificationRequestPriorityStatus:()ATXUserNotificationAdditions
{
  if ((a3 - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (uint64_t)_atxSummaryStatusFromNCNotificationRequestSummaryStatus:()ATXUserNotificationAdditions
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end
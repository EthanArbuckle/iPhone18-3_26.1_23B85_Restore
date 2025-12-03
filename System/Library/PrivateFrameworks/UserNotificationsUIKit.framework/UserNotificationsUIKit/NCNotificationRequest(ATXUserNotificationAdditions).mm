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
  uuid = [self uuid];

  if (uuid)
  {
    v3 = objc_alloc(MEMORY[0x277CEB958]);
    uuid2 = [self uuid];
    content = [self content];
    date = [content date];
    [date timeIntervalSinceReferenceDate];
    uuid = [v3 initWithUUID:uuid2 timestamp:?];

    notificationIdentifier = [self notificationIdentifier];
    [uuid setNotificationID:notificationIdentifier];

    context = [self context];
    v9 = [context objectForKey:@"recordDate"];
    [uuid setRecordDate:v9];

    content2 = [self content];
    title = [content2 title];
    [uuid setTitle:title];

    content3 = [self content];
    subtitle = [content3 subtitle];
    [uuid setSubtitle:subtitle];

    content4 = [self content];
    message = [content4 message];
    [uuid setBody:message];

    sectionIdentifier = [self sectionIdentifier];
    [uuid setBundleID:sectionIdentifier];

    sectionIdentifier2 = [self sectionIdentifier];
    [uuid setSectionID:sectionIdentifier2];

    uniqueThreadIdentifier = [self uniqueThreadIdentifier];
    [uuid setThreadID:uniqueThreadIdentifier];

    _communicationContactIdentifiers = [self _communicationContactIdentifiers];
    [uuid setContactIDs:_communicationContactIdentifiers];

    content5 = [self content];
    contentType = [content5 contentType];
    v22 = *MEMORY[0x277CE2160];
    if ([contentType isEqualToString:*MEMORY[0x277CE2160]])
    {
      [uuid setIsMessage:1];
    }

    else
    {
      content6 = [self content];
      contentType2 = [content6 contentType];
      [uuid setIsMessage:{objc_msgSend(contentType2, "isEqualToString:", *MEMORY[0x277CE2158])}];
    }

    content7 = [self content];
    contentType3 = [content7 contentType];
    [uuid setIsGroupMessage:{objc_msgSend(contentType3, "isEqualToString:", v22)}];

    [uuid setUrgency:{objc_msgSend(self, "_atxUrgencyFromInterruptionLevel:", objc_msgSend(self, "interruptionLevel"))}];
    [uuid setAttachmentType:{objc_msgSend(self, "_atxAttachmentType")}];
    [self relevanceScore];
    [uuid setAppSpecifiedScore:v27];
    [uuid setIsPartOfStack:0];
    [uuid setIsStackSummary:0];
    summary = [self summary];
    [uuid setSummary:summary];

    [uuid setIsSummarized:{objc_msgSend(self, "isSummarized")}];
    [uuid setPriorityStatus:{objc_msgSend(self, "_atxPriorityStatusFromNCNotificationRequestPriorityStatus:", objc_msgSend(self, "priorityStatus"))}];
    [uuid setSummaryStatus:{objc_msgSend(self, "_atxSummaryStatusFromNCNotificationRequestSummaryStatus:", objc_msgSend(self, "summaryStatus"))}];
    [uuid setIsNotificationSummaryEnabled:{objc_msgSend(self, "isSummaryEnabled")}];
    [uuid setIsPriorityNotificationEnabled:{objc_msgSend(self, "isPriorityNotificationsEnabled")}];
  }

  return uuid;
}

- (id)_communicationContactIdentifiers
{
  content = [self content];
  communicationContext = [content communicationContext];
  sender = [communicationContext sender];
  cnContactIdentifier = [sender cnContactIdentifier];

  if (cnContactIdentifier)
  {
    v5 = objc_opt_new();
    [v5 addObject:cnContactIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_atxAttachmentType
{
  userNotification = [self userNotification];
  request = [userNotification request];
  content = [request content];
  attachments = [content attachments];
  firstObject = [attachments firstObject];

  if (firstObject)
  {
    type = [firstObject type];
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
  content = [self content];
  summary = [content summary];
  string = [summary string];

  return string;
}

- (BOOL)isSummarized
{
  summary = [self summary];
  v2 = summary;
  if (summary)
  {
    v3 = [summary length] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)isSummaryEnabled
{
  options = [self options];
  canShowSummary = [options canShowSummary];

  return canShowSummary;
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
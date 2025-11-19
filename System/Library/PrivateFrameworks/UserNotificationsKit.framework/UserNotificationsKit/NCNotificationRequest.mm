@interface NCNotificationRequest
+ (NCNotificationRequest)notificationRequestWithActionWithId:(id)a3 runner:(id)a4;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 lockScreenPriority:(unint64_t)a4 lockScreenPersistence:(unint64_t)a5;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 requestDestinations:(id)a4 alertOptionsSuppression:(unint64_t)a5;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 requestDestinations:(id)a4 isCritical:(BOOL)a5;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 requestDestinations:(id)a4 lockScreenPersistence:(unint64_t)a5;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 requestDestinations:(id)a4 lockScreenPersistence:(unint64_t)a5 alertOptionsSuppression:(unint64_t)a6;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 sectionId:(id)a4 threadId:(id)a5;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 threadId:(id)a4;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 requestDestination:(id)a5;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 subSectionIds:(id)a5 requestDestinations:(id)a6;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 threadId:(id)a5 subSectionIds:(id)a6 title:(id)a7 message:(id)a8 timestamp:(id)a9 destinations:(id)a10 options:(id)a11;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 threadId:(id)a5 subSectionIds:(id)a6 title:(id)a7 message:(id)a8 timestamp:(id)a9 destinations:(id)a10 options:(id)a11 alertOptions:(id)a12 uuid:(id)a13;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 threadId:(id)a5 subSectionIds:(id)a6 title:(id)a7 message:(id)a8 timestamp:(id)a9 destinations:(id)a10 options:(id)a11 uuid:(id)a12;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 threadId:(id)a5 title:(id)a6 message:(id)a7 timestamp:(id)a8 destination:(id)a9;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 threadId:(id)a5 title:(id)a6 message:(id)a7 timestamp:(id)a8 destination:(id)a9 uuid:(id)a10;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 threadId:(id)a5 title:(id)a6 message:(id)a7 timestamp:(id)a8 destinations:(id)a9;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 subSectionIds:(id)a4;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 threadId:(id)a4;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 threadId:(id)a4 notificationId:(id)a5 requestDestination:(id)a6;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 threadId:(id)a4 notificationId:(id)a5 requestDestinations:(id)a6;
+ (NCNotificationRequest)notificationRequestWithThreadId:(id)a3;
+ (id)notificationRequest;
- (BOOL)isCollapsibleWithNotificationRequest:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesRequest:(id)a3;
- (BOOL)matchesThreadForRequest:(id)a3;
- (NCNotificationRequest)initWithNotificationRequest:(id)a3;
- (NSString)topLevelSectionIdentifier;
- (NSString)uniqueThreadIdentifier;
- (id)_actionsDescriptionForEnvironment:(id)a3;
- (id)_actionsLoggingDescription;
- (id)_interruptionLevelLoggingDescription;
- (id)_priorityStatusLoggingDescription;
- (id)_summaryStatusLoggingDescription;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)loggingDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)_updateIdentifiersString;
@end

@implementation NCNotificationRequest

- (NSString)topLevelSectionIdentifier
{
  v3 = [(NCNotificationRequest *)self parentSectionIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NCNotificationRequest *)self sectionIdentifier];
  }

  v6 = v5;

  return v6;
}

- (id)loggingDescription
{
  v16 = MEMORY[0x277CCACA8];
  v19 = [(NCNotificationRequest *)self notificationIdentifier];
  v20 = [v19 un_logDigest];
  v3 = [(NCNotificationRequest *)self sectionIdentifier];
  v18 = [(NCNotificationRequest *)self threadIdentifier];
  v4 = [v18 un_logDigest];
  v5 = [(NCNotificationRequest *)self categoryIdentifier];
  v6 = [(NCNotificationRequest *)self timestamp];
  v7 = [(NCNotificationRequest *)self _interruptionLevelLoggingDescription];
  v8 = [(NCNotificationRequest *)self _priorityStatusLoggingDescription];
  v9 = [(NCNotificationRequest *)self _summaryStatusLoggingDescription];
  [(NCNotificationRequest *)self relevanceScore];
  v11 = v10;
  v12 = [(NCNotificationRequest *)self filterCriteria];
  v13 = [(NCNotificationRequest *)self _actionsLoggingDescription];
  v14 = [(NCNotificationRequest *)self requestDestinations];
  v17 = [v16 stringWithFormat:@"id: %@ section: %@; thread: %@; category: %@; timestamp: %@; interruption-level: %@; priorityStatus: %@; summaryStatus: %@; relevance-score: %.2f; filter-criteria: %@; actions: [ %@ ]; destinations: [ %@ ]", v20, v3, v4, v5, v6, v7, v8, v9, *&v11, v12, v13, v14];;

  return v17;
}

- (NSString)uniqueThreadIdentifier
{
  if ([(NCNotificationRequest *)self isUniqueThreadIdentifier])
  {
    v3 = [(NCNotificationRequest *)self threadIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_interruptionLevelLoggingDescription
{
  v2 = [(NCNotificationRequest *)self interruptionLevel];
  if (v2 - 1 > 2)
  {
    return @"passive";
  }

  else
  {
    return off_279E0DC48[v2 - 1];
  }
}

- (id)_priorityStatusLoggingDescription
{
  v2 = [(NCNotificationRequest *)self priorityStatus];
  if (v2 - 1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_279E0DC60[v2 - 1];
  }
}

- (id)_summaryStatusLoggingDescription
{
  v2 = [(NCNotificationRequest *)self summaryStatus];
  if (v2 - 1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279E0DC88[v2 - 1];
  }
}

- (id)_actionsLoggingDescription
{
  v3 = objc_opt_new();
  v4 = [(NCNotificationRequest *)self _actionsDescriptionForEnvironment:@"NCNotificationActionEnvironmentMinimal"];
  [v3 appendFormat:@"minimal: %@", v4];

  v5 = [(NCNotificationRequest *)self _actionsDescriptionForEnvironment:@"NCNotificationActionEnvironmentDefault"];
  [v3 appendFormat:@", default: %@", v5];

  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sectionIdentifier hash];
  v4 = [(NSString *)self->_notificationIdentifier hash]+ v3;
  v5 = [(NSString *)self->_threadIdentifier hash];
  v6 = v4 + v5 + [(NSString *)self->_categoryIdentifier hash];
  v7 = [(NSSet *)self->_subSectionIdentifiers hash];
  v8 = v7 + [(NSString *)self->_highestPrioritySubSectionIdentifier hash];
  v9 = v6 + v8 + [(NSArray *)self->_intentIdentifiers hash];
  v10 = [(NSArray *)self->_peopleIdentifiers hash];
  v11 = v10 + [(NSString *)self->_parentSectionIdentifier hash];
  v12 = v11 + [(NSDate *)self->_timestamp hash];
  v13 = v9 + v12 + [(NCNotificationContent *)self->_content hash];
  v14 = [(NSDictionary *)self->_context hash];
  v15 = v14 + [(NSSet *)self->_settingsSections hash];
  v16 = v13 + v15 + [(NCNotificationSound *)self->_sound hash]+ self->_interruptionLevel + self->_priorityStatus;
  summaryStatus = self->_summaryStatus;
  v18 = summaryStatus + [(NSUUID *)self->_uuid hash];
  *&v19 = self->_relevanceScore;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v21 = v18 + [v20 hash];
  v22 = v21 + [(NSString *)self->_filterCriteria hash];
  v23 = v16 + v22 + [(DNDClientEventBehavior *)self->_eventBehavior hash];
  isHighlight = self->_isHighlight;

  return v23 + isHighlight;
}

- (BOOL)isCollapsibleWithNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationRequest *)self sectionIdentifier];
  v6 = [v4 sectionIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (NCNotificationRequest)initWithNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationRequest *)self init];
  if (v5)
  {
    v6 = [v4 sectionIdentifier];
    v7 = [v6 copy];
    sectionIdentifier = v5->_sectionIdentifier;
    v5->_sectionIdentifier = v7;

    v9 = [v4 notificationIdentifier];
    v10 = [v9 copy];
    notificationIdentifier = v5->_notificationIdentifier;
    v5->_notificationIdentifier = v10;

    v12 = [v4 threadIdentifier];
    v13 = [v12 copy];
    threadIdentifier = v5->_threadIdentifier;
    v5->_threadIdentifier = v13;

    v15 = [v4 categoryIdentifier];
    v16 = [v15 copy];
    categoryIdentifier = v5->_categoryIdentifier;
    v5->_categoryIdentifier = v16;

    v18 = [v4 subSectionIdentifiers];
    v19 = [v18 copy];
    subSectionIdentifiers = v5->_subSectionIdentifiers;
    v5->_subSectionIdentifiers = v19;

    v21 = [v4 highestPrioritySubSectionIdentifier];
    v22 = [v21 copy];
    highestPrioritySubSectionIdentifier = v5->_highestPrioritySubSectionIdentifier;
    v5->_highestPrioritySubSectionIdentifier = v22;

    v24 = [v4 intentIdentifiers];
    v25 = [v24 copy];
    intentIdentifiers = v5->_intentIdentifiers;
    v5->_intentIdentifiers = v25;

    v27 = [v4 peopleIdentifiers];
    v28 = [v27 copy];
    peopleIdentifiers = v5->_peopleIdentifiers;
    v5->_peopleIdentifiers = v28;

    v30 = [v4 parentSectionIdentifier];
    v31 = [v30 copy];
    parentSectionIdentifier = v5->_parentSectionIdentifier;
    v5->_parentSectionIdentifier = v31;

    v5->_threadIdentifierUnique = [v4 isUniqueThreadIdentifier];
    v33 = [v4 eventBehavior];
    v34 = [v33 copy];
    eventBehavior = v5->_eventBehavior;
    v5->_eventBehavior = v34;

    v5->_isHighlight = [v4 isHighlight];
    v36 = [v4 timestamp];
    v37 = [v36 copy];
    timestamp = v5->_timestamp;
    v5->_timestamp = v37;

    v39 = [v4 requestDestinations];
    v40 = [v39 copy];
    requestDestinations = v5->_requestDestinations;
    v5->_requestDestinations = v40;

    v42 = [v4 content];
    v43 = [v42 copy];
    content = v5->_content;
    v5->_content = v43;

    v45 = [v4 options];
    v46 = [v45 copy];
    options = v5->_options;
    v5->_options = v46;

    v48 = [v4 alertOptions];
    v49 = [v48 copy];
    alertOptions = v5->_alertOptions;
    v5->_alertOptions = v49;

    v51 = [v4 context];
    v52 = [v51 copy];
    context = v5->_context;
    v5->_context = v52;

    v54 = [v4 settingsSections];
    v55 = [v54 copy];
    settingsSections = v5->_settingsSections;
    v5->_settingsSections = v55;

    v57 = [v4 sound];
    v58 = [v57 copy];
    sound = v5->_sound;
    v5->_sound = v58;

    v60 = [v4 cancelAction];
    cancelAction = v5->_cancelAction;
    v5->_cancelAction = v60;

    v62 = [v4 clearAction];
    clearAction = v5->_clearAction;
    v5->_clearAction = v62;

    v64 = [v4 closeAction];
    closeAction = v5->_closeAction;
    v5->_closeAction = v64;

    v66 = [v4 defaultAction];
    defaultAction = v5->_defaultAction;
    v5->_defaultAction = v66;

    v68 = [v4 silenceAction];
    silenceAction = v5->_silenceAction;
    v5->_silenceAction = v68;

    v70 = [v4 inlineAction];
    inlineAction = v5->_inlineAction;
    v5->_inlineAction = v70;

    v72 = [v4 supplementaryActions];
    v73 = [v72 copy];
    supplementaryActions = v5->_supplementaryActions;
    v5->_supplementaryActions = v73;

    v75 = [v4 userNotification];
    userNotification = v5->_userNotification;
    v5->_userNotification = v75;

    v5->_isCollapsedNotification = [v4 isCollapsedNotification];
    v5->_collapsedNotificationsCount = [v4 collapsedNotificationsCount];
    v77 = [v4 sourceInfo];
    v78 = [v77 copy];
    sourceInfo = v5->_sourceInfo;
    v5->_sourceInfo = v78;

    v5->_criticalAlert = [v4 isCriticalAlert];
    v5->_interruptionLevel = [v4 interruptionLevel];
    v5->_priorityStatus = [v4 priorityStatus];
    v5->_summaryStatus = [v4 summaryStatus];
    v80 = [v4 uuid];
    uuid = v5->_uuid;
    v5->_uuid = v80;

    [v4 relevanceScore];
    v5->_relevanceScore = v82;
    v83 = [v4 filterCriteria];
    filterCriteria = v5->_filterCriteria;
    v5->_filterCriteria = v83;

    v5->_isPresentedAsBanner = [v4 isPresentedAsBanner];
    v5->_isRemoved = [v4 isRemoved];
    [(NCNotificationRequest *)v5 _updateIdentifiersString];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
LABEL_31:
      v66 = 0;
      goto LABEL_32;
    }
  }

  v5 = v4;
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = [(NCNotificationRequest *)self sectionIdentifier];
  v7 = [v5 sectionIdentifier];
  v8 = NCIsEqual(v6, v7);

  if (!v8)
  {
    goto LABEL_31;
  }

  v9 = [(NCNotificationRequest *)self notificationIdentifier];
  v10 = [v5 notificationIdentifier];
  v11 = NCIsEqual(v9, v10);

  if (!v11)
  {
    goto LABEL_31;
  }

  v12 = [(NCNotificationRequest *)self threadIdentifier];
  v13 = [v5 threadIdentifier];
  v14 = NCIsEqual(v12, v13);

  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = [(NCNotificationRequest *)self categoryIdentifier];
  v16 = [v5 categoryIdentifier];
  v17 = NCIsEqual(v15, v16);

  if (!v17)
  {
    goto LABEL_31;
  }

  v18 = [(NCNotificationRequest *)self subSectionIdentifiers];
  v19 = [v5 subSectionIdentifiers];
  v20 = NCIsEqualToSet(v18, v19);

  if (!v20)
  {
    goto LABEL_31;
  }

  v21 = [(NCNotificationRequest *)self highestPrioritySubSectionIdentifier];
  v22 = [v5 highestPrioritySubSectionIdentifier];
  v23 = NCIsEqual(v21, v22);

  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = [(NCNotificationRequest *)self intentIdentifiers];
  v25 = [v5 intentIdentifiers];
  v26 = NCIsEqualToArray(v24, v25);

  if (!v26)
  {
    goto LABEL_31;
  }

  v27 = [(NCNotificationRequest *)self peopleIdentifiers];
  v28 = [v5 peopleIdentifiers];
  v29 = NCIsEqualToArray(v27, v28);

  if (!v29)
  {
    goto LABEL_31;
  }

  v30 = [(NCNotificationRequest *)self parentSectionIdentifier];
  v31 = [v5 parentSectionIdentifier];
  v32 = NCIsEqual(v30, v31);

  if (!v32)
  {
    goto LABEL_31;
  }

  v33 = [(NCNotificationRequest *)self isUniqueThreadIdentifier];
  if (v33 != [v5 isUniqueThreadIdentifier])
  {
    goto LABEL_31;
  }

  v34 = [(NCNotificationRequest *)self eventBehavior];
  v35 = [v5 eventBehavior];

  if (v34 != v35)
  {
    goto LABEL_31;
  }

  v36 = [(NCNotificationRequest *)self isHighlight];
  if (v36 != [v5 isHighlight])
  {
    goto LABEL_31;
  }

  v37 = [(NCNotificationRequest *)self timestamp];
  v38 = [v5 timestamp];
  v39 = NCIsEqual(v37, v38);

  if (!v39)
  {
    goto LABEL_31;
  }

  v40 = [(NCNotificationRequest *)self content];
  v41 = [v5 content];
  v42 = NCIsEqual(v40, v41);

  if (!v42)
  {
    goto LABEL_31;
  }

  v43 = [(NCNotificationRequest *)self context];
  v44 = [v5 context];
  v45 = NCIsEqual(v43, v44);

  if (!v45)
  {
    goto LABEL_31;
  }

  v46 = [(NCNotificationRequest *)self settingsSections];
  v47 = [v5 settingsSections];
  v48 = NCIsEqual(v46, v47);

  if (!v48)
  {
    goto LABEL_31;
  }

  v49 = [(NCNotificationRequest *)self sound];
  v50 = [v5 sound];
  v51 = NCIsEqual(v49, v50);

  if (!v51)
  {
    goto LABEL_31;
  }

  v52 = [(NCNotificationRequest *)self isCollapsedNotification];
  if (v52 != [v5 isCollapsedNotification])
  {
    goto LABEL_31;
  }

  v53 = [(NCNotificationRequest *)self collapsedNotificationsCount];
  if (v53 != [v5 collapsedNotificationsCount])
  {
    goto LABEL_31;
  }

  v54 = [(NCNotificationRequest *)self isCriticalAlert];
  if (v54 != [v5 isCriticalAlert])
  {
    goto LABEL_31;
  }

  v55 = [(NCNotificationRequest *)self interruptionLevel];
  if (v55 != [v5 interruptionLevel])
  {
    goto LABEL_31;
  }

  v56 = [(NCNotificationRequest *)self priorityStatus];
  if (v56 != [v5 priorityStatus])
  {
    goto LABEL_31;
  }

  v57 = [(NCNotificationRequest *)self summaryStatus];
  if (v57 != [v5 summaryStatus])
  {
    goto LABEL_31;
  }

  v58 = [(NCNotificationRequest *)self uuid];
  v59 = [v5 uuid];
  v60 = NCIsEqual(v58, v59);

  if (!v60)
  {
    goto LABEL_31;
  }

  [(NCNotificationRequest *)self relevanceScore];
  v62 = v61;
  [v5 relevanceScore];
  if (v62 != v63)
  {
    goto LABEL_31;
  }

  v64 = [(NCNotificationRequest *)self filterCriteria];
  v65 = [v5 filterCriteria];
  v66 = NCIsEqual(v64, v65);

LABEL_32:
  return v66;
}

- (BOOL)matchesRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationRequest *)self notificationIdentifier];
  v6 = [v4 notificationIdentifier];
  if (NCIsEqual(v5, v6))
  {
    v7 = [(NCNotificationRequest *)self threadIdentifier];
    v8 = [v4 threadIdentifier];
    if (NCIsEqual(v7, v8))
    {
      v9 = [(NCNotificationRequest *)self sectionIdentifier];
      v10 = [v4 sectionIdentifier];
      v11 = NCIsEqual(v9, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)matchesThreadForRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationRequest *)self threadIdentifier];
  v6 = [v4 threadIdentifier];
  if (NCIsEqual(v5, v6))
  {
    v7 = [(NCNotificationRequest *)self sectionIdentifier];
    v8 = [v4 sectionIdentifier];
    v9 = NCIsEqual(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NCMutableNotificationRequest alloc];

  return [(NCNotificationRequest *)v4 initWithNotificationRequest:self];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCNotificationRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__NCNotificationRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

id __63__NCNotificationRequest_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sectionIdentifier];
  v4 = [v2 appendObject:v3 withName:@"sectionId"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) threadIdentifier];
  v7 = [v5 appendObject:v6 withName:@"threadId"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) notificationIdentifier];
  v10 = [v8 appendObject:v9 withName:@"notificationId"];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) categoryIdentifier];
  v13 = [v11 appendObject:v12 withName:@"categoryId"];

  v14 = *(a1 + 32);
  v15 = [*(a1 + 40) subSectionIdentifiers];
  v16 = [v15 allObjects];
  [v14 appendArraySection:v16 withName:@"subSectionIds" skipIfEmpty:1];

  v17 = *(a1 + 32);
  v18 = [*(a1 + 40) highestPrioritySubSectionIdentifier];
  v19 = [v17 appendObject:v18 withName:@"highestPrioritySubSectionId"];

  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) intentIdentifiers];
  [v20 appendArraySection:v21 withName:@"intentIds" skipIfEmpty:1];

  v22 = *(a1 + 32);
  v23 = [*(a1 + 40) peopleIdentifiers];
  [v22 appendArraySection:v23 withName:@"peopleIds" skipIfEmpty:1];

  v24 = *(a1 + 32);
  v25 = [*(a1 + 40) parentSectionIdentifier];
  v26 = [v24 appendObject:v25 withName:@"parentSectionId" skipIfNil:1];

  v27 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isUniqueThreadIdentifier"), @"isUniqueThreadIdentifier"}];
  v28 = *(a1 + 32);
  v29 = [*(a1 + 40) eventBehavior];
  v30 = [v28 appendObject:v29 withName:@"eventBehavior" skipIfNil:1];

  v31 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isHighlight"), @"isHighlight"}];
  v32 = *(a1 + 32);
  v33 = [*(a1 + 40) timestamp];
  v34 = [v33 description];
  v35 = [v32 appendObject:v34 withName:@"timestamp"];

  v36 = *(a1 + 32);
  v37 = [*(a1 + 40) requestDestinations];
  v38 = [v37 allObjects];
  [v36 appendArraySection:v38 withName:@"requestDestinations" skipIfEmpty:0];

  v39 = *(a1 + 32);
  v40 = [*(a1 + 40) content];
  v41 = [v39 appendObject:v40 withName:@"content"];

  v42 = *(a1 + 32);
  v43 = [*(a1 + 40) options];
  v44 = [v42 appendObject:v43 withName:@"options"];

  v45 = *(a1 + 32);
  v46 = [*(a1 + 40) alertOptions];
  v47 = [v45 appendObject:v46 withName:@"alertOptions"];

  v48 = *(a1 + 32);
  v49 = [*(a1 + 40) sound];
  v50 = [v48 appendObject:v49 withName:@"sound"];

  v51 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isCollapsedNotification"), @"isCollapsedNotification"}];
  v52 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"collapsedNotificationsCount"), @"collapsedNotificationsCount"}];
  v53 = *(a1 + 32);
  v54 = [*(a1 + 40) cancelAction];
  v55 = [v53 appendObject:v54 withName:@"cancelAction"];

  v56 = *(a1 + 32);
  v57 = [*(a1 + 40) clearAction];
  v58 = [v56 appendObject:v57 withName:@"clearAction"];

  v59 = *(a1 + 32);
  v60 = [*(a1 + 40) closeAction];
  v61 = [v59 appendObject:v60 withName:@"closeAction"];

  v62 = *(a1 + 32);
  v63 = [*(a1 + 40) defaultAction];
  v64 = [v62 appendObject:v63 withName:@"defaultAction"];

  v65 = *(a1 + 32);
  v66 = [*(a1 + 40) silenceAction];
  v67 = [v65 appendObject:v66 withName:@"silenceAction"];

  v68 = *(a1 + 32);
  v69 = [*(a1 + 40) inlineAction];
  v70 = [v68 appendObject:v69 withName:@"inlineAction"];

  v71 = *(a1 + 32);
  v72 = [*(a1 + 40) supplementaryActions];
  [v71 appendDictionarySection:v72 withName:@"supplementaryActions" skipIfEmpty:0];

  v73 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isCriticalAlert"), @"isCriticalAlert"}];
  v74 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"interruptionLevel"), @"interruptionLevel"}];
  v75 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"priorityStatus"), @"priorityStatus"}];
  v76 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"summaryStatus"), @"summaryStatus"}];
  v77 = *(a1 + 32);
  v78 = [*(a1 + 40) uuid];
  v79 = [v77 appendObject:v78 withName:@"uuid"];

  v80 = *(a1 + 32);
  [*(a1 + 40) relevanceScore];
  v82 = [v80 appendFloat:@"relevanceScore" withName:v81];
  v83 = *(a1 + 32);
  v84 = [*(a1 + 40) filterCriteria];
  v85 = [v83 appendObject:v84 withName:@"filterCriteria"];

  v86 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isPresentedAsBanner"), @"isPresentedAsBanner"}];
  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isRemoved"), @"isRemoved"}];
}

- (id)succinctDescription
{
  v2 = [(NCNotificationRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NCNotificationRequest *)self timestamp];
  v5 = [v4 description];
  v6 = [v3 appendObject:v5 withName:@"timestamp"];

  v7 = [(NCNotificationRequest *)self sectionIdentifier];
  v8 = [v3 appendObject:v7 withName:@"sectionId"];

  v9 = [(NCNotificationRequest *)self threadIdentifier];
  v10 = [v3 appendObject:v9 withName:@"threadId" skipIfNil:1];

  v11 = [(NCNotificationRequest *)self notificationIdentifier];
  v12 = [v3 appendObject:v11 withName:@"notificationId"];

  v13 = [(NCNotificationRequest *)self categoryIdentifier];
  v14 = [v3 appendObject:v13 withName:@"categoryId"];

  v15 = [(NCNotificationRequest *)self uuid];
  v16 = [v3 appendObject:v15 withName:@"uuid"];

  return v3;
}

- (void)_updateIdentifiersString
{
  sectionIdentifier = @"nil";
  notificationIdentifier = self->_notificationIdentifier;
  if (!notificationIdentifier)
  {
    notificationIdentifier = @"nil";
  }

  threadIdentifier = self->_threadIdentifier;
  if (!threadIdentifier)
  {
    threadIdentifier = @"nil";
  }

  if (self->_sectionIdentifier)
  {
    sectionIdentifier = self->_sectionIdentifier;
  }

  self->_identifiersString = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", notificationIdentifier, threadIdentifier, sectionIdentifier];

  MEMORY[0x2821F96F8]();
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 threadId:(id)a5 title:(id)a6 message:(id)a7 timestamp:(id)a8 destination:(id)a9
{
  v15 = MEMORY[0x277CBEB98];
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [v15 setWithObject:a9];
  v23 = [a1 notificationRequestWithSectionId:v21 notificationId:v20 threadId:v19 title:v18 message:v17 timestamp:v16 destinations:v22];

  return v23;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 threadId:(id)a5 title:(id)a6 message:(id)a7 timestamp:(id)a8 destination:(id)a9 uuid:(id)a10
{
  v16 = MEMORY[0x277CBEB98];
  v28 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [v16 set];
  v25 = [MEMORY[0x277CBEB98] setWithObject:v17];

  v26 = objc_opt_new();
  v30 = [a1 notificationRequestWithSectionId:v23 notificationId:v22 threadId:v21 subSectionIds:v24 title:v20 message:v19 timestamp:v18 destinations:v25 options:v26 uuid:v28];

  return v30;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 threadId:(id)a5 title:(id)a6 message:(id)a7 timestamp:(id)a8 destinations:(id)a9
{
  v16 = MEMORY[0x277CBEB98];
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [v16 set];
  v25 = objc_opt_new();
  v26 = [a1 notificationRequestWithSectionId:v23 notificationId:v22 threadId:v21 subSectionIds:v24 title:v20 message:v19 timestamp:v18 destinations:v17 options:v25];

  return v26;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 threadId:(id)a5 subSectionIds:(id)a6 title:(id)a7 message:(id)a8 timestamp:(id)a9 destinations:(id)a10 options:(id)a11
{
  v26 = MEMORY[0x277CBEB98];
  v16 = a11;
  v17 = a10;
  v27 = a9;
  v28 = a8;
  v18 = a7;
  v19 = a5;
  v20 = a4;
  v25 = a3;
  v21 = [v26 set];
  v22 = objc_opt_new();
  v23 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v30 = [a1 notificationRequestWithSectionId:v25 notificationId:v20 threadId:v19 subSectionIds:v21 title:v18 message:v28 timestamp:v27 destinations:v17 options:v16 alertOptions:v22 uuid:v23];

  return v30;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 threadId:(id)a5 subSectionIds:(id)a6 title:(id)a7 message:(id)a8 timestamp:(id)a9 destinations:(id)a10 options:(id)a11 uuid:(id)a12
{
  v27 = MEMORY[0x277CBEB98];
  v17 = a12;
  v18 = a10;
  v28 = a9;
  v29 = a8;
  v19 = a7;
  v20 = a5;
  v21 = a4;
  v26 = a3;
  v22 = [v27 set];
  v23 = objc_opt_new();
  v24 = objc_opt_new();
  v31 = [a1 notificationRequestWithSectionId:v26 notificationId:v21 threadId:v20 subSectionIds:v22 title:v19 message:v29 timestamp:v28 destinations:v18 options:v23 alertOptions:v24 uuid:v17];

  return v31;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 threadId:(id)a5 subSectionIds:(id)a6 title:(id)a7 message:(id)a8 timestamp:(id)a9 destinations:(id)a10 options:(id)a11 alertOptions:(id)a12 uuid:(id)a13
{
  v34 = a13;
  v33 = a12;
  v32 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = objc_opt_new();
  [v26 setSectionIdentifier:v25];

  [v26 setNotificationIdentifier:v24];
  [v26 setThreadIdentifier:v23];

  [v26 setSubSectionIdentifiers:v22];
  [v26 setTimestamp:v19];
  [v26 setRequestDestinations:v18];

  v27 = objc_opt_new();
  [v27 setTitle:v21];

  v28 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v20];
  [v27 setAttributedMessage:v28];
  [v27 setDate:v19];

  [v26 setContent:v27];
  [v26 setOptions:v32];

  [v26 setAlertOptions:v33];
  [v26 setUuid:v34];

  v29 = [v26 copy];

  return v29;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 threadId:(id)a4 notificationId:(id)a5 requestDestination:(id)a6
{
  v10 = MEMORY[0x277CBEAA8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 date];
  v16 = [MEMORY[0x277CBEB98] setWithObject:v11];

  v17 = [a1 notificationRequestWithSectionId:v14 notificationId:v12 threadId:v13 title:@"title" message:@"message" timestamp:v15 destinations:v16];

  return v17;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 threadId:(id)a4 notificationId:(id)a5 requestDestinations:(id)a6
{
  v10 = MEMORY[0x277CBEAA8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 date];
  v16 = [a1 notificationRequestWithSectionId:v14 notificationId:v12 threadId:v13 title:@"title" message:@"message" timestamp:v15 destinations:v11];

  return v16;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 requestDestination:(id)a5
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a4;
  v10 = a3;
  v11 = [v8 setWithObject:a5];
  v12 = [a1 notificationRequestWithSectionId:v10 threadId:@"threadId" notificationId:v9 requestDestinations:v11];

  return v12;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  v10 = [a1 notificationRequestWithSectionId:v8 notificationId:v7 threadId:@"threadId" timestamp:v9];

  return v10;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 threadId:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  v10 = [a1 notificationRequestWithSectionId:v8 notificationId:@"notificationId" threadId:v7 timestamp:v9];

  return v10;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [a1 notificationRequestWithSectionId:@"sectionId" notificationId:v5 timestamp:v6];

  return v7;
}

+ (NCNotificationRequest)notificationRequestWithThreadId:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [a1 notificationRequestWithThreadId:v5 timestamp:v6];

  return v7;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 sectionId:(id)a4 threadId:(id)a5
{
  v8 = MEMORY[0x277CBEAA8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 date];
  v13 = [a1 notificationRequestWithSectionId:v10 notificationId:v11 threadId:v9 timestamp:v12];

  return v13;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 threadId:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  v10 = [a1 notificationRequestWithNotificationId:v8 threadId:v7 timestamp:v9];

  return v10;
}

+ (id)notificationRequest
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [a1 notificationRequestWithTimestamp:v3];

  return v4;
}

+ (NCNotificationRequest)notificationRequestWithActionWithId:(id)a3 runner:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 notificationRequestWithNotificationId:@"action-notification"];
  v9 = [v8 mutableCopy];

  v10 = objc_alloc_init(NCMutableNotificationAction);
  [(NCMutableNotificationAction *)v10 setIdentifier:v7];

  [(NCMutableNotificationAction *)v10 setActionRunner:v6];
  [v9 setDefaultAction:v10];

  return v9;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 lockScreenPriority:(unint64_t)a4 lockScreenPersistence:(unint64_t)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setLockScreenPriority:a4];
  [v9 setLockScreenPersistence:a5];
  v10 = [MEMORY[0x277CBEB98] set];
  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [MEMORY[0x277CBEB98] set];
  v13 = [a1 notificationRequestWithSectionId:@"sectionId" notificationId:v8 threadId:@"threadId" subSectionIds:v10 title:@"title" message:@"message" timestamp:v11 destinations:v12 options:v9];

  return v13;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 requestDestinations:(id)a4 isCritical:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setPreemptsPresentedNotification:v5];
  [v10 setRevealsAdditionalContentOnPresentation:v5];
  v11 = [MEMORY[0x277CBEB98] set];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [a1 notificationRequestWithSectionId:@"sectionId" notificationId:v9 threadId:@"threadId" subSectionIds:v11 title:@"title" message:@"message" timestamp:v12 destinations:v8 options:v10];

  return v13;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 subSectionIds:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 set];
  v10 = [a1 notificationRequestWithSectionId:v8 notificationId:@"notificationId" subSectionIds:v7 requestDestinations:v9];

  return v10;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)a3 notificationId:(id)a4 subSectionIds:(id)a5 requestDestinations:(id)a6
{
  v10 = MEMORY[0x277CBEAA8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 date];
  v16 = objc_opt_new();
  v17 = [a1 notificationRequestWithSectionId:v14 notificationId:v13 threadId:@"threadId" subSectionIds:v12 title:@"title" message:@"message" timestamp:v15 destinations:v11 options:v16];

  return v17;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 requestDestinations:(id)a4 lockScreenPersistence:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setLockScreenPersistence:a5];
  v11 = [MEMORY[0x277CBEB98] set];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [a1 notificationRequestWithSectionId:@"sectionId" notificationId:v9 threadId:@"threadId" subSectionIds:v11 title:@"title" message:@"message" timestamp:v12 destinations:v8 options:v10];

  return v13;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 requestDestinations:(id)a4 alertOptionsSuppression:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(NCMutableNotificationAlertOptions);
  [(NCMutableNotificationAlertOptions *)v10 setSuppression:a5];
  v11 = [MEMORY[0x277CBEB98] set];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = objc_opt_new();
  v14 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v15 = [a1 notificationRequestWithSectionId:@"sectionId" notificationId:v9 threadId:@"threadId" subSectionIds:v11 title:@"title" message:@"message" timestamp:v12 destinations:v8 options:v13 alertOptions:v10 uuid:v14];

  return v15;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)a3 requestDestinations:(id)a4 lockScreenPersistence:(unint64_t)a5 alertOptionsSuppression:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = objc_opt_new();
  [v12 setLockScreenPersistence:a5];
  v13 = objc_alloc_init(NCMutableNotificationAlertOptions);
  [(NCMutableNotificationAlertOptions *)v13 setSuppression:a6];
  v14 = [MEMORY[0x277CBEB98] set];
  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v17 = [a1 notificationRequestWithSectionId:@"sectionId" notificationId:v11 threadId:@"threadId" subSectionIds:v14 title:@"title" message:@"message" timestamp:v15 destinations:v10 options:v12 alertOptions:v13 uuid:v16];

  return v17;
}

- (id)_actionsDescriptionForEnvironment:(id)a3
{
  v3 = [(NCNotificationRequest *)self supplementaryActions];
  v4 = [v3 objectForKey:@"NCNotificationActionEnvironmentMinimal"];
  v5 = [v4 copy];

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"behavior == %d", 1];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d (%d text)", objc_msgSend(v5, "count"), objc_msgSend(v7, "count")];

  return v8;
}

@end
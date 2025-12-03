@interface NCNotificationRequest
+ (NCNotificationRequest)notificationRequestWithActionWithId:(id)id runner:(id)runner;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id lockScreenPriority:(unint64_t)priority lockScreenPersistence:(unint64_t)persistence;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id requestDestinations:(id)destinations alertOptionsSuppression:(unint64_t)suppression;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id requestDestinations:(id)destinations isCritical:(BOOL)critical;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id requestDestinations:(id)destinations lockScreenPersistence:(unint64_t)persistence;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id requestDestinations:(id)destinations lockScreenPersistence:(unint64_t)persistence alertOptionsSuppression:(unint64_t)suppression;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id sectionId:(id)sectionId threadId:(id)threadId;
+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id threadId:(id)threadId;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId requestDestination:(id)destination;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId subSectionIds:(id)ids requestDestinations:(id)destinations;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId threadId:(id)threadId subSectionIds:(id)ids title:(id)title message:(id)message timestamp:(id)timestamp destinations:(id)self0 options:(id)self1;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId threadId:(id)threadId subSectionIds:(id)ids title:(id)title message:(id)message timestamp:(id)timestamp destinations:(id)self0 options:(id)self1 alertOptions:(id)self2 uuid:(id)self3;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId threadId:(id)threadId subSectionIds:(id)ids title:(id)title message:(id)message timestamp:(id)timestamp destinations:(id)self0 options:(id)self1 uuid:(id)self2;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId threadId:(id)threadId title:(id)title message:(id)message timestamp:(id)timestamp destination:(id)destination;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId threadId:(id)threadId title:(id)title message:(id)message timestamp:(id)timestamp destination:(id)destination uuid:(id)self0;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId threadId:(id)threadId title:(id)title message:(id)message timestamp:(id)timestamp destinations:(id)destinations;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id subSectionIds:(id)ids;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id threadId:(id)threadId;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id threadId:(id)threadId notificationId:(id)notificationId requestDestination:(id)destination;
+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id threadId:(id)threadId notificationId:(id)notificationId requestDestinations:(id)destinations;
+ (NCNotificationRequest)notificationRequestWithThreadId:(id)id;
+ (id)notificationRequest;
- (BOOL)isCollapsibleWithNotificationRequest:(id)request;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesRequest:(id)request;
- (BOOL)matchesThreadForRequest:(id)request;
- (NCNotificationRequest)initWithNotificationRequest:(id)request;
- (NSString)topLevelSectionIdentifier;
- (NSString)uniqueThreadIdentifier;
- (id)_actionsDescriptionForEnvironment:(id)environment;
- (id)_actionsLoggingDescription;
- (id)_interruptionLevelLoggingDescription;
- (id)_priorityStatusLoggingDescription;
- (id)_summaryStatusLoggingDescription;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)loggingDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)_updateIdentifiersString;
@end

@implementation NCNotificationRequest

- (NSString)topLevelSectionIdentifier
{
  parentSectionIdentifier = [(NCNotificationRequest *)self parentSectionIdentifier];
  v4 = parentSectionIdentifier;
  if (parentSectionIdentifier)
  {
    sectionIdentifier = parentSectionIdentifier;
  }

  else
  {
    sectionIdentifier = [(NCNotificationRequest *)self sectionIdentifier];
  }

  v6 = sectionIdentifier;

  return v6;
}

- (id)loggingDescription
{
  v16 = MEMORY[0x277CCACA8];
  notificationIdentifier = [(NCNotificationRequest *)self notificationIdentifier];
  un_logDigest = [notificationIdentifier un_logDigest];
  sectionIdentifier = [(NCNotificationRequest *)self sectionIdentifier];
  threadIdentifier = [(NCNotificationRequest *)self threadIdentifier];
  un_logDigest2 = [threadIdentifier un_logDigest];
  categoryIdentifier = [(NCNotificationRequest *)self categoryIdentifier];
  timestamp = [(NCNotificationRequest *)self timestamp];
  _interruptionLevelLoggingDescription = [(NCNotificationRequest *)self _interruptionLevelLoggingDescription];
  _priorityStatusLoggingDescription = [(NCNotificationRequest *)self _priorityStatusLoggingDescription];
  _summaryStatusLoggingDescription = [(NCNotificationRequest *)self _summaryStatusLoggingDescription];
  [(NCNotificationRequest *)self relevanceScore];
  v11 = v10;
  filterCriteria = [(NCNotificationRequest *)self filterCriteria];
  _actionsLoggingDescription = [(NCNotificationRequest *)self _actionsLoggingDescription];
  requestDestinations = [(NCNotificationRequest *)self requestDestinations];
  v17 = [v16 stringWithFormat:@"id: %@ section: %@; thread: %@; category: %@; timestamp: %@; interruption-level: %@; priorityStatus: %@; summaryStatus: %@; relevance-score: %.2f; filter-criteria: %@; actions: [ %@ ]; destinations: [ %@ ]", un_logDigest, sectionIdentifier, un_logDigest2, categoryIdentifier, timestamp, _interruptionLevelLoggingDescription, _priorityStatusLoggingDescription, _summaryStatusLoggingDescription, *&v11, filterCriteria, _actionsLoggingDescription, requestDestinations];;

  return v17;
}

- (NSString)uniqueThreadIdentifier
{
  if ([(NCNotificationRequest *)self isUniqueThreadIdentifier])
  {
    threadIdentifier = [(NCNotificationRequest *)self threadIdentifier];
  }

  else
  {
    threadIdentifier = 0;
  }

  return threadIdentifier;
}

- (id)_interruptionLevelLoggingDescription
{
  interruptionLevel = [(NCNotificationRequest *)self interruptionLevel];
  if (interruptionLevel - 1 > 2)
  {
    return @"passive";
  }

  else
  {
    return off_279E0DC48[interruptionLevel - 1];
  }
}

- (id)_priorityStatusLoggingDescription
{
  priorityStatus = [(NCNotificationRequest *)self priorityStatus];
  if (priorityStatus - 1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_279E0DC60[priorityStatus - 1];
  }
}

- (id)_summaryStatusLoggingDescription
{
  summaryStatus = [(NCNotificationRequest *)self summaryStatus];
  if (summaryStatus - 1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279E0DC88[summaryStatus - 1];
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

- (BOOL)isCollapsibleWithNotificationRequest:(id)request
{
  requestCopy = request;
  sectionIdentifier = [(NCNotificationRequest *)self sectionIdentifier];
  sectionIdentifier2 = [requestCopy sectionIdentifier];

  LOBYTE(requestCopy) = [sectionIdentifier isEqualToString:sectionIdentifier2];
  return requestCopy;
}

- (NCNotificationRequest)initWithNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = [(NCNotificationRequest *)self init];
  if (v5)
  {
    sectionIdentifier = [requestCopy sectionIdentifier];
    v7 = [sectionIdentifier copy];
    sectionIdentifier = v5->_sectionIdentifier;
    v5->_sectionIdentifier = v7;

    notificationIdentifier = [requestCopy notificationIdentifier];
    v10 = [notificationIdentifier copy];
    notificationIdentifier = v5->_notificationIdentifier;
    v5->_notificationIdentifier = v10;

    threadIdentifier = [requestCopy threadIdentifier];
    v13 = [threadIdentifier copy];
    threadIdentifier = v5->_threadIdentifier;
    v5->_threadIdentifier = v13;

    categoryIdentifier = [requestCopy categoryIdentifier];
    v16 = [categoryIdentifier copy];
    categoryIdentifier = v5->_categoryIdentifier;
    v5->_categoryIdentifier = v16;

    subSectionIdentifiers = [requestCopy subSectionIdentifiers];
    v19 = [subSectionIdentifiers copy];
    subSectionIdentifiers = v5->_subSectionIdentifiers;
    v5->_subSectionIdentifiers = v19;

    highestPrioritySubSectionIdentifier = [requestCopy highestPrioritySubSectionIdentifier];
    v22 = [highestPrioritySubSectionIdentifier copy];
    highestPrioritySubSectionIdentifier = v5->_highestPrioritySubSectionIdentifier;
    v5->_highestPrioritySubSectionIdentifier = v22;

    intentIdentifiers = [requestCopy intentIdentifiers];
    v25 = [intentIdentifiers copy];
    intentIdentifiers = v5->_intentIdentifiers;
    v5->_intentIdentifiers = v25;

    peopleIdentifiers = [requestCopy peopleIdentifiers];
    v28 = [peopleIdentifiers copy];
    peopleIdentifiers = v5->_peopleIdentifiers;
    v5->_peopleIdentifiers = v28;

    parentSectionIdentifier = [requestCopy parentSectionIdentifier];
    v31 = [parentSectionIdentifier copy];
    parentSectionIdentifier = v5->_parentSectionIdentifier;
    v5->_parentSectionIdentifier = v31;

    v5->_threadIdentifierUnique = [requestCopy isUniqueThreadIdentifier];
    eventBehavior = [requestCopy eventBehavior];
    v34 = [eventBehavior copy];
    eventBehavior = v5->_eventBehavior;
    v5->_eventBehavior = v34;

    v5->_isHighlight = [requestCopy isHighlight];
    timestamp = [requestCopy timestamp];
    v37 = [timestamp copy];
    timestamp = v5->_timestamp;
    v5->_timestamp = v37;

    requestDestinations = [requestCopy requestDestinations];
    v40 = [requestDestinations copy];
    requestDestinations = v5->_requestDestinations;
    v5->_requestDestinations = v40;

    content = [requestCopy content];
    v43 = [content copy];
    content = v5->_content;
    v5->_content = v43;

    options = [requestCopy options];
    v46 = [options copy];
    options = v5->_options;
    v5->_options = v46;

    alertOptions = [requestCopy alertOptions];
    v49 = [alertOptions copy];
    alertOptions = v5->_alertOptions;
    v5->_alertOptions = v49;

    context = [requestCopy context];
    v52 = [context copy];
    context = v5->_context;
    v5->_context = v52;

    settingsSections = [requestCopy settingsSections];
    v55 = [settingsSections copy];
    settingsSections = v5->_settingsSections;
    v5->_settingsSections = v55;

    sound = [requestCopy sound];
    v58 = [sound copy];
    sound = v5->_sound;
    v5->_sound = v58;

    cancelAction = [requestCopy cancelAction];
    cancelAction = v5->_cancelAction;
    v5->_cancelAction = cancelAction;

    clearAction = [requestCopy clearAction];
    clearAction = v5->_clearAction;
    v5->_clearAction = clearAction;

    closeAction = [requestCopy closeAction];
    closeAction = v5->_closeAction;
    v5->_closeAction = closeAction;

    defaultAction = [requestCopy defaultAction];
    defaultAction = v5->_defaultAction;
    v5->_defaultAction = defaultAction;

    silenceAction = [requestCopy silenceAction];
    silenceAction = v5->_silenceAction;
    v5->_silenceAction = silenceAction;

    inlineAction = [requestCopy inlineAction];
    inlineAction = v5->_inlineAction;
    v5->_inlineAction = inlineAction;

    supplementaryActions = [requestCopy supplementaryActions];
    v73 = [supplementaryActions copy];
    supplementaryActions = v5->_supplementaryActions;
    v5->_supplementaryActions = v73;

    userNotification = [requestCopy userNotification];
    userNotification = v5->_userNotification;
    v5->_userNotification = userNotification;

    v5->_isCollapsedNotification = [requestCopy isCollapsedNotification];
    v5->_collapsedNotificationsCount = [requestCopy collapsedNotificationsCount];
    sourceInfo = [requestCopy sourceInfo];
    v78 = [sourceInfo copy];
    sourceInfo = v5->_sourceInfo;
    v5->_sourceInfo = v78;

    v5->_criticalAlert = [requestCopy isCriticalAlert];
    v5->_interruptionLevel = [requestCopy interruptionLevel];
    v5->_priorityStatus = [requestCopy priorityStatus];
    v5->_summaryStatus = [requestCopy summaryStatus];
    uuid = [requestCopy uuid];
    uuid = v5->_uuid;
    v5->_uuid = uuid;

    [requestCopy relevanceScore];
    v5->_relevanceScore = v82;
    filterCriteria = [requestCopy filterCriteria];
    filterCriteria = v5->_filterCriteria;
    v5->_filterCriteria = filterCriteria;

    v5->_isPresentedAsBanner = [requestCopy isPresentedAsBanner];
    v5->_isRemoved = [requestCopy isRemoved];
    [(NCNotificationRequest *)v5 _updateIdentifiersString];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  v5 = equalCopy;
  if (!v5)
  {
    goto LABEL_31;
  }

  sectionIdentifier = [(NCNotificationRequest *)self sectionIdentifier];
  sectionIdentifier2 = [v5 sectionIdentifier];
  v8 = NCIsEqual(sectionIdentifier, sectionIdentifier2);

  if (!v8)
  {
    goto LABEL_31;
  }

  notificationIdentifier = [(NCNotificationRequest *)self notificationIdentifier];
  notificationIdentifier2 = [v5 notificationIdentifier];
  v11 = NCIsEqual(notificationIdentifier, notificationIdentifier2);

  if (!v11)
  {
    goto LABEL_31;
  }

  threadIdentifier = [(NCNotificationRequest *)self threadIdentifier];
  threadIdentifier2 = [v5 threadIdentifier];
  v14 = NCIsEqual(threadIdentifier, threadIdentifier2);

  if (!v14)
  {
    goto LABEL_31;
  }

  categoryIdentifier = [(NCNotificationRequest *)self categoryIdentifier];
  categoryIdentifier2 = [v5 categoryIdentifier];
  v17 = NCIsEqual(categoryIdentifier, categoryIdentifier2);

  if (!v17)
  {
    goto LABEL_31;
  }

  subSectionIdentifiers = [(NCNotificationRequest *)self subSectionIdentifiers];
  subSectionIdentifiers2 = [v5 subSectionIdentifiers];
  v20 = NCIsEqualToSet(subSectionIdentifiers, subSectionIdentifiers2);

  if (!v20)
  {
    goto LABEL_31;
  }

  highestPrioritySubSectionIdentifier = [(NCNotificationRequest *)self highestPrioritySubSectionIdentifier];
  highestPrioritySubSectionIdentifier2 = [v5 highestPrioritySubSectionIdentifier];
  v23 = NCIsEqual(highestPrioritySubSectionIdentifier, highestPrioritySubSectionIdentifier2);

  if (!v23)
  {
    goto LABEL_31;
  }

  intentIdentifiers = [(NCNotificationRequest *)self intentIdentifiers];
  intentIdentifiers2 = [v5 intentIdentifiers];
  v26 = NCIsEqualToArray(intentIdentifiers, intentIdentifiers2);

  if (!v26)
  {
    goto LABEL_31;
  }

  peopleIdentifiers = [(NCNotificationRequest *)self peopleIdentifiers];
  peopleIdentifiers2 = [v5 peopleIdentifiers];
  v29 = NCIsEqualToArray(peopleIdentifiers, peopleIdentifiers2);

  if (!v29)
  {
    goto LABEL_31;
  }

  parentSectionIdentifier = [(NCNotificationRequest *)self parentSectionIdentifier];
  parentSectionIdentifier2 = [v5 parentSectionIdentifier];
  v32 = NCIsEqual(parentSectionIdentifier, parentSectionIdentifier2);

  if (!v32)
  {
    goto LABEL_31;
  }

  isUniqueThreadIdentifier = [(NCNotificationRequest *)self isUniqueThreadIdentifier];
  if (isUniqueThreadIdentifier != [v5 isUniqueThreadIdentifier])
  {
    goto LABEL_31;
  }

  eventBehavior = [(NCNotificationRequest *)self eventBehavior];
  eventBehavior2 = [v5 eventBehavior];

  if (eventBehavior != eventBehavior2)
  {
    goto LABEL_31;
  }

  isHighlight = [(NCNotificationRequest *)self isHighlight];
  if (isHighlight != [v5 isHighlight])
  {
    goto LABEL_31;
  }

  timestamp = [(NCNotificationRequest *)self timestamp];
  timestamp2 = [v5 timestamp];
  v39 = NCIsEqual(timestamp, timestamp2);

  if (!v39)
  {
    goto LABEL_31;
  }

  content = [(NCNotificationRequest *)self content];
  content2 = [v5 content];
  v42 = NCIsEqual(content, content2);

  if (!v42)
  {
    goto LABEL_31;
  }

  context = [(NCNotificationRequest *)self context];
  context2 = [v5 context];
  v45 = NCIsEqual(context, context2);

  if (!v45)
  {
    goto LABEL_31;
  }

  settingsSections = [(NCNotificationRequest *)self settingsSections];
  settingsSections2 = [v5 settingsSections];
  v48 = NCIsEqual(settingsSections, settingsSections2);

  if (!v48)
  {
    goto LABEL_31;
  }

  sound = [(NCNotificationRequest *)self sound];
  sound2 = [v5 sound];
  v51 = NCIsEqual(sound, sound2);

  if (!v51)
  {
    goto LABEL_31;
  }

  isCollapsedNotification = [(NCNotificationRequest *)self isCollapsedNotification];
  if (isCollapsedNotification != [v5 isCollapsedNotification])
  {
    goto LABEL_31;
  }

  collapsedNotificationsCount = [(NCNotificationRequest *)self collapsedNotificationsCount];
  if (collapsedNotificationsCount != [v5 collapsedNotificationsCount])
  {
    goto LABEL_31;
  }

  isCriticalAlert = [(NCNotificationRequest *)self isCriticalAlert];
  if (isCriticalAlert != [v5 isCriticalAlert])
  {
    goto LABEL_31;
  }

  interruptionLevel = [(NCNotificationRequest *)self interruptionLevel];
  if (interruptionLevel != [v5 interruptionLevel])
  {
    goto LABEL_31;
  }

  priorityStatus = [(NCNotificationRequest *)self priorityStatus];
  if (priorityStatus != [v5 priorityStatus])
  {
    goto LABEL_31;
  }

  summaryStatus = [(NCNotificationRequest *)self summaryStatus];
  if (summaryStatus != [v5 summaryStatus])
  {
    goto LABEL_31;
  }

  uuid = [(NCNotificationRequest *)self uuid];
  uuid2 = [v5 uuid];
  v60 = NCIsEqual(uuid, uuid2);

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

  filterCriteria = [(NCNotificationRequest *)self filterCriteria];
  filterCriteria2 = [v5 filterCriteria];
  v66 = NCIsEqual(filterCriteria, filterCriteria2);

LABEL_32:
  return v66;
}

- (BOOL)matchesRequest:(id)request
{
  requestCopy = request;
  notificationIdentifier = [(NCNotificationRequest *)self notificationIdentifier];
  notificationIdentifier2 = [requestCopy notificationIdentifier];
  if (NCIsEqual(notificationIdentifier, notificationIdentifier2))
  {
    threadIdentifier = [(NCNotificationRequest *)self threadIdentifier];
    threadIdentifier2 = [requestCopy threadIdentifier];
    if (NCIsEqual(threadIdentifier, threadIdentifier2))
    {
      sectionIdentifier = [(NCNotificationRequest *)self sectionIdentifier];
      sectionIdentifier2 = [requestCopy sectionIdentifier];
      v11 = NCIsEqual(sectionIdentifier, sectionIdentifier2);
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

- (BOOL)matchesThreadForRequest:(id)request
{
  requestCopy = request;
  threadIdentifier = [(NCNotificationRequest *)self threadIdentifier];
  threadIdentifier2 = [requestCopy threadIdentifier];
  if (NCIsEqual(threadIdentifier, threadIdentifier2))
  {
    sectionIdentifier = [(NCNotificationRequest *)self sectionIdentifier];
    sectionIdentifier2 = [requestCopy sectionIdentifier];
    v9 = NCIsEqual(sectionIdentifier, sectionIdentifier2);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NCMutableNotificationRequest alloc];

  return [(NCNotificationRequest *)v4 initWithNotificationRequest:self];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__NCNotificationRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

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
  succinctDescriptionBuilder = [(NCNotificationRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  timestamp = [(NCNotificationRequest *)self timestamp];
  v5 = [timestamp description];
  v6 = [v3 appendObject:v5 withName:@"timestamp"];

  sectionIdentifier = [(NCNotificationRequest *)self sectionIdentifier];
  v8 = [v3 appendObject:sectionIdentifier withName:@"sectionId"];

  threadIdentifier = [(NCNotificationRequest *)self threadIdentifier];
  v10 = [v3 appendObject:threadIdentifier withName:@"threadId" skipIfNil:1];

  notificationIdentifier = [(NCNotificationRequest *)self notificationIdentifier];
  v12 = [v3 appendObject:notificationIdentifier withName:@"notificationId"];

  categoryIdentifier = [(NCNotificationRequest *)self categoryIdentifier];
  v14 = [v3 appendObject:categoryIdentifier withName:@"categoryId"];

  uuid = [(NCNotificationRequest *)self uuid];
  v16 = [v3 appendObject:uuid withName:@"uuid"];

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

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId threadId:(id)threadId title:(id)title message:(id)message timestamp:(id)timestamp destination:(id)destination
{
  v15 = MEMORY[0x277CBEB98];
  timestampCopy = timestamp;
  messageCopy = message;
  titleCopy = title;
  threadIdCopy = threadId;
  notificationIdCopy = notificationId;
  idCopy = id;
  v22 = [v15 setWithObject:destination];
  v23 = [self notificationRequestWithSectionId:idCopy notificationId:notificationIdCopy threadId:threadIdCopy title:titleCopy message:messageCopy timestamp:timestampCopy destinations:v22];

  return v23;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId threadId:(id)threadId title:(id)title message:(id)message timestamp:(id)timestamp destination:(id)destination uuid:(id)self0
{
  v16 = MEMORY[0x277CBEB98];
  uuidCopy = uuid;
  destinationCopy = destination;
  timestampCopy = timestamp;
  messageCopy = message;
  titleCopy = title;
  threadIdCopy = threadId;
  notificationIdCopy = notificationId;
  idCopy = id;
  v24 = [v16 set];
  v25 = [MEMORY[0x277CBEB98] setWithObject:destinationCopy];

  v26 = objc_opt_new();
  v30 = [self notificationRequestWithSectionId:idCopy notificationId:notificationIdCopy threadId:threadIdCopy subSectionIds:v24 title:titleCopy message:messageCopy timestamp:timestampCopy destinations:v25 options:v26 uuid:uuidCopy];

  return v30;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId threadId:(id)threadId title:(id)title message:(id)message timestamp:(id)timestamp destinations:(id)destinations
{
  v16 = MEMORY[0x277CBEB98];
  destinationsCopy = destinations;
  timestampCopy = timestamp;
  messageCopy = message;
  titleCopy = title;
  threadIdCopy = threadId;
  notificationIdCopy = notificationId;
  idCopy = id;
  v24 = [v16 set];
  v25 = objc_opt_new();
  v26 = [self notificationRequestWithSectionId:idCopy notificationId:notificationIdCopy threadId:threadIdCopy subSectionIds:v24 title:titleCopy message:messageCopy timestamp:timestampCopy destinations:destinationsCopy options:v25];

  return v26;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId threadId:(id)threadId subSectionIds:(id)ids title:(id)title message:(id)message timestamp:(id)timestamp destinations:(id)self0 options:(id)self1
{
  v26 = MEMORY[0x277CBEB98];
  optionsCopy = options;
  destinationsCopy = destinations;
  timestampCopy = timestamp;
  messageCopy = message;
  titleCopy = title;
  threadIdCopy = threadId;
  notificationIdCopy = notificationId;
  idCopy = id;
  v21 = [v26 set];
  v22 = objc_opt_new();
  v23 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v30 = [self notificationRequestWithSectionId:idCopy notificationId:notificationIdCopy threadId:threadIdCopy subSectionIds:v21 title:titleCopy message:messageCopy timestamp:timestampCopy destinations:destinationsCopy options:optionsCopy alertOptions:v22 uuid:v23];

  return v30;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId threadId:(id)threadId subSectionIds:(id)ids title:(id)title message:(id)message timestamp:(id)timestamp destinations:(id)self0 options:(id)self1 uuid:(id)self2
{
  v27 = MEMORY[0x277CBEB98];
  uuidCopy = uuid;
  destinationsCopy = destinations;
  timestampCopy = timestamp;
  messageCopy = message;
  titleCopy = title;
  threadIdCopy = threadId;
  notificationIdCopy = notificationId;
  idCopy = id;
  v22 = [v27 set];
  v23 = objc_opt_new();
  v24 = objc_opt_new();
  v31 = [self notificationRequestWithSectionId:idCopy notificationId:notificationIdCopy threadId:threadIdCopy subSectionIds:v22 title:titleCopy message:messageCopy timestamp:timestampCopy destinations:destinationsCopy options:v23 alertOptions:v24 uuid:uuidCopy];

  return v31;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId threadId:(id)threadId subSectionIds:(id)ids title:(id)title message:(id)message timestamp:(id)timestamp destinations:(id)self0 options:(id)self1 alertOptions:(id)self2 uuid:(id)self3
{
  uuidCopy = uuid;
  alertOptionsCopy = alertOptions;
  optionsCopy = options;
  destinationsCopy = destinations;
  timestampCopy = timestamp;
  messageCopy = message;
  titleCopy = title;
  idsCopy = ids;
  threadIdCopy = threadId;
  notificationIdCopy = notificationId;
  idCopy = id;
  v26 = objc_opt_new();
  [v26 setSectionIdentifier:idCopy];

  [v26 setNotificationIdentifier:notificationIdCopy];
  [v26 setThreadIdentifier:threadIdCopy];

  [v26 setSubSectionIdentifiers:idsCopy];
  [v26 setTimestamp:timestampCopy];
  [v26 setRequestDestinations:destinationsCopy];

  v27 = objc_opt_new();
  [v27 setTitle:titleCopy];

  v28 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:messageCopy];
  [v27 setAttributedMessage:v28];
  [v27 setDate:timestampCopy];

  [v26 setContent:v27];
  [v26 setOptions:optionsCopy];

  [v26 setAlertOptions:alertOptionsCopy];
  [v26 setUuid:uuidCopy];

  v29 = [v26 copy];

  return v29;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id threadId:(id)threadId notificationId:(id)notificationId requestDestination:(id)destination
{
  v10 = MEMORY[0x277CBEAA8];
  destinationCopy = destination;
  notificationIdCopy = notificationId;
  threadIdCopy = threadId;
  idCopy = id;
  date = [v10 date];
  v16 = [MEMORY[0x277CBEB98] setWithObject:destinationCopy];

  v17 = [self notificationRequestWithSectionId:idCopy notificationId:notificationIdCopy threadId:threadIdCopy title:@"title" message:@"message" timestamp:date destinations:v16];

  return v17;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id threadId:(id)threadId notificationId:(id)notificationId requestDestinations:(id)destinations
{
  v10 = MEMORY[0x277CBEAA8];
  destinationsCopy = destinations;
  notificationIdCopy = notificationId;
  threadIdCopy = threadId;
  idCopy = id;
  date = [v10 date];
  v16 = [self notificationRequestWithSectionId:idCopy notificationId:notificationIdCopy threadId:threadIdCopy title:@"title" message:@"message" timestamp:date destinations:destinationsCopy];

  return v16;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId requestDestination:(id)destination
{
  v8 = MEMORY[0x277CBEB98];
  notificationIdCopy = notificationId;
  idCopy = id;
  v11 = [v8 setWithObject:destination];
  v12 = [self notificationRequestWithSectionId:idCopy threadId:@"threadId" notificationId:notificationIdCopy requestDestinations:v11];

  return v12;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId
{
  v6 = MEMORY[0x277CBEAA8];
  notificationIdCopy = notificationId;
  idCopy = id;
  date = [v6 date];
  v10 = [self notificationRequestWithSectionId:idCopy notificationId:notificationIdCopy threadId:@"threadId" timestamp:date];

  return v10;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id threadId:(id)threadId
{
  v6 = MEMORY[0x277CBEAA8];
  threadIdCopy = threadId;
  idCopy = id;
  date = [v6 date];
  v10 = [self notificationRequestWithSectionId:idCopy notificationId:@"notificationId" threadId:threadIdCopy timestamp:date];

  return v10;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id
{
  v4 = MEMORY[0x277CBEAA8];
  idCopy = id;
  date = [v4 date];
  v7 = [self notificationRequestWithSectionId:@"sectionId" notificationId:idCopy timestamp:date];

  return v7;
}

+ (NCNotificationRequest)notificationRequestWithThreadId:(id)id
{
  v4 = MEMORY[0x277CBEAA8];
  idCopy = id;
  date = [v4 date];
  v7 = [self notificationRequestWithThreadId:idCopy timestamp:date];

  return v7;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id sectionId:(id)sectionId threadId:(id)threadId
{
  v8 = MEMORY[0x277CBEAA8];
  threadIdCopy = threadId;
  sectionIdCopy = sectionId;
  idCopy = id;
  date = [v8 date];
  v13 = [self notificationRequestWithSectionId:sectionIdCopy notificationId:idCopy threadId:threadIdCopy timestamp:date];

  return v13;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id threadId:(id)threadId
{
  v6 = MEMORY[0x277CBEAA8];
  threadIdCopy = threadId;
  idCopy = id;
  date = [v6 date];
  v10 = [self notificationRequestWithNotificationId:idCopy threadId:threadIdCopy timestamp:date];

  return v10;
}

+ (id)notificationRequest
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [self notificationRequestWithTimestamp:date];

  return v4;
}

+ (NCNotificationRequest)notificationRequestWithActionWithId:(id)id runner:(id)runner
{
  runnerCopy = runner;
  idCopy = id;
  v8 = [self notificationRequestWithNotificationId:@"action-notification"];
  v9 = [v8 mutableCopy];

  v10 = objc_alloc_init(NCMutableNotificationAction);
  [(NCMutableNotificationAction *)v10 setIdentifier:idCopy];

  [(NCMutableNotificationAction *)v10 setActionRunner:runnerCopy];
  [v9 setDefaultAction:v10];

  return v9;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id lockScreenPriority:(unint64_t)priority lockScreenPersistence:(unint64_t)persistence
{
  idCopy = id;
  v9 = objc_opt_new();
  [v9 setLockScreenPriority:priority];
  [v9 setLockScreenPersistence:persistence];
  v10 = [MEMORY[0x277CBEB98] set];
  date = [MEMORY[0x277CBEAA8] date];
  v12 = [MEMORY[0x277CBEB98] set];
  v13 = [self notificationRequestWithSectionId:@"sectionId" notificationId:idCopy threadId:@"threadId" subSectionIds:v10 title:@"title" message:@"message" timestamp:date destinations:v12 options:v9];

  return v13;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id requestDestinations:(id)destinations isCritical:(BOOL)critical
{
  criticalCopy = critical;
  destinationsCopy = destinations;
  idCopy = id;
  v10 = objc_opt_new();
  [v10 setPreemptsPresentedNotification:criticalCopy];
  [v10 setRevealsAdditionalContentOnPresentation:criticalCopy];
  v11 = [MEMORY[0x277CBEB98] set];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [self notificationRequestWithSectionId:@"sectionId" notificationId:idCopy threadId:@"threadId" subSectionIds:v11 title:@"title" message:@"message" timestamp:date destinations:destinationsCopy options:v10];

  return v13;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id subSectionIds:(id)ids
{
  v6 = MEMORY[0x277CBEB98];
  idsCopy = ids;
  idCopy = id;
  v9 = [v6 set];
  v10 = [self notificationRequestWithSectionId:idCopy notificationId:@"notificationId" subSectionIds:idsCopy requestDestinations:v9];

  return v10;
}

+ (NCNotificationRequest)notificationRequestWithSectionId:(id)id notificationId:(id)notificationId subSectionIds:(id)ids requestDestinations:(id)destinations
{
  v10 = MEMORY[0x277CBEAA8];
  destinationsCopy = destinations;
  idsCopy = ids;
  notificationIdCopy = notificationId;
  idCopy = id;
  date = [v10 date];
  v16 = objc_opt_new();
  v17 = [self notificationRequestWithSectionId:idCopy notificationId:notificationIdCopy threadId:@"threadId" subSectionIds:idsCopy title:@"title" message:@"message" timestamp:date destinations:destinationsCopy options:v16];

  return v17;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id requestDestinations:(id)destinations lockScreenPersistence:(unint64_t)persistence
{
  destinationsCopy = destinations;
  idCopy = id;
  v10 = objc_opt_new();
  [v10 setLockScreenPersistence:persistence];
  v11 = [MEMORY[0x277CBEB98] set];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [self notificationRequestWithSectionId:@"sectionId" notificationId:idCopy threadId:@"threadId" subSectionIds:v11 title:@"title" message:@"message" timestamp:date destinations:destinationsCopy options:v10];

  return v13;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id requestDestinations:(id)destinations alertOptionsSuppression:(unint64_t)suppression
{
  destinationsCopy = destinations;
  idCopy = id;
  v10 = objc_alloc_init(NCMutableNotificationAlertOptions);
  [(NCMutableNotificationAlertOptions *)v10 setSuppression:suppression];
  v11 = [MEMORY[0x277CBEB98] set];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = objc_opt_new();
  v14 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v15 = [self notificationRequestWithSectionId:@"sectionId" notificationId:idCopy threadId:@"threadId" subSectionIds:v11 title:@"title" message:@"message" timestamp:date destinations:destinationsCopy options:v13 alertOptions:v10 uuid:v14];

  return v15;
}

+ (NCNotificationRequest)notificationRequestWithNotificationId:(id)id requestDestinations:(id)destinations lockScreenPersistence:(unint64_t)persistence alertOptionsSuppression:(unint64_t)suppression
{
  destinationsCopy = destinations;
  idCopy = id;
  v12 = objc_opt_new();
  [v12 setLockScreenPersistence:persistence];
  v13 = objc_alloc_init(NCMutableNotificationAlertOptions);
  [(NCMutableNotificationAlertOptions *)v13 setSuppression:suppression];
  v14 = [MEMORY[0x277CBEB98] set];
  date = [MEMORY[0x277CBEAA8] date];
  v16 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v17 = [self notificationRequestWithSectionId:@"sectionId" notificationId:idCopy threadId:@"threadId" subSectionIds:v14 title:@"title" message:@"message" timestamp:date destinations:destinationsCopy options:v12 alertOptions:v13 uuid:v16];

  return v17;
}

- (id)_actionsDescriptionForEnvironment:(id)environment
{
  supplementaryActions = [(NCNotificationRequest *)self supplementaryActions];
  v4 = [supplementaryActions objectForKey:@"NCNotificationActionEnvironmentMinimal"];
  v5 = [v4 copy];

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"behavior == %d", 1];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d (%d text)", objc_msgSend(v5, "count"), objc_msgSend(v7, "count")];

  return v8;
}

@end
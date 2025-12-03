@interface TPSTipStatusController
- (BOOL)isContentNeverVisibleForIdentifier:(id)identifier;
- (BOOL)isContentViewedForIdentifier:(id)identifier;
- (BOOL)isContextualInfoLifetimeExpiredForIdentifier:(id)identifier;
- (BOOL)isDesiredOutcomePerformedForIdentifier:(id)identifier;
- (BOOL)isDesiredOutcomeTrackingEligibleForIdentifier:(id)identifier;
- (BOOL)isEligibilityTrackingNeedsRestartForIdentifier:(id)identifier;
- (BOOL)isExpiredForIdentifier:(id)identifier;
- (BOOL)isHintDismissedForIdentifier:(id)identifier;
- (BOOL)isHintDisplayedForIdentifier:(id)identifier;
- (BOOL)isHintIneligibleForIdentifier:(id)identifier;
- (BOOL)isHintIneligibleForReason:(int64_t)reason identifier:(id)identifier;
- (BOOL)isLockScreenHintDisplayEligibleForIdentifier:(id)identifier;
- (BOOL)isOverrideFrequencyControlForIdentifier:(id)identifier;
- (BOOL)isOverrideHoldoutForIdentifier:(id)identifier;
- (BOOL)isPreconditionMatchedForIdentifier:(id)identifier;
- (BOOL)isTipAppDisplayEligibleForIdentifier:(id)identifier;
- (BOOL)unviewedContentAvailable;
- (NSDictionary)tipStatusMap;
- (TPSTipStatusController)initWithAppGroupDefaults:(id)defaults;
- (id)_tipStatusForIdentifier:(id)identifier addIfMissing:(BOOL)missing;
- (id)clonedFromIdentifierForIdentifier:(id)identifier;
- (id)contentViewedDateForIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)correlationIdentifierForIdentifier:(id)identifier;
- (id)dateForTriggerRestartTrackingForIdentifier:(id)identifier;
- (id)debugDescription;
- (id)firstHintDisplayDateForIdentifier:(id)identifier;
- (id)hintEligibleDateForIdentifier:(id)identifier;
- (id)hintNotDisplayedDueToFrequencyControlDatesForIdentifier:(id)identifier;
- (id)hintWouldHaveBeenDisplayedDateForIdentifier:(id)identifier;
- (id)lastDisplayContextForIdentifier:(id)identifier;
- (id)lastUsedVersionForIdentifier:(id)identifier;
- (id)reenrollHoldoutContent;
- (id)reenrollPreconditionChangeContent;
- (id)statusesForCorrelationIdentifier:(id)identifier;
- (id)userInfoForIdentifier:(id)identifier;
- (id)variantIdentifierForIdentifier:(id)identifier;
- (int)hintDisplayedCountForIdentifier:(id)identifier;
- (int64_t)hintIneligibleReasonForIdentifier:(id)identifier;
- (int64_t)tipStatusCount;
- (unint64_t)displayTypeForIdentifier:(id)identifier;
- (unint64_t)usageFlagsForIdentifier:(id)identifier;
- (void)_reloadCacheData;
- (void)addDesiredOutcomePerformedDateForIdentifier:(id)identifier date:(id)date;
- (void)addHintDisplayedForIdentifier:(id)identifier context:(id)context;
- (void)addHintNotDisplayedDueToFrequencyControlDateForIdentifier:(id)identifier;
- (void)addTipStatuses:(id)statuses;
- (void)clearSavedDateForIdentifier:(id)identifier;
- (void)donateDesiredOutcomePerformedForIdentifier:(id)identifier date:(id)date;
- (void)removeAllTipStatus;
- (void)removeCacheData;
- (void)removeTipStatusWithIdentifiers:(id)identifiers;
- (void)removeUserInfoForIdentifier:(id)identifier;
- (void)setAppGroupDefaults:(id)defaults;
- (void)syncWithIdentifiers:(id)identifiers;
- (void)updateCacheData;
- (void)updateClonedFromIdentifierForIdentifier:(id)identifier value:(id)value;
- (void)updateCorrelationIdentifierForIdentifier:(id)identifier value:(id)value;
- (void)updateDateForTriggerRestartTrackingForIdentifier:(id)identifier date:(id)date;
- (void)updateDisplayTypeForIdentifier:(id)identifier value:(unint64_t)value;
- (void)updateHintIneligibleForIdentifier:(id)identifier value:(int64_t)value;
- (void)updateLastUsedVersionForIdentifier:(id)identifier value:(id)value;
- (void)updateUserInfoForIdentifier:(id)identifier key:(id)key value:(id)value;
- (void)updateVariantIdentifierForIdentifier:(id)identifier value:(id)value;
@end

@implementation TPSTipStatusController

- (TPSTipStatusController)initWithAppGroupDefaults:(id)defaults
{
  defaultsCopy = defaults;
  if (defaultsCopy)
  {
    v9.receiver = self;
    v9.super_class = TPSTipStatusController;
    v5 = [(TPSTipStatusController *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(TPSTipStatusController *)v5 setAppGroupDefaults:defaultsCopy];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(NSMutableDictionary *)self->_identifierToTipStatusMap copy];
  [v4 setIdentifierToTipStatusMap:v5];

  return v4;
}

- (void)setAppGroupDefaults:(id)defaults
{
  defaultsCopy = defaults;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_appGroupDefaults, defaults);
  [(TPSTipStatusController *)selfCopy _reloadCacheData];
  objc_sync_exit(selfCopy);
}

- (void)_reloadCacheData
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  appGroupDefaults = self->_appGroupDefaults;
  v12 = v6;
  v8 = [TPSSecureArchivingUtilities unarchivedObjectOfClasses:"unarchivedObjectOfClasses:forKey:userDefaults:" forKey:? userDefaults:?];
  identifierToTipStatusMap = self->_identifierToTipStatusMap;
  self->_identifierToTipStatusMap = v8;

  if (!self->_identifierToTipStatusMap)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = self->_identifierToTipStatusMap;
    self->_identifierToTipStatusMap = dictionary;
  }
}

- (NSDictionary)tipStatusMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableDictionary *)selfCopy->_identifierToTipStatusMap count])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:selfCopy->_identifierToTipStatusMap];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (int64_t)tipStatusCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_identifierToTipStatusMap count];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_tipStatusForIdentifier:(id)identifier addIfMissing:(BOOL)missing
{
  missingCopy = missing;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableDictionary *)selfCopy->_identifierToTipStatusMap objectForKeyedSubscript:identifierCopy];
  v9 = v8;
  if (missingCopy && !v8)
  {
    if ([identifierCopy length])
    {
      v9 = [[TPSTipStatus alloc] initWithIdentifier:identifierCopy];
      if (v9)
      {
        [(NSMutableDictionary *)selfCopy->_identifierToTipStatusMap setObject:v9 forKeyedSubscript:identifierCopy];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)syncWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([identifiersCopy count])
  {
    v5 = MEMORY[0x1E695DFA8];
    allKeys = [(NSMutableDictionary *)selfCopy->_identifierToTipStatusMap allKeys];
    v7 = [v5 setWithArray:allKeys];

    [v7 minusSet:identifiersCopy];
    allObjects = [v7 allObjects];
    [(TPSTipStatusController *)selfCopy updatePreconditionMatchedForIdentifiers:allObjects value:0];
  }

  objc_sync_exit(selfCopy);
}

- (void)addTipStatuses:(id)statuses
{
  statusesCopy = statuses;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__TPSTipStatusController_addTipStatuses___block_invoke;
  v6[3] = &unk_1E81019F0;
  v6[4] = selfCopy;
  [statusesCopy enumerateObjectsUsingBlock:v6];
  [(TPSTipStatusController *)selfCopy updateCacheData];
  objc_sync_exit(selfCopy);
}

void __41__TPSTipStatusController_addTipStatuses___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 identifier];
  v4 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v3];

  if (!v4)
  {
    [*(*(a1 + 32) + 24) setObject:v5 forKeyedSubscript:v3];
    *(*(a1 + 32) + 8) = 1;
  }
}

- (id)statusesForCorrelationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_identifierToTipStatusMap allValues];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__TPSTipStatusController_statusesForCorrelationIdentifier___block_invoke;
  v11[3] = &unk_1E8101A18;
  v8 = identifierCopy;
  v12 = v8;
  v9 = array;
  v13 = v9;
  [allValues enumerateObjectsUsingBlock:v11];

  objc_sync_exit(selfCopy);

  return v9;
}

void __59__TPSTipStatusController_statusesForCorrelationIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 correlationIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v7 copy];
    [v5 addObject:v6];
  }
}

- (void)removeTipStatusWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_identifierToTipStatusMap removeObjectsForKeys:identifiersCopy];
  selfCopy->_isDirty = 1;
  objc_sync_exit(selfCopy);
}

- (void)removeAllTipStatus
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)obj->_identifierToTipStatusMap removeAllObjects];
  obj->_isDirty = 1;
  objc_sync_exit(obj);
}

- (id)reenrollHoldoutContent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMutableDictionary count](selfCopy->_identifierToTipStatusMap, "count")}];
  identifierToTipStatusMap = selfCopy->_identifierToTipStatusMap;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __48__TPSTipStatusController_reenrollHoldoutContent__block_invoke;
  v10 = &unk_1E8101A40;
  v5 = v3;
  v11 = v5;
  v12 = selfCopy;
  [(NSMutableDictionary *)identifierToTipStatusMap enumerateKeysAndObjectsUsingBlock:&v7];
  [(TPSTipStatusController *)selfCopy updateCacheData:v7];

  objc_sync_exit(selfCopy);

  return v5;
}

void __48__TPSTipStatusController_reenrollHoldoutContent__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([a3 reenrollIfAllowed])
  {
    [*(a1 + 32) addObject:v5];
    v6 = +[TPSLogger data];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1C00A7000, v6, OS_LOG_TYPE_INFO, "Content %@ reenrolled due to experiment change.", &v8, 0xCu);
    }

    *(*(a1 + 40) + 8) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)reenrollPreconditionChangeContent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMutableDictionary count](selfCopy->_identifierToTipStatusMap, "count")}];
  identifierToTipStatusMap = selfCopy->_identifierToTipStatusMap;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __59__TPSTipStatusController_reenrollPreconditionChangeContent__block_invoke;
  v10 = &unk_1E8101A40;
  v5 = v3;
  v11 = v5;
  v12 = selfCopy;
  [(NSMutableDictionary *)identifierToTipStatusMap enumerateKeysAndObjectsUsingBlock:&v7];
  [(TPSTipStatusController *)selfCopy updateCacheData:v7];

  objc_sync_exit(selfCopy);

  return v5;
}

void __59__TPSTipStatusController_reenrollPreconditionChangeContent__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 hintIneligibleReason] == 7 && objc_msgSend(v6, "isPreconditionMatched"))
  {
    [v6 setHintIneligibleReason:0];
    [*(a1 + 32) addObject:v5];
    v7 = +[TPSLogger data];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1C00A7000, v7, OS_LOG_TYPE_INFO, "Content %@ eligible for reenrolled due to precondition change.", &v9, 0xCu);
    }

    *(*(a1 + 40) + 8) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isLockScreenHintDisplayEligibleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(TPSTipStatusController *)selfCopy isContentNeverVisibleForIdentifier:identifierCopy])
  {
    v8 = 0;
    goto LABEL_7;
  }

  v6 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:0];
  displayType = [v6 displayType];
  if ([v6 isPreconditionMatched] && !objc_msgSend(v6, "hintIneligibleReason"))
  {
    contentViewedDate = [v6 contentViewedDate];
    if (!contentViewedDate)
    {
      if (!displayType)
      {
        v8 = 1;
        goto LABEL_10;
      }

      if (displayType == 1)
      {
        hintEligibleDate = [v6 hintEligibleDate];
        if (hintEligibleDate)
        {
          desiredOutcomePerformedDates = [v6 desiredOutcomePerformedDates];
          v8 = [desiredOutcomePerformedDates count] == 0;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_10;
      }
    }

    v8 = 0;
LABEL_10:

    goto LABEL_5;
  }

  v8 = 0;
LABEL_5:

LABEL_7:
  objc_sync_exit(selfCopy);

  return v8;
}

- (BOOL)isContextualInfoLifetimeExpiredForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:0];
  isExpired = [v6 isExpired];
  if ((v6 == 0) | isExpired & 1)
  {
    v8 = (v6 != 0) | isExpired;
  }

  else
  {
    v9 = MEMORY[0x1E695DF00];
    contentViewedDate = [v6 contentViewedDate];
    if ([v9 isDateExpired:contentViewedDate maxTimeInterval:-2160000.0])
    {
    }

    else
    {
      v11 = MEMORY[0x1E695DF00];
      hintDisplayedDates = [v6 hintDisplayedDates];
      firstObject = [hintDisplayedDates firstObject];
      LODWORD(v11) = [v11 isDateExpired:firstObject maxTimeInterval:-2160000.0];

      if (!v11)
      {
        v8 = 0;
        goto LABEL_8;
      }
    }

    v8 = 1;
    [v6 setExpired:1];
    selfCopy->_isDirty = 1;
  }

LABEL_8:

  objc_sync_exit(selfCopy);
  return v8 & 1;
}

- (BOOL)isEligibilityTrackingNeedsRestartForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:0];
  hintEligibleDate = [v6 hintEligibleDate];
  v8 = [MEMORY[0x1E695DF00] isDateExpired:hintEligibleDate maxTimeInterval:-2160000.0] && -[TPSTipStatusController isTriggerTrackingEligibleForIdentifier:checkForPrecondition:checkForEligibleDate:](selfCopy, "isTriggerTrackingEligibleForIdentifier:checkForPrecondition:checkForEligibleDate:", identifierCopy, 0, 0);

  objc_sync_exit(selfCopy);
  return v8;
}

- (BOOL)isContentNeverVisibleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:0];
  v7 = v6;
  if (v6)
  {
    hintDisplayedDates = [v6 hintDisplayedDates];
    if ([hintDisplayedDates count])
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      hintDismissalDate = [v7 hintDismissalDate];
      if (hintDismissalDate)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        contentViewedDate = [v7 contentViewedDate];
        if (contentViewedDate)
        {
          LOBYTE(v9) = 0;
        }

        else
        {
          desiredOutcomePerformedDates = [v7 desiredOutcomePerformedDates];
          if ([desiredOutcomePerformedDates count])
          {
            LOBYTE(v9) = 0;
          }

          else
          {
            v9 = [v7 isExpired] ^ 1;
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  objc_sync_exit(selfCopy);
  return v9;
}

- (BOOL)isTipAppDisplayEligibleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:0];
  if ([v6 isPreconditionMatched] && (objc_msgSend(v6, "isUserKnew") & 1) == 0)
  {
    hintEligibleDate = [v6 hintEligibleDate];
    if (hintEligibleDate)
    {
      v7 = 1;
    }

    else
    {
      hintDisplayedDates = [v6 hintDisplayedDates];
      if ([hintDisplayedDates count])
      {
        v7 = 1;
      }

      else
      {
        hintDismissalDate = [v6 hintDismissalDate];
        if (hintDismissalDate)
        {
          v7 = 1;
        }

        else
        {
          contentViewedDate = [v6 contentViewedDate];
          v7 = contentViewedDate != 0;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);
  return v7;
}

- (BOOL)isDesiredOutcomeTrackingEligibleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:0];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  hintDisplayedDates = [v6 hintDisplayedDates];
  if ([hintDisplayedDates count])
  {
    goto LABEL_6;
  }

  hintWouldHaveBeenDisplayedDate = [v7 hintWouldHaveBeenDisplayedDate];
  if (hintWouldHaveBeenDisplayedDate || ([v7 contentViewedDate], (hintWouldHaveBeenDisplayedDate = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_6:
    goto LABEL_7;
  }

  desiredOutcomePerformedDates = [v7 desiredOutcomePerformedDates];
  v12 = [desiredOutcomePerformedDates count];

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (![v7 isPreconditionMatched])
  {
LABEL_10:
    LOBYTE(v10) = 0;
    goto LABEL_11;
  }

  v10 = [v7 isExpired] ^ 1;
LABEL_11:

  objc_sync_exit(selfCopy);
  return v10;
}

- (int64_t)hintIneligibleReasonForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  hintIneligibleReason = [v3 hintIneligibleReason];

  return hintIneligibleReason;
}

- (BOOL)isHintIneligibleForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  isHintIneligible = [v3 isHintIneligible];

  return isHintIneligible;
}

- (BOOL)isHintIneligibleForReason:(int64_t)reason identifier:(id)identifier
{
  v5 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  LOBYTE(reason) = [v5 hintIneligibleReason] == reason;

  return reason;
}

- (void)updateHintIneligibleForIdentifier:(id)identifier value:(int64_t)value
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:value != 0];
  if ([v7 hintIneligibleReason] != value)
  {
    [v7 setHintIneligibleReason:value];
    if (value)
    {
      [v7 setHintEligibleDate:0];
      if (value == 7)
      {
        [v7 setPreconditionMatched:0];
      }
    }

    if (!selfCopy->_isDirty && v7)
    {
      selfCopy->_isDirty = 1;
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)dateForTriggerRestartTrackingForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  dateForTriggerRestartTracking = [v3 dateForTriggerRestartTracking];

  return dateForTriggerRestartTracking;
}

- (void)updateDateForTriggerRestartTrackingForIdentifier:(id)identifier date:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:dateCopy != 0];
  [v8 setDateForTriggerRestartTracking:dateCopy];
  if (!selfCopy->_isDirty && v8)
  {
    selfCopy->_isDirty = 1;
  }

  objc_sync_exit(selfCopy);
}

- (unint64_t)displayTypeForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  displayType = [v3 displayType];

  return displayType;
}

- (void)updateDisplayTypeForIdentifier:(id)identifier value:(unint64_t)value
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:value != 0];
  [v7 setDisplayType:value];
  if (!selfCopy->_isDirty && v7)
  {
    selfCopy->_isDirty = 1;
  }

  objc_sync_exit(selfCopy);
}

- (id)variantIdentifierForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  variantIdentifier = [v3 variantIdentifier];

  return variantIdentifier;
}

- (void)updateVariantIdentifierForIdentifier:(id)identifier value:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:1];
  [v8 setVariantIdentifier:valueCopy];
  if (!selfCopy->_isDirty && v8)
  {
    selfCopy->_isDirty = 1;
  }

  objc_sync_exit(selfCopy);
}

- (id)correlationIdentifierForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  correlationIdentifier = [v3 correlationIdentifier];

  return correlationIdentifier;
}

- (void)updateCorrelationIdentifierForIdentifier:(id)identifier value:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:1];
  [v8 setCorrelationIdentifier:valueCopy];
  if (!selfCopy->_isDirty && v8)
  {
    selfCopy->_isDirty = 1;
  }

  objc_sync_exit(selfCopy);
}

- (id)clonedFromIdentifierForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  clonedFromIdentifier = [v3 clonedFromIdentifier];

  return clonedFromIdentifier;
}

- (void)updateClonedFromIdentifierForIdentifier:(id)identifier value:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:1];
  [v8 setClonedFromIdentifier:valueCopy];
  if (!selfCopy->_isDirty && v8)
  {
    selfCopy->_isDirty = 1;
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isPreconditionMatchedForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  isPreconditionMatched = [v3 isPreconditionMatched];

  return isPreconditionMatched;
}

- (id)hintEligibleDateForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  hintEligibleDate = [v3 hintEligibleDate];

  return hintEligibleDate;
}

- (id)hintWouldHaveBeenDisplayedDateForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  hintWouldHaveBeenDisplayedDate = [v3 hintWouldHaveBeenDisplayedDate];

  return hintWouldHaveBeenDisplayedDate;
}

- (BOOL)isHintDisplayedForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  isHintDisplayed = [v3 isHintDisplayed];

  return isHintDisplayed;
}

- (int)hintDisplayedCountForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  hintDisplayedDates = [v3 hintDisplayedDates];
  v5 = [hintDisplayedDates count];

  return v5;
}

- (void)addHintDisplayedForIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:1];
  date = [MEMORY[0x1E695DF00] date];
  [v8 addHintDisplayedDate:date];

  [v8 setLastDisplayContext:contextCopy];
  if (!selfCopy->_isDirty && v8)
  {
    selfCopy->_isDirty = 1;
  }

  objc_sync_exit(selfCopy);
}

- (id)firstHintDisplayDateForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  hintDisplayedDates = [v3 hintDisplayedDates];
  firstObject = [hintDisplayedDates firstObject];

  return firstObject;
}

- (void)addHintNotDisplayedDueToFrequencyControlDateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:1];
  date = [MEMORY[0x1E695DF00] date];
  [v5 addHintNotDisplayedDueToFrequencyControlDate:date];

  if (!selfCopy->_isDirty && v5)
  {
    selfCopy->_isDirty = 1;
  }

  objc_sync_exit(selfCopy);
}

- (id)hintNotDisplayedDueToFrequencyControlDatesForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  hintNotDisplayedDueToFrequencyControlDates = [v3 hintNotDisplayedDueToFrequencyControlDates];

  return hintNotDisplayedDueToFrequencyControlDates;
}

- (BOOL)isHintDismissedForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  isHintDismissed = [v3 isHintDismissed];

  return isHintDismissed;
}

- (BOOL)isContentViewedForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  isContentViewed = [v3 isContentViewed];

  return isContentViewed;
}

- (id)contentViewedDateForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  contentViewedDate = [v3 contentViewedDate];

  return contentViewedDate;
}

- (BOOL)isDesiredOutcomePerformedForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  isDesiredOutcomePerformed = [v3 isDesiredOutcomePerformed];

  return isDesiredOutcomePerformed;
}

- (void)donateDesiredOutcomePerformedForIdentifier:(id)identifier date:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v7 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifierCopy addIfMissing:0];
  v8 = v7;
  if (v7)
  {
    if ([v7 hintIneligibleReason] == 10)
    {
      hintWouldHaveBeenDisplayedDate = [v8 hintWouldHaveBeenDisplayedDate];
    }

    else
    {
      hintDisplayedDates = [v8 hintDisplayedDates];
      hintWouldHaveBeenDisplayedDate = [hintDisplayedDates lastObject];
    }

    v11 = +[TPSAnalyticsCommonDefines displayTypeStringForDisplayType:](TPSAnalyticsCommonDefines, "displayTypeStringForDisplayType:", [v8 displayType]);
    correlationIdentifier = [v8 correlationIdentifier];
    overrideHoldout = [v8 overrideHoldout];
    lastDisplayContext = [v8 lastDisplayContext];
    v15 = [TPSAnalyticsEventDesiredOutcomePerformed eventWithTipID:identifierCopy correlationID:correlationIdentifier displayType:v11 overrideHoldout:overrideHoldout lastDisplayedContext:lastDisplayContext lastHintDisplayedDate:hintWouldHaveBeenDisplayedDate desiredOutcomePerformedDate:dateCopy];
    [v15 log];
  }
}

- (void)addDesiredOutcomePerformedDateForIdentifier:(id)identifier date:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:1];
  desiredOutcomePerformedDates = [v8 desiredOutcomePerformedDates];
  v10 = [desiredOutcomePerformedDates count];

  if (!v10)
  {
    [(TPSTipStatusController *)selfCopy donateDesiredOutcomePerformedForIdentifier:identifierCopy date:dateCopy];
  }

  [v8 addDesiredOutcomePerformedDate:dateCopy];
  if (!selfCopy->_isDirty && v8)
  {
    selfCopy->_isDirty = 1;
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isExpiredForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  isExpired = [v3 isExpired];

  return isExpired;
}

- (id)lastUsedVersionForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  lastUsedVersion = [v3 lastUsedVersion];

  return lastUsedVersion;
}

- (void)updateLastUsedVersionForIdentifier:(id)identifier value:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:1];
  lastUsedVersion = [v8 lastUsedVersion];
  v10 = [lastUsedVersion isEqualToString:valueCopy];

  if ((v10 & 1) == 0)
  {
    [v8 setLastUsedVersion:valueCopy];
    selfCopy->_isDirty = 1;
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isOverrideHoldoutForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  overrideHoldout = [v3 overrideHoldout];

  return overrideHoldout;
}

- (BOOL)isOverrideFrequencyControlForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  overrideFrequencyControl = [v3 overrideFrequencyControl];

  return overrideFrequencyControl;
}

- (unint64_t)usageFlagsForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  usageFlags = [v3 usageFlags];

  return usageFlags;
}

- (id)lastDisplayContextForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  lastDisplayContext = [v3 lastDisplayContext];

  return lastDisplayContext;
}

- (id)userInfoForIdentifier:(id)identifier
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:identifier addIfMissing:0];
  userInfo = [v3 userInfo];

  return userInfo;
}

- (void)clearSavedDateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:0];
  v6 = v5;
  if (!selfCopy->_isDirty && v5)
  {
    [v5 setSavedDate:0];
    selfCopy->_isDirty = 1;
  }

  objc_sync_exit(selfCopy);
}

- (void)updateUserInfoForIdentifier:(id)identifier key:(id)key value:(id)value
{
  identifierCopy = identifier;
  keyCopy = key;
  valueCopy = value;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:1];
  [v11 updateUserInfoValue:valueCopy forKey:keyCopy];
  if (!selfCopy->_isDirty && v11)
  {
    selfCopy->_isDirty = 1;
  }

  objc_sync_exit(selfCopy);
}

- (void)removeUserInfoForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(TPSTipStatusController *)selfCopy _tipStatusForIdentifier:identifierCopy addIfMissing:1];
  [v5 removeUserInfo];
  if (!selfCopy->_isDirty && v5)
  {
    selfCopy->_isDirty = 1;
  }

  objc_sync_exit(selfCopy);
}

- (void)updateCacheData
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_isDirty)
  {
    [TPSSecureArchivingUtilities archivedDataWithRootObject:obj->_identifierToTipStatusMap forKey:@"TipStatusIdentifierToTipStatusMap" userDefaults:obj->_appGroupDefaults];
    [(NSUserDefaults *)obj->_appGroupDefaults synchronize];
    obj->_isDirty = 0;
  }

  objc_sync_exit(obj);
}

- (void)removeCacheData
{
  v3 = +[TPSLogger data];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(TPSTipStatusController *)v3 removeCacheData];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_identifierToTipStatusMap removeAllObjects];
  selfCopy->_isDirty = 1;
  [(TPSTipStatusController *)selfCopy updateCacheData];
  objc_sync_exit(selfCopy);
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@", self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_identifierToTipStatusMap allValues];
  v6 = [allValues debugDescription];
  [v3 appendFormat:@"\n %@ = %@\n", @"TipStatusIdentifierToTipStatusMap", v6];

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)unviewedContentAvailable
{
  selfCopy = self;
  tipStatusMap = [(TPSTipStatusController *)self tipStatusMap];
  allKeys = [tipStatusMap allKeys];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__TPSTipStatusController_unviewedContentAvailable__block_invoke;
  v6[3] = &unk_1E81015A0;
  v6[4] = selfCopy;
  LOBYTE(selfCopy) = [allKeys na_any:v6];

  return selfCopy;
}

@end
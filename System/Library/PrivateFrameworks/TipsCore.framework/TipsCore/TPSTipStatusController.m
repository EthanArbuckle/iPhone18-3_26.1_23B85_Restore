@interface TPSTipStatusController
- (BOOL)isContentNeverVisibleForIdentifier:(id)a3;
- (BOOL)isContentViewedForIdentifier:(id)a3;
- (BOOL)isContextualInfoLifetimeExpiredForIdentifier:(id)a3;
- (BOOL)isDesiredOutcomePerformedForIdentifier:(id)a3;
- (BOOL)isDesiredOutcomeTrackingEligibleForIdentifier:(id)a3;
- (BOOL)isEligibilityTrackingNeedsRestartForIdentifier:(id)a3;
- (BOOL)isExpiredForIdentifier:(id)a3;
- (BOOL)isHintDismissedForIdentifier:(id)a3;
- (BOOL)isHintDisplayedForIdentifier:(id)a3;
- (BOOL)isHintIneligibleForIdentifier:(id)a3;
- (BOOL)isHintIneligibleForReason:(int64_t)a3 identifier:(id)a4;
- (BOOL)isLockScreenHintDisplayEligibleForIdentifier:(id)a3;
- (BOOL)isOverrideFrequencyControlForIdentifier:(id)a3;
- (BOOL)isOverrideHoldoutForIdentifier:(id)a3;
- (BOOL)isPreconditionMatchedForIdentifier:(id)a3;
- (BOOL)isTipAppDisplayEligibleForIdentifier:(id)a3;
- (BOOL)unviewedContentAvailable;
- (NSDictionary)tipStatusMap;
- (TPSTipStatusController)initWithAppGroupDefaults:(id)a3;
- (id)_tipStatusForIdentifier:(id)a3 addIfMissing:(BOOL)a4;
- (id)clonedFromIdentifierForIdentifier:(id)a3;
- (id)contentViewedDateForIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)correlationIdentifierForIdentifier:(id)a3;
- (id)dateForTriggerRestartTrackingForIdentifier:(id)a3;
- (id)debugDescription;
- (id)firstHintDisplayDateForIdentifier:(id)a3;
- (id)hintEligibleDateForIdentifier:(id)a3;
- (id)hintNotDisplayedDueToFrequencyControlDatesForIdentifier:(id)a3;
- (id)hintWouldHaveBeenDisplayedDateForIdentifier:(id)a3;
- (id)lastDisplayContextForIdentifier:(id)a3;
- (id)lastUsedVersionForIdentifier:(id)a3;
- (id)reenrollHoldoutContent;
- (id)reenrollPreconditionChangeContent;
- (id)statusesForCorrelationIdentifier:(id)a3;
- (id)userInfoForIdentifier:(id)a3;
- (id)variantIdentifierForIdentifier:(id)a3;
- (int)hintDisplayedCountForIdentifier:(id)a3;
- (int64_t)hintIneligibleReasonForIdentifier:(id)a3;
- (int64_t)tipStatusCount;
- (unint64_t)displayTypeForIdentifier:(id)a3;
- (unint64_t)usageFlagsForIdentifier:(id)a3;
- (void)_reloadCacheData;
- (void)addDesiredOutcomePerformedDateForIdentifier:(id)a3 date:(id)a4;
- (void)addHintDisplayedForIdentifier:(id)a3 context:(id)a4;
- (void)addHintNotDisplayedDueToFrequencyControlDateForIdentifier:(id)a3;
- (void)addTipStatuses:(id)a3;
- (void)clearSavedDateForIdentifier:(id)a3;
- (void)donateDesiredOutcomePerformedForIdentifier:(id)a3 date:(id)a4;
- (void)removeAllTipStatus;
- (void)removeCacheData;
- (void)removeTipStatusWithIdentifiers:(id)a3;
- (void)removeUserInfoForIdentifier:(id)a3;
- (void)setAppGroupDefaults:(id)a3;
- (void)syncWithIdentifiers:(id)a3;
- (void)updateCacheData;
- (void)updateClonedFromIdentifierForIdentifier:(id)a3 value:(id)a4;
- (void)updateCorrelationIdentifierForIdentifier:(id)a3 value:(id)a4;
- (void)updateDateForTriggerRestartTrackingForIdentifier:(id)a3 date:(id)a4;
- (void)updateDisplayTypeForIdentifier:(id)a3 value:(unint64_t)a4;
- (void)updateHintIneligibleForIdentifier:(id)a3 value:(int64_t)a4;
- (void)updateLastUsedVersionForIdentifier:(id)a3 value:(id)a4;
- (void)updateUserInfoForIdentifier:(id)a3 key:(id)a4 value:(id)a5;
- (void)updateVariantIdentifierForIdentifier:(id)a3 value:(id)a4;
@end

@implementation TPSTipStatusController

- (TPSTipStatusController)initWithAppGroupDefaults:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = TPSTipStatusController;
    v5 = [(TPSTipStatusController *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(TPSTipStatusController *)v5 setAppGroupDefaults:v4];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NSMutableDictionary *)self->_identifierToTipStatusMap copy];
  [v4 setIdentifierToTipStatusMap:v5];

  return v4;
}

- (void)setAppGroupDefaults:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_appGroupDefaults, a3);
  [(TPSTipStatusController *)v5 _reloadCacheData];
  objc_sync_exit(v5);
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
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = self->_identifierToTipStatusMap;
    self->_identifierToTipStatusMap = v10;
  }
}

- (NSDictionary)tipStatusMap
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(NSMutableDictionary *)v2->_identifierToTipStatusMap count])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v2->_identifierToTipStatusMap];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (int64_t)tipStatusCount
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_identifierToTipStatusMap count];
  objc_sync_exit(v2);

  return v3;
}

- (id)_tipStatusForIdentifier:(id)a3 addIfMissing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)v7->_identifierToTipStatusMap objectForKeyedSubscript:v6];
  v9 = v8;
  if (v4 && !v8)
  {
    if ([v6 length])
    {
      v9 = [[TPSTipStatus alloc] initWithIdentifier:v6];
      if (v9)
      {
        [(NSMutableDictionary *)v7->_identifierToTipStatusMap setObject:v9 forKeyedSubscript:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  objc_sync_exit(v7);

  return v9;
}

- (void)syncWithIdentifiers:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([v9 count])
  {
    v5 = MEMORY[0x1E695DFA8];
    v6 = [(NSMutableDictionary *)v4->_identifierToTipStatusMap allKeys];
    v7 = [v5 setWithArray:v6];

    [v7 minusSet:v9];
    v8 = [v7 allObjects];
    [(TPSTipStatusController *)v4 updatePreconditionMatchedForIdentifiers:v8 value:0];
  }

  objc_sync_exit(v4);
}

- (void)addTipStatuses:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__TPSTipStatusController_addTipStatuses___block_invoke;
  v6[3] = &unk_1E81019F0;
  v6[4] = v5;
  [v4 enumerateObjectsUsingBlock:v6];
  [(TPSTipStatusController *)v5 updateCacheData];
  objc_sync_exit(v5);
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

- (id)statusesForCorrelationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)v6->_identifierToTipStatusMap allValues];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__TPSTipStatusController_statusesForCorrelationIdentifier___block_invoke;
  v11[3] = &unk_1E8101A18;
  v8 = v4;
  v12 = v8;
  v9 = v5;
  v13 = v9;
  [v7 enumerateObjectsUsingBlock:v11];

  objc_sync_exit(v6);

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

- (void)removeTipStatusWithIdentifiers:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_identifierToTipStatusMap removeObjectsForKeys:v5];
  v4->_isDirty = 1;
  objc_sync_exit(v4);
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMutableDictionary count](v2->_identifierToTipStatusMap, "count")}];
  identifierToTipStatusMap = v2->_identifierToTipStatusMap;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __48__TPSTipStatusController_reenrollHoldoutContent__block_invoke;
  v10 = &unk_1E8101A40;
  v5 = v3;
  v11 = v5;
  v12 = v2;
  [(NSMutableDictionary *)identifierToTipStatusMap enumerateKeysAndObjectsUsingBlock:&v7];
  [(TPSTipStatusController *)v2 updateCacheData:v7];

  objc_sync_exit(v2);

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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[NSMutableDictionary count](v2->_identifierToTipStatusMap, "count")}];
  identifierToTipStatusMap = v2->_identifierToTipStatusMap;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __59__TPSTipStatusController_reenrollPreconditionChangeContent__block_invoke;
  v10 = &unk_1E8101A40;
  v5 = v3;
  v11 = v5;
  v12 = v2;
  [(NSMutableDictionary *)identifierToTipStatusMap enumerateKeysAndObjectsUsingBlock:&v7];
  [(TPSTipStatusController *)v2 updateCacheData:v7];

  objc_sync_exit(v2);

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

- (BOOL)isLockScreenHintDisplayEligibleForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(TPSTipStatusController *)v5 isContentNeverVisibleForIdentifier:v4])
  {
    v8 = 0;
    goto LABEL_7;
  }

  v6 = [(TPSTipStatusController *)v5 _tipStatusForIdentifier:v4 addIfMissing:0];
  v7 = [v6 displayType];
  if ([v6 isPreconditionMatched] && !objc_msgSend(v6, "hintIneligibleReason"))
  {
    v10 = [v6 contentViewedDate];
    if (!v10)
    {
      if (!v7)
      {
        v8 = 1;
        goto LABEL_10;
      }

      if (v7 == 1)
      {
        v11 = [v6 hintEligibleDate];
        if (v11)
        {
          v12 = [v6 desiredOutcomePerformedDates];
          v8 = [v12 count] == 0;
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
  objc_sync_exit(v5);

  return v8;
}

- (BOOL)isContextualInfoLifetimeExpiredForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(TPSTipStatusController *)v5 _tipStatusForIdentifier:v4 addIfMissing:0];
  v7 = [v6 isExpired];
  if ((v6 == 0) | v7 & 1)
  {
    v8 = (v6 != 0) | v7;
  }

  else
  {
    v9 = MEMORY[0x1E695DF00];
    v10 = [v6 contentViewedDate];
    if ([v9 isDateExpired:v10 maxTimeInterval:-2160000.0])
    {
    }

    else
    {
      v11 = MEMORY[0x1E695DF00];
      v12 = [v6 hintDisplayedDates];
      v13 = [v12 firstObject];
      LODWORD(v11) = [v11 isDateExpired:v13 maxTimeInterval:-2160000.0];

      if (!v11)
      {
        v8 = 0;
        goto LABEL_8;
      }
    }

    v8 = 1;
    [v6 setExpired:1];
    v5->_isDirty = 1;
  }

LABEL_8:

  objc_sync_exit(v5);
  return v8 & 1;
}

- (BOOL)isEligibilityTrackingNeedsRestartForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(TPSTipStatusController *)v5 _tipStatusForIdentifier:v4 addIfMissing:0];
  v7 = [v6 hintEligibleDate];
  v8 = [MEMORY[0x1E695DF00] isDateExpired:v7 maxTimeInterval:-2160000.0] && -[TPSTipStatusController isTriggerTrackingEligibleForIdentifier:checkForPrecondition:checkForEligibleDate:](v5, "isTriggerTrackingEligibleForIdentifier:checkForPrecondition:checkForEligibleDate:", v4, 0, 0);

  objc_sync_exit(v5);
  return v8;
}

- (BOOL)isContentNeverVisibleForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(TPSTipStatusController *)v5 _tipStatusForIdentifier:v4 addIfMissing:0];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 hintDisplayedDates];
    if ([v8 count])
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v10 = [v7 hintDismissalDate];
      if (v10)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        v11 = [v7 contentViewedDate];
        if (v11)
        {
          LOBYTE(v9) = 0;
        }

        else
        {
          v12 = [v7 desiredOutcomePerformedDates];
          if ([v12 count])
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

  objc_sync_exit(v5);
  return v9;
}

- (BOOL)isTipAppDisplayEligibleForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(TPSTipStatusController *)v5 _tipStatusForIdentifier:v4 addIfMissing:0];
  if ([v6 isPreconditionMatched] && (objc_msgSend(v6, "isUserKnew") & 1) == 0)
  {
    v8 = [v6 hintEligibleDate];
    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v9 = [v6 hintDisplayedDates];
      if ([v9 count])
      {
        v7 = 1;
      }

      else
      {
        v10 = [v6 hintDismissalDate];
        if (v10)
        {
          v7 = 1;
        }

        else
        {
          v11 = [v6 contentViewedDate];
          v7 = v11 != 0;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v5);
  return v7;
}

- (BOOL)isDesiredOutcomeTrackingEligibleForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(TPSTipStatusController *)v5 _tipStatusForIdentifier:v4 addIfMissing:0];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = [v6 hintDisplayedDates];
  if ([v8 count])
  {
    goto LABEL_6;
  }

  v9 = [v7 hintWouldHaveBeenDisplayedDate];
  if (v9 || ([v7 contentViewedDate], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_6:
    goto LABEL_7;
  }

  v11 = [v7 desiredOutcomePerformedDates];
  v12 = [v11 count];

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

  objc_sync_exit(v5);
  return v10;
}

- (int64_t)hintIneligibleReasonForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 hintIneligibleReason];

  return v4;
}

- (BOOL)isHintIneligibleForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 isHintIneligible];

  return v4;
}

- (BOOL)isHintIneligibleForReason:(int64_t)a3 identifier:(id)a4
{
  v5 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a4 addIfMissing:0];
  LOBYTE(a3) = [v5 hintIneligibleReason] == a3;

  return a3;
}

- (void)updateHintIneligibleForIdentifier:(id)a3 value:(int64_t)a4
{
  v8 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(TPSTipStatusController *)v6 _tipStatusForIdentifier:v8 addIfMissing:a4 != 0];
  if ([v7 hintIneligibleReason] != a4)
  {
    [v7 setHintIneligibleReason:a4];
    if (a4)
    {
      [v7 setHintEligibleDate:0];
      if (a4 == 7)
      {
        [v7 setPreconditionMatched:0];
      }
    }

    if (!v6->_isDirty && v7)
    {
      v6->_isDirty = 1;
    }
  }

  objc_sync_exit(v6);
}

- (id)dateForTriggerRestartTrackingForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 dateForTriggerRestartTracking];

  return v4;
}

- (void)updateDateForTriggerRestartTrackingForIdentifier:(id)a3 date:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(TPSTipStatusController *)v7 _tipStatusForIdentifier:v9 addIfMissing:v6 != 0];
  [v8 setDateForTriggerRestartTracking:v6];
  if (!v7->_isDirty && v8)
  {
    v7->_isDirty = 1;
  }

  objc_sync_exit(v7);
}

- (unint64_t)displayTypeForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 displayType];

  return v4;
}

- (void)updateDisplayTypeForIdentifier:(id)a3 value:(unint64_t)a4
{
  v8 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(TPSTipStatusController *)v6 _tipStatusForIdentifier:v8 addIfMissing:a4 != 0];
  [v7 setDisplayType:a4];
  if (!v6->_isDirty && v7)
  {
    v6->_isDirty = 1;
  }

  objc_sync_exit(v6);
}

- (id)variantIdentifierForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 variantIdentifier];

  return v4;
}

- (void)updateVariantIdentifierForIdentifier:(id)a3 value:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(TPSTipStatusController *)v7 _tipStatusForIdentifier:v9 addIfMissing:1];
  [v8 setVariantIdentifier:v6];
  if (!v7->_isDirty && v8)
  {
    v7->_isDirty = 1;
  }

  objc_sync_exit(v7);
}

- (id)correlationIdentifierForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 correlationIdentifier];

  return v4;
}

- (void)updateCorrelationIdentifierForIdentifier:(id)a3 value:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(TPSTipStatusController *)v7 _tipStatusForIdentifier:v9 addIfMissing:1];
  [v8 setCorrelationIdentifier:v6];
  if (!v7->_isDirty && v8)
  {
    v7->_isDirty = 1;
  }

  objc_sync_exit(v7);
}

- (id)clonedFromIdentifierForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 clonedFromIdentifier];

  return v4;
}

- (void)updateClonedFromIdentifierForIdentifier:(id)a3 value:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(TPSTipStatusController *)v7 _tipStatusForIdentifier:v9 addIfMissing:1];
  [v8 setClonedFromIdentifier:v6];
  if (!v7->_isDirty && v8)
  {
    v7->_isDirty = 1;
  }

  objc_sync_exit(v7);
}

- (BOOL)isPreconditionMatchedForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 isPreconditionMatched];

  return v4;
}

- (id)hintEligibleDateForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 hintEligibleDate];

  return v4;
}

- (id)hintWouldHaveBeenDisplayedDateForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 hintWouldHaveBeenDisplayedDate];

  return v4;
}

- (BOOL)isHintDisplayedForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 isHintDisplayed];

  return v4;
}

- (int)hintDisplayedCountForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 hintDisplayedDates];
  v5 = [v4 count];

  return v5;
}

- (void)addHintDisplayedForIdentifier:(id)a3 context:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(TPSTipStatusController *)v7 _tipStatusForIdentifier:v10 addIfMissing:1];
  v9 = [MEMORY[0x1E695DF00] date];
  [v8 addHintDisplayedDate:v9];

  [v8 setLastDisplayContext:v6];
  if (!v7->_isDirty && v8)
  {
    v7->_isDirty = 1;
  }

  objc_sync_exit(v7);
}

- (id)firstHintDisplayDateForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 hintDisplayedDates];
  v5 = [v4 firstObject];

  return v5;
}

- (void)addHintNotDisplayedDueToFrequencyControlDateForIdentifier:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(TPSTipStatusController *)v4 _tipStatusForIdentifier:v7 addIfMissing:1];
  v6 = [MEMORY[0x1E695DF00] date];
  [v5 addHintNotDisplayedDueToFrequencyControlDate:v6];

  if (!v4->_isDirty && v5)
  {
    v4->_isDirty = 1;
  }

  objc_sync_exit(v4);
}

- (id)hintNotDisplayedDueToFrequencyControlDatesForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 hintNotDisplayedDueToFrequencyControlDates];

  return v4;
}

- (BOOL)isHintDismissedForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 isHintDismissed];

  return v4;
}

- (BOOL)isContentViewedForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 isContentViewed];

  return v4;
}

- (id)contentViewedDateForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 contentViewedDate];

  return v4;
}

- (BOOL)isDesiredOutcomePerformedForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 isDesiredOutcomePerformed];

  return v4;
}

- (void)donateDesiredOutcomePerformedForIdentifier:(id)a3 date:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(TPSTipStatusController *)self _tipStatusForIdentifier:v16 addIfMissing:0];
  v8 = v7;
  if (v7)
  {
    if ([v7 hintIneligibleReason] == 10)
    {
      v9 = [v8 hintWouldHaveBeenDisplayedDate];
    }

    else
    {
      v10 = [v8 hintDisplayedDates];
      v9 = [v10 lastObject];
    }

    v11 = +[TPSAnalyticsCommonDefines displayTypeStringForDisplayType:](TPSAnalyticsCommonDefines, "displayTypeStringForDisplayType:", [v8 displayType]);
    v12 = [v8 correlationIdentifier];
    v13 = [v8 overrideHoldout];
    v14 = [v8 lastDisplayContext];
    v15 = [TPSAnalyticsEventDesiredOutcomePerformed eventWithTipID:v16 correlationID:v12 displayType:v11 overrideHoldout:v13 lastDisplayedContext:v14 lastHintDisplayedDate:v9 desiredOutcomePerformedDate:v6];
    [v15 log];
  }
}

- (void)addDesiredOutcomePerformedDateForIdentifier:(id)a3 date:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(TPSTipStatusController *)v7 _tipStatusForIdentifier:v11 addIfMissing:1];
  v9 = [v8 desiredOutcomePerformedDates];
  v10 = [v9 count];

  if (!v10)
  {
    [(TPSTipStatusController *)v7 donateDesiredOutcomePerformedForIdentifier:v11 date:v6];
  }

  [v8 addDesiredOutcomePerformedDate:v6];
  if (!v7->_isDirty && v8)
  {
    v7->_isDirty = 1;
  }

  objc_sync_exit(v7);
}

- (BOOL)isExpiredForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 isExpired];

  return v4;
}

- (id)lastUsedVersionForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 lastUsedVersion];

  return v4;
}

- (void)updateLastUsedVersionForIdentifier:(id)a3 value:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(TPSTipStatusController *)v7 _tipStatusForIdentifier:v11 addIfMissing:1];
  v9 = [v8 lastUsedVersion];
  v10 = [v9 isEqualToString:v6];

  if ((v10 & 1) == 0)
  {
    [v8 setLastUsedVersion:v6];
    v7->_isDirty = 1;
  }

  objc_sync_exit(v7);
}

- (BOOL)isOverrideHoldoutForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 overrideHoldout];

  return v4;
}

- (BOOL)isOverrideFrequencyControlForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 overrideFrequencyControl];

  return v4;
}

- (unint64_t)usageFlagsForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 usageFlags];

  return v4;
}

- (id)lastDisplayContextForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 lastDisplayContext];

  return v4;
}

- (id)userInfoForIdentifier:(id)a3
{
  v3 = [(TPSTipStatusController *)self _tipStatusForIdentifier:a3 addIfMissing:0];
  v4 = [v3 userInfo];

  return v4;
}

- (void)clearSavedDateForIdentifier:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(TPSTipStatusController *)v4 _tipStatusForIdentifier:v7 addIfMissing:0];
  v6 = v5;
  if (!v4->_isDirty && v5)
  {
    [v5 setSavedDate:0];
    v4->_isDirty = 1;
  }

  objc_sync_exit(v4);
}

- (void)updateUserInfoForIdentifier:(id)a3 key:(id)a4 value:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(TPSTipStatusController *)v10 _tipStatusForIdentifier:v12 addIfMissing:1];
  [v11 updateUserInfoValue:v9 forKey:v8];
  if (!v10->_isDirty && v11)
  {
    v10->_isDirty = 1;
  }

  objc_sync_exit(v10);
}

- (void)removeUserInfoForIdentifier:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(TPSTipStatusController *)v4 _tipStatusForIdentifier:v6 addIfMissing:1];
  [v5 removeUserInfo];
  if (!v4->_isDirty && v5)
  {
    v4->_isDirty = 1;
  }

  objc_sync_exit(v4);
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

  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_identifierToTipStatusMap removeAllObjects];
  v4->_isDirty = 1;
  [(TPSTipStatusController *)v4 updateCacheData];
  objc_sync_exit(v4);
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@", self];
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)v4->_identifierToTipStatusMap allValues];
  v6 = [v5 debugDescription];
  [v3 appendFormat:@"\n %@ = %@\n", @"TipStatusIdentifierToTipStatusMap", v6];

  objc_sync_exit(v4);

  return v3;
}

- (BOOL)unviewedContentAvailable
{
  v2 = self;
  v3 = [(TPSTipStatusController *)self tipStatusMap];
  v4 = [v3 allKeys];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__TPSTipStatusController_unviewedContentAvailable__block_invoke;
  v6[3] = &unk_1E81015A0;
  v6[4] = v2;
  LOBYTE(v2) = [v4 na_any:v6];

  return v2;
}

@end
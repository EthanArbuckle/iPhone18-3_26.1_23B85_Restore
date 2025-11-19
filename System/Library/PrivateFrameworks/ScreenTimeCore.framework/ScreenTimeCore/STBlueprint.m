@interface STBlueprint
+ (BOOL)_isStateChangeValid:(int64_t)a3 forState:(int64_t)a4;
+ (BOOL)_updateConfiguration:(id)a3 withDeclaration:(id)a4 context:(id)a5 error:(id *)a6;
+ (BOOL)deleteManagedUserBlueprintForUser:(id)a3 error:(id *)a4;
+ (BOOL)deleteUsageLimitWithIdentifier:(id)a3 user:(id)a4 managedObjectContext:(id)a5 error:(id *)a6;
+ (BOOL)disableManagedUserBlueprintForUser:(id)a3 error:(id *)a4;
+ (BOOL)disableRestrictionsBlueprintForUser:(id)a3 error:(id *)a4;
+ (BOOL)removeFixedDurationOnDemandDowntimeForUserID:(id)a3 context:(id)a4 error:(id *)a5;
+ (BOOL)saveAlwaysAllowListForUser:(id)a3 withBundleIDs:(id)a4 overwriteExistingList:(BOOL)a5 error:(id *)a6;
+ (BOOL)saveDefaultAlwaysAllowListIfNecessaryForUser:(id)a3 error:(id *)a4;
+ (BOOL)saveManagedUserBlueprintForUser:(id)a3 error:(id *)a4;
+ (BOOL)saveRestrictionsBlueprintWithValuesForPresetRestrictions:(id)a3 forUser:(id)a4 error:(id *)a5;
+ (BOOL)saveUsageLimitWithIdentifier:(id)a3 user:(id)a4 bundleIdentifiers:(id)a5 webDomains:(id)a6 categoryIdentifiers:(id)a7 dailyBudgetLimit:(double)a8 budgetLimitByWeekday:(id)a9 enabled:(BOOL)a10 behaviorType:(unint64_t)a11 error:(id *)a12;
+ (BOOL)shouldUseGracePeriodForDowntimeOverride:(id)a3 configuration:(id)a4;
+ (NSDateComponents)defaultEndTime;
+ (NSDateComponents)defaultStartTime;
+ (id)_buildConfigurationsByDeclarationIdentifierFromBlueprint:(id)a3 error:(id *)a4;
+ (id)_buildDeclarationsFromConfigurationsByDeclarationIdentifier:(id)a3 predicate:(id)a4 identifier:(id)a5;
+ (id)_buildPredicateForDisablingBlueprint:(id)a3;
+ (id)_buildPredicateForUnspecializedBlueprint:(id)a3 usingDateFormatter:(id)a4 calendar:(id)a5;
+ (id)_cemPredicateWithDowntimeOverride:(id)a3 shouldUseGracePeriod:(BOOL)a4 dateFormater:(id)a5 calendar:(id)a6;
+ (id)_configurationForDowntime:(id)a3 context:(id)a4;
+ (id)_createDowntimeForUser:(id)a3 organization:(id)a4 context:(id)a5;
+ (id)_declarationForDowntime:(id)a3 user:(id)a4 configuration:(id)a5 behaviorType:(unint64_t)a6 context:(id)a7 error:(id *)a8;
+ (id)_declarationModeForBehaviorType:(unint64_t)a3;
+ (id)_downtimeForUser:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)_fetchOrCreateDowntimeForUserID:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)_fetchRequestMatchingBlueprintsForUserWithDSID:(id)a3;
+ (id)_getDisplayNameAndAddCategories:(id)a3 toItemNames:(id)a4 remainingItems:(unint64_t *)a5;
+ (id)_organizationIdentifierForUser:(id)a3 context:(id)a4;
+ (id)_predicateForAlwaysAllowedAppsBlueprint:(id)a3 withDateFormatter:(id)a4 calendar:(id)a5;
+ (id)_predicateForDowntimeBlueprint:(id)a3 withDateFormatter:(id)a4 calendar:(id)a5;
+ (id)_predicateForManagedUserBlueprint:(id)a3 withDateFormatter:(id)a4 calendar:(id)a5;
+ (id)_predicateForRestrictionsBlueprint:(id)a3 withDateFormatter:(id)a4 calendar:(id)a5;
+ (id)_predicateForUsageLimitBlueprint:(id)a3 withDateFormatter:(id)a4 calendar:(id)a5;
+ (id)_predicateForUsageLimitOverrideBlueprint:(id)a3 withDateFormatter:(id)a4 calendar:(id)a5;
+ (id)_updatedDowntimeForUser:(id)a3 startTime:(id)a4 endTime:(id)a5 scheduleByWeekdayIndex:(id)a6 enabled:(BOOL)a7 behaviorType:(unint64_t)a8 error:(id *)a9;
+ (id)_updatedScheduleFromSchedule:(id)a3 withStartTime:(id)a4 endTime:(id)a5 scheduleByWeekdayIndex:(id)a6 context:(id)a7;
+ (id)_userDSIDStringForUser:(id)a3 context:(id)a4;
+ (id)_userForUserID:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)alwaysAllowBundleIdentifiersForUser:(id)a3 error:(id *)a4;
+ (id)appExceptionsDeclarationForBlueprint:(id)a3 usingCache:(id)a4;
+ (id)applyAutomaticOnDemandDowntimeStateChange:(int64_t)a3 forUserID:(id)a4 context:(id)a5 error:(id *)a6;
+ (id)applyOnDemandDowntimeStateChange:(int64_t)a3 withFixedDuration:(double)a4 forUserID:(id)a5 context:(id)a6 error:(id *)a7;
+ (id)applyScheduleStateChange:(int64_t)a3 forUserID:(id)a4 context:(id)a5 error:(id *)a6;
+ (id)blueprintIdentifierForUser:(id)a3;
+ (id)blueprintTypeForDeclarationType:(id)a3;
+ (id)createBlueprintWithType:(id)a3 user:(id)a4;
+ (id)createManagedUserBlueprintForUser:(id)a3 error:(id *)a4;
+ (id)customScheduleTimeRangeWithLocale:(id)a3 startTimeComponents:(id)a4 endTimeComponents:(id)a5;
+ (id)displayNameForUsageLimitWithCategoryIdentifiers:(id)a3 bundleIdentifiers:(id)a4 webDomains:(id)a5;
+ (id)downtimeConfigurationForUserID:(id)a3 context:(id)a4 error:(id *)a5;
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)fetchRequest;
+ (id)fetchRequestForBlueprintsOfType:(id)a3;
+ (id)fetchRequestMatchingBlueprintsForUser:(id)a3 fromOrganization:(id)a4 includeTombstones:(BOOL)a5;
+ (id)fetchRequestMatchingBlueprintsForUser:(id)a3 ofType:(id)a4 fromOrganization:(id)a5 includeTombstones:(BOOL)a6;
+ (id)fetchRequestMatchingBlueprintsForUser:(id)a3 ofType:(id)a4 withIdentifier:(id)a5 fromOrganization:(id)a6 includeTombstones:(BOOL)a7;
+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)a3 fromOrganization:(id)a4;
+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)a3 ofType:(id)a4;
+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)a3 ofType:(id)a4 fromOrganization:(id)a5;
+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)a3 ofType:(id)a4 withIdentifier:(id)a5 fromOrganization:(id)a6;
+ (id)fetchRequestMatchingExpiredBlueprints;
+ (id)fetchRequestMatchingOrphanedBlueprints;
+ (id)fetchRequestMatchingUnexpiredOneMoreMinuteBlueprintsForUserWithDSID:(id)a3;
+ (id)fetchResultsRequestsForChangesToBlueprints;
+ (id)fetchResultsRequestsForChangesToBlueprintsForUserWithDSID:(id)a3;
+ (id)scheduleTextWithLocale:(id)a3 weekdayScheduleComparator:(id)a4 scheduleTimeGetter:(id)a5;
+ (id)simpleScheduleTimeRangeWithStartTimeComponents:(id)a3 endTimeComponents:(id)a4;
+ (void)_addCommonPredicatesForBlueprint:(id)a3 toAllPredicates:(id)a4 usingDateFormatter:(id)a5 calendar:(id)a6;
+ (void)_addExpirationPredicateForBlueprint:(id)a3 toAllPredicates:(id)a4 usingDateFormatter:(id)a5;
+ (void)_addMinimumInstallationDatePredicateForBlueprint:(id)a3 toAllPredicates:(id)a4 usingDateFormatter:(id)a5;
+ (void)_addSchedulePredicatesForBlueprintScheudle:(id)a3 toAllPredicates:(id)a4 usingDateFormatter:(id)a5 calendar:(id)a6;
+ (void)_addUserPredicateForBlueprint:(id)a3 toAllPredicates:(id)a4;
+ (void)_addWebDomains:(id)a3 toItemNames:(id)a4 remainingItems:(unint64_t)a5 totalCount:(unint64_t)a6 completionHandler:(id)a7;
+ (void)_createDisplayNameWithItemNames:(id)a3 itemCount:(unint64_t)a4 completionHandler:(id)a5;
+ (void)fetchDisplayNameForUsageLimitWithCategoryIdentifiers:(id)a3 bundleIdentifiers:(id)a4 webDomains:(id)a5 completionHandler:(id)a6;
- (BOOL)_validateBlueprintConfiguration:(id)a3;
- (BOOL)_validateBlueprintIdentifier:(id)a3;
- (BOOL)_validateNumberOfBlueprints:(id)a3;
- (BOOL)_validateType:(id)a3;
- (BOOL)_validateUsersOnBlueprint:(id)a3;
- (BOOL)permitWebFilterURL:(id)a3 pageTitle:(id)a4 error:(id *)a5;
- (BOOL)removeFixedDurationOnDemandDowntimeWithError:(id *)a3;
- (BOOL)updateWithDictionaryRepresentation:(id)a3;
- (BOOL)validateForDelete:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (NSString)downtimeScheduleText;
- (NSString)limitDisplayName;
- (NSString)limitScheduleText;
- (STDowntimeConfiguration)downtimeConfiguration;
- (id)_applyAutomaticOnDemandDowntimeStateChange:(int64_t)a3 atDate:(id)a4 inCalendar:(id)a5 error:(id *)a6;
- (id)_applyOnDemandDowntimeStateChange:(int64_t)a3 withFixedDuration:(double)a4 atDate:(id)a5 inCalendar:(id)a6 error:(id *)a7;
- (id)_applyScheduleStateChange:(int64_t)a3 atDate:(id)a4 inCalendar:(id)a5 error:(id *)a6;
- (id)_downtimeConfigurationAtDate:(id)a3 inCalendar:(id)a4;
- (id)_webFilterBlacklistStringsForURL:(id)a3;
- (id)activeOverride;
- (id)alwaysAllowBundleIdentifiersWithError:(id *)a3;
- (id)applyAutomaticOnDemandDowntimeStateChange:(int64_t)a3 error:(id *)a4;
- (id)applyOnDemandDowntimeStateChange:(int64_t)a3 withFixedDuration:(double)a4 error:(id *)a5;
- (id)applyScheduleStateChange:(int64_t)a3 error:(id *)a4;
- (id)computeUniqueIdentifier;
- (id)declarationsWithError:(id *)a3;
- (id)dictionaryRepresentation;
- (void)_reportCoreAnalyticsEventForDowntimeOverride:(id)a3 currentDate:(id)a4;
- (void)_updateActiveOverrideAfterScheduleChange;
- (void)awakeFromInsert;
- (void)didChangeValueForKey:(id)a3;
- (void)disableDowntimeForDay:(unint64_t)a3;
- (void)migrateToVersion2CategoriesIfNeeded;
- (void)setStartTime:(id)a3 endTime:(id)a4;
- (void)setStartTime:(id)a3 endTime:(id)a4 forDay:(unint64_t)a5;
- (void)tombstone;
- (void)updateUsageLimitWithAlwaysAllowBundleIdentifiers:(id)a3;
@end

@implementation STBlueprint

- (void)tombstone
{
  [(STBlueprint *)self setEnabled:0];
  [(STBlueprint *)self setLimitEnabled:0];
  [(STBlueprint *)self setIsTombstoned:1];
  v3 = [MEMORY[0x1E695DF00] distantPast];
  [(STBlueprint *)self setExpiration:v3];
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = STBlueprint;
  [(STUniquedManagedObject *)&v4 awakeFromInsert];
  v3 = [MEMORY[0x1E695DF00] now];
  [(STBlueprint *)self setPrimitiveValue:v3 forKey:@"modificationDate"];
}

+ (id)fetchRequest
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___STBlueprint;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

+ (id)fetchRequestMatchingExpiredBlueprints
{
  v2 = [a1 fetchRequest];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = MEMORY[0x1E696AE18];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v5 startOfDayForDate:v3];
  v7 = [v4 predicateWithFormat:@"(%K < %@) OR ((%K < %@) AND (NOT %K BEGINSWITH %@))", @"expiration", v6, @"expiration", v3, @"identifier", @"one_more_minute"];
  [v2 setPredicate:v7];

  return v2;
}

+ (id)fetchRequestMatchingOrphanedBlueprints
{
  v2 = [a1 fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.@count == 0", @"users"];
  [v2 setPredicate:v3];

  return v2;
}

+ (id)fetchRequestMatchingUnexpiredOneMoreMinuteBlueprintsForUserWithDSID:(id)a3
{
  v4 = a3;
  v5 = [a1 fetchRequest];
  v6 = MEMORY[0x1E696AE18];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [v7 startOfDayForDate:v8];
  v10 = [v6 predicateWithFormat:@"(ANY %K == %@) AND (%K BEGINSWITH %@) AND (%K >= %@)", @"users.dsid", v4, @"identifier", @"one_more_minute", @"expiration", v9];

  [v5 setPredicate:v10];

  return v5;
}

+ (id)_fetchRequestMatchingBlueprintsForUserWithDSID:(id)a3
{
  v4 = a3;
  v5 = [a1 fetchRequest];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K == %@ AND %K == NO", @"users.dsid", v4, @"isTombstoned"];

  [v5 setPredicate:v6];

  return v5;
}

+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)a3 ofType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 fetchRequest];
  v9 = &unk_1F3059AE0;
  if (v7)
  {
    v9 = v7;
  }

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == NO", v9, @"users.dsid", @"type", v6, @"isTombstoned"];

  [v8 setPredicate:v10];

  return v8;
}

+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)a3 fromOrganization:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 fetchRequest];
  v9 = &unk_1F3059AE0;
  if (v7)
  {
    v9 = v7;
  }

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == NO", v9, @"users.dsid", @"organization", v6, @"isTombstoned"];

  [v8 setPredicate:v10];

  return v8;
}

+ (id)fetchRequestMatchingBlueprintsForUser:(id)a3 fromOrganization:(id)a4 includeTombstones:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [a1 fetchRequest];
  if (v5)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@", v9, @"users", @"organization", v8, v13];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == NO", v9, @"users", @"organization", v8, @"isTombstoned"];
  }
  v11 = ;

  [v10 setPredicate:v11];

  return v10;
}

+ (id)fetchRequestForBlueprintsOfType:(id)a3
{
  v4 = a3;
  v5 = [a1 fetchRequest];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K == NO", @"type", v4, @"isTombstoned"];

  [v5 setPredicate:v6];

  return v5;
}

+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)a3 ofType:(id)a4 fromOrganization:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 fetchRequest];
  v12 = &unk_1F3059AE0;
  if (v10)
  {
    v12 = v10;
  }

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == %@ AND %K == NO", v12, @"users.dsid", @"type", v9, @"organization", v8, @"isTombstoned"];

  [v11 setPredicate:v13];

  return v11;
}

+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)a3 ofType:(id)a4 withIdentifier:(id)a5 fromOrganization:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a1 fetchRequest];
  v15 = &unk_1F3059AE0;
  if (v13)
  {
    v15 = v13;
  }

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == %@ AND %K == %@ AND %K == NO", v15, @"users.dsid", @"type", v12, @"identifier", v11, @"organization", v10, @"isTombstoned"];

  [v14 setPredicate:v16];

  return v14;
}

+ (id)fetchRequestMatchingBlueprintsForUser:(id)a3 ofType:(id)a4 fromOrganization:(id)a5 includeTombstones:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [a1 fetchRequest];
  if (v6)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == %@", v12, @"users", @"type", v11, @"organization", v10, v16];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == %@ AND %K == NO", v12, @"users", @"type", v11, @"organization", v10, @"isTombstoned"];
  }
  v14 = ;

  [v13 setPredicate:v14];

  return v13;
}

+ (id)fetchRequestMatchingBlueprintsForUser:(id)a3 ofType:(id)a4 withIdentifier:(id)a5 fromOrganization:(id)a6 includeTombstones:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [a1 fetchRequest];
  if (v7)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == %@ AND %K == %@", v15, @"users", @"type", v14, @"identifier", v13, @"organization", v12, v19];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == %@ AND %K == %@ AND %K == NO", v15, @"users", @"type", v14, @"identifier", v13, @"organization", v12, @"isTombstoned"];
  }
  v17 = ;

  [v16 setPredicate:v17];

  return v16;
}

+ (id)fetchResultsRequestsForChangesToBlueprints
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14 = [a1 fetchRequest];
  v2 = [STFetchResultsRequest requestWithFetchRequest:v14];
  v15[0] = v2;
  v3 = +[STBlueprintSchedule fetchRequest];
  v4 = [STFetchResultsRequest requestWithFetchRequest:v3];
  v15[1] = v4;
  v5 = +[STBlueprintUsageLimit fetchRequest];
  v6 = [STFetchResultsRequest requestWithFetchRequest:v5];
  v15[2] = v6;
  v7 = +[STBlueprintConfiguration fetchRequest];
  v8 = [STFetchResultsRequest requestWithFetchRequest:v7];
  v15[3] = v8;
  v9 = +[STCoreOrganizationSettings fetchRequest];
  v10 = [STFetchResultsRequest requestWithFetchRequest:v9];
  v15[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)fetchResultsRequestsForChangesToBlueprintsForUserWithDSID:(id)a3
{
  v23[6] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AE18];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &unk_1F3059AE0;
  }

  v6 = a3;
  v7 = [v4 predicateWithFormat:@"%@ IN %K", v5, @"blueprint.users.dsid"];
  v22 = +[STBlueprintSchedule fetchRequest];
  [v22 setPredicate:v7];
  v21 = +[STBlueprintUsageLimit fetchRequest];
  [v21 setPredicate:v7];
  v8 = +[STBlueprintConfiguration fetchRequest];
  [v8 setPredicate:v7];
  v20 = +[STCoreOrganizationSettings fetchRequest];
  v19 = +[STCoreDowntimeOverride fetchRequest];
  v9 = [a1 _fetchRequestMatchingBlueprintsForUserWithDSID:v6];

  v10 = [STFetchResultsRequest requestWithFetchRequest:v9];
  v23[0] = v10;
  v11 = [STFetchResultsRequest requestWithFetchRequest:v22];
  v23[1] = v11;
  v12 = [STFetchResultsRequest requestWithFetchRequest:v21];
  v23[2] = v12;
  v13 = [STFetchResultsRequest requestWithFetchRequest:v8];
  v23[3] = v13;
  v14 = [STFetchResultsRequest requestWithFetchRequest:v20];
  v23[4] = v14;
  v15 = [STFetchResultsRequest requestWithFetchRequest:v19];
  v23[5] = v15;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:6];

  v16 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)createBlueprintWithType:(id)a3 user:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 managedObjectContext];
  v9 = [[STBlueprint alloc] initWithContext:v8];
  v10 = objc_opt_new();
  [(STBlueprint *)v9 setCreationDate:v10];

  [(STBlueprint *)v9 setType:v7];
  v11 = [a1 blueprintIdentifierForUser:v6];
  [(STBlueprint *)v9 setIdentifier:v11];

  v12 = MEMORY[0x1E695DFD8];
  v13 = [v6 objectID];
  v14 = [v8 objectWithID:v13];
  v15 = [v12 setWithObject:v14];
  [(STBlueprint *)v9 setUsers:v15];

  v16 = [v6 managingOrganization];

  [(STBlueprint *)v9 setOrganization:v16];

  return v9;
}

+ (id)blueprintIdentifierForUser:(id)a3
{
  v3 = a3;
  v4 = [v3 organizationIdentifier];
  if ([v4 isEqualToString:@"family"])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v3 dsid];
    v7 = [v5 stringWithFormat:@"%@.%@", @"digital_health_restrictions", v6];
  }

  else
  {
    v7 = @"digital_health_restrictions";
  }

  return v7;
}

- (id)declarationsWithError:(id *)a3
{
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = objc_opt_new();
  v6 = [v4 timeZone];
  [v5 setTimeZone:v6];

  v7 = [(STBlueprint *)self type];
  if ([v7 isEqualToString:@"downtime"])
  {
    v8 = [STBlueprint _predicateForDowntimeBlueprint:self withDateFormatter:v5 calendar:v4];
  }

  else if ([v7 isEqualToString:@"usage-limit"])
  {
    v8 = [STBlueprint _predicateForUsageLimitBlueprint:self withDateFormatter:v5 calendar:v4];
  }

  else if ([v7 isEqualToString:@"usage-limit-override"])
  {
    v8 = [STBlueprint _predicateForUsageLimitOverrideBlueprint:self withDateFormatter:v5 calendar:v4];
  }

  else if ([v7 isEqualToString:@"always-allowed-apps"])
  {
    v8 = [STBlueprint _predicateForAlwaysAllowedAppsBlueprint:self withDateFormatter:v5 calendar:v4];
  }

  else if ([v7 isEqualToString:@"restrictions"])
  {
    v8 = [STBlueprint _predicateForRestrictionsBlueprint:self withDateFormatter:v5 calendar:v4];
  }

  else
  {
    if (![v7 isEqualToString:@"managed-user"])
    {
      v9 = +[STLog blueprint];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [STBlueprint declarationsWithError:];
      }

      goto LABEL_18;
    }

    v8 = [STBlueprint _predicateForManagedUserBlueprint:self withDateFormatter:v5 calendar:v4];
  }

  v9 = v8;
  if (v8)
  {
    v15 = 0;
    v10 = [STBlueprint _buildConfigurationsByDeclarationIdentifierFromBlueprint:self error:&v15];
    v11 = v15;
    if (v10)
    {
      v12 = [(STBlueprint *)self identifier];
      v13 = [STBlueprint _buildDeclarationsFromConfigurationsByDeclarationIdentifier:v10 predicate:v9 identifier:v12];
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_21;
  }

  v9 = +[STLog blueprint];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [STBlueprint declarationsWithError:?];
  }

LABEL_18:
  v11 = 0;
  v13 = 0;
LABEL_21:

  return v13;
}

+ (id)_predicateForDowntimeBlueprint:(id)a3 withDateFormatter:(id)a4 calendar:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 type];
  v12 = [v11 isEqualToString:@"downtime"];

  if (v12)
  {
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    [a1 _addCommonPredicatesForBlueprint:v8 toAllPredicates:v13 usingDateFormatter:v9 calendar:v10];
    v15 = [v8 activeOverride];
    if (!v15)
    {
LABEL_18:
      v24 = [MEMORY[0x1E6996258] buildWithPredicates:v13];
      if ([v14 count])
      {
        if ([v13 count])
        {
          [v14 addObject:v24];
        }

        v25 = [MEMORY[0x1E6996260] buildWithPredicates:v14];
      }

      else
      {
        v25 = v24;
      }

      v20 = v25;

      goto LABEL_24;
    }

    v16 = [v8 configurations];
    v17 = [v16 anyObject];

    v18 = [STBlueprint _cemPredicateWithDowntimeOverride:v15 shouldUseGracePeriod:[STBlueprint shouldUseGracePeriodForDowntimeOverride:v15 configuration:v17] dateFormater:v9 calendar:v10];
    if (v18)
    {
      v19 = [v15 state];
      if (v19)
      {
        if (v19 == 1)
        {
          [v14 addObject:v18];
        }

        goto LABEL_17;
      }

      v22 = [v8 schedule];
      v23 = [v22 enabled];

      if (v23)
      {
        [MEMORY[0x1E6996298] buildWithPredicate:v18];
      }

      else
      {
        [MEMORY[0x1E6996290] build];
      }
      v21 = ;
      [v13 addObject:v21];
    }

    else
    {
      v21 = +[STLog blueprint];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138543362;
        v29 = v15;
        _os_log_impl(&dword_1B831F000, v21, OS_LOG_TYPE_DEFAULT, "Did not create CEM predicate for downtime override: %{public}@", &v28, 0xCu);
      }
    }

LABEL_17:
    goto LABEL_18;
  }

  v13 = +[STLog blueprint];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [STBlueprint _predicateForDowntimeBlueprint:v8 withDateFormatter:? calendar:?];
  }

  v20 = 0;
LABEL_24:

  v26 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)_predicateForUsageLimitBlueprint:(id)a3 withDateFormatter:(id)a4 calendar:(id)a5
{
  v112 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 type];
  v12 = [v11 isEqualToString:@"usage-limit"];

  if (v12)
  {
    v13 = [a1 _buildPredicateForDisablingBlueprint:v8];
    v14 = v13;
    if (v13)
    {
      v14 = v13;
      v15 = v14;
    }

    else
    {
      if ([v8 limitEnabled])
      {
        v16 = objc_opt_new();
        [a1 _addCommonPredicatesForBlueprint:v8 toAllPredicates:v16 usingDateFormatter:v9 calendar:v10];
        if (_os_feature_enabled_impl())
        {
          v100 = 0;
          v17 = [v8 alwaysAllowBundleIdentifiersWithError:&v100];
          v18 = v100;
          if (!v17)
          {
            v19 = +[STLog blueprint];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              +[STBlueprint _predicateForUsageLimitBlueprint:withDateFormatter:calendar:];
            }

            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
          v18 = 0;
        }

        v23 = [v8 usageLimit];
        v24 = v23;
        if (v23)
        {
          v82 = v18;
          v83 = v16;
          v84 = v9;
          v88 = v10;
          v85 = v8;
          v25 = [v23 budgetLimitScheduleRepresentation];
          v26 = [v24 applicationIdentifiers];
          v27 = [v24 categoryIdentifiers];
          v28 = [v24 categoryIdentifiersVersion2];
          v87 = v24;
          v29 = [v24 websiteIdentifiers];
          v86 = v17;
          v80 = v26;
          v81 = v25;
          v78 = v28;
          v79 = v27;
          v77 = v29;
          if ([v26 count] || objc_msgSend(v27, "count") || objc_msgSend(v28, "count") || objc_msgSend(v29, "count"))
          {
            v75 = [MEMORY[0x1E6996280] buildWithApps:v26 withWebSites:v29 withCategories:v27 withCategoriesVersion2:v28 withExemptApps:v17];
            v30 = objc_alloc(MEMORY[0x1E695DF70]);
            v31 = [v25 customScheduleItems];
            v32 = [v30 initWithCapacity:{objc_msgSend(v31, "count")}];

            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            obj = [v25 customScheduleItems];
            v33 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v97;
              do
              {
                for (i = 0; i != v34; ++i)
                {
                  if (*v97 != v35)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v37 = *(*(&v96 + 1) + 8 * i);
                  v38 = MEMORY[0x1E6996288];
                  v39 = MEMORY[0x1E696AD98];
                  [v37 budgetLimit];
                  v40 = [v39 numberWithDouble:?];
                  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v37, "day")}];
                  v107 = v41;
                  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
                  v43 = [v38 buildWithSeconds:v40 withDays:v42];

                  [v32 addObject:v43];
                }

                v34 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
              }

              while (v34);
            }

            v44 = MEMORY[0x1E6996278];
            v45 = [v88 calendarIdentifier];
            v46 = MEMORY[0x1E696AD98];
            v47 = [v87 notificationTimeInterval];
            v48 = [v46 numberWithInteger:{objc_msgSend(v47, "integerValue")}];
            v106 = v48;
            v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
            v50 = v75;
            v51 = [v44 buildWithCalendarIdentifier:v45 withMonitors:v75 withNotificationTimes:v49 withTimeBudget:v32];
          }

          else
          {
            v55 = *MEMORY[0x1E69961D0];
            v104[0] = @"app";
            v104[1] = @"webdomain";
            v56 = *MEMORY[0x1E69961E0];
            v105[0] = v55;
            v105[1] = v56;
            v104[2] = @"category";
            v105[2] = *MEMORY[0x1E69961D8];
            v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:3];
            v57 = objc_alloc(MEMORY[0x1E695DF70]);
            v58 = [v25 customScheduleItems];
            v59 = [v57 initWithCapacity:{objc_msgSend(v58, "count")}];

            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            obja = [v25 customScheduleItems];
            v60 = [obja countByEnumeratingWithState:&v92 objects:v103 count:16];
            if (v60)
            {
              v61 = v60;
              v62 = *v93;
              do
              {
                for (j = 0; j != v61; ++j)
                {
                  if (*v93 != v62)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v64 = *(*(&v92 + 1) + 8 * j);
                  v65 = MEMORY[0x1E6996270];
                  v66 = MEMORY[0x1E696AD98];
                  [v64 budgetLimit];
                  v67 = [v66 numberWithDouble:?];
                  v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v64, "day")}];
                  v102 = v68;
                  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
                  v70 = [v65 buildWithSeconds:v67 withDays:v69];

                  [v59 addObject:v70];
                }

                v61 = [obja countByEnumeratingWithState:&v92 objects:v103 count:16];
              }

              while (v61);
            }

            v45 = [v87 itemIdentifiers];
            objb = MEMORY[0x1E6996268];
            v47 = [v88 calendarIdentifier];
            v48 = [v87 usageItemType];
            v50 = v76;
            v49 = [v76 objectForKeyedSubscript:v48];
            v71 = MEMORY[0x1E696AD98];
            v74 = [v87 notificationTimeInterval];
            v72 = [v71 numberWithInteger:{objc_msgSend(v74, "integerValue")}];
            v101 = v72;
            v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
            v32 = v59;
            v51 = [objb buildWithCalendarIdentifier:v47 withMonitor:v49 withIdentifiers:v45 withIdentifiersVersion2:v45 withExemptApps:v86 withNotificationTimes:v73 withTimeBudget:v59];
          }

          v8 = v85;
          v16 = v83;
          v14 = 0;
          if ([v85 invertUsageLimit])
          {
            v52 = [MEMORY[0x1E6996298] buildWithPredicate:v51];
            [v83 addObject:v52];
          }

          else
          {
            [v83 addObject:v51];
          }

          v9 = v84;
          v24 = v87;
          v10 = v88;
          v18 = v82;
          v17 = v86;
        }

        v15 = [MEMORY[0x1E6996258] buildWithPredicates:v16];
      }

      else
      {
        v20 = +[STLog blueprint];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v8 identifier];
          *buf = 138543362;
          v111 = v21;
          _os_log_impl(&dword_1B831F000, v20, OS_LOG_TYPE_DEFAULT, "Usage limit is disabled: %{public}@)", buf, 0xCu);
        }

        v22 = MEMORY[0x1E6996258];
        v16 = [MEMORY[0x1E6996290] build];
        v109 = v16;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
        v15 = [v22 buildWithPredicates:v18];
      }
    }
  }

  else
  {
    v14 = +[STLog blueprint];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint _predicateForUsageLimitBlueprint:v8 withDateFormatter:? calendar:?];
    }

    v15 = 0;
  }

  v53 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)_predicateForUsageLimitOverrideBlueprint:(id)a3 withDateFormatter:(id)a4 calendar:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 type];
  v12 = [v11 isEqualToString:@"usage-limit-override"];

  if (v12)
  {
    v13 = [a1 _buildPredicateForUnspecializedBlueprint:v8 usingDateFormatter:v9 calendar:v10];
  }

  else
  {
    v14 = +[STLog blueprint];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint _predicateForUsageLimitOverrideBlueprint:v8 withDateFormatter:? calendar:?];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)_predicateForAlwaysAllowedAppsBlueprint:(id)a3 withDateFormatter:(id)a4 calendar:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 type];
  v12 = [v11 isEqualToString:@"always-allowed-apps"];

  if (v12)
  {
    v13 = [a1 _buildPredicateForUnspecializedBlueprint:v8 usingDateFormatter:v9 calendar:v10];
  }

  else
  {
    v14 = +[STLog blueprint];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint _predicateForAlwaysAllowedAppsBlueprint:v8 withDateFormatter:? calendar:?];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)_predicateForRestrictionsBlueprint:(id)a3 withDateFormatter:(id)a4 calendar:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 type];
  v12 = [v11 isEqualToString:@"restrictions"];

  if (v12)
  {
    v13 = [a1 _buildPredicateForUnspecializedBlueprint:v8 usingDateFormatter:v9 calendar:v10];
  }

  else
  {
    v14 = +[STLog blueprint];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint _predicateForRestrictionsBlueprint:v8 withDateFormatter:? calendar:?];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)_predicateForManagedUserBlueprint:(id)a3 withDateFormatter:(id)a4 calendar:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 type];
  v12 = [v11 isEqualToString:@"managed-user"];

  if (v12)
  {
    v13 = [a1 _buildPredicateForUnspecializedBlueprint:v8 usingDateFormatter:v9 calendar:v10];
  }

  else
  {
    v14 = +[STLog blueprint];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint _predicateForManagedUserBlueprint:v8 withDateFormatter:? calendar:?];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)_buildPredicateForDisablingBlueprint:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 enabled])
  {
    v4 = 0;
  }

  else
  {
    v5 = +[STLog blueprint];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 identifier];
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Blueprint is disabled: %{public}@)", buf, 0xCu);
    }

    v7 = MEMORY[0x1E6996258];
    v8 = [MEMORY[0x1E6996290] build];
    v12 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v4 = [v7 buildWithPredicates:v9];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)_addExpirationPredicateForBlueprint:(id)a3 toAllPredicates:(id)a4 usingDateFormatter:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v14 expiration];

  if (v9)
  {
    [v8 setFormatOptions:1907];
    v10 = MEMORY[0x1E69962A0];
    v11 = [v14 expiration];
    v12 = [v8 stringFromDate:v11];
    v13 = [v10 buildRequiredOnlyWithDateTime:v12];

    [v7 addObject:v13];
  }
}

+ (void)_addMinimumInstallationDatePredicateForBlueprint:(id)a3 toAllPredicates:(id)a4 usingDateFormatter:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = [a3 minimumInstallationDate];
  if (v8)
  {
    [v7 setFormatOptions:1907];
    v9 = MEMORY[0x1E69962A0];
    v10 = [v7 stringFromDate:v8];
    v11 = [v9 buildRequiredOnlyWithDateTime:v10];

    v12 = [MEMORY[0x1E6996298] buildWithPredicate:v11];
    [v13 addObject:v12];
  }
}

+ (void)_addUserPredicateForBlueprint:(id)a3 toAllPredicates:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 users];
  v8 = [v7 count];

  if (v8 > 1)
  {
    goto LABEL_2;
  }

  if (v8 == 1)
  {
    v20 = [v5 users];
    v21 = [v20 anyObject];
    v22 = [v21 localSettings];

    if (!v22)
    {
LABEL_2:
      v24 = v6;
      v9 = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = [v5 users];
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = MEMORY[0x1E69962B0];
            v16 = [*(*(&v25 + 1) + 8 * i) dsid];
            v17 = [v16 stringValue];
            v18 = [v15 buildWithDSID:v17];
            [v9 addObject:v18];
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v12);
      }

      v19 = [MEMORY[0x1E6996260] buildWithPredicates:v9];
      v6 = v24;
      [v24 addObject:v19];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

+ (void)_addSchedulePredicatesForBlueprintScheudle:(id)a3 toAllPredicates:(id)a4 usingDateFormatter:(id)a5 calendar:(id)a6
{
  v80 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v63 = v9;
  if ([v9 enabled])
  {
    v55 = v10;
    v13 = [v9 scheduleRepresentation];
    [v11 setFormatOptions:544];
    v69 = [v12 maximumRangeOfUnit:512];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [v12 startOfDayForDate:v16];

    v53 = v17;
    v57 = [v11 stringFromDate:v17];
    v64 = objc_opt_new();
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v54 = v13;
    obj = [v13 customScheduleItems];
    v68 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (!v68)
    {
      goto LABEL_19;
    }

    v56 = v15 - 1;
    v67 = *v72;
    v61 = v12;
    v62 = v11;
    while (1)
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v72 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v71 + 1) + 8 * i);
        v20 = [v19 day];
        v21 = v20 + v69;
        v22 = [v19 startTime];
        v23 = [v12 dateFromComponents:v22];

        v24 = [v19 endTime];
        v25 = [v12 dateFromComponents:v24];

        v70 = [v11 stringFromDate:v23];
        v26 = [v11 stringFromDate:v25];
        v27 = [v23 compare:v25];
        if (v27 == 1)
        {
          v60 = v23;
          v66 = v26;
          if (v20 == v56)
          {
            v36 = v69;
          }

          else
          {
            v36 = v21 + 1;
          }

          v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v36];
          v37 = MEMORY[0x1E69962A8];
          v38 = [v12 calendarIdentifier];
          v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
          v40 = MEMORY[0x1E696AD98];
          v41 = [v63 notificationTimeInterval];
          v42 = [v40 numberWithInteger:{objc_msgSend(v41, "integerValue")}];
          v75 = v42;
          v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
          v44 = [v37 buildWithCalendarIdentifier:v38 withStartDay:v39 withStartTime:v70 withEndDay:v35 withEndTime:v57 withNotificationTimes:v43];

          v26 = v66;
          v12 = v61;
          [v64 addObject:v44];
          if (([v66 isEqualToString:v57] & 1) == 0)
          {
            v45 = MEMORY[0x1E69962A8];
            v46 = [v61 calendarIdentifier];
            v47 = [v45 buildWithCalendarIdentifier:v46 withStartDay:v35 withStartTime:v57 withEndDay:v35 withEndTime:v66 withNotificationTimes:MEMORY[0x1E695E0F0]];

            [v64 addObject:v47];
            v26 = v66;
          }

          v23 = v60;
        }

        else
        {
          if (v27 != -1)
          {
            goto LABEL_17;
          }

          v65 = MEMORY[0x1E69962A8];
          v59 = [v12 calendarIdentifier];
          v28 = v26;
          v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
          v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
          v31 = MEMORY[0x1E696AD98];
          v32 = [v63 notificationTimeInterval];
          v33 = [v31 numberWithInteger:{objc_msgSend(v32, "integerValue")}];
          v76 = v33;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
          v35 = [v65 buildWithCalendarIdentifier:v59 withStartDay:v29 withStartTime:v70 withEndDay:v30 withEndTime:v28 withNotificationTimes:v34];

          v26 = v28;
          v12 = v61;

          [v64 addObject:v35];
        }

        v11 = v62;
LABEL_17:
      }

      v68 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
      if (!v68)
      {
LABEL_19:

        v48 = [MEMORY[0x1E6996260] buildWithPredicates:v64];
        v10 = v55;
        [v55 addObject:v48];

        v49 = v54;
        goto LABEL_22;
      }
    }
  }

  v49 = +[STLog blueprint];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = [v63 blueprint];
    v51 = [v50 identifier];
    *buf = 138543362;
    v79 = v51;
    _os_log_impl(&dword_1B831F000, v49, OS_LOG_TYPE_DEFAULT, "Schedule is not enabled for blueprint: %{public}@", buf, 0xCu);
  }

LABEL_22:

  v52 = *MEMORY[0x1E69E9840];
}

+ (void)_addCommonPredicatesForBlueprint:(id)a3 toAllPredicates:(id)a4 usingDateFormatter:(id)a5 calendar:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [a1 _addExpirationPredicateForBlueprint:v15 toAllPredicates:v10 usingDateFormatter:v11];
  [a1 _addMinimumInstallationDatePredicateForBlueprint:v15 toAllPredicates:v10 usingDateFormatter:v11];
  [a1 _addUserPredicateForBlueprint:v15 toAllPredicates:v10];
  v13 = [v15 schedule];

  if (v13)
  {
    v14 = [v15 schedule];
    [a1 _addSchedulePredicatesForBlueprintScheudle:v14 toAllPredicates:v10 usingDateFormatter:v11 calendar:v12];
  }
}

+ (id)_buildPredicateForUnspecializedBlueprint:(id)a3 usingDateFormatter:(id)a4 calendar:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 _buildPredicateForDisablingBlueprint:v8];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = objc_opt_new();
    [a1 _addCommonPredicatesForBlueprint:v8 toAllPredicates:v14 usingDateFormatter:v9 calendar:v10];
    v13 = [MEMORY[0x1E6996258] buildWithPredicates:v14];
  }

  return v13;
}

+ (id)_buildConfigurationsByDeclarationIdentifierFromBlueprint:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF90];
  v6 = [v4 configurations];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = [v4 configurations];
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = *v38;
  v33 = v4;
  v35 = v7;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v38 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v37 + 1) + 8 * i);
      v14 = [v13 payloadPlist];

      if (!v14)
      {
        v27 = +[STLog persistence];
        v4 = v33;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          +[STBlueprint _buildConfigurationsByDeclarationIdentifierFromBlueprint:error:];
        }

        if (a4)
        {
          v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:14 userInfo:0];

          v7 = v35;
          if (v28)
          {
            [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:14 userInfo:0];
            *a4 = v26 = 0;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_33;
        }

        v26 = 0;
LABEL_32:
        v7 = v35;
        goto LABEL_33;
      }

      v15 = MEMORY[0x1E6996208];
      v16 = [v13 payloadPlist];
      v36 = 0;
      v17 = [v15 declarationForData:v16 error:&v36];
      v18 = v36;

      if (!v17)
      {
        v29 = +[STLog persistence];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          +[STBlueprint _buildConfigurationsByDeclarationIdentifierFromBlueprint:error:];
        }

        if (a4)
        {
          v30 = v18;
          *a4 = v18;
        }

        v26 = 0;
        v4 = v33;
        goto LABEL_32;
      }

      v19 = [STBlueprintConfiguration blueprintConfigurationTypeForDeclaration:v17];
      if (([v19 isEqualToString:@"system.webcontentfilter.basic"] & 1) == 0)
      {
        v20 = [v17 declarationIdentifier];
        [v35 setObject:v17 forKeyedSubscript:v20];
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    v4 = v33;
    v7 = v35;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_12:

  if (_buildConfigurationsByDeclarationIdentifierFromBlueprint_error__onceToken != -1)
  {
    +[STBlueprint _buildConfigurationsByDeclarationIdentifierFromBlueprint:error:];
  }

  v21 = [STBlueprint appExceptionsDeclarationForBlueprint:v4 usingCache:_buildConfigurationsByDeclarationIdentifierFromBlueprint_error__exceptionsDeclarationCache];
  v8 = v21;
  if (v21)
  {
    v22 = [v21 declarationIdentifier];
    v23 = [v7 objectForKeyedSubscript:v22];

    if (v23)
    {
      v24 = +[STLog appExceptions];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [STBlueprint _buildConfigurationsByDeclarationIdentifierFromBlueprint:v23 error:?];
      }
    }

    v25 = [v8 declarationIdentifier];
    [v7 setObject:v8 forKeyedSubscript:v25];
  }

  v26 = [v7 copy];
LABEL_33:

  v31 = *MEMORY[0x1E69E9840];

  return v26;
}

void __78__STBlueprint__buildConfigurationsByDeclarationIdentifierFromBlueprint_error___block_invoke()
{
  v0 = +[STLog appExceptions];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __78__STBlueprint__buildConfigurationsByDeclarationIdentifierFromBlueprint_error___block_invoke_cold_1();
  }

  v1 = objc_opt_new();
  v2 = _buildConfigurationsByDeclarationIdentifierFromBlueprint_error__exceptionsDeclarationCache;
  _buildConfigurationsByDeclarationIdentifierFromBlueprint_error__exceptionsDeclarationCache = v1;
}

+ (id)appExceptionsDeclarationForBlueprint:(id)a3 usingCache:(id)a4
{
  *(&v65[1] + 4) = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 type];
  v8 = [v7 isEqualToString:@"restrictions"];

  v9 = +[STLog appExceptions];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 identifier];
      *buf = 138412290;
      v65[0] = v11;
      _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "Processing app exceptions for restriction blueprint %@", buf, 0xCu);
    }

    v12 = [v5 users];
    v10 = [v12 anyObject];

    if (v10 && ([v10 dsid], (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, v15 = [v10 isManaged], v14, (v15 & 1) != 0))
    {
      v54 = v5;
      v55 = v6;
      v16 = objc_opt_new();
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v53 = v10;
      v17 = [v10 appExceptions];
      v18 = [v17 countByEnumeratingWithState:&v57 objects:v63 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v58;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v58 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v57 + 1) + 8 * i);
            v23 = [v22 bundleIdentifier];
            v24 = [v16 containsObject:v23];

            if (v24)
            {
              v25 = +[STLog appExceptions];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                [(STBlueprint *)buf appExceptionsDeclarationForBlueprint:v22 usingCache:v65, v25];
              }
            }

            v26 = [v22 bundleIdentifier];
            [v16 addObject:v26];
          }

          v19 = [v17 countByEnumeratingWithState:&v57 objects:v63 count:16];
        }

        while (v19);
      }

      v27 = +[STLog appExceptions];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject count](v16, "count")}];
        *v61 = 138412290;
        v62 = v28;
        _os_log_impl(&dword_1B831F000, v27, OS_LOG_TYPE_DEFAULT, "Found %@ app exceptions", v61, 0xCu);
      }

      v29 = MEMORY[0x1E696AEC0];
      v10 = v53;
      v30 = [v53 dsid];
      v31 = [v29 stringWithFormat:@"%@.%@.%@", @"digital_health_restrictions", v30, @"appExceptions"];

      v32 = v55;
      v33 = [v55 objectForKey:v31];
      if (!v33)
      {
        goto LABEL_26;
      }

      v56 = 0;
      v34 = [MEMORY[0x1E69962C0] declarationForPayload:v33 error:&v56];
      v35 = v56;
      if (v35)
      {
        v36 = +[STLog appExceptions];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint appExceptionsDeclarationForBlueprint:usingCache:];
        }

        v32 = v55;
      }

      if (!v34)
      {
LABEL_26:
        v37 = +[STLog appExceptions];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 138412290;
          v62 = v16;
          _os_log_impl(&dword_1B831F000, v37, OS_LOG_TYPE_DEFAULT, "No stored CEMSystemAppExceptionsDeclaration. Storing with bundleIDs:%@", v61, 0xCu);
        }

        v38 = MEMORY[0x1E69962C0];
        v39 = [v16 allObjects];
        v34 = [v38 buildWithIdentifier:v31 appsRatingExemptedBundleIDs:v39];

        v40 = [v34 serialize];
        [v32 setObject:v40 forKey:v31];
      }

      v41 = +[STLog appExceptions];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [v34 serialize];
        *v61 = 138412290;
        v62 = v42;
        _os_log_impl(&dword_1B831F000, v41, OS_LOG_TYPE_DEFAULT, "Fetched CEMSystemAppExceptionsDeclaration payload:%@", v61, 0xCu);
      }

      v43 = MEMORY[0x1E695DFD8];
      v44 = [v34 payloadAppsRatingExemptedBundleIDs];
      v45 = [v43 setWithArray:v44];
      v46 = [v16 isEqualToSet:v45];

      v47 = +[STLog appExceptions];
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
      if (v46)
      {
        v6 = v55;
        if (v48)
        {
          *v61 = 0;
          _os_log_impl(&dword_1B831F000, v47, OS_LOG_TYPE_DEFAULT, "Declaration has same bundle IDs. Not updating", v61, 2u);
        }

        v5 = v54;
      }

      else
      {
        if (v48)
        {
          *v61 = 0;
          _os_log_impl(&dword_1B831F000, v47, OS_LOG_TYPE_DEFAULT, "Updating declaration's payloadAppsRatingExemptedBundleIDs and hash", v61, 2u);
        }

        v51 = [v16 allObjects];
        [v34 setPayloadAppsRatingExemptedBundleIDs:v51];

        [v34 updateServerHash];
        v47 = [v34 serialize];
        v52 = +[STLog appExceptions];
        v5 = v54;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 138412290;
          v62 = v47;
          _os_log_impl(&dword_1B831F000, v52, OS_LOG_TYPE_DEFAULT, "Persisting updated declaration with payload:%@", v61, 0xCu);
        }

        v6 = v55;
        [v55 setObject:v47 forKey:v31];
      }
    }

    else
    {
      v16 = +[STLog appExceptions];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint appExceptionsDeclarationForBlueprint:usingCache:];
      }

      v34 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[STBlueprint appExceptionsDeclarationForBlueprint:usingCache:];
    }

    v34 = 0;
  }

  v49 = *MEMORY[0x1E69E9840];

  return v34;
}

+ (id)_buildDeclarationsFromConfigurationsByDeclarationIdentifier:(id)a3 predicate:(id)a4 identifier:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = MEMORY[0x1E69961F0];
  v12 = [v7 allKeys];
  v13 = [v11 buildWithIdentifier:v9 withStandardConfigurations:v12 withPredicate:v8];

  v14 = [v13 serialize];
  [v10 addObject:v14];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [v7 allValues];
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v24 + 1) + 8 * i) serialize];
        [v10 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  v21 = [v10 copy];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (BOOL)shouldUseGracePeriodForDowntimeOverride:(id)a3 configuration:(id)a4
{
  v5 = a4;
  if ([a3 state] == 1)
  {
    if (v5)
    {
      v6 = [v5 payloadPlist];

      if (v6)
      {
        v7 = MEMORY[0x1E6996210];
        v8 = [v5 payloadPlist];
        v17 = 0;
        v9 = [v7 declarationForData:v8 error:&v17];
        v10 = v17;

        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v9 payloadMode];
            v12 = [v11 isEqualToString:*MEMORY[0x1E69961A8]];

            if (v12)
            {
              v13 = +[STLog blueprint];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *v16 = 0;
                _os_log_impl(&dword_1B831F000, v13, OS_LOG_TYPE_DEFAULT, "Block at downtime is enabled. Using grace period.", v16, 2u);
              }
            }

            goto LABEL_22;
          }

          v14 = +[STLog blueprint];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            +[STBlueprint shouldUseGracePeriodForDowntimeOverride:configuration:];
          }
        }

        else
        {
          v14 = +[STLog blueprint];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            [STBlueprint shouldUseGracePeriodForDowntimeOverride:v10 configuration:v14];
          }
        }
      }

      else
      {
        v10 = +[STLog blueprint];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint shouldUseGracePeriodForDowntimeOverride:configuration:];
        }
      }
    }

    else
    {
      v10 = +[STLog blueprint];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint shouldUseGracePeriodForDowntimeOverride:configuration:];
      }
    }

    LOBYTE(v12) = 0;
LABEL_22:

    goto LABEL_23;
  }

  LOBYTE(v12) = 0;
LABEL_23:

  return v12;
}

+ (id)_cemPredicateWithDowntimeOverride:(id)a3 shouldUseGracePeriod:(BOOL)a4 dateFormater:(id)a5 calendar:(id)a6
{
  v8 = a4;
  v40[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (v8)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = [MEMORY[0x1E695E000] standardUserDefaults];
      v13 = [v12 stringForKey:@"OnDemandDowntimeDelay"];

      if (v13)
      {
        v14 = [v12 integerForKey:@"OnDemandDowntimeDelay"];
      }

      else
      {
        v14 = 300.0;
      }
    }

    else
    {
      v14 = 300.0;
    }

    [v10 setFormatOptions:544];
    v20 = [v9 creationDate];
    v21 = STLocalDateFromUTCErasedDate(v20, v11);
    v22 = [v21 dateByAddingTimeInterval:v14];

    v23 = [v9 endDate];
    v24 = STLocalDateFromUTCErasedDate(v23, v11);

    if ([v22 compare:v24] == -1)
    {
      v26 = [v11 component:512 fromDate:v22];
      v27 = [v11 component:512 fromDate:v24];
      v38 = [v10 stringFromDate:v22];
      v28 = [v10 stringFromDate:v24];
      v36 = MEMORY[0x1E69962A8];
      v37 = v28;
      v35 = [v11 calendarIdentifier];
      v34 = [MEMORY[0x1E696AD98] numberWithInteger:v26];
      v29 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
      v30 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
      v40[0] = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
      v19 = [v36 buildWithCalendarIdentifier:v35 withStartDay:v34 withStartTime:v38 withEndDay:v29 withEndTime:v37 withNotificationTimes:v31];
    }

    else
    {
      v25 = +[STLog blueprint];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v25, OS_LOG_TYPE_DEFAULT, "Downtime override duration is less than grace period - not synthesizing CEM predicate", buf, 2u);
      }

      v19 = 0;
    }
  }

  else
  {
    [v10 setFormatOptions:1907];
    v15 = [v9 endDate];
    v16 = STLocalDateFromUTCErasedDate(v15, v11);

    v17 = MEMORY[0x1E69962A0];
    v18 = [v10 stringFromDate:v16];
    v19 = [v17 buildWithDateTime:v18];
  }

  v32 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)migrateToVersion2CategoriesIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to serialize declaration while migrating to version 2 categories: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)didChangeValueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"identifier"])
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
  }

  else if ([v4 isEqualToString:@"isDirty"] && -[STBlueprint isDirty](self, "isDirty"))
  {
    v5 = [MEMORY[0x1E695DF00] now];
    [(STBlueprint *)self setModificationDate:v5];

    v6 = [STVersionVector alloc];
    v7 = [(STBlueprint *)self versionVector];
    v8 = [(STVersionVector *)v6 initWithDataRepresentation:v7];

    v9 = STGetDeviceUUID();
    [(STVersionVector *)v8 incrementNodeWithIdentifier:v9];

    v10 = [(STVersionVector *)v8 dataRepresentation];
    [(STBlueprint *)self setVersionVector:v10];
  }

  v11.receiver = self;
  v11.super_class = STBlueprint;
  [(STBlueprint *)&v11 didChangeValueForKey:v4];
}

- (id)computeUniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() serializableClassName];
  v5 = [(STBlueprint *)self identifier];
  v6 = [v3 stringWithFormat:@"%@:%@", v4, v5];

  return v6;
}

- (BOOL)updateWithDictionaryRepresentation:(id)a3
{
  v164 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[STLog screentime];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "STBlueprint: enter updateWithDictionaryRepresentation", buf, 2u);
  }

  v6 = [STVersionVector alloc];
  v7 = [(STBlueprint *)self versionVector];
  v8 = [(STVersionVector *)v6 initWithDataRepresentation:v7];

  v9 = [(STVersionVector *)v8 nodes];
  v10 = [v9 count];

  v11 = [v4 objectForKeyedSubscript:@"versionVector"];
  v12 = [[STVersionVector alloc] initWithDataRepresentation:v11];
  v13 = [v4 objectForKeyedSubscript:@"fromCloud"];
  LOBYTE(v9) = [v13 BOOLValue];
  v14 = +[STLog screentime];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  v142 = v12;
  if (v9)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "STBlueprint: dictionaryRepresentation is fromCloud. Version vectors will be ignored.", buf, 2u);
    }

    goto LABEL_6;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "STBlueprint: dictionaryRepresentation is NOT fromCloud. Compare version vectors.", buf, 2u);
  }

  if (!v8)
  {
    v14 = +[STLog screentime];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - there is no versionvector", buf, 2u);
    }

    goto LABEL_155;
  }

  v30 = +[STLog versionVector];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(STBlueprint *)self uniqueIdentifier];
    *buf = 138412802;
    v159 = v31;
    v160 = 2112;
    v161 = v8;
    v162 = 2112;
    v163 = v12;
    _os_log_impl(&dword_1B831F000, v30, OS_LOG_TYPE_DEFAULT, "COMPARE BLUEPRINTS (%@): %@ vs %@", buf, 0x20u);
  }

  v32 = [(STVersionVector *)v8 evaluateCausality:v12];
  v33 = v32;
  switch(v32)
  {
    case 1:
      v34 = v13;
      v35 = +[STLog versionVector];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

        v13 = v34;
        break;
      }

      *buf = 0;
      v36 = "Local newer";
LABEL_25:
      _os_log_impl(&dword_1B831F000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 2u);
      goto LABEL_26;
    case 3:
      v34 = v13;
      v35 = +[STLog versionVector];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v36 = "Local equal";
      goto LABEL_25;
    case 2:
      v34 = v13;
      v35 = +[STLog versionVector];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v36 = "Concurrent";
      goto LABEL_25;
    case 0:
      v34 = v13;
      v35 = +[STLog versionVector];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v36 = "Local older";
      goto LABEL_25;
  }

  [(STVersionVector *)v8 join:v12];
  v37 = [(STVersionVector *)v8 dataRepresentation];
  [(STBlueprint *)self setVersionVector:v37];

  if (v33 == 1)
  {
    v38 = +[STLog screentime];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B831F000, v38, OS_LOG_TYPE_DEFAULT, "Received blueprint representation is out of date. Skipping update.", buf, 2u);
    }

    v39 = +[STLog screentime];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [STBlueprint updateWithDictionaryRepresentation:?];
    }

    v14 = +[STLog screentime];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [STBlueprint updateWithDictionaryRepresentation:];
    }

    goto LABEL_155;
  }

  if (v33 != 3)
  {
    if (v33 == 2)
    {
      v57 = +[STLog screentime];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v57, OS_LOG_TYPE_DEFAULT, "Blueprint version clocks concurrent. Most recent modification wins", buf, 2u);
      }

      v58 = +[STLog screentime];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        [STBlueprint updateWithDictionaryRepresentation:?];
      }

      v59 = +[STLog screentime];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        [STBlueprint updateWithDictionaryRepresentation:];
      }

      v14 = [(STBlueprint *)self modificationDate];
      v60 = [v4 objectForKeyedSubscript:@"modificationDate"];
      v61 = +[STLog screentime];
      v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
      if (v14 && v60)
      {
        if (v62)
        {
          *buf = 138412546;
          v159 = v14;
          v160 = 2112;
          v161 = v60;
          _os_log_impl(&dword_1B831F000, v61, OS_LOG_TYPE_DEFAULT, "Local modification date = %@, Incoming modification date = %@", buf, 0x16u);
        }

        v63 = [v14 compare:v60];
        v61 = +[STLog screentime];
        v64 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
        if (v63 != -1)
        {
          if (v64)
          {
            *buf = 138412546;
            v159 = v14;
            v160 = 2112;
            v161 = v60;
            v65 = "Local blueprint is more recently modified. We will ignore the received blueprint. Local = %@, Incoming = %@";
            v66 = v61;
            v67 = 22;
LABEL_153:
            _os_log_impl(&dword_1B831F000, v66, OS_LOG_TYPE_DEFAULT, v65, buf, v67);
            goto LABEL_154;
          }

          goto LABEL_154;
        }

        if (v64)
        {
          *buf = 138412546;
          v159 = v14;
          v160 = 2112;
          v161 = v60;
          v129 = "Received blueprint is more recently modified. We will overwrite the local blueprint. Local = %@, Incoming = %@";
          v130 = v61;
          v131 = 22;
          goto LABEL_162;
        }
      }

      else
      {
        if (v14)
        {
          if (v62)
          {
            *buf = 0;
            v65 = "Only the local blueprint has a modification date. We will ignore the received blueprint.";
            v66 = v61;
            v67 = 2;
            goto LABEL_153;
          }

LABEL_154:

LABEL_155:
          v121 = 0;
          goto LABEL_156;
        }

        if (v62)
        {
          *buf = 0;
          v129 = "Only the inboud blueprint has a modification date. We will overwrite the local blueprint.";
          v130 = v61;
          v131 = 2;
LABEL_162:
          _os_log_impl(&dword_1B831F000, v130, OS_LOG_TYPE_DEFAULT, v129, buf, v131);
        }
      }

LABEL_6:
    }

LABEL_7:
    v144 = self;
    v138 = v13;
    v139 = v11;
    v140 = v8;
    v141 = v4;
    [v4 objectForKeyedSubscript:@"configurations"];
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    obj = v155 = 0u;
    v16 = [obj countByEnumeratingWithState:&v152 objects:v157 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v153;
      do
      {
        v20 = 0;
        v21 = v18;
        do
        {
          if (*v153 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v152 + 1) + 8 * v20);
          v23 = [v22 objectForKeyedSubscript:@"identifier"];
          v24 = +[STBlueprintConfiguration fetchRequest];
          v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ && %K == %@", @"blueprint", v144, @"identifier", v23];
          [v24 setPredicate:v25];

          v151 = v21;
          v26 = [v24 execute:&v151];
          v27 = v151;

          v28 = [v26 firstObject];
          v29 = v28;
          if (v28)
          {
            [v28 updateWithDictionaryRepresentation:v22];
          }

          ++v20;
          v21 = v27;
        }

        while (v17 != v20);
        v18 = v27;
        v17 = [obj countByEnumeratingWithState:&v152 objects:v157 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    v4 = v141;
    v40 = [v141 objectForKeyedSubscript:@"type"];
    [(STBlueprint *)v144 setType:v40];

    v41 = [v141 objectForKeyedSubscript:@"enabled"];
    v42 = [v41 BOOLValue];

    [(STBlueprint *)v144 setEnabled:v42];
    v43 = [(STBlueprint *)v144 type];
    v44 = [v43 isEqualToString:@"downtime"];

    if (v44)
    {
      v45 = +[STLog screentime];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v45, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - downtime blueprint", buf, 2u);
      }

      v46 = [v141 objectForKeyedSubscript:@"schedule"];
      v47 = +[STLog screentime];
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
      if (v46)
      {
        if (v48)
        {
          *buf = 0;
          _os_log_impl(&dword_1B831F000, v47, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - has scheduleDictionary", buf, 2u);
        }

        v49 = [(STBlueprint *)v144 schedule];

        if (!v49)
        {
          v50 = [STBlueprintSchedule alloc];
          v51 = [(STBlueprint *)v144 managedObjectContext];
          v52 = [(STBlueprintSchedule *)v50 initWithContext:v51];
          [(STBlueprint *)v144 setSchedule:v52];
        }

        v53 = [(STBlueprint *)v144 schedule];
        [v53 updateWithDictionaryRepresentation:v46];

        v54 = [v46 objectForKeyedSubscript:@"enabled"];
        if (!v54)
        {
          v55 = [(STBlueprint *)v144 schedule];
          [v55 setEnabled:v42];

          v56 = +[STLog blueprint];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v159 = v42;
            _os_log_impl(&dword_1B831F000, v56, OS_LOG_TYPE_DEFAULT, "Deserializing legacy downtime, treating blueprint enabled (%ld) as schedule enabled", buf, 0xCu);
          }
        }
      }

      else
      {
        if (v48)
        {
          *buf = 0;
          _os_log_impl(&dword_1B831F000, v47, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - does not have a scheduleDictionary", buf, 2u);
        }

        v68 = [(STBlueprint *)v144 schedule];

        if (v68)
        {
          v69 = +[STLog screentime];
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v70 = [(STBlueprint *)v144 schedule];
            *buf = 136446466;
            v159 = "[STBlueprint updateWithDictionaryRepresentation:]";
            v160 = 2112;
            v161 = v70;
            _os_log_impl(&dword_1B831F000, v69, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting schedule (%@)", buf, 0x16u);
          }

          v71 = [(STBlueprint *)v144 managedObjectContext];
          v72 = [(STBlueprint *)v144 schedule];
          [v71 deleteObject:v72];
        }

        [(STBlueprint *)v144 setSchedule:0];
      }

      v73 = [v141 objectForKeyedSubscript:@"override"];
      v74 = +[STLog screentime];
      v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
      if (v73)
      {
        if (v75)
        {
          *buf = 0;
          _os_log_impl(&dword_1B831F000, v74, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - has overideDictionary", buf, 2u);
        }

        v76 = [(STBlueprint *)v144 override];

        if (!v76)
        {
          v77 = [STCoreDowntimeOverride alloc];
          v78 = [(STBlueprint *)v144 managedObjectContext];
          v79 = [(STCoreDowntimeOverride *)v77 initWithContext:v78];
          [(STBlueprint *)v144 setOverride:v79];
        }

        v74 = [(STBlueprint *)v144 override];
        [v74 updateWithDictionaryRepresentation:v73];
      }

      else if (v75)
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v74, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - does not have an overideDictionary", buf, 2u);
      }
    }

    v80 = [v141 objectForKeyedSubscript:@"usageLimit"];
    v81 = +[STLog screentime];
    v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);
    if (v80)
    {
      if (v82)
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v81, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - has usageLimitDictionary", buf, 2u);
      }

      v83 = [(STBlueprint *)v144 usageLimit];

      if (!v83)
      {
        v84 = [STBlueprintUsageLimit alloc];
        v85 = [(STBlueprint *)v144 managedObjectContext];
        v86 = [(STBlueprintUsageLimit *)v84 initWithContext:v85];
        [(STBlueprint *)v144 setUsageLimit:v86];
      }

      v87 = [(STBlueprint *)v144 usageLimit];
      [v87 updateWithDictionaryRepresentation:v80];
    }

    else
    {
      if (v82)
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v81, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - does not have a usageLimitDictionary", buf, 2u);
      }

      v88 = [(STBlueprint *)v144 usageLimit];

      if (v88)
      {
        v89 = +[STLog screentime];
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v90 = [(STBlueprint *)v144 usageLimit];
          *buf = 136446466;
          v159 = "[STBlueprint updateWithDictionaryRepresentation:]";
          v160 = 2112;
          v161 = v90;
          _os_log_impl(&dword_1B831F000, v89, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting usageLimit (%@)", buf, 0x16u);
        }

        v91 = [(STBlueprint *)v144 managedObjectContext];
        v92 = [(STBlueprint *)v144 usageLimit];
        [v91 deleteObject:v92];
      }

      [(STBlueprint *)v144 setUsageLimit:0];
    }

    v93 = [v141 objectForKeyedSubscript:@"limitEnabled"];
    v94 = v93;
    if (v93)
    {
      v95 = [v93 BOOLValue];
    }

    else
    {
      v95 = 1;
    }

    [(STBlueprint *)v144 setLimitEnabled:v95];
    v96 = [v141 objectForKeyedSubscript:@"creationDate"];
    [(STBlueprint *)v144 setCreationDate:v96];

    v97 = [v141 objectForKeyedSubscript:@"expiration"];
    [(STBlueprint *)v144 setExpiration:v97];

    v98 = [v141 objectForKeyedSubscript:@"minimumInstallationDate"];
    [(STBlueprint *)v144 setMinimumInstallationDate:v98];

    v99 = [v141 objectForKeyedSubscript:@"invertUsageLimit"];
    -[STBlueprint setInvertUsageLimit:](v144, "setInvertUsageLimit:", [v99 BOOLValue]);

    v100 = [v141 objectForKeyedSubscript:@"modificationDate"];
    if (v100)
    {
      [(STBlueprint *)v144 setModificationDate:v100];
    }

    v137 = v100;
    v101 = [v141 objectForKeyedSubscript:@"users"];
    v102 = +[STCoreUser fetchRequest];
    v150 = v18;
    v103 = [v102 execute:&v150];
    v14 = v150;

    v136 = v103;
    if (!v103)
    {
      v104 = +[STLog persistence];
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        [STBlueprint updateWithDictionaryRepresentation:];
      }

      v121 = 0;
      v122 = v137;
      v13 = v138;
      goto LABEL_137;
    }

    v135 = v94;
    v133 = v80;
    v104 = objc_opt_new();
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v105 = v103;
    v106 = [v105 countByEnumeratingWithState:&v146 objects:v156 count:16];
    if (v106)
    {
      v107 = v106;
      v108 = *v147;
      do
      {
        for (i = 0; i != v107; ++i)
        {
          if (*v147 != v108)
          {
            objc_enumerationMutation(v105);
          }

          v110 = *(*(&v146 + 1) + 8 * i);
          v111 = [v110 dsid];
          v112 = [v101 containsObject:v111];

          if (v112)
          {
            [v104 addObject:v110];
          }
        }

        v107 = [v105 countByEnumeratingWithState:&v146 objects:v156 count:16];
      }

      while (v107);
    }

    v113 = [v141 objectForKeyedSubscript:@"organization.class"];
    v114 = [STCoreOrganization internalClassForSerializableClassName:v113];
    v134 = v113;
    if (!v114)
    {
      v116 = +[STLog persistence];
      v94 = v135;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        [STBlueprint updateWithDictionaryRepresentation:];
      }

      v121 = 0;
      v123 = v14;
      v4 = v141;
      v80 = v133;
      v122 = v137;
      goto LABEL_136;
    }

    v115 = [(objc_class *)v114 fetchRequest];
    v145 = v14;
    v116 = [v115 execute:&v145];
    v132 = v145;

    v94 = v135;
    if (v116)
    {
      if ([v116 count]>= 2)
      {
        v117 = +[STLog persistence];
        if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
        {
          [STBlueprint updateWithDictionaryRepresentation:];
        }
      }

      v118 = [v116 firstObject];
      [(STBlueprint *)v144 setOrganization:v118];

      v119 = [(STBlueprint *)v144 organization];

      if (v119)
      {
        v120 = [MEMORY[0x1E695DFD8] setWithArray:v104];
        [(STBlueprint *)v144 setUsers:v120];
        v121 = 1;
      }

      else
      {
        v120 = +[STLog persistence];
        if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
        {
          [STBlueprint updateWithDictionaryRepresentation:];
        }

        v121 = 0;
      }

      v4 = v141;
      v80 = v133;
      v94 = v135;
      v122 = v137;
    }

    else
    {
      v120 = +[STLog persistence];
      v122 = v137;
      if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
      {
        v123 = v132;
        [STBlueprint updateWithDictionaryRepresentation:];
        v121 = 0;
        v4 = v141;
        v80 = v133;
        goto LABEL_135;
      }

      v121 = 0;
      v4 = v141;
      v80 = v133;
    }

    v123 = v132;
LABEL_135:

LABEL_136:
    v14 = v123;
    v13 = v138;
LABEL_137:

    v11 = v139;
    v8 = v140;
LABEL_156:

    goto LABEL_157;
  }

  v124 = +[STLog screentime];
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v124, OS_LOG_TYPE_DEFAULT, "Blueprint version clocks equal.", buf, 2u);
  }

  v125 = +[STLog screentime];
  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
  {
    [STBlueprint updateWithDictionaryRepresentation:?];
  }

  v126 = +[STLog screentime];
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
  {
    [STBlueprint updateWithDictionaryRepresentation:];
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v121 = 1;
LABEL_157:

  v127 = *MEMORY[0x1E69E9840];
  return v121;
}

- (id)dictionaryRepresentation
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [(STBlueprint *)self users];
  v4 = [v3 valueForKeyPath:@"dsid"];
  v5 = [v4 allObjects];

  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  v7 = [(STBlueprint *)self configurations];
  v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [(STBlueprint *)self configurations];
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v42 + 1) + 8 * i) dictionaryRepresentation];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v11);
  }

  v41.receiver = self;
  v41.super_class = STBlueprint;
  v15 = [(STUniquedManagedObject *)&v41 dictionaryRepresentation];
  v16 = [(STBlueprint *)self type];
  v17 = [v16 isEqualToString:@"downtime"];

  v18 = MEMORY[0x1E696AD98];
  if (v17)
  {
    v19 = [(STBlueprint *)self schedule];
    v20 = [v18 numberWithBool:{objc_msgSend(v19, "enabled")}];
    [v15 setObject:v20 forKeyedSubscript:@"enabled"];

    v21 = [(STBlueprint *)self override];
    v22 = [v21 dictionaryRepresentation];
    [v15 setObject:v22 forKeyedSubscript:@"override"];
  }

  else
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[STBlueprint enabled](self, "enabled")}];
    [v15 setObject:v21 forKeyedSubscript:@"enabled"];
  }

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[STBlueprint limitEnabled](self, "limitEnabled")}];
  [v15 setObject:v23 forKeyedSubscript:@"limitEnabled"];

  v24 = [(STBlueprint *)self creationDate];
  [v15 setObject:v24 forKeyedSubscript:@"creationDate"];

  v25 = [(STBlueprint *)self expiration];
  [v15 setObject:v25 forKeyedSubscript:@"expiration"];

  v26 = [(STBlueprint *)self minimumInstallationDate];
  [v15 setObject:v26 forKeyedSubscript:@"minimumInstallationDate"];

  v27 = [(STBlueprint *)self identifier];
  [v15 setObject:v27 forKeyedSubscript:@"identifier"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[STBlueprint invertUsageLimit](self, "invertUsageLimit")}];
  [v15 setObject:v28 forKeyedSubscript:@"invertUsageLimit"];

  v29 = [(STBlueprint *)self type];
  [v15 setObject:v29 forKeyedSubscript:@"type"];

  v30 = [(STBlueprint *)self organization];
  v31 = [objc_opt_class() serializableClassName];
  [v15 setObject:v31 forKeyedSubscript:@"organization.class"];

  v32 = [(STBlueprint *)self schedule];
  v33 = [v32 dictionaryRepresentation];
  [v15 setObject:v33 forKeyedSubscript:@"schedule"];

  [v15 setObject:v8 forKeyedSubscript:@"configurations"];
  v34 = [(STBlueprint *)self usageLimit];
  v35 = [v34 dictionaryRepresentation];
  [v15 setObject:v35 forKeyedSubscript:@"usageLimit"];

  [v15 setObject:v5 forKeyedSubscript:@"users"];
  v36 = [(STBlueprint *)self versionVector];
  [v15 setObject:v36 forKeyedSubscript:@"versionVector"];

  v37 = [(STBlueprint *)self modificationDate];
  [v15 setObject:v37 forKeyedSubscript:@"modificationDate"];

  v38 = [v15 copy];
  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 objectForKeyedSubscript:@"identifier"];
  v11 = [a1 fetchRequest];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v10];
  [v11 setPredicate:v12];

  v13 = [v11 execute:a5];
  if (!v13)
  {
    v47 = 0;
    goto LABEL_38;
  }

  v42 = a5;
  v43 = v11;
  v41 = v13;
  v47 = [v13 firstObject];
  if (!v47)
  {
    v14 = [[STBlueprint alloc] initWithContext:v9];
    v15 = [v8 objectForKeyedSubscript:@"identifier"];
    v47 = v14;
    [(STBlueprint *)v14 setIdentifier:v15];
  }

  v44 = v10;
  v46 = objc_opt_new();
  v45 = v8;
  [v8 objectForKeyedSubscript:@"configurations"];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v58 = 0u;
  v16 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v56;
    do
    {
      v20 = 0;
      v21 = v18;
      do
      {
        if (*v56 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v55 + 1) + 8 * v20);
        v54 = v21;
        v23 = [STBlueprintConfiguration fetchOrCreateWithDictionaryRepresentation:v22 inContext:v9 error:&v54];
        v18 = v54;

        if (v18)
        {
          v24 = +[STLog persistence];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v60 = v18;
            _os_log_error_impl(&dword_1B831F000, v24, OS_LOG_TYPE_ERROR, "Could not create blueprint configuration: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          [v23 setBlueprint:v47];
          [v46 addObject:v23];
        }

        ++v20;
        v21 = v18;
      }

      while (v17 != v20);
      v17 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  [v47 setConfigurations:v46];
  v25 = +[STBlueprintConfiguration fetchRequest];
  v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL", @"blueprint"];
  [v25 setPredicate:v26];

  v53 = v18;
  v27 = [v25 execute:&v53];
  v28 = v53;

  if (v27)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v29 = v27;
    v30 = [v29 countByEnumeratingWithState:&v49 objects:v63 count:16];
    if (v30)
    {
      v31 = v30;
      v39 = v28;
      v40 = v25;
      v32 = *v50;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v49 + 1) + 8 * i);
          v35 = +[STLog screentime];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v60 = "+[STBlueprint fetchOrCreateWithDictionaryRepresentation:inContext:error:]";
            v61 = 2112;
            v62 = v34;
            _os_log_impl(&dword_1B831F000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: deleting orphanConfiguration (%@)", buf, 0x16u);
          }

          [v9 deleteObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v49 objects:v63 count:16];
      }

      while (v31);
      v10 = v44;
      v8 = v45;
      a5 = v42;
      v11 = v43;
      v28 = v39;
      v25 = v40;
      goto LABEL_34;
    }

    v11 = v43;
    v10 = v44;
  }

  else
  {
    v29 = +[STLog persistence];
    v11 = v43;
    v10 = v44;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint fetchOrCreateWithDictionaryRepresentation:inContext:error:];
    }
  }

  v8 = v45;
LABEL_34:

  if (a5 && v28)
  {
    v36 = v28;
    *a5 = v28;
  }

  v13 = v41;
LABEL_38:

  v37 = *MEMORY[0x1E69E9840];

  return v47;
}

+ (id)scheduleTextWithLocale:(id)a3 weekdayScheduleComparator:(id)a4 scheduleTimeGetter:(id)a5
{
  v81 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = v10;
  if (v7)
  {
    [v10 setLocale:v7];
  }

  v59 = [v11 shortWeekdaySymbols];
  v12 = [v11 maximumRangeOfUnit:512];
  v14 = v13;
  v15 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v13];
  v57 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v14];
  v16 = [v11 firstWeekday];
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  v79[3] = v16;
  v17 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__STBlueprint_scheduleTextWithLocale_weekdayScheduleComparator_scheduleTimeGetter___block_invoke;
  aBlock[3] = &unk_1E7CE6E88;
  v76 = v16;
  v45 = v8;
  v73 = v45;
  v75 = v79;
  v46 = v9;
  v74 = v46;
  v18 = v15;
  v67 = v18;
  v77 = v12;
  v78 = v14 + v12 - 1;
  v48 = v59;
  v68 = v48;
  v47 = v11;
  v69 = v47;
  v49 = v17;
  v70 = v49;
  v52 = v7;
  v71 = v52;
  v56 = v57;
  v72 = v56;
  v53 = _Block_copy(aBlock);
  if (v16 == v14 + v12 - 1)
  {
    v19 = v12;
  }

  else
  {
    v19 = v16 + 1;
  }

  v20 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v12, v14}];
  [v20 enumerateIndexesInRange:v19 options:v14 + v12 - v19 usingBlock:{0, v53}];
  [v20 enumerateIndexesInRange:v12 options:v19 - v12 usingBlock:{0, v53}];
  v50 = v20;
  v21 = +[STScreenTimeCoreBundle bundle];
  if (v7)
  {
    v61 = v52;
  }

  else
  {
    v61 = [MEMORY[0x1E695DF58] currentLocale];
  }

  v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v18;
  v22 = [obj countByEnumeratingWithState:&v62 objects:v80 count:16];
  v51 = @"CustomScheduleDetailTextCommaSeparator";
  if (v22)
  {
    v23 = 0;
    v55 = *v63;
    do
    {
      v60 = v22;
      for (i = 0; i != v60; ++i)
      {
        if (*v63 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v62 + 1) + 8 * i);
        v26 = [v56 objectForKeyedSubscript:v25];
        v27 = [v26 count];
        if (v27 < 3)
        {
          v28 = [v21 localizedStringForKey:@"CustomScheduleTwoWeekdayRangeSeparator" value:&stru_1F3040980 table:0];
          v36 = [v26 componentsJoinedByString:v28];
        }

        else
        {
          v28 = [v21 localizedStringForKey:@"CustomScheduleThreeOrMoreWeekdayRangeCommaSeparator" value:&stru_1F3040980 table:0];
          v29 = v27 - 1;
          v30 = [v26 subarrayWithRange:{0, v27 - 1}];
          v31 = [v30 componentsJoinedByString:v28];

          v32 = [v21 localizedStringForKey:@"CustomScheduleThreeOrMoreWeekdayRangeAndSeparator" value:&stru_1F3040980 table:0];
          v33 = objc_alloc(MEMORY[0x1E696AEC0]);
          v34 = [v26 objectAtIndexedSubscript:v29];
          v35 = [v33 initWithFormat:v32 locale:v61, v34];

          v36 = [v31 stringByAppendingString:v35];

          v23 = 1;
        }

        v37 = [v21 localizedStringForKey:@"CustomDailyScheduleFormat" value:&stru_1F3040980 table:0];
        v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v37 locale:v61, v36, v25];
        [v58 addObject:v38];
      }

      v22 = [obj countByEnumeratingWithState:&v62 objects:v80 count:16];
    }

    while (v22);
    v39 = @"CustomScheduleDetailTextSemicolonSeparator";
    if ((v23 & 1) == 0)
    {
      v39 = @"CustomScheduleDetailTextCommaSeparator";
    }

    v51 = v39;
  }

  if ([v58 count])
  {
    v40 = v51;
    v41 = [v21 localizedStringForKey:v40 value:&stru_1F3040980 table:0];
    v42 = [v58 componentsJoinedByString:v41];
  }

  else
  {
    v42 = 0;
  }

  _Block_object_dispose(v79, 8);
  v43 = *MEMORY[0x1E69E9840];

  return v42;
}

uint64_t __83__STBlueprint_scheduleTextWithLocale_weekdayScheduleComparator_scheduleTimeGetter___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == a2 || (v4 = *(a1 + 80), v5 = *(*(*(a1 + 96) + 8) + 24), result = (*(*(a1 + 80) + 16))(), (result & 1) == 0))
  {
    v7 = *(*(*(a1 + 96) + 8) + 24);
    v8 = (*(*(a1 + 88) + 16))();
    if (v8)
    {
      v18 = v8;
      [*(a1 + 32) addObject:v8];
      if (*(a1 + 112) == a2)
      {
        v9 = *(a1 + 120);
      }

      else
      {
        v9 = a2 - 1;
      }

      v10 = *(*(*(a1 + 96) + 8) + 24);
      if (v10 == v9)
      {
        v11 = [*(a1 + 40) objectAtIndexedSubscript:v9 - 1];
      }

      else
      {
        v12 = [*(a1 + 48) nextDateAfterDate:*(a1 + 56) matchingUnit:512 value:v10 options:1024];
        v13 = [*(a1 + 48) nextDateAfterDate:v12 matchingUnit:512 value:v9 options:1024];
        v14 = objc_opt_new();
        v15 = v14;
        if (*(a1 + 64))
        {
          [v14 setLocale:?];
        }

        [v15 setDateTemplate:@"ccc"];
        v11 = [v15 stringFromDate:v12 toDate:v13];
      }

      v16 = [*(a1 + 72) objectForKeyedSubscript:v18];
      if (v16)
      {
        v17 = v16;
        [v16 addObject:v11];
      }

      else
      {
        v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v11, 0}];
        [*(a1 + 72) setObject:v17 forKeyedSubscript:v18];
      }
    }

    *(*(*(a1 + 96) + 8) + 24) = a2;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)blueprintTypeForDeclarationType:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6996238] registeredIdentifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = @"always-allowed-apps";
  }

  else
  {
    v7 = [MEMORY[0x1E6996240] registeredIdentifier];
    v8 = [v3 isEqualToString:v7];

    if (v8)
    {
      v6 = @"downtime";
    }

    else
    {
      v9 = [MEMORY[0x1E6996218] registeredIdentifier];
      v10 = [v3 isEqualToString:v9];

      if (v10)
      {
        goto LABEL_21;
      }

      v11 = [MEMORY[0x1E69962D8] registeredIdentifier];
      v12 = [v3 isEqualToString:v11];

      if (v12)
      {
        goto LABEL_21;
      }

      v13 = [MEMORY[0x1E6996310] registeredIdentifier];
      v14 = [v3 isEqualToString:v13];

      if (v14)
      {
        goto LABEL_21;
      }

      v15 = [MEMORY[0x1E69962B8] registeredIdentifier];
      v16 = [v3 isEqualToString:v15];

      if (v16)
      {
        goto LABEL_21;
      }

      v17 = [MEMORY[0x1E69962E0] registeredIdentifier];
      v18 = [v3 isEqualToString:v17];

      if (v18)
      {
        goto LABEL_21;
      }

      v19 = [MEMORY[0x1E6996220] registeredIdentifier];
      v20 = [v3 isEqualToString:v19];

      if (v20)
      {
        goto LABEL_21;
      }

      v21 = [MEMORY[0x1E6996200] registeredIdentifier];
      v22 = [v3 isEqualToString:v21];

      if (v22)
      {
        goto LABEL_21;
      }

      v23 = [MEMORY[0x1E6996308] registeredIdentifier];
      v24 = [v3 isEqualToString:v23];

      if (v24)
      {
        goto LABEL_21;
      }

      v25 = [MEMORY[0x1E6996300] registeredIdentifier];
      v26 = [v3 isEqualToString:v25];

      if (v26)
      {
        goto LABEL_21;
      }

      v27 = [MEMORY[0x1E69962C8] registeredIdentifier];
      v28 = [v3 isEqualToString:v27];

      if (v28)
      {
        goto LABEL_21;
      }

      v29 = [MEMORY[0x1E69962F8] registeredIdentifier];
      v30 = [v3 isEqualToString:v29];

      if (v30)
      {
        goto LABEL_21;
      }

      v31 = [MEMORY[0x1E6996230] registeredIdentifier];
      v32 = [v3 isEqualToString:v31];

      if (v32)
      {
        goto LABEL_21;
      }

      v33 = [MEMORY[0x1E69961E8] registeredIdentifier];
      v34 = [v3 isEqualToString:v33];

      if (v34)
      {
        goto LABEL_21;
      }

      v35 = [MEMORY[0x1E6996228] registeredIdentifier];
      v36 = [v3 isEqualToString:v35];

      if (v36)
      {
        goto LABEL_21;
      }

      v37 = [MEMORY[0x1E69962F0] registeredIdentifier];
      v38 = [v3 isEqualToString:v37];

      if (v38 & 1) != 0 || ([MEMORY[0x1E6996318] registeredIdentifier], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v3, "isEqualToString:", v39), v39, (v40))
      {
LABEL_21:
        v6 = @"restrictions";
      }

      else
      {
        v42 = [MEMORY[0x1E69961F8] registeredIdentifier];
        v43 = [v3 isEqualToString:v42];

        v6 = @"restrictions";
        if ((v43 & 1) == 0)
        {
          v44 = [MEMORY[0x1E6996328] registeredIdentifier];
          v45 = [v3 isEqualToString:v44];

          if (!v45)
          {
            v6 = 0;
          }
        }
      }
    }
  }

  return v6;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STBlueprint;
  if ([(STBlueprint *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STBlueprint *)self _validateUsersOnBlueprint:v5];
    [(STBlueprint *)self _validateType:v5];
    [(STBlueprint *)self _validateBlueprintConfiguration:v5];
    [(STBlueprint *)self _validateNumberOfBlueprints:v5];
    [(STBlueprint *)self _validateBlueprintIdentifier:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STBlueprint validateForUpdate:?];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprint;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(STBlueprint *)a3 validateForUpdate:v5];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STBlueprint;
  if (![(STBlueprint *)&v10 validateForInsert:?])
  {
    return 0;
  }

  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  v5 = objc_opt_new();
  [(STBlueprint *)self _validateUsersOnBlueprint:v5];
  [(STBlueprint *)self _validateType:v5];
  [(STBlueprint *)self _validateBlueprintConfiguration:v5];
  [(STBlueprint *)self _validateNumberOfBlueprints:v5];
  [(STBlueprint *)self _validateBlueprintIdentifier:v5];
  if ([v5 count])
  {
    v6 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint validateForInsert:?];
    }
  }

  v9.receiver = self;
  v9.super_class = STBlueprint;
  v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];

  return v7;
}

- (BOOL)validateForDelete:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STBlueprint;
  if (![(STBlueprint *)&v10 validateForDelete:?])
  {
    return 0;
  }

  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  v5 = objc_opt_new();
  [(STBlueprint *)self _validateNumberOfBlueprints:v5];
  if ([v5 count])
  {
    v6 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint validateForDelete:?];
    }
  }

  v9.receiver = self;
  v9.super_class = STBlueprint;
  v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];

  return v7;
}

- (BOOL)_validateUsersOnBlueprint:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STBlueprint *)self users];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21[0] = @"There must be one user assigned to blueprint";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v9 = [v7 errorWithDomain:@"STErrorDomain" code:531 userInfo:v8];
    [v4 addObject:v9];
  }

  v10 = [(STBlueprint *)self users];
  v11 = [v10 count];

  if (v11 >= 2)
  {
    v12 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19 = @"There must be one and only one user assigned to Blueprint.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = [v12 errorWithDomain:@"STErrorDomain" code:532 userInfo:v13];
    [v4 addObject:v14];
  }

  v15 = [v4 count] == 0;

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_validateNumberOfBlueprints:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STBlueprint *)self users];
  v6 = [v5 anyObject];
  v7 = [v6 dsid];
  v8 = [(STBlueprint *)self type];
  v9 = [(STBlueprint *)self organization];
  v10 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v7 ofType:v8 fromOrganization:v9];

  v29 = 0;
  v11 = [v10 execute:&v29];
  v12 = v29;
  if (v11)
  {
    v13 = [(STBlueprint *)self type];
    if (v13 == @"downtime")
    {
      goto LABEL_10;
    }

    v14 = v13;
    v15 = [(STBlueprint *)self type];
    if (v15 != @"restrictions")
    {
      v16 = v15;
      v17 = [(STBlueprint *)self type];
      if (v17 != @"managed-user")
      {
        v18 = v17;
        v19 = [(STBlueprint *)self type];

        if (v19 != @"always-allowed-apps")
        {
LABEL_14:
          v20 = [v4 count] == 0;
          goto LABEL_15;
        }

LABEL_10:
        if (![v11 count])
        {
          v21 = MEMORY[0x1E696ABC0];
          v32 = *MEMORY[0x1E696A578];
          v33[0] = @"There are no blueprints for the given type";
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
          v23 = [v21 errorWithDomain:@"STErrorDomain" code:537 userInfo:v22];
          [v4 addObject:v23];
        }

        if ([v11 count] >= 2)
        {
          v24 = MEMORY[0x1E696ABC0];
          v30 = *MEMORY[0x1E696A578];
          v31 = @"There are multiple blueprints for a given type";
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v26 = [v24 errorWithDomain:@"STErrorDomain" code:538 userInfo:v25];
          [v4 addObject:v26];
        }

        goto LABEL_14;
      }
    }

    goto LABEL_10;
  }

  [v4 addObject:v12];
  v20 = 0;
LABEL_15:

  v27 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)_validateType:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STBlueprint *)self type];

  if (!v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = @"Every blueprint must have a valid type";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:539 userInfo:v7];
    [v4 addObject:v8];
  }

  v9 = [(STBlueprint *)self type];
  if ([v9 isEqualToString:@"downtime"])
  {
    goto LABEL_12;
  }

  v10 = [(STBlueprint *)self type];
  if (([v10 isEqualToString:@"restrictions"] & 1) == 0)
  {
    v11 = [(STBlueprint *)self type];
    if (![v11 isEqualToString:@"usage-limit"])
    {
      v12 = [(STBlueprint *)self type];
      if (([v12 isEqualToString:@"managed-user"] & 1) == 0)
      {
        v13 = [(STBlueprint *)self type];
        if (([v13 isEqualToString:@"always-allowed-apps"] & 1) == 0)
        {
          v17 = [(STBlueprint *)self type];
          v18 = [v17 isEqualToString:@"usage-limit-override"];

          if (v18)
          {
            goto LABEL_13;
          }

          v19 = MEMORY[0x1E696ABC0];
          v20 = *MEMORY[0x1E696A578];
          v21 = @"Blueprint type is not recognized";
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
          v10 = [v19 errorWithDomain:@"STErrorDomain" code:540 userInfo:v9];
          [v4 addObject:v10];
          goto LABEL_11;
        }
      }
    }
  }

LABEL_11:

LABEL_12:
LABEL_13:
  v14 = [v4 count] == 0;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_validateBlueprintIdentifier:(id)a3
{
  v75[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STBlueprint *)self type];
  if (v5 != @"always-allowed-apps")
  {
    v6 = v5;
    v7 = [(STBlueprint *)self type];
    if (v7 != @"restrictions")
    {
      v8 = v7;
      v9 = [(STBlueprint *)self type];
      if (v9 != @"downtime")
      {
        v10 = v9;
        v11 = [(STBlueprint *)self type];

        if (v11 != @"managed-user")
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v12 = [(STBlueprint *)self type];
  v13 = [(STBlueprint *)self users];
  v14 = [v13 anyObject];
  v15 = [v14 dsid];
  v16 = [(STBlueprint *)self organization];
  v17 = createBlueprintIdentifierForType(v12, 0, v15, v16);

  v18 = [(STBlueprint *)self identifier];

  if (v17 != v18)
  {
    v19 = MEMORY[0x1E696ABC0];
    v74 = *MEMORY[0x1E696A578];
    v75[0] = @"Invalid identifier";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
    v21 = [v19 errorWithDomain:@"STErrorDomain" code:541 userInfo:v20];
    [v4 addObject:v21];
  }

LABEL_11:
  v22 = [(STBlueprint *)self organization];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v24 = [(STBlueprint *)self type];
    if (v24 != @"always-allowed-apps")
    {
      v25 = v24;
      v26 = [(STBlueprint *)self type];
      if (v26 == @"restrictions")
      {
      }

      else
      {
        v27 = v26;
        v28 = [(STBlueprint *)self type];

        if (v28 != @"downtime")
        {
          goto LABEL_19;
        }
      }
    }

    v29 = [(STBlueprint *)self identifier];
    v30 = [(STBlueprint *)self users];
    v31 = [v30 anyObject];
    v32 = [v31 dsid];
    v33 = [v32 stringValue];
    v34 = [v29 containsString:v33];

    if ((v34 & 1) == 0)
    {
      v35 = MEMORY[0x1E696ABC0];
      v72 = *MEMORY[0x1E696A578];
      v73 = @"Blueprint identifier doesn't have DSID or is assigned to a different family member.";
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v37 = [v35 errorWithDomain:@"STErrorDomain" code:541 userInfo:v36];
      [v4 addObject:v37];
    }
  }

LABEL_19:
  v38 = [(STBlueprint *)self type];

  if (v38 == @"managed-user")
  {
    v39 = [(STBlueprint *)self identifier];
    v40 = [(STBlueprint *)self users];
    v41 = [v40 anyObject];
    v42 = [v41 dsid];
    v43 = [v42 stringValue];
    v44 = [v39 containsString:v43];

    if ((v44 & 1) == 0)
    {
      v45 = MEMORY[0x1E696ABC0];
      v70 = *MEMORY[0x1E696A578];
      v71 = @"Managed User blueprint identifier doesn't have DSID or is assigned to a different family member.";
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v47 = [v45 errorWithDomain:@"STErrorDomain" code:541 userInfo:v46];
      [v4 addObject:v47];
    }
  }

  v48 = [(STBlueprint *)self type];
  if (v48 == @"always-allowed-apps" || (v49 = v48, [(STBlueprint *)self type], v50 = objc_claimAutoreleasedReturnValue(), v50, v49, v50 == @"downtime"))
  {
    v51 = [(STBlueprint *)self organization];
    objc_opt_class();
    v52 = objc_opt_isKindOfClass();

    v53 = [(STBlueprint *)self identifier];
    v54 = v53;
    if (v52)
    {
      v55 = [v53 containsString:@"family"];

      if ((v55 & 1) == 0)
      {
        v56 = MEMORY[0x1E696ABC0];
        v68 = *MEMORY[0x1E696A578];
        v69 = @"Missing organization identifier in Blueprint identifier";
        v57 = MEMORY[0x1E695DF20];
        v58 = &v69;
        v59 = &v68;
LABEL_29:
        v61 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:1];
        v62 = [v56 errorWithDomain:@"STErrorDomain" code:542 userInfo:v61];
        [v4 addObject:v62];
      }
    }

    else
    {
      v60 = [v53 containsString:@"personal"];

      if ((v60 & 1) == 0)
      {
        v56 = MEMORY[0x1E696ABC0];
        v66 = *MEMORY[0x1E696A578];
        v67 = @"Missing organization identifier in Blueprint identifier";
        v57 = MEMORY[0x1E695DF20];
        v58 = &v67;
        v59 = &v66;
        goto LABEL_29;
      }
    }
  }

  v63 = [v4 count] == 0;

  v64 = *MEMORY[0x1E69E9840];
  return v63;
}

- (BOOL)_validateBlueprintConfiguration:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STBlueprint *)self type];

  if (v5 == @"restrictions" || (-[STBlueprint configurations](self, "configurations"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7))
  {
    v8 = 1;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = @"Blueprints other than Content & Privacy should have a configuration set.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = [v9 errorWithDomain:@"STErrorDomain" code:543 userInfo:v10];
    [v4 addObject:v11];

    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)saveDefaultAlwaysAllowListIfNecessaryForUser:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[STLog persistence];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B831F000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to save the default Always Allow list, if necessary.", v10, 2u);
  }

  v7 = +[STBlueprint defaultAlwaysAllowBundleIDs];
  v8 = [STBlueprint saveAlwaysAllowListForUser:v5 withBundleIDs:v7 overwriteExistingList:0 error:a4];

  return v8;
}

+ (BOOL)saveAlwaysAllowListForUser:(id)a3 withBundleIDs:(id)a4 overwriteExistingList:(BOOL)a5 error:(id *)a6
{
  v84[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 managingOrganization];
  if (v11)
  {
    v74 = a6;
    v12 = [v9 dsid];
    v13 = [v9 alwaysAllowActivationIdentifier];
    v14 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v12 ofType:@"always-allowed-apps" withIdentifier:v13 fromOrganization:v11];

    v82 = 0;
    v15 = [v14 execute:&v82];
    v16 = v82;
    if (!v15)
    {
      v24 = +[STLog persistence];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
      }

      if (v74)
      {
        v25 = v16;
        v23 = 0;
        *v74 = v16;
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_56;
    }

    if ([v15 count] >= 2)
    {
      v17 = +[STLog persistence];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
      }
    }

    v18 = [v9 managedObjectContext];
    v19 = [v15 firstObject];
    v73 = v18;
    if (v19)
    {
      v20 = v19;
      if (!a5)
      {
        v58 = +[STLog persistence];
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          [STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:v58 withBundleIDs:? overwriteExistingList:? error:?];
        }

        v23 = 1;
        goto LABEL_55;
      }

      v69 = v14;
    }

    else
    {
      v69 = v14;
      v20 = [[STBlueprint alloc] initWithContext:v18];
      [(STBlueprint *)v20 setType:@"always-allowed-apps"];
      v26 = [v9 alwaysAllowActivationIdentifier];
      [(STBlueprint *)v20 setIdentifier:v26];

      [(STBlueprint *)v20 setOrganization:v11];
      v27 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v9, 0}];
      [(STBlueprint *)v20 setUsers:v27];
    }

    [(STBlueprint *)v20 setIsDirty:1];
    v28 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID.URIRepresentation.absoluteString" ascending:1];
    v84[0] = v28;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
    v30 = v29 = v20;

    v31 = MEMORY[0x1E696AE18];
    v32 = [v9 alwaysAllowConfigurationIdentifier];
    v33 = [v31 predicateWithFormat:@"%K == %@", @"identifier", v32];

    v34 = [(STBlueprint *)v29 configurations];
    v68 = v33;
    v35 = [v34 filteredSetUsingPredicate:v33];
    v71 = v30;
    v36 = v30;
    v20 = v29;
    v37 = [v35 sortedArrayUsingDescriptors:v36];
    v38 = [v37 firstObject];

    v72 = v38;
    if (!v38)
    {
      v39 = [[STBlueprintConfiguration alloc] initWithContext:v73];
      v40 = [v9 alwaysAllowConfigurationIdentifier];
      [(STBlueprintConfiguration *)v39 setIdentifier:v40];

      v72 = v39;
      [(STBlueprintConfiguration *)v39 setBlueprint:v20];
    }

    v41 = MEMORY[0x1E6996238];
    v42 = [v9 alwaysAllowConfigurationIdentifier];
    v43 = [v41 buildWithIdentifier:v42 withMode:*MEMORY[0x1E6996198] withApps:v10 withExemptApps:MEMORY[0x1E695E0F0]];

    v44 = v43;
    [v43 updateServerHash];
    v81 = v16;
    v45 = [v43 serializeAsDataWithError:&v81];
    v46 = v81;

    v47 = v45;
    v14 = v69;
    v67 = v44;
    if (v47)
    {
      v66 = v47;
      [v72 setPayloadPlist:v47];
      v48 = [v44 declarationType];
      [v72 setType:v48];

      v49 = [v9 dsid];
      v50 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v49 ofType:@"usage-limit" fromOrganization:v11];

      v80 = v46;
      v51 = [v50 execute:&v80];
      v52 = v80;

      if (v51)
      {
        v70 = v52;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v15 = v51;
        v53 = [v15 countByEnumeratingWithState:&v76 objects:v83 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v77;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v77 != v55)
              {
                objc_enumerationMutation(v15);
              }

              [*(*(&v76 + 1) + 8 * i) updateUsageLimitWithAlwaysAllowBundleIdentifiers:v10];
            }

            v54 = [v15 countByEnumeratingWithState:&v76 objects:v83 count:16];
          }

          while (v54);
        }

        if (![v73 hasChanges])
        {
          v23 = 1;
          v14 = v50;
          v46 = v70;
LABEL_53:
          v47 = v66;
          goto LABEL_54;
        }

        v75 = v52;
        v57 = [v73 save:&v75];
        v46 = v75;

        if (v57)
        {
          v23 = 1;
LABEL_52:
          v14 = v50;
          goto LABEL_53;
        }

        v63 = +[STLog persistence];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
        }

        v60 = v74;
        if (!v74)
        {
LABEL_51:
          v23 = 0;
          goto LABEL_52;
        }
      }

      else
      {
        v61 = +[STLog persistence];
        v60 = v74;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
        }

        v15 = 0;
        v46 = v52;
        if (!v74)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v59 = +[STLog persistence];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
      {
        +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
      }

      v60 = v74;
      if (!v74)
      {
        v23 = 0;
LABEL_54:

        v16 = v46;
        v58 = v71;
LABEL_55:

LABEL_56:
        goto LABEL_57;
      }

      v66 = 0;
      v50 = v69;
    }

    v62 = v46;
    v23 = 0;
    *v60 = v46;
    goto LABEL_52;
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
  v21 = +[STLog persistence];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
  }

  if (a6)
  {
    v22 = v16;
    v23 = 0;
    *a6 = v16;
  }

  else
  {
    v23 = 0;
  }

LABEL_57:

  v64 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)alwaysAllowBundleIdentifiersWithError:(id *)a3
{
  v4 = [(STBlueprint *)self users];
  v5 = [v4 anyObject];

  v6 = [STBlueprint alwaysAllowBundleIdentifiersForUser:v5 error:a3];

  return v6;
}

+ (id)alwaysAllowBundleIdentifiersForUser:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 managingOrganization];
  if (v6)
  {
    v7 = [v5 dsid];
    v8 = [v5 alwaysAllowActivationIdentifier];
    v9 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v7 ofType:@"always-allowed-apps" withIdentifier:v8 fromOrganization:v6];

    v41 = 0;
    v10 = [v9 execute:&v41];
    v11 = v41;
    if (v10)
    {
      if ([v10 count] >= 2)
      {
        v12 = +[STLog persistence];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
        }
      }

      v13 = [v10 firstObject];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 configurations];
        if ([v15 count] >= 2)
        {
          v16 = +[STLog persistence];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
          }
        }

        v39 = v9;
        v17 = [v15 anyObject];
        v18 = v17;
        if (v17)
        {
          v19 = MEMORY[0x1E6996238];
          v20 = [v17 payloadPlist];
          v40 = v11;
          v21 = [v19 declarationForData:v20 error:&v40];
          v22 = v40;

          if (v21)
          {
            v23 = [v21 payloadApps];
            v24 = v23;
            v25 = MEMORY[0x1E695E0F0];
            if (v23)
            {
              v25 = v23;
            }

            v26 = v25;
          }

          else
          {
            v35 = +[STLog persistence];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              +[STBlueprint(AlwaysAllow) alwaysAllowBundleIdentifiersForUser:error:];
            }

            if (a4)
            {
              v36 = v22;
              v26 = 0;
              *a4 = v22;
            }

            else
            {
              v26 = 0;
            }
          }
        }

        else
        {
          v33 = +[STLog persistence];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [STBlueprint(AlwaysAllow) alwaysAllowBundleIdentifiersForUser:v5 error:?];
          }

          v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:543 userInfo:0];

          if (a4)
          {
            v34 = v22;
            v26 = 0;
            *a4 = v22;
          }

          else
          {
            v26 = 0;
          }
        }

        v9 = v39;
      }

      else
      {
        v31 = +[STLog persistence];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [STBlueprint(AlwaysAllow) alwaysAllowBundleIdentifiersForUser:v5 error:?];
        }

        v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:14 userInfo:0];

        if (a4)
        {
          v32 = v22;
          v26 = 0;
          *a4 = v22;
        }

        else
        {
          v26 = 0;
        }
      }

      v11 = v22;
    }

    else
    {
      v29 = +[STLog persistence];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
      }

      if (a4)
      {
        v30 = v11;
        v26 = 0;
        *a4 = v11;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
    v27 = +[STLog persistence];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint(AlwaysAllow) alwaysAllowBundleIdentifiersForUser:error:];
    }

    if (a4)
    {
      v28 = v11;
      v26 = 0;
      *a4 = v11;
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

- (id)_downtimeConfigurationAtDate:(id)a3 inCalendar:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STBlueprint *)self schedule];
  v9 = [(STBlueprint *)self activeOverride];
  v10 = STUTCErasedDateFromDate(v7, v6);

  v11 = [v6 copy];
  v12 = STUTCTimeZone();
  [v11 setTimeZone:v12];

  v13 = [[STDowntimeConfiguration alloc] initWithCurrentState:0 currentDate:v10 nextState:0 nextStateChangeDate:0 calendar:v11];
  v14 = [v8 enabled];
  if (-[STBlueprint enabled](self, "enabled") & 1) != 0 || (v14 & 1) != 0 || v9 && ([v9 isActiveAtDate:v10])
  {
    if ([v9 isActiveAtDate:v10])
    {
      v15 = [v9 state];
      v16 = 2;
      if (!v14)
      {
        v16 = 0;
      }

      v17 = v14;
      v18 = 4;
      if (v15 != 1)
      {
        v18 = 0;
        v17 = 0;
      }

      if (v15)
      {
        v19 = v18;
      }

      else
      {
        v19 = 3;
      }

      if (v15)
      {
        v20 = v17;
      }

      else
      {
        v20 = v16;
      }

      v21 = [STDowntimeConfiguration alloc];
      v22 = [v9 endDate];
      v23 = [(STDowntimeConfiguration *)v21 initWithCurrentState:v19 currentDate:v10 nextState:v20 nextStateChangeDate:v22 calendar:v11];

      v24 = v23;
      goto LABEL_26;
    }

    if (v14)
    {
      v25 = [v8 isActiveAtDate:v10 inCalendar:v11];
      if (v25)
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      if (v25)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      v28 = [v8 computeNextScheduleBoundaryAfterDate:v10 inCalendar:v11 isStartDate:0];
      v29 = [[STDowntimeConfiguration alloc] initWithCurrentState:v26 currentDate:v10 nextState:v27 nextStateChangeDate:v28 calendar:v11];

      v30 = v29;
      goto LABEL_27;
    }
  }

  v24 = v13;
LABEL_26:
  v30 = v24;
LABEL_27:

  return v30;
}

- (STDowntimeConfiguration)downtimeConfiguration
{
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v5 = [(STBlueprint *)self _downtimeConfigurationAtDate:v3 inCalendar:v4];

  return v5;
}

+ (id)downtimeConfigurationForUserID:(id)a3 context:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [STBlueprint _userForUserID:a3 inContext:v7 error:a5];
  v9 = [STBlueprint _downtimeForUser:v8 inContext:v7 error:a5];

  if (v9)
  {
    v10 = [v9 downtimeConfiguration];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setStartTime:(id)a3 endTime:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STBlueprint *)self schedule];
  [v8 setStartTime:v7 endTime:v6];

  [(STBlueprint *)self setIsDirty:1];

  [(STBlueprint *)self _updateActiveOverrideAfterScheduleChange];
}

- (void)setStartTime:(id)a3 endTime:(id)a4 forDay:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(STBlueprint *)self schedule];
  [v10 setStartTime:v9 endTime:v8 forDay:a5];

  [(STBlueprint *)self setIsDirty:1];

  [(STBlueprint *)self _updateActiveOverrideAfterScheduleChange];
}

- (void)disableDowntimeForDay:(unint64_t)a3
{
  v5 = [(STBlueprint *)self schedule];
  [v5 setStartTime:0 endTime:0 forDay:a3];

  [(STBlueprint *)self setIsDirty:1];

  [(STBlueprint *)self _updateActiveOverrideAfterScheduleChange];
}

- (void)_updateActiveOverrideAfterScheduleChange
{
  v3 = [[STBlueprintBackedDowntimeOverrideModifier alloc] initWithDowntimeBlueprint:self];
  v7 = 0;
  v4 = [STDowntimeOverrideUpdater updateActiveOverrideOnBlueprintNow:self usingModifier:v3 error:&v7];
  v5 = v7;
  if (!v4)
  {
    v6 = +[STLog blueprint];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint(Downtime) _updateActiveOverrideAfterScheduleChange];
    }
  }
}

- (id)activeOverride
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(STBlueprint *)self override];
  v3 = v2;
  if (!v2 || ([v2 isTombstoned] & 1) != 0 || objc_msgSend(v3, "isDeleted"))
  {
    v4 = +[STLog blueprint];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1B831F000, v4, OS_LOG_TYPE_INFO, "No active override for downtime", &v9, 2u);
    }

    v5 = 0;
  }

  else
  {
    v8 = [v3 managedObjectContext];
    v5 = [STDowntimeOverrideTransformer downtimeOverrideFromCoreDowntimeOverride:v3 inContext:v8];

    v4 = +[STLog blueprint];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1B831F000, v4, OS_LOG_TYPE_DEFAULT, "Got active override for downtime: %@", &v9, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_applyOnDemandDowntimeStateChange:(int64_t)a3 withFixedDuration:(double)a4 atDate:(id)a5 inCalendar:(id)a6 error:(id *)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = STUTCErasedDateFromDate(a5, v12);
  v14 = [v12 copy];

  v15 = STUTCTimeZone();
  [v14 setTimeZone:v15];

  v16 = +[STLog blueprint];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v17 = @"Enable";
    }

    else
    {
      v17 = @"Disable";
    }

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v25 = 138412802;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&dword_1B831F000, v16, OS_LOG_TYPE_DEFAULT, "Applying on-demand state change: %@, for fixed duration: %@, at: %@", &v25, 0x20u);
  }

  v19 = [STDowntimeOverrideBuilder createFixedDurationOverrideWithInterval:a3 == 1 state:v13 creationDate:v14 calendar:a4];
  v20 = [[STBlueprintBackedDowntimeOverrideModifier alloc] initWithDowntimeBlueprint:self];
  v21 = [(STBlueprintBackedDowntimeOverrideModifier *)v20 applyDowntimeOverride:v19 error:a7];

  if (v21)
  {
    v22 = [(STBlueprint *)self _downtimeConfigurationAtDate:v13 inCalendar:v14];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)_applyAutomaticOnDemandDowntimeStateChange:(int64_t)a3 atDate:(id)a4 inCalendar:(id)a5 error:(id *)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = STUTCErasedDateFromDate(a4, v10);
  v12 = [v10 copy];

  v13 = STUTCTimeZone();
  [v12 setTimeZone:v13];

  v14 = [(STBlueprint *)self _downtimeConfigurationAtDate:v11 inCalendar:v12];
  if (+[STBlueprint _isStateChangeValid:forState:](STBlueprint, "_isStateChangeValid:forState:", a3, [v14 currentState]))
  {
    v15 = +[STLog blueprint];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"Enable";
      if (!a3)
      {
        v16 = @"Disable";
      }

      v24 = 138412546;
      v25 = v16;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_1B831F000, v15, OS_LOG_TYPE_DEFAULT, "Applying on-demand (automatic duration) state change: %@ at: %@", &v24, 0x16u);
    }

    v17 = [(STBlueprint *)self schedule];
    v18 = [STDowntimeOverrideBuilder createAutomaticOverrideWithState:a3 == 1 schedule:v17 creationDate:v11 calendar:v12];

    v19 = [[STBlueprintBackedDowntimeOverrideModifier alloc] initWithDowntimeBlueprint:self];
    v20 = [(STBlueprintBackedDowntimeOverrideModifier *)v19 applyDowntimeOverride:v18 error:a6];

    if (v20)
    {
      v21 = [(STBlueprint *)self _downtimeConfigurationAtDate:v11 inCalendar:v12];
      [(STBlueprint *)self _reportCoreAnalyticsEventForDowntimeOverride:v18 currentDate:v11];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    if (a6)
    {
      *a6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:1 userInfo:0];
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (BOOL)_isStateChangeValid:(int64_t)a3 forState:(int64_t)a4
{
  v4 = a3 == 0;
  v5 = a3 == 1;
  v6 = a3 == 0;
  if (a4 != 4)
  {
    v6 = a3 == 0;
  }

  if (a4 != 3)
  {
    v5 = v6;
  }

  if (a4 != 2)
  {
    v4 = v5;
  }

  v7 = a3 == 1;
  v8 = a3 == 1;
  if (a4 != 1)
  {
    v8 = v4;
  }

  if (a4)
  {
    v7 = v8;
  }

  if (a4 <= 1)
  {
    return v7;
  }

  return v4;
}

+ (id)_downtimeForUser:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 managingOrganization];
  if (v7)
  {
    v8 = [v6 dsid];
    v9 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v8 ofType:@"downtime" fromOrganization:v7];

    v22 = 0;
    v10 = [v9 execute:&v22];
    v11 = v22;
    if (v10)
    {
      if ([v10 count] >= 2)
      {
        v12 = +[STLog persistence];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[STBlueprint(Downtime) _downtimeForUser:inContext:error:];
        }
      }

      v13 = [v10 firstObject];
      v14 = v13;
      if (v13)
      {
        v14 = v13;
        v15 = v14;
      }

      else
      {
        v18 = +[STLog blueprint];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [v6 dsid];
          *buf = 138412290;
          v24 = v19;
          _os_log_impl(&dword_1B831F000, v18, OS_LOG_TYPE_INFO, "User has no downtime: %@", buf, 0xCu);
        }

        v15 = 0;
      }
    }

    else
    {
      v14 = +[STLog blueprint];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(Downtime) _downtimeForUser:inContext:error:];
      }

      v15 = 0;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
    v16 = +[STLog persistence];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
    }

    if (a5)
    {
      v17 = v11;
      v15 = 0;
      *a5 = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)applyOnDemandDowntimeStateChange:(int64_t)a3 withFixedDuration:(double)a4 error:(id *)a5
{
  v9 = [MEMORY[0x1E695DF00] now];
  v10 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v11 = [(STBlueprint *)self _applyOnDemandDowntimeStateChange:a3 withFixedDuration:v9 atDate:v10 inCalendar:a5 error:a4];

  return v11;
}

- (BOOL)removeFixedDurationOnDemandDowntimeWithError:(id *)a3
{
  v5 = +[STLog blueprint];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Removing fixed duration on-demand downtime", v11, 2u);
  }

  v6 = [(STBlueprint *)self activeOverride];
  v7 = v6;
  if (v6 && [v6 type] == 1)
  {
    v8 = [[STBlueprintBackedDowntimeOverrideModifier alloc] initWithDowntimeBlueprint:self];
    v9 = [(STBlueprintBackedDowntimeOverrideModifier *)v8 removeDowntimeOverrideWithError:a3];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)applyAutomaticOnDemandDowntimeStateChange:(int64_t)a3 error:(id *)a4
{
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v9 = [(STBlueprint *)self _applyAutomaticOnDemandDowntimeStateChange:a3 atDate:v7 inCalendar:v8 error:a4];

  return v9;
}

- (id)applyScheduleStateChange:(int64_t)a3 error:(id *)a4
{
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v9 = [(STBlueprint *)self _applyScheduleStateChange:a3 atDate:v7 inCalendar:v8 error:a4];

  return v9;
}

+ (id)applyOnDemandDowntimeStateChange:(int64_t)a3 withFixedDuration:(double)a4 forUserID:(id)a5 context:(id)a6 error:(id *)a7
{
  v10 = [STBlueprint _fetchOrCreateDowntimeForUserID:a5 inContext:a6 error:a7];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 applyOnDemandDowntimeStateChange:a3 withFixedDuration:a7 error:a4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)removeFixedDurationOnDemandDowntimeForUserID:(id)a3 context:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [STBlueprint _userForUserID:a3 inContext:v7 error:a5];
  v9 = [STBlueprint _downtimeForUser:v8 inContext:v7 error:a5];

  if (v9)
  {
    v10 = [v9 removeFixedDurationOnDemandDowntimeWithError:a5];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (id)applyAutomaticOnDemandDowntimeStateChange:(int64_t)a3 forUserID:(id)a4 context:(id)a5 error:(id *)a6
{
  v8 = [STBlueprint _fetchOrCreateDowntimeForUserID:a4 inContext:a5 error:a6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 applyAutomaticOnDemandDowntimeStateChange:a3 error:a6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)applyScheduleStateChange:(int64_t)a3 forUserID:(id)a4 context:(id)a5 error:(id *)a6
{
  v8 = [STBlueprint _fetchOrCreateDowntimeForUserID:a4 inContext:a5 error:a6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 applyScheduleStateChange:a3 error:a6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_reportCoreAnalyticsEventForDowntimeOverride:(id)a3 currentDate:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v20 state];
  v8 = [(STBlueprint *)self configurations];
  v9 = [v8 anyObject];

  v10 = [STBlueprint shouldUseGracePeriodForDowntimeOverride:v20 configuration:v9];
  v11 = [(STBlueprint *)self schedule];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 enabled];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v20 calendar];
  v15 = [v14 component:32 fromDate:v6];

  v16 = [(STBlueprint *)self users];
  v17 = [v16 anyObject];
  v18 = [v17 isManaged];

  v19 = [[STDowntimeOverrideCoreAnalyticsEvent alloc] initWithDowntimeEnabled:v7 == 1 gracePeriodUsed:v10 scheduleEnabled:v13 hourOfDay:v15 userIsManaged:v18];
  [STCoreAnalyticsReporter reportEvent:v19];
}

+ (id)_fetchOrCreateDowntimeForUserID:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [STBlueprint _userForUserID:a3 inContext:v8 error:a5];
  v10 = [STBlueprint _downtimeForUser:v9 inContext:v8 error:a5];

  if (!v10)
  {
    v11 = [v9 isManaged];
    v12 = +[STBlueprint defaultStartTime];
    v13 = +[STBlueprint defaultEndTime];
    v10 = [a1 _updatedDowntimeForUser:v9 startTime:v12 endTime:v13 scheduleByWeekdayIndex:0 enabled:0 behaviorType:v11 error:a5];
  }

  v14 = v10;

  return v14;
}

+ (id)_userForUserID:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 dsid];
  v15 = 0;
  v10 = [STCoreUser fetchUserWithDSID:v9 inContext:v8 error:&v15];

  v11 = v15;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = +[STLog blueprint];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      +[STBlueprint(Downtime) _userForUserID:inContext:error:];
    }

    if (a5)
    {
      *a5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:11 userInfo:0];
    }
  }

  return v10;
}

+ (id)_updatedDowntimeForUser:(id)a3 startTime:(id)a4 endTime:(id)a5 scheduleByWeekdayIndex:(id)a6 enabled:(BOOL)a7 behaviorType:(unint64_t)a8 error:(id *)a9
{
  v14 = a9;
  v55[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v52 = a6;
  if (v52 || v16 && v17)
  {
    v18 = [v15 managingOrganization];
    if (v18)
    {
      v49 = a8;
      v51 = v17;
      v19 = [v15 managedObjectContext];
      v20 = [v15 dsid];
      v21 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v20 ofType:@"downtime" fromOrganization:v18];

      v53 = 0;
      v50 = v21;
      v22 = [v21 execute:&v53];
      v23 = v53;
      if (v22)
      {
        if ([v22 count] >= 2)
        {
          v24 = +[STLog persistence];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            +[STBlueprint(Downtime) _downtimeForUser:inContext:error:];
          }
        }

        v25 = [v22 firstObject];
        if (!v25)
        {
          v25 = [a1 _createDowntimeForUser:v15 organization:v18 context:v19];
        }

        v26 = [v25 schedule];
        if (!v26)
        {
          v26 = [[STBlueprintSchedule alloc] initWithContext:v19];
          [MEMORY[0x1E696AD98] numberWithDouble:300.0];
          v28 = v27 = v16;
          [(STBlueprintSchedule *)v26 setNotificationTimeInterval:v28];

          v16 = v27;
          v14 = a9;
          [(STBlueprintSchedule *)v26 setEnabled:0];
          [v25 setSchedule:v26];
        }

        v48 = v16;
        v29 = [a1 _updatedScheduleFromSchedule:v26 withStartTime:v16 endTime:v51 scheduleByWeekdayIndex:v52 context:v19];

        v30 = [a1 _configurationForDowntime:v25 context:v19];
        v31 = [a1 _declarationForDowntime:v25 user:v15 configuration:v30 behaviorType:v49 context:v19 error:v14];
        if (v31 && [a1 _updateConfiguration:v30 withDeclaration:v31 context:v19 error:v14])
        {
          if (([v30 hasChanges] & 1) != 0 || (objc_msgSend(v29, "hasChanges") & 1) != 0 || objc_msgSend(v25, "hasChanges"))
          {
            [v25 setIsDirty:1];
          }

          v14 = v25;
        }

        else
        {
          v14 = 0;
        }

        v23 = v47;
        v16 = v48;
      }

      else
      {
        v34 = +[STLog persistence];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint(Downtime) _downtimeForUser:inContext:error:];
        }

        if (a9)
        {
          v35 = v23;
          v14 = 0;
          *a9 = v23;
        }
      }

      v17 = v51;
      goto LABEL_37;
    }

    v32 = +[STLog persistence];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      +[STBlueprint(Downtime) _updatedDowntimeForUser:startTime:endTime:scheduleByWeekdayIndex:enabled:behaviorType:error:];
    }

    if (!a9)
    {
      goto LABEL_37;
    }

    v33 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
LABEL_36:
    v14 = 0;
    *a9 = v33;
LABEL_37:

    goto LABEL_38;
  }

  v36 = +[STLog persistence];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
  {
    [(STBlueprint(Downtime) *)v36 _updatedDowntimeForUser:v37 startTime:v38 endTime:v39 scheduleByWeekdayIndex:v40 enabled:v41 behaviorType:v42 error:v43];
  }

  if (a9)
  {
    v44 = objc_alloc(MEMORY[0x1E696ABC0]);
    v54 = *MEMORY[0x1E696A578];
    v55[0] = @"Cannot create downtime without valid start/end time or schedule";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    v33 = [v44 initWithDomain:@"STErrorDomain" code:1 userInfo:v18];
    goto LABEL_36;
  }

LABEL_38:

  v45 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)_organizationIdentifierForUser:(id)a3 context:(id)a4
{
  v4 = a3;
  v5 = [v4 localUserDeviceState];
  v6 = &STOrganizationIdentifierFamily;
  if (v5)
  {
    v7 = v5;
    v8 = [v4 isManaged];

    if (!v8)
    {
      v6 = STOrganizationIdentifierPersonal;
    }
  }

  v9 = *v6;
  v10 = *v6;

  return v9;
}

+ (id)_userDSIDStringForUser:(id)a3 context:(id)a4
{
  v4 = a3;
  v5 = [v4 localUserDeviceState];
  if (v5 && (v6 = v5, v7 = [v4 isManaged], v6, !v7))
  {
    v9 = 0;
  }

  else
  {
    v8 = [v4 dsid];
    v9 = [v8 stringValue];
  }

  return v9;
}

+ (id)_createDowntimeForUser:(id)a3 organization:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [a1 _organizationIdentifierForUser:v8 context:v9];
  v12 = [a1 _userDSIDStringForUser:v8 context:v9];
  v13 = [[STBlueprint alloc] initWithContext:v9];

  [(STBlueprint *)v13 setType:@"downtime"];
  v14 = v11;
  v15 = v12;
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v15)
  {
    v17 = [v16 initWithFormat:@"%@_%@_%@", @"bedtime_activation", v14, v15];
  }

  else
  {
    v17 = [v16 initWithFormat:@"%@_%@", @"bedtime_activation", v14, v22];
  }

  v18 = v17;

  [(STBlueprint *)v13 setIdentifier:v18];
  [(STBlueprint *)v13 setOrganization:v10];

  v19 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [(STBlueprint *)v13 setUsers:v19];

  [(STBlueprint *)v13 setEnabled:0];
  v20 = objc_opt_new();
  [(STBlueprint *)v13 setCreationDate:v20];

  return v13;
}

+ (id)_updatedScheduleFromSchedule:(id)a3 withStartTime:(id)a4 endTime:(id)a5 scheduleByWeekdayIndex:(id)a6 context:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v14)
  {
    v16 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v16 maximumRangeOfUnit:512];
    v18 = v17;

    v19 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v18}];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __107__STBlueprint_Downtime___updatedScheduleFromSchedule_withStartTime_endTime_scheduleByWeekdayIndex_context___block_invoke;
    v21[3] = &unk_1E7CE6EC0;
    v22 = v14;
    v23 = v11;
    [v19 enumerateIndexesUsingBlock:v21];
  }

  else if (v12 && v13)
  {
    [v11 setStartTime:v12 endTime:v13];
  }

  return v11;
}

void __107__STBlueprint_Downtime___updatedScheduleFromSchedule_withStartTime_endTime_scheduleByWeekdayIndex_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v9 = [v4 objectForKeyedSubscript:v5];

  v6 = *(a1 + 40);
  v7 = [v9 startTime];
  v8 = [v9 endTime];
  [v6 setStartTime:v7 endTime:v8 forDay:a2];
}

+ (id)_declarationModeForBehaviorType:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = MEMORY[0x1E69961A8];
  }

  else
  {
    v4 = MEMORY[0x1E69961B0];
  }

  a1 = *v4;
LABEL_6:

  return a1;
}

+ (id)_configurationForDowntime:(id)a3 context:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"objectID.URIRepresentation.absoluteString" ascending:1];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v9 = [v5 configurations];
  v10 = [v9 sortedArrayUsingDescriptors:v8];
  v11 = [v10 firstObject];

  if (!v11)
  {
    v11 = [[STBlueprintConfiguration alloc] initWithContext:v6];
    [(STBlueprintConfiguration *)v11 setBlueprint:v5];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_declarationForDowntime:(id)a3 user:(id)a4 configuration:(id)a5 behaviorType:(unint64_t)a6 context:(id)a7 error:(id *)a8
{
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = [a1 _organizationIdentifierForUser:v15 context:v13];
  v17 = [a1 _userDSIDStringForUser:v15 context:v13];

  v18 = [a1 _declarationModeForBehaviorType:a6];
  v19 = [v14 payloadPlist];

  v20 = MEMORY[0x1E6996240];
  if (!v19)
  {
    v23 = v16;
    v24 = v17;
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v24)
    {
      v26 = [v25 initWithFormat:@"%@_%@_%@", @"bedtime_configuration", v23, v24];
    }

    else
    {
      v26 = [v25 initWithFormat:@"%@_%@", @"bedtime_configuration", v23, v30];
    }

    v28 = v26;

    v21 = [v20 buildRequiredOnlyWithIdentifier:v28 withMode:v18];

    goto LABEL_12;
  }

  v31 = 0;
  v21 = [MEMORY[0x1E6996240] declarationForData:v19 error:&v31];
  v22 = v31;
  if (v21)
  {
    [v21 setPayloadMode:v18];

    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    +[STBlueprint(Downtime) _declarationForDowntime:user:configuration:behaviorType:context:error:];
    if (!a8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a8)
  {
LABEL_8:
    v27 = v22;
    *a8 = v22;
  }

LABEL_9:

  v21 = 0;
LABEL_12:

  return v21;
}

+ (BOOL)_updateConfiguration:(id)a3 withDeclaration:(id)a4 context:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = STAvailableVersion1CategoriesExcludingSystemCategories();
  [v9 setPayloadCategories:v10];

  v11 = STAvailableCategoriesExcludingSystemCategories();
  [v9 setPayloadCategoriesVersion2:v11];

  [v9 updateServerHash];
  v21 = 0;
  v12 = [v9 serializeAsDataWithError:&v21];
  v13 = v21;
  if (v12)
  {
    v14 = [v8 payloadPlist];
    v15 = [v14 isEqualToData:v12];

    if ((v15 & 1) == 0)
    {
      [v8 setPayloadPlist:v12];
      v16 = [v9 declarationIdentifier];
      [v8 setIdentifier:v16];

      v17 = [v9 declarationType];
      [v8 setType:v17];
    }
  }

  else
  {
    v18 = +[STLog persistence];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      +[STBlueprint(Downtime) _updateConfiguration:withDeclaration:context:error:];
    }

    if (a6)
    {
      v19 = v13;
      *a6 = v13;
    }
  }

  return v12 != 0;
}

+ (NSDateComponents)defaultStartTime
{
  v2 = objc_opt_new();
  [v2 setHour:22];
  [v2 setMinute:0];

  return v2;
}

+ (NSDateComponents)defaultEndTime
{
  v2 = objc_opt_new();
  [v2 setHour:7];
  [v2 setMinute:0];

  return v2;
}

- (id)_applyScheduleStateChange:(int64_t)a3 atDate:(id)a4 inCalendar:(id)a5 error:(id *)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = STUTCErasedDateFromDate(a4, v10);
  v12 = [v10 copy];

  v13 = STUTCTimeZone();
  [v12 setTimeZone:v13];

  v14 = [(STBlueprint *)self schedule];
  v15 = +[STLog blueprint];
  v16 = v15;
  if (!v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(STBlueprint(Downtime) *)a3 _applyScheduleStateChange:v16 atDate:v19 inCalendar:v20 error:v21, v22, v23, v24];
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"Enable";
    if (!a3)
    {
      v17 = @"Disable";
    }

    *buf = 138412546;
    v40 = v17;
    v41 = 2112;
    v42 = v11;
    _os_log_impl(&dword_1B831F000, v16, OS_LOG_TYPE_DEFAULT, "Appying schedule state change: %@ at: %@", buf, 0x16u);
  }

  if (a3)
  {
    if (a3 == 1 && ([v14 enabled] & 1) == 0)
    {
      v18 = 1;
      goto LABEL_15;
    }

LABEL_26:
    v31 = [[STBlueprintBackedDowntimeOverrideModifier alloc] initWithDowntimeBlueprint:self];
    v32 = [(STBlueprint *)self schedule];
    v37 = 0;
    v33 = [STDowntimeOverrideUpdater updateActiveOverrideUsingModifier:v31 byRecomputingFromSchedule:v32 atDate:v11 inCalendar:v12 error:&v37];
    v16 = v37;

    if (v33)
    {
      v25 = [(STBlueprint *)self _downtimeConfigurationAtDate:v11 inCalendar:v12];
    }

    else if (a6)
    {
      v34 = v16;
      v25 = 0;
      *a6 = v16;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_32;
  }

  if (![v14 enabled])
  {
    goto LABEL_26;
  }

  v18 = 0;
LABEL_15:
  [v14 setEnabled:v18];
  [(STBlueprint *)self setEnabled:v18];
  [(STBlueprint *)self setIsDirty:1];
  v16 = [v14 managedObjectContext];
  if (![v16 hasChanges])
  {
    v27 = 0;
    goto LABEL_23;
  }

  v38 = 0;
  v26 = [v16 save:&v38];
  v27 = v38;
  if (v26)
  {
LABEL_23:
    v30 = +[STLog blueprint];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B831F000, v30, OS_LOG_TYPE_DEFAULT, "Saved downtime schedule state change", buf, 2u);
    }

    goto LABEL_26;
  }

  v28 = +[STLog persistence];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [STBlueprint(Downtime) _applyScheduleStateChange:atDate:inCalendar:error:];
  }

  if (a6)
  {
    v29 = v27;
    *a6 = v27;
  }

LABEL_12:
  v25 = 0;
LABEL_32:

  v35 = *MEMORY[0x1E69E9840];

  return v25;
}

- (NSString)downtimeScheduleText
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(STBlueprint *)self schedule];
  v4 = [v3 scheduleRepresentation];

  v5 = [v4 simpleSchedule];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v5 startTime];
    v8 = [v5 endTime];
    v9 = [v6 simpleScheduleTimeRangeWithStartTimeComponents:v7 endTimeComponents:v8];
  }

  else
  {
    v24 = v4;
    v10 = [v4 customScheduleItems];
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "day")}];
          [v11 setObject:v17 forKeyedSubscript:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }

    v19 = objc_opt_class();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __45__STBlueprint_Downtime__downtimeScheduleText__block_invoke;
    v28[3] = &unk_1E7CE6EE8;
    v29 = v11;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __45__STBlueprint_Downtime__downtimeScheduleText__block_invoke_2;
    v25[3] = &unk_1E7CE6F10;
    v20 = v29;
    v26 = v20;
    v27 = self;
    v9 = [v19 scheduleTextWithLocale:0 weekdayScheduleComparator:v28 scheduleTimeGetter:v25];
    if (!v9)
    {
      v21 = +[STScreenTimeCoreBundle bundle];
      v9 = [v21 localizedStringForKey:@"ScheduleOff" value:&stru_1F3040980 table:0];
    }

    v4 = v24;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __45__STBlueprint_Downtime__downtimeScheduleText__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2 - 1];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 - 1];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = [v10 startTime];
    v12 = [v7 startTime];
    if ([v11 isEqual:v12])
    {
      v13 = [v10 endTime];
      v14 = [v7 endTime];
      v15 = [v13 isEqual:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __45__STBlueprint_Downtime__downtimeScheduleText__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2 - 1];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = objc_opt_class();
    v8 = [v5 startTime];
    v9 = [v5 endTime];
    v10 = [v7 customScheduleTimeRangeWithLocale:0 startTimeComponents:v8 endTimeComponents:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)customScheduleTimeRangeWithLocale:(id)a3 startTimeComponents:(id)a4 endTimeComponents:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = v10;
  if (v7)
  {
    [v10 setLocale:v7];
  }

  [v11 setTimeStyle:1];
  [v11 setDateStyle:0];
  [v11 setFormattingContext:1];
  v12 = objc_opt_new();
  v13 = v12;
  if (v7)
  {
    [v12 setLocale:v7];
  }

  [v13 setFormattingContext:1];
  [v13 setLocalizedDateFormatFromTemplate:@"j"];
  v14 = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = [v14 dateFromComponents:v8];
  v37 = v14;
  v39 = v9;
  v16 = [v14 dateFromComponents:v9];
  v17 = objc_opt_new();
  v18 = v17;
  if (v7)
  {
    [v17 setLocale:v7];
  }

  [v18 setLocalizedDateFormatFromTemplate:@"a"];
  v41 = [v18 stringFromDate:v15];
  v40 = [v18 stringFromDate:v16];
  v19 = MEMORY[0x1E696AB78];
  if (v7)
  {
    v20 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:v7];
  }

  else
  {
    v21 = [MEMORY[0x1E695DF58] currentLocale];
    v20 = [v19 dateFormatFromTemplate:@"j" options:0 locale:v21];
  }

  v38 = v8;
  if ([v20 containsString:@"H"])
  {

LABEL_13:
    v23 = 0;
    v24 = 1;
    goto LABEL_15;
  }

  v22 = [v20 containsString:@"k"];

  if (v22)
  {
    goto LABEL_13;
  }

  v25 = [v8 minute];
  v24 = 0;
  v23 = v25 == 0;
LABEL_15:
  if ([v41 isEqualToString:v40])
  {
    v26 = objc_opt_new();
    v27 = v26;
    if (v7)
    {
      [v26 setLocale:v7];
    }

    [v27 setFormattingContext:1];
    if (v23)
    {
      v28 = @"J";
    }

    else
    {
      v28 = @"Jmm";
    }

    [v27 setLocalizedDateFormatFromTemplate:v28];
    v29 = [v27 stringFromDate:v15];
  }

  else
  {
    if (v23)
    {
      v30 = v13;
    }

    else
    {
      v30 = v11;
    }

    v29 = [v30 stringFromDate:v15];
  }

  v31 = v11;
  if ((v24 & 1) == 0)
  {
    if ([v39 minute])
    {
      v31 = v11;
    }

    else
    {
      v31 = v13;
    }
  }

  v32 = [v31 stringFromDate:v16];
  v33 = +[STScreenTimeCoreBundle bundle];
  v34 = [v33 localizedStringForKey:@"TimeRangeFormat" value:&stru_1F3040980 table:0];

  v35 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v34, v29, v32];

  return v35;
}

+ (id)simpleScheduleTimeRangeWithStartTimeComponents:(id)a3 endTimeComponents:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = objc_opt_new();
  v9 = [v7 startOfDayForDate:v8];

  if ([v7 date:v9 matchesComponents:v5])
  {
    v10 = v9;
  }

  else
  {
    v10 = [v7 nextDateAfterDate:v9 matchingComponents:v5 options:512];
  }

  v11 = v10;
  if ([v7 date:v9 matchesComponents:v6])
  {
    v12 = v9;
  }

  else
  {
    v12 = [v7 nextDateAfterDate:v9 matchingComponents:v6 options:512];
  }

  v13 = v12;
  v14 = objc_opt_new();
  [v14 setDateStyle:0];
  [v14 setTimeStyle:1];
  v15 = [v14 stringFromDate:v11 toDate:v13];

  return v15;
}

+ (BOOL)saveManagedUserBlueprintForUser:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 createManagedUserBlueprintForUser:v6 error:a4];
  if (!v7)
  {
    v15 = +[STLog blueprint];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(STBlueprint(ManagedUser) *)v15 saveManagedUserBlueprintForUser:v16 error:v17, v18, v19, v20, v21, v22];
    }

    v12 = 0;
    if (a4)
    {
      goto LABEL_11;
    }

LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

  v8 = [v6 managedObjectContext];
  v9 = [v8 hasChanges];

  if (!v9)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v10 = [v6 managedObjectContext];
  v25 = 0;
  v11 = [v10 save:&v25];
  v12 = v25;

  if (v11)
  {
LABEL_13:
    v23 = 1;
    goto LABEL_15;
  }

  v13 = +[STLog persistence];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    +[STBlueprint(ManagedUser) saveManagedUserBlueprintForUser:error:];
  }

  if (!a4)
  {
    goto LABEL_14;
  }

  v14 = v12;
LABEL_11:
  v23 = 0;
  *a4 = v12;
LABEL_15:

  return v23;
}

+ (id)createManagedUserBlueprintForUser:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 managingOrganization];
  if (v6)
  {
    v7 = [v5 dsid];
    v8 = [v5 managedUserActivationIdentifier];
    v9 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v7 ofType:@"managed-user" withIdentifier:v8 fromOrganization:v6];

    v54 = 0;
    v10 = [v9 execute:&v54];
    v11 = v54;
    if (v10)
    {
      v50 = v9;
      if ([v10 count] >= 2)
      {
        v12 = +[STLog persistence];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
        }
      }

      v45 = a4;
      v51 = [v5 managedObjectContext];
      v49 = v10;
      v13 = [v10 firstObject];
      if (!v13)
      {
        v13 = [[STBlueprint alloc] initWithContext:v51];
        [(STBlueprint *)v13 setType:@"managed-user"];
        v14 = [v5 managedUserActivationIdentifier];
        [(STBlueprint *)v13 setIdentifier:v14];

        [(STBlueprint *)v13 setOrganization:v6];
        v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v5, 0}];
        [(STBlueprint *)v13 setUsers:v15];
      }

      [(STBlueprint *)v13 setEnabled:1];
      [(STBlueprint *)v13 setIsDirty:1];
      v16 = [v5 iCloudLogoutConfigurationIdentifier];
      v17 = [(STBlueprint *)v13 configurations];
      v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v16];
      v19 = [v17 filteredSetUsingPredicate:v18];
      v20 = [v19 anyObject];

      if (!v20)
      {
        v20 = [[STBlueprintConfiguration alloc] initWithContext:v51];
        [(STBlueprintConfiguration *)v20 setIdentifier:v16];
        [(STBlueprintConfiguration *)v20 setBlueprint:v13];
      }

      v48 = v16;
      v21 = [MEMORY[0x1E6996250] buildRequiredOnlyWithIdentifier:v16 withMode:*MEMORY[0x1E69961C8]];
      v53 = v11;
      v22 = [v21 serializeAsDataWithError:&v53];
      v23 = v53;

      v46 = v22;
      v47 = v21;
      if (v22)
      {
        [(STBlueprintConfiguration *)v20 setPayloadPlist:v22];
        v24 = [v21 declarationType];
        [(STBlueprintConfiguration *)v20 setType:v24];

        v25 = [v5 automaticDateTimeConfigurationIdentifier];
        v26 = [(STBlueprint *)v13 configurations];
        v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v25];
        v28 = [v26 filteredSetUsingPredicate:v27];
        v29 = [v28 anyObject];

        if (!v29)
        {
          v29 = [[STBlueprintConfiguration alloc] initWithContext:v51];
          [(STBlueprintConfiguration *)v29 setIdentifier:v25];
          [(STBlueprintConfiguration *)v29 setBlueprint:v13];
        }

        v44 = v25;
        v30 = [MEMORY[0x1E69962E8] buildRequiredOnlyWithIdentifier:v25];
        [v30 setPayloadForceAutomaticDateAndTime:MEMORY[0x1E695E118]];
        [v30 updateServerHash];
        v52 = v23;
        v31 = [v30 serializeAsDataWithError:&v52];
        v11 = v52;

        if (v31)
        {
          [(STBlueprintConfiguration *)v29 setPayloadPlist:v31];
          v32 = [v30 declarationType];
          [(STBlueprintConfiguration *)v29 setType:v32];

          v33 = v13;
        }

        else
        {
          v40 = +[STLog persistence];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
          }

          if (v45)
          {
            v41 = v11;
            v33 = 0;
            *v45 = v11;
          }

          else
          {
            v33 = 0;
          }
        }

        v42 = v48;

        v10 = v49;
        v9 = v50;
      }

      else
      {
        v38 = +[STLog persistence];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
        }

        v10 = v49;
        v9 = v50;
        if (v45)
        {
          v39 = v23;
          v33 = 0;
          *v45 = v23;
        }

        else
        {
          v33 = 0;
        }

        v11 = v23;
        v42 = v48;
      }
    }

    else
    {
      v36 = +[STLog persistence];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
      }

      if (a4)
      {
        v37 = v11;
        v33 = 0;
        *a4 = v11;
      }

      else
      {
        v33 = 0;
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
    v34 = +[STLog persistence];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
    }

    if (a4)
    {
      v35 = v11;
      v33 = 0;
      *a4 = v11;
    }

    else
    {
      v33 = 0;
    }
  }

  return v33;
}

+ (BOOL)deleteManagedUserBlueprintForUser:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v7 = [a1 disableManagedUserBlueprintForUser:v6 error:&v20];
  v8 = v20;
  if (v7)
  {
    v9 = [v6 managedObjectContext];
    v10 = [v9 hasChanges];

    if (!v10)
    {
      v14 = 1;
      goto LABEL_17;
    }

    v11 = [v6 managedObjectContext];
    v19 = v8;
    v12 = [v11 save:&v19];
    v13 = v19;

    if (v12)
    {
      v14 = 1;
LABEL_16:
      v8 = v13;
      goto LABEL_17;
    }

    v17 = +[STLog persistence];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint(ManagedUser) deleteManagedUserBlueprintForUser:error:];
    }

    if (!a4)
    {
      v14 = 0;
      goto LABEL_16;
    }

    v8 = v13;
  }

  else
  {
    v15 = +[STLog persistence];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint(ManagedUser) deleteManagedUserBlueprintForUser:error:];
    }

    if (!a4)
    {
      v14 = 0;
      goto LABEL_17;
    }
  }

  v16 = v8;
  v14 = 0;
  *a4 = v8;
LABEL_17:

  return v14;
}

+ (BOOL)disableManagedUserBlueprintForUser:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 managingOrganization];
  if (v6)
  {
    v7 = [v5 dsid];
    v8 = [v5 managedUserActivationIdentifier];
    v9 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v7 ofType:@"managed-user" withIdentifier:v8 fromOrganization:v6];

    v21 = 0;
    v10 = [v9 execute:&v21];
    v11 = v21;
    v12 = v10 != 0;
    if (v10)
    {
      v13 = [v10 count];
      if (v13)
      {
        if (v13 != 1)
        {
          v14 = +[STLog persistence];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
          }
        }

        v15 = [v10 firstObject];
        [v15 setEnabled:0];
        [v15 setIsDirty:1];
      }
    }

    else
    {
      v18 = +[STLog persistence];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(ManagedUser) disableManagedUserBlueprintForUser:error:];
      }

      if (a4)
      {
        v19 = v11;
        *a4 = v11;
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
    v16 = +[STLog persistence];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
    }

    if (a4)
    {
      v17 = v11;
      v12 = 0;
      *a4 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (BOOL)disableRestrictionsBlueprintForUser:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 dsid];
  v7 = [v5 managingOrganization];
  if (v7)
  {
    v8 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v6 ofType:@"restrictions" fromOrganization:v7];
    v26 = 0;
    v9 = [v8 execute:&v26];
    v10 = v26;
    if (v9)
    {
      v11 = [v5 managedObjectContext];
      v12 = [v9 firstObject];
      [v12 setIsDirty:1];
      [v12 setEnabled:0];
      v13 = +[STLog persistence];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [STBlueprint(Restrictions) disableRestrictionsBlueprintForUser:v13 error:?];
      }

      if ([v11 hasChanges])
      {
        v24 = v6;
        v25 = v10;
        v14 = [v11 save:&v25];
        v15 = v25;

        if (v14)
        {
          v16 = 1;
        }

        else
        {
          v21 = +[STLog persistence];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            +[STBlueprint(Restrictions) disableRestrictionsBlueprintForUser:error:];
          }

          if (a4)
          {
            v22 = v15;
            v16 = 0;
            *a4 = v15;
          }

          else
          {
            v16 = 0;
          }
        }

        v10 = v15;
        v6 = v24;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v19 = +[STLog persistence];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(Restrictions) disableRestrictionsBlueprintForUser:error:];
      }

      if (a4)
      {
        v20 = v10;
        v16 = 0;
        *a4 = v10;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
    v17 = +[STLog persistence];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
    }

    if (a4)
    {
      v18 = v10;
      v16 = 0;
      *a4 = v10;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)_webFilterBlacklistStringsForURL:(id)a3
{
  v14[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 absoluteString];
  v5 = [v4 lowercaseString];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 scheme];

  v8 = [v6 stringWithFormat:@"%@://", v7];
  v9 = [v4 stringByReplacingOccurrencesOfString:v8 withString:&stru_1F3040980];

  v10 = [v9 lowercaseString];
  v14[0] = v4;
  v14[1] = v5;
  v14[2] = v9;
  v14[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)permitWebFilterURL:(id)a3 pageTitle:(id)a4 error:(id *)a5
{
  v46 = a5;
  v53 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v7 = a4;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = [(STBlueprint *)self configurations];
  v9 = [v8 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = *v49;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v49 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v48 + 1) + 8 * i);
      v14 = [v13 type];
      v15 = [v14 isEqualToString:@"system.webcontentfilter.basic"];

      if (v15)
      {
        v16 = v13;

        if (!v16)
        {
          goto LABEL_20;
        }

        v17 = [v16 cemConfiguration];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v17 payloadRestrictWeb], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, (v19))
        {
          v20 = [v17 payloadUseContentFilter];
          v21 = [v20 BOOLValue];

          v22 = [v17 payloadWhiteListEnabled];
          v23 = [v22 BOOLValue];

          v24 = v47;
          v25 = v7;
          if (v21 && (v23 & 1) == 0)
          {
            v26 = [v17 payloadFilterBlackList];
            if (v26)
            {
              v27 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v26];
              v28 = [(STBlueprint *)self _webFilterBlacklistStringsForURL:v47];
              [v27 removeObjectsInArray:v28];
              v29 = [v27 array];
              [v17 setPayloadFilterBlackList:v29];
            }

            v30 = [v17 payloadFilterWhiteList];
            v31 = v30;
            v32 = MEMORY[0x1E695E0F0];
            if (v30)
            {
              v32 = v30;
            }

            v33 = v32;

            v34 = [v47 host];
            v35 = [v33 arrayByAddingObject:v34];

            [v17 setPayloadFilterWhiteList:v35];
LABEL_37:

            [v17 updateServerHash];
            [v16 setCemConfiguration:v17];
            v36 = 1;
            [(STBlueprint *)self setIsDirty:1];
LABEL_38:

            goto LABEL_39;
          }

          if (!(v21 & 1 | ((v23 & 1) == 0)))
          {
            v26 = objc_opt_new();
            v39 = [v47 absoluteString];
            [v26 setPayloadAddress:v39];

            [v26 setPayloadPageTitle:v25];
            v40 = [v17 payloadSiteWhiteList];
            v41 = v40;
            v42 = MEMORY[0x1E695E0F0];
            if (v40)
            {
              v42 = v40;
            }

            v43 = v42;

            v34 = [v43 arrayByAddingObject:v26];

            [v17 setPayloadSiteWhiteList:v34];
            goto LABEL_37;
          }

          v38 = +[STLog blueprint];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [STBlueprint(Restrictions) permitWebFilterURL:pageTitle:error:];
          }
        }

        else
        {
          v37 = +[STLog blueprint];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [STBlueprint(Restrictions) permitWebFilterURL:pageTitle:error:];
          }

          v24 = v47;
          v25 = v7;
        }

        if (v46)
        {
          [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:1 userInfo:0];
          *v46 = v36 = 0;
        }

        else
        {
          v36 = 0;
        }

        goto LABEL_38;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_9:

LABEL_20:
  if (v46)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:14 userInfo:0];
    *v46 = v36 = 0;
  }

  else
  {
    v36 = 0;
  }

  v24 = v47;
  v25 = v7;
LABEL_39:

  v44 = *MEMORY[0x1E69E9840];
  return v36;
}

+ (BOOL)saveRestrictionsBlueprintWithValuesForPresetRestrictions:(id)a3 forUser:(id)a4 error:(id *)a5
{
  v210 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v147 = a4;
  v7 = v6;
  v8 = objc_opt_new();
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v9 = v7;
  v10 = 0x1E7CE5000uLL;
  v144 = v9;
  obj = [v9 countByEnumeratingWithState:&v183 objects:v201 count:16];
  if (obj)
  {
    v164 = *v184;
    v149 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v184 != v164)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v183 + 1) + 8 * v11);
        v13 = [v12 componentsSeparatedByString:@"."];
        v14 = [v13 mutableCopy];

        v15 = [v14 lastObject];
        v16 = v15;
        [v14 removeLastObject];
        v17 = [v14 componentsJoinedByString:@"."];
        v18 = v17;

        v19 = v15;
        v20 = v17;
        v169 = [v9 objectForKeyedSubscript:v12];
        if (!v169)
        {
          v169 = [MEMORY[0x1E695DFB0] null];
        }

        if ([v20 isEqualToString:@"STCustomRestrictionConfiguration"])
        {
          if ([v19 isEqualToString:@"STCustomRestrictionCellularData"])
          {
            v199[0] = @"network.cellular.settings.allowAppCellularDataModification";
            v199[1] = @"network.cellular.settings.allowCellularPlanModification";
            v21 = v169;
            v200[0] = v169;
            v200[1] = v169;
            v22 = MEMORY[0x1E695DF20];
            v23 = v200;
            v24 = v199;
LABEL_23:
            v26 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:2];
            goto LABEL_24;
          }

          v21 = v169;
          if ([v19 isEqualToString:@"STCustomRestrictionSiriDictation"])
          {
            v197[0] = @"system.siri.allowAssistant";
            v197[1] = @"system.siri.allowDictation";
            v198[0] = v169;
            v198[1] = v169;
            v22 = MEMORY[0x1E695DF20];
            v23 = v198;
            v24 = v197;
            goto LABEL_23;
          }

          if ([v19 isEqualToString:@"STCustomRestrictionMathResults"])
          {
            v195[0] = @"system.siri.allowMathPaperSolving";
            v195[1] = @"system.siri.allowKeyboardMathSolving";
            v196[0] = v169;
            v196[1] = v169;
            v22 = MEMORY[0x1E695DF20];
            v23 = v196;
            v24 = v195;
            goto LABEL_23;
          }

          if (![v19 isEqualToString:@"STCustomRestrictionWebFilterState"])
          {
            v25 = [*(v10 + 3824) persistence];
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_14;
            }

            *buf = 138543618;
            v203 = v20;
            v204 = 2114;
            v205 = v19;
            v30 = v25;
            v31 = "Skipping unimplemented restriction %{public}@ %{public}@";
            goto LABEL_48;
          }

          v159 = v20;
          v28 = [v169 unsignedIntegerValue];
          if (v28)
          {
            v29 = v28;
            if (v28 == 2)
            {
              v157 = v19;
              v153 = [&unk_1F3059E08 mutableCopy];
              v32 = [MEMORY[0x1E69ADFB8] sharedConnection];
              v33 = [v32 defaultUserBookmarks];

              v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v33, "count")}];
              v187 = 0u;
              v188 = 0u;
              v189 = 0u;
              v190 = 0u;
              v35 = v33;
              v36 = [v35 countByEnumeratingWithState:&v187 objects:buf count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v188;
                do
                {
                  for (i = 0; i != v37; ++i)
                  {
                    if (*v188 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = *(*(&v187 + 1) + 8 * i);
                    v41 = MEMORY[0x1E69962D0];
                    v42 = [v40 URL];
                    v43 = [v42 absoluteString];
                    v44 = [v40 title];
                    v45 = [v41 buildWithAddress:v43 withPageTitle:v44];

                    [v34 addObject:v45];
                  }

                  v37 = [v35 countByEnumeratingWithState:&v187 objects:buf count:16];
                }

                while (v37);
              }

              v46 = [v34 copy];
              [v153 setObject:v46 forKeyedSubscript:@"system.webcontentfilter.basic.siteWhiteList"];

              v26 = [v153 copy];
              v9 = v144;
              v10 = 0x1E7CE5000;
              v8 = v149;
              v19 = v157;
            }

            else
            {
              if (v28 == 1)
              {
                v26 = &unk_1F3059DE0;
LABEL_46:
                v20 = v159;
                goto LABEL_24;
              }

              v47 = [*(v10 + 3824) persistence];
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                *buf = 67240192;
                LODWORD(v203) = v29;
                _os_log_error_impl(&dword_1B831F000, v47, OS_LOG_TYPE_ERROR, "Skipping unimplemented web filter state %{public}d", buf, 8u);
              }

              v26 = MEMORY[0x1E695E0F8];
            }

            v21 = v169;
            goto LABEL_46;
          }

          v26 = &unk_1F3059DB8;
          goto LABEL_46;
        }

        if ([v20 isEqualToString:@"system.gamecenter"] && objc_msgSend(v19, "isEqualToString:", @"allowedGameCenterOtherPlayerTypes"))
        {
          v25 = [*(v10 + 3824) persistence];
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
LABEL_14:

            v26 = MEMORY[0x1E695E0F8];
            v21 = v169;
            goto LABEL_24;
          }

          *buf = 138543618;
          v203 = v20;
          v204 = 2114;
          v205 = v19;
          v30 = v25;
          v31 = "Skipping unimplemented non-preset restriction %{public}@ %{public}@";
LABEL_48:
          _os_log_error_impl(&dword_1B831F000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);
          goto LABEL_14;
        }

        v193 = v12;
        v21 = v169;
        v27 = v169;
        if (!v169)
        {
          v161 = [MEMORY[0x1E695DFB0] null];
          v27 = v161;
        }

        v194 = v27;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
        if (!v169)
        {
        }

LABEL_24:
        [v8 addEntriesFromDictionary:v26];

        v11 = v11 + 1;
      }

      while (v11 != obj);
      v48 = [v9 countByEnumeratingWithState:&v183 objects:v201 count:16];
      obj = v48;
    }

    while (v48);
  }

  v49 = [v8 copy];
  v50 = [v147 dsid];
  v51 = v147;
  v52 = [v51 localUserDeviceState];

  v53 = &STOrganizationIdentifierFamily;
  if (v52)
  {
    v54 = [v51 familySettings];
    v55 = [v54 isManaged];

    if (!v55)
    {
      v53 = STOrganizationIdentifierPersonal;
    }
  }

  v56 = *v53;
  v143 = v51;

  v158 = objc_opt_new();
  v148 = objc_opt_new();
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  obja = v49;
  v152 = v56;
  v165 = [obja countByEnumeratingWithState:&v179 objects:v192 count:16];
  if (v165)
  {
    v162 = *v180;
    v150 = v50;
    do
    {
      v57 = 0;
      do
      {
        if (*v180 != v162)
        {
          objc_enumerationMutation(obja);
        }

        v58 = *(*(&v179 + 1) + 8 * v57);
        v59 = [obja objectForKeyedSubscript:v58];
        v60 = [MEMORY[0x1E695DFB0] null];

        if (v59 == v60)
        {

          v59 = 0;
        }

        v61 = v58;
        v62 = [v61 componentsSeparatedByString:@"."];
        v63 = [v62 mutableCopy];

        v64 = [v63 lastObject];
        v65 = v64;
        [v63 removeLastObject];
        v66 = [v63 componentsJoinedByString:@"."];
        v67 = v66;

        v170 = v64;
        v68 = v66;
        v69 = [*(v10 + 3824) persistence];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v203 = v61;
          v204 = 2114;
          v205 = v59;
          v206 = 2114;
          v207 = v56;
          v208 = 2112;
          v209 = v50;
          _os_log_impl(&dword_1B831F000, v69, OS_LOG_TYPE_DEFAULT, "Asked to change restriction %{public}@ value to %{public}@ for %{public}@.%@", buf, 0x2Au);
        }

        if ([v68 isEqualToString:@"STCustomRestrictionConfiguration"])
        {
          v70 = [*(v10 + 3824) persistence];
          if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_91;
          }

          *buf = 138543618;
          v203 = v68;
          v204 = 2114;
          v205 = v170;
          v71 = v70;
          v72 = "Skipping unimplemented restriction %{public}@ %{public}@";
LABEL_71:
          v73 = 22;
LABEL_72:
          _os_log_error_impl(&dword_1B831F000, v71, OS_LOG_TYPE_ERROR, v72, buf, v73);
          goto LABEL_91;
        }

        if ([v68 isEqualToString:@"STSBCapabilityConfiguration"])
        {
          v70 = [*(v10 + 3824) persistence];
          if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_91;
          }

          *buf = 138543618;
          v203 = v68;
          v204 = 2114;
          v205 = v170;
          v71 = v70;
          v72 = "Skipping unimplemented non-preset restriction %{public}@ %{public}@";
          goto LABEL_71;
        }

        if ([v68 isEqualToString:@"STMCFeatureConfiguration"])
        {
          v70 = [*(v10 + 3824) persistence];
          if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_91;
          }

          *buf = 138543618;
          v203 = v68;
          v204 = 2114;
          v205 = v170;
          v71 = v70;
          v72 = "Skipping non-preset restriction %{public}@ %{public}@";
          goto LABEL_71;
        }

        v74 = [v158 objectForKeyedSubscript:v68];
        if (v74)
        {
LABEL_88:
          v70 = v74;
          v85 = v170;
          v86 = v59;
          v87 = [v85 substringToIndex:1];
          v88 = [v85 substringWithRange:{1, objc_msgSend(v85, "length") - 1}];
          v201[0] = @"payload";
          v155 = v87;
          v89 = [v87 capitalizedString];
          v201[1] = v89;
          v201[2] = v88;
          v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v201 count:3];
          v91 = [v90 componentsJoinedByString:&stru_1F3040980];

          v10 = 0x1E7CE5000uLL;
          v92 = +[STLog persistence];
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v93 = objc_opt_class();
            *buf = 138412802;
            v203 = v93;
            v204 = 2112;
            v205 = v91;
            v206 = 2112;
            v207 = v86;
            _os_log_impl(&dword_1B831F000, v92, OS_LOG_TYPE_DEFAULT, "Setting CEM key %@.%@ to %@", buf, 0x20u);
          }

          [v70 setValue:v86 forKeyPath:v91];
          [v70 updateServerHash];

          [v158 setObject:v70 forKeyedSubscript:v68];
          [v148 addObject:v68];
          v50 = v150;
          v56 = v152;
          goto LABEL_91;
        }

        v75 = v68;
        v76 = v56;
        v77 = v50;
        v78 = [*(v10 + 3824) persistence];
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v203 = v75;
          _os_log_impl(&dword_1B831F000, v78, OS_LOG_TYPE_DEFAULT, "Creating new restriction configuration %{public}@", buf, 0xCu);
        }

        v79 = v75;
        v80 = v77;
        v81 = v76;
        if ([(__CFString *)v81 isEqualToString:@"personal"])
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"digital_health_restrictions", v79, v141];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", @"digital_health_restrictions", v80, v79];
        }
        v145 = ;
        v56 = v152;

        v154 = v81;
        if ([v79 isEqualToString:@"account.settings"])
        {
          v82 = MEMORY[0x1E69961E8];
          goto LABEL_85;
        }

        if ([v79 isEqualToString:@"application.settings"])
        {
          v82 = MEMORY[0x1E69961F8];
          goto LABEL_85;
        }

        if ([v79 isEqualToString:@"application.store"])
        {
          v82 = MEMORY[0x1E6996200];
          goto LABEL_85;
        }

        if ([v79 isEqualToString:@"legacy.restrictions.apps"])
        {
          v83 = v145;
          v74 = [MEMORY[0x1E6996218] buildRequiredOnlyWithIdentifier:v145];
          [v74 setPayloadBlacklistedAppBundleIDs:MEMORY[0x1E695E0F0]];
        }

        else
        {
          if ([v79 isEqualToString:@"media.settings"])
          {
            v82 = MEMORY[0x1E6996220];
LABEL_85:
            v83 = v145;
            v84 = [v82 buildRequiredOnlyWithIdentifier:v145];
LABEL_86:
            v74 = v84;
            goto LABEL_87;
          }

          if ([v79 isEqualToString:@"network.cellular.settings"])
          {
            v82 = MEMORY[0x1E6996228];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"passcode.settings"])
          {
            v82 = MEMORY[0x1E6996230];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.airdrop"])
          {
            v82 = MEMORY[0x1E69962B8];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.camera"])
          {
            v82 = MEMORY[0x1E69962D8];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.carplay"])
          {
            v82 = MEMORY[0x1E69962E0];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.donotdisturb"])
          {
            v82 = MEMORY[0x1E69962F0];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.gamecenter"])
          {
            v82 = MEMORY[0x1E69962F8];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.icloud"])
          {
            v82 = MEMORY[0x1E6996328];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.music"])
          {
            v82 = MEMORY[0x1E6996300];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.ratings"])
          {
            v82 = MEMORY[0x1E6996308];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.siri"])
          {
            v82 = MEMORY[0x1E6996310];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.tvprovider"])
          {
            v82 = MEMORY[0x1E6996318];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.webcontentfilter.basic"])
          {
            v83 = v145;
            v84 = [MEMORY[0x1E69962C8] buildRequiredOnlyWithIdentifier:v145 withRestrictWeb:MEMORY[0x1E695E110]];
            goto LABEL_86;
          }

          if ([v79 isEqualToString:@"system.web.tracking"])
          {
            v83 = v145;
            v74 = [MEMORY[0x1E6996320] buildRequiredOnlyWithIdentifier:v145];
            v56 = v152;
          }

          else
          {
            v94 = [*(v10 + 3824) persistence];
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v203 = v79;
              _os_log_error_impl(&dword_1B831F000, v94, OS_LOG_TYPE_ERROR, "Could not create new configuration for type %{public}@", buf, 0xCu);
            }

            v74 = 0;
            v10 = 0x1E7CE5000;
            v56 = v152;
            v83 = v145;
          }
        }

LABEL_87:

        v50 = v150;
        if (v74)
        {
          goto LABEL_88;
        }

        v70 = [*(v10 + 3824) persistence];
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v203 = v79;
          v71 = v70;
          v72 = "Skipping restriction where could not create configuration for type %{public}@";
          v73 = 12;
          goto LABEL_72;
        }

LABEL_91:

        ++v57;
      }

      while (v165 != v57);
      v95 = [obja countByEnumeratingWithState:&v179 objects:v192 count:16];
      v165 = v95;
    }

    while (v95);
  }

  if ([v148 count])
  {
    v96 = v143;
    v97 = [v143 managingOrganization];
    if (!v97)
    {
      v107 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
      v108 = v10;
      v101 = v107;
      v109 = [*(v108 + 3824) persistence];
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
      }

      if (a5)
      {
        v110 = v101;
        v106 = 0;
        *a5 = v101;
      }

      else
      {
        v106 = 0;
      }

      goto LABEL_179;
    }

    v98 = [*(v10 + 3824) persistence];
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
    {
      [STBlueprint(Restrictions) saveRestrictionsBlueprintWithValuesForPresetRestrictions:v97 forUser:v98 error:?];
    }

    v99 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v50 ofType:@"restrictions" fromOrganization:v97];
    v178 = 0;
    v100 = [v99 execute:&v178];
    v101 = v178;
    if (!v100)
    {
      v111 = +[STLog persistence];
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(Restrictions) disableRestrictionsBlueprintForUser:error:];
      }

      if (a5)
      {
        v112 = v101;
        v106 = 0;
        *a5 = v101;
      }

      else
      {
        v106 = 0;
      }

      goto LABEL_178;
    }

    v160 = v99;
    v171 = [v143 managedObjectContext];
    v102 = [v100 firstObject];
    if (!v102)
    {
      v102 = [[STBlueprint alloc] initWithContext:v171];
      [(STBlueprint *)v102 setType:@"restrictions"];
      v103 = v152;
      v104 = v50;
      if ([(__CFString *)v103 isEqualToString:@"personal"])
      {
        v105 = @"digital_health_restrictions";
      }

      else
      {
        v105 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"digital_health_restrictions", v104];
      }

      v113 = v105;

      [(STBlueprint *)v102 setIdentifier:v113];
      [(STBlueprint *)v102 setOrganization:v97];
      v114 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v143, 0}];
      [(STBlueprint *)v102 setUsers:v114];
    }

    v156 = v100;
    v163 = v97;
    v151 = v50;
    [(STBlueprint *)v102 setIsDirty:1];
    [(STBlueprint *)v102 setEnabled:1];
    v166 = v102;
    v115 = [(STBlueprint *)v102 configurations];
    v116 = [v115 allObjects];

    v117 = MEMORY[0x1E695DF20];
    v118 = [v116 valueForKey:@"type"];
    v146 = v116;
    v119 = [v117 dictionaryWithObjects:v116 forKeys:v118];

    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v120 = v148;
    v121 = [v120 countByEnumeratingWithState:&v174 objects:v191 count:16];
    if (v121)
    {
      v122 = v121;
      v123 = *v175;
      while (2)
      {
        v124 = 0;
        v125 = v101;
        do
        {
          if (*v175 != v123)
          {
            objc_enumerationMutation(v120);
          }

          v126 = *(*(&v174 + 1) + 8 * v124);
          v127 = [v158 objectForKeyedSubscript:v126];
          v128 = [v119 objectForKeyedSubscript:v126];
          if (!v128)
          {
            v128 = [[STBlueprintConfiguration alloc] initWithContext:v171];
            v129 = [v127 declarationIdentifier];
            [(STBlueprintConfiguration *)v128 setIdentifier:v129];

            [(STBlueprintConfiguration *)v128 setType:v126];
            [(STBlueprintConfiguration *)v128 setBlueprint:v166];
          }

          [v127 updateServerHash];
          v173 = v125;
          v130 = [v127 serializeAsDataWithError:&v173];
          v101 = v173;

          if (!v130)
          {
            v135 = +[STLog persistence];
            if (os_log_type_enabled(v135, OS_LOG_TYPE_FAULT))
            {
              +[STBlueprint(Restrictions) saveRestrictionsBlueprintWithValuesForPresetRestrictions:forUser:error:];
            }

            v96 = v143;
            v50 = v151;
            v100 = v156;
            if (a5)
            {
              v136 = v101;
              *a5 = v101;
            }

            v106 = 0;
            v97 = v163;
            v99 = v160;
            goto LABEL_174;
          }

          [(STBlueprintConfiguration *)v128 setPayloadPlist:v130];

          ++v124;
          v125 = v101;
        }

        while (v122 != v124);
        v122 = [v120 countByEnumeratingWithState:&v174 objects:v191 count:16];
        if (v122)
        {
          continue;
        }

        break;
      }
    }

    v131 = +[STLog persistence];
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
    {
      [STBlueprint(Restrictions) saveRestrictionsBlueprintWithValuesForPresetRestrictions:v131 forUser:? error:?];
    }

    v132 = v171;
    v97 = v163;
    v99 = v160;
    v100 = v156;
    if ([v171 hasChanges])
    {
      v172 = v101;
      v133 = [v171 save:&v172];
      v134 = v172;

      if ((v133 & 1) == 0)
      {
        v139 = +[STLog persistence];
        if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint(Restrictions) saveRestrictionsBlueprintWithValuesForPresetRestrictions:forUser:error:];
        }

        v96 = v143;
        v50 = v151;
        if (a5)
        {
          v140 = v134;
          v106 = 0;
          *a5 = v134;
        }

        else
        {
          v106 = 0;
        }

        v101 = v134;
LABEL_174:
        v132 = v171;
        goto LABEL_177;
      }

      v106 = 1;
      v101 = v134;
    }

    else
    {
      v106 = 1;
    }

    v96 = v143;
    v50 = v151;
LABEL_177:

LABEL_178:
LABEL_179:

    goto LABEL_180;
  }

  v101 = [*(v10 + 3824) persistence];
  v96 = v143;
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v101, OS_LOG_TYPE_DEFAULT, "No preset restrictions to apply, exiting.", buf, 2u);
  }

  v106 = 1;
LABEL_180:

  v137 = *MEMORY[0x1E69E9840];
  return v106;
}

+ (BOOL)saveUsageLimitWithIdentifier:(id)a3 user:(id)a4 bundleIdentifiers:(id)a5 webDomains:(id)a6 categoryIdentifiers:(id)a7 dailyBudgetLimit:(double)a8 budgetLimitByWeekday:(id)a9 enabled:(BOOL)a10 behaviorType:(unint64_t)a11 error:(id *)a12
{
  v238 = *MEMORY[0x1E69E9840];
  v165 = a3;
  v166 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v158 = a9;
  v162 = v20;
  v23 = [v20 count];
  v161 = v21;
  v155 = [v21 count];
  v164 = v22;
  v159 = [v22 count];
  if (!v23 && !v155 && !v159)
  {
    [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:a2 user:a1 bundleIdentifiers:? webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
  }

  v229 = 0;
  v230[0] = &v229;
  v230[1] = 0x3032000000;
  v230[2] = __Block_byref_object_copy__1;
  v230[3] = __Block_byref_object_dispose__1;
  v231 = 0;
  v163 = [v166 managingOrganization];
  if (v163)
  {
    if (!_os_feature_enabled_impl())
    {
      v148 = 0;
      goto LABEL_35;
    }

    v24 = [v166 dsid];
    v25 = [v166 alwaysAllowActivationIdentifier];
    v26 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v24 ofType:@"always-allowed-apps" withIdentifier:v25 fromOrganization:v163];

    v27 = v230[0];
    v228 = *(v230[0] + 40);
    v28 = [v26 execute:&v228];
    objc_storeStrong((v27 + 40), v228);
    if (!v28)
    {
      v29 = +[STLog persistence];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:v230 user:? bundleIdentifiers:? webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
      }
    }

    if ([v28 count] >= 2)
    {
      v30 = +[STLog persistence];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        v31 = [v166 appleID];
        [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:v31 user:buf bundleIdentifiers:v30 webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
      }

      v32 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"identifier" ascending:1];
      v236 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v236 count:1];
      v34 = [v28 sortedArrayUsingDescriptors:v33];

      v28 = v34;
    }

    v35 = [v28 firstObject];
    v36 = [v35 configurations];
    v37 = [v36 allObjects];

    if ([v37 count] >= 2)
    {
      v38 = +[STLog persistence];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        v39 = [v166 appleID];
        [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:v39 user:v235 bundleIdentifiers:v38 webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
      }

      v40 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"identifier" ascending:1];
      v234 = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v234 count:1];
      v42 = [v37 sortedArrayUsingDescriptors:v41];

      v37 = v42;
    }

    v43 = [v37 firstObject];
    v44 = v43;
    if (v43)
    {
      v45 = MEMORY[0x1E6996238];
      v46 = [v43 payloadPlist];
      v47 = v230[0];
      obj = *(v230[0] + 40);
      v48 = [v45 declarationForData:v46 error:&obj];
      objc_storeStrong((v47 + 40), obj);

      if (v48)
      {
        v148 = [v48 payloadApps];
LABEL_34:

LABEL_35:
        if (v165)
        {
          v55 = [v166 dsid];
          v56 = [a1 fetchRequestMatchingBlueprintsForUserWithDSID:v55 ofType:@"usage-limit" withIdentifier:v165 fromOrganization:v163];

          [v56 setReturnsObjectsAsFaults:0];
          v57 = v230[0];
          v226 = *(v230[0] + 40);
          v58 = [v56 execute:&v226];
          objc_storeStrong((v57 + 40), v226);

          if (!v58)
          {
            v59 = +[STLog persistence];
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:v230 user:? bundleIdentifiers:? webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
            }

            v154 = 0;
            v52 = 0;
            goto LABEL_126;
          }
        }

        else
        {
          v60 = objc_alloc(MEMORY[0x1E696AEC0]);
          v61 = objc_opt_new();
          v62 = [v61 UUIDString];
          v165 = [v60 initWithFormat:@"%@_%@", @"budget_activation", v62];

          v58 = 0;
        }

        v154 = v58;
        if ([v58 count] >= 2)
        {
          v63 = +[STLog persistence];
          if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
          {
            +[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:];
          }
        }

        v64 = [v166 managedObjectContext];
        v65 = [v58 firstObject];
        if (!v65)
        {
          v65 = [[STBlueprint alloc] initWithContext:v64];
          [(STBlueprint *)v65 setType:@"usage-limit"];
          [(STBlueprint *)v65 setIdentifier:v165];
          [(STBlueprint *)v65 setOrganization:v163];
          v66 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v166, 0}];
          [(STBlueprint *)v65 setUsers:v66];

          v67 = objc_opt_new();
          [(STBlueprint *)v65 setCreationDate:v67];
        }

        [(STBlueprint *)v65 setIsDirty:1];
        [(STBlueprint *)v65 setLimitEnabled:a10];
        v68 = [(STBlueprint *)v65 usageLimit];
        if (!v68)
        {
          v68 = [[STBlueprintUsageLimit alloc] initWithContext:v64];
          v69 = [MEMORY[0x1E696AD98] numberWithDouble:300.0];
          [(STBlueprintUsageLimit *)v68 setNotificationTimeInterval:v69];
        }

        [(STBlueprintUsageLimit *)v68 setApplicationIdentifiers:v162];
        [(STBlueprintUsageLimit *)v68 setWebsiteIdentifiers:v161];
        [(STBlueprintUsageLimit *)v68 setCategoryIdentifiersVersion2:v164];
        v70 = [v164 mutableCopy];
        [v70 removeObject:*MEMORY[0x1E6993B60]];
        [v70 removeObject:*MEMORY[0x1E6993B18]];
        [v70 removeObject:*MEMORY[0x1E6993B58]];
        if (v159 && ![v70 count])
        {
          [v70 addObject:*MEMORY[0x1E6993B00]];
        }

        [(STBlueprintUsageLimit *)v68 setCategoryIdentifiers:v70];
        if (v159)
        {
          [(STBlueprintUsageLimit *)v68 setItemIdentifiers:v70];
          v71 = &STBlueprintUsageLimitItemTypeCategory;
        }

        else if (v23)
        {
          [(STBlueprintUsageLimit *)v68 setItemIdentifiers:v162];
          v71 = STBlueprintUsageLimitItemTypeApp;
        }

        else
        {
          if (!v155)
          {
            goto LABEL_59;
          }

          [(STBlueprintUsageLimit *)v68 setItemIdentifiers:v161];
          v71 = STBlueprintUsageLimitItemTypeWebDomain;
        }

        [(STBlueprintUsageLimit *)v68 setUsageItemType:*v71];
LABEL_59:
        if (v158)
        {
          v224[0] = MEMORY[0x1E69E9820];
          v224[1] = 3221225472;
          v224[2] = __175__STBlueprint_UsageLimit__saveUsageLimitWithIdentifier_user_bundleIdentifiers_webDomains_categoryIdentifiers_dailyBudgetLimit_budgetLimitByWeekday_enabled_behaviorType_error___block_invoke;
          v224[3] = &unk_1E7CE6F48;
          v225 = v68;
          [v158 enumerateKeysAndObjectsUsingBlock:v224];
        }

        else
        {
          [(STBlueprintUsageLimit *)v68 setBudgetLimit:a8];
        }

        [(STBlueprint *)v65 setUsageLimit:v68];
        v218 = 0;
        v219 = &v218;
        v220 = 0x3032000000;
        v221 = __Block_byref_object_copy__1;
        v222 = __Block_byref_object_dispose__1;
        v223 = 0;
        v212 = 0;
        v213 = &v212;
        v214 = 0x3032000000;
        v215 = __Block_byref_object_copy__1;
        v216 = __Block_byref_object_dispose__1;
        v217 = 0;
        v206 = 0;
        v207 = &v206;
        v208 = 0x3032000000;
        v209 = __Block_byref_object_copy__1;
        v210 = __Block_byref_object_dispose__1;
        v211 = 0;
        v200 = 0;
        v201 = &v200;
        v202 = 0x3032000000;
        v203 = __Block_byref_object_copy__1;
        v204 = __Block_byref_object_dispose__1;
        v205 = 0;
        v194 = 0;
        v195 = &v194;
        v196 = 0x3032000000;
        v197 = __Block_byref_object_copy__1;
        v198 = __Block_byref_object_dispose__1;
        v199 = 0;
        v188 = 0;
        v189 = &v188;
        v190 = 0x3032000000;
        v191 = __Block_byref_object_copy__1;
        v192 = __Block_byref_object_dispose__1;
        v193 = 0;
        v72 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID.URIRepresentation.absoluteString" ascending:1];
        v232 = v72;
        v150 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v232 count:1];

        v73 = [(STBlueprint *)v65 configurations];
        v149 = [v73 sortedArrayUsingDescriptors:v150];

        v184 = 0;
        v185 = &v184;
        v186 = 0x2020000000;
        v187 = 0;
        v171[0] = MEMORY[0x1E69E9820];
        v171[1] = 3221225472;
        v171[2] = __175__STBlueprint_UsageLimit__saveUsageLimitWithIdentifier_user_bundleIdentifiers_webDomains_categoryIdentifiers_dailyBudgetLimit_budgetLimitByWeekday_enabled_behaviorType_error___block_invoke_2;
        v171[3] = &unk_1E7CE6F70;
        v173 = &v229;
        v174 = &v184;
        v181 = v23 != 0;
        v175 = &v218;
        v176 = &v212;
        v59 = v64;
        v172 = v59;
        v177 = &v206;
        v182 = v155 != 0;
        v178 = &v200;
        v179 = &v194;
        v183 = v159 != 0;
        v180 = &v188;
        [v149 enumerateObjectsUsingBlock:v171];
        if (*(v185 + 24) == 1)
        {
          v74 = +[STLog persistence];
          if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
          {
            [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:v230 user:? bundleIdentifiers:? webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
          }

          v52 = 0;
          goto LABEL_125;
        }

        if (a11)
        {
          if (a11 != 1)
          {
            v78 = 0;
            v152 = 0;
            v153 = 0;
LABEL_73:
            v151 = v78;
            if (v23)
            {
              if (v219[5])
              {
                [v213[5] setPayloadMode:v78];
                [v213[5] setPayloadApps:v162];
              }

              else
              {
                v80 = [[STBlueprintConfiguration alloc] initWithContext:v59];
                v81 = v219[5];
                v219[5] = v80;

                [v219[5] setBlueprint:v65];
                v145 = MEMORY[0x1E6996238];
                v146 = v166;
                v82 = [v146 localUserDeviceState];
                if (v82 && (v83 = [v146 isManaged], v82, !v83))
                {
                  v90 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v85 = objc_opt_new();
                  v86 = [v85 UUIDString];
                  v89 = [v90 initWithFormat:@"%@_%@_%@", @"budget_configuration", @"personal", v86];
                }

                else
                {
                  v84 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v85 = [v146 dsid];
                  v86 = [v85 stringValue];
                  v87 = objc_opt_new();
                  v88 = [v87 UUIDString];
                  v89 = [v84 initWithFormat:@"%@_%@_%@_%@", @"budget_configuration", @"family", v86, v88];
                }

                v91 = v89;
                v92 = [v145 buildWithIdentifier:v91 withMode:v151 withApps:v162 withExemptApps:v148];
                v93 = v213[5];
                v213[5] = v92;
              }

              v94 = [v213[5] declarationIdentifier];
              [v219[5] setIdentifier:v94];

              v95 = [v213[5] declarationType];
              [v219[5] setType:v95];

              [v213[5] updateServerHash];
              v96 = v213[5];
              v97 = v230[0];
              v170 = *(v230[0] + 40);
              v98 = [v96 serializeAsDataWithError:&v170];
              objc_storeStrong((v97 + 40), v170);
              v79 = v98 != 0;
              if (v98)
              {
                [v219[5] setPayloadPlist:v98];
              }

              else
              {
                v99 = +[STLog persistence];
                if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
                {
                  [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:v230 user:? bundleIdentifiers:? webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
                }
              }
            }

            else
            {
              v79 = 1;
            }

            if (v79 && v155)
            {
              if (v207[5])
              {
                [v201[5] setPayloadMode:v153];
                [v201[5] setPayloadHostnames:v161];
              }

              else
              {
                v100 = [[STBlueprintConfiguration alloc] initWithContext:v59];
                v101 = v207[5];
                v207[5] = v100;

                [v207[5] setBlueprint:v65];
                v147 = MEMORY[0x1E6996248];
                v156 = v166;
                v102 = [v156 localUserDeviceState];
                if (v102 && (v103 = [v156 isManaged], v102, !v103))
                {
                  v110 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v105 = objc_opt_new();
                  v106 = [v105 UUIDString];
                  v109 = [v110 initWithFormat:@"%@_%@_%@", @"budget_configuration", @"personal", v106];
                }

                else
                {
                  v104 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v105 = [v156 dsid];
                  v106 = [v105 stringValue];
                  v107 = objc_opt_new();
                  v108 = [v107 UUIDString];
                  v109 = [v104 initWithFormat:@"%@_%@_%@_%@", @"budget_configuration", @"family", v106, v108];
                }

                v111 = v109;
                v112 = [v147 buildWithIdentifier:v111 withMode:v153 withHostnames:v161 withExemptApps:v148];
                v113 = v201[5];
                v201[5] = v112;
              }

              v114 = [v201[5] declarationIdentifier];
              [v207[5] setIdentifier:v114];

              v115 = [v201[5] declarationType];
              [v207[5] setType:v115];

              [v201[5] updateServerHash];
              v116 = v201[5];
              v117 = v230[0];
              v169 = *(v230[0] + 40);
              v118 = [v116 serializeAsDataWithError:&v169];
              objc_storeStrong((v117 + 40), v169);
              v79 = v118 != 0;
              if (v118)
              {
                [v207[5] setPayloadPlist:v118];
              }

              else
              {
                v119 = +[STLog persistence];
                if (os_log_type_enabled(v119, OS_LOG_TYPE_FAULT))
                {
                  [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:v230 user:? bundleIdentifiers:? webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
                }
              }
            }

            if (v79 && v159)
            {
              if (v195[5])
              {
                [v189[5] setPayloadMode:v152];
                [v189[5] setPayloadCategories:v70];
                [v189[5] setPayloadCategoriesVersion2:v164];
              }

              else
              {
                v120 = [[STBlueprintConfiguration alloc] initWithContext:v59];
                v121 = v195[5];
                v195[5] = v120;

                [v195[5] setBlueprint:v65];
                v157 = MEMORY[0x1E6996240];
                v160 = v166;
                v122 = [v160 localUserDeviceState];
                if (v122 && (v123 = [v160 isManaged], v122, !v123))
                {
                  v130 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v125 = objc_opt_new();
                  v126 = [v125 UUIDString];
                  v129 = [v130 initWithFormat:@"%@_%@_%@", @"budget_configuration", @"personal", v126];
                }

                else
                {
                  v124 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v125 = [v160 dsid];
                  v126 = [v125 stringValue];
                  v127 = objc_opt_new();
                  v128 = [v127 UUIDString];
                  v129 = [v124 initWithFormat:@"%@_%@_%@_%@", @"budget_configuration", @"family", v126, v128];
                }

                v131 = v129;
                v132 = [v157 buildWithIdentifier:v131 withMode:v152 withCategories:v70 withCategoriesVersion2:v164 withExemptApps:v148];
                v133 = v189[5];
                v189[5] = v132;
              }

              v134 = [v189[5] declarationIdentifier];
              [v195[5] setIdentifier:v134];

              v135 = [v189[5] declarationType];
              [v195[5] setType:v135];

              [v189[5] updateServerHash];
              v136 = v189[5];
              v137 = v230[0];
              v168 = *(v230[0] + 40);
              v138 = [v136 serializeAsDataWithError:&v168];
              objc_storeStrong((v137 + 40), v168);
              if (!v138)
              {
                v142 = +[STLog persistence];
                if (os_log_type_enabled(v142, OS_LOG_TYPE_FAULT))
                {
                  [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:v230 user:? bundleIdentifiers:? webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
                }

LABEL_122:

LABEL_123:
                v52 = 0;
                goto LABEL_124;
              }

              [v195[5] setPayloadPlist:v138];
            }

            else if (!v79)
            {
              goto LABEL_123;
            }

            v139 = +[STAdminPersistenceController sharedController];
            v140 = v230[0];
            v167 = *(v230[0] + 40);
            v141 = [v139 saveContext:v59 error:&v167];
            objc_storeStrong((v140 + 40), v167);

            if (v141)
            {
              v52 = 1;
LABEL_124:

              v74 = v151;
LABEL_125:

              _Block_object_dispose(&v184, 8);
              _Block_object_dispose(&v188, 8);

              _Block_object_dispose(&v194, 8);
              _Block_object_dispose(&v200, 8);

              _Block_object_dispose(&v206, 8);
              _Block_object_dispose(&v212, 8);

              _Block_object_dispose(&v218, 8);
LABEL_126:

              if (a12)
              {
                *a12 = *(v230[0] + 40);
              }

              goto LABEL_129;
            }

            v142 = +[STLog persistence];
            if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
            {
              [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:v230 user:? bundleIdentifiers:? webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
            }

            goto LABEL_122;
          }

          v75 = MEMORY[0x1E69961A8];
          v76 = MEMORY[0x1E69961B8];
          v77 = MEMORY[0x1E6996190];
        }

        else
        {
          v75 = MEMORY[0x1E69961B0];
          v76 = MEMORY[0x1E69961C0];
          v77 = MEMORY[0x1E69961A0];
        }

        v78 = *v77;
        v153 = *v76;
        v152 = *v75;
        goto LABEL_73;
      }

      v54 = +[STLog persistence];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:v230 user:? bundleIdentifiers:? webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
      }
    }

    else
    {
      v48 = +[STLog persistence];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v53 = [v166 appleID];
        [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:v53 user:v233 bundleIdentifiers:v48 webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
      }
    }

    v148 = 0;
    goto LABEL_34;
  }

  v49 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
  v50 = *(v230[0] + 40);
  *(v230[0] + 40) = v49;

  v51 = +[STLog persistence];
  if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
  {
    +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
  }

  v52 = 0;
  if (a12)
  {
    *a12 = *(v230[0] + 40);
  }

LABEL_129:

  _Block_object_dispose(&v229, 8);
  v143 = *MEMORY[0x1E69E9840];
  return v52;
}

uint64_t __175__STBlueprint_UsageLimit__saveUsageLimitWithIdentifier_user_bundleIdentifiers_webDomains_categoryIdentifiers_dailyBudgetLimit_budgetLimitByWeekday_enabled_behaviorType_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [a3 doubleValue];
  v7 = v6;
  v8 = [v5 unsignedIntegerValue];

  return [v4 setBudgetLimit:v8 forDay:v7];
}

void __175__STBlueprint_UsageLimit__saveUsageLimitWithIdentifier_user_bundleIdentifiers_webDomains_categoryIdentifiers_dailyBudgetLimit_budgetLimitByWeekday_enabled_behaviorType_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 payloadPlist];

  if (v8)
  {
    v9 = MEMORY[0x1E6996208];
    v10 = [v7 payloadPlist];
    v11 = *(*(a1 + 40) + 8);
    obj = *(v11 + 40);
    v12 = [v9 declarationForData:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);

    if (!v12)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
      goto LABEL_26;
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (*(a1 + 104) == 1)
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
          v13 = *(a1 + 64);
LABEL_17:
          objc_storeStrong((*(v13 + 8) + 40), v12);
          goto LABEL_26;
        }

        v14 = +[STLog screentime];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (*(a1 + 105) == 1)
        {
          objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
          v13 = *(a1 + 80);
          goto LABEL_17;
        }

        v14 = +[STLog screentime];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

    if (!*(*(*(a1 + 88) + 8) + 40))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (*(a1 + 106) == 1)
        {
          objc_storeStrong((*(*(a1 + 88) + 8) + 40), a2);
          v13 = *(a1 + 96);
          goto LABEL_17;
        }

        v14 = +[STLog screentime];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
LABEL_24:
          *buf = 136446466;
          v18 = "+[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:]_block_invoke";
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting configuration (%@)", buf, 0x16u);
        }

LABEL_25:

        [*(a1 + 32) deleteObject:v7];
      }
    }
  }

  else
  {
    v12 = +[STLog persistence];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      +[STBlueprint _buildConfigurationsByDeclarationIdentifierFromBlueprint:error:];
    }
  }

LABEL_26:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateUsageLimitWithAlwaysAllowBundleIdentifiers:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(STBlueprint *)self configurations];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke;
    v7[3] = &unk_1E7CE6F98;
    v8 = v4;
    [v5 enumerateObjectsUsingBlock:v7];

    v6 = v8;
  }

  else
  {
    v6 = +[STLog persistence];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B831F000, v6, OS_LOG_TYPE_DEFAULT, "Not updating usage limit with always allow list because exempt_apps feature is off", buf, 2u);
    }
  }
}

void __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 payloadPlist];
  if (v4)
  {
    v5 = v4;
    v12 = 0;
    v6 = [MEMORY[0x1E6996208] declarationForData:v4 error:&v12];
    v7 = v12;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [v6 setPayloadExemptApps:*(a1 + 32)];
        [v6 updateServerHash];
        v11 = v7;
        v8 = [v6 serializeAsDataWithError:&v11];
        v9 = v11;

        if (v8)
        {
          [v3 setPayloadPlist:v8];
          v5 = v8;
        }

        else
        {
          v5 = +[STLog persistence];
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke_cold_2();
          }
        }

        v7 = v9;
        goto LABEL_16;
      }

      v10 = +[STLog persistence];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke_cold_1();
      }
    }

    else
    {
      v10 = +[STLog persistence];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke_cold_3();
      }
    }

LABEL_16:
    goto LABEL_17;
  }

  v7 = +[STLog persistence];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke_cold_4();
  }

LABEL_17:
}

+ (BOOL)deleteUsageLimitWithIdentifier:(id)a3 user:(id)a4 managedObjectContext:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v10 managingOrganization];
  v13 = [v10 dsid];

  v14 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:v13 ofType:@"usage-limit" withIdentifier:v11 fromOrganization:v12];

  [v14 setReturnsObjectsAsFaults:0];
  v26 = 0;
  v15 = [v14 execute:&v26];
  v16 = v26;
  if (v15)
  {
    if ([v15 count] >= 2)
    {
      v17 = +[STLog persistence];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        +[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:];
      }
    }

    if ([v15 count])
    {
      v18 = [v15 objectAtIndexedSubscript:0];
      [v18 tombstone];
      v19 = +[STAdminPersistenceController sharedController];
      v25 = v16;
      v20 = [v19 saveContext:v9 error:&v25];
      v21 = v25;

      if ((v20 & 1) == 0)
      {
        v22 = +[STLog persistence];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint(UsageLimit) deleteUsageLimitWithIdentifier:user:managedObjectContext:error:];
        }
      }
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:14 userInfo:0];
      v20 = 0;
      v18 = v16;
    }
  }

  else
  {
    v18 = +[STLog persistence];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
    }

    v20 = 0;
    v21 = v16;
  }

  if (a6)
  {
    v23 = v21;
    *a6 = v21;
  }

  return v20;
}

- (NSString)limitDisplayName
{
  v2 = [(STBlueprint *)self usageLimit];
  v3 = [v2 categoryIdentifiersVersion2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 categoryIdentifiers];
  }

  v6 = v5;

  v7 = [v2 applicationIdentifiers];
  v8 = [v2 websiteIdentifiers];
  if (![v6 count] && !objc_msgSend(v7, "count") && !objc_msgSend(v8, "count"))
  {
    v9 = [v2 usageItemType];
    if ([v9 isEqualToString:@"category"])
    {
      v10 = [v2 itemIdentifiers];
      v11 = v6;
      v6 = v10;
    }

    else if ([v9 isEqualToString:@"app"])
    {
      v12 = [v2 itemIdentifiers];
      v11 = v7;
      v7 = v12;
    }

    else
    {
      if (![v9 isEqualToString:@"webdomain"])
      {
LABEL_14:

        goto LABEL_15;
      }

      v13 = [v2 itemIdentifiers];
      v11 = v8;
      v8 = v13;
    }

    goto LABEL_14;
  }

LABEL_15:
  v14 = [STBlueprint displayNameForUsageLimitWithCategoryIdentifiers:v6 bundleIdentifiers:v7 webDomains:v8];

  return v14;
}

+ (id)displayNameForUsageLimitWithCategoryIdentifiers:(id)a3 bundleIdentifiers:(id)a4 webDomains:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v44 = a4;
  v43 = a5;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__1;
  v57 = __Block_byref_object_dispose__1;
  v58 = 0;
  v52 = 2;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v9 = [a1 _getDisplayNameAndAddCategories:v7 toItemNames:v8 remainingItems:&v52];
  v10 = v54[5];
  v54[5] = v9;

  if (!v54[5])
  {
    v11 = [v7 count];
    v12 = [v44 count];
    v13 = [v43 count];
    if (v52)
    {
      v40 = v12 + v11;
      v41 = v13;
      v14 = +[STAppInfoCache sharedCache];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v15 = v44;
      v16 = [v15 countByEnumeratingWithState:&v47 objects:v65 count:16];
      if (v16)
      {
        v18 = *v48;
        *&v17 = 138543874;
        v39 = v17;
        do
        {
          v19 = 0;
          do
          {
            if (*v48 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [v14 appInfoForBundleIdentifier:{*(*(&v47 + 1) + 8 * v19), v39}];
            v21 = v20;
            if (!v20)
            {
              v25 = +[STLog appInfo];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v32 = [0 description];
                *buf = v39;
                v60 = v32;
                v61 = 2080;
                v62 = "+[STBlueprint(UsageLimit) displayNameForUsageLimitWithCategoryIdentifiers:bundleIdentifiers:webDomains:]";
                v63 = 1024;
                v64 = 512;
                _os_log_error_impl(&dword_1B831F000, v25, OS_LOG_TYPE_ERROR, "Nil appInfo: %{public}@ in function: %s:%d", buf, 0x1Cu);
              }

              goto LABEL_13;
            }

            v22 = [v20 displayName];
            v23 = [v22 length] == 0;

            if (v23)
            {
              v28 = [v21 bundleIdentifier];
              v29 = [v28 length] == 0;

              if (v29)
              {
                v25 = +[STLog appInfo];
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  v34 = [v21 description];
                  *buf = v39;
                  v60 = v34;
                  v61 = 2080;
                  v62 = "+[STBlueprint(UsageLimit) displayNameForUsageLimitWithCategoryIdentifiers:bundleIdentifiers:webDomains:]";
                  v63 = 1024;
                  v64 = 520;
                  _os_log_error_impl(&dword_1B831F000, v25, OS_LOG_TYPE_ERROR, "Display name and bundleId missing for appInfo: %{public}@ in function: %s:%d", buf, 0x1Cu);
                }

LABEL_13:

                v26 = +[STScreenTimeCoreBundle bundle];
                v27 = [v26 localizedStringForKey:@"DisplayNameUnknown" value:&stru_1F3040980 table:0];

                goto LABEL_19;
              }

              v30 = +[STLog appInfo];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v33 = [v21 description];
                *buf = v39;
                v60 = v33;
                v61 = 2080;
                v62 = "+[STBlueprint(UsageLimit) displayNameForUsageLimitWithCategoryIdentifiers:bundleIdentifiers:webDomains:]";
                v63 = 1024;
                v64 = 517;
                _os_log_error_impl(&dword_1B831F000, v30, OS_LOG_TYPE_ERROR, "Display name missing for appInfo: %{public}@ in function: %s:%d. using bundleId instead", buf, 0x1Cu);
              }

              v24 = [v21 bundleIdentifier];
            }

            else
            {
              v24 = [v21 displayName];
            }

            v27 = v24;
LABEL_19:
            [v8 addObject:v27];
            v31 = --v52 == 0;

            if (v31)
            {
              goto LABEL_26;
            }

            ++v19;
          }

          while (v16 != v19);
          v35 = [v15 countByEnumeratingWithState:&v47 objects:v65 count:16];
          v16 = v35;
        }

        while (v35);
      }

LABEL_26:

      if (v52)
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __104__STBlueprint_UsageLimit__displayNameForUsageLimitWithCategoryIdentifiers_bundleIdentifiers_webDomains___block_invoke_2;
        v45[3] = &unk_1E7CE6FC0;
        v45[4] = &v53;
        [a1 _addWebDomains:v43 toItemNames:v8 remainingItems:v52 totalCount:v40 + v41 completionHandler:v45];
      }

      else
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __104__STBlueprint_UsageLimit__displayNameForUsageLimitWithCategoryIdentifiers_bundleIdentifiers_webDomains___block_invoke_68;
        v46[3] = &unk_1E7CE6FC0;
        v46[4] = &v53;
        [a1 _createDisplayNameWithItemNames:v8 itemCount:v40 + v41 completionHandler:v46];
      }
    }

    else
    {
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __104__STBlueprint_UsageLimit__displayNameForUsageLimitWithCategoryIdentifiers_bundleIdentifiers_webDomains___block_invoke;
      v51[3] = &unk_1E7CE6FC0;
      v51[4] = &v53;
      [a1 _createDisplayNameWithItemNames:v8 itemCount:v12 + v11 + v13 completionHandler:v51];
    }
  }

  v36 = v54[5];

  _Block_object_dispose(&v53, 8);
  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

+ (void)fetchDisplayNameForUsageLimitWithCategoryIdentifiers:(id)a3 bundleIdentifiers:(id)a4 webDomains:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 2;
  v14 = objc_alloc(MEMORY[0x1E695DF70]);
  v15 = [v14 initWithCapacity:v36[3]];
  v16 = [a1 _getDisplayNameAndAddCategories:v10 toItemNames:v15 remainingItems:v36 + 3];
  if (v16)
  {
    v13[2](v13, v16);
  }

  else
  {
    v17 = [v11 count];
    v18 = [v10 count];
    v19 = v18 + v17 + [v12 count];
    if (v36[3])
    {
      if (v17)
      {
        if ([v11 count] >= 2 && v36[3] == 2)
        {
          v20 = objc_alloc(MEMORY[0x1E695DFD8]);
          v21 = [v11 objectAtIndexedSubscript:0];
          v26 = [v11 objectAtIndexedSubscript:1];
          v22 = [v20 initWithObjects:{v21, v26, 0}];
        }

        else
        {
          v23 = objc_alloc(MEMORY[0x1E695DFD8]);
          v21 = [v11 objectAtIndexedSubscript:0];
          v22 = [v23 initWithObjects:{v21, 0}];
        }

        v24 = +[STAppInfoCache sharedCache];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __127__STBlueprint_UsageLimit__fetchDisplayNameForUsageLimitWithCategoryIdentifiers_bundleIdentifiers_webDomains_completionHandler___block_invoke;
        v27[3] = &unk_1E7CE6FE8;
        v25 = v22;
        v28 = v25;
        v29 = v15;
        v32 = &v35;
        v33 = a1;
        v34 = v19;
        v31 = v13;
        v30 = v12;
        [v24 fetchAppInfoForBundleIdentifiers:v25 completionHandler:v27];
      }

      else
      {
        [a1 _addWebDomains:v12 toItemNames:v15 remainingItems:? totalCount:? completionHandler:?];
      }
    }

    else
    {
      [a1 _createDisplayNameWithItemNames:v15 itemCount:v19 completionHandler:v13];
    }
  }

  _Block_object_dispose(&v35, 8);
}

void __127__STBlueprint_UsageLimit__fetchDisplayNameForUsageLimitWithCategoryIdentifiers_bundleIdentifiers_webDomains_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:{v9, v16}];
        v11 = [v10 displayName];

        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = v9;
        }

        [*(a1 + 40) addObject:v12];
        --*(*(*(a1 + 64) + 8) + 24);
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *(a1 + 72);
  v14 = *(*(*(a1 + 64) + 8) + 24);
  if (v14)
  {
    [v13 _addWebDomains:*(a1 + 48) toItemNames:*(a1 + 40) remainingItems:v14 totalCount:*(a1 + 80) completionHandler:*(a1 + 56)];
  }

  else
  {
    [v13 _createDisplayNameWithItemNames:*(a1 + 40) itemCount:*(a1 + 80) completionHandler:*(a1 + 56)];
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)_getDisplayNameAndAddCategories:(id)a3 toItemNames:(id)a4 remainingItems:(unint64_t *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v7];
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = STAvailableCategoriesExcludingSystemCategories();
  v12 = [v10 initWithArray:v11];

  if ([v9 isEqualToSet:v12])
  {
    v13 = +[STScreenTimeCoreBundle bundle];
    v14 = [v13 localizedStringForKey:@"AllAppsAndCategoriesDisplayName" value:&stru_1F3040980 table:0];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
LABEL_5:
      v19 = 0;
      while (1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = STCategoryNameWithIdentifier(*(*(&v24 + 1) + 8 * v19));
        [v8 addObject:{v20, v24}];

        if ((*a5)-- == 1)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v17)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v14 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (void)_addWebDomains:(id)a3 toItemNames:(id)a4 remainingItems:(unint64_t)a5 totalCount:(unint64_t)a6 completionHandler:(id)a7
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v23 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = [*(*(&v22 + 1) + 8 * v18) _lp_userVisibleHost];
      [v12 addObject:v19];

      if (a5 - 1 == v18)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        a5 -= v18;
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [a1 _createDisplayNameWithItemNames:v12 itemCount:a6 completionHandler:v13];
  v20 = *MEMORY[0x1E69E9840];
}

+ (void)_createDisplayNameWithItemNames:(id)a3 itemCount:(unint64_t)a4 completionHandler:(id)a5
{
  v16 = a3;
  v7 = a5;
  v8 = v7;
  if (a4)
  {
    v9 = [v16 objectAtIndexedSubscript:0];
    if (a4 == 1)
    {
      (v8)[2](v8, v9);
    }

    else
    {
      v10 = [v16 objectAtIndexedSubscript:1];
      v11 = +[STScreenTimeCoreBundle bundle];
      v12 = [v11 localizedStringForKey:@"BudgetPredicateTitleText" value:&stru_1F3040980 table:0];

      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = [MEMORY[0x1E695DF58] currentLocale];
      v15 = [v13 initWithFormat:v12 locale:v14, a4 - 2, v9, v10];
      (v8)[2](v8, v15);
    }
  }

  else
  {
    (*(v7 + 2))(v7, &stru_1F3040980);
  }
}

- (NSString)limitScheduleText
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 setFormattingContext:1];
  [v3 setUnitsStyle:5];
  v4 = [(STBlueprint *)self usageLimit];
  v5 = [v4 budgetLimitScheduleRepresentation];

  v6 = [v5 simpleSchedule];
  v7 = v6;
  if (v6)
  {
    [v6 budgetLimit];
    v8 = [v3 stringFromTimeInterval:?];
    v9 = +[STScreenTimeCoreBundle bundle];
    v10 = [v9 localizedStringForKey:@"TimeEveryDayFormat" value:&stru_1F3040980 table:0];

    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [MEMORY[0x1E695DF58] currentLocale];
    v13 = [v11 initWithFormat:v10 locale:v12, v8];
  }

  else
  {
    v30 = v5;
    v14 = [v5 customScheduleItems];
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v14, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          v22 = MEMORY[0x1E696AD98];
          [v21 budgetLimit];
          v23 = [v22 numberWithDouble:?];
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "day")}];
          [v15 setObject:v23 forKeyedSubscript:v24];
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v18);
    }

    v25 = objc_opt_class();
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __44__STBlueprint_UsageLimit__limitScheduleText__block_invoke;
    v34[3] = &unk_1E7CE6EE8;
    v35 = v15;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __44__STBlueprint_UsageLimit__limitScheduleText__block_invoke_2;
    v31[3] = &unk_1E7CE6F10;
    v26 = v35;
    v32 = v26;
    v33 = v3;
    v13 = [v25 scheduleTextWithLocale:0 weekdayScheduleComparator:v34 scheduleTimeGetter:v31];
    if (!v13)
    {
      v27 = +[STScreenTimeCoreBundle bundle];
      v13 = [v27 localizedStringForKey:@"ScheduleOff" value:&stru_1F3040980 table:0];
    }

    v7 = 0;
    v5 = v30;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v13;
}

uint64_t __44__STBlueprint_UsageLimit__limitScheduleText__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = [v10 isEqualToNumber:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __44__STBlueprint_UsageLimit__limitScheduleText__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    [v5 doubleValue];
    v7 = [v6 stringFromTimeInterval:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)declarationsWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)declarationsWithError:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_predicateForDowntimeBlueprint:(void *)a1 withDateFormatter:calendar:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_predicateForUsageLimitBlueprint:(void *)a1 withDateFormatter:calendar:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_predicateForUsageLimitBlueprint:withDateFormatter:calendar:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_predicateForUsageLimitOverrideBlueprint:(void *)a1 withDateFormatter:calendar:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_predicateForAlwaysAllowedAppsBlueprint:(void *)a1 withDateFormatter:calendar:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_predicateForRestrictionsBlueprint:(void *)a1 withDateFormatter:calendar:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_predicateForManagedUserBlueprint:(void *)a1 withDateFormatter:calendar:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_buildConfigurationsByDeclarationIdentifierFromBlueprint:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2114;
  v5 = v0;
  _os_log_fault_impl(&dword_1B831F000, v1, OS_LOG_TYPE_FAULT, "failed to deserialize config: %{public}@: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_buildConfigurationsByDeclarationIdentifierFromBlueprint:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "blueprint is missing a config: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_buildConfigurationsByDeclarationIdentifierFromBlueprint:(void *)a1 error:.cold.4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 serialize];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __78__STBlueprint__buildConfigurationsByDeclarationIdentifierFromBlueprint_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)appExceptionsDeclarationForBlueprint:(void *)a3 usingCache:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 bundleIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1B831F000, a4, OS_LOG_TYPE_ERROR, "Duplicate exception bundle identifier found:%@", a1, 0xCu);
}

+ (void)appExceptionsDeclarationForBlueprint:usingCache:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1B831F000, v1, OS_LOG_TYPE_ERROR, "Failed creating declaration from payload:%@. Error:%@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)appExceptionsDeclarationForBlueprint:usingCache:.cold.4()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)shouldUseGracePeriodForDowntimeOverride:configuration:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)shouldUseGracePeriodForDowntimeOverride:(uint64_t)a1 configuration:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = 0;
  v5 = 2114;
  v6 = a1;
  _os_log_fault_impl(&dword_1B831F000, a2, OS_LOG_TYPE_FAULT, "Failed to deserialize declaration: %{public}@: %{public}@. Defaulting to no grace period.", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)shouldUseGracePeriodForDowntimeOverride:configuration:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)shouldUseGracePeriodForDowntimeOverride:configuration:.cold.4()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateWithDictionaryRepresentation:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 dictionaryRepresentation];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_0(&dword_1B831F000, v2, v3, "L: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateWithDictionaryRepresentation:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0(&dword_1B831F000, v0, v1, "R: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateWithDictionaryRepresentation:.cold.7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Multiple organizations of type: %{public}@ found in database", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateWithDictionaryRepresentation:.cold.8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "There were no organizations for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateWithDictionaryRepresentation:.cold.9()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Unable to fetch organizations: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateWithDictionaryRepresentation:.cold.10()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateWithDictionaryRepresentation:.cold.11()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)fetchOrCreateWithDictionaryRepresentation:inContext:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 136446466;
  v5 = "[STBlueprint validateForUpdate:]";
  v6 = 2114;
  v7 = v2;
  _os_log_fault_impl(&dword_1B831F000, a2, OS_LOG_TYPE_FAULT, "%{public}s Built-in CoreData Validation for update on Blueprint failed with: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 type];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 type];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)validateForDelete:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 type];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

void __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Unexpected declaration for usage limit blueprint: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to serialize payload after updating limit with always allow list: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to deserialize declaration for usage limit blueprint: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Usage limit blueprint has a malformed configuration: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
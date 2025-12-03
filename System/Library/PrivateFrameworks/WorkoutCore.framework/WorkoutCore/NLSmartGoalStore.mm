@interface NLSmartGoalStore
+ (id)_activityTypeKeyForActivityType:(id)type;
+ (id)_activityTypeKeyForActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor swimmingLocationType:(int64_t)type metadata:(id)metadata;
+ (id)unsupportedWorkouts;
+ (void)_migratePropertiesFromOccurrenceRegistry:(id)registry toOccurrenceRegistry:(id)occurrenceRegistry;
- (BOOL)containsActivityType:(id)type;
- (BOOL)isHiddenActivityType:(id)type;
- (NLSmartGoalStore)initWithHealthStore:(id)store;
- (NLSmartGoalStore)initWithHealthStore:(id)store userDefaults:(id)defaults activityMoveMode:(int64_t)mode;
- (id)_activityTypeForWorkoutOccurrenceKey:(id)key;
- (id)_createRegistryForActivityType:(id)type;
- (id)_readOccurrenceRegistryForKey:(id)key;
- (id)_replaceDeprecatedActivityTypeWithNewActivityType:(id)type;
- (id)_sortedRegistryList;
- (id)_visibleActivityTypesWithDefaultActivityTypes:(id)types unsupportedActivityTypes:(id)activityTypes;
- (id)_visibleRegistries;
- (id)activityTypeKeyForActivityType:(id)type;
- (id)lastGoalForActivityType:(id)type;
- (id)mostRecentOccurrenceDateForActivityType:(id)type;
- (id)removeDuplicateActivityTypes:(id)types;
- (id)workoutActivityTypesInFrequencyOrderDescendingWithDefaultActivities:(id)activities unsupportedActivities:(id)unsupportedActivities;
- (int64_t)inferLocationTypeForActivityTypeIdentifier:(unint64_t)identifier;
- (int64_t)numberOfCompletedActivitiesForType:(id)type;
- (void)_activityMoveModeDidUpdate;
- (void)_addRegistryEntryForActivityType:(id)type goal:(id)goal endDate:(id)date;
- (void)_buildWorkoutOccurrenceDataWithWorkouts:(id)workouts priorVersionOccurrenceRegistry:(id)registry;
- (void)_cleanupDuplicateActivityTypes;
- (void)_cleanupUnsupportedGoalTypes;
- (void)_handleDidSaveCopiedManagedConfigurationForActivityType:(id)type;
- (void)_listenForNotifications;
- (void)_populateOccurrenceRegistryFromHealthDatabaseIfNeeded;
- (void)_updateMainRegistryWithIndividualRegistry:(id)registry;
- (void)_willEnterForeground;
- (void)dealloc;
- (void)hideActivityType:(id)type;
- (void)lastPoolLengthWithActivityType:(id)type completion:(id)completion;
- (void)lastPoolLengthWithCompletion:(id)completion;
- (void)lastWorkoutWithActivityType:(id)type handler:(id)handler;
- (void)lastWorkoutWithHandler:(id)handler;
- (void)registerWorkoutOccurrenceWithActivityType:(id)type goal:(id)goal date:(id)date;
- (void)resetOccurrences;
- (void)setActivityMoveMode:(int64_t)mode;
- (void)setActivityPickerActivityMoveMode:(int64_t)mode defaultActivityTypes:(id)types;
- (void)setCurrentDate:(id)date;
- (void)setIsWheelchairUser:(BOOL)user;
- (void)setOccurrenceRegistry:(id)registry;
- (void)showActivityType:(id)type;
@end

@implementation NLSmartGoalStore

- (NLSmartGoalStore)initWithHealthStore:(id)store
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, store);
  v6 = selfCopy;
  v5 = location[0];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = FIActivityMoveModeUserDefault();
  selfCopy = 0;
  selfCopy = [(NLSmartGoalStore *)v6 initWithHealthStore:v5 userDefaults:standardUserDefaults activityMoveMode:v3];
  v8 = MEMORY[0x277D82BE0](selfCopy);
  MEMORY[0x277D82BD8](standardUserDefaults);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (NLSmartGoalStore)initWithHealthStore:(id)store userDefaults:(id)defaults activityMoveMode:(int64_t)mode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, store);
  v22 = 0;
  objc_storeStrong(&v22, defaults);
  modeCopy = mode;
  v5 = selfCopy;
  selfCopy = 0;
  v20.receiver = v5;
  v20.super_class = NLSmartGoalStore;
  v11 = [(NLSmartGoalStore *)&v20 init];
  selfCopy = v11;
  objc_storeStrong(&selfCopy, v11);
  if (v11)
  {
    objc_storeStrong(&selfCopy->_healthStore, location[0]);
    objc_storeStrong(&selfCopy->_userDefaults, v22);
    v6 = [(NLSmartGoalStore *)selfCopy _readOccurrenceRegistryForKey:@"NLOccurenceDictionaryVersion5"];
    occurrenceRegistry = selfCopy->_occurrenceRegistry;
    selfCopy->_occurrenceRegistry = v6;
    *&v8 = MEMORY[0x277D82BD8](occurrenceRegistry).n128_u64[0];
    selfCopy->_activityMoveMode = modeCopy;
    [(NLSmartGoalStore *)selfCopy _listenForNotifications];
    if (selfCopy->_occurrenceRegistry)
    {
      [(NLSmartGoalStore *)selfCopy _cleanupUnsupportedGoalTypes];
      [(NLSmartGoalStore *)selfCopy _cleanupDuplicateActivityTypes];
      v14 = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __70__NLSmartGoalStore_initWithHealthStore_userDefaults_activityMoveMode___block_invoke;
      v18 = &unk_277D89120;
      v19 = MEMORY[0x277D82BE0](selfCopy);
      [NLGuidedActivityTypesMigrator migrateGuidedActivityTypesIfNeededWith:&v14];
      objc_storeStrong(&v19, 0);
    }

    else
    {
      selfCopy->_shouldPopulateOccurrenceRegistryFromHealthDatabase = 1;
      [(NLSmartGoalStore *)selfCopy _populateOccurrenceRegistryFromHealthDatabaseIfNeeded];
    }
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

void __70__NLSmartGoalStore_initWithHealthStore_userDefaults_activityMoveMode___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] hideActivityType:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setIsWheelchairUser:(BOOL)user
{
  if (user != self->_isWheelchairUser)
  {
    self->_isWheelchairUser = user;
  }
}

- (void)setActivityMoveMode:(int64_t)mode
{
  if (mode != self->_activityMoveMode)
  {
    self->_activityMoveMode = mode;
    [(NLSmartGoalStore *)self _cleanupUnsupportedGoalTypes];
  }
}

- (void)_cleanupUnsupportedGoalTypes
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v14 = a2;
  memset(__b, 0, sizeof(__b));
  occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  obj = [(NSDictionary *)occurrenceRegistry allValues];
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v16 count:16, MEMORY[0x277D82BD8](occurrenceRegistry).n128_f64[0]];
  if (v11)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v11;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v7);
      lastActivityGoal = [v13 lastActivityGoal];
      v3 = [lastActivityGoal compatibleWithActivityMoveMode:{-[NLSmartGoalStore activityMoveMode](selfCopy, "activityMoveMode")}];
      [v13 setLastActivityGoal:?];
      MEMORY[0x277D82BD8](v3);
      *&v2 = MEMORY[0x277D82BD8](lastActivityGoal).n128_u64[0];
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v16 count:16, v2];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
}

- (void)_cleanupDuplicateActivityTypes
{
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"NLOccurenceDictionaryDuplicatesRemoved"];
  v2 = [(NLSmartGoalStore *)self removeDuplicateActivityTypes:self->_occurrenceRegistry];
  [(NLSmartGoalStore *)self setOccurrenceRegistry:?];
  MEMORY[0x277D82BD8](v2);
}

- (id)removeDuplicateActivityTypes:(id)types
{
  v37 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, types);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  memset(__b, 0, sizeof(__b));
  obj = [location[0] allValues];
  v29 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
  if (v29)
  {
    v25 = *__b[2];
    v26 = 0;
    v27 = v29;
    while (1)
    {
      v24 = v26;
      if (*__b[2] != v25)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(__b[1] + 8 * v26);
      v19 = selfCopy;
      activityType = [v32 activityType];
      v20 = [(NLSmartGoalStore *)v19 _replaceDeprecatedActivityTypeWithNewActivityType:?];
      [v32 setActivityType:?];
      MEMORY[0x277D82BD8](v20);
      *&v3 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
      activityType2 = [v32 activityType];
      v30 = [NLSmartGoalStore _activityTypeKeyForActivityType:?];
      *&v4 = MEMORY[0x277D82BD8](activityType2).n128_u64[0];
      v23 = [dictionary objectForKey:{v30, v4}];
      *&v5 = MEMORY[0x277D82BD8](v23).n128_u64[0];
      if (v23)
      {
        v16 = [dictionary objectForKeyedSubscript:{v30, v5}];
        endDates = [v16 endDates];
        endDates2 = [v32 endDates];
        v13 = [endDates arrayByAddingObjectsFromArray:?];
        v12 = [dictionary objectForKeyedSubscript:v30];
        [v12 setEndDates:v13];
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](endDates2);
        MEMORY[0x277D82BD8](endDates);
        *&v6 = MEMORY[0x277D82BD8](v16).n128_u64[0];
        lastActivityGoal = [v32 lastActivityGoal];
        goalTypeIdentifier = [lastActivityGoal goalTypeIdentifier];
        *&v7 = MEMORY[0x277D82BD8](lastActivityGoal).n128_u64[0];
        if (goalTypeIdentifier)
        {
          lastActivityGoal2 = [v32 lastActivityGoal];
          v10 = [dictionary objectForKeyedSubscript:v30];
          [v10 setLastActivityGoal:lastActivityGoal2];
          MEMORY[0x277D82BD8](v10);
          MEMORY[0x277D82BD8](lastActivityGoal2);
        }
      }

      else
      {
        [dictionary setObject:v32 forKeyedSubscript:{v30, v5}];
      }

      objc_storeStrong(&v30, 0);
      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
        if (!v27)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v9 = MEMORY[0x277D82BE0](dictionary);
  objc_storeStrong(&dictionary, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_replaceDeprecatedActivityTypeWithNewActivityType:(id)type
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  if ([location[0] effectiveTypeIdentifier] == 14)
  {
    v6 = MEMORY[0x277D0A810];
    isIndoor = [location[0] isIndoor];
    metadata = [location[0] metadata];
    v9 = [v6 activityTypeWithHKWorkoutActivityTypeIdentifier:77 isIndoor:isIndoor metadata:?];
    MEMORY[0x277D82BD8](metadata);
  }

  else
  {
    v9 = MEMORY[0x277D82BE0](location[0]);
  }

  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

- (void)lastPoolLengthWithCompletion:(id)completion
{
  v10[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v4 = MEMORY[0x277D0A810];
  v9 = *MEMORY[0x277CCC510];
  v10[0] = &unk_282279C70;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 activityTypeWithHKWorkoutActivityTypeIdentifier:46 isIndoor:0 metadata:?];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  [(NLSmartGoalStore *)selfCopy lastPoolLengthWithActivityType:v6 completion:location[0], v3];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)lastPoolLengthWithActivityType:(id)type completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  v6 = selfCopy;
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __62__NLSmartGoalStore_lastPoolLengthWithActivityType_completion___block_invoke;
  v11 = &unk_277D89148;
  v12 = MEMORY[0x277D82BE0](v13);
  [(NLSmartGoalStore *)v6 lastWorkoutWithActivityType:v5 handler:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __62__NLSmartGoalStore_lastPoolLengthWithActivityType_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  if (!location[0] || ((v6[0] = [location[0] fiui_lapLength]) == 0 ? (v5 = 0) : ((*(a1[4] + 16))(), v5 = 1), objc_storeStrong(v6, 0), !v5))
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)lastWorkoutWithHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v3 = selfCopy;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __43__NLSmartGoalStore_lastWorkoutWithHandler___block_invoke;
  v8 = &unk_277D89148;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(NLSmartGoalStore *)v3 lastWorkoutWithActivityType:0 handler:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSmartGoalStore_lastWorkoutWithHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[4] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)lastWorkoutWithActivityType:(id)type handler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v6 = 0;
  objc_storeStrong(&v6, handler);
  v5 = [MEMORY[0x277CCD838] lastWorkoutQueryWithActivityType:location[0] completion:v6];
  if (v5)
  {
    [(HKHealthStore *)selfCopy->_healthStore executeQuery:v5];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (id)lastGoalForActivityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v8 = [NLSmartGoalStore _activityTypeKeyForActivityType:location[0]];
  occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  v7 = [(NSDictionary *)occurrenceRegistry objectForKeyedSubscript:v8];
  lastActivityGoal = [v7 lastActivityGoal];
  if (!lastActivityGoal)
  {
    lastActivityGoal = [MEMORY[0x277D0A838] goalWithGoalTypeIdentifier:0 value:0];
    MEMORY[0x277D82BD8](0);
  }

  v4 = MEMORY[0x277D82BE0](lastActivityGoal);
  objc_storeStrong(&lastActivityGoal, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (int64_t)numberOfCompletedActivitiesForType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v8 = [NLSmartGoalStore _activityTypeKeyForActivityType:location[0]];
  occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  v7 = [(NSDictionary *)occurrenceRegistry objectForKeyedSubscript:v8];
  *&v3 = MEMORY[0x277D82BD8](occurrenceRegistry).n128_u64[0];
  v6 = [v7 count];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (int64_t)inferLocationTypeForActivityTypeIdentifier:(unint64_t)identifier
{
  selfCopy = self;
  v13 = a2;
  identifierCopy = identifier;
  v11 = [NLSmartGoalStore _activityTypeKeyForActivityTypeIdentifier:"_activityTypeKeyForActivityTypeIdentifier:isIndoor:swimmingLocationType:metadata:" isIndoor:identifier swimmingLocationType:1 metadata:?];
  location = [NLSmartGoalStore _activityTypeKeyForActivityTypeIdentifier:identifierCopy isIndoor:0 swimmingLocationType:0 metadata:0];
  occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  v4 = [(NSDictionary *)occurrenceRegistry objectForKeyedSubscript:v11];
  v6 = [v4 count];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](occurrenceRegistry);
  occurrenceRegistry2 = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  v7 = [(NSDictionary *)occurrenceRegistry2 objectForKeyedSubscript:location];
  v9 = [v7 count];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](occurrenceRegistry2);
  if ((v6 + v9) <= 0.0 || v6 < (3.0 * v9))
  {
    if ((v6 + v9) <= 0.0 || v9 < (3.0 * v6))
    {
      v15 = 1;
    }

    else
    {
      v15 = 3;
    }
  }

  else
  {
    v15 = 2;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v11, 0);
  return v15;
}

+ (id)unsupportedWorkouts
{
  v5 = &unsupportedWorkouts_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_7);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = unsupportedWorkouts_unsupportedWorkouts;

  return v2;
}

- (void)_populateOccurrenceRegistryFromHealthDatabaseIfNeeded
{
  selfCopy = self;
  location[1] = a2;
  if ([(NLSmartGoalStore *)self shouldPopulateOccurrenceRegistryFromHealthDatabase])
  {
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_impl(&dword_20AEA4000, log, type, "Populating workout occurrence data from HealthKit...", v13, 2u);
    }

    objc_storeStrong(location, 0);
    [(NLSmartGoalStore *)selfCopy setShouldPopulateOccurrenceRegistryFromHealthDatabase:0];
    objc_initWeak(&v12, selfCopy);
    queue = dispatch_get_global_queue(21, 0);
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __73__NLSmartGoalStore__populateOccurrenceRegistryFromHealthDatabaseIfNeeded__block_invoke;
    v9 = &unk_277D89198;
    v10 = MEMORY[0x277D82BE0](selfCopy);
    objc_copyWeak(&v11, &v12);
    dispatch_async(queue, &v5);
    MEMORY[0x277D82BD8](queue);
    objc_destroyWeak(&v11);
    objc_storeStrong(&v10, 0);
    objc_destroyWeak(&v12);
  }
}

void __73__NLSmartGoalStore__populateOccurrenceRegistryFromHealthDatabaseIfNeeded__block_invoke(id *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v37[2] = a1;
  v37[1] = a1;
  v37[0] = [MEMORY[0x277CCD838] _predicateForObjectsFromAppleWatches];
  v36 = [MEMORY[0x277CBEAA8] date];
  v17 = [MEMORY[0x277CBEA80] currentCalendar];
  v35 = [v17 dateByAddingUnit:4 value:-1 toDate:v36 options:0];
  v34 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v35 endDate:v36 options:{0, MEMORY[0x277D82BD8](v17).n128_f64[0]}];
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = +[NLSmartGoalStore unsupportedWorkouts];
  v16 = [obj countByEnumeratingWithState:__b objects:v40 count:16];
  if (v16)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v16;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(__b[1] + 8 * v13);
      v30 = [v32 unsignedIntValue];
      v29 = [MEMORY[0x277CCD8D0] predicateForWorkoutsWithWorkoutActivityType:v30];
      location = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v29];
      [v33 addObject:location];
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v29, 0);
      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [obj countByEnumeratingWithState:__b objects:v40 count:16];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  *&v1 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  v39[0] = v37[0];
  v39[1] = v34;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:{2, v1}];
  v27 = [v10 arrayByAddingObjectsFromArray:v33];
  v26 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:{v27, MEMORY[0x277D82BD8](v10).n128_f64[0]}];
  v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:1];
  v9 = objc_alloc(MEMORY[0x277CCD8D0]);
  v7 = [MEMORY[0x277CCD720] workoutType];
  v8 = v26;
  v38 = v25;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __73__NLSmartGoalStore__populateOccurrenceRegistryFromHealthDatabaseIfNeeded__block_invoke_2;
  v23 = &unk_277D89170;
  objc_copyWeak(&v24, a1 + 5);
  v5 = [v9 initWithSampleType:v7 predicate:v8 limit:0 sortDescriptors:v6 resultsHandler:&v19];
  [a1[4] setHistoricalWorkoutQuery:v5];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v4 = *(a1[4] + 1);
  v3 = [a1[4] historicalWorkoutQuery];
  [v4 executeQuery:?];
  MEMORY[0x277D82BD8](v3);
  objc_destroyWeak(&v24);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(v37, 0);
  *MEMORY[0x277D85DE8];
}

void __73__NLSmartGoalStore__populateOccurrenceRegistryFromHealthDatabaseIfNeeded__block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24[1] = a1;
  if (v25)
  {
    _HKInitializeLogging();
    v24[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v29, v25);
      _os_log_error_impl(&dword_20AEA4000, v24[0], v23, "Failing populating occurrence data with error: %@", v29, 0xCu);
    }

    objc_storeStrong(v24, 0);
    WeakRetained = objc_loadWeakRetained(a1 + 4);
    [WeakRetained setShouldPopulateOccurrenceRegistryFromHealthDatabase:1];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = objc_loadWeakRetained(a1 + 4);
    v4 = *MEMORY[0x277D76758];
    [v14 addObserver:? selector:? name:? object:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
  }

  else if (v26)
  {
    _HKInitializeLogging();
    v22 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
      __os_log_helper_16_2_2_8_64_8_64(v28, v11, v25);
      _os_log_impl(&dword_20AEA4000, v22, v21, "Populating occurrence registry with %@ workouts with error %@", v28, 0x16u);
      MEMORY[0x277D82BD8](v11);
    }

    objc_storeStrong(&v22, 0);
    v10 = objc_loadWeakRetained(a1 + 4);
    v7 = v26;
    v9 = objc_loadWeakRetained(a1 + 4);
    v8 = [v9 _priorVersionOccurrenceRegistry];
    [v10 _buildWorkoutOccurrenceDataWithWorkouts:v7 priorVersionOccurrenceRegistry:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
  }

  else
  {
    _HKInitializeLogging();
    v20 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v5 = v20;
      v6 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_error_impl(&dword_20AEA4000, v5, v6, "Failing populating occurrence data due to no results", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_willEnterForeground
{
  [(NLSmartGoalStore *)self _populateOccurrenceRegistryFromHealthDatabaseIfNeeded];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76758] object:0];
  MEMORY[0x277D82BD8](defaultCenter);
}

- (void)_buildWorkoutOccurrenceDataWithWorkouts:(id)workouts priorVersionOccurrenceRegistry:(id)registry
{
  v49 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workouts);
  v44 = 0;
  objc_storeStrong(&v44, registry);
  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  v24 = MEMORY[0x277D82BE0](location[0]);
  v25 = [v24 countByEnumeratingWithState:__b objects:v48 count:16];
  if (v25)
  {
    v20 = *__b[2];
    v21 = 0;
    v22 = v25;
    while (1)
    {
      v19 = v21;
      if (*__b[2] != v20)
      {
        objc_enumerationMutation(v24);
      }

      v42 = *(__b[1] + 8 * v21);
      fiui_activityType = [v42 fiui_activityType];
      v4 = [(NLSmartGoalStore *)selfCopy _replaceDeprecatedActivityTypeWithNewActivityType:fiui_activityType];
      v5 = fiui_activityType;
      fiui_activityType = v4;
      *&v6 = MEMORY[0x277D82BD8](v5).n128_u64[0];
      v39 = [NLSmartGoalStore _activityTypeKeyForActivityType:fiui_activityType, v6];
      v38 = [v43 objectForKeyedSubscript:v39];
      if (!v38)
      {
        v7 = [NLActivityTypeOcurrenceRegistry registryWithActivityType:fiui_activityType dates:MEMORY[0x277CBEBF8]];
        v8 = v38;
        v38 = v7;
        MEMORY[0x277D82BD8](v8);
      }

      v17 = v38;
      endDate = [v42 endDate];
      [(NLActivityTypeOcurrenceRegistry *)v17 addOccurrenceWithEndDate:?];
      *&v9 = MEMORY[0x277D82BD8](endDate).n128_u64[0];
      _goalType = [v42 _goalType];
      _goal = [v42 _goal];
      v35 = [MEMORY[0x277D0A838] goalWithGoalTypeIdentifier:_goalType value:_goal];
      v10 = [v35 compatibleWithActivityMoveMode:{-[NLSmartGoalStore activityMoveMode](selfCopy, "activityMoveMode")}];
      v11 = v35;
      v35 = v10;
      *&v12 = MEMORY[0x277D82BD8](v11).n128_u64[0];
      [(NLActivityTypeOcurrenceRegistry *)v38 setLastActivityGoal:v35, v12];
      [v43 setObject:v38 forKeyedSubscript:v39];
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&_goal, 0);
      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&fiui_activityType, 0);
      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [v24 countByEnumeratingWithState:__b objects:v48 count:16];
        if (!v22)
        {
          break;
        }
      }
    }
  }

  *&v13 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  [NLSmartGoalStore _migratePropertiesFromOccurrenceRegistry:v44 toOccurrenceRegistry:v43, v13];
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v47, v43);
    _os_log_impl(&dword_20AEA4000, oslog, type, "Populated occurrence registry: %@", v47, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v15 = MEMORY[0x277D85CD0];
  v14 = MEMORY[0x277D85CD0];
  queue = v15;
  v26 = MEMORY[0x277D85DD0];
  v27 = -1073741824;
  v28 = 0;
  v29 = __91__NLSmartGoalStore__buildWorkoutOccurrenceDataWithWorkouts_priorVersionOccurrenceRegistry___block_invoke;
  v30 = &unk_277D88998;
  v31 = MEMORY[0x277D82BE0](selfCopy);
  v32 = MEMORY[0x277D82BE0](v43);
  dispatch_async(queue, &v26);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __91__NLSmartGoalStore__buildWorkoutOccurrenceDataWithWorkouts_priorVersionOccurrenceRegistry___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([*(*(a1 + 32) + 24) BOOLForKey:@"NLBuildWorkoutOccurrenceDataWithWorkoutsDisabled"])
  {
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v14 = 16;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      log = location[0];
      type = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_20AEA4000, log, type, "[SmartGoalStore] NLBuildWorkoutOccurrenceDataWithWorkoutsDisabled is on, skip building store from workouts", v13, 2u);
    }

    objc_storeStrong(location, 0);
    [*(a1 + 32) resetOccurrences];
  }

  else
  {
    [*(a1 + 32) setOccurrenceRegistry:*(a1 + 40)];
  }

  [*(*(a1 + 32) + 24) removeObjectForKey:?];
  [MEMORY[0x277CBEBD0] fu_backupStandardUserDefaultsKey:@"NLOccurenceDictionaryVersion4"];
  [*(*(a1 + 32) + 24) removeObjectForKey:?];
  [MEMORY[0x277CBEBD0] fu_backupStandardUserDefaultsKey:@"NLCachedQuickStartWorkoutsDataVersion2"];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __91__NLSmartGoalStore__buildWorkoutOccurrenceDataWithWorkouts_priorVersionOccurrenceRegistry___block_invoke_440;
  v11 = &unk_277D89120;
  v12 = MEMORY[0x277D82BE0](*(a1 + 32));
  [NLGuidedActivityTypesMigrator migrateGuidedActivityTypesIfNeededWith:&v7];
  v3 = [*(a1 + 32) didPopulateBlock];
  *&v1 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (v3)
  {
    v2 = [*(a1 + 32) didPopulateBlock];
    v2[2]();
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(&v12, 0);
}

void __91__NLSmartGoalStore__buildWorkoutOccurrenceDataWithWorkouts_priorVersionOccurrenceRegistry___block_invoke_440(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] hideActivityType:location[0]];
  objc_storeStrong(location, 0);
}

+ (void)_migratePropertiesFromOccurrenceRegistry:(id)registry toOccurrenceRegistry:(id)occurrenceRegistry
{
  v26 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, registry);
  v23 = 0;
  objc_storeStrong(&v23, occurrenceRegistry);
  if (location[0])
  {
    memset(__b, 0, sizeof(__b));
    allKeys = [location[0] allKeys];
    v15 = [allKeys countByEnumeratingWithState:__b objects:v25 count:16];
    if (v15)
    {
      v11 = *__b[2];
      v12 = 0;
      v13 = v15;
      while (1)
      {
        v10 = v12;
        if (*__b[2] != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v22 = *(__b[1] + 8 * v12);
        v20 = [location[0] objectForKeyedSubscript:v22];
        activityType = [v20 activityType];
        v19 = [NLSmartGoalStore _activityTypeKeyForActivityType:?];
        *&v4 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
        v18 = [v23 objectForKeyedSubscript:{v19, v4}];
        if (v18)
        {
          hidden = [v20 hidden];
          [v18 setHidden:hidden];
        }

        else
        {
          activityType2 = [v20 activityType];
          v17 = [NLActivityTypeOcurrenceRegistry registryWithActivityType:"registryWithActivityType:dates:" dates:?];
          *&v6 = MEMORY[0x277D82BD8](activityType2).n128_u64[0];
          hidden2 = [v20 hidden];
          [(NLActivityTypeOcurrenceRegistry *)v17 setHidden:hidden2];
          [v23 setObject:v17 forKeyedSubscript:v19];
          objc_storeStrong(&v17, 0);
        }

        objc_storeStrong(&v18, 0);
        objc_storeStrong(&v19, 0);
        objc_storeStrong(&v20, 0);
        ++v12;
        if (v10 + 1 >= v13)
        {
          v12 = 0;
          v13 = [allKeys countByEnumeratingWithState:__b objects:v25 count:16];
          if (!v13)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](allKeys);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_readOccurrenceRegistryForKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v5 = 0;
  v4 = MEMORY[0x277D82BE0](0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)setOccurrenceRegistry:(id)registry
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, registry);
  if (location[0])
  {
    objc_storeStrong(&selfCopy->_occurrenceRegistry, location[0]);
    v8 = 0;
    occurrenceRegistry = selfCopy->_occurrenceRegistry;
    obj = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:occurrenceRegistry requiringSecureCoding:1 error:&obj];
    objc_storeStrong(&v8, obj);
    v7 = v4;
    if (v8)
    {
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v12, v8);
        _os_log_error_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_ERROR, "Failed to encode the occurrence registry: %{public}@", v12, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v9 = 1;
    }

    else
    {
      [(NSUserDefaults *)selfCopy->_userDefaults setObject:v7 forKey:?];
      [MEMORY[0x277CBEBD0] fu_backupStandardUserDefaultsKey:@"NLOccurenceDictionaryVersion5"];
      v9 = 0;
    }

    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v8, 0);
  }

  else
  {
    objc_storeStrong(&selfCopy->_occurrenceRegistry, 0);
    [(NSUserDefaults *)selfCopy->_userDefaults removeObjectForKey:?];
    [MEMORY[0x277CBEBD0] fu_backupStandardUserDefaultsKey:@"NLOccurenceDictionaryVersion5"];
    v9 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_visibleActivityTypesWithDefaultActivityTypes:(id)types unsupportedActivityTypes:(id)activityTypes
{
  v40 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, types);
  v35 = 0;
  objc_storeStrong(&v35, activityTypes);
  v34 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  v25 = MEMORY[0x277D82BE0](location[0]);
  v26 = [v25 countByEnumeratingWithState:__b objects:v39 count:16];
  if (v26)
  {
    v21 = *__b[2];
    v22 = 0;
    v23 = v26;
    while (1)
    {
      v20 = v22;
      if (*__b[2] != v21)
      {
        objc_enumerationMutation(v25);
      }

      v33 = *(__b[1] + 8 * v22);
      v31 = [NLSmartGoalStore _activityTypeKeyForActivityType:v33];
      occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
      v30 = [(NSDictionary *)occurrenceRegistry objectForKeyedSubscript:v31];
      *&v4 = MEMORY[0x277D82BD8](occurrenceRegistry).n128_u64[0];
      v29 = 0;
      if (v30)
      {
        v29 = ([v30 hidden] & 1) == 0;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        [v34 addObject:v33];
      }

      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
      ++v22;
      if (v20 + 1 >= v23)
      {
        v22 = 0;
        v23 = [v25 countByEnumeratingWithState:__b objects:v39 count:16];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v25);
  memset(v27, 0, sizeof(v27));
  _visibleRegistries = [(NLSmartGoalStore *)selfCopy _visibleRegistries];
  v18 = [_visibleRegistries countByEnumeratingWithState:v27 objects:v38 count:16];
  if (v18)
  {
    v14 = *v27[2];
    v15 = 0;
    v16 = v18;
    while (1)
    {
      v13 = v15;
      if (*v27[2] != v14)
      {
        objc_enumerationMutation(_visibleRegistries);
      }

      v28 = *(v27[1] + 8 * v15);
      v10 = v35;
      activityType = [v28 activityType];
      v12 = [v10 containsObject:?];
      v5 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
      if ((v12 & 1) == 0)
      {
        v8 = v34;
        activityType2 = [v28 activityType];
        [v8 addObject:?];
        v5 = MEMORY[0x277D82BD8](activityType2).n128_u64[0];
      }

      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [_visibleRegistries countByEnumeratingWithState:v27 objects:v38 count:{16, *&v5}];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](_visibleRegistries);
  v7 = MEMORY[0x277D82BE0](v34);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)containsActivityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  v5 = [NLSmartGoalStore _activityTypeKeyForActivityType:location[0]];
  v3 = [(NSDictionary *)occurrenceRegistry objectForKeyedSubscript:?];
  v7 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](occurrenceRegistry);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)mostRecentOccurrenceDateForActivityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v13 = [NLSmartGoalStore _activityTypeKeyForActivityType:location[0]];
  occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  v12 = [(NSDictionary *)occurrenceRegistry objectForKeyedSubscript:v13];
  *&v3 = MEMORY[0x277D82BD8](occurrenceRegistry).n128_u64[0];
  v10 = 0;
  v8 = 0;
  if (v12)
  {
    endDatesWithinSpecifiedDateRange = [v12 endDatesWithinSpecifiedDateRange];
    v10 = 1;
    lastObject = [endDatesWithinSpecifiedDateRange lastObject];
    v8 = 1;
    v4 = MEMORY[0x277D82BE0](lastObject);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](0);
  }

  v16 = v4;
  if (v8)
  {
    MEMORY[0x277D82BD8](lastObject);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](endDatesWithinSpecifiedDateRange);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  v5 = v16;

  return v5;
}

- (BOOL)isHiddenActivityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v8 = [NLSmartGoalStore _activityTypeKeyForActivityType:location[0]];
  occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  v7 = [(NSDictionary *)occurrenceRegistry objectForKeyedSubscript:v8];
  *&v3 = MEMORY[0x277D82BD8](occurrenceRegistry).n128_u64[0];
  hidden = [v7 hidden];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return hidden & 1;
}

- (id)_visibleRegistries
{
  v7[2] = self;
  v7[1] = a2;
  occurrenceRegistry = [(NLSmartGoalStore *)self occurrenceRegistry];
  allValues = [(NSDictionary *)occurrenceRegistry allValues];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_444];
  v7[0] = [(NSArray *)allValues filteredArrayUsingPredicate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](allValues);
  MEMORY[0x277D82BD8](occurrenceRegistry);
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

BOOL __38__NLSmartGoalStore__visibleRegistries__block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5 = [location[0] hidden] == 0;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)_sortedRegistryList
{
  v44[1] = *MEMORY[0x277D85DE8];
  v41[2] = self;
  v41[1] = a2;
  v41[0] = [(NLSmartGoalStore *)self _visibleRegistries];
  v40 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
  v44[0] = v40;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
  v39 = [v41[0] sortedArrayUsingDescriptors:?];
  MEMORY[0x277D82BD8](v24);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v23 = type;
    __os_log_helper_16_0_0(v36);
    _os_log_impl(&dword_20AEA4000, log, v23, "[SmartGoalStore] sortedRegistryList begin", v36, 2u);
  }

  objc_storeStrong(&oslog, 0);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v39);
  v21 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
  if (v21)
  {
    v17 = *__b[2];
    v18 = 0;
    v19 = v21;
    while (1)
    {
      v16 = v18;
      if (*__b[2] != v17)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(__b[1] + 8 * v18);
      activityType = [v35 activityType];
      v32 = [NLSmartGoalStore _activityTypeKeyForActivityType:activityType];
      _HKInitializeLogging();
      v31 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v31;
        v12 = v30;
        _mostRecentOccurrence = [v35 _mostRecentOccurrence];
        v7 = MEMORY[0x277D82BE0](_mostRecentOccurrence);
        v29 = v7;
        v8 = v32;
        localizedName = [activityType localizedName];
        v9 = MEMORY[0x277D82BE0](localizedName);
        v28 = v9;
        endDates = [v35 endDates];
        v10 = [endDates count];
        if ([activityType isGuided])
        {
          v2 = @"YES";
        }

        else
        {
          v2 = @"NO";
        }

        __os_log_helper_16_2_5_8_64_8_64_8_64_8_0_8_64(v42, v7, v8, v9, v10, v2);
        _os_log_impl(&dword_20AEA4000, v11, v12, "[SmartGoalStore] sortedRegistryList item, mostRecent: %@, key: %@ (%@), endDates: %lu, isGuided: %@", v42, 0x34u);
        MEMORY[0x277D82BD8](endDates);
        MEMORY[0x277D82BD8](localizedName);
        MEMORY[0x277D82BD8](_mostRecentOccurrence);
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v29, 0);
      }

      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&activityType, 0);
      ++v18;
      if (v16 + 1 >= v19)
      {
        v18 = 0;
        v19 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
        if (!v19)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  _HKInitializeLogging();
  v27 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v27;
    v6 = v26;
    __os_log_helper_16_0_0(v25);
    _os_log_impl(&dword_20AEA4000, v5, v6, "[SmartGoalStore] sortedRegistryList end", v25, 2u);
  }

  objc_storeStrong(&v27, 0);
  v4 = MEMORY[0x277D82BE0](v39);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(v41, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_addRegistryEntryForActivityType:(id)type goal:(id)goal endDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v15 = 0;
  objc_storeStrong(&v15, goal);
  v14 = 0;
  objc_storeStrong(&v14, date);
  v13 = [NLSmartGoalStore _activityTypeKeyForActivityType:location[0]];
  occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  v12 = [(NSDictionary *)occurrenceRegistry objectForKeyedSubscript:v13];
  v5 = MEMORY[0x277D82BD8](occurrenceRegistry).n128_u64[0];
  if (!v12)
  {
    v12 = [(NLSmartGoalStore *)selfCopy _createRegistryForActivityType:location[0], *&v5];
    v5 = MEMORY[0x277D82BD8](0).n128_u64[0];
  }

  [v12 addOccurrenceWithEndDate:{v14, *&v5}];
  v6 = [v15 compatibleWithActivityMoveMode:{-[NLSmartGoalStore activityMoveMode](selfCopy, "activityMoveMode")}];
  v7 = v15;
  v15 = v6;
  *&v8 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [v12 setLastActivityGoal:{v15, v8}];
  [v12 setHidden:0];
  [(NLSmartGoalStore *)selfCopy _updateMainRegistryWithIndividualRegistry:v12];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (id)_createRegistryForActivityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v5 = [NLActivityTypeOcurrenceRegistry registryWithActivityType:location[0] dates:MEMORY[0x277CBEBF8]];
  [(NLActivityTypeOcurrenceRegistry *)v5 setCurrentDate:selfCopy->_currentDate];
  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)registerWorkoutOccurrenceWithActivityType:(id)type goal:(id)goal date:(id)date
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v12 = 0;
  objc_storeStrong(&v12, goal);
  v11 = 0;
  objc_storeStrong(&v11, date);
  if (+[WOStoreDemoModeProvider isRunningInStoreDemoMode])
  {
    v10 = 1;
  }

  else
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v17, location[0]);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "Register occurence with activity: %@", v17, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (location[0])
    {
      [(NLSmartGoalStore *)selfCopy _addRegistryEntryForActivityType:location[0] goal:v12 endDate:v11];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v15 = @"activityType";
      v16 = location[0];
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      [defaultCenter postNotificationName:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0 userInfo:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](defaultCenter);
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateMainRegistryWithIndividualRegistry:(id)registry
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, registry);
  activityType = [location[0] activityType];
  v7 = [NLSmartGoalStore _activityTypeKeyForActivityType:activityType];
  occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  v6 = [(NSDictionary *)occurrenceRegistry mutableCopy];
  *&v3 = MEMORY[0x277D82BD8](occurrenceRegistry).n128_u64[0];
  [v6 setObject:location[0] forKeyedSubscript:{v7, v3}];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v6];
  [(NLSmartGoalStore *)selfCopy setOccurrenceRegistry:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&activityType, 0);
  objc_storeStrong(location, 0);
}

- (void)showActivityType:(id)type
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  _HKInitializeLogging();
  v10 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v15, location[0]);
    _os_log_impl(&dword_20AEA4000, v10, v9, "Show activity type in NLSmartGoalStore occurrence registry. activity: %@", v15, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  v8 = [NLSmartGoalStore _activityTypeKeyForActivityType:location[0]];
  occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  v7 = [(NSDictionary *)occurrenceRegistry objectForKeyedSubscript:v8];
  v3 = MEMORY[0x277D82BD8](occurrenceRegistry).n128_u64[0];
  if (!v7)
  {
    v7 = [(NLSmartGoalStore *)selfCopy _createRegistryForActivityType:location[0], *&v3];
    v3 = MEMORY[0x277D82BD8](0).n128_u64[0];
  }

  [v7 setHidden:{0, *&v3}];
  [(NLSmartGoalStore *)selfCopy _updateMainRegistryWithIndividualRegistry:v7];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = @"activityType";
  v14 = location[0];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [defaultCenter postNotificationName:@"NLSmartGoalStoreDidShowActivityType" object:? userInfo:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](defaultCenter);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)hideActivityType:(id)type
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  _HKInitializeLogging();
  v10 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v15, location[0]);
    _os_log_impl(&dword_20AEA4000, v10, v9, "Hide activity type in NLSmartGoalStore occurrence registry. activity: %@", v15, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  v8 = [NLSmartGoalStore _activityTypeKeyForActivityType:location[0]];
  occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  v7 = [(NSDictionary *)occurrenceRegistry objectForKeyedSubscript:v8];
  v3 = MEMORY[0x277D82BD8](occurrenceRegistry).n128_u64[0];
  if (!v7)
  {
    v7 = [(NLSmartGoalStore *)selfCopy _createRegistryForActivityType:location[0], *&v3];
    v3 = MEMORY[0x277D82BD8](0).n128_u64[0];
  }

  [v7 setHidden:{1, *&v3}];
  [(NLSmartGoalStore *)selfCopy _updateMainRegistryWithIndividualRegistry:v7];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = @"activityType";
  v14 = location[0];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [defaultCenter postNotificationName:@"NLSmartGoalStoreDidHideActivityType" object:? userInfo:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](defaultCenter);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)workoutActivityTypesInFrequencyOrderDescendingWithDefaultActivities:(id)activities unsupportedActivities:(id)unsupportedActivities
{
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activities);
  v36 = 0;
  objc_storeStrong(&v36, unsupportedActivities);
  if (+[WOStoreDemoModeProvider isRunningInStoreDemoMode])
  {
    v39 = MEMORY[0x277D82BE0](location[0]);
    v35 = 1;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    _sortedRegistryList = [(NLSmartGoalStore *)selfCopy _sortedRegistryList];
    memset(__b, 0, sizeof(__b));
    v21 = MEMORY[0x277D82BE0](_sortedRegistryList);
    v22 = [v21 countByEnumeratingWithState:__b objects:v42 count:16];
    if (v22)
    {
      v18 = *__b[2];
      v19 = 0;
      v20 = v22;
      while (1)
      {
        v17 = v19;
        if (*__b[2] != v18)
        {
          objc_enumerationMutation(v21);
        }

        v32 = *(__b[1] + 8 * v19);
        v15 = array;
        activityType = [v32 activityType];
        [v15 addObject:?];
        *&v4 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
        ++v19;
        if (v17 + 1 >= v20)
        {
          v19 = 0;
          v20 = [v21 countByEnumeratingWithState:__b objects:v42 count:{16, v4}];
          if (!v20)
          {
            break;
          }
        }
      }
    }

    v30 = [(NLSmartGoalStore *)selfCopy _visibleActivityTypesWithDefaultActivityTypes:location[0] unsupportedActivityTypes:v36, MEMORY[0x277D82BD8](v21).n128_f64[0]];
    v29 = [v30 mutableCopy];
    v28 = objc_opt_new();
    v27 = [MEMORY[0x277CBEB98] setWithArray:v36];
    memset(v25, 0, sizeof(v25));
    v13 = MEMORY[0x277D82BE0](array);
    v14 = [v13 countByEnumeratingWithState:v25 objects:v41 count:16];
    if (v14)
    {
      v10 = *v25[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*v25[2] != v10)
        {
          objc_enumerationMutation(v13);
        }

        v26 = *(v25[1] + 8 * v11);
        if ([v27 containsObject:v26])
        {
          _HKInitializeLogging();
          oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            log = oslog;
            __os_log_helper_16_2_1_8_64(v40, v26);
            _os_log_impl(&dword_20AEA4000, log, OS_LOG_TYPE_DEFAULT, "Unsupported activity type found when providing activity types for activity picker. activity_type=%@", v40, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
        }

        else
        {
          if ([v26 isStandard])
          {
            [v29 removeObject:v26];
          }

          [v28 addObject:v26];
        }

        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [v13 countByEnumeratingWithState:v25 objects:v41 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    *&v5 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v39 = [v28 arrayByAddingObjectsFromArray:{v29, v5}];
    v35 = 1;
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&_sortedRegistryList, 0);
    objc_storeStrong(&array, 0);
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v39;

  return v6;
}

- (id)activityTypeKeyForActivityType:(id)type
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v4 = [NLSmartGoalStore _activityTypeKeyForActivityType:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)setActivityPickerActivityMoveMode:(int64_t)mode defaultActivityTypes:(id)types
{
  location[3] = self;
  location[2] = a2;
  location[1] = mode;
  location[0] = 0;
  objc_storeStrong(location, types);
  objc_storeStrong(location, 0);
}

+ (id)_activityTypeKeyForActivityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v7 = selfCopy;
  effectiveTypeIdentifier = [location[0] effectiveTypeIdentifier];
  isIndoor = [location[0] isIndoor];
  swimmingLocationType = [location[0] swimmingLocationType];
  metadata = [location[0] metadata];
  v9 = [v7 _activityTypeKeyForActivityTypeIdentifier:effectiveTypeIdentifier isIndoor:isIndoor swimmingLocationType:swimmingLocationType metadata:?];
  MEMORY[0x277D82BD8](metadata);
  objc_storeStrong(location, 0);

  return v9;
}

+ (id)_activityTypeKeyForActivityTypeIdentifier:(unint64_t)identifier isIndoor:(BOOL)indoor swimmingLocationType:(int64_t)type metadata:(id)metadata
{
  selfCopy = self;
  v21 = a2;
  identifierCopy = identifier;
  indoorCopy = indoor;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, metadata);
  v16 = 0;
  if (identifierCopy == 46)
  {
    typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu.%lu", 46, typeCopy];
  }

  else
  {
    typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", identifierCopy];
  }

  v7 = v16;
  v16 = typeCopy;
  *&v8 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v15 = [SeymourCatalogMediaTypeHelper guidedTypeStringFrom:location, v8];
  if (!v15 && indoorCopy && ([MEMORY[0x277D0A810] shouldDisambiguateOnLocationType:identifierCopy] & 1) != 0)
  {
    v9 = [v16 stringByAppendingString:@".indoor"];
    v10 = v16;
    v16 = v9;
    MEMORY[0x277D82BD8](v10);
  }

  if (v15)
  {
    v11 = [v16 stringByAppendingString:v15];
    v12 = v16;
    v16 = v11;
    MEMORY[0x277D82BD8](v12);
  }

  v14 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);

  return v14;
}

- (id)_activityTypeForWorkoutOccurrenceKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  integerValue = [location[0] integerValue];
  if (!integerValue)
  {
    _HKInitializeLogging();
    v18 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v23, location[0]);
      _os_log_error_impl(&dword_20AEA4000, v18, v17, "Cannot parse invalid occurrence key %{public}@", v23, 0xCu);
    }

    objc_storeStrong(&v18, 0);
  }

  v16 = 0;
  if (integerValue == 46)
  {
    v15 = [location[0] componentsSeparatedByString:@"."];
    if ([v15 count] > 1)
    {
      v11 = [v15 objectAtIndexedSubscript:?];
      integerValue2 = [v11 integerValue];
      *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
      v14[1] = integerValue2;
      v21 = *MEMORY[0x277CCC510];
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{integerValue2, v3}];
      v22 = v13;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v5 = v16;
      v16 = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v13);
    }

    objc_storeStrong(&v15, 0);
  }

  v6 = [location[0] hasSuffix:{@"indoor", integerValue, MEMORY[0x277D0A810]}];
  v14[0] = [v9 activityTypeWithHKWorkoutActivityTypeIdentifier:v8 isIndoor:v6 metadata:v16];
  v10 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_listenForNotifications
{
  selfCopy = self;
  v18[1] = a2;
  name = *MEMORY[0x277CCB790];
  v6 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__NLSmartGoalStore__listenForNotifications__block_invoke;
  v17[3] = &unk_277D891E0;
  v18[0] = MEMORY[0x277D82BE0](selfCopy);
  notify_register_dispatch(name, &self->_activityMoveModeDidUpdateNotificationToken, queue, v17);
  MEMORY[0x277D82BD8](queue);
  objc_initWeak(&location, selfCopy);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __43__NLSmartGoalStore__listenForNotifications__block_invoke_2;
  v14 = &unk_277D89208;
  objc_copyWeak(v15, &location);
  v3 = [defaultCenter addObserverForName:@"NLSmartGoalStoreDidSaveCopiedManagedConfiguration" object:0 queue:mainQueue usingBlock:&v10];
  MEMORY[0x277D82BD8](mainQueue);
  MEMORY[0x277D82BD8](defaultCenter);
  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
  objc_storeStrong(v18, 0);
}

void __43__NLSmartGoalStore__listenForNotifications__block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6[1] = a1;
  v6[0] = [location[0] object];
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  isKindOfClass = 0;
  if (WeakRetained)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  MEMORY[0x277D82BD8](WeakRetained);
  if (isKindOfClass)
  {
    v2 = objc_loadWeakRetained(a1 + 4);
    [v2 _handleDidSaveCopiedManagedConfigurationForActivityType:v6[0]];
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_handleDidSaveCopiedManagedConfigurationForActivityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  [(NLSmartGoalStore *)selfCopy showActivityType:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_activityMoveModeDidUpdate
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7[1] = a2;
  [(NLSmartGoalStore *)self setActivityMoveMode:FIActivityMoveModeUserDefault()];
  _HKInitializeLogging();
  v7[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v7[0];
    type = v6;
    [(NLSmartGoalStore *)selfCopy activityMoveMode];
    v4 = NLHKActivityMoveModeString();
    v5 = MEMORY[0x277D82BE0](v4);
    __os_log_helper_16_2_1_8_64(v9, v5);
    _os_log_impl(&dword_20AEA4000, log, type, "Did receive HKActivityMoveModeDidUpdateNotification in NLSmartGoalStore. activityMoveMode: %@", v9, 0xCu);
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(v7, 0);
  *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (notify_is_valid_token(self->_activityMoveModeDidUpdateNotificationToken))
  {
    notify_cancel(selfCopy->_activityMoveModeDidUpdateNotificationToken);
  }

  v2.receiver = selfCopy;
  v2.super_class = NLSmartGoalStore;
  [(NLSmartGoalStore *)&v2 dealloc];
}

- (void)resetOccurrences
{
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  [(NLSmartGoalStore *)self setOccurrenceRegistry:?];
  MEMORY[0x277D82BD8](dictionary);
}

- (void)setCurrentDate:(id)date
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  objc_storeStrong(&selfCopy->_currentDate, location[0]);
  occurrenceRegistry = [(NLSmartGoalStore *)selfCopy occurrenceRegistry];
  allValues = [occurrenceRegistry allValues];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](allValues);
  v8 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v5);
      [v10 setCurrentDate:location[0]];
      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&allValues, 0);
  objc_storeStrong(&occurrenceRegistry, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end
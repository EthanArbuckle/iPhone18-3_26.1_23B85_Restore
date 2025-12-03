@interface TPSContextualEvent
+ (id)eventDictionaryForIdentifier:(id)identifier type:(int64_t)type status:(int64_t)status;
+ (int64_t)typeFromEventDictionary:(id)dictionary;
- (BOOL)canBeRemoved;
- (BOOL)observedWithResults:(id)results;
- (NSDate)eventSinceDate;
- (TPSContextualEvent)initWithCoder:(id)coder;
- (TPSContextualEvent)initWithDictionary:(id)dictionary;
- (double)daysSinceLastMajorUpdateTimeIntervalInSeconds;
- (double)eventTimeToLiveInterval;
- (double)lookbackTimeIntervalInSeconds;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)eventSinceLastMajorUpdateDate;
- (unsigned)currentObservationCount;
- (void)addObserverIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)removeAllObservations;
- (void)removeObserverIdentifiers:(id)identifiers;
- (void)removeOutdatedObservationDates;
@end

@implementation TPSContextualEvent

+ (int64_t)typeFromEventDictionary:(id)dictionary
{
  v3 = [dictionary TPSSafeNumberForKey:@"type"];
  v4 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

+ (id)eventDictionaryForIdentifier:(id)identifier type:(int64_t)type status:(int64_t)status
{
  v16[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15[0] = @"id";
  uUIDString = identifierCopy;
  if (!identifierCopy)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  v16[0] = uUIDString;
  v15[1] = @"type";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v16[1] = v10;
  v15[2] = @"status";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  if (!identifierCopy)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (TPSContextualEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = TPSContextualEvent;
  v5 = [(TPSSerializableObject *)&v23 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
LABEL_13:
    v13 = v5;
    goto LABEL_14;
  }

  v6 = [TPSContextualEvent identifierFromEventInfoDictionary:dictionaryCopy];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [dictionaryCopy TPSSafeStringForKey:@"key"];
  key = v5->_key;
  v5->_key = v8;

  if ([(NSString *)v5->_identifier length])
  {
    v5->_type = [TPSContextualEvent typeFromEventDictionary:dictionaryCopy];
    v10 = [dictionaryCopy TPSSafeNumberForKey:@"status"];
    v11 = v10;
    if (v10)
    {
      intValue = [v10 intValue];
    }

    else
    {
      intValue = 1;
    }

    v5->_status = intValue;
    v14 = [dictionaryCopy TPSSafeIntForKey:@"minObservations"];
    v5->_minObservationCount = v14;
    if (!v14 || !v5->_status)
    {
      v5->_minObservationCount = 1;
    }

    v15 = [dictionaryCopy TPSSafeDictionaryForKey:@"state"];
    v16 = [(TPSContextualEvent *)v5 newStateFromStateDictionary:v15];
    state = v5->_state;
    v5->_state = v16;

    [(TPSContextualEvent *)v5->_state setType:v5->_type];
    v5->_lookBackDays = [dictionaryCopy TPSSafeIntegerForKey:@"lookBackDays"];
    v5->_daysSinceLastMajorUpdate = 0x7FFFFFFFFFFFFFFFLL;
    v18 = [dictionaryCopy TPSSafeNumberForKey:@"daysSinceLastMajorUpdate"];
    v19 = v18;
    if (v18)
    {
      v5->_daysSinceLastMajorUpdate = [v18 integerValue];
    }

    v20 = [dictionaryCopy TPSSafeDictionaryForKey:@"userInfoPersistent"];
    userInfoPersistent = v5->_userInfoPersistent;
    v5->_userInfoPersistent = v20;

    goto LABEL_13;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (TPSContextualEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = TPSContextualEvent;
  v5 = [(TPSSerializableObject *)&v39 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntForKey:@"type"];
    v5->_status = [coderCopy decodeIntForKey:@"status"];
    v5->_minObservationCount = [coderCopy decodeIntForKey:@"minObservations"];
    v5->_lookBackDays = [coderCopy decodeIntegerForKey:@"lookBackDays"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daysSinceLastMajorUpdate"];
    v7 = v6;
    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_daysSinceLastMajorUpdate = integerValue;
    v9 = objc_opt_class();
    v10 = [coderCopy decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"userInfoPersistent"];
    userInfoPersistent = v5->_userInfoPersistent;
    v5->_userInfoPersistent = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchedDate"];
    matchedDate = v5->_matchedDate;
    v5->_matchedDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookmark"];
    bookmark = v5->_bookmark;
    v5->_bookmark = v14;

    if (v5->_matchedDate && [MEMORY[0x1E695DF00] isDateExpired:-63072000.0 maxTimeInterval:?])
    {
      v16 = v5->_matchedDate;
      v5->_matchedDate = 0;
    }

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventSinceDate"];
    eventSinceDate = v5->_eventSinceDate;
    v5->_eventSinceDate = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [v25 setWithObjects:{v26, v27, v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"observationMap"];
    observationMap = v5->_observationMap;
    v5->_observationMap = v30;

    [(TPSContextualEvent *)v5 removeOutdatedObservationDates];
    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"observerIdentifiers"];

    if (v35)
    {
      v36 = [MEMORY[0x1E695DFA8] setWithArray:v35];
      observerIdentifiers = v5->_observerIdentifiers;
      v5->_observerIdentifiers = v36;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSContextualEvent;
  coderCopy = coder;
  [(TPSSerializableObject *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v7.receiver, v7.super_class}];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeInt:self->_minObservationCount forKey:@"minObservations"];
  [coderCopy encodeInteger:self->_lookBackDays forKey:@"lookBackDays"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_daysSinceLastMajorUpdate];
  [coderCopy encodeObject:v5 forKey:@"daysSinceLastMajorUpdate"];

  [coderCopy encodeObject:self->_userInfoPersistent forKey:@"userInfoPersistent"];
  [coderCopy encodeObject:self->_bookmark forKey:@"bookmark"];
  [coderCopy encodeObject:self->_matchedDate forKey:@"matchedDate"];
  [coderCopy encodeObject:self->_eventSinceDate forKey:@"eventSinceDate"];
  [coderCopy encodeObject:self->_identifier forKey:@"id"];
  [coderCopy encodeObject:self->_key forKey:@"key"];
  [coderCopy encodeObject:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_observationMap forKey:@"observationMap"];
  allObjects = [(NSMutableSet *)self->_observerIdentifiers allObjects];
  [coderCopy encodeObject:allObjects forKey:@"observerIdentifiers"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [v4 setType:self->_type];
  [v4 setStatus:self->_status];
  [v4 setMinObservationCount:self->_minObservationCount];
  [v4 setLookBackDays:self->_lookBackDays];
  [v4 setDaysSinceLastMajorUpdate:self->_daysSinceLastMajorUpdate];
  [v4 setUserInfoPersistent:self->_userInfoPersistent];
  [v4 setBookmark:self->_bookmark];
  [v4 setMatchedDate:self->_matchedDate];
  [v4 setIdentifier:self->_identifier];
  [v4 setKey:self->_key];
  [v4 setState:self->_state];
  [v4 setObservationMap:self->_observationMap];
  [v4 setObserverIdentifiers:self->_observerIdentifiers];
  return v4;
}

- (unsigned)currentObservationCount
{
  os_unfair_lock_lock(&_sharedEventLock);
  LODWORD(self) = [(NSMutableDictionary *)self->_observationMap count];
  os_unfair_lock_unlock(&_sharedEventLock);
  return self;
}

- (NSDate)eventSinceDate
{
  v3 = self->_eventSinceDate;
  if (!v3)
  {
    if ([(TPSContextualEvent *)self hasLookBackDays])
    {
      v4 = MEMORY[0x1E695DF00];
      [(TPSContextualEvent *)self lookbackTimeIntervalInSeconds];
      v3 = [v4 dateWithTimeIntervalSinceNow:?];
    }

    else
    {
      v3 = 0;
    }
  }

  eventSinceLastMajorUpdateDate = [(TPSContextualEvent *)self eventSinceLastMajorUpdateDate];
  v6 = eventSinceLastMajorUpdateDate;
  if (eventSinceLastMajorUpdateDate)
  {
    if (v3)
    {
      v7 = [(NSDate *)v3 laterDate:eventSinceLastMajorUpdateDate];

      v3 = v7;
    }

    else
    {
      v3 = eventSinceLastMajorUpdateDate;
    }
  }

  return v3;
}

- (BOOL)canBeRemoved
{
  os_unfair_lock_lock(&_sharedEventLock);
  LOBYTE(self) = [(NSMutableSet *)self->_observerIdentifiers count]== 0;
  os_unfair_lock_unlock(&_sharedEventLock);
  return self;
}

- (double)lookbackTimeIntervalInSeconds
{
  +[TPSDefaultsManager contextualEventLookBackDaysInSeconds];
  if (v3 <= 0.0)
  {
    v3 = (86400 * [(TPSContextualEvent *)self lookBackDays]);
  }

  return -v3;
}

- (double)daysSinceLastMajorUpdateTimeIntervalInSeconds
{
  v3 = +[TPSDefaultsManager contextualEventDaysSinceLastMajorUpdateInSeconds];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = (86400 * [(TPSContextualEvent *)self daysSinceLastMajorUpdate]);
  }

  return v6;
}

- (id)eventSinceLastMajorUpdateDate
{
  if ([(TPSContextualEvent *)self hasDaysSinceLastMajorUpdate])
  {
    v3 = +[TPSCommonDefines sharedInstance];
    lastMajorVersionUpdateDate = [v3 lastMajorVersionUpdateDate];

    if (lastMajorVersionUpdateDate)
    {
      [(TPSContextualEvent *)self daysSinceLastMajorUpdateTimeIntervalInSeconds];
      v5 = [lastMajorVersionUpdateDate dateByAddingTimeInterval:?];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addObserverIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  os_unfair_lock_lock(&_sharedEventLock);
  if (!self->_observerIdentifiers)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    observerIdentifiers = self->_observerIdentifiers;
    self->_observerIdentifiers = v5;
  }

  v7 = +[TPSLogger default];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = self->_observerIdentifiers;
    identifier = self->_identifier;
    v11 = 138412802;
    v12 = identifierCopy;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    identifierCopy2 = identifier;
    _os_log_debug_impl(&dword_1C00A7000, v7, OS_LOG_TYPE_DEBUG, "Add observerIdentifier %@ to map %@ for event identifier %@", &v11, 0x20u);
  }

  [(NSMutableSet *)self->_observerIdentifiers addObject:identifierCopy];
  os_unfair_lock_unlock(&_sharedEventLock);

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)observedWithResults:(id)results
{
  resultsCopy = results;
  os_unfair_lock_lock(&_sharedEventLock);
  if ([resultsCopy count] && !self->_observationMap)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    observationMap = self->_observationMap;
    self->_observationMap = dictionary;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__TPSContextualEvent_observedWithResults___block_invoke;
  v10[3] = &unk_1E8102CA8;
  v10[4] = self;
  [resultsCopy enumerateKeysAndObjectsUsingBlock:v10];
  os_unfair_lock_unlock(&_sharedEventLock);
  if ([(TPSContextualEvent *)self hasLookBackDays])
  {
    [(TPSContextualEvent *)self removeOutdatedObservationDates];
  }

  if (self->_matchedDate)
  {
    v7 = 0;
  }

  else
  {
    minObservationCount = self->_minObservationCount;
    v7 = minObservationCount <= [(TPSContextualEvent *)self currentObservationCount];
  }

  return v7;
}

- (void)removeObserverIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&_sharedEventLock);
  v4 = [MEMORY[0x1E695DFD8] setWithArray:identifiersCopy];
  [(NSMutableSet *)self->_observerIdentifiers minusSet:v4];

  os_unfair_lock_unlock(&_sharedEventLock);
}

- (void)removeAllObservations
{
  os_unfair_lock_lock(&_sharedEventLock);
  [(NSMutableDictionary *)self->_observationMap removeAllObjects];
  bookmark = self->_bookmark;
  self->_bookmark = 0;

  os_unfair_lock_unlock(&_sharedEventLock);
}

- (void)removeOutdatedObservationDates
{
  date = [MEMORY[0x1E695DF00] date];
  [(TPSContextualEvent *)self eventTimeToLiveInterval];
  v5 = v4;
  os_unfair_lock_lock(&_sharedEventLock);
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableDictionary count](self->_observationMap, "count")}];
  observationMap = self->_observationMap;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__TPSContextualEvent_removeOutdatedObservationDates__block_invoke;
  v10[3] = &unk_1E8102CD0;
  v13 = v5;
  v11 = date;
  v12 = v6;
  v8 = v6;
  v9 = date;
  [(NSMutableDictionary *)observationMap enumerateKeysAndObjectsUsingBlock:v10];
  [(NSMutableDictionary *)self->_observationMap removeObjectsForKeys:v8];
  os_unfair_lock_unlock(&_sharedEventLock);
}

void __52__TPSContextualEvent_removeOutdatedObservationDates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 isTimeToDate:*(a1 + 32) withinTimeInterval:*(a1 + 48)] & 1) == 0)
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (double)eventTimeToLiveInterval
{
  if (![(TPSContextualEvent *)self hasLookBackDays])
  {
    return -63072000.0;
  }

  [(TPSContextualEvent *)self lookbackTimeIntervalInSeconds];
  return result;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v20.receiver = self;
  v20.super_class = TPSContextualEvent;
  v4 = [(TPSSerializableObject *)&v20 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\n %@ = %lu\n", @"status", self->_status];
  [v5 appendFormat:@"%@ = %ld\n", @"type", self->_type];
  [v5 appendFormat:@"%@ = %d\n", @"minObservations", self->_minObservationCount];
  lookBackDays = self->_lookBackDays;
  if ((lookBackDays - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000002)
  {
    [v5 appendFormat:@"%@ = %ld\n", @"lookBackDays", lookBackDays];
  }

  daysSinceLastMajorUpdate = self->_daysSinceLastMajorUpdate;
  if (daysSinceLastMajorUpdate != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 appendFormat:@"%@ = %ld\n", @"daysSinceLastMajorUpdate", daysSinceLastMajorUpdate];
  }

  userInfoPersistent = self->_userInfoPersistent;
  if (userInfoPersistent)
  {
    [v5 appendFormat:@"%@ = %@\n", @"userInfoPersistent", userInfoPersistent];
  }

  bookmark = self->_bookmark;
  if (bookmark)
  {
    [v5 appendFormat:@"%@ = %@\n", @"bookmark", bookmark];
  }

  matchedDate = self->_matchedDate;
  if (matchedDate)
  {
    [v5 appendFormat:@"%@ = %@\n", @"matchedDate", matchedDate];
  }

  eventSinceDate = self->_eventSinceDate;
  if (eventSinceDate)
  {
    [v5 appendFormat:@"%@ = %@\n", @"eventSinceDate", eventSinceDate];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v5 appendFormat:@"%@ = %@\n", @"id", identifier];
  }

  key = self->_key;
  if (key)
  {
    [v5 appendFormat:@"%@ = %@\n", @"key", key];
  }

  state = self->_state;
  if (state)
  {
    [v5 appendFormat:@"%@ = %@\n", @"state", state];
  }

  observationMap = self->_observationMap;
  if (observationMap)
  {
    v16 = [(NSMutableDictionary *)observationMap debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"observationMap", v16];
  }

  observerIdentifiers = self->_observerIdentifiers;
  if (observerIdentifiers)
  {
    v18 = [(NSMutableSet *)observerIdentifiers debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"observerIdentifiers", v18];
  }

  return v5;
}

@end
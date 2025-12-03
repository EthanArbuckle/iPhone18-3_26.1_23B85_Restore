@interface TPSTipStatus
+ (NSSet)_userInfoClasses;
- (BOOL)isContentViewed;
- (BOOL)isDesiredOutcomePerformed;
- (BOOL)isHintDismissed;
- (BOOL)isHintDisplayed;
- (BOOL)isHintDisplayedOnAnyDevice;
- (BOOL)isHintDisplayedOnCloudDevices;
- (BOOL)isUserKnew;
- (BOOL)reenrollIfAllowed;
- (NSArray)desiredOutcomePerformedDates;
- (NSArray)hintDisplayedDates;
- (NSArray)hintNotDisplayedDueToFrequencyControlDates;
- (NSDictionary)userInfo;
- (TPSTipStatus)initWithCoder:(id)coder;
- (TPSTipStatus)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (int64_t)compare:(id)compare;
- (unint64_t)usageFlags;
- (void)addDesiredOutcomePerformedDate:(id)date;
- (void)addHintDisplayedDate:(id)date;
- (void)addHintNotDisplayedDueToFrequencyControlDate:(id)date;
- (void)encodeWithCoder:(id)coder;
- (void)removeHintEligibleDateStatus;
- (void)setContentViewedDate:(id)date;
- (void)setDateForTriggerRestartTracking:(id)tracking;
- (void)setDesiredOutcomePerformedDates:(id)dates;
- (void)setHintDismissalDate:(id)date;
- (void)setHintDisplayedDates:(id)dates;
- (void)setHintNotDisplayedDueToFrequencyControlDates:(id)dates;
- (void)setUserInfo:(id)info;
- (void)updateUserInfoValue:(id)value forKey:(id)key;
@end

@implementation TPSTipStatus

+ (NSSet)_userInfoClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
}

- (TPSTipStatus)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = TPSTipStatus;
  v6 = [(TPSTipStatus *)&v11 init];
  v7 = v6;
  if (v6 && (v6->_hintIneligibleReason = 0, objc_storeStrong(&v6->_identifier, identifier), modelVersion = v7->_modelVersion, v7->_modelVersion = @"1.0", modelVersion, ![(NSString *)v7->_identifier length]))
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (TPSTipStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v54.receiver = self;
  v54.super_class = TPSTipStatus;
  v5 = [(TPSTipStatus *)&v54 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"displayType"];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v5->_displayType = v7;
    v8 = [coderCopy decodeIntegerForKey:@"hintIneligibleReason"];
    if (v8 <= 10)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v5->_hintIneligibleReason = v9;
    v5->_preconditionMatched = [coderCopy decodeBoolForKey:@"preconditionMatched"];
    v5->_expired = [coderCopy decodeBoolForKey:@"expired"];
    v5->_overrideHoldout = [coderCopy decodeBoolForKey:@"overrideHoldout"];
    v5->_overrideFrequencyControl = [coderCopy decodeBoolForKey:@"overrideFrequencyControl"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"variantIdentifier"];
    variantIdentifier = v5->_variantIdentifier;
    v5->_variantIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"correlationIdentifier"];
    correlationIdentifier = v5->_correlationIdentifier;
    v5->_correlationIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clonedFromIdentifier"];
    clonedFromIdentifier = v5->_clonedFromIdentifier;
    v5->_clonedFromIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelVersion"];
    modelVersion = v5->_modelVersion;
    v5->_modelVersion = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedVersion"];
    lastUsedVersion = v5->_lastUsedVersion;
    v5->_lastUsedVersion = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastDisplayContext"];
    lastDisplayContext = v5->_lastDisplayContext;
    v5->_lastDisplayContext = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hintEligibleDate"];
    hintEligibleDate = v5->_hintEligibleDate;
    v5->_hintEligibleDate = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hintWouldHaveBeenDisplayedDate"];
    hintWouldHaveBeenDisplayedDate = v5->_hintWouldHaveBeenDisplayedDate;
    v5->_hintWouldHaveBeenDisplayedDate = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hintDismissalDate"];
    hintDismissalDate = v5->_hintDismissalDate;
    v5->_hintDismissalDate = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentViewedDate"];
    contentViewedDate = v5->_contentViewedDate;
    v5->_contentViewedDate = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"savedDate"];
    savedDate = v5->_savedDate;
    v5->_savedDate = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateForTriggerRestartTracking"];
    dateForTriggerRestartTracking = v5->_dateForTriggerRestartTracking;
    v5->_dateForTriggerRestartTracking = v34;

    if ([MEMORY[0x1E695DF00] isDateExpired:v5->_dateForTriggerRestartTracking maxTimeInterval:-2160000.0])
    {
      v36 = v5->_dateForTriggerRestartTracking;
      v5->_dateForTriggerRestartTracking = 0;
    }

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"desiredOutcomePerformedDates"];
    if ([v40 count])
    {
      v41 = [MEMORY[0x1E695DF70] arrayWithArray:v40];
      desiredOutcomePerformedDates = v5->_desiredOutcomePerformedDates;
      v5->_desiredOutcomePerformedDates = v41;
    }

    v43 = [coderCopy decodeObjectOfClasses:v39 forKey:@"hintDisplayedDates"];
    if ([v43 count])
    {
      v44 = [MEMORY[0x1E695DF70] arrayWithArray:v43];
      hintDisplayedDates = v5->_hintDisplayedDates;
      v5->_hintDisplayedDates = v44;
    }

    v46 = [coderCopy decodeObjectOfClasses:v39 forKey:@"hintNotDisplayedDueToFrequencyControlDates"];
    if ([v46 count])
    {
      v47 = [MEMORY[0x1E695DF70] arrayWithArray:v46];
      hintNotDisplayedDueToFrequencyControlDates = v5->_hintNotDisplayedDueToFrequencyControlDates;
      v5->_hintNotDisplayedDueToFrequencyControlDates = v47;
    }

    _userInfoClasses = [objc_opt_class() _userInfoClasses];
    v50 = [coderCopy decodeObjectOfClasses:_userInfoClasses forKey:@"userInfo"];

    if ([v50 count])
    {
      v51 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v50];
      userInfo = v5->_userInfo;
      v5->_userInfo = v51;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  hintIneligibleReason = self->_hintIneligibleReason;
  coderCopy = coder;
  [coderCopy encodeInteger:hintIneligibleReason forKey:@"hintIneligibleReason"];
  [coderCopy encodeInteger:self->_displayType forKey:@"displayType"];
  [coderCopy encodeBool:self->_preconditionMatched forKey:@"preconditionMatched"];
  [coderCopy encodeBool:self->_expired forKey:@"expired"];
  [coderCopy encodeBool:self->_overrideHoldout forKey:@"overrideHoldout"];
  [coderCopy encodeBool:self->_overrideFrequencyControl forKey:@"overrideFrequencyControl"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_variantIdentifier forKey:@"variantIdentifier"];
  [coderCopy encodeObject:self->_correlationIdentifier forKey:@"correlationIdentifier"];
  [coderCopy encodeObject:self->_clonedFromIdentifier forKey:@"clonedFromIdentifier"];
  [coderCopy encodeObject:self->_modelVersion forKey:@"modelVersion"];
  [coderCopy encodeObject:self->_lastUsedVersion forKey:@"lastUsedVersion"];
  [coderCopy encodeObject:self->_hintEligibleDate forKey:@"hintEligibleDate"];
  [coderCopy encodeObject:self->_lastDisplayContext forKey:@"lastDisplayContext"];
  [coderCopy encodeObject:self->_hintWouldHaveBeenDisplayedDate forKey:@"hintWouldHaveBeenDisplayedDate"];
  [coderCopy encodeObject:self->_hintDismissalDate forKey:@"hintDismissalDate"];
  [coderCopy encodeObject:self->_contentViewedDate forKey:@"contentViewedDate"];
  [coderCopy encodeObject:self->_dateForTriggerRestartTracking forKey:@"dateForTriggerRestartTracking"];
  [coderCopy encodeObject:self->_savedDate forKey:@"savedDate"];
  v6 = [(NSMutableArray *)self->_hintDisplayedDates copy];
  [coderCopy encodeObject:v6 forKey:@"hintDisplayedDates"];

  v7 = [(NSMutableArray *)self->_desiredOutcomePerformedDates copy];
  [coderCopy encodeObject:v7 forKey:@"desiredOutcomePerformedDates"];

  v8 = [(NSMutableArray *)self->_hintNotDisplayedDueToFrequencyControlDates copy];
  [coderCopy encodeObject:v8 forKey:@"hintNotDisplayedDueToFrequencyControlDates"];

  v9 = [(NSMutableDictionary *)self->_userInfo copy];
  [coderCopy encodeObject:v9 forKey:@"userInfo"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [v4 setDisplayType:self->_displayType];
  [v4 setPreconditionMatched:self->_preconditionMatched];
  [v4 setExpired:self->_expired];
  [v4 setHintIneligibleReason:self->_hintIneligibleReason];
  [v4 setOverrideHoldout:self->_overrideHoldout];
  [v4 setOverrideFrequencyControl:self->_overrideFrequencyControl];
  [v4 setIdentifier:self->_identifier];
  [v4 setVariantIdentifier:self->_variantIdentifier];
  [v4 setCorrelationIdentifier:self->_correlationIdentifier];
  [v4 setClonedFromIdentifier:self->_clonedFromIdentifier];
  [v4 setModelVersion:self->_modelVersion];
  [v4 setLastUsedVersion:self->_lastUsedVersion];
  [v4 setDateForTriggerRestartTracking:self->_dateForTriggerRestartTracking];
  [v4 setHintEligibleDate:self->_hintEligibleDate];
  [v4 setLastDisplayContext:self->_lastDisplayContext];
  [v4 setHintDisplayedDates:self->_hintDisplayedDates];
  [v4 setHintWouldHaveBeenDisplayedDate:self->_hintWouldHaveBeenDisplayedDate];
  [v4 setHintDismissalDate:self->_hintDismissalDate];
  [v4 setContentViewedDate:self->_contentViewedDate];
  [v4 setDesiredOutcomePerformedDates:self->_desiredOutcomePerformedDates];
  [v4 setHintNotDisplayedDueToFrequencyControlDates:self->_hintNotDisplayedDueToFrequencyControlDates];
  [v4 setSavedDate:self->_savedDate];
  [v4 setUserInfo:self->_userInfo];
  return v4;
}

- (void)removeHintEligibleDateStatus
{
  hintEligibleDate = self->_hintEligibleDate;
  self->_hintEligibleDate = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)addHintDisplayedDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    hintDisplayedDates = self->_hintDisplayedDates;
    v8 = dateCopy;
    if (!hintDisplayedDates)
    {
      array = [MEMORY[0x1E695DF70] array];
      v7 = self->_hintDisplayedDates;
      self->_hintDisplayedDates = array;

      hintDisplayedDates = self->_hintDisplayedDates;
    }

    [(NSMutableArray *)hintDisplayedDates addObject:v8];
    if (self->_displayType == 1)
    {
      [(TPSTipStatus *)self removeHintEligibleDateStatus];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (NSArray)hintDisplayedDates
{
  if (self->_hintDisplayedDates)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHintDisplayedDates:(id)dates
{
  datesCopy = dates;
  v8 = datesCopy;
  if (datesCopy)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithArray:datesCopy];
    hintDisplayedDates = self->_hintDisplayedDates;
    self->_hintDisplayedDates = v5;

    if (self->_displayType == 1)
    {
      [(TPSTipStatus *)self removeHintEligibleDateStatus];
    }
  }

  else
  {
    v7 = self->_hintDisplayedDates;
    self->_hintDisplayedDates = 0;
  }
}

- (void)addHintNotDisplayedDueToFrequencyControlDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    hintNotDisplayedDueToFrequencyControlDates = self->_hintNotDisplayedDueToFrequencyControlDates;
    v8 = dateCopy;
    if (!hintNotDisplayedDueToFrequencyControlDates)
    {
      array = [MEMORY[0x1E695DF70] array];
      v7 = self->_hintNotDisplayedDueToFrequencyControlDates;
      self->_hintNotDisplayedDueToFrequencyControlDates = array;

      hintNotDisplayedDueToFrequencyControlDates = self->_hintNotDisplayedDueToFrequencyControlDates;
    }

    [(NSMutableArray *)hintNotDisplayedDueToFrequencyControlDates addObject:v8];
  }

  MEMORY[0x1EEE66BB8]();
}

- (NSArray)hintNotDisplayedDueToFrequencyControlDates
{
  if (self->_hintNotDisplayedDueToFrequencyControlDates)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHintNotDisplayedDueToFrequencyControlDates:(id)dates
{
  if (dates)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithArray:?];
  }

  else
  {
    v4 = 0;
  }

  hintNotDisplayedDueToFrequencyControlDates = self->_hintNotDisplayedDueToFrequencyControlDates;
  self->_hintNotDisplayedDueToFrequencyControlDates = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setHintDismissalDate:(id)date
{
  dateCopy = date;
  p_hintDismissalDate = &self->_hintDismissalDate;
  if (self->_hintDismissalDate != dateCopy)
  {
    v7 = dateCopy;
    objc_storeStrong(p_hintDismissalDate, date);
    p_hintDismissalDate = [(TPSTipStatus *)self removeHintEligibleDateStatus];
    dateCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_hintDismissalDate, dateCopy);
}

- (void)setContentViewedDate:(id)date
{
  dateCopy = date;
  p_contentViewedDate = &self->_contentViewedDate;
  if (self->_contentViewedDate != dateCopy)
  {
    v7 = dateCopy;
    objc_storeStrong(p_contentViewedDate, date);
    p_contentViewedDate = [(TPSTipStatus *)self removeHintEligibleDateStatus];
    dateCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_contentViewedDate, dateCopy);
}

- (NSArray)desiredOutcomePerformedDates
{
  if (self->_desiredOutcomePerformedDates)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDesiredOutcomePerformedDates:(id)dates
{
  if (dates)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithArray:?];
    desiredOutcomePerformedDates = self->_desiredOutcomePerformedDates;
    self->_desiredOutcomePerformedDates = v4;

    [(TPSTipStatus *)self removeHintEligibleDateStatus];
  }

  else
  {
    v6 = self->_desiredOutcomePerformedDates;
    self->_desiredOutcomePerformedDates = 0;
  }
}

- (void)addDesiredOutcomePerformedDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (dateCopy)
  {
    desiredOutcomePerformedDates = self->_desiredOutcomePerformedDates;
    v9 = v5;
    if (!desiredOutcomePerformedDates)
    {
      array = [MEMORY[0x1E695DF70] array];
      v8 = self->_desiredOutcomePerformedDates;
      self->_desiredOutcomePerformedDates = array;

      v5 = v9;
      desiredOutcomePerformedDates = self->_desiredOutcomePerformedDates;
    }

    if (([(NSMutableArray *)desiredOutcomePerformedDates containsObject:v5]& 1) == 0)
    {
      [(NSMutableArray *)self->_desiredOutcomePerformedDates addObject:v9];
    }

    dateCopy = [(TPSTipStatus *)self removeHintEligibleDateStatus];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](dateCopy, v5);
}

- (BOOL)isUserKnew
{
  firstObject = [(NSMutableArray *)self->_desiredOutcomePerformedDates firstObject];
  if (firstObject)
  {
    firstObject2 = [(NSMutableArray *)self->_hintDisplayedDates firstObject];
    v5 = firstObject2;
    if (firstObject2 && [firstObject2 compare:self->_contentViewedDate] == -1)
    {
      v6 = v5;
    }

    else
    {
      v6 = self->_contentViewedDate;
      if (!v6)
      {
        v7 = 1;
LABEL_9:

        goto LABEL_10;
      }
    }

    v7 = [firstObject compare:v6] == -1;

    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (void)setDateForTriggerRestartTracking:(id)tracking
{
  trackingCopy = tracking;
  p_dateForTriggerRestartTracking = &self->_dateForTriggerRestartTracking;
  if (self->_dateForTriggerRestartTracking != trackingCopy)
  {
    v7 = trackingCopy;
    objc_storeStrong(p_dateForTriggerRestartTracking, tracking);
    p_dateForTriggerRestartTracking = [(TPSTipStatus *)self removeHintEligibleDateStatus];
    trackingCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_dateForTriggerRestartTracking, trackingCopy);
}

- (BOOL)reenrollIfAllowed
{
  if (self->_hintIneligibleReason != 10)
  {
    return 0;
  }

  if (self->_contentViewedDate || [(NSMutableArray *)self->_desiredOutcomePerformedDates count]|| self->_hintDismissalDate)
  {
    return 0;
  }

  self->_hintIneligibleReason = 0;
  self->_expired = 0;
  [(TPSTipStatus *)self removeHintEligibleDateStatus];
  return 1;
}

- (unint64_t)usageFlags
{
  overrideHoldout = [(TPSTipStatus *)self overrideHoldout];
  overrideFrequencyControl = [(TPSTipStatus *)self overrideFrequencyControl];
  v5 = 2;
  if (!overrideFrequencyControl)
  {
    v5 = 0;
  }

  return v5 | overrideHoldout;
}

- (void)updateUserInfoValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (valueCopy)
    {
      _userInfoClasses = [objc_opt_class() _userInfoClasses];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __43__TPSTipStatus_updateUserInfoValue_forKey___block_invoke;
      v14[3] = &unk_1E8101578;
      v9 = valueCopy;
      v15 = v9;
      v10 = [_userInfoClasses na_any:v14];

      if (v10)
      {
        userInfo = self->_userInfo;
        if (!userInfo)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v13 = self->_userInfo;
          self->_userInfo = dictionary;

          userInfo = self->_userInfo;
        }

        [(NSMutableDictionary *)userInfo setObject:v9 forKeyedSubscript:keyCopy];
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_userInfo setObject:0 forKeyedSubscript:keyCopy];
    }
  }
}

- (NSDictionary)userInfo
{
  if (self->_userInfo)
  {
    v3 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserInfo:(id)info
{
  if (info)
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
  }

  else
  {
    v4 = 0;
  }

  userInfo = self->_userInfo;
  self->_userInfo = v4;

  MEMORY[0x1EEE66BB8](v4, userInfo);
}

- (BOOL)isContentViewed
{
  contentViewedDate = [(TPSTipStatus *)self contentViewedDate];
  v3 = contentViewedDate != 0;

  return v3;
}

- (BOOL)isDesiredOutcomePerformed
{
  desiredOutcomePerformedDates = [(TPSTipStatus *)self desiredOutcomePerformedDates];
  v3 = [desiredOutcomePerformedDates count] != 0;

  return v3;
}

- (BOOL)isHintDisplayed
{
  hintDisplayedDates = [(TPSTipStatus *)self hintDisplayedDates];
  v3 = [hintDisplayedDates count] != 0;

  return v3;
}

- (BOOL)isHintDisplayedOnCloudDevices
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  correlationIdentifier = [(TPSTipStatus *)self correlationIdentifier];
  [v3 na_safeAddObject:correlationIdentifier];

  clonedFromIdentifier = [(TPSTipStatus *)self clonedFromIdentifier];
  [v3 na_safeAddObject:clonedFromIdentifier];

  identifier = [(TPSTipStatus *)self identifier];
  [v3 na_safeAddObject:identifier];

  v7 = +[TPSCloudController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__TPSTipStatus_isHintDisplayedOnCloudDevices__block_invoke;
  v10[3] = &unk_1E81015A0;
  v11 = v7;
  v8 = v7;
  LOBYTE(clonedFromIdentifier) = [v3 na_any:v10];

  return clonedFromIdentifier;
}

- (BOOL)isHintDisplayedOnAnyDevice
{
  if ([(TPSTipStatus *)self isHintDisplayed])
  {
    return 1;
  }

  return [(TPSTipStatus *)self isHintDisplayedOnCloudDevices];
}

- (BOOL)isHintDismissed
{
  hintDismissalDate = [(TPSTipStatus *)self hintDismissalDate];
  v3 = hintDismissalDate != 0;

  return v3;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  savedDate = [(TPSTipStatus *)self savedDate];
  savedDate2 = [compareCopy savedDate];

  v7 = [savedDate compare:savedDate2];
  return v7;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v19.receiver = self;
  v19.super_class = TPSTipStatus;
  v4 = [(TPSTipStatus *)&v19 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@" {\n\t%@ = %@\n", @"identifier", self->_identifier];
  [v5 appendFormat:@"\t%@ = %@\n", @"variantIdentifier", self->_variantIdentifier];
  [v5 appendFormat:@"\t%@ = %@\n", @"correlationIdentifier", self->_correlationIdentifier];
  [v5 appendFormat:@"\t%@ = %@\n", @"clonedFromIdentifier", self->_clonedFromIdentifier];
  [v5 appendFormat:@"\t%@ = %@\n", @"modelVersion", self->_modelVersion];
  [v5 appendFormat:@"\t%@ = %@\n", @"lastUsedVersion", self->_lastUsedVersion];
  [v5 appendFormat:@"\t%@ = %zd\n", @"displayType", self->_displayType];
  if (self->_hintIneligibleReason)
  {
    v6 = [TPSAnalyticsCommonDefines ineligibleReasonStringForReason:?];
    [v5 appendFormat:@"\t%@ = %@\n", @"hintIneligibleReason", v6];
  }

  if (self->_preconditionMatched)
  {
    [v5 appendFormat:@"\t%@ = %d\n", @"preconditionMatched", 1];
  }

  if (self->_expired)
  {
    [v5 appendFormat:@"\t%@ = %d\n", @"expired", 1];
  }

  if (self->_overrideHoldout)
  {
    [v5 appendFormat:@"\t%@ = %d\n", @"overrideHoldout", 1];
  }

  if (self->_overrideFrequencyControl)
  {
    [v5 appendFormat:@"\t%@ = %d\n", @"overrideFrequencyControl", 1];
  }

  dateForTriggerRestartTracking = self->_dateForTriggerRestartTracking;
  if (dateForTriggerRestartTracking)
  {
    [v5 appendFormat:@"\t%@ = %@\n", @"dateForTriggerRestartTracking", dateForTriggerRestartTracking];
  }

  hintEligibleDate = self->_hintEligibleDate;
  if (hintEligibleDate)
  {
    [v5 appendFormat:@"\t%@ = %@\n", @"hintEligibleDate", hintEligibleDate];
  }

  lastDisplayContext = self->_lastDisplayContext;
  if (lastDisplayContext)
  {
    [v5 appendFormat:@"\t%@ = %@\n", @"lastDisplayContext", lastDisplayContext];
  }

  hintWouldHaveBeenDisplayedDate = self->_hintWouldHaveBeenDisplayedDate;
  if (hintWouldHaveBeenDisplayedDate)
  {
    [v5 appendFormat:@"\t%@ = %@\n", @"hintWouldHaveBeenDisplayedDate", hintWouldHaveBeenDisplayedDate];
  }

  hintDisplayedDates = self->_hintDisplayedDates;
  if (hintDisplayedDates)
  {
    [v5 appendFormat:@"\t%@ = %@\n", @"hintDisplayedDates", hintDisplayedDates];
  }

  hintNotDisplayedDueToFrequencyControlDates = self->_hintNotDisplayedDueToFrequencyControlDates;
  if (hintNotDisplayedDueToFrequencyControlDates)
  {
    [v5 appendFormat:@"\t%@ = %@\n", @"hintNotDisplayedDueToFrequencyControlDates", hintNotDisplayedDueToFrequencyControlDates];
  }

  hintDismissalDate = self->_hintDismissalDate;
  if (hintDismissalDate)
  {
    [v5 appendFormat:@"\t%@ = %@\n", @"hintDismissalDate", hintDismissalDate];
  }

  contentViewedDate = self->_contentViewedDate;
  if (contentViewedDate)
  {
    [v5 appendFormat:@"\t%@ = %@\n", @"contentViewedDate", contentViewedDate];
  }

  desiredOutcomePerformedDates = self->_desiredOutcomePerformedDates;
  if (desiredOutcomePerformedDates)
  {
    [v5 appendFormat:@"\t%@ = %@\n", @"desiredOutcomePerformedDates", desiredOutcomePerformedDates];
  }

  savedDate = self->_savedDate;
  if (savedDate)
  {
    [v5 appendFormat:@"\t%@ = %@\n", @"savedDate", savedDate];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v5 appendFormat:@"\t%@ = %@\n", @"userInfo", userInfo];
  }

  [v5 appendString:@"}"];

  return v5;
}

@end
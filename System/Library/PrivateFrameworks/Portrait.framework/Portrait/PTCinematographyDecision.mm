@interface PTCinematographyDecision
+ (PTCinematographyTransition)defaultTransition;
+ (id)_decisionsWithCinematographyDictionaries:(id)dictionaries;
+ (id)_mutableDecisionsWithCinematographyDictionaries:(id)dictionaries;
- (BOOL)isEqual:(id)equal;
- (id)_asCinematographyDictionary;
- (id)_decisionByChangingTime:(id *)time;
- (id)_decisionByRemovingOptions:(unint64_t)options;
- (id)_initWithCinematographyDictionary:(id)dictionary;
- (id)_initWithTime:(id *)time trackIdentifier:(int64_t)identifier groupIdentifier:(int64_t)groupIdentifier transition:(id)transition options:(unint64_t)options;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setMaximumDuration:(id *)duration;
- (void)setMinimumDuration:(id *)duration;
@end

@implementation PTCinematographyDecision

+ (PTCinematographyTransition)defaultTransition
{
  if (defaultTransition_onceToken != -1)
  {
    +[PTCinematographyDecision defaultTransition];
  }

  v3 = defaultTransition_sDefaultTransition;

  return v3;
}

uint64_t __45__PTCinematographyDecision_defaultTransition__block_invoke()
{
  defaultTransition_sDefaultTransition = [[PTCinematographyTransition alloc] initWithKind:1];

  return MEMORY[0x2821F96F8]();
}

- (id)_initWithTime:(id *)time trackIdentifier:(int64_t)identifier groupIdentifier:(int64_t)groupIdentifier transition:(id)transition options:(unint64_t)options
{
  transitionCopy = transition;
  v19.receiver = self;
  v19.super_class = PTCinematographyDecision;
  v13 = [(PTCinematographyDecision *)&v19 init];
  v14 = v13;
  if (v13)
  {
    v15 = *&time->var0;
    v13->_time.epoch = time->var3;
    *&v13->_time.value = v15;
    v13->_trackIdentifier = identifier;
    v13->_groupIdentifier = groupIdentifier;
    if (transitionCopy)
    {
      defaultTransition = transitionCopy;
    }

    else
    {
      defaultTransition = [objc_opt_class() defaultTransition];
    }

    transition = v14->_transition;
    v14->_transition = defaultTransition;

    v14->_options = options;
    v14->_type = 1;
  }

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PTCinematographyDecision alloc];
  trackIdentifier = self->_trackIdentifier;
  groupIdentifier = self->_groupIdentifier;
  transition = self->_transition;
  options = self->_options;
  time = self->_time;
  result = [(PTCinematographyDecision *)v4 _initWithTime:&time trackIdentifier:trackIdentifier groupIdentifier:groupIdentifier transition:transition options:options];
  *(result + 4) = self->_type;
  return result;
}

- (id)_decisionByChangingTime:(id *)time
{
  v4 = [(PTCinematographyDecision *)self mutableCopy];
  var3 = time->var3;
  *(v4 + 48) = *&time->var0;
  *(v4 + 64) = var3;

  return v4;
}

- (id)_decisionByRemovingOptions:(unint64_t)options
{
  v4 = [(PTCinematographyDecision *)self mutableCopy];
  v4[3] &= ~options;

  return v4;
}

- (id)description
{
  type = [(PTCinematographyDecision *)self type];
  v4 = @"Unknown";
  if (type == 1)
  {
    v4 = @"User";
  }

  if (type)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Base";
  }

  v6 = MEMORY[0x277CCACA8];
  [(PTCinematographyDecision *)self time];
  v7 = NSStringFromCMTime(&v17);
  trackIdentifier = [(PTCinematographyDecision *)self trackIdentifier];
  if (trackIdentifier == -1)
  {
    v9 = @"?";
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PTCinematographyDecision trackIdentifier](self, "trackIdentifier")}];
  }

  groupIdentifier = [(PTCinematographyDecision *)self groupIdentifier];
  if (groupIdentifier == -1)
  {
    v11 = @"?";
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PTCinematographyDecision groupIdentifier](self, "groupIdentifier")}];
  }

  if ([(PTCinematographyDecision *)self isGroupDecision])
  {
    v12 = @"g";
  }

  else
  {
    v12 = &stru_2837D16E8;
  }

  isStrongDecision = [(PTCinematographyDecision *)self isStrongDecision];
  v14 = @"+";
  if (!isStrongDecision)
  {
    v14 = &stru_2837D16E8;
  }

  v15 = [v6 stringWithFormat:@"%@: [%@] T%@ G%@ %@%@", v7, v5, v9, v11, v12, v14];
  if (groupIdentifier != -1)
  {
  }

  if (trackIdentifier != -1)
  {
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      trackIdentifier = [(PTCinematographyDecision *)self trackIdentifier];
      if (trackIdentifier == [(PTCinematographyDecision *)v5 trackIdentifier]&& (v7 = [(PTCinematographyDecision *)self groupIdentifier], v7 == [(PTCinematographyDecision *)v5 groupIdentifier]) && (v8 = [(PTCinematographyDecision *)self options], v8 == [(PTCinematographyDecision *)v5 options]) && (v9 = [(PTCinematographyDecision *)self type], v9 == [(PTCinematographyDecision *)v5 type]))
      {
        [(PTCinematographyDecision *)self time];
        if (v5)
        {
          [(PTCinematographyDecision *)v5 time];
        }

        else
        {
          memset(&v12, 0, sizeof(v12));
        }

        v10 = CMTimeCompare(&time1, &v12) == 0;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  trackIdentifier = [(PTCinematographyDecision *)self trackIdentifier];
  v4 = [(PTCinematographyDecision *)self groupIdentifier]+ trackIdentifier;
  options = [(PTCinematographyDecision *)self options];
  v6 = (v4 + options + [(PTCinematographyDecision *)self type]);
  [(PTCinematographyDecision *)self time];
  return (v6 + CMTimeGetSeconds(&time) * 600.0);
}

- (void)setMinimumDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_minimumDuration.epoch = duration->var3;
  *&self->_minimumDuration.value = v3;
}

- (void)setMaximumDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_maximumDuration.epoch = duration->var3;
  *&self->_maximumDuration.value = v3;
}

+ (id)_decisionsWithCinematographyDictionaries:(id)dictionaries
{
  v3 = [self _mutableDecisionsWithCinematographyDictionaries:dictionaries];
  v4 = [v3 copy];

  return v4;
}

+ (id)_mutableDecisionsWithCinematographyDictionaries:(id)dictionaries
{
  v19 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [PTCinematographyDecision alloc];
        v12 = [(PTCinematographyDecision *)v11 _initWithCinematographyDictionary:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_initWithCinematographyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = PTCinematographyDecision;
  v5 = [(PTCinematographyDecision *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ptime"];
    CMTimeFromPTCinematographyDictionary(&v19, v6);
    v5->_time = v19;

    v7 = [dictionaryCopy objectForKeyedSubscript:@"track_id"];
    v5->_trackIdentifier = [v7 integerValue];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"group_id"];
    v5->_groupIdentifier = [v8 integerValue];

    defaultTransition = [objc_opt_class() defaultTransition];
    transition = v5->_transition;
    v5->_transition = defaultTransition;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"options"];
    v5->_options = [v11 unsignedIntegerValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"is_user"];
    bOOLValue = [v12 BOOLValue];

    v5->_type = bOOLValue;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"min_duration"];
    v15 = v14;
    if (v14)
    {
      CMTimeFromPTCinematographyDictionary(&v19, v14);
      v5->_minimumDuration = v19;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"max_duration"];
    v17 = v16;
    if (v16)
    {
      CMTimeFromPTCinematographyDictionary(&v19, v16);
      v5->_maximumDuration = v19;
    }
  }

  return v5;
}

- (id)_asCinematographyDictionary
{
  v3 = objc_opt_new();
  [(PTCinematographyDecision *)self time];
  v4 = PTCinematographyDictionaryFromCMTime(v13);
  [v3 setObject:v4 forKeyedSubscript:@"ptime"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PTCinematographyDecision trackIdentifier](self, "trackIdentifier")}];
  [v3 setObject:v5 forKeyedSubscript:@"track_id"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PTCinematographyDecision groupIdentifier](self, "groupIdentifier")}];
  [v3 setObject:v6 forKeyedSubscript:@"group_id"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PTCinematographyDecision options](self, "options")}];
  [v3 setObject:v7 forKeyedSubscript:@"options"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[PTCinematographyDecision isUserDecision](self, "isUserDecision")}];
  [v3 setObject:v8 forKeyedSubscript:@"is_user"];

  if ([(PTCinematographyDecision *)self hasMinimumDuration])
  {
    [(PTCinematographyDecision *)self minimumDuration];
    v9 = PTCinematographyDictionaryFromCMTime(v13);
    [v3 setObject:v9 forKeyedSubscript:@"min_duration"];
  }

  if ([(PTCinematographyDecision *)self hasMaximumDuration])
  {
    [(PTCinematographyDecision *)self maximumDuration];
    v10 = PTCinematographyDictionaryFromCMTime(v13);
    [v3 setObject:v10 forKeyedSubscript:@"max_duration"];
  }

  v11 = [v3 copy];

  return v11;
}

@end
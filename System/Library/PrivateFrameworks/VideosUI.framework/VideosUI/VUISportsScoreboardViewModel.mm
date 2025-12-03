@interface VUISportsScoreboardViewModel
- (BOOL)isEqual:(id)equal;
- (BOOL)showScoreboard;
- (VUISportsScoreboardViewModel)initWithDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
- (id)jsContextDictionary;
- (void)removeUnicodeFromScoreValuesIfNeeded;
@end

@implementation VUISportsScoreboardViewModel

- (VUISportsScoreboardViewModel)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = VUISportsScoreboardViewModel;
  v5 = [(VUISportsScoreboardViewModel *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;

    v8 = [dictionaryCopy vui_stringForKey:@"sportingEventId"];
    canonicalId = v5->_canonicalId;
    v5->_canonicalId = v8;

    v10 = [dictionaryCopy vui_stringForKey:@"sportingEventState"];
    state = v5->_state;
    v5->_state = v10;

    v12 = [dictionaryCopy vui_dictionaryForKey:@"leagueContext"];
    leagueContext = v5->_leagueContext;
    v5->_leagueContext = v12;

    v14 = [(NSDictionary *)v5->_leagueContext vui_stringForKey:@"leagueId"];
    leagueId = v5->_leagueId;
    v5->_leagueId = v14;

    v16 = [dictionaryCopy vui_arrayForKey:@"scores"];
    scores = v5->_scores;
    v5->_scores = v16;

    v5->_suppressed = [dictionaryCopy vui_BOOLForKey:@"suppressScoreboard" defaultValue:0];
    v5->_configureScoreUpdates = [dictionaryCopy vui_BOOLForKey:@"configureScoreUpdates" defaultValue:0];
    v5->_isVersus = [dictionaryCopy vui_BOOLForKey:@"isVersus" defaultValue:0];
    v18 = [dictionaryCopy vui_dictionaryForKey:@"contentMetadata"];
    contentMetadata = v5->_contentMetadata;
    v5->_contentMetadata = v18;

    v20 = [dictionaryCopy vui_dictionaryForKey:@"scoreInfoText"];
    v21 = [v20 vui_stringForKey:@"rowText1"];
    scoreInfoText1 = v5->_scoreInfoText1;
    v5->_scoreInfoText1 = v21;

    v23 = [v20 vui_stringForKey:@"rowText2"];
    scoreInfoText2 = v5->_scoreInfoText2;
    v5->_scoreInfoText2 = v23;

    v25 = [v20 vui_stringForKey:@"rowText3"];
    scoreInfoText3 = v5->_scoreInfoText3;
    v5->_scoreInfoText3 = v25;

    v27 = [dictionaryCopy vui_numberForKey:@"lastUpdatedTime"];
    v28 = v27;
    if (v27)
    {
      longLongValue = [v27 longLongValue];
      v30 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:longLongValue / 1000.0];
    }

    else
    {
      v30 = 0;
    }

    v31 = [(NSDictionary *)v5->_contentMetadata vui_numberForKey:@"hasEventEnded"];
    v32 = v31;
    if (v31)
    {
      bOOLValue = [v31 BOOLValue];
    }

    else
    {
      bOOLValue = [dictionaryCopy vui_BOOLForKey:@"hasEventEnded" defaultValue:0];
    }

    v5->_hasEventEnded = bOOLValue;
    if (v30)
    {
      distantPast = v30;
    }

    else
    {
      distantPast = [MEMORY[0x1E695DF00] distantPast];
    }

    lastUpdatedTime = v5->_lastUpdatedTime;
    v5->_lastUpdatedTime = distantPast;

    [(VUISportsScoreboardViewModel *)v5 removeUnicodeFromScoreValuesIfNeeded];
  }

  return v5;
}

- (BOOL)showScoreboard
{
  mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
  if ([mEMORY[0x1E69E15F0] sportsScoreSpoilersAllowed])
  {
    v4 = !self->_suppressed;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsContextDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(NSString *)self->_canonicalId length])
  {
    [v3 vui_setObjectIfNotNil:self->_canonicalId forKey:@"sportingEventId"];
  }

  leagueContext = self->_leagueContext;
  if (leagueContext && [(NSDictionary *)leagueContext count])
  {
    [v3 vui_setObjectIfNotNil:self->_leagueContext forKey:@"leagueContext"];
  }

  v5 = [v3 copy];

  return v5;
}

- (id)dictionaryRepresentation
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation copy];

  return v2;
}

- (void)removeUnicodeFromScoreValuesIfNeeded
{
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSArray *)self->_scores count])
  {
    v3 = 0;
    do
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v5 = [(NSArray *)self->_scores objectAtIndexedSubscript:v3];
      v6 = [v5 count];

      if (v6)
      {
        v7 = 0;
        do
        {
          v8 = [(NSArray *)self->_scores objectAtIndexedSubscript:v3];
          v9 = [v8 objectAtIndexedSubscript:v7];

          v10 = [v9 stringByReplacingOccurrencesOfString:@" ٠ " withString:@" "];

          v11 = [v10 stringByReplacingOccurrencesOfString:@" · " withString:@" "];

          [v4 addObject:v11];
          ++v7;
          v12 = [(NSArray *)self->_scores objectAtIndexedSubscript:v3];
          v13 = [v12 count];
        }

        while (v7 < v13);
      }

      v14 = [v4 copy];
      [v17 addObject:v14];

      ++v3;
    }

    while (v3 < [(NSArray *)self->_scores count]);
  }

  v15 = [v17 copy];
  scores = self->_scores;
  self->_scores = v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSDictionary *)self->_dictionaryRepresentation isEqualToDictionary:equalCopy->_dictionaryRepresentation];
  }

  return v5;
}

@end
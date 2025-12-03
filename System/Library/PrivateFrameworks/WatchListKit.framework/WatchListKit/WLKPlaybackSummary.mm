@interface WLKPlaybackSummary
+ (double)playedThresholdTimeForDuration:(double)duration;
+ (id)EBSSummaryWithBundleID:(id)d channelID:(id)iD externalId:(id)id accountID:(id)accountID externalProfileID:(id)profileID timestamp:(id)timestamp playbackState:(int64_t)state playbackRate:(id)self0 currentPlaybackDate:(id)self1;
+ (id)EBSSummaryWithBundleID:(id)d channelID:(id)iD externalId:(id)id accountID:(id)accountID externalProfileID:(id)profileID timestamp:(id)timestamp playbackState:(int64_t)state playbackRate:(id)self0 currentPlaybackDate:(id)self1 playablePassthrough:(id)self2;
+ (id)VODSummaryWithBundleID:(id)d channelID:(id)iD contentID:(id)contentID accountID:(id)accountID externalProfileID:(id)profileID timestamp:(id)timestamp duration:(id)duration elapsedTime:(id)self0 featureDuration:(id)self1 featureElapsedTime:(id)self2 playbackState:(int64_t)self3 playbackRate:(id)self4 contentTitle:(id)self5 completionState:(int64_t)self6;
+ (id)VODSummaryWithBundleID:(id)d channelID:(id)iD contentID:(id)contentID accountID:(id)accountID externalProfileID:(id)profileID timestamp:(id)timestamp duration:(id)duration elapsedTime:(id)self0 featureDuration:(id)self1 featureElapsedTime:(id)self2 playbackState:(int64_t)self3 playbackRate:(id)self4 playablePassthrough:(id)self5 contentTitle:(id)self6 completionState:(int64_t)self7;
+ (id)_debugStringForPlaybackType:(int64_t)type;
+ (id)debugStringForCompletionState:(int64_t)state;
+ (id)debugStringForPlaybackState:(int64_t)state;
+ (id)liveSummaryWithBundleID:(id)d channelID:(id)iD serviceID:(id)serviceID accountID:(id)accountID externalProfileID:(id)profileID timestamp:(id)timestamp playbackState:(int64_t)state playbackRate:(id)self0 currentPlaybackDate:(id)self1;
+ (id)liveSummaryWithBundleID:(id)d channelID:(id)iD serviceID:(id)serviceID accountID:(id)accountID externalProfileID:(id)profileID timestamp:(id)timestamp playbackState:(int64_t)state playbackRate:(id)self0 currentPlaybackDate:(id)self1 playablePassthrough:(id)self2;
+ (int64_t)completionStateForDuration:(double)duration elapsedTime:(double)time;
- (BOOL)_compareOptional:(id)optional with:(id)with;
- (BOOL)_compareOptionalTemporalValue:(id)value with:(id)with fuzzy:(BOOL)fuzzy;
- (BOOL)_isValid;
- (BOOL)_validate:(id)_validate identifier:(id)identifier expectedClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSummary:(id)summary;
- (BOOL)isEquivalentToSummaryExcludingCursor:(id)cursor;
- (BOOL)isEquivalentToSummaryExcludingTimestamp:(id)timestamp;
- (BOOL)isSameContent:(id)content;
- (NSNumber)accountIDAsNumber;
- (WLKPlaybackSummary)initWithBundleID:(id)d timestamp:(id)timestamp duration:(id)duration elapsedTime:(id)time featureDuration:(id)featureDuration featureElapsedTime:(id)elapsedTime externalProfileID:(id)iD contentID:(id)self0 accountID:(id)self1 playbackState:(int64_t)self2 playbackRate:(id)self3 completionState:(int64_t)self4 isAlwaysLive:(BOOL)self5 serviceID:(id)self6 currentPlaybackDate:(id)self7 playbackType:(int64_t)self8 isTimerDerived:(BOOL)self9 isFromActivePlayerPath:(BOOL)path channelID:(id)channelID contentTitle:(id)title;
- (WLKPlaybackSummary)initWithBundleID:(id)d timestamp:(id)timestamp duration:(id)duration elapsedTime:(id)time featureDuration:(id)featureDuration featureElapsedTime:(id)elapsedTime externalProfileID:(id)iD contentID:(id)self0 accountID:(id)self1 playbackState:(int64_t)self2 playbackRate:(id)self3 completionState:(int64_t)self4 isAlwaysLive:(BOOL)self5 serviceID:(id)self6 currentPlaybackDate:(id)self7 playbackType:(int64_t)self8 isTimerDerived:(BOOL)self9 isFromActivePlayerPath:(BOOL)path playablePassthrough:(id)passthrough channelID:(id)channelID contentTitle:(id)title;
- (WLKPlaybackSummary)initWithCoder:(id)coder;
- (WLKPlaybackSummary)initWithMediaRemoteDictionary:(id)dictionary bundleID:(id)d accountID:(id)iD isFromActivePlayerPath:(BOOL)path;
- (id)JSONRepresentation;
- (id)description;
- (id)dictionaryRepresentation;
- (id)elapsedTimeSummaryWithPlaybackState:(int64_t)state timerDerived:(BOOL)derived;
- (id)sanitizedCopy;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)resolveChannelID:(id)d;
@end

@implementation WLKPlaybackSummary

- (WLKPlaybackSummary)initWithBundleID:(id)d timestamp:(id)timestamp duration:(id)duration elapsedTime:(id)time featureDuration:(id)featureDuration featureElapsedTime:(id)elapsedTime externalProfileID:(id)iD contentID:(id)self0 accountID:(id)self1 playbackState:(int64_t)self2 playbackRate:(id)self3 completionState:(int64_t)self4 isAlwaysLive:(BOOL)self5 serviceID:(id)self6 currentPlaybackDate:(id)self7 playbackType:(int64_t)self8 isTimerDerived:(BOOL)self9 isFromActivePlayerPath:(BOOL)path channelID:(id)channelID contentTitle:(id)title
{
  dCopy = d;
  timestampCopy = timestamp;
  durationCopy = duration;
  timeCopy = time;
  featureDurationCopy = featureDuration;
  elapsedTimeCopy = elapsedTime;
  iDCopy = iD;
  v29 = durationCopy;
  contentIDCopy = contentID;
  accountIDCopy = accountID;
  rateCopy = rate;
  serviceIDCopy = serviceID;
  dateCopy = date;
  channelIDCopy = channelID;
  titleCopy = title;
  v73.receiver = self;
  v73.super_class = WLKPlaybackSummary;
  v36 = [(WLKPlaybackSummary *)&v73 init];
  if (v36)
  {
    v37 = [dCopy copy];
    bundleID = v36->_bundleID;
    v36->_bundleID = v37;

    v39 = [timestampCopy copy];
    timestamp = v36->_timestamp;
    v36->_timestamp = v39;

    v41 = [v29 copy];
    duration = v36->_duration;
    v36->_duration = v41;

    v43 = [timeCopy copy];
    elapsedTime = v36->_elapsedTime;
    v36->_elapsedTime = v43;

    v45 = [featureDurationCopy copy];
    featureDuration = v36->_featureDuration;
    v36->_featureDuration = v45;

    v47 = [elapsedTimeCopy copy];
    featureElapsedTime = v36->_featureElapsedTime;
    v36->_featureElapsedTime = v47;

    v49 = [iDCopy copy];
    externalProfileID = v36->_externalProfileID;
    v36->_externalProfileID = v49;

    v51 = [contentIDCopy copy];
    contentID = v36->_contentID;
    v36->_contentID = v51;

    v53 = [accountIDCopy copy];
    accountID = v36->_accountID;
    v36->_accountID = v53;

    v36->_playbackState = state;
    v55 = [rateCopy copy];
    playbackRate = v36->_playbackRate;
    v36->_playbackRate = v55;

    v36->_completionState = completionState;
    v36->_isAlwaysLive = live;
    v57 = [serviceIDCopy copy];
    serviceID = v36->_serviceID;
    v36->_serviceID = v57;

    v59 = [dateCopy copy];
    currentPlaybackDate = v36->_currentPlaybackDate;
    v36->_currentPlaybackDate = v59;

    v36->_playbackType = type;
    v36->_isTimerDerived = derived;
    v36->_fromActivePlayerPath = path;
    v61 = [channelIDCopy copy];
    channelID = v36->_channelID;
    v36->_channelID = v61;

    v63 = [titleCopy copy];
    contentTitle = v36->_contentTitle;
    v36->_contentTitle = v63;
  }

  return v36;
}

- (WLKPlaybackSummary)initWithBundleID:(id)d timestamp:(id)timestamp duration:(id)duration elapsedTime:(id)time featureDuration:(id)featureDuration featureElapsedTime:(id)elapsedTime externalProfileID:(id)iD contentID:(id)self0 accountID:(id)self1 playbackState:(int64_t)self2 playbackRate:(id)self3 completionState:(int64_t)self4 isAlwaysLive:(BOOL)self5 serviceID:(id)self6 currentPlaybackDate:(id)self7 playbackType:(int64_t)self8 isTimerDerived:(BOOL)self9 isFromActivePlayerPath:(BOOL)path playablePassthrough:(id)passthrough channelID:(id)channelID contentTitle:(id)title
{
  dCopy = d;
  timestampCopy = timestamp;
  durationCopy = duration;
  timeCopy = time;
  featureDurationCopy = featureDuration;
  elapsedTimeCopy = elapsedTime;
  iDCopy = iD;
  contentIDCopy = contentID;
  accountIDCopy = accountID;
  rateCopy = rate;
  serviceIDCopy = serviceID;
  dateCopy = date;
  passthroughCopy = passthrough;
  channelIDCopy = channelID;
  titleCopy = title;
  v76.receiver = self;
  v76.super_class = WLKPlaybackSummary;
  v36 = [(WLKPlaybackSummary *)&v76 init];
  if (v36)
  {
    v37 = [dCopy copy];
    bundleID = v36->_bundleID;
    v36->_bundleID = v37;

    v39 = [timestampCopy copy];
    timestamp = v36->_timestamp;
    v36->_timestamp = v39;

    v41 = [durationCopy copy];
    duration = v36->_duration;
    v36->_duration = v41;

    v43 = [timeCopy copy];
    elapsedTime = v36->_elapsedTime;
    v36->_elapsedTime = v43;

    v45 = [featureDurationCopy copy];
    featureDuration = v36->_featureDuration;
    v36->_featureDuration = v45;

    v47 = [elapsedTimeCopy copy];
    featureElapsedTime = v36->_featureElapsedTime;
    v36->_featureElapsedTime = v47;

    v49 = [iDCopy copy];
    externalProfileID = v36->_externalProfileID;
    v36->_externalProfileID = v49;

    v51 = [contentIDCopy copy];
    contentID = v36->_contentID;
    v36->_contentID = v51;

    v53 = [accountIDCopy copy];
    accountID = v36->_accountID;
    v36->_accountID = v53;

    v36->_playbackState = state;
    v55 = [rateCopy copy];
    playbackRate = v36->_playbackRate;
    v36->_playbackRate = v55;

    v36->_completionState = completionState;
    v36->_isAlwaysLive = live;
    v57 = [serviceIDCopy copy];
    serviceID = v36->_serviceID;
    v36->_serviceID = v57;

    v59 = [dateCopy copy];
    currentPlaybackDate = v36->_currentPlaybackDate;
    v36->_currentPlaybackDate = v59;

    v36->_playbackType = type;
    v36->_isTimerDerived = derived;
    v36->_fromActivePlayerPath = path;
    v61 = [passthroughCopy copy];
    playablePassthrough = v36->_playablePassthrough;
    v36->_playablePassthrough = v61;

    v63 = [channelIDCopy copy];
    channelID = v36->_channelID;
    v36->_channelID = v63;

    v65 = [titleCopy copy];
    contentTitle = v36->_contentTitle;
    v36->_contentTitle = v65;
  }

  return v36;
}

- (WLKPlaybackSummary)initWithMediaRemoteDictionary:(id)dictionary bundleID:(id)d accountID:(id)iD isFromActivePlayerPath:(BOOL)path
{
  dictionaryCopy = dictionary;
  v9 = *MEMORY[0x277D27BD8];
  iDCopy = iD;
  dCopy = d;
  v10 = [dictionaryCopy valueForKey:v9];
  v11 = [dictionaryCopy valueForKey:*MEMORY[0x277D27BE0]];
  v12 = [dictionaryCopy valueForKey:*MEMORY[0x277D27C80]];
  v13 = [dictionaryCopy valueForKey:*MEMORY[0x277D27BF0]];
  v52 = [dictionaryCopy valueForKey:*MEMORY[0x277D27BF8]];
  v14 = [dictionaryCopy valueForKey:*MEMORY[0x277D27C70]];
  v15 = [dictionaryCopy valueForKey:*MEMORY[0x277D27BB8]];
  v16 = [dictionaryCopy valueForKey:*MEMORY[0x277D27C10]];
  v50 = [dictionaryCopy valueForKey:*MEMORY[0x277D27B98]];
  v49 = [dictionaryCopy valueForKey:*MEMORY[0x277D27C88]];
  v48 = v12;
  v51 = v14;
  if ([v16 BOOLValue])
  {
    v17 = v15;
    if ([v14 length])
    {
      v18 = 0;
      v42 = 0;
      v19 = 1;
      v20 = 2;
LABEL_8:
      v41 = v20;
      goto LABEL_9;
    }

    if ([v13 length])
    {
      v18 = 0;
      v19 = 0;
      v42 = 1;
      v20 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v17 = v15;
  }

  v18 = 1;
  v41 = 0;
  v42 = 1;
  v19 = 1;
LABEL_9:
  v21 = [dictionaryCopy valueForKey:*MEMORY[0x277D27C40]];
  objc_opt_class();
  v47 = v13;
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v21 floatValue], v22 == 0.0))
  {
    v23 = 2;
    if (!v18)
    {
LABEL_12:
      v24 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v23 = 1;
    if (!v18)
    {
      goto LABEL_12;
    }
  }

  v25 = [dictionaryCopy valueForKey:*MEMORY[0x277D27C38]];
  v26 = v25;
  if (!v25)
  {
    goto LABEL_21;
  }

  [v25 floatValue];
  v28 = v27;
  if (fabs(v28) >= 0.00000011920929)
  {
    if (fabs(v28 + -1.0) < 0.00000011920929)
    {
      v24 = 2;
      goto LABEL_19;
    }

    NSLog(&cfstr_Wlkplaybacksum_0.isa, v26);
LABEL_21:
    NSLog(&cfstr_Wlkplaybacksum_1.isa);
    [v10 doubleValue];
    v30 = v29;
    [v11 doubleValue];
    v24 = [WLKPlaybackSummary completionStateForDuration:v30 elapsedTime:v31];
    goto LABEL_22;
  }

  v24 = 1;
LABEL_19:
  NSLog(&cfstr_Wlkplaybacksum.isa, v26);
LABEL_22:

LABEL_23:
  date = v17;
  if (v42 & v19)
  {
    v33 = v48;
  }

  else
  {
    v33 = v48;
    if (!v17)
    {
      date = [MEMORY[0x277CBEAA8] date];
    }
  }

  BYTE1(v40) = path;
  LOBYTE(v40) = 0;
  v34 = date;
  LOBYTE(v39) = [v16 BOOLValue];
  v35 = [(WLKPlaybackSummary *)self initWithBundleID:dCopy timestamp:v33 duration:v10 elapsedTime:v11 featureDuration:0 featureElapsedTime:0 externalProfileID:v52 contentID:v47 accountID:iDCopy playbackState:v23 playbackRate:v21 completionState:v24 isAlwaysLive:v39 serviceID:v51 currentPlaybackDate:date playbackType:v41 isTimerDerived:v40 isFromActivePlayerPath:v50 channelID:v49 contentTitle:?];

  v36 = v35;
  v37 = 0;
  if ([(WLKPlaybackSummary *)v36 _isValid])
  {
    v37 = v36;
  }

  return v37;
}

+ (id)VODSummaryWithBundleID:(id)d channelID:(id)iD contentID:(id)contentID accountID:(id)accountID externalProfileID:(id)profileID timestamp:(id)timestamp duration:(id)duration elapsedTime:(id)self0 featureDuration:(id)self1 featureElapsedTime:(id)self2 playbackState:(int64_t)self3 playbackRate:(id)self4 contentTitle:(id)self5 completionState:(int64_t)self6
{
  completionStateCopy = completionState;
  dCopy = d;
  iDCopy = iD;
  contentIDCopy = contentID;
  accountIDCopy = accountID;
  profileIDCopy = profileID;
  timestampCopy = timestamp;
  durationCopy = duration;
  timeCopy = time;
  featureDurationCopy = featureDuration;
  elapsedTimeCopy = elapsedTime;
  rateCopy = rate;
  titleCopy = title;
  v31 = titleCopy;
  if (!completionState)
  {
    v40 = titleCopy;
    NSLog(&cfstr_Wlkplaybacksum_1.isa);
    if (featureDurationCopy && elapsedTimeCopy)
    {
      [featureDurationCopy doubleValue];
      v33 = v32;
      v34 = elapsedTimeCopy;
    }

    else
    {
      [durationCopy doubleValue];
      v33 = v35;
      v34 = timeCopy;
    }

    [v34 doubleValue];
    completionStateCopy = [WLKPlaybackSummary completionStateForDuration:v33 elapsedTime:v36];
    v31 = v40;
  }

  LOWORD(v39) = 256;
  LOBYTE(v38) = 0;
  v43 = [[WLKPlaybackSummary alloc] initWithBundleID:dCopy timestamp:timestampCopy duration:durationCopy elapsedTime:timeCopy featureDuration:featureDurationCopy featureElapsedTime:elapsedTimeCopy externalProfileID:profileIDCopy contentID:contentIDCopy accountID:accountIDCopy playbackState:state playbackRate:rateCopy completionState:completionStateCopy isAlwaysLive:v38 serviceID:0 currentPlaybackDate:0 playbackType:0 isTimerDerived:v39 isFromActivePlayerPath:iDCopy channelID:v31 contentTitle:?];

  return v43;
}

+ (id)liveSummaryWithBundleID:(id)d channelID:(id)iD serviceID:(id)serviceID accountID:(id)accountID externalProfileID:(id)profileID timestamp:(id)timestamp playbackState:(int64_t)state playbackRate:(id)self0 currentPlaybackDate:(id)self1
{
  dateCopy = date;
  rateCopy = rate;
  timestampCopy = timestamp;
  profileIDCopy = profileID;
  accountIDCopy = accountID;
  serviceIDCopy = serviceID;
  iDCopy = iD;
  dCopy = d;
  LOWORD(v28) = 256;
  LOBYTE(v27) = 1;
  v25 = [[WLKPlaybackSummary alloc] initWithBundleID:dCopy timestamp:timestampCopy duration:0 elapsedTime:0 featureDuration:0 featureElapsedTime:0 externalProfileID:profileIDCopy contentID:0 accountID:accountIDCopy playbackState:state playbackRate:rateCopy completionState:0 isAlwaysLive:v27 serviceID:serviceIDCopy currentPlaybackDate:dateCopy playbackType:2 isTimerDerived:v28 isFromActivePlayerPath:iDCopy channelID:0 contentTitle:?];

  return v25;
}

+ (id)EBSSummaryWithBundleID:(id)d channelID:(id)iD externalId:(id)id accountID:(id)accountID externalProfileID:(id)profileID timestamp:(id)timestamp playbackState:(int64_t)state playbackRate:(id)self0 currentPlaybackDate:(id)self1
{
  dateCopy = date;
  rateCopy = rate;
  timestampCopy = timestamp;
  profileIDCopy = profileID;
  accountIDCopy = accountID;
  idCopy = id;
  iDCopy = iD;
  dCopy = d;
  LOWORD(v28) = 256;
  LOBYTE(v27) = 1;
  v25 = [[WLKPlaybackSummary alloc] initWithBundleID:dCopy timestamp:timestampCopy duration:0 elapsedTime:0 featureDuration:0 featureElapsedTime:0 externalProfileID:profileIDCopy contentID:idCopy accountID:accountIDCopy playbackState:state playbackRate:rateCopy completionState:0 isAlwaysLive:v27 serviceID:0 currentPlaybackDate:dateCopy playbackType:1 isTimerDerived:v28 isFromActivePlayerPath:iDCopy channelID:0 contentTitle:?];

  return v25;
}

+ (id)liveSummaryWithBundleID:(id)d channelID:(id)iD serviceID:(id)serviceID accountID:(id)accountID externalProfileID:(id)profileID timestamp:(id)timestamp playbackState:(int64_t)state playbackRate:(id)self0 currentPlaybackDate:(id)self1 playablePassthrough:(id)self2
{
  passthroughCopy = passthrough;
  dateCopy = date;
  rateCopy = rate;
  timestampCopy = timestamp;
  profileIDCopy = profileID;
  accountIDCopy = accountID;
  serviceIDCopy = serviceID;
  iDCopy = iD;
  dCopy = d;
  LOWORD(v30) = 256;
  LOBYTE(v29) = 1;
  v27 = [[WLKPlaybackSummary alloc] initWithBundleID:dCopy timestamp:timestampCopy duration:0 elapsedTime:0 featureDuration:0 featureElapsedTime:0 externalProfileID:profileIDCopy contentID:0 accountID:accountIDCopy playbackState:state playbackRate:rateCopy completionState:0 isAlwaysLive:v29 serviceID:serviceIDCopy currentPlaybackDate:dateCopy playbackType:2 isTimerDerived:v30 isFromActivePlayerPath:passthroughCopy playablePassthrough:iDCopy channelID:0 contentTitle:?];

  return v27;
}

+ (id)EBSSummaryWithBundleID:(id)d channelID:(id)iD externalId:(id)id accountID:(id)accountID externalProfileID:(id)profileID timestamp:(id)timestamp playbackState:(int64_t)state playbackRate:(id)self0 currentPlaybackDate:(id)self1 playablePassthrough:(id)self2
{
  passthroughCopy = passthrough;
  dateCopy = date;
  rateCopy = rate;
  timestampCopy = timestamp;
  profileIDCopy = profileID;
  accountIDCopy = accountID;
  idCopy = id;
  iDCopy = iD;
  dCopy = d;
  LOWORD(v30) = 256;
  LOBYTE(v29) = 1;
  v27 = [[WLKPlaybackSummary alloc] initWithBundleID:dCopy timestamp:timestampCopy duration:0 elapsedTime:0 featureDuration:0 featureElapsedTime:0 externalProfileID:profileIDCopy contentID:idCopy accountID:accountIDCopy playbackState:state playbackRate:rateCopy completionState:0 isAlwaysLive:v29 serviceID:0 currentPlaybackDate:dateCopy playbackType:1 isTimerDerived:v30 isFromActivePlayerPath:passthroughCopy playablePassthrough:iDCopy channelID:0 contentTitle:?];

  return v27;
}

+ (id)VODSummaryWithBundleID:(id)d channelID:(id)iD contentID:(id)contentID accountID:(id)accountID externalProfileID:(id)profileID timestamp:(id)timestamp duration:(id)duration elapsedTime:(id)self0 featureDuration:(id)self1 featureElapsedTime:(id)self2 playbackState:(int64_t)self3 playbackRate:(id)self4 playablePassthrough:(id)self5 contentTitle:(id)self6 completionState:(int64_t)self7
{
  dCopy = d;
  iDCopy = iD;
  contentIDCopy = contentID;
  accountIDCopy = accountID;
  profileIDCopy = profileID;
  timestampCopy = timestamp;
  durationCopy = duration;
  timeCopy = time;
  featureDurationCopy = featureDuration;
  completionStateCopy = completionState;
  elapsedTimeCopy = elapsedTime;
  rateCopy = rate;
  passthroughCopy = passthrough;
  titleCopy = title;
  if (!completionState)
  {
    NSLog(&cfstr_Wlkplaybacksum_1.isa);
    if (featureDurationCopy && elapsedTimeCopy)
    {
      [featureDurationCopy doubleValue];
      v33 = v32;
      v34 = elapsedTimeCopy;
    }

    else
    {
      [durationCopy doubleValue];
      v33 = v35;
      v34 = timeCopy;
    }

    [v34 doubleValue];
    completionStateCopy = [WLKPlaybackSummary completionStateForDuration:v33 elapsedTime:v36];
  }

  LOWORD(v39) = 256;
  LOBYTE(v38) = 0;
  v40 = [[WLKPlaybackSummary alloc] initWithBundleID:dCopy timestamp:timestampCopy duration:durationCopy elapsedTime:timeCopy featureDuration:featureDurationCopy featureElapsedTime:elapsedTimeCopy externalProfileID:profileIDCopy contentID:contentIDCopy accountID:accountIDCopy playbackState:state playbackRate:rateCopy completionState:completionStateCopy isAlwaysLive:v38 serviceID:0 currentPlaybackDate:0 playbackType:0 isTimerDerived:v39 isFromActivePlayerPath:passthroughCopy playablePassthrough:iDCopy channelID:titleCopy contentTitle:?];

  return v40;
}

- (NSNumber)accountIDAsNumber
{
  v2 = MEMORY[0x277CCABB0];
  accountID = [(WLKPlaybackSummary *)self accountID];
  v4 = [v2 numberWithLongLong:{objc_msgSend(accountID, "longLongValue")}];

  return v4;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WLKPlaybackSummary *)self isEqualToSummary:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSummary:(id)summary
{
  summaryCopy = summary;
  v5 = summaryCopy;
  if (summaryCopy && (playbackType = self->_playbackType, playbackType == [summaryCopy playbackType]) && (playbackState = self->_playbackState, playbackState == objc_msgSend(v5, "playbackState")) && (completionState = self->_completionState, completionState == objc_msgSend(v5, "completionState")) && (isAlwaysLive = self->_isAlwaysLive, isAlwaysLive == objc_msgSend(v5, "isAlwaysLive")) && (isTimerDerived = self->_isTimerDerived, isTimerDerived == objc_msgSend(v5, "isTimerDerived")))
  {
    bundleID = self->_bundleID;
    bundleID = [v5 bundleID];
    if ([(NSString *)bundleID isEqualToString:bundleID])
    {
      accountID = self->_accountID;
      accountID = [v5 accountID];
      if ([(NSString *)accountID isEqualToString:accountID])
      {
        timestamp = self->_timestamp;
        timestamp = [v5 timestamp];
        if ([(NSDate *)timestamp isEqualToDate:timestamp])
        {
          currentPlaybackDate = self->_currentPlaybackDate;
          currentPlaybackDate = [v5 currentPlaybackDate];
          if ([(WLKPlaybackSummary *)self _compareOptional:currentPlaybackDate with:currentPlaybackDate])
          {
            duration = self->_duration;
            duration = [v5 duration];
            if ([(WLKPlaybackSummary *)self _compareOptional:duration with:duration])
            {
              elapsedTime = self->_elapsedTime;
              elapsedTime = [v5 elapsedTime];
              if ([(WLKPlaybackSummary *)self _compareOptional:elapsedTime with:elapsedTime])
              {
                featureDuration = self->_featureDuration;
                featureDuration = [v5 featureDuration];
                if ([(WLKPlaybackSummary *)self _compareOptional:featureDuration with:featureDuration])
                {
                  featureElapsedTime = self->_featureElapsedTime;
                  featureElapsedTime = [v5 featureElapsedTime];
                  if ([(WLKPlaybackSummary *)self _compareOptional:featureElapsedTime with:?])
                  {
                    externalProfileID = self->_externalProfileID;
                    externalProfileID = [v5 externalProfileID];
                    if ([(WLKPlaybackSummary *)self _compareOptional:externalProfileID with:?])
                    {
                      contentID = self->_contentID;
                      contentID = [v5 contentID];
                      if ([(WLKPlaybackSummary *)self _compareOptional:contentID with:?])
                      {
                        serviceID = self->_serviceID;
                        serviceID = [v5 serviceID];
                        if ([(WLKPlaybackSummary *)self _compareOptional:serviceID with:?])
                        {
                          channelID = self->_channelID;
                          channelID = [v5 channelID];
                          if ([(WLKPlaybackSummary *)self _compareOptional:channelID with:?])
                          {
                            playbackRate = self->_playbackRate;
                            playbackRate = [v5 playbackRate];
                            if ([(WLKPlaybackSummary *)self _compareOptional:playbackRate with:?])
                            {
                              playablePassthrough = self->_playablePassthrough;
                              playablePassthrough = [v5 playablePassthrough];
                              if ([(WLKPlaybackSummary *)self _compareOptional:playablePassthrough with:?])
                              {
                                contentTitle = self->_contentTitle;
                                contentTitle = [v5 contentTitle];
                                v33 = [(WLKPlaybackSummary *)self _compareOptional:contentTitle with:contentTitle];
                              }

                              else
                              {
                                v33 = 0;
                              }
                            }

                            else
                            {
                              v33 = 0;
                            }
                          }

                          else
                          {
                            v33 = 0;
                          }
                        }

                        else
                        {
                          v33 = 0;
                        }
                      }

                      else
                      {
                        v33 = 0;
                      }
                    }

                    else
                    {
                      v33 = 0;
                    }
                  }

                  else
                  {
                    v33 = 0;
                  }
                }

                else
                {
                  v33 = 0;
                }
              }

              else
              {
                v33 = 0;
              }
            }

            else
            {
              v33 = 0;
            }
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (BOOL)isEquivalentToSummaryExcludingCursor:(id)cursor
{
  cursorCopy = cursor;
  v5 = cursorCopy;
  if (cursorCopy && (playbackType = self->_playbackType, playbackType == [cursorCopy playbackType]) && (playbackState = self->_playbackState, playbackState == objc_msgSend(v5, "playbackState")) && (completionState = self->_completionState, completionState == objc_msgSend(v5, "completionState")) && (isAlwaysLive = self->_isAlwaysLive, isAlwaysLive == objc_msgSend(v5, "isAlwaysLive")))
  {
    bundleID = self->_bundleID;
    bundleID = [v5 bundleID];
    if ([(NSString *)bundleID isEqualToString:bundleID])
    {
      accountID = self->_accountID;
      accountID = [v5 accountID];
      if ([(NSString *)accountID isEqualToString:accountID])
      {
        duration = self->_duration;
        duration = [v5 duration];
        if ([(WLKPlaybackSummary *)self _compareOptionalTemporalValue:duration with:duration fuzzy:1])
        {
          featureDuration = self->_featureDuration;
          featureDuration = [v5 featureDuration];
          if ([(WLKPlaybackSummary *)self _compareOptionalTemporalValue:featureDuration with:featureDuration fuzzy:1])
          {
            externalProfileID = self->_externalProfileID;
            externalProfileID = [v5 externalProfileID];
            if ([(WLKPlaybackSummary *)self _compareOptional:externalProfileID with:externalProfileID])
            {
              contentID = self->_contentID;
              contentID = [v5 contentID];
              if ([(WLKPlaybackSummary *)self _compareOptional:contentID with:contentID])
              {
                serviceID = self->_serviceID;
                serviceID = [v5 serviceID];
                if ([(WLKPlaybackSummary *)self _compareOptional:serviceID with:serviceID])
                {
                  channelID = self->_channelID;
                  channelID = [v5 channelID];
                  if ([(WLKPlaybackSummary *)self _compareOptional:channelID with:?])
                  {
                    playbackRate = self->_playbackRate;
                    playbackRate = [v5 playbackRate];
                    if ([(WLKPlaybackSummary *)self _compareOptional:playbackRate with:?])
                    {
                      playablePassthrough = self->_playablePassthrough;
                      playablePassthrough = [v5 playablePassthrough];
                      if ([(WLKPlaybackSummary *)self _compareOptional:playablePassthrough with:?])
                      {
                        contentTitle = self->_contentTitle;
                        contentTitle = [v5 contentTitle];
                        v28 = [(WLKPlaybackSummary *)self _compareOptional:contentTitle with:contentTitle];
                      }

                      else
                      {
                        v28 = 0;
                      }
                    }

                    else
                    {
                      v28 = 0;
                    }
                  }

                  else
                  {
                    v28 = 0;
                  }
                }

                else
                {
                  v28 = 0;
                }
              }

              else
              {
                v28 = 0;
              }
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)isEquivalentToSummaryExcludingTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v5 = timestampCopy;
  if (timestampCopy && (playbackType = self->_playbackType, playbackType == [timestampCopy playbackType]) && (playbackState = self->_playbackState, playbackState == objc_msgSend(v5, "playbackState")) && (completionState = self->_completionState, completionState == objc_msgSend(v5, "completionState")) && (isAlwaysLive = self->_isAlwaysLive, isAlwaysLive == objc_msgSend(v5, "isAlwaysLive")) && (isTimerDerived = self->_isTimerDerived, isTimerDerived == objc_msgSend(v5, "isTimerDerived")))
  {
    bundleID = self->_bundleID;
    bundleID = [v5 bundleID];
    if ([(NSString *)bundleID isEqualToString:bundleID])
    {
      accountID = self->_accountID;
      accountID = [v5 accountID];
      if ([(NSString *)accountID isEqualToString:accountID])
      {
        duration = self->_duration;
        duration = [v5 duration];
        if ([(WLKPlaybackSummary *)self _compareOptionalTemporalValue:duration with:duration fuzzy:1])
        {
          elapsedTime = self->_elapsedTime;
          elapsedTime = [v5 elapsedTime];
          if ([(WLKPlaybackSummary *)self _compareOptionalTemporalValue:elapsedTime with:elapsedTime fuzzy:1])
          {
            featureDuration = self->_featureDuration;
            featureDuration = [v5 featureDuration];
            if ([(WLKPlaybackSummary *)self _compareOptionalTemporalValue:featureDuration with:featureDuration fuzzy:1])
            {
              featureElapsedTime = self->_featureElapsedTime;
              featureElapsedTime = [v5 featureElapsedTime];
              if ([(WLKPlaybackSummary *)self _compareOptionalTemporalValue:featureElapsedTime with:featureElapsedTime fuzzy:1])
              {
                externalProfileID = self->_externalProfileID;
                externalProfileID = [v5 externalProfileID];
                if ([(WLKPlaybackSummary *)self _compareOptional:externalProfileID with:externalProfileID])
                {
                  contentID = self->_contentID;
                  contentID = [v5 contentID];
                  if ([(WLKPlaybackSummary *)self _compareOptional:contentID with:?])
                  {
                    serviceID = self->_serviceID;
                    serviceID = [v5 serviceID];
                    if ([(WLKPlaybackSummary *)self _compareOptional:serviceID with:?])
                    {
                      channelID = self->_channelID;
                      channelID = [v5 channelID];
                      if ([(WLKPlaybackSummary *)self _compareOptional:channelID with:?])
                      {
                        playbackRate = self->_playbackRate;
                        playbackRate = [v5 playbackRate];
                        if ([(WLKPlaybackSummary *)self _compareOptional:playbackRate with:?])
                        {
                          playablePassthrough = self->_playablePassthrough;
                          playablePassthrough = [v5 playablePassthrough];
                          if ([(WLKPlaybackSummary *)self _compareOptional:playablePassthrough with:?])
                          {
                            contentTitle = self->_contentTitle;
                            contentTitle = [v5 contentTitle];
                            v31 = [(WLKPlaybackSummary *)self _compareOptional:contentTitle with:contentTitle];
                          }

                          else
                          {
                            v31 = 0;
                          }
                        }

                        else
                        {
                          v31 = 0;
                        }
                      }

                      else
                      {
                        v31 = 0;
                      }
                    }

                    else
                    {
                      v31 = 0;
                    }
                  }

                  else
                  {
                    v31 = 0;
                  }
                }

                else
                {
                  v31 = 0;
                }
              }

              else
              {
                v31 = 0;
              }
            }

            else
            {
              v31 = 0;
            }
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)isSameContent:(id)content
{
  contentCopy = content;
  v5 = contentCopy;
  if (contentCopy && (playbackType = self->_playbackType, playbackType == [contentCopy playbackType]) && (isAlwaysLive = self->_isAlwaysLive, isAlwaysLive == objc_msgSend(v5, "isAlwaysLive")))
  {
    bundleID = self->_bundleID;
    bundleID = [v5 bundleID];
    if ([(NSString *)bundleID isEqualToString:bundleID])
    {
      accountID = self->_accountID;
      accountID = [v5 accountID];
      if ([(NSString *)accountID isEqualToString:accountID])
      {
        contentID = self->_contentID;
        contentID = [v5 contentID];
        if ([(WLKPlaybackSummary *)self _compareOptional:contentID with:contentID])
        {
          serviceID = self->_serviceID;
          serviceID = [v5 serviceID];
          if ([(WLKPlaybackSummary *)self _compareOptional:serviceID with:serviceID])
          {
            channelID = self->_channelID;
            channelID = [v5 channelID];
            if ([(WLKPlaybackSummary *)self _compareOptional:channelID with:channelID])
            {
              externalProfileID = self->_externalProfileID;
              externalProfileID = [v5 externalProfileID];
              v20 = [(WLKPlaybackSummary *)self _compareOptional:externalProfileID with:externalProfileID];
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleID hash];
  v4 = [(NSDate *)self->_timestamp hash]^ v3;
  v5 = [(NSNumber *)self->_duration hash];
  v6 = v4 ^ v5 ^ [(NSNumber *)self->_elapsedTime hash];
  v7 = v6 ^ [(NSString *)self->_contentID hash]^ self->_playbackState ^ self->_playbackType;
  isAlwaysLive = self->_isAlwaysLive;
  v9 = isAlwaysLive ^ [(NSString *)self->_serviceID hash];
  v10 = v9 ^ [(NSString *)self->_channelID hash];
  v11 = v7 ^ v10 ^ [(NSString *)self->_playablePassthrough hash];
  return v11 ^ [(NSString *)self->_contentTitle hash];
}

- (id)shortDescription
{
  channelID = self->_channelID;
  if (!channelID)
  {
    channelID = self->_bundleID;
  }

  contentID = self->_contentID;
  if (!contentID)
  {
    contentID = self->_serviceID;
  }

  completionState = self->_completionState;
  v6 = contentID;
  v7 = channelID;
  v8 = [WLKPlaybackSummary debugStringForCompletionState:completionState];
  v9 = [WLKPlaybackSummary _debugStringForPlaybackType:self->_playbackType];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@:::%@] [%@] [%@]", v7, v6, v9, v8];
  v11 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = WLKPlaybackSummary;
  v12 = [(WLKPlaybackSummary *)&v15 description];

  v13 = [v11 stringWithFormat:@"%@ %@", v12, v10];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = WLKPlaybackSummary;
  v4 = [(WLKPlaybackSummary *)&v8 description];
  dictionaryRepresentation = [(WLKPlaybackSummary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v51[19] = *MEMORY[0x277D85DE8];
  v3 = [WLKPlaybackSummary debugStringForCompletionState:self->_completionState];
  v4 = [WLKPlaybackSummary debugStringForPlaybackState:self->_playbackState];
  v5 = [WLKPlaybackSummary _debugStringForPlaybackType:self->_playbackType];
  v50[0] = @"bundleID";
  bundleID = self->_bundleID;
  v47 = bundleID;
  if (!bundleID)
  {
    bundleID = [MEMORY[0x277CBEB68] null];
  }

  v36 = bundleID;
  v51[0] = bundleID;
  v50[1] = @"timestamp";
  timestamp = self->_timestamp;
  v46 = timestamp;
  if (!timestamp)
  {
    timestamp = [MEMORY[0x277CBEB68] null];
  }

  v35 = timestamp;
  v51[1] = timestamp;
  v50[2] = @"duration";
  duration = self->_duration;
  v45 = duration;
  if (!duration)
  {
    duration = [MEMORY[0x277CBEB68] null];
  }

  v34 = duration;
  v51[2] = duration;
  v50[3] = @"elapsedTime";
  elapsedTime = self->_elapsedTime;
  v44 = elapsedTime;
  if (!elapsedTime)
  {
    elapsedTime = [MEMORY[0x277CBEB68] null];
  }

  v33 = elapsedTime;
  v51[3] = elapsedTime;
  v50[4] = @"featureDuration";
  featureDuration = self->_featureDuration;
  v43 = featureDuration;
  if (!featureDuration)
  {
    featureDuration = [MEMORY[0x277CBEB68] null];
  }

  v32 = featureDuration;
  v51[4] = featureDuration;
  v50[5] = @"featureElapsedTime";
  featureElapsedTime = self->_featureElapsedTime;
  v42 = featureElapsedTime;
  if (!featureElapsedTime)
  {
    featureElapsedTime = [MEMORY[0x277CBEB68] null];
  }

  v31 = featureElapsedTime;
  v51[5] = featureElapsedTime;
  v50[6] = @"contentID";
  contentID = self->_contentID;
  v41 = contentID;
  if (!contentID)
  {
    contentID = [MEMORY[0x277CBEB68] null];
  }

  v30 = contentID;
  v51[6] = contentID;
  v51[7] = v4;
  v50[7] = @"playbackState";
  v50[8] = @"playbackRate";
  playbackRate = self->_playbackRate;
  v40 = playbackRate;
  if (!playbackRate)
  {
    playbackRate = [MEMORY[0x277CBEB68] null];
  }

  v48 = v4;
  v29 = playbackRate;
  v51[8] = playbackRate;
  v51[9] = v3;
  v50[9] = @"completionState";
  v50[10] = @"serviceID";
  serviceID = self->_serviceID;
  v39 = serviceID;
  if (!serviceID)
  {
    serviceID = [MEMORY[0x277CBEB68] null];
  }

  v49 = v3;
  v28 = serviceID;
  v51[10] = serviceID;
  v50[11] = @"currentPlaybackDate";
  currentPlaybackDate = self->_currentPlaybackDate;
  null = currentPlaybackDate;
  if (!currentPlaybackDate)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v27 = null;
  v51[11] = null;
  v50[12] = @"isAlwaysLive";
  v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAlwaysLive];
  v51[12] = v38;
  v51[13] = v5;
  v50[13] = @"playbackType";
  v50[14] = @"isTimerDerived";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_isTimerDerived];
  v51[14] = v17;
  v50[15] = @"isFromActivePlayerPath";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_fromActivePlayerPath];
  v51[15] = v18;
  v50[16] = @"channelID";
  channelID = self->_channelID;
  null2 = channelID;
  if (!channelID)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v51[16] = null2;
  v50[17] = @"playablePassthrough";
  playablePassthrough = self->_playablePassthrough;
  null3 = playablePassthrough;
  if (!playablePassthrough)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v51[17] = null3;
  v50[18] = @"contentTitle";
  contentTitle = self->_contentTitle;
  null4 = contentTitle;
  if (!contentTitle)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v51[18] = null4;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:19];
  if (contentTitle)
  {
    if (playablePassthrough)
    {
      goto LABEL_29;
    }

LABEL_54:

    if (channelID)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

  if (!playablePassthrough)
  {
    goto LABEL_54;
  }

LABEL_29:
  if (channelID)
  {
    goto LABEL_30;
  }

LABEL_55:

LABEL_30:
  if (!currentPlaybackDate)
  {
  }

  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!v45)
  {
  }

  if (!v46)
  {
  }

  if (!v47)
  {
  }

  v25 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (id)debugStringForPlaybackState:(int64_t)state
{
  v3 = @"Playing";
  if (state == 2)
  {
    v3 = @"Paused";
  }

  if (state)
  {
    return v3;
  }

  else
  {
    return @"Stopped";
  }
}

+ (id)_debugStringForPlaybackType:(int64_t)type
{
  v3 = @"VOD";
  if (type == 1)
  {
    v3 = @"EBS";
  }

  if (type == 2)
  {
    return @"Live";
  }

  else
  {
    return v3;
  }
}

- (id)JSONRepresentation
{
  dictionaryRepresentation = [(WLKPlaybackSummary *)self dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_completionState];
  [v4 setObject:v5 forKeyedSubscript:@"completionStateValue"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_playbackState];
  [v4 setObject:v6 forKeyedSubscript:@"playbackStateValue"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_playbackType];
  [v4 setObject:v7 forKeyedSubscript:@"playbackTypeValue"];

  [v4 setObject:self->_accountID forKeyedSubscript:@"accountID"];

  return v4;
}

- (id)sanitizedCopy
{
  v24 = [WLKPlaybackSummary alloc];
  bundleID = [(WLKPlaybackSummary *)self bundleID];
  timestamp = [(WLKPlaybackSummary *)self timestamp];
  duration = [(WLKPlaybackSummary *)self duration];
  elapsedTime = [(WLKPlaybackSummary *)self elapsedTime];
  featureDuration = [(WLKPlaybackSummary *)self featureDuration];
  featureElapsedTime = [(WLKPlaybackSummary *)self featureElapsedTime];
  contentID = [(WLKPlaybackSummary *)self contentID];
  playbackState = [(WLKPlaybackSummary *)self playbackState];
  playbackRate = [(WLKPlaybackSummary *)self playbackRate];
  completionState = [(WLKPlaybackSummary *)self completionState];
  isAlwaysLive = [(WLKPlaybackSummary *)self isAlwaysLive];
  serviceID = [(WLKPlaybackSummary *)self serviceID];
  currentPlaybackDate = [(WLKPlaybackSummary *)self currentPlaybackDate];
  playbackType = [(WLKPlaybackSummary *)self playbackType];
  isTimerDerived = [(WLKPlaybackSummary *)self isTimerDerived];
  isFromActivePlayerPath = [(WLKPlaybackSummary *)self isFromActivePlayerPath];
  playablePassthrough = [(WLKPlaybackSummary *)self playablePassthrough];
  channelID = [(WLKPlaybackSummary *)self channelID];
  contentTitle = [(WLKPlaybackSummary *)self contentTitle];
  BYTE1(v12) = isFromActivePlayerPath;
  LOBYTE(v12) = isTimerDerived;
  LOBYTE(v11) = isAlwaysLive;
  v25 = [(WLKPlaybackSummary *)v24 initWithBundleID:bundleID timestamp:timestamp duration:duration elapsedTime:elapsedTime featureDuration:featureDuration featureElapsedTime:featureElapsedTime externalProfileID:0 contentID:contentID accountID:0 playbackState:playbackState playbackRate:playbackRate completionState:completionState isAlwaysLive:v11 serviceID:serviceID currentPlaybackDate:currentPlaybackDate playbackType:playbackType isTimerDerived:v12 isFromActivePlayerPath:playablePassthrough playablePassthrough:channelID channelID:contentTitle contentTitle:?];

  return v25;
}

- (WLKPlaybackSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    if (initWithCoder__onceToken != -1)
    {
      [WLKPlaybackSummary initWithCoder:];
    }

    v5 = [(WLKPlaybackSummary *)self init];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.bundleID"];
      bundleID = v5->_bundleID;
      v5->_bundleID = v6;

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.timestamp"];
      timestamp = v5->_timestamp;
      v5->_timestamp = v8;

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.duration"];
      duration = v5->_duration;
      v5->_duration = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.elapsedTime"];
      elapsedTime = v5->_elapsedTime;
      v5->_elapsedTime = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.featureDuration"];
      featureDuration = v5->_featureDuration;
      v5->_featureDuration = v14;

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.featureElapsedTime"];
      featureElapsedTime = v5->_featureElapsedTime;
      v5->_featureElapsedTime = v16;

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.externalContentID"];
      contentID = v5->_contentID;
      v5->_contentID = v18;

      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.externalUserProfileID"];
      externalProfileID = v5->_externalProfileID;
      v5->_externalProfileID = v20;

      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.accountID"];
      accountID = v5->_accountID;
      v5->_accountID = v22;

      v5->_playbackState = [coderCopy decodeIntegerForKey:@"WLKPlaybackActivity.playbackState"];
      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.playbackRate"];
      playbackRate = v5->_playbackRate;
      v5->_playbackRate = v24;

      v5->_completionState = [coderCopy decodeIntegerForKey:@"WLKPlaybackActivity.completionState"];
      v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.serviceID"];
      serviceID = v5->_serviceID;
      v5->_serviceID = v26;

      v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.currentPlaybackDate"];
      currentPlaybackDate = v5->_currentPlaybackDate;
      v5->_currentPlaybackDate = v28;

      v5->_isAlwaysLive = [coderCopy decodeBoolForKey:@"WLKPlaybackActivity.isAlwaysLive"];
      v5->_playbackType = [coderCopy decodeIntegerForKey:@"WLKPlaybackActivity.playbackType"];
      v5->_isTimerDerived = [coderCopy decodeBoolForKey:@"WLKPlaybackActivity.isTimerDerived"];
      v5->_fromActivePlayerPath = [coderCopy decodeBoolForKey:@"WLKPlaybackActivity.fromActivePlayerPath"];
      v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.channelID"];
      channelID = v5->_channelID;
      v5->_channelID = v30;

      v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.playablePassthrough"];
      playablePassthrough = v5->_playablePassthrough;
      v5->_playablePassthrough = v32;

      v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.contentTitle"];
      contentTitle = v5->_contentTitle;
      v5->_contentTitle = v34;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    selfCopy = 0;
  }

  return selfCopy;
}

void __36__WLKPlaybackSummary_initWithCoder___block_invoke()
{
  v0 = +[WLKProcessInfo currentProcessInfo];
  if ([v0 BOOLValueForEntitlement:@"com.apple.watchlist.private"])
  {
    v1 = 1;
  }

  else
  {
    v1 = WLKIsDaemon();
  }

  initWithCoder__isEntitled = v1;

  if ((initWithCoder__isEntitled & 1) == 0)
  {
    v2 = MEMORY[0x277CBEAD8];
    v3 = *MEMORY[0x277CBE658];

    [v2 raise:v3 format:@"This process is not properly entitled for WatchListKit"];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeObject:self->_bundleID forKey:@"WLKPlaybackActivity.bundleID"];
  [coderCopy encodeObject:self->_timestamp forKey:@"WLKPlaybackActivity.timestamp"];
  [coderCopy encodeObject:self->_duration forKey:@"WLKPlaybackActivity.duration"];
  [coderCopy encodeObject:self->_elapsedTime forKey:@"WLKPlaybackActivity.elapsedTime"];
  [coderCopy encodeObject:self->_featureDuration forKey:@"WLKPlaybackActivity.featureDuration"];
  [coderCopy encodeObject:self->_featureElapsedTime forKey:@"WLKPlaybackActivity.featureElapsedTime"];
  [coderCopy encodeObject:self->_contentID forKey:@"WLKPlaybackActivity.externalContentID"];
  [coderCopy encodeObject:self->_externalProfileID forKey:@"WLKPlaybackActivity.externalUserProfileID"];
  [coderCopy encodeObject:self->_accountID forKey:@"WLKPlaybackActivity.accountID"];
  [coderCopy encodeInteger:self->_playbackState forKey:@"WLKPlaybackActivity.playbackState"];
  [coderCopy encodeObject:self->_playbackRate forKey:@"WLKPlaybackActivity.playbackRate"];
  [coderCopy encodeInteger:self->_completionState forKey:@"WLKPlaybackActivity.completionState"];
  [coderCopy encodeObject:self->_serviceID forKey:@"WLKPlaybackActivity.serviceID"];
  [coderCopy encodeObject:self->_currentPlaybackDate forKey:@"WLKPlaybackActivity.currentPlaybackDate"];
  [coderCopy encodeBool:self->_isAlwaysLive forKey:@"WLKPlaybackActivity.isAlwaysLive"];
  [coderCopy encodeInteger:self->_playbackType forKey:@"WLKPlaybackActivity.playbackType"];
  [coderCopy encodeBool:self->_isTimerDerived forKey:@"WLKPlaybackActivity.isTimerDerived"];
  [coderCopy encodeBool:self->_fromActivePlayerPath forKey:@"WLKPlaybackActivity.fromActivePlayerPath"];
  [coderCopy encodeObject:self->_channelID forKey:@"WLKPlaybackActivity.channelID"];
  [coderCopy encodeObject:self->_playablePassthrough forKey:@"WLKPlaybackActivity.playablePassthrough"];
  [coderCopy encodeObject:self->_contentTitle forKey:@"WLKPlaybackActivity.contentTitle"];
}

- (BOOL)_compareOptional:(id)optional with:(id)with
{
  if (optional && with)
  {
    return [optional isEqual:with];
  }

  else
  {
    return (optional | with) == 0;
  }
}

- (BOOL)_compareOptionalTemporalValue:(id)value with:(id)with fuzzy:(BOOL)fuzzy
{
  fuzzyCopy = fuzzy;
  valueCopy = value;
  withCopy = with;
  if (fuzzyCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [valueCopy floatValue];
    v10 = v9;
    [withCopy floatValue];
    v12 = vabds_f32(v10, v11) <= 0.1;
  }

  else if (valueCopy && withCopy)
  {
    v12 = [valueCopy isEqual:withCopy];
  }

  else
  {
    v12 = (valueCopy | withCopy) == 0;
  }

  return v12;
}

- (BOOL)_validate:(id)_validate identifier:(id)identifier expectedClass:(Class)class
{
  _validateCopy = _validate;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (!_validateCopy)
  {
    NSLog(&cfstr_Wlkplaybacksum_2.isa, identifierCopy);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = NSStringFromClass(class);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    NSLog(&cfstr_Wlkplaybacksum_3.isa, v9, v11, v13);

    goto LABEL_6;
  }

  v10 = 1;
LABEL_7:

  return v10;
}

- (BOOL)_isValid
{
  bundleID = [(WLKPlaybackSummary *)self bundleID];
  v4 = [(WLKPlaybackSummary *)self _validate:bundleID identifier:@"bundleID" expectedClass:objc_opt_class()];

  if (!v4)
  {
    return 0;
  }

  accountID = [(WLKPlaybackSummary *)self accountID];
  v6 = [(WLKPlaybackSummary *)self _validate:accountID identifier:@"accountID" expectedClass:objc_opt_class()];

  if (!v6)
  {
    return 0;
  }

  timestamp = [(WLKPlaybackSummary *)self timestamp];
  v8 = [(WLKPlaybackSummary *)self _validate:timestamp identifier:@"timestamp" expectedClass:objc_opt_class()];

  if (!v8)
  {
    return 0;
  }

  playbackType = self->_playbackType;
  if (playbackType == 2)
  {
    currentPlaybackDate = [(WLKPlaybackSummary *)self currentPlaybackDate];
    v22 = [(WLKPlaybackSummary *)self _validate:currentPlaybackDate identifier:@"currentPlaybackDate" expectedClass:objc_opt_class()];

    if (!v22)
    {
      return 0;
    }

    serviceID = [(WLKPlaybackSummary *)self serviceID];
    v24 = [(WLKPlaybackSummary *)self _validate:serviceID identifier:@"serviceID" expectedClass:objc_opt_class()];

    return v24;
  }

  if (playbackType == 1)
  {
    currentPlaybackDate2 = [(WLKPlaybackSummary *)self currentPlaybackDate];
    v18 = [(WLKPlaybackSummary *)self _validate:currentPlaybackDate2 identifier:@"currentPlaybackDate" expectedClass:objc_opt_class()];

    if (!v18)
    {
      return 0;
    }

    contentID = [(WLKPlaybackSummary *)self contentID];
    v20 = [(WLKPlaybackSummary *)self _validate:contentID identifier:@"contentID" expectedClass:objc_opt_class()];

    return v20;
  }

  if (playbackType)
  {
    return 1;
  }

  duration = [(WLKPlaybackSummary *)self duration];
  v11 = [(WLKPlaybackSummary *)self _validate:duration identifier:@"duration" expectedClass:objc_opt_class()];

  if (!v11)
  {
    return 0;
  }

  elapsedTime = [(WLKPlaybackSummary *)self elapsedTime];
  v13 = [(WLKPlaybackSummary *)self _validate:elapsedTime identifier:@"elapsedTime" expectedClass:objc_opt_class()];

  if (!v13)
  {
    return 0;
  }

  elapsedTime2 = [(WLKPlaybackSummary *)self elapsedTime];
  notANumber = [MEMORY[0x277CCA980] notANumber];
  v16 = [elapsedTime2 isEqualToNumber:notANumber];

  if (!v16)
  {
    contentID2 = [(WLKPlaybackSummary *)self contentID];
    v27 = [(WLKPlaybackSummary *)self _validate:contentID2 identifier:@"contentID" expectedClass:objc_opt_class()];

    if (!v27)
    {
      return 0;
    }

    duration2 = [(WLKPlaybackSummary *)self duration];
    unsignedIntegerValue = [duration2 unsignedIntegerValue];

    if (unsignedIntegerValue <= 0x1D)
    {
      duration3 = [(WLKPlaybackSummary *)self duration];
      NSLog(&cfstr_Wlkplaybacksum_5.isa, duration3);

      return 0;
    }

    contentID3 = [(WLKPlaybackSummary *)self contentID];
    v32 = [contentID3 length];

    if (!v32)
    {
      NSLog(&cfstr_Wlkplaybacksum_6.isa);
      return 0;
    }

    return 1;
  }

  NSLog(&cfstr_Wlkplaybacksum_4.isa);
  return 0;
}

- (void)resolveChannelID:(id)d
{
  dCopy = d;
  channelID = [(WLKPlaybackSummary *)self channelID];

  if (channelID)
  {
    channelID2 = [(WLKPlaybackSummary *)self channelID];
    dCopy[2](dCopy, channelID2, 0);
  }

  else
  {
    v7 = +[WLKChannelUtilities sharedInstanceFiltered];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__WLKPlaybackSummary_ChannelID__resolveChannelID___block_invoke;
    v8[3] = &unk_279E5F0E8;
    v8[4] = self;
    v9 = v7;
    v10 = dCopy;
    channelID2 = v7;
    [channelID2 loadIfNeededWithCompletion:v8];
  }
}

void __50__WLKPlaybackSummary_ChannelID__resolveChannelID___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v9 = [*(a1 + 32) bundleID];
    v3 = [*(a1 + 40) channelForBundleID:?];
    v4 = v3;
    if (v3)
    {
      v5 = *(a1 + 48);
      v6 = [v3 channelID];
      (*(v5 + 16))(v5, v6, 0);
    }

    else
    {
      v6 = WLKError(0, 0, @"channel not found");
      (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v6);
    }
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 48) + 16);

    v8();
  }
}

+ (double)playedThresholdTimeForDuration:(double)duration
{
  v3 = 0.0;
  if (duration > 0.0 && duration != 3.40282347e38)
  {
    if (duration < 10.0)
    {
      return duration;
    }

    if (duration >= 900.0)
    {
      if (duration >= 1800.0)
      {
        if (duration >= 3900.0)
        {
          if (duration >= 6000.0)
          {
            v4 = -660.0;
            return duration + v4;
          }

          v5 = 0xC07E000000000000;
        }

        else
        {
          v5 = 0xC06E000000000000;
        }

        v4 = *&v5;
      }

      else
      {
        v4 = -180.0;
      }
    }

    else
    {
      v4 = -10.0;
    }

    return duration + v4;
  }

  return v3;
}

+ (int64_t)completionStateForDuration:(double)duration elapsedTime:(double)time
{
  [self playedThresholdTimeForDuration:duration];
  v6 = 2;
  if (v5 > time)
  {
    v6 = 1;
  }

  if (v5 == 0.0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

+ (id)debugStringForCompletionState:(int64_t)state
{
  if (state > 2)
  {
    return 0;
  }

  else
  {
    return off_279E5FDA0[state];
  }
}

- (id)elapsedTimeSummaryWithPlaybackState:(int64_t)state timerDerived:(BOOL)derived
{
  v6 = 0.0;
  if ([(WLKPlaybackSummary *)self playbackState]== 1)
  {
    date = [MEMORY[0x277CBEAA8] date];
    timestamp = [(WLKPlaybackSummary *)self timestamp];
    [date timeIntervalSinceDate:timestamp];
    v6 = v9;
  }

  elapsedTime = [(WLKPlaybackSummary *)self elapsedTime];
  [elapsedTime doubleValue];
  v12 = v6 + v11;

  duration = [(WLKPlaybackSummary *)self duration];
  [duration doubleValue];
  v15 = fmin(v12, v14);

  v49 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  featureElapsedTime = [(WLKPlaybackSummary *)self featureElapsedTime];
  if (featureElapsedTime && (v17 = featureElapsedTime, [(WLKPlaybackSummary *)self featureDuration], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
  {
    featureElapsedTime2 = [(WLKPlaybackSummary *)self featureElapsedTime];
    [featureElapsedTime2 doubleValue];
    v21 = v6 + v20;

    featureDuration = [(WLKPlaybackSummary *)self featureDuration];
    [featureDuration doubleValue];
    v24 = fmin(v21, v23);

    v48 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
  }

  else
  {
    v48 = 0;
  }

  duration2 = [(WLKPlaybackSummary *)self duration];
  [duration2 doubleValue];
  v47 = [WLKPlaybackSummary completionStateForDuration:"completionStateForDuration:elapsedTime:" elapsedTime:?];

  v46 = [WLKPlaybackSummary alloc];
  bundleID = [(WLKPlaybackSummary *)self bundleID];
  date2 = [MEMORY[0x277CBEAA8] date];
  duration3 = [(WLKPlaybackSummary *)self duration];
  featureDuration2 = [(WLKPlaybackSummary *)self featureDuration];
  externalProfileID = [(WLKPlaybackSummary *)self externalProfileID];
  contentID = [(WLKPlaybackSummary *)self contentID];
  accountID = [(WLKPlaybackSummary *)self accountID];
  v28 = &unk_288222D58;
  if (state == 1)
  {
    v28 = &unk_288222D40;
  }

  v40 = v28;
  stateCopy = state;
  isAlwaysLive = [(WLKPlaybackSummary *)self isAlwaysLive];
  serviceID = [(WLKPlaybackSummary *)self serviceID];
  currentPlaybackDate = [(WLKPlaybackSummary *)self currentPlaybackDate];
  playbackType = [(WLKPlaybackSummary *)self playbackType];
  isFromActivePlayerPath = [(WLKPlaybackSummary *)self isFromActivePlayerPath];
  channelID = [(WLKPlaybackSummary *)self channelID];
  contentTitle = [(WLKPlaybackSummary *)self contentTitle];
  BYTE1(v38) = isFromActivePlayerPath;
  LOBYTE(v38) = derived;
  LOBYTE(v37) = isAlwaysLive;
  v51 = [(WLKPlaybackSummary *)v46 initWithBundleID:bundleID timestamp:date2 duration:duration3 elapsedTime:v49 featureDuration:featureDuration2 featureElapsedTime:v48 externalProfileID:externalProfileID contentID:contentID accountID:accountID playbackState:stateCopy playbackRate:v40 completionState:v47 isAlwaysLive:v37 serviceID:serviceID currentPlaybackDate:currentPlaybackDate playbackType:playbackType isTimerDerived:v38 isFromActivePlayerPath:channelID channelID:contentTitle contentTitle:?];

  return v51;
}

@end
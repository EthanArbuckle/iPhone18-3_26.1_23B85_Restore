@interface WLKPlaybackSummary
+ (double)playedThresholdTimeForDuration:(double)a3;
+ (id)EBSSummaryWithBundleID:(id)a3 channelID:(id)a4 externalId:(id)a5 accountID:(id)a6 externalProfileID:(id)a7 timestamp:(id)a8 playbackState:(int64_t)a9 playbackRate:(id)a10 currentPlaybackDate:(id)a11;
+ (id)EBSSummaryWithBundleID:(id)a3 channelID:(id)a4 externalId:(id)a5 accountID:(id)a6 externalProfileID:(id)a7 timestamp:(id)a8 playbackState:(int64_t)a9 playbackRate:(id)a10 currentPlaybackDate:(id)a11 playablePassthrough:(id)a12;
+ (id)VODSummaryWithBundleID:(id)a3 channelID:(id)a4 contentID:(id)a5 accountID:(id)a6 externalProfileID:(id)a7 timestamp:(id)a8 duration:(id)a9 elapsedTime:(id)a10 featureDuration:(id)a11 featureElapsedTime:(id)a12 playbackState:(int64_t)a13 playbackRate:(id)a14 contentTitle:(id)a15 completionState:(int64_t)a16;
+ (id)VODSummaryWithBundleID:(id)a3 channelID:(id)a4 contentID:(id)a5 accountID:(id)a6 externalProfileID:(id)a7 timestamp:(id)a8 duration:(id)a9 elapsedTime:(id)a10 featureDuration:(id)a11 featureElapsedTime:(id)a12 playbackState:(int64_t)a13 playbackRate:(id)a14 playablePassthrough:(id)a15 contentTitle:(id)a16 completionState:(int64_t)a17;
+ (id)_debugStringForPlaybackType:(int64_t)a3;
+ (id)debugStringForCompletionState:(int64_t)a3;
+ (id)debugStringForPlaybackState:(int64_t)a3;
+ (id)liveSummaryWithBundleID:(id)a3 channelID:(id)a4 serviceID:(id)a5 accountID:(id)a6 externalProfileID:(id)a7 timestamp:(id)a8 playbackState:(int64_t)a9 playbackRate:(id)a10 currentPlaybackDate:(id)a11;
+ (id)liveSummaryWithBundleID:(id)a3 channelID:(id)a4 serviceID:(id)a5 accountID:(id)a6 externalProfileID:(id)a7 timestamp:(id)a8 playbackState:(int64_t)a9 playbackRate:(id)a10 currentPlaybackDate:(id)a11 playablePassthrough:(id)a12;
+ (int64_t)completionStateForDuration:(double)a3 elapsedTime:(double)a4;
- (BOOL)_compareOptional:(id)a3 with:(id)a4;
- (BOOL)_compareOptionalTemporalValue:(id)a3 with:(id)a4 fuzzy:(BOOL)a5;
- (BOOL)_isValid;
- (BOOL)_validate:(id)a3 identifier:(id)a4 expectedClass:(Class)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSummary:(id)a3;
- (BOOL)isEquivalentToSummaryExcludingCursor:(id)a3;
- (BOOL)isEquivalentToSummaryExcludingTimestamp:(id)a3;
- (BOOL)isSameContent:(id)a3;
- (NSNumber)accountIDAsNumber;
- (WLKPlaybackSummary)initWithBundleID:(id)a3 timestamp:(id)a4 duration:(id)a5 elapsedTime:(id)a6 featureDuration:(id)a7 featureElapsedTime:(id)a8 externalProfileID:(id)a9 contentID:(id)a10 accountID:(id)a11 playbackState:(int64_t)a12 playbackRate:(id)a13 completionState:(int64_t)a14 isAlwaysLive:(BOOL)a15 serviceID:(id)a16 currentPlaybackDate:(id)a17 playbackType:(int64_t)a18 isTimerDerived:(BOOL)a19 isFromActivePlayerPath:(BOOL)a20 channelID:(id)a21 contentTitle:(id)a22;
- (WLKPlaybackSummary)initWithBundleID:(id)a3 timestamp:(id)a4 duration:(id)a5 elapsedTime:(id)a6 featureDuration:(id)a7 featureElapsedTime:(id)a8 externalProfileID:(id)a9 contentID:(id)a10 accountID:(id)a11 playbackState:(int64_t)a12 playbackRate:(id)a13 completionState:(int64_t)a14 isAlwaysLive:(BOOL)a15 serviceID:(id)a16 currentPlaybackDate:(id)a17 playbackType:(int64_t)a18 isTimerDerived:(BOOL)a19 isFromActivePlayerPath:(BOOL)a20 playablePassthrough:(id)a21 channelID:(id)a22 contentTitle:(id)a23;
- (WLKPlaybackSummary)initWithCoder:(id)a3;
- (WLKPlaybackSummary)initWithMediaRemoteDictionary:(id)a3 bundleID:(id)a4 accountID:(id)a5 isFromActivePlayerPath:(BOOL)a6;
- (id)JSONRepresentation;
- (id)description;
- (id)dictionaryRepresentation;
- (id)elapsedTimeSummaryWithPlaybackState:(int64_t)a3 timerDerived:(BOOL)a4;
- (id)sanitizedCopy;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)resolveChannelID:(id)a3;
@end

@implementation WLKPlaybackSummary

- (WLKPlaybackSummary)initWithBundleID:(id)a3 timestamp:(id)a4 duration:(id)a5 elapsedTime:(id)a6 featureDuration:(id)a7 featureElapsedTime:(id)a8 externalProfileID:(id)a9 contentID:(id)a10 accountID:(id)a11 playbackState:(int64_t)a12 playbackRate:(id)a13 completionState:(int64_t)a14 isAlwaysLive:(BOOL)a15 serviceID:(id)a16 currentPlaybackDate:(id)a17 playbackType:(int64_t)a18 isTimerDerived:(BOOL)a19 isFromActivePlayerPath:(BOOL)a20 channelID:(id)a21 contentTitle:(id)a22
{
  v27 = a3;
  v67 = a4;
  v28 = a5;
  v72 = a6;
  v71 = a7;
  v70 = a8;
  v69 = a9;
  v29 = v28;
  v68 = a10;
  v30 = a11;
  v31 = a13;
  v32 = a16;
  v33 = a17;
  v34 = a21;
  v35 = a22;
  v73.receiver = self;
  v73.super_class = WLKPlaybackSummary;
  v36 = [(WLKPlaybackSummary *)&v73 init];
  if (v36)
  {
    v37 = [v27 copy];
    bundleID = v36->_bundleID;
    v36->_bundleID = v37;

    v39 = [v67 copy];
    timestamp = v36->_timestamp;
    v36->_timestamp = v39;

    v41 = [v29 copy];
    duration = v36->_duration;
    v36->_duration = v41;

    v43 = [v72 copy];
    elapsedTime = v36->_elapsedTime;
    v36->_elapsedTime = v43;

    v45 = [v71 copy];
    featureDuration = v36->_featureDuration;
    v36->_featureDuration = v45;

    v47 = [v70 copy];
    featureElapsedTime = v36->_featureElapsedTime;
    v36->_featureElapsedTime = v47;

    v49 = [v69 copy];
    externalProfileID = v36->_externalProfileID;
    v36->_externalProfileID = v49;

    v51 = [v68 copy];
    contentID = v36->_contentID;
    v36->_contentID = v51;

    v53 = [v30 copy];
    accountID = v36->_accountID;
    v36->_accountID = v53;

    v36->_playbackState = a12;
    v55 = [v31 copy];
    playbackRate = v36->_playbackRate;
    v36->_playbackRate = v55;

    v36->_completionState = a14;
    v36->_isAlwaysLive = a15;
    v57 = [v32 copy];
    serviceID = v36->_serviceID;
    v36->_serviceID = v57;

    v59 = [v33 copy];
    currentPlaybackDate = v36->_currentPlaybackDate;
    v36->_currentPlaybackDate = v59;

    v36->_playbackType = a18;
    v36->_isTimerDerived = a19;
    v36->_fromActivePlayerPath = a20;
    v61 = [v34 copy];
    channelID = v36->_channelID;
    v36->_channelID = v61;

    v63 = [v35 copy];
    contentTitle = v36->_contentTitle;
    v36->_contentTitle = v63;
  }

  return v36;
}

- (WLKPlaybackSummary)initWithBundleID:(id)a3 timestamp:(id)a4 duration:(id)a5 elapsedTime:(id)a6 featureDuration:(id)a7 featureElapsedTime:(id)a8 externalProfileID:(id)a9 contentID:(id)a10 accountID:(id)a11 playbackState:(int64_t)a12 playbackRate:(id)a13 completionState:(int64_t)a14 isAlwaysLive:(BOOL)a15 serviceID:(id)a16 currentPlaybackDate:(id)a17 playbackType:(int64_t)a18 isTimerDerived:(BOOL)a19 isFromActivePlayerPath:(BOOL)a20 playablePassthrough:(id)a21 channelID:(id)a22 contentTitle:(id)a23
{
  v68 = a3;
  v69 = a4;
  v75 = a5;
  v74 = a6;
  v73 = a7;
  v72 = a8;
  v71 = a9;
  v70 = a10;
  v29 = a11;
  v30 = a13;
  v31 = a16;
  v32 = a17;
  v33 = a21;
  v34 = a22;
  v35 = a23;
  v76.receiver = self;
  v76.super_class = WLKPlaybackSummary;
  v36 = [(WLKPlaybackSummary *)&v76 init];
  if (v36)
  {
    v37 = [v68 copy];
    bundleID = v36->_bundleID;
    v36->_bundleID = v37;

    v39 = [v69 copy];
    timestamp = v36->_timestamp;
    v36->_timestamp = v39;

    v41 = [v75 copy];
    duration = v36->_duration;
    v36->_duration = v41;

    v43 = [v74 copy];
    elapsedTime = v36->_elapsedTime;
    v36->_elapsedTime = v43;

    v45 = [v73 copy];
    featureDuration = v36->_featureDuration;
    v36->_featureDuration = v45;

    v47 = [v72 copy];
    featureElapsedTime = v36->_featureElapsedTime;
    v36->_featureElapsedTime = v47;

    v49 = [v71 copy];
    externalProfileID = v36->_externalProfileID;
    v36->_externalProfileID = v49;

    v51 = [v70 copy];
    contentID = v36->_contentID;
    v36->_contentID = v51;

    v53 = [v29 copy];
    accountID = v36->_accountID;
    v36->_accountID = v53;

    v36->_playbackState = a12;
    v55 = [v30 copy];
    playbackRate = v36->_playbackRate;
    v36->_playbackRate = v55;

    v36->_completionState = a14;
    v36->_isAlwaysLive = a15;
    v57 = [v31 copy];
    serviceID = v36->_serviceID;
    v36->_serviceID = v57;

    v59 = [v32 copy];
    currentPlaybackDate = v36->_currentPlaybackDate;
    v36->_currentPlaybackDate = v59;

    v36->_playbackType = a18;
    v36->_isTimerDerived = a19;
    v36->_fromActivePlayerPath = a20;
    v61 = [v33 copy];
    playablePassthrough = v36->_playablePassthrough;
    v36->_playablePassthrough = v61;

    v63 = [v34 copy];
    channelID = v36->_channelID;
    v36->_channelID = v63;

    v65 = [v35 copy];
    contentTitle = v36->_contentTitle;
    v36->_contentTitle = v65;
  }

  return v36;
}

- (WLKPlaybackSummary)initWithMediaRemoteDictionary:(id)a3 bundleID:(id)a4 accountID:(id)a5 isFromActivePlayerPath:(BOOL)a6
{
  v8 = a3;
  v9 = *MEMORY[0x277D27BD8];
  v45 = a5;
  v44 = a4;
  v10 = [v8 valueForKey:v9];
  v11 = [v8 valueForKey:*MEMORY[0x277D27BE0]];
  v12 = [v8 valueForKey:*MEMORY[0x277D27C80]];
  v13 = [v8 valueForKey:*MEMORY[0x277D27BF0]];
  v52 = [v8 valueForKey:*MEMORY[0x277D27BF8]];
  v14 = [v8 valueForKey:*MEMORY[0x277D27C70]];
  v15 = [v8 valueForKey:*MEMORY[0x277D27BB8]];
  v16 = [v8 valueForKey:*MEMORY[0x277D27C10]];
  v50 = [v8 valueForKey:*MEMORY[0x277D27B98]];
  v49 = [v8 valueForKey:*MEMORY[0x277D27C88]];
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
  v21 = [v8 valueForKey:*MEMORY[0x277D27C40]];
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

  v25 = [v8 valueForKey:*MEMORY[0x277D27C38]];
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
  v32 = v17;
  if (v42 & v19)
  {
    v33 = v48;
  }

  else
  {
    v33 = v48;
    if (!v17)
    {
      v32 = [MEMORY[0x277CBEAA8] date];
    }
  }

  BYTE1(v40) = a6;
  LOBYTE(v40) = 0;
  v34 = v32;
  LOBYTE(v39) = [v16 BOOLValue];
  v35 = [(WLKPlaybackSummary *)self initWithBundleID:v44 timestamp:v33 duration:v10 elapsedTime:v11 featureDuration:0 featureElapsedTime:0 externalProfileID:v52 contentID:v47 accountID:v45 playbackState:v23 playbackRate:v21 completionState:v24 isAlwaysLive:v39 serviceID:v51 currentPlaybackDate:v32 playbackType:v41 isTimerDerived:v40 isFromActivePlayerPath:v50 channelID:v49 contentTitle:?];

  v36 = v35;
  v37 = 0;
  if ([(WLKPlaybackSummary *)v36 _isValid])
  {
    v37 = v36;
  }

  return v37;
}

+ (id)VODSummaryWithBundleID:(id)a3 channelID:(id)a4 contentID:(id)a5 accountID:(id)a6 externalProfileID:(id)a7 timestamp:(id)a8 duration:(id)a9 elapsedTime:(id)a10 featureDuration:(id)a11 featureElapsedTime:(id)a12 playbackState:(int64_t)a13 playbackRate:(id)a14 contentTitle:(id)a15 completionState:(int64_t)a16
{
  v21 = a16;
  v42 = a3;
  v22 = a4;
  v44 = a5;
  v23 = a6;
  v24 = a7;
  v41 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a14;
  v30 = a15;
  v31 = v30;
  if (!a16)
  {
    v40 = v30;
    NSLog(&cfstr_Wlkplaybacksum_1.isa);
    if (v27 && v28)
    {
      [v27 doubleValue];
      v33 = v32;
      v34 = v28;
    }

    else
    {
      [v25 doubleValue];
      v33 = v35;
      v34 = v26;
    }

    [v34 doubleValue];
    v21 = [WLKPlaybackSummary completionStateForDuration:v33 elapsedTime:v36];
    v31 = v40;
  }

  LOWORD(v39) = 256;
  LOBYTE(v38) = 0;
  v43 = [[WLKPlaybackSummary alloc] initWithBundleID:v42 timestamp:v41 duration:v25 elapsedTime:v26 featureDuration:v27 featureElapsedTime:v28 externalProfileID:v24 contentID:v44 accountID:v23 playbackState:a13 playbackRate:v29 completionState:v21 isAlwaysLive:v38 serviceID:0 currentPlaybackDate:0 playbackType:0 isTimerDerived:v39 isFromActivePlayerPath:v22 channelID:v31 contentTitle:?];

  return v43;
}

+ (id)liveSummaryWithBundleID:(id)a3 channelID:(id)a4 serviceID:(id)a5 accountID:(id)a6 externalProfileID:(id)a7 timestamp:(id)a8 playbackState:(int64_t)a9 playbackRate:(id)a10 currentPlaybackDate:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  LOWORD(v28) = 256;
  LOBYTE(v27) = 1;
  v25 = [[WLKPlaybackSummary alloc] initWithBundleID:v24 timestamp:v19 duration:0 elapsedTime:0 featureDuration:0 featureElapsedTime:0 externalProfileID:v20 contentID:0 accountID:v21 playbackState:a9 playbackRate:v18 completionState:0 isAlwaysLive:v27 serviceID:v22 currentPlaybackDate:v17 playbackType:2 isTimerDerived:v28 isFromActivePlayerPath:v23 channelID:0 contentTitle:?];

  return v25;
}

+ (id)EBSSummaryWithBundleID:(id)a3 channelID:(id)a4 externalId:(id)a5 accountID:(id)a6 externalProfileID:(id)a7 timestamp:(id)a8 playbackState:(int64_t)a9 playbackRate:(id)a10 currentPlaybackDate:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  LOWORD(v28) = 256;
  LOBYTE(v27) = 1;
  v25 = [[WLKPlaybackSummary alloc] initWithBundleID:v24 timestamp:v19 duration:0 elapsedTime:0 featureDuration:0 featureElapsedTime:0 externalProfileID:v20 contentID:v22 accountID:v21 playbackState:a9 playbackRate:v18 completionState:0 isAlwaysLive:v27 serviceID:0 currentPlaybackDate:v17 playbackType:1 isTimerDerived:v28 isFromActivePlayerPath:v23 channelID:0 contentTitle:?];

  return v25;
}

+ (id)liveSummaryWithBundleID:(id)a3 channelID:(id)a4 serviceID:(id)a5 accountID:(id)a6 externalProfileID:(id)a7 timestamp:(id)a8 playbackState:(int64_t)a9 playbackRate:(id)a10 currentPlaybackDate:(id)a11 playablePassthrough:(id)a12
{
  v18 = a12;
  v19 = a11;
  v20 = a10;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  LOWORD(v30) = 256;
  LOBYTE(v29) = 1;
  v27 = [[WLKPlaybackSummary alloc] initWithBundleID:v26 timestamp:v21 duration:0 elapsedTime:0 featureDuration:0 featureElapsedTime:0 externalProfileID:v22 contentID:0 accountID:v23 playbackState:a9 playbackRate:v20 completionState:0 isAlwaysLive:v29 serviceID:v24 currentPlaybackDate:v19 playbackType:2 isTimerDerived:v30 isFromActivePlayerPath:v18 playablePassthrough:v25 channelID:0 contentTitle:?];

  return v27;
}

+ (id)EBSSummaryWithBundleID:(id)a3 channelID:(id)a4 externalId:(id)a5 accountID:(id)a6 externalProfileID:(id)a7 timestamp:(id)a8 playbackState:(int64_t)a9 playbackRate:(id)a10 currentPlaybackDate:(id)a11 playablePassthrough:(id)a12
{
  v18 = a12;
  v19 = a11;
  v20 = a10;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  LOWORD(v30) = 256;
  LOBYTE(v29) = 1;
  v27 = [[WLKPlaybackSummary alloc] initWithBundleID:v26 timestamp:v21 duration:0 elapsedTime:0 featureDuration:0 featureElapsedTime:0 externalProfileID:v22 contentID:v24 accountID:v23 playbackState:a9 playbackRate:v20 completionState:0 isAlwaysLive:v29 serviceID:0 currentPlaybackDate:v19 playbackType:1 isTimerDerived:v30 isFromActivePlayerPath:v18 playablePassthrough:v25 channelID:0 contentTitle:?];

  return v27;
}

+ (id)VODSummaryWithBundleID:(id)a3 channelID:(id)a4 contentID:(id)a5 accountID:(id)a6 externalProfileID:(id)a7 timestamp:(id)a8 duration:(id)a9 elapsedTime:(id)a10 featureDuration:(id)a11 featureElapsedTime:(id)a12 playbackState:(int64_t)a13 playbackRate:(id)a14 playablePassthrough:(id)a15 contentTitle:(id)a16 completionState:(int64_t)a17
{
  v44 = a3;
  v22 = a4;
  v43 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v41 = a10;
  v27 = a11;
  v28 = a17;
  v42 = a12;
  v29 = a14;
  v30 = a15;
  v31 = a16;
  if (!a17)
  {
    NSLog(&cfstr_Wlkplaybacksum_1.isa);
    if (v27 && v42)
    {
      [v27 doubleValue];
      v33 = v32;
      v34 = v42;
    }

    else
    {
      [v26 doubleValue];
      v33 = v35;
      v34 = v41;
    }

    [v34 doubleValue];
    v28 = [WLKPlaybackSummary completionStateForDuration:v33 elapsedTime:v36];
  }

  LOWORD(v39) = 256;
  LOBYTE(v38) = 0;
  v40 = [[WLKPlaybackSummary alloc] initWithBundleID:v44 timestamp:v25 duration:v26 elapsedTime:v41 featureDuration:v27 featureElapsedTime:v42 externalProfileID:v24 contentID:v43 accountID:v23 playbackState:a13 playbackRate:v29 completionState:v28 isAlwaysLive:v38 serviceID:0 currentPlaybackDate:0 playbackType:0 isTimerDerived:v39 isFromActivePlayerPath:v30 playablePassthrough:v22 channelID:v31 contentTitle:?];

  return v40;
}

- (NSNumber)accountIDAsNumber
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(WLKPlaybackSummary *)self accountID];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WLKPlaybackSummary *)self isEqualToSummary:v4];
  }

  return v5;
}

- (BOOL)isEqualToSummary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (playbackType = self->_playbackType, playbackType == [v4 playbackType]) && (playbackState = self->_playbackState, playbackState == objc_msgSend(v5, "playbackState")) && (completionState = self->_completionState, completionState == objc_msgSend(v5, "completionState")) && (isAlwaysLive = self->_isAlwaysLive, isAlwaysLive == objc_msgSend(v5, "isAlwaysLive")) && (isTimerDerived = self->_isTimerDerived, isTimerDerived == objc_msgSend(v5, "isTimerDerived")))
  {
    bundleID = self->_bundleID;
    v12 = [v5 bundleID];
    if ([(NSString *)bundleID isEqualToString:v12])
    {
      accountID = self->_accountID;
      v14 = [v5 accountID];
      if ([(NSString *)accountID isEqualToString:v14])
      {
        timestamp = self->_timestamp;
        v16 = [v5 timestamp];
        if ([(NSDate *)timestamp isEqualToDate:v16])
        {
          currentPlaybackDate = self->_currentPlaybackDate;
          v18 = [v5 currentPlaybackDate];
          if ([(WLKPlaybackSummary *)self _compareOptional:currentPlaybackDate with:v18])
          {
            duration = self->_duration;
            v20 = [v5 duration];
            if ([(WLKPlaybackSummary *)self _compareOptional:duration with:v20])
            {
              elapsedTime = self->_elapsedTime;
              v22 = [v5 elapsedTime];
              if ([(WLKPlaybackSummary *)self _compareOptional:elapsedTime with:v22])
              {
                featureDuration = self->_featureDuration;
                v24 = [v5 featureDuration];
                if ([(WLKPlaybackSummary *)self _compareOptional:featureDuration with:v24])
                {
                  featureElapsedTime = self->_featureElapsedTime;
                  v42 = [v5 featureElapsedTime];
                  if ([(WLKPlaybackSummary *)self _compareOptional:featureElapsedTime with:?])
                  {
                    externalProfileID = self->_externalProfileID;
                    v41 = [v5 externalProfileID];
                    if ([(WLKPlaybackSummary *)self _compareOptional:externalProfileID with:?])
                    {
                      contentID = self->_contentID;
                      v40 = [v5 contentID];
                      if ([(WLKPlaybackSummary *)self _compareOptional:contentID with:?])
                      {
                        serviceID = self->_serviceID;
                        v39 = [v5 serviceID];
                        if ([(WLKPlaybackSummary *)self _compareOptional:serviceID with:?])
                        {
                          channelID = self->_channelID;
                          v38 = [v5 channelID];
                          if ([(WLKPlaybackSummary *)self _compareOptional:channelID with:?])
                          {
                            playbackRate = self->_playbackRate;
                            v37 = [v5 playbackRate];
                            if ([(WLKPlaybackSummary *)self _compareOptional:playbackRate with:?])
                            {
                              playablePassthrough = self->_playablePassthrough;
                              v36 = [v5 playablePassthrough];
                              if ([(WLKPlaybackSummary *)self _compareOptional:playablePassthrough with:?])
                              {
                                contentTitle = self->_contentTitle;
                                v32 = [v5 contentTitle];
                                v33 = [(WLKPlaybackSummary *)self _compareOptional:contentTitle with:v32];
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

- (BOOL)isEquivalentToSummaryExcludingCursor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (playbackType = self->_playbackType, playbackType == [v4 playbackType]) && (playbackState = self->_playbackState, playbackState == objc_msgSend(v5, "playbackState")) && (completionState = self->_completionState, completionState == objc_msgSend(v5, "completionState")) && (isAlwaysLive = self->_isAlwaysLive, isAlwaysLive == objc_msgSend(v5, "isAlwaysLive")))
  {
    bundleID = self->_bundleID;
    v11 = [v5 bundleID];
    if ([(NSString *)bundleID isEqualToString:v11])
    {
      accountID = self->_accountID;
      v13 = [v5 accountID];
      if ([(NSString *)accountID isEqualToString:v13])
      {
        duration = self->_duration;
        v15 = [v5 duration];
        if ([(WLKPlaybackSummary *)self _compareOptionalTemporalValue:duration with:v15 fuzzy:1])
        {
          featureDuration = self->_featureDuration;
          v17 = [v5 featureDuration];
          if ([(WLKPlaybackSummary *)self _compareOptionalTemporalValue:featureDuration with:v17 fuzzy:1])
          {
            externalProfileID = self->_externalProfileID;
            v19 = [v5 externalProfileID];
            if ([(WLKPlaybackSummary *)self _compareOptional:externalProfileID with:v19])
            {
              contentID = self->_contentID;
              v21 = [v5 contentID];
              if ([(WLKPlaybackSummary *)self _compareOptional:contentID with:v21])
              {
                serviceID = self->_serviceID;
                v23 = [v5 serviceID];
                if ([(WLKPlaybackSummary *)self _compareOptional:serviceID with:v23])
                {
                  channelID = self->_channelID;
                  v33 = [v5 channelID];
                  if ([(WLKPlaybackSummary *)self _compareOptional:channelID with:?])
                  {
                    playbackRate = self->_playbackRate;
                    v32 = [v5 playbackRate];
                    if ([(WLKPlaybackSummary *)self _compareOptional:playbackRate with:?])
                    {
                      playablePassthrough = self->_playablePassthrough;
                      v31 = [v5 playablePassthrough];
                      if ([(WLKPlaybackSummary *)self _compareOptional:playablePassthrough with:?])
                      {
                        contentTitle = self->_contentTitle;
                        v27 = [v5 contentTitle];
                        v28 = [(WLKPlaybackSummary *)self _compareOptional:contentTitle with:v27];
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

- (BOOL)isEquivalentToSummaryExcludingTimestamp:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (playbackType = self->_playbackType, playbackType == [v4 playbackType]) && (playbackState = self->_playbackState, playbackState == objc_msgSend(v5, "playbackState")) && (completionState = self->_completionState, completionState == objc_msgSend(v5, "completionState")) && (isAlwaysLive = self->_isAlwaysLive, isAlwaysLive == objc_msgSend(v5, "isAlwaysLive")) && (isTimerDerived = self->_isTimerDerived, isTimerDerived == objc_msgSend(v5, "isTimerDerived")))
  {
    bundleID = self->_bundleID;
    v12 = [v5 bundleID];
    if ([(NSString *)bundleID isEqualToString:v12])
    {
      accountID = self->_accountID;
      v14 = [v5 accountID];
      if ([(NSString *)accountID isEqualToString:v14])
      {
        duration = self->_duration;
        v16 = [v5 duration];
        if ([(WLKPlaybackSummary *)self _compareOptionalTemporalValue:duration with:v16 fuzzy:1])
        {
          elapsedTime = self->_elapsedTime;
          v18 = [v5 elapsedTime];
          if ([(WLKPlaybackSummary *)self _compareOptionalTemporalValue:elapsedTime with:v18 fuzzy:1])
          {
            featureDuration = self->_featureDuration;
            v20 = [v5 featureDuration];
            if ([(WLKPlaybackSummary *)self _compareOptionalTemporalValue:featureDuration with:v20 fuzzy:1])
            {
              featureElapsedTime = self->_featureElapsedTime;
              v22 = [v5 featureElapsedTime];
              if ([(WLKPlaybackSummary *)self _compareOptionalTemporalValue:featureElapsedTime with:v22 fuzzy:1])
              {
                externalProfileID = self->_externalProfileID;
                v24 = [v5 externalProfileID];
                if ([(WLKPlaybackSummary *)self _compareOptional:externalProfileID with:v24])
                {
                  contentID = self->_contentID;
                  v38 = [v5 contentID];
                  if ([(WLKPlaybackSummary *)self _compareOptional:contentID with:?])
                  {
                    serviceID = self->_serviceID;
                    v37 = [v5 serviceID];
                    if ([(WLKPlaybackSummary *)self _compareOptional:serviceID with:?])
                    {
                      channelID = self->_channelID;
                      v36 = [v5 channelID];
                      if ([(WLKPlaybackSummary *)self _compareOptional:channelID with:?])
                      {
                        playbackRate = self->_playbackRate;
                        v35 = [v5 playbackRate];
                        if ([(WLKPlaybackSummary *)self _compareOptional:playbackRate with:?])
                        {
                          playablePassthrough = self->_playablePassthrough;
                          v34 = [v5 playablePassthrough];
                          if ([(WLKPlaybackSummary *)self _compareOptional:playablePassthrough with:?])
                          {
                            contentTitle = self->_contentTitle;
                            v30 = [v5 contentTitle];
                            v31 = [(WLKPlaybackSummary *)self _compareOptional:contentTitle with:v30];
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

- (BOOL)isSameContent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (playbackType = self->_playbackType, playbackType == [v4 playbackType]) && (isAlwaysLive = self->_isAlwaysLive, isAlwaysLive == objc_msgSend(v5, "isAlwaysLive")))
  {
    bundleID = self->_bundleID;
    v9 = [v5 bundleID];
    if ([(NSString *)bundleID isEqualToString:v9])
    {
      accountID = self->_accountID;
      v11 = [v5 accountID];
      if ([(NSString *)accountID isEqualToString:v11])
      {
        contentID = self->_contentID;
        v13 = [v5 contentID];
        if ([(WLKPlaybackSummary *)self _compareOptional:contentID with:v13])
        {
          serviceID = self->_serviceID;
          v15 = [v5 serviceID];
          if ([(WLKPlaybackSummary *)self _compareOptional:serviceID with:v15])
          {
            channelID = self->_channelID;
            v17 = [v5 channelID];
            if ([(WLKPlaybackSummary *)self _compareOptional:channelID with:v17])
            {
              externalProfileID = self->_externalProfileID;
              v19 = [v5 externalProfileID];
              v20 = [(WLKPlaybackSummary *)self _compareOptional:externalProfileID with:v19];
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
  v5 = [(WLKPlaybackSummary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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
  v16 = currentPlaybackDate;
  if (!currentPlaybackDate)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v27 = v16;
  v51[11] = v16;
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
  v20 = channelID;
  if (!channelID)
  {
    v20 = [MEMORY[0x277CBEB68] null];
  }

  v51[16] = v20;
  v50[17] = @"playablePassthrough";
  playablePassthrough = self->_playablePassthrough;
  v22 = playablePassthrough;
  if (!playablePassthrough)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v51[17] = v22;
  v50[18] = @"contentTitle";
  contentTitle = self->_contentTitle;
  v24 = contentTitle;
  if (!contentTitle)
  {
    v24 = [MEMORY[0x277CBEB68] null];
  }

  v51[18] = v24;
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

+ (id)debugStringForPlaybackState:(int64_t)a3
{
  v3 = @"Playing";
  if (a3 == 2)
  {
    v3 = @"Paused";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Stopped";
  }
}

+ (id)_debugStringForPlaybackType:(int64_t)a3
{
  v3 = @"VOD";
  if (a3 == 1)
  {
    v3 = @"EBS";
  }

  if (a3 == 2)
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
  v3 = [(WLKPlaybackSummary *)self dictionaryRepresentation];
  v4 = [v3 mutableCopy];

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
  v23 = [(WLKPlaybackSummary *)self bundleID];
  v22 = [(WLKPlaybackSummary *)self timestamp];
  v21 = [(WLKPlaybackSummary *)self duration];
  v20 = [(WLKPlaybackSummary *)self elapsedTime];
  v19 = [(WLKPlaybackSummary *)self featureDuration];
  v18 = [(WLKPlaybackSummary *)self featureElapsedTime];
  v26 = [(WLKPlaybackSummary *)self contentID];
  v17 = [(WLKPlaybackSummary *)self playbackState];
  v14 = [(WLKPlaybackSummary *)self playbackRate];
  v16 = [(WLKPlaybackSummary *)self completionState];
  v15 = [(WLKPlaybackSummary *)self isAlwaysLive];
  v13 = [(WLKPlaybackSummary *)self serviceID];
  v3 = [(WLKPlaybackSummary *)self currentPlaybackDate];
  v4 = [(WLKPlaybackSummary *)self playbackType];
  v5 = [(WLKPlaybackSummary *)self isTimerDerived];
  v6 = [(WLKPlaybackSummary *)self isFromActivePlayerPath];
  v7 = [(WLKPlaybackSummary *)self playablePassthrough];
  v8 = [(WLKPlaybackSummary *)self channelID];
  v9 = [(WLKPlaybackSummary *)self contentTitle];
  BYTE1(v12) = v6;
  LOBYTE(v12) = v5;
  LOBYTE(v11) = v15;
  v25 = [(WLKPlaybackSummary *)v24 initWithBundleID:v23 timestamp:v22 duration:v21 elapsedTime:v20 featureDuration:v19 featureElapsedTime:v18 externalProfileID:0 contentID:v26 accountID:0 playbackState:v17 playbackRate:v14 completionState:v16 isAlwaysLive:v11 serviceID:v13 currentPlaybackDate:v3 playbackType:v4 isTimerDerived:v12 isFromActivePlayerPath:v7 playablePassthrough:v8 channelID:v9 contentTitle:?];

  return v25;
}

- (WLKPlaybackSummary)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    if (initWithCoder__onceToken != -1)
    {
      [WLKPlaybackSummary initWithCoder:];
    }

    v5 = [(WLKPlaybackSummary *)self init];
    if (v5)
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.bundleID"];
      bundleID = v5->_bundleID;
      v5->_bundleID = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.timestamp"];
      timestamp = v5->_timestamp;
      v5->_timestamp = v8;

      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.duration"];
      duration = v5->_duration;
      v5->_duration = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.elapsedTime"];
      elapsedTime = v5->_elapsedTime;
      v5->_elapsedTime = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.featureDuration"];
      featureDuration = v5->_featureDuration;
      v5->_featureDuration = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.featureElapsedTime"];
      featureElapsedTime = v5->_featureElapsedTime;
      v5->_featureElapsedTime = v16;

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.externalContentID"];
      contentID = v5->_contentID;
      v5->_contentID = v18;

      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.externalUserProfileID"];
      externalProfileID = v5->_externalProfileID;
      v5->_externalProfileID = v20;

      v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.accountID"];
      accountID = v5->_accountID;
      v5->_accountID = v22;

      v5->_playbackState = [v4 decodeIntegerForKey:@"WLKPlaybackActivity.playbackState"];
      v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.playbackRate"];
      playbackRate = v5->_playbackRate;
      v5->_playbackRate = v24;

      v5->_completionState = [v4 decodeIntegerForKey:@"WLKPlaybackActivity.completionState"];
      v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.serviceID"];
      serviceID = v5->_serviceID;
      v5->_serviceID = v26;

      v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.currentPlaybackDate"];
      currentPlaybackDate = v5->_currentPlaybackDate;
      v5->_currentPlaybackDate = v28;

      v5->_isAlwaysLive = [v4 decodeBoolForKey:@"WLKPlaybackActivity.isAlwaysLive"];
      v5->_playbackType = [v4 decodeIntegerForKey:@"WLKPlaybackActivity.playbackType"];
      v5->_isTimerDerived = [v4 decodeBoolForKey:@"WLKPlaybackActivity.isTimerDerived"];
      v5->_fromActivePlayerPath = [v4 decodeBoolForKey:@"WLKPlaybackActivity.fromActivePlayerPath"];
      v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.channelID"];
      channelID = v5->_channelID;
      v5->_channelID = v30;

      v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.playablePassthrough"];
      playablePassthrough = v5->_playablePassthrough;
      v5->_playablePassthrough = v32;

      v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKPlaybackActivity.contentTitle"];
      contentTitle = v5->_contentTitle;
      v5->_contentTitle = v34;
    }

    self = v5;
    v36 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    v36 = 0;
  }

  return v36;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [v4 encodeObject:self->_bundleID forKey:@"WLKPlaybackActivity.bundleID"];
  [v4 encodeObject:self->_timestamp forKey:@"WLKPlaybackActivity.timestamp"];
  [v4 encodeObject:self->_duration forKey:@"WLKPlaybackActivity.duration"];
  [v4 encodeObject:self->_elapsedTime forKey:@"WLKPlaybackActivity.elapsedTime"];
  [v4 encodeObject:self->_featureDuration forKey:@"WLKPlaybackActivity.featureDuration"];
  [v4 encodeObject:self->_featureElapsedTime forKey:@"WLKPlaybackActivity.featureElapsedTime"];
  [v4 encodeObject:self->_contentID forKey:@"WLKPlaybackActivity.externalContentID"];
  [v4 encodeObject:self->_externalProfileID forKey:@"WLKPlaybackActivity.externalUserProfileID"];
  [v4 encodeObject:self->_accountID forKey:@"WLKPlaybackActivity.accountID"];
  [v4 encodeInteger:self->_playbackState forKey:@"WLKPlaybackActivity.playbackState"];
  [v4 encodeObject:self->_playbackRate forKey:@"WLKPlaybackActivity.playbackRate"];
  [v4 encodeInteger:self->_completionState forKey:@"WLKPlaybackActivity.completionState"];
  [v4 encodeObject:self->_serviceID forKey:@"WLKPlaybackActivity.serviceID"];
  [v4 encodeObject:self->_currentPlaybackDate forKey:@"WLKPlaybackActivity.currentPlaybackDate"];
  [v4 encodeBool:self->_isAlwaysLive forKey:@"WLKPlaybackActivity.isAlwaysLive"];
  [v4 encodeInteger:self->_playbackType forKey:@"WLKPlaybackActivity.playbackType"];
  [v4 encodeBool:self->_isTimerDerived forKey:@"WLKPlaybackActivity.isTimerDerived"];
  [v4 encodeBool:self->_fromActivePlayerPath forKey:@"WLKPlaybackActivity.fromActivePlayerPath"];
  [v4 encodeObject:self->_channelID forKey:@"WLKPlaybackActivity.channelID"];
  [v4 encodeObject:self->_playablePassthrough forKey:@"WLKPlaybackActivity.playablePassthrough"];
  [v4 encodeObject:self->_contentTitle forKey:@"WLKPlaybackActivity.contentTitle"];
}

- (BOOL)_compareOptional:(id)a3 with:(id)a4
{
  if (a3 && a4)
  {
    return [a3 isEqual:a4];
  }

  else
  {
    return (a3 | a4) == 0;
  }
}

- (BOOL)_compareOptionalTemporalValue:(id)a3 with:(id)a4 fuzzy:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 floatValue];
    v10 = v9;
    [v8 floatValue];
    v12 = vabds_f32(v10, v11) <= 0.1;
  }

  else if (v7 && v8)
  {
    v12 = [v7 isEqual:v8];
  }

  else
  {
    v12 = (v7 | v8) == 0;
  }

  return v12;
}

- (BOOL)_validate:(id)a3 identifier:(id)a4 expectedClass:(Class)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    NSLog(&cfstr_Wlkplaybacksum_2.isa, v8);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = NSStringFromClass(a5);
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
  v3 = [(WLKPlaybackSummary *)self bundleID];
  v4 = [(WLKPlaybackSummary *)self _validate:v3 identifier:@"bundleID" expectedClass:objc_opt_class()];

  if (!v4)
  {
    return 0;
  }

  v5 = [(WLKPlaybackSummary *)self accountID];
  v6 = [(WLKPlaybackSummary *)self _validate:v5 identifier:@"accountID" expectedClass:objc_opt_class()];

  if (!v6)
  {
    return 0;
  }

  v7 = [(WLKPlaybackSummary *)self timestamp];
  v8 = [(WLKPlaybackSummary *)self _validate:v7 identifier:@"timestamp" expectedClass:objc_opt_class()];

  if (!v8)
  {
    return 0;
  }

  playbackType = self->_playbackType;
  if (playbackType == 2)
  {
    v21 = [(WLKPlaybackSummary *)self currentPlaybackDate];
    v22 = [(WLKPlaybackSummary *)self _validate:v21 identifier:@"currentPlaybackDate" expectedClass:objc_opt_class()];

    if (!v22)
    {
      return 0;
    }

    v23 = [(WLKPlaybackSummary *)self serviceID];
    v24 = [(WLKPlaybackSummary *)self _validate:v23 identifier:@"serviceID" expectedClass:objc_opt_class()];

    return v24;
  }

  if (playbackType == 1)
  {
    v17 = [(WLKPlaybackSummary *)self currentPlaybackDate];
    v18 = [(WLKPlaybackSummary *)self _validate:v17 identifier:@"currentPlaybackDate" expectedClass:objc_opt_class()];

    if (!v18)
    {
      return 0;
    }

    v19 = [(WLKPlaybackSummary *)self contentID];
    v20 = [(WLKPlaybackSummary *)self _validate:v19 identifier:@"contentID" expectedClass:objc_opt_class()];

    return v20;
  }

  if (playbackType)
  {
    return 1;
  }

  v10 = [(WLKPlaybackSummary *)self duration];
  v11 = [(WLKPlaybackSummary *)self _validate:v10 identifier:@"duration" expectedClass:objc_opt_class()];

  if (!v11)
  {
    return 0;
  }

  v12 = [(WLKPlaybackSummary *)self elapsedTime];
  v13 = [(WLKPlaybackSummary *)self _validate:v12 identifier:@"elapsedTime" expectedClass:objc_opt_class()];

  if (!v13)
  {
    return 0;
  }

  v14 = [(WLKPlaybackSummary *)self elapsedTime];
  v15 = [MEMORY[0x277CCA980] notANumber];
  v16 = [v14 isEqualToNumber:v15];

  if (!v16)
  {
    v26 = [(WLKPlaybackSummary *)self contentID];
    v27 = [(WLKPlaybackSummary *)self _validate:v26 identifier:@"contentID" expectedClass:objc_opt_class()];

    if (!v27)
    {
      return 0;
    }

    v28 = [(WLKPlaybackSummary *)self duration];
    v29 = [v28 unsignedIntegerValue];

    if (v29 <= 0x1D)
    {
      v30 = [(WLKPlaybackSummary *)self duration];
      NSLog(&cfstr_Wlkplaybacksum_5.isa, v30);

      return 0;
    }

    v31 = [(WLKPlaybackSummary *)self contentID];
    v32 = [v31 length];

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

- (void)resolveChannelID:(id)a3
{
  v4 = a3;
  v5 = [(WLKPlaybackSummary *)self channelID];

  if (v5)
  {
    v6 = [(WLKPlaybackSummary *)self channelID];
    v4[2](v4, v6, 0);
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
    v10 = v4;
    v6 = v7;
    [v6 loadIfNeededWithCompletion:v8];
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

+ (double)playedThresholdTimeForDuration:(double)a3
{
  v3 = 0.0;
  if (a3 > 0.0 && a3 != 3.40282347e38)
  {
    if (a3 < 10.0)
    {
      return a3;
    }

    if (a3 >= 900.0)
    {
      if (a3 >= 1800.0)
      {
        if (a3 >= 3900.0)
        {
          if (a3 >= 6000.0)
          {
            v4 = -660.0;
            return a3 + v4;
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

    return a3 + v4;
  }

  return v3;
}

+ (int64_t)completionStateForDuration:(double)a3 elapsedTime:(double)a4
{
  [a1 playedThresholdTimeForDuration:a3];
  v6 = 2;
  if (v5 > a4)
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

+ (id)debugStringForCompletionState:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_279E5FDA0[a3];
  }
}

- (id)elapsedTimeSummaryWithPlaybackState:(int64_t)a3 timerDerived:(BOOL)a4
{
  v6 = 0.0;
  if ([(WLKPlaybackSummary *)self playbackState]== 1)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [(WLKPlaybackSummary *)self timestamp];
    [v7 timeIntervalSinceDate:v8];
    v6 = v9;
  }

  v10 = [(WLKPlaybackSummary *)self elapsedTime];
  [v10 doubleValue];
  v12 = v6 + v11;

  v13 = [(WLKPlaybackSummary *)self duration];
  [v13 doubleValue];
  v15 = fmin(v12, v14);

  v49 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  v16 = [(WLKPlaybackSummary *)self featureElapsedTime];
  if (v16 && (v17 = v16, [(WLKPlaybackSummary *)self featureDuration], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
  {
    v19 = [(WLKPlaybackSummary *)self featureElapsedTime];
    [v19 doubleValue];
    v21 = v6 + v20;

    v22 = [(WLKPlaybackSummary *)self featureDuration];
    [v22 doubleValue];
    v24 = fmin(v21, v23);

    v48 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
  }

  else
  {
    v48 = 0;
  }

  v25 = [(WLKPlaybackSummary *)self duration];
  [v25 doubleValue];
  v47 = [WLKPlaybackSummary completionStateForDuration:"completionStateForDuration:elapsedTime:" elapsedTime:?];

  v46 = [WLKPlaybackSummary alloc];
  v45 = [(WLKPlaybackSummary *)self bundleID];
  v44 = [MEMORY[0x277CBEAA8] date];
  v43 = [(WLKPlaybackSummary *)self duration];
  v42 = [(WLKPlaybackSummary *)self featureDuration];
  v26 = [(WLKPlaybackSummary *)self externalProfileID];
  v41 = [(WLKPlaybackSummary *)self contentID];
  v27 = [(WLKPlaybackSummary *)self accountID];
  v28 = &unk_288222D58;
  if (a3 == 1)
  {
    v28 = &unk_288222D40;
  }

  v40 = v28;
  v29 = a3;
  v30 = [(WLKPlaybackSummary *)self isAlwaysLive];
  v39 = [(WLKPlaybackSummary *)self serviceID];
  v31 = [(WLKPlaybackSummary *)self currentPlaybackDate];
  v32 = [(WLKPlaybackSummary *)self playbackType];
  v33 = [(WLKPlaybackSummary *)self isFromActivePlayerPath];
  v34 = [(WLKPlaybackSummary *)self channelID];
  v35 = [(WLKPlaybackSummary *)self contentTitle];
  BYTE1(v38) = v33;
  LOBYTE(v38) = a4;
  LOBYTE(v37) = v30;
  v51 = [(WLKPlaybackSummary *)v46 initWithBundleID:v45 timestamp:v44 duration:v43 elapsedTime:v49 featureDuration:v42 featureElapsedTime:v48 externalProfileID:v26 contentID:v41 accountID:v27 playbackState:v29 playbackRate:v40 completionState:v47 isAlwaysLive:v37 serviceID:v39 currentPlaybackDate:v31 playbackType:v32 isTimerDerived:v38 isFromActivePlayerPath:v34 channelID:v35 contentTitle:?];

  return v51;
}

@end
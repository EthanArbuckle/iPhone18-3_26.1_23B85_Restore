@interface TUAnswerRequest
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (NSString)description;
- (TUAnswerRequest)init;
- (TUAnswerRequest)initWithCall:(id)call;
- (TUAnswerRequest)initWithCoder:(id)coder;
- (TUAnswerRequest)initWithUniqueProxyIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)setSendToScreening:(BOOL)screening;
@end

@implementation TUAnswerRequest

- (TUAnswerRequest)initWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = TUAnswerRequest;
  v5 = [(TUAnswerRequest *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    uniqueProxyIdentifier = v5->_uniqueProxyIdentifier;
    v5->_uniqueProxyIdentifier = v6;
  }

  return v5;
}

- (TUAnswerRequest)initWithCall:(id)call
{
  uniqueProxyIdentifier = [call uniqueProxyIdentifier];
  v5 = [(TUAnswerRequest *)self initWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  return v5;
}

- (TUAnswerRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUAnswerRequest.m" lineNumber:39 description:{@"%s is unavailable, use a designated initializer instead", "-[TUAnswerRequest init]"}];

  return 0;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p", objc_opt_class(), self];
  uniqueProxyIdentifier = [(TUAnswerRequest *)self uniqueProxyIdentifier];
  [v3 appendFormat:@" uniqueProxyIdentifier=%@", uniqueProxyIdentifier];

  [(TUAnswerRequest *)self localLandscapeAspectRatio];
  v5 = NSStringFromSize(v19);
  [v3 appendFormat:@" localLandscapeAspectRatio=%@", v5];

  [(TUAnswerRequest *)self localPortraitAspectRatio];
  v6 = NSStringFromSize(v20);
  [v3 appendFormat:@" localPortraitAspectRatio=%@", v6];

  dateAnswered = [(TUAnswerRequest *)self dateAnswered];
  [v3 appendFormat:@" dateAnswered=%@", dateAnswered];

  sourceIdentifier = [(TUAnswerRequest *)self sourceIdentifier];

  if (sourceIdentifier)
  {
    sourceIdentifier2 = [(TUAnswerRequest *)self sourceIdentifier];
    [v3 appendFormat:@" sourceIdentifier=%@", sourceIdentifier2];
  }

  endpointIDSDestination = [(TUAnswerRequest *)self endpointIDSDestination];

  if (endpointIDSDestination)
  {
    endpointIDSDestination2 = [(TUAnswerRequest *)self endpointIDSDestination];
    [v3 appendFormat:@" endpointIDSDestination=%@", endpointIDSDestination2];
  }

  endpointRapportMediaSystemIdentifier = [(TUAnswerRequest *)self endpointRapportMediaSystemIdentifier];

  if (endpointRapportMediaSystemIdentifier)
  {
    endpointRapportMediaSystemIdentifier2 = [(TUAnswerRequest *)self endpointRapportMediaSystemIdentifier];
    [v3 appendFormat:@" endpointRapportMediaSystemIdentifier=%@", endpointRapportMediaSystemIdentifier2];
  }

  endpointRapportEffectiveIdentifier = [(TUAnswerRequest *)self endpointRapportEffectiveIdentifier];

  if (endpointRapportEffectiveIdentifier)
  {
    endpointRapportEffectiveIdentifier2 = [(TUAnswerRequest *)self endpointRapportEffectiveIdentifier];
    [v3 appendFormat:@" endpointRapportEffectiveIdentifier=%@", endpointRapportEffectiveIdentifier2];
  }

  if ([(TUAnswerRequest *)self downgradeToAudio])
  {
    [v3 appendFormat:@" downgradeToAudio=%d", -[TUAnswerRequest downgradeToAudio](self, "downgradeToAudio")];
  }

  if ([(TUAnswerRequest *)self wantsHoldMusic])
  {
    [v3 appendFormat:@" wantsHoldMusic=%d", -[TUAnswerRequest wantsHoldMusic](self, "wantsHoldMusic")];
  }

  if ([(TUAnswerRequest *)self launchInBackground])
  {
    [v3 appendFormat:@" launchInBackground=%d", -[TUAnswerRequest launchInBackground](self, "launchInBackground")];
  }

  if ([(TUAnswerRequest *)self pauseVideoToStart])
  {
    [v3 appendFormat:@" pauseVideoToStart=%d", -[TUAnswerRequest pauseVideoToStart](self, "pauseVideoToStart")];
  }

  if ([(TUAnswerRequest *)self allowBluetoothAnswerWithoutDowngrade])
  {
    [v3 appendFormat:@" allowBluetoothAnswerWithoutDowngrade=%d", -[TUAnswerRequest allowBluetoothAnswerWithoutDowngrade](self, "allowBluetoothAnswerWithoutDowngrade")];
  }

  if ([(TUAnswerRequest *)self sendToScreening])
  {
    [v3 appendFormat:@" sendToScreening=%d", -[TUAnswerRequest sendToScreening](self, "sendToScreening")];
  }

  if ([(TUAnswerRequest *)self screeningType])
  {
    [v3 appendFormat:@" screeningType=%ld", -[TUAnswerRequest screeningType](self, "screeningType")];
  }

  if ([(TUAnswerRequest *)self screeningDueToUserInteraction])
  {
    [v3 appendFormat:@" screeningDueToUserInteraction=%d", -[TUAnswerRequest screeningDueToUserInteraction](self, "screeningDueToUserInteraction")];
  }

  if ([(TUAnswerRequest *)self behavior])
  {
    [v3 appendFormat:@" behavior=%ld", -[TUAnswerRequest behavior](self, "behavior")];
  }

  [v3 appendString:@">"];
  v16 = [v3 copy];

  return v16;
}

- (void)setSendToScreening:(BOOL)screening
{
  self->_sendToScreening = screening;
  if (!screening)
  {
    v3 = 0;
LABEL_6:
    self->_screeningType = v3;
    return;
  }

  if (!self->_screeningType)
  {
    v3 = 1;
    goto LABEL_6;
  }
}

- (TUAnswerRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_uniqueProxyIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  v8 = [(TUAnswerRequest *)self initWithUniqueProxyIdentifier:v7];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_sourceIdentifier);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    sourceIdentifier = v8->_sourceIdentifier;
    v8->_sourceIdentifier = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_endpointIDSDestination);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    endpointIDSDestination = v8->_endpointIDSDestination;
    v8->_endpointIDSDestination = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_endpointRapportMediaSystemIdentifier);
    v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];
    endpointRapportMediaSystemIdentifier = v8->_endpointRapportMediaSystemIdentifier;
    v8->_endpointRapportMediaSystemIdentifier = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_endpointRapportEffectiveIdentifier);
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    endpointRapportEffectiveIdentifier = v8->_endpointRapportEffectiveIdentifier;
    v8->_endpointRapportEffectiveIdentifier = v23;

    v25 = NSStringFromSelector(sel_wantsHoldMusic);
    v8->_wantsHoldMusic = [coderCopy decodeBoolForKey:v25];

    v26 = NSStringFromSelector(sel_launchInBackground);
    v8->_launchInBackground = [coderCopy decodeBoolForKey:v26];

    v27 = NSStringFromSelector(sel_sendToScreening);
    v8->_sendToScreening = [coderCopy decodeBoolForKey:v27];

    v28 = NSStringFromSelector(sel_screeningType);
    v8->_screeningType = [coderCopy decodeInt64ForKey:v28];

    v29 = NSStringFromSelector(sel_screeningDueToUserInteraction);
    v8->_screeningDueToUserInteraction = [coderCopy decodeBoolForKey:v29];

    v30 = NSStringFromSelector(sel_pauseVideoToStart);
    v8->_pauseVideoToStart = [coderCopy decodeBoolForKey:v30];

    v31 = NSStringFromSelector(sel_downgradeToAudio);
    v8->_downgradeToAudio = [coderCopy decodeBoolForKey:v31];

    v32 = NSStringFromSelector(sel_behavior);
    v8->_behavior = [coderCopy decodeIntegerForKey:v32];

    v33 = NSStringFromSelector(sel_localLandscapeAspectRatio);
    [coderCopy decodeSizeForKey:v33];
    v8->_localLandscapeAspectRatio.width = v34;
    v8->_localLandscapeAspectRatio.height = v35;

    v36 = NSStringFromSelector(sel_localPortraitAspectRatio);
    [coderCopy decodeSizeForKey:v36];
    v8->_localPortraitAspectRatio.width = v37;
    v8->_localPortraitAspectRatio.height = v38;

    v39 = objc_opt_class();
    v40 = NSStringFromSelector(sel_dateAnswered);
    v41 = [coderCopy decodeObjectOfClass:v39 forKey:v40];
    dateAnswered = v8->_dateAnswered;
    v8->_dateAnswered = v41;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueProxyIdentifier = [(TUAnswerRequest *)self uniqueProxyIdentifier];
  v6 = NSStringFromSelector(sel_uniqueProxyIdentifier);
  [coderCopy encodeObject:uniqueProxyIdentifier forKey:v6];

  sourceIdentifier = [(TUAnswerRequest *)self sourceIdentifier];
  v8 = NSStringFromSelector(sel_sourceIdentifier);
  [coderCopy encodeObject:sourceIdentifier forKey:v8];

  endpointIDSDestination = [(TUAnswerRequest *)self endpointIDSDestination];
  v10 = NSStringFromSelector(sel_endpointIDSDestination);
  [coderCopy encodeObject:endpointIDSDestination forKey:v10];

  endpointRapportMediaSystemIdentifier = [(TUAnswerRequest *)self endpointRapportMediaSystemIdentifier];
  v12 = NSStringFromSelector(sel_endpointRapportMediaSystemIdentifier);
  [coderCopy encodeObject:endpointRapportMediaSystemIdentifier forKey:v12];

  endpointRapportEffectiveIdentifier = [(TUAnswerRequest *)self endpointRapportEffectiveIdentifier];
  v14 = NSStringFromSelector(sel_endpointRapportEffectiveIdentifier);
  [coderCopy encodeObject:endpointRapportEffectiveIdentifier forKey:v14];

  wantsHoldMusic = [(TUAnswerRequest *)self wantsHoldMusic];
  v16 = NSStringFromSelector(sel_wantsHoldMusic);
  [coderCopy encodeBool:wantsHoldMusic forKey:v16];

  launchInBackground = [(TUAnswerRequest *)self launchInBackground];
  v18 = NSStringFromSelector(sel_launchInBackground);
  [coderCopy encodeBool:launchInBackground forKey:v18];

  sendToScreening = [(TUAnswerRequest *)self sendToScreening];
  v20 = NSStringFromSelector(sel_sendToScreening);
  [coderCopy encodeBool:sendToScreening forKey:v20];

  screeningType = [(TUAnswerRequest *)self screeningType];
  v22 = NSStringFromSelector(sel_screeningType);
  [coderCopy encodeInt64:screeningType forKey:v22];

  screeningDueToUserInteraction = [(TUAnswerRequest *)self screeningDueToUserInteraction];
  v24 = NSStringFromSelector(sel_screeningDueToUserInteraction);
  [coderCopy encodeBool:screeningDueToUserInteraction forKey:v24];

  pauseVideoToStart = [(TUAnswerRequest *)self pauseVideoToStart];
  v26 = NSStringFromSelector(sel_pauseVideoToStart);
  [coderCopy encodeBool:pauseVideoToStart forKey:v26];

  downgradeToAudio = [(TUAnswerRequest *)self downgradeToAudio];
  v28 = NSStringFromSelector(sel_downgradeToAudio);
  [coderCopy encodeBool:downgradeToAudio forKey:v28];

  behavior = [(TUAnswerRequest *)self behavior];
  v30 = NSStringFromSelector(sel_behavior);
  [coderCopy encodeInteger:behavior forKey:v30];

  width = self->_localLandscapeAspectRatio.width;
  height = self->_localLandscapeAspectRatio.height;
  v33 = NSStringFromSelector(sel_localLandscapeAspectRatio);
  [coderCopy encodeSize:v33 forKey:{width, height}];

  v34 = self->_localPortraitAspectRatio.width;
  v35 = self->_localPortraitAspectRatio.height;
  v36 = NSStringFromSelector(sel_localPortraitAspectRatio);
  [coderCopy encodeSize:v36 forKey:{v34, v35}];

  dateAnswered = self->_dateAnswered;
  v38 = NSStringFromSelector(sel_dateAnswered);
  [coderCopy encodeObject:dateAnswered forKey:v38];
}

- (CGSize)localLandscapeAspectRatio
{
  width = self->_localLandscapeAspectRatio.width;
  height = self->_localLandscapeAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)localPortraitAspectRatio
{
  width = self->_localPortraitAspectRatio.width;
  height = self->_localPortraitAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
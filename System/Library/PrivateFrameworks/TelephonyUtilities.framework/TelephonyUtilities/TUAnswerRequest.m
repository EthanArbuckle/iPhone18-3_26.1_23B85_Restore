@interface TUAnswerRequest
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (NSString)description;
- (TUAnswerRequest)init;
- (TUAnswerRequest)initWithCall:(id)a3;
- (TUAnswerRequest)initWithCoder:(id)a3;
- (TUAnswerRequest)initWithUniqueProxyIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setSendToScreening:(BOOL)a3;
@end

@implementation TUAnswerRequest

- (TUAnswerRequest)initWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUAnswerRequest;
  v5 = [(TUAnswerRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    uniqueProxyIdentifier = v5->_uniqueProxyIdentifier;
    v5->_uniqueProxyIdentifier = v6;
  }

  return v5;
}

- (TUAnswerRequest)initWithCall:(id)a3
{
  v4 = [a3 uniqueProxyIdentifier];
  v5 = [(TUAnswerRequest *)self initWithUniqueProxyIdentifier:v4];

  return v5;
}

- (TUAnswerRequest)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TUAnswerRequest.m" lineNumber:39 description:{@"%s is unavailable, use a designated initializer instead", "-[TUAnswerRequest init]"}];

  return 0;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUAnswerRequest *)self uniqueProxyIdentifier];
  [v3 appendFormat:@" uniqueProxyIdentifier=%@", v4];

  [(TUAnswerRequest *)self localLandscapeAspectRatio];
  v5 = NSStringFromSize(v19);
  [v3 appendFormat:@" localLandscapeAspectRatio=%@", v5];

  [(TUAnswerRequest *)self localPortraitAspectRatio];
  v6 = NSStringFromSize(v20);
  [v3 appendFormat:@" localPortraitAspectRatio=%@", v6];

  v7 = [(TUAnswerRequest *)self dateAnswered];
  [v3 appendFormat:@" dateAnswered=%@", v7];

  v8 = [(TUAnswerRequest *)self sourceIdentifier];

  if (v8)
  {
    v9 = [(TUAnswerRequest *)self sourceIdentifier];
    [v3 appendFormat:@" sourceIdentifier=%@", v9];
  }

  v10 = [(TUAnswerRequest *)self endpointIDSDestination];

  if (v10)
  {
    v11 = [(TUAnswerRequest *)self endpointIDSDestination];
    [v3 appendFormat:@" endpointIDSDestination=%@", v11];
  }

  v12 = [(TUAnswerRequest *)self endpointRapportMediaSystemIdentifier];

  if (v12)
  {
    v13 = [(TUAnswerRequest *)self endpointRapportMediaSystemIdentifier];
    [v3 appendFormat:@" endpointRapportMediaSystemIdentifier=%@", v13];
  }

  v14 = [(TUAnswerRequest *)self endpointRapportEffectiveIdentifier];

  if (v14)
  {
    v15 = [(TUAnswerRequest *)self endpointRapportEffectiveIdentifier];
    [v3 appendFormat:@" endpointRapportEffectiveIdentifier=%@", v15];
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

- (void)setSendToScreening:(BOOL)a3
{
  self->_sendToScreening = a3;
  if (!a3)
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

- (TUAnswerRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_uniqueProxyIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  v8 = [(TUAnswerRequest *)self initWithUniqueProxyIdentifier:v7];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_sourceIdentifier);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    sourceIdentifier = v8->_sourceIdentifier;
    v8->_sourceIdentifier = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_endpointIDSDestination);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    endpointIDSDestination = v8->_endpointIDSDestination;
    v8->_endpointIDSDestination = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_endpointRapportMediaSystemIdentifier);
    v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
    endpointRapportMediaSystemIdentifier = v8->_endpointRapportMediaSystemIdentifier;
    v8->_endpointRapportMediaSystemIdentifier = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_endpointRapportEffectiveIdentifier);
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    endpointRapportEffectiveIdentifier = v8->_endpointRapportEffectiveIdentifier;
    v8->_endpointRapportEffectiveIdentifier = v23;

    v25 = NSStringFromSelector(sel_wantsHoldMusic);
    v8->_wantsHoldMusic = [v4 decodeBoolForKey:v25];

    v26 = NSStringFromSelector(sel_launchInBackground);
    v8->_launchInBackground = [v4 decodeBoolForKey:v26];

    v27 = NSStringFromSelector(sel_sendToScreening);
    v8->_sendToScreening = [v4 decodeBoolForKey:v27];

    v28 = NSStringFromSelector(sel_screeningType);
    v8->_screeningType = [v4 decodeInt64ForKey:v28];

    v29 = NSStringFromSelector(sel_screeningDueToUserInteraction);
    v8->_screeningDueToUserInteraction = [v4 decodeBoolForKey:v29];

    v30 = NSStringFromSelector(sel_pauseVideoToStart);
    v8->_pauseVideoToStart = [v4 decodeBoolForKey:v30];

    v31 = NSStringFromSelector(sel_downgradeToAudio);
    v8->_downgradeToAudio = [v4 decodeBoolForKey:v31];

    v32 = NSStringFromSelector(sel_behavior);
    v8->_behavior = [v4 decodeIntegerForKey:v32];

    v33 = NSStringFromSelector(sel_localLandscapeAspectRatio);
    [v4 decodeSizeForKey:v33];
    v8->_localLandscapeAspectRatio.width = v34;
    v8->_localLandscapeAspectRatio.height = v35;

    v36 = NSStringFromSelector(sel_localPortraitAspectRatio);
    [v4 decodeSizeForKey:v36];
    v8->_localPortraitAspectRatio.width = v37;
    v8->_localPortraitAspectRatio.height = v38;

    v39 = objc_opt_class();
    v40 = NSStringFromSelector(sel_dateAnswered);
    v41 = [v4 decodeObjectOfClass:v39 forKey:v40];
    dateAnswered = v8->_dateAnswered;
    v8->_dateAnswered = v41;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUAnswerRequest *)self uniqueProxyIdentifier];
  v6 = NSStringFromSelector(sel_uniqueProxyIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUAnswerRequest *)self sourceIdentifier];
  v8 = NSStringFromSelector(sel_sourceIdentifier);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUAnswerRequest *)self endpointIDSDestination];
  v10 = NSStringFromSelector(sel_endpointIDSDestination);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUAnswerRequest *)self endpointRapportMediaSystemIdentifier];
  v12 = NSStringFromSelector(sel_endpointRapportMediaSystemIdentifier);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUAnswerRequest *)self endpointRapportEffectiveIdentifier];
  v14 = NSStringFromSelector(sel_endpointRapportEffectiveIdentifier);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(TUAnswerRequest *)self wantsHoldMusic];
  v16 = NSStringFromSelector(sel_wantsHoldMusic);
  [v4 encodeBool:v15 forKey:v16];

  v17 = [(TUAnswerRequest *)self launchInBackground];
  v18 = NSStringFromSelector(sel_launchInBackground);
  [v4 encodeBool:v17 forKey:v18];

  v19 = [(TUAnswerRequest *)self sendToScreening];
  v20 = NSStringFromSelector(sel_sendToScreening);
  [v4 encodeBool:v19 forKey:v20];

  v21 = [(TUAnswerRequest *)self screeningType];
  v22 = NSStringFromSelector(sel_screeningType);
  [v4 encodeInt64:v21 forKey:v22];

  v23 = [(TUAnswerRequest *)self screeningDueToUserInteraction];
  v24 = NSStringFromSelector(sel_screeningDueToUserInteraction);
  [v4 encodeBool:v23 forKey:v24];

  v25 = [(TUAnswerRequest *)self pauseVideoToStart];
  v26 = NSStringFromSelector(sel_pauseVideoToStart);
  [v4 encodeBool:v25 forKey:v26];

  v27 = [(TUAnswerRequest *)self downgradeToAudio];
  v28 = NSStringFromSelector(sel_downgradeToAudio);
  [v4 encodeBool:v27 forKey:v28];

  v29 = [(TUAnswerRequest *)self behavior];
  v30 = NSStringFromSelector(sel_behavior);
  [v4 encodeInteger:v29 forKey:v30];

  width = self->_localLandscapeAspectRatio.width;
  height = self->_localLandscapeAspectRatio.height;
  v33 = NSStringFromSelector(sel_localLandscapeAspectRatio);
  [v4 encodeSize:v33 forKey:{width, height}];

  v34 = self->_localPortraitAspectRatio.width;
  v35 = self->_localPortraitAspectRatio.height;
  v36 = NSStringFromSelector(sel_localPortraitAspectRatio);
  [v4 encodeSize:v36 forKey:{v34, v35}];

  dateAnswered = self->_dateAnswered;
  v38 = NSStringFromSelector(sel_dateAnswered);
  [v4 encodeObject:dateAnswered forKey:v38];
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
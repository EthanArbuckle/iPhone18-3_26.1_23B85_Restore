@interface TVRCUpNextInfo
+ (BOOL)isAppleOriginalFromDict:(id)dict;
+ (id)upNextInfoWithDictionary:(id)dictionary;
+ (id)upNextInfoWithMediaInfo:(id)info reason:(id)reason service:(id)service isAppleOriginal:(BOOL)original progress:(id)progress timeRemaining:(id)remaining actionURL:(id)l shareURL:(id)self0 shareShowURL:(id)self1 artworkNeedsCornerBlur:(BOOL)self2;
- (BOOL)isEqualToUpNextInfo:(id)info;
- (TVRCUpNextInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCUpNextInfo

+ (id)upNextInfoWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(TVRCUpNextInfo);
  v6 = [TVRCMediaInfo mediaInfoWithDictionary:dictionaryCopy];
  [(TVRCUpNextInfo *)v5 setMediaInfo:v6];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"localizedContext"];
  [(TVRCUpNextInfo *)v5 setReason:v7];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  [(TVRCUpNextInfo *)v5 setTimestamp:v8];

  v9 = [self serviceNameFromDict:dictionaryCopy];
  [(TVRCUpNextInfo *)v5 setService:v9];

  v10 = [self isAppleOriginalFromDict:dictionaryCopy];
  [(TVRCUpNextInfo *)v5 setIsAppleOriginal:v10];

  return v5;
}

+ (id)upNextInfoWithMediaInfo:(id)info reason:(id)reason service:(id)service isAppleOriginal:(BOOL)original progress:(id)progress timeRemaining:(id)remaining actionURL:(id)l shareURL:(id)self0 shareShowURL:(id)self1 artworkNeedsCornerBlur:(BOOL)self2
{
  originalCopy = original;
  uRLCopy = uRL;
  rLCopy = rL;
  lCopy = l;
  remainingCopy = remaining;
  progressCopy = progress;
  serviceCopy = service;
  reasonCopy = reason;
  infoCopy = info;
  v25 = objc_alloc_init(TVRCUpNextInfo);
  [(TVRCUpNextInfo *)v25 setMediaInfo:infoCopy];

  [(TVRCUpNextInfo *)v25 setReason:reasonCopy];
  [(TVRCUpNextInfo *)v25 setService:serviceCopy];

  [(TVRCUpNextInfo *)v25 setIsAppleOriginal:originalCopy];
  [(TVRCUpNextInfo *)v25 setProgress:progressCopy];

  [(TVRCUpNextInfo *)v25 setTimeRemaining:remainingCopy];
  [(TVRCUpNextInfo *)v25 setActionURL:lCopy];

  [(TVRCUpNextInfo *)v25 setShareURL:rLCopy];
  [(TVRCUpNextInfo *)v25 setShareShowURL:uRLCopy];

  [(TVRCUpNextInfo *)v25 setArtworkNeedsCornerBlur:blur];

  return v25;
}

- (BOOL)isEqualToUpNextInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  progress = [(TVRCUpNextInfo *)self progress];
  progress2 = [infoCopy progress];
  v7 = (progress == 0) ^ (progress2 == 0);

  if (v7)
  {
    goto LABEL_24;
  }

  timeRemaining = [(TVRCUpNextInfo *)self timeRemaining];
  timeRemaining2 = [infoCopy timeRemaining];
  v10 = (timeRemaining == 0) ^ (timeRemaining2 == 0);

  if (v10)
  {
    goto LABEL_24;
  }

  actionURL = [(TVRCUpNextInfo *)self actionURL];
  actionURL2 = [infoCopy actionURL];
  v13 = (actionURL == 0) ^ (actionURL2 == 0);

  if (v13)
  {
    goto LABEL_24;
  }

  shareURL = [(TVRCUpNextInfo *)self shareURL];
  shareURL2 = [infoCopy shareURL];
  v16 = (shareURL == 0) ^ (shareURL2 == 0);

  if (v16)
  {
    goto LABEL_24;
  }

  shareShowURL = [(TVRCUpNextInfo *)self shareShowURL];
  shareShowURL2 = [infoCopy shareShowURL];
  v19 = (shareShowURL == 0) ^ (shareShowURL2 == 0);

  if (v19)
  {
    goto LABEL_24;
  }

  reason = [(TVRCUpNextInfo *)self reason];
  reason2 = [infoCopy reason];
  v22 = [reason isEqualToString:reason2];

  if (!v22)
  {
    goto LABEL_24;
  }

  timestamp = [(TVRCUpNextInfo *)self timestamp];
  timestamp2 = [infoCopy timestamp];
  v25 = [timestamp isEqualToNumber:timestamp2];

  if (!v25)
  {
    goto LABEL_24;
  }

  service = [(TVRCUpNextInfo *)self service];
  service2 = [infoCopy service];
  v28 = [service isEqualToString:service2];

  if (!v28)
  {
    goto LABEL_24;
  }

  isAppleOriginal = [(TVRCUpNextInfo *)self isAppleOriginal];
  if (isAppleOriginal != [infoCopy isAppleOriginal])
  {
    goto LABEL_24;
  }

  mediaInfo = [(TVRCUpNextInfo *)self mediaInfo];
  mediaInfo2 = [infoCopy mediaInfo];
  v32 = [mediaInfo isEqualToMediaInfo:mediaInfo2];

  if (!v32)
  {
    goto LABEL_24;
  }

  progress3 = [(TVRCUpNextInfo *)self progress];
  if (progress3)
  {
    v34 = progress3;
    progress4 = [(TVRCUpNextInfo *)self progress];
    progress5 = [infoCopy progress];
    v37 = [progress4 isEqual:progress5];

    if (!v37)
    {
      goto LABEL_24;
    }
  }

  timeRemaining3 = [(TVRCUpNextInfo *)self timeRemaining];
  if (timeRemaining3)
  {
    v39 = timeRemaining3;
    timeRemaining4 = [(TVRCUpNextInfo *)self timeRemaining];
    timeRemaining5 = [infoCopy timeRemaining];
    v42 = [timeRemaining4 isEqual:timeRemaining5];

    if (!v42)
    {
      goto LABEL_24;
    }
  }

  actionURL3 = [(TVRCUpNextInfo *)self actionURL];
  if (actionURL3)
  {
    v44 = actionURL3;
    actionURL4 = [(TVRCUpNextInfo *)self actionURL];
    actionURL5 = [infoCopy actionURL];
    v47 = [actionURL4 isEqual:actionURL5];

    if (!v47)
    {
      goto LABEL_24;
    }
  }

  shareURL3 = [(TVRCUpNextInfo *)self shareURL];
  if (shareURL3)
  {
    v49 = shareURL3;
    shareURL4 = [(TVRCUpNextInfo *)self shareURL];
    shareURL5 = [infoCopy shareURL];
    v52 = [shareURL4 isEqual:shareURL5];

    if (!v52)
    {
      goto LABEL_24;
    }
  }

  shareShowURL3 = [(TVRCUpNextInfo *)self shareShowURL];
  if (!shareShowURL3)
  {
    goto LABEL_23;
  }

  v54 = shareShowURL3;
  shareShowURL4 = [(TVRCUpNextInfo *)self shareShowURL];
  shareShowURL5 = [infoCopy shareShowURL];
  v57 = [shareShowURL4 isEqual:shareShowURL5];

  if (v57)
  {
LABEL_23:
    artworkNeedsCornerBlur = [(TVRCUpNextInfo *)self artworkNeedsCornerBlur];
    v59 = artworkNeedsCornerBlur ^ [infoCopy artworkNeedsCornerBlur] ^ 1;
  }

  else
  {
LABEL_24:
    LOBYTE(v59) = 0;
  }

  return v59;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  mediaInfo = [(TVRCUpNextInfo *)self mediaInfo];
  v7 = [mediaInfo copyWithZone:zone];
  [v5 setMediaInfo:v7];

  reason = [(TVRCUpNextInfo *)self reason];
  [v5 setReason:reason];

  service = [(TVRCUpNextInfo *)self service];
  [v5 setService:service];

  timestamp = [(TVRCUpNextInfo *)self timestamp];
  [v5 setTimestamp:timestamp];

  [v5 setIsAppleOriginal:{-[TVRCUpNextInfo isAppleOriginal](self, "isAppleOriginal")}];
  progress = [(TVRCUpNextInfo *)self progress];
  [v5 setProgress:progress];

  timeRemaining = [(TVRCUpNextInfo *)self timeRemaining];
  [v5 setTimeRemaining:timeRemaining];

  actionURL = [(TVRCUpNextInfo *)self actionURL];
  [v5 setActionURL:actionURL];

  shareURL = [(TVRCUpNextInfo *)self shareURL];
  [v5 setShareURL:shareURL];

  shareShowURL = [(TVRCUpNextInfo *)self shareShowURL];
  [v5 setShareShowURL:shareShowURL];

  [v5 setArtworkNeedsCornerBlur:{-[TVRCUpNextInfo artworkNeedsCornerBlur](self, "artworkNeedsCornerBlur")}];
  return v5;
}

- (TVRCUpNextInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = TVRCUpNextInfo;
  v5 = [(TVRCUpNextInfo *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaInfo"];
    mediaInfo = v5->_mediaInfo;
    v5->_mediaInfo = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
    service = v5->_service;
    v5->_service = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v12;

    v5->_isAppleOriginal = [coderCopy decodeBoolForKey:@"isAppleOriginal"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeRemaining"];
    timeRemaining = v5->_timeRemaining;
    v5->_timeRemaining = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];
    shareURL = v5->_shareURL;
    v5->_shareURL = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareShowURL"];
    shareShowURL = v5->_shareShowURL;
    v5->_shareShowURL = v22;

    v5->_artworkNeedsCornerBlur = [coderCopy decodeBoolForKey:@"artworkNeedsCornerBlur"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  mediaInfo = self->_mediaInfo;
  coderCopy = coder;
  [coderCopy encodeObject:mediaInfo forKey:@"mediaInfo"];
  [coderCopy encodeObject:self->_reason forKey:@"reason"];
  [coderCopy encodeObject:self->_service forKey:@"service"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeBool:self->_isAppleOriginal forKey:@"isAppleOriginal"];
  [coderCopy encodeObject:self->_progress forKey:@"progress"];
  [coderCopy encodeObject:self->_timeRemaining forKey:@"timeRemaining"];
  [coderCopy encodeObject:self->_actionURL forKey:@"actionURL"];
  [coderCopy encodeObject:self->_shareURL forKey:@"shareURL"];
  [coderCopy encodeObject:self->_shareShowURL forKey:@"shareShowURL"];
  [coderCopy encodeBool:self->_artworkNeedsCornerBlur forKey:@"artworkNeedsCornerBlur"];
}

+ (BOOL)isAppleOriginalFromDict:(id)dict
{
  v3 = [dict objectForKeyedSubscript:@"isAppleOriginal"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end
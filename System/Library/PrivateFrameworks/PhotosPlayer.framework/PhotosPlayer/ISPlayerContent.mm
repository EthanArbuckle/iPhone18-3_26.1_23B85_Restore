@interface ISPlayerContent
- (BOOL)isEqual:(id)equal;
- (ISPlayerContent)initWithPhoto:(CGImage *)photo photoIsOriginal:(BOOL)original photoEXIFOrientation:(int)orientation photoTime:(id *)time videoDuration:(id *)duration photoHasColorAdjustments:(BOOL)adjustments videoPlayerItem:(id)item variationIdentifier:(id)self0 supportsVitality:(BOOL)self1;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation ISPlayerContent

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = ISPlayerContent;
  v3 = [(ISPlayerContent *)&v9 hash];
  v4 = &v3[[(AVPlayerItem *)self->_videoPlayerItem hash]+ self->_photoHasColorAdjustments];
  videoDuration = self->_videoDuration;
  v5 = (CMTimeGetSeconds(&videoDuration) * 10000.0);
  v6 = &v4[self->_photoIsOriginal];
  return &v6[[(NSNumber *)self->_variationIdentifier hash]+ self->_supportsVitality + v5];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    photo = self->_photo;
    if (photo != [v6 photo])
    {
      goto LABEL_8;
    }

    if (v6)
    {
      [v6 photoTime];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    photoTime = self->_photoTime;
    if (CMTimeCompare(&photoTime, &time2))
    {
LABEL_8:
      v8 = 0;
LABEL_9:

      goto LABEL_10;
    }

    videoPlayerItem = self->_videoPlayerItem;
    videoPlayerItem = [v6 videoPlayerItem];
    if (videoPlayerItem != videoPlayerItem)
    {
      goto LABEL_21;
    }

    photoHasColorAdjustments = self->_photoHasColorAdjustments;
    if (photoHasColorAdjustments != [v6 photoHasColorAdjustments])
    {
      goto LABEL_21;
    }

    if (v6)
    {
      [v6 videoDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    photoTime = self->_videoDuration;
    if (CMTimeCompare(&photoTime, &time2) || (photoIsOriginal = self->_photoIsOriginal, photoIsOriginal != [v6 photoIsOriginal]))
    {
LABEL_21:
      v8 = 0;
LABEL_22:

      goto LABEL_9;
    }

    variationIdentifier = self->_variationIdentifier;
    variationIdentifier = [v6 variationIdentifier];
    if (variationIdentifier == variationIdentifier || (v16 = self->_variationIdentifier, [v6 variationIdentifier], v3 = objc_claimAutoreleasedReturnValue(), -[NSNumber isEqual:](v16, "isEqual:", v3)))
    {
      supportsVitality = self->_supportsVitality;
      v8 = supportsVitality == [v6 supportsVitality];
      if (variationIdentifier == variationIdentifier)
      {
LABEL_25:

        goto LABEL_22;
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_25;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (void)dealloc
{
  CGImageRelease(self->_photo);
  v3 = +[ISDeferredDealloc sharedInstance];
  [v3 _performDeferredDealloc:self->_videoPlayerItem];

  v4.receiver = self;
  v4.super_class = ISPlayerContent;
  [(ISPlayerContent *)&v4 dealloc];
}

- (ISPlayerContent)initWithPhoto:(CGImage *)photo photoIsOriginal:(BOOL)original photoEXIFOrientation:(int)orientation photoTime:(id *)time videoDuration:(id *)duration photoHasColorAdjustments:(BOOL)adjustments videoPlayerItem:(id)item variationIdentifier:(id)self0 supportsVitality:(BOOL)self1
{
  itemCopy = item;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = ISPlayerContent;
  v19 = [(ISPlayerContent *)&v24 init];
  if (v19)
  {
    *(v19 + 2) = CGImageRetain(photo);
    *(v19 + 3) = orientation;
    v19[8] = adjustments;
    var3 = time->var3;
    *(v19 + 40) = *&time->var0;
    *(v19 + 7) = var3;
    v21 = duration->var3;
    *(v19 + 4) = *&duration->var0;
    *(v19 + 10) = v21;
    objc_storeStrong(v19 + 3, item);
    v19[9] = original;
    objc_storeStrong(v19 + 4, identifier);
    v19[10] = vitality;
  }

  return v19;
}

@end
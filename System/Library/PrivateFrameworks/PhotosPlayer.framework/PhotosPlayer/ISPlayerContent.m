@interface ISPlayerContent
- (BOOL)isEqual:(id)a3;
- (ISPlayerContent)initWithPhoto:(CGImage *)a3 photoIsOriginal:(BOOL)a4 photoEXIFOrientation:(int)a5 photoTime:(id *)a6 videoDuration:(id *)a7 photoHasColorAdjustments:(BOOL)a8 videoPlayerItem:(id)a9 variationIdentifier:(id)a10 supportsVitality:(BOOL)a11;
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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
    v11 = [v6 videoPlayerItem];
    if (videoPlayerItem != v11)
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
    v15 = [v6 variationIdentifier];
    if (variationIdentifier == v15 || (v16 = self->_variationIdentifier, [v6 variationIdentifier], v3 = objc_claimAutoreleasedReturnValue(), -[NSNumber isEqual:](v16, "isEqual:", v3)))
    {
      supportsVitality = self->_supportsVitality;
      v8 = supportsVitality == [v6 supportsVitality];
      if (variationIdentifier == v15)
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

- (ISPlayerContent)initWithPhoto:(CGImage *)a3 photoIsOriginal:(BOOL)a4 photoEXIFOrientation:(int)a5 photoTime:(id *)a6 videoDuration:(id *)a7 photoHasColorAdjustments:(BOOL)a8 videoPlayerItem:(id)a9 variationIdentifier:(id)a10 supportsVitality:(BOOL)a11
{
  v17 = a9;
  v18 = a10;
  v24.receiver = self;
  v24.super_class = ISPlayerContent;
  v19 = [(ISPlayerContent *)&v24 init];
  if (v19)
  {
    *(v19 + 2) = CGImageRetain(a3);
    *(v19 + 3) = a5;
    v19[8] = a8;
    var3 = a6->var3;
    *(v19 + 40) = *&a6->var0;
    *(v19 + 7) = var3;
    v21 = a7->var3;
    *(v19 + 4) = *&a7->var0;
    *(v19 + 10) = v21;
    objc_storeStrong(v19 + 3, a9);
    v19[9] = a4;
    objc_storeStrong(v19 + 4, a10);
    v19[10] = a11;
  }

  return v19;
}

@end
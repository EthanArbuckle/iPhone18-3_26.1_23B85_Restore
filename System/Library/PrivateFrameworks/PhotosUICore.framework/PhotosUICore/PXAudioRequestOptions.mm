@interface PXAudioRequestOptions
- (BOOL)isEqual:(id)equal;
- (PXAudioRequestOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setFadeOutDuration:(id *)duration;
- (void)setMaximumDuration:(id *)duration;
- (void)setPreferredDuration:(id *)duration;
@end

@implementation PXAudioRequestOptions

- (void)setMaximumDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_maximumDuration.epoch = duration->var3;
  *&self->_maximumDuration.value = v3;
}

- (void)setFadeOutDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_fadeOutDuration.epoch = duration->var3;
  *&self->_fadeOutDuration.value = v3;
}

- (void)setPreferredDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_preferredDuration.epoch = duration->var3;
  *&self->_preferredDuration.value = v3;
}

- (unint64_t)hash
{
  preferredDuration = self->_preferredDuration;
  v3 = self->_networkAccessAllowed | (32 * CMTimeGetSeconds(&preferredDuration));
  v4 = v3 ^ [(PXAudioAssetEntryPoint *)self->_entryPoint hash];
  preferredDuration = self->_fadeOutDuration;
  Seconds = CMTimeGetSeconds(&preferredDuration);
  preferredDuration = self->_maximumDuration;
  return v4 ^ (32 * (Seconds ^ CMTimeGetSeconds(&preferredDuration))) ^ self->_intent;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(PXAudioRequestOptions *)self preferredDuration];
    if (v5)
    {
      [v5 preferredDuration];
    }

    else
    {
      memset(&v12, 0, sizeof(v12));
    }

    if (!CMTimeCompare(&time1, &v12) && (v7 = -[PXAudioRequestOptions networkAccessAllowed](self, "networkAccessAllowed"), v7 == [v5 networkAccessAllowed]) && (v8 = -[PXAudioRequestOptions intent](self, "intent"), v8 == objc_msgSend(v5, "intent")))
    {
      entryPoint = [(PXAudioRequestOptions *)self entryPoint];
      entryPoint2 = [v5 entryPoint];
      if (entryPoint != entryPoint2 && ![entryPoint isEqual:entryPoint2])
      {
        goto LABEL_18;
      }

      [(PXAudioRequestOptions *)self fadeOutDuration:v12.value];
      if (v5)
      {
        [v5 fadeOutDuration];
      }

      else
      {
        memset(&v12, 0, sizeof(v12));
      }

      if (!CMTimeCompare(&time1, &v12))
      {
        [(PXAudioRequestOptions *)self maximumDuration];
        if (v5)
        {
          [v5 maximumDuration];
        }

        else
        {
          memset(&v12, 0, sizeof(v12));
        }

        v6 = CMTimeCompare(&time1, &v12) == 0;
      }

      else
      {
LABEL_18:
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PXAudioRequestOptions);
  [(PXAudioRequestOptions *)self preferredDuration];
  v11 = v13;
  v12 = v14;
  [(PXAudioRequestOptions *)v4 setPreferredDuration:&v11];
  [(PXAudioRequestOptions *)v4 setNetworkAccessAllowed:[(PXAudioRequestOptions *)self networkAccessAllowed]];
  [(PXAudioRequestOptions *)v4 setIntent:[(PXAudioRequestOptions *)self intent]];
  entryPoint = [(PXAudioRequestOptions *)self entryPoint];
  [(PXAudioRequestOptions *)v4 setEntryPoint:entryPoint];

  [(PXAudioRequestOptions *)self fadeOutDuration];
  v11 = v9;
  v12 = v10;
  [(PXAudioRequestOptions *)v4 setFadeOutDuration:&v11];
  [(PXAudioRequestOptions *)self maximumDuration];
  v11 = v7;
  v12 = v8;
  [(PXAudioRequestOptions *)v4 setMaximumDuration:&v11];
  return v4;
}

- (PXAudioRequestOptions)init
{
  v4.receiver = self;
  v4.super_class = PXAudioRequestOptions;
  result = [(PXAudioRequestOptions *)&v4 init];
  if (result)
  {
    v3 = MEMORY[0x1E6960C70];
    *&result->_preferredDuration.value = *MEMORY[0x1E6960C70];
    result->_preferredDuration.epoch = *(v3 + 16);
    result->_networkAccessAllowed = 1;
  }

  return result;
}

@end
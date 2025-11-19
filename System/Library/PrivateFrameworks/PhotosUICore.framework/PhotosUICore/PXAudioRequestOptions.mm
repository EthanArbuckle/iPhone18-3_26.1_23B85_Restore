@interface PXAudioRequestOptions
- (BOOL)isEqual:(id)a3;
- (PXAudioRequestOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)setFadeOutDuration:(id *)a3;
- (void)setMaximumDuration:(id *)a3;
- (void)setPreferredDuration:(id *)a3;
@end

@implementation PXAudioRequestOptions

- (void)setMaximumDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_maximumDuration.epoch = a3->var3;
  *&self->_maximumDuration.value = v3;
}

- (void)setFadeOutDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_fadeOutDuration.epoch = a3->var3;
  *&self->_fadeOutDuration.value = v3;
}

- (void)setPreferredDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_preferredDuration.epoch = a3->var3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
      v9 = [(PXAudioRequestOptions *)self entryPoint];
      v10 = [v5 entryPoint];
      if (v9 != v10 && ![v9 isEqual:v10])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PXAudioRequestOptions);
  [(PXAudioRequestOptions *)self preferredDuration];
  v11 = v13;
  v12 = v14;
  [(PXAudioRequestOptions *)v4 setPreferredDuration:&v11];
  [(PXAudioRequestOptions *)v4 setNetworkAccessAllowed:[(PXAudioRequestOptions *)self networkAccessAllowed]];
  [(PXAudioRequestOptions *)v4 setIntent:[(PXAudioRequestOptions *)self intent]];
  v5 = [(PXAudioRequestOptions *)self entryPoint];
  [(PXAudioRequestOptions *)v4 setEntryPoint:v5];

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
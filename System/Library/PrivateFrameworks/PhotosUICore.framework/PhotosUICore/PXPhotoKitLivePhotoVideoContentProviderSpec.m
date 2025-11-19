@interface PXPhotoKitLivePhotoVideoContentProviderSpec
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)crossfadeDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)loopStartTime;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)loopTimeRange;
- (PXPhotoKitLivePhotoVideoContentProviderSpec)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (void)setCrossfadeDuration:(id *)a3;
- (void)setLoopStartTime:(id *)a3;
- (void)setLoopTimeRange:(id *)a3;
@end

@implementation PXPhotoKitLivePhotoVideoContentProviderSpec

- (void)setLoopTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *(&self->_loopTimeRange.duration.value + 4) = *&a3->var1.var1;
  *&self->_loopTimeRange.start.flags = v4;
  *(&self->_loopStartTime.epoch + 4) = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)loopTimeRange
{
  v3 = *(&self[1].var1.var0 + 4);
  *&retstr->var0.var0 = *&self[1].var0.var2;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *(&self[1].var1.var3 + 4);
  return self;
}

- (void)setLoopStartTime:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_loopStartTime.flags = a3->var3;
  *(&self->_crossfadeDuration.epoch + 4) = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)loopStartTime
{
  *&retstr->var0 = *&self[1].var2;
  retstr->var3 = *(&self[2].var0 + 4);
  return self;
}

- (void)setCrossfadeDuration:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_crossfadeDuration.flags = a3->var3;
  *(&self->_wantsAudio + 3) = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)crossfadeDuration
{
  *&retstr->var0 = *&self->var2;
  retstr->var3 = *(&self[1].var0 + 4);
  return self;
}

- (id)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  [(PXPhotoKitLivePhotoVideoContentProviderSpec *)self crossfadeDuration];
  Seconds = CMTimeGetSeconds(&time);
  [(PXPhotoKitLivePhotoVideoContentProviderSpec *)self loopTimeRange];
  time = v9;
  v5 = CMTimeGetSeconds(&time);
  [(PXPhotoKitLivePhotoVideoContentProviderSpec *)self loopTimeRange];
  time = v8;
  v6 = [v3 stringWithFormat:@"-%f-%f-%f", *&Seconds, *&v5, CMTimeGetSeconds(&time)];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  v5 = *&self->_loopTimeRange.start.flags;
  v6 = *(&self->_loopTimeRange.duration.value + 4);
  *(result + 60) = *(&self->_loopStartTime.epoch + 4);
  *(result + 92) = v6;
  *(result + 76) = v5;
  *(result + 8) = self->_stabilizeIfPossible;
  v7 = *&self->_crossfadeDuration.flags;
  *(result + 12) = *(&self->_wantsAudio + 3);
  *(result + 28) = v7;
  v8 = *&self->_loopStartTime.flags;
  *(result + 36) = *(&self->_crossfadeDuration.epoch + 4);
  *(result + 52) = v8;
  *(result + 9) = self->_wantsAudio;
  return result;
}

- (PXPhotoKitLivePhotoVideoContentProviderSpec)init
{
  v8.receiver = self;
  v8.super_class = PXPhotoKitLivePhotoVideoContentProviderSpec;
  result = [(PXPhotoKitLivePhotoVideoContentProviderSpec *)&v8 init];
  if (result)
  {
    v3 = MEMORY[0x1E6960C98];
    v4 = *(MEMORY[0x1E6960C98] + 16);
    *(&result->_loopStartTime.epoch + 4) = *MEMORY[0x1E6960C98];
    *&result->_loopTimeRange.start.flags = v4;
    *(&result->_loopTimeRange.duration.value + 4) = *(v3 + 32);
    *&result->_stabilizeIfPossible = 0;
    v5 = MEMORY[0x1E6960C70];
    v6 = *MEMORY[0x1E6960C70];
    *(&result->_wantsAudio + 3) = *MEMORY[0x1E6960C70];
    v7 = *(v5 + 16);
    *&result->_crossfadeDuration.flags = v7;
    *(&result->_crossfadeDuration.epoch + 4) = v6;
    *&result->_loopStartTime.flags = v7;
  }

  return result;
}

@end
@interface PXVideoStabilizeOperationSpec
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCrossfadeDuration:(id *)duration;
- (void)setStartTime:(id *)time;
- (void)setTimeRange:(id *)range;
@end

@implementation PXVideoStabilizeOperationSpec

- (void)setCrossfadeDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_crossfadeDuration.value = *&duration->var0;
  self->_crossfadeDuration.epoch = var3;
}

- (void)setTimeRange:(id *)range
{
  v4 = *&range->var0.var3;
  v3 = *&range->var1.var1;
  *&self->_timeRange.start.value = *&range->var0.var0;
  *&self->_timeRange.start.epoch = v4;
  *&self->_timeRange.duration.timescale = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange
{
  v3 = *&self[2].var0.var3;
  *&retstr->var0.var0 = *&self[2].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var1;
  return self;
}

- (void)setStartTime:(id *)time
{
  var3 = time->var3;
  *&self->_startTime.value = *&time->var0;
  self->_startTime.epoch = var3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = PXVideoStabilizeOperationSpec;
  v4 = [(PXVideoProcessingOperationSpec *)&v10 copyWithZone:zone];
  objc_storeStrong(v4 + 5, self->_recipeSource);
  v5 = *&self->_startTime.value;
  *(v4 + 8) = self->_startTime.epoch;
  *(v4 + 3) = v5;
  v6 = *&self->_timeRange.start.value;
  v7 = *&self->_timeRange.duration.timescale;
  *(v4 + 7) = *&self->_timeRange.start.epoch;
  *(v4 + 8) = v7;
  *(v4 + 6) = v6;
  epoch = self->_crossfadeDuration.epoch;
  *(v4 + 72) = *&self->_crossfadeDuration.value;
  *(v4 + 11) = epoch;
  v4[32] = self->_performStabilization;
  v4[33] = self->_abortIfStabilizationFails;
  v4[34] = self->_wantsAudio;
  return v4;
}

@end
@interface PFSlowMotionTimeRangeMapper
- ($E33AF59C8D263E738CA17719EFF006B3)scaledTimeRangeForOriginalTimeRange:(SEL)range;
- (PFSlowMotionTimeRangeMapper)init;
- (float)_mapTime:(float)time fromLengths:(id)lengths toLengths:(id)toLengths;
- (void)addNextRange:(float)range scaledLength:(float)length;
- (void)enumerateScaledRegionsUsingBlock:(id)block;
- (void)markScaledRegionWithRate:(float)rate rampInStartTime:(float)time rampInEndTime:(float)endTime rampOutStartTime:(float)startTime rampOutEndTime:(float)outEndTime;
@end

@implementation PFSlowMotionTimeRangeMapper

- (void)enumerateScaledRegionsUsingBlock:(id)block
{
  blockCopy = block;
  scaledRegions = self->_scaledRegions;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PFSlowMotionTimeRangeMapper_enumerateScaledRegionsUsingBlock___block_invoke;
  v7[3] = &unk_1E7B659B8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableArray *)scaledRegions enumerateObjectsUsingBlock:v7];
}

uint64_t __64__PFSlowMotionTimeRangeMapper_enumerateScaledRegionsUsingBlock___block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = a2;
    [v3 rate];
    v5 = v4;
    [v3 rampInStartTime];
    v7 = v6;
    [v3 rampInEndTime];
    v9 = v8;
    [v3 rampOutStartTime];
    v11 = v10;
    [v3 rampOutEndTime];
    v13 = v12;

    v14 = *(v2 + 16);
    v15.n128_u32[0] = v5;
    v16.n128_u32[0] = v7;
    v17.n128_u32[0] = v9;
    v18.n128_u32[0] = v11;
    v19.n128_u32[0] = v13;

    return v14(v2, v15, v16, v17, v18, v19);
  }

  return result;
}

- (void)markScaledRegionWithRate:(float)rate rampInStartTime:(float)time rampInEndTime:(float)endTime rampOutStartTime:(float)startTime rampOutEndTime:(float)outEndTime
{
  v18 = objc_alloc_init(PFSlowMotionTimeRangeMapperScaledRegion);
  *&v13 = rate;
  [(PFSlowMotionTimeRangeMapperScaledRegion *)v18 setRate:v13];
  *&v14 = time;
  [(PFSlowMotionTimeRangeMapperScaledRegion *)v18 setRampInStartTime:v14];
  *&v15 = endTime;
  [(PFSlowMotionTimeRangeMapperScaledRegion *)v18 setRampInEndTime:v15];
  *&v16 = startTime;
  [(PFSlowMotionTimeRangeMapperScaledRegion *)v18 setRampOutStartTime:v16];
  *&v17 = outEndTime;
  [(PFSlowMotionTimeRangeMapperScaledRegion *)v18 setRampOutEndTime:v17];
  [(NSMutableArray *)self->_scaledRegions addObject:v18];
}

- (float)_mapTime:(float)time fromLengths:(id)lengths toLengths:(id)toLengths
{
  lengthsCopy = lengths;
  toLengthsCopy = toLengths;
  v9 = [lengthsCopy count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0.0;
    do
    {
      v13 = [lengthsCopy objectAtIndexedSubscript:v11];
      [v13 floatValue];
      v15 = v14;

      v16 = [toLengthsCopy objectAtIndexedSubscript:v11];
      [v16 floatValue];
      v18 = v17;

      v19 = time <= v15;
      v20 = (time * v18) / v15;
      if (time > v15)
      {
        time = time - v15;
      }

      else
      {
        time = 0.0;
      }

      if (!v19)
      {
        v20 = v18;
      }

      v12 = v12 + v20;
      ++v11;
    }

    while (v10 != v11);
  }

  else
  {
    v12 = 0.0;
  }

  return time + v12;
}

- ($E33AF59C8D263E738CA17719EFF006B3)scaledTimeRangeForOriginalTimeRange:(SEL)range
{
  *&v17.start.value = *&a4->var0.var0;
  v17.start.epoch = a4->var0.var3;
  Seconds = CMTimeGetSeconds(&v17.start);
  v8 = *&a4->var0.var3;
  *&v17.start.value = *&a4->var0.var0;
  *&v17.start.epoch = v8;
  *&v17.duration.timescale = *&a4->var1.var1;
  CMTimeRangeGetEnd(&time, &v17);
  v9 = CMTimeGetSeconds(&time);
  v10 = v9;
  *&v9 = Seconds;
  [(PFSlowMotionTimeRangeMapper *)self scaledTimeForOriginalTime:v9];
  v12 = v11;
  *&v13 = v10;
  [(PFSlowMotionTimeRangeMapper *)self scaledTimeForOriginalTime:v13];
  v15 = v14;
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  CMTimeMakeWithSeconds(&v17.start, v12, 600);
  CMTimeMakeWithSeconds(&time, v15, 600);
  return CMTimeRangeFromTimeToTime(retstr, &v17.start, &time);
}

- (void)addNextRange:(float)range scaledLength:(float)length
{
  originalLengths = self->_originalLengths;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [(NSMutableArray *)originalLengths addObject:v7];

  scaledLengths = self->_scaledLengths;
  *&v9 = length;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [(NSMutableArray *)scaledLengths addObject:v10];
}

- (PFSlowMotionTimeRangeMapper)init
{
  v10.receiver = self;
  v10.super_class = PFSlowMotionTimeRangeMapper;
  v2 = [(PFSlowMotionTimeRangeMapper *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    originalLengths = v2->_originalLengths;
    v2->_originalLengths = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    scaledLengths = v2->_scaledLengths;
    v2->_scaledLengths = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    scaledRegions = v2->_scaledRegions;
    v2->_scaledRegions = v7;
  }

  return v2;
}

@end
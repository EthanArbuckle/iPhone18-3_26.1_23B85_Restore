@interface RCMutableWaveform
- (BOOL)clipToTimeRange:(id)range;
- (void)addSegment:(id)segment;
- (void)addSegments:(id)segments;
- (void)removeAllSegments;
- (void)removeSegment:(id)segment;
- (void)setSegments:(id)segments;
@end

@implementation RCMutableWaveform

- (void)setSegments:(id)segments
{
  selfCopy = self;
  segmentsCopy = segments;
  objc_sync_enter(selfCopy);
  v6 = [segmentsCopy mutableCopy];

  v7.receiver = selfCopy;
  v7.super_class = RCMutableWaveform;
  [(RCWaveform *)&v7 setSegments:v6];

  objc_sync_exit(selfCopy);
}

- (BOOL)clipToTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_opt_class();
  segments = [(RCWaveform *)selfCopy segments];
  v8 = [v6 _mutableSegmentsByClippingToTimeRange:segments withSegments:{var0, var1}];

  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
    [v9 timeRange];
    if (v10 > 0.0)
    {
      [v9 timeRange];
      v12 = [RCWaveformSegment segmentsByShiftingSegments:v8 byTimeOffset:-v11];

      v8 = v12;
    }
  }

  objc_sync_exit(selfCopy);

  [(RCMutableWaveform *)selfCopy setSegments:v8];
  return 1;
}

- (void)addSegment:(id)segment
{
  segmentCopy = segment;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  segments = [(RCWaveform *)selfCopy segments];
  [segments addObject:segmentCopy];

  objc_sync_exit(selfCopy);
}

- (void)addSegments:(id)segments
{
  segmentsCopy = segments;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  segments = [(RCWaveform *)selfCopy segments];
  [segments addObjectsFromArray:segmentsCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeSegment:(id)segment
{
  segmentCopy = segment;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  segments = [(RCWaveform *)selfCopy segments];
  [segments removeObject:segmentCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeAllSegments
{
  obj = self;
  objc_sync_enter(obj);
  segments = [(RCWaveform *)obj segments];
  [segments removeAllObjects];

  objc_sync_exit(obj);
}

@end
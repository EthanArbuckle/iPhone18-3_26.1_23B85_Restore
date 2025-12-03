@interface PVTimelineMarker
+ (id)markerWithOZXTimeMarker:(_OZXTimeMarker *)marker;
+ (id)markerWithOZXTimeMarkerFigTime:(_OZXTimeMarkerFigTime *)time;
+ (id)markerWithType:(int)type timeRange:(id *)range;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)timeRange;
- (PVTimelineMarker)initWithType:(int)type timeRange:(id *)range;
- (void)setTimeRange:(id *)range;
@end

@implementation PVTimelineMarker

+ (id)markerWithType:(int)type timeRange:(id *)range
{
  v5 = *&type;
  v6 = [self alloc];
  v7 = *&range->var0.var3;
  v10[0] = *&range->var0.var0;
  v10[1] = v7;
  v10[2] = *&range->var1.var1;
  v8 = [v6 initWithType:v5 timeRange:v10];

  return v8;
}

- (PVTimelineMarker)initWithType:(int)type timeRange:(id *)range
{
  v5 = *&type;
  v11.receiver = self;
  v11.super_class = PVTimelineMarker;
  v6 = [(PVTimelineMarker *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(PVTimelineMarker *)v6 setType:v5];
    v8 = *&range->var0.var3;
    v10[0] = *&range->var0.var0;
    v10[1] = v8;
    v10[2] = *&range->var1.var1;
    [(PVTimelineMarker *)v7 setTimeRange:v10];
  }

  return v7;
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)timeRange
{
  v3 = *&self[1].var0.var0;
  *&retstr->var0.var0 = *&self->var1.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var3;
  return self;
}

- (void)setTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var1.var1;
  *&self->_timeRange.start.epoch = *&range->var0.var3;
  *&self->_timeRange.duration.timescale = v4;
  *&self->_timeRange.start.value = v3;
}

+ (id)markerWithOZXTimeMarker:(_OZXTimeMarker *)marker
{
  memset(&v11, 0, sizeof(v11));
  CMTimeMakeWithSeconds(&v9.start, marker->var0, 120000);
  CMTimeMakeWithSeconds(&duration, marker->var1, 120000);
  CMTimeRangeMake(&v11, &v9.start, &duration);
  var5 = marker->var5;
  v9 = v11;
  v5 = [PVTimelineMarker markerWithType:var5 timeRange:&v9];
  [v5 setColor:marker->var4];
  var2 = marker->var2;
  [v5 setLabel:var2];

  var3 = marker->var3;
  [v5 setComment:var3];

  return v5;
}

+ (id)markerWithOZXTimeMarkerFigTime:(_OZXTimeMarkerFigTime *)time
{
  memset(&v11, 0, sizeof(v11));
  *&v9.start.value = *&time->var0.var0;
  v9.start.epoch = time->var0.var3;
  duration = time->var1;
  CMTimeRangeMake(&v11, &v9.start, &duration);
  var5 = time->var5;
  v9 = v11;
  v5 = [PVTimelineMarker markerWithType:var5 timeRange:&v9];
  [v5 setColor:time->var4];
  var2 = time->var2;
  [v5 setLabel:var2];

  var3 = time->var3;
  [v5 setComment:var3];

  return v5;
}

@end
@interface PVTimelineMarker
+ (id)markerWithOZXTimeMarker:(_OZXTimeMarker *)a3;
+ (id)markerWithOZXTimeMarkerFigTime:(_OZXTimeMarkerFigTime *)a3;
+ (id)markerWithType:(int)a3 timeRange:(id *)a4;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)timeRange;
- (PVTimelineMarker)initWithType:(int)a3 timeRange:(id *)a4;
- (void)setTimeRange:(id *)a3;
@end

@implementation PVTimelineMarker

+ (id)markerWithType:(int)a3 timeRange:(id *)a4
{
  v5 = *&a3;
  v6 = [a1 alloc];
  v7 = *&a4->var0.var3;
  v10[0] = *&a4->var0.var0;
  v10[1] = v7;
  v10[2] = *&a4->var1.var1;
  v8 = [v6 initWithType:v5 timeRange:v10];

  return v8;
}

- (PVTimelineMarker)initWithType:(int)a3 timeRange:(id *)a4
{
  v5 = *&a3;
  v11.receiver = self;
  v11.super_class = PVTimelineMarker;
  v6 = [(PVTimelineMarker *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(PVTimelineMarker *)v6 setType:v5];
    v8 = *&a4->var0.var3;
    v10[0] = *&a4->var0.var0;
    v10[1] = v8;
    v10[2] = *&a4->var1.var1;
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

- (void)setTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var1.var1;
  *&self->_timeRange.start.epoch = *&a3->var0.var3;
  *&self->_timeRange.duration.timescale = v4;
  *&self->_timeRange.start.value = v3;
}

+ (id)markerWithOZXTimeMarker:(_OZXTimeMarker *)a3
{
  memset(&v11, 0, sizeof(v11));
  CMTimeMakeWithSeconds(&v9.start, a3->var0, 120000);
  CMTimeMakeWithSeconds(&duration, a3->var1, 120000);
  CMTimeRangeMake(&v11, &v9.start, &duration);
  var5 = a3->var5;
  v9 = v11;
  v5 = [PVTimelineMarker markerWithType:var5 timeRange:&v9];
  [v5 setColor:a3->var4];
  var2 = a3->var2;
  [v5 setLabel:var2];

  var3 = a3->var3;
  [v5 setComment:var3];

  return v5;
}

+ (id)markerWithOZXTimeMarkerFigTime:(_OZXTimeMarkerFigTime *)a3
{
  memset(&v11, 0, sizeof(v11));
  *&v9.start.value = *&a3->var0.var0;
  v9.start.epoch = a3->var0.var3;
  duration = a3->var1;
  CMTimeRangeMake(&v11, &v9.start, &duration);
  var5 = a3->var5;
  v9 = v11;
  v5 = [PVTimelineMarker markerWithType:var5 timeRange:&v9];
  [v5 setColor:a3->var4];
  var2 = a3->var2;
  [v5 setLabel:var2];

  var3 = a3->var3;
  [v5 setComment:var3];

  return v5;
}

@end
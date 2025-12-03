@interface TISKDeleteKeyEvent
- (id)description;
- (int64_t)_metricDeleteKeyPostion;
- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event;
- (void)reportToSession:(id)session;
@end

@implementation TISKDeleteKeyEvent

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  input = [(TISKInputEvent *)self input];
  if ([input isRapidDelete])
  {
    v4 = @"rdel";
  }

  else
  {
    v4 = @"del";
  }

  v5 = [v2 stringWithFormat:v4];

  return v5;
}

- (void)reportInterKeyTiming:(id)timing previousEvent:(id)event
{
  timingCopy = timing;
  eventCopy = event;
  if (eventCopy)
  {
    v20.receiver = self;
    v20.super_class = TISKDeleteKeyEvent;
    [(TISKInputEvent *)&v20 reportInterKeyTiming:timingCopy previousEvent:eventCopy];
    [(TISKEvent *)self touchDownTimestamp];
    v9 = v8;
    [eventCopy touchDownTimestamp];
    v11 = v9 - v10;
    type = [eventCopy type];
    if (type > 2)
    {
      if (type == 3)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        [timingCopy addSample:v19 forKey:kTISKDeleteToDeleteMetric];

        if (self->_deletePostion < 0)
        {
          goto LABEL_12;
        }

        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        [timingCopy addSample:v13 forKey:kTISKDeleteToDeletePositionalMetric withPosition:{-[TISKDeleteKeyEvent _metricDeleteKeyPostion](self, "_metricDeleteKeyPostion")}];
        goto LABEL_11;
      }

      if (type == 8)
      {
        v15 = MEMORY[0x277CCABB0];
        [(TISKEvent *)self touchDownTimestamp];
        v17 = v16;
        [eventCopy touchUpTimestamp];
        v13 = [v15 numberWithDouble:v17 - v18];
        v14 = kTISKPathToDeleteMetric;
        goto LABEL_10;
      }
    }

    else
    {
      if (!type)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v14 = kTISKKeyToDeleteMetric;
        goto LABEL_10;
      }

      if (type == 2)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v14 = kTISKSpaceToDeleteMetric;
LABEL_10:
        [timingCopy addSample:v13 forKey:v14];
LABEL_11:
      }
    }
  }

LABEL_12:
}

- (void)reportToSession:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = TISKDeleteKeyEvent;
  [(TISKInputEvent *)&v11 reportToSession:sessionCopy];
  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfDeletesCounter];
  if (![(TISKInputEvent *)self ignoreTapData])
  {
    v5 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self touchDownErrorDistance];
    v6 = [v5 numberWithDouble:?];
    [sessionCopy addSample:v6 forKey:kTISKDeleteDownErrorDistance];

    v7 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self touchUpErrorDistance];
    v8 = [v7 numberWithDouble:?];
    [sessionCopy addSample:v8 forKey:kTISKDeleteUpErrorDistance];

    v9 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self downUpTimeDelta];
    v10 = [v9 numberWithDouble:?];
    [sessionCopy addSample:v10 forKey:kTISKDeleteTouchDownUpMetric];
  }
}

- (int64_t)_metricDeleteKeyPostion
{
  if (self->_deletePostion >= 4uLL)
  {
    return 4;
  }

  else
  {
    return self->_deletePostion;
  }
}

@end
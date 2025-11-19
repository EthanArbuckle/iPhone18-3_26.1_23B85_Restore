@interface TISKDeleteKeyEvent
- (id)description;
- (int64_t)_metricDeleteKeyPostion;
- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4;
- (void)reportToSession:(id)a3;
@end

@implementation TISKDeleteKeyEvent

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TISKInputEvent *)self input];
  if ([v3 isRapidDelete])
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

- (void)reportInterKeyTiming:(id)a3 previousEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v20.receiver = self;
    v20.super_class = TISKDeleteKeyEvent;
    [(TISKInputEvent *)&v20 reportInterKeyTiming:v6 previousEvent:v7];
    [(TISKEvent *)self touchDownTimestamp];
    v9 = v8;
    [v7 touchDownTimestamp];
    v11 = v9 - v10;
    v12 = [v7 type];
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        [v6 addSample:v19 forKey:kTISKDeleteToDeleteMetric];

        if (self->_deletePostion < 0)
        {
          goto LABEL_12;
        }

        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        [v6 addSample:v13 forKey:kTISKDeleteToDeletePositionalMetric withPosition:{-[TISKDeleteKeyEvent _metricDeleteKeyPostion](self, "_metricDeleteKeyPostion")}];
        goto LABEL_11;
      }

      if (v12 == 8)
      {
        v15 = MEMORY[0x277CCABB0];
        [(TISKEvent *)self touchDownTimestamp];
        v17 = v16;
        [v7 touchUpTimestamp];
        v13 = [v15 numberWithDouble:v17 - v18];
        v14 = kTISKPathToDeleteMetric;
        goto LABEL_10;
      }
    }

    else
    {
      if (!v12)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v14 = kTISKKeyToDeleteMetric;
        goto LABEL_10;
      }

      if (v12 == 2)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
        v14 = kTISKSpaceToDeleteMetric;
LABEL_10:
        [v6 addSample:v13 forKey:v14];
LABEL_11:
      }
    }
  }

LABEL_12:
}

- (void)reportToSession:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TISKDeleteKeyEvent;
  [(TISKInputEvent *)&v11 reportToSession:v4];
  [v4 addSample:&unk_28400BF10 forKey:kTISKNumberOfDeletesCounter];
  if (![(TISKInputEvent *)self ignoreTapData])
  {
    v5 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self touchDownErrorDistance];
    v6 = [v5 numberWithDouble:?];
    [v4 addSample:v6 forKey:kTISKDeleteDownErrorDistance];

    v7 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self touchUpErrorDistance];
    v8 = [v7 numberWithDouble:?];
    [v4 addSample:v8 forKey:kTISKDeleteUpErrorDistance];

    v9 = MEMORY[0x277CCABB0];
    [(TISKInputEvent *)self downUpTimeDelta];
    v10 = [v9 numberWithDouble:?];
    [v4 addSample:v10 forKey:kTISKDeleteTouchDownUpMetric];
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
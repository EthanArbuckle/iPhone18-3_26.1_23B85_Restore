@interface UITextMagnifierTimeWeightedPoint
- (BOOL)historyCovers:(double)covers;
- (BOOL)isPlacedCarefully;
- (CGPoint)diffFromLastPoint;
- (CGPoint)weightedPoint;
- (CGSize)displacementInInterval:(double)interval;
- (CGSize)displacementInInterval:(double)interval priorTo:(double)to;
- (float)distanceCoveredInInterval:(double)interval;
- (float)distanceCoveredInInterval:(double)interval priorTo:(double)to;
- (void)addPoint:(CGPoint)point;
- (void)clearHistory;
@end

@implementation UITextMagnifierTimeWeightedPoint

- (void)clearHistory
{
  p_time = &self->m_points[0].time;
  v3 = 16;
  v4 = *MEMORY[0x1E695EFF8];
  do
  {
    *(p_time - 1) = v4;
    *p_time = -1.0;
    p_time += 3;
    --v3;
  }

  while (v3);
}

- (void)addPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  Current = CFAbsoluteTimeGetCurrent();
  m_index = self->m_index;
  v8 = (self + 24 * m_index);
  v8[2] = x;
  v8[3] = y;
  v8[4] = Current;
  if (m_index <= 14)
  {
    v9 = m_index + 1;
  }

  else
  {
    v9 = 0;
  }

  self->m_index = v9;
}

- (CGPoint)weightedPoint
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  Current = CFAbsoluteTimeGetCurrent();
  v6 = self->m_index - 1;
  v7 = -16;
  v8 = v3;
  v9 = v4;
  while (1)
  {
    v10 = &self->m_points[v6 + 16 * (v6 >> 31)];
    time = v10->time;
    if (time == -1.0)
    {
      break;
    }

    x = v10->point.x;
    y = v10->point.y;
    if (v8 == v3 && v9 == v4)
    {
      v9 = v10->point.y;
      v8 = v10->point.x;
    }

    else if (Current - time > 0.15)
    {
      goto LABEL_14;
    }

    --v6;
    y = v9;
    x = v8;
    if (__CFADD__(v7++, 1))
    {
      goto LABEL_14;
    }
  }

  y = v9;
  x = v8;
LABEL_14:
  v16 = x;
  result.y = y;
  result.x = v16;
  return result;
}

- (BOOL)historyCovers:(double)covers
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = self->m_index - 1;
  v7 = 16;
  while (1)
  {
    v8 = &self->m_points[v6 + 16 * (v6 >> 31)];
    time = v8->time;
    if (time == -1.0)
    {
      return 0;
    }

    if (v8->point.x == *MEMORY[0x1E695EFF8] && v8->point.y == *(MEMORY[0x1E695EFF8] + 8))
    {
      return 0;
    }

    if (Current - time > covers)
    {
      break;
    }

    --v6;
    if (!--v7)
    {
      return 0;
    }
  }

  return 1;
}

- (float)distanceCoveredInInterval:(double)interval
{
  Current = CFAbsoluteTimeGetCurrent();

  [(UITextMagnifierTimeWeightedPoint *)self distanceCoveredInInterval:interval priorTo:Current];
  return result;
}

- (CGSize)displacementInInterval:(double)interval
{
  Current = CFAbsoluteTimeGetCurrent();

  [(UITextMagnifierTimeWeightedPoint *)self displacementInInterval:interval priorTo:Current];
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)displacementInInterval:(double)interval priorTo:(double)to
{
  v6 = 0;
  v7 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  v9 = self->m_index - 1;
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  v11 = *MEMORY[0x1E695EFF8];
  do
  {
    v12 = &self->m_points[v9 + 16 * (v9 >> 31)];
    time = v12->time;
    if (time == -1.0)
    {
      break;
    }

    x = v12->point.x;
    y = v12->point.y;
    v16 = y == *(MEMORY[0x1E695EFF8] + 8) && x == *MEMORY[0x1E695EFF8];
    v17 = to - time;
    if (v16 || v17 > interval)
    {
      break;
    }

    v19 = v7 + v11 - x;
    v20 = v8 + v10 - y;
    v21 = v6 == 0;
    if (v6)
    {
      v8 = v20;
    }

    ++v6;
    if (!v21)
    {
      v7 = v19;
    }

    --v9;
    v10 = v12->point.y;
    v11 = v12->point.x;
  }

  while (v6 != 16);
  result.height = v8;
  result.width = v7;
  return result;
}

- (float)distanceCoveredInInterval:(double)interval priorTo:(double)to
{
  v4 = 0;
  v5 = self->m_index - 1;
  v6 = 0.0;
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v8 = *MEMORY[0x1E695EFF8];
  do
  {
    v9 = &self->m_points[v5 + 16 * (v5 >> 31)];
    time = v9->time;
    if (time == -1.0)
    {
      break;
    }

    x = v9->point.x;
    y = v9->point.y;
    v13 = y == *(MEMORY[0x1E695EFF8] + 8) && x == *MEMORY[0x1E695EFF8];
    v14 = to - time;
    if (v13 || v14 > interval)
    {
      break;
    }

    if (v4)
    {
      v6 = sqrt((x - v8) * (x - v8) + (y - v7) * (y - v7)) + v6;
    }

    ++v4;
    --v5;
    v7 = v9->point.y;
    v8 = v9->point.x;
  }

  while (v4 != 16);
  return v6;
}

- (BOOL)isPlacedCarefully
{
  v3 = [(UITextMagnifierTimeWeightedPoint *)self historyCovers:0.2];
  [(UITextMagnifierTimeWeightedPoint *)self distanceCoveredInInterval:0.2];
  return v4 < 15.0 && v3;
}

- (CGPoint)diffFromLastPoint
{
  m_index = self->m_index;
  if (m_index >= 1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 15;
  }

  v4 = (self + 24 * v3 + 24 * m_index);
  v5 = v4[2];
  v6 = v4[3];
  [(UITextMagnifierTimeWeightedPoint *)self weightedPoint];
  v8 = v7 - v5;
  v10 = v9 - v6;
  result.y = v10;
  result.x = v8;
  return result;
}

@end
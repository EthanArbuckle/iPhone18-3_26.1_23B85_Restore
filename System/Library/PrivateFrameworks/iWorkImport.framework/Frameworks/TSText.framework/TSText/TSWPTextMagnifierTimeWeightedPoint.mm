@interface TSWPTextMagnifierTimeWeightedPoint
- (BOOL)historyCovers:(double)a3;
- (CGPoint)weightedPoint;
- (CGSize)displacementInInterval:(double)a3;
- (CGSize)displacementInInterval:(double)a3 priorTo:(double)a4;
- (double)distanceCoveredInInterval:(double)a3;
- (double)distanceCoveredInInterval:(double)a3 priorTo:(double)a4;
- (void)addPoint:(CGPoint)a3;
- (void)clearHistory;
@end

@implementation TSWPTextMagnifierTimeWeightedPoint

- (void)clearHistory
{
  p_time = &self->m_points[0].time;
  v3 = 16;
  v4 = *MEMORY[0x277CBF348];
  do
  {
    *(p_time - 1) = v4;
    *p_time = -1.0;
    p_time += 3;
    --v3;
  }

  while (v3);
}

- (void)addPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  Current = CFAbsoluteTimeGetCurrent();
  m_index = self->m_index;
  v7 = m_index - 1;
  v8 = self + 24 * m_index;
  v9 = 16;
  v10 = v3;
  v11 = v4;
  while (1)
  {
    v12 = &v8[384 * (v7 >> 63)];
    v13 = v12[1];
    if (v13 == -1.0)
    {
      break;
    }

    v15 = *(v12 - 1);
    v14 = *v12;
    if (v10 == v3 && v11 == v4)
    {
      v11 = *v12;
      v10 = *(v12 - 1);
    }

    else if (Current - v13 > 0.15)
    {
      goto LABEL_13;
    }

    --v7;
    v8 -= 24;
    v14 = v11;
    v15 = v10;
    if (!--v9)
    {
      goto LABEL_13;
    }
  }

  v14 = v11;
  v15 = v10;
LABEL_13:
  v17 = v15;
  result.y = v14;
  result.x = v17;
  return result;
}

- (BOOL)historyCovers:(double)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  m_index = self->m_index;
  v7 = m_index - 1;
  v8 = self + 24 * m_index;
  v9 = 16;
  while (1)
  {
    v10 = &v8[384 * (v7 >> 63)];
    v11 = v10[1];
    if (v11 == -1.0)
    {
      return 0;
    }

    if (*(v10 - 1) == *MEMORY[0x277CBF348] && *v10 == *(MEMORY[0x277CBF348] + 8))
    {
      return 0;
    }

    if (Current - v11 > a3)
    {
      break;
    }

    --v7;
    v8 -= 24;
    if (!--v9)
    {
      return 0;
    }
  }

  return 1;
}

- (double)distanceCoveredInInterval:(double)a3
{
  CFAbsoluteTimeGetCurrent();

  MEMORY[0x2821F9670](self, sel_distanceCoveredInInterval_priorTo_, v4);
  return result;
}

- (CGSize)displacementInInterval:(double)a3
{
  CFAbsoluteTimeGetCurrent();

  MEMORY[0x2821F9670](self, sel_displacementInInterval_priorTo_, v4);
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)displacementInInterval:(double)a3 priorTo:(double)a4
{
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  m_index = self->m_index;
  v9 = m_index - 1;
  v10 = self + 24 * m_index;
  v11 = 16;
  v12 = *(MEMORY[0x277CBF348] + 8);
  v13 = *MEMORY[0x277CBF348];
  do
  {
    v14 = &v10[384 * (v9 >> 63)];
    v15 = v14[1];
    if (v15 == -1.0)
    {
      break;
    }

    v16 = *(v14 - 1);
    v17 = *v14 == *(MEMORY[0x277CBF348] + 8) && v16 == *MEMORY[0x277CBF348];
    v18 = a4 - v15;
    if (v17 || v18 > a3)
    {
      break;
    }

    v20 = v6 + v13 - v16;
    v21 = v7 + v12 - *v14;
    if (v11 != 16)
    {
      v7 = v21;
    }

    --v9;
    if (v11 != 16)
    {
      v6 = v20;
    }

    v10 -= 24;
    v12 = *v14;
    v13 = *(v14 - 1);
    --v11;
  }

  while (v11);
  result.height = v7;
  result.width = v6;
  return result;
}

- (double)distanceCoveredInInterval:(double)a3 priorTo:(double)a4
{
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  m_index = self->m_index;
  v9 = m_index - 1;
  v10 = self + 24 * m_index;
  v11 = 0.0;
  v12 = 16;
  do
  {
    v13 = &v10[384 * (v9 >> 63)];
    v14 = v13[1];
    if (v14 == -1.0)
    {
      break;
    }

    v15 = *v13 == v7 && *(v13 - 1) == v6;
    v16 = a4 - v14;
    if (v15 || v16 > a3)
    {
      break;
    }

    if (v12 != 16)
    {
      TSUDistance();
      v11 = v11 + v18;
    }

    --v9;
    v10 -= 24;
    --v12;
  }

  while (v12);
  return v11;
}

@end
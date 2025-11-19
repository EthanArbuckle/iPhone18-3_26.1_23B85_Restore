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
  v4 = MEMORY[0x277CBF348];
  do
  {
    *(p_time - 1) = *v4;
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
  v3 = MEMORY[0x277CBF348];
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  Current = CFAbsoluteTimeGetCurrent();
  m_index = self->m_index;
  v8 = m_index - 1;
  v9 = self + 24 * m_index;
  v10 = 16;
  while (1)
  {
    v11 = &v9[384 * (v8 >> 63)];
    v12 = v11[1];
    if (v12 == -1.0)
    {
      break;
    }

    v14 = *(v11 - 1);
    v13 = *v11;
    if (v4 == *v3 && v5 == v3[1])
    {
      v4 = *(v11 - 1);
      v5 = *v11;
    }

    else if (Current - v12 > 0.15)
    {
      goto LABEL_13;
    }

    --v8;
    v9 -= 24;
    v14 = v4;
    v13 = v5;
    if (!--v10)
    {
      goto LABEL_13;
    }
  }

  v14 = v4;
  v13 = v5;
LABEL_13:
  v16 = v14;
  result.y = v13;
  result.x = v16;
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
  Current = CFAbsoluteTimeGetCurrent();

  [(TSWPTextMagnifierTimeWeightedPoint *)self distanceCoveredInInterval:a3 priorTo:Current];
  return result;
}

- (CGSize)displacementInInterval:(double)a3
{
  Current = CFAbsoluteTimeGetCurrent();

  [(TSWPTextMagnifierTimeWeightedPoint *)self displacementInInterval:a3 priorTo:Current];
  result.height = v7;
  result.width = v6;
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
  v12 = *MEMORY[0x277CBF348];
  v13 = *(MEMORY[0x277CBF348] + 8);
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

    v20 = v6 + v12 - v16;
    v21 = v7 + v13 - *v14;
    if (v11 != 16)
    {
      v6 = v20;
    }

    --v9;
    if (v11 != 16)
    {
      v7 = v21;
    }

    v10 -= 24;
    v12 = *(v14 - 1);
    v13 = *v14;
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
  v13 = *MEMORY[0x277CBF348];
  v14 = v7;
  do
  {
    v15 = &v10[384 * (v9 >> 63)];
    v16 = v15[1];
    if (v16 == -1.0)
    {
      break;
    }

    v17 = *(v15 - 1);
    v18 = *v15;
    v19 = *v15 == v7 && v17 == v6;
    v20 = a4 - v16;
    if (v19 || v20 > a3)
    {
      break;
    }

    if (v12 != 16)
    {
      v11 = v11 + TSDDistance(v13, v14, *(v15 - 1), *v15);
    }

    --v9;
    v10 -= 24;
    v13 = v17;
    v14 = v18;
    --v12;
  }

  while (v12);
  return v11;
}

@end
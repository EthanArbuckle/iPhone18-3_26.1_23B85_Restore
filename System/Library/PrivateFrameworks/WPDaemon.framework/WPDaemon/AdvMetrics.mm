@interface AdvMetrics
- (unint64_t)droppedAdvCountforType:(unsigned __int8)a3 by:(unsigned __int8)a4;
- (unint64_t)totalAdvCountforType:(unsigned __int8)a3;
- (unint64_t)totalDroppedAdvCountforType:(unsigned __int8)a3;
- (void)incrementDroppedAdvCountforType:(unsigned __int8)a3 by:(unsigned __int8)a4;
- (void)incrementTotalAdvCountforType:(unsigned __int8)a3;
- (void)incrementTotalDroppedAdvCountforType:(unsigned __int8)a3;
- (void)resetAllCounters;
@end

@implementation AdvMetrics

- (void)incrementTotalAdvCountforType:(unsigned __int8)a3
{
  if ((a3 - 1) <= 0x1A)
  {
    ++self->totalAdvCount[a3];
  }
}

- (unint64_t)totalAdvCountforType:(unsigned __int8)a3
{
  if ((a3 - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return self->totalAdvCount[a3];
  }
}

- (void)incrementTotalDroppedAdvCountforType:(unsigned __int8)a3
{
  if ((a3 - 1) <= 0x1A)
  {
    ++self->totalDroppedAdvCount[a3];
  }
}

- (unint64_t)totalDroppedAdvCountforType:(unsigned __int8)a3
{
  if ((a3 - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return self->totalDroppedAdvCount[a3];
  }
}

- (void)incrementDroppedAdvCountforType:(unsigned __int8)a3 by:(unsigned __int8)a4
{
  if ((a3 - 1) <= 0x1A && (a4 - 1) <= 0x1A)
  {
    v5 = self + 224 * a3 + 8 * a4;
    ++*(v5 + 57);
  }
}

- (unint64_t)droppedAdvCountforType:(unsigned __int8)a3 by:(unsigned __int8)a4
{
  v4 = a4 - 1;
  if ((a3 - 1) <= 0x1A)
  {
    v5 = v4 >= 0x1A;
    v6 = v4 == 26;
  }

  else
  {
    v5 = 1;
    v6 = 0;
  }

  if (!v6 && v5)
  {
    return 0;
  }

  else
  {
    return self->droppedAdvCount[a3][a4];
  }
}

- (void)resetAllCounters
{
  *self->totalDroppedAdvCount = 0u;
  *&self->totalAdvCount[24] = 0u;
  *&self->totalAdvCount[26] = 0u;
  *&self->totalAdvCount[20] = 0u;
  *&self->totalAdvCount[22] = 0u;
  *&self->totalAdvCount[16] = 0u;
  *&self->totalAdvCount[18] = 0u;
  *&self->totalAdvCount[12] = 0u;
  *&self->totalAdvCount[14] = 0u;
  *&self->totalAdvCount[8] = 0u;
  *&self->totalAdvCount[10] = 0u;
  *&self->totalAdvCount[4] = 0u;
  *&self->totalAdvCount[6] = 0u;
  *self->totalAdvCount = 0u;
  *&self->totalAdvCount[2] = 0u;
  *&self->totalDroppedAdvCount[2] = 0u;
  *&self->totalDroppedAdvCount[4] = 0u;
  *&self->totalDroppedAdvCount[6] = 0u;
  *&self->totalDroppedAdvCount[8] = 0u;
  *&self->totalDroppedAdvCount[10] = 0u;
  *&self->totalDroppedAdvCount[12] = 0u;
  *&self->totalDroppedAdvCount[14] = 0u;
  *&self->totalDroppedAdvCount[16] = 0u;
  *&self->totalDroppedAdvCount[18] = 0u;
  *&self->totalDroppedAdvCount[20] = 0u;
  *&self->totalDroppedAdvCount[22] = 0u;
  *&self->totalDroppedAdvCount[24] = 0u;
  *&self->totalDroppedAdvCount[26] = 0u;
  bzero(self->droppedAdvCount, 0x1880uLL);
}

@end
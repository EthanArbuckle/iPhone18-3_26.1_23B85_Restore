@interface AdvMetrics
- (unint64_t)droppedAdvCountforType:(unsigned __int8)type by:(unsigned __int8)by;
- (unint64_t)totalAdvCountforType:(unsigned __int8)type;
- (unint64_t)totalDroppedAdvCountforType:(unsigned __int8)type;
- (void)incrementDroppedAdvCountforType:(unsigned __int8)type by:(unsigned __int8)by;
- (void)incrementTotalAdvCountforType:(unsigned __int8)type;
- (void)incrementTotalDroppedAdvCountforType:(unsigned __int8)type;
- (void)resetAllCounters;
@end

@implementation AdvMetrics

- (void)incrementTotalAdvCountforType:(unsigned __int8)type
{
  if ((type - 1) <= 0x1A)
  {
    ++self->totalAdvCount[type];
  }
}

- (unint64_t)totalAdvCountforType:(unsigned __int8)type
{
  if ((type - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return self->totalAdvCount[type];
  }
}

- (void)incrementTotalDroppedAdvCountforType:(unsigned __int8)type
{
  if ((type - 1) <= 0x1A)
  {
    ++self->totalDroppedAdvCount[type];
  }
}

- (unint64_t)totalDroppedAdvCountforType:(unsigned __int8)type
{
  if ((type - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return self->totalDroppedAdvCount[type];
  }
}

- (void)incrementDroppedAdvCountforType:(unsigned __int8)type by:(unsigned __int8)by
{
  if ((type - 1) <= 0x1A && (by - 1) <= 0x1A)
  {
    v5 = self + 224 * type + 8 * by;
    ++*(v5 + 57);
  }
}

- (unint64_t)droppedAdvCountforType:(unsigned __int8)type by:(unsigned __int8)by
{
  v4 = by - 1;
  if ((type - 1) <= 0x1A)
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
    return self->droppedAdvCount[type][by];
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
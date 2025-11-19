@interface PAWorkInProgressAccessInterval
- (PAWorkInProgressAccessInterval)init;
- (id)asSealedRecord;
@end

@implementation PAWorkInProgressAccessInterval

- (PAWorkInProgressAccessInterval)init
{
  v6.receiver = self;
  v6.super_class = PAWorkInProgressAccessInterval;
  v2 = [(PAWorkInProgressAccessInterval *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_startTime = xmmword_1DF27EA80;
    v4 = v2;
  }

  return v3;
}

- (id)asSealedRecord
{
  v2 = fabs(self->_endTime);
  if (fabs(self->_startTime) == INFINITY)
  {
    if (v2 == INFINITY)
    {
      v3 = 0;
    }

    else
    {
      v3 = [[PAPartialAccessRecord alloc] initWithAccess:self->_access endTime:self->_endTime];
    }
  }

  else if (v2 == INFINITY)
  {
    v3 = [[PAOngoingAccessRecord alloc] initWithAccess:self->_access startTime:self->_startTime];
  }

  else
  {
    v3 = [[PACompleteAccessRecord alloc] initWithAccess:self->_access startTime:self->_startTime endTime:self->_endTime];
  }

  return v3;
}

@end
@interface SALostPerfEventV7
- (SALostPerfEventV7)initWithStartTime:(id)time reason:(unsigned int)reason;
- (id)domain;
- (id)lostPerf;
- (id)mode;
- (id)source;
- (id)type;
@end

@implementation SALostPerfEventV7

- (SALostPerfEventV7)initWithStartTime:(id)time reason:(unsigned int)reason
{
  v9.receiver = self;
  v9.super_class = SALostPerfEventV7;
  v5 = [(SALostPerfEvent *)&v9 initWithStartTime:time];
  v6 = v5;
  if (v5)
  {
    v5->_reason = reason;
    v7 = v5;
  }

  return v6;
}

- (id)domain
{
  v3 = self->_reason >> 28;
  if (v3)
  {
    v6 = &off_1E86F8100;
    v7 = 6;
    v4 = @"UNKNOWN";
    while (v3 != *(v6 - 2))
    {
      v6 += 2;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v4 = *v6;
LABEL_10:
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)type
{
  v3 = HIBYTE(self->_reason) & 0xF;
  if ((self->_reason & 0xF000000) != 0)
  {
    v4 = &off_1E86F8160;
    v5 = 7;
    v6 = @"UNKNOWN";
    while (v3 != *(v4 - 2))
    {
      v4 += 2;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

    v6 = *v4;
LABEL_10:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mode
{
  v3 = (self->_reason >> 8) & 0xF;
  if (v3)
  {
    v4 = &off_1E86F82F0;
    v5 = 3;
    v6 = @"UNKNOWN";
    while (v3 != *(v4 - 2))
    {
      v4 += 2;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

    v6 = *v4;
LABEL_10:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)source
{
  v3 = (self->_reason >> 18) & 0x3F;
  if (v3)
  {
    v4 = &off_1E86F81D0;
    v5 = 18;
    v6 = @"UNKNOWN";
    while (v3 != *(v4 - 2))
    {
      v4 += 2;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

    v6 = *v4;
LABEL_10:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)lostPerf
{
  reason_low = LOBYTE(self->_reason);
  if (LOBYTE(self->_reason))
  {
    v4 = &off_1E86F8320;
    v5 = 32;
    v6 = @"UNKNOWN";
    while (reason_low != *(v4 - 2))
    {
      v4 += 2;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }

    v6 = *v4;
LABEL_10:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
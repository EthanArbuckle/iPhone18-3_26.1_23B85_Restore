@interface SCRCGestureEvent
- (CGPoint)averageLocation;
- (CGPoint)balancedLocation;
- (CGPoint)magneticLocation;
- (CGRect)fingerFrame;
- (SCRCGestureEvent)initWithDeviceIdentifier:(unint64_t)a3;
- (id)description;
- (id)fingerWithIdentifier:(unint64_t)a3;
- (id)fingerWithoutIdentifier:(unint64_t)a3;
- (id)fingers;
- (void)addFingerWithIdentifier:(unint64_t)a3 location:(CGPoint)a4 pressure:(double)a5;
- (void)addStylusWithIdentifier:(unint64_t)a3 location:(CGPoint)a4 pressure:(double)a5 altitude:(double)a6 azimuth:(double)a7;
- (void)dealloc;
- (void)removeFingerWithIdentifier:(unint64_t)a3;
@end

@implementation SCRCGestureEvent

- (SCRCGestureEvent)initWithDeviceIdentifier:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = SCRCGestureEvent;
  v4 = [(SCRCGestureEvent *)&v6 init];
  if (v4)
  {
    v4->_time = CFAbsoluteTimeGetCurrent();
    v4->_deviceIdentifier = a3;
  }

  return v4;
}

- (void)dealloc
{
  if (self->_fingerCount)
  {
    v3 = 0;
    finger = self->_finger;
    do
    {
      v5 = finger[v3];
      finger[v3] = 0;

      ++v3;
    }

    while (v3 < self->_fingerCount);
  }

  v6.receiver = self;
  v6.super_class = SCRCGestureEvent;
  [(SCRCGestureEvent *)&v6 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  [(SCRCGestureEvent *)self time];
  v6 = [v3 stringWithFormat:@"[%@:%p] time: %lf, device: %lu, %lu fingers", v4, self, v5, self->_deviceIdentifier, self->_fingerCount];
  if (self->_fingerCount)
  {
    v7 = 0;
    do
    {
      [v6 appendFormat:@"\n\t%@", self->_finger[v7++]];
    }

    while (v7 < self->_fingerCount);
  }

  return v6;
}

- (void)addFingerWithIdentifier:(unint64_t)a3 location:(CGPoint)a4 pressure:(double)a5
{
  if (self->_fingerCount <= 7)
  {
    self->_averageLocation = vaddq_f64(a4, self->_averageLocation);
    v6 = [[SCRCGestureFinger alloc] initWithIdentifier:a3 location:a4.x pressure:a4.y, a5];
    v7 = &self->super.isa + self->_fingerCount;
    v8 = v7[2];
    v7[2] = v6;

    ++self->_fingerCount;
  }
}

- (void)addStylusWithIdentifier:(unint64_t)a3 location:(CGPoint)a4 pressure:(double)a5 altitude:(double)a6 azimuth:(double)a7
{
  if (self->_fingerCount <= 7)
  {
    self->_averageLocation = vaddq_f64(a4, self->_averageLocation);
    v8 = [[SCRCGestureStylus alloc] initWithIdentifier:a3 location:a4.x pressure:a4.y altitude:a5 azimuth:a6, a7];
    v9 = &self->super.isa + self->_fingerCount;
    v10 = v9[2];
    v9[2] = v8;

    ++self->_fingerCount;
  }
}

- (void)removeFingerWithIdentifier:(unint64_t)a3
{
  fingerCount = self->_fingerCount;
  self->_averageLocation = *MEMORY[0x277CBF348];
  if (fingerCount)
  {
    v6 = 0;
    v7 = 0;
    finger = self->_finger;
    do
    {
      v9 = finger[v6];
      v10 = v9;
      if (*&v10->f64[1] == a3)
      {
        --fingerCount;
        v11 = finger[v6];
        finger[v6] = 0;
      }

      else
      {
        objc_storeStrong(&finger[v7], v9);
        self->_averageLocation = vaddq_f64(v10[1], self->_averageLocation);
        ++v7;
      }

      ++v6;
      v12 = self->_fingerCount;
    }

    while (v6 < v12);
    while (v7 < v12)
    {
      v13 = finger[v7];
      finger[v7] = 0;

      ++v7;
      v12 = self->_fingerCount;
    }
  }

  self->_fingerCount = fingerCount;
}

- (id)fingerWithIdentifier:(unint64_t)a3
{
  fingerCount = self->_fingerCount;
  if (fingerCount)
  {
    finger = self->_finger;
    while ((*finger)->_identifier != a3)
    {
      ++finger;
      if (!--fingerCount)
      {
        v6 = 0;
        goto LABEL_10;
      }
    }

    v6 = *finger;
LABEL_10:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fingerWithoutIdentifier:(unint64_t)a3
{
  fingerCount = self->_fingerCount;
  if (fingerCount)
  {
    finger = self->_finger;
    while ((*finger)->_identifier == a3)
    {
      ++finger;
      if (!--fingerCount)
      {
        v6 = 0;
        goto LABEL_10;
      }
    }

    v6 = *finger;
LABEL_10:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fingers
{
  v3 = [MEMORY[0x277CBEB18] array];
  if (self->_fingerCount)
  {
    v4 = 0;
    do
    {
      [v3 addObject:self->_finger[v4++]];
    }

    while (self->_fingerCount > v4);
  }

  v5 = [v3 copy];

  return v5;
}

- (CGRect)fingerFrame
{
  fingerCount = self->_fingerCount;
  if (fingerCount)
  {
    x = self->_finger[0]->_location.x;
    y = self->_finger[0]->_location.y;
    v6 = 0.0;
    if (fingerCount == 1)
    {
      v7 = 0.0;
    }

    else
    {
      v8 = &self->_finger[1];
      v9 = 1;
      v7 = 0.0;
      do
      {
        v10 = *v8++;
        v12.origin.x = *(v10 + 16);
        v12.origin.y = *(v10 + 24);
        v12.size.width = 0.0;
        v12.size.height = 0.0;
        *&x = CGRectUnion(*&x, v12);
        ++v9;
      }

      while (v9 < self->_fingerCount);
    }
  }

  else
  {
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v6;
  result.size.width = v7;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)averageLocation
{
  fingerCount = self->_fingerCount;
  if (fingerCount)
  {
    v3 = vdivq_f64(self->_averageLocation, vdupq_lane_s64(COERCE__INT64(fingerCount), 0));
  }

  else
  {
    v3 = *MEMORY[0x277CBF348];
  }

  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGPoint)balancedLocation
{
  [(SCRCGestureEvent *)self fingerFrame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidY = CGRectGetMidY(v11);
  v8 = MidX;
  result.y = MidY;
  result.x = v8;
  return result;
}

- (CGPoint)magneticLocation
{
  [(SCRCGestureEvent *)self fingerFrame];
  v4 = v3 + v3 / (1.0 - v2) * v2;
  v7 = v6 + v6 / (1.0 - v5) * v5;
  result.y = v7;
  result.x = v4;
  return result;
}

@end
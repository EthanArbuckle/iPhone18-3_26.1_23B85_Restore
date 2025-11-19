@interface GQDRGradient
- (CGPoint)end;
- (CGPoint)start;
- (int)readAttributesFromReader:(_xmlTextReader *)a3;
- (void)dealloc;
@end

@implementation GQDRGradient

- (void)dealloc
{
  mStops = self->mStops;
  if (mStops)
  {
    CFRelease(mStops);
  }

  v4.receiver = self;
  v4.super_class = GQDRGradient;
  [(GQDRGradient *)&v4 dealloc];
}

- (CGPoint)start
{
  x = self->mStart.x;
  y = self->mStart.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)end
{
  x = self->mEnd.x;
  y = self->mEnd.y;
  result.y = y;
  result.x = x;
  return result;
}

- (int)readAttributesFromReader:(_xmlTextReader *)a3
{
  sub_42888(a3, qword_A35E8, "opacity", &self->mOpacity);
  if (!v5)
  {
    return 3;
  }

  v6 = sub_42FBC(a3, qword_A35E8, "type", &dword_A4088, &self->mType);
  mType = self->mType;
  if (mType || !v6)
  {
    if (((mType != 0) & v6) != 1)
    {
      return 3;
    }
  }

  else
  {
    sub_42888(a3, qword_A35E8, "angle", &self->mAngle);
    if ((v8 & 1) == 0)
    {
      return 3;
    }
  }

  return 1;
}

@end
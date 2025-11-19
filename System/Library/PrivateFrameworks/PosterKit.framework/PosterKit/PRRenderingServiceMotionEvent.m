@interface PRRenderingServiceMotionEvent
- (BOOL)isEqual:(id)a3;
- (PRRenderingServiceMotionEvent)initWithCoder:(id)a3;
- (__n128)rotation;
- (__n128)setRotation:(uint64_t)a3;
@end

@implementation PRRenderingServiceMotionEvent

- (PRRenderingServiceMotionEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRRenderingServiceMotionEvent;
  v5 = [(PRRenderingServiceMotionEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeBytesForKey:@"rotation" returnedLength:0];
    v7 = v6[1];
    v5[1] = *v6;
    v5[2] = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (v5)
      {
        [(PRRenderingServiceMotionEvent *)v5 rotation];
      }

      else
      {
        v13 = 0u;
        v14 = 0u;
      }

      [(PRRenderingServiceMotionEvent *)self rotation];
      v8 = vandq_s8(vceqq_f64(v13, v11), vceqq_f64(v14, v12));
      if ((vandq_s8(v8, vdupq_laneq_s64(v8, 1)).u64[0] & 0x8000000000000000) != 0)
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        v9 = vandq_s8(vceqq_f64(v13, vnegq_f64(v11)), vceqq_f64(v14, vnegq_f64(v12)));
        v7 = vandq_s8(v9, vdupq_laneq_s64(v9, 1)).u64[0] >> 63;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (__n128)rotation
{
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

- (__n128)setRotation:(uint64_t)a3
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a1 + 16) = *a3;
  *(a1 + 32) = v4;
  return result;
}

@end
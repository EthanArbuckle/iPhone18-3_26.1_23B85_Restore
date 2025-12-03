@interface ASCacheEntry
- (BOOL)PJ7tY2vmxQ3CBhNO;
- (id)nC4QvxwoXaT2I88i;
@end

@implementation ASCacheEntry

- (id)nC4QvxwoXaT2I88i
{
  dfVal = [(ASCacheEntry *)self dfVal];
  v4 = [dfVal dataUsingEncoding:4];

  v5 = [v4 length];
  v6 = malloc_type_malloc(v5 + 36, 0xD6884B3DuLL);
  v7 = vdupq_n_s64([(ASCacheEntry *)self counter]);
  *v6 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v7, xmmword_1005C1310), vshlq_u64(v7, xmmword_1005C1320)), vuzp1q_s32(vshlq_u64(v7, xmmword_1005C1340), vshlq_u64(v7, xmmword_1005C1330))));
  v8 = vdupq_n_s64([(ASCacheEntry *)self df_ttl]);
  v6[1] = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v8, xmmword_1005C1310), vshlq_u64(v8, xmmword_1005C1320)), vuzp1q_s32(vshlq_u64(v8, xmmword_1005C1340), vshlq_u64(v8, xmmword_1005C1330))));
  memcpy(&v6[2], [v4 bytes], objc_msgSend(v4, "length"));
  v9 = [v4 length];
  presentTime = [(ASCacheEntry *)self presentTime];
  [presentTime timeIntervalSinceReferenceDate];
  v12 = vdupq_n_s64(v11);
  *(v6 + v9 + 16) = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v12, xmmword_1005C1310), vshlq_u64(v12, xmmword_1005C1320)), vuzp1q_s32(vshlq_u64(v12, xmmword_1005C1340), vshlq_u64(v12, xmmword_1005C1330))));

  v13 = vdupq_n_s64([(ASCacheEntry *)self queryKey]);
  *(v6 + v9 + 24) = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v13, xmmword_1005C1310), vshlq_u64(v13, xmmword_1005C1320)), vuzp1q_s32(vshlq_u64(v13, xmmword_1005C1340), vshlq_u64(v13, xmmword_1005C1330))));
  v14 = vdupq_n_s64([(ASCacheEntry *)self profID]);
  v15 = vshlq_u64(v14, xmmword_1005C1310);
  *v14.i8 = vmovn_s64(vshlq_u64(v14, xmmword_1005C1320));
  *v15.i8 = vmovn_s64(v15);
  v15.i16[1] = v15.i16[2];
  v15.i16[2] = v14.i16[0];
  v15.i16[3] = v14.i16[2];
  *(v6[4].i32 + v9) = vmovn_s16(v15).u32[0];
  if (v9 == v5)
  {
    sub_1002C9B10();
    free(v6);
  }

  else
  {
    free(v6);
    v19[0] = 0;
    v19[1] = 0;
    v16 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100593320(v16);
    }
  }

  v17 = [[NSUUID alloc] initWithUUIDBytes:v19];

  return v17;
}

- (BOOL)PJ7tY2vmxQ3CBhNO
{
  nC4QvxwoXaT2I88i = [(ASCacheEntry *)self nC4QvxwoXaT2I88i];
  macVal = [(ASCacheEntry *)self macVal];
  v5 = [macVal isEqual:nC4QvxwoXaT2I88i];

  if (v5)
  {
    presentTime = [(ASCacheEntry *)self presentTime];
    v7 = [presentTime dateByAddingTimeInterval:{-[ASCacheEntry df_ttl](self, "df_ttl") / 1000.0}];

    [v7 timeIntervalSinceNow];
    v9 = v8 >= 0.0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
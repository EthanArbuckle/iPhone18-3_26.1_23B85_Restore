@interface ASClass101288420
- (BOOL)PJ7tY2vmxQ3CBhNO;
- (id)nC4QvxwoXaT2I88i;
@end

@implementation ASClass101288420

- (id)nC4QvxwoXaT2I88i
{
  v3 = [(ASClass101288420 *)self dfVal];
  v4 = [v3 dataUsingEncoding:4];

  v5 = [v4 length];
  v6 = malloc_type_malloc(v5 + 32, 0x72494357uLL);
  v7 = vdupq_n_s64([(ASClass101288420 *)self version]);
  v8 = vshlq_u64(v7, xmmword_1005C1310);
  *v7.i8 = vmovn_s64(vshlq_u64(v7, xmmword_1005C1320));
  *v8.i8 = vmovn_s64(v8);
  v8.i16[1] = v8.i16[2];
  v8.i16[2] = v7.i16[0];
  v8.i16[3] = v7.i16[2];
  *v6 = vmovn_s16(v8).u32[0];
  v9 = vdupq_n_s64([(ASClass101288420 *)self dfMaxAge]);
  *(v6 + 4) = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v9, xmmword_1005C1310), vshlq_u64(v9, xmmword_1005C1320)), vuzp1q_s32(vshlq_u64(v9, xmmword_1005C1340), vshlq_u64(v9, xmmword_1005C1330))));
  memcpy(v6 + 12, [v4 bytes], objc_msgSend(v4, "length"));
  v10 = [v4 length];
  v11 = [(ASClass101288420 *)self presentTime];
  [v11 timeIntervalSinceReferenceDate];
  v13 = vdupq_n_s64(v12);
  *&v6[v10 + 12] = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v13, xmmword_1005C1310), vshlq_u64(v13, xmmword_1005C1320)), vuzp1q_s32(vshlq_u64(v13, xmmword_1005C1340), vshlq_u64(v13, xmmword_1005C1330))));

  v14 = vdupq_n_s64([(ASClass101288420 *)self queryKey]);
  *&v6[v10 + 20] = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v14, xmmword_1005C1310), vshlq_u64(v14, xmmword_1005C1320)), vuzp1q_s32(vshlq_u64(v14, xmmword_1005C1340), vshlq_u64(v14, xmmword_1005C1330))));
  v15 = vdupq_n_s64([(ASClass101288420 *)self profID]);
  v16 = vshlq_u64(v15, xmmword_1005C1310);
  *v15.i8 = vmovn_s64(vshlq_u64(v15, xmmword_1005C1320));
  *v16.i8 = vmovn_s64(v16);
  v16.i16[1] = v16.i16[2];
  v16.i16[2] = v15.i16[0];
  v16.i16[3] = v15.i16[2];
  *&v6[v10 + 28] = vmovn_s16(v16).u32[0];
  if (v10 == v5)
  {
    sub_1002C9B10();
    free(v6);
  }

  else
  {
    free(v6);
    v20[0] = 0;
    v20[1] = 0;
    v17 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100593320(v17);
    }
  }

  v18 = [[NSUUID alloc] initWithUUIDBytes:v20];

  return v18;
}

- (BOOL)PJ7tY2vmxQ3CBhNO
{
  v3 = [(ASClass101288420 *)self nC4QvxwoXaT2I88i];
  v4 = [(ASClass101288420 *)self macVal];
  v5 = [v4 isEqual:v3];

  if (v5)
  {
    v6 = [(ASClass101288420 *)self presentTime];
    v7 = [v6 dateByAddingTimeInterval:{-[ASClass101288420 dfMaxAge](self, "dfMaxAge") / 1000.0}];

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
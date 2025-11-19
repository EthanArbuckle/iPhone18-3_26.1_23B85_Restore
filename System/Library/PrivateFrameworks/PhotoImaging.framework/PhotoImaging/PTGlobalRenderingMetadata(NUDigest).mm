@interface PTGlobalRenderingMetadata(NUDigest)
- (BOOL)isEqualToRenderingMetadata:()NUDigest;
- (uint64_t)hash;
- (uint64_t)isEqual:()NUDigest;
- (void)nu_updateDigest:()NUDigest;
@end

@implementation PTGlobalRenderingMetadata(NUDigest)

- (BOOL)isEqualToRenderingMetadata:()NUDigest
{
  v4 = a3;
  v5 = [v4 majorVersion];
  if (v5 == [a1 majorVersion] && (v6 = objc_msgSend(v4, "minorVersion"), v6 == objc_msgSend(a1, "minorVersion")))
  {
    v7 = [v4 renderingVersion];
    v8 = v7 == [a1 renderingVersion];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)isEqual:()NUDigest
{
  v4 = a3;
  if (v4 == a1)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 isEqualToRenderingMetadata:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (uint64_t)hash
{
  v2 = 0xAA676A18E7 * [a1 majorVersion];
  v3 = 0xA0538F1583 * [a1 minorVersion];
  return v3 ^ v2 ^ (0x641F3AC4E7 * [a1 renderingVersion]);
}

- (void)nu_updateDigest:()NUDigest
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5[0] = [a1 majorVersion];
  v5[1] = [a1 minorVersion];
  v5[2] = [a1 renderingVersion];
  [v4 addBytes:v5 length:12];
}

@end
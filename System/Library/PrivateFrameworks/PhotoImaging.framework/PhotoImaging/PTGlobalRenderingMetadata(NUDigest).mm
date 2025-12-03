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
  majorVersion = [v4 majorVersion];
  if (majorVersion == [self majorVersion] && (v6 = objc_msgSend(v4, "minorVersion"), v6 == objc_msgSend(self, "minorVersion")))
  {
    renderingVersion = [v4 renderingVersion];
    v8 = renderingVersion == [self renderingVersion];
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
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [self isEqualToRenderingMetadata:v4];
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
  v2 = 0xAA676A18E7 * [self majorVersion];
  v3 = 0xA0538F1583 * [self minorVersion];
  return v3 ^ v2 ^ (0x641F3AC4E7 * [self renderingVersion]);
}

- (void)nu_updateDigest:()NUDigest
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5[0] = [self majorVersion];
  v5[1] = [self minorVersion];
  v5[2] = [self renderingVersion];
  [v4 addBytes:v5 length:12];
}

@end
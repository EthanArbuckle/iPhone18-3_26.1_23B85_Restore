@interface NSCoder(OZAdditions)
- (__n128)oz_decodeMatrixFloat3x3ForKey:()OZAdditions;
- (__n128)oz_decodeMatrixFloat4x4ForKey:()OZAdditions;
- (double)oz_decodeCGSizeForKey:()OZAdditions;
- (double)oz_decodeDouble2ForKey:()OZAdditions;
- (double)oz_decodeFloat2ForKey:()OZAdditions;
- (double)oz_decodeFloat3ForKey:()OZAdditions;
- (uint64_t)oz_encodeCGSize:()OZAdditions forKey:;
- (uint64_t)oz_encodeDouble2:()OZAdditions forKey:;
- (uint64_t)oz_encodeDouble3:()OZAdditions forKey:;
- (uint64_t)oz_encodeFloat2:()OZAdditions forKey:;
- (uint64_t)oz_encodeFloat3:()OZAdditions forKey:;
- (uint64_t)oz_encodeMatrixFloat3x3:()OZAdditions forKey:;
- (uint64_t)oz_encodeMatrixFloat4x4:()OZAdditions forKey:;
- (void)oz_decodeDouble3ForKey:()OZAdditions;
@end

@implementation NSCoder(OZAdditions)

- (uint64_t)oz_encodeFloat2:()OZAdditions forKey:
{
  v5 = [MEMORY[0x277CCAE60] oz_valueWithSIMDFloat2:?];

  return [a1 encodeObject:v5 forKey:a3];
}

- (double)oz_decodeFloat2ForKey:()OZAdditions
{
  v3 = [a1 decodeObjectOfClass:objc_opt_class() forKey:a3];
  if (!v3)
  {
    return 0.0;
  }

  [v3 oz_SIMDFloat2Value];
  return result;
}

- (uint64_t)oz_encodeDouble2:()OZAdditions forKey:
{
  v5 = [MEMORY[0x277CCAE60] oz_valueWithSIMDDouble2:?];

  return [a1 encodeObject:v5 forKey:a3];
}

- (double)oz_decodeDouble2ForKey:()OZAdditions
{
  v3 = [a1 decodeObjectOfClass:objc_opt_class() forKey:a3];
  if (!v3)
  {
    return 0.0;
  }

  [v3 oz_SIMDDouble2Value];
  return result;
}

- (uint64_t)oz_encodeFloat3:()OZAdditions forKey:
{
  v5 = [MEMORY[0x277CCAE60] oz_valueWithSIMDFloat3:?];

  return [a1 encodeObject:v5 forKey:a3];
}

- (double)oz_decodeFloat3ForKey:()OZAdditions
{
  v3 = [a1 decodeObjectOfClass:objc_opt_class() forKey:a3];
  if (!v3)
  {
    return 0.0;
  }

  [v3 oz_SIMDFloat3Value];
  return result;
}

- (uint64_t)oz_encodeDouble3:()OZAdditions forKey:
{
  v4 = a3[1];
  v6[0] = *a3;
  v6[1] = v4;
  return [a1 encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"oz_valueWithSIMDDouble3:", v6), a4}];
}

- (void)oz_decodeDouble3ForKey:()OZAdditions
{
  result = [a1 decodeObjectOfClass:objc_opt_class() forKey:a2];
  if (result)
  {
    result = [result oz_SIMDDouble3Value];
    v5 = v7;
    v6 = v8;
  }

  else
  {
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a3 = v5;
  a3[1] = v6;
  return result;
}

- (uint64_t)oz_encodeMatrixFloat3x3:()OZAdditions forKey:
{
  v5 = [MEMORY[0x277CCAE60] oz_valueWithSIMDFloat3x3:?];

  return [a1 encodeObject:v5 forKey:a3];
}

- (__n128)oz_decodeMatrixFloat3x3ForKey:()OZAdditions
{
  v3 = [a1 decodeObjectOfClass:objc_opt_class() forKey:a3];
  if (v3)
  {
    [v3 oz_SIMDFloat3x3Value];
  }

  else
  {
    return *MEMORY[0x277D860B0];
  }

  return result;
}

- (uint64_t)oz_encodeMatrixFloat4x4:()OZAdditions forKey:
{
  v5 = [MEMORY[0x277CCAE60] oz_valueWithSIMDFloat4x4:?];

  return [a1 encodeObject:v5 forKey:a3];
}

- (__n128)oz_decodeMatrixFloat4x4ForKey:()OZAdditions
{
  v3 = [a1 decodeObjectOfClass:objc_opt_class() forKey:a3];
  if (v3)
  {
    [v3 oz_SIMDFloat4x4Value];
  }

  else
  {
    return *MEMORY[0x277D860B8];
  }

  return result;
}

- (uint64_t)oz_encodeCGSize:()OZAdditions forKey:
{
  v5 = [MEMORY[0x277CCAE60] oz_valueWithCGSize:?];

  return [a1 encodeObject:v5 forKey:a3];
}

- (double)oz_decodeCGSizeForKey:()OZAdditions
{
  v3 = [a1 decodeObjectOfClass:objc_opt_class() forKey:a3];
  if (!v3)
  {
    return *MEMORY[0x277CBF3A8];
  }

  [v3 oz_CGSizeValue];
  return result;
}

@end
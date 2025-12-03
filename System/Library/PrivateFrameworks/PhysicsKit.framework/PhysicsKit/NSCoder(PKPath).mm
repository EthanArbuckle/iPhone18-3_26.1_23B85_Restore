@interface NSCoder(PKPath)
- (double)decodeCGPointForKey:()PKPath;
- (double)decodeCGSizeForKey:()PKPath;
- (double)decodeCGVectorForKey:()PKPath;
- (void)encodeCGPoint:()PKPath forKey:;
- (void)encodeCGSize:()PKPath forKey:;
- (void)encodeCGVector:()PKPath forKey:;
@end

@implementation NSCoder(PKPath)

- (void)encodeCGPoint:()PKPath forKey:
{
  v9 = a5;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%g, %g}", *&a2, *&a3];
  [self encodeObject:v8 forKey:v9];
}

- (void)encodeCGVector:()PKPath forKey:
{
  v9 = a5;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%g, %g}", *&a2, *&a3];
  [self encodeObject:v8 forKey:v9];
}

- (void)encodeCGSize:()PKPath forKey:
{
  v9 = a5;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%g, %g}", *&a2, *&a3];
  [self encodeObject:v8 forKey:v9];
}

- (double)decodeCGPointForKey:()PKPath
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = PKCGPointFromString(v5);
  }

  else
  {
    v7 = *MEMORY[0x277CBF348];
  }

  return v7;
}

- (double)decodeCGVectorForKey:()PKPath
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if ([(__CFString *)v7 length]< 5)
    {
      DoubleValue = 0.0;
    }

    else
    {
      v12 = 0;
      str = 0;
      DoubleValue = 0.0;
      if (PKSplitBracesAndComma(v7, &str, &v12))
      {
        v9 = str;
        DoubleValue = CFStringGetDoubleValue(str);
        v10 = v12;
        CFStringGetDoubleValue(v12);
        CFRelease(v9);
        CFRelease(v10);
      }
    }
  }

  else
  {
    DoubleValue = 0.0;
  }

  return DoubleValue;
}

- (double)decodeCGSizeForKey:()PKPath
{
  v4 = a3;
  v5 = [self decodeObjectOfClass:objc_opt_class() forKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    DoubleValue = *MEMORY[0x277CBF3A8];
    if ([(__CFString *)v7 length]>= 5)
    {
      v12 = 0;
      str = 0;
      if (PKSplitBracesAndComma(v7, &str, &v12))
      {
        v9 = str;
        DoubleValue = CFStringGetDoubleValue(str);
        v10 = v12;
        CFStringGetDoubleValue(v12);
        CFRelease(v9);
        CFRelease(v10);
      }
    }
  }

  else
  {
    DoubleValue = *MEMORY[0x277CBF3A8];
  }

  return DoubleValue;
}

@end
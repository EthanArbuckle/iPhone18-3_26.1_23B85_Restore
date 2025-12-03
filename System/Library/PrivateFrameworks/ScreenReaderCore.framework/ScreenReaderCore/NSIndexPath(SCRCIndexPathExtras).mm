@interface NSIndexPath(SCRCIndexPathExtras)
- (id)indexPathByConcatenatingIndexPath:()SCRCIndexPathExtras;
- (id)indexPathByInsertingFirstIndex:()SCRCIndexPathExtras;
- (id)stringValue;
- (uint64_t)initWithString:()SCRCIndexPathExtras;
@end

@implementation NSIndexPath(SCRCIndexPathExtras)

- (uint64_t)initWithString:()SCRCIndexPathExtras
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"[" withString:&stru_287632E30];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"]" withString:&stru_287632E30];

  v6 = [v5 componentsSeparatedByString:@"."];
  v7 = [v6 count];
  v8 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = [v6 objectAtIndex:i];
      v8[i] = [v10 integerValue];
    }
  }

  v11 = [self initWithIndexes:v8 length:v7];
  free(v8);

  return v11;
}

- (id)stringValue
{
  v2 = [MEMORY[0x277CCAB68] stringWithString:@"["];
  v3 = [self length];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [self indexAtPosition:i];
      if ([v2 length] == 1)
      {
        v7 = @"%i";
      }

      else
      {
        v7 = @".%i";
      }

      [v2 appendFormat:v7, v6];
    }
  }

  [v2 appendString:@"]"];

  return v2;
}

- (id)indexPathByInsertingFirstIndex:()SCRCIndexPathExtras
{
  v2 = [MEMORY[0x277CCAA70] indexPathWithIndex:?];
  v3 = [v2 indexPathByConcatenatingIndexPath:self];

  return v3;
}

- (id)indexPathByConcatenatingIndexPath:()SCRCIndexPathExtras
{
  v4 = a3;
  if ([v4 length])
  {
    if ([self length])
    {
      v5 = [v4 length];
      v6 = [self length];
      v7 = 8 * v5;
      v8 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
      [v4 getIndexes:v8];
      v9 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
      [self getIndexes:v9];
      v10 = v6 + v5;
      v11 = malloc_type_malloc(8 * (v6 + v5), 0x100004000313F17uLL);
      memcpy(v11, v9, 8 * v6);
      memcpy(&v11[8 * v6], v8, v7);
      v12 = [objc_alloc(MEMORY[0x277CCAA70]) initWithIndexes:v11 length:v10];
      free(v8);
      free(v9);
      free(v11);
      goto LABEL_7;
    }

    selfCopy = v4;
  }

  else
  {
    selfCopy = self;
  }

  v12 = selfCopy;
LABEL_7:

  return v12;
}

@end
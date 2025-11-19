@interface NSColor
- (NSColor)initWithCoder:(NSCoder *)coder;
@end

@implementation NSColor

- (NSColor)initWithCoder:(NSCoder *)coder
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = coder;
  v5 = [(NSCoder *)v4 decodeIntForKey:@"NSColorSpace"];
  if ((v5 - 1) > 1)
  {
    if ((v5 - 3) > 1)
    {
      v18 = +[UIColor blackColor];
    }

    else
    {
      *&v25 = 0.0;
      v23 = 0.0;
      v14 = [(NSCoder *)v4 decodeBytesForKey:@"NSWhite" returnedLength:&v25];
      v15 = copyBytesWithNullAtEnd(v26, v14, v25);
      v16 = v15;
      v24 = 0.0;
      if (!v15 || *&v25 == 0.0 || sscanf_l(v15, 0, "%lf %lf", &v24, &v23) == 1)
      {
        v23 = 1.0;
      }

      if (v16 != v26 && v16)
      {
        free(v16);
      }

      v17 = [UIColor alloc];
      v18 = [(UIColor *)v17 initWithWhite:v24 alpha:v23];
    }
  }

  else
  {
    *&v22 = 0.0;
    v6 = v4;
    if ([(NSCoder *)v6 allowsKeyedCoding])
    {
      __n = 0;
      v7 = [(NSCoder *)v6 decodeBytesForKey:@"NSRGB" returnedLength:&__n];

      v8 = copyBytesWithNullAtEnd(v26, v7, __n);
      v9 = v8;
      v23 = 0.0;
      v24 = 0.0;
      *&v25 = 0.0;
      if (!v8 || !__n || sscanf_l(v8, 0, "%lf %lf %lf %lf", &v25, &v24, &v23, &v22) == 3)
      {
        *&v22 = 1.0;
      }

      if (v9 != v26 && v9)
      {
        free(v9);
      }

      v11 = v24;
      v10 = *&v25;
      v13 = *&v22;
      v12 = v23;
    }

    else
    {
      v26[0] = 0.0;
      LODWORD(v25) = 0;
      LODWORD(v24) = 0;
      LODWORD(v23) = 0;
      [(NSCoder *)v6 decodeValuesOfObjCTypes:"ffff", v26, &v25, &v24, &v23];

      v10 = v26[0];
      v11 = *&v25;
      v12 = *&v24;
      v13 = *&v23;
    }

    v18 = [[UIColor alloc] initWithRed:v10 green:v11 blue:v12 alpha:v13];
  }

  v19 = v18;

  return v19;
}

@end
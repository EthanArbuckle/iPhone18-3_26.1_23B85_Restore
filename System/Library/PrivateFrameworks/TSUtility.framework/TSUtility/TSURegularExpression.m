@interface TSURegularExpression
+ (id)regularExpressionWithString:(id)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (TSURegularExpression)initWithCoder:(id)a3;
- (TSURegularExpression)initWithExpressionString:(id)a3 options:(unsigned int)a4;
- (_NSRange)matchedRangeForCString:(const char *)a3 range:(_NSRange)a4 subexpressionRanges:(_NSRange *)a5 count:(unsigned int)a6;
- (_NSRange)matchedRangeForString:(id)a3 range:(_NSRange)a4 subexpressionRanges:(_NSRange *)a5 count:(unsigned int)a6;
- (const)getBytesForString:(id)a3 lossByte:(unsigned __int8)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation TSURegularExpression

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

+ (id)regularExpressionWithString:(id)a3
{
  v3 = [[a1 alloc] initWithExpressionString:a3];

  return v3;
}

- (void)dealloc
{
  if (self->_reserved)
  {
    MEMORY[0x26D6AC3B0]();
    NSZoneFree([(TSURegularExpression *)self zone], self->_reserved);
  }

  v3.receiver = self;
  v3.super_class = TSURegularExpression;
  [(TSURegularExpression *)&v3 dealloc];
}

- (TSURegularExpression)initWithExpressionString:(id)a3 options:(unsigned int)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TSURegularExpression;
  v6 = [(TSURegularExpression *)&v14 init];
  if (v6)
  {
    v7 = [a3 length];
    v8 = v7;
    v9 = buffer;
    if (v7 >= 0x40)
    {
      v9 = malloc_type_malloc(v7, 0x2717129FuLL);
    }

    v17.location = 0;
    v17.length = v8;
    CFStringGetBytes(a3, v17, 0x600u, 0x20u, 0, v9, v8, 0);
    v10 = NSZoneMalloc([v6 zone], 0x20uLL);
    *(v6 + 2) = v10;
    v10[2] = &v9[v8];
    if (a4)
    {
      v11 = 34;
    }

    else
    {
      v11 = 32;
    }

    v12 = regcomp(*(v6 + 2), v9, ((4 * a4) & 8 | (a4 >> 2) & 1 | v11) ^ 9);
    if (v9 != buffer)
    {
      free(v9);
    }

    if (v12)
    {
      NSLog(@"*** %s: error %d", "[TSURegularExpression initWithExpressionString:options:]", v12);
      NSZoneFree([v6 zone], *(v6 + 2));
      *(v6 + 2) = 0;

      return 0;
    }

    else
    {
      *(v6 + 1) = [a3 copyWithZone:{objc_msgSend(v6, "zone")}];
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([(TSURegularExpression *)self zone]== a3)
  {

    return self;
  }

  else
  {
    v4 = [objc_opt_class() allocWithZone:a3];
    expressionString = self->_expressionString;

    return [v4 initWithExpressionString:expressionString];
  }
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  expressionString = self->_expressionString;
  v6 = [a3 expressionString];

  return [(NSString *)expressionString isEqualToString:v6];
}

- (_NSRange)matchedRangeForCString:(const char *)a3 range:(_NSRange)a4 subexpressionRanges:(_NSRange *)a5 count:(unsigned int)a6
{
  length = a4.length;
  location = a4.location;
  v29 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = a6;
  if ([(TSURegularExpression *)self numberOfSubexpressions]< a6)
  {
    v12 = [(TSURegularExpression *)self numberOfSubexpressions];
  }

  v13 = v12 + 1;
  if (v12 + 1 >= 6)
  {
    p_pmatch = malloc_type_malloc(16 * v13, 0x1000040451B5BE8uLL);
  }

  else
  {
    p_pmatch = &__pmatch;
  }

  v15 = location + length;
  rm_so = 0x7FFFFFFFFFFFFFFFLL;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = -1;
    v17 = -1;
  }

  else
  {
    v17 = location;
  }

  p_pmatch->rm_so = v17;
  p_pmatch->rm_eo = v15;
  if (regexec(self->_reserved, a3, v12 + 1, p_pmatch, 4))
  {
    v18 = 0;
  }

  else
  {
    v18 = (p_pmatch->rm_eo - p_pmatch->rm_so) & ~(p_pmatch->rm_so >> 63);
    if (p_pmatch->rm_so >= 0)
    {
      rm_so = p_pmatch->rm_so;
    }

    if (v13 >= 2)
    {
      p_rm_eo = &p_pmatch[1].rm_eo;
      p_length = &a5->length;
      v21 = v12;
      do
      {
        v22 = *(p_rm_eo - 1);
        v23 = (*p_rm_eo - v22) & ~(v22 >> 63);
        if (v22 < 0)
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *(p_length - 1) = v22;
        *p_length = v23;
        p_rm_eo += 2;
        p_length += 2;
        --v21;
      }

      while (v21);
    }

    if (v13 < v11)
    {
      v24 = ~v12 + v11;
      v25 = &a5[v12 + 1];
      do
      {
        *v25++ = xmmword_26CBEEB80;
        --v24;
      }

      while (v24);
    }
  }

  if (p_pmatch != &__pmatch)
  {
    free(p_pmatch);
  }

  v26 = rm_so;
  v27 = v18;
  result.length = v27;
  result.location = v26;
  return result;
}

- (_NSRange)matchedRangeForString:(id)a3 range:(_NSRange)a4 subexpressionRanges:(_NSRange *)a5 count:(unsigned int)a6
{
  v6 = *&a6;
  length = a4.length;
  location = a4.location;
  ASCIIData = _createASCIIData(a3, 0x3Fu, a4.location, a4.length);
  v12 = [(TSURegularExpression *)self matchedRangeForCString:[(__CFData *)ASCIIData bytes] range:location subexpressionRanges:length count:a5, v6];
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (TSURegularExpression)initWithCoder:(id)a3
{
  v6 = [a3 versionForClassName:@"TSURegularExpression"];
  v7 = v6;
  if (v6 >= 2)
  {
    v8 = MOFullMethodName(self, a2);
    NSLog(@"%@: class version %u cannot read instances archived with version %lu", v8, 1, v7);
    [(TSURegularExpression *)self dealloc];
    return 0;
  }

  if (v6 != 1)
  {
    return self;
  }

  v9 = [a3 decodeObject];

  return [(TSURegularExpression *)self initWithExpressionString:v9];
}

- (const)getBytesForString:(id)a3 lossByte:(unsigned __int8)a4
{
  ASCIIData = _createASCIIData(a3, a4, 0, [a3 length]);
  v5 = ASCIIData;

  return [(__CFData *)ASCIIData bytes];
}

@end
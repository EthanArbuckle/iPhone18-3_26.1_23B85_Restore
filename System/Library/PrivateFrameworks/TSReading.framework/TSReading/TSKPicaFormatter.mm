@interface TSKPicaFormatter
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (TSKPicaFormatter)initWithPicaSeparator:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringForObjectValue:(id)a3;
- (void)dealloc;
@end

@implementation TSKPicaFormatter

- (TSKPicaFormatter)initWithPicaSeparator:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSKPicaFormatter;
  v4 = [(TSKPicaFormatter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TSKPicaFormatter *)v4 setPicaSeparator:a3];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKPicaFormatter;
  [(TSKPicaFormatter *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithPicaSeparator:", -[TSKPicaFormatter picaSeparator](self, "picaSeparator")}];
  [v4 setMinimum:{-[TSKPicaFormatter minimum](self, "minimum")}];
  [v4 setMaximum:{-[TSKPicaFormatter maximum](self, "maximum")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSString isEqualToString:](-[TSKPicaFormatter picaSeparator](self, "picaSeparator"), "isEqualToString:", [a3 picaSeparator]);
      if (v5)
      {
        v5 = -[NSNumber isEqualToNumber:](-[TSKPicaFormatter minimum](self, "minimum"), "isEqualToNumber:", [a3 minimum]);
        if (v5)
        {
          v6 = [(TSKPicaFormatter *)self maximum];
          v7 = [a3 maximum];

          LOBYTE(v5) = [(NSNumber *)v6 isEqualToNumber:v7];
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)stringForObjectValue:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [a3 floatValue];
  v7 = floor(v6);
  v8 = ceil(v6);
  if (v6 < 0.0)
  {
    v7 = v8;
  }

  v9 = v7;
  LODWORD(v3) = llround(12.0 * vabdd_f64(v6, v9));
  if (v3 >= 12.0)
  {
    v3 = (v3 - 12.0);
    v9 = ((v9 >> 31) | 1) + v9;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v6 <= 0.0;
  }

  if (v10)
  {
    v11 = @"-%d%@%d";
  }

  else
  {
    v11 = @"%d%@%d";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:v11, v9, -[TSKPicaFormatter picaSeparator](self, "picaSeparator"), v3];
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  if (a4 && [a4 length])
  {
    v9 = [MEMORY[0x277CCAC80] scannerWithString:a4];
    v10 = [v9 scanString:@"-" intoString:0];
    v21 = 0;
    if (([v9 scanFloat:&v21 + 4] & 1) == 0)
    {
      HIDWORD(v21) = 0;
    }

    [v9 scanString:-[TSKPicaFormatter picaSeparator](self intoString:{"picaSeparator"), 0}];
    if (([v9 scanFloat:&v21] & 1) == 0)
    {
      LODWORD(v21) = 0;
    }

    v11 = [v9 isAtEnd];
    v12 = v11;
    if (a5 && (v11 & 1) == 0)
    {
      *a5 = [TSKBundle() localizedStringForKey:@"Couldn\\U2019t convert to picas" value:&stru_287D36338 table:@"TSKit"];
    }

    v13 = !v12;
    if (!a3)
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      v14 = [(TSKPicaFormatter *)self minimum];
      v15 = [(TSKPicaFormatter *)self maximum];
      LODWORD(v21) = fabsf(*&v21);
      v16 = *&v21 / 12.0 + *(&v21 + 1);
      if ((v10 & (v16 > 0.0)) != 0)
      {
        v16 = -v16;
      }

      *&v16 = v16;
      v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
      *a3 = v17;
      if (v14)
      {
        v18 = [v17 compare:v14];
        v12 = v18 != -1;
        if (a5 && v18 == -1)
        {
          v12 = 0;
          *a5 = [TSKBundle() localizedStringForKey:@"Fell short of minimum" value:&stru_287D36338 table:@"TSKit"];
        }
      }

      else
      {
        v12 = 1;
      }

      if (v15)
      {
        v20 = [*a3 compare:v15];
        if (v20 == 1)
        {
          v12 = 0;
        }

        if (a5 && v20 == 1)
        {
          v12 = 0;
          *a5 = [TSKBundle() localizedStringForKey:@"Maximum exceeded" value:&stru_287D36338 table:@"TSKit"];
        }
      }
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    return 1;
  }

  return v12;
}

@end
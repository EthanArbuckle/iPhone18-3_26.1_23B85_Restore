@interface TypistKeyboardTibetan
- (TypistKeyboardTibetan)initWithCoder:(id)a3;
- (id)init:(id)a3 options:(id)a4;
- (id)setupKeyboardInfo:(id)a3 options:(id)a4;
- (id)tryAlternateVariationsOfKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TypistKeyboardTibetan

- (id)init:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardTibetan;
  return [(TypistKeyboard *)&v5 init:a3 options:a4 locale:@"bo"];
}

- (id)setupKeyboardInfo:(id)a3 options:(id)a4
{
  v10.receiver = self;
  v10.super_class = TypistKeyboardTibetan;
  v5 = [(TypistKeyboard *)&v10 setupKeyboardInfo:a3 options:a4];
  if (!v5)
  {
    v9 = 0;
    v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[\\u0F90-\\u0FBC|\\u0F71]" options:1 error:&v9];
    v7 = v9;
    [(TypistKeyboardTibetan *)self setSubjoinedExpression:v6];
  }

  return v5;
}

- (id)tryAlternateVariationsOfKey:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  if ([v4 characterAtIndex:0] == 3953)
  {
    v17.receiver = self;
    v17.super_class = TypistKeyboardTibetan;
    v6 = [(TypistKeyboard *)&v17 generateKeystrokeStream:@"྄འ"];
    goto LABEL_10;
  }

  v7 = [(TypistKeyboardTibetan *)self subjoinedExpression];
  v8 = [v7 numberOfMatchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];

  if (v8)
  {
    [v5 length];
    MEMORY[0x28223BE20]();
    v10 = &v15 - v9;
    *(&v15 - v9) = 3972;
    if ([v5 length])
    {
      v11 = 0;
      do
      {
        *&v10[2 * v11 + 2] = [v5 characterAtIndex:v11] - 80;
        ++v11;
      }

      while (v11 < [v5 length]);
    }

    v12 = [MEMORY[0x277CCACA8] stringWithCharacters:v10 length:{objc_msgSend(v5, "length") + 1}];
    v16.receiver = self;
    v16.super_class = TypistKeyboardTibetan;
    v6 = [(TypistKeyboard *)&v16 generateKeystrokeStream:v12];
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (TypistKeyboardTibetan)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TypistKeyboardTibetan;
  v5 = [(TypistKeyboard *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subjoinedExpression"];
    subjoinedExpression = v5->_subjoinedExpression;
    v5->_subjoinedExpression = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TypistKeyboardTibetan;
  [(TypistKeyboard *)&v6 encodeWithCoder:v4];
  subjoinedExpression = self->_subjoinedExpression;
  if (subjoinedExpression)
  {
    [v4 encodeObject:subjoinedExpression forKey:@"subjoinedExpression"];
  }
}

@end
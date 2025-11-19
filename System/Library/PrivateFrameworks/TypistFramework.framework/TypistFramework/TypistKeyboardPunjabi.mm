@interface TypistKeyboardPunjabi
- (id)addAccentKeyAction:(id)a3;
- (id)getPostfixKey:(id)a3;
- (id)init:(id)a3 options:(id)a4;
@end

@implementation TypistKeyboardPunjabi

- (id)init:(id)a3 options:(id)a4
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardPunjabi;
  return [(TypistKeyboard *)&v5 init:a3 options:a4 locale:@"pa"];
}

- (id)getPostfixKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 _referenceBounds];
  if (CGRectGetHeight(v10) <= 1194.0 || [(TypistKeyboard *)self isFloating])
  {

LABEL_4:
    v6 = v4;
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"ਇ"])
  {
  }

  else
  {
    v8 = [v4 isEqualToString:@"ਈ"];

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v6 = @"ੲ";
LABEL_5:

  return v6;
}

- (id)addAccentKeyAction:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 _referenceBounds];
  if (CGRectGetHeight(v18) <= 1194.0)
  {

    goto LABEL_7;
  }

  v6 = [(TypistKeyboard *)self isFloating];

  if (v6)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (![v4 isEqualToString:@"ਇ"])
  {
    if ([v4 isEqualToString:@"ਈ"])
    {
      v14 = [(TypistKeyboard *)self findKeyOnAnyPlane:@"ੀ"];
      v8 = v14;
      if (v14)
      {
        v15 = v14;
        v9 = MEMORY[0x277CBEA60];
        v10 = &v15;
        goto LABEL_14;
      }

LABEL_15:
      v11 = 0;
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v7 = [(TypistKeyboard *)self findKeyOnAnyPlane:@"ਿ"];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_15;
  }

  v16[0] = v7;
  v9 = MEMORY[0x277CBEA60];
  v10 = v16;
LABEL_14:
  v11 = [v9 arrayWithObjects:v10 count:1];
LABEL_16:

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end
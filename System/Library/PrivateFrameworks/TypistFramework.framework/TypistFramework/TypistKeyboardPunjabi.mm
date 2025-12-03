@interface TypistKeyboardPunjabi
- (id)addAccentKeyAction:(id)action;
- (id)getPostfixKey:(id)key;
- (id)init:(id)init options:(id)options;
@end

@implementation TypistKeyboardPunjabi

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardPunjabi;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"pa"];
}

- (id)getPostfixKey:(id)key
{
  keyCopy = key;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v10) <= 1194.0 || [(TypistKeyboard *)self isFloating])
  {

LABEL_4:
    v6 = keyCopy;
    goto LABEL_5;
  }

  if ([keyCopy isEqualToString:@"ਇ"])
  {
  }

  else
  {
    v8 = [keyCopy isEqualToString:@"ਈ"];

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v6 = @"ੲ";
LABEL_5:

  return v6;
}

- (id)addAccentKeyAction:(id)action
{
  v16[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v18) <= 1194.0)
  {

    goto LABEL_7;
  }

  isFloating = [(TypistKeyboard *)self isFloating];

  if (isFloating)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (![actionCopy isEqualToString:@"ਇ"])
  {
    if ([actionCopy isEqualToString:@"ਈ"])
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
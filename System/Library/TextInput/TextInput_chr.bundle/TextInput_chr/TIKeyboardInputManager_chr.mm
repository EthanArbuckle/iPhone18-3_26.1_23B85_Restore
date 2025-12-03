@interface TIKeyboardInputManager_chr
+ (id)stringByComposingInput:(id)input;
- (id)contextualDisplayKeys;
- (id)externalStringToInternal:(id)internal;
- (id)internalStringToExternal:(id)external;
- (void)initImplementation;
@end

@implementation TIKeyboardInputManager_chr

- (void)initImplementation
{
  if (!*(&self->super.super.super.isa + *MEMORY[0x29EDC7290]))
  {
    operator new();
  }

  return *(&self->super.super.super.isa + *MEMORY[0x29EDC7290]);
}

+ (id)stringByComposingInput:(id)input
{
  v23 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  v4 = [inputCopy length];
  v5 = MEMORY[0x2A1C7C4A8]();
  v7 = &v22 - v6;
  if (v5)
  {
    v22 = &v22;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = [inputCopy characterAtIndex:{v9, v22, v23}];
      if (v4 - 1 > v9)
      {
        break;
      }

LABEL_42:
      v17 = v8 + 1;
      *&v7[2 * v8] = v11;
      v9 = ++v10;
      ++v8;
      if (v4 <= v10)
      {
        v18 = v17;
        goto LABEL_45;
      }
    }

    v12 = [inputCopy characterAtIndex:v10 + 1];
    if (v11 <= 5067)
    {
      if (v11 > 5048)
      {
        switch(v11)
        {
          case 5049:
            v13 = 1;
            v14 = 4;
            goto LABEL_35;
          case 5054:
            v13 = 1;
            v14 = 5;
            goto LABEL_35;
          case 5062:
            v13 = 1;
            v14 = 6;
            goto LABEL_35;
        }
      }

      else
      {
        switch(v11)
        {
          case 5030:
            v13 = 1;
            v14 = 1;
            goto LABEL_35;
          case 5037:
            v13 = 1;
            v14 = 2;
            goto LABEL_35;
          case 5043:
            v13 = 1;
            v14 = 3;
            goto LABEL_35;
        }
      }
    }

    else if (v11 <= 5084)
    {
      switch(v11)
      {
        case 5068:
          v13 = 1;
          v14 = 7;
          goto LABEL_35;
        case 5075:
          v13 = 1;
          v14 = 8;
          goto LABEL_35;
        case 5076:
          v13 = 1;
          v14 = 9;
          goto LABEL_35;
      }
    }

    else if (v11 > 5096)
    {
      if (v11 == 5097)
      {
        v13 = 1;
        v14 = 12;
        goto LABEL_35;
      }

      if (v11 == 5103)
      {
        v13 = 1;
        v14 = 13;
        goto LABEL_35;
      }
    }

    else
    {
      if (v11 == 5085)
      {
        v13 = 1;
        v14 = 10;
        goto LABEL_35;
      }

      if (v11 == 5091)
      {
        v13 = 1;
        v14 = 11;
LABEL_35:
        v15 = 0;
        v16 = v12 - 5024;
        if ((v12 - 5024) >= 6)
        {
          v16 = -1;
        }

        if (v13 && v16 != -1)
        {
          v15 = cherokee_syllables[6 * v14 + v16];
        }

        if (v15)
        {
          LOWORD(v11) = v15;
          ++v10;
        }

        goto LABEL_42;
      }
    }

    v13 = 0;
    v14 = -1;
    goto LABEL_35;
  }

  v18 = 0;
LABEL_45:
  v19 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v7 length:v18];

  v20 = *MEMORY[0x29EDCA608];

  return v19;
}

- (id)internalStringToExternal:(id)external
{
  externalCopy = external;
  if ([(TIKeyboardInputManager_chr *)self inHardwareKeyboardMode])
  {
    v5 = externalCopy;
  }

  else
  {
    v5 = [objc_opt_class() stringByComposingInput:externalCopy];
  }

  v6 = v5;

  return v6;
}

- (id)externalStringToInternal:(id)internal
{
  v17[1] = *MEMORY[0x29EDCA608];
  internalCopy = internal;
  if ([(TIKeyboardInputManager_chr *)self inHardwareKeyboardMode])
  {
    v5 = internalCopy;
  }

  else
  {
    [internalCopy length];
    MEMORY[0x2A1C7C4A8]();
    v7 = v17 - v6;
    if ([internalCopy length])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = [internalCopy characterAtIndex:v8];
        v11 = 1;
        v12 = 1;
        switch(v10)
        {
          case 5032:
            goto LABEL_80;
          case 5033:
            v12 = 2;
            goto LABEL_41;
          case 5034:
            v12 = 3;
            goto LABEL_41;
          case 5035:
            v12 = 4;
            goto LABEL_41;
          case 5036:
            v12 = 5;
LABEL_41:
            v11 = 1;
            goto LABEL_80;
          case 5038:
            v12 = 1;
            goto LABEL_55;
          case 5039:
            v11 = 2;
            v12 = 2;
            goto LABEL_80;
          case 5040:
            v12 = 3;
            goto LABEL_55;
          case 5041:
            v12 = 4;
            goto LABEL_55;
          case 5042:
            v12 = 5;
LABEL_55:
            v11 = 2;
            goto LABEL_80;
          case 5044:
            v12 = 1;
            goto LABEL_51;
          case 5045:
            v12 = 2;
            goto LABEL_51;
          case 5046:
            v11 = 3;
            v12 = 3;
            goto LABEL_80;
          case 5047:
            v12 = 4;
            goto LABEL_51;
          case 5048:
            v12 = 5;
LABEL_51:
            v11 = 3;
            goto LABEL_80;
          case 5050:
            v12 = 1;
            goto LABEL_61;
          case 5051:
            v12 = 2;
            goto LABEL_61;
          case 5052:
            v12 = 3;
LABEL_61:
            v11 = 4;
            goto LABEL_80;
          case 5053:
            v11 = 4;
            v12 = 4;
            goto LABEL_80;
          case 5057:
            v12 = 1;
            goto LABEL_66;
          case 5058:
            v12 = 2;
            goto LABEL_66;
          case 5059:
            v12 = 3;
            goto LABEL_66;
          case 5060:
            v12 = 4;
LABEL_66:
            v11 = 5;
            goto LABEL_80;
          case 5061:
            v11 = 5;
            v12 = 5;
            goto LABEL_80;
          case 5063:
            v12 = 1;
            goto LABEL_69;
          case 5064:
            v12 = 2;
            goto LABEL_69;
          case 5065:
            v12 = 3;
            goto LABEL_69;
          case 5066:
            v12 = 4;
            goto LABEL_69;
          case 5067:
            v12 = 5;
LABEL_69:
            v11 = 6;
            goto LABEL_80;
          case 5070:
            v12 = 1;
            goto LABEL_49;
          case 5071:
            v12 = 2;
            goto LABEL_49;
          case 5072:
            v12 = 3;
            goto LABEL_49;
          case 5073:
            v12 = 4;
            goto LABEL_49;
          case 5074:
            v12 = 5;
LABEL_49:
            v11 = 7;
            goto LABEL_80;
          case 5077:
            v12 = 1;
            goto LABEL_57;
          case 5078:
            v12 = 1;
            goto LABEL_72;
          case 5079:
            v12 = 2;
            goto LABEL_57;
          case 5080:
            v12 = 2;
LABEL_72:
            v11 = 9;
            goto LABEL_80;
          case 5081:
            v12 = 3;
            goto LABEL_57;
          case 5082:
            v12 = 4;
            goto LABEL_57;
          case 5083:
            v12 = 5;
LABEL_57:
            v11 = 8;
            goto LABEL_80;
          case 5086:
            v12 = 1;
            goto LABEL_63;
          case 5087:
            v12 = 2;
            goto LABEL_63;
          case 5088:
            v12 = 3;
            goto LABEL_63;
          case 5089:
            v12 = 4;
            goto LABEL_63;
          case 5090:
            v12 = 5;
LABEL_63:
            v11 = 10;
            goto LABEL_80;
          case 5092:
            v12 = 1;
            goto LABEL_74;
          case 5093:
            v12 = 2;
            goto LABEL_74;
          case 5094:
            v12 = 3;
            goto LABEL_74;
          case 5095:
            v12 = 4;
            goto LABEL_74;
          case 5096:
            v12 = 5;
LABEL_74:
            v11 = 11;
            goto LABEL_80;
          case 5098:
            v12 = 1;
            goto LABEL_77;
          case 5099:
            v12 = 2;
            goto LABEL_77;
          case 5100:
            v12 = 3;
            goto LABEL_77;
          case 5101:
            v12 = 4;
            goto LABEL_77;
          case 5102:
            v12 = 5;
LABEL_77:
            v11 = 12;
            goto LABEL_80;
          case 5104:
            v12 = 1;
            goto LABEL_79;
          case 5105:
            v12 = 2;
            goto LABEL_79;
          case 5106:
            v12 = 3;
            goto LABEL_79;
          case 5107:
            v12 = 4;
            goto LABEL_79;
          case 5108:
            v12 = 5;
LABEL_79:
            v11 = 13;
LABEL_80:
            v13 = &v7[2 * v9];
            *v13 = cherokee_syllables[6 * v11];
            v9 += 2;
            *(v13 + 1) = cherokee_syllables[v12];
            break;
          default:
            *&v7[2 * v9++] = v10;
            break;
        }

        ++v8;
      }

      while ([internalCopy length] > v8);
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    v5 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v7 length:v14];
  }

  v15 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)contextualDisplayKeys
{
  v26 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  keyboardState = [(TIKeyboardInputManager_chr *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  _lastGrapheme = [contextBeforeInput _lastGrapheme];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v9 = [_lastGrapheme stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [&unk_2A2523BC0 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(&unk_2A2523BC0);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([v9 length])
        {
          v15 = objc_opt_class();
          v16 = [v9 stringByAppendingString:v14];
          v17 = [v15 stringByComposingInput:v16];

          if (([v17 isEqualToString:v9] & 1) == 0 && (objc_msgSend(v17, "hasSuffix:", v14) & 1) == 0)
          {
            [dictionary setObject:v17 forKeyedSubscript:v14];
          }
        }

        v18 = [dictionary objectForKeyedSubscript:v14];

        if (!v18)
        {
          [dictionary setObject:@"UI-Nothing" forKeyedSubscript:v14];
        }
      }

      v11 = [&unk_2A2523BC0 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x29EDCA608];

  return dictionary;
}

@end
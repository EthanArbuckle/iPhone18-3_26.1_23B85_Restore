@interface TIKeyboardInputManager
@end

@implementation TIKeyboardInputManager

void __54__TIKeyboardInputManager_my_internalStringToExternal___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rangeAtIndex:1];
  v42 = v5;
  v43 = v4;
  v6 = [v3 rangeAtIndex:2];
  v7 = [v3 rangeAtIndex:4];
  v9 = v8;
  v10 = [v3 rangeAtIndex:6];
  v12 = v11;
  v13 = [v3 rangeAtIndex:7];
  v40 = v14;
  v41 = v13;
  v15 = [v3 rangeAtIndex:8];
  v17 = v16;
  if (![v3 range])
  {
    goto LABEL_7;
  }

  if ([*(a1 + 32) characterAtIndex:{objc_msgSend(v3, "range") - 1}] != 4153)
  {
    goto LABEL_7;
  }

  if ([v3 range] >= 3)
  {
    v39 = [*(a1 + 32) characterAtIndex:{objc_msgSend(v3, "range") - 3}];
    v18 = v17;
    v19 = v15;
    v20 = v6;
    v21 = *(a1 + 32);
    v22 = [v3 range] - 2;
    v23 = v21;
    v6 = v20;
    v15 = v19;
    v17 = v18;
    v24 = [v23 characterAtIndex:v22];
    if (v39 == 4100 && v24 == 4154)
    {
LABEL_7:
      if (v7 != 0x7FFFFFFFFFFFFFFFLL && v9)
      {
        [*(a1 + 40) deleteCharactersInRange:{v7, v9}];
        v25 = *(a1 + 40);
        v26 = [*(a1 + 32) substringWithRange:{v7, v9}];
        [v25 insertString:v26 atIndex:v6];
      }

      if (v12)
      {
        if (v12 == 1)
        {
          v27 = [*(a1 + 32) characterAtIndex:v10] >= 0x103D;
        }

        else
        {
          [*(a1 + 32) getCharacters:__base range:{v10, v12}];
          qsort_b(__base, v12, 2uLL, &__block_literal_global);
          v29 = *(a1 + 40);
          v30 = [MEMORY[0x29EDBA0F8] stringWithCharacters:__base length:v12];
          [v29 replaceCharactersInRange:v10 withString:{v12, v30}];

          v27 = __base[0] >= 0x103Du;
        }

        v28 = !v27;
      }

      else
      {
        v28 = 0;
      }

      if (v43 != 0x7FFFFFFFFFFFFFFFLL && v42)
      {
        [*(a1 + 40) insertString:@"ေ" atIndex:v41];
        [*(a1 + 40) deleteCharactersInRange:{v43, v42}];
      }

      if (v40 == 2)
      {
        v31 = [*(a1 + 32) characterAtIndex:v41];
        v32 = [*(a1 + 32) characterAtIndex:v41 + 1];
        v44 = v32;
        if (((v31 - 4141) > 5 || ((1 << (v31 - 45)) & 0x23) == 0) && (v32 - 4141) <= 5 && ((1 << (v32 - 45)) & 0x23) != 0)
        {
          [*(a1 + 40) deleteCharactersInRange:{v41 + 1, 1}];
          v37 = *(a1 + 40);
          v38 = [MEMORY[0x29EDBA0F8] stringWithCharacters:&v44 length:1];
          [v37 insertString:v38 atIndex:v41];
        }
      }

      v34 = v15 == 0x7FFFFFFFFFFFFFFFLL || v17 == 0;
      if (((v34 | v28) & 1) == 0)
      {
        [v3 rangeAtIndex:3];
        if (!v35)
        {
          v36 = [*(a1 + 32) characterAtIndex:v6];
          if (_ZZZ54__TIKeyboardInputManager_my_internalStringToExternal__EUb_E11__onceToken != -1)
          {
            __54__TIKeyboardInputManager_my_internalStringToExternal___block_invoke_cold_1();
          }

          if ([_ZZZ54__TIKeyboardInputManager_my_internalStringToExternal__EUb_E27__requiresTallACharacterSet characterIsMember:v36])
          {
            [*(a1 + 40) replaceCharactersInRange:v15 withString:{v17, @"ါ"}];
          }
        }
      }
    }
  }
}

uint64_t __54__TIKeyboardInputManager_my_internalStringToExternal___block_invoke_3()
{
  _ZZZ54__TIKeyboardInputManager_my_internalStringToExternal__EUb_E27__requiresTallACharacterSet = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"ခဂငဒပဝ"];

  return MEMORY[0x2A1C71028]();
}

void __54__TIKeyboardInputManager_my_externalStringToInternal___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 rangeAtIndex:1];
  v5 = v4;
  v6 = [v12 rangeAtIndex:3];
  v8 = v7;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL && v5)
  {
    v9 = [*(a1 + 32) length];
    if (v5 + v3 + 1 < [*(a1 + 32) length])
    {
      v9 = [*(a1 + 32) rangeOfComposedCharacterSequenceAtIndex:v5 + v3 + 1];
    }

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) substringWithRange:{v3, v5}];
    [v10 insertString:v11 atIndex:v9];

    [*(a1 + 40) deleteCharactersInRange:{v3, v5}];
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8)
  {
    [*(a1 + 40) deleteCharactersInRange:{v6, v8}];
    [*(a1 + 40) insertString:@"ေ" atIndex:{objc_msgSend(v12, "range")}];
  }
}

@end
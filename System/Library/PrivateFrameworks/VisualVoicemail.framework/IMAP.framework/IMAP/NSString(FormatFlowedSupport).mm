@interface NSString(FormatFlowedSupport)
- (__CFString)mf_convertFromFlowedText:()FormatFlowedSupport visuallyEmpty:;
@end

@implementation NSString(FormatFlowedSupport)

- (__CFString)mf_convertFromFlowedText:()FormatFlowedSupport visuallyEmpty:
{
  v33 = [self length];
  v36 = 0;
  if (a4)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [self rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet];
    v10 = v9;

    if ([self length])
    {
      if (v8)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10 == [self length];
      }
    }

    else
    {
      v11 = 1;
    }

    *a4 = v11;
  }

  v12 = MFGetMappedAllocator();
  Mutable = CFStringCreateMutable(v12, 0);
  v14 = Mutable;
  if ((a3 & 8) != 0)
  {
    [(__CFString *)Mutable appendString:@"<HTML><BODY>"];
  }

  if (!v33)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    goto LABEL_66;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = v17;
    v19 = v16;
    v34 = 0;
    v35 = 0;
    v20 = objc_autoreleasePoolPush();
    [self getLineStart:&v36 end:&v34 contentsEnd:&v35 forRange:{v36, 0}];
    v21 = @"\n";
    if (v35 >= v34)
    {
      v21 = 0;
    }

    v17 = v21;

    v22 = v35;
    v23 = v36;
    if (v36 >= v35)
    {
      v16 = 0;
      goto LABEL_24;
    }

    v16 = 0;
    while (1)
    {
      v24 = [self characterAtIndex:v23];
      if (v24 != 62)
      {
        break;
      }

      ++v16;
LABEL_20:
      ++v23;
      v22 = v35;
      if (v23 >= v35)
      {
        goto LABEL_24;
      }
    }

    if ((a3 & 1) == 0 && v24 == 32)
    {
      goto LABEL_20;
    }

    v22 = v35;
LABEL_24:
    if (v23 >= v22)
    {
      goto LABEL_36;
    }

    if (a3)
    {
      if ([self characterAtIndex:v23] == 32)
      {
        ++v23;
      }

LABEL_36:
      if (!v15)
      {
        goto LABEL_40;
      }

LABEL_37:
      if (v19 != v16 && [v15 length])
      {
        _appendParagraphToOutput(v14, v15, v19, v17, (a3 >> 3) & 1);
        [v15 setString:&stru_288159858];
      }

      goto LABEL_40;
    }

    if (v23 <= v36)
    {
      goto LABEL_36;
    }

    if (!v16)
    {
      v23 = v36;
      if (!v15)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v25 = [self rangeOfString:@">" options:4 range:{v36, v23 - v36}];
    v26 = v25 + 2;
    if (v23 < v25 + 2)
    {
      v26 = v23;
    }

    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = v26;
    }

    if (v15)
    {
      goto LABEL_37;
    }

LABEL_40:
    v27 = [self substringWithRange:{v23, v35 - v23}];
    if ((a3 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (v36 >= v35 || [self characterAtIndex:v35 - 1] != 32)
    {
      goto LABEL_75;
    }

    if (v35 - v23 == 3 && [self characterAtIndex:v23] == 45)
    {
      v28 = [self characterAtIndex:v23 + 1] != 45;
      if ((a3 & 2) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v28 = 1;
      if ((a3 & 2) == 0)
      {
        goto LABEL_52;
      }
    }

    if (v28 && [v27 length])
    {
      v32 = [v27 substringToIndex:{objc_msgSend(v27, "length") - 1}];

      v29 = 1;
      v27 = v32;
      if (!v15)
      {
        goto LABEL_57;
      }

      goto LABEL_58;
    }

LABEL_52:
    if (!v28)
    {
LABEL_75:
      if ([v15 length])
      {
        v29 = 0;
        if (!v15)
        {
          goto LABEL_57;
        }

        goto LABEL_58;
      }

LABEL_60:
      _appendParagraphToOutput(v14, v27, v16, v17, (a3 >> 3) & 1);
      goto LABEL_61;
    }

    v29 = 1;
    if (!v15)
    {
LABEL_57:
      v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
    }

LABEL_58:
    [v15 appendString:v27];
    if ((v29 & 1) == 0)
    {
      _appendParagraphToOutput(v14, v15, v16, v17, (a3 >> 3) & 1);
      [v15 setString:&stru_288159858];
    }

LABEL_61:
    v36 = v34;
    objc_autoreleasePoolPop(v20);
  }

  while (v36 < v33);
LABEL_66:
  if ([v15 length])
  {
    _appendParagraphToOutput(v14, v15, v16, v17, (a3 >> 3) & 1);
  }

  if ((a3 & 8) != 0)
  {
    [(__CFString *)v14 appendString:@"</BODY></HTML>"];
  }

  v30 = v14;

  return v30;
}

@end
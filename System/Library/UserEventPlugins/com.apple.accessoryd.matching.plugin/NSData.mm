@interface NSData
+ (id)CKDataWithHexString:(id)string stringIsUppercase:(BOOL)uppercase;
- (id)CKHexString;
- (id)CKLowercaseHexStringWithoutSpaces;
- (id)CKUppercaseHexStringWithoutSpaces;
@end

@implementation NSData

- (id)CKHexString
{
  selfCopy = self;
  bytes = [(NSData *)selfCopy bytes];
  v4 = [(NSData *)selfCopy length];
  if (v4 > 0x5555555555555555)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_27;
  }

  v7 = v4;
  v8 = malloc_type_calloc(1uLL, ((9 * v4) >> 2) & 0x1FFFFFFFFFFFFFFFLL, 0xAB083FFBuLL);
  v6 = v8;
  if (v7 >= 5)
  {
    v9 = 0;
    v10 = bytes;
    v11 = v8;
    do
    {
      v12 = 0;
      ++v11;
      do
      {
        if (v10[v12] <= 0x9Fu)
        {
          v13 = (v10[v12] >> 4) | 0x30;
        }

        else
        {
          v13 = (v10[v12] >> 4) + 87;
        }

        *(v11 - 1) = v13;
        v14 = v10[v12] & 0xF;
        if (v14 <= 9)
        {
          v15 = v14 | 0x30;
        }

        else
        {
          v15 = v14 + 87;
        }

        *v11 = v15;
        v11 += 2;
        ++v12;
      }

      while (v12 != 4);
      *(v11 - 1) = 32;
      v9 += 4;
      v7 -= 4;
      v10 += 4;
    }

    while (v7 > 4);
    if (!v7)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v9 = 0;
  v11 = v8;
  if (v7)
  {
LABEL_17:
    v16 = &bytes[v9];
    do
    {
      if (*v16 <= 0x9Fu)
      {
        v17 = (*v16 >> 4) | 0x30;
      }

      else
      {
        v17 = (*v16 >> 4) + 87;
      }

      *v11 = v17;
      v18 = *v16++;
      v19 = (v18 & 0xF) + 87;
      v20 = v18 & 0xF | 0x30;
      if ((v18 & 0xFu) <= 9)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      v22 = v11 + 2;
      v11[1] = v21;
      v11 += 2;
      --v7;
    }

    while (v7);
    v11 = v22;
  }

LABEL_26:
  v5 = v11 - v8;
LABEL_27:
  v23 = [[NSString alloc] initWithBytesNoCopy:v6 length:v5 encoding:1 freeWhenDone:1];

  return v23;
}

- (id)CKLowercaseHexStringWithoutSpaces
{
  cKHexString = [(NSData *)self CKHexString];
  v3 = [cKHexString mutableCopy];

  [v3 replaceOccurrencesOfString:@" " withString:&stru_5A178 options:0 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

- (id)CKUppercaseHexStringWithoutSpaces
{
  cKHexString = [(NSData *)self CKHexString];
  uppercaseString = [cKHexString uppercaseString];
  v4 = [uppercaseString mutableCopy];

  [v4 replaceOccurrencesOfString:@" " withString:&stru_5A178 options:0 range:{0, objc_msgSend(v4, "length")}];

  return v4;
}

+ (id)CKDataWithHexString:(id)string stringIsUppercase:(BOOL)uppercase
{
  uppercaseCopy = uppercase;
  stringCopy = string;
  v6 = objc_alloc_init(NSMutableData);
  if (uppercaseCopy)
  {
    v7 = @"0123456789ABCDEF";
  }

  else
  {
    v7 = @"0123456789abcdef";
  }

  if (uppercaseCopy)
  {
    v8 = -65;
  }

  else
  {
    v8 = -97;
  }

  v9 = [NSCharacterSet characterSetWithCharactersInString:v7];
  if ([stringCopy length])
  {
    v10 = 0;
    do
    {
      v11 = v10;
      if ([stringCopy length] <= v10)
      {
        v14 = 0;
        LODWORD(v13) = 0;
      }

      else
      {
        v12 = v10 + 1;
        do
        {
          v10 = v12;
          v13 = [stringCopy characterAtIndex:v11];
          v14 = [v9 characterIsMember:v13];
          v11 = v10;
          if (v14)
          {
            break;
          }

          v15 = [stringCopy length];
          v12 = v10 + 1;
        }

        while (v15 > v10);
      }

      if ([stringCopy length] <= v11)
      {
        break;
      }

      ++v10;
      while (1)
      {
        v16 = [stringCopy characterAtIndex:v11];
        if ([v9 characterIsMember:v16])
        {
          break;
        }

        v11 = v10;
        if ([stringCopy length] <= v10++)
        {
          goto LABEL_27;
        }
      }

      if (!v14)
      {
        break;
      }

      v18 = v16 - 48;
      if ((v16 - 48) >= 0xA)
      {
        v18 = v8 + v16 + 10;
      }

      v19 = (v13 - 48) >= 0xA ? 16 * v13 - 112 : 16 * v13;
      v21 = v18 + v19;
      [v6 appendBytes:&v21 length:1];
    }

    while ([stringCopy length] > v10);
  }

LABEL_27:

  return v6;
}

@end
@interface TTSUnicodeUtils
+ (_NSRange)utf16RangeFromUTF8Range:(_NSRange)range chars:(const char *)chars size:(unint64_t)size;
+ (_NSRange)utf8RangeFromUTF16Range:(_NSRange)range chars:(const unsigned __int16 *)chars size:(unint64_t)size;
+ (unsigned)codePointToUtf8ByteSize:(unsigned int)size;
@end

@implementation TTSUnicodeUtils

+ (unsigned)codePointToUtf8ByteSize:(unsigned int)size
{
  if (size < 0x10000)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  if (size >= 0x800)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (size >= 0x80)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

+ (_NSRange)utf8RangeFromUTF16Range:(_NSRange)range chars:(const unsigned __int16 *)chars size:(unint64_t)size
{
  location = range.location;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = range.location + range.length;
  do
  {
    if (v8 >= size)
    {
      break;
    }

    v12 = &chars[v8];
    v13 = *v12;
    if ((v13 & 0xFC00) == 0xD800)
    {
      v13 = ((v12[1] - 56320) | ((v13 << 10) - 56623104)) + 0x10000;
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = objc_opt_class();
    v19 = objc_msgSend_codePointToUtf8ByteSize_(v15, v16, v13, v17, v18);
    if (v8 == location)
    {
      v10 = v9;
    }

    if (v8 == v11)
    {
      v20 = v9 - v10;
      goto LABEL_14;
    }

    v8 += v14;
    v9 += v19;
  }

  while (v8 <= v11);
  if (v8 == v11)
  {
    v20 = v9 - v10;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = 0;
  }

LABEL_14:
  v21 = v10;
  result.length = v20;
  result.location = v21;
  return result;
}

+ (_NSRange)utf16RangeFromUTF8Range:(_NSRange)range chars:(const char *)chars size:(unint64_t)size
{
  length = range.length;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (range.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (size)
    {
      v7 = 0;
      v8 = 0;
      v6 = 0;
      length = 0;
      while (1)
      {
        v9 = chars[v8];
        if (v9 < 0)
        {
          if ((v9 & 0xE0) == 0xC0)
          {
            v10 = 1;
            v11 = 2;
          }

          else if ((v9 & 0xF0) == 0xE0)
          {
            v10 = 1;
            v11 = 3;
          }

          else
          {
            if ((v9 & 0xF8) != 0xF0)
            {
              break;
            }

            v10 = 2;
            v11 = 4;
          }
        }

        else
        {
          v10 = 1;
          v11 = 1;
        }

        v12 = v11 + v8;
        if (v12 > size)
        {
          break;
        }

        if (v8 == range.location)
        {
          v6 = v7;
        }

        if (v8 < range.location + range.length && v8 >= range.location)
        {
          v14 = v10;
        }

        else
        {
          v14 = 0;
        }

        length += v14;
        v7 += v10;
        v8 = v12;
        if (v12 >= size)
        {
          goto LABEL_25;
        }
      }

      length = 0;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = 0;
      length = 0;
    }
  }

LABEL_25:
  result.length = length;
  result.location = v6;
  return result;
}

@end
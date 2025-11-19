@interface AAAssetHelper
+ (BOOL)_productColorAssetExists:(unsigned int)a3 withColor:(unsigned __int8)a4;
+ (id)bluetoothProductIDToAsset:(unsigned int)a3 withColor:(unsigned __int8)a4 isCase:(BOOL)a5;
+ (unsigned)_getDefaultColorCode:(unsigned int)a3;
@end

@implementation AAAssetHelper

+ (id)bluetoothProductIDToAsset:(unsigned int)a3 withColor:(unsigned __int8)a4 isCase:(BOOL)a5
{
  if (a5)
  {
    [a1 _bluetoothProductIDToCaseAsset:? withColor:?];
  }

  else
  {
    [a1 _bluetoothProductIDToAsset:? withColor:?];
  }
  v5 = ;
  if (dword_1002F6D98 <= 30 && (dword_1002F6D98 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v5;
}

+ (unsigned)_getDefaultColorCode:(unsigned int)a3
{
  result = -1;
  if (a3 > 8220)
  {
    if (a3 <= 8228)
    {
      if (a3 != 8221)
      {
        v4 = a3 == 8223;
        v5 = 19;
LABEL_16:
        if (v4)
        {
          return v5;
        }

        else
        {
          return -1;
        }
      }

      return 1;
    }

    if (a3 == 8239)
    {
      return 10;
    }

    if (a3 == 8230)
    {
      return 1;
    }

    if (a3 != 8229)
    {
      return result;
    }

    return 0;
  }

  if (a3 <= 8213)
  {
    if (a3 - 8209 >= 2)
    {
      v4 = a3 == 8202;
      v5 = 16;
      goto LABEL_16;
    }

    return 1;
  }

  if (a3 == 8214)
  {
    return 0;
  }

  if (a3 == 8215 || a3 == 8218)
  {
    return 1;
  }

  return result;
}

+ (BOOL)_productColorAssetExists:(unsigned int)a3 withColor:(unsigned __int8)a4
{
  if (a3 <= 8217)
  {
    if (a3 > 8209)
    {
      if (a3 == 8210)
      {
        if (a4 < 0xAu)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (a3 != 8214)
        {
          if (a3 != 8215 || a4 >= 0xEu)
          {
            goto LABEL_38;
          }

          v4 = 13050;
          goto LABEL_37;
        }

        if (a4 < 5u)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_38;
    }

    if (a3 != 8202)
    {
      if (a3 != 8209 || a4 != 1)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    if (a4 >= 0x12u)
    {
      goto LABEL_38;
    }

    v4 = 229388;
    goto LABEL_37;
  }

  if (a3 > 8228)
  {
    if (a3 == 8229)
    {
      if (a4 < 7u)
      {
        v4 = 103;
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (a3 != 8230)
    {
      if (a3 == 8239)
      {
        v5 = a4 - 10;
        goto LABEL_27;
      }

      goto LABEL_38;
    }

    if (a4 >= 7u)
    {
      goto LABEL_38;
    }

    v4 = 94;
LABEL_37:
    v6 = v4 >> a4;
    return v6 & 1;
  }

  if (a3 == 8218)
  {
    if (a4 < 0xAu)
    {
      v4 = 982;
      goto LABEL_37;
    }

LABEL_38:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (a3 != 8221)
  {
    if (a3 != 8223 || (a4 - 18) >= 5)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v5 = a4 - 1;
LABEL_27:
  if (v5 >= 4u)
  {
    goto LABEL_38;
  }

LABEL_32:
  LOBYTE(v6) = 1;
  return v6 & 1;
}

@end
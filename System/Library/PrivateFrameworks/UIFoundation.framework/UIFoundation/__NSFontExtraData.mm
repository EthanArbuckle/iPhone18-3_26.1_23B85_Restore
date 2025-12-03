@interface __NSFontExtraData
- (BOOL)_hasVerticalMetricsWithPlatformFont:(__CTFont *)font;
- (BOOL)isEqualToExtraData:(id)data;
- (double)initWithFont:(void *)font;
- (void)dealloc;
@end

@implementation __NSFontExtraData

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = __NSFontExtraData;
  [(__NSFontExtraData *)&v3 dealloc];
}

- (BOOL)isEqualToExtraData:(id)data
{
  if (!data)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  if (self == data)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  if (((*(data + 24) ^ *&self->_fFlags) & 2) != 0)
  {
    goto LABEL_9;
  }

  textStyleForScaling = self->_textStyleForScaling;
  if (textStyleForScaling == *(data + 4) || (v6 = [(NSString *)textStyleForScaling isEqual:?]) != 0)
  {
    if (self->_pointSizeForScaling == *(data + 5))
    {
      LOBYTE(v6) = self->_maximumPointSizeAfterScaling == *(data + 6);
      return v6;
    }

LABEL_9:
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_hasVerticalMetricsWithPlatformFont:(__CTFont *)font
{
  v3 = *&self->_fFlags & 0xC;
  if ((*&self->_fFlags & 0xC) == 0)
  {
    v3 = 8;
    if ((CTFontHasTable() & 1) == 0)
    {
      if (CTFontHasTable())
      {
        v3 = 8;
      }

      else
      {
        v3 = 4;
      }
    }

    *&self->_fFlags = *&self->_fFlags & 0xF3 | v3;
  }

  return v3 == 8;
}

- (double)initWithFont:(void *)font
{
  if (!font)
  {
    return 0;
  }

  v10.receiver = font;
  v10.super_class = __NSFontExtraData;
  v3 = objc_msgSendSuper2(&v10, sel_init);
  if (v3)
  {
    *(v3 + 24) = v3[3] & 0xFE | CTFontIsSystemUIFont();
    Ascent = CTFontGetAscent(a2);
    Descent = CTFontGetDescent(a2);
    v6 = 0.0;
    if ((CTFontIsTextStyleFont() & 1) == 0)
    {
      v7 = CTFontCopyPostScriptName(a2);
      if (v7)
      {
        v8 = v7;
        if (CFStringHasPrefix(v7, @"Times-") || CFStringHasPrefix(v8, @"Helvetica-") || CFEqual(v8, @"Helvetica"))
        {
          v6 = (Ascent + Descent) * 0.15;
        }

        CFRelease(v8);
      }
    }

    v3[1] = Ascent + v6;
    v3[2] = Descent + Ascent + v6;
  }

  return v3;
}

@end
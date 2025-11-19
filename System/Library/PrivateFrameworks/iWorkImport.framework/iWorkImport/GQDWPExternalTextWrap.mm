@interface GQDWPExternalTextWrap
- (int)readAttributesFromReader:(_xmlTextReader *)a3;
@end

@implementation GQDWPExternalTextWrap

- (int)readAttributesFromReader:(_xmlTextReader *)a3
{
  self->mFloatingWrapEnabled = sub_42340(a3, qword_A35E8, "floating-wrap-enabled", 0);
  self->mInlineWrapEnabled = sub_42340(a3, qword_A35E8, "inline-wrap-enabled", 0);
  v9 = 0.0;
  if (!sub_426B0(a3, qword_A35E8, "margin", &v9))
  {
    return 3;
  }

  v5 = v9;
  self->mMargin = v5;
  if (!sub_426B0(a3, qword_A35E8, "alpha-threshold", &v9))
  {
    return 3;
  }

  v6 = v9;
  self->mAlphaThreshold = v6;
  if (!sub_42FBC(a3, qword_A35E8, "wrap-style", &dword_A4160, &self->mWrapStyle) || !sub_42FBC(a3, qword_A35E8, "direction", &dword_A4190, &self->mWrapDirection))
  {
    return 3;
  }

  v7 = 3;
  if (sub_42FBC(a3, qword_A35E8, "attachment-wrap-type", &dword_A41D0, &self->mAttachmentWrapType))
  {
    if (sub_42FBC(a3, qword_A35E8, "floating-wrap-type", &dword_A4200, &self->mFloatingWrapType))
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

@end
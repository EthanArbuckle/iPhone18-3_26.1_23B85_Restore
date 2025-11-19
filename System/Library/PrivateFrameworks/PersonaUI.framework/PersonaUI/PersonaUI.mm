void PRRectGetMinLength(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetWidth(*&a1);
  v8.origin.x = a1;
  v8.origin.y = a2;
  v8.size.width = a3;
  v8.size.height = a4;
  CGRectGetHeight(v8);
}

void PRRectGetMaxLength(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetWidth(*&a1);
  v8.origin.x = a1;
  v8.origin.y = a2;
  v8.size.width = a3;
  v8.size.height = a4;
  CGRectGetHeight(v8);
}

double PRRectScale(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v11 = CGRectGetWidth(*&a1) * a5;
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v12 = CGRectGetWidth(v21) - v11;
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  v13 = CGRectGetHeight(v22) * a6;
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  v14 = (CGRectGetHeight(v23) - v13) * 0.5;
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;

  *&result = CGRectInset(*&v15, v12 * 0.5, v14);
  return result;
}

void _InvalidPRLikenessCacheSize(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v3 = [v1 stringWithFormat:@"Unsupported PRLikenessCacheSize provided: %@", v2];

  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v3 userInfo:0];
  objc_exception_throw(v4);
}

__CFString *NSStringFromPRLikenessCacheSize(uint64_t a1)
{
  if (a1 <= 127)
  {
    if (a1 == 32)
    {
      return @"32x32";
    }

    else
    {
      if (a1 != 64)
      {
        goto LABEL_12;
      }

      return @"64x64";
    }
  }

  else
  {
    switch(a1)
    {
      case 128:
        return @"128x128";
      case 256:
        return @"256x256";
      case 512:
        return @"512x512";
      default:
LABEL_12:
        _InvalidPRLikenessCacheSize(a1);
    }
  }
}

double CGSizeFromPRLikenessCacheSize(uint64_t a1)
{
  if (a1 <= 127)
  {
    if (a1 == 32)
    {
      return 32.0;
    }

    if (a1 == 64)
    {
      return 64.0;
    }

LABEL_13:
    _InvalidPRLikenessCacheSize(a1);
  }

  if (a1 == 128)
  {
    return 128.0;
  }

  if (a1 == 256)
  {
    return 256.0;
  }

  if (a1 != 512)
  {
    goto LABEL_13;
  }

  return 512.0;
}

uint64_t PRLikenessCacheSizeGetCost(uint64_t a1)
{
  if (a1 <= 127)
  {
    if (a1 == 32)
    {
      return 1024;
    }

    else
    {
      if (a1 != 64)
      {
        goto LABEL_12;
      }

      return 4096;
    }
  }

  else
  {
    switch(a1)
    {
      case 128:
        return 0x4000;
      case 256:
        return 0x10000;
      case 512:
        return 0x40000;
      default:
LABEL_12:
        _InvalidPRLikenessCacheSize(a1);
    }
  }
}

uint64_t PRLikenessCacheSizeClosestToSize(double a1, double a2)
{
  if (a1 < a2)
  {
    a1 = a2;
  }

  if (a1 <= 32.0)
  {
    return 32;
  }

  if (a1 <= 64.0)
  {
    return 64;
  }

  if (a1 <= 128.0)
  {
    return 128;
  }

  if (a1 <= 256.0)
  {
    return 256;
  }

  return 512;
}

CGImageRef PRImageCreateWithImageInRect(CGImage *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (CGRectIsNull(*&a2) || (v16.origin.x = a2, v16.origin.y = a3, v16.size.width = a4, v16.size.height = a5, CGRectIsEmpty(v16)))
  {

    return CGImageRetain(a1);
  }

  else
  {
    v11 = a2;
    v12 = a3;
    v13 = a4;
    v14 = a5;

    return CGImageCreateWithImageInRect(a1, *&v11);
  }
}

CGImageRef PRImageCreateCircularImageInRect(CGImage *a1, CGFloat a2, CGFloat a3, CGFloat Width, CGFloat Height)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a2;
  if (CGRectIsNull(*&a2) || (v22.origin.x = v8, v22.origin.y = a3, v22.size.width = Width, v22.size.height = Height, CGRectIsEmpty(v22)))
  {
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    v8 = 0.0;
    a3 = 0.0;
  }

  v23.origin.x = v8;
  v23.origin.y = a3;
  v23.size.width = Width;
  v23.size.height = Height;
  v10 = CGRectGetWidth(v23);
  v24.origin.x = v8;
  v24.origin.y = a3;
  v24.size.width = Width;
  v24.size.height = Height;
  v11 = CGRectGetHeight(v24);
  v25.origin.x = v8;
  v25.origin.y = a3;
  v25.size.width = Width;
  v25.size.height = Height;
  v12 = vcvtd_n_u64_f64(CGRectGetWidth(v25), 2uLL);
  ColorSpace = CGImageGetColorSpace(a1);
  v14 = CGBitmapContextCreate(0, v10, v11, 8uLL, v12, ColorSpace, 0x2001u);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v26.origin.x = v8;
  v26.origin.y = a3;
  v26.size.width = Width;
  v26.size.height = Height;
  v16 = CGRectGetWidth(v26);
  v27.origin.x = v8;
  v27.origin.y = a3;
  v27.size.width = Width;
  v27.size.height = Height;
  v28.size.height = CGRectGetHeight(v27);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = v16;
  CGContextAddEllipseInRect(v15, v28);
  CGContextClip(v15);
  v29.origin.x = v8;
  v29.origin.y = a3;
  v29.size.width = Width;
  v29.size.height = Height;
  v17 = -CGRectGetMinX(v29);
  v30.origin.x = v8;
  v30.origin.y = a3;
  v30.size.width = Width;
  v30.size.height = Height;
  v18 = -CGRectGetMinY(v30);
  v19 = CGImageGetWidth(a1);
  v31.size.height = CGImageGetHeight(a1);
  v31.origin.x = v17;
  v31.origin.y = v18;
  v31.size.width = v19;
  CGContextDrawImage(v15, v31, a1);
  Image = CGBitmapContextCreateImage(v15);
  CGContextRelease(v15);
  return Image;
}

void PRImageForceDecompress(CGImage *a1)
{
  if (a1)
  {
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    BitsPerComponent = CGImageGetBitsPerComponent(a1);
    BytesPerRow = CGImageGetBytesPerRow(a1);
    ColorSpace = CGImageGetColorSpace(a1);
    AlphaInfo = CGImageGetAlphaInfo(a1);
    BitmapInfo = CGImageGetBitmapInfo(a1);
    v9 = CGBitmapContextCreate(0, Width, Height, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo | AlphaInfo);
    if (v9)
    {
      v10 = v9;
      v12.origin.x = *MEMORY[0x277CBF348];
      v12.origin.y = *(MEMORY[0x277CBF348] + 8);
      v12.size.width = Width;
      v12.size.height = Height;
      CGContextDrawImage(v9, v12, a1);

      CGContextRelease(v10);
    }
  }
}

void sub_25E43DE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}
void sub_100000EF4(id a1)
{
  NCLogThumbnailProvider = os_log_create("com.apple.UserNotificationsUI", "ThumbnailProvider");

  _objc_release_x1();
}

uint64_t sub_10000164C(uint64_t a1, CGContextRef c)
{
  v4.size.width = *(a1 + 40);
  v4.size.height = *(a1 + 48);
  v4.origin.x = 0.0;
  v4.origin.y = 0.0;
  CGContextDrawImage(c, v4, *(*(*(a1 + 32) + 8) + 24));
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
  return 1;
}

CGImageRef sub_1000016A4(CGImage *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v34 = a2 * Width;
  v16 = a3 * Height;
  v17 = Width;
  v18 = a4 * Width;
  v19 = a5 * Height;
  v20 = a6 / a7;
  v21 = BSCompareFloats();
  if (v21 == 1)
  {
    v23 = v19 / 3.0;
    v19 = v18 / v20;
    v16 = v16 + v23 + v18 / v20 * -0.5;
  }

  else if (v21 == -1)
  {
    v22 = v34 + (v18 - v20 * v19) * 0.5;
    v18 = v20 * v19;
    goto LABEL_6;
  }

  v22 = v34;
LABEL_6:
  v24 = floor(v18);
  v25 = floor(v19);
  if (v24 == v17 && v25 == Height)
  {

    return CGImageCreateByScaling();
  }

  else
  {
    v27 = floor(v16);
    v28 = floor(v22);
    if (v27 >= 0.0)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0.0;
    }

    if (v28 >= 0.0)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0.0;
    }

    result = CGImageCreateWithImageInRect(a1, *(&v24 - 2));
    if (result)
    {
      v32 = result;
      v33 = CGImageCreateByScaling();
      CFRelease(v32);
      return v33;
    }
  }

  return result;
}
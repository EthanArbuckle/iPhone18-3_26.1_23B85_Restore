void PXGViewPreloadResources()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = MTLCreateSystemDefaultDevice();
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = 0;
  v2 = [v0 newDefaultLibraryWithBundle:v1 error:&v6];
  v3 = v6;

  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    v5 = PXAssertGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_21AD38000, v5, OS_LOG_TYPE_ERROR, "Failed to preload library:%@", buf, 0xCu);
    }
  }
}

uint64_t __PXGDeviceIsKnownToHaveExtendedColorDisplay_block_invoke()
{
  result = MGGetBoolAnswer();
  PXGDeviceIsKnownToHaveExtendedColorDisplay_hasExtendedColorDisplay = result;
  return result;
}

id PXGCreateMetalTextureFromBytesInCGImage(CGImage *a1, void *a2, int *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__3120;
  v53 = __Block_byref_object_dispose__3121;
  v54 = 0;
  v8 = [v7 device];
  v9 = [v8 limits];
  LODWORD(v3) = *(v9 + 132);
  LODWORD(v4) = *(v9 + 136);

  v10 = v3;
  v11 = v4;
  if (CGImageGetImageProvider())
  {
    v12 = CGImageProviderCopyImageTextureData();
    if (v12)
    {
      PixelFormat = CGImageTextureDataGetPixelFormat();
      CGImageTextureDataGetSize();
      v16 = v15;
      v45 = 0;
      v46 = &v45;
      v47 = 0x2020000000;
      v48 = 1;
      if (PixelFormat)
      {
        v17 = v14;
        v18 = [v7 device];
        v57 = 0;
        v56 = 0u;
        memset(buf, 0, sizeof(buf));
        MTLPixelFormatGetInfoForDevice();
        v19 = (~*&buf[8] & 5) == 0;

        if (v19)
        {
          if (MEMORY[0x21CEE38D0](v16, v17, v10, v11))
          {
            v20 = PXGTungstenGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v60.width = v16;
              v60.height = v17;
              v21 = NSStringFromCGSize(v60);
              v61.width = v10;
              v61.height = v11;
              v22 = NSStringFromCGSize(v61);
              v23 = [v7 device];
              *buf = 138543874;
              *&buf[4] = v21;
              *&buf[12] = 2114;
              *&buf[14] = v22;
              *&buf[22] = 2114;
              *&buf[24] = v23;
              _os_log_impl(&dword_21AD38000, v20, OS_LOG_TYPE_ERROR, "Texture Data is too large %{public}@ > %{public}@ for device:%{public}@", buf, 0x20u);
            }
          }

          else
          {
            if (CGImageTextureDataSupportsTiledLayout())
            {
              PFDeviceIsVirtualMachine();
            }

            v44 = v7;
            CGImageTextureDataGetDataWithBlock();
            v20 = v44;
          }
        }

        else
        {
          v20 = PXGTungstenGetLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v7 device];
            *buf = 134218242;
            *&buf[4] = PixelFormat;
            *&buf[12] = 2114;
            *&buf[14] = v24;
            _os_log_impl(&dword_21AD38000, v20, OS_LOG_TYPE_DEFAULT, "Texture Data pixelFormat:%lu not supported for device:%{public}@", buf, 0x16u);
          }
        }
      }

      else
      {
        v20 = PXGTungstenGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(&dword_21AD38000, v20, OS_LOG_TYPE_ERROR, "Texture Data has no valid pixelFormat:%@", buf, 0xCu);
        }
      }

      if (*(v46 + 24) == 1)
      {
        CGImageTextureDataRelease();
      }

      _Block_object_dispose(&v45, 8);
    }
  }

  if (!v50[5])
  {
    v25 = PXGMetalPixelFormatForCGImage(a1, a3);
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    if (!v25)
    {
      v30 = PXGTungstenGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = a1;
        v33 = "Image has no valid metal pixel format:%@";
LABEL_28:
        _os_log_impl(&dword_21AD38000, v30, OS_LOG_TYPE_ERROR, v33, buf, 0xCu);
      }

LABEL_29:

      goto LABEL_30;
    }

    v28 = Width;
    v29 = Height;
    if (MEMORY[0x21CEE38D0](Width, Height, v10, v11))
    {
      v30 = PXGTungstenGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v62.width = v10;
        v62.height = v11;
        v31 = NSStringFromCGSize(v62);
        v32 = [v7 device];
        *buf = 138543874;
        *&buf[4] = a1;
        *&buf[12] = 2114;
        *&buf[14] = v31;
        *&buf[22] = 2114;
        *&buf[24] = v32;
        _os_log_impl(&dword_21AD38000, v30, OS_LOG_TYPE_ERROR, "Too large image %{public}@ > %{public}@ for device:%{public}@", buf, 0x20u);
      }

      goto LABEL_29;
    }

    if (CGImageGetAlphaInfo(a1) - 3 <= 1)
    {
      v30 = PXGTungstenGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = a1;
        v33 = "Image has straight alpha %{public}@";
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    BytesPerRow = CGImageGetBytesPerRow(a1);
    DataProvider = CGImageGetDataProvider(a1);
    BytePtr = CGDataProviderRetainBytePtr();
    if (BytePtr)
    {
      v39 = 0;
    }

    else
    {
      v43 = CGDataProviderCopyData(DataProvider);
      v39 = v43;
      if (!v43)
      {
        goto LABEL_30;
      }

      if (CFDataGetLength(v43) < 1 || (BytePtr = CFDataGetBytePtr(v39)) == 0)
      {
LABEL_38:
        CFRelease(v39);
        goto LABEL_30;
      }
    }

    v40 = _createMetal2DTextureWithPixelFormat(v25, v7, 0, v28, v29);
    v41 = v50[5];
    v50[5] = v40;

    v42 = v50[5];
    if (v42)
    {
      memset(buf, 0, 24);
      *&buf[24] = v28;
      *&v56 = v29;
      *(&v56 + 1) = 1;
      [v7 copyBytes:BytePtr toTexture:v42 inRegion:buf length:(v29 * BytesPerRow) bytesPerRow:? bytesPerImage:?];
    }

    if (v39)
    {
      goto LABEL_38;
    }

    CGDataProviderReleaseBytePtr();
  }

LABEL_30:
  v34 = v50[5];
  _Block_object_dispose(&v49, 8);

  return v34;
}

void sub_21AD3B5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PXGMetalPixelFormatForCGImage(CGImage *a1, int *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  BitmapInfo = CGImageGetBitmapInfo(a1);
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  if ((BitmapInfo & 0x1B) == 1)
  {
    v7 = 0;
    v9 = 0;
    v8 = 1;
  }

  else if ((BitmapInfo & 0x1B) == 2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (BitmapInfo & 0x1F) == 7;
  }

  if ((BitmapInfo & 0x3000) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if ((BitmapInfo & 0x3000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if ((BitmapInfo & 0x3000) != 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if ((BitmapInfo & 0x3000) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  v14 = (BitsPerPixel + BitsPerComponent - 1) / BitsPerComponent;
  if ((BitmapInfo & 0x100) != 0)
  {
    if (v14 == 4)
    {
      v18 = 0;
      if (BitsPerComponent == 16)
      {
        v17 = 115;
        goto LABEL_67;
      }

      if (BitsPerComponent == 32)
      {
        v18 = 0;
        v17 = 125;
        goto LABEL_67;
      }

      goto LABEL_63;
    }

LABEL_43:
    v17 = 0;
    v18 = 0;
LABEL_64:
    v21 = PXGTungstenGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412290;
      v25 = a1;
      _os_log_impl(&dword_21AD38000, v21, OS_LOG_TYPE_DEBUG, "No matching MTLPixelFormat for image:%@", &v24, 0xCu);
    }

    goto LABEL_67;
  }

  if (BitsPerComponent != 8)
  {
    if (BitsPerComponent == 5)
    {
      v15 = v14 != 4;
      if (v14 == 4)
      {
        v16 = v10;
      }

      else
      {
        v16 = 1;
      }

      if (v14 == 4)
      {
        v17 = 43;
      }

      else
      {
        v17 = 0;
      }

      v18 = 0;
      if ((v16 & 1) == 0)
      {
        if (v12)
        {
          v17 = 41;
          goto LABEL_67;
        }

LABEL_63:
        v17 = 0;
        goto LABEL_64;
      }
    }

    else
    {
      v19 = BitsPerComponent == 16 && v14 == 4;
      v15 = !v19;
      if (v19)
      {
        v20 = v13;
      }

      else
      {
        v20 = 1;
      }

      if (v19)
      {
        v17 = 110;
      }

      else
      {
        v17 = 0;
      }

      if (((v11 | v20) & 1) == 0)
      {
        v18 = 0;
        if (v12)
        {
          v17 = 110;
          goto LABEL_67;
        }

        goto LABEL_63;
      }

      v18 = v20 ^ 1;
    }

    if (!v15)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  if (v14 != 4)
  {
    if (v14 == 2)
    {
      v18 = 8;
      v17 = 30;
      goto LABEL_67;
    }

    if (v14 == 1)
    {
      if (v7)
      {
        v18 = 0;
      }

      else
      {
        v18 = 4;
      }

      if (v7)
      {
        v17 = 1;
      }

      else
      {
        v17 = 10;
      }

      goto LABEL_67;
    }

    goto LABEL_43;
  }

  if ((BitmapInfo & 0x3000) != 0)
  {
    v23 = v9;
  }

  else
  {
    v23 = v8;
  }

  if (v10)
  {
    v17 = 80;
  }

  else
  {
    v17 = 70;
  }

  if (v23)
  {
    v18 = 0;
    goto LABEL_67;
  }

  if (v12)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  if (v12)
  {
    v17 = 80;
  }

  else
  {
    v17 = 0;
  }

  if (v11)
  {
    v18 = 1;
    v17 = 70;
    goto LABEL_67;
  }

  if (v12 != 1)
  {
    goto LABEL_64;
  }

LABEL_67:
  if (a2)
  {
    *a2 = v18;
  }

  return v17;
}

id _createMetal2DTextureWithPixelFormat(uint64_t a1, void *a2, int a3, double a4, double a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = [v9 device];
  v11 = _createMetal2DTextureDescriptorWithPixelFormat(a1, a3, a4, a5);

  v12 = [v9 newTextureWithDescriptor:v11];
  if (!v12)
  {
    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v15 = [v9 device];
      v16 = 138412802;
      v17 = v15;
      v18 = 2048;
      v19 = a1;
      v20 = 2112;
      v21 = v11;
      _os_log_fault_impl(&dword_21AD38000, v13, OS_LOG_TYPE_FAULT, "Device:%@ failed to create pixelFormat:%lu texture:%@", &v16, 0x20u);
    }
  }

  return v12;
}

id _createMetal2DTextureDescriptorWithPixelFormat(uint64_t a1, int a2, double a3, double a4)
{
  v5 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a1 width:a3 height:a4 mipmapped:0];
  [v5 setResourceOptions:0];
  if (a2)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  [v5 setUsage:v6];

  return v5;
}

uint64_t PXGRequiresColorMatching(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a2 && a1 && a1 != a2)
  {
    if (CGColorSpaceIsUncalibrated())
    {
      return 0;
    }

    PXGetColorSpace();
    if (CGColorSpaceEqualToColorSpaceIgnoringRange() && ((PXGetColorSpace(), (CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) != 0) || CGColorSpaceGetType() < 2))
    {
      return 0;
    }

    else
    {
      return CGColorSpaceEqualToColorSpaceIgnoringRange() ^ 1;
    }
  }

  return result;
}

void __PXGPlaceholderImageWithColor_block_invoke(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 48);
  v14[0] = *(a1 + 32);
  v14[1] = v11;
  v12 = PXGetColorSpace();
  v13 = CGColorCreate(v12, v14);
  CGContextSetFillColorWithColor(a2, v13);
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  CGContextFillRect(a2, v16);
  CGColorRelease(v13);
}

void sub_21AD3E9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AD3EAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_PXGArrayInsertRange(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5 + a4;
  v9 = a3 - (a5 + a4);
  if (a3 < a5 + a4)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _PXGArrayInsertRange(void * _Nonnull, size_t, size_t, size_t, size_t)"}];
    [v11 handleFailureInFunction:v12 file:@"PXGArrayUtilities.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"location + length <= count"}];
  }

  return memmove((a1 + v8 * a2), (a1 + a4 * a2), v9 * a2);
}

void sub_21AD41CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose((v67 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t PXGAXInfoKindForMediaKind(unsigned int a1)
{
  if (a1 >= 0xD)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXGAXInfoKind PXGAXInfoKindForMediaKind(PXGMediaKind)"];
    [v6 handleFailureInFunction:v7 file:@"PXGLayout+AX.m" lineNumber:48 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return qword_21AE2D9F8[a1];
}

uint64_t PXGItemsGeometryItemClosestToItemVerticalGridDefaultImplementation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a2 <= 6)
    {
      if (((1 << a2) & 0x34) != 0)
      {
        v4 = 0;
      }

      else
      {
        if (((1 << a2) & 0x4A) == 0)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }

        v4 = a4 - 1;
        if (a4 < 1)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      goto LABEL_17;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a2 > 3)
  {
    if ((a2 - 4) >= 2)
    {
      if (a2 != 6)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_16:
      v4 = a1 - 1;
LABEL_17:
      if (v4 < a4)
      {
        v8 = __OFSUB__(v4, -1);
        v6 = v4 == -1;
        v7 = v4 + 1 < 0;
      }

      else
      {
        v8 = 0;
        v6 = 1;
        v7 = 0;
      }

      if (v7 ^ v8 | v6)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        return v4;
      }
    }

    v5 = a1 + 1;
  }

  else
  {
    switch(a2)
    {
      case 1:
        v5 = a1 - a3;
        break;
      case 2:
        v5 = a3 + a1;
        break;
      case 3:
        goto LABEL_16;
      default:
        return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (v5 < a4)
  {
    v12 = __OFSUB__(v5, -1);
    v10 = v5 == -1;
    v11 = v5 + 1 < 0;
  }

  else
  {
    v12 = 0;
    v10 = 1;
    v11 = 0;
  }

  if (v11 ^ v12 | v10)
  {
    result = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    result = v5;
  }

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

id PXGTungstenGetLog()
{
  if (PXGTungstenGetLog_predicate != -1)
  {
    dispatch_once(&PXGTungstenGetLog_predicate, &__block_literal_global_2408);
  }

  v1 = PXGTungstenGetLog_log;

  return v1;
}

void __PXGTungstenGetLog_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D3A848], "Tungsten");
  v1 = PXGTungstenGetLog_log;
  PXGTungstenGetLog_log = v0;
}

void sub_21AD49EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

void *_PXGArrayRemoveRange(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5 + a4;
  v9 = a3 - (a5 + a4);
  if (a3 < a5 + a4)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _PXGArrayRemoveRange(void * _Nonnull, size_t, size_t, size_t, size_t)"}];
    [v11 handleFailureInFunction:v12 file:@"PXGArrayUtilities.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"location + length <= count"}];
  }

  return memmove((a1 + a4 * a2), (a1 + v8 * a2), v9 * a2);
}

double _spriteTransformFromSelfAndParent(__int128 *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    *(a1 + 6) = *(a2 + 120);
    v6 = *(a2 + 88);
    *a1 = *(a2 + 72);
    a1[1] = v6;
    a1[2] = *(a2 + 104);
    v7 = *(a1 + 6);
  }

  else
  {
    *(a1 + 6) = 0;
    *a1 = *PXGSpriteGeometryTransformIdentity;
    a1[1] = *&PXGSpriteGeometryTransformIdentity[16];
    a1[2] = *&PXGSpriteGeometryTransformIdentity[32];
    v7 = 0.0;
  }

  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = a1[1];
  *&v21.a = *a1;
  *&v21.c = v10;
  v12 = *a1;
  v11 = a1[1];
  *&v21.tx = a1[2];
  *&t1.a = v12;
  v13 = *(a2 + 64);
  v14 = a1[2];
  *&t1.c = v11;
  *&t1.tx = v14;
  CGAffineTransformTranslate(&v21, &t1, v8, v9);
  v15 = v13 + v7;
  v16 = *&v21.c;
  *a1 = *&v21.a;
  a1[1] = v16;
  a1[2] = *&v21.tx;
  *(a1 + 6) = v15;
  v17 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v17;
  *&t1.tx = a1[2];
  v18 = *(a3 + 16);
  *&v21.a = *a3;
  *&v21.c = v18;
  *&v21.tx = *(a3 + 32);
  v19 = *(a3 + 48);
  CGAffineTransformConcat(a1, &t1, &v21);
  result = v15 + v19;
  *(a1 + 6) = v15 + v19;
  return result;
}

void sub_21AD4B7C0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_21AD4BE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,PXGRequestDetails>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PXGRequestDetails>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PXGRequestDetails>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PXGRequestDetails>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

CGImageRef PXGCGImageForImageNamedInBundle(void *a1, void *a2, int a3, void *a4, void *a5, _BYTE *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (v14)
  {
    v17 = v16 = v14;
  }

  else
  {
    v17 = 0;
  }

  if ([v11 isEqualToString:@"PXGSelectedBadgeImageName"])
  {
    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle"];
    v19 = [MEMORY[0x277D755D0] configurationWithScale:3];
    v20 = [v18 imageWithSymbolConfiguration:v19];

    v21 = [MEMORY[0x277D75348] systemWhiteColor];
    v22 = [MEMORY[0x277D75348] systemBlueColor];
    v23 = [v20 px_tintedCircularImageWithColor:v21 backgroundColor:v22];

    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_11:
    v24 = [v23 px_tintedImageWithColor:v13];

    v23 = v24;
    goto LABEL_12;
  }

  if (a3)
  {
    [MEMORY[0x277D755B8] px_systemImageNamed:v11 withConfiguration:v17];
  }

  else
  {
    [MEMORY[0x277D755B8] imageNamed:v11 inBundle:v12 withConfiguration:v17];
  }
  v23 = ;
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_12:
  v25 = CGImageRetain([v23 CGImage]);
  if ([v23 flipsForRightToLeftLayoutDirection])
  {
    v26 = 1;
  }

  else
  {
    v27 = [v23 traitCollection];
    v26 = [v27 layoutDirection] == 1;
  }

  v28 = [v11 hasPrefix:@"PXLeadingChevron"];
  if (a6)
  {
    *a6 = (v28 | v26) & 1;
  }

  if (v25)
  {
    CFAutorelease(v25);
  }

  return v25;
}

uint64_t _DecorationTypeForIndex(uint64_t result)
{
  if (result > 8)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXGDecoratingLayoutSpriteType _DecorationTypeForIndex(PXGDecorationIndex)"];
    [v5 handleFailureInFunction:v6 file:@"PXGDecoratingLayout.m" lineNumber:145 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return result;
}

double __PXGSpriteTextureInfoOrientationFromCGOrientation_block_invoke()
{
  PXGSpriteTextureInfoOrientationFromCGOrientation_transforms = xmmword_21AE2D320;
  unk_27CD3C3C0 = xmmword_21AE2D320;
  xmmword_27CD3C3D0 = xmmword_21AE2D470;
  unk_27CD3C3E0 = xmmword_21AE2D480;
  xmmword_27CD3C3F0 = xmmword_21AE2D490;
  unk_27CD3C400 = xmmword_21AE2D4A0;
  xmmword_27CD3C410 = xmmword_21AE2D4B0;
  unk_27CD3C420 = xmmword_21AE2D4C0;
  result = 0.0078125;
  xmmword_27CD3C430 = xmmword_21AE2D4D0;
  return result;
}

void PXGDrawAttributedString(void *a1, uint64_t a2, void *a3, uint64_t a4, CGContext *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, CGFloat a14, CGFloat a15, CGFloat a16, CGFloat a17, CGFloat a18)
{
  v54 = a1;
  v25 = a3;
  UIGraphicsPushContext(a5);
  if (PXGShouldDisplayTextTextureBoundaries())
  {
    CGContextSetRGBFillColor(a5, 1.0, 0.5, 1.0, 0.5);
    v59.origin.x = a14;
    v59.origin.y = a15;
    v59.size.width = a16;
    v59.size.height = a17;
    CGContextFillRect(a5, v59);
  }

  CGContextTranslateCTM(a5, 0.0, a17);
  CGContextScaleCTM(a5, 1.0, -1.0);
  CGContextScaleCTM(a5, a18, a18);
  PXSizeScale();
  v27 = v26;
  v29 = v28;
  if ([v54 length] && (objc_msgSend(v54, "attributesAtIndex:effectiveRange:", 0, 0), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "objectForKeyedSubscript:", *MEMORY[0x277D3CFF0]), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isEqual:", MEMORY[0x277CBEC38]), v31, v30, v32))
  {
    v33 = MEMORY[0x277D3CDF8];
    v34 = v54;
    v35 = [[v33 alloc] initWithSize:1 layoutOrientation:{v29, v27}];
    v36 = objc_alloc_init(MEMORY[0x277D742A8]);
    [v36 setTextContainer:v35];
    v37 = objc_alloc_init(MEMORY[0x277D74280]);
    [v37 setAttributedString:v34];

    [v36 replaceTextContentManager:v37];
    v38 = [v36 documentRange];
    [v36 ensureLayoutForRange:v38];

    CGContextTranslateCTM(a5, v27, 0.0);
    CGContextRotateCTM(a5, 1.57079633);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = ___PXGDrawVerticalAttributedString_block_invoke;
    v55[3] = &__block_descriptor_72_e30_B16__0__NSTextLayoutFragment_8l;
    *&v55[4] = a8;
    *&v55[5] = a9;
    *&v55[6] = a10;
    *&v55[7] = a11;
    v55[8] = a5;
    v39 = [v36 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v55];
  }

  else
  {
    PXEdgeInsetsInsetRect();
    v43 = v42;
    v45 = v44;
    v46 = v40;
    v47 = v41;
    if (a4 != 2 && a6 == *MEMORY[0x277CBF3A8] && a7 == *(MEMORY[0x277CBF3A8] + 8))
    {
      [v54 boundingRectWithSize:a2 options:v25 context:{v40, v41}];
      a7 = v49;
    }

    if (a4 == 1)
    {
      v58.origin.x = v43;
      v58.origin.y = v45;
      v58.size.width = v46;
      v58.size.height = v47;
      v45 = CGRectGetMaxY(v58) - a7;
    }

    else if (!a4)
    {
      v57.origin.x = v43;
      v57.origin.y = v45;
      v57.size.width = v46;
      v57.size.height = v47;
      v45 = CGRectGetMidY(v57) + a7 * -0.5;
    }

    [v54 drawWithRect:a2 options:v25 context:{v43, v45, v46, v47, *&a8, *&a9, *&a10, *&a11}];
  }

  UIGraphicsPopContext();
}

uint64_t PXGShouldDisplayTextTextureBoundaries()
{
  v0 = +[PXTungstenSettings sharedInstance];
  v1 = [v0 shouldShowBoundariesOfTextTextures];

  return v1;
}

uint64_t PXGColorSpaceNameFromCFStringRef(uint64_t a1)
{
  if (*MEMORY[0x277CBF4C0] == a1)
  {
    return 1;
  }

  if (*MEMORY[0x277CBF4C8] == a1)
  {
    return 2;
  }

  if (*MEMORY[0x277CBF448] == a1)
  {
    return 3;
  }

  if (*MEMORY[0x277CBF438] == a1)
  {
    return 4;
  }

  if (*MEMORY[0x277CBF3E0] == a1)
  {
    return 5;
  }

  if (*MEMORY[0x277CBF3D8] == a1)
  {
    return 6;
  }

  if (*MEMORY[0x277CBF488] == a1)
  {
    return 7;
  }

  if (*MEMORY[0x277CBF470] == a1)
  {
    return 8;
  }

  if (*MEMORY[0x277CBF410] == a1)
  {
    return 9;
  }

  if (*MEMORY[0x277CBF428] == a1)
  {
    return 10;
  }

  if (*MEMORY[0x277CBF430] == a1)
  {
    return 11;
  }

  if (*MEMORY[0x277CBF4B8] == a1)
  {
    return 12;
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::find<int>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

double PXGCreateTextureInfo@<D0>(int a1@<W0>, uint64_t a2@<X8>, float64_t a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8, double a9, double a10, double a11, float32x4_t a12, int a13, int a14)
{
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18.f64[0] = a3;
  v20 = a14;
  v21 = vcvt_hight_f64_f32(a12);
  v22 = vcvtq_f64_f32(*a12.f32);
  v23 = 0.0;
  if (a1 > 7)
  {
    if (a1 > 10)
    {
      if (a1 != 11)
      {
        if (a1 == 12)
        {
          a8 = a5 - a10;
        }

        else if (a1 != 13)
        {
          goto LABEL_26;
        }

        v23 = a6 - a11;
        v15 = a11;
        v16 = a10;
        goto LABEL_34;
      }

      a8 = a5 - a10;
    }

    else
    {
      if (a1 == 8)
      {
        v43 = v22;
        v47 = v21;
        PXRectGetCenter();
        PXRectWithCenterAndSize();
        v22 = v43;
        v21 = v47;
        v18.f64[0] = a3;
        v17 = a4;
        v20 = a14;
        a8 = v33;
        v16 = v34;
        v23 = v15 - a11;
LABEL_31:
        v15 = v27;
        goto LABEL_34;
      }

      if (a1 == 9)
      {
        a8 = 0.0;
        v44 = v22;
        v48 = v21;
        PXRectGetCenter();
        PXRectWithCenterAndSize();
        v22 = v44;
        v21 = v48;
        v18.f64[0] = a3;
        v17 = a4;
        v20 = a14;
        goto LABEL_28;
      }
    }

    v15 = a11;
    v16 = a10;
    v23 = a9;
  }

  else
  {
    if (a1 <= 4)
    {
      switch(a1)
      {
        case 1:
          *&v55.a = v22;
          *&v55.c = v21;
          v55.tx = 0.0;
          v55.ty = 0.0;
          v32 = 1.57079633;
          break;
        case 2:
          *&v55.a = v22;
          *&v55.c = v21;
          v55.tx = 0.0;
          v55.ty = 0.0;
          v32 = 3.14159265;
          break;
        case 4:
          v41 = v22;
          v45 = v21;
          PXSizeGetAspectRatio();
          PXRectWithAspectRatioFillingRect();
          v22 = v41;
          v21 = v45;
          v18.f64[0] = a3;
          v17 = a4;
          v20 = a14;
LABEL_21:
          a8 = v24;
LABEL_28:
          v23 = v25;
LABEL_30:
          v16 = v26;
          goto LABEL_31;
        default:
          goto LABEL_26;
      }

      CGAffineTransformRotate(&v56, &v55, v32);
      v18.f64[0] = a3;
      v17 = a4;
      v20 = a14;
      v22 = *&v56.a;
      v21 = *&v56.c;
LABEL_26:
      a8 = 0.0;
      goto LABEL_34;
    }

    v42 = v22;
    v46 = v21;
    if (a1 == 5)
    {
      PXRectGetCenter();
      PXRectWithCenterAndSize();
      v22 = v42;
      v21 = v46;
      v18.f64[0] = a3;
      v17 = a4;
      v20 = a14;
      goto LABEL_21;
    }

    if (a1 == 6)
    {
      PXRectGetCenter();
      PXRectWithCenterAndSize();
      v22 = v42;
      v21 = v46;
      v18.f64[0] = a3;
      v17 = a4;
      v20 = a14;
      a8 = v35;
      goto LABEL_30;
    }

    PXRectGetCenter();
    PXRectWithCenterAndSize();
    v22 = v42;
    v21 = v46;
    v18.f64[0] = a3;
    v17 = a4;
    v20 = a14;
    v23 = v29;
    v15 = v30;
    a8 = v16 - a10;
    v16 = v31;
  }

LABEL_34:
  result = 0.0;
  *&v37 = a8 * a7;
  v38 = v23 * a7;
  *(&v37 + 1) = v38;
  *&v39 = v16 * a7;
  v40 = v15 * a7;
  *(&v39 + 1) = v40;
  *a2 = v37;
  *(a2 + 8) = v39;
  v18.f64[1] = v17;
  *(a2 + 16) = 0u;
  *(a2 + 16) = vcvt_f32_f64(v18);
  *(a2 + 32) = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
  *(a2 + 48) = 0u;
  *(a2 + 48) = a13;
  *(a2 + 52) = v20;
  return result;
}

void __copy_assignment_8_8_t0w16_s16_s24_s32_t40w1(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  objc_storeStrong((a1 + 16), *(a2 + 16));
  objc_storeStrong((a1 + 24), *(a2 + 24));
  objc_storeStrong((a1 + 32), *(a2 + 32));
  *(a1 + 40) = *(a2 + 40);
}

uint64_t PXGCreateMetalTexturesFromIOSurface(__IOSurface *a1, void *a2, NSObject **a3, void *a4, int *a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v46 = 0;
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  v12 = [v9 device];
  v13 = [v12 limits];
  LODWORD(v14) = *(v13 + 132);
  LODWORD(v15) = *(v13 + 136);
  v16 = v14;
  v17 = v15;

  if (MEMORY[0x21CEE38D0](Width, Height, v16, v17))
  {
    v18 = PXGTungstenGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v57.width = Width;
      v57.height = Height;
      v19 = NSStringFromCGSize(v57);
      v58.width = v16;
      v58.height = v17;
      v20 = NSStringFromCGSize(v58);
      v21 = [v9 device];
      *buf = 138544130;
      *&buf[4] = a1;
      *&buf[12] = 2114;
      *&buf[14] = v19;
      *&buf[22] = 2114;
      *&buf[24] = v20;
      LOWORD(v49) = 2114;
      *(&v49 + 2) = v21;
      _os_log_impl(&dword_21AD38000, v18, OS_LOG_TYPE_ERROR, "Surface %{public}@ is too large %{public}@ > %{public}@ for device:%{public}@", buf, 0x2Au);
    }

LABEL_29:
    v26 = 0;
    goto LABEL_30;
  }

  v22 = PXGCreateMetalTextureFromIOSurface(a1, v9, &v46);
  if (v22)
  {
    v18 = v22;
    v23 = 0;
LABEL_6:
    v24 = v18;
    *a3 = v18;
    v25 = v23;
    *a4 = v23;
    *a5 = v46;

    v26 = 1;
LABEL_30:

    goto LABEL_31;
  }

  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v26 = 0;
  if (PixelFormat > 875704437)
  {
    if (PixelFormat > 2016686641)
    {
      if (PixelFormat == 2016686642 || PixelFormat == 2019963442)
      {
        goto LABEL_23;
      }

      v28 = 2019963440;
    }

    else
    {
      if (PixelFormat == 875704438 || PixelFormat == 875704934)
      {
        goto LABEL_23;
      }

      v28 = 2016686640;
    }
  }

  else
  {
    if (PixelFormat <= 645424687)
    {
      if (PixelFormat != 32 && PixelFormat != 641230384)
      {
        v28 = 641234480;
        goto LABEL_22;
      }

LABEL_23:
      if (IOSurfaceGetPlaneCount(a1) != 2)
      {
        v26 = 0;
        goto LABEL_31;
      }

      v29 = IOSurfaceGetPixelFormat(a1);
      is_video_range = ycbcr_fourcc_is_video_range(v29);
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      memset(buf, 0, sizeof(buf));
      v47 = 132;
      if (IOSurfaceGetBulkAttachments())
      {
        v18 = 0;
        v23 = 0;
        v46 = 0;
        goto LABEL_26;
      }

      if (BYTE10(v50) == 9)
      {
        v33 = is_video_range == 0;
        v34 = 1536;
        v35 = 1280;
      }

      else if (BYTE10(v50) == 7)
      {
        v33 = is_video_range == 0;
        v34 = 2048;
        v35 = 1792;
      }

      else
      {
        v33 = is_video_range == 0;
        if (BYTE10(v50) == 1)
        {
          v34 = 1024;
          v35 = 768;
        }

        else
        {
          v34 = 512;
          v35 = 256;
        }
      }

      if (v33)
      {
        v36 = v34;
      }

      else
      {
        v36 = v35;
      }

      v37 = ycbcr_fourcc_bits_per_component(v29);
      if (v37 == 10)
      {
        v38 = 0x2000;
      }

      else
      {
        v38 = 4096;
      }

      v46 = v38 | v36;
      if (v37 != 10)
      {
        v42 = 30;
        v43 = 10;
LABEL_53:
        v18 = _createMetalTextureFromIOSurface(a1, 0, v43, v9);
        v44 = _createMetalTextureFromIOSurface(a1, 1uLL, v42, v9);
        v23 = v44;
        if (v18 && v44)
        {
          goto LABEL_6;
        }

LABEL_26:
        v31 = PXAssertGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v45 = IOSurfaceGetPixelFormat(a1);
          *buf = 138412546;
          *&buf[4] = a1;
          *&buf[12] = 1024;
          *&buf[14] = v45;
          _os_log_error_impl(&dword_21AD38000, v31, OS_LOG_TYPE_ERROR, "Unable to create texture for surface %@ with format:%u", buf, 0x12u);
        }

        goto LABEL_29;
      }

      v39 = [v9 device];
      *&v50 = 0;
      v49 = 0u;
      memset(buf, 0, sizeof(buf));
      MTLPixelFormatGetInfoForDevice();
      if ((~*&buf[8] & 5) != 0)
      {
      }

      else
      {
        v40 = [v9 device];
        *&v50 = 0;
        v49 = 0u;
        memset(buf, 0, sizeof(buf));
        v42 = 578;
        MTLPixelFormatGetInfoForDevice();
        v41 = ~*&buf[8] & 5;

        if (!v41)
        {
          v43 = 576;
          goto LABEL_53;
        }
      }

      v42 = 60;
      v43 = 20;
      goto LABEL_53;
    }

    if (PixelFormat == 645424688 || PixelFormat == 645428784)
    {
      goto LABEL_23;
    }

    v28 = 875704422;
  }

LABEL_22:
  if (PixelFormat == v28)
  {
    goto LABEL_23;
  }

LABEL_31:

  return v26;
}

id PXGCreateMetalTextureFromIOSurface(__IOSurface *a1, void *a2, _DWORD *a3)
{
  v5 = a2;
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v7 = PXGMetalPixelFormatForOSType(PixelFormat);
  if (v7)
  {
    v8 = v7;
    v9 = _createMetalTextureFromIOSurface(a1, 0, v7, v5);
    v10 = v9;
    if (a3 && v9)
    {
      *a3 = 4 * (v8 == 10);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id _createMetalTextureFromIOSurface(__IOSurface *a1, size_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WidthOfPlane = IOSurfaceGetWidthOfPlane(a1, a2);
  v9 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a3 width:WidthOfPlane height:IOSurfaceGetHeightOfPlane(a1 mipmapped:a2), 0];
  [v9 setUsage:1];
  v10 = [v7 device];

  v11 = [v10 newTextureWithDescriptor:v9 iosurface:a1 plane:a2];

  return v11;
}

uint64_t PXGMetalPixelFormatForOSType(uint64_t a1)
{
  v2 = 80;
  while (1)
  {
    if (a1 <= 875836467)
    {
      if (a1 <= 875704437)
      {
        if (a1 <= 843264309)
        {
          if (a1 <= 645424687)
          {
            if (a1 == 641230384 || a1 == 641234480)
            {
              return 500;
            }
          }

          else
          {
            if (a1 == 645424688 || a1 == 645428784)
            {
              return 508;
            }

            if (a1 == 843264104)
            {
              return 65;
            }
          }

          goto LABEL_20;
        }

        switch(a1)
        {
          case 0x34323066:
            goto LABEL_17;
          case 0x32433136:
            return 60;
          case 0x32767579:
            return 562;
        }

        goto LABEL_20;
      }

      if (a1 != 875704438 && a1 != 875704934 && a1 != 875704950)
      {
        goto LABEL_20;
      }

LABEL_17:
      v3 = a1 & 0xFFFFFFEF;
      if ((a1 & 0xFFFFFFEF) == 0x34323066)
      {
        return 500;
      }

      if (v3 == 875704934)
      {
        return 502;
      }

      if (v3 == 875836518)
      {
        return 503;
      }

      goto LABEL_20;
    }

    if (a1 <= 1093677111)
    {
      if (a1 != 875836518 && a1 != 875836534)
      {
        if (a1 == 875836468)
        {
          return 42;
        }

        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (a1 > 1885745713)
    {
      if (a1 <= 2019963439)
      {
        if (a1 <= 1886860339)
        {
          if (a1 > 1886859823)
          {
            if (a1 == 1886859824)
            {
              return 508;
            }

            if (a1 == 1886859826)
            {
              return 509;
            }
          }

          else
          {
            if (a1 == 1885745714)
            {
              return 509;
            }

            if (a1 == 1885746228)
            {
              return 510;
            }
          }

          goto LABEL_20;
        }

        if (a1 > 2016686641)
        {
          switch(a1)
          {
            case 0x78343232:
              return 506;
            case 0x78343434:
              return 507;
            case 0x78343470:
              return 504;
          }

          goto LABEL_20;
        }

        if (a1 == 1886860340)
        {
          return 510;
        }

        v7 = 2016686640;
      }

      else
      {
        if (a1 > 2021077553)
        {
          if (a1 <= 2021078127)
          {
            if (a1 == 2021077554)
            {
              return 506;
            }

            if (a1 == 2021078068)
            {
              return 507;
            }
          }

          else
          {
            if (a1 == 2021078128)
            {
              return 504;
            }

            if (a1 == 2037741158 || a1 == 2037741171)
            {
              return 501;
            }
          }

          goto LABEL_20;
        }

        if (a1 <= 2019963955)
        {
          if (a1 == 2019963440)
          {
            return 505;
          }

          if (a1 == 2019963442)
          {
            return 506;
          }

          goto LABEL_20;
        }

        if (a1 == 2019963956)
        {
          return 507;
        }

        if (a1 == 2019964016)
        {
          return 504;
        }

        v7 = 2021077552;
      }

      if (a1 == v7)
      {
        return 505;
      }

      goto LABEL_20;
    }

    if (a1 > 1380401728)
    {
      if (a1 > 1815491697)
      {
        if (a1 <= 1882468913)
        {
          if (a1 == 1815491698)
          {
            return 110;
          }

          v8 = 1882468912;
        }

        else
        {
          if (a1 == 1882468914)
          {
            return 509;
          }

          if (a1 == 1882469428)
          {
            return 510;
          }

          v8 = 1885745712;
        }

        if (a1 == v8)
        {
          return 508;
        }

        goto LABEL_20;
      }

      if (a1 > 1380411456)
      {
        if (a1 == 1380411457)
        {
          return 115;
        }

        if (a1 == 1599554369)
        {
          return v2;
        }

        v6 = 1599554371;
LABEL_68:
        if (a1 == v6)
        {
          return v2;
        }

        goto LABEL_20;
      }

      if (a1 == 1380401729)
      {
        return 70;
      }

      if (a1 == 1380410945)
      {
        return 125;
      }

      goto LABEL_20;
    }

    if (a1 > 1278555444)
    {
      break;
    }

    if (a1 <= 1278226487)
    {
      if (a1 == 1093677112)
      {
        return 1;
      }

      v6 = 1111970369;
      goto LABEL_68;
    }

    if (a1 == 1278226488)
    {
      return 10;
    }

    if (a1 == 1278226742)
    {
      return 20;
    }

LABEL_20:
    v4 = fourcc_compressed_of_type(a1);
    v5 = v4 == a1;
    a1 = v4;
    if (v5)
    {
      return 0;
    }
  }

  if (a1 > 1279340599)
  {
    if (a1 == 1279340600 || a1 == 1279342648)
    {
      return 30;
    }

    if (a1 == 1378955371)
    {
      return 90;
    }

    goto LABEL_20;
  }

  if (a1 != 1278555445)
  {
    if (a1 == 1278555701)
    {
      return 40;
    }

    goto LABEL_20;
  }

  return 43;
}

void sub_21AD5254C(uint64_t a1@<X8>)
{
  sub_21AD52580();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

void sub_21AD52A04(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_21AD52A50@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_21AD52A90()
{
  sub_21AE19C14();
  MEMORY[0x28223BE20]();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD39D68);
  __swift_allocate_value_buffer(v0, qword_27CD39D28);
  __swift_project_value_buffer(v0, qword_27CD39D28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD39E88);
  *(swift_allocObject() + 16) = xmmword_21AE2C940;
  sub_21AE19C04();
  sub_21AD5D69C(&qword_27CD39D40, 255, MEMORY[0x277D3CC90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD39E90);
  sub_21AD5D6E4();
  sub_21AE19CA4();
  type metadata accessor for TungstenSettings();
  sub_21AD5D69C(&qword_27CD39D18, v1, type metadata accessor for TungstenSettings);
  return sub_21AE19BE4();
}

uint64_t sub_21AD52CB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t static TungstenSettings.config.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CD39D20 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD39D68);
  v3 = __swift_project_value_buffer(v2, qword_27CD39D28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t TungstenSettings.__allocating_init()()
{
  v0 = swift_allocObject();
  TungstenSettings.init()();
  return v0;
}

double TungstenSettings.init()()
{
  *(v0 + 16) = 0x10100000100;
  *(v0 + 24) = 1;
  *(v0 + 32) = xmmword_21AE2C950;
  *(v0 + 48) = 65792;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 69) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0x3FD0000000000000;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0x3FE6666666666666;
  *(v0 + 112) = 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 120) = 0;
  *(v0 + 144) = xmmword_21AE2C960;
  *(v0 + 160) = xmmword_21AE2C940;
  *(v0 + 176) = 1;
  *(v0 + 184) = xmmword_21AE2C970;
  *(v0 + 200) = 0x3FF0000000000000;
  *(v0 + 208) = 1;
  *(v0 + 213) = 0;
  *(v0 + 209) = 0;
  *(v0 + 216) = xmmword_21AE2C980;
  *(v0 + 232) = 0x3FD3333333333333;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0x3FD3333333333333;
  *(v0 + 256) = 257;
  *(v0 + 264) = 0x3FF0000000000000;
  *(v0 + 272) = 0;
  *(v0 + 280) = 10;
  *(v0 + 288) = 0x3FA999999999999ALL;
  *(v0 + 296) = 250;
  *(v0 + 304) = 257;
  *(v0 + 312) = 0x3FE54FDF3B645A1DLL;
  *(v0 + 320) = 0;
  *(v0 + 322) = 0;
  *(v0 + 328) = 0x3FC999999999999ALL;
  result = 0.25;
  *(v0 + 336) = xmmword_21AE2C990;
  *(v0 + 352) = 257;
  return result;
}

uint64_t TungstenSettings.enableXcodeCustomDebugHierarchy.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t TungstenSettings.enableXcodeCustomDebugHierarchy.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t TungstenSettings.sortSpritesInXcodeCustomDebugHierarchy.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t TungstenSettings.sortSpritesInXcodeCustomDebugHierarchy.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 17) = a1;
  return result;
}

uint64_t TungstenSettings.includeLayoutsLocalSpritesInDebugHierarchy.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 18);
}

uint64_t TungstenSettings.includeLayoutsLocalSpritesInDebugHierarchy.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 18) = a1;
  return result;
}

uint64_t TungstenSettings.simulateMissingMetalDevice.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 19);
}

uint64_t TungstenSettings.simulateMissingMetalDevice.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 19) = a1;
  return result;
}

uint64_t TungstenSettings.enableMetalRenderer.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 20);
}

uint64_t TungstenSettings.enableMetalRenderer.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 20) = a1;
  return result;
}

uint64_t TungstenSettings.enableViewRenderer.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 21);
}

uint64_t TungstenSettings.enableViewRenderer.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 21) = a1;
  return result;
}

uint64_t TungstenSettings.lowLatency.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 22);
}

uint64_t TungstenSettings.lowLatency.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 22) = a1;
  return result;
}

uint64_t TungstenSettings.lowMemoryMode.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 23);
}

uint64_t TungstenSettings.lowMemoryMode.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 23) = a1;
  return result;
}

uint64_t TungstenSettings.inLowMemoryModePreferMasterThumb.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t TungstenSettings.inLowMemoryModePreferMasterThumb.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

double TungstenSettings.inactivityTimeout.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t TungstenSettings.inactivityTimeout.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

double TungstenSettings.slowLayoutUpdateThreshold.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 40);
}

uint64_t TungstenSettings.slowLayoutUpdateThreshold.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t TungstenSettings.enableFrameDebuggerCapture.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 48);
}

uint64_t TungstenSettings.enableFrameDebuggerCapture.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t TungstenSettings.enableRoundedCorners.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 49);
}

uint64_t TungstenSettings.enableRoundedCorners.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 49) = a1;
  return result;
}

uint64_t TungstenSettings.enableColorMatching.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 50);
}

uint64_t TungstenSettings.enableColorMatching.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 50) = a1;
  return result;
}

uint64_t TungstenSettings.enableMipmaps.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 51);
}

uint64_t TungstenSettings.enableMipmaps.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 51) = a1;
  return result;
}

uint64_t TungstenSettings.sampleCount.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t TungstenSettings.sampleCount.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t TungstenSettings.debugExtendedColorRange.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 64);
}

uint64_t TungstenSettings.debugExtendedColorRange.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t TungstenSettings.debugOpaque.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 65);
}

uint64_t TungstenSettings.debugOpaque.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 65) = a1;
  return result;
}

uint64_t TungstenSettings.debugResolution.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 66);
}

uint64_t TungstenSettings.debugResolution.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 66) = a1;
  return result;
}

uint64_t TungstenSettings.debugColorTransform.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 67);
}

uint64_t TungstenSettings.debugColorTransform.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 67) = a1;
  return result;
}

uint64_t TungstenSettings.debugSharedTextures.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 68);
}

uint64_t TungstenSettings.debugSharedTextures.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 68) = a1;
  return result;
}

uint64_t TungstenSettings.debugMipmaps.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 69);
}

uint64_t TungstenSettings.debugMipmaps.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 69) = a1;
  return result;
}

uint64_t TungstenSettings.colorCopiedImages.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 70);
}

uint64_t TungstenSettings.colorCopiedImages.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 70) = a1;
  return result;
}

uint64_t TungstenSettings.colorCachedThumbnails.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 71);
}

uint64_t TungstenSettings.colorCachedThumbnails.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 71) = a1;
  return result;
}

uint64_t TungstenSettings.requestThumbnailsOnly.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 72);
}

uint64_t TungstenSettings.requestThumbnailsOnly.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t TungstenSettings.requestMasterThumbsOnly.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 73);
}

uint64_t TungstenSettings.requestMasterThumbsOnly.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 73) = a1;
  return result;
}

uint64_t TungstenSettings.disableLowResThumbnails.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 74);
}

uint64_t TungstenSettings.disableLowResThumbnails.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 74) = a1;
  return result;
}

uint64_t TungstenSettings.simulateSomeAssetsInCloud.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 75);
}

uint64_t TungstenSettings.simulateSomeAssetsInCloud.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 75) = a1;
  return result;
}

uint64_t TungstenSettings.loadThumbnailsAsync.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 76);
}

uint64_t TungstenSettings.loadThumbnailsAsync.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 76) = a1;
  return result;
}

uint64_t TungstenSettings.thumbnailCacheSize.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 80);
}

uint64_t TungstenSettings.thumbnailCacheSize.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

double TungstenSettings.opportunisticPreheatRequiredIdleTime.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 88);
}

uint64_t TungstenSettings.opportunisticPreheatRequiredIdleTime.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t TungstenSettings.textLegibilityDimmingType.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 96);
}

uint64_t TungstenSettings.textLegibilityDimmingType.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

double TungstenSettings.textLegibilityDimmingStrength.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 104);
}

uint64_t TungstenSettings.textLegibilityDimmingStrength.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t TungstenSettings.allowBlockingDuringScrolling.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 112);
}

uint64_t TungstenSettings.allowBlockingDuringScrolling.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

double TungstenSettings.blockingWhileScrollingTimeout.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 120);
}

uint64_t TungstenSettings.blockingWhileScrollingTimeout.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

double TungstenSettings.blockingWhileScrubbingTimeout.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 128);
}

uint64_t TungstenSettings.blockingWhileScrubbingTimeout.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

double TungstenSettings.blockingWhileInitialLoadTimeout.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 136);
}

uint64_t TungstenSettings.blockingWhileInitialLoadTimeout.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

uint64_t TungstenSettings.blockOnMissingThumbnailsAtSpeedRegime.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 144);
}

uint64_t TungstenSettings.blockOnMissingThumbnailsAtSpeedRegime.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t TungstenSettings.videoAllowedAtOrBelowSpeed.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 152);
}

uint64_t TungstenSettings.videoAllowedAtOrBelowSpeed.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 152) = a1;
  return result;
}

uint64_t TungstenSettings.videoAllowedAtOrBelowSpeedForLowSpec.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 160);
}

uint64_t TungstenSettings.videoAllowedAtOrBelowSpeedForLowSpec.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 160) = a1;
  return result;
}

uint64_t TungstenSettings.lowSpecProcessorCountLimit.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 168);
}

uint64_t TungstenSettings.lowSpecProcessorCountLimit.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 168) = a1;
  return result;
}

uint64_t TungstenSettings.allowBlockingDueToFences.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 176);
}

uint64_t TungstenSettings.allowBlockingDueToFences.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 176) = a1;
  return result;
}

double TungstenSettings.slowAnimationsSpeed.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 184);
}

uint64_t TungstenSettings.slowAnimationsSpeed.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 184) = a1;
  return result;
}

double TungstenSettings.maxCornerRadius.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 192);
}

uint64_t TungstenSettings.maxCornerRadius.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 192) = a1;
  return result;
}

double TungstenSettings.cameraZoomFactor.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 200);
}

uint64_t TungstenSettings.cameraZoomFactor.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 200) = a1;
  return result;
}

uint64_t TungstenSettings.wantsOrthogonalProjection.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 208);
}

uint64_t TungstenSettings.wantsOrthogonalProjection.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 208) = a1;
  return result;
}

uint64_t TungstenSettings.wantsStatsDebugHUD.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 209);
}

uint64_t TungstenSettings.wantsStatsDebugHUD.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 209) = a1;
  return result;
}

uint64_t TungstenSettings.wantsRectDiagnosticsDebugHUD.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 210);
}

uint64_t TungstenSettings.wantsRectDiagnosticsDebugHUD.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 210) = a1;
  return result;
}

uint64_t TungstenSettings.enableAnchoringRectDiagnostics.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 211);
}

uint64_t TungstenSettings.enableAnchoringRectDiagnostics.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 211) = a1;
  return result;
}

uint64_t TungstenSettings.enableAssetsRectDiagnostics.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 212);
}

uint64_t TungstenSettings.enableAssetsRectDiagnostics.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 212) = a1;
  return result;
}

uint64_t TungstenSettings.enableFocusRectDiagnostics.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 213);
}

uint64_t TungstenSettings.enableFocusRectDiagnostics.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 213) = a1;
  return result;
}

uint64_t TungstenSettings.enableCurrentFocusRectDiagnostics.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 214);
}

uint64_t TungstenSettings.enableCurrentFocusRectDiagnostics.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 214) = a1;
  return result;
}

uint64_t TungstenSettings.fullPageSnapshotMaximumNumberOfTiles.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 224);
}

uint64_t TungstenSettings.fullPageSnapshotMaximumNumberOfTiles.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 224) = a1;
  return result;
}

double TungstenSettings.fullPageSnapshotTileDelay.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 232);
}

uint64_t TungstenSettings.fullPageSnapshotTileDelay.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 232) = a1;
  return result;
}

uint64_t TungstenSettings.shouldShowBoundariesOfTextTextures.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 240);
}

uint64_t TungstenSettings.shouldShowBoundariesOfTextTextures.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 240) = a1;
  return result;
}

double TungstenSettings.livePhotoInitialCrossfadeDuration.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 248);
}

uint64_t TungstenSettings.livePhotoInitialCrossfadeDuration.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 248) = a1;
  return result;
}

uint64_t TungstenSettings.enableLayoutDanglingUpdatesAssertions.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 256);
}

uint64_t TungstenSettings.enableLayoutDanglingUpdatesAssertions.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 256) = a1;
  return result;
}

uint64_t TungstenSettings.enableSublayoutUpdateCycleAssertions.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 257);
}

uint64_t TungstenSettings.enableSublayoutUpdateCycleAssertions.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 257) = a1;
  return result;
}

double TungstenSettings.offscreenTextureMaximumLifeTime.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 264);
}

uint64_t TungstenSettings.offscreenTextureMaximumLifeTime.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 264) = a1;
  return result;
}

uint64_t TungstenSettings.enableRenderTextureCache.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 272);
}

uint64_t TungstenSettings.enableRenderTextureCache.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 272) = a1;
  return result;
}

uint64_t TungstenSettings.renderTextureCacheCapacity.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 280);
}

uint64_t TungstenSettings.renderTextureCacheCapacity.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 280) = a1;
  return result;
}

double TungstenSettings.renderTextureCacheAgeLimit.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 288);
}

uint64_t TungstenSettings.renderTextureCacheAgeLimit.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 288) = a1;
  return result;
}

uint64_t TungstenSettings.renderTextureCacheSizeLimitMB.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 296);
}

uint64_t TungstenSettings.renderTextureCacheSizeLimitMB.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 296) = a1;
  return result;
}

uint64_t TungstenSettings.shouldDeactivateTextureManagerWhenNotVisible.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 304);
}

uint64_t TungstenSettings.shouldDeactivateTextureManagerWhenNotVisible.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 304) = a1;
  return result;
}

uint64_t TungstenSettings.allowsViewControllerTransitions.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 305);
}

uint64_t TungstenSettings.allowsViewControllerTransitions.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 305) = a1;
  return result;
}

double TungstenSettings.viewControllerTransitionDuration.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 312);
}

uint64_t TungstenSettings.viewControllerTransitionDuration.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 312) = a1;
  return result;
}

uint64_t TungstenSettings.hideSummaryContentDuringTransition.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 320);
}

uint64_t TungstenSettings.hideSummaryContentDuringTransition.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 320) = a1;
  return result;
}

uint64_t TungstenSettings.hideDetailContentDuringTransition.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 321);
}

uint64_t TungstenSettings.hideDetailContentDuringTransition.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 321) = a1;
  return result;
}

uint64_t TungstenSettings.enableTungstenKeyboardNavigation.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 322);
}

uint64_t TungstenSettings.enableTungstenKeyboardNavigation.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 322) = a1;
  return result;
}

double TungstenSettings.keyboardUnselectedDimmingFactor.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 328);
}

uint64_t TungstenSettings.keyboardUnselectedDimmingFactor.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 328) = a1;
  return result;
}

double TungstenSettings.keyboardAnimationDuration.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 336);
}

uint64_t TungstenSettings.keyboardAnimationDuration.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 336) = a1;
  return result;
}

double TungstenSettings.keyboardDampingRatio.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 344);
}

uint64_t TungstenSettings.keyboardDampingRatio.setter(double a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 344) = a1;
  return result;
}

uint64_t TungstenSettings.enableTungstenFocusEnvironmentSupport.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 352);
}

uint64_t TungstenSettings.enableTungstenFocusEnvironmentSupport.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 352) = a1;
  return result;
}

uint64_t TungstenSettings.enablePanicOnCommandBufferPageFault.getter()
{
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  return *(v0 + 353);
}

uint64_t TungstenSettings.enablePanicOnCommandBufferPageFault.setter(char a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_beginAccess();
  *(v1 + 353) = a1;
  return result;
}

uint64_t sub_21AD57B64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001FLL && 0x800000021AE2F960 == a2;
  if (v3 || (sub_21AE19D34() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000026 && 0x800000021AE2F990 == a2;
    if (v6 || (sub_21AE19D34() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000002ALL && 0x800000021AE2F9C0 == a2;
      if (v7 || (sub_21AE19D34() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x800000021AE2F9F0 == a2;
        if (v8 || (sub_21AE19D34() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x800000021AE2FA10 == a2;
          if (v9 || (sub_21AE19D34() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x800000021AE2FA30 == a2;
            if (v10 || (sub_21AE19D34() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6574614C776F6CLL && a2 == 0xEA00000000007963;
              if (v11 || (sub_21AE19D34() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x726F6D654D776F6CLL && a2 == 0xED000065646F4D79;
                if (v12 || (sub_21AE19D34() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000020 && 0x800000021AE2FA60 == a2;
                  if (v13 || (sub_21AE19D34() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x800000021AE2FA90 == a2;
                    if (v14 || (sub_21AE19D34() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000019 && 0x800000021AE2FAB0 == a2;
                      if (v15 || (sub_21AE19D34() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001ALL && 0x800000021AE2FAD0 == a2;
                        if (v16 || (sub_21AE19D34() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x800000021AE2FAF0 == a2;
                          if (v17 || (sub_21AE19D34() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000013 && 0x800000021AE2FB10 == a2;
                            if (v18 || (sub_21AE19D34() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x694D656C62616E65 && a2 == 0xED00007370616D70;
                              if (v19 || (sub_21AE19D34() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6F43656C706D6173 && a2 == 0xEB00000000746E75;
                                if (v20 || (sub_21AE19D34() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000017 && 0x800000021AE2FB40 == a2;
                                  if (v21 || (sub_21AE19D34() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x61704F6775626564 && a2 == 0xEB00000000657571;
                                    if (v22 || (sub_21AE19D34() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x7365526775626564 && a2 == 0xEF6E6F6974756C6FLL;
                                      if (v23 || (sub_21AE19D34() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000013 && 0x800000021AE2FB80 == a2;
                                        if (v24 || (sub_21AE19D34() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000013 && 0x800000021AE2FBA0 == a2;
                                          if (v25 || (sub_21AE19D34() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x70694D6775626564 && a2 == 0xEC0000007370616DLL;
                                            if (v26 || (sub_21AE19D34() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000011 && 0x800000021AE2FBD0 == a2;
                                              if (v27 || (sub_21AE19D34() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000015 && 0x800000021AE2FBF0 == a2;
                                                if (v28 || (sub_21AE19D34() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000015 && 0x800000021AE2FC10 == a2;
                                                  if (v29 || (sub_21AE19D34() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000017 && 0x800000021AE2FC30 == a2;
                                                    if (v30 || (sub_21AE19D34() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000017 && 0x800000021AE2FC50 == a2;
                                                      if (v31 || (sub_21AE19D34() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000019 && 0x800000021AE2FC70 == a2;
                                                        if (v32 || (sub_21AE19D34() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000013 && 0x800000021AE2FC90 == a2;
                                                          if (v33 || (sub_21AE19D34() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000012 && 0x800000021AE2FCB0 == a2;
                                                            if (v34 || (sub_21AE19D34() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000024 && 0x800000021AE2FCD0 == a2;
                                                              if (v35 || (sub_21AE19D34() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000019 && 0x800000021AE2FD00 == a2;
                                                                if (v36 || (sub_21AE19D34() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD00000000000001DLL && 0x800000021AE2FD20 == a2;
                                                                  if (v37 || (sub_21AE19D34() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD00000000000001CLL && 0x800000021AE2FD40 == a2;
                                                                    if (v38 || (sub_21AE19D34() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD00000000000001DLL && 0x800000021AE2FD60 == a2;
                                                                      if (v39 || (sub_21AE19D34() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD00000000000001DLL && 0x800000021AE2FD80 == a2;
                                                                        if (v40 || (sub_21AE19D34() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD00000000000001FLL && 0x800000021AE2FDA0 == a2;
                                                                          if (v41 || (sub_21AE19D34() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000025 && 0x800000021AE2FDC0 == a2;
                                                                            if (v42 || (sub_21AE19D34() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD00000000000001ALL && 0x800000021AE2FDF0 == a2;
                                                                              if (v43 || (sub_21AE19D34() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000024 && 0x800000021AE2FE10 == a2;
                                                                                if (v44 || (sub_21AE19D34() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD00000000000001ALL && 0x800000021AE2FE40 == a2;
                                                                                  if (v45 || (sub_21AE19D34() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000018 && 0x800000021AE2FE60 == a2;
                                                                                    if (v46 || (sub_21AE19D34() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000013 && 0x800000021AE2FE80 == a2;
                                                                                      if (v47 || (sub_21AE19D34() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0x656E726F4378616DLL && a2 == 0xEF73756964615272;
                                                                                        if (v48 || (sub_21AE19D34() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000010 && 0x800000021AE2FEB0 == a2;
                                                                                          if (v49 || (sub_21AE19D34() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0xD000000000000019 && 0x800000021AE2FED0 == a2;
                                                                                            if (v50 || (sub_21AE19D34() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0xD000000000000012 && 0x800000021AE2FEF0 == a2;
                                                                                              if (v51 || (sub_21AE19D34() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v52 = a1 == 0xD00000000000001CLL && 0x800000021AE2FF10 == a2;
                                                                                                if (v52 || (sub_21AE19D34() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v53 = a1 == 0xD00000000000001ELL && 0x800000021AE2FF30 == a2;
                                                                                                  if (v53 || (sub_21AE19D34() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v54 = a1 == 0xD00000000000001BLL && 0x800000021AE2FF50 == a2;
                                                                                                    if (v54 || (sub_21AE19D34() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v55 = a1 == 0xD00000000000001ALL && 0x800000021AE2FF70 == a2;
                                                                                                      if (v55 || (sub_21AE19D34() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v56 = a1 == 0xD000000000000021 && 0x800000021AE2FF90 == a2;
                                                                                                        if (v56 || (sub_21AE19D34() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v57 = a1 == 0xD000000000000016 && 0x800000021AE2FFC0 == a2;
                                                                                                          if (v57 || (sub_21AE19D34() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v58 = a1 == 0xD000000000000024 && 0x800000021AE2FFE0 == a2;
                                                                                                            if (v58 || (sub_21AE19D34() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v59 = a1 == 0xD000000000000019 && 0x800000021AE30010 == a2;
                                                                                                              if (v59 || (sub_21AE19D34() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v60 = a1 == 0xD000000000000022 && 0x800000021AE30030 == a2;
                                                                                                                if (v60 || (sub_21AE19D34() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v61 = a1 == 0xD000000000000021 && 0x800000021AE30060 == a2;
                                                                                                                  if (v61 || (sub_21AE19D34() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v62 = a1 == 0xD000000000000025 && 0x800000021AE30090 == a2;
                                                                                                                    if (v62 || (sub_21AE19D34() & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v63 = a1 == 0xD000000000000024 && 0x800000021AE300C0 == a2;
                                                                                                                      if (v63 || (sub_21AE19D34() & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v64 = a1 == 0xD00000000000001FLL && 0x800000021AE300F0 == a2;
                                                                                                                        if (v64 || (sub_21AE19D34() & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v65 = a1 == 0xD000000000000018 && 0x800000021AE30110 == a2;
                                                                                                                          if (v65 || (sub_21AE19D34() & 1) != 0)
                                                                                                                          {

                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v66 = a1 == 0xD00000000000001ALL && 0x800000021AE30130 == a2;
                                                                                                                            if (v66 || (sub_21AE19D34() & 1) != 0)
                                                                                                                            {

                                                                                                                              return 61;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v67 = a1 == 0xD00000000000001ALL && 0x800000021AE30150 == a2;
                                                                                                                              if (v67 || (sub_21AE19D34() & 1) != 0)
                                                                                                                              {

                                                                                                                                return 62;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v68 = a1 == 0xD00000000000001DLL && 0x800000021AE30170 == a2;
                                                                                                                                if (v68 || (sub_21AE19D34() & 1) != 0)
                                                                                                                                {

                                                                                                                                  return 63;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v69 = a1 == 0xD00000000000002CLL && 0x800000021AE30190 == a2;
                                                                                                                                  if (v69 || (sub_21AE19D34() & 1) != 0)
                                                                                                                                  {

                                                                                                                                    return 64;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v70 = a1 == 0xD00000000000001FLL && 0x800000021AE301C0 == a2;
                                                                                                                                    if (v70 || (sub_21AE19D34() & 1) != 0)
                                                                                                                                    {

                                                                                                                                      return 65;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v71 = a1 == 0xD000000000000020 && 0x800000021AE301E0 == a2;
                                                                                                                                      if (v71 || (sub_21AE19D34() & 1) != 0)
                                                                                                                                      {

                                                                                                                                        return 66;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v72 = a1 == 0xD000000000000022 && 0x800000021AE30210 == a2;
                                                                                                                                        if (v72 || (sub_21AE19D34() & 1) != 0)
                                                                                                                                        {

                                                                                                                                          return 67;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v73 = a1 == 0xD000000000000021 && 0x800000021AE30240 == a2;
                                                                                                                                          if (v73 || (sub_21AE19D34() & 1) != 0)
                                                                                                                                          {

                                                                                                                                            return 68;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v74 = a1 == 0xD000000000000020 && 0x800000021AE30270 == a2;
                                                                                                                                            if (v74 || (sub_21AE19D34() & 1) != 0)
                                                                                                                                            {

                                                                                                                                              return 69;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v75 = a1 == 0xD00000000000001FLL && 0x800000021AE302A0 == a2;
                                                                                                                                              if (v75 || (sub_21AE19D34() & 1) != 0)
                                                                                                                                              {

                                                                                                                                                return 70;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v76 = a1 == 0xD000000000000019 && 0x800000021AE302C0 == a2;
                                                                                                                                                if (v76 || (sub_21AE19D34() & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  return 71;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v77 = a1 == 0xD000000000000014 && 0x800000021AE302E0 == a2;
                                                                                                                                                  if (v77 || (sub_21AE19D34() & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    return 72;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v78 = a1 == 0xD000000000000025 && 0x800000021AE30300 == a2;
                                                                                                                                                    if (v78 || (sub_21AE19D34() & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      return 73;
                                                                                                                                                    }

                                                                                                                                                    else if (a1 == 0xD000000000000023 && 0x800000021AE30330 == a2)
                                                                                                                                                    {

                                                                                                                                                      return 74;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v80 = sub_21AE19D34();

                                                                                                                                                      if (v80)
                                                                                                                                                      {
                                                                                                                                                        return 74;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        return 75;
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21AD590EC(unsigned __int8 a1)
{
  sub_21AE19D44();
  MEMORY[0x21CEE2580](a1);
  return sub_21AE19D64();
}

unint64_t sub_21AD59140(char a1)
{
  result = 0x6E6574614C776F6CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = 0xD00000000000002ALL;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
    case 13:
    case 19:
    case 20:
    case 28:
    case 42:
      result = 0xD000000000000013;
      break;
    case 5:
    case 29:
    case 46:
      result = 0xD000000000000012;
      break;
    case 6:
      return result;
    case 7:
      result = 0x726F6D654D776F6CLL;
      break;
    case 8:
    case 66:
    case 69:
      result = 0xD000000000000020;
      break;
    case 9:
    case 22:
      result = 0xD000000000000011;
      break;
    case 10:
    case 27:
    case 31:
    case 45:
    case 54:
    case 71:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
    case 72:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x694D656C62616E65;
      break;
    case 15:
      result = 0x6F43656C706D6173;
      break;
    case 16:
    case 25:
    case 26:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0x61704F6775626564;
      break;
    case 18:
      result = 0x7365526775626564;
      break;
    case 21:
      result = 0x70694D6775626564;
      break;
    case 23:
    case 24:
      result = 0xD000000000000015;
      break;
    case 30:
    case 39:
    case 53:
    case 58:
      result = 0xD000000000000024;
      break;
    case 32:
    case 34:
    case 35:
    case 63:
      result = 0xD00000000000001DLL;
      break;
    case 33:
    case 47:
      result = 0xD00000000000001CLL;
      break;
    case 37:
    case 57:
    case 73:
      result = 0xD000000000000025;
      break;
    case 38:
      result = 0xD00000000000001ALL;
      break;
    case 40:
      result = 0xD00000000000001ALL;
      break;
    case 41:
    case 60:
      result = 0xD000000000000018;
      break;
    case 43:
      result = 0x656E726F4378616DLL;
      break;
    case 44:
      result = 0xD000000000000010;
      break;
    case 48:
      result = 0xD00000000000001ELL;
      break;
    case 49:
      result = 0xD00000000000001BLL;
      break;
    case 50:
      result = 0xD00000000000001ALL;
      break;
    case 51:
    case 56:
    case 68:
      result = 0xD000000000000021;
      break;
    case 52:
      result = 0xD000000000000016;
      break;
    case 55:
    case 67:
      result = 0xD000000000000022;
      break;
    case 61:
      result = 0xD00000000000001ALL;
      break;
    case 62:
      result = 0xD00000000000001ALL;
      break;
    case 64:
      result = 0xD00000000000002CLL;
      break;
    case 74:
      result = 0xD000000000000023;
      break;
    default:
      result = 0xD00000000000001FLL;
      break;
  }

  return result;
}

uint64_t sub_21AD597D4()
{
  v1 = *v0;
  sub_21AE19D44();
  MEMORY[0x21CEE2580](v1);
  return sub_21AE19D64();
}

uint64_t sub_21AD59820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21AD57B64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21AD59868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21AD590AC();
  *a1 = result;
  return result;
}

uint64_t sub_21AD59890(uint64_t a1)
{
  v2 = sub_21AD5CBD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21AD598CC(uint64_t a1)
{
  v2 = sub_21AD5CBD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TungstenSettings.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD39D70);
  OUTLINED_FUNCTION_13();
  v7 = v6;
  MEMORY[0x28223BE20]();
  v9 = v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21AD5CBD8();
  sub_21AE19D84();
  OUTLINED_FUNCTION_4();
  swift_beginAccess();
  v92 = 0;
  OUTLINED_FUNCTION_0();
  sub_21AE19CF4();
  if (!v2)
  {
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v91 = 1;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v90 = 2;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v89 = 3;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v88 = 4;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v87 = 5;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v86 = 6;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v85 = 7;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v84 = 8;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v83 = 9;
    OUTLINED_FUNCTION_6();
    sub_21AE19D04();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v82 = 10;
    OUTLINED_FUNCTION_6();
    sub_21AE19D04();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v81 = 11;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v80 = 12;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v79 = 13;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v78 = 14;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v77 = 15;
    OUTLINED_FUNCTION_0();
    sub_21AE19D14();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v76 = 16;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v75 = 17;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v74 = 18;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v73 = 19;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v72 = 20;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v71 = 21;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v70 = 22;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v69 = 23;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v68 = 24;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v67 = 25;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v66 = 26;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v65 = 27;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v64 = 28;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v63 = 29;
    OUTLINED_FUNCTION_0();
    sub_21AE19D14();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v62 = 30;
    OUTLINED_FUNCTION_6();
    sub_21AE19D04();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v61 = v3[12];
    LOBYTE(v60) = 31;
    type metadata accessor for PXGTextLegibilityDimmingType(0);
    OUTLINED_FUNCTION_12();
    sub_21AD5D69C(v10, 255, v11);
    OUTLINED_FUNCTION_6();
    sub_21AE19D24();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v60 = v3[13];
    v59 = 32;
    sub_21AD5CC2C();
    OUTLINED_FUNCTION_6();
    sub_21AE19D24();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v59 = 33;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v58 = 34;
    OUTLINED_FUNCTION_6();
    sub_21AE19D04();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v57 = 35;
    OUTLINED_FUNCTION_6();
    sub_21AE19D04();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v56 = 36;
    OUTLINED_FUNCTION_6();
    sub_21AE19D04();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v55 = v3[18];
    LOBYTE(v54) = 37;
    type metadata accessor for PXScrollViewSpeedometerRegime(0);
    v14 = v13;
    OUTLINED_FUNCTION_10();
    v17 = sub_21AD5D69C(v15, 255, v16);
    v93 = v14;
    v18[1] = v17;
    OUTLINED_FUNCTION_6();
    sub_21AE19D24();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v54 = v3[19];
    LOBYTE(v53) = 38;
    OUTLINED_FUNCTION_6();
    sub_21AE19D24();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v53 = v3[20];
    v52 = 39;
    OUTLINED_FUNCTION_6();
    sub_21AE19D24();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v52 = 40;
    OUTLINED_FUNCTION_0();
    sub_21AE19D14();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v51 = 41;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v50 = v3[23];
    LOBYTE(v49) = 42;
    OUTLINED_FUNCTION_6();
    sub_21AE19D24();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v49 = v3[24];
    LOBYTE(v48) = 43;
    OUTLINED_FUNCTION_6();
    sub_21AE19D24();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v48 = v3[25];
    v47 = 44;
    OUTLINED_FUNCTION_6();
    sub_21AE19D24();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v47 = 45;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v46 = 46;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v45 = 47;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v44 = 48;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v43 = 49;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v42 = 50;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    LOBYTE(v41) = 51;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    v41 = v3[27];
    v40 = 52;
    sub_21AD5CC80();
    OUTLINED_FUNCTION_0();
    sub_21AE19D24();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v40 = 53;
    OUTLINED_FUNCTION_0();
    sub_21AE19D14();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v39 = 54;
    OUTLINED_FUNCTION_6();
    sub_21AE19D04();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v38 = 55;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v37 = 56;
    OUTLINED_FUNCTION_6();
    sub_21AE19D04();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v36 = 57;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v35 = 58;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v34 = 59;
    OUTLINED_FUNCTION_6();
    sub_21AE19D04();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v33 = 60;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v32 = 61;
    OUTLINED_FUNCTION_0();
    sub_21AE19D14();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v31 = 62;
    OUTLINED_FUNCTION_6();
    sub_21AE19D04();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v30 = 63;
    OUTLINED_FUNCTION_0();
    sub_21AE19D14();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v29 = 64;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v28 = 65;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v27 = 66;
    OUTLINED_FUNCTION_6();
    sub_21AE19D04();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v26 = 67;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v25 = 68;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v24 = 69;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v23 = v3[41];
    LOBYTE(v22) = 70;
    OUTLINED_FUNCTION_6();
    sub_21AE19D24();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v22 = v3[42];
    LOBYTE(v21) = 71;
    OUTLINED_FUNCTION_6();
    sub_21AE19D24();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v21 = v3[43];
    v20 = 72;
    OUTLINED_FUNCTION_6();
    sub_21AE19D24();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v20 = 73;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
    OUTLINED_FUNCTION_4();
    swift_beginAccess();
    v19 = 74;
    OUTLINED_FUNCTION_0();
    sub_21AE19CF4();
  }

  return (*(v7 + 8))(v9, v5);
}

uint64_t TungstenSettings.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  TungstenSettings.init(from:)(a1);
  return v2;
}

uint64_t TungstenSettings.init(from:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD39DA0);
  OUTLINED_FUNCTION_13();
  v126 = v5;
  v127 = v4;
  MEMORY[0x28223BE20]();
  v131 = &v95 - v6;
  v129 = v2;
  *(v2 + 32) = xmmword_21AE2C950;
  v7 = v2 + 32;
  *(v7 - 16) = 0x10100000100;
  v125 = (v7 - 16);
  *(v7 - 8) = 1;
  v124 = (v7 - 8);
  *(v7 + 16) = 65792;
  v123 = (v7 + 16);
  *(v7 + 24) = 1;
  v100 = (v7 + 24);
  *(v7 + 32) = 0;
  v101 = (v7 + 32);
  *(v7 + 37) = 0;
  v102 = (v7 + 37);
  *(v7 + 48) = 0;
  v103 = (v7 + 48);
  *(v7 + 56) = 0x3FD0000000000000;
  *(v7 + 64) = 1;
  v104 = (v7 + 56);
  v105 = (v7 + 64);
  *(v7 + 72) = 0x3FE6666666666666;
  v106 = (v7 + 72);
  *(v7 + 80) = 1;
  v107 = v7 + 80;
  *(v7 + 88) = 0;
  v108 = (v7 + 88);
  *(v7 + 96) = 0;
  v109 = (v7 + 96);
  *(v7 + 104) = 0;
  v110 = (v7 + 104);
  *(v7 + 112) = xmmword_21AE2C960;
  v111 = (v7 + 112);
  *(v7 + 128) = xmmword_21AE2C940;
  v112 = (v7 + 128);
  *(v7 + 144) = 1;
  v113 = v7 + 144;
  *(v7 + 152) = xmmword_21AE2C970;
  v114 = (v7 + 152);
  *(v7 + 168) = 0x3FF0000000000000;
  v115 = (v7 + 168);
  *(v7 + 176) = 1;
  *(v7 + 177) = 0;
  v116 = v7 + 176;
  v117 = (v7 + 177);
  *(v7 + 181) = 0;
  v118 = v7 + 181;
  *(v7 + 184) = xmmword_21AE2C980;
  *(v7 + 200) = 0x3FD3333333333333;
  v119 = (v7 + 200);
  *(v7 + 208) = 0;
  v120 = v7 + 208;
  *(v7 + 216) = 0x3FD3333333333333;
  *(v7 + 232) = 0x3FF0000000000000;
  v121 = (v7 + 216);
  v122 = (v7 + 232);
  *(v7 + 248) = 10;
  *(v7 + 256) = 0x3FA999999999999ALL;
  *(v7 + 264) = 250;
  *(v7 + 280) = 0x3FE54FDF3B645A1DLL;
  *(v7 + 224) = 257;
  *(v7 + 312) = 0x3FE6666666666666;
  *(v7 + 240) = 0;
  *(v7 + 272) = 257;
  *(v7 + 288) = 0;
  *(v7 + 290) = 0;
  *(v7 + 320) = 257;
  *(v7 + 296) = xmmword_21AE2C9A0;
  v8 = a1[3];
  v130 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_21AD5CBD8();
  v9 = v128;
  sub_21AE19D74();
  if (v9)
  {
    v10 = v129;
  }

  else
  {
    v96 = v7 + 224;
    v97 = v7 + 240;
    v128 = v7;
    v98 = (v7 + 248);
    v99 = (v7 + 296);
    v10 = v129;
    v205 = 0;
    sub_21AE19CB4();
    OUTLINED_FUNCTION_14();
    v11 = v125;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v11 = v8 & 1;
    v204 = 1;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_7();
    v203 = 2;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_7();
    v202 = 3;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_7();
    v201 = 4;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_7();
    v200 = 5;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_7();
    v199 = 6;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_7();
    v198 = 7;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_7();
    v197 = 8;
    v13 = OUTLINED_FUNCTION_16();
    v14 = v124;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v14 = v13 & 1;
    v196 = 9;
    sub_21AE19CC4();
    v16 = v15;
    v17 = v128;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v17 = v16;
    v195 = 10;
    OUTLINED_FUNCTION_1();
    sub_21AE19CC4();
    v19 = v18;
    v20 = v128;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v20[1] = v19;
    v194 = 11;
    OUTLINED_FUNCTION_1();
    LOBYTE(v20) = sub_21AE19CB4();
    v21 = v123;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_11();
    v193 = 12;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v21[17] = v20 & 1;
    v192 = 13;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v21[18] = v20 & 1;
    v191 = 14;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v21[19] = v20 & 1;
    v190 = 15;
    OUTLINED_FUNCTION_1();
    v22 = sub_21AE19CD4();
    v23 = v100;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v23 = v22;
    v189 = 16;
    OUTLINED_FUNCTION_1();
    LOBYTE(v22) = sub_21AE19CB4();
    v24 = v101;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_11();
    v188 = 17;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v24[33] = v22 & 1;
    v187 = 18;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v24[34] = v22 & 1;
    v186 = 19;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v24[35] = v22 & 1;
    v185 = 20;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v24[36] = v22 & 1;
    v184 = 21;
    OUTLINED_FUNCTION_1();
    LOBYTE(v22) = sub_21AE19CB4();
    v25 = v102;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_11();
    v183 = 22;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v25[38] = v22 & 1;
    v182 = 23;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v25[39] = v22 & 1;
    v181 = 24;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v25[40] = v22 & 1;
    v180 = 25;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v25[41] = v22 & 1;
    v179 = 26;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v25[42] = v22 & 1;
    v178 = 27;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v25[43] = v22 & 1;
    v177 = 28;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v25[44] = v22 & 1;
    v176 = 29;
    OUTLINED_FUNCTION_1();
    v26 = sub_21AE19CD4();
    v27 = v103;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v27 = v26;
    v175 = 30;
    OUTLINED_FUNCTION_1();
    sub_21AE19CC4();
    v29 = v28;
    v30 = v104;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v30 = v29;
    type metadata accessor for PXGTextLegibilityDimmingType(0);
    v174 = 31;
    OUTLINED_FUNCTION_12();
    sub_21AD5D69C(v31, 255, v32);
    sub_21AE19CE4();
    v33 = v173;
    v34 = v105;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v34 = v33;
    LOBYTE(v173) = 32;
    sub_21AD5CD20();
    OUTLINED_FUNCTION_2();
    v35 = v172;
    v36 = v106;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v36 = v35;
    LOBYTE(v172) = 33;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_11();
    v171 = 34;
    OUTLINED_FUNCTION_1();
    sub_21AE19CC4();
    v38 = v37;
    v39 = v108;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v39 = v38;
    v170 = 35;
    OUTLINED_FUNCTION_1();
    sub_21AE19CC4();
    v41 = v40;
    v42 = v109;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v42 = v41;
    v169 = 36;
    OUTLINED_FUNCTION_1();
    sub_21AE19CC4();
    v44 = v43;
    v45 = v110;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v45 = v44;
    type metadata accessor for PXScrollViewSpeedometerRegime(0);
    v168 = 37;
    OUTLINED_FUNCTION_10();
    sub_21AD5D69C(v46, 255, v47);
    OUTLINED_FUNCTION_9();
    v48 = v167;
    v49 = v111;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v49 = v48;
    LOBYTE(v167) = 38;
    OUTLINED_FUNCTION_9();
    v50 = v166;
    v51 = v128;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v51[15] = v50;
    LOBYTE(v166) = 39;
    OUTLINED_FUNCTION_9();
    v52 = v165;
    v53 = v112;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v53 = v52;
    LOBYTE(v165) = 40;
    OUTLINED_FUNCTION_1();
    v54 = sub_21AE19CD4();
    v55 = v128;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v55[17] = v54;
    v164 = 41;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_11();
    v163 = 42;
    OUTLINED_FUNCTION_2();
    v56 = v162;
    v57 = v114;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v57 = v56;
    LOBYTE(v162) = 43;
    OUTLINED_FUNCTION_2();
    v58 = v161;
    v59 = v128;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v59[20] = v58;
    LOBYTE(v161) = 44;
    OUTLINED_FUNCTION_2();
    v60 = v160;
    v61 = v115;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v61 = v60;
    LOBYTE(v160) = 45;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_11();
    v159 = 46;
    OUTLINED_FUNCTION_1();
    LOBYTE(v61) = sub_21AE19CB4();
    v62 = v117;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_11();
    v158 = 47;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v62[178] = v61 & 1;
    v157 = 48;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v62[179] = v61 & 1;
    v156 = 49;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v62[180] = v61 & 1;
    v155 = 50;
    OUTLINED_FUNCTION_1();
    LOBYTE(v61) = sub_21AE19CB4();
    v63 = v118;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_11();
    v154 = 51;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *(v63 + 182) = v61 & 1;
    v152 = 52;
    sub_21AD5CD74();
    sub_21AE19CE4();
    *(v10 + 216) = v153;
    LOBYTE(v153) = 53;
    OUTLINED_FUNCTION_1();
    v64 = sub_21AE19CD4();
    v65 = v128;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v65[24] = v64;
    v152 = 54;
    OUTLINED_FUNCTION_1();
    sub_21AE19CC4();
    v67 = v66;
    v68 = v119;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v68 = v67;
    v151 = 55;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_11();
    v150 = 56;
    OUTLINED_FUNCTION_1();
    sub_21AE19CC4();
    v70 = v69;
    v71 = v121;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v71 = v70;
    v149 = 57;
    OUTLINED_FUNCTION_1();
    LOBYTE(v71) = sub_21AE19CB4();
    v72 = v96;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_11();
    v148 = 58;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *(v72 + 225) = v71 & 1;
    v147 = 59;
    OUTLINED_FUNCTION_1();
    sub_21AE19CC4();
    v74 = v73;
    v75 = v122;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v75 = v74;
    v146 = 60;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_11();
    v145 = 61;
    OUTLINED_FUNCTION_1();
    v76 = sub_21AE19CD4();
    v77 = v98;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v77 = v76;
    v144 = 62;
    OUTLINED_FUNCTION_1();
    sub_21AE19CC4();
    v79 = v78;
    v80 = v128;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v80[32] = v79;
    v143 = 63;
    OUTLINED_FUNCTION_1();
    v81 = sub_21AE19CD4();
    v82 = v128;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v82[33] = v81;
    v142 = 64;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *(v82 + 272) = v81 & 1;
    v141 = 65;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *(v82 + 273) = v81 & 1;
    v140 = 66;
    OUTLINED_FUNCTION_1();
    sub_21AE19CC4();
    v84 = v83;
    v85 = v128;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v85[35] = v84;
    v139 = 67;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *(v82 + 288) = v85 & 1;
    v138 = 68;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *(v82 + 289) = v85 & 1;
    v137 = 69;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *(v82 + 290) = v85 & 1;
    v136 = 70;
    OUTLINED_FUNCTION_2();
    v86 = v135;
    v87 = v99;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *v87 = v86;
    LOBYTE(v135) = 71;
    OUTLINED_FUNCTION_2();
    v88 = v134;
    v89 = v128;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v89[38] = v88;
    LOBYTE(v134) = 72;
    OUTLINED_FUNCTION_2();
    v90 = v133;
    v91 = v128;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    v91[39] = v90;
    LOBYTE(v133) = 73;
    OUTLINED_FUNCTION_1();
    sub_21AE19CB4();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *(v82 + 320) = v91 & 1;
    v132 = 74;
    OUTLINED_FUNCTION_1();
    LOBYTE(v91) = sub_21AE19CB4();
    v92 = OUTLINED_FUNCTION_15();
    v93(v92);
    v94 = v128;
    OUTLINED_FUNCTION_3();
    swift_beginAccess();
    *(v94 + 321) = v91 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v130);
  return v10;
}

uint64_t sub_21AD5BFB8@<X0>(uint64_t *a1@<X8>)
{
  result = TungstenSettings.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t sub_21AD5BFE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = TungstenSettings.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21AD5C030(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AD5D69C(&qword_27CD39E78, 255, type metadata accessor for PXGTextLegibilityDimmingType);
  v5 = MEMORY[0x277D3CCB0];

  return MEMORY[0x28219CF78](a1, a2, v4, v5);
}

uint64_t sub_21AD5C110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21AD5D69C(&qword_27CD39E80, 255, type metadata accessor for PXGTextLegibilityDimmingType);

  return MEMORY[0x28219CF48](a1, a2, a3, v6);
}

uint64_t sub_21AD5C2B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AD5D69C(&qword_27CD39E68, 255, type metadata accessor for PXScrollViewSpeedometerRegime);
  v5 = MEMORY[0x277D3CCA0];

  return MEMORY[0x28219CF78](a1, a2, v4, v5);
}

uint64_t sub_21AD5C390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v19 = a3;
  v20 = a4;
  v18 = a2;
  v10 = sub_21AE19C24();
  OUTLINED_FUNCTION_13();
  v12 = v11;
  MEMORY[0x28223BE20]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AD5D69C(a5, 255, a6);
  v15 = v21;
  result = sub_21AE19C34();
  if (v15)
  {
    return (*(v12 + 32))(v18, v14, v10);
  }

  return result;
}

uint64_t sub_21AD5C4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21AD5D69C(&qword_27CD39E70, 255, type metadata accessor for PXScrollViewSpeedometerRegime);

  return MEMORY[0x28219CF48](a1, a2, a3, v6);
}

uint64_t sub_21AD5C658(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AD5D4DC();
  v5 = MEMORY[0x277D3CCA0];

  return MEMORY[0x28219CF78](a1, a2, v4, v5);
}

uint64_t sub_21AD5C6B4(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v3 = sub_21AE19C24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AD5D4DC();
  result = sub_21AE19C34();
  if (v2)
  {
    return (*(v4 + 32))(v9, v6, v3);
  }

  return result;
}

uint64_t sub_21AD5C7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21AD5D424();

  return MEMORY[0x28219CF48](a1, a2, a3, v6);
}

uint64_t sub_21AD5C824@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21AD5C84C();
  *a1 = result;
  return result;
}

uint64_t sub_21AD5C854@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21AD5C884(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_21AD5C88C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21AD5C8BC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_21AD5C8C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21AD5C8F4(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_21AD5C904(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_21AD5C930@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21AD5C964(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21AD5C964(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_21AD5C988@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21AD5C9BC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21AD5C9BC(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_21AD5CA1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21AD5CA4C(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_21AD5CABC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21AD5CBD8()
{
  result = qword_27CD39D78;
  if (!qword_27CD39D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39D78);
  }

  return result;
}

unint64_t sub_21AD5CC2C()
{
  result = qword_27CD39D88;
  if (!qword_27CD39D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39D88);
  }

  return result;
}

unint64_t sub_21AD5CC80()
{
  result = qword_27CD39D98;
  if (!qword_27CD39D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39D98);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_21AD5CD20()
{
  result = qword_27CD39DB0;
  if (!qword_27CD39DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39DB0);
  }

  return result;
}

unint64_t sub_21AD5CD74()
{
  result = qword_27CD39DC0;
  if (!qword_27CD39DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39DC0);
  }

  return result;
}

uint64_t sub_21AD5CDC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21AD52CB8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_21AD5CE18()
{
  type metadata accessor for TungstenSettings();
  sub_21AD5D69C(&qword_27CD39D18, v0, type metadata accessor for TungstenSettings);
  sub_21AE19BC4();
  return v2;
}

PXTungstenSettings __swiftcall PXTungstenSettings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PXTungstenSettings()
{
  result = qword_27CD39DC8;
  if (!qword_27CD39DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD39DC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TungstenSettings.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xB6)
  {
    if (a2 + 74 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 74) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 75;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4B;
  v5 = v6 - 75;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TungstenSettings.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 74 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 74) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xB6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xB5)
  {
    v6 = ((a2 - 182) >> 8) + 1;
    *result = a2 + 74;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 74;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21AD5D3CC()
{
  result = qword_27CD39E30;
  if (!qword_27CD39E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39E30);
  }

  return result;
}

unint64_t sub_21AD5D424()
{
  result = qword_27CD39E38;
  if (!qword_27CD39E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39E38);
  }

  return result;
}

unint64_t sub_21AD5D47C()
{
  result = qword_27CD39E40;
  if (!qword_27CD39E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39E40);
  }

  return result;
}

unint64_t sub_21AD5D4DC()
{
  result = qword_27CD39E48;
  if (!qword_27CD39E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39E48);
  }

  return result;
}

unint64_t sub_21AD5D534()
{
  result = qword_27CD39E50;
  if (!qword_27CD39E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39E50);
  }

  return result;
}

unint64_t sub_21AD5D58C()
{
  result = qword_27CD39E58;
  if (!qword_27CD39E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39E58);
  }

  return result;
}

unint64_t sub_21AD5D5E4()
{
  result = qword_27CD39E60;
  if (!qword_27CD39E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39E60);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_21AD5D69C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21AD5D6E4()
{
  result = qword_27CD39D00;
  if (!qword_27CD39D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD39E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD39D00);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2()
{

  return sub_21AE19CE4();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9()
{

  return sub_21AE19CE4();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return sub_21AE19CB4();
}

void sub_21AD5E308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AD5F6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AD5F9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *_PXGArrayResize(void **a1, uint64_t a2, uint64_t a3)
{
  result = malloc_type_realloc(*a1, a3 * a2, 0x42760281uLL);
  *a1 = result;
  return result;
}

BOOL _PXGArrayCapacityResizeToCount(void **a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = *a3;
  if (*a3 < a4)
  {
    v6 = a4;
    if (v5)
    {
      v6 = *a3;
      do
      {
        v6 *= 2;
      }

      while (v6 < a4);
    }

    *a3 = v6;
    *a1 = malloc_type_realloc(*a1, v6 * a2, 0x42760281uLL);
  }

  return v5 < a4;
}

void sub_21AD623CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

uint64_t PXGItemsGeometryItemClosestToItemHorizontalGridDefaultImplementation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a2 <= 6)
    {
      if (((1 << a2) & 0x34) != 0)
      {
        v4 = 0;
      }

      else
      {
        if (((1 << a2) & 0x4A) == 0)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }

        v4 = a4 - 1;
        if (a4 < 1)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      goto LABEL_17;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a2 > 3)
  {
    if (a2 == 4)
    {
      v5 = a3 + a1;
      goto LABEL_25;
    }

    if (a2 == 5)
    {
LABEL_23:
      v5 = a1 + 1;
      goto LABEL_25;
    }

    if (a2 != 6)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_15:
    v4 = a1 - 1;
LABEL_17:
    if (v4 < a4)
    {
      v8 = __OFSUB__(v4, -1);
      v6 = v4 == -1;
      v7 = v4 + 1 < 0;
    }

    else
    {
      v8 = 0;
      v6 = 1;
      v7 = 0;
    }

    if (v7 ^ v8 | v6)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v4;
    }
  }

  if (a2 == 1)
  {
    goto LABEL_15;
  }

  if (a2 == 2)
  {
    goto LABEL_23;
  }

  if (a2 != 3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = a1 - a3;
LABEL_25:
  if (v5 < a4)
  {
    v12 = __OFSUB__(v5, -1);
    v10 = v5 == -1;
    v11 = v5 + 1 < 0;
  }

  else
  {
    v12 = 0;
    v10 = 1;
    v11 = 0;
  }

  if (v11 ^ v12 | v10)
  {
    result = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    result = v5;
  }

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

id PXGItemsGeometryItemsBetweenItemAndItemDefaultImplementation(uint64_t a1, uint64_t a2)
{
  if (a1 <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAA78]);
  }

  else
  {
    if (a1 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = a1;
    }

    v3 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v4, v2 - v4 + 1}];
  }

  return v3;
}

double PXGDampedSpringMinimumDuration(uint64_t a1, float a2, double a3, double a4)
{
  v4 = 0.0;
  if (a2 >= 1.0 && a4 > 0.0)
  {
    if (a2 >= 1.0)
    {
      if (a3 == 0.0)
      {
        v8 = 3.4028e38;
LABEL_10:
        v9 = 0.100000001 / a4;
        return (-logf(v9) / v8);
      }

      v7 = 9.23503685 / a3;
    }

    else
    {
      v6 = sqrtf(1.0 - (a2 * a2));
      v7 = -(atanf(v6 / a2) - a1 * 6.28318531) / (v6 * a3);
    }

    v8 = v7;
    if (v8 == 0.0)
    {
      return v4;
    }

    goto LABEL_10;
  }

  return v4;
}

void PXGDampedSpringGroupParametersConfigure(float *a1, uint64_t a2, float a3, double a4)
{
  if (a3 >= 1.0)
  {
    if (a4 == 0.0)
    {
      v8 = 3.4028e38;
      goto LABEL_6;
    }

    v7 = 9.23503685 / a4;
  }

  else
  {
    v6 = sqrtf(1.0 - (a3 * a3));
    v7 = -(atanf(v6 / a3) - a2 * 6.28318531) / (v6 * a4);
  }

  v8 = v7;
LABEL_6:
  *a1 = v8;
  a1[1] = a3;
}

float PXGDampedSpringDOFParametersConfigure(uint64_t a1, float a2, float a3)
{
  result = a2 - a3;
  *a1 = a3;
  *(a1 + 4) = result;
  *(a1 + 8) = 0;
  return result;
}

double PXGDampedSpringDOFParametersDoubleConfigure(uint64_t a1, double a2, double a3)
{
  result = a2 - a3;
  *a1 = a3;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

float PXGDampedSpringDOFParametersUpdateForAdjustedPresentation(float *a1, float a2, float a3)
{
  result = (a3 - a2) + *a1;
  *a1 = result;
  return result;
}

double PXGDampedSpringDOFParametersDoubleUpdateForAdjustedPresentation(double *a1, double a2, double a3)
{
  result = a3 - a2 + *a1;
  *a1 = result;
  return result;
}

void PXGDampedSpringGroupParametersPrepareForTime(float *a1, float a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = -*a1;
  if (v5 >= 1.0)
  {
    v12 = expf(v6 * a2);
    v10 = ((v4 * a2) + 1.0) * v12;
    v11 = v12 * a2;
  }

  else
  {
    v7 = expf((v5 * v6) * a2);
    v8 = v4 * sqrtf(1.0 - (v5 * v5));
    v9 = __sincosf_stret(v8 * a2);
    v10 = v7 * (v9.__cosval + ((v4 * v5) * (v9.__sinval / v8)));
    v11 = v7 * (v9.__sinval / v8);
  }

  a1[2] = v10;
  a1[3] = v11;
}

void sub_21AD6B724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1317(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PXGAnimationGroupInfoDescription(uint64_t a1)
{
  if (*a1 > 3uLL)
  {
    v2 = @"?";
  }

  else
  {
    v2 = off_2782A7F38[*a1];
  }

  v3 = [*(a1 + 44) delegate];
  v4 = MEMORY[0x277CCACA8];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"{w=%.2f, z=%.2f}", *(a1 + 28), *(a1 + 32)];
  v9 = [v4 stringWithFormat:@"{ curve=%@, duration=%.2f, end=%.2f, initialFraction=%.2f, dampedSpring=%@, delegate=%@ }", v2, v5, v6, *&v7, v8, v3];

  return v9;
}

id PXGAnimationSpriteInfoDescription(void *a1)
{
  if (*(a1 + 306))
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __PXGAnimationSpriteInfoDescription_block_invoke;
    v29[3] = &unk_2782A7F18;
    memcpy(v31, a1, sizeof(v31));
    v30 = v2;
    v3 = v2;
    v4 = MEMORY[0x21CEE40A0](v29);
    (v4)[2](v4, 1, @"transient");
    v5 = MEMORY[0x277CCACA8];
    v6 = [v3 componentsJoinedByString:{@", "}];
    v28 = [v5 stringWithFormat:@", attributes={%@}", v6];
  }

  else
  {
    v28 = &stru_282C556B8;
  }

  v21 = MEMORY[0x277CCACA8];
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *a1, a1[1], *(a1 + 4)];
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 20), *(a1 + 28), *(a1 + 9)];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 10), *(a1 + 11), *(a1 + 12)];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 13), *(a1 + 14), *(a1 + 15)];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 16), *(a1 + 17), *(a1 + 18)];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 19), *(a1 + 20), *(a1 + 21)];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 37), *(a1 + 38), *(a1 + 39)];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 40), *(a1 + 41), *(a1 + 42)];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 43), *(a1 + 44), *(a1 + 45)];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 46), *(a1 + 47), *(a1 + 48)];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 49), *(a1 + 50), *(a1 + 51)];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 52), *(a1 + 53), *(a1 + 54)];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 55), *(a1 + 56), *(a1 + 57)];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 58), *(a1 + 59), *(a1 + 60)];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 61), *(a1 + 62), *(a1 + 63)];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 64), *(a1 + 65), *(a1 + 66)];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 67), *(a1 + 68), *(a1 + 69)];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"{target=%.2f, initialOffset=%.2f, initialVelocity=%.2f}", *(a1 + 70), *(a1 + 71), *(a1 + 72)];
  v22 = [v21 stringWithFormat:@"{ centerX:%@, centerY:%@, centerZ:%@, sizeX:%@, sizeY:%@, alpha:%@, contentsRect:{%@, %@, %@, %@}, clippingRect:{%@, %@, %@, %@}, cornerRadius:{%@, %@, %@, %@}, group=%li%@ }", v27, v26, v25, v20, v19, v18, v17, v24, v23, v15, v14, v13, v16, v7, v8, v9, v10, v11, *(a1 + 152), v28];

  return v22;
}

uint64_t __PXGAnimationSpriteInfoDescription_block_invoke(uint64_t result, unsigned __int8 a2)
{
  if ((*(result + 346) & a2) != 0)
  {
    return [*(result + 32) addObject:?];
  }

  return result;
}

void sub_21AD72A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

float factorize(int a1, int a2, _WORD *a3, float a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (a4 <= 0.0)
  {
    __assert_rtn("factorize", "PXGPolarBlurKernel.m", 22, "value > 0.0f");
  }

  if (a1 <= 0)
  {
    __assert_rtn("factorize", "PXGPolarBlurKernel.m", 23, "n > 0");
  }

  v4 = a2;
  if (a2 <= 2)
  {
    __assert_rtn("factorize", "PXGPolarBlurKernel.m", 24, "pMin <= pMax");
  }

  if (!a3)
  {
    __assert_rtn("factorize", "PXGPolarBlurKernel.m", 25, "products != NULL");
  }

  if (a1 == 1)
  {
    v7 = llroundf(a4);
    if (v7 >= a2)
    {
      v7 = a2;
    }

    if (v7 <= 3)
    {
      LOWORD(v7) = 3;
    }

    *a3 = v7;
    return v7;
  }

  else
  {
    v9 = (a1 - 1);
    v10 = 2 * (a1 - 1);
    MEMORY[0x28223BE20]();
    v12 = v18 - v11;
    v8 = 0.0;
    v13 = 3.4028e38;
    do
    {
      v14 = factorize(v9, v4, v12, a4 / v4) * v4;
      v15 = vabds_f32(a4, v14);
      if (v15 < v13)
      {
        *a3 = v4;
        memcpy(a3 + 1, v12, v10);
        v8 = v14;
        v13 = v15;
      }
    }

    while (v4-- > 3);
  }

  return v8;
}

double PXGResizeRect(unsigned int a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v18 = a1 & 7;
  if (v18 > 3)
  {
    if (v18 == 5)
    {
      v19 = a10 - a6 + (a12 - a8) * 0.5;
    }

    else
    {
      if (v18 != 4)
      {
        goto LABEL_16;
      }

      v19 = a10 - a6;
    }
  }

  else
  {
    if (v18 != 1)
    {
      if (v18 == 2)
      {
        v19 = a10 - a6;
        a4 = a4 + a12 - a8;
        goto LABEL_10;
      }

LABEL_16:
      v23 = [MEMORY[0x277CCA890] currentHandler];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _PXGLinearResize(CGFloat *, CGFloat *, CGFloat, CGFloat, CGFloat, CGFloat, BOOL, BOOL, BOOL)"}];
      v25 = a1 & 1;
      v26 = (a1 >> 1) & 1;
      v27 = (a1 >> 2) & 1;
      goto LABEL_18;
    }

    v19 = a10 + a12 - a6 - a8;
  }

LABEL_10:
  v20 = ((a1 & 0x38) - 8) >> 3;
  if (v20 <= 2)
  {
    if (v20 <= 1)
    {
      return a2 + v19;
    }

    goto LABEL_17;
  }

  if (v20 != 4 && v20 != 3)
  {
LABEL_17:
    v23 = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _PXGLinearResize(CGFloat *, CGFloat *, CGFloat, CGFloat, CGFloat, CGFloat, BOOL, BOOL, BOOL)"}];
    v25 = (a1 >> 3) & 1;
    v26 = (a1 >> 4) & 1;
    v27 = (a1 >> 5) & 1;
LABEL_18:
    [v23 handleFailureInFunction:v24 file:@"PXGGeometry.m" lineNumber:26 description:{@"resizing options (%i %i %i) not implemented yet", v25, v26, v27}];

    abort();
  }

  return a2 + v19;
}

uint64_t PXGDeviceIsKnownToHaveExtendedColorDisplay()
{
  if (PXGDeviceIsKnownToHaveExtendedColorDisplay_onceToken != -1)
  {
    dispatch_once(&PXGDeviceIsKnownToHaveExtendedColorDisplay_onceToken, &__block_literal_global_3102);
  }

  return PXGDeviceIsKnownToHaveExtendedColorDisplay_hasExtendedColorDisplay;
}

CGColorSpace *PXGGetReconciledColorSpace(CGColorSpace *a1)
{
  v1 = a1;
  if (!a1)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGColorSpaceRef  _Nullable PXGGetReconciledColorSpace(CGColorSpaceRef _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"PXGTextureUtilities.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"space != nil"}];
  }

  Type = CGColorSpaceGetType();
  if (Type <= 1)
  {
    if (Type > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (Type == 2)
  {
LABEL_9:
    AlternateColorSpace = PXGetColorSpace();
    goto LABEL_10;
  }

  if (Type != 8)
  {
    goto LABEL_11;
  }

  AlternateColorSpace = CGColorSpaceGetAlternateColorSpace();
LABEL_10:
  v1 = AlternateColorSpace;
LABEL_11:
  if (!CGColorSpaceSupportsOutput(v1))
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGColorSpaceRef  _Nullable PXGGetReconciledColorSpace(CGColorSpaceRef _Nonnull)"];
    [v7 handleFailureInFunction:v8 file:@"PXGTextureUtilities.m" lineNumber:169 description:{@"Color space not supported as output:%@", v1}];
  }

  return v1;
}

CGColorRef PXGCreateDebugColorForMediaKind(CGColorRef result)
{
  switch(result)
  {
    case 0:
      v1 = 1.0;
      v2 = 0.0;
      v3 = 0.0;
      goto LABEL_8;
    case 1:
      return CGColorCreateSRGB(0.0, 0.0, 0.6, 0.7);
    case 2:
      v4 = 0.4;
      goto LABEL_13;
    case 3:
      return CGColorCreateSRGB(0.5, 0.0, 0.5, 0.7);
    case 4:
      v2 = 0.8;
      v4 = 0.7;
      v1 = 0.0;
      goto LABEL_22;
    case 5:
      v2 = 0.4;
      goto LABEL_17;
    case 6:
      v2 = 0.6;
LABEL_17:
      v4 = 0.7;
      v1 = 0.0;
      goto LABEL_18;
    case 7:
      v4 = 0.2;
LABEL_13:
      v1 = 0.0;
      goto LABEL_20;
    case 8:
      v4 = 0.7;
      v1 = 0.5;
      v2 = 0.5;
      goto LABEL_22;
    case 9:
      v2 = 0.2;
      v4 = 0.7;
      v1 = 0.5;
LABEL_18:
      v3 = v2;
      goto LABEL_4;
    case 10:
      v4 = 0.7;
      v1 = 0.5;
LABEL_20:
      v2 = 0.0;
LABEL_22:
      v3 = 0.0;
      goto LABEL_4;
    case 11:
      v3 = 0.8;
      v2 = 0.7;
      v1 = 1.0;
      v4 = 0.7;
      goto LABEL_4;
    case 12:
      v1 = 0.5;
      v2 = 0.0;
      v3 = 1.0;
LABEL_8:
      v4 = 1.0;
LABEL_4:
      result = CGColorCreateSRGB(v1, v2, v3, v4);
      break;
    default:
      return result;
  }

  return result;
}

id PXGStringForOSType(unsigned int a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = HIBYTE(a1);
  v3[1] = BYTE2(a1);
  v3[2] = BYTE1(a1);
  v3[3] = a1;
  v1 = [MEMORY[0x277CCACA8] stringWithCharacters:v3 length:4];

  return v1;
}

uint64_t fourcc_compressed_of_type(uint64_t a1)
{
  v1 = 1111970369;
  if (a1 > 792225327)
  {
    if (a1 > 1534359087)
    {
      if (a1 <= 1534621233)
      {
        if (a1 <= 1534617135)
        {
          if (a1 == 1534359088)
          {
            return 1953903152;
          }

          if (a1 == 1534359090)
          {
            return 1953903154;
          }

          if (a1 != 1534359092)
          {
            return a1;
          }

          v5 = 1953903154;
        }

        else
        {
          if (a1 <= 1534617139)
          {
            if (a1 != 1534617136)
            {
              if (a1 != 1534617138)
              {
                return a1;
              }

              return 2019963442;
            }

            v10 = 2016686640;
            return (v10 + 3276800);
          }

          if (a1 != 1534617140)
          {
            if (a1 == 1534621232)
            {
              return 2016686640;
            }

            return a1;
          }

          v5 = 2019963442;
        }

        return (v5 + 514);
      }

      if (a1 <= 2084075055)
      {
        if (a1 == 1534621234)
        {
          v11 = 2016686640;
          return v11 | 2u;
        }

        if (a1 != 1534621236)
        {
          v8 = 2084070960;
LABEL_75:
          if (a1 != v8)
          {
            return a1;
          }

          return 875704422;
        }

        v9 = 2016686640;
        return (v9 + 516);
      }

      if (a1 > 2088265263)
      {
        if (a1 != 2088265264)
        {
          v3 = 2088269360;
LABEL_101:
          if (a1 == v3)
          {
            return 1882468912;
          }

          return a1;
        }

LABEL_103:
        v10 = 1882468912;
        return (v10 + 3276800);
      }

      if (a1 != 2084075056)
      {
        v4 = 2084718401;
        goto LABEL_79;
      }
    }

    else
    {
      if (a1 > 1530422835)
      {
        if (a1 <= 1530426931)
        {
          if (a1 != 1530422836)
          {
            if (a1 != 1530426928)
            {
              v2 = 1530426930;
LABEL_66:
              if (a1 == v2)
              {
                return 875704950;
              }

              return a1;
            }

            goto LABEL_68;
          }

          return 875836518;
        }

        if (a1 <= 1534354993)
        {
          if (a1 == 1530426932)
          {
            goto LABEL_105;
          }

          if (a1 != 1534354992)
          {
            return a1;
          }

          return 1952854576;
        }

        if (a1 == 1534354994)
        {
          v11 = 1952854576;
          return v11 | 2u;
        }

        if (a1 != 1534354996)
        {
          return a1;
        }

        v9 = 1952854576;
        return (v9 + 516);
      }

      if (a1 > 796419631)
      {
        if (a1 > 1530422831)
        {
          if (a1 != 1530422832)
          {
            if (a1 != 1530422834)
            {
              return a1;
            }

            return 875704934;
          }

          return 875704422;
        }

        if (a1 != 796419632)
        {
          v3 = 796423728;
          goto LABEL_101;
        }

        goto LABEL_103;
      }

      if (a1 == 792225328)
      {
        return 875704422;
      }

      if (a1 != 792229424)
      {
        v4 = 792872769;
        goto LABEL_79;
      }
    }

LABEL_68:
    v7 = 875704422;
    return v7 | 0x10u;
  }

  if (a1 <= 645166643)
  {
    if (a1 <= 642934848)
    {
      if (a1 > 641234479)
      {
        if (a1 <= 641234483)
        {
          if (a1 != 641234480)
          {
            v2 = 641234482;
            goto LABEL_66;
          }

          goto LABEL_68;
        }

        if (a1 != 641234484)
        {
          v4 = 641877825;
LABEL_79:
          if (a1 == v4)
          {
            return v1;
          }

          return a1;
        }

LABEL_105:
        v7 = 875836518;
        return v7 | 0x10u;
      }

      if (a1 != 641230384)
      {
        if (a1 != 641230386)
        {
          if (a1 != 641230388)
          {
            return a1;
          }

          return 875836518;
        }

        return 875704934;
      }

      return 875704422;
    }

    if (a1 <= 645162545)
    {
      if (a1 == 642934849)
      {
        return 1380411457;
      }

      if (a1 == 643969848)
      {
        return 1647534392;
      }

      if (a1 != 645162544)
      {
        return a1;
      }

      v6 = 26160;
    }

    else
    {
      if (a1 <= 645166639)
      {
        if (a1 != 645162546)
        {
          if (a1 != 645162548)
          {
            return a1;
          }

          return 1886676532;
        }

        v11 = 1886676528;
        return v11 | 2u;
      }

      if (a1 == 645166640)
      {
        return 1886680624;
      }

      if (a1 != 645166642)
      {
        return a1;
      }

      v6 = 30258;
    }

    return v6 | 0x70740000u;
  }

  if (a1 > 645428785)
  {
    if (a1 > 758674991)
    {
      if (a1 <= 762865199)
      {
        if (a1 != 758674992)
        {
          v4 = 759318337;
          goto LABEL_79;
        }

        goto LABEL_68;
      }

      if (a1 != 762865200)
      {
        v3 = 762869296;
        goto LABEL_101;
      }

      goto LABEL_103;
    }

    if (a1 == 645428786)
    {
      v11 = 1882468912;
      return v11 | 2u;
    }

    if (a1 != 645428788)
    {
      v8 = 758670896;
      goto LABEL_75;
    }

    v9 = 1882468912;
    return (v9 + 516);
  }

  if (a1 > 645424687)
  {
    if (a1 <= 645424691)
    {
      if (a1 != 645424688)
      {
        if (a1 != 645424690)
        {
          return a1;
        }

        return 1885745714;
      }

      goto LABEL_103;
    }

    if (a1 != 645424692)
    {
      v3 = 645428784;
      goto LABEL_101;
    }

    v5 = 1885745714;
    return (v5 + 514);
  }

  if (a1 == 645166644)
  {
    return 1886680628;
  }

  if (a1 == 645346162)
  {
    return 1999843442;
  }

  if (a1 != 645346401)
  {
    return a1;
  }

  return 1999908961;
}

uint64_t ycbcr_fourcc_is_video_range(int a1)
{
  result = 1;
  if (a1 <= 1953903153)
  {
    if (a1 <= 1882468913)
    {
      if (a1 <= 875704949)
      {
        if (a1 == 846624121)
        {
          return result;
        }

        v6 = 875704438;
        goto LABEL_32;
      }

      if (a1 == 875704950 || a1 == 875836534)
      {
        return result;
      }

      v5 = 12848;
    }

    else
    {
      if (a1 > 1886680623)
      {
        if ((a1 - 1886680624) > 4 || ((1 << (a1 - 48)) & 0x15) == 0)
        {
          v3 = 12848;
LABEL_28:
          v6 = v3 | 0x74760000;
          goto LABEL_32;
        }

        return result;
      }

      if (a1 == 1882468914)
      {
        return result;
      }

      v5 = 13364;
    }

    v6 = v5 | 0x70340000;
LABEL_32:
    if (a1 != v6)
    {
      return 0;
    }

    return result;
  }

  if (a1 > 2016686641)
  {
    if (a1 > 2033463605)
    {
      if (a1 != 2033463606 && a1 != 2033463856)
      {
        v6 = 2037741171;
        goto LABEL_32;
      }

      return result;
    }

    if (a1 == 2016686642 || a1 == 2016687156)
    {
      return result;
    }

    v4 = 13424;
LABEL_20:
    v6 = v4 | 0x78340000;
    goto LABEL_32;
  }

  if (a1 <= 1982882103)
  {
    if (a1 == 1953903154)
    {
      return result;
    }

    v3 = 13364;
    goto LABEL_28;
  }

  if (a1 != 1982882104 && a1 != 1983000886)
  {
    v4 = 12848;
    goto LABEL_20;
  }

  return result;
}

uint64_t ycbcr_fourcc_bits_per_component(uint64_t a1)
{
  v1 = fourcc_compressed_of_type(a1);
  v2 = 8;
  if (v1 > 1952854575)
  {
    if (v1 > 2016687155)
    {
      if (v1 <= 2019964015)
      {
        if (v1 > 2019963439)
        {
          if (v1 != 2019963440 && v1 != 2019963442)
          {
            v6 = 2019963956;
            goto LABEL_52;
          }

          return 10;
        }

        if (v1 == 2016687156)
        {
          return 10;
        }

        v7 = 13424;
        goto LABEL_51;
      }

      if (v1 > 2033463855)
      {
        if (v1 == 2033463856 || v1 == 2037741158)
        {
          return v2;
        }

        v8 = 2037741171;
        goto LABEL_58;
      }

      if (v1 == 2019964016)
      {
        return 10;
      }

      if (v1 != 2033463606)
      {
        return 0;
      }
    }

    else
    {
      if (v1 <= 1953903667)
      {
        if (v1 <= 1952855091)
        {
          if (v1 == 1952854576)
          {
            return 12;
          }

          v4 = 1952854578;
        }

        else
        {
          if (v1 == 1952855092 || v1 == 1953903152)
          {
            return 12;
          }

          v4 = 1953903154;
        }

        if (v1 != v4)
        {
          return 0;
        }

        return 12;
      }

      if (v1 <= 1983000885)
      {
        if (v1 != 1953903668)
        {
          v8 = 1982882104;
          goto LABEL_58;
        }

        return 12;
      }

      if (v1 != 1983000886)
      {
        if (v1 == 2016686640)
        {
          return 10;
        }

        v7 = 12850;
LABEL_51:
        v6 = v7 | 0x78340000;
LABEL_52:
        if (v1 != v6)
        {
          return 0;
        }

        return 10;
      }
    }

    return 16;
  }

  if (v1 > 1882469427)
  {
    if (v1 <= 1885746227)
    {
      if (v1 == 1882469428 || v1 == 1885745712)
      {
        return 10;
      }

      v5 = 12850;
      goto LABEL_39;
    }

    if (((v1 - 1886676528) > 4 || ((1 << (v1 - 48)) & 0x15) == 0) && ((v1 - 1886680624) > 4 || ((1 << (v1 - 48)) & 0x15) == 0))
    {
      v5 = 13364;
LABEL_39:
      v6 = v5 | 0x70660000;
      goto LABEL_52;
    }

    return 12;
  }

  if (v1 <= 875836517)
  {
    if (v1 <= 875704437)
    {
      if (v1 == 846624121)
      {
        return v2;
      }

      v3 = 12390;
    }

    else
    {
      if (v1 == 875704438 || v1 == 875704934)
      {
        return v2;
      }

      v3 = 12918;
    }

    v8 = v3 | 0x34320000;
    goto LABEL_58;
  }

  if (v1 > 1714696751)
  {
    if (v1 == 1714696752)
    {
      return v2;
    }

    if (v1 != 1882468912)
    {
      v6 = 1882468914;
      goto LABEL_52;
    }

    return 10;
  }

  if (v1 == 875836518)
  {
    return v2;
  }

  v8 = 875836534;
LABEL_58:
  if (v1 != v8)
  {
    return 0;
  }

  return v2;
}

uint64_t PXGCGImageHasExtendedRange(CGImage *a1)
{
  ColorSpace = CGImageGetColorSpace(a1);
  v2 = CGColorSpaceGetName(ColorSpace);
  if ([v2 isEqualToString:*MEMORY[0x277CBF4B8]])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isEqualToString:*MEMORY[0x277CBF448]] ^ 1;
  }

  return v3;
}

CGImageRef PXGMetalCompatibleImageByRedrawingCGImage(CGImageRef image, double a2, double a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!image)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGImageRef  _Nullable PXGMetalCompatibleImageByRedrawingCGImage(CGImageRef _Nonnull, CGSize, PXGColorSpaceName, BOOL)"}];
    [v18 handleFailureInFunction:v19 file:@"PXGTextureUtilities.m" lineNumber:585 description:{@"Invalid parameter not satisfying: %@", @"imageRef != nil"}];
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (a2 <= Width || a3 <= Height)
  {
    PXSizeMin();
    AspectRatio = PXSizeGetAspectRatio();
    Width = MEMORY[0x21CEE3950](AspectRatio);
    Height = v10;
  }

  CGImageGetAlphaInfo(image);
  v11 = PXCreateContext();
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = Width;
  v23.size.height = Height;
  CGContextClearRect(v11, v23);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = Width;
  v24.size.height = Height;
  CGContextDrawImage(v11, v24, image);
  v12 = +[PXTungstenSettings sharedInstance];
  v13 = [v12 colorCopiedImages];

  if (v13)
  {
    *components = xmmword_21AE2D8E8;
    v21 = unk_21AE2D8F8;
    v14 = PXGetColorSpace();
    v15 = CGColorCreate(v14, components);
    CGContextSetFillColorWithColor(v11, v15);
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = Width;
    v25.size.height = Height;
    CGContextFillRect(v11, v25);
    CGColorRelease(v15);
  }

  v16 = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  if (v16)
  {
    CFAutorelease(v16);
  }

  return v16;
}

uint64_t __Block_byref_object_copy__3120(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PXGCreateMetalTextureFromBytesInCGImage_block_invoke(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 56);
  v14 = [*(a1 + 32) device];
  v15 = _createMetal2DTextureDescriptorWithPixelFormat(v13, 0, a2, a3);

  if (*(a1 + 72) == 1)
  {
    v16 = [*(a1 + 32) device];
    v17 = [v16 newTextureLayoutWithDescriptor:v15 isHeapOrBufferBacked:0];

    if ([v17 size] != a6)
    {
      v38 = [MEMORY[0x277CCA890] currentHandler];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<MTLTexture>  _Nullable PXGCreateMetalTextureFromBytesInCGImage(CGImageRef _Nonnull, PXGMetalRenderContext *__strong _Nonnull, PXGShaderFlags * _Nonnull)_block_invoke"}];
      [v38 handleFailureInFunction:v31 file:@"PXGTextureUtilities.m" lineNumber:695 description:@"Bad texture layout size for pre-twiddled data"];
    }

    if ((([v17 alignment] - 1) & a5) != 0)
    {
      v39 = [MEMORY[0x277CCA890] currentHandler];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<MTLTexture>  _Nullable PXGCreateMetalTextureFromBytesInCGImage(CGImageRef _Nonnull, PXGMetalRenderContext *__strong _Nonnull, PXGShaderFlags * _Nonnull)_block_invoke"}];
      [v39 handleFailureInFunction:v32 file:@"PXGTextureUtilities.m" lineNumber:696 description:@"Bad data pointer alignment for pre-twiddled data"];
    }

    v49 = [v17 watermark];
    v50 = v18;
    v48 = *(a5 + a6 - 16);
    if (v49 != v48 || v18 != *(&v48 + 1))
    {
      v40 = [MEMORY[0x277CCA890] currentHandler];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<MTLTexture>  _Nullable PXGCreateMetalTextureFromBytesInCGImage(CGImageRef _Nonnull, PXGMetalRenderContext *__strong _Nonnull, PXGShaderFlags * _Nonnull)_block_invoke"}];
      [v40 handleFailureInFunction:v33 file:@"PXGTextureUtilities.m" lineNumber:699 description:@"Bad pre-twiddled watermark (not pre-twiddled data?)"];
    }

    v20 = [*(a1 + 32) device];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __PXGCreateMetalTextureFromBytesInCGImage_block_invoke_2;
    v47[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
    v47[4] = *(a1 + 64);
    v21 = [v20 newTextureWithBytesNoCopy:a5 length:a6 descriptor:v15 deallocator:v47];
    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    else
    {
      v24 = ((a3 + 3) >> 2) * a4;
      [MEMORY[0x277CBEB28] dataWithLength:v24];
      v37 = v12;
      v41 = 0;
      v26 = v25 = a4;
      v42 = 0;
      v43 = 0;
      v44 = a2;
      v45 = a3;
      v46 = 1;
      [v17 copyFromTextureMemory:a5 textureSlice:0 textureLevel:0 textureRegion:&v41 toLinearBytes:objc_msgSend(v26 linearOffset:"mutableBytes") linearBytesPerRow:0 linearBytesPerImage:{v25, v24}];
      a5 = [v26 bytes];

      v12 = v37;
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v27 = [*(a1 + 32) newTextureWithDescriptor:v15];
    v28 = *(*(a1 + 40) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v34 = [MEMORY[0x277CCA890] currentHandler];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<MTLTexture>  _Nullable PXGCreateMetalTextureFromBytesInCGImage(CGImageRef _Nonnull, PXGMetalRenderContext *__strong _Nonnull, PXGShaderFlags * _Nonnull)_block_invoke"}];
      v36 = [*(a1 + 32) device];
      [v34 handleFailureInFunction:v35 file:@"PXGTextureUtilities.m" lineNumber:727 description:{@"Device:%@ failed to create texture:%@", v36, v15}];
    }

    v41 = 0;
    v42 = 0;
    v30 = *(a1 + 32);
    v43 = 0;
    v44 = a2;
    v45 = a3;
    v46 = 1;
    [v30 copyBytes:a5 toTexture:? inRegion:? length:? bytesPerRow:? bytesPerImage:?];
  }

  objc_autoreleasePoolPop(v12);
}

uint64_t PXGMetalPixelFormatStrippingSRGB(uint64_t a1)
{
  if (a1 == 204)
  {
    v1 = 204;
  }

  else
  {
    v1 = a1;
  }

  if (a1 == 186)
  {
    return 204;
  }

  else
  {
    return v1;
  }
}

uint64_t PXGMetalPixelFormatForCIImage()
{
  if (PXGDeviceIsKnownToHaveExtendedColorDisplay_onceToken != -1)
  {
    dispatch_once(&PXGDeviceIsKnownToHaveExtendedColorDisplay_onceToken, &__block_literal_global_3102);
  }

  if (PXGDeviceIsKnownToHaveExtendedColorDisplay_hasExtendedColorDisplay)
  {
    return 554;
  }

  else
  {
    return 80;
  }
}

id PXGCreateMetalTextureToRenderCIImage(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [v6 device];
  v8 = [v7 limits];
  LODWORD(v2) = *(v8 + 132);
  LODWORD(v3) = *(v8 + 136);

  if (PXGDeviceIsKnownToHaveExtendedColorDisplay_onceToken != -1)
  {
    dispatch_once(&PXGDeviceIsKnownToHaveExtendedColorDisplay_onceToken, &__block_literal_global_3102);
  }

  if (PXGDeviceIsKnownToHaveExtendedColorDisplay_hasExtendedColorDisplay)
  {
    v9 = 554;
  }

  else
  {
    v9 = 80;
  }

  [v5 extent];
  v11 = v10;
  v13 = v12;
  if (PXSizeIsEmpty())
  {
    v14 = PXGTungstenGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v30.width = v11;
      v30.height = v13;
      v15 = NSStringFromCGSize(v30);
      v16 = [v6 device];
      v22 = 138543874;
      v23 = v5;
      v24 = 2114;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      v17 = "Empty image %{public}@ with size %{public}@ for device:%{public}@";
LABEL_12:
      _os_log_impl(&dword_21AD38000, v14, OS_LOG_TYPE_ERROR, v17, &v22, 0x20u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v18 = v2;
  v19 = v3;
  if (MEMORY[0x21CEE38D0](v11, v13, v18, v19))
  {
    v14 = PXGTungstenGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v31.width = v18;
      v31.height = v19;
      v15 = NSStringFromCGSize(v31);
      v16 = [v6 device];
      v22 = 138543874;
      v23 = v5;
      v24 = 2114;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      v17 = "Too large image %{public}@ > %{public}@ for device:%{public}@";
      goto LABEL_12;
    }

LABEL_13:

    v20 = 0;
    goto LABEL_15;
  }

  v20 = _createMetal2DTextureWithPixelFormat(v9, v6, 1, v11, v13);
LABEL_15:

  return v20;
}

id PXGSupportedPixelBufferFormats()
{
  if (PXGSupportedPixelBufferFormats_onceToken != -1)
  {
    dispatch_once(&PXGSupportedPixelBufferFormats_onceToken, &__block_literal_global_62);
  }

  v1 = PXGSupportedPixelBufferFormats_supported;

  return v1;
}

void __PXGSupportedPixelBufferFormats_block_invoke()
{
  v35[3] = *MEMORY[0x277D85DE8];
  if (PXGDeviceSupportsIOSurfaceCompression_onceToken != -1)
  {
    dispatch_once(&PXGDeviceSupportsIOSurfaceCompression_onceToken, &__block_literal_global_716);
  }

  if (PXGDeviceSupportsIOSurfaceCompression__supportsIOSurfaceCompression)
  {
    v0 = &unk_282C7F688;
  }

  else
  {
    v0 = MEMORY[0x277CBEBF8];
  }

  v35[0] = v0;
  v35[1] = &unk_282C7F670;
  v35[2] = &unk_282C7F6A0;
  v1 = MEMORY[0x277CBEA60];
  v2 = v0;
  v3 = [v1 arrayWithObjects:v35 count:3];

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
  v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v6 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v6;
        v7 = *(*(&v29 + 1) + 8 * v6);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v25 + 1) + 8 * i);
              v14 = [v13 unsignedIntValue];
              v15 = v14;
              if (PXGMetalPixelFormatForOSType(v14))
              {
LABEL_31:
                if (([v5 containsObject:v13] & 1) == 0)
                {
                  [v4 addObject:v13];
                  [v5 addObject:v13];
                }

                continue;
              }

              if (v15 <= 875704421)
              {
                if (v15 == 32 || v15 == 846624121)
                {
                  goto LABEL_31;
                }
              }

              else if (v15 == 875704422 || v15 == 2016686640 || v15 == 875704438)
              {
                goto LABEL_31;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v10);
        }

        v6 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  v19 = [v4 copy];
  v20 = PXGSupportedPixelBufferFormats_supported;
  PXGSupportedPixelBufferFormats_supported = v19;
}

void __PXGDeviceSupportsIOSurfaceCompression_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = *MEMORY[0x277CBED28];
    if (v2 == CFDictionaryGetValue(v0, @"universal-buffer-compression"))
    {
      PXGDeviceSupportsIOSurfaceCompression__supportsIOSurfaceCompression = 1;
    }

    CFRelease(v1);
  }
}

uint64_t PXGCreateMetalTexturesFromPixelBuffer(__CVBuffer *a1, void *a2, __CVMetalTextureCache *a3, NSObject **a4, void *a5, int *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v30 = 0;
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface)
  {
    v13 = PXGCreateMetalTextureFromIOSurface(IOSurface, v11, &v30);
    if (v13)
    {
      goto LABEL_3;
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v18 = 0;
  if (PixelFormatType <= 875704421)
  {
    if (PixelFormatType == 32)
    {
      goto LABEL_12;
    }

    v20 = 846624121;
  }

  else
  {
    if (PixelFormatType == 875704422 || PixelFormatType == 2016686640)
    {
      goto LABEL_12;
    }

    v20 = 875704438;
  }

  if (PixelFormatType != v20)
  {
    goto LABEL_41;
  }

LABEL_12:
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v22 = CVPixelBufferGetPixelFormatType(a1);
  v23 = v22;
  if (PlaneCount != 2)
  {
    if (PlaneCount || v22 != 32)
    {
      v18 = 0;
      if (PlaneCount || v22 != 846624121)
      {
        goto LABEL_41;
      }

      CVMetalTextureCacheFlush(a3, 0);
      v30 = _PXGShaderFlagsForYCbCrPixelBuffer(a1) | 0x10;
      v13 = _createMetalTextureForPixelBufferPlane(a1, MTLPixelFormatBGRG422, 0, a3);
      if (!v13)
      {
        v14 = PXAssertGetLog();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 138412290;
        v32 = a1;
        goto LABEL_26;
      }
    }

    else
    {
      CVMetalTextureCacheFlush(a3, 0);
      v30 = 1;
      v13 = _createMetalTextureForPixelBufferPlane(a1, MTLPixelFormatRGBA8Unorm, 0, a3);
      if (!v13)
      {
        v14 = PXAssertGetLog();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 138412290;
        v32 = a1;
LABEL_26:
        _os_log_error_impl(&dword_21AD38000, v14, OS_LOG_TYPE_ERROR, "Unable to create texture for video pixelBuffer %@", buf, 0xCu);
        goto LABEL_39;
      }
    }

LABEL_3:
    v14 = v13;
    v15 = 0;
LABEL_4:
    v16 = v14;
    *a4 = v14;
    v17 = v15;
    *a5 = v15;
    *a6 = v30;

    v18 = 1;
LABEL_40:

    goto LABEL_41;
  }

  v18 = 0;
  if (v22 > 875704437)
  {
    if (v22 == 2016686640)
    {
      goto LABEL_30;
    }

    v24 = 12406;
  }

  else
  {
    if (v22 == 32)
    {
      goto LABEL_30;
    }

    v24 = 12390;
  }

  if (v22 == (v24 | 0x34320000))
  {
LABEL_30:
    CVMetalTextureCacheFlush(a3, 0);
    v30 = _PXGShaderFlagsForYCbCrPixelBuffer(a1);
    if (v23 == 2016686640 || v23 == 32)
    {
      v25 = MTLPixelFormatRG16Unorm;
      v26 = MTLPixelFormatR16Unorm;
    }

    else
    {
      v25 = MTLPixelFormatRG8Unorm;
      v26 = MTLPixelFormatR8Unorm;
    }

    v14 = _createMetalTextureForPixelBufferPlane(a1, v26, 0, a3);
    v27 = _createMetalTextureForPixelBufferPlane(a1, v25, 1uLL, a3);
    v15 = v27;
    if (v14 && v27)
    {
      goto LABEL_4;
    }

    v28 = PXAssertGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = a1;
      _os_log_error_impl(&dword_21AD38000, v28, OS_LOG_TYPE_ERROR, "Unable to create texture for video pixelBuffer %@", buf, 0xCu);
    }

LABEL_39:
    v18 = 0;
    goto LABEL_40;
  }

LABEL_41:

  return v18;
}

uint64_t _PXGShaderFlagsForYCbCrPixelBuffer(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v3 = PixelFormatType;
  v4 = ycbcr_fourcc_bits_per_component(PixelFormatType);
  is_video_range = ycbcr_fourcc_is_video_range(v3);
  if (is_video_range)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  Attributes = CVPixelBufferGetAttributes();
  if (Attributes)
  {
    Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4E28]);
    if (Value)
    {
      v9 = Value;
      v10 = CFDictionaryGetValue(Value, *MEMORY[0x277CC4EF8]);
      if (v10)
      {
        is_video_range = CFEqual(v10, *MEMORY[0x277CC4F08]) != 0;
      }

      v11 = CFDictionaryGetValue(v9, *MEMORY[0x277CC4ED8]);
      v12 = v11;
      if (v11)
      {
        v4 = [v11 intValue];
      }
    }
  }

  v13 = CVBufferCopyAttachment(a1, *MEMORY[0x277CC4D10], 0);
  if (v13)
  {
    v14 = v13;
    if (CFEqual(v13, *MEMORY[0x277CC4D20]))
    {
      v15 = is_video_range == 0;
      v16 = 1;
    }

    else if (CFEqual(v14, *MEMORY[0x277CC4D28]))
    {
      v15 = is_video_range == 0;
      v16 = 3;
    }

    else
    {
      if (!CFEqual(v14, *MEMORY[0x277CC4D18]))
      {
        v19 = CFEqual(v14, *MEMORY[0x277CC4D30]);
        if (is_video_range)
        {
          v20 = 7;
        }

        else
        {
          v20 = 8;
        }

        if (v19)
        {
          v6 = v20;
        }

        goto LABEL_21;
      }

      v15 = is_video_range == 0;
      v16 = 5;
    }

    if (v15)
    {
      v6 = v16 + 1;
    }

    else
    {
      v6 = v16;
    }

LABEL_21:
    CFRelease(v14);
  }

  if (v4 == 10)
  {
    v17 = 0x2000;
  }

  else
  {
    v17 = 4096;
  }

  return v17 | (v6 << 8);
}

id _createMetalTextureForPixelBufferPlane(__CVBuffer *a1, MTLPixelFormat a2, size_t planeIndex, __CVMetalTextureCache *a4)
{
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, planeIndex);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, planeIndex);
  image = 0;
  v10 = CVMetalTextureCacheCreateTextureFromImage(0, a4, a1, 0, a2, WidthOfPlane, HeightOfPlane, planeIndex, &image);
  v11 = 0;
  if (!v10)
  {
    v11 = CVMetalTextureGetTexture(image);
  }

  CVBufferRelease(image);

  return v11;
}

CGColorRef PXGCreateSRGBColorFromDisplayP3Color(CGColor *a1)
{
  if (a1)
  {
    if (!CGColorGetColorSpace(a1) || (v2 = PXGetColorSpace(), CGColorSpaceEqualToColorSpace()) || (result = CGColorCreateCopyByMatchingToColorSpace(v2, kCGRenderingIntentDefault, a1, 0)) == 0)
    {

      return CGColorRetain(a1);
    }
  }

  else
  {

    return CGColorCreateSRGB(0.0, 0.0, 0.0, 0.0);
  }

  return result;
}

uint64_t PXGOffscreenMetalPixelFormatForDrawableFormat(uint64_t result, int a2)
{
  if (result <= 114)
  {
    if (result == 80)
    {
      return result;
    }

    if (result == 90)
    {
      v2 = a2 == 0;
      v3 = 115;
      v4 = 90;
LABEL_9:
      if (v2)
      {
        return v3;
      }

      else
      {
        return v4;
      }
    }

    return 80;
  }

  if (result != 115 && result != 552)
  {
    if (result == 554)
    {
      v2 = a2 == 0;
      v3 = 552;
      v4 = 554;
      goto LABEL_9;
    }

    return 80;
  }

  return result;
}

uint64_t PXGBytesPerPixelForMetalPixelFormat(uint64_t a1)
{
  v2 = a1 - 1;
  result = 1;
  switch(v2)
  {
    case 0:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      return result;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 20:
    case 25:
    case 26:
    case 27:
    case 28:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 55:
    case 56:
    case 57:
    case 58:
    case 60:
    case 65:
    case 66:
    case 67:
    case 68:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 105:
    case 106:
    case 107:
    case 108:
    case 110:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
      goto LABEL_6;
    case 19:
    case 21:
    case 22:
    case 23:
    case 24:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 39:
    case 40:
    case 41:
    case 42:
      return 2;
    case 52:
    case 53:
    case 54:
    case 59:
    case 61:
    case 62:
    case 63:
    case 64:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 79:
    case 80:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
      return 4;
    case 102:
    case 103:
    case 104:
    case 109:
    case 111:
    case 112:
    case 113:
    case 114:
      return 8;
    case 122:
    case 123:
    case 124:
      return 16;
    default:
      if ((a1 - 552) < 2)
      {
        return 8;
      }

      if ((a1 - 554) >= 2)
      {
LABEL_6:
        v4 = a1;
        v5 = [MEMORY[0x277CCA890] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSUInteger PXGBytesPerPixelForMetalPixelFormat(MTLPixelFormat)"];
        [v5 handleFailureInFunction:v6 file:@"PXGTextureUtilities.m" lineNumber:1881 description:{@"Unsupported pixel format:%lu", v4}];

        abort();
      }

      return 4;
  }
}

id PXGCreateIOSurface2DTexture(void *a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 pixelFormat];
  v6 = v5;
  v7 = 0;
  v31 = v3;
  if (v5 <= 69)
  {
    if (v5 <= 39)
    {
      if (v5 > 19)
      {
        if (v5 == 20)
        {
          v8 = 1278226742;
        }

        else
        {
          if (v5 != 30)
          {
            goto LABEL_50;
          }

          v8 = 1279340600;
        }
      }

      else if (v5 == 1)
      {
        v8 = 1093677112;
      }

      else
      {
        if (v5 != 10)
        {
          goto LABEL_50;
        }

        v8 = 1278226488;
      }
    }

    else if (v5 <= 42)
    {
      if (v5 == 40)
      {
        v8 = 1278555701;
      }

      else
      {
        if (v5 != 42)
        {
          goto LABEL_50;
        }

        v8 = 875836468;
      }
    }

    else
    {
      switch(v5)
      {
        case '+':
          v8 = 1278555445;
          break;
        case '<':
          v8 = 843264310;
          break;
        case 'A':
          v8 = 843264104;
          break;
        default:
          goto LABEL_50;
      }
    }

    goto LABEL_42;
  }

  if (v5 > 114)
  {
    if ((v5 - 554) < 2)
    {
      v8 = 1999843442;
      goto LABEL_42;
    }

    if (v5 == 115)
    {
      v8 = 1380411457;
      goto LABEL_42;
    }

    if (v5 != 125)
    {
      goto LABEL_50;
    }

    v9 = 26177;
LABEL_40:
    v8 = v9 | 0x52470000u;
    goto LABEL_42;
  }

  if (v5 > 89)
  {
    switch(v5)
    {
      case 'Z':
        v8 = 1378955371;
        break;
      case '^':
        v8 = 1815162994;
        break;
      case 'n':
        v8 = 1815491698;
        break;
      default:
        goto LABEL_50;
    }

    goto LABEL_42;
  }

  if (v5 == 70)
  {
    v9 = 16961;
    goto LABEL_40;
  }

  if (v5 != 80)
  {
    goto LABEL_50;
  }

  v8 = 1111970369;
LABEL_42:
  v10 = *MEMORY[0x277CD2B88];
  v11 = MEMORY[0x21CEE3010](*MEMORY[0x277CD2B88], [v4 width]);
  v12 = *MEMORY[0x277CD2A28];
  v13 = MEMORY[0x21CEE3010](*MEMORY[0x277CD2A28], [v4 height]);
  v14 = PXGBytesPerPixelForMetalPixelFormat(v6);
  v15 = *MEMORY[0x277CD2968];
  v16 = MEMORY[0x21CEE3010](*MEMORY[0x277CD2968], v14 * v11);
  v17 = MEMORY[0x21CEE3080](v10);
  v18 = MEMORY[0x21CEE3080](v12);
  v19 = MEMORY[0x21CEE3080](v15);
  v20 = v19;
  if (v11 > v17 || v13 > v18 || v16 > v19)
  {
    v28 = PXGTungstenGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110400;
      v35 = v11;
      v36 = 1024;
      v37 = v13;
      v38 = 1024;
      v39 = v17;
      v40 = 1024;
      v41 = v18;
      v42 = 1024;
      v43 = v16;
      v44 = 1024;
      v45 = v20;
      _os_log_impl(&dword_21AD38000, v28, OS_LOG_TYPE_DEFAULT, "Texture creation failed: exceeded IOSurface limits. size:(%u, %u) maxSize:(%u, %u) bytesPerRow:%u maxBytesPerRow:%u", buf, 0x26u);
    }

    v7 = 0;
    v3 = v31;
  }

  else
  {
    v21 = v16 * v13;
    v32[0] = *MEMORY[0x277CD2928];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v11];
    v33[0] = v22;
    v32[1] = *MEMORY[0x277CD28D0];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v13];
    v33[1] = v23;
    v32[2] = *MEMORY[0x277CD28B0];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v14];
    v33[2] = v24;
    v32[3] = *MEMORY[0x277CD28B8];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v16];
    v33[3] = v25;
    v32[4] = *MEMORY[0x277CD28A8];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v21];
    v33[4] = v26;
    v32[5] = *MEMORY[0x277CD28D8];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    v32[6] = @"kIOSurfaceName";
    v33[5] = v27;
    v33[6] = @"PXGIOSurface";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:7];

    v29 = IOSurfaceCreate(v28);
    v3 = v31;
    v7 = [v31 newTextureWithDescriptor:v4 iosurface:v29 plane:0];
    CFRelease(v29);
  }

LABEL_50:

  return v7;
}

void __PXGCreateBurstImageStackFromImage_block_invoke(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10 = *(a1 + 32);
  v11 = v10 * 2.5;
  v32 = v10 * 0.5;
  PXRectRoundToPixel();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  CGContextSetFillColorWithColor(a2, *(a1 + 40));
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  CGContextFillRect(a2, v33);
  CGImageGetWidth(*(a1 + 48));
  CGImageGetHeight(*(a1 + 48));
  PXSizeGetAspectRatioWithDefault();
  PXRectWithAspectRatioFillingRect();
  PXRectRoundToPixel();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  rect = v26;
  v34.origin.x = v13;
  v34.origin.y = v15;
  v34.size.width = v17;
  v34.size.height = v19;
  CGContextClipToRect(a2, v34);
  v35.origin.x = v21;
  v35.origin.y = v23;
  v35.size.width = v25;
  v35.size.height = rect;
  CGContextDrawImage(a2, v35, *(a1 + 48));
  CGContextResetClip(a2);
  CGContextSetAlpha(a2, 0.600000024);
  v27 = 1;
  do
  {
    v28 = v27;
    v36.origin.x = v13;
    v36.origin.y = v15;
    v36.size.width = v17;
    v36.size.height = v19;
    v15 = v32 + CGRectGetMaxY(v36);
    v17 = v17 + v11 * -2.0;
    v23 = v11 + v23;
    v37.origin.x = v11 + v13;
    v37.origin.y = v15;
    v37.size.width = v17;
    v37.size.height = v11 - v32;
    CGContextClipToRect(a2, v37);
    v38.size.width = v25;
    v38.origin.x = v21;
    v38.origin.y = v23;
    v38.size.height = rect;
    CGContextDrawImage(a2, v38, *(a1 + 48));
    CGContextResetClip(a2);
    v27 = 0;
    v19 = v11 - v32;
    v13 = v11 + v13;
  }

  while ((v28 & 1) != 0);
}

double PXGAbsoluteTime()
{
  if (!dword_27CD3D02C)
  {
    mach_timebase_info(&PXGAbsoluteTime_sTimebase);
  }

  return (mach_absolute_time() * PXGAbsoluteTime_sTimebase / dword_27CD3D02C) / 1000000000.0;
}

double PXGClearColorFromColor(void *a1, CGColorSpace *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"MTLClearColor PXGClearColorFromColor(UIColor *__strong _Nonnull, CGColorSpaceRef _Nonnull)"}];
    [v14 handleFailureInFunction:v15 file:@"PXGTextureUtilities.m" lineNumber:2120 description:{@"Invalid parameter not satisfying: %@", @"color != nil"}];
  }

  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  if (([v3 getRed:&v19 green:&v18 blue:&v17 alpha:&v16] & 1) == 0)
  {
    v4 = PXAssertGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v21 = v3;
      _os_log_fault_impl(&dword_21AD38000, v4, OS_LOG_TYPE_FAULT, "Unable to retrieve color components from backgroundColor:%@", buf, 0xCu);
    }

    v16 = 0x3FF0000000000000;
    v17 = 0x3FF0000000000000;
    v18 = 0x3FF0000000000000;
    v19 = 0x3FF0000000000000;
  }

  CGColorGetColorSpace([v3 CGColor]);
  if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
  {
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(a2, kCGRenderingIntentDefault, [v3 CGColor], 0);
    Components = CGColorGetComponents(CopyByMatchingToColorSpace);
    NumberOfComponents = CGColorGetNumberOfComponents(CopyByMatchingToColorSpace);
    if (NumberOfComponents != 3)
    {
      if (NumberOfComponents == 2)
      {
        v8 = *(Components + 1);
        v17 = *Components;
        v18 = v17;
        v19 = v17;
      }

      else
      {
        if (NumberOfComponents == 1)
        {
          v17 = *Components;
          v18 = v17;
          v19 = v17;
LABEL_14:
          v16 = 0x3FF0000000000000;
LABEL_18:
          CGColorRelease(CopyByMatchingToColorSpace);
          goto LABEL_19;
        }

        if (NumberOfComponents < 4)
        {
          goto LABEL_18;
        }

        v10 = *Components;
        v18 = *(Components + 1);
        v19 = v10;
        v8 = *(Components + 3);
        v17 = *(Components + 2);
      }

      v16 = v8;
      goto LABEL_18;
    }

    v9 = *Components;
    v18 = *(Components + 1);
    v19 = v9;
    v17 = *(Components + 2);
    goto LABEL_14;
  }

LABEL_19:
  v11 = *&v19;
  v12 = *&v16;

  return v11 * v12;
}

uint64_t _SelectionStyleUsesBadge(uint64_t a1)
{
  if ((a1 + 1) >= 7)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _SelectionStyleUsesBadge(PXGSelectionDecorationStyle)"];
    [v6 handleFailureInFunction:v7 file:@"PXGDecorationDefaultBadgeDrawingHelper.m" lineNumber:34 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return (0x70u >> (a1 + 1)) & 1;
}

void sub_21AD7DC18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_21AD7DDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_destroyWeak((v7 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _PXGRotatedImageWithTransform(void *a1)
{
  v1 = a1;
  v16 = 0;
  RotationAngleAndFlipsFromCGAffineTransform = FigGetRotationAngleAndFlipsFromCGAffineTransform();
  [v1 extent];
  v4 = v3;
  v6 = v5;
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeTranslation(&v15, v3 * -0.5, v5 * -0.5);
  CGAffineTransformMakeRotation(&t2, -RotationAngleAndFlipsFromCGAffineTransform * 3.14159265 / 180.0);
  v12 = v15;
  CGAffineTransformConcat(&v14, &v12, &t2);
  v15 = v14;
  v7 = -1.0;
  if (v16)
  {
    v8 = -1.0;
  }

  else
  {
    v8 = 1.0;
  }

  if (!HIBYTE(v16))
  {
    v7 = 1.0;
  }

  CGAffineTransformMakeScale(&t2, v8, v7);
  v12 = v15;
  CGAffineTransformConcat(&v14, &v12, &t2);
  v15 = v14;
  if (RotationAngleAndFlipsFromCGAffineTransform == 270 || RotationAngleAndFlipsFromCGAffineTransform == 90)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
    v6 = v4;
  }

  CGAffineTransformMakeTranslation(&t2, v6 * 0.5, v9 * 0.5);
  v12 = v15;
  CGAffineTransformConcat(&v14, &v12, &t2);
  v15 = v14;
  v10 = [v1 imageByApplyingTransform:&v14];

  return v10;
}

void sub_21AD834E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_21AD83B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v26 - 112));
  _Unwind_Resume(a1);
}

void sub_21AD843B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak(v1);
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_21AD85FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  objc_destroyWeak(location);
  objc_destroyWeak(&a68);
  objc_destroyWeak((v68 - 208));
  _Unwind_Resume(a1);
}

double PXGCleanApertureAmountForAsset(void *a1)
{
  v1 = [a1 playbackStyle];
  result = 0.9;
  if (v1 != 3)
  {
    return 1.0;
  }

  return result;
}

unint64_t PXGShouldApplyCleanApertureCropForSpriteIndexInLayout(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 leafSublayoutForSpriteIndex:a1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  v8 = [v7 displayAssetSource];
  v9 = [v7 displayAssetSourceRespondsTo];
  v11 = v10;
  if (v9)
  {
    v12 = ([v8 supportedDisplayAssetPresentationStylesInLayout:v7] >> 1) & 1;
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 0;
  if ((v10 & 0x100) != 0)
  {
LABEL_8:
    v12 = [v8 shouldApplyCleanApertureCropToStillImagesInLayout:v7];
  }

LABEL_9:

  return v12;
}

float64_t PXGCameraForVisibleRect(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a3.f64[1] = a4;
  __asm { FMOV            V3.2D, #0.5 }

  a1.f64[1] = a2;
  *&a1.f64[0] = vcvt_f32_f64(vaddq_f64(a1, vmulq_f64(a3, _Q3)));
  return a1.f64[0];
}

void sub_21AD8A4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4290(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AD8BA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AD8C3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose((v67 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_21AD90FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak((v35 - 176));
  _Unwind_Resume(a1);
}

__CFString *PXGAnchorTypeDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2782A8D10[a1];
  }
}

void sub_21AD93520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5627(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AD9414C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_21AD958E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_21AD96554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PXGAnchorPriorityDescription(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"Default";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Low";
  }
}

void sub_21AD97A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PXGSpriteIndexesEnumerateRanges(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    v6 = 0;
    do
    {
      v7 = (v5 + 4 * v6);
      v8 = *v7;
      v9 = 1;
      if (v4 >= 2)
      {
        while (v8 + v9 == v7[v9])
        {
          if (v4 == ++v9)
          {
            v9 = v4;
            break;
          }
        }
      }

      result = (*(a3 + 16))(a3, v8 | (v9 << 32), v6);
      v6 += v9;
      v4 -= v9;
    }

    while (v4);
  }

  return result;
}

void PXGSpriteIndexesEnumerateRangesForPositions(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __PXGSpriteIndexesEnumerateRangesForPositions_block_invoke;
  v7[3] = &unk_2782A8DE8;
  v8 = v5;
  v9 = a1;
  v6 = v5;
  [a2 enumerateRangesUsingBlock:v7];
}

void __PXGSpriteIndexesEnumerateRangesForPositions_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 40) + 4 * a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __PXGSpriteIndexesEnumerateRangesForPositions_block_invoke_2;
  v6[3] = &unk_2782A8DC0;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = a3;
  PXGSpriteIndexesEnumerateRanges(v5, a3, v6);
}

id PXDebugHierarchyObjectsInGroupForView(void *a1, void *a2, void *a3, int a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if ([a1 isEqualToString:@"com.apple.AppKit.NSView"])
  {
    if (a4 && (+[PXTungstenSettings sharedInstance](PXTungstenSettings, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 sortSpritesInXcodeCustomDebugHierarchy], v9, +[PXDebugHierarchyViewTreeBuilder buildViewTreeForDebugHierarchyWithIdentifier:provider:options:](PXDebugHierarchyViewTreeBuilder, "buildViewTreeForDebugHierarchyWithIdentifier:provider:options:", v8, v7, v10), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v15[0] = v11;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    }

    else
    {
      v13 = [v7 subviews];
      v12 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id CALayerContentsGravityFromPXGContentsGravity(unsigned int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 >= 0xE)
  {
    v3 = PXAssertGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = a1;
      _os_log_error_impl(&dword_21AD38000, v3, OS_LOG_TYPE_ERROR, "invalid PXGContentsGravity value %i", v6, 8u);
    }

    v2 = MEMORY[0x277CDA720];
  }

  else
  {
    v2 = qword_2782A8E08[a1];
  }

  v4 = *v2;

  return v4;
}

void sub_21AD9A02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6291(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AD9AF74(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_21AD9D8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21AD9E0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AD9F0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6827(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL _textureMatchesSize(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 width] == *a2 && objc_msgSend(v5, "height") == a2[1] && objc_msgSend(v5, "depth") == a2[2] && objc_msgSend(v5, "pixelFormat") == a3;

  return v6;
}

uint64_t __Block_byref_object_copy__6903(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21ADA0D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6967(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21ADA4EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PXGStartSimulatingLayoutGlitches(uint64_t result, double a2)
{
  PXGSimulatedLayoutGlitchDuration = *&a2;
  PXGSimulatedLayoutGlitchPeriod = result;
  return result;
}

id PXGDeepestPreferredFocusEnvironmentsForLayout(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 preferredFocusLayouts];
  v3 = v2;
  if (!v2 || ![v2 count] || objc_msgSend(v3, "count") == 1 && (objc_msgSend(v3, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == v1))
  {
    v5 = [v1 preferredFocusSpriteIndexes];
    if ([v5 count])
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __PXGDeepestPreferredFocusEnvironmentsForLayout_block_invoke;
      v19[3] = &unk_2782AAF40;
      v20 = v1;
      v12 = v11;
      v21 = v12;
      [v5 enumerateIndexesUsingBlock:v19];
      if ([v12 count])
      {
        v13 = [v12 copy];
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = PXGDeepestPreferredFocusEnvironmentsForLayout(*(*(&v15 + 1) + 8 * i));
          if (v10)
          {
            v13 = v10;
            goto LABEL_21;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = 0;
LABEL_21:

  return v13;
}

void __PXGDeepestPreferredFocusEnvironmentsForLayout_block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) axGroup];
  [v6 updateIfNeeded];
  v4 = [v6 loadLeafAtSpriteIndexIfNeeded:a2 usingOptions:4];
  v5 = [v6 loadedLeafAtSpriteIndex:a2];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_21ADAB7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADAB8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADABD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADAD1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __destructor_8_s16_s24_s32(va);
  _Unwind_Resume(a1);
}

void __destructor_8_s16_s24_s32(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_21ADAD628(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_21ADAE1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Unwind_Resume(a1);
}

void sub_21ADAF30C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x4C0], 8);
  _Block_object_dispose(&STACK[0x4E0], 8);
  _Block_object_dispose(&STACK[0x500], 8);
  _Block_object_dispose(&STACK[0x520], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8755(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21ADAF6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADB15CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}
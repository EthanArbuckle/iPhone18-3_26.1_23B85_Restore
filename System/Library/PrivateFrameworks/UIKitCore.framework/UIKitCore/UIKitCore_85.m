id _UIFocusItemHaloEffect(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIFocusHaloEffect * _Nullable _UIFocusItemHaloEffect(id<UIFocusItem>  _Nonnull __strong)"];
    [v5 handleFailureInFunction:v6 file:@"_UIFocusPlatformHelper.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];
  }

  if (_UIFocusItemIsViewOrRespondsToSelector(v1))
  {
    [v1 focusEffect];
  }

  else
  {
    +[UIFocusEffect effect];
  }
  v2 = ;
  v3 = [v2 _resolvedEffectForItem:v1];

  return v3;
}

double _UIFocusVelocityBasedInterpolationFactor(long double a1, long double a2)
{
  v2 = hypot(a1, a2);
  v3 = 1.0;
  if (v2 >= 1000.0)
  {
    return fmin(fmax((v2 + -1000.0) / -10000.0 + 1.0, 0.0), 1.0);
  }

  return v3;
}

void sub_189EA38C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ThrowRangeException(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695DA20];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Token index %ld out of range: [0, %ld"], a1, a2);
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

void sub_189EA3CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_189EA4448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189EA72CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189EA93E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _firstChildViewControllerDefiningPresentationContext(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 definesPresentationContext] && (objc_msgSend(v1, "_isPresentationContextByDefault") & 1) == 0)
  {
    v8 = v1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [v1 childViewControllers];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = _firstChildViewControllerDefiningPresentationContext(*(*(&v10 + 1) + 8 * i));
          if (v7)
          {
            v8 = v7;
            goto LABEL_13;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_13:
  }

  return v8;
}

void sub_189EAB640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189EAC0D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 160));
  objc_destroyWeak((v1 - 152));
  _Unwind_Resume(a1);
}

uint64_t _shouldPerformNavigationBarHidingWithLuck(void *a1)
{
  if (![a1 isInteractiveTransition])
  {
    return 1;
  }

  v1 = _UIMainBundleIdentifier();
  v2 = [v1 isEqualToString:@"com.apple.mobileslideshow"] ^ 1;

  return v2;
}

void sub_189EAFEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189EB10F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 88));
  _Unwind_Resume(a1);
}

__IOSurface *_UIRenderingBufferCreate(void *a1, double a2, double a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [v5 objectForKeyedSubscript:@"dst-buffer-format"];
  v7 = [v6 unsignedIntegerValue];

  if (v7)
  {
    goto LABEL_2;
  }

  v10 = [v5 objectForKeyedSubscript:@"dst-gamut"];
  v11 = v10;
  if (!v10 || [v10 intValue] == -1)
  {
    v12 = _UIRenderingDefaultGamut(0);
  }

  else
  {
    v12 = [v11 intValue];
  }

  v7 = 1647534392;
  v23 = [v5 objectForKeyedSubscript:@"dst-opaque"];
  v24 = v23;
  if (v23)
  {
    if ([v23 BOOLValue])
    {
      v7 = 1999843442;
    }

    else
    {
      v7 = 1647534392;
    }
  }

  v25 = [v5 objectForKeyedSubscript:@"dst-allowHDR"];
  v26 = [v25 unsignedIntValue];
  if (v26 == 1)
  {

    goto LABEL_25;
  }

  if (v26 != 2)
  {

    goto LABEL_28;
  }

  v27 = [v5 objectForKeyedSubscript:@"dst-headroom"];
  v28 = v27;
  if (v27)
  {
    [v27 doubleValue];
    v30 = v29 > 1.0;
  }

  else
  {
    v30 = 0;
  }

  if (v30)
  {
LABEL_25:
    if (v12 == 1)
    {
LABEL_26:
      v46 = a2;
      v47 = llroundf(v46);
      v48 = a3;
      v49 = llroundf(v48);
      AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
      v18 = (AlignedBytesPerRow * v49);
      v63 = *MEMORY[0x1E696D130];
      v19 = [MEMORY[0x1E696AD98] numberWithLong:v47];
      v69 = v19;
      v64 = *MEMORY[0x1E696CF58];
      v20 = [MEMORY[0x1E696AD98] numberWithLong:v49];
      v70 = v20;
      v71 = &unk_1EFE32E78;
      v50 = *MEMORY[0x1E696CE50];
      v65 = *MEMORY[0x1E696CFC0];
      v66 = v50;
      v22 = &unk_1EFE32EC0;
      goto LABEL_30;
    }

LABEL_29:
    v51 = a2;
    v52 = llroundf(v51);
    v53 = a3;
    v54 = llroundf(v53);
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    v18 = (AlignedBytesPerRow * v54);
    v63 = *MEMORY[0x1E696D130];
    v19 = [MEMORY[0x1E696AD98] numberWithLong:v52];
    v69 = v19;
    v64 = *MEMORY[0x1E696CF58];
    v20 = [MEMORY[0x1E696AD98] numberWithLong:v54];
    v70 = v20;
    v71 = &unk_1EFE32E90;
    v55 = *MEMORY[0x1E696CE50];
    v65 = *MEMORY[0x1E696CFC0];
    v66 = v55;
    v22 = &unk_1EFE32EA8;
    goto LABEL_30;
  }

LABEL_28:
  if (v12 != 1)
  {
    goto LABEL_29;
  }

LABEL_2:
  v8 = 0;
  if (v7 <= 1647534391)
  {
    if (v7 != 1111970369)
    {
      v9 = 0;
      if (v7 != 1380411457)
      {
        goto LABEL_38;
      }

      goto LABEL_26;
    }

    goto LABEL_29;
  }

  if (v7 == 1647534392)
  {
    v31 = a2;
    v32 = llroundf(v31);
    v33 = a3;
    v34 = llroundf(v33);
    v35 = *MEMORY[0x1E696CE58];
    v36 = MEMORY[0x18CFE73E0](*MEMORY[0x1E696CE58], 4 * v32);
    v37 = v36 * v34;
    v19 = _makeIOSurfacePlaneProperties(v32, v34, v36, 0, v36 * v34);
    v38 = MEMORY[0x18CFE73E0](v35, v32);
    v39 = v38 * v34;
    v20 = _makeIOSurfacePlaneProperties(v32, v34, v38, v37, v38 * v34);
    v63 = *MEMORY[0x1E696D130];
    v40 = [MEMORY[0x1E696AD98] numberWithLong:v32];
    v69 = v40;
    v64 = *MEMORY[0x1E696CF58];
    v41 = [MEMORY[0x1E696AD98] numberWithLong:v34];
    v42 = *MEMORY[0x1E696CFC0];
    v70 = v41;
    v71 = &unk_1EFE32ED8;
    v43 = *MEMORY[0x1E696D0A8];
    v65 = v42;
    v66 = v43;
    v62[0] = v19;
    v62[1] = v20;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
    v72 = v44;
    v67 = *MEMORY[0x1E696CE30];
    v45 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v39 + v37];
    v73 = v45;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v63 count:5];

    goto LABEL_31;
  }

  v9 = 0;
  if (v7 != 1999843442)
  {
    goto LABEL_38;
  }

  v13 = a2;
  v14 = llroundf(v13);
  v15 = a3;
  v16 = llroundf(v15);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v18 = (AlignedBytesPerRow * v16);
  v63 = *MEMORY[0x1E696D130];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:v14];
  v69 = v19;
  v64 = *MEMORY[0x1E696CF58];
  v20 = [MEMORY[0x1E696AD98] numberWithInt:v16];
  v70 = v20;
  v71 = &unk_1EFE32EF0;
  v21 = *MEMORY[0x1E696CE50];
  v65 = *MEMORY[0x1E696CFC0];
  v66 = v21;
  v22 = &unk_1EFE32F08;
LABEL_30:
  v72 = v22;
  v67 = *MEMORY[0x1E696CE58];
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:AlignedBytesPerRow];
  v73 = v40;
  v68 = *MEMORY[0x1E696CE30];
  v41 = [MEMORY[0x1E696AD98] numberWithInt:v18];
  v74 = v41;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v63 count:6];
LABEL_31:

  v9 = IOSurfaceCreate(v8);
  if (v9)
  {
    v56 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    CGColorSpaceAttachToIOSurface();
    CGColorSpaceRelease(v56);
    v57 = [v5 objectForKeyedSubscript:@"dst-scale"];
    if (v57)
    {
      IOSurfaceSetValue(v9, @"scale", v57);
    }

    v58 = [v5 objectForKeyedSubscript:@"dst-headroom"];
    v59 = v58;
    if (v58)
    {
      [v58 doubleValue];
      if (v60 > 1.0)
      {
        IOSurfaceSetValue(v9, *MEMORY[0x1E696CEF0], v59);
      }
    }
  }

LABEL_38:

  return v9;
}

uint64_t _UIRenderingDefaultGamut(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || [v1 gamut] == -1)
  {
    v4 = +[UIDevice currentDevice];
    v3 = [v4 _supportsDeepColor];
  }

  else
  {
    v3 = [v2 gamut];
  }

  return v3;
}

uint64_t _UIRenderingBufferCreateCGImage(__IOSurface *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"dst-opaque"];
  v5 = v4;
  v6 = 8194;
  if (v4)
  {
    if ([v4 BOOLValue])
    {
      v6 = 8198;
    }

    else
    {
      v6 = 8194;
    }
  }

  v7 = [v3 objectForKeyedSubscript:@"dst-gamut"];
  v8 = v7;
  if (v7)
  {
    v9 = 2 * ([v7 integerValue] == 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v3 objectForKeyedSubscript:@"dst-component-type"];
  v11 = v10;
  if (v10)
  {
    v9 = [v10 integerValue];
  }

  PixelFormat = IOSurfaceGetPixelFormat(a1);
  if (PixelFormat == 1380411457 || PixelFormat == 1999843442 || PixelFormat == 1647534392)
  {
    if (v9)
    {
      v27 = *MEMORY[0x1E696D2B8];
      v13 = [MEMORY[0x1E696AD98] numberWithInt:v9];
      *&v28[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    }

    else
    {
      v14 = 0;
    }

    v15 = CGImageCreateFromIOSurface();
  }

  else
  {
    v15 = 0;
    if (!IOSurfaceLock(a1, 1u, 0))
    {
      CFRetain(a1);
      IOSurfaceIncrementUseCount(a1);
      BaseAddress = IOSurfaceGetBaseAddress(a1);
      v18 = IOSurfaceGetBytesPerRow(a1);
      Width = IOSurfaceGetWidth(a1);
      Height = IOSurfaceGetHeight(a1);
      AllocSize = IOSurfaceGetAllocSize(a1);
      v22 = CGDataProviderCreateWithData(a1, BaseAddress, AllocSize, _releaseIOService);
      if (v22)
      {
        v23 = v22;
        bytesPerRow = v18;
        DeviceRGB = CGColorSpaceCopyFromIOSurface();
        if (!DeviceRGB)
        {
          v34 = 0;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v29 = 0u;
          memset(v28, 0, sizeof(v28));
          v27 = 132;
          if (IOSurfaceGetBulkAttachments() || BYTE11(v29) != 12 || (DeviceRGB = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8])) == 0)
          {
            DeviceRGB = CGColorSpaceCreateDeviceRGB();
          }
        }

        v25 = DeviceRGB;
        v15 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, bytesPerRow, DeviceRGB, v6, v23, 0, 1, kCGRenderingIntentDefault);
        CGImageSetProperty();
        CGColorSpaceRelease(v25);
        CGDataProviderRelease(v23);
      }

      else
      {
        IOSurfaceUnlock(a1, 1u, 0);
        IOSurfaceDecrementUseCount(a1);
        CFRelease(a1);
        v15 = 0;
      }
    }
  }

  return v15;
}

double _UIRenderingBufferGetScale(__IOSurface *a1)
{
  v1 = IOSurfaceCopyValue(a1, @"scale");
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

double _UIRenderingBufferGetHeadroom(__IOSurface *a1)
{
  v1 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CEF0]);
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
  }

  else
  {
    v3 = 0.0;
  }

  if (v3 >= 1.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  return v4;
}

uint64_t _UIRenderingMultiBufferRefGetTypeID()
{
  if (qword_1ED4A05C8 != -1)
  {
    dispatch_once(&qword_1ED4A05C8, &__block_literal_global_5_9);
  }

  return _MergedGlobals_1261;
}

void _renderingMultiBufferFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t _UIRenderingMultiBufferCreate(void *a1, double a2, double a3)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v5 = 1647534392;
  v6 = a1;
  v7 = [v6 objectForKeyedSubscript:@"dst-scale"];
  v8 = v7;
  v9 = &unk_1EFE2EAB8;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v6 objectForKeyedSubscript:@"dst-opaque"];
  v12 = v11;
  if (v11)
  {
    if ([v11 BOOLValue])
    {
      v5 = 1999843442;
    }

    else
    {
      v5 = 1647534392;
    }
  }

  v13 = [v6 objectForKeyedSubscript:@"dst-allowHDR"];
  v14 = [v13 unsignedIntegerValue];
  if (qword_1ED4A05C8 != -1)
  {
    dispatch_once(&qword_1ED4A05C8, &__block_literal_global_5_9);
  }

  Instance = _CFRuntimeCreateInstance();
  if (v14)
  {
    v35[0] = @"dst-buffer-format";
    v16 = [v6 objectForKeyedSubscript:@"dst-sdr-buffer-format"];
    v17 = v16;
    v18 = &unk_1EFE32E78;
    if (v16)
    {
      v18 = v16;
    }

    v35[1] = @"dst-scale";
    v36[0] = v18;
    v36[1] = v10;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    *(Instance + 16) = _UIRenderingBufferCreate(v19, a2, a3);

    v33[0] = @"dst-buffer-format";
    v20 = [v6 objectForKeyedSubscript:@"dst-hdr-buffer-format"];
    v21 = v20;
    v22 = &unk_1EFE32E78;
    if (v20)
    {
      v22 = v20;
    }

    v33[1] = @"dst-scale";
    v34[0] = v22;
    v34[1] = v10;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    *(Instance + 24) = _UIRenderingBufferCreate(v23, a2, a3);
  }

  else
  {
    v24 = [v6 objectForKeyedSubscript:@"dst-sdr-buffer-format"];
    v21 = v24;
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v26 = [v6 objectForKeyedSubscript:@"dst-gamut"];
      v27 = [v26 integerValue];

      if ((v27 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v28 = 1111970369;
      }

      else
      {
        v28 = v5;
      }

      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v28];
    }

    v23 = v25;
    v31[0] = @"dst-buffer-format";
    v31[1] = @"dst-scale";
    v32[0] = v25;
    v32[1] = v10;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    *(Instance + 16) = _UIRenderingBufferCreate(v29, a2, a3);
  }

  return Instance;
}

uint64_t _UIRenderingSlotGetTypeID()
{
  if (qword_1ED4A05D8 != -1)
  {
    dispatch_once(&qword_1ED4A05D8, &__block_literal_global_12_8);
  }

  return qword_1ED4A05D0;
}

void _renderingSlotFinalize(uint64_t a1)
{
  [*(a1 + 16) deleteSlot:*(a1 + 24)];
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
}

uint64_t _UIRenderingSlotCreate(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 objectForKeyedSubscript:@"context"];
  v7 = v6;
  if (!v6)
  {
    if (qword_1ED4A05E8 != -1)
    {
      dispatch_once(&qword_1ED4A05E8, &__block_literal_global_45_3);
    }

    v7 = qword_1ED4A05E0;
  }

  v8 = v7;

  v9 = [v5 objectForKeyedSubscript:@"dst-scale"];
  v10 = [v5 objectForKeyedSubscript:@"dst-gamut"];
  v11 = [v5 objectForKeyedSubscript:@"dst-opaque"];

  if (v10)
  {
    v12 = [v10 intValue];
    if (v11)
    {
LABEL_7:
      v13 = [v11 BOOLValue] ^ 1;
      goto LABEL_10;
    }
  }

  else
  {
    v12 = -1;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  v13 = 1;
LABEL_10:
  if (v12 == -1)
  {
    v14 = [v8 createImageSlot:v13 hasAlpha:{a2, a3}];
  }

  else
  {
    v14 = [v8 createImageSlot:v13 hasAlpha:v12 != 0 extendedColors:{a2, a3}];
  }

  v15 = v14;
  if (v14)
  {
    if (qword_1ED4A05D8 != -1)
    {
      dispatch_once(&qword_1ED4A05D8, &__block_literal_global_12_8);
    }

    Instance = _CFRuntimeCreateInstance();
    objc_storeStrong((Instance + 16), v8);
    *(Instance + 24) = v15;
    if (v9)
    {
      [v9 doubleValue];
    }

    else
    {
      v17 = 0;
    }

    *(Instance + 32) = v17;
  }

  else
  {
    Instance = 0;
  }

  return Instance;
}

id _UIRenderingSlotGetObject(uint64_t a1)
{
  v1 = [MEMORY[0x1E6979320] objectForSlot:*(a1 + 24)];
  if (!v1)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id  _Nonnull _UIRenderingSlotGetObject(const _UIRenderingSlotRef _Nonnull)"];
    [v3 handleFailureInFunction:v4 file:@"UIRendering.m" lineNumber:496 description:@"Failed to get proxy object for rendering slot."];
  }

  return v1;
}

double _UIRenderingDestinationGetScale(double *a1)
{
  v2 = CFGetTypeID(a1);
  if (IOSurfaceGetTypeID() == v2)
  {

    return _UIRenderingBufferGetScale(a1);
  }

  else
  {
    if (qword_1ED4A05D8 != -1)
    {
      dispatch_once(&qword_1ED4A05D8, &__block_literal_global_12_8);
    }

    if (qword_1ED4A05D0 != v2)
    {
      _unsupportedDestinationType(v2);
    }

    return a1[4];
  }
}

id _UIRenderingDestinationGetContentsObject(void *a1)
{
  v2 = CFGetTypeID(a1);
  if (IOSurfaceGetTypeID() == v2)
  {
    v3 = a1;
  }

  else
  {
    if (qword_1ED4A05D8 != -1)
    {
      dispatch_once(&qword_1ED4A05D8, &__block_literal_global_12_8);
    }

    if (qword_1ED4A05D0 != v2)
    {
      _unsupportedDestinationType(v2);
    }

    v3 = _UIRenderingSlotGetObject(a1);
  }

  return v3;
}

unsigned int *_UIRenderingDestinationGetSnapshotDestinationObject(unsigned int *a1)
{
  v2 = CFGetTypeID(a1);
  if (IOSurfaceGetTypeID() == v2)
  {
    v3 = a1;
  }

  else
  {
    if (qword_1ED4A05D8 != -1)
    {
      dispatch_once(&qword_1ED4A05D8, &__block_literal_global_12_8);
    }

    if (qword_1ED4A05D0 != v2)
    {
      _unsupportedDestinationType(v2);
    }

    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[6]];
  }

  return v3;
}

id _UIRenderingBufferCreateUIImage(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CFGetTypeID(a1);
  if (IOSurfaceGetTypeID() == v4)
  {
    v5 = [[UIImage alloc] _initWithIOSurface:a1 scale:0 orientation:_UIRenderingBufferGetScale(a1)];
  }

  else
  {
    if (qword_1ED4A05C8 != -1)
    {
      dispatch_once(&qword_1ED4A05C8, &__block_literal_global_5_9);
    }

    if (_MergedGlobals_1261 != v4)
    {
      _unsupportedDestinationType(v4);
    }

    v5 = [[UIImage alloc] _initWithSDRIOSurface:*(a1 + 16) HDRIOSurface:*(a1 + 24) scale:0 orientation:_UIRenderingBufferGetScale(*(a1 + 16))];
  }

  v6 = v5;

  return v6;
}

id _makeIOSurfacePlaneProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v16[0] = *MEMORY[0x1E696D0C8];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a1];
  v17[0] = v9;
  v16[1] = *MEMORY[0x1E696D090];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
  v17[1] = v10;
  v16[2] = *MEMORY[0x1E696CFE8];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
  v17[2] = v11;
  v16[3] = *MEMORY[0x1E696D0B0];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
  v17[3] = v12;
  v16[4] = *MEMORY[0x1E696D0B8];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a5];
  v17[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];

  return v14;
}

void _releaseIOService(__IOSurface *a1)
{
  IOSurfaceUnlock(a1, 1u, 0);
  IOSurfaceDecrementUseCount(a1);

  CFRelease(a1);
}

void ___renderingSlotDefaultContext_block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69796C0];
  v6[0] = *MEMORY[0x1E69796A0];
  v6[1] = v0;
  v7[0] = @"RenderingSlotDefaultContext";
  v7[1] = MEMORY[0x1E695E118];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v2 = [MEMORY[0x1E6979320] remoteContextWithOptions:v1];
  v3 = qword_1ED4A05E0;
  qword_1ED4A05E0 = v2;

  if (!qword_1ED4A05E0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CAContext * _Nonnull _renderingSlotDefaultContext(void)_block_invoke"];
    [v4 handleFailureInFunction:v5 file:@"UIRendering.m" lineNumber:423 description:@"Failed to create rendering slot default CAContext."];
  }
}

double _UIPlatterLiftScaleForEdgeDimensions(double a1)
{
  v2 = _UIInternalPreferenceUsesDefault_1(&_MergedGlobals_950, @"UIDragPlatterLiftDimension");
  v3 = *&qword_1ED48B4E0 + *&qword_1ED48B4E0;
  if (v2)
  {
    v3 = 12.0;
  }

  v4 = (v3 + a1) / a1;
  if (_UIInternalPreferenceUsesDefault_1(algn_1ED48B4E8, @"UIDragPlatterLiftedMinScale"))
  {
    v5 = 1.01;
  }

  else
  {
    v5 = *&qword_1ED48B4F0;
  }

  v6 = _UIInternalPreferenceUsesDefault_1(algn_1ED48B4F8, @"UIDragPlatterLiftedMaxScale");
  v7 = *&qword_1ED48B500;
  if (v6)
  {
    v7 = 1.1;
  }

  return fmax(v5, fmin(v4, v7));
}

void _UICornerInsetsPropagatedToChildRect(double *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>, CGFloat a9@<D6>, CGFloat a10@<D7>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v39.origin.x = a7;
  v39.origin.y = a8;
  v39.size.width = a9;
  v39.size.height = a10;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  v38 = fmax(MinY - CGRectGetMinY(v40), 0.0);
  v41.origin.x = a7;
  v41.origin.y = a8;
  v41.size.width = a9;
  v41.size.height = a10;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  v36 = fmax(MinX - CGRectGetMinX(v42), 0.0);
  v43.origin.x = a3;
  v43.origin.y = a4;
  v43.size.width = a5;
  v43.size.height = a6;
  MaxY = CGRectGetMaxY(v43);
  v44.origin.x = a7;
  v44.origin.y = a8;
  v44.size.width = a9;
  v44.size.height = a10;
  v37 = MaxY - CGRectGetMaxY(v44);
  v45.origin.x = a3;
  v45.origin.y = a4;
  v45.size.width = a5;
  v45.size.height = a6;
  MaxX = CGRectGetMaxX(v45);
  v46.origin.x = a7;
  v46.origin.y = a8;
  v46.size.width = a9;
  v46.size.height = a10;
  v23 = MaxX - CGRectGetMaxX(v46);
  v24 = fmax(*a1 - v36, 0.0);
  if (v24 > 0.0)
  {
    v25 = fmax(a1[1] - v38, 0.0);
    if (v25 > 0.0)
    {
      *a2 = v24;
      *(a2 + 8) = v25;
    }
  }

  v26 = fmax(v37, 0.0);
  v27 = fmax(v23, 0.0);
  v28 = fmax(a1[2] - v36, 0.0);
  if (v28 > 0.0)
  {
    v29 = fmax(a1[3] - v26, 0.0);
    if (v29 > 0.0)
    {
      *(a2 + 16) = v28;
      *(a2 + 24) = v29;
    }
  }

  v30 = fmax(a1[4] - v27, 0.0);
  if (v30 > 0.0)
  {
    v31 = fmax(a1[5] - v26, 0.0);
    if (v31 > 0.0)
    {
      *(a2 + 32) = v30;
      *(a2 + 40) = v31;
    }
  }

  v32 = fmax(a1[6] - v27, 0.0);
  if (v32 > 0.0)
  {
    v33 = fmax(a1[7] - v38, 0.0);
    if (v33 > 0.0)
    {
      *(a2 + 48) = v32;
      *(a2 + 56) = v33;
    }
  }
}

CATransform3D *_UISnapshotContainerTransform@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>, double a6@<D1>, __n128 a7@<Q2>, __n128 a8@<Q3>)
{
  v9 = a8.n128_f64[0];
  v10 = a7.n128_f64[0];
  v36 = *MEMORY[0x1E69E9840];
  v14 = 0.0;
  v15 = 0.0;
  if (a2 != 1)
  {
    if (a2 == 3)
    {
      v15 = 1.57079633;
    }

    else if (a2 == 4)
    {
      v15 = -1.57079633;
    }

    else
    {
      v15 = 3.14159265;
      if (a2 != 2)
      {
        v15 = 0.0;
      }
    }
  }

  v28 = v15;
  if (a3 != 1)
  {
    switch(a3)
    {
      case 3:
        v14 = 1.57079633;
        break;
      case 4:
        v14 = -1.57079633;
        break;
      case 2:
        v14 = 3.14159265;
        break;
      default:
        v14 = 0.0;
        break;
    }
  }

  v16 = _orientationDistance_angles[a1];
  v17 = (&_UISnapshotRectOriginForOrientation_origins + 16 * (_orientationDistance_angles[a2] - v16 + 4 * ((_orientationDistance_angles[a2] - v16) >> 31)));
  v18 = (*v17)(a5, a6, a7, a8);
  v19 = v17[1](a5, a6, v10, v9);
  v20 = (&_UISnapshotRectOriginForOrientation_origins + 16 * (_orientationDistance_angles[a3] - v16 + 4 * ((_orientationDistance_angles[a3] - v16) >> 31)));
  v21 = (*v20)(a5, a6, v10, v9);
  v22 = v20[1](a5, a6, v10, v9) - a6;
  CATransform3DMakeTranslation(&v33, -v18, -v19, 0.0);
  CATransform3DMakeRotation(&v34, v14 - v28, 0.0, 0.0, 1.0);
  CATransform3DMakeTranslation(&v35, v21 - a5, v22, 0.0);
  a = v33;
  b = v34;
  CATransform3DConcat(&v32, &a, &b);
  b = v32;
  v29 = v35;
  result = CATransform3DConcat(&a, &b, &v29);
  *&v32.m41 = *&a.m41;
  *&v32.m43 = *&a.m43;
  *&v32.m11 = *&a.m11;
  *&v32.m13 = *&a.m13;
  *&v32.m21 = *&a.m21;
  *&v32.m23 = *&a.m23;
  v24 = *&a.m33;
  a4[4] = *&a.m31;
  a4[5] = v24;
  v25 = *&v32.m43;
  a4[6] = *&v32.m41;
  a4[7] = v25;
  v26 = *&v32.m13;
  *a4 = *&v32.m11;
  a4[1] = v26;
  v27 = *&v32.m23;
  a4[2] = *&v32.m21;
  a4[3] = v27;
  return result;
}

id _makeUISceneViewForLiveResize(void *a1)
{
  v1 = a1;
  [v1 bounds];
  v6 = _UISnapshotScreenAtViewRectAfterCommit(v1, 0, v2, v3, v4, v5);

  [v6 setAutoresizingMask:18];
  [v6 setUserInteractionEnabled:0];
  v7 = [v6 layer];
  [v7 setDisableUpdateMask:2];

  return v6;
}

id _UISnapshotScreenAtViewRectAfterCommit(void *a1, int a2, double a3, double a4, double a5, double a6)
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = [v11 _window];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 windowScene];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 _effectiveUISettings];
      v17 = [v16 hostContextIdentifierForSnapshotting];
      v18 = [v16 scenePresenterRenderIdentifierForSnapshotting];
      if (v17 && (v19 = v18) != 0)
      {
        v20 = [v11 layer];
        v21 = *(MEMORY[0x1E69792E8] + 80);
        v39 = *(MEMORY[0x1E69792E8] + 64);
        v40 = v21;
        v22 = *(MEMORY[0x1E69792E8] + 112);
        v41 = *(MEMORY[0x1E69792E8] + 96);
        v42 = v22;
        v23 = *(MEMORY[0x1E69792E8] + 16);
        *buf = *MEMORY[0x1E69792E8];
        *&buf[16] = v23;
        v24 = *(MEMORY[0x1E69792E8] + 48);
        v37 = *(MEMORY[0x1E69792E8] + 32);
        v38 = v24;
        CALayerMapGeometry();

        v25 = [v11 _screen];
        v35[4] = v39;
        v35[5] = v40;
        v35[6] = v41;
        v35[7] = v42;
        v35[0] = *buf;
        v35[1] = *&buf[16];
        v35[2] = v37;
        v35[3] = v38;
        v26 = _UISnapshotLayerIdRectAfterCommit(v17, v19, v25, v35, a2, a3, a4, a5, a6);
      }

      else
      {
        memset(&v34, 0, sizeof(v34));
        _makeViewSnapshotTransform(&v34, v11);
        v31 = [v11 _screen];
        v32 = [v15 _visibleWindows];
        v26 = _UISnapshotScreenWindowsRectAfterCommit(v31, v32, &v34, a2, a3, a4, a5, a6);
      }
    }

    else
    {
      v29 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0660) + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = v29;
        *buf = 134218754;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = objc_opt_class();
        *&buf[22] = 2048;
        *&buf[24] = v13;
        LOWORD(v37) = 2112;
        *(&v37 + 2) = objc_opt_class();
        _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "Application screen snapshot requires view (%p, %@) window (%p, %@) to have a scene.", buf, 0x2Au);
      }

      v26 = 0;
    }
  }

  else
  {
    v27 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0658) + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v27;
      *buf = 134218242;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = objc_opt_class();
      _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Snapshot at view rect requires view (%p, %@) to be in a window.", buf, 0x16u);
    }

    v26 = 0;
  }

  return v26;
}

BOOL _UIViewCanBeRenderedAfterCommit(void *a1, int a2)
{
  if (a2)
  {
    return ([MEMORY[0x1E6979518] currentState] & 8) == 0;
  }

  v3 = [a1 layer];
  v4 = [v3 context];
  v2 = v4 != 0;

  return v2;
}

id _UIRenderViewImageAfterCommit(void *a1, void *a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = [v5 layer];
    v8 = v7;
    if (a3)
    {
      v9 = [v7 context];

      v10 = &__block_literal_global_75_2;
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v17 = [v6 objectForKeyedSubscript:@"src-window-scene"];
        v33 = &__block_literal_global_75_2;
        v11 = _moveViewToTemporaryWindow(v5, v17, &v33);
        v10 = v33;

        if (!v11)
        {
          v27 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0628) + 8);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = v27;
            v29 = objc_opt_class();
            *buf = 134218242;
            *&buf[4] = v5;
            *&buf[12] = 2112;
            *&buf[14] = v29;
            _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Rendering a window (%p, %@) requires it to be in a foreground scene.", buf, 0x16u);
          }

          v13 = 0;
          goto LABEL_28;
        }
      }

LABEL_14:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v39 = __Block_byref_object_copy__172;
      v40 = __Block_byref_object_dispose__172;
      v41 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___UIRenderViewImageAfterCommit_block_invoke_77;
      aBlock[3] = &unk_1E711EF70;
      aBlock[4] = v5;
      aBlock[5] = v6;
      v32 = buf;
      v10 = v10;
      v31 = v10;
      v18 = _Block_copy(aBlock);
      v19 = v18;
      if (a3)
      {
        if (!v11)
        {
          goto LABEL_21;
        }

        if (qword_1ED4A06C8 != -1)
        {
          dispatch_once(&qword_1ED4A06C8, &__block_literal_global_169_2);
        }

        if (_MergedGlobals_1262 == 1)
        {
          v20 = [v8 context];
          v21 = v20 == 0;
        }

        else
        {
LABEL_21:
          v20 = 0;
          v21 = 1;
        }

        if ((_performAfterContextCommitUnderCoverAllowDefer(v20, v21, 0, v19) & 1) == 0)
        {
          v22 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0630) + 8);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            *v34 = 134218242;
            v35 = v5;
            v36 = 2112;
            v37 = v23;
            _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "View (%p, %@) drawing with afterScreenUpdates:YES inside CoreAnimation commit is not supported.", v34, 0x16u);
          }
        }
      }

      else
      {
        (*(v18 + 2))(v18);
      }

      v13 = *(*&buf[8] + 40);

      _Block_object_dispose(buf, 8);
LABEL_28:

LABEL_32:
      goto LABEL_33;
    }

    if ([v7 hasBeenCommitted])
    {
      v14 = [v8 context];

      if (v14)
      {
        v11 = 0;
        v10 = &__block_literal_global_75_2;
        goto LABEL_14;
      }

      v24 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0620) + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = v24;
        *buf = 134218242;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = objc_opt_class();
        _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Rendering a view (%p, %@) that is not in a visible window requires afterScreenUpdates:YES.", buf, 0x16u);
      }
    }

    else
    {
      v15 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0618) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
        *buf = 134218242;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = objc_opt_class();
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Rendering a view (%p, %@) that has not been rendered at least once requires afterScreenUpdates:YES.", buf, 0x16u);
      }
    }

    v13 = 0;
    goto LABEL_32;
  }

  v12 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0610) + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "View rendering requires non-nil view.", buf, 2u);
  }

  v13 = 0;
LABEL_33:

  return v13;
}

void sub_189EB5D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _moveViewToTemporaryWindow(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (qword_1ED4A06C0 != -1)
  {
    dispatch_once(&qword_1ED4A06C0, &__block_literal_global_165_1);
  }

  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    [v7 alpha];
    v9 = v8;
    v10 = [v7 isHidden];
    [v7 setAlpha:0.0];
    [v7 setHidden:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___moveViewToTemporaryWindow_block_invoke;
    aBlock[3] = &unk_1E7101F90;
    aBlock[4] = v7;
    v30 = v10;
    aBlock[5] = v9;
    *a3 = _Block_copy(aBlock);
    v11 = [v7 layer];
    v12 = [v11 context];

    if (v12)
    {
      v13 = v7;
    }

    else
    {
      (*(*a3 + 16))();
      v13 = 0;
      *a3 = 0;
    }
  }

  else
  {
    v14 = v6;
    if (v14 || (+[UIWindowScene _keyWindowScene], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v14;
    }

    else
    {
      v24 = [objc_opt_self() mainScreen];
      v7 = [UIWindowScene _unassociatedWindowSceneForScreen:v24 create:1];
    }

    v15 = _makeWindowMatchingUIScene(v7, 1);
    [v15 setWindowLevel:0.0];
    [v15 setAlpha:0.0];
    [v15 setHidden:0];
    v16 = [v5 superview];
    v17 = [v16 subviews];
    v18 = [v17 indexOfObjectIdenticalTo:v5];

    v19 = _UIViewPotentiallyDisrubtibleConstraintsForView(v5, v16, v15);
    [v15 addSubview:v5];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = ___moveViewToTemporaryWindow_block_invoke_2;
    v25[3] = &unk_1E70F4378;
    v25[4] = v15;
    v25[5] = v5;
    v27 = v19;
    v28 = v18;
    v26 = v16;
    v20 = v19;
    v21 = v16;
    *a3 = _Block_copy(v25);
    v22 = v27;
    v13 = v15;
  }

  return v13;
}

__IOSurface *_UIRenderView(void *a1, void *a2, void *a3)
{
  v150[6] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 layer];
  if ([v8 hasBeenCommitted])
  {
    v9 = [v5 _screen];
    v10 = [v8 context];

    if (!v10 || !v9)
    {
      v34 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0688) + 8);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = v34;
        v36 = objc_opt_class();
        v37 = [v8 context];
        v38 = "has";
        LODWORD(buf.m11) = 134218498;
        *(&buf.m11 + 4) = v5;
        if (!v37)
        {
          v38 = "no";
        }

        WORD2(buf.m12) = 2112;
        *(&buf.m12 + 6) = v36;
        HIWORD(buf.m13) = 2080;
        *&buf.m14 = v38;
        _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "Rendering a view (%p, %@) that is not in a visible window is not supported (%s context).", &buf, 0x20u);
      }

      v33 = 0;
      goto LABEL_77;
    }

    [v8 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v8 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [v6 objectForKeyedSubscript:@"src-transform"];
    v28 = v27;
    memset(&v141, 0, sizeof(v141));
    if (v27)
    {
      if (v27 == @"src-bounds-transform")
      {
        CATransform3DMakeTranslation(&v141, -v12, -v14, 0.0);
        goto LABEL_20;
      }

      if (v27 == @"src-frame-transform")
      {
        CALayerFrameAffineTransform();
        CATransform3DMakeAffineTransform(&buf, &m);
        CATransform3DMakeTranslation(&v145, -v20, -v22, 0.0);
        a = buf;
        b = v145;
        CATransform3DConcat(&m, &a, &b);
        *&v141.m31 = *&m.m31;
        *&v141.m33 = *&m.m33;
        *&v141.m41 = *&m.m41;
        *&v141.m43 = *&m.m43;
        *&v141.m11 = *&m.m11;
        *&v141.m13 = *&m.m13;
        v29 = *&m.m21;
        v30 = *&m.m23;
      }

      else
      {
        [(__CFString *)v27 CATransform3DValue];
        *&v141.m31 = *&buf.m31;
        *&v141.m33 = *&buf.m33;
        *&v141.m41 = *&buf.m41;
        *&v141.m43 = *&buf.m43;
        *&v141.m11 = *&buf.m11;
        *&v141.m13 = *&buf.m13;
        v29 = *&buf.m21;
        v30 = *&buf.m23;
      }
    }

    else
    {
      v39 = *(MEMORY[0x1E69792E8] + 80);
      *&v141.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&v141.m33 = v39;
      v40 = *(MEMORY[0x1E69792E8] + 112);
      *&v141.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&v141.m43 = v40;
      v41 = *(MEMORY[0x1E69792E8] + 16);
      *&v141.m11 = *MEMORY[0x1E69792E8];
      *&v141.m13 = v41;
      v29 = *(MEMORY[0x1E69792E8] + 32);
      v30 = *(MEMORY[0x1E69792E8] + 48);
    }

    *&v141.m21 = v29;
    *&v141.m23 = v30;
LABEL_20:
    v42 = [v6 objectForKeyedSubscript:@"src-rect"];
    v129 = v42;
    v130 = v28;
    if (v42)
    {
      [v42 CGRectValue];
    }

    else
    {
      if (!v28)
      {
        v121 = v14;
        goto LABEL_23;
      }

      if (v28 == @"src-bounds-transform")
      {
        v12 = *MEMORY[0x1E695EFF8];
        v121 = *(MEMORY[0x1E695EFF8] + 8);
        goto LABEL_23;
      }

      if (v28 == @"src-frame-transform")
      {
        v12 = *MEMORY[0x1E695EFF8];
        v121 = *(MEMORY[0x1E695EFF8] + 8);
        v18 = v26;
        v16 = v24;
        goto LABEL_23;
      }

      buf = v141;
      CATransform3DGetAffineTransform(&m, &buf);
      v151.origin.x = v12;
      v151.origin.y = v14;
      v151.size.width = v16;
      v151.size.height = v18;
      *&v43 = CGRectApplyAffineTransform(v151, &m);
    }

    v12 = v43;
    v121 = v44;
    v16 = v45;
    v18 = v46;
LABEL_23:
    v47 = [v6 objectForKeyedSubscript:@"dst-size"];
    v48 = v47;
    v49 = v18;
    v50 = v16;
    if (v47)
    {
      [v47 CGSizeValue];
      v50 = v51;
      v49 = v52;
    }

    v53 = [v6 objectForKeyedSubscript:@"dst-rect"];
    v133 = v7;
    v128 = v53;
    if (v53)
    {
      [v53 CGRectValue];
      v116 = v55;
      v118 = v54;
      v50 = v56;
      v49 = v57;
    }

    else
    {
      v116 = *(MEMORY[0x1E695EFF8] + 8);
      v118 = *MEMORY[0x1E695EFF8];
    }

    v123 = v12;
    v58 = [v6 objectForKeyedSubscript:@"dst-scale"];
    v127 = v58;
    if (v58)
    {
      [v58 doubleValue];
    }

    else
    {
      [v9 scale];
    }

    v60 = v59;
    v132 = v48;
    v61 = [v6 objectForKeyedSubscript:@"dst-gamut"];
    v134 = v9;
    v131 = v61;
    if (!v61 || (v62 = v61, [v61 integerValue] == -1))
    {
      v63 = _UIRenderingDefaultGamut(v9);
    }

    else
    {
      v63 = [v62 integerValue];
    }

    v64 = v63;
    v65 = [v6 objectForKeyedSubscript:@"dst-headroom"];
    v126 = v65;
    if (v65)
    {
      [v65 doubleValue];
    }

    else
    {
      [v9 currentEDRHeadroom];
    }

    v67 = v66;
    v68 = [v6 objectForKeyedSubscript:@"dst-allowHDR"];
    v125 = v68;
    if (v68)
    {
      v69 = [v68 unsignedIntegerValue];
    }

    else
    {
      v69 = 2;
    }

    v149[0] = @"dst-size";
    *v137 = v50;
    *&v137[1] = v49;
    v70 = [MEMORY[0x1E696B098] valueWithBytes:v137 objCType:"{CGSize=dd}"];
    v150[0] = v70;
    v149[1] = @"dst-scale";
    v71 = [MEMORY[0x1E696AD98] numberWithDouble:v60];
    v150[1] = v71;
    v149[2] = @"dst-gamut";
    v72 = [MEMORY[0x1E696AD98] numberWithInteger:v64];
    v150[2] = v72;
    v149[3] = @"dst-opaque";
    v73 = [v6 objectForKeyedSubscript:?];
    v74 = v73;
    v75 = MEMORY[0x1E695E110];
    if (v73)
    {
      v75 = v73;
    }

    v150[3] = v75;
    v149[4] = @"dst-allowHDR";
    v120 = v69;
    v76 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v69];
    v150[4] = v76;
    v149[5] = @"dst-headroom";
    v77 = [MEMORY[0x1E696AD98] numberWithDouble:v67];
    v150[5] = v77;
    v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v150 forKeys:v149 count:6];

    v7 = v133;
    if (v133)
    {
      v79 = v133[2](v133, v78, v50 * v60, v49 * v60);
    }

    else
    {
      v79 = _UIRenderingBufferCreate(v78, v50 * v60, v49 * v60);
    }

    v33 = v79;
    v9 = v134;
    v80 = v78;
    v82 = v131;
    v81 = v132;
    if (v79)
    {
      v115 = v80;
      v83 = CFGetTypeID(v79);
      if (IOSurfaceGetTypeID() == v83)
      {
        v84 = 1.0;
        v85 = 1.0;
        if (v50 != v16)
        {
          v85 = 0.0;
          if (v16 != 0.0)
          {
            v85 = v50 / v16;
          }
        }

        if (v49 != v18)
        {
          v84 = 0.0;
          if (v18 != 0.0)
          {
            v84 = v49 / v18;
          }
        }

        memset(&m, 0, sizeof(m));
        buf = v141;
        CATransform3DMakeTranslation(&v145, -v123, -v121, 0.0);
        CATransform3DMakeScale(&v146, v85, v84, 1.0);
        CATransform3DMakeTranslation(&v147, v118, v116, 0.0);
        CATransform3DMakeScale(&v148, v60, v60, 1.0);
        b = buf;
        v136 = v145;
        CATransform3DConcat(&a, &b, &v136);
        for (i = 256; i != 640; i += 128)
        {
          v136 = a;
          v87 = *(&buf.m33 + i);
          *&v135.m31 = *(&buf.m31 + i);
          *&v135.m33 = v87;
          v88 = *(&buf.m43 + i);
          *&v135.m41 = *(&buf.m41 + i);
          *&v135.m43 = v88;
          v89 = *(&buf.m13 + i);
          *&v135.m11 = *(&buf.m11 + i);
          *&v135.m13 = v89;
          v90 = *(&buf.m23 + i);
          *&v135.m21 = *(&buf.m21 + i);
          *&v135.m23 = v90;
          CATransform3DConcat(&b, &v136, &v135);
          a = b;
        }

        m = a;
        v91 = *MEMORY[0x1E6979FB0];
        v143[0] = *MEMORY[0x1E6979FD0];
        v92 = *MEMORY[0x1E6979F68];
        v142[0] = v91;
        v142[1] = v92;
        v124 = [v134 _name];
        v143[1] = v124;
        v142[2] = *MEMORY[0x1E6979F40];
        v93 = MEMORY[0x1E696AD98];
        v122 = [v8 context];
        v119 = [v93 numberWithUnsignedInt:{objc_msgSend(v122, "contextId")}];
        v143[2] = v119;
        v142[3] = *MEMORY[0x1E6979FA8];
        v117 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
        v94 = *MEMORY[0x1E6979F50];
        v143[3] = v117;
        v143[4] = v33;
        v95 = *MEMORY[0x1E697A000];
        v142[4] = v94;
        v142[5] = v95;
        buf = m;
        v96 = [MEMORY[0x1E696B098] valueWithCATransform3D:&buf];
        v143[5] = v96;
        v142[6] = *MEMORY[0x1E6979FF0];
        v97 = [v6 objectForKeyedSubscript:?];
        v98 = v97;
        v99 = MEMORY[0x1E695E118];
        if (v97)
        {
          v100 = v97;
        }

        else
        {
          v100 = MEMORY[0x1E695E118];
        }

        v143[6] = v100;
        v142[7] = *MEMORY[0x1E6979FA0];
        v101 = [v6 objectForKeyedSubscript:v115];
        v102 = v101;
        if (v101)
        {
          v103 = v101;
        }

        else
        {
          v103 = v99;
        }

        v143[7] = v103;
        v142[8] = *MEMORY[0x1E6979F38];
        v104 = captureModeForHeadroom(v120);
        v143[8] = v104;
        v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v143 forKeys:v142 count:9];
        v106 = [(UIScreen *)v134 _appendSnapshotDisplaySystemIdentifierToOptionsIfNeeded:v105];

        v107 = v106;
        if (CARenderServerSnapshot())
        {
          v7 = v133;
          v9 = v134;
          v82 = v131;
          v81 = v132;
        }

        else
        {
          v111 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0698) + 8);
          v81 = v132;
          v7 = v133;
          v82 = v131;
          if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
          {
            v112 = v111;
            v113 = objc_opt_class();
            LODWORD(buf.m11) = 134218242;
            *(&buf.m11 + 4) = v5;
            WORD2(buf.m12) = 2112;
            *(&buf.m12 + 6) = v113;
            _os_log_impl(&dword_188A29000, v112, OS_LOG_TYPE_FAULT, "Render server returned error for view (%p, %@).", &buf, 0x16u);
          }

          CFRelease(v33);
          v33 = 0;
          v9 = v134;
        }
      }

      else
      {
        v108 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0690) + 8);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          v109 = v108;
          v110 = CFCopyTypeIDDescription(v83);
          LODWORD(buf.m11) = 138412290;
          *(&buf.m11 + 4) = v110;
          _os_log_impl(&dword_188A29000, v109, OS_LOG_TYPE_ERROR, "Rendering into destination of type %@ not supported.", &buf, 0xCu);
        }

        CFRelease(v33);
        v33 = 0;
      }

      v80 = v115;
    }

LABEL_77:
    goto LABEL_78;
  }

  v31 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0680) + 8);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = v31;
    LODWORD(buf.m11) = 134218242;
    *(&buf.m11 + 4) = v5;
    WORD2(buf.m12) = 2112;
    *(&buf.m12 + 6) = objc_opt_class();
    _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Rendering a view (%p, %@) that has not been committed to render server is not supported.", &buf, 0x16u);
  }

  v33 = 0;
LABEL_78:

  return v33;
}

uint64_t _performAfterContextCommitUnderCoverAllowDefer(void *a1, int a2, int a3, void *a4)
{
  LODWORD(v5) = a3;
  v7 = a1;
  v8 = a4;
  v9 = [MEMORY[0x1E6979518] currentState];
  if ((v9 & 8) != 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = 1;
  }

  if (v5 == 1)
  {
    v10 = v9;
    if (v7)
    {
      v11 = a2;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (!dword_1ED4A05F4++)
      {
        v13 = objc_opt_new();
        v14 = qword_1ED4A06A0;
        qword_1ED4A06A0 = v13;
      }

      _enumScenes(&__block_literal_global_184_0);
      if (a2)
      {
        if (!dword_1ED4A05F8++)
        {
          v16 = objc_opt_new();
          v17 = qword_1ED4A06A8;
          qword_1ED4A06A8 = v16;

          v18 = objc_opt_new();
          v19 = qword_1ED4A06B0;
          qword_1ED4A06B0 = v18;
        }

        _enumScenes(&__block_literal_global_193_1);
      }

      v20 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = ___performAfterContextCommitUnderCoverAllowDefer_block_invoke;
      v27[3] = &__block_descriptor_34_e5_v8__0l;
      v28 = a2;
      v29 = v11;
    }

    else
    {
      v20 = 0;
    }

    v21 = _Block_copy(v20);
    if ((v10 & 8) != 0)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = ___performAfterContextCommitUnderCoverAllowDefer_block_invoke_2;
      v26[3] = &unk_1E70F77D0;
      v26[4] = v8;
      v26[5] = v21;
      [MEMORY[0x1E6979518] addCommitHandler:v26 forPhase:5];
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = ___performAfterContextCommitUnderCoverAllowDefer_block_invoke_4;
      v25[3] = &unk_1E70F3590;
      v25[4] = v7;
      [UIApp _performWithUICACommitStateSnapshotting:v25];
      v8[2](v8);
      if (v21)
      {
        Current = CFRunLoopGetCurrent();
        CFRunLoopPerformBlock(Current, *MEMORY[0x1E695E8D0], v21);
        v23 = CFRunLoopGetCurrent();
        CFRunLoopWakeUp(v23);
      }
    }
  }

  return v5;
}

_UIReplicantView *_UISnapshotLayerIdRectAfterCommit(int a1, uint64_t a2, void *a3, __int128 *a4, int a5, double a6, double a7, double a8, double a9)
{
  v16 = a4[5];
  *&v34[16] = a4[4];
  *&v34[32] = v16;
  v17 = a4[7];
  *&v34[48] = a4[6];
  *&v34[64] = v17;
  v18 = a4[1];
  v31 = *a4;
  v32 = v18;
  v19 = a4[3];
  v33 = a4[2];
  *v34 = v19;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v20 = a3;
  _UISnapshotCaptureScreen(v20, &v31, v47, &v39, a6, a7, a8, a9);
  v21 = [_UIReplicantView alloc];
  v22 = [(_UIReplicantView *)v21 initWithSurface:v47, v31, v32, v33, *v34, *&v34[16], *&v34[32], *&v34[48], *&v34[64]];
  *&v31 = MEMORY[0x1E69E9820];
  *(&v31 + 1) = 3221225472;
  *&v32 = ___UISnapshotLayerIdRectBlock_block_invoke;
  *(&v32 + 1) = &unk_1E711F008;
  v38 = a1;
  *&v33 = v20;
  *v34 = a2;
  v23 = v22;
  *&v34[72] = v43;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  *&v34[8] = v39;
  *&v34[24] = v40;
  *&v34[40] = v41;
  *(&v33 + 1) = v23;
  *&v34[56] = v42;
  v24 = _Block_copy(&v31);
  v25 = v24;
  v26 = *(&v33 + 1);
  v27 = v23;

  v28 = v24;
  v29 = v28;
  if (a5)
  {
    _performAfterContextCommitUnderCoverAllowDefer(0, 1, 1, v28);
  }

  else
  {
    v28[2](v28);
  }

  return v27;
}

CATransform3D *_makeViewSnapshotTransform(CATransform3D *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v15 = 0;
  v3 = a2;
  v4 = [v3 _window];
  _windowSceneSettings(v4, &v16, &v15);

  v6.n128_u64[0] = *(&v17 + 1);
  v5.n128_u64[0] = v17;
  _UISnapshotContainerTransform(1, v15, 1, &v18, *&v16, *(&v16 + 1), v5, v6);
  v7 = [v3 layer];

  v8 = *(MEMORY[0x1E69792E8] + 80);
  *&v19.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v19.m33 = v8;
  v9 = *(MEMORY[0x1E69792E8] + 112);
  *&v19.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v19.m43 = v9;
  v10 = *(MEMORY[0x1E69792E8] + 16);
  *&v19.m11 = *MEMORY[0x1E69792E8];
  *&v19.m13 = v10;
  v11 = *(MEMORY[0x1E69792E8] + 48);
  *&v19.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v19.m23 = v11;
  CALayerMapGeometry();

  a = v18;
  v13 = v19;
  return CATransform3DConcat(a1, &a, &v13);
}

_UIReplicantView *_UISnapshotScreenWindowsRectAfterCommit(void *a1, void *a2, __int128 *a3, int a4, double a5, double a6, double a7, double a8)
{
  v14 = a3[5];
  *&v33[16] = a3[4];
  *&v33[32] = v14;
  v15 = a3[7];
  *&v33[48] = a3[6];
  *&v33[64] = v15;
  v16 = a3[1];
  v30 = *a3;
  v31 = v16;
  v17 = a3[3];
  v32 = a3[2];
  *v33 = v17;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = a2;
  v19 = a1;
  _UISnapshotCaptureScreen(v19, &v30, v45, &v37, a5, a6, a7, a8);
  v20 = _makeContextList(v18, 0);

  v21 = [_UIReplicantView alloc];
  v22 = [(_UIReplicantView *)v21 initWithSurface:v45, v30, v31, v32, *v33, *&v33[16], *&v33[32], *&v33[48], *&v33[64]];
  *&v30 = MEMORY[0x1E69E9820];
  *(&v30 + 1) = 3221225472;
  *&v31 = ___UISnapshotScreenWindowsRectBlock_block_invoke;
  *(&v31 + 1) = &unk_1E711F030;
  *&v32 = v19;
  v23 = v22;
  *&v33[72] = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  *&v33[8] = v37;
  *&v33[24] = v38;
  *&v33[40] = v39;
  *&v33[56] = v40;
  *(&v32 + 1) = v23;
  *v33 = v20;
  v24 = _Block_copy(&v30);
  v25 = v24;
  v26 = v23;

  v27 = v24;
  v28 = v27;
  if (a4)
  {
    _performAfterContextCommitUnderCoverAllowDefer(0, 1, 1, v27);
  }

  else
  {
    v27[2](v27);
  }

  return v26;
}

id _UISnapshotScreenCompatibilityRectAfterCommit(void *a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a1;
  if (v11)
  {
    v35 = 0u;
    v36 = 0u;
    memset(&buf, 0, sizeof(buf));
    _guessScreenSnapshotTransform(&buf, v11, &v35);
    v38.origin.x = a3;
    v38.origin.y = a4;
    v38.size.width = a5;
    v38.size.height = a6;
    if (CGRectIsNull(v38))
    {
      a4 = *(&v35 + 1);
      a3 = *&v35;
      a6 = *(&v36 + 1);
      a5 = *&v36;
    }

    v12 = [v11 _isMainLikeScreen];
    v13 = _externalKeyWindow;
    if (v12)
    {
      v13 = _keyWindow;
    }

    v14 = v13();
    v15 = [v14 windowScene];
    v16 = [v15 _effectiveUISettings];
    v17 = [v16 hostContextIdentifierForSnapshotting];
    v18 = [v16 scenePresenterRenderIdentifierForSnapshotting];
    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      if (v15)
      {
        [v15 _visibleWindows];
      }

      else
      {
        [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 forScreen:v11];
      }
      v31 = ;
      v33 = buf;
      v30 = _UISnapshotScreenWindowsRectAfterCommit(v11, v31, &v33, a2, a3, a4, a5, a6);
    }

    else
    {
      v21 = v18;
      [v11 bounds];
      v22 = *(MEMORY[0x1E69792E8] + 80);
      *&v33.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&v33.m33 = v22;
      v23 = *(MEMORY[0x1E69792E8] + 112);
      *&v33.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&v33.m43 = v23;
      v24 = *(MEMORY[0x1E69792E8] + 16);
      *&v33.m11 = *MEMORY[0x1E69792E8];
      *&v33.m13 = v24;
      v25 = *(MEMORY[0x1E69792E8] + 48);
      *&v33.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&v33.m23 = v25;
      v30 = _UISnapshotLayerIdRectAfterCommit(v17, v21, v11, &v33, a2, v26, v27, v28, v29);
    }
  }

  else
  {
    v20 = *(__UILogGetCategoryCachedImpl("Snapshotting", &_UISnapshotScreenCompatibilityRectAfterCommit___s_category) + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.m11) = 0;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Screen snapshot requires non-nil screen.", &buf, 2u);
    }

    v30 = 0;
  }

  return v30;
}

void _guessScreenSnapshotTransform(CATransform3D *a1, void *a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 _isMainLikeScreen];
  v7 = _externalKeyWindow;
  if (v6)
  {
    v7 = _keyWindow;
  }

  v8 = v7();
  v9 = v8;
  if (v8)
  {
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v14 = [v9 interfaceOrientation];
    v15 = _orientationDistance_angles[[v5 _interfaceOrientation]] - _orientationDistance_angles[v14];
    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = v11;
    }

    if (v15)
    {
      v17 = v11;
    }

    else
    {
      v17 = v13;
    }

    v18 = *MEMORY[0x1E695EFF8];
    v19 = *(MEMORY[0x1E695EFF8] + 8);
    *a3 = *MEMORY[0x1E695EFF8];
    *(a3 + 8) = v19;
    *(a3 + 16) = v16;
    *(a3 + 24) = v17;
    _makeViewSnapshotTransform(&v45, v9);
    [v9 bounds];
    v21 = v20;
    v23 = v22;
    v24 = [v9 interfaceOrientation];
    v25 = [v5 _interfaceOrientation];
    v26 = [v9 interfaceOrientation];
    v27.n128_u64[0] = v21;
    v28.n128_u64[0] = v23;
    _UISnapshotContainerTransform(v24, v25, v26, &v46, v18, v19, v27, v28);
    a = v45;
    v43 = v46;
    CATransform3DConcat(a1, &a, &v43);
  }

  else
  {
    [v5 _unjailedReferenceBounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [v5 _interfaceOrientation];
    if ((v37 - 5) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v38 = *&v36;
    }

    else
    {
      v38 = *&v34;
    }

    *a3 = *MEMORY[0x1E695EFF8];
    if ((v37 - 5) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v39 = *&v34;
    }

    else
    {
      v39 = *&v36;
    }

    *(a3 + 16) = v38;
    *(a3 + 24) = v39;
    v40 = [v5 _interfaceOrientation];
    v41.n128_u64[0] = v34;
    v42.n128_u64[0] = v36;
    _UISnapshotContainerTransform(1, v40, 1, a1, v30, v32, v41, v42);
  }
}

id _UISnapshotWindowsAtViewRect(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = [v14 _window];

  if (v16)
  {
    memset(&v22, 0, sizeof(v22));
    _makeViewSnapshotTransform(&v22, v14);
    v17 = [v14 _screen];
    v18 = _UISnapshotWindowsRectAfterCommit(v13, v17, &v22, v15, a4, a5, a6, a7);
  }

  else
  {
    v19 = *(__UILogGetCategoryCachedImpl("Snapshotting", &_UISnapshotWindowsAtViewRect___s_category) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      *buf = 134218242;
      v24 = v14;
      v25 = 2112;
      v26 = objc_opt_class();
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Snapshot at view rect requires view (%p, %@) to be in a window.", buf, 0x16u);
    }

    v18 = 0;
  }

  return v18;
}

_UIReplicantView *_UISnapshotWindowsRectAfterCommit(void *a1, void *a2, __int128 *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = a4;
  v16 = a3[5];
  v39 = a3[4];
  v40 = v16;
  v17 = a3[7];
  v41 = a3[6];
  v42 = v17;
  v18 = a3[1];
  v35 = *a3;
  v36 = v18;
  v19 = a3[3];
  v37 = a3[2];
  v38 = v19;
  v20 = v15;
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v21 = a2;
  v22 = a1;
  _UISnapshotCaptureScreen(v21, &v35, v51, &v43, a5, a6, a7, a8);
  v23 = _makeContextList(v22, &v43);

  v24 = [_UIReplicantView alloc];
  v25 = [(_UIReplicantView *)v24 initWithSurface:v51, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50];
  *&v35 = MEMORY[0x1E69E9820];
  *(&v35 + 1) = 3221225472;
  *&v36 = ___UISnapshotWindowsRectBlock_block_invoke;
  *(&v36 + 1) = &unk_1E70F6B40;
  *&v37 = v21;
  v26 = v25;
  *(&v37 + 1) = v26;
  *&v38 = v23;
  *(&v38 + 1) = v20;
  v27 = v20;
  v28 = v23;
  v29 = _Block_copy(&v35);
  v30 = v29;
  v31 = *(&v38 + 1);
  v32 = v26;

  v33 = v29;
  v33[2]();

  return v32;
}

id _UISnapshotWindowsCompatibilityRect(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a1;
  v12 = a2;
  if (v12)
  {
    *buf = 0u;
    v18 = 0u;
    memset(&v16, 0, sizeof(v16));
    _guessScreenSnapshotTransform(&v16, v12, buf);
    v20.origin.x = a3;
    v20.origin.y = a4;
    v20.size.width = a5;
    v20.size.height = a6;
    if (CGRectIsNull(v20))
    {
      a3 = *buf;
      a4 = *&buf[8];
      a6 = *(&v18 + 1);
      a5 = *&v18;
    }

    v13 = _UISnapshotWindowsRectAfterCommit(v11, v12, &v16, 0, a3, a4, a5, a6);
  }

  else
  {
    v14 = *(__UILogGetCategoryCachedImpl("Snapshotting", &_UISnapshotWindowsCompatibilityRect___s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Windows snapshot requires non-nil screen.", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

void *_UIRenderDisplay(void *a1, void *a2)
{
  v100[5] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v87 = a2;
  v4 = [v3 objectForKeyedSubscript:@"enforce-secure-mode"];
  v78 = [v4 BOOLValue];

  v5 = [v3 objectForKeyedSubscript:@"src-screen"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [objc_opt_self() mainScreen];
  }

  v8 = v7;

  v9 = [v3 objectForKeyedSubscript:@"src-window-scene"];
  v10 = [v3 objectForKeyedSubscript:@"src-orientation"];
  v11 = [v3 objectForKeyedSubscript:@"src-rect"];
  v12 = [v3 objectForKeyedSubscript:@"dst-scale"];
  v88 = [v3 objectForKeyedSubscript:@"dst-allowHDR"];
  v86 = [v3 objectForKeyedSubscript:@"dst-opaque"];
  v83 = v9;
  v13 = [v9 _FBSScene];
  v14 = [v13 settings];
  v15 = [v14 displayConfiguration];

  v82 = v10;
  if (v15)
  {
LABEL_7:
    [v15 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v15 pointScale];
    v26 = v25;
    if (v10)
    {
      v27 = [v10 intValue];
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v27 = 1;
      if (!v11)
      {
LABEL_10:
        v76 = v20;
        v81 = v12;
        v32 = v18;
        if (v12)
        {
          [v12 doubleValue];
          v26 = v33;
        }

        if ((v27 - 5) >= 0xFFFFFFFFFFFFFFFELL)
        {
          v34 = v24;
        }

        else
        {
          v34 = v22;
        }

        if ((v27 - 5) >= 0xFFFFFFFFFFFFFFFELL)
        {
          v35 = v22;
        }

        else
        {
          v35 = v24;
        }

        v85 = [v88 unsignedIntegerValue];
        v36 = [v3 objectForKeyedSubscript:@"dst-gamut"];
        v37 = v36;
        if (!v36 || [v36 integerValue] == -1)
        {
          v38 = [v15 colorGamut];
          if (v38 >= 2)
          {
            abort();
          }
        }

        else
        {
          v38 = [v37 integerValue];
        }

        v79 = v37;
        v80 = v11;
        v84 = v8;
        if (v86)
        {
          v39 = [v86 BOOLValue];
        }

        else
        {
          v39 = 1;
        }

        v99[0] = @"dst-size";
        *v93 = v34;
        *&v93[1] = v35;
        v40 = [MEMORY[0x1E696B098] valueWithBytes:v93 objCType:"{CGSize=dd}"];
        v100[0] = v40;
        v99[1] = @"dst-scale";
        v41 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
        v100[1] = v41;
        v99[2] = @"dst-gamut";
        v42 = [MEMORY[0x1E696AD98] numberWithInteger:v38];
        v100[2] = v42;
        v99[3] = @"dst-opaque";
        v43 = [MEMORY[0x1E696AD98] numberWithBool:v39];
        v100[3] = v43;
        v99[4] = @"dst-allowHDR";
        v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v85];
        v100[4] = v44;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:5];

        v46 = v87[2](v87, v45, v34 * v26, v35 * v26);
        v47 = CFGetTypeID(v46);
        if (IOSurfaceGetTypeID() == v47)
        {
          v50 = 0;
          v51 = v46;
        }

        else
        {
          v11 = v80;
          v12 = v81;
          if (_UIRenderingMultiBufferRefGetTypeID() != v47)
          {
            v71 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0670) + 8);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              v72 = v71;
              v73 = CFCopyTypeIDDescription(v47);
              LODWORD(v98.m11) = 138412290;
              *(&v98.m11 + 4) = v73;
              _os_log_impl(&dword_188A29000, v72, OS_LOG_TYPE_ERROR, "Rendering into destination of type %@ not supported.", &v98, 0xCu);
            }

            CFRelease(v46);
            v46 = 0;
            v69 = v79;
            goto LABEL_45;
          }

          v51 = v46[2];
          v50 = v46[3];
        }

        memset(&v98, 0, sizeof(v98));
        v48.n128_f64[0] = v22;
        v49.n128_f64[0] = v24;
        _UISnapshotContainerTransform(1, v27, 1, &a, v32, v77, v48, v49);
        CATransform3DMakeScale(&b, v26, v26, 1.0);
        CATransform3DConcat(&v98, &a, &b);
        v52 = *MEMORY[0x1E6979FB0];
        if (v51 && v50)
        {
          v97[0] = *MEMORY[0x1E6979FB8];
          v53 = *MEMORY[0x1E6979F68];
          v96[0] = v52;
          v96[1] = v53;
          v54 = [v15 name];
          v55 = *MEMORY[0x1E6979F60];
          v97[1] = v54;
          v97[2] = v51;
          v56 = *MEMORY[0x1E6979F58];
          v96[2] = v55;
          v96[3] = v56;
          v97[3] = v50;
          v96[4] = *MEMORY[0x1E697A000];
          v90 = v98;
          v57 = [MEMORY[0x1E696B098] valueWithBytes:&v90 objCType:"{CATransform3D=dddddddddddddddd}"];
          v97[4] = v57;
          v96[5] = *MEMORY[0x1E6979F78];
          v58 = [MEMORY[0x1E696AD98] numberWithBool:v78];
          v97[5] = v58;
          v96[6] = *MEMORY[0x1E6979F38];
          v59 = captureModeForHeadroom(v85);
          v97[6] = v59;
          v60 = MEMORY[0x1E695DF20];
          v61 = v97;
          v62 = v96;
          v63 = 7;
        }

        else
        {
          v95[0] = *MEMORY[0x1E6979FB8];
          v64 = *MEMORY[0x1E6979F68];
          v94[0] = v52;
          v94[1] = v64;
          v54 = [v15 name];
          v65 = *MEMORY[0x1E6979F50];
          v95[1] = v54;
          v95[2] = v51;
          v66 = *MEMORY[0x1E697A000];
          v94[2] = v65;
          v94[3] = v66;
          v89 = v98;
          v57 = [MEMORY[0x1E696B098] valueWithBytes:&v89 objCType:"{CATransform3D=dddddddddddddddd}"];
          v95[3] = v57;
          v94[4] = *MEMORY[0x1E6979F78];
          v58 = [MEMORY[0x1E696AD98] numberWithBool:v78];
          v95[4] = v58;
          v94[5] = *MEMORY[0x1E6979F38];
          v59 = captureModeForHeadroom(v85);
          v95[5] = v59;
          v60 = MEMORY[0x1E695DF20];
          v61 = v95;
          v62 = v94;
          v63 = 6;
        }

        v67 = [v60 dictionaryWithObjects:v61 forKeys:v62 count:v63];
        v68 = [(UIScreen *)v8 _appendSnapshotDisplaySystemIdentifierToOptionsIfNeeded:v67];

        if (CARenderServerSnapshot())
        {
          v11 = v80;
          v12 = v81;
          v69 = v79;
        }

        else
        {
          v70 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0678) + 8);
          v11 = v80;
          v12 = v81;
          v69 = v79;
          if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
          {
            LOWORD(a.m11) = 0;
            _os_log_impl(&dword_188A29000, v70, OS_LOG_TYPE_FAULT, "Render server returned error.", &a, 2u);
          }

          if (v46)
          {
            CFRelease(v46);
            v46 = 0;
          }
        }

        v8 = v84;
LABEL_45:

        goto LABEL_46;
      }
    }

    [v11 CGRectValue];
    v18 = v28;
    v20 = v29;
    v22 = v30;
    v24 = v31;
    goto LABEL_10;
  }

  v16 = [v8 displayConfiguration];
  if (v16)
  {
    v15 = v16;
    goto LABEL_7;
  }

  v75 = *(__UILogGetCategoryCachedImpl("Snapshotting", &qword_1ED4A0668) + 8);
  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v98.m11) = 0;
    _os_log_impl(&dword_188A29000, v75, OS_LOG_TYPE_ERROR, "Rendering of display with missing configuration not supported.", &v98, 2u);
  }

  v46 = 0;
LABEL_46:

  return v46;
}

id captureModeForHeadroom(unint64_t a1)
{
  if (a1 >= 3)
  {
    abort();
  }

  v2 = **(&unk_1E711F0B8 + a1);

  return v2;
}

uint64_t _UISnapshotViewGetSlotId(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 _layer];
    v3 = [v2 _slotId];
    v4 = [v3 value];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t ___moveViewToTemporaryWindow_block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isHidden] & 1) == 0)
  {
    [*(a1 + 32) setHidden:*(a1 + 48)];
  }

  result = [*(a1 + 32) alpha];
  if (v3 == 0.0)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    return [v5 setAlpha:v4];
  }

  return result;
}

_UISnapshotWindow *_makeWindowMatchingUIScene(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_alloc_init(_UISnapshotWindow);
  v5 = objc_opt_new();
  [(UIWindow *)v4 setRootViewController:v5];

  v6 = [(UIWindow *)v4 _bindingLayer];
  [v6 setAllowsHitTesting:0];

  [(UIWindow *)v4 _setWindowHostingScene:v3];
  [(_UISnapshotWindow *)v4 set_extendsScreenSceneLifetime:a2];

  return v4;
}

void ___moveViewToTemporaryWindow_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  v2 = [*(a1 + 40) _window];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    [*(a1 + 40) removeFromSuperview];
    v4 = *(a1 + 48);
    if (v4)
    {
      [v4 insertSubview:*(a1 + 40) atIndex:*(a1 + 64)];
      v5 = *(a1 + 56);

      _UIViewReactivatePotentiallyDisruptedConstraintsForView(v5);
    }
  }
}

void ___allowPerContextCommits_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_1262 = [&unk_1EFE2D498 containsObject:v0];
}

void ___performAfterContextCommitUnderCoverAllowDefer_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) == 1)
  {
    v2 = dword_1ED4A05F8;
    if (dword_1ED4A05F8)
    {
      --dword_1ED4A05F8;
      if (v2 == 1)
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v3 = qword_1ED4A06B0;
        v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v4)
        {
          v5 = v4;
          v6 = *v18;
          do
          {
            for (i = 0; i != v5; ++i)
            {
              if (*v18 != v6)
              {
                objc_enumerationMutation(v3);
              }

              [*(*(&v17 + 1) + 8 * i) setHidden:{1, v17}];
            }

            v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v5);
        }

        v8 = qword_1ED4A06A8;
        qword_1ED4A06A8 = 0;

        v9 = qword_1ED4A06B0;
        qword_1ED4A06B0 = 0;
      }
    }
  }

  if (*(a1 + 33) == 1)
  {
    v10 = dword_1ED4A05F4;
    if (dword_1ED4A05F4)
    {
      --dword_1ED4A05F4;
      if (v10 == 1)
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = qword_1ED4A06A0;
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(v11);
              }

              _stopWindowTime(*(*(&v17 + 1) + 8 * j), 0);
            }

            v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v13);
        }

        v16 = qword_1ED4A06A0;
        qword_1ED4A06A0 = 0;
      }
    }
  }
}

void ___performAfterContextCommitUnderCoverAllowDefer_block_invoke_2(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = ___performAfterContextCommitUnderCoverAllowDefer_block_invoke_3;
  v1[3] = &unk_1E70F77D0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

uint64_t ___performAfterContextCommitUnderCoverAllowDefer_block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t ___performAfterContextCommitUnderCoverAllowDefer_block_invoke_4(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v1 = MEMORY[0x1E6979518];
    v4[0] = *(a1 + 32);
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
    [v1 setCommittingContexts:v2];
  }

  [MEMORY[0x1E6979518] flush];
  return [MEMORY[0x1E6979518] synchronize];
}

void _enumScenes(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [UIScene _scenesIncludingInternal:1, 0];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 activationState] != -1 && objc_msgSend(v7, "_hostsWindows"))
        {
          v1[2](v1, v7);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void ___pauseWindows_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a2 _allWindows];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && ([v7 _isHostedInAnotherProcess] & 1) == 0 && (objc_msgSend(qword_1ED4A06A0, "containsObject:", v7) & 1) == 0)
        {
          _stopWindowTime(v7, 1);
          [qword_1ED4A06A0 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void _stopWindowTime(void *a1, int a2)
{
  v9 = [a1 _layerForTimeOffsetModification];
  [v9 timeOffset];
  v4 = v3;
  v5 = CACurrentMediaTime();
  [v9 convertTime:0 fromLayer:?];
  v6 = v7;
  LODWORD(v7) = 1.0;
  if (a2)
  {
    *&v7 = 0.0;
  }

  [v9 setSpeed:v7];
  if (qword_1ED4A06D0 != -1)
  {
    dispatch_once(&qword_1ED4A06D0, &__block_literal_global_187_0);
  }

  if (byte_1ED4A05F1 == 1)
  {
    [v9 setDisableDeferredAnimationCallbacks:1];
  }

  [v9 convertTime:0 fromLayer:v5];
  [v9 setTimeOffset:v4 + v6 - v8];
}

uint64_t ___stopWindowTime_block_invoke()
{
  result = [MEMORY[0x1E6979398] instancesRespondToSelector:sel_setDisableDeferredAnimationCallbacks_];
  byte_1ED4A05F1 = result;
  return result;
}

void ___coverScenes_block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (([qword_1ED4A06A8 containsObject:?] & 1) == 0)
  {
    [qword_1ED4A06A8 addObject:v9];
    v2 = qword_1ED4A06B0;
    v3 = _makeWindowMatchingUIScene(v9, 0);
    [v3 bounds];
    v8 = _UISnapshotScreenAtViewRectAfterCommit(v3, 0, v4, v5, v6, v7);
    [v3 addSubview:v8];
    [v3 setWindowLevel:15000002.0];
    [v3 _orderFrontWithoutMakingKey];

    [v2 addObject:v3];
  }
}

CGFloat _transformApplyUnapply(_OWORD *a1, _OWORD *a2)
{
  v3 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v3;
  v4 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v4;
  v5 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v5;
  v6 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v6;
  v7 = a2[5];
  *&v16.m31 = a2[4];
  *&v16.m33 = v7;
  v8 = a2[7];
  *&v16.m41 = a2[6];
  *&v16.m43 = v8;
  v9 = a2[1];
  *&v16.m11 = *a2;
  *&v16.m13 = v9;
  v10 = a2[3];
  *&v16.m21 = a2[2];
  *&v16.m23 = v10;
  CATransform3DConcat(&v18, &a, &v16);
  v11 = *&v18.m33;
  a1[4] = *&v18.m31;
  a1[5] = v11;
  v12 = *&v18.m43;
  a1[6] = *&v18.m41;
  a1[7] = v12;
  v13 = *&v18.m13;
  *a1 = *&v18.m11;
  a1[1] = v13;
  result = v18.m21;
  v15 = *&v18.m23;
  a1[2] = *&v18.m21;
  a1[3] = v15;
  return result;
}

CATransform3D *_UISnapshotCaptureScreen(void *a1, _OWORD *a2, uint64_t a3, _OWORD *a4, double a5, double a6, double a7, double a8)
{
  v30 = *MEMORY[0x1E69E9840];
  [a1 _scale];
  *(a3 + 24) = a8;
  *(a3 + 32) = v15;
  *a3 = a5;
  *(a3 + 8) = a6;
  *(a3 + 16) = a7;
  v16 = a2[5];
  *&v28.m31 = a2[4];
  *&v28.m33 = v16;
  v17 = a2[7];
  *&v28.m41 = a2[6];
  *&v28.m43 = v17;
  v18 = a2[1];
  *&v28.m11 = *a2;
  *&v28.m13 = v18;
  v19 = a2[3];
  *&v28.m21 = a2[2];
  *&v28.m23 = v19;
  _UIRenderingSurfaceTransform(a3, &v29);
  a = v28;
  v25 = v29;
  result = CATransform3DConcat(&v27, &a, &v25);
  v21 = *&v27.m33;
  a4[4] = *&v27.m31;
  a4[5] = v21;
  v22 = *&v27.m43;
  a4[6] = *&v27.m41;
  a4[7] = v22;
  v23 = *&v27.m13;
  *a4 = *&v27.m11;
  a4[1] = v23;
  v24 = *&v27.m23;
  a4[2] = *&v27.m21;
  a4[3] = v24;
  return result;
}

void _windowSceneSettings(void *a1, void *a2, void *a3)
{
  v17 = a1;
  v5 = [v17 windowScene];
  v6 = [v5 _FBSScene];

  if (v6)
  {
    v7 = [v6 settings];
    [v7 frame];
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v11;
    *a3 = [v7 interfaceOrientation];
  }

  else
  {
    v12 = [v17 screen];
    [v12 _unjailedReferenceBounds];
    *a2 = v13;
    a2[1] = v14;
    a2[2] = v15;
    a2[3] = v16;

    *a3 = 1;
  }
}

id _makeContextList(void *a1, __int128 *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v29 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    v28 = *MEMORY[0x1E6979F40];
    v27 = *MEMORY[0x1E697A000];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = [v9 _contextId];
          if (v10)
          {
            v11 = v10;
            v12 = objc_opt_new();
            v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
            [v12 setObject:v13 forKeyedSubscript:v28];

            if (a2)
            {
              v35 = 0u;
              v36 = 0u;
              v34 = 0;
              _windowSceneSettings(v9, &v35, &v34);
              memset(&v33, 0, sizeof(v33));
              v15.n128_u64[0] = *(&v36 + 1);
              v14.n128_u64[0] = v36;
              _UISnapshotContainerTransform(1, v34, 1, &v33, *&v35, *(&v35 + 1), v14, v15);
              v32 = v33;
              CATransform3DInvert(&v41, &v32);
              v16 = a2[5];
              v17 = a2[3];
              v46 = a2[4];
              v47 = v16;
              v18 = a2[5];
              v19 = a2[7];
              v48 = a2[6];
              v49 = v19;
              v20 = a2[1];
              v42 = *a2;
              v43 = v20;
              v21 = a2[3];
              v23 = *a2;
              v22 = a2[1];
              v44 = a2[2];
              v45 = v21;
              a = v41;
              *&b.m31 = v46;
              *&b.m33 = v18;
              v24 = a2[7];
              *&b.m41 = v48;
              *&b.m43 = v24;
              *&b.m11 = v23;
              *&b.m13 = v22;
              *&b.m21 = v44;
              *&b.m23 = v17;
              CATransform3DConcat(&v32, &a, &b);
              v41 = v32;
              v25 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v41];
              [v12 setObject:v25 forKeyedSubscript:v27];
            }

            [v29 addObject:v12];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v6);
  }

  return v29;
}

void sub_189EC087C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_189EC0E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKTextInputSettingsClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4A06E0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PencilKitLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E711F128;
    v8 = 0;
    qword_1ED4A06E0 = _sl_dlopen();
  }

  if (!qword_1ED4A06E0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PencilKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIScribbleInteraction.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PKTextInputSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPKTextInputSettingsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIScribbleInteraction.m" lineNumber:20 description:{@"Unable to find class %s", "PKTextInputSettings"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1263 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PencilKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED4A06E0 = result;
  return result;
}

double _StatusBar_UITimeSizeForLabel(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 bounds];
  v7 = _UIComputedSizeForLabel(v4, v3, 0, 1uLL, 0, 0, 0, v5, v6);

  return v7;
}

id perfLog()
{
  if (perfLog_onceToken != -1)
  {
    dispatch_once(&perfLog_onceToken, &__block_literal_global_500);
  }

  v1 = perfLog_log;

  return v1;
}

void __perfLog_block_invoke()
{
  v0 = os_log_create("com.apple.avatar.AvatarUI", "perf");
  v1 = perfLog_log;
  perfLog_log = v0;
}

__CFString *_NSStringFromUIPencilInteractionPhase(unint64_t a1)
{
  if (a1 > 3)
  {
    return &stru_1EFB14550;
  }

  else
  {
    return off_1E711F2F8[a1];
  }
}

void _accessibilityOpaqueTouchGestureValueChangedCallback(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilPreferences", &_accessibilityOpaqueTouchGestureValueChangedCallback___s_category);
  if (*CategoryCachedImpl)
  {
    v4 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *MEMORY[0x1E69E4C40];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Accessibility callback received for notification: %@", &v6, 0xCu);
    }
  }

  [(_UIPencilPreferences *)v2 _preferredTapActionDidChange];
  [(_UIPencilPreferences *)v2 _preferredSqueezeActionDidChange];
}

void sub_189ECA708(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189ECA8EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189ECAAC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189ECAFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL _UISeparatorShouldDrawThickSeparatorsForTraitCollection(void *a1)
{
  v1 = a1;
  if (dyld_program_sdk_at_least())
  {
    v2 = [v1 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v2);
  }

  else
  {
    IsAccessibilityCategory = 0;
  }

  return IsAccessibilityCategory;
}

double _UISeparatorThicknessForTraitCollection(void *a1)
{
  v1 = a1;
  v2 = 1.0;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v1 displayScale];
    if (v3 > 0.0)
    {
      v4 = v3;
      if (!_UISeparatorShouldDrawThickSeparatorsForTraitCollection(v1))
      {
        v2 = 1.0 / v4;
      }
    }
  }

  return v2;
}

id _UIInitializeStateRestorationCollections(void *a1, void *a2, void *a3)
{
  _UIViewControllerRootSet = objc_alloc_init(MEMORY[0x1E695DFA8]);
  *a1 = _UIViewControllerRootSet;
  _UICurrentViewControllerRoots = objc_alloc_init(MEMORY[0x1E695DF70]);
  *a2 = _UICurrentViewControllerRoots;
  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  _UIViewControllerRestorationClassMap = result;
  *a3 = result;
  return result;
}

void _UIReleaseStateRestorationCollections()
{
  _UIViewControllerRootSet = 0;

  _UICurrentViewControllerRoots = 0;
  _UIViewControllerRestorationClassMap = 0;
}

uint64_t _restorationIdentifierPathArrayForResponder(void *a1)
{
  result = [a1 restorationIdentifier];
  if (!result)
  {
    return result;
  }

  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{result, 0}];
  if (!a1)
  {
    return v3;
  }

  v4 = a1;
  while (1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v5 = [UIViewController viewControllerForView:v4];
    if (v5)
    {
      v6 = v5;
      goto LABEL_12;
    }

    v4 = [v4 superview];
    if (!v4)
    {
      return v3;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SWarningAskedT.isa, "NSArray *_restorationIdentifierPathArrayForResponder(UIResponder *)", v4);
    }

    return v3;
  }

  if (v4 != a1)
  {
    v6 = v4;
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  result = [qword_1ED4A07B0 objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%p", v4)}];
  if (!result)
  {
    v14 = [v4 parentViewController];
    if (v14 || (v14 = [v4 presentingViewController]) != 0 || (v14 = objc_msgSend(v4, "splitViewController")) != 0)
    {
      v6 = v14;
      while (1)
      {
LABEL_13:
        v7 = v4;
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v6 _stateRestorationParentForChildViewController:v4 index:&v15];
          if (v8)
          {
            v4 = v8;
          }

          else
          {
            v4 = v6;
          }
        }

        else
        {
          v4 = v6;
        }

        v9 = v15;
        if (v15 != 0x7FFFFFFFFFFFFFFFLL || v7 && ((v10 = [v4 childViewControllers]) == 0 ? (v9 = v15) : (v9 = objc_msgSend(v10, "indexOfObject:", v7), v15 = v9), v9 != 0x7FFFFFFFFFFFFFFFLL))
        {
          [v3 insertObject:objc_msgSend(MEMORY[0x1E696AEC0] atIndex:{"stringWithFormat:", @":[%lu]:", v9), 0}];
        }

        v11 = [qword_1ED4A07B0 objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%p", v4)}];
        if (v11)
        {
          break;
        }

        v12 = [v4 restorationIdentifier];
        if (v12)
        {
          [v3 insertObject:v12 atIndex:0];
        }

        v13 = [v4 parentViewController];
        if (!v13)
        {
          v13 = [v4 presentingViewController];
          if (!v13)
          {
            v13 = [v4 splitViewController];
          }
        }

        v6 = v13;
        if (!v13)
        {
          return v3;
        }
      }

      return [v11 arrayByAddingObjectsFromArray:v3];
    }

    return v3;
  }

  return result;
}

uint64_t _restorationIdentifierPathStringForObject(void *a1)
{
  v1 = _restorationIdentifierPathArrayForObject(a1);

  return [v1 componentsJoinedByString:@"/"];
}

uint64_t _restorationIdentifierPathArrayForObject(void *a1)
{
  if ([a1 __isKindOfUIResponder])
  {

    return _restorationIdentifierPathArrayForResponder(a1);
  }

  if (![a1 conformsToProtocol:&unk_1F016D9B0])
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SAskedToGetRes.isa, "NSArray *_restorationIdentifierPathArrayForObject", a1);
    }

    return 0;
  }

  if (!objc_getAssociatedObject(a1, &_MergedGlobals_1269))
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SWarningAskedF.isa, "NSArray *_restorationIdentifierPathForRestorableObject(id<UIStateRestoring>)", a1);
    }

    return 0;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  v4 = [MEMORY[0x1E695DFA8] set];
  if (!a1)
  {
    return v3;
  }

  v5 = v4;
  if ([v4 containsObject:a1])
  {
    v6 = 0;
    v7 = a1;
LABEL_10:
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SWarningRestor.isa, "NSArray *_restorationIdentifierPathForRestorableObject(id<UIStateRestoring>)", a1, v7, v6);
    }

    return v3;
  }

  v8 = a1;
  while (1)
  {
    [v5 addObject:v8];
    v9 = [qword_1ED4A07B0 objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%p", v8)}];
    if (v9)
    {
      break;
    }

    if (objc_opt_isKindOfClass())
    {
      v9 = _restorationIdentifierPathArrayForResponder(v8);
      break;
    }

    AssociatedObject = objc_getAssociatedObject(v8, &_MergedGlobals_1269);
    if (AssociatedObject)
    {
      [v3 insertObject:AssociatedObject atIndex:0];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return v3;
    }

    v11 = [v8 restorationParent];
    if (!v11)
    {
      return v3;
    }

    v7 = v11;
    v6 = v8;
    v8 = v11;
    if ([v5 containsObject:v11])
    {
      goto LABEL_10;
    }
  }

  return [v9 arrayByAddingObjectsFromArray:v3];
}

void _UIAddViewControllerToRoots(void *a1)
{
  if (([_UIViewControllerRootSet containsObject:a1] & 1) == 0)
  {
    [_UIViewControllerRootSet addObject:a1];
    [_UICurrentViewControllerRoots addObject:a1];
    v2 = [a1 _restorationClassName];
    if (v2)
    {
      v3 = v2;
      v4 = [a1 _restorationIdentifierPath];
      if (v4)
      {
        v5 = v4;
        v6 = _UIViewControllerRestorationClassMap;

        [v6 setObject:v3 forKey:v5];
      }

      else if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SWarningViewCo.isa, "void _UIAddViewControllerToRoots(UIViewController *)", a1);
      }
    }
  }
}

void _UIAddObjectToStateRestorationRoots(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    _UIAddViewControllerToRoots(a1);
  }

  else if ([a1 conformsToProtocol:&unk_1F016D9B0])
  {
    if (([_UIViewControllerRootSet containsObject:a1] & 1) == 0)
    {
      [_UIViewControllerRootSet addObject:a1];
      [_UICurrentViewControllerRoots addObject:a1];
      if (objc_opt_respondsToSelector())
      {
        v2 = [a1 objectRestorationClass];
        if (v2)
        {
          v3 = NSStringFromClass(v2);
          if (v3)
          {
            v4 = v3;
            v5 = [_restorationIdentifierPathArrayForObject(a1) componentsJoinedByString:@"/"];
            if (v5)
            {
              v6 = v5;
              v7 = _UIViewControllerRestorationClassMap;

              [v7 setObject:v4 forKey:v6];
            }

            else if (_UIStateRestorationDebugLogEnabled())
            {
              NSLog(&cfstr_SWarningRestor_0.isa, "void _UIAddRestorableObjectToRoots(NSObject<UIStateRestoring> *)", a1);
            }
          }
        }
      }
    }
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SWarningCalled.isa, "void _UIAddObjectToStateRestorationRoots", a1);
  }
}

uint64_t decodeSomeKindOfObject(void *a1, uint64_t a2, const char *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    v18 = a1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(a1);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = objc_opt_class();
        if (v11 == v10 || ([v10 isSubclassOfClass:v11] & 1) != 0 || (v13 = v10, objc_msgSend(v10, "conformsToProtocol:", &unk_1F016D9B0)))
        {
          v13 = objc_opt_class();
        }

        if (v12 == v10 || [v10 isSubclassOfClass:v12])
        {
          v13 = objc_opt_class();
        }

        if (v10 != v13)
        {
          if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SUnarchivingBu.isa, "id decodeSomeKindOfObject(NSSet<Class> *, NSString *, SEL, UIStateRestorationKeyedUnarchiver *)", a2, v10, v13);
          }

          if (!v7)
          {
            v7 = [a1 mutableCopy];
            v18 = v7;
          }

          [v7 addObject:v13];
        }
      }

      v6 = [a1 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v18 = a1;
  }

  v20.receiver = a4;
  v20.super_class = [a4 superclass];
  v14 = objc_msgSendSuper(&v20, a3, v18, a2);
  if (v14 && v7)
  {
    v14 = verifyDecodedObject(v14, a2, a1, [a4 decodingFailurePolicy]);
  }

  return v14;
}

uint64_t verifyDecodedObject(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if (objc_opt_isKindOfClass())
        {
          if (_UIStateRestorationDebugLogEnabled())
          {
            v14 = objc_opt_class();
            NSLog(&cfstr_SUnarchivingVe.isa, "id verifyDecodedObject(id, NSString *, NSSet<Class> *, NSDecodingFailurePolicy)", a2, v12, v14);
          }

          return a1;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = objc_opt_class();
  NSLog(&cfstr_SUnarchivingEr.isa, "id verifyDecodedObject(id, NSString *, NSSet<Class> *, NSDecodingFailurePolicy)", a2, v13, a3);
  if (a4)
  {
    return 0;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"value for key %@ was of unexpected class %@. Allowed classes are %@", a2, objc_opt_class(), a3}];
  return a1;
}

void _UISaveReferencedChildViewControllers(void *a1, uint64_t a2)
{
  if ([a1 count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [a1 objectAtIndex:v4];
      v6 = [v5 _restorationIdentifierPath];
      if (v6)
      {
        _UIAddViewControllerToRoots(v5);
      }

      else if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SChildViewCont_1.isa, "void _UISaveReferencedChildViewControllers(NSArray *, BOOL (^)(UIViewController *, NSString *))", v4, v5);
      }

      if (a2 && ((*(a2 + 16))(a2, v5, v6) & 1) == 0)
      {
        break;
      }

      if ([a1 count] <= ++v4)
      {
        return;
      }
    }

    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SCallbackRetur.isa, "void _UISaveReferencedChildViewControllers(NSArray *, BOOL (^)(UIViewController *, NSString *))", v4, v5);
    }
  }
}

uint64_t _rebuildStateRestorationIdentifierPath(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  result = [a2 containsObject:a1];
  if ((result & 1) == 0)
  {
    [a2 addObject:a1];
    result = [a1 restorationIdentifier];
    if (result)
    {
      [a1 setRestorationIdentifier:result];
      v5 = [a1 childModalViewController];
      if (v5)
      {
        _rebuildStateRestorationIdentifierPath(v5, a2);
      }

      v6 = [a1 _allContainedViewControllers];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            _rebuildStateRestorationIdentifierPath(*(*(&v11 + 1) + 8 * v10++), a2);
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }

      result = [a1 isViewLoaded];
      if (result)
      {
        result = [a1 view];
        if (result)
        {
          return _rebuildStateRestorationIdentifierPathForViews(result, a1);
        }
      }
    }
  }

  return result;
}

void UIAddObjectToStateRestorationRoots(void *a1)
{
  v2 = _restorationIdentifierForObject(a1);
  if (v2)
  {
    v3 = v2;
    v4 = qword_1ED4A07D8;
    if (!qword_1ED4A07D8)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      qword_1ED4A07D8 = v4;
    }

    _putObjectIdentifierIntoRestorationIdentifierMap(a1, v3, v4);
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SObjectDoesNot.isa, "void UIAddObjectToStateRestorationRoots(id<UIStateRestoring>)", a1);
  }
}

id _restorationIdentifierForObject(void *a1)
{
  if ([a1 __isKindOfUIResponder])
  {

    return [a1 restorationIdentifier];
  }

  else if ([a1 conformsToProtocol:&unk_1F016D9B0])
  {

    return objc_getAssociatedObject(a1, &_MergedGlobals_1269);
  }

  else
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SAskedToGetRes_0.isa, "NSString *_restorationIdentifierForObject", a1);
    }

    return 0;
  }
}

void _putObjectIdentifierIntoRestorationIdentifierMap(void *a1, uint64_t a2, void *a3)
{
  v6 = _restorationIdentifierPathArrayForObject(a1);
  if (v6 && (v7 = v6, [v6 count]))
  {
    v8 = [v7 componentsJoinedByString:@"/"];

    [a3 setObject:a1 forKey:v8];
  }

  else
  {
    NSLog(&cfstr_SWarningCouldn_0.isa, "void _putObjectIdentifierIntoRestorationIdentifierMap(NSObject *, NSString *, NSMutableDictionary *, NSString *)", a2, a1);
  }
}

void UIRemoveObjectFromStateRestorationRoots(void *a1)
{
  v2 = [_restorationIdentifierPathArrayForObject(a1) componentsJoinedByString:@"/"];
  if (v2)
  {
    v3 = v2;
    v4 = qword_1ED4A07D8;

    [v4 removeObjectForKey:v3];
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SObjectDoesNot_0.isa, "void UIRemoveObjectFromStateRestorationRoots(id<UIStateRestoring>)", a1);
  }
}

uint64_t _deleteStateRestorationArchiveForApplication(uint64_t a1, void *a2)
{
  result = CFPreferencesGetAppBooleanValue(@"UIStateRestorationDeveloperMode", *MEMORY[0x1E695E8A8], 0);
  if (!result)
  {
    result = _stateRestorationPathForBundleIdentifier(a1, a2);
    if (result)
    {
      return [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    }
  }

  return result;
}

void sub_189ECF36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v14 = objc_begin_catch(exception_object);
  NSLog(&cfstr_SExceptionOccu_7.isa, "void _deleteStateRestorationArchiveForApplication(NSString *, NSString *)", v14);

  objc_end_catch();
}

uint64_t _applicationCanBeRestored(uint64_t a1, void *a2)
{
  v7 = 1;
  v2 = _checkApplicationRestorationState(a1, a2, &v7);
  if (_UIStateRestorationDebugLogEnabled())
  {
    v3 = "No";
    if (v7)
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

    if (v2)
    {
      v5 = v4;
    }

    else
    {
      v5 = "No";
    }

    if (v2)
    {
      v3 = "Yes";
    }

    NSLog(&cfstr_SReturningSUse.isa, "BOOL _applicationCanBeRestored(NSString *, NSString *)", v5, v4, v3);
  }

  return (v2 & v7);
}

id _rebuildStateRestorationIdentifierPathForViews(void *a1, id a2)
{
  result = [UIViewController viewControllerForView:a1];
  if (result)
  {
    v5 = result == a2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = [a1 restorationIdentifier];
    if (v6)
    {
      [a1 setRestorationIdentifier:v6];
    }

    v7 = [a1 subviews];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___rebuildStateRestorationIdentifierPathForViews_block_invoke;
    v8[3] = &unk_1E711F398;
    v8[4] = a2;
    return [v7 enumerateObjectsUsingBlock:v8];
  }

  return result;
}

void sub_189ECF9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189ED063C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189ED0940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _cacheAccessQueue()
{
  if (qword_1ED4A07E8 != -1)
  {
    dispatch_once(&qword_1ED4A07E8, &__block_literal_global_504);
  }

  v1 = _MergedGlobals_1270;

  return v1;
}

void ___cacheAccessQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UIKit UIstatusBarForegroundStyleAttributes cache access queue", 0);
  v1 = _MergedGlobals_1270;
  _MergedGlobals_1270 = v0;
}

void sub_189EDBB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UICollectionViewSetupExpandCollapseAnimations(void *a1, void *a2, void *a3)
{
  v293 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v229 = v5;
  v213 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_187:
    v200 = v7;
    v201 = [MEMORY[0x1E696AAA8] currentHandler];
    v202 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UICollectionViewSetupExpandCollapseAnimations(UICollectionView *__strong _Nonnull, _UICollectionViewAnimationContext *__strong _Nonnull, __strong id<_UICollectionViewUpdateExpandCollapseAnimationContext> _Nonnull)"}];
    [v201 handleFailureInFunction:v202 file:@"UICollectionViewExpandCollapseAnimationGeneration.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"context != nil"}];

    v6 = v213;
    v7 = v200;
    if (v200)
    {
      goto LABEL_4;
    }

    goto LABEL_188;
  }

  v197 = v7;
  v198 = [MEMORY[0x1E696AAA8] currentHandler];
  v199 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UICollectionViewSetupExpandCollapseAnimations(UICollectionView *__strong _Nonnull, _UICollectionViewAnimationContext *__strong _Nonnull, __strong id<_UICollectionViewUpdateExpandCollapseAnimationContext> _Nonnull)"}];
  [v198 handleFailureInFunction:v199 file:@"UICollectionViewExpandCollapseAnimationGeneration.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"collectionView != nil"}];

  v6 = v213;
  v7 = v197;
  if (!v213)
  {
    goto LABEL_187;
  }

LABEL_3:
  if (v7)
  {
    goto LABEL_4;
  }

LABEL_188:
  v203 = v7;
  v204 = [MEMORY[0x1E696AAA8] currentHandler];
  v205 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UICollectionViewSetupExpandCollapseAnimations(UICollectionView *__strong _Nonnull, _UICollectionViewAnimationContext *__strong _Nonnull, __strong id<_UICollectionViewUpdateExpandCollapseAnimationContext> _Nonnull)"}];
  [v204 handleFailureInFunction:v205 file:@"UICollectionViewExpandCollapseAnimationGeneration.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"expandCollapseAnimationContext != nil"}];

  v6 = v213;
  v7 = v203;
LABEL_4:
  v8 = v6 == 0;
  v226 = v7;
  v9 = [v7 indexPathsForExpandedParentItems];
  v10 = [v229 _indexPathsAfterShadowUpdatesForIndexPaths:v9];

  v11 = v10;
  v12 = [v226 indexPathsForCollapsedParentItems];
  v13 = [v229 _indexPathsAfterShadowUpdatesForIndexPaths:v12];

  v208 = v13;
  if (v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = v213[6];
    v15 = v213[7];
  }

  v236 = v15;
  [v229 _visibleBounds];
  v214 = v17;
  v215 = v16;
  v216 = v19;
  v217 = v18;
  v281 = 0u;
  v282 = 0u;
  v283 = 0u;
  v284 = 0u;
  obj = v11;
  v224 = [obj countByEnumeratingWithState:&v281 objects:v292 count:16];
  if (v224)
  {
    v218 = *v282;
    v220 = *(MEMORY[0x1E695EFF8] + 8);
    v222 = *MEMORY[0x1E695EFF8];
    do
    {
      v20 = 0;
      do
      {
        if (*v282 != v218)
        {
          v21 = v20;
          objc_enumerationMutation(obj);
          v20 = v21;
        }

        v227 = v20;
        v230 = *(*(&v281 + 1) + 8 * v20);
        v22 = [v229 _indexPathBeforeShadowUpdatesForIndexPath:?];
        v23 = [v226 indexPathsForChildItemsInExpandingParent:v22];
        v24 = [v229 _indexPathsAfterShadowUpdatesForIndexPaths:v23];

        v232 = v24;
        v25 = [v229 cellForItemAtIndexPath:v230];
        v26 = [v25 _layoutAttributes];

        if (v26)
        {
          v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v232, "count")}];
          v279 = 0u;
          v280 = 0u;
          v277 = 0u;
          v278 = 0u;
          v28 = v232;
          v29 = [v28 countByEnumeratingWithState:&v277 objects:v291 count:16];
          if (v29)
          {
            v30 = *v278;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v278 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                v32 = *(*(&v277 + 1) + 8 * i);
                v33 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:v32];
                v34 = [v14 objectForKeyedSubscript:v33];
                v35 = v34 == 0;

                if (!v35)
                {
                  [v27 addObject:v32];
                }
              }

              v29 = [v28 countByEnumeratingWithState:&v277 objects:v291 count:16];
            }

            while (v29);
          }

          v36 = v27;
          v275 = 0u;
          v276 = 0u;
          v273 = 0u;
          v274 = 0u;
          v234 = v36;
          v37 = [v234 countByEnumeratingWithState:&v273 objects:v290 count:16];
          v39 = v220;
          v38 = v222;
          v237 = v220;
          v40 = v222;
          if (v37)
          {
            v41 = *v274;
            v39 = v220;
            v38 = v222;
            v237 = v220;
            v40 = v222;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v274 != v41)
                {
                  objc_enumerationMutation(v234);
                }

                v43 = *(*(&v273 + 1) + 8 * j);
                v44 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:v43];
                v45 = [v14 objectForKey:v44];
                v46 = [v45 view];
                v47 = [v46 _layoutAttributes];

                if (!v47)
                {
                  v72 = [MEMORY[0x1E696AAA8] currentHandler];
                  v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UICollectionViewSetupExpandCollapseAnimations(UICollectionView *__strong _Nonnull, _UICollectionViewAnimationContext *__strong _Nonnull, __strong id<_UICollectionViewUpdateExpandCollapseAnimationContext> _Nonnull)"}];
                  [v72 handleFailureInFunction:v73 file:@"UICollectionViewExpandCollapseAnimationGeneration.m" lineNumber:67 description:{@"Unable to get initial attributes for expanding item at index path %@", v43}];
                }

                v48 = [v14 objectForKey:v44];
                v49 = [v48 finalLayoutAttributes];

                if (!v49)
                {
                  v210 = [MEMORY[0x1E696AAA8] currentHandler];
                  v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UICollectionViewSetupExpandCollapseAnimations(UICollectionView *__strong _Nonnull, _UICollectionViewAnimationContext *__strong _Nonnull, __strong id<_UICollectionViewUpdateExpandCollapseAnimationContext> _Nonnull)"}];
                  [v210 handleFailureInFunction:v74 file:@"UICollectionViewExpandCollapseAnimationGeneration.m" lineNumber:70 description:{@"Unable to get final attributes for expanding item at index path %@", v43}];
                }

                [v47 center];
                v51 = v50;
                [v26 center];
                v53 = v52;
                [v47 center];
                v55 = v54;
                [v26 center];
                v57 = v55 - v56;
                v58 = v51 - v53 >= 0.0;
                if (v38 < v51 - v53 == v58)
                {
                  v38 = v51 - v53;
                }

                if (v39 < v57 == v57 >= 0.0)
                {
                  v39 = v55 - v56;
                }

                [v49 frame];
                v63 = v59;
                v64 = v60;
                v65 = v61;
                v66 = v62;
                if (v58)
                {
                  MaxX = CGRectGetMaxX(*&v59);
                  if (MaxX >= v40)
                  {
                    v40 = MaxX;
                  }
                }

                else
                {
                  MinX = CGRectGetMinX(*&v59);
                  if (MinX < v40)
                  {
                    v40 = MinX;
                  }
                }

                if (v57 < 0.0)
                {
                  v295.origin.x = v63;
                  v295.origin.y = v64;
                  v295.size.width = v65;
                  v295.size.height = v66;
                  MinY = CGRectGetMinY(v295);
                  v70 = v237;
                  if (MinY < v237)
                  {
                    v70 = MinY;
                  }
                }

                else
                {
                  v294.origin.x = v63;
                  v294.origin.y = v64;
                  v294.size.width = v65;
                  v294.size.height = v66;
                  MaxY = CGRectGetMaxY(v294);
                  v70 = v237;
                  if (MaxY >= v237)
                  {
                    v70 = MaxY;
                  }
                }

                v237 = v70;
              }

              v37 = [v234 countByEnumeratingWithState:&v273 objects:v290 count:16];
            }

            while (v37);
          }

          [v26 frame];
          v79 = v78;
          v80 = v75;
          v81 = v76;
          v82 = v77;
          v83 = -v39;
          if (v39 >= 0.0)
          {
            v83 = v39;
          }

          if (v83 <= 0.0)
          {
            if (v38 < 0.0)
            {
              v88 = v79;
              v89 = CGRectGetMinX(*(&v75 - 1));
              if (v40 - v89 >= 0.0)
              {
                v81 = v40 - v89;
              }

              else
              {
                v81 = -(v40 - v89);
              }

              v79 = v89 - v81;
              v87 = 0.0;
              v86 = v82;
              v85 = v80;
              goto LABEL_71;
            }

            v91 = v79;
            v79 = CGRectGetMaxX(*(&v75 - 1));
            if (v40 - v79 >= 0.0)
            {
              v81 = v40 - v79;
            }

            else
            {
              v81 = -(v40 - v79);
            }

            v87 = 0.0;
            v86 = v82;
          }

          else
          {
            if (v39 < 0.0)
            {
              v84 = v79;
              v85 = CGRectGetMinY(*(&v75 - 1));
              if (v237 - v85 >= 0.0)
              {
                v82 = v237 - v85;
              }

              else
              {
                v82 = -(v237 - v85);
              }

              v80 = v85 - v82;
              v86 = 0.0;
              v87 = v81;
LABEL_70:
              v89 = v79;
LABEL_71:
              v272[0] = MEMORY[0x1E69E9820];
              v272[1] = 3221225472;
              v272[2] = ___UICollectionViewSetupExpandCollapseAnimations_block_invoke;
              v272[3] = &unk_1E711F558;
              v272[4] = v230;
              v272[5] = v215;
              v272[6] = v214;
              *&v272[7] = v217;
              *&v272[8] = v216;
              *&v272[9] = v38;
              *&v272[10] = v39;
              *&v272[11] = v89;
              *&v272[12] = v85;
              *&v272[13] = v87;
              *&v272[14] = v86;
              *&v272[15] = v79;
              *&v272[16] = v80;
              *&v272[17] = v81;
              *&v272[18] = v82;
              [v14 enumerateKeysAndObjectsUsingBlock:v272];

              goto LABEL_72;
            }

            v90 = v79;
            v80 = CGRectGetMaxY(*(&v75 - 1));
            if (v237 - v80 >= 0.0)
            {
              v82 = v237 - v80;
            }

            else
            {
              v82 = -(v237 - v80);
            }

            v86 = 0.0;
            v87 = v81;
          }

          v85 = v80;
          goto LABEL_70;
        }

LABEL_72:

        v20 = v227 + 1;
      }

      while (v227 + 1 != v224);
      v224 = [obj countByEnumeratingWithState:&v281 objects:v292 count:16];
    }

    while (v224);
  }

  v267 = 0;
  v268 = &v267;
  v269 = 0x3010000000;
  v270 = "";
  v271 = xmmword_18A678720;
  v263 = 0u;
  v264 = 0u;
  v265 = 0u;
  v266 = 0u;
  v207 = v208;
  v212 = [v207 countByEnumeratingWithState:&v263 objects:v289 count:16];
  if (v212)
  {
    v211 = *v264;
    v206 = v240;
    v219 = *(MEMORY[0x1E695EFF8] + 8);
    v221 = *MEMORY[0x1E695EFF8];
    do
    {
      v225 = 0;
      do
      {
        if (*v264 != v211)
        {
          objc_enumerationMutation(v207);
        }

        v92 = *(*(&v263 + 1) + 8 * v225);
        v233 = [v92 section];
        v223 = v92;
        v93 = [v229 _indexPathBeforeShadowUpdatesForIndexPath:v92];
        v94 = [v226 indexPathsForChildItemsInCollapsingParent:v93];
        v95 = [v229 _indexPathsAfterShadowUpdatesForIndexPaths:v94];

        v228 = v95;
        v96 = [v229 cellForItemAtIndexPath:v223];
        v97 = [v96 _layoutAttributes];

        if (v97)
        {
          v98 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v228, "count")}];
          v261 = 0u;
          v262 = 0u;
          v259 = 0u;
          v260 = 0u;
          v99 = v228;
          v100 = [v99 countByEnumeratingWithState:&v259 objects:v288 count:16];
          if (v100)
          {
            v101 = *v260;
            do
            {
              for (k = 0; k != v100; ++k)
              {
                if (*v260 != v101)
                {
                  objc_enumerationMutation(v99);
                }

                v103 = *(*(&v259 + 1) + 8 * k);
                v104 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:v103];
                v105 = [v236 objectForKeyedSubscript:v104];
                v106 = v105 == 0;

                if (!v106)
                {
                  [v98 addObject:v103];
                }
              }

              v100 = [v99 countByEnumeratingWithState:&v259 objects:v288 count:16];
            }

            while (v100);
          }

          v107 = v98;
          v257 = 0u;
          v258 = 0u;
          v255 = 0u;
          v256 = 0u;
          v231 = v107;
          v108 = [v231 countByEnumeratingWithState:&v255 objects:v287 count:16];
          v109 = v219;
          v235 = v221;
          v110 = v219;
          v238 = v221;
          if (v108)
          {
            v111 = *v256;
            v109 = v219;
            v235 = v221;
            v110 = v219;
            v238 = v221;
            do
            {
              for (m = 0; m != v108; ++m)
              {
                if (*v256 != v111)
                {
                  objc_enumerationMutation(v231);
                }

                v113 = *(*(&v255 + 1) + 8 * m);
                v114 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:v113];
                v115 = [v236 objectForKeyedSubscript:v114];
                v116 = [v115 view];
                v117 = [v116 _layoutAttributes];

                if (!v117)
                {
                  v143 = [MEMORY[0x1E696AAA8] currentHandler];
                  v144 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UICollectionViewSetupExpandCollapseAnimations(UICollectionView *__strong _Nonnull, _UICollectionViewAnimationContext *__strong _Nonnull, __strong id<_UICollectionViewUpdateExpandCollapseAnimationContext> _Nonnull)"}];
                  [v143 handleFailureInFunction:v144 file:@"UICollectionViewExpandCollapseAnimationGeneration.m" lineNumber:186 description:{@"Could not find layout attributes for collapsing item at index path %@", v113, v206}];
                }

                [v117 center];
                v119 = v118;
                [v97 center];
                v121 = v120;
                [v117 center];
                v123 = v122;
                [v97 center];
                v125 = v109;
                v126 = v119 - v121;
                v127 = v110;
                v128 = v123 - v124;
                v129 = v238;
                if (v238 < v119 - v121 == v119 - v121 >= 0.0)
                {
                  v129 = v119 - v121;
                }

                v238 = v129;
                if (v127 < v128 == v128 >= 0.0)
                {
                  v127 = v123 - v124;
                }

                [v117 frame];
                v134 = v130;
                v135 = v131;
                v136 = v132;
                v137 = v133;
                if (v126 < 0.0)
                {
                  v140 = CGRectGetMinX(*&v130);
                  v139 = v235;
                  if (v140 < v235)
                  {
                    v139 = v140;
                  }
                }

                else
                {
                  v138 = CGRectGetMaxX(*&v130);
                  v139 = v235;
                  if (v138 >= v235)
                  {
                    v139 = v138;
                  }
                }

                v235 = v139;
                if (v128 < 0.0)
                {
                  v297.origin.x = v134;
                  v297.origin.y = v135;
                  v297.size.width = v136;
                  v297.size.height = v137;
                  v142 = CGRectGetMinY(v297);
                  v110 = v127;
                  if (v142 >= v125)
                  {
                    v109 = v125;
                  }

                  else
                  {
                    v109 = v142;
                  }
                }

                else
                {
                  v296.origin.x = v134;
                  v296.origin.y = v135;
                  v296.size.width = v136;
                  v296.size.height = v137;
                  v141 = CGRectGetMaxY(v296);
                  v110 = v127;
                  if (v141 >= v125)
                  {
                    v109 = v141;
                  }

                  else
                  {
                    v109 = v125;
                  }
                }
              }

              v108 = [v231 countByEnumeratingWithState:&v255 objects:v287 count:16];
            }

            while (v108);
          }

          if (v268[4] == 1.79769313e308 && v268[5] == 1.79769313e308)
          {
            [v97 center];
            *(v268 + 4) = v194;
            [v97 center];
            *(v268 + 5) = v195;
          }

          else
          {
            [v97 center];
            if (v145 < v268[4])
            {
              v145 = v268[4];
            }

            v268[4] = v145;
            [v97 center];
            v147 = v268[5];
            if (v146 >= v147)
            {
              v147 = v146;
            }

            v268[5] = v147;
          }

          [v97 frame];
          v152 = v151;
          v153 = v148;
          v154 = v149;
          v155 = v150;
          v156 = -v110;
          if (v110 >= 0.0)
          {
            v156 = v110;
          }

          if (v156 <= 0.0)
          {
            if (v238 >= 0.0)
            {
              v163 = v152;
              v152 = CGRectGetMaxX(*(&v148 - 1));
              if (v235 - v152 >= 0.0)
              {
                v154 = v235 - v152;
              }

              else
              {
                v154 = -(v235 - v152);
              }

              v161 = 0.0;
              v159 = v152;
            }

            else
            {
              v160 = v152;
              v159 = CGRectGetMinX(*(&v148 - 1));
              if (v235 - v159 >= 0.0)
              {
                v154 = v235 - v159;
              }

              else
              {
                v154 = -(v235 - v159);
              }

              v152 = v159 - v154;
              v161 = 0.0;
            }

            v157 = v153;
            v158 = v155;
          }

          else
          {
            if (v110 >= 0.0)
            {
              v162 = v152;
              v153 = CGRectGetMaxY(*(&v148 - 1));
              if (v109 - v153 >= 0.0)
              {
                v155 = v109 - v153;
              }

              else
              {
                v155 = -(v109 - v153);
              }

              v158 = 0.0;
              v159 = v152;
              v157 = v153;
            }

            else
            {
              [v97 frame];
              v157 = CGRectGetMinY(v298);
              if (v109 - v157 >= 0.0)
              {
                v155 = v109 - v157;
              }

              else
              {
                v155 = -(v109 - v157);
              }

              v153 = v157 - v155;
              v158 = 0.0;
              v159 = v152;
            }

            v161 = v154;
          }

          v254[0] = MEMORY[0x1E69E9820];
          v254[1] = 3221225472;
          v254[2] = ___UICollectionViewSetupExpandCollapseAnimations_block_invoke_3;
          v254[3] = &unk_1E711F558;
          v254[4] = v223;
          v254[5] = v215;
          v254[6] = v214;
          *&v254[7] = v217;
          *&v254[8] = v216;
          *&v254[9] = v152;
          *&v254[10] = v153;
          *&v254[11] = v154;
          *&v254[12] = v155;
          *&v254[13] = v159;
          *&v254[14] = v157;
          *&v254[15] = v161;
          *&v254[16] = v158;
          *&v254[17] = v238;
          *&v254[18] = v110;
          [v236 enumerateKeysAndObjectsUsingBlock:v254];
          v164 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v252 = 0u;
          v253 = 0u;
          v250 = 0u;
          v251 = 0u;
          v165 = v213;
          if (v213)
          {
            v165 = v213[9];
          }

          v166 = v165;
          v167 = [v166 countByEnumeratingWithState:&v250 objects:v286 count:16];
          if (v167)
          {
            v168 = *v251;
            do
            {
              for (n = 0; n != v167; ++n)
              {
                if (*v251 != v168)
                {
                  objc_enumerationMutation(v166);
                }

                v170 = *(*(&v250 + 1) + 8 * n);
                if ([v170 length] >= 2 && objc_msgSend(v170, "section") == v233)
                {
                  [v164 addObject:v170];
                }
              }

              v167 = [v166 countByEnumeratingWithState:&v250 objects:v286 count:16];
            }

            while (v167);
          }

          v171 = v164;
          v172 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v248 = 0u;
          v249 = 0u;
          v246 = 0u;
          v247 = 0u;
          v173 = v213;
          if (v213)
          {
            v173 = v213[10];
          }

          v174 = v173;
          v175 = [v174 countByEnumeratingWithState:&v246 objects:v285 count:16];
          if (v175)
          {
            v176 = *v247;
            do
            {
              for (ii = 0; ii != v175; ++ii)
              {
                if (*v247 != v176)
                {
                  objc_enumerationMutation(v174);
                }

                v178 = *(*(&v246 + 1) + 8 * ii);
                if ([v178 length] >= 2 && objc_msgSend(v178, "section") == v233)
                {
                  [v172 addObject:v178];
                }
              }

              v175 = [v174 countByEnumeratingWithState:&v246 objects:v285 count:16];
            }

            while (v175);
          }

          v179 = v172;
          v180 = [v179 mutableCopy];
          [v180 minusSet:v171];
          if ([v180 count])
          {
            v181 = [v229 collectionViewLayout];
            v182 = [v181 _layoutAxis];
            if ((v182 - 1) <= 1)
            {
              v183 = [v181 _orthogonalScrollingSections];
              v184 = [v183 containsIndex:v233];
              v185 = v182 == 2;
              if (v182 == 1)
              {
                v185 = 2;
              }

              if (v184)
              {
                v186 = v185;
              }

              else
              {
                v186 = v182;
              }

              v187 = _UISizeValueForAxis(v186, v217, v216);
              v188 = _UISetPointValueForAxis(v186, v221, v219, v187);
              v190 = v189;
              v191 = v213;
              if (v213)
              {
                v191 = v213[8];
              }

              v192 = v191;
              v239[0] = MEMORY[0x1E69E9820];
              v239[1] = 3221225472;
              v240[0] = ___UICollectionViewSetupExpandCollapseAnimations_block_invoke_5;
              v240[1] = &unk_1E711F580;
              v193 = v180;
              v243 = v188;
              v244 = v190;
              v245 = v186;
              v241 = v193;
              v242 = &v267;
              [v192 enumerateKeysAndObjectsUsingBlock:v239];
            }
          }
        }

        ++v225;
      }

      while (v225 != v212);
      v196 = [v207 countByEnumeratingWithState:&v263 objects:v289 count:16];
      v212 = v196;
    }

    while (v196);
  }

  _Block_object_dispose(&v267, 8);
}

void _UIBackgroundViewConfigurationApplyProperties(void *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = a3;
  v8 = *a2;
  v9 = *(a2 + 16);
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v6, v9, 56);
    v9 = *(a2 + 16);
  }

  if (!v9)
  {
    if (v8 == 1)
    {
      if (v5)
      {
        v12 = v5[6];
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 48);
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (*(a2 + 32) == 1 && v8 != 1)
  {
LABEL_11:
    [(_UIBackgroundViewConfiguration *)v5 _setBackgroundColor:?];
  }

  if (v5)
  {
    v11 = v5[6];
    v12 = v11;
    v13 = *(a2 + 48);
    if (v8 != 1)
    {
      if (v11)
      {
        v14 = v11;
        v15 = v14;
        if (v13 <= 6)
        {
          v18 = v14;
          if (!v13)
          {
LABEL_53:
            v20 = v18;

            v12 = v18;
            v5[5] = 0;
            goto LABEL_71;
          }

          if (v13 == 3)
          {
            v16 = [v14 colorWithAlphaComponent:0.5];
            goto LABEL_52;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v16 = [v14 colorWithAlphaComponent:0.3];
              goto LABEL_52;
            case 12:
              v16 = [v14 colorWithAlphaComponent:0.8];
              goto LABEL_52;
            case 8:
              v16 = [v14 colorWithAlphaComponent:0.1];
LABEL_52:
              v18 = v16;

              goto LABEL_53;
          }
        }

        if (os_variant_has_internal_diagnostics())
        {
          v23 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            v30 = 67109120;
            v31 = v13;
            _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "Found a color transformer identifier (%d) that is unsupported when using backgroundColor in the _UIBackgroundViewConfiguration SPI. The color transformer is being ignored, but this will produce an incorrect appearance; switch to the UIBackgroundConfiguration API to resolve this.", &v30, 8u);
          }
        }

        else
        {
          v21 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A0810) + 8);
          v18 = v15;
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          v30 = 67109120;
          v31 = v13;
          _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Found a color transformer identifier (%d) that is unsupported when using backgroundColor in the _UIBackgroundViewConfiguration SPI. The color transformer is being ignored, but this will produce an incorrect appearance; switch to the UIBackgroundConfiguration API to resolve this.", &v30, 8u);
        }

        v18 = v15;
        goto LABEL_53;
      }

      goto LABEL_65;
    }
  }

  else
  {
    v13 = *(a2 + 48);
    if (v8 != 1)
    {
LABEL_65:
      if (v13)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v29 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            v30 = 67109120;
            v31 = v13;
            _os_log_fault_impl(&dword_188A29000, v29, OS_LOG_TYPE_FAULT, "Found a color transformer identifier (%d) that is unsupported when used without tintColor and without backgroundColor in the _UIBackgroundViewConfiguration SPI. The color transformer is being ignored, but this will produce an incorrect appearance; switch to the UIBackgroundConfiguration API to resolve this.", &v30, 8u);
          }
        }

        else
        {
          v27 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A0818) + 8);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v30 = 67109120;
            v31 = v13;
            _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Found a color transformer identifier (%d) that is unsupported when used without tintColor and without backgroundColor in the _UIBackgroundViewConfiguration SPI. The color transformer is being ignored, but this will produce an incorrect appearance; switch to the UIBackgroundConfiguration API to resolve this.", &v30, 8u);
          }
        }

        v12 = 0;
        v13 = 0;
      }

      else
      {
        v12 = 0;
      }

      v17 = 1;
      goto LABEL_68;
    }

    v12 = 0;
  }

LABEL_23:
  if (v13 > 5)
  {
    if (v13 <= 8)
    {
      if (v13 == 6)
      {
        v17 = 0;
        v13 = 5;
        goto LABEL_68;
      }

      goto LABEL_35;
    }

    switch(v13)
    {
      case 9:
LABEL_35:
        v17 = 0;
        goto LABEL_68;
      case 12:
        v17 = 0;
        v13 = 10;
        goto LABEL_68;
      case 28:
        v17 = 0;
        v13 = 11;
        goto LABEL_68;
    }

    goto LABEL_46;
  }

  if (v13 <= 2)
  {
    if (!v13)
    {
LABEL_49:
      v17 = 0;
      v13 = 1;
      goto LABEL_68;
    }

    if (v13 == 2)
    {
      v17 = 0;
      v13 = 3;
      goto LABEL_68;
    }

LABEL_46:
    if (os_variant_has_internal_diagnostics())
    {
      v22 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        v30 = 67109120;
        v31 = v13;
        _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Found a color transformer identifier (%d) that is unsupported when using tintColor in the _UIBackgroundViewConfiguration SPI. The color transformer is being ignored, but this will produce an incorrect appearance; switch to the UIBackgroundConfiguration API to resolve this.", &v30, 8u);
      }
    }

    else
    {
      v19 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1272) + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v30 = 67109120;
        v31 = v13;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Found a color transformer identifier (%d) that is unsupported when using tintColor in the _UIBackgroundViewConfiguration SPI. The color transformer is being ignored, but this will produce an incorrect appearance; switch to the UIBackgroundConfiguration API to resolve this.", &v30, 8u);
      }
    }

    goto LABEL_49;
  }

  if (v13 == 3)
  {
    v17 = 0;
    v13 = 6;
  }

  else
  {
    v17 = 0;
    if (v13 == 4)
    {
      v13 = 2;
    }

    else
    {
      v13 = 4;
    }
  }

LABEL_68:
  if (v5)
  {
    v5[5] = v13;
    if ((v17 & 1) == 0)
    {
      v24 = v5[6];
      v5[6] = 0;
    }
  }

LABEL_71:
  [(_UIBackgroundViewConfiguration *)v5 _setBackgroundColor:v12];
  v25 = _UIShadowPropertiesFromShadowType(*(a2 + 40), v7);
  [v5 _setShadowProperties:v25];

  v26 = *(a2 + 56);
  if (v26 <= 0.0)
  {
    goto LABEL_82;
  }

  if (!v5)
  {
    if (*(a2 + 72))
    {
      goto LABEL_81;
    }

LABEL_80:
    [(UIBackgroundConfiguration *)v5 _setImage:?];
    goto LABEL_81;
  }

  *(v5 + 10) = v26;
  v5[11] = *(a2 + 64);
  if (*(a2 + 72) != 1)
  {
    goto LABEL_80;
  }

  v5[8] = 1;
LABEL_81:
  [v5 _setStrokeLocation:*(a2 + 88)];
LABEL_82:
  [v5 _setCornerRadius:*(a2 + 96)];
  if (v5)
  {
    v28 = *(a2 + 120);
    *(v5 + 9) = *(a2 + 104);
    *(v5 + 10) = v28;
  }

  __destructor_8_s8_s16_s24_s80(a2);
}

__CFString *_stringForColorMode(uint64_t a1)
{
  if ((a1 - 1) >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown color mode: %ld", a1];
  }

  else
  {
    v2 = off_1E711F658[a1 - 1];
  }

  return v2;
}

uint64_t _colorTransformIdentifierForColorMode(uint64_t a1)
{
  if ((a1 - 2) > 9)
  {
    return 0;
  }

  else
  {
    return qword_18A6815C8[a1 - 2];
  }
}

void setDefaultLockAnimationParameters(void *a1)
{
  v1 = a1;
  [v1 setMass:2.0];
  [v1 setStiffness:300.0];
  [v1 setDamping:400.0];
  [v1 setDuration:0.91];
  v2 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v3) = 1046809695;
  LODWORD(v4) = 990250344;
  LODWORD(v5) = 1057860847;
  LODWORD(v6) = 1064564184;
  v7 = [v2 initWithControlPoints:v3 :v4 :v5 :v6];
  [v1 setTimingFunction:v7];
}

double centerOfRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  v9 = MinX + CGRectGetWidth(v11) * 0.5;
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMinY(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetHeight(v13);
  return v9;
}

void sub_189EEA620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 208));
  _Unwind_Resume(a1);
}

void sub_189EEF24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189EF1C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189EF88C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _UIContextMenuGutterWidth(uint64_t a1)
{
  v1 = _UIContextMenuGetPlatformMetrics(a1);
  [v1 menuGutterWidth];
  v3 = v2;

  return v3;
}

void sub_189F0631C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_189F0B8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL UIPDFQuadrilateralIsNull(double *a1)
{
  v2 = *MEMORY[0x1E695EFF8];
  v1 = *(MEMORY[0x1E695EFF8] + 8);
  if (*a1 != *MEMORY[0x1E695EFF8] || a1[1] != v1)
  {
    return 0;
  }

  if (a1[2] != v2 || a1[3] != v1)
  {
    return 0;
  }

  if (a1[6] != v2 || a1[7] != v1)
  {
    return 0;
  }

  if (a1[5] == v1)
  {
    return a1[4] == v2;
  }

  return 0;
}

void CPRotationDegreesFromTransform(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (v2 != 0.0)
  {
LABEL_11:
    v6 = fabs(v1);
    v7 = fabs(v2);
    if (v6 >= v7)
    {
      v8 = v2;
    }

    else
    {
      v8 = v1;
    }

    if (v6 >= v7)
    {
      v9 = v1;
    }

    else
    {
      v9 = v2;
    }

    atan(v8 / v9);
    return;
  }

  if (v1 <= 0.0 || *a1 * v4 < v2 * v3)
  {
    if (v1 == 0.0)
    {
      if (v3 == 0.0 && v4 == 0.0)
      {
        return;
      }

      v2 = -v3;
      v1 = a1[3];
    }

    goto LABEL_11;
  }
}

double CGPDFPageGetBoxRectWithRotation(CGPDFPage *a1, CGPDFBox a2)
{
  *&v3 = CGPDFPageGetBoxRect(a1, a2);
  CGPDFPageGetRotationAngle(a1);
  return v3;
}

void CPSetCGPathPoints4(CGPath *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  CGPathMoveToPoint(a1, 0, a2, a3);
  CGPathAddLineToPoint(a1, 0, a4, a5);
  CGPathAddLineToPoint(a1, 0, a6, a7);

  CGPathAddLineToPoint(a1, 0, a8, a9);
}

double boundsForRotatedSelection(float64x2_t *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MidX = CGRectGetMidX(*&a2);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  MidY = CGRectGetMidY(v18);
  __asm { FMOV            V1.2D, #-10.0 }

  *&result = *&vaddq_f64(vaddq_f64(a1[2], vaddq_f64(vmulq_n_f64(*a1, MidX), vmulq_n_f64(a1[1], MidY))), _Q1);
  return result;
}

uint64_t sortByYAscendingThenX(void *a1, void *a2)
{
  v3 = [a1 parent];
  v4 = [a2 parent];
  v5 = [v3 selection];
  v6 = [v4 selection];
  v7 = [v5 numberOfRectangles];
  v8 = [v6 numberOfRectangles];
  result = 0;
  if (v7 && v8)
  {
    memset(&v24, 0, sizeof(v24));
    memset(&v23, 0, sizeof(v23));
    memset(&v22, 0, sizeof(v22));
    memset(&v21, 0, sizeof(v21));
    [v5 getBounds:&v24 transform:&v22 index:0];
    [v6 getBounds:&v23 transform:&v21 index:0];
    v20 = v22;
    if (!CGAffineTransformIsIdentity(&v20))
    {
      v20 = v22;
      v24.origin.x = boundsForRotatedSelection(&v20, v24.origin.x, v24.origin.y, v24.size.width, v24.size.height);
      v24.origin.y = v10;
      v24.size.width = v11;
      v24.size.height = v12;
    }

    v20 = v21;
    if (!CGAffineTransformIsIdentity(&v20))
    {
      v20 = v21;
      v23.origin.x = boundsForRotatedSelection(&v20, v23.origin.x, v23.origin.y, v23.size.width, v23.size.height);
      v23.origin.y = v13;
      v23.size.width = v14;
      v23.size.height = v15;
    }

    MaxY = CGRectGetMaxY(v24);
    v17 = CGRectGetMaxY(v23);
    MinX = CGRectGetMinX(v24);
    v19 = CGRectGetMinX(v23);
    if (MaxY >= v17)
    {
      result = -1;
      if (MaxY <= v17 && MinX >= v19)
      {
        return MinX > v19;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL CPIsRetina(_DWORD *a1)
{
  v2 = [objc_opt_self() mainScreen];
  result = 0;
  if (objc_opt_respondsToSelector())
  {
    [v2 scale];
    *&v3 = v3;
    *a1 = LODWORD(v3);
    if (*&v3 > 1.0)
    {
      return 1;
    }
  }

  return result;
}

void *makeGrabber(int a1, double a2, double a3, double a4, double a5, float a6)
{
  v12 = [MEMORY[0x1E6979398] layer];
  [v12 setBounds:{a2, a3, a4, a5}];
  [v12 setContentsGravity:*MEMORY[0x1E6979DD0]];
  if (a1)
  {
    [v12 setContentsScale:a6];
  }

  [v12 setOpacity:0.0];
  return v12;
}

void CPCGInsetFillEllipseInRect(CGContext *a1, CGColor *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  CGContextSaveGState(a1);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  v18 = CGRectInset(v17, 2.0, 2.0);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  CGContextSetFillColorWithColor(a1, a2);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGContextFillEllipseInRect(a1, v19);

  CGContextRestoreGState(a1);
}

CGFloat CGPDFComputeTransform(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v51.origin.x = a7;
  v51.origin.y = a8;
  v51.size.width = a9;
  v51.size.height = a10;
  txa = CGRectGetMinX(v51);
  v44 = a7;
  v52.origin.x = a7;
  v52.origin.y = a8;
  v52.size.width = a9;
  v52.size.height = a10;
  MinY = CGRectGetMinY(v52);
  CGAffineTransformMakeTranslation(a1, txa, MinY);
  v53.origin.x = a3;
  v53.origin.y = a4;
  v53.size.width = a5;
  v53.size.height = a6;
  Width = CGRectGetWidth(v53);
  v45 = a4;
  v54.origin.x = a3;
  v54.origin.y = a4;
  v22 = Width;
  v46 = a5;
  tx = a6;
  v54.size.width = a5;
  v54.size.height = a6;
  Height = CGRectGetHeight(v54);
  v24 = 1.0;
  v25 = 1.0;
  if (v22 > 0.0)
  {
    v55.origin.x = v44;
    v55.origin.y = a8;
    v55.size.width = a9;
    v55.size.height = a10;
    v25 = CGRectGetWidth(v55) / v22;
  }

  if (Height > 0.0)
  {
    v56.origin.x = v44;
    v56.origin.y = a8;
    v56.size.width = a9;
    v56.size.height = a10;
    v24 = CGRectGetHeight(v56) / Height;
  }

  v26 = *(a1 + 16);
  *&v49.a = *a1;
  *&v49.c = v26;
  *&v49.tx = *(a1 + 32);
  CGAffineTransformScale(&v50, &v49, v25, v24);
  v27 = *&v50.c;
  *a1 = *&v50.a;
  *(a1 + 16) = v27;
  *(a1 + 32) = *&v50.tx;
  switch(a2)
  {
    case 270:
      v35 = *(a1 + 16);
      *&v49.a = *a1;
      *&v49.c = v35;
      *&v49.tx = *(a1 + 32);
      CGAffineTransformTranslate(&v50, &v49, v22, 0.0);
      v36 = *&v50.c;
      *a1 = *&v50.a;
      *(a1 + 16) = v36;
      *(a1 + 32) = *&v50.tx;
      v37 = *(a1 + 16);
      *&v49.a = *a1;
      *&v49.c = v37;
      *&v49.tx = *(a1 + 32);
      v31 = 1.57079633;
      goto LABEL_11;
    case 180:
      v32 = *(a1 + 16);
      *&v49.a = *a1;
      *&v49.c = v32;
      *&v49.tx = *(a1 + 32);
      CGAffineTransformTranslate(&v50, &v49, v22, Height);
      v33 = *&v50.c;
      *a1 = *&v50.a;
      *(a1 + 16) = v33;
      *(a1 + 32) = *&v50.tx;
      v34 = *(a1 + 16);
      *&v49.a = *a1;
      *&v49.c = v34;
      *&v49.tx = *(a1 + 32);
      v31 = 3.14159265;
      goto LABEL_11;
    case 90:
      v28 = *(a1 + 16);
      *&v49.a = *a1;
      *&v49.c = v28;
      *&v49.tx = *(a1 + 32);
      CGAffineTransformTranslate(&v50, &v49, 0.0, Height);
      v29 = *&v50.c;
      *a1 = *&v50.a;
      *(a1 + 16) = v29;
      *(a1 + 32) = *&v50.tx;
      v30 = *(a1 + 16);
      *&v49.a = *a1;
      *&v49.c = v30;
      *&v49.tx = *(a1 + 32);
      v31 = -1.57079633;
LABEL_11:
      CGAffineTransformRotate(&v50, &v49, v31);
      v38 = *&v50.c;
      *a1 = *&v50.a;
      *(a1 + 16) = v38;
      *(a1 + 32) = *&v50.tx;
      break;
  }

  v57.origin.x = a3;
  v57.origin.y = v45;
  v57.size.width = v46;
  v57.size.height = tx;
  v39 = -CGRectGetMinX(v57);
  v58.origin.x = a3;
  v58.origin.y = v45;
  v58.size.width = v46;
  v58.size.height = tx;
  v40 = CGRectGetMinY(v58);
  v41 = *(a1 + 16);
  *&v49.a = *a1;
  *&v49.c = v41;
  *&v49.tx = *(a1 + 32);
  CGAffineTransformTranslate(&v50, &v49, v39, -v40);
  v42 = *&v50.c;
  *a1 = *&v50.a;
  *(a1 + 16) = v42;
  result = v50.tx;
  *(a1 + 32) = *&v50.tx;
  return result;
}

uint64_t UIActivityIndicatorViewStyleForBackingColor(void *a1)
{
  if (!a1)
  {
    return 2;
  }

  v4 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  [a1 getRed:&v4 green:&v3 blue:&v2 alpha:0];
  if (v4 * 0.212599993 + v3 * 0.715200007 + v2 * 0.0722000003 < 0.5)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

size_t indexOfDictionary(CGPDFDictionary *a1, void *a2, CGPDFDictionary *a3)
{
  value = 0;
  if (CGPDFDictionaryGetArray(a1, "Kids", &value))
  {
    result = CGPDFArrayGetCount(value);
    if (!result)
    {
      return result;
    }

    v6 = result;
    for (i = 0; v6 != i; ++i)
    {
      dict = 0;
      if (!CGPDFArrayGetDictionary(value, i, &dict))
      {
        break;
      }

      if (dict == a3)
      {
        return *a2 + 1;
      }

      __s1 = 0;
      if (!CGPDFDictionaryGetName(dict, "Type", &__s1))
      {
        return 0;
      }

      v8 = __s1;
      if (!strcmp(__s1, "Page"))
      {
        ++*a2;
      }

      else if (!strcmp(v8, "Pages"))
      {
        result = indexOfDictionary(dict, a2, a3);
        if (result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

void sub_189F28744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CarKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED4A0900 = result;
  return result;
}

void sub_189F2A8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189F2CED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTKStickerRemoteSearchViewControllerClass_block_invoke(uint64_t a1)
{
  if (!qword_1ED4A0920)
  {
    qword_1ED4A0920 = _sl_dlopen();
  }

  result = objc_getClass("STKStickerRemoteSearchViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4A0918 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StickerKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1ED4A0920 = result;
  return result;
}

void _UIDebugShowLayoutItem(void *a1, void *a2)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [(UIView *)v3 _ui_view];
  if (v5 == v3 || (objc_getAssociatedObject(v3, &_UIDebugView), v6 = objc_claimAutoreleasedReturnValue(), v5, (v5 = v6) != 0))
  {
    if (v4)
    {
LABEL_4:
      [v4 alphaComponent];
      v8 = [v4 colorWithAlphaComponent:v7 * 0.25];
      [(UIView *)v5 setBackgroundColor:v8];

      [(UIView *)v5 _currentScreenScale];
      v10 = 1.0 / v9;
      v11 = [(UIView *)v5 layer];
      [v11 setBorderWidth:v10];

      v12 = [v4 CGColor];
      v13 = [(UIView *)v5 layer];
      [v13 setBorderColor:v12];

      goto LABEL_9;
    }
  }

  else
  {
    v5 = objc_alloc_init(UIView);
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5 setUserInteractionEnabled:0];
    objc_setAssociatedObject(v3, &_UIDebugView, v5, 0);
    v28 = [(UIView *)v5 topAnchor];
    v27 = [(UIView *)v3 topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v29[0] = v26;
    v25 = [(UIView *)v5 leftAnchor];
    v24 = [(UIView *)v3 leftAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v29[1] = v23;
    v14 = [(UIView *)v5 rightAnchor];
    v15 = [(UIView *)v3 rightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v29[2] = v16;
    v17 = [(UIView *)v5 bottomAnchor];
    v18 = [(UIView *)v3 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v29[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

    v21 = [(UIView *)v3 _ui_superview];
    [v21 addSubview:v5];

    [MEMORY[0x1E69977A0] activateConstraints:v20];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  if (v5 == v3)
  {
    [(UIView *)v5 setBackgroundColor:0];
    v22 = [(UIView *)v5 layer];
    [v22 setBorderColor:0];
  }

  else
  {
    [(UIView *)v5 removeFromSuperview];
    objc_setAssociatedObject(v3, &_UIDebugView, 0, 0);
  }

LABEL_9:
}

void sub_189F371C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189F376FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _UIGetSecondarySIMUnderBaseline()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_SecondarySIMUnderBaseline, _UIInternalPreferencesRevisionVar == _UIInternalPreference_SecondarySIMUnderBaseline))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_SecondarySIMUnderBaseline, @"SecondarySIMUnderBaseline", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_SecondarySIMUnderBaseline;
    }

    while (v0 != _UIInternalPreference_SecondarySIMUnderBaseline);
  }

  return byte_1EA95E68C && v1;
}

id UIStatusBarCreateHUDDualSignalView(void *a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = a1;
  [v8 size];
  v10 = v9;
  [v7 size];
  if (v10 >= v11)
  {
    v11 = v10;
  }

  v12 = v11 * 3.0;
  [v8 size];
  v14 = v13;
  [v7 size];
  _UIGraphicsBeginImageContextWithOptions(0, 0, v12, (v14 + v15 + 3.0) * 3.0, a4);
  [v8 size];
  v17 = (v12 - v16 * 3.0) * 0.5;
  [v8 size];
  v19 = v18 * 3.0;
  [v8 size];
  [v8 drawInRect:0 blendMode:v17 alpha:{0.0, v19, v20 * 3.0, a3}];
  [v7 size];
  v22 = (v12 - v21 * 3.0) * 0.5;
  [v8 size];
  v24 = v23;

  [v7 size];
  v26 = v25 * 3.0;
  [v7 size];
  [v7 drawInRect:0 blendMode:v22 alpha:{(v24 + 3.0) * 3.0, v26, v27 * 3.0, 1.0}];

  v28 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();

  return v28;
}

void _UIViewSetAnchorPointToTouchPoint(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 layer];
  [v6 size];
  v8 = v7;
  v10 = v9;

  if (v8 != 0.0 || v10 != 0.0)
  {
    v11 = [v5 layer];
    [v11 convertPoint:0 fromLayer:{a2, a3}];
    v13 = v12;
    v15 = v14;

    v16 = v15 / v10;
    v17 = v5;
    [v17 bounds];
    v58 = v13 / v8;
    v19 = v13 / v8 * v18;
    [v17 bounds];
    v21 = v16 * v20;
    [v17 bounds];
    v23 = v22;
    [v17 anchorPoint];
    v25 = v24;
    [v17 bounds];
    v27 = v26;
    [v17 anchorPoint];
    v29 = v28;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    if (v17)
    {
      [v17 transform];
      v36 = v59;
      v33 = v60;
      v35 = v61;
      v32 = v62;
      v34 = v63;
      v31 = v64;
    }

    v37 = v23 * v25;
    v38 = v27 * v29;
    v39 = v34 + v21 * v35 + v19 * v36;
    v40 = v31 + v21 * v32 + v19 * v33;
    v41 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
    v44 = 0.0;
    v45 = 0.0;
    if (v17)
    {
      [v17 transform];
      v45 = v59;
      v42 = v60;
      v44 = v61;
      v41 = v62;
      v43 = v63;
      v30 = v64;
    }

    v46 = v43 + v38 * v44 + v37 * v45;
    v47 = v30 + v38 * v41 + v37 * v42;
    v48 = [v17 layer];
    [v48 position];
    v50 = v49;
    v52 = v51;

    v53 = v39 + v50 - v46;
    v54 = v40 + v52 - v47;
    if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v54 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v58 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v57 = [v17 layer];
      [v57 setPosition:{v53, v54}];

      [v17 setAnchorPoint:{v58, v16}];
    }
  }
}

void sub_189F450B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189F45BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_189F47418(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _UINullableTraitOverridesEqual(_UITraitOverrides *a1, _UITraitOverrides *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = [(_UITraitOverrides *)v3 _isEmpty];
    if (v5)
    {
LABEL_3:
      v7 = [(_UITraitOverrides *)v5 _isEmpty];
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 1;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  if (v6 & v7)
  {
    v8 = 1;
  }

  else
  {
    if (v3)
    {
      v9 = [(_UITraitOverrides *)v3 isEqual:v5];
    }

    else
    {
      v9 = [(_UITraitOverrides *)v5 isEqual:0];
    }

    v8 = v9;
  }

  return v8;
}

void sub_189F4C024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189F5165C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189F5182C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUIKeyboardAnimationInfoClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUIKeyboardAnimationInfoClass_softClass_2;
  v7 = getTUIKeyboardAnimationInfoClass_softClass_2;
  if (!getTUIKeyboardAnimationInfoClass_softClass_2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIKeyboardAnimationInfoClass_block_invoke_2;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getTUIKeyboardAnimationInfoClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189F55284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189F5F9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id location)
{
  objc_destroyWeak((v42 + 40));
  objc_destroyWeak((v41 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v43 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_189F600CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __TextInputUILibraryCore_block_invoke_21()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_9 = result;
  return result;
}

void sub_189F62D3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id _UIStatusBarGetVisualProviderClassForScreen(void *a1, void *a2)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 _isEmbeddedScreen];
  v6 = v5;
  if (v5)
  {
    v7 = _MergedGlobals_1284;
    if (_MergedGlobals_1284)
    {
      goto LABEL_17;
    }
  }

  if (!v5)
  {
LABEL_11:
    v12 = v3;
    v13 = v4;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v31 = 0;
    v38[0] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v33 = ___UIStatusBarGetNativeVisualProviderClassForScreenWithVisualProviderInfo_block_invoke;
    v34 = &unk_1E7120338;
    v37 = &v28;
    v15 = v12;
    v35 = v15;
    v16 = v13;
    v36 = v16;
    [v14 enumerateObjectsUsingBlock:&buf];
    v7 = v29[3];

    _Block_object_dispose(&v28, 8);
    v17 = v7;
    if (!v7)
    {
      [v15 _unjailedReferenceBounds];
      Width = CGRectGetWidth(v40);
      [v15 _nativeScale];
      v20 = v19;
      v21 = [v15 traitCollection];
      v22 = [v21 userInterfaceIdiom];

      [v15 _displayCornerRadius];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No status bar visual provider for screen %@ (width: %.2f, scale: %.2f, idiom: %ld, cornerRadius: %.2f). Please see rdar://45025538.", v15, *&Width, v20, v22, v23];
      v25 = *(__UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0998) + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v24;
        _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      v7 = objc_opt_class();
    }

    if (!v6)
    {
      goto LABEL_17;
    }

LABEL_16:
    _MergedGlobals_1284 = v7;
    goto LABEL_17;
  }

  v8 = _UIKitUserDefaults();
  v9 = [v8 objectForKey:@"UIStatusBarVisualProviderClassName"];

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v10 = NSClassFromString(v9)) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v7 = v10;
  Superclass = v10;
  while (!class_conformsToProtocol(Superclass, &unk_1F0072CF0))
  {
    Superclass = class_getSuperclass(Superclass);
    if (!Superclass)
    {
      goto LABEL_10;
    }
  }

  NSLog(&cfstr_WarningUsingOv.isa, v7);

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_17:
  v26 = v7;

  return v26;
}

void sub_189F67120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (Superclass = class_getSuperclass(a1)) != 0 && (v8 = Superclass, ClassMethod = class_getClassMethod(a1, sel_visualProviderSubclassForScreen_visualProviderInfo_), ClassMethod == class_getClassMethod(v8, sel_visualProviderSubclassForScreen_visualProviderInfo_)))
  {
    v10 = a1;
  }

  else
  {
    v10 = [a1 visualProviderSubclassForScreen:v5 visualProviderInfo:v6];
  }

  v11 = v10;

  return v11;
}

void _UIStatusBarAddDefaultAnimationReposition(void *a1, void *a2, void *a3, void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v34 = a2;
  v36 = a3;
  v35 = a4;
  v33 = [MEMORY[0x1E695DFA8] set];
  v8 = [v7 statusBar];
  v9 = [v8 stateForDisplayItemWithIdentifier:v36];
  v10 = [v9 potentialPlacementRegionIdentifiers];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v10;
  v37 = [obj countByEnumeratingWithState:&v43 objects:v61 count:16];
  if (v37)
  {
    v32 = *v44;
    v11 = MEMORY[0x1E69E9820];
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        v14 = [v7 statusBar];
        v15 = [v14 regions];
        v16 = [v15 objectForKeyedSubscript:v13];

        aBlock[0] = v11;
        aBlock[1] = 3221225472;
        aBlock[2] = ___UIStatusBarDefaultRepositionAnimation_block_invoke;
        aBlock[3] = &__block_descriptor_48_e24_v24__0___v___8___v__B_16l;
        v48 = xmmword_18A682250;
        v17 = v35;
        v18 = v16;
        v19 = _Block_copy(aBlock);
        v20 = v18;
        v21 = v19;
        v22 = v17;
        v58[0] = 0;
        v58[1] = v58;
        v58[2] = 0x3032000000;
        v58[3] = __Block_byref_object_copy__180;
        v58[4] = __Block_byref_object_dispose__180;
        v59 = 0;
        v54[0] = v11;
        v54[1] = 3221225472;
        v54[2] = ___UIStatusBarInternalRepositionAnimation_block_invoke;
        v54[3] = &unk_1E71203B0;
        v23 = v22;
        v55 = v23;
        v57 = v58;
        v24 = v21;
        v56 = v24;
        v25 = [_UIStatusBarAnimation animationWithBlock:v54];
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = ___UIStatusBarInternalRepositionAnimation_block_invoke_5;
        v49[3] = &unk_1E71203D8;
        v26 = v20;
        v50 = v26;
        v51 = 0;
        v52 = v58;
        v53 = 0;
        [v25 setPrepareBlock:v49];

        _Block_object_dispose(v58, 8);
        [v25 setIdentifier:@"defaultAnimationReposition"];
        [v25 setPriority:-200];
        v27 = [v7 statusBar];
        v60 = v13;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
        v29 = [v27 displayItemIdentifiersInRegionsWithIdentifiers:v28];
        v38[0] = v11;
        v38[1] = 3221225472;
        v38[2] = ___UIStatusBarAddDefaultAnimationReposition_block_invoke;
        v38[3] = &unk_1E7120360;
        v39 = v36;
        v40 = v33;
        v41 = v34;
        v42 = v25;
        v30 = v25;
        [v29 enumerateObjectsUsingBlock:v38];
      }

      v37 = [obj countByEnumeratingWithState:&v43 objects:v61 count:16];
    }

    while (v37);
  }
}

id _UIStatusBarDefaultAnimation(void *a1, void *a2, __int128 *a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__180;
  v30[4] = __Block_byref_object_dispose__180;
  v31 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x4010000000;
  v27[3] = "";
  v13 = *(MEMORY[0x1E695F058] + 16);
  v28 = *MEMORY[0x1E695F058];
  v29 = v13;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___UIStatusBarDefaultAnimation_block_invoke;
  v20[3] = &unk_1E7120388;
  v20[4] = v30;
  v20[5] = v27;
  v14 = *a3;
  v15 = a3[1];
  v23 = a3[2];
  v22 = v15;
  v21 = v14;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v16 = [_UIStatusBarAnimation animationWithBlock:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___UIStatusBarDefaultAnimation_block_invoke_3;
  v19[3] = &unk_1E711CD00;
  v19[4] = v27;
  [v16 setPrepareBlock:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___UIStatusBarDefaultAnimation_block_invoke_4;
  v18[3] = &unk_1E711CD28;
  v18[4] = v30;
  _UIStatusBarAddDefaultAnimationReposition(v11, v16, v12, v18);
  [v16 setDelaysAnimatingItems:1];
  [v16 setPriority:-100];
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v30, 8);

  return v16;
}

void sub_189F67A28(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

id _UIStatusBarDefaultScaleAnimation(void *a1, void *a2, CGFloat a3)
{
  v5 = a2;
  v6 = a1;
  CGAffineTransformMakeScale(&v9, a3, a3);
  v7 = _UIStatusBarDefaultAnimation(v6, v5, &v9, 0.15, 0.1, 0.0);

  return v7;
}

void sub_189F692B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189F69AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189F6A05C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189F6A2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v15 - 80), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getAPBaseExtensionShieldViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED499448)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AppProtectionUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7120460;
    v8 = 0;
    qword_1ED499448 = _sl_dlopen();
  }

  if (!qword_1ED499448)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppProtectionUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UISceneInterfaceProtectionHostComponent.m" lineNumber:35 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("APBaseExtensionShieldView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAPBaseExtensionShieldViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UISceneInterfaceProtectionHostComponent.m" lineNumber:36 description:{@"Unable to find class %s", "APBaseExtensionShieldView"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1_24 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppProtectionUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED499448 = result;
  return result;
}

void __getAPExtensionSubjectMonitorRegistryClass_block_invoke(uint64_t a1)
{
  AppProtectionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("APExtensionSubjectMonitorRegistry");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAPExtensionSubjectMonitorRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAPExtensionSubjectMonitorRegistryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UISceneInterfaceProtectionHostComponent.m" lineNumber:33 description:{@"Unable to find class %s", "APExtensionSubjectMonitorRegistry"}];

    __break(1u);
  }
}

void AppProtectionLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppProtectionLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7120478;
    v5 = 0;
    AppProtectionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppProtectionLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"_UISceneInterfaceProtectionHostComponent.m" lineNumber:30 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AppProtectionLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AppProtectionLibraryCore_frameworkLibrary = result;
  return result;
}

void __getAPGuardClass_block_invoke(uint64_t a1)
{
  AppProtectionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("APGuard");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAPGuardClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAPGuardClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"_UISceneInterfaceProtectionHostComponent.m" lineNumber:32 description:{@"Unable to find class %s", "APGuard"}];

    __break(1u);
  }
}

BOOL _UIIntelligenceSceneShouldBeInactive(void *a1)
{
  v1 = [a1 _screen];
  v4 = 1;
  if (![v1 _isEmbeddedScreen] || (objc_msgSend(MEMORY[0x1E698E520], "sharedBacklight"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "backlightState"), v2, v3 >= 2))
  {
    if ([v1 _userInterfaceIdiom] || (+[_UICarPlaySession sharedInstance](), v5 = objc_claimAutoreleasedReturnValue(), -[_UICarPlaySession currentSession](v5), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6) || (objc_msgSend(v6, "limitUserInterfaces"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v6, (v8 & 1) == 0))
    {
      v4 = 0;
    }
  }

  return v4;
}

void _UIIntelligenceScreenshotServiceGeneratePDF(void *a1, void *a2, void *a3)
{
  v16 = a1;
  v5 = a2;
  v6 = a3;
  v7 = v16;
  if (v16)
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_15:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIIntelligenceScreenshotServiceGeneratePDF(UIScreenshotService *__strong _Nonnull, void (^__strong _Nonnull)(void), void (^__strong _Nonnull)(NSData * _Nullable __strong, NSInteger, CGRect))"}];
    [v12 handleFailureInFunction:v13 file:@"_UIApplicationIntelligenceSupport.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"willGeneratePDF != NULL"}];

    v7 = v16;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIIntelligenceScreenshotServiceGeneratePDF(UIScreenshotService *__strong _Nonnull, void (^__strong _Nonnull)(void), void (^__strong _Nonnull)(NSData * _Nullable __strong, NSInteger, CGRect))"}];
  [v10 handleFailureInFunction:v11 file:@"_UIApplicationIntelligenceSupport.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"screenshotService != nil"}];

  v7 = 0;
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_16:
  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIIntelligenceScreenshotServiceGeneratePDF(UIScreenshotService *__strong _Nonnull, void (^__strong _Nonnull)(void), void (^__strong _Nonnull)(NSData * _Nullable __strong, NSInteger, CGRect))"}];
  [v14 handleFailureInFunction:v15 file:@"_UIApplicationIntelligenceSupport.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != NULL"}];

  v7 = v16;
LABEL_4:
  v8 = [v7 privateDelegate];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [v16 delegate];
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v5[2](v5);
    [v9 screenshotService:v16 generatePDFRepresentationWithCompletion:v6];
  }

  else if (objc_opt_respondsToSelector())
  {
    v5[2](v5);
    [v9 fetchPDFRepresentationWithCompletion:v6];
  }

LABEL_11:
}

__IOSurface *_UIIntelligenceCreateIOSurfaceForView(void *a1, double a2, double a3, double a4)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"IOSurfaceRef  _Nullable _UIIntelligenceCreateIOSurfaceForView(UIView *__strong _Nonnull, CGSize, CGFloat)"}];
    [v13 handleFailureInFunction:v14 file:@"_UIApplicationIntelligenceSupport.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];
  }

  if (a2 < 0.0 || a3 < 0.0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"IOSurfaceRef  _Nullable _UIIntelligenceCreateIOSurfaceForView(UIView *__strong _Nonnull, CGSize, CGFloat)"}];
    [v17 handleFailureInFunction:v18 file:@"_UIApplicationIntelligenceSupport.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"size.width >= 0 && size.height >= 0"}];
  }

  if (a4 <= 0.0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"IOSurfaceRef  _Nullable _UIIntelligenceCreateIOSurfaceForView(UIView *__strong _Nonnull, CGSize, CGFloat)"}];
    [v15 handleFailureInFunction:v16 file:@"_UIApplicationIntelligenceSupport.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"scale > 0"}];
  }

  v20[0] = @"dst-size";
  *v19 = a2;
  *&v19[1] = a3;
  v8 = [MEMORY[0x1E696B098] valueWithBytes:v19 objCType:"{CGSize=dd}"];
  v21[0] = v8;
  v20[1] = @"dst-scale";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v21[1] = v9;
  v21[2] = &unk_1EFE33070;
  v20[2] = @"dst-gamut";
  v20[3] = @"dst-opaque";
  v21[3] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v11 = _UIRenderView(v7, v10, &__block_literal_global_495);
  return v11;
}

void sub_189F6CFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _reorderedPlacementsFromGroupForLegacyLayout(void *a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___reorderedPlacementsFromGroupForLegacyLayout_block_invoke;
  v9[3] = &unk_1E7120B60;
  v10 = v5;
  v11 = a2;
  v6 = v5;
  v7 = [a1 sortedArrayUsingComparator:v9];

  return v7;
}

uint64_t _UIGetFullWidthBackgroundActivity()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_FullWidthBackgroundActivity, _UIInternalPreferencesRevisionVar == _UIInternalPreference_FullWidthBackgroundActivity))
  {
    v1 = 1;
  }

  else
  {
    do
    {
      v1 = v0 >= v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_FullWidthBackgroundActivity, @"FullWidthBackgroundActivity", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_FullWidthBackgroundActivity;
    }

    while (v0 != _UIInternalPreference_FullWidthBackgroundActivity);
  }

  return byte_1EA95E694 || v1;
}

void sub_189F718D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189F7232C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v55 - 224), 8);
  _Block_object_dispose((v55 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t ___reorderedPlacementsFromGroupForLegacyLayout_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 identifier];
  v8 = [v5 indexOfObject:v7];

  v9 = *(a1 + 32);
  v10 = [v6 identifier];

  v11 = [v9 indexOfObject:v10];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL && v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v13 = -1;
  if (!*(a1 + 40))
  {
    v13 = 1;
  }

  v14 = 1;
  if (!*(a1 + 40))
  {
    v14 = -1;
  }

  if (v8 < v11)
  {
    return v14;
  }

  else
  {
    return v13;
  }
}

void sub_189F734DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189F75E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189F76D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189F774E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189F77DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v69 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *_UIPhysicalButtonInteractionArbiterIsAvailableForScene(void *a1)
{
  v1 = a1;
  if (a1)
  {
    if (([a1 _hasInvalidated] & 1) != 0 || !objc_msgSend(v1, "_allowsEventUIWindowRouting"))
    {
      return 0;
    }

    else
    {
      v2 = [v1 session];
      v3 = [v2 role];
      v1 = ([v3 isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"] ^ 1);
    }
  }

  return v1;
}

void sub_189F7E3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189F7F348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189F802EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_189F80B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_189F81DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_189F83988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189F8741C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189F8800C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189F88924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

void sub_189F8A238(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189F8A93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189F90A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Unwind_Resume(a1);
}

void sub_189F91AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void stateMachineDebugger_block_invoke(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("OOPRename", &stateMachineDebugger_block_invoke___s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *a2;
      v12 = v10;
      v13 = [v11 sessionIdentifier];
      v14 = NSStringFromSessionState(a3);
      v15 = NSStringFromSessionEvent(a5);
      v16 = NSStringFromSessionState(a4);
      v17 = 138413058;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "[%@] Transitioning state: %@ -(%@)-> %@", &v17, 0x2Au);
    }
  }
}

__CFString *NSStringFromSessionState(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7121930[a1 - 1];
  }
}

__CFString *NSStringFromSessionEvent(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7121970[a1];
  }
}

void stateMachineDebugger_block_invoke_2(uint64_t a1, void **a2, uint64_t a3, unint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("OOPRename", &stateMachineDebugger_block_invoke_2___s_category);
  if (*CategoryCachedImpl)
  {
    v8 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a2;
      v10 = v8;
      v11 = [v9 sessionIdentifier];
      v12 = NSStringFromSessionState(a3);
      v13 = NSStringFromSessionEvent(a4);
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "[%@] Failed to transition from state %@ with event %@.", &v14, 0x20u);
    }
  }
}

void sessionDidStartInRenamerHandler_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  v4 = v2;
  if ([v3 _isServerSide])
  {
    [v3 _server_sessionDidStartInRenamer:v4];
  }

  else
  {
    [v3 _client_sessionDidStartInRenamer:v4];
  }
}

void sessionDidEndHandler_block_invoke_4(uint64_t a1, id *a2)
{
  v2 = *a2;
  if ([v2 _isServerSide])
  {
    [v2 _server_sessionDidEnd];
  }

  else
  {
    [v2 _client_sessionDidEnd];
  }
}

void willBeginRenamingHandler_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 24);
  v5 = *(a2 + 16);
  v7 = v3;
  if ([v7 _isServerSide])
  {
    [v7 _server_willBeginRenamingWithText:v5 selectedRange:v4];
  }

  else
  {
    [v7 _client_willBeginRenamingWithText:v5 selectedRange:v4];
  }
  v6 = ;

  *(a2 + 16) = v6;
  *(a2 + 24) = v4;
}

uint64_t shouldEndEditingHandler_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 16);
  v5 = v3;
  if ([v5 _isServerSide])
  {
    v6 = [v5 _server_textFieldShouldEndEditingWithText:v4];
  }

  else
  {
    v6 = [v5 _client_textFieldShouldEndEditingWithText:v4];
  }

  v7 = v6;

  *(a2 + 33) = v7;
  if (v7)
  {
    v8 = 5;
  }

  else
  {
    v8 = 3;
  }

  return v8;
}

void didEndEditingHandler_block_invoke_7(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = v2;
  if ([v4 _isServerSide])
  {
    [v4 _server_textFieldDidEndEditingWithText:v3];
  }

  else
  {
    [v4 _client_textFieldDidEndEditingWithText:v3];
  }
}

void cancellationHandler_block_invoke_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *a2;
  if ([v3 _isServerSide])
  {
    [v3 _server_cancelSessionAndNotify:v2];
  }

  else
  {
    [v3 _client_cancelSessionAndNotify:v2];
  }
}

void fileRenameDidFailHandler_block_invoke_9(uint64_t a1, uint64_t a2)
{
  v6 = *a2;
  v3 = *(a2 + 40);
  v4 = *(a2 + 16);
  v5 = v3;
  if ([v6 _isServerSide])
  {
    [v6 _server_fileRenameDidFail:v5 proposedName:v4];
  }

  else
  {
    [v6 _client_fileRenameDidFail:v5 proposedName:v4];
  }
}

void fileRenameDidEndHandler_block_invoke_10(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = a2[6];
  v4 = v2;
  if ([v4 _isServerSide])
  {
    [v4 _server_fileRenameDidEnd:v3];
  }

  else
  {
    [v4 _client_fileRenameDidEnd:v3];
  }
}

uint64_t fileRenameDynamicTransition_block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_UIApplicationProcessIsOverlayUI())
  {
    if (a3 == 6)
    {
      return 6;
    }
  }

  else if (a3 == 2)
  {
    return 6;
  }

  return 0;
}

id getFPSandboxingURLWrapperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_3_18;
  v7 = _MergedGlobals_3_18;
  if (!_MergedGlobals_3_18)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFPSandboxingURLWrapperClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getFPSandboxingURLWrapperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189F92E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189F944C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_189F946C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189F94950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  _Block_object_dispose((v17 - 80), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getFPSandboxingURLWrapperClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49A378)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __FileProviderLibraryCore_block_invoke_3;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71218E8;
    v8 = 0;
    qword_1ED49A378 = _sl_dlopen();
  }

  if (!qword_1ED49A378)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UINavigationBarTitleRenamerRemoteSession.m" lineNumber:47 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("FPSandboxingURLWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFPSandboxingURLWrapperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UINavigationBarTitleRenamerRemoteSession.m" lineNumber:48 description:{@"Unable to find class %s", "FPSandboxingURLWrapper"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_3_18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FileProviderLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  qword_1ED49A378 = result;
  return result;
}

Class __getDOCFileRenamingSupportClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49A388)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DocumentManagerLibraryCore_block_invoke_1;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7121900;
    v8 = 0;
    qword_1ED49A388 = _sl_dlopen();
  }

  if (!qword_1ED49A388)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DocumentManagerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UINavigationBarTitleRenamerRemoteSession.m" lineNumber:43 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("DOCFileRenamingSupport");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDOCFileRenamingSupportClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UINavigationBarTitleRenamerRemoteSession.m" lineNumber:44 description:{@"Unable to find class %s", "DOCFileRenamingSupport"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49A380 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DocumentManagerLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1ED49A388 = result;
  return result;
}

Class __getDOCRenameSupportClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49A398)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DocumentManagerCoreLibraryCore_block_invoke_1;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7121918;
    v8 = 0;
    qword_1ED49A398 = _sl_dlopen();
  }

  if (!qword_1ED49A398)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DocumentManagerCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UINavigationBarTitleRenamerRemoteSession.m" lineNumber:40 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("DOCRenameSupport");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDOCRenameSupportClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UINavigationBarTitleRenamerRemoteSession.m" lineNumber:41 description:{@"Unable to find class %s", "DOCRenameSupport"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49A390 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DocumentManagerCoreLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1ED49A398 = result;
  return result;
}

__CFString *sensorActivityScreenIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ([v1 _isEmbeddedScreen] & 1) != 0 || (objc_msgSend(v2, "_isCarScreen") & 1) != 0)
  {
    v3 = &stru_1EFB14550;
  }

  else
  {
    v3 = [v2 _displayID];
  }

  return v3;
}

void sub_189F95C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UIGetUIStatusBarForcedMode()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    return -1;
  }

  v2 = _UIInternalPreference_UIStatusBarForcedMode;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_UIStatusBarForcedMode)
  {
    return -1;
  }

  while (v0 >= v2)
  {
    _UIInternalPreferenceSync(v0, &_UIInternalPreference_UIStatusBarForcedMode, @"UIStatusBarForcedMode", _UIInternalPreferenceUpdateInteger);
    v2 = _UIInternalPreference_UIStatusBarForcedMode;
    result = -1;
    if (v0 == _UIInternalPreference_UIStatusBarForcedMode)
    {
      return result;
    }
  }

  return qword_1EA95E6D8;
}

void sub_189F990C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189F995DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void _UITextLayoutDrawRangeInContext(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 location];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___UITextLayoutDrawRangeInContext_block_invoke;
  v11[3] = &unk_1E7121CA0;
  v12 = v6;
  v13 = v5;
  v14 = a3;
  v8 = v5;
  v9 = v6;
  v10 = [v8 enumerateTextLayoutFragmentsFromLocation:v7 options:4 usingBlock:v11];
}

id _traitCollectionByFlooringContentSizeCategoryToLarge(void *a1)
{
  v1 = a1;
  v2 = [v1 preferredContentSizeCategory];
  if (UIContentSizeCategoryCompareToCategory(v2, &cfstr_Uictcontentsiz_5.isa) == NSOrderedAscending)
  {
    v3 = @"UICTContentSizeCategoryL";

    v2 = v3;
  }

  v4 = objc_opt_self();
  v5 = [v1 traitCollectionByReplacingObject:v2 forTrait:v4];

  return v5;
}

double _accessibilityMaximumWidthWhenUsingAccessibilitySizes(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 screen];
  }

  else
  {
    [objc_opt_self() mainScreen];
  }
  v3 = ;
  [v3 bounds];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = _UISolariumEnabled();
  v8 = 64.0;
  if (v7)
  {
    v8 = 36.0;
  }

  v9 = v6 - v8;
  v10 = +[UIDevice currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (v2 || (+[UIWindow _applicationKeyWindow], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [v2 bounds];
      if (v12 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      v15 = _UISolariumEnabled();
      v16 = 64.0;
      if (v15)
      {
        v16 = 36.0;
      }

      v17 = v14 - v16;
      if (v9 >= v17)
      {
        v9 = v17;
      }
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v19 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1, 0];
      v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v30;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v30 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v29 + 1) + 8 * i) bounds];
            if (v24 >= v25)
            {
              v26 = v25;
            }

            else
            {
              v26 = v24;
            }

            if (_UISolariumEnabled())
            {
              v27 = 36.0;
            }

            else
            {
              v27 = 64.0;
            }

            v28 = v26 - v27;
            if (v9 >= v28)
            {
              v9 = v28;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v21);
      }

      v2 = 0;
    }

    if (v9 > 402.0)
    {
      v9 = 402.0;
    }
  }

  if (v9 < 270.0)
  {
    v9 = 270.0;
  }

  return v9;
}

void sub_189F9EA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189FA0E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

void sub_189FA2FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_189FAB618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _UIFocusBehaviorSetOverrideFocusSystemEnabled(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 _focusSystemSceneComponent];
  [v6 setOverrideFocusSystemEnabled:a1 withIdentifier:v5];
}

uint64_t _UIFocusBehaviorGetOverrideFocusSystemEnabled(void *a1)
{
  v1 = [a1 _focusSystemSceneComponent];
  v2 = [v1 isOverrideFocusSystemEnabled];

  return v2;
}

void sub_189FAF488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189FAFB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id UIStatusBarLocalizedNotChargingString()
{
  v0 = _UIKitBundle();
  v1 = [v0 localizedStringForKey:@"Not Charging" value:@"Not Charging" table:@"Localizable"];

  return v1;
}

id UIStatusBarLocalizedRecordingStringForAppName(void *a1)
{
  v1 = a1;
  v2 = _UIKitBundle();
  v3 = [v2 localizedStringForKey:@"Recording" value:@"Recording" table:@"Localizable"];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v1, v3];

  return v4;
}

id UIStatusBarCreateHUDBatteryImage(void *a1, void *a2, int a3, int a4, int a5, int a6, double a7, double a8)
{
  v86[2] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a2;
  v15 = [UIImage kitImageNamed:@"Black_BatteryDrainingBG"];
  v16 = [off_1E70ECC18 systemFontOfSize:10.0];
  v17 = [UIImageSymbolConfiguration configurationWithFont:v16];

  v18 = [UIImage systemImageNamed:@"bolt.fill" withConfiguration:v17];
  v19 = +[UIColor blackColor];
  v20 = [v14 isEqual:v19];

  if ((v20 & 1) == 0)
  {
    v21 = [v15 _flatImageWithColor:v14];

    v22 = [v18 _flatImageWithColor:v14];

    v18 = v22;
    v15 = v21;
  }

  [v15 size];
  v24 = 75.0 / v23;
  [v15 size];
  v26 = v25;
  v28 = v27;
  if (a3)
  {
    [v18 size];
    v26 = v26 + v29 + 3.0;
  }

  v30 = v28 * v24;
  v31 = v24 * v26;
  v32 = v30;
  _UIGraphicsBeginImageContextWithOptions(0, 0, v24 * v26, v30, a8);
  [v15 size];
  v34 = v24 * v33;
  [v15 size];
  [v15 drawInRect:{0.0, 0.0, v34, v24 * v35}];
  if (a3)
  {
    if (a5)
    {
      v36 = [v18 imageWithHorizontallyFlippedOrientation];

      v18 = v36;
    }

    [v15 size];
    v38 = v37 + 3.0;
    [v15 size];
    v40 = v39;
    [v18 size];
    v42 = v24 * ((v40 - v41) * 0.5);
    [v18 size];
    v44 = v24 * v43;
    [v18 size];
    if (a4)
    {
      v46 = 0.2;
    }

    else
    {
      v46 = 1.0;
    }

    [v18 drawInRect:0 blendMode:v24 * v38 alpha:{v42, v44, v24 * v45, v46}];
  }

  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v48 = 0;
  }

  else
  {
    v48 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextScaleCTM(v48, v24, v24);
  [v15 size];
  v50 = v49;
  v52 = v51;
  if (a8 <= 2.5)
  {
    v53 = 1.0;
  }

  else
  {
    v53 = 1.33333333;
  }

  v54 = v13;
  v55 = GetContextStack(0);
  if (*v55 < 1)
  {
    v56 = 0;
  }

  else
  {
    v56 = v55[3 * (*v55 - 1) + 1];
  }

  CGContextSaveGState(v56);
  [v54 setFill];

  v57 = 6.33333333;
  if (a8 <= 2.5)
  {
    v57 = 6.5;
  }

  v58 = v50 - v57;
  v59 = v52 + -4.0;
  v88.origin.x = 2.0;
  v88.origin.y = 2.0;
  v88.size.width = v58;
  v88.size.height = v59;
  v60 = CGPathCreateWithRoundedRect(v88, v53, v53, 0);
  if (v60)
  {
    v61 = v60;
    CGContextAddPath(v56, v60);
    CGContextClip(v56);
    CGPathRelease(v61);
  }

  v62 = v58 * a7;
  if (v58 * a7 < 1.0)
  {
    v62 = 1.0;
  }

  UIRoundToScale(v62, a8);
  v89.size.width = v63;
  v89.origin.x = 2.0;
  v89.origin.y = 2.0;
  v89.size.height = v59;
  UIRectFillUsingBlendMode(v89, kCGBlendModeNormal);
  CGContextRestoreGState(v56);
  v64 = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();
  if (a5)
  {
    v65 = [v64 imageWithHorizontallyFlippedOrientation];

    v64 = v65;
  }

  if (a6)
  {
    v66 = MEMORY[0x1E696ADA0];
    v67 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
    v68 = [v66 localizedStringFromNumber:v67 numberStyle:3];

    v69 = objc_alloc(MEMORY[0x1E696AAB0]);
    v85[0] = *off_1E70EC918;
    v70 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
    v85[1] = *off_1E70EC920;
    v86[0] = v70;
    v86[1] = v14;
    v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];
    v72 = [v69 initWithString:v68 attributes:v71];

    [v72 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
    v74 = v73;
    v76 = v75;
    v77 = fmax(v31, v73);
    v78 = v32 + 8.0 + v75;
    v79 = round((v77 - v31) * 0.5 + 0.0);
    v90.origin.y = 0.0;
    v90.origin.x = v79;
    v90.size.width = v31;
    v90.size.height = v32;
    v83 = CGRectGetMaxY(v90) + 8.0;
    _UIGraphicsBeginImageContextWithOptions(0, 0, v77, v78, a8);
    [v64 drawInRect:{v79, 0.0, v31, v32}];
    [v72 drawWithRect:1 options:0 context:{round((v77 - v74) * 0.5 + 0.0), v83, v74, v76}];
    v80 = _UIGraphicsGetImageFromCurrentImageContext(0);

    UIGraphicsEndImageContext();
    v64 = v80;
  }

  return v64;
}

id _UIUpdateInputTimingProfilePath(const char *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  makeProfilePath(a1, v4);
  v2 = [v1 stringWithCString:v4 encoding:4];

  return v2;
}

uint64_t _combineParallel(uint64_t result, uint64_t a2)
{
  if (result != a2 && result != 3)
  {
    v2 = 2;
    v4 = result == 1 || a2 == 1;
    if (a2 == 2)
    {
      v4 = 2;
    }

    if (result != 2)
    {
      v2 = v4;
    }

    if (a2 == 3)
    {
      return 3;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

id _cachePath()
{
  if (qword_1ED4A0AE0 != -1)
  {
    dispatch_once(&qword_1ED4A0AE0, &__block_literal_global_539);
  }

  v1 = qword_1ED4A0AD8;

  return v1;
}

void ___cachePath_block_invoke()
{
  v3 = _cacheBasePath();
  v0 = _cacheVersionPathComponent();
  v1 = [v3 stringByAppendingPathComponent:v0];
  v2 = qword_1ED4A0AD8;
  qword_1ED4A0AD8 = v1;
}

id _cacheBasePath()
{
  if (qword_1ED4A0AF0 != -1)
  {
    dispatch_once(&qword_1ED4A0AF0, &__block_literal_global_31_4);
  }

  v1 = qword_1ED4A0AE8;

  return v1;
}

id _cacheVersionPathComponent()
{
  if (qword_1ED4A0B00 != -1)
  {
    dispatch_once(&qword_1ED4A0B00, &__block_literal_global_42_0);
  }

  v1 = qword_1ED4A0AF8;

  return v1;
}

void ___cacheBasePath_block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AEC0];
  v4[0] = CPSharedResourcesDirectory();
  v4[1] = @"Library";
  v4[2] = @"Caches";
  v4[3] = @"com.apple.UIStatusBar";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v2 = [v0 pathWithComponents:v1];
  v3 = qword_1ED4A0AE8;
  qword_1ED4A0AE8 = v2;
}

void ___cacheVersionPathComponent_block_invoke()
{
  v4 = 0;
  v0 = MGCopyAnswerWithError();
  v1 = qword_1ED4A0AF8;
  qword_1ED4A0AF8 = v0;

  if (!qword_1ED4A0AF8)
  {
    v2 = *(__UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0B08) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Could not retrieve build version number.", v3, 2u);
    }
  }
}

void ___cacheVersion_block_invoke()
{
  v0 = _cacheVersionPathComponent();
  qword_1ED4A0B10 = [v0 hash];
}

void ___cleanOutOldCacheFilesIfNeeded_block_invoke()
{
  if ([UIApp _isSpringBoard])
  {
    v0 = dispatch_get_global_queue(-32768, 0);
    dispatch_async(v0, &__block_literal_global_51_0);
  }
}

void ___cleanOutOldCacheFilesIfNeeded_block_invoke_2()
{
  v34 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0B28);
  if (*CategoryCachedImpl)
  {
    v26 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Checking for obsolete status bar cache items to delete.", buf, 2u);
    }
  }

  v1 = _cacheBasePath();
  v2 = _cacheVersionPathComponent();
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v29 = v1;
  v4 = [v3 enumeratorAtPath:v1];

  v5 = [v4 nextObject];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
    *&v6 = 138412290;
    v28 = v6;
    do
    {
      [v4 skipDescendants];
      if (([v7 isEqualToString:v2] & 1) == 0)
      {
        v10 = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0B30);
        if (*v10)
        {
          v18 = *(v10 + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v28;
            *v32 = v7;
            _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Deleting obsolete status bar cache item: %@", buf, 0xCu);
          }
        }

        v11 = _cacheBasePath();
        v12 = [v11 stringByAppendingPathComponent:v7];

        v13 = [MEMORY[0x1E696AC08] defaultManager];
        v30 = 0;
        v14 = [v13 removeItemAtPath:v12 error:&v30];
        v15 = v30;

        if (v14)
        {
          ++v8;
        }

        else
        {
          ++v9;
          v16 = *(__UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0B38) + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *v32 = v12;
            *&v32[8] = 2112;
            v33 = v15;
            _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Could not remove obsolete status bar cache item at “%@”, error: %@", buf, 0x16u);
          }
        }
      }

      v17 = [v4 nextObject];

      v7 = v17;
    }

    while (v17);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (v8 | v9)
  {
    v19 = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0B40);
    v20 = v29;
    if (*v19)
    {
      v21 = *(v19 + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v32 = v8;
        *&v32[4] = 1024;
        *&v32[6] = v9;
        v22 = "Finished deleting obsolete cache items. %d items deleted; %d items could not be deleted.";
        v23 = v21;
        v24 = 14;
LABEL_26:
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
      }
    }
  }

  else
  {
    v25 = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0B48);
    v20 = v29;
    if (*v25)
    {
      v27 = *(v25 + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v22 = "Finished deleting obsolete cache items. No obsolete items found.";
        v23 = v27;
        v24 = 2;
        goto LABEL_26;
      }
    }
  }
}

id _UIUserInterfaceStyleArbiterLogger()
{
  if (qword_1ED4A0B58 != -1)
  {
    dispatch_once(&qword_1ED4A0B58, &__block_literal_global_540);
  }

  v1 = _MergedGlobals_1292;

  return v1;
}

void sub_189FC1990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189FC2CC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_189FC34A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __BiomeStreamsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED4A0B70 = result;
  return result;
}

void __getBMDisplayAppearanceClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BMDisplayAppearance");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4A0B78 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMDisplayAppearanceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIUserInterfaceStyleArbiter.m" lineNumber:34 description:{@"Unable to find class %s", "BMDisplayAppearance"}];

    __break(1u);
  }
}

void *BiomeLibraryLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BiomeLibraryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71224F0;
    v6 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = BiomeLibraryLibraryCore_frameworkLibrary;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeLibraryLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIUserInterfaceStyleArbiter.m" lineNumber:33 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBiomeLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibrary();
  result = dlsym(v2, "BiomeLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED4A0B80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_189FC4798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _stickersLog()
{
  if (qword_1ED499478 != -1)
  {
    dispatch_once(&qword_1ED499478, &__block_literal_global_248_2);
  }

  v1 = _MergedGlobals_1_26;

  return v1;
}

id getCKBrowserViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED499480;
  v7 = qword_1ED499480;
  if (!qword_1ED499480)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKBrowserViewControllerClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getCKBrowserViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189FC4EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189FC6500(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void ___stickersLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "Stickers");
  v1 = _MergedGlobals_1_26;
  _MergedGlobals_1_26 = v0;
}

Class __getCKBrowserViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED499488)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ChatKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71225F8;
    v8 = 0;
    qword_1ED499488 = _sl_dlopen();
  }

  if (!qword_1ED499488)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ChatKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIStickerPickerViewController.m" lineNumber:28 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CKBrowserViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKBrowserViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIStickerPickerViewController.m" lineNumber:29 description:{@"Unable to find class %s", "CKBrowserViewController"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED499480 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ChatKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED499488 = result;
  return result;
}

void sub_189FC9CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189FC9E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t UIStatusBarDateItemCanBeEnabledOnPad(void *a1)
{
  v1 = [a1 rawData];
  v2 = _UIKitUserDefaults();
  if ([v2 BOOLForKey:@"StatusBarHidesDate"])
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 1);
  }

  return v3 & 1;
}

uint64_t UIStatusBarBluetoothItemCanBeEnabled(void *a1)
{
  v1 = [a1 rawData];
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 15);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t UIStatusBarDoubleHeightItemCanBeEnabled(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[UIDevice currentDevice];
  if ([v5 userInterfaceIdiom] == 1)
  {
    v6 = [v3 doubleHeightStatus];
    if ([v6 length])
    {
      v7 = [v4 isDoubleHeight];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t UIStatusBarActivityItemCanBeEnabled(void *a1)
{
  v1 = [a1 rawData];
  if (*(v1 + 32) != 1)
  {
    return 0;
  }

  v2 = v1;
  if (!*(v1 + 2273))
  {
    return 1;
  }

  v3 = +[UIApplication displayIdentifier];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v2 + 2273 encoding:4];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 hasPrefix:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t _UILegibilityStyleFromStatusBarStyle(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t _UIStatusBarStyleFromLegibilityStyle(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

void sub_189FD0BDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void _UIAppGameControllerProcessDPad(double *a1, double *a2, void *a3, _BYTE *a4, _BYTE *a5, double a6)
{
  v33 = a3;
  [v33 _hidEvent];
  v11 = BKSHIDEventGetBaseAttributes();
  v12 = [v11 contextID];

  v13 = _UIAppGameControllerPressInfoForState(0, 1, v12, a1[1], a2[1], a6);
  v14 = _UIAppGameControllerPressInfoForState(1, 1, v12, a1[2], a2[2], a6);
  v15 = _UIAppGameControllerPressInfoForState(2, 1, v12, a1[3], a2[3], a6);
  v16 = _UIAppGameControllerPressInfoForState(3, 1, v12, a1[4], a2[4], a6);
  if (v13)
  {
    [UIApp _prepareButtonEvent:v33 withPressInfo:v13];
  }

  if (v14)
  {
    [UIApp _prepareButtonEvent:v33 withPressInfo:v14];
  }

  if (v15)
  {
    [UIApp _prepareButtonEvent:v33 withPressInfo:v15];
  }

  if (v16)
  {
    [UIApp _prepareButtonEvent:v33 withPressInfo:v16];
  }

  if (a4 && (v13 || v14 || v15 || v16))
  {
    *a4 = 1;
  }

  v17 = v13;
  v18 = _UIGetGameControllerMinimumForce();
  if (([v17 phase] || (objc_msgSend(v17, "force"), v19 > v18)) && objc_msgSend(v17, "phase") != 3)
  {
    v20 = [v17 phase];

    if (v20 != 4)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v21 = v14;
  v22 = _UIGetGameControllerMinimumForce();
  if (([v21 phase] || (objc_msgSend(v21, "force"), v23 > v22)) && objc_msgSend(v21, "phase") != 3)
  {
    v24 = [v21 phase];

    if (v24 != 4)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v25 = v15;
  v26 = _UIGetGameControllerMinimumForce();
  if (([v25 phase] || (objc_msgSend(v25, "force"), v27 > v26)) && objc_msgSend(v25, "phase") != 3)
  {
    v28 = [v25 phase];

    if (v28 != 4)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v29 = v16;
  v30 = _UIGetGameControllerMinimumForce();
  v32 = ![v29 phase] && (objc_msgSend(v29, "force"), v31 <= v30) || objc_msgSend(v29, "phase") == 3 || objc_msgSend(v29, "phase") == 4;

  if (a5 && v32)
  {
    *a5 = 1;
  }

LABEL_38:
}

void _UIAppGameControllerProcessShoulders(double *a1, double *a2, void *a3, _BYTE *a4, _BYTE *a5, double a6)
{
  v11 = a3;
  if (a1[25] >= a1[26])
  {
    v12 = a1[25];
  }

  else
  {
    v12 = a1[26];
  }

  if (a2[25] >= a2[26])
  {
    v13 = a2[25];
  }

  else
  {
    v13 = a2[26];
  }

  if (a1[27] >= a1[28])
  {
    v14 = a1[27];
  }

  else
  {
    v14 = a1[28];
  }

  if (a2[27] >= a2[28])
  {
    v15 = a2[27];
  }

  else
  {
    v15 = a2[28];
  }

  v28 = v11;
  [v11 _hidEvent];
  v16 = BKSHIDEventGetBaseAttributes();
  v17 = [v16 contextID];

  v18 = _UIAppGameControllerPressInfoForState(35, 5, v17, v12, v13, a6);
  v19 = _UIAppGameControllerPressInfoForState(34, 5, v17, v14, v15, a6);
  if (v18)
  {
    [UIApp _prepareButtonEvent:v28 withPressInfo:v18];
  }

  if (v19)
  {
    [UIApp _prepareButtonEvent:v28 withPressInfo:v19];
  }

  if (a4 && v18 | v19)
  {
    *a4 = 1;
  }

  v20 = v18;
  v21 = _UIGetGameControllerMinimumForce();
  if (([v20 phase] || (objc_msgSend(v20, "force"), v22 > v21)) && objc_msgSend(v20, "phase") != 3)
  {
    v23 = [v20 phase];

    if (v23 != 4)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v24 = v19;
  v25 = _UIGetGameControllerMinimumForce();
  v27 = ![v24 phase] && (objc_msgSend(v24, "force"), v26 <= v25) || objc_msgSend(v24, "phase") == 3 || objc_msgSend(v24, "phase") == 4;

  if (a5 && v27)
  {
    *a5 = 1;
  }

LABEL_33:
}
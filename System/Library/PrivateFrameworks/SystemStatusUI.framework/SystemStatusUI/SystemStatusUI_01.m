id STUIBackgroundActivityIdentifierForStyleOverride(uint64_t a1)
{
  v3 = 0;
  if (a1 >= 0x200000)
  {
    if (a1 <= 0x7FFFFFFF)
    {
      if (a1 <= 0x3FFFFFF)
      {
        if (a1 < 0x800000)
        {
          if (a1 == 0x200000)
          {
            v4 = MEMORY[0x277D6BC78];
          }

          else
          {
            if (a1 != 0x400000)
            {
              goto LABEL_99;
            }

            v4 = MEMORY[0x277D6BBF8];
          }
        }

        else
        {
          switch(a1)
          {
            case 0x800000:
              v4 = MEMORY[0x277D6BBF0];
              break;
            case 0x1000000:
              v4 = MEMORY[0x277D6BD18];
              break;
            case 0x2000000:
              v4 = MEMORY[0x277D6BC48];
              break;
            default:
              goto LABEL_99;
          }
        }

        goto LABEL_98;
      }

      if (a1 <= 0xFFFFFFF)
      {
        if (a1 == 0x4000000)
        {
          v4 = MEMORY[0x277D6BC40];
        }

        else
        {
          if (a1 != 0x8000000)
          {
            goto LABEL_99;
          }

          v4 = MEMORY[0x277D6BC10];
        }

        goto LABEL_98;
      }

      if (a1 == 0x10000000)
      {
        v4 = MEMORY[0x277D6BD08];
        goto LABEL_98;
      }

      if (a1 == 0x20000000)
      {
        v4 = MEMORY[0x277D6BCB0];
        goto LABEL_98;
      }

      v5 = 0x40000000;
    }

    else
    {
      if (a1 > 0xFFFFFFFFFLL)
      {
        if (a1 > 0x7FFFFFFFFFLL)
        {
          switch(a1)
          {
            case 0x8000000000:
              v4 = MEMORY[0x277D6BD00];
              break;
            case 0x10000000000:
              v4 = MEMORY[0x277D6BCE0];
              break;
            case 0x20000000000:
              v4 = MEMORY[0x277D6BC98];
              break;
            default:
              goto LABEL_99;
          }
        }

        else
        {
          switch(a1)
          {
            case 0x1000000000:
              v4 = MEMORY[0x277D6BBD8];
              break;
            case 0x2000000000:
              v4 = MEMORY[0x277D6BC58];
              break;
            case 0x4000000000:
              v4 = MEMORY[0x277D6BC08];
              break;
            default:
              goto LABEL_99;
          }
        }

        goto LABEL_98;
      }

      if (a1 > 0x1FFFFFFFFLL)
      {
        if (a1 != 0x200000000)
        {
          if (a1 == 0x400000000)
          {
            v4 = MEMORY[0x277D6BCA0];
          }

          else
          {
            if (a1 != 0x800000000)
            {
              goto LABEL_99;
            }

            v4 = MEMORY[0x277D6BCB8];
          }

          goto LABEL_98;
        }

        goto LABEL_73;
      }

      if (a1 == 0x80000000)
      {
        v4 = MEMORY[0x277D6BCE8];
        goto LABEL_98;
      }

      v5 = 0x100000000;
    }

    if (a1 != v5)
    {
      goto LABEL_99;
    }

LABEL_73:
    v4 = MEMORY[0x277D6BCD8];
    goto LABEL_98;
  }

  if (a1 > 1023)
  {
    if (a1 < 0x8000)
    {
      if (a1 <= 4095)
      {
        if (a1 == 1024)
        {
          v4 = MEMORY[0x277D6BC50];
        }

        else
        {
          if (a1 != 2048)
          {
            goto LABEL_99;
          }

          v4 = MEMORY[0x277D6BC00];
        }
      }

      else
      {
        switch(a1)
        {
          case 0x1000:
            v4 = MEMORY[0x277D6BC20];
            break;
          case 0x2000:
            v4 = MEMORY[0x277D6BCF0];
            break;
          case 0x4000:
            v4 = MEMORY[0x277D6BCD0];
            break;
          default:
            goto LABEL_99;
        }
      }
    }

    else if (a1 >= 0x40000)
    {
      switch(a1)
      {
        case 0x40000:
          v4 = MEMORY[0x277D6BBE0];
          break;
        case 0x80000:
          v4 = MEMORY[0x277D6BC30];
          break;
        case 0x100000:
          v4 = MEMORY[0x277D6BCC0];
          break;
        default:
          goto LABEL_99;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x8000:
          v4 = MEMORY[0x277D6BC38];
          break;
        case 0x10000:
          v4 = MEMORY[0x277D6BC28];
          break;
        case 0x20000:
          v4 = MEMORY[0x277D6BD20];
          break;
        default:
          goto LABEL_99;
      }
    }

    goto LABEL_98;
  }

  if (a1 <= 31)
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        v4 = MEMORY[0x277D6BC60];
      }

      else
      {
        if (a1 != 2)
        {
          goto LABEL_99;
        }

        v4 = MEMORY[0x277D6BC70];
      }
    }

    else
    {
      switch(a1)
      {
        case 4:
          v4 = MEMORY[0x277D6BCA8];
          break;
        case 8:
          v4 = MEMORY[0x277D6BCF8];
          break;
        case 16:
          v4 = MEMORY[0x277D6BC68];
          break;
        default:
          goto LABEL_99;
      }
    }

    goto LABEL_98;
  }

  if (a1 <= 127)
  {
    if (a1 == 32)
    {
      v4 = MEMORY[0x277D6BCC8];
      goto LABEL_98;
    }

    if (a1 != 64)
    {
      goto LABEL_99;
    }
  }

  else if (a1 != 128)
  {
    if (a1 == 256)
    {
      v4 = MEMORY[0x277D6BBE8];
    }

    else
    {
      if (a1 != 512)
      {
        goto LABEL_99;
      }

      v4 = MEMORY[0x277D6BD10];
    }

    goto LABEL_98;
  }

  v4 = MEMORY[0x277D6BC80];
LABEL_98:
  v3 = *v4;
LABEL_99:

  return v3;
}

id STUIBackgroundActivityIdentifiersForStyleOverrides(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __STUIBackgroundActivityIdentifiersForStyleOverrides_block_invoke;
  v11 = &unk_279D37E00;
  v3 = v2;
  v12 = v3;
  v4 = v9;
  if (a1)
  {
    v5 = 0;
    v13 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v10)(v4);
        if (v13)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  return v3;
}

void __STUIBackgroundActivityIdentifiersForStyleOverrides_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = STUIBackgroundActivityIdentifierForStyleOverride(a2);
  [v2 bs_safeAddObject:v3];
}

void _UIDebugShowLayoutItem(void *a1, void *a2)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 _ui_view];
  if (v5 == v3 || (objc_getAssociatedObject(v3, &_UIDebugView), v6 = objc_claimAutoreleasedReturnValue(), v5, (v5 = v6) != 0))
  {
    if (v4)
    {
LABEL_4:
      [v4 alphaComponent];
      v8 = [v4 colorWithAlphaComponent:v7 * 0.25];
      [v5 setBackgroundColor:v8];

      [v5 _currentScreenScale];
      v10 = 1.0 / v9;
      v11 = [v5 layer];
      [v11 setBorderWidth:v10];

      v12 = [v4 CGColor];
      v13 = [v5 layer];
      [v13 setBorderColor:v12];

      goto LABEL_9;
    }
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setUserInteractionEnabled:0];
    objc_setAssociatedObject(v3, &_UIDebugView, v5, 0);
    v28 = [v5 topAnchor];
    v27 = [v3 topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v29[0] = v26;
    v25 = [v5 leftAnchor];
    v24 = [v3 leftAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v29[1] = v23;
    v14 = [v5 rightAnchor];
    v15 = [v3 rightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v29[2] = v16;
    v17 = [v5 bottomAnchor];
    v18 = [v3 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v29[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];

    v21 = [v3 _ui_superview];
    [v21 addSubview:v5];

    [MEMORY[0x277CCAAD0] activateConstraints:v20];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  if (v5 == v3)
  {
    [v5 setBackgroundColor:0];
    v22 = [v5 layer];
    [v22 setBorderColor:0];
  }

  else
  {
    [v5 removeFromSuperview];
    objc_setAssociatedObject(v3, &_UIDebugView, 0, 0);
  }

LABEL_9:
}

id __UIKitUserDefaults()
{
  if (qword_280C1E730 != -1)
  {
    dispatch_once(&qword_280C1E730, &__block_literal_global_0);
  }

  v1 = qword_280C1E728;

  return v1;
}

id _reorderedPlacementsFromGroupForLegacyLayout(void *a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___reorderedPlacementsFromGroupForLegacyLayout_block_invoke;
  v9[3] = &unk_279D38010;
  v10 = v5;
  v11 = a2;
  v6 = v5;
  v7 = [a1 sortedArrayUsingComparator:v9];

  return v7;
}

void sub_26C512BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C513880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
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

void sub_26C51B03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C51C294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 208), 8);
  _Unwind_Resume(a1);
}

__CFString *STUIStatusBarDisplayItemEnabilityStatusDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279D383E8[a1];
  }
}

__CFString *STUIStatusBarDisplayItemVisibilityStatusDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279D38408[a1];
  }
}

void sub_26C51E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C51EEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C521440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Unwind_Resume(a1);
}

void sub_26C5224E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C5230E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C529138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C52B014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

id STUIStatusBarDefaultAnimation(void *a1, void *a2, __int128 *a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__3;
  v30[4] = __Block_byref_object_dispose__3;
  v31 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x4010000000;
  v27[3] = &unk_26C58BD13;
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v28 = *MEMORY[0x277CBF3A0];
  v29 = v13;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __STUIStatusBarDefaultAnimation_block_invoke;
  v20[3] = &unk_279D387E8;
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
  v16 = [STUIStatusBarAnimation animationWithBlock:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __STUIStatusBarDefaultAnimation_block_invoke_3;
  v19[3] = &unk_279D38588;
  v19[4] = v27;
  [v16 setPrepareBlock:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __STUIStatusBarDefaultAnimation_block_invoke_4;
  v18[3] = &unk_279D386F0;
  v18[4] = v30;
  STUIStatusBarAddDefaultAnimationReposition(v11, v16, v12, v18);
  [v16 setDelaysAnimatingItems:1];
  [v16 setPriority:-100];
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v30, 8);

  return v16;
}

void sub_26C52C69C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void __STUIStatusBarDefaultAnimation_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [a2 type];
  v10 = [v7 region];
  v11 = [v10 identifier];
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if (v9 == 2)
  {
    [v7 setAbsoluteFrame:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
    v14 = MEMORY[0x277D75D18];
    v15 = *(a1 + 104);
LABEL_7:
    v18 = *(a1 + 112);
    goto LABEL_8;
  }

  [v7 setAlpha:0.0];
  v16 = *(a1 + 64);
  v27[0] = *(a1 + 48);
  v27[1] = v16;
  v27[2] = *(a1 + 80);
  [v7 setTransform:v27];
  v14 = MEMORY[0x277D75D18];
  v17 = 104;
  if (v9 == 1)
  {
    v17 = 96;
  }

  v15 = *(a1 + v17);
  if (v9 != 1)
  {
    goto LABEL_7;
  }

  v18 = 0.3;
LABEL_8:
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __STUIStatusBarDefaultAnimation_block_invoke_2;
  v21[3] = &unk_279D387C0;
  v22 = v7;
  v23 = v9;
  v19 = *(a1 + 64);
  v24 = *(a1 + 48);
  v25 = v19;
  v26 = *(a1 + 80);
  v20 = v7;
  [v14 animateWithDuration:0 delay:v21 options:v8 animations:v15 completion:v18];
}

uint64_t __STUIStatusBarDefaultAnimation_block_invoke_2(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = 0.0;
  if (*(v3 + 8) == 1)
  {
    v4 = 1.0;
  }

  [v2 setAlpha:v4];
  v5 = (a1 + 48);
  v6 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v5 = MEMORY[0x277CBF2C0];
  }

  v7 = v5[1];
  v9[0] = *v5;
  v9[1] = v7;
  v9[2] = v5[2];
  return [v6 setTransform:v9];
}

uint64_t __STUIStatusBarDefaultAnimation_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 type] == 2)
  {
    v6 = [v5 region];
    v7 = [v6 isEnabled];

    if (v7)
    {
      [v5 absoluteFrame];
      v8 = *(*(a1 + 32) + 8);
      v8[4] = v9;
      v8[5] = v10;
      v8[6] = v11;
      v8[7] = v12;
      v13 = 1;
      [v5 setFloating:1];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t __STUIStatusBarDefaultAnimation_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 region];
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*(*(*(a1 + 32) + 8) + 40)];

  return v5;
}

id STUIStatusBarDefaultScaleAnimation(void *a1, void *a2, CGFloat a3)
{
  v5 = a2;
  v6 = a1;
  CGAffineTransformMakeScale(&v9, a3, a3);
  v7 = STUIStatusBarDefaultAnimation(v6, v5, &v9, 0.15, 0.1, 0.0);

  return v7;
}

id STUIStatusBarBSSettingsRepositionAnimation(void *a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = a2;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __STUIStatusBarBSSettingsRepositionAnimation_block_invoke;
  v17[3] = &unk_279D388D0;
  v18 = v9;
  v19 = a3;
  v10 = v9;
  v11 = a5;
  v12 = a4;
  v13 = a1;
  v14 = _Block_copy(v17);
  v15 = STUIStatusBarInternalRepositionAnimation(v13, a3, v14, v12, v11);

  return v15;
}

void __STUIStatusBarBSSettingsRepositionAnimation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CF0B70];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __STUIStatusBarBSSettingsRepositionAnimation_block_invoke_2;
  v14[3] = &unk_279D38810;
  v15 = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __STUIStatusBarBSSettingsRepositionAnimation_block_invoke_3;
  v12[3] = &unk_279D38810;
  v10 = v6;
  v11 = v5;
  [v7 tryAnimatingWithSettings:v8 fromCurrentState:v9 actions:v14 completion:v12];
}

void STUIStatusBarGetLeadingAndTrailingParts(int a1, double *a2, double *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (CGRectIsEmpty(*&a4) || (v19.origin.x = a4, v19.origin.y = a5, v19.size.width = a6, v19.size.height = a7, CGRectGetMinX(v19) > a8) || (v20.origin.x = a4, v20.origin.y = a5, v20.size.width = a6, v20.size.height = a7, CGRectGetMaxX(v20) < a8))
  {
    if (a2)
    {
      *a2 = 0.0;
    }

    v16 = 0.0;
    if (a3)
    {
LABEL_7:
      *a3 = v16;
    }
  }

  else
  {
    v21.origin.x = a4;
    v21.origin.y = a5;
    v21.size.width = a6;
    v21.size.height = a7;
    v17 = a8 - CGRectGetMinX(v21);
    v22.origin.x = a4;
    v22.origin.y = a5;
    v22.size.width = a6;
    v22.size.height = a7;
    v16 = CGRectGetMaxX(v22) - a8;
    if (a2)
    {
      if (a1)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      *a2 = v18;
    }

    if (a3)
    {
      if (a1)
      {
        v16 = v17;
      }

      goto LABEL_7;
    }
  }
}

id _STUIStatusBar_BackgroundActivity_Log()
{
  if (_STUIStatusBar_BackgroundActivity_Log_onceToken != -1)
  {
    dispatch_once(&_STUIStatusBar_BackgroundActivity_Log_onceToken, &__block_literal_global_4);
  }

  v1 = _STUIStatusBar_BackgroundActivity_Log___StatusBarBackground_LOG;

  return v1;
}

id UIStatusBarCreateHUDDualSignalView(void *a1, void *a2, double a3, double a4, CGFloat a5)
{
  v9 = a2;
  v10 = a1;
  [v10 size];
  v12 = v11;
  [v9 size];
  if (v12 >= v13)
  {
    v13 = v12;
  }

  v14 = v13 * 3.0;
  [v10 size];
  v16 = v15;
  [v9 size];
  v33.height = (v16 + v17 + 3.0) * 3.0;
  v33.width = v14;
  UIGraphicsBeginImageContextWithOptions(v33, 0, a5);
  [v10 size];
  v19 = (v14 - v18 * 3.0) * 0.5;
  [v10 size];
  v21 = v20 * 3.0;
  [v10 size];
  [v10 drawInRect:0 blendMode:v19 alpha:{0.0, v21, v22 * 3.0, a3}];
  [v9 size];
  v24 = (v14 - v23 * 3.0) * 0.5;
  [v10 size];
  v26 = v25;

  [v9 size];
  v28 = v27 * 3.0;
  [v9 size];
  [v9 drawInRect:0 blendMode:v24 alpha:{(v26 + 3.0) * 3.0, v28, v29 * 3.0, a4}];

  v30 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v30;
}

id DashBoardFrameworkBundle()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v1 = [v0 objectAtIndex:0];

  v2 = [GSSystemRootDirectory() stringByAppendingPathComponent:v1];
  v3 = [v2 stringByAppendingPathComponent:@"PrivateFrameworks/DashBoard.framework"];

  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:v3];

  return v4;
}

id STUILegacyDataFromData(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277D76298]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v1 existingEntryKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v1 valueForKey:v8];
        v10 = STUILegacyDataEntryFromDataEntry(v9);
        [v2 setValue:v10 forKey:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

id STUILegacyDataEntryFromDataEntry(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_9;
  }

  if (![v1 isMemberOfClass:objc_opt_class()])
  {
    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v2 = [MEMORY[0x277D762C0] entryWithBoolValue:{objc_msgSend(v1, "BOOLValue")}];
      goto LABEL_7;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v5 = MEMORY[0x277D76308];
      v6 = [v1 stringValue];
      v7 = [v5 entryWithStringValue:v6];
LABEL_14:
      v3 = v7;
LABEL_15:

      goto LABEL_8;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v3 = objc_alloc_init(MEMORY[0x277D762E8]);
      [v3 setRawValue:{objc_msgSend(v1, "rawValue")}];
      [v3 setDisplayValue:{objc_msgSend(v1, "displayValue")}];
      [v3 setDisplayRawValue:{objc_msgSend(v1, "displayRawValue")}];
      goto LABEL_8;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v8 = MEMORY[0x277D762E0];
      v6 = [v1 imageName];
      v7 = [v8 entryWithImageNamed:v6];
      goto LABEL_14;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v9 = MEMORY[0x277D762C8];
      v6 = [v1 imageName];
      v7 = [v9 entryWithImageNamed:v6 BOOLValue:{objc_msgSend(v1, "BOOLValue")}];
      goto LABEL_14;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v10 = MEMORY[0x277D76300];
      v6 = [v1 focusName];
      v11 = [v1 imageName];
      v3 = [v10 entryWithFocusName:v6 imageNamed:v11 BOOLValue:{objc_msgSend(v1, "BOOLValue")}];
LABEL_24:

      goto LABEL_15;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v3 = objc_alloc_init(MEMORY[0x277D762D0]);
      [v3 setRawValue:{objc_msgSend(v1, "rawValue")}];
      [v3 setDisplayValue:{objc_msgSend(v1, "displayValue")}];
      [v3 setDisplayRawValue:{objc_msgSend(v1, "displayRawValue")}];
      [v3 setStatus:{objc_msgSend(v1, "status")}];
      [v3 setLowDataModeActive:{objc_msgSend(v1, "lowDataModeActive")}];
      [v3 setType:{objc_msgSend(v1, "type")}];
      v12 = [v1 string];
      [v3 setString:v12];

      v13 = [v1 crossfadeString];
      [v3 setCrossfadeString:v13];

      v14 = [v1 badgeString];
      [v3 setBadgeString:v14];

      [v3 setWifiCallingEnabled:{objc_msgSend(v1, "wifiCallingEnabled")}];
      [v3 setCallForwardingEnabled:{objc_msgSend(v1, "callForwardingEnabled")}];
      [v3 setShowsSOSWhenDisabled:{objc_msgSend(v1, "showsSOSWhenDisabled")}];
      [v3 setSosAvailable:{objc_msgSend(v1, "sosAvailable")}];
      [v3 setIsBootstrapCellular:{objc_msgSend(v1, "isBootstrapCellular")}];
      goto LABEL_8;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v3 = objc_alloc_init(MEMORY[0x277D76328]);
      [v3 setRawValue:{objc_msgSend(v1, "rawValue")}];
      [v3 setDisplayValue:{objc_msgSend(v1, "displayValue")}];
      [v3 setDisplayRawValue:{objc_msgSend(v1, "displayRawValue")}];
      [v3 setStatus:{objc_msgSend(v1, "status")}];
      [v3 setLowDataModeActive:{objc_msgSend(v1, "lowDataModeActive")}];
LABEL_29:
      [v3 setType:{objc_msgSend(v1, "type")}];
      goto LABEL_8;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v3 = objc_alloc_init(MEMORY[0x277D762B0]);
      [v3 setCapacity:{objc_msgSend(v1, "capacity")}];
      [v3 setState:{objc_msgSend(v1, "state")}];
      [v3 setSaverModeActive:{objc_msgSend(v1, "saverModeActive")}];
      [v3 setProminentlyShowsDetailString:{objc_msgSend(v1, "prominentlyShowsDetailString")}];
LABEL_32:
      v6 = [v1 detailString];
      [v3 setDetailString:v6];
      goto LABEL_15;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v3 = objc_alloc_init(MEMORY[0x277D762B8]);
      [v3 setState:{objc_msgSend(v1, "state")}];
      v6 = [v1 batteryEntry];
      v11 = STUILegacyDataEntryFromDataEntry();
      [v3 setBatteryEntry:v11];
      goto LABEL_24;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v3 = objc_alloc_init(MEMORY[0x277D76318]);
      [v3 setColor:{objc_msgSend(v1, "color")}];
      [v3 setSunlightMode:{objc_msgSend(v1, "sunlightMode")}];
      goto LABEL_8;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v3 = objc_alloc_init(MEMORY[0x277D762A0]);
      [v3 setType:{objc_msgSend(v1, "type")}];
      v6 = [v1 displayId];
      [v3 setDisplayId:v6];
      goto LABEL_15;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v3 = objc_alloc_init(MEMORY[0x277D76310]);
      [v3 setConnectionCount:{objc_msgSend(v1, "connectionCount")}];
      goto LABEL_8;
    }

    if ([v1 isMemberOfClass:objc_opt_class()])
    {
      v15 = MEMORY[0x277D762F0];
    }

    else
    {
      if (![v1 isMemberOfClass:objc_opt_class()])
      {
        if ([v1 isMemberOfClass:objc_opt_class()])
        {
          v3 = objc_alloc_init(MEMORY[0x277D762F8]);
          [v3 setUnlockFailureCount:{objc_msgSend(v1, "unlockFailureCount")}];
          goto LABEL_8;
        }

        if (![v1 isMemberOfClass:objc_opt_class()])
        {
          v3 = 0;
          goto LABEL_8;
        }

        v3 = objc_alloc_init(MEMORY[0x277D762A8]);
        v16 = [v1 backgroundActivityIdentifier];
        [v3 setType:STUILegacyBackgroundActivityTypeFromBackgroundActivityIdentifier(v16)];

        [v1 displayStartDate];
        [v3 setDisplayStartDate:?];
        goto LABEL_32;
      }

      v15 = MEMORY[0x277D76320];
    }

    v3 = objc_alloc_init(v15);
    goto LABEL_29;
  }

  v2 = objc_alloc_init(MEMORY[0x277D762D8]);
LABEL_7:
  v3 = v2;
LABEL_8:
  [v3 setEnabled:{objc_msgSend(v1, "isEnabled")}];
LABEL_9:

  return v3;
}

uint64_t STUILegacyBackgroundActivityTypeFromBackgroundActivityIdentifier(void *a1)
{
  v1 = a1;
  if ([*MEMORY[0x277D6BCB0] isEqualToString:v1])
  {
    v2 = 0;
  }

  else if ([*MEMORY[0x277D6BCB8] isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([*MEMORY[0x277D6BC10] isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([*MEMORY[0x277D6BD08] isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([*MEMORY[0x277D6BC08] isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([*MEMORY[0x277D6BD00] isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([*MEMORY[0x277D6BC60] isEqualToString:v1])
  {
    v2 = 6;
  }

  else if ([*MEMORY[0x277D6BC68] isEqualToString:v1])
  {
    v2 = 7;
  }

  else if ([*MEMORY[0x277D6BBD8] isEqualToString:v1])
  {
    v2 = 8;
  }

  else if ([*MEMORY[0x277D6BC58] isEqualToString:v1])
  {
    v2 = 9;
  }

  else if ([*MEMORY[0x277D6BD20] isEqualToString:v1])
  {
    v2 = 10;
  }

  else if ([*MEMORY[0x277D6BD18] isEqualToString:v1])
  {
    v2 = 11;
  }

  else if ([*MEMORY[0x277D6BC48] isEqualToString:v1])
  {
    v2 = 12;
  }

  else if ([*MEMORY[0x277D6BC40] isEqualToString:v1])
  {
    v2 = 13;
  }

  else if ([*MEMORY[0x277D6BC80] isEqualToString:v1])
  {
    v2 = 14;
  }

  else if ([*MEMORY[0x277D6BC00] isEqualToString:v1])
  {
    v2 = 15;
  }

  else if ([*MEMORY[0x277D6BC98] isEqualToString:v1])
  {
    v2 = 16;
  }

  else if ([*MEMORY[0x277D6BCA8] isEqualToString:v1])
  {
    v2 = 17;
  }

  else if ([*MEMORY[0x277D6BC50] isEqualToString:v1])
  {
    v2 = 18;
  }

  else if ([*MEMORY[0x277D6BCD8] isEqualToString:v1])
  {
    v2 = 19;
  }

  else if ([*MEMORY[0x277D6BCE8] isEqualToString:v1])
  {
    v2 = 20;
  }

  else if ([*MEMORY[0x277D6BCE0] isEqualToString:v1])
  {
    v2 = 21;
  }

  else if ([*MEMORY[0x277D6BCA0] isEqualToString:v1])
  {
    v2 = 22;
  }

  else if ([*MEMORY[0x277D6BD10] isEqualToString:v1])
  {
    v2 = 23;
  }

  else if ([*MEMORY[0x277D6BCC8] isEqualToString:v1])
  {
    v2 = 24;
  }

  else if ([*MEMORY[0x277D6BCD0] isEqualToString:v1])
  {
    v2 = 25;
  }

  else if ([*MEMORY[0x277D6BCC0] isEqualToString:v1])
  {
    v2 = 26;
  }

  else if ([*MEMORY[0x277D6BBF8] isEqualToString:v1])
  {
    v2 = 27;
  }

  else if ([*MEMORY[0x277D6BBF0] isEqualToString:v1])
  {
    v2 = 28;
  }

  else if ([*MEMORY[0x277D6BCF0] isEqualToString:v1])
  {
    v2 = 29;
  }

  else if ([*MEMORY[0x277D6BC38] isEqualToString:v1])
  {
    v2 = 30;
  }

  else if ([*MEMORY[0x277D6BC78] isEqualToString:v1])
  {
    v2 = 31;
  }

  else if ([*MEMORY[0x277D6BC20] isEqualToString:v1])
  {
    v2 = 32;
  }

  else if ([*MEMORY[0x277D6BBE8] isEqualToString:v1])
  {
    v2 = 33;
  }

  else if ([*MEMORY[0x277D6BCF8] isEqualToString:v1])
  {
    v2 = 34;
  }

  else if ([*MEMORY[0x277D6BBE0] isEqualToString:v1])
  {
    v2 = 35;
  }

  else if ([*MEMORY[0x277D6BC28] isEqualToString:v1])
  {
    v2 = 36;
  }

  else if ([*MEMORY[0x277D6BC30] isEqualToString:v1])
  {
    v2 = 37;
  }

  else
  {
    v2 = 30;
  }

  return v2;
}

void sub_26C541A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C541DB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 56));
  _Unwind_Resume(a1);
}

__CFString *_STUIStatusBarCycleAnimationStateDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279D38CE0[a1];
  }
}

void sub_26C54781C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_26C54BE9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

__CFString *_STUIStatusBarAnimationTypeDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279D38E88[a1];
  }
}

void sub_26C54E7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_26C55066C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C552C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C553584(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_26C553B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C554338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
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

void sub_26C5575C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C55A68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a54, 8);
  _Unwind_Resume(a1);
}

void sub_26C55AFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C55B614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C55D2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C55D8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *STUIStatusBarFontStyleDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279D39340[a1];
  }
}

__CFString *STUIStatusBarModeDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"(unknown)";
  }

  else
  {
    return off_279D396F8[a1];
  }
}

__CFString *_UIStatusBarResolvedStyleDescription(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return @"inherited";
    }

    if (a1 != 64)
    {
      if (a1 == 128)
      {
        return @"automaticDarkBias";
      }

      return @"(unknown)";
    }

    return @"automaticLightBias";
  }

  else
  {
    if (!a1)
    {
      return @"default";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return @"darkContent";
      }

      return @"(unknown)";
    }

    return @"lightContent";
  }
}

__CFString *sensorActivityScreenIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ([v1 _isEmbeddedScreen] & 1) != 0 || (objc_msgSend(v2, "_isCarScreen") & 1) != 0)
  {
    v3 = &stru_287D04F38;
  }

  else
  {
    v3 = [v2 _displayID];
  }

  return v3;
}

void sub_26C568860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _UIBackgroundLuminanceLevelForStyle(uint64_t a1)
{
  if (a1 >> 6 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 >> 6 == 1);
  }
}

void sub_26C5695BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26C569880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C56AF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

id STUIStatusBarGetLowestPrioritizedItem(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v14;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 priority];
        if (v9 < v6)
        {
          v10 = v9;
          v11 = v8;

          v4 = v11;
          v6 = v10;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __STUIStatusBarGetPriorityComparator_block_invoke()
{
  v0 = STUIStatusBarGetPriorityComparator_priorityComparator;
  STUIStatusBarGetPriorityComparator_priorityComparator = &__block_literal_global_3;
}

void ___privateFrameworksHaveModifications_block_invoke()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = BSPathForSystemDirectory();
  v1 = MEMORY[0x277CBEBC0];
  v2 = [v0 stringByAppendingPathComponent:@"Frameworks"];
  v3 = [v1 fileURLWithPath:v2 isDirectory:1];

  v4 = MEMORY[0x277CBEBC0];
  v5 = [v0 stringByAppendingPathComponent:@"PrivateFrameworks"];
  v6 = [v4 fileURLWithPath:v5 isDirectory:1];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [&unk_287D1B0F8 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(&unk_287D1B0F8);
      }

      byte_280C1E8C1 = checkFramework(v3, *(*(&v19 + 1) + 8 * v10));
      if (byte_280C1E8C1)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [&unk_287D1B0F8 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((byte_280C1E8C1 & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = [&unk_287D1B110 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
LABEL_12:
      v14 = 0;
      while (1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(&unk_287D1B110);
        }

        byte_280C1E8C1 = checkFramework(v6, *(*(&v15 + 1) + 8 * v14));
        if (byte_280C1E8C1)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [&unk_287D1B110 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v12)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }
  }
}

BOOL checkFramework(void *a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [a1 URLByAppendingPathComponent:a2];
  v3 = [v2 URLByAppendingPathExtension:@"framework"];

  v5 = *MEMORY[0x277CBE7A8];
  v15[0] = *MEMORY[0x277CBE7C0];
  v4 = v15[0];
  v15[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v7 = [v3 resourceValuesForKeys:v6 error:0];

  v8 = [v7 objectForKeyedSubscript:v4];
  v9 = [v7 objectForKeyedSubscript:v5];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    [v9 timeIntervalSinceDate:v8];
    v13 = v12 > 60.0;
  }

  return v13;
}

__CFString *_STUIStringFromUILegibilityStyle(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown _UILegibilityStyle #%ld", a1];
  }

  else
  {
    v2 = off_279D397F0[a1];
  }

  return v2;
}

__CFString *_STUIStringFromStatusBarLegacyStyle(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown UIStatusBarStyle #%ld", a1];
  }

  else
  {
    v2 = off_279D39808[a1];
  }

  return v2;
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
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

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}
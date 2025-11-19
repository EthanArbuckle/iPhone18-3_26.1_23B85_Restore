void *__cdecl _Block_copy(const void *aBlock)
{
  if (!aBlock)
  {
    return 0;
  }

  if ((*(aBlock + 2) & 0x1000000) != 0)
  {
    do
    {
      v11 = *(aBlock + 2);
      if ((~v11 & 0xFFFE) == 0)
      {
        break;
      }

      v12 = *(aBlock + 2);
      atomic_compare_exchange_strong(aBlock + 2, &v12, v11 + 2);
    }

    while (v12 != v11);
    return aBlock;
  }

  if ((*(aBlock + 2) & 0x10000000) != 0)
  {
    return aBlock;
  }

  v2 = malloc_type_malloc(*(*(aBlock + 3) + 8), 0x10E0040A5821769uLL);
  if (v2)
  {
    if (!*(aBlock + 2))
    {
      _Block_copy_cold_1();
    }

    v3 = *(aBlock + 2);
    _platform_memmove();
    v4 = *(aBlock + 2);
    if (v4)
    {
      v5 = *(aBlock + 2);
    }

    v2->invoke = v4;
    v2->flags &= 0xFFFF0000;
    v2->flags |= 0x1000002u;
    v6 = **(aBlock + 3);
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = v6 >> 14;
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        LOBYTE(v7) = 3;
      }
    }

    else
    {
      if (!v7)
      {
LABEL_12:
        v8 = v2;
        v9 = aBlock;
        v10 = 0;
LABEL_24:
        _call_copy_helpers_excp(v8, v9, v10);
        v2->isa = OBJC_CLASS_____NSMallocBlock__;
        return v2;
      }

      if (hasInlineExtendedLayout(aBlock))
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        LOBYTE(v7) = 5;
      }
    }

    v14 = v7;
    v10 = &v14;
    v8 = v2;
    v9 = aBlock;
    goto LABEL_24;
  }

  return v2;
}

uint64_t _call_generic_copy_helper(Block_layout *a1, uint64_t a2, GenericInline *this)
{
  if (!this)
  {
    _call_generic_copy_helper_cold_2();
  }

  v3 = *this & 3;
  if (v3 <= 1)
  {
    if (v3 != 1)
    {
      _call_generic_copy_helper_cold_1();
    }

    if ((*this & 4) != 0)
    {

      return HelperBase<ExtendedOutOfLine>::copyBlock(this, a1, a2);
    }

    else
    {

      return HelperBase<ExtendedInline>::copyBlock(this, a1, a2);
    }
  }

  else if (v3 == 2)
  {

    return HelperBase<GenericInline>::copyBlock(this, a1, a2);
  }

  else
  {

    return HelperBase<GenericOutOfLine>::copyBlock(this, a1, a2);
  }
}

void _call_copy_helpers_excp(Block_layout *a1, uint64_t a2, GenericInline *a3)
{
  v5[0] = 0;
  v5[1] = a1;
  v5[2] = a3;
  if (a3)
  {
    LODWORD(v5[0]) = 1;
    _call_generic_copy_helper(a1, a2, a3);
  }

  _call_custom_copy_helper(a1, a2);
  LODWORD(v5[0]) = 0;
  _cleanup_generic_captures(v5);
}

void sub_299DC9E90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _cleanup_generic_captures(va);
  _Unwind_Resume(a1);
}

unint64_t HelperBase<GenericInline>::copyBlock(GenericInline *this, uint64_t a2, uint64_t a3)
{
  *(this + 7) = *(*(a2 + 24) - 8);
  *(this + 8) = 8;
  *(this + 6) = 0;
  *(this + 1) = a2 + 32;
  *(this + 2) = a3 + 32;
  while (1)
  {
    result = GenericInline::getNextOpcodeAndCount(this);
    v5 = HIDWORD(result);
    if (result <= 3)
    {
      break;
    }

    switch(result)
    {
      case 4:
        HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)4>(this, HIDWORD(result));
        break;
      case 5:
        HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)5>(this, HIDWORD(result));
        break;
      case 6:
        HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)6>(this, HIDWORD(result));
        break;
      default:
        goto LABEL_17;
    }

LABEL_15:
    *(this + 8) += 4;
    *(this + 6) = 0;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      v7 = 8 * (HIDWORD(result) & 0x1FFFFFFF);
      v8 = *(this + 1) + v7;
      v9 = *(this + 2) + v7;
      *(this + 1) = v8;
      *(this + 2) = v9;
    }

    else
    {
      HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>(this, HIDWORD(result));
    }

    goto LABEL_15;
  }

  if (result == 1)
  {
    v6 = *(this + 2) + v5;
    *(this + 1) += v5;
    *(this + 2) = v6;
    goto LABEL_15;
  }

  if (result)
  {
LABEL_17:
    HelperBase<ExtendedOutOfLine>::copyBlock();
  }

  return result;
}

id HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>(id result, unsigned int a2)
{
  if (*(result + 6))
  {
    HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>();
  }

  if (a2)
  {
    v3 = result;
    v4 = *(result + 2);
    do
    {
      result = *v4;
      v4 = (v3[2] + 8);
      v3[1] += 8;
      v3[2] = v4;
      v5 = *(v3 + 6) + 1;
      *(v3 + 6) = v5;
    }

    while (v5 < a2);
  }

  return result;
}

void *HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)4>(void *result, unsigned int a2)
{
  if (*(result + 6))
  {
    HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>();
  }

  if (a2)
  {
    v3 = result;
    v5 = *(result + 1);
    v4 = *(result + 2);
    do
    {
      result = _Block_copy(*v4);
      *v5 = result;
      v5 = (v3[1] + 8);
      v4 = (v3[2] + 8);
      v3[1] = v5;
      v3[2] = v4;
      v6 = *(v3 + 6) + 1;
      *(v3 + 6) = v6;
    }

    while (v6 < a2);
  }

  return result;
}

unint64_t GenericInline::getNextOpcodeAndCount(GenericInline *this)
{
  v1 = *(this + 8);
  HIDWORD(v3) = v1 - 8;
  LODWORD(v3) = v1 - 8;
  v2 = v3 >> 2;
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_13;
      }

      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        v5 = 5;
        break;
      case 3:
        v5 = 6;
        break;
      case 4:
        return 0;
      default:
LABEL_13:
        GenericInline::getNextOpcodeAndCount();
    }
  }

  return v5 | (((*(this + 7) >> v1) & 0xF) << 32);
}

void _Block_release(const void *aBlock)
{
  if (aBlock)
  {
    v1 = aBlock;
    if ((*(aBlock + 2) & 0x10000000) == 0 && (*(aBlock + 2) & 0x1000000) != 0)
    {
      do
      {
        v2 = *(aBlock + 2);
        if ((v2 & 0xFFFE) == 0 || (*(aBlock + 2) & 0xFFFE) == 65534)
        {
          return;
        }

        if (*(aBlock + 2) == 2)
        {
          v4 = -1;
        }

        else
        {
          v4 = -2;
        }

        v5 = *(aBlock + 2);
        atomic_compare_exchange_strong(aBlock + 2, &v5, v4 + v2);
      }

      while (v5 != v2);
      if (v2 != 2)
      {
        return;
      }

      v6 = **(aBlock + 3);
      if (!v6)
      {
        goto LABEL_17;
      }

      v7 = v6 >> 14;
      if (v7 > 1)
      {
        if (v7 != 2)
        {
          LOBYTE(v7) = 3;
        }
      }

      else
      {
        if (!v7)
        {
LABEL_17:
          v8 = 0;
LABEL_24:
          _call_dispose_helpers_excp(aBlock, v8);
          _Block_destructInstance(v1);
          free(v1);
          return;
        }

        if (hasInlineExtendedLayout(aBlock))
        {
          LOBYTE(v7) = 1;
        }

        else
        {
          LOBYTE(v7) = 5;
        }
      }

      v9 = v7;
      v8 = &v9;
      aBlock = v1;
      goto LABEL_24;
    }
  }
}

uint64_t HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)6>(uint64_t result, unsigned int a2)
{
  if (*(result + 24))
  {
    HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>();
  }

  if (a2)
  {
    v3 = result;
    result = *(result + 8);
    v4 = *(v3 + 16);
    do
    {
      objc_copyWeak(result, v4);
      result = *(v3 + 8) + 8;
      v4 = (*(v3 + 16) + 8);
      *(v3 + 8) = result;
      *(v3 + 16) = v4;
      v5 = *(v3 + 24) + 1;
      *(v3 + 24) = v5;
    }

    while (v5 < a2);
  }

  return result;
}

uint64_t HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)5>(uint64_t result, unsigned int a2)
{
  if (*(result + 24))
  {
    HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>();
  }

  if (a2)
  {
    v3 = result;
    result = *(result + 8);
    v4 = *(v3 + 16);
    do
    {
      _Block_object_assign(result, *v4, 8);
      result = *(v3 + 8) + 8;
      v4 = (*(v3 + 16) + 8);
      *(v3 + 8) = result;
      *(v3 + 16) = v4;
      v5 = *(v3 + 24) + 1;
      *(v3 + 24) = v5;
    }

    while (v5 < a2);
  }

  return result;
}

void _cleanup_generic_captures(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *v2 & 3;
      if (v3 <= 1)
      {
        if (v3 != 1)
        {
          _cleanup_generic_captures_cold_1();
        }

        if ((*v2 & 4) != 0)
        {
          HelperBase<ExtendedOutOfLine>::cleanup_captures(v2, a1);
        }

        else
        {
          HelperBase<ExtendedInline>::cleanup_captures(v2, a1);
        }
      }

      else if (v3 == 2)
      {
        HelperBase<GenericInline>::cleanup_captures(v2, a1);
      }

      else
      {
        HelperBase<GenericOutOfLine>::cleanup_captures(v2, a1);
      }
    }

    v4 = *(a1 + 8);

    free(v4);
  }
}

uint64_t _call_custom_copy_helper(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 0x2000000) != 0)
  {
    v2 = *(*(a2 + 24) + 16);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

uint64_t _call_custom_dispose_helper(uint64_t result)
{
  if ((*(result + 8) & 0x2000000) != 0)
  {
    v1 = *(*(result + 24) + 24);
    if (v1)
    {
      return v1();
    }
  }

  return result;
}

uint64_t _call_dispose_helpers_excp(Block_layout *a1, ExtendedInline *a2)
{
  v5[1] = a1;
  v5[0] = 4;
  v5[2] = a2;
  _call_custom_dispose_helper(a1);
  if (a2)
  {
    LODWORD(v5[0]) = 3;
    _call_generic_destroy_helper(a1, a2);
  }

  LODWORD(v5[0]) = 0;
  return _cleanup_generic_captures(v5);
}

void sub_299DCA48C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _cleanup_generic_captures(va);
  _Unwind_Resume(a1);
}

void _Block_object_assign(void *a1, const void *a2, const int a3)
{
  v3 = a2;
  v5 = a3 & 0x9F;
  if (v5 > 0x17)
  {
    if (v5 - 131 > 0x14 || ((1 << (v5 + 125)) & 0x110011) == 0)
    {
      if (v5 != 24)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_29:
    *a1 = v3;
    return;
  }

  switch(v5)
  {
    case 3u:
      _Block_retain_object(a2);
      goto LABEL_29;
    case 7u:
      v3 = _Block_copy(a2);
      goto LABEL_29;
    case 8u:
LABEL_12:
      v7 = *(a2 + 1);
      if ((*(v7 + 16) & 0xFFFE) != 0)
      {
        if ((*(v7 + 16) & 0x1000000) != 0)
        {
          do
          {
            v8 = *(v7 + 16);
            if ((~v8 & 0xFFFE) == 0)
            {
              break;
            }

            v9 = *(v7 + 16);
            atomic_compare_exchange_strong((v7 + 16), &v9, v8 + 2);
          }

          while (v9 != v8);
        }
      }

      else
      {
        v10 = malloc_type_malloc(*(a2 + 5), 0x10E0040F15F98B3uLL);
        *v10 = 0;
        v10[4] = v3[4] | 0x1000004;
        *(v10 + 1) = v10;
        *(v3 + 1) = v10;
        v10[5] = v3[5];
        if ((v3[4] & 0x2000000) != 0)
        {
          v11 = *(v3 + 3);
          if (v11)
          {
            v12 = *(v3 + 3);
          }

          *(v10 + 3) = v11;
          v13 = *(v3 + 4);
          if (v13)
          {
            v14 = *(v3 + 4);
          }

          *(v10 + 4) = v13;
          if (v3[4] >> 28 == 1)
          {
            *(v10 + 5) = *(v3 + 5);
          }

          (*(v3 + 3))();
        }

        else
        {
          _platform_memmove();
        }
      }

      v3 = *(v3 + 1);
      goto LABEL_29;
  }
}

unint64_t HelperBase<GenericInline>::destroyBlock(GenericInline *this, uint64_t a2, int a3, const void **a4)
{
  if (a3)
  {
    *(this + 7) = *(*(a2 + 24) - 8);
    *(this + 8) = 8;
    *(this + 6) = 0;
    *(this + 1) = a2 + 32;
  }

  while (1)
  {
    result = GenericInline::getNextOpcodeAndCount(this);
    v7 = HIDWORD(result);
    if (result > 3)
    {
      switch(result)
      {
        case 4:
          result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)4>(this, v7, a4);
          if (result)
          {
            goto LABEL_21;
          }

          break;
        case 5:
          result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)5>(this, HIDWORD(result), a4);
          if (result)
          {
            goto LABEL_21;
          }

          break;
        case 6:
          result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)6>(this, HIDWORD(result), a4);
          if (result)
          {
LABEL_21:
            if (!a4)
            {
              HelperBase<ExtendedOutOfLine>::destroyBlock();
            }

            return result;
          }

          break;
        default:
          goto LABEL_25;
      }

      goto LABEL_20;
    }

    if (result <= 1)
    {
      break;
    }

    if (result == 2)
    {
      v8 = *(this + 1) + 8 * (HIDWORD(result) & 0x1FFFFFFF);
      goto LABEL_18;
    }

    result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>(this, HIDWORD(result), a4);
    if (result)
    {
      goto LABEL_21;
    }

LABEL_20:
    *(this + 8) += 4;
    *(this + 6) = 0;
  }

  if (result == 1)
  {
    v8 = *(this + 1) + v7;
LABEL_18:
    *(this + 1) = v8;
    goto LABEL_20;
  }

  if (result)
  {
LABEL_25:
    HelperBase<ExtendedOutOfLine>::destroyBlock();
  }

  return result;
}

uint64_t _call_generic_destroy_helper(Block_layout *a1, ExtendedInline *this)
{
  if (!this)
  {
    _call_generic_destroy_helper_cold_2();
  }

  v2 = *this & 3;
  if (v2 <= 1)
  {
    if (v2 != 1)
    {
      _call_generic_destroy_helper_cold_1();
    }

    if ((*this & 4) != 0)
    {

      return HelperBase<ExtendedOutOfLine>::destroyBlock(this);
    }

    else
    {

      return HelperBase<ExtendedInline>::destroyBlock(this, a1, 1, 0);
    }
  }

  else if (v2 == 2)
  {

    return HelperBase<GenericInline>::destroyBlock(this, a1, 1, 0);
  }

  else
  {

    return HelperBase<GenericOutOfLine>::destroyBlock(this, a1, 1, 0);
  }
}

BOOL HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>(uint64_t a1, unsigned int a2, id *a3)
{
  if (*(a1 + 24) >= a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  do
  {
    v7 = v6 == a3;
    if (v6 == a3)
    {
      break;
    }

    v6 = (*(a1 + 8) + 8);
    *(a1 + 8) = v6;
    v8 = *(a1 + 24) + 1;
    *(a1 + 24) = v8;
  }

  while (v8 < a2);
  return v7;
}

BOOL HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)4>(uint64_t a1, unsigned int a2, const void **a3)
{
  if (*(a1 + 24) >= a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  do
  {
    v7 = v6 == a3;
    if (v6 == a3)
    {
      break;
    }

    _Block_release(*v6);
    v6 = (*(a1 + 8) + 8);
    *(a1 + 8) = v6;
    v8 = *(a1 + 24) + 1;
    *(a1 + 24) = v8;
  }

  while (v8 < a2);
  return v7;
}

BOOL HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)5>(uint64_t a1, unsigned int a2, const void **a3)
{
  if (*(a1 + 24) >= a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  do
  {
    v7 = v6 == a3;
    if (v6 == a3)
    {
      break;
    }

    _Block_object_dispose(*v6, 8);
    v6 = (*(a1 + 8) + 8);
    *(a1 + 8) = v6;
    v8 = *(a1 + 24) + 1;
    *(a1 + 24) = v8;
  }

  while (v8 < a2);
  return v7;
}

BOOL HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)6>(uint64_t a1, unsigned int a2, id *a3)
{
  if (*(a1 + 24) >= a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  do
  {
    v7 = v6 == a3;
    if (v6 == a3)
    {
      break;
    }

    objc_destroyWeak(v6);
    v6 = (*(a1 + 8) + 8);
    *(a1 + 8) = v6;
    v8 = *(a1 + 24) + 1;
    *(a1 + 24) = v8;
  }

  while (v8 < a2);
  return v7;
}

void _Block_object_dispose(const void *a1, const int a2)
{
  v2 = a2 & 0x9F;
  if (v2 > 7)
  {
    if (v2 == 24 || v2 == 8)
    {
      v4 = *(a1 + 1);
      if ((*(v4 + 16) & 0x1000000) != 0)
      {
        if ((*(v4 + 16) & 0xFFFE) == 0)
        {
          _Block_object_dispose_cold_1();
        }

        while (1)
        {
          v6 = *(v4 + 16);
          if ((v6 & 0xFFFE) == 0 || (*(v4 + 16) & 0xFFFE) == 65534)
          {
            break;
          }

          if (*(v4 + 16) == 2)
          {
            v8 = -1;
          }

          else
          {
            v8 = -2;
          }

          v9 = *(v4 + 16);
          atomic_compare_exchange_strong((v4 + 16), &v9, v8 + v6);
          if (v9 == v6)
          {
            if (v6 == 2)
            {
              if ((*(v4 + 16) & 0x2000000) != 0)
              {
                (*(v4 + 32))(v4);
              }

              free(v4);
            }

            return;
          }
        }
      }
    }
  }

  else if (v2 == 3)
  {
    v5 = _Block_release_object;

    v5(a1);
  }

  else if (v2 == 7)
  {

    _Block_release(a1);
  }
}

BOOL hasInlineExtendedLayout(Block_layout *a1)
{
  if ((a1->flags & 0x80000000) == 0 || (a1->flags & 0x40000000) == 0)
  {
    return 1;
  }

  v2 = 2;
  if ((a1->flags & 0x2000000) == 0)
  {
    v2 = 1;
  }

  size = a1->descriptor[v2].size;
  if (!size)
  {
    size = &unk_299DCBDAB;
  }

  return size < 0x1000;
}

void HelperBase<ExtendedOutOfLine>::destroyBlock()
{
  __assert_rtn("destroyBlock", "runtime.cpp", 485, "false && unexpected opcode");
}

{
  __assert_rtn("destroyBlock", "runtime.cpp", 491, "endptr && endptr isn't expected to be null");
}

uint64_t HelperBase<GenericOutOfLine>::copyBlock(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = (*(*(a2 + 24) - 8) + 1);
  *(result + 32) = v4;
  *(result + 24) = 0;
  *(result + 8) = a2 + 32;
  *(result + 16) = a3 + 32;
  while (1)
  {
    v5 = *v4;
    v6 = v5 >> 4;
    v7 = (v5 & 0xF) + 1;
    if (v5 >> 4 <= 3)
    {
      break;
    }

    switch(v6)
    {
      case 4u:
        result = HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)4>(v3, v7);
        break;
      case 5u:
        result = HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)5>(v3, v7);
        break;
      case 6u:
        result = HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)6>(v3, v7);
        break;
      default:
        goto LABEL_18;
    }

LABEL_16:
    v4 = (*(v3 + 32) + 1);
    *(v3 + 32) = v4;
    *(v3 + 24) = 0;
  }

  if (v5 >> 4 > 1)
  {
    if (v6 == 2)
    {
      v9 = (8 * v7);
      v10 = *(v3 + 8) + v9;
      v11 = *(v3 + 16) + v9;
      *(v3 + 8) = v10;
      *(v3 + 16) = v11;
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_18;
      }

      result = HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>(v3, v7);
    }

    goto LABEL_16;
  }

  if (v6 == 1)
  {
    v8 = *(v3 + 16) + v7;
    *(v3 + 8) += v7;
    *(v3 + 16) = v8;
    goto LABEL_16;
  }

  if (v6)
  {
LABEL_18:
    HelperBase<ExtendedOutOfLine>::copyBlock();
  }

  return result;
}

uint64_t HelperBase<GenericOutOfLine>::destroyBlock(uint64_t result, uint64_t a2, char a3, const void **a4)
{
  v5 = result;
  if (a3)
  {
    v6 = (*(*(a2 + 24) - 8) + 1);
    *(result + 32) = v6;
    *(result + 24) = 0;
    *(result + 8) = a2 + 32;
  }

  else
  {
    v6 = *(result + 32);
  }

  while (1)
  {
    v7 = *v6;
    v8 = v7 >> 4;
    v9 = (v7 & 0xF) + 1;
    if (v7 >> 4 > 3)
    {
      switch(v8)
      {
        case 4u:
          result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)4>(v5, v9, a4);
          if (result)
          {
            goto LABEL_23;
          }

          break;
        case 5u:
          result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)5>(v5, v9, a4);
          if (result)
          {
            goto LABEL_23;
          }

          break;
        case 6u:
          result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)6>(v5, v9, a4);
          if (result)
          {
LABEL_23:
            if (!a4)
            {
              HelperBase<ExtendedOutOfLine>::destroyBlock();
            }

            return result;
          }

          break;
        default:
          goto LABEL_27;
      }

      goto LABEL_22;
    }

    if (v7 >> 4 <= 1)
    {
      break;
    }

    if (v8 == 2)
    {
      v10 = *(v5 + 8) + (8 * v9);
      goto LABEL_20;
    }

    if (v8 != 3)
    {
      goto LABEL_27;
    }

    result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>(v5, v9, a4);
    if (result)
    {
      goto LABEL_23;
    }

LABEL_22:
    v6 = (*(v5 + 32) + 1);
    *(v5 + 32) = v6;
    *(v5 + 24) = 0;
  }

  if (v8 == 1)
  {
    v10 = *(v5 + 8) + v9;
LABEL_20:
    *(v5 + 8) = v10;
    goto LABEL_22;
  }

  if (v8)
  {
LABEL_27:
    HelperBase<ExtendedOutOfLine>::destroyBlock();
  }

  return result;
}

BOOL _Block_tryRetain(const void *aBlock)
{
  while (1)
  {
    v1 = *(aBlock + 2);
    v2 = (v1 & 1) == 0;
    if (~v1 & 0xFFFE) == 0 || (v1)
    {
      break;
    }

    v4 = *(aBlock + 2);
    atomic_compare_exchange_strong(aBlock + 2, &v4, v1 + 2);
    if (v4 == v1)
    {
      return 1;
    }
  }

  return v2;
}

void _Block_use_RR2(const Block_callbacks_RR *callbacks)
{
  release = callbacks->release;
  _Block_retain_object = callbacks->retain;
  _Block_release_object = release;
  _Block_destructInstance = callbacks->destructInstance;
}

unint64_t HelperBase<ExtendedOutOfLine>::copyBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HelperBase<ExtendedOutOfLine>::initState(a1, a2);
  *(a1 + 16) = a3 + 32;
  while (1)
  {
    result = ExtendedOutOfLine::getNextOpcodeAndCount(a1);
    v6 = HIDWORD(result);
    if (result <= 3)
    {
      break;
    }

    switch(result)
    {
      case 4:
        HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)4>(a1, HIDWORD(result));
        break;
      case 5:
        HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)5>(a1, HIDWORD(result));
        break;
      case 6:
        HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)6>(a1, HIDWORD(result));
        break;
      default:
        goto LABEL_17;
    }

LABEL_15:
    ++*(a1 + 32);
    *(a1 + 24) = 0;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      v8 = 8 * (HIDWORD(result) & 0x1FFFFFFF);
      v9 = *(a1 + 8) + v8;
      v10 = *(a1 + 16) + v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v10;
    }

    else
    {
      HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>(a1, HIDWORD(result));
    }

    goto LABEL_15;
  }

  if (result == 1)
  {
    v7 = *(a1 + 16) + v6;
    *(a1 + 8) += v6;
    *(a1 + 16) = v7;
    goto LABEL_15;
  }

  if (result)
  {
LABEL_17:
    HelperBase<ExtendedOutOfLine>::copyBlock();
  }

  return result;
}

unint64_t HelperBase<ExtendedInline>::copyBlock(uint64_t a1, Block_layout *a2, uint64_t a3)
{
  ExtendedInline::initState(a1, a2);
  *(a1 + 24) = 0;
  *(a1 + 8) = a2 + 1;
  *(a1 + 16) = a3 + 32;
  while (1)
  {
    result = ExtendedInline::getNextOpcodeAndCount(a1);
    v7 = HIDWORD(result);
    if (result <= 3)
    {
      break;
    }

    switch(result)
    {
      case 4:
        HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)4>(a1, HIDWORD(result));
        break;
      case 5:
        HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)5>(a1, HIDWORD(result));
        break;
      case 6:
        HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)6>(a1, HIDWORD(result));
        break;
      default:
        goto LABEL_17;
    }

LABEL_15:
    *(a1 + 32) -= 4;
    *(a1 + 24) = 0;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      v9 = 8 * (HIDWORD(result) & 0x1FFFFFFF);
      v10 = *(a1 + 8) + v9;
      v11 = *(a1 + 16) + v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
    }

    else
    {
      HelperBase<ExtendedOutOfLine>::copyCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>(a1, HIDWORD(result));
    }

    goto LABEL_15;
  }

  if (result == 1)
  {
    v8 = *(a1 + 16) + v7;
    *(a1 + 8) += v7;
    *(a1 + 16) = v8;
    goto LABEL_15;
  }

  if (result)
  {
LABEL_17:
    HelperBase<ExtendedOutOfLine>::copyBlock();
  }

  return result;
}

unint64_t HelperBase<ExtendedOutOfLine>::destroyBlock(ExtendedOutOfLine *this, uint64_t a2, int a3, const void **a4)
{
  if (a3)
  {
    HelperBase<ExtendedOutOfLine>::initState(this, a2);
  }

  while (1)
  {
    result = ExtendedOutOfLine::getNextOpcodeAndCount(this);
    if (result > 3)
    {
      switch(result)
      {
        case 4:
          result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)4>(this, HIDWORD(result), a4);
          if (result)
          {
            goto LABEL_21;
          }

          break;
        case 5:
          result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)5>(this, HIDWORD(result), a4);
          if (result)
          {
            goto LABEL_21;
          }

          break;
        case 6:
          result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)6>(this, HIDWORD(result), a4);
          if (result)
          {
LABEL_21:
            if (!a4)
            {
              HelperBase<ExtendedOutOfLine>::destroyBlock();
            }

            return result;
          }

          break;
        default:
          goto LABEL_25;
      }

      goto LABEL_20;
    }

    if (result <= 1)
    {
      break;
    }

    if (result == 2)
    {
      v7 = *(this + 1) + 8 * (HIDWORD(result) & 0x1FFFFFFF);
      goto LABEL_18;
    }

    result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>(this, HIDWORD(result), a4);
    if (result)
    {
      goto LABEL_21;
    }

LABEL_20:
    ++*(this + 4);
    *(this + 6) = 0;
  }

  if (result == 1)
  {
    v7 = *(this + 1) + HIDWORD(result);
LABEL_18:
    *(this + 1) = v7;
    goto LABEL_20;
  }

  if (result)
  {
LABEL_25:
    HelperBase<ExtendedOutOfLine>::destroyBlock();
  }

  return result;
}

unint64_t HelperBase<ExtendedInline>::destroyBlock(ExtendedInline *this, Block_layout *a2, int a3, const void **a4)
{
  if (a3)
  {
    ExtendedInline::initState(this, a2);
    *(this + 6) = 0;
    *(this + 1) = a2 + 1;
  }

  while (1)
  {
    result = ExtendedInline::getNextOpcodeAndCount(this);
    v8 = HIDWORD(result);
    if (result > 3)
    {
      switch(result)
      {
        case 4:
          result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)4>(this, v8, a4);
          if (result)
          {
            goto LABEL_21;
          }

          break;
        case 5:
          result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)5>(this, HIDWORD(result), a4);
          if (result)
          {
            goto LABEL_21;
          }

          break;
        case 6:
          result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)6>(this, HIDWORD(result), a4);
          if (result)
          {
LABEL_21:
            if (!a4)
            {
              HelperBase<ExtendedOutOfLine>::destroyBlock();
            }

            return result;
          }

          break;
        default:
          goto LABEL_25;
      }

      goto LABEL_20;
    }

    if (result <= 1)
    {
      break;
    }

    if (result == 2)
    {
      v9 = *(this + 1) + 8 * (HIDWORD(result) & 0x1FFFFFFF);
      goto LABEL_18;
    }

    result = HelperBase<ExtendedOutOfLine>::disposeCapture<(HelperBase<ExtendedOutOfLine>::BlockCaptureKind)3>(this, HIDWORD(result), a4);
    if (result)
    {
      goto LABEL_21;
    }

LABEL_20:
    *(this + 8) -= 4;
    *(this + 6) = 0;
  }

  if (result == 1)
  {
    v9 = *(this + 1) + v8;
LABEL_18:
    *(this + 1) = v9;
    goto LABEL_20;
  }

  if (result)
  {
LABEL_25:
    HelperBase<ExtendedOutOfLine>::destroyBlock();
  }

  return result;
}

unint64_t HelperBase<ExtendedOutOfLine>::cleanup_captures(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 > 2)
  {
    if (v3 != 4)
    {
      if (v3 != 3)
      {
        goto LABEL_15;
      }

      *(a1 + 8) += 8;
      ++*(a1 + 24);
      v4 = *(a2 + 8);
      v5 = 0;
      goto LABEL_12;
    }

LABEL_6:
    v4 = *(a2 + 8);
    v5 = 1;
LABEL_12:
    v6 = 0;

    return HelperBase<ExtendedOutOfLine>::destroyBlock(a1, v4, v5, v6);
  }

  if (v3 != 1)
  {
    if (v3 != 2)
    {
LABEL_15:
      HelperBase<ExtendedOutOfLine>::cleanup_captures();
    }

    goto LABEL_6;
  }

  v4 = *(a2 + 8);
  v6 = *(a1 + 8);
  v5 = 1;

  return HelperBase<ExtendedOutOfLine>::destroyBlock(a1, v4, v5, v6);
}

unint64_t HelperBase<ExtendedInline>::cleanup_captures(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 > 2)
  {
    if (v3 != 4)
    {
      if (v3 != 3)
      {
        goto LABEL_15;
      }

      *(a1 + 8) += 8;
      ++*(a1 + 24);
      v4 = *(a2 + 8);
      v5 = 0;
      goto LABEL_12;
    }

LABEL_6:
    v4 = *(a2 + 8);
    v5 = 1;
LABEL_12:
    v6 = 0;

    return HelperBase<ExtendedInline>::destroyBlock(a1, v4, v5, v6);
  }

  if (v3 != 1)
  {
    if (v3 != 2)
    {
LABEL_15:
      HelperBase<ExtendedOutOfLine>::cleanup_captures();
    }

    goto LABEL_6;
  }

  v4 = *(a2 + 8);
  v6 = *(a1 + 8);
  v5 = 1;

  return HelperBase<ExtendedInline>::destroyBlock(a1, v4, v5, v6);
}

unint64_t HelperBase<GenericInline>::cleanup_captures(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 > 2)
  {
    if (v3 != 4)
    {
      if (v3 != 3)
      {
        goto LABEL_15;
      }

      *(a1 + 8) += 8;
      ++*(a1 + 24);
      v4 = *(a2 + 8);
      v5 = 0;
      goto LABEL_12;
    }

LABEL_6:
    v4 = *(a2 + 8);
    v5 = 1;
LABEL_12:
    v6 = 0;

    return HelperBase<GenericInline>::destroyBlock(a1, v4, v5, v6);
  }

  if (v3 != 1)
  {
    if (v3 != 2)
    {
LABEL_15:
      HelperBase<ExtendedOutOfLine>::cleanup_captures();
    }

    goto LABEL_6;
  }

  v4 = *(a2 + 8);
  v6 = *(a1 + 8);
  v5 = 1;

  return HelperBase<GenericInline>::destroyBlock(a1, v4, v5, v6);
}

uint64_t HelperBase<GenericOutOfLine>::cleanup_captures(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 > 2)
  {
    if (v3 != 4)
    {
      if (v3 != 3)
      {
        goto LABEL_15;
      }

      *(a1 + 8) += 8;
      ++*(a1 + 24);
      v4 = *(a2 + 8);
      v5 = 0;
      goto LABEL_12;
    }

LABEL_6:
    v4 = *(a2 + 8);
    v5 = 1;
LABEL_12:
    v6 = 0;

    return HelperBase<GenericOutOfLine>::destroyBlock(a1, v4, v5, v6);
  }

  if (v3 != 1)
  {
    if (v3 != 2)
    {
LABEL_15:
      HelperBase<ExtendedOutOfLine>::cleanup_captures();
    }

    goto LABEL_6;
  }

  v4 = *(a2 + 8);
  v6 = *(a1 + 8);
  v5 = 1;

  return HelperBase<GenericOutOfLine>::destroyBlock(a1, v4, v5, v6);
}

BOOL _Block_has_signature(void *aBlock)
{
  if ((*(aBlock + 2) & 0x40000000) == 0)
  {
    return 0;
  }

  v2 = 32;
  if ((*(aBlock + 2) & 0x2000000) == 0)
  {
    v2 = 16;
  }

  return *(*(aBlock + 3) + v2) != 0;
}

const char *__cdecl _Block_signature(void *aBlock)
{
  if ((*(aBlock + 2) & 0x40000000) == 0)
  {
    return 0;
  }

  v2 = 32;
  if ((*(aBlock + 2) & 0x2000000) == 0)
  {
    v2 = 16;
  }

  return *(*(aBlock + 3) + v2);
}

const char *__cdecl _Block_layout(void *aBlock)
{
  if ((*(aBlock + 2) & 0x80000000) != 0 || (*(aBlock + 2) & 0x40000000) == 0)
  {
    return 0;
  }

  v2 = 32;
  if ((*(aBlock + 2) & 0x2000000) == 0)
  {
    v2 = 16;
  }

  return *(*(aBlock + 3) + v2 + 8);
}

const char *__cdecl _Block_extended_layout(void *aBlock)
{
  if ((*(aBlock + 2) & 0x80000000) == 0 || (*(aBlock + 2) & 0x40000000) == 0)
  {
    return 0;
  }

  v2 = 32;
  if ((*(aBlock + 2) & 0x2000000) == 0)
  {
    v2 = 16;
  }

  if (*(*(aBlock + 3) + v2 + 8))
  {
    return *(*(aBlock + 3) + v2 + 8);
  }

  else
  {
    return &unk_299DCBDAB;
  }
}

unint64_t ExtendedOutOfLine::getNextOpcodeAndCount(ExtendedOutOfLine *this)
{
  v1 = **(this + 4);
  if (v1 >= 0x70)
  {
    ExtendedOutOfLine::getNextOpcodeAndCount();
  }

  return *(&unk_299DCBC60 + ((v1 >> 1) & 0x78)) | (((v1 & 0xF) + 1) << 32);
}

uint64_t HelperBase<ExtendedOutOfLine>::initState(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 8) & 0x80000000) != 0 && (*(a2 + 8) & 0x40000000) != 0)
  {
    v3 = 32;
    if ((*(a2 + 8) & 0x2000000) == 0)
    {
      v3 = 16;
    }

    v2 = *(*(a2 + 24) + v3 + 8);
    if (!v2)
    {
      v2 = &unk_299DCBDAB;
    }
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = v2;
  *(result + 24) = 0;
  *(result + 8) = a2 + 32;
  return result;
}

uint64_t ExtendedInline::getNextOpcodeAndCount(ExtendedInline *this)
{
  v1 = *(this + 8);
  HIDWORD(v3) = v1 + 4;
  LODWORD(v3) = v1 + 4;
  v2 = (v3 >> 2);
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      return v2 | (((*(this + 14) >> v1) & 0xF) << 32);
    }

    if (v2 == 2)
    {
      v2 = 5;
      return v2 | (((*(this + 14) >> v1) & 0xF) << 32);
    }

    goto LABEL_10;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v2 = 6;
      return v2 | (((*(this + 14) >> v1) & 0xF) << 32);
    }

LABEL_10:
    ExtendedInline::getNextOpcodeAndCount();
  }

  return v2;
}

uint64_t ExtendedInline::initState(uint64_t this, Block_layout *a2)
{
  if (a2->flags < 0 && (a2->flags & 0x40000000) != 0)
  {
    v3 = 2;
    if ((a2->flags & 0x2000000) == 0)
    {
      v3 = 1;
    }

    size = a2->descriptor[v3].size;
    if (!size)
    {
      LOWORD(size) = &unk_299DCBDAB;
    }
  }

  else
  {
    LOWORD(size) = 0;
  }

  *(this + 28) = size;
  *(this + 32) = 8;
  return this;
}

void _Block_object_dispose_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}
uint64_t WebLocalizedString(void *a1, const char *a2)
{
  if (a1)
  {
    v2 = a1[1];
    if (!v2)
    {
      v4 = a2;
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *a1)}];
      a2 = v4;
      v2 = v5;
      a1[1] = v5;
    }
  }

  else
  {
    if (atomic_load_explicit(&qword_1ED6A6280, memory_order_acquire) != -1)
    {
      v12 = &v10;
      v11 = &v12;
      v6 = a2;
      std::__call_once(&qword_1ED6A6280, &v11, std::__call_once_proxy[abi:sn200100]<std::tuple<WebLocalizedString::$_0 &&>>);
      a2 = v6;
    }

    v2 = _MergedGlobals_21;
  }

  v7 = CFStringCreateWithCStringNoCopy(0, a2, 0x8000100u, *MEMORY[0x1E695E498]);
  result = [v2 localizedStringForKey:v7 value:@"localized string not found" table:0];
  if (v7)
  {
    v9 = result;
    CFRelease(v7);
    return v9;
  }

  return result;
}

void sub_1C79C18AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

id std::__call_once_proxy[abi:sn200100]<std::tuple<WebLocalizedString::$_0 &&>>()
{
  result = [MEMORY[0x1E696AAE8] mainBundle];
  _MergedGlobals_21 = result;
  if (result)
  {

    return result;
  }

  return result;
}

void sub_1C79C1B70(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void BackForwardList::BackForwardList(BackForwardList *this, WebView *a2)
{
  *(this + 2) = 1;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *this = &unk_1F4729A78;
  *(this + 4) = 0;
  *(this + 40) = 0u;
  *(this + 7) = 0x64FFFFFFFFLL;
  *(this + 32) = 257;
}

void BackForwardList::~BackForwardList(BackForwardList *this, void *a2)
{
  *this = &unk_1F4729A78;
  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = *(this + 6);
      do
      {
        v8 = *v5;
        if (*v5 != -1)
        {
          *v5 = 0;
          if (v8)
          {
            if (*(v8 + 8) == 1)
            {
              v6 = MEMORY[0x1CCA64170]();
              WTF::fastFree(v6, v7);
            }

            else
            {
              --*(v8 + 8);
            }
          }
        }

        ++v5;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  v9 = *(this + 11);
  v10 = *(this + 4);
  if (v9)
  {
    v11 = 8 * v9;
    do
    {
      v14 = *v10;
      *v10 = 0;
      if (v14)
      {
        if (*(v14 + 8) == 1)
        {
          v12 = MEMORY[0x1CCA64170]();
          WTF::fastFree(v12, v13);
        }

        else
        {
          --*(v14 + 8);
        }
      }

      v10 = (v10 + 8);
      v11 -= 8;
    }

    while (v11);
    v10 = *(this + 4);
  }

  if (v10)
  {
    *(this + 4) = 0;
    *(this + 10) = 0;
    WTF::fastFree(v10, a2);
  }

  v15 = *(this + 2);
  if (!v15 || (*(v15 + 8) = 0, *(this + 2) = 0, atomic_fetch_add(v15, 0xFFFFFFFF) != 1))
  {
    if (*(this + 2) == 1)
    {
      return;
    }

LABEL_26:
    __break(0xC471u);
    return;
  }

  atomic_store(1u, v15);
  WTF::fastFree(v15, a2);
  if (*(this + 2) != 1)
  {
    goto LABEL_26;
  }
}

{
  BackForwardList::~BackForwardList(this, a2);

  WTF::fastFree(v2, v3);
}

_DWORD *BackForwardList::addItem(_DWORD *result, unint64_t a2)
{
  v2 = result[15];
  if (v2)
  {
    v3 = result;
    if (*(result + 65) == 1)
    {
      v4 = a2;
      v5 = result[14];
      if (v5 == -1)
      {
        if (result[11] != v2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v6 = v5 + 1;
        v7 = result[11];
        if (v7 > v6)
        {
          do
          {
            while (1)
            {
              v14 = *(v3 + 4);
              v15 = *(v14 + 8 * v7 - 8);
              v16 = v7 - 1;
              *(v14 + 8 * v16) = 0;
              v3[11] = v16;
              v17 = WTF::HashSet<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::DefaultHash<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>(v3 + 6, v15);
              v18 = WebCore::BackForwardCache::singleton(v17);
              WebCore::BackForwardCache::remove(v18, v15);
              if (*(v15 + 2) != 1)
              {
                break;
              }

              v12 = MEMORY[0x1CCA64170](v15);
              WTF::fastFree(v12, v13);
              v7 = v3[11];
              if (v7 <= v6)
              {
                goto LABEL_16;
              }
            }

            --*(v15 + 2);
            v7 = v3[11];
          }

          while (v7 > v6);
LABEL_16:
          v2 = v3[15];
          if (v7 != v2)
          {
            goto LABEL_19;
          }
        }

        else if (v7 != v2)
        {
          goto LABEL_19;
        }
      }

      if (v2 == 1 || v3[14])
      {
        if (!v2)
        {
          goto LABEL_52;
        }

        v8 = *(v3 + 4);
        v9 = *v8;
        *v8 = 0;
        memmove(v8, v8 + 1, 8 * v2 - 8);
        --v3[11];
        v10 = WTF::HashSet<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::DefaultHash<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>(v3 + 6, v9);
        v11 = WebCore::BackForwardCache::singleton(v10);
        WebCore::BackForwardCache::remove(v11, v9);
        --v3[14];
        if (*(v9 + 2) == 1)
        {
          v19 = MEMORY[0x1CCA64170](v9);
          WTF::fastFree(v19, v20);
        }

        else
        {
          --*(v9 + 2);
        }
      }

LABEL_19:
      v21 = *v4;
      *(v21 + 8) = *(*v4 + 8) + 1;
      if (v21 == -1)
      {
        goto LABEL_52;
      }

      if (!v21)
      {
        __break(0xC471u);
        JUMPOUT(0x1C79C2174);
      }

      v22 = *(v3 + 6);
      if (!v22)
      {
        WTF::HashTable<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::FastMalloc>::rehash(v3 + 6, 8u);
        v22 = *(v3 + 6);
      }

      v23 = *(v22 - 8);
      v24 = (~(v21 << 32) + v21) ^ ((~(v21 << 32) + v21) >> 22);
      v25 = 9 * ((v24 + ~(v24 << 13)) ^ ((v24 + ~(v24 << 13)) >> 8));
      v26 = (v25 ^ (v25 >> 15)) + ~((v25 ^ (v25 >> 15)) << 27);
      v27 = v23 & ((v26 >> 31) ^ v26);
      v28 = (v22 + 8 * v27);
      v29 = *v28;
      if (*v28)
      {
        v30 = 0;
        v31 = 1;
        while (v29 != v21)
        {
          if (v29 == -1)
          {
            v30 = v28;
          }

          v27 = (v27 + v31) & v23;
          v28 = (v22 + 8 * v27);
          v29 = *v28;
          ++v31;
          if (!*v28)
          {
            if (!v30)
            {
              goto LABEL_31;
            }

            *v30 = 0;
            v22 = *(v3 + 6);
            v32 = *(v22 - 16) - 1;
            *(v22 - 16) = v32;
            *v30 = v21;
            goto LABEL_32;
          }
        }

        if (*(v21 + 8) != 1)
        {
          --*(v21 + 8);
          goto LABEL_42;
        }

        v41 = MEMORY[0x1CCA64170](v21, a2, v30);
        WTF::fastFree(v41, v42);
        v37 = (v3[14] + 1);
        v38 = v3[11];
        if (v38 != v3[10])
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

LABEL_31:
      *v28 = v21;
      v32 = *(v22 - 16);
LABEL_32:
      v33 = *(v22 - 12) + 1;
      *(v22 - 12) = v33;
      v34 = (v32 + v33);
      v35 = *(v22 - 4);
      if (v35 > 0x400)
      {
        if (v35 <= 2 * v34)
        {
          goto LABEL_37;
        }
      }

      else if (3 * v35 <= 4 * v34)
      {
        if (!v35)
        {
          v36 = 8;
          goto LABEL_38;
        }

LABEL_37:
        v36 = v35 << (6 * v33 >= (2 * v35));
LABEL_38:
        WTF::HashTable<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::FastMalloc>::rehash(v3 + 6, v36);
        v37 = (v3[14] + 1);
        v38 = v3[11];
        if (v38 != v3[10])
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

LABEL_42:
      v37 = (v3[14] + 1);
      v38 = v3[11];
      if (v38 != v3[10])
      {
LABEL_44:
        if (v38 >= v37)
        {
          v39 = (*(v3 + 4) + 8 * v37);
          result = memmove(v39 + 1, v39, 8 * (v38 - v37));
          v40 = *v4;
          *v4 = 0;
          *v39 = v40;
          ++v3[11];
          ++v3[14];
          return result;
        }

        __break(1u);
LABEL_52:
        __break(0xC471u);
        JUMPOUT(0x1C79C2154);
      }

LABEL_43:
      v4 = WTF::Vector<WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((v3 + 8), v38 + 1, v4);
      LODWORD(v38) = v3[11];
      goto LABEL_44;
    }
  }

  return result;
}

void sub_1C79C2194(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_1C79C21A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(va);
  _Unwind_Resume(a1);
}

uint64_t WTF::HashSet<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::DefaultHash<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79C2318);
  }

  v3 = *(v2 - 8);
  v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  v8 = *(v2 + 8 * v7);
  if (v8 != a2)
  {
    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 8 * v7);
      ++v9;
      if (v8 == a2)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  if (v7 == *(v2 - 4))
  {
    return 0;
  }

  v11 = *(v2 + 8 * v7);
  *(v2 + 8 * v7) = -1;
  if (v11)
  {
    if (*(v11 + 8) == 1)
    {
      v12 = a1;
      v13 = MEMORY[0x1CCA64170](v11);
      WTF::fastFree(v13, v14);
      a1 = v12;
      v2 = *v12;
    }

    else
    {
      --*(v11 + 8);
    }
  }

  v15 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v15;
  v16 = *(v2 - 4);
  if (6 * v15.i32[1] < v16 && v16 >= 9)
  {
    WTF::HashTable<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::FastMalloc>::rehash(a1, v16 >> 1);
  }

  return 1;
}

void *WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 8) == 1)
    {
      v2 = result;
      v3 = MEMORY[0x1CCA64170](v1);
      WTF::fastFree(v3, v4);
      return v2;
    }

    else
    {
      --*(v1 + 8);
    }
  }

  return result;
}

uint64_t BackForwardList::goToItem(uint64_t this, HistoryItem *a2)
{
  v2 = *(this + 44);
  if (v2)
  {
    v3 = 0;
    while (*(*(this + 32) + 8 * v3) != a2)
    {
      if (v2 == ++v3)
      {
        return this;
      }
    }

    *(this + 56) = v3;
  }

  return this;
}

_DWORD *BackForwardList::backListWithLimit(_DWORD *result, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  if (*(a3 + 8))
  {
    v6 = *(a3 + 12);
    v7 = *a3;
    if (v6)
    {
      v8 = 8 * v6;
      do
      {
        result = *v7;
        *v7 = 0;
        if (result)
        {
          if (result[2] == 1)
          {
            v9 = MEMORY[0x1CCA64170]();
            result = WTF::fastFree(v9, v10);
          }

          else
          {
            --result[2];
          }
        }

        v7 = (v7 + 8);
        v8 -= 8;
      }

      while (v8);
      *(a3 + 12) = 0;
      v7 = *a3;
    }

    if (v7)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      result = WTF::fastFree(v7, a2);
    }
  }

  v11 = v5[14];
  if (v11 != -1)
  {
    v12 = (v11 - v4) & ~((v11 - v4) >> 31);
    if (v12 < v11)
    {
      while (v12 < v5[11])
      {
        v14 = *(*(v5 + 4) + 8 * v12);
        v15 = *(a3 + 12);
        if (v15 == *(a3 + 8))
        {
          v16 = v15 + (v15 >> 1);
          if (v16 <= v15 + 1)
          {
            v16 = v15 + 1;
          }

          if (v16 >> 29)
          {
            break;
          }

          v17 = *a3;
          if (v16 <= 0x10)
          {
            v18 = 16;
          }

          else
          {
            v18 = v16;
          }

          v19 = WTF::fastMalloc((8 * v18));
          *(a3 + 8) = v18;
          *a3 = v19;
          result = memcpy(v19, v17, 8 * v15);
          if (v17)
          {
            if (*a3 == v17)
            {
              *a3 = 0;
              *(a3 + 8) = 0;
            }

            result = WTF::fastFree(v17, v20);
          }

          v21 = *(a3 + 12);
          v22 = *a3;
          ++*(v14 + 8);
          *(v22 + v21) = v14;
          v11 = v5[14];
          *(a3 + 12) = v21 + 1;
          if (++v12 >= v11)
          {
            return result;
          }
        }

        else
        {
          v13 = *a3;
          ++*(v14 + 8);
          *(v13 + v15) = v14;
          *(a3 + 12) = v15 + 1;
          if (++v12 >= v11)
          {
            return result;
          }
        }
      }

      __break(0xC471u);
      JUMPOUT(0x1C79C2574);
    }
  }

  return result;
}

_DWORD *BackForwardList::forwardListWithLimit(_DWORD *result, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  if (*(a3 + 8))
  {
    v6 = *(a3 + 12);
    v7 = *a3;
    if (v6)
    {
      v8 = 8 * v6;
      do
      {
        result = *v7;
        *v7 = 0;
        if (result)
        {
          if (result[2] == 1)
          {
            v9 = MEMORY[0x1CCA64170]();
            result = WTF::fastFree(v9, v10);
          }

          else
          {
            --result[2];
          }
        }

        v7 = (v7 + 8);
        v8 -= 8;
      }

      while (v8);
      *(a3 + 12) = 0;
      v7 = *a3;
    }

    if (v7)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      result = WTF::fastFree(v7, a2);
    }
  }

  v11 = v5[11];
  if (v11)
  {
    v12 = v11 - 1;
    v13 = v5[14];
    if (v13 < v12)
    {
      v14 = v12 >= v13 + v4 ? v13 + v4 : v12;
      v15 = v13 + 1;
      if ((v13 + 1) <= v14)
      {
        while (1)
        {
          v17 = v15;
          if (v5[11] <= v15)
          {
            break;
          }

          v18 = *(*(v5 + 4) + 8 * v15);
          v19 = *(a3 + 12);
          if (v19 == *(a3 + 8))
          {
            v20 = v19 + (v19 >> 1);
            if (v20 <= v19 + 1)
            {
              v20 = v19 + 1;
            }

            if (v20 >> 29)
            {
              break;
            }

            v21 = *a3;
            if (v20 <= 0x10)
            {
              v22 = 16;
            }

            else
            {
              v22 = v20;
            }

            v23 = WTF::fastMalloc((8 * v22));
            *(a3 + 8) = v22;
            *a3 = v23;
            result = memcpy(v23, v21, 8 * v19);
            if (v21)
            {
              if (*a3 == v21)
              {
                *a3 = 0;
                *(a3 + 8) = 0;
              }

              result = WTF::fastFree(v21, v24);
            }

            v19 = *(a3 + 12);
            v16 = (*a3 + 8 * v19);
          }

          else
          {
            v16 = (*a3 + 8 * v19);
          }

          ++*(v18 + 8);
          *v16 = v18;
          *(a3 + 12) = v19 + 1;
          v15 = v17 + 1;
          if (v17 + 1 > v14)
          {
            return result;
          }
        }

        __break(0xC471u);
        JUMPOUT(0x1C79C2730);
      }
    }
  }

  return result;
}

uint64_t BackForwardList::setCapacity(uint64_t this, int a2)
{
  v3 = this;
  v4 = *(this + 44);
  v5 = v4;
  if (v4 <= a2)
  {
    LODWORD(v6) = *(this + 44);
    if (!a2)
    {
LABEL_11:
      v14 = -1;
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *(this + 44);
    do
    {
      while (1)
      {
        if (!v5)
        {
          __break(0xC471u);
          return this;
        }

        v9 = *(v3 + 32);
        v10 = *(v9 + 8 * v6 - 8);
        v11 = v6 - 1;
        *(v9 + 8 * v11) = 0;
        *(v3 + 44) = v11;
        v12 = WTF::HashSet<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::DefaultHash<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>((v3 + 48), v10);
        v13 = WebCore::BackForwardCache::singleton(v12);
        this = WebCore::BackForwardCache::remove(v13, v10);
        if (*(v10 + 2) != 1)
        {
          break;
        }

        v7 = MEMORY[0x1CCA64170](v10);
        this = WTF::fastFree(v7, v8);
        v6 = *(v3 + 44);
        v5 = v6;
        v4 = v6;
        if (v6 <= a2)
        {
          goto LABEL_7;
        }
      }

      --*(v10 + 2);
      v6 = *(v3 + 44);
      v5 = v6;
      v4 = v6;
    }

    while (v6 > a2);
LABEL_7:
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (v4 - 1 < *(v3 + 56))
  {
    v14 = v6 - 1;
LABEL_12:
    *(v3 + 56) = v14;
  }

  *(v3 + 60) = a2;
  return this;
}

void sub_1C79C283C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(va);
  _Unwind_Resume(a1);
}

uint64_t BackForwardList::backListCount(BackForwardList *this)
{
  v1 = *(this + 14);
  if (v1 == -1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t BackForwardList::forwardListCount(BackForwardList *this)
{
  v1 = *(this + 14);
  if (v1 == -1)
  {
    return 0;
  }

  else
  {
    return (*(this + 11) + ~v1);
  }
}

_DWORD *BackForwardList::itemAtIndex@<X0>(_DWORD *result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (-result[14] <= a2)
  {
    v5 = result;
    result = (*(*result + 56))(result);
    if (result >= a2)
    {
      v6 = v5[14] + a2;
      if (v5[11] <= v6)
      {
        __break(0xC471u);
      }

      else
      {
        v7 = *(*(v5 + 4) + 8 * v6);
        ++*(v7 + 8);
        *a3 = v7;
      }
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t BackForwardList::close(uint64_t this, void *a2)
{
  v2 = this;
  if (*(this + 40))
  {
    v3 = *(this + 44);
    v4 = *(this + 32);
    if (v3)
    {
      v5 = 8 * v3;
      do
      {
        this = *v4;
        *v4 = 0;
        if (this)
        {
          if (*(this + 8) == 1)
          {
            v6 = MEMORY[0x1CCA64170]();
            this = WTF::fastFree(v6, v7);
          }

          else
          {
            --*(this + 8);
          }
        }

        v4 = (v4 + 8);
        v5 -= 8;
      }

      while (v5);
      *(v2 + 44) = 0;
      v4 = *(v2 + 32);
    }

    if (v4)
    {
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
      this = WTF::fastFree(v4, a2);
    }
  }

  v8 = *(v2 + 48);
  if (v8)
  {
    *(v2 + 48) = 0;
    v9 = *(v8 - 1);
    if (v9)
    {
      v10 = v8;
      do
      {
        v13 = *v10;
        if (*v10 != -1)
        {
          *v10 = 0;
          if (v13)
          {
            if (*(v13 + 8) == 1)
            {
              v11 = MEMORY[0x1CCA64170]();
              WTF::fastFree(v11, v12);
            }

            else
            {
              --*(v13 + 8);
            }
          }
        }

        ++v10;
        --v9;
      }

      while (v9);
    }

    this = WTF::fastFree((v8 - 2), a2);
  }

  *(v2 + 24) = 0;
  *(v2 + 64) = 1;
  return this;
}

BOOL BackForwardList::containsItem(BackForwardList *this, const HistoryItem *a2)
{
  v2 = *(this + 6);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 - 8);
  v4 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  v8 = *(v2 + 8 * v7);
  if (v8 == a2)
  {
    return 1;
  }

  v9 = 1;
  do
  {
    result = v8 != 0;
    if (!v8)
    {
      break;
    }

    v7 = (v7 + v9) & v3;
    v8 = *(v2 + 8 * v7);
    ++v9;
  }

  while (v8 != a2);
  return result;
}

uint64_t WTF::RefCountedAndCanMakeWeakPtr<WebCore::HistoryItem>::deref(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v2 = MEMORY[0x1CCA64170](result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*(result + 8);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::HashTraits<WTF::RefPtr<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((8 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 8 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = (~(v11 << 32) + v11) ^ ((~(v11 << 32) + v11) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v17 = v13 & ((v16 >> 31) ^ v16);
          v18 = 1;
          do
          {
            v19 = v17;
            v20 = *(v12 + 8 * v17);
            v17 = (v17 + v18++) & v13;
          }

          while (v20);
          *v10 = 0;
          *(v12 + 8 * v19) = v11;
          v21 = *v10;
          *v10 = 0;
          if (v21)
          {
            if (*(v21 + 8) == 1)
            {
              v22 = MEMORY[0x1CCA64170]();
              WTF::fastFree(v22, v23);
            }

            else
            {
              --*(v21 + 8);
            }
          }
        }

        else
        {
          *v10 = 0;
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

unint64_t WTF::Vector<WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3)
  {
    v6 = *(a1 + 12);
    if (v5 + 8 * v6 > a3)
    {
      v7 = *(a1 + 8);
      if (v7 + (v7 >> 1) <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = v7 + (v7 >> 1);
      }

      if (v8 <= a2)
      {
        v8 = a2;
      }

      if (!(v8 >> 29))
      {
        v9 = a3 - v5;
        if (v8 <= 0x10)
        {
          v10 = 16;
        }

        else
        {
          v10 = v8;
        }

        v11 = WTF::fastMalloc((8 * v10));
        *(a1 + 8) = v10;
        *a1 = v11;
        memcpy(v11, v5, 8 * v6);
        if (v5)
        {
          if (*a1 == v5)
          {
            *a1 = 0;
            *(a1 + 8) = 0;
          }

          WTF::fastFree(v5, v12);
        }

        return *a1 + v9;
      }

LABEL_31:
      __break(0xC471u);
      JUMPOUT(0x1C79C2E1CLL);
    }
  }

  v14 = *(a1 + 8);
  if (v14 + (v14 >> 1) <= v14 + 1)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v14 + (v14 >> 1);
  }

  if (v15 <= a2)
  {
    v15 = a2;
  }

  if (v15 >> 29)
  {
    goto LABEL_31;
  }

  if (v15 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a1 + 12);
  v18 = WTF::fastMalloc((8 * v16));
  *(a1 + 8) = v16;
  *a1 = v18;
  memcpy(v18, v5, 8 * v17);
  if (!v5)
  {
    return v3;
  }

  if (*a1 == v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  WTF::fastFree(v5, v19);
  return v3;
}

void *BinaryPropertyListPlan::writeBooleanTrue(void *this)
{
  ++this[7];
  if (this[1] == -1)
  {
    v1 = this[6];
    this[6] = v1 + 1;
    this[1] = v1;
    ++this[8];
  }

  return this;
}

uint64_t *BinaryPropertyListPlan::writeInteger(uint64_t *this, int a2)
{
  v2 = this;
  ++this[7];
  if (!a2)
  {
    if (this[2] != -1)
    {
      return this;
    }

    v18 = this[6];
    this[2] = v18;
    this[6] = v18 + 1;
    goto LABEL_26;
  }

  if (a2 == -1)
  {
    this = 372;
    __break(0xC471u);
    return this;
  }

  v4 = this[3];
  if (!v4)
  {
    this = WTF::HashTable<int,WTF::KeyValuePair<int,unsigned long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<int,unsigned long>>,WTF::DefaultHash<int>,WTF::HashMap<int,unsigned long,WTF::DefaultHash<int>,WTF::HashTraits<int>,WTF::HashTraits<unsigned long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<int>,WTF::FastMalloc>::rehash(this + 3, 8u);
    v4 = v2[3];
  }

  v5 = *(v4 - 8);
  v6 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
  v7 = (v6 ^ (v6 >> 6)) + ~((v6 ^ (v6 >> 6)) << 11);
  v8 = v5 & (v7 ^ HIWORD(v7));
  v9 = (v4 + 16 * v8);
  v10 = *v9;
  if (!*v9)
  {
LABEL_13:
    *v9 = a2;
    v9[1] = v2[6];
    v13 = *(v4 - 16);
    v14 = *(v4 - 12) + 1;
    *(v4 - 12) = v14;
    v15 = (v13 + v14);
    v16 = *(v4 - 4);
    if (v16 > 0x400)
    {
      if (v16 > 2 * v15)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (3 * v16 > 4 * v15)
      {
        goto LABEL_22;
      }

      if (!v16)
      {
        v17 = 8;
LABEL_21:
        this = WTF::HashTable<int,WTF::KeyValuePair<int,unsigned long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<int,unsigned long>>,WTF::DefaultHash<int>,WTF::HashMap<int,unsigned long,WTF::DefaultHash<int>,WTF::HashTraits<int>,WTF::HashTraits<unsigned long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<int>,WTF::FastMalloc>::rehash(v2 + 3, v17);
LABEL_22:
        ++v2[6];
        if (a2 >= 0x100)
        {
          if (a2 >= 0x10000)
          {
            v19 = 9;
            if (a2 >= 0)
            {
              v19 = 5;
            }

            v2[8] += v19;
          }

          else
          {
            v2[8] += 3;
          }

          return this;
        }

LABEL_26:
        v2[8] += 2;
        return this;
      }
    }

    v17 = v16 << (6 * v14 >= (2 * v16));
    goto LABEL_21;
  }

  v11 = 0;
  v12 = 1;
  while (v10 != a2)
  {
    if (v10 == -1)
    {
      v11 = v9;
    }

    v8 = (v8 + v12) & v5;
    v9 = (v4 + 16 * v8);
    v10 = *v9;
    ++v12;
    if (!*v9)
    {
      if (v11)
      {
        *v11 = 0;
        v11[1] = 0;
        v4 = v2[3];
        --*(v4 - 16);
        v9 = v11;
      }

      goto LABEL_13;
    }
  }

  return this;
}

uint64_t BinaryPropertyListPlan::writeString(BinaryPropertyListPlan *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3, double a4, double a5, double a6, int8x16_t a7)
{
  ++*(this + 7);
  if (*a2 == -1 || !*a2)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79C32C8);
  }

  v9 = *(this + 4);
  if (!v9)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(this + 4, 8u);
    v9 = *(this + 4);
    if (!v9)
    {
      v10 = 0;
      v11 = *a2;
      v12 = *(*a2 + 4);
      if (v12 >= 0x100)
      {
        goto LABEL_6;
      }

LABEL_8:
      v13 = WTF::StringImpl::hashSlowCase(v11);
      goto LABEL_9;
    }
  }

  v10 = *(v9 - 8);
  v11 = *a2;
  v12 = *(*a2 + 4);
  if (v12 < 0x100)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = v12 >> 8;
LABEL_9:
  v14 = 0;
  for (i = 1; ; ++i)
  {
    v16 = v13 & v10;
    v17 = (v9 + 16 * (v13 & v10));
    v18 = *v17;
    if (*v17 == -1)
    {
      v14 = (v9 + 16 * v16);
      goto LABEL_11;
    }

    if (!v18)
    {
      break;
    }

    result = WTF::equal(v18, *a2, a3);
    if (result)
    {
      return result;
    }

LABEL_11:
    v13 = i + v16;
  }

  if (v14)
  {
    v18 = 0;
    *v14 = 0;
    v14[1] = 0;
    --*(*(this + 4) - 16);
    v17 = v14;
  }

  v20 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    v18 = *v17;
  }

  *v17 = v20;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  v17[1] = *(this + 6);
  v21 = *(this + 4);
  if (v21)
  {
    v22 = *(v21 - 16);
    v23 = *(v21 - 12) + 1;
    *(v21 - 12) = v23;
    v24 = (v22 + v23);
    v25 = *(v21 - 4);
    if (v25 <= 0x400)
    {
      goto LABEL_25;
    }

LABEL_29:
    if (v25 <= 2 * v24)
    {
LABEL_30:
      v26 = v25 << (6 * v23 >= (2 * v25));
      goto LABEL_31;
    }
  }

  else
  {
    v23 = 1;
    MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
    v24 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
    v25 = MEMORY[0xFFFFFFFFFFFFFFFC];
    if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
    {
      goto LABEL_29;
    }

LABEL_25:
    if (3 * v25 <= 4 * v24)
    {
      if (v25)
      {
        goto LABEL_30;
      }

      v26 = 8;
LABEL_31:
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(this + 4, v26);
    }
  }

  ++*(this + 6);
  v27 = *a2;
  if (*a2)
  {
    v28 = *(v27 + 1);
    if (v28 >= 0xF)
    {
      if (v28 >= 0x100)
      {
        v29 = 6;
        if (v28 < 0x10000)
        {
          v29 = 4;
        }
      }

      else
      {
        v29 = 3;
      }
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v28 = 0;
    v29 = 1;
  }

  v30 = v28;
  v31 = v29 + v28 + *(this + 8);
  *(this + 8) = v31;
  result = WTF::String::containsOnlyASCII(v27, a4, a5, a6, a7);
  if ((result & 1) == 0)
  {
    *(this + 8) = v31 + v30;
  }

  return result;
}

uint64_t *BinaryPropertyListPlan::writeIntegerArray(uint64_t *this, int *a2, unint64_t a3)
{
  v5 = this;
  v6 = this[7] + 1;
  this[7] = v6;
  if (!a2 && !a3 || a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79C35E4);
  }

  v7 = this[5];
  if (v7 || (this = WTF::HashTable<IntegerArray,WTF::KeyValuePair<IntegerArray,unsigned long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IntegerArray,unsigned long>>,IntegerArrayHash,WTF::HashMap<IntegerArray,unsigned long,IntegerArrayHash,IntegerArrayHashTraits,WTF::HashTraits<unsigned long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,IntegerArrayHashTraits,WTF::FastMalloc>::rehash(this + 5, 8u, 0), (v7 = v5[5]) != 0))
  {
    v8 = *(v7 - 8);
    v9 = -1640531527;
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    v9 = -1640531527;
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  v10 = 4 * a3;
  v11 = a2;
  do
  {
    v12 = *v11++;
    v9 = ((v12 >> 5) & 0x7FFF800 ^ ((v9 + v12) << 16) ^ (v9 + v12)) + (((v12 >> 5) & 0x7FFF800 ^ ((v9 + v12) << 16) ^ (v9 + v12)) >> 11);
    v10 -= 4;
  }

  while (v10);
LABEL_9:
  v13 = (v9 ^ (8 * v9)) + ((v9 ^ (8 * v9)) >> 5);
  v14 = (v13 ^ (4 * v13)) + ((v13 ^ (4 * v13)) >> 15);
  if (v14 == v14 << 10)
  {
    v15 = 0x800000;
  }

  else
  {
    v15 = (v14 << 10) ^ v14;
  }

  v16 = v15 & v8;
  v17 = (v7 + 24 * (v15 & v8));
  v18 = *v17;
  v19 = v17[1];
  v20 = v19 == 0;
  if (*v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19 == 0;
  }

  if (v21)
  {
    goto LABEL_32;
  }

  v22 = 0;
  v23 = 0;
  do
  {
    this = v23;
    v23 = v17;
    if (v19 != -1)
    {
      if (v19 == a3)
      {
        v25 = a2;
        v26 = a3;
        if (v20)
        {
          return this;
        }

        while (1)
        {
          v28 = *v18++;
          v27 = v28;
          v29 = *v25++;
          if (v27 != v29)
          {
            break;
          }

          if (!--v26)
          {
            return this;
          }
        }
      }

      v23 = this;
    }

    v16 = (++v22 + v16) & v8;
    v17 = (v7 + 24 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = v19 == 0;
    if (*v17)
    {
      v24 = 0;
    }

    else
    {
      v24 = v19 == 0;
    }
  }

  while (!v24);
  if (!v23)
  {
LABEL_32:
    *v17 = a2;
    v17[1] = a3;
    v17[2] = 0;
    v23 = v17;
    v30 = *(v7 - 16);
  }

  else
  {
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = 0;
    v7 = v5[5];
    v30 = *(v7 - 16) - 1;
    *(v7 - 16) = v30;
    *v23 = a2;
    *(v23 + 8) = a3;
  }

  v31 = *(v7 - 12) + 1;
  *(v7 - 12) = v31;
  v32 = (v30 + v31);
  v33 = *(v7 - 4);
  if (v33 > 0x400)
  {
    if (v33 <= 2 * v32)
    {
      goto LABEL_38;
    }
  }

  else if (3 * v33 <= 4 * v32)
  {
    if (!v33)
    {
      v34 = 8;
LABEL_39:
      this = WTF::HashTable<IntegerArray,WTF::KeyValuePair<IntegerArray,unsigned long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IntegerArray,unsigned long>>,IntegerArrayHash,WTF::HashMap<IntegerArray,unsigned long,IntegerArrayHash,IntegerArrayHashTraits,WTF::HashTraits<unsigned long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,IntegerArrayHashTraits,WTF::FastMalloc>::rehash(v5 + 5, v34, v23);
      v23 = this;
      goto LABEL_40;
    }

LABEL_38:
    v34 = v33 << (6 * v31 >= (2 * v33));
    goto LABEL_39;
  }

LABEL_40:
  if (a3)
  {
    v35 = 0;
    do
    {
      this = (*(*v5 + 8))(v5, a2[v35++]);
    }

    while (a3 != v35);
    v36 = v5[6];
    v5[6] = v36 + 1;
    *(v23 + 16) = v36;
    v37 = 1;
    v38 = 3;
    v39 = 4;
    v40 = 10;
    if (!HIDWORD(a3))
    {
      v40 = 6;
    }

    if (a3 >= 0x10000)
    {
      v39 = v40;
    }

    if (a3 >= 0x100)
    {
      v38 = v39;
    }

    if (a3 >= 0xF)
    {
      v37 = v38;
    }
  }

  else
  {
    v41 = v5[6];
    v5[6] = v41 + 1;
    *(v23 + 16) = v41;
    v37 = 1;
  }

  v42 = v5[9] + a3;
  v5[8] += v37;
  v5[9] = v42;
  v5[7] = v6;
  return this;
}

BOOL BinaryPropertyListPlan::writeUniqueString(int64x2_t *this, const WTF::String *a2, double a3, double a4, double a5, int8x16_t a6)
{
  v7 = 1;
  v8 = vdupq_n_s64(1uLL);
  v9 = vaddq_s64(this[3], v8);
  this[3] = v9;
  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 4);
    if (v11 >= 0xF)
    {
      if (v11 >= 0x100)
      {
        v7 = 6;
        if (v11 < 0x10000)
        {
          v7 = 4;
        }
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = v7 + v11 + this[4].i64[0];
  this[4].i64[0] = v13;
  result = WTF::String::containsOnlyASCII(v10, *v9.i64, *v8.i64, a5, a6);
  if (!result)
  {
    this[4].i64[0] = v13 + v12;
  }

  return result;
}

size_t BinaryPropertyListPlan::writeUniqueString(int64x2_t *this, const char *__s)
{
  this[3] = vaddq_s64(this[3], vdupq_n_s64(1uLL));
  result = strlen(__s);
  v4 = 3;
  v5 = 6;
  if (result < 0x10000uLL)
  {
    v5 = 4;
  }

  if (result >= 0x100uLL)
  {
    v4 = v5;
  }

  if (result < 0xFuLL)
  {
    v4 = 1;
  }

  this[4].i64[0] += v4 + result;
  return result;
}

uint64_t BinaryPropertyListPlan::writeArrayStart(BinaryPropertyListPlan *this)
{
  v1 = *(this + 7);
  *(this + 7) = 0;
  return v1;
}

void *BinaryPropertyListPlan::writeArrayEnd(void *this, uint64_t a2)
{
  v2 = this[7];
  v3 = this[6] + 1;
  v4 = 1;
  v5 = 3;
  v6 = 10;
  if (!HIDWORD(v2))
  {
    v6 = 6;
  }

  if (v2 < 0x10000)
  {
    v6 = 4;
  }

  if (v2 >= 0x100)
  {
    v5 = v6;
  }

  v7 = this[9];
  if (v2 >= 0xF)
  {
    v4 = v5;
  }

  this[8] += v4;
  this[9] = v7 + v2;
  this[6] = v3;
  this[7] = a2 + 1;
  return this;
}

uint64_t BinaryPropertyListPlan::writeDictionaryStart(BinaryPropertyListPlan *this)
{
  v1 = *(this + 7);
  *(this + 7) = 0;
  return v1;
}

void *BinaryPropertyListPlan::writeDictionaryEnd(void *this, uint64_t a2)
{
  v2 = this[7];
  v3 = this[6] + 1;
  v4 = 1;
  v5 = 3;
  v6 = 10;
  if (!(v2 >> 33))
  {
    v6 = 6;
  }

  if (v2 < 0x20000)
  {
    v6 = 4;
  }

  if (v2 >= 0x200)
  {
    v5 = v6;
  }

  v7 = this[9];
  if (v2 >= 0x1E)
  {
    v4 = v5;
  }

  this[8] += v4;
  this[9] = v7 + v2;
  this[6] = v3;
  this[7] = a2 + 1;
  return this;
}

BOOL WTF::String::containsOnlyASCII(_BOOL8 this, double a2, double a3, double a4, int8x16_t a5)
{
  if (!this)
  {
    return 1;
  }

  v5 = *(this + 8);
  v6 = *(this + 4);
  v8 = (v5 & 7) == 0 || v6 == 0;
  if ((*(this + 16) & 4) == 0)
  {
    if (v8)
    {
      v9 = 0;
      v10 = ((v5 + 2 * v6) >> 1) & 3;
      if (v6 > v10)
      {
        goto LABEL_20;
      }

LABEL_22:
      if (!v6)
      {
        return (*&v9 & 0xFF80FF80FF80FF80) == 0;
      }

      if (v6 < 4)
      {
        v17 = v6;
        v18 = v5;
        goto LABEL_70;
      }

      if (v6 >= 0x10)
      {
        v25 = v6 & 0xFFFFFFFFFFFFFFF0;
        v27 = 0uLL;
        v28 = v9;
        v29 = (v5 + 8);
        v30 = v6 & 0xFFFFFFFFFFFFFFF0;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        do
        {
          v37 = *v29[-2].i8;
          v38 = vmovl_u16(*v37.i8);
          v39.i64[0] = v38.u32[0];
          v39.i64[1] = v38.u32[1];
          v40 = v39;
          v39.i64[0] = v38.u32[2];
          v39.i64[1] = v38.u32[3];
          v41 = v39;
          v42 = vmovl_high_u16(v37);
          v39.i64[0] = v42.u32[0];
          v39.i64[1] = v42.u32[1];
          v43 = v39;
          v39.i64[0] = v42.u32[2];
          v39.i64[1] = v42.u32[3];
          v44 = v39;
          v45 = vmovl_u16(*v29);
          v39.i64[0] = v45.u32[0];
          v39.i64[1] = v45.u32[1];
          v46 = v39;
          v39.i64[0] = v45.u32[2];
          v39.i64[1] = v45.u32[3];
          v47 = v39;
          v48 = vmovl_high_u16(*v29->i8);
          v39.i64[0] = v48.u32[0];
          v39.i64[1] = v48.u32[1];
          v49 = v39;
          v39.i64[0] = v48.u32[2];
          v39.i64[1] = v48.u32[3];
          v32 = vorrq_s8(v32, v44);
          v31 = vorrq_s8(v31, v43);
          v27 = vorrq_s8(v27, v41);
          v28 = vorrq_s8(v28, v40);
          v36 = vorrq_s8(v36, v39);
          v35 = vorrq_s8(v35, v49);
          v34 = vorrq_s8(v34, v47);
          v33 = vorrq_s8(v33, v46);
          v29 += 4;
          v30 -= 16;
        }

        while (v30);
        v50 = vorrq_s8(vorrq_s8(vorrq_s8(v33, v28), vorrq_s8(v35, v31)), vorrq_s8(vorrq_s8(v34, v27), vorrq_s8(v36, v32)));
        v9 = vorr_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
        if (v6 == v25)
        {
          return (*&v9 & 0xFF80FF80FF80FF80) == 0;
        }

        if ((v6 & 0xC) == 0)
        {
          v18 = &v5[v25];
          v17 = v6 & 0xF;
          do
          {
LABEL_70:
            v96 = *v18++;
            *&v9 |= v96;
            --v17;
          }

          while (v17);
          return (*&v9 & 0xFF80FF80FF80FF80) == 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v17 = v6 & 3;
      v18 = &v5[v6 & 0xFFFFFFFFFFFFFFFCLL];
      v51 = 0uLL;
      v52 = v9;
      v53 = &v5[v25];
      v54 = v25 - (v6 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v55 = *v53++;
        v56 = vmovl_u16(v55);
        v57.i64[0] = v56.u32[0];
        v57.i64[1] = v56.u32[1];
        v58 = v57;
        v57.i64[0] = v56.u32[2];
        v57.i64[1] = v56.u32[3];
        v51 = vorrq_s8(v51, v57);
        v52 = vorrq_s8(v52, v58);
        v54 += 4;
      }

      while (v54);
      v59 = vorrq_s8(v52, v51);
      v9 = vorr_s8(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
      if (v6 == (v6 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return (*&v9 & 0xFF80FF80FF80FF80) == 0;
      }

      goto LABEL_70;
    }

    v9 = 0;
    v13 = v5 + 1;
    do
    {
      v14 = *v5++;
      *&v9 |= v14;
      if (!--v6)
      {
        break;
      }
    }

    while (v13++ & 7);
    v10 = ((v5 + 2 * v6) >> 1) & 3;
    if (v6 <= v10)
    {
      goto LABEL_22;
    }

LABEL_20:
    while (v6 > 3)
    {
      v6 -= 4;
      v16 = *v5;
      v5 += 4;
      *&v9 |= v16;
      if (v6 <= v10)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_75;
  }

  if (v8)
  {
    v11 = 0;
    v12 = (v5 + v6) & 7;
    if (v6 > v12)
    {
      goto LABEL_31;
    }

LABEL_33:
    if (!v6)
    {
      return (*&v11 & 0x8080808080808080) == 0;
    }

    if (v6 < 4)
    {
      v23 = v6;
      v24 = v5;
      goto LABEL_73;
    }

    if (v6 >= 0x10)
    {
      v26 = v6 & 0xFFFFFFFFFFFFFFF0;
      v60 = 0uLL;
      v61 = v11;
      v62 = v6 & 0xFFFFFFFFFFFFFFF0;
      v63 = v5;
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      v67 = 0uLL;
      v68 = 0uLL;
      v69 = 0uLL;
      do
      {
        v70 = *v63++;
        v71 = vmovl_u8(*v70.i8);
        v72 = vmovl_u16(*v71.i8);
        v73.i64[0] = v72.u32[0];
        v73.i64[1] = v72.u32[1];
        v74 = v73;
        v75 = vmovl_high_u8(v70);
        v76 = vmovl_high_u16(v75);
        v73.i64[0] = v76.u32[2];
        v73.i64[1] = v76.u32[3];
        v77 = v73;
        v73.i64[0] = v72.u32[2];
        v73.i64[1] = v72.u32[3];
        v78 = v73;
        v79 = vmovl_high_u16(v71);
        v73.i64[0] = v79.u32[0];
        v73.i64[1] = v79.u32[1];
        v80 = v73;
        v81 = vmovl_u16(*v75.i8);
        v73.i64[0] = v81.u32[0];
        v73.i64[1] = v81.u32[1];
        v82 = v73;
        v73.i64[0] = v76.u32[0];
        v73.i64[1] = v76.u32[1];
        v83 = v73;
        v73.i64[0] = v79.u32[2];
        v73.i64[1] = v79.u32[3];
        v84 = v73;
        v73.i64[0] = v81.u32[2];
        v73.i64[1] = v81.u32[3];
        v67 = vorrq_s8(v67, v73);
        v65 = vorrq_s8(v65, v84);
        v68 = vorrq_s8(v68, v83);
        v66 = vorrq_s8(v66, v82);
        v64 = vorrq_s8(v64, v80);
        v60 = vorrq_s8(v60, v78);
        v69 = vorrq_s8(v69, v77);
        v61 = vorrq_s8(v61, v74);
        v62 -= 16;
      }

      while (v62);
      a5 = vorrq_s8(v64, v68);
      v85 = vorrq_s8(vorrq_s8(vorrq_s8(v61, v66), a5), vorrq_s8(vorrq_s8(v60, v67), vorrq_s8(v65, v69)));
      v11 = vorr_s8(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
      if (v6 == v26)
      {
        return (*&v11 & 0x8080808080808080) == 0;
      }

      if ((v6 & 0xC) == 0)
      {
        v24 = v5 + v26;
        v23 = v6 & 0xF;
        do
        {
LABEL_73:
          v97 = *v24++;
          *&v11 |= v97;
          --v23;
        }

        while (v23);
        return (*&v11 & 0x8080808080808080) == 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v23 = v6 & 3;
    v24 = v5 + (v6 & 0xFFFFFFFFFFFFFFFCLL);
    v86 = 0uLL;
    v87 = v11;
    v88 = (v5 + v26);
    v89 = v26 - (v6 & 0xFFFFFFFFFFFFFFFCLL);
    v90.i64[0] = 255;
    v90.i64[1] = 255;
    do
    {
      v91 = *v88++;
      a5.i32[0] = v91;
      v92 = vmovl_u16(*&vmovl_u8(*a5.i8));
      v93.i64[0] = v92.u32[0];
      v93.i64[1] = v92.u32[1];
      v94 = vandq_s8(v93, v90);
      v93.i64[0] = v92.u32[2];
      v93.i64[1] = v92.u32[3];
      a5 = vandq_s8(v93, v90);
      v86 = vorrq_s8(v86, a5);
      v87 = vorrq_s8(v87, v94);
      v89 += 4;
    }

    while (v89);
    v95 = vorrq_s8(v87, v86);
    v11 = vorr_s8(*v95.i8, *&vextq_s8(v95, v95, 8uLL));
    if (v6 == (v6 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return (*&v11 & 0x8080808080808080) == 0;
    }

    goto LABEL_73;
  }

  v19 = v6 - 1;
  v20 = (v5 + 1);
  v11.i8[0] = *v5;
  if (v6 != 1 && ((v5 + 1) & 7) != 0)
  {
    v20 = v5 + 1;
    v11.i8[0] |= *(v5 + 1);
    v19 = v6 - 2;
    if (v6 != 2 && (v20 & 7) != 0)
    {
      v20 = (v5 + 3);
      v11.i8[0] |= *(v5 + 2);
      v19 = v6 - 3;
      if (v6 != 3 && (v20 & 7) != 0)
      {
        v20 = v5 + 2;
        v11.i8[0] |= *(v5 + 3);
        v19 = v6 - 4;
        if (v6 != 4 && (v20 & 7) != 0)
        {
          v20 = (v5 + 5);
          v11.i8[0] |= *(v5 + 4);
          v19 = v6 - 5;
          if (v6 != 5 && (v20 & 7) != 0)
          {
            v20 = v5 + 3;
            v11.i8[0] |= *(v5 + 5);
            v19 = v6 - 6;
            if (v6 != 6 && (v20 & 7) != 0)
            {
              v20 = (v5 + 7);
              v11.i8[0] |= *(v5 + 6);
              v19 = v6 - 7;
              if (v6 != 7 && (v20 & 7) != 0)
              {
                v19 = v6 - 8;
                v20 = v5 + 4;
                v11.i8[0] |= *(v5 + 7);
              }
            }
          }
        }
      }
    }
  }

  v11 = v11.u8[0];
  v5 = v20;
  v6 = v19;
  v12 = (v20 + v19) & 7;
  if (v19 <= v12)
  {
    goto LABEL_33;
  }

LABEL_31:
  while (v6 > 7)
  {
    v6 -= 8;
    v22 = *v5;
    v5 += 4;
    *&v11 |= v22;
    if (v6 <= v12)
    {
      goto LABEL_33;
    }
  }

LABEL_75:
  __break(1u);
  return this;
}

uint64_t BinaryPropertyListSerializer::BinaryPropertyListSerializer(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4729B50;
  v4 = -1;
  *(a1 + 8) = &unk_1F4729AE0;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  (*(*a2 + 16))(a2);
  v5 = 0;
  v6 = *(a1 + 56);
  do
  {
    v4 <<= 8;
    ++v5;
  }

  while ((v4 & v6) != 0);
  v7 = 0;
  v8 = 0;
  *(a1 + 88) = v5;
  v9 = *(a1 + 72) + *(a1 + 80) * v5 + 8;
  *(a1 + 96) = v9;
  v10 = -1;
  do
  {
    v10 <<= 8;
    v8 += v6;
    ++v7;
  }

  while ((v10 & v9) != 0);
  *(a1 + 104) = v7;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  v11 = (*(*a2 + 24))(a2, v9 + v8 + 32);
  *(a1 + 112) = v11;
  *(a1 + 120) = v12;
  if (!v11)
  {
    return a1;
  }

  *(a1 + 128) = 8;
  *(a1 + 144) = *(a1 + 96);
  result = (*(*a2 + 16))(a2, a1);
  if (*(a1 + 120) <= 7uLL)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    **(a1 + 112) = 0x30307473696C7062;
    v14 = *(a1 + 120);
    if (v14 > 0x1F)
    {
      v15 = *(a1 + 112) + v14;
      *(v15 - 28) = 0;
      *(v15 - 32) = 0;
      *(v15 - 26) = *(a1 + 104);
      *(v15 - 25) = *(a1 + 88);
      *(v15 - 24) = bswap64(*(a1 + 56));
      *(v15 - 16) = bswap64(*(a1 + 56) - 1);
      *(v15 - 8) = bswap64(*(a1 + 96));
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t BinaryPropertyListSerializer::writeBooleanTrue(uint64_t this)
{
  v1 = *(this + 16);
  if (*(this + 136) != v1)
  {
    return BinaryPropertyListSerializer::addAggregateObjectReference(this, v1);
  }

  *(this + 136) = v1 + 1;
  v2 = *(this + 128);
  v3 = *(this + 104);
  v4 = *(this + 112) + *(this + 96) + v1 * v3 + v3;
  if (v3 > 4)
  {
    if (v3 > 6)
    {
      if (v3 != 7)
      {
        if (v3 != 8)
        {
          goto LABEL_22;
        }

        *(v4 - 8) = HIBYTE(v2);
      }

      *(v4 - 7) = BYTE6(v2);
    }

    else if (v3 == 5)
    {
LABEL_17:
      *(v4 - 5) = BYTE4(v2);
      goto LABEL_18;
    }

    *(v4 - 6) = BYTE5(v2);
    goto LABEL_17;
  }

  if (v3 > 2)
  {
    if (v3 == 3)
    {
LABEL_19:
      *(v4 - 3) = BYTE2(v2);
      goto LABEL_20;
    }

LABEL_18:
    *(v4 - 4) = BYTE3(v2);
    goto LABEL_19;
  }

  if (v3 == 1)
  {
LABEL_21:
    *(v4 - 1) = v2;
    v2 = *(this + 128);
    goto LABEL_22;
  }

  if (v3 == 2)
  {
LABEL_20:
    *(v4 - 2) = BYTE1(v2);
    goto LABEL_21;
  }

LABEL_22:
  *(this + 128) = v2 + 1;
  if (*(this + 120) > v2)
  {
    *(*(this + 112) + v2) = 9;
    return BinaryPropertyListSerializer::addAggregateObjectReference(this, v1);
  }

  __break(1u);
  return this;
}

uint64_t BinaryPropertyListSerializer::addAggregateObjectReference(uint64_t this, uint64_t a2)
{
  v2 = *(this + 88);
  if (v2 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        goto LABEL_27;
      }

      if (v2 != 2)
      {
        return this;
      }

LABEL_25:
      v9 = *(this + 144) - 1;
      *(this + 144) = v9;
      if (*(this + 120) > v9)
      {
        *(*(this + 112) + v9) = BYTE1(a2);
LABEL_27:
        v10 = *(this + 144) - 1;
        *(this + 144) = v10;
        if (*(this + 120) > v10)
        {
          *(*(this + 112) + v10) = a2;
          return this;
        }
      }

LABEL_29:
      __break(1u);
      return this;
    }

    if (v2 == 3)
    {
LABEL_23:
      v8 = *(this + 144) - 1;
      *(this + 144) = v8;
      if (*(this + 120) <= v8)
      {
        goto LABEL_29;
      }

      *(*(this + 112) + v8) = BYTE2(a2);
      goto LABEL_25;
    }

LABEL_21:
    v7 = *(this + 144) - 1;
    *(this + 144) = v7;
    if (*(this + 120) <= v7)
    {
      goto LABEL_29;
    }

    *(*(this + 112) + v7) = BYTE3(a2);
    goto LABEL_23;
  }

  if (v2 <= 6)
  {
    if (v2 == 5)
    {
LABEL_19:
      v6 = *(this + 144) - 1;
      *(this + 144) = v6;
      if (*(this + 120) <= v6)
      {
        goto LABEL_29;
      }

      *(*(this + 112) + v6) = BYTE4(a2);
      goto LABEL_21;
    }

LABEL_17:
    v5 = *(this + 144) - 1;
    *(this + 144) = v5;
    if (*(this + 120) <= v5)
    {
      goto LABEL_29;
    }

    *(*(this + 112) + v5) = BYTE5(a2);
    goto LABEL_19;
  }

  if (v2 == 7)
  {
LABEL_15:
    v4 = *(this + 144) - 1;
    *(this + 144) = v4;
    if (*(this + 120) <= v4)
    {
      goto LABEL_29;
    }

    *(*(this + 112) + v4) = BYTE6(a2);
    goto LABEL_17;
  }

  if (v2 == 8)
  {
    v3 = *(this + 144) - 1;
    *(this + 144) = v3;
    if (*(this + 120) <= v3)
    {
      goto LABEL_29;
    }

    *(*(this + 112) + v3) = HIBYTE(a2);
    goto LABEL_15;
  }

  return this;
}

uint64_t BinaryPropertyListSerializer::writeInteger(BinaryPropertyListSerializer *this, int a2)
{
  v3 = BinaryPropertyListSerializer::writeIntegerWithoutAddingAggregateObjectReference(this, a2);

  return BinaryPropertyListSerializer::addAggregateObjectReference(this, v3);
}

uint64_t BinaryPropertyListSerializer::writeIntegerWithoutAddingAggregateObjectReference(BinaryPropertyListSerializer *this, int a2)
{
  if (!a2)
  {
    v2 = *(this + 3);
    if (*(this + 17) == v2)
    {
      goto LABEL_3;
    }

    return v2;
  }

  if (a2 != -1)
  {
    v6 = *(this + 4);
    if (v6)
    {
      v7 = *(v6 - 8);
      v8 = 9 * ((~(a2 << 15) + a2) ^ ((~(a2 << 15) + a2) >> 10));
      v9 = (v8 ^ (v8 >> 6)) + ~((v8 ^ (v8 >> 6)) << 11);
      v10 = v7 & (v9 ^ HIWORD(v9));
      v11 = *(v6 + 16 * v10);
      if (v11 == a2)
      {
LABEL_14:
        v2 = *(v6 + 16 * v10 + 8);
        if (*(this + 17) != v2)
        {
          return v2;
        }

LABEL_3:
        *(this + 17) = v2 + 1;
        v3 = *(this + 16);
        v4 = *(this + 26);
        v5 = *(this + 14) + *(this + 12) + v2 * v4 + v4;
        if (v4 <= 4)
        {
          if (v4 <= 2)
          {
            if (v4 == 1)
            {
LABEL_32:
              *(v5 - 1) = v3;
              goto LABEL_33;
            }

            if (v4 != 2)
            {
              goto LABEL_33;
            }

LABEL_31:
            *(v5 - 2) = BYTE1(v3);
            goto LABEL_32;
          }

          if (v4 == 3)
          {
LABEL_30:
            *(v5 - 3) = BYTE2(v3);
            goto LABEL_31;
          }

LABEL_29:
          *(v5 - 4) = BYTE3(v3);
          goto LABEL_30;
        }

        if (v4 > 6)
        {
          if (v4 != 7)
          {
            if (v4 != 8)
            {
LABEL_33:
              BinaryPropertyListSerializer::appendInteger(this, a2);
              return v2;
            }

            *(v5 - 8) = HIBYTE(v3);
          }

          *(v5 - 7) = BYTE6(v3);
        }

        else if (v4 == 5)
        {
LABEL_28:
          *(v5 - 5) = BYTE4(v3);
          goto LABEL_29;
        }

        *(v5 - 6) = BYTE5(v3);
        goto LABEL_28;
      }

      v12 = 1;
      while (v11)
      {
        v10 = (v10 + v12) & v7;
        v11 = *(v6 + 16 * v10);
        ++v12;
        if (v11 == a2)
        {
          goto LABEL_14;
        }
      }
    }

    v2 = 0;
    if (*(this + 17))
    {
      return v2;
    }

    goto LABEL_3;
  }

  result = 372;
  __break(0xC471u);
  return result;
}

uint64_t BinaryPropertyListSerializer::writeString(BinaryPropertyListSerializer *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3, double a4, double a5, double a6, int8x16_t a7)
{
  v8 = *a2;
  if (*a2 == -1 || !v8)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79C445CLL);
  }

  v10 = *(this + 5);
  if (v10)
  {
    v11 = *(v10 - 8);
    v12 = *(v8 + 4);
    if (v12 < 0x100)
    {
      v13 = WTF::StringImpl::hashSlowCase(v8);
    }

    else
    {
      v13 = v12 >> 8;
    }

    for (i = 0; ; v13 = i + v16)
    {
      v16 = v13 & v11;
      v14 = *(v10 + 16 * v16);
      if (v14 != -1)
      {
        if (!v14)
        {
          goto LABEL_14;
        }

        if (WTF::equal(v14, *a2, a3))
        {
          break;
        }
      }

      ++i;
    }

    v14 = *(v10 + 16 * v16 + 8);
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  v17 = v14;
  if (*(this + 17) == v14)
  {
    BinaryPropertyListSerializer::appendStringObject(this, a2, a4, a5, a6, a7);
  }

  return BinaryPropertyListSerializer::addAggregateObjectReference(this, v17);
}

uint64_t BinaryPropertyListSerializer::appendStringObject(BinaryPropertyListSerializer *this, const WTF::String *a2, double a3, double a4, double a5, int8x16_t a6)
{
  v8 = *(this + 16);
  v9 = *(this + 17);
  *(this + 17) = v9 + 1;
  v10 = *(this + 26);
  v11 = *(this + 14) + *(this + 12) + v9 * v10 + v10;
  if (v10 > 4)
  {
    if (v10 > 6)
    {
      if (v10 != 7)
      {
        if (v10 != 8)
        {
          goto LABEL_21;
        }

        *(v11 - 8) = HIBYTE(v8);
      }

      *(v11 - 7) = BYTE6(v8);
    }

    else if (v10 == 5)
    {
LABEL_16:
      *(v11 - 5) = BYTE4(v8);
      goto LABEL_17;
    }

    *(v11 - 6) = BYTE5(v8);
    goto LABEL_16;
  }

  if (v10 > 2)
  {
    if (v10 == 3)
    {
LABEL_18:
      *(v11 - 3) = BYTE2(v8);
      goto LABEL_19;
    }

LABEL_17:
    *(v11 - 4) = BYTE3(v8);
    goto LABEL_18;
  }

  if (v10 == 1)
  {
LABEL_20:
    *(v11 - 1) = v8;
    goto LABEL_21;
  }

  if (v10 == 2)
  {
LABEL_19:
    *(v11 - 2) = BYTE1(v8);
    goto LABEL_20;
  }

LABEL_21:
  v12 = *a2;
  if (!*a2)
  {
    result = WTF::String::containsOnlyASCII(0, a3, a4, a5, a6);
    LODWORD(v13) = 0;
    v16 = 0;
    v15 = *(this + 16);
    if (result)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

  v13 = *(v12 + 4);
  result = WTF::String::containsOnlyASCII(v12, a3, a4, a5, a6);
  v15 = *(this + 16);
  if ((result & 1) == 0)
  {
    if (v13 > 0xE)
    {
      *(this + 16) = v15 + 1;
      if (*(this + 15) <= v15)
      {
        goto LABEL_69;
      }

      *(*(this + 14) + v15) = 111;
      result = BinaryPropertyListSerializer::appendInteger(this, v13);
LABEL_49:
      v24 = 0;
      while (1)
      {
        v25 = *a2;
        if (!*a2)
        {
          goto LABEL_56;
        }

        if (v24 >= *(v25 + 4))
        {
          break;
        }

        if ((*(v25 + 16) & 4) != 0)
        {
          LOBYTE(v25) = 0;
          v34 = *(this + 15);
          v26 = *(this + 16);
          *(this + 16) = v26 + 1;
          if (v34 <= v26)
          {
            goto LABEL_69;
          }
        }

        else
        {
          LOBYTE(v25) = *(*(v25 + 8) + 2 * v24 + 1);
          v27 = *(this + 15);
          v26 = *(this + 16);
          *(this + 16) = v26 + 1;
          if (v27 <= v26)
          {
            goto LABEL_69;
          }
        }

LABEL_57:
        *(*(this + 14) + v26) = v25;
        v29 = *a2;
        if (!*a2)
        {
          goto LABEL_63;
        }

        if (v24 >= *(v29 + 4))
        {
          LOBYTE(v29) = 0;
LABEL_63:
          v33 = *(this + 15);
          v31 = *(this + 16);
          *(this + 16) = v31 + 1;
          if (v33 <= v31)
          {
            goto LABEL_69;
          }

          goto LABEL_64;
        }

        v30 = *(v29 + 8);
        if ((*(v29 + 16) & 4) != 0)
        {
          LOBYTE(v29) = *(v30 + v24);
          v35 = *(this + 15);
          v31 = *(this + 16);
          *(this + 16) = v31 + 1;
          if (v35 <= v31)
          {
            goto LABEL_69;
          }
        }

        else
        {
          LOWORD(v29) = *(v30 + 2 * v24);
          v32 = *(this + 15);
          v31 = *(this + 16);
          *(this + 16) = v31 + 1;
          if (v32 <= v31)
          {
            goto LABEL_69;
          }
        }

LABEL_64:
        *(*(this + 14) + v31) = v29;
        if (v13 == ++v24)
        {
          return result;
        }
      }

      LOBYTE(v25) = 0;
LABEL_56:
      v28 = *(this + 15);
      v26 = *(this + 16);
      *(this + 16) = v26 + 1;
      if (v28 <= v26)
      {
        goto LABEL_69;
      }

      goto LABEL_57;
    }

    v16 = v13;
LABEL_44:
    *(this + 16) = v15 + 1;
    if (*(this + 15) <= v15)
    {
      goto LABEL_69;
    }

    *(*(this + 14) + v15) = v16 | 0x60;
    if (!v16)
    {
      return result;
    }

    v13 = v16;
    goto LABEL_49;
  }

  if (v13 > 0xE)
  {
    *(this + 16) = v15 + 1;
    if (*(this + 15) > v15)
    {
      *(*(this + 14) + v15) = 95;
      result = BinaryPropertyListSerializer::appendInteger(this, v13);
LABEL_30:
      v17 = 0;
      while (1)
      {
        v18 = *a2;
        if (!*a2)
        {
          goto LABEL_37;
        }

        if (v17 >= *(v18 + 4))
        {
          break;
        }

        v19 = *(v18 + 8);
        if ((*(v18 + 16) & 4) != 0)
        {
          LOBYTE(v18) = *(v19 + v17);
          v23 = *(this + 15);
          v20 = *(this + 16);
          *(this + 16) = v20 + 1;
          if (v23 <= v20)
          {
            goto LABEL_69;
          }
        }

        else
        {
          LOWORD(v18) = *(v19 + 2 * v17);
          v21 = *(this + 15);
          v20 = *(this + 16);
          *(this + 16) = v20 + 1;
          if (v21 <= v20)
          {
            goto LABEL_69;
          }
        }

LABEL_38:
        *(*(this + 14) + v20) = v18;
        if (v13 == ++v17)
        {
          return result;
        }
      }

      LOBYTE(v18) = 0;
LABEL_37:
      v22 = *(this + 15);
      v20 = *(this + 16);
      *(this + 16) = v20 + 1;
      if (v22 <= v20)
      {
        goto LABEL_69;
      }

      goto LABEL_38;
    }

    goto LABEL_69;
  }

LABEL_27:
  *(this + 16) = v15 + 1;
  if (*(this + 15) <= v15)
  {
LABEL_69:
    __break(1u);
    return result;
  }

  *(*(this + 14) + v15) = v13 | 0x50;
  if (v13)
  {
    v13 = v13;
    goto LABEL_30;
  }

  return result;
}

uint64_t BinaryPropertyListSerializer::writeIntegerArray(BinaryPropertyListSerializer *this, int *a2, unint64_t a3)
{
  if (!a2 && !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x1C79C4D10);
  }

  if (a3 == -1)
  {
LABEL_103:
    __break(0xC471u);
    JUMPOUT(0x1C79C4CF0);
  }

  v6 = *(this + 6);
  if (!v6)
  {
LABEL_23:
    v26 = 0;
    if (!a3)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v7 = -1640531527;
  if (a3)
  {
    v8 = 4 * a3;
    v9 = a2;
    do
    {
      v10 = *v9++;
      v7 = ((v10 >> 5) & 0x7FFF800 ^ ((v7 + v10) << 16) ^ (v7 + v10)) + (((v10 >> 5) & 0x7FFF800 ^ ((v7 + v10) << 16) ^ (v7 + v10)) >> 11);
      v8 -= 4;
    }

    while (v8);
  }

  v11 = *(v6 - 8);
  v12 = (v7 ^ (8 * v7)) + ((v7 ^ (8 * v7)) >> 5);
  v13 = (v12 ^ (4 * v12)) + ((v12 ^ (4 * v12)) >> 15);
  if (v13 == v13 << 10)
  {
    v14 = 0x800000;
  }

  else
  {
    v14 = (v13 << 10) ^ v13;
  }

  if (a3)
  {
    for (i = 0; ; v14 = i + v17)
    {
      v17 = v14 & v11;
      v18 = (v6 + 24 * v17);
      v19 = v18[1];
      if (v19 != -1)
      {
        v20 = *v18;
        v21 = a2;
        v22 = a3;
        if (v19 == a3)
        {
          while (1)
          {
            v24 = *v20++;
            v23 = v24;
            v25 = *v21++;
            if (v23 != v25)
            {
              break;
            }

            if (!--v22)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          if (v19)
          {
            v16 = 0;
          }

          else
          {
            v16 = v20 == 0;
          }

          if (v16)
          {
            goto LABEL_23;
          }
        }
      }

      ++i;
    }
  }

  v17 = v14 & v11;
  if (*(v6 + 24 * v17 + 8))
  {
    v27 = 1;
    do
    {
      v17 = (v17 + v27++) & v11;
    }

    while (*(v6 + 24 * v17 + 8));
  }

LABEL_28:
  v26 = *(v6 + 24 * v17 + 16);
  if (a3)
  {
LABEL_29:
    v28 = a2;
    v29 = a3;
    do
    {
      v30 = *v28++;
      BinaryPropertyListSerializer::writeIntegerWithoutAddingAggregateObjectReference(this, v30);
      --v29;
    }

    while (v29);
  }

LABEL_31:
  if (*(this + 17) != v26)
  {
    goto LABEL_55;
  }

  *(this + 17) = v26 + 1;
  v31 = *(this + 16);
  v32 = *(this + 26);
  v33 = *(this + 14) + *(this + 12) + v26 * v32 + v32;
  if (v32 > 4)
  {
    if (v32 > 6)
    {
      if (v32 != 7)
      {
        if (v32 != 8)
        {
          goto LABEL_52;
        }

        *(v33 - 8) = HIBYTE(v31);
      }

      *(v33 - 7) = BYTE6(v31);
    }

    else if (v32 == 5)
    {
LABEL_47:
      *(v33 - 5) = BYTE4(v31);
      goto LABEL_48;
    }

    *(v33 - 6) = BYTE5(v31);
    goto LABEL_47;
  }

  if (v32 > 2)
  {
    if (v32 == 3)
    {
LABEL_49:
      *(v33 - 3) = BYTE2(v31);
      goto LABEL_50;
    }

LABEL_48:
    *(v33 - 4) = BYTE3(v31);
    goto LABEL_49;
  }

  if (v32 == 1)
  {
LABEL_51:
    *(v33 - 1) = v31;
    v31 = *(this + 16);
    goto LABEL_52;
  }

  if (v32 == 2)
  {
LABEL_50:
    *(v33 - 2) = BYTE1(v31);
    goto LABEL_51;
  }

LABEL_52:
  *(this + 16) = v31 + 1;
  v34 = *(this + 15);
  if (a3 > 0xE)
  {
    if (v34 > v31)
    {
      *(*(this + 14) + v31) = -81;
      BinaryPropertyListSerializer::appendInteger(this, a3);
      goto LABEL_60;
    }

    goto LABEL_100;
  }

  if (v34 <= v31)
  {
LABEL_100:
    __break(1u);
    goto LABEL_103;
  }

  *(*(this + 14) + v31) = a3 | 0xA0;
  if (a3)
  {
LABEL_60:
    v36 = 0;
    v37 = 0;
    while (1)
    {
      v40 = a2[v36];
      v41 = (this + 24);
      if (!v40)
      {
        goto LABEL_72;
      }

      if (v40 == -1)
      {
        goto LABEL_103;
      }

      v42 = *(this + 4);
      if (!v42)
      {
        goto LABEL_73;
      }

      v43 = *(v42 - 8);
      v44 = 9 * ((v40 + ~(v40 << 15)) ^ ((v40 + ~(v40 << 15)) >> 10));
      v45 = (v44 ^ (v44 >> 6)) + ~((v44 ^ (v44 >> 6)) << 11);
      v46 = v43 & (v45 ^ HIWORD(v45));
      v47 = *(v42 + 16 * v46);
      if (v47 == v40)
      {
        break;
      }

      v48 = 1;
      while (v47)
      {
        v46 = (v46 + v48) & v43;
        v47 = *(v42 + 16 * v46);
        ++v48;
        if (v47 == v40)
        {
          goto LABEL_71;
        }
      }

      v42 = 0;
      v49 = *(this + 22);
      if (v49 > 4)
      {
LABEL_81:
        if (v49 <= 6)
        {
          if (v49 != 5)
          {
            goto LABEL_90;
          }

          goto LABEL_92;
        }

        if (v49 == 7)
        {
          goto LABEL_88;
        }

        if (v49 == 8)
        {
          v51 = *(this + 15);
          v50 = *(this + 16);
          *(this + 16) = v50 + 1;
          if (v51 <= v50)
          {
            goto LABEL_100;
          }

          *(*(this + 14) + v50) = HIBYTE(v42);
LABEL_88:
          v53 = *(this + 15);
          v52 = *(this + 16);
          *(this + 16) = v52 + 1;
          if (v53 <= v52)
          {
            goto LABEL_100;
          }

          *(*(this + 14) + v52) = BYTE6(v42);
LABEL_90:
          v55 = *(this + 15);
          v54 = *(this + 16);
          *(this + 16) = v54 + 1;
          if (v55 <= v54)
          {
            goto LABEL_100;
          }

          *(*(this + 14) + v54) = BYTE5(v42);
LABEL_92:
          v57 = *(this + 15);
          v56 = *(this + 16);
          *(this + 16) = v56 + 1;
          if (v57 <= v56)
          {
            goto LABEL_100;
          }

          *(*(this + 14) + v56) = BYTE4(v42);
LABEL_94:
          v59 = *(this + 15);
          v58 = *(this + 16);
          *(this + 16) = v58 + 1;
          if (v59 <= v58)
          {
            goto LABEL_100;
          }

          *(*(this + 14) + v58) = BYTE3(v42);
LABEL_96:
          v61 = *(this + 15);
          v60 = *(this + 16);
          *(this + 16) = v60 + 1;
          if (v61 <= v60)
          {
            goto LABEL_100;
          }

          *(*(this + 14) + v60) = BYTE2(v42);
LABEL_98:
          v63 = *(this + 15);
          v62 = *(this + 16);
          *(this + 16) = v62 + 1;
          if (v63 <= v62)
          {
            goto LABEL_100;
          }

          *(*(this + 14) + v62) = BYTE1(v42);
LABEL_61:
          v39 = *(this + 15);
          v38 = *(this + 16);
          *(this + 16) = v38 + 1;
          if (v39 <= v38)
          {
            goto LABEL_100;
          }

          *(*(this + 14) + v38) = v42;
          goto LABEL_63;
        }

        goto LABEL_63;
      }

LABEL_74:
      if (v49 > 2)
      {
        if (v49 != 3)
        {
          goto LABEL_94;
        }

        goto LABEL_96;
      }

      if (v49 == 1)
      {
        goto LABEL_61;
      }

      if (v49 == 2)
      {
        goto LABEL_98;
      }

LABEL_63:
      v36 = ++v37;
      if (v37 >= a3)
      {
        goto LABEL_55;
      }
    }

LABEL_71:
    v41 = (v42 + 16 * v46 + 8);
LABEL_72:
    v42 = *v41;
LABEL_73:
    v49 = *(this + 22);
    if (v49 > 4)
    {
      goto LABEL_81;
    }

    goto LABEL_74;
  }

LABEL_55:

  return BinaryPropertyListSerializer::addAggregateObjectReference(this, v26);
}

uint64_t BinaryPropertyListSerializer::writeUniqueString(BinaryPropertyListSerializer *this, const char *a2)
{
  BinaryPropertyListSerializer::addAggregateObjectReference(this, *(this + 17));
  v5 = *(this + 16);
  v4 = *(this + 17);
  *(this + 17) = v4 + 1;
  v6 = *(this + 26);
  v7 = *(this + 14) + *(this + 12) + v4 * v6 + v6;
  if (v6 > 4)
  {
    if (v6 > 6)
    {
      if (v6 != 7)
      {
        if (v6 != 8)
        {
          goto LABEL_21;
        }

        *(v7 - 8) = HIBYTE(v5);
      }

      *(v7 - 7) = BYTE6(v5);
    }

    else if (v6 == 5)
    {
LABEL_16:
      *(v7 - 5) = BYTE4(v5);
      goto LABEL_17;
    }

    *(v7 - 6) = BYTE5(v5);
    goto LABEL_16;
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
LABEL_18:
      *(v7 - 3) = BYTE2(v5);
      goto LABEL_19;
    }

LABEL_17:
    *(v7 - 4) = BYTE3(v5);
    goto LABEL_18;
  }

  if (v6 == 1)
  {
LABEL_20:
    *(v7 - 1) = v5;
    v5 = *(this + 16);
    goto LABEL_21;
  }

  if (v6 == 2)
  {
LABEL_19:
    *(v7 - 2) = BYTE1(v5);
    goto LABEL_20;
  }

LABEL_21:
  result = strlen(a2);
  v9 = result;
  *(this + 16) = v5 + 1;
  v10 = *(this + 15);
  if (result > 0xEuLL)
  {
    if (v10 > v5)
    {
      *(*(this + 14) + v5) = 95;
      result = BinaryPropertyListSerializer::appendInteger(this, result);
      v15 = *a2++;
      v11 = v15;
      v16 = *(this + 15);
      v13 = *(this + 16);
      *(this + 16) = v13 + 1;
      if (v16 > v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_29;
  }

  if (v10 <= v5)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  *(*(this + 14) + v5) = result | 0x50;
  if (result)
  {
    while (1)
    {
      v12 = *a2++;
      v11 = v12;
      v14 = *(this + 15);
      v13 = *(this + 16);
      *(this + 16) = v13 + 1;
      if (v14 <= v13)
      {
        break;
      }

LABEL_25:
      *(*(this + 14) + v13) = v11;
      if (!--v9)
      {
        return result;
      }
    }

    goto LABEL_29;
  }

  return result;
}

uint64_t BinaryPropertyListSerializer::writeUniqueString(BinaryPropertyListSerializer *this, const WTF::String *a2)
{
  BinaryPropertyListSerializer::addAggregateObjectReference(this, *(this + 17));

  return BinaryPropertyListSerializer::appendStringObject(this, a2, v4, v5, v6, v7);
}

void *BinaryPropertyListSerializer::writeArrayEnd(BinaryPropertyListSerializer *this, uint64_t a2)
{
  v4 = *(this + 16);
  v5 = *(this + 17);
  *(this + 17) = v5 + 1;
  v6 = *(this + 26);
  v7 = *(this + 14) + *(this + 12) + v5 * v6 + v6;
  if (v6 > 4)
  {
    if (v6 > 6)
    {
      if (v6 != 7)
      {
        if (v6 != 8)
        {
          goto LABEL_21;
        }

        *(v7 - 8) = HIBYTE(v4);
      }

      *(v7 - 7) = BYTE6(v4);
    }

    else if (v6 == 5)
    {
LABEL_16:
      *(v7 - 5) = BYTE4(v4);
      goto LABEL_17;
    }

    *(v7 - 6) = BYTE5(v4);
    goto LABEL_16;
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
LABEL_18:
      *(v7 - 3) = BYTE2(v4);
      goto LABEL_19;
    }

LABEL_17:
    *(v7 - 4) = BYTE3(v4);
    goto LABEL_18;
  }

  if (v6 == 1)
  {
LABEL_20:
    *(v7 - 1) = v4;
    v4 = *(this + 16);
    goto LABEL_21;
  }

  if (v6 == 2)
  {
LABEL_19:
    *(v7 - 2) = BYTE1(v4);
    goto LABEL_20;
  }

LABEL_21:
  v8 = *(this + 18);
  v9 = a2 - v8;
  v10 = (a2 - v8) / *(this + 22);
  *(this + 16) = v4 + 1;
  v11 = *(this + 15);
  if (v10 > 0xE)
  {
    if (v11 > v4)
    {
      *(*(this + 14) + v4) = -81;
      BinaryPropertyListSerializer::appendInteger(this, v10);
      goto LABEL_26;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v11 <= v4)
  {
    goto LABEL_42;
  }

  *(*(this + 14) + v4) = v10 | 0xA0;
LABEL_26:
  *(this + 18) = a2;
  v12 = *(this + 15);
  v13 = *(this + 16);
  if (v12 < v13)
  {
    goto LABEL_42;
  }

  v14 = v12 - v8;
  if (v12 < v8)
  {
    goto LABEL_42;
  }

  v15 = *(this + 14);
  if (v9 != -1)
  {
    v16 = v14 >= v9;
    v14 = v9;
    if (!v16)
    {
      goto LABEL_42;
    }
  }

  if (v12 - v13 < v14)
  {
LABEL_43:
    __break(0xC471u);
    JUMPOUT(0x1C79C516CLL);
  }

  v17 = v15 + v13;
  result = memmove((v15 + v13), (v15 + v8), v14);
  if (v14)
  {
    v19 = (v17 + v14 - 1);
    if (v19 > v17)
    {
      v20 = v13 + v15 + 1;
      do
      {
        v21 = *(v20 - 1);
        *(v20 - 1) = *v19;
        *v19-- = v21;
        v16 = v20++ >= v19;
      }

      while (!v16);
    }
  }

  v22 = *(this + 17);
  *(this + 16) += v9;
  if (v22 < *(this + 7))
  {

    return BinaryPropertyListSerializer::addAggregateObjectReference(this, v5);
  }

  return result;
}

void *BinaryPropertyListSerializer::appendInteger(void *this, unint64_t a2)
{
  if (a2 <= 0xFF)
  {
    v3 = this[15];
    v2 = this[16];
    this[16] = v2 + 1;
    if (v3 > v2)
    {
      v4 = this[14];
      this += 14;
      *(v4 + v2) = 16;
      v6 = this[1];
      v5 = this[2];
      this[2] = v5 + 1;
      if (v6 > v5)
      {
        *(*this + v5) = a2;
        return this;
      }
    }

    goto LABEL_23;
  }

  if (a2 >> 16)
  {
    v12 = this[15];
    v13 = this[16];
    this[16] = v13 + 1;
    if (HIDWORD(a2))
    {
      if (v12 <= v13)
      {
        goto LABEL_23;
      }

      v9 = this + 14;
      *(this[14] + v13) = 19;
      v17 = this[15];
      v16 = this[16];
      this[16] = v16 + 1;
      if (v17 <= v16)
      {
        goto LABEL_23;
      }

      *(this[14] + v16) = HIBYTE(a2);
      v19 = this[15];
      v18 = this[16];
      this[16] = v18 + 1;
      if (v19 <= v18)
      {
        goto LABEL_23;
      }

      *(this[14] + v18) = BYTE6(a2);
      v21 = this[15];
      v20 = this[16];
      this[16] = v20 + 1;
      if (v21 <= v20)
      {
        goto LABEL_23;
      }

      *(this[14] + v20) = BYTE5(a2);
      v23 = this[15];
      v22 = this[16];
      this[16] = v22 + 1;
      if (v23 <= v22)
      {
        goto LABEL_23;
      }

      *(this[14] + v22) = BYTE4(a2);
      v15 = this[15];
      v14 = this[16];
      this[16] = v14 + 1;
    }

    else
    {
      if (v12 <= v13)
      {
        goto LABEL_23;
      }

      v9 = this + 14;
      *(this[14] + v13) = 18;
      v15 = this[15];
      v14 = this[16];
      this[16] = v14 + 1;
    }

    if (v15 <= v14)
    {
      goto LABEL_23;
    }

    *(this[14] + v14) = BYTE3(a2);
    v25 = this[15];
    v24 = this[16];
    this[16] = v24 + 1;
    if (v25 <= v24)
    {
      goto LABEL_23;
    }

    *(this[14] + v24) = BYTE2(a2);
    v11 = this[15];
    v10 = this[16];
    this[16] = v10 + 1;
  }

  else
  {
    v8 = this[15];
    v7 = this[16];
    this[16] = v7 + 1;
    if (v8 <= v7)
    {
      goto LABEL_23;
    }

    v9 = this + 14;
    *(this[14] + v7) = 17;
    v11 = this[15];
    v10 = this[16];
    this[16] = v10 + 1;
  }

  if (v11 > v10)
  {
    *(this[14] + v10) = BYTE1(a2);
    v27 = this[15];
    v26 = this[16];
    this[16] = v26 + 1;
    if (v27 > v26)
    {
      *(*v9 + v26) = a2;
      return this;
    }
  }

LABEL_23:
  __break(1u);
  return this;
}

uint64_t BinaryPropertyListSerializer::writeDictionaryEnd(BinaryPropertyListSerializer *this, uint64_t a2)
{
  v4 = *(this + 16);
  v5 = *(this + 17);
  *(this + 17) = v5 + 1;
  v6 = *(this + 26);
  v7 = *(this + 14) + *(this + 12) + v5 * v6 + v6;
  if (v6 > 4)
  {
    if (v6 > 6)
    {
      if (v6 != 7)
      {
        if (v6 != 8)
        {
          goto LABEL_21;
        }

        *(v7 - 8) = HIBYTE(v4);
      }

      *(v7 - 7) = BYTE6(v4);
    }

    else if (v6 == 5)
    {
LABEL_16:
      *(v7 - 5) = BYTE4(v4);
      goto LABEL_17;
    }

    *(v7 - 6) = BYTE5(v4);
    goto LABEL_16;
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
LABEL_18:
      *(v7 - 3) = BYTE2(v4);
      goto LABEL_19;
    }

LABEL_17:
    *(v7 - 4) = BYTE3(v4);
    goto LABEL_18;
  }

  if (v6 == 1)
  {
LABEL_20:
    *(v7 - 1) = v4;
    v4 = *(this + 16);
    goto LABEL_21;
  }

  if (v6 == 2)
  {
LABEL_19:
    *(v7 - 2) = BYTE1(v4);
    goto LABEL_20;
  }

LABEL_21:
  v8 = *(this + 18);
  v9 = a2 - v8;
  v10 = (a2 - v8) / (2 * *(this + 22));
  *(this + 16) = v4 + 1;
  v11 = *(this + 15);
  if (v10 > 0xE)
  {
    if (v11 > v4)
    {
      *(*(this + 14) + v4) = -33;
      BinaryPropertyListSerializer::appendInteger(this, v10);
      goto LABEL_26;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v11 <= v4)
  {
    goto LABEL_41;
  }

  *(*(this + 14) + v4) = v10 | 0xD0;
LABEL_26:
  *(this + 18) = a2;
  v12 = *(this + 15);
  v13 = *(this + 16);
  if (v12 < v13)
  {
    goto LABEL_41;
  }

  v14 = v12 - v8;
  if (v12 < v8)
  {
    goto LABEL_41;
  }

  v15 = *(this + 14);
  if (v9 != -1)
  {
    v16 = v14 >= v9;
    v14 = v9;
    if (!v16)
    {
      goto LABEL_41;
    }
  }

  if (v12 - v13 < v14)
  {
LABEL_42:
    result = 1077;
    __break(0xC471u);
    return result;
  }

  v17 = v15 + v13;
  result = memmove((v15 + v13), (v15 + v8), v14);
  if (v14)
  {
    v19 = (v17 + v14 - 1);
    if (v19 > v17)
    {
      v20 = v13 + v15 + 1;
      do
      {
        v21 = *(v20 - 1);
        *(v20 - 1) = *v19;
        *v19-- = v21;
        v16 = v20++ >= v19;
      }

      while (!v16);
    }
  }

  v22 = *(this + 17);
  *(this + 16) += v9;
  if (v22 != *(this + 7))
  {

    return BinaryPropertyListSerializer::addAggregateObjectReference(this, v5);
  }

  return result;
}

uint64_t BinaryPropertyListWriter::writePropertyList(BinaryPropertyListWriter *this)
{
  result = BinaryPropertyListSerializer::BinaryPropertyListSerializer(v7, this);
  v7[0] = &unk_1F4729B50;
  v7[1] = &unk_1F4729AE0;
  if (v10)
  {
    result = WTF::fastFree((v10 - 16), v2);
  }

  v3 = v9;
  if (v9)
  {
    v4 = *(v9 - 1);
    if (v4)
    {
      v5 = v9;
      do
      {
        v6 = *v5;
        if (*v5 != -1)
        {
          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, v2);
            }
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    result = WTF::fastFree((v3 - 2), v2);
  }

  if (v8)
  {
    return WTF::fastFree((v8 - 16), v2);
  }

  return result;
}

void BinaryPropertyListSerializer::~BinaryPropertyListSerializer(BinaryPropertyListSerializer *this, void *a2)
{
  *this = &unk_1F4729B50;
  *(this + 1) = &unk_1F4729AE0;
  v3 = *(this + 6);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = *(this + 5);
      do
      {
        v7 = *v6;
        if (*v6 != -1)
        {
          *v6 = 0;
          if (v7)
          {
            if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, a2);
            }
          }
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  v8 = *(this + 4);
  if (v8)
  {
    WTF::fastFree((v8 - 16), a2);
  }
}

{
  *this = &unk_1F4729B50;
  *(this + 1) = &unk_1F4729AE0;
  v3 = *(this + 6);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = *(this + 5);
      do
      {
        v7 = *v6;
        if (*v6 != -1)
        {
          *v6 = 0;
          if (v7)
          {
            if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, a2);
            }
          }
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  v8 = *(this + 4);
  if (v8)
  {
    WTF::fastFree((v8 - 16), a2);
  }

  JUMPOUT(0x1CCA6A890);
}

void BinaryPropertyListPlan::~BinaryPropertyListPlan(BinaryPropertyListPlan *this, void *a2)
{
  *this = &unk_1F4729AE0;
  v3 = *(this + 5);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = *(this + 4);
      do
      {
        v7 = *v6;
        if (*v6 != -1)
        {
          *v6 = 0;
          if (v7)
          {
            if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, a2);
            }
          }
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  v8 = *(this + 3);
  if (v8)
  {
    WTF::fastFree((v8 - 16), a2);
  }
}

{
  *this = &unk_1F4729AE0;
  v3 = *(this + 5);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = *(this + 4);
      do
      {
        v7 = *v6;
        if (*v6 != -1)
        {
          *v6 = 0;
          if (v7)
          {
            if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, a2);
            }
          }
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  v8 = *(this + 3);
  if (v8)
  {
    WTF::fastFree((v8 - 16), a2);
  }

  JUMPOUT(0x1CCA6A890);
}

_DWORD *WTF::HashTable<int,WTF::KeyValuePair<int,unsigned long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<int,unsigned long>>,WTF::DefaultHash<int>,WTF::HashMap<int,unsigned long,WTF::DefaultHash<int>,WTF::HashTraits<int>,WTF::HashTraits<unsigned long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<int>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 16 * i);
      if ((*v10 + 1) >= 2)
      {
        v11 = *a1;
        if (*a1)
        {
          v12 = *(v11 - 8);
        }

        else
        {
          v12 = 0;
        }

        v13 = 0;
        v14 = 9 * ((*v10 + ~(*v10 << 15)) ^ ((*v10 + ~(*v10 << 15)) >> 10));
        v15 = ((v14 ^ (v14 >> 6)) + ~((v14 ^ (v14 >> 6)) << 11)) ^ (((v14 ^ (v14 >> 6)) + ~((v14 ^ (v14 >> 6)) << 11)) >> 16);
        do
        {
          v16 = v15 & v12;
          v15 = ++v13 + v16;
        }

        while (*(v11 + 16 * v16));
        *(v11 + 16 * v16) = *v10;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,unsigned long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,unsigned long>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,unsigned long,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<unsigned long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
            v14 = *(v11 + 4);
            if (v14 >= 0x100)
            {
              goto LABEL_12;
            }

LABEL_14:
            v15 = WTF::StringImpl::hashSlowCase(v11);
          }

          else
          {
            v13 = 0;
            v14 = *(v11 + 4);
            if (v14 < 0x100)
            {
              goto LABEL_14;
            }

LABEL_12:
            v15 = v14 >> 8;
          }

          v16 = 0;
          do
          {
            v17 = v15 & v13;
            v15 = ++v16 + v17;
          }

          while (*(v12 + 16 * v17));
          v18 = (v12 + 16 * v17);
          v19 = *v10;
          v20 = v10[1];
          *v10 = 0;
          *v18 = v19;
          v18[1] = v20;
          v21 = *v10;
          *v10 = 0;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v8);
          }

          goto LABEL_6;
        }

        *v10 = 0;
      }

LABEL_6:
      if (++v9 == v5)
      {
        goto LABEL_21;
      }
    }
  }

  if (v4)
  {
LABEL_21:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

void *WTF::HashTable<IntegerArray,WTF::KeyValuePair<IntegerArray,unsigned long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IntegerArray,unsigned long>>,IntegerArrayHash,WTF::HashMap<IntegerArray,unsigned long,IntegerArrayHash,IntegerArrayHashTraits,WTF::HashTraits<unsigned long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,IntegerArrayHashTraits,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, unsigned int **a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastMalloc((24 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 24 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = (v6 + 24 * v13);
      v16 = v15[1];
      if (v16 != -1)
      {
        v17 = *v15;
        if (v16 || v17 != 0)
        {
          break;
        }
      }

LABEL_8:
      if (++v13 == v7)
      {
        goto LABEL_32;
      }
    }

    v19 = *a1;
    if (*a1)
    {
      v20 = *(v19 - 8);
      v21 = -1640531527;
      if (!v16)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v20 = 0;
      v21 = -1640531527;
      if (!v16)
      {
        goto LABEL_20;
      }
    }

    v22 = 4 * v16;
    do
    {
      v23 = *v17++;
      v21 = ((v23 >> 5) & 0x7FFF800 ^ ((v21 + v23) << 16) ^ (v21 + v23)) + (((v23 >> 5) & 0x7FFF800 ^ ((v21 + v23) << 16) ^ (v21 + v23)) >> 11);
      v22 -= 4;
    }

    while (v22);
LABEL_20:
    v24 = 0;
    v25 = (v21 ^ (8 * v21)) + ((v21 ^ (8 * v21)) >> 5);
    v26 = (v25 ^ (4 * v25)) + ((v25 ^ (4 * v25)) >> 15);
    if (v26 == v26 << 10)
    {
      v27 = 0x800000;
    }

    else
    {
      v27 = (v26 << 10) ^ v26;
    }

    do
    {
      v28 = v27 & v20;
      v29 = (v19 + 24 * v28);
      v10 = v29[1];
      v27 = ++v24 + v28;
      if (*v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = v10 == 0;
      }
    }

    while (!v30);
    v31 = *v15;
    v29[2] = v15[2];
    *v29 = v31;
    if (v15 == a3)
    {
      v14 = v29;
    }

    goto LABEL_8;
  }

  v14 = 0;
  result = 0;
  if (v6)
  {
LABEL_32:
    WTF::fastFree((v6 - 16), v10);
    return v14;
  }

  return result;
}

void HistoryPropertyListWriter::HistoryPropertyListWriter(HistoryPropertyListWriter *this)
{
  *this = &unk_1F4729BC0;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(this + 1) = v3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(this + 2) = v3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(this + 3) = v3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(this + 4) = v3;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(this + 5) = v3;
  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = v2;
}

void sub_1C79C5F94(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = v2[4];
  v2[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = v2[3];
  v2[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = v2[2];
  v2[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = v2[1];
  v2[1] = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void HistoryPropertyListWriter::~HistoryPropertyListWriter(void **this)
{
  *this = &unk_1F4729BC0;
  CFAllocatorDeallocate(0, this[7]);
  v3 = this[6];
  this[6] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v2);
  }

  v4 = this[5];
  this[5] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v2);
  }

  v5 = this[4];
  this[4] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v2);
  }

  v6 = this[3];
  this[3] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  v7 = this[2];
  this[2] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v2);
  }

  v8 = this[1];
  this[1] = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v2);
    }
  }
}

uint64_t HistoryPropertyListWriter::buffer(HistoryPropertyListWriter *this, uint64_t a2)
{
  v4 = MEMORY[0x1CCA623D0](0, a2, 2686176063, 0);
  v5 = *(this + 7);
  *(this + 7) = v4;
  *(this + 8) = a2;
  CFAllocatorDeallocate(0, v5);
  CFAllocatorDeallocate(0, 0);
  return *(this + 7);
}

uint64_t HistoryPropertyListWriter::writeObjects(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 64))(a2);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  (*(*a2 + 16))(a2, &v11);
  v6 = v11;
  v11 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  (*(*a2 + 16))(a2, &v11);
  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  (*(*a2 + 8))(a2, 1);
  v9 = (*(*a2 + 48))(a2);
  (*(*a1 + 32))(a1, a2);
  (*(*a2 + 56))(a2, v9);
  return (*(*a2 + 72))(a2, v4);
}

void sub_1C79C63A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t HistoryPropertyListWriter::writeHistoryItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = *(*(a3 + 8) + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(*a2 + 64))(a2);
  v8 = WebCore::HistoryItem::title(v6);
  v9 = WebCore::HistoryItem::alternateTitle(v6);
  v10 = *(a3 + 8);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  (*(*a2 + 16))(a2, a1 + 48);
  if (*v8 && *(*v8 + 4))
  {
    (*(*a2 + 16))(a2, a1 + 40);
  }

  if (*v9 && *(*v9 + 4))
  {
    (*(*a2 + 16))(a2, a1 + 8);
  }

  if (v11 != 0.0)
  {
    (*(*a2 + 16))(a2, a1 + 24);
  }

  if (*(v6 + 136) == 1)
  {
    (*(*a2 + 16))(a2, a1 + 16);
  }

  if (v12)
  {
    (*(*a2 + 16))(a2, a1 + 32);
  }

  v13 = WebCore::HistoryItem::urlString(v6);
  (*(*a2 + 24))(a2, v13);
  if (*v8 && *(*v8 + 4))
  {
    (*(*a2 + 16))(a2, v8);
  }

  if (*v9 && *(*v9 + 4))
  {
    (*(*a2 + 16))(a2, v9);
  }

  if (v11 != 0.0)
  {
    snprintf(__str, 0x20uLL, "%.1lf", v11);
    (*(*a2 + 32))(a2, __str);
  }

  if (*(v6 + 136) == 1)
  {
    (**a2)(a2);
  }

  if (!v12)
  {
    return (*(*a2 + 72))(a2, v7);
  }

  result = (*(*a2 + 48))(a2);
  v15 = result;
  v16 = *(v12 + 12);
  if (!v16)
  {
LABEL_31:
    (*(*a2 + 56))(a2, v15);
    return (*(*a2 + 72))(a2, v7);
  }

  v17 = 0;
  v18 = 0;
  v19 = 8 * v16;
  while (v18 < *(v12 + 12))
  {
    result = (*(*a2 + 24))(a2, *v12 + v17);
    ++v18;
    v17 += 8;
    if (v19 == v17)
    {
      goto LABEL_31;
    }
  }

  __break(0xC471u);
  return result;
}

void InProcessIDBServer::~InProcessIDBServer(InProcessIDBServer *this)
{
  v16 = 0;
  v17 = 0;
  v2 = WTF::fastMalloc(0x18);
  *v2 = &unk_1F4729EA0;
  v2[1] = this;
  v2[2] = &v16;
  v18 = v2;
  (*(**(this + 8) + 48))(*(this + 8), &v18);
  v3 = v18;
  v18 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v18 = 0x7FF0000000000000;
  v19 = 0;
  WTF::BinarySemaphore::waitUntil();
  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (!v6)
  {
LABEL_8:
    v7 = *(this + 6);
    *(this + 6) = 0;
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*v6 != 1)
  {
    --*v6;
    goto LABEL_8;
  }

  v8 = *(v6 + 2);
  if (v8)
  {
    WTF::fastFree((v8 - 16), v4);
  }

  v9 = *(v6 + 1);
  if (v9)
  {
    v10 = (v9 + 8);
    if (!atomic_load(v10))
    {
LABEL_27:
      __break(0xC471u);
      JUMPOUT(0x1C79C6A4CLL);
    }

    atomic_fetch_add(v10, 0xFFFFFFFF);
  }

  if (*v6 != 1)
  {
    goto LABEL_27;
  }

  WTF::fastFree(v6, v4);
  v7 = *(this + 6);
  *(this + 6) = 0;
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WebCore::IDBClient::IDBConnectionToServer::~IDBConnectionToServer(v7);
    if (atomic_load((v14 + 4)))
    {
      *v14 = 0u;
      *(v14 + 16) = 0u;
    }

    else
    {
      bmalloc::api::tzoneFree(v14, v4);
    }
  }

LABEL_18:
  v12 = *(this + 5);
  *(this + 5) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 1);
  if (v13)
  {
    *(v13 + 8) = 0;
    *(this + 1) = 0;
    if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, v4);
    }
  }
}

{
  InProcessIDBServer::~InProcessIDBServer(this);
  if (atomic_load((v1 + 24)))
  {
    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  else
  {

    WTF::fastFree(v1, v2);
  }
}

void non-virtual thunk toInProcessIDBServer::~InProcessIDBServer(InProcessIDBServer *this)
{
  InProcessIDBServer::~InProcessIDBServer((this - 16));
}

{
  InProcessIDBServer::~InProcessIDBServer((this - 16));
  if (atomic_load(this + 2))
  {
    *(v2 + 64) = 0;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {

    WTF::fastFree(v2, v3);
  }
}

void InProcessIDBServer::InProcessIDBServer(InProcessIDBServer *this, SessionID a2, const WTF::String *a3)
{
  *(this + 3) = 0x100000000;
  *this = &unk_1F4729BF8;
  *(this + 1) = 0;
  *(this + 2) = &unk_1F4729DB8;
  *(this + 32) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  WTF::WorkQueue::create();
  WebCore::IDBClient::IDBConnectionToServer::create();
  v4 = *(this + 6);
  *(this + 6) = v10;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WebCore::IDBClient::IDBConnectionToServer::~IDBConnectionToServer(v4);
    if (atomic_load((v7 + 4)))
    {
      *v7 = 0u;
      *(v7 + 16) = 0u;
    }

    else
    {
      bmalloc::api::tzoneFree(v7, v8);
    }
  }

  v11[0] = this;
  atomic_fetch_add(this + 7, 1u);
  WTF::String::isolatedCopy();
  v5 = WTF::fastMalloc(0x20);
  *v5 = &unk_1F4729EC8;
  *(v5 + 8) = this;
  *(v5 + 16) = *v11;
  v12 = v5;
  (*(**(this + 8) + 48))(*(this + 8), &v12);
  v6 = v12;
  v12 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

unsigned int *InProcessIDBServer::deleteDatabase(atomic_uint *this, const WebCore::IDBOpenRequestData *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v19 = this;
  v20 = this;
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBOpenRequestData::isolatedCopy(&v21, a2);
  v3 = WTF::fastMalloc(0x90);
  v4 = v19;
  *v3 = &unk_1F4729F18;
  *(v3 + 8) = v4;
  *(v3 + 16) = v20;
  v5 = v21;
  *(v3 + 40) = v22;
  *(v3 + 24) = v5;
  v6 = v23;
  v20 = 0;
  v23 = 0;
  *(v3 + 48) = v6;
  *(v3 + 56) = 0;
  *(v3 + 80) = -1;
  if (v26 != 255)
  {
    if (v26)
    {
      *(v3 + 56) = v24;
    }

    else
    {
      *(v3 + 56) = v24;
      v7 = *(&v24 + 1);
      v24 = 0uLL;
      *(v3 + 64) = v7;
      *(v3 + 72) = v25;
    }

    *(v3 + 80) = v26;
  }

  *(v3 + 88) = 0;
  *(v3 + 112) = -1;
  if (v29 != 255)
  {
    if (v29)
    {
      *(v3 + 88) = v27;
    }

    else
    {
      *(v3 + 88) = v27;
      v8 = *(&v27 + 1);
      v27 = 0uLL;
      *(v3 + 96) = v8;
      *(v3 + 104) = v28;
    }

    *(v3 + 112) = v29;
  }

  *(v3 + 120) = v30;
  v9 = v32;
  *(v3 + 128) = v31;
  *(v3 + 136) = v9;
  v18 = v3;
  (*(**(this + 8) + 48))(*(this + 8), &v18);
  v11 = v18;
  v18 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (!v29)
  {
    v12 = *(&v27 + 1);
    *(&v27 + 1) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v27;
    *&v27 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }
  }

  v29 = -1;
  if (!v26)
  {
    v14 = *(&v24 + 1);
    *(&v24 + 1) = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v24;
    *&v24 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v10);
    }
  }

  v26 = -1;
  v16 = v23;
  v23 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  result = v20;
  v20 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 7);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t InProcessIDBServer::didDeleteDatabase(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F4729F40;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

unsigned int *InProcessIDBServer::openDatabase(atomic_uint *this, const WebCore::IDBOpenRequestData *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v19 = this;
  v20 = this;
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBOpenRequestData::isolatedCopy(&v21, a2);
  v3 = WTF::fastMalloc(0x90);
  v4 = v19;
  *v3 = &unk_1F4729F68;
  *(v3 + 8) = v4;
  *(v3 + 16) = v20;
  v5 = v21;
  *(v3 + 40) = v22;
  *(v3 + 24) = v5;
  v6 = v23;
  v20 = 0;
  v23 = 0;
  *(v3 + 48) = v6;
  *(v3 + 56) = 0;
  *(v3 + 80) = -1;
  if (v26 != 255)
  {
    if (v26)
    {
      *(v3 + 56) = v24;
    }

    else
    {
      *(v3 + 56) = v24;
      v7 = *(&v24 + 1);
      v24 = 0uLL;
      *(v3 + 64) = v7;
      *(v3 + 72) = v25;
    }

    *(v3 + 80) = v26;
  }

  *(v3 + 88) = 0;
  *(v3 + 112) = -1;
  if (v29 != 255)
  {
    if (v29)
    {
      *(v3 + 88) = v27;
    }

    else
    {
      *(v3 + 88) = v27;
      v8 = *(&v27 + 1);
      v27 = 0uLL;
      *(v3 + 96) = v8;
      *(v3 + 104) = v28;
    }

    *(v3 + 112) = v29;
  }

  *(v3 + 120) = v30;
  v9 = v32;
  *(v3 + 128) = v31;
  *(v3 + 136) = v9;
  v18 = v3;
  (*(**(this + 8) + 48))(*(this + 8), &v18);
  v11 = v18;
  v18 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (!v29)
  {
    v12 = *(&v27 + 1);
    *(&v27 + 1) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v27;
    *&v27 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }
  }

  v29 = -1;
  if (!v26)
  {
    v14 = *(&v24 + 1);
    *(&v24 + 1) = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v24;
    *&v24 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v10);
    }
  }

  v26 = -1;
  v16 = v23;
  v23 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  result = v20;
  v20 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 7);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t InProcessIDBServer::didOpenDatabase(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F4729F90;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didAbortTransaction(uint64_t a1, WebCore::IDBResourceIdentifier *this)
{
  atomic_fetch_add((a1 + 28), 1u);
  *&v8 = WebCore::IDBResourceIdentifier::isolatedCopy(this);
  *(&v8 + 1) = v2;
  WTF::String::isolatedCopy();
  WebCore::IDBError::IDBError();
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v3);
  }

  v4 = WTF::fastMalloc(0x38);
  *v4 = &unk_1F4729FB8;
  *(v4 + 8) = a1;
  *(v4 + 16) = a1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v9;
  *(v4 + 48) = v10;
  v12 = v4;
  WTF::callOnMainThread();
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return 0;
}

uint64_t InProcessIDBServer::didCommitTransaction(uint64_t a1, WebCore::IDBResourceIdentifier *this)
{
  atomic_fetch_add((a1 + 28), 1u);
  *&v8 = WebCore::IDBResourceIdentifier::isolatedCopy(this);
  *(&v8 + 1) = v2;
  WTF::String::isolatedCopy();
  WebCore::IDBError::IDBError();
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v3);
  }

  v4 = WTF::fastMalloc(0x38);
  *v4 = &unk_1F4729FE0;
  *(v4 + 8) = a1;
  *(v4 + 16) = a1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v9;
  *(v4 + 48) = v10;
  v12 = v4;
  WTF::callOnMainThread();
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return 0;
}

uint64_t InProcessIDBServer::didCreateObjectStore(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A008;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didDeleteObjectStore(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A030;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didRenameObjectStore(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A058;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didClearObjectStore(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A080;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didCreateIndex(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A0A8;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didDeleteIndex(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A0D0;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didRenameIndex(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A0F8;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didPutOrAdd(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A120;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didGetRecord(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A148;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didGetAllRecords(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A170;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didGetCount(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A198;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didDeleteRecord(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A1C0;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didOpenCursor(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A1E8;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::didIterateCursor(atomic_uint *this, const WebCore::IDBResultData *a2)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBResultData::isolatedCopy(&v12, a2);
  v2 = WTF::fastMalloc(0x80);
  *v2 = &unk_1F472A210;
  *(v2 + 8) = this;
  *(v2 + 16) = this;
  v3 = v12;
  *(v2 + 40) = v13;
  *(v2 + 24) = v3;
  *(v2 + 48) = v14;
  v4 = v15;
  v15 = 0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v16;
  *(v2 + 80) = v17;
  v17 = 0u;
  *(v2 + 96) = v18;
  v18 = 0u;
  v5 = v19;
  v6 = v20;
  v19 = 0;
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  v21 = v2;
  WTF::callOnMainThread();
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  WebCore::IDBResultData::~IDBResultData(&v12, v7);
  return 0;
}

uint64_t InProcessIDBServer::abortTransaction(atomic_uint *this, const WebCore::IDBResourceIdentifier *a2)
{
  atomic_fetch_add(this + 7, 1u);
  v3 = WebCore::IDBResourceIdentifier::isolatedCopy(a2);
  v5 = v4;
  v6 = WTF::fastMalloc(0x28);
  *v6 = &unk_1F472A238;
  v6[1] = this;
  v6[2] = this;
  v6[3] = v3;
  v6[4] = v5;
  v8 = v6;
  (*(**(this + 8) + 48))(*(this + 8), &v8);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t InProcessIDBServer::commitTransaction(atomic_uint *this, const WebCore::IDBResourceIdentifier *a2, uint64_t a3)
{
  atomic_fetch_add(this + 7, 1u);
  v5 = WebCore::IDBResourceIdentifier::isolatedCopy(a2);
  v7 = v6;
  v8 = WTF::fastMalloc(0x30);
  *v8 = &unk_1F472A260;
  v8[1] = this;
  v8[2] = this;
  v8[3] = v5;
  v8[4] = v7;
  v8[5] = a3;
  v10 = v8;
  (*(**(this + 8) + 48))(*(this + 8), &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t InProcessIDBServer::didFinishHandlingVersionChangeTransaction(uint64_t a1, uint64_t a2, WebCore::IDBResourceIdentifier *this)
{
  atomic_fetch_add((a1 + 28), 1u);
  v5 = WebCore::IDBResourceIdentifier::isolatedCopy(this);
  v7 = v6;
  v8 = WTF::fastMalloc(0x30);
  *v8 = &unk_1F472A288;
  v8[1] = a1;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  v8[5] = v7;
  v10 = v8;
  (*(**(a1 + 64) + 48))(*(a1 + 64), &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t InProcessIDBServer::createObjectStore(atomic_uint *this, const WebCore::IDBRequestData *a2, const WebCore::IDBObjectStoreInfo *a3)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBRequestData::isolatedCopy(v20, a2);
  WebCore::IDBObjectStoreInfo::isolatedCopy();
  v4 = WTF::fastMalloc(0xC0);
  *v4 = &unk_1F472A2B0;
  *(v4 + 8) = this;
  *(v4 + 16) = this;
  v6 = v20[1];
  v5 = v20[2];
  *(v4 + 24) = v20[0];
  *(v4 + 56) = v5;
  *(v4 + 40) = v6;
  v7 = v20[3];
  v8 = v20[4];
  v9 = v20[5];
  *(v4 + 120) = v21;
  *(v4 + 104) = v9;
  *(v4 + 88) = v8;
  *(v4 + 72) = v7;
  *(v4 + 128) = v22;
  v10 = v23;
  v23 = 0;
  *(v4 + 136) = v10;
  *(v4 + 144) = 0;
  *(v4 + 168) = 0;
  if (v27 == 1)
  {
    *(v4 + 160) = -1;
    v11 = v26;
    if (v26 != 255)
    {
      if (v26)
      {
        *(v4 + 144) = 0;
        *(v4 + 152) = 0;
        v12 = v24;
        v13 = v25;
        v25 = 0;
        *(v4 + 152) = v13;
        v11 = v26;
      }

      else
      {
        v12 = v24;
      }

      v24 = 0;
      *(v4 + 144) = v12;
      *(v4 + 160) = v11;
    }

    *(v4 + 168) = 1;
  }

  *(v4 + 176) = v28;
  v14 = v29;
  v29 = 0;
  *(v4 + 184) = v14;
  v30 = v4;
  (*(**(this + 8) + 48))(*(this + 8), &v30);
  v16 = v30;
  v30 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  WebCore::IDBObjectStoreInfo::~IDBObjectStoreInfo(&v22, v15);
  return 0;
}

uint64_t InProcessIDBServer::deleteObjectStore(atomic_uint *this, const WebCore::IDBRequestData *a2, const WTF::String *a3)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBRequestData::isolatedCopy(v17, a2);
  WTF::String::isolatedCopy();
  v4 = WTF::fastMalloc(0x88);
  *v4 = &unk_1F472A2D8;
  *(v4 + 8) = this;
  *(v4 + 16) = this;
  v5 = v17[2];
  v6 = v17[1];
  *(v4 + 24) = v17[0];
  *(v4 + 56) = v5;
  *(v4 + 40) = v6;
  v7 = v17[3];
  v8 = v17[4];
  v9 = v18;
  *(v4 + 104) = v17[5];
  *(v4 + 120) = v9;
  *(v4 + 88) = v8;
  *(v4 + 72) = v7;
  v10 = v19;
  v19 = 0;
  *(v4 + 128) = v10;
  v20 = v4;
  (*(**(this + 8) + 48))(*(this + 8), &v20);
  v12 = v20;
  v20 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  return 0;
}

uint64_t InProcessIDBServer::renameObjectStore(uint64_t a1, WebCore::IDBRequestData *this, uint64_t a3)
{
  atomic_fetch_add((a1 + 28), 1u);
  WebCore::IDBRequestData::isolatedCopy(v18, this);
  *(&v19 + 1) = a3;
  WTF::String::isolatedCopy();
  v5 = WTF::fastMalloc(0x90);
  *v5 = &unk_1F472A300;
  *(v5 + 8) = a1;
  *(v5 + 16) = a1;
  v6 = v18[3];
  v7 = v18[4];
  v8 = v18[5];
  *(v5 + 120) = v19;
  *(v5 + 88) = v7;
  *(v5 + 72) = v6;
  *(v5 + 104) = v8;
  v9 = v18[2];
  v10 = v18[0];
  *(v5 + 40) = v18[1];
  *(v5 + 24) = v10;
  *(v5 + 56) = v9;
  v11 = v20;
  v20 = 0;
  *(v5 + 136) = v11;
  v21 = v5;
  (*(**(a1 + 64) + 48))(*(a1 + 64), &v21);
  v13 = v21;
  v21 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  return 0;
}

uint64_t InProcessIDBServer::clearObjectStore(uint64_t a1, WebCore::IDBRequestData *this, uint64_t a3)
{
  atomic_fetch_add((a1 + 28), 1u);
  WebCore::IDBRequestData::isolatedCopy(v15, this);
  *(&v16 + 1) = a3;
  v5 = WTF::fastMalloc(0x88);
  *v5 = &unk_1F472A328;
  *(v5 + 8) = a1;
  *(v5 + 16) = a1;
  v6 = v15[3];
  v7 = v15[4];
  v8 = v15[5];
  *(v5 + 120) = v16;
  *(v5 + 104) = v8;
  *(v5 + 88) = v7;
  *(v5 + 72) = v6;
  v9 = v15[0];
  v10 = v15[1];
  *(v5 + 56) = v15[2];
  *(v5 + 40) = v10;
  *(v5 + 24) = v9;
  v17 = v5;
  (*(**(a1 + 64) + 48))(*(a1 + 64), &v17);
  v11 = v17;
  v17 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return 0;
}

uint64_t InProcessIDBServer::createIndex(atomic_uint *this, const WebCore::IDBRequestData *a2, const WebCore::IDBIndexInfo *a3)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBRequestData::isolatedCopy(v24, a2);
  WebCore::IDBIndexInfo::isolatedCopy();
  v4 = WTF::fastMalloc(0xB8);
  *v4 = &unk_1F472A350;
  *(v4 + 8) = this;
  *(v4 + 16) = this;
  v5 = v24[2];
  v6 = v24[1];
  *(v4 + 24) = v24[0];
  *(v4 + 56) = v5;
  *(v4 + 40) = v6;
  v7 = v24[3];
  v8 = v24[4];
  v9 = v24[5];
  *(v4 + 120) = v25;
  *(v4 + 104) = v9;
  *(v4 + 88) = v8;
  *(v4 + 72) = v7;
  *(v4 + 128) = v26;
  v10 = v27;
  v27 = 0;
  *(v4 + 144) = v10;
  *(v4 + 152) = 0;
  *(v4 + 168) = -1;
  v11 = v30;
  if (v30 != 255)
  {
    if (v30)
    {
      *(v4 + 152) = 0;
      *(v4 + 160) = 0;
      v12 = v28;
      v13 = v29;
      v29 = 0;
      *(v4 + 160) = v13;
      v11 = v30;
    }

    else
    {
      v12 = v28;
    }

    v28 = 0;
    *(v4 + 152) = v12;
    *(v4 + 168) = v11;
  }

  *(v4 + 176) = v31;
  v32 = v4;
  (*(**(this + 8) + 48))(*(this + 8), &v32);
  v15 = v32;
  v32 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  if (v30 != 255)
  {
    if (v30)
    {
      v17 = v28;
      if (HIDWORD(v29))
      {
        v18 = 8 * HIDWORD(v29);
        do
        {
          v19 = *v17;
          *v17 = 0;
          if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v14);
          }

          v17 = (v17 + 8);
          v18 -= 8;
        }

        while (v18);
        v17 = v28;
      }

      if (v17)
      {
        v28 = 0;
        LODWORD(v29) = 0;
        WTF::fastFree(v17, v14);
      }
    }

    else
    {
      v16 = v28;
      v28 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v14);
      }
    }
  }

  v30 = -1;
  v20 = v27;
  v27 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v14);
  }

  return 0;
}

uint64_t InProcessIDBServer::createIndex(WebCore::IDBRequestData const&,WebCore::IDBIndexInfo const&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 160) != 255)
  {
    if (*(a1 + 160))
    {
      v4 = *(a1 + 156);
      v5 = *(a1 + 144);
      if (v4)
      {
        v6 = 8 * v4;
        do
        {
          v7 = *v5;
          *v5 = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, a2);
          }

          v5 = (v5 + 8);
          v6 -= 8;
        }

        while (v6);
        v5 = *(a1 + 144);
      }

      if (v5)
      {
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        WTF::fastFree(v5, a2);
      }
    }

    else
    {
      v3 = *(a1 + 144);
      *(a1 + 144) = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }
    }
  }

  *(a1 + 160) = -1;
  v8 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  v9 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (!v9 || atomic_fetch_add(v9 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v9 + 7);
  (*(*v9 + 8))(v9);
  return a1;
}

uint64_t InProcessIDBServer::deleteIndex(uint64_t a1, WebCore::IDBRequestData *this, uint64_t a3)
{
  atomic_fetch_add((a1 + 28), 1u);
  WebCore::IDBRequestData::isolatedCopy(v18, this);
  *(&v19 + 1) = a3;
  WTF::String::isolatedCopy();
  v5 = WTF::fastMalloc(0x90);
  *v5 = &unk_1F472A378;
  *(v5 + 8) = a1;
  *(v5 + 16) = a1;
  v6 = v18[3];
  v7 = v18[4];
  v8 = v18[5];
  *(v5 + 120) = v19;
  *(v5 + 88) = v7;
  *(v5 + 72) = v6;
  *(v5 + 104) = v8;
  v9 = v18[2];
  v10 = v18[0];
  *(v5 + 40) = v18[1];
  *(v5 + 24) = v10;
  *(v5 + 56) = v9;
  v11 = v20;
  v20 = 0;
  *(v5 + 136) = v11;
  v21 = v5;
  (*(**(a1 + 64) + 48))(*(a1 + 64), &v21);
  v13 = v21;
  v21 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  return 0;
}

uint64_t InProcessIDBServer::renameIndex(uint64_t a1, WebCore::IDBRequestData *this, uint64_t a3, uint64_t a4)
{
  atomic_fetch_add((a1 + 28), 1u);
  WebCore::IDBRequestData::isolatedCopy(v21, this);
  *(&v22 + 1) = a3;
  v23 = a4;
  WTF::String::isolatedCopy();
  v7 = WTF::fastMalloc(0x98);
  *v7 = &unk_1F472A3A0;
  *(v7 + 8) = a1;
  *(v7 + 16) = a1;
  v8 = v21[3];
  v9 = v21[2];
  v10 = v21[1];
  *(v7 + 24) = v21[0];
  *(v7 + 40) = v10;
  *(v7 + 56) = v9;
  *(v7 + 72) = v8;
  v11 = v21[4];
  v12 = v21[5];
  v13 = v23;
  *(v7 + 120) = v22;
  *(v7 + 136) = v13;
  *(v7 + 104) = v12;
  *(v7 + 88) = v11;
  v14 = v24;
  v24 = 0;
  *(v7 + 144) = v14;
  v25 = v7;
  (*(**(a1 + 64) + 48))(*(a1 + 64), &v25);
  v16 = v25;
  v25 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = v24;
  v24 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v15);
  }

  return 0;
}

uint64_t InProcessIDBServer::putOrAdd(uint64_t a1, WebCore::IDBRequestData *this, WebCore::IDBKeyData *a3, WebCore::IDBValue *a4, void *a5, char a6)
{
  v133 = *MEMORY[0x1E69E9840];
  atomic_fetch_add((a1 + 28), 1u);
  WebCore::IDBRequestData::isolatedCopy(v113, this);
  WebCore::IDBKeyData::isolatedCopy(&v115, a3);
  WebCore::IDBValue::isolatedCopy(&v119, a4);
  v10 = *a5;
  v122 = 0;
  v109 = a6;
  if (!v10)
  {
    v12 = 0;
    LODWORD(v11) = 0;
    goto LABEL_11;
  }

  v11 = *(v10 - 1);
  v12 = &v10[6 * v11];
  if (!*(v10 - 3))
  {
LABEL_11:
    v14 = v12;
    v12 = &v10[6 * v11];
    if (v10)
    {
      goto LABEL_8;
    }

    v15 = 0;
    if (v14)
    {
LABEL_15:
      v108 = v15;
      while (1)
      {
        v16 = *v14;
        WebCore::IndexKey::isolatedCopy();
        if (v16 == -1 || !v16)
        {
          __break(0xC471u);
          JUMPOUT(0x1C79CAD54);
        }

        v19 = v122;
        if (!v122)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(&v122, 8u);
          v19 = v122;
        }

        v20 = *(v19 - 8);
        v21 = (v16 + ~(v16 << 32)) ^ ((v16 + ~(v16 << 32)) >> 22);
        v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
        v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
        v24 = v20 & ((v23 >> 31) ^ v23);
        v25 = (v19 + 48 * v24);
        v26 = *v25;
        if (*v25)
        {
          v27 = 0;
          v28 = 1;
          while (v26 != v16)
          {
            if (v26 == -1)
            {
              v27 = v25;
            }

            v24 = (v24 + v28) & v20;
            v25 = (v19 + 48 * v24);
            v26 = *v25;
            ++v28;
            if (!*v25)
            {
              if (v27)
              {
                *v27 = 0;
                WebCore::IndexKey::IndexKey((v27 + 1));
                --*(v19 - 16);
                v25 = v27;
              }

              goto LABEL_29;
            }
          }

          goto LABEL_158;
        }

LABEL_29:
        *v25 = v16;
        LOBYTE(v129) = 0;
        v132 = -1;
        if (v128 > 1u)
        {
          if (v128 == 2)
          {
            v29 = v124;
            v31 = v125;
            v30 = HIDWORD(v125);
            v124 = 0;
            v125 = 0;
            v132 = 2;
            if (*(v25 + 40) > 1u)
            {
              if (*(v25 + 40) != 255)
              {
                v45 = *(v25 + 5);
                v46 = v25[1];
                if (v45)
                {
                  v47 = 32 * v45;
                  v48 = v46 + 24;
                  do
                  {
                    if (*v48 != 255)
                    {
                      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v48 - 16), v17);
                    }

                    *v48 = -1;
                    v48 += 32;
                    v47 -= 32;
                  }

                  while (v47);
                  v46 = v25[1];
                  v15 = v108;
                }

                if (v46)
                {
                  v25[1] = 0;
                  *(v25 + 4) = 0;
                  WTF::fastFree(v46, v17);
                }

                *&v18 = 0;
                v129 = v18;
                v25[1] = v29;
                *(v25 + 4) = v31;
                *(v25 + 5) = v30;
                goto LABEL_137;
              }
            }

            else if (*(v25 + 40))
            {
              if (*(v25 + 32) != 255)
              {
                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
              }

              *(v25 + 32) = -1;
            }

            *&v18 = 0;
            v129 = v18;
            v25[1] = v29;
            *(v25 + 4) = v31;
            *(v25 + 5) = v30;
            v38 = 2;
            goto LABEL_136;
          }

          if (*(v25 + 40) > 1u)
          {
            if (*(v25 + 40) != 2)
            {
              goto LABEL_149;
            }

            v41 = *(v25 + 5);
            v42 = v25[1];
            if (v41)
            {
              v43 = 32 * v41;
              v44 = v42 + 24;
              do
              {
                if (*v44 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v44 - 16), v17);
                }

                *v44 = -1;
                v44 += 32;
                v43 -= 32;
              }

              while (v43);
              v42 = v25[1];
            }

            if (v42)
            {
              v25[1] = 0;
              *(v25 + 4) = 0;
              WTF::fastFree(v42, v17);
            }
          }

          else if (*(v25 + 40))
          {
            if (*(v25 + 32) != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
            }

            *(v25 + 32) = -1;
          }

          *(v25 + 40) = -1;
          goto LABEL_137;
        }

        if (!v128)
        {
          *&v129 = 0;
          v132 = 0;
          if (*(v25 + 40) > 1u)
          {
            if (*(v25 + 40) == 2)
            {
              v34 = *(v25 + 5);
              v35 = v25[1];
              if (v34)
              {
                v36 = 32 * v34;
                v37 = v35 + 24;
                do
                {
                  if (*v37 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v37 - 16), v17);
                  }

                  *v37 = -1;
                  v37 += 32;
                  v36 -= 32;
                }

                while (v36);
                v35 = v25[1];
              }

              if (v35)
              {
                v25[1] = 0;
                *(v25 + 4) = 0;
                WTF::fastFree(v35, v17);
              }
            }
          }

          else
          {
            if (!*(v25 + 40))
            {
              v25[1] = 0;
              goto LABEL_149;
            }

            if (*(v25 + 32) != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
            }

            *(v25 + 32) = -1;
          }

          v25[1] = 0;
          *(v25 + 40) = 0;
          goto LABEL_137;
        }

        v32 = v124;
        LOWORD(v129) = v124;
        BYTE8(v129) = 0;
        v131 = -1;
        v33 = v127;
        if (v127 > 4u)
        {
          break;
        }

        if (v127 <= 1u)
        {
          if (!v127)
          {
            *(&v129 + 1) = 0;
          }

          goto LABEL_85;
        }

        if (v127 != 2)
        {
          if (v127 != 3)
          {
            *(&v129 + 1) = v125;
            goto LABEL_85;
          }

LABEL_83:
          v49 = v125;
          v125 = 0;
          goto LABEL_84;
        }

        *(&v129 + 1) = v125;
        LODWORD(v16) = v126;
        v56 = HIDWORD(v126);
        v125 = 0;
        v126 = 0;
        v130 = __PAIR64__(v56, v16);
        v107 = v56;
        v131 = 2;
        v132 = 1;
        v39 = *(v25 + 40);
        if (v39 > 1)
        {
LABEL_86:
          if (v39 == 2)
          {
            v50 = *(v25 + 5);
            v51 = v25[1];
            if (v50)
            {
              v52 = 32 * v50;
              v53 = v51 + 24;
              do
              {
                if (*v53 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v53 - 16), v17);
                }

                *v53 = -1;
                v53 += 32;
                v52 -= 32;
              }

              while (v52);
              v51 = v25[1];
              v15 = v108;
            }

            if (v51)
            {
              v25[1] = 0;
              *(v25 + 4) = 0;
              WTF::fastFree(v51, v17);
            }
          }

LABEL_107:
          *(v25 + 40) = -1;
          *(v25 + 4) = v32;
          *(v25 + 16) = 0;
          *(v25 + 32) = -1;
          v54 = v131;
          if (v131 > 4u)
          {
            if (v131 <= 6u)
            {
              if (v131 != 5)
              {
                goto LABEL_119;
              }

              v55 = *(&v129 + 1);
LABEL_120:
              v25[2] = v55;
              goto LABEL_134;
            }

            if (v131 - 7 < 2)
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (v131 <= 1u)
            {
              if (!v131)
              {
                v25[2] = 0;
              }
            }

            else
            {
              if (v131 != 2)
              {
                if (v131 != 3)
                {
                  v25[2] = *(&v129 + 1);
                  goto LABEL_134;
                }

LABEL_119:
                v55 = *(&v129 + 1);
                *(&v129 + 1) = 0;
                goto LABEL_120;
              }

              v25[2] = *(&v129 + 1);
              *(&v129 + 1) = 0;
              v130 = 0;
              *(v25 + 6) = v16;
              *(v25 + 7) = v107;
            }

LABEL_134:
            *(v25 + 32) = v54;
          }

          v38 = 1;
LABEL_136:
          *(v25 + 40) = v38;
          goto LABEL_137;
        }

LABEL_61:
        if (!v39)
        {
          goto LABEL_107;
        }

        *(v25 + 4) = v124;
        v40 = *(v25 + 32);
        if (v40 == 255)
        {
          if (v33 == 255)
          {
            goto LABEL_137;
          }
        }

        else if (v33 == 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
          *(v25 + 32) = -1;
          goto LABEL_137;
        }

        if (v33 <= 3)
        {
          if (v33 > 1)
          {
            if (v33 == 2)
            {
              if (v40 != 255)
              {
                if (v40 == 2)
                {
                  v69 = *(v25 + 7);
                  v70 = v25[2];
                  if (v69)
                  {
                    v71 = 32 * v69;
                    v72 = v70 + 24;
                    v73 = v107;
                    do
                    {
                      if (*v72 != 255)
                      {
                        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v72 - 16), v17);
                        v73 = v107;
                      }

                      *v72 = -1;
                      v72 += 32;
                      v71 -= 32;
                    }

                    while (v71);
                    v70 = v25[2];
                  }

                  else
                  {
                    v73 = v107;
                  }

                  if (v70)
                  {
                    v25[2] = 0;
                    *(v25 + 6) = 0;
                    WTF::fastFree(v70, v17);
                    v73 = v107;
                  }

                  v25[2] = *(&v129 + 1);
                  *(&v129 + 1) = 0;
                  v130 = 0;
                  *(v25 + 6) = v16;
                  *(v25 + 7) = v73;
                  goto LABEL_137;
                }

                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
              }

              v25[2] = *(&v129 + 1);
              *(&v129 + 1) = 0;
              v130 = 0;
              *(v25 + 6) = v16;
              *(v25 + 7) = v107;
              *(v25 + 32) = 2;
            }

            else
            {
              if (v40 != 255)
              {
                if (v40 == 3)
                {
                  v77 = *(&v129 + 1);
                  *(&v129 + 1) = 0;
                  v78 = v25[2];
                  v25[2] = v77;
                  if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v78, v17);
                  }

                  goto LABEL_137;
                }

                mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
              }

              v80 = *(&v129 + 1);
              *(&v129 + 1) = 0;
              v25[2] = v80;
              *(v25 + 32) = 3;
            }
          }

          else
          {
            if (v33)
            {
              if (v40 != 1)
              {
                if (v40 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
                }

                *(v25 + 32) = 1;
              }

              goto LABEL_137;
            }

            if (v40 != 255)
            {
              if (!*(v25 + 32))
              {
                v25[2] = 0;
                goto LABEL_137;
              }

              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
            }

            v25[2] = 0;
            *(v25 + 32) = 0;
          }
        }

        else if (v33 <= 5)
        {
          if (v33 == 4)
          {
            if (v40 != 255)
            {
              if (v40 == 4)
              {
                v25[2] = *(&v129 + 1);
                goto LABEL_137;
              }

              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
            }

            v25[2] = *(&v129 + 1);
            *(v25 + 32) = 4;
          }

          else
          {
            if (v40 != 255)
            {
              if (v40 == 5)
              {
                v25[2] = *(&v129 + 1);
                goto LABEL_137;
              }

              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
            }

            v25[2] = *(&v129 + 1);
            *(v25 + 32) = 5;
          }
        }

        else if (v33 == 6)
        {
          if (v40 != 255)
          {
            if (v40 == 6)
            {
              v74 = *(&v129 + 1);
              *(&v129 + 1) = 0;
              v75 = v25[2];
              v25[2] = v74;
              if (v75 && atomic_fetch_add(v75, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v75);
                v76 = *(v75 + 8);
                if (v76)
                {
                  *(v75 + 8) = 0;
                  *(v75 + 16) = 0;
                  WTF::fastFree(v76, v17);
                }

                WTF::fastFree(v75, v17);
                v15 = v108;
              }

              goto LABEL_137;
            }

            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
          }

          v79 = *(&v129 + 1);
          *(&v129 + 1) = 0;
          v25[2] = v79;
          *(v25 + 32) = 6;
        }

        else if (v33 == 7)
        {
          if (v40 != 7)
          {
            if (v40 != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
            }

            *(v25 + 32) = 7;
          }
        }

        else if (v40 != 8)
        {
          if (v40 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v25 + 2), v17);
          }

          *(v25 + 32) = 8;
        }

LABEL_137:
        if (v132 > 1u)
        {
          if (v132 == 2)
          {
            v57 = v129;
            if (HIDWORD(v129))
            {
              v58 = 32 * HIDWORD(v129);
              v59 = (v129 + 24);
              do
              {
                if (*v59 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v59 - 16), v17);
                }

                *v59 = -1;
                v59 += 32;
                v58 -= 32;
              }

              while (v58);
            }

            if (v57)
            {
              WTF::fastFree(v57, v17);
            }
          }
        }

        else if (v132 && v131 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(&v129 + 8, v17);
        }

LABEL_149:
        v60 = v122;
        if (v122)
        {
          v61 = *(v122 - 16);
          v62 = *(v122 - 12) + 1;
          *(v122 - 12) = v62;
          v63 = (v61 + v62);
          v64 = *(v60 - 4);
          if (v64 > 0x400)
          {
            goto LABEL_155;
          }
        }

        else
        {
          v62 = 1;
          MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
          v63 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
          v64 = MEMORY[0xFFFFFFFFFFFFFFFC];
          if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
          {
LABEL_155:
            if (v64 <= 2 * v63)
            {
              goto LABEL_156;
            }

            goto LABEL_158;
          }
        }

        if (3 * v64 <= 4 * v63)
        {
          if (v64)
          {
LABEL_156:
            v65 = v64 << (6 * v62 >= (2 * v64));
          }

          else
          {
            v65 = 8;
          }

          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::IndexKey,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebCore::IndexKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::IDBIndexIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(&v122, v65);
        }

LABEL_158:
        if (v128 > 1u)
        {
          if (v128 == 2)
          {
            v66 = v124;
            if (HIDWORD(v125))
            {
              v67 = 32 * HIDWORD(v125);
              v68 = v124 + 24;
              do
              {
                if (*v68 != 255)
                {
                  mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v68 - 16), v17);
                }

                *v68 = -1;
                v68 += 32;
                v67 -= 32;
              }

              while (v67);
              v66 = v124;
            }

            if (v66)
            {
              v124 = 0;
              LODWORD(v125) = 0;
              WTF::fastFree(v66, v17);
            }
          }
        }

        else if (v128 && v127 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(&v125, v17);
        }

        do
        {
          v14 += 6;
        }

        while (v14 != v12 && (*v14 + 1) <= 1);
        if (v14 == v15)
        {
          goto LABEL_231;
        }
      }

      if (v127 > 6u)
      {
        if (v127 - 7 >= 2)
        {
          v132 = 1;
          v39 = *(v25 + 40);
          if (v39 > 1)
          {
            goto LABEL_86;
          }

          goto LABEL_61;
        }

        goto LABEL_85;
      }

      if (v127 != 5)
      {
        goto LABEL_83;
      }

      v49 = v125;
LABEL_84:
      *(&v129 + 1) = v49;
LABEL_85:
      v131 = v127;
      v132 = 1;
      v39 = *(v25 + 40);
      if (v39 > 1)
      {
        goto LABEL_86;
      }

      goto LABEL_61;
    }

    goto LABEL_231;
  }

  if (v11)
  {
    v13 = 48 * v11;
    v14 = v10;
    while ((*v14 + 1) <= 1)
    {
      v14 += 6;
      v13 -= 48;
      if (!v13)
      {
        v14 = v12;
        break;
      }
    }

LABEL_8:
    v15 = &v10[6 * *(v10 - 1)];
    if (v14 == v15)
    {
      goto LABEL_231;
    }

    goto LABEL_15;
  }

LABEL_231:
  v123 = v109;
  v81 = WTF::fastMalloc(0xD8);
  *v81 = &unk_1F472A3C8;
  *(v81 + 8) = a1;
  *(v81 + 16) = a1;
  v83 = v113[1];
  v82 = v113[2];
  *(v81 + 24) = v113[0];
  *(v81 + 56) = v82;
  *(v81 + 40) = v83;
  v84 = v113[3];
  v85 = v113[4];
  v86 = v113[5];
  *(v81 + 120) = v114;
  *(v81 + 104) = v86;
  *(v81 + 88) = v85;
  *(v81 + 72) = v84;
  *(v81 + 128) = v115;
  *(v81 + 136) = 0;
  *(v81 + 152) = -1;
  v87 = v118;
  if (v118 <= 4u)
  {
    if (v118 <= 1u)
    {
      v88 = a1;
      if (!v118)
      {
        *(v81 + 136) = 0;
      }
    }

    else
    {
      v88 = a1;
      if (v118 == 2)
      {
        *(v81 + 136) = v116;
        v90 = v117;
        v116 = 0;
        v117 = 0;
        *(v81 + 144) = v90;
        v87 = v118;
      }

      else if (v118 == 3)
      {
        v89 = v116;
        v116 = 0;
        *(v81 + 136) = v89;
        v87 = 3;
      }

      else
      {
        *(v81 + 136) = v116;
        v87 = 4;
      }
    }

    goto LABEL_247;
  }

  if (v118 <= 6u)
  {
    if (v118 == 5)
    {
      *(v81 + 136) = v116;
      v87 = 5;
    }

    else
    {
      v91 = v116;
      v116 = 0;
      *(v81 + 136) = v91;
      v87 = 6;
    }

    v88 = a1;
    goto LABEL_247;
  }

  v88 = a1;
  if (v118 - 7 < 2)
  {
LABEL_247:
    *(v81 + 152) = v87;
  }

  *&v84 = 0;
  *(v81 + 160) = v119;
  v92 = v120;
  v120 = 0;
  v119 = 0uLL;
  *(v81 + 176) = v92;
  v93 = v121;
  v121 = v84;
  *(v81 + 184) = v93;
  v94 = v122;
  v122 = 0;
  *(v81 + 200) = v94;
  *(v81 + 208) = v123;
  *&v129 = v81;
  (*(**(v88 + 64) + 48))(*(v88 + 64), &v129);
  v96 = v129;
  *&v129 = 0;
  if (v96)
  {
    (*(*v96 + 8))(v96);
  }

  v97 = v122;
  if (v122)
  {
    v98 = *(v122 - 4);
    if (v98)
    {
      for (i = 0; i != v98; ++i)
      {
        v100 = v97 + 48 * i;
        if (*v100 != -1)
        {
          if (*(v100 + 40) > 1u)
          {
            if (*(v100 + 40) == 2)
            {
              v101 = *(v100 + 20);
              v102 = *(v100 + 8);
              if (v101)
              {
                v103 = 32 * v101;
                v104 = v102 + 24;
                do
                {
                  if (*v104 != 255)
                  {
                    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v104 - 16), v95);
                  }

                  *v104 = -1;
                  v104 += 32;
                  v103 -= 32;
                }

                while (v103);
                v102 = *(v100 + 8);
              }

              if (v102)
              {
                *(v100 + 8) = 0;
                *(v100 + 16) = 0;
                WTF::fastFree(v102, v95);
              }
            }
          }

          else if (*(v100 + 40))
          {
            if (*(v100 + 32) != 255)
            {
              mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v100 + 16, v95);
            }

            *(v100 + 32) = -1;
          }

          *(v100 + 40) = -1;
        }
      }
    }

    WTF::fastFree((v97 - 16), v95);
  }

  WebCore::IDBValue::~IDBValue(&v119, v95);
  if (v118 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(&v116, v105);
  }

  v118 = -1;
  return 0;
}

uint64_t InProcessIDBServer::getRecord(atomic_uint *this, const WebCore::IDBRequestData *a2, const WebCore::IDBGetRecordData *a3)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBRequestData::isolatedCopy(v16, a2);
  WebCore::IDBGetRecordData::isolatedCopy(&v18, a3);
  v5 = WTF::fastMalloc(0xD0);
  *v5 = &unk_1F472A3F0;
  *(v5 + 8) = this;
  *(v5 + 16) = this;
  v7 = v16[1];
  v6 = v16[2];
  *(v5 + 24) = v16[0];
  *(v5 + 56) = v6;
  *(v5 + 40) = v7;
  v8 = v16[3];
  v9 = v16[4];
  v10 = v16[5];
  *(v5 + 120) = v17;
  *(v5 + 104) = v10;
  *(v5 + 88) = v9;
  *(v5 + 72) = v8;
  WebCore::IDBKeyRangeData::IDBKeyRangeData(v5 + 128, &v18);
  *(v5 + 200) = v22;
  v23 = v5;
  (*(**(this + 8) + 48))(*(this + 8), &v23);
  v12 = v23;
  v23 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (v21 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(&v20, v11);
  }

  v21 = -1;
  if (v19[16] != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v19, v11);
  }

  return 0;
}

uint64_t InProcessIDBServer::getAllRecords(atomic_uint *this, const WebCore::IDBRequestData *a2, const WebCore::IDBGetAllRecordsData *a3)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBRequestData::isolatedCopy(v18, a2);
  WebCore::IDBGetAllRecordsData::isolatedCopy(&v20, a3);
  v5 = WTF::fastMalloc(0xF0);
  *v5 = &unk_1F472A418;
  *(v5 + 8) = this;
  *(v5 + 16) = this;
  v7 = v18[1];
  v6 = v18[2];
  *(v5 + 24) = v18[0];
  *(v5 + 56) = v6;
  *(v5 + 40) = v7;
  v8 = v18[3];
  v9 = v18[4];
  v10 = v18[5];
  *(v5 + 120) = v19;
  *(v5 + 104) = v10;
  *(v5 + 88) = v9;
  *(v5 + 72) = v8;
  WebCore::IDBKeyRangeData::IDBKeyRangeData(v5 + 128, &v20);
  v11 = v24;
  v12 = v25;
  *(v5 + 232) = v26;
  *(v5 + 216) = v12;
  *(v5 + 200) = v11;
  v27 = v5;
  (*(**(this + 8) + 48))(*(this + 8), &v27);
  v14 = v27;
  v27 = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (v23 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(&v22, v13);
  }

  v23 = -1;
  if (v21[16] != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v21, v13);
  }

  return 0;
}

uint64_t InProcessIDBServer::getCount(atomic_uint *this, const WebCore::IDBRequestData *a2, const WebCore::IDBKeyRangeData *a3)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBRequestData::isolatedCopy(v16, a2);
  WebCore::IDBKeyRangeData::isolatedCopy(&v18, a3);
  v5 = WTF::fastMalloc(0xC8);
  *v5 = &unk_1F472A440;
  *(v5 + 8) = this;
  *(v5 + 16) = this;
  v6 = v16[2];
  v7 = v16[1];
  *(v5 + 24) = v16[0];
  *(v5 + 56) = v6;
  *(v5 + 40) = v7;
  v8 = v16[3];
  v9 = v16[4];
  v10 = v16[5];
  *(v5 + 120) = v17;
  *(v5 + 104) = v10;
  *(v5 + 88) = v9;
  *(v5 + 72) = v8;
  WebCore::IDBKeyRangeData::IDBKeyRangeData(v5 + 128, &v18);
  v22 = v5;
  (*(**(this + 8) + 48))(*(this + 8), &v22);
  v12 = v22;
  v22 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (v21 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(&v20, v11);
  }

  v21 = -1;
  if (v19[16] != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v19, v11);
  }

  return 0;
}

uint64_t InProcessIDBServer::deleteRecord(atomic_uint *this, const WebCore::IDBRequestData *a2, const WebCore::IDBKeyRangeData *a3)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBRequestData::isolatedCopy(v16, a2);
  WebCore::IDBKeyRangeData::isolatedCopy(&v18, a3);
  v5 = WTF::fastMalloc(0xC8);
  *v5 = &unk_1F472A468;
  *(v5 + 8) = this;
  *(v5 + 16) = this;
  v6 = v16[2];
  v7 = v16[1];
  *(v5 + 24) = v16[0];
  *(v5 + 56) = v6;
  *(v5 + 40) = v7;
  v8 = v16[3];
  v9 = v16[4];
  v10 = v16[5];
  *(v5 + 120) = v17;
  *(v5 + 104) = v10;
  *(v5 + 88) = v9;
  *(v5 + 72) = v8;
  WebCore::IDBKeyRangeData::IDBKeyRangeData(v5 + 128, &v18);
  v22 = v5;
  (*(**(this + 8) + 48))(*(this + 8), &v22);
  v12 = v22;
  v22 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (v21 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(&v20, v11);
  }

  v21 = -1;
  if (v19[16] != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v19, v11);
  }

  return 0;
}

uint64_t InProcessIDBServer::openCursor(atomic_uint *this, const WebCore::IDBRequestData *a2, const WebCore::IDBCursorInfo *a3)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBRequestData::isolatedCopy(v19, a2);
  WebCore::IDBCursorInfo::isolatedCopy(v21, a3);
  v5 = WTF::fastMalloc(0x108);
  *v5 = &unk_1F472A490;
  *(v5 + 8) = this;
  *(v5 + 16) = this;
  v6 = v19[2];
  v7 = v19[1];
  *(v5 + 24) = v19[0];
  *(v5 + 56) = v6;
  *(v5 + 40) = v7;
  v8 = v19[3];
  v9 = v19[4];
  v10 = v19[5];
  *(v5 + 120) = v20;
  *(v5 + 104) = v10;
  *(v5 + 88) = v9;
  *(v5 + 72) = v8;
  v11 = v22;
  v12 = v21[2];
  v13 = v21[0];
  *(v5 + 144) = v21[1];
  *(v5 + 160) = v12;
  *(v5 + 128) = v13;
  *(v5 + 176) = v11;
  WebCore::IDBKeyRangeData::IDBKeyRangeData(v5 + 184, &v23);
  *(v5 + 256) = v27;
  *(v5 + 258) = v28;
  v29 = v5;
  (*(**(this + 8) + 48))(*(this + 8), &v29);
  v15 = v29;
  v29 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  if (v26 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(&v25, v14);
  }

  v26 = -1;
  if (v24[16] != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v24, v14);
  }

  return 0;
}

uint64_t InProcessIDBServer::iterateCursor(atomic_uint *this, const WebCore::IDBRequestData *a2, const WebCore::IDBIterateCursorData *a3)
{
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBRequestData::isolatedCopy(v24, a2);
  WebCore::IDBIterateCursorData::isolatedCopy(&v26, a3);
  v5 = WTF::fastMalloc(0xC8);
  *v5 = &unk_1F472A4B8;
  *(v5 + 8) = this;
  *(v5 + 16) = this;
  v6 = v24[2];
  v7 = v24[1];
  *(v5 + 24) = v24[0];
  *(v5 + 56) = v6;
  *(v5 + 40) = v7;
  v8 = v24[3];
  v9 = v24[4];
  v10 = v24[5];
  *(v5 + 120) = v25;
  *(v5 + 104) = v10;
  *(v5 + 88) = v9;
  *(v5 + 72) = v8;
  *(v5 + 128) = v26;
  *(v5 + 136) = 0;
  *(v5 + 152) = -1;
  v11 = v29;
  if (v29 <= 4u)
  {
    if (v29 <= 1u)
    {
      if (!v29)
      {
        *(v5 + 136) = 0;
      }
    }

    else if (v29 == 2)
    {
      *(v5 + 136) = v27;
      *(v5 + 144) = 0;
      v13 = v28;
      v27 = 0;
      v28 = 0;
      *(v5 + 144) = v13;
      v11 = v29;
    }

    else if (v29 == 3)
    {
      v12 = v27;
      v27 = 0;
      *(v5 + 136) = v12;
      v11 = 3;
    }

    else
    {
      *(v5 + 136) = v27;
      v11 = 4;
    }

    goto LABEL_16;
  }

  if (v29 <= 6u)
  {
    if (v29 == 5)
    {
      *(v5 + 136) = v27;
      v11 = 5;
    }

    else
    {
      v14 = v27;
      v27 = 0;
      *(v5 + 136) = v14;
      v11 = 6;
    }

    goto LABEL_16;
  }

  if (v29 - 7 < 2)
  {
LABEL_16:
    *(v5 + 152) = v11;
  }

  *(v5 + 160) = v30;
  *(v5 + 168) = 0;
  *(v5 + 184) = -1;
  v15 = v33;
  if (v33 <= 4u)
  {
    if (v33 <= 1u)
    {
      if (!v33)
      {
        *(v5 + 168) = 0;
      }
    }

    else if (v33 == 2)
    {
      *(v5 + 168) = v31;
      *(v5 + 176) = 0;
      v17 = v32;
      v31 = 0;
      v32 = 0;
      *(v5 + 176) = v17;
      v15 = v33;
    }

    else if (v33 == 3)
    {
      v16 = v31;
      v31 = 0;
      *(v5 + 168) = v16;
      v15 = 3;
    }

    else
    {
      *(v5 + 168) = v31;
      v15 = 4;
    }

    goto LABEL_32;
  }

  if (v33 <= 6u)
  {
    if (v33 == 5)
    {
      *(v5 + 168) = v31;
      v15 = 5;
    }

    else
    {
      v18 = v31;
      v31 = 0;
      *(v5 + 168) = v18;
      v15 = 6;
    }

    goto LABEL_32;
  }

  if (v33 - 7 < 2)
  {
LABEL_32:
    *(v5 + 184) = v15;
  }

  *(v5 + 192) = v34;
  *(v5 + 196) = v35;
  v36 = v5;
  (*(**(this + 8) + 48))(*(this + 8), &v36);
  v20 = v36;
  v36 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  if (v33 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(&v31, v19);
  }

  v33 = -1;
  if (v29 != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(&v27, v19);
  }

  return 0;
}

uint64_t InProcessIDBServer::establishTransaction(uint64_t a1, uint64_t a2, WebCore::IDBTransactionInfo *this)
{
  atomic_fetch_add((a1 + 28), 1u);
  WebCore::IDBTransactionInfo::isolatedCopy(v14, this);
  v4 = WTF::fastMalloc(0x58);
  *v4 = &unk_1F472A4E0;
  *(v4 + 8) = a1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = v14[1];
  *(v4 + 32) = v14[0];
  *(v4 + 48) = v5;
  *(v4 + 64) = v15;
  v6 = v16;
  v15 = 0;
  v16 = 0;
  *(v4 + 72) = v6;
  v7 = v17;
  v17 = 0;
  *(v4 + 80) = v7;
  v18 = v4;
  (*(**(a1 + 64) + 48))(*(a1 + 64), &v18);
  v9 = v18;
  v18 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  WebCore::IDBTransactionInfo::~IDBTransactionInfo(v14, v8);
  return 0;
}

uint64_t InProcessIDBServer::fireVersionChangeEvent(uint64_t a1, uint64_t a2, WebCore::IDBResourceIdentifier *this, uint64_t a4)
{
  atomic_fetch_add((a1 + 28), 1u);
  v6 = *(a2 + 16);
  v7 = WebCore::IDBResourceIdentifier::isolatedCopy(this);
  v9 = v8;
  v10 = WTF::fastMalloc(0x38);
  *v10 = &unk_1F472A508;
  v10[1] = a1;
  v10[2] = a1;
  v10[3] = v6;
  v10[4] = v7;
  v10[5] = v9;
  v10[6] = a4;
  v12 = v10;
  WTF::callOnMainThread();
  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t non-virtual thunk toInProcessIDBServer::fireVersionChangeEvent(uint64_t a1, uint64_t a2, WebCore::IDBResourceIdentifier *this, uint64_t a4)
{
  v5 = a1 - 16;
  atomic_fetch_add((a1 + 12), 1u);
  v6 = *(a2 + 16);
  v7 = WebCore::IDBResourceIdentifier::isolatedCopy(this);
  v9 = v8;
  v10 = WTF::fastMalloc(0x38);
  *v10 = &unk_1F472A508;
  v10[1] = v5;
  v10[2] = v5;
  v10[3] = v6;
  v10[4] = v7;
  v10[5] = v9;
  v10[6] = a4;
  v12 = v10;
  WTF::callOnMainThread();
  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

mpark *InProcessIDBServer::generateIndexKeyForRecord(uint64_t a1, WebCore::IDBResourceIdentifier *this, uint64_t a3, uint64_t *a4, WebCore::IDBKeyData *a5, WebCore::IDBValue *a6, uint64_t a7, char a8)
{
  v41 = a1;
  v42 = a1;
  atomic_fetch_add((a1 + 28), 1u);
  *&v43 = WebCore::IDBResourceIdentifier::isolatedCopy(this);
  *(&v43 + 1) = v13;
  result = WebCore::IDBIndexInfo::isolatedCopy();
  if ((a4[3] & 1) == 0)
  {
    LOBYTE(v50) = 0;
    v53 = 0;
    goto LABEL_16;
  }

  if (*(a4 + 16))
  {
    if (*(a4 + 16) == 255)
    {
      mpark::throw_bad_variant_access(result);
    }

    v15 = *(a4 + 3);
    if (v15)
    {
      if (v15 >> 29)
      {
        __break(0xC471u);
        return result;
      }

      v16 = WTF::fastMalloc((8 * v15));
      v17 = *(a4 + 3);
      if (v17)
      {
        v18 = 0;
        v19 = *a4;
        v20 = 8 * v17;
        do
        {
          v21 = v18;
          WTF::String::isolatedCopy();
          v18 = v21 + 1;
          *(v16 + 8 * v21) = v62;
          v19 += 8;
          v20 -= 8;
        }

        while (v20);
        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
    }

    LODWORD(v18) = 0;
LABEL_14:
    v51 = __PAIR64__(v18, v15);
    v22 = 1;
    goto LABEL_15;
  }

  WTF::String::isolatedCopy();
  v22 = 0;
  v16 = v62;
LABEL_15:
  v50 = v16;
  v52 = v22;
  v53 = 1;
LABEL_16:
  WebCore::IDBKeyData::isolatedCopy(&v54, a5);
  WebCore::IDBValue::isolatedCopy(&v58, a6);
  *&v61 = a7;
  BYTE8(v61) = a8;
  v23 = WTF::fastMalloc(0xD8);
  *v23 = &unk_1F472A530;
  *(v23 + 8) = v41;
  *(v23 + 16) = v42;
  *(v23 + 24) = v43;
  *(&v24 + 1) = *(&v44 + 1);
  *(v23 + 40) = v44;
  v25 = v45;
  v42 = 0;
  v45 = 0;
  *(v23 + 56) = v25;
  *(v23 + 64) = 0;
  *(v23 + 80) = -1;
  v26 = v48;
  if (v48 != 255)
  {
    if (v48)
    {
      *(v23 + 64) = 0;
      *(v23 + 72) = 0;
      v27 = v46;
      v28 = v47;
      v47 = 0;
      *(v23 + 72) = v28;
      v26 = v48;
    }

    else
    {
      v27 = v46;
    }

    v46 = 0;
    *(v23 + 64) = v27;
    *(v23 + 80) = v26;
  }

  v29 = v49;
  *(v23 + 96) = 0;
  *(v23 + 88) = v29;
  *(v23 + 120) = 0;
  if (v53 == 1)
  {
    *(v23 + 112) = -1;
    v30 = v52;
    if (v52 != 255)
    {
      if (v52)
      {
        *(v23 + 96) = 0;
        *(v23 + 104) = 0;
        v31 = v50;
        v32 = v51;
        v51 = 0;
        *(v23 + 104) = v32;
        v30 = v52;
      }

      else
      {
        v31 = v50;
      }

      v50 = 0;
      *(v23 + 96) = v31;
      *(v23 + 112) = v30;
    }

    *(v23 + 120) = 1;
  }

  *(v23 + 128) = v54;
  *(v23 + 136) = 0;
  *(v23 + 152) = -1;
  v33 = v57;
  if (v57 > 4u)
  {
    if (v57 <= 6u)
    {
      if (v57 == 5)
      {
        *(v23 + 136) = v55;
        v33 = 5;
      }

      else
      {
        v36 = v55;
        v55 = 0;
        *(v23 + 136) = v36;
        v33 = 6;
      }
    }

    else if (v57 - 7 >= 2)
    {
      goto LABEL_44;
    }
  }

  else if (v57 <= 1u)
  {
    if (!v57)
    {
      *(v23 + 136) = 0;
    }
  }

  else if (v57 == 2)
  {
    *(v23 + 136) = v55;
    v35 = v56;
    v55 = 0;
    v56 = 0;
    *(v23 + 144) = v35;
    v33 = v57;
  }

  else if (v57 == 3)
  {
    v34 = v55;
    v55 = 0;
    *(v23 + 136) = v34;
    v33 = 3;
  }

  else
  {
    *(v23 + 136) = v55;
    v33 = 4;
  }

  *(v23 + 152) = v33;
LABEL_44:
  *&v24 = 0;
  *(v23 + 160) = v58;
  v37 = v59;
  v59 = 0;
  v58 = 0uLL;
  *(v23 + 176) = v37;
  v38 = v60;
  v60 = v24;
  *(v23 + 184) = v38;
  *(v23 + 200) = v61;
  v62 = v23;
  WTF::callOnMainThread();
  v40 = v62;
  v62 = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  return InProcessIDBServer::generateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>> const&,WebCore::IDBKeyData const&,WebCore::IDBValue const&,std::optional<long long>)::$_0::~$_0(&v41, v39);
}

uint64_t InProcessIDBServer::generateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>> const&,WebCore::IDBKeyData const&,WebCore::IDBValue const&,std::optional<long long>)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  WebCore::IDBValue::~IDBValue((a1 + 152), a2);
  if (*(a1 + 144) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 128, v3);
  }

  *(a1 + 144) = -1;
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 104) != 255)
    {
      if (*(a1 + 104))
      {
        v5 = *(a1 + 100);
        v6 = *(a1 + 88);
        if (v5)
        {
          v7 = 8 * v5;
          do
          {
            v8 = *v6;
            *v6 = 0;
            if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v8, v3);
            }

            v6 = (v6 + 8);
            v7 -= 8;
          }

          while (v7);
          v6 = *(a1 + 88);
        }

        if (v6)
        {
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          WTF::fastFree(v6, v3);
        }
      }

      else
      {
        v4 = *(a1 + 88);
        *(a1 + 88) = 0;
        if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v3);
        }
      }
    }

    *(a1 + 104) = -1;
  }

  if (*(a1 + 72) != 255)
  {
    if (*(a1 + 72))
    {
      v10 = *(a1 + 68);
      v11 = *(a1 + 56);
      if (v10)
      {
        v12 = 8 * v10;
        do
        {
          v13 = *v11;
          *v11 = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v3);
          }

          v11 = (v11 + 8);
          v12 -= 8;
        }

        while (v12);
        v11 = *(a1 + 56);
      }

      if (v11)
      {
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        WTF::fastFree(v11, v3);
      }
    }

    else
    {
      v9 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v3);
      }
    }
  }

  *(a1 + 72) = -1;
  v14 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v3);
  }

  v15 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (!v15 || atomic_fetch_add(v15 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v15 + 7);
  (*(*v15 + 8))(v15);
  return a1;
}

uint64_t InProcessIDBServer::didStartTransaction(uint64_t a1, WebCore::IDBResourceIdentifier *this)
{
  atomic_fetch_add((a1 + 28), 1u);
  *&v8 = WebCore::IDBResourceIdentifier::isolatedCopy(this);
  *(&v8 + 1) = v2;
  WTF::String::isolatedCopy();
  WebCore::IDBError::IDBError();
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v3);
  }

  v4 = WTF::fastMalloc(0x38);
  *v4 = &unk_1F472A558;
  *(v4 + 8) = a1;
  *(v4 + 16) = a1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v9;
  *(v4 + 48) = v10;
  v12 = v4;
  WTF::callOnMainThread();
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return 0;
}

uint64_t InProcessIDBServer::didCloseFromServer(uint64_t a1, uint64_t a2)
{
  atomic_fetch_add((a1 + 28), 1u);
  v7 = *(a2 + 16);
  WTF::String::isolatedCopy();
  WebCore::IDBError::IDBError();
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v2);
  }

  v3 = WTF::fastMalloc(0x30);
  *v3 = &unk_1F472A580;
  *(v3 + 8) = a1;
  *(v3 + 16) = a1;
  *(v3 + 24) = v7;
  *(v3 + 32) = v8;
  *(v3 + 40) = v9;
  v11 = v3;
  WTF::callOnMainThread();
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return 0;
}

uint64_t InProcessIDBServer::notifyOpenDBRequestBlocked(atomic_uint *this, const WebCore::IDBResourceIdentifier *a2, uint64_t a3, uint64_t a4)
{
  atomic_fetch_add(this + 7, 1u);
  v7 = WebCore::IDBResourceIdentifier::isolatedCopy(a2);
  v9 = v8;
  v10 = WTF::fastMalloc(0x38);
  *v10 = &unk_1F472A5A8;
  v10[1] = this;
  v10[2] = this;
  v10[3] = v7;
  v10[4] = v9;
  v10[5] = a3;
  v10[6] = a4;
  v12 = v10;
  WTF::callOnMainThread();
  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t non-virtual thunk toInProcessIDBServer::notifyOpenDBRequestBlocked(atomic_uint *this, const WebCore::IDBResourceIdentifier *a2, uint64_t a3, uint64_t a4)
{
  v6 = this - 4;
  atomic_fetch_add(this + 3, 1u);
  v7 = WebCore::IDBResourceIdentifier::isolatedCopy(a2);
  v9 = v8;
  v10 = WTF::fastMalloc(0x38);
  *v10 = &unk_1F472A5A8;
  v10[1] = v6;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v9;
  v10[5] = a3;
  v10[6] = a4;
  v12 = v10;
  WTF::callOnMainThread();
  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t InProcessIDBServer::databaseConnectionPendingClose(uint64_t a1, uint64_t a2)
{
  atomic_fetch_add((a1 + 28), 1u);
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F472A5D0;
  v4[1] = a1;
  v4[2] = a1;
  v4[3] = a2;
  v6 = v4;
  (*(**(a1 + 64) + 48))(*(a1 + 64), &v6);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t InProcessIDBServer::databaseConnectionClosed(uint64_t a1, uint64_t a2)
{
  atomic_fetch_add((a1 + 28), 1u);
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F472A5F8;
  v4[1] = a1;
  v4[2] = a1;
  v4[3] = a2;
  v6 = v4;
  (*(**(a1 + 64) + 48))(*(a1 + 64), &v6);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t InProcessIDBServer::abortOpenAndUpgradeNeeded(uint64_t a1, uint64_t a2, WebCore::IDBResourceIdentifier *this)
{
  if (*(this + 16) == 1)
  {
    v6 = WebCore::IDBResourceIdentifier::isolatedCopy(this);
    v3 = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  atomic_fetch_add((a1 + 28), 1u);
  v9 = WTF::fastMalloc(0x38);
  *v9 = &unk_1F472A620;
  *(v9 + 8) = a1;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v6;
  *(v9 + 40) = v3;
  *(v9 + 48) = v8;
  v11 = v9;
  (*(**(a1 + 64) + 48))(*(a1 + 64), &v11);
  result = v11;
  v11 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t InProcessIDBServer::didFireVersionChangeEvent(uint64_t a1, uint64_t a2, WebCore::IDBResourceIdentifier *this, char a4)
{
  atomic_fetch_add((a1 + 28), 1u);
  v7 = WebCore::IDBResourceIdentifier::isolatedCopy(this);
  v9 = v8;
  v10 = WTF::fastMalloc(0x38);
  *v10 = &unk_1F472A648;
  *(v10 + 8) = a1;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  *(v10 + 48) = a4;
  v12 = v10;
  (*(**(a1 + 64) + 48))(*(a1 + 64), &v12);
  result = v12;
  v12 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t InProcessIDBServer::didGenerateIndexKeyForRecord(uint64_t a1, WebCore::IDBResourceIdentifier *this, WebCore::IDBResourceIdentifier *a3, uint64_t a4, WebCore::IDBKeyData *a5, uint64_t a6, uint64_t a7, char a8)
{
  v56 = *MEMORY[0x1E69E9840];
  v36 = a1;
  v37 = a1;
  atomic_fetch_add((a1 + 28), 1u);
  *&v38 = WebCore::IDBResourceIdentifier::isolatedCopy(this);
  *(&v38 + 1) = v13;
  *&v39 = WebCore::IDBResourceIdentifier::isolatedCopy(a3);
  *(&v39 + 1) = v14;
  WebCore::IDBIndexInfo::isolatedCopy();
  WebCore::IDBKeyData::isolatedCopy(&v46, a5);
  WebCore::IndexKey::isolatedCopy();
  *&v55 = a7;
  BYTE8(v55) = a8;
  v15 = WTF::fastMalloc(0xC8);
  v16 = v36;
  *v15 = &unk_1F472A670;
  *(v15 + 8) = v16;
  *(v15 + 16) = v37;
  v17 = v39;
  *(v15 + 24) = v38;
  *(v15 + 40) = v17;
  *(v15 + 56) = v40;
  v18 = v41;
  v37 = 0;
  v41 = 0;
  *(v15 + 72) = v18;
  *(v15 + 80) = 0;
  *(v15 + 96) = -1;
  v19 = v44;
  if (v44 != 255)
  {
    if (v44)
    {
      *(v15 + 80) = 0;
      *(v15 + 88) = 0;
      v20 = v42;
      v21 = v43;
      v43 = 0;
      *(v15 + 88) = v21;
      v19 = v44;
    }

    else
    {
      v20 = v42;
    }

    v42 = 0;
    *(v15 + 80) = v20;
    *(v15 + 96) = v19;
  }

  *(v15 + 104) = v45;
  *(v15 + 112) = v46;
  *(v15 + 120) = 0;
  *(v15 + 136) = -1;
  v22 = v49;
  if (v49 <= 4u)
  {
    if (v49 <= 1u)
    {
      if (!v49)
      {
        *(v15 + 120) = 0;
      }
    }

    else if (v49 == 2)
    {
      *(v15 + 120) = v47;
      v27 = v48;
      v47 = 0;
      v48 = 0;
      *(v15 + 128) = v27;
      v22 = v49;
    }

    else if (v49 == 3)
    {
      v23 = v47;
      v47 = 0;
      *(v15 + 120) = v23;
      v22 = 3;
    }

    else
    {
      *(v15 + 120) = v47;
      v22 = 4;
    }

LABEL_31:
    *(v15 + 136) = v22;
    *(v15 + 144) = 0;
    *(v15 + 176) = -1;
    v24 = v54;
    if (v54 > 1u)
    {
      goto LABEL_32;
    }

    goto LABEL_14;
  }

  if (v49 <= 6u)
  {
    if (v49 == 5)
    {
      *(v15 + 120) = v47;
      v22 = 5;
    }

    else
    {
      v28 = v47;
      v47 = 0;
      *(v15 + 120) = v28;
      v22 = 6;
    }

    goto LABEL_31;
  }

  if (v49 - 7 < 2)
  {
    goto LABEL_31;
  }

  *(v15 + 144) = 0;
  *(v15 + 176) = -1;
  v24 = v54;
  if (v54 > 1u)
  {
LABEL_32:
    if (v24 != 2)
    {
      goto LABEL_43;
    }

    *(v15 + 144) = v50;
    v29 = v51;
    v50 = 0;
    v51 = 0;
    *(v15 + 152) = v29;
    goto LABEL_42;
  }

LABEL_14:
  if (v24)
  {
    *(v15 + 144) = v50;
    *(v15 + 152) = 0;
    *(v15 + 168) = -1;
    v25 = v53;
    if (v53 > 4u)
    {
      if (v53 <= 6u)
      {
        if (v53 == 5)
        {
          *(v15 + 152) = v51;
          v25 = 5;
        }

        else
        {
          v31 = v51;
          v51 = 0;
          *(v15 + 152) = v31;
          v25 = 6;
        }
      }

      else if (v53 - 7 >= 2)
      {
        goto LABEL_42;
      }
    }

    else if (v53 <= 1u)
    {
      if (!v53)
      {
        *(v15 + 152) = 0;
      }
    }

    else if (v53 == 2)
    {
      *(v15 + 152) = v51;
      v30 = v52;
      v51 = 0;
      v52 = 0;
      *(v15 + 160) = v30;
      v25 = v53;
    }

    else if (v53 == 3)
    {
      v26 = v51;
      v51 = 0;
      *(v15 + 152) = v26;
      v25 = 3;
    }

    else
    {
      *(v15 + 152) = v51;
      v25 = 4;
    }

    *(v15 + 168) = v25;
  }

  else
  {
    *(v15 + 144) = 0;
  }

LABEL_42:
  *(v15 + 176) = v54;
LABEL_43:
  *(v15 + 184) = v55;
  v35 = v15;
  (*(**(a1 + 64) + 48))(*(a1 + 64), &v35);
  v33 = v35;
  v35 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  return InProcessIDBServer::didGenerateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,WebCore::IDBKeyData const&,WebCore::IndexKey const&,std::optional<long long>)::$_0::~$_0(&v36, v32);
}

uint64_t InProcessIDBServer::didGenerateIndexKeyForRecord(WebCore::IDBResourceIdentifier const&,WebCore::IDBResourceIdentifier const&,WebCore::IDBIndexInfo const&,WebCore::IDBKeyData const&,WebCore::IndexKey const&,std::optional<long long>)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 168) > 1u)
  {
    if (*(a1 + 168) == 2)
    {
      v3 = *(a1 + 148);
      v4 = *(a1 + 136);
      if (v3)
      {
        v5 = 32 * v3;
        v6 = v4 + 24;
        do
        {
          if (*v6 != 255)
          {
            mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v6 - 16), a2);
          }

          *v6 = -1;
          v6 += 32;
          v5 -= 32;
        }

        while (v5);
        v4 = *(a1 + 136);
      }

      if (v4)
      {
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        WTF::fastFree(v4, a2);
      }
    }
  }

  else if (*(a1 + 168))
  {
    if (*(a1 + 160) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 144, a2);
    }

    *(a1 + 160) = -1;
  }

  *(a1 + 168) = -1;
  if (*(a1 + 128) != 255)
  {
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(a1 + 112, a2);
  }

  *(a1 + 128) = -1;
  if (*(a1 + 88) != 255)
  {
    if (*(a1 + 88))
    {
      v8 = *(a1 + 84);
      v9 = *(a1 + 72);
      if (v8)
      {
        v10 = 8 * v8;
        do
        {
          v11 = *v9;
          *v9 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, a2);
          }

          v9 = (v9 + 8);
          v10 -= 8;
        }

        while (v10);
        v9 = *(a1 + 72);
      }

      if (v9)
      {
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        WTF::fastFree(v9, a2);
      }
    }

    else
    {
      v7 = *(a1 + 72);
      *(a1 + 72) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }
  }

  *(a1 + 88) = -1;
  v12 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (!v13 || atomic_fetch_add(v13 + 7, 0xFFFFFFFF) != 1)
  {
    return a1;
  }

  atomic_store(1u, v13 + 7);
  (*(*v13 + 8))(v13);
  return a1;
}

unsigned int *InProcessIDBServer::openDBRequestCancelled(atomic_uint *this, const WebCore::IDBOpenRequestData *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v19 = this;
  v20 = this;
  atomic_fetch_add(this + 7, 1u);
  WebCore::IDBOpenRequestData::isolatedCopy(&v21, a2);
  v3 = WTF::fastMalloc(0x90);
  v4 = v19;
  *v3 = &unk_1F472A698;
  *(v3 + 8) = v4;
  *(v3 + 16) = v20;
  v5 = v21;
  *(v3 + 40) = v22;
  *(v3 + 24) = v5;
  v6 = v23;
  v20 = 0;
  v23 = 0;
  *(v3 + 48) = v6;
  *(v3 + 56) = 0;
  *(v3 + 80) = -1;
  if (v26 != 255)
  {
    if (v26)
    {
      *(v3 + 56) = v24;
    }

    else
    {
      *(v3 + 56) = v24;
      v7 = *(&v24 + 1);
      v24 = 0uLL;
      *(v3 + 64) = v7;
      *(v3 + 72) = v25;
    }

    *(v3 + 80) = v26;
  }

  *(v3 + 88) = 0;
  *(v3 + 112) = -1;
  if (v29 != 255)
  {
    if (v29)
    {
      *(v3 + 88) = v27;
    }

    else
    {
      *(v3 + 88) = v27;
      v8 = *(&v27 + 1);
      v27 = 0uLL;
      *(v3 + 96) = v8;
      *(v3 + 104) = v28;
    }

    *(v3 + 112) = v29;
  }

  *(v3 + 120) = v30;
  v9 = v32;
  *(v3 + 128) = v31;
  *(v3 + 136) = v9;
  v18 = v3;
  (*(**(this + 8) + 48))(*(this + 8), &v18);
  v11 = v18;
  v18 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (!v29)
  {
    v12 = *(&v27 + 1);
    *(&v27 + 1) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v27;
    *&v27 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }
  }

  v29 = -1;
  if (!v26)
  {
    v14 = *(&v24 + 1);
    *(&v24 + 1) = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v24;
    *&v24 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v10);
    }
  }

  v26 = -1;
  v16 = v23;
  v23 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  result = v20;
  v20 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 7);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

unsigned int *InProcessIDBServer::getAllDatabaseNamesAndVersions(uint64_t a1, _OWORD *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = a1;
  v19 = a1;
  atomic_fetch_add((a1 + 28), 1u);
  *v20 = WebCore::IDBClient::IDBConnectionToServer::identifier(*(a1 + 48));
  *&v20[8] = *a2;
  WebCore::SecurityOriginData::isolatedCopy();
  WebCore::SecurityOriginData::isolatedCopy();
  v4 = WTF::fastMalloc(0x70);
  v5 = v18;
  *v4 = &unk_1F472A6C0;
  *(v4 + 8) = v5;
  v6 = v19;
  v19 = 0;
  *(v4 + 16) = v6;
  v7 = *&v20[16];
  *(v4 + 24) = *v20;
  *(v4 + 40) = v7;
  *(v4 + 48) = 0;
  *(v4 + 72) = -1;
  if (v23 != 255)
  {
    if (v23)
    {
      *(v4 + 48) = v21;
    }

    else
    {
      *(v4 + 48) = v21;
      v8 = *(&v21 + 1);
      v21 = 0uLL;
      *(v4 + 56) = v8;
      *(v4 + 64) = v22;
    }

    *(v4 + 72) = v23;
  }

  *(v4 + 80) = 0;
  *(v4 + 104) = -1;
  if (v26 != 255)
  {
    if (v26)
    {
      *(v4 + 80) = v24;
    }

    else
    {
      *(v4 + 80) = v24;
      v9 = *(&v24 + 1);
      v24 = 0uLL;
      *(v4 + 88) = v9;
      *(v4 + 96) = v25;
    }

    *(v4 + 104) = v26;
  }

  v17 = v4;
  (*(**(a1 + 64) + 48))(*(a1 + 64), &v17);
  v11 = v17;
  v17 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (!v26)
  {
    v12 = *(&v24 + 1);
    *(&v24 + 1) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v24;
    *&v24 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }
  }

  v26 = -1;
  if (!v23)
  {
    v14 = *(&v21 + 1);
    *(&v21 + 1) = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v21;
    *&v21 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v10);
    }
  }

  v23 = -1;
  result = v19;
  v19 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 7);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t InProcessIDBServer::getAllDatabaseNamesAndVersions(WebCore::IDBResourceIdentifier const&,WebCore::ClientOrigin const&)::$_0::~$_0(uint64_t result, WTF::StringImpl *a2)
{
  if (!*(result + 96))
  {
    v2 = *(result + 80);
    *(result + 80) = 0;
    if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = result;
      WTF::StringImpl::destroy(v2, a2);
      result = v3;
    }

    v4 = *(result + 72);
    *(result + 72) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v5 = result;
      WTF::StringImpl::destroy(v4, a2);
      result = v5;
    }
  }

  *(result + 96) = -1;
  if (!*(result + 64))
  {
    v6 = *(result + 48);
    *(result + 48) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v7 = result;
      WTF::StringImpl::destroy(v6, a2);
      result = v7;
    }

    v8 = *(result + 40);
    *(result + 40) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v9 = result;
      WTF::StringImpl::destroy(v8, a2);
      result = v9;
    }
  }

  *(result + 64) = -1;
  v10 = *(result + 8);
  *(result + 8) = 0;
  if (v10)
  {
    if (atomic_fetch_add(v10 + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10 + 7);
      v11 = result;
      (*(*v10 + 8))(v10);
      return v11;
    }
  }

  return result;
}

uint64_t InProcessIDBServer::didGetAllDatabaseNamesAndVersions(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  atomic_fetch_add((a1 + 28), 1u);
  v14 = *a2;
  v5 = *a3;
  v6 = *(a3 + 3);
  if (v6)
  {
    v7 = v5 + 16 * v6;
    do
    {
      WTF::String::isolatedCopy();
      v17 = *(v5 + 8);
      v9 = *v5;
      *v5 = v15;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v8);
      }

      *(v5 + 8) = v17;
      v15 = 0;
      v5 += 16;
    }

    while (v5 != v7);
    v5 = *a3;
    v10 = *(a3 + 3);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a3 + 2);
  *a3 = 0;
  a3[1] = 0;
  v12 = WTF::fastMalloc(0x38);
  *v12 = &unk_1F472A6E8;
  *(v12 + 8) = a1;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  *(v12 + 40) = v5;
  *(v12 + 48) = v11;
  *(v12 + 52) = v10;
  v16 = v12;
  WTF::callOnMainThread();
  result = v16;
  if (v16)
  {
    return (*(*v16 + 8))(v16);
  }

  return result;
}

void WebCore::IDBOpenRequestData::~IDBOpenRequestData(WebCore::IDBOpenRequestData *this, WTF::StringImpl *a2)
{
  if (!*(this + 88))
  {
    v3 = *(this + 9);
    *(this + 9) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(this + 8);
    *(this + 8) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(this + 88) = -1;
  if (!*(this + 56))
  {
    v5 = *(this + 5);
    *(this + 5) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(this + 4);
    *(this + 4) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(this + 56) = -1;
  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }
}

void WebCore::IDBResultData::~IDBResultData(WebCore::IDBResultData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    if (*(v3 + 64) == 1)
    {
      if (*(v3 + 56) != 255)
      {
        if (*(v3 + 56))
        {
          v5 = *(v3 + 52);
          v6 = *(v3 + 40);
          if (v5)
          {
            v7 = 8 * v5;
            do
            {
              v8 = *v6;
              *v6 = 0;
              if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v8, a2);
              }

              v6 = (v6 + 8);
              v7 -= 8;
            }

            while (v7);
            v6 = *(v3 + 40);
          }

          if (v6)
          {
            *(v3 + 40) = 0;
            *(v3 + 48) = 0;
            WTF::fastFree(v6, a2);
          }
        }

        else
        {
          v4 = *(v3 + 40);
          *(v3 + 40) = 0;
          if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v4, a2);
          }
        }
      }

      *(v3 + 56) = -1;
    }

    v9 = *(v3 + 36);
    if (v9)
    {
      v10 = *(v3 + 24);
      v11 = 40 * v9;
      do
      {
        WebCore::IDBValue::~IDBValue(v10, a2);
        v10 = (v12 + 40);
        v11 -= 40;
      }

      while (v11);
    }

    v13 = *(v3 + 24);
    if (v13)
    {
      *(v3 + 24) = 0;
      *(v3 + 32) = 0;
      WTF::fastFree(v13, a2);
    }

    v14 = *(v3 + 20);
    v15 = *(v3 + 8);
    if (v14)
    {
      v16 = 32 * v14;
      v17 = v15 + 24;
      do
      {
        if (*v17 != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v17 - 16), a2);
        }

        *v17 = -1;
        v17 += 32;
        v16 -= 32;
      }

      while (v16);
      v15 = *(v3 + 8);
    }

    if (v15)
    {
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      WTF::fastFree(v15, a2);
    }

    bmalloc::api::tzoneFree(v3, a2);
  }

  v18 = *(this + 10);
  *(this + 10) = 0;
  if (v18)
  {
    v19 = *(v18 + 148);
    if (v19)
    {
      v20 = 104 * v19;
      v21 = (*(v18 + 136) + 64);
      do
      {
        WebCore::IDBValue::~IDBValue(v21, a2);
        if (*(v21 - 8) != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v21 - 24, a2);
        }

        *(v21 - 8) = -1;
        if (*(v21 - 40) != 255)
        {
          mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v21 - 56, a2);
        }

        *(v21 - 40) = -1;
        v21 = (v21 + 104);
        v20 -= 104;
      }

      while (v20);
    }

    v22 = *(v18 + 136);
    if (v22)
    {
      *(v18 + 136) = 0;
      *(v18 + 144) = 0;
      WTF::fastFree(v22, a2);
    }

    if (*(v18 + 128) == 1)
    {
      if (*(v18 + 120) != 255)
      {
        if (*(v18 + 120))
        {
          v24 = *(v18 + 116);
          v25 = *(v18 + 104);
          if (v24)
          {
            v26 = 8 * v24;
            do
            {
              v27 = *v25;
              *v25 = 0;
              if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v27, a2);
              }

              v25 = (v25 + 8);
              v26 -= 8;
            }

            while (v26);
            v25 = *(v18 + 104);
          }

          if (v25)
          {
            *(v18 + 104) = 0;
            *(v18 + 112) = 0;
            WTF::fastFree(v25, a2);
          }
        }

        else
        {
          v23 = *(v18 + 104);
          *(v18 + 104) = 0;
          if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v23, a2);
          }
        }
      }

      *(v18 + 120) = -1;
    }

    if (*(v18 + 96) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v18 + 80, a2);
    }

    *(v18 + 96) = -1;
    if (*(v18 + 64) != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>(v18 + 48, a2);
    }

    *(v18 + 64) = -1;
    WebCore::IDBValue::~IDBValue(v18, a2);
    bmalloc::api::tzoneFree(v28, v29);
  }

  v30 = *(this + 9);
  *(this + 9) = 0;
  if (v30)
  {
    if (v30[24] != 255)
    {
      mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1> &>((v30 + 8), a2);
    }

    v30[24] = -1;
    bmalloc::api::tzoneFree(v30, a2);
  }

  v31 = *(this + 8);
  *(this + 8) = 0;
  if (v31)
  {
    WebCore::IDBTransactionInfo::~IDBTransactionInfo(v31, a2);
    bmalloc::api::tzoneFree(v32, v33);
  }

  v34 = *(this + 7);
  *(this + 7) = 0;
  if (v34)
  {
    v35 = v34[3];
    if (v35)
    {
      v36 = *(v35 - 1);
      if (v36)
      {
        v37 = (v35 + 8);
        do
        {
          if (*(v37 - 1) != -1)
          {
            WebCore::IDBObjectStoreInfo::~IDBObjectStoreInfo(v37, a2);
          }

          v37 = (v37 + 72);
          --v36;
        }

        while (v36);
      }

      WTF::fastFree((v35 - 16), a2);
    }

    v38 = *v34;
    *v34 = 0;
    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v38, a2);
    }

    bmalloc::api::tzoneFree(v34, a2);
  }

  v39 = *(this + 4);
  *(this + 4) = 0;
  if (v39)
  {
    if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, a2);
    }
  }
}
swift *swift_weakCopyInit(swift *result, void *a2)
{
  v2 = *a2 & 0x7FFFFFFFFFFFFFFELL;
  if (v2)
  {
    _X2 = 0;
    v4 = v2 + 16;
    _X3 = 0;
    __asm { CASP            X2, X3, X2, X3, [X9] }

    if ((_X2 & 0x100000000) != 0)
    {
      v2 = 0;
    }

    else
    {
      _X2 = 0;
      _X3 = 0;
      __asm { CASP            X2, X3, X2, X3, [X9] }

      _X4 = _X2;
      while (1)
      {
        v15 = _X3 | (v4 << 32);
        _X3 = v15;
        __asm { CASP            X2, X3, X4, X5, [X9] }

        if (_X2 == _X4)
        {
          break;
        }

        v4 = HIDWORD(v15);
        _X4 = _X2;
        if (v15 == -1)
        {
          swift::swift_abortWeakRetainOverflow(result, a2, _X2, v15);
        }
      }
    }
  }

  if (v2)
  {
    v17 = v2 | 1;
  }

  else
  {
    v17 = 0;
  }

  *result = v17;
  return result;
}

void *swift_weakTakeInit(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

swift *swift::WeakReference::nativeCopyAssign(swift *this, swift::WeakReference *a2)
{
  if (this != a2)
  {
    v2 = *this;
    *this = 0;
    if ((v2 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      _X10 = 0;
      _X11 = 0;
      __asm { CASP            X10, X11, X10, X11, [X9] }

      _X6 = _X10;
      _X5 = 0;
      __asm { CASP            X4, X5, X6, X7, [X9] }

      if (_X4 != _X10)
      {
        _X2 = _X4;
        do
        {
          _X7 = 0;
          __asm { CASP            X6, X7, X2, X3, [X9] }

          v16 = _X6 ^ _X2;
          _X2 = _X6;
        }

        while (v16);
      }
    }

    v17 = *a2 & 0x7FFFFFFFFFFFFFFELL;
    if (v17)
    {
      _X2 = 0;
      v19 = v17 + 16;
      _X3 = 0;
      __asm { CASP            X2, X3, X2, X3, [X9] }

      if ((_X2 & 0x100000000) != 0)
      {
        v17 = 0;
      }

      else
      {
        _X2 = 0;
        _X3 = 0;
        __asm { CASP            X2, X3, X2, X3, [X9] }

        _X4 = _X2;
        while (1)
        {
          v26 = _X3 | (v19 << 32);
          _X3 = v26;
          __asm { CASP            X2, X3, X4, X5, [X9] }

          if (_X2 == _X4)
          {
            break;
          }

          v19 = HIDWORD(v26);
          _X4 = _X2;
          if (v26 == -1)
          {
            swift::swift_abortWeakRetainOverflow(this, a2, _X2, v26);
          }
        }
      }
    }

    if (v17)
    {
      v28 = v17 | 1;
    }

    else
    {
      v28 = 0;
    }

    *this = v28;
  }

  return this;
}

uint64_t *swift_weakTakeAssign(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = *result;
    *result = 0;
    if ((v2 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      _X10 = 0;
      _X11 = 0;
      __asm { CASP            X10, X11, X10, X11, [X9] }

      _X6 = _X10;
      _X5 = 0;
      __asm { CASP            X4, X5, X6, X7, [X9] }

      if (_X4 != _X10)
      {
        _X2 = _X4;
        do
        {
          _X7 = 0;
          __asm { CASP            X6, X7, X2, X3, [X9] }

          v16 = _X6 ^ _X2;
          _X2 = _X6;
        }

        while (v16);
      }
    }

    v17 = *a2;
    *a2 = 0;
    *result = v17;
  }

  return result;
}

uint64_t swift_initStaticObject::$_0::__invoke(uint64_t this, void *a2)
{
  v2 = *this;
  *v2 = *(this + 8);
  v2[1] = 0x80000004FFFFFFFFLL;
  return this;
}

uint64_t swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)1>(atomic_ullong *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1 && (a2 & 0x80000000FFFFFFFFLL) == 0x80000000FFFFFFFFLL)
  {
    return 0;
  }

  v5 = a3 << 33;
  while (1)
  {
    if (a3 < 2 || (a2 & 0x8000000000000000) == 0)
    {
      v3 = a2 - v5;
      if (a2 - v5 >= 0)
      {
        v6 = a2;
        atomic_compare_exchange_strong_explicit(a1, &v6, v3, memory_order_release, memory_order_relaxed);
        if (v6 == a2)
        {
          return 0;
        }

        goto LABEL_7;
      }
    }

    v7 = a2;
    if (a2 == 0xFFFFFFFFLL)
    {
      return 0;
    }

    if (a2 < 0)
    {
      break;
    }

    v3 = a2 | 0x100000000;
    v6 = a2;
    atomic_compare_exchange_strong_explicit(a1, &v6, v3, memory_order_release, memory_order_relaxed);
    if (v6 == a2)
    {
      __dmb(9u);
      _swift_release_dealloc(a1 - 1);
      return 1;
    }

LABEL_7:
    a2 = v6;
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASP            X4, X5, X4, X5, [X0] }

  LODWORD(_X7) = 0;
  if (a3 == 1)
  {
    v16 = 0;
    goto LABEL_21;
  }

  v7 = _X4;
  if (_X4 < 0 && _X4 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  v16 = a3 != 0;
  if (!a3 || (_X4 & 0x8000000000000000) == 0)
  {
LABEL_21:
    while (1)
    {
      _X12 = _X4 - v5;
      if (_X4 - v5 < 0)
      {
        break;
      }

      v18 = _X7 | (v7 << 32);
      _X7 = v18;
      __asm { CASPL           X6, X7, X12, X13, [X0] }

      if (_X6 == _X4)
      {
        return 0;
      }

      v3 = HIDWORD(v18);
      v20 = _X6 < 0 && v16;
      v7 = HIDWORD(v18);
      _X4 = _X6;
      v21 = _X6;
      if (v20)
      {
        goto LABEL_29;
      }
    }

    v21 = _X4;
    v3 = v7;
LABEL_29:
    v7 = v21;
    _X4 = v21;
  }

  if (v7 == 0xFFFFFFFF)
  {
    return 0;
  }

  return swift::RefCounts<swift::SideTableRefCountBits>::doDecrementSlow<(swift::PerformDeinit)1>(8 * a2 + 16, _X4, _X7 | (v3 << 32), a3);
}

uint64_t swift::RefCounts<swift::SideTableRefCountBits>::doDecrementSlow<(swift::PerformDeinit)1>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  LODWORD(_X5) = a3;
  v5 = a2;
  if (a4 != 1 && a2 < 0 && a2 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  v6 = HIDWORD(a3);
  while (1)
  {
    _X12 = v5 - (a4 << 33);
    v10 = a4 > 1 && v5 < 0 || _X12 < 0;
    if (v10)
    {
      if (v5 == -1)
      {
        return 0;
      }

      _X12 = v5 & 0x80000000FFFFFFFFLL | 0x100000000;
    }

    v11 = _X5 | (v6 << 32);
    _X5 = v11;
    __asm { CASPL           X4, X5, X12, X13, [X0] }

    if (_X4 == v5)
    {
      break;
    }

    v6 = HIDWORD(v11);
    v5 = _X4;
  }

  if (v10)
  {
    __dmb(9u);
    _swift_release_dealloc(*(a1 - 16));
    return 1;
  }

  return 0;
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::BoxCacheEntry>,swift::LazyMutex>::find<swift::TargetMetadata<swift::InProcess> const*>(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *a1;
  {
    v19 = a4;
    v16 = a3;
    v18 = a2;
    v15 = a1;
    v17 = v4;
    a3 = v16;
    v4 = v17;
    a1 = v15;
    a2 = v18;
    a4 = v19;
  }

  v5 = HIDWORD(v4);
  v6 = 0x9DDFEA08EB382D69 * ((__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed + 8 * v4) ^ HIDWORD(v4));
  v7 = 0x1DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v8 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v9 = 4;
  if ((a2 & 3) != 0 && v8)
  {
    v9 = *v8;
  }

  v10 = ~(-1 << v9);
  if ((a2 & 3) == 0)
  {
    v8 = 0;
  }

  while (1)
  {
    v11 = v7 & v10;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v12) = v8 + v11;
      LOBYTE(v12) = atomic_load_explicit(&v8[v11], memory_order_acquire);
      if (!v12)
      {
        return 0;
      }
    }

    else
    {
      v12 = (a2 >> (4 * v11)) & 0xF;
      if (!v12)
      {
        return 0;
      }
    }

LABEL_22:
    v13 = (v12 - 1);
    if (v13 < a3 && *(*(a4 + 8 * v13) + 40) == *a1)
    {
      return a4 + 8 * v13;
    }

    v7 = v11 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v12) = v8 + 2 * v11;
    LOWORD(v12) = atomic_load_explicit(&v8[2 * v11], memory_order_acquire);
    if (!v12)
    {
      return 0;
    }

    goto LABEL_22;
  }

  LODWORD(v12) = atomic_load_explicit(&v8[4 * v11], memory_order_acquire);
  if (v12)
  {
    goto LABEL_22;
  }

  return 0;
}

void anonymous namespace::destroyGenericBox()
{
  if (*v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  (*(*(*(v1 + 16) - 8) + 8))(v0 + *(v1 + 8));
  v2 = v0[1];
  if (v2 < 0)
  {
    if ((~v2 & 0x1FFFFFFFFLL) != 0)
    {
LABEL_12:

      swift_unownedRelease(v0);
      return;
    }
  }

  else if ((v2 & 0x100000000) == 0)
  {
    goto LABEL_12;
  }

  if ((v2 & 0x7FFFFFFEFFFFFFFELL) != 2)
  {
    goto LABEL_12;
  }

  v0;
}

BOOL swift::RefCounts<swift::SideTableRefCountBits>::doDecrementSlow<(swift::PerformDeinit)0>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  LODWORD(_X5) = a3;
  v5 = a2;
  if (a4 != 1 && a2 < 0 && a2 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  v6 = HIDWORD(a3);
  while (1)
  {
    _X12 = v5 - (a4 << 33);
    v10 = a4 > 1 && v5 < 0 || _X12 < 0;
    if (v10)
    {
      if (v5 == -1)
      {
        return 0;
      }

      _X12 = v5 & 0x80000000FFFFFFFFLL | 0x100000000;
    }

    v11 = _X5 | (v6 << 32);
    _X5 = v11;
    __asm { CASPL           X4, X5, X12, X13, [X0] }

    if (_X4 == v5)
    {
      break;
    }

    v6 = HIDWORD(v11);
    v5 = _X4;
  }

  return v10;
}

uint64_t swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementNonAtomicSlow<(swift::PerformDeinit)1>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    goto LABEL_2;
  }

  if ((~a2 & 0x80000000FFFFFFFFLL) == 0)
  {
    return 0;
  }

  if (!a3 || (a2 & 0x8000000000000000) == 0)
  {
LABEL_2:
    if (a2 - (a3 << 33) >= 0)
    {
      v5 = 0;
      *a1 = a2 - (a3 << 33);
      return v5;
    }
  }

  if (a2 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *a1 = a2 | 0x100000000;
    _swift_release_dealloc(a1 - 1);
    return 1;
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASP            X4, X5, X4, X5, [X0] }

  LODWORD(_X7) = 0;
  if (a3 == 1)
  {
    v15 = 0;
LABEL_14:
    v16 = a3 << 33;
    while (1)
    {
      _X12 = _X4 - v16;
      if (_X4 - v16 < 0)
      {
        break;
      }

      v18 = _X7 | (v4 << 32);
      _X7 = v18;
      __asm { CASPL           X6, X7, X12, X13, [X0] }

      if (_X6 == _X4)
      {
        return 0;
      }

      v3 = HIDWORD(v18);
      v20 = _X6 < 0 && v15;
      v4 = HIDWORD(v18);
      _X4 = _X6;
      v21 = _X6;
      if (v20)
      {
        goto LABEL_28;
      }
    }

    v21 = _X4;
    v3 = v4;
LABEL_28:
    v22 = v21;
    _X4 = v21;
    goto LABEL_29;
  }

  v22 = _X4;
  if (_X4 < 0 && _X4 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  v15 = a3 != 0;
  if (!a3 || (_X4 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_29:
  if (v22 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  return swift::RefCounts<swift::SideTableRefCountBits>::doDecrementSlow<(swift::PerformDeinit)1>(8 * a2 + 16, _X4, _X7 | (v3 << 32), a3);
}

uint64_t swift::HeapObjectSideTableEntry::decrementUnownedShouldFree(swift::HeapObjectSideTableEntry *this, int a2)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASP            X2, X3, X2, X3, [X8] }

  if (_X2 < 0)
  {
    v2 = 0xFFFFFFFFLL;
    if (_X2 == 0xFFFFFFFFLL)
    {
      return 0;
    }
  }

  LODWORD(_X5) = 0;
  while (1)
  {
    _X6 = _X2 & 0xFFFFFFFF00000001 | (2 * (((_X2 >> 1) - a2) & 0x7FFFFFFF));
    v12 = _X5 | (v2 << 32);
    _X5 = v12;
    __asm { CASP            X4, X5, X6, X7, [X9] }

    if (_X4 == _X2)
    {
      break;
    }

    v2 = HIDWORD(v12);
    _X2 = _X4;
  }

  if ((((_X2 >> 1) - a2) & 0x7FFFFFFF) != 0)
  {
    return 0;
  }

  _X8 = 0;
  _X9 = 0;
  __asm { CASP            X8, X9, X8, X9, [X10] }

  _X6 = _X8;
  _X5 = 0;
  __asm { CASP            X4, X5, X6, X7, [X10] }

  if (_X4 != _X8)
  {
    _X2 = _X4;
    do
    {
      _X7 = 0;
      __asm { CASP            X6, X7, X2, X3, [X8] }

      v25 = _X6 ^ _X2;
      _X2 = _X6;
    }

    while (v25);
  }

  return 1;
}

BOOL swift::RefCounts<swift::RefCountBitsT<(swift::RefCountInlinedness)1>>::doDecrementSlow<(swift::PerformDeinit)0>(atomic_ullong *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1 && (a2 & 0x80000000FFFFFFFFLL) == 0x80000000FFFFFFFFLL)
  {
    return 0;
  }

  v5 = a3 << 33;
  v6 = 0xFFFFFFFFLL;
  while (1)
  {
    v7 = a2 - v5;
    _NF = a3 > 1 && a2 < 0;
    v9 = _NF || v7 < 0;
    v3 = v9;
    if (v3)
    {
      break;
    }

LABEL_19:
    v11 = a2;
    atomic_compare_exchange_strong_explicit(a1, &v11, v7, memory_order_release, memory_order_relaxed);
    if (v11 == a2)
    {
      return v3;
    }

    a2 = v11;
  }

  v10 = a2;
  if (a2 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = a2 | 0x100000000;
    goto LABEL_19;
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASP            X4, X5, X4, X5, [X0] }

  LODWORD(_X7) = 0;
  if (a3 == 1)
  {
    v19 = 0;
    goto LABEL_28;
  }

  v6 = _X4;
  if ((_X4 & 0x8000000000000000) == 0 || _X4 != 0xFFFFFFFFLL)
  {
    v19 = a3 != 0;
    if (!a3 || (_X4 & 0x8000000000000000) == 0)
    {
LABEL_28:
      while (1)
      {
        _X12 = _X4 - v5;
        if (_X4 - v5 < 0)
        {
          break;
        }

        v21 = _X7 | (v6 << 32);
        _X7 = v21;
        __asm { CASPL           X6, X7, X12, X13, [X0] }

        if (_X6 == _X4)
        {
          return 0;
        }

        v10 = HIDWORD(v21);
        v23 = _X6 < 0 && v19;
        v6 = HIDWORD(v21);
        _X4 = _X6;
        v24 = _X6;
        if (v23)
        {
          goto LABEL_36;
        }
      }

      v24 = _X4;
      v10 = v6;
LABEL_36:
      v6 = v24;
      _X4 = v24;
    }

    if (v6 != 0xFFFFFFFFLL)
    {
      return swift::RefCounts<swift::SideTableRefCountBits>::doDecrementSlow<(swift::PerformDeinit)0>(8 * a2 + 16, _X4, _X7 | (v10 << 32), a3);
    }
  }

  return 0;
}

void anonymous namespace::addImageCallback<&anonymous namespace::TextSegment,&anonymous namespace::ProtocolsSection,0,&(swift::addImageProtocolsBlockCallbackUnsafe(void const*,void const*,unsigned long))>(swift *a1)
{
  v2 = _dyld_lookup_section_info();
  if (v2)
  {

    swift::addImageProtocolsBlockCallbackUnsafe(a1, v2, v3);
  }
}

void anonymous namespace::addImageCallback<&anonymous namespace::TextSegment,&anonymous namespace::ProtocolConformancesSection,1,&(swift::addImageProtocolConformanceBlockCallbackUnsafe(void const*,void const*,unsigned long))>(swift *a1)
{
  v2 = _dyld_lookup_section_info();
  if (v2)
  {

    swift::addImageProtocolConformanceBlockCallbackUnsafe(a1, v2, v3);
  }
}

void anonymous namespace::addImageCallback<&anonymous namespace::TextSegment,&anonymous namespace::TypeMetadataRecordSection,2,&(swift::addImageTypeMetadataRecordBlockCallbackUnsafe(void const*,void const*,unsigned long))>(swift *a1)
{
  v2 = _dyld_lookup_section_info();
  if (v2)
  {

    swift::addImageTypeMetadataRecordBlockCallbackUnsafe(a1, v2, v3);
  }
}

void anonymous namespace::addImageCallback2Sections<&anonymous namespace::TextSegment,&anonymous namespace::DynamicReplacementSection,&anonymous namespace::TextSegment,&anonymous namespace::DynamicReplacementSomeSection,3,4,&(swift::addImageDynamicReplacementBlockCallback(void const*,void const*,unsigned long,void const*,unsigned long))>(swift *a1)
{
  v2 = _dyld_lookup_section_info();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v7 = _dyld_lookup_section_info();

    swift::addImageDynamicReplacementBlockCallback(a1, v4, v5, v7, v6);
  }
}

void anonymous namespace::addImageCallback<&anonymous namespace::TextSegment,&anonymous namespace::AccessibleFunctionsSection,5,&(swift::addImageAccessibleFunctionsBlockCallbackUnsafe(void const*,void const*,unsigned long))>(swift *a1)
{
  v2 = _dyld_lookup_section_info();
  if (v2)
  {

    swift::addImageAccessibleFunctionsBlockCallbackUnsafe(a1, v2, v3);
  }
}

uint64_t swift::SymbolInfo::lookup@<X0>(swift::SymbolInfo *this@<X0>, uint64_t a2@<X8>)
{
  result = dladdr(this, &v7);
  if (result)
  {
    v5 = *&v7.dli_sname;
    *a2 = *&v7.dli_fname;
    *(a2 + 16) = v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 32) = v6;
  return result;
}

void (*swift_readAtKeyPath(uint64_t *a1, char *a2, unint64_t **a3))(uint64_t a1)
{
  if (*a3)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v5);
  result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(TypeContextDescriptor);
  v8 = *TypeContextDescriptor;
  v9 = *TypeContextDescriptor & 0x1F;
  if ((v9 - 17) < 2)
  {
    ResilientImmediateMembersOffset = 2;
LABEL_6:
    v11 = v5[ResilientImmediateMembersOffset + 1];
    *a1 = v11;
    BufferIn = swift::TargetMetadata<swift::InProcess>::allocateBufferIn(v11, a1 + 1);
    swift_getAtKeyPath(a2, BufferIn);
    return _destroy_temporary_continuation;
  }

  if (v9 == 16)
  {
    if ((v8 & 0x20000000) != 0)
    {
      ResilientImmediateMembersOffset = swift::getResilientImmediateMembersOffset(TypeContextDescriptor);
    }

    else
    {
      if ((v8 & 0x10000000) != 0)
      {
        v13 = 0;
        v14 = 6;
      }

      else
      {
        v13 = TypeContextDescriptor[7];
        v14 = 8;
      }

      ResilientImmediateMembersOffset = v13 - TypeContextDescriptor[v14];
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void _destroy_temporary_continuation(uint64_t a1)
{
  v2 = *a1;
  v3 = swift::TargetMetadata<swift::InProcess>::projectBufferFrom(*a1, a1 + 8);
  (*(*(v2 - 8) + 8))(v3, v2);
  v4 = *a1;

  swift::TargetMetadata<swift::InProcess>::deallocateBufferIn(v4, (a1 + 8));
}

void (*swift_modifyAtWritableKeyPath(void *a1, void **a2, uint64_t *a3))(id *a1)
{
  _swift_modifyAtWritableKeyPath_impl(a2, a3);
  *a1 = v4;
  return _release_owner_continuation;
}

void (*swift_modifyAtReferenceWritableKeyPath(void *a1, __int128 *a2, uint64_t *a3))(id *a1)
{
  _swift_modifyAtReferenceWritableKeyPath_impl(a2, a3);
  *a1 = v4;
  return _release_owner_continuation;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<unsigned char,1ul,1ul,1ul>>,true,1ul,1ul,false>::getEnumTagSinglePayload(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 255;
  if ((a2 + 255) < 0x100)
  {
    return 0;
  }

  if (v2 >> 8 >= 0xFF)
  {
    if (v2 >= 0xFFFF00)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        return 0;
      }
    }

    else
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return 0;
    }
  }

  return (*a1 | (v4 << 8)) - 255;
}

_BYTE *swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<unsigned char,1ul,1ul,1ul>>,true,1ul,1ul,false>::storeEnumTagSinglePayload(_BYTE *result, int a2, int a3)
{
  if (a3)
  {
    if ((a3 + 255) >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if ((a3 + 255) >> 8 >= 0xFF)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1;
    }

    if ((a3 + 255) >= 0x100)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    if (a2)
    {
      v6 = ((a2 - 1) >> 8) + 1;
      *result = a2 - 1;
      if (v5 <= 1)
      {
        if (v5)
        {
          result[1] = v6;
        }
      }

      else if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5 <= 1)
    {
      if (v5)
      {
        result[1] = 0;
      }
    }

    else if (v5 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
  }

  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<unsigned short,2ul,2ul,2ul>>,true,2ul,2ul,false>::getEnumTagSinglePayload(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) < 0x10000)
  {
    return 0;
  }

  if (v2 >= 0xFF0000)
  {
    if (v2 <= 0xFFFEFFFF)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        return 0;
      }
    }

    else
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return 0;
    }
  }

  return (*a1 | (v4 << 16)) - 0xFFFF;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<unsigned short,2ul,2ul,2ul>>,true,2ul,2ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = a3 + 0xFFFF;
    if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v4 = 2;
    }

    else
    {
      v4 = 4;
    }

    if (v3 >= 0xFF0000)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }

    if (v3 >= 0x10000)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (a2)
    {
      v7 = ((a2 - 1) >> 16) + 1;
      *result = a2 - 1;
      if (v6 <= 1)
      {
        if (v6)
        {
          *(result + 2) = v7;
        }
      }

      else if (v6 == 2)
      {
        *(result + 2) = v7;
      }

      else
      {
        *(result + 2) = v7;
      }
    }

    else if (v6 <= 1)
    {
      if (v6)
      {
        *(result + 2) = 0;
      }
    }

    else if (v6 == 2)
    {
      *(result + 2) = 0;
    }

    else
    {
      *(result + 2) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
  }

  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<unsigned int,4ul,4ul,4ul>>,true,4ul,4ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<unsigned int,4ul,4ul,4ul>>,true,4ul,4ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 1;
    }

    else
    {
      *(result + 4) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
  }

  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<unsigned long long,8ul,8ul,8ul>>,true,8ul,8ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<unsigned long long,8ul,8ul,8ul>>,true,8ul,8ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 8) = 1;
    }

    else
    {
      *(result + 8) = 0;
    }
  }

  else if (a2)
  {
    *result = (a2 - 1);
  }

  return result;
}

char *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int128_like,16ul,16ul,16ul>>,true,16ul,16ul,(swift::metadataimpl::FixedPacking)0>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int128_like,16ul,16ul,16ul>>::initializeWithCopy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int128_like,16ul,16ul,16ul>>::assignWithCopy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int128_like,16ul,16ul,16ul>>::initializeWithTake(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int128_like,16ul,16ul,16ul>>::assignWithTake(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int128_like,16ul,16ul,16ul>>,true,16ul,16ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int128_like,16ul,16ul,16ul>>,true,16ul,16ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 12) = 0;
      *(result + 16) = 1;
    }

    else
    {
      *(result + 16) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 12) = 0;
  }

  return result;
}

char *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int256_like,16ul,32ul,32ul>>,true,32ul,16ul,(swift::metadataimpl::FixedPacking)0>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int256_like,16ul,32ul,32ul>>::initializeWithCopy(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int256_like,16ul,32ul,32ul>>::assignWithCopy(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int256_like,16ul,32ul,32ul>>::initializeWithTake(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int256_like,16ul,32ul,32ul>>::assignWithTake(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int256_like,16ul,32ul,32ul>>,true,32ul,16ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int256_like,16ul,32ul,32ul>>,true,32ul,16ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 20) = 0;
      *(result + 12) = 0;
      *(result + 28) = 0;
      *(result + 32) = 1;
    }

    else
    {
      *(result + 32) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *(result + 12) = 0;
    *(result + 28) = 0;
  }

  return result;
}

char *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int512_like,16ul,64ul,64ul>>,true,64ul,16ul,(swift::metadataimpl::FixedPacking)0>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int512_like,16ul,64ul,64ul>>::initializeWithCopy(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int512_like,16ul,64ul,64ul>>::assignWithCopy(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int512_like,16ul,64ul,64ul>>::initializeWithTake(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int512_like,16ul,64ul,64ul>>::assignWithTake(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int512_like,16ul,64ul,64ul>>,true,64ul,16ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::int512_like,16ul,64ul,64ul>>,true,64ul,16ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 1;
    }

    else
    {
      *(result + 64) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 48) = 0u;
  }

  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<long,8ul,8ul,8ul>>,true,8ul,8ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<long,8ul,8ul,8ul>>,true,8ul,8ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 8) = 1;
    }

    else
    {
      *(result + 8) = 0;
    }
  }

  else if (a2)
  {
    *result = (a2 - 1);
  }

  return result;
}

float swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<float,4ul,4ul,4ul>>,true,4ul,4ul,(swift::metadataimpl::FixedPacking)1>::initializeBufferWithCopyOfBuffer(_DWORD *a1, float *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

float swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<float,4ul,4ul,4ul>>::initializeWithCopy(_DWORD *a1, float *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

float swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<float,4ul,4ul,4ul>>::assignWithCopy(_DWORD *a1, float *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

float swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<float,4ul,4ul,4ul>>::initializeWithTake(_DWORD *a1, float *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

float swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<float,4ul,4ul,4ul>>::assignWithTake(_DWORD *a1, float *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<float,4ul,4ul,4ul>>,true,4ul,4ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<float,4ul,4ul,4ul>>,true,4ul,4ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 1;
    }

    else
    {
      *(result + 4) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
  }

  return result;
}

double swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<double,8ul,8ul,8ul>>,true,8ul,8ul,(swift::metadataimpl::FixedPacking)1>::initializeBufferWithCopyOfBuffer(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<double,8ul,8ul,8ul>>::initializeWithCopy(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<double,8ul,8ul,8ul>>::assignWithCopy(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<double,8ul,8ul,8ul>>::initializeWithTake(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<double,8ul,8ul,8ul>>::assignWithTake(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<double,8ul,8ul,8ul>>,true,8ul,8ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<double,8ul,8ul,8ul>>,true,8ul,8ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 8) = 1;
    }

    else
    {
      *(result + 8) = 0;
    }
  }

  else if (a2)
  {
    *result = (a2 - 1);
  }

  return result;
}

char *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::float80_like,16ul,16ul,16ul>>,true,16ul,16ul,(swift::metadataimpl::FixedPacking)0>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::float80_like,16ul,16ul,16ul>>::initializeWithCopy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::float80_like,16ul,16ul,16ul>>::assignWithCopy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::float80_like,16ul,16ul,16ul>>::initializeWithTake(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::float80_like,16ul,16ul,16ul>>::assignWithTake(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::float80_like,16ul,16ul,16ul>>,true,16ul,16ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<anonymous namespace::float80_like,16ul,16ul,16ul>>,true,16ul,16ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 12) = 0;
      *(result + 16) = 1;
    }

    else
    {
      *(result + 16) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 12) = 0;
  }

  return result;
}

atomic_ullong **swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::SwiftRetainableBox>,true,8ul,8ul,(swift::metadataimpl::FixedPacking)1>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2)
{
  v3 = *a2;
  *a2;
  *a1 = v3;
  return a1;
}

atomic_ullong **swift::metadataimpl::ValueWitnesses<swift::metadataimpl::SwiftRetainableBox>::initializeWithCopy(atomic_ullong **a1, atomic_ullong **a2)
{
  v3 = *a2;
  *a2;
  *a1 = v3;
  return a1;
}

uint64_t *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::SwiftRetainableBox>::assignWithCopy(uint64_t *a1, atomic_ullong **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a2;
  *a1 = v4;
  v3;
  return a1;
}

uint64_t *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::SwiftRetainableBox>::assignWithTake(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  v3;
  return a1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::SwiftRetainableBox>,true,8ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 ^ 0x80000000;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::SwiftRetainableBox>,true,8ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *result = a2 & 0x7FFFFFFF;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *result = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 4) = 0;
    *(result + 8) = 1;
    return result;
  }

  *(result + 8) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::BridgeObjectBox>::assignWithCopy(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  v3;
  return a1;
}

unint64_t *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::BridgeObjectBox>::assignWithTake(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  v3;
  return a1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::BridgeObjectBox>,true,8ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 ^ 0x80000000;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::BridgeObjectBox>,true,8ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *result = a2 & 0x7FFFFFFF;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *result = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 4) = 0;
    *(result + 8) = 1;
    return result;
  }

  *(result + 8) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::RawPointerBox>,true,8ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, unsigned int a2)
{
  if (a2 >= 2 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  else
  {
    return *a1 == 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::RawPointerBox>,true,8ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 < 2)
  {
    if (a2 >= 2)
    {
      *result = a2 - 2;
      *(result + 4) = 0;
      return result;
    }
  }

  else
  {
    if (a2 > 1)
    {
      *result = a2 - 2;
      *(result + 4) = 0;
      *(result + 8) = 1;
      return result;
    }

    *(result + 8) = 0;
  }

  if (a2)
  {
    *result = 0;
  }

  return result;
}

__n128 swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<swift::TargetValueBuffer<swift::InProcess>,8ul,24ul,24ul>>,true,24ul,8ul,(swift::metadataimpl::FixedPacking)1>::initializeBufferWithCopyOfBuffer(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<swift::TargetValueBuffer<swift::InProcess>,8ul,24ul,24ul>>::initializeWithCopy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<swift::TargetValueBuffer<swift::InProcess>,8ul,24ul,24ul>>::assignWithCopy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<swift::TargetValueBuffer<swift::InProcess>,8ul,24ul,24ul>>::initializeWithTake(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<swift::TargetValueBuffer<swift::InProcess>,8ul,24ul,24ul>>::assignWithTake(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<swift::TargetValueBuffer<swift::InProcess>,8ul,24ul,24ul>>,true,24ul,8ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<swift::TargetValueBuffer<swift::InProcess>,8ul,24ul,24ul>>,true,24ul,8ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 12) = 0;
      *(result + 4) = 0;
      *(result + 20) = 0;
      *(result + 24) = 1;
    }

    else
    {
      *(result + 24) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 12) = 0;
    *(result + 4) = 0;
    *(result + 20) = 0;
  }

  return result;
}

void **swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ObjCRetainableBox>::assignWithCopy(void **a1, id *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

void **swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ObjCRetainableBox>::assignWithTake(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ObjCRetainableBox>,true,8ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 ^ 0x80000000;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::ObjCRetainableBox>,true,8ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *result = a2 & 0x7FFFFFFF;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *result = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 4) = 0;
    *(result + 8) = 1;
    return result;
  }

  *(result + 8) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

char *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::BD,16ul,96ul,96ul>>,true,96ul,16ul,(swift::metadataimpl::FixedPacking)0>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::BD,16ul,96ul,96ul>>::initializeWithCopy(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::BD,16ul,96ul,96ul>>::assignWithCopy(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::BD,16ul,96ul,96ul>>::initializeWithTake(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::BD,16ul,96ul,96ul>>::assignWithTake(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::BD,16ul,96ul,96ul>>,true,96ul,16ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::BD,16ul,96ul,96ul>>,true,96ul,16ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 1;
    }

    else
    {
      *(result + 96) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 80) = 0u;
  }

  return result;
}

char *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Bd,16ul,96ul,96ul>>,true,96ul,16ul,(swift::metadataimpl::FixedPacking)0>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Bd,16ul,96ul,96ul>>::initializeWithCopy(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Bd,16ul,96ul,96ul>>::assignWithCopy(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Bd,16ul,96ul,96ul>>::initializeWithTake(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Bd,16ul,96ul,96ul>>::assignWithTake(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Bd,16ul,96ul,96ul>>,true,96ul,16ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Bd,16ul,96ul,96ul>>,true,96ul,16ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 1;
    }

    else
    {
      *(result + 96) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 80) = 0u;
  }

  return result;
}

__n128 swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Be,8ul,16ul,16ul>>,true,16ul,8ul,(swift::metadataimpl::FixedPacking)1>::initializeBufferWithCopyOfBuffer(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Be,8ul,16ul,16ul>>::initializeWithCopy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Be,8ul,16ul,16ul>>::assignWithCopy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Be,8ul,16ul,16ul>>::initializeWithTake(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Be,8ul,16ul,16ul>>::assignWithTake(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Be,8ul,16ul,16ul>>,true,16ul,8ul,false>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::NativeBox<ctypes::anonymous namespace::Be,8ul,16ul,16ul>>,true,16ul,8ul,false>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 12) = 0;
      *(result + 16) = 1;
    }

    else
    {
      *(result + 16) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 12) = 0;
  }

  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_hLm2ELm2ELm2EEEEELb1ELm2ELm2ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) < 0x10000)
  {
    return 0;
  }

  if (v2 >= 0xFF0000)
  {
    if (v2 <= 0xFFFEFFFF)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        return 0;
      }
    }

    else
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return 0;
    }
  }

  return (*a1 | (v4 << 16)) - 0xFFFF;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_hLm2ELm2ELm2EEEEELb1ELm2ELm2ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = a3 + 0xFFFF;
    if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v4 = 2;
    }

    else
    {
      v4 = 4;
    }

    if (v3 >= 0xFF0000)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }

    if (v3 >= 0x10000)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (a2)
    {
      v7 = ((a2 - 1) >> 16) + 1;
      *result = a2 - 1;
      if (v6 <= 1)
      {
        if (v6)
        {
          *(result + 2) = v7;
        }
      }

      else if (v6 == 2)
      {
        *(result + 2) = v7;
      }

      else
      {
        *(result + 2) = v7;
      }
    }

    else if (v6 <= 1)
    {
      if (v6)
      {
        *(result + 2) = 0;
      }
    }

    else if (v6 == 2)
    {
      *(result + 2) = 0;
    }

    else
    {
      *(result + 2) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
  }

  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv3_hLm4ELm4ELm4EEEEELb1ELm4ELm4ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv3_hLm4ELm4ELm4EEEEELb1ELm4ELm4ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 1;
    }

    else
    {
      *(result + 4) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
  }

  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_hLm4ELm4ELm4EEEEELb1ELm4ELm4ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_hLm4ELm4ELm4EEEEELb1ELm4ELm4ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 1;
    }

    else
    {
      *(result + 4) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
  }

  return result;
}

double _ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_hLm8ELm8ELm8EEEEELb1ELm8ELm8ELNS0_12FixedPackingE1EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_hLm8ELm8ELm8EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_hLm8ELm8ELm8EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_hLm8ELm8ELm8EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_hLm8ELm8ELm8EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_hLm8ELm8ELm8EEEEELb1ELm8ELm8ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_hLm8ELm8ELm8EEEEELb1ELm8ELm8ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 8) = 1;
    }

    else
    {
      *(result + 8) = 0;
    }
  }

  else if (a2)
  {
    *result = (a2 - 1);
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_hLm16ELm16ELm16EEEEELb1ELm16ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_hLm16ELm16ELm16EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_hLm16ELm16ELm16EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_hLm16ELm16ELm16EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_hLm16ELm16ELm16EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_hLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_hLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 12) = 0;
      *(result + 16) = 1;
    }

    else
    {
      *(result + 16) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 12) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_hLm16ELm32ELm32EEEEELb1ELm32ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_hLm16ELm32ELm32EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_hLm16ELm32ELm32EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_hLm16ELm32ELm32EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_hLm16ELm32ELm32EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_hLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_hLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 20) = 0;
      *(result + 12) = 0;
      *(result + 28) = 0;
      *(result + 32) = 1;
    }

    else
    {
      *(result + 32) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *(result + 12) = 0;
    *(result + 28) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_hLm16ELm64ELm64EEEEELb1ELm64ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_hLm16ELm64ELm64EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_hLm16ELm64ELm64EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_hLm16ELm64ELm64EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_hLm16ELm64ELm64EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_hLm16ELm64ELm64EEEEELb1ELm64ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_hLm16ELm64ELm64EEEEELb1ELm64ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 1;
    }

    else
    {
      *(result + 64) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 48) = 0u;
  }

  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_tLm4ELm4ELm4EEEEELb1ELm4ELm4ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_tLm4ELm4ELm4EEEEELb1ELm4ELm4ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 1;
    }

    else
    {
      *(result + 4) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
  }

  return result;
}

double _ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv3_tLm8ELm8ELm8EEEEELb1ELm8ELm8ELNS0_12FixedPackingE1EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv3_tLm8ELm8ELm8EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv3_tLm8ELm8ELm8EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv3_tLm8ELm8ELm8EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv3_tLm8ELm8ELm8EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv3_tLm8ELm8ELm8EEEEELb1ELm8ELm8ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv3_tLm8ELm8ELm8EEEEELb1ELm8ELm8ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 8) = 1;
    }

    else
    {
      *(result + 8) = 0;
    }
  }

  else if (a2)
  {
    *result = (a2 - 1);
  }

  return result;
}

double _ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_tLm8ELm8ELm8EEEEELb1ELm8ELm8ELNS0_12FixedPackingE1EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_tLm8ELm8ELm8EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_tLm8ELm8ELm8EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_tLm8ELm8ELm8EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_tLm8ELm8ELm8EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_tLm8ELm8ELm8EEEEELb1ELm8ELm8ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_tLm8ELm8ELm8EEEEELb1ELm8ELm8ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 8) = 1;
    }

    else
    {
      *(result + 8) = 0;
    }
  }

  else if (a2)
  {
    *result = (a2 - 1);
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_tLm16ELm16ELm16EEEEELb1ELm16ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_tLm16ELm16ELm16EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_tLm16ELm16ELm16EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_tLm16ELm16ELm16EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_tLm16ELm16ELm16EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_tLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_tLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 12) = 0;
      *(result + 16) = 1;
    }

    else
    {
      *(result + 16) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 12) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_tLm16ELm32ELm32EEEEELb1ELm32ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_tLm16ELm32ELm32EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_tLm16ELm32ELm32EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_tLm16ELm32ELm32EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_tLm16ELm32ELm32EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_tLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_tLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 20) = 0;
      *(result + 12) = 0;
      *(result + 28) = 0;
      *(result + 32) = 1;
    }

    else
    {
      *(result + 32) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *(result + 12) = 0;
    *(result + 28) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_tLm16ELm64ELm64EEEEELb1ELm64ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_tLm16ELm64ELm64EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_tLm16ELm64ELm64EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_tLm16ELm64ELm64EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_tLm16ELm64ELm64EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_tLm16ELm64ELm64EEEEELb1ELm64ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_tLm16ELm64ELm64EEEEELb1ELm64ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 1;
    }

    else
    {
      *(result + 64) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 48) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_tLm16ELm128ELm128EEEEELb1ELm128ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_tLm16ELm128ELm128EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_tLm16ELm128ELm128EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_tLm16ELm128ELm128EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_tLm16ELm128ELm128EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_tLm16ELm128ELm128EEEEELb1ELm128ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_tLm16ELm128ELm128EEEEELb1ELm128ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 84) = 0u;
      *(result + 100) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 1;
    }

    else
    {
      *(result + 128) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 84) = 0u;
    *(result + 100) = 0u;
    *(result + 112) = 0u;
  }

  return result;
}

double _ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_jLm8ELm8ELm8EEEEELb1ELm8ELm8ELNS0_12FixedPackingE1EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_jLm8ELm8ELm8EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_jLm8ELm8ELm8EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_jLm8ELm8ELm8EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_jLm8ELm8ELm8EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_jLm8ELm8ELm8EEEEELb1ELm8ELm8ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_jLm8ELm8ELm8EEEEELb1ELm8ELm8ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 8) = 1;
    }

    else
    {
      *(result + 8) = 0;
    }
  }

  else if (a2)
  {
    *result = (a2 - 1);
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv3_jLm16ELm16ELm16EEEEELb1ELm16ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv3_jLm16ELm16ELm16EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv3_jLm16ELm16ELm16EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv3_jLm16ELm16ELm16EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv3_jLm16ELm16ELm16EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv3_jLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv3_jLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 12) = 0;
      *(result + 16) = 1;
    }

    else
    {
      *(result + 16) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 12) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_jLm16ELm16ELm16EEEEELb1ELm16ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_jLm16ELm16ELm16EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_jLm16ELm16ELm16EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_jLm16ELm16ELm16EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_jLm16ELm16ELm16EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_jLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_jLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 12) = 0;
      *(result + 16) = 1;
    }

    else
    {
      *(result + 16) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 12) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_jLm16ELm32ELm32EEEEELb1ELm32ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_jLm16ELm32ELm32EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_jLm16ELm32ELm32EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_jLm16ELm32ELm32EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_jLm16ELm32ELm32EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_jLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_jLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 20) = 0;
      *(result + 12) = 0;
      *(result + 28) = 0;
      *(result + 32) = 1;
    }

    else
    {
      *(result + 32) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *(result + 12) = 0;
    *(result + 28) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_jLm16ELm64ELm64EEEEELb1ELm64ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_jLm16ELm64ELm64EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_jLm16ELm64ELm64EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_jLm16ELm64ELm64EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_jLm16ELm64ELm64EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_jLm16ELm64ELm64EEEEELb1ELm64ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_jLm16ELm64ELm64EEEEELb1ELm64ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 1;
    }

    else
    {
      *(result + 64) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 48) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_jLm16ELm128ELm128EEEEELb1ELm128ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_jLm16ELm128ELm128EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_jLm16ELm128ELm128EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_jLm16ELm128ELm128EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_jLm16ELm128ELm128EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_jLm16ELm128ELm128EEEEELb1ELm128ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_jLm16ELm128ELm128EEEEELb1ELm128ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 84) = 0u;
      *(result + 100) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 1;
    }

    else
    {
      *(result + 128) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 84) = 0u;
    *(result + 100) = 0u;
    *(result + 112) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_jLm16ELm256ELm256EEEEELb1ELm256ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_jLm16ELm256ELm256EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_jLm16ELm256ELm256EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_jLm16ELm256ELm256EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_jLm16ELm256ELm256EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_jLm16ELm256ELm256EEEEELb1ELm256ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_jLm16ELm256ELm256EEEEELb1ELm256ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 84) = 0u;
      *(result + 100) = 0u;
      *(result + 116) = 0u;
      *(result + 132) = 0u;
      *(result + 148) = 0u;
      *(result + 164) = 0u;
      *(result + 180) = 0u;
      *(result + 196) = 0u;
      *(result + 212) = 0u;
      *(result + 228) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 1;
    }

    else
    {
      *(result + 256) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 84) = 0u;
    *(result + 100) = 0u;
    *(result + 116) = 0u;
    *(result + 132) = 0u;
    *(result + 148) = 0u;
    *(result + 164) = 0u;
    *(result + 180) = 0u;
    *(result + 196) = 0u;
    *(result + 212) = 0u;
    *(result + 228) = 0u;
    *(result + 240) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_yLm16ELm16ELm16EEEEELb1ELm16ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_yLm16ELm16ELm16EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_yLm16ELm16ELm16EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_yLm16ELm16ELm16EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_yLm16ELm16ELm16EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_yLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_yLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 12) = 0;
      *(result + 16) = 1;
    }

    else
    {
      *(result + 16) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 12) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv3_yLm16ELm32ELm32EEEEELb1ELm32ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv3_yLm16ELm32ELm32EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv3_yLm16ELm32ELm32EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv3_yLm16ELm32ELm32EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv3_yLm16ELm32ELm32EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv3_yLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv3_yLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 20) = 0;
      *(result + 12) = 0;
      *(result + 28) = 0;
      *(result + 32) = 1;
    }

    else
    {
      *(result + 32) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *(result + 12) = 0;
    *(result + 28) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_yLm16ELm32ELm32EEEEELb1ELm32ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_yLm16ELm32ELm32EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_yLm16ELm32ELm32EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_yLm16ELm32ELm32EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_yLm16ELm32ELm32EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_yLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_yLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 20) = 0;
      *(result + 12) = 0;
      *(result + 28) = 0;
      *(result + 32) = 1;
    }

    else
    {
      *(result + 32) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *(result + 12) = 0;
    *(result + 28) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_yLm16ELm64ELm64EEEEELb1ELm64ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_yLm16ELm64ELm64EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_yLm16ELm64ELm64EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_yLm16ELm64ELm64EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_yLm16ELm64ELm64EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_yLm16ELm64ELm64EEEEELb1ELm64ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_yLm16ELm64ELm64EEEEELb1ELm64ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 1;
    }

    else
    {
      *(result + 64) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 48) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_yLm16ELm128ELm128EEEEELb1ELm128ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_yLm16ELm128ELm128EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_yLm16ELm128ELm128EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_yLm16ELm128ELm128EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_yLm16ELm128ELm128EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_yLm16ELm128ELm128EEEEELb1ELm128ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_yLm16ELm128ELm128EEEEELb1ELm128ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 84) = 0u;
      *(result + 100) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 1;
    }

    else
    {
      *(result + 128) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 84) = 0u;
    *(result + 100) = 0u;
    *(result + 112) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_yLm16ELm256ELm256EEEEELb1ELm256ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_yLm16ELm256ELm256EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_yLm16ELm256ELm256EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_yLm16ELm256ELm256EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_yLm16ELm256ELm256EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_yLm16ELm256ELm256EEEEELb1ELm256ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_yLm16ELm256ELm256EEEEELb1ELm256ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 84) = 0u;
      *(result + 100) = 0u;
      *(result + 116) = 0u;
      *(result + 132) = 0u;
      *(result + 148) = 0u;
      *(result + 164) = 0u;
      *(result + 180) = 0u;
      *(result + 196) = 0u;
      *(result + 212) = 0u;
      *(result + 228) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 1;
    }

    else
    {
      *(result + 256) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 84) = 0u;
    *(result + 100) = 0u;
    *(result + 116) = 0u;
    *(result + 132) = 0u;
    *(result + 148) = 0u;
    *(result + 164) = 0u;
    *(result + 180) = 0u;
    *(result + 196) = 0u;
    *(result + 212) = 0u;
    *(result + 228) = 0u;
    *(result + 240) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_yLm16ELm512ELm512EEEEELb1ELm512ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_yLm16ELm512ELm512EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  v12 = *(a2 + 160);
  v13 = *(a2 + 176);
  v14 = *(a2 + 192);
  v15 = *(a2 + 208);
  v16 = *(a2 + 224);
  v17 = *(a2 + 240);
  v18 = *(a2 + 256);
  v19 = *(a2 + 272);
  v20 = *(a2 + 288);
  v21 = *(a2 + 304);
  v22 = *(a2 + 320);
  v23 = *(a2 + 336);
  v24 = *(a2 + 352);
  v25 = *(a2 + 368);
  v26 = *(a2 + 384);
  v27 = *(a2 + 400);
  v28 = *(a2 + 416);
  v29 = *(a2 + 432);
  v30 = *(a2 + 448);
  v31 = *(a2 + 464);
  v32 = *(a2 + 496);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v32;
  *(a1 + 448) = v30;
  *(a1 + 464) = v31;
  *(a1 + 416) = v28;
  *(a1 + 432) = v29;
  *(a1 + 384) = v26;
  *(a1 + 400) = v27;
  *(a1 + 352) = v24;
  *(a1 + 368) = v25;
  *(a1 + 320) = v22;
  *(a1 + 336) = v23;
  *(a1 + 288) = v20;
  *(a1 + 304) = v21;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  *(a1 + 224) = v16;
  *(a1 + 240) = v17;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_yLm16ELm512ELm512EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  v12 = *(a2 + 160);
  v13 = *(a2 + 176);
  v14 = *(a2 + 192);
  v15 = *(a2 + 208);
  v16 = *(a2 + 224);
  v17 = *(a2 + 240);
  v18 = *(a2 + 256);
  v19 = *(a2 + 272);
  v20 = *(a2 + 288);
  v21 = *(a2 + 304);
  v22 = *(a2 + 320);
  v23 = *(a2 + 336);
  v24 = *(a2 + 352);
  v25 = *(a2 + 368);
  v26 = *(a2 + 384);
  v27 = *(a2 + 400);
  v28 = *(a2 + 416);
  v29 = *(a2 + 432);
  v30 = *(a2 + 448);
  v31 = *(a2 + 464);
  v32 = *(a2 + 496);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v32;
  *(a1 + 448) = v30;
  *(a1 + 464) = v31;
  *(a1 + 416) = v28;
  *(a1 + 432) = v29;
  *(a1 + 384) = v26;
  *(a1 + 400) = v27;
  *(a1 + 352) = v24;
  *(a1 + 368) = v25;
  *(a1 + 320) = v22;
  *(a1 + 336) = v23;
  *(a1 + 288) = v20;
  *(a1 + 304) = v21;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  *(a1 + 224) = v16;
  *(a1 + 240) = v17;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_yLm16ELm512ELm512EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  v12 = *(a2 + 160);
  v13 = *(a2 + 176);
  v14 = *(a2 + 192);
  v15 = *(a2 + 208);
  v16 = *(a2 + 224);
  v17 = *(a2 + 240);
  v18 = *(a2 + 256);
  v19 = *(a2 + 272);
  v20 = *(a2 + 288);
  v21 = *(a2 + 304);
  v22 = *(a2 + 320);
  v23 = *(a2 + 336);
  v24 = *(a2 + 352);
  v25 = *(a2 + 368);
  v26 = *(a2 + 384);
  v27 = *(a2 + 400);
  v28 = *(a2 + 416);
  v29 = *(a2 + 432);
  v30 = *(a2 + 448);
  v31 = *(a2 + 464);
  v32 = *(a2 + 496);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v32;
  *(a1 + 448) = v30;
  *(a1 + 464) = v31;
  *(a1 + 416) = v28;
  *(a1 + 432) = v29;
  *(a1 + 384) = v26;
  *(a1 + 400) = v27;
  *(a1 + 352) = v24;
  *(a1 + 368) = v25;
  *(a1 + 320) = v22;
  *(a1 + 336) = v23;
  *(a1 + 288) = v20;
  *(a1 + 304) = v21;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  *(a1 + 224) = v16;
  *(a1 + 240) = v17;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_yLm16ELm512ELm512EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  v12 = *(a2 + 160);
  v13 = *(a2 + 176);
  v14 = *(a2 + 192);
  v15 = *(a2 + 208);
  v16 = *(a2 + 224);
  v17 = *(a2 + 240);
  v18 = *(a2 + 256);
  v19 = *(a2 + 272);
  v20 = *(a2 + 288);
  v21 = *(a2 + 304);
  v22 = *(a2 + 320);
  v23 = *(a2 + 336);
  v24 = *(a2 + 352);
  v25 = *(a2 + 368);
  v26 = *(a2 + 384);
  v27 = *(a2 + 400);
  v28 = *(a2 + 416);
  v29 = *(a2 + 432);
  v30 = *(a2 + 448);
  v31 = *(a2 + 464);
  v32 = *(a2 + 496);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v32;
  *(a1 + 448) = v30;
  *(a1 + 464) = v31;
  *(a1 + 416) = v28;
  *(a1 + 432) = v29;
  *(a1 + 384) = v26;
  *(a1 + 400) = v27;
  *(a1 + 352) = v24;
  *(a1 + 368) = v25;
  *(a1 + 320) = v22;
  *(a1 + 336) = v23;
  *(a1 + 288) = v20;
  *(a1 + 304) = v21;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  *(a1 + 224) = v16;
  *(a1 + 240) = v17;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_yLm16ELm512ELm512EEEEELb1ELm512ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 512))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_yLm16ELm512ELm512EEEEELb1ELm512ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 84) = 0u;
      *(result + 100) = 0u;
      *(result + 116) = 0u;
      *(result + 132) = 0u;
      *(result + 148) = 0u;
      *(result + 164) = 0u;
      *(result + 180) = 0u;
      *(result + 196) = 0u;
      *(result + 212) = 0u;
      *(result + 228) = 0u;
      *(result + 244) = 0u;
      *(result + 4) = 0u;
      *(result + 496) = 0u;
      *(result + 260) = 0u;
      *(result + 276) = 0u;
      *(result + 292) = 0u;
      *(result + 308) = 0u;
      *(result + 324) = 0u;
      *(result + 340) = 0u;
      *(result + 356) = 0u;
      *(result + 372) = 0u;
      *(result + 388) = 0u;
      *(result + 404) = 0u;
      *(result + 420) = 0u;
      *(result + 436) = 0u;
      *(result + 452) = 0u;
      *(result + 468) = 0u;
      *(result + 484) = 0u;
      *(result + 512) = 1;
    }

    else
    {
      *(result + 512) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 84) = 0u;
    *(result + 100) = 0u;
    *(result + 116) = 0u;
    *(result + 132) = 0u;
    *(result + 148) = 0u;
    *(result + 164) = 0u;
    *(result + 180) = 0u;
    *(result + 196) = 0u;
    *(result + 212) = 0u;
    *(result + 228) = 0u;
    *(result + 244) = 0u;
    *(result + 496) = 0u;
    *(result + 4) = 0u;
    result += 4;
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 400) = 0u;
    *(result + 416) = 0u;
    *(result + 432) = 0u;
    *(result + 448) = 0u;
    *(result + 464) = 0u;
    *(result + 480) = 0u;
  }

  return result;
}

double _ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_fLm8ELm8ELm8EEEEELb1ELm8ELm8ELNS0_12FixedPackingE1EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_fLm8ELm8ELm8EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_fLm8ELm8ELm8EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_fLm8ELm8ELm8EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_fLm8ELm8ELm8EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(void *a1, double *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_fLm8ELm8ELm8EEEEELb1ELm8ELm8ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_fLm8ELm8ELm8EEEEELb1ELm8ELm8ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 8) = 1;
    }

    else
    {
      *(result + 8) = 0;
    }
  }

  else if (a2)
  {
    *result = (a2 - 1);
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_fLm16ELm16ELm16EEEEELb1ELm16ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_fLm16ELm16ELm16EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_fLm16ELm16ELm16EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_fLm16ELm16ELm16EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_fLm16ELm16ELm16EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_fLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_fLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 12) = 0;
      *(result + 16) = 1;
    }

    else
    {
      *(result + 16) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 12) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_fLm16ELm32ELm32EEEEELb1ELm32ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_fLm16ELm32ELm32EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_fLm16ELm32ELm32EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_fLm16ELm32ELm32EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_fLm16ELm32ELm32EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_fLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_fLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 20) = 0;
      *(result + 12) = 0;
      *(result + 28) = 0;
      *(result + 32) = 1;
    }

    else
    {
      *(result + 32) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *(result + 12) = 0;
    *(result + 28) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_fLm16ELm64ELm64EEEEELb1ELm64ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_fLm16ELm64ELm64EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_fLm16ELm64ELm64EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_fLm16ELm64ELm64EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_fLm16ELm64ELm64EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_fLm16ELm64ELm64EEEEELb1ELm64ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_fLm16ELm64ELm64EEEEELb1ELm64ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 1;
    }

    else
    {
      *(result + 64) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 48) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_fLm16ELm128ELm128EEEEELb1ELm128ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_fLm16ELm128ELm128EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_fLm16ELm128ELm128EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_fLm16ELm128ELm128EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_fLm16ELm128ELm128EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_fLm16ELm128ELm128EEEEELb1ELm128ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_fLm16ELm128ELm128EEEEELb1ELm128ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 84) = 0u;
      *(result + 100) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 1;
    }

    else
    {
      *(result + 128) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 84) = 0u;
    *(result + 100) = 0u;
    *(result + 112) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_fLm16ELm256ELm256EEEEELb1ELm256ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_fLm16ELm256ELm256EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_fLm16ELm256ELm256EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_fLm16ELm256ELm256EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_fLm16ELm256ELm256EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_fLm16ELm256ELm256EEEEELb1ELm256ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_fLm16ELm256ELm256EEEEELb1ELm256ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 84) = 0u;
      *(result + 100) = 0u;
      *(result + 116) = 0u;
      *(result + 132) = 0u;
      *(result + 148) = 0u;
      *(result + 164) = 0u;
      *(result + 180) = 0u;
      *(result + 196) = 0u;
      *(result + 212) = 0u;
      *(result + 228) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 1;
    }

    else
    {
      *(result + 256) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 84) = 0u;
    *(result + 100) = 0u;
    *(result + 116) = 0u;
    *(result + 132) = 0u;
    *(result + 148) = 0u;
    *(result + 164) = 0u;
    *(result + 180) = 0u;
    *(result + 196) = 0u;
    *(result + 212) = 0u;
    *(result + 228) = 0u;
    *(result + 240) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_dLm16ELm16ELm16EEEEELb1ELm16ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_dLm16ELm16ELm16EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_dLm16ELm16ELm16EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_dLm16ELm16ELm16EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv2_dLm16ELm16ELm16EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_dLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv2_dLm16ELm16ELm16EEEEELb1ELm16ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 12) = 0;
      *(result + 16) = 1;
    }

    else
    {
      *(result + 16) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 12) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_dLm16ELm32ELm32EEEEELb1ELm32ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_dLm16ELm32ELm32EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_dLm16ELm32ELm32EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_dLm16ELm32ELm32EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv4_dLm16ELm32ELm32EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_dLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv4_dLm16ELm32ELm32EEEEELb1ELm32ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0;
      *(result + 20) = 0;
      *(result + 12) = 0;
      *(result + 28) = 0;
      *(result + 32) = 1;
    }

    else
    {
      *(result + 32) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *(result + 12) = 0;
    *(result + 28) = 0;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_dLm16ELm64ELm64EEEEELb1ELm64ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_dLm16ELm64ELm64EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_dLm16ELm64ELm64EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_dLm16ELm64ELm64EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv8_dLm16ELm64ELm64EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_dLm16ELm64ELm64EEEEELb1ELm64ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv8_dLm16ELm64ELm64EEEEELb1ELm64ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 1;
    }

    else
    {
      *(result + 64) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 48) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_dLm16ELm128ELm128EEEEELb1ELm128ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_dLm16ELm128ELm128EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_dLm16ELm128ELm128EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_dLm16ELm128ELm128EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv16_dLm16ELm128ELm128EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_dLm16ELm128ELm128EEEEELb1ELm128ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv16_dLm16ELm128ELm128EEEEELb1ELm128ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 84) = 0u;
      *(result + 100) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 1;
    }

    else
    {
      *(result + 128) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 84) = 0u;
    *(result + 100) = 0u;
    *(result + 112) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_dLm16ELm256ELm256EEEEELb1ELm256ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_dLm16ELm256ELm256EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_dLm16ELm256ELm256EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_dLm16ELm256ELm256EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv32_dLm16ELm256ELm256EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  result = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v15 = a2[12];
  v14 = a2[13];
  v16 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v16;
  *(a1 + 192) = v15;
  *(a1 + 208) = v14;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  *a1 = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_dLm16ELm256ELm256EEEEELb1ELm256ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv32_dLm16ELm256ELm256EEEEELb1ELm256ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 4) = 0u;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 84) = 0u;
      *(result + 100) = 0u;
      *(result + 116) = 0u;
      *(result + 132) = 0u;
      *(result + 148) = 0u;
      *(result + 164) = 0u;
      *(result + 180) = 0u;
      *(result + 196) = 0u;
      *(result + 212) = 0u;
      *(result + 228) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 1;
    }

    else
    {
      *(result + 256) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0u;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 84) = 0u;
    *(result + 100) = 0u;
    *(result + 116) = 0u;
    *(result + 132) = 0u;
    *(result + 148) = 0u;
    *(result + 164) = 0u;
    *(result + 180) = 0u;
    *(result + 196) = 0u;
    *(result + 212) = 0u;
    *(result + 228) = 0u;
    *(result + 240) = 0u;
  }

  return result;
}

char *_ZN5swift12metadataimpl20BufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_dLm16ELm512ELm512EEEEELb1ELm512ELm16ELNS0_12FixedPackingE0EE32initializeBufferWithCopyOfBufferEPNS_17TargetValueBufferINS_9InProcessEEESC_PKNS_14TargetMetadataISA_EE(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_dLm16ELm512ELm512EEEE18initializeWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  v12 = *(a2 + 160);
  v13 = *(a2 + 176);
  v14 = *(a2 + 192);
  v15 = *(a2 + 208);
  v16 = *(a2 + 224);
  v17 = *(a2 + 240);
  v18 = *(a2 + 256);
  v19 = *(a2 + 272);
  v20 = *(a2 + 288);
  v21 = *(a2 + 304);
  v22 = *(a2 + 320);
  v23 = *(a2 + 336);
  v24 = *(a2 + 352);
  v25 = *(a2 + 368);
  v26 = *(a2 + 384);
  v27 = *(a2 + 400);
  v28 = *(a2 + 416);
  v29 = *(a2 + 432);
  v30 = *(a2 + 448);
  v31 = *(a2 + 464);
  v32 = *(a2 + 496);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v32;
  *(a1 + 448) = v30;
  *(a1 + 464) = v31;
  *(a1 + 416) = v28;
  *(a1 + 432) = v29;
  *(a1 + 384) = v26;
  *(a1 + 400) = v27;
  *(a1 + 352) = v24;
  *(a1 + 368) = v25;
  *(a1 + 320) = v22;
  *(a1 + 336) = v23;
  *(a1 + 288) = v20;
  *(a1 + 304) = v21;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  *(a1 + 224) = v16;
  *(a1 + 240) = v17;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_dLm16ELm512ELm512EEEE14assignWithCopyEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  v12 = *(a2 + 160);
  v13 = *(a2 + 176);
  v14 = *(a2 + 192);
  v15 = *(a2 + 208);
  v16 = *(a2 + 224);
  v17 = *(a2 + 240);
  v18 = *(a2 + 256);
  v19 = *(a2 + 272);
  v20 = *(a2 + 288);
  v21 = *(a2 + 304);
  v22 = *(a2 + 320);
  v23 = *(a2 + 336);
  v24 = *(a2 + 352);
  v25 = *(a2 + 368);
  v26 = *(a2 + 384);
  v27 = *(a2 + 400);
  v28 = *(a2 + 416);
  v29 = *(a2 + 432);
  v30 = *(a2 + 448);
  v31 = *(a2 + 464);
  v32 = *(a2 + 496);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v32;
  *(a1 + 448) = v30;
  *(a1 + 464) = v31;
  *(a1 + 416) = v28;
  *(a1 + 432) = v29;
  *(a1 + 384) = v26;
  *(a1 + 400) = v27;
  *(a1 + 352) = v24;
  *(a1 + 368) = v25;
  *(a1 + 320) = v22;
  *(a1 + 336) = v23;
  *(a1 + 288) = v20;
  *(a1 + 304) = v21;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  *(a1 + 224) = v16;
  *(a1 + 240) = v17;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_dLm16ELm512ELm512EEEE18initializeWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  v12 = *(a2 + 160);
  v13 = *(a2 + 176);
  v14 = *(a2 + 192);
  v15 = *(a2 + 208);
  v16 = *(a2 + 224);
  v17 = *(a2 + 240);
  v18 = *(a2 + 256);
  v19 = *(a2 + 272);
  v20 = *(a2 + 288);
  v21 = *(a2 + 304);
  v22 = *(a2 + 320);
  v23 = *(a2 + 336);
  v24 = *(a2 + 352);
  v25 = *(a2 + 368);
  v26 = *(a2 + 384);
  v27 = *(a2 + 400);
  v28 = *(a2 + 416);
  v29 = *(a2 + 432);
  v30 = *(a2 + 448);
  v31 = *(a2 + 464);
  v32 = *(a2 + 496);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v32;
  *(a1 + 448) = v30;
  *(a1 + 464) = v31;
  *(a1 + 416) = v28;
  *(a1 + 432) = v29;
  *(a1 + 384) = v26;
  *(a1 + 400) = v27;
  *(a1 + 352) = v24;
  *(a1 + 368) = v25;
  *(a1 + 320) = v22;
  *(a1 + 336) = v23;
  *(a1 + 288) = v20;
  *(a1 + 304) = v21;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  *(a1 + 224) = v16;
  *(a1 + 240) = v17;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 _ZN5swift12metadataimpl14ValueWitnessesINS0_9NativeBoxIDv64_dLm16ELm512ELm512EEEE14assignWithTakeEPNS_11OpaqueValueES7_PKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  v12 = *(a2 + 160);
  v13 = *(a2 + 176);
  v14 = *(a2 + 192);
  v15 = *(a2 + 208);
  v16 = *(a2 + 224);
  v17 = *(a2 + 240);
  v18 = *(a2 + 256);
  v19 = *(a2 + 272);
  v20 = *(a2 + 288);
  v21 = *(a2 + 304);
  v22 = *(a2 + 320);
  v23 = *(a2 + 336);
  v24 = *(a2 + 352);
  v25 = *(a2 + 368);
  v26 = *(a2 + 384);
  v27 = *(a2 + 400);
  v28 = *(a2 + 416);
  v29 = *(a2 + 432);
  v30 = *(a2 + 448);
  v31 = *(a2 + 464);
  v32 = *(a2 + 496);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v32;
  *(a1 + 448) = v30;
  *(a1 + 464) = v31;
  *(a1 + 416) = v28;
  *(a1 + 432) = v29;
  *(a1 + 384) = v26;
  *(a1 + 400) = v27;
  *(a1 + 352) = v24;
  *(a1 + 368) = v25;
  *(a1 + 320) = v22;
  *(a1 + 336) = v23;
  *(a1 + 288) = v20;
  *(a1 + 304) = v21;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  *(a1 + 224) = v16;
  *(a1 + 240) = v17;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_dLm16ELm512ELm512EEEEELb1ELm512ELm16ELb0EE23getEnumTagSinglePayloadEPKNS_11OpaqueValueEjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 512))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _ZN5swift12metadataimpl29FixedSizeBufferValueWitnessesINS0_14ValueWitnessesINS0_9NativeBoxIDv64_dLm16ELm512ELm512EEEEELb1ELm512ELm16ELb0EE25storeEnumTagSinglePayloadEPNS_11OpaqueValueEjjPKNS_14TargetMetadataINS_9InProcessEEE(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    if (a2)
    {
      *result = a2 - 1;
      *(result + 20) = 0u;
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 68) = 0u;
      *(result + 84) = 0u;
      *(result + 100) = 0u;
      *(result + 116) = 0u;
      *(result + 132) = 0u;
      *(result + 148) = 0u;
      *(result + 164) = 0u;
      *(result + 180) = 0u;
      *(result + 196) = 0u;
      *(result + 212) = 0u;
      *(result + 228) = 0u;
      *(result + 244) = 0u;
      *(result + 4) = 0u;
      *(result + 496) = 0u;
      *(result + 260) = 0u;
      *(result + 276) = 0u;
      *(result + 292) = 0u;
      *(result + 308) = 0u;
      *(result + 324) = 0u;
      *(result + 340) = 0u;
      *(result + 356) = 0u;
      *(result + 372) = 0u;
      *(result + 388) = 0u;
      *(result + 404) = 0u;
      *(result + 420) = 0u;
      *(result + 436) = 0u;
      *(result + 452) = 0u;
      *(result + 468) = 0u;
      *(result + 484) = 0u;
      *(result + 512) = 1;
    }

    else
    {
      *(result + 512) = 0;
    }
  }

  else if (a2)
  {
    *result = a2 - 1;
    *(result + 20) = 0u;
    *(result + 36) = 0u;
    *(result + 52) = 0u;
    *(result + 68) = 0u;
    *(result + 84) = 0u;
    *(result + 100) = 0u;
    *(result + 116) = 0u;
    *(result + 132) = 0u;
    *(result + 148) = 0u;
    *(result + 164) = 0u;
    *(result + 180) = 0u;
    *(result + 196) = 0u;
    *(result + 212) = 0u;
    *(result + 228) = 0u;
    *(result + 244) = 0u;
    *(result + 496) = 0u;
    *(result + 4) = 0u;
    result += 4;
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 400) = 0u;
    *(result + 416) = 0u;
    *(result + 432) = 0u;
    *(result + 448) = 0u;
    *(result + 464) = 0u;
    *(result + 480) = 0u;
  }

  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::PointerPointerBox>,true,8ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 ^ 0x80000000;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::PointerPointerBox>,true,8ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *result = a2 & 0x7FFFFFFF;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *result = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 4) = 0;
    *(result + 8) = 1;
    return result;
  }

  *(result + 8) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

void *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<anonymous namespace::ThickFunctionBox>,true,16ul,8ul,(swift::metadataimpl::FixedPacking)1>::initializeBufferWithCopyOfBuffer(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  v3;
  a1[1] = v3;
  return a1;
}

void *swift::metadataimpl::ValueWitnesses<anonymous namespace::ThickFunctionBox>::initializeWithCopy(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  v3;
  a1[1] = v3;
  return a1;
}

void *swift::metadataimpl::ValueWitnesses<anonymous namespace::ThickFunctionBox>::assignWithCopy(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  v4 = a2[1];
  v4;
  a1[1] = v4;
  v3;
  return a1;
}

void *swift::metadataimpl::ValueWitnesses<anonymous namespace::ThickFunctionBox>::initializeWithTake(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  return result;
}

void *swift::metadataimpl::ValueWitnesses<anonymous namespace::ThickFunctionBox>::assignWithTake(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];
  v3;
  return a1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<anonymous namespace::ThickFunctionBox>,true,16ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 ^ 0x80000000;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<anonymous namespace::ThickFunctionBox>,true,16ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *result = a2 & 0x7FFFFFFF;
      *(result + 4) = 0;
      *(result + 12) = 0;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *result = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 4) = 0;
    *(result + 12) = 0;
    *(result + 16) = 1;
    return result;
  }

  *(result + 16) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

char *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<anonymous namespace::DiffFunctionBox>,true,48ul,8ul,(swift::metadataimpl::FixedPacking)0>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  if (*(a3 - 8))
  {
    v3 = *(a3 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a2;
  *a1 = *a2;
  v4;
  return v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
}

uint64_t swift::metadataimpl::ValueWitnesses<anonymous namespace::DiffFunctionBox>::destroy(uint64_t *a1)
{
  a1[1];
  a1[3];
  v2 = a1[5];

  return v2;
}

void *swift::metadataimpl::ValueWitnesses<anonymous namespace::DiffFunctionBox>::initializeWithCopy(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a2[1];
  v4;
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = a2[3];
  v5;
  a1[3] = v5;
  a1[4] = a2[4];
  v6 = a2[5];
  v6;
  a1[5] = v6;
  return a1;
}

void *swift::metadataimpl::ValueWitnesses<anonymous namespace::DiffFunctionBox>::assignWithCopy(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  v5 = a2[1];
  v5;
  a1[1] = v5;
  v4;
  a1[2] = a2[2];
  v6 = a1[3];
  v7 = a2[3];
  v7;
  a1[3] = v7;
  v6;
  a1[4] = a2[4];
  v8 = a1[5];
  v9 = a2[5];
  v9;
  a1[5] = v9;
  v8;
  return a1;
}

void *swift::metadataimpl::ValueWitnesses<anonymous namespace::DiffFunctionBox>::initializeWithTake(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  return result;
}

void *swift::metadataimpl::ValueWitnesses<anonymous namespace::DiffFunctionBox>::assignWithTake(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];
  v4;
  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];
  v5;
  a1[4] = a2[4];
  v6 = a1[5];
  a1[5] = a2[5];
  v6;
  return a1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<anonymous namespace::DiffFunctionBox>,true,48ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 ^ 0x80000000;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

double swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<anonymous namespace::DiffFunctionBox>,true,48ul,8ul,true>::storeEnumTagSinglePayload(uint64_t a1, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      result = 0.0;
      *(a1 + 4) = 0u;
      *(a1 + 20) = 0u;
      *(a1 + 32) = 0u;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *a1 = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    result = 0.0;
    *(a1 + 4) = 0u;
    *(a1 + 20) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 1;
    return result;
  }

  *(a1 + 48) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

void *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<anonymous namespace::TrivialThickFunctionBox>,true,16ul,8ul,(swift::metadataimpl::FixedPacking)1>::initializeBufferWithCopyOfBuffer(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  return result;
}

void *swift::metadataimpl::ValueWitnesses<anonymous namespace::TrivialThickFunctionBox>::initializeWithCopy(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  return result;
}

void *swift::metadataimpl::ValueWitnesses<anonymous namespace::TrivialThickFunctionBox>::assignWithCopy(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  return result;
}

void *swift::metadataimpl::ValueWitnesses<anonymous namespace::TrivialThickFunctionBox>::initializeWithTake(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  return result;
}

void *swift::metadataimpl::ValueWitnesses<anonymous namespace::TrivialThickFunctionBox>::assignWithTake(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<anonymous namespace::TrivialThickFunctionBox>,true,16ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 ^ 0x80000000;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<anonymous namespace::TrivialThickFunctionBox>,true,16ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *result = a2 & 0x7FFFFFFF;
      *(result + 4) = 0;
      *(result + 12) = 0;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *result = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 4) = 0;
    *(result + 12) = 0;
    *(result + 16) = 1;
    return result;
  }

  *(result + 16) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::FunctionPointerBox>,true,8ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 ^ 0x80000000;
  }

  if (HIDWORD(*a1))
  {
    return 0;
  }

  return *a1 + 1;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::FunctionPointerBox>,true,8ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *result = a2 & 0x7FFFFFFF;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *result = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 4) = 0;
    *(result + 8) = 1;
    return result;
  }

  *(result + 8) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::AggregateBox<>>,true,0ul,1ul,false>::getEnumTagSinglePayload(unsigned int *a1, int a2)
{
  if (a2)
  {
    v2 = a2 + 1;
    if ((a2 + 1) >= 2)
    {
      if (v2 >= 0x100)
      {
        if (v2 >= 0x10000)
        {
          result = *a1;
          if (result)
          {
            return result;
          }
        }

        else
        {
          result = *a1;
          if (result)
          {
            return result;
          }
        }
      }

      else
      {
        result = *a1;
        if (result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

_BYTE *swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::AggregateBox<>>,true,0ul,1ul,false>::storeEnumTagSinglePayload(_BYTE *result, int a2, int a3)
{
  if (a3)
  {
    v3 = a3 + 1;
    if ((a3 + 1) >= 0x10000)
    {
      v4 = 4;
    }

    else
    {
      v4 = 2;
    }

    if (v3 >= 0x100)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }

    if (v3 >= 2)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (a2)
    {
      if (v6 <= 1)
      {
        if (v6)
        {
          *result = a2;
        }
      }

      else if (v6 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v6 <= 1)
    {
      if (v6)
      {
        *result = 0;
      }
    }

    else if (v6 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void swift::libPrespecializedImageLoaded(swift *this)
{
  v1 = dyld_shared_cache_some_image_overridden();
  if (v1)
  {
    if (qword_1ED415F98 != -1)
    {
      swift::libPrespecializedImageLoaded(v1);
    }

    atomic_store(4u, &unk_1ED415F68);
  }
}

unsigned __int16 *swift::getLibPrespecializedMetadata(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v93 = *MEMORY[0x1E69E9840];
  if (qword_1ED415F98 != -1)
  {
    swift::libPrespecializedImageLoaded(v1);
  }

  v5 = atomic_load(&unk_1ED415F68);
  switch(v5)
  {
    case 3u:
      result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v4);
      if (!result)
      {
        return result;
      }

      v10 = *(LibPrespecialized + 24);
      v11 = *v10;
      if (!*v10)
      {
LABEL_28:
        if (prespecializedLoggingEnabled == 1)
        {
          fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Looking up description %p in debug table, no entry found.\n");
        }

        return 0;
      }

      v12 = 0;
      v13 = v10 + 1;
      while (1)
      {
        v14 = v13[2 * v12];
        if (*v14 == result[4] + 1)
        {
          v15 = v4 ? v4 : 0;
          if (v15 == v14[1])
          {
            break;
          }
        }

LABEL_18:
        if (++v12 == v11)
        {
          goto LABEL_28;
        }
      }

      v16 = v14 + 2;
      v17 = result[4];
      v18 = v3;
      while (v17)
      {
        v20 = *v16++;
        v19 = v20;
        v21 = *v18++;
        --v17;
        if (v19 != v21)
        {
          goto LABEL_18;
        }
      }

      v23 = &v13[2 * v12];
      if (prespecializedLoggingEnabled == 1)
      {
        fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Looking up description %p in debug table, found %p.\n", v4, v23[1]);
      }

      return v23[1];
    case 2u:
      result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v4);
      if (result)
      {
        result = _dyld_find_pointer_hash_table_entry();
        if (prespecializedLoggingEnabled == 1)
        {
          v49 = v4;
          v22 = result;
          fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Looking up description %p in dyld table, found %p.\n", v49, result);
          return v22;
        }
      }

      break;
    case 1u:
      result = swift::TargetContextDescriptor<swift::InProcess>::getGenericContext(v4);
      if (!result)
      {
        return result;
      }

      v7 = result[2];
      if (result[2])
      {
        v8 = result + 6;
        while ((*v8 & 0x3F) == 0)
        {
          ++v8;
          if (!--v7)
          {
            goto LABEL_11;
          }
        }

        return 0;
      }

LABEL_11:
      if (v4)
      {
        v9 = v4;
      }

      else
      {
        v9 = 0;
      }

      v25 = qword_1ED415F70 <= LibPrespecialized && unk_1ED415F78 > LibPrespecialized;
      if (v25)
      {
        v26 = qword_1ED415F70 <= v9 && unk_1ED415F78 > v9;
        if (!v26 || qword_1ED415F80 <= v9 && qword_1ED415F88 > v9)
        {
          if (prespecializedLoggingEnabled == 1)
          {
            fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Rejecting descriptor %p, not in the shared cache\n");
          }

          return 0;
        }
      }

      if (result[4])
      {
        v27 = 0;
        while (1)
        {
          if (v25)
          {
            v28 = *(v3 + 8 * v27);
            if (qword_1ED415F70 > v28 || unk_1ED415F78 <= v28)
            {
              break;
            }

            if (qword_1ED415F80 <= v28 && qword_1ED415F88 > v28)
            {
              break;
            }
          }

          if (result[4] == ++v27)
          {
            goto LABEL_70;
          }
        }

        if (prespecializedLoggingEnabled == 1)
        {
          fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Rejecting argument %u %p to descriptor %p, not in the shared cache\n");
        }

        return 0;
      }

LABEL_70:
      v54 = xmmword_1806726B0;
      v55 = 0;
      v56 = 0;
      v91 = 0;
      v58 = 0;
      v59 = 0;
      v57 = 0;
      v60 = 0;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v89 = 0;
      v53[0] = &unk_1EEEAC680;
      v53[1] = &v92;
      v53[2] = &v93;
      v31 = swift::_buildDemanglingForGenericType(v4, v3, v53);
      if (v31)
      {
        if (*(v31 + 8) != 101)
        {
          v32 = v31;
          Node = swift::Demangle::__runtime::NodeFactory::createNode(v53, 101);
          swift::Demangle::__runtime::Node::addChild(Node, v32, v53, v34, v35);
          v31 = Node;
        }

        swift::Demangle::__runtime::mangleNode(v31);
        if (v50)
        {
          swift::warning(0, "Mangling for prespecialized metadata failed with code %d", v36, v37, v50);
          v38 = 0;
        }

        else
        {
          v39 = *(LibPrespecialized + 8);
          v40 = swift::PrebuiltStringMapBase::hash(v39, v51, v52);
          v41 = 0;
          v44 = *v39;
          v42 = v39 + 8;
          v43 = v44;
          v45 = v40 % v44;
          do
          {
            v46 = *&v42[16 * v45];
            if (!v46)
            {
              break;
            }

            if (!strncmp(*&v42[16 * v45], v51, v52) && !*(v46 + v52))
            {
              v38 = *&v42[16 * v45 + 8];
              goto LABEL_88;
            }

            if (v45 + 1 < v43)
            {
              ++v45;
            }

            else
            {
              v45 = 0;
            }

            ++v41;
          }

          while (v41 <= v43);
          v38 = 0;
LABEL_88:
          if (prespecializedLoggingEnabled == 1)
          {
            v48 = v38;
            fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: found %p for key '%.*s'.\n", v38, v52, v51);
            v38 = v48;
          }
        }
      }

      else
      {
        if (prespecializedLoggingEnabled == 1)
        {
          fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: failed to build demangling with descriptor %p.\n", v4);
        }

        v38 = 0;
      }

      v47 = v38;
      v53[0] = &unk_1EEEADB90;
      if (v91 == &v90)
      {
        (*(*v91 + 32))(v91);
      }

      else if (v91)
      {
        (*(*v91 + 40))();
      }

      v53[0] = &unk_1EEEADB68;
      swift::Demangle::__runtime::NodeFactory::freeSlabs(v54);
      if (v55)
      {
        *(v55 + 48) = 0;
      }

      return v47;
    default:
      return 0;
  }

  return result;
}

uint64_t swift::getLibPrespecializedTypeDescriptor(swift *this, swift::Demangle::__runtime::Node *a2)
{
  v2 = MEMORY[0x1EEE9AC00](this);
  v5 = v2;
  v93 = *MEMORY[0x1E69E9840];
  if (qword_1ED415F98 != -1)
  {
    swift::libPrespecializedImageLoaded(v2);
  }

  v6 = LibPrespecialized;
  if (!LibPrespecialized)
  {
    return 2;
  }

  if (byte_1ED415F90 != 1)
  {
    return 2;
  }

  if (*(LibPrespecialized + 4) < 4u)
  {
    return 2;
  }

  v7 = *(LibPrespecialized + 40);
  if (!v7)
  {
    return 2;
  }

  v54 = xmmword_1806726B0;
  v55 = 0;
  v56 = 0;
  v91 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v60 = 0;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v89 = 0;
  v53[0] = &unk_1EEEAC680;
  v53[1] = &v92;
  v53[2] = &v93;
  v52 = v53;
  if (prespecializedLoggingEnabled == 1 && (swift::getLibPrespecializedTypeDescriptor(v51, &v52, v5) & 1) == 0)
  {
    goto LABEL_91;
  }

  if (!v5)
  {
LABEL_89:
    if (prespecializedLoggingEnabled == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Failed to build simplified mangling for node %p.\n", v5);
    }

    goto LABEL_91;
  }

  v8 = 0;
  v9 = 0;
  v10 = v5;
  while (1)
  {
    v12 = v10[8];
    if (v12 > 0xB0)
    {
      if (v10[8] > 0xF4u)
      {
        if (v12 != 245 && v12 != 314)
        {
          goto LABEL_62;
        }
      }

      else if (v12 != 177 && v12 != 230)
      {
        if (v12 == 190)
        {
          if (v9)
          {
            if (*(v8 + 16) != 73)
            {
              v36 = *(v8 + 18);
              v37 = v8;
              if ((v36 - 1) >= 2)
              {
                if (v36 != 5 || !*(v8 + 8))
                {
LABEL_126:
                  v47 = 0;
                  goto LABEL_127;
                }

                goto LABEL_124;
              }

              goto LABEL_125;
            }

            goto LABEL_82;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

LABEL_25:
      Node = swift::Demangle::__runtime::NodeFactory::createNode(v53, 177);
      v16 = Node;
      v17 = *(v10 + 18);
      v18 = v10;
      if (v17 != 2)
      {
        if (v17 != 5 || *(v10 + 2) < 2u)
        {
          goto LABEL_89;
        }

        v18 = *v10;
      }

      v19 = *(v18 + 1);
      if (!v19 || *(v19 + 8) != 103)
      {
        goto LABEL_89;
      }

      swift::Demangle::__runtime::Node::addChild(Node, v19, v53, v14, v15);
      v20 = v16;
      if (!v9)
      {
LABEL_52:
        v30 = *(v10 + 18);
        if ((v30 - 1) >= 2)
        {
          if (v30 != 5 || !*(v10 + 2))
          {
            goto LABEL_85;
          }

          v10 = *v10;
        }

        goto LABEL_12;
      }

      if (*(v8 + 16) == 73)
      {
        swift::Demangle::__runtime::Node::addChild(v8, v16, v53, v3, v4);
LABEL_51:
        v20 = v9;
        goto LABEL_52;
      }

      v21 = *(v8 + 18);
      v22 = v8;
      if ((v21 - 1) >= 2)
      {
        if (v21 != 5 || !*(v8 + 8))
        {
          v23 = 0;
          goto LABEL_50;
        }

        v22 = *v8;
      }

      v23 = *v22;
LABEL_50:
      swift::Demangle::__runtime::Node::addChild(v8, v23, v53, v3, v4);
      swift::Demangle::__runtime::Node::replaceChild(v8, 0, v16);
      goto LABEL_51;
    }

    if (v10[8] <= 0x48u)
    {
      if (v12 != 25 && v12 != 63)
      {
        goto LABEL_62;
      }

      goto LABEL_25;
    }

    if (v12 != 73)
    {
      break;
    }

    v24 = swift::Demangle::__runtime::NodeFactory::createNode(v53, 73);
    v16 = v24;
    v27 = *(v10 + 18);
    v28 = v10;
    if ((v27 - 1) >= 2)
    {
      if (v27 != 5 || !*(v10 + 2))
      {
        goto LABEL_89;
      }

      v28 = *v10;
    }

    v29 = *v28;
    if (!*v28 || *(v29 + 8) != 163)
    {
      goto LABEL_89;
    }

    swift::Demangle::__runtime::Node::addChild(v24, v29, v53, v25, v26);
    v20 = v16;
    if (!v9)
    {
      goto LABEL_70;
    }

    if (*(v8 + 16) != 73)
    {
      v31 = *(v8 + 18);
      v32 = v8;
      if ((v31 - 1) < 2)
      {
        goto LABEL_60;
      }

      if (v31 == 5 && *(v8 + 8))
      {
        v32 = *v8;
LABEL_60:
        v33 = *v32;
      }

      else
      {
        v33 = 0;
      }

      swift::Demangle::__runtime::Node::addChild(v8, v33, v53, v3, v4);
      swift::Demangle::__runtime::Node::replaceChild(v8, 0, v16);
      goto LABEL_69;
    }

    swift::Demangle::__runtime::Node::addChild(v8, v16, v53, v3, v4);
LABEL_69:
    v20 = v9;
LABEL_70:
    v35 = *(v10 + 18);
    if (v35 != 2)
    {
      if (v35 != 5 || *(v10 + 2) < 2u)
      {
        goto LABEL_85;
      }

      v10 = *v10;
    }

    v10 += 4;
LABEL_12:
    v10 = *v10;
    v8 = v16;
    v9 = v20;
    if (!v10)
    {
      goto LABEL_85;
    }
  }

  if (v12 == 163)
  {
    if (v9)
    {
      if (*(v8 + 16) != 73)
      {
        v46 = *(v8 + 18);
        v37 = v8;
        if ((v46 - 1) >= 2)
        {
          if (v46 != 5 || !*(v8 + 8))
          {
            goto LABEL_126;
          }

LABEL_124:
          v37 = *v8;
        }

LABEL_125:
        v47 = *v37;
LABEL_127:
        swift::Demangle::__runtime::Node::addChild(v8, v47, v53, v3, v4);
        swift::Demangle::__runtime::Node::replaceChild(v8, 0, v10);
        goto LABEL_86;
      }

LABEL_82:
      swift::Demangle::__runtime::Node::addChild(v8, v10, v53, v3, v4);
      goto LABEL_86;
    }

LABEL_83:
    v9 = v10;
    goto LABEL_86;
  }

LABEL_62:
  v34 = *(v10 + 18);
  if ((v34 - 1) < 2)
  {
LABEL_66:
    v20 = v9;
    v16 = v8;
    goto LABEL_12;
  }

  if (v34 == 5 && *(v10 + 2))
  {
    v10 = *v10;
    goto LABEL_66;
  }

  v20 = v9;
LABEL_85:
  v9 = v20;
  if (!v20)
  {
    goto LABEL_89;
  }

LABEL_86:
  swift::Demangle::__runtime::mangleNode(v9);
  if (v48)
  {
    if (prespecializedLoggingEnabled == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Failed to build demangling for simplified node %p.\n\n", v5);
    }

    goto LABEL_91;
  }

  v40 = 0;
  v41 = 0;
  v42 = v7 + 8;
  v43 = swift::PrebuiltStringMapBase::hash(v7, v49, v50) % *v7;
  do
  {
    v44 = *&v42[8 * v43];
    if (!v44 || (++v41, _dyld_is_preoptimized_objc_image_loaded()) && (++v40, (swift::_contextDescriptorMatchesMangling(v44, v5) & 1) != 0))
    {
      v45 = &v42[8 * v43];
      goto LABEL_110;
    }

    if (v43 + 1 < *v7)
    {
      ++v43;
    }

    else
    {
      v43 = 0;
    }
  }

  while (v41 <= *v7);
  v45 = 0;
LABEL_110:
  if (prespecializedLoggingEnabled == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Hash table lookup checked %u loaded entries, %u total entries.\n", v40, v41);
    if (!v45)
    {
      goto LABEL_131;
    }

LABEL_112:
    if (*v45)
    {
      if (prespecializedLoggingEnabled)
      {
        fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Found descriptor %p for key '%.*s'.\n", *v45, v50, v49);
      }

      v38 = 0;
    }

    else
    {
      if (prespecializedLoggingEnabled)
      {
        fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Did not find descriptor for key '%.*s'.\n", v50, v49);
      }

      if (*(v6 + 4) >= 3u && (*(v6 + 32) & 4) != 0)
      {
        goto LABEL_91;
      }

      v38 = 1;
    }
  }

  else
  {
    if (v45)
    {
      goto LABEL_112;
    }

LABEL_131:
    if (prespecializedLoggingEnabled == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Descriptor table lookup of '%.*s' returned NULL pointer to descriptor pointer.\n", v50, v49);
    }

LABEL_91:
    v38 = 2;
  }

  v39 = v38;
  v53[0] = &unk_1EEEADB90;
  if (v91 == &v90)
  {
    (*(*v91 + 32))(v91);
  }

  else if (v91)
  {
    (*(*v91 + 40))();
  }

  v53[0] = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v54);
  if (v55)
  {
    *(v55 + 48) = 0;
  }

  return v39;
}

uint64_t swift::Demangle::__runtime::StackAllocatedDemangler<4096ul>::~StackAllocatedDemangler(uint64_t a1)
{
  *a1 = &unk_1EEEADB90;
  v2 = a1 + 544;
  v3 = *(a1 + 568);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(*(a1 + 24));
  v4 = *(a1 + 40);
  if (v4)
  {
    *(v4 + 48) = 0;
  }

  return a1;
}

void _swift_validatePrespecializedMetadata(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1ED415F98 != -1)
  {
    swift::libPrespecializedImageLoaded(a1);
  }

  v1 = LibPrespecialized;
  if (LibPrespecialized)
  {
    atomic_store(4u, &unk_1ED415F68);
    v2 = *(v1 + 8);
    v3 = *v2;
    v4 = MEMORY[0x1E69E9848];
    if (*v2)
    {
      v5 = 0;
      v6 = 0;
      v7 = v2 + 2;
      while (1)
      {
        v8 = *(v7 - 1);
        if (v8)
        {
          if (*v7)
          {
            break;
          }
        }

LABEL_7:
        v7 += 2;
        if (!--v3)
        {
          goto LABEL_30;
        }
      }

      if (*v8 == 36)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = *(v7 - 1);
      }

      v10 = strlen(v9);
      v17 = 0;
      v15 = 0;
      swift_getTypeByMangledName(0, v9, v10, 0, v16, v14, v18);
      if (v15 == v14)
      {
        (*(*v15 + 32))(v15);
      }

      else if (v15)
      {
        (*(*v15 + 40))();
      }

      if (v17 == v16)
      {
        (*(*v17 + 32))(v17);
        v11 = v19;
        if (v19)
        {
LABEL_21:
          if (v11 == 1)
          {
            fprintf(*v4, "Prespecializations library validation: unable to build metadata for mangled name '%s'\n", v9);
            v12 = 1;
LABEL_27:
            if (v19 == 1)
            {
              (v18[1])(v18[0], 3, 0);
            }

            ++v5;
            v6 += v12;
            goto LABEL_7;
          }

          v13 = 0;
LABEL_26:
          v12 = swift::compareGenericMetadata(v13, *v7) ^ 1;
          goto LABEL_27;
        }
      }

      else
      {
        if (v17)
        {
          (*(*v17 + 40))();
        }

        v11 = v19;
        if (v19)
        {
          goto LABEL_21;
        }
      }

      v13 = v18[0];
      goto LABEL_26;
    }

    v6 = 0;
    v5 = 0;
LABEL_30:
    fprintf(*v4, "Prespecializations library validation: validated %u entries, %u failures.\n", v5, v6);
  }
}

unint64_t swift::PrebuiltStringMapBase::hash(swift::PrebuiltStringMapBase *this, uint64_t *a2, uint64_t a3)
{
  v3 = 0xC6A4A7935BD1E995 * a3;
  v4 = a3 & 0xFFFFFFFFFFFFFFF8;
  if ((a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v5 = a2 + v4;
    do
    {
      v6 = *a2++;
      LOBYTE(a3) = a3 - 8;
      v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47))) ^ v3);
      v4 -= 8;
    }

    while (v4);
    a2 = v5;
  }

  v7 = a3 & 7;
  if (v7 > 3)
  {
    if ((a3 & 7u) > 5uLL)
    {
      if (v7 != 6)
      {
        v3 ^= *(a2 + 6) << 48;
      }

      v3 ^= *(a2 + 5) << 40;
    }

    else if (v7 == 4)
    {
      goto LABEL_18;
    }

    v3 ^= *(a2 + 4) << 32;
LABEL_18:
    v3 ^= *(a2 + 3) << 24;
LABEL_19:
    v3 ^= *(a2 + 2) << 16;
    goto LABEL_20;
  }

  if ((a3 & 7u) <= 1uLL)
  {
    if ((a3 & 7) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v7 != 2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v3 ^= *(a2 + 1) << 8;
LABEL_21:
  v3 ^= *a2;
LABEL_22:
  v8 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v3) ^ ((0xC6A4A7935BD1E995 * v3) >> 47));
  return v8 ^ (v8 >> 47);
}

void LibPrespecializedState::LibPrespecializedState(LibPrespecializedState *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  if (swift::runtime::environment::initializeToken != -1)
  {
    LibPrespecializedState::LibPrespecializedState();
  }

  prespecializedLoggingEnabled = swift::runtime::environment::SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_LOGGING_variable;
  *this = LibPrespecializedState::findLibPrespecialized(this);
  shared_cache_range = _dyld_get_shared_cache_range();
  *(this + 2) = shared_cache_range;
  *(this + 3) = shared_cache_range;
  v3 = swift::MetadataAllocator::InitialPoolLocation(shared_cache_range);
  *(this + 4) = v3;
  *(this + 5) = &v3[v4];
  if (!*(this + 2))
  {
    *(this + 2) = LibPrespecializedState::computeMapConfiguration(this, *this);
  }

  v5 = *this;
  if (*this)
  {
    v6 = *(v5 + 4) >= 3u ? *(v5 + 32) & 2 : 0;
    *(this + 48) = v6 >> 1;
    if (prespecializedLoggingEnabled == 1)
    {
      LibPrespecializedState::LibPrespecializedState(v6);
    }
  }

  if (swift::runtime::environment::initializeToken != -1)
  {
    LibPrespecializedState::LibPrespecializedState();
  }

  if (swift::runtime::environment::SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP_isSet_variable == 1)
  {
    v7 = swift::runtime::environment::SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP_variable;
    *(this + 48) = swift::runtime::environment::SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_DESCRIPTOR_LOOKUP_variable;
    if (prespecializedLoggingEnabled == 1)
    {
      LibPrespecializedState::LibPrespecializedState(v7);
    }
  }

  else if (_os_feature_enabled_simple_impl())
  {
    v8 = *(this + 48);
    *(this + 48) = v8 ^ 1;
    if (prespecializedLoggingEnabled == 1)
    {
      LibPrespecializedState::LibPrespecializedState(v8);
    }
  }
}

_DWORD *LibPrespecializedState::findLibPrespecialized(LibPrespecializedState *this)
{
  if (swift::runtime::environment::initializeToken != -1)
  {
    LibPrespecializedState::LibPrespecializedState();
  }

  v2 = swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_PATH_variable;
  if (swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_PATH_variable && *swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_PATH_variable)
  {
    v3 = dlopen(swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_PATH_variable, 17);
    if (!v3)
    {
      v11 = dlerror();
      swift::warning(0, "Failed to load prespecializations library: %s\n", v12, v13, v11);
      return 0;
    }

    swift_prespecialized_data = dlsym(v3, "_swift_prespecializationsData");
    if (prespecializedLoggingEnabled == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Loaded custom library from %s, found dataPtr %p\n", v2, swift_prespecialized_data);
    }
  }

  else
  {
    swift_prespecialized_data = _dyld_get_swift_prespecialized_data();
    if (prespecializedLoggingEnabled == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Got dataPtr %p from _dyld_get_swift_prespecialized_data\n", swift_prespecialized_data);
      if (!dyld_shared_cache_some_image_overridden())
      {
        goto LABEL_12;
      }
    }

    else if (!dyld_shared_cache_some_image_overridden())
    {
      goto LABEL_12;
    }

    atomic_store(4u, this + 2);
    if (prespecializedLoggingEnabled == 1)
    {
      LibPrespecializedState::findLibPrespecialized();
    }
  }

LABEL_12:
  if (prespecializedLoggingEnabled == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Returning data pointer %p\n", swift_prespecialized_data);
    if (!swift_prespecialized_data)
    {
      return swift_prespecialized_data;
    }
  }

  else if (!swift_prespecialized_data)
  {
    return swift_prespecialized_data;
  }

  if (*swift_prespecialized_data != 1)
  {
    if (prespecializedLoggingEnabled == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Unknown major version %u, disabling\n", *swift_prespecialized_data);
    }

    return 0;
  }

  v5 = MEMORY[0x1E69E97E0];
  if (*MEMORY[0x1E69E97E0])
  {
    if (swift::runtime::environment::initializeToken != -1)
    {
      LibPrespecializedState::LibPrespecializedState();
    }

    v6 = swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_ENABLED_PROCESSES_variable;
    if (swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_ENABLED_PROCESSES_variable && *swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_ENABLED_PROCESSES_variable)
    {
      v7 = *v5;
      v8 = strlen(*v5);
      v9 = strchr(swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_ENABLED_PROCESSES_variable, 58);
      if (v9)
      {
        v10 = v9;
        while (v10 - v6 != v8 || strncmp(v6, v7, v8))
        {
          v6 = v10 + 1;
          v10 = strchr(v10 + 1, 58);
          if (!v10)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_47;
      }

LABEL_30:
      if (!strcmp(v7, v6))
      {
LABEL_47:
        if (prespecializedLoggingEnabled == 1)
        {
          fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Found %s in SWIFT_DEBUG_LIB_PRESPECIALIZED_ENABLED_PROCESSES, enabling\n", v7);
        }

        goto LABEL_49;
      }
    }

    v14 = swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_DISABLED_PROCESSES_variable;
    if (swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_DISABLED_PROCESSES_variable && *swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_DISABLED_PROCESSES_variable)
    {
      v15 = *v5;
      v16 = strlen(*v5);
      v17 = strchr(swift::runtime::environment::SWIFT_DEBUG_LIB_PRESPECIALIZED_DISABLED_PROCESSES_variable, 58);
      if (v17)
      {
        v18 = v17;
        while (v18 - v14 != v16 || strncmp(v14, v15, v16))
        {
          v14 = v18 + 1;
          v18 = strchr(v18 + 1, 58);
          if (!v18)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_52;
      }

LABEL_39:
      if (!strcmp(v15, v14))
      {
LABEL_52:
        if (prespecializedLoggingEnabled == 1)
        {
          fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Found %s in SWIFT_DEBUG_LIB_PRESPECIALIZED_DISABLED_PROCESSES, disabling\n", v15);
        }

        return 0;
      }
    }

    if (swift_prespecialized_data[1] >= 2u)
    {
      v19 = *(swift_prespecialized_data + 2);
      if (v19)
      {
        v20 = *v19;
        if (*v19)
        {
          v21 = *v5;
          v22 = v19 + 1;
          while (strcmp(v20, v21))
          {
            v23 = *v22++;
            v20 = v23;
            if (!v23)
            {
              goto LABEL_49;
            }
          }

          if (prespecializedLoggingEnabled == 1)
          {
            fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Found %s in disabled processes list, disabling\n", v20);
          }

          return 0;
        }
      }
    }
  }

LABEL_49:
  if (prespecializedLoggingEnabled == 1)
  {
    LibPrespecializedState::findLibPrespecialized(swift_prespecialized_data, &v25);
    return v25;
  }

  return swift_prespecialized_data;
}

uint64_t LibPrespecializedState::computeMapConfiguration(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4;
  }

  if (swift::runtime::environment::initializeToken != -1)
  {
    v10 = a2;
    v11 = a1;
    LibPrespecializedState::LibPrespecializedState();
    a1 = v11;
    a2 = v10;
  }

  if ((swift::runtime::environment::SWIFT_DEBUG_ENABLE_LIB_PRESPECIALIZED_METADATA_variable & 1) == 0)
  {
    if (prespecializedLoggingEnabled == 1)
    {
      LibPrespecializedState::computeMapConfiguration();
    }

    return 4;
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 4);
  if (v3 >= 3)
  {
    v4 = *(a2 + 24);
    if (!(v2 | v4))
    {
LABEL_7:
      if (prespecializedLoggingEnabled == 1)
      {
        fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: No prespecializations map available from data at %p, disabling.\n", a2);
      }

      return 4;
    }
  }

  else
  {
    v4 = 0;
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!v4)
  {
    if (prespecializedLoggingEnabled == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Data at %p only contains name-keyed map.\n", a2);
      return 1;
    }

    return 1;
  }

  if (v2)
  {
    v6 = a1;
    v7 = a2;
    if (v3 >= 3)
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 ^ _os_feature_enabled_simple_impl();
    if (prespecializedLoggingEnabled == 1)
    {
      v12 = "name";
      if (v9)
      {
        v12 = "pointer";
      }

      v14 = v7;
      v13 = v9;
      fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Data at %p contains both maps. Using %s keyed map.\n", v14, v12);
      if (v13)
      {
        goto LABEL_26;
      }
    }

    else if (v9)
    {
LABEL_26:
      if (*(v6 + 16) > v4)
      {
        return 3;
      }

      if (*(v6 + 24) > v4)
      {
        return 2;
      }

      return 3;
    }

    return 1;
  }

  if (prespecializedLoggingEnabled == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "Prespecializations library: Data at %p only contains pointer-keyed map.\n", a2);
  }

  return 2;
}

void swift::Demangle::__runtime::StackAllocatedDemangler<4096ul>::~StackAllocatedDemangler(uint64_t a1)
{
  *a1 = &unk_1EEEADB90;
  v2 = a1 + 544;
  v3 = *(a1 + 568);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(*(a1 + 24));
  v4 = *(a1 + 40);
  if (v4)
  {
    *(v4 + 48) = 0;
  }

  JUMPOUT(0x1865C92E0);
}

char *swift::TargetSingletonMetadataInitialization<swift::InProcess>::allocate(uint64_t a1, _DWORD *a2)
{
  if (a2 && (*a2 & 0x1F) == 0x10 && (*a2 & 0x20000000) != 0)
  {
    v4 = *(a1 + 4);
    if (v4)
    {
      v5 = (v4 + a1 + 4);
    }

    else
    {
      v5 = 0;
    }

    v6 = *v5;
    v7 = (v5 + v6);
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || !v7)
    {
      return _swift_relocateClassMetadata(a2, v5);
    }

    else
    {
      return v7(a2);
    }
  }

  else
  {
    v10 = *(a1 + 4);
    result = (v10 + a1 + 4);
    if (v10)
    {
      v11 = result;
    }

    else
    {
      v11 = 0;
    }

    if ((*v11 - 2048) <= 0xFFFFFFFFFFFFF800)
    {
      if ((*(v11 + 4) & 3) == 1)
      {
        *(v11 + 4) ^= 3uLL;
      }

      if ((v11[40] & 2) != 0)
      {
        v12 = value witness table for Builtin.NativeObject;
      }

      else
      {
        v12 = &value witness table for Builtin.UnknownObject;
      }

      *(v11 - 1) = v12;
    }
  }

  return result;
}

char *_swift_relocateClassMetadata(uint64_t a1, int *a2)
{
  if ((*a1 & 0x20000000) != 0)
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = (v7 + a1 + 24);
    }

    else
    {
      v8 = 0;
    }

    explicit = atomic_load_explicit(v8, memory_order_acquire);
    if (explicit)
    {
      v10 = v8[1];
    }

    else
    {
      v10 = computeMetadataBoundsFromSuperclass(a1, v8);
      explicit = v11;
    }
  }

  else
  {
    if ((*a1 & 0x10000000) != 0)
    {
      v5 = 0;
      v6 = 24;
    }

    else
    {
      v5 = *(a1 + 28);
      v6 = 32;
    }

    explicit = 8 * (v5 - *(a1 + v6));
    v10 = *(a1 + 24);
  }

  v12 = 8 * (v10 + HIDWORD(v10));
  v13 = 8 * v10;
  v14 = &swift::MetadataAllocator::Allocate(&getResilientMetadataAllocator(void)::allocator, v12, 8uLL)[8 * v10];
  bzero(&v14[explicit], 8 * *(a1 + 32));
  v15 = 0;
  v16 = a2[1];
  if (v16 && (a2 + v16 + 4))
  {
    v15 = a2 + v16 + 4;
  }

  *(v14 - 2) = v15;
  v17 = a2[3];
  if ((v17 & 2) != 0)
  {
    v18 = value witness table for Builtin.NativeObject;
  }

  else
  {
    v18 = &value witness table for Builtin.UnknownObject;
  }

  v19 = a2[4];
  *(v14 - 1) = v18;
  v20 = a2[5];
  if (v20)
  {
    v21 = a2 + v20 + 20;
  }

  else
  {
    v21 = 0;
  }

  *v14 = v21;
  *(v14 + 1) = 0;
  *(v14 + 2) = MEMORY[0x1E69E58E0];
  *(v14 + 3) = 0;
  if (v19)
  {
    v22 = (a2 + v19 + 16) | 2;
  }

  else
  {
    v22 = 2;
  }

  *(v14 + 4) = v22;
  *(v14 + 10) = v17;
  *(v14 + 44) = 0;
  *(v14 + 13) = 0;
  *(v14 + 14) = v12;
  *(v14 + 15) = v13;
  if (a1)
  {
    v23 = a1;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0;
  *(v14 + 8) = v23;
  v27 = a2[2];
  v26 = a2 + 2;
  v25 = v27;
  if (v27)
  {
    v28 = v26 + v25;
    if (v28)
    {
      v24 = v28;
    }
  }

  *(v14 + 9) = v24;
  return v14;
}

uint64_t swift::MetadataCacheKey::installGenericArguments(unsigned int a1, int a2, uint64_t a3, void *__dst, void *__src)
{
  LODWORD(v7) = a2;
  result = memcpy(__dst, __src, 8 * a1);
  if (v7)
  {
    v7 = v7;
    v9 = (a3 + 4);
    do
    {
      v10 = *(v9 - 1);
      v11 = *(__dst + *v9);
      if (*(v9 - 2) == 1)
      {
        result = swift_allocateWitnessTablePack(*(__dst + v10), v11);
      }

      else
      {
        if (*(v9 - 2))
        {
          goto LABEL_5;
        }

        result = swift_allocateMetadataPack(*(__dst + v10), v11);
      }

      *(__dst + v10) = result;
LABEL_5:
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  return result;
}
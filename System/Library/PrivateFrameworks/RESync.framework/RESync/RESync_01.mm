uint64_t re::PolymorphicData::makeWithPointer@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(result + 16) != 8)
  {
    goto LABEL_19;
  }

  v3 = *(result + 56);
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = *(result + 64);
  v5 = *(result + 56);
  v6 = v4;
  do
  {
    v7 = *v6;
    if (**v6 == 2)
    {
      goto LABEL_7;
    }

    ++v6;
    --v5;
  }

  while (v5);
  v7 = 0;
LABEL_7:
  while (1)
  {
    v8 = *v4;
    if (**v4 == 3)
    {
      break;
    }

    ++v4;
    if (!--v3)
    {
      v8 = 0;
      break;
    }
  }

  if (v7 && ((v9 = *(v7 + 1), v8) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (v11 = *(v8 + 1)) != 0))
  {
    *a3 = 0;
    if (a2)
    {
      *a3 = a2 + v8[6];
    }

    a3[1] = v11;
    a3[2] = v9;
  }

  else
  {
LABEL_19:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void re::introspectionReleasePointer(re::DynamicString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  re::introspectionDestroyAllocatedMemory(a1, a2, a3, a4);
  if (*(a4 + 16) != 8 || !*(a4 + 96))
  {
    v7 = *(*a2 + 40);

    v7(a2, a1);
  }
}

re *re::introspectionInitMember(re *this, re::Allocator *a2, const re::IntrospectionBase *a3, void *a4)
{
  v5 = this;
  v6 = *(a2 + 4);
  if (v6 <= 5)
  {
    if (v6 == 3)
    {
      v7 = *(*a2 + 64);
      v8 = a2;
      v9 = a3;
      v10 = v5;
    }

    else
    {
      if (v6 != 5)
      {
        return this;
      }

      v7 = *(*a2 + 64);
      v8 = a2;
      v9 = a3;
      v10 = v5;
    }

    return v7(v8, v9, v10);
  }

  else
  {
    switch(v6)
    {
      case 6:
        re::DynamicString::deinit(a3);
        *a3 = v5;

        return re::DynamicString::setCapacity(a3, 0);
      case 7:
        v11 = *(*a2 + 64);

        return v11(a2, a3, this, 3);
      case 8:

        return re::introspectionInitStructure(this, a2, a3, a4);
    }
  }

  return this;
}

re *re::introspectionInitStructure(re *this, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v7 = this;
    for (i = 0; i < v4; ++i)
    {
      v9 = *(*(a2 + 64) + 8 * i);
      if (*v9 == 1)
      {
        this = re::introspectionInitMember(v7, *(v9 + 16), (a3 + *(v9 + 36)), a4);
        v4 = *(a2 + 56);
      }
    }
  }

  return this;
}

void re::introspectionCallConstructor(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6 <= 5)
  {
    if (v6 > 3)
    {
      if (v6 == 4)
      {
        v8 = *(*a2 + 48);
        v9 = a2;
        v10 = a3;
      }

      else
      {
        v8 = *(*a2 + 48);
        v9 = a2;
        v10 = a3;
      }
    }

    else
    {
      if (v6 == 2)
      {
        if (*(a2 + 64) >= 1)
        {
          v11 = 0;
          do
          {
            v12 = *(*(a2 + 48) + 20);
            re::introspectionCallConstructor(a1);
            ++v11;
          }

          while (v11 < *(a2 + 64));
        }

        return;
      }

      if (v6 != 3)
      {
        return;
      }

      v8 = *(*a2 + 48);
      v9 = a2;
      v10 = a3;
    }

LABEL_28:
    v8(v9, v10);
    return;
  }

  if (v6 <= 7)
  {
    if (v6 == 6)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;

      re::DynamicString::setCapacity(a3, 0);
      return;
    }

    v8 = *(*a2 + 48);
    v9 = a2;
    v10 = a3;

    goto LABEL_28;
  }

  switch(v6)
  {
    case 8:
      v7 = *(a2 + 72);
      if (!v7)
      {
        v13 = *(a2 + 20);

        bzero(a3, v13);
        return;
      }

LABEL_30:

      v7(a2, a1);
      return;
    case 10:
      *a3 = 0;
      *(a3 + 8) = "";
      return;
    case 11:
      v7 = *(a2 + 64);
      if (v7)
      {
        goto LABEL_30;
      }

      break;
  }
}

re *re::introspectionInitElement(re *this, int a2, re::Allocator *a3, re::IntrospectionBase *a4)
{
  v7 = *(a3 + 4);
  if (v7 == 2)
  {
    if (*(*(a3 + 6) + 16) == 1)
    {
      bzero(a4, *(a3 + 5));
    }
  }

  else if (v7 == 1)
  {
    *a4 = 0;
  }

  return re::introspectionInitMember(this, a3, a4, a4);
}

re::DynamicString *re::introspectionDeepCopy(re *a1, _anonymous_namespace_ *a2, re::Allocator *a3, uint64_t a4)
{
  v8 = re::introspectionAllocPointer(a1, a2, a3);
  if ((re::introspectionDoDeepCopy(a1, a2, a3, a4, v8) & 1) == 0)
  {
    re::introspectionReleasePointer(v8, a1, a2, a3);
    return 0;
  }

  return v8;
}

uint64_t re::introspectionDoDeepCopy(re *a1, _anonymous_namespace_ *a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v68[3] = *MEMORY[0x277D85DE8];
  v6 = a5;
  switch(*(a3 + 16))
  {
    case 0:
    case 9:
      goto LABEL_2;
    case 1:
      v29 = *(a3 + 48);
      if (*(v29 + 16) != 8 || !*(v29 + 88))
      {
        v62 = *a4;
        if (*a4)
        {
          result = re::introspectionDeepCopy(a1, a2, *(a3 + 48), v62);
          __dst = result;
          if (!result)
          {
            goto LABEL_78;
          }

          v10 = *(a3 + 20);
          p_dst = &__dst;
          v11 = v6;
        }

        else
        {
LABEL_2:
          v10 = *(a3 + 20);
          v11 = a5;
          p_dst = a4;
        }

        memcpy(v11, p_dst, v10);
        goto LABEL_77;
      }

      memcpy(a5, a4, *(a3 + 20));
      (*(v29 + 88))(*v6);
LABEL_77:
      result = 1;
      goto LABEL_78;
    case 2:
      if (*(*(a3 + 48) + 28))
      {
        goto LABEL_2;
      }

      if (*(a3 + 64) < 1)
      {
        goto LABEL_77;
      }

      v27 = 0;
      while (1)
      {
        v28 = (*(*a3 + 40))(a3, 0);
        if ((re::introspectionDoDeepCopy(a1, a2, v28, a4 + *(*(a3 + 48) + 20) * v27, v6 + *(*(a3 + 48) + 20) * v27) & 1) == 0)
        {
          goto LABEL_79;
        }

        if (++v27 >= *(a3 + 64))
        {
          goto LABEL_77;
        }
      }

    case 3:
      v13 = (*(*a3 + 88))(a3, a4);
      (*(*a3 + 72))(a3, a1, a2, v6, v13);
      if (!v13)
      {
        goto LABEL_77;
      }

      v14 = 0;
      while (1)
      {
        v15 = (*(*a3 + 40))(a3, 0);
        v16 = (*(*a3 + 104))(a3, a4, v14);
        v17 = (*(*a3 + 96))(a3, v6, v14);
        if ((re::introspectionDoDeepCopy(a1, a2, v15, v16, v17) & 1) == 0)
        {
          goto LABEL_79;
        }

        if (v13 == ++v14)
        {
          goto LABEL_77;
        }
      }

    case 4:
      v22 = (*(*a3 + 80))(a3, a4);
      (*(*a3 + 64))(a3, v6, a1, a2, v22);
      if (!v22)
      {
        goto LABEL_77;
      }

      v23 = 0;
      while (1)
      {
        v24 = (*(*a3 + 40))(a3, 0);
        v25 = (*(*a3 + 104))(a3, a4, v23);
        v26 = (*(*a3 + 96))(a3, v6, v23);
        if ((re::introspectionDoDeepCopy(a1, a2, v24, v25, v26) & 1) == 0)
        {
          goto LABEL_79;
        }

        if (v22 == ++v23)
        {
          goto LABEL_77;
        }
      }

    case 5:
      v30 = (*(*a3 + 96))(a3, a4);
      v32 = v31;
      __dst = (*(*a3 + 88))(a3, a4);
      LODWORD(v68[0]) = v33;
      v34 = v32;
      v35 = HIWORD(v32);
      if (__dst == v30 && v33 == v32 && HIWORD(v33) == HIWORD(v32))
      {
        goto LABEL_77;
      }

      while (1)
      {
        v38 = (*(*a3 + 40))(a3, 0);
        v39 = (*(*a3 + 104))(a3, &__dst);
        v40 = (*(*a3 + 72))(a3, a1, a2, v6);
        result = re::introspectionDoDeepCopy(a1, a2, v38, v39, v40);
        if (!result)
        {
          goto LABEL_78;
        }

        re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&__dst);
        if (__dst == v30 && LOWORD(v68[0]) == v34 && WORD1(v68[0]) == v35)
        {
          goto LABEL_77;
        }
      }

    case 6:
      re::DynamicString::operator=(a5, a4);
      goto LABEL_77;
    case 7:
      v60 = (*(*a3 + 80))(a3, a4);
      (*(*a3 + 72))(a3, v6, v60);
      operator new();
    case 8:
      if (!*(a3 + 56))
      {
        goto LABEL_77;
      }

      v47 = 0;
      while (2)
      {
        v48 = *(*(a3 + 64) + 8 * v47);
        if (*v48 != 1)
        {
          goto LABEL_74;
        }

        v49 = *(v48 + 40);
        if (v49 > 1)
        {
          if (v49 == 2)
          {
            memcpy(v6 + *(v48 + 36), a4 + *(v48 + 36), *(*(v48 + 16) + 20));
            memcpy(v6 + *(v48 + 64), a4 + *(v48 + 64), *(*(v48 + 48) + 20));
            v57 = *(*(v48 + 16) + 48);
            if (v57)
            {
              if (*(v57 + 16) == 8)
              {
                v58 = *(v57 + 88);
                if (v58)
                {
                  v58(v6 + *(v48 + 36));
                }
              }
            }

LABEL_74:
            if (++v47 >= *(a3 + 56))
            {
              goto LABEL_77;
            }

            continue;
          }

          if (v49 != 3)
          {
            goto LABEL_74;
          }

          goto LABEL_63;
        }

        break;
      }

      if (!v49)
      {
LABEL_63:
        if (re::introspectionDoDeepCopy(a1, a2, *(v48 + 16), a4 + *(v48 + 36), v6 + *(v48 + 36)))
        {
          goto LABEL_74;
        }

        goto LABEL_79;
      }

      if (v49 != 1)
      {
        goto LABEL_74;
      }

      v50 = *(v48 + 64);
      v51 = *(v48 + 48);
      __dst = 0;
      memcpy(&__dst, a4 + v50, *(v51 + 20));
      v52 = __dst;
      v53 = (*(*a1 + 32))(a1, __dst * *(*(v48 + 16) + 20), 0);
      if (v53)
      {
        v54 = v53;
        *(v6 + *(v48 + 36)) = v53;
        v55 = *(a4 + *(v48 + 36));
        v56 = *(a3 + 48);
        if (*(v56 + 28))
        {
          memcpy(v53, *(a4 + *(v48 + 36)), v52 * *(v56 + 20));
LABEL_73:
          v6 = a5;
          memcpy(a5 + *(v48 + 64), &__dst, *(*(v48 + 48) + 20));
          goto LABEL_74;
        }

        v59 = v52 - v47;
        if (v52 <= v47)
        {
          goto LABEL_73;
        }

        while (re::introspectionDoDeepCopy(a1, a2, v56, v55, v54))
        {
          if (!--v59)
          {
            v47 = v52;
            goto LABEL_73;
          }
        }
      }

LABEL_79:
      result = 0;
LABEL_78:
      v61 = *MEMORY[0x277D85DE8];
      return result;
    case 0xA:
      re::StringID::operator=(a5, a4);
      goto LABEL_77;
    case 0xB:
      (*(a3 + 88))(a1, a2, a3, a4, a5);
      goto LABEL_77;
    case 0xD:
      v18 = (*(*a3 + 56))(a3, a4);
      (*(*a3 + 64))(a3, v6, v18);
      if ((*(*a3 + 56))(a3, a4))
      {
        v19 = (*(*a3 + 40))(a3, 0);
        v20 = (*(*a3 + 80))(a3, a4);
        v21 = (*(*a3 + 72))(a3, v6);
        re::introspectionDoDeepCopy(a1, a2, v19, v20, v21);
      }

      goto LABEL_77;
    default:
      v44 = *re::foundationIntrospectionLogObjects(a1);
      result = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_78;
      }

      re::DynamicString::DynamicString(&__dst);
      re::appendPrettyTypeName(a3, &__dst, v45);
      if (v68[0])
      {
        v46 = v68[1];
      }

      else
      {
        v46 = v68 + 1;
      }

      *buf = 136315138;
      v66 = v46;
      _os_log_error_impl(&dword_26168F000, v44, OS_LOG_TYPE_ERROR, "introspectionDeepCopy cannot copy '%s'", buf, 0xCu);
      if (__dst && (v68[0] & 1) != 0)
      {
        (*(*__dst + 40))();
      }

      goto LABEL_79;
  }
}

void *re::introspectionAllocator(re *this)
{
  {
    byte_27FEB8248 = 0;
    re::introspectionAllocator(void)::baseAllocator = &unk_2873F3D28;
    unk_27FEB8240 = "Introspection allocator";
  }

  {
    re::ThreadSafeAutoFreeAllocator::ThreadSafeAutoFreeAllocator(&re::introspectionAllocator(void)::autoFreeAllocator, "Introspection allocator", &re::introspectionAllocator(void)::baseAllocator);
  }

  return &re::introspectionAllocator(void)::autoFreeAllocator;
}

void re::IntrospectionBasic::~IntrospectionBasic(re::IntrospectionBasic *this)
{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

void re::IntrospectionBasic::childInfo(re::IntrospectionBasic *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Type does not have nested types.", "!Unreachable code", "childInfo", 438);
  _os_crash();
  __break(1u);
}

__n128 std::__function::__func<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0,std::allocator<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F3E98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0,std::allocator<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0>,BOOL ()(void const*,void *)>::operator()(void **a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a1[1];
  v7 = *a1[2];
  v8 = (*(*a1[3] + 40))(a1[3], 1);
  v9 = (*(*a1[3] + 96))(a1[3], *a1[1], *a1[2], *a1[4], v4);

  return re::introspectionDoDeepCopy(v6, v7, v8, v5, v9);
}

uint64_t std::__function::__func<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0,std::allocator<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0>,BOOL ()(void const*,void *)>::target(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == "ZN2reL23introspectionDoDeepCopyEPNS_9AllocatorEPNS_20IntrospectionContextERKNS_17IntrospectionBaseEPKvPvE3$_0" || ((v3 & "ZN2reL23introspectionDoDeepCopyEPNS_9AllocatorEPNS_20IntrospectionContextERKNS_17IntrospectionBaseEPKvPvE3$_0" & 0x8000000000000000) != 0) != __OFSUB__(v3, "ZN2reL23introspectionDoDeepCopyEPNS_9AllocatorEPNS_20IntrospectionContextERKNS_17IntrospectionBaseEPKvPvE3$_0") && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2reL23introspectionDoDeepCopyEPNS_9AllocatorEPNS_20IntrospectionContextERKNS_17IntrospectionBaseEPKvPvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(void const*,void *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

re::TypeRegistry *re::TypeRegistry::TypeRegistry(re::TypeRegistry *this, re::Allocator *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v4 + 16) = a2;
  *v4 = &unk_2873F3F28;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0x1FFFFFFFFLL;
  *(v4 + 120) = 0;
  *(v4 + 104) = 0u;
  *(v4 + 96) = 0;
  v5 = (v4 + 96);
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 148) = 0x1FFFFFFFFLL;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 160) = 0u;
  v6 = (v4 + 160);
  *(v4 + 220) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 236) = 0x7FFFFFFFLL;
  *(v4 + 272) = 0;
  *(v4 + 264) = 0;
  *(v4 + 248) = 0u;
  v7 = (v4 + 248);
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0;
  *(v4 + 352) = 0;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 392) = 0;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 432) = 0;
  *(v4 + 400) = 0u;
  *(v4 + 416) = 0u;
  *(v4 + 472) = 0;
  *(v4 + 440) = 0u;
  *(v4 + 456) = 0u;
  *(v4 + 512) = 0;
  *(v4 + 480) = 0u;
  *(v4 + 496) = 0u;
  *(v4 + 552) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 536) = 0u;
  *(v4 + 592) = 0;
  *(v4 + 560) = 0u;
  *(v4 + 576) = 0u;
  *(v4 + 632) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 672) = 0;
  *(v4 + 640) = 0u;
  *(v4 + 656) = 0u;
  *(v4 + 712) = 0;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 752) = 0;
  *(v4 + 720) = 0u;
  *(v4 + 736) = 0u;
  *(v4 + 788) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 804) = 0x7FFFFFFFLL;
  *(v4 + 840) = 0;
  *(v4 + 832) = 0;
  *(v4 + 816) = 0u;
  *(v4 + 848) = 0u;
  *(v4 + 32) = a2;
  v8 = (v4 + 32);
  re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity((v4 + 32), 0);
  ++*(this + 14);
  *(this + 19) = 1024;
  re::DataArray<re::internal::TypeInfoIndex>::allocBlock(v8);
  *v5 = a2;
  re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(v5, 0);
  ++*(this + 30);
  *(this + 35) = 1024;
  re::DataArray<re::TypeRegistry::TypeNameAndVersion>::allocBlock(v5);
  *v6 = a2;
  re::DynamicArray<re::StringID>::setCapacity(v6, 0);
  ++*(this + 46);
  *v7 = a2;
  re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity(v7, 0);
  ++*(this + 68);
  *(this + 36) = a2;
  re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(this + 36, 0);
  ++*(this + 78);
  *(this + 41) = a2;
  re::DynamicArray<re::EnumConstant>::setCapacity(this + 41, 0);
  ++*(this + 88);
  *(this + 46) = a2;
  re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(this + 46, 0);
  ++*(this + 98);
  *(this + 51) = a2;
  re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(this + 51, 0);
  ++*(this + 108);
  *(this + 56) = a2;
  re::DynamicArray<re::internal::ListTypeInfo>::setCapacity(this + 56, 0);
  ++*(this + 118);
  *(this + 61) = a2;
  re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity(this + 61, 0);
  ++*(this + 128);
  *(this + 66) = a2;
  re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(this + 66, 0);
  ++*(this + 138);
  *(this + 71) = a2;
  re::DynamicArray<re::Allocator const*>::setCapacity(this + 71, 0);
  ++*(this + 148);
  *(this + 76) = a2;
  re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(this + 76, 0);
  ++*(this + 158);
  *(this + 81) = a2;
  re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(this + 81, 0);
  ++*(this + 168);
  *(this + 86) = a2;
  re::DynamicArray<re::RenamedObjectMember>::setCapacity(this + 86, 0);
  ++*(this + 178);
  *(this + 91) = a2;
  re::DynamicArray<re::internal::PointerTypeInfo>::setCapacity(this + 91, 0);
  ++*(this + 188);
  re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(this + 200, a2, 3);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::init(this + 768, a2, 3);
  *(this + 102) = a2;
  re::DynamicArray<re::Allocator const*>::setCapacity(this + 102, 0);
  ++*(this + 210);
  return this;
}

void re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

void re::TypeRegistry::~TypeRegistry(re::TypeRegistry *this)
{
  v2 = *(this + 200);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 98);
    while (1)
    {
      v5 = *v4;
      v4 += 14;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 200);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    v6 = *(this + 200);
    do
    {
      v7 = *(this + 98);
      v8 = v7 + 56 * v3;
      if (*(v8 + 40))
      {
        re::TypeRegistry::typeInfo(this, *(v7 + 56 * v3 + 8), v17);
        re::TypeInfo::releaseInstance(&v18, *(v8 + 32), *(this + 2), 0);
        v6 = *(this + 200);
      }

      if (v6 <= v3 + 1)
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = v6;
      }

      while (v9 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 98) + 56 * v3) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v3) = v9;
LABEL_18:
      ;
    }

    while (v3 != v2);
  }

  re::DataArray<re::internal::TypeInfoIndex>::deinit(this + 32);
  re::DataArray<re::TypeRegistry::TypeNameAndVersion>::deinit(this + 96);
  re::DynamicArray<re::StringID>::deinit(this + 160);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 248);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 288);
  re::DynamicArray<re::EnumConstant>::deinit(this + 328);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 368);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 408);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 448);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 488);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 528);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 568);
  re::DynamicArray<re::internal::ObjectTypeInfo>::deinit(this + 608);
  re::DynamicArray<re::internal::ObjectMemberInfo>::deinit(this + 648);
  re::DynamicArray<re::RenamedObjectMember>::deinit(this + 688);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 728);
  re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 25);
  v10.n128_f64[0] = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::deinit(this + 96);
  v11 = *(this + 104);
  if (v11)
  {
    v12 = *(this + 106);
    v13 = 8 * v11;
    do
    {
      v14 = *v12++;
      (*(**(this + 2) + 40))(*(this + 2), v14, v10);
      v13 -= 8;
    }

    while (v13);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 816);
  v15 = *(this + 107);
  if (v15)
  {
    v16 = *(this + 2);
    re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(v15 + 33);
    re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(v15 + 30);
    re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(v15 + 27);
    re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(v15 + 24);
    re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(v15 + 21);
    re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(v15 + 18);
    re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(v15 + 15);
    re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(v15 + 12);
    re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(v15 + 9);
    re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(v15 + 6);
    re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(v15 + 3);
    (*(*v16 + 40))(v16, v15);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 816);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::deinit(this + 96);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 728);
  re::DynamicArray<re::RenamedObjectMember>::deinit(this + 688);
  re::DynamicArray<re::internal::ObjectMemberInfo>::deinit(this + 648);
  re::DynamicArray<re::internal::ObjectTypeInfo>::deinit(this + 608);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 568);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 528);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 488);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 448);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 408);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 368);
  re::DynamicArray<re::EnumConstant>::deinit(this + 328);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 288);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 248);
  re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 25);
  re::DynamicArray<re::StringID>::deinit(this + 160);
  re::DataArray<re::TypeRegistry::TypeNameAndVersion>::deinit(this + 96);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 96);
  re::DataArray<re::internal::TypeInfoIndex>::deinit(this + 32);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 32);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::TypeRegistry::~TypeRegistry(this);

  JUMPOUT(0x266708EC0);
}

unsigned int *re::TypeRegistry::typeInfo@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  result = re::DataArray<re::internal::TypeInfoIndex>::tryGet((a1 + 4), a2);
  if (!result || (v7 = *result, v8 = *result & 0xFFFFFF, (*result & 0xFFFFFF) == 0xFFFFFF))
  {
    *a3 = 0;
LABEL_35:
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = HIBYTE(v7);
  if (HIBYTE(v7) <= 4u)
  {
    if (HIBYTE(v7) > 2u)
    {
      if (v9 != 3)
      {
        if (v9 != 4)
        {
          goto LABEL_47;
        }

        v10 = *result & 0xFFFFFF;
        if (a1[53] > v8)
        {
          v11 = a1[55];
          goto LABEL_32;
        }

LABEL_41:
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_42:
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_43:
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_44:
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_45:
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_46;
      }

      v10 = *result & 0xFFFFFF;
      if (a1[48] > v8)
      {
        v11 = a1[50];
        goto LABEL_32;
      }
    }

    else
    {
      if (v9 != 1)
      {
        if (v9 != 2)
        {
          goto LABEL_47;
        }

        v10 = *result & 0xFFFFFF;
        if (a1[38] > v8)
        {
          v11 = a1[40];
LABEL_32:
          v12 = 104;
          goto LABEL_33;
        }

        goto LABEL_40;
      }

      if (a1[33] > v8)
      {
        v13 = a1[35] + 88 * v8;
LABEL_34:
        re::TypeInfo::TypeInfo(&v15, a1, v9, v13);
        *a3 = 1;
        result = re::TypeInfo::TypeInfo((a3 + 8), &v15);
        goto LABEL_35;
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_41;
  }

  if (HIBYTE(v7) <= 6u)
  {
    if (v9 != 5)
    {
      if (v9 != 6)
      {
        goto LABEL_47;
      }

      v10 = *result & 0xFFFFFF;
      if (a1[63] > v8)
      {
        v11 = a1[65];
        v12 = 168;
        goto LABEL_33;
      }

      goto LABEL_44;
    }

    v10 = *result & 0xFFFFFF;
    if (a1[58] > v8)
    {
      v11 = a1[60];
      v12 = 136;
      goto LABEL_33;
    }

    goto LABEL_42;
  }

  switch(v9)
  {
    case 7:
      v10 = *result & 0xFFFFFF;
      if (a1[68] > v8)
      {
        v11 = a1[70];
        goto LABEL_32;
      }

      goto LABEL_43;
    case 8:
      v10 = *result & 0xFFFFFF;
      if (a1[78] > v8)
      {
        v11 = a1[80];
        v12 = 176;
        goto LABEL_33;
      }

      goto LABEL_45;
    case 9:
      v10 = *result & 0xFFFFFF;
      if (a1[93] > v8)
      {
        v11 = a1[95];
        v12 = 112;
LABEL_33:
        v13 = v11 + v10 * v12;
        goto LABEL_34;
      }

LABEL_46:
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      break;
  }

LABEL_47:
  re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "typeInfo", 310);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::DataArray<re::internal::TypeInfoIndex>::deinit(uint64_t result)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!*(result + 44))
  {
    goto LABEL_28;
  }

  v2 = result;
  v12 = result;
  if (*(result + 40))
  {
    LODWORD(v13) = 0;
    if (!*(result + 16))
    {
      goto LABEL_33;
    }

    v3 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v12);
      v3 = v12;
    }
  }

  else
  {
    LODWORD(v13) = -1;
    v3 = result;
  }

  v12 = v3;
  if (v3 != v2 || v13 != 0xFFFFFFFFLL)
  {
    v4 = v13;
    v5 = WORD1(v13);
    do
    {
      v1 = v3[2];
      if (v1 <= v5)
      {
        goto LABEL_31;
      }

      v6 = re::DataArray<re::internal::TypeInfoIndex>::tryGet(v2, ((*(*(v3[4] + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      if (v6)
      {
        v1 = v2[2];
        if (v1 <= v5)
        {
          goto LABEL_32;
        }

        *(*(v2[4] + 16 * v5 + 8) + 4 * v4) = 0;
        *v6 = *(v2 + 13);
        *(v2 + 26) = v4;
        *(v2 + 27) = v5;
        --*(v2 + 10);
      }

      re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v12);
      v3 = v12;
      v4 = v13;
      v5 = WORD1(v13);
    }

    while (v12 != v2 || v13 != 0xFFFFLL || WORD1(v13) != 0xFFFFLL);
  }

  v7 = v2[2];
  v5 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_26;
  }

  v8 = 16 * v7 - 16;
  do
  {
    if (v7 <= v5)
    {
      v12 = 0;
      v27 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      v18 = 789;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_30:
      v12 = 0;
      v27 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "removeAt";
      v17 = 1024;
      v18 = 931;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_31:
      v14 = 0;
      v27 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      v18 = 797;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v14 = 0;
      v27 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      v18 = 789;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v14 = 0;
      v27 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      v18 = 797;
      v19 = 2048;
      v20 = 0;
      v21 = 2048;
      v22 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = (v2[4] + v8);
    (*(**v2 + 40))(*v2, *v9);
    (*(**v2 + 40))(*v2, v9[1]);
    v1 = v2[2];
    if (v1 <= v5)
    {
      goto LABEL_30;
    }

    v7 = v1 - 1;
    if (v1 - 1 > v5)
    {
      *(v2[4] + v8) = *(v2[4] + 16 * v1 - 16);
      v7 = v2[2] - 1;
    }

    v2[2] = v7;
    ++*(v2 + 6);
    v8 -= 16;
    --v5;
  }

  while (v5);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v7)
  {
    v12 = 0;
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v2 = MEMORY[0x277D86220];
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = 0;
    v21 = 2048;
    v22 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v10 = v2[4];
  (*(**v2 + 40))(*v2, *v10);
  (*(**v2 + 40))(*v2, v10[1]);
  result = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v2);
  *(v2 + 11) = 0;
LABEL_28:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::DataArray<re::TypeRegistry::TypeNameAndVersion>::deinit(uint64_t result)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!*(result + 44))
  {
    goto LABEL_28;
  }

  v3 = result;
  v12 = result;
  if (*(result + 40))
  {
    LODWORD(v13) = 0;
    if (!*(result + 16))
    {
      goto LABEL_33;
    }

    v4 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v12);
      v4 = v12;
    }
  }

  else
  {
    LODWORD(v13) = -1;
    v4 = result;
  }

  v12 = v4;
  if (v4 != v3 || v13 != 0xFFFFFFFFLL)
  {
    v1 = v13;
    v5 = WORD1(v13);
    do
    {
      v6 = v4[2];
      if (v6 <= v5)
      {
        goto LABEL_31;
      }

      v7 = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(v3, ((*(*(v4[4] + 16 * v5 + 8) + 4 * v1) & 0xFFFFFF) << 32) | (v5 << 16) | v1);
      if (v7)
      {
        v8 = v7;
        re::StringID::destroyString(v7);
        v2 = v3[2];
        if (v2 <= v5)
        {
          goto LABEL_32;
        }

        *(*(v3[4] + 16 * v5 + 8) + 4 * v1) = 0;
        *v8 = *(v3 + 13);
        *(v3 + 26) = v1;
        *(v3 + 27) = v5;
        --*(v3 + 10);
      }

      re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v12);
      v4 = v12;
      v1 = v13;
      v5 = WORD1(v13);
    }

    while (v12 != v3 || v13 != 0xFFFFLL || WORD1(v13) != 0xFFFFLL);
  }

  v5 = v3[2];
  v6 = v5 - 1;
  if (v5 == 1)
  {
    goto LABEL_26;
  }

  v9 = 16 * v5 - 16;
  do
  {
    if (v5 <= v6)
    {
      v12 = 0;
      v27 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      v18 = 789;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      v22 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_30:
      v12 = 0;
      v27 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "removeAt";
      v17 = 1024;
      v18 = 931;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      v22 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_31:
      v14 = 0;
      v27 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      v18 = 797;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v14 = 0;
      v27 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      v18 = 789;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v14 = 0;
      v27 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      v18 = 797;
      v19 = 2048;
      v20 = 0;
      v21 = 2048;
      v22 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v5 = v3[4] + v9;
    (*(**v3 + 40))(*v3, *v5);
    (*(**v3 + 40))(*v3, *(v5 + 8));
    v1 = v3[2];
    if (v1 <= v6)
    {
      goto LABEL_30;
    }

    v5 = v1 - 1;
    if (v1 - 1 > v6)
    {
      *(v3[4] + v9) = *(v3[4] + 16 * v1 - 16);
      v5 = v3[2] - 1;
    }

    v3[2] = v5;
    ++*(v3 + 6);
    v9 -= 16;
    --v6;
  }

  while (v6);
  v3[6] = 0xFFFFFFFF00000000;
  if (!v5)
  {
    v12 = 0;
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = MEMORY[0x277D86220];
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    v18 = 789;
    v19 = 2048;
    v20 = 0;
    v21 = 2048;
    v22 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v3[6] = 0xFFFFFFFF00000000;
  }

  v10 = v3[4];
  (*(**v3 + 40))(*v3, *v10);
  (*(**v3 + 40))(*v3, v10[1]);
  result = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v3);
  *(v3 + 11) = 0;
LABEL_28:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::DynamicArray<re::StringID>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 16 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 16);
          v5 -= 16;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::internal::ObjectTypeInfo>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 176 * v4;
        v6 = (v3 + 112);
        do
        {
          re::StringID::destroyString(v6);
          v6 = (v6 + 176);
          v5 -= 176;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

double re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 32;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::TypeRegistry::declareType(re::StringID *a1@<X2>, uint64_t a2@<X0>, int a3@<W1>, unsigned int a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  v80 = *MEMORY[0x277D85DE8];
  re::TypeRegistry::typeID(a2, a1, &v66);
  v12 = v66;
  if (v66)
  {
    v13 = v67;
    if ((a5 & 1) == 0)
    {
      v14 = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(a2 + 96, v67);
      v15 = v14 ? *(v14 + 4) : -1;
      if (v15 > a4)
      {
        v16 = *re::foundationIntrospectionLogObjects(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 1);
          v18 = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(a2 + 96, v13);
          if (v18)
          {
            v19 = *(v18 + 16);
          }

          else
          {
            v19 = -1;
          }

          *buf = 136315906;
          *&buf[4] = v17;
          *&buf[12] = 1024;
          *&buf[14] = a4;
          *&buf[18] = 2080;
          *&buf[20] = v17;
          *&buf[28] = 1024;
          *&buf[30] = v19;
          _os_log_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEFAULT, "Type %s version %u is defined after type %s version %u.", buf, 0x22u);
        }
      }
    }

    v20 = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(a2 + 96, v13);
    if (v20)
    {
      v21 = *(v20 + 4);
    }

    else
    {
      v21 = -1;
    }

    if (v21 == a4)
    {
      v22 = *re::foundationIntrospectionLogObjects(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 1);
        v24 = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(a2 + 96, v13);
        if (v24)
        {
          v25 = *(v24 + 16);
        }

        else
        {
          v25 = -1;
        }

        *buf = 136315394;
        *&buf[4] = v23;
        *&buf[12] = 1024;
        *&buf[14] = v25;
        v57 = "Duplicate types. A type with the same name (%s) and version (%u) has already been declared.";
        v58 = v22;
        v59 = 18;
        goto LABEL_63;
      }

      goto LABEL_54;
    }

    v26 = re::DataArray<re::internal::TypeInfoIndex>::tryGet(a2 + 32, v13);
    if (v26[3] != a3)
    {
      v55 = *re::foundationIntrospectionLogObjects(v26);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v60 = *(a1 + 1);
        *buf = 136315138;
        *&buf[4] = v60;
        v57 = "An type with the same name (%s) but with a different type category has already been declared.";
        v58 = v55;
        v59 = 12;
LABEL_63:
        _os_log_error_impl(&dword_26168F000, v58, OS_LOG_TYPE_ERROR, v57, buf, v59);
      }

LABEL_54:
      *a6 = 0;
      a6[1] = 0xFFFFFFFFLL;
      goto LABEL_59;
    }
  }

  re::TypeRegistry::makeStringID(a2, a1, v65);
  v28 = *(a2 + 88);
  if ((v28 + 1) >> 24)
  {
    v29 = 1;
  }

  else
  {
    v29 = v28 + 1;
  }

  *(a2 + 88) = v29;
  v30 = *(a2 + 84);
  v31 = *(a2 + 86);
  if (v30 == 0xFFFF && v31 == 0xFFFF)
  {
    if (*(a2 + 80) >= *(a2 + 76))
    {
      re::DataArray<re::internal::TypeInfoIndex>::allocBlock((a2 + 32));
    }

    v32 = *(a2 + 48);
    v31 = (v32 - 1);
    if (v32)
    {
      v30 = *(a2 + 80);
      if (v30 < 0x10000)
      {
        v33 = (*(a2 + 64) + 16 * v31);
        *(a2 + 80) = v30 + 1;
        *(v33[1] + 4 * v30) = *(a2 + 88);
        v34 = (*v33 + 4 * v30);
        goto LABEL_32;
      }

LABEL_66:
      re::internal::assertLog(5, v27, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v30);
      _os_crash();
      __break(1u);
LABEL_67:
      v68 = 0;
      v78 = 0u;
      v79 = 0u;
      memset(buf, 0, sizeof(buf));
      v62 = v41;
      v63 = v47;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v69 = 136315906;
      v70 = "operator[]";
      v71 = 1024;
      v72 = 789;
      v73 = 2048;
      v74 = v62;
      v75 = 2048;
      v76 = v63;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_68:
      v68 = 0;
      v78 = 0u;
      v79 = 0u;
      memset(buf, 0, sizeof(buf));
      v64 = v43;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v69 = 136315906;
      v70 = "operator[]";
      v71 = 1024;
      v72 = 789;
      v73 = 2048;
      v74 = v64;
      v75 = 2048;
      v76 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_69:
      re::internal::assertLog(5, v27, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v44);
      _os_crash();
      __break(1u);
    }

LABEL_65:
    v68 = 0;
    v78 = 0u;
    v79 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v69 = 136315906;
    v70 = "operator[]";
    v71 = 1024;
    v72 = 789;
    v73 = 2048;
    v74 = v31;
    v75 = 2048;
    v76 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  v35 = *(a2 + 48);
  if (v35 <= v31)
  {
    v68 = 0;
    v78 = 0u;
    v79 = 0u;
    memset(buf, 0, sizeof(buf));
    v61 = v35;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v69 = 136315906;
    v70 = "operator[]";
    v71 = 1024;
    v72 = 789;
    v73 = 2048;
    v74 = v31;
    v75 = 2048;
    v76 = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }

  v36 = (*(a2 + 64) + 16 * v31);
  *(v36[1] + 4 * v30) = v29;
  v34 = (*v36 + 4 * v30);
  *(a2 + 84) = *v34;
LABEL_32:
  ++*(a2 + 72);
  *v34 = (a3 << 24) | 0xFFFFFF;
  v37 = *(a2 + 88);
  v38 = *(a2 + 152);
  if ((v38 + 1) >> 24)
  {
    v39 = 1;
  }

  else
  {
    v39 = v38 + 1;
  }

  *(a2 + 152) = v39;
  v40 = *(a2 + 148);
  v41 = *(a2 + 150);
  if (v40 != 0xFFFF || v41 != 0xFFFF)
  {
    v47 = *(a2 + 112);
    if (v47 > v41)
    {
      v48 = (*(a2 + 128) + 16 * v41);
      *(v48[1] + 4 * v40) = v39;
      v46 = (*v48 + 24 * v40);
      *(a2 + 148) = *v46;
      goto LABEL_44;
    }

    goto LABEL_67;
  }

  if (*(a2 + 144) >= *(a2 + 140))
  {
    re::DataArray<re::TypeRegistry::TypeNameAndVersion>::allocBlock((a2 + 96));
  }

  v42 = *(a2 + 112);
  v43 = (v42 - 1);
  if (!v42)
  {
    goto LABEL_68;
  }

  v44 = *(a2 + 144);
  if (v44 >= 0x10000)
  {
    goto LABEL_69;
  }

  v45 = (*(a2 + 128) + 16 * v43);
  *(a2 + 144) = v44 + 1;
  *(v45[1] + 4 * v44) = *(a2 + 152);
  v46 = (*v45 + 24 * v44);
LABEL_44:
  v49 = v30 + (v31 << 16) + ((v37 & 0xFFFFFF) << 32);
  ++*(a2 + 136);
  v50 = re::StringID::StringID(v46, v65);
  *(v50 + 4) = a4;
  v51 = v65[0];
  if (v65[0] < 0xFFFFFFFFFFFFFFFELL || (v65[0] & 1) != 0 || *v65[1])
  {
    if (!v12)
    {
      goto LABEL_51;
    }

    v50 = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(a2 + 96, v67);
    if (v50 && *(v50 + 4) < a4)
    {
      v51 = v65[0];
LABEL_51:
      memset(buf, 0, 24);
      v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v51 >> 31) ^ (v51 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v51 >> 31) ^ (v51 >> 1))) >> 27));
      v50 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a2 + 200, v65, v52 ^ (v52 >> 31), buf);
      v53 = *&buf[12];
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v54 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a2 + 200, *&buf[8], *buf);
        v50 = re::StringID::StringID((v54 + 8), v65);
        *(v54 + 24) = v49;
        ++*(a2 + 240);
      }

      else
      {
        ++*(a2 + 240);
        *(*(a2 + 216) + 32 * v53 + 24) = v49;
      }
    }
  }

  ++*(a2 + 24);
  *a6 = a2;
  a6[1] = v49;
  if (v65[0])
  {
    if (v65[0])
    {
    }
  }

LABEL_59:
  v56 = *MEMORY[0x277D85DE8];
}

uint64_t re::TypeRegistry::typeID@<X0>(re::TypeRegistry *this@<X0>, const re::StringID *a2@<X1>, re::TypeRegistry **a3@<X8>)
{
  v3 = this;
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v7);
  if (v8 == 0x7FFFFFFF)
  {
    v3 = 0;
    a3[1] = 0xFFFFFFFFLL;
  }

  else
  {
    a3[1] = *(*(v3 + 27) + 32 * v8 + 24);
  }

  *a3 = v3;
  return result;
}

unint64_t *re::TypeRegistry::makeStringID@<X0>(re::TypeRegistry *this@<X0>, const char **a2@<X1>, unint64_t *a3@<X8>)
{
  if (*a2)
  {
    return re::TypeRegistry::makeStringID(this, a2[1], a3);
  }

  else
  {
    return re::StringID::StringID(a3, a2);
  }
}

void re::TypeRegistry::declareTypeAlias(re::TypeRegistry *this, re::TypeRegistry **a2, const char **a3)
{
  if (!*a2)
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "declareTypeAlias", 144);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (*a2 != this)
  {
LABEL_8:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "declareTypeAlias", 145);
    _os_crash();
    __break(1u);
    return;
  }

  re::TypeRegistry::makeStringID(this, a3, &v6);
  re::DynamicArray<re::StringID>::add((this + 160), &v6);
  v5 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(this + 200, &v6, a2 + 1);
  ++*(this + 6);
  if (v6)
  {
    if (v6)
    {
    }
  }
}

unint64_t *re::DynamicArray<re::StringID>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::StringID>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::StringID::StringID((*(this + 4) + 16 * v4), a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(uint64_t a1, uint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

void re::TypeRegistry::typeInfo(re *a1@<X0>, re **a2@<X1>, _BYTE *a3@<X8>)
{
  if (!*a2)
  {
    goto LABEL_5;
  }

  if (*a2 != a1)
  {
    v4 = *re::foundationIntrospectionLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Invalid type ID. Type was registered in a different type registry.", v6, 2u);
    }

LABEL_5:
    *a3 = 0;
    return;
  }

  v5 = a2[1];

  re::TypeRegistry::typeInfo(a1, v5, a3);
}

unint64_t *re::TypeRegistry::typeName(uint64_t a1, uint64_t a2)
{
  result = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(a1 + 96, a2);
  if (!result)
  {
  }

  return result;
}

void anonymous namespace::invalidTypeName(_anonymous_namespace_ *this)
{
  {
  }
}

uint64_t re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 24 * a2;
  }

  else
  {
    return 0;
  }
}

unint64_t *re::TypeRegistry::makeStringID@<X0>(re::TypeRegistry *this@<X0>, const char *__s@<X1>, unint64_t *a3@<X8>)
{
  if (__s)
  {
    result = strlen(__s);
    if (result)
    {
      v12 = (*(**(this + 2) + 32))(*(this + 2), result + 1, 0);
      strcpy(v12, __s);
      result = re::DynamicArray<re::Allocator const*>::add(this + 102, &v12);
      v7 = v12;
      if (v12)
      {
        v8 = *v12;
        if (*v12)
        {
          v9 = v12[1];
          if (v9)
          {
            v10 = v12 + 2;
            do
            {
              v8 = 31 * v8 + v9;
              v11 = *v10++;
              v9 = v11;
            }

            while (v11);
          }
        }
      }

      else
      {
        v8 = 0;
      }

      *a3 = 2 * v8;
      a3[1] = v7;
    }

    else
    {
      *a3 = 0;
      a3[1] = "";
    }
  }

  else
  {

    return re::StringID::invalid(a3);
  }

  return result;
}

_anonymous_namespace_ *re::DataArray<re::internal::TypeInfoIndex>::allocBlock(void *a1)
{
  v3 = 4 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

_anonymous_namespace_ *re::DataArray<re::TypeRegistry::TypeNameAndVersion>::allocBlock(void *a1)
{
  v3 = 24 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

void *re::DynamicArray<re::StringID>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::StringID>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 16 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = *(v8 + 1);
          *v8 = 0;
          *(v8 + 1) = "";
          re::StringID::destroyString(v8);
          v8 = (v8 + 16);
          v11 += 2;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + 32 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 32 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 32 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 32 * v12) & 0x7FFFFFFF;
      LODWORD(v8) = v12;
      if (v11 == 0x7FFFFFFF)
      {
        LODWORD(v8) = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * ((*(v17 - 1) >> 31) ^ (*(v17 - 1) >> 1));
                v19 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                v20 = *(v17 - 1);
                v19[1] = v19[1] & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                v19[1] = *(v17 - 1) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                v19[2] = *v17;
                *(v17 - 1) = 0;
                *v17 = "";
                v19[3] = v17[1];
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 32 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 32 * v4;
}

void *re::DynamicArray<re::StringID>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::StringID>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::StringID>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void re::ArrayAccessor::reset(re::ArrayAccessor *this, void **a2, re::Allocator *a3, const re::TypeInfo *a4)
{
  v8 = *this;
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v28);
  re::TypeInfo::TypeInfo(v26, v29);
  v9 = v27[12];
  v10 = *(this + 2);
  if ((*(v10 + 92) & 0xFFFFFF) != 0)
  {
    re::TypeRegistry::typeInfo(v8, *(v10 + 88), v28);
    re::TypeInfo::TypeInfo(v25, v29);
    v11 = *(*(this + 2) + 96);
    Unsigned = re::internal::readUnsigned((a2 + v11), v25, v12);
    if (Unsigned)
    {
      if ((v9 & 1) == 0)
      {
        v14 = Unsigned;
        for (i = 0; i != v14; ++i)
        {
          v16 = re::ArrayAccessor::elementAtUnchecked(this, a2, i);
          re::TypeInfo::destruct(v26, v16, a3, 0);
        }
      }

      (*(*a3 + 40))(a3, *a2);
      re::internal::writeUnsigned((a2 + v11), v25, 0);
      *a2 = 0;
    }

    if (a4)
    {
      v17 = re::internal::checkedArraySize(v27[2], a4);
      re::internal::writeUnsigned((a2 + v11), v25, a4);
      v18 = (*(*a3 + 32))(a3, v17, v27[3]);
      *a2 = v18;
      if ((v9 & 1) == 0)
      {
        v19 = 0;
        do
        {
          v20 = re::ArrayAccessor::elementAtUnchecked(this, a2, v19);
          re::TypeInfo::construct(v26, v20, a3, 0);
          ++v19;
        }

        while (a4 != v19);
        return;
      }

      v24 = v17;
LABEL_19:
      bzero(v18, v24);
    }
  }

  else
  {
    v21 = *(v10 + 96);
    if (!v21)
    {
      return;
    }

    if (v9)
    {
      v24 = re::internal::checkedArraySize(v27[2], a4);
      v18 = a2;
      goto LABEL_19;
    }

    for (j = 0; j != v21; ++j)
    {
      v23 = re::ArrayAccessor::elementAtUnchecked(this, a2, j);
      re::TypeInfo::destruct(v26, v23, a3, 0);
      re::TypeInfo::construct(v26, v23, a3, 0);
    }
  }
}

uint64_t re::ArrayAccessor::elementAtUnchecked(re::ArrayAccessor *this, void **a2, uint64_t a3)
{
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v9);
  re::TypeInfo::TypeInfo(v7, &v10);
  if ((*(*(this + 2) + 92) & 0xFFFFFF) != 0)
  {
    a2 = *a2;
  }

  return a2 + *(v8 + 8) * a3;
}

uint64_t re::ArrayAccessor::size(re::ArrayAccessor *this, char *a2)
{
  v4 = *(this + 2);
  if ((*(v4 + 92) & 0xFFFFFF) == 0)
  {
    return *(v4 + 96);
  }

  v11[8] = v2;
  v11[9] = v3;
  re::TypeRegistry::typeInfo(*this, *(v4 + 88), v10);
  re::TypeInfo::TypeInfo(v9, v11);
  return re::internal::readUnsigned(&a2[*(*(this + 2) + 96)], v9, v7);
}

uint64_t re::internal::readUnsigned(re::internal *this, void *a2, const re::TypeInfo *a3)
{
  v3 = *(a2[2] + 8);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      return *this;
    }

    if (v3 == 8)
    {
      return *this;
    }
  }

  else
  {
    if (v3 == 1)
    {
      return *this;
    }

    if (v3 == 2)
    {
      return *this;
    }
  }

  re::internal::assertLog(5, a2, a3, "assertion failure: '%s' (%s:line %i) Unsupported integer type. Size of type in bytes: %zu", "!Unreachable code", "readUnsigned", 29, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

_DWORD *re::internal::writeUnsigned(_DWORD *this, void *a2, const re::TypeInfo *a3)
{
  v3 = *(a2[2] + 8);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      *this = a3;
      return this;
    }

    if (v3 == 8)
    {
      *this = a3;
      return this;
    }
  }

  else
  {
    if (v3 == 1)
    {
      *this = a3;
      return this;
    }

    if (v3 == 2)
    {
      *this = a3;
      return this;
    }
  }

  re::internal::assertLog(5, a2, a3, "assertion failure: '%s' (%s:line %i) Unsupported integer type. Size of type in bytes: %zu", "!Unreachable code", "writeUnsigned", 55, v3);
  this = _os_crash();
  __break(1u);
  return this;
}

uint64_t re::internal::checkedArraySize(unint64_t this, unint64_t a2)
{
  if (is_mul_ok(this, a2))
  {
    return this * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in array. Element size = %zu bytes, count = %zu", "!overflow", "checkedArraySize", 65, this, a2, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::TypeBuilderHelper::registerPointer(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v26);
  if (v26)
  {
    *a5 = v26;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v25);
    re::TypeBuilder::TypeBuilder(v12, v25);
    v10 = *(a3 + 8);
    v15 = -1;
    memset(v16, 0, sizeof(v16));
    v17 = 0u;
    v18 = 0xFFFFFFFFLL;
    v19 = 1;
    v20 = 0;
    v21 = 0xFFFFFFFFLL;
    v22 = 1;
    v23 = 0xFFFFFFFFLL;
    v24 = 0;
    v12[0] = 9;
    re::StringID::operator=(&v13, a2);
    v14 = 1;
    *(v16 + 4) = 0x800000008uLL;
    *(&v17 + 4) = 0;
    *(&v16[1] + 4) = 0;
    v19 = -1;
    v21 = v10;
    v22 = a4;
    re::TypeBuilder::commitTo(v12, a1, a5);
    re::TypeBuilder::~TypeBuilder(v12, v11);
    re::StackScratchAllocator::~StackScratchAllocator(v25);
  }
}

void re::TypeBuilderHelper::registerCString(re::TypeBuilderHelper *this@<X0>, void *a2@<X8>)
{
  v11[0] = 189247272;
  v11[1] = "char*";
  v5 = re::TypeRegistry::typeID(this, v11, &v10);
  if (v10)
  {
    *a2 = v10;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v9);
    re::TypeBuilder::TypeBuilder(v8, v9);
    v7[0] = 0;
    v7[1] = 0xFFFFFFFFLL;
    re::TypeBuilder::beginObjectType(v8, v11, 1, 1, 8uLL, 8uLL, v7);
    re::TypeBuilder::setHasKnownSize(v8, 0);
    re::TypeBuilder::commitTo(v8, this, a2);
    re::TypeBuilder::~TypeBuilder(v8, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v9);
  }

  if (v11[0])
  {
    if (v11[0])
    {
    }
  }
}

void RESyncCommitListCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 64, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v2 + 24) = 0;
  *v2 = &unk_2873F3F70;
  *(v2 + 56) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
}

uint64_t RESyncCommitListGetEntryCount(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t RESyncCommitListGetEntry(uint64_t result, unint64_t a2)
{
  if (result)
  {
    if (*(result + 40) <= a2)
    {
      return 0;
    }

    else
    {
      return *(result + 56) + 72 * a2;
    }
  }

  return result;
}

uint64_t RESyncCommitListAddCopy(void *a1, __int128 *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      re::DynamicArray<re::SyncCommit>::add((a1 + 3), a2);
      return a1[7] + 72 * a1[5] - 72;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::SyncCommit>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SyncCommit>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 72 * v4);
  v6 = *a2;
  *(v5 + 13) = *(a2 + 13);
  *v5 = v6;
  result = re::DynamicArray<re::internal::SyncSnapshotEntry>::DynamicArray((v5 + 2), a2 + 4);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t RESyncCommitListAddNewCommit(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    memset(v2, 0, sizeof(v2));
    re::DynamicArray<re::SyncCommit>::add((result + 24), v2);
    re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v3);
    return *(v1 + 56) + 72 * *(v1 + 40) - 72;
  }

  return result;
}

void re::DynamicArray<re::SyncCommit>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SyncCommit>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  re::SyncCommit::SyncCommit(*(this + 4) + 72 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
}

uint64_t RESyncCommitListClear(uint64_t result)
{
  if (result)
  {
    return re::DynamicArray<re::SyncCommit>::clear(result + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::SyncCommit>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 72 * v2;
    v4 = *(result + 32) + 32;
    do
    {
      result = re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v4);
      v4 += 72;
      v3 -= 72;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

_BYTE *RESyncCommitIsAtomic(_BYTE *result)
{
  if (result)
  {
    return (*result & 1);
  }

  return result;
}

uint64_t RESyncCommitCaptureSnapshot(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v15 = a2;
      v9 = a2 + 1;
      v10 = re::SyncSnapshot::writeObject((a1 + 32), &v15);
      v12 = v11;

      v13 = *(*(a2[11] + 16) + 88);
      *(v10 + 16) |= 8u;
      result = (*(v13 + 16))();
      if (a5)
      {
        if (result)
        {
          *(v10 + 16) |= 8u;
          LODWORD(v14) = *(v12 + 24);
          if (*(v12 + 28))
          {
            v14 = (v14 + 1);
          }

          else
          {
            v14 = v14;
          }

          *a5 = v14;
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL RESyncCommitMarkDestroyed(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v7 = a2;
    v5 = (a2 + 8);
    v2 = re::SyncSnapshot::writeDestroyedObject((a1 + 32), &v7);
  }

  return v2;
}

uint64_t RESyncCommitEnumerateForRead(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 48))
    {
      v5 = 0;
      LODWORD(v2) = 1;
      do
      {
        v8[0] = re::SyncSnapshot::readAt((a1 + 32), v5);
        v8[1] = v6;
        v2 = v2 & (*(a2 + 16))(a2, v8);
        ++v5;
      }

      while (v5 < *(a1 + 48));
    }

    else
    {
      return 1;
    }
  }

  return v2;
}

uint64_t RESyncCommitSetForwarded(uint64_t result)
{
  if (result)
  {
    *(result + 28) = 1;
  }

  return result;
}

uint64_t RESyncCommitGetSourcePeerID(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t RESyncCommitHoldWithID(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *result |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

uint64_t RESyncCommitUnhold(uint64_t result)
{
  if (result)
  {
    *result &= ~2u;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 24 * v4;
        do
        {
          if (*v3)
          {

            *v3 = 0;
          }

          v3 += 24;
          v5 -= 24;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::SyncCommitList::~SyncCommitList(re::SyncCommitList *this)
{
  *this = &unk_2873F3F70;
  re::DynamicArray<re::SyncCommit>::deinit(this + 24);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F3F70;
  re::DynamicArray<re::SyncCommit>::deinit(this + 24);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

uint64_t re::DynamicArray<re::SyncCommit>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 72 * v4;
        v6 = v3 + 32;
        do
        {
          re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v6);
          v6 += 72;
          v5 -= 72;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::SyncCommit>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::SyncCommit>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SyncCommit>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SyncCommit>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::SyncCommit>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x48uLL))
        {
          v2 = 72 * a2;
          result = (*(*result + 32))(result, 72 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 72, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 72 * v9;
        v11 = v7;
        do
        {
          re::SyncCommit::SyncCommit(v11, v8);
          re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v8 + 32);
          v8 += 72;
          v11 += 72;
          v10 -= 72;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

__n128 re::SyncCommit::SyncCommit(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v4 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v4;
  v5 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v5;
  ++*(a2 + 56);
  ++*(a1 + 56);
  return result;
}

uint64_t re::DynamicArray<re::internal::SyncSnapshotEntry>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::internal::SyncSnapshotEntry>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::internal::SyncSnapshotEntry>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::internal::SyncSnapshotEntry>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::internal::SyncSnapshotEntry>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = v12 + 24 * v13;
      do
      {
        re::SharedPtr<re::SyncObject>::reset(v14, *v12);
        v16 = *(v12 + 8);
        *(v14 + 16) = *(v12 + 16);
        *(v14 + 8) = v16;
        v12 += 24;
        v14 += 24;
      }

      while (v12 != v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = 3 * v13;
      v18 = (v12 + 24 * v4);
      v19 = (v12 + 8 * v17);
      v20 = v14 + 8 * v17;
      do
      {
        v21 = *v19;
        *v20 = *v19;
        if (v21)
        {
          v22 = (v21 + 8);
        }

        v23 = v19[1];
        *(v20 + 16) = *(v19 + 16);
        *(v20 + 8) = v23;
        v19 += 3;
        v20 += 24;
      }

      while (v19 != v18);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = v7 + 24 * v4;
      do
      {
        re::SharedPtr<re::SyncObject>::reset(v6, *v7);
        v9 = *(v7 + 8);
        *(v6 + 16) = *(v7 + 16);
        *(v6 + 8) = v9;
        v7 += 24;
        v6 += 24;
      }

      while (v7 != v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = v6 + 24 * v4;
      v11 = 24 * v5 - 24 * v4;
      do
      {
        if (*v10)
        {

          *v10 = 0;
        }

        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::internal::SyncSnapshotEntry>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::internal::SyncSnapshotEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 24 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          *v8 = 0;
          v12 = *(v8 + 8);
          *(v11 + 16) = *(v8 + 16);
          v11[1] = v12;
          if (*v8)
          {

            *v8 = 0;
          }

          v8 += 24;
          v11 += 3;
          v10 -= 24;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void re::SharedPtr<re::SyncObject>::reset(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (a2)
    {
      v5 = (a2 + 8);
      v2 = *a1;
    }

    if (v2)
    {
    }

    *a1 = a2;
  }
}

uint64_t RESyncSessionSend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4 || a3 == 0;
  v6 = !v5;
  if (!v5)
  {
    if (a4)
    {
      v7 = 0;
    }

    else
    {
      a1 = MEMORY[0x28223BE20]();
      v7 = v10;
      v11 = 0u;
      v12 = 0;
      memset(v10, 0, sizeof(v10));
      a4 = v10;
      HIDWORD(v11) = 0x7FFFFFFF;
    }

    *a4 = a1;
    (*(*a2 + 88))(a2, *(a3 + 56), *(a3 + 40));
    if (v7)
    {
      re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v7 + 5);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t RESyncSessionSendRaw(re *a1, re *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v10 = 136315394;
    v11 = "RESyncSessionSendRaw";
    v12 = 2080;
    v13 = "service != __null";
LABEL_16:
    _os_log_error_impl(&dword_26168F000, v8, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v10, 0x16u);
    goto LABEL_17;
  }

  if (!this)
  {
    v8 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v10 = 136315394;
    v11 = "RESyncSessionSendRaw";
    v12 = 2080;
    v13 = "session != __null";
    goto LABEL_16;
  }

  if (!a3)
  {
    v8 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v10 = 136315394;
    v11 = "RESyncSessionSendRaw";
    v12 = 2080;
    v13 = "peerID != kRESyncInvalidPeerID";
    goto LABEL_16;
  }

  if (!a4)
  {
    v8 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "RESyncSessionSendRaw";
      v12 = 2080;
      v13 = "data != __null";
      goto LABEL_16;
    }

LABEL_17:
    v9 = *MEMORY[0x277D85DE8];
    return 0;
  }

  v5 = *(*this + 96);
  v6 = *MEMORY[0x277D85DE8];

  return v5(this, a3, a4, a5);
}

BOOL RESyncSessionSendAll(re *a1, uint64_t a2, re **a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v14 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_14;
    }

    *buf = 136315394;
    v19 = "RESyncSessionSendAll";
    v20 = 2080;
    v21 = "service != __null";
LABEL_19:
    _os_log_error_impl(&dword_26168F000, v14, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    result = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    v14 = *re::networkLogObjects(a1);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_14;
    }

    *buf = 136315394;
    v19 = "RESyncSessionSendAll";
    v20 = 2080;
    v21 = "commits != __null";
    goto LABEL_19;
  }

  v4 = a3;
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    a1 = MEMORY[0x28223BE20]();
    v4 = v15;
    v16 = 0u;
    v17 = 0;
    memset(v15, 0, sizeof(v15));
    v5 = v15;
    HIDWORD(v16) = 0x7FFFFFFF;
  }

  *v4 = a1;
  v6 = (*(*a1 + 128))(a1);
  if (v7)
  {
    v8 = v6;
    v9 = 8 * v7;
    do
    {
      v10 = *v8;
      if (*v8)
      {
        v11 = (v10 + 8);
      }

      (*(*v10 + 88))(v10, *(a2 + 56), *(a2 + 40), v4);

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  if (v5)
  {
    re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v5 + 5);
  }

  result = 1;
LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL RESyncSessionReceive(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v7 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_10;
    }

    *buf = 136315394;
    v11 = "RESyncSessionReceive";
    v12 = 2080;
    v13 = "service != __null";
LABEL_17:
    _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    result = 0;
    goto LABEL_10;
  }

  if (!a2)
  {
    v7 = *re::networkLogObjects(a1);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_10;
    }

    *buf = 136315394;
    v11 = "RESyncSessionReceive";
    v12 = 2080;
    v13 = "session != __null";
    goto LABEL_17;
  }

  if (!a4)
  {
    v7 = *re::networkLogObjects(a1);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_10;
    }

    *buf = 136315394;
    v11 = "RESyncSessionReceive";
    v12 = 2080;
    v13 = "handler != __null";
    goto LABEL_17;
  }

  if (a3)
  {
    v4 = 0;
  }

  else
  {
    MEMORY[0x28223BE20]();
    v9 = 0u;
    memset(v8, 0, sizeof(v8));
    DWORD1(v9) = 0x7FFFFFFF;
    v4 = v8;
  }

  (*(*a2 + 72))(a2, a4);
  if (v4)
  {
    re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v4 + 4);
  }

  result = 1;
LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncSessionReceiveRaw(re *a1, re *this, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "RESyncSessionReceiveRaw";
      v10 = 2080;
      v11 = "service != __null";
      goto LABEL_14;
    }

LABEL_12:
    v7 = *MEMORY[0x277D85DE8];
    return 0;
  }

  if (!this)
  {
    v6 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "RESyncSessionReceiveRaw";
      v10 = 2080;
      v11 = "session != __null";
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!a3)
  {
    v6 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v8 = 136315394;
    v9 = "RESyncSessionReceiveRaw";
    v10 = 2080;
    v11 = "handler != __null";
LABEL_14:
    _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v8, 0x16u);
    goto LABEL_12;
  }

  v3 = *(*this + 80);
  v4 = *MEMORY[0x277D85DE8];

  return v3(this, a3);
}

uint64_t RESyncSessionReceiveAll(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    v6 = a2;
    if (a2)
    {
      v7 = 0;
    }

    else
    {
      a1 = MEMORY[0x28223BE20]();
      v6 = v16;
      v17 = 0u;
      memset(v16, 0, sizeof(v16));
      DWORD1(v17) = 0x7FFFFFFF;
      v7 = v16;
    }

    v8 = (*(*a1 + 128))(a1);
    if (v9)
    {
      v10 = v8;
      v11 = 8 * v9;
      do
      {
        v12 = *v10;
        if (*v10)
        {
          v13 = (v12 + 8);
        }

        (*(*v12 + 72))(v12, a3, v6);

        ++v10;
        v11 -= 8;
      }

      while (v11);
    }

    if (v7)
    {
      re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v7 + 4);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t RESyncSessionSetViewFilterCB(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    (*(*a1 + 48))(a1);
  }

  return v3;
}

uint64_t RESyncSessionHasViewFilterCB(uint64_t result)
{
  if (result)
  {
    return (*(*result + 56))(result) != 0;
  }

  return result;
}

uint64_t RESyncSessionGetNetSession(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  (*(*a1 + 32))(&v3);
  v1 = v3;
  if (v3)
  {
  }

  return v1;
}

uint64_t RESyncSessionIsPrivileged(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    (*(*a1 + 32))(&v4, a1);
    if (v4)
    {
      (*(*v1 + 32))(&v3, v1);
      v1 = *(v3 + 2218);

      if (v4)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t RESyncSessionIsLocal(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    (*(*a1 + 32))(&v4, a1);
    if (v4)
    {
      (*(*v1 + 32))(&v3, v1);
      v1 = *(v3 + 2219);

      if (v4)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t RESyncSessionPausePeer(uint64_t result)
{
  if (result)
  {
    return (*(*result + 120))();
  }

  return result;
}

uint64_t RESyncSessionResumePeer(uint64_t result)
{
  if (result)
  {
    return (*(*result + 128))();
  }

  return result;
}

double re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

re::SyncViewManager *re::SyncViewManager::SyncViewManager(re::SyncViewManager *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F3FB8;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 148) = 0x7FFFFFFFLL;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 196) = 0x7FFFFFFFLL;
  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(this + 3, 0);
  ++*(this + 12);
  return this;
}

void re::SyncViewManager::~SyncViewManager(re::SyncViewManager *this)
{
  *this = &unk_2873F3FB8;
  while (*(this + 47))
  {
    v2 = *(this + 48);
    v3 = *(this + 22);
    if (v2)
    {
      v4 = 0;
      v5 = (v3 + 8);
      while (1)
      {
        v6 = *v5;
        v5 += 6;
        if (v6 < 0)
        {
          break;
        }

        if (v2 == ++v4)
        {
          LODWORD(v4) = *(this + 48);
          break;
        }
      }

      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v3 + 24 * v7 + 16);
    v9 = re::SyncViewManager::removeViewer(this, v8, 1);
    if (v8)
    {
      v10 = re::globalAllocators(v9)[2];
      (**v8)(v8);
      (*(*v10 + 40))(v10, v8);
    }
  }

  while (*(this + 35))
  {
    v11 = *(this + 36);
    v12 = *(this + 16);
    if (v11)
    {
      v13 = 0;
      v14 = (v12 + 8);
      while (1)
      {
        v15 = *v14;
        v14 += 6;
        if (v15 < 0)
        {
          break;
        }

        if (v11 == ++v13)
        {
          LODWORD(v13) = *(this + 36);
          break;
        }
      }

      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    re::SyncViewManager::removeView(this, *(v12 + 24 * v16 + 16));
  }

  if (*(this + 3))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 24);
  }

  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 20);
  v17.n128_f64[0] = re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::deinit(this + 14);
  if (*(this + 3))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 24);
  }

  v18 = *(this + 8);
  if (v18)
  {
    if (*(this + 12))
    {
      (*(*v18 + 40))(v18, v17);
    }

    *(this + 12) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 8) = 0;
    ++*(this + 22);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 24);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::SyncViewManager::~SyncViewManager(this);

  JUMPOUT(0x266708EC0);
}

void re::SyncViewManager::addView(re::SyncViewManager *this, unint64_t a2)
{
  v12 = a2;
  if (a2)
  {
    v4 = (a2 + 8);
  }

  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  v7 = *(this + 34);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(this + 15) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(this + 16);
      v11 = a2;
      if (*(v10 + 24 * v9 + 16) == a2)
      {
        goto LABEL_11;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == a2)
        {
          v11 = a2;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::addAsMove(this + 112, v8, v6, &v12, &v12);
  ++*(this + 38);
  v11 = v12;
LABEL_11:
  if (v11)
  {
  }

  re::Event<re::SyncViewManager,re::SyncView *>::raise(this + 24, this);
}

void re::Event<re::SyncViewManager,re::SyncView *>::raise(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    re::Event<re::SyncViewManager,re::SyncView *>::doDeferredActions(a1);
  }
}

void re::SyncViewManager::removeView(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a2)
  {
    v3 = (a2 + 8);
  }

  re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::remove(a1 + 112, &v4);
  if (v4)
  {
  }
}

uint64_t re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::remove(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31)) % v2;
  v7 = *(a1 + 8);
  v8 = *(v7 + 4 * v6);
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  if (*(v10 + 24 * v8 + 16) != v4)
  {
    while (1)
    {
      v11 = v8;
      v12 = *(v10 + 24 * v8 + 8);
      v8 = v12 & 0x7FFFFFFF;
      if ((v12 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v10 + 24 * v8 + 16) == v4)
      {
        *(v10 + 24 * v11 + 8) = *(v10 + 24 * v11 + 8) & 0x80000000 | *(v10 + 24 * v8 + 8) & 0x7FFFFFFF;
        goto LABEL_10;
      }
    }
  }

  *(v7 + 4 * v6) = *(v10 + 24 * v8 + 8) & 0x7FFFFFFF;
LABEL_10:
  v13 = *(a1 + 16) + 24 * v8;
  v14 = *(v13 + 8);
  if (v14 < 0)
  {
    *(v13 + 8) = v14 & 0x7FFFFFFF;
    v15 = *(v13 + 16);
    if (v15)
    {

      *(v13 + 16) = 0;
    }
  }

  v16 = *(a1 + 16) + 24 * v8;
  v17 = *(a1 + 40);
  *(v16 + 8) = *(v16 + 8) & 0x80000000 | *(a1 + 36);
  --*(a1 + 28);
  *(a1 + 36) = v8;
  *(a1 + 40) = v17 + 1;
  return 1;
}

uint64_t re::SyncViewManager::forEachView(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 144);
  if (v4)
  {
    v5 = 0;
    v6 = (*(result + 128) + 8);
    while (1)
    {
      v7 = *v6;
      v6 += 6;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(result + 144);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    v9 = *(*(v3 + 128) + 24 * v5 + 16);
    result = (*(**(a2 + 32) + 16))(*(a2 + 32), &v9);
    v8 = *(v3 + 144);
    if (v8 <= v5 + 1)
    {
      v8 = v5 + 1;
    }

    while (v8 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(v3 + 128) + 24 * v5 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v5) = v8;
LABEL_14:
    ;
  }

  return result;
}

uint64_t re::SyncViewManager::addViewer(uint64_t this, unint64_t a2)
{
  v2 = this;
  v10 = a2;
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *(this + 184);
  if (v5)
  {
    v7 = v4 % v5;
    v8 = *(*(this + 168) + 4 * (v4 % v5));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(this + 176);
      if (*(v9 + 24 * v8 + 16) == a2)
      {
        return this;
      }

      while (1)
      {
        LODWORD(v8) = *(v9 + 24 * v8 + 8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v9 + 24 * v8 + 16) == a2)
        {
          return this;
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  this = re::HashSetBase<re::SyncViewer *,re::SyncViewer *,re::internal::ValueAsKey<re::SyncViewer *>,re::Hash<re::SyncViewer *>,re::EqualTo<re::SyncViewer *>,true,false>::addAsCopy(this + 160, v7, v4, &v10, &v10);
  ++*(v2 + 200);
  return this;
}

uint64_t re::SyncViewManager::removeViewer(re::SyncViewManager *this, re::SyncViewer *a2, int a3)
{
  v16 = a2;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = 0;
    v8 = (*(this + 16) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 6;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(this + 36);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v6)
  {
    v10 = *(*(this + 16) + 24 * v7 + 16);
    v11 = *(v10 + 13);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = *(v10 + 15);
      while (*v13 != a2)
      {
        ++v13;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v13 = *(v10 + 15);
    }

    if (v13 != (*(v10 + 15) + 8 * v11))
    {
      if (a3)
      {
        re::SyncView::removeViewer(v10, a2);
      }

      else
      {
        re::SyncView::removeFromViewersWithoutNotifying(v10, a2);
      }
    }

LABEL_18:
    v14 = *(this + 36);
    if (v14 <= v7 + 1)
    {
      v14 = v7 + 1;
    }

    while (v14 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(this + 16) + 24 * v7 + 8) & 0x80000000) != 0)
      {
        goto LABEL_24;
      }
    }

    LODWORD(v7) = v14;
LABEL_24:
    ;
  }

  return re::HashSetBase<re::SyncViewer *,re::SyncViewer *,re::internal::ValueAsKey<re::SyncViewer *>,re::Hash<re::SyncViewer *>,re::EqualTo<re::SyncViewer *>,true,false>::remove(this + 160, &v16);
}

uint64_t re::HashSetBase<re::SyncViewer *,re::SyncViewer *,re::internal::ValueAsKey<re::SyncViewer *>,re::Hash<re::SyncViewer *>,re::EqualTo<re::SyncViewer *>,true,false>::remove(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) % v2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (*(v9 + 24 * v7 + 16) != v3)
  {
    while (1)
    {
      v10 = v7;
      LODWORD(v7) = *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v9 + 24 * v7 + 16) == v3)
      {
        *(v9 + 24 * v10 + 8) = *(v9 + 24 * v10 + 8) & 0x80000000 | *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
        goto LABEL_9;
      }
    }
  }

  *(v6 + 4 * v5) = *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
LABEL_9:
  v11 = *(a1 + 16);
  v12 = v11 + 24 * v7;
  v15 = *(v12 + 8);
  v14 = (v12 + 8);
  v13 = v15;
  if (v15 < 0)
  {
    *v14 = v13 & 0x7FFFFFFF;
    v11 = *(a1 + 16);
    v13 = *(v11 + 24 * v7 + 8);
  }

  v16 = *(a1 + 40);
  *(v11 + 24 * v7 + 8) = *(a1 + 36) | v13 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v7;
  *(a1 + 40) = v16 + 1;
  return 1;
}

uint64_t re::SyncViewManager::forEachViewer(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 192);
  if (v4)
  {
    v5 = 0;
    v6 = (*(result + 176) + 8);
    while (1)
    {
      v7 = *v6;
      v6 += 6;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(result + 192);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    v9 = *(*(v3 + 176) + 24 * v5 + 16);
    result = (*(**(a2 + 32) + 16))(*(a2 + 32), &v9);
    v8 = *(v3 + 192);
    if (v8 <= v5 + 1)
    {
      v8 = v5 + 1;
    }

    while (v8 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(v3 + 176) + 24 * v5 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v5) = v8;
LABEL_14:
    ;
  }

  return result;
}

double re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2] + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          v8 = *(v6 + 16);
          if (v8)
          {

            *(v6 + 16) = 0;
            v3 = *(a1 + 8);
          }
        }

        v4 += 24;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void *re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 32 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      v10 = *(a1 + 28);
      v11 = 2 * v10;
      v12 = *a1;
      if (*a1)
      {
        if (v11)
        {
          v13 = v8 == v11;
        }

        else
        {
          v13 = 1;
        }

        if (!v13 && (v10 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::init(v26, v12, v11);
          v14 = *v26;
          *v26 = *a1;
          *a1 = v14;
          v15 = *&v26[16];
          v16 = *(a1 + 16);
          *&v26[16] = v16;
          *(a1 + 16) = v15;
          v18 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v17 = *&v26[32];
          *(a1 + 24) = v18;
          v19 = v17;
          if (v17)
          {
            v20 = v16 + 16;
            do
            {
              if ((*(v20 - 8) & 0x80000000) != 0)
              {
                re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::addAsMove(a1, *(v20 - 16) % *(a1 + 24), *(v20 - 16), v20, v20);
              }

              v20 += 24;
              --v19;
            }

            while (v19);
          }

          re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v11)
        {
          v23 = v11;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v8 + 8);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v8 + 8);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  *(v21 + 24 * v8 + 8) = v22 | 0x80000000;
  v24 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(v24 + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *a5 = 0;
  *(v24 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void *re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(void *result, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = result[2];
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = result;
  v4 = v2 - 1;
  if (v2 - 1 > a2)
  {
    v5 = result[4];
    result = (v5 + 32 * a2);
    v6 = (v5 + 32 * v2);
    if (v6 != (result + 4))
    {
      result = memmove(result, result + 4, v6 - (result + 4));
      v4 = v3[2] - 1;
    }
  }

  v3[2] = v4;
  ++*(v3 + 6);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void re::Event<re::SyncViewManager,re::SyncView *>::doDeferredActions(_anonymous_namespace_ *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 7);
  if (v1)
  {
    v3 = 0;
    for (i = 0; i != v1; ++i)
    {
      v5 = *(a1 + 7);
      if (v5 <= i)
      {
        memset(v20, 0, sizeof(v20));
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        v12 = 136315906;
        v13 = "operator[]";
        v14 = 1024;
        v15 = 789;
        v16 = 2048;
        v17 = i;
        v18 = 2048;
        v19 = v5;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v6 = *(a1 + 9) + v3;
      v7 = *(v6 + 32);
      v8 = *(v6 + 16);
      v10[0] = *v6;
      v10[1] = v8;
      v11 = v7;
      if (LOBYTE(v10[0]) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v10 + 1, v20);
        if ((v20[0] & 1) == 0)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(a1, v10 + 8);
        }
      }

      else
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStable(a1, v10 + 1);
      }

      v3 += 40;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

__n128 re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  result = *a2;
  v7 = *(a2 + 16);
  *v5 = *a2;
  v5[1] = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStable(void *a1, void *a2)
{
  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, a2, v5);
  v3 = v5[0];
  if (v5[0] == 1)
  {
    re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, v6);
  }

  return v3;
}

uint64_t re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 32 * v4;
    v6 = *(result + 32);
    while (*v6 != *a2 || v6[1] != a2[1] || v6[2] != a2[2])
    {
      v6 += 4;
      v5 -= 32;
      if (!v5)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v6 = *(result + 32);
  }

  if (v6 == (v3 + 32 * v4))
  {
LABEL_13:
    v8 = 0;
  }

  else
  {
    *(a3 + 8) = (v6 - v3) >> 5;
    v8 = 1;
  }

  *a3 = v8;
  return result;
}

void *re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashSetBase<re::SyncViewer *,re::SyncViewer *,re::internal::ValueAsKey<re::SyncViewer *>,re::Hash<re::SyncViewer *>,re::EqualTo<re::SyncViewer *>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::SyncViewer *,re::SyncViewer *,re::internal::ValueAsKey<re::SyncViewer *>,re::Hash<re::SyncViewer *>,re::EqualTo<re::SyncViewer *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<re::SyncViewer *,re::SyncViewer *,re::internal::ValueAsKey<re::SyncViewer *>,re::Hash<re::SyncViewer *>,re::EqualTo<re::SyncViewer *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::init(v22, v4, a2);
      v5 = *a1;
      *a1 = *v22;
      v6 = *(a1 + 16);
      v7 = *&v22[8];
      *v22 = v5;
      *&v22[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 24);
      v8 = *&v22[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = (v6 + 16);
        do
        {
          if ((*(v13 - 1) & 0x80000000) != 0)
          {
            v14 = *(v13 - 2);
            v15 = *(a1 + 24);
            v16 = v14 % v15;
            v17 = *(a1 + 36);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 32);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::SyncViewer *,re::SyncViewer *,re::internal::ValueAsKey<re::SyncViewer *>,re::Hash<re::SyncViewer *>,re::EqualTo<re::SyncViewer *>,true,false>::setCapacity(a1, (2 * v11));
                v16 = v14 % *(a1 + 24);
                v18 = *(a1 + 32);
                v12 = *(a1 + 8);
              }

              *(a1 + 32) = v18 + 1;
              v19 = *(a1 + 16);
              v20 = *(v19 + 24 * v17 + 8);
            }

            else
            {
              v19 = *(a1 + 16);
              v20 = *(v19 + 24 * v17 + 8);
              *(a1 + 36) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
            *(*(a1 + 16) + 24 * v17 + 8) = *(*(a1 + 16) + 24 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(*(a1 + 16) + 24 * v17) = v14;
            *(*(a1 + 16) + 24 * v17 + 16) = *v13;
            v12 = *(a1 + 8);
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 28) + 1;
            *(a1 + 28) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = 3;
    }
  }
}

uint64_t re::UnicastStream::UnicastStream(uint64_t a1, id *a2, uint64_t a3, int a4, char a5, uint64_t a6, const void *a7)
{
  to = 0;
  objc_copyWeak(&to, a2);
  re::TransportStream::TransportStream(a1, &to, a3, a6);
  objc_destroyWeak(&to);
  to = 0;
  *a1 = &unk_2873F4000;
  *(a1 + 24) = &unk_2873F4058;
  *(a1 + 56) = a4;
  *(a1 + 60) = a5;
  re::PacketQueue::PacketQueue((a1 + 64));
  *(a1 + 104) = _Block_copy(a7);
  return a1;
}

void re::UnicastStream::~UnicastStream(re::UnicastStream *this)
{
  *this = &unk_2873F4000;
  *(this + 3) = &unk_2873F4058;
  v2 = *(this + 4);
  if (v2)
  {
    v3 = re::PacketQueue::dequeue((this + 64));
    if (v3)
    {
      v4 = v3;
      do
      {
        re::PacketPool::free(*(v2 + 376), v4);
        v4 = re::PacketQueue::dequeue((this + 64));
      }

      while (v4);
    }
  }

  _Block_release(*(this + 13));
  *(this + 13) = 0;
  re::PacketQueue::~PacketQueue((this + 64));

  re::TransportStream::~TransportStream(this);
}

{
  re::UnicastStream::~UnicastStream(this);

  JUMPOUT(0x266708EC0);
}

void non-virtual thunk tore::UnicastStream::~UnicastStream(re::UnicastStream *this)
{
  re::UnicastStream::~UnicastStream((this - 24));
}

{
  re::UnicastStream::~UnicastStream((this - 24));

  JUMPOUT(0x266708EC0);
}

char *re::UnicastStream::createPacket(re::UnicastStream *this, int a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  return re::Transport::createMultiplexedPacket(v3, *(this + 6), a2);
}

char *non-virtual thunk tore::UnicastStream::createPacket(re::UnicastStream *this, int a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  return re::Transport::createMultiplexedPacket(v3, *(this + 3), a2);
}

void re::UnicastStream::destroyPacket(re::UnicastStream *this, re::Packet *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  re::PacketPool::free(*(v3 + 384), a2);
}

void non-virtual thunk tore::UnicastStream::destroyPacket(re::UnicastStream *this, re::Packet *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  re::PacketPool::free(*(v3 + 384), a2);
}

uint64_t re::UnicastStream::send(re::UnicastStream *this, re::Packet *a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  if (v3)
  {
    v5 = (v3 - 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 14);
  v7 = *(this + 60);
  re::Packet::offsetTo(a2, 3);

  return re::Transport::send(v5, v4, a2, 1, v6, v7, 8);
}

uint64_t re::SharedAppUnicast::SharedAppUnicast(uint64_t a1, id *a2, re *a3, uint64_t a4, uint64_t a5, uint64_t a6, id *a7, char a8, char a9)
{
  v35 = a4;
  *a1 = 0;
  objc_copyWeak(a1, a2);
  *(a1 + 8) = 0;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 32) = 0;
  objc_copyWeak((a1 + 32), a7);
  *(a1 + 40) = a8;
  *(a1 + 41) = a9;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0x7FFFFFFFLL;
  *(a1 + 96) = 0x8000000000000000;
  v33 = 0;
  v32 = 1;
  v31 = 1;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 0x40000000;
  v29[2] = ___ZN2re16SharedAppUnicastC2ENS_10ArcWeakPtrINS_11SyncSessionEEENS1_INS_9TransportEEEyyyNS1_INS_15SyncObjectStoreEEEbb_block_invoke;
  v29[3] = &__block_descriptor_tmp;
  v29[4] = a1;
  v30 = v29;
  re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},void({block_pointer})(unsigned long long)>(a3, &v35, &v33, &v32, &v31, &v30, &v34);
  v16 = v34;
  v17 = v35;
  if (*a3)
  {
    v18 = (*a3 - 8);
  }

  else
  {
    v18 = 0;
  }

  WeakRetained = objc_loadWeakRetained(a2);
  if (WeakRetained)
  {
    v20 = WeakRetained - 8;
  }

  else
  {
    v20 = 0;
  }

  (*(*v20 + 32))(&v34, v20);
  v21 = *(v34 + 820);
  v22 = re::Transport::registerStream(v18, v16, 1uLL, v17);
  if (v34)
  {

    v34 = 0;
  }

  if (v22)
  {
    v23 = *(a1 + 8);
    *(a1 + 8) = v16;
    v16 = v23;
  }

  v34 = 0;
  if (*a3)
  {
    v24 = *a3 - 8;
  }

  else
  {
    v24 = 0;
  }

  if (re::Transport::receive(v24, v35, 1u, &v34))
  {
    do
    {
      if (*a3)
      {
        v25 = (*a3 - 8);
      }

      else
      {
        v25 = 0;
      }

      if (re::Transport::dispatchPacketToStream(v25, v34, v35))
      {
        if (*a3)
        {
          v26 = *a3 - 8;
        }

        else
        {
          v26 = 0;
        }

        re::PacketPool::free(*(v26 + 384), v34);
      }

      if (*a3)
      {
        v27 = *a3 - 8;
      }

      else
      {
        v27 = 0;
      }
    }

    while (re::Transport::receive(v27, v35, 1u, &v34));
  }

  if (v16)
  {
  }

  return a1;
}

void re::SharedAppUnicast::send(id *location, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v110 = *MEMORY[0x277D85DE8];
  if (location[1])
  {
    re::SyncCommitDump::log(*a2, *(a2 + 8), "SendCommit");
    v104 = 0;
    v101[1] = 0;
    v102 = 0;
    v101[0] = 0;
    v103 = 0;
    v9 = *a2;
    v10 = *(a2 + 8);
    if (*(location + 42) == 1)
    {
      if (v10)
      {
        v11 = (v9 + 72 * v10);
        v12 = 1;
        do
        {
          v13 = *(v9 + 6);
          if (v13)
          {
            v14 = 24 * v13;
            v15 = (*(v9 + 8) + 16);
            do
            {
              v16 = (v15 - 16);
              if ((*v15 & 2) != 0)
              {
                re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addOrReplace((location + 6), v16, v15);
              }

              else
              {
                v17 = re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add((location + 6), v16, v15);
                if ((*v17 & 2) != 0)
                {
                  *v17 = *v15;
                }
              }

              v15 += 24;
              v14 -= 24;
            }

            while (v14);
            v12 = 0;
          }

          v9 = (v9 + 72);
        }

        while (v9 != v11);
      }

      else
      {
        v12 = 1;
      }

      if (std::chrono::steady_clock::now().__d_.__rep_ >= location[12] && (v12 & 1) == 0)
      {
        v26.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        location[12] = (v26.__d_.__rep_ + 5000000000);
        LODWORD(v90) = 0;
        *buf = 0u;
        v89 = 0u;
        *(&v90 + 4) = 0x7FFFFFFFLL;
        v27 = *(a2 + 8);
        if (v27)
        {
          v28 = *a2;
          v86 = *a2 + 72 * v27;
          while (1)
          {
            v87 = v28;
            v29 = *(v28 + 6);
            if (v29)
            {
              break;
            }

LABEL_43:
            v28 = (v87 + 72);
            if ((v87 + 72) == v86)
            {
              goto LABEL_44;
            }
          }

          v30 = *(v28 + 8);
          v31 = v30 + 24 * v29;
          while (1)
          {
            v32 = *(*(*v30 + 88) + 16);
            v33 = re::Hash<re::DynamicString>::operator()(&v97, v32 + 40);
            v34 = v33;
            if (DWORD2(v89))
            {
              v35 = v33 % DWORD2(v89);
              v36 = *(*&buf[8] + 4 * v35);
              if (v36 != 0x7FFFFFFF)
              {
                v37 = v89;
                do
                {
                  v26.__d_.__rep_ = re::DynamicString::operator==(v37 + 48 * v36 + 16, v32 + 40);
                  if (v26.__d_.__rep_)
                  {
                    goto LABEL_42;
                  }

                  v36 = *(v37 + 48 * v36 + 8) & 0x7FFFFFFF;
                }

                while (v36 != 0x7FFFFFFF);
              }
            }

            else
            {
              LODWORD(v35) = 0;
            }

            v26.__d_.__rep_ = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsCopy(buf, v35, v34, v32 + 40, (v32 + 40));
            ++DWORD2(v90);
LABEL_42:
            v30 += 24;
            if (v30 == v31)
            {
              goto LABEL_43;
            }
          }
        }

LABEL_44:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        re::DynamicString::setCapacity(&v97, 0);
        v38 = v90;
        if (v90)
        {
          v39 = 0;
          v40 = (v89 + 8);
          while (1)
          {
            v41 = *v40;
            v40 += 12;
            if (v41 < 0)
            {
              break;
            }

            if (v90 == ++v39)
            {
              LODWORD(v39) = v90;
              break;
            }
          }
        }

        else
        {
          LODWORD(v39) = 0;
        }

        if (v39 != v90)
        {
          v62 = v89;
          do
          {
            v63 = v62 + 48 * v39;
            v64 = *(v63 + 24);
            v65 = *(v63 + 32);
            v66 = (v63 + 25);
            v67 = (v64 & 1) == 0;
            if (v64)
            {
              v68 = v65;
            }

            else
            {
              v68 = v66;
            }

            v69 = v64 >> 1;
            v70 = v64 >> 1;
            if (v67)
            {
              v71 = v70;
            }

            else
            {
              v71 = v69;
            }

            re::DynamicString::append(&v97, v68, v71);
            re::DynamicString::append(&v97, " ", 1uLL);
            v62 = v89;
            if (v90 <= v39 + 1)
            {
              v72 = v39 + 1;
            }

            else
            {
              v72 = v90;
            }

            while (v72 - 1 != v39)
            {
              LODWORD(v39) = v39 + 1;
              if ((*(v89 + 48 * v39 + 8) & 0x80000000) != 0)
              {
                goto LABEL_105;
              }
            }

            LODWORD(v39) = v72;
LABEL_105:
            ;
          }

          while (v39 != v38);
        }

        WeakRetained = objc_loadWeakRetained(location);
        if (WeakRetained)
        {
          v74 = WeakRetained - 8;
        }

        else
        {
          v74 = 0;
        }

        v75 = v74 + 8;
        (*(*v74 + 32))(v105);
        v76 = *(*v105 + 3272);

        *v105 = 0;
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          v77 = objc_loadWeakRetained(location);
          if (v77)
          {
            v78 = v77 - 8;
          }

          else
          {
            v78 = 0;
          }

          (*(*v78 + 32))(&v96, v78);
          v79 = re::Session::peerID(v96);
          v80 = location[1];
          v81 = v80[4];
          if (v81)
          {
            v82 = (v81 - 8);
          }

          else
          {
            v82 = 0;
          }

          re::Transport::connectionAddress(v82, v80[5], &v93);
          if (v94)
          {
            v83 = *&v95[7];
          }

          else
          {
            v83 = v95;
          }

          if (v98)
          {
            v84 = v99;
          }

          else
          {
            v84 = &v98 + 1;
          }

          *v105 = 134218498;
          *&v105[4] = v79;
          v106 = 2080;
          v107 = v83;
          v108 = 2080;
          v109 = v84;
          _os_log_impl(&dword_26168F000, v76, OS_LOG_TYPE_INFO, "Sending sync data on paused connection to %llx ('%s'): %s", v105, 0x20u);
          if (v93 && (v94 & 1) != 0)
          {
            (*(*v93 + 40))();
          }

          if (v96)
          {

            v96 = 0;
          }
        }

        if (v97 && (v98 & 1) != 0)
        {
          (*(*v97 + 40))();
        }

        re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(buf);
      }
    }

    else
    {
      if (*(location + 19))
      {
        v22 = *(a4 + 96);
        if (v22)
        {
          v23 = 0;
          v24 = *(a4 + 80);
          while (1)
          {
            v25 = *v24;
            v24 += 8;
            if (v25 < 0)
            {
              break;
            }

            if (v22 == ++v23)
            {
              LODWORD(v23) = *(a4 + 96);
              break;
            }
          }
        }

        else
        {
          LODWORD(v23) = 0;
        }

LABEL_56:
        while (v23 != v22)
        {
          re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove((location + 6), (*(a4 + 80) + 32 * v23 + 8));
          v42 = *(a4 + 96);
          if (v42 <= v23 + 1)
          {
            v42 = v23 + 1;
          }

          while (v42 - 1 != v23)
          {
            LODWORD(v23) = v23 + 1;
            if ((*(*(a4 + 80) + 32 * v23) & 0x80000000) != 0)
            {
              goto LABEL_56;
            }
          }

          LODWORD(v23) = v42;
        }

        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        *buf = 0u;
        v89 = 0u;
        buf[0] = 1;
        v43 = *(location + 20);
        if (v43)
        {
          v44 = 0;
          v45 = location[8];
          while (1)
          {
            v46 = *v45;
            v45 += 8;
            if (v46 < 0)
            {
              break;
            }

            if (v43 == ++v44)
            {
              LODWORD(v44) = *(location + 20);
              break;
            }
          }
        }

        else
        {
          LODWORD(v44) = 0;
        }

LABEL_64:
        while (v44 != v43)
        {
          v47 = location[8] + 32 * v44;
          v50 = *(v47 + 1);
          v49 = v47 + 8;
          v48 = v50;
          v97 = v50;
          if (v50)
          {
            v51 = v48 + 1;
            v52 = *v49;
          }

          else
          {
            v52 = 0;
          }

          v98 = re::SyncObject::latestStateHandle(v52);
          LOBYTE(v99) = v49[8];
          re::DynamicArray<re::internal::SyncSnapshotEntry>::add(&v90, &v97);
          if (v97)
          {
          }

          v53 = *(location + 20);
          if (v53 <= v44 + 1)
          {
            v53 = v44 + 1;
          }

          while (v53 - 1 != v44)
          {
            LODWORD(v44) = v44 + 1;
            if ((*(location[8] + 8 * v44) & 0x80000000) != 0)
            {
              goto LABEL_64;
            }
          }

          LODWORD(v44) = v53;
        }

        re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::clear((location + 6));
        re::DynamicArray<re::SyncCommit>::add(v101, buf);
        v54 = *(a2 + 8);
        if (v54)
        {
          v55 = *a2;
          v56 = 72 * v54;
          do
          {
            re::DynamicArray<re::SyncCommit>::add(v101, v55);
            v55 = (v55 + 72);
            v56 -= 72;
          }

          while (v56);
        }

        v9 = v104;
        v10 = v102;
        re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v90);
      }

      v57 = location[1] + 24;
      LODWORD(v89) = 0;
      BYTE4(v89) = 0;
      *(&v89 + 1) = 0;
      *&v90 = 0;
      *buf = &unk_2873F4D10;
      *&buf[8] = 0;
      *(&v90 + 1) = v57;
      *&v91 = 0;
      LOBYTE(v97) = 0;
      if (v10)
      {
        v58 = 72 * v10;
        do
        {
          re::SharedAppSyncPacker::packCommit(&v97, v9, buf, a5, 0);
          v9 = (v9 + 72);
          v58 -= 72;
        }

        while (v58);
        v59 = DWORD2(v89);
        v60 = v91;
        if (HIDWORD(v89))
        {
          v59 = DWORD2(v89) + 1;
        }

        if (v59)
        {
          v61 = location[1];
          *(v91 + 24) = v59;
          *(&v89 + 1) = 0;
          *&v90 = 0;
          *&buf[8] = 0;
          LODWORD(v89) = 0;
          *&v91 = 0;
          (*(*v61 + 48))(v61);
          v60 = v91;
        }

        if (v60)
        {
          (*(**(&v90 + 1) + 24))(*(&v90 + 1));
        }
      }
    }

    re::DynamicArray<re::SyncCommit>::deinit(v101);
  }

  else
  {
    v18 = objc_loadWeakRetained(location);
    if (v18)
    {
      v19 = v18 - 8;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19 + 8;
    (*(*v19 + 32))(buf);
    v21 = *(*buf + 3272);

    *buf = 0;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v21, OS_LOG_TYPE_ERROR, "Transport is destroyed but trying to send.", buf, 2u);
    }
  }

  v85 = *MEMORY[0x277D85DE8];
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    return re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::internal::SyncSnapshotEvents const&>(a1, &v10, a2, a3);
  }

  ++*(a1 + 40);
  v9 = *(a1 + 16) + 32 * v7;
  *(v9 + 16) = *a3;
  return v9 + 16;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::internal::SyncSnapshotEvents const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 32 * HIDWORD(v9) + 16;
  }
}

void re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_261710510, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 8);
          if (v9)
          {

            *(v8 + 8) = 0;
            v3 = *(a1 + 32);
          }
        }

        v4 += 32;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v10 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v10;
  }
}

BOOL re::SharedAppUnicast::receive(id *location, uint64_t a2, uint64_t a3)
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = location[1];
  if (v4)
  {
    if (*(location + 43) == 1 && (*(location + 43) = 0, (v6 = (*(*v4 + 56))(v4)) != 0))
    {
      v7 = v6;
      v51 = a2;
      do
      {
        v8 = *(v7 + 16);
        v50 = v7;
        v9 = *(v7 + 24);
        v68 = v8;
        v69 = v9;
        v70 = 0;
        v71 = 0;
        v72 = 0;
        while (v69 != v71)
        {
          WeakRetained = objc_loadWeakRetained(location + 4);
          v11 = WeakRetained - 8;
          if (!WeakRetained)
          {
            v11 = 0;
          }

          v12 = *(location + 20);
          *v61 = v11;
          v62 = *(location + 1);
          v63 = 0u;
          v64 = 0u;
          v65 = 0;
          v66 = 0x7FFFFFFFLL;
          v67 = v12;
          if (WeakRetained)
          {
          }

          v55[0] = 0;
          v60 = 0;
          memset(v58, 0, sizeof(v58));
          v59 = 0;
          v56 = 0;
          v57[0] = 0;
          *(v57 + 5) = 0;
          v53 = re::SharedAppSyncUnpacker::unpackCommit(v61, &v68, v55, a2);
          if (v53)
          {
            v13 = v65;
            if (v65)
            {
              v14 = 0;
              v15 = v64;
              while (1)
              {
                v16 = *v15;
                v15 += 10;
                if (v16 < 0)
                {
                  break;
                }

                if (v65 == ++v14)
                {
                  LODWORD(v14) = v65;
                  break;
                }
              }
            }

            else
            {
              LODWORD(v14) = 0;
            }

            if (v14 != v65)
            {
              v24 = v64;
              do
              {
                v25 = v24 + 40 * v14;
                v26 = *(v25 + 16);
                v27 = *(v25 + 24);
                v28 = objc_loadWeakRetained(location + 4);
                v29 = v28;
                if (v28)
                {
                  v30 = (v28 - 8);
                }

                else
                {
                  v30 = 0;
                }

                re::SyncObjectStore::findObject(v30, v26, v27, v73);
                if (v29)
                {
                }

                v31 = *v73;
                if (*v73)
                {
                  re::SyncObject::bindWithParent(*(v25 + 8), *v73);
                }

                else
                {
                  v33 = objc_loadWeakRetained(location + 4);
                  if (v33)
                  {
                    v34 = v33;
                    v35 = objc_loadWeakRetained(location + 4);
                    v36 = v35 - 8;
                    if (!v35)
                    {
                      v36 = 0;
                    }

                    v37 = *(v25 + 8);
                    *buf = *(v37 + 24);
                    v54 = *(*(*(v37 + 88) + 16) + 32);
                    v38 = re::SyncObjectTombstoneInfo::contains((v36 + 120), buf, &v54);
                    if (v35)
                    {
                    }

                    if (!v38)
                    {
                      v40 = *re::networkLogObjects(v39);
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                      {
                        v41 = *(*(v25 + 8) + 24);
                        *buf = 134218240;
                        *&buf[4] = v41;
                        v77 = 2048;
                        *v78 = v27;
                        _os_log_error_impl(&dword_26168F000, v40, OS_LOG_TYPE_ERROR, "BindFailure: Object %llu with parent %llu", buf, 0x16u);
                      }
                    }
                  }
                }

                if (v65 <= v14 + 1)
                {
                  v32 = v14 + 1;
                }

                else
                {
                  v32 = v65;
                }

                v24 = v64;
                while (v32 - 1 != v14)
                {
                  LODWORD(v14) = v14 + 1;
                  if ((*(v64 + 40 * v14) & 0x80000000) != 0)
                  {
                    goto LABEL_48;
                  }
                }

                LODWORD(v14) = v32;
LABEL_48:
                ;
              }

              while (v14 != v13);
            }

            re::SyncCommitDump::log(v55, 1, "RecvCommit");
            a2 = v51;
            (*(a3 + 16))(a3, v55, v51);
          }

          else
          {
            v17 = location[1];
            v18 = v17[4];
            if (v18)
            {
              v19 = (v18 - 8);
            }

            else
            {
              v19 = 0;
            }

            re::Transport::connectionAddress(v19, v17[5], buf);
            v20 = objc_loadWeakRetained(location);
            if (v20)
            {
              v21 = v20 - 8;
            }

            else
            {
              v21 = 0;
            }

            v22 = v21 + 8;
            (*(*v21 + 32))(v73);
            v23 = *(*v73 + 3272);

            *v73 = 0;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v42 = location[2];
              v43 = &buf[9];
              if (buf[8])
              {
                v43 = *&v78[2];
              }

              *v73 = 134218242;
              *&v73[4] = v42;
              v74 = 2082;
              v75 = v43;
              _os_log_error_impl(&dword_26168F000, v23, OS_LOG_TYPE_ERROR, "Failed to parse incoming packet. Will drop peer.(peerID=%llu, address=%{public}s)", v73, 0x16u);
            }

            (*(*location[1] + 40))(location[1], v50);
            if (*buf && (buf[8] & 1) != 0)
            {
              (*(**buf + 40))();
            }
          }

          re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v58);
          re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(&v63);
          if (!v53)
          {
            goto LABEL_69;
          }
        }

        (*(*location[1] + 40))(location[1], v50);
        v7 = (*(*location[1] + 56))(location[1]);
        result = 1;
      }

      while (v7);
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    v45 = objc_loadWeakRetained(location);
    if (v45)
    {
      v46 = v45 - 8;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46 + 8;
    (*(*v46 + 32))(v61);
    v48 = *(*v61 + 3272);

    *v61 = 0;
    result = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v61 = 0;
      _os_log_error_impl(&dword_26168F000, v48, OS_LOG_TYPE_ERROR, "Transport is destroyed but trying to receive.", v61, 2u);
LABEL_69:
      result = 0;
    }
  }

  v49 = *MEMORY[0x277D85DE8];
  return result;
}

double re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 8;
      do
      {
        v6 = a1[2];
        v7 = *(v6 + v5);
        if (v7 < 0)
        {
          *(v6 + v5) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v5 + 8));
          v3 = *(a1 + 8);
        }

        ++v4;
        v5 += 48;
      }

      while (v4 < v3);
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

double re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 40 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 8);
    if (v3)
    {

      *(v2 + 8) = 0;
    }
  }
}

void re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},void({block_pointer})(unsigned long long)>(re *a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, char *a4@<X3>, unsigned int *a5@<X4>, const void **a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = re::globalAllocators(a1);
  v15 = (*(*v14[2] + 32))(v14[2], 112, 8);
  to = 0;
  objc_copyWeak(&to, a1);
  re::UnicastStream::UnicastStream(v15, &to, *a2, *a3, *a4, *a5, *a6);
  *a7 = v15;
  objc_destroyWeak(&to);
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::internal::SyncSnapshotEvents const&>(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v7 = re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 8) = *a3;
  if (v8)
  {
    v9 = (v8 + 8);
  }

  *(v7 + 16) = *a4;
  ++*(a1 + 40);
  return v7 + 16;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (*(v7 + 32 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::move(a1, v9);
      re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        *(result + 8) = *(v8 + 8);
        *(v8 + 8) = 0;
        *(result + 16) = *(v8 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

double re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 8);
          if (v9)
          {

            *(v8 + 8) = 0;
            v3 = *(a1 + 8);
          }
        }

        v4 += 32;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, int a4, re::DynamicString *a5)
{
  v9 = *(a1 + 36);
  if (v9 == 0x7FFFFFFF)
  {
    v9 = *(a1 + 32);
    v10 = v9;
    if (v9 == *(a1 + 24))
    {
      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v10 = *(a1 + 32);
    }

    *(a1 + 32) = v10 + 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 48 * v9 + 8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 48 * v9 + 8);
    *(a1 + 36) = v12 & 0x7FFFFFFF;
  }

  *(v11 + 48 * v9 + 8) = v12 | 0x80000000;
  *(*(a1 + 16) + 48 * v9 + 8) = *(*(a1 + 16) + 48 * v9 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 48 * v9) = a3;
  re::DynamicString::DynamicString((*(a1 + 16) + 48 * v9 + 16), a5);
  *(*(a1 + 8) + 4 * a2) = v9;
  ++*(a1 + 28);
  return v9;
}

void re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsMove(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 48;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

void re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 48 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 48 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 48 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 48 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 48 * v8 + 8) = *(*(a1 + 16) + 48 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 48 * v8) = a3;
  v12 = *(a1 + 16) + 48 * v8;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 40) = a5[3];
  v13 = a5[1];
  *(v12 + 16) = *a5;
  *a5 = 0;
  v14 = a5[2];
  a5[3] = 0;
  v16 = *(v12 + 24);
  v15 = *(v12 + 32);
  *(v12 + 24) = v13;
  *(v12 + 32) = v14;
  a5[1] = v16;
  a5[2] = v15;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

BOOL re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::removeInternal(a1, v5);
}

BOOL re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 32 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      LODWORD(v9) = a2[3];
    }

    else
    {
      *(v6 + 32 * v5) = *(v6 + 32 * v5) & 0x80000000 | v7;
      v8 = v2;
      LODWORD(v9) = v2;
    }

    v10 = (v6 + 32 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      v11 &= ~0x80000000;
      *v10 = v11;
      v12 = *(v10 + 1);
      if (v12)
      {

        *(v10 + 1) = 0;
        v9 = a2[3];
        v6 = *(a1 + 16);
        v11 = *(v6 + 32 * v9);
      }
    }

    v13 = *(a1 + 40);
    *(v6 + 32 * v9) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::UnreliableAckedUnicastStream::UnreliableAckedUnicastStream(uint64_t a1, id *a2, uint64_t a3, char a4, uint64_t a5, const void *a6)
{
  to = 0;
  objc_copyWeak(&to, a2);
  re::UnicastStream::UnicastStream(a1, &to, a3, 2, a4, a5, a6);
  objc_destroyWeak(&to);
  *a1 = &unk_2873F40A0;
  *(a1 + 24) = &unk_2873F40F8;
  *(a1 + 112) = 0;
  *(a1 + 200) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  return a1;
}

char *re::UnreliableAckedUnicastStream::createPacket(re::UnreliableAckedUnicastStream *this, int a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  MultiplexedPacket = re::Transport::createMultiplexedPacket(v3, *(this + 6), a2 + 36);
  v5 = MultiplexedPacket;
  if (MultiplexedPacket)
  {
    re::Packet::offsetBy(MultiplexedPacket, 36);
  }

  return v5;
}

uint64_t re::Packet::offsetBy(uint64_t this, uint64_t a2)
{
  v4 = *(this + 28);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    goto LABEL_5;
  }

  if ((a2 & 0x80000000) == 0 || (v7 = *(this + 16), v7 - *(this + 8) < -a2))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "capacity() >= offset || (offset < 0 && -offset <= (static_cast<uint8_t*>(m_data) - static_cast<uint8_t*>(m_buffer)))", "offsetBy", 117, v2, v3);
    this = _os_crash();
    __break(1u);
LABEL_5:
    v7 = *(this + 16);
  }

  *(this + 16) = v7 + a2;
  *(this + 24) -= a2;
  *(this + 28) = v6;
  return this;
}

void re::UnreliableAckedUnicastStream::destroyPacket(re::UnreliableAckedUnicastStream *this, re::Packet *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  re::PacketPool::free(*(v3 + 384), a2);
}

void non-virtual thunk tore::UnreliableAckedUnicastStream::destroyPacket(re::UnreliableAckedUnicastStream *this, re::Packet *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  re::PacketPool::free(*(v3 + 384), a2);
}

uint64_t re::UnreliableAckedUnicastStream::send(re::UnreliableAckedUnicastStream *this, re::Packet *a2)
{
  re::Packet::offsetBy(a2, 4294967260);
  re::UnreliableAckedUnicastStream::writeHeader(this, a2);
  re::UnicastStream::send(this, a2);
  ++*(this + 96);
  v4 = *(this + 4);
  if (v4)
  {
    v5 = v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  result = (*(**(v5 + 568) + 32))(*(v5 + 568));
  *(this + 25) = result;
  return result;
}

uint64_t re::UnreliableAckedUnicastStream::writeHeader(re::UnreliableAckedUnicastStream *this, re::Packet *a2)
{
  v2 = *(a2 + 7);
  if (v2 <= 0x23)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "packet.capacity() >= kHeaderSize", "writeHeader", 142);
    _os_crash();
    __break(1u);
    goto LABEL_5;
  }

  v4 = *(a2 + 2);
  v7[0] = &unk_2873F59D0;
  v7[1] = v4;
  v8 = v2;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::BitWriter::writeUInt32Bits(v7, *(this + 96), 0x10u);
  result = re::AckWindow<256ul>::write(this + 56, v7);
  if (v9 == 1)
  {
LABEL_5:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "!writer.isOverflow()", "writeHeader", 148);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::UnreliableAckedUnicastStream::receive(int8x16_t *this)
{
  v76 = *MEMORY[0x277D85DE8];
  v2 = re::PacketQueue::dequeue(&this[4]);
  if (!v2)
  {
    goto LABEL_122;
  }

  v67 = &this[7].i8[8];
  v3 = this + 10;
  while (2)
  {
    *&v74[16] = 0u;
    v75 = 0u;
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    if ((v5 & 0x1FFFFFFE) != 0)
    {
      *v74 = *v4;
      if ((v5 & 0x1FFFFFFE) != 2)
      {
        v7 = 0;
        v6 = v4[1];
        v8 = 4;
        goto LABEL_9;
      }

      v6 = 0;
    }

    else
    {
      v6 = 0;
      *v74 = 0;
    }

    v7 = 1;
    v8 = v5;
LABEL_9:
    v9 = 0;
    v10 = 0;
    v11 = 0;
    *&v74[8] = v6;
    do
    {
      while ((v7 & 1) != 0)
      {
        v12 = 0;
LABEL_22:
        *&v74[8 * v11++ + 16] = v12;
        v7 = 1;
        if (v11 == 4)
        {
          v32 = (*(this->i64[0] + 40))(this, v2);
          v33 = *re::networkLogObjects(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *v74 = 0;
            _os_log_error_impl(&dword_26168F000, v33, OS_LOG_TYPE_ERROR, "Corrupt packet received. Will drop.", v74, 2u);
          }

          goto LABEL_49;
        }
      }

      v13 = v5 - v8;
      if (v9 + 8 * (v5 - v8) < 0x20)
      {
        v12 = 0;
        v9 = 0;
        v8 = v5;
        goto LABEL_22;
      }

      if (v9 > 0x1F)
      {
        v17 = 0;
      }

      else
      {
        v14 = v9;
        do
        {
          v15 = *(v4 + v8++);
          v10 |= v15 << v14;
          v9 = v14 + 8;
          v16 = v14 >= 0x18;
          v14 += 8;
        }

        while (!v16);
        v17 = HIDWORD(v10);
        v13 = v5 - v8;
      }

      v18 = v9 - 32;
      if (8 * v13 + v18 < 0x20)
      {
        v9 = 0;
        v12 = v10;
        v8 = v5;
        v10 = v17;
        goto LABEL_22;
      }

      if (v18 <= 0x1F)
      {
        do
        {
          v19 = *(v4 + v8++);
          v17 |= v19 << v18;
          v20 = v18 + 8;
          v16 = v18 >= 0x18;
          v18 += 8;
        }

        while (!v16);
        LODWORD(v18) = v20;
      }

      v7 = 0;
      v9 = v18 - 32;
      *&v74[8 * v11++ + 16] = v10 | (v17 << 32);
      v10 = HIDWORD(v17);
    }

    while (v11 != 4);
    v21 = re::Packet::offsetBy(v2, 36);
    v70 = v75;
    v69 = *&v74[16];
    v68 = *v74;
    v22 = *v74;
    v23 = this[7].u16[0];
    v24 = v23 - *v74;
    if (v23 >= *v74 && v24 < 0x8000 || v23 < *v74 && *v74 - v23 >= 0x8000)
    {
      v25 = v24 >= 0x8000 ? v24 + 0x10000 : v24;
      if (v25 <= 0xFF)
      {
        v21 = re::Bitset<256>::toWordIndex(v67, v25);
        if ((*&v67[8 * v21] >> v25))
        {
          v26 = *re::networkLogObjects(v21);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = this[2].i64[0];
            if (v27)
            {
              v28 = (v27 - 8);
            }

            else
            {
              v28 = 0;
            }

            re::Transport::connectionAddress(v28, this[2].i64[1], v74);
            v29 = &v74[9];
            if (v74[8])
            {
              v29 = *&v74[16];
            }

            *buf = 134218242;
            *&buf[4] = v68;
            v72 = 2082;
            v73[0] = v29;
            _os_log_impl(&dword_26168F000, v26, OS_LOG_TYPE_DEFAULT, "Received duplicate packet with seqNo=%zu. Ignoring.(address=%{public}s)", buf, 0x16u);
            v30 = *v74;
            if (*v74)
            {
              if (v74[8])
              {
                v31 = *&v74[16];
                goto LABEL_77;
              }
            }
          }

          goto LABEL_121;
        }

        v22 = v68;
        v23 = this[7].u16[0];
        v24 = v23 - v68;
      }
    }

    if (v23 >= v22 && v24 < 0x8000 || v23 < v22 && v22 - v23 >= 0x8000) && (v23 != v22 || (*v67))
    {
      v42 = *re::networkLogObjects(v21);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = this[7].u16[0];
        v44 = this[2].i64[0];
        if (v44)
        {
          v45 = (v44 - 8);
        }

        else
        {
          v45 = 0;
        }

        re::Transport::connectionAddress(v45, this[2].i64[1], buf);
        v46 = &buf[9];
        if (buf[8])
        {
          v46 = *(v73 + 2);
        }

        *v74 = 134218754;
        *&v74[4] = v68;
        *&v74[12] = 2048;
        *&v74[14] = v43 - 256;
        *&v74[22] = 2048;
        *&v74[24] = v43;
        v75.i16[0] = 2082;
        *(v75.i64 + 2) = v46;
        _os_log_impl(&dword_26168F000, v42, OS_LOG_TYPE_INFO, "Received out of order packet with seqNo=%zu. Ignoring.Current window=[%zu, %zu].(address=%{public}s)", v74, 0x2Au);
        v30 = *buf;
        if (*buf)
        {
          if (buf[8])
          {
            v31 = *(v73 + 2);
LABEL_77:
            (*(*v30 + 40))(v30, v31);
          }
        }
      }

LABEL_121:
      (*(this->i64[0] + 40))(this, v2);
LABEL_49:
      v2 = re::PacketQueue::dequeue(&this[4]);
      if (!v2)
      {
        goto LABEL_122;
      }

      continue;
    }

    break;
  }

  v35 = this[9].u16[4];
  v36 = WORD4(v68);
  if (v69.i8[0])
  {
    v37 = v35 - WORD4(v68);
    if (v35 >= WORD4(v68) && v37 < 0x8000 || (v38 = WORD4(v68) - v35, v35 < WORD4(v68)) && v38 >= 0x8000)
    {
      if (v37 >= 0x8000)
      {
        v39 = v37 + 0x10000;
      }

      else
      {
        v39 = v37;
      }

      if (v39 < 0x100)
      {
        v40 = 1 << v39;
        v41 = (v3 + 8 * re::Bitset<256>::toWordIndex(this[10].i64, v39));
        goto LABEL_87;
      }

      v38 = WORD4(v68) - v35;
    }

    if (v35 <= WORD4(v68) && v38 < 0x8000 || v35 > WORD4(v68) && v37 >= 0x8000)
    {
      v47 = WORD4(v68) + (v35 ^ 0xFFFF);
      if (v38 >= 0x8000)
      {
        v48 = (v47 + 1);
      }

      else
      {
        v48 = v38;
      }

      this[9].i16[4] = WORD4(v68);
      re::Bitset<256>::operator<<(v74, this[10].i64, v48);
      v49 = *&v74[16];
      *v3 = *v74;
      this[11] = v49;
      v41 = this + 10;
      v40 = 1;
LABEL_87:
      v41->i64[0] |= v40;
      v35 = this[9].u16[4];
      v36 = WORD4(v68);
    }
  }

  if (v35 != v36)
  {
    v51 = 0;
    while (1)
    {
      v52 = WORD4(v68) - v51;
      v53 = (WORD4(v68) - v51);
      v54 = WORD4(v68) - v53;
      if ((WORD4(v68) < v51 || v54 >= 0x8000) && (WORD4(v68) >= v51 || v53 - WORD4(v68) < 0x8000))
      {
        goto LABEL_119;
      }

      v55 = v54 >= 0x8000 ? v54 + 0x10000 : v54;
      if (v55 > 0xFF || ((v69.i64[re::Bitset<256>::toWordIndex(&v69, v55)] >> v55) & 1) == 0)
      {
        goto LABEL_119;
      }

      v56 = this[9].u16[4];
      v57 = v56 - v53;
      if (v56 >= v52 && v57 < 0x8000 || (v58 = v53 - v56, v56 < v52) && v58 >= 0x8000)
      {
        if (v57 >= 0x8000)
        {
          v59 = v57 + 0x10000;
        }

        else
        {
          v59 = v57;
        }

        if (v59 < 0x100)
        {
          v60 = 1 << v59;
          v61 = (v3 + 8 * re::Bitset<256>::toWordIndex(this[10].i64, v59));
          goto LABEL_118;
        }

        v58 = v53 - v56;
      }

      if ((v56 > v52 || v58 >= 0x8000) && (v56 <= v52 || v57 < 0x8000))
      {
        goto LABEL_119;
      }

      v62 = v53 + (v56 ^ 0xFFFF);
      if (v58 >= 0x8000)
      {
        v63 = (v62 + 1);
      }

      else
      {
        v63 = v58;
      }

      this[9].i16[4] = v52;
      re::Bitset<256>::operator<<(v74, this[10].i64, v63);
      v64 = *&v74[16];
      *v3 = *v74;
      this[11] = v64;
      v61 = this + 10;
      v60 = 1;
LABEL_118:
      v61->i64[0] |= v60;
LABEL_119:
      if (++v51 == 256)
      {
        goto LABEL_120;
      }
    }
  }

  v50 = vorrq_s8(this[11], v70);
  this[10] = vorrq_s8(this[10], v69);
  this[11] = v50;
LABEL_120:
  if (!*(v2 + 24))
  {
    goto LABEL_121;
  }

LABEL_122:
  v65 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t re::UnreliableAckedUnicastStream::ack(uint64_t this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 112);
  v4 = v3 - a2;
  if (v3 >= a2 && v4 < 0x8000 || (v5 = a2 - v3, v3 < a2) && v5 >= 0x8000)
  {
    LODWORD(v6) = v4 + 0x10000;
    if (v4 >= 0x8000)
    {
      v6 = v6;
    }

    else
    {
      v6 = v4;
    }

    if (v6 < 0x100)
    {
      v7 = this + 120;
      v8 = 1 << v6;
      this = re::Bitset<256>::toWordIndex(this + 120, v6);
      v9 = (v7 + 8 * this);
LABEL_19:
      *v9 |= v8;
      return this;
    }

    v5 = a2 - v3;
  }

  if (v3 <= a2 && v5 < 0x8000 || v3 > a2 && v4 >= 0x8000)
  {
    v10 = a2 + (v3 ^ 0xFFFF);
    if (v5 >= 0x8000)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v5;
    }

    *(this + 112) = a2;
    v9 = (this + 120);
    this = re::Bitset<256>::operator<<(v13, this + 120, v11);
    v12 = v13[1];
    *(v2 + 120) = v13[0];
    *(v2 + 136) = v12;
    v8 = 1;
    goto LABEL_19;
  }

  return this;
}

char *re::UnreliableAckedUnicastStream::update(re::UnreliableAckedUnicastStream *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  result = (*(**(v3 + 568) + 32))(*(v3 + 568));
  if (&result[-*(this + 25)] >= 0xA)
  {
    v5 = result;
    v6 = *(this + 4);
    if (v6)
    {
      v7 = (v6 - 8);
    }

    else
    {
      v7 = 0;
    }

    result = re::Transport::createMultiplexedPacket(v7, *(this + 6), 36);
    if (result)
    {
      v8 = result;
      re::UnreliableAckedUnicastStream::writeHeader(this, result);
      *(v8 + 6) = 36;
      result = re::UnicastStream::send(this, v8);
      ++*(this + 96);
      *(this + 25) = v5;
    }
  }

  return result;
}

BOOL re::AckWindow<256ul>::write(unsigned __int16 *a1, re::BitWriter *this)
{
  v3 = a1 + 4;
  re::BitWriter::writeUInt32Bits(this, *a1, 0x10u);
  for (i = 0; i != 16; i += 4)
  {
    v5 = *&v3[i + 2];
    re::BitWriter::writeUInt32Bits(this, *&v3[i], 0x20u);
    re::BitWriter::writeUInt32Bits(this, v5, 0x20u);
  }

  return (*(this + 20) & 1) == 0;
}

void re::UnreliableAckedUnicastStream::~UnreliableAckedUnicastStream(re::UnreliableAckedUnicastStream *this)
{
  re::UnicastStream::~UnicastStream(this);

  JUMPOUT(0x266708EC0);
}

void non-virtual thunk tore::UnreliableAckedUnicastStream::~UnreliableAckedUnicastStream(re::UnreliableAckedUnicastStream *this)
{
  re::UnicastStream::~UnicastStream((this - 24));
}

{
  re::UnicastStream::~UnicastStream((this - 24));

  JUMPOUT(0x266708EC0);
}

uint64_t re::Bitset<256>::toWordIndex(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x100)
  {
    return a2 >> 6;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %d.", "b < kBitCount", "toWordIndex", 345, a2, 256, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

_OWORD *re::Bitset<256>::operator<<(_OWORD *result, uint64_t a2, unint64_t a3)
{
  *result = 0u;
  result[1] = 0u;
  if (a3 <= 0xFF)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    result = re::Bitset<256>::toWordIndex(a2, a3);
    if (result <= 3)
    {
      v6 = 0;
      v7 = (4 - result);
      v8 = v5 + result;
      do
      {
        v10 = *v4++;
        v9 = v10;
        v11 = v10 >> (64 - (v3 & 0x3Fu));
        if ((v3 & 0x3F) == 0)
        {
          v11 = 0;
        }

        *v8++ = (v9 << (v3 & 0x3F)) | v6;
        v6 = v11 & ~(-1 << v3);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t re::LeaderElectionNone::setup(re::LeaderElectionNone *this, uint64_t a2)
{
  result = (*(*this + 72))(this);
  if (result)
  {
    *(*(this + 4) + 3136) = a2;
  }

  return result;
}

uint64_t re::LeaderElectionNone::processCapabilities(uint64_t this)
{
  v1 = *(this + 32);
  if (*(v1 + 2184) == 1)
  {
    *(v1 + 3280) |= 1u;
  }

  return this;
}

uint64_t re::LeaderElectionNone::removePeer(uint64_t this, uint64_t a2)
{
  v2 = *(this + 32);
  if (*(v2 + 3136) == a2)
  {
    *(v2 + 3032) = 12;
  }

  return this;
}

void re::LeaderElectionNone::~LeaderElectionNone(re::LeaderElectionNone *this)
{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

uint64_t re::SyncObjectManager::SyncObjectManager(uint64_t a1, __int128 *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  v4 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  *a1 = &unk_2873F41F8;
  *(a1 + 376) = 0;
  *(a1 + 384) = 30;
  *(a1 + 392) = 0xFFFFFFFF00010000;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 1;
  *(a1 + 444) = 500;
  *(a1 + 448) = 1;
  *(a1 + 456) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 544) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 548) = 0x7FFFFFFFLL;
  *(a1 + 560) = 0;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 2;
  *(a1 + 656) = 0;
  *(a1 + 620) = 0u;
  *(a1 + 636) = 0u;
  v5 = *(a2 + 4);
  v6 = *(v5 + 2832);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  if (v8 >= v6)
  {
    v8 = *(v5 + 2832);
  }

  if (v6 >= v7)
  {
    v7 = v8;
  }

  *(a1 + 504) = v7;
  *(a1 + 560) = *(v5 + 2232);
  v9 = *(a2 + 64);
  if (*(a2 + 64))
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  *(a1 + 616) = v10;
  if (v9)
  {
    if (*(v5 + 2219))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  *(a1 + 620) = v4;
  v11 = *a2;
  *(a1 + 385) = *(a2 + 9);
  *(a1 + 376) = v11;
  re::SharedPtr<re::SyncObject>::reset((a1 + 408), *(a2 + 4));
  re::SharedPtr<re::SyncObject>::reset((a1 + 416), *(a2 + 5));
  re::SharedPtr<re::SyncObject>::reset((a1 + 424), *(a2 + 6));
  v12 = *(a2 + 56);
  *(a1 + 448) = *(a2 + 72);
  *(a1 + 432) = v12;
  return a1;
}

void re::SyncObjectManager::~SyncObjectManager(re::SyncObjectManager *this)
{
  v43 = *MEMORY[0x277D85DE8];
  *this = &unk_2873F41F8;
  if (*(this + 456) != 1)
  {
    goto LABEL_49;
  }

  *(this + 456) = 0;
  v2 = *(this + 53);
  if (v2)
  {
    v40 = this;
    *&v41 = re::SyncObjectManager::onViewAdded;
    *(&v41 + 1) = 0;
    *&v42 = re::Event<re::SyncViewManager,re::SyncView *>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::SyncViewManager*,re::SyncView *))::{lambda(re::SyncViewManager*,re::Event<re::SyncViewManager,re::SyncView *>::Subscription const&,re::SyncView *&&)#1}::__invoke;
    re::Event<re::SyncViewManager,re::SyncView *>::removeSubscription(v2 + 24, &v40);
  }

  v3 = *(this + 51);
  if (v3[2272] != 1)
  {
    goto LABEL_49;
  }

  v4 = (*(*v3 + 40))(v3);
  if (v5)
  {
    v6 = v4;
    v7 = 8 * v5;
    do
    {
      v8 = *v6;
      if (*v6)
      {
        v9 = (v8 + 8);
        v39 = v8;
        v10 = (v8 + 8);
        re::SyncObjectManager::removePeerStateForParticipant(this, &v39);

        v39 = 0;
      }

      else
      {
        v39 = 0;
        re::SyncObjectManager::removePeerStateForParticipant(this, &v39);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  v11 = *(this + 51);
  v12 = *(v11 + 7520);
  if (v12 && *(v12 + 240))
  {
    v13 = 0;
    while (1)
    {
      v14 = (*(v12 + 256) + 32 * v13);
      if (*v14 == this)
      {
        if (!*(v12 + 304))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v12 + 224), v13);
          goto LABEL_18;
        }

        LOBYTE(v40) = 0;
        v15 = *v14;
        v42 = *(v14 + 1);
        v41 = v15;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((v12 + 264), &v40);
      }

      ++v13;
LABEL_18:
      if (v13 >= *(v12 + 240))
      {
        v11 = *(this + 51);
        break;
      }
    }
  }

  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(v11 + 2056, this);
  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(*(this + 51) + 1968, this);
  v16 = *(this + 51);
  if (!*(v16 + 400))
  {
    goto LABEL_30;
  }

  v17 = 0;
  do
  {
    v18 = *(v16 + 416) + 32 * v17;
    if (*v18 != this)
    {
      goto LABEL_26;
    }

    if (*(v16 + 464))
    {
      LOBYTE(v40) = 0;
      v19 = *v18;
      v42 = *(v18 + 16);
      v41 = v19;
      re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((v16 + 424), &v40);
LABEL_26:
      ++v17;
      continue;
    }

    re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v16 + 384), v17);
  }

  while (v17 < *(v16 + 400));
  v16 = *(this + 51);
LABEL_30:
  if (!*(v16 + 312))
  {
    goto LABEL_39;
  }

  v20 = 0;
  while (2)
  {
    v21 = (*(v16 + 328) + 32 * v20);
    if (*v21 == this)
    {
      if (*(v16 + 376))
      {
        LOBYTE(v40) = 0;
        v22 = *v21;
        v42 = *(v21 + 1);
        v41 = v22;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((v16 + 336), &v40);
        goto LABEL_35;
      }

      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v16 + 296), v20);
    }

    else
    {
LABEL_35:
      ++v20;
    }

    if (v20 < *(v16 + 312))
    {
      continue;
    }

    break;
  }

  v16 = *(this + 51);
LABEL_39:
  if (!*(v16 + 224))
  {
    goto LABEL_48;
  }

  v23 = 0;
  while (2)
  {
    v24 = (*(v16 + 240) + 32 * v23);
    if (*v24 == this)
    {
      if (*(v16 + 288))
      {
        LOBYTE(v40) = 0;
        v25 = *v24;
        v42 = *(v24 + 1);
        v41 = v25;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((v16 + 248), &v40);
        goto LABEL_44;
      }

      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v16 + 208), v23);
    }

    else
    {
LABEL_44:
      ++v23;
    }

    if (v23 < *(v16 + 224))
    {
      continue;
    }

    break;
  }

  v16 = *(this + 51);
LABEL_48:
  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(v16 + 120, this);
  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(*(this + 51) + 32, this);
LABEL_49:
  v26 = *(this + 76);
  if (v26)
  {
    _Block_release(v26);
    *(this + 76) = 0;
  }

  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(this + 624);
  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 568);
  v27.n128_f64[0] = re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 64);
  v28 = *(this + 58);
  if (v28)
  {
    v29 = *(this + 62);
    if (v29)
    {
      v30 = *(this + 60);
      if (v30)
      {
        v31 = v30 << 6;
        v32 = v29 + 16;
        do
        {
          re::DynamicArray<re::SyncOwnershipRequest>::deinit(v32);
          v33 = *(v32 - 8);
          if (v33)
          {

            *(v32 - 8) = 0;
          }

          v34 = *(v32 - 16);
          if (v34)
          {

            *(v32 - 16) = 0;
          }

          v32 += 64;
          v31 -= 64;
        }

        while (v31);
        v28 = *(this + 58);
        v29 = *(this + 62);
      }

      (*(*v28 + 40))(v28, v29, v27);
    }

    *(this + 62) = 0;
    *(this + 59) = 0;
    *(this + 60) = 0;
    *(this + 58) = 0;
    ++*(this + 122);
  }

  v35 = *(this + 53);
  if (v35)
  {

    *(this + 53) = 0;
  }

  v36 = *(this + 52);
  if (v36)
  {

    *(this + 52) = 0;
  }

  v37 = *(this + 51);
  if (v37)
  {

    *(this + 51) = 0;
  }

  re::SyncSession::~SyncSession(this);
  v38 = *MEMORY[0x277D85DE8];
}

{
  re::SyncObjectManager::~SyncObjectManager(this);

  JUMPOUT(0x266708EC0);
}

void re::SyncSession::~SyncSession(re::SyncSession *this)
{
  *this = &unk_2873F4430;
  v2 = (this + 24);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 36);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 25);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 14);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(v2);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

uint64_t (***re::SyncObjectManager::startSync(re::SyncObjectManager *this))(void)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = (*(**(this + 51) + 40))(*(this + 51));
  if (v3)
  {
    v4 = v2;
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        v7 = (v6 + 8);
      }

      v8 = *(v6 + 152);
      if (v8 && ((*(*v8 + 48))(v8) & 1) == 0)
      {
        v21 = v6;
        v9 = (v6 + 8);
        re::SyncObjectManager::addPeerStateForParticipant(this, &v21);

        v21 = 0;
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  v10 = *(this + 51);
  v22 = this;
  v23 = re::SyncObjectManager::onSessionWillDeinit;
  v24 = 0;
  v25 = re::Event<re::Session>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v10 + 32), &v22);
  v11 = *(this + 51);
  v22 = this;
  v23 = re::SyncObjectManager::onSessionStarted;
  v24 = 0;
  v25 = re::Event<re::Session>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v11 + 120), &v22);
  v12 = *(this + 51);
  v22 = this;
  v23 = re::SyncObjectManager::onSessionStopped;
  v24 = 0;
  v25 = re::Event<re::Session,re::SessionError>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::Session*,re::SessionError))::{lambda(re::Session*,re::Event<re::Session,re::SessionError>::Subscription const&,re::SessionError&&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v12 + 208), &v22);
  v13 = *(this + 51);
  v22 = this;
  v23 = re::SyncObjectManager::onPeerJoined;
  v24 = 0;
  v25 = re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::Session*,re::SharedPtr<re::SessionParticipant>))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v13 + 296), &v22);
  v14 = *(this + 51);
  v22 = this;
  v23 = re::SyncObjectManager::onPeerLeft;
  v24 = 0;
  v25 = re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::Session*,re::SharedPtr<re::SessionParticipant>,re::ParticipantError))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&,re::ParticipantError&&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v14 + 384), &v22);
  v15 = *(this + 51);
  v22 = this;
  v23 = re::SyncObjectManager::onPeerPaused;
  v24 = 0;
  v25 = re::Event<re::Session,unsigned long long>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::Session*,unsigned long long))::{lambda(re::Session*,re::Event<re::Session,unsigned long long>::Subscription const&,unsigned long long &&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v15 + 1968), &v22);
  v16 = *(this + 51);
  v22 = this;
  v23 = re::SyncObjectManager::onPeerResumed;
  v24 = 0;
  v25 = re::Event<re::Session,unsigned long long>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::Session*,unsigned long long))::{lambda(re::Session*,re::Event<re::Session,unsigned long long>::Subscription const&,unsigned long long &&)#1}::__invoke;
  re::Event<re::Session>::addSubscription((v16 + 2056), &v22);
  v17 = *(*(this + 51) + 7520);
  if (v17)
  {
    v22 = this;
    v23 = re::SyncObjectManager::handleCongestionEvent;
    v24 = 0;
    v25 = re::Event<re::PacketStatsFilter,re::CongestionEventData const&>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::PacketStatsFilter*,re::CongestionEventData const&))::{lambda(re::PacketStatsFilter*,re::Event<re::PacketStatsFilter,re::CongestionEventData const&>::Subscription const&,re::CongestionEventData const&)#1}::__invoke;
    re::Event<re::Session>::addSubscription((v17 + 224), &v22);
  }

  v18 = *(this + 53);
  if (v18)
  {
    v22 = this;
    v23 = re::SyncObjectManager::onViewAdded;
    v24 = 0;
    v25 = re::Event<re::SyncViewManager,re::SyncView *>::createSubscription<re::SyncObjectManager>(re::SyncObjectManager *,REEventHandlerResult (re::SyncObjectManager::*)(re::SyncViewManager*,re::SyncView *))::{lambda(re::SyncViewManager*,re::Event<re::SyncViewManager,re::SyncView *>::Subscription const&,re::SyncView *&&)#1}::__invoke;
    re::Event<re::Session>::addSubscription((v18 + 24), &v22);
  }

  *(this + 456) = 1;
  result = re::SyncObjectManager::reevaluateAllViewers(this);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t (***re::SyncObjectManager::reevaluateAllViewers(re::SyncObjectManager *this))(void)
{
  v6[5] = *MEMORY[0x277D85DE8];
  v2 = *(this + 53);
  v3 = re::globalAllocators(this)[2];
  v6[0] = &unk_2873F42A8;
  v6[1] = this;
  v6[3] = v3;
  v6[4] = v6;
  re::SyncViewManager::forEachView(v2, v6);
  result = re::FunctionBase<24ul,void ()(re::SyncView *)>::destroyCallable(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t (***re::SyncObjectManager::setViewFilter(uint64_t a1, void *aBlock))(void)
{
  v4 = *(a1 + 608);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 608) = result;
  if (*(a1 + 456) == 1)
  {

    return re::SyncObjectManager::reevaluateAllViewers(a1);
  }

  return result;
}

void re::SyncObjectManager::addPeerStateForParticipant(uint64_t a1, uint64_t *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = *re::networkLogObjects(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = *(*a2 + 24);
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Adding new peer state. PeerID=%llu.", buf, 0xCu);
  }

  v63 = 0;
  v7 = *(a1 + 472);
  v8 = *(a1 + 480);
  if (v8 >= v7)
  {
    v9 = v8 + 1;
    if (v7 < v8 + 1)
    {
      if (*(a1 + 464))
      {
        v10 = 2 * v7;
        v11 = v7 == 0;
        v12 = 8;
        if (!v11)
        {
          v12 = v10;
        }

        if (v12 <= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v12;
        }

        re::DynamicArray<re::SyncObjectManager::PeerState>::setCapacity((a1 + 464), v13);
      }

      else
      {
        re::DynamicArray<re::SyncObjectManager::PeerState>::setCapacity((a1 + 464), v9);
        ++*(a1 + 488);
      }
    }

    v8 = *(a1 + 480);
  }

  v14 = *(a1 + 496) + (v8 << 6);
  *v14 = 0u;
  memset(buf, 0, sizeof(buf));
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  *v61 = 0u;
  v62 = 0;
  *&v61[16] = 1;
  *(v14 + 40) = 1;
  *(v14 + 48) = 0u;
  ++*(a1 + 480);
  ++*(a1 + 488);
  re::DynamicArray<re::SyncOwnershipRequest>::deinit(&buf[16]);
  if (*&buf[8])
  {
  }

  if (*buf)
  {
  }

  v15 = *(a1 + 496) + (*(a1 + 480) << 6);
  re::SharedPtr<re::SyncObject>::reset((v15 - 64), *a2);
  v17 = *(*a2 + 24);
  v18 = *(a1 + 480);
  if (v18)
  {
    v19 = *(a1 + 440);
    v20 = *(a1 + 496);
    v21 = v18 << 6;
    while (*(*v20 + 24) != v17)
    {
      v20 += 64;
      v21 -= 64;
      if (!v21)
      {
        goto LABEL_22;
      }
    }

    v25 = *re::networkLogObjects(v16);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
    if (v19)
    {
      if (v26)
      {
        *buf = 0;
        _os_log_impl(&dword_26168F000, v25, OS_LOG_TYPE_INFO, "UNICAST reliable", buf, 2u);
      }

      v27 = *(a1 + 408);
      v28 = *(*v20 + 24);
      v56 = *(*v20 + 32);
      v29 = re::Session::peerID(v27);
      v30 = *(a1 + 416);
      v31 = (*(*v20 + 72) >> 1) & 1;
      v32 = re::globalAllocators(v29);
      v24 = (*(*v32[2] + 32))(v32[2], 152, 8);
      if (a1)
      {
        v33 = (a1 + 8);
      }

      else
      {
        v33 = 0;
      }

      objc_initWeak(buf, v33);
      objc_initWeak(&location, (v27 + 2328));
      if (v30)
      {
        v34 = (v30 + 8);
      }

      else
      {
        v34 = 0;
      }

      objc_initWeak(&v58, v34);
      re::SyncReliableOrderedUnicast::SyncReliableOrderedUnicast(v24, buf, &location, v56, v28, v29, &v58, *(a1 + 400), v31, *(a1 + 448));
    }

    else
    {
      if (v26)
      {
        *buf = 0;
        _os_log_impl(&dword_26168F000, v25, OS_LOG_TYPE_INFO, "UNICAST selective acked", buf, 2u);
      }

      v35 = *(a1 + 408);
      v36 = *(*v20 + 24);
      v57 = *(*v20 + 32);
      v37 = re::Session::peerID(v35);
      v38 = *(a1 + 416);
      v39 = (*(*v20 + 72) >> 1) & 1;
      v40 = re::globalAllocators(v37);
      v24 = (*(*v40[2] + 32))(v40[2], 288, 8);
      if (a1)
      {
        v41 = (a1 + 8);
      }

      else
      {
        v41 = 0;
      }

      objc_initWeak(buf, v41);
      objc_initWeak(&location, (v35 + 2328));
      if (v38)
      {
        v42 = (v38 + 8);
      }

      else
      {
        v42 = 0;
      }

      objc_initWeak(&v58, v42);
      re::SyncSelectiveAckedUnicast::SyncSelectiveAckedUnicast(v24, buf, &location, v57, v36, v37, &v58, *(a1 + 400), v39, *(a1 + 448), *(a1 + 444));
    }

    objc_destroyWeak(&v58);
    v58 = 0;
    objc_destroyWeak(&location);
    location = 0;
    objc_destroyWeak(buf);
  }

  else
  {
LABEL_22:
    v22 = *re::networkLogObjects(v16);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      *buf = 134217984;
      *&buf[4] = v17;
      _os_log_error_impl(&dword_26168F000, v22, OS_LOG_TYPE_ERROR, "Invalid peerID %llu", buf, 0xCu);
    }

    v24 = 0;
  }

  v43 = *(v15 - 56);
  *(v15 - 56) = v24;
  if (v43)
  {
  }

  v44 = *(*a2 + 24);
  v45 = re::globalAllocators(v23);
  v46 = (*(*v45[2] + 32))(v45[2], 112, 8);
  *(v46 + 32) = 0;
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  *(v46 + 40) = 0;
  *(v46 + 48) = a1;
  *v46 = &unk_2873F5B80;
  *(v46 + 8) = 0;
  *(v46 + 64) = 0u;
  *(v46 + 80) = 0u;
  *(v46 + 96) = 0;
  *(v46 + 100) = 0x7FFFFFFFLL;
  *(v46 + 56) = v44;
  v47 = *(a1 + 424);
  if (v47)
  {
    re::SyncViewManager::addViewer(v47, v46);
    v48 = *(a1 + 424);
    *(v15 - 8) = v46;
    if (v48 && *(a1 + 608))
    {
      *buf = a1;
      v49 = *(v15 - 64);
      *&buf[8] = v49;
      if (v49)
      {
        v50 = (v49 + 8);
      }

      v51 = *(v15 - 56);
      *&buf[16] = v51;
      if (v51)
      {
        v52 = (v51 + 8);
      }

      v53 = re::DynamicArray<re::SyncOwnershipRequest>::DynamicArray(v61, (v15 - 48));
      v64 = *(v15 - 8);
      v66 = re::globalAllocators(v53)[2];
      v54 = (*(*v66 + 32))(v66, 80, 0);
      *v54 = &unk_2873F4358;
      *(v54 + 8) = *buf;
      *(v54 + 24) = *&buf[16];
      *&buf[8] = 0u;
      *(v54 + 56) = 0;
      *(v54 + 32) = *v61;
      *v61 = 0;
      *(v54 + 40) = *&v61[8];
      *(v54 + 48) = 0;
      *(v54 + 48) = *&v61[16];
      *&v61[8] = 0u;
      *(v54 + 64) = v63;
      v63 = 0;
      LODWORD(v62) = v62 + 1;
      *(v54 + 56) = 1;
      *(v54 + 72) = v64;
      v67 = v54;
      re::SyncViewManager::forEachView(v48, v65);
      re::FunctionBase<24ul,void ()(re::SyncView *)>::destroyCallable(v65);
      re::DynamicArray<re::SyncOwnershipRequest>::deinit(v61);
      if (*&buf[16])
      {

        *&buf[16] = 0;
      }

      if (*&buf[8])
      {
      }
    }
  }

  else
  {
    *(v15 - 8) = v46;
  }

  v55 = *MEMORY[0x277D85DE8];
}

uint64_t re::SyncObjectManager::onSessionStarted(re::SyncObjectManager *this, re::Session *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *re::networkLogObjects(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&dword_26168F000, v3, OS_LOG_TYPE_DEFAULT, "SyncObjectManager: session started (%p).", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::SyncObjectManager::onSessionStopped(re *a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = a2;
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "SyncObjectManager: session stopped (%p) with error: %d.", &v8, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::SyncObjectManager::onPeerJoined(re *a1, uint64_t a2, uint64_t *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a3;
    if (*(*a3 + 48))
    {
      v7 = v6[7];
    }

    else
    {
      v7 = v6 + 49;
    }

    v8 = v6[3];
    v9 = v6[19];
    if (v9)
    {
      v10 = (*(*v9 + 32))(v9);
    }

    else
    {
      v10 = "nullptr";
    }

    *buf = 134218498;
    v17 = v8;
    v18 = 2080;
    v19 = v7;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "New peer joined object syncing. PeerID=%llu. Address='%s'. Identity='%s'.", buf, 0x20u);
  }

  v11 = *a3;
  v15 = v11;
  if (v11)
  {
    v12 = (v11 + 8);
    re::SyncObjectManager::addPeerStateForParticipant(a1, &v15);
  }

  else
  {
    re::SyncObjectManager::addPeerStateForParticipant(a1, &v15);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::SyncObjectManager::onPeerLeft(re *a1, uint64_t a2, uint64_t *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a3;
    if (*(*a3 + 48))
    {
      v7 = v6[7];
    }

    else
    {
      v7 = v6 + 49;
    }

    v8 = v6[3];
    v9 = v6[19];
    if (v9)
    {
      v10 = (*(*v9 + 32))(v9);
    }

    else
    {
      v10 = "nullptr";
    }

    *buf = 134218498;
    v17 = v8;
    v18 = 2080;
    v19 = v7;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "Peer left syncing. PeerID=%llu. Address='%s'. Identity='%s'.", buf, 0x20u);
  }

  v11 = *a3;
  v15 = v11;
  if (v11)
  {
    v12 = (v11 + 8);
    re::SyncObjectManager::removePeerStateForParticipant(a1, &v15);
  }

  else
  {
    re::SyncObjectManager::removePeerStateForParticipant(a1, &v15);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::SyncObjectManager::onPeerPaused(re::SyncObjectManager *this, re::Session *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *re::networkLogObjects(this);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "Pausing peerID %llu.", &v8, 0xCu);
  }

  (*(*this + 120))(this, a3);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::SyncObjectManager::onPeerResumed(re::SyncObjectManager *this, re::Session *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *re::networkLogObjects(this);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "Resuming peerID %llu", &v8, 0xCu);
  }

  (*(*this + 128))(this, a3);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::SyncObjectManager::handleCongestionEvent(re *a1, uint64_t a2, void *a3)
{
  v4 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEBUG, "Emiting congestion event.", v9, 2u);
  }

  if (re::internal::enableSignposts(0, 0))
  {
    v6 = a3[2];
    v5 = a3[3];
    v7 = a3[1];
    kdebug_trace();
  }

  return 0;
}

void re::SyncObjectManager::removePeerStateForParticipant(uint64_t a1, uint64_t a2)
{
  v89 = *MEMORY[0x277D85DE8];
  v4 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*a2 + 24);
    *buf = 134217984;
    *&buf[4] = v5;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Removing peer state. PeerID=%llu.", buf, 0xCu);
  }

  v6 = *(a1 + 480);
  if (v6)
  {
    v7 = 0;
    v8 = *(*a2 + 24);
    v9 = v6 << 6;
    while (*(*(*(a1 + 496) + v7) + 24) != v8)
    {
      v7 += 64;
      if (v9 == v7)
      {
        goto LABEL_98;
      }
    }

    v82 = *(a1 + 496);
    re::SyncObjectStore::types(*(a1 + 416), buf);
    if (*&buf[16])
    {
      v11 = 0;
      v12 = v86;
      v83 = (v86 + 8 * *&buf[16]);
      while (1)
      {
        v13 = *v12;
        if (*(*(*v12 + 16) + 73) == 1)
        {
          v14 = *(v13 + 64);
          if (v14)
          {
            break;
          }
        }

LABEL_67:
        if (++v12 == v83)
        {
          goto LABEL_70;
        }
      }

      v15 = *(v13 + 80);
      v16 = &v15[v14];
      while (re::SyncObject::fromPeerID(*v15) != v8)
      {
        v17 = *v15;
        v18 = *(*v15 + 10);
        if (v18)
        {
          v19 = *(*v15 + 10);
          v20 = *v15;
          do
          {
            v21 = v20;
            v20 = v19;
            if (*(*(*(v21 + 11) + 16) + 73))
            {
              break;
            }

            v19 = *(v19 + 10);
            v21 = v20;
          }

          while (v19);
          if (*(v21 + 20) == v8)
          {
            break;
          }

          do
          {
            v22 = v17;
            v17 = v18;
            if (*(*(*(v22 + 11) + 16) + 73))
            {
              break;
            }

            v18 = *(v18 + 10);
            v22 = v17;
          }

          while (v18);
        }

        else
        {
          v22 = *v15;
          if (*(v17 + 20) == v8)
          {
            break;
          }
        }

        v23 = *(v22 + 17);
        if (v23)
        {
          v24 = v23 == v8;
        }

        else
        {
          v24 = 0;
        }

        if (v24)
        {
          break;
        }

LABEL_66:
        if (++v15 == v16)
        {
          goto LABEL_67;
        }
      }

      v25 = re::Session::peerID(*(a1 + 408));
      v26 = *v15;
      v27 = *(*v15 + 10);
      v28 = *v15;
      if (!v27)
      {
        goto LABEL_33;
      }

      v29 = *v15;
      do
      {
        v28 = v29;
        v29 = v27;
        if (*(*(*(v28 + 11) + 16) + 73))
        {
          break;
        }

        v27 = *(v27 + 10);
        v28 = v29;
      }

      while (v27);
      if (v26)
      {
LABEL_33:
        v30 = *(v28 + 20);
        v31 = *v15;
        while ((*(*(*(v31 + 11) + 16) + 74) & 1) == 0)
        {
          v31 = *(v31 + 10);
          if (!v31)
          {
            goto LABEL_46;
          }
        }

        v32 = *(v31 + 12);
        if (v32)
        {
          v33 = *(v32 + 104);
          if (v33)
          {
            v34 = *(v32 + 120);
            v35 = 8 * v33;
            do
            {
              v36 = *v34++;
              v37 = *(v36 + 56);
              if (v25 - 1 >= v37 && v37 != v30)
              {
                v25 = v37;
              }

              v35 -= 8;
            }

            while (v35);
          }
        }
      }

LABEL_46:
      v39 = re::SyncObject::latestStateHandle(v26);
      if (v39 == -1)
      {
        v48 = *re::networkLogObjects(0xFFFFFFFFFFFFFFFFLL);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = *(*v15 + 3);
          v50 = *(*(*v15 + 11) + 16);
          v51 = v50[4];
          v52 = v50[6];
          v53 = v50[7];
          v54 = v50 + 49;
          if (v52)
          {
            v54 = v53;
          }

          *v84 = 134218498;
          *&v84[4] = v49;
          *&v84[12] = 2048;
          *&v84[14] = v51;
          *&v84[22] = 2080;
          *&v84[24] = v54;
          _os_log_error_impl(&dword_26168F000, v48, OS_LOG_TYPE_ERROR, "Sync object without snapshot while gathering orphans (id: %llu, type: %llu[%s]).", v84, 0x20u);
        }

        goto LABEL_64;
      }

      v40 = *(a1 + 400);
      v41 = re::Session::peerID(*(a1 + 408));
      v42 = *v15;
      v43 = *(*v15 + 10);
      v44 = *v15;
      if (v43)
      {
        v45 = *v15;
        do
        {
          v44 = v45;
          v45 = v43;
          if (*(*(*(v44 + 11) + 16) + 73))
          {
            break;
          }

          v43 = *(v43 + 10);
          v44 = v45;
        }

        while (v43);
      }

      if (*(v44 + 171) == 1)
      {
        if (v41 == v25)
        {
          v46 = 0;
        }

        else
        {
          v46 = v25;
        }

        *(v42 + 17) = 0;
        *(v42 + 20) = v46;
        *(v42 + 170) = (v41 == v25) | v40 & 1;
        *v84 = v42;
        v47 = 4;
      }

      else
      {
        *(v42 + 128) |= 4u;
        v42 = *v15;
        *v84 = v42;
        v47 = 2;
        if (!v42)
        {
          goto LABEL_62;
        }
      }

      v55 = v42 + 8;
LABEL_62:
      *&v84[8] = v39;
      v84[16] = v47;
      re::DynamicArray<re::internal::SyncSnapshotEntry>::add((a1 + 624), v84);
      if (*v84)
      {
      }

LABEL_64:
      if (v39 != -1)
      {
        ++v11;
      }

      goto LABEL_66;
    }

    v11 = 0;
LABEL_70:
    v56 = *buf;
    if (*buf)
    {
      v10 = v86;
      if (v86)
      {
        v56 = (*(**buf + 40))();
      }
    }

    v57 = *(a1 + 640);
    if (v57)
    {
      v58 = *(a1 + 656);
      v59 = 24 * v57;
      do
      {
        if ((*(*v58 + 128) & 4) != 0)
        {
          re::SyncObjectManager::destroyObject(v58);
        }

        v58 += 24;
        v59 -= 24;
      }

      while (v59);
    }

    if (v11)
    {
      v60 = *re::networkLogObjects(v56);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = re::Session::peerID(*(a1 + 408));
        *buf = 134218240;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = v61;
        _os_log_impl(&dword_26168F000, v60, OS_LOG_TYPE_DEFAULT, "Found %zu orphaned objects. localPeerID=%llu. ", buf, 0x16u);
      }
    }

    v62 = *(v82 + v7 + 56);
    v63 = *(a1 + 424);
    if (v63)
    {
      v63 = re::SyncViewManager::removeViewer(v63, *(v82 + v7 + 56), 0);
    }

    if (v62)
    {
      v64 = re::globalAllocators(v63)[2];
      (**v62)(v62);
      (*(*v64 + 40))(v64, v62);
    }

    *(v82 + v7 + 56) = 0;
    v65 = *(a1 + 496);
    v66 = (v82 - v65 + v7) >> 6;
    v67 = *(a1 + 480);
    if (v67 <= v66)
    {
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      *v84 = 136315906;
      *&v84[4] = "removeAt";
      *&v84[12] = 1024;
      *&v84[14] = 931;
      *&v84[18] = 2048;
      *&v84[20] = v66;
      *&v84[28] = 2048;
      *&v84[30] = v67;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      if (v67 - 1 <= v66)
      {
LABEL_93:
        v78 = v65 + (v67 << 6);
        re::DynamicArray<re::SyncOwnershipRequest>::deinit(v78 - 48);
        v79 = *(v78 - 56);
        if (v79)
        {

          *(v78 - 56) = 0;
        }

        v80 = *(v78 - 64);
        if (v80)
        {

          *(v78 - 64) = 0;
        }

        --*(a1 + 480);
        ++*(a1 + 488);
        goto LABEL_98;
      }

      v68 = v65 + (v67 << 6);
      v69 = (v82 + v7);
      v70 = *(v82 + v7);
      *v69 = *(v68 - 64);
      *(v68 - 64) = v70;
      v71 = *(v82 + v7 + 8);
      v69[1] = *(v68 - 56);
      *(v68 - 56) = v71;
      if (v82 + v7 - v68 == -64)
      {
LABEL_92:
        v69[7] = *(v68 - 8);
        v65 = *(a1 + 496);
        goto LABEL_93;
      }

      v72 = v69[2];
      v73 = *(v68 - 48);
      if (!v72 || !v73 || v72 == v73)
      {
        v69[2] = v73;
        *(v68 - 48) = v72;
        v74 = v82 + v7;
        v75 = *(v82 + v7 + 24);
        *(v74 + 24) = *(v68 - 40);
        *(v68 - 40) = v75;
        v76 = *(v82 + v7 + 32);
        *(v74 + 32) = *(v68 - 32);
        *(v68 - 32) = v76;
        v77 = *(v82 + v7 + 48);
        *(v74 + 48) = *(v68 - 16);
        *(v68 - 16) = v77;
        ++*(v68 - 24);
        *(v74 + 40) = *(v82 + v7 + 40) + 1;
        v67 = *(a1 + 480);
        goto LABEL_92;
      }
    }

    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash();
    __break(1u);
  }

LABEL_98:
  v81 = *MEMORY[0x277D85DE8];
}

void re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      v5 = (*(a1 + 32) + 32 * v4);
      if (*v5 == a2)
      {
        if (!*(a1 + 80))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, v4);
          continue;
        }

        v8[0] = 0;
        v6 = *v5;
        v10 = v5[1];
        v9 = v6;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((a1 + 40), v8);
      }

      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t re::SyncObjectManager::onViewAdded(re::SyncObjectManager *this, re::SyncViewManager *a2, re::SyncView *a3)
{
  v9[5] = *MEMORY[0x277D85DE8];
  v6 = re::globalAllocators(this)[2];
  v9[2] = a3;
  v9[3] = v6;
  v9[0] = &unk_2873F4300;
  v9[1] = this;
  v9[4] = v9;
  re::SyncViewManager::forEachViewer(a2, v9);
  re::FunctionBase<24ul,void ()(re::SyncViewer *)>::destroyCallable(v9);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

void re::SyncObjectManager::receive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = *MEMORY[0x277D85DE8];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v47, 6008, a1);
  *a3 = a1;
  v5 = *(a1 + 480);
  if (v5)
  {
    v6 = *(a1 + 496);
    v7 = &v6[8 * v5];
    v8 = MEMORY[0x277D85DD0];
    while (1)
    {
      v9 = *v6;
      *(a3 + 8) = *(*v6 + 24);
      *(a3 + 24) = *(v9 + 72);
      v10 = v6[1];
      v46[0] = v8;
      v46[1] = 0x40000000;
      v46[2] = ___ZN2re17SyncObjectManager7receiveEU13block_pointerFbP13RESyncSessionPK12RESyncCommitERNS_21SyncObjectReadContextE_block_invoke;
      v46[3] = &unk_279AE3AE8;
      v46[5] = a1;
      v46[6] = a3;
      v46[4] = a2;
      v11 = (*(*v10 + 40))(v10, a3, v46);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = v6[1];
      v13 = *(*v6 + 24);
      v14 = re::globalAllocators(v11)[2];
      *&v49[16] = v13;
      *&v49[24] = v14;
      *v49 = &unk_2873F43B0;
      *&v49[8] = a1;
      v50[0] = v49;
      LOBYTE(v12) = (*(*v12 + 56))(v12, v49);
      v15 = re::FunctionBase<24ul,void ()(re::SyncOwnershipRequest const&)>::destroyCallable(v49);
      if ((v12 & 1) == 0)
      {
        v16 = *re::networkLogObjects(v15);
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        if (v17)
        {
          *buf = 0;
          _os_log_error_impl(&dword_26168F000, v16, OS_LOG_TYPE_ERROR, "[Ownership] Corrupt ownership request.", buf, 2u);
        }

        v18 = *re::networkLogObjects(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          if (*(v9 + 48))
          {
            v19 = *(v9 + 56);
          }

          else
          {
            v19 = v9 + 49;
          }

          v20 = *(v9 + 24);
          v21 = *(v9 + 152);
          v22 = "nullptr";
          if (v21)
          {
            v44 = *(v9 + 24);
            v22 = (*(*v21 + 32))(v21);
            v20 = v44;
          }

          *v49 = 134218498;
          *&v49[4] = v20;
          *&v49[12] = 2082;
          *&v49[14] = v19;
          *&v49[22] = 2082;
          *&v49[24] = v22;
          _os_log_error_impl(&dword_26168F000, v18, OS_LOG_TYPE_ERROR, "Failed to parse ownership requests. Will drop peer.(peerID=%llu, address=%{public}s, identity=%{public}s)", v49, 0x20u);
        }

        re::Transport::disconnect((*(a1 + 408) + 2320), *(v9 + 32), 0);
      }

      v6 += 8;
      if (v6 == v7)
      {
        goto LABEL_19;
      }
    }

    v23 = *re::networkLogObjects(v11);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      if (*(v9 + 48))
      {
        v40 = *(v9 + 56);
      }

      else
      {
        v40 = v9 + 49;
      }

      v41 = *(v9 + 24);
      v42 = *(v9 + 152);
      if (v42)
      {
        v43 = (*(*v42 + 32))(v42);
      }

      else
      {
        v43 = "nullptr";
      }

      *v49 = 134218498;
      *&v49[4] = v41;
      *&v49[12] = 2082;
      *&v49[14] = v40;
      *&v49[22] = 2082;
      *&v49[24] = v43;
      _os_log_error_impl(&dword_26168F000, v23, OS_LOG_TYPE_ERROR, "Failed to parse incoming packet. Will drop peer.(peerID=%llu, address=%{public}s, identity=%{public}s)", v49, 0x20u);
    }

    re::Transport::disconnect((*(a1 + 408) + 2320), *(v9 + 32), 0);
  }

LABEL_19:
  if (*(a1 + 640))
  {
    v49[0] = 0;
    v52 = 0;
    memset(v50, 0, sizeof(v50));
    v51 = 0;
    *&v49[8] = 0;
    *&v49[16] = 0;
    *&v49[21] = 0;
    re::DynamicArray<re::internal::SyncSnapshotEntry>::operator=(v50, (a1 + 624));
    (*(a2 + 16))(a2, a1, v49);
    re::DynamicArray<re::internal::SyncSnapshotEntry>::clear(a1 + 624);
    re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v50);
  }

  v24 = *(a1 + 544);
  if (v24)
  {
    v25 = 0;
    v26 = *(a1 + 528);
    while (1)
    {
      v27 = *v26;
      v26 += 8;
      if (v27 < 0)
      {
        break;
      }

      if (v24 == ++v25)
      {
        LODWORD(v25) = *(a1 + 544);
        break;
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  while (v25 != v24)
  {
    v29 = *(a1 + 528) + 32 * v25;
    v30.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (*(v29 + 16) < v30.__d_.__rep_)
    {
      v31 = *re::networkLogObjects(v30.__d_.__rep_);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(*(v29 + 8) + 24);
        *v49 = 134217984;
        *&v49[4] = v39;
        _os_log_debug_impl(&dword_26168F000, v31, OS_LOG_TYPE_DEBUG, "[Ownership] Ownership response for: %llu timed out", v49, 0xCu);
      }

      v32 = *(a1 + 432);
      if (v32)
      {
        v33 = (*(*v32 + 56))(v32);
        v34 = *(v29 + 8);
        if (v34)
        {
          v35 = *(v34 + 80);
          if (v35)
          {
            do
            {
              v36 = v34;
              v34 = v35;
              if (*(*(*(v36 + 88) + 16) + 73))
              {
                break;
              }

              v35 = *(v35 + 80);
              v36 = v34;
            }

            while (v35);
          }

          else
          {
            v36 = *(v29 + 8);
          }

          v37 = *(v36 + 160);
        }

        re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long,re::OwnershipResponseResult>::raise(v33, a1);
      }

      re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(a1 + 512, *(v29 + 8));
    }

    v38 = *(a1 + 544);
    if (v38 <= v25 + 1)
    {
      v38 = v25 + 1;
    }

    while (v38 - 1 != v25)
    {
      LODWORD(v25) = v25 + 1;
      if ((*(*(a1 + 528) + 32 * v25) & 0x80000000) != 0)
      {
        goto LABEL_50;
      }
    }

    LODWORD(v25) = v38;
LABEL_50:
    ;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v47);
  v28 = *MEMORY[0x277D85DE8];
}
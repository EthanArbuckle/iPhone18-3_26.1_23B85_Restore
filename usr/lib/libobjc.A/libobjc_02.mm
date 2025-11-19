unint64_t objc_class::setInstanceSize(objc_class *this, unsigned int a2)
{
  result = class_rw_t::ro((*(this + 4) & 0xF00007FFFFFFFF8));
  if (*(result + 8) != a2)
  {
    *(result + 8) = a2;
  }

  v5 = (a2 + 15) & 0xFF8;
  if (v5 < a2)
  {
    LOWORD(v5) = 0;
  }

  *(this + 15) = *(this + 15) & 0xF007 | v5;
  return result;
}

void objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::grow(int a1)
{
  v1 = dword_1ED3F5F58;
  if (objc::AssociationsManager::_mapStorage)
  {
    v2 = objc::AssociationsManager::_mapStorage;
  }

  else
  {
    v2 = 0;
  }

  v3 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = v4 | HIWORD(v4);
  if ((v5 + 1) > 4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 4;
  }

  dword_1ED3F5F58 = v6;
  v7 = malloc_type_malloc(32 * v6, 0xAC185C46uLL);
  if (v7)
  {
    objc::AssociationsManager::_mapStorage = v7;
    if (v2)
    {
      v9 = v7;
LABEL_13:
      if (dword_1ED3F5F58)
      {
        v11 = 0;
        v12 = ((dword_1ED3F5F58 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL) - ((dword_1ED3F5F58 - 1) & 1) + 2;
        v13 = vdupq_n_s64((dword_1ED3F5F58 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL);
        v14 = v9 + 32;
        do
        {
          v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_1800DA160)));
          if (v15.i8[0])
          {
            *(v14 - 4) = 1;
          }

          if (v15.i8[4])
          {
            *v14 = 1;
          }

          v11 += 2;
          v14 += 8;
        }

        while (v12 != v11);
      }

      if (v1)
      {
        v16 = 32 * v1;
        v17 = v2 + 1;
        v18 = (v2 + 1);
        do
        {
          v19 = *(v17 - 1);
          if ((v19 - 1) >= 2)
          {
            v27 = 0;
            objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::LookupBucketFor<DisguisedPtr<objc_object>>(v19, &v27);
            v20 = v27;
            *v27 = *(v17 - 1);
            v20[2] = 0;
            *(v20 + 6) = 0;
            v20[1] = 0;
            objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::swap(v20 + 1, v17);
            ++DWORD2(objc::AssociationsManager::_mapStorage);
            if (*v17)
            {
              v21 = *v17;
            }

            else
            {
              v21 = 0;
            }

            free(v21);
          }

          v18 += 32;
          v17 += 4;
          v16 -= 32;
        }

        while (v16);
      }

      free(v2);
      return;
    }

    v10 = v7;
  }

  else
  {
    *&v8 = 0;
    v10 = 0;
    v9 = 0;
    objc::AssociationsManager::_mapStorage = v8;
    if (v2)
    {
      goto LABEL_13;
    }
  }

  if (dword_1ED3F5F58)
  {
    v22 = 0;
    v23 = ((dword_1ED3F5F58 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL) - ((dword_1ED3F5F58 - 1) & 1) + 2;
    v24 = vdupq_n_s64((dword_1ED3F5F58 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL);
    v25 = v10 + 32;
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_1800DA160)));
      if (v26.i8[0])
      {
        *(v25 - 4) = 1;
      }

      if (v26.i8[4])
      {
        *v25 = 1;
      }

      v22 += 2;
      v25 += 8;
    }

    while (v23 != v22);
  }
}

void object_setIvarWithStrongDefault(id obj, Ivar ivar, id value)
{
  if (obj >= 1 && ivar)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = 0;
    v7 = 0;
    _class_lookUpIvar(*obj & 0xFFFFFFFF8, ivar, v8, &v7);
    if (v7 < 2)
    {
      objc_storeStrong((obj + v8[0]), value);
    }

    else if (v7 == 3)
    {
      *(obj + v8[0]) = value;
    }

    else if (v7 == 2)
    {
      objc_storeWeak((obj + v8[0]), value);
    }
  }
}

uint64_t objc_object::sidetable_tryRetain(objc_object *this)
{
  v4 = -this;
  v3 = 4;
  if (v6)
  {
    return 1;
  }

  v1 = *(v5 + 8);
  if ((v1 & 2) == 0)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      *(v5 + 8) = v1 + 4;
    }

    return 1;
  }

  return 0;
}

uint64_t NXMapGet(uint64_t (***a1)(void), uint64_t a2)
{
  v4 = (**a1)(a1);
  v6 = 0;
  if (_NXMapMemberWithHash(a1, a2, v4, &v6) == -1)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t _mapStrHash(uint64_t a1, _BYTE *a2)
{
  if (a2 && (v2 = *a2, *a2))
  {
    v3 = 0;
    v4 = a2 + 4;
    do
    {
      v3 ^= v2;
      if (!*(v4 - 3))
      {
        break;
      }

      v3 ^= *(v4 - 3) << 8;
      if (!*(v4 - 2))
      {
        break;
      }

      v3 ^= *(v4 - 2) << 16;
      if (!*(v4 - 1))
      {
        break;
      }

      v3 ^= *(v4 - 1) << 24;
      v5 = *v4;
      v4 += 4;
      v2 = v5;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 + 65521 * (v3 ^ HIWORD(v3));
}

uint64_t getProtocol(const char *a1)
{
  v2 = protocols();
  PreoptimizedProtocol = NXMapGet(v2, a1);
  if (PreoptimizedProtocol)
  {
    return PreoptimizedProtocol;
  }

  PreoptimizedProtocol = getPreoptimizedProtocol();
  if (PreoptimizedProtocol)
  {
    return PreoptimizedProtocol;
  }

  v6 = copySwiftV1MangledName(a1, 1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = protocols();
  v4 = NXMapGet(v8, v7);
  if (!v4)
  {
    v4 = getPreoptimizedProtocol();
  }

  free(v7);
  return v4;
}

uint64_t getPreoptimizedProtocol()
{
  if (DisablePreopt || preoptimized != 1)
  {
    return 0;
  }

  _dyld_for_each_objc_protocol();
  return 0;
}

uint64_t __getPreoptimizedProtocol_block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  if (a3)
  {
    **(result + 32) = a2;
    *a4 = 1;
  }

  return result;
}

uint64_t objc_class::setInstancesRequireRawIsaRecursively(uint64_t this, char a2)
{
  if ((*(this + 30) & 0x2000) == 0)
  {
    v2 = this;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3321888768;
    v14 = ___ZN10objc_class36setInstancesRequireRawIsaRecursivelyEb_block_invoke;
    v15 = &__block_descriptor_48_e8_32c64_ZTSKZN10objc_class36setInstancesRequireRawIsaRecursivelyEbE3__0_e8_B16__0_8l;
    v16 = a2;
    v17 = this;
    v3 = *(gdb_objc_realized_classes + 8);
    if (DisablePreopt)
    {
      v4 = 0;
    }

    else
    {
      v4 = _dyld_objc_class_count();
    }

    v5 = (16 * (v4 + v3)) | 0xF;
    v6 = v2;
    while (1)
    {
      this = (v14)(&v12, v6);
      if (this && (v10 = (v6 + 32), *((*(v6 + 32) & 0xF00007FFFFFFFF8) + 0x10)))
      {
        v11 = 16;
      }

      else
      {
        while (1)
        {
          v10 = (v6 + 32);
          if (v6 == v2 || *((*(v6 + 32) & 0xF00007FFFFFFFF8) + 0x18))
          {
            break;
          }

          if (*(v6 + 8))
          {
            v6 = *(v6 + 8);
          }

          else
          {
            v6 = 0;
          }

          if (!--v5)
          {
            goto LABEL_19;
          }
        }

        if (v6 == v2)
        {
          return this;
        }

        v11 = 24;
      }

      v6 = *((*v10 & 0xF00007FFFFFFFF8) + v11);
      if (!--v5)
      {
LABEL_19:
        _objc_fatal("Memory corruption in class list.", v7, v8, v9, v12, v13);
      }
    }
  }

  return this;
}

uint64_t objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::find(uint64_t a1)
{
  v2 = 0;
  if (objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::LookupBucketFor<DisguisedPtr<objc_class>>(a1, &v2))
  {
    return v2;
  }

  else
  {
    return objc::unattachedCategories + 24 * dword_1ED3F6388;
  }
}

void objc::Scanner::scanAddedClassImpl(__objc2_class *this, objc_class *a2)
{
  v3 = (objc::NSObjectSwizzledMask >> a2) & 0x15;
  v4 = NSObject;
  if (a2)
  {
    v4 = &OBJC_METACLASS___NSObject;
  }

  if (v4 == this)
  {
    class_rw_t::methods(&v92, this->info & 0xF00007FFFFFFFF8);
    v89 = &v92;
    v21 = v92;
    if (!v92)
    {
      goto LABEL_23;
    }

    v22 = v92 & 3;
    if ((v92 & 3) == 0)
    {
      v90 = v92;
      goto LABEL_21;
    }

    if (v92 >= 4)
    {
      if (v22 != 2)
      {
        if (v22 == 1 && (v92 & 0xFFFFFFFFFFFFFFFCLL) != 0)
        {
          v90 = (v92 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        goto LABEL_21;
      }

      v36 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v92 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
LABEL_21:
        v97 = &v92;
        goto LABEL_25;
      }

      if (DisablePreattachedCategories)
      {
        v38 = *v36;
        v62 = v36[1];
        v76 = v62 * v38;
        if ((v76 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_166;
        }

        v77 = v38 | (v62 << 32);
        v78 = v36 + v76 + 8;
        v79 = v38 | ((v62 - 1) << 32);
        v80 = v62 == 0;
        if (v62)
        {
          v37 = v62;
        }

        else
        {
          v37 = 0;
        }

        if (v62)
        {
          v23 = (v78 - v38);
        }

        else
        {
          v23 = v78;
        }

        if (v80)
        {
          i = v77;
        }

        else
        {
          i = v79;
        }
      }

      else
      {
        v23 = (v36 + 2);
        i = *v36;
        v37 = v36[1];
        v38 = i;
      }

      v39 = v37 * v38;
      if ((v39 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v13, v14, v15, v37, v36, v38);
      }

      v40 = HIDWORD(i);
      v41 = v36 + v39 + 8;
      for (i = i; v23 < v41; v40 = (v40 + 1))
      {
        if (*(objc_debug_headerInfoRWs + 8 + 8 * *v23))
        {
          break;
        }

        v23 = (v23 + i);
      }

      v90 = v92 & 0xFFFFFFFFFFFFFFFCLL;
      v91 = i | (v40 << 32);
      v24 = 24;
    }

    else
    {
LABEL_23:
      v23 = 0;
      v24 = 8;
    }

    *(&v89 + v24) = v23;
    v97 = &v92;
    if (!v21)
    {
      v98 = 0;
      v93 = &v92;
      v94 = 0;
      goto LABEL_93;
    }

LABEL_25:
    v25 = v21;
    v26 = v21 & 3;
    if ((v21 & 3) != 0)
    {
      if (v21 <= 3)
      {
        v25 = 0;
        v98 = 0;
        goto LABEL_64;
      }

      if (v26 == 2)
      {
        v25 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v21 & 0xFFFFFFFFFFFFFFFCLL) != 0)
        {
          if (DisablePreattachedCategories)
          {
            v32 = *v25;
            v70 = v25[1];
            v71 = v70 * v32;
            if ((v71 & 0xFFFFFFFF00000000) != 0)
            {
              _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v13, v14, v15, v70, v21 & 0xFFFFFFFFFFFFFFFCLL, v32);
            }

            v72 = v32 | (v70 << 32);
            v73 = v25 + v71 + 8;
            v74 = v32 | ((v70 - 1) << 32);
            v75 = v70 == 0;
            if (v70)
            {
              v31 = v70;
            }

            else
            {
              v31 = 0;
            }

            if (v70)
            {
              v29 = (v73 - v32);
            }

            else
            {
              v29 = v73;
            }

            if (v75)
            {
              v30 = v72;
            }

            else
            {
              v30 = v74;
            }
          }

          else
          {
            v29 = (v25 + 2);
            v30 = *v25;
            v31 = v25[1];
            v32 = v30;
          }

          v33 = v31 * v32;
          if ((v33 & 0xFFFFFFFF00000000) != 0)
          {
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v13, v14, v15, v31, v21 & 0xFFFFFFFFFFFFFFFCLL, v32);
          }

          i = v25 + v33 + 8;
          if (v29 >= i)
          {
            v98 = v21 & 0xFFFFFFFFFFFFFFFCLL;
            v99 = v30;
            v100 = v29;
            v93 = &v92;
            goto LABEL_70;
          }

          v34 = v30;
          v35 = HIDWORD(v30);
          do
          {
            if (*(objc_debug_headerInfoRWs + 8 + 8 * *v29))
            {
              break;
            }

            v29 = (v29 + v34);
            v35 = (v35 + 1);
          }

          while (v29 < i);
          v98 = v21 & 0xFFFFFFFFFFFFFFFCLL;
          v99 = v34 | (v35 << 32);
          v100 = v29;
          i = &v92;
          v93 = &v92;
LABEL_65:
          if ((v21 & 3) <= 1)
          {
            if ((v21 & 3) == 0)
            {
              v94 = 0;
              if (v25)
              {
                goto LABEL_78;
              }

LABEL_93:
              list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator::ListIterator(v88, &v93);
              v54 = objc::Scanner::scanMethodLists<list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator>(&v89, v88);
              v11 = 0;
              v10 = 0;
              v8 = 0;
              goto LABEL_114;
            }

            v46 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
            if ((v21 & 0xFFFFFFFFFFFFFFFCLL) != 0)
            {
              v46 += 2 * *v46 + 2;
              v94 = v46;
            }

            if (v25 == v46)
            {
              goto LABEL_93;
            }

LABEL_78:
            v47 = *(class_rw_t::ro((this->info & 0xF00007FFFFFFFF8)) + 32);
            if (v47)
            {
              v48 = (v47 & 1) == 0;
            }

            else
            {
              v48 = 0;
            }

            if (!v48 && (v47 & 1) == 0)
            {
              goto LABEL_93;
            }

            if (v47 < 2)
            {
              goto LABEL_93;
            }

            v49 = *v93;
            if (!*v93)
            {
              goto LABEL_93;
            }

            v50 = *v93;
            if ((v49 & 3) != 0)
            {
              if ((*v93 & 3) == 1)
              {
                v94 -= 2;
                v49 = *v93;
                if (!*v93)
                {
                  goto LABEL_93;
                }
              }
            }

            else
            {
              v94 = *v93;
            }

            if ((v49 & 3) == 2)
            {
              v51 = HIDWORD(v95) - 1;
              v52 = (v96 - v95);
              do
              {
                v96 = v52;
                HIDWORD(v95) = v51;
                v53 = *(objc_debug_headerInfoRWs + 8 + 8 * *v52);
                --v51;
                v52 = (v52 - v95);
              }

              while ((v53 & 1) == 0);
            }

            goto LABEL_93;
          }

          if (v26 != 2)
          {
            goto LABEL_78;
          }

LABEL_70:
          v42 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if ((v21 & 0xFFFFFFFFFFFFFFFCLL) != 0)
          {
            v44 = *v42;
            v43 = v42[1];
            v45 = v43 * v44;
            if ((v45 & 0xFFFFFFFF00000000) != 0)
            {
              _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v13, v14, v15, v43, v42, v44);
            }

            i = v42 + v45 + 8;
            v94 = v42;
            v95 = v44 | (v43 << 32);
            v96 = i;
          }

          if (v29 == i)
          {
            goto LABEL_93;
          }

          goto LABEL_78;
        }

LABEL_64:
        v29 = &v92;
        v93 = &v92;
        goto LABEL_65;
      }

      if (v26 != 1 || (v21 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_64;
      }

      v25 = ((v21 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    else
    {
      v25 = v21;
    }

    v98 = v25;
    goto LABEL_64;
  }

  superclass = this->superclass;
  if (!superclass)
  {
    v8 = 0;
    v10 = 0;
    v11 = 0;
    LOBYTE(v3) = 21;
    goto LABEL_16;
  }

  v6 = this->superclass;
  vtable_high = HIWORD(superclass->vtable);
  v8 = (vtable_high & 0x4000) == 0;
  v9 = v3 | v8;
  v10 = (superclass->info & 4) == 0;
  if ((superclass->info & 4) == 0)
  {
    v9 = v3 | v8 | 4;
  }

  v11 = (vtable_high >> 15) ^ 1;
  if ((vtable_high & 0x8000u) != 0)
  {
    LODWORD(v3) = v9;
  }

  else
  {
    LODWORD(v3) = v9 | 0x10;
  }

  if (v3 == 21)
  {
    goto LABEL_16;
  }

  v12 = &v94;
  class_rw_t::methods(&v89, this->info & 0xF00007FFFFFFFF8);
  v97 = &v89;
  if (!v89)
  {
    v27 = 0;
    v98 = 0;
    v93 = &v89;
LABEL_112:
    *v12 = v27;
    goto LABEL_113;
  }

  v16 = &v98;
  v17 = v89;
  v18 = v89 & 3;
  if ((v89 & 3) == 0)
  {
    v19 = v89;
LABEL_14:
    v98 = v19;
    goto LABEL_103;
  }

  if (v89 < 4)
  {
    v28 = 0;
LABEL_42:
    *v16 = v28;
    goto LABEL_103;
  }

  if (v18 == 2)
  {
    v55 = (v89 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v89 & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      if (DisablePreattachedCategories)
      {
        v58 = *v55;
        v81 = v55[1];
        v82 = v81 * v58;
        if ((v82 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v13, v14, v15, v81, v89 & 0xFFFFFFFFFFFFFFFCLL, v58);
        }

        v83 = v58 | (v81 << 32);
        v84 = v55 + v82 + 8;
        v85 = v58 | ((v81 - 1) << 32);
        v86 = v81 == 0;
        if (v81)
        {
          v57 = v81;
        }

        else
        {
          v57 = 0;
        }

        if (v81)
        {
          v28 = (v84 - v58);
        }

        else
        {
          v28 = v84;
        }

        if (v86)
        {
          v56 = v83;
        }

        else
        {
          v56 = v85;
        }
      }

      else
      {
        v28 = (v55 + 2);
        v56 = *v55;
        v57 = v55[1];
        v58 = v56;
      }

      v59 = v57 * v58;
      if ((v59 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v13, v14, v15, v57, v89 & 0xFFFFFFFFFFFFFFFCLL, v58);
      }

      v16 = &v100;
      v60 = HIDWORD(v56);
      for (j = v55 + v59 + 8; v28 < j; v60 = (v60 + 1))
      {
        if (*(objc_debug_headerInfoRWs + 8 + 8 * *v28))
        {
          break;
        }

        v28 = (v28 + v56);
      }

      v98 = v89 & 0xFFFFFFFFFFFFFFFCLL;
      v99 = v56 | (v60 << 32);
      goto LABEL_42;
    }
  }

  else if (v18 == 1 && (v89 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v19 = ((v89 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    goto LABEL_14;
  }

LABEL_103:
  v93 = &v89;
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_113;
    }

    v36 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v36)
    {
      goto LABEL_113;
    }

    v38 = *v36;
    v62 = v36[1];
    v63 = v62 * v38;
    if ((v63 & 0xFFFFFFFF00000000) == 0)
    {
      v12 = &v96;
      v27 = v36 + v63 + 8;
      v94 = v36;
      v95 = v38 | (v62 << 32);
      goto LABEL_112;
    }

LABEL_166:
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v13, v14, v15, v62, v36, v38);
  }

  if (!v18)
  {
    v27 = 0;
    goto LABEL_112;
  }

  v64 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
  if (v64)
  {
    v27 = &v64[2 * *v64 + 2];
    goto LABEL_112;
  }

LABEL_113:
  v54 = objc::Scanner::scanMethodLists<list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator>(&v97, &v93);
LABEL_114:
  LOBYTE(v3) = v54 | v3;
  if ((v3 & 1) == 0)
  {
    atomic_fetch_or_explicit(&this->vtable + 3, 0x4000u, memory_order_relaxed);
    goto LABEL_116;
  }

LABEL_16:
  atomic_fetch_and_explicit(&this->vtable + 3, 0xBFFFu, memory_order_relaxed);
  if (PrintCustomAWZ)
  {
    objc::Scanner::printCustom("CUSTOM AWZ", this, v8);
  }

LABEL_116:
  p_info = &this->info;
  info = this->info;
  if ((v3 & 4) != 0)
  {
    v69 = this->info;
    atomic_compare_exchange_strong_explicit(p_info, &v69, info & 0xFFFFFFFFFFFFFFFBLL, memory_order_relaxed, memory_order_relaxed);
    if (v69 != info)
    {
      v87 = v69;
      do
      {
        atomic_compare_exchange_strong_explicit(p_info, &v87, v69 & 0xFFFFFFFFFFFFFFFBLL, memory_order_relaxed, memory_order_relaxed);
        v48 = v87 == v69;
        v69 = v87;
      }

      while (!v48);
    }

    if (PrintCustomRR)
    {
      objc::Scanner::printCustom("CUSTOM RR", this, v10);
    }
  }

  else
  {
    v67 = this->info;
    atomic_compare_exchange_strong_explicit(p_info, &v67, info | 4, memory_order_relaxed, memory_order_relaxed);
    if (v67 != info)
    {
      v68 = v67;
      do
      {
        atomic_compare_exchange_strong_explicit(p_info, &v68, v67 | 4, memory_order_relaxed, memory_order_relaxed);
        v48 = v68 == v67;
        v67 = v68;
      }

      while (!v48);
    }
  }

  if ((v3 & 0x10) == 0 || objc::Scanner::isSwiftObject(this, a2))
  {
    atomic_fetch_or_explicit(&this->vtable + 3, 0x8000u, memory_order_relaxed);
  }

  else
  {
    atomic_fetch_and_explicit(&this->vtable + 3, 0x7FFFu, memory_order_relaxed);
    if (PrintCustomCore)
    {
      objc::Scanner::printCustom("CUSTOM Core", this, v11);
    }
  }
}

void _finishInitializing(__objc2_class *a1, objc_class *a2)
{
  isa = a1->isa;
  if (&a1->isa[-1].info + 7 >= 0xF)
  {
    info = a1->info;
  }

  if (PrintInitializing)
  {
    v37 = *_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = objc_class::nameForLogging(a1);
    _objc_inform("INITIALIZE: thread %p: %s is fully +initialized", v37, v38);
    isa = a1->isa;
  }

  v5 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&runtimeLock, &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  objc::Scanner::scanAddedClassImpl(a1, 0);
  v7 = isa & 0xFFFFFFFF8;
  objc::Scanner::scanAddedClassImpl(v7, 1);
  cache_t::maybeConvertToPreoptimized(&a1->cache);
  cache_t::maybeConvertToPreoptimized((v7 + 16));
  if (PrintInitializing)
  {
    v11 = objc_class::nameForLogging(a1);
    _objc_inform("INITIALIZE: thread %p: setInitialized(%s)", *StatusReg, v11);
  }

  v12 = (*(v7 + 32) & 0xF00007FFFFFFFF8);
  do
  {
    v13 = *v12;
    v14 = *v12;
    atomic_compare_exchange_strong(v12, &v14, *v12 & 0xCFFFFFFF | 0x20000000);
  }

  while (v14 != v13);
  v15 = *(StatusReg + 24);
  v16 = v15;
  atomic_compare_exchange_strong_explicit(&runtimeLock, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != v15)
  {
    os_unfair_lock_unlock(&runtimeLock);
  }

  unlockClass(a1, v8, v9, v10);
  InitializingClassList = _fetchInitializingClassList(0);
  if (!InitializingClassList)
  {
    goto LABEL_21;
  }

  if (&a1->isa[-1].info + 7 < 0xF || (v21 = a1, (*(a1->info & 0xF00007FFFFFFFF8) & 1) == 0))
  {
    v21 = (a1->isa & 0xFFFFFFFF8);
  }

  v22 = *InitializingClassList;
  if (v22 < 1)
  {
LABEL_21:
    _objc_fatal("thread is not initializing this class!", v18, v19, v20);
  }

  v23 = 0;
  v24 = InitializingClassList[1];
  while (v21 != *(v24 + 8 * v23))
  {
    if (v22 == ++v23)
    {
      goto LABEL_21;
    }
  }

  *(v24 + 8 * v23) = 0;
  v25 = pendingInitializeMap;
  if (pendingInitializeMap)
  {
    v42 = 0;
    if (objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::LookupBucketFor<DisguisedPtr<objc_class>>(pendingInitializeMap, -a1, &v42))
    {
      v27 = v42;
    }

    else
    {
      if (*v25)
      {
        v28 = *v25;
      }

      v27 = (*v25 + 16 * *(v25 + 16));
    }

    v29 = pendingInitializeMap;
    v30 = *pendingInitializeMap;
    if (*pendingInitializeMap)
    {
      v31 = *pendingInitializeMap;
    }

    else
    {
      v31 = 0;
    }

    v32 = *(pendingInitializeMap + 16);
    if ((v31 + 16 * v32) != v27)
    {
      v33 = v27[1];
      *v27 = 2;
      v34 = vadd_s32(v29[1], 0x1FFFFFFFFLL);
      v29[1] = v34;
      if (v34.i32[0])
      {
        if (v32 >= 0x401 && v32 >> 4 > v34.i32[0])
        {
          objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::grow(v29, 2 * v34.i32[0]);
        }
      }

      else if (v32)
      {
        if (v30)
        {
          v36 = v30;
        }

        else
        {
          v36 = 0;
        }

        free(v36);
        objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::init(v29, 0);
      }

      else
      {
        v29[1] = 0;
      }

      v39 = pendingInitializeMap;
      if (!*(pendingInitializeMap + 8))
      {
        if (*pendingInitializeMap)
        {
          v40 = *pendingInitializeMap;
        }

        else
        {
          v40 = 0;
        }

        free(v40);
        free(v39);
        pendingInitializeMap = 0;
      }

      if (v33)
      {
        do
        {
          v41 = *(v33 + 8);
          if (*v33)
          {
            _finishInitializing(*v33, v26);
          }

          free(v33);
          v33 = v41;
        }

        while (v41);
      }
    }
  }
}

void sub_1800B13A8(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t objc::Scanner::scanMethodLists<list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator>(uint64_t a1, uint64_t a2)
{
  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator::ListIterator(&v98, a1);
  result = 0;
  v4 = v101;
  v5 = v102;
  v6 = *v98;
  while (1)
  {
LABEL_2:
    if (v6)
    {
      if ((v6 & 3u) > 1uLL)
      {
        if ((v6 & 3) != 2 || v5 >= *(a2 + 24))
        {
          return result;
        }

        goto LABEL_14;
      }

      if ((v6 & 3) != 0)
      {
        if (v99 >= *(a2 + 8))
        {
          return result;
        }

        goto LABEL_14;
      }
    }

    if (!v99)
    {
      return result;
    }

    if (*(a2 + 8))
    {
      break;
    }

    if (!v6)
    {
      goto LABEL_16;
    }

LABEL_14:
    v8 = v6;
    v9 = v6 & 3;
    if ((v8 & 3u) <= 1uLL)
    {
      if (v9)
      {
        v10 = *v99;
        if (!*v99)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_16:
        v10 = v99;
        if (!v99)
        {
          goto LABEL_24;
        }
      }

      if (v10)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if (v9 == 2)
    {
      v10 = (v5 + (*v5 >> 16));
      if (v10)
      {
LABEL_23:
        v11 = v10;
        goto LABEL_25;
      }
    }

LABEL_24:
    v11 = 0;
LABEL_25:
    v6 = *v98;
    if (*v98)
    {
      v12 = *v98;
      if ((v6 & 3) != 0)
      {
        if ((*v98 & 3) != 1)
        {
          goto LABEL_32;
        }

        v13 = v99 + 2;
      }

      else
      {
        v13 = 0;
      }

      v99 = v13;
      v6 = *v98;
      if (*v98)
      {
LABEL_32:
        if ((v6 & 3) == 2)
        {
          v14 = (v5 + v100);
          v102 = v14;
          v16 = *v99;
          v15 = v99[1];
          v17 = v15 * v16;
          v101 = ++v4;
          if ((v17 & 0xFFFFFFFF00000000) != 0)
          {
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", "retain", byte_1FA920D78, "allocWithZone:", "release", "autorelease", "_tryRetain", "_isDeallocating", v15, v99, v16);
          }

          v18 = v99 + v17 + 8;
          if (v14 < v18)
          {
            v19 = (v5 + 2 * v100);
            do
            {
              if (*(objc_debug_headerInfoRWs + 8 + 8 * *v14))
              {
                break;
              }

              v14 = (v14 + v100);
              v102 = v19;
              v101 = ++v4;
              v19 = (v19 + v100);
            }

            while (v14 < v18);
          }

          v5 = v14;
        }
      }
    }

    else
    {
      v99 = 0;
    }

    v20 = *v11;
    if ((v11 & 0x8000000000000000) != 0)
    {
      v42 = v20 & 0xFFFC;
      v43 = *(v11 + 4);
      v44 = v43 * v42;
      if ((v44 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", "retain", byte_1FA920D78, "allocWithZone:", "release", "autorelease", "_tryRetain", "_isDeallocating", v43, v11, v42);
      }

      v45 = v11 + 8;
      v46 = v45 & 0xFFFFFFFFFFFFFFFCLL;
      v47 = (v45 + v44) & 0xFFFFFFFFFFFFFFFCLL;
      if (v46 != v47)
      {
        v48 = v47 | 2;
        v49 = v46 | 2;
        do
        {
          v50 = v49;
          while (1)
          {
            v51 = *(v49 & 0xFFFFFFFFFFFFFFFCLL);
            if (v51)
            {
              v52 = *(v49 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if ((objc::InterestingSelectorZeroes & v51) == 0 && (objc::InterestingSelectorOnes & v51) == objc::InterestingSelectorOnes)
            {
              break;
            }

            v50 += v42;
            v49 += v42;
            if (v50 == v48)
            {
              goto LABEL_2;
            }
          }

          if ("alloc" == v51 || "allocWithZone:" == v51)
          {
            result = result | 1;
          }

          else if ("retain" == v51 || "release" == v51 || "autorelease" == v51 || "_tryRetain" == v51 || "_isDeallocating" == v51 || "retainCount" == v51 || "allowsWeakReference" == v51 || "retainWeakReference" == v51)
          {
            result = result | 4;
          }

          else if ("respondsToSelector:" == v51 || "isKindOfClass:" == v51 || "class" == v51 || "self" == v51 || &sel_new == v51)
          {
            result = result | 0x10;
          }

          else
          {
            result = result;
          }

          if (result == 21)
          {
            break;
          }

          v49 = v50 + v42;
        }

        while (v50 + v42 != v48);
      }
    }

    else if (v20 < 0)
    {
      v21 = v20 & 0xFFFC;
      v22 = *(v11 + 4);
      v57 = v22 * v21;
      if (dataSegmentsRanges > v11 || *algn_1ED3F62F8 <= v11)
      {
        if ((v57 & 0xFFFFFFFF00000000) != 0)
        {
LABEL_259:
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", "retain", byte_1FA920D78, "allocWithZone:", "release", "autorelease", "_tryRetain", "_isDeallocating", v22, v11, v21);
        }

        v78 = v11 + 8;
        v79 = v78 & 0xFFFFFFFFFFFFFFFCLL;
        v80 = (v78 + v57) & 0xFFFFFFFFFFFFFFFCLL;
        if (v79 != v80)
        {
          v81 = v80 | 1;
          v82 = v79 | 1;
          do
          {
            v83 = v82;
            while (1)
            {
              v84 = *((v82 & 0xFFFFFFFFFFFFFFFCLL) + *(v82 & 0xFFFFFFFFFFFFFFFCLL));
              if ((objc::InterestingSelectorZeroes & v84) == 0 && (objc::InterestingSelectorOnes & v84) == objc::InterestingSelectorOnes)
              {
                break;
              }

              v83 += v21;
              v82 += v21;
              if (v83 == v81)
              {
                goto LABEL_2;
              }
            }

            if ("alloc" == v84 || "allocWithZone:" == v84)
            {
              result = result | 1;
            }

            else if ("retain" == v84 || "release" == v84 || "autorelease" == v84 || "_tryRetain" == v84 || "_isDeallocating" == v84 || "retainCount" == v84 || "allowsWeakReference" == v84 || "retainWeakReference" == v84)
            {
              result = result | 4;
            }

            else if ("respondsToSelector:" == v84 || "isKindOfClass:" == v84 || "class" == v84 || "self" == v84 || &sel_new == v84)
            {
              result = result | 0x10;
            }

            else
            {
              result = result;
            }

            if (result == 21)
            {
              break;
            }

            v82 = v83 + v21;
          }

          while (v82 != v81);
        }
      }

      else
      {
        if ((v57 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_259;
        }

        v58 = v11 + 8;
        v59 = v58 & 0xFFFFFFFFFFFFFFFCLL;
        v60 = (v58 + v57) & 0xFFFFFFFFFFFFFFFCLL;
        if (v59 != v60)
        {
          v61 = v60 | 1;
          v62 = v59 | 1;
          do
          {
            v63 = v62;
            while (1)
            {
              v64 = &byte_1FA920D78[*(v62 & 0xFFFFFFFFFFFFFFFCLL)];
              if ((v64 & objc::InterestingSelectorZeroes) == 0 && (objc::InterestingSelectorOnes & v64) == objc::InterestingSelectorOnes)
              {
                break;
              }

              v63 += v21;
              v62 += v21;
              if (v63 == v61)
              {
                goto LABEL_2;
              }
            }

            if ("alloc" == v64 || "allocWithZone:" == v64)
            {
              result = result | 1;
            }

            else if ("retain" == v64 || "release" == v64 || "autorelease" == v64 || "_tryRetain" == v64 || "_isDeallocating" == v64 || "retainCount" == v64 || "allowsWeakReference" == v64 || "retainWeakReference" == v64)
            {
              result = result | 4;
            }

            else if ("respondsToSelector:" == v64 || "isKindOfClass:" == v64 || "class" == v64 || "self" == v64 || &sel_new == v64)
            {
              result = result | 0x10;
            }

            else
            {
              result = result;
            }

            if (result == 21)
            {
              break;
            }

            v62 = v63 + v21;
          }

          while (v63 + v21 != v61);
        }
      }
    }

    else
    {
      v21 = v20 & 0xFFFC;
      v22 = *(v11 + 4);
      v23 = v22 * v21;
      if ((v23 & 0xFFFFFFFF00000000) != 0)
      {
        goto LABEL_259;
      }

      v24 = v11 + 8;
      v25 = v24 & 0xFFFFFFFFFFFFFFFCLL;
      v26 = (v24 + v23) & 0xFFFFFFFFFFFFFFFCLL;
      while (v25 != v26)
      {
        v27 = v25;
        while (1)
        {
          v28 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
          if ((objc::InterestingSelectorZeroes & v28) == 0 && (objc::InterestingSelectorOnes & v28) == objc::InterestingSelectorOnes)
          {
            break;
          }

          v27 += v21;
          v25 += v21;
          if (v27 == v26)
          {
            goto LABEL_2;
          }
        }

        if ("alloc" == v28 || "allocWithZone:" == v28)
        {
          result = result | 1;
        }

        else
        {
          v31 = "retain" == v28 || "release" == v28;
          v32 = v31 || "autorelease" == v28;
          v33 = v32 || "_tryRetain" == v28;
          v34 = v33 || "_isDeallocating" == v28;
          v35 = v34 || "retainCount" == v28;
          v36 = v35 || "allowsWeakReference" == v28;
          if (v36 || "retainWeakReference" == v28)
          {
            result = result | 4;
          }

          else
          {
            v38 = "respondsToSelector:" == v28 || "isKindOfClass:" == v28;
            v39 = v38 || "class" == v28;
            v40 = v39 || "self" == v28;
            v41 = v40 || &sel_new == v28;
            result = v41 ? result | 0x10 : result;
          }
        }

        if (result == 21)
        {
          break;
        }

        v25 = v27 + v21;
      }
    }
  }

  v7 = *(a2 + 8);
  return result;
}

uint64_t load_images(uint64_t *a1)
{
  if (PrintImages)
  {
    v64 = a1[1];
    if (!v64)
    {
      v64 = "<null>";
    }

    _objc_inform("IMAGES: calling +load methods in %s\n", v64);
  }

  v2 = *a1;
  v3 = a1[2];
  if (_dyld_lookup_section_info())
  {
    v5 = v4 > 7;
  }

  else
  {
    v5 = 0;
  }

  if (v5 || ((result = _dyld_lookup_section_info()) != 0 ? (v8 = v7 >= 8) : (v8 = 0), v8))
  {
    os_unfair_recursive_lock_lock_with_options();
    v9 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v9, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      os_unfair_lock_lock_with_options();
    }

    loadAllCategoriesIfNeeded();
    v10 = *a1;
    v11 = a1[2];
    v13 = _dyld_lookup_section_info();
    if (v13 && v12 >= 8)
    {
      v14 = v12 >> 3;
      do
      {
        v15 = remapClass(*v13);
        schedule_class_load(v15);
        ++v13;
        --v14;
      }

      while (v14);
    }

    v17 = _dyld_lookup_section_info();
    if (v17 && v16 >= 8)
    {
      v18 = v16 >> 3;
      do
      {
        v19 = *v17;
        v20 = remapClass(*(*v17 + 8));
        if (v20)
        {
          if ((*(v20 + 4) & 2) != 0)
          {
            v65 = *v19;
            v66 = objc_class::nameForLogging(v20);
            _objc_fatal("Category %s on Swift class %s has +load method. Swift class extensions and categories on Swift classes are not allowed to have +load methods.", v67, v68, v69, v65, v66);
          }

          realizeClassWithoutSwift(v20, 0);
          LoadMethod = _category_getLoadMethod(v19, v21, v22, v23);
          if (LoadMethod)
          {
            if (PrintLoading)
            {
              v25 = remapClass(*(v19 + 8));
              v26 = objc_class::nameForLogging(v25);
              _objc_inform("LOAD: category '%s(%s)' scheduled for +load", v26, *v19);
            }

            v27 = loadable_categories_used;
            v28 = loadable_categories;
            if (loadable_categories_used == loadable_categories_allocated)
            {
              loadable_categories_allocated = 2 * loadable_categories_used + 16;
              v28 = malloc_type_realloc(loadable_categories, 16 * loadable_categories_allocated, 0xA0040AFF93C70uLL);
              loadable_categories = v28;
              v27 = loadable_categories_used;
            }

            v29 = &v28[16 * v27];
            *v29 = v19;
            v29[1] = LoadMethod;
            loadable_categories_used = v27 + 1;
          }
        }

        v17 += 8;
        --v18;
      }

      while (v18);
    }

    v30 = *(StatusReg + 24);
    v31 = v30;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v31, 0, memory_order_release, memory_order_relaxed);
    if (v31 != v30)
    {
      os_unfair_lock_unlock(runtimeLock);
    }

    if (call_load_methods::loading)
    {
LABEL_81:

      return os_unfair_recursive_lock_unlock();
    }

    call_load_methods::loading = 1;
    context = objc_autoreleasePoolPush();
    v32 = &objc_debug_taggedpointer_ext_classes[122];
    v33 = &objc_debug_taggedpointer_ext_classes[122];
    v34 = loadable_classes_used;
    while (1)
    {
      if (v34 >= 1)
      {
        do
        {
          v35 = v33[290];
          v33[290] = 0;
          loadable_classes_allocated = 0;
          *(v32 + 594) = 0;
          v36 = v35 + 1;
          do
          {
            v37 = *(v36 - 1);
            if (v37)
            {
              v38 = *v36;
              if (PrintLoading)
              {
                v39 = objc_class::nameForLogging(*(v36 - 1));
                _objc_inform("LOAD: +[%s load]\n", v39);
              }

              v38(v37, "load");
            }

            v36 += 2;
            --v34;
          }

          while (v34);
          free(v35);
          v34 = *(v32 + 594);
        }

        while (v34 > 0);
      }

      v40 = loadable_categories;
      v41 = loadable_categories_used;
      v42 = loadable_categories_allocated;
      loadable_categories = 0;
      loadable_categories_allocated = 0;
      loadable_categories_used = 0;
      if (v41 < 1)
      {
        v57 = 0;
        v56 = v41;
        if (!v41)
        {
          goto LABEL_68;
        }

        goto LABEL_71;
      }

      v43 = v40;
      v71 = v41;
      v44 = v41;
      do
      {
        v45 = *v43;
        if (*v43)
        {
          v46 = 0;
          v47 = v43[1];
          atomic_compare_exchange_strong_explicit(runtimeLock, &v46, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
          if (v46)
          {
            os_unfair_lock_lock_with_options();
          }

          v48 = remapClass(*(v45 + 8));
          v49 = *(StatusReg + 24);
          v50 = v49;
          atomic_compare_exchange_strong_explicit(runtimeLock, &v50, 0, memory_order_release, memory_order_relaxed);
          if (v50 != v49)
          {
            os_unfair_lock_unlock(runtimeLock);
          }

          if (v48)
          {
            if (PrintLoading)
            {
              v51 = objc_class::nameForLogging(v48);
              _objc_inform("LOAD: +[%s(%s) load]\n", v51, *v45);
            }

            v47(v48, "load");
            *v43 = 0;
          }
        }

        v43 += 2;
        --v44;
      }

      while (v44);
      v52 = 0;
      v53 = v40;
      v54 = v71;
      v32 = &objc_debug_taggedpointer_ext_classes[122];
      v33 = objc_debug_taggedpointer_ext_classes + 976;
      do
      {
        if (*v53)
        {
          *&v53[-2 * v52] = *v53;
        }

        else
        {
          ++v52;
        }

        v53 += 2;
        --v54;
      }

      while (v54);
      v55 = loadable_categories_used;
      v56 = v71 - v52;
      v57 = loadable_categories_used > 0;
      if (loadable_categories_used >= 1)
      {
        break;
      }

      v62 = loadable_categories;
      if (loadable_categories)
      {
        goto LABEL_67;
      }

      v57 = 0;
      if (!v56)
      {
LABEL_68:
        if (v40)
        {
          free(v40);
          v40 = 0;
        }

        v42 = 0;
      }

LABEL_71:
      loadable_categories = v40;
      loadable_categories_used = v56;
      loadable_categories_allocated = v42;
      if (v56 && PrintLoading)
      {
        _objc_inform("LOAD: %d categories still waiting for +load\n", v56);
      }

      v34 = *(v32 + 594);
      v63 = v34 > 0 || v57;
      if ((v63 & 1) == 0)
      {
        objc_autoreleasePoolPop(context);
        call_load_methods::loading = 0;
        goto LABEL_81;
      }
    }

    v72 = loadable_categories_used > 0;
    v58 = 0;
    v59 = 0;
    v60 = v56;
    v61 = 2 * v56;
    do
    {
      if (v60 == v42)
      {
        v42 = 2 * v42 + 16;
        v40 = malloc_type_realloc(v40, 16 * v42, 0xA0040AFF93C70uLL);
        v55 = loadable_categories_used;
      }

      v62 = loadable_categories;
      ++v60;
      *&v40[v61] = *(loadable_categories + v58);
      ++v59;
      v61 += 2;
      v58 += 16;
    }

    while (v59 < v55);
    v56 = v60;
    v32 = objc_debug_taggedpointer_ext_classes + 976;
    v33 = objc_debug_taggedpointer_ext_classes + 976;
    v57 = v72;
LABEL_67:
    free(v62);
    if (!v56)
    {
      goto LABEL_68;
    }

    goto LABEL_71;
  }

  return result;
}

void loadAllCategoriesIfNeeded()
{
  if ((didInitialAttachCategories & 1) == 0 && didCallDyldNotifyRegister == 1)
  {
    if (PrintImages)
    {
      _objc_inform("IMAGES: performing initial category attach\n");
    }

    v0 = FirstHeader;
    if (FirstHeader)
    {
      do
      {
        load_categories_nolock(v0);
        PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v0);
        v2 = (v0 + 24);
        if (PreoptimizedHeaderRW)
        {
          v2 = PreoptimizedHeaderRW;
        }

        v0 = (*v2 & 0xFFFFFFFFFFFFFFFCLL);
      }

      while (v0);
    }

    didInitialAttachCategories = 1;
  }
}

void load_categories_nolock(header_info *a1)
{
  v1 = a1;
  v23 = a1;
  v2 = (a1 + 8);
  v3 = *(a1 + *(a1 + 1) + 12);
  v4 = DisablePreattachedCategories == 0;
  v5 = v3 & v4;
  v22 = v3 & v4;
  v6 = dyld_shared_cache_some_image_overridden();
  v7 = v6;
  v21 = (*(v2 + *v2 + 4) & 0x40) != 0;
  v20 = 0;
  v19[0] = &v20;
  v19[1] = &v23;
  v19[2] = &v21;
  v19[3] = &v22;
  if ((didInitialAttachCategories & 1) == 0 && (v5 ? (v8 = v6 == 0) : (v8 = 0), v8))
  {
    if (PrintPreopt)
    {
      v9 = v1 + *v1;
      v10 = dyld_image_path_containing_address();
      _objc_inform("PREOPTIMIZATION: IGNORING preoptimized categories in image %p %s", v9, v10);
    }
  }

  else
  {
    if (PrintPreopt)
    {
      v17 = v1 + *v1;
      v18 = dyld_image_path_containing_address();
      _objc_inform("PREOPTIMIZATION: SCANNING categories in image %p %s - didInitialAttachCategories=%d hi->info()->dyldCategoriesOptimized()=%d hasRoot=%d", v17, v18, didInitialAttachCategories, *(v23 + *(v23 + 1) + 12) & 1, v7);
      v1 = v23;
    }

    v11 = header_info::catlist(v1, &v20);
    load_categories_nolock(header_info *)::$_0::operator()(v19, v11);
  }

  if (preoptimized != 1 || (*(v23 + *(v23 + 1) + 12) & 8) == 0 || *(headerInfoROs + 4) >= 0x18u)
  {
    v12 = v23 + *(v23 + 2) + 16;
  }

  v13 = *v23;
  v14 = _dyld_lookup_section_info();
  v16 = v15 >> 3;
  if (!v14)
  {
    v16 = 0;
  }

  v20 = v16;
  load_categories_nolock(header_info *)::$_0::operator()(v19, v14);
}

void load_categories_nolock(header_info *)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  if (**a1)
  {
    v4 = 0;
    v5 = 1;
    v6 = dataSegmentsRanges;
    v36 = *algn_1ED3F62F8;
    while (1)
    {
      v7 = *(a2 + 8 * v4);
      v8 = remapClass(v7[1]);
      v9 = **(a1 + 8);
      v37[0] = v7;
      v37[1] = v9;
      if (!v8)
      {
        if (PrintConnecting)
        {
          _objc_inform("CLASS: IGNORING category ???(%s) %p with missing weak-linked target class", *v7, v7);
        }

        goto LABEL_39;
      }

      v10 = v8;
      if (v8 == 195903495)
      {
        v27 = _headerForAddress(v7);
        if (v27)
        {
          v32 = *v27;
          v31 = dyld_image_path_containing_address();
        }

        else
        {
          v31 = "??";
        }

        _objc_fatal("Class of category %s at %p in %s is set to %p, indicating it is missing from an installed root", v28, v29, v30, *v7, v7, v31, 195903495);
      }

      if ((*v8 - 1) > 0xE)
      {
        break;
      }

      if (v7[2])
      {
        v11 = v7[2];
      }

      else if (!v7[4] && !v7[5])
      {
        if (v7[3])
        {
          v21 = v7[3];
        }

        else if (**(a1 + 16) != 1 || !v7[6])
        {
          goto LABEL_39;
        }
      }

      v12 = v7;
      v13 = v9;
      v14 = v10;
LABEL_38:
      objc::UnattachedCategories::addForClass(v12, v13, v14);
LABEL_39:
      v4 = v5;
      v15 = **a1 > v5++;
      if (!v15)
      {
        return;
      }
    }

    if ((didInitialAttachCategories & 1) == 0)
    {
      v15 = **(a1 + 24) != 1 || v6 > v8;
      if (!v15 && v36 > v8)
      {
        v19 = class_data_bits_t::safe_ro<(Authentication)0>(v8 + 4);
        if (v6 <= v19 && v36 > v19)
        {
          goto LABEL_39;
        }
      }
    }

    if (v7[2])
    {
      v17 = v7[2];
    }

    else if (!v7[4] && !v7[5])
    {
LABEL_30:
      if (v7[3])
      {
        v18 = v7[3];
      }

      else if (!v7[4] && (**(a1 + 16) != 1 || !v7[6]))
      {
        goto LABEL_39;
      }

      v14 = (*v10 & 0xFFFFFFFF8);
      if ((*v14 - 1) >= 0xF && (*((*v10 & 0xFFFFFFFF8) + 0x20) & 0x8000000000000000) != 0)
      {
        if (PrintConnecting)
        {
          v25 = *v7;
          v26 = objc_class::nameForLogging(v10);
          _objc_inform("CLASS: Attaching category (%s) %p to metaclass %s", v25, v7, v26);
          v14 = (*v10 & 0xFFFFFFFF8);
        }

        attachCategories(v14, v37, 1, v10, 10);
        goto LABEL_39;
      }

      if (PrintConnecting)
      {
        v34 = *v7;
        v23 = objc_class::nameForLogging(v10);
        _objc_inform("CLASS: Adding unattached category (%s) %p for metaclass %s", v34, v7, v23);
        v14 = (*v10 & 0xFFFFFFFF8);
      }

      v12 = v7;
      v13 = v9;
      goto LABEL_38;
    }

    if ((*v10 - 1) >= 0xF && (*(v10 + 4) & 0x8000000000000000) != 0)
    {
      if (PrintConnecting)
      {
        v35 = *v7;
        v24 = objc_class::nameForLogging(v10);
        _objc_inform("CLASS: Attaching category (%s) %p to class %s", v35, v7, v24);
      }

      attachCategories(v10, v37, 1, v10, 8);
    }

    else
    {
      if (PrintConnecting)
      {
        v33 = *v7;
        v22 = objc_class::nameForLogging(v10);
        _objc_inform("CLASS: Adding unattached category (%s) %p for class %s", v33, v7, v22);
      }

      objc::UnattachedCategories::addForClass(v7, v9, v10);
    }

    goto LABEL_30;
  }
}

uint64_t header_info::catlist(header_info *this, unint64_t *a2)
{
  if (preoptimized != 1 || (*(this + *(this + 1) + 12) & 8) == 0 || *(headerInfoROs + 4) >= 0x18u)
  {
    v3 = this + *(this + 2) + 16;
  }

  v4 = *this;
  result = _dyld_lookup_section_info();
  v7 = v6 >> 3;
  if (!result)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t schedule_class_load(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*((*(result + 32) & 0xF00007FFFFFFFF8) + 2) & 0x80) == 0)
    {
      if (*(result + 8))
      {
        v2 = *(result + 8);
      }

      else
      {
        v2 = 0;
      }

      schedule_class_load(v2);
      result = objc_class::getLoadMethod(v1);
      if (result)
      {
        v3 = result;
        if (PrintLoading)
        {
          v6 = objc_class::nameForLogging(v1);
          _objc_inform("LOAD: class '%s' scheduled for +load", v6);
        }

        v4 = loadable_classes_used;
        result = loadable_classes;
        if (loadable_classes_used == loadable_classes_allocated)
        {
          loadable_classes_allocated = 2 * loadable_classes_used + 16;
          result = malloc_type_realloc(loadable_classes, 16 * loadable_classes_allocated, 0x80040803F642BuLL);
          loadable_classes = result;
          v4 = loadable_classes_used;
        }

        v5 = (result + 16 * v4);
        *v5 = v1;
        v5[1] = v3;
        loadable_classes_used = v4 + 1;
      }

      atomic_fetch_or_explicit((*(v1 + 4) & 0xF00007FFFFFFFF8), 0x800000u, memory_order_relaxed);
    }
  }

  return result;
}

unint64_t objc_class::getLoadMethod(objc_class *this)
{
  v4 = *(class_rw_t::ro((*((*this & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8)) + 32);
  if (v4)
  {
    v5 = (v4 & 1) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }

    v6 = (v4 & 0xFFFFFFFFFFFFFFFELL);
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0)
    {
      return 0;
    }

    v7 = *v6;
    v8 = v6[1];
    v9 = v8 * v7;
    if ((v9 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v1, v2, v3, v8, v4 & 0xFFFFFFFFFFFFFFFELL, v7);
    }

    v10 = (v6 + 2);
    v11 = (v6 + v9 + 8);
    if (DisablePreattachedCategories)
    {
      if (!v8)
      {
        return 0;
      }

      v10 = (v11 - v7);
    }

    for (; v10 < v11; v10 = (v10 + v7))
    {
      if (*(objc_debug_headerInfoRWs + 8 + 8 * *v10))
      {
        break;
      }
    }

    if (v11 == v10)
    {
      return 0;
    }

    v12 = -v7;
    do
    {
      v11 = (v11 + v12);
    }

    while ((*(objc_debug_headerInfoRWs + 8 + 8 * *v11) & 1) == 0);
    v13 = v11 + (*v11 >> 16);
    if (!v13)
    {
      return 0;
    }

    v14 = *v13;
    if (*v13 > -1 || (v13 & 0x8000000000000000) != 0)
    {
      v16 = 24;
    }

    else
    {
      v16 = 12;
    }

    v17 = v14 & 0xFFFC;
    if ((~*v13 & 3) != 0 || v17 != v16)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        v121 = *(v13 + 4);
        v149 = v121 * (v14 & 0xFFFC);
        if ((v149 & 0xFFFFFFFF00000000) == 0)
        {
          v150 = v13 + 8;
          v151 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          v152 = (v150 + v149) & 0xFFFFFFFFFFFFFFFCLL;
          if (v151 == v152)
          {
            return 0;
          }

          v153 = v152 | 2;
          v154 = v151 | 2;
          v21 = v151 | 2;
          while (1)
          {
            v155 = *(v154 & 0xFFFFFFFFFFFFFFFCLL);
            if (v155)
            {
              v156 = *(v154 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (v155 == "load")
            {
              break;
            }

            v21 += v17;
            v154 += v17;
            if (v21 == v153)
            {
              return 0;
            }
          }

          goto LABEL_236;
        }
      }

      else if (v14 < 0)
      {
        if (dataSegmentsRanges > v13 || *algn_1ED3F62F8 <= v13)
        {
          v121 = *(v13 + 4);
          v163 = v121 * (v14 & 0xFFFC);
          if ((v163 & 0xFFFFFFFF00000000) == 0)
          {
            v164 = v13 + 8;
            v165 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
            v166 = (v164 + v163) & 0xFFFFFFFFFFFFFFFCLL;
            if (v165 == v166)
            {
              return 0;
            }

            v167 = v166 | 1;
            v168 = v165 | 1;
            v21 = v165 | 1;
            while (*((v168 & 0xFFFFFFFFFFFFFFFCLL) + *(v168 & 0xFFFFFFFFFFFFFFFCLL)) != "load")
            {
              v21 += v17;
              v168 += v17;
              if (v21 == v167)
              {
                return 0;
              }
            }

            goto LABEL_236;
          }
        }

        else
        {
          if (dataSegmentsRanges > "load" || *algn_1ED3F62F8 <= "load")
          {
            return 0;
          }

          v121 = *(v13 + 4);
          v157 = v121 * (v14 & 0xFFFC);
          if ((v157 & 0xFFFFFFFF00000000) == 0)
          {
            v158 = v13 + 8;
            v159 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
            v160 = (v158 + v157) & 0xFFFFFFFFFFFFFFFCLL;
            if (v159 == v160)
            {
              return 0;
            }

            v161 = v160 | 1;
            v162 = v159 | 1;
            v21 = v159 | 1;
            while ("load" != &byte_1FA920D78[*(v162 & 0xFFFFFFFFFFFFFFFCLL)])
            {
              v21 += v17;
              v162 += v17;
              if (v21 == v161)
              {
                return 0;
              }
            }

            goto LABEL_236;
          }
        }
      }

      else
      {
        v121 = *(v13 + 4);
        v139 = v121 * (v14 & 0xFFFC);
        if ((v139 & 0xFFFFFFFF00000000) == 0)
        {
          v140 = v13 + 8;
          v141 = v140 & 0xFFFFFFFFFFFFFFFCLL;
          v142 = (v140 + v139) & 0xFFFFFFFFFFFFFFFCLL;
          if ((v140 & 0xFFFFFFFFFFFFFFFCLL) == v142)
          {
            return 0;
          }

          v21 = v140 & 0xFFFFFFFFFFFFFFFCLL;
          while (*(v141 & 0xFFFFFFFFFFFFFFFCLL) != "load")
          {
            v21 += v17;
            v141 += v17;
            if (v21 == v142)
            {
              return 0;
            }
          }

          goto LABEL_236;
        }
      }

LABEL_309:
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v1, v2, v3, v121, v13, v17);
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      v69 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
      v70 = *(v13 + 4);
      if (v70 < 5)
      {
        v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
LABEL_158:
        if (!v70)
        {
          return 0;
        }

        v89 = v70 - 1;
        v90 = v21;
        while (1)
        {
          v91 = v89;
          v92 = *(v90 & 0xFFFFFFFFFFFFFFFCLL);
          if (v92)
          {
            v93 = *(v90 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if ("load" == v92)
          {
            break;
          }

          if ("load" >= v92)
          {
            v21 += v16;
            --v89;
            v90 += v16;
            if (v91)
            {
              continue;
            }
          }

          return 0;
        }

        goto LABEL_236;
      }

      v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
      while (1)
      {
        v22 = v21 + v16 * (v70 >> 1);
        v71 = *(v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v71)
        {
          v72 = *(v22 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if ("load" == v71)
        {
          break;
        }

        if ("load" > v71)
        {
          v21 = v22 + v16;
        }

        v73 = v70 - ("load" > v71);
        v70 = v73 >> 1;
        if (v73 <= 9)
        {
          goto LABEL_158;
        }
      }

      if (v22 > v69)
      {
        v106 = v21 + v16 * ((v70 >> 1) - 1);
        while (1)
        {
          v107 = *(v106 & 0xFFFFFFFFFFFFFFFCLL);
          if (v107)
          {
            v108 = *(v106 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if ("load" != v107)
          {
            break;
          }

          v22 -= v16;
          v106 -= v16;
          if (v22 <= v69)
          {
            goto LABEL_237;
          }
        }
      }
    }

    else if (v14 < 0)
    {
      if (dataSegmentsRanges > v13 || *algn_1ED3F62F8 <= v13)
      {
        v99 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
        v100 = *(v13 + 4);
        if (v100 < 5)
        {
          v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
LABEL_206:
          if (!v100)
          {
            return 0;
          }

          v110 = v100 - 1;
          v111 = v21;
          while (1)
          {
            v112 = *((v111 & 0xFFFFFFFFFFFFFFFCLL) + *(v111 & 0xFFFFFFFFFFFFFFFCLL));
            if ("load" == v112)
            {
              break;
            }

            v21 += v16;
            v113 = "load" < v112 || v110-- == 0;
            v111 += v16;
            if (v113)
            {
              return 0;
            }
          }

          goto LABEL_236;
        }

        v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
        while (1)
        {
          v22 = v21 + v16 * (v100 >> 1);
          v101 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + *(v22 & 0xFFFFFFFFFFFFFFFCLL));
          v102 = "load" > v101;
          if ("load" == v101)
          {
            break;
          }

          v103 = "load" > v101;
          if (v102)
          {
            v21 = v22 + v16;
          }

          v104 = v100 - v103;
          v100 = v104 >> 1;
          if (v104 <= 9)
          {
            goto LABEL_206;
          }
        }

        if (v22 > v99)
        {
          v114 = v21 + v16 * ((v100 >> 1) - 1);
          while ("load" == *((v114 & 0xFFFFFFFFFFFFFFFCLL) + *(v114 & 0xFFFFFFFFFFFFFFFCLL)))
          {
            v22 -= v16;
            v114 -= v16;
            if (v22 <= v99)
            {
              goto LABEL_237;
            }
          }
        }
      }

      else
      {
        if (dataSegmentsRanges > "load" || *algn_1ED3F62F8 <= "load")
        {
          return 0;
        }

        v78 = "load" - byte_1FA920D78;
        v79 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
        v80 = *(v13 + 4);
        if (v80 < 5)
        {
          v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
LABEL_221:
          if (!v80)
          {
            return 0;
          }

          v115 = v80 - 1;
          v116 = v21;
          while (1)
          {
            v117 = *(v116 & 0xFFFFFFFFFFFFFFFCLL);
            if (v78 == v117)
            {
              break;
            }

            v21 += v16;
            v118 = v78 < v117 || v115-- == 0;
            v116 += v16;
            if (v118)
            {
              return 0;
            }
          }

          goto LABEL_236;
        }

        v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
        while (1)
        {
          v22 = v21 + v16 * (v80 >> 1);
          v81 = *(v22 & 0xFFFFFFFFFFFFFFFCLL);
          v82 = v78 > v81;
          if (v78 == v81)
          {
            break;
          }

          v83 = v78 > v81;
          if (v82)
          {
            v21 = v22 + v16;
          }

          v84 = v80 - v83;
          v80 = v84 >> 1;
          if (v84 <= 9)
          {
            goto LABEL_221;
          }
        }

        if (v22 > v79)
        {
          v119 = v21 + v16 * ((v80 >> 1) - 1);
          while (v78 == *(v119 & 0xFFFFFFFFFFFFFFFCLL))
          {
            v22 -= v16;
            v119 -= v16;
            if (v22 <= v79)
            {
              goto LABEL_237;
            }
          }
        }
      }
    }

    else
    {
      v19 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v20 = *(v13 + 4);
      if (v20 < 5)
      {
        v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
LABEL_148:
        if (!v20)
        {
          return 0;
        }

        v85 = v20 - 1;
        v86 = v21;
        while (1)
        {
          v87 = *(v86 & 0xFFFFFFFFFFFFFFFCLL);
          if ("load" == v87)
          {
            break;
          }

          v21 += v16;
          v88 = "load" < v87 || v85-- == 0;
          v86 += v16;
          if (v88)
          {
            return 0;
          }
        }

        goto LABEL_236;
      }

      v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      while (1)
      {
        v22 = v21 + 24 * (v20 >> 1);
        v23 = *(v22 & 0xFFFFFFFFFFFFFFFCLL);
        v24 = "load" > v23;
        if ("load" == v23)
        {
          break;
        }

        v25 = "load" > v23;
        if (v24)
        {
          v21 = v22 + 24;
        }

        v26 = v20 - v25;
        v20 = v26 >> 1;
        if (v26 <= 9)
        {
          goto LABEL_148;
        }
      }

      if (v22 > v19)
      {
        v105 = v21 + 24 * (v20 >> 1) - 24;
        do
        {
          if ("load" != *(v105 & 0xFFFFFFFFFFFFFFFCLL))
          {
            break;
          }

          v22 -= 24;
          v105 -= 24;
        }

        while (v22 > v19);
        goto LABEL_237;
      }
    }

LABEL_235:
    v21 = v22;
    goto LABEL_236;
  }

  v13 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0)
  {
    return 0;
  }

  v27 = *v13;
  if (*v13 > -1 || v4 < 0)
  {
    v29 = 24;
  }

  else
  {
    v29 = 12;
  }

  v17 = v27 & 0xFFFC;
  if ((~*v13 & 3) == 0 && v17 == v29)
  {
    if (v4 < 0)
    {
      v37 = (v13 + 8) | 2;
      v38 = *(v13 + 4);
      if (v38 >= 5)
      {
        v21 = (v13 + 8) | 2;
        do
        {
          v22 = v21 + v29 * (v38 >> 1);
          v39 = *(v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v39)
          {
            v40 = *(v22 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if ("load" == v39)
          {
            if (v22 > v37)
            {
              v66 = v21 + v29 * ((v38 >> 1) - 1);
              while (1)
              {
                v67 = *(v66 & 0xFFFFFFFFFFFFFFFCLL);
                if (v67)
                {
                  v68 = *(v66 & 0xFFFFFFFFFFFFFFFCLL);
                }

                if ("load" != v67)
                {
                  break;
                }

                v22 -= v29;
                v66 -= v29;
                if (v22 <= v37)
                {
                  goto LABEL_237;
                }
              }
            }

            goto LABEL_235;
          }

          if ("load" > v39)
          {
            v21 = v22 + v29;
          }

          v41 = v38 - ("load" > v39);
          v38 = v41 >> 1;
        }

        while (v41 > 9);
        if (v38)
        {
          goto LABEL_89;
        }

        return 0;
      }

      v21 = (v13 + 8) | 2;
      if (v38)
      {
LABEL_89:
        v53 = v38 - 1;
        v54 = v21;
        while (1)
        {
          v55 = v53;
          v56 = *(v54 & 0xFFFFFFFFFFFFFFFCLL);
          if (v56)
          {
            v57 = *(v54 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if ("load" == v56)
          {
            break;
          }

          if ("load" >= v56)
          {
            v21 += v29;
            --v53;
            v54 += v29;
            if (v55)
            {
              continue;
            }
          }

          return 0;
        }

        goto LABEL_236;
      }
    }

    else
    {
      if (v27 < 0)
      {
        if (dataSegmentsRanges <= v13 && *algn_1ED3F62F8 > v13)
        {
          if (dataSegmentsRanges > "load" || *algn_1ED3F62F8 <= "load")
          {
            return 0;
          }

          v58 = "load" - byte_1FA920D78;
          v59 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          v60 = *(v13 + 4);
          if (v60 < 5)
          {
            v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
LABEL_172:
            if (!v60)
            {
              return 0;
            }

            v95 = v60 - 1;
            v96 = v21;
            while (1)
            {
              v97 = *(v96 & 0xFFFFFFFFFFFFFFFCLL);
              if (v58 == v97)
              {
                break;
              }

              v21 += v29;
              v98 = v58 < v97 || v95-- == 0;
              v96 += v29;
              if (v98)
              {
                return 0;
              }
            }

            goto LABEL_236;
          }

          v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          while (1)
          {
            v22 = v21 + v29 * (v60 >> 1);
            v61 = *(v22 & 0xFFFFFFFFFFFFFFFCLL);
            v62 = v58 > v61;
            if (v58 == v61)
            {
              break;
            }

            v63 = v58 > v61;
            if (v62)
            {
              v21 = v22 + v29;
            }

            v64 = v60 - v63;
            v60 = v64 >> 1;
            if (v64 <= 9)
            {
              goto LABEL_172;
            }
          }

          if (v22 > v59)
          {
            v109 = v21 + v29 * ((v60 >> 1) - 1);
            while (v58 == *(v109 & 0xFFFFFFFFFFFFFFFCLL))
            {
              v22 -= v29;
              v109 -= v29;
              if (v22 <= v59)
              {
                goto LABEL_237;
              }
            }
          }
        }

        else
        {
          v43 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          v44 = *(v13 + 4);
          if (v44 < 5)
          {
            v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
LABEL_127:
            if (!v44)
            {
              return 0;
            }

            v74 = v44 - 1;
            v75 = v21;
            while (1)
            {
              v76 = *((v75 & 0xFFFFFFFFFFFFFFFCLL) + *(v75 & 0xFFFFFFFFFFFFFFFCLL));
              if ("load" == v76)
              {
                break;
              }

              v21 += v29;
              v77 = "load" < v76 || v74-- == 0;
              v75 += v29;
              if (v77)
              {
                return 0;
              }
            }

            goto LABEL_236;
          }

          v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          while (1)
          {
            v22 = v21 + v29 * (v44 >> 1);
            v45 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + *(v22 & 0xFFFFFFFFFFFFFFFCLL));
            v46 = "load" > v45;
            if ("load" == v45)
            {
              break;
            }

            v47 = "load" > v45;
            if (v46)
            {
              v21 = v22 + v29;
            }

            v48 = v44 - v47;
            v44 = v48 >> 1;
            if (v48 <= 9)
            {
              goto LABEL_127;
            }
          }

          if (v22 > v43)
          {
            v94 = v21 + v29 * ((v44 >> 1) - 1);
            while ("load" == *((v94 & 0xFFFFFFFFFFFFFFFCLL) + *(v94 & 0xFFFFFFFFFFFFFFFCLL)))
            {
              v22 -= v29;
              v94 -= v29;
              if (v22 <= v43)
              {
                goto LABEL_237;
              }
            }
          }
        }

        goto LABEL_235;
      }

      v31 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v32 = *(v13 + 4);
      if (v32 >= 5)
      {
        v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        while (1)
        {
          v22 = v21 + 24 * (v32 >> 1);
          v33 = *(v22 & 0xFFFFFFFFFFFFFFFCLL);
          v34 = "load" > v33;
          if ("load" == v33)
          {
            break;
          }

          v35 = "load" > v33;
          if (v34)
          {
            v21 = v22 + 24;
          }

          v36 = v32 - v35;
          v32 = v36 >> 1;
          if (v36 <= 9)
          {
            if (v32)
            {
              goto LABEL_80;
            }

            return 0;
          }
        }

        if (v22 <= v31)
        {
          goto LABEL_235;
        }

        v65 = v21 + 24 * (v32 >> 1) - 24;
        do
        {
          if ("load" != *(v65 & 0xFFFFFFFFFFFFFFFCLL))
          {
            break;
          }

          v22 -= 24;
          v65 -= 24;
        }

        while (v22 > v31);
        goto LABEL_237;
      }

      v21 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      if (v32)
      {
LABEL_80:
        v49 = v32 - 1;
        v50 = v21;
        while (1)
        {
          v51 = *(v50 & 0xFFFFFFFFFFFFFFFCLL);
          if ("load" == v51)
          {
            break;
          }

          v21 += v29;
          v52 = "load" < v51 || v49-- == 0;
          v50 += v29;
          if (v52)
          {
            return 0;
          }
        }

        goto LABEL_236;
      }
    }

    return 0;
  }

  if (v4 < 0)
  {
    v121 = *(v13 + 4);
    v126 = v121 * (v27 & 0xFFFC);
    if ((v126 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_309;
    }

    v127 = v13 + 8;
    v128 = v127 | 2;
    v129 = (v127 + v126) & 0xFFFFFFFFFFFFFFFCLL | 2;
    if ((v127 | 2) == v129)
    {
      return 0;
    }

    v21 = v127 | 2;
    while (1)
    {
      v130 = *(v128 & 0xFFFFFFFFFFFFFFFCLL);
      if (v130)
      {
        v131 = *(v128 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v130 == "load")
      {
        break;
      }

      v21 += v17;
      v128 += v17;
      if (v21 == v129)
      {
        return 0;
      }
    }
  }

  else if (v27 < 0)
  {
    if (dataSegmentsRanges <= v13 && *algn_1ED3F62F8 > v13)
    {
      if (dataSegmentsRanges > "load" || *algn_1ED3F62F8 <= "load")
      {
        return 0;
      }

      v121 = *(v13 + 4);
      v143 = v121 * (v27 & 0xFFFC);
      if ((v143 & 0xFFFFFFFF00000000) == 0)
      {
        v144 = v13 + 8;
        v145 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        v146 = (v144 + v143) & 0xFFFFFFFFFFFFFFFCLL;
        if (v145 == v146)
        {
          return 0;
        }

        v147 = v146 | 1;
        v148 = v145 | 1;
        v21 = v145 | 1;
        while ("load" != &byte_1FA920D78[*(v148 & 0xFFFFFFFFFFFFFFFCLL)])
        {
          v21 += v17;
          v148 += v17;
          if (v21 == v147)
          {
            return 0;
          }
        }

        goto LABEL_236;
      }

      goto LABEL_309;
    }

    v121 = *(v13 + 4);
    v133 = v121 * (v27 & 0xFFFC);
    if ((v133 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_309;
    }

    v134 = v13 + 8;
    v135 = (v13 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v136 = (v134 + v133) & 0xFFFFFFFFFFFFFFFCLL;
    if (v135 == v136)
    {
      return 0;
    }

    v137 = v136 | 1;
    v138 = v135 | 1;
    v21 = v135 | 1;
    while (*((v138 & 0xFFFFFFFFFFFFFFFCLL) + *(v138 & 0xFFFFFFFFFFFFFFFCLL)) != "load")
    {
      v21 += v17;
      v138 += v17;
      if (v21 == v137)
      {
        return 0;
      }
    }
  }

  else
  {
    v121 = *(v13 + 4);
    v122 = v121 * (v27 & 0xFFFC);
    if ((v122 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_309;
    }

    v123 = v13 + 8;
    v124 = v123 & 0xFFFFFFFFFFFFFFFCLL;
    v125 = (v123 + v122) & 0xFFFFFFFFFFFFFFFCLL;
    if ((v123 & 0xFFFFFFFFFFFFFFFCLL) == v125)
    {
      return 0;
    }

    v21 = v123 & 0xFFFFFFFFFFFFFFFCLL;
    while (*(v124 & 0xFFFFFFFFFFFFFFFCLL) != "load")
    {
      v21 += v17;
      v124 += v17;
      if (v21 == v125)
      {
        return 0;
      }
    }
  }

LABEL_236:
  v22 = v21;
  if (!v21)
  {
    return 0;
  }

LABEL_237:

  return method_t::imp(v22, 0);
}

unint64_t _category_getLoadMethod(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (*v4 > -1 || (v4 & 0x8000000000000000) != 0)
  {
    v7 = 24;
  }

  else
  {
    v7 = 12;
  }

  v8 = v5 & 0xFFFC;
  if ((~*v4 & 3) == 0 && v8 == v7)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      v18 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
      v19 = *(v4 + 4);
      if (v19 >= 5)
      {
        v12 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
        do
        {
          v13 = v12 + v7 * (v19 >> 1);
          v20 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if ("load" == v20)
          {
            if (v13 > v18)
            {
              v46 = v12 + v7 * ((v19 >> 1) - 1);
              while (1)
              {
                v47 = *(v46 & 0xFFFFFFFFFFFFFFFCLL);
                if (v47)
                {
                  v48 = *(v46 & 0xFFFFFFFFFFFFFFFCLL);
                }

                if ("load" != v47)
                {
                  break;
                }

                v13 -= v7;
                v46 -= v7;
                if (v13 <= v18)
                {
                  goto LABEL_112;
                }
              }
            }

            goto LABEL_110;
          }

          if ("load" > v20)
          {
            v12 = v13 + v7;
          }

          v22 = v19 - ("load" > v20);
          v19 = v22 >> 1;
        }

        while (v22 > 9);
        if (v19)
        {
          goto LABEL_54;
        }

        return 0;
      }

      v12 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
      if (v19)
      {
LABEL_54:
        v34 = v19 - 1;
        v35 = v12;
        while (1)
        {
          v36 = v34;
          v37 = *(v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *(v35 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if ("load" == v37)
          {
            break;
          }

          if ("load" >= v37)
          {
            v12 += v7;
            --v34;
            v35 += v7;
            if (v36)
            {
              continue;
            }
          }

          return 0;
        }

        goto LABEL_111;
      }
    }

    else
    {
      if (v5 < 0)
      {
        if (dataSegmentsRanges > v4 || *algn_1ED3F62F8 <= v4)
        {
          v39 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          v40 = *(v4 + 4);
          if (v40 < 5)
          {
            v12 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
LABEL_81:
            if (!v40)
            {
              return 0;
            }

            v49 = v40 - 1;
            v50 = v12;
            while (1)
            {
              v51 = *((v50 & 0xFFFFFFFFFFFFFFFCLL) + *(v50 & 0xFFFFFFFFFFFFFFFCLL));
              if ("load" == v51)
              {
                break;
              }

              v12 += v7;
              v52 = "load" < v51 || v49-- == 0;
              v50 += v7;
              if (v52)
              {
                return 0;
              }
            }

            goto LABEL_111;
          }

          v12 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          while (1)
          {
            v13 = v12 + v7 * (v40 >> 1);
            v41 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + *(v13 & 0xFFFFFFFFFFFFFFFCLL));
            v42 = "load" > v41;
            if ("load" == v41)
            {
              break;
            }

            v43 = "load" > v41;
            if (v42)
            {
              v12 = v13 + v7;
            }

            v44 = v40 - v43;
            v40 = v44 >> 1;
            if (v44 <= 9)
            {
              goto LABEL_81;
            }
          }

          if (v13 > v39)
          {
            v53 = v12 + v7 * ((v40 >> 1) - 1);
            while ("load" == *((v53 & 0xFFFFFFFFFFFFFFFCLL) + *(v53 & 0xFFFFFFFFFFFFFFFCLL)))
            {
              v13 -= v7;
              v53 -= v7;
              if (v13 <= v39)
              {
                goto LABEL_112;
              }
            }
          }
        }

        else
        {
          if (dataSegmentsRanges > "load" || *algn_1ED3F62F8 <= "load")
          {
            return 0;
          }

          v23 = "load" - byte_1FA920D78;
          v24 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          v25 = *(v4 + 4);
          if (v25 < 5)
          {
            v12 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
LABEL_96:
            if (!v25)
            {
              return 0;
            }

            v54 = v25 - 1;
            v55 = v12;
            while (1)
            {
              v56 = *(v55 & 0xFFFFFFFFFFFFFFFCLL);
              if (v23 == v56)
              {
                break;
              }

              v12 += v7;
              v57 = v23 < v56 || v54-- == 0;
              v55 += v7;
              if (v57)
              {
                return 0;
              }
            }

            goto LABEL_111;
          }

          v12 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          while (1)
          {
            v13 = v12 + v7 * (v25 >> 1);
            v26 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
            v27 = v23 > v26;
            if (v23 == v26)
            {
              break;
            }

            v28 = v23 > v26;
            if (v27)
            {
              v12 = v13 + v7;
            }

            v29 = v25 - v28;
            v25 = v29 >> 1;
            if (v29 <= 9)
            {
              goto LABEL_96;
            }
          }

          if (v13 > v24)
          {
            v58 = v12 + v7 * ((v25 >> 1) - 1);
            while (v23 == *(v58 & 0xFFFFFFFFFFFFFFFCLL))
            {
              v13 -= v7;
              v58 -= v7;
              if (v13 <= v24)
              {
                goto LABEL_112;
              }
            }
          }
        }

LABEL_110:
        v12 = v13;
        goto LABEL_111;
      }

      v10 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = *(v4 + 4);
      if (v11 >= 5)
      {
        v12 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        while (1)
        {
          v13 = v12 + 24 * (v11 >> 1);
          v14 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
          v15 = "load" > v14;
          if ("load" == v14)
          {
            break;
          }

          v16 = "load" > v14;
          if (v15)
          {
            v12 = v13 + 24;
          }

          v17 = v11 - v16;
          v11 = v17 >> 1;
          if (v17 <= 9)
          {
            if (v11)
            {
              goto LABEL_45;
            }

            return 0;
          }
        }

        if (v13 <= v10)
        {
          goto LABEL_110;
        }

        v45 = v12 + 24 * (v11 >> 1) - 24;
        do
        {
          if ("load" != *(v45 & 0xFFFFFFFFFFFFFFFCLL))
          {
            break;
          }

          v13 -= 24;
          v45 -= 24;
        }

        while (v13 > v10);
        goto LABEL_112;
      }

      v12 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      if (v11)
      {
LABEL_45:
        v30 = v11 - 1;
        v31 = v12;
        while (1)
        {
          v32 = *(v31 & 0xFFFFFFFFFFFFFFFCLL);
          if ("load" == v32)
          {
            break;
          }

          v12 += v7;
          v33 = "load" < v32 || v30-- == 0;
          v31 += v7;
          if (v33)
          {
            return 0;
          }
        }

        goto LABEL_111;
      }
    }

    return 0;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    v60 = *(v4 + 4);
    v64 = v60 * (v5 & 0xFFFC);
    if ((v64 & 0xFFFFFFFF00000000) == 0)
    {
      v65 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v66 = (v4 + 8 + v64) & 0xFFFFFFFFFFFFFFFCLL;
      if (v65 == v66)
      {
        return 0;
      }

      v67 = v66 | 2;
      v68 = v65 | 2;
      v12 = v65 | 2;
      while (1)
      {
        v69 = *(v68 & 0xFFFFFFFFFFFFFFFCLL);
        if (v69)
        {
          v70 = *(v68 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v69 == "load")
        {
          break;
        }

        v12 += v8;
        v68 += v8;
        if (v12 == v67)
        {
          return 0;
        }
      }

      goto LABEL_111;
    }

LABEL_147:
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v60, v4, v8);
  }

  if (v5 < 0)
  {
    if (dataSegmentsRanges > v4 || *algn_1ED3F62F8 <= v4)
    {
      v60 = *(v4 + 4);
      v76 = v60 * (v5 & 0xFFFC);
      if ((v76 & 0xFFFFFFFF00000000) == 0)
      {
        v77 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        v78 = (v4 + 8 + v76) & 0xFFFFFFFFFFFFFFFCLL;
        if (v77 == v78)
        {
          return 0;
        }

        v79 = v78 | 1;
        v80 = v77 | 1;
        v12 = v77 | 1;
        while (*((v80 & 0xFFFFFFFFFFFFFFFCLL) + *(v80 & 0xFFFFFFFFFFFFFFFCLL)) != "load")
        {
          v12 += v8;
          v80 += v8;
          if (v12 == v79)
          {
            return 0;
          }
        }

        goto LABEL_111;
      }
    }

    else
    {
      if (dataSegmentsRanges > "load" || *algn_1ED3F62F8 <= "load")
      {
        return 0;
      }

      v60 = *(v4 + 4);
      v71 = v60 * (v5 & 0xFFFC);
      if ((v71 & 0xFFFFFFFF00000000) == 0)
      {
        v72 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        v73 = (v4 + 8 + v71) & 0xFFFFFFFFFFFFFFFCLL;
        if (v72 == v73)
        {
          return 0;
        }

        v74 = v73 | 1;
        v75 = v72 | 1;
        v12 = v75;
        while ("load" != &byte_1FA920D78[*(v75 & 0xFFFFFFFFFFFFFFFCLL)])
        {
          v12 += v8;
          v75 += v8;
          if (v12 == v74)
          {
            return 0;
          }
        }

        goto LABEL_111;
      }
    }

    goto LABEL_147;
  }

  v60 = *(v4 + 4);
  v61 = v60 * (v5 & 0xFFFC);
  if ((v61 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_147;
  }

  v62 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
  v63 = (v4 + 8 + v61) & 0xFFFFFFFFFFFFFFFCLL;
  if (v62 == v63)
  {
    return 0;
  }

  v12 = (v4 + 8) & 0xFFFFFFFFFFFFFFFCLL;
  while (*(v62 & 0xFFFFFFFFFFFFFFFCLL) != "load")
  {
    v12 += v8;
    v62 += v8;
    if (v12 == v63)
    {
      return 0;
    }
  }

LABEL_111:
  v13 = v12;
  if (!v12)
  {
    return 0;
  }

LABEL_112:

  return method_t::imp(v13, 0);
}

void list_array_tt<property_t,property_list_t,RawPtr>::attachLists(unint64_t *a1, uint64_t a2, const char *a3, char *a4, const char *a5)
{
  if (!a3)
  {
    return;
  }

  v6 = a3;
  v7 = a2;
  v9 = *a1;
  if (a4)
  {
    if (v9)
    {
      if ((*a1 & 3) == 2 && (v9 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        if (a5)
        {
          _objc_inform("PREOPTIMIZATION: not attaching preoptimized category, class's %s list %p is still original.", a5, (v9 & 0xFFFFFFFFFFFFFFFCLL));
        }

        return;
      }
    }

    if (a5)
    {
      _objc_inform("PREOPTIMIZATION: copying preoptimized category, class's %s list has already been copied.", a5);
      v9 = *a1;
      if (*a1)
      {
        goto LABEL_11;
      }

LABEL_49:
      if (v6 != 1)
      {
LABEL_52:
        v12 = 0;
        goto LABEL_53;
      }

      goto LABEL_50;
    }
  }

  if (!v9)
  {
    goto LABEL_49;
  }

LABEL_11:
  v11 = v9;
  v12 = v9;
  if (v6 == 1 && v9 <= 3)
  {
LABEL_50:
    v24 = *v7;
    goto LABEL_51;
  }

  if (v9 < 4)
  {
    if (!v9)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v13 = v9 & 3;
  if ((v11 & 3) > 1)
  {
    if (v13 != 2)
    {
      return;
    }

    v25 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v11 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      return;
    }

    if (DisablePreattachedCategories)
    {
      v28 = *v25;
      v27 = v25[1];
      v50 = v27 * v28;
      if ((v50 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v27, v25, *v25);
      }

      v51 = v25 + v50 + 8;
      v52 = v27 == 0;
      if (v27)
      {
        v27 = v27;
      }

      else
      {
        v27 = 0;
      }

      if (v52)
      {
        j = v51;
      }

      else
      {
        j = (v51 - v28);
      }
    }

    else
    {
      j = (v25 + 2);
      v28 = *v25;
      v27 = v25[1];
    }

    v29 = v27 * v28;
    if ((v29 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v27, v25, v28);
    }

    for (i = v25 + v29 + 8; j < i; j = (j + v28))
    {
      if (*(objc_debug_headerInfoRWs + 8 + 8 * *j))
      {
        break;
      }
    }

    v31 = relative_list_list_t<method_list_t>::countLists(v25, a2, a3, a4) + v6;
    v32 = malloc_type_malloc(8 * v31 + 8, 0x1000040D9BFD5C6uLL);
    *v32 = v31;
    v33 = (v32 + 8);
    v34 = v6;
    v35 = (v32 + 8);
    v36 = v6;
    do
    {
      v37 = *v7++;
      *v35++ = v37;
      --v36;
    }

    while (v36);
    v38 = v25 + 2;
    v39 = &runtimeLock;
    if (v31 > v6)
    {
      do
      {
        v40 = *j;
        if (a5)
        {
          v44 = v32;
          _objc_inform("PREOPTIMIZATION: copying preoptimized %s list %p", a5, j + (v40 >> 16));
          v39 = &runtimeLock;
          v38 = v25 + 2;
          v32 = v44;
          v40 = *j;
        }

        *&v33[2 * v34] = j + (v40 >> 16);
        v41 = v25[1];
        v42 = v41 * *v25;
        if ((v42 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v41, v25, *v25);
        }

        v43 = v38 + v42;
        for (j = (j + v28); j < v43; j = (j + v28))
        {
          if (*(*(v39 + 264) + 8 + 8 * *j))
          {
            break;
          }
        }

        ++v34;
      }

      while (v34 != v31);
    }

    v24 = v32 | 1;
  }

  else
  {
    if (!v13)
    {
LABEL_53:
      if (v12)
      {
        v45 = v6 + 1;
      }

      else
      {
        v45 = v6;
      }

      v46 = malloc_type_malloc(8 * v45 + 8, 0x1000040D9BFD5C6uLL);
      *a1 = v46 | 1;
      *v46 = v45;
      v47 = v6;
      if (v12)
      {
        *(v46 + 8 * v6 + 8) = v12;
      }

      v48 = (v46 + 8);
      do
      {
        v49 = *v7++;
        *v48++ = v49;
        --v47;
      }

      while (v47);
      goto LABEL_60;
    }

    v14 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v11 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      return;
    }

    v15 = *v14;
    v16 = *v14 + v6;
    v17 = malloc_type_malloc(8 * v16 + 8, 0x1000040D9BFD5C6uLL);
    v18 = v17;
    *v17 = v16;
    if (v15 - 1 >= 0)
    {
      v19 = 8 * (v15 - 1) + 8;
      v20 = v16 - 1;
      do
      {
        *&v17[2 * v20-- + 2] = *(v14 + v19);
        v19 -= 8;
      }

      while (v19);
    }

    v21 = v17 + 2;
    v22 = v6;
    do
    {
      v23 = *v7++;
      *v21++ = v23;
      --v22;
    }

    while (v22);
    free(v14);
    v24 = v18 | 1;
  }

LABEL_51:
  *a1 = v24;
LABEL_60:

  list_array_tt<property_t,property_list_t,RawPtr>::validate(a1, a2, a3, a4);
}

unint64_t *class_rw_t::extAlloc(class_rw_t *this, const class_ro_t *a2, int a3)
{
  v5 = malloc_type_calloc(0x30uLL, 1uLL, 0x1070040E89AEE90uLL);
  v10 = v5;
  *(v5 + 10) = ((*a2 << 31) >> 31) & 7;
  v11 = *(a2 + 4);
  if (v11)
  {
    v12 = (*(a2 + 4) & 1) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v19 = *(a2 + 4);
    v39 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if ((v11 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      if (a3)
      {
        v39 = method_list_t::duplicate((v11 & 0xFFFFFFFFFFFFFFFELL), v6, v7, v8);
      }

      if (PrintPreopt)
      {
        v20 = "methods";
      }

      else
      {
        v20 = 0;
      }

      list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::attachLists(v10 + 1, &v39, 1, 0, v20, v9);
    }
  }

  else
  {
    v39 = 0;
    if (v11)
    {
      v13 = (v11 & 0xFFFFFFFFFFFFFFFELL);
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        if (a3)
        {
          if (DisablePreattachedCategories)
          {
            v16 = *v13;
            v15 = v13[1];
            v34 = v15 * v16;
            if ((v34 & 0xFFFFFFFF00000000) != 0)
            {
              _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v6, v7, v8, v15, v13, *v13);
            }

            v35 = v13 + v34 + 8;
            v36 = v15 == 0;
            if (v15)
            {
              v15 = v15;
            }

            else
            {
              v15 = 0;
            }

            if (v36)
            {
              j = v35;
            }

            else
            {
              j = (v35 - v16);
            }
          }

          else
          {
            j = (v13 + 2);
            v16 = *v13;
            v15 = v13[1];
          }

          v17 = v15 * v16;
          if ((v17 & 0xFFFFFFFF00000000) != 0)
          {
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v6, v7, v8, v15, v13, v16);
          }

          for (i = v13 + v17 + 8; j < i; j = (j + v16))
          {
            if (*(objc_debug_headerInfoRWs + 8 + 8 * *j))
            {
              break;
            }
          }

          while (j != i)
          {
            v38 = method_list_t::duplicate((j + (*j >> 16)), v6, v7, v8);
            if (PrintPreopt)
            {
              v30 = "methods";
            }

            else
            {
              v30 = 0;
            }

            list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::attachLists(v10 + 1, &v38, 1, 0, v30, v29);
            v31 = v13[1];
            v32 = v31 * *v13;
            if ((v32 & 0xFFFFFFFF00000000) != 0)
            {
              _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v6, v7, v8, v31, v13, *v13);
            }

            v33 = v13 + v32 + 8;
            for (j = (j + v16); j < v33; j = (j + v16))
            {
              if (*(objc_debug_headerInfoRWs + 8 + 8 * *j))
              {
                break;
              }
            }
          }
        }

        else
        {
          v5[1] = v11 & 0xFFFFFFFFFFFFFFFCLL | 2;
        }
      }
    }
  }

  v21 = *(a2 + 8);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
  }

  v39 = v22;
  if (v22)
  {
    if (PrintPreopt)
    {
      v23 = "properties";
    }

    else
    {
      v23 = 0;
    }

    list_array_tt<property_t,property_list_t,RawPtr>::attachLists(v10 + 2, &v39, 1, 0, v23);
    v24 = this;
  }

  else
  {
    v24 = this;
    if ((v21 & 1) != 0 && (v21 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v10[2] = v21 & 0xFFFFFFFFFFFFFFFCLL | 2;
    }
  }

  v25 = *(a2 + 5);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
  }

  v39 = v26;
  if (v26)
  {
    if (PrintPreopt)
    {
      v27 = "protocols";
    }

    else
    {
      v27 = 0;
    }

    list_array_tt<property_t,property_list_t,RawPtr>::attachLists(v10 + 3, &v39, 1, 0, v27);
  }

  else if ((v25 & 1) != 0 && (v25 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v10[3] = v25 & 0xFFFFFFFFFFFFFFFCLL | 2;
  }

  *v10 = a2;
  atomic_store(v10 | 1, v24 + 1);
  return v10;
}

unint64_t *list_array_tt<property_t,property_list_t,RawPtr>::validate(unint64_t *result, uint64_t a2, const char *a3, char *a4)
{
  v8 = *result;
  if (!*result)
  {
    v4 = 0;
    v11 = 0;
    goto LABEL_27;
  }

  v9 = *result;
  v10 = *result & 3;
  if ((v8 & 3) == 0)
  {
    v11 = 0;
    v4 = *result;
    goto LABEL_27;
  }

  if (v8 >= 4)
  {
    if (v10 == 2)
    {
      v4 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v8 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        v11 = 0;
        goto LABEL_27;
      }

      if (DisablePreattachedCategories)
      {
        v6 = *v4;
        v24 = v4[1];
        v25 = v24 * v6;
        if ((v25 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v24, v9 & 0xFFFFFFFFFFFFFFFCLL, v6);
        }

        v26 = v4 + v25 + 8;
        if (v24)
        {
          v12 = v24;
        }

        else
        {
          v12 = 0;
        }

        if (v24)
        {
          v5 = (v26 - v6);
        }

        else
        {
          v5 = v26;
        }
      }

      else
      {
        v5 = (v4 + 2);
        v6 = *v4;
        v12 = v4[1];
      }

      v13 = v12 * v6;
      if ((v13 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v12, v9 & 0xFFFFFFFFFFFFFFFCLL, v6);
      }

      for (i = v4 + v13 + 8; v5 < i; v5 = (v5 + v6))
      {
        if (*(objc_debug_headerInfoRWs + 8 + 8 * *v5))
        {
          break;
        }
      }
    }

    else if (v10 == 1)
    {
      v11 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v8 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_27;
      }

      v4 = v11 + 2;
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
  }

  if (v10 != 2)
  {
    if (v10 != 1)
    {
      v11 = 0;
      goto LABEL_27;
    }

    v11 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v8 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      goto LABEL_27;
    }

LABEL_21:
    i = *v11;
    v11 += 2 * i + 2;
    goto LABEL_27;
  }

  v11 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if ((v8 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v14 = v11[1];
    v15 = v14 * *v11;
    if ((v15 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v14, v8 & 0xFFFFFFFFFFFFFFFCLL, *v11);
    }

    i = v11 + v15 + 8;
  }

  while (1)
  {
    while (1)
    {
LABEL_27:
      while (!v8)
      {
        v17 = v4 == v11;
        v4 = 0;
        if (v17)
        {
          return result;
        }
      }

      v16 = *result & 3;
      if (v16 > 1)
      {
        break;
      }

      if (v4 == v11)
      {
        return result;
      }

LABEL_41:
      if ((v8 & 3) == 0)
      {
        v4 = 0;
      }

      v4 += 2 * (v16 == 1);
    }

    if (v16 != 2)
    {
      goto LABEL_41;
    }

    if (v5 == i)
    {
      return result;
    }

    v19 = *v4;
    v18 = v4[1];
    v20 = v18 * v19;
    if ((v20 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v18, v4, v19);
    }

    v21 = v4 + v20 + 8;
    v22 = (v5 + v6);
    do
    {
      v5 = v22;
      if (v22 >= v21)
      {
        break;
      }

      v23 = *(objc_debug_headerInfoRWs + 8 + 8 * *v22);
      v22 = (v22 + v6);
    }

    while ((v23 & 1) == 0);
  }
}

char *_objc_registerTaggedPointerClass(uint64_t a1, objc_class *a2, const char *a3, char *a4)
{
  if (!objc_debug_taggedpointer_mask)
  {
    _objc_fatal("tagged pointers are disabled", a2, a3, a4);
  }

  result = classSlotForTagIndex(a1);
  if (!result)
  {
    _objc_fatal("tag index %u is invalid", v7, v8, v9, a1);
  }

  v10 = *result;
  if (*result)
  {
    v11 = *result;
    if (a2)
    {
      if (v10 && v10 != a2)
      {
        v15 = *result;
        v16 = objc_class::nameForLogging(v10);
        v17 = objc_class::nameForLogging(a2);
        _objc_fatal("tag index %u used for two different classes (was %p %s, now %p %s)", v18, v19, v20, a1, v15, v16, a2, v17);
      }
    }
  }

  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0;
  }

  *result = v12;
  if (a1 >= 7)
  {
    v13 = &objc_debug_taggedpointer_classes[byte_1ED3F54B7];
    if (*v13)
    {
      v14 = *v13;
    }

    else
    {
      *v13 = __NSUnrecognizedTaggedPointer;
    }
  }

  return result;
}

char *classSlotForTagIndex(unsigned int a1)
{
  if (a1 <= 6)
  {
    v1 = objc_debug_tag60_permutations[a1];
    v2 = &objc_debug_taggedpointer_classes;
    return &v2[8 * v1];
  }

  v3 = 0;
  if (a1 != 7 && a1 <= 0x107)
  {
    v4 = (objc_debug_taggedpointer_obfuscator >> 55);
    if (a1 > 0x87)
    {
      v4 = 0;
    }

    v1 = v4 ^ (a1 - 8);
    v2 = &objc_debug_taggedpointer_ext_classes;
    return &v2[8 * v1];
  }

  return v3;
}

BOOL ___ZN10objc_class34setDisallowPreoptCachesRecursivelyEPKc_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a2 + 32) & 0xF00007FFFFFFFF8);
  if ((v4 & 2) == 0)
  {
    if (*(a2 + 16))
    {
      cache_t::eraseNolock((a2 + 16), *(a1 + 32));
    }

    else
    {
      if (PrintCaches)
      {
        if ((*(v3 + 15) & 4) != 0)
        {
          v7 = "meta";
        }

        else
        {
          v7 = "";
        }

        v8 = objc_class::nameForLogging(v3);
        _objc_inform("CACHES: %sclass %s: disallow preopt cache (from %s)", v7, v8, *(a1 + 32));
      }

      atomic_fetch_or_explicit((*(a2 + 32) & 0xF00007FFFFFFFF8), 6u, memory_order_relaxed);
    }
  }

  return (v4 & 2) == 0;
}

Class class_setSuperclass(Class cls, Class newSuper)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  if (*(cls + 1))
  {
    v6 = *(cls + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *cls;
  if ((*cls - 1) >= 0xF && (*(cls + 4) & 0x8000000000000000) != 0)
  {
    realizeAndInitializeIfNeeded_locked(0, newSuper, 0);
    removeSubclass(v6, cls);
    removeSubclass(*v6 & 0xFFFFFFFF8, (*cls & 0xFFFFFFFF8));
    *(cls + 1) = newSuper;
    if ((*newSuper & 0x7FFFFFFFFFFFF8) != 0)
    {
      v13 = *newSuper & 0x7FFFFFFFFFFFF8;
    }

    else
    {
      v13 = 0;
    }

    *((*cls & 0xFFFFFFFF8) + 8) = v13;
    addSubclass(newSuper, cls);
    addSubclass(*newSuper & 0xFFFFFFFF8, (*cls & 0xFFFFFFFF8));
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3321888768;
    v18[2] = ___ZL13setSuperclassP10objc_classS0__block_invoke;
    v18[3] = &__block_descriptor_33_e8_32c43_ZTSKZL13setSuperclassP10objc_classS0_E3__0_e8_B16__0_8l;
    flushCaches(cls, "setSuperclass", v18, v14);
    v15 = *cls;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3321888768;
    v17[2] = ___ZL13setSuperclassP10objc_classS0__block_invoke_197;
    v17[3] = &__block_descriptor_33_e8_32c43_ZTSKZL13setSuperclassP10objc_classS0_E3__1_e8_B16__0_8l;
    flushCaches(v15 & 0xFFFFFFFF8, "setSuperclass", v17, v16);
  }

  else
  {
    *(cls + 1) = newSuper;
    v8 = v7 & 0xFFFFFFFF8;
    if ((*newSuper & 0x7FFFFFFFFFFFF8) != 0)
    {
      v9 = *newSuper & 0x7FFFFFFFFFFFF8;
    }

    else
    {
      v9 = 0;
    }

    *(v8 + 8) = v9;
  }

  v10 = *(StatusReg + 24);
  v11 = v10;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != v10)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v6;
}

void sub_1800B4E8C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flushCaches(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = ___ZL11flushCachesP10objc_classPKcU13block_pointerFbS0_E_block_invoke;
  v19 = &unk_1E69EA080;
  v20 = a3;
  v21 = a2;
  v5 = *(gdb_objc_realized_classes + 8);
  if (DisablePreopt)
  {
    result = 0;
    if (a1)
    {
LABEL_3:
      v7 = (16 * (result + v5)) | 0xF;
      v8 = a1;
      while (1)
      {
        result = v18(&v16, v8);
        if (result && (v9 = (v8 + 32), *((*(v8 + 32) & 0xF00007FFFFFFFF8) + 0x10)))
        {
          v10 = 16;
        }

        else
        {
          while (1)
          {
            v9 = (v8 + 32);
            if (v8 == a1 || *((*(v8 + 32) & 0xF00007FFFFFFFF8) + 0x18))
            {
              break;
            }

            if (*(v8 + 8))
            {
              v8 = *(v8 + 8);
            }

            else
            {
              v8 = 0;
            }

            if (!--v7)
            {
              goto LABEL_17;
            }
          }

          if (v8 == a1)
          {
            return result;
          }

          v10 = 24;
        }

        v8 = *((*v9 & 0xF00007FFFFFFFF8) + v10);
        if (!--v7)
        {
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    result = _dyld_objc_class_count();
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v11 = _firstRealizedClass;
  if (!_firstRealizedClass)
  {
    return result;
  }

  v12 = 16 * (result + v5) + 16;
  do
  {
    if (!--v12)
    {
LABEL_17:
      _objc_fatal("Memory corruption in class list.", a2, a3, a4, v16, v17);
    }

    v13 = v11;
    while (1)
    {
      result = v18(&v16, v13);
      if (!result)
      {
        break;
      }

      v14 = (v13 + 32);
      if (!*((*(v13 + 32) & 0xF00007FFFFFFFF8) + 0x10))
      {
        break;
      }

      v15 = 16;
LABEL_35:
      v13 = *((*v14 & 0xF00007FFFFFFFF8) + v15);
      if (!--v12)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
      v14 = (v13 + 32);
      if (v13 == v11 || *((*(v13 + 32) & 0xF00007FFFFFFFF8) + 0x18))
      {
        break;
      }

      if (*(v13 + 8))
      {
        v13 = *(v13 + 8);
      }

      else
      {
        v13 = 0;
      }

      if (!--v12)
      {
        goto LABEL_17;
      }
    }

    if (v13 != v11)
    {
      v15 = 24;
      goto LABEL_35;
    }

    v11 = *((*(v11 + 32) & 0xF00007FFFFFFFF8) + 0x18);
  }

  while (v11);
  return result;
}

unint64_t *class_rw_t::extAllocIfNeeded(class_rw_t *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(this + 1);
    return (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    if (v1)
    {
      v4 = *(this + 1);
      v5 = (v1 & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v5 = 0;
    }

    return class_rw_t::extAlloc(this, v5, 0);
  }
}

unint64_t *list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::validate(unint64_t *result, uint64_t a2, const char *a3, char *a4, uint64_t a5, unint64_t a6)
{
  v39 = result;
  v10 = *result;
  if (!*result)
  {
    goto LABEL_4;
  }

  v11 = *result;
  v12 = *result & 3;
  if ((v10 & 3) == 0)
  {
    v6 = *result;
    v40 = *result;
    goto LABEL_8;
  }

  if (v10 <= 3)
  {
LABEL_4:
    v6 = 0;
    v40 = 0;
    goto LABEL_5;
  }

  if (v12 != 2)
  {
    if (v12 == 1)
    {
      v6 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v10 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v6 += 2;
        v40 = v6;
      }
    }

    goto LABEL_8;
  }

  v6 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if ((v10 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
LABEL_8:
    v35 = result;
    goto LABEL_9;
  }

  if (DisablePreattachedCategories)
  {
    v29 = *v6;
    v28 = v6[1];
    v31 = v28 * v29;
    if ((v31 & 0xFFFFFFFF00000000) != 0)
    {
LABEL_71:
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, a5, a6, v28, v11 & 0xFFFFFFFFFFFFFFFCLL, v29);
    }

    v32 = v29 | (v28 << 32);
    v8 = v6 + v31 + 8;
    v33 = v29 | ((v28 - 1) << 32);
    v34 = v28 == 0;
    if (v28)
    {
      v28 = v28;
    }

    else
    {
      v28 = 0;
    }

    if (v34)
    {
      a6 = v32;
    }

    else
    {
      v8 -= v29;
      a6 = v33;
    }
  }

  else
  {
    v8 = (v6 + 2);
    a6 = *v6;
    v28 = v6[1];
    v29 = a6;
  }

  v30 = v28 * v29;
  if ((v30 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_71;
  }

  v7 = HIDWORD(a6);
  for (i = v6 + v30 + 8; v8 < i; v7 = (v7 + 1))
  {
    if (*(objc_debug_headerInfoRWs + 8 + 8 * *v8))
    {
      break;
    }

    v8 += a6;
  }

  v40 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v41 = a6 | (v7 << 32);
  v42 = v8;
LABEL_5:
  v35 = result;
  if (!v10)
  {
    v13 = 0;
LABEL_11:
    v36 = 0;
    goto LABEL_19;
  }

LABEL_9:
  v13 = (v10 & 3);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v13 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v10 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v15 = *v13;
        v14 = v13[1];
        v16 = v14 * v15;
        if ((v16 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, a5, a6, v14, v10 & 0xFFFFFFFFFFFFFFFCLL, v15);
        }

        i = v13 + v16 + 8;
        v36 = v10 & 0xFFFFFFFFFFFFFFFCLL;
        v37 = v15 | (v14 << 32);
        v38 = i;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if ((v10 & 3) == 0)
    {
      goto LABEL_11;
    }

    v13 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v10 & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      i = *v13;
      v13 += 2 * i + 2;
      v36 = v13;
    }
  }

LABEL_19:
  v17 = a6;
  v18 = objc_debug_headerInfoRWs + 8;
  v19 = 2 * a6;
LABEL_20:
  v20 = v8;
  while (1)
  {
    if (!v10)
    {
      goto LABEL_24;
    }

    if ((v10 & 3) > 1)
    {
      break;
    }

    if ((v10 & 3) != 0)
    {
      if (v6 == v13)
      {
        return result;
      }

      goto LABEL_36;
    }

LABEL_24:
    if (v6)
    {
      v21 = v6;
      if (v13)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v21 = 0;
      if (v13)
      {
LABEL_26:
        v22 = v13;
        goto LABEL_32;
      }
    }

    v22 = 0;
LABEL_32:
    if (v21 == v22)
    {
      return result;
    }

    if (!v10)
    {
LABEL_40:
      v6 = 0;
      goto LABEL_41;
    }

LABEL_36:
    if ((v10 & 3) != 3)
    {
      if ((v10 & 3) == 0)
      {
        goto LABEL_40;
      }

      if ((v10 & 3) == 2)
      {
        v8 += v17;
        v42 = &v17[v20];
        v24 = *v6;
        v23 = v6[1];
        v25 = v23 * v24;
        LODWORD(v7) = v7 + 1;
        HIDWORD(v41) = v7;
        if ((v25 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", &v39, &v35, v17, v18, v19, v23, v6, v24);
        }

        v26 = v6 + v25 + 8;
        if (v8 < v26)
        {
          v27 = (v20 + v19);
          do
          {
            if (*(v18 + 8 * *v8))
            {
              break;
            }

            v8 += v17;
            v42 = v27;
            LODWORD(v7) = v7 + 1;
            HIDWORD(v41) = v7;
            v27 = &v17[v27];
          }

          while (v8 < v26);
        }

        goto LABEL_20;
      }

      v6 += 2;
LABEL_41:
      v40 = v6;
    }
  }

  if ((v10 & 3) != 2 || v8 != i)
  {
    goto LABEL_36;
  }

  return result;
}

BOOL ___ZN10objc_class36setInstancesRequireRawIsaRecursivelyEb_block_invoke(uint64_t a1, objc_class *this)
{
  v2 = *(this + 15);
  if ((v2 & 0x2000) == 0)
  {
    atomic_fetch_or_explicit(this + 15, 0x2000u, memory_order_relaxed);
    if (PrintRawIsa)
    {
      v5 = " (inherited)";
      if ((*(a1 + 32) & 1) == 0 && *(a1 + 40) == this)
      {
        v5 = "";
      }

      v6 = objc_class::nameForLogging(this);
      if ((*(this + 15) & 4) != 0)
      {
        v7 = " (meta)";
      }

      else
      {
        v7 = "";
      }

      _objc_inform("RAW ISA:  %s%s%s", v6, v7, v5);
    }
  }

  return (v2 & 0x2000) == 0;
}

uint64_t objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::LookupBucketFor<DisguisedPtr<objc_class>>(uint64_t a1, void *a2)
{
  if (dword_1ED3F6388)
  {
    v2 = 0x8A970BE7488FDA55 * (-a1 ^ (-a1 >> 4));
    v3 = dword_1ED3F6388 - 1;
    v4 = (dword_1ED3F6388 - 1) & (bswap64(v2) ^ v2);
    v5 = (objc::unattachedCategories + 24 * v4);
    v6 = *v5;
    if (*v5 == a1)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != 1)
      {
        if (v10 > dword_1ED3F6388)
        {
          objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::FatalCorruptHashTables(objc::unattachedCategories, dword_1ED3F6388);
        }

        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 2;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & v3;
        v5 = (objc::unattachedCategories + 24 * (v12 & v3));
        v6 = *v5;
        v7 = 1;
        if (*v5 == a1)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a2 = v5;
  return v7;
}

Class objc_getFutureClass(const char *name)
{
  v2 = look_up_class(name);
  if (v2)
  {
    v3 = v2;
    if (PrintFuture)
    {
      _objc_inform("FUTURE: found %p already in use for %s", v2, name);
    }
  }

  else
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    v6 = futureNamedClasses();
    v3 = NXMapGet(v6, name);
    if (!v3)
    {
      v7 = malloc_type_zone_malloc_with_options();
      v3 = v7;
      if (PrintFuture)
      {
        _objc_inform("FUTURE: reserving %p for %s", v7, name);
      }

      v8 = malloc_type_calloc(0x20uLL, 1uLL, 0x1080040D2A7D70AuLL);
      v9 = malloc_type_calloc(0x48uLL, 1uLL, 0x10F20403D42F3C1uLL);
      v10 = strlen(name);
      v11 = name;
      if ((_dyld_is_memory_immutable() & 1) == 0)
      {
        v11 = malloc_type_malloc(v10 + 1, 0x9620E368uLL);
        memcpy(v11, name, v10 + 1);
      }

      v9[3] = v11;
      v12 = v8 + 1;
      v13 = v8[1];
      if (v13)
      {
        v14 = v8[1];
        v12 = (v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      *v12 = v9;
      class_data_bits_t::setData(v3 + 4, v8);
      *(v3[4] & 0xF00007FFFFFFFF8) = 0x40000000;
      v15 = futureNamedClasses();
      NXMapKeyCopyingInsert(v15, name, v3);
    }

    v16 = *(StatusReg + 24);
    v17 = v16;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v17, 0, memory_order_release, memory_order_relaxed);
    if (v17 != v16)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  return v3;
}

void sub_1800B5A7C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t objc_class::setDisallowPreoptCachesRecursively(uint64_t this, const char *a2)
{
  if ((*(*(this + 32) & 0xF00007FFFFFFFF8) & 2) == 0)
  {
    v2 = this;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3321888768;
    v14 = ___ZN10objc_class34setDisallowPreoptCachesRecursivelyEPKc_block_invoke;
    v15 = &__block_descriptor_48_e8_32c64_ZTSKZN10objc_class34setDisallowPreoptCachesRecursivelyEPKcE3__0_e8_B16__0_8l;
    v16 = a2;
    v17 = this;
    v3 = *(gdb_objc_realized_classes + 8);
    if (DisablePreopt)
    {
      v4 = 0;
    }

    else
    {
      v4 = _dyld_objc_class_count();
    }

    v5 = (16 * (v4 + v3)) | 0xF;
    v6 = v2;
    while (1)
    {
      this = (v14)(&v12, v6);
      if (this && (v10 = (v6 + 32), *((*(v6 + 32) & 0xF00007FFFFFFFF8) + 0x10)))
      {
        v11 = 16;
      }

      else
      {
        while (1)
        {
          v10 = (v6 + 32);
          if (v6 == v2 || *((*(v6 + 32) & 0xF00007FFFFFFFF8) + 0x18))
          {
            break;
          }

          if (*(v6 + 8))
          {
            v6 = *(v6 + 8);
          }

          else
          {
            v6 = 0;
          }

          if (!--v5)
          {
            goto LABEL_19;
          }
        }

        if (v6 == v2)
        {
          return this;
        }

        v11 = 24;
      }

      v6 = *((*v10 & 0xF00007FFFFFFFF8) + v11);
      if (!--v5)
      {
LABEL_19:
        _objc_fatal("Memory corruption in class list.", v7, v8, v9, v12, v13);
      }
    }
  }

  return this;
}

uint64_t removeSubclass(uint64_t result, objc_class *a2)
{
  ++objc_debug_realized_class_generation_count;
  v2 = *(result + 32);
  v3 = ((v2 & 0xF00007FFFFFFFF8) + 16);
  v4 = *((v2 & 0xF00007FFFFFFFF8) + 0x10);
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    do
    {
      v6 = *(v4 + 4);
      v4 = *((v6 & 0xF00007FFFFFFFF8) + 0x18);
      if (v4)
      {
        v7 = v4 == a2;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    v3 = ((v6 & 0xF00007FFFFFFFF8) + 24);
  }

  *v3 = *((*(a2 + 4) & 0xF00007FFFFFFFF8) + 0x18);
  return result;
}

uint64_t ___ZL11flushCachesP10objc_classPKcU13block_pointerFbS0_E_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 + 32) + 16))())
  {
    cache_t::eraseNolock((a2 + 16), *(a1 + 40));
  }

  return 1;
}

unint64_t entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(int *a1, uint64_t a2, const char *a3, char *a4)
{
  v5 = *a1;
  v4 = a1[1];
  if (((v4 * (*a1 & 0xFFFC)) & 0xFFFFFFFF00000000) != 0)
  {
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v4, a1, v5 & 0xFFFC);
  }

  return v5 & 0xFFFC | (v4 << 32);
}

uint64_t protocol_getMethodTypeEncoding_nolock(uint64_t result, objc_selector *a2, const char *a3, char *a4)
{
  if (result)
  {
    v4 = a4;
    v5 = a3;
    v7 = result;
    if (*(result + 64) + result <= result + 72 || !a2 || !*(result + 72))
    {
      goto LABEL_14;
    }

    v8 = 32;
    if (a4)
    {
      v8 = 24;
    }

    v9 = 48;
    if (a4)
    {
      v9 = 40;
    }

    if (!a3)
    {
      v8 = v9;
    }

    v10 = *(result + v8);
    if (v10 && (v11 = search_method_list(v10, a2, a3, a4)) != 0)
    {
      v17 = 0;
      getExtendedTypesIndexesForMethod(v7, v11, v5, v4, &v17 + 1, &v17);
      return *(v7[9] + 8 * (v17 + HIDWORD(v17)));
    }

    else
    {
LABEL_14:
      v12 = v7[2];
      if (v12 && *v12)
      {
        v13 = 0;
        while (1)
        {
          v14 = v12[v13 + 1];
          v15 = canonical_protocol ? 0 : 0x20000000;
          if ((v15 & *(v14 + 68)) == 0)
          {
            Protocol = getProtocol(*(v14 + 8));
            if (Protocol)
            {
              v14 = Protocol;
            }
          }

          result = protocol_getMethodTypeEncoding_nolock(v14, a2, v5, v4);
          if (result)
          {
            break;
          }

          ++v13;
          v12 = v7[2];
          if (v13 >= *v12)
          {
            return 0;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void objc::UnattachedCategories::attachToClass(objc::UnattachedCategories *this, objc_class *a2, objc_class *a3)
{
  v3 = a3;
  v6 = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::find(-a2);
  v7 = v6;
  if (objc::unattachedCategories + 24 * dword_1ED3F6388 != v6)
  {
    v8 = (v6 + 8);
    if ((v3 & 4) != 0)
    {
      v15 = v3 & 0xFFFFFFFB;
      v16 = *(v6 + 16);
      if (v16)
      {
        v17 = *(v6 + 8);
      }

      else
      {
        v17 = v6 + 8;
      }

      if (v16)
      {
        v18 = v16 >> 1;
      }

      else
      {
        v18 = *(v6 + 8) != 0;
      }

      attachCategories(this, v17, v18, a2, v15 | 1);
      v19 = v7[2];
      if (v19)
      {
        v10 = v7[1];
      }

      else
      {
        v10 = (v7 + 1);
      }

      if (v19)
      {
        v11 = v19 >> 1;
      }

      else
      {
        v11 = v7[1] != 0;
      }

      v12 = (*this & 0xFFFFFFFF8);
      v14 = v15 | 2;
      v13 = a2;
    }

    else
    {
      v9 = *(v6 + 16);
      if (v9)
      {
        v10 = *(v6 + 8);
      }

      else
      {
        v10 = v6 + 8;
      }

      if (v9)
      {
        v11 = v9 >> 1;
      }

      else
      {
        v11 = *(v6 + 8) != 0;
      }

      v12 = this;
      v13 = a2;
      v14 = v3;
    }

    attachCategories(v12, v10, v11, v13, v14);
    if (v7[2])
    {
      free(*v8);
    }

    *v7 = 2;
    *(&objc::unattachedCategories + 1) = vadd_s32(*(&objc::unattachedCategories + 8), 0x1FFFFFFFFLL);

    objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::compact();
  }
}

void objc_addLoadImageFunc2(void (*a1)(char *, uint64_t), uint64_t a2, const char *a3, char *a4)
{
  v5 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v5, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  v7 = FirstHeader;
  if (FirstHeader)
  {
    do
    {
      if (preoptimized == 1 && (*(v7 + v7[1] + 12) & 8) != 0 && *(headerInfoROs + 4) < 0x18u)
      {
        v8 = 0;
      }

      else
      {
        v8 = v7 + v7[2] + 16;
      }

      a1(v7 + *v7, v8);
      PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v7);
      v10 = v7 + 3;
      if (PreoptimizedHeaderRW)
      {
        v10 = PreoptimizedHeaderRW;
      }

      v7 = (*v10 & 0xFFFFFFFFFFFFFFFCLL);
    }

    while (v7);
  }

  if (a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  v14 = v11;
  v15 = 2;
  GlobalSmallVector<loadImageCallback,4u>::append(&v14, a2, a3, a4);
  v12 = *(StatusReg + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {
    os_unfair_lock_unlock(runtimeLock);
  }
}

void sub_1800B627C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _protocol_getMethodTypeEncoding(protocol_t *a1, objc_selector *a2, const char *a3, char *a4, uint64_t a5, objc_selector ***a6)
{
  if (!a1)
  {
    return 0;
  }

  v10 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    os_unfair_lock_lock_with_options();
  }

  if (fixed_up_protocol)
  {
    v12 = -1073741824;
  }

  else
  {
    v12 = 0x40000000;
  }

  if ((*(a1 + 17) & 0xC0000000) != v12)
  {
    fixupProtocol(a1, 0xFFFFFFFFLL, 0, 0, a5, a6);
  }

  MethodTypeEncoding_nolock = protocol_getMethodTypeEncoding_nolock(a1, a2, a3, a4);
  v14 = *(StatusReg + 24);
  v15 = v14;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != v14)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return MethodTypeEncoding_nolock;
}

void sub_1800B63A0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void *getExtendedTypesIndexesForMethod(void *result, uint64_t a2, int a3, int a4, _DWORD *a5, _DWORD *a6)
{
  *a5 = 0;
  v6 = result[3];
  if (v6)
  {
    if (a3 && a4)
    {
      v7 = (a2 - v6) / (*v6 & 0xFFFC);
LABEL_18:
      *a6 = v7;
      return result;
    }

    LODWORD(v6) = v6[1];
    *a5 = v6;
  }

  v8 = result[4];
  if (v8)
  {
    if (a3 && (a4 & 1) == 0)
    {
      goto LABEL_17;
    }

    LODWORD(v6) = v6 + v8[1];
    *a5 = v6;
  }

  v8 = result[5];
  if (!v8)
  {
    goto LABEL_14;
  }

  if (a4 && (a3 & 1) == 0)
  {
LABEL_17:
    v7 = (a2 - v8) / (*v8 & 0xFFFC);
    goto LABEL_18;
  }

  LODWORD(v6) = v6 + v8[1];
  *a5 = v6;
LABEL_14:
  v8 = result[6];
  if (!v8)
  {
    return result;
  }

  if ((a3 & 1) == 0 && (a4 & 1) == 0)
  {
    goto LABEL_17;
  }

  *a5 = v6 + v8[1];
  return result;
}

uint64_t GlobalSmallVector<loadImageCallback,4u>::append(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  if (loadImageCallbacks[0] <= 3u)
  {
    v5 = &loadImageCallbacks[4 * loadImageCallbacks[0] + 2];
LABEL_12:
    result = loadImageCallback::operator=(v5, a1, a3, a4);
    goto LABEL_15;
  }

  if (loadImageCallbacks[0] != 4)
  {
    v14 = malloc_type_malloc(16 * (loadImageCallbacks[0] + 1), 0x10C0040E6EFC850uLL);
    v17 = v14;
    if (loadImageCallbacks[0])
    {
      v18 = 0;
      v19 = 0;
      do
      {
        ++v19;
        v14 = (loadImageCallback::operator=(v14, qword_1ED3F60E8 + v18, v15, v16) + 16);
        v18 += 16;
      }

      while (v19 < loadImageCallbacks[0]);
    }

    free(qword_1ED3F60E8);
    qword_1ED3F60E8 = v17;
    v5 = (v17 + 16 * loadImageCallbacks[0]);
    goto LABEL_12;
  }

  v6 = malloc_type_malloc(0x50uLL, 0x10C0040E6EFC850uLL);
  v9 = v6;
  if (loadImageCallbacks[0])
  {
    v10 = 0;
    v11 = &qword_1ED3F60E8;
    do
    {
      v12 = loadImageCallback::operator=(v6, v11, v7, v8);
      ++v10;
      v13 = loadImageCallbacks[0];
      v6 = (v12 + 16);
      v11 += 2;
    }

    while (v10 < loadImageCallbacks[0]);
  }

  else
  {
    v13 = 0;
  }

  result = loadImageCallback::operator=(v9 + 16 * v13, a1, v7, v8);
  qword_1ED3F60E8 = v9;
LABEL_15:
  ++loadImageCallbacks[0];
  return result;
}

const char *__cdecl sel_getName(const char *sel)
{
  if (!sel)
  {
    return "<null selector>";
  }

  return sel;
}

uint64_t loadImageCallback::operator=(uint64_t result, uint64_t a2, const char *a3, char *a4)
{
  v6 = *(a2 + 8);
  if (v6 == 2)
  {
    v7 = *a2;
    if (*a2)
    {
      v9 = *a2;
    }
  }

  else
  {
    if (v6 != 1)
    {
      _objc_fatal("Corrupt load image callback, unknown kind %u, func %p", a2, a3, a4, v6, *a2, v4, v5);
    }

    v7 = *a2;
    if (*a2)
    {
      v8 = *a2;
    }
  }

  *result = v7;
  *(result + 8) = v6;
  return result;
}

Class objc_getClass(Class name)
{
  if (name)
  {
    return look_up_class(name);
  }

  return name;
}

uint64_t objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>,DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>::LookupBucketFor<DisguisedPtr<objc_class>>(uint64_t a1, void *a2)
{
  if (dword_1ED3F5980)
  {
    v2 = 0x8A970BE7488FDA55 * (-a1 ^ (-a1 >> 4));
    v3 = dword_1ED3F5980 - 1;
    v4 = (dword_1ED3F5980 - 1) & (bswap64(v2) ^ v2);
    v5 = (remappedClasses(BOOL)::remapped_class_map + 16 * v4);
    v6 = *v5;
    if (*v5 == a1)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != 1)
      {
        if (v10 > dword_1ED3F5980)
        {
          objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>,DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>::FatalCorruptHashTables(remappedClasses(BOOL)::remapped_class_map, dword_1ED3F5980);
        }

        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 2;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & v3;
        v5 = (remappedClasses(BOOL)::remapped_class_map + 16 * (v12 & v3));
        v6 = *v5;
        v7 = 1;
        if (*v5 == a1)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a2 = v5;
  return v7;
}

void class_setVersion(Class cls, int version)
{
  if (cls)
  {
    objc_class::realizeIfNeeded(cls);
    v4 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 8);
    if ((v4 & 1) == 0 || (v5 = v4 & 0xFFFFFFFFFFFFFFFELL, (v4 & 0xFFFFFFFFFFFFFFFELL) == 0))
    {
      v6 = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(runtimeLock, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v6)
      {
        os_unfair_lock_lock_with_options();
      }

      v5 = class_rw_t::extAllocIfNeeded((*(cls + 4) & 0xF00007FFFFFFFF8));
      v8 = *(StatusReg + 24);
      v9 = v8;
      atomic_compare_exchange_strong_explicit(runtimeLock, &v9, 0, memory_order_release, memory_order_relaxed);
      if (v9 != v8)
      {
        os_unfair_lock_unlock(runtimeLock);
      }
    }

    *(v5 + 40) = version;
  }
}

void sub_1800B68D8(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

Class initializeAndMaybeRelock(objc_class *a1, objc_object *a2, int a3)
{
  Class = a1;
  realizeAndInitializeIfNeeded_locked(0, a1, 0);
  v6 = *(*(Class + 4) & 0xF00007FFFFFFFF8);
  if ((v6 & 1) == 0)
  {
    v6 = *(*((*Class & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  if ((v6 & 0x20000000) != 0)
  {
    if ((a3 & 1) == 0)
    {
      v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v14 = v13;
      atomic_compare_exchange_strong_explicit(&runtimeLock, &v14, 0, memory_order_release, memory_order_relaxed);
      if (v14 != v13)
      {
        os_unfair_lock_unlock(&runtimeLock);
      }
    }
  }

  else
  {
    MaybeUnrealizedNonMetaClass = getMaybeUnrealizedNonMetaClass(Class, a2);
    v11 = MaybeUnrealizedNonMetaClass;
    if ((*MaybeUnrealizedNonMetaClass - 1) >= 0xF && (*(MaybeUnrealizedNonMetaClass + 4) & 0x8000000000000000) != 0)
    {
      v16 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v17 = v16;
      atomic_compare_exchange_strong_explicit(&runtimeLock, &v17, 0, memory_order_release, memory_order_relaxed);
      if (v17 != v16)
      {
        os_unfair_lock_unlock(&runtimeLock);
      }
    }

    else
    {
      v11 = realizeClassMaybeSwiftMaybeRelock(MaybeUnrealizedNonMetaClass, 0);
      Class = object_getClass(v11);
    }

    initializeNonMetaClass(v11, v8, v9, v10);
    if (a3)
    {
      v12 = 0;
      atomic_compare_exchange_strong_explicit(&runtimeLock, &v12, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v12)
      {
        os_unfair_lock_lock_with_options();
      }
    }
  }

  return Class;
}

void objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>,DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>::compact(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2)
  {
    if (v3 >= 0x401 && v3 >> 4 > v2)
    {
    }
  }

  else if (v3)
  {
    if (*a1)
    {
      v5 = *a1;
    }

    else
    {
      v5 = 0;
    }

    free(v5);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 8) = 0;
  }
}

void initializeNonMetaClass(objc_class *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *(a1 + 1);
  if (v5)
  {
    v6 = *(a1 + 1);
    v7 = *(v5[4] & 0xF00007FFFFFFFF8);
    if ((v7 & 1) == 0)
    {
      v7 = *(*((*v5 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
    }

    if ((v7 & 0x20000000) == 0)
    {
      initializeNonMetaClass(v5);
    }
  }

  else
  {
    v6 = 0;
  }

  WAITING_FOR_A_CLASS__initialize_LOCK(a1, a2, a3, a4);
  v11 = *(*(a1 + 4) & 0xF00007FFFFFFFF8);
  if ((v11 & 1) == 0)
  {
    v11 = *(*((*a1 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  if ((v11 & 0x20000000) == 0)
  {
    v12 = *(*(a1 + 4) & 0xF00007FFFFFFFF8);
    if ((v12 & 1) == 0)
    {
      v12 = *(*((*a1 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
    }

    if ((v12 & 0x10000000) == 0)
    {
      goto LABEL_14;
    }

    if (MultithreadedForkChild == 1 && !_thisThreadIsInitializingClass(a1))
    {
      WAITING_FOR_A_CLASS__initialize_LOCK(a1, v8, v9, v10);
      _setThisThreadIsInitializingClass(a1);
      performForkChildInitialize(a1, v6);
LABEL_14:
      v13 = 0;
      v25[0] = 0;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      atomic_compare_exchange_strong_explicit(&classInitLock, &v13, *(StatusReg + 6), memory_order_acquire, memory_order_acquire);
      if (v13)
      {
        os_unfair_lock_lock_with_options();
      }

      v15 = v25;
      atomic_fetch_or_explicit((*((*a1 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8), 0x10000000u, memory_order_relaxed);
      v16 = 16 * willInitializeFuncs;
      v24 = willInitializeFuncs;
      if (willInitializeFuncs < 2)
      {
        memcpy(v25, &xmmword_1EA79C330, 16 * willInitializeFuncs);
      }

      else
      {
        v17 = xmmword_1EA79C330;
        v18 = malloc_type_malloc(16 * willInitializeFuncs, 0x9620E368uLL);
        memcpy(v18, v17, v16);
        v25[0] = v18;
      }

      v19 = *(StatusReg + 6);
      v20 = v19;
      atomic_compare_exchange_strong_explicit(&classInitLock, &v20, 0, memory_order_release, memory_order_relaxed);
      if (v20 != v19)
      {
        os_unfair_lock_unlock(&classInitLock);
      }

      _setThisThreadIsInitializingClass(a1);
      if (MultithreadedForkChild == 1)
      {
        performForkChildInitialize(a1, v6);
      }

      else
      {
        if (v24 >= 2uLL)
        {
          v15 = v25[0];
        }

        if (v24)
        {
          v21 = &v15[2 * v24];
          do
          {
            (*v15)(v15[1], a1);
            v15 += 2;
          }

          while (v15 != v21);
        }

        if (PrintInitializing)
        {
          v22 = objc_class::nameForLogging(a1);
          _objc_inform("INITIALIZE: thread %p: calling +[%s initialize]", *StatusReg, v22);
        }

        CALLING_SOME__initialize_METHOD(a1);
        if (PrintInitializing)
        {
          v23 = objc_class::nameForLogging(a1);
          _objc_inform("INITIALIZE: thread %p: finished +[%s initialize]", *StatusReg, v23);
        }

        lockAndFinishInitializing(a1, v6);
      }

      if (v24 >= 2)
      {
        free(v25[0]);
      }

      return;
    }
  }

  unlockClass(a1, v8, v9, v10);
}

void sub_1800B6EF8(void *a1)
{
  objc_end_catch();
  objc_begin_catch(a1);
  JUMPOUT(0x1800B6E1CLL);
}

void cache_t::eraseNolock(cache_t *this, const char *a2)
{
  if ((*this & 1) == 0)
  {
    if (*this == &_objc_empty_cache)
    {
      v4 = 0;
    }

    else
    {
      v4 = HIWORD(*this) == 0;
      *this;
    }

    if (!v4)
    {
      if (!*(this + 6))
      {
        return;
      }

      v5 = *this;
      if (HIWORD(*this))
      {
        v8 = HIWORD(v5);
        v6 = (v8 + 1);
        v7 = *this & 0xFFFFFFFFFFFLL;
        if (v8 > 0x400)
        {
          v12 = __clz(v6);
          v13 = v12 ^ 0x1F;
          if ((v12 ^ 0x1F) >= cache_t::emptyBucketsForCapacity(unsigned int,BOOL)::emptyBucketsListCount)
          {
            v14 = 32 - v12;
            v15 = malloc_type_zone_malloc_with_options();
            v16 = malloc_type_realloc(cache_t::emptyBucketsForCapacity(unsigned int,BOOL)::emptyBucketsList, (8 * v14), 0x2004093837F09uLL);
            cache_t::emptyBucketsForCapacity(unsigned int,BOOL)::emptyBucketsList = v16;
            if (cache_t::emptyBucketsForCapacity(unsigned int,BOOL)::emptyBucketsListCount < v14)
            {
              v17 = 0;
              v18 = (v14 - cache_t::emptyBucketsForCapacity(unsigned int,BOOL)::emptyBucketsListCount + 1) & 0xFFFFFFFFFFFFFFFELL;
              v19 = vdupq_n_s64(v14 - cache_t::emptyBucketsForCapacity(unsigned int,BOOL)::emptyBucketsListCount - 1);
              v20 = &v16[8 * cache_t::emptyBucketsForCapacity(unsigned int,BOOL)::emptyBucketsListCount];
              do
              {
                v21 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(vdupq_n_s64(v17), xmmword_1800DA160)));
                if (v21.i8[0])
                {
                  *&v20[8 * v17] = v15;
                }

                if (v21.i8[4])
                {
                  *&v20[8 * v17 + 8] = v15;
                }

                v17 += 2;
              }

              while (v18 != v17);
            }

            cache_t::emptyBucketsForCapacity(unsigned int,BOOL)::emptyBucketsListCount = v14;
            if (PrintCaches)
            {
              _objc_inform("CACHES: new empty buckets at %p (capacity %zu)", v15, v6);
            }
          }

          v9 = *(cache_t::emptyBucketsForCapacity(unsigned int,BOOL)::emptyBucketsList + 8 * v13);
          goto LABEL_29;
        }
      }

      else
      {
        LODWORD(v6) = 0;
        v7 = v5 & 0xFFFFFFFFFFFLL;
      }

      v9 = &_objc_empty_cache & 0xFFFFFFFFFFFLL;
LABEL_29:
      atomic_store(v9 | ((v6 - 1) << 48), this);
      *(this + 6) = 0;

      cache_t::collect_free(v7, v6);
      return;
    }
  }

  if (PrintCaches)
  {
    if ((*(this + 7) & 4) != 0)
    {
      v10 = "meta";
    }

    else
    {
      v10 = "";
    }

    v11 = objc_class::nameForLogging((this - 16));
    _objc_inform("CACHES: %sclass %s: dropping and disallowing preopt cache (from %s)", v10, v11, a2);
  }

  atomic_store(&_objc_empty_cache & 0xFFFFFFFFFFFLL, this);
  *(this + 6) = 0;
  atomic_fetch_or_explicit((*(this + 2) & 0xF00007FFFFFFFF8), 6u, memory_order_relaxed);
}

void lockAndFinishInitializing(__objc2_class *a1, uint64_t a2)
{
  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(&pendingInitializeMapLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v6 = *(*(a2 + 32) & 0xF00007FFFFFFFF8);
  if ((v6 & 1) == 0)
  {
    v6 = *(*((*a2 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  if ((v6 & 0x20000000) != 0)
  {
LABEL_15:
    _finishInitializing(a1, a2);
    goto LABEL_24;
  }

  if (&a1->isa[-1].info + 7 >= 0xF)
  {
    info = a1->info;
  }

  if (PrintInitializing)
  {
    v8 = *StatusReg;
    v9 = objc_class::nameForLogging(a1);
    v10 = objc_class::nameForLogging(a2);
    _objc_inform("INITIALIZE: thread %p: class %s will be marked as fully +initialized after superclass +[%s initialize] completes", v8, v9, v10);
  }

  if (!pendingInitializeMap)
  {
    v11 = malloc_type_malloc(0x18uLL, 0x201A97EDuLL);
    objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::init(v11, 10);
    pendingInitializeMap = v11;
  }

  v12 = malloc_type_malloc(0x10uLL, 0x201A97EDuLL);
  *v12 = a1;
  v12[1] = 0;
  v13 = pendingInitializeMap;
  v14 = -a2;
  v22 = 0;
  v15 = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::LookupBucketFor<DisguisedPtr<objc_class>>(pendingInitializeMap, v14, &v22);
  v16 = v22;
  if ((v15 & 1) == 0)
  {
    v18 = v13[1].i32[0];
    v19 = v13[2].u32[0];
    if (4 * v18 + 4 >= 3 * v19)
    {
      objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::grow(v13, 2 * v19);
      v22 = 0;
      objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::LookupBucketFor<DisguisedPtr<objc_class>>(v13, v14, &v22);
    }

    else
    {
      if (v19 + ~v18 - v13[1].i32[1] > v19 >> 3)
      {
LABEL_18:
        if (*v16 == 2)
        {
          v13[1] = vadd_s32(v13[1], 0xFFFFFFFF00000001);
        }

        else if (*v16 == 1)
        {
          ++v13[1].i32[0];
        }

        *v16 = v14;
        v17 = v16 + 1;
        goto LABEL_23;
      }

      objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::grow(v13, v19);
      v22 = 0;
      objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::LookupBucketFor<DisguisedPtr<objc_class>>(v13, v14, &v22);
    }

    v16 = v22;
    goto LABEL_18;
  }

  v17 = v22 + 1;
  v12[1] = v22[1];
LABEL_23:
  *v17 = v12;
LABEL_24:
  v20 = *(StatusReg + 24);
  v21 = v20;
  atomic_compare_exchange_strong_explicit(&pendingInitializeMapLock, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != v20)
  {

    os_unfair_lock_unlock(&pendingInitializeMapLock);
  }
}

void sub_1800B7428(_Unwind_Exception *a1)
{
  free(v1);
  v5 = *(v3 + 24);
  v6 = v5;
  atomic_compare_exchange_strong_explicit(v2, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != v5)
  {
    os_unfair_lock_unlock(&pendingInitializeMapLock);
  }

  _Unwind_Resume(a1);
}

uint64_t WAITING_FOR_A_CLASS__initialize_LOCK(objc_class *this, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = this;
  if (PrintInitializing)
  {
    v6 = *_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = objc_class::nameForLogging(this);
    _objc_inform("INITIALIZE: thread %p: acquiring lock for +[%s initialize]", v6, v7);
  }

  if ((*v4 - 1) < 0xF || (*(*(v4 + 4) & 0xF00007FFFFFFFF8) & 1) == 0)
  {
    v4 = (*v4 & 0xFFFFFFFF8);
  }

  return _objc_sync_enter_kind(v4, 2, a3, a4);
}

objc_class *getMaybeUnrealizedNonMetaClass(objc_class *a1, objc_object *a2)
{
  ++getMaybeUnrealizedNonMetaClass(objc_class *,objc_object *)::total;
  if ((*(a1 + 15) & 4) == 0)
  {
    return a1;
  }

  if ((*a1 & 0xFFFFFFFF8) == a1 && (**(a1 + 1) & 0xFFFFFFFF8) == a1)
  {
    return *(a1 + 1);
  }

  if (a2 && (v4 = remapClass(a2)) != 0)
  {
    for (i = v4; (*i & 0xFFFFFFFF8) != a1; i = i[1])
    {
      if (!i[1])
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    i = *(class_data_bits_t::safe_ro<(Authentication)0>(a1 + 4) + 16);
    if (!i)
    {
      explicit = atomic_load_explicit((class_data_bits_t::safe_ro<(Authentication)0>(a1 + 4) + 24), memory_order_acquire);
      if (!explicit)
      {
        explicit = objc_class::installMangledNameForLazilyNamedClass(a1, v6, v7, v8);
      }

      ClassExceptSomeSwift = getClassExceptSomeSwift(explicit);
      if (ClassExceptSomeSwift && (i = ClassExceptSomeSwift, (*ClassExceptSomeSwift & 0xFFFFFFFF8) == a1))
      {
        ++getMaybeUnrealizedNonMetaClass(objc_class *,objc_object *)::named;
        if (PrintInitializing)
        {
          _objc_inform("INITIALIZE: %d/%d (%g%%) successful by-name metaclass lookups");
        }
      }

      else
      {
        v10 = nonMetaClasses();
        v11 = NXMapGet(v10, a1);
        if (!v11)
        {
          if (!DisablePreopt && (preoptimized & 1) != 0)
          {
            objc_class::mangledName(a1);
            _dyld_for_each_objc_class();
          }

          _objc_fatal("no class for metaclass %p", v12, v13, v14, a1);
        }

        i = v11;
        ++getMaybeUnrealizedNonMetaClass(objc_class *,objc_object *)::secondary;
        if (PrintInitializing)
        {
          _objc_inform("INITIALIZE: %d/%d (%g%%) successful secondary metaclass lookups");
        }
      }
    }
  }

  return i;
}

_DWORD *objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::init(_DWORD *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = (v4 | (v4 >> 8) | ((v4 | (v4 >> 8)) >> 16)) + 1;
    result[4] = v5;
    result = malloc_type_malloc(16 * v5, 0xAC185C46uLL);
    if (result)
    {
      *v2 = result;
      *(v2 + 1) = 0;
      v6 = result;
    }

    else
    {
      v6 = 0;
      *v2 = 0;
      *(v2 + 1) = 0;
    }

    v7 = v2[4];
    if (v7)
    {
      v8 = 0;
      v9 = v7 + 0xFFFFFFFFFFFFFFFLL;
      v10 = v9 & 0xFFFFFFFFFFFFFFFLL;
      v11 = (v9 & 0xFFFFFFFFFFFFFFFLL) - (v9 & 1) + 2;
      v12 = vdupq_n_s64(v10);
      v13 = v6 + 4;
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v8), xmmword_1800DA160)));
        if (v14.i8[0])
        {
          *(v13 - 2) = 1;
        }

        if (v14.i8[4])
        {
          *v13 = 1;
        }

        v8 += 2;
        v13 += 4;
      }

      while (v11 != v8);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    result[4] = 0;
  }

  return result;
}

uint64_t objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::LookupBucketFor<DisguisedPtr<objc_class>>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0x8A970BE7488FDA55 * (-a2 ^ (-a2 >> 4));
    v7 = v5 - 1;
    v8 = (v5 - 1) & (bswap64(v6) ^ v6);
    v9 = &v3[2 * v8];
    v10 = *v9;
    if (*v9 == a2)
    {
      v11 = 1;
    }

    else
    {
      v13 = 0;
      v14 = 1;
      while (v10 != 1)
      {
        if (v14 > v5)
        {
          objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::FatalCorruptHashTables(a1, v3, *(a1 + 16));
        }

        if (v13)
        {
          v15 = 0;
        }

        else
        {
          v15 = v10 == 2;
        }

        if (v15)
        {
          v13 = v9;
        }

        v16 = v8 + v14++;
        v8 = v16 & v7;
        v9 = &v3[2 * (v16 & v7)];
        v10 = *v9;
        v11 = 1;
        if (*v9 == a2)
        {
          goto LABEL_7;
        }
      }

      v11 = 0;
      if (v13)
      {
        v9 = v13;
      }
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

LABEL_7:
  *a3 = v9;
  return v11;
}

void *_setThisThreadIsInitializingClass(objc_class *a1)
{
  InitializingClassList = _fetchInitializingClassList(1);
  v6 = InitializingClassList;
  if ((*a1 - 1) < 0xF || (*(*(a1 + 4) & 0xF00007FFFFFFFF8) & 1) == 0)
  {
    a1 = (*a1 & 0xFFFFFFFF8);
  }

  v7 = *InitializingClassList;
  result = *(InitializingClassList + 1);
  if (v7 < 1)
  {
    v11 = 0;
  }

  else
  {
    v9 = *v6;
    v10 = *(v6 + 1);
    do
    {
      if (a1 == *v10)
      {
        _objc_fatal("thread is already initializing this class!", v3, v4, v5);
      }

      ++v10;
      --v9;
    }

    while (v9);
    do
    {
      if (!result[v9])
      {
        result[v9] = a1;
        return result;
      }

      ++v9;
    }

    while (v7 != v9);
    v11 = *v6;
  }

  v12 = (2 * v7) | 1;
  *v6 = v12;
  result = malloc_type_realloc(result, 8 * v12, 0x80040B8603338uLL);
  *(v6 + 1) = result;
  result[v11] = a1;
  if ((v11 + 1) < *v6)
  {
    v13 = v11 + 1;
    do
    {
      *(*(v6 + 1) + 8 * v13++) = 0;
    }

    while (*v6 > v13);
  }

  return result;
}

uint64_t _initializeSwiftRefcountingThenCallRelease(objc_object *a1, double a2)
{
  Helper_x16__swift_retain = gotLoadHelper_x16__swift_retain(a2);
  *v4 = *(v3 + 3408);
  Helper_x16__swift_release = gotLoadHelper_x16__swift_release(Helper_x16__swift_retain);
  *v7 = *(v6 + 3400);
  return (*v7)(Helper_x16__swift_release);
}

uint64_t unlockClass(objc_class *a1, uint64_t a2, uint64_t a3, char *a4)
{
  if ((*a1 - 1) < 0xF || (*(*(a1 + 4) & 0xF00007FFFFFFFF8) & 1) == 0)
  {
    a1 = (*a1 & 0xFFFFFFFF8);
  }

  return _objc_sync_exit_kind(a1, 2, a3, a4);
}

BOOL objc_object::rootRelease_underflow(objc_object *this, int a2)
{
  if ((this & 0x8000000000000000) != 0)
  {
    return 0;
  }

  isa = this->isa;
  if ((this->isa & 1) == 0)
  {
    if ((*((isa & 0xFFFFFFFF8) + 0x1E) & 4) == 0)
    {
      v5 = 0;
LABEL_21:

      return objc_object::sidetable_release(this, v5, a2);
    }

    return 0;
  }

  v5 = 0;
  while (1)
  {
    while (1)
    {
      if (!(isa >> 55))
      {
        goto LABEL_25;
      }

      v7 = isa - 0x100000000000000;
      if (isa >= 0x100000000000000)
      {
        break;
      }

      if (v5)
      {
        v10 = *(v6 + 1);
        if (v10)
        {
          v11 = *(v6 + 1);
        }

        if ((v10 + 16 * v6[6]) == v9)
        {
          goto LABEL_33;
        }

        v12 = v9[1];
        if (!v12)
        {
          goto LABEL_33;
        }

        v13 = v12 - 512;
        v9[1] = v13;
        v14 = isa;
        atomic_compare_exchange_strong_explicit(this, &v14, ((v13 > 3) << 55) | isa & 0x7FFFFFFFFFFFFFLL | 0x7F00000000000000, memory_order_release, memory_order_relaxed);
        if (v14 == isa)
        {
          if (v13 <= 3)
          {
            objc_object::sidetable_clearExtraRC_nolock(this);
          }

          goto LABEL_29;
        }

        if ((v14 & 1) != 0 && v14 < 0x8100000000000000)
        {
          v15 = (v14 + 0x7F00000000000000) & 0xFF7FFFFFFFFFFFFFLL | ((v13 > 3) << 55);
          v16 = v14;
          atomic_compare_exchange_strong_explicit(this, &v16, v15, memory_order_release, memory_order_relaxed);
          if (v16 == v14)
          {
            if (v13 < 4)
            {
              objc_object::sidetable_clearExtraRC_nolock(this);
            }

            if (v15 >> 55)
            {
LABEL_29:
              objc_object::sidetable_unlock(this);
              return 0;
            }

            goto LABEL_33;
          }
        }

        objc_object::sidetable_addExtraRC_nolock(this, 128);
      }

      else
      {
        objc_object::sidetable_lock(this);
      }

      isa = this->isa;
      v5 = 1;
      if ((this->isa & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v8 = isa;
    atomic_compare_exchange_strong_explicit(this, &v8, v7, memory_order_release, memory_order_relaxed);
    if (v8 == isa)
    {
      break;
    }

    isa = v8;
    if ((v8 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (v7 >> 55)
  {
LABEL_25:
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (v5)
  {
LABEL_33:
    v18 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v19 = v18;
    atomic_compare_exchange_strong_explicit(v6, &v19, 0, memory_order_release, memory_order_relaxed);
    if (v19 != v18)
    {
    }
  }

  __dmb(9u);
  if (a2)
  {
    if ((*((this->isa & 0xFFFFFFFF8) + 0x1E) & 0x1000) != 0)
    {
      v20 = &selRef__objc_initiateDealloc;
    }

    else
    {
      v20 = &selRef_dealloc;
    }

    [this *v20];
  }

  return 1;
}

void objc_object::sidetable_clearExtraRC_nolock(objc_object *this)
{
  v1[2] = vadd_s32(v1[2], 0x1FFFFFFFFLL);
}

void *objc_class::mangledName(objc_class *this)
{
  result = atomic_load_explicit((class_data_bits_t::safe_ro<(Authentication)0>(this + 4) + 24), memory_order_acquire);
  if (!result)
  {

    return objc_class::installMangledNameForLazilyNamedClass(this, v3, v4, v5);
  }

  return result;
}

BOOL objc::Scanner::isSwiftObject(objc::Scanner *this, objc_class *a2)
{
  result = 0;
  if (!*(this + 1) || (v2 = *(this + 1), (*this & 0xFFFFFFFF8) == this))
  {
    v3 = objc_class::mangledName(this);
    if (!strcmp(v3, "_TtCs12_SwiftObject"))
    {
      return 1;
    }
  }

  return result;
}

uint64_t readClass(objc_class *a1, int a2, char a3)
{
  v5 = a1;
  v6 = (a1 + 32);
  explicit = atomic_load_explicit((class_data_bits_t::safe_ro<(Authentication)0>(a1 + 4) + 24), memory_order_acquire);
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v8 == 195903495)
  {
    goto LABEL_72;
  }

  v10 = v5;
  if (v8)
  {
    v11 = *(v5 + 8);
    while (1)
    {
      v10 = remapClass(v8);
      if (!v10)
      {
        goto LABEL_11;
      }

      if ((*v10 - 1) >= 0xF && (v10[4] & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      v8 = v10[1];
      if (v8 == 195903495)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_10;
      }

      v12 = v10[1];
    }

    v5 = v10;
    v9 = v10 + 1;
LABEL_72:
    v50 = _headerForAddress(v5);
    if (v50)
    {
      v52 = *v50;
      v51 = dyld_image_path_containing_address();
    }

    else
    {
      v51 = "??";
    }

    v53 = objc_class::nameForLogging(v5);
    _objc_fatal("Superclass of %s at %p in %s is set to %p, indicating it is missing from an installed root", v54, v55, v56, v53, v5, v51, *v9);
  }

LABEL_10:
  if ((*class_data_bits_t::safe_ro<(Authentication)0>(v10 + 4) & 2) == 0)
  {
LABEL_11:
    if (PrintConnecting)
    {
      v29 = objc_class::nameForLogging(v5);
      _objc_inform("CLASS: IGNORING class '%s' with missing weak-linked superclass", v29);
    }

    addRemappedClass(v5, 0);
    v13 = 0;
    *(v5 + 8) = 0;
    return v13;
  }

LABEL_14:
  if ((*v6 & 1) != 0 && (*(v5 + 40) & 1) == 0)
  {
    *v6 = *v6 & 0xFFFFFFFFFFFFFFFCLL | 2;
  }

  if (!explicit)
  {
    if ((a3 & 1) == 0)
    {
      class_data_bits_t::safe_ro<(Authentication)0>(((*v5 & 0xFFFFFFFF8) + 32));
      v13 = v5;
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v14 = future_named_class_map;
  if (future_named_class_map)
  {
    v15 = (**future_named_class_map)(future_named_class_map, explicit);
    v16 = _NXMapMemberWithHash(v14, explicit, v15, &v61);
    if (v16 != -1)
    {
      v17 = v16;
      v13 = NXMapRemove(v14, v16);
      strlen(v17);
      if ((_dyld_is_memory_immutable() & 1) == 0)
      {
        free(v17);
      }

      if (v13)
      {
        if (!*(future_named_class_map + 8))
        {
          NXFreeMapTable(future_named_class_map);
          future_named_class_map = 0;
        }

        if (*(v13 + 32) & 2) != 0 || (v18 = (v13 + 32), (*(v13 + 32)))
        {
          v57 = objc_class::nameForLogging(v5);
          _objc_fatal("Can't complete future class request for '%s' because the real class is too big.", v58, v59, v60, v57);
        }

        v19 = (*v18 & 0xF00007FFFFFFFF8);
        v23 = class_rw_t::ro(v19);
        if (*v9)
        {
          v24 = *v9;
        }

        else
        {
          v24 = 0;
        }

        *(v13 + 8) = v24;
        if ((v5 & 0x8000000000000000) != 0)
        {
          v33 = &objc_debug_taggedpointer_classes[v5 & 7];
          v34 = *v33;
          if (*v33)
          {
            v35 = *v33;
            v32 = v34;
            if (v34 != __NSUnrecognizedTaggedPointer)
            {
              goto LABEL_49;
            }

            v36 = &objc_debug_taggedpointer_ext_classes[(v5 >> 55)];
            v30 = *v36;
            if (*v36)
            {
              v37 = *v36;
              goto LABEL_43;
            }
          }
        }

        else
        {
          v30 = *v5 & 0x7FFFFFFFFFFFF8;
          if (v30)
          {
            v31 = *v5 & 0x7FFFFFFFFFFFF8;
LABEL_43:
            v32 = v30;
            goto LABEL_49;
          }
        }

        v32 = 0;
LABEL_49:
        if ((v32 & 0xFF80000000000007) != 0)
        {
          _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v20, v21, v22, v32);
        }

        *v13 = v32 & 0x7FFFFFFFFFFFF8;
        *(v13 + 16) = *(v5 + 16);
        v38 = *(v13 + 32);
        if ((*(v5 + 32) & 4) != 0)
        {
          v42 = *(v13 + 32);
          atomic_compare_exchange_strong_explicit(v18, &v42, v38 | 4, memory_order_relaxed, memory_order_relaxed);
          if (v42 != v38)
          {
            v49 = v42;
            do
            {
              atomic_compare_exchange_strong_explicit(v18, &v49, v42 | 4, memory_order_relaxed, memory_order_relaxed);
              v41 = v49 == v42;
              v42 = v49;
            }

            while (!v41);
          }
        }

        else
        {
          v39 = *(v13 + 32);
          atomic_compare_exchange_strong_explicit(v18, &v39, v38 & 0xFFFFFFFFFFFFFFFBLL, memory_order_relaxed, memory_order_relaxed);
          if (v39 != v38)
          {
            v40 = v39;
            do
            {
              atomic_compare_exchange_strong_explicit(v18, &v40, v39 & 0xFFFFFFFFFFFFFFFBLL, memory_order_relaxed, memory_order_relaxed);
              v41 = v40 == v39;
              v39 = v40;
            }

            while (!v41);
          }
        }

        v43 = class_data_bits_t::safe_ro<(Authentication)0>(v6);
        v44 = v19 + 1;
        v45 = v19[1];
        if (v45)
        {
          v46 = v19[1];
          v44 = (v45 & 0xFFFFFFFFFFFFFFFELL);
          if (v43)
          {
LABEL_60:
            v47 = v43;
            goto LABEL_62;
          }
        }

        else if (v43)
        {
          goto LABEL_60;
        }

        v47 = 0;
LABEL_62:
        *v44 = v47;
        v48 = atomic_load_explicit(v23 + 3, memory_order_acquire);
        strlen(v48);
        if ((_dyld_is_memory_immutable() & 1) == 0)
        {
          free(v48);
        }

        free(v23);
        addRemappedClass(v5, v13);
        v25 = v5;
        if (!v5 && (a3 & 1) != 0)
        {
          goto LABEL_36;
        }

        goto LABEL_31;
      }
    }
  }

  if (a3)
  {
LABEL_33:
    v13 = v5;
    goto LABEL_36;
  }

  v25 = 0;
  v13 = v5;
LABEL_31:
  addNamedClass(v13, explicit, v25);
  v5 = v13;
LABEL_35:
  addClassTableEntry(v5, 1);
LABEL_36:
  if (a2)
  {
    v26 = class_data_bits_t::safe_ro<(Authentication)0>((v13 + 32));
    *v26 |= 0x20000000u;
    v27 = class_data_bits_t::safe_ro<(Authentication)0>(((*v13 & 0xFFFFFFFF8) + 32));
    *v27 |= 0x20000000u;
  }

  return v13;
}

objc_class *objc_readClassPair(objc_class *a1)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if (*(a1 + 1))
  {
    v4 = *(a1 + 1);
    class_data_bits_t::safe_ro<(Authentication)0>(a1 + 4);
    if ((*v4 - 1) >= 0xF && (*(v4 + 4) & 0x8000000000000000) != 0 && (*((*(v4 + 4) & 0xF00007FFFFFFFF8) + 3) & 4) != 0)
    {
      v4 = 0;
      goto LABEL_22;
    }

    v5 = 0;
  }

  else
  {
    v4 = 0;
    if ((*class_data_bits_t::safe_ro<(Authentication)0>(a1 + 4) & 2) == 0)
    {
      goto LABEL_22;
    }

    v5 = 1;
  }

  Class = readClass(a1, 0, 0);
  v7 = Class;
  if (Class != a1)
  {
    v15 = objc_class::nameForLogging(Class);
    _objc_fatal("objc_readClassPair for class %s changed %p to %p", v16, v17, v18, v15, a1, v7);
  }

  if ((v5 & 1) == 0)
  {
    v8 = class_data_bits_t::safe_ro<(Authentication)0>(Class + 4);
    while (1)
    {
      v9 = *(v8 + 4);
      v8 = class_data_bits_t::safe_ro<(Authentication)0>(v4 + 4);
      if (v9 < *(v8 + 8))
      {
        break;
      }

      if ((*v4 - 1) >= 0xF && (*(v4 + 4) & 0x8000000000000000) != 0 || !*(v4 + 1))
      {
        goto LABEL_21;
      }

      v4 = *(v4 + 1);
    }

    if (PrintConnecting)
    {
      v13 = objc_class::nameForLogging(v7);
      v14 = objc_class::nameForLogging(v4);
      _objc_inform("CLASS: eagerly realizing class '%s' in objc_readClassPair, overlap found with superclass '%s' - subclass start %u < superclass size %u", v13, v14, v9, *(v8 + 8));
    }

    v7 = realizeClassWithoutSwift(v7, 0);
  }

LABEL_21:
  *(*v7 & 0xFFFFFFFF8) &= 0xFFFFFFFF8uLL;
  v4 = v7;
LABEL_22:
  v10 = *(StatusReg + 24);
  v11 = v10;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != v10)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v4;
}

void sub_1800B8998(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void cache_t::maybeConvertToPreoptimized(cache_t *this)
{
  v2 = *this & 0xFFFFFFFFFFFLL;
  v3 = *(v2 + 8);
  if (v3 < 0)
  {
    if (*(this + 2) != (HIDWORD(v1) ^ v1))
    {
      __break(1u);
      JUMPOUT(0x1800B8B2CLL);
    }

    v5 = (this - 16);
    if ((*(*(this + 2) & 0xF00007FFFFFFFF8) & 2) != 0 || (v3 & 0x40000000) != 0 && (*(*(this + 2) & 0xF00007FFFFFFFF8) & 4) != 0)
    {
      if (PrintCaches)
      {
        if ((*(this + 7) & 4) != 0)
        {
          v7 = "meta";
        }

        else
        {
          v7 = "";
        }

        v8 = objc_class::nameForLogging(v5);
        _objc_inform("CACHES: %sclass %s: dropping cache (from %s)", v7, v8, "setInitialized");
      }

      v6 = 0;
      atomic_store(&_objc_empty_cache & 0xFFFFFFFFFFFLL, this);
    }

    else
    {
      *this = ((((*(v2 + 8) & 0x1FLL) << 55) | (__clz(*(v2 + 8) >> 5) << 60)) - 0x1000000000000000) | (v2 + 16) | 1;
      v6 = *(v2 + 10) & 0x3FFF;
    }

    *(this + 6) = v6;
  }
}

unint64_t make_ro_writeable_nolock(class_rw_t *this)
{
  if ((*(this + 3) & 8) == 0)
  {
    v2 = class_rw_t::ro(this);
    v3 = class_ro_t::duplicate(v2);
    v4 = (this + 8);
    v5 = *(this + 1);
    if (v5)
    {
      v6 = *(this + 1);
      v4 = (v5 & 0xFFFFFFFFFFFFFFFELL);
      if (v3)
      {
LABEL_6:
        v7 = v3;
LABEL_8:
        *v4 = v7;
        *this |= 0x8000000u;
        goto LABEL_9;
      }
    }

    else if (v3)
    {
      goto LABEL_6;
    }

    v7 = 0;
    goto LABEL_8;
  }

LABEL_9:

  return class_rw_t::ro(this);
}

void *class_ro_t::duplicate(class_ro_t *this)
{
  v2 = *this;
  if ((*this & 0x40) != 0)
  {
    v3 = 80;
  }

  else
  {
    v3 = 72;
  }

  v4 = malloc_type_malloc(v3, 0x9620E368uLL);
  memcpy(v4, this, v3);
  if ((v2 & 0x40) != 0)
  {
    v5 = *(this + 9);
    if (v5)
    {
      v6 = *(this + 9);
    }

    v4[9] = v5;
  }

  v7 = *(this + 4);
  if (v7)
  {
    v8 = (*(this + 4) & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v7 & 1) != 0 && v7 >= 2)
  {
    v9 = v7 | 1;
LABEL_16:
    v4[4] = v9;
  }

  return v4;
}

void attachCategories(objc_class *a1, uint64_t a2, const char *a3, char *a4, int a5)
{
  v5 = a5;
  v6 = a3;
  v7 = a2;
  v50 = a1;
  v49 = a5;
  if (PrintReplacedMethods)
  {
    printReplacements(a1, a2, a3, a4);
  }

  if (PrintConnecting)
  {
    if ((v5 & 8) != 0)
    {
      v36 = " existing";
    }

    else
    {
      v36 = "";
    }

    v37 = objc_class::nameForLogging(a1);
    v8 = v5 & 2;
    v38 = " (meta)";
    if ((v5 & 2) == 0)
    {
      v38 = "";
    }

    _objc_inform("CLASS: attaching %d categories to%s class '%s'%s", v6, v36, v37, v38);
    if (v6)
    {
      v39 = v6;
      v40 = v7;
      do
      {
        v41 = *v40;
        v40 += 2;
        _objc_inform("    category: (%s) %p", *v41, v41);
        --v39;
      }

      while (v39);
    }
  }

  else
  {
    v8 = v5 & 2;
  }

  v48[128] = 0;
  v48[258] = 0;
  v48[388] = 0;
  v47[128] = 0;
  v47[258] = 0;
  v47[388] = 0;
  v46 = 0;
  v43 = class_rw_t::extAllocIfNeeded((*(a1 + 4) & 0xF00007FFFFFFFF8));
  v45 = v43;
  if (v6)
  {
    v9 = 0;
    for (i = v6; i; --i)
    {
      v11 = *v7;
      v12 = *v7;
      if (v8)
      {
        v13 = v12[3];
        if (v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v13 = v12[2];
        if (v13)
        {
LABEL_9:
          v14 = v13;
          goto LABEL_12;
        }
      }

      v14 = 0;
LABEL_12:
      v15 = v7[1];
      v16 = *(v15 + v15[1] + 12);
      v17 = DisablePreattachedCategories == 0;
      v18 = v16 & v17;
      if ((v16 & v17) != 0)
      {
        v19 = v48;
      }

      else
      {
        v19 = v47;
      }

      if (v14)
      {
        if ((v16 & (DisablePreattachedCategories == 0)) != 0)
        {
          v20 = v48;
        }

        else
        {
          v20 = v47;
        }

        v21 = v20[128];
        if (v21 >= 0x40)
        {
          prepareMethodLists(a1, v19, v21, 0, v9 & 1, "attachCategories");
          if (PrintPreopt)
          {
            v23 = "methods";
          }

          else
          {
            v23 = 0;
          }

          list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::attachLists(v43 + 1, v19, v20[128], (v18 & 1), v23, v22);
          v21 = 0;
          v11 = *v7;
          v15 = v7[1];
        }

        v20[128] = v21 + 1;
        *&v19[2 * (v21 ^ 0x3F)] = v14;
        v9 |= *(v15 + *v15 + 12) == 8;
        v46 = v9;
      }

      if (!v8)
      {
        v24 = 5;
        goto LABEL_29;
      }

      if ((*(v15 + v15[1] + 12) & 0x40) != 0)
      {
        v24 = 6;
LABEL_29:
        v25 = v11[v24];
        if (v25)
        {
          if (v18)
          {
            v26 = v48;
          }

          else
          {
            v26 = v47;
          }

          v27 = v26[258];
          if (v27 >= 0x40)
          {
            if (v18)
            {
              v28 = v48;
            }

            else
            {
              v28 = v47;
            }

            if (PrintPreopt)
            {
              v29 = "properties";
            }

            else
            {
              v29 = 0;
            }

            list_array_tt<property_t,property_list_t,RawPtr>::attachLists(v43 + 2, (v19 + 130), v28[258], (v18 & 1), v29);
            v27 = 0;
            v11 = *v7;
          }

          v26[258] = v27 + 1;
          *&v19[2 * (v27 ^ 0x3F) + 130] = v25;
        }

        if (!v8)
        {
          v30 = v11[4];
          if (v30)
          {
            v31 = (v19 + 260);
            if (v18)
            {
              v32 = v48;
            }

            else
            {
              v32 = v47;
            }

            v33 = v32[388];
            if (v33 >= 0x40)
            {
              if (v18)
              {
                v34 = v48;
              }

              else
              {
                v34 = v47;
              }

              if (PrintPreopt)
              {
                v35 = "protocols";
              }

              else
              {
                v35 = 0;
              }

              list_array_tt<property_t,property_list_t,RawPtr>::attachLists(v43 + 3, v31, v34[388], (v18 & 1), v35);
              v33 = 0;
            }

            v32[388] = v33 + 1;
            *(v31 + 8 * (v33 ^ 0x3F)) = v30;
          }
        }
      }

      v7 += 2;
    }
  }

  v44[0] = &v50;
  v44[1] = &v46;
  v44[2] = &v45;
  v44[3] = &v49;
  attachCategories(objc_class *,locstamped_category_t const*,unsigned int,objc_class *,int)::$_0::operator()(v44, v48, 1);
  attachCategories(objc_class *,locstamped_category_t const*,unsigned int,objc_class *,int)::$_0::operator()(v44, v47, 0);
}

void objc::UnattachedCategories::addForClass(const char **a1, const char **a2, uint64_t this)
{
  if (PrintConnecting)
  {
    v18 = 45;
    if ((*this - 1) >= 0xF)
    {
      if (*(*(this + 32) & 0xF00007FFFFFFFF8))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }
    }

    v19 = objc_class::nameForLogging(this);
    _objc_inform("CLASS: found category %c%s(%s)", v18, v19, *a1);
  }

  v6 = -this;
  v21 = 0;
  v7 = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::LookupBucketFor<DisguisedPtr<objc_class>>(v6, &v21);
  v8 = v21;
  if (v7)
  {
    v9 = *(v21 + 16);
    if (v9)
    {
      v13 = v9 >> 1;
      v14 = *(v21 + 8);
      if (v9 >> 1 == HIDWORD(v9))
      {
        v15 = 1 << (30 - __clz(v13));
        if (!(v9 >> 35))
        {
          v15 = 2;
        }

        v16 = v15 + v13;
        *(v21 + 16) = *(v21 + 16) | (v16 << 32);
        v14 = reallocf(v14, 16 * v16);
        *(v8 + 8) = v14;
        v9 = *(v8 + 16);
      }

      *(v8 + 16) = v9 & 0xFFFFFFFF00000001 | (2 * (((v9 + 2) >> 1) & 0x7FFFFFFF));
      v17 = &v14[16 * (v9 >> 1)];
      *v17 = a1;
      v17[1] = a2;
    }

    else if (*(v21 + 8))
    {
      v10 = malloc_type_malloc(0x20uLL, 0x20040A4A59CD2uLL);
      *v10 = *(v8 + 8);
      v10[2] = a1;
      v10[3] = a2;
      *(v8 + 8) = v10;
      *(v8 + 16) = 0x200000005;
    }

    else
    {
      *(v21 + 8) = a1;
      *(v8 + 16) = a2;
    }

    return;
  }

  *&v11 = a1;
  v12 = dword_1ED3F6388;
  if (4 * DWORD2(objc::unattachedCategories) + 4 >= (3 * dword_1ED3F6388))
  {
    v12 = 2 * dword_1ED3F6388;
    goto LABEL_28;
  }

  if (dword_1ED3F6388 + ~DWORD2(objc::unattachedCategories) - HIDWORD(objc::unattachedCategories) <= dword_1ED3F6388 >> 3)
  {
LABEL_28:
    objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::grow(v12);
    v21 = 0;
    objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::LookupBucketFor<DisguisedPtr<objc_class>>(v6, &v21);
    *&v11 = a1;
    v8 = v21;
  }

  *(&v11 + 1) = a2;
  if (*v8 == 2)
  {
    *(&objc::unattachedCategories + 1) = vadd_s32(*(&objc::unattachedCategories + 8), 0xFFFFFFFF00000001);
  }

  else if (*v8 == 1)
  {
    ++DWORD2(objc::unattachedCategories);
  }

  else if (*(v8 + 16))
  {
    v20 = v11;
    free(*(v8 + 8));
    v11 = v20;
  }

  *v8 = v6;
  *(v8 + 8) = v11;
}

void attachCategories(objc_class *,locstamped_category_t const*,unsigned int,objc_class *,int)::$_0::operator()(uint64_t a1, unsigned int *a2, char *a3)
{
  v6 = a2[128];
  if (v6)
  {
    v7 = a2 + 128;
    prepareMethodLists(**a1, &a2[-2 * v6 + 128], v6, 0, **(a1 + 8), "operator()");
    v9 = PrintPreopt ? "methods" : 0;
    list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::attachLists((**(a1 + 16) + 8), &v7[-2 * *v7], *v7, a3, v9, v8);
    if ((**(a1 + 24) & 8) != 0)
    {
      v11 = **a1;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3321888768;
      v14[2] = ___ZZL16attachCategoriesP10objc_classPK21locstamped_category_tjS0_iENK3__0clEPZL16attachCategoriesS0_S3_jS0_iE5Listsb_block_invoke;
      v14[3] = &__block_descriptor_33_e8_32c127_ZTSKZZL16attachCategoriesP10objc_classPK21locstamped_category_tjS0_iENK3__0clEPZL16attachCategoriesS0_S3_jS0_iE5ListsbEUlS0_E__e8_B16__0_8l;
      flushCaches(v11, "operator()", v14, v10);
    }
  }

  if (PrintPreopt)
  {
    v12 = "properties";
  }

  else
  {
    v12 = 0;
  }

  list_array_tt<property_t,property_list_t,RawPtr>::attachLists((**(a1 + 16) + 16), &a2[-2 * a2[258] + 258], a2[258], a3, v12);
  if (PrintPreopt)
  {
    v13 = "protocols";
  }

  else
  {
    v13 = 0;
  }

  list_array_tt<property_t,property_list_t,RawPtr>::attachLists((**(a1 + 16) + 24), &a2[-2 * a2[388] + 388], a2[388], a3, v13);
}

void list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::attachLists(unint64_t *a1, uint64_t a2, const char *a3, char *a4, const char *a5, unint64_t a6)
{
  if (!a3)
  {
    return;
  }

  v7 = a3;
  v8 = a2;
  v10 = *a1;
  if (a4)
  {
    if (v10)
    {
      if ((*a1 & 3) == 2 && (v10 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        if (a5)
        {
          _objc_inform("PREOPTIMIZATION: not attaching preoptimized category, class's %s list %p is still original.", a5, (v10 & 0xFFFFFFFFFFFFFFFCLL));
        }

        return;
      }
    }

    if (a5)
    {
      _objc_inform("PREOPTIMIZATION: copying preoptimized category, class's %s list has already been copied.", a5);
      v10 = *a1;
      if (*a1)
      {
        goto LABEL_11;
      }

LABEL_53:
      if (v7 != 1)
      {
LABEL_56:
        v13 = 0;
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  if (!v10)
  {
    goto LABEL_53;
  }

LABEL_11:
  v12 = v10;
  v13 = v10;
  if (v7 == 1 && v10 <= 3)
  {
LABEL_54:
    v28 = *v8;
    goto LABEL_55;
  }

  if (v10 < 4)
  {
    if (!v10)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v14 = v10 & 3;
  if ((v12 & 3) > 1)
  {
    if (v14 != 2)
    {
      return;
    }

    v29 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v12 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      return;
    }

    if (DisablePreattachedCategories)
    {
      v32 = *v29;
      v31 = v29[1];
      v54 = v31 * v32;
      if ((v54 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v31, v29, *v29);
      }

      v55 = v29 + v54 + 8;
      v56 = v31 == 0;
      if (v31)
      {
        v31 = v31;
      }

      else
      {
        v31 = 0;
      }

      if (v56)
      {
        j = v55;
      }

      else
      {
        j = (v55 - v32);
      }
    }

    else
    {
      j = (v29 + 2);
      v32 = *v29;
      v31 = v29[1];
    }

    v33 = v31 * v32;
    if ((v33 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v31, v29, v32);
    }

    for (i = v29 + v33 + 8; j < i; j = (j + v32))
    {
      if (*(objc_debug_headerInfoRWs + 8 + 8 * *j))
      {
        break;
      }
    }

    v35 = relative_list_list_t<method_list_t>::countLists(v29, a2, a3, a4) + v7;
    v36 = malloc_type_malloc(8 * v35 + 8, 0x1000040D9BFD5C6uLL);
    *v36 = v35;
    v37 = (v36 + 8);
    v38 = v7;
    v39 = (v36 + 8);
    v40 = (v36 + 8);
    v41 = v7;
    do
    {
      *v8;
      *v40++ = *v8;
      v39 += 2;
      ++v8;
      --v41;
    }

    while (v41);
    v42 = v29 + 2;
    v43 = &runtimeLock;
    if (v35 > v7)
    {
      do
      {
        v44 = *j;
        if (a5)
        {
          v48 = v36;
          _objc_inform("PREOPTIMIZATION: copying preoptimized %s list %p", a5, j + (v44 >> 16));
          v43 = &runtimeLock;
          v42 = v29 + 2;
          v36 = v48;
          v44 = *j;
        }

        *&v37[2 * v38] = j + (v44 >> 16);
        v45 = v29[1];
        v46 = v45 * *v29;
        if ((v46 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v45, v29, *v29);
        }

        v47 = v42 + v46;
        for (j = (j + v32); j < v47; j = (j + v32))
        {
          if (*(*(v43 + 264) + 8 + 8 * *j))
          {
            break;
          }
        }

        ++v38;
      }

      while (v38 != v35);
    }

    v28 = v36 | 1;
  }

  else
  {
    if (!v14)
    {
LABEL_57:
      if (v13)
      {
        v49 = v7 + 1;
      }

      else
      {
        v49 = v7;
      }

      v50 = malloc_type_malloc(8 * v49 + 8, 0x1000040D9BFD5C6uLL);
      *a1 = v50 | 1;
      *v50 = v49;
      v51 = v7;
      if (v13)
      {
        *(v50 + 8 * v7 + 8) = v13;
      }

      v52 = (v50 + 8);
      v53 = (v50 + 8);
      do
      {
        *v8;
        *v53++ = *v8;
        v52 += 2;
        ++v8;
        --v51;
      }

      while (v51);
      goto LABEL_64;
    }

    v15 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v12 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      return;
    }

    v16 = *v15;
    v17 = *v15 + v7;
    v18 = malloc_type_malloc(8 * v17 + 8, 0x1000040D9BFD5C6uLL);
    v19 = v18;
    *v18 = v17;
    v20 = (v16 - 1);
    if (v16 - 1 >= 0)
    {
      v21 = v20 + 1;
      v22 = &v15[2 * v20 + 2];
      do
      {
        if (*&v15[2 * v21])
        {
          v23 = *&v15[2 * v21];
        }

        else
        {
          v23 = 0;
        }

        *&v18[2 * v7 + 2 * v21] = v23;
        v22 -= 8;
      }

      while (v21-- > 1);
    }

    v25 = v18 + 2;
    v26 = v7;
    v27 = (v18 + 2);
    do
    {
      *v8;
      *v27++ = *v8;
      v25 += 2;
      ++v8;
      --v26;
    }

    while (v26);
    free(v15);
    v28 = v19 | 1;
  }

LABEL_55:
  *a1 = v28;
LABEL_64:

  list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::validate(a1, a2, a3, a4, a5, a6);
}

uint64_t relative_list_list_t<method_list_t>::countLists(unsigned int *a1, uint64_t a2, const char *a3, char *a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 * v4;
  if ((v6 & 0xFFFFFFFF00000000) != 0)
  {
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v5, a1, v4);
  }

  v7 = (a1 + 2);
  v8 = a1 + v6 + 8;
  if (DisablePreattachedCategories)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = (v8 - v4);
  }

  for (; v7 < v8; v7 = (v7 + v4))
  {
    if (*(objc_debug_headerInfoRWs + 8 + 8 * *v7))
    {
      break;
    }
  }

  if (v7 >= v8)
  {
    return 0;
  }

  result = 0;
  do
  {
    do
    {
      v7 = (v7 + v4);
    }

    while (v7 < v8 && (*(objc_debug_headerInfoRWs + 8 + 8 * *v7) & 1) == 0);
    ++result;
  }

  while (v7 < v8);
  return result;
}

BOOL ___ZZL16attachCategoriesP10objc_classPK21locstamped_category_tjS0_iENK3__0clEPZL16attachCategoriesS0_S3_jS0_iE5Listsb_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    return 0;
  }

  if (v2 == &_objc_empty_cache)
  {
    v3 = 0;
  }

  else
  {
    v3 = HIWORD(*(a2 + 16)) == 0;
    *(a2 + 16);
  }

  return !v3;
}

Class objc_allocateClassPair(Class superclass, const char *name, size_t extraBytes)
{
  if (look_up_class(name))
  {
    return 0;
  }

  v6 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    os_unfair_lock_lock_with_options();
  }

  if (superclass)
  {
    realizeAndInitializeIfNeeded_locked(0, superclass, 0);
  }

  if (getClassExceptSomeSwift(name) || superclass && (*superclass - 1) >= 0xF && (*(superclass + 4) & 0x8000000000000000) != 0 && (*((*(superclass + 4) & 0xF00007FFFFFFFF8) + 3) & 4) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = alloc_class_for_subclass(superclass);
    v8 = alloc_class_for_subclass(superclass);
    objc_initializeClassPair_internal(superclass, name, v5, v8);
  }

  v9 = *(StatusReg + 24);
  v10 = v9;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != v9)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v5;
}

void sub_1800B9C68(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

char *alloc_class_for_subclass(objc_class *a1)
{
  if (a1 && ((*(a1 + 4) & 2) != 0 || (*(a1 + 4) & 1) != 0))
  {
    v3 = *(a1 + 14);
    v4 = a1 - *(a1 + 15);
    v5 = malloc_type_zone_malloc_with_options();
    memcpy(v5, v4, v3);
    v6 = &v5[*(a1 + 15)];
    *(v6 + 4) = 0;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 8) = 0;
    if (classCopyFixupHandlers >= 2uLL)
    {
      v7 = qword_1ED3F6080;
    }

    else
    {
      v7 = &qword_1ED3F6080;
    }

    if (classCopyFixupHandlers)
    {
      v8 = 8 * classCopyFixupHandlers;
      do
      {
        v9 = *v7++;
        v9(a1, v6);
        v8 -= 8;
      }

      while (v8);
    }

    return v6;
  }

  else
  {

    return malloc_type_zone_malloc_with_options();
  }
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

unint64_t objc_initializeClassPair_internal(objc_class *a1, const char *a2, objc_class *a3, unint64_t a4)
{
  v7 = malloc_type_calloc(0x20uLL, 1uLL, 0x1080040D2A7D70AuLL);
  v8 = malloc_type_calloc(0x20uLL, 1uLL, 0x1080040D2A7D70AuLL);
  v9 = malloc_type_calloc(0x48uLL, 1uLL, 0x10F20403D42F3C1uLL);
  v10 = malloc_type_calloc(0x48uLL, 1uLL, 0x10F20403D42F3C1uLL);
  *v7 = -1945632768;
  v11 = v7 + 1;
  *v8 = -1945632767;
  *v9 = 0;
  *v10 = 1;
  v12 = (a3 + 32);
  class_data_bits_t::setData(a3 + 4, v7);
  if (v7[1])
  {
    v13 = *v11;
    *(v7[1] & 0xFFFFFFFFFFFFFFFELL) = v9;
  }

  else
  {
    *v11 = v9;
  }

  v14 = (a4 + 32);
  class_data_bits_t::setData((a4 + 32), v8);
  v15 = v8 + 1;
  v16 = v8[1];
  if (v16)
  {
    v17 = v8[1];
    v15 = (v16 & 0xFFFFFFFFFFFFFFFELL);
  }

  *v15 = v10;
  v18 = a2;
  if (a1)
  {
    *v7 |= *(*(a1 + 4) & 0xF00007FFFFFFFF8) & 0x100000;
    *(v9 + 1) = *(class_rw_t::ro((*(a1 + 4) & 0xF00007FFFFFFFF8)) + 8);
    *(v10 + 1) = *(class_rw_t::ro((*((*a1 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8)) + 8);
    objc_class::setInstanceSize(a3, *(v9 + 1));
    objc_class::setInstanceSize(a4, *(v10 + 1));
    if ((*(a1 + 4) & 2) != 0)
    {
      v19 = *v12;
      v20 = *v12;
      atomic_compare_exchange_strong_explicit(v12, &v20, *v12 & 0xFFFFFFFFFFFFFFFCLL | 2, memory_order_relaxed, memory_order_relaxed);
      if (v20 != v19)
      {
        v37 = v20;
        do
        {
          atomic_compare_exchange_strong_explicit(v12, &v37, v20 & 0xFFFFFFFFFFFFFFFCLL | 2, memory_order_relaxed, memory_order_relaxed);
          v28 = v37 == v20;
          v20 = v37;
        }

        while (!v28);
      }

      v21 = *v14;
      v22 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v22, *v14 & 0xFFFFFFFFFFFFFFFCLL | 2, memory_order_relaxed, memory_order_relaxed);
      if (v22 != v21)
      {
        v38 = v22;
        do
        {
          atomic_compare_exchange_strong_explicit(v14, &v38, v22 & 0xFFFFFFFFFFFFFFFCLL | 2, memory_order_relaxed, memory_order_relaxed);
          v28 = v38 == v22;
          v22 = v38;
        }

        while (!v28);
      }
    }

    if (*(a1 + 4))
    {
      v23 = *v12;
      v24 = *v12;
      atomic_compare_exchange_strong_explicit(v12, &v24, *v12 & 0xFFFFFFFFFFFFFFFCLL | 1, memory_order_relaxed, memory_order_relaxed);
      if (v24 != v23)
      {
        v39 = v24;
        do
        {
          atomic_compare_exchange_strong_explicit(v12, &v39, v24 & 0xFFFFFFFFFFFFFFFCLL | 1, memory_order_relaxed, memory_order_relaxed);
          v28 = v39 == v24;
          v24 = v39;
        }

        while (!v28);
      }

      v25 = *v14;
      v26 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v26, *v14 & 0xFFFFFFFFFFFFFFFCLL | 1, memory_order_relaxed, memory_order_relaxed);
      if (v26 != v25)
      {
        v27 = v26;
        do
        {
          atomic_compare_exchange_strong_explicit(v14, &v27, v26 & 0xFFFFFFFFFFFFFFFCLL | 1, memory_order_relaxed, memory_order_relaxed);
          v28 = v27 == v26;
          v26 = v27;
        }

        while (!v28);
      }
    }
  }

  else
  {
    *v9 |= 2u;
    v29 = *v10 | 2;
    *(v9 + 1) = 0;
    *v10 = v29;
    *(v10 + 1) = 40;
    objc_class::setInstanceSize(a3, 8u);
    objc_class::setInstanceSize(a4, *(v10 + 1));
  }

  v30 = strlen(a2);
  if ((_dyld_is_memory_immutable() & 1) == 0)
  {
    v34 = malloc_type_malloc(v30 + 1, 0x9620E368uLL);
    memcpy(v34, a2, v30 + 1);
    v18 = v34;
  }

  atomic_store(v18, v9 + 3);
  atomic_store(v18, v10 + 3);
  *(v9 + 2) = &UnsetLayout;
  *(v9 + 7) = &UnsetLayout;
  *(a3 + 2) = &_objc_empty_cache;
  *(a3 + 3) = 0;
  *(a4 + 16) = &_objc_empty_cache;
  *(a4 + 24) = 0;
  atomic_fetch_or_explicit((a4 + 30), 4u, memory_order_relaxed);
  atomic_fetch_or_explicit((a4 + 30), 0x2000u, memory_order_relaxed);
  if ((a4 & 0xFF80000000000007) != 0)
  {
    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v31, v32, v33, a4);
  }

  *a3 = a4 & 0x7FFFFFFFFFFFF8;
  if (a1)
  {
    *a4 = *(*a1 & 0xFFFFFFFF8) & 0xFFFFFFFF8;
    *(a3 + 1) = a1;
    *(a4 + 8) = *a1 & 0xFFFFFFFF8;
    addSubclass(a1, a3);
    v35 = (*a1 & 0xFFFFFFFF8);
  }

  else
  {
    *a4 = a4 & 0x7FFFFFFFFFFFF8;
    *(a3 + 1) = 0;
    *(a4 + 8) = a3;
    ++objc_debug_realized_class_generation_count;
    *((*(a3 + 4) & 0xF00007FFFFFFFF8) + 0x18) = _firstRealizedClass;
    _firstRealizedClass = a3;
    v35 = a3;
  }

  addSubclass(v35, a4);

  return addClassTableEntry(a3, 1);
}

uint64_t objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::try_emplace<objc::detail::DenseSetEmpty&>(uint64_t a1, int32x2_t *a2, uint64_t *a3)
{
  v13 = 0;
  result = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::LookupBucketFor<DisguisedPtr<objc_class>>(a2, *a3, &v13);
  v7 = v13;
  if (result)
  {
    v8 = 0;
    v9 = *a2;
    goto LABEL_3;
  }

  v11 = a2[1].i32[0];
  v12 = a2[2].u32[0];
  if (4 * v11 + 4 >= 3 * v12)
  {
    v12 *= 2;
    goto LABEL_12;
  }

  if (v12 + ~v11 - a2[1].i32[1] <= v12 >> 3)
  {
LABEL_12:
    objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::grow(a2, v12);
    v13 = 0;
    result = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::LookupBucketFor<DisguisedPtr<objc_class>>(a2, *a3, &v13);
    v7 = v13;
  }

  if (*v7 == 2)
  {
    a2[1] = vadd_s32(a2[1], 0xFFFFFFFF00000001);
  }

  else if (*v7 == 1)
  {
    ++a2[1].i32[0];
  }

  *v7 = *a3;
  v9 = *a2;
  v8 = 1;
LABEL_3:
  v10 = *&v9 + 8 * a2[2].u32[0];
  *a1 = v7;
  *(a1 + 8) = v10;
  *(a1 + 16) = v8;
  return result;
}

void objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
  v7 = v6 | HIWORD(v6);
  if ((v7 + 1) > 4)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 4;
  }

  *(a1 + 16) = v8;
  v9 = malloc_type_malloc(8 * v8, 0xAC185C46uLL);
  if (v9)
  {
    *a1 = v9;
    *(a1 + 8) = 0;
    if (v4)
    {
      v11 = v9;
LABEL_13:
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = 0;
        v15 = v13 + 0x1FFFFFFFFFFFFFFFLL;
        v16 = v15 & 0x1FFFFFFFFFFFFFFFLL;
        v17 = (v15 & 0x1FFFFFFFFFFFFFFFLL) - (v15 & 1) + 2;
        v18 = vdupq_n_s64(v16);
        do
        {
          v19 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(vdupq_n_s64(v14), xmmword_1800DA160)));
          if (v19.i8[0])
          {
            v11[v14] = 1;
          }

          if (v19.i8[4])
          {
            v11[v14 + 1] = 1;
          }

          v14 += 2;
        }

        while (v17 != v14);
      }

      if (v3)
      {
        v20 = 8 * v3;
        v21 = v4;
        do
        {
          v22 = *v21;
          if ((*v21 - 1) >= 2)
          {
            v30 = 0;
            objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::LookupBucketFor<DisguisedPtr<objc_class>>(a1, v22, &v30);
            *v30 = *v21;
            ++*(a1 + 8);
          }

          ++v21;
          v20 -= 8;
        }

        while (v20);
      }

      free(v4);
      return;
    }

    v12 = v9;
  }

  else
  {
    *&v10 = 0;
    v12 = 0;
    v11 = 0;
    *a1 = v10;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0x1FFFFFFFFFFFFFFFLL;
    v26 = v25 & 0x1FFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0x1FFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
    v28 = vdupq_n_s64(v26);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_1800DA160)));
      if (v29.i8[0])
      {
        v12[v24] = 1;
      }

      if (v29.i8[4])
      {
        v12[v24 + 1] = 1;
      }

      v24 += 2;
    }

    while (v27 != v24);
  }
}

Protocol *__cdecl objc_getProtocol(const char *name)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  Protocol = getProtocol(name);
  v5 = *(StatusReg + 24);
  v6 = v5;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != v5)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return Protocol;
}

void sub_1800BAAA4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
  v7 = v6 | HIWORD(v6);
  if ((v7 + 1) > 4)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 4;
  }

  *(a1 + 16) = v8;
  v9 = malloc_type_malloc(8 * v8, 0xAC185C46uLL);
  if (v9)
  {
    *a1 = v9;
    if (v4)
    {
      v10 = &v4[v3];
      *(a1 + 8) = 0;
LABEL_13:
      v11 = *(a1 + 16);
      if (v11)
      {
        memset(v9, 255, 8 * v11);
      }

      if (v3)
      {
        v12 = v4;
        do
        {
          v13 = *v12;
          if (!objc::DenseMapInfo<char const*>::isEqual(*v12, 0xFFFFFFFFFFFFFFFFLL) && !objc::DenseMapInfo<char const*>::isEqual(v13, 0xFFFFFFFFFFFFFFFELL))
          {
            v15 = 0;
            objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::LookupBucketFor<char const*>(a1, v13, &v15);
            *v15 = *v12;
            ++*(a1 + 8);
          }

          ++v12;
        }

        while (v12 != v10);
      }

      free(v4);
      return;
    }

    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    v9 = 0;
    if (v4)
    {
      v10 = &v4[v3];
      *(a1 + 8) = 0;
      goto LABEL_13;
    }

    *(a1 + 8) = 0;
  }

  v14 = *(a1 + 16);
  if (v14)
  {

    memset(v9, 255, 8 * v14);
  }
}

uint64_t addNamedClass(objc_class *a1, const char *a2, objc_class *a3)
{
  ClassExceptSomeSwift = getClassExceptSomeSwift(a2);
  if (!ClassExceptSomeSwift || (v7 = ClassExceptSomeSwift, ClassExceptSomeSwift == a3))
  {
    v15 = namedClassTableHash(a2);
    v16 = a1;
    v17 = gdb_objc_realized_classes;
    v18 = a2;
    goto LABEL_23;
  }

  v8 = _headerForAddress(ClassExceptSomeSwift);
  v9 = _headerForAddress(a1);
  v10 = v9;
  if (!v8)
  {
    v12 = "??";
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_8:
    v14 = "??";
    goto LABEL_9;
  }

  v11 = *v8;
  v12 = dyld_image_path_containing_address();
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_5:
  v13 = *v10;
  v14 = dyld_image_path_containing_address();
LABEL_9:
  v19 = _NSGetMachExecuteHeader();
  size = 0;
  v20 = getsectdatafromheader_64(v19, "__DATA_CONST", "__objc_dupclass", &size);
  v21 = &v20[_dyld_get_image_slide()];
  while (1)
  {
    v22 = _NSGetMachExecuteHeader();
    size = 0;
    v23 = getsectdatafromheader_64(v22, "__DATA_CONST", "__objc_dupclass", &size);
    if (v21 >= &v23[_dyld_get_image_slide() + size])
    {
      break;
    }

    v24 = *v21;
    v21 += 8;
    if (!strcmp((v24 + 8), a2))
    {
      goto LABEL_22;
    }
  }

  v25 = _objc_fault_and_log;
  if (DebugDuplicateClasses > 2)
  {
    if (DebugDuplicateClasses == 3)
    {
LABEL_21:
      v25("Class %s is implemented in both %s (%p) and %s (%p). This may cause spurious casting failures and mysterious crashes. One of the duplicates must be removed or renamed.", a2, v12, v7, v14, a1);
      goto LABEL_22;
    }

    if (DebugDuplicateClasses != 4)
    {
LABEL_20:
      v25 = _objc_inform;
      goto LABEL_21;
    }

    _objc_stochastic_fault("Class %s is implemented in both %s (%p) and %s (%p). This may cause spurious casting failures and mysterious crashes. One of the duplicates must be removed or renamed.", a2, v12, v7, v14, a1);
  }

  else if (DebugDuplicateClasses)
  {
    if (DebugDuplicateClasses == 2)
    {
      (_objc_fatal)("Class %s is implemented in both %s (%p) and %s (%p). This may cause spurious casting failures and mysterious crashes. One of the duplicates must be removed or renamed.", a2, v12, v7, v14, a1);
    }

    goto LABEL_20;
  }

LABEL_22:
  v26 = nonMetaClasses();
  v27 = *a1;
  v15 = (**v26)(v26, *a1 & 0xFFFFFFFF8);
  v18 = (v27 & 0xFFFFFFFF8);
  v17 = v26;
  v16 = a1;
LABEL_23:

  return NXMapInsertWithHash(v17, v18, v15, v16);
}

uint64_t NXMapInsertWithHash(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a2 == -1)
  {
    _objc_inform("*** NXMapInsert: invalid key: -1\n");
    return 0;
  }

  else
  {
    while (1)
    {
      v8 = *(a1 + 16);
      v9 = *(a1 + 12);
      v10 = v9 & a3;
      v11 = (v8 + 16 * (v9 & a3));
      v12 = v9 + 1;
      v13 = *v11;
      if (*v11 == -1)
      {
        *v11 = a2;
        v11[1] = a4;
LABEL_8:
        v14 = *(a1 + 8) + 1;
        *(a1 + 8) = v14;
        if (3 * v12 < (4 * v14))
        {
          _NXMapRehash(a1);
        }

        return 0;
      }

      if (v13 == a2 || (*(*a1 + 8))(a1, v13, a2))
      {
        result = v11[1];
        if (result != a4)
        {
          v11[1] = a4;
        }

        return result;
      }

      if (*(a1 + 8) != v12)
      {
        break;
      }

      _NXMapRehash(a1);
    }

    LODWORD(v16) = v10;
    do
    {
      v16 = *(a1 + 12) & (v16 + 1);
      if (v16 == v10)
      {
        _objc_inform("**** NXMapInsert: bug\n");
        return 0;
      }

      v17 = *(v8 + 16 * v16);
      if (v17 == -1)
      {
        v21 = (v8 + 16 * v16);
        *v21 = a2;
        v21[1] = a4;
        goto LABEL_8;
      }
    }

    while (v17 != a2 && !(*(*a1 + 8))(a1, v17, a2));
    v18 = v8 + 16 * v16;
    v20 = *(v18 + 8);
    v19 = (v18 + 8);
    result = v20;
    if (v20 != a4)
    {
      *v19 = a4;
    }
  }

  return result;
}

void objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>,DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::compact()
{
  if (DWORD2(objc::unattachedCategories))
  {
    if (dword_1ED3F6388 >= 0x401 && dword_1ED3F6388 >> 4 > DWORD2(objc::unattachedCategories))
    {
      v1 = 2 * DWORD2(objc::unattachedCategories);

      objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::grow(v1);
    }
  }

  else
  {
    if (!dword_1ED3F6388)
    {
      goto LABEL_19;
    }

    v2 = 24 * dword_1ED3F6388;
    v3 = objc::unattachedCategories + 8;
    do
    {
      if (*(v3 - 8) - 1) >= 2 && (*(v3 + 8))
      {
        free(*v3);
      }

      v3 += 24;
      v2 -= 24;
    }

    while (v2);
    if (dword_1ED3F6388)
    {
      if (objc::unattachedCategories)
      {
        v4 = objc::unattachedCategories;
      }

      else
      {
        v4 = 0;
      }

      free(v4);

      objc::DenseMap<DisguisedPtr<objc_class>,objc::category_list,objc::DenseMapValueInfo<objc::category_list>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc::category_list>>::init(0);
    }

    else
    {
LABEL_19:
      *(&objc::unattachedCategories + 1) = 0;
    }
  }
}

uint64_t objc::Scanner::propagateCustomFlags(void *a1, char a2, int a3)
{
  v14 = MEMORY[0x1E69E9820];
  v15 = 3321888768;
  v16 = ___ZN4objc7Scanner20propagateCustomFlagsEP10objc_classjNS0_11inherited_tE_block_invoke;
  v17 = &__block_descriptor_48_e8_32c83_ZTSKZN4objc7Scanner20propagateCustomFlagsEP10objc_classjNS0_11inherited_tEEUlS2_E__e8_B16__0_8l;
  v18 = a1;
  v19 = a3;
  v20 = a2 & 1;
  v21 = (a2 & 4) != 0;
  v22 = (a2 & 0x10) != 0;
  v4 = *(gdb_objc_realized_classes + 8);
  if (DisablePreopt)
  {
    v5 = 0;
  }

  else
  {
    v5 = _dyld_objc_class_count();
  }

  v6 = (16 * (v5 + v4)) | 0xF;
  v7 = a1;
  while (1)
  {
    result = v16(&v14, v7);
    if (!result)
    {
      break;
    }

    v12 = v7 + 4;
    if (!*((v7[4] & 0xF00007FFFFFFFF8) + 0x10))
    {
      break;
    }

    v13 = 16;
LABEL_17:
    v7 = *((*v12 & 0xF00007FFFFFFFF8) + v13);
    if (!--v6)
    {
LABEL_18:
      _objc_fatal("Memory corruption in class list.", v9, v10, v11, v14, v15);
    }
  }

  while (1)
  {
    v12 = v7 + 4;
    if (v7 == a1 || *((v7[4] & 0xF00007FFFFFFFF8) + 0x18))
    {
      break;
    }

    if (v7[1])
    {
      v7 = v7[1];
    }

    else
    {
      v7 = 0;
    }

    if (!--v6)
    {
      goto LABEL_18;
    }
  }

  if (v7 != a1)
  {
    v13 = 24;
    goto LABEL_17;
  }

  return result;
}

uint64_t header_info::protocollist(header_info *this, unint64_t *a2)
{
  if (preoptimized != 1 || (*(this + *(this + 1) + 12) & 8) == 0 || *(headerInfoROs + 4) >= 0x18u)
  {
    v3 = this + *(this + 2) + 16;
  }

  v4 = *this;
  result = _dyld_lookup_section_info();
  v7 = v6 >> 3;
  if (!result)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t ___ZN4objc7Scanner20propagateCustomFlagsEP10objc_classjNS0_11inherited_tE_block_invoke(uint64_t a1, objc_class *this)
{
  if (*(a1 + 32) == this)
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v4 = *(*(this + 4) & 0xF00007FFFFFFFF8);
    if ((v4 & 1) == 0)
    {
      v4 = *(*((*this & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
    }

    if ((v4 & 0x20000000) == 0)
    {
      return 0;
    }

    v6 = 1;
  }

  if (*(a1 + 44) == 1 && (*(this + 15) & 0x4000) != 0)
  {
    atomic_fetch_and_explicit(this + 15, 0xBFFFu, memory_order_relaxed);
    if (PrintCustomAWZ)
    {
      objc::Scanner::printCustom("CUSTOM AWZ", this, v6);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  if (*(a1 + 45) == 1 && (*(this + 4) & 4) != 0)
  {
    v7 = *(this + 4);
    v8 = v7;
    atomic_compare_exchange_strong_explicit(this + 4, &v8, v7 & 0xFFFFFFFFFFFFFFFBLL, memory_order_relaxed, memory_order_relaxed);
    if (v8 != v7)
    {
      v9 = v8;
      do
      {
        atomic_compare_exchange_strong_explicit(this + 4, &v9, v8 & 0xFFFFFFFFFFFFFFFBLL, memory_order_relaxed, memory_order_relaxed);
        v10 = v9 == v8;
        v8 = v9;
      }

      while (!v10);
    }

    if (PrintCustomRR)
    {
      objc::Scanner::printCustom("CUSTOM RR", this, v6);
    }

    result = 1;
  }

  if (*(a1 + 46) == 1 && *(this + 15) < 0)
  {
    atomic_fetch_and_explicit(this + 15, 0x7FFFu, memory_order_relaxed);
    if (PrintCustomCore)
    {
      objc::Scanner::printCustom("CUSTOM Core", this, v6);
    }

    return 1;
  }

  return result;
}
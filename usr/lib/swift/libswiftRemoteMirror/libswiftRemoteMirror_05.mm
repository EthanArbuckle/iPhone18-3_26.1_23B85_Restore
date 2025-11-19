double std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_typeinfo SwiftReflectionContext::withContext<swift_typeinfo,swift_reflection_infoForInstance::$_0>(swift_reflection_infoForInstance::$_0 const&)::{lambda(swift_typeinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<D0>(unint64_t ****a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  InstanceTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(*a2, ****a1, 0, 0);
  if (InstanceTypeInfo)
  {
    v6 = *(InstanceTypeInfo + 2);
    if (v6 == 4 || v6 == 1)
    {
      v8 = -1431655765 * ((InstanceTypeInfo[6] - InstanceTypeInfo[5]) >> 4);
    }

    else
    {
      v8 = 0;
    }

    v9 = InstanceTypeInfo;
    *a3 = getTypeInfoKind(InstanceTypeInfo);
    result = *(v9 + 12);
    *(a3 + 4) = result;
    *(a3 + 12) = *(v9 + 5);
    *(a3 + 16) = v8;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t *swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2, a3, &v21);
  if (v23 != 1)
  {
    return 0;
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v21, v22, __p);
  if (!v16)
  {
    return 0;
  }

  v8 = *v16;
  if (*v16 > 0x7FF)
  {
    LODWORD(v8) = 0;
  }

  if (v8 != 1280)
  {
    if (v8 != 1024)
    {
      if (!v8)
      {
        return swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(a1, v21, v22, a4);
      }

      return 0;
    }

    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v21, v22, &v24);
    if (v25 && *v25 == 1024)
    {
      v10 = v25[2];
      (*(**(a1 + 2800) + 40))(__p);
      v11 = __p[0];
      v12 = SHIBYTE(v16);
      if (v17 && ((swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getCaptureDescriptor((a1 + 2216), v17, v18, &v19), v19) || BYTE8(v19)))
      {
        v24 = v19;
        v25 = v20;
        swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getClosureContextInfo((a1 + 2216), &v24, __p);
        ClosureContextInfo = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getClosureContextInfo(a1, a2, a3, __p, a4);
        swift::reflection::ClosureContextInfo::~ClosureContextInfo(__p);
        result = ClosureContextInfo;
      }

      else
      {
        result = 0;
      }

      if (v12 < 0)
      {
        v14 = result;
        operator delete(v11);
        return v14;
      }

      return result;
    }

    return 0;
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v21, v22, __p);
  if (!v16)
  {
    return 0;
  }

  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v16[2], a3, 0, 50);
  if (result)
  {
    return swift::reflection::TypeConverter::getTypeInfo(a1 + 976, result, a4);
  }

  return result;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getClosureContextInfo(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (a1 + 976);
  v48[0] = a1 + 976;
  v48[1] = 0x100000000;
  v49 = 0;
  v50 = 1;
  v51 = 9;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v55 = 1;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2, a3, v46);
  v11 = 0;
  if (v47 != 1)
  {
LABEL_54:
    v33 = v52;
    if (!v52)
    {
      return v11;
    }

LABEL_55:
    v34 = v53;
    v35 = v33;
    if (v53 != v33)
    {
      do
      {
        v36 = *(v34 - 25);
        v34 -= 6;
        if (v36 < 0)
        {
          operator delete(*v34);
        }
      }

      while (v34 != v33);
      v35 = v52;
    }

    v53 = v33;
    operator delete(v35);
    return v11;
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v46[0], v46[1], &v56);
  if (!v58 || *v58 != 1024)
  {
    v11 = 0;
    goto LABEL_54;
  }

  swift::reflection::RecordTypeInfoBuilder::addField(v48, *(v58 + 8), 8u, 0, 1);
  swift::reflection::RecordTypeInfoBuilder::addField(v48, 8 * *(a4 + 48), 8u, 0, 1);
  v57 = 0;
  v58 = 0;
  v56 = &v57;
  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  v12 = *a4;
  v13 = *(a4 + 8) - *a4;
  if (!v13)
  {
LABEL_52:
    v11 = swift::reflection::RecordTypeInfoBuilder::build(v48);
    goto LABEL_64;
  }

  v14 = v13 >> 3;
  v37 = a4;
  v38 = a5;
  while (1)
  {
    v15 = *v12;
    if (!*v12)
    {
      goto LABEL_63;
    }

    if (swift::reflection::TypeRef::isConcreteAfterSubstitutions(*v12, v44))
    {
      result = swift::reflection::TypeRef::subst(v15, a1 + 328, v44);
      v15 = result;
      if (result)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }

    result = swift::reflection::TypeConverter::hasFixedSize(v10, v15);
    if (result)
    {
LABEL_9:
      v43 = 0;
      LOBYTE(__p[0]) = 0;
      swift::reflection::RecordTypeInfoBuilder::addField(v48, __p, v15, a5);
      if (v43 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v55 & 0x100) == 0)
      {
        --v14;
        ++v12;
        goto LABEL_51;
      }

LABEL_63:
      v11 = 0;
LABEL_64:
      __swift::__runtime::llvm::deallocate_buffer(v44[0], (16 * v45), 8uLL);
      std::__tree<std::pair<swift::reflection::TypeRef const*,swift::reflection::MetadataSource const*>>::destroy(&v56, v57);
      v33 = v52;
      if (!v52)
      {
        return v11;
      }

      goto LABEL_55;
    }

LABEL_14:
    v39 = v14;
    v40 = v12;
    v17 = *(a4 + 24);
    v18 = *(a4 + 32);
    if (v17 == v18)
    {
      goto LABEL_63;
    }

    v19 = 0;
LABEL_18:
    v20 = *v17;
    v21 = v17[1];
    if (v57)
    {
      v22 = v57;
      do
      {
        v23 = v22[4];
        if (v20 >= v23)
        {
          if (v23 >= v20)
          {
            v24 = v22[5];
            if (v21 < v24)
            {
              goto LABEL_21;
            }

            if (v24 >= v21)
            {
              goto LABEL_17;
            }
          }

          ++v22;
        }

LABEL_21:
        v22 = *v22;
      }

      while (v22);
    }

    if (v21)
    {
      break;
    }

LABEL_17:
    v17 += 2;
    if (v17 != v18)
    {
      goto LABEL_18;
    }

    a4 = v37;
    a5 = v38;
    v14 = v39;
    v12 = v40;
    if ((v19 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_51:
    if (!v14)
    {
      goto LABEL_52;
    }
  }

  v25 = v17[1];
  while (1)
  {
    v26 = *(v25 + 8);
    if (v26 != 3)
    {
      break;
    }

    v25 = *(v25 + 16);
    if (!v25)
    {
      goto LABEL_17;
    }
  }

  if (v26 <= 5)
  {
    v27 = 1 << v26;
    if ((v27 & 0x31) == 0)
    {
      if ((v27 & 6) == 0)
      {
        goto LABEL_66;
      }

      if (*(v25 + 12) >= -1431655765 * ((v53 - v52) >> 4))
      {
        goto LABEL_17;
      }
    }

    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readMetadataSource(a1, a2, a3, v17[1], v48, __p);
    if (v42 != 1)
    {
      goto LABEL_63;
    }

    TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p[0], __p[1], 0, 50);
    if (!TypeFromMetadata)
    {
      goto LABEL_63;
    }

    result = swift::reflection::TypeRef::deriveSubstitutions(v44, v20, TypeFromMetadata);
    if (!result)
    {
      goto LABEL_63;
    }

    v29 = v57;
LABEL_41:
    if (!v29)
    {
LABEL_47:
      operator new();
    }

    while (1)
    {
      v30 = v29;
      v31 = v29[4];
      if (v20 < v31)
      {
LABEL_40:
        v29 = *v30;
        goto LABEL_41;
      }

      if (v31 >= v20)
      {
        v32 = v30[5];
        if (v21 < v32)
        {
          goto LABEL_40;
        }

        if (v32 >= v21)
        {
          break;
        }
      }

      v29 = v30[1];
      if (!v29)
      {
        goto LABEL_47;
      }
    }

    v17 += 2;
    v19 = 1;
    if (v17 == v18)
    {
      a4 = v37;
      a5 = v38;
      v14 = v39;
      v12 = v40;
      goto LABEL_51;
    }

    goto LABEL_18;
  }

LABEL_66:
  __break(1u);
  return result;
}

void swift::reflection::ClosureContextInfo::~ClosureContextInfo(swift::reflection::ClosureContextInfo *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readMetadataSource@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v7 = *(a4 + 8);
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = *(*(a5 + 32) + 48 * *(a4 + 12) + 24);
        *&v16 = 0;
        BYTE8(v16) = 0;
        v9 = result;
        result = (*(**(result + 2800) + 96))(*(result + 2800), a2 + v8, a3, &v16, 8);
        if (result)
        {
          return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(v9, v16, *(&v16 + 1), a6);
        }
      }

      goto LABEL_16;
    }

    v13 = (8 * *(a4 + 12) + 16);
LABEL_13:
    *&v16 = 0;
    BYTE8(v16) = 0;
    result = (*(**(result + 2800) + 96))(*(result + 2800), a2 + v13, a3, &v16, 8);
    if (result)
    {
      v12 = v16;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v13 = *(*(a5 + 32) + 48 * *(a4 + 12) + 24);
    goto LABEL_13;
  }

  if (v7 == 3)
  {
    v11 = result;
    result = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readMetadataSource(&v16, result, a2, a3, *(a4 + 16));
    if (v17)
    {
      result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readGenericArgFromMetadata(v11, v16, *(&v16 + 1), *(a4 + 12), &v14);
      if (v15)
      {
        v12 = v14;
LABEL_15:
        *a6 = v12;
        a6[16] = 1;
        return result;
      }
    }
  }

LABEL_16:
  *a6 = 0;
  a6[16] = 0;
  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readGenericArgFromMetadata@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, _BYTE *a5@<X8>)
{
  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v21);
  if (!v23)
  {
    goto LABEL_30;
  }

  v9 = *v23;
  if (*v23 > 0x7FF)
  {
    LODWORD(v9) = 0;
  }

  if ((v9 - 512) >= 5)
  {
    if (v9 || (swift_reflection_classIsSwiftMask & v23[4]) == 0)
    {
      goto LABEL_30;
    }

    v10 = 8;
  }

  else
  {
    v10 = 1;
  }

  v11 = *(a1 + 2816) & v23[v10];
  if (!v11)
  {
    goto LABEL_30;
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v11, 0, &v19);
  result = v20;
  if (!v20)
  {
    goto LABEL_30;
  }

  result = swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(v20);
  if (!result)
  {
    goto LABEL_30;
  }

  v12 = *v20 & 0x1F;
  if ((v12 - 17) >= 2)
  {
    if (v12 != 16)
    {
      goto LABEL_30;
    }

    v16 = v20 ? v20 : 0;
    if ((*v16 & 0x20000000) != 0)
    {
      v24 = v19;
      v25 = v20;
      v18 = result;
      result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(a1, &v24, &v26);
      v14 = *(&v26 + 1) >> 3;
      v13 = (*(&v26 + 1) >> 3) & 0xFFFFFF00;
      if (!v27)
      {
        LOBYTE(v14) = 0;
        LODWORD(v13) = 0;
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_30;
      }

      result = v18;
    }

    else
    {
      if ((*v16 & 0x10000000) != 0)
      {
        v17 = 0;
        v13 = 24;
      }

      else
      {
        v17 = v16[7];
        v13 = 32;
      }

      LODWORD(v14) = v17 - *(v16 + v13);
      LODWORD(v13) = v14 & 0xFFFFFF00;
    }
  }

  else
  {
    LODWORD(v13) = 0;
    LOBYTE(v14) = 2;
  }

  if (*(result + 8) <= a4)
  {
LABEL_30:
    *a5 = 0;
    a5[16] = 0;
    return result;
  }

  *&v26 = 0;
  BYTE8(v26) = 0;
  result = (*(**(a1 + 2800) + 96))(*(a1 + 2800), v21 + 8 * ((v13 | v14) + a4), v22, &v26, 8);
  if (result)
  {
    *a5 = v26;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    *a5 = 0;
  }

  a5[16] = v15;
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v10 = a2[2];
          }

          else
          {
            v10 = v2[1];
            v11 = *v10;
            v2[1] = *v10;
            v12 = v2;
            if (v11)
            {
              v11[2] = v2;
              v3 = v2[2];
              v12 = *v3;
            }

            v10[2] = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            v2[2] = v10;
            v3 = v10[2];
            v4 = *v3;
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v13[2] = v3;
            v3[*v3 != v2] = v13;
            v13[1] = v2;
            v2[2] = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<std::pair<swift::reflection::TypeRef const*,swift::reflection::MetadataSource const*>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::pair<swift::reflection::TypeRef const*,swift::reflection::MetadataSource const*>>::destroy(a1, *a2);
    std::__tree<std::pair<swift::reflection::TypeRef const*,swift::reflection::MetadataSource const*>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2, a3, &v21);
  if (v23 != 1)
  {
    return 0;
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v21, v22, __p);
  if (!v16)
  {
    return 0;
  }

  v8 = *v16;
  if (*v16 > 0x7FF)
  {
    LODWORD(v8) = 0;
  }

  if (v8 != 1280)
  {
    if (v8 != 1024)
    {
      if (!v8)
      {
        return swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(a1, v21, v22, a4);
      }

      return 0;
    }

    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v21, v22, &v24);
    if (v25 && *v25 == 1024)
    {
      v10 = v25[2];
      (*(**(a1 + 2800) + 40))(__p);
      v11 = __p[0];
      v12 = SHIBYTE(v16);
      if (v17 && ((swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getCaptureDescriptor((a1 + 2216), v17, v18, &v19), v19) || BYTE8(v19)))
      {
        v24 = v19;
        v25 = v20;
        swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getClosureContextInfo((a1 + 2216), &v24, __p);
        ClosureContextInfo = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getClosureContextInfo(a1, a2, a3, __p, a4);
        swift::reflection::ClosureContextInfo::~ClosureContextInfo(__p);
        result = ClosureContextInfo;
      }

      else
      {
        result = 0;
      }

      if (v12 < 0)
      {
        v14 = result;
        operator delete(v11);
        return v14;
      }

      return result;
    }

    return 0;
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v21, v22, __p);
  if (!v16)
  {
    return 0;
  }

  result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v16[2], a3, 0, 50);
  if (result)
  {
    return swift::reflection::TypeConverter::getTypeInfo(a1 + 976, result, a4);
  }

  return result;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getClosureContextInfo(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (a1 + 976);
  v48[0] = a1 + 976;
  v48[1] = 0x100000000;
  v49 = 0;
  v50 = 1;
  v51 = 9;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v55 = 1;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2, a3, v46);
  v11 = 0;
  if (v47 != 1)
  {
LABEL_54:
    v33 = v52;
    if (!v52)
    {
      return v11;
    }

LABEL_55:
    v34 = v53;
    v35 = v33;
    if (v53 != v33)
    {
      do
      {
        v36 = *(v34 - 25);
        v34 -= 6;
        if (v36 < 0)
        {
          operator delete(*v34);
        }
      }

      while (v34 != v33);
      v35 = v52;
    }

    v53 = v33;
    operator delete(v35);
    return v11;
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v46[0], v46[1], &v56);
  if (!v58 || *v58 != 1024)
  {
    v11 = 0;
    goto LABEL_54;
  }

  swift::reflection::RecordTypeInfoBuilder::addField(v48, *(v58 + 8), 8u, 0, 1);
  swift::reflection::RecordTypeInfoBuilder::addField(v48, 8 * *(a4 + 48), 8u, 0, 1);
  v57 = 0;
  v58 = 0;
  v56 = &v57;
  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  v12 = *a4;
  v13 = *(a4 + 8) - *a4;
  if (!v13)
  {
LABEL_52:
    v11 = swift::reflection::RecordTypeInfoBuilder::build(v48);
    goto LABEL_64;
  }

  v14 = v13 >> 3;
  v37 = a4;
  v38 = a5;
  while (1)
  {
    v15 = *v12;
    if (!*v12)
    {
      goto LABEL_63;
    }

    if (swift::reflection::TypeRef::isConcreteAfterSubstitutions(*v12, v44))
    {
      result = swift::reflection::TypeRef::subst(v15, a1 + 328, v44);
      v15 = result;
      if (result)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }

    result = swift::reflection::TypeConverter::hasFixedSize(v10, v15);
    if (result)
    {
LABEL_9:
      v43 = 0;
      LOBYTE(__p[0]) = 0;
      swift::reflection::RecordTypeInfoBuilder::addField(v48, __p, v15, a5);
      if (v43 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v55 & 0x100) == 0)
      {
        --v14;
        ++v12;
        goto LABEL_51;
      }

LABEL_63:
      v11 = 0;
LABEL_64:
      __swift::__runtime::llvm::deallocate_buffer(v44[0], (16 * v45), 8uLL);
      std::__tree<std::pair<swift::reflection::TypeRef const*,swift::reflection::MetadataSource const*>>::destroy(&v56, v57);
      v33 = v52;
      if (!v52)
      {
        return v11;
      }

      goto LABEL_55;
    }

LABEL_14:
    v39 = v14;
    v40 = v12;
    v17 = *(a4 + 24);
    v18 = *(a4 + 32);
    if (v17 == v18)
    {
      goto LABEL_63;
    }

    v19 = 0;
LABEL_18:
    v20 = *v17;
    v21 = v17[1];
    if (v57)
    {
      v22 = v57;
      do
      {
        v23 = v22[4];
        if (v20 >= v23)
        {
          if (v23 >= v20)
          {
            v24 = v22[5];
            if (v21 < v24)
            {
              goto LABEL_21;
            }

            if (v24 >= v21)
            {
              goto LABEL_17;
            }
          }

          ++v22;
        }

LABEL_21:
        v22 = *v22;
      }

      while (v22);
    }

    if (v21)
    {
      break;
    }

LABEL_17:
    v17 += 2;
    if (v17 != v18)
    {
      goto LABEL_18;
    }

    a4 = v37;
    a5 = v38;
    v14 = v39;
    v12 = v40;
    if ((v19 & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_51:
    if (!v14)
    {
      goto LABEL_52;
    }
  }

  v25 = v17[1];
  while (1)
  {
    v26 = *(v25 + 8);
    if (v26 != 3)
    {
      break;
    }

    v25 = *(v25 + 16);
    if (!v25)
    {
      goto LABEL_17;
    }
  }

  if (v26 <= 5)
  {
    v27 = 1 << v26;
    if ((v27 & 0x31) == 0)
    {
      if ((v27 & 6) == 0)
      {
        goto LABEL_66;
      }

      if (*(v25 + 12) >= -1431655765 * ((v53 - v52) >> 4))
      {
        goto LABEL_17;
      }
    }

    swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readMetadataSource(a1, a2, a3, v17[1], v48, __p);
    if (v42 != 1)
    {
      goto LABEL_63;
    }

    TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p[0], __p[1], 0, 50);
    if (!TypeFromMetadata)
    {
      goto LABEL_63;
    }

    result = swift::reflection::TypeRef::deriveSubstitutions(v44, v20, TypeFromMetadata);
    if (!result)
    {
      goto LABEL_63;
    }

    v29 = v57;
LABEL_41:
    if (!v29)
    {
LABEL_47:
      operator new();
    }

    while (1)
    {
      v30 = v29;
      v31 = v29[4];
      if (v20 < v31)
      {
LABEL_40:
        v29 = *v30;
        goto LABEL_41;
      }

      if (v31 >= v20)
      {
        v32 = v30[5];
        if (v21 < v32)
        {
          goto LABEL_40;
        }

        if (v32 >= v21)
        {
          break;
        }
      }

      v29 = v30[1];
      if (!v29)
      {
        goto LABEL_47;
      }
    }

    v17 += 2;
    v19 = 1;
    if (v17 == v18)
    {
      a4 = v37;
      a5 = v38;
      v14 = v39;
      v12 = v40;
      goto LABEL_51;
    }

    goto LABEL_18;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readMetadataSource@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v7 = *(a4 + 8);
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = *(*(a5 + 32) + 48 * *(a4 + 12) + 24);
        *&v16 = 0;
        BYTE8(v16) = 0;
        v9 = result;
        result = (*(**(result + 2800) + 96))(*(result + 2800), a2 + v8, a3, &v16, 8);
        if (result)
        {
          return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(v9, v16, *(&v16 + 1), a6);
        }
      }

      goto LABEL_16;
    }

    v13 = (8 * *(a4 + 12) + 16);
LABEL_13:
    *&v16 = 0;
    BYTE8(v16) = 0;
    result = (*(**(result + 2800) + 96))(*(result + 2800), a2 + v13, a3, &v16, 8);
    if (result)
    {
      v12 = v16;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v13 = *(*(a5 + 32) + 48 * *(a4 + 12) + 24);
    goto LABEL_13;
  }

  if (v7 == 3)
  {
    v11 = result;
    result = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readMetadataSource(&v16, result, a2, a3, *(a4 + 16));
    if (v17)
    {
      result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readGenericArgFromMetadata(v11, v16, *(&v16 + 1), *(a4 + 12), &v14);
      if (v15)
      {
        v12 = v14;
LABEL_15:
        *a6 = v12;
        a6[16] = 1;
        return result;
      }
    }
  }

LABEL_16:
  *a6 = 0;
  a6[16] = 0;
  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readGenericArgFromMetadata@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, _BYTE *a5@<X8>)
{
  result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v21);
  if (!v23)
  {
    goto LABEL_32;
  }

  v9 = *v23;
  if (*v23 > 0x7FF)
  {
    LODWORD(v9) = 0;
  }

  if (v9 > 514)
  {
    if (v9 != 515 && v9 != 516)
    {
      goto LABEL_32;
    }

    goto LABEL_10;
  }

  if ((v9 - 512) < 3)
  {
LABEL_10:
    v10 = 1;
    goto LABEL_11;
  }

  if (v9)
  {
    goto LABEL_32;
  }

  v10 = 5;
LABEL_11:
  v11 = *(a1 + 2816) & v23[v10];
  if (!v11)
  {
    goto LABEL_32;
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v11, 0, &v19);
  result = v20;
  if (!v20)
  {
    goto LABEL_32;
  }

  result = swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(v20);
  if (!result)
  {
    goto LABEL_32;
  }

  v12 = *v20 & 0x1F;
  if ((v12 - 17) >= 2)
  {
    if (v12 != 16)
    {
      goto LABEL_32;
    }

    if (v20)
    {
      v16 = v20;
    }

    else
    {
      v16 = 0;
    }

    if ((*v16 & 0x20000000) != 0)
    {
      v24 = v19;
      v25 = v20;
      v18 = result;
      result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(a1, &v24, &v26);
      v14 = *(&v26 + 1) >> 3;
      v13 = (*(&v26 + 1) >> 3) & 0xFFFFFF00;
      if (!v27)
      {
        LOBYTE(v14) = 0;
        LODWORD(v13) = 0;
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_32;
      }

      result = v18;
    }

    else
    {
      if ((*v16 & 0x10000000) != 0)
      {
        v17 = 0;
        v13 = 24;
      }

      else
      {
        v17 = v16[7];
        v13 = 32;
      }

      LODWORD(v14) = v17 - *(v16 + v13);
      LODWORD(v13) = v14 & 0xFFFFFF00;
    }
  }

  else
  {
    LODWORD(v13) = 0;
    LOBYTE(v14) = 2;
  }

  if (*(result + 8) <= a4)
  {
LABEL_32:
    *a5 = 0;
    a5[16] = 0;
    return result;
  }

  *&v26 = 0;
  BYTE8(v26) = 0;
  result = (*(**(a1 + 2800) + 96))(*(a1 + 2800), v21 + 8 * ((v13 | v14) + a4), v22, &v26, 8);
  if (result)
  {
    *a5 = v26;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    *a5 = 0;
  }

  a5[16] = v15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_childinfo SwiftReflectionContext::withContext<swift_childinfo,swift_reflection_childOfInstance::$_0>(swift_reflection_childOfInstance::$_0 const&)::{lambda(swift_childinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<X0>(uint64_t **a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  result = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(*a2, **v4, 0, 0);
  if (result)
  {
    v6 = *(result + 8);
    if (v6 == 1 || v6 == 4)
    {
      v8 = *(result + 40) + 48 * **(v4 + 8);
      v9 = v8;
      if (*(v8 + 23) < 0)
      {
        v9 = *v8;
      }

      *a3 = v9;
      *(a3 + 8) = *(v8 + 24);
      result = getTypeInfoKind(*(v8 + 40));
      *(a3 + 12) = result;
      *(a3 + 16) = *(v8 + 32);
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = "unknown TypeInfo kind";
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_childinfo SwiftReflectionContext::withContext<swift_childinfo,swift_reflection_childOfInstance::$_0>(swift_reflection_childOfInstance::$_0 const&)::{lambda(swift_childinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<X0>(uint64_t **a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  result = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(*a2, **v4, 0, 0);
  if (result)
  {
    v6 = *(result + 8);
    if (v6 == 1 || v6 == 4)
    {
      v8 = *(result + 40) + 48 * **(v4 + 8);
      v9 = v8;
      if (*(v8 + 23) < 0)
      {
        v9 = *v8;
      }

      *a3 = v9;
      *(a3 + 8) = *(v8 + 24);
      result = getTypeInfoKind(*(v8 + 40));
      *(a3 + 12) = result;
      *(a3 + 16) = *(v8 + 32);
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = "unknown TypeInfo kind";
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

_DWORD *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_projectExistential::$_0>(swift_reflection_projectExistential::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = **v2;
  v5 = **(v2 + 8);
  v10 = 0;
  v8 = 0;
  v9 = 0;
  result = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistential(v3, v5, 0, v4, &v10, &v8, 0);
  if (result)
  {
    v7 = *(v2 + 24);
    ***(v2 + 16) = v10;
    **v7 = v8;
  }

  return result;
}

_DWORD *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_projectExistential::$_0>(swift_reflection_projectExistential::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = **v2;
  v5 = **(v2 + 8);
  v10 = 0;
  v8 = 0;
  v9 = 0;
  result = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistential(v3, v5, 0, v4, &v10, &v8, 0);
  if (result)
  {
    v7 = *(v2 + 24);
    ***(v2 + 16) = v10;
    **v7 = v8;
  }

  return result;
}

_DWORD *swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistential(unint64_t a1, unint64_t a2, uint64_t a3, swift::reflection::TypeRefBuilder **a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (!a4)
  {
    return 0;
  }

  result = swift::reflection::TypeConverter::getTypeInfo(a1 + 976, a4, a7);
  if (!result)
  {
    return result;
  }

  if (result[2] != 1)
  {
    return 0;
  }

  v13 = result[8];
  switch(v13)
  {
    case 4:
      swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueOpaqueExistential(a1, a2, a3, v14);
      break;
    case 7:
      swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueErrorExistential(a1, a2, a3, v14);
      break;
    case 5:
      *a5 = *(*(result + 5) + 32);
      *a6 = a2;
      *(a6 + 8) = a3;
      return &dword_0 + 1;
    default:
      return 0;
  }

  if (v16 == 1)
  {
    result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v14[0], v14[1], 0, 50);
    if (!result)
    {
      return result;
    }

    *a5 = result;
    *a6 = v14[2];
    *(a6 + 8) = v15;
    return &dword_0 + 1;
  }

  return 0;
}

unint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueOpaqueExistential@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = (*(**(a1 + 2800) + 32))(*(a1 + 2800), a2, a3, v16, 32);
  if (result & 1) != 0 && (v9 = v17, result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v17, a3, v15), v15[2]) && (v21 = 0, result = (*(**(a1 + 2800) + 32))(*(a1 + 2800), v9 - 8, a3, &v18, 8), result) && (result = (*(**(a1 + 2800) + 32))(*(a1 + 2800), *(a1 + 2816) & v18, 0, &v19, 88), (result))
  {
    v10 = v21;
    if ((v21 & 0x20000) != 0)
    {
      v19 = 0;
      v20 = 0;
      result = (*(**(a1 + 2800) + 96))(*(a1 + 2800), a2, a3, &v19, 8);
      v11 = 0;
      v12 = a4;
      if (result)
      {
        v13 = v20;
        v14 = v19 + ((v10 + 16) & ~v10);
        *a4 = v9;
        *(a4 + 8) = a3;
        *(a4 + 16) = v14;
        *(a4 + 24) = v13;
        v12 = (a4 + 32);
        v11 = 1;
      }

      *v12 = 0;
    }

    else
    {
      *a4 = v9;
      *(a4 + 8) = a3;
      *(a4 + 16) = a2;
      *(a4 + 24) = a3;
      *(a4 + 32) = 0;
      v11 = 1;
    }

    *(a4 + 40) = v11;
  }

  else
  {
    *a4 = 0;
    *(a4 + 40) = 0;
  }

  return result;
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueErrorExistential(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2, a3, &v26);
  if ((v27 & 1) == 0 || (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v26, *(&v26 + 1), &v24), !v25))
  {
    *a4 = 0;
    *(a4 + 40) = 0;
    return;
  }

  if ((*v25 - 1) < 0x7FF)
  {
    goto LABEL_4;
  }

  if ((swift_reflection_classIsSwiftMask & v25[4]) == 0)
  {
    __p = 0;
    v30 = 0;
    v31 = 0;
    ObjCRODataPtr = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCRODataPtr(a1, v26, BYTE8(v26));
    if (ObjCRODataPtr)
    {
      *&v22 = 0;
      BYTE8(v22) = 0;
      if ((*(**(a1 + 2800) + 96))(*(a1 + 2800), ObjCRODataPtr + 24, v15, &v22, 8))
      {
        if (v22)
        {
          if ((*(**(a1 + 2800) + 16))(*(a1 + 2800), v22, *(&v22 + 1), &__p))
          {
            if (SHIBYTE(v31) < 0)
            {
              p_p = __p;
              if (v30 != 20)
              {
                operator delete(__p);
                goto LABEL_13;
              }
            }

            else
            {
              if (SHIBYTE(v31) != 20)
              {
                goto LABEL_13;
              }

              p_p = &__p;
            }

            v19 = 0x5F5F53776966744ELL;
            v20 = bswap64(*p_p);
            if (v20 == 0x5F5F53776966744ELL && (v19 = 0x61746976654E5345, v20 = bswap64(*(p_p + 1)), v20 == 0x61746976654E5345) && (v19 = 1920102258, v20 = bswap32(*(p_p + 4)), v20 == 1920102258))
            {
              v21 = 0;
            }

            else if (v20 < v19)
            {
              v21 = -1;
            }

            else
            {
              v21 = 1;
            }

            v18 = v21 == 0;
            v17 = v21 != 0;
          }

          else
          {
            v17 = 0;
            v18 = 0;
          }

          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p);
            if (v17)
            {
              goto LABEL_13;
            }
          }

          else if (v17)
          {
            goto LABEL_13;
          }

          if (v18)
          {
            v9 = 40;
            v8 = 32;
LABEL_5:
            v10 = v9 + a2;
            swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, v10, a3, &v22);
            if (v23 == 1 && (v32 = 0, (*(**(a1 + 2800) + 32))(*(a1 + 2800), v22 - 8, BYTE8(v22), &v28, 8)) && ((*(**(a1 + 2800) + 32))(*(a1 + 2800), *(a1 + 2816) & v28, 0, &__p, 88) & 1) != 0)
            {
              v11 = (v10 + v8 + v32) & ~v32;
              *a4 = v22;
              *(a4 + 16) = v11;
              *(a4 + 24) = a3;
              v12 = (a4 + 32);
              v13 = 1;
            }

            else
            {
              v13 = 0;
              v12 = a4;
            }

            *v12 = 0;
            goto LABEL_14;
          }
        }
      }
    }

LABEL_4:
    v8 = 16;
    v9 = 16;
    goto LABEL_5;
  }

LABEL_13:
  *a4 = v26;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  v13 = 1;
  *(a4 + 32) = 1;
LABEL_14:
  *(a4 + 40) = v13;
}

_DWORD *swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistential(unint64_t a1, unint64_t a2, uint64_t a3, swift::reflection::TypeRefBuilder **a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (!a4)
  {
    return 0;
  }

  result = swift::reflection::TypeConverter::getTypeInfo(a1 + 976, a4, a7);
  if (!result)
  {
    return result;
  }

  if (result[2] != 1)
  {
    return 0;
  }

  v13 = result[8];
  switch(v13)
  {
    case 4:
      swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueOpaqueExistential(a1, a2, a3, v14);
      break;
    case 7:
      swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueErrorExistential(a1, a2, a3, v14);
      break;
    case 5:
      *a5 = *(*(result + 5) + 32);
      *a6 = a2;
      *(a6 + 8) = a3;
      return &dword_0 + 1;
    default:
      return 0;
  }

  if (v16 == 1)
  {
    result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v14[0], v14[1], 0, 50);
    if (!result)
    {
      return result;
    }

    *a5 = result;
    *a6 = v14[2];
    *(a6 + 8) = v15;
    return &dword_0 + 1;
  }

  return 0;
}

unint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueOpaqueExistential@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = (*(**(a1 + 2800) + 32))(*(a1 + 2800), a2, a3, v16, 32);
  if (result & 1) != 0 && (v9 = v17, result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v17, a3, v15), v15[2]) && (v21 = 0, result = (*(**(a1 + 2800) + 32))(*(a1 + 2800), v9 - 8, a3, &v18, 8), result) && (result = (*(**(a1 + 2800) + 32))(*(a1 + 2800), *(a1 + 2816) & v18, 0, &v19, 88), (result))
  {
    v10 = v21;
    if ((v21 & 0x20000) != 0)
    {
      v19 = 0;
      v20 = 0;
      result = (*(**(a1 + 2800) + 96))(*(a1 + 2800), a2, a3, &v19, 8);
      v11 = 0;
      v12 = a4;
      if (result)
      {
        v13 = v20;
        v14 = v19 + ((v10 + 16) & ~v10);
        *a4 = v9;
        *(a4 + 8) = a3;
        *(a4 + 16) = v14;
        *(a4 + 24) = v13;
        v12 = (a4 + 32);
        v11 = 1;
      }

      *v12 = 0;
    }

    else
    {
      *a4 = v9;
      *(a4 + 8) = a3;
      *(a4 + 16) = a2;
      *(a4 + 24) = a3;
      *(a4 + 32) = 0;
      v11 = 1;
    }

    *(a4 + 40) = v11;
  }

  else
  {
    *a4 = 0;
    *(a4 + 40) = 0;
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueErrorExistential@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2, a3, &v16);
  if ((v17 & 1) != 0 && (result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v16, *(&v16 + 1), &v14), v15))
  {
    if ((*v15 - 1) >= 0x7FF)
    {
      *a4 = v16;
      *(a4 + 16) = a2;
      *(a4 + 24) = a3;
      v11 = 1;
      *(a4 + 32) = 1;
    }

    else
    {
      result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2 + 16, a3, &v12);
      if (v13 == 1 && (v20 = 0, result = (*(**(a1 + 2800) + 32))(*(a1 + 2800), v12 - 8, BYTE8(v12), &v18, 8), result) && (result = (*(**(a1 + 2800) + 32))(*(a1 + 2800), *(a1 + 2816) & v18, 0, v19, 88), (result & 1) != 0))
      {
        v9 = (a2 + v20 + 32) & ~v20;
        *a4 = v12;
        *(a4 + 16) = v9;
        *(a4 + 24) = a3;
        v10 = (a4 + 32);
        v11 = 1;
      }

      else
      {
        v11 = 0;
        v10 = a4;
      }

      *v10 = 0;
    }

    *(a4 + 40) = v11;
  }

  else
  {
    *a4 = 0;
    *(a4 + 40) = 0;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_projectExistentialAndUnwrapClass::$_0>(swift_reflection_projectExistentialAndUnwrapClass::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(*a2, **(v2 + 8), 0, **v2, v5);
  result = v6;
  if (v6 == 1)
  {
    v4 = *(v2 + 24);
    ***(v2 + 16) = v5[0];
    **v4 = v5[1];
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_projectExistentialAndUnwrapClass::$_0>(swift_reflection_projectExistentialAndUnwrapClass::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(*a2, **(v2 + 8), 0, **v2, v5);
  result = v6;
  if (v6 == 1)
  {
    v4 = *(v2 + 24);
    ***(v2 + 16) = v5[0];
    **v4 = v5[1];
  }

  return result;
}

void swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, swift::reflection::TypeRefBuilder **a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a1;
  TypeInfo = swift::reflection::TypeConverter::getTypeInfo(a1 + 976, a4, 0);
  if (!TypeInfo || *(TypeInfo + 2) != 1)
  {
    goto LABEL_30;
  }

  v10 = *(TypeInfo + 8);
  if (v10 == 4)
  {
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueOpaqueExistential(a1, a2, a3, &__p);
    if (v27 != 1)
    {
      goto LABEL_30;
    }

    TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p, v24, 0, 50);
    if (!TypeFromMetadata)
    {
      goto LABEL_30;
    }

    v16 = TypeFromMetadata;
    v17 = *(&v25 + 1);
    v18 = v25;
    v19 = *(TypeFromMetadata + 2);
    if ((v19 - 1) > 1)
    {
      if ((v19 - 11) > 1)
      {
        goto LABEL_23;
      }
    }

    else if ((swift::reflection::NominalTypeTrait::isClass((TypeFromMetadata + 16)) & 1) == 0)
    {
LABEL_23:
      v20 = v17;
      goto LABEL_29;
    }

    swift::remote::MemoryReader::readPointer(*(a1 + 2800), v18, v17, 8u, &__p);
    if (v28 != 1)
    {
      goto LABEL_30;
    }

    v18 = v26;
    v20 = v27;
    if (SBYTE7(v25) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      goto LABEL_30;
    }

LABEL_29:
    *a5 = v16;
    *(a5 + 8) = v18;
    *(a5 + 16) = v20 | v17 & 0xFFFFFFFFFFFFFF00;
    *(a5 + 24) = 1;
    return;
  }

  if (v10 == 7)
  {
    swift::remote::MemoryReader::readPointer(*(a1 + 2800), a2, a3, 8u, &__p);
    if (v28 == 1)
    {
      v11 = v26;
      v12 = v27;
      if (SBYTE7(v25) < 0)
      {
        operator delete(__p);
      }

      if (v11)
      {
        swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueErrorExistential(a1, v11, v12 | a3 & 0xFFFFFFFFFFFFFF00, &__p);
        if (v27 == 1)
        {
          v13 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p, v24, 0, 50);
          if (v13)
          {
            *&v21[8] = v25;
            *v21 = v13;
            v21[24] = 1;
            if (v26 & 1) != 0 || !swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(swift::remote::RemoteAddress,swift::reflection::TypeRef const&)::{lambda(swift::reflection::TypeRef const*)#1}::operator()(&__p, v13) || (swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(swift::remote::RemoteAddress,swift::reflection::TypeRef const&)::{lambda(swift::remote::RemoteAddress&)#1}::operator()(&v22, &v21[8]))
            {
              v14 = *&v21[16];
              *a5 = *v21;
              *(a5 + 16) = v14;
              return;
            }
          }
        }
      }
    }

    goto LABEL_30;
  }

  if (v10 != 5)
  {
LABEL_30:
    *a5 = 0;
    *(a5 + 24) = 0;
    return;
  }

  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getDynamicTypeAndAddressClassExistential(a1, a2, a3, a5);
}

void swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getDynamicTypeAndAddressClassExistential(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift::remote::MemoryReader::readPointer(*(a1 + 2800), a2, a3, 8u, __p);
  if (v15 != 1)
  {
    goto LABEL_10;
  }

  v6 = v13;
  v7 = v14;
  if ((v12 & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_10:
    *a4 = 0;
    *(a4 + 24) = 0;
    return;
  }

  operator delete(__p[0]);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_4:
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, v6, v7, __p);
  if ((v11 & 1) != 0 && (TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p[0], __p[1], 0, 50)) != 0)
  {
    *a4 = TypeFromMetadata;
    *(a4 + 8) = v6;
    v9 = 1;
    *(a4 + 16) = v7;
  }

  else
  {
    v9 = 0;
    *a4 = 0;
  }

  *(a4 + 24) = v9;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(swift::remote::RemoteAddress,swift::reflection::TypeRef const&)::{lambda(swift::remote::RemoteAddress&)#1}::operator()(uint64_t a1, uint64_t *a2)
{
  swift::remote::MemoryReader::readPointer(*(*a1 + 2800), *a2, a2[1], 8u, &__p);
  if (v10 == 1)
  {
    v3 = v8;
    v4 = v9;
    if (v7 < 0)
    {
      operator delete(__p);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else if (v8)
    {
LABEL_4:
      *a2 = v3;
      *(a2 + 8) = v4;
      return 1;
    }
  }

  return 0;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(swift::remote::RemoteAddress,swift::reflection::TypeRef const&)::{lambda(swift::reflection::TypeRef const*)#1}::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (a2 && v2 == 1 || a2 && v2 == 2)
  {
    return swift::reflection::NominalTypeTrait::isClass((a2 + 16));
  }

  else
  {
    return (v2 - 11) < 2;
  }
}

void swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, swift::reflection::TypeRefBuilder **a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a1;
  TypeInfo = swift::reflection::TypeConverter::getTypeInfo(a1 + 976, a4, 0);
  if (!TypeInfo || *(TypeInfo + 2) != 1)
  {
    goto LABEL_30;
  }

  v10 = *(TypeInfo + 8);
  if (v10 == 4)
  {
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueOpaqueExistential(a1, a2, a3, &__p);
    if (v27 != 1)
    {
      goto LABEL_30;
    }

    TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p, v24, 0, 50);
    if (!TypeFromMetadata)
    {
      goto LABEL_30;
    }

    v16 = TypeFromMetadata;
    v17 = *(&v25 + 1);
    v18 = v25;
    v19 = *(TypeFromMetadata + 2);
    if ((v19 - 1) > 1)
    {
      if ((v19 - 11) > 1)
      {
        goto LABEL_23;
      }
    }

    else if ((swift::reflection::NominalTypeTrait::isClass((TypeFromMetadata + 16)) & 1) == 0)
    {
LABEL_23:
      v20 = v17;
      goto LABEL_29;
    }

    swift::remote::MemoryReader::readPointer(*(a1 + 2800), v18, v17, 8u, &__p);
    if (v28 != 1)
    {
      goto LABEL_30;
    }

    v18 = v26;
    v20 = v27;
    if (SBYTE7(v25) < 0)
    {
      operator delete(__p);
    }

    if (!v18)
    {
      goto LABEL_30;
    }

LABEL_29:
    *a5 = v16;
    *(a5 + 8) = v18;
    *(a5 + 16) = v20 | v17 & 0xFFFFFFFFFFFFFF00;
    *(a5 + 24) = 1;
    return;
  }

  if (v10 == 7)
  {
    swift::remote::MemoryReader::readPointer(*(a1 + 2800), a2, a3, 8u, &__p);
    if (v28 == 1)
    {
      v11 = v26;
      v12 = v27;
      if (SBYTE7(v25) < 0)
      {
        operator delete(__p);
      }

      if (v11)
      {
        swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataAndValueErrorExistential(a1, v11, v12 | a3 & 0xFFFFFFFFFFFFFF00, &__p);
        if (v27 == 1)
        {
          v13 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p, v24, 0, 50);
          if (v13)
          {
            *&v21[8] = v25;
            *v21 = v13;
            v21[24] = 1;
            if (v26 & 1) != 0 || !swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(swift::remote::RemoteAddress,swift::reflection::TypeRef const&)::{lambda(swift::reflection::TypeRef const*)#1}::operator()(&__p, v13) || (swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::projectExistentialAndUnwrapClass(swift::remote::RemoteAddress,swift::reflection::TypeRef const&)::{lambda(swift::remote::RemoteAddress&)#1}::operator()(&v22, &v21[8]))
            {
              v14 = *&v21[16];
              *a5 = *v21;
              *(a5 + 16) = v14;
              return;
            }
          }
        }
      }
    }

    goto LABEL_30;
  }

  if (v10 != 5)
  {
LABEL_30:
    *a5 = 0;
    *(a5 + 24) = 0;
    return;
  }

  swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getDynamicTypeAndAddressClassExistential(a1, a2, a3, a5);
}

void swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getDynamicTypeAndAddressClassExistential(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift::remote::MemoryReader::readPointer(*(a1 + 2800), a2, a3, 8u, __p);
  if (v15 != 1)
  {
    goto LABEL_10;
  }

  v6 = v13;
  v7 = v14;
  if ((v12 & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_10:
    *a4 = 0;
    *(a4 + 24) = 0;
    return;
  }

  operator delete(__p[0]);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_4:
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, v6, v7, __p);
  if ((v11 & 1) != 0 && (TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, __p[0], __p[1], 0, 50)) != 0)
  {
    *a4 = TypeFromMetadata;
    *(a4 + 8) = v6;
    v9 = 1;
    *(a4 + 16) = v7;
  }

  else
  {
    v9 = 0;
    *a4 = 0;
  }

  *(a4 + 24) = v9;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_projectEnumValue::$_0>(swift_reflection_projectEnumValue::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(swift::reflection::TypeRefBuilder ******a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = **v2;
  if (!v3)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *v2[1];
  v6 = *v2[2];
  result = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, **v2, 0);
  if (!result)
  {
    return result;
  }

  if (*(result + 2) != 4)
  {
    return 0;
  }

  result = (*(*result + 32))(result, *(v4 + 2800), v5, 0, v6);
  if (result)
  {
    TypeInfo = swift::reflection::TypeConverter::getTypeInfo(v4 + 976, v3, 0);
    if (*(TypeInfo + 2) == 4)
    {
      v9 = TypeInfo;
    }

    else
    {
      v9 = 0;
    }

    return (-1431655765 * ((v9[6] - v9[5]) >> 4) > **v2[2]);
  }

  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_projectEnumValue::$_0>(swift_reflection_projectEnumValue::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(swift::reflection::TypeRefBuilder ******a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = **v2;
  if (!v3)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *v2[1];
  v6 = *v2[2];
  result = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, **v2, 0);
  if (!result)
  {
    return result;
  }

  if (*(result + 2) != 4)
  {
    return 0;
  }

  result = (*(*result + 32))(result, *(v4 + 2800), v5, 0, v6);
  if (result)
  {
    TypeInfo = swift::reflection::TypeConverter::getTypeInfo(v4 + 976, v3, 0);
    if (*(TypeInfo + 2) == 4)
    {
      v9 = TypeInfo;
    }

    else
    {
      v9 = 0;
    }

    return (-1431655765 * ((v9[6] - v9[5]) >> 4) > **v2[2]);
  }

  return result;
}

void *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_dumpInfoForTypeRef::$_0>(swift_reflection_dumpInfoForTypeRef::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(swift::reflection::TypeRefBuilder ******a1, void *a2)
{
  v2 = **a1;
  v3 = **v2;
  if (v3)
  {
    TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, **v2, 0);
    if (TypeInfo)
    {
      swift::reflection::TypeInfo::dump(TypeInfo, &std::cout, 0);
      v21[1] = 0;
      v21[2] = 0;
      v22 = 0;
      v23 = 2400;
      v24 = 0;
      v25 = 0;
      v60 = 0;
      v21[0] = off_E13E8;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v58 = 0;
      swift::reflection::TypeRef::getDemangling(v3, v21);
      swift::Demangle::__runtime::mangleNode();
      memset(&v18, 0, sizeof(v18));
      if (v19)
      {
        std::string::assign(&v18, "<failed to mangle name>");
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "Failed to get mangled name: Node ", 33);
        v5 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, " error ", 7);
        v6 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, ":", 1);
        v7 = std::ostream::operator<<();
      }

      else
      {
        std::string::operator=(&v18, &__p);
        v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "Mangled name: ", 14);
        v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "$s", 2);
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v18;
        }

        else
        {
          v11 = v18.__r_.__value_.__r.__words[0];
        }

        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v18.__r_.__value_.__l.__size_;
        }

        v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v11, size);
      }

      v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "\n", 1);
      v14 = swift_reflection_copyNameForTypeRef(v13, **v2, 0);
      v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "Demangled name: ", 16);
      v16 = strlen(v14);
      v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, v14, v16);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, "\n", 1);
      free(v14);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        v21[0] = off_E13E8;
        if (v60 == &v59)
        {
          (*(*v60 + 32))(v60);
        }

        else if (v60)
        {
          (*(*v60 + 40))();
        }

        v21[0] = off_E13C0;
        result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v22);
        if (v24)
        {
          *(v24 + 48) = 0;
        }

        return result;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_17;
    }
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type info>\n", 17);
}

void *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_dumpInfoForTypeRef::$_0>(swift_reflection_dumpInfoForTypeRef::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(swift::reflection::TypeRefBuilder ******a1, void *a2)
{
  v2 = **a1;
  v3 = **v2;
  if (v3)
  {
    TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, **v2, 0);
    if (TypeInfo)
    {
      swift::reflection::TypeInfo::dump(TypeInfo, &std::cout, 0);
      v21[1] = 0;
      v21[2] = 0;
      v22 = 0;
      v23 = 2400;
      v24 = 0;
      v25 = 0;
      v60 = 0;
      v21[0] = off_E13E8;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v58 = 0;
      swift::reflection::TypeRef::getDemangling(v3, v21);
      swift::Demangle::__runtime::mangleNode();
      memset(&v18, 0, sizeof(v18));
      if (v19)
      {
        std::string::assign(&v18, "<failed to mangle name>");
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "Failed to get mangled name: Node ", 33);
        v5 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, " error ", 7);
        v6 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, ":", 1);
        v7 = std::ostream::operator<<();
      }

      else
      {
        std::string::operator=(&v18, &__p);
        v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "Mangled name: ", 14);
        v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "$s", 2);
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v18;
        }

        else
        {
          v11 = v18.__r_.__value_.__r.__words[0];
        }

        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v18.__r_.__value_.__l.__size_;
        }

        v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v11, size);
      }

      v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "\n", 1);
      v14 = swift_reflection_copyNameForTypeRef(v13, **v2, 0);
      v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "Demangled name: ", 16);
      v16 = strlen(v14);
      v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, v14, v16);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, "\n", 1);
      free(v14);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        v21[0] = off_E13E8;
        if (v60 == &v59)
        {
          (*(*v60 + 32))(v60);
        }

        else if (v60)
        {
          (*(*v60 + 40))();
        }

        v21[0] = off_E13C0;
        result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v22);
        if (v24)
        {
          *(v24 + 48) = 0;
        }

        return result;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_17;
    }
  }

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type info>\n", 17);
}

void *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_dumpInfoForMetadata::$_0>(swift_reflection_dumpInfoForMetadata::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, unint64_t *a2)
{
  MetadataTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(*a2, ****a1, 0, 0);
  if (MetadataTypeInfo)
  {

    return swift::reflection::TypeInfo::dump(MetadataTypeInfo, &std::cout, 0);
  }

  else
  {

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type info>\n", 17);
  }
}

void *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_dumpInfoForMetadata::$_0>(swift_reflection_dumpInfoForMetadata::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, unint64_t *a2)
{
  MetadataTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(*a2, ****a1, 0, 0);
  if (MetadataTypeInfo)
  {

    return swift::reflection::TypeInfo::dump(MetadataTypeInfo, &std::cout, 0);
  }

  else
  {

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type info>\n", 17);
  }
}

void *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_dumpInfoForInstance::$_0>(swift_reflection_dumpInfoForInstance::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, unint64_t *a2)
{
  InstanceTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(*a2, ****a1, 0, 0);
  if (InstanceTypeInfo)
  {

    return swift::reflection::TypeInfo::dump(InstanceTypeInfo, &std::cout, 0);
  }

  else
  {

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type info>\n", 17);
  }
}

void *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_dumpInfoForInstance::$_0>(swift_reflection_dumpInfoForInstance::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, unint64_t *a2)
{
  InstanceTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(*a2, ****a1, 0, 0);
  if (InstanceTypeInfo)
  {

    return swift::reflection::TypeInfo::dump(InstanceTypeInfo, &std::cout, 0);
  }

  else
  {

    return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&std::cout, "<null type info>\n", 17);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateConformanceCache::$_0>(swift_reflection_iterateConformanceCache::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(__int128 ***a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = off_E1050;
  v5 = *v2;
  v6 = &v4;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::iterateConformances();
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateConformanceCache::$_0>(swift_reflection_iterateConformanceCache::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(__int128 ***a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = off_E10E0;
  v5 = *v2;
  v6 = &v4;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::iterateConformances();
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::IterateConformanceTable(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  (*(**(a1 + 2800) + 24))(&v19);
  if (!v19)
  {
    goto LABEL_19;
  }

  v7 = *(v19 + 4);
  v8 = *(v19 + 8);
  (*(**(a1 + 2800) + 24))(&v16);
  v9 = v16;
  if (v16)
  {
    if (v7)
    {
      v10 = (v16 + 16);
      while (1)
      {
        v11 = *v10;
        v23[0] = *(v10 - 1);
        v23[1] = a3;
        v22[0] = v11;
        v22[1] = a3;
        v12 = *(a4 + 24);
        if (!v12)
        {
          goto LABEL_24;
        }

        v10 += 3;
        (*(*v12 + 48))(v12, v23, v22);
        if (!--v7)
        {
          v9 = v16;
          v16 = 0;
          if (v9)
          {
            goto LABEL_10;
          }

          goto LABEL_12;
        }
      }
    }

    v16 = 0;
LABEL_10:
    v23[0] = v9;
    if (!v18)
    {
      goto LABEL_24;
    }

    (*(*v18 + 48))(v18, v23);
  }

LABEL_12:
  if (v18 == &v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))(v18);
  }

  v13 = v19;
  v19 = 0;
  if (!v13)
  {
    goto LABEL_19;
  }

  v16 = v13;
  if (!v21)
  {
LABEL_24:
    v15 = std::__throw_bad_function_call[abi:nn200100]();
    return _ZNSt3__110__function6__funcIZZ40swift_reflection_iterateConformanceCacheENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_15WithObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_E_NS_9allocatorISI_EEFvNS4_6remote13RemoteAddressESM_EED1Ev(v15);
  }

  (*(*v21 + 48))(v21, &v16);
LABEL_19:
  result = v21;
  if (v21 == &v20)
  {
    return (*(*v21 + 32))(v21);
  }

  if (v21)
  {
    return (*(*v21 + 40))(v21);
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZ40swift_reflection_iterateConformanceCacheENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_15WithObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_E_NS_9allocatorISI_EEFvNS4_6remote13RemoteAddressESM_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = off_E1050;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t SwiftReflectionContext::allocateTemporaryObject<std::string>(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    (*(*v1 + 48))(v1);
    operator new();
  }

  v2 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<std::string * SwiftReflectionContext::allocateTemporaryObject<std::string>(void)::{lambda(void)#1},std::allocator<std::string * SwiftReflectionContext::allocateTemporaryObject<std::string>(void)::{lambda(void)#1}>,void ()(void)>::~__func(v2);
}

uint64_t std::__function::__func<std::string * SwiftReflectionContext::allocateTemporaryObject<std::string>(void)::{lambda(void)#1},std::allocator<std::string * SwiftReflectionContext::allocateTemporaryObject<std::string>(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E1098;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::string * SwiftReflectionContext::allocateTemporaryObject<std::string>(void)::{lambda(void)#1},std::allocator<std::string * SwiftReflectionContext::allocateTemporaryObject<std::string>(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZ40swift_reflection_iterateConformanceCacheENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_13NoObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_E_NS_9allocatorISI_EEFvNS4_6remote13RemoteAddressESM_EE7__cloneEPNS0_6__baseISN_EE(uint64_t a1, uint64_t a2)
{
  *a2 = off_E10E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateMetadataAllocations::$_0>(swift_reflection_iterateMetadataAllocations::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(__int128 ***a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = off_E1138;
  v5 = *v2;
  v6 = &v4;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::iterateMetadataAllocations();
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateMetadataAllocations::$_0>(swift_reflection_iterateMetadataAllocations::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(__int128 ***a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = off_E1180;
  v5 = *v2;
  v6 = &v4;
  swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::iterateMetadataAllocations();
}

__n128 _ZNKSt3__110__function6__funcIZZ43swift_reflection_iterateMetadataAllocationsENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_15WithObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_E_NS_9allocatorISH_EEFvNS5_18MetadataAllocationISC_EEEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = off_E1138;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZ43swift_reflection_iterateMetadataAllocationsENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_15WithObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_E_NS_9allocatorISH_EEFvNS5_18MetadataAllocationISC_EEEEclEOSL_(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 4);
  v4 = *(a1 + 16);
  v5 = **(a1 + 8);
  v7 = *a2;
  v8 = v2;
  v9 = v3;
  return v5(&v7, *v4);
}

__n128 _ZNKSt3__110__function6__funcIZZ43swift_reflection_iterateMetadataAllocationsENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_13NoObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_E_NS_9allocatorISH_EEFvNS5_18MetadataAllocationISC_EEEE7__cloneEPNS0_6__baseISM_EE(uint64_t a1, uint64_t a2)
{
  *a2 = off_E1180;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZ43swift_reflection_iterateMetadataAllocationsENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_13NoObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_E_NS_9allocatorISH_EEFvNS5_18MetadataAllocationISC_EEEEclEOSL_(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 4);
  v4 = *(a1 + 16);
  v5 = **(a1 + 8);
  v7 = *a2;
  v8 = v2;
  v9 = v3;
  return v5(&v7, *v4);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_allocationMetadataPointer::$_0>(swift_reflection_allocationMetadataPointer::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ***a1, uint64_t *a2)
{
  v2 = ***a1;
  if (*v2 != 14)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 8);
  (*(**(v3 + 2800) + 24))(&v10);
  v6 = v10;
  if (!v10)
  {
    v7 = 0;
LABEL_7:
    if (v12 == &v11)
    {
      (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    return v7;
  }

  v7 = *(v10 + 32);
  v10 = 0;
  v13 = v6;
  if (v12)
  {
    (*(*v12 + 48))(v12, &v13);
    goto LABEL_7;
  }

  v9 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_allocationMetadataPointer::$_0>(swift_reflection_allocationMetadataPointer::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v9);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_allocationMetadataPointer::$_0>(swift_reflection_allocationMetadataPointer::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ***a1, uint64_t *a2)
{
  v2 = ***a1;
  if (*v2 != 14)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 8);
  (*(**(v3 + 2800) + 24))(&v10);
  v6 = v10;
  if (!v10)
  {
    v7 = 0;
LABEL_7:
    if (v12 == &v11)
    {
      (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    return v7;
  }

  v7 = *(v10 + 32);
  v10 = 0;
  v13 = v6;
  if (v12)
  {
    (*(*v12 + 48))(v12, &v13);
    goto LABEL_7;
  }

  v9 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_metadataAllocationTagName::$_0>(swift_reflection_metadataAllocationTagName::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v9);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_metadataAllocationTagName::$_0>(swift_reflection_metadataAllocationTagName::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationTagName(**v2, &v9);
  v4 = **(v2 + 8);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v8 = 0;
  if (v10 == 1)
  {
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v9;
    }

    v8 = 1;
    v5 = SwiftReflectionContext::allocateTemporaryObject<std::string>(v4);
    std::string::operator=(v5, &__p);
    if (*(v5 + 23) < 0)
    {
      v5 = *v5;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v8 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 == 1 && SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v5;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_metadataAllocationTagName::$_0>(swift_reflection_metadataAllocationTagName::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationTagName(**v2, &v9);
  v4 = **(v2 + 8);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v8 = 0;
  if (v10 == 1)
  {
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v9;
    }

    v8 = 1;
    v5 = SwiftReflectionContext::allocateTemporaryObject<std::string>(v4);
    std::string::operator=(v5, &__p);
    if (*(v5 + 23) < 0)
    {
      v5 = *v5;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v8 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 == 1 && SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v5;
}

void swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationTagName(int a1@<W1>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
      *a2 = 0x746553746F4ELL;
      v2 = 6;
      goto LABEL_35;
    case 1:
      *a2 = 0x7365786F42;
      v2 = 5;
      goto LABEL_35;
    case 2:
      strcpy(a2, "ObjCClassWrappers");
      v2 = 17;
      goto LABEL_35;
    case 3:
      v6 = 0x6E6F6974636E7546;
      goto LABEL_15;
    case 4:
      v6 = 0x657079746174654DLL;
LABEL_15:
      *a2 = v6;
      strcpy((a2 + 8), "Types");
      v2 = 13;
      goto LABEL_35;
    case 5:
      operator new();
    case 6:
      *(a2 + 16) = 1936027769;
      v4 = *"ialMetatypes";
      v5 = 0x746E657473697845;
      goto LABEL_27;
    case 7:
      v7 = 0x746E657473697845;
      v8 = 0x73657079546C6169;
      goto LABEL_17;
    case 8:
      operator new();
    case 9:
      operator new();
    case 10:
      *(a2 + 16) = 1936026722;
      v4 = *"itnessTables";
      v5 = 0x576E676965726F46;
      goto LABEL_27;
    case 11:
      operator new();
    case 12:
      strcpy(a2, "Metadata");
      v2 = 8;
      goto LABEL_35;
    case 13:
      strcpy(a2, "TupleCache");
      v2 = 10;
      goto LABEL_35;
    case 14:
      *(a2 + 16) = 1701340001;
      v4 = *"etadataCache";
      v5 = 0x4D636972656E6547;
      goto LABEL_27;
    case 15:
      *(a2 + 16) = 1701340001;
      v4 = *"etadataCache";
      v5 = 0x4D6E676965726F46;
      goto LABEL_27;
    case 16:
      operator new();
    case 17:
      *(a2 + 16) = 1635017060;
      v4 = *"lassMetadata";
      v5 = 0x43636972656E6547;
      goto LABEL_27;
    case 18:
      *(a2 + 16) = 1635017060;
      v4 = *"alueMetadata";
      v5 = 0x56636972656E6547;
LABEL_27:
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 20) = 0;
      v2 = 20;
      goto LABEL_35;
    case 19:
      operator new();
    case 20:
      strcpy(a2, "GlobalMetadataCache");
      v2 = 19;
      goto LABEL_35;
    case 21:
      operator new();
    case 22:
      operator new();
    case 23:
      operator new();
    case 24:
      *a2 = 0x617461646174654DLL;
      v9 = 1801675088;
      goto LABEL_34;
    case 25:
      v7 = 0x547373656E746957;
      v8 = 0x6B636150656C6261;
LABEL_17:
      *a2 = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = 0;
      v2 = 16;
      goto LABEL_35;
    case 26:
      *a2 = 0x745374756F79614CLL;
      v9 = 1735289202;
LABEL_34:
      *(a2 + 8) = v9;
      *(a2 + 12) = 0;
      v2 = 12;
LABEL_35:
      *(a2 + 23) = v2;
      v3 = 1;
      break;
    case 27:
      strcpy(a2, "FixedArrayCache");
      v3 = 1;
      *(a2 + 23) = 15;
      break;
    default:
      v3 = 0;
      *a2 = 0;
      break;
  }

  *(a2 + 24) = v3;
}

void swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationTagName(int a1@<W1>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
      *a2 = 0x746553746F4ELL;
      v2 = 6;
      goto LABEL_35;
    case 1:
      *a2 = 0x7365786F42;
      v2 = 5;
      goto LABEL_35;
    case 2:
      strcpy(a2, "ObjCClassWrappers");
      v2 = 17;
      goto LABEL_35;
    case 3:
      v6 = 0x6E6F6974636E7546;
      goto LABEL_15;
    case 4:
      v6 = 0x657079746174654DLL;
LABEL_15:
      *a2 = v6;
      strcpy((a2 + 8), "Types");
      v2 = 13;
      goto LABEL_35;
    case 5:
      operator new();
    case 6:
      *(a2 + 16) = 1936027769;
      v4 = *"ialMetatypes";
      v5 = 0x746E657473697845;
      goto LABEL_27;
    case 7:
      v7 = 0x746E657473697845;
      v8 = 0x73657079546C6169;
      goto LABEL_17;
    case 8:
      operator new();
    case 9:
      operator new();
    case 10:
      *(a2 + 16) = 1936026722;
      v4 = *"itnessTables";
      v5 = 0x576E676965726F46;
      goto LABEL_27;
    case 11:
      operator new();
    case 12:
      strcpy(a2, "Metadata");
      v2 = 8;
      goto LABEL_35;
    case 13:
      strcpy(a2, "TupleCache");
      v2 = 10;
      goto LABEL_35;
    case 14:
      *(a2 + 16) = 1701340001;
      v4 = *"etadataCache";
      v5 = 0x4D636972656E6547;
      goto LABEL_27;
    case 15:
      *(a2 + 16) = 1701340001;
      v4 = *"etadataCache";
      v5 = 0x4D6E676965726F46;
      goto LABEL_27;
    case 16:
      operator new();
    case 17:
      *(a2 + 16) = 1635017060;
      v4 = *"lassMetadata";
      v5 = 0x43636972656E6547;
      goto LABEL_27;
    case 18:
      *(a2 + 16) = 1635017060;
      v4 = *"alueMetadata";
      v5 = 0x56636972656E6547;
LABEL_27:
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 20) = 0;
      v2 = 20;
      goto LABEL_35;
    case 19:
      operator new();
    case 20:
      strcpy(a2, "GlobalMetadataCache");
      v2 = 19;
      goto LABEL_35;
    case 21:
      operator new();
    case 22:
      operator new();
    case 23:
      operator new();
    case 24:
      *a2 = 0x617461646174654DLL;
      v9 = 1801675088;
      goto LABEL_34;
    case 25:
      v7 = 0x547373656E746957;
      v8 = 0x6B636150656C6261;
LABEL_17:
      *a2 = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = 0;
      v2 = 16;
      goto LABEL_35;
    case 26:
      *a2 = 0x745374756F79614CLL;
      v9 = 1735289202;
LABEL_34:
      *(a2 + 8) = v9;
      *(a2 + 12) = 0;
      v2 = 12;
LABEL_35:
      *(a2 + 23) = v2;
      v3 = 1;
      break;
    case 27:
      strcpy(a2, "FixedArrayCache");
      v3 = 1;
      *(a2 + 23) = 15;
      break;
    default:
      v3 = 0;
      *a2 = 0;
      break;
  }

  *(a2 + 24) = v3;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_metadataAllocationCacheNode::$_0>(swift_reflection_metadataAllocationCacheNode::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(void **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = (*v2)[1];
  v5 = *(*v2 + 4);
  v7 = **v2;
  v8 = 0;
  v9 = 0;
  v10 = v4;
  v11 = v5;
  v12 = 0;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationCacheNode(v3, &v7, &v13);
  result = 0;
  if (v14 == 1)
  {
    **v2[1] = v13;
    return 1;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_metadataAllocationCacheNode::$_0>(swift_reflection_metadataAllocationCacheNode::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(void **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = (*v2)[1];
  v5 = *(*v2 + 4);
  v7 = **v2;
  v8 = 0;
  v9 = 0;
  v10 = v4;
  v11 = v5;
  v12 = 0;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationCacheNode(v3, &v7, &v13);
  result = 0;
  if (v14 == 1)
  {
    **v2[1] = v13;
    return 1;
  }

  return result;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::metadataAllocationCacheNode@<X0>(uint64_t result@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  v5 = v4 > 0x17;
  v6 = (1 << v4) & 0xC1E7FE;
  if (v5 || v6 == 0)
  {
    *a3 = 0;
    a3[16] = 0;
    return result;
  }

  v8 = *(a2 + 1);
  (*(**(result + 2800) + 24))(&v11);
  v9 = v11;
  if (v11)
  {
    *a3 = *v11;
    a3[16] = 1;
    v11 = 0;
    v14 = v9;
    if (!v13)
    {
      v10 = std::__throw_bad_function_call[abi:nn200100]();
      return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateMetadataAllocationBacktraces::$_0>(swift_reflection_iterateMetadataAllocationBacktraces::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v10);
    }

    (*(*v13 + 48))(v13, &v14);
  }

  else
  {
    *a3 = 0;
    a3[16] = 0;
  }

  result = v13;
  if (v13 == &v12)
  {
    return (*(*v13 + 32))(v13);
  }

  if (v13)
  {
    return (*(*v13 + 40))(v13);
  }

  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateMetadataAllocationBacktraces::$_0>(swift_reflection_iterateMetadataAllocationBacktraces::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(__int128 ***a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = off_E1208;
  v5 = *v2;
  v6 = &v4;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::iterateMetadataAllocationBacktraces();
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char const* SwiftReflectionContext::withContext<char const*,swift_reflection_iterateMetadataAllocationBacktraces::$_0>(swift_reflection_iterateMetadataAllocationBacktraces::$_0 const&)::{lambda(char const*&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(__int128 ***a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = off_E1250;
  v5 = *v2;
  v6 = &v4;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::iterateMetadataAllocationBacktraces();
}

__n128 _ZNKSt3__110__function6__funcIZZ52swift_reflection_iterateMetadataAllocationBacktracesENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_15WithObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_T1_E_NS_9allocatorISJ_EEFvyjPKyEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = off_E1208;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZ52swift_reflection_iterateMetadataAllocationBacktracesENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_15WithObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_T1_E_NS_9allocatorISJ_EEFvyjPKyEEclEOyOjOSN_(uint64_t a1, void *a2, unsigned int *a3, uint64_t *a4)
{
  v4 = *a3;
  if (v4)
  {
    v5 = *a4;
    operator new();
  }

  (**(a1 + 8))(*a2, v4, 0, **(a1 + 16));
}

__n128 _ZNKSt3__110__function6__funcIZZ52swift_reflection_iterateMetadataAllocationBacktracesENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_13NoObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_T1_E_NS_9allocatorISJ_EEFvyjPKyEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = off_E1250;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZ52swift_reflection_iterateMetadataAllocationBacktracesENK3__0clIN5swift10reflection17ReflectionContextINS4_8ExternalINS4_13NoObjCInteropINS4_13RuntimeTargetILj8EEEEEEEEEEEDaPT_EUlSF_T0_T1_E_NS_9allocatorISJ_EEFvyjPKyEEclEOyOjOSN_(uint64_t a1, void *a2, unsigned int *a3, uint64_t *a4)
{
  v4 = *a3;
  if (v4)
  {
    v5 = *a4;
    operator new();
  }

  (**(a1 + 8))(*a2, v4, 0, **(a1 + 16));
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_async_task_slab_return SwiftReflectionContext::withContext<swift_async_task_slab_return,swift_reflection_asyncTaskSlabPointer::$_0>(swift_reflection_asyncTaskSlabPointer::$_0 const&)::{lambda(swift_async_task_slab_return&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = **v2;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::loadTargetPointers(*a2);
  if (*(v3 + 2968) == 1)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v3, 0, 0, &v10);
  }

  else
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v3, 0, 0, &v10);
  }

  if (v11 == 1)
  {
    v5 = *v2[1];
    __p.__r_.__value_.__s.__data_[0] = 0;
    v9 = 0;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v10;
    }

    v9 = 1;
    v6 = SwiftReflectionContext::allocateTemporaryObject<std::string>(v5);
    std::string::operator=(v6, &__p);
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    if (v9 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v11 == 1 && SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v6;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_async_task_slab_return SwiftReflectionContext::withContext<swift_async_task_slab_return,swift_reflection_asyncTaskSlabPointer::$_0>(swift_reflection_asyncTaskSlabPointer::$_0 const&)::{lambda(swift_async_task_slab_return&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = **v2;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::loadTargetPointers(*a2);
  if (*(v3 + 2968) == 1)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v3, 0, 0, &v10);
  }

  else
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v3, 0, 0, &v10);
  }

  if (v11 == 1)
  {
    v5 = *v2[1];
    __p.__r_.__value_.__s.__data_[0] = 0;
    v9 = 0;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v10;
    }

    v9 = 1;
    v6 = SwiftReflectionContext::allocateTemporaryObject<std::string>(v5);
    std::string::operator=(v6, &__p);
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    if (v9 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v11 == 1 && SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v6;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::loadTargetPointers(uint64_t result)
{
  if ((*(result + 2920) & 1) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v6 = a1;
  swift::remote::MemoryReader::readObj<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(a1[350], &v90);
  if (!v90)
  {
    operator new();
  }

  v61 = a3;
  v64 = a4;
  v76 = 0;
  v86 = 0u;
  v87 = 0u;
  v89 = 0;
  v88 = 0u;
  v8 = *(v90 + 8);
  v9 = *(v90 + 9);
  LODWORD(v75) = v8;
  DWORD1(v75) = BYTE1(v8);
  v10 = vdupq_n_s32(v8);
  v11 = *(v90 + 24);
  v12 = *(v90 + 25);
  HIDWORD(v76) = BYTE1(v11) & 1;
  BYTE5(v76) = (v11 & 0x200) != 0;
  BYTE6(v76) = (v11 & 0x400) != 0;
  v78 = (v11 & 0x1000) != 0;
  v79 = (v11 & 0x2000) != 0;
  BYTE12(v75) = 0;
  v10.i64[0] = *&vmovn_s32(vshlq_u32(v10, xmmword_DA680)) & 0xFF01FF01FF01FF01;
  DWORD2(v75) = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
  v80 = (v11 & 0x4000) != 0;
  v77 = v12 > 3;
  HIBYTE(v76) = 1;
  v13 = v12 >= 4;
  v14 = v12 | 3;
  if (!v13)
  {
    v14 = 0;
  }

  v81 = 1;
  v82 = v14;
  v15 = v9 | (*(v90 + 36) << 32);
  v16 = v90[15];
  v83 = v15;
  v85 = v16;
  v17 = 0;
  v84 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getRunJob<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v6, v90);
  v18 = v90[13];
  v19 = &v70;
  v20 = 0x1000C0077774924;
  while (v18 && v17 < a2)
  {
    v21 = v17 + 1;
    swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v72);
    if (v72)
    {
      v22 = *v72;
      if (v22 != 2)
      {
        if (v22 == 1)
        {
          swift::remote::MemoryReader::readObj<swift::reflection::ChildTaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v69);
          v23 = v69;
          if (v69)
          {
            goto LABEL_13;
          }

LABEL_17:
          v24 = 0;
          goto LABEL_18;
        }

LABEL_72:
        v25 = 0;
        v43 = v72;
        v18 = v72[1];
        v72 = 0;
        v17 = v21;
        v69 = v43;
        if (!v74)
        {
          goto LABEL_116;
        }

        (*(*v74 + 48))(v74, &v69);
        goto LABEL_74;
      }

      swift::remote::MemoryReader::readObj<swift::reflection::ChildTaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v69);
      v23 = v69;
      if (!v69)
      {
        goto LABEL_17;
      }

LABEL_13:
      v24 = v23[2];
      v69 = 0;
      __p = v23;
      if (!v71)
      {
        goto LABEL_116;
      }

      (*(*v71 + 48))(v71, &__p);
LABEL_18:
      if (v71 == v19)
      {
        (*(*v71 + 32))(v71);
        if (!v24)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v71)
        {
          (*(*v71 + 40))();
        }

        if (!v24)
        {
          goto LABEL_72;
        }
      }

      if (a2 <= v21)
      {
        v26 = v17 + 1;
      }

      else
      {
        v26 = a2;
      }

      v27 = v26 + 1;
      if (v21 >= a2)
      {
        v21 = v27;
      }

      else
      {
        v62 = v27;
        v65 &= 0xFFFFFFFFFFFFFF00;
        v28 = v17 + 2;
        while (1)
        {
          swift::remote::MemoryReader::readObj<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v6[350], &v69);
          if (!v69)
          {
            operator new();
          }

          v29 = *(&v86 + 1);
          if (*(&v86 + 1) >= v87)
          {
            v31 = v86;
            v32 = *(&v86 + 1) - v86;
            v33 = (*(&v86 + 1) - v86) >> 3;
            v34 = v33 + 1;
            if ((v33 + 1) >> 61)
            {
              goto LABEL_117;
            }

            v35 = v6;
            v36 = a2;
            v37 = v19;
            v38 = v20;
            v39 = v87 - v86;
            if ((v87 - v86) >> 2 > v34)
            {
              v34 = v39 >> 2;
            }

            if (v39 >= 0x7FFFFFFFFFFFFFF8)
            {
              v40 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v40 = v34;
            }

            if (v40)
            {
              if (!(v40 >> 61))
              {
                operator new();
              }

LABEL_118:
              std::string::__throw_length_error[abi:nn200100]();
            }

            *(8 * v33) = v24;
            v30 = 8 * v33 + 8;
            memcpy(0, v31, v32);
            *&v86 = 0;
            *(&v86 + 1) = v30;
            *&v87 = 0;
            if (v31)
            {
              operator delete(v31);
            }

            v20 = v38;
            v19 = v37;
            a2 = v36;
            v6 = v35;
          }

          else
          {
            **(&v86 + 1) = v24;
            v30 = v29 + 8;
          }

          *(&v86 + 1) = v30;
          if (*(v90 + 35))
          {
            if (!v6[372])
            {
              operator new();
            }

            v63 &= 0xFFFFFFFFFFFFFF00;
            swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &__p);
            v41 = __p;
            if (__p)
            {
              v24 = *(__p + 1);
              __p = 0;
              v93 = v41;
              if (!v68)
              {
                goto LABEL_116;
              }

              (*(*v68 + 48))(v68, &v93);
            }

            else
            {
              v24 = 0;
            }

            if (v68 == &v67)
            {
              (*(*v68 + 32))(v68);
            }

            else if (v68)
            {
              (*(*v68 + 40))();
            }
          }

          else
          {
            v24 = 0;
          }

          v42 = v69;
          v69 = 0;
          if (v42)
          {
            __p = v42;
            if (!v71)
            {
              goto LABEL_116;
            }

            (*(*v71 + 48))(v71, &__p);
          }

          if (v71 == v19)
          {
            (*(*v71 + 32))(v71);
          }

          else if (v71)
          {
            (*(*v71 + 40))();
          }

          if (!v24)
          {
            break;
          }

          v13 = v28++ >= a2;
          if (v13)
          {
            v21 = v62;
            goto LABEL_72;
          }
        }

        v21 = v28;
      }

      goto LABEL_72;
    }

    v25 = 3;
    ++v17;
LABEL_74:
    if (v74 == &v73)
    {
      (*(*v74 + 32))(v74);
    }

    else if (v74)
    {
      (*(*v74 + 40))();
    }

    if (v25)
    {
      break;
    }
  }

  v44 = v90[8];
  v89 = v44;
  if (HIBYTE(v76) == 1 && !v77)
  {
    v47 = v61 + 1;
    do
    {
      if (!v44)
      {
        break;
      }

      if (!--v47)
      {
        break;
      }

      swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v72);
      v48 = v72;
      if (v72)
      {
        v49 = v6[352] & v72[1];
        v50 = v88;
        if (v88 >= *(&v88 + 1))
        {
          v52 = *(&v87 + 1);
          v53 = v88 - *(&v87 + 1);
          v54 = (v88 - *(&v87 + 1)) >> 3;
          v55 = v54 + 1;
          if ((v54 + 1) >> 61)
          {
            goto LABEL_117;
          }

          v56 = *(&v88 + 1) - *(&v87 + 1);
          if ((*(&v88 + 1) - *(&v87 + 1)) >> 2 > v55)
          {
            v55 = v56 >> 2;
          }

          if (v56 >= 0x7FFFFFFFFFFFFFF8)
          {
            v57 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            if (!(v57 >> 61))
            {
              operator new();
            }

            goto LABEL_118;
          }

          *(8 * v54) = v49;
          v51 = 8 * v54 + 8;
          memcpy(0, v52, v53);
          *(&v87 + 1) = 0;
          v88 = v51;
          if (v52)
          {
            operator delete(v52);
          }
        }

        else
        {
          *v88 = v49;
          v51 = v50 + 8;
        }

        *&v88 = v51;
        v58 = v72;
        v59 = *v72;
        v60 = v6[352];
        v72 = 0;
        v69 = v58;
        if (!v74)
        {
          goto LABEL_116;
        }

        v44 = v60 & v59;
        (*(*v74 + 48))(v74, &v69);
      }

      if (v74 == &v73)
      {
        (*(*v74 + 32))(v74);
      }

      else if (v74)
      {
        (*(*v74 + 40))();
      }
    }

    while (v48);
  }

  std::pair<std::optional<std::string>,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo>::pair[abi:nn200100]<std::nullopt_t const&,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo&,0>(v64, &std::nullopt, &v75);
  if (*(&v87 + 1))
  {
    *&v88 = *(&v87 + 1);
    operator delete(*(&v87 + 1));
  }

  if (v86)
  {
    *(&v86 + 1) = v86;
    operator delete(v86);
  }

  v45 = v90;
  v90 = 0;
  if (v45)
  {
    *&v75 = v45;
    if (!v92)
    {
LABEL_116:
      std::__throw_bad_function_call[abi:nn200100]();
LABEL_117:
      std::string::__throw_length_error[abi:nn200100]();
    }

    (*(*v92 + 48))(v92, &v75);
  }

  result = v92;
  if (v92 == &v91)
  {
    return (*(*v92 + 32))(v92);
  }

  if (v92)
  {
    return (*(*v92 + 40))();
  }

  return result;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v6 = a1;
  swift::remote::MemoryReader::readObj<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(a1[350], &v85);
  if (!v85)
  {
    operator new();
  }

  v59 = a3;
  v62 = a4;
  v74 = 0;
  v81 = 0u;
  v82 = 0u;
  v84 = 0;
  v83 = 0u;
  v8 = *(v85 + 8);
  v9 = *(v85 + 9);
  v10 = vdupq_n_s32(v8);
  LODWORD(v73) = v8;
  DWORD1(v73) = BYTE1(v8);
  v11 = *(v85 + 24);
  HIDWORD(v74) = BYTE1(v11) & 1;
  BYTE5(v74) = (v11 & 0x200) != 0;
  HIWORD(v74) = (v11 & 0x400) != 0;
  HIBYTE(v74) = 1;
  BYTE12(v73) = 0;
  v10.i64[0] = *&vmovn_s32(vshlq_u32(v10, xmmword_DA680)) & 0xFF01FF01FF01FF01;
  DWORD2(v73) = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
  *v10.i8 = vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(v11), xmmword_DA6A0)), 0x1000100010001);
  v75 = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
  v76 = 0;
  v77 = 0;
  v12 = v9 | (*(v85 + 36) << 32);
  v13 = v85[15];
  v78 = v12;
  v80 = v13;
  v14 = 0;
  v79 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getRunJob<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v6, v85);
  v15 = v85[13];
  v16 = &v68;
  v17 = 0x1000C0077774924;
  while (v15 && v14 < a2)
  {
    v18 = v14 + 1;
    swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v70);
    if (v70)
    {
      v19 = *v70;
      if (v19 != 2)
      {
        if (v19 == 1)
        {
          swift::remote::MemoryReader::readObj<swift::reflection::ChildTaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v67);
          v20 = v67;
          if (v67)
          {
            goto LABEL_11;
          }

LABEL_15:
          v21 = 0;
          goto LABEL_16;
        }

LABEL_70:
        v22 = 0;
        v41 = v70;
        v15 = v70[1];
        v70 = 0;
        v14 = v18;
        v67 = v41;
        if (!v72)
        {
          goto LABEL_114;
        }

        (*(*v72 + 48))(v72, &v67);
        goto LABEL_72;
      }

      swift::remote::MemoryReader::readObj<swift::reflection::ChildTaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v67);
      v20 = v67;
      if (!v67)
      {
        goto LABEL_15;
      }

LABEL_11:
      v21 = v20[2];
      v67 = 0;
      __p = v20;
      if (!v69)
      {
        goto LABEL_114;
      }

      (*(*v69 + 48))(v69, &__p);
LABEL_16:
      if (v69 == v16)
      {
        (*(*v69 + 32))(v69);
        if (!v21)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v69)
        {
          (*(*v69 + 40))();
        }

        if (!v21)
        {
          goto LABEL_70;
        }
      }

      if (a2 <= v18)
      {
        v23 = v14 + 1;
      }

      else
      {
        v23 = a2;
      }

      v24 = v23 + 1;
      if (v18 >= a2)
      {
        v18 = v24;
      }

      else
      {
        v60 = v24;
        v63 &= 0xFFFFFFFFFFFFFF00;
        v25 = v14 + 2;
        while (1)
        {
          swift::remote::MemoryReader::readObj<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v6[350], &v67);
          if (!v67)
          {
            operator new();
          }

          v26 = *(&v81 + 1);
          if (*(&v81 + 1) >= v82)
          {
            v28 = v81;
            v29 = *(&v81 + 1) - v81;
            v30 = (*(&v81 + 1) - v81) >> 3;
            v31 = v30 + 1;
            if ((v30 + 1) >> 61)
            {
              goto LABEL_115;
            }

            v32 = v6;
            v33 = a2;
            v34 = v16;
            v35 = v17;
            v36 = v82 - v81;
            if ((v82 - v81) >> 2 > v31)
            {
              v31 = v36 >> 2;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFF8)
            {
              v37 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v37 = v31;
            }

            if (v37)
            {
              if (!(v37 >> 61))
              {
                operator new();
              }

LABEL_116:
              std::string::__throw_length_error[abi:nn200100]();
            }

            *(8 * v30) = v21;
            v27 = 8 * v30 + 8;
            memcpy(0, v28, v29);
            *&v81 = 0;
            *(&v81 + 1) = v27;
            *&v82 = 0;
            if (v28)
            {
              operator delete(v28);
            }

            v17 = v35;
            v16 = v34;
            a2 = v33;
            v6 = v32;
          }

          else
          {
            **(&v81 + 1) = v21;
            v27 = v26 + 8;
          }

          *(&v81 + 1) = v27;
          if (*(v85 + 35))
          {
            if (!v6[372])
            {
              operator new();
            }

            v61 &= 0xFFFFFFFFFFFFFF00;
            swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &__p);
            v38 = __p;
            if (__p)
            {
              v21 = *(__p + 1);
              __p = 0;
              v88 = v38;
              if (!v66)
              {
                goto LABEL_114;
              }

              (*(*v66 + 48))(v66, &v88);
            }

            else
            {
              v21 = 0;
            }

            if (v66 == &v65)
            {
              (*(*v66 + 32))(v66);
            }

            else if (v66)
            {
              (*(*v66 + 40))();
            }
          }

          else
          {
            v21 = 0;
          }

          v39 = v67;
          v67 = 0;
          if (v39)
          {
            __p = v39;
            if (!v69)
            {
              goto LABEL_114;
            }

            (*(*v69 + 48))(v69, &__p);
          }

          if (v69 == v16)
          {
            (*(*v69 + 32))(v69);
          }

          else if (v69)
          {
            (*(*v69 + 40))();
          }

          if (!v21)
          {
            break;
          }

          if (v25++ >= a2)
          {
            v18 = v60;
            goto LABEL_70;
          }
        }

        v18 = v25;
      }

      goto LABEL_70;
    }

    v22 = 3;
    ++v14;
LABEL_72:
    if (v72 == &v71)
    {
      (*(*v72 + 32))(v72);
    }

    else if (v72)
    {
      (*(*v72 + 40))();
    }

    if (v22)
    {
      break;
    }
  }

  v42 = v85[8];
  v84 = v42;
  if (HIBYTE(v74) == 1 && (v75 & 1) == 0)
  {
    v45 = v59 + 1;
    do
    {
      if (!v42)
      {
        break;
      }

      if (!--v45)
      {
        break;
      }

      swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v6[350], &v70);
      v46 = v70;
      if (v70)
      {
        v47 = v6[352] & v70[1];
        v48 = v83;
        if (v83 >= *(&v83 + 1))
        {
          v50 = *(&v82 + 1);
          v51 = v83 - *(&v82 + 1);
          v52 = (v83 - *(&v82 + 1)) >> 3;
          v53 = v52 + 1;
          if ((v52 + 1) >> 61)
          {
            goto LABEL_115;
          }

          v54 = *(&v83 + 1) - *(&v82 + 1);
          if ((*(&v83 + 1) - *(&v82 + 1)) >> 2 > v53)
          {
            v53 = v54 >> 2;
          }

          if (v54 >= 0x7FFFFFFFFFFFFFF8)
          {
            v55 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = v53;
          }

          if (v55)
          {
            if (!(v55 >> 61))
            {
              operator new();
            }

            goto LABEL_116;
          }

          *(8 * v52) = v47;
          v49 = 8 * v52 + 8;
          memcpy(0, v50, v51);
          *(&v82 + 1) = 0;
          v83 = v49;
          if (v50)
          {
            operator delete(v50);
          }
        }

        else
        {
          *v83 = v47;
          v49 = v48 + 8;
        }

        *&v83 = v49;
        v56 = v70;
        v57 = *v70;
        v58 = v6[352];
        v70 = 0;
        v67 = v56;
        if (!v72)
        {
          goto LABEL_114;
        }

        v42 = v58 & v57;
        (*(*v72 + 48))(v72, &v67);
      }

      if (v72 == &v71)
      {
        (*(*v72 + 32))(v72);
      }

      else if (v72)
      {
        (*(*v72 + 40))();
      }
    }

    while (v46);
  }

  std::pair<std::optional<std::string>,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo>::pair[abi:nn200100]<std::nullopt_t const&,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo&,0>(v62, &std::nullopt, &v73);
  if (*(&v82 + 1))
  {
    *&v83 = *(&v82 + 1);
    operator delete(*(&v82 + 1));
  }

  if (v81)
  {
    *(&v81 + 1) = v81;
    operator delete(v81);
  }

  v43 = v85;
  v85 = 0;
  if (v43)
  {
    *&v73 = v43;
    if (!v87)
    {
LABEL_114:
      std::__throw_bad_function_call[abi:nn200100]();
LABEL_115:
      std::string::__throw_length_error[abi:nn200100]();
    }

    (*(*v87 + 48))(v87, &v73);
  }

  result = v87;
  if (v87 == &v86)
  {
    return (*(*v87 + 32))(v87);
  }

  if (v87)
  {
    return (*(*v87 + 40))();
  }

  return result;
}

std::string *std::pair<std::optional<std::string>,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo>::pair[abi:nn200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v5 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v5;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }

  v6 = *a3;
  v7 = a3[1];
  v8 = a3[3];
  *&this[2].__r_.__value_.__r.__words[2] = a3[2];
  *&this[3].__r_.__value_.__r.__words[1] = v8;
  *&this[1].__r_.__value_.__r.__words[1] = v6;
  *&this[2].__r_.__value_.__l.__data_ = v7;
  this[4].__r_.__value_.__l.__size_ = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  v10 = *(a3 + 8);
  v9 = *(a3 + 9);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_13;
  }

  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  v12 = *(a3 + 11);
  v11 = *(a3 + 12);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_13:
    std::string::__throw_length_error[abi:nn200100]();
  }

  this[6].__r_.__value_.__r.__words[0] = *(a3 + 14);
  return this;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getRunJob<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = *(a1 + 2816) & a2[7];
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::loadTargetPointers(a1);
  v5 = a2[8];
  v6 = *(v3 + 2936);
  if (v6)
  {
    v7 = v4 == v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    (*(**(v3 + 2800) + 24))(&v17);
    v12 = v17;
    if (!v17)
    {
      goto LABEL_21;
    }

    v13 = *v17;
  }

  else
  {
    v8 = *(v3 + 2944);
    if (v8)
    {
      v9 = v4 == v8;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      v10 = *(v3 + 2952);
      if (!v10 || v4 != v10)
      {
        v11 = *(v3 + 2960);
        if (!v11 || v4 != v11)
        {
          return v4;
        }
      }

      if (!a2[20])
      {
        return v4;
      }
    }

    (*(**(v3 + 2800) + 24))(&v17);
    v12 = v17;
    if (!v17)
    {
LABEL_21:
      if (v19 == &v18)
      {
        (*(*v19 + 32))(v19);
        if (v12)
        {
          return v3;
        }
      }

      else
      {
        if (v19)
        {
          (*(*v19 + 40))(v19);
        }

        if (v12)
        {
          return v3;
        }
      }

      return v4;
    }

    v13 = v17[1];
  }

  v14 = *(v3 + 2816);
  v17 = 0;
  v20 = v12;
  if (v19)
  {
    v3 = v14 & v13;
    (*(*v19 + 48))(v19, &v20);
    goto LABEL_21;
  }

  v16 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<unsigned long long>::push_back[abi:nn200100](v16);
}

void std::vector<unsigned long long>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

_BYTE *swift::remote::MemoryReader::readObj<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 24))(&v12);
  if (v14)
  {
    if (v14 == v13)
    {
      v11 = v10;
      (*(*v14 + 24))();
      v3 = v11;
    }

    else
    {
      v3 = (*(*v14 + 16))();
      v11 = v3;
    }

    v5 = v12;
    v12 = 0;
    *a2 = v5;
    v6 = a2 + 1;
    if (v3)
    {
      if (v3 == v10)
      {
        a2[4] = v6;
        (*(*v3 + 24))(v3);
      }

      else
      {
        a2[4] = (*(*v3 + 16))(v3, v6);
      }

      if (v11 == v10)
      {
        (*(*v11 + 32))(v11);
      }

      else if (v11)
      {
        (*(*v11 + 40))();
      }
    }

    else
    {
      a2[4] = 0;
    }
  }

  else
  {
    v4 = v12;
    v12 = 0;
    *a2 = v4;
    a2[4] = 0;
  }

  v7 = v12;
  result = v14;
  v12 = 0;
  if (v7)
  {
    v10[0] = v7;
    if (!v14)
    {
      v9 = std::__throw_bad_function_call[abi:nn200100]();
      return swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v9);
    }

    (*(*v14 + 48))();
    result = v14;
  }

  if (result == v13)
  {
    return (*(*result + 32))(result);
  }

  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

_BYTE *swift::remote::MemoryReader::readObj<swift::reflection::TaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 24))(&v12);
  if (v14)
  {
    if (v14 == v13)
    {
      v11 = v10;
      (*(*v14 + 24))();
      v3 = v11;
    }

    else
    {
      v3 = (*(*v14 + 16))();
      v11 = v3;
    }

    v5 = v12;
    v12 = 0;
    *a2 = v5;
    v6 = a2 + 1;
    if (v3)
    {
      if (v3 == v10)
      {
        a2[4] = v6;
        (*(*v3 + 24))(v3);
      }

      else
      {
        a2[4] = (*(*v3 + 16))(v3, v6);
      }

      if (v11 == v10)
      {
        (*(*v11 + 32))(v11);
      }

      else if (v11)
      {
        (*(*v11 + 40))();
      }
    }

    else
    {
      a2[4] = 0;
    }
  }

  else
  {
    v4 = v12;
    v12 = 0;
    *a2 = v4;
    a2[4] = 0;
  }

  v7 = v12;
  result = v14;
  v12 = 0;
  if (v7)
  {
    v10[0] = v7;
    if (!v14)
    {
      v9 = std::__throw_bad_function_call[abi:nn200100]();
      return swift::remote::MemoryReader::readObj<swift::reflection::ChildTaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(v9);
    }

    (*(*v14 + 48))();
    result = v14;
  }

  if (result == v13)
  {
    return (*(*result + 32))(result);
  }

  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

_BYTE *swift::remote::MemoryReader::readObj<swift::reflection::ChildTaskStatusRecord<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 24))(&v12);
  if (v14)
  {
    if (v14 == v13)
    {
      v11 = v10;
      (*(*v14 + 24))();
      v3 = v11;
    }

    else
    {
      v3 = (*(*v14 + 16))();
      v11 = v3;
    }

    v5 = v12;
    v12 = 0;
    *a2 = v5;
    v6 = a2 + 1;
    if (v3)
    {
      if (v3 == v10)
      {
        a2[4] = v6;
        (*(*v3 + 24))(v3);
      }

      else
      {
        a2[4] = (*(*v3 + 16))(v3, v6);
      }

      if (v11 == v10)
      {
        (*(*v11 + 32))(v11);
      }

      else if (v11)
      {
        (*(*v11 + 40))();
      }
    }

    else
    {
      a2[4] = 0;
    }
  }

  else
  {
    v4 = v12;
    v12 = 0;
    *a2 = v4;
    a2[4] = 0;
  }

  v7 = v12;
  result = v14;
  v12 = 0;
  if (v7)
  {
    v10[0] = v7;
    if (!v14)
    {
      v9 = std::__throw_bad_function_call[abi:nn200100]();
      return std::pair<std::optional<std::string>,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo>::pair[abi:nn200100]<std::string,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo&,0>(v9);
    }

    (*(*v14 + 48))();
    result = v14;
  }

  if (result == v13)
  {
    return (*(*result + 32))(result);
  }

  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t std::pair<std::optional<std::string>,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo>::pair[abi:nn200100]<std::string,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo&,0>(uint64_t result, __int128 *a2, __int128 *a3)
{
  v3 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(result + 24) = 1;
  v4 = *a3;
  v5 = a3[1];
  v6 = a3[3];
  *(result + 64) = a3[2];
  *(result + 80) = v6;
  *(result + 32) = v4;
  *(result + 48) = v5;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  v8 = *(a3 + 8);
  v7 = *(a3 + 9);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_8;
  }

  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  v10 = *(a3 + 11);
  v9 = *(a3 + 12);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_8:
    std::string::__throw_length_error[abi:nn200100]();
  }

  *(result + 144) = *(a3 + 14);
  return result;
}

uint64_t std::pair<std::optional<std::string>,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo>::pair[abi:nn200100]<std::nullopt_t const&,swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::AsyncTaskInfo&,0>(uint64_t result, uint64_t a2, __int128 *a3)
{
  *result = 0;
  *(result + 24) = 0;
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(result + 64) = a3[2];
  *(result + 80) = v5;
  *(result + 32) = v3;
  *(result + 48) = v4;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  v7 = *(a3 + 8);
  v6 = *(a3 + 9);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_8;
  }

  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  v9 = *(a3 + 11);
  v8 = *(a3 + 12);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_8:
    std::string::__throw_length_error[abi:nn200100]();
  }

  *(result + 144) = *(a3 + 14);
  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_async_task_slab_allocations_return SwiftReflectionContext::withContext<swift_async_task_slab_allocations_return,swift_reflection_asyncTaskSlabAllocations::$_0>(swift_reflection_asyncTaskSlabAllocations::$_0 const&)::{lambda(swift_async_task_slab_allocations_return&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  v5 = *a2;
  v6 = **v4;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskSlabAllocations(v5, &__p);
  v7 = v22;
  v8 = v23;
  v9 = SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(*v4[1]);
  v10 = v9;
  if (v9[2] - *v9 < (v25 - v24))
  {
    if (((v25 - v24) & 0x8000000000000000) == 0)
    {
      v11 = v9[1] - *v9;
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = v24;
  v13 = v25;
  if (v24 != v25)
  {
    do
    {
      *&v18 = *v12;
      v15 = *(v12 + 3);
      DWORD2(v18) = *(v12 + 2);
      if ((v15 - 1) <= 5)
      {
        v14 = dword_DA8B0[v15 - 1];
      }

      else
      {
        v14 = 0;
      }

      HIDWORD(v18) = v14;
      std::vector<swift_async_task_allocation_chunk>::push_back[abi:nn200100](v10, &v18);
      v12 += 16;
    }

    while (v12 != v13);
    v12 = v24;
  }

  v16 = *v10;
  v17 = (v10[1] - *v10) >> 4;
  *a3 = 0;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 20) = v17;
  *(a3 + 24) = v16;
  if (v12)
  {
    v25 = v12;
    operator delete(v12);
  }

  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_async_task_slab_allocations_return SwiftReflectionContext::withContext<swift_async_task_slab_allocations_return,swift_reflection_asyncTaskSlabAllocations::$_0>(swift_reflection_asyncTaskSlabAllocations::$_0 const&)::{lambda(swift_async_task_slab_allocations_return&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  v5 = *a2;
  v6 = **v4;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskSlabAllocations(v5, &__p);
  v7 = v22;
  v8 = v23;
  v9 = SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(*v4[1]);
  v10 = v9;
  if (v9[2] - *v9 < (v25 - v24))
  {
    if (((v25 - v24) & 0x8000000000000000) == 0)
    {
      v11 = v9[1] - *v9;
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = v24;
  v13 = v25;
  if (v24 != v25)
  {
    do
    {
      *&v18 = *v12;
      v15 = *(v12 + 3);
      DWORD2(v18) = *(v12 + 2);
      if ((v15 - 1) <= 5)
      {
        v14 = dword_DA8B0[v15 - 1];
      }

      else
      {
        v14 = 0;
      }

      HIDWORD(v18) = v14;
      std::vector<swift_async_task_allocation_chunk>::push_back[abi:nn200100](v10, &v18);
      v12 += 16;
    }

    while (v12 != v13);
    v12 = v24;
  }

  v16 = *v10;
  v17 = (v10[1] - *v10) >> 4;
  *a3 = 0;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 20) = v17;
  *(a3 + 24) = v16;
  if (v12)
  {
    v25 = v12;
    operator delete(v12);
  }

  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskSlabAllocations@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 2800) + 24))(&v7);
  if (v7)
  {
    v3 = *(v7 + 20);
    v4 = *(v7 + 16) + 32;
    v5 = *(v7 + 8);
    operator new();
  }

  strcpy(a2, "failure reading slab");
  *(a2 + 23) = 276;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  result = v9;
  if (v9 == &v8)
  {
    return (*(*v9 + 32))(v9);
  }

  if (v9)
  {
    return (*(*v9 + 40))(v9);
  }

  return result;
}

uint64_t SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    (*(*v1 + 48))(v1);
    operator new();
  }

  v2 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<swift_async_task_allocation_chunk>::push_back[abi:nn200100](v2);
}

void std::vector<swift_async_task_allocation_chunk>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t std::__function::__func<std::vector<swift_async_task_allocation_chunk> * SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(void)::{lambda(void)#1},std::allocator<std::vector<swift_async_task_allocation_chunk> * SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E12B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::vector<swift_async_task_allocation_chunk> * SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(void)::{lambda(void)#1},std::allocator<std::vector<swift_async_task_allocation_chunk> * SwiftReflectionContext::allocateTemporaryObject<std::vector<swift_async_task_allocation_chunk>>(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_async_task_info SwiftReflectionContext::withContext<swift_async_task_info,swift_reflection_asyncTaskInfo::$_0>(swift_reflection_asyncTaskInfo::$_0 const&)::{lambda(swift_async_task_info&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  v5 = *a2;
  v6 = **v4;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::loadTargetPointers(*a2);
  if (*(v5 + 2968) == 1)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, 1000000, 1000, &v16);
  }

  else
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, 1000000, 1000, &v16);
  }

  if (v17 != 1)
  {
    v8 = SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(*v4[1]);
    v9 = v18;
    v10 = v19;
    if (v18 != v19)
    {
      do
      {
        std::vector<unsigned long long>::push_back[abi:nn200100](v8, v9++);
      }

      while (v9 != v10);
    }

    v11 = (v8[1] - *v8) >> 3;
    v12 = *v4[1];
    SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>();
  }

  v7 = *v4[1];
  __str.__r_.__value_.__s.__data_[0] = 0;
  v15 = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v16;
  }

  v15 = 1;
  v13 = SwiftReflectionContext::allocateTemporaryObject<std::string>(v7);
  std::string::operator=(v13, &__str);
  if (*(v13 + 23) < 0)
  {
    v13 = *v13;
  }

  if (v15 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *a3 = v13;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v17 == 1 && SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_async_task_info SwiftReflectionContext::withContext<swift_async_task_info,swift_reflection_asyncTaskInfo::$_0>(swift_reflection_asyncTaskInfo::$_0 const&)::{lambda(swift_async_task_info&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  v5 = *a2;
  v6 = **v4;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::loadTargetPointers(*a2);
  if (*(v5 + 2968) == 1)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, 1000000, 1000, &v16);
  }

  else
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::asyncTaskInfo<swift::reflection::AsyncTask<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveTaskStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, 1000000, 1000, &v16);
  }

  if (v17 != 1)
  {
    v8 = SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(*v4[1]);
    v9 = v18;
    v10 = v19;
    if (v18 != v19)
    {
      do
      {
        std::vector<unsigned long long>::push_back[abi:nn200100](v8, v9++);
      }

      while (v9 != v10);
    }

    v11 = (v8[1] - *v8) >> 3;
    v12 = *v4[1];
    SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>();
  }

  v7 = *v4[1];
  __str.__r_.__value_.__s.__data_[0] = 0;
  v15 = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v16;
  }

  v15 = 1;
  v13 = SwiftReflectionContext::allocateTemporaryObject<std::string>(v7);
  std::string::operator=(v13, &__str);
  if (*(v13 + 23) < 0)
  {
    v13 = *v13;
  }

  if (v15 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *a3 = v13;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0;
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v17 == 1 && SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

uint64_t SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    (*(*v1 + 48))(v1);
    operator new();
  }

  v2 = std::__throw_bad_function_call[abi:nn200100]();
  return SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(v2);
}

uint64_t std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E1310;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

void std::function<void ()(void)>::operator=<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},void>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[4];
  if (v2)
  {
    if (v2 == a2 + 1)
    {
      v5 = v4;
      (*(*v2 + 24))(v2, v4);
    }

    else
    {
      v5 = a2[4];
      a2[4] = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  operator new();
}

void *std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = off_E1358;
  v2 = a1 + 2;
  v3 = a1[5];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = off_E1358;
  v1 = a1 + 2;
  v2 = a1[5];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  operator delete();
}

uint64_t std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  *a2 = off_E1358;
  a2[1] = v3;
  v4 = *(result + 40);
  if (v4)
  {
    if (v4 == result + 16)
    {
      a2[5] = a2 + 2;
      v5 = *(**(result + 40) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 40));
      a2[5] = result;
    }
  }

  else
  {
    a2[5] = 0;
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = a1 + 16;
  result = *(a1 + 40);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(char *__p)
{
  v2 = __p + 16;
  v3 = *(__p + 5);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1},std::allocator<std::vector<unsigned long long> * SwiftReflectionContext::allocateSubsequentTemporaryObject<std::vector<unsigned long long>>(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(*v3 + 48);

    return v4();
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_actor_info SwiftReflectionContext::withContext<swift_actor_info,swift_reflection_actorInfo::$_0>(swift_reflection_actorInfo::$_0 const&)::{lambda(swift_actor_info&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v6);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_actor_info SwiftReflectionContext::withContext<swift_actor_info,swift_reflection_actorInfo::$_0>(swift_reflection_actorInfo::$_0 const&)::{lambda(swift_actor_info&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  v5 = *a2;
  v6 = **v4;
  if (*(v5 + 2968) == 1)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, &v17);
  }

  else
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, &v17);
  }

  v8 = *v4[1];
  __p.__r_.__value_.__s.__data_[0] = 0;
  v16 = 0;
  if (v18 == 1)
  {
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v17;
    }

    v16 = 1;
    v9 = SwiftReflectionContext::allocateTemporaryObject<std::string>(v8);
    std::string::operator=(v9, &__p);
    if (*(v9 + 23) < 0)
    {
      v9 = *v9;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v16 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = v19;
  v11 = v21;
  v12 = v22;
  *a3 = v9;
  v7.i32[0] = v20;
  v13 = vmovl_u8(v7).u64[0];
  v14 = vuzp1_s16(v13, vrev32_s16(v13));
  *(a3 + 8) = vuzp1_s8(v14, v14).u32[0];
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 25) = 0;
  *(a3 + 27) = 0;
  *(a3 + 28) = v12;
  if (v18 == 1 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_actor_info SwiftReflectionContext::withContext<swift_actor_info,swift_reflection_actorInfo::$_0>(swift_reflection_actorInfo::$_0 const&)::{lambda(swift_actor_info&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  v5 = *a2;
  v6 = **v4;
  if (*(v5 + 2968) == 1)
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, &v17);
  }

  else
  {
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v5, &v17);
  }

  v8 = *v4[1];
  __p.__r_.__value_.__s.__data_[0] = 0;
  v16 = 0;
  if (v18 == 1)
  {
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v17;
    }

    v16 = 1;
    v9 = SwiftReflectionContext::allocateTemporaryObject<std::string>(v8);
    std::string::operator=(v9, &__p);
    if (*(v9 + 23) < 0)
    {
      v9 = *v9;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v16 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = v19;
  v11 = v21;
  v12 = v22;
  *a3 = v9;
  v7.i32[0] = v20;
  v13 = vmovl_u8(v7).u64[0];
  v14 = vuzp1_s16(v13, vrev32_s16(v13));
  *(a3 + 8) = vuzp1_s8(v14, v14).u32[0];
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 25) = 0;
  *(a3 + 27) = 0;
  *(a3 + 28) = v12;
  if (v18 == 1 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift::remote::MemoryReader::readObj<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(*(a1 + 2800), &v14);
  v3 = v14;
  if (v14)
  {
    v4 = *(v14 + 32);
    v5 = (v4 >> 4) & 1;
    v6 = *(v14 + 16);
    v7 = v4 & 7;
    if ((v4 & 7) != 0)
    {
      v8 = *(v14 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v14 + 36);
    v10 = v4 >> 8;
    *a2 = 0;
    if (v9 >= 4)
    {
      v11 = v9 | 3;
    }

    else
    {
      v11 = 0;
    }

    *(a2 + 24) = 0;
    *(a2 + 32) = v8;
    *(a2 + 40) = v7;
    *(a2 + 41) = v5;
    *(a2 + 42) = v6;
    *(a2 + 43) = v10;
    *(a2 + 44) = 1;
    *(a2 + 45) = 0;
    *(a2 + 47) = 0;
    *(a2 + 48) = v11;
    *(a2 + 52) = 0;
    v14 = 0;
    v17 = v3;
    if (!v16)
    {
      v13 = std::__throw_bad_function_call[abi:nn200100]();
      return swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v13);
    }

    (*(*v16 + 48))(v16, &v17);
  }

  else
  {
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    strcpy(a2, "failure reading actor");
    *(a2 + 22) = 0;
    *(a2 + 23) = 277;
  }

  result = v16;
  if (v16 == &v15)
  {
    return (*(*v16 + 32))(v16);
  }

  if (v16)
  {
    return (*(*v16 + 40))(v16);
  }

  return result;
}

uint64_t *swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::actorInfo<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithoutEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift::remote::MemoryReader::readObj<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(*(a1 + 2800), &v10);
  v3 = v10;
  if (v10)
  {
    v4 = *(v10 + 32);
    v5 = *(v10 + 16);
    if ((v4 & 7) != 0)
    {
      v6 = *(v10 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v6 = 0;
    }

    *a2 = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v6;
    *(a2 + 40) = v4 & 7;
    *(a2 + 41) = (v4 & 0x10) != 0;
    *(a2 + 42) = v5;
    *(a2 + 43) = BYTE1(v4);
    *(a2 + 44) = 0;
    *(a2 + 52) = 0;
    v10 = 0;
    v13 = v3;
    if (!v12)
    {
      v8 = std::__throw_bad_function_call[abi:nn200100]();
      return swift::remote::MemoryReader::readObj<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>(v8, v9);
    }

    (*(*v12 + 48))(v12, &v13);
  }

  else
  {
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    strcpy(a2, "failure reading actor");
    *(a2 + 22) = 0;
    *(a2 + 23) = 277;
  }

  result = v12;
  if (v12 == &v11)
  {
    return (*(*v12 + 32))(v12);
  }

  if (v12)
  {
    return (*(*v12 + 40))(v12);
  }

  return result;
}

_BYTE *swift::remote::MemoryReader::readObj<swift::reflection::DefaultActorImpl<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::ActiveActorStatusWithEscalation<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 24))(&v12);
  if (v14)
  {
    if (v14 == v13)
    {
      v11 = v10;
      (*(*v14 + 24))();
      v3 = v11;
    }

    else
    {
      v3 = (*(*v14 + 16))();
      v11 = v3;
    }

    v5 = v12;
    v12 = 0;
    *a2 = v5;
    v6 = a2 + 1;
    if (v3)
    {
      if (v3 == v10)
      {
        a2[4] = v6;
        (*(*v3 + 24))(v3);
      }

      else
      {
        a2[4] = (*(*v3 + 16))(v3, v6);
      }

      if (v11 == v10)
      {
        (*(*v11 + 32))(v11);
      }

      else if (v11)
      {
        (*(*v11 + 40))();
      }
    }

    else
    {
      a2[4] = 0;
    }
  }

  else
  {
    v4 = v12;
    v12 = 0;
    *a2 = v4;
    a2[4] = 0;
  }

  v7 = v12;
  result = v14;
  v12 = 0;
  if (v7)
  {
    v10[0] = v7;
    if (!v14)
    {
      v9 = std::__throw_bad_function_call[abi:nn200100]();
      return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_nextJob::$_0>(swift_reflection_nextJob::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v9);
    }

    (*(*v14 + 48))();
    result = v14;
  }

  if (result == v13)
  {
    return (*(*result + 32))(result);
  }

  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_nextJob::$_0>(swift_reflection_nextJob::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = ****a1;
  (*(**(v2 + 2800) + 24))(&v9);
  v4 = v9;
  if (v9)
  {
    v5 = *(v9 + 16);
    v9 = 0;
    v12 = v4;
    if (!v11)
    {
      v8 = std::__throw_bad_function_call[abi:nn200100]();
      return std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_nextJob::$_0>(swift_reflection_nextJob::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v8);
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    (*(*v11 + 48))(v11, &v12);
  }

  else
  {
    v6 = 0;
  }

  if (v11 == &v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  return v6;
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_nextJob::$_0>(swift_reflection_nextJob::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = ****a1;
  (*(**(v2 + 2800) + 24))(&v6);
  v4 = v6;
  if (v6)
  {
    v5 = *(v6 + 16);
    v6 = 0;
    v9 = v4;
    if (!v8)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      OUTLINED_FUNCTION_0();
      return;
    }

    (*(*v8 + 48))(v8, &v9);
  }

  if (v8 == &v7)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }
}

void swift::Demangle::__runtime::Context::Context(swift::Demangle::__runtime::Context *this)
{
  operator new();
}

{
  operator new();
}

void swift::Demangle::__runtime::Context::~Context(swift::Demangle::__runtime::Context *this)
{
  if (*this)
  {
    (*(**this + 8))(*this);
  }
}

{
  if (*this)
  {
    (*(**this + 8))(*this);
  }
}

unsigned int *swift::Demangle::__runtime::Context::demangleSymbolAsNode(swift::Demangle::__runtime::NodeFactory **a1, _WORD *a2, unint64_t a3)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v7 = *a1;
  if (ManglingPrefixLength)
  {
    v11 = 0;
    v8 = swift::Demangle::__runtime::Demangler::demangleSymbol(v7, a2, a3, v10);
    if (v11 == v10)
    {
      (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      (*(*v11 + 40))();
    }

    return v8;
  }

  else
  {

    return swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v7);
  }
}

uint64_t swift::Demangle::__runtime::Context::demangleTypeAsNode(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v7 = 0;
  v4 = swift::Demangle::__runtime::Demangler::demangleType(v3, a2, a3, v6);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return v4;
}

void swift::Demangle::__runtime::Context::demangleSymbolAsString(swift::Demangle::__runtime::NodeFactory **a1@<X0>, _WORD *a2@<X1>, unint64_t a3@<X2>, swift::Demangle::__runtime::Node *a4@<X3>, uint64_t a5@<X8>)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v11 = *a1;
  if (!ManglingPrefixLength)
  {
    v12 = swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v11);
    goto LABEL_7;
  }

  v20 = 0;
  v12 = swift::Demangle::__runtime::Demangler::demangleSymbol(v11, a2, a3, __p);
  if (v20 == __p)
  {
    v17 = v12;
    (*(*v20 + 4))(v20);
    v12 = v17;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!v20)
  {
LABEL_7:
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v14 = v12;
  (*(*v20 + 5))(v20);
  v12 = v14;
  if (!v14)
  {
LABEL_13:
    if (!a2)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      return;
    }

    if (a3 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (a3 >= 0x17)
      {
        operator new();
      }

      *(a5 + 23) = a3;
      if (a3)
      {
        memmove(a5, a2, a3);
      }

      *(a5 + a3) = 0;
      return;
    }

LABEL_34:
    std::string::__throw_length_error[abi:nn200100]();
  }

LABEL_8:
  swift::Demangle::__runtime::nodeToString(v12, a4, v13, __p);
  v15 = HIBYTE(v19);
  v16 = HIBYTE(v19);
  if (v19 < 0)
  {
    v15 = __p[1];
  }

  if (v15)
  {
    *a5 = *__p;
    *(a5 + 16) = v19;
    return;
  }

  if (!a2)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    if ((v16 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_34;
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a5 + 23) = a3;
  if (a3)
  {
    memmove(a5, a2, a3);
  }

  *(a5 + a3) = 0;
  if (v19 < 0)
  {
LABEL_32:
    operator delete(__p[0]);
  }
}

uint64_t swift::Demangle::__runtime::Context::demangleSymbolAsString(swift::Demangle::__runtime::NodeFactory **a1, _WORD *a2, unint64_t a3, swift::Demangle::__runtime::Node *a4)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v9 = *a1;
  if (ManglingPrefixLength)
  {
    v15 = 0;
    v10 = swift::Demangle::__runtime::Demangler::demangleSymbol(v9, a2, a3, v14);
    if (v15 == v14)
    {
      v12 = v10;
      (*(*v15 + 32))(v15);
      goto LABEL_7;
    }

    if (v15)
    {
      v12 = v10;
      (*(*v15 + 40))(v15);
LABEL_7:
      v10 = v12;
    }
  }

  else
  {
    v10 = swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v9);
  }

  return swift::Demangle::__runtime::nodeToString(v10, a4, v11);
}

void swift::Demangle::__runtime::Context::demangleTypeAsString(uint64_t *a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, swift::Demangle::__runtime::Node *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v16 = 0;
  v11 = swift::Demangle::__runtime::Demangler::demangleType(v9, a2, a3, __p);
  if (v16 == __p)
  {
    (*(*v16 + 4))(v16);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (!a2)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      return;
    }

    if (a3 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (a3 >= 0x17)
      {
        operator new();
      }

      *(a5 + 23) = a3;
      if (a3)
      {
        memmove(a5, a2, a3);
      }

      *(a5 + a3) = 0;
      return;
    }

LABEL_31:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v16)
  {
    (*(*v16 + 5))();
  }

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_5:
  swift::Demangle::__runtime::nodeToString(v11, a4, v10, __p);
  v12 = HIBYTE(v15);
  v13 = HIBYTE(v15);
  if (v15 < 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    *a5 = *__p;
    *(a5 + 16) = v15;
    return;
  }

  if (!a2)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    if ((v13 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_31;
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a5 + 23) = a3;
  if (a3)
  {
    memmove(a5, a2, a3);
  }

  *(a5 + a3) = 0;
  if (v15 < 0)
  {
LABEL_29:
    operator delete(__p[0]);
  }
}

BOOL swift::Demangle::__runtime::Context::isThunkSymbol(uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  if (!swift::Demangle::__runtime::getManglingPrefixLength(a2, a3))
  {
    v10 = v3 - 2;
    if (v3 < 2 || *a2 != 21599 || v10 < 2)
    {
      return 0;
    }

    if (*(a2 + 1) != 28500 && *(a2 + 1) != 20308)
    {
      if (v3 == 4)
      {
        return 0;
      }

      v11 = *(a2 + 1) == 16720 && a2[4] == 95;
      if (!v11 && (v10 < 4 || *(a2 + 2) != 1601126736))
      {
        return 0;
      }
    }

    return 1;
  }

  if (a2[v3 - 1] - 48 > 9)
  {
    goto LABEL_10;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = memchr(a2, 46, v3);
  if (v6)
  {
    v7 = v3 >= v6 - a2 ? v6 - a2 : v3;
    if (v6 - a2 != -1)
    {
      v3 = v7;
LABEL_10:
      if (!v3)
      {
        return 0;
      }

      if (a2[v3 - 1] == 95)
      {
        if (v3 == 1)
        {
          return 0;
        }

        v8 = 0;
        v9 = a2;
        while (v9[v3 - 2] - 48 <= 9)
        {
          ++v8;
          --v9;
          if (v3 - 1 == v8)
          {
            goto LABEL_34;
          }
        }

        if (~v8 + v3 >= 2 && (*&v9[v3 - 3] == 20820 || *&v9[v3 - 3] == 22868))
        {
          v3 = v3 - v8 - 3;
        }
      }
    }
  }

LABEL_34:
  if (v3 < 2)
  {
    return 0;
  }

  v12 = &a2[v3];
  if (*&a2[v3 - 2] != 16724 && *(v12 - 1) != 24916 && *(v12 - 1) != 28500 && *(v12 - 1) != 20308 && *(v12 - 1) != 21076 && *(v12 - 1) != 29268 && *(v12 - 1) != 22356 && *(v12 - 1) != 17254)
  {
    return 0;
  }

  v13 = *a1;
  v21 = 0;
  v14 = swift::Demangle::__runtime::Demangler::demangleSymbol(v13, a2, v3, v20);
  if (v21 == v20)
  {
    (*(*v21 + 32))(v21);
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v21)
    {
      (*(*v21 + 40))();
    }

    if (!v14)
    {
      return 0;
    }
  }

  if (*(v14 + 16) == 101)
  {
    v15 = *(v14 + 18);
    if ((v15 - 1) < 2)
    {
      goto LABEL_54;
    }

    if (v15 == 5 && *(v14 + 8))
    {
      v14 = *v14;
LABEL_54:
      v16 = *(*v14 + 16);
      return (v16 - 170) <= 0x29 && ((1 << (v16 + 86)) & 0x31000000C11) != 0 || v16 == 0;
    }
  }

  return 0;
}

void swift::Demangle::__runtime::Context::getThunkTarget(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a3;
  v37[0] = a2;
  if (!swift::Demangle::__runtime::Context::isThunkSymbol(a1, a2, a3))
  {
    goto LABEL_75;
  }

  if (!swift::Demangle::__runtime::getManglingPrefixLength(a2, v4))
  {
    if (v4 >= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v4;
    }

    v12 = (a2 + v11);
    v13 = &v4[-v11];
    v14 = v13 - 3;
    if (v13 >= 3)
    {
      if (*v12 == 16720 && v12[2] == 95)
      {
        if (v14 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v14 >= 0x17)
          {
            operator new();
          }

          *(a4 + 23) = v14;
          if (v13 != 3)
          {
            memmove(a4, v12 + 3, v14);
          }

          *(a4 + v14) = 0;
          return;
        }

        goto LABEL_87;
      }

      if (v13 != 3 && *v12 == 1601126736)
      {
        v32 = v13 - 4;
        if (v13 - 4 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v32 >= 0x17)
          {
            operator new();
          }

          *(a4 + 23) = v32;
          if (v13 != 4)
          {
            memmove(a4, v12 + 4, v32);
          }

          *(a4 + v32) = 0;
          return;
        }

        goto LABEL_87;
      }
    }

    *(&v36.__r_.__value_.__s + 23) = 2;
    strcpy(&v36, "_T");
    if (v13 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v13;
    }

    if (!a2)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      __p = 0;
      v34 = 0;
      v35 = 0;
LABEL_43:
      if ((v22 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v21;
      }

      if ((v22 & 0x80u) == 0)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      v25 = std::string::append(&v36, p_p, v24);
      v26 = v25->__r_.__value_.__r.__words[2];
      *a4 = *&v25->__r_.__value_.__l.__data_;
      *(a4 + 2) = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      return;
    }

    v17 = v13 - v16;
    if (v13 - v16 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v17 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v35) = v13 - v16;
      if (v13 >= 3)
      {
        memmove(&__p, &v12[v16], v17);
      }

      *(&__p + v17) = 0;
      v22 = HIBYTE(v35);
      v21 = __p;
      v20 = v34;
      goto LABEL_43;
    }

LABEL_87:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = v4[a2 - 1];
  if ((v7 - 48) <= 9 && v4)
  {
    v8 = memchr(a2, 46, v4);
    if (!v8)
    {
      goto LABEL_61;
    }

    if (v4 >= &v8[-a2])
    {
      v9 = &v8[-a2];
    }

    else
    {
      v9 = v4;
    }

    if (&v8[-a2] == -1)
    {
      v10 = v4;
    }

    else
    {
      v10 = v9;
    }

    if (v10 != v4)
    {
      goto LABEL_75;
    }
  }

  if (!v4)
  {
    goto LABEL_62;
  }

  if (v7 != 95)
  {
    goto LABEL_61;
  }

  if (v4 == &dword_0 + 1)
  {
LABEL_62:
    v27 = (v4 - 2);
    if (v4 < v4 - 2)
    {
      v27 = v4;
    }

    v36.__r_.__value_.__r.__words[0] = a2;
    v36.__r_.__value_.__l.__size_ = v27;
    __swift::__runtime::llvm::StringRef::str(&v36.__r_.__value_.__l.__data_, a4);
    return;
  }

  v18 = 0;
  v19 = a2;
  while (v4[v19 - 2] - 48 <= 9)
  {
    ++v18;
    --v19;
    if (v4 - 1 == v18)
    {
      goto LABEL_61;
    }
  }

  if (&v4[~v18] >= 2 && (*&v4[v19 - 3] == 20820 || *&v4[v19 - 3] == 22868))
  {
    v4 = (v4 - v18 - 3);
  }

LABEL_61:
  v37[1] = v4;
  if (v4 < 2)
  {
    goto LABEL_62;
  }

  v28 = &v4[a2];
  if (*&v4[a2 - 2] == 21076 || *(v28 - 1) == 29268 || *(v28 - 1) == 22356)
  {
LABEL_75:
    *a4 = 0;
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    return;
  }

  if (*(v28 - 1) != 17254)
  {
    goto LABEL_62;
  }

  __swift::__runtime::llvm::StringRef::str(v37, a4);
  v29 = *(a4 + 23);
  v30 = (v29 & 0x80u) != 0;
  if ((v29 & 0x80u) != 0)
  {
    v29 = *(a4 + 1);
  }

  if (v30)
  {
    v31 = *a4;
  }

  else
  {
    v31 = a4;
  }

  *(v31 + v29 - 1) = 99;
}

uint64_t swift::Demangle::__runtime::Context::hasSwiftCallingConvention(swift::Demangle::__runtime::NodeFactory **a1, _WORD *a2, unint64_t a3)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v7 = *a1;
  if (ManglingPrefixLength)
  {
    v15 = 0;
    v8 = swift::Demangle::__runtime::Demangler::demangleSymbol(v7, a2, a3, v14);
    if (v15 == v14)
    {
      (*(*v15 + 32))(v15);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (v15)
    {
      (*(*v15 + 40))();
      if (!v8)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v8 = swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v7);
  }

  if (!v8)
  {
    return 0;
  }

LABEL_8:
  if (*(v8 + 16) != 101)
  {
    return 0;
  }

  v9 = *(v8 + 18);
  if ((v9 - 1) >= 2)
  {
    if (v9 != 5 || !*(v8 + 8))
    {
      return 0;
    }

    v8 = *v8;
  }

  result = 0;
  v11 = *(*v8 + 16);
  if (v11 <= 0x8F)
  {
    v13 = v11 > 0xA || ((1 << v11) & 0x640) == 0;
    if (v13 && v11 != 91)
    {
      return 1;
    }
  }

  else
  {
    v12 = v11 - 208 > 0x38 || ((1 << (v11 + 48)) & 0x100020000000001) == 0;
    if (v12 && v11 != 144 && v11 != 174)
    {
      return 1;
    }
  }

  return result;
}

uint64_t swift::Demangle::__runtime::Context::getModuleName@<X0>(swift::Demangle::__runtime::Node **a1@<X0>, _WORD *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  v9 = *a1;
  if (!ManglingPrefixLength)
  {
    result = swift::Demangle::__runtime::demangleOldSymbolAsNode(a2, a3, v9);
    v11 = result;
    goto LABEL_7;
  }

  v23 = 0;
  v11 = swift::Demangle::__runtime::Demangler::demangleSymbol(v9, a2, a3, v22);
  result = v23;
  if (v23 != v22)
  {
    if (v23)
    {
      result = (*(*v23 + 40))();
      if (v11)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

LABEL_7:
    if (v11)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  result = (*(*v23 + 32))(v23);
  if (!v11)
  {
LABEL_8:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  while (1)
  {
LABEL_15:
    v16 = (v11 + 16);
    v15 = *(v11 + 16);
    if (v15 > 0xF2)
    {
      if (v15 == 243 || v15 == 247)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }

    if (v15 == 101)
    {
      v17 = *(v11 + 18);
      v18 = v11;
      if ((v17 - 1) >= 2)
      {
        if (v17 == 5)
        {
          v19 = *v11;
          v18 = *v11;
          goto LABEL_35;
        }

        v18 = 0;
      }

      if (v17 == 1)
      {
        v16 = (v11 + 8);
        goto LABEL_39;
      }

      if (v17 == 2)
      {
        goto LABEL_39;
      }

      if (v17 != 5)
      {
        v16 = 0;
LABEL_39:
        while (v18 != v16)
        {
          v11 = *v18;
          result = swift::Demangle::__runtime::isFunctionAttr(*(*v18 + 16));
          if ((result & 1) == 0)
          {
            goto LABEL_14;
          }

          ++v18;
        }

        goto LABEL_8;
      }

      v19 = *v11;
LABEL_35:
      v16 = (v19 + 8 * *(v11 + 8));
      goto LABEL_39;
    }

    if (v15 == 163)
    {
      break;
    }

LABEL_27:
    if (swift::Demangle::__runtime::isSpecialized(v11, v10))
    {
      result = swift::Demangle::__runtime::getUnspecialized(v11, *a1, v22);
      if (v22[0])
      {
        goto LABEL_8;
      }

      v11 = v23;
      goto LABEL_14;
    }

    v13 = *v16;
    result = swift::Demangle::__runtime::isContext();
    if (!result)
    {
      goto LABEL_8;
    }

LABEL_12:
    v14 = *(v11 + 18);
    if ((v14 - 1) >= 2)
    {
      if (v14 != 5 || !*(v11 + 8))
      {
        goto LABEL_8;
      }

      v11 = *v11;
    }

    v11 = *v11;
LABEL_14:
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v20 = *v11;
  if (!*v11)
  {
    goto LABEL_8;
  }

  v21 = *(v11 + 8);
  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = v21;
  if (v21)
  {
    result = memmove(a4, v20, v21);
  }

  *(a4 + v21) = 0;
  return result;
}

void swift::Demangle::__runtime::failAssert(swift::Demangle::__runtime *this, const char *a2, swift::Demangle::__runtime *a3, swift::Demangle::__runtime::Node *a4, const char *a5)
{
  NodeTreeAsString = swift::Demangle::__runtime::getNodeTreeAsString(a3, &v13);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v13;
  }

  else
  {
    v12 = v13.__r_.__value_.__r.__words[0];
  }

  swift::Demangle::__runtime::fatal(0, "%s:%u: assertion failed for Node %p: %s\n%s:%u: Node %p is:\n%s\n", v9, v10, NodeTreeAsString, this, a2, a3, a4, this, a2, a3, v12);
}

uint64_t swift::Demangle::__runtime::isFunctionAttr(int a1)
{
  v1 = a1 - 55;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 24:
    case 33:
    case 34:
    case 38:
    case 39:
    case 40:
    case 42:
    case 43:
    case 98:
    case 115:
    case 119:
    case 125:
    case 126:
    case 213:
    case 235:
    case 245:
    case 246:
    case 278:
    case 287:
    case 288:
    case 289:
    case 291:
    case 292:
    case 299:
    case 316:
    case 317:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

_BYTE *swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(_BYTE *this, const char *a2)
{
  if (this)
  {
    v2 = *this;
    if (*this)
    {
      v3 = this;
      do
      {
        if (v2 >= 0x18)
        {
          v4 = 8 * ((v2 & 0xF8) == 24);
        }

        else
        {
          v4 = 4;
        }

        v5 = &v3[v4];
        v6 = v5[1];
        v3 = v5 + 1;
        v2 = v6;
      }

      while (v6);
    }
  }

  return this;
}

uint64_t swift::Demangle::__runtime::getManglingPrefixLength(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 3)
  {
    if (a2 != 1 && (*a1 == 21284 || *a1 == 29476 || *a1 == 25892))
    {
      return 2;
    }

    return 0;
  }

  if (*a1 == 21599 && *(a1 + 2) == 48)
  {
    return 3;
  }

  if (*a1 != 21284)
  {
    if (*a1 == 9311 && *(a1 + 2) == 83)
    {
      return 3;
    }

    if (*a1 != 29476)
    {
      if (*a1 == 9311 && *(a1 + 2) == 115)
      {
        return 3;
      }

      if (*a1 != 25892)
      {
        if (*a1 != 9311 || *(a1 + 2) != 101)
        {
          if (a2 >= 0xE && *a1 == 0x74666977735F5F40 && *(a1 + 6) == 0x5F6F7263616D7466)
          {
            return 14;
          }

          return 0;
        }

        return 3;
      }
    }
  }

  return 2;
}

BOOL swift::Demangle::__runtime::isSwiftSymbol(swift::Demangle::__runtime *this, const char *a2)
{
  if (!this)
  {
    v3 = 0;
    return swift::Demangle::__runtime::getManglingPrefixLength(this, v3) != 0;
  }

  v2 = this;
  v3 = strlen(this);
  if (v3 < 2)
  {
    this = v2;
    return swift::Demangle::__runtime::getManglingPrefixLength(this, v3) != 0;
  }

  this = v2;
  if (*v2 != 21599)
  {
    return swift::Demangle::__runtime::getManglingPrefixLength(this, v3) != 0;
  }

  return 1;
}

BOOL swift::Demangle::__runtime::isObjCSymbol(uint64_t a1, unint64_t a2)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a1, a2);
  if (a2 < ManglingPrefixLength)
  {
    ManglingPrefixLength = a2;
  }

  if (a2 - ManglingPrefixLength < 2)
  {
    return 0;
  }

  if (*(ManglingPrefixLength + a1) == 28499)
  {
    return 1;
  }

  return *(ManglingPrefixLength + a1) == 17235;
}

unint64_t swift::Demangle::__runtime::dropSwiftManglingPrefix(uint64_t a1, unint64_t a2)
{
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a1, a2);
  if (a2 < ManglingPrefixLength)
  {
    ManglingPrefixLength = a2;
  }

  return ManglingPrefixLength + a1;
}

uint64_t swift::Demangle::__runtime::isAlias(uint64_t a1, uint64_t a2)
{
  v11[1] = 0;
  v11[2] = 0;
  v12 = 0;
  v13 = 2400;
  v14 = 0;
  v15 = 0;
  v50 = 0;
  v11[0] = off_E13E8;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v48 = 0;
  v10 = 0;
  v2 = swift::Demangle::__runtime::Demangler::demangleType(v11, a1, a2, v9);
  if (!v2)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    if (v3 != 243)
    {
      break;
    }

    v4 = *(v2 + 18);
    if ((v4 - 1) >= 2)
    {
      if (v4 != 5 || !*(v2 + 8))
      {
        goto LABEL_11;
      }

      v2 = *v2;
    }

    v2 = *v2;
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  if (v3 == 245)
  {
    v5 = 1;
  }

  else
  {
LABEL_11:
    v5 = 0;
  }

  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  v11[0] = off_E13E8;
  if (v50 == &v49)
  {
    (*(*v50 + 32))(v50);
  }

  else if (v50)
  {
    (*(*v50 + 40))();
  }

  v11[0] = off_E13C0;
  v6 = v12;
  if (v12)
  {
    do
    {
      v7 = *v6;
      free(v6);
      v6 = v7;
    }

    while (v7);
  }

  if (v14)
  {
    *(v14 + 48) = 0;
  }

  return v5;
}

uint64_t swift::Demangle::__runtime::Demangler::demangleType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  if (v7)
  {
    if (v7 == a4)
    {
      v22 = v21;
      (*(*v7 + 24))(v7, v21);
    }

    else
    {
      v22 = *(a4 + 24);
      *(a4 + 24) = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  swift::Demangle::__runtime::Demangler::DemangleInitRAII::DemangleInitRAII(v23, a1, a2, a3, v21);
  if (v22 == v21)
  {
    (*(*v22 + 32))(v22);
  }

  else if (v22)
  {
    (*(*v22 + 40))();
  }

  v12 = *(a1 + 64);
  while (1)
  {
    v13 = *(a1 + 72);
    if (v13 >= v12 || v13 >= *(a1 + 64) || !*(*(a1 + 56) + v13))
    {
      break;
    }

    v14 = swift::Demangle::__runtime::Demangler::demangleOperator(a1, v8, v9, v10, v11);
    if (!v14)
    {
      goto LABEL_21;
    }

    v24 = v14;
    swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back((a1 + 88), &v24, a1);
  }

  v15 = *(a1 + 96);
  if (!v15)
  {
LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  v16 = *(a1 + 88);
  v17 = *(v16 + 8 * (v15 - 1));
  *(a1 + 96) = v15 - 1;
  if (v15 != 1)
  {
    v18 = v15 - 2;
    v19 = *(v16 + 8 * v18);
    *(a1 + 96) = v18;
    if (v19)
    {
      v17 = 0;
    }
  }

LABEL_22:
  swift::Demangle::__runtime::Demangler::DemangleInitRAII::~DemangleInitRAII(v23);
  return v17;
}

uint64_t swift::Demangle::__runtime::isClass(uint64_t a1, uint64_t a2)
{
  v12[1] = 0;
  v12[2] = 0;
  v13 = 0;
  v14 = 2400;
  v15 = 0;
  v16 = 0;
  v51 = 0;
  v12[0] = off_E13E8;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v49 = 0;
  v11 = 0;
  v2 = swift::Demangle::__runtime::Demangler::demangleType(v12, a1, a2, v10);
  if (!v2)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    if (v3 != 243)
    {
      break;
    }

    v4 = *(v2 + 18);
    if ((v4 - 1) >= 2)
    {
      if (v4 != 5 || !*(v2 + 8))
      {
        goto LABEL_16;
      }

      v2 = *v2;
    }

    v2 = *v2;
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  if (v3 == 13 || v3 == 25)
  {
    v6 = 1;
  }

  else
  {
LABEL_16:
    v6 = 0;
  }

  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))();
  }

  v12[0] = off_E13E8;
  if (v51 == &v50)
  {
    (*(*v51 + 32))(v51);
  }

  else if (v51)
  {
    (*(*v51 + 40))();
  }

  v12[0] = off_E13C0;
  v7 = v13;
  if (v13)
  {
    do
    {
      v8 = *v7;
      free(v7);
      v7 = v8;
    }

    while (v8);
  }

  if (v15)
  {
    *(v15 + 48) = 0;
  }

  return v6;
}

uint64_t swift::Demangle::__runtime::isEnum(uint64_t a1, uint64_t a2)
{
  v11[1] = 0;
  v11[2] = 0;
  v12 = 0;
  v13 = 2400;
  v14 = 0;
  v15 = 0;
  v50 = 0;
  v11[0] = off_E13E8;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v48 = 0;
  v10 = 0;
  v2 = swift::Demangle::__runtime::Demangler::demangleType(v11, a1, a2, v9);
  if (!v2)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    if (v3 != 243)
    {
      break;
    }

    v4 = *(v2 + 18);
    if ((v4 - 1) >= 2)
    {
      if (v4 != 5 || !*(v2 + 8))
      {
        goto LABEL_12;
      }

      v2 = *v2;
    }

    v2 = *v2;
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  v5 = 1;
  if (v3 != 14 && v3 != 63)
  {
LABEL_12:
    v5 = 0;
  }

  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  v11[0] = off_E13E8;
  if (v50 == &v49)
  {
    (*(*v50 + 32))(v50);
  }

  else if (v50)
  {
    (*(*v50 + 40))();
  }

  v11[0] = off_E13C0;
  v6 = v12;
  if (v12)
  {
    do
    {
      v7 = *v6;
      free(v6);
      v6 = v7;
    }

    while (v7);
  }

  if (v14)
  {
    *(v14 + 48) = 0;
  }

  return v5;
}

uint64_t swift::Demangle::__runtime::isProtocol(uint64_t a1, unint64_t a2)
{
  v14[1] = 0;
  v14[2] = 0;
  v15 = 0;
  v16 = 2400;
  v17 = 0;
  v18 = 0;
  v53 = 0;
  v14[0] = off_E13E8;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v51 = 0;
  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a1, a2);
  if (a2 < ManglingPrefixLength)
  {
    ManglingPrefixLength = a2;
  }

  v13 = 0;
  v5 = swift::Demangle::__runtime::Demangler::demangleType(v14, ManglingPrefixLength + a1, a2 - ManglingPrefixLength, v12);
  if (!v5)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = *(v5 + 16);
    if (v6 != 243)
    {
      break;
    }

    v7 = *(v5 + 18);
    if ((v7 - 1) >= 2)
    {
      if (v7 != 5 || !*(v5 + 8))
      {
        goto LABEL_14;
      }

      v5 = *v5;
    }

    v5 = *v5;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  v8 = 1;
  if ((v6 - 190) >= 2 && v6 != 361)
  {
LABEL_14:
    v8 = 0;
  }

  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v14[0] = off_E13E8;
  if (v53 == &v52)
  {
    (*(*v53 + 32))(v53);
  }

  else if (v53)
  {
    (*(*v53 + 40))();
  }

  v14[0] = off_E13C0;
  v9 = v15;
  if (v15)
  {
    do
    {
      v10 = *v9;
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  if (v17)
  {
    *(v17 + 48) = 0;
  }

  return v8;
}

uint64_t swift::Demangle::__runtime::isStruct(uint64_t a1, uint64_t a2)
{
  v11[1] = 0;
  v11[2] = 0;
  v12 = 0;
  v13 = 2400;
  v14 = 0;
  v15 = 0;
  v50 = 0;
  v11[0] = off_E13E8;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v48 = 0;
  v10 = 0;
  v2 = swift::Demangle::__runtime::Demangler::demangleType(v11, a1, a2, v9);
  if (!v2)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    if (v3 != 243)
    {
      break;
    }

    v4 = *(v2 + 18);
    if ((v4 - 1) >= 2)
    {
      if (v4 != 5 || !*(v2 + 8))
      {
        goto LABEL_12;
      }

      v2 = *v2;
    }

    v2 = *v2;
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  v5 = 1;
  if (v3 != 15 && v3 != 230)
  {
LABEL_12:
    v5 = 0;
  }

  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  v11[0] = off_E13E8;
  if (v50 == &v49)
  {
    (*(*v50 + 32))(v50);
  }

  else if (v50)
  {
    (*(*v50 + 40))();
  }

  v11[0] = off_E13C0;
  v6 = v12;
  if (v12)
  {
    do
    {
      v7 = *v6;
      free(v6);
      v6 = v7;
    }

    while (v7);
  }

  if (v14)
  {
    *(v14 + 48) = 0;
  }

  return v5;
}

void *swift::Demangle::__runtime::mangledNameForTypeMetadataAccessor@<X0>(const void *a1@<X0>, size_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, __int16 a5@<W4>, std::string *a6@<X8>)
{
  v69 = 0;
  v70 = 0;
  v105 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
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
  v103 = 0;
  v64 = off_E13E8;
  v71 = 0;
  v68 = 4800;
  v9 = malloc_type_malloc(0x12C8uLL, 0x2004093837F09uLL);
  v67 = v9;
  *v9 = 0;
  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v12 + 24;
  *(v12 + 16) = 101;
  *(v12 + 18) = 0;
  __dst = (v12 + 24);
  v66 = (v9 + 601);
  if (v12 + 48 > (v9 + 601))
  {
    v14 = 2 * v68;
    if ((2 * v68) <= 0x20)
    {
      v14 = 32;
    }

    v68 = v14;
    v15 = v14 + 8;
    v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
    v17 = v16 + v15;
    *v16 = v67;
    v13 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v66 = v17;
    v67 = v16;
  }

  *(v13 + 16) = 249;
  *(v13 + 18) = 0;
  v18 = (v13 + 31) & 0xFFFFFFFFFFFFFFF8;
  __dst = v18;
  if (!v18 || v18 + 24 > v66)
  {
    v19 = 2 * v68;
    if ((2 * v68) <= 0x20)
    {
      v19 = 32;
    }

    v68 = v19;
    v20 = v19 + 8;
    v21 = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
    *v21 = v67;
    v18 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v66 = v21 + v20;
    v67 = v21;
  }

  v22 = (v18 + 24);
  __dst = (v18 + 24);
  *(v18 + 16) = 243;
  *(v18 + 18) = 0;
  if (a2)
  {
    v23 = &v22[a2];
    if (&v22[a2] > v66)
    {
      v24 = 2 * v68;
      if (2 * v68 <= a2 + 1)
      {
        v24 = a2 + 1;
      }

      v68 = v24;
      v25 = v24 + 8;
      v26 = malloc_type_malloc(v24 + 8, 0x2004093837F09uLL);
      v27 = &v26[v25];
      *v26 = v67;
      v22 = v26 + 8;
      v66 = v27;
      v67 = v26;
      v23 = &v26[a2 + 8];
    }

    __dst = v23;
    memmove(v22, a1, a2);
    v28 = v22;
    v22 = __dst;
  }

  else
  {
    v28 = 0;
  }

  v29 = ((v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  __dst = v29;
  if (!v29 || (v29 + 3) > v66)
  {
    v30 = 2 * v68;
    if ((2 * v68) <= 0x20)
    {
      v30 = 32;
    }

    v68 = v30;
    v31 = v30 + 8;
    v32 = malloc_type_malloc(v30 + 8, 0x2004093837F09uLL);
    v33 = v32 + v31;
    *v32 = v67;
    v29 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    v66 = v33;
    v67 = v32;
  }

  __dst = v29 + 3;
  *(v29 + 8) = 163;
  *(v29 + 18) = 3;
  *v29 = v28;
  v29[1] = a2;
  if (a4)
  {
    v34 = __dst;
    if (!__dst || (v35 = __dst + a4, __dst + a4 > v66))
    {
      v36 = 2 * v68;
      if (2 * v68 <= a4 + 1)
      {
        v36 = a4 + 1;
      }

      v68 = v36;
      v37 = v36 + 8;
      v38 = malloc_type_malloc(v36 + 8, 0x2004093837F09uLL);
      *v38 = v67;
      v34 = v38 + 1;
      v66 = v38 + v37;
      v67 = v38;
      v35 = v38 + a4 + 8;
    }

    __dst = v35;
    memmove(v34, a3, a4);
  }

  else
  {
    v34 = 0;
  }

  v39 = (__dst + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!v39 || v39 + 24 > v66)
  {
    v40 = 2 * v68;
    if ((2 * v68) <= 0x20)
    {
      v40 = 32;
    }

    v68 = v40;
    v41 = v40 + 8;
    v42 = malloc_type_malloc(v40 + 8, 0x2004093837F09uLL);
    v43 = v42 + v41;
    *v42 = v67;
    v39 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v66 = v43;
    v67 = v42;
  }

  __dst = (v39 + 24);
  *(v39 + 16) = 103;
  *(v39 + 18) = 3;
  *v39 = v34;
  *(v39 + 8) = a4;
  v44 = (__dst + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!v44 || v44 + 24 > v66)
  {
    v45 = 2 * v68;
    if ((2 * v68) <= 0x20)
    {
      v45 = 32;
    }

    v68 = v45;
    v46 = v45 + 8;
    v47 = malloc_type_malloc(v45 + 8, 0x2004093837F09uLL);
    v48 = v47 + v46;
    *v47 = v67;
    v44 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
    v66 = v48;
    v67 = v47;
  }

  __dst = (v44 + 24);
  *(v44 + 16) = a5;
  *(v44 + 18) = 0;
  swift::Demangle::__runtime::Node::addChild(v44, v29, &v64, v10, v11);
  swift::Demangle::__runtime::Node::addChild(v44, v39, &v64, v49, v50);
  swift::Demangle::__runtime::Node::addChild(v18, v44, &v64, v51, v52);
  swift::Demangle::__runtime::Node::addChild(v13, v18, &v64, v53, v54);
  swift::Demangle::__runtime::Node::addChild(v12, v13, &v64, v55, v56);
  swift::Demangle::__runtime::mangleNode();
  if (SHIBYTE(v63) < 0)
  {
    std::string::__init_copy_ctor_external(a6, __p, *(&__p + 1));
    operator delete(__p);
  }

  else
  {
    *&a6->__r_.__value_.__l.__data_ = __p;
    a6->__r_.__value_.__r.__words[2] = v63;
  }

  v64 = off_E13E8;
  if (v105 == &v104)
  {
    (*(*v105 + 32))(v105);
  }

  else if (v105)
  {
    (*(*v105 + 40))();
  }

  v64 = off_E13C0;
  result = v67;
  if (v67)
  {
    do
    {
      v58 = *result;
      free(result);
      result = v58;
    }

    while (v58);
  }

  if (v69)
  {
    *(v69 + 48) = 0;
  }

  return result;
}

unint64_t swift::Demangle::__runtime::NodeFactory::createNode(void *a1, __int16 a2)
{
  result = (a1[1] + 7) & 0xFFFFFFFFFFFFFFF8;
  a1[1] = result;
  if (!result || result + 24 > a1[2])
  {
    v5 = 2 * a1[4];
    if (v5 <= 0x20)
    {
      v5 = 32;
    }

    a1[4] = v5;
    v6 = v5 + 8;
    v7 = malloc_type_malloc(v5 + 8, 0x2004093837F09uLL);
    *v7 = a1[3];
    result = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
    a1[2] = v7 + v6;
    a1[3] = v7;
  }

  a1[1] = result + 24;
  *(result + 16) = a2;
  *(result + 18) = 0;
  return result;
}

unsigned int *swift::Demangle::__runtime::Node::addChild(unsigned int *this, swift::Demangle::__runtime::Node *a2, swift::Demangle::__runtime::NodeFactory *a3, uint64_t a4, const char *a5)
{
  if (!a2)
  {
    swift::Demangle::__runtime::failAssert("/Library/Caches/com.apple.xbs/Sources/swiftlang_SwiftRemoteMirror/swift/lib/Demangling/Demangler.cpp", &stru_158.segname[13], this, "Child", a5);
  }

  v5 = *(this + 18);
  if (v5 <= 1)
  {
    if (*(this + 18))
    {
      if (v5 == 1)
      {
        *(this + 1) = a2;
        *(this + 18) = 2;
      }
    }

    else
    {
      *this = a2;
      *(this + 1) = 0;
      *(this + 18) = 1;
    }

    return this;
  }

  if (v5 != 2)
  {
    if (v5 != 5)
    {
      return this;
    }

    v6 = this[2];
    v7 = this[3];
    v8 = *this;
    if (v6 < v7)
    {
      goto LABEL_38;
    }

    v9 = 8 * v7;
    v10 = *(a3 + 1);
    if (&v8[v7] == v10)
    {
      v11 = *(a3 + 2);
      if ((v10 + 8) <= v11)
      {
        *(a3 + 1) = v10 + 8;
        v8 = *this;
        LODWORD(v26) = 1;
LABEL_37:
        this[3] = v7 + v26;
        v6 = this[2];
LABEL_38:
        this[2] = v6 + 1;
        v8[v6] = a2;
        return this;
      }
    }

    else
    {
      v11 = *(a3 + 2);
    }

    if ((2 * v7) <= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = (2 * v7);
    }

    v27 = v26 + v7;
    v8 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(a3 + 1) = v8;
    if (!v8 || &v8[v27] > v11)
    {
      v28 = 2 * *(a3 + 4);
      if (v28 <= v27 * 8 + 8)
      {
        v28 = v27 * 8 + 8;
      }

      *(a3 + 4) = v28;
      v29 = v28 + 8;
      v30 = this;
      v31 = a2;
      v32 = a3;
      v33 = malloc_type_malloc(v28 + 8, 0x2004093837F09uLL);
      a3 = v32;
      a2 = v31;
      v34 = v33;
      this = v30;
      v35 = v34 + v29;
      *v34 = *(v32 + 3);
      v8 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
      *(v32 + 2) = v35;
      *(v32 + 3) = v34;
    }

    *(a3 + 1) = &v8[v27];
    if (v7)
    {
      v36 = this;
      v37 = a2;
      memcpy(v8, *this, v9);
      a2 = v37;
      this = v36;
    }

    *this = v8;
    LODWORD(v7) = this[3];
    goto LABEL_37;
  }

  v13 = *this;
  v12 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  v15 = *(a3 + 1);
  v14 = *(a3 + 2);
  if (v15 || v14 < 0x18)
  {
    v16 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(a3 + 1) = v16;
    if (v16)
    {
      v18 = (v16 + 4) > v14;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = 2 * *(a3 + 4);
      if (v19 <= 0x28)
      {
        v19 = 40;
      }

      *(a3 + 4) = v19;
      v20 = v19 + 8;
      v21 = this;
      v22 = a2;
      v23 = a3;
      v24 = malloc_type_malloc(v19 + 8, 0x2004093837F09uLL);
      a3 = v23;
      a2 = v22;
      v25 = v24;
      this = v21;
      *v25 = *(v23 + 3);
      v16 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
      *(v23 + 2) = v25 + v20;
      *(v23 + 3) = v25;
      v17 = *(v21 + 12) + 4;
    }

    else
    {
      v17 = 4;
    }

    *(a3 + 1) = v16 + 4;
    *this = v16;
  }

  else
  {
    *(a3 + 1) = 24;
    v16 = *this;
    v17 = 3;
  }

  *v16 = v13;
  *(*this + 8) = v12;
  *(*this + 16) = a2;
  this[2] = 3;
  this[3] = v17;
  *(this + 18) = 5;
  return this;
}

uint64_t swift::Demangle::__runtime::Node::removeChildAt(uint64_t this, unsigned int a2)
{
  v2 = *(this + 18);
  switch(v2)
  {
    case 5:
      v3 = *(this + 8) - 1;
      if (v3 != a2)
      {
        do
        {
          *(*this + 8 * a2) = *(*this + 8 * (a2 + 1));
          ++a2;
        }

        while (v3 != a2);
        v3 = *(this + 8) - 1;
      }

      *(this + 8) = v3;
      break;
    case 2:
      if (!a2)
      {
        *this = *(this + 8);
      }

      *(this + 18) = 1;
      break;
    case 1:
      *(this + 18) = 0;
      break;
  }

  return this;
}

uint64_t swift::Demangle::__runtime::Node::replaceChild(uint64_t this, unsigned int a2, swift::Demangle::__runtime::Node *a3)
{
  v3 = *(this + 18);
  if (v3 != 1)
  {
    if (v3 == 5)
    {
      this = *this + 8 * a2;
    }

    else
    {
      if (v3 != 2)
      {
        return this;
      }

      this += 8 * a2;
    }
  }

  *this = a3;
  return this;
}

int8x16_t swift::Demangle::__runtime::Node::reverseChildren(int8x16_t *this, uint64_t a2)
{
  v2 = this[1].u8[2];
  if (v2 == 5)
  {
    v4 = this->i64[0] + 8 * a2;
    v5 = this->u32[2];
    v6 = (this->i64[0] + 8 * v5 - 8);
    if (v5 != a2 && v6 > v4)
    {
      v8 = v4 + 8;
      do
      {
        v9 = *(v8 - 8);
        *(v8 - 8) = *v6;
        *v6-- = v9;
        v10 = v8 >= v6;
        v8 += 8;
      }

      while (!v10);
    }
  }

  else if (v2 == 2 && a2 == 0)
  {
    result = vextq_s8(*this, *this, 8uLL);
    *this = result;
  }

  return result;
}

uint64_t swift::Demangle::__runtime::Node::findByKind(uint64_t result, uint64_t a2, int a3)
{
  v3 = (result + 16);
  if (*(result + 16) != a2)
  {
    v4 = (a3 - 1);
    if (a3 < 1)
    {
      return 0;
    }

    v6 = *(result + 18);
    v7 = result;
    if ((v6 - 1) >= 2)
    {
      if (v6 == 5)
      {
        v8 = *result;
        v7 = *result;
        goto LABEL_11;
      }

      v7 = 0;
    }

    switch(v6)
    {
      case 1:
        v3 = (result + 8);
        if (v7 != (result + 8))
        {
          goto LABEL_12;
        }

        return 0;
      case 2:
        goto LABEL_12;
      case 5:
        v8 = *result;
LABEL_11:
        v3 = &v8[*(result + 8)];
        if (v7 != v3)
        {
          goto LABEL_12;
        }

        return 0;
    }

    v3 = 0;
    if (!v7)
    {
      return 0;
    }

LABEL_12:
    while (1)
    {
      result = swift::Demangle::__runtime::Node::findByKind(*v7, a2, v4);
      if (result)
      {
        break;
      }

      if (++v7 == v3)
      {
        return 0;
      }
    }
  }

  return result;
}

void *swift::Demangle::__runtime::NodeFactory::freeSlabs(void *result)
{
  if (result)
  {
    do
    {
      v1 = *result;
      free(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

void *swift::Demangle::__runtime::NodeFactory::clear(void *this)
{
  v1 = this[3];
  if (v1)
  {
    v2 = this;
    this = *v1;
    if (*v1)
    {
      do
      {
        v3 = *this;
        free(this);
        this = v3;
      }

      while (v3);
      v1 = v2[3];
    }

    *v1 = 0;
    v2[1] = v1 + 1;
  }

  return this;
}

__n128 swift::Demangle::__runtime::NodeFactory::pushCheckpoint@<Q0>(swift::Demangle::__runtime::NodeFactory *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 3);
  result = *(this + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 swift::Demangle::__runtime::NodeFactory::popCheckpoint(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  v6 = *a2;
  v7 = *(a1 + 24);
  if (*a2 != v7)
  {
    if (v7)
    {
      if (*(a2 + 16) - *(a2 + 8) >= (*(a1 + 16) - v7 - 8) >> 4)
      {
        v9 = 0;
        v8 = *(a1 + 24);
LABEL_10:
        while (*a2 != v8)
        {
          *(a1 + 24) = *v8;
          free(v8);
          v8 = *(a1 + 24);
          if (!v8)
          {
            v6 = *a2;
            v7 = v9;
            goto LABEL_13;
          }
        }

        v7 = v9;
        if (v9)
        {
          goto LABEL_15;
        }

LABEL_17:
        result = *(a2 + 8);
        *(a1 + 8) = result;
        return result;
      }

      v8 = *v7;
      *(a1 + 24) = *v7;
      v9 = v7;
      if (v8)
      {
        goto LABEL_10;
      }
    }

LABEL_13:
    if (v6)
    {
      swift::Demangle::__runtime::fatal(0, "Popping checkpoint {%p, %p, %p} with slab that is not within the allocator's slab chain.\n", a3, a4, v6, *(a2 + 8), *(a2 + 16));
    }

    v8 = 0;
    if (v7)
    {
LABEL_15:
      *v7 = v8;
      *(a1 + 24) = v7;
      *(a1 + 8) = v7 + 1;
      return result;
    }

    goto LABEL_17;
  }

  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  if (v10 > *(a1 + 8))
  {
    swift::Demangle::__runtime::fatal(0, "Popping checkpoint {%p, %p, %p} that is after the current pointer.\n", a3, a4, v6, v10, v11);
  }

  v12 = *(a1 + 16);
  if (v11 != v12)
  {
    swift::Demangle::__runtime::fatal(0, "Popping checkpoint {%p, %p, %p} with End that does not match current End %p.\n", a3, a4, v6, v10, v11, v12);
  }

  *(a1 + 8) = v10;
  return result;
}

unint64_t swift::Demangle::__runtime::NodeFactory::createNode(void *a1, __int16 a2, uint64_t a3)
{
  result = (a1[1] + 7) & 0xFFFFFFFFFFFFFFF8;
  a1[1] = result;
  if (!result || result + 24 > a1[2])
  {
    v7 = 2 * a1[4];
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    a1[4] = v7;
    v8 = v7 + 8;
    v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    *v9 = a1[3];
    result = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
    a1[2] = v9 + v8;
    a1[3] = v9;
  }

  a1[1] = result + 24;
  *(result + 16) = a2;
  *(result + 18) = 4;
  *result = a3;
  return result;
}

unint64_t swift::Demangle::__runtime::NodeFactory::createNodeWithAllocatedText(void *a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  result = (a1[1] + 7) & 0xFFFFFFFFFFFFFFF8;
  a1[1] = result;
  if (!result || result + 24 > a1[2])
  {
    v9 = 2 * a1[4];
    if (v9 <= 0x20)
    {
      v9 = 32;
    }

    a1[4] = v9;
    v10 = v9 + 8;
    v11 = malloc_type_malloc(v9 + 8, 0x2004093837F09uLL);
    *v11 = a1[3];
    result = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    a1[2] = v11 + v10;
    a1[3] = v11;
  }

  a1[1] = result + 24;
  *(result + 16) = a2;
  *(result + 18) = 3;
  *result = a3;
  *(result + 8) = a4;
  return result;
}

unint64_t swift::Demangle::__runtime::NodeFactory::createNode(void *a1, __int16 a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  result = (a1[1] + 7) & 0xFFFFFFFFFFFFFFF8;
  a1[1] = result;
  if (!result || result + 24 > a1[2])
  {
    v8 = 2 * a1[4];
    if (v8 <= 0x20)
    {
      v8 = 32;
    }

    a1[4] = v8;
    v9 = v8 + 8;
    v10 = malloc_type_malloc(v8 + 8, 0x2004093837F09uLL);
    *v10 = a1[3];
    result = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
    a1[2] = v10 + v9;
    a1[3] = v10;
  }

  a1[1] = result + 24;
  *(result + 16) = a2;
  *(result + 18) = 3;
  *result = v5;
  *(result + 8) = v6;
  return result;
}

unint64_t swift::Demangle::__runtime::NodeFactory::createNode(void *a1, __int16 a2, char *__s)
{
  v6 = (a1[1] + 7) & 0xFFFFFFFFFFFFFFF8;
  a1[1] = v6;
  if (!v6 || v6 + 24 > a1[2])
  {
    v7 = 2 * a1[4];
    if (v7 <= 0x20)
    {
      v7 = 32;
    }

    a1[4] = v7;
    v8 = v7 + 8;
    v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
    v10 = v9 + v8;
    *v9 = a1[3];
    v6 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
    a1[2] = v10;
    a1[3] = v9;
  }

  a1[1] = v6 + 24;
  if (__s)
  {
    v11 = strlen(__s);
  }

  else
  {
    v11 = 0;
  }

  *(v6 + 16) = a2;
  *(v6 + 18) = 3;
  *v6 = __s;
  *(v6 + 8) = v11;
  return v6;
}

void *swift::Demangle::__runtime::CharVector::append(char **a1, const void *a2, size_t a3, void *a4)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *a1;
  if (a3 + v6 > v7)
  {
    v9 = a4[1];
    if (&v8[v7] == v9)
    {
      v10 = a4[2];
      if (&v9[a3] <= v10)
      {
        a4[1] = &v9[a3];
        LODWORD(v12) = a3;
LABEL_18:
        *(a1 + 3) = v7 + v12;
        goto LABEL_19;
      }
    }

    else
    {
      v10 = a4[2];
    }

    v11 = (2 * v7);
    if (a3 > v11)
    {
      v11 = a3;
    }

    if (v11 <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12 + v7;
    if (!v9 || &v9[v13] > v10)
    {
      v14 = 2 * a4[4];
      if (v14 <= v13 + 1)
      {
        v14 = v13 + 1;
      }

      a4[4] = v14;
      v15 = v14 + 8;
      v16 = a2;
      v17 = a4;
      v18 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
      a4 = v17;
      a2 = v16;
      v19 = v18 + v15;
      *v18 = v17[3];
      v9 = (v18 + 1);
      v17[2] = v19;
      v17[3] = v18;
    }

    a4[1] = &v9[v13];
    if (v7)
    {
      v20 = a2;
      memcpy(v9, *a1, v7);
      a2 = v20;
    }

    *a1 = v9;
    v8 = v9;
    v6 = *(a1 + 2);
    LODWORD(v7) = *(a1 + 3);
    goto LABEL_18;
  }

LABEL_19:
  result = memcpy(&v8[v6], a2, a3);
  *(a1 + 2) += a3;
  return result;
}

unsigned int *swift::Demangle::__runtime::CharVector::append(unsigned int *this, unsigned int a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  v4 = this;
  v5 = this[2];
  v6 = this[3];
  v7 = *this;
  if (v5 + 11 > v6)
  {
    v8 = *(a3 + 1);
    if (&v7[v6] == v8)
    {
      v9 = *(a3 + 2);
      if ((v8 + 11) <= v9)
      {
        *(a3 + 1) = v8 + 11;
        LODWORD(v10) = 11;
LABEL_16:
        *(v4 + 12) = v6 + v10;
        goto LABEL_17;
      }
    }

    else
    {
      v9 = *(a3 + 2);
    }

    if ((2 * v6) <= 0xB)
    {
      v10 = 11;
    }

    else
    {
      v10 = (2 * v6);
    }

    v11 = v10 + v6;
    if (!v8 || &v8[v11] > v9)
    {
      v12 = 2 * *(a3 + 4);
      if (v12 <= v11 + 1)
      {
        v12 = v11 + 1;
      }

      *(a3 + 4) = v12;
      v13 = v12 + 8;
      v14 = a3;
      this = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
      a3 = v14;
      v15 = this + v13;
      *this = *(v14 + 3);
      v8 = (this + 2);
      *(v14 + 2) = v15;
      *(v14 + 3) = this;
    }

    *(a3 + 1) = &v8[v11];
    if (v6)
    {
      this = memcpy(v8, *v4, v6);
    }

    *v4 = v8;
    v7 = v8;
    v5 = *(v4 + 8);
    LODWORD(v6) = *(v4 + 12);
    goto LABEL_16;
  }

LABEL_17:
  v16 = &v7[v5];
  if ((a2 & 0x80000000) != 0)
  {
    v17 = 0;
    *v16 = 45;
    v24 = v16 + 1;
    v25 = -a2;
    v26 = v16;
    do
    {
      *++v26 = (v25 % 0xA) | 0x30;
      ++v17;
      v19 = v25 > 9;
      v25 /= 0xAu;
    }

    while (v19);
    v26[1] = 0;
    if (v26 > v16)
    {
      v27 = v26;
      do
      {
        v28 = *v26;
        *v27-- = *v24;
        *v24++ = v28;
        v23 = v24 >= v26;
        v26 = v27;
      }

      while (!v23);
    }
  }

  else if (a2)
  {
    v17 = 0;
    v18 = v16;
    do
    {
      *v18++ = (a2 % 0xA) | 0x30;
      ++v17;
      v19 = a2 > 9;
      a2 /= 0xAu;
    }

    while (v19);
    *v18 = 0;
    v20 = v18 - 1;
    if (v18 > v16)
    {
      v21 = v18 - 1;
      do
      {
        v22 = *v20;
        *v21-- = *v16;
        *v16++ = v22;
        v23 = v16 >= v20;
        v20 = v21;
      }

      while (!v23);
    }
  }

  else
  {
    *v16 = 48;
    v17 = 1;
  }

  *(v4 + 8) += v17;
  return this;
}

unsigned int *swift::Demangle::__runtime::CharVector::append(unsigned int *this, unint64_t a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  v4 = this;
  v5 = this[2];
  v6 = this[3];
  v7 = *this;
  if (v5 + 21 > v6)
  {
    v8 = *(a3 + 1);
    if (&v7[v6] == v8)
    {
      v9 = *(a3 + 2);
      if ((v8 + 21) <= v9)
      {
        *(a3 + 1) = v8 + 21;
        LODWORD(v10) = 21;
LABEL_16:
        *(v4 + 12) = v6 + v10;
        goto LABEL_17;
      }
    }

    else
    {
      v9 = *(a3 + 2);
    }

    if ((2 * v6) <= 0x15)
    {
      v10 = 21;
    }

    else
    {
      v10 = (2 * v6);
    }

    v11 = v10 + v6;
    if (!v8 || &v8[v11] > v9)
    {
      v12 = 2 * *(a3 + 4);
      if (v12 <= v11 + 1)
      {
        v12 = v11 + 1;
      }

      *(a3 + 4) = v12;
      v13 = v12 + 8;
      v14 = a3;
      this = malloc_type_malloc(v12 + 8, 0x2004093837F09uLL);
      a3 = v14;
      v15 = this + v13;
      *this = *(v14 + 3);
      v8 = (this + 2);
      *(v14 + 2) = v15;
      *(v14 + 3) = this;
    }

    *(a3 + 1) = &v8[v11];
    if (v6)
    {
      this = memcpy(v8, *v4, v6);
    }

    *v4 = v8;
    v7 = v8;
    v5 = *(v4 + 8);
    LODWORD(v6) = *(v4 + 12);
    goto LABEL_16;
  }

LABEL_17:
  v16 = &v7[v5];
  if (a2)
  {
    v17 = 0;
    v18 = v16;
    do
    {
      *v18++ = (a2 % 0xA) | 0x30;
      ++v17;
      v19 = a2 > 9;
      a2 /= 0xAuLL;
    }

    while (v19);
    *v18 = 0;
    v20 = v18 - 1;
    if (v18 > v16)
    {
      v21 = v18 - 1;
      do
      {
        v22 = *v20;
        *v21-- = *v16;
        *v16++ = v22;
        v23 = v16 >= v20;
        v20 = v21;
      }

      while (!v23);
    }
  }

  else
  {
    *v16 = 48;
    v17 = 1;
  }

  *(v4 + 8) += v17;
  return this;
}

void *swift::Demangle::__runtime::Demangler::clear(void *this)
{
  *(this + 25) = 0;
  *(this + 11) = 0;
  *(this + 29) = 0;
  *(this + 13) = 0;
  v1 = *(this + 3);
  if (v1)
  {
    v2 = this;
    this = *v1;
    if (*v1)
    {
      do
      {
        v3 = *this;
        free(this);
        this = v3;
      }

      while (v3);
      v1 = *(v2 + 3);
    }

    *v1 = 0;
    *(v2 + 1) = v1 + 1;
  }

  return this;
}

uint64_t swift::Demangle::__runtime::Demangler::DemangleInitRAII::DemangleInitRAII(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = *(a2 + 88);
  *(a1 + 24) = *(a2 + 104);
  *(a1 + 40) = *(a2 + 536);
  *(a1 + 48) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 72);
  v10 = a2 + 544;
  v11 = *(a2 + 568);
  if (v11)
  {
    if (v11 == v10)
    {
      *(a1 + 96) = a1 + 72;
      (*(**(a2 + 568) + 24))(*(a2 + 568));
    }

    else
    {
      *(a1 + 96) = v11;
      *(a2 + 568) = 0;
    }
  }

  else
  {
    *(a1 + 96) = 0;
  }

  v12 = (*(a2 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a2 + 8) = v12;
  if (!v12 || (v13 = *(a2 + 16), v12 + 128 > v13))
  {
    v14 = 2 * *(a2 + 32);
    if (v14 <= 0x88)
    {
      v14 = 136;
    }

    *(a2 + 32) = v14;
    v15 = v14 + 8;
    v16 = malloc_type_malloc(v14 + 8, 0x2004093837F09uLL);
    v13 = v16 + v15;
    *v16 = *(a2 + 24);
    v12 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a2 + 16) = v16 + v15;
    *(a2 + 24) = v16;
  }

  *(a2 + 88) = v12;
  *(a2 + 96) = 0x1000000000;
  v17 = (v12 + 135) & 0xFFFFFFFFFFFFFFF8;
  *(a2 + 8) = v17;
  if (!v17 || v17 + 128 > v13)
  {
    v18 = 2 * *(a2 + 32);
    if (v18 <= 0x88)
    {
      v18 = 136;
    }

    *(a2 + 32) = v18;
    v19 = v18 + 8;
    v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
    *v20 = *(a2 + 24);
    v17 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a2 + 16) = v20 + v19;
    *(a2 + 24) = v20;
  }

  *(a2 + 8) = v17 + 128;
  *(a2 + 104) = v17;
  *(a2 + 112) = 0x1000000000;
  *(a2 + 536) = 0;
  *(a2 + 56) = a3;
  *(a2 + 64) = a4;
  *(a2 + 72) = 0;
  v21 = *(a2 + 568);
  *(a2 + 568) = 0;
  if (v21 != v10)
  {
    if (v21)
    {
      (*(*v21 + 40))(v21);
    }

    v22 = *(a5 + 24);
    if (v22)
    {
      goto LABEL_20;
    }

LABEL_23:
    *(a2 + 568) = 0;
    return a1;
  }

  (*(*v21 + 32))(v21);
  v22 = *(a5 + 24);
  if (!v22)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v22 == a5)
  {
    *(a2 + 568) = v10;
    (*(**(a5 + 24) + 24))(*(a5 + 24), v10);
  }

  else
  {
    *(a2 + 568) = v22;
    *(a5 + 24) = 0;
  }

  return a1;
}

void swift::Demangle::__runtime::Demangler::DemangleInitRAII::~DemangleInitRAII(swift::Demangle::__runtime::Demangler::DemangleInitRAII *this)
{
  *(*this + 88) = *(this + 8);
  *(*this + 104) = *(this + 24);
  v2 = *this;
  *(v2 + 536) = *(this + 10);
  *(v2 + 56) = *(this + 3);
  v3 = *this;
  *(v3 + 72) = *(this + 8);
  v4 = *(v3 + 568);
  *(v3 + 568) = 0;
  if (v4 == v3 + 544)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = this + 72;
  v6 = *(this + 12);
  if (v6)
  {
    if (v6 != v5)
    {
      *(v3 + 568) = v6;
      *(this + 12) = 0;
      return;
    }

    *(v3 + 568) = v3 + 544;
    (*(**(this + 12) + 24))(*(this + 12), v3 + 544);
  }

  else
  {
    *(v3 + 568) = 0;
  }

  v7 = *(this + 12);
  if (v7 == v5)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))(v7);
  }
}

unint64_t swift::Demangle::__runtime::Demangler::demangleSymbol(uint64_t a1, _WORD *a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  if (v7)
  {
    if (v7 == a4)
    {
      v41 = v40;
      (*(*v7 + 24))(v7, v40);
    }

    else
    {
      v41 = *(a4 + 24);
      *(a4 + 24) = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  swift::Demangle::__runtime::Demangler::DemangleInitRAII::DemangleInitRAII(v42, a1, a2, a3, v40);
  if (v41 == v40)
  {
    (*(*v41 + 32))(v41);
  }

  else if (v41)
  {
    (*(*v41 + 40))();
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  if (v8 >= v9)
  {
    v10 = *(a1 + 72);
  }

  else
  {
    v10 = *(a1 + 64);
  }

  if (v8 - v10 >= 3)
  {
    v11 = *(a1 + 56);
    v12 = (v11 + v10);
    v13 = *v12;
    v14 = *(v12 + 2);
    if (v13 == 21599 && v14 == 116)
    {
      *(a1 + 72) = v9 + 3;
      v24 = swift::Demangle::__runtime::demangleOldSymbolAsNode(v11, v8, a1);
      goto LABEL_51;
    }
  }

  ManglingPrefixLength = swift::Demangle::__runtime::getManglingPrefixLength(a2, a3);
  if (!ManglingPrefixLength)
  {
    goto LABEL_50;
  }

  if (a3 >= 2)
  {
    if (*a2 == 25892)
    {
      *(a1 + 81) = 1;
    }

    v21 = *a2 == 21599;
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 80) = v21;
  v22 = v9 + ManglingPrefixLength;
  for (*(a1 + 72) = v22; v22 < v8; v22 = *(a1 + 72))
  {
    if (v22 >= *(a1 + 64) || !*(*(a1 + 56) + v22))
    {
      break;
    }

    v23 = swift::Demangle::__runtime::Demangler::demangleOperator(a1, v17, v18, v19, v20);
    if (!v23)
    {
      goto LABEL_50;
    }

    v43 = v23;
    swift::Demangle::__runtime::Vector<swift::Demangle::__runtime::Node *>::push_back((a1 + 88), &v43, a1);
  }

  v24 = (*(a1 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
  *(a1 + 8) = v24;
  if (!v24 || v24 + 24 > *(a1 + 16))
  {
    v25 = 2 * *(a1 + 32);
    if (v25 <= 0x20)
    {
      v25 = 32;
    }

    *(a1 + 32) = v25;
    v26 = v25 + 8;
    v27 = malloc_type_malloc(v25 + 8, 0x2004093837F09uLL);
    v28 = v27 + v26;
    *v27 = *(a1 + 24);
    v24 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(a1 + 16) = v28;
    *(a1 + 24) = v27;
  }

  *(a1 + 8) = v24 + 24;
  *(v24 + 16) = 101;
  *(v24 + 18) = 0;
  v29 = *(a1 + 96);
  if (!v29)
  {
LABEL_50:
    v24 = 0;
    goto LABEL_51;
  }

  v30 = v29 - 1;
  v31 = *(*(a1 + 88) + 8 * (v29 - 1));
  if (*(v31 + 8) == 232)
  {
    *(a1 + 96) = v30;
    if (v29 == 1)
    {
LABEL_46:
      swift::Demangle::__runtime::Node::addChild(v24, v31, a1, v19, v20);
      goto LABEL_47;
    }
  }

  else
  {
    v31 = 0;
    v30 = *(a1 + 96);
  }

  v32 = v24;
  do
  {
    v33 = *(a1 + 88);
    v34 = v33[v30 - 1];
    if (!swift::Demangle::__runtime::isFunctionAttr(v34[8]))
    {
      v37 = 8 * v30;
      while (1)
      {
        v38 = *v33;
        if (*(*v33 + 8) == 243)
        {
          v39 = *(v38 + 18);
          if ((v39 - 1) >= 2)
          {
            if (v39 != 5 || !*(v38 + 2))
            {
              v38 = 0;
              goto LABEL_56;
            }

            v38 = *v38;
          }

          v38 = *v38;
        }

LABEL_56:
        swift::Demangle::__runtime::Node::addChild(v32, v38, a1, v19, v20);
        ++v33;
        v37 -= 8;
        if (!v37)
        {
          goto LABEL_45;
        }
      }
    }

    *(a1 + 96) = v30 - 1;
    swift::Demangle::__runtime::Node::addChild(v32, v34, a1, v19, v20);
    if ((v34[8] & 0xFFFE) == 0xB4)
    {
      v32 = v34;
    }

    v30 = *(a1 + 96);
  }

  while (v30);
LABEL_45:
  if (v31)
  {
    goto LABEL_46;
  }

LABEL_47:
  v35 = *(v24 + 18);
  if ((v35 - 1) >= 2 && (v35 != 5 || !*(v24 + 8)))
  {
    goto LABEL_50;
  }

LABEL_51:
  swift::Demangle::__runtime::Demangler::DemangleInitRAII::~DemangleInitRAII(v42);
  return v24;
}
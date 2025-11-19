uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readFullContextDescriptor<swift::TargetStructDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift::remote::MemoryReader::readObj<swift::TargetStructDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>(*(a1 + 2800), &v31);
  v6 = v31;
  v31 = 0;
  v7 = *a4;
  *a4 = v6;
  if (v7)
  {
    v34 = v7;
    v8 = a4[4];
    if (!v8)
    {
      goto LABEL_64;
    }

    (*(*v8 + 48))(v8, &v34);
  }

  v9 = a4[4];
  a4[4] = 0;
  if (v9 == a4 + 1)
  {
    (*(*v9 + 32))(v9);
    v10 = v33;
    if (v33)
    {
LABEL_8:
      if (v10 == v32)
      {
        a4[4] = (a4 + 1);
        (*(*v10 + 24))(v10, a4 + 1);
      }

      else
      {
        a4[4] = v10;
        v33 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    v10 = v33;
    if (v33)
    {
      goto LABEL_8;
    }
  }

  a4[4] = 0;
LABEL_13:
  v11 = v31;
  v31 = 0;
  if (!v11)
  {
LABEL_16:
    if (v33 == v32)
    {
      (*(*v33 + 32))(v33);
      if (!*a4)
      {
        return 0;
      }
    }

    else
    {
      if (v33)
      {
        (*(*v33 + 40))();
      }

      if (!*a4)
      {
        return 0;
      }
    }

    v12 = -2;
    v13 = 28;
    while (1)
    {
      if (*a4)
      {
        v14 = *a4;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      if (v14)
      {
        v16 = v12 + 2;
        if (v12 != -2)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v15 = 0;
        v16 = v12 + 2;
        if (v12 != -2)
        {
LABEL_31:
          if (v16 != 1)
          {
            v22 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(v15, v12);
            if (v22 > v13)
            {
              goto LABEL_56;
            }

            goto LABEL_25;
          }

          v17 = v15;
          if (v15 == -28)
          {
            v18 = 0;
LABEL_34:
            v19 = v15;
          }

          else
          {
            v18 = v15 + 28;
            if (v15)
            {
              goto LABEL_34;
            }

            v19 = 0;
          }

          v23 = *v19;
          if ((v23 & 0x80) != 0)
          {
            if (v15)
            {
              v25 = v15;
            }

            else
            {
              v25 = 0;
            }

            v24 = *(v25 + 18);
          }

          else
          {
            v24 = 0;
          }

          v26 = &v18[16 * ((v23 >> 7) & 1) + v24];
          goto LABEL_53;
        }
      }

      v17 = v15;
      if (v15 == -28)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15 + 28;
        if (!v15)
        {
          v21 = 0;
          goto LABEL_49;
        }
      }

      v21 = v15;
LABEL_49:
      v26 = &v20[16 * ((*v21 >> 7) & 1)];
LABEL_53:
      if (!v15)
      {
        v17 = 0;
      }

      v22 = v26 - v17;
      if (v26 - v17 > v13)
      {
LABEL_56:
        (*(**(a1 + 2800) + 24))(&v31);
        std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](a4, &v31);
        v27 = v31;
        v31 = 0;
        if (v27)
        {
          v34 = v27;
          if (!v33)
          {
            goto LABEL_64;
          }

          (*(*v33 + 48))(v33, &v34);
        }

        if (v33 == v32)
        {
          (*(*v33 + 32))(v33);
        }

        else if (v33)
        {
          (*(*v33 + 40))();
        }

        v13 = v22;
        if (!*a4)
        {
          return 0;
        }
      }

LABEL_25:
      if (++v12 == 15)
      {
        return 1;
      }
    }
  }

  v34 = v11;
  if (v33)
  {
    (*(*v33 + 48))(v33, &v34);
    goto LABEL_16;
  }

LABEL_64:
  v29 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl( v29,  v30);
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl( a1,  a2 - 1);
  }

  v3 = a1;
  if (a1 == -44)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 + 44;
    if (!a1)
    {
      v5 = 0;
      goto LABEL_8;
    }
  }

  v5 = a1;
LABEL_8:
  v6 = *v5;
  if ((v6 & 0x80) != 0)
  {
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    v7 = *(v8 + 26);
  }

  else
  {
    v7 = 0;
  }

  v9 = &v4[16 * ((v6 >> 7) & 1) + 3 + v7];
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  if ((*v10 & 0x80) != 0)
  {
    if (a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0;
    }

    v12 = 12 * *(v13 + 27);
  }

  else
  {
    v12 = 0;
  }

  if (!a1)
  {
    v3 = 0;
  }

  return v11 - v3 + v12;
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
      v5 = swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(a1);
      if (a1)
      {
        v6 = a1;
      }

      else
      {
        v6 = 0;
      }

      return TrailingObjectsImpl + 8 * v5 - v6;
    }

    else
    {
      v10 = a2 - 2;

      return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl( a1,  v10);
    }
  }

  v7 = a1;
  if (a1 == -44)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = a1 + 44;
  if (a1)
  {
LABEL_7:
    v9 = a1;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  v12 = *v9;
  if ((v12 & 0x80) != 0)
  {
    if (a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = 0;
    }

    v13 = *(v15 + 26);
    if (a1)
    {
      goto LABEL_17;
    }

LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  v13 = 0;
  if (!a1)
  {
    goto LABEL_22;
  }

LABEL_17:
  v14 = a1;
LABEL_23:
  if ((*v14 & 0x80) != 0)
  {
    if (a1)
    {
      v17 = a1;
    }

    else
    {
      v17 = 0;
    }

    v16 = *(v17 + 27);
  }

  else
  {
    v16 = 0;
  }

  v18 = &v8[16 * ((v12 >> 7) & 1) + 3 + v13] & 0xFFFFFFFFFFFFFFFCLL;
  if (a1)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18 + 12 * v16;
  if ((*v19 & 0x80) != 0)
  {
    if (a1)
    {
      v22 = a1;
    }

    else
    {
      v22 = 0;
    }

    v21 = *(v22 + 29) & 1;
  }

  else
  {
    v21 = 0;
  }

  v23 = v20 + 4 * v21;
  if (!a1)
  {
    v7 = 0;
  }

  return v23 - v7;
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
      v12 = swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(a1);
      v13 = a1;
      if ((*a1 & 0x80) != 0)
      {
        if (a1)
        {
          v18 = a1;
        }

        else
        {
          v18 = 0;
        }

        v14 = (*(v18 + 29) >> 1) & 1;
      }

      else
      {
        v14 = 0;
      }

      v24 = TrailingObjectsImpl + 8 * v12 + 2 * v14;
      if (!a1)
      {
        v13 = 0;
      }

      return v24 - v13;
    case 1:
      v7 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
      v8 = swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(a1);
      if ((*a1 & 0x80) != 0)
      {
        if (a1)
        {
          v17 = a1;
        }

        else
        {
          v17 = 0;
        }

        v9 = (*(v17 + 29) >> 1) & 1;
        if (a1)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = 0;
        if (a1)
        {
LABEL_8:
          v10 = a1;
          goto LABEL_25;
        }
      }

      v10 = 0;
LABEL_25:
      v21 = v7 + 8 * v8 + 2 * v9;
      if ((*v10 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      if (!v10)
      {
        v10 = 0;
      }

      if ((*(v10 + 29) & 2) != 0)
      {
        if (a1)
        {
          v23 = a1;
        }

        else
        {
          v23 = 0;
        }

        v25 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v23);
        v26 = vcnt_s8(*(v25 + 8 * swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericPackShapeDescriptor>(v23)));
        v26.i16[0] = vaddlv_u8(v26);
        v22 = v26.u32[0];
      }

      else
      {
LABEL_29:
        v22 = 0;
      }

      v19 = v21 + 2 * v22;
      if (a1)
      {
        v20 = a1;
      }

      else
      {
        v20 = 0;
      }

      return v19 - v20;
    case 2:
      v3 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
      ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(a1);
      if (v5)
      {
        v6 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v5 - 2);
      }

      else
      {
        v6 = 0;
      }

      v19 = v3 + 12 * v6;
      if (a1)
      {
        v20 = a1;
      }

      else
      {
        v20 = 0;
      }

      return v19 - v20;
  }

  v15 = a2 - 3;

  return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl( a1,  v15);
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
    v4 = a1;
    ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(a1);
    if (v11)
    {
      v12 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v11 - 2);
      if (a1)
      {
LABEL_8:
        v13 = a1;
LABEL_20:
        v18 = TrailingObjectsImpl + 12 * v12;
        if ((*v13 & 0x80) != 0)
        {
          if (a1)
          {
            v20 = a1;
          }

          else
          {
            v20 = 0;
          }

          v19 = (*(v20 + 29) >> 2) & 1;
        }

        else
        {
          v19 = 0;
        }

        v21 = v18 + 4 * v19;
        goto LABEL_30;
      }
    }

    else
    {
      v12 = 0;
      if (a1)
      {
        goto LABEL_8;
      }
    }

    v13 = 0;
    goto LABEL_20;
  }

  if (a2 == 1)
  {
    v3 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
    v4 = a1;
    v5 = swift::TrailingGenericContextObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(a1);
    if (v6)
    {
      v7 = *(v5 + 2 * v6 - 2);
      if (a1)
      {
LABEL_5:
        v8 = a1;
LABEL_14:
        if ((*v8 & 0x80) != 0)
        {
          if (a1)
          {
            v17 = a1;
          }

          else
          {
            v17 = 0;
          }

          v16 = (*(v17 + 29) >> 2) & 1;
        }

        else
        {
          v16 = 0;
        }

        v21 = v3 + 12 * v7 + 4 * v16 + 4 * swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericValueDescriptor>(a1);
LABEL_30:
        if (a1)
        {
          v22 = v4;
        }

        else
        {
          v22 = 0;
        }

        return v21 - v22;
      }
    }

    else
    {
      v7 = 0;
      if (a1)
      {
        goto LABEL_5;
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  v14 = a2 - 2;

  return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(a1, v14);
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
    v4 = a1;
    ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(a1);
    if (v11)
    {
      v12 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v11 - 2);
      if (a1)
      {
LABEL_8:
        v13 = a1;
LABEL_20:
        if ((*v13 & 0x80) != 0)
        {
          if (a1)
          {
            v19 = a1;
          }

          else
          {
            v19 = 0;
          }

          v18 = (*(v19 + 29) >> 2) & 1;
        }

        else
        {
          v18 = 0;
        }

        v20 = TrailingObjectsImpl + 12 * v12 + 4 * v18 + 4 * swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericValueDescriptor>(a1) + 4 * ((*a1 >> 29) & 1);
        goto LABEL_30;
      }
    }

    else
    {
      v12 = 0;
      if (a1)
      {
        goto LABEL_8;
      }
    }

    v13 = 0;
    goto LABEL_20;
  }

  if (a2 == 1)
  {
    v3 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
    v4 = a1;
    v5 = swift::TrailingGenericContextObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(a1);
    if (v6)
    {
      v7 = *(v5 + 2 * v6 - 2);
      if (a1)
      {
LABEL_5:
        v8 = a1;
LABEL_14:
        if ((*v8 & 0x80) != 0)
        {
          if (a1)
          {
            v17 = a1;
          }

          else
          {
            v17 = 0;
          }

          v16 = (*(v17 + 29) >> 2) & 1;
        }

        else
        {
          v16 = 0;
        }

        v20 = v3 + 12 * v7 + 4 * v16 + 4 * swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericValueDescriptor>(a1) + 4 * ((*a1 >> 29) & 1) + 4 * ((*a1 & 0x30000) == 0x20000);
LABEL_30:
        if (a1)
        {
          v21 = v4;
        }

        else
        {
          v21 = 0;
        }

        return v20 - v21;
      }
    }

    else
    {
      v7 = 0;
      if (a1)
      {
        goto LABEL_5;
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  v14 = a2 - 2;

  return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(a1, v14);
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
      v7 = a1;
      v16 = *a1;
      v17 = TrailingObjectsImpl + ((v16 >> 28) & 8);
      if ((v16 & 0x80000000) != 0)
      {
        if (a1)
        {
          v20 = a1;
        }

        else
        {
          v20 = 0;
        }

        v18 = *(swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v20) + 4);
      }

      else
      {
        v18 = 0;
      }

      v5 = v17 + 8 * v18;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_9;
      }

      v6 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
      v7 = a1;
      v8 = *a1;
      if ((v8 & 0x80000000) != 0)
      {
        if (a1)
        {
          v19 = a1;
        }

        else
        {
          v19 = 0;
        }

        v9 = *(swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v19) + 4);
        v10 = *a1;
      }

      else
      {
        v9 = 0;
        v10 = *a1;
      }

      v5 = v6 + ((v8 >> 28) & 8) + 8 * v9 + 4 * ((v10 >> 30) & 1);
    }

    if (a1)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    return v5 - v14;
  }

  if (!a2)
  {
    v13 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
    v4 = a1;
    v5 = v13 + 12 * ((*a1 & 0x30000) == 0x10000);
LABEL_13:
    if (a1)
    {
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }

    return v5 - v14;
  }

  if (a2 == 1)
  {
    v3 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(a1);
    v4 = a1;
    v5 = v3 + ((*a1 >> 28) & 8);
    goto LABEL_13;
  }

LABEL_9:
  v11 = a2 - 4;

  return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(a1, v11);
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(a1, a2 - 1);
  }

  v3 = a1;
  if (a1 == -28)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 + 28;
    if (!a1)
    {
      v5 = 0;
      goto LABEL_8;
    }
  }

  v5 = a1;
LABEL_8:
  v6 = *v5;
  if ((v6 & 0x80) != 0)
  {
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    v7 = *(v8 + 18);
  }

  else
  {
    v7 = 0;
  }

  v9 = &v4[16 * ((v6 >> 7) & 1) + 3 + v7];
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  if ((*v10 & 0x80) != 0)
  {
    if (a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0;
    }

    v12 = 12 * *(v13 + 19);
  }

  else
  {
    v12 = 0;
  }

  if (!a1)
  {
    v3 = 0;
  }

  return v11 - v3 + v12;
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(_BYTE *a1, uint64_t a2)
{
  if (a2)
  {
    return swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::sizeWithTrailingTypeCountImpl(a1, a2 - 1);
  }

  v3 = a1;
  if (a1 == -28)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 + 28;
    if (!a1)
    {
      v5 = 0;
      goto LABEL_8;
    }
  }

  v5 = a1;
LABEL_8:
  v6 = *v5;
  if ((v6 & 0x80) != 0)
  {
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    v7 = *(v8 + 18);
  }

  else
  {
    v7 = 0;
  }

  v9 = &v4[16 * ((v6 >> 7) & 1) + 3 + v7];
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  if ((*v10 & 0x80) != 0)
  {
    if (a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0;
    }

    v12 = 12 * *(v13 + 19);
  }

  else
  {
    v12 = 0;
  }

  if (!a1)
  {
    v3 = 0;
  }

  return v11 - v3 + v12;
}

unint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextMangling(uint64_t a1, __int128 *a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, &v10, a3, 50);
  if (result && ((**(a2 + 2) & 0x10) != 0 || (**(a2 + 2) & 0x1F) == 3))
  {
    v6 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(a3, 243);
    swift::Demangle::__runtime::Node::addChild(Node, v6, a3, v8, v9);
    return Node;
  }

  return result;
}

unint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(uint64_t a1, void *a2, swift::Demangle::__runtime::NodeFactory *a3, int a4)
{
  if (a4 < 1)
  {
    return 0;
  }

  v179 = v4;
  v180 = v5;
  v181 = v6;
  *__p = *a2;
  *&__p[16] = a2[2];
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readParentContextDescriptor(a1, __p, v175);
  v174 = 0;
  *__p = *a2;
  *&__p[16] = a2[2];
  v173 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::adoptAnonymousContextName(a1, __p, v175, a3, &v174);
  if (v178 != 1)
  {
    goto LABEL_45;
  }

  __p[0] = v175[0];
  if (v175[0])
  {
    *&__p[8] = v176;
    v11 = v177;
    v167[0] = v177;
    v12 = 1;
LABEL_9:
    if (!v11)
    {
      v14 = 0;
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  if ((SHIBYTE(v177) & 0x80000000) == 0)
  {
    v12 = 0;
    *&__p[8] = v176;
    v167[0] = v177;
    goto LABEL_11;
  }

  std::string::__init_copy_ctor_external(&__p[8], v176, *(&v176 + 1));
  v12 = __p[0];
  v11 = v167[0];
  if (__p[0])
  {
    goto LABEL_9;
  }

LABEL_11:
  if (a4 == 1)
  {
LABEL_27:
    v14 = 0;
    goto LABEL_28;
  }

  if (v12)
  {
    v162 = *&__p[8];
    v163 = v167[0];
    v14 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, &v162, a3, (a4 - 1));
    goto LABEL_28;
  }

  if (SHIBYTE(v167[0]) >= 0)
  {
    v15 = &__p[8];
  }

  else
  {
    v15 = *&__p[8];
  }

  if (SHIBYTE(v167[0]) >= 0)
  {
    v16 = SHIBYTE(v167[0]);
  }

  else
  {
    v16 = *&__p[16];
  }

  v17 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextManglingForSymbol(a1, v15, v16, a3);
  v14 = v17;
  if (v17)
  {
    if (*(v17 + 16) != 243)
    {
      goto LABEL_29;
    }

    v18 = *(v17 + 18);
    if ((v18 - 1) < 2)
    {
      goto LABEL_26;
    }

    if (v18 == 5 && *(v17 + 8))
    {
      v14 = *v17;
LABEL_26:
      v14 = *v14;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_28:
  if (v14 | v174)
  {
LABEL_29:
    v19 = 1;
    if (__p[0])
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v14 = 0;
  v19 = 0;
  if (__p[0])
  {
    goto LABEL_34;
  }

LABEL_32:
  if (SHIBYTE(v167[0]) < 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_34:
  if (!v19)
  {
LABEL_45:
    result = 0;
    goto LABEL_46;
  }

  if (v174 && (!v14 || *(v14 + 16) == 1))
  {
    v14 = v174;
  }

  result = 0;
  __p[0] = 0;
  v172 = 0;
  *&v162 = &v173;
  *(&v162 + 1) = a1;
  v163 = a2;
  v164 = __p;
  v165 = a3;
  v20 = a2[2];
  v21 = *v20 & 0x1F;
  if (v21 > 3)
  {
    if ((*v20 & 0x1Fu) > 0x10)
    {
      if (v21 == 17)
      {
        if ((swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::Demangle::__runtime::Demangler &,int)::{lambda(void)#1}::operator()(&v162) & 1) == 0)
        {
          goto LABEL_180;
        }

        v25 = 0;
        v26 = 230;
      }

      else
      {
        if (v21 != 18)
        {
          goto LABEL_205;
        }

        if ((swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::Demangle::__runtime::Demangler &,int)::{lambda(void)#1}::operator()(&v162) & 1) == 0)
        {
          goto LABEL_180;
        }

        v25 = 1;
        v26 = 63;
      }

LABEL_83:
      if (!v14)
      {
        goto LABEL_180;
      }

      if (v172 == 1)
      {
        v43 = v14;
        while (*(v43 + 8) != 163)
        {
          v44 = *(v43 + 18);
          if ((v44 - 1) >= 2)
          {
            if (v44 != 5 || !*(v43 + 2))
            {
              goto LABEL_175;
            }

            v43 = *v43;
          }

          v43 = *v43;
          if (!v43)
          {
            goto LABEL_175;
          }
        }

        if (v43[1] == (&dword_0 + 3))
        {
          v45 = *v43;
          v46 = *v45;
          v47 = *(v45 + 2);
          if (v46 == 24415 && v47 == 67)
          {
            if (std::operator==[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v167, "t"))
            {
              v26 = 245;
            }

            else
            {
              v124 = v168;
              if ((v168 & 0x80u) != 0)
              {
                v124 = v167[1];
              }

              if (!v124)
              {
                v125 = v171;
                if ((v171 & 0x80u) != 0)
                {
                  v125 = v170;
                }

                if ((v25 & (v125 == 0)) != 0)
                {
                  v26 = 230;
                }
              }
            }
          }
        }
      }

LABEL_175:
      if (*(v14 + 16) != 1 || *(v173 + 8) != 103)
      {
        goto LABEL_193;
      }

      v126 = *(v14 + 18);
      if (v126 != 2 && (v126 != 5 || *(v14 + 8) < 2u))
      {
        goto LABEL_180;
      }

      Node = swift::Demangle::__runtime::NodeFactory::createNode(a3, 186);
      v130 = Node;
      v131 = *(v14 + 18);
      v132 = v14;
      if ((v131 - 1) >= 2)
      {
        if (v131 != 5 || !*(v14 + 8))
        {
          v133 = 0;
LABEL_187:
          swift::Demangle::__runtime::Node::addChild(Node, v133, a3, v128, v129);
          swift::Demangle::__runtime::Node::addChild(v130, v173, a3, v134, v135);
          v173 = v130;
          v136 = *(v14 + 18);
          if (v136 != 2)
          {
            if (v136 != 5 || *(v14 + 8) < 2u)
            {
              v14 = 0;
LABEL_193:
              if (v172 == 1)
              {
                v137 = (v171 & 0x80u) == 0 ? v171 : v170;
                if (v137)
                {
                  if ((v171 & 0x80u) == 0)
                  {
                    v138 = &v169;
                  }

                  else
                  {
                    v138 = v169;
                  }

                  v139 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 103, v138, v137);
                  v140 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 216);
                  swift::Demangle::__runtime::Node::addChild(v140, v139, a3, v141, v142);
                  swift::Demangle::__runtime::Node::addChild(v140, v173, a3, v143, v144);
                  v173 = v140;
                }
              }

              v36 = swift::Demangle::__runtime::NodeFactory::createNode(a3, v26);
              swift::Demangle::__runtime::Node::addChild(v36, v14, a3, v145, v146);
              v42 = v173;
              v41 = v36;
              goto LABEL_203;
            }

            v14 = *v14;
          }

          v14 = *(v14 + 8);
          goto LABEL_193;
        }

        v132 = *v14;
      }

      v133 = *v132;
      goto LABEL_187;
    }

    if (v21 != 4)
    {
      if (v21 != 16)
      {
        goto LABEL_205;
      }

      if ((swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::Demangle::__runtime::Demangler &,int)::{lambda(void)#1}::operator()(&v162) & 1) == 0)
      {
        goto LABEL_180;
      }

      v25 = 0;
      v26 = 25;
      goto LABEL_83;
    }

    if (v178 != 1)
    {
      goto LABEL_180;
    }

    result = 0;
    if (v175[0] != 1 || !v177)
    {
      goto LABEL_205;
    }

    v28 = *(v14 + 16);
    if (v28 == 163)
    {
      v41 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 323);
      v36 = v41;
      v42 = v14;
      goto LABEL_203;
    }

    if (v28 != 1)
    {
      goto LABEL_180;
    }

    *__str = v176;
    v161 = v177;
    result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangleAnonymousContextName(a1, __str, a3);
    if (!result)
    {
      goto LABEL_205;
    }

    v29 = result;
    if (*(result + 16) == 101)
    {
      v30 = *(result + 18);
      if ((v30 - 1) >= 2)
      {
        if (v30 != 5 || !*(result + 8))
        {
          v29 = 0;
          goto LABEL_214;
        }

        v29 = *result;
      }

      v29 = *v29;
    }

LABEL_214:
    v150 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 323);
    swift::Demangle::__runtime::Node::addChild(v150, v29, a3, v151, v152);
    result = v150;
    goto LABEL_205;
  }

  if ((*v20 & 0x1Fu) > 1)
  {
    if (v21 != 2)
    {
      if (v21 != 3)
      {
        goto LABEL_205;
      }

      if (!swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::Demangle::__runtime::Demangler &,int)::{lambda(void)#1}::operator()(&v162))
      {
        goto LABEL_180;
      }

      v25 = 0;
      v26 = 190;
      goto LABEL_83;
    }

    v31 = *a2;
    v32 = *(a2 + 8);
    (*(**(a1 + 2800) + 48))(__str);
    snprintf(__str, 0x12uLL, "$%llx", *a2);
    v33 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 1);
    v159[0] = 0;
    v159[1] = 0;
    v34 = strlen(__str);
    swift::Demangle::__runtime::CharVector::append(v159, __str, v34, a3);
    v35 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 103, v159);
    v36 = v33;
    swift::Demangle::__runtime::Node::addChild(v33, v35, a3, v37, v38);
    if (!v14)
    {
LABEL_204:
      result = v36;
      goto LABEL_205;
    }

    v41 = v33;
    v42 = v14;
LABEL_203:
    swift::Demangle::__runtime::Node::addChild(v41, v42, a3, v39, v40);
    goto LABEL_204;
  }

  if (!v21)
  {
    if (!v14)
    {
      if (v20)
      {
        v20 = a2[2];
        v27 = v20 + 8;
      }

      else
      {
        v27 = &dword_8;
      }

      v116 = *v27;
      v117 = v27 - v20 + *a2 + v116;
      if (v116)
      {
        v118 = v117;
      }

      else
      {
        v118 = 0;
      }

      if (v116)
      {
        v119 = *(a2 + 8);
      }

      else
      {
        v119 = 0;
      }

      memset(__str, 0, sizeof(__str));
      v161 = 0;
      v120 = (*(**(a1 + 2800) + 16))(*(a1 + 2800), v118, v119, __str);
      result = 0;
      if (v120)
      {
        if ((v161 & 0x8000000000000000) == 0)
        {
          v121 = __str;
        }

        else
        {
          v121 = *__str;
        }

        if ((v161 & 0x8000000000000000) == 0)
        {
          v122 = SHIBYTE(v161);
        }

        else
        {
          v122 = *&__str[8];
        }

        result = swift::Demangle::__runtime::NodeFactory::createNode(a3, 163, v121, v122);
      }

      if (SHIBYTE(v161) < 0)
      {
        v123 = result;
        operator delete(*__str);
        result = v123;
      }

      goto LABEL_205;
    }

LABEL_180:
    result = 0;
    goto LABEL_205;
  }

  if (!v14)
  {
    goto LABEL_180;
  }

  if (v20)
  {
    v22 = a2[2];
    v20 = v22;
    v23 = v22 + 8;
  }

  else
  {
    v22 = 0;
    v23 = &dword_8;
  }

  v49 = *v23;
  v50 = (v23 - v20 + *a2 + v49);
  if (v49)
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  if (v49)
  {
    v52 = *(a2 + 8);
  }

  else
  {
    v52 = 0;
  }

  result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v51, v52, 0, a3);
  if (result)
  {
    v53 = result;
    v54 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 73);
    swift::Demangle::__runtime::Node::addChild(v54, v14, a3, v55, v56);
    v158 = v54;
    swift::Demangle::__runtime::Node::addChild(v54, v53, a3, v57, v58);
    GenericRequirements = swift::TrailingGenericContextObjects<swift::TargetExtensionContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader>::getGenericRequirements(v22);
    if (v60)
    {
      v61 = GenericRequirements;
      v62 = v60;
      v156 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 44);
      v63 = 0;
      v64 = 12 * v62;
      v65 = v61 + 8;
      v66 = (v61 + 8);
      result = v158;
      while (1)
      {
        if (v63)
        {
          goto LABEL_205;
        }

        v67 = *(a2 + 8);
        v68 = a2[2];
        if (v68)
        {
          v69 = a2[2];
        }

        v70 = *(v66 - 1);
        if (v70)
        {
          v71 = (v65 + *a2 + v70 - v68 - 4);
        }

        else
        {
          v71 = 0;
        }

        if (!v70)
        {
          v67 = 0;
        }

        v4 = v67 | v4 & 0xFFFFFFFFFFFFFF00;
        MangledName = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v71, v4, 0, a3);
        if (!MangledName)
        {
          break;
        }

        v75 = MangledName;
        v76 = *(v66 - 2) & 0x1F;
        result = v158;
        if ((v76 - 1) < 2)
        {
          v91 = *(a2 + 8);
          v92 = a2[2];
          if (v92)
          {
            v93 = a2[2];
          }

          v94 = *v66;
          if (v94)
          {
            v95 = (v65 + *a2 + v94 - v92);
          }

          else
          {
            v95 = 0;
          }

          if (!v94)
          {
            v91 = 0;
          }

          v157 = v91 | v157 & 0xFFFFFFFFFFFFFF00;
          v96 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v95, v157, 0, a3);
          if (!v96)
          {
            break;
          }

          v97 = v96;
          if ((*(v66 - 2) & 0x1F) == 1)
          {
            v98 = 40;
          }

          else
          {
            v98 = 37;
          }

          v99 = swift::Demangle::__runtime::NodeFactory::createNode(a3, v98);
          swift::Demangle::__runtime::Node::addChild(v99, v75, a3, v100, v101);
          swift::Demangle::__runtime::Node::addChild(v99, v97, a3, v102, v103);
          swift::Demangle::__runtime::Node::addChild(v156, v99, a3, v104, v105);
          v63 = 0;
        }

        else if (v76)
        {
          if (v76 != 31)
          {
            v63 = 0;
            goto LABEL_112;
          }

          v77 = a2[2];
          if (v77)
          {
            v78 = a2[2];
          }

          v79 = *a2 - v77;
          v80 = *(a2 + 8) | v154 & 0xFFFFFFFFFFFFFF00;
          *__str = 0;
          v154 = v80;
          v81 = (*(**(a1 + 2800) + 32))(*(a1 + 2800), v65 + v79);
          if (*__str)
          {
            v82 = 0;
          }

          else
          {
            v82 = v81;
          }

          if (v82 == 1)
          {
            v83 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 42);
            swift::Demangle::__runtime::Node::addChild(v83, v75, a3, v84, v85);
            v86 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 103, "C");
            swift::Demangle::__runtime::Node::addChild(v83, v86, a3, v87, v88);
            swift::Demangle::__runtime::Node::addChild(v156, v83, a3, v89, v90);
          }

          v63 = v82 ^ 1;
        }

        else
        {
          v106 = a2[2];
          *__str = *a2;
          v161 = v106;
          *__str = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::resolveRelativeIndirectProtocol<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>(a1, __str, v66);
          *&__str[8] = *__str;
          v155 = v155 & 0xFFFFFFFFFFFFFF00 | v107;
          v161 = v155;
          v108 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readProtocol<swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::Demangle::__runtime::Demangler &,int)::ProtocolResolver>(a1, __str, a3);
          v63 = v108 == 0;
          if (v108)
          {
            v109 = v108;
            v153 = swift::Demangle::__runtime::NodeFactory::createNode(a3, 37);
            swift::Demangle::__runtime::Node::addChild(v153, v75, a3, v110, v111);
            swift::Demangle::__runtime::Node::addChild(v153, v109, a3, v112, v113);
            swift::Demangle::__runtime::Node::addChild(v156, v153, a3, v114, v115);
          }
        }

        result = v158;
LABEL_112:
        v66 += 3;
        v65 += 12;
        v64 -= 12;
        if (!v64)
        {
          if (v63)
          {
            goto LABEL_205;
          }

          swift::Demangle::__runtime::Node::addChild(v158, v156, a3, v73, v74);
          break;
        }
      }
    }

    result = v158;
  }

LABEL_205:
  if (v172 != 1)
  {
    goto LABEL_46;
  }

  if (v171 < 0)
  {
    v147 = result;
    operator delete(v169);
    result = v147;
    if ((v168 & 0x80000000) == 0)
    {
LABEL_208:
      if ((__p[23] & 0x80000000) != 0)
      {
        goto LABEL_212;
      }

      goto LABEL_46;
    }
  }

  else if ((v168 & 0x80000000) == 0)
  {
    goto LABEL_208;
  }

  v148 = result;
  operator delete(v167[0]);
  result = v148;
  if ((__p[23] & 0x80000000) != 0)
  {
LABEL_212:
    v149 = result;
    operator delete(*__p);
    result = v149;
  }

LABEL_46:
  if (v178 == 1 && (v175[0] & 1) == 0 && SHIBYTE(v177) < 0)
  {
    v24 = result;
    operator delete(v176);
    return v24;
  }

  return result;
}

void swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readParentContextDescriptor(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *v10 = *a2;
  *&v10[16] = *(a2 + 16);
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::resolveRelativeIndirectableField<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const,swift::RelativeIndirectablePointer<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const,true,int,swift::RuntimeTarget<8u>::StoredSignedPointer>>(a1, v10, (*&v10[16] + 4), __p);
  if ((v17 & 1) == 0)
  {
LABEL_15:
    *a3 = 0;
    *(a3 + 32) = 0;
    goto LABEL_22;
  }

  if (v13 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v13 >= 0)
  {
    v6 = v13;
  }

  else
  {
    v6 = __p[1];
  }

  if (v6)
  {
    v7 = v14 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v10[0] = 0;
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v11) = v6;
    memmove(&v10[8], v5, v6);
    v10[v6 + 8] = 0;
    *a3 = v10[0];
    *(a3 + 8) = *&v10[8];
    *(a3 + 24) = v11;
  }

  else
  {
    if (v15)
    {
      swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v15, v16, v10);
      v8 = *&v10[16];
      if (*&v10[16])
      {
        v9 = *v10;
        *a3 = 1;
        *(a3 + 8) = v9;
        *(a3 + 24) = v8;
        *(a3 + 32) = 1;
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    *a3 = 1;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  *(a3 + 32) = 1;
LABEL_22:
  if (v17 == 1 && v13 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::adoptAnonymousContextName(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  *a5 = 0;
  if (*(a3 + 32) != 1)
  {
    return 0;
  }

  v49 = v5;
  v50 = v6;
  v7 = *(a3 + 24);
  if (*a3 != 1 || v7 == 0)
  {
    return 0;
  }

  v48 = *(a3 + 8);
  v9 = *(a2 + 16);
  v10 = *v9;
  if (v9)
  {
    v11 = (*v9 & 0x10) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v14 = 0;
    v12 = 0;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = v9 != 0;
    v12 = 0;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  if ((*v9 & 0x1F) == 3)
  {
    v12 = v9 != 0;
  }

LABEL_17:
  if (!v14 && !v12 || (*v7 & 0x1F) != 2 || !v7)
  {
    return 0;
  }

  v45 = *(a3 + 8);
  v46 = v7;
  result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangleAnonymousContextName(a1, &v45, a4);
  if (!result)
  {
    return result;
  }

  v19 = a2;
  if (*(result + 16) == 101)
  {
    v20 = *(result + 18);
    v21 = a1;
    if ((v20 - 1) >= 2)
    {
      if (v20 != 5 || !*(result + 8))
      {
        result = 0;
        goto LABEL_29;
      }

      result = *result;
    }

    result = *result;
  }

  else
  {
    v21 = a1;
  }

LABEL_29:
  v22 = *(result + 18);
  v23 = result;
  if (v22 != 2)
  {
    if (v22 != 5 || *(result + 8) < 2u)
    {
      return 0;
    }

    v23 = *result;
  }

  v24 = *(v23 + 8);
  v25 = *(v24 + 8);
  if (v25 != 186 && v25 != 146)
  {
    return 0;
  }

  v26 = *(v24 + 18);
  v27 = v24;
  if (v26 != 2)
  {
    if (v26 != 5 || *(v24 + 2) < 2u)
    {
      return 0;
    }

    v27 = *v24;
  }

  v28 = v27[1];
  if (*(v28 + 16) != 103 || *(v28 + 18) != 3)
  {
    return 0;
  }

  v29 = result;
  LOBYTE(v45) = 0;
  v47 = 0;
  *__p = *v19;
  v39 = *(v19 + 16);
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptorName(v21, __p, &v45, v42);
  v30 = v44;
  if (v44 != 1)
  {
    v24 = 0;
    goto LABEL_67;
  }

  if (v43 >= 0)
  {
    v31 = v42;
  }

  else
  {
    v31 = v42[0];
  }

  if (v43 >= 0)
  {
    v32 = v43;
  }

  else
  {
    v32 = v42[1];
  }

  if (v32 == *(v28 + 8) && (!v32 || !memcmp(v31, *v28, v32)))
  {
    v36 = v48;
    v37 = v7;
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readParentContextDescriptor(a1, &v36, __p);
    std::__optional_move_assign_base<swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::ParentContextDescriptorRef,false>::operator=[abi:nn200100](a3, __p);
    if (v41 == 1 && (__p[0] & 1) == 0 && v40 < 0)
    {
      operator delete(__p[1]);
    }

    v33 = *(v29 + 18);
    if ((v33 - 1) >= 2)
    {
      if (v33 != 5 || !*(v29 + 8))
      {
        v35 = 0;
        goto LABEL_66;
      }

      v34 = *v29;
    }

    else
    {
      v34 = v29;
    }

    v35 = *v34;
LABEL_66:
    *a5 = v35;
    v30 = v44;
    goto LABEL_67;
  }

  v24 = 0;
  v30 = 1;
LABEL_67:
  if ((v30 & 1) != 0 && v43 < 0)
  {
    operator delete(v42[0]);
  }

  std::optional<swift::TypeImportInfo<std::string>>::~optional(&v45);
  return v24;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readProtocol<swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::Demangle::__runtime::Demangler &,int)::ProtocolResolver>(uint64_t a1, uint64_t a2, swift::Demangle::__runtime::NodeFactory *a3)
{
  v6 = *a2 & 0xFFFFFFFFFFFFFFFELL;
  if (!*(a2 + 16))
  {
    v6 &= *(a1 + 2816);
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v6, *(a2 + 16), &v13);
  v7 = v14;
  if (!v14)
  {
    return 0;
  }

  v15 = v13;
  v16 = v14;
  result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, &v15, a3, 50);
  if (result && ((*v7 & 0x10) != 0 || (*v7 & 0x1F) == 3))
  {
    v9 = result;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(a3, 243);
    swift::Demangle::__runtime::Node::addChild(Node, v9, a3, v11, v12);
    return Node;
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::demangleAnonymousContextName(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a2 + 16))
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  if ((v5[2] & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v8);
  ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(v8);
  if (!v11)
  {
    v12 = 0;
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v12 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v11 - 2);
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_11:
  v13 = v8;
LABEL_14:
  if ((*v13 & 0x80) != 0)
  {
    if (v8)
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    v14 = (*(v15 + 7) >> 2) & 1;
  }

  else
  {
    v14 = 0;
  }

  v16 = (TrailingObjectsImpl + 12 * v12 + 4 * v14 + 4 * swift::ABI::TrailingObjects<swift::TargetAnonymousContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetMangledContextName<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericValueDescriptor>(v8));
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = *(a2 + 16);
  }

  v19 = *v16;
  v20 = v16 + *a2 - v17 + v19;
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v19)
  {
    v22 = *(a2 + 8);
  }

  else
  {
    v22 = 0;
  }

  return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v21, v22, 1, a3);
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,unsigned int)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,unsigned int)#1}>,swift::reflection::TypeRef const* ()(swift::remote::RemoteAddress,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E0A18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,unsigned int)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,unsigned int)#1}>,swift::reflection::TypeRef const* ()(swift::remote::RemoteAddress,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readUnderlyingTypeForOpaqueTypeDescriptor(*(a1 + 8), *a2, a2[1], *a3, v4);
  if (v5 == 1)
  {
    (v4[1])(v4[0], 3, 0);
  }

  else if (!v5)
  {
    return v4[0];
  }

  return 0;
}

void *swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readUnderlyingTypeForOpaqueTypeDescriptor@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v10[1] = 0;
  v10[2] = 0;
  v11 = 0;
  v12 = 2400;
  v13 = 0;
  v14 = 0;
  v49 = 0;
  v10[0] = off_E13E8;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
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
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v19 = 0u;
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
  v47 = 0;
  UnderlyingTypeManglingForOpaqueTypeDescriptor = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readUnderlyingTypeManglingForOpaqueTypeDescriptor(a1, a2, a3, a4, v10);
  if (UnderlyingTypeManglingForOpaqueTypeDescriptor)
  {
    v50 = a1 + 328;
    swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v50, UnderlyingTypeManglingForOpaqueTypeDescriptor, 0, 0, v8, a5);
  }

  else
  {
    *(a5 + 16) = 1;
    *a5 = "Failed to read type mangling for descriptor.";
    *(a5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
  }

  v10[0] = off_E13E8;
  if (v49 == &v48)
  {
    (*(*v49 + 32))(v49);
  }

  else if (v49)
  {
    (*(*v49 + 40))();
  }

  v10[0] = off_E13C0;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v11);
  if (v13)
  {
    *(v13 + 48) = 0;
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readUnderlyingTypeManglingForOpaqueTypeDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, a2, a3, &v24);
  if (!v26)
  {
    return 0;
  }

  if ((*v26 & 0x1F) != 4 || HIWORD(*v26) <= a4)
  {
    return 0;
  }

  v10 = v26;
  v11 = v24;
  v12 = v25;
  v13 = v26;
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetOpaqueTypeDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getTrailingObjectsImpl(v26);
  ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetOpaqueTypeDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::getConditionalInvertibleProtocolRequirementCounts(v13);
  if (v16)
  {
    v17 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v16 - 2);
  }

  else
  {
    v17 = 0;
  }

  if ((*v13 & 0x80) != 0)
  {
    v18 = (*(v13 + 7) >> 2) & 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = (TrailingObjectsImpl + 12 * v17 + 4 * v18 + 4 * swift::ABI::TrailingObjects<swift::TargetOpaqueTypeDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::RelativeDirectPointer<char const,true,int,void>,swift::InvertibleProtocolSet>::callNumTrailingObjects<swift::GenericValueDescriptor>(v13) + 4 * a4);
  v20 = *v19;
  v21 = v19 + v11 - v10 + v20;
  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v20)
  {
    v23 = v12;
  }

  else
  {
    v23 = 0;
  }

  return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v22, v23, 0, a5);
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,unsigned int)#2},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,unsigned int)#2}>,std::unique_ptr<void const,std::function<void ()(void const*)>> ()(swift::remote::RemoteAddress,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E0A60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,std::string &)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,std::string &)#1}>,BOOL ()(swift::remote::RemoteAddress,std::string &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E0AA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,unsigned int)#3},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress,unsigned int)#3}>,std::optional<swift::remote::RemoteAbsolutePointer> ()(swift::remote::RemoteAddress,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E0AF0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress)#1}>,std::optional<swift::remote::RemoteAbsolutePointer> ()(swift::remote::RemoteAddress)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E0B38;
  a2[1] = v2;
  return result;
}

double std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(swift::remote::RemoteAddress)#1}>,std::optional<swift::remote::RemoteAbsolutePointer> ()(swift::remote::RemoteAddress)>::operator()@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v5 = *a2;
  (*(**(*(a1 + 8) + 2800) + 72))(&v7);
  *a3 = v7;
  *(a3 + 16) = v8;
  result = *&v9;
  *(a3 + 24) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = 1;
  return result;
}

uint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(std::string,unsigned int)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(std::string,unsigned int)#1}>,std::optional<unsigned long long> ()(std::string,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E0B80;
  a2[1] = v2;
  return result;
}

unint64_t std::__function::__func<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(std::string,unsigned int)#1},std::allocator<swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(std::string,unsigned int)#1}>,std::optional<unsigned long long> ()(std::string,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int *a3)
{
  *__p = *a2;
  v6 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  result = swift::reflection::TypeRefBuilder::TypeRefBuilder<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>(swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder> &,swift::remote::ExternalTypeRefCache *,swift::reflection::DescriptorFinder *)::{lambda(std::string,unsigned int)#1}::operator()(a1 + 8, __p, *a3);
  if (SHIBYTE(v6) < 0)
  {
    v4 = result;
    operator delete(__p[0]);
    return v4;
  }

  return result;
}

void SwiftReflectionContext::~SwiftReflectionContext(SwiftReflectionContext *this)
{
  v2 = *(this + 11);
  if (!v2)
  {
LABEL_35:
    v15 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<std::string (*)(unsigned long long,unsigned long long),std::allocator<std::string (*)(unsigned long long,unsigned long long)>,std::string ()(unsigned long long,unsigned long long)>::~__func(v15);
    return;
  }

  (*(*v2 + 48))(v2);
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *(v3 + 24);
      if (!v5)
      {
        break;
      }

      if (v3 == v5)
      {
        v17 = v16;
        (*(**(v3 + 24) + 24))(*(v3 + 24), v16);
        v6 = v17;
        if (!v17)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v6 = (*(*v5 + 16))(v5);
        v17 = v6;
        if (!v6)
        {
          goto LABEL_35;
        }
      }

      (*(*v6 + 48))(v6);
      if (v17 == v16)
      {
        (*(*v17 + 32))(v17);
      }

      else if (v17)
      {
        (*(*v17 + 40))();
      }

      v3 += 32;
      if (v3 == v4)
      {
        goto LABEL_14;
      }
    }

    v17 = 0;
    goto LABEL_35;
  }

LABEL_14:
  v7 = *(this + 11);
  if (v7 == (this + 64))
  {
    (*(*v7 + 32))(v7);
    v8 = *(this + 5);
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = *(this + 5);
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  *(this + 6) = v8;
  operator delete(v8);
LABEL_19:
  v9 = *(this + 2);
  if (v9)
  {
    v10 = *(this + 3);
    v11 = *(this + 2);
    if (v10 != v9)
    {
      v12 = v10 - 32;
      do
      {
        v13 = *(v10 - 8);
        v10 -= 32;
        if (v10 == v13)
        {
          (*(*v13 + 32))(v13);
        }

        else if (v13)
        {
          (*(*v13 + 40))(v13);
        }

        v12 -= 32;
      }

      while (v10 != v9);
      v11 = *(this + 2);
    }

    *(this + 3) = v9;
    operator delete(v11);
  }

  v14 = *(this + 2);
  if (v14 != -1)
  {
    (off_E0968[v14])(v16, this);
  }

  *(this + 2) = -1;
}

uint64_t std::__function::__func<std::string (*)(unsigned long long,unsigned long long),std::allocator<std::string (*)(unsigned long long,unsigned long long)>,std::string ()(unsigned long long,unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_E0BC8;
  a2[1] = v2;
  return result;
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = a2 + a3;
    if ((*(v6 + 8) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 144);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      v15 = v14;
      if (v19 < 0)
      {
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_addReflectionInfo::$_0>(swift_reflection_addReflectionInfo::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = ***a1;
  if (v2[2] || v2[5] || v2[8] || v2[11] || v2[14] || v2[17])
  {
    std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_addReflectionInfo::$_0>(swift_reflection_addReflectionInfo::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>();
  }

  v3 = *a2;
  v4 = v2[18];
  v5 = v2[19];
  v6 = *v2;
  v7 = v2[1] - *v2;
  v46 = (*v2 - v4 + v5);
  v47 = v6;
  v48 = v7;
  v8 = v5 - v4;
  v9 = v2[3];
  v10 = v2[4] - v9;
  v49 = (v8 + v9);
  v50 = v9;
  v51 = v10;
  v11 = v2[6];
  v12 = v2[7] - v11;
  v52 = (v8 + v11);
  v53 = v11;
  v54 = v12;
  v13 = v2[9];
  v14 = v2[10] - v13;
  v55 = (v8 + v13);
  v56 = v13;
  v57 = v14;
  v15 = v2[12];
  v16 = v2[13] - v15;
  v58 = (v8 + v15);
  v59 = v15;
  v60 = v16;
  v17 = v2[15];
  v18 = v2[16] - v17;
  v61 = (v8 + v17);
  v62 = v17;
  v63 = v18;
  *&v64 = 0;
  BYTE8(v64) = 0;
  v69 = 0;
  v68 = 0;
  v66 = 0;
  *&v67 = 0;
  v65 = 0;
  BYTE8(v67) = 0;
  v70 = v72;
  v19 = v46;
  v22 = v49;
  v25 = v52;
  v28 = v55;
  v31 = v58;
  v34 = v61;
  v37 = v64;
  v71 = 0x100000000;
  v20 = v6;
  v21 = v7;
  v23 = v9;
  v24 = v10;
  v26 = v11;
  v27 = v12;
  v29 = v13;
  v30 = v14;
  v32 = v15;
  v33 = v16;
  v35 = v17;
  v36 = v18;
  v38 = 0;
  v39 = 0;
  v40 = v67;
  v41 = 0;
  v42 = 0;
  v43 = v45;
  v44 = 0x100000000;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(v3, &v19);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v70 != v72)
  {
    free(v70);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_addReflectionInfo::$_0>(swift_reflection_addReflectionInfo::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = ***a1;
  if (v2[2] || v2[5] || v2[8] || v2[11] || v2[14] || v2[17])
  {
    std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_addReflectionInfo::$_0>(swift_reflection_addReflectionInfo::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>();
  }

  v3 = *a2;
  v4 = v2[18];
  v5 = v2[19];
  v6 = *v2;
  v7 = v2[1] - *v2;
  v46 = (*v2 - v4 + v5);
  v47 = v6;
  v48 = v7;
  v8 = v5 - v4;
  v9 = v2[3];
  v10 = v2[4] - v9;
  v49 = (v8 + v9);
  v50 = v9;
  v51 = v10;
  v11 = v2[6];
  v12 = v2[7] - v11;
  v52 = (v8 + v11);
  v53 = v11;
  v54 = v12;
  v13 = v2[9];
  v14 = v2[10] - v13;
  v55 = (v8 + v13);
  v56 = v13;
  v57 = v14;
  v15 = v2[12];
  v16 = v2[13] - v15;
  v58 = (v8 + v15);
  v59 = v15;
  v60 = v16;
  v17 = v2[15];
  v18 = v2[16] - v17;
  v61 = (v8 + v17);
  v62 = v17;
  v63 = v18;
  *&v64 = 0;
  BYTE8(v64) = 0;
  v69 = 0;
  v68 = 0;
  v66 = 0;
  *&v67 = 0;
  v65 = 0;
  BYTE8(v67) = 0;
  v70 = v72;
  v19 = v46;
  v22 = v49;
  v25 = v52;
  v28 = v55;
  v31 = v58;
  v34 = v61;
  v37 = v64;
  v71 = 0x100000000;
  v20 = v6;
  v21 = v7;
  v23 = v9;
  v24 = v10;
  v26 = v11;
  v27 = v12;
  v29 = v13;
  v30 = v14;
  v32 = v15;
  v33 = v16;
  v35 = v17;
  v36 = v18;
  v38 = 0;
  v39 = 0;
  v40 = v67;
  v41 = 0;
  v42 = 0;
  v43 = v45;
  v44 = 0x100000000;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(v3, &v19);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v70 != v72)
  {
    free(v70);
  }
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(uint64_t a1, uint64_t a2)
{
  v18 = *a2;
  v3 = *(a2 + 24);
  v19 = *(a2 + 16);
  v20 = v3;
  v21 = *(a2 + 32);
  v4 = *(a2 + 56);
  v22 = *(a2 + 48);
  v23 = v4;
  v24 = *(a2 + 64);
  v5 = *(a2 + 88);
  v25 = *(a2 + 80);
  v26 = v5;
  v27 = *(a2 + 96);
  v6 = *(a2 + 120);
  v28 = *(a2 + 112);
  v29 = v6;
  v30 = *(a2 + 128);
  v7 = *(a2 + 152);
  v31 = *(a2 + 144);
  v32 = v7;
  v33 = *(a2 + 160);
  v8 = *(a2 + 184);
  v34 = *(a2 + 176);
  v35 = v8;
  v36 = *(a2 + 192);
  v9 = *(a2 + 216);
  v37 = *(a2 + 208);
  v38 = v9;
  v39 = *(a2 + 224);
  v10 = *(a2 + 248);
  v40 = *(a2 + 240);
  v41 = v10;
  v42 = v44;
  v43 = 0x100000000;
  if (&v18 == a2)
  {
    goto LABEL_9;
  }

  v11 = *(a2 + 264);
  if (!v11)
  {
    goto LABEL_9;
  }

  if (v11 < 2)
  {
    v15 = 16;
    v14 = v44;
    goto LABEL_7;
  }

  v12 = a2;
  __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v11, 16);
  v13 = *(v12 + 264);
  if (v13)
  {
    a2 = v12;
    v14 = v42;
    v15 = 16 * v13;
LABEL_7:
    memcpy(v14, *(a2 + 256), v15);
  }

  LODWORD(v43) = v11;
LABEL_9:
  result = swift::reflection::TypeRefBuilder::addReflectionInfo((a1 + 328), &v18);
  if (v42 != v44)
  {
    v17 = result;
    free(v42);
    return v17;
  }

  return result;
}

uint64_t swift::reflection::TypeRefBuilder::addReflectionInfo(uint64_t *a1, __int128 *a2)
{
  v31 = *a2;
  v3 = *(a2 + 3);
  v32 = *(a2 + 2);
  v33 = v3;
  v34 = a2[2];
  v4 = *(a2 + 7);
  v35 = *(a2 + 6);
  v36 = v4;
  v37 = a2[4];
  v5 = *(a2 + 11);
  v38 = *(a2 + 10);
  v39 = v5;
  v40 = a2[6];
  v6 = *(a2 + 15);
  v41 = *(a2 + 14);
  v42 = v6;
  v43 = a2[8];
  v7 = *(a2 + 19);
  v44 = *(a2 + 18);
  v45 = v7;
  v46 = a2[10];
  v8 = *(a2 + 23);
  v47 = *(a2 + 22);
  v48 = v8;
  v49 = a2[12];
  v9 = *(a2 + 27);
  v50 = *(a2 + 26);
  v51 = v9;
  v52 = a2[14];
  v10 = *(a2 + 31);
  v53 = *(a2 + 30);
  v54 = v10;
  __src = v57;
  v56 = 0x100000000;
  if (&v31 != a2)
  {
    v11 = *(a2 + 66);
    if (v11)
    {
      if (v11 < 2)
      {
        v15 = 16;
        v14 = v57;
      }

      else
      {
        v12 = a2;
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v57, v11, 16);
        v13 = *(v12 + 66);
        if (!v13)
        {
LABEL_8:
          LODWORD(v56) = v11;
          goto LABEL_9;
        }

        a2 = v12;
        v14 = __src;
        v15 = 16 * v13;
      }

      memcpy(v14, *(a2 + 32), v15);
      goto LABEL_8;
    }
  }

LABEL_9:
  v16 = a1[238];
  if (v16 >= a1[239])
  {
    v28 = std::vector<swift::reflection::ReflectionInfo>::__emplace_back_slow_path<swift::reflection::ReflectionInfo const&>(a1 + 237, &v31);
    goto LABEL_20;
  }

  *v16 = v31;
  v17 = v33;
  *(v16 + 16) = v32;
  *(v16 + 24) = v17;
  *(v16 + 32) = v34;
  v18 = v36;
  *(v16 + 48) = v35;
  *(v16 + 56) = v18;
  *(v16 + 64) = v37;
  v19 = v39;
  *(v16 + 80) = v38;
  *(v16 + 88) = v19;
  *(v16 + 96) = v40;
  v20 = v42;
  *(v16 + 112) = v41;
  *(v16 + 120) = v20;
  *(v16 + 128) = v43;
  v21 = v45;
  *(v16 + 144) = v44;
  *(v16 + 152) = v21;
  *(v16 + 160) = v46;
  v22 = v48;
  *(v16 + 176) = v47;
  *(v16 + 184) = v22;
  *(v16 + 192) = v49;
  v23 = v51;
  *(v16 + 208) = v50;
  *(v16 + 216) = v23;
  *(v16 + 224) = v52;
  v24 = v54;
  *(v16 + 240) = v53;
  *(v16 + 248) = v24;
  v25 = (v16 + 272);
  *(v16 + 256) = v16 + 272;
  *(v16 + 264) = 0x100000000;
  if (v16 != &v31)
  {
    v26 = v56;
    if (v56)
    {
      if (v56 < 2)
      {
        v27 = 16;
      }

      else
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 256, v16 + 272, v56, 16);
        if (!v56)
        {
LABEL_18:
          *(v16 + 264) = v26;
          goto LABEL_19;
        }

        v25 = *(v16 + 256);
        v27 = 16 * v56;
      }

      memcpy(v25, __src, v27);
      goto LABEL_18;
    }
  }

LABEL_19:
  v28 = v16 + 288;
LABEL_20:
  a1[238] = v28;
  v29 = a1[237];
  if (__src != v57)
  {
    free(__src);
  }

  return 954437177 * ((v28 - v29) >> 5) - 1;
}

uint64_t std::vector<swift::reflection::ReflectionInfo>::__emplace_back_slow_path<swift::reflection::ReflectionInfo const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0xE38E38E38E38E3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 5) >= 0x71C71C71C71C71)
  {
    v5 = 0xE38E38E38E38E3;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xE38E38E38E38E3)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = 32 * ((a1[1] - *a1) >> 5);
  std::allocator<swift::reflection::ReflectionInfo>::construct[abi:nn200100]<swift::reflection::ReflectionInfo,swift::reflection::ReflectionInfo const&>(a1, v6, a2);
  v7 = 288 * v2 + 288;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      std::allocator<swift::reflection::ReflectionInfo>::construct[abi:nn200100]<swift::reflection::ReflectionInfo,swift::reflection::ReflectionInfo>(a1, v12, v11);
      v11 += 288;
      v12 += 288;
    }

    while (v11 != v9);
    v13 = v8 + 272;
    do
    {
      v15 = *(v13 - 2);
      if (v13 != v15)
      {
        free(v15);
      }

      v14 = v13 + 16;
      v13 += 288;
    }

    while (v14 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void *std::allocator<swift::reflection::ReflectionInfo>::construct[abi:nn200100]<swift::reflection::ReflectionInfo,swift::reflection::ReflectionInfo const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v3 = *(a3 + 24);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a3 + 32);
  v4 = *(a3 + 56);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 56) = v4;
  *(a2 + 64) = *(a3 + 64);
  v5 = *(a3 + 88);
  *(a2 + 80) = *(a3 + 80);
  *(a2 + 88) = v5;
  *(a2 + 96) = *(a3 + 96);
  v6 = *(a3 + 120);
  *(a2 + 112) = *(a3 + 112);
  *(a2 + 120) = v6;
  *(a2 + 128) = *(a3 + 128);
  v7 = *(a3 + 152);
  *(a2 + 144) = *(a3 + 144);
  *(a2 + 152) = v7;
  *(a2 + 160) = *(a3 + 160);
  v8 = *(a3 + 184);
  *(a2 + 176) = *(a3 + 176);
  *(a2 + 184) = v8;
  *(a2 + 192) = *(a3 + 192);
  v9 = *(a3 + 216);
  *(a2 + 208) = *(a3 + 208);
  *(a2 + 216) = v9;
  *(a2 + 224) = *(a3 + 224);
  v10 = *(a3 + 248);
  *(a2 + 240) = *(a3 + 240);
  *(a2 + 248) = v10;
  v11 = (a2 + 272);
  *(a2 + 256) = a2 + 272;
  *(a2 + 264) = 0x100000000;
  if (a2 != a3)
  {
    v12 = *(a3 + 264);
    if (v12)
    {
      if (v12 < 2)
      {
        v17 = 16;
      }

      else
      {
        v14 = a3;
        result = __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 256, a2 + 272, *(a3 + 264), 16);
        v16 = *(v14 + 264);
        if (!v16)
        {
LABEL_8:
          *(a2 + 264) = v12;
          return result;
        }

        a3 = v14;
        v11 = *(a2 + 256);
        v17 = 16 * v16;
      }

      result = memcpy(v11, *(a3 + 256), v17);
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t std::allocator<swift::reflection::ReflectionInfo>::construct[abi:nn200100]<swift::reflection::ReflectionInfo,swift::reflection::ReflectionInfo>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v3 = *(a3 + 24);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a3 + 32);
  v4 = *(a3 + 56);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 56) = v4;
  *(a2 + 64) = *(a3 + 64);
  v5 = *(a3 + 88);
  *(a2 + 80) = *(a3 + 80);
  *(a2 + 88) = v5;
  *(a2 + 96) = *(a3 + 96);
  v6 = *(a3 + 120);
  *(a2 + 112) = *(a3 + 112);
  *(a2 + 120) = v6;
  *(a2 + 128) = *(a3 + 128);
  v7 = *(a3 + 152);
  *(a2 + 144) = *(a3 + 144);
  *(a2 + 152) = v7;
  *(a2 + 160) = *(a3 + 160);
  v8 = *(a3 + 184);
  *(a2 + 176) = *(a3 + 176);
  *(a2 + 184) = v8;
  *(a2 + 192) = *(a3 + 192);
  v9 = *(a3 + 216);
  *(a2 + 208) = *(a3 + 208);
  *(a2 + 216) = v9;
  *(a2 + 224) = *(a3 + 224);
  v10 = *(a3 + 248);
  *(a2 + 240) = *(a3 + 240);
  *(a2 + 248) = v10;
  *(a2 + 256) = a2 + 272;
  *(a2 + 264) = 0x100000000;
  if (*(a3 + 264))
  {
    return __swift::__runtime::llvm::SmallVectorImpl<__swift::__runtime::llvm::StringRef>::operator=(a2 + 256, (a3 + 256));
  }

  return result;
}

uint64_t __swift::__runtime::llvm::SmallVectorImpl<__swift::__runtime::llvm::StringRef>::operator=(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
LABEL_19:
      *v6 = 0;
      return result;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v11 = result;
        memmove(*result, *a2, 16 * v7);
        result = v11;
      }

      *(result + 8) = v7;
      goto LABEL_19;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v12 = a2;
        memmove(*result, *a2, 16 * v8);
        a2 = v12;
LABEL_16:
        v13 = *v6 - v8;
        if (v13)
        {
          memcpy((*v10 + 16 * v8), *a2 + 16 * v8, 16 * v13);
        }

        result = v10;
        *(v10 + 8) = v7;
        goto LABEL_19;
      }

      v10 = result;
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v7, 16);
      a2 = v9;
    }

    v8 = 0;
    goto LABEL_16;
  }

  return result;
}

void *__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>::SmallVector(void *result, uint64_t a2)
{
  v2 = result + 2;
  *result = result + 2;
  result[1] = 0x100000000;
  if (result != a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      if (v3 < 2)
      {
        v4 = result;
        v7 = 16;
      }

      else
      {
        v4 = result;
        v5 = a2;
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 2), v3, 16);
        v6 = *(v5 + 8);
        if (!v6)
        {
LABEL_8:
          result = v4;
          *(v4 + 2) = v3;
          return result;
        }

        a2 = v5;
        v2 = *v4;
        v7 = 16 * v6;
      }

      memcpy(v2, *a2, v7);
      goto LABEL_8;
    }
  }

  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_addReflectionMappingInfo::$_0>(swift_reflection_addReflectionMappingInfo::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = *v2;
  v5 = **v2;
  v6 = v4[3];
  v45 = v4[2];
  v46 = v5;
  v47 = v6;
  v7 = v4[4];
  v8 = v4[7];
  v48 = v4[6];
  v49 = v7;
  v50 = v8;
  v9 = v4[8];
  v10 = v4[11];
  v51 = v4[10];
  v52 = v9;
  v53 = v10;
  v11 = v4[12];
  v12 = v4[15];
  v54 = v4[14];
  v55 = v11;
  v56 = v12;
  v13 = v4[16];
  v14 = v4[19];
  v57 = v4[18];
  v58 = v13;
  v59 = v14;
  v15 = v4[20];
  v17 = v4[22];
  v16 = v4[23];
  v60 = v17;
  v61 = v15;
  v62 = v16;
  *&v63 = 0;
  BYTE8(v63) = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  *&v66 = 0;
  v64 = 0;
  BYTE8(v66) = 0;
  v69 = v71;
  v18 = v45;
  v21 = v48;
  v24 = v51;
  v27 = v54;
  v30 = v57;
  v33 = v17;
  v36 = v63;
  v70 = 0x100000000;
  v19 = v5;
  v20 = v6;
  v22 = v7;
  v23 = v8;
  v25 = v9;
  v26 = v10;
  v28 = v11;
  v29 = v12;
  v31 = v13;
  v32 = v14;
  v34 = v15;
  v35 = v16;
  v37 = 0;
  v38 = 0;
  v39 = v66;
  v40 = 0;
  v41 = 0;
  v42 = v44;
  v43 = 0x100000000;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(v3, &v18);
  if (v42 != v44)
  {
    free(v42);
  }

  if (v69 != v71)
  {
    free(v69);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<void SwiftReflectionContext::withContext<void,swift_reflection_addReflectionMappingInfo::$_0>(swift_reflection_addReflectionMappingInfo::$_0 const&)::{lambda(void&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = *v2;
  v5 = **v2;
  v6 = v4[3];
  v45 = v4[2];
  v46 = v5;
  v47 = v6;
  v7 = v4[4];
  v8 = v4[7];
  v48 = v4[6];
  v49 = v7;
  v50 = v8;
  v9 = v4[8];
  v10 = v4[11];
  v51 = v4[10];
  v52 = v9;
  v53 = v10;
  v11 = v4[12];
  v12 = v4[15];
  v54 = v4[14];
  v55 = v11;
  v56 = v12;
  v13 = v4[16];
  v14 = v4[19];
  v57 = v4[18];
  v58 = v13;
  v59 = v14;
  v15 = v4[20];
  v17 = v4[22];
  v16 = v4[23];
  v60 = v17;
  v61 = v15;
  v62 = v16;
  *&v63 = 0;
  BYTE8(v63) = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  *&v66 = 0;
  v64 = 0;
  BYTE8(v66) = 0;
  v69 = v71;
  v18 = v45;
  v21 = v48;
  v24 = v51;
  v27 = v54;
  v30 = v57;
  v33 = v17;
  v36 = v63;
  v70 = 0x100000000;
  v19 = v5;
  v20 = v6;
  v22 = v7;
  v23 = v8;
  v25 = v9;
  v26 = v10;
  v28 = v11;
  v29 = v12;
  v31 = v13;
  v32 = v14;
  v34 = v15;
  v35 = v16;
  v37 = 0;
  v38 = 0;
  v39 = v66;
  v40 = 0;
  v41 = 0;
  v42 = v44;
  v43 = 0x100000000;
  swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(v3, &v18);
  if (v42 != v44)
  {
    free(v42);
  }

  if (v69 != v71)
  {
    free(v69);
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_addImage::$_0>(swift_reflection_addImage::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = **v2;
  v7[0] = v8;
  v7[1] = 0x100000000;
  v5 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addImage(v3, v4, 0, v7);
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  return HIDWORD(v5) & 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_addImage::$_0>(swift_reflection_addImage::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v4 = **v2;
  v7[0] = v8;
  v7[1] = 0x100000000;
  v5 = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::addImage(v3, v4, 0, v7);
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  return HIDWORD(v5) & 1;
}

unint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addImage(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  (*(**(a1 + 2800) + 24))(&v132);
  if (!v132)
  {
    LOBYTE(a2) = 0;
    LOBYTE(v7) = 0;
LABEL_259:
    if (v134 == &v133)
    {
      (*(*v134 + 32))(v134);
    }

    else if (v134)
    {
      (*(*v134 + 40))();
    }

    return ((a3 & 0xFFFFFF) << 8) | (v7 << 32) | a2;
  }

  v8 = *v132;
  if (*v132 == -17958193)
  {
    v126 = v128;
    v127 = 0x100000000;
    if (&v126 == a4)
    {
      goto LABEL_83;
    }

    v13 = *(a4 + 8);
    if (!v13)
    {
      goto LABEL_83;
    }

    if (v13 < 2)
    {
      v16 = 16;
      v15 = v128;
    }

    else
    {
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v128, *(a4 + 8), 16);
      v14 = *(a4 + 8);
      if (!v14)
      {
LABEL_82:
        LODWORD(v127) = v13;
LABEL_83:
        (*(**(v7 + 2800) + 24))(&v235);
        if (!v235)
        {
          LOBYTE(a2) = 0;
          LOBYTE(v7) = 0;
          goto LABEL_293;
        }

        v33 = *(v235 + 20);
        if (!v33)
        {
          LOBYTE(v7) = 0;
          LOBYTE(a2) = 0;
          goto LABEL_290;
        }

        v34 = 0;
        v35 = 0;
        v120 = *(v235 + 20);
        while (1)
        {
          (*(**(v7 + 2800) + 24))(&v169);
          v36 = v169;
          if (!v169)
          {
            break;
          }

          if (strncmp((v169 + 8), "__TEXT", 0x10uLL))
          {
            v37 = 0;
            v35 += *(v36 + 4);
            *&v169 = 0;
            v38 = v36;
LABEL_99:
            *&v142 = v38;
            if (!v172)
            {
              goto LABEL_299;
            }

            (*(*v172 + 48))(v172, &v142);
LABEL_101:
            v36 = v34;
            goto LABEL_102;
          }

          v39 = *(v7 + 2856);
          if (v39 >= *(v7 + 2864))
          {
            v40 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v169);
          }

          else
          {
            *&v169 = 0;
            *v39 = v36;
            if (v172)
            {
              if (v172 == (&v169 + 8))
              {
                v39[4] = v39 + 1;
                (*(*v172 + 24))(v172);
              }

              else
              {
                v39[4] = v172;
                *&v172 = 0;
              }
            }

            else
            {
              v39[4] = 0;
            }

            v40 = v39 + 5;
          }

          *(v7 + 2856) = v40;
          v38 = v169;
          v37 = 2;
          v34 = v36;
          *&v169 = 0;
          if (v38)
          {
            goto LABEL_99;
          }

LABEL_102:
          if (v172 == (&v169 + 8))
          {
            (*(*v172 + 32))(v172);
            if (v37)
            {
              goto LABEL_111;
            }
          }

          else
          {
            if (v172)
            {
              (*(*v172 + 40))();
            }

            if (v37)
            {
LABEL_111:
              if (v37 == 2)
              {
LABEL_112:
                if (v36)
                {
                  (*(**(v7 + 2800) + 24))(&v232);
                  if (!v232)
                  {
                    LOBYTE(a2) = 0;
                    LOBYTE(v7) = 0;
                    goto LABEL_286;
                  }

                  v231 = *(v232 + 64);
                  (*(**(v7 + 2800) + 24))(&v228);
                  if (!v228)
                  {
                    LOBYTE(a2) = 0;
                    LOBYTE(v7) = 0;
                    goto LABEL_279;
                  }

                  v41 = a2 - *(v36 + 24);
                  v225 = v228;
                  v226 = v41;
                  v227 = a3;
                  v221 = &v231;
                  v222 = &v225;
                  v223 = &v226;
                  v224 = v7;
                  v220 = off_E0C40;
                  if (!v217 && !BYTE8(v217) && !v214 && !BYTE8(v214) && !v211 && !BYTE8(v211) && !v208 && !BYTE8(v208) && !v205 && !BYTE8(v205) && !v202 && !BYTE8(v202) && !v199 && !BYTE8(v199) && !v196 && !BYTE8(v196))
                  {
                    LOBYTE(v7) = 0;
                    LOBYTE(a2) = 0;
                    goto LABEL_276;
                  }

                  v169 = v217;
                  v64 = v218;
                  v65 = v219;
                  v170 = v218;
                  v171 = v219;
                  v172 = v214;
                  v66 = v215;
                  v67 = v216;
                  v173 = v215;
                  v174 = v216;
                  v175 = v211;
                  v68 = v212;
                  v69 = v213;
                  v176 = v212;
                  v177 = v213;
                  v178 = v208;
                  v70 = v209;
                  v71 = v210;
                  v179 = v209;
                  v180 = v210;
                  v181 = v205;
                  v72 = v206;
                  v73 = v207;
                  v182 = v206;
                  v183 = v207;
                  v184 = v202;
                  v74 = v203;
                  v75 = v204;
                  v185 = v203;
                  v186 = v204;
                  v187 = v199;
                  v76 = v200;
                  v77 = v201;
                  v188 = v200;
                  v189 = v201;
                  v190 = v196;
                  v78 = v197;
                  v79 = v198;
                  v191 = v197;
                  v192 = v198;
                  __dst = v195;
                  v194 = 0x100000000;
                  v80 = v127;
                  if (v127)
                  {
                    if (v127 == 1)
                    {
                      v81 = 16;
                      v82 = v195;
                      goto LABEL_187;
                    }

                    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v195, v127, 16);
                    if (v127)
                    {
                      v82 = __dst;
                      v81 = 16 * v127;
LABEL_187:
                      memcpy(v82, v126, v81);
                    }

                    LODWORD(v194) = v80;
                    v66 = v173;
                    v67 = v174;
                    v68 = v176;
                    v69 = v177;
                    v70 = v179;
                    v71 = v180;
                    v72 = v182;
                    v73 = v183;
                    v74 = v185;
                    v75 = v186;
                    v76 = v188;
                    v77 = v189;
                    v78 = v191;
                    v79 = v192;
                    v64 = v170;
                    v65 = v171;
                  }

                  v142 = v169;
                  v143 = v64;
                  v144 = v65;
                  v145 = v172;
                  v146 = v66;
                  v147 = v67;
                  v148 = v175;
                  v149 = v68;
                  v150 = v69;
                  v151 = v178;
                  v152 = v70;
                  v153 = v71;
                  v154 = v181;
                  v155 = v72;
                  v156 = v73;
                  v157 = v184;
                  v158 = v74;
                  v159 = v75;
                  v160 = v187;
                  v161 = v76;
                  v162 = v77;
                  v163 = v190;
                  v164 = v78;
                  v165 = v79;
                  v166 = v168;
                  v167 = 0x100000000;
                  if (v80)
                  {
                    if (v80 == 1)
                    {
                      v91 = 16;
                      v92 = v168;
                      goto LABEL_194;
                    }

                    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v168, v80, 16);
                    if (v194)
                    {
                      v92 = v166;
                      v91 = 16 * v194;
LABEL_194:
                      memcpy(v92, __dst, v91);
                    }

                    LODWORD(v167) = v80;
                  }

                  LODWORD(a2) = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(v7, &v142);
                  if (v166 != v168)
                  {
                    free(v166);
                  }

                  v93 = *(v36 + 32) + *(v36 + 24) + v226;
                  *&v138 = *(v36 + 24) + v226;
                  BYTE8(v138) = v227;
                  v139 = v93;
                  v140 = v227;
                  std::vector<std::tuple<swift::remote::RemoteAddress,swift::remote::RemoteAddress>>::push_back[abi:nn200100](v7 + 2872, &v138);
                  while (2)
                  {
                    (*(**(v7 + 2800) + 24))(&v138);
                    v94 = v138;
                    if (v138)
                    {
                      if (strncmp((v138 + 8), "__DATA", 6uLL) && strncmp((v94 + 8), "__AUTH", 6uLL))
                      {
                        v35 += *(v94 + 4);
                        *&v138 = 0;
                        v95 = v94;
                        goto LABEL_204;
                      }

                      v96 = *(v94 + 32) + *(v94 + 24) + v226;
                      *&v135 = *(v94 + 24) + v226;
                      BYTE8(v135) = v227;
                      v136 = v96;
                      v137 = v227;
                      std::vector<std::tuple<swift::remote::RemoteAddress,swift::remote::RemoteAddress>>::push_back[abi:nn200100](v7 + 2896, &v135);
                      v95 = v138;
                      v35 += *(v94 + 4);
                      *&v138 = 0;
                      if (v95)
                      {
LABEL_204:
                        *&v135 = v95;
                        if (!v141)
                        {
                          goto LABEL_299;
                        }

                        (*(*v141 + 48))(v141, &v135);
                      }
                    }

                    if (v141 == (&v138 + 8))
                    {
                      (*(*v141 + 32))(v141);
                    }

                    else if (v141)
                    {
                      (*(*v141 + 40))();
                    }

                    if (!v94)
                    {
                      LOBYTE(v7) = 0;
                      LOBYTE(a2) = 0;
LABEL_274:
                      if (__dst != v195)
                      {
                        free(__dst);
                      }

LABEL_276:
                      v112 = v228;
                      v228 = 0;
                      if (v112)
                      {
                        *&v169 = v112;
                        if (!v230)
                        {
                          goto LABEL_299;
                        }

                        (*(*v230 + 48))(v230, &v169);
                      }

LABEL_279:
                      if (v230 == v229)
                      {
                        (*(*v230 + 32))(v230);
                      }

                      else if (v230)
                      {
                        (*(*v230 + 40))();
                      }

                      v113 = v232;
                      v232 = 0;
                      if (v113)
                      {
                        *&v169 = v113;
                        if (!v234)
                        {
                          goto LABEL_299;
                        }

                        (*(*v234 + 48))(v234, &v169);
                      }

LABEL_286:
                      if (v234 == v233)
                      {
                        (*(*v234 + 32))(v234);
                      }

                      else if (v234)
                      {
                        (*(*v234 + 40))();
                      }

LABEL_290:
                      v114 = v235;
                      v235 = 0;
                      if (v114)
                      {
                        *&v169 = v114;
                        if (!v237)
                        {
                          goto LABEL_299;
                        }

                        (*(*v237 + 48))(v237, &v169);
                      }

LABEL_293:
                      if (v237 == v236)
                      {
                        (*(*v237 + 32))(v237);
                      }

                      else if (v237)
                      {
                        (*(*v237 + 40))();
                      }

                      v43 = v126;
                      if (v126 == v128)
                      {
LABEL_256:
                        v107 = v132;
                        v132 = 0;
                        if (v107)
                        {
                          *&v169 = v107;
                          if (!v134)
                          {
                            goto LABEL_299;
                          }

                          (*(*v134 + 48))(v134, &v169);
                        }

                        goto LABEL_259;
                      }

LABEL_255:
                      free(v43);
                      goto LABEL_256;
                    }

                    if (!--v120)
                    {
                      v97 = *(v7 + 2856);
                      if (v97 >= *(v7 + 2864))
                      {
                        v100 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v235);
                      }

                      else
                      {
                        v98 = v235;
                        v235 = 0;
                        *v97 = v98;
                        if (v237)
                        {
                          if (v237 == v236)
                          {
                            v97[4] = (v97 + 1);
                            (*(*v237 + 24))(v237);
                          }

                          else
                          {
                            v97[4] = v237;
                            v237 = 0;
                          }
                        }

                        else
                        {
                          v97[4] = 0;
                        }

                        v100 = v97 + 5;
                      }

                      *(v7 + 2856) = v100;
                      if (v100 >= *(v7 + 2864))
                      {
                        v110 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v228);
                      }

                      else
                      {
                        v109 = v228;
                        v228 = 0;
                        *v100 = v109;
                        if (v230)
                        {
                          if (v230 == v229)
                          {
                            v100[4] = v100 + 1;
                            v111 = v100;
                            (*(*v230 + 24))(v230);
                            v110 = v111 + 5;
                          }

                          else
                          {
                            v100[4] = v230;
                            v230 = 0;
                            v110 = v100 + 5;
                          }
                        }

                        else
                        {
                          v100[4] = 0;
                          v110 = v100 + 5;
                        }
                      }

                      *(v7 + 2856) = v110;
                      LODWORD(a3) = a2 >> 8;
                      LOBYTE(v7) = 1;
                      goto LABEL_274;
                    }

                    continue;
                  }
                }
              }

              LOBYTE(v7) = 0;
              LOBYTE(a2) = 0;
              goto LABEL_290;
            }
          }

          v34 = v36;
          if (!--v33)
          {
            goto LABEL_112;
          }
        }

        v37 = 1;
        goto LABEL_101;
      }

      v15 = v126;
      v16 = 16 * v14;
    }

    memcpy(v15, *a4, v16);
    goto LABEL_82;
  }

  if (v8 != -17958194)
  {
    v17 = BYTE1(v8);
    if (*v132 == 127)
    {
      v22 = v8 & 0xFFFF0000;
      if (v17 == 69 && v22 == 1179385856)
      {
        LOBYTE(v169) = 0;
        LOBYTE(v171) = 0;
        __swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>::SmallVector(v121, a4);
        v42 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readELF(v7, a2, a3, &v169, v121);
        LOBYTE(a2) = v42;
        a3 = v42 >> 8;
        v7 = HIDWORD(v42);
        v43 = v121[0];
        if (v121[0] == &v122)
        {
          goto LABEL_256;
        }

        goto LABEL_255;
      }
    }

    else if (*v132 == 77 && BYTE1(v8) == 90)
    {
      v123 = v125;
      v124 = 0x100000000;
      if (&v123 == a4 || (v18 = *(a4 + 8)) == 0)
      {
LABEL_143:
        PECOFF = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFF(v7, a2, a3, &v123);
        LOBYTE(a2) = PECOFF;
        a3 = PECOFF >> 8;
        v7 = HIDWORD(PECOFF);
        v43 = v123;
        if (v123 == v125)
        {
          goto LABEL_256;
        }

        goto LABEL_255;
      }

      if (v18 < 2)
      {
        v21 = 16;
        v20 = v125;
      }

      else
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v125, *(a4 + 8), 16);
        v19 = *(a4 + 8);
        if (!v19)
        {
LABEL_142:
          LODWORD(v124) = v18;
          goto LABEL_143;
        }

        v20 = v123;
        v21 = 16 * v19;
      }

      memcpy(v20, *a4, v21);
      goto LABEL_142;
    }

    LOBYTE(v7) = 0;
    LOBYTE(a2) = 0;
    goto LABEL_256;
  }

  __src = v131;
  v130 = 0x100000000;
  if (&__src == a4)
  {
    goto LABEL_31;
  }

  v9 = *(a4 + 8);
  if (!v9)
  {
    goto LABEL_31;
  }

  if (v9 < 2)
  {
    v12 = 16;
    v11 = v131;
    goto LABEL_29;
  }

  __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v131, *(a4 + 8), 16);
  v10 = *(a4 + 8);
  if (v10)
  {
    v11 = __src;
    v12 = 16 * v10;
LABEL_29:
    memcpy(v11, *a4, v12);
  }

  LODWORD(v130) = v9;
LABEL_31:
  (*(**(v7 + 2800) + 24))(&v235);
  if (!v235)
  {
    LOBYTE(a2) = 0;
    LOBYTE(v7) = 0;
    goto LABEL_250;
  }

  v24 = *(v235 + 20);
  if (!v24)
  {
    LOBYTE(v7) = 0;
    LOBYTE(a2) = 0;
    goto LABEL_247;
  }

  v25 = 0;
  v26 = 0;
  v119 = *(v235 + 20);
  while (1)
  {
    (*(**(v7 + 2800) + 24))(&v169);
    v27 = v169;
    if (!v169)
    {
      v28 = 1;
      goto LABEL_49;
    }

    if (strncmp((v169 + 8), "__TEXT", 0x10uLL))
    {
      v28 = 0;
      v26 += v27[1];
      *&v169 = 0;
      v29 = v27;
LABEL_47:
      *&v142 = v29;
      if (!v172)
      {
        goto LABEL_299;
      }

      (*(*v172 + 48))(v172, &v142);
LABEL_49:
      v27 = v25;
      goto LABEL_50;
    }

    v30 = *(v7 + 2856);
    if (v30 >= *(v7 + 2864))
    {
      v31 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v169);
    }

    else
    {
      *&v169 = 0;
      *v30 = v27;
      if (v172)
      {
        if (v172 == (&v169 + 8))
        {
          v30[4] = (v30 + 1);
          (*(*v172 + 24))(v172);
        }

        else
        {
          v30[4] = v172;
          *&v172 = 0;
        }
      }

      else
      {
        v30[4] = 0;
      }

      v31 = v30 + 5;
    }

    *(v7 + 2856) = v31;
    v29 = v169;
    v28 = 2;
    v25 = v27;
    *&v169 = 0;
    if (v29)
    {
      goto LABEL_47;
    }

LABEL_50:
    if (v172 == (&v169 + 8))
    {
      (*(*v172 + 32))(v172);
      if (v28)
      {
        break;
      }

      goto LABEL_56;
    }

    if (v172)
    {
      (*(*v172 + 40))();
    }

    if (v28)
    {
      break;
    }

LABEL_56:
    v25 = v27;
    if (!--v24)
    {
      goto LABEL_60;
    }
  }

  if (v28 != 2)
  {
LABEL_134:
    LOBYTE(v7) = 0;
    LOBYTE(a2) = 0;
    goto LABEL_247;
  }

LABEL_60:
  if (!v27)
  {
    goto LABEL_134;
  }

  (*(**(v7 + 2800) + 24))(&v232);
  if (!v232)
  {
    LOBYTE(a2) = 0;
    LOBYTE(v7) = 0;
LABEL_243:
    if (v234 == v233)
    {
      (*(*v234 + 32))(v234);
    }

    else if (v234)
    {
      (*(*v234 + 40))();
    }

LABEL_247:
    v106 = v235;
    v235 = 0;
    if (v106)
    {
      *&v169 = v106;
      if (!v237)
      {
        goto LABEL_299;
      }

      (*(*v237 + 48))(v237, &v169);
    }

LABEL_250:
    if (v237 == v236)
    {
      (*(*v237 + 32))(v237);
    }

    else if (v237)
    {
      (*(*v237 + 40))();
    }

    v43 = __src;
    if (__src == v131)
    {
      goto LABEL_256;
    }

    goto LABEL_255;
  }

  v231 = *(v232 + 48);
  (*(**(v7 + 2800) + 24))(&v228);
  if (!v228)
  {
    LOBYTE(a2) = 0;
    LOBYTE(v7) = 0;
    goto LABEL_236;
  }

  v32 = a2 - v27[6];
  v225 = v228;
  v226 = v32;
  v227 = a3;
  v221 = &v231;
  v222 = &v225;
  v223 = &v226;
  v224 = v7;
  v220 = off_E0C40;
  if (!v217 && !BYTE8(v217) && !v214 && !BYTE8(v214) && !v211 && !BYTE8(v211) && !v208 && !BYTE8(v208) && !v205 && !BYTE8(v205) && !v202 && !BYTE8(v202) && !v199 && !BYTE8(v199) && !v196 && !BYTE8(v196))
  {
    LOBYTE(v7) = 0;
    LOBYTE(a2) = 0;
    goto LABEL_233;
  }

  v169 = v217;
  v45 = v218;
  v46 = v219;
  v170 = v218;
  v171 = v219;
  v172 = v214;
  v47 = v215;
  v48 = v216;
  v173 = v215;
  v174 = v216;
  v175 = v211;
  v49 = v212;
  v50 = v213;
  v176 = v212;
  v177 = v213;
  v178 = v208;
  v51 = v209;
  v52 = v210;
  v179 = v209;
  v180 = v210;
  v181 = v205;
  v53 = v206;
  v54 = v207;
  v182 = v206;
  v183 = v207;
  v184 = v202;
  v55 = v203;
  v56 = v204;
  v185 = v203;
  v186 = v204;
  v187 = v199;
  v57 = v200;
  v58 = v201;
  v188 = v200;
  v189 = v201;
  v190 = v196;
  v59 = v197;
  v60 = v198;
  v191 = v197;
  v192 = v198;
  __dst = v195;
  v194 = 0x100000000;
  v61 = v130;
  if (v130)
  {
    if (v130 == 1)
    {
      v62 = 16;
      v63 = v195;
      goto LABEL_155;
    }

    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v195, v130, 16);
    if (v130)
    {
      v63 = __dst;
      v62 = 16 * v130;
LABEL_155:
      memcpy(v63, __src, v62);
    }

    LODWORD(v194) = v61;
    v47 = v173;
    v48 = v174;
    v49 = v176;
    v50 = v177;
    v51 = v179;
    v52 = v180;
    v53 = v182;
    v54 = v183;
    v55 = v185;
    v56 = v186;
    v57 = v188;
    v58 = v189;
    v59 = v191;
    v60 = v192;
    v45 = v170;
    v46 = v171;
  }

  v142 = v169;
  v143 = v45;
  v144 = v46;
  v145 = v172;
  v146 = v47;
  v147 = v48;
  v148 = v175;
  v149 = v49;
  v150 = v50;
  v151 = v178;
  v152 = v51;
  v153 = v52;
  v154 = v181;
  v155 = v53;
  v156 = v54;
  v157 = v184;
  v158 = v55;
  v159 = v56;
  v160 = v187;
  v161 = v57;
  v162 = v58;
  v163 = v190;
  v164 = v59;
  v165 = v60;
  v166 = v168;
  v167 = 0x100000000;
  if (v61)
  {
    if (v61 == 1)
    {
      v83 = 16;
      v84 = v168;
      goto LABEL_162;
    }

    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v168, v61, 16);
    if (v194)
    {
      v84 = v166;
      v83 = 16 * v194;
LABEL_162:
      memcpy(v84, __dst, v83);
    }

    LODWORD(v167) = v61;
  }

  LODWORD(a2) = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(v7, &v142);
  if (v166 != v168)
  {
    free(v166);
  }

  v85 = v226 + v27[6] + v27[7];
  *&v138 = v226 + v27[6];
  BYTE8(v138) = v227;
  v139 = v85;
  v140 = v227;
  std::vector<std::tuple<swift::remote::RemoteAddress,swift::remote::RemoteAddress>>::push_back[abi:nn200100](v7 + 2872, &v138);
  while (2)
  {
    (*(**(v7 + 2800) + 24))(&v138);
    v86 = v138;
    if (v138)
    {
      if (strncmp((v138 + 8), "__DATA", 6uLL) && strncmp((v86 + 8), "__AUTH", 6uLL))
      {
        v26 += *(v86 + 4);
        *&v138 = 0;
        v87 = v86;
        goto LABEL_172;
      }

      v88 = v226 + *(v86 + 24) + *(v86 + 28);
      *&v135 = v226 + *(v86 + 24);
      BYTE8(v135) = v227;
      v136 = v88;
      v137 = v227;
      std::vector<std::tuple<swift::remote::RemoteAddress,swift::remote::RemoteAddress>>::push_back[abi:nn200100](v7 + 2896, &v135);
      v87 = v138;
      v26 += *(v86 + 4);
      *&v138 = 0;
      if (v87)
      {
LABEL_172:
        *&v135 = v87;
        if (!v141)
        {
          goto LABEL_299;
        }

        (*(*v141 + 48))(v141, &v135);
      }
    }

    if (v141 == (&v138 + 8))
    {
      (*(*v141 + 32))(v141);
    }

    else if (v141)
    {
      (*(*v141 + 40))();
    }

    if (!v86)
    {
      LOBYTE(v7) = 0;
      LOBYTE(a2) = 0;
      goto LABEL_231;
    }

    if (--v119)
    {
      continue;
    }

    break;
  }

  v89 = *(v7 + 2856);
  if (v89 >= *(v7 + 2864))
  {
    v99 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v235);
  }

  else
  {
    v90 = v235;
    v235 = 0;
    *v89 = v90;
    if (v237)
    {
      if (v237 == v236)
      {
        v89[4] = (v89 + 1);
        (*(*v237 + 24))(v237);
      }

      else
      {
        v89[4] = v237;
        v237 = 0;
      }
    }

    else
    {
      v89[4] = 0;
    }

    v99 = v89 + 5;
  }

  *(v7 + 2856) = v99;
  if (v99 >= *(v7 + 2864))
  {
    v102 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v228);
  }

  else
  {
    v101 = v228;
    v228 = 0;
    *v99 = v101;
    if (v230)
    {
      if (v230 == v229)
      {
        v99[4] = v99 + 1;
        v103 = v99;
        (*(*v230 + 24))(v230);
        v102 = v103 + 5;
      }

      else
      {
        v99[4] = v230;
        v230 = 0;
        v102 = v99 + 5;
      }
    }

    else
    {
      v99[4] = 0;
      v102 = v99 + 5;
    }
  }

  *(v7 + 2856) = v102;
  LODWORD(a3) = a2 >> 8;
  LOBYTE(v7) = 1;
LABEL_231:
  if (__dst != v195)
  {
    free(__dst);
  }

LABEL_233:
  v104 = v228;
  v228 = 0;
  if (!v104)
  {
LABEL_236:
    if (v230 == v229)
    {
      (*(*v230 + 32))(v230);
    }

    else if (v230)
    {
      (*(*v230 + 40))();
    }

    v105 = v232;
    v232 = 0;
    if (v105)
    {
      *&v169 = v105;
      if (!v234)
      {
        goto LABEL_299;
      }

      (*(*v234 + 48))(v234, &v169);
    }

    goto LABEL_243;
  }

  *&v169 = v104;
  if (v230)
  {
    (*(*v230 + 48))(v230, &v169);
    goto LABEL_236;
  }

LABEL_299:
  v115 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFF(v115, v116, v117, v118);
}

unint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(**(a1 + 2800) + 24))(&v27);
  if (v27)
  {
    v8 = a2 + v27[15];
    (*(**(a1 + 2800) + 24))(&v24);
    std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v27, &v24);
    v9 = v24;
    v24 = 0;
    if (v9)
    {
      v30 = v9;
      if (!v26)
      {
        goto LABEL_31;
      }

      (*(*v26 + 48))(v26, &v30);
    }

    if (v26 == &v25)
    {
      (*(*v26 + 32))(v26);
      v10 = v27;
      if (v27)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v26)
      {
        (*(*v26 + 40))();
      }

      v10 = v27;
      if (v27)
      {
LABEL_9:
        if (*v10 != 17744)
        {
          LODWORD(v11) = 0;
          LOBYTE(v12) = 0;
          v13 = 0;
          v27 = 0;
          goto LABEL_24;
        }

        v21 = v23;
        v22 = 0x100000000;
        if (&v21 == a4 || (v14 = *(a4 + 8)) == 0)
        {
LABEL_21:
          PECOFFSections = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(a1, a2, a3, &v21);
          v13 = PECOFFSections;
          v11 = PECOFFSections >> 8;
          v12 = HIDWORD(PECOFFSections);
          if (v21 != v23)
          {
            free(v21);
          }

          v10 = v27;
          v27 = 0;
          if (!v10)
          {
            goto LABEL_26;
          }

LABEL_24:
          v24 = v10;
          if (v29)
          {
            (*(*v29 + 48))(v29, &v24);
            goto LABEL_26;
          }

LABEL_31:
          v20 = std::__throw_bad_function_call[abi:nn200100]();
          return swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readELF(v20);
        }

        if (v14 < 2)
        {
          v17 = 16;
          v16 = v23;
        }

        else
        {
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, *(a4 + 8), 16);
          v15 = *(a4 + 8);
          if (!v15)
          {
LABEL_20:
            LODWORD(v22) = v14;
            goto LABEL_21;
          }

          v16 = v21;
          v17 = 16 * v15;
        }

        memcpy(v16, *a4, v17);
        goto LABEL_20;
      }
    }
  }

  LODWORD(v11) = 0;
  LOBYTE(v12) = 0;
  v13 = 0;
  v27 = 0;
LABEL_26:
  if (v29 == &v28)
  {
    (*(*v29 + 32))(v29);
  }

  else if (v29)
  {
    (*(*v29 + 40))();
  }

  return (v11 << 8) | (v12 << 32) | v13;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readELF(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4, uint64_t a5)
{
  (*(**(a1 + 2800) + 24))(&v191);
  v10 = v191;
  if (!v191)
  {
    LOBYTE(v11) = 0;
    v12 = 0;
    goto LABEL_161;
  }

  if (*v191 == 1179403647)
  {
    v13 = *(v191 + 4);
    if (v13 != 1)
    {
      if (v13 != 2)
      {
        v12 = 0;
        LOBYTE(v11) = 0;
        goto LABEL_158;
      }

      v14 = a4[1];
      v189 = *a4;
      v190 = v14;
      v186 = v188;
      v187 = 0x100000000;
      if (&v186 == a5 || (v15 = *(a5 + 8)) == 0)
      {
LABEL_21:
        v320 = a2;
        v321 = a3;
        v317 = 0;
        v318 = 0;
        v319 = 0;
        v313 = &v189;
        v314 = a1;
        v315 = &v320;
        v316 = &v317;
        v25 = v24;
        if (!v24)
        {
          v27 = 0;
          v11 = 0;
          goto LABEL_156;
        }

        v26 = *(v24 + 58);
        if (v26 < 0x40)
        {
          v27 = 0;
          v11 = 0;
          v25 = 0;
          goto LABEL_156;
        }

        v28 = *(v24 + 60);
        if (!*(v24 + 60))
        {
          v27 = 0;
          v11 = 0;
          v25 = 0;
          goto LABEL_156;
        }

        v29 = *(v24 + 40);
        v310 = 0;
        v311 = 0;
        v312 = 0;
        do
        {
          if (!v31)
          {
            goto LABEL_154;
          }

          v32 = v311;
          if (v311 < v312)
          {
            *v311 = v31;
            v30 = (v32 + 1);
          }

          else
          {
            v33 = v310;
            v34 = v311 - v310;
            v35 = (v311 - v310) >> 3;
            v36 = v35 + 1;
            if ((v35 + 1) >> 61)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v37 = v312 - v310;
            if ((v312 - v310) >> 2 > v36)
            {
              v36 = v37 >> 2;
            }

            if (v37 >= 0x7FFFFFFFFFFFFFF8)
            {
              v38 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v36;
            }

            if (v38)
            {
              if (!(v38 >> 61))
              {
                operator new();
              }

              goto LABEL_226;
            }

            *(8 * v35) = v31;
            v30 = 8 * v35 + 8;
            memcpy(0, v33, v34);
            v310 = 0;
            v311 = v30;
            v312 = 0;
            if (v33)
            {
              operator delete(v33);
            }
          }

          v311 = v30;
          v29 += v26;
          --v28;
        }

        while (v28);
        v60 = *(v25 + 62);
        if (v60 == 0xFFFF)
        {
          v60 = *(*v310 + 40);
        }

        v61 = *(v310 + v60);
        v62 = *(v61 + 24);
        v309 = *(v61 + 32);
        if (!v63)
        {
          goto LABEL_78;
        }

        v300 = v63;
        v308 = 0;
        v301 = &v308;
        v302 = &v310;
        v303 = &v300;
        v304 = &v309;
        v305 = &v320;
        v306 = &v189;
        v307 = a1;
        v194 = off_E0CC0;
        if (v308)
        {
LABEL_78:
          v27 = 0;
          v11 = 0;
          v25 = 0;
          v64 = v310;
          if (!v310)
          {
            goto LABEL_156;
          }

          goto LABEL_155;
        }

        v73 = v298;
        v74 = v295;
        v75 = v292;
        v76 = v289;
        v77 = v286;
        v78 = v283;
        v79 = v280;
        v80 = v277;
        if (!v298 && !v295 && !v292 && !v289 && !v286 && !v283 && !v280 && !v277)
        {
          v176 = 0;
          v178 = 0;
          v180 = v298;
          goto LABEL_153;
        }

        v249 = v297;
        v92 = v299;
        v250 = v298;
        v251 = v299;
        v252 = v294;
        v93 = v296;
        v253 = v295;
        v254 = v296;
        v255 = v291;
        v94 = v293;
        v256 = v292;
        v257 = v293;
        v258 = v288;
        v95 = v290;
        v259 = v289;
        v260 = v290;
        v261 = v285;
        v96 = v287;
        v262 = v286;
        v263 = v287;
        v264 = v282;
        v97 = v284;
        v265 = v283;
        v266 = v284;
        v267 = v279;
        v98 = v281;
        v268 = v280;
        v269 = v281;
        v270 = v276;
        v99 = v278;
        v271 = v277;
        v272 = v278;
        __dst = v275;
        v274 = 0x100000000;
        v100 = v187;
        if (!v187)
        {
LABEL_141:
          v222 = v249;
          v223 = v73;
          v224 = v92;
          v225 = v252;
          v226 = v74;
          v227 = v93;
          v228 = v255;
          v229 = v75;
          v230 = v94;
          v231 = v258;
          v232 = v76;
          v233 = v95;
          v234 = v261;
          v235 = v77;
          v236 = v96;
          v237 = v264;
          v238 = v78;
          v239 = v97;
          v240 = v267;
          v241 = v79;
          v242 = v98;
          v243 = v270;
          v244 = v80;
          v245 = v99;
          v246 = v248;
          v247 = 0x100000000;
          if (!v100)
          {
LABEL_148:
            v134 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(a1, &v222);
            if (v246 != v248)
            {
              free(v246);
            }

            if (__dst != v275)
            {
              free(__dst);
            }

            v180 = v134 >> 8;
            v176 = v134;
            v178 = 1;
LABEL_153:
            *&v297 = v249;
            BYTE8(v297) = BYTE8(v249);
            v135 = v250;
            v298 = v250;
            v174 = v251;
            v299 = v251;
            *&v294 = v249;
            BYTE8(v294) = BYTE8(v249);
            v182 = v250;
            v295 = v250;
            v172 = v251;
            v296 = v251;
            *&v291 = v249;
            BYTE8(v291) = BYTE8(v249);
            v136 = v250;
            v292 = v250;
            v170 = v251;
            v293 = v251;
            *&v288 = v249;
            BYTE8(v288) = BYTE8(v249);
            v137 = v250;
            v289 = v250;
            v168 = v251;
            v290 = v251;
            *&v285 = v249;
            BYTE8(v285) = BYTE8(v249);
            v138 = v250;
            v139 = v251;
            v286 = v250;
            v287 = v251;
            *&v282 = v249;
            BYTE8(v282) = BYTE8(v249);
            v140 = v250;
            v141 = v251;
            v283 = v250;
            v284 = v251;
            *&v279 = v249;
            BYTE8(v279) = BYTE8(v249);
            v142 = v250;
            v143 = v251;
            *&v276 = v249;
            BYTE8(v276) = BYTE8(v249);
            if (v308)
            {
LABEL_154:
              v27 = 0;
              v11 = 0;
              v25 = 0;
              v64 = v310;
              if (!v310)
              {
                goto LABEL_156;
              }

              goto LABEL_155;
            }

            v145 = v250;
            v146 = v251;
            v147 = v142;
            v148 = v182;
            if (!v135 && !v182 && !v136 && !v137 && !v138 && !v140 && !v142 && !v250)
            {
              v150 = v178;
              v149 = v180;
              LOBYTE(v27) = v176;
              goto LABEL_223;
            }

            v249 = v297;
            v250 = v135;
            v151 = v174;
            v251 = v174;
            v252 = v294;
            v253 = v182;
            v153 = v170;
            v152 = v172;
            v254 = v172;
            v255 = v291;
            v256 = v136;
            v257 = v170;
            v258 = v288;
            v259 = v137;
            v27 = v168;
            v260 = v168;
            v261 = v285;
            v262 = v138;
            v263 = v139;
            v264 = v282;
            v265 = v140;
            v266 = v141;
            v267 = v279;
            v268 = v147;
            v269 = v143;
            v270 = v276;
            v271 = v145;
            v272 = v146;
            __dst = v275;
            v274 = 0x100000000;
            v154 = v187;
            v166 = v187;
            if (!v187)
            {
LABEL_207:
              v195 = v249;
              v196 = v135;
              v197 = v151;
              v198 = v252;
              v199 = v148;
              v200 = v152;
              v201 = v255;
              v202 = v136;
              v203 = v153;
              v204 = v258;
              v205 = v137;
              v206 = v27;
              v207 = v261;
              v208 = v138;
              v209 = v139;
              v210 = v264;
              v211 = v140;
              v212 = v141;
              v213 = v267;
              v214 = v147;
              v215 = v143;
              v216 = v270;
              v217 = v145;
              v218 = v146;
              v219 = v221;
              v220 = 0x100000000;
              v149 = v180;
              LOBYTE(v27) = v176;
              if (!v154)
              {
LABEL_214:
                v164 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(a1, &v195);
                if (v219 != v221)
                {
                  free(v219);
                }

                if (v178)
                {
                  v150 = v178;
                }

                else
                {
                  v150 = 1;
                }

                if (!v178)
                {
                  LOBYTE(v27) = v164;
                  v149 = v164 >> 8;
                }

                if (__dst != v275)
                {
                  free(__dst);
                }

LABEL_223:
                v11 = v150 << 32;
                v25 = (*&v149 & 0xFFFFFFLL) << 8;
                v27 = v27;
                v64 = v310;
                if (!v310)
                {
LABEL_156:
                  std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::~vector[abi:nn200100](&v317);
                  v117 = v11 | v27 | v25;
                  v118 = v117 >> 8;
                  v116 = HIDWORD(v11);
                  v115 = v186;
                  v12 = HIDWORD(v11);
                  LOBYTE(v11) = v117;
                  a3 = v117 >> 8;
                  if (v186 == v188)
                  {
                    goto LABEL_158;
                  }

                  goto LABEL_157;
                }

LABEL_155:
                v311 = v64;
                operator delete(v64);
                goto LABEL_156;
              }

              if (v154 == 1)
              {
                v162 = 16;
                v163 = v221;
              }

              else
              {
                __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v219, v221, v154, 16);
                if (!v274)
                {
LABEL_213:
                  LODWORD(v220) = v166;
                  goto LABEL_214;
                }

                v163 = v219;
                v162 = 16 * v274;
              }

              memcpy(v163, __dst, v162);
              goto LABEL_213;
            }

            if (v187 == 1)
            {
              v155 = 16;
              v156 = v275;
            }

            else
            {
              __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v275, v187, 16);
              if (!v187)
              {
LABEL_206:
                v154 = v166;
                LODWORD(v274) = v166;
                v135 = v250;
                v151 = v251;
                v148 = v253;
                v152 = v254;
                v136 = v256;
                v153 = v257;
                v137 = v259;
                v27 = v260;
                v138 = v262;
                v139 = v263;
                v140 = v265;
                v141 = v266;
                v147 = v268;
                v143 = v269;
                v145 = v271;
                v146 = v272;
                goto LABEL_207;
              }

              v156 = __dst;
              v155 = 16 * v187;
            }

            memcpy(v156, v186, v155);
            goto LABEL_206;
          }

          if (v100 == 1)
          {
            v132 = 16;
            v133 = v248;
          }

          else
          {
            __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v246, v248, v100, 16);
            if (!v274)
            {
LABEL_147:
              LODWORD(v247) = v100;
              goto LABEL_148;
            }

            v133 = v246;
            v132 = 16 * v274;
          }

          memcpy(v133, __dst, v132);
          goto LABEL_147;
        }

        if (v187 == 1)
        {
          v101 = 16;
          v102 = v275;
        }

        else
        {
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v275, v187, 16);
          if (!v187)
          {
LABEL_140:
            LODWORD(v274) = v100;
            v73 = v250;
            v92 = v251;
            v74 = v253;
            v93 = v254;
            v75 = v256;
            v94 = v257;
            v76 = v259;
            v95 = v260;
            v77 = v262;
            v96 = v263;
            v78 = v265;
            v97 = v266;
            v79 = v268;
            v98 = v269;
            v80 = v271;
            v99 = v272;
            goto LABEL_141;
          }

          v102 = __dst;
          v101 = 16 * v187;
        }

        memcpy(v102, v186, v101);
        goto LABEL_140;
      }

      if (v15 < 2)
      {
        v18 = 16;
        v17 = v188;
      }

      else
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v188, *(a5 + 8), 16);
        v16 = *(a5 + 8);
        if (!v16)
        {
LABEL_20:
          LODWORD(v187) = v15;
          goto LABEL_21;
        }

        v17 = v186;
        v18 = 16 * v16;
      }

      memcpy(v17, *a5, v18);
      goto LABEL_20;
    }

    v19 = a4[1];
    v189 = *a4;
    v190 = v19;
    __src = v185;
    v184 = 0x100000000;
    if (&__src == a5 || (v20 = *(a5 + 8)) == 0)
    {
LABEL_45:
      v320 = a2;
      v321 = a3;
      v317 = 0;
      v318 = 0;
      v319 = 0;
      v313 = &v189;
      v314 = a1;
      v315 = &v320;
      v316 = &v317;
      v40 = v39;
      if (!v39)
      {
        v42 = 0;
        v43 = 0;
        goto LABEL_123;
      }

      v41 = *(v39 + 46);
      if (v41 < 0x28)
      {
        v42 = 0;
        v43 = 0;
        v40 = 0;
        goto LABEL_123;
      }

      v44 = *(v39 + 48);
      if (!*(v39 + 48))
      {
        v42 = 0;
        v43 = 0;
        v40 = 0;
        goto LABEL_123;
      }

      v45 = *(v39 + 32);
      v310 = 0;
      v311 = 0;
      v312 = 0;
      do
      {
        if (!v47)
        {
          goto LABEL_121;
        }

        v48 = v311;
        if (v311 < v312)
        {
          *v311 = v47;
          v46 = (v48 + 1);
        }

        else
        {
          v49 = v310;
          v50 = v311 - v310;
          v51 = (v311 - v310) >> 3;
          v52 = v51 + 1;
          if ((v51 + 1) >> 61)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v53 = v312 - v310;
          if ((v312 - v310) >> 2 > v52)
          {
            v52 = v53 >> 2;
          }

          if (v53 >= 0x7FFFFFFFFFFFFFF8)
          {
            v54 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v54 = v52;
          }

          if (v54)
          {
            if (!(v54 >> 61))
            {
              operator new();
            }

LABEL_226:
            std::string::__throw_length_error[abi:nn200100]();
          }

          *(8 * v51) = v47;
          v46 = 8 * v51 + 8;
          memcpy(0, v49, v50);
          v310 = 0;
          v311 = v46;
          v312 = 0;
          if (v49)
          {
            operator delete(v49);
          }
        }

        v311 = v46;
        v45 += v41;
        --v44;
      }

      while (v44);
      v55 = *(v40 + 50);
      if (v55 == 0xFFFF)
      {
        v55 = *(*v310 + 24);
      }

      v56 = *(v310 + v55);
      v57 = *(v56 + 16);
      LODWORD(v194) = *(v56 + 20);
      if (!v58)
      {
        goto LABEL_72;
      }

      v309 = v58;
      v308 = 0;
      v301 = &v308;
      v302 = &v310;
      v303 = &v309;
      v304 = &v194;
      v305 = &v320;
      v306 = &v189;
      v307 = a1;
      v300 = off_E0CC0;
      if (v308)
      {
LABEL_72:
        v42 = 0;
        v43 = 0;
        v40 = 0;
        v59 = v310;
        if (!v310)
        {
          goto LABEL_123;
        }

        goto LABEL_122;
      }

      v65 = v298;
      v66 = v295;
      v67 = v292;
      v68 = v289;
      v69 = v286;
      v70 = v283;
      v71 = v280;
      v72 = v277;
      if (!v298 && !v295 && !v292 && !v289 && !v286 && !v283 && !v280 && !v277)
      {
        v175 = 0;
        v177 = 0;
        v179 = v298;
        goto LABEL_120;
      }

      v249 = v297;
      v81 = v299;
      v250 = v298;
      v251 = v299;
      v252 = v294;
      v82 = v296;
      v253 = v295;
      v254 = v296;
      v255 = v291;
      v83 = v293;
      v256 = v292;
      v257 = v293;
      v258 = v288;
      v84 = v290;
      v259 = v289;
      v260 = v290;
      v261 = v285;
      v85 = v287;
      v262 = v286;
      v263 = v287;
      v264 = v282;
      v86 = v284;
      v265 = v283;
      v266 = v284;
      v267 = v279;
      v87 = v281;
      v268 = v280;
      v269 = v281;
      v270 = v276;
      v88 = v278;
      v271 = v277;
      v272 = v278;
      __dst = v275;
      v274 = 0x100000000;
      v89 = v184;
      if (!v184)
      {
LABEL_108:
        v222 = v249;
        v223 = v65;
        v224 = v81;
        v225 = v252;
        v226 = v66;
        v227 = v82;
        v228 = v255;
        v229 = v67;
        v230 = v83;
        v231 = v258;
        v232 = v68;
        v233 = v84;
        v234 = v261;
        v235 = v69;
        v236 = v85;
        v237 = v264;
        v238 = v70;
        v239 = v86;
        v240 = v267;
        v241 = v71;
        v242 = v87;
        v243 = v270;
        v244 = v72;
        v245 = v88;
        v246 = v248;
        v247 = 0x100000000;
        if (!v89)
        {
LABEL_115:
          v105 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(a1, &v222);
          if (v246 != v248)
          {
            free(v246);
          }

          if (__dst != v275)
          {
            free(__dst);
          }

          v179 = v105 >> 8;
          v175 = v105;
          v177 = 1;
LABEL_120:
          *&v297 = v249;
          BYTE8(v297) = BYTE8(v249);
          v106 = v250;
          v298 = v250;
          v173 = v251;
          v299 = v251;
          *&v294 = v249;
          BYTE8(v294) = BYTE8(v249);
          v181 = v250;
          v295 = v250;
          v171 = v251;
          v296 = v251;
          *&v291 = v249;
          BYTE8(v291) = BYTE8(v249);
          v107 = v250;
          v292 = v250;
          v169 = v251;
          v293 = v251;
          *&v288 = v249;
          BYTE8(v288) = BYTE8(v249);
          v108 = v250;
          v289 = v250;
          v167 = v251;
          v290 = v251;
          *&v285 = v249;
          BYTE8(v285) = BYTE8(v249);
          v109 = v250;
          v110 = v251;
          v286 = v250;
          v287 = v251;
          *&v282 = v249;
          BYTE8(v282) = BYTE8(v249);
          v111 = v250;
          v112 = v251;
          v283 = v250;
          v284 = v251;
          *&v279 = v249;
          BYTE8(v279) = BYTE8(v249);
          v113 = v250;
          v114 = v251;
          *&v276 = v249;
          BYTE8(v276) = BYTE8(v249);
          if (v308)
          {
LABEL_121:
            v42 = 0;
            v43 = 0;
            v40 = 0;
            v59 = v310;
            if (!v310)
            {
              goto LABEL_123;
            }

            goto LABEL_122;
          }

          v119 = v250;
          v120 = v251;
          v121 = v113;
          v122 = v181;
          if (!v106 && !v181 && !v107 && !v108 && !v109 && !v111 && !v113 && !v250)
          {
            LOBYTE(v42) = v175;
            v123 = v177;
            v124 = v179;
            goto LABEL_201;
          }

          v249 = v297;
          v250 = v106;
          v125 = v173;
          v251 = v173;
          v252 = v294;
          v253 = v181;
          v127 = v169;
          v126 = v171;
          v254 = v171;
          v255 = v291;
          v256 = v107;
          v257 = v169;
          v258 = v288;
          v259 = v108;
          v128 = v167;
          v260 = v167;
          v261 = v285;
          v262 = v109;
          v263 = v110;
          v264 = v282;
          v265 = v111;
          v266 = v112;
          v267 = v279;
          v268 = v121;
          v269 = v114;
          v270 = v276;
          v271 = v119;
          v272 = v120;
          __dst = v275;
          v274 = 0x100000000;
          v129 = v184;
          v165 = v184;
          if (!v184)
          {
LABEL_182:
            v195 = v249;
            v196 = v106;
            v197 = v125;
            v198 = v252;
            v199 = v122;
            v200 = v126;
            v201 = v255;
            v202 = v107;
            v203 = v127;
            v204 = v258;
            v205 = v108;
            v206 = v128;
            v207 = v261;
            v208 = v109;
            v209 = v110;
            v210 = v264;
            v211 = v111;
            v212 = v112;
            v213 = v267;
            v214 = v121;
            v215 = v114;
            v216 = v270;
            v217 = v119;
            v218 = v120;
            v219 = v221;
            v220 = 0x100000000;
            v124 = v179;
            if (!v129)
            {
LABEL_189:
              v159 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(a1, &v195);
              if (v219 != v221)
              {
                free(v219);
              }

              v160 = v159 >> 8;
              if (v177)
              {
                v123 = v177;
              }

              else
              {
                v123 = 1;
              }

              if (v177)
              {
                v161 = v175;
              }

              else
              {
                v161 = v159;
              }

              LOBYTE(v42) = v161;
              if (!v177)
              {
                v124 = v160;
              }

              if (__dst != v275)
              {
                free(__dst);
              }

LABEL_201:
              v43 = v123 << 32;
              v40 = (*&v124 & 0xFFFFFFLL) << 8;
              v42 = v42;
              v59 = v310;
              if (v310)
              {
LABEL_122:
                v311 = v59;
                operator delete(v59);
              }

LABEL_123:
              std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::~vector[abi:nn200100](&v317);
              v11 = v43 | v42 | v40;
              a3 = v11 >> 8;
              v12 = HIDWORD(v43);
              v115 = __src;
              v116 = v12;
              LOBYTE(v117) = v11;
              v118 = v11 >> 8;
              if (__src == v185)
              {
LABEL_158:
                v10 = v191;
                v191 = 0;
                if (!v10)
                {
                  goto LABEL_161;
                }

                goto LABEL_159;
              }

LABEL_157:
              free(v115);
              v12 = v116;
              LOBYTE(v11) = v117;
              LODWORD(a3) = v118;
              goto LABEL_158;
            }

            if (v129 == 1)
            {
              v157 = 16;
              v158 = v221;
            }

            else
            {
              __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v219, v221, v129, 16);
              if (!v274)
              {
LABEL_188:
                LODWORD(v220) = v165;
                goto LABEL_189;
              }

              v158 = v219;
              v157 = 16 * v274;
            }

            memcpy(v158, __dst, v157);
            goto LABEL_188;
          }

          if (v184 == 1)
          {
            v130 = 16;
            v131 = v275;
          }

          else
          {
            __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v275, v184, 16);
            if (!v184)
            {
LABEL_181:
              v129 = v165;
              LODWORD(v274) = v165;
              v106 = v250;
              v125 = v251;
              v122 = v253;
              v126 = v254;
              v107 = v256;
              v127 = v257;
              v108 = v259;
              v128 = v260;
              v109 = v262;
              v110 = v263;
              v111 = v265;
              v112 = v266;
              v121 = v268;
              v114 = v269;
              v119 = v271;
              v120 = v272;
              goto LABEL_182;
            }

            v131 = __dst;
            v130 = 16 * v184;
          }

          memcpy(v131, __src, v130);
          goto LABEL_181;
        }

        if (v89 == 1)
        {
          v103 = 16;
          v104 = v248;
        }

        else
        {
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v246, v248, v89, 16);
          if (!v274)
          {
LABEL_114:
            LODWORD(v247) = v89;
            goto LABEL_115;
          }

          v104 = v246;
          v103 = 16 * v274;
        }

        memcpy(v104, __dst, v103);
        goto LABEL_114;
      }

      if (v184 == 1)
      {
        v90 = 16;
        v91 = v275;
      }

      else
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v275, v184, 16);
        if (!v184)
        {
LABEL_107:
          LODWORD(v274) = v89;
          v65 = v250;
          v81 = v251;
          v66 = v253;
          v82 = v254;
          v67 = v256;
          v83 = v257;
          v68 = v259;
          v84 = v260;
          v69 = v262;
          v85 = v263;
          v70 = v265;
          v86 = v266;
          v71 = v268;
          v87 = v269;
          v72 = v271;
          v88 = v272;
          goto LABEL_108;
        }

        v91 = __dst;
        v90 = 16 * v184;
      }

      memcpy(v91, __src, v90);
      goto LABEL_107;
    }

    if (v20 < 2)
    {
      v23 = 16;
      v22 = v185;
    }

    else
    {
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v185, *(a5 + 8), 16);
      v21 = *(a5 + 8);
      if (!v21)
      {
LABEL_44:
        LODWORD(v184) = v20;
        goto LABEL_45;
      }

      v22 = __src;
      v23 = 16 * v21;
    }

    memcpy(v22, *a5, v23);
    goto LABEL_44;
  }

  LOBYTE(v11) = 0;
  v12 = 0;
  v191 = 0;
LABEL_159:
  *&v249 = v10;
  if (!v193)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    goto LABEL_226;
  }

  (*(*v193 + 48))(v193, &v249);
LABEL_161:
  if (v193 == &v192)
  {
    (*(*v193 + 32))(v193);
  }

  else if (v193)
  {
    (*(*v193 + 40))();
  }

  return ((a3 & 0xFFFFFF) << 8) | (v12 << 32) | v11;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readMachOSections<anonymous namespace::MachOTraits<4u>>(swift::remote::RemoteAddress,__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>)::{lambda(__swift::__runtime::llvm::StringRef)#1}::operator()@<X0>(char *__s2@<X1>, uint64_t result@<X0>, void *a3@<X8>)
{
  v4 = **result;
  if (v4)
  {
    v6 = result;
    v7 = *(result + 24);
    v8 = **(result + 8);
    while (1)
    {
      result = strncmp(v8, __s2, 0x10uLL);
      if (!result)
      {
        break;
      }

      v8 += 68;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v6 + 16);
    v10 = *(v8 + 36);
    v11 = *v9 + *(v8 + 32);
    v12 = *(v9 + 8);
    (*(**(v7 + 2800) + 24))(&v20);
    v13 = v20;
    if (v20)
    {
      v14 = *(v7 + 2856);
      if (v14 >= *(v7 + 2864))
      {
        v15 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v20);
      }

      else
      {
        v20 = 0;
        *v14 = v13;
        if (v22)
        {
          if (v22 == v21)
          {
            v14[4] = (v14 + 1);
            (*(*v22 + 24))(v22);
          }

          else
          {
            v14[4] = v22;
            v22 = 0;
          }
        }

        else
        {
          v14[4] = 0;
        }

        v15 = v14 + 5;
      }

      *(v7 + 2856) = v15;
      *a3 = v11;
      a3[1] = v12;
      v16 = *(v8 + 36);
      a3[2] = v13;
      a3[3] = v16;
      v17 = v20;
      v20 = 0;
      if (v17)
      {
        v23 = v17;
        if (!v22)
        {
          v18 = std::__throw_bad_function_call[abi:nn200100]();
          return swift::SwiftObjectFileFormatMachO::getSectionName(v18, v19);
        }

        (*(*v22 + 48))(v22, &v23);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      a3[2] = 0;
      a3[3] = 0;
    }

    result = v22;
    if (v22 == v21)
    {
      return (*(*v22 + 32))(v22);
    }

    else if (v22)
    {
      return (*(*v22 + 40))(v22);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
    a3[2] = 0;
    a3[3] = 0;
  }

  return result;
}

char *swift::SwiftObjectFileFormatMachO::getSectionName(uint64_t a1, char a2)
{
  v2 = a2;
  v3 = qword_DA7C0[a2];
  return off_DC050[v2];
}

void std::vector<std::tuple<swift::remote::RemoteAddress,swift::remote::RemoteAddress>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void *std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0x666666666666666)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v4 = 0x666666666666666;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x666666666666666)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v6 = *a2;
  *a2 = 0;
  *v5 = v6;
  v7 = a2[4];
  if (v7)
  {
    if (v7 == a2 + 1)
    {
      v5[4] = v5 + 1;
      (*(*v7 + 24))(v7);
    }

    else
    {
      v5[4] = v7;
      a2[4] = 0;
    }
  }

  else
  {
    v5[4] = 0;
  }

  v8 = v5 + 5;
  v9 = *(a1 + 8);
  v10 = v5 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::unique_ptr<void const,std::function<void ()(void const*)>>>,std::unique_ptr<void const,std::function<void ()(void const*)>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v8;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::unique_ptr<void const,std::function<void ()(void const*)>>>,std::unique_ptr<void const,std::function<void ()(void const*)>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = (a4 + 32);
    v7 = a2;
    do
    {
      v8 = *v7;
      *v7 = 0;
      *(v6 - 4) = v8;
      v9 = v7[4];
      if (v9)
      {
        if (v7 + 1 == v9)
        {
          *v6 = (v6 - 3);
          (*(*v7[4] + 24))(v7[4]);
        }

        else
        {
          *v6 = v9;
          v7[4] = 0;
        }
      }

      else
      {
        *v6 = 0;
      }

      v7 += 5;
      v6 += 5;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v10 = a2 + 1;
      v11 = a2 + 4;
      do
      {
        v12 = *(v11 - 4);
        *(v11 - 4) = 0;
        if (v12)
        {
          v16 = v12;
          if (!*v11)
          {
            v15 = std::__throw_bad_function_call[abi:nn200100]();
            swift::SwiftObjectFileFormatMachO::~SwiftObjectFileFormatMachO(v15);
            return;
          }

          (*(**v11 + 48))(*v11, &v16);
        }

        v13 = *v11;
        v14 = v11 - 3;
        if (*v11 == v11 - 3)
        {
          (*(*v13 + 32))(v13);
        }

        else if (v13)
        {
          (*(*v13 + 40))(v13);
        }

        v10 += 5;
        v11 += 5;
      }

      while (v14 + 4 != a3);
    }
  }
}

void swift::SwiftObjectFileFormatMachO::getSegmentName(uint64_t a1@<X8>)
{
  *a1 = "__TEXT";
  *(a1 + 8) = 6;
  *(a1 + 16) = 1;
}

void swift::SwiftObjectFileFormatMachO::getSymbolRichSegmentName(uint64_t a1@<X8>)
{
  *a1 = "__DWARF";
  *(a1 + 8) = 7;
  *(a1 + 16) = 1;
}

BOOL swift::SwiftObjectFileFormatMachO::sectionContainsReflectionData(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 9)
  {
    v3 = *(a2 + 8);
    v4 = *a2 == 0x3574666977735F5FLL;
    v5 = 95;
  }

  else
  {
    if (a3 != 7)
    {
      return 0;
    }

    v3 = *(a2 + 3);
    v4 = *a2 == 1868783455;
    v5 = 1953721967;
  }

  return v4 && v3 == v5;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readMachOSections<anonymous namespace::MachOTraits<8u>>(swift::remote::RemoteAddress,__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>)::{lambda(__swift::__runtime::llvm::StringRef)#1}::operator()@<X0>(char *__s2@<X1>, uint64_t result@<X0>, void *a3@<X8>)
{
  v4 = **result;
  if (v4)
  {
    v6 = result;
    v7 = *(result + 24);
    v8 = **(result + 8);
    while (1)
    {
      result = strncmp(v8, __s2, 0x10uLL);
      if (!result)
      {
        break;
      }

      v8 += 80;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v6 + 16);
    v10 = *(v8 + 40);
    v11 = *(v8 + 32) + *v9;
    v12 = *(v9 + 8);
    (*(**(v7 + 2800) + 24))(&v22);
    v13 = v22;
    if (v22)
    {
      v14 = *(v7 + 2856);
      if (v14 >= *(v7 + 2864))
      {
        v15 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v22);
      }

      else
      {
        v22 = 0;
        *v14 = v13;
        if (v24)
        {
          if (v24 == v23)
          {
            v14[4] = (v14 + 1);
            (*(*v24 + 24))(v24);
          }

          else
          {
            v14[4] = v24;
            v24 = 0;
          }
        }

        else
        {
          v14[4] = 0;
        }

        v15 = v14 + 5;
      }

      *(v7 + 2856) = v15;
      *a3 = v11;
      a3[1] = v12;
      v16 = *(v8 + 40);
      a3[2] = v13;
      a3[3] = v16;
      v17 = v22;
      v22 = 0;
      if (v17)
      {
        v25 = v17;
        if (!v24)
        {
          v18 = std::__throw_bad_function_call[abi:nn200100]();
          return swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(v18, v19, v20, v21);
        }

        (*(*v24 + 48))(v24, &v25);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      a3[2] = 0;
      a3[3] = 0;
    }

    result = v24;
    if (v24 == v23)
    {
      return (*(*v24 + 32))(v24);
    }

    else if (v24)
    {
      return (*(*v24 + 40))(v24);
    }
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
    a3[2] = 0;
    a3[3] = 0;
  }

  return result;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v139[0] = a2;
  v139[1] = a3;
  (*(**(a1 + 2800) + 24))(&v136);
  if (v136)
  {
    v8 = a2 + *(v136 + 60);
    (*(**(a1 + 2800) + 24))(&v133);
    if (!v133)
    {
      LOBYTE(v19) = 0;
      v18 = 0;
LABEL_54:
      if (v135 == &v134)
      {
        (*(*v135 + 32))(v135);
      }

      else if (v135)
      {
        (*(*v135 + 40))(v135, v9, v10, v11, v12, v13, v14, v15, v49, *(&v49 + 1), v50, v51, v52, *(&v52 + 1), v53, v54, v55, *(&v55 + 1), v56, v57, v58, *(&v58 + 1), v59, v60, v61, *(&v61 + 1), v62, v63, v64, *(&v64 + 1), v65, v66);
      }

      v43 = v136;
      v136 = 0;
      if (!v43)
      {
        goto LABEL_61;
      }

      *&v76 = v43;
      if (v138)
      {
        (*(*v138 + 48))(v138, &v76);
        goto LABEL_61;
      }

LABEL_66:
      v45 = std::__throw_bad_function_call[abi:nn200100]();
      return swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(swift::remote::RemoteAddress,__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>)::{lambda(__swift::__runtime::llvm::StringRef)#1}::operator()(v46, v45, v47, v48);
    }

    v132 = v133;
    v16 = v8 + *(v133 + 16);
    v17 = 40 * *(v133 + 2);
    (*(**(a1 + 2800) + 24))(&v129);
    if (!v129)
    {
      LOBYTE(v19) = 0;
      v18 = 0;
LABEL_47:
      if (v131 == &v130)
      {
        (*(*v131 + 32))(v131);
      }

      else if (v131)
      {
        (*(*v131 + 40))(v131);
      }

      v42 = v133;
      v133 = 0;
      if (v42)
      {
        *&v76 = v42;
        if (!v135)
        {
          goto LABEL_66;
        }

        (*(*v135 + 48))(v135, &v76);
      }

      goto LABEL_54;
    }

    v128[0] = &v132;
    v128[1] = &v129;
    v128[2] = v139;
    v128[3] = a1;
    v127 = off_E0C80;
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(swift::remote::RemoteAddress,__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>)::{lambda(__swift::__runtime::llvm::StringRef)#1}::operator()(".sw5flmd", v128, 8uLL, &v124);
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(swift::remote::RemoteAddress,__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>)::{lambda(__swift::__runtime::llvm::StringRef)#1}::operator()(".sw5asty", v128, 8uLL, &v121);
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(swift::remote::RemoteAddress,__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>)::{lambda(__swift::__runtime::llvm::StringRef)#1}::operator()(".sw5bltn", v128, 8uLL, &v118);
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(swift::remote::RemoteAddress,__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>)::{lambda(__swift::__runtime::llvm::StringRef)#1}::operator()(".sw5cptr", v128, 8uLL, &v115);
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(swift::remote::RemoteAddress,__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>)::{lambda(__swift::__runtime::llvm::StringRef)#1}::operator()(".sw5tyrf", v128, 8uLL, &v112);
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(swift::remote::RemoteAddress,__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>)::{lambda(__swift::__runtime::llvm::StringRef)#1}::operator()(".sw5rfst", v128, 8uLL, &v109);
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(swift::remote::RemoteAddress,__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>)::{lambda(__swift::__runtime::llvm::StringRef)#1}::operator()(".sw5prtc$B", v128, 0xAuLL, &v106);
    swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(swift::remote::RemoteAddress,__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>)::{lambda(__swift::__runtime::llvm::StringRef)#1}::operator()(".sw5mpen$B", v128, 0xAuLL, &v103);
    if (!v124 && !BYTE8(v124) && !v121 && !BYTE8(v121) && !v118 && !BYTE8(v118) && !v115 && !BYTE8(v115) && !v112 && !BYTE8(v112) && !v109 && !BYTE8(v109) && !v106 && !BYTE8(v106) && !v103 && !BYTE8(v103))
    {
      v18 = 0;
      LOBYTE(v19) = 0;
      goto LABEL_44;
    }

    v20 = 0;
    v76 = v124;
    v77 = v125;
    v78 = v126;
    v79 = v121;
    v21 = v122;
    v22 = v123;
    v80 = v122;
    v81 = v123;
    v82 = v118;
    v23 = v119;
    v24 = v120;
    v83 = v119;
    v84 = v120;
    v85 = v115;
    v25 = v116;
    v26 = v117;
    v86 = v116;
    v87 = v117;
    v88 = v112;
    v27 = v113;
    v28 = v114;
    v89 = v113;
    v90 = v114;
    v91 = v109;
    v29 = v110;
    v30 = v111;
    v92 = v110;
    v93 = v111;
    v94 = v106;
    v31 = v107;
    v32 = v108;
    v95 = v107;
    v96 = v108;
    v97 = v103;
    v33 = v104;
    v34 = v105;
    v98 = v104;
    v99 = v105;
    __src = v102;
    v101 = 0x100000000;
    if (&__src == a4 || (v35 = *(a4 + 8)) == 0)
    {
LABEL_32:
      v49 = v76;
      v50 = v77;
      v51 = v78;
      v52 = v79;
      v53 = v21;
      v54 = v22;
      v55 = v82;
      v56 = v23;
      v57 = v24;
      v58 = v85;
      v59 = v25;
      v60 = v26;
      v61 = v88;
      v62 = v27;
      v63 = v28;
      v64 = v91;
      v65 = v29;
      v66 = v30;
      v67 = v94;
      v68 = v31;
      v69 = v32;
      v70 = v97;
      v71 = v33;
      v72 = v34;
      __dst = v75;
      v74 = 0x100000000;
      if (!v20)
      {
LABEL_39:
        v19 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(a1, &v49);
        if (__dst != v75)
        {
          free(__dst);
        }

        if (__src != v102)
        {
          free(__src);
        }

        v5 = v19 >> 8;
        v18 = 1;
LABEL_44:
        v41 = v129;
        v129 = 0;
        if (v41)
        {
          *&v76 = v41;
          if (!v131)
          {
            goto LABEL_66;
          }

          (*(*v131 + 48))(v131, &v76);
        }

        goto LABEL_47;
      }

      if (v20 == 1)
      {
        v39 = 16;
        v40 = v75;
      }

      else
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v75, v20, 16);
        if (!v101)
        {
LABEL_38:
          LODWORD(v74) = v20;
          goto LABEL_39;
        }

        v40 = __dst;
        v39 = 16 * v101;
      }

      memcpy(v40, __src, v39);
      goto LABEL_38;
    }

    if (v35 < 2)
    {
      v38 = 16;
      v37 = v102;
    }

    else
    {
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v102, *(a4 + 8), 16);
      v36 = *(a4 + 8);
      if (!v36)
      {
LABEL_31:
        LODWORD(v101) = v35;
        v21 = v80;
        v22 = v81;
        v23 = v83;
        v24 = v84;
        v25 = v86;
        v26 = v87;
        v27 = v89;
        v28 = v90;
        v29 = v92;
        v30 = v93;
        v31 = v95;
        v32 = v96;
        v20 = v35;
        v33 = v98;
        v34 = v99;
        goto LABEL_32;
      }

      v37 = __src;
      v38 = 16 * v36;
    }

    memcpy(v37, *a4, v38);
    goto LABEL_31;
  }

  LOBYTE(v19) = 0;
  v18 = 0;
LABEL_61:
  if (v138 == &v137)
  {
    (*(*v138 + 32))(v138);
  }

  else if (v138)
  {
    (*(*v138 + 40))();
  }

  return v19 | ((*&v5 & 0xFFFFFFLL) << 8) | (v18 << 32);
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFFSections(swift::remote::RemoteAddress,__swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>)::{lambda(__swift::__runtime::llvm::StringRef)#1}::operator()@<X0>(void *__s2@<X1>, uint64_t result@<X0>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = **result;
  v6 = *(v5 + 2);
  if (!*(v5 + 2))
  {
LABEL_15:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    return result;
  }

  v9 = result;
  v10 = *(result + 24);
  v11 = (**(result + 8) + 12);
  while (*(v11 - 5))
  {
    if (a3 != 8)
    {
      goto LABEL_4;
    }

    v12 = 8;
LABEL_3:
    result = memcmp(v11 - 3, __s2, v12);
    if (!result)
    {
      goto LABEL_10;
    }

LABEL_4:
    v11 += 10;
    if (!--v6)
    {
      goto LABEL_15;
    }
  }

  result = strlen(v11 - 12);
  if (result != a3)
  {
    goto LABEL_4;
  }

  v12 = a3;
  if (a3)
  {
    goto LABEL_3;
  }

LABEL_10:
  v13 = *(v9 + 16);
  v14 = *(v11 - 1);
  v15 = *v13 + *v11;
  v16 = *(v13 + 8);
  (*(**(v10 + 2800) + 24))(&v24);
  v17 = v24;
  if (!v24)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
LABEL_25:
    result = v26;
    if (v26 == v25)
    {
      return (*(*v26 + 32))(v26);
    }

    if (v26)
    {
      return (*(*v26 + 40))(v26);
    }

    return result;
  }

  v18 = *(v10 + 2856);
  if (v18 >= *(v10 + 2864))
  {
    v19 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v10 + 2848, &v24);
  }

  else
  {
    v24 = 0;
    *v18 = v17;
    if (v26)
    {
      if (v26 == v25)
      {
        v18[4] = (v18 + 1);
        (*(*v26 + 24))(v26);
      }

      else
      {
        v18[4] = v26;
        v26 = 0;
      }
    }

    else
    {
      v18[4] = 0;
    }

    v19 = v18 + 5;
  }

  *(v10 + 2856) = v19;
  v20 = *(v11 - 1) - 16;
  *a4 = v15 + 8;
  *(a4 + 8) = v16;
  *(a4 + 16) = v17 + 8;
  *(a4 + 24) = v20;
  v21 = v24;
  v24 = 0;
  if (!v21)
  {
    goto LABEL_25;
  }

  v27 = v21;
  if (v26)
  {
    (*(*v26 + 48))(v26, &v27);
    goto LABEL_25;
  }

  v22 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::SwiftObjectFileFormatCOFF::getSectionName(v22, v23);
}

char *swift::SwiftObjectFileFormatCOFF::getSectionName(uint64_t a1, char a2)
{
  v2 = a2;
  v3 = qword_DA810[a2];
  return off_DC0A0[v2];
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readELFSections<anonymous namespace::ELFTraits<(unsigned char)2>>(swift::remote::RemoteAddress,std::optional<llvm::sys::MemoryBlock>,llvm::SmallVector<llvm::StringRef,1u>)::{lambda(unsigned long long,unsigned long long)#1}::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 24) == 1)
  {
    if ((a3 + a2) <= v3[1])
    {
      return *v3 + a2;
    }

    else
    {
      return 0;
    }
  }

  v6 = a1[2];
  v7 = *v6;
  v8 = *(v6 + 8);
  (*(**(a1[1] + 2800) + 24))(&v16);
  v9 = v16;
  if (!v16)
  {
    v4 = 0;
    goto LABEL_18;
  }

  v10 = a1[3];
  v11 = *(v10 + 8);
  if (v11 >= *(v10 + 16))
  {
    v12 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(a1[3], &v16);
  }

  else
  {
    v16 = 0;
    *v11 = v9;
    if (v18)
    {
      if (v18 == v17)
      {
        v11[4] = (v11 + 1);
        (*(*v18 + 24))(v18);
      }

      else
      {
        v11[4] = v18;
        v18 = 0;
      }
    }

    else
    {
      v11[4] = 0;
    }

    v12 = v11 + 5;
  }

  *(v10 + 8) = v12;
  v4 = *(*(a1[3] + 8) - 40);
  v13 = v16;
  v16 = 0;
  if (!v13)
  {
    goto LABEL_18;
  }

  v19 = v13;
  if (v18)
  {
    (*(*v18 + 48))(v18, &v19);
LABEL_18:
    if (v18 == v17)
    {
      (*(*v18 + 32))(v18);
    }

    else if (v18)
    {
      (*(*v18 + 40))(v18);
    }

    return v4;
  }

  v15 = std::__throw_bad_function_call[abi:nn200100]();
}

void swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readELFSections<anonymous namespace::ELFTraits<(unsigned char)2>>(swift::remote::RemoteAddress,std::optional<llvm::sys::MemoryBlock>,llvm::SmallVector<llvm::StringRef,1u>)::{lambda(llvm::StringRef,BOOL)#1}::operator()(uint64_t a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if ((**a1 & 1) != 0 || (v6 = *(a1 + 8), v7 = *v6, v8 = v6[1], *v6 == v8))
  {
LABEL_70:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    return;
  }

  v43 = *(a1 + 48);
  v10 = &v55;
  v47 = v6[1];
  while (1)
  {
    v11 = *v7;
    if ((*v7)[1])
    {
      break;
    }

LABEL_5:
    if (++v7 == v8)
    {
      goto LABEL_70;
    }
  }

  v12 = a3;
  v13 = v10;
  v14 = *v11;
  v15 = **(a1 + 16);
  v16 = **(a1 + 24) - v14;
  v17 = strnlen((v15 + v14), v16);
  if (v17 > v16)
  {
    **a1 = 1;
    goto LABEL_70;
  }

  v18 = v17;
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  v58 = v17;
  if (v17)
  {
    memmove(__dst, (v15 + v14), v17);
  }

  v10 = v13;
  *(__dst + v18) = 0;
  v19 = v58;
  v21 = __dst[0];
  v20 = __dst[1];
  if (v58 >= 0)
  {
    v22 = __dst;
  }

  else
  {
    v22 = __dst[0];
  }

  if (v58 >= 0)
  {
    v20 = v58;
  }

  a3 = v12;
  if (v20 != v12 || v12 && memcmp(v22, a2, v12) || ((*(v11 + 10) & 0x20) == 0) == a4)
  {
    v30 = 3;
    goto LABEL_27;
  }

  v24 = *(a1 + 32);
  v23 = *(a1 + 40);
  v25 = *(v11 + 2) + *v24;
  v26 = v44 & 0xFFFFFFFFFFFFFF00 | *(v24 + 8);
  v27 = *(v11 + 4);
  v54 = 0;
  v56 = 0;
  v44 = v26;
  if (*(v23 + 24) != 1)
  {
    v42 = v25;
    (*(**(v43 + 2800) + 24))(&v51);
    std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v54, &v51);
    v31 = v51;
    v51 = 0;
    if (v31)
    {
      v49[0] = v31;
      if (!v53)
      {
        goto LABEL_72;
      }

      (*(*v53 + 48))(v53, v49);
    }

    if (v53 == v52)
    {
      (*(*v53 + 32))(v53);
    }

    else if (v53)
    {
      (*(*v53 + 40))();
      v32 = v54;
      if (v54)
      {
        goto LABEL_44;
      }

LABEL_55:
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      v30 = 1;
      v29 = v56;
      v10 = v13;
      v54 = 0;
      goto LABEL_64;
    }

    v32 = v54;
    if (v54)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

  v28 = *(v11 + 3);
  if (*(v23 + 8) < v28 + v27)
  {
    v29 = 0;
    **a1 = 1;
    v30 = 2;
    v54 = 0;
    goto LABEL_64;
  }

  v42 = v25;
  v33 = malloc_type_malloc(v27, 0xFC2F0DA2uLL);
  v49[0] = off_E0D00;
  v50 = v49;
  v51 = v33;
  v41 = v33;
  v53 = v52;
  v52[0] = off_E0D00;
  std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v54, &v51);
  v34 = v51;
  v51 = 0;
  if (v34)
  {
    v59 = v34;
    if (!v53)
    {
      goto LABEL_72;
    }

    (*(*v53 + 48))(v53, &v59);
  }

  if (v53 == v52)
  {
    (*(*v53 + 32))(v53);
  }

  else if (v53)
  {
    (*(*v53 + 40))(v53);
  }

  if (v50 == v49)
  {
    (*(*v50 + 32))(v50);
  }

  else if (v50)
  {
    (*(*v50 + 40))(v50);
  }

  memcpy(v41, (v28 + **(a1 + 40)), v27);
  v32 = v54;
  if (!v54)
  {
    goto LABEL_55;
  }

LABEL_44:
  v35 = v43;
  v36 = *(v43 + 2856);
  if (v36 >= *(v43 + 2864))
  {
    v37 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v43 + 2848, &v54);
  }

  else
  {
    v54 = 0;
    *v36 = v32;
    if (v56)
    {
      if (v56 == v13)
      {
        v36[4] = (v36 + 1);
        (*(*v56 + 24))(v56);
      }

      else
      {
        v36[4] = v56;
        v56 = 0;
      }
    }

    else
    {
      v36[4] = 0;
    }

    v37 = v36 + 5;
    v35 = v43;
  }

  v10 = v13;
  *(v35 + 2856) = v37;
  *a5 = v42;
  *(a5 + 8) = v44;
  *(a5 + 16) = v32;
  *(a5 + 24) = v27;
  v38 = v54;
  v29 = v56;
  v54 = 0;
  if (v38)
  {
    v51 = v38;
    v8 = v47;
    if (!v56)
    {
LABEL_72:
      v39 = std::__throw_bad_function_call[abi:nn200100]();
      swift::SwiftObjectFileFormatELF::getSectionName(v39, v40);
      return;
    }

    a3 = v12;
    (*(*v56 + 48))();
    v30 = 1;
    v29 = v56;
    if (v56 != v13)
    {
      goto LABEL_65;
    }

LABEL_62:
    (*(*v29 + 32))(v29);
    goto LABEL_27;
  }

  v30 = 1;
LABEL_64:
  v8 = v47;
  a3 = v12;
  if (v29 == v10)
  {
    goto LABEL_62;
  }

LABEL_65:
  if (v29)
  {
    (*(*v29 + 40))(v29);
  }

LABEL_27:
  if (v19 < 0)
  {
    operator delete(v21);
  }

  if (v30 == 3)
  {
    goto LABEL_5;
  }

  if (v30 == 2)
  {
    goto LABEL_70;
  }
}

char *swift::SwiftObjectFileFormatELF::getSectionName(uint64_t a1, char a2)
{
  v2 = a2;
  v3 = qword_DA860[a2];
  return off_DC0F0[v2];
}

BOOL swift::SwiftObjectFileFormatELF::sectionContainsReflectionData(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  if (a3 < 7)
  {
    return 0;
  }

  return *a2 == 1718187891 && *(a2 + 3) == 1597338726;
}

void swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readELFSections<anonymous namespace::ELFTraits<(unsigned char)1>>(swift::remote::RemoteAddress,std::optional<llvm::sys::MemoryBlock>,llvm::SmallVector<llvm::StringRef,1u>)::{lambda(llvm::StringRef,BOOL)#1}::operator()(uint64_t a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if ((**a1 & 1) != 0 || (v6 = *(a1 + 8), v7 = *v6, v8 = v6[1], *v6 == v8))
  {
LABEL_71:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    return;
  }

  v42 = *(a1 + 48);
  v10 = &v54;
  v46 = v6[1];
  while (1)
  {
    v12 = *v7;
    if (!(*v7)[1])
    {
      goto LABEL_6;
    }

    v13 = a3;
    v14 = v10;
    v15 = *v12;
    v16 = **(a1 + 16);
    v17 = (**(a1 + 24) - v15);
    v18 = strnlen((v16 + v15), v17);
    if (v18 > v17)
    {
      **a1 = 1;
      goto LABEL_71;
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    v57 = v18;
    if (v18)
    {
      memmove(__dst, (v16 + v15), v18);
    }

    v10 = v14;
    *(__dst + v19) = 0;
    v20 = v57;
    v22 = __dst[0];
    v21 = __dst[1];
    if (v57 >= 0)
    {
      v23 = __dst;
    }

    else
    {
      v23 = __dst[0];
    }

    if (v57 >= 0)
    {
      v21 = v57;
    }

    a3 = v13;
    if (v21 != v13 || v13 && memcmp(v23, a2, v13) || ((*(v12 + 10) & 0x20) == 0) == a4)
    {
      v11 = 3;
      if (v20 < 0)
      {
        break;
      }

      goto LABEL_5;
    }

    v25 = *(a1 + 32);
    v24 = *(a1 + 40);
    v26 = *v25 + v12[3];
    v27 = v43 & 0xFFFFFFFFFFFFFF00 | *(v25 + 8);
    v28 = v12[5];
    v53 = 0;
    v55 = 0;
    v43 = v27;
    if (*(v24 + 24) == 1)
    {
      v29 = v12[4];
      if (*(v24 + 8) < (v29 + v28))
      {
        v30 = 0;
        **a1 = 1;
        v11 = 2;
LABEL_53:
        v53 = 0;
        v8 = v46;
        v10 = v14;
        goto LABEL_63;
      }

      v41 = v26;
      v33 = malloc_type_malloc(v28, 0xFC2F0DA2uLL);
      v48[0] = off_E0D48;
      v49 = v48;
      v50 = v33;
      v40 = v33;
      v52 = v51;
      v51[0] = off_E0D48;
      std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v53, &v50);
      v34 = v50;
      v50 = 0;
      if (v34)
      {
        v58 = v34;
        if (!v52)
        {
          goto LABEL_72;
        }

        (*(*v52 + 48))(v52, &v58);
      }

      if (v52 == v51)
      {
        (*(*v52 + 32))(v52);
      }

      else if (v52)
      {
        (*(*v52 + 40))(v52);
      }

      if (v49 == v48)
      {
        (*(*v49 + 32))(v49);
      }

      else if (v49)
      {
        (*(*v49 + 40))(v49);
      }

      memcpy(v40, (**(a1 + 40) + v29), v28);
      v32 = v53;
      if (!v53)
      {
LABEL_52:
        *a5 = 0;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        v11 = 1;
        v30 = v55;
        goto LABEL_53;
      }
    }

    else
    {
      v41 = v26;
      (*(**(v42 + 2800) + 24))(&v50);
      std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v53, &v50);
      v31 = v50;
      v50 = 0;
      if (v31)
      {
        v48[0] = v31;
        if (!v52)
        {
          goto LABEL_72;
        }

        (*(*v52 + 48))(v52, v48);
      }

      if (v52 == v51)
      {
        (*(*v52 + 32))(v52);
      }

      else if (v52)
      {
        (*(*v52 + 40))();
        v32 = v53;
        if (!v53)
        {
          goto LABEL_52;
        }

        goto LABEL_41;
      }

      v32 = v53;
      if (!v53)
      {
        goto LABEL_52;
      }
    }

LABEL_41:
    v35 = v42;
    v36 = *(v42 + 2856);
    if (v36 >= *(v42 + 2864))
    {
      v37 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v42 + 2848, &v53);
    }

    else
    {
      v53 = 0;
      *v36 = v32;
      if (v55)
      {
        if (v55 == v14)
        {
          v36[4] = (v36 + 1);
          (*(*v55 + 24))(v55);
        }

        else
        {
          v36[4] = v55;
          v55 = 0;
        }
      }

      else
      {
        v36[4] = 0;
      }

      v37 = v36 + 5;
      v35 = v42;
    }

    v10 = v14;
    *(v35 + 2856) = v37;
    *a5 = v41;
    *(a5 + 8) = v43;
    *(a5 + 16) = v32;
    *(a5 + 24) = v28;
    v38 = v53;
    v30 = v55;
    v53 = 0;
    if (!v38)
    {
      v11 = 1;
      v8 = v46;
LABEL_63:
      a3 = v13;
      if (v30 == v10)
      {
        goto LABEL_60;
      }

      goto LABEL_64;
    }

    v50 = v38;
    v8 = v46;
    if (!v55)
    {
LABEL_72:
      v39 = std::__throw_bad_function_call[abi:nn200100]();
      return;
    }

    a3 = v13;
    (*(*v55 + 48))();
    v11 = 1;
    v30 = v55;
    if (v55 == v14)
    {
LABEL_60:
      (*(*v30 + 32))(v30);
      if (v20 < 0)
      {
        break;
      }

      goto LABEL_5;
    }

LABEL_64:
    if (v30)
    {
      (*(*v30 + 40))(v30);
    }

    if (v20 < 0)
    {
      break;
    }

LABEL_5:
    if (v11 != 3)
    {
      goto LABEL_68;
    }

LABEL_6:
    if (++v7 == v8)
    {
      goto LABEL_71;
    }
  }

  operator delete(v22);
  if (v11 == 3)
  {
    goto LABEL_6;
  }

LABEL_68:
  if (v11 == 2)
  {
    goto LABEL_71;
  }
}

unint64_t swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::addImage(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  (*(**(a1 + 2800) + 24))(&v133);
  if (!v133)
  {
    LOBYTE(a2) = 0;
    LOBYTE(v7) = 0;
LABEL_259:
    if (v135 == &v134)
    {
      (*(*v135 + 32))(v135);
    }

    else if (v135)
    {
      (*(*v135 + 40))();
    }

    return ((a3 & 0xFFFFFF) << 8) | (v7 << 32) | a2;
  }

  v8 = *v133;
  if (*v133 == -17958193)
  {
    v127 = v129;
    v128 = 0x100000000;
    if (&v127 == a4)
    {
      goto LABEL_83;
    }

    v13 = *(a4 + 8);
    if (!v13)
    {
      goto LABEL_83;
    }

    if (v13 < 2)
    {
      v16 = 16;
      v15 = v129;
    }

    else
    {
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v129, *(a4 + 8), 16);
      v14 = *(a4 + 8);
      if (!v14)
      {
LABEL_82:
        LODWORD(v128) = v13;
LABEL_83:
        (*(**(v7 + 2800) + 24))(&v236);
        if (!v236)
        {
          LOBYTE(a2) = 0;
          LOBYTE(v7) = 0;
          goto LABEL_293;
        }

        v33 = *(v236 + 20);
        if (!v33)
        {
          LOBYTE(v7) = 0;
          LOBYTE(a2) = 0;
          goto LABEL_290;
        }

        v34 = 0;
        v35 = 0;
        v121 = *(v236 + 20);
        while (1)
        {
          (*(**(v7 + 2800) + 24))(&v170);
          v36 = v170;
          if (!v170)
          {
            break;
          }

          if (strncmp((v170 + 8), "__TEXT", 0x10uLL))
          {
            v37 = 0;
            v35 += *(v36 + 4);
            *&v170 = 0;
            v38 = v36;
LABEL_99:
            *&v143 = v38;
            if (!v173)
            {
              goto LABEL_299;
            }

            (*(*v173 + 48))(v173, &v143);
LABEL_101:
            v36 = v34;
            goto LABEL_102;
          }

          v39 = *(v7 + 2856);
          if (v39 >= *(v7 + 2864))
          {
            v40 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v170);
          }

          else
          {
            *&v170 = 0;
            *v39 = v36;
            if (v173)
            {
              if (v173 == (&v170 + 8))
              {
                v39[4] = v39 + 1;
                (*(*v173 + 24))(v173);
              }

              else
              {
                v39[4] = v173;
                *&v173 = 0;
              }
            }

            else
            {
              v39[4] = 0;
            }

            v40 = v39 + 5;
          }

          *(v7 + 2856) = v40;
          v38 = v170;
          v37 = 2;
          v34 = v36;
          *&v170 = 0;
          if (v38)
          {
            goto LABEL_99;
          }

LABEL_102:
          if (v173 == (&v170 + 8))
          {
            (*(*v173 + 32))(v173);
            if (v37)
            {
              goto LABEL_111;
            }
          }

          else
          {
            if (v173)
            {
              (*(*v173 + 40))();
            }

            if (v37)
            {
LABEL_111:
              if (v37 == 2)
              {
LABEL_112:
                if (v36)
                {
                  (*(**(v7 + 2800) + 24))(&v233);
                  if (!v233)
                  {
                    LOBYTE(a2) = 0;
                    LOBYTE(v7) = 0;
                    goto LABEL_286;
                  }

                  v232 = *(v233 + 64);
                  (*(**(v7 + 2800) + 24))(&v229);
                  if (!v229)
                  {
                    LOBYTE(a2) = 0;
                    LOBYTE(v7) = 0;
                    goto LABEL_279;
                  }

                  v41 = a2 - *(v36 + 24);
                  v226 = v229;
                  v227 = v41;
                  v228 = a3;
                  v222 = &v232;
                  v223 = &v226;
                  v224 = &v227;
                  v225 = v7;
                  v221 = off_E0C40;
                  if (!v218 && !BYTE8(v218) && !v215 && !BYTE8(v215) && !v212 && !BYTE8(v212) && !v209 && !BYTE8(v209) && !v206 && !BYTE8(v206) && !v203 && !BYTE8(v203) && !v200 && !BYTE8(v200) && !v197 && !BYTE8(v197))
                  {
                    LOBYTE(v7) = 0;
                    LOBYTE(a2) = 0;
                    goto LABEL_276;
                  }

                  v170 = v218;
                  v64 = v219;
                  v65 = v220;
                  v171 = v219;
                  v172 = v220;
                  v173 = v215;
                  v66 = v216;
                  v67 = v217;
                  v174 = v216;
                  v175 = v217;
                  v176 = v212;
                  v68 = v213;
                  v69 = v214;
                  v177 = v213;
                  v178 = v214;
                  v179 = v209;
                  v70 = v210;
                  v71 = v211;
                  v180 = v210;
                  v181 = v211;
                  v182 = v206;
                  v72 = v207;
                  v73 = v208;
                  v183 = v207;
                  v184 = v208;
                  v185 = v203;
                  v74 = v204;
                  v75 = v205;
                  v186 = v204;
                  v187 = v205;
                  v188 = v200;
                  v76 = v201;
                  v77 = v202;
                  v189 = v201;
                  v190 = v202;
                  v191 = v197;
                  v78 = v198;
                  v79 = v199;
                  v192 = v198;
                  v193 = v199;
                  __dst = v196;
                  v195 = 0x100000000;
                  v80 = v128;
                  if (v128)
                  {
                    if (v128 == 1)
                    {
                      v81 = 16;
                      v82 = v196;
                      goto LABEL_187;
                    }

                    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v196, v128, 16);
                    if (v128)
                    {
                      v82 = __dst;
                      v81 = 16 * v128;
LABEL_187:
                      memcpy(v82, v127, v81);
                    }

                    LODWORD(v195) = v80;
                    v66 = v174;
                    v67 = v175;
                    v68 = v177;
                    v69 = v178;
                    v70 = v180;
                    v71 = v181;
                    v72 = v183;
                    v73 = v184;
                    v74 = v186;
                    v75 = v187;
                    v76 = v189;
                    v77 = v190;
                    v78 = v192;
                    v79 = v193;
                    v64 = v171;
                    v65 = v172;
                  }

                  v143 = v170;
                  v144 = v64;
                  v145 = v65;
                  v146 = v173;
                  v147 = v66;
                  v148 = v67;
                  v149 = v176;
                  v150 = v68;
                  v151 = v69;
                  v152 = v179;
                  v153 = v70;
                  v154 = v71;
                  v155 = v182;
                  v156 = v72;
                  v157 = v73;
                  v158 = v185;
                  v159 = v74;
                  v160 = v75;
                  v161 = v188;
                  v162 = v76;
                  v163 = v77;
                  v164 = v191;
                  v165 = v78;
                  v166 = v79;
                  v167 = v169;
                  v168 = 0x100000000;
                  if (v80)
                  {
                    if (v80 == 1)
                    {
                      v91 = 16;
                      v92 = v169;
                      goto LABEL_194;
                    }

                    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v167, v169, v80, 16);
                    if (v195)
                    {
                      v92 = v167;
                      v91 = 16 * v195;
LABEL_194:
                      memcpy(v92, __dst, v91);
                    }

                    LODWORD(v168) = v80;
                  }

                  LODWORD(a2) = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(v7, &v143);
                  if (v167 != v169)
                  {
                    free(v167);
                  }

                  v93 = *(v36 + 32) + *(v36 + 24) + v227;
                  *&v139 = *(v36 + 24) + v227;
                  BYTE8(v139) = v228;
                  v140 = v93;
                  v141 = v228;
                  std::vector<std::tuple<swift::remote::RemoteAddress,swift::remote::RemoteAddress>>::push_back[abi:nn200100](v7 + 2872, &v139);
                  while (2)
                  {
                    (*(**(v7 + 2800) + 24))(&v139);
                    v94 = v139;
                    if (v139)
                    {
                      if (strncmp((v139 + 8), "__DATA", 6uLL) && strncmp((v94 + 8), "__AUTH", 6uLL))
                      {
                        v35 += *(v94 + 4);
                        *&v139 = 0;
                        v95 = v94;
                        goto LABEL_204;
                      }

                      v96 = *(v94 + 32) + *(v94 + 24) + v227;
                      *&v136 = *(v94 + 24) + v227;
                      BYTE8(v136) = v228;
                      v137 = v96;
                      v138 = v228;
                      std::vector<std::tuple<swift::remote::RemoteAddress,swift::remote::RemoteAddress>>::push_back[abi:nn200100](v7 + 2896, &v136);
                      v95 = v139;
                      v35 += *(v94 + 4);
                      *&v139 = 0;
                      if (v95)
                      {
LABEL_204:
                        *&v136 = v95;
                        if (!v142)
                        {
                          goto LABEL_299;
                        }

                        (*(*v142 + 48))(v142, &v136);
                      }
                    }

                    if (v142 == (&v139 + 8))
                    {
                      (*(*v142 + 32))(v142);
                    }

                    else if (v142)
                    {
                      (*(*v142 + 40))();
                    }

                    if (!v94)
                    {
                      LOBYTE(v7) = 0;
                      LOBYTE(a2) = 0;
LABEL_274:
                      if (__dst != v196)
                      {
                        free(__dst);
                      }

LABEL_276:
                      v112 = v229;
                      v229 = 0;
                      if (v112)
                      {
                        *&v170 = v112;
                        if (!v231)
                        {
                          goto LABEL_299;
                        }

                        (*(*v231 + 48))(v231, &v170);
                      }

LABEL_279:
                      if (v231 == v230)
                      {
                        (*(*v231 + 32))(v231);
                      }

                      else if (v231)
                      {
                        (*(*v231 + 40))();
                      }

                      v113 = v233;
                      v233 = 0;
                      if (v113)
                      {
                        *&v170 = v113;
                        if (!v235)
                        {
                          goto LABEL_299;
                        }

                        (*(*v235 + 48))(v235, &v170);
                      }

LABEL_286:
                      if (v235 == v234)
                      {
                        (*(*v235 + 32))(v235);
                      }

                      else if (v235)
                      {
                        (*(*v235 + 40))();
                      }

LABEL_290:
                      v114 = v236;
                      v236 = 0;
                      if (v114)
                      {
                        *&v170 = v114;
                        if (!v238)
                        {
                          goto LABEL_299;
                        }

                        (*(*v238 + 48))(v238, &v170);
                      }

LABEL_293:
                      if (v238 == v237)
                      {
                        (*(*v238 + 32))(v238);
                      }

                      else if (v238)
                      {
                        (*(*v238 + 40))();
                      }

                      v43 = v127;
                      if (v127 == v129)
                      {
LABEL_256:
                        v107 = v133;
                        v133 = 0;
                        if (v107)
                        {
                          *&v170 = v107;
                          if (!v135)
                          {
                            goto LABEL_299;
                          }

                          (*(*v135 + 48))(v135, &v170);
                        }

                        goto LABEL_259;
                      }

LABEL_255:
                      free(v43);
                      goto LABEL_256;
                    }

                    if (!--v121)
                    {
                      v97 = *(v7 + 2856);
                      if (v97 >= *(v7 + 2864))
                      {
                        v100 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v236);
                      }

                      else
                      {
                        v98 = v236;
                        v236 = 0;
                        *v97 = v98;
                        if (v238)
                        {
                          if (v238 == v237)
                          {
                            v97[4] = (v97 + 1);
                            (*(*v238 + 24))(v238);
                          }

                          else
                          {
                            v97[4] = v238;
                            v238 = 0;
                          }
                        }

                        else
                        {
                          v97[4] = 0;
                        }

                        v100 = v97 + 5;
                      }

                      *(v7 + 2856) = v100;
                      if (v100 >= *(v7 + 2864))
                      {
                        v110 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v229);
                      }

                      else
                      {
                        v109 = v229;
                        v229 = 0;
                        *v100 = v109;
                        if (v231)
                        {
                          if (v231 == v230)
                          {
                            v100[4] = v100 + 1;
                            v111 = v100;
                            (*(*v231 + 24))(v231);
                            v110 = v111 + 5;
                          }

                          else
                          {
                            v100[4] = v231;
                            v231 = 0;
                            v110 = v100 + 5;
                          }
                        }

                        else
                        {
                          v100[4] = 0;
                          v110 = v100 + 5;
                        }
                      }

                      *(v7 + 2856) = v110;
                      LODWORD(a3) = a2 >> 8;
                      LOBYTE(v7) = 1;
                      goto LABEL_274;
                    }

                    continue;
                  }
                }
              }

              LOBYTE(v7) = 0;
              LOBYTE(a2) = 0;
              goto LABEL_290;
            }
          }

          v34 = v36;
          if (!--v33)
          {
            goto LABEL_112;
          }
        }

        v37 = 1;
        goto LABEL_101;
      }

      v15 = v127;
      v16 = 16 * v14;
    }

    memcpy(v15, *a4, v16);
    goto LABEL_82;
  }

  if (v8 != -17958194)
  {
    v17 = BYTE1(v8);
    if (*v133 == 127)
    {
      v22 = v8 & 0xFFFF0000;
      if (v17 == 69 && v22 == 1179385856)
      {
        LOBYTE(v170) = 0;
        LOBYTE(v172) = 0;
        __swift::__runtime::llvm::SmallVector<__swift::__runtime::llvm::StringRef,1u>::SmallVector(v122, a4);
        v42 = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readELF(v7, a2, a3, &v170, v122);
        LOBYTE(a2) = v42;
        a3 = v42 >> 8;
        v7 = HIDWORD(v42);
        v43 = v122[0];
        if (v122[0] == &v123)
        {
          goto LABEL_256;
        }

        goto LABEL_255;
      }
    }

    else if (*v133 == 77 && BYTE1(v8) == 90)
    {
      v124 = v126;
      v125 = 0x100000000;
      if (&v124 == a4 || (v18 = *(a4 + 8)) == 0)
      {
LABEL_143:
        PECOFF = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::readPECOFF(v7, a2, a3, &v124);
        LOBYTE(a2) = PECOFF;
        a3 = PECOFF >> 8;
        v7 = HIDWORD(PECOFF);
        v43 = v124;
        if (v124 == v126)
        {
          goto LABEL_256;
        }

        goto LABEL_255;
      }

      if (v18 < 2)
      {
        v21 = 16;
        v20 = v126;
      }

      else
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, *(a4 + 8), 16);
        v19 = *(a4 + 8);
        if (!v19)
        {
LABEL_142:
          LODWORD(v125) = v18;
          goto LABEL_143;
        }

        v20 = v124;
        v21 = 16 * v19;
      }

      memcpy(v20, *a4, v21);
      goto LABEL_142;
    }

    LOBYTE(v7) = 0;
    LOBYTE(a2) = 0;
    goto LABEL_256;
  }

  __src = v132;
  v131 = 0x100000000;
  if (&__src == a4)
  {
    goto LABEL_31;
  }

  v9 = *(a4 + 8);
  if (!v9)
  {
    goto LABEL_31;
  }

  if (v9 < 2)
  {
    v12 = 16;
    v11 = v132;
    goto LABEL_29;
  }

  __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v132, *(a4 + 8), 16);
  v10 = *(a4 + 8);
  if (v10)
  {
    v11 = __src;
    v12 = 16 * v10;
LABEL_29:
    memcpy(v11, *a4, v12);
  }

  LODWORD(v131) = v9;
LABEL_31:
  (*(**(v7 + 2800) + 24))(&v236);
  if (!v236)
  {
    LOBYTE(a2) = 0;
    LOBYTE(v7) = 0;
    goto LABEL_250;
  }

  v24 = *(v236 + 20);
  if (!v24)
  {
    LOBYTE(v7) = 0;
    LOBYTE(a2) = 0;
    goto LABEL_247;
  }

  v25 = 0;
  v26 = 0;
  v120 = *(v236 + 20);
  while (1)
  {
    (*(**(v7 + 2800) + 24))(&v170);
    v27 = v170;
    if (!v170)
    {
      v28 = 1;
      goto LABEL_49;
    }

    if (strncmp((v170 + 8), "__TEXT", 0x10uLL))
    {
      v28 = 0;
      v26 += v27[1];
      *&v170 = 0;
      v29 = v27;
LABEL_47:
      *&v143 = v29;
      if (!v173)
      {
        goto LABEL_299;
      }

      (*(*v173 + 48))(v173, &v143);
LABEL_49:
      v27 = v25;
      goto LABEL_50;
    }

    v30 = *(v7 + 2856);
    if (v30 >= *(v7 + 2864))
    {
      v31 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v170);
    }

    else
    {
      *&v170 = 0;
      *v30 = v27;
      if (v173)
      {
        if (v173 == (&v170 + 8))
        {
          v30[4] = (v30 + 1);
          (*(*v173 + 24))(v173);
        }

        else
        {
          v30[4] = v173;
          *&v173 = 0;
        }
      }

      else
      {
        v30[4] = 0;
      }

      v31 = v30 + 5;
    }

    *(v7 + 2856) = v31;
    v29 = v170;
    v28 = 2;
    v25 = v27;
    *&v170 = 0;
    if (v29)
    {
      goto LABEL_47;
    }

LABEL_50:
    if (v173 == (&v170 + 8))
    {
      (*(*v173 + 32))(v173);
      if (v28)
      {
        break;
      }

      goto LABEL_56;
    }

    if (v173)
    {
      (*(*v173 + 40))();
    }

    if (v28)
    {
      break;
    }

LABEL_56:
    v25 = v27;
    if (!--v24)
    {
      goto LABEL_60;
    }
  }

  if (v28 != 2)
  {
LABEL_134:
    LOBYTE(v7) = 0;
    LOBYTE(a2) = 0;
    goto LABEL_247;
  }

LABEL_60:
  if (!v27)
  {
    goto LABEL_134;
  }

  (*(**(v7 + 2800) + 24))(&v233);
  if (!v233)
  {
    LOBYTE(a2) = 0;
    LOBYTE(v7) = 0;
LABEL_243:
    if (v235 == v234)
    {
      (*(*v235 + 32))(v235);
    }

    else if (v235)
    {
      (*(*v235 + 40))();
    }

LABEL_247:
    v106 = v236;
    v236 = 0;
    if (v106)
    {
      *&v170 = v106;
      if (!v238)
      {
        goto LABEL_299;
      }

      (*(*v238 + 48))(v238, &v170);
    }

LABEL_250:
    if (v238 == v237)
    {
      (*(*v238 + 32))(v238);
    }

    else if (v238)
    {
      (*(*v238 + 40))();
    }

    v43 = __src;
    if (__src == v132)
    {
      goto LABEL_256;
    }

    goto LABEL_255;
  }

  v232 = *(v233 + 48);
  (*(**(v7 + 2800) + 24))(&v229);
  if (!v229)
  {
    LOBYTE(a2) = 0;
    LOBYTE(v7) = 0;
    goto LABEL_236;
  }

  v32 = a2 - v27[6];
  v226 = v229;
  v227 = v32;
  v228 = a3;
  v222 = &v232;
  v223 = &v226;
  v224 = &v227;
  v225 = v7;
  v221 = off_E0C40;
  if (!v218 && !BYTE8(v218) && !v215 && !BYTE8(v215) && !v212 && !BYTE8(v212) && !v209 && !BYTE8(v209) && !v206 && !BYTE8(v206) && !v203 && !BYTE8(v203) && !v200 && !BYTE8(v200) && !v197 && !BYTE8(v197))
  {
    LOBYTE(v7) = 0;
    LOBYTE(a2) = 0;
    goto LABEL_233;
  }

  v170 = v218;
  v45 = v219;
  v46 = v220;
  v171 = v219;
  v172 = v220;
  v173 = v215;
  v47 = v216;
  v48 = v217;
  v174 = v216;
  v175 = v217;
  v176 = v212;
  v49 = v213;
  v50 = v214;
  v177 = v213;
  v178 = v214;
  v179 = v209;
  v51 = v210;
  v52 = v211;
  v180 = v210;
  v181 = v211;
  v182 = v206;
  v53 = v207;
  v54 = v208;
  v183 = v207;
  v184 = v208;
  v185 = v203;
  v55 = v204;
  v56 = v205;
  v186 = v204;
  v187 = v205;
  v188 = v200;
  v57 = v201;
  v58 = v202;
  v189 = v201;
  v190 = v202;
  v191 = v197;
  v59 = v198;
  v60 = v199;
  v192 = v198;
  v193 = v199;
  __dst = v196;
  v195 = 0x100000000;
  v61 = v131;
  if (v131)
  {
    if (v131 == 1)
    {
      v62 = 16;
      v63 = v196;
      goto LABEL_155;
    }

    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v196, v131, 16);
    if (v131)
    {
      v63 = __dst;
      v62 = 16 * v131;
LABEL_155:
      memcpy(v63, __src, v62);
    }

    LODWORD(v195) = v61;
    v47 = v174;
    v48 = v175;
    v49 = v177;
    v50 = v178;
    v51 = v180;
    v52 = v181;
    v53 = v183;
    v54 = v184;
    v55 = v186;
    v56 = v187;
    v57 = v189;
    v58 = v190;
    v59 = v192;
    v60 = v193;
    v45 = v171;
    v46 = v172;
  }

  v143 = v170;
  v144 = v45;
  v145 = v46;
  v146 = v173;
  v147 = v47;
  v148 = v48;
  v149 = v176;
  v150 = v49;
  v151 = v50;
  v152 = v179;
  v153 = v51;
  v154 = v52;
  v155 = v182;
  v156 = v53;
  v157 = v54;
  v158 = v185;
  v159 = v55;
  v160 = v56;
  v161 = v188;
  v162 = v57;
  v163 = v58;
  v164 = v191;
  v165 = v59;
  v166 = v60;
  v167 = v169;
  v168 = 0x100000000;
  if (v61)
  {
    if (v61 == 1)
    {
      v83 = 16;
      v84 = v169;
      goto LABEL_162;
    }

    __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v167, v169, v61, 16);
    if (v195)
    {
      v84 = v167;
      v83 = 16 * v195;
LABEL_162:
      memcpy(v84, __dst, v83);
    }

    LODWORD(v168) = v61;
  }

  LODWORD(a2) = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(v7, &v143);
  if (v167 != v169)
  {
    free(v167);
  }

  v85 = v227 + v27[6] + v27[7];
  *&v139 = v227 + v27[6];
  BYTE8(v139) = v228;
  v140 = v85;
  v141 = v228;
  std::vector<std::tuple<swift::remote::RemoteAddress,swift::remote::RemoteAddress>>::push_back[abi:nn200100](v7 + 2872, &v139);
  while (2)
  {
    (*(**(v7 + 2800) + 24))(&v139);
    v86 = v139;
    if (v139)
    {
      if (strncmp((v139 + 8), "__DATA", 6uLL) && strncmp((v86 + 8), "__AUTH", 6uLL))
      {
        v26 += *(v86 + 4);
        *&v139 = 0;
        v87 = v86;
        goto LABEL_172;
      }

      v88 = v227 + *(v86 + 24) + *(v86 + 28);
      *&v136 = v227 + *(v86 + 24);
      BYTE8(v136) = v228;
      v137 = v88;
      v138 = v228;
      std::vector<std::tuple<swift::remote::RemoteAddress,swift::remote::RemoteAddress>>::push_back[abi:nn200100](v7 + 2896, &v136);
      v87 = v139;
      v26 += *(v86 + 4);
      *&v139 = 0;
      if (v87)
      {
LABEL_172:
        *&v136 = v87;
        if (!v142)
        {
          goto LABEL_299;
        }

        (*(*v142 + 48))(v142, &v136);
      }
    }

    if (v142 == (&v139 + 8))
    {
      (*(*v142 + 32))(v142);
    }

    else if (v142)
    {
      (*(*v142 + 40))();
    }

    if (!v86)
    {
      LOBYTE(v7) = 0;
      LOBYTE(a2) = 0;
      goto LABEL_231;
    }

    if (--v120)
    {
      continue;
    }

    break;
  }

  v89 = *(v7 + 2856);
  if (v89 >= *(v7 + 2864))
  {
    v99 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v236);
  }

  else
  {
    v90 = v236;
    v236 = 0;
    *v89 = v90;
    if (v238)
    {
      if (v238 == v237)
      {
        v89[4] = (v89 + 1);
        (*(*v238 + 24))(v238);
      }

      else
      {
        v89[4] = v238;
        v238 = 0;
      }
    }

    else
    {
      v89[4] = 0;
    }

    v99 = v89 + 5;
  }

  *(v7 + 2856) = v99;
  if (v99 >= *(v7 + 2864))
  {
    v102 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v7 + 2848, &v229);
  }

  else
  {
    v101 = v229;
    v229 = 0;
    *v99 = v101;
    if (v231)
    {
      if (v231 == v230)
      {
        v99[4] = v99 + 1;
        v103 = v99;
        (*(*v231 + 24))(v231);
        v102 = v103 + 5;
      }

      else
      {
        v99[4] = v231;
        v231 = 0;
        v102 = v99 + 5;
      }
    }

    else
    {
      v99[4] = 0;
      v102 = v99 + 5;
    }
  }

  *(v7 + 2856) = v102;
  LODWORD(a3) = a2 >> 8;
  LOBYTE(v7) = 1;
LABEL_231:
  if (__dst != v196)
  {
    free(__dst);
  }

LABEL_233:
  v104 = v229;
  v229 = 0;
  if (!v104)
  {
LABEL_236:
    if (v231 == v230)
    {
      (*(*v231 + 32))(v231);
    }

    else if (v231)
    {
      (*(*v231 + 40))();
    }

    v105 = v233;
    v233 = 0;
    if (v105)
    {
      *&v170 = v105;
      if (!v235)
      {
        goto LABEL_299;
      }

      (*(*v235 + 48))(v235, &v170);
    }

    goto LABEL_243;
  }

  *&v170 = v104;
  if (v231)
  {
    (*(*v231 + 48))(v231, &v170);
    goto LABEL_236;
  }

LABEL_299:
  v115 = std::__throw_bad_function_call[abi:nn200100]();
  return swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readELF(v115, v116, v117, v118, v119);
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readELF(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4, uint64_t a5)
{
  (*(**(a1 + 2800) + 24))(&v191);
  v10 = v191;
  if (!v191)
  {
    LOBYTE(v11) = 0;
    v12 = 0;
    goto LABEL_161;
  }

  if (*v191 == 1179403647)
  {
    v13 = *(v191 + 4);
    if (v13 != 1)
    {
      if (v13 != 2)
      {
        v12 = 0;
        LOBYTE(v11) = 0;
        goto LABEL_158;
      }

      v14 = a4[1];
      v189 = *a4;
      v190 = v14;
      v186 = v188;
      v187 = 0x100000000;
      if (&v186 == a5 || (v15 = *(a5 + 8)) == 0)
      {
LABEL_21:
        v320 = a2;
        v321 = a3;
        v317 = 0;
        v318 = 0;
        v319 = 0;
        v313 = &v189;
        v314 = a1;
        v315 = &v320;
        v316 = &v317;
        v25 = v24;
        if (!v24)
        {
          v27 = 0;
          v11 = 0;
          goto LABEL_156;
        }

        v26 = *(v24 + 58);
        if (v26 < 0x40)
        {
          v27 = 0;
          v11 = 0;
          v25 = 0;
          goto LABEL_156;
        }

        v28 = *(v24 + 60);
        if (!*(v24 + 60))
        {
          v27 = 0;
          v11 = 0;
          v25 = 0;
          goto LABEL_156;
        }

        v29 = *(v24 + 40);
        v310 = 0;
        v311 = 0;
        v312 = 0;
        do
        {
          if (!v31)
          {
            goto LABEL_154;
          }

          v32 = v311;
          if (v311 < v312)
          {
            *v311 = v31;
            v30 = (v32 + 1);
          }

          else
          {
            v33 = v310;
            v34 = v311 - v310;
            v35 = (v311 - v310) >> 3;
            v36 = v35 + 1;
            if ((v35 + 1) >> 61)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v37 = v312 - v310;
            if ((v312 - v310) >> 2 > v36)
            {
              v36 = v37 >> 2;
            }

            if (v37 >= 0x7FFFFFFFFFFFFFF8)
            {
              v38 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v36;
            }

            if (v38)
            {
              if (!(v38 >> 61))
              {
                operator new();
              }

              goto LABEL_226;
            }

            *(8 * v35) = v31;
            v30 = 8 * v35 + 8;
            memcpy(0, v33, v34);
            v310 = 0;
            v311 = v30;
            v312 = 0;
            if (v33)
            {
              operator delete(v33);
            }
          }

          v311 = v30;
          v29 += v26;
          --v28;
        }

        while (v28);
        v60 = *(v25 + 62);
        if (v60 == 0xFFFF)
        {
          v60 = *(*v310 + 40);
        }

        v61 = *(v310 + v60);
        v62 = *(v61 + 24);
        v309 = *(v61 + 32);
        if (!v63)
        {
          goto LABEL_78;
        }

        v300 = v63;
        v308 = 0;
        v301 = &v308;
        v302 = &v310;
        v303 = &v300;
        v304 = &v309;
        v305 = &v320;
        v306 = &v189;
        v307 = a1;
        v194 = off_E0CC0;
        if (v308)
        {
LABEL_78:
          v27 = 0;
          v11 = 0;
          v25 = 0;
          v64 = v310;
          if (!v310)
          {
            goto LABEL_156;
          }

          goto LABEL_155;
        }

        v73 = v298;
        v74 = v295;
        v75 = v292;
        v76 = v289;
        v77 = v286;
        v78 = v283;
        v79 = v280;
        v80 = v277;
        if (!v298 && !v295 && !v292 && !v289 && !v286 && !v283 && !v280 && !v277)
        {
          v176 = 0;
          v178 = 0;
          v180 = v298;
          goto LABEL_153;
        }

        v249 = v297;
        v92 = v299;
        v250 = v298;
        v251 = v299;
        v252 = v294;
        v93 = v296;
        v253 = v295;
        v254 = v296;
        v255 = v291;
        v94 = v293;
        v256 = v292;
        v257 = v293;
        v258 = v288;
        v95 = v290;
        v259 = v289;
        v260 = v290;
        v261 = v285;
        v96 = v287;
        v262 = v286;
        v263 = v287;
        v264 = v282;
        v97 = v284;
        v265 = v283;
        v266 = v284;
        v267 = v279;
        v98 = v281;
        v268 = v280;
        v269 = v281;
        v270 = v276;
        v99 = v278;
        v271 = v277;
        v272 = v278;
        __dst = v275;
        v274 = 0x100000000;
        v100 = v187;
        if (!v187)
        {
LABEL_141:
          v222 = v249;
          v223 = v73;
          v224 = v92;
          v225 = v252;
          v226 = v74;
          v227 = v93;
          v228 = v255;
          v229 = v75;
          v230 = v94;
          v231 = v258;
          v232 = v76;
          v233 = v95;
          v234 = v261;
          v235 = v77;
          v236 = v96;
          v237 = v264;
          v238 = v78;
          v239 = v97;
          v240 = v267;
          v241 = v79;
          v242 = v98;
          v243 = v270;
          v244 = v80;
          v245 = v99;
          v246 = v248;
          v247 = 0x100000000;
          if (!v100)
          {
LABEL_148:
            v134 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(a1, &v222);
            if (v246 != v248)
            {
              free(v246);
            }

            if (__dst != v275)
            {
              free(__dst);
            }

            v180 = v134 >> 8;
            v176 = v134;
            v178 = 1;
LABEL_153:
            *&v297 = v249;
            BYTE8(v297) = BYTE8(v249);
            v135 = v250;
            v298 = v250;
            v174 = v251;
            v299 = v251;
            *&v294 = v249;
            BYTE8(v294) = BYTE8(v249);
            v182 = v250;
            v295 = v250;
            v172 = v251;
            v296 = v251;
            *&v291 = v249;
            BYTE8(v291) = BYTE8(v249);
            v136 = v250;
            v292 = v250;
            v170 = v251;
            v293 = v251;
            *&v288 = v249;
            BYTE8(v288) = BYTE8(v249);
            v137 = v250;
            v289 = v250;
            v168 = v251;
            v290 = v251;
            *&v285 = v249;
            BYTE8(v285) = BYTE8(v249);
            v138 = v250;
            v139 = v251;
            v286 = v250;
            v287 = v251;
            *&v282 = v249;
            BYTE8(v282) = BYTE8(v249);
            v140 = v250;
            v141 = v251;
            v283 = v250;
            v284 = v251;
            *&v279 = v249;
            BYTE8(v279) = BYTE8(v249);
            v142 = v250;
            v143 = v251;
            *&v276 = v249;
            BYTE8(v276) = BYTE8(v249);
            if (v308)
            {
LABEL_154:
              v27 = 0;
              v11 = 0;
              v25 = 0;
              v64 = v310;
              if (!v310)
              {
                goto LABEL_156;
              }

              goto LABEL_155;
            }

            v145 = v250;
            v146 = v251;
            v147 = v142;
            v148 = v182;
            if (!v135 && !v182 && !v136 && !v137 && !v138 && !v140 && !v142 && !v250)
            {
              v150 = v178;
              v149 = v180;
              LOBYTE(v27) = v176;
              goto LABEL_223;
            }

            v249 = v297;
            v250 = v135;
            v151 = v174;
            v251 = v174;
            v252 = v294;
            v253 = v182;
            v153 = v170;
            v152 = v172;
            v254 = v172;
            v255 = v291;
            v256 = v136;
            v257 = v170;
            v258 = v288;
            v259 = v137;
            v27 = v168;
            v260 = v168;
            v261 = v285;
            v262 = v138;
            v263 = v139;
            v264 = v282;
            v265 = v140;
            v266 = v141;
            v267 = v279;
            v268 = v147;
            v269 = v143;
            v270 = v276;
            v271 = v145;
            v272 = v146;
            __dst = v275;
            v274 = 0x100000000;
            v154 = v187;
            v166 = v187;
            if (!v187)
            {
LABEL_207:
              v195 = v249;
              v196 = v135;
              v197 = v151;
              v198 = v252;
              v199 = v148;
              v200 = v152;
              v201 = v255;
              v202 = v136;
              v203 = v153;
              v204 = v258;
              v205 = v137;
              v206 = v27;
              v207 = v261;
              v208 = v138;
              v209 = v139;
              v210 = v264;
              v211 = v140;
              v212 = v141;
              v213 = v267;
              v214 = v147;
              v215 = v143;
              v216 = v270;
              v217 = v145;
              v218 = v146;
              v219 = v221;
              v220 = 0x100000000;
              v149 = v180;
              LOBYTE(v27) = v176;
              if (!v154)
              {
LABEL_214:
                v164 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(a1, &v195);
                if (v219 != v221)
                {
                  free(v219);
                }

                if (v178)
                {
                  v150 = v178;
                }

                else
                {
                  v150 = 1;
                }

                if (!v178)
                {
                  LOBYTE(v27) = v164;
                  v149 = v164 >> 8;
                }

                if (__dst != v275)
                {
                  free(__dst);
                }

LABEL_223:
                v11 = v150 << 32;
                v25 = (*&v149 & 0xFFFFFFLL) << 8;
                v27 = v27;
                v64 = v310;
                if (!v310)
                {
LABEL_156:
                  std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::~vector[abi:nn200100](&v317);
                  v117 = v11 | v27 | v25;
                  v118 = v117 >> 8;
                  v116 = HIDWORD(v11);
                  v115 = v186;
                  v12 = HIDWORD(v11);
                  LOBYTE(v11) = v117;
                  a3 = v117 >> 8;
                  if (v186 == v188)
                  {
                    goto LABEL_158;
                  }

                  goto LABEL_157;
                }

LABEL_155:
                v311 = v64;
                operator delete(v64);
                goto LABEL_156;
              }

              if (v154 == 1)
              {
                v162 = 16;
                v163 = v221;
              }

              else
              {
                __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v219, v221, v154, 16);
                if (!v274)
                {
LABEL_213:
                  LODWORD(v220) = v166;
                  goto LABEL_214;
                }

                v163 = v219;
                v162 = 16 * v274;
              }

              memcpy(v163, __dst, v162);
              goto LABEL_213;
            }

            if (v187 == 1)
            {
              v155 = 16;
              v156 = v275;
            }

            else
            {
              __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v275, v187, 16);
              if (!v187)
              {
LABEL_206:
                v154 = v166;
                LODWORD(v274) = v166;
                v135 = v250;
                v151 = v251;
                v148 = v253;
                v152 = v254;
                v136 = v256;
                v153 = v257;
                v137 = v259;
                v27 = v260;
                v138 = v262;
                v139 = v263;
                v140 = v265;
                v141 = v266;
                v147 = v268;
                v143 = v269;
                v145 = v271;
                v146 = v272;
                goto LABEL_207;
              }

              v156 = __dst;
              v155 = 16 * v187;
            }

            memcpy(v156, v186, v155);
            goto LABEL_206;
          }

          if (v100 == 1)
          {
            v132 = 16;
            v133 = v248;
          }

          else
          {
            __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v246, v248, v100, 16);
            if (!v274)
            {
LABEL_147:
              LODWORD(v247) = v100;
              goto LABEL_148;
            }

            v133 = v246;
            v132 = 16 * v274;
          }

          memcpy(v133, __dst, v132);
          goto LABEL_147;
        }

        if (v187 == 1)
        {
          v101 = 16;
          v102 = v275;
        }

        else
        {
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v275, v187, 16);
          if (!v187)
          {
LABEL_140:
            LODWORD(v274) = v100;
            v73 = v250;
            v92 = v251;
            v74 = v253;
            v93 = v254;
            v75 = v256;
            v94 = v257;
            v76 = v259;
            v95 = v260;
            v77 = v262;
            v96 = v263;
            v78 = v265;
            v97 = v266;
            v79 = v268;
            v98 = v269;
            v80 = v271;
            v99 = v272;
            goto LABEL_141;
          }

          v102 = __dst;
          v101 = 16 * v187;
        }

        memcpy(v102, v186, v101);
        goto LABEL_140;
      }

      if (v15 < 2)
      {
        v18 = 16;
        v17 = v188;
      }

      else
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v188, *(a5 + 8), 16);
        v16 = *(a5 + 8);
        if (!v16)
        {
LABEL_20:
          LODWORD(v187) = v15;
          goto LABEL_21;
        }

        v17 = v186;
        v18 = 16 * v16;
      }

      memcpy(v17, *a5, v18);
      goto LABEL_20;
    }

    v19 = a4[1];
    v189 = *a4;
    v190 = v19;
    __src = v185;
    v184 = 0x100000000;
    if (&__src == a5 || (v20 = *(a5 + 8)) == 0)
    {
LABEL_45:
      v320 = a2;
      v321 = a3;
      v317 = 0;
      v318 = 0;
      v319 = 0;
      v313 = &v189;
      v314 = a1;
      v315 = &v320;
      v316 = &v317;
      v40 = v39;
      if (!v39)
      {
        v42 = 0;
        v43 = 0;
        goto LABEL_123;
      }

      v41 = *(v39 + 46);
      if (v41 < 0x28)
      {
        v42 = 0;
        v43 = 0;
        v40 = 0;
        goto LABEL_123;
      }

      v44 = *(v39 + 48);
      if (!*(v39 + 48))
      {
        v42 = 0;
        v43 = 0;
        v40 = 0;
        goto LABEL_123;
      }

      v45 = *(v39 + 32);
      v310 = 0;
      v311 = 0;
      v312 = 0;
      do
      {
        if (!v47)
        {
          goto LABEL_121;
        }

        v48 = v311;
        if (v311 < v312)
        {
          *v311 = v47;
          v46 = (v48 + 1);
        }

        else
        {
          v49 = v310;
          v50 = v311 - v310;
          v51 = (v311 - v310) >> 3;
          v52 = v51 + 1;
          if ((v51 + 1) >> 61)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v53 = v312 - v310;
          if ((v312 - v310) >> 2 > v52)
          {
            v52 = v53 >> 2;
          }

          if (v53 >= 0x7FFFFFFFFFFFFFF8)
          {
            v54 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v54 = v52;
          }

          if (v54)
          {
            if (!(v54 >> 61))
            {
              operator new();
            }

LABEL_226:
            std::string::__throw_length_error[abi:nn200100]();
          }

          *(8 * v51) = v47;
          v46 = 8 * v51 + 8;
          memcpy(0, v49, v50);
          v310 = 0;
          v311 = v46;
          v312 = 0;
          if (v49)
          {
            operator delete(v49);
          }
        }

        v311 = v46;
        v45 += v41;
        --v44;
      }

      while (v44);
      v55 = *(v40 + 50);
      if (v55 == 0xFFFF)
      {
        v55 = *(*v310 + 24);
      }

      v56 = *(v310 + v55);
      v57 = *(v56 + 16);
      LODWORD(v194) = *(v56 + 20);
      if (!v58)
      {
        goto LABEL_72;
      }

      v309 = v58;
      v308 = 0;
      v301 = &v308;
      v302 = &v310;
      v303 = &v309;
      v304 = &v194;
      v305 = &v320;
      v306 = &v189;
      v307 = a1;
      v300 = off_E0CC0;
      if (v308)
      {
LABEL_72:
        v42 = 0;
        v43 = 0;
        v40 = 0;
        v59 = v310;
        if (!v310)
        {
          goto LABEL_123;
        }

        goto LABEL_122;
      }

      v65 = v298;
      v66 = v295;
      v67 = v292;
      v68 = v289;
      v69 = v286;
      v70 = v283;
      v71 = v280;
      v72 = v277;
      if (!v298 && !v295 && !v292 && !v289 && !v286 && !v283 && !v280 && !v277)
      {
        v175 = 0;
        v177 = 0;
        v179 = v298;
        goto LABEL_120;
      }

      v249 = v297;
      v81 = v299;
      v250 = v298;
      v251 = v299;
      v252 = v294;
      v82 = v296;
      v253 = v295;
      v254 = v296;
      v255 = v291;
      v83 = v293;
      v256 = v292;
      v257 = v293;
      v258 = v288;
      v84 = v290;
      v259 = v289;
      v260 = v290;
      v261 = v285;
      v85 = v287;
      v262 = v286;
      v263 = v287;
      v264 = v282;
      v86 = v284;
      v265 = v283;
      v266 = v284;
      v267 = v279;
      v87 = v281;
      v268 = v280;
      v269 = v281;
      v270 = v276;
      v88 = v278;
      v271 = v277;
      v272 = v278;
      __dst = v275;
      v274 = 0x100000000;
      v89 = v184;
      if (!v184)
      {
LABEL_108:
        v222 = v249;
        v223 = v65;
        v224 = v81;
        v225 = v252;
        v226 = v66;
        v227 = v82;
        v228 = v255;
        v229 = v67;
        v230 = v83;
        v231 = v258;
        v232 = v68;
        v233 = v84;
        v234 = v261;
        v235 = v69;
        v236 = v85;
        v237 = v264;
        v238 = v70;
        v239 = v86;
        v240 = v267;
        v241 = v71;
        v242 = v87;
        v243 = v270;
        v244 = v72;
        v245 = v88;
        v246 = v248;
        v247 = 0x100000000;
        if (!v89)
        {
LABEL_115:
          v105 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(a1, &v222);
          if (v246 != v248)
          {
            free(v246);
          }

          if (__dst != v275)
          {
            free(__dst);
          }

          v179 = v105 >> 8;
          v175 = v105;
          v177 = 1;
LABEL_120:
          *&v297 = v249;
          BYTE8(v297) = BYTE8(v249);
          v106 = v250;
          v298 = v250;
          v173 = v251;
          v299 = v251;
          *&v294 = v249;
          BYTE8(v294) = BYTE8(v249);
          v181 = v250;
          v295 = v250;
          v171 = v251;
          v296 = v251;
          *&v291 = v249;
          BYTE8(v291) = BYTE8(v249);
          v107 = v250;
          v292 = v250;
          v169 = v251;
          v293 = v251;
          *&v288 = v249;
          BYTE8(v288) = BYTE8(v249);
          v108 = v250;
          v289 = v250;
          v167 = v251;
          v290 = v251;
          *&v285 = v249;
          BYTE8(v285) = BYTE8(v249);
          v109 = v250;
          v110 = v251;
          v286 = v250;
          v287 = v251;
          *&v282 = v249;
          BYTE8(v282) = BYTE8(v249);
          v111 = v250;
          v112 = v251;
          v283 = v250;
          v284 = v251;
          *&v279 = v249;
          BYTE8(v279) = BYTE8(v249);
          v113 = v250;
          v114 = v251;
          *&v276 = v249;
          BYTE8(v276) = BYTE8(v249);
          if (v308)
          {
LABEL_121:
            v42 = 0;
            v43 = 0;
            v40 = 0;
            v59 = v310;
            if (!v310)
            {
              goto LABEL_123;
            }

            goto LABEL_122;
          }

          v119 = v250;
          v120 = v251;
          v121 = v113;
          v122 = v181;
          if (!v106 && !v181 && !v107 && !v108 && !v109 && !v111 && !v113 && !v250)
          {
            LOBYTE(v42) = v175;
            v123 = v177;
            v124 = v179;
            goto LABEL_201;
          }

          v249 = v297;
          v250 = v106;
          v125 = v173;
          v251 = v173;
          v252 = v294;
          v253 = v181;
          v127 = v169;
          v126 = v171;
          v254 = v171;
          v255 = v291;
          v256 = v107;
          v257 = v169;
          v258 = v288;
          v259 = v108;
          v128 = v167;
          v260 = v167;
          v261 = v285;
          v262 = v109;
          v263 = v110;
          v264 = v282;
          v265 = v111;
          v266 = v112;
          v267 = v279;
          v268 = v121;
          v269 = v114;
          v270 = v276;
          v271 = v119;
          v272 = v120;
          __dst = v275;
          v274 = 0x100000000;
          v129 = v184;
          v165 = v184;
          if (!v184)
          {
LABEL_182:
            v195 = v249;
            v196 = v106;
            v197 = v125;
            v198 = v252;
            v199 = v122;
            v200 = v126;
            v201 = v255;
            v202 = v107;
            v203 = v127;
            v204 = v258;
            v205 = v108;
            v206 = v128;
            v207 = v261;
            v208 = v109;
            v209 = v110;
            v210 = v264;
            v211 = v111;
            v212 = v112;
            v213 = v267;
            v214 = v121;
            v215 = v114;
            v216 = v270;
            v217 = v119;
            v218 = v120;
            v219 = v221;
            v220 = 0x100000000;
            v124 = v179;
            if (!v129)
            {
LABEL_189:
              v159 = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::addReflectionInfo(a1, &v195);
              if (v219 != v221)
              {
                free(v219);
              }

              v160 = v159 >> 8;
              if (v177)
              {
                v123 = v177;
              }

              else
              {
                v123 = 1;
              }

              if (v177)
              {
                v161 = v175;
              }

              else
              {
                v161 = v159;
              }

              LOBYTE(v42) = v161;
              if (!v177)
              {
                v124 = v160;
              }

              if (__dst != v275)
              {
                free(__dst);
              }

LABEL_201:
              v43 = v123 << 32;
              v40 = (*&v124 & 0xFFFFFFLL) << 8;
              v42 = v42;
              v59 = v310;
              if (v310)
              {
LABEL_122:
                v311 = v59;
                operator delete(v59);
              }

LABEL_123:
              std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::~vector[abi:nn200100](&v317);
              v11 = v43 | v42 | v40;
              a3 = v11 >> 8;
              v12 = HIDWORD(v43);
              v115 = __src;
              v116 = v12;
              LOBYTE(v117) = v11;
              v118 = v11 >> 8;
              if (__src == v185)
              {
LABEL_158:
                v10 = v191;
                v191 = 0;
                if (!v10)
                {
                  goto LABEL_161;
                }

                goto LABEL_159;
              }

LABEL_157:
              free(v115);
              v12 = v116;
              LOBYTE(v11) = v117;
              LODWORD(a3) = v118;
              goto LABEL_158;
            }

            if (v129 == 1)
            {
              v157 = 16;
              v158 = v221;
            }

            else
            {
              __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v219, v221, v129, 16);
              if (!v274)
              {
LABEL_188:
                LODWORD(v220) = v165;
                goto LABEL_189;
              }

              v158 = v219;
              v157 = 16 * v274;
            }

            memcpy(v158, __dst, v157);
            goto LABEL_188;
          }

          if (v184 == 1)
          {
            v130 = 16;
            v131 = v275;
          }

          else
          {
            __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v275, v184, 16);
            if (!v184)
            {
LABEL_181:
              v129 = v165;
              LODWORD(v274) = v165;
              v106 = v250;
              v125 = v251;
              v122 = v253;
              v126 = v254;
              v107 = v256;
              v127 = v257;
              v108 = v259;
              v128 = v260;
              v109 = v262;
              v110 = v263;
              v111 = v265;
              v112 = v266;
              v121 = v268;
              v114 = v269;
              v119 = v271;
              v120 = v272;
              goto LABEL_182;
            }

            v131 = __dst;
            v130 = 16 * v184;
          }

          memcpy(v131, __src, v130);
          goto LABEL_181;
        }

        if (v89 == 1)
        {
          v103 = 16;
          v104 = v248;
        }

        else
        {
          __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&v246, v248, v89, 16);
          if (!v274)
          {
LABEL_114:
            LODWORD(v247) = v89;
            goto LABEL_115;
          }

          v104 = v246;
          v103 = 16 * v274;
        }

        memcpy(v104, __dst, v103);
        goto LABEL_114;
      }

      if (v184 == 1)
      {
        v90 = 16;
        v91 = v275;
      }

      else
      {
        __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v275, v184, 16);
        if (!v184)
        {
LABEL_107:
          LODWORD(v274) = v89;
          v65 = v250;
          v81 = v251;
          v66 = v253;
          v82 = v254;
          v67 = v256;
          v83 = v257;
          v68 = v259;
          v84 = v260;
          v69 = v262;
          v85 = v263;
          v70 = v265;
          v86 = v266;
          v71 = v268;
          v87 = v269;
          v72 = v271;
          v88 = v272;
          goto LABEL_108;
        }

        v91 = __dst;
        v90 = 16 * v184;
      }

      memcpy(v91, __src, v90);
      goto LABEL_107;
    }

    if (v20 < 2)
    {
      v23 = 16;
      v22 = v185;
    }

    else
    {
      __swift::__runtime::llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v185, *(a5 + 8), 16);
      v21 = *(a5 + 8);
      if (!v21)
      {
LABEL_44:
        LODWORD(v184) = v20;
        goto LABEL_45;
      }

      v22 = __src;
      v23 = 16 * v21;
    }

    memcpy(v22, *a5, v23);
    goto LABEL_44;
  }

  LOBYTE(v11) = 0;
  v12 = 0;
  v191 = 0;
LABEL_159:
  *&v249 = v10;
  if (!v193)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    goto LABEL_226;
  }

  (*(*v193 + 48))(v193, &v249);
LABEL_161:
  if (v193 == &v192)
  {
    (*(*v193 + 32))(v193);
  }

  else if (v193)
  {
    (*(*v193 + 40))();
  }

  return ((a3 & 0xFFFFFF) << 8) | (v12 << 32) | v11;
}
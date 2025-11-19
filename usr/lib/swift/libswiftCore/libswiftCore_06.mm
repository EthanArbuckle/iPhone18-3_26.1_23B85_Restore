uint64_t swift::TargetTypeContextDescriptor<swift::InProcess>::getGenericArgumentOffset(uint64_t result)
{
  if ((*result & 0x1Fu) - 17 < 2)
  {
    return 2;
  }

  if ((*result & 0x1F) == 0x10)
  {
    if ((*result & 0x20000000) != 0)
    {
      v3 = *(result + 24);
      if (v3)
      {
        v4 = (v3 + result + 24);
      }

      else
      {
        v4 = 0;
      }

      if (*v4)
      {
        return *v4 >> 3;
      }

      else
      {
        computeMetadataBoundsFromSuperclass(result, v4);
        return v5 >> 3;
      }
    }

    else
    {
      if ((*result & 0x10000000) != 0)
      {
        v1 = 0;
        v2 = 24;
      }

      else
      {
        v1 = *(result + 28);
        v2 = 32;
      }

      return (v1 - *(result + v2));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void cacheCanonicalSpecializedMetadata(swift::TargetTypeContextDescriptor<swift::InProcess> const*,long *)::$_0::__invoke(_DWORD *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  Cache = getCache(v1);
  if ((*v1 & 0x1F) == 0x10 && v1)
  {
    CanonicalMetadataPrespecializationAccessors = swift::TargetClassDescriptor<swift::InProcess>::getCanonicalMetadataPrespecializationAccessors(v1);
    if (v4)
    {
      v5 = CanonicalMetadataPrespecializationAccessors;
      v6 = (CanonicalMetadataPrespecializationAccessors + 4 * v4);
      do
      {
        v40 = ((v5 + *v5))(256);
        GenericArgs = swift::TargetMetadata<swift::InProcess>::getGenericArgs(v40);
        v8 = *(Cache + 7);
        v9 = *(Cache + 8);
        v10 = 1455063249 * v8;
        if (v8)
        {
          v11 = 0;
          v12 = HIWORD(v8);
          do
          {
            if (v11 >= WORD2(v8) || (v13 = (v9 + 8 * v11), *v13) || v12 != v13[1])
            {
              v10 = __ROR8__(v10, 10) ^ (GenericArgs[v12] >> 19) ^ GenericArgs[v12];
            }

            else
            {
              v14 = GenericArgs[v13[2]];
              ++v11;
              if (v14)
              {
                v15 = (GenericArgs[v12] & 0xFFFFFFFFFFFFFFFELL);
                v16 = 1;
                do
                {
                  v17 = *v15++;
                  v10 = __ROR8__(v10, 10) ^ (v17 >> 19) ^ v17;
                  v18 = v16++;
                }

                while (v18 < v14);
              }
            }

            ++v12;
          }

          while (v12 != HIWORD(v8) + v8);
        }

        v35 = 256;
        *&v36 = GenericArgs;
        *(&v36 + 1) = v8;
        v37 = v9;
        v38 = (668265261 * v10) >> 10;
        swift::LockingConcurrentMap<swift::GenericCacheEntry,swift::LockingConcurrentMapStorage<swift::GenericCacheEntry,(unsigned short)14>>::getOrInsert<swift::MetadataCacheKey,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&>(Cache, &v36, &v35, &v40, v39);
        ++v5;
      }

      while (v5 != v6);
    }
  }

  else
  {
    CanonicalMetadataPrespecializations = swift::TargetTypeContextDescriptor<swift::InProcess>::getCanonicalMetadataPrespecializations(v1);
    if (v20)
    {
      v21 = CanonicalMetadataPrespecializations;
      v22 = &CanonicalMetadataPrespecializations[v20];
      do
      {
        v40 = (v21 + *v21);
        v23 = swift::TargetMetadata<swift::InProcess>::getGenericArgs(v40);
        v24 = *(Cache + 7);
        v25 = *(Cache + 8);
        v26 = 1455063249 * v24;
        if (v24)
        {
          v27 = 0;
          v28 = HIWORD(v24);
          do
          {
            if (v27 >= WORD2(v24) || (v29 = (v25 + 8 * v27), *v29) || v28 != v29[1])
            {
              v26 = __ROR8__(v26, 10) ^ (v23[v28] >> 19) ^ v23[v28];
            }

            else
            {
              v30 = v23[v29[2]];
              ++v27;
              if (v30)
              {
                v31 = (v23[v28] & 0xFFFFFFFFFFFFFFFELL);
                v32 = 1;
                do
                {
                  v33 = *v31++;
                  v26 = __ROR8__(v26, 10) ^ (v33 >> 19) ^ v33;
                  v34 = v32++;
                }

                while (v34 < v30);
              }
            }

            ++v28;
          }

          while (v28 != HIWORD(v24) + v24);
        }

        v35 = 256;
        *&v36 = v23;
        *(&v36 + 1) = v24;
        v37 = v25;
        v38 = (668265261 * v26) >> 10;
        swift::LockingConcurrentMap<swift::GenericCacheEntry,swift::LockingConcurrentMapStorage<swift::GenericCacheEntry,(unsigned short)14>>::getOrInsert<swift::MetadataCacheKey,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&>(Cache, &v36, &v35, &v40, v39);
        ++v21;
      }

      while (v21 != v22);
    }
  }
}

uint64_t swift::TargetClassDescriptor<swift::InProcess>::getCanonicalMetadataPrespecializationAccessors(_DWORD *a1)
{
  if ((~*a1 & 0x80080) != 0)
  {
    return 0;
  }

  v2 = a1;
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v3);
  if ((v3[3] & 0x20) == 0)
  {
    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v2)
  {
LABEL_10:
    v2 = a1;
  }

LABEL_11:
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v2);
  v6 = *v2;
  if ((*v2 & 0x20000000) != 0)
  {
    v7 = v2[7] & 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 & 0x80080;
  if ((v6 & 0x80080) == 0x80080)
  {
    if (!v2)
    {
      v2 = 0;
    }

    v10 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v2);
    if ((*(v2 + 3) & 0x20) != 0)
    {
      v11 = v2[7] & 1;
    }

    else
    {
      v11 = 0;
    }

    v9 = *(v10 + 4 * v11);
  }

  else
  {
    v9 = 0;
  }

  return TrailingObjectsImpl + 4 * v7 + 4 * (v8 == 524416) + 4 * v9;
}

_DWORD *swift::TargetTypeContextDescriptor<swift::InProcess>::getCanonicalMetadataPrespecializations(_DWORD *result)
{
  v1 = *result & 0x1F;
  switch(v1)
  {
    case 16:
      if (result)
      {
        v4 = result;
      }

      else
      {
        v4 = 0;
      }

      if ((~*v4 & 0x80080) != 0)
      {
        return 0;
      }

      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }

      swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v6);
      if ((v6[3] & 0x20) != 0)
      {
        if (v4)
        {
          goto LABEL_33;
        }
      }

      else if (v4)
      {
        goto LABEL_33;
      }

      v4 = 0;
LABEL_33:
      TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v4);
      v11 = *v4;
      if ((*v4 & 0x20000000) != 0)
      {
        v12 = v4[7] & 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = TrailingObjectsImpl + 4 * v12;
      return (v13 + 4 * ((~v11 & 0x80080) == 0));
    case 17:
      if (result)
      {
        v3 = result;
      }

      else
      {
        v3 = 0;
      }

      if ((~*v3 & 0x80080) == 0)
      {
        if (v3)
        {
          v5 = v3;
        }

        else
        {
          v5 = 0;
        }

        swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v5);
        if (!v3)
        {
          v3 = 0;
        }

        v8 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v3);
        v9 = v3;
        goto LABEL_41;
      }

      return 0;
    case 18:
      if (result)
      {
        v2 = result;
      }

      else
      {
        v2 = 0;
      }

      if ((~*v2 & 0x80080) == 0)
      {
        if (v2)
        {
          v7 = v2;
        }

        else
        {
          v7 = 0;
        }

        swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v7);
        if (!v2)
        {
          v2 = 0;
        }

        v8 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v2);
        v9 = v2;
LABEL_41:
        v11 = *v9;
        v13 = v8 + 4 * ((*v9 & 0x30000) == 0x20000) + 12 * ((*v9 & 0x30000) == 0x10000);
        return (v13 + 4 * ((~v11 & 0x80080) == 0));
      }

      return 0;
  }

  __break(1u);
  return result;
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(a1);
  v3 = *a1;
  if ((v3 & 0x80000000) != 0)
  {
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = 0;
    }

    v4 = *(swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v7) + 4 * ((*v7 >> 29) & 1) + 4 * ((*v7 & 0x30000) == 0x20000) + 12 * ((*v7 & 0x30000) == 0x10000) + 4);
    v5 = *a1;
    if ((*a1 & 0x40000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    v5 = *a1;
    if ((v3 & 0x40000000) == 0)
    {
LABEL_3:
      v6 = 0;
      return TrailingObjectsImpl + 4 * ((v3 >> 29) & 1) + 4 * ((v3 & 0x30000) == 0x20000) + 12 * ((v3 & 0x30000) == 0x10000) + ((v3 >> 28) & 8) + 8 * v4 + 4 * ((v5 >> 30) & 1) + 12 * v6;
    }
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v8);
  v10 = *v8;
  if ((v10 & 0x80000000) != 0)
  {
    if (!v8)
    {
      v8 = 0;
    }

    v11 = *(swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v8) + 4 * ((*v8 >> 29) & 1) + 4 * ((*v8 & 0x30000) == 0x20000) + 12 * ((*v8 & 0x30000) == 0x10000) + 4);
  }

  else
  {
    v11 = 0;
  }

  v6 = *(v9 + 4 * ((v10 >> 29) & 1) + 4 * ((v10 & 0x30000) == 0x20000) + 12 * ((v10 & 0x30000) == 0x10000) + 8 * ((v10 >> 31) & 1) + 8 * v11);
  return TrailingObjectsImpl + 4 * ((v3 >> 29) & 1) + 4 * ((v3 & 0x30000) == 0x20000) + 12 * ((v3 & 0x30000) == 0x10000) + ((v3 >> 28) & 8) + 8 * v4 + 4 * ((v5 >> 30) & 1) + 12 * v6;
}

unint64_t swift::StableAddressConcurrentReadableHashMap<swift::GenericCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)14>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&>(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  explicit = atomic_load_explicit((a1 + 40), memory_order_acquire);
  if (!explicit || (v11 = *(explicit + 24), v20 = (explicit + 40), v21 = *(explicit + 8), LODWORD(v22) = v11, (swift::MetadataCacheKey::operator==(a2, &v20) & 1) == 0))
  {
    atomic_fetch_add_explicit(a1, 1u, memory_order_acquire);
    do
    {
      v12 = atomic_load_explicit((a1 + 8), memory_order_acquire);
      v13 = atomic_load_explicit((a1 + 16), memory_order_acquire);
      v14 = atomic_load_explicit((a1 + 4), memory_order_acquire);
    }

    while (v12 != atomic_load_explicit((a1 + 8), memory_order_acquire));
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15 || v14 == 0;
    if (v16 || (v17 = swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::find<swift::MetadataCacheKey>(a2, v13, v14, v12 + 8)) == 0)
    {
      atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_release);
      v27 = 0;
      v26 = 0;
      v18 = a2[1];
      v25[0] = *a2;
      v25[1] = v18;
      v20 = a2;
      *&v21 = a3;
      *(&v21 + 1) = a4;
      v22 = a5;
      v23 = &v27;
      v24 = &v26;
      swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,std::pair<swift::GenericCacheEntry*,BOOL> swift::StableAddressConcurrentReadableHashMap<swift::GenericCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)14>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&>(swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&)::{lambda(swift::HashMapElementWrapper<swift::GenericCacheEntry>*,BOOL)#1}>(a1, v25, &v20);
      explicit = v27;
      *(a1 + 40) = v27;
    }

    else
    {
      *(a1 + 40) = *v17;
      explicit = *v17;
      atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_release);
    }
  }

  return explicit;
}

void swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,std::pair<swift::GenericCacheEntry*,BOOL> swift::StableAddressConcurrentReadableHashMap<swift::GenericCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)14>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&>(swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&)::{lambda(swift::HashMapElementWrapper<swift::GenericCacheEntry>*,BOOL)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 24));
  v6 = *(a1 + 16);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if ((v6 & 3) == 0 || v7 == 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = *v7;
  }

  v10 = *(a1 + 4);
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = (v11 + 2);
  }

  else
  {
    v12 = 0;
  }

  v13 = swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::find<swift::MetadataCacheKey>(a2, *(a1 + 16), *(a1 + 4), v12);
  if (v13)
  {
    **(a3 + 32) = *v13;
    **(a3 + 40) = 0;
    __dmb(0xBu);
    if (*a1)
    {
      goto LABEL_41;
    }

    v16 = (a1 + 32);
    v15 = *(a1 + 32);
    if (v15)
    {
      do
      {
        v17 = *v15;
        free(v15[1]);
        free(v15);
        v15 = v17;
      }

      while (v17);
    }

    goto LABEL_40;
  }

  v18 = (v10 + 1);
  if ((1 << v9) / ((1 << v9) - v18) >= 4)
  {
    v6 = swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::resize(a1, v6, v9, v12);
    swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::find<swift::MetadataCacheKey>(a2, v6, v10, v12);
  }

  v19 = v14;
  if (!v11 || (v20 = v11, v10 >= *v11))
  {
    v21 = v10 + (v10 >> 2);
    if (v21 <= v10 + 1)
    {
      v21 = v10 + 1;
    }

    v22 = malloc_good_size(8 * v21 + 8);
    v23 = malloc_type_malloc(v22, 0x1020040D5A9D86FuLL);
    if (!v23)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v20 = v23;
    *v23 = (v22 + 0x7FFFFFFF8) >> 3;
    if (v11)
    {
      memcpy(v23 + 2, v11 + 2, 8 * v10);
      v24 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      *v24 = *(a1 + 32);
      v24[1] = v11;
      *(a1 + 32) = v24;
    }

    atomic_store(v20, (a1 + 8));
  }

  if (swift::StableAddressConcurrentReadableHashMap<swift::GenericCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)14>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&>(swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&)::{lambda(swift::HashMapElementWrapper<swift::GenericCacheEntry> *,BOOL)#1}::operator()(a3, (v20 + 8 * v10 + 8), 1))
  {
    atomic_store(v18, (a1 + 4));
    if ((v6 & 3) > 1)
    {
      if ((v6 & 3) == 2)
      {
        v25 = v6 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v6 & 3) == 0)
        {
          v25 = 0;
        }

        atomic_store(v10 + 1, (v25 + 2 * v19));
      }

      else
      {
        v26 = v6 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v6 & 3) == 0)
        {
          v26 = 0;
        }

        atomic_store(v18, (v26 + 4 * v19));
      }
    }

    else if ((v6 & 3) != 0)
    {
      atomic_store(v10 + 1, ((v6 & 0xFFFFFFFFFFFFFFFCLL) + v19));
    }

    else
    {
      atomic_store((v18 << (4 * v19)) | v6, (a1 + 16));
    }
  }

  __dmb(0xBu);
  if (!*a1)
  {
    v16 = (a1 + 32);
    v27 = *(a1 + 32);
    if (v27)
    {
      do
      {
        v28 = *v27;
        free(v27[1]);
        free(v27);
        v27 = v28;
      }

      while (v28);
    }

LABEL_40:
    *v16 = 0;
  }

LABEL_41:

  os_unfair_lock_unlock((a1 + 24));
}

uint64_t swift::MetadataCacheKey::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 14);
  v5 = *(a1 + 8);
  v6 = *(a1 + 10);
  v7 = *a1 + 8 * *(a1 + 8) + 8 * v4 + 8 * *(a1 + 10) - *a1;
  v8 = *(a2 + 14);
  v9 = *(a2 + 8);
  v10 = *(a2 + 10);
  if (v7 != *a2 + 8 * *(a2 + 8) + 8 * *(a2 + 14) + 8 * *(a2 + 10) - *a2)
  {
    return 0;
  }

  if (!memcmp(v2, v3, v7))
  {
    return 1;
  }

  result = 0;
  if (v5 != v9)
  {
    return result;
  }

  if (v6 != v10)
  {
    return result;
  }

  v13 = a1;
  if (v4 != v8)
  {
    return result;
  }

  v14 = *(a1 + 12);
  if (v14 != *(a2 + 12))
  {
    return 0;
  }

  if (*(a1 + 12))
  {
    v15 = (*(a2 + 16) + 4);
    v16 = (*(a1 + 16) + 4);
    v17 = *(a1 + 12);
    do
    {
      if (*(v16 - 2) != *(v15 - 2) || *(v16 - 1) != *(v15 - 1) || *v16 != *v15)
      {
        return 0;
      }

      v15 += 4;
      v16 += 4;
      --v17;
    }

    while (v17);
  }

  if (v4)
  {
    v18 = v4;
    v19 = v2;
    v20 = v3;
    do
    {
      if (*v19 != *v20)
      {
        return 0;
      }

      ++v20;
      ++v19;
      --v18;
    }

    while (v18);
  }

  v21 = *(a1 + 16);
  if (v5)
  {
    v22 = 0;
    v23 = 0;
    v24 = v4;
    do
    {
      if (v23 >= v14 || (v25 = (v21 + 8 * v23), *v25) || v24 != v25[1])
      {
        if (*(v2 + v24) != *(v3 + v24))
        {
          return 0;
        }
      }

      else
      {
        v26 = *(v2 + v25[2]);
        if (v26)
        {
          v27 = (*(v2 + v24) & 0xFFFFFFFFFFFFFFFELL);
          v28 = (*(v3 + v24) & 0xFFFFFFFFFFFFFFFELL);
          if (*v27 != *v28)
          {
            return 0;
          }

          v29 = 1;
          do
          {
            v30 = v29;
            if (v26 == v29)
            {
              break;
            }

            v31 = v27[v29];
            v32 = v28[v29++];
          }

          while (v31 == v32);
          if (v30 < v26)
          {
            return 0;
          }
        }

        ++v23;
      }

      ++v24;
      ++v22;
    }

    while (v22 != v5);
    LODWORD(v4) = v5 + v4;
  }

  else
  {
    v23 = 0;
  }

  if (!v6)
  {
    return 1;
  }

  v33 = 0;
  v51 = *(a1 + 16);
  while (1)
  {
    if (v23 >= *(v13 + 12) || (v37 = (v21 + 8 * v23), *v37 != 1) || v4 != v37[1])
    {
      v43 = *(v2 + v4);
      v44 = *(v3 + v4);
      if (v43 == v44)
      {
        goto LABEL_41;
      }

      if (*v43)
      {
        v34 = *v43;
        v35 = *v44;
        if (!*v44)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v34 = 0;
        v35 = *v44;
        if (!*v44)
        {
LABEL_50:
          v36 = 0;
LABEL_40:
          result = swift::MetadataCacheKey::areConformanceDescriptorsEqual(v34, v36);
          v13 = a1;
          if (result)
          {
            goto LABEL_41;
          }

          return result;
        }
      }

      v36 = v35;
      goto LABEL_40;
    }

    v38 = *(v2 + v37[2]);
    if (v38)
    {
      break;
    }

    ++v23;
LABEL_41:
    LODWORD(v4) = v4 + 1;
    ++v33;
    result = 1;
    if (v33 == *(v13 + 10))
    {
      return result;
    }
  }

  v39 = 0;
  v40 = 0;
  v41 = *(v2 + v4) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v3 + v4) & 0xFFFFFFFFFFFFFFFELL;
  while (2)
  {
    v49 = *(v41 + 8 * v40);
    v50 = *(v42 + 8 * v40);
    if (v49 == v50)
    {
      goto LABEL_54;
    }

    if (!*v49)
    {
      v45 = 0;
      v46 = *v50;
      if (!*v50)
      {
        goto LABEL_58;
      }

      goto LABEL_52;
    }

    v45 = *v49;
    v46 = *v50;
    if (*v50)
    {
LABEL_52:
      v47 = v46;
      goto LABEL_53;
    }

LABEL_58:
    v47 = 0;
LABEL_53:
    v48 = swift::MetadataCacheKey::areConformanceDescriptorsEqual(v45, v47);
    v13 = a1;
    if (!v48)
    {
      break;
    }

LABEL_54:
    v39 = ++v40 >= v38;
    if (v38 != v40)
    {
      continue;
    }

    break;
  }

  if (v39)
  {
    ++v23;
    v21 = v51;
    goto LABEL_41;
  }

  return 0;
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::find<swift::MetadataCacheKey>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 24);
  v9 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v10 = 4;
  if ((a2 & 3) != 0 && v9)
  {
    v10 = *v9;
  }

  v11 = ~(-1 << v10);
  v12 = a2 & 3;
  if ((a2 & 3) != 0)
  {
    v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v13 = 0;
  }

  while (1)
  {
    v14 = v8 & v11;
    v15 = v14 <= 1 ? 1 : v14;
    if (v12 > 1)
    {
      break;
    }

    if (v12)
    {
      LODWORD(v16) = v13 + v15;
      LOBYTE(v16) = atomic_load_explicit((v13 + v15), memory_order_acquire);
      if (!v16)
      {
        return 0;
      }
    }

    else
    {
      v16 = (a2 >> (4 * v15)) & 0xF;
      if (!v16)
      {
        return 0;
      }
    }

LABEL_21:
    v17 = (v16 - 1);
    if (v17 < a3)
    {
      v18 = *(a4 + 8 * v17);
      v19 = *(v18 + 24);
      v21 = v18 + 40;
      v22 = *(v18 + 8);
      v23 = v19;
      if (swift::MetadataCacheKey::operator==(a1, &v21))
      {
        return a4 + 8 * v17;
      }
    }

    v8 = v15 + 1;
  }

  if (v12 == 2)
  {
    LODWORD(v16) = v13 + 2 * v15;
    LOWORD(v16) = atomic_load_explicit((v13 + 2 * v15), memory_order_acquire);
    if (!v16)
    {
      return 0;
    }

    goto LABEL_21;
  }

  LODWORD(v16) = atomic_load_explicit((v13 + 4 * v15), memory_order_acquire);
  if (v16)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t swift::StableAddressConcurrentReadableHashMap<swift::GenericCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)14>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&>(swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetMetadata<swift::InProcess> const*&)::{lambda(swift::HashMapElementWrapper<swift::GenericCacheEntry> *,BOOL)#1}::operator()(uint64_t a1, char **a2, char a3)
{
  if (a3)
  {
    v6 = 8 * (*(*a1 + 8) + *(*a1 + 14) + *(*a1 + 10));
    v22 = 14;
    v7 = swift::MetadataAllocator::Allocate(&v22, v6 + 40, 8uLL);
    v8 = **a1;
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 10);
    v11 = *(*a1 + 12);
    v12 = *(*a1 + 14);
    v13 = *(*a1 + 16);
    v14 = *(*a1 + 24);
    v15 = **(a1 + 24);
    *(*(a1 + 8) + 17) = 4;
    *v7 = 4;
    *(v7 + 4) = v9;
    *(v7 + 5) = v10;
    *(v7 + 6) = v11;
    *(v7 + 7) = v12;
    *(v7 + 2) = v13;
    *(v7 + 6) = v14;
    *(v7 + 4) = v15;
    v16 = v7 + 40;
    memcpy(v7 + 40, v8, 8 * (v10 + v9 + v12));
    if (v11)
    {
      v17 = (v13 + 4);
      do
      {
        v19 = *(v17 - 1);
        v20 = *&v16[8 * *v17];
        if (*(v17 - 2) == 1)
        {
          WitnessTablePack = swift_allocateWitnessTablePack(*&v16[8 * v19], v20);
        }

        else
        {
          if (*(v17 - 2))
          {
            goto LABEL_6;
          }

          WitnessTablePack = swift_allocateMetadataPack(*&v16[8 * v19], v20);
        }

        *&v16[8 * v19] = WitnessTablePack;
LABEL_6:
        v17 += 4;
        --v11;
      }

      while (v11);
    }

    *a2 = v7;
  }

  else
  {
    v7 = *a2;
  }

  **(a1 + 32) = v7;
  **(a1 + 40) = a3;
  return 1;
}

unint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::resize(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v8 = a3 + 1;
  v9 = (a3 + 1);
  if (v9 >= 0x11)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = malloc_type_calloc(2 << a3, v11, 0x48DDA4AEuLL);
  if (!v12)
  {
    swift::hashable_support::findHashableBaseTypeOfHashableType();
  }

  if (v11 != 1)
  {
    if (v11 == 4)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }
  }

  v13 = v11 | v12;
  *v12 = v8;
  if (a3)
  {
    v14 = a2 & 3;
    v15 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    if ((a2 & 3) != 0)
    {
      v16 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v16 = 0;
    }

    v17 = v13 & 3;
    v18 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    if ((v13 & 3) == 0)
    {
      v18 = 0;
    }

    v19 = 1;
    while (1)
    {
      if ((a2 & 3) > 1)
      {
        if ((a2 & 3) == 2)
        {
          LODWORD(v20) = *(v16 + 2 * v19);
          if (*(v16 + 2 * v19))
          {
            goto LABEL_31;
          }
        }

        else
        {
          LODWORD(v20) = *(v16 + 4 * v19);
          if (v20)
          {
LABEL_31:
            for (i = *(*(a4 + 8 * (v20 - 1)) + 24); ; i = v23 + 1)
            {
              v23 = i & ~(-2 << a3);
              if (v23)
              {
                if ((v13 & 3) > 1)
                {
                  LODWORD(v22) = v17 == 2 ? *(v18 + 2 * v23) : *(v18 + 4 * v23);
                }

                else if ((v13 & 3) != 0)
                {
                  LODWORD(v22) = *(v18 + v23);
                }

                else
                {
                  v22 = (v13 >> (4 * v23)) & 0xF;
                }

                if (!v22)
                {
                  break;
                }
              }
            }

            if (v17 == 3)
            {
              *(v18 + 4 * v23) = v20;
            }

            else if (v17 == 2)
            {
              *(v18 + 2 * v23) = v20;
            }

            else
            {
              *(v18 + v23) = v20;
            }
          }
        }
      }

      else if ((a2 & 3) != 0)
      {
        LODWORD(v20) = *(v16 + v19);
        if (*(v16 + v19))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v20 = (a2 >> (4 * v19)) & 0xF;
        if (v20)
        {
          goto LABEL_31;
        }
      }

      if (++v19 >> a3)
      {
        goto LABEL_47;
      }
    }
  }

  v14 = a2 & 3;
  v15 = a2 & 0xFFFFFFFFFFFFFFFCLL;
LABEL_47:
  atomic_store(v13, (a1 + 16));
  if (v14 && v15)
  {
    v24 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
    *v24 = *(a1 + 32);
    v24[1] = v15;
    *(a1 + 32) = v24;
  }

  return v13;
}

void swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::awaitSatisfyingState(atomic_ullong *a1, os_unfair_lock_t lock, uint64_t a3)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v23 = explicit;
  v24 = a3;
  v4 = explicit & 7;
  if (v4 - 1 >= 3)
  {
    if ((explicit & 7) != 0)
    {
      if (v4 == 4)
      {
        return;
      }

      goto LABEL_47;
    }

    goto LABEL_16;
  }

  if (v24 > 0x3Eu)
  {
    if (v24 == 255)
    {
      return;
    }

    if (v24 != 63)
    {
      goto LABEL_47;
    }

    if (v4 > 1)
    {
      return;
    }
  }

  else if (v24)
  {
    if (v24 != 1)
    {
      goto LABEL_47;
    }

    if (v4 >= 3)
    {
      return;
    }
  }

  if ((explicit & 8) != 0)
  {
    if ((v24 & 0x100) != 0)
    {
      return;
    }

LABEL_16:
    v5 = 2;
    goto LABEL_17;
  }

  v5 = 3;
LABEL_17:
  v22 = v5;
  locka = lock;
  v20 = 0;
  v21 = 0;
  v17[0] = &v23;
  v17[1] = a1;
  v17[2] = &v22;
  v17[3] = &v24;
  v17[4] = &v18;
  v18 = 0;
  p_locka = &locka;
  v26 = 0;
  os_unfair_lock_lock(lock);
  swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::awaitSatisfyingState(swift::ConcurrencyControl &,swift::MetadataRequest)::{lambda(swift::AtomicWaitQueue<swift::MetadataWaitQueue,swift::Mutex>::Worker::Operation &)#1}::operator()(v17, &p_locka);
  for (i = lock; ; i = v10)
  {
    os_unfair_lock_unlock(i);
    v9 = v26;
    if (!v26)
    {
      break;
    }

    v26 = 0;
    os_unfair_lock_lock(v9 + 2);
    os_unfair_lock_unlock(v9 + 2);
    v10 = locka;
    os_unfair_lock_lock(locka);
    if (*&v9->_os_unfair_lock_opaque == 1)
    {
      v11 = *&v9[4]._os_unfair_lock_opaque;
      *&v9[4]._os_unfair_lock_opaque = 0;
      if (v11)
      {
        MEMORY[0x1865C92E0](v11, 0x80C4018A671A6);
      }

      v9;
    }

    else
    {
      --*&v9->_os_unfair_lock_opaque;
    }

    swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::awaitSatisfyingState(swift::ConcurrencyControl &,swift::MetadataRequest)::{lambda(swift::AtomicWaitQueue<swift::MetadataWaitQueue,swift::Mutex>::Worker::Operation &)#1}::operator()(v17, &p_locka);
  }

  v12 = v23 & 7;
  if (v22 != 3)
  {
    if ((v23 & 7) > 2)
    {
      if (v12 == 3 || v12 == 4)
      {
        goto LABEL_27;
      }
    }

    else if (v12 == 1 || v12 == 2)
    {
      goto LABEL_27;
    }

LABEL_47:
    __break(1u);
    return;
  }

  HIBYTE(v21) = v23 & 7;
  swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::doInitialization(a1, &locka, v24);
LABEL_27:
  v13 = v18;
  v18 = 0;
  if (v13)
  {
    v14 = *(v13 + 16);
    *(v13 + 16) = 0;
    if (v14)
    {
      MEMORY[0x1865C92E0](v14, 0x80C4018A671A6);
    }

    MEMORY[0x1865C92E0](v13, 0x1060C4048D9C6C4);
  }

  if (v20)
  {
    os_unfair_lock_unlock(v20 + 2);
    v15 = v20;
    if (v20)
    {
      v16 = *(v20 + 2);
      *(v20 + 2) = 0;
      if (v16)
      {
        MEMORY[0x1865C92E0](v16, 0x80C4018A671A6);
      }

      v15;
    }
  }
}

uint64_t swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::doInitialization(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v22 = 0u;
    v23 = 0u;
    v8 = &v22;
  }

  v9 = *(a2 + 17);
  swift::GenericCacheEntry::tryInitialize(v6, v9, v8, v19);
  v10 = v19[0];
  v12 = v20;
  v11 = v21;
  *(a2 + 17) = v19[0];
  if (!v12)
  {
    v14 = v10;
    goto LABEL_24;
  }

  v18 = v7;
  LODWORD(v7) = a3;
  while (1)
  {
    if (v10 - 1 >= 3)
    {
      if (v10 != 4)
      {
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (a3 > 0x3Eu)
    {
      if (a3 != 63)
      {
        goto LABEL_21;
      }

      if (v10 > 1u)
      {
        goto LABEL_22;
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_20;
      }

      if (v10 > 2u)
      {
        goto LABEL_22;
      }
    }

    if ((a3 & 0x100) != 0)
    {
      break;
    }

    if (v9 < v10)
    {
      v28[0] = v12;
      v28[1] = v11;
      v25 = a2;
      v26 = v28;
      v27 = a1;
      v13 = *a2;
      v29 = &v25;
      v30 = a2;
      os_unfair_lock_lock(v13);
      swift::AtomicWaitQueue<swift::MetadataWaitQueue,swift::Mutex>::Worker::maybeReplaceQueue<swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::notifyWaitingThreadsOfProgress(swift::MetadataWaitQueue::Worker &,swift::MetadataDependency)::{lambda(void)#1}>(swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::notifyWaitingThreadsOfProgress(swift::MetadataWaitQueue::Worker &,swift::MetadataDependency)::{lambda(void)#1} &&)::{lambda(void)#1}::operator()(&v29);
      os_unfair_lock_unlock(v13);
      v18 = *(a2 + 8);
    }

    swift::blockOnMetadataDependency(*(a1 + 32), a3, v20, v21);
    v9 = *(a2 + 17);
    swift::GenericCacheEntry::tryInitialize(v6, v9, v8, v19);
    v10 = v19[0];
    v12 = v20;
    v11 = v21;
    *(a2 + 17) = v19[0];
    if (!v12)
    {
      v7 = v18;
      goto LABEL_23;
    }
  }

  while (1)
  {
LABEL_22:
    v7 = v18;
    if (!*(v18 + 16) && v22 | *(&v22 + 1) | v23 | *(&v23 + 1))
    {
      operator new();
    }

LABEL_23:
    v14 = v10;
    v10 = *(a2 + 17);
LABEL_24:
    v15 = *(v7 + 16);
    *(v7 + 16) = 0;
    v24 = v10;
    v28[0] = 0;
    if (v12 | v15)
    {
      operator new();
    }

    v25 = &v24;
    v26 = v28;
    v27 = a1;
    v16 = *a2;
    v29 = &v25;
    v30 = a2;
    swift::Mutex::withLock<void swift::AtomicWaitQueue<swift::MetadataWaitQueue,swift::Mutex>::Worker::finishAndUnpublishQueue<swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::finishAndPublishProgress(swift::MetadataWaitQueue::Worker &,swift::MetadataDependency,swift::PrivateMetadataCompletionContext *)::{lambda(void)#1}>(swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::finishAndPublishProgress(swift::MetadataWaitQueue::Worker &,swift::MetadataDependency,swift::PrivateMetadataCompletionContext *)::{lambda(void)#1} &&)::{lambda(void)#1}>(v16, &v29);
    *(a2 + 16) = 0;
    *(a2 + 8) = 0;
    result = *(a1 + 32);
    if (v14 > 2u)
    {
      break;
    }

    if (v14 == 1 || v14 == 2)
    {
      return result;
    }

    do
    {
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    while (v7 != 255);
  }

  if (v14 != 3 && v14 != 4)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t **swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::awaitSatisfyingState(swift::ConcurrencyControl &,swift::MetadataRequest)::{lambda(swift::AtomicWaitQueue<swift::MetadataWaitQueue,swift::Mutex>::Worker::Operation &)#1}::operator()(unint64_t **result, void *a2)
{
  v2 = result[1];
  v3 = *v2;
  **result = *v2;
  v4 = v3 & 7;
  if (v4 - 1 >= 3)
  {
    if ((v3 & 7) == 0)
    {
LABEL_28:
      *result[2] = 2;
      v21 = (v3 & 0xFFFFFFFFFFFFFFF0);
      ++*v21;
      a2[1] = v21;
      return result;
    }

    if (v4 == 4)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

  v5 = *result[3];
  if (v5 > 0x3Eu)
  {
    if (v5 == 255)
    {
      goto LABEL_13;
    }

    if (v5 == 63)
    {
      if (v4 <= 1)
      {
        goto LABEL_15;
      }

LABEL_13:
      v6 = 0;
      goto LABEL_14;
    }

LABEL_30:
    __break(1u);
    return result;
  }

  if (!*result[3])
  {
    goto LABEL_15;
  }

  if (v5 != 1)
  {
    goto LABEL_30;
  }

  if (v4 > 2)
  {
    goto LABEL_13;
  }

LABEL_15:
  if ((v3 & 8) != 0)
  {
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    v6 = 1;
LABEL_14:
    *result[2] = v6;
    return result;
  }

  *result[2] = 3;
  v7 = *a2;
  v8 = *(*a2 + 8);
  if (!v8)
  {
    v9 = result;
    v10 = a2;
    v8 = swift_slowAlloc(0x30, 0xFuLL);
    *v8 = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *v8 = 1;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    os_unfair_lock_lock((v8 + 8));
    a2 = v10;
    result = v9;
    *(v7 + 8) = v8;
    v3 = **v9;
  }

  if ((v3 & 8) == 0)
  {
    v11 = (v3 & 0xFFFFFFFFFFFFFFF0);
    if ((v3 & 0xFFFFFFFFFFFFFFF0) != 0)
    {
      *(v8 + 24) = *v11;
      v12 = *((v3 & 0xFFFFFFFFFFFFFFF0) + 0x10);
      *((v3 & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0;
      v13 = *(v8 + 16);
      *(v8 + 16) = v12;
      if (v13)
      {
        v14 = result;
        v15 = a2;
        MEMORY[0x1865C92E0](v13, 0x80C4018A671A6);
        a2 = v15;
        result = v14;
      }

      v16 = result[4];
      v17 = *v16;
      *v16 = v11;
      if (v17)
      {
        v18 = a2;
        v19 = result;
        v20 = *(v17 + 16);
        *(v17 + 16) = 0;
        if (v20)
        {
          MEMORY[0x1865C92E0](v20, 0x80C4018A671A6);
        }

        MEMORY[0x1865C92E0](v17, 0x1060C4048D9C6C4);
        result = v19;
        a2 = v18;
      }
    }
  }

  atomic_store(**result & 7 | v8 | 8, v2);
  *(*a2 + 16) = 1;
  return result;
}

_DWORD *swift::GenericCacheEntry::tryInitialize@<X0>(unint64_t *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2 <= 2)
  {
    result = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a1);
    v8 = *result & 0x1F;
    switch(v8)
    {
      case 18:
        if (result)
        {
          v11 = result;
        }

        else
        {
          v11 = 0;
        }

        if (!v11)
        {
          v11 = 0;
        }

        v12 = v11 + 7;
        break;
      case 17:
        if (result)
        {
          v10 = result;
        }

        else
        {
          v10 = 0;
        }

        if (!v10)
        {
          v10 = 0;
        }

        v12 = v10 + 7;
        break;
      case 16:
        if (result)
        {
          v9 = result;
        }

        else
        {
          v9 = 0;
        }

        if (!v9)
        {
          v9 = 0;
        }

        v12 = v9 + 11;
        break;
      default:
        __break(1u);
        return result;
    }

    v13 = v12[1];
    if (v13)
    {
      v14 = v12 + v13 + 4;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v14 + 4);
    if (v15)
    {
      result = ((v14 + 4 + v15))(a1, a3);
    }

    else
    {
      result = MEMORY[0](a1, a3);
    }

    if (result)
    {
      if ((*(*(a1 - 1) + 80) & 0x400000) != 0)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      goto LABEL_35;
    }
  }

  result = swift::checkTransitiveCompleteness(a1);
  if (result)
  {
    v17 = 3;
LABEL_35:
    *a4 = v17;
    *(a4 + 8) = result;
    *(a4 + 16) = v16;
    return result;
  }

  *a4 = 4;
  *(a4 + 8) = 0;
  return result;
}

void swift::Mutex::withLock<void swift::AtomicWaitQueue<swift::MetadataWaitQueue,swift::Mutex>::Worker::finishAndUnpublishQueue<swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::finishAndPublishProgress(swift::MetadataWaitQueue::Worker &,swift::MetadataDependency,swift::PrivateMetadataCompletionContext *)::{lambda(void)#1}>(swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::finishAndPublishProgress(swift::MetadataWaitQueue::Worker &,swift::MetadataDependency,swift::PrivateMetadataCompletionContext *)::{lambda(void)#1} &&)::{lambda(void)#1}>(os_unfair_lock_s *a1, unsigned __int8 ***a2)
{
  os_unfair_lock_lock(a1);
  v4 = a2[1];
  atomic_store(*(*a2)[1] | ***a2, (*a2)[2]);
  os_unfair_lock_unlock(v4[1] + 2);
  v5 = v4[1];
  if (*v5 == 1)
  {
    v6 = *(v5 + 2);
    *(v5 + 2) = 0;
    if (v6)
    {
      MEMORY[0x1865C92E0](v6, 0x80C4018A671A6);
    }

    v5;
  }

  else
  {
    --*v5;
  }

  os_unfair_lock_unlock(a1);
}

void swift::AtomicWaitQueue<swift::MetadataWaitQueue,swift::Mutex>::Worker::maybeReplaceQueue<swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::notifyWaitingThreadsOfProgress(swift::MetadataWaitQueue::Worker &,swift::MetadataDependency)::{lambda(void)#1}>(swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::notifyWaitingThreadsOfProgress(swift::MetadataWaitQueue::Worker &,swift::MetadataDependency)::{lambda(void)#1} &&)::{lambda(void)#1}::operator()(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(*a1 + 16);
  v4 = *(**a1 + 8);
  if (*v4 == 1)
  {
    v5 = *(**a1 + 8);
  }

  else
  {
    v5 = swift_slowAlloc(0x30, 0xFuLL);
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 1;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    os_unfair_lock_lock((v5 + 8));
    v6 = v4[2];
    v4[2] = 0;
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;
    if (v7)
    {
      MEMORY[0x1865C92E0](v7, 0x80C4018A671A6);
    }
  }

  *(v5 + 24) = *v2[1];
  atomic_store(*(*v2 + 17) | v5 | 8, v3);
  if (v5 != v4)
  {
    os_unfair_lock_unlock((*(v1 + 8) + 8));
    v8 = *(v1 + 8);
    if (*v8 == 1)
    {
      v9 = v8[2];
      v8[2] = 0;
      if (v9)
      {
        MEMORY[0x1865C92E0](v9, 0x80C4018A671A6);
      }

      v8;
    }

    else
    {
      --*v8;
    }

    *(v1 + 8) = v5;
  }
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(a1);
  ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getConditionalInvertibleProtocolRequirementCounts(a1);
  if (v4)
  {
    v5 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v4 - 2);
    if (a1)
    {
LABEL_3:
      v6 = a1;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  if ((*v6 & 0x80) != 0)
  {
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    v7 = (*(v9 + 21) >> 2) & 1;
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v7 = 0;
  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = a1;
LABEL_14:
  if ((*v8 & 0x80) != 0 && (!a1 ? (v10 = 0) : (v10 = a1), (*(v10 + 21) & 4) != 0 && (!a1 ? (v11 = 0) : (v11 = a1), (*v11 & 0x80) != 0 && (!a1 ? (v12 = 0) : (v12 = a1), (*(v12 + 21) & 4) != 0))))
  {
    if (a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = 0;
    }

    v16 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v15);
    v17 = swift::TrailingGenericContextObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getConditionalInvertibleProtocolRequirementCounts(v15);
    if (v18)
    {
      v19 = *(v17 + 2 * v18 - 2);
    }

    else
    {
      v19 = 0;
    }

    v13 = *(v16 + 12 * v19);
  }

  else
  {
    v13 = 0;
  }

  return TrailingObjectsImpl + 12 * v5 + 4 * v7 + 4 * v13;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(a1);
  v3 = a1;
  if ((*a1 & 0x80) != 0)
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    v4 = (*(v6 + 21) >> 1) & 1;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = v3;
  if ((*v5 & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!v5)
  {
    v5 = 0;
  }

  if ((*(v5 + 21) & 2) != 0)
  {
    v8 = TrailingObjectsImpl;
    if (v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    v10 = vcnt_s8(*swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v9));
    v10.i16[0] = vaddlv_u8(v10);
    v7 = v10.u32[0];
    TrailingObjectsImpl = v8;
  }

  else
  {
LABEL_13:
    v7 = 0;
  }

  return (TrailingObjectsImpl + 2 * v4 + 2 * v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(a1);
  if ((*a1 & 0x80) == 0 || (!a1 ? (v3 = 0) : (v3 = a1), (*(v3 + 21) & 1) == 0 || (!a1 ? (v4 = 0) : (v4 = a1), (*v4 & 0x80) == 0 || (!a1 ? (v5 = 0) : (v5 = a1), (*(v5 + 21) & 1) == 0))))
  {
    v6 = 0;
    return TrailingObjectsImpl + 8 * v6;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v8 == -28)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 + 7;
    if (!v8)
    {
      v8 = 0;
    }
  }

  v11 = *v8;
  if ((v11 & 0x80) != 0)
  {
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    v12 = *(v14 + 18);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_31:
    v13 = 0;
    goto LABEL_32;
  }

  v12 = 0;
  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_26:
  v13 = v9;
LABEL_32:
  if ((*v13 & 0x80) != 0)
  {
    if (v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = 0;
    }

    v15 = *(v16 + 19);
  }

  else
  {
    v15 = 0;
  }

  v6 = *(((&v10[4 * ((v11 >> 7) & 1)] + v12 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * v15);
  return TrailingObjectsImpl + 8 * v6;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  if (a1 == -28)
  {
    v1 = 0;
    goto LABEL_3;
  }

  v1 = a1 + 28;
  if (a1)
  {
LABEL_3:
    v2 = a1;
    goto LABEL_6;
  }

  v2 = 0;
LABEL_6:
  v3 = *v2;
  if ((v3 & 0x80) != 0)
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    v4 = *(v6 + 18);
    if (a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if (a1)
    {
LABEL_8:
      v5 = a1;
      goto LABEL_14;
    }
  }

  v5 = 0;
LABEL_14:
  if ((*v5 & 0x80) != 0)
  {
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    v7 = *(v9 + 19);
    if (a1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (a1)
    {
LABEL_16:
      v8 = a1;
      goto LABEL_22;
    }
  }

  v8 = 0;
LABEL_22:
  if ((*v8 & 0x80) != 0)
  {
    if (a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = 0;
    }

    v10 = *(v11 + 21) & 1;
  }

  else
  {
    v10 = 0;
  }

  return (&v1[16 * ((v3 >> 7) & 1) + 3 + v4] & 0xFFFFFFFFFFFFFFFCLL) + 12 * v7 + 4 * v10;
}

unint64_t swift::TrailingGenericContextObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getConditionalInvertibleProtocolRequirementCounts(_BYTE *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if ((*v2 & 0x80) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    v2 = 0;
  }

  if ((*(v2 + 21) & 2) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v4);
  if ((*v4 & 0x80) != 0)
  {
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

    v6 = (*(v8 + 21) >> 1) & 1;
    if (a1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    if (a1)
    {
LABEL_15:
      v7 = a1;
      goto LABEL_21;
    }
  }

  v7 = 0;
LABEL_21:
  result = TrailingObjectsImpl + 2 * v6;
  if ((*v7 & 0x80) != 0)
  {
    if (!v7)
    {
      v7 = 0;
    }

    if ((*(v7 + 21) & 2) != 0)
    {
      v9 = result;
      if (a1)
      {
        v10 = a1;
      }

      else
      {
        v10 = 0;
      }

      vaddlv_u8(vcnt_s8(*swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v10)));
      return v9;
    }
  }

  return result;
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(a1);
  ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getConditionalInvertibleProtocolRequirementCounts(a1);
  if (v4)
  {
    v5 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v4 - 2);
    if (a1)
    {
LABEL_3:
      v6 = a1;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  if ((*v6 & 0x80) != 0)
  {
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    v7 = (*(v9 + 21) >> 2) & 1;
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v7 = 0;
  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = a1;
LABEL_14:
  if ((*v8 & 0x80) != 0 && (!a1 ? (v10 = 0) : (v10 = a1), (*(v10 + 21) & 4) != 0 && (!a1 ? (v11 = 0) : (v11 = a1), (*v11 & 0x80) != 0 && (!a1 ? (v12 = 0) : (v12 = a1), (*(v12 + 21) & 4) != 0))))
  {
    if (a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = 0;
    }

    v16 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v15);
    v17 = swift::TrailingGenericContextObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getConditionalInvertibleProtocolRequirementCounts(v15);
    if (v18)
    {
      v19 = *(v17 + 2 * v18 - 2);
    }

    else
    {
      v19 = 0;
    }

    v13 = *(v16 + 12 * v19);
  }

  else
  {
    v13 = 0;
  }

  return TrailingObjectsImpl + 12 * v5 + 4 * v7 + 4 * v13;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(a1);
  v3 = a1;
  if ((*a1 & 0x80) != 0)
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    v4 = (*(v6 + 21) >> 1) & 1;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = v3;
  if ((*v5 & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (!v5)
  {
    v5 = 0;
  }

  if ((*(v5 + 21) & 2) != 0)
  {
    v8 = TrailingObjectsImpl;
    if (v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    v10 = vcnt_s8(*swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v9));
    v10.i16[0] = vaddlv_u8(v10);
    v7 = v10.u32[0];
    TrailingObjectsImpl = v8;
  }

  else
  {
LABEL_13:
    v7 = 0;
  }

  return (TrailingObjectsImpl + 2 * v4 + 2 * v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(a1);
  if ((*a1 & 0x80) == 0 || (!a1 ? (v3 = 0) : (v3 = a1), (*(v3 + 21) & 1) == 0 || (!a1 ? (v4 = 0) : (v4 = a1), (*v4 & 0x80) == 0 || (!a1 ? (v5 = 0) : (v5 = a1), (*(v5 + 21) & 1) == 0))))
  {
    v6 = 0;
    return TrailingObjectsImpl + 8 * v6;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v8 == -28)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 + 7;
    if (!v8)
    {
      v8 = 0;
    }
  }

  v11 = *v8;
  if ((v11 & 0x80) != 0)
  {
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    v12 = *(v14 + 18);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_31:
    v13 = 0;
    goto LABEL_32;
  }

  v12 = 0;
  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_26:
  v13 = v9;
LABEL_32:
  if ((*v13 & 0x80) != 0)
  {
    if (v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = 0;
    }

    v15 = *(v16 + 19);
  }

  else
  {
    v15 = 0;
  }

  v6 = *(((&v10[4 * ((v11 >> 7) & 1)] + v12 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * v15);
  return TrailingObjectsImpl + 8 * v6;
}

unint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  if (a1 == -28)
  {
    v1 = 0;
    goto LABEL_3;
  }

  v1 = a1 + 28;
  if (a1)
  {
LABEL_3:
    v2 = a1;
    goto LABEL_6;
  }

  v2 = 0;
LABEL_6:
  v3 = *v2;
  if ((v3 & 0x80) != 0)
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    v4 = *(v6 + 18);
    if (a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if (a1)
    {
LABEL_8:
      v5 = a1;
      goto LABEL_14;
    }
  }

  v5 = 0;
LABEL_14:
  if ((*v5 & 0x80) != 0)
  {
    if (a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    v7 = *(v9 + 19);
    if (a1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if (a1)
    {
LABEL_16:
      v8 = a1;
      goto LABEL_22;
    }
  }

  v8 = 0;
LABEL_22:
  if ((*v8 & 0x80) != 0)
  {
    if (a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = 0;
    }

    v10 = *(v11 + 21) & 1;
  }

  else
  {
    v10 = 0;
  }

  return (&v1[16 * ((v3 >> 7) & 1) + 3 + v4] & 0xFFFFFFFFFFFFFFFCLL) + 12 * v7 + 4 * v10;
}

unint64_t swift::TrailingGenericContextObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getConditionalInvertibleProtocolRequirementCounts(_BYTE *a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if ((*v2 & 0x80) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    v2 = 0;
  }

  if ((*(v2 + 21) & 2) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v4);
  if ((*v4 & 0x80) != 0)
  {
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

    v6 = (*(v8 + 21) >> 1) & 1;
    if (a1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    if (a1)
    {
LABEL_15:
      v7 = a1;
      goto LABEL_21;
    }
  }

  v7 = 0;
LABEL_21:
  result = TrailingObjectsImpl + 2 * v6;
  if ((*v7 & 0x80) != 0)
  {
    if (!v7)
    {
      v7 = 0;
    }

    if ((*(v7 + 21) & 2) != 0)
    {
      v9 = result;
      if (a1)
      {
        v10 = a1;
      }

      else
      {
        v10 = 0;
      }

      vaddlv_u8(vcnt_s8(*swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v10)));
      return v9;
    }
  }

  return result;
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::GlobalMetadataCacheEntry>,swift::LazyMutex>::find<swift::TargetTypeContextDescriptor<swift::InProcess> const*>(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *a1;
  {
    v19 = a4;
    v16 = a3;
    v18 = a2;
    v15 = a1;
    v17 = v4;
    getCache();
    a3 = v16;
    v4 = v17;
    a1 = v15;
    a2 = v18;
    a4 = v19;
  }

  v5 = 0x9DDFEA08EB382D69 * ((__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed + 8 * v4) ^ HIDWORD(v4));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v5 >> 47) ^ v5);
  v7 = 0x1DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
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
    if (v13 < a3 && **(a4 + 8 * v13) == *a1)
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

unint64_t swift::TrailingGenericContextObjects<swift::TargetGenericContext<swift::InProcess>,swift::TargetGenericContextDescriptorHeader>::getGenericSignature@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>, int8x8_t a3@<D0>)
{
  v5 = a1 + 6;
  v6 = (a1 + a1[2] + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v7 = a1[5];
  if ((v7 & 1) == 0)
  {
    if ((v7 & 4) == 0)
    {
      v12 = 0;
      v9 = 0;
      v13 = 0;
      goto LABEL_17;
    }

    v17 = (v6 + 12 * a1[3]);
    v16 = v17 + (v7 & 2);
    v9 = 0;
    v12 = 0;
    if ((v7 & 2) != 0)
    {
      v20 = *v17;
      v18 = (v17 + 1);
      v19 = v20;
      a3.i32[0] = v20;
      a3 = vcnt_s8(a3);
      a3.i16[0] = vaddlv_u8(a3);
      v16 += 2 * a3.u32[0] + 3;
      if (v20)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_13;
  }

  v8 = (v6 + 12 * a1[3]);
  v9 = *v8;
  v10 = *v8;
  v11 = &v8[v7 & 1];
  if (*v8)
  {
    v12 = &v8[v7 & 1];
  }

  else
  {
    v12 = 0;
  }

  if ((v7 & 4) != 0)
  {
    v14 = &v11[2 * v10] + (v7 & 2);
    if ((v7 & 2) == 0)
    {
      v15 = 0;
      v16 = v14 + 3;
LABEL_16:
      v13 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 12 * v15);
      goto LABEL_17;
    }

    v21 = 2 * v10;
    v19 = LOWORD(v8[v21 + 1]);
    a3.i32[0] = v19;
    a3 = vcnt_s8(a3);
    a3.i16[0] = vaddlv_u8(a3);
    v18 = &v11[v21] + 2;
    v16 = v14 + 2 * a3.u32[0] + 3;
    if (v19)
    {
LABEL_15:
      a3.i32[0] = v19;
      a3 = vcnt_s8(a3);
      a3.i16[0] = vaddlv_u8(a3);
      v15 = *(v18 + 2 * a3.u32[0] - 2);
      goto LABEL_16;
    }

LABEL_13:
    v15 = 0;
    goto LABEL_16;
  }

  v13 = 0;
LABEL_17:
  result = swift::TrailingGenericContextObjects<swift::TargetGenericContext<swift::InProcess>,swift::TargetGenericContextDescriptorHeader>::getGenericValueDescriptors(a1, a3);
  *a2 = *(a1 + 2);
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = result;
  return result;
}

unint64_t swift::TrailingGenericContextObjects<swift::TargetGenericContext<swift::InProcess>,swift::TargetGenericContextDescriptorHeader>::getGenericValueDescriptors(unsigned __int16 *a1, int8x8_t a2)
{
  v2 = a1[5];
  if ((v2 & 4) == 0)
  {
    return 0;
  }

  v4 = (((a1 + a1[2] + 15) & 0xFFFFFFFFFFFFFFFCLL) + 12 * a1[3]);
  if (v2)
  {
    v5 = *v4;
    v6 = &v4[2 * (v2 & 1)];
    v7 = &v6[4 * v5] + (v2 & 2);
    if ((v2 & 2) == 0)
    {
      if (!*((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL))
      {
        return 0;
      }

      goto LABEL_16;
    }

    v9 = 4 * v5;
    v10 = v4[4 * v5 + 2];
    a2.i32[0] = v10;
    a2 = vcnt_s8(a2);
    a2.i16[0] = vaddlv_u8(a2);
    v11 = &v6[v9 + 1];
    v12 = v7 + 2 * a2.u32[0] + 3;
    if (v10)
    {
LABEL_11:
      a2.i32[0] = v10;
      a2 = vcnt_s8(a2);
      a2.i16[0] = vaddlv_u8(a2);
      v13 = *(v11 + 2 * a2.u32[0] - 2);
      goto LABEL_14;
    }
  }

  else
  {
    v8 = v4 + (v2 & 2);
    if ((v2 & 2) == 0)
    {
      if (!*(v8 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return 0;
      }

      goto LABEL_18;
    }

    v11 = (v4 + 1);
    v10 = *v4;
    a2.i32[0] = v10;
    a2 = vcnt_s8(a2);
    a2.i16[0] = vaddlv_u8(a2);
    v12 = v8 + 2 * a2.u32[0] + 3;
    if (*v4)
    {
      goto LABEL_11;
    }
  }

  v13 = 0;
LABEL_14:
  if (!*((v12 & 0xFFFFFFFFFFFFFFFCLL) + 12 * v13))
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
LABEL_18:
    v17 = v4 + (v2 & 2);
    if ((v2 & 2) == 0)
    {
      goto LABEL_20;
    }

    v20 = *v4;
    v18 = (v4 + 1);
    v19 = v20;
    a2.i32[0] = v20;
    v21 = vcnt_s8(a2);
    v21.i16[0] = vaddlv_u8(v21);
    v17 += 2 * v21.u32[0] + 3;
    if (!v20)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_16:
  v14 = *v4;
  v15 = &v4[2 * (v2 & 1)];
  v16 = &v15[4 * v14] + (v2 & 2);
  if ((v2 & 2) != 0)
  {
    v23 = 4 * v14;
    v19 = v4[v23 + 2];
    a2.i32[0] = v19;
    v21 = vcnt_s8(a2);
    v21.i16[0] = vaddlv_u8(v21);
    v18 = &v15[v23 + 1];
    v17 = v16 + 2 * v21.u32[0] + 3;
    if (!v19)
    {
      goto LABEL_20;
    }

LABEL_22:
    v21.i32[0] = v19;
    v24 = vcnt_s8(v21);
    v24.i16[0] = vaddlv_u8(v24);
    v22 = 12 * *(v18 + 2 * v24.u32[0] - 2) + 4;
    return (v17 & 0xFFFFFFFFFFFFFFFCLL) + v22;
  }

  v17 = v16 + 3;
LABEL_20:
  v22 = 4;
  return (v17 & 0xFFFFFFFFFFFFFFFCLL) + v22;
}

unint64_t swift::Lazy<anonymous namespace::GenericMetadataCache>::getWithInit<swift::TargetGenericContext<swift::InProcess> const&>(swift::TargetGenericContext<swift::InProcess> const&)::Data::init(uint64_t *a1, int8x8_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  result = swift::TrailingGenericContextObjects<swift::TargetGenericContext<swift::InProcess>,swift::TargetGenericContextDescriptorHeader>::getGenericSignature(v2, &v12, a2);
  v5 = v16;
  *(v3 + 56) = 0;
  *(v3 + 60) = v5;
  *(v3 + 64) = v17;
  v6 = v12;
  if (v12)
  {
    v7 = 0;
    v8 = v14;
    do
    {
      if (*v8 < 0)
      {
        *(v3 + 56) = ++v7;
      }

      ++v8;
      --v6;
    }

    while (v6);
  }

  if (v13)
  {
    v9 = 0;
    v10 = v15;
    v11 = 12 * v13;
    do
    {
      if ((*v10 & 0x9F) == 0x80)
      {
        *(v3 + 58) = ++v9;
      }

      v10 += 3;
      v11 -= 12;
    }

    while (v11);
  }

  return result;
}

uint64_t swift::MetadataCacheKey::MetadataCacheKey(uint64_t result, _OWORD *a2, uint64_t a3)
{
  *result = a3;
  *(result + 8) = *a2;
  v3 = *(result + 8);
  v4 = (1455063249 * v3);
  if (*(result + 8))
  {
    v5 = 0;
    v6 = *(result + 14);
    v7 = v6 + v3;
    do
    {
      if (v5 >= *(result + 12) || (v8 = (*(result + 16) + 8 * v5), *v8) || v6 != v8[1])
      {
        v4 = __ROR8__(v4, 10) ^ (*(a3 + 8 * v6) >> 19) ^ *(a3 + 8 * v6);
      }

      else
      {
        v9 = *(a3 + 8 * v8[2]);
        ++v5;
        if (v9)
        {
          v10 = (*(a3 + 8 * v6) & 0xFFFFFFFFFFFFFFFELL);
          v11 = 1;
          do
          {
            v12 = *v10++;
            v4 = __ROR8__(v4, 10) ^ (v12 >> 19) ^ v12;
            v13 = v11++;
          }

          while (v13 < v9);
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }

  *(result + 24) = (668265261 * v4) >> 10;
  return result;
}

void swift::LockingConcurrentMap<swift::GenericCacheEntry,swift::LockingConcurrentMapStorage<swift::GenericCacheEntry,(unsigned short)14>>::getOrInsert<swift::MetadataCacheKey,swift::MetadataRequest &,swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, _DWORD **a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = (a1 + 48);
  v20 = a1 + 48;
  v21 = 0;
  v22 = 0;
  v11 = a2[1];
  v23 = *a2;
  v24 = v11;
  v12 = swift::StableAddressConcurrentReadableHashMap<swift::GenericCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)14>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&>(a1, &v23, &v20, a3, a4, a5);
  v13 = v12;
  if (v14)
  {
    if (v21)
    {
      LOBYTE(v22) = 1;
    }

    swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::beginAllocation<swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&>(v12, &v20, a4, a5, &v23);
    if (v24 == 1)
    {
      *a6 = v13;
      *(a6 + 8) = v23;
      v15 = v21;
      if (!v21)
      {
        return;
      }

      goto LABEL_10;
    }

    v16 = swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::doInitialization(v13, &v20, *a3);
  }

  else
  {
    swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::awaitSatisfyingState(v12, v10, *a3);
  }

  *a6 = v13;
  *(a6 + 8) = v16;
  *(a6 + 16) = v17;
  v15 = v21;
  if (!v21)
  {
    return;
  }

LABEL_10:
  os_unfair_lock_unlock(v15 + 2);
  v18 = v21;
  if (v21)
  {
    v19 = *(v21 + 2);
    *(v21 + 2) = 0;
    if (v19)
    {
      MEMORY[0x1865C92E0](v19, 0x80C4018A671A6);
    }

    v18;
  }
}

void swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::beginAllocation<swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD **a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  if (*(a2 + 17))
  {
    if (*(a2 + 17) == 4)
    {
      *a5 = *(a1 + 32);
      *(a5 + 8) = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      *a5 = 0;
      *(a5 + 16) = 0;
    }
  }

  else
  {
    v24 = v5;
    v25 = v6;
    v10 = swift::GenericCacheEntry::allocate(a1, *a3, *a4);
    *(a2 + 17) = v11;
    *(a1 + 32) = v10;
    if (v11 == 4)
    {
      v12 = v10;
      v17 = 4;
      v20 = a1;
      v21[0] = 0;
      v18 = &v17;
      v19 = v21;
      v13 = *a2;
      v22 = &v18;
      v23 = a2;
      swift::Mutex::withLock<void swift::AtomicWaitQueue<swift::MetadataWaitQueue,swift::Mutex>::Worker::finishAndUnpublishQueue<swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::finishAndPublishProgress(swift::MetadataWaitQueue::Worker &,swift::MetadataDependency,swift::PrivateMetadataCompletionContext *)::{lambda(void)#1}>(swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::finishAndPublishProgress(swift::MetadataWaitQueue::Worker &,swift::MetadataDependency,swift::PrivateMetadataCompletionContext *)::{lambda(void)#1} &&)::{lambda(void)#1}>(v13, &v22);
      *(a2 + 16) = 0;
      *(a2 + 8) = 0;
      v14 = 1;
      v15 = a5;
      *a5 = v12;
      *(a5 + 8) = 0;
    }

    else
    {
      v20 = a1;
      v21[0] = 0;
      v18 = a2;
      v19 = v21;
      v16 = *a2;
      v22 = &v18;
      v23 = a2;
      os_unfair_lock_lock(v16);
      swift::AtomicWaitQueue<swift::MetadataWaitQueue,swift::Mutex>::Worker::maybeReplaceQueue<swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::notifyWaitingThreadsOfProgress(swift::MetadataWaitQueue::Worker &,swift::MetadataDependency)::{lambda(void)#1}>(swift::MetadataCacheEntryBase<swift::GenericCacheEntry,void const*>::notifyWaitingThreadsOfProgress(swift::MetadataWaitQueue::Worker &,swift::MetadataDependency)::{lambda(void)#1} &&)::{lambda(void)#1}::operator()(&v22);
      os_unfair_lock_unlock(v16);
      v14 = 0;
      v15 = a5;
      *a5 = 0;
    }

    *(v15 + 16) = v14;
  }
}

unint64_t swift::StableAddressConcurrentReadableHashMap<swift::GenericCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)14>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&>(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  explicit = atomic_load_explicit((a1 + 40), memory_order_acquire);
  if (!explicit || (v13 = *(explicit + 24), v22 = (explicit + 40), v23 = *(explicit + 8), LODWORD(v24) = v13, (swift::MetadataCacheKey::operator==(a2, &v22) & 1) == 0))
  {
    atomic_fetch_add_explicit(a1, 1u, memory_order_acquire);
    do
    {
      v14 = atomic_load_explicit((a1 + 8), memory_order_acquire);
      v15 = atomic_load_explicit((a1 + 16), memory_order_acquire);
      v16 = atomic_load_explicit((a1 + 4), memory_order_acquire);
    }

    while (v14 != atomic_load_explicit((a1 + 8), memory_order_acquire));
    if (v14)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17 || v16 == 0;
    if (v18 || (v19 = swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::find<swift::MetadataCacheKey>(a2, v15, v16, v14 + 8)) == 0)
    {
      atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_release);
      v30 = 0;
      v29 = 0;
      v20 = a2[1];
      v28[0] = *a2;
      v28[1] = v20;
      v22 = a2;
      *&v23 = a3;
      *(&v23 + 1) = a4;
      v24 = a5;
      v25 = a6;
      v26 = &v30;
      v27 = &v29;
      swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,std::pair<swift::GenericCacheEntry*,BOOL> swift::StableAddressConcurrentReadableHashMap<swift::GenericCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)14>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&>(swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&)::{lambda(swift::HashMapElementWrapper<swift::GenericCacheEntry>*,BOOL)#1}>(a1, v28, &v22);
      explicit = v30;
      *(a1 + 40) = v30;
    }

    else
    {
      *(a1 + 40) = *v19;
      explicit = *v19;
      atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_release);
    }
  }

  return explicit;
}

void swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,std::pair<swift::GenericCacheEntry*,BOOL> swift::StableAddressConcurrentReadableHashMap<swift::GenericCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)14>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&>(swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&)::{lambda(swift::HashMapElementWrapper<swift::GenericCacheEntry>*,BOOL)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 24));
  v6 = *(a1 + 16);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if ((v6 & 3) == 0 || v7 == 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = *v7;
  }

  v10 = *(a1 + 4);
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = (v11 + 2);
  }

  else
  {
    v12 = 0;
  }

  v13 = swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::find<swift::MetadataCacheKey>(a2, *(a1 + 16), *(a1 + 4), v12);
  if (v13)
  {
    **(a3 + 40) = *v13;
    **(a3 + 48) = 0;
    __dmb(0xBu);
    if (*a1)
    {
      goto LABEL_41;
    }

    v16 = (a1 + 32);
    v15 = *(a1 + 32);
    if (v15)
    {
      do
      {
        v17 = *v15;
        free(v15[1]);
        free(v15);
        v15 = v17;
      }

      while (v17);
    }

    goto LABEL_40;
  }

  v18 = (v10 + 1);
  if ((1 << v9) / ((1 << v9) - v18) >= 4)
  {
    v6 = swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::resize(a1, v6, v9, v12);
    swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<swift::GenericCacheEntry>,swift::Mutex>::find<swift::MetadataCacheKey>(a2, v6, v10, v12);
  }

  v19 = v14;
  if (!v11 || (v20 = v11, v10 >= *v11))
  {
    v21 = v10 + (v10 >> 2);
    if (v21 <= v10 + 1)
    {
      v21 = v10 + 1;
    }

    v22 = malloc_good_size(8 * v21 + 8);
    v23 = malloc_type_malloc(v22, 0x1020040D5A9D86FuLL);
    if (!v23)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v20 = v23;
    *v23 = (v22 + 0x7FFFFFFF8) >> 3;
    if (v11)
    {
      memcpy(v23 + 2, v11 + 2, 8 * v10);
      v24 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      *v24 = *(a1 + 32);
      v24[1] = v11;
      *(a1 + 32) = v24;
    }

    atomic_store(v20, (a1 + 8));
  }

  if (swift::StableAddressConcurrentReadableHashMap<swift::GenericCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)14>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&>(swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&)::{lambda(swift::HashMapElementWrapper<swift::GenericCacheEntry> *,BOOL)#1}::operator()(a3, (v20 + 8 * v10 + 8), 1))
  {
    atomic_store(v18, (a1 + 4));
    if ((v6 & 3) > 1)
    {
      if ((v6 & 3) == 2)
      {
        v25 = v6 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v6 & 3) == 0)
        {
          v25 = 0;
        }

        atomic_store(v10 + 1, (v25 + 2 * v19));
      }

      else
      {
        v26 = v6 & 0xFFFFFFFFFFFFFFFCLL;
        if ((v6 & 3) == 0)
        {
          v26 = 0;
        }

        atomic_store(v18, (v26 + 4 * v19));
      }
    }

    else if ((v6 & 3) != 0)
    {
      atomic_store(v10 + 1, ((v6 & 0xFFFFFFFFFFFFFFFCLL) + v19));
    }

    else
    {
      atomic_store((v18 << (4 * v19)) | v6, (a1 + 16));
    }
  }

  __dmb(0xBu);
  if (!*a1)
  {
    v16 = (a1 + 32);
    v27 = *(a1 + 32);
    if (v27)
    {
      do
      {
        v28 = *v27;
        free(v27[1]);
        free(v27);
        v27 = v28;
      }

      while (v28);
    }

LABEL_40:
    *v16 = 0;
  }

LABEL_41:

  os_unfair_lock_unlock((a1 + 24));
}

uint64_t swift::StableAddressConcurrentReadableHashMap<swift::GenericCacheEntry,swift::TaggedMetadataAllocator<(unsigned short)14>,swift::Mutex>::getOrInsert<swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&>(swift::MetadataCacheKey,swift::MetadataWaitQueue::Worker &,swift::MetadataRequest &,swift::TargetTypeContextDescriptor<swift::InProcess> const*&,void const* const*&)::{lambda(swift::HashMapElementWrapper<swift::GenericCacheEntry> *,BOOL)#1}::operator()(void ***a1, char **a2, char a3)
{
  if (a3)
  {
    v5 = 8 * (*(*a1 + 4) + *(*a1 + 7) + *(*a1 + 5));
    v25 = 14;
    v6 = swift::MetadataAllocator::Allocate(&v25, v5 + 40, 8uLL);
    v7 = a1[1];
    v8 = **a1;
    v9 = *(*a1 + 4);
    v10 = *(*a1 + 5);
    v11 = *(*a1 + 6);
    v12 = *(*a1 + 7);
    v13 = (*a1)[2];
    v14 = *(*a1 + 6);
    *(v7 + 17) = 0;
    v15 = v7[1];
    if (!v15)
    {
      __src = v8;
      v22 = v14;
      v15 = swift_slowAlloc(0x30, 0xFuLL);
      *v15 = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0u;
      *v15 = 1;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      os_unfair_lock_lock((v15 + 8));
      v14 = v22;
      v8 = __src;
      v7[1] = v15;
    }

    *v6 = v15 | 8;
    *(v6 + 4) = v9;
    *(v6 + 5) = v10;
    *(v6 + 6) = v11;
    *(v6 + 7) = v12;
    *(v6 + 2) = v13;
    *(v6 + 6) = v14;
    *(v6 + 4) = 0;
    v16 = v6 + 40;
    memcpy(v6 + 40, v8, 8 * (v10 + v9 + v12));
    if (v11)
    {
      v17 = (v13 + 4);
      do
      {
        v19 = *(v17 - 1);
        v20 = *&v16[8 * *v17];
        if (*(v17 - 2) == 1)
        {
          WitnessTablePack = swift_allocateWitnessTablePack(*&v16[8 * v19], v20);
        }

        else
        {
          if (*(v17 - 2))
          {
            goto LABEL_8;
          }

          WitnessTablePack = swift_allocateMetadataPack(*&v16[8 * v19], v20);
        }

        *&v16[8 * v19] = WitnessTablePack;
LABEL_8:
        v17 += 4;
        --v11;
      }

      while (v11);
    }

    *a2 = v6;
  }

  else
  {
    v6 = *a2;
  }

  *a1[5] = v6;
  *a1[6] = a3;
  return 1;
}

uint64_t *swift::GenericCacheEntry::allocate(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = swift::getLibPrespecializedMetadata(a2);
  if (!result)
  {
    v6 = *a2 & 0x1F;
    switch(v6)
    {
      case 18:
        if (a2)
        {
          v9 = a2;
        }

        else
        {
          v9 = 0;
        }

        if (!v9)
        {
          v9 = 0;
        }

        v10 = v9 + 7;
        break;
      case 17:
        if (a2)
        {
          v8 = a2;
        }

        else
        {
          v8 = 0;
        }

        if (!v8)
        {
          v8 = 0;
        }

        v10 = v8 + 7;
        break;
      case 16:
        if (a2)
        {
          v7 = a2;
        }

        else
        {
          v7 = 0;
        }

        if (!v7)
        {
          v7 = 0;
        }

        v10 = v7 + 11;
        break;
      default:
        __break(1u);
        return result;
    }

    v11 = v10[1];
    if (v11)
    {
      v12 = (v10 + v11 + 4);
    }

    else
    {
      v12 = 0;
    }

    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    v14 = *v12;
    if (v14)
    {
      result = ((v12 + v14))(v13, a3, v12);
    }

    else
    {
      result = MEMORY[0](v13, a3, v12);
    }

    if (!v12[1])
    {
      v15 = result;
      swift::areAllTransitiveMetadataComplete_cheap(result);
      return v15;
    }
  }

  return result;
}

char *installLazyClassNameHook(void)::$_0::__invoke(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return copyGenericClassObjCName(a1);
  }

  else
  {
    return installLazyClassNameHook(void)::oldHook();
  }
}

char *copyGenericClassObjCName(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v61 = *MEMORY[0x1E69E9840];
  v22 = xmmword_1806726B0;
  v23 = 0;
  v24 = 0;
  v59 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v28 = 0;
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
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v29 = 0u;
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
  v57 = 0;
  v21[0] = &unk_1EEEAC680;
  v21[1] = &v60;
  v21[2] = &v61;
  v2 = _swift_buildDemanglingForMetadata(v1, v21);
  if (v2)
  {
    v3 = v2;
    Node = swift::Demangle::__runtime::NodeFactory::createNode(v21, 247);
    swift::Demangle::__runtime::Node::addChild(Node, v3, v21, v5, v6);
    v7 = swift::Demangle::__runtime::NodeFactory::createNode(v21, 101);
    swift::Demangle::__runtime::Node::addChild(v7, Node, v21, v8, v9);
    swift::Demangle::__runtime::mangleNodeOld(v7, v21, v10);
    if (v17)
    {
      v20 = 0;
      asprintf(&v20, "$SwiftEmergencyPlaceholderClassName%016lx", v1);
      v11 = v20;
    }

    else if (v19 >= 6 && ((v12 = bswap64(*v18 | (v18[2] << 32)), v13 = v12 >= 0x5F54744743730000, v14 = v12 > 0x5F54744743730000, v13) ? (v15 = 0) : (v15 = 1), v14 == v15))
    {
      v11 = swift_slowAlloc((v19 + 2), 0);
      memcpy(v11, v18, v19);
      *&v11[v19] = 36;
    }

    else
    {
      v11 = swift_slowAlloc((v19 + 1), 0);
      memcpy(v11, v18, v19);
      v11[v19] = 0;
    }
  }

  else
  {
    v17 = 0;
    asprintf(&v17, "$SwiftEmergencyPlaceholderClassName%016lx", v1);
    v11 = v17;
  }

  v21[0] = &unk_1EEEADB90;
  if (v59 == &v58)
  {
    (*(*v59 + 32))(v59);
  }

  else if (v59)
  {
    (*(*v59 + 40))();
  }

  v21[0] = &unk_1EEEADB68;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v22);
  if (v23)
  {
    *(v23 + 48) = 0;
  }

  return v11;
}

uint64_t swift::SubstGenericParametersFromMetadata::SubstGenericParametersFromMetadata(uint64_t a1, unint64_t *a2)
{
  *a1 = 0;
  TypeContextDescriptor = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(a2);
  if (!TypeContextDescriptor)
  {
    *(a1 + 8) = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    GenericArgs = 0;
    goto LABEL_6;
  }

  *(a1 + 8) = TypeContextDescriptor;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  GenericArgs = swift::TargetMetadata<swift::InProcess>::getGenericArgs(a2);
LABEL_6:
  *(a1 + 16) = GenericArgs;
  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = 0x800000000;
  *(a1 + 296) = 0;
  return a1;
}

swift *initClassFieldOffsetVector(swift *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = (result + 8);
  v9 = *(result + 4) & 0x7FFFFFFFF8;
  if (!*(result + 1) || (v10 = *(result + 1), result = swift::getRootSuperclass(result), result == v10))
  {
    v12 = 16;
    v13 = 7;
  }

  else
  {
    v11 = *v8;
    if ((*(*v8 + 32) & 2) != 0)
    {
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
    }

    else
    {
      v12 = *(v9 + 4);
      v13 = 15;
    }
  }

  v14 = *(v9 + 4);
  if (v12 > v14)
  {
    *(v9 + 4) = v12;
    v14 = v12;
  }

  v15 = v14;
  if (a2)
  {
    v16 = 0;
    do
    {
      v19 = *(a3 + 8 * v16);
      if (*(a4 + 8 * v16) || *v19)
      {
        v17 = *(v19 + 16);
        v18 = (v15 + v17) & ~v17;
        *(a4 + 8 * v16) = v18;
        v15 = v18 + *v19;
        if (v13 <= v17)
        {
          v13 = v17;
        }
      }

      ++v16;
    }

    while (a2 != v16);
  }

  *(v7 + 12) = v15;
  *(v7 + 26) = v13;
  if (v15 != *(v9 + 8))
  {
    *(v9 + 8) = v15;
  }

  return result;
}

unint64_t swift::TargetClassDescriptor<swift::InProcess>::getDefaultOverrideDescriptors(_BYTE *a1)
{
  if ((a1[2] & 0x40) == 0)
  {
    return 0;
  }

  v2 = a1;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  result = ((swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v5) + 4 * ((*v5 & 0x80080) == 524416) + 2 * ((*v5 >> 5) & 1) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((*v5 & 0x80080) == 0x80000) + 4 * ((*v5 >> 22) & 1);
  if ((a1[2] & 0x40) != 0)
  {
    v6 = result;
    if (!a1)
    {
      v2 = 0;
    }

    swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v2);
    return v6;
  }

  return result;
}

void *std::__hash_table<swift::TargetMethodDescriptor<swift::InProcess> const*,std::hash<swift::TargetMethodDescriptor<swift::InProcess> const*>,std::equal_to<swift::TargetMethodDescriptor<swift::InProcess> const*>,std::allocator<swift::TargetMethodDescriptor<swift::InProcess> const*>>::__emplace_unique_key_args<swift::TargetMethodDescriptor<swift::InProcess> const*,swift::TargetMethodDescriptor<swift::InProcess> const*>(void *a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = result[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_11:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != *a2)
  {
    goto LABEL_11;
  }

  return result;
}

void std::__hash_table<swift::TargetMethodDescriptor<swift::InProcess> const*,std::hash<swift::TargetMethodDescriptor<swift::InProcess> const*>,std::equal_to<swift::TargetMethodDescriptor<swift::InProcess> const*>,std::allocator<swift::TargetMethodDescriptor<swift::InProcess> const*>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(_BYTE *a1)
{
  v1 = a1;
  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(a1);
  v3 = *v1;
  if ((*v1 & 0x20000000) != 0)
  {
    v4 = *(v1 + 7) & 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v3 & 0x80080;
  if ((v3 & 0x80080) == 0x80080)
  {
    if (v1)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0;
    }

    v9 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v6);
    if ((v6[3] & 0x20) != 0)
    {
      v10 = *(v6 + 7) & 1;
    }

    else
    {
      v10 = 0;
    }

    v7 = *(v9 + 4 * v10);
    if ((~*v1 & 0x80080) == 0)
    {
      goto LABEL_14;
    }

LABEL_8:
    v8 = 0;
    return TrailingObjectsImpl + 4 * v4 + 4 * (v5 == 524416) + 4 * v7 + 4 * v8;
  }

  v7 = 0;
  if ((~v3 & 0x80080) != 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  if (!v1)
  {
    v1 = 0;
  }

  v11 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v1);
  if ((v1[3] & 0x20) != 0)
  {
    v12 = *(v1 + 7) & 1;
  }

  else
  {
    v12 = 0;
  }

  v8 = *(v11 + 4 * v12);
  return TrailingObjectsImpl + 4 * v4 + 4 * (v5 == 524416) + 4 * v7 + 4 * v8;
}

char *swift::metadataimpl::BufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::OpaqueExistentialBox<0u>>,true,32ul,8ul,(swift::metadataimpl::FixedPacking)0>::initializeBufferWithCopyOfBuffer(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
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

uint64_t swift::metadataimpl::ValueWitnesses<swift::metadataimpl::OpaqueExistentialBox<0u>>::destroy(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return *a1;
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *swift::metadataimpl::ValueWitnesses<swift::metadataimpl::OpaqueExistentialBox<0u>>::initializeWithCopy(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 - 8);
  a1[3] = v3;
  if ((*(v4 + 82) & 2) != 0)
  {
    v5 = *a2;
    *a1 = *a2;
    v5;
  }

  else
  {
    (*(v4 + 16))(a1);
  }

  return a1;
}

__n128 swift::metadataimpl::ValueWitnesses<swift::metadataimpl::OpaqueExistentialBox<0u>>::initializeWithTake(__n128 *a1, __n128 *a2)
{
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::OpaqueExistentialBox<0u>>,true,32ul,8ul,true>::getEnumTagSinglePayload(uint64_t a1, int a2)
{
  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 ^ 0x80000000;
  }

  v2 = *(a1 + 24);
  if (HIDWORD(v2))
  {
    return 0;
  }

  else
  {
    return (v2 + 1);
  }
}

uint64_t swift::metadataimpl::FixedSizeBufferValueWitnesses<swift::metadataimpl::ValueWitnesses<swift::metadataimpl::OpaqueExistentialBox<0u>>,true,32ul,8ul,true>::storeEnumTagSinglePayload(uint64_t result, int a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    if (a2 < 0)
    {
      *result = a2 & 0x7FFFFFFF;
      *(result + 4) = 0;
      *(result + 20) = 0;
      *(result + 12) = 0;
      *(result + 28) = 0;
      return result;
    }

    if (!a2)
    {
      return result;
    }

LABEL_7:
    *(result + 24) = (a2 - 1);
    return result;
  }

  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 4) = 0;
    *(result + 20) = 0;
    *(result + 12) = 0;
    *(result + 28) = 0;
    *(result + 32) = 1;
    return result;
  }

  *(result + 32) = 0;
  if (a2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t *swift::metadataimpl::OpaqueExistentialBoxBase::assignWithTake<swift::metadataimpl::OpaqueExistentialBox<0u>::Container>(uint64_t *a1, uint64_t *a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  v3 = a2[3];
  v4 = a1[3];
  if (v3 == v4)
  {
    v7 = *(v3 - 8);
    if ((*(v7 + 82) & 2) == 0)
    {
      (*(v7 + 40))(a1);
      return a1;
    }

    v12 = *a1;
    *a1 = *a2;
LABEL_20:
    v12;
    return a1;
  }

  v5 = *(v4 - 8);
  if (v5)
  {
    v6 = *(v4 - 8);
  }

  else
  {
    v6 = 0;
  }

  v8 = *(v3 - 8);
  if (!v8)
  {
    v9 = 0;
    if ((*(v6 + 82) & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v9 = *(v3 - 8);
  if ((*(v6 + 82) & 2) != 0)
  {
LABEL_13:
    v11 = *a1;
    a1[3] = v3;
    if ((*(v9 + 82) & 2) != 0)
    {
      *a1 = *a2;
    }

    else
    {
      (*(v8 + 32))(a1);
    }

    v12 = v11;
    goto LABEL_20;
  }

LABEL_10:
  (*(v5 + 32))(v14, a1, v4);
  a1[3] = a2[3];
  if ((*(v9 + 82) & 2) != 0)
  {
    *a1 = *a2;
  }

  else
  {
    (*(*(v3 - 8) + 32))(a1, a2, v3);
  }

  (*(*(v4 - 8) + 8))(v14, v4);
  return a1;
}

unsigned int *swift::TargetExtendedExistentialTypeShape<swift::InProcess>::getGeneralizationSignature@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((v2 & 0x100) == 0)
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 24) = 0;
    return result;
  }

  if ((v2 & 0x1000) != 0)
  {
    v3 = &swift::ImplicitGenericParamDescriptors;
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = (((result + 27) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v2 >> 9) & 1) + 4 * ((v2 >> 10) & 1));
    if ((v2 & 0x800) == 0)
    {
      v3 += *(result + 4);
LABEL_7:
      v4 = *(result + 4);
      v5 = 1;
      goto LABEL_9;
    }
  }

  v5 = 0;
  v4 = 0;
LABEL_9:
  v6 = *result & 0x1100;
  if (v6 == 256)
  {
    v7 = *(result + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = ((result + 27) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v2 >> 9) & 1) + 4 * ((v2 >> 10) & 1);
  v9 = ((v8 + v7 + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(result + 5);
  if ((v2 & 0x2000) != 0)
  {
    if (v5)
    {
      v12 = *(result + 4);
      if (v6 != 256)
      {
LABEL_16:
        v13 = 0;
LABEL_19:
        v14 = ((v8 + v13 + v12 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(result + 9);
        if (v5)
        {
          v15 = *(result + 4);
        }

        else
        {
          v15 = 0;
        }

        v10 = *(v14 + 12 * *(result + 5));
        if (v6 == 256)
        {
          v16 = *(result + 8);
        }

        else
        {
          v16 = 0;
        }

        v11 = ((v8 + v16 + v15 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(result + 9) + 12 * *(result + 5) + 4;
        goto LABEL_26;
      }
    }

    else
    {
      v12 = 0;
      if (v6 != 256)
      {
        goto LABEL_16;
      }
    }

    v13 = *(result + 8);
    goto LABEL_19;
  }

  v10 = 0;
  v11 = 0;
LABEL_26:
  *a2 = *(result + 2);
  *(a2 + 8) = v3;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

char *_ZNKR5swift27RelativeIndirectablePointerIKNS_24TargetProtocolDescriptorINS_9InProcessEEELb1EiU9__ptrauthILj2ELb1ELj44678EEPS3_EcvPS4_Ev(int *a1)
{
  v1 = *a1;
  if (v1)
  {
    v2 = a1 + (v1 & 0xFFFFFFFFFFFFFFFELL);
    if (v1)
    {
      if (*v2)
      {
        return *v2;
      }
    }

    else if (v2)
    {
      return a1 + (v1 & 0xFFFFFFFFFFFFFFFELL);
    }
  }

  return 0;
}

uint64_t _getForeignWitnessTable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v59[0] = a2;
  v59[1] = a3;
  os_unfair_lock_lock(&unk_1EA79EA08);
  v6 = qword_1EA79EA00;
  v7 = (qword_1EA79EA00 & 3) == 0;
  if ((qword_1EA79EA00 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    v7 = 1;
  }

  v57 = qword_1EA79EA00 & 0xFFFFFFFFFFFFFFFCLL;
  v56 = v7;
  v55 = qword_1EA79EA00 & 3;
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = *(qword_1EA79EA00 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v9 = dword_1EA79E9F4;
  v10 = qword_1EA79E9F8;
  v11 = qword_1EA79E9F8 + 8;
  if (qword_1EA79E9F8)
  {
    v12 = qword_1EA79E9F8 + 8;
  }

  else
  {
    v12 = 0;
  }

  if (v13)
  {
    a1 = v13[2];
    __dmb(0xBu);
    if (!ForeignWitnessTables)
    {
      v15 = qword_1EA79EA10;
      if (qword_1EA79EA10)
      {
        do
        {
          v16 = *v15;
          free(v15[1]);
          free(v15);
          v15 = v16;
        }

        while (v16);
      }

LABEL_87:
      qword_1EA79EA10 = 0;
      goto LABEL_88;
    }

    goto LABEL_88;
  }

  v58 = v12;
  __src = v11;
  v53 = v9;
  v54 = v10;
  v17 = (v9 + 1);
  if ((1 << v8) / ((1 << v8) - v17) < 4)
  {
    v24 = v6;
    v25 = v53;
    v26 = v10;
    if (v10)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v51 = (v9 + 1);
    v18 = v8;
    v19 = (v8 + 1);
    if (v19 >= 0x11)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 9)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    v22 = malloc_type_calloc(2 << v8, v21, 0x48DDA4AEuLL);
    if (!v22)
    {
      swift::hashable_support::findHashableBaseTypeOfHashableType();
    }

    v23 = v12;
    v49 = v3;
    v50 = a1;
    v48 = v4;
    if (v21 != 1)
    {
      if (v21 == 4)
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }
    }

    v24 = v21 | v22;
    *v22 = v8 + 1;
    if (v8)
    {
      v27 = ~(-2 << v8);
      if (v55)
      {
        v28 = v57;
      }

      else
      {
        v28 = 0;
      }

      v29 = v24 & 3;
      if ((v24 & 3) != 0)
      {
        v30 = v22 & 0xFFFFFFFFFFFFFFFCLL;
      }

      else
      {
        v30 = 0;
      }

      for (i = 1; !(i >> v18); ++i)
      {
        if ((v6 & 3) > 1)
        {
          if ((v6 & 3) == 2)
          {
            LODWORD(v32) = *(v28 + 2 * i);
            if (*(v28 + 2 * i))
            {
              goto LABEL_48;
            }
          }

          else
          {
            LODWORD(v32) = *(v28 + 4 * i);
            if (v32)
            {
LABEL_48:
              v60 = *(v23 + 24 * (v32 - 1));
              {
                v35 = j & v27;
                if ((j & v27) != 0)
                {
                  if ((v24 & 3) > 1)
                  {
                    LODWORD(v34) = v29 == 2 ? *(v30 + 2 * v35) : *(v30 + 4 * v35);
                  }

                  else if ((v24 & 3) != 0)
                  {
                    LODWORD(v34) = *(v30 + v35);
                  }

                  else
                  {
                    v34 = (v24 >> (4 * v35)) & 0xF;
                  }

                  if (!v34)
                  {
                    break;
                  }
                }
              }

              if (v29 == 3)
              {
                *(v30 + 4 * v35) = v32;
                v23 = v58;
              }

              else
              {
                v23 = v58;
                if (v29 == 2)
                {
                  *(v30 + 2 * v35) = v32;
                }

                else
                {
                  *(v30 + v35) = v32;
                }
              }
            }
          }
        }

        else if ((v6 & 3) != 0)
        {
          LODWORD(v32) = *(v28 + i);
          if (*(v28 + i))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v32 = (v6 >> (4 * i)) & 0xF;
          if (v32)
          {
            goto LABEL_48;
          }
        }
      }
    }

    atomic_store(v24, &qword_1EA79EA00);
    if (!v56)
    {
      v36 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
      v23 = v58;
      *v36 = qword_1EA79EA10;
      v36[1] = v57;
      qword_1EA79EA10 = v36;
    }

    v25 = v53;
    v3 = v49;
    a1 = v50;
    v4 = v48;
    v17 = v51;
    v26 = v54;
    if (v54)
    {
LABEL_66:
      if (v25 < *v26)
      {
        goto LABEL_73;
      }
    }
  }

  v37 = v14;
  v38 = v25 + (v25 >> 2);
  if (v38 <= v25 + 1)
  {
    v38 = v25 + 1;
  }

  v39 = malloc_good_size(24 * v38 + 8);
  v40 = malloc_type_malloc(v39, 0x1060040FFDA0B6DuLL);
  if (!v40)
  {
    swift::hashable_support::findHashableBaseTypeOfHashableType();
  }

  v26 = v40;
  *v40 = (v39 - 8) / 0x18;
  if (v54)
  {
    memcpy(v40 + 2, __src, 24 * v25);
    v41 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
    *v41 = qword_1EA79EA10;
    v41[1] = v54;
    qword_1EA79EA10 = v41;
  }

  atomic_store(v26, &qword_1EA79E9F8);
  v14 = v37;
LABEL_73:
  v42 = &v26[6 * v25];
  v42[1] = v4;
  v42[2] = v3;
  v42[3] = a1;
  atomic_store(v17, &dword_1EA79E9F4);
  if ((v24 & 3) > 1)
  {
    if ((v24 & 3) == 2)
    {
      v43 = v24 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v24 & 3) == 0)
      {
        v43 = 0;
      }

      atomic_store(v17, (v43 + 2 * v14));
    }

    else
    {
      v44 = v24 & 0xFFFFFFFFFFFFFFFCLL;
      if ((v24 & 3) == 0)
      {
        v44 = 0;
      }

      atomic_store(v17, (v44 + 4 * v14));
    }
  }

  else if ((v24 & 3) != 0)
  {
    atomic_store(v17, ((v24 & 0xFFFFFFFFFFFFFFFCLL) + v14));
  }

  else
  {
    atomic_store((v17 << (4 * v14)) | v24, &qword_1EA79EA00);
  }

  __dmb(0xBu);
  if (!ForeignWitnessTables)
  {
    v45 = qword_1EA79EA10;
    if (qword_1EA79EA10)
    {
      do
      {
        v46 = *v45;
        free(v45[1]);
        free(v45);
        v45 = v46;
      }

      while (v46);
    }

    goto LABEL_87;
  }

LABEL_88:
  os_unfair_lock_unlock(&unk_1EA79EA08);
  return a1;
}

uint64_t *swift::ConcurrentReadableHashMap<anonymous namespace::ForeignWitnessTableCacheEntry,swift::LazyMutex>::find<anonymous namespace::ForeignWitnessTableCacheEntry::Key>(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v10 = 4;
  v21 = a2;
  if ((a2 & 3) != 0 && v9)
  {
    v10 = *v9;
  }

  v11 = ~(-1 << v10);
  v12 = a2 & 3;
  if ((a2 & 3) != 0)
  {
    v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v13 = 0;
  }

  while (1)
  {
    v14 = (v8 & v11) <= 1 ? 1 : v8 & v11;
    if (v12 > 1)
    {
      break;
    }

    if (v12)
    {
      LODWORD(v15) = v13 + v14;
      LOBYTE(v15) = atomic_load_explicit((v13 + v14), memory_order_acquire);
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      v15 = (v21 >> (4 * v14)) & 0xF;
      if (!v15)
      {
        return 0;
      }
    }

LABEL_21:
    v16 = (v15 - 1);
    if (v16 < a3)
    {
      v17 = (a4 + 24 * v16);
      if (v17[1] == a1[1])
      {
        swift::ParsedTypeIdentity::parse(*a1, v22);
        v19 = __s2;
        v18 = v24;
        swift::ParsedTypeIdentity::parse(*v17, v22);
        if (v18 == v24 && (!v18 || !memcmp(v19, __s2, v18)))
        {
          return v17;
        }
      }
    }

    v8 = v14 + 1;
  }

  if (v12 == 2)
  {
    LODWORD(v15) = v13 + 2 * v14;
    LOWORD(v15) = atomic_load_explicit((v13 + 2 * v14), memory_order_acquire);
    if (!v15)
    {
      return 0;
    }

    goto LABEL_21;
  }

  LODWORD(v15) = atomic_load_explicit((v13 + 4 * v14), memory_order_acquire);
  if (v15)
  {
    goto LABEL_21;
  }

  return 0;
}

unint64_t anonymous namespace::hash_value(uint64_t *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  swift::ParsedTypeIdentity::parse(*a1, &v8);
  v3 = *(&v9[0] + 1);
  v2 = *&v9[0];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  {
    v6 = v3;
    v7 = v2;
    v3 = v6;
    v2 = v7;
  }

  v4 = a1[1];
  v12 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
  *&v8 = v4;
  *(&v8 + 1) = __swift::__runtime::llvm::hash_value(v2, v3);
  return __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(&v8, 0, v9, v10);
}

unint64_t *__swift::__runtime::llvm::hashing::detail::hash_state::mix(unint64_t *this, const char *a2)
{
  v2 = this[1];
  v4 = this[2];
  v3 = this[3];
  v5 = 0xB492B66FBE98F273 * __ROR8__(v2 + *this + v3 + *(a2 + 1), 37);
  *this = v5;
  v6 = this[4];
  v7 = this[5];
  v8 = __ROR8__(v6 + v2 + *(a2 + 6), 42);
  v9 = this[6];
  v10 = v9 ^ v5;
  *this = v10;
  this[1] = 0xB492B66FBE98F273 * v8;
  v11 = 0xB492B66FBE98F273 * v8 + v3 + *(a2 + 5);
  v12 = 0xB492B66FBE98F273 * __ROR8__(v7 + v4, 33);
  this[1] = v11;
  this[2] = v12;
  this[3] = 0xB492B66FBE98F273 * v6;
  this[4] = v7 + v10;
  v13 = *a2 - 0x4B6D499041670D8DLL * v6;
  this[3] = v13;
  v14 = *(a2 + 3);
  v15 = __ROR8__(v13 + v14 + v7 + v10, 21);
  this[4] = v15;
  v16 = __ROR8__(*(a2 + 1) + *(a2 + 2) + v13, 44);
  this[3] = *(a2 + 1) + *(a2 + 2) + v13 + v14;
  this[4] = v15 + v13 + v16;
  this[5] = v12 + v9;
  v17 = *(a2 + 2) + v11;
  this[6] = v17;
  v18 = *(a2 + 4) + v12 + v9;
  this[5] = v18;
  v19 = *(a2 + 7);
  v20 = __ROR8__(v18 + v19 + v17, 21);
  this[6] = v20;
  v21 = v20 + v18 + __ROR8__(*(a2 + 5) + *(a2 + 6) + v18, 44);
  this[5] = *(a2 + 5) + *(a2 + 6) + v18 + v19;
  this[6] = v21;
  this[2] = v10;
  *this = v12;
  return this;
}

void *__swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(uint64_t a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      __swift::__runtime::llvm::hashing::detail::hash_state::mix((a1 + 64), a1);
      v9 = *a2 + 64;
    }

    else
    {
      v10 = *(a1 + 120);
      v11 = __ROR8__(v10 ^ 0xB492B66FBE98F273, 49);
      v12 = v10 ^ (v10 >> 47);
      v13 = *(a1 + 8);
      v14 = v13 + v10 + v11;
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v17 = *(a1 + 40);
      v18 = v17 + v11 - 0x4B6D499041670D8DLL * __ROR8__(v15 + v10 - 0x4B6D499041670D8DLL * v10, 42);
      v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
      v20 = 0x9DDFEA08EB382D69 * (v10 ^ (((0x9DDFEA08EB382D69 * (v12 ^ (0xB492B66FBE98F273 * v10))) ^ v10) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ (0xB492B66FBE98F273 * v10))));
      v21 = 0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47));
      v22 = 0xB492B66FBE98F273 * __ROR8__(v12 - 0x622015F714C7D297 * (v19 ^ (v19 >> 47)), 33);
      v23 = *a1 - 0x6D8ED9027DD26057 * v10;
      v25 = *(a1 + 16);
      v24 = *(a1 + 24);
      v26 = v23 + v13 + v25;
      v27 = v21 ^ (0xB492B66FBE98F273 * __ROR8__(v14, 37));
      v28 = __ROR8__(v26, 44) + v23 + __ROR8__(v23 + v12 + v24 + v27, 21);
      v29 = v22 + *(a1 + 32) + v21;
      *(a1 + 64) = v22;
      *(a1 + 72) = v18;
      *(a1 + 80) = v27;
      *(a1 + 88) = v26 + v24;
      *(a1 + 96) = v28;
      *(a1 + 104) = v17 + v15 + v29 + v16;
      *(a1 + 112) = __ROR8__(v18 + v25 + v16 + v29, 21) + v29 + __ROR8__(v17 + v15 + v29, 44);
      v9 = 64;
    }

    *a2 = v9;
    if (a1 + 8 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 8 - v8);
      a1 += 8 - v8;
    }
  }

  return a1;
}

unint64_t __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(__swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper *this, uint64_t a2, char *a3, char *a4)
{
  if (a2)
  {
    if (this == a3 || a3 == a4)
    {
      goto LABEL_46;
    }

    if (this + 1 == a3)
    {
      v20 = *this;
      v21 = a4 - a3;
      memmove(this, this + 1, a4 - a3);
      *(this + v21) = v20;
LABEL_46:
      __swift::__runtime::llvm::hashing::detail::hash_state::mix(this + 8, this);
      v49 = 0x9DDFEA08EB382D69 * (*(this + 13) ^ ((0x9DDFEA08EB382D69 * (*(this + 13) ^ *(this + 11))) >> 47) ^ (0x9DDFEA08EB382D69 * (*(this + 13) ^ *(this + 11))));
      v50 = *(this + 14);
      v51 = *(this + 8) - 0x4B6D499041670D8DLL * ((a3 - this + a2) ^ ((a3 - this + a2) >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ *(this + 12))) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ *(this + 12))))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ *(this + 12))) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ *(this + 12))))) >> 47));
      v52 = 0x9DDFEA08EB382D69 * (v51 ^ (*(this + 10) - 0x4B6D499041670D8DLL * (*(this + 9) ^ (*(this + 9) >> 47)) - 0x622015F714C7D297 * (v49 ^ (v49 >> 47))));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) ^ ((0x9DDFEA08EB382D69 * (v51 ^ (v52 >> 47) ^ v52)) >> 47));
    }

    if (a3 + 1 == a4)
    {
      v22 = *(a4 - 1);
      if (a4 - 1 != this)
      {
        memmove(this + 1, this, a4 - 1 - this);
      }

      *this = v22;
      goto LABEL_46;
    }

    v7 = a3 - this;
    v8 = a4 - a3;
    if (a3 - this != a4 - a3)
    {
      v23 = a3 - this;
      do
      {
        v24 = v23;
        v23 = v8;
        v8 = v24 % v8;
      }

      while (v8);
      v25 = (this + v23);
      do
      {
        v27 = *(v25 - 1);
        v25 = (v25 - 1);
        v26 = v27;
        v28 = (v25 + v7);
        v29 = v25;
        do
        {
          v30 = v29;
          v29 = v28;
          *v30 = *v28;
          v31 = (a4 - v28);
          v32 = __OFSUB__(v7, v31);
          v34 = v7 - v31;
          v33 = (v34 < 0) ^ v32;
          v28 = (this + v34);
          if (v33)
          {
            v28 = (v29 + v7);
          }
        }

        while (v28 != v25);
        *v29 = v26;
      }

      while (v25 != this);
      goto LABEL_46;
    }

    v9 = &a4[~a3];
    v10 = &a3[~this];
    if (v9 >= v10)
    {
      v11 = &a3[~this];
    }

    else
    {
      v11 = &a4[~a3];
    }

    v12 = (v11 + 1);
    v13 = a3;
    v14 = this;
    if (v12 >= 8)
    {
      if (v9 >= v10)
      {
        v9 = &a3[~this];
      }

      v15 = v9 + 1;
      if (&v15[a3] <= this || (v13 = a3, v14 = this, &v15[this] <= a3))
      {
        if (v12 >= 0x20)
        {
          v16 = v12 & 0xFFFFFFFFFFFFFFE0;
          v35 = (this + 16);
          v36 = a3 + 16;
          v37 = v12 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v38 = *(v35 - 1);
            v39 = *v35;
            v40 = *v36;
            *(v35 - 1) = *(v36 - 1);
            *v35 = v40;
            *(v36 - 1) = v38;
            *v36 = v39;
            v35 += 2;
            v36 += 32;
            v37 -= 32;
          }

          while (v37);
          if (v12 == v16)
          {
            goto LABEL_46;
          }

          if ((v12 & 0x18) == 0)
          {
            v14 = (this + v16);
            v13 = &a3[v16];
            goto LABEL_42;
          }
        }

        else
        {
          v16 = 0;
        }

        v13 = &a3[v12 & 0xFFFFFFFFFFFFFFF8];
        v14 = (this + (v12 & 0xFFFFFFFFFFFFFFF8));
        v41 = (this + v16);
        v42 = &a3[v16];
        v43 = v16 - (v12 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v44 = *v41;
          *v41++ = *v42;
          *v42 = v44;
          v42 += 8;
          v43 += 8;
        }

        while (v43);
        if (v12 == (v12 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_46;
        }
      }
    }

LABEL_42:
    v45 = v13 + 1;
    v46 = v14 + 1;
    do
    {
      v47 = *(v46 - 1);
      *(v46 - 1) = *(v45 - 1);
      *(v45 - 1) = v47;
      if (v46 == a3)
      {
        break;
      }

      ++v46;
    }

    while (v45++ != a4);
    goto LABEL_46;
  }

  v17 = a3 - this;
  v18 = *(this + 15);

  return __swift::__runtime::llvm::hashing::detail::hash_short(this, v17, v18);
}

unint64_t __swift::__runtime::llvm::hashing::detail::hash_short(__swift::__runtime::llvm::hashing::detail *this, unint64_t a2, unint64_t a3)
{
  if (a2 - 4 <= 4)
  {
    v3 = *(this + a2 - 4) ^ a3;
    v4 = 0x9DDFEA08EB382D69 * (v3 ^ (a2 + 8 * *this));
    v5 = v3 ^ (v4 >> 47) ^ v4;
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  }

  if (a2 - 9 <= 7)
  {
    v7 = *(this + a2 - 8);
    v8 = __ROR8__(v7 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)))) >> 47))) ^ v7;
  }

  if (a2 - 17 <= 0xF)
  {
    v9 = *(this + 1);
    v10 = 0x9AE16A3B2F90404FLL * *(this + a2 - 8);
    v11 = __ROR8__(0xB492B66FBE98F273 * *this - v9, 43) - 0x3C5A37A36834CED9 * *(this + a2 - 16) + __ROR8__(v10 ^ a3, 30);
    v12 = a3 + a2 + __ROR8__(v9 ^ 0xC949D7C7509E6557, 20) - 0x4B6D499041670D8DLL * *this - v10;
    v5 = v12 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v12));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  }

  if (a2 >= 0x21)
  {
    v13 = this + a2;
    v14 = *(this + a2 - 16);
    v15 = *(this + a2 - 8);
    v16 = *this - 0x3C5A37A36834CED9 * (v14 + a2);
    v18 = *(this + 2);
    v17 = *(this + 3);
    v19 = __ROR8__(v16 + v17, 52);
    v20 = v16 + *(this + 1);
    v21 = __ROR8__(v20, 7);
    v22 = v20 + v18;
    v23 = v21 + __ROR8__(*this - 0x3C5A37A36834CED9 * (v14 + a2), 37) + v19;
    v24 = *(this + a2 - 32) + v18;
    v25 = __ROR8__(v24 + v15, 52);
    v26 = v23 + __ROR8__(v22, 31);
    v27 = __ROR8__(v24, 37);
    v28 = *(v13 - 3) + v24;
    v29 = __ROR8__(v28, 7);
    v30 = v28 + v14;
    v31 = __ROR8__(v30, 31);
    v32 = ((0xC3A5C85C97CB3127 * ((0xC3A5C85C97CB3127 * (v30 + v15 + v26) - 0x651E95C4D06FBFB1 * (v22 + v17 + v27 + v25 + v29 + v31)) ^ ((0xC3A5C85C97CB3127 * (v30 + v15 + v26) - 0x651E95C4D06FBFB1 * (v22 + v17 + v27 + v25 + v29 + v31)) >> 47))) ^ a3) + v26;
    return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
  }

  if (a2)
  {
    v32 = (0x9AE16A3B2F90404FLL * (*this | (*(this + (a2 >> 1)) << 8))) ^ (0xC949D7C7509E6557 * (a2 + 4 * *(this + a2 - 1))) ^ a3;
    return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
  }

  return a3 ^ 0x9AE16A3B2F90404FLL;
}

unint64_t *instantiateWitnessTable(unint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = (a2 + (v7 & 0xFFFFFFFFFFFFFFFELL));
  if ((v7 & 1) == 0)
  {
    if (v8)
    {
      v9 = a2 + (v7 & 0xFFFFFFFFFFFFFFFELL);
      v10 = a2[3];
      if ((v10 & 0x20000) != 0)
      {
        goto LABEL_8;
      }

LABEL_11:
      v13 = 0;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!*v8)
  {
LABEL_10:
    v9 = 0;
    v10 = a2[3];
    if ((v10 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v9 = *v8;
  v10 = a2[3];
  if ((v10 & 0x20000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v11 = ((&a2[3 * BYTE1(v10) + 4 + ((v10 >> 6) & 1)] + ((v10 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if ((v10 & 0x10000) != 0)
  {
    v12 = *v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = &v11[2 * v12 + (WORD1(v10) & 1)];
LABEL_14:
  result = swift::TargetMetadata<swift::InProcess>::getGenericArgs(a1);
  v16 = result;
  v17 = *v13;
  v18 = (a4 + 8 * (*(v13 + 1) >> 1));
  *v18 = a2;
  v19 = a2[2];
  if (v19)
  {
    v20 = a2 + v19 + 8;
    if (v20)
    {
      v21 = v9;
      if (v9)
      {
        v21 = v9;
      }

      v22 = v21;
      if (v21 == -24)
      {
        v23 = 0;
        if (v17 < 2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v23 = v21 + 24;
        if (v17 < 2)
        {
          goto LABEL_35;
        }
      }

      v24 = &v23[12 * *(v22 + 3)];
      v25 = v17 - 1;
      v26 = (v20 + 8);
      v27 = (v18 + 8);
      v28 = v18 + 8;
      v29 = v26;
      do
      {
        v31 = *v24;
        v24 += 2;
        v30 = v31;
        v32 = v31 & 0xF;
        if (v32 - 1 >= 6)
        {
          if (v32 - 7 >= 2)
          {
            if (v32)
            {
              __break(1u);
              return result;
            }

            v33 = *v29;
          }

          else
          {
            v33 = *v29;
          }
        }

        else if ((v30 & 0x20) != 0 && v32 < 5 || (v30 & 0x20) != 0 && v32 - 5 < 2)
        {
          v33 = *v29;
        }

        else
        {
          v33 = *v29;
        }

        *v27++ = v33;
        ++v29;
        ++v26;
        v28 += 8;
        --v25;
      }

      while (v25);
    }
  }

LABEL_35:
  v71 = v13;
  v34 = a2[3];
  if (BYTE1(v34))
  {
    v35 = 0;
    v36 = 0;
    v37 = &a2[((v34 >> 6) & 1) + 4];
    v38 = &v37[3 * BYTE1(v34)];
    v39 = 12 * BYTE1(v34);
    do
    {
      if ((*v37 & 0x80) != 0)
      {
        WitnessTablePack = *(a3 + 8 * v35);
        if ((*v37 & 0x20) != 0)
        {
          WitnessTablePack = swift_allocateWitnessTablePack(WitnessTablePack, v16[LOWORD(v38[2 * v36++ + 1])]);
        }

        *(v18 + ~v35++) = WitnessTablePack;
      }

      v37 += 3;
      v39 -= 12;
    }

    while (v39);
  }

  v41 = *a2;
  if (v41)
  {
    v42 = (a2 + (v41 & 0xFFFFFFFFFFFFFFFELL));
    if (v41)
    {
      if (*v42)
      {
        v43 = *v42;
        goto LABEL_49;
      }
    }

    else if (v42)
    {
      v43 = a2 + (v41 & 0xFFFFFFFFFFFFFFFELL);
      goto LABEL_49;
    }
  }

  v43 = 0;
LABEL_49:
  v44 = v43;
  if (v43)
  {
    v44 = v43;
  }

  v70 = a3;
  if (v44 == -24)
  {
    v45 = 0;
  }

  else
  {
    v45 = v44 + 24;
  }

  v46 = *(v44 + 3);
  v47 = &v45[12 * v46];
  v48 = *(v43 + 4);
  v49 = a2[3];
  if ((v49 & 0x10000) != 0)
  {
    v50 = ((&a2[3 * BYTE1(a2[3]) + 4 + 2 * HIBYTE(a2[3]) + ((v49 >> 6) & 1)] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v51 = *v50;
    if (v51)
    {
      v69 = v45;
      v52 = v47 + 8 * v48;
      v53 = 8 * v51;
      v54 = (v50 + 2);
      v55 = v50 + 2;
      while (1)
      {
        v58 = *(v54 - 1);
        if (v58)
        {
          v59 = v55 + (v58 & 0xFFFFFFFFFFFFFFFELL) - 4;
          if ((v58 & 1) == 0)
          {
            goto LABEL_66;
          }

          if (*v59)
          {
            break;
          }
        }

LABEL_61:
        v55 += 2;
        v54 += 2;
        v53 -= 8;
        if (!v53)
        {
          v48 = *(v43 + 4);
          v45 = v69;
          goto LABEL_74;
        }
      }

      v59 = *v59;
LABEL_66:
      if (v59)
      {
        if (v59 < v47 || v59 >= v52)
        {
          swift::fatalError(0, "generic witness table at %p contains out-of-bounds requirement descriptor %p\n", v59, v15, v71, v59);
        }

        v56 = *v54;
        if (v56)
        {
          v57 = v55 + v56;
        }

        else
        {
          v57 = 0;
        }

        initProtocolWitness(v18 + (&v59[-v47] >> 3) + 1, v57, v59);
      }

      goto LABEL_61;
    }
  }

LABEL_74:
  if (v48)
  {
    v61 = 0;
    v62 = &v45[12 * v46 + 4];
    v63 = v18 + 8;
    do
    {
      v65 = v47 + v61;
      if (!*&v63[v61])
      {
        v66 = *(v65 + 4);
        if (v66)
        {
          v67 = v62 + v61 + v66;
        }

        else
        {
          v67 = 0;
        }

        initProtocolWitness(&v63[v61], v67, (v47 + v61));
      }

      if ((*v65 & 0xF) == 0 && *&v63[v61])
      {
        if (v43)
        {
          v64 = v43;
        }

        else
        {
          v64 = 0;
        }

        swift_getAssociatedConformanceWitnessSlow(v18, a1, a1, &v64[12 * *(v64 + 3) + 16], (v47 + v61));
      }

      v61 += 8;
      --v48;
    }

    while (v48);
  }

  v68 = v71[1];
  if (v68)
  {
    ((v71 + v68 + 4))(v18, a1, v70);
  }

  return v18;
}

void *initProtocolWitness(void *result, uint64_t a2, int *a3)
{
  v3 = *a3;
  v4 = *a3 & 0xF;
  if (v4 - 1 < 6)
  {
    if ((v3 & 0x20) != 0 && v4 < 5 || (v3 & 0x20) != 0 && v4 - 5 < 2)
    {
      goto LABEL_6;
    }

LABEL_12:
    *result = a2;
    return result;
  }

  if (v4 == 8 || v4 == 7)
  {
LABEL_6:
    *result = a2;
    return result;
  }

  if (!v4)
  {
    if (a2)
    {
      *result = a2;
      return result;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

double swift::Lazy<swift::MetadataCache<anonymous namespace::WitnessTableCacheEntry,(unsigned short)16>>::defaultInitCallback(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::GlobalWitnessTableCacheEntry>,swift::LazyMutex>::find<swift::TargetGenericWitnessTable<swift::InProcess> const*>(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *a1;
  {
    v19 = a4;
    v16 = a3;
    v18 = a2;
    v15 = a1;
    v17 = v4;
    getCache();
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
    if (v13 < a3 && **(a4 + 8 * v13) == *a1)
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

double swift::Lazy<swift::MetadataCache<anonymous namespace::RelativeWitnessTableCacheEntry,(unsigned short)16>>::defaultInitCallback(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

char *findAssociatedTypeName(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 20);
  v3 = (a1 + 20 + v2);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v8 = strlen((a1 + 20 + v2));
  v9 = a1;
  if (a1)
  {
    v9 = a1;
  }

  v10 = v9;
  if (v9 != -24)
  {
    v11 = v9 + 24;
    v12 = *(a1 + 16);
    if (!v12)
    {
      return 0;
    }

LABEL_11:
    v13 = (v11 + 12 * *(v10 + 12));
    v14 = 8 * v12;
    while (1)
    {
      if ((*v13 & 0xF) == 7)
      {
        if (v8)
        {
          v15 = memchr(v3, 32, v8);
          v16 = v15 - v3;
          if (!v15)
          {
            v16 = -1;
          }
        }

        else
        {
          v16 = -1;
        }

        if (v8 >= v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v8;
        }

        if (v13 == a2)
        {
          return v3;
        }

        v18 = v8 > v16;
        v19 = v8 > v16;
        if (v18)
        {
          v3 += v17 + 1;
        }

        else
        {
          v3 += v17;
        }

        v8 = v8 - v17 - v19;
      }

      v13 += 2;
      v14 -= 8;
      if (!v14)
      {
        return 0;
      }
    }
  }

  v11 = 0;
  v12 = *(a1 + 16);
  if (v12)
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t std::__function::__func<swift_getAssociatedTypeWitnessRelativeSlowImpl(swift::MetadataRequest,swift::TargetRelativeWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_0,std::allocator<swift_getAssociatedTypeWitnessRelativeSlowImpl(swift::MetadataRequest,swift::TargetRelativeWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAC730;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getAssociatedTypeWitnessRelativeSlowImpl(swift::MetadataRequest,swift::TargetRelativeWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_1,std::allocator<swift_getAssociatedTypeWitnessRelativeSlowImpl(swift::MetadataRequest,swift::TargetRelativeWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAC778;
  a2[1] = v2;
  return result;
}

void checkMetadataDependency(swift::MetadataDependency)::CheckDependencyResult::forForeignMetadata(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  atomic_fetch_add_explicit(&ForeignMetadata, 1u, memory_order_acquire);
  do
  {
    explicit = atomic_load_explicit(&qword_1ED416000, memory_order_acquire);
    v7 = atomic_load_explicit(&qword_1ED416008, memory_order_acquire);
    v8 = atomic_load_explicit(&dword_1ED415FFC, memory_order_acquire);
  }

  while (explicit != atomic_load_explicit(&qword_1ED416000, memory_order_acquire));
  if (explicit)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9 || v8 == 0;
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11;
  }

  atomic_fetch_add_explicit(&ForeignMetadata, 0xFFFFFFFF, memory_order_release);
  v13 = *a1;
  v14 = atomic_load_explicit(v12, memory_order_acquire) & 7;
  if (v13 > 62)
  {
    if (v13 == 255)
    {
      if (!v14)
      {
        os_unfair_lock_lock(&unk_1ED416028);
        v16 = *v12;
        v17 = *v12 & 7;
        if ((*v12 & 7) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (v13 != 63)
      {
        goto LABEL_41;
      }

      if (v14 <= 1)
      {
        os_unfair_lock_lock(&unk_1ED416028);
        v16 = *v12;
        v17 = *v12 & 7;
        if (v17 <= 1)
        {
          goto LABEL_18;
        }

        goto LABEL_28;
      }
    }

LABEL_30:
    *a3 = v14;
    *(a3 + 8) = 0;
    return;
  }

  if (!v13)
  {
    if (v14 <= 3)
    {
      os_unfair_lock_lock(&unk_1ED416028);
      v16 = *v12;
      v17 = *v12 & 7;
      if (v17 <= 3)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (v13 != 1)
  {
LABEL_41:
    __break(1u);
    return;
  }

  if (v14 > 2)
  {
    goto LABEL_30;
  }

  os_unfair_lock_lock(&unk_1ED416028);
  v16 = *v12;
  v17 = *v12 & 7;
  if (v17 <= 2)
  {
LABEL_18:
    *a3 = v17;
    v18 = v16 & 0xFFFFFFFFFFFFFFF0;
    if ((v16 & 8) != 0 && v18)
    {
      v19 = (v18 + 24);
      v20 = 32;
    }

    else
    {
      v21 = 0;
      if (!v18 || (v16 & 8) != 0)
      {
        goto LABEL_35;
      }

      v20 = 8;
      v19 = v18;
    }

    v21 = *v19;
    v15 = *(v18 + v20);
LABEL_35:
    *(a3 + 8) = v21;
    *(a3 + 16) = v15;
    goto LABEL_36;
  }

LABEL_28:
  *a3 = v17;
  *(a3 + 8) = 0;
LABEL_36:

  os_unfair_lock_unlock(&unk_1ED416028);
}

void swift::Lazy<swift::MetadataCache<anonymous namespace::ForeignMetadataCacheEntry,(unsigned short)15>>::get(uint64_t a1)
{
  if (qword_1ED416030 != -1)
  {
    swift_getForeignTypeMetadata_cold_1(a1);
  }
}

double swift::Lazy<swift::MetadataCache<anonymous namespace::ForeignMetadataCacheEntry,(unsigned short)15>>::defaultInitCallback(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::ForeignMetadataCacheEntry>,swift::Mutex>::find<anonymous namespace::ForeignMetadataCacheEntry::Key>(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  swift::ParsedTypeIdentity::parse(*a1, v17);
  v8 = __swift::__runtime::llvm::hash_value(v18, v19);
  v9 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v10 = 4;
  if ((a2 & 3) != 0 && v9)
  {
    v10 = *v9;
  }

  v11 = ~(-1 << v10);
  if ((a2 & 3) != 0)
  {
    v12 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v12 = 0;
  }

  while (1)
  {
    v13 = (v8 & v11) <= 1 ? 1 : v8 & v11;
    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v14) = v12 + v13;
      LOBYTE(v14) = atomic_load_explicit((v12 + v13), memory_order_acquire);
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v14 = (a2 >> (4 * v13)) & 0xF;
      if (!v14)
      {
        return 0;
      }
    }

LABEL_21:
    v15 = (v14 - 1);
    {
      return a4 + 8 * v15;
    }

    v8 = v13 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v14) = v12 + 2 * v13;
    LOWORD(v14) = atomic_load_explicit((v12 + 2 * v13), memory_order_acquire);
    if (!v14)
    {
      return 0;
    }

    goto LABEL_21;
  }

  LODWORD(v14) = atomic_load_explicit((v12 + 4 * v13), memory_order_acquire);
  if (v14)
  {
    goto LABEL_21;
  }

  return 0;
}

BOOL anonymous namespace::ForeignMetadataCacheEntry::matchesKey(uint64_t a1, uint64_t a2)
{
  swift::ParsedTypeIdentity::parse(a2, v9);
  v4 = __s2;
  v3 = v11;
  v5 = *(a1 + 8);
  v6 = v5[1];
  if (*v5 == 516 || *v5 == 515)
  {
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
LABEL_6:
    v7 = v5[1];
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:
  swift::ParsedTypeIdentity::parse(v7, v9);
  if (v3 != v11)
  {
    return 0;
  }

  if (v3)
  {
    return memcmp(v4, __s2, v3) == 0;
  }

  return 1;
}

_DWORD *anonymous namespace::SingletonMetadataCacheStorage::resolveExistingEntry(_DWORD *result)
{
  v1 = *result & 0x1F;
  if (v1 == 16)
  {
    if (result)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v4);
    v8 = *v4;
    v5 = TrailingObjectsImpl + 4 * ((v8 >> 29) & 1);
  }

  else
  {
    if (v1 == 17)
    {
      if (result)
      {
        v3 = result;
      }

      else
      {
        v3 = 0;
      }

      v5 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v3);
      v6 = v3;
    }

    else
    {
      if (v1 != 18)
      {
        __break(1u);
        return result;
      }

      if (result)
      {
        v2 = result;
      }

      else
      {
        v2 = 0;
      }

      v5 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v2);
      v6 = v2;
    }

    LODWORD(v8) = *v6;
  }

  v9 = (v5 + 4 * ((v8 & 0x30000) == 0x20000));
  v10 = *v9;
  v11 = (v9 + v10);
  if (!v10)
  {
    v11 = 0;
  }

  return atomic_load_explicit(v11 + 1, memory_order_acquire);
}

uint64_t std::__function::__func<recordBacktrace(void *)::$_0,std::allocator<recordBacktrace(void *)::$_0>,void ()(void **,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAC7C0;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<recordBacktrace(void *)::$_0,std::allocator<recordBacktrace(void *)::$_0>,void ()(void **,int)>::operator()(uint64_t a1, const void **a2, int *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = malloc_type_malloc(8 * v5 + 24, 0x10C0040055B63F2uLL);
  v6[1] = **(a1 + 8);
  *(v6 + 4) = v5;
  result = memcpy(v6 + 3, v4, 8 * v5);
  v8 = _swift_debug_metadataAllocationBacktraceList;
  *v6 = _swift_debug_metadataAllocationBacktraceList;
  v9 = v8;
  atomic_compare_exchange_strong_explicit(&_swift_debug_metadataAllocationBacktraceList, &v9, v6, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    v10 = v9;
    do
    {
      *v6 = v9;
      atomic_compare_exchange_strong_explicit(&_swift_debug_metadataAllocationBacktraceList, &v10, v6, memory_order_release, memory_order_relaxed);
      v11 = v10 == v9;
      v9 = v10;
    }

    while (!v11);
  }

  return result;
}

void __swift::__runtime::llvm::toHex(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  v5 = a2;
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a4, 2 * a2);
  if (v5)
  {
    if (a3)
    {
      v8 = 32;
    }

    else
    {
      v8 = 0;
    }

    do
    {
      v9 = *a1++;
      std::string::push_back(a4, a0123456789abcd[v9 >> 4] | v8);
      std::string::push_back(a4, a0123456789abcd[v9 & 0xF] | v8);
      --v5;
    }

    while (v5);
  }
}

uint64_t *swift::TypeLookupErrorOr<swift::TypeInfo>::operator=(uint64_t *result, uint64_t *a2)
{
  v3 = *(result + 12);
  v4 = *(a2 + 12);
  if (v3 == v4)
  {
    if (*(result + 12))
    {
      if (result != a2 && v3 == 1)
      {
        v5 = result;
        (result[1])(*result, 3, 0);
        v6 = *a2;
        v7 = a2[1];
        v5[1] = v7;
        v8 = v7(v6, 2, 0);
        result = v5;
        *v5 = v8;
      }
    }

    else
    {
      v11 = *a2;
      *(result + 16) = *(a2 + 16);
      *result = v11;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v9 = result;
      (result[1])(*result, 3, 0);
      result = v9;
    }

    if (v4 == 1)
    {
      *result = *a2;
      *a2 = 0;
      a2[1] = swift::TypeLookupError::nop;
    }

    else if (!v4)
    {
      v10 = *a2;
      result[2] = a2[2];
      *result = v10;
    }
  }

  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t std::__function::__func<swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest,swift::TargetWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_0,std::allocator<swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest,swift::TargetWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_0>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAC808;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest,swift::TargetWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_0,std::allocator<swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest,swift::TargetWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_0>,void const* ()(unsigned int,unsigned int)>::operator()(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 | *a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

__n128 std::__function::__func<swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest,swift::TargetWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_1,std::allocator<swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest,swift::TargetWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EEEAC850;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest,swift::TargetWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_1,std::allocator<swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest,swift::TargetWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_1>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::operator()(void **a1, uint64_t *a2, unsigned int *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a1[1];
  if (v6)
  {
    v6 = *a1[1];
  }

  if (v6 == -24)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 24;
  }

  if (*(*a1[1] + 16) <= v5)
  {
    return 0;
  }

  v8 = (v7 + 12 * *(v6 + 12) + 8 * v5);
  v9 = *a1[2];
  v10 = *a1[3];
  v11 = *a1[4];
  result = atomic_load_explicit((v9 + ((v8 - v11) & 0x7FFFFFFF8)), memory_order_acquire);
  if (result)
  {
    return swift_getAssociatedConformanceWitnessSlow(v9, v10, v4, v11, v8);
  }

  return result;
}

uint64_t std::__function::__func<swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest,swift::TargetWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_2,std::allocator<swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest,swift::TargetWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_2>,void const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAC898;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest,swift::TargetWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_3,std::allocator<swift_getAssociatedTypeWitnessSlowImpl(swift::MetadataRequest,swift::TargetWitnessTable<swift::InProcess> *,swift::TargetMetadata<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*,swift::TargetProtocolRequirement<swift::InProcess> const*)::$_3>,swift::TargetWitnessTable<swift::InProcess> const* ()(swift::TargetMetadata<swift::InProcess> const*,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEEAC8E0;
  a2[1] = v2;
  return result;
}

void swift::MetadataCacheEntryBase<anonymous namespace::SingletonMetadataCacheEntry,int>::awaitSatisfyingState(atomic_ullong *a1, __int16 a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v4 = explicit & 7;
  if (v4 - 1 < 3)
  {
    if (a2 > 0x3Eu)
    {
      if (a2 == 255)
      {
        return;
      }

      if (a2 == 63)
      {
        if (v4 > 1)
        {
          return;
        }

LABEL_13:
        v5 = a2 & 0x100;
        if ((explicit & 8) != 0 && (a2 & 0x100) != 0)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (!a2)
      {
        goto LABEL_13;
      }

      if (a2 == 1)
      {
        if (v4 >= 3)
        {
          return;
        }

        goto LABEL_13;
      }
    }

LABEL_53:
    __break(1u);
    return;
  }

  if (v4 == 4)
  {
    return;
  }

  if ((explicit & 7) != 0)
  {
    goto LABEL_53;
  }

  v5 = a2 & 0x100;
LABEL_16:
  v6 = 0;
  v19 = &SingletonMetadata;
  v20 = 0;
  v21 = 0;
  v8 = a2;
  while (1)
  {
    os_unfair_lock_lock(&SingletonMetadata);
    if (v6)
    {
      if (*v6 == 1)
      {
        v9 = v6[2];
        v6[2] = 0;
        if (v9)
        {
          MEMORY[0x1865C92E0](v9, 0x80C4018A671A6);
        }

        v6;
      }

      else
      {
        --*v6;
      }
    }

    v10 = *a1;
    v11 = *a1 & 7;
    if ((v11 - 1) >= 3)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      if (v11 != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    }

    if (v8 > 62)
    {
      if (v8 == 63)
      {
        if (v11 > 1)
        {
          goto LABEL_47;
        }

        goto LABEL_33;
      }

      if (v8 != 255)
      {
        goto LABEL_53;
      }

LABEL_47:
      os_unfair_lock_unlock(&SingletonMetadata);
      goto LABEL_48;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_53;
      }

      if (v11 >= 3)
      {
        goto LABEL_47;
      }
    }

LABEL_33:
    if ((v10 & 8) == 0)
    {
      break;
    }

    if (v5)
    {
      goto LABEL_47;
    }

LABEL_18:
    v6 = (v10 & 0xFFFFFFFFFFFFFFF0);
    ++*(v10 & 0xFFFFFFFFFFFFFFF0);
    os_unfair_lock_unlock(&SingletonMetadata);
    os_unfair_lock_lock((v10 & 0xFFFFFFFFFFFFFFF0 | 8));
    os_unfair_lock_unlock((v10 & 0xFFFFFFFFFFFFFFF0 | 8));
  }

  v12 = swift_slowAlloc(0x30, 0xFuLL);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *v12 = 1;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  os_unfair_lock_lock((v12 + 8));
  v20 = v12;
  v13 = (v10 & 0xFFFFFFFFFFFFFFF0);
  if ((v10 & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    *(v12 + 24) = *v13;
    v14 = *((v10 & 0xFFFFFFFFFFFFFFF0) + 0x10);
    *((v10 & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0;
    v15 = *(v12 + 16);
    *(v12 + 16) = v14;
    if (v15)
    {
      MEMORY[0x1865C92E0](v15, 0x80C4018A671A6);
    }
  }

  atomic_store(v10 & 7 | v12 | 8, a1);
  LOBYTE(v21) = 1;
  os_unfair_lock_unlock(&SingletonMetadata);
  HIBYTE(v21) = v11;
  if (v13)
  {
    v16 = *((v10 & 0xFFFFFFFFFFFFFFF0) + 0x10);
    *((v10 & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0;
    if (v16)
    {
      MEMORY[0x1865C92E0](v16, 0x80C4018A671A6);
    }

    MEMORY[0x1865C92E0](v10 & 0xFFFFFFFFFFFFFFF0, 0x1060C4048D9C6C4);
  }

LABEL_48:
  v17 = v20;
  if (v20)
  {
    os_unfair_lock_unlock(v20 + 2);
    v18 = *&v17[4]._os_unfair_lock_opaque;
    *&v17[4]._os_unfair_lock_opaque = 0;
    if (v18)
    {
      MEMORY[0x1865C92E0](v18, 0x80C4018A671A6);
    }

    v17;
  }
}

_DWORD *swift::MetadataCacheEntryBase<anonymous namespace::SingletonMetadataCacheEntry,int>::doInitialization(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = *(a1 + 8);
  v39 = *(a2 + 8);
  v38 = *(v39 + 16);
  if (!v38)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = &v40;
  }

  v8 = a3;
  while (1)
  {
    v9 = *(a2 + 17);
    if (v9 > 2)
    {
      break;
    }

    result = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v7);
    v11 = *result & 0x1F;
    if (v11 == 16)
    {
      v14 = result ? result : 0;
      TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v14);
      v18 = *v14;
      v15 = TrailingObjectsImpl + 4 * ((v18 >> 29) & 1);
    }

    else
    {
      if (v11 == 17)
      {
        v13 = result ? result : 0;
        v15 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v13);
        v16 = v13;
      }

      else
      {
        if (v11 != 18)
        {
          goto LABEL_66;
        }

        v12 = result ? result : 0;
        v15 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v12);
        v16 = v12;
      }

      LODWORD(v18) = *v16;
    }

    v19 = v15 + 4 * ((v18 & 0x30000) == 0x20000);
    v20 = *(v19 + 8);
    v21 = (v19 + 8 + v20);
    result = (v20 ? v21(v7, v38, 0) : MEMORY[0](v7, v38, 0));
    if (!result)
    {
      break;
    }

    v23 = result;
    if ((*(*(v7 - 1) + 82) & 0x40) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

LABEL_31:
    v3 = v22;
    *(a2 + 17) = v24;
    if (v8 > 62)
    {
      if (v8 != 63)
      {
        if (v8 == 255)
        {
LABEL_47:
          v27 = *(v39 + 16);
          if (!v27)
          {
            if (v40 | *(&v40 + 1) | v41 | *(&v41 + 1))
            {
              operator new();
            }

            v27 = 0;
          }

          *(v39 + 16) = 0;
          return *(a1 + 8);
        }

LABEL_66:
        __break(1u);
        return result;
      }

      if (v24 > 1u)
      {
        goto LABEL_47;
      }
    }

    else if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_66;
      }

      if (v24 == 3)
      {
        goto LABEL_47;
      }
    }

    if ((a3 & 0x100) != 0)
    {
      goto LABEL_47;
    }

    if (v9 < v24)
    {
      v39 = *(a2 + 8);
    }

    swift::blockOnMetadataDependency(*(a1 + 8), a3, v23, v3);
  }

  result = swift::checkTransitiveCompleteness(v7);
  if (result)
  {
    v23 = result;
    v24 = 3;
    goto LABEL_31;
  }

  result = swift::TargetMetadata<swift::InProcess>::getTypeContextDescriptor(v7);
  v25 = *result & 0x1F;
  if (v25 == 16)
  {
    if (result)
    {
      v29 = result;
    }

    else
    {
      v29 = 0;
    }

    v32 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::InProcess>,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetVTableDescriptorHeader<swift::InProcess>,swift::TargetMethodDescriptor<swift::InProcess>,swift::TargetOverrideTableHeader<swift::InProcess>,swift::TargetMethodOverrideDescriptor<swift::InProcess>,swift::TargetObjCResilientClassStubInfo<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>,swift::TargetMethodDefaultOverrideTableHeader<swift::InProcess>,swift::TargetMethodDefaultOverrideDescriptor<swift::InProcess>>::getTrailingObjectsImpl(v29);
    v33 = *v29;
    v30 = v32 + 4 * ((v33 >> 29) & 1);
  }

  else
  {
    if (v25 == 17)
    {
      if (result)
      {
        v28 = result;
      }

      else
      {
        v28 = 0;
      }

      v30 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetStructDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetStructDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v28);
      v31 = v28;
    }

    else
    {
      if (v25 != 18)
      {
        goto LABEL_66;
      }

      if (result)
      {
        v26 = result;
      }

      else
      {
        v26 = 0;
      }

      v30 = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetEnumDescriptor<swift::InProcess>,swift::ABI::TrailingObjects<swift::TargetEnumDescriptor<swift::InProcess>,swift::TargetTypeGenericContextDescriptorHeader<swift::InProcess>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::InProcess>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::InProcess>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>,swift::GenericValueDescriptor,swift::TargetForeignMetadataInitialization<swift::InProcess>,swift::TargetSingletonMetadataInitialization<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::InProcess>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::InProcess>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::InProcess>>::getTrailingObjectsImpl(v26);
      v31 = v26;
    }

    LODWORD(v33) = *v31;
  }

  v34 = (v30 + 4 * ((v33 & 0x30000) == 0x20000));
  v35 = *v34;
  v36 = (v34 + v35);
  if (!v35)
  {
    v36 = 0;
  }

  atomic_store(v7, v36);
  *(a2 + 17) = 4;
  v37 = *(v39 + 16);
  *(v39 + 16) = 0;
  return *(a1 + 8);
}

void swift::MetadataCacheEntryBase<anonymous namespace::SingletonMetadataCacheEntry,int>::finishAndPublishProgress(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 17);
  if (a3 || a5)
  {
    operator new();
  }

  v8 = *a2;
  os_unfair_lock_lock(*a2);
  atomic_store(v7, a1);
  os_unfair_lock_unlock((*(a2 + 8) + 8));
  v9 = *(a2 + 8);
  if (*v9 == 1)
  {
    v10 = v9[2];
    v9[2] = 0;
    if (v10)
    {
      MEMORY[0x1865C92E0](v10, 0x80C4018A671A6);
    }

    v9;
  }

  else
  {
    --*v9;
  }

  os_unfair_lock_unlock(v8);
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
}

void swift::MetadataCacheEntryBase<anonymous namespace::SingletonMetadataCacheEntry,int>::notifyWaitingThreadsOfProgress(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  os_unfair_lock_lock(*a2);
  v9 = *(a2 + 8);
  if (*v9 == 1)
  {
    v10 = *(a2 + 8);
  }

  else
  {
    v10 = swift_slowAlloc(0x30, 0xFuLL);
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = 1;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    os_unfair_lock_lock((v10 + 8));
    v11 = v9[2];
    v9[2] = 0;
    v12 = *(v10 + 16);
    *(v10 + 16) = v11;
    if (v12)
    {
      MEMORY[0x1865C92E0](v12, 0x80C4018A671A6);
    }
  }

  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  atomic_store(*(a2 + 17) | v10 | 8, a1);
  if (v10 != v9)
  {
    os_unfair_lock_unlock((*(a2 + 8) + 8));
    v13 = *(a2 + 8);
    if (*v13 == 1)
    {
      v14 = v13[2];
      v13[2] = 0;
      if (v14)
      {
        MEMORY[0x1865C92E0](v14, 0x80C4018A671A6);
      }

      v13;
    }

    else
    {
      --*v13;
    }

    *(a2 + 8) = v10;
  }

  os_unfair_lock_unlock(v8);
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::ObjCClassCacheEntry>,swift::LazyMutex>::find<swift::TargetClassMetadata<swift::InProcess,swift::TargetAnyClassMetadataObjCInterop<swift::InProcess>> const*>(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *a1;
  {
    v19 = a4;
    v16 = a3;
    v18 = a2;
    v15 = a1;
    v17 = v4;
    getCache();
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
    if (v13 < a3 && *(*(a4 + 8 * v13) + 24) == *a1)
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

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::PackCacheEntry<swift::TargetMetadata<swift::InProcess>>>,swift::LazyMutex>::find<anonymous namespace::PackCacheEntry<swift::TargetMetadata<swift::InProcess>>::Key>(void *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v23 = 0;
  if (a1[1])
  {
    v8 = 0;
    do
    {
      v22 = *(*a1 + 8 * v8);
      v9 = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,swift::TargetMetadata<swift::InProcess> const*>(&v23, &v22);
      v23 = v9;
      ++v8;
    }

    while (v8 != a1[1]);
  }

  else
  {
    v9 = 0;
  }

  v10 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v11 = 4;
  if ((a2 & 3) != 0 && v10)
  {
    v11 = *v10;
  }

  v12 = ~(-1 << v11);
  if ((a2 & 3) == 0)
  {
    v10 = 0;
  }

  while (1)
  {
    v13 = v9 & v12;
    if ((v9 & v12) <= 1)
    {
      v13 = 1;
    }

    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v14) = v10 + v13;
      LOBYTE(v14) = atomic_load_explicit(&v10[v13], memory_order_acquire);
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v14 = (a2 >> (4 * v13)) & 0xF;
      if (!v14)
      {
        return 0;
      }
    }

LABEL_25:
    v15 = (v14 - 1);
    if (v15 < a3)
    {
      v16 = *(a4 + 8 * v15);
      v17 = a1[1];
      if (v17 == *v16)
      {
        if (!v17)
        {
          return a4 + 8 * v15;
        }

        v18 = 0;
        v19 = v16 + 1;
        v20 = 1;
        while (*(*a1 + 8 * v18) == v19[v18])
        {
          v18 = v20++;
          if (v17 == v18)
          {
            return a4 + 8 * v15;
          }
        }
      }
    }

    v9 = v13 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v14) = v10 + 2 * v13;
    LOWORD(v14) = atomic_load_explicit(&v10[2 * v13], memory_order_acquire);
    if (!v14)
    {
      return 0;
    }

    goto LABEL_25;
  }

  LODWORD(v14) = atomic_load_explicit(&v10[4 * v13], memory_order_acquire);
  if (v14)
  {
    goto LABEL_25;
  }

  return 0;
}

unint64_t __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,swift::TargetMetadata<swift::InProcess> const*>(void *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  {
    v5 = a1;
    v6 = a2;
    getCache();
    a1 = v5;
    a2 = v6;
  }

  v2 = *a1;
  v11 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
  v7 = 0;
  *&v8[0] = v2;
  v3 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v8, &v7, v8 + 1, v9, *a2);
  return __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(v8, v7, v3, v9);
}

uint64_t anonymous namespace::FunctionCacheEntry::matchesKey(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 != *(a1 + 24))
  {
    return 0;
  }

  v3 = a2[1];
  if ((v2 & 0x8000000) != 0)
  {
    if (v3 != *((a1 + 8 * *a2 + 4 * (*a2 & ((*a2 << 38) >> 63)) + 47) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if (a2[4] != *(a1 + 32))
  {
    return 0;
  }

  v5 = a2[5];
  if ((v2 & 0x10000000) != 0)
  {
    if (v5 == *(((a1 + 8 * *a2 + 4 * (*a2 & ((*a2 << 38) >> 63)) + 47) & 0xFFFFFFFFFFFFFFF8) + 8 * ((*a2 >> 27) & 1)))
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_12:
  if ((v2 & 0x80000000) != 0)
  {
    v6 = *(((a1 + 8 * v2 + 4 * (v2 & ((v2 << 38) >> 63)) + 47) & 0xFFFFFFFFFFFFFFF8) + 8 * ((v2 >> 27) & 1) + 8 * ((v2 >> 28) & 1));
  }

  else
  {
    v6 = 0;
  }

  if (*(a2 + 12) != v6)
  {
    return 0;
  }

  v8 = a2[7];
  if (v8 != swift::TargetFunctionTypeMetadata<swift::InProcess>::getThrownError(a1 + 16))
  {
    return 0;
  }

  if (*a2)
  {
    v10 = 0;
    v11 = a1 + 40;
    result = 1;
    while (1)
    {
      if (*(a2[2] + 8 * v10) != *(v11 + 8 * v10))
      {
        return 0;
      }

      if ((*a2 & 0x2000000) != 0)
      {
        v12 = *(a2[3] + 4 * v10);
        v13 = *(a1 + 24);
        if ((v13 & 0x2000000) == 0)
        {
LABEL_25:
          v14 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        v12 = 0;
        v13 = *(a1 + 24);
        if ((v13 & 0x2000000) == 0)
        {
          goto LABEL_25;
        }
      }

      v14 = *(v11 + 8 * v13 + 4 * v10);
LABEL_26:
      if (v12 != v14)
      {
        return 0;
      }

      if (*a2 == ++v10)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::FunctionCacheEntry>,swift::LazyMutex>::find<anonymous namespace::FunctionCacheEntry::Key>(unsigned __int16 *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v10 = 4;
  if ((a2 & 3) != 0 && v9)
  {
    v10 = *v9;
  }

  v11 = ~(-1 << v10);
  if ((a2 & 3) != 0)
  {
    v12 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v12 = 0;
  }

  while (1)
  {
    v13 = (v8 & v11) <= 1 ? 1 : v8 & v11;
    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v14) = v12 + v13;
      LOBYTE(v14) = atomic_load_explicit((v12 + v13), memory_order_acquire);
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v14 = (a2 >> (4 * v13)) & 0xF;
      if (!v14)
      {
        return 0;
      }
    }

LABEL_21:
    v15 = (v14 - 1);
    {
      return a4 + 8 * v15;
    }

    v8 = v13 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v14) = v12 + 2 * v13;
    LOWORD(v14) = atomic_load_explicit((v12 + 2 * v13), memory_order_acquire);
    if (!v14)
    {
      return 0;
    }

    goto LABEL_21;
  }

  LODWORD(v14) = atomic_load_explicit((v12 + 4 * v13), memory_order_acquire);
  if (v14)
  {
    goto LABEL_21;
  }

  return 0;
}

unint64_t anonymous namespace::hash_value(unsigned __int16 *a1)
{
  v2 = *a1;
  v8 = *(a1 + 1);
  v9 = v2;
  v7 = *(a1 + 12);
  result = __swift::__runtime::llvm::hash_combine<unsigned long,unsigned long,swift::TargetMetadata<swift::InProcess> const*,swift::TargetMetadata<swift::InProcess> const*,unsigned int,swift::TargetMetadata<swift::InProcess> const*>(&v9, &v8, a1 + 4, a1 + 5, &v7, a1 + 7);
  v10 = result;
  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    do
    {
      v9 = *(*(a1 + 2) + 8 * v5);
      v10 = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,swift::TargetMetadata<swift::InProcess> const*>(&v10, &v9);
      if ((*(a1 + 3) & 2) != 0)
      {
        v6 = *(*(a1 + 3) + 4 * v5);
      }

      else
      {
        v6 = 0;
      }

      LODWORD(v9) = v6;
      result = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,unsigned int>(&v10, &v9);
      v10 = result;
      ++v5;
    }

    while (v4 != v5);
  }

  return result;
}

unint64_t __swift::__runtime::llvm::hash_combine<unsigned long,unsigned long,swift::TargetMetadata<swift::InProcess> const*,swift::TargetMetadata<swift::InProcess> const*,unsigned int,swift::TargetMetadata<swift::InProcess> const*>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int *a5, uint64_t *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  {
    v18 = a2;
    v17 = a1;
    getCache();
    a1 = v17;
    a2 = v18;
  }

  v10 = *a1;
  v27 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
  *&v24[0] = v10;
  v19 = 0;
  v11 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v19, v24 + 1, v25, *a2);
  v20 = v19;
  v12 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v20, v11, v25, *a3);
  v21 = v20;
  v13 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v21, v12, v25, *a4);
  v22 = v21;
  v14 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v24, &v22, v13, v25, *a5);
  v23 = v22;
  v15 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v24, &v23, v14, v25, *a6);
  return __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(v24, v23, v15, v25);
}

unint64_t __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,unsigned int>(void *a1, int *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  {
    v5 = a1;
    v6 = a2;
    getCache();
    a1 = v5;
    a2 = v6;
  }

  v2 = *a1;
  v11 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
  v7 = 0;
  *&v8[0] = v2;
  v3 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(v8, &v7, v8 + 2, v9, *a2);
  return __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(v8, v7, v3, v9);
}

_DWORD *__swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(uint64_t a1, uint64_t *a2, _DWORD *__dst, unint64_t a4, int a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      __swift::__runtime::llvm::hashing::detail::hash_state::mix((a1 + 64), a1);
      v9 = *a2 + 64;
    }

    else
    {
      v10 = *(a1 + 120);
      v11 = __ROR8__(v10 ^ 0xB492B66FBE98F273, 49);
      v12 = v10 ^ (v10 >> 47);
      v13 = *(a1 + 8);
      v14 = v13 + v10 + v11;
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v17 = *(a1 + 40);
      v18 = v17 + v11 - 0x4B6D499041670D8DLL * __ROR8__(v15 + v10 - 0x4B6D499041670D8DLL * v10, 42);
      v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
      v20 = 0x9DDFEA08EB382D69 * (v10 ^ (((0x9DDFEA08EB382D69 * (v12 ^ (0xB492B66FBE98F273 * v10))) ^ v10) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ (0xB492B66FBE98F273 * v10))));
      v21 = 0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47));
      v22 = 0xB492B66FBE98F273 * __ROR8__(v12 - 0x622015F714C7D297 * (v19 ^ (v19 >> 47)), 33);
      v23 = *a1 - 0x6D8ED9027DD26057 * v10;
      v25 = *(a1 + 16);
      v24 = *(a1 + 24);
      v26 = v23 + v13 + v25;
      v27 = v21 ^ (0xB492B66FBE98F273 * __ROR8__(v14, 37));
      v28 = __ROR8__(v26, 44) + v23 + __ROR8__(v23 + v12 + v24 + v27, 21);
      v29 = v22 + *(a1 + 32) + v21;
      *(a1 + 64) = v22;
      *(a1 + 72) = v18;
      *(a1 + 80) = v27;
      *(a1 + 88) = v26 + v24;
      *(a1 + 96) = v28;
      *(a1 + 104) = v17 + v15 + v29 + v16;
      *(a1 + 112) = __ROR8__(v18 + v25 + v16 + v29, 21) + v29 + __ROR8__(v17 + v15 + v29, 44);
      v9 = 64;
    }

    *a2 = v9;
    if (a1 + 4 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 4 - v8);
      a1 += 4 - v8;
    }
  }

  return a1;
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::FixedArrayCacheEntry>,swift::Mutex>::find<anonymous namespace::FixedArrayCacheEntry::Key>(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v18 = a1[1];
  v19 = v8;
  v9 = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,swift::TargetMetadata<swift::InProcess> const*>(&v19, &v18);
  v10 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v11 = 4;
  if ((a2 & 3) != 0 && v10)
  {
    v11 = *v10;
  }

  v12 = ~(-1 << v11);
  if ((a2 & 3) == 0)
  {
    v10 = 0;
  }

  while (1)
  {
    v13 = v9 & v12;
    if ((v9 & v12) <= 1)
    {
      v13 = 1;
    }

    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v14) = v10 + v13;
      LOBYTE(v14) = atomic_load_explicit(&v10[v13], memory_order_acquire);
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v14 = (a2 >> (4 * v13)) & 0xF;
      if (!v14)
      {
        return 0;
      }
    }

LABEL_20:
    v15 = (v14 - 1);
    if (v15 < a3)
    {
      v16 = *(a4 + 8 * v15);
      if (*(v16 + 120) == *a1 && *(v16 + 128) == a1[1])
      {
        return a4 + 8 * v15;
      }
    }

    v9 = v13 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v14) = v10 + 2 * v13;
    LOWORD(v14) = atomic_load_explicit(&v10[2 * v13], memory_order_acquire);
    if (!v14)
    {
      return 0;
    }

    goto LABEL_20;
  }

  LODWORD(v14) = atomic_load_explicit(&v10[4 * v13], memory_order_acquire);
  if (v14)
  {
    goto LABEL_20;
  }

  return 0;
}

uint64_t swift::MetadataCacheEntryBase<anonymous namespace::FixedArrayCacheEntry,int>::doInitialization(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = *(a2 + 8);
  v7 = a1 + 8;
  v8 = a3;
  while (1)
  {
    v9 = *(a2 + 17);
    if (v9 == 3)
    {
LABEL_7:
      result = swift::checkTransitiveCompleteness((a1 + 112));
      v11 = result;
      v13 = v12;
      if (result)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }

      *(a2 + 17) = v14;
      if (!result)
      {
        goto LABEL_43;
      }

LABEL_15:
      if (v8 <= 62)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }

    v11 = *(a1 + 128);
    v35 = 319;
    result = performOnMetadataCache<swift::MetadataResponse,swift_checkMetadataState::CheckStateCallbacks>(v11, &v35);
    if (v15 > 0x3F)
    {
      v14 = 1;
      *(a2 + 17) = 1;
      v13 = 63;
      if (!v11)
      {
        goto LABEL_43;
      }

      goto LABEL_15;
    }

    v16 = *(a1 + 120);
    *(a1 + 104) = v7;
    v17 = *(v11 - 8);
    v18 = *(v17 + 72) * v16;
    *(a1 + 72) = v18;
    *(a1 + 80) = v18;
    v19 = *(v17 + 80);
    v20 = (v19 & 0x1000F8) != 0 || v18 >= 0x19;
    v21 = v19 & 0xFFFDFFFF;
    if (v20)
    {
      v22 = 0x20000;
    }

    else
    {
      v22 = 0;
    }

    *(a1 + 88) = v22 | v21;
    *(a1 + 92) = *(v17 + 84);
    *(a1 + 8) = vector_initializeBufferWithCopyOfBuffer;
    *(a1 + 16) = vector_destroy;
    *(a1 + 24) = vector_initializeWithCopy;
    *(a1 + 32) = vector_assignWithCopy;
    *(a1 + 40) = vector_initializeWithTake;
    *(a1 + 48) = vector_assignWithTake;
    *(a1 + 56) = vector_getEnumTagSinglePayload;
    *(a1 + 64) = vector_storeEnumTagSinglePayload;
    if (v15 == 1)
    {
      goto LABEL_7;
    }

    if (!v15)
    {
      break;
    }

    v14 = 3;
    *(a2 + 17) = 3;
    v13 = 1;
    if (v8 <= 62)
    {
LABEL_16:
      if (v8)
      {
        if (v8 != 1)
        {
          goto LABEL_53;
        }

        if (v14 == 3)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_31;
    }

LABEL_29:
    if (v8 != 63)
    {
      if (v8 != 255)
      {
LABEL_53:
        __break(1u);
        return result;
      }

LABEL_43:
      v30 = v14;
      goto LABEL_44;
    }

    if (v14 > 1u)
    {
      goto LABEL_43;
    }

LABEL_31:
    if ((a3 & 0x100) != 0)
    {
      goto LABEL_43;
    }

    if (v9 < v14)
    {
      v23 = *a2;
      os_unfair_lock_lock(*a2);
      v24 = *(a2 + 8);
      if (*v24 == 1)
      {
        v25 = *(a2 + 8);
      }

      else
      {
        v25 = swift_slowAlloc(0x30, 0xFuLL);
        *v25 = 0u;
        *(v25 + 16) = 0u;
        *(v25 + 32) = 0u;
        *v25 = 1;
        *(v25 + 16) = 0;
        *(v25 + 24) = 0;
        os_unfair_lock_lock((v25 + 8));
        v26 = v24[2];
        v24[2] = 0;
        v27 = *(v25 + 16);
        *(v25 + 16) = v26;
        if (v27)
        {
          MEMORY[0x1865C92E0](v27, 0x80C4018A671A6);
        }
      }

      *(v25 + 24) = v11;
      *(v25 + 32) = v13;
      atomic_store(*(a2 + 17) | v25 | 8, a1);
      if (v25 != v24)
      {
        os_unfair_lock_unlock((*(a2 + 8) + 8));
        v28 = *(a2 + 8);
        if (*v28 == 1)
        {
          v29 = v28[2];
          v28[2] = 0;
          if (v29)
          {
            MEMORY[0x1865C92E0](v29, 0x80C4018A671A6);
          }

          v28;
        }

        else
        {
          --*v28;
        }

        *(a2 + 8) = v25;
      }

      os_unfair_lock_unlock(v23);
      v6 = *(a2 + 8);
    }

    swift::blockOnMetadataDependency(a1 + 112, a3, v11, v13);
  }

  v11 = 0;
  v30 = 4;
  *(a2 + 17) = 4;
LABEL_44:
  v31 = *(v6 + 16);
  *(v6 + 16) = 0;
  if (v11 | v31)
  {
    operator new();
  }

  v32 = *a2;
  os_unfair_lock_lock(*a2);
  atomic_store(v30, a1);
  os_unfair_lock_unlock((*(a2 + 8) + 8));
  v33 = *(a2 + 8);
  if (*v33 == 1)
  {
    v34 = v33[2];
    v33[2] = 0;
    if (v34)
    {
      MEMORY[0x1865C92E0](v34, 0x80C4018A671A6);
    }

    v33;
  }

  else
  {
    --*v33;
  }

  os_unfair_lock_unlock(v32);
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  return a1 + 112;
}

atomic_ullong **vector_initializeBufferWithCopyOfBuffer(atomic_ullong **__dst, atomic_ullong **__src, uint64_t a3)
{
  v4 = __dst;
  v6 = a3 - 8;
  v5 = *(a3 - 8);
  v7 = *(v5 + 80);
  if ((v7 & 0x20000) != 0)
  {
    v10 = *__src;
    *v4 = *__src;
    v10;
    return (*v4 + ((*(*v6 + 80) + 16) & ~*(*v6 + 80)));
  }

  if ((v7 & 0x10000) != 0)
  {
    v12 = *(a3 + 8) & ~(*(a3 + 8) >> 63);
    if (v12)
    {
      v13 = 0;
      v14 = *(*(*(a3 + 16) - 8) + 72);
      do
      {
        (*(*(*(a3 + 16) - 8) + 16))(v4 + v13, __src + v13);
        v13 += v14;
        --v12;
      }

      while (v12);
    }

    return v4;
  }

  v8 = *(v5 + 64);

  return memcpy(__dst, __src, v8);
}

uint64_t vector_destroy(uint64_t result, uint64_t a2)
{
  if (*(*(a2 - 8) + 82))
  {
    v3 = *(a2 + 8) & ~(*(a2 + 8) >> 63);
    if (v3)
    {
      v4 = result;
      v5 = *(*(*(a2 + 16) - 8) + 72);
      do
      {
        result = (*(*(*(a2 + 16) - 8) + 8))(v4);
        v4 += v5;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

char *vector_initializeWithCopy(char *__dst, char *__src, uint64_t a3)
{
  v3 = __src;
  v5 = *(a3 - 8);
  if (*(v5 + 82))
  {
    v9 = *(a3 + 8) & ~(*(a3 + 8) >> 63);
    if (v9)
    {
      v10 = *(*(*(a3 + 16) - 8) + 72);
      v11 = __dst;
      do
      {
        (*(*(*(a3 + 16) - 8) + 16))(v11, v3);
        v11 += v10;
        v3 += v10;
        --v9;
      }

      while (v9);
    }

    return __dst;
  }

  else
  {
    v6 = *(v5 + 64);

    return memcpy(__dst, __src, v6);
  }
}

char *vector_assignWithCopy(char *__dst, char *__src, uint64_t a3)
{
  v3 = __src;
  v5 = *(a3 - 8);
  if (*(v5 + 82))
  {
    v9 = *(a3 + 8) & ~(*(a3 + 8) >> 63);
    if (v9)
    {
      v10 = *(*(*(a3 + 16) - 8) + 72);
      v11 = __dst;
      do
      {
        (*(*(*(a3 + 16) - 8) + 24))(v11, v3);
        v11 += v10;
        v3 += v10;
        --v9;
      }

      while (v9);
    }

    return __dst;
  }

  else
  {
    v6 = *(v5 + 64);

    return memcpy(__dst, __src, v6);
  }
}

char *vector_initializeWithTake(char *__dst, char *__src, uint64_t a3)
{
  v3 = __src;
  v5 = *(a3 - 8);
  if (*(v5 + 82))
  {
    v9 = *(a3 + 8) & ~(*(a3 + 8) >> 63);
    if (v9)
    {
      v10 = *(*(*(a3 + 16) - 8) + 72);
      v11 = __dst;
      do
      {
        (*(*(*(a3 + 16) - 8) + 32))(v11, v3);
        v11 += v10;
        v3 += v10;
        --v9;
      }

      while (v9);
    }

    return __dst;
  }

  else
  {
    v6 = *(v5 + 64);

    return memcpy(__dst, __src, v6);
  }
}

char *vector_assignWithTake(char *__dst, char *__src, uint64_t a3)
{
  v3 = __src;
  v5 = *(a3 - 8);
  if (*(v5 + 82))
  {
    v9 = *(a3 + 8) & ~(*(a3 + 8) >> 63);
    if (v9)
    {
      v10 = *(*(*(a3 + 16) - 8) + 72);
      v11 = __dst;
      do
      {
        (*(*(*(a3 + 16) - 8) + 40))(v11, v3);
        v11 += v10;
        v3 += v10;
        --v9;
      }

      while (v9);
    }

    return __dst;
  }

  else
  {
    v6 = *(v5 + 64);

    return memcpy(__dst, __src, v6);
  }
}

uint64_t swift::ConcurrentReadableHashMap<swift::HashMapElementWrapper<anonymous namespace::TupleCacheEntry>,swift::Mutex>::find<anonymous namespace::TupleCacheEntry::Key>(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a1[2];
  v25 = __swift::__runtime::llvm::hashing::detail::hash_combine_range_impl<swift::TargetMetadata<swift::InProcess> const* const>(a1[1], a1[1] + 8 * *a1);
  v24[0] = v8;
  if (v8)
  {
    v9 = strlen(v8);
  }

  else
  {
    v9 = 0;
  }

  v24[1] = v9;
  v10 = __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,__swift::__runtime::llvm::StringRef>(&v25, v24);
  v11 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  v12 = 4;
  if ((a2 & 3) != 0 && v11)
  {
    v12 = *v11;
  }

  v13 = ~(-1 << v12);
  if ((a2 & 3) != 0)
  {
    v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v14 = 0;
  }

  while (1)
  {
    v15 = (v10 & v13) <= 1 ? 1 : v10 & v13;
    if ((a2 & 3) > 1)
    {
      break;
    }

    if ((a2 & 3) != 0)
    {
      LODWORD(v16) = v14 + v15;
      LOBYTE(v16) = atomic_load_explicit((v14 + v15), memory_order_acquire);
      if (!v16)
      {
        return 0;
      }
    }

    else
    {
      v16 = (a2 >> (4 * v15)) & 0xF;
      if (!v16)
      {
        return 0;
      }
    }

LABEL_24:
    v17 = (v16 - 1);
    if (v17 < a3)
    {
      v18 = *(a4 + 8 * v17);
      v19 = *a1;
      if (*a1 == *(v18 + 120))
      {
        if (v19)
        {
          v20 = 0;
          while (*(a1[1] + 8 * v20) == *(v18 + 136 + 16 * v20))
          {
            if (v19 == ++v20)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
LABEL_30:
          v21 = a1[2];
          v22 = *(v18 + 128);
          if (v21 == v22 || v21 && v22 && !strcmp(v21, v22))
          {
            return a4 + 8 * v17;
          }
        }
      }
    }

    v10 = v15 + 1;
  }

  if ((a2 & 3) == 2)
  {
    LODWORD(v16) = v14 + 2 * v15;
    LOWORD(v16) = atomic_load_explicit((v14 + 2 * v15), memory_order_acquire);
    if (!v16)
    {
      return 0;
    }

    goto LABEL_24;
  }

  LODWORD(v16) = atomic_load_explicit((v14 + 4 * v15), memory_order_acquire);
  if (v16)
  {
    goto LABEL_24;
  }

  return 0;
}

unint64_t __swift::__runtime::llvm::hash_combine<__swift::__runtime::llvm::hash_code,__swift::__runtime::llvm::StringRef>(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  {
    v6 = a1;
    v7 = a2;
    getCache();
    a1 = v6;
    a2 = v7;
  }

  v2 = *a1;
  v12 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
  v8 = 0;
  *&v9[0] = v2;
  v3 = __swift::__runtime::llvm::hash_value(*a2, *(a2 + 8));
  v4 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v9, &v8, v9 + 1, v10, v3);
  return __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(v9, v8, v4, v10);
}

unint64_t __swift::__runtime::llvm::hashing::detail::hash_combine_range_impl<swift::TargetMetadata<swift::InProcess> const* const>(void *a1, uint64_t a2)
{
  v2 = a2;
  {
    v62 = a1;
    getCache();
    a1 = v62;
    v2 = a2;
  }

  v3 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
  v4 = v2 - a1;
  if ((v2 - a1) > 0x40)
  {
    v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
    v7 = __ROR8__(__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ 0xB492B66FBE98F273, 49);
    v8 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ (__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed >> 47);
    v9 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed ^ (((0x9DDFEA08EB382D69 * (v8 ^ (0xB492B66FBE98F273 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed))) ^ __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ (0xB492B66FBE98F273 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed)));
    v10 = a1[1];
    v12 = a1[6];
    v11 = a1[7];
    v13 = v7 + __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed + v10;
    v14 = a1[5];
    v15 = v14 + v7 - 0x4B6D499041670D8DLL * __ROR8__(v12 + __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed - 0x4B6D499041670D8DLL * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed, 42);
    v16 = *a1 - 0x6D8ED9027DD26057 * __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
    v18 = a1[2];
    v17 = a1[3];
    v19 = v16 + v10 + v18;
    v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v9) ^ ((0x9DDFEA08EB382D69 * v9) >> 47));
    v21 = __ROR8__(v8 - 0x622015F714C7D297 * (v6 ^ (v6 >> 47)), 33);
    v22 = (0xB492B66FBE98F273 * __ROR8__(v13, 37)) ^ v20;
    v23 = __ROR8__(v19, 44) + v16 + __ROR8__(v22 + v8 + v16 + v17, 21);
    v24 = 0xB492B66FBE98F273 * v21;
    v25 = v19 + v17;
    v26 = v20 + a1[4] - 0x4B6D499041670D8DLL * v21;
    v27 = v14 + v12 + v26;
    v28 = __ROR8__(v15 + v18 + v11 + v26, 21) + v26 + __ROR8__(v27, 44);
    v29 = v27 + v11;
    v30 = (v4 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v4 & 0xFFFFFFFFFFFFFFC0) == 0x40)
    {
      v31 = v22;
    }

    else
    {
      v32 = a1 + 15;
      do
      {
        v33 = *(v32 - 6);
        v34 = v15 + v25 + v24 + v33;
        v35 = *(v32 - 1);
        v36 = *(v32 - 2);
        v15 = v36 + v25 - 0x4B6D499041670D8DLL * __ROR8__(v15 + v23 + v35, 42);
        v37 = v22 + v29;
        v38 = *(v32 - 7) - 0x4B6D499041670D8DLL * v23;
        v40 = *(v32 - 5);
        v39 = *(v32 - 4);
        v41 = v38 + v33 + v40;
        v31 = (0xB492B66FBE98F273 * __ROR8__(v34, 37)) ^ v28;
        v23 = __ROR8__(v41, 44) + v38 + __ROR8__(v31 + v29 + v38 + v39, 21);
        v24 = 0xB492B66FBE98F273 * __ROR8__(v37, 33);
        v25 = v41 + v39;
        v42 = v24 + v28 + *(v32 - 3);
        v43 = v36 + v35 + v42;
        v28 = __ROR8__(v15 + v40 + v42 + *v32, 21) + v42 + __ROR8__(v43, 44);
        v29 = v43 + *v32;
        v32 += 8;
        v22 = v31;
        v30 -= 64;
      }

      while (v30);
    }

    if ((v4 & 0x3F) != 0)
    {
      v44 = *(v2 - 56);
      v45 = *(v2 - 16);
      v46 = *(v2 - 8);
      v47 = v31 + v29;
      v48 = (0xB492B66FBE98F273 * __ROR8__(v15 + v25 + v24 + v44, 37)) ^ v28;
      v50 = *(v2 - 32);
      v49 = *(v2 - 24);
      v15 = v49 + v25 - 0x4B6D499041670D8DLL * __ROR8__(v15 + v23 + v45, 42);
      v51 = v48 + v29;
      v52 = *(v2 - 64) - 0x4B6D499041670D8DLL * v23;
      v55 = v2 - 48;
      v53 = *(v2 - 48);
      v54 = *(v55 + 8);
      v56 = v52 + v44 + v53;
      v24 = 0xB492B66FBE98F273 * __ROR8__(v47, 33);
      v23 = __ROR8__(v56, 44) + v52 + __ROR8__(v51 + v52 + v54, 21);
      v25 = v56 + v54;
      v57 = v24 + v28 + v50;
      v58 = v49 + v45 + v57;
      v28 = __ROR8__(v15 + v53 + v57 + v46, 21) + v57 + __ROR8__(v58, 44);
      v29 = v58 + v46;
      v31 = v48;
    }

    v59 = 0x9DDFEA08EB382D69 * (v28 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v28)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v28)));
    v60 = v24 - 0x4B6D499041670D8DLL * (v4 ^ (v4 >> 47)) - 0x622015F714C7D297 * (v59 ^ (v59 >> 47));
    v61 = 0x9DDFEA08EB382D69 * ((v31 - 0x4B6D499041670D8DLL * (v15 ^ (v15 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v29 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v29)))) ^ ((0x9DDFEA08EB382D69 * (v29 ^ ((0x9DDFEA08EB382D69 * (v25 ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ v29)))) >> 47))) ^ v60);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v60 ^ (v61 >> 47) ^ v61)) ^ ((0x9DDFEA08EB382D69 * (v60 ^ (v61 >> 47) ^ v61)) >> 47));
  }

  else
  {

    return __swift::__runtime::llvm::hashing::detail::hash_short(a1, v4, v3);
  }
}

void swift::MetadataCacheEntryBase<anonymous namespace::TupleCacheEntry,swift::TargetTupleTypeMetadata<swift::InProcess>::Element>::awaitSatisfyingState(atomic_ullong *a1, uint64_t a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v4 = explicit & 7;
  if (v4 - 1 < 3)
  {
    if (a2 > 0x3Eu)
    {
      if (a2 == 255)
      {
        return;
      }

      if (a2 == 63)
      {
        if (v4 > 1)
        {
          return;
        }

LABEL_13:
        v5 = a2 & 0x100;
        if ((explicit & 8) != 0 && (a2 & 0x100) != 0)
        {
          return;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (!a2)
      {
        goto LABEL_13;
      }

      if (a2 == 1)
      {
        if (v4 > 2)
        {
          return;
        }

        goto LABEL_13;
      }
    }

LABEL_53:
    __break(1u);
    return;
  }

  if (v4 == 4)
  {
    return;
  }

  if ((explicit & 7) != 0)
  {
    goto LABEL_53;
  }

  v5 = a2 & 0x100;
LABEL_16:
  v6 = 0;
  v19 = &unk_1ED415FE8;
  v20 = 0;
  v21 = 0;
  v8 = a2;
  while (1)
  {
    os_unfair_lock_lock(&unk_1ED415FE8);
    if (v6)
    {
      if (*v6 == 1)
      {
        v9 = v6[2];
        v6[2] = 0;
        if (v9)
        {
          MEMORY[0x1865C92E0](v9, 0x80C4018A671A6);
        }

        v6;
      }

      else
      {
        --*v6;
      }
    }

    v10 = *a1;
    v11 = *a1 & 7;
    if ((v11 - 1) >= 3)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      if (v11 != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    }

    if (v8 > 62)
    {
      if (v8 == 63)
      {
        if (v11 > 1)
        {
          goto LABEL_47;
        }

        goto LABEL_33;
      }

      if (v8 != 255)
      {
        goto LABEL_53;
      }

LABEL_47:
      os_unfair_lock_unlock(&unk_1ED415FE8);
      goto LABEL_48;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_53;
      }

      if (v11 >= 3)
      {
        goto LABEL_47;
      }
    }

LABEL_33:
    if ((v10 & 8) == 0)
    {
      break;
    }

    if (v5)
    {
      goto LABEL_47;
    }

LABEL_18:
    v6 = (v10 & 0xFFFFFFFFFFFFFFF0);
    ++*(v10 & 0xFFFFFFFFFFFFFFF0);
    os_unfair_lock_unlock(&unk_1ED415FE8);
    os_unfair_lock_lock((v10 & 0xFFFFFFFFFFFFFFF0 | 8));
    os_unfair_lock_unlock((v10 & 0xFFFFFFFFFFFFFFF0 | 8));
  }

  v12 = swift_slowAlloc(0x30, 0xFuLL);
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *v12 = 1;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  os_unfair_lock_lock((v12 + 8));
  v20 = v12;
  v13 = (v10 & 0xFFFFFFFFFFFFFFF0);
  if ((v10 & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    *(v12 + 24) = *v13;
    v14 = *((v10 & 0xFFFFFFFFFFFFFFF0) + 0x10);
    *((v10 & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0;
    v15 = *(v12 + 16);
    *(v12 + 16) = v14;
    if (v15)
    {
      MEMORY[0x1865C92E0](v15, 0x80C4018A671A6);
    }
  }

  atomic_store(v10 & 7 | v12 | 8, a1);
  LOBYTE(v21) = 1;
  os_unfair_lock_unlock(&unk_1ED415FE8);
  HIBYTE(v21) = v11;
  if (v13)
  {
    v16 = *((v10 & 0xFFFFFFFFFFFFFFF0) + 0x10);
    *((v10 & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0;
    if (v16)
    {
      MEMORY[0x1865C92E0](v16, 0x80C4018A671A6);
    }

    MEMORY[0x1865C92E0](v10 & 0xFFFFFFFFFFFFFFF0, 0x1060C4048D9C6C4);
  }

LABEL_48:
  v17 = v20;
  if (v20)
  {
    os_unfair_lock_unlock(v20 + 2);
    v18 = *&v17[4]._os_unfair_lock_opaque;
    *&v17[4]._os_unfair_lock_opaque = 0;
    if (v18)
    {
      MEMORY[0x1865C92E0](v18, 0x80C4018A671A6);
    }

    v17;
  }
}

void swift::MetadataCacheEntryBase<anonymous namespace::TupleCacheEntry,swift::TargetTupleTypeMetadata<swift::InProcess>::Element>::doInitialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v78 = (a1 + 104);
  v6 = (a1 + 136);
  v75 = (a1 + 24);
  v76 = (a1 + 16);
  v73 = (a1 + 40);
  v74 = (a1 + 32);
  v71 = (a1 + 56);
  v72 = (a1 + 48);
  v69 = (a1 + 72);
  v70 = (a1 + 64);
  v7 = a3;
  v68 = *(a2 + 8);
  v77 = v68;
  v79 = a3;
  while (1)
  {
    v9 = *(a2 + 17);
    if (v9 == 3)
    {
      goto LABEL_7;
    }

    v80 = *(a2 + 17);
    v14 = v3;
    v15 = *(a1 + 120);
    if (!v15)
    {
      break;
    }

    v11 = 0;
    v16 = 0;
    v17 = 1;
    while (1)
    {
      v18 = v6[2 * v16];
      v81 = 319;
      performOnMetadataCache<swift::MetadataResponse,swift_checkMetadataState::CheckStateCallbacks>(v18, &v81);
      if (v19)
      {
        break;
      }

LABEL_14:
      if (v15 == ++v16)
      {
        goto LABEL_22;
      }
    }

    if (v19 <= 0x3F)
    {
      v17 = 0;
      if (!v11)
      {
        if (v19 == 1)
        {
          v11 = 0;
        }

        else
        {
          v11 = v18;
        }
      }

      goto LABEL_14;
    }

    v13 = 1;
    v11 = v18;
    v3 = v14;
    v8 = 63;
    v7 = v79;
    v9 = v80;
    *(a2 + 17) = 1;
    if (!v18)
    {
      goto LABEL_133;
    }

LABEL_114:
    if ((v13 - 1) > 2u)
    {
      goto LABEL_133;
    }

    if (v7 > 62)
    {
      if (v7 == 63)
      {
        if (v13 > 1u)
        {
          goto LABEL_135;
        }

        goto LABEL_122;
      }

      if (v7 == 255)
      {
LABEL_137:
        *(v68 + 16) = 0;
        goto LABEL_138;
      }

LABEL_145:
      __break(1u);
      return;
    }

    if (!v7)
    {
      goto LABEL_122;
    }

    if (v7 != 1)
    {
      goto LABEL_145;
    }

    if (v13 > 2u)
    {
LABEL_135:
      v68 = v77;
      goto LABEL_137;
    }

LABEL_122:
    if ((v3 & 0x100) != 0)
    {
      goto LABEL_135;
    }

    if (v9 < v13)
    {
      v56 = *a2;
      os_unfair_lock_lock(*a2);
      v57 = *(a2 + 8);
      if (*v57 == 1)
      {
        v58 = *(a2 + 8);
      }

      else
      {
        v58 = swift_slowAlloc(0x30, 0xFuLL);
        *v58 = 0u;
        *(v58 + 16) = 0u;
        *(v58 + 32) = 0u;
        *v58 = 1;
        *(v58 + 16) = 0;
        *(v58 + 24) = 0;
        os_unfair_lock_lock((v58 + 8));
        v59 = v57[2];
        v57[2] = 0;
        v60 = *(v58 + 16);
        *(v58 + 16) = v59;
        if (v60)
        {
          MEMORY[0x1865C92E0](v60, 0x80C4018A671A6);
        }
      }

      *(v58 + 24) = v11;
      *(v58 + 32) = v8;
      atomic_store(*(a2 + 17) | v58 | 8, a1);
      if (v58 != v57)
      {
        v61 = v8;
        os_unfair_lock_unlock((*(a2 + 8) + 8));
        v62 = *(a2 + 8);
        if (*v62 == 1)
        {
          v63 = v62[2];
          v62[2] = 0;
          if (v63)
          {
            MEMORY[0x1865C92E0](v63, 0x80C4018A671A6);
          }

          v62;
        }

        else
        {
          --*v62;
        }

        *(a2 + 8) = v58;
        v8 = v61;
        v7 = v79;
      }

      os_unfair_lock_unlock(v56);
      v77 = *(a2 + 8);
    }

    swift::blockOnMetadataDependency(a1 + 112, v3, v11, v8);
  }

  v11 = 0;
  v17 = 1;
LABEL_22:
  if (*v78)
  {
    v3 = v14;
    v20 = *v78;
  }

  else
  {
    v20 = 0;
    v3 = v14;
  }

  v81 = v20;
  *(a1 + 104) = v76;
  v21 = *(a1 + 120);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
    LOBYTE(v26) = 1;
    LOBYTE(v27) = 1;
    LOBYTE(v28) = 1;
    do
    {
      v29 = &v6[2 * v22];
      v30 = *(*v29 - 8);
      v31 = *(v30 + 80);
      v32 = (v23 + v31) & ~v31;
      v29[1] = v32;
      v23 = v32 + *(v30 + 64);
      if (v24 <= v31)
      {
        v24 = v31;
      }

      v26 = ((v31 & 0x10000) == 0) & v26;
      v27 = ((v31 & 0x100000) == 0) & v27;
      v28 = ((v31 & 0x1100000) == 0) & v28;
      v22 = v25++;
    }

    while (v21 != v22);
    if (v24 >= 8 || v23 >= 0x19)
    {
      v34 = 0;
    }

    else
    {
      v34 = v27;
    }

    v35 = v24;
    if (v26)
    {
      v36 = 0;
    }

    else
    {
      v36 = 0x10000;
    }

    if (v27)
    {
      v37 = 0;
    }

    else
    {
      v37 = 0x100000;
    }

    if (!v28)
    {
      v38 = 0x1000000;
      goto LABEL_48;
    }
  }

  else
  {
    v37 = 0;
    v35 = 0;
    v23 = 0;
    v24 = 0;
    v36 = 0;
    v34 = 1;
  }

  v38 = 0;
LABEL_48:
  if (v34)
  {
    v39 = 0;
  }

  else
  {
    v39 = 0x20000;
  }

  v40 = v37 | v38 | v35 | v39;
  v41 = (v24 + v23) & ~v24;
  *(a1 + 96) = v40 | v36;
  if (v41 <= 1)
  {
    v41 = 1;
  }

  *(a1 + 80) = v23;
  *(a1 + 88) = v41;
  if (!v21)
  {
    *(a1 + 100) = 0;
    goto LABEL_62;
  }

  v42 = 0;
  v43 = 0;
  v44 = -1;
  v45 = v6;
  do
  {
    v46 = *v45;
    v45 += 2;
    v47 = *(*(v46 - 8) + 84);
    if (v47 > v43)
    {
      v44 = v42;
      v43 = v47;
    }

    ++v42;
  }

  while (v21 != v42);
  *(a1 + 100) = v43;
  if (!v43)
  {
LABEL_62:
    v48 = 1;
    if (!v20)
    {
      goto LABEL_64;
    }

    goto LABEL_105;
  }

  v48 = 0;
  *(a1 + 8) = v44;
  if (v20)
  {
    goto LABEL_105;
  }

LABEL_64:
  if (!v34)
  {
    if ((v36 & 0x10000) != 0)
    {
      if (!tuple_witnesses_nonpod_noninline)
      {
        goto LABEL_103;
      }

      v50 = tuple_witnesses_nonpod_noninline;
    }

    else
    {
      if (!tuple_witnesses_pod_noninline)
      {
        goto LABEL_103;
      }

      v50 = tuple_witnesses_pod_noninline;
    }

    goto LABEL_102;
  }

  if ((v36 & 0x10000) != 0)
  {
    if (!tuple_witnesses_nonpod_inline)
    {
      goto LABEL_103;
    }

    v50 = tuple_witnesses_nonpod_inline;
    goto LABEL_102;
  }

  if (v23 == 8)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  if (v49 != 1)
  {
    if (v23 == 4)
    {
      v51 = v48;
    }

    else
    {
      v51 = 0;
    }

    if (v51 == 1)
    {
      if (v40 != 3)
      {
        goto LABEL_100;
      }

      if (!&value witness table for Builtin.Int32)
      {
        goto LABEL_103;
      }

      v50 = &value witness table for Builtin.Int32;
    }

    else
    {
      if (v23 == 2)
      {
        v52 = v48;
      }

      else
      {
        v52 = 0;
      }

      if (v52 == 1)
      {
        if (v35 != 1)
        {
          goto LABEL_100;
        }

        if (!&value witness table for Builtin.Int16)
        {
          goto LABEL_103;
        }

        v50 = &value witness table for Builtin.Int16;
      }

      else
      {
        if (v23 == 1)
        {
          v53 = v48;
        }

        else
        {
          v53 = 0;
        }

        if (v53 != 1)
        {
          goto LABEL_100;
        }

        if (!&value witness table for Builtin.Int8)
        {
          goto LABEL_103;
        }

        v50 = &value witness table for Builtin.Int8;
      }
    }

LABEL_102:
    v20 = v50;
    goto LABEL_104;
  }

  if (v40 != 7)
  {
LABEL_100:
    if (!tuple_witnesses_pod_inline)
    {
      goto LABEL_103;
    }

    v50 = tuple_witnesses_pod_inline;
    goto LABEL_102;
  }

  if (&value witness table for Builtin.Int64)
  {
    v50 = &value witness table for Builtin.Int64;
    goto LABEL_102;
  }

LABEL_103:
  v20 = 0;
LABEL_104:
  v81 = v20;
LABEL_105:
  if (*v20)
  {
    v54 = *v20;
  }

  else
  {
    v54 = 0;
  }

  *v76 = v54;
  *v75 = v20[1];
  *v74 = v20[2];
  *v73 = v20[3];
  *v72 = v20[4];
  v9 = v80;
  *v71 = v20[5];
  v7 = v79;
  *v70 = v20[6];
  v55 = v20[7];
  if (v55)
  {
    *v69 = v55;
    if (v17)
    {
LABEL_110:
      v11 = 0;
      v13 = 4;
      *(a2 + 17) = 4;
      goto LABEL_133;
    }
  }

  else
  {
    *v69 = 0;
    if (v17)
    {
      goto LABEL_110;
    }
  }

  if (v11)
  {
    v13 = 3;
    v8 = 1;
    *(a2 + 17) = 3;
    goto LABEL_114;
  }

LABEL_7:
  v10 = swift::checkTransitiveCompleteness((a1 + 112));
  v11 = v10;
  v8 = v12;
  if (v10)
  {
    v13 = 3;
  }

  else
  {
    v13 = 4;
  }

  *(a2 + 17) = v13;
  if (v10)
  {
    goto LABEL_114;
  }

LABEL_133:
  v64 = *(v77 + 16);
  *(v77 + 16) = 0;
  if (v11 | v64)
  {
LABEL_138:
    operator new();
  }

  v65 = *a2;
  os_unfair_lock_lock(*a2);
  atomic_store(v13, a1);
  os_unfair_lock_unlock((*(a2 + 8) + 8));
  v66 = *(a2 + 8);
  if (*v66 == 1)
  {
    v67 = v66[2];
    v66[2] = 0;
    if (v67)
    {
      MEMORY[0x1865C92E0](v67, 0x80C4018A671A6);
    }

    v66;
  }

  else
  {
    --*v66;
  }

  os_unfair_lock_unlock(v65);
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
}

uint64_t tuple_getEnumTagSinglePayload<true,true>(char *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  v5 = *(*(a3 - 8) + 84);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 == 0 || !v6)
  {
    goto LABEL_13;
  }

  if (v4 > 3)
  {
    goto LABEL_4;
  }

  v10 = ((v7 + ~(-1 << (8 * v4))) >> (8 * v4)) + 1;
  if (v10 < 2)
  {
    goto LABEL_13;
  }

  if (v10 < 0x100)
  {
LABEL_4:
    v8 = a1[v4];
  }

  else if (v10 >= 0x10000)
  {
    v8 = *&a1[v4];
  }

  else
  {
    v8 = *&a1[v4];
  }

  if (v8)
  {
    v9 = (v8 - 1) << (8 * v4);
    if (v4 > 3)
    {
      v9 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v13 = *a1;
        return v5 + (v13 | v9) + 1;
      }

      if (v4 == 3)
      {
        v13 = *a1 | (a1[2] << 16);
        return v5 + (v13 | v9) + 1;
      }

      goto LABEL_22;
    }

    v13 = 0;
    if (v4)
    {
      if (v4 != 1)
      {
LABEL_22:
        v13 = *a1;
        return v5 + (v13 | v9) + 1;
      }

      v13 = *a1;
    }

    return v5 + (v13 | v9) + 1;
  }

LABEL_13:
  if (!v5)
  {
    return 0;
  }

  v11 = a3 + 16 * *(a3 - 104);
  return (*(*(*(v11 + 24) - 8) + 48))(&a1[*(v11 + 32)]);
}

uint64_t tuple_initializeBufferWithCopyOfBuffer<false,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = a3 + 24;
    do
    {
      (*(*(*(v7 + 16 * v6) - 8) + 16))(a1 + *(v7 + 16 * v6 + 8), a2 + *(v7 + 16 * v6 + 8));
      ++v6;
    }

    while (v4 != v6);
  }

  return a1;
}

uint64_t tuple_destroy<false,true>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = result;
    v4 = (a2 + 32);
    do
    {
      result = (*(*(*(v4 - 1) - 8) + 8))(v3 + *v4);
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t tuple_initializeWithCopy<false,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = a3 + 24;
    do
    {
      (*(*(*(v7 + 16 * v6) - 8) + 16))(a1 + *(v7 + 16 * v6 + 8), a2 + *(v7 + 16 * v6 + 8));
      ++v6;
    }

    while (v4 != v6);
  }

  return a1;
}

uint64_t tuple_assignWithCopy<false,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = a3 + 24;
    do
    {
      (*(*(*(v7 + 16 * v6) - 8) + 24))(a1 + *(v7 + 16 * v6 + 8), a2 + *(v7 + 16 * v6 + 8));
      ++v6;
    }

    while (v4 != v6);
  }

  return a1;
}

uint64_t tuple_initializeWithTake<false,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = a3 + 24;
    do
    {
      (*(*(*(v7 + 16 * v6) - 8) + 32))(a1 + *(v7 + 16 * v6 + 8), a2 + *(v7 + 16 * v6 + 8));
      ++v6;
    }

    while (v4 != v6);
  }

  return a1;
}

uint64_t tuple_assignWithTake<false,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = a3 + 24;
    do
    {
      (*(*(*(v7 + 16 * v6) - 8) + 40))(a1 + *(v7 + 16 * v6 + 8), a2 + *(v7 + 16 * v6 + 8));
      ++v6;
    }

    while (v4 != v6);
  }

  return a1;
}

uint64_t tuple_getEnumTagSinglePayload<false,true>(char *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  v5 = *(*(a3 - 8) + 84);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 == 0 || !v6)
  {
    goto LABEL_13;
  }

  if (v4 > 3)
  {
    goto LABEL_4;
  }

  v10 = ((v7 + ~(-1 << (8 * v4))) >> (8 * v4)) + 1;
  if (v10 < 2)
  {
    goto LABEL_13;
  }

  if (v10 < 0x100)
  {
LABEL_4:
    v8 = a1[v4];
  }

  else if (v10 >= 0x10000)
  {
    v8 = *&a1[v4];
  }

  else
  {
    v8 = *&a1[v4];
  }

  if (v8)
  {
    v9 = (v8 - 1) << (8 * v4);
    if (v4 > 3)
    {
      v9 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v13 = *a1;
        return v5 + (v13 | v9) + 1;
      }

      if (v4 == 3)
      {
        v13 = *a1 | (a1[2] << 16);
        return v5 + (v13 | v9) + 1;
      }

      goto LABEL_22;
    }

    v13 = 0;
    if (v4)
    {
      if (v4 != 1)
      {
LABEL_22:
        v13 = *a1;
        return v5 + (v13 | v9) + 1;
      }

      v13 = *a1;
    }

    return v5 + (v13 | v9) + 1;
  }

LABEL_13:
  if (!v5)
  {
    return 0;
  }

  v11 = a3 + 16 * *(a3 - 104);
  return (*(*(*(v11 + 24) - 8) + 48))(&a1[*(v11 + 32)]);
}

unint64_t tuple_initializeBufferWithCopyOfBuffer<true,false>(atomic_ullong **a1, atomic_ullong **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  v5;
  return *a1 + ((*(*(a3 - 8) + 80) + 16) & ~*(*(a3 - 8) + 80));
}

uint64_t tuple_getEnumTagSinglePayload<true,false>(char *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  v5 = *(*(a3 - 8) + 84);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 == 0 || !v6)
  {
    goto LABEL_13;
  }

  if (v4 > 3)
  {
    goto LABEL_4;
  }

  v10 = ((v7 + ~(-1 << (8 * v4))) >> (8 * v4)) + 1;
  if (v10 < 2)
  {
    goto LABEL_13;
  }

  if (v10 < 0x100)
  {
LABEL_4:
    v8 = a1[v4];
  }

  else if (v10 >= 0x10000)
  {
    v8 = *&a1[v4];
  }

  else
  {
    v8 = *&a1[v4];
  }

  if (v8)
  {
    v9 = (v8 - 1) << (8 * v4);
    if (v4 > 3)
    {
      v9 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v13 = *a1;
        return v5 + (v13 | v9) + 1;
      }

      if (v4 == 3)
      {
        v13 = *a1 | (a1[2] << 16);
        return v5 + (v13 | v9) + 1;
      }

      goto LABEL_22;
    }

    v13 = 0;
    if (v4)
    {
      if (v4 != 1)
      {
LABEL_22:
        v13 = *a1;
        return v5 + (v13 | v9) + 1;
      }

      v13 = *a1;
    }

    return v5 + (v13 | v9) + 1;
  }

LABEL_13:
  if (!v5)
  {
    return 0;
  }

  v11 = a3 + 16 * *(a3 - 104);
  return (*(*(*(v11 + 24) - 8) + 48))(&a1[*(v11 + 32)]);
}
uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC20ModelManagerServices0C9ProvidingAadEP15transitionAsset_2toyAD0cgM10DescriptorV_AD9LoadStateOtYaAD0C5ErrorOYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for InferenceError();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC20ModelManagerServices0C9ProvidingAadEP15transitionAsset_2toyAD0cgM10DescriptorV_AD9LoadStateOtYaAD0C5ErrorOYKFTWTQ0_;

  return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKF(a1, a2, v7);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = v3;
  v4[7] = a3;
  v4[4] = a1;
  v4[5] = a2;
  State = type metadata accessor for LoadState();
  v4[8] = State;
  v4[9] = *(State - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for InferenceError();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY0_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY0_()
{
  v37 = v0;
  v1 = InferenceProviderAssetDescriptor.identifier.getter();
  v3 = v2;
  v0[20] = v2;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];
  v8 = type metadata accessor for Logger();
  v0[21] = __swift_project_value_buffer(v8, static Log.device);
  v33 = *(v5 + 16);
  v33(v4, v7, v6);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[11];
  v14 = v0[8];
  v13 = v0[9];
  v34 = v1;
  v35 = v3;
  if (v11)
  {
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v15 = 136446466;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v36);
    *(v15 + 12) = 2082;
    v16 = MEMORY[0x223D8DB50]();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v36);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_220940000, v9, v10, "transitionAsset called for identifier: %{public}s moving to state %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v32, -1, -1);
    MEMORY[0x223D90A10](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v21 = v0[9];
  v20 = v0[10];
  v22 = v0[8];
  v33(v20, v0[5], v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 == *MEMORY[0x277D29F18])
  {
    v24 = swift_task_alloc();
    v0[25] = v24;
    *v24 = v0;
    v24[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTQ6_;
    v25 = v0[16];

    return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKF(v34, v35, v25);
  }

  else if (v23 == *MEMORY[0x277D29F08])
  {
    __swift_project_boxed_opaque_existential_1((v0[6] + 136), *(v0[6] + 160));
    v27 = swift_task_alloc();
    v0[23] = v27;
    *v27 = v0;
    v27[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTQ3_;
    v28 = v0[17];

    return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04moveF14ToDynamicState10identifierySS_tYa20ModelManagerServices0C5ErrorOYKF(v34, v35, v28);
  }

  else if (v23 == *MEMORY[0x277D29F10])
  {

    v29 = swift_task_alloc();
    v0[22] = v29;
    *v29 = v0;
    v29[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTQ1_;
    v30 = v0[18];
    v31 = v0[4];

    return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKF(v31, v30);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 24 * v7 + 32), (v6 + 32), 24 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = specialized Sequence._copySequenceContents(initializing:)(v38, &v3[8 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v11 + 64) >> 6;
      if (v19 <= v16 + 1)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = (v11 + 64) >> 6;
      }

      v21 = v20 - 1;
      do
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v22 >= v19)
        {
          v40 = v21;
          v41 = 0;
          goto LABEL_13;
        }

        v23 = *(v12 + 8 * v22);
        ++v16;
      }

      while (!v23);
      v17 = (v23 - 1) & v23;
      v18 = __clz(__rbit64(v23)) | (v22 << 6);
      v16 = v22;
      goto LABEL_27;
    }

    *(v3 + 2) = v16;
  }

  result = v38[0];
  if (v13 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v12 = v38[1];
  v11 = v39;
  v16 = v40;
  if (!v41)
  {
    goto LABEL_19;
  }

  v17 = (v41 - 1) & v41;
  v18 = __clz(__rbit64(v41)) | (v40 << 6);
  v19 = (v39 + 64) >> 6;
LABEL_27:
  v24 = *(*(result + 48) + 8 * v18);
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v26)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v35 = v16;
  v36 = v19;
  v37 = result;
  v30 = v12;
  v31 = v3;
  v32 = v17;
  v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v6 + 1, 1, v31);
  v17 = v32;
  v16 = v35;
  v19 = v36;
  v12 = v30;
  v3 = v33;
  result = v37;
  v26 = *(v3 + 3) >> 1;
  if (v6 >= v26)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v24;
    if (!v17)
    {
      break;
    }

LABEL_34:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(*(result + 48) + ((v16 << 9) | (8 * v27)));
    if (v6 == v26)
    {
      v6 = v26;
      goto LABEL_30;
    }
  }

  v28 = v16;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v19)
    {
      break;
    }

    v17 = *(v12 + 8 * v29);
    ++v28;
    if (v17)
    {
      v16 = v29;
      goto LABEL_34;
    }
  }

  if (v19 <= v16 + 1)
  {
    v34 = v16 + 1;
  }

  else
  {
    v34 = v19;
  }

  v39 = v11;
  v40 = v34 - 1;
  v41 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
  *v1 = v3;
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *result;
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v4 + 3) >> 1, v8 < v6))
  {
    if (v5 <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9, 1, v4);
    v8 = *(v4 + 3) >> 1;
  }

  v10 = *(v4 + 2);
  v11 = v8 - v10;
  result = specialized Sequence._copySequenceContents(initializing:)(&v26, &v4[32 * v10 + 32], v8 - v10);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result >= 1)
  {
    v12 = *(v4 + 2);
    v13 = __OFADD__(v12, result);
    v14 = v12 + result;
    if (v13)
    {
      __break(1u);
LABEL_34:
      *(v4 + 2) = v3;
      goto LABEL_35;
    }

    *(v4 + 2) = v14;
  }

  if (result != v11)
  {
LABEL_13:

    *v2 = v4;
    return result;
  }

LABEL_16:
  if (v31 == v26)
  {
    goto LABEL_35;
  }

  if ((v31 & 0x8000000000000000) == 0 && v31 < v26)
  {
    v3 = *(v4 + 2);
    v16 = v29;
    v15 = v30;
    v17 = v28;
    v18 = v27;
    v24 = v26;
    v25 = ++v31;

    if (v15)
    {
      while (1)
      {
        v19 = *(v4 + 3);
        v20 = v19 >> 1;
        if ((v19 >> 1) < v3 + 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v3 + 1, 1, v4);
          v4 = result;
          v20 = *(result + 24) >> 1;
        }

        if (v3 < v20)
        {
          break;
        }

        v22 = v25;
LABEL_31:
        *(v4 + 2) = v3;
        v25 = v22;
        if (!v15)
        {
          goto LABEL_35;
        }
      }

      v21 = 32 * v3;
      v22 = v25;
      while (1)
      {
        v23 = &v4[v21];
        *(v23 + 8) = v18;
        *(v23 + 5) = v17;
        *(v23 + 6) = v16;
        *(v23 + 7) = v15;
        ++v3;
        if (v24 == v22)
        {
          goto LABEL_34;
        }

        if (v25 < 0 || v22 >= v24)
        {
          __break(1u);
          goto LABEL_37;
        }

        v16 = v29;
        v15 = v30;
        v17 = v28;
        ++v22;
        v18 = v27;
        v31 = v22;

        if (v15)
        {
          v21 += 32;
          if (v3 < v20)
          {
            continue;
          }
        }

        goto LABEL_31;
      }
    }

LABEL_35:

    goto LABEL_13;
  }

LABEL_37:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[29] = v2;
  v3[30] = a2;
  v3[28] = a1;
  v4 = type metadata accessor for InferenceError();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v5 = type metadata accessor for InferenceProviderAssetDescriptor();
  v3[40] = v5;
  v3[41] = *(v5 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY0_, 0, 0);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKF(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 960) = a3;
  *(v4 + 952) = v3;
  *(v4 + 1232) = a2;
  *(v4 + 944) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *(v4 + 968) = swift_task_alloc();
  type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  *(v4 + 976) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices24CustomAssetConfigurationVSgMd);
  *(v4 + 984) = swift_task_alloc();
  *(v4 + 992) = swift_task_alloc();
  v5 = type metadata accessor for CustomAssetConfiguration();
  *(v4 + 1000) = v5;
  *(v4 + 1008) = *(v5 - 8);
  *(v4 + 1016) = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderAssetDescriptor();
  *(v4 + 1024) = v6;
  *(v4 + 1032) = *(v6 - 8);
  *(v4 + 1040) = swift_task_alloc();
  *(v4 + 1048) = type metadata accessor for Asset();
  *(v4 + 1056) = swift_task_alloc();
  *(v4 + 1064) = swift_task_alloc();
  *(v4 + 1072) = swift_task_alloc();
  v7 = type metadata accessor for InferenceError.Context();
  *(v4 + 1080) = v7;
  *(v4 + 1088) = *(v7 - 8);
  *(v4 + 1096) = swift_task_alloc();
  v8 = type metadata accessor for InferenceError();
  *(v4 + 1104) = v8;
  *(v4 + 1112) = *(v8 - 8);
  *(v4 + 1120) = swift_task_alloc();
  *(v4 + 1128) = swift_task_alloc();
  *(v4 + 1136) = swift_task_alloc();
  *(v4 + 1144) = swift_task_alloc();
  *(v4 + 1152) = swift_task_alloc();
  *(v4 + 1160) = swift_task_alloc();
  *(v4 + 1168) = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY0_, v3, 0);
}

uint64_t type metadata accessor for Asset()
{
  result = type metadata singleton initialization cache for Asset;
  if (!type metadata singleton initialization cache for Asset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTY0_()
{
  v144 = v0;
  v1 = v0;
  v2 = InferenceProviderAssetDescriptor.identifier.getter();
  v4 = v3;
  v5 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  v7 = v6;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.device);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v142 = v12;
    *v11 = 136446210;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, &v142);
    _os_log_impl(&dword_220940000, v9, v10, "Loading asset with identifier %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v13 = v12;
    v1 = v0;
    MEMORY[0x223D90A10](v13, -1, -1);
    MEMORY[0x223D90A10](v11, -1, -1);
  }

  v14 = *(v1 + 952);
  swift_beginAccess();
  v15 = *(v14 + 152);
  if (*(v15 + 16))
  {

    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v4);
    if (v17)
    {
      v18 = v16;
      v19 = *(v1 + 1168);

      outlined init with copy of DeterministicLanguageModelProtocol(*(v15 + 56) + 40 * v18, v1 + 536);

      outlined init with take of RandomNumberGenerator((v1 + 536), v1 + 16);
      _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04moveF24FromDynamicToLoadedStateyyAA0decF6Object_p20ModelManagerServices0C5ErrorOYKF((v1 + 16), v19);
      __swift_destroy_boxed_opaque_existential_1(v1 + 16);
LABEL_22:

      v53 = *(v1 + 8);
LABEL_30:

      return v53();
    }
  }

  v20 = *(v1 + 952);
  swift_beginAccess();
  v21 = *(v20 + 128);
  if (*(v21 + 16))
  {

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v4);
    if (v23)
    {
      v24 = v22;

      outlined init with copy of DeterministicLanguageModelProtocol(*(v21 + 56) + 40 * v24, v1 + 96);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v142 = v28;
        *v27 = 136446210;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, &v142);
        _os_log_impl(&dword_220940000, v25, v26, "Asset is already loaded %{public}s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x223D90A10](v28, -1, -1);
        MEMORY[0x223D90A10](v27, -1, -1);
      }

      v29 = *(v1 + 1112);
      v30 = *(v1 + 1104);
      v31 = *(v1 + 1096);
      v32 = *(v1 + 1088);
      v33 = *(v1 + 1080);
      v34 = *(v1 + 960);
      v142 = 0x207465737341;
      v143 = 0xE600000000000000;
      MEMORY[0x223D8E780](v2, v4);

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      (*(v32 + 16))(v34, v31, v33);
      (*(v29 + 104))(v34, *MEMORY[0x277D29D88], v30);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
      swift_willThrowTypedImpl();
      (*(v32 + 8))(v31, v33);
      v35 = v1 + 96;
      goto LABEL_29;
    }
  }

  v36 = *(v1 + 952);
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0;
  swift_beginAccess();
  v37 = *(v36 + 144);
  if (*(v37 + 16))
  {

    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v4);
    if (v39)
    {
      v40 = v38;

      outlined init with copy of DeterministicLanguageModelProtocol(*(v37 + 56) + 40 * v40, v1 + 136);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v142 = v44;
        *v43 = 136446210;
        *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, &v142);
        _os_log_impl(&dword_220940000, v41, v42, "Asset is currently in use %{public}s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x223D90A10](v44, -1, -1);
        MEMORY[0x223D90A10](v43, -1, -1);
      }

      v45 = *(v1 + 1112);
      v46 = *(v1 + 1104);
      v47 = *(v1 + 1096);
      v48 = *(v1 + 1088);
      v49 = *(v1 + 1080);
      v50 = *(v1 + 960);
      v142 = 0x207465737341;
      v143 = 0xE600000000000000;
      MEMORY[0x223D8E780](v2, v4);

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      (*(v48 + 16))(v50, v47, v49);
      (*(v45 + 104))(v50, *MEMORY[0x277D29D88], v46);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
      swift_willThrowTypedImpl();
      (*(v48 + 8))(v47, v49);
      goto LABEL_28;
    }
  }

  v51 = *(v1 + 952);
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0;
  __swift_project_boxed_opaque_existential_1((v51 + 192), *(v51 + 216));
  OnDeviceInferenceProviderDataSource.catalogResource(for:)(v1 + 216);
  v52 = *(v1 + 1064);
  outlined init with take of RandomNumberGenerator((v1 + 216), v1 + 176);
  __swift_project_boxed_opaque_existential_1((v51 + 192), *(v51 + 216));
  OnDeviceInferenceProviderDataSource.asset(for:)(v5, v7, v52);
  v54 = *(v1 + 1072);
  v55 = *(v1 + 1064);
  v56 = *(v1 + 1232);

  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v55, v54, type metadata accessor for Asset);
  if ((v56 & 1) == 0)
  {
    goto LABEL_35;
  }

  v57 = *(v1 + 1048);
  v58 = (*(v1 + 1072) + *(v57 + 20));
  v60 = *v58;
  v59 = v58[1];

  v61 = InferenceProviderAssetDescriptor.version.getter();
  if (!v62)
  {

    goto LABEL_41;
  }

  if (v60 == v61 && v62 == v59)
  {

    goto LABEL_35;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v64 & 1) == 0)
  {
LABEL_41:
    v70 = *(v1 + 1072);
    v71 = *(v1 + 1056);
    v72 = *(v1 + 1040);
    v73 = *(v1 + 1032);
    v74 = *(v1 + 1024);
    v75 = *(v1 + 944);

    (*(v73 + 16))(v72, v75, v74);
    outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v70, v71, type metadata accessor for Asset);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v1 + 1056);
    v80 = *(v1 + 1040);
    v81 = *(v1 + 1032);
    v82 = *(v1 + 1024);
    if (v78)
    {
      v83 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v142 = v140;
      *v83 = 136446466;
      *(v1 + 928) = InferenceProviderAssetDescriptor.version.getter();
      *(v1 + 936) = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v85 = String.init<A>(describing:)();
      v139 = v77;
      v86 = v1;
      v88 = v87;
      (*(v81 + 8))(v80, v82);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v88, &v142);
      v1 = v86;

      *(v83 + 4) = v89;
      *(v83 + 12) = 2082;
      v90 = (v79 + *(v57 + 20));
      v91 = *v90;
      v92 = v90[1];

      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v79, type metadata accessor for Asset);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, &v142);

      *(v83 + 14) = v93;
      _os_log_impl(&dword_220940000, v76, v139, "Asked to load asset version %{public}s but found asset version %{public}s in ModelCatalog", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v140, -1, -1);
      MEMORY[0x223D90A10](v83, -1, -1);
    }

    else
    {

      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v79, type metadata accessor for Asset);
      (*(v81 + 8))(v80, v82);
    }

    v103 = *(v1 + 1072);
    (*(*(v1 + 1112) + 104))(*(v1 + 960), *MEMORY[0x277D29DC8], *(v1 + 1104));
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();
    v104 = v103;
LABEL_50:
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v104, type metadata accessor for Asset);
    __swift_destroy_boxed_opaque_existential_1(v1 + 176);
LABEL_28:
    outlined destroy of [Int](v1 + 136, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
    v35 = v1 + 96;
LABEL_29:
    outlined destroy of [Int](v35, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);

    v53 = *(v1 + 8);
    goto LABEL_30;
  }

LABEL_35:
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 176, v1 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19AssetBackedLLMModel_pMd);
  if (swift_dynamicCast())
  {

    outlined init with take of RandomNumberGenerator((v1 + 336), v1 + 256);
    v65 = swift_task_alloc();
    *(v1 + 1176) = v65;
    *v65 = v1;
    v65[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ1_;
    v66 = *(v1 + 1160);
    v67 = *(v1 + 1072);

    return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKF(v1 + 256, v67, v66);
  }

  *(v1 + 368) = 0;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  outlined destroy of [Int](v1 + 336, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd);
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 176, v1 + 416);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedTokenizer_pMd);
  if (swift_dynamicCast())
  {
    v68 = *(v1 + 1152);
    v69 = *(v1 + 1072);

    outlined init with take of RandomNumberGenerator((v1 + 576), v1 + 376);
    _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC15handleTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL17tokenizerResource5assety12ModelCatalog0f6BackedI0_p_AA0F0Vt0V15ManagerServices0C5ErrorOYKF((v1 + 376), v69, v68);
    v122 = *(v1 + 1072);
    __swift_destroy_boxed_opaque_existential_1(v1 + 376);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v122, type metadata accessor for Asset);
    __swift_destroy_boxed_opaque_existential_1(v1 + 176);
    outlined destroy of [Int](v1 + 136, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
    outlined destroy of [Int](v1 + 96, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
    goto LABEL_22;
  }

  *(v1 + 608) = 0;
  *(v1 + 576) = 0u;
  *(v1 + 592) = 0u;
  outlined destroy of [Int](v1 + 576, &_s12ModelCatalog20AssetBackedTokenizer_pSgMd);
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 176, v1 + 656);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog21AssetBackedLLMAdapter_pMd);
  if (swift_dynamicCast())
  {
    v94 = *(v1 + 1008);
    v95 = *(v1 + 1000);
    v96 = *(v1 + 992);

    outlined init with take of RandomNumberGenerator((v1 + 696), v1 + 616);
    InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
    if ((*(v94 + 48))(v96, 1, v95) == 1)
    {
      outlined destroy of [Int](*(v1 + 992), &_s20ModelManagerServices24CustomAssetConfigurationVSgMd);
      __swift_project_boxed_opaque_existential_1((v1 + 616), *(v1 + 640));
      v97 = dispatch thunk of CatalogResource.id.getter();
      v99 = v98;
      *(v1 + 1192) = v98;
      v100 = swift_task_alloc();
      *(v1 + 1200) = v100;
      *v100 = v1;
      v100[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ5_;
      v101 = *(v1 + 1136);
      v102 = *(v1 + 1072);

      return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleLLMAdapter33_65818D6FA4B5F545C6B162D7CBE031AELL10llmAdapter10identifier5assety12ModelCatalog0f6BackedI0_p_SSAA0F0VtYa0W15ManagerServices0C5ErrorOYKF(v1 + 616, v97, v99, v102, v101);
    }

    else
    {
      (*(*(v1 + 1008) + 32))(*(v1 + 1016), *(v1 + 992), *(v1 + 1000));
      v123 = swift_task_alloc();
      *(v1 + 1184) = v123;
      *v123 = v1;
      v123[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ3_;
      v124 = *(v1 + 1144);
      v125 = *(v1 + 1016);

      return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC012handleCustomF033_65818D6FA4B5F545C6B162D7CBE031AELL13configuration8templatey20ModelManagerServices0iF13ConfigurationV_0U7Catalog0F16BackedLLMAdapter_ptYaAH0C5ErrorOYKF(v125, v1 + 616, v124);
    }
  }

  *(v1 + 728) = 0;
  *(v1 + 696) = 0u;
  *(v1 + 712) = 0u;
  outlined destroy of [Int](v1 + 696, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMd);
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 176, v1 + 776);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog019AssetBackedLLMDraftA0_pMd);
  if (swift_dynamicCast())
  {
    v105 = *(v1 + 1008);
    v106 = *(v1 + 1000);
    v107 = *(v1 + 984);

    outlined init with take of RandomNumberGenerator((v1 + 816), v1 + 736);
    InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
    v108 = (*(v105 + 48))(v107, 1, v106);
    outlined destroy of [Int](v107, &_s20ModelManagerServices24CustomAssetConfigurationVSgMd);
    if (v108 != 1)
    {
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_220940000, v109, v110, "Looks like the base model has a draft model. The .fmadapter loading code needs to be updated!", v111, 2u);
        MEMORY[0x223D90A10](v111, -1, -1);
      }
    }

    v112 = *(v1 + 968);
    __swift_project_boxed_opaque_existential_1((v1 + 736), *(v1 + 760));
    v113 = dispatch thunk of CatalogResource.id.getter();
    v115 = v114;
    *(v1 + 1208) = v114;
    v116 = type metadata accessor for URL();
    (*(*(v116 - 8) + 56))(v112, 1, 1, v116);
    v117 = swift_task_alloc();
    *(v1 + 1216) = v117;
    *v117 = v1;
    v117[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ7_;
    v118 = *(v1 + 1128);
    v119 = *(v1 + 1072);
    v120 = *(v1 + 976);
    v121 = *(v1 + 968);

    return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC16handleDraftModel33_65818D6FA4B5F545C6B162D7CBE031AELL05draftJ05asset10identifier21explicitBundleFileURLAA0decF14ObjectE5RunnerV0J7Catalog0f14BackedLLMDraftJ0_p_AA0F0VSS10Foundation0Z0VSgtYa0J15ManagerServices0C5ErrorOYKF(v120, v1 + 736, v119, v113, v115, v121, v118);
  }

  *(v1 + 848) = 0;
  *(v1 + 816) = 0u;
  *(v1 + 832) = 0u;
  outlined destroy of [Int](v1 + 816, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMd);
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 176, v1 + 496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog25AssetBackedImageTokenizer_pMd);
  if (!swift_dynamicCast())
  {
    *(v1 + 488) = 0;
    *(v1 + 456) = 0u;
    *(v1 + 472) = 0u;
    outlined destroy of [Int](v1 + 456, &_s12ModelCatalog25AssetBackedImageTokenizer_pSgMd);

    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v142 = v132;
      *v131 = 136446210;
      *(v131 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, &v142);
      _os_log_impl(&dword_220940000, v129, v130, "Failed to load unhandled asset %{public}s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x223D90A10](v132, -1, -1);
      MEMORY[0x223D90A10](v131, -1, -1);
    }

    v133 = *(v1 + 1112);
    v134 = *(v1 + 1104);
    v135 = *(v1 + 1096);
    v136 = *(v1 + 1088);
    v137 = *(v1 + 1080);
    v141 = *(v1 + 1072);
    v142 = 0;
    v138 = *(v1 + 960);
    v143 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v142 = 0xD000000000000010;
    v143 = 0x8000000220AFCE60;
    MEMORY[0x223D8E780](v2, v4);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    (*(v136 + 16))(v138, v135, v137);
    (*(v133 + 104))(v138, *MEMORY[0x277D29D78], v134);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();
    (*(v136 + 8))(v135, v137);
    v104 = v141;
    goto LABEL_50;
  }

  outlined init with take of RandomNumberGenerator((v1 + 456), v1 + 56);
  v126 = swift_task_alloc();
  *(v1 + 1224) = v126;
  *v126 = v1;
  v126[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKFTQ9_;
  v127 = *(v1 + 1120);
  v128 = *(v1 + 1072);

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC20handleImageTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL05imageJ05assety12ModelCatalog0f6BackediJ0_p_AA0F0VtYa0V15ManagerServices0C5ErrorOYKF(v1 + 56, v128, v127);
}

uint64_t outlined init with take of RandomNumberGenerator(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY0_()
{
  v62 = v0;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[28];
  v5 = type metadata accessor for Logger();
  v0[45] = __swift_project_value_buffer(v5, static Log.device);
  v6 = *(v3 + 16);
  v0[46] = v6;
  v0[47] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[44];
  v11 = v0[40];
  v12 = v0[41];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v61 = v14;
    *v13 = 136446210;
    v60 = InferenceProviderAssetDescriptor.identifier.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v16, &v61);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_220940000, v7, v8, "Handling load in for asset with identifier %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x223D90A10](v14, -1, -1);
    MEMORY[0x223D90A10](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[48] = v17;
  if (InferenceProviderAssetDescriptor.identifier.getter() == 0xD000000000000017 && 0x8000000220AFD6C0 == v19)
  {

LABEL_10:
    v21 = v0[29];
    __swift_project_boxed_opaque_existential_1((v21 + 16), *(v21 + 40));
    v22 = off_283451298[0];
    v0[49] = type metadata accessor for OnDeviceInferenceOverrides();
    v23 = v22();
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xD000000000000024;
    }

    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0x8000000220AFDCF0;
    }

    v0[27] = MEMORY[0x277D84FA0];
    v27 = objc_opt_self();
    v0[50] = v27;
    v28 = [v27 defaultManager];
    v29 = MEMORY[0x223D8E6B0](v25, v26);
    v30 = [v28 fileExistsAtPath_];

    if (v30)
    {
      __swift_project_boxed_opaque_existential_1((v21 + 16), *(v21 + 40));
      v31 = off_2834512A0();
      if (v32)
      {
        v33 = v31;
      }

      else
      {
        v33 = 1634889580;
      }

      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = 0xE400000000000000;
      }

      v35 = objc_allocWithZone(TGIE5AdapterConfigurationObjC);
      v36 = MEMORY[0x223D8E6B0](0, 0xE000000000000000);
      v37 = MEMORY[0x223D8E6B0](v33, v34);

      v38 = MEMORY[0x223D8E6B0](v25, v26);

      v39 = [v35 initWithAdapterType:v36 symbolName:v37 mutableWeightsFilePath:v38];

      specialized Set._Variant.insert(_:)(&v61, v39);
      v40 = 1;
    }

    else
    {

      v40 = 0;
    }

    v0[51] = v40;
    __swift_project_boxed_opaque_existential_1((v21 + 16), *(v21 + 40));
    v41 = off_283451290();
    if (v42)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0xD00000000000001DLL;
    }

    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0x8000000220AFD790;
    }

    if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo17TGIE5FunctionObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v45 = objc_allocWithZone(TGIE5ModelConfigurationObjC);
    v46 = MEMORY[0x223D8E6B0](v43, v44);

    v0[52] = type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC);
    v0[53] = lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5FunctionObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5FunctionObjC);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v0[54] = type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
    v0[55] = lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
    v48 = Set._bridgeToObjectiveC()().super.isa;

    v0[56] = [v45 initWithModelType:v40 modelBundlePath:v46 e5Functions:isa adapterConfigurations:v48];
    v49 = v0[29];

    outlined init with copy of DeterministicLanguageModelProtocol(v49 + 136, (v0 + 22));
    v50 = __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
    v0[57] = v50;
    __swift_project_boxed_opaque_existential_1((v21 + 16), *(v21 + 40));
    v51 = off_2834512A8();
    v0[58] = v52;
    v0[59] = v51;
    v53 = *v50;

    return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY1_, v53, 0);
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_10;
  }

  v54 = v0[29];
  __swift_project_boxed_opaque_existential_1((v54 + 136), *(v54 + 160));
  v55 = *(v54 + 224);
  v56 = swift_task_alloc();
  v0[66] = v56;
  *v56 = v0;
  v56[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTQ10_;
  v57 = v0[35];
  v58 = v0[28];

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04loadF015assetDescriptor20shouldDoVersionChecky20ModelManagerServices0c8ProviderfJ0V_SbtYaAG0C5ErrorOYKF(v58, v55, v57);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04moveF24FromDynamicToLoadedStateyyAA0decF6Object_p20ModelManagerServices0C5ErrorOYKF(void *a1, uint64_t a2)
{
  v95 = a2;
  v3 = v2;
  v5 = type metadata accessor for InferenceError.Context();
  v93 = *(v5 - 8);
  v94 = v5;
  MEMORY[0x28223BE20](v5);
  v92 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v89 - v8;
  v99 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v90 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC20AssetObjectBaseModelVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v104 = v89 - v12;
  v103 = type metadata accessor for OnDeviceInferenceAssetObjectBaseModel(0);
  v100 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v96 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v102 = v89 - v15;
  v16 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v101 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v98 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Log.device);
  outlined init with copy of DeterministicLanguageModelProtocol(a1, &v106);
  v91 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v89[1] = v3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v105[0] = v24;
    *v23 = 136446210;
    v89[0] = v9;
    v25 = a1;
    v26 = *(&v107 + 1);
    v27 = v108;
    __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
    v28 = *(v27 + 8);
    v29 = v27;
    a1 = v25;
    v30 = v28(v26, v29);
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_1(&v106);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v105);

    *(v23 + 4) = v33;
    v9 = v89[0];
    _os_log_impl(&dword_220940000, v20, v21, "Moving asset with identifier %{public}s to fully loaded state from dynamic state.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x223D90A10](v24, -1, -1);
    MEMORY[0x223D90A10](v23, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v106);
  }

  outlined init with copy of DeterministicLanguageModelProtocol(a1, &v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
  v34 = v102;
  v35 = v16;
  v36 = swift_dynamicCast();
  v37 = *(v101 + 56);
  v39 = v103;
  v38 = v104;
  if (v36)
  {
    v37(v34, 0, 1, v16);
    v40 = v98;
    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v34, v98, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    v41 = (v40 + *(v35 + 28));
    v42 = *v41;
    v43 = v41[1];
    ObjectType = swift_getObjectType();
    *&v106 = v42;
    (*(*(v43 + 8) + 16))(ObjectType);
    v45 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner;
LABEL_12:
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v40, v45);
    v56 = a1[3];
    v57 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v56);
    v58 = (*(v57 + 8))(v56, v57);
    v60 = v59;
    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v106, v58, v60);
    swift_endAccess();
    v61 = a1[3];
    v62 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v61);
    v63 = (*(v62 + 8))(v61, v62);
    v65 = v64;
    outlined init with copy of DeterministicLanguageModelProtocol(a1, &v106);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v106, v63, v65);
    return swift_endAccess();
  }

  v37(v34, 1, 1, v16);
  outlined destroy of [Int](v34, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  outlined init with copy of DeterministicLanguageModelProtocol(a1, &v106);
  v46 = swift_dynamicCast();
  v47 = *(v100 + 56);
  if (v46)
  {
    v47(v38, 0, 1, v39);
    v40 = v96;
    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v38, v96, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
    v48 = (v40 + *(v39 + 24));
    v49 = v48[3];
    v50 = v48[4];
    __swift_project_boxed_opaque_existential_1(v48, v49);
    (*(*(v50 + 8) + 16))(v49);
    v45 = type metadata accessor for OnDeviceInferenceAssetObjectBaseModel;
    goto LABEL_12;
  }

  v47(v38, 1, 1, v39);
  outlined destroy of [Int](v38, &_s24TokenGenerationInference08OnDeviceC20AssetObjectBaseModelVSgMd);
  outlined init with copy of DeterministicLanguageModelProtocol(a1, &v106);
  v51 = swift_dynamicCast();
  v52 = *(v97 + 56);
  if (v51)
  {
    v52(v9, 0, 1, v99);
    v40 = v90;
    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v9, v90, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
    v53 = *(v40 + 16);
    v54 = *(v40 + 24);
    v55 = swift_getObjectType();
    *&v106 = v53;
    (*(*(v54 + 8) + 16))(v55);
    v45 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer;
    goto LABEL_12;
  }

  v52(v9, 1, 1, v99);
  outlined destroy of [Int](v9, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  outlined init with copy of DeterministicLanguageModelProtocol(a1, &v106);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v105[0] = v70;
    *v69 = 136446210;
    v71 = a1;
    v72 = *(&v107 + 1);
    v73 = v108;
    __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
    v74 = *(v73 + 8);
    v75 = v73;
    a1 = v71;
    v76 = v74(v72, v75);
    v78 = v77;
    __swift_destroy_boxed_opaque_existential_1(&v106);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v105);

    *(v69 + 4) = v79;
    _os_log_impl(&dword_220940000, v67, v68, "Asset with identifier %{public}s does not support dynamic state.", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x223D90A10](v70, -1, -1);
    MEMORY[0x223D90A10](v69, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v106);
  }

  *&v106 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x223D8E780](0xD000000000000016, 0x8000000220AFCDC0);
  v80 = a1[3];
  v81 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v80);
  v82 = (*(v81 + 8))(v80, v81);
  MEMORY[0x223D8E780](v82);

  MEMORY[0x223D8E780](0xD000000000000020, 0x8000000220AFCDE0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v83 = v92;
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  v85 = v93;
  v84 = v94;
  v86 = v95;
  (*(v93 + 16))(v95, v83, v94);
  v87 = *MEMORY[0x277D29D98];
  v88 = type metadata accessor for InferenceError();
  (*(*(v88 - 8) + 104))(v86, v87, v88);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();
  return (*(v85 + 8))(v83, v84);
}

uint64_t sub_220946220()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_220946264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t outlined init with copy of DeterministicLanguageModelProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for AppAssetManager(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of OnDeviceInferenceAssetObjectE5Runner(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined destroy of [Int](uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2209465FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ModelConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LookupLanguageModelState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220946710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ModelConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t getEnumTagSinglePayload for StopToken(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for StopToken(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(cgm::token_generation_inference::common::logging::CGMTGILogger *this)
{
  if ((atomic_load_explicit(&qword_2812BEF68, memory_order_acquire) & 1) == 0)
  {
    cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL();
  }

  return _MergedGlobals;
}

uint64_t sub_2209468FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[15];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[18];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_220946AF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

char *_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC025assetObjectIdentifiersForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierSaySSGSS_t20ModelManagerServices0C5ErrorOYKF(uint64_t a1, unint64_t a2, char *a3)
{
  v8 = type metadata accessor for InferenceError.Context();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + 192), *(v3 + 216));
  OnDeviceInferenceProviderDataSource.resourceBundle(for:)(v92);
  v85 = v4;
  if (v4)
  {
    v86 = a3;
    v87 = _convertErrorToNSError(_:)();
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.device);

    v13 = v4;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v84 = v9;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v83 = v8;
      v18 = v17;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v92[0] = v20;
      *v18 = 136446466;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v92);
      *(v18 + 12) = 2112;
      v21 = v4;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&dword_220940000, v14, v15, "Failed to look up resource bundle %{public}s : %@", v18, 0x16u);
      outlined destroy of [Int](v19, &_sSo8NSObjectCSgMd);
      MEMORY[0x223D90A10](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223D90A10](v20, -1, -1);
      v23 = v18;
      v8 = v83;
      MEMORY[0x223D90A10](v23, -1, -1);
    }

    v24 = v87;
    v25 = [v87 description];
    v26 = v86;
    v27 = v25;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = [v24 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v24 code];
    v29 = v85;
    v30 = v85;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();
    v31 = v84;
    (*(v84 + 16))(v26, v11, v8);
    v32 = *MEMORY[0x277D29DC0];
    v33 = type metadata accessor for InferenceError();
    (*(*(v33 - 8) + 104))(v26, v32, v33);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_willThrowTypedImpl();

    (*(v31 + 8))(v11, v8);
  }

  else
  {
    outlined init with take of RandomNumberGenerator(v92, v93);
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v34 = dispatch thunk of ResourceBundle.resources.getter();
    v35 = *(v34 + 16);
    if (v35)
    {
      v87 = MEMORY[0x277D84F90];
      v86 = v34;
      v36 = v34 + 32;
      do
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v36, v92);
        outlined init with copy of DeterministicLanguageModelProtocol(v92, v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog10LLMAdapter_pMd);
        if (swift_dynamicCast())
        {
          __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
          v37 = dispatch thunk of CatalogResource.id.getter();
          v39 = v38;
          __swift_destroy_boxed_opaque_existential_1(v92);
          __swift_destroy_boxed_opaque_existential_1(&v89);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v87 + 2) + 1, 1, v87);
          }

          v41 = *(v87 + 2);
          v40 = *(v87 + 3);
          if (v41 >= v40 >> 1)
          {
            v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v87);
          }

          v42 = v87;
          *(v87 + 2) = v41 + 1;
          v43 = &v42[16 * v41];
          *(v43 + 4) = v37;
          *(v43 + 5) = v39;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v92);
          v91 = 0;
          v89 = 0u;
          v90 = 0u;
          outlined destroy of [Int](&v89, &_s12ModelCatalog10LLMAdapter_pSgMd);
        }

        v36 += 40;
        --v35;
      }

      while (v35);
    }

    else
    {

      v87 = MEMORY[0x277D84F90];
    }

    __swift_project_boxed_opaque_existential_1(v93, v94);
    v44 = dispatch thunk of ResourceBundle.resources.getter();
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = MEMORY[0x277D84F90];
      v86 = v44;
      v47 = v44 + 32;
      do
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v47, v92);
        outlined init with copy of DeterministicLanguageModelProtocol(v92, v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog8LLMModel_pMd);
        if (swift_dynamicCast())
        {
          __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
          v48 = dispatch thunk of CatalogResource.id.getter();
          v50 = v49;
          __swift_destroy_boxed_opaque_existential_1(v92);
          __swift_destroy_boxed_opaque_existential_1(&v89);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
          }

          v52 = *(v46 + 2);
          v51 = *(v46 + 3);
          if (v52 >= v51 >> 1)
          {
            v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v46);
          }

          *(v46 + 2) = v52 + 1;
          v53 = &v46[16 * v52];
          *(v53 + 4) = v48;
          *(v53 + 5) = v50;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v92);
          v91 = 0;
          v89 = 0u;
          v90 = 0u;
          outlined destroy of [Int](&v89, &_s12ModelCatalog8LLMModel_pSgMd);
        }

        v47 += 40;
        --v45;
      }

      while (v45);
    }

    else
    {

      v46 = MEMORY[0x277D84F90];
    }

    __swift_project_boxed_opaque_existential_1(v93, v94);
    v54 = dispatch thunk of ResourceBundle.resources.getter();
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = MEMORY[0x277D84F90];
      v57 = &_s12ModelCatalog0B8Resource_pMd;
      v84 = v54;
      v58 = v54 + 32;
      do
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v58, v92);
        outlined init with copy of DeterministicLanguageModelProtocol(v92, v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog08LLMDraftA0_pMd);
        if (swift_dynamicCast())
        {
          v59 = v46;
          v60 = v57;
          __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
          v61 = dispatch thunk of CatalogResource.id.getter();
          v63 = v62;
          __swift_destroy_boxed_opaque_existential_1(v92);
          __swift_destroy_boxed_opaque_existential_1(&v89);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
          }

          v65 = *(v56 + 2);
          v64 = *(v56 + 3);
          v66 = v56;
          if (v65 >= v64 >> 1)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v56);
          }

          *(v66 + 2) = v65 + 1;
          v56 = v66;
          v67 = &v66[16 * v65];
          *(v67 + 4) = v61;
          *(v67 + 5) = v63;
          v57 = v60;
          v46 = v59;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v92);
          v91 = 0;
          v89 = 0u;
          v90 = 0u;
          outlined destroy of [Int](&v89, &_s12ModelCatalog08LLMDraftA0_pSgMd);
        }

        v58 += 40;
        --v55;
      }

      while (v55);
    }

    else
    {

      v56 = MEMORY[0x277D84F90];
    }

    __swift_project_boxed_opaque_existential_1(v93, v94);
    v68 = dispatch thunk of ResourceBundle.resources.getter();
    v69 = *(v68 + 16);
    if (v69)
    {
      v83 = v56;
      v70 = MEMORY[0x277D84F90];
      v71 = &_s12ModelCatalog0B8Resource_pMd;
      v72 = &_s12ModelCatalog0B8Resource_pMR;
      v84 = v68;
      v73 = v68 + 32;
      v86 = v46;
      do
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v73, v92);
        outlined init with copy of DeterministicLanguageModelProtocol(v92, v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(v71);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9Tokenizer_pMd);
        if (swift_dynamicCast())
        {
          v74 = v72;
          v75 = v71;
          __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
          v76 = dispatch thunk of CatalogResource.id.getter();
          v78 = v77;
          __swift_destroy_boxed_opaque_existential_1(v92);
          __swift_destroy_boxed_opaque_existential_1(&v89);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
          }

          v80 = *(v70 + 2);
          v79 = *(v70 + 3);
          if (v80 >= v79 >> 1)
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v70);
          }

          *(v70 + 2) = v80 + 1;
          v81 = &v70[16 * v80];
          *(v81 + 4) = v76;
          *(v81 + 5) = v78;
          v71 = v75;
          v72 = v74;
          v46 = v86;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v92);
          v91 = 0;
          v89 = 0u;
          v90 = 0u;
          outlined destroy of [Int](&v89, &_s12ModelCatalog9Tokenizer_pSgMd);
        }

        v73 += 40;
        --v69;
      }

      while (v69);

      v56 = v83;
    }

    else
    {

      v70 = MEMORY[0x277D84F90];
    }

    v95 = v87;
    specialized Array.append<A>(contentsOf:)(v46);
    specialized Array.append<A>(contentsOf:)(v56);
    specialized Array.append<A>(contentsOf:)(v70);
    v32 = v95;
    __swift_destroy_boxed_opaque_existential_1(v93);
  }

  return v32;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 160 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference26GrammarGuidedLanguageModelC4NodeVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7Float16VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference0D6RecordVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference20TGICAPILanguageModelC9NodeStateVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference26E5TransformerLanguageModelC9NodeStateVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7Float16V10likelihood_Si6target_Si5draftt8nodePairtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference31MaximumLikelihoodTreeSpeculatorC10MLTreeNode33_47A47F8E672523A25CA47E1261474032LLVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference03OneD34HealingPrefixMatchingLanguageModelC9NodeState33_290950C585633F03B8505F4D810570AFLLVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_SftGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference26TwoStageSpeculativeDecoderC08BufferedD033_997C69FF02F080FB13F8B8AFFD1FC4ECLLVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference17BeamSearchDecoderC0G4Node33_A7FE2FA43B970D1C0025663E659989E9LLVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference13_EncodedImage33_EDB8B1D8F9C2943CA163A428958D5177LLVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference14ProcessedImageVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference17AFMDecodeFunctionVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference17AFMGatherFunctionVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference20PriorOutputNodeStateVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference20TopK2LogitCollectionVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

uint64_t outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t closure #1 in closure #1 in static TelemetryHelpers.emitFileResidentInfo(assetIdentifier:residentPages:totalPages:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV35CatalogResourceIdentifierAndVersionVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10[-v6];
  v8 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v11 = a2;
  v12 = a3;
  static Buildable.with(_:)();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();
}

uint64_t outlined destroy of OnDeviceInferenceAssetObjectE5Runner(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in static TelemetryHelpers.emitFileResidentInfo(assetIdentifier:residentPages:totalPages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataOSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-v9];
  v11 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  MEMORY[0x28223BE20](v11);
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v20 = a2;
  v21 = a3;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition();
  v12 = swift_allocBox();
  v18 = a4;
  v19 = v22;
  static Buildable.with(_:)();
  *v10 = v12;
  v13 = *MEMORY[0x277D20BA0];
  v14 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v10, v13, v14);
  (*(v15 + 56))(v10, 0, 1, v14);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t protocol witness for InferenceProviding.prewarmHint(_:) in conformance TG_OnDeviceInferenceProvider(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](protocol witness for InferenceProviding.prewarmHint(_:) in conformance TG_OnDeviceInferenceProvider, 0, 0);
}

uint64_t protocol witness for InferenceProviding.prewarmHint(_:) in conformance TG_OnDeviceInferenceProvider()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + 136), *(v0[3] + 160));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = protocol witness for InferenceProviding.prewarmHint(_:) in conformance TG_OnDeviceInferenceProvider;
  v2 = v0[2];

  return OnDeviceInferenceAssetRepository.prewarm(_:)(v2);
}

uint64_t OnDeviceInferenceAssetRepository.prewarm(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for InferenceError();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for InferenceProviderPrewarmInformation();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](OnDeviceInferenceAssetRepository.prewarm(_:), v1, 0);
}

uint64_t OnDeviceInferenceAssetRepository.prewarm(_:)()
{
  v27 = v0;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.device);
  (*(v3 + 16))(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  v11 = v0[7];
  v10 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136446210;
    v14 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_220940000, v6, v7, "Handling prewarming for model bundle identifier %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223D90A10](v13, -1, -1);
    MEMORY[0x223D90A10](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[6];
  v19 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  v21 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC025assetObjectIdentifiersForF6Bundle33_65818D6FA4B5F545C6B162D7CBE031AELL10identifierSaySSGSS_t20ModelManagerServices0C5ErrorOYKF(v19, v20, v18);
  v0[11] = v21;
  v22 = v21;

  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = OnDeviceInferenceAssetRepository.prewarm(_:);
  v24 = v0[2];

  return OnDeviceInferenceAssetRepository.prewarm(bundleAssetObjectIdentifiers:prewarmInformation:)(v22, v24);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t OnDeviceInferenceProviderDataSource.resourceBundle(for:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CatalogClient();
  swift_allocObject();
  CatalogClient.init()();
  dispatch thunk of CatalogClient.resourceBundle(for:)();

  if (!v1)
  {
    if (v6)
    {
      return outlined init with take of RandomNumberGenerator(&v5, a1);
    }

    else
    {
      outlined destroy of [Int](&v5, &_s12ModelCatalog14ResourceBundle_pSgMd);
      lazy protocol witness table accessor for type DataSourceError and conformance DataSourceError();
      swift_allocError();
      *v4 = 2;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04moveF14ToDynamicState10identifierySS_tYa20ModelManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = v3;
  v4[54] = a3;
  v4[51] = a1;
  v4[52] = a2;
  v5 = type metadata accessor for InferenceError.Context();
  v4[55] = v5;
  v4[56] = *(v5 - 8);
  v4[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);
  v4[58] = swift_task_alloc();
  v6 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  v4[59] = v6;
  v4[60] = *(v6 - 8);
  v4[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC20AssetObjectBaseModelVSgMd);
  v4[62] = swift_task_alloc();
  v7 = type metadata accessor for OnDeviceInferenceAssetObjectBaseModel(0);
  v4[63] = v7;
  v4[64] = *(v7 - 8);
  v4[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
  v4[66] = swift_task_alloc();
  v8 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v4[67] = v8;
  v4[68] = *(v8 - 8);
  v4[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04moveF14ToDynamicState10identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY0_, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC04moveF14ToDynamicState10identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY0_()
{
  v101 = v0;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.device);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 408);
    v4 = *(v0 + 416);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v99[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, v99);
    _os_log_impl(&dword_220940000, v2, v3, "Moving asset with identifier %{public}s to dynamic state.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223D90A10](v7, -1, -1);
    MEMORY[0x223D90A10](v6, -1, -1);
  }

  v8 = *(v0 + 424);
  swift_beginAccess();
  v9 = *(v8 + 144);
  if (*(v9 + 16))
  {
    v11 = *(v0 + 408);
    v10 = *(v0 + 416);

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10);
    if (v13)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(*(v9 + 56) + 40 * v12, v0 + 16);

      outlined destroy of [Int](v0 + 16, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v17 = *(v0 + 408);
        v16 = *(v0 + 416);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v99[0] = v19;
        *v18 = 136446210;
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v99);
        _os_log_impl(&dword_220940000, v14, v15, "Asset with identifier %{public}s was requested to move to dynamic state while in-use.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x223D90A10](v19, -1, -1);
        MEMORY[0x223D90A10](v18, -1, -1);
      }

      v21 = *(v0 + 448);
      v20 = *(v0 + 456);
      v23 = *(v0 + 432);
      v22 = *(v0 + 440);
      v25 = *(v0 + 408);
      v24 = *(v0 + 416);
      *&v99[0] = 0;
      *(&v99[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(77);
      MEMORY[0x223D8E780](0xD000000000000016, 0x8000000220AFCDC0);
      MEMORY[0x223D8E780](v25, v24);
      MEMORY[0x223D8E780](0xD000000000000035, 0x8000000220AFD260);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      (*(v21 + 16))(v23, v20, v22);
      v26 = MEMORY[0x277D29DC0];
LABEL_19:
      v59 = *v26;
      v60 = type metadata accessor for InferenceError();
      (*(*(v60 - 8) + 104))(v23, v59, v60);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
      swift_willThrowTypedImpl();
      (*(v21 + 8))(v20, v22);
LABEL_20:

      v61 = *(v0 + 8);
      goto LABEL_21;
    }
  }

  v27 = *(v0 + 424);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  outlined destroy of [Int](v0 + 16, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  swift_beginAccess();
  v28 = *(v27 + 128);
  if (!*(v28 + 16))
  {
LABEL_16:

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v54 = *(v0 + 408);
      v53 = *(v0 + 416);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v99[0] = v56;
      *v55 = 136446210;
      *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, v99);
      _os_log_impl(&dword_220940000, v51, v52, "Asset with identifier %{public}s cannot be moved to dynamic state because it is not loaded.", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x223D90A10](v56, -1, -1);
      MEMORY[0x223D90A10](v55, -1, -1);
    }

    v21 = *(v0 + 448);
    v20 = *(v0 + 456);
    v23 = *(v0 + 432);
    v22 = *(v0 + 440);
    v58 = *(v0 + 408);
    v57 = *(v0 + 416);
    *&v99[0] = 0;
    *(&v99[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x223D8E780](0xD000000000000016, 0x8000000220AFCDC0);
    MEMORY[0x223D8E780](v58, v57);
    MEMORY[0x223D8E780](0xD00000000000003BLL, 0x8000000220AFD220);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    (*(v21 + 16))(v23, v20, v22);
    v26 = MEMORY[0x277D29DD8];
    goto LABEL_19;
  }

  v30 = *(v0 + 408);
  v29 = *(v0 + 416);

  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29);
  if ((v32 & 1) == 0)
  {

    goto LABEL_16;
  }

  v33 = *(v0 + 544);
  outlined init with copy of DeterministicLanguageModelProtocol(*(v28 + 56) + 40 * v31, v0 + 56);

  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
  v34 = swift_dynamicCast();
  v35 = *(v33 + 56);
  if (v34)
  {
    v36 = *(v0 + 552);
    v37 = *(v0 + 536);
    v38 = *(v0 + 528);
    v35(v38, 0, 1, v37);
    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v38, v36, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    v39 = (v36 + *(v37 + 28));
    v41 = *v39;
    v40 = v39[1];
    v98 = v40;
    ObjectType = swift_getObjectType();
    *(v0 + 400) = v41;
    (*(*(v40 + 8) + 8))();
    v43 = *(v37 + 32);
    v44 = *(v36 + v43);
    v45 = *(v44 + 24);
    v97 = *(v44 + 16);
    v46 = type metadata accessor for E5TransformerLanguageModel();

    v47 = swift_unknownObjectRetain();
    v48 = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v47, v97, v45, v46, ObjectType, v98);

    *(v36 + v43) = v48;
    *(v0 + 280) = v37;
    *(v0 + 288) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
    outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v36, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    outlined init with take of RandomNumberGenerator((v0 + 256), v0 + 56);
    v50 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner;
  }

  else
  {
    v63 = *(v0 + 528);
    v64 = *(v0 + 512);
    v35(v63, 1, 1, *(v0 + 536));
    outlined destroy of [Int](v63, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 136);
    v65 = swift_dynamicCast();
    v66 = *(v64 + 56);
    if (v65)
    {
      v36 = *(v0 + 520);
      v68 = *(v0 + 496);
      v67 = *(v0 + 504);
      v66(v68, 0, 1, v67);
      outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v68, v36, type metadata accessor for OnDeviceInferenceAssetObjectBaseModel);
      v69 = (v36 + *(v67 + 24));
      v71 = v69[3];
      v70 = v69[4];
      __swift_project_boxed_opaque_existential_1(v69, v71);
      (*(*(v70 + 8) + 8))(v71);
      v50 = type metadata accessor for OnDeviceInferenceAssetObjectBaseModel;
    }

    else
    {
      v72 = *(v0 + 496);
      v73 = *(v0 + 480);
      v66(v72, 1, 1, *(v0 + 504));
      outlined destroy of [Int](v72, &_s24TokenGenerationInference08OnDeviceC20AssetObjectBaseModelVSgMd);
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 176);
      v74 = swift_dynamicCast();
      v75 = *(v73 + 56);
      if ((v74 & 1) == 0)
      {
        v82 = *(v0 + 464);
        v75(v82, 1, 1, *(v0 + 472));
        outlined destroy of [Int](v82, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd);

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v83, v84))
        {
          v86 = *(v0 + 408);
          v85 = *(v0 + 416);
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *&v99[0] = v88;
          *v87 = 136446210;
          *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v85, v99);
          _os_log_impl(&dword_220940000, v83, v84, "Asset with identifier %{public}s does not support dynamic state.", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          MEMORY[0x223D90A10](v88, -1, -1);
          MEMORY[0x223D90A10](v87, -1, -1);
        }

        v90 = *(v0 + 448);
        v89 = *(v0 + 456);
        v92 = *(v0 + 432);
        v91 = *(v0 + 440);
        v94 = *(v0 + 408);
        v93 = *(v0 + 416);
        *&v99[0] = 0;
        *(&v99[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(56);
        MEMORY[0x223D8E780](0xD000000000000016, 0x8000000220AFCDC0);
        MEMORY[0x223D8E780](v94, v93);
        MEMORY[0x223D8E780](0xD000000000000020, 0x8000000220AFCDE0);
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
        (*(v90 + 16))(v92, v89, v91);
        v95 = *MEMORY[0x277D29D98];
        v96 = type metadata accessor for InferenceError();
        (*(*(v96 - 8) + 104))(v92, v95, v96);
        lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
        swift_willThrowTypedImpl();
        (*(v90 + 8))(v89, v91);
        __swift_destroy_boxed_opaque_existential_1(v0 + 56);
        goto LABEL_20;
      }

      v36 = *(v0 + 488);
      v76 = *(v0 + 464);
      v75(v76, 0, 1, *(v0 + 472));
      outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v76, v36, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
      v77 = *(v36 + 16);
      v78 = *(v36 + 24);
      v79 = swift_getObjectType();
      *(v0 + 392) = v77;
      (*(*(v78 + 8) + 8))(v79);
      v50 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer;
    }
  }

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v36, v50);
  v80 = *(v0 + 416);
  v81 = *(v0 + 408);
  v100 = 0;
  memset(v99, 0, sizeof(v99));
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v99, v81, v80);
  swift_endAccess();
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 216);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v0 + 216, v81, v80);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  v61 = *(v0 + 8);
LABEL_21:

  return v61();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC20ModelManagerServices0C9ProvidingAadEP14requestOneShot10clientData13configurationAD06ClientP0VAK_AD0cG20RequestConfigurationVtYaAD0C5ErrorOYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t OnDeviceInferenceAssetRepository.prewarm(bundleAssetObjectIdentifiers:prewarmInformation:)(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
  v3[29] = swift_task_alloc();
  v4 = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](OnDeviceInferenceAssetRepository.prewarm(bundleAssetObjectIdentifiers:prewarmInformation:), v2, 0);
}

uint64_t OnDeviceInferenceAssetRepository.prewarm(bundleAssetObjectIdentifiers:prewarmInformation:)()
{
  v77 = v0;
  v1 = v0[26];
  v2 = *(v0[24] + 16);
  swift_beginAccess();
  v75 = v1;
  if (v2)
  {
    v3 = v0[31];
    v4 = (v3 + 56);
    v5 = MEMORY[0x277D84F90];
    v73 = v3;
    v6 = (v3 + 48);
    v7 = (v0[24] + 40);
    while (1)
    {
      v8 = *(v1 + 128);
      if (!*(v8 + 16))
      {
        goto LABEL_4;
      }

      v10 = *(v7 - 1);
      v9 = *v7;

      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v14 = v0[29];
      v13 = v0[30];
      outlined init with copy of DeterministicLanguageModelProtocol(*(v8 + 56) + 40 * v11, (v0 + 2));

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
      v15 = swift_dynamicCast();
      (*v4)(v14, v15 ^ 1u, 1, v13);
      v16 = v14;
      v1 = v75;
      if ((*v6)(v16, 1, v13) != 1)
      {
        outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v0[29], v0[33], type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        }

        v18 = v5[2];
        v17 = v5[3];
        if (v18 >= v17 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1, v5);
        }

        v19 = v0[33];
        v5[2] = v18 + 1;
        outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v19, v5 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v18, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
        goto LABEL_6;
      }

LABEL_5:
      outlined destroy of [Int](v0[29], &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd);
LABEL_6:
      v7 += 2;
      if (!--v2)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    (*v4)(v0[29], 1, 1, v0[30]);
    goto LABEL_5;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_16:
  if (v5[2])
  {
    v20 = v0[34];
    v21 = v0[32];
    v22 = *(v0[31] + 80);
    outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v5 + ((v22 + 32) & ~v22), v21, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);

    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v21, v20, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    v23 = InferenceProviderPrewarmInformation.shouldPrewarmConstrainedDecoding.getter();
    v24 = v0[34];
    if (v23)
    {
      v25 = v0[30];
      v26 = v0[28];
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v24 + *(v25 + 44), v26, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
      v27 = type metadata accessor for GuidedGenerationVocabularyManager();
      v28 = *(v27 - 8);
      v29 = (*(v28 + 48))(v26, 1, v27);
      outlined destroy of [Int](v26, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
      if (v29 == 1)
      {
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Log.device);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        v74 = v28;
        if (os_log_type_enabled(v31, v32))
        {
          v33 = v0[34];
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v76[0] = v35;
          *v34 = 136446210;
          swift_beginAccess();
          v36 = v25;
          v37 = *v33;
          v38 = v33[1];

          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v76);

          *(v34 + 4) = v39;
          v25 = v36;
          _os_log_impl(&dword_220940000, v31, v32, "Prewarm: creating vocabulary manager for asset %{public}s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v35);
          MEMORY[0x223D90A10](v35, -1, -1);
          MEMORY[0x223D90A10](v34, -1, -1);
        }

        v40 = v0[34];
        v41 = v0[30];
        v42 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
        v44 = v43;
        swift_beginAccess();
        v45 = *(v40 + *(v41 + 24));

        v46 = OnDeviceInferenceAssetRepository.stopTokensFor(modelBundleIdentifier:tokenizer:)(v42, v44, v45);

        if (v46)
        {
          v47 = v0[34];
          v48 = v0[30];
          v49 = v0[27];
          v76[3] = type metadata accessor for TokenizerRunner();
          v76[4] = MEMORY[0x277D71E60];
          v76[0] = v45;

          GuidedGenerationVocabularyManager.init(tokenizer:stopTokenIDs:)();
          (*(v74 + 56))(v49, 0, 1, v27);
          outlined assign with take of UUID?(v49, v47 + *(v25 + 44), &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
          v50 = *v47;
          v51 = v47[1];
          v0[10] = v48;
          v0[11] = &protocol witness table for OnDeviceInferenceAssetObjectTokenizer;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
          outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v47, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
          swift_beginAccess();

          specialized Dictionary.subscript.setter((v0 + 7), v50, v51);
          swift_endAccess();
          v24 = v47;
        }

        else
        {
          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.default.getter();
          v66 = os_log_type_enabled(v64, v65);
          v67 = v0[34];
          if (v66)
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v76[0] = v69;
            *v68 = 136446210;
            v70 = *v67;
            v71 = v67[1];

            v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v76);

            *(v68 + 4) = v72;
            _os_log_impl(&dword_220940000, v64, v65, "Prewarm: failed to build vocabulary manager for asset %{public}s. Missing stopTokenID", v68, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v69);
            MEMORY[0x223D90A10](v69, -1, -1);
            MEMORY[0x223D90A10](v68, -1, -1);
          }

          v24 = v67;
        }
      }

      else
      {
        v24 = v0[34];
      }
    }

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v24, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  }

  else
  {

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Log.device);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v0[24];
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v76[0] = v58;
      *v57 = 136446210;
      v59 = MEMORY[0x223D8E8D0](v56, MEMORY[0x277D837D0]);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v76);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_220940000, v54, v55, "Skipping prewarming because none of the asset identifiers from %{public}s correspond to a loaded tokenizer", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x223D90A10](v58, -1, -1);
      MEMORY[0x223D90A10](v57, -1, -1);
    }
  }

  v62 = v0[1];

  return v62();
}

uint64_t sub_22094A404(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22094A554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference08OnDeviceF20AssetObjectTokenizerVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference08OnDeviceF20AssetObjectTokenizerVGMR, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference08OnDeviceF19AssetObjectE5RunnerVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference08OnDeviceF19AssetObjectE5RunnerVGMR, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference08OnDeviceF14SuspendedFetchVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference08OnDeviceF14SuspendedFetchVGMR, type metadata accessor for OnDeviceInferenceSuspendedFetch);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4ODIE0B10DescriptorVGMd, &_ss23_ContiguousArrayStorageCy4ODIE0B10DescriptorVGMR, MEMORY[0x277D36AD8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation4ToolV8FunctionVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation4ToolV8FunctionVGMR, MEMORY[0x277D0DDD0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference08OnDeviceF25AssetObjectImageTokenizerVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference08OnDeviceF25AssetObjectImageTokenizerVGMR, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMR, MEMORY[0x277D71DA0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14ToolCallParserV13FunctionDeltaVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14ToolCallParserV13FunctionDeltaVGMR, MEMORY[0x277D71E38]);
}

uint64_t InferenceProviderPrewarmInformation.shouldPrewarmConstrainedDecoding.getter()
{
  result = MEMORY[0x223D8DAD0]();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = static InferenceProviderPrewarmInformation.guidedGenerationPrewarmMetaDataKey.getter();
  if (!*(v1 + 16))
  {

    goto LABEL_10;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  v7 = (*(v1 + 56) + 16 * v4);
  v9 = *v7;
  v8 = v7[1];

  if (v9 == 1702195828 && v8 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v11 & 1;
  }
}

uint64_t TG_OnDeviceInferenceProvider.prewarmHint(_:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  __swift_project_boxed_opaque_existential_1((v0[3] + 136), *(v0[3] + 160));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = TG_OnDeviceInferenceProvider.prewarmHint(_:);
  v2 = v0[2];

  return OnDeviceInferenceAssetRepository.prewarm(_:)(v2);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = v23[7] + 40 * v17;
      __swift_destroy_boxed_opaque_existential_1(v24);
      return outlined init with take of RandomNumberGenerator(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
  MEMORY[0x28223BE20](v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  specialized _NativeDictionary._insert(at:key:value:)(v17, a2, a3, v30, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_1(&v33);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = outlined init with take of RandomNumberGenerator(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY2_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTQ10_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[39];
    v4 = v2[35];
    v5 = v2[31];
    v6 = *(v2[32] + 32);
    v2[67] = v6;
    v6(v3, v4, v5);
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY12_;
  }

  else
  {
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY11_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC9loadAsset33_F67B098F505663682541EE68977BD2AALL15assetDescriptory20ModelManagerServices0cgiQ0V_tYaAG0C5ErrorOYKFTY11_()
{
  v17 = v0;
  (*(v0 + 368))(*(v0 + 344), *(v0 + 224), *(v0 + 320));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 384);
  v5 = *(v0 + 344);
  v6 = *(v0 + 320);
  if (v3)
  {
    v15 = v2;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = InferenceProviderAssetDescriptor.identifier.getter();
    v11 = v10;
    v4(v5, v6);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_220940000, v1, v15, "Successfully loaded asset with identifer %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x223D90A10](v8, -1, -1);
    MEMORY[0x223D90A10](v7, -1, -1);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTQ1_()
{

  if (v0)
  {
    v1 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY10_;
  }

  else
  {
    v1 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

void std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 32;
        std::__destroy_at[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of RandomNumberGenerator(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    v7 = v16;
    v8 = v17;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v9);
    v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v12 + 16))(v11);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, a3, isUniquelyReferenced_nonNull_native, &v14, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v15);

    *v3 = v14;
  }

  else
  {
    outlined destroy of [Int](a1, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v15);

    return outlined destroy of [Int](v15, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd);
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    outlined destroy of [Int](a1, &_s24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of [Int](v9, &_s24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVSgMd);
  }

  else
  {
    _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(a1, v12, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE7NDArrayC6BufferVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for NDArray.Buffer();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    outlined destroy of [Int](a1, &_s4ODIE7NDArrayC6BufferVSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of [Int](v9, &_s4ODIE7NDArrayC6BufferVSgMd);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    outlined destroy of [Int](a1, &_sScCyyts5NeverOGSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of [Int](v9, &_sScCyyts5NeverOGSgMd);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of RandomNumberGenerator((*(v10 + 56) + 40 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::IOPort>> const&>(a1, i + 2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<E5RT::IOPort>> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<E5RT::IOPort>> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22094C274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22094C53C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22094C7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22094CA30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static TelemetryHelpers.emitFileResidentInfo(assetIdentifier:residentPages:totalPages:)()
{

  GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.identifier.setter();
  return GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.version.setter();
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<E5RT::IOPort>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t closure #2 in closure #1 in static TelemetryHelpers.emitFileResidentInfo(assetIdentifier:residentPages:totalPages:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO15AssetTransitionV16FileResidentInfoVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10[-v6];
  v8 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo();
  v11 = a2;
  v12 = a3;
  static Buildable.with(_:)();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return GenerativeFunctionsInstrumentationMetadata.AssetTransition.fileResidentInfo.setter();
}

void closure #1 in closure #2 in closure #1 in static TelemetryHelpers.emitFileResidentInfo(assetIdentifier:residentPages:totalPages:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = a3;
  v4 = a2;
  MEMORY[0x223D8DC20](a2, 0);
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  MEMORY[0x223D8DC10](v3, 0);
  if (v3 >= v4)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for device != -1)
  {
    goto LABEL_17;
  }

LABEL_5:
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.device);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v4;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v3;
    _os_log_impl(&dword_220940000, v6, v7, "Resident pages of model %ld reported as greater than total pages %ld. Will truncate resident ratio to 1.0", v8, 0x16u);
    MEMORY[0x223D90A10](v8, -1, -1);
  }

LABEL_8:
  if (v3)
  {
    GenerativeFunctionsInstrumentationMetadata.AssetTransition.FileResidentInfo.residentRatio.setter();
  }

  else
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.device);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_220940000, v10, v11, "Did not capture resident ratio due to total pages of model reported as 0.", v12, 2u);
      MEMORY[0x223D90A10](v12, -1, -1);
    }
  }
}

uint64_t outlined destroy of GenerativeFunctionsInstrumentationEvent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::moveToFullyLoadedState(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this)
{
  v2 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_220940000, v2, OS_LOG_TYPE_DEFAULT, "ANE model moving to fully loaded state from dynamic state. Allocating and wiring new IO buffers", v3, 2u);
  }

  cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::allocateAndBindMemoryForStreamOps(this);
  *(this + 296) = 0;
}

void *cgm::token_generation_inference::ajax::anonymous namespace::concatenate<cgm::token_generation_inference::ajax::utils::StreamOpPair>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::reserve(a3, ((*(a2 + 8) - *a2) >> 5) + ((*(a1 + 8) - *a1) >> 5));
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cgm::token_generation_inference::ajax::utils::StreamOpPair const*>,std::__wrap_iter<cgm::token_generation_inference::ajax::utils::StreamOpPair const*>>(a3, a3[1], *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 5);
  return std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cgm::token_generation_inference::ajax::utils::StreamOpPair const*>,std::__wrap_iter<cgm::token_generation_inference::ajax::utils::StreamOpPair const*>>(a3, a3[1], *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 5);
}

void sub_22094D108(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::utils::StreamOpPair>>(result, a2);
    }

    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void sub_22094D1D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<cgm::token_generation_inference::ajax::utils::StreamOpPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::utils::StreamOpPair>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::utils::StreamOpPair>,cgm::token_generation_inference::ajax::utils::StreamOpPair*>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      a4[1] = *(v6 + 16);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 2;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair,0>(v5);
      v5 += 32;
    }
  }
}

void *std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cgm::token_generation_inference::ajax::utils::StreamOpPair const*>,std::__wrap_iter<cgm::token_generation_inference::ajax::utils::StreamOpPair const*>>(uint64_t *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 5)
    {
      v17 = v10 - a2;
      if (a5 <= (v10 - a2) >> 5)
      {
        std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__move_range(a1, a2, a1[1], &a2[4 * a5]);
        v18 = &v7[4 * a5];
      }

      else
      {
        std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__construct_at_end<std::__wrap_iter<cgm::token_generation_inference::ajax::utils::StreamOpPair const*>,std::__wrap_iter<cgm::token_generation_inference::ajax::utils::StreamOpPair const*>>(a1, (a3 + v17), a4);
        if (v17 >> 5 < 1)
        {
          return v5;
        }

        std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__move_range(a1, v5, v10, &v5[4 * a5]);
        v18 = (v7 + v17);
      }

      std::__copy_impl::operator()[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair const*,cgm::token_generation_inference::ajax::utils::StreamOpPair const*,cgm::token_generation_inference::ajax::utils::StreamOpPair*>(v23, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    v26 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cgm::token_generation_inference::ajax::utils::StreamOpPair>>(a1, v15);
    }

    v19 = (32 * v16);
    v23[0] = 0;
    v23[1] = 32 * v16;
    v24 = 32 * v16;
    v25 = 0;
    do
    {
      *v19 = *v7;
      v20 = v7[1];
      v19[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      v19[2] = v7[2];
      v21 = v7[3];
      v19[3] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      v19 += 4;
      v7 += 4;
    }

    while (v19 != (32 * v16 + 32 * a5));
    v24 = 32 * v16 + 32 * a5;
    v5 = std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<cgm::token_generation_inference::ajax::utils::StreamOpPair>::~__split_buffer(v23);
  }

  return v5;
}

void sub_22094D45C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<cgm::token_generation_inference::ajax::utils::StreamOpPair>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<cgm::token_generation_inference::ajax::utils::StreamOpPair>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__destroy_at[abi:ne200100]<cgm::token_generation_inference::ajax::utils::StreamOpPair,0>(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__construct_at_end<std::__wrap_iter<cgm::token_generation_inference::ajax::utils::StreamOpPair const*>,std::__wrap_iter<cgm::token_generation_inference::ajax::utils::StreamOpPair const*>>(uint64_t result, void *a2, void *a3)
{
  for (i = *(result + 8); a2 != a3; i += 4)
  {
    v4 = a2[1];
    *i = *a2;
    i[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = a2[3];
    i[2] = a2[2];
    i[3] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    a2 += 4;
  }

  *(result + 8) = i;
  return result;
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::allocateAndBindMemoryForStreamOps(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this)
{
  *&v32[0] = &v38;
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](v32);
  v2 = 0uLL;
  v38 = 0u;
  v39 = 0u;
  v40 = 1065353216;
  v37 = &v38;
  v3 = v41;
  v4 = v42;
  if (v41 == v42)
  {
    v8 = 0;
  }

  else
  {
    do
    {
      InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*v3);
      std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v36, InputPorts);
      cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::allocateAndBindMemoryForStreamOps(void)::$_0::operator()(&v37, v36);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v36);
      v6 = E5RT::ExecutionStreamOperation::GetInOutPorts(*v3);
      std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v35, v6);
      cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::allocateAndBindMemoryForStreamOps(void)::$_0::operator()(&v37, v35);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v35);
      OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*v3);
      std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v34, OutputPorts);
      cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::allocateAndBindMemoryForStreamOps(void)::$_0::operator()(&v37, v34);
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v34);
      v3 += 4;
    }

    while (v3 != v4);
    v8 = *(&v39 + 1);
    v2 = 0uLL;
  }

  v32[0] = v2;
  v32[1] = v2;
  v33 = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(v32, v8);
  for (i = v39; i; i = *i)
  {
    __p[0] = i + 2;
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v38, i + 2);
    E5RT::BufferObject::AllocMemory();
    __p[0] = i + 2;
    v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v32, i + 2);
    std::shared_ptr<E5RT::MemoryObject>::operator=[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>(v10 + 5, v28);
    v11 = v28[0];
    v28[0] = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "in_embeddings");
  v28[0] = __p;
  v12 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32, __p);
  v14 = *(this + 29);
  v13 = *(this + 30);
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  v15 = v12[6];
  v12[5] = v14;
  v12[6] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "transformer_input");
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v32, __p);
  v17 = v16;
  if (v31 < 0)
  {
    operator delete(__p[0]);
    if (!v17)
    {
      goto LABEL_27;
    }
  }

  else if (!v16)
  {
    goto LABEL_27;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "transformer_input");
  v28[0] = __p;
  v18 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32, __p);
  std::string::basic_string[abi:ne200100]<0>(v28, "gathered_embeddings");
  v43 = v28;
  v19 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32, v28);
  v21 = v18[5];
  v20 = v18[6];
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  v22 = v19[6];
  v19[5] = v21;
  v19[6] = v20;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_27:
  v23 = v41;
  for (j = v42; v23 != j; v23 += 32)
  {
    v25 = *v23;
    v26 = *(v23 + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    cgm::token_generation_inference::ajax::utils::bindBuffersToPorts(v25, v32);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::ExecutionStream::EncodeOperation();
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    E5RT::ExecutionStream::PreWireInUseAllocations(*(v23 + 16));
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v32);
  v27 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v38);
  *&v38 = &v41;
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](v27);
}

void sub_22094D8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(&a23);
  v36 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v34 - 128);
  *(v34 - 128) = v34 - 88;
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](v36);
  _Unwind_Resume(a1);
}

const void **cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::allocateAndBindMemoryForStreamOps(void)::$_0::operator()(const void **result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    while (1)
    {
      v4 = v2 + 2;
      if (*(v2 + 39) < 0)
      {
        break;
      }

      if (*(v2 + 39) != 13)
      {
        v5 = v2 + 2;
        if (*(v2 + 39) != 19)
        {
          goto LABEL_27;
        }

LABEL_14:
        v7 = *v5;
        v8 = v5[1];
        v9 = *(v5 + 11);
        if (v7 != 0x6465726568746167 || v8 != 0x69646465626D655FLL || v9 != 0x73676E6964646562)
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      }

      if (*v4 != 0x6465626D655F6E69 || *(v2 + 21) != 0x73676E6964646562)
      {
LABEL_27:
        E5RT::IOPort::GetPortDescriptor(&v17, v2[5]);
        v13 = E5RT::OperandDescriptor::TensorDescriptor(v17);
        Size = E5RT::TensorDescriptor::GetSize(v13);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v15 = *v3;
        v17 = (v2 + 2);
        result = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v15, v2 + 2);
        if (Size > result[5])
        {
          v16 = *v3;
          v17 = (v2 + 2);
          result = std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v16, v2 + 2);
          result[5] = Size;
        }
      }

LABEL_31:
      v2 = *v2;
      if (!v2)
      {
        return result;
      }
    }

    if (v2[3] == 13 && **v4 == 0x6465626D655F6E69 && *(*v4 + 5) == 0x73676E6964646562)
    {
      goto LABEL_31;
    }

    if (v2[3] != 19)
    {
      goto LABEL_27;
    }

    v5 = *v4;
    goto LABEL_14;
  }

  return result;
}

void sub_22094DB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::shared_ptr<E5RT::MemoryObject>::shared_ptr[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void *std::shared_ptr<E5RT::MemoryObject>::operator=[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<E5RT::MemoryObject>::shared_ptr[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22094DEC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::utils::bindBuffersToPorts(E5RT::ExecutionStreamOperation *a1, void *a2)
{
  v4 = *(E5RT::ExecutionStreamOperation::GetInputPorts(a1) + 16);
  if (v4)
  {
    while (1)
    {
      v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a2, v4 + 2);
      if (!v5)
      {
        break;
      }

      v6 = v5[6];
      v19 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      E5RT::IOPort::BindMemoryObject();
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

LABEL_31:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

LABEL_8:
  for (i = *(E5RT::ExecutionStreamOperation::GetInOutPorts(a1) + 16); i; i = *i)
  {
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a2, i + 2);
    if (!v8)
    {
      goto LABEL_31;
    }

    v9 = v8[6];
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::IOPort::BindMemoryObject();
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  for (j = *(E5RT::ExecutionStreamOperation::GetOutputPorts(a1) + 16); j; j = *j)
  {
    if (E5RT::IOPort::IsDynamic(j[5]))
    {
      v11 = j[6];
      v15 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      E5RT_Private::GetMaxPortDescriptor();
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (!v16)
      {
        continue;
      }
    }

    v12 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a2, j + 2);
    if (!v12)
    {
      goto LABEL_31;
    }

    v13 = v12[6];
    v14 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::IOPort::BindMemoryObject();
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }
}

void sub_22094E078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t protocol witness for InferenceProviding.init() in conformance TG_OnDeviceInferenceProvider@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for OnDeviceInferenceProviderDataSource();
  v3 = swift_allocObject();
  *(v3 + 16) = 0xD000000000000023;
  *(v3 + 24) = 0x8000000220AFD920;
  v12[3] = v2;
  v12[4] = &protocol witness table for OnDeviceInferenceProviderDataSource;
  v12[0] = v3;
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v2);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = specialized TG_OnDeviceInferenceProvider.init(dataSource:shouldDoVersionCheck:)(*v7, 1, v4);
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  *a1 = v9;
  return result;
}

uint64_t specialized TG_OnDeviceInferenceProvider.init(dataSource:shouldDoVersionCheck:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for OnDeviceInferenceProviderDataSource();
  v49[3] = v6;
  v49[4] = &protocol witness table for OnDeviceInferenceProviderDataSource;
  v49[0] = a1;
  outlined init with copy of DeterministicLanguageModelProtocol(v49, a3 + 96);
  *(a3 + 224) = a2;
  v47 = type metadata accessor for OnDeviceInferenceOverrides();
  v48 = &protocol witness table for OnDeviceInferenceOverrides;
  __swift_allocate_boxed_opaque_existential_1(&v46);
  OnDeviceInferenceOverrides.init()();
  outlined init with take of RandomNumberGenerator(&v46, a3 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000023;
  *(v7 + 24) = 0x8000000220AFD920;
  v47 = v6;
  v48 = &protocol witness table for OnDeviceInferenceProviderDataSource;
  *&v46 = v7;
  v8 = type metadata accessor for OnDeviceInferenceAssetRepository();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(&v46, v6);
  MEMORY[0x28223BE20](v10);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12);
  v14 = specialized OnDeviceInferenceAssetRepository.init(dataSource:)(*v12, v9);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  *(a3 + 160) = v8;
  *(a3 + 168) = &protocol witness table for OnDeviceInferenceAssetRepository;
  *(a3 + 136) = v14;
  v47 = type metadata accessor for InstrumenterFinalizer();
  v48 = MEMORY[0x277D0DF08];
  __swift_allocate_boxed_opaque_existential_1(&v46);
  InstrumenterFinalizer.init()();
  outlined init with take of RandomNumberGenerator(&v46, a3 + 184);
  outlined init with copy of DeterministicLanguageModelProtocol(a3 + 136, &v46);
  outlined init with copy of DeterministicLanguageModelProtocol(a3 + 184, v45);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(&v46, v47);
  MEMORY[0x28223BE20](v15);
  v17 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v18 + 16))(v17);
  v19 = *v17;
  v44[3] = v8;
  v44[4] = &protocol witness table for OnDeviceInferenceAssetRepository;
  v44[0] = v19;
  type metadata accessor for DataStreamStateManager(0);
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v44, v8);
  MEMORY[0x28223BE20](v21);
  v23 = &v40[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v24 + 16))(v23);
  v25 = specialized DataStreamStateManager.init(assetRepository:instrumenterFinalizer:)(*v23, v45, v20);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  *(a3 + 176) = v25;
  outlined init with copy of DeterministicLanguageModelProtocol(a3 + 136, v45);
  outlined init with copy of DeterministicLanguageModelProtocol(a3 + 16, v44);
  outlined init with copy of DeterministicLanguageModelProtocol(v45, &v46);
  outlined init with copy of DeterministicLanguageModelProtocol(v44, v42);
  outlined init with copy of DeterministicLanguageModelProtocol(v49, v40);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v46, v47);
  MEMORY[0x28223BE20](v26);
  v28 = &v40[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v29 + 16))(v28);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
  MEMORY[0x28223BE20](v30);
  v32 = &v40[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v33 + 16))(v32);
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  MEMORY[0x28223BE20](v34);
  v36 = &v40[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v37 + 16))(v36);
  v38 = _s24TokenGenerationInference08OnDeviceC14ContextFactoryC15assetRepository18inferenceOverrides10dataSourceAcA0dec5AssetI8Protocol_p_AA0deckO0_pAA0dec12ProviderDatamO0_ptcfCTf4eeen_nAA0decnI0C_AA0decpqM0CAA0decK0VTt2g5(*v28, v32, *v36);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v47 = type metadata accessor for OnDeviceInferenceContextFactory();
  v48 = &protocol witness table for OnDeviceInferenceContextFactory;
  *&v46 = v38;
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  outlined init with take of RandomNumberGenerator(&v46, a3 + 56);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return a3;
}

uint64_t type metadata accessor for OnDeviceInferenceOverrides()
{
  result = type metadata singleton initialization cache for OnDeviceInferenceOverrides;
  if (!type metadata singleton initialization cache for OnDeviceInferenceOverrides)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for OnDeviceInferenceOverrides()
{
  type metadata accessor for Overridable<Int>(319, &lazy cache variable for type metadata for Overridable<Int>);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Overridable<Int>(319, &lazy cache variable for type metadata for Overridable<String>);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Overridable<Int>(319, &lazy cache variable for type metadata for Overridable<Bool>);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Overridable<Int>(319, &lazy cache variable for type metadata for Overridable<Float>);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Overridable<Int>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Overridable();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t OnDeviceInferenceOverrides.init()()
{
  Overridable<A>.init(key:)();
  type metadata accessor for OnDeviceInferenceOverrides();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  Overridable<A>.init(key:)();
  return Overridable<A>.init(key:)();
}

void *specialized OnDeviceInferenceAssetRepository.init(dataSource:)(uint64_t a1, void *a2)
{
  v10[3] = type metadata accessor for OnDeviceInferenceProviderDataSource();
  v10[4] = &protocol witness table for OnDeviceInferenceProviderDataSource;
  v10[0] = a1;
  swift_defaultActor_initialize();
  a2[14] = 0xD000000000000020;
  a2[15] = 0x8000000220AFDD20;
  v4 = MEMORY[0x277D84F98];
  a2[16] = MEMORY[0x277D84F98];
  a2[17] = v4;
  a2[18] = v4;
  a2[19] = v4;
  a2[20] = MEMORY[0x277D84F90];
  a2[21] = v4;
  v5 = MEMORY[0x277D84FA0];
  a2[22] = MEMORY[0x277D84FA0];
  a2[23] = v5;
  outlined init with copy of DeterministicLanguageModelProtocol(v10, (a2 + 24));
  v8 = type metadata accessor for OnDeviceInferenceOverrides();
  v9 = &protocol witness table for OnDeviceInferenceOverrides;
  __swift_allocate_boxed_opaque_existential_1(&v7);
  OnDeviceInferenceOverrides.init()();
  __swift_destroy_boxed_opaque_existential_1(v10);
  outlined init with take of RandomNumberGenerator(&v7, (a2 + 29));
  return a2;
}

uint64_t type metadata completion function for DataStreamStateManager()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *specialized DataStreamStateManager.init(assetRepository:instrumenterFinalizer:)(uint64_t a1, __int128 *a2, char *a3)
{
  v12 = type metadata accessor for OnDeviceInferenceAssetRepository();
  v13 = &protocol witness table for OnDeviceInferenceAssetRepository;
  *&v11 = a1;
  swift_defaultActor_initialize();
  v6 = MEMORY[0x277D84F98];
  *(a3 + 14) = MEMORY[0x277D84F98];
  *(a3 + 15) = v6;
  *(a3 + 16) = v6;
  *(a3 + 17) = v6;
  *(a3 + 18) = v6;
  v7 = OBJC_IVAR____TtC24TokenGenerationInference22DataStreamStateManager_logger;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = __swift_project_value_buffer(v8, static Log.device);
  (*(*(v8 - 8) + 16))(&a3[v7], v9, v8);
  outlined init with take of RandomNumberGenerator(&v11, (a3 + 152));
  outlined init with take of RandomNumberGenerator(a2, (a3 + 192));
  return a3;
}

uint64_t one-time initialization function for device(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *_s24TokenGenerationInference08OnDeviceC14ContextFactoryC15assetRepository18inferenceOverrides10dataSourceAcA0dec5AssetI8Protocol_p_AA0deckO0_pAA0dec12ProviderDatamO0_ptcfCTf4eeen_nAA0decnI0C_AA0decpqM0CAA0decK0VTt2g5(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for OnDeviceInferenceAssetRepository();
  v34[3] = v7;
  v34[4] = &protocol witness table for OnDeviceInferenceAssetRepository;
  v34[0] = a1;
  v8 = type metadata accessor for OnDeviceInferenceOverrides();
  v32 = v8;
  v33 = &protocol witness table for OnDeviceInferenceOverrides;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  outlined init with take of OnDeviceInferenceAssetObjectTokenizer(a2, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceOverrides);
  v29 = v6;
  v30 = &protocol witness table for OnDeviceInferenceProviderDataSource;
  v28[0] = a3;
  type metadata accessor for OnDeviceInferenceContextFactory();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v7);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x28223BE20](v15);
  v17 = &v28[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  MEMORY[0x28223BE20](v19);
  v21 = (&v28[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v13;
  v24 = *v21;
  v10[5] = v7;
  v10[6] = &protocol witness table for OnDeviceInferenceAssetRepository;
  v10[2] = v23;
  v10[10] = v8;
  v10[11] = &protocol witness table for OnDeviceInferenceOverrides;
  v25 = __swift_allocate_boxed_opaque_existential_1(v10 + 7);
  outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v17, v25, type metadata accessor for OnDeviceInferenceOverrides);
  v10[15] = v6;
  v10[16] = &protocol witness table for OnDeviceInferenceProviderDataSource;
  v10[12] = v24;
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v10;
}

uint64_t outlined init with take of OnDeviceInferenceAssetObjectTokenizer(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::gatherEmbeddings(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this, void *a2, unint64_t a3)
{
  cgm::token_generation_inference::ajax::ane::findGatherOpWithQueryLength(a2, this + 26, &v21);
  std::string::basic_string[abi:ne200100]<0>(__p, "in_new_token_ids");
  v5 = cgm::token_generation_inference::ajax::utils::inputSpan<int>();
  if (SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = 0u;
  v19 = 0u;
  v20 = 1065353216;
  v17 = 0;
  v6 = 0;
  if (a3)
  {
    do
    {
      v7 = *(v5 + 4 * v6);
      if (ImageEmbeddingsProvider::getEmbeddings(*(this + 1), v7))
      {
        v16.__r_.__value_.__r.__words[0] = &v17;
        *(std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(__p, &v17) + 6) = v7;
        v8 = v17;
        *(v5 + 4 * v17) = 0;
      }

      else
      {
        cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::checkTokenInVocab(this, *(v5 + 4 * v17));
        v8 = v17;
      }

      v6 = v8 + 1;
      v17 = v6;
    }

    while (v6 < a3);
    v6 = *(&v19 + 1);
  }

  if (v6 != a3)
  {
    E5RT::ExecutionStream::ExecuteStreamSync(v23);
  }

  EmbeddingVectorSize = cgm::token_generation_inference::ajax::ane::getEmbeddingVectorSize();
  EmbeddingSizeInBytes = ImageEmbeddingsProvider::getEmbeddingSizeInBytes(*(this + 1));
  v11 = v19;
  if (v19)
  {
    if (EmbeddingVectorSize != EmbeddingSizeInBytes)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&v16, "Embeddings do not match the model's embedding dimension.");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &v16);
    }

    do
    {
      v12 = v11[2];
      std::string::basic_string[abi:ne200100]<0>(&v16, "gathered_embeddings");
      v13 = cgm::token_generation_inference::ajax::utils::outputSpan<unsigned char>();
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      Embeddings = ImageEmbeddingsProvider::getEmbeddings(*(this + 1), *(v11 + 6));
      if (!Embeddings)
      {
        __assert_rtn("gatherEmbeddings", "ane_ajax_e5ml_model.mm", 585, "imageEmbedding != nullptr");
      }

      memcpy((v13 + v12 * EmbeddingVectorSize), Embeddings, EmbeddingVectorSize);
      v11 = *v11;
    }

    while (v11);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::~__hash_table(__p);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_22094F7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::~__hash_table(&a16);
      cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

uint64_t cgm::token_generation_inference::ajax::ane::getEmbeddingVectorSize()
{
  std::string::basic_string[abi:ne200100]<0>(__p, "gathered_embeddings");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(OutputPortRef);
  v2 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  E5RT::TensorDescriptor::GetTensorDataType(__p, v2);
  ElementSize = E5RT::TensorDataType::GetElementSize(__p);
  E5RT::TensorDataType::~TensorDataType(__p);
  return *(*E5RT::TensorDescriptor::GetTensorShape(v2) + 24) * ElementSize;
}

unint64_t anonymous namespace::embeddingSizeInBytes(_anonymous_namespace_ *this, const E5RT::ExecutionStreamOperation *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "image_embeddings");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  E5RT::IOPort::GetPortDescriptor(&v11, OutputPortRef);
  v4 = E5RT::OperandDescriptor::TensorDescriptor(v11);
  Size = E5RT::TensorDescriptor::GetSize(v4);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  {
  }
}

void sub_22094FA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ImageEmbeddingsProvider::getEmbeddingSizeInBytes(ImageEmbeddingsProvider *this)
{
  v2 = *(this + 6);
  if (!v2 || ![v2 imageCount])
  {
    return 0;
  }

  if (*(this + 2))
  {
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = *(this + 6);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___ZNK23ImageEmbeddingsProvider23getEmbeddingSizeInBytesEv_block_invoke;
  v7[3] = &unk_27844FB78;
  v7[4] = &v8;
  [v6 getEncodedImageAt:0 withHandler:v7];
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_22094FB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::outputEmbeddingsPerImageCount(_anonymous_namespace_ *this, const E5RT::ExecutionStreamOperation *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "image_embeddings");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  E5RT::IOPort::GetPortDescriptor(&v8, OutputPortRef);
  v3 = E5RT::OperandDescriptor::TensorDescriptor(v8);
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(v3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v7 < 0)
  {
    operator delete(__p);
  }

  return *(*TensorShape + 8);
}

void sub_22094FBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

unint64_t cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::singleExtend(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this, void *a2, uint64_t *a3, unint64_t a4, unint64_t a5)
{
  v120 = *MEMORY[0x277D85DE8];
  v5 = (a2[1] - *a2) >> 2;
  v6 = v5 - a4;
  if (v5 < a4)
  {
    cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::singleExtend();
  }

  if (*(this + 296) == 1)
  {
    cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::singleExtend();
  }

  v11 = a3[1];
  if (*a3 != v11 && 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 3) != v5)
  {
    cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::singleExtend();
  }

  cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::fillCacheHolesIfNeeded(this, v5 - a4, 0);
  v12 = (*(this + 32) - *(this + 31)) >> 5;
  if (v12 - a4 + ((a2[1] - *a2) >> 2) > *(this + 10))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v88 = *(this + 10);
    std::string::basic_string[abi:ne200100]<0>(&buf, "singleExtend");
    cgm::token_generation_inference::ajax::AJAXE5Error::createContextExceededError(v88, &buf, exception);
  }

  if (v6 >= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = v6;
  }

  v91 = v6;
  cgm::token_generation_inference::ajax::ane::findBestStreamOpForQuery<cgm::token_generation_inference::ajax::utils::StreamOpPair>(this + 23, v12, v6, v13, &v103);
  v92 = v103;
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(v103);
  QueryLength = cgm::token_generation_inference::ajax::ane::getQueryLength(InputPorts);
  cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::alignContextForQueryLength(this, QueryLength, ((a2[1] - *a2) >> 2) - a4);
  ContextLength = cgm::token_generation_inference::ajax::ane::getContextLength(v92, v16);
  v19 = *(this + 31);
  v18 = *(this + 32);
  v20 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(ContextLength);
  v21 = ((v18 - v19) >> 5) / QueryLength * QueryLength;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(v103);
    std::string::basic_string[abi:ne200100]<0>(&__p, "out_logits");
    v23 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(OutputPorts, &__p);
    if (SHIBYTE(v109) < 0)
    {
      operator delete(__p);
    }

    v24 = (*(this + 32) - *(this + 31)) >> 5;
    LODWORD(buf.__r_.__value_.__l.__data_) = 134219776;
    *(buf.__r_.__value_.__r.__words + 4) = ContextLength;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = QueryLength;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
    *v111 = v23 != 0;
    *&v111[4] = 2048;
    *&v111[6] = v24;
    v112 = 2048;
    v113 = v24;
    v114 = 2048;
    v115 = v91;
    v116 = 2048;
    v117 = v21;
    v118 = 2048;
    v119 = a4;
    _os_log_impl(&dword_220940000, v20, OS_LOG_TYPE_INFO, "Using extend_%zu_%zu computingLogits: %i for %zu context with mContextSize=%zu, %zu token(s), step=%zu, startTokenOffset=%zu", &buf, 0x4Eu);
  }

  std::string::basic_string[abi:ne200100]<0>(&buf, "in_step");
  v25 = cgm::token_generation_inference::ajax::utils::inputSpan<int>();
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *v25 = v21;
  v26 = (*(this + 32) - *(this + 31)) >> 5;
  v94 = v26 - v21;
  if (v26 < v21)
  {
    __assert_rtn("singleExtend", "ane_ajax_e5ml_model.mm", 434, "mContextTokens.size() >= numContextTokensNeeded");
  }

  v27 = cgm::token_generation_inference::ajax::ane::findInTokenIDSpan(v92, this + 26);
  __p = 0;
  v108 = 0;
  v109 = 0;
  std::vector<std::vector<signed char>>::reserve(&__p, QueryLength);
  if (v26 != v21)
  {
    v28 = 0;
    do
    {
      v29 = *(this + 31) + 32 * v21 + 32 * v28;
      LODWORD(buf.__r_.__value_.__l.__data_) = *v29;
      *v111 = 0;
      *&buf.__r_.__value_.__r.__words[1] = 0uLL;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&buf.__r_.__value_.__l.__size_, *(v29 + 8), *(v29 + 16), *(v29 + 16) - *(v29 + 8));
      data = buf.__r_.__value_.__l.__data_;
      if (LODWORD(buf.__r_.__value_.__l.__data_) == -1)
      {
        data = 0;
      }

      v27[v28] = data;
      std::vector<std::vector<signed char>>::push_back[abi:ne200100](&__p, &buf.__r_.__value_.__l.__size_);
      if (buf.__r_.__value_.__l.__size_)
      {
        buf.__r_.__value_.__r.__words[2] = buf.__r_.__value_.__l.__size_;
        operator delete(buf.__r_.__value_.__l.__size_);
      }

      ++v28;
    }

    while (v28 < v94);
  }

  v90 = v21;
  v31 = QueryLength - v94;
  if (QueryLength != v94)
  {
    v32 = 0;
    do
    {
      if (v32 >= ((a2[1] - *a2) >> 2) - a4)
      {
        break;
      }

      v33 = v32 + a4;
      v34 = *(*a2 + 4 * (v32 + a4));
      v27[v94 + v32] = v34;
      v35 = *a3;
      v36 = a3[1];
      if (*a3 == v36)
      {
        v37 = (*(this + 32) - *(this + 31)) >> 5;
        v39 = *(this + 34);
        v38 = *(this + 35);
        v40 = v38 - v39;
        if (v38 == v39)
        {
          v41 = 0;
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = v40 >> 3;
          if (v43 <= 1)
          {
            v43 = 1;
          }

          while (1)
          {
            v44 = v41 ? *&v39[8 * v41] + ~*&v39[8 * v41 - 8] : *v39;
            if (v37 - v42 <= v44)
            {
              break;
            }

            v42 += v44;
            if (v43 == ++v41)
            {
              v41 = v43;
              break;
            }
          }
        }

        LOBYTE(v100) = 1;
        std::vector<signed char>::vector[abi:ne200100](&buf, v37 + 1 - v41);
        std::vector<std::vector<signed char>>::push_back[abi:ne200100](&__p, &buf);
        if (buf.__r_.__value_.__r.__words[0])
        {
          buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v33 >= 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3))
        {
          __assert_rtn("singleExtend", "ane_ajax_e5ml_model.mm", 469, "indexInTokens < tokenMasks.size()");
        }

        std::vector<std::vector<signed char>>::push_back[abi:ne200100](&__p, (v35 + 24 * v33));
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = v34;
      *v111 = 0;
      *&buf.__r_.__value_.__r.__words[1] = 0uLL;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&buf.__r_.__value_.__l.__size_, *(v108 - 3), *(v108 - 2), *(v108 - 2) - *(v108 - 3));
      std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::push_back[abi:ne200100](this + 31, &buf);
      if (buf.__r_.__value_.__l.__size_)
      {
        buf.__r_.__value_.__r.__words[2] = buf.__r_.__value_.__l.__size_;
        operator delete(buf.__r_.__value_.__l.__size_);
      }

      ++v32;
    }

    while (v32 < v31);
  }

  v100 = 0;
  v101 = 0;
  v102 = 0;
  v45 = __p;
  v46 = v108;
  if (__p != v108)
  {
    do
    {
      cgm::token_generation_inference::ajax::utils::addHolesToMask(v45, this + 34, &buf);
      std::vector<std::vector<signed char>>::push_back[abi:ne200100](&v100, &buf);
      if (buf.__r_.__value_.__r.__words[0])
      {
        buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v45 += 3;
    }

    while (v45 != v46);
  }

  if (v31 >= v91)
  {
    v47 = v91;
  }

  else
  {
    v47 = QueryLength - v94;
  }

  v48 = E5RT::ExecutionStreamOperation::GetInputPorts(v92);
  std::string::basic_string[abi:ne200100]<0>(&buf, "transformer_input");
  v49 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v48, &buf.__r_.__value_.__l.__data_);
  v51 = v49;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v52 = v47 + v94;
  if (v51)
  {
    cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::gatherEmbeddings(this, QueryLength, v47 + v94);
  }

  else if (*(this + 297) == 1)
  {
    if (QueryLength <= 1)
    {
      v53 = 1;
    }

    else
    {
      v53 = QueryLength;
    }

    do
    {
      if (*v27 >= *(this + 24))
      {
        v54 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v49);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = *v27;
          LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v55;
          _os_log_impl(&dword_220940000, v54, OS_LOG_TYPE_INFO, "Ignoring unknown token %d", &buf, 8u);
        }

        *v27 = 0;
      }

      ++v27;
      --v53;
    }

    while (v53);
  }

  else
  {
    if (!ImageEmbeddingsProvider::empty(*(this + 1)))
    {
      v89 = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&buf, "Images in prompt but model does not support external embedding input");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v89, 6, &buf);
    }

    if (QueryLength <= 1)
    {
      v56 = 1;
    }

    else
    {
      v56 = QueryLength;
    }

    do
    {
      v57 = *v27++;
      cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::checkTokenInVocab(this, v57);
      --v56;
    }

    while (v56);
  }

  if (cgm::token_generation_inference::ajax::ane::hasCausalMaskAndPositionId(v92, v50))
  {
    std::string::basic_string[abi:ne200100]<0>(&buf, "in_position_ids");
    v58 = _ZN3cgm26token_generation_inference4ajax5utils9inputSpanIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNS4_24ExecutionStreamOperationERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEE();
    v60 = v59;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (2 * v60 >= 1)
    {
      memset(v58, 255, 2 * v60);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "in_causal_mask");
    v61 = _ZN3cgm26token_generation_inference4ajax5utils9inputSpanIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNS4_24ExecutionStreamOperationERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEE();
    v63 = v62;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (2 * v63 >= 1)
    {
      memset_pattern16(v61, &unk_220AE5280, 2 * v63);
    }

    v64 = v100;
    if (v101 != v100)
    {
      v65 = 0;
      v66 = 0xAAAAAAAAAAAAAAABLL * ((v101 - v100) >> 3);
      if (v66 <= 1)
      {
        v66 = 1;
      }

      do
      {
        v67 = *(v64 + 24 * v65);
        v68 = *(v64 + 24 * v65 + 8) - v67;
        if (v68)
        {
          if (v68 <= 1)
          {
            v69 = 1;
          }

          else
          {
            v69 = *(v64 + 24 * v65 + 8) - v67;
          }

          v70 = -1;
          v71 = v61;
          do
          {
            v72 = *v67++;
            if (v72 == 1)
            {
              *v71 = 0;
              ++v70;
            }

            v71 += QueryLength;
            --v69;
          }

          while (v69);
          if ((v70 & 0x80000000) == 0)
          {
            *(v58 + v65) = v70;
          }
        }

        ++v65;
        v61 += 2;
      }

      while (v65 != v66);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&buf, "in_relative_positions_CT");
    v96.__r_.__value_.__r.__words[0] = _ZN3cgm26token_generation_inference4ajax5utils9inputSpanIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNS4_24ExecutionStreamOperationERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEE();
    v96.__r_.__value_.__l.__size_ = v73;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v74 = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEmm(&v96, 0, *(this + 10) * QueryLength);
    v76 = v74;
    v77 = v75;
    if ((2 * v75) >= 1)
    {
      memset_pattern16(v74, &unk_220AE5280, 2 * v75);
    }

    cgm::token_generation_inference::ajax::utils::setRelativePositions(v76, v77, v90, v52, QueryLength, 0, &v100);
  }

  if (*(this + 79) < 0)
  {
    v78 = *(this + 8);
    if (!v78)
    {
      goto LABEL_112;
    }

    std::string::__init_copy_ctor_external(&v99, *(this + 7), v78);
  }

  else
  {
    if (!*(this + 79))
    {
      goto LABEL_112;
    }

    v99 = *(this + 56);
  }

  std::to_string(&v96, *(this + 16));
  v79 = std::string::insert(&v96, 0, "Inference_", 0xAuLL);
  v80 = *&v79->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v80;
  v79->__r_.__value_.__l.__size_ = 0;
  v79->__r_.__value_.__r.__words[2] = 0;
  v79->__r_.__value_.__r.__words[0] = 0;
  v81 = std::string::append(&buf, "_", 1uLL);
  v82 = *&v81->__r_.__value_.__l.__data_;
  v98 = v81->__r_.__value_.__r.__words[2];
  *v97 = v82;
  v81->__r_.__value_.__l.__size_ = 0;
  v81->__r_.__value_.__r.__words[2] = 0;
  v81->__r_.__value_.__r.__words[0] = 0;
  E5RT::ExecutionStreamOperation::SerializeInferenceFrameData();
  if (SHIBYTE(v98) < 0)
  {
    operator delete(v97[0]);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

LABEL_112:
  v83 = qos_class_self();
  v95 = v106;
  if (v106)
  {
    atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT_Private::SetQualityOfServiceForStream();
  v84 = v95;
  if (v95)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v95);
  }

  v85 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v84);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
  {
    cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::singleExtend(v83, v85);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(v105);
  *(this + 18) = v94;
  *(this + 19) = v52;
  ++*(this + 16);
  *(this + 17) = QueryLength;
  buf.__r_.__value_.__r.__words[0] = &v100;
  std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](&buf);
  buf.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (v106)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v106);
  }

  if (v104)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v104);
  }

  return v47;
}

void sub_2209506FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void ***a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void **p_p, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v52 - 169) < 0)
  {
    operator delete(*(v52 - 192));
    if ((v51 & 1) == 0)
    {
LABEL_6:
      a18 = &p_p;
      std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](&a18);
      p_p = &__p;
      std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](&p_p);
      cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a41);
      _Unwind_Resume(a1);
    }
  }

  else if (!v51)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v50);
  goto LABEL_6;
}

BOOL cgm::token_generation_inference::ajax::ane::hasCausalMaskAndPositionId(cgm::token_generation_inference::ajax::ane *this, const E5RT::ExecutionStreamOperation *a2)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this);
  std::string::basic_string[abi:ne200100]<0>(v9, "in_causal_mask");
  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(InputPorts, v9))
  {
    v4 = E5RT::ExecutionStreamOperation::GetInputPorts(this);
    std::string::basic_string[abi:ne200100]<0>(__p, "in_position_ids");
    v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v4, __p) != 0;
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return v5;
}

void sub_2209509BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN3cgm26token_generation_inference4ajax5utils9inputSpanIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNS4_24ExecutionStreamOperationERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEE()
{
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MemoryObjectRef = E5RT::IOPort::GetMemoryObjectRef(InputPortRef);
  v2 = E5RT::MemoryObject::TryAsBuffer(MemoryObjectRef);
  result = E5RT::BufferObject::GetDataSpan(v2);
  if (v4 < 2)
  {
    return 0;
  }

  return result;
}

void std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<signed char>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<signed char>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::forward(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this, void *a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  if (a2[1] != *a2)
  {
    v9 = this;
    v10 = 0;
    do
    {
      v11 = cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::singleExtend(v9, a2, a3, v10, a4);
      (*(*v9 + 40))(v13, v9);
      v12 = *(a5 + 24);
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v10 += v11;
      this = (*(*v12 + 48))(v12, v13);
    }

    while (v10 != (a2[1] - *a2) >> 2);
  }

  return this;
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::getLastForwardLogits(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this@<X0>, void *a2@<X8>)
{
  v5 = *(this + 18);
  v4 = *(this + 19);
  cgm::token_generation_inference::ajax::ane::anyOpComputingLogits(this + 23, &v20);
  std::string::basic_string[abi:ne200100]<0>(&__p, "out_logits");
  v19[0] = _ZN3cgm26token_generation_inference4ajax5utils10outputSpanIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNS4_24ExecutionStreamOperationERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEE();
  v19[1] = v6;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  v7 = cgm::token_generation_inference::ajax::ane::areLogitsContiguousForTokens(&v20);
  v8 = v4 - v5;
  v9 = *(this + 18);
  if (v7)
  {
    v10 = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEm(v19, *(this + 12) * v9);
    *a2 = v8;
    a2[1] = v10;
    a2[2] = v11;
    a2[3] = 1;
    v12 = *(this + 12);
    a2[4] = v12;
    a2[5] = v12;
  }

  else
  {
    v13 = _ZNK4E5RT4SpanIDF16_Lm18446744073709551615EE5SliceEm(v19, v9);
    *a2 = v8;
    a2[1] = v13;
    v14 = *(this + 17);
    a2[2] = v15;
    a2[3] = v14;
    v16 = *(this + 12);
    a2[4] = 1;
    a2[5] = v16;
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void cgm::token_generation_inference::ajax::ane::anyOpComputingLogits(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    while (1)
    {
      OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*v3);
      std::string::basic_string[abi:ne200100]<0>(&__p, "out_logits");
      v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(OutputPorts, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v7)
      {
        break;
      }

      v3 += 32;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }

    v4 = a1[1];
  }

  if (v3 == v4)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "No ops computing logits were found on the model.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &__p);
  }

  *a2 = *v3;
  v8 = *(v3 + 8);
  a2[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  a2[2] = *(v3 + 16);
  v9 = *(v3 + 24);
  a2[3] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_220950E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t _ZN3cgm26token_generation_inference4ajax5utils10outputSpanIDF16_EEN4E5RT4SpanIT_Lm18446744073709551615EEERNS4_24ExecutionStreamOperationERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEE()
{
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  MemoryObjectRef = E5RT::IOPort::GetMemoryObjectRef(OutputPortRef);
  v2 = E5RT::MemoryObject::TryAsBuffer(MemoryObjectRef);
  result = E5RT::BufferObject::GetDataSpan(v2);
  if (v4 < 2)
  {
    return 0;
  }

  return result;
}

BOOL cgm::token_generation_inference::ajax::ane::areLogitsContiguousForTokens(E5RT::ExecutionStreamOperation **a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "out_logits");
  OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
  E5RT::IOPort::GetPortDescriptor(&v14, OutputPortRef);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v3 = E5RT::OperandDescriptor::TensorDescriptor(v14);
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(v3);
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
  QueryLength = cgm::token_generation_inference::ajax::ane::getQueryLength(InputPorts);
  v7 = *TensorShape;
  if (TensorShape[1] - *TensorShape != 32)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Logits have unexpected rank");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &__p);
  }

  v8 = QueryLength;
  v9 = *(v7 + 8);
  if (QueryLength != v9 && QueryLength != *(v7 + 24))
  {
    v12 = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Logits have unexpected layout, can't find token dim");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(v12, 1, &__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v8 == v9;
}

void sub_220951028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      if (a17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a17);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

uint64_t cgm::token_generation_inference::ajax::ane::getQueryLength(void *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_ids");
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (v2)
  {
LABEL_3:
    std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_ids");
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
    if (!v4)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v6 = v4[5];
    v5 = v4[6];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_18;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "transformer_input");
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v7)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Cannot find in_token_id or transformer_input on extend/prompt function.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "transformer_input");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = v8[5];
  v5 = v8[6];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_18:
  E5RT::IOPort::GetPortDescriptor(&__p, v6);
  v9 = E5RT::OperandDescriptor::TensorDescriptor(__p.__r_.__value_.__l.__data_);
  v10 = *(*E5RT::TensorDescriptor::GetTensorShape(v9) + 8);
  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v10;
}

{
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_ids");
  v2 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (v2)
  {
LABEL_3:
    std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_ids");
    v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
    if (!v4)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v6 = v4[5];
    v5 = v4[6];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_18;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "transformer_input");
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v7)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Cannot find in_token_id or transformer_input on extend/prompt function.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "transformer_input");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = v8[5];
  v5 = v8[6];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_18:
  v9 = E5RT::OperandDescriptor::TensorDescriptor(v6);
  v10 = *(*E5RT::TensorDescriptor::GetTensorShape(v9) + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v10;
}
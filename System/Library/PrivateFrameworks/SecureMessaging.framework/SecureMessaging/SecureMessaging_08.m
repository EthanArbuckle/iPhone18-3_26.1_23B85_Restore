uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for MetricCollector.Event();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging15MetricCollectorV5EventVGMd, &_ss18_DictionaryStorageCySS15SecureMessaging15MetricCollectorV5EventVGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        outlined init with take of XPCUtils.XPCInterfaceRequest(v31, v45, type metadata accessor for MetricCollector.Event);
      }

      else
      {
        outlined init with copy of XPCUtils.XPCInterfaceRequest(v31, v45, type metadata accessor for MetricCollector.Event);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = outlined init with take of XPCUtils.XPCInterfaceRequest(v45, *(v12 + 56) + v30 * v20, type metadata accessor for MetricCollector.Event);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v49 = type metadata accessor for MLS.Client.KeyPackage();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8SwiftMLS0D0O6ClientO10KeyPackageVGMd, &_ss18_DictionaryStorageCySS8SwiftMLS0D0O6ClientO10KeyPackageVGMR);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMd, &_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v39 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v40)
      {
        outlined init with take of XPCUtils.XPCInterfaceRequest(v28, v9, type metadata accessor for XPCUtils.XPCInterfaceRequest);
      }

      else
      {
        outlined init with copy of XPCUtils.XPCInterfaceRequest(v28, v9, type metadata accessor for XPCUtils.XPCInterfaceRequest);
      }

      result = MEMORY[0x266754DC0](*(v13 + 40), v26);
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = outlined init with take of XPCUtils.XPCInterfaceRequest(v9, *(v13 + 56) + v27 * v21, type metadata accessor for XPCUtils.XPCInterfaceRequest);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v10 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DataVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DataVGMR);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v52 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v7 + 16);
    v45 = v10;
    v46 = v7;
    v49 = (v7 + 32);
    v20 = result + 64;
    v21 = v48;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v46 + 72) * v28;
      v50 = *(v46 + 72);
      v51 = v25;
      if (v47)
      {
        (*v49)(v21, v29, v52);
        v30 = (*(v10 + 56) + 16 * v28);
        v32 = *v30;
        v31 = v30[1];
      }

      else
      {
        (*v44)(v21, v29, v52);
        v33 = (*(v10 + 56) + 16 * v28);
        v32 = *v33;
        v31 = v33[1];
        outlined copy of Data._Representation(*v33, v31);
      }

      v34 = *(v13 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v21 = v48;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v21 = v48;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v13 + 48) + v50 * v22, v21, v52);
      v23 = (*(v13 + 56) + 16 * v22);
      *v23 = v32;
      v23[1] = v31;
      ++*(v13 + 16);
      v10 = v45;
      v18 = v51;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

{
  v3 = v2;
  v49 = type metadata accessor for UUID();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV10Foundation4UUIDVGMR);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08OutgoingJ5EntryVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08OutgoingJ5EntryVGMR);
  v50 = a2;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v5 + 16))
  {
    v46 = v2;
    v9 = 0;
    v48 = (v5 + 64);
    v49 = v5;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v47 = (v10 + 63) >> 6;
    v13 = v7 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v19 = (v12 - 1) & v12;
LABEL_17:
      v23 = v18 | (v9 << 6);
      v56 = v19;
      if (v50)
      {
        v24 = (*(v5 + 48) + 48 * v23);
        v25 = *v24;
        v26 = v24[1];
        v28 = v24[2];
        v27 = v24[3];
        v58 = v24[4];
        v57 = v24[5];
        v29 = *(v5 + 56) + 296 * v23;
        v67 = *(v29 + 128);
        v68 = *(v29 + 144);
        v69 = *(v29 + 160);
        v70 = *(v29 + 176);
        v63 = *(v29 + 64);
        v64 = *(v29 + 80);
        v65 = *(v29 + 96);
        v66 = *(v29 + 112);
        v59 = *v29;
        v60 = *(v29 + 16);
        v61 = *(v29 + 32);
        v62 = *(v29 + 48);
        v30 = *(v29 + 200);
        v31 = *(v29 + 232);
        v74 = *(v29 + 216);
        v75 = v31;
        v32 = *(v29 + 256);
        v76 = *(v29 + 248);
        v72 = *(v29 + 184);
        v73 = v30;
        v54 = *(v29 + 264);
        v55 = v32;
        v52 = *(v29 + 272);
        v51 = *(v29 + 280);
        v53 = *(v29 + 288);
      }

      else
      {
        v33 = *(v5 + 56);
        v34 = (*(v5 + 48) + 48 * v23);
        v35 = *v34;
        v26 = v34[1];
        v28 = v34[2];
        v27 = v34[3];
        v36 = v34[5];
        v58 = v34[4];
        memcpy(__dst, (v33 + 296 * v23), 0x128uLL);
        v54 = *(&__dst[16] + 1);
        v55 = *&__dst[16];
        v52 = *&__dst[17];
        v53 = *&__dst[18];
        v51 = BYTE8(__dst[17]);

        v57 = v36;

        outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dst, &v59);
        v67 = __dst[8];
        v68 = __dst[9];
        v69 = __dst[10];
        v70 = __dst[11];
        v63 = __dst[4];
        v64 = __dst[5];
        v65 = __dst[6];
        v66 = __dst[7];
        v59 = __dst[0];
        v60 = __dst[1];
        v61 = __dst[2];
        v62 = __dst[3];
        v74 = *(&__dst[13] + 8);
        v75 = *(&__dst[14] + 8);
        v76 = *(&__dst[15] + 1);
        v25 = v35;
        v72 = *(&__dst[11] + 8);
        v73 = *(&__dst[12] + 8);
      }

      v37 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v38 = -1 << *(v8 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v13 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v15 = v26;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v13 + 8 * v40);
          if (v44 != -1)
          {
            v14 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v39) & ~*(v13 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v15 = v26;
LABEL_9:
      __dst[8] = v67;
      __dst[9] = v68;
      __dst[10] = v69;
      __dst[4] = v63;
      __dst[5] = v64;
      __dst[6] = v65;
      __dst[7] = v66;
      __dst[0] = v59;
      __dst[1] = v60;
      __dst[2] = v61;
      __dst[3] = v62;
      *(&__dst[11] + 8) = v72;
      *(&__dst[14] + 8) = v75;
      *(&__dst[13] + 8) = v74;
      LOBYTE(__dst[11]) = v70;
      *(&__dst[15] + 1) = v76;
      *(&__dst[12] + 8) = v73;
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v16 = (*(v8 + 48) + 48 * v14);
      *v16 = v25;
      v16[1] = v15;
      v16[2] = v28;
      v16[3] = v27;
      v16[4] = v58;
      v16[5] = v57;
      v17 = *(v8 + 56) + 296 * v14;
      *(v17 + 48) = __dst[3];
      *(v17 + 32) = __dst[2];
      *(v17 + 16) = __dst[1];
      *v17 = __dst[0];
      *(v17 + 112) = __dst[7];
      *(v17 + 96) = __dst[6];
      *(v17 + 80) = __dst[5];
      *(v17 + 64) = __dst[4];
      *(v17 + 176) = __dst[11];
      *(v17 + 160) = __dst[10];
      *(v17 + 144) = __dst[9];
      *(v17 + 128) = __dst[8];
      *(v17 + 240) = __dst[15];
      *(v17 + 224) = __dst[14];
      *(v17 + 208) = __dst[13];
      *(v17 + 192) = __dst[12];
      *(v17 + 256) = v55;
      *(v17 + 264) = v54;
      *(v17 + 272) = v52;
      *(v17 + 280) = v51;
      *(v17 + 288) = v53;
      ++*(v8 + 16);
      v5 = v49;
      v12 = v56;
    }

    v20 = v9;
    result = v48;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v47)
      {
        break;
      }

      v22 = v48[v9];
      ++v20;
      if (v22)
      {
        v18 = __clz(__rbit64(v22));
        v19 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v45 = 1 << *(v5 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v48, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v48 = -1 << v45;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08IncomingJ5EntryVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08IncomingJ5EntryVGMR);
  v53 = a2;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v5 + 16))
  {
    v49 = v2;
    v9 = 0;
    v51 = (v5 + 64);
    v52 = v5;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v50 = (v10 + 63) >> 6;
    v13 = v7 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v18 = (v12 - 1) & v12;
LABEL_17:
      v22 = v17 | (v9 << 6);
      v54 = v18;
      if (v53)
      {
        v23 = (*(v5 + 48) + 48 * v22);
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = v23[3];
        v28 = v23[4];
        v55 = v23[5];
        v29 = (*(v5 + 56) + 112 * v22);
        v66 = v29[3];
        v67 = v29[4];
        v68 = v29[5];
        v69 = v29[6];
        v63 = *v29;
        v64 = v29[1];
        v65 = v29[2];
      }

      else
      {
        v30 = *(v5 + 56);
        v31 = (*(v5 + 48) + 48 * v22);
        v24 = *v31;
        v25 = v31[1];
        v32 = v31[2];
        v27 = v31[3];
        v28 = v31[4];
        v33 = v31[5];
        v34 = (v30 + 112 * v22);
        v36 = v34[1];
        v35 = v34[2];
        v56 = *v34;
        v57 = v36;
        v58 = v35;
        v37 = v34[6];
        v39 = v34[3];
        v38 = v34[4];
        v61 = v34[5];
        v62 = v37;
        v59 = v39;
        v60 = v38;

        v55 = v33;
        v26 = v32;

        outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v56, &v63);
        v67 = v60;
        v68 = v61;
        v69 = v62;
        v63 = v56;
        v64 = v57;
        v65 = v58;
        v66 = v59;
      }

      v40 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v41 = -1 << *(v8 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v13 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v13 + 8 * v43);
          if (v47 != -1)
          {
            v14 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v42) & ~*(v13 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v8 + 48) + 48 * v14);
      *v15 = v24;
      v15[1] = v25;
      v15[2] = v26;
      v15[3] = v27;
      v15[4] = v28;
      v15[5] = v55;
      v16 = (*(v8 + 56) + 112 * v14);
      v16[3] = v66;
      v16[4] = v67;
      v16[5] = v68;
      v16[6] = v69;
      *v16 = v63;
      v16[1] = v64;
      v16[2] = v65;
      ++*(v8 + 16);
      v5 = v52;
      v12 = v54;
    }

    v19 = v9;
    result = v51;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v50)
      {
        break;
      }

      v21 = v51[v9];
      ++v19;
      if (v21)
      {
        v17 = __clz(__rbit64(v21));
        v18 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_36;
    }

    v48 = 1 << *(v5 + 32);
    v3 = v49;
    if (v48 >= 64)
    {
      bzero(v51, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v48;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcGMd, _ss18_DictionaryStorageCySi15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for MetricCollector.Event();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging15MetricCollectorV5EventVGMd, &_ss18_DictionaryStorageCySS15SecureMessaging15MetricCollectorV5EventVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        outlined init with copy of XPCUtils.XPCInterfaceRequest(v22 + v28, v33, type metadata accessor for MetricCollector.Event);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        outlined init with take of XPCUtils.XPCInterfaceRequest(v27, *(v29 + 56) + v28, type metadata accessor for MetricCollector.Event);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO10EventQueueCGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO10EventQueueCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 32 * v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 32 * v17;
        v23 = *(v18 + 24);
        *v22 = *v18;
        *(v22 + 8) = v19;
        *(v22 + 16) = v20;
        *(v22 + 24) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        outlined copy of MLS.AllMember();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMd, &_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        outlined init with copy of XPCUtils.XPCInterfaceRequest(*(v5 + 56) + v24, v27, type metadata accessor for XPCUtils.XPCInterfaceRequest);
        v25 = v29;
        *(*(v29 + 48) + 8 * v21) = v22;
        result = outlined init with take of XPCUtils.XPCInterfaceRequest(v23, *(v25 + 56) + v24, type metadata accessor for XPCUtils.XPCInterfaceRequest);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v7 = v29;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v17 *= 32;
        v19 = (*(v2 + 56) + v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = *(*(v2 + 48) + v18);
        *(*(v4 + 48) + v18) = v24;
        v25 = (*(v4 + 56) + v17);
        *v25 = v20;
        v25[1] = v21;
        v25[2] = v22;
        v25[3] = v23;
        outlined copy of Data._Representation(v24, *(&v24 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV10Foundation4DataVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v17 *= 16;
        v23 = (*(v4 + 48) + v18);
        v24 = *(*(v2 + 56) + v17);
        *v23 = *v19;
        v23[1] = v20;
        v23[2] = v21;
        v23[3] = v22;
        *(*(v4 + 56) + v17) = v24;

        result = outlined copy of Data._Representation(v24, *(&v24 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        outlined init with copy of ServerBag.MLS(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of MLS.KeyUpdatePolicy(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVSayAE15PersistedMemberVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVSayAE15PersistedMemberVGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO10XPCRequest_pGMd, &_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO10XPCRequest_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of ServerBag.MLS(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = outlined init with take of MLS.KeyUpdatePolicy(v19, *(v4 + 56) + 40 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 48 * v17;
        v19 = *(v2 + 48) + 48 * v17;
        v20 = *(v19 + 8);
        v21 = *(v19 + 16);
        v22 = *(v19 + 40);
        v17 *= 16;
        v23 = *(v4 + 48) + v18;
        v24 = *(v19 + 24);
        v25 = *(*(v2 + 56) + v17);
        *v23 = *v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v24;
        *(v23 + 40) = v22;
        *(*(v4 + 56) + v17) = v25;

        outlined copy of Data._Representation(v21, v24);
        result = outlined copy of Data._Representation(v25, *(&v25 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV10Foundation4DataVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v17 *= 16;
        v23 = (*(v4 + 48) + v18);
        v24 = *(*(v2 + 56) + v17);
        *v23 = *v19;
        v23[1] = v20;
        v23[2] = v21;
        v23[3] = v22;
        *(*(v4 + 56) + v17) = v24;

        outlined copy of Data._Representation(v21, v22);
        result = outlined copy of Data._Representation(v24, *(&v24 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08OutgoingJ5EntryVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08OutgoingJ5EntryVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    v28 = v1;
    __src = (v2 + 64);
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, __src, 8 * v6);
    }

    v8 = 0;
    v30 = v2;
    v31 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v32 = (v11 - 1) & v11;
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 48 * v16;
        v18 = *(v2 + 56);
        v19 = (*(v2 + 48) + 48 * v16);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v25 = v19[4];
        v24 = v19[5];
        v26 = 296 * v16;
        memcpy(__dst, (v18 + 296 * v16), 0x128uLL);
        v27 = (*(v31 + 48) + v17);
        *v27 = v20;
        v27[1] = v21;
        v27[2] = v22;
        v27[3] = v23;
        v2 = v30;
        v27[4] = v25;
        v27[5] = v24;
        memcpy((*(v31 + 56) + v26), __dst, 0x128uLL);

        result = outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dst, v33);
        v11 = v32;
      }

      while (v32);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v28;
        v4 = v31;
        goto LABEL_21;
      }

      v15 = *(__src + v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v32 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08IncomingJ5EntryVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08IncomingJ5EntryVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 48 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 48 * v17);
        v22 = *v20;
        v21 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[4];
        v26 = v20[5];
        v17 *= 112;
        v27 = *(v19 + v17 + 96);
        v29 = *(v19 + v17 + 48);
        v28 = *(v19 + v17 + 64);
        v45 = *(v19 + v17 + 80);
        v46 = v27;
        v43 = v29;
        v44 = v28;
        v31 = *(v19 + v17 + 16);
        v30 = *(v19 + v17 + 32);
        v40 = *(v19 + v17);
        v41 = v31;
        v42 = v30;
        v32 = (*(v4 + 48) + v18);
        *v32 = v22;
        v32[1] = v21;
        v32[2] = v23;
        v32[3] = v24;
        v32[4] = v25;
        v32[5] = v26;
        v33 = (*(v4 + 56) + v17);
        v34 = v40;
        v35 = v42;
        v33[1] = v41;
        v33[2] = v35;
        *v33 = v34;
        v36 = v43;
        v37 = v44;
        v38 = v46;
        v33[5] = v45;
        v33[6] = v38;
        v33[3] = v36;
        v33[4] = v37;

        result = outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v40, &v39);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVAE21EventsSinceLastUpdateVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVAE21EventsSinceLastUpdateVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v17 *= 24;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        v26 = *(v24 + 8);
        LOBYTE(v24) = *(v24 + 16);
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v27[2] = v22;
        v27[3] = v23;
        v28 = *(v4 + 56) + v17;
        *v28 = v25;
        *(v28 + 8) = v26;
        *(v28 + 16) = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDVSiGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDVSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 48 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = v18[4];
        v24 = v18[5];
        v25 = (*(v4 + 48) + 48 * v17);
        *v25 = *v18;
        v25[1] = v19;
        v25[2] = v20;
        v25[3] = v21;
        v25[4] = v23;
        v25[5] = v24;
        *(*(v4 + 56) + 8 * v17) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        outlined init with copy of ServerBag.MLS(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of MLS.KeyUpdatePolicy(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO16KeyUpdateTrackerCGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO16KeyUpdateTrackerCGMR);
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v36 = type metadata accessor for MLS.Client.KeyPackage();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8SwiftMLS0D0O6ClientO10KeyPackageVGMd, &_ss18_DictionaryStorageCySS8SwiftMLS0D0O6ClientO10KeyPackageVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DataVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DataVGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = (v26 + 16 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = (*(v31 + 56) + v27);
        v6 = v37;
        *v32 = v29;
        v32[1] = v30;
        result = outlined copy of Data._Representation(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV10Foundation4UUIDVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MLS.KeyPackageInfo] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t type metadata instantiation function for MLS.KeyPackageRetrievalResult()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MLS.KeyPackageRetrievalResult(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.KeyPackageRetrievalResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t outlined init with copy of XPCUtils.XPCInterfaceRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of MLS.ClientCoordinator.keyPackage.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.createGroup(identifier:otherMembers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 16);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.joinGroup(identifier:otherMembers:welcome:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 24);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.delete(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.group(identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.update(groupDetails:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.otherMembers(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 56);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.add(members:toGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 64);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.kick(members:fromGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 72);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.leave(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 80);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.downgrade(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 88);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.applicationEncrypt(data:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 96);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.applicationEncrypt(groupName:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 104);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.applicationSign(input:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 112);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.processIncoming(message:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 120);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.processIncoming(message:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 128);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.processIncoming(failureToDecrypt:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 136);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.processIncoming(errorMessage:withGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 144);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.ClientCoordinator.processIncoming(groupName:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 152);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t MLS.LeaveGroupOperation.group.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MLS.LeaveGroupOperation.context.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of Data?(v4, v5);
}

uint64_t MLS.LeaveGroupOperation.eventSender.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return swift_unknownObjectRetain();
}

uint64_t MLS.LeaveGroupOperation.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  a1[1] = v2;
}

uint64_t MLS.LeaveGroupOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS19LeaveGroupOperation_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.LeaveGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[91] = v3;
  v4[90] = a2;
  v4[89] = a1;
  v6 = type metadata accessor for UUID();
  v4[92] = v6;
  v7 = *(v6 - 8);
  v4[93] = v7;
  v8 = *(v7 + 64) + 15;
  v4[94] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Group.Message();
  v4[95] = v9;
  v10 = *(v9 - 8);
  v4[96] = v10;
  v11 = *(v10 + 64) + 15;
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v12 = type metadata accessor for MetricCollector.Event();
  v4[99] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static MLSActor.shared;
  v4[103] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), v14, 0);
}

uint64_t MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v26 = v0;
  v1 = v0[91];
  v0[86] = v0[102];
  v2 = *(v1 + 32);
  v0[104] = v2;
  v3 = *(v1 + 40);
  v0[105] = v3;
  v0[106] = OBJC_IVAR____TtCO15SecureMessaging3MLS19LeaveGroupOperation_logger;
  swift_bridgeObjectRetain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v25);
    _os_log_impl(&dword_264F1F000, v4, v5, "LeaveGroupOperation leaving group { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v8 = v0[102];
  v9 = v0[101];
  v10 = v0[100];
  v11 = v0[99];
  v12 = v0[90];
  Date.init()();
  v13 = *(v11 + 20);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  outlined init with take of MetricCollector.Event(v9, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v16 = v25;
  v0[107] = v25;

  v0[86] = v16;
  v17 = v12[3];
  v18 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v17);
  v19 = *(v18 + 88);
  v24 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[108] = v21;
  *v21 = v0;
  v21[1] = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  v22 = v0[98];

  return v24(v22, v17, v18);
}

{
  v2 = *v1;
  v3 = *(*v1 + 864);
  v10 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v4 = v2[107];
    v5 = v2[105];
    v6 = v2[103];

    v7 = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v6;
  }

  else
  {
    v8 = v2[103];
    v7 = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v67 = v0;
  v64 = (v0 + 200);
  v65 = (v0 + 448);
  v1 = *(v0 + 848);
  v2 = *(v0 + 840);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 728);
  v8._countAndFlagsBits = 0x534C4D7466697753;
  v8._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v8);
  (*(v5 + 16))(v4, v3, v6);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 840);
    v12 = *(v0 + 832);
    v13 = *(v0 + 776);
    v14 = *(v0 + 768);
    v15 = *(v0 + 760);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v66 = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v66);
    *(v16 + 12) = 2080;
    _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MLS.Group.Message and conformance MLS.Group.Message, MEMORY[0x277D6AAD8]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v66);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_264F1F000, v9, v10, "LeaveGroupOperation created proposal for group { identifier: %s, proposal: %s }", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v17, -1, -1);
    MEMORY[0x266755550](v16, -1, -1);
  }

  else
  {
    v22 = *(v0 + 776);
    v23 = *(v0 + 768);
    v24 = *(v0 + 760);

    (*(v23 + 8))(v22, v24);
  }

  v63 = *(v0 + 848);
  v25 = *(v0 + 840);
  v26 = *(v0 + 832);
  v27 = *(v0 + 784);
  v28 = *(v0 + 752);
  v29 = *(v0 + 744);
  v30 = *(v0 + 736);
  v31 = *(v0 + 728);

  UUID.init()();
  v60 = UUID.uuidString.getter();
  v61 = v32;
  (*(v29 + 8))(v28, v30);
  v33 = v31;
  v62 = v31;
  v34 = *(v31 + 48);
  v59 = *(v33 + 56);
  v35 = *(v0 + 688);
  outlined copy of Data?(v34, v59);

  v36 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v58 = v37;
  v38 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v39 = [v38 UUIDString];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  *(v0 + 200) = v26;
  *(v0 + 208) = v25;
  *(v0 + 216) = v60;
  *(v0 + 224) = v61;
  *(v0 + 232) = v34;
  *(v0 + 240) = v59;
  *(v0 + 248) = v35;
  *(v0 + 256) = v40;
  *(v0 + 264) = v42;
  *(v0 + 272) = v36;
  *(v0 + 280) = v58;
  v43 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v43;
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = *(v0 + 280);
  v44 = *(v0 + 216);
  *(v0 + 16) = *v64;
  *(v0 + 32) = v44;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi2_(v0 + 16);
  v46 = *(v62 + 48);
  v45 = *(v62 + 56);
  *(v0 + 448) = v60;
  *(v0 + 456) = v61;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0;
  *(v0 + 480) = 3;
  *(v0 + 488) = v26;
  *(v0 + 496) = v25;
  *(v0 + 504) = v46;
  *(v0 + 512) = v45;
  v47 = *(v0 + 496);
  *(v0 + 408) = *(v0 + 480);
  *(v0 + 424) = v47;
  *(v0 + 440) = *(v0 + 512);
  v48 = *(v0 + 464);
  *(v0 + 376) = *v65;
  *(v0 + 392) = v48;

  outlined init with copy of MLS.OutgoingRemoveSelf<Data>(v64, v0 + 288);

  outlined copy of Data?(v46, v45);
  outlined init with copy of MLS.OutgoingEventState(v65, v0 + 520);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 840);
    v52 = *(v0 + 832);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v66 = v54;
    *v53 = 136315138;
    *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, &v66);
    _os_log_impl(&dword_264F1F000, v49, v50, "LeaveGroupOperation returning operation result { identifier: %s }", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x266755550](v54, -1, -1);
    MEMORY[0x266755550](v53, -1, -1);
  }

  v55 = *(v0 + 840);
  v56 = *(v0 + 728);
  swift_retain_n();

  return MEMORY[0x2822009F8](MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v1 = *(v0 + 720);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 880) = v4;
  *v4 = v0;
  v4[1] = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v0 + 592, v3, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 880);
  v7 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    outlined destroy of MLS.OutgoingEventState(v2 + 448);
    outlined destroy of MLS.OutgoingRemoveSelf<Data>(v2 + 200);
    v4 = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v5 = *(v2 + 728);

    v4 = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 196);
  v2 = *(v0 + 896);
  v28 = *(v0 + 832);
  v29 = *(v0 + 840);
  v30 = *(v0 + 808);
  v31 = *(v0 + 800);
  v3 = *(v0 + 784);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v32 = *(v0 + 776);
  v33 = *(v0 + 752);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);
  outlined destroy of MLS.OutgoingRemoveSelf<Data>(v0 + 200);
  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  v11 = *(v0 + 64);
  *(v8 + 32) = *(v0 + 48);
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  v12 = *(v0 + 80);
  v13 = *(v0 + 96);
  v14 = *(v0 + 128);
  *(v8 + 96) = *(v0 + 112);
  *(v8 + 112) = v14;
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  v15 = *(v0 + 144);
  v16 = *(v0 + 160);
  v17 = *(v0 + 176);
  *(v8 + 176) = *(v0 + 192);
  *(v8 + 144) = v16;
  *(v8 + 160) = v17;
  *(v8 + 128) = v15;
  *(v8 + 184) = *(v0 + 376);
  v18 = *(v0 + 392);
  v19 = *(v0 + 408);
  v20 = *(v0 + 424);
  *(v8 + 248) = *(v0 + 440);
  *(v8 + 232) = v20;
  *(v8 + 216) = v19;
  *(v8 + 200) = v18;
  *(v8 + 256) = 0;
  *(v8 + 264) = v1;
  *(v8 + 272) = v1;
  *(v8 + 280) = v2;
  *(v8 + 288) = *(v0 + 448);
  v21 = *(v0 + 464);
  v22 = *(v0 + 480);
  v23 = *(v0 + 496);
  *(v8 + 352) = *(v0 + 512);
  *(v8 + 320) = v22;
  *(v8 + 336) = v23;
  *(v8 + 304) = v21;
  *(v8 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v7, v8 + 368);
  *(v8 + 408) = 0;
  v24 = *(v0 + 688);
  v25 = swift_allocObject();
  *(v25 + 16) = v6;
  *(v25 + 24) = v28;
  *(v25 + 32) = v29;
  *(v25 + 40) = v1;
  *(v25 + 48) = v1;
  *(v25 + 56) = v2;
  *(v8 + 416) = v24;
  *(v8 + 424) = &async function pointer to partial apply for closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  *(v8 + 432) = v25;

  v26 = *(v0 + 8);

  return v26();
}

{
  v1 = *(v0 + 888);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);
  v5 = *(v0 + 728);
  v6 = *(v0 + 688);

  swift_getErrorValue();
  v7 = *(v0 + 616);
  v8 = Error.readableDescription.getter(*(v0 + 624), *(v0 + 632));
  closure #1 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(v8, v9, v5, v3, v2);

  swift_getErrorValue();
  v10 = *(v0 + 640);
  v11 = Error.readableDescription.getter(*(v0 + 648), *(v0 + 656));
  *(v0 + 904) = v11;
  *(v0 + 912) = v12;
  *(v0 + 664) = 6;
  *(v0 + 672) = v11;
  *(v0 + 680) = v12;
  *(v0 + 920) = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  swift_willThrowTypedImpl();

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
}

{
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[98];
  v5 = v0[96];
  v6 = v0[95];
  swift_allocError();
  *v7 = 6;
  *(v7 + 8) = v3;
  *(v7 + 16) = v2;
  outlined destroy of MLS.OutgoingEventState((v0 + 56));
  outlined destroy of MLS.OutgoingRemoveSelf<Data>((v0 + 25));
  (*(v5 + 8))(v4, v6);
  v8 = v0[101];
  v9 = v0[100];
  v10 = v0[98];
  v11 = v0[97];
  v12 = v0[94];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[109];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[94];

  v7 = v0[1];

  return v7();
}

uint64_t MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 608);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 840);
    v9 = *(v3 + 824);
    v10 = *(v3 + 728);
    *(v3 + 896) = v7;
    *(v3 + 196) = *(v3 + 600);

    a1 = MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
    a2 = v9;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void closure #1 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v13);
    _os_log_impl(&dword_264F1F000, oslog, v9, "LeaveGroupOperation failed to obtain era { identifier: %s, error: %s }", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }
}

uint64_t closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 64) = a5;
  *(v7 + 72) = a7;
  *(v7 + 144) = a6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 40) = a2;
  *(v7 + 80) = *a1;
  *(v7 + 96) = *(a1 + 16);
  *(v7 + 148) = *(a1 + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v7 + 104) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), v8, 0);
}

uint64_t closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v28 = v0;
  if (*(v0 + 148) && (*(v0 + 148) != 2 || *(v0 + 88) | *(v0 + 96) | *(v0 + 80)))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 40);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 48);
      v7 = *(v0 + 56);
      v9 = *(v0 + 40);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v27);
      *(v10 + 12) = 2080;
      *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v9 + 16), *(v9 + 24), &v27);
      _os_log_impl(&dword_264F1F000, v5, v6, "LeaveGroupOperation successful. Deleting group { identifier: %s, group: %s }", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v11, -1, -1);
      MEMORY[0x266755550](v10, -1, -1);
    }

    v12 = *(v0 + 144);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 40);
    v17 = v15[10];
    v16 = v15[11];
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v14;
    *(v0 + 24) = v12;
    *(v0 + 32) = v13;
    v19 = v15[2];
    v20 = v15[3];
    v21 = *(v16 + 24);
    v26 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    *(v0 + 112) = v23;
    *v23 = v0;
    v23[1] = closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
    v24 = *(v0 + 48);
    v25 = *(v0 + 56);

    return v26(v0 + 16, v19, v20, v24, v25, 1, ObjectType, v16);
  }
}

{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), v2, 0);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *(v3 + 72);
  v5 = swift_task_alloc();
  v0[15] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = *(*v4 + 152);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  v9 = v0[6];
  v10 = v0[7];

  return v12();
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 104);

    v5 = MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[10] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), v5, 0);
}

uint64_t closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = *(v0 + 56);
  v2 = v1[9];
  v3 = v1[2];
  v4 = v1[3];
  *(v0 + 40) = &type metadata for MLS.GroupOperationError;
  *(v0 + 48) = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *(v0 + 16) = 8;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v5 = *(*v2 + 168);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);

  return v11(v3, v4, v0 + 16, v8, v9);
}

{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[10];

    return MEMORY[0x2822009F8](closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:), v4, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);
    v5 = v3[1];

    return v5();
  }
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[12];

  return v1();
}

char *MLS.LeaveGroupOperation.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);

  outlined consume of Data?(v3, v4);

  v6 = *(v0 + 9);

  v7 = *(v0 + 10);
  swift_unknownObjectRelease();
  v8 = *(v0 + 13);

  v9 = OBJC_IVAR____TtCO15SecureMessaging3MLS19LeaveGroupOperation_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  return v0;
}

uint64_t MLS.LeaveGroupOperation.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);

  outlined consume of Data?(v3, v4);

  v6 = *(v0 + 9);

  v7 = *(v0 + 10);
  swift_unknownObjectRelease();
  v8 = *(v0 + 13);

  v9 = OBJC_IVAR____TtCO15SecureMessaging3MLS19LeaveGroupOperation_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.LeaveGroupOperation(uint64_t a1)
{
  v4 = *(**v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.LeaveGroupOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 192);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.context.getter in conformance MLS.LeaveGroupOperation@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v4 = *(*v1 + 32);
  v3 = *(*v1 + 40);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 56);
  v7 = *(v2 + 64);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  outlined copy of Data?(v5, v6);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.LeaveGroupOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS19LeaveGroupOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t specialized MLS.LeaveGroupOperation.__allocating_init(group:context:groupLoader:eventSender:clientIdentifier:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = type metadata accessor for MLS.LeaveGroupOperation();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();

  return specialized MLS.LeaveGroupOperation.init(group:context:groupLoader:eventSender:clientIdentifier:)(a1, a2, a3, a4, a5, a6, v19, a8, a9);
}

uint64_t specialized MLS.LeaveGroupOperation.init(group:context:groupLoader:eventSender:clientIdentifier:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = a3[1];
  v19 = *a3;
  v14 = *(a3 + 4);
  v15 = *a6;
  v16 = a6[1];
  Logger.init(subsystem:category:)();
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = v19;
  *(a7 + 48) = v18;
  *(a7 + 64) = v14;
  *(a7 + 72) = a4;
  *(a7 + 80) = a5;
  *(a7 + 88) = a9;
  *(a7 + 96) = v15;
  *(a7 + 104) = v16;
  return a7;
}

uint64_t outlined init with copy of MLS.OutgoingRemoveSelf<Data>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingRemoveSelfVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingRemoveSelfVy_10Foundation4DataVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MLS.OutgoingRemoveSelf<Data>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingRemoveSelfVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO18OutgoingRemoveSelfVy_10Foundation4DataVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264FE7460()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t instantiation function for generic protocol witness table for MLS.LeaveGroupOperation(uint64_t a1)
{
  result = _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type MLS.LeaveGroupOperation and conformance MLS.LeaveGroupOperation, type metadata accessor for MLS.LeaveGroupOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MLS.LeaveGroupOperation()
{
  result = type metadata singleton initialization cache for MLS.LeaveGroupOperation;
  if (!type metadata singleton initialization cache for MLS.LeaveGroupOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.LeaveGroupOperation()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.LeaveGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 192);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t partial apply for closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #2 in MLS.LeaveGroupOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4, v5, v6);
}

void KDSRegistration.Configuration.init(clientIdentifier:provider:simUniqueID:simLabelID:testPhoneNumber:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
}

uint64_t KDSRegistration.ClientIdentifier.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of KDSRegistration.ClientIdentifier.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance KDSRegistration.ClientIdentifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance KDSRegistration.ClientIdentifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance KDSRegistration.ClientIdentifier@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance KDSRegistration.ClientIdentifier, *a1);

  *a2 = v3 != 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance KDSRegistration.ClientIdentifier(uint64_t a1@<X8>)
{
  strcpy(a1, "EncryptedRCS");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t KDSRegistration.Configuration.simUniqueID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t KDSRegistration.Configuration.simLabelID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t KDSRegistration.Configuration.testPhoneNumber.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t type metadata instantiation function for KDSRegistration.Configuration()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistration.Configuration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for KDSRegistration.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(uint64_t a1, char a2)
{
  *(v3 + 316) = a2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v2;
  v4 = type metadata accessor for MLS.KeyPackageProvider();
  *(v3 + 208) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  *(v3 + 224) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:), v6, 0);
}

void MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)()
{
  if (*(v0 + 316) == 1)
  {
    v1 = *(v0 + 200);
    *(v0 + 312) = *(*(v0 + 208) + 24);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_264F1F000, v2, v3, "KeyPackageProvider keyPackage loading KeyPackage", v4, 2u);
      MEMORY[0x266755550](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v0 + 232) = v5;
    *v5 = v0;
    v5[1] = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);
    v6 = *(v0 + 200);

    MLS.KeyPackageProvider.loadKeyPackage()(v0 + 112);
  }

  else
  {
    v7 = *(v0 + 200);
    v9 = *(v7 + 48);
    v8 = *(v7 + 56);
    ObjectType = swift_getObjectType();
    v11 = swift_task_alloc();
    *(v0 + 248) = v11;
    *(v11 + 16) = v7;
    v12 = swift_task_alloc();
    *(v0 + 256) = v12;
    *v12 = v0;
    v12[1] = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);
    v13 = *(v0 + 192);

    MLS.Persister.atomically<A>(with:do:)(v13, 0x5079654B666C6573, 0xEE006567616B6361, &async function pointer to partial apply for closure #2 in MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:), v11, ObjectType, &type metadata for MLS.KeyPackageInfo, v8);
  }
}

uint64_t MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);
  }

  else
  {
    v6 = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v20 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 200);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  outlined copy of Data._Representation(v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v3, v4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    outlined copy of Data._Representation(v3, v4);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v10 = [(objc_class *)isa description];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    outlined consume of Data._Representation(v3, v4);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_264F1F000, v5, v6, "KeyPackageProvider keyPackage loaded KeyPackage { keyPackage: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v15 = *(v0 + 192);
  *v15 = v3;
  v15[1] = v4;
  v16 = *(v0 + 216);

  v17 = *(v0 + 8);

  return v17();
}

{
  v2 = *(*v1 + 256);
  v3 = *v1;
  v3[33] = v0;

  if (v0)
  {
    v4 = v3[28];

    return MEMORY[0x2822009F8](MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:), v4, 0);
  }

  else
  {
    v5 = v3[31];

    v6 = v3[27];

    v7 = v3[1];

    return v7();
  }
}

{
  v30 = v0;
  v1 = *(v0 + 240);
  *(v0 + 160) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 312);
    v4 = *(v0 + 200);

    v5 = *(v0 + 136);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_264F1F000, v6, v7, "KeyPackageProvider keyPackage did not find saved KeyPackage. Generating new one.", v8, 2u);
      MEMORY[0x266755550](v8, -1, -1);
    }

    v9 = *(v0 + 216);
    v10 = *(v0 + 200);

    outlined init with copy of MLS.KeyPackageProvider(v10, v9);
    v11 = swift_task_alloc();
    *(v0 + 272) = v11;
    *v11 = v0;
    v11[1] = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);
    v12 = *(v0 + 200);

    return MLS.KeyPackageProvider.generateKeyPackage()(v0 + 144);
  }

  else
  {
    v14 = *(v0 + 240);
    v15 = *(v0 + 312);
    v16 = *(v0 + 200);

    swift_getErrorValue();
    v17 = *(v0 + 16);
    v18 = Error.readableDescription.getter(*(v0 + 24), *(v0 + 32));
    v20 = v19;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v29);
      _os_log_impl(&dword_264F1F000, v21, v22, "KeyPackageProvider keyPackage load hit unexpected failure { error: %s }", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x266755550](v24, -1, -1);
      MEMORY[0x266755550](v23, -1, -1);
    }

    v25 = *(v0 + 240);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();
    swift_allocError();
    *v26 = 4;
    *(v26 + 8) = v18;
    *(v26 + 16) = v20;
    swift_willThrow();

    v27 = *(v0 + 216);

    v28 = *(v0 + 8);

    return v28();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v6 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);
  }

  else
  {
    outlined destroy of MLS.KeyPackageProvider(*(v2 + 216));
    v4 = MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 224);

  return MEMORY[0x2822009F8](MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:), v1, 0);
}

{
  v21 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 200);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  outlined copy of Data._Representation(v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v3, v4);
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 192);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v9 = 136315138;
    outlined copy of Data._Representation(v3, v4);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = [(objc_class *)isa description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    outlined consume of Data._Representation(v3, v4);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v20);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "KeyPackageProvider keyPackage generated KeyPackage { keyPackage: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266755550](v19, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  *v8 = v3;
  v8[1] = v4;

  v16 = *(v0 + 216);

  v17 = *(v0 + 8);

  return v17();
}

{
  v21 = v0;
  v1 = *(v0 + 280);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  swift_getErrorValue();
  v4 = *(v0 + 40);
  v5 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
  v7 = v6;
  v8 = v2 + *(v3 + 24);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v20);
    _os_log_impl(&dword_264F1F000, v9, v10, "KeyPackageProvider keyPackage failed generating KeyPackage { error: %s }", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v13 = *(v0 + 280);
  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  swift_getErrorValue();
  v16 = *(v0 + 64);
  v17 = Error.readableDescription.getter(*(v0 + 72), *(v0 + 80));
  *(v0 + 288) = v17;
  *(v0 + 296) = v18;
  *(v0 + 88) = 5;
  *(v0 + 96) = v17;
  *(v0 + 104) = v18;
  *(v0 + 304) = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();
  swift_willThrowTypedImpl();
  outlined destroy of MLS.KeyPackageProvider(v15);

  return MEMORY[0x2822009F8](MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:), v14, 0);
}

{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  swift_allocError();
  *v4 = 5;
  *(v4 + 8) = v3;
  *(v4 + 16) = v2;

  v5 = *(v0 + 216);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[31];

  v2 = v0[33];
  v3 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for Error._code.getter in conformance MLS.KeyPackageProviderError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t MLS.KeyPackageProviderError.underlyingErrorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static MLS.KeyPackageProviderError.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageProviderError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyPackageProviderError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.KeyPackageProviderError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO23KeyPackageProviderErrorV10CodingKeys33_AE9476C4AD916767B5A228FC0178C34DLLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO23KeyPackageProviderErrorV10CodingKeys33_AE9476C4AD916767B5A228FC0178C34DLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = v1[1];
  v12[1] = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  lazy protocol witness table accessor for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MLS.KeyPackageProviderError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO23KeyPackageProviderErrorV10CodingKeys33_AE9476C4AD916767B5A228FC0178C34DLLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO23KeyPackageProviderErrorV10CodingKeys33_AE9476C4AD916767B5A228FC0178C34DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = 0;
    lazy protocol witness table accessor for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.KeyPackageProviderError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.KeyPackageProviderError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t MLS.KeyPackageProvider.persister.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return swift_unknownObjectRetain();
}

uint64_t MLS.KeyPackageProvider.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeyPackageProvider() + 24);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 MLS.KeyPackageProvider.init(swiftMLSClient:persister:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for MLS.KeyPackageProvider() + 24);
  Logger.init(subsystem:category:)();
  v9 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v9;
  result = *(a1 + 25);
  *(a4 + 25) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t MLS.KeyPackageProvider.loadKeyPackage()(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for MLS.Client.KeyPackage();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v2[23] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyPackageProvider.loadKeyPackage(), v6, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v7 = *(v3 + 184);
  if (v1)
  {
    v8 = MLS.KeyPackageProvider.loadKeyPackage();
  }

  else
  {
    v8 = MLS.KeyPackageProvider.loadKeyPackage();
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t MLS.KeyPackageProvider.loadKeyPackage()()
{
  v1 = *(v0 + 152);
  *(v0 + 60) = *(type metadata accessor for MLS.KeyPackageProvider() + 24);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_264F1F000, v2, v3, "KeyPackageProvider -- loading key package", v4, 2u);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v5 = *(v0 + 152);

  outlined init with copy of MLS.SwiftMLSClientPicker(v5, v0 + 16);
  if (*(v0 + 56))
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 64);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 104);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v8 = __swift_project_boxed_opaque_existential_1((v0 + 104), v6);
    *(v0 + 88) = v6;
    *(v0 + 96) = *(v7 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  }

  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v10);
  v12 = *(v11 + 40);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 192) = v14;
  *v14 = v0;
  v14[1] = MLS.KeyPackageProvider.loadKeyPackage();

  return v16(v10, v11);
}

{
  v36 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 60);
  v3 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  swift_bridgeObjectRetain_n();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 200);
  if (v6)
  {
    v8 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315394;
    v11 = MEMORY[0x266754630](v7, v8);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v35);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    v14 = *(v7 + 16);

    *(v9 + 14) = v14;

    _os_log_impl(&dword_264F1F000, v4, v5, "KeyPackageProvider -- listKeyPackages { keyPackages: %s, count: %ld }", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v15 = *(v0 + 200);
    swift_bridgeObjectRelease_n();
  }

  v16 = *(v0 + 200);
  v17 = *(v16 + 16);
  if (v17)
  {
    v19 = *(v0 + 168);
    v18 = *(v0 + 176);
    v20 = *(v0 + 160);
    v21 = *(v0 + 144);
    (*(v19 + 16))(v18, v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * (v17 - 1), v20);

    v22 = MLS.Client.KeyPackage.rawRepresentation.getter();
    v24 = v23;
    (*(v19 + 8))(v18, v20);
    *v21 = v22;
    v21[1] = v24;

    v25 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 60);
    v27 = *(v0 + 152);
    v28 = *(v0 + 200);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_264F1F000, v29, v30, "KeyPackageProvider -- found no saved keypackage.", v31, 2u);
      MEMORY[0x266755550](v31, -1, -1);
    }

    lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();
    swift_allocError();
    *v32 = 0;
    v32[1] = 0;
    swift_willThrow();
    v33 = *(v0 + 176);

    v25 = *(v0 + 8);
  }

  return v25();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v1 = v0[26];
  v2 = v0[22];

  v3 = v0[1];

  return v3();
}

uint64_t MLS.KeyPackageProvider.generateKeyPackage()(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for MLS.Client.KeyPackage();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v2[23] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyPackageProvider.generateKeyPackage(), v6, 0);
}

uint64_t MLS.KeyPackageProvider.generateKeyPackage()()
{
  v1 = *(v0 + 152);
  v2 = v1 + *(type metadata accessor for MLS.KeyPackageProvider() + 24);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264F1F000, v3, v4, "KeyPackageProvider -- Generating key package", v5, 2u);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v6 = *(v0 + 152);

  outlined init with copy of MLS.SwiftMLSClientPicker(v6, v0 + 16);
  if (*(v0 + 56))
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 64);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 104);
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = __swift_project_boxed_opaque_existential_1((v0 + 104), v7);
    *(v0 + 88) = v7;
    *(v0 + 96) = *(v8 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v9, v7);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  }

  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v11);
  v13 = *(v12 + 48);
  v18 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 192) = v15;
  *v15 = v0;
  v15[1] = MLS.KeyPackageProvider.generateKeyPackage();
  v16 = *(v0 + 176);

  return v18(v16, v11, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = MLS.KeyPackageProvider.generateKeyPackage();
  }

  else
  {
    v6 = MLS.KeyPackageProvider.generateKeyPackage();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v5 = MLS.Client.KeyPackage.rawRepresentation.getter();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  *v4 = v5;
  v4[1] = v7;

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[22];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);

  v2 = v0[1];
  v3 = v0[25];

  return v2();
}

uint64_t closure #2 in MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(a1, 1);
}

uint64_t type metadata accessor for MLS.KeyPackageProvider()
{
  result = type metadata singleton initialization cache for MLS.KeyPackageProvider;
  if (!type metadata singleton initialization cache for MLS.KeyPackageProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #2 in MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(a1);
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.CodingKeys and conformance MLS.KeyPackageProviderError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError.ErrorType and conformance MLS.KeyPackageProviderError.ErrorType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyPackageProviderError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();
  a1[2] = lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();
  a1[3] = lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();
  result = lazy protocol witness table accessor for type MLS.KeyPackageProviderError and conformance MLS.KeyPackageProviderError();
  a1[4] = result;
  return result;
}

uint64_t sub_264FEABD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_264FEAC90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t type metadata completion function for MLS.KeyPackageProvider()
{
  result = type metadata accessor for MLS.Persister();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for MLS.Persister()
{
  result = lazy cache variable for type metadata for MLS.Persister;
  if (!lazy cache variable for type metadata for MLS.Persister)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MLS.Persister);
  }

  return result;
}

uint64_t timeout<A>(after:throwing:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = type metadata accessor for CancellationError();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](timeout<A>(after:throwing:work:), 0, 0);
}

uint64_t timeout<A>(after:throwing:work:)()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[4];
  v18 = v0[5];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v2;

  v9 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v1, &async function pointer to partial apply for closure #1 in timeout<A>(after:throwing:work:), v8);
  v0[14] = v9;
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = v5;
  v10[6] = v18;
  v10[7] = v9;

  v0[15] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #2 in timeout<A>(after:throwing:work:), v10);
  v11 = *(MEMORY[0x277D857C8] + 4);
  v12 = swift_task_alloc();
  v0[16] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v0[17] = v13;
  *v12 = v0;
  v12[1] = timeout<A>(after:throwing:work:);
  v14 = v0[9];
  v15 = v0[3];
  v16 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v15, v9, v14, v13, v16);
}

{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = timeout<A>(after:throwing:work:);
  }

  else
  {
    v3 = timeout<A>(after:throwing:work:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  MEMORY[0x266754760](v0[15], MEMORY[0x277D84F78] + 8, v0[17], MEMORY[0x277D84950]);

  v4 = v0[1];

  return v4();
}

{
  v2 = (v0 + 144);
  v1 = *(v0 + 144);
  *(v0 + 16) = v1;
  v3 = *(v0 + 136);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = v1;
  if (swift_dynamicCast())
  {
    v2 = (v0 + 48);
    v7 = *(v0 + 48);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v12 = *(v0 + 80);

    swift_willThrow();

    (*(v11 + 8))(v10, v12);
    v13 = v7;
  }

  else
  {
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
  }

  v16 = *v2;
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t closure #1 in timeout<A>(after:throwing:work:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = closure #1 in timeout<A>(after:throwing:work:);

  return v11(a1);
}

uint64_t closure #1 in timeout<A>(after:throwing:work:)()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in timeout<A>(after:throwing:work:), 0, 0);
  }
}

{
  v1 = v0[5];
  static Task<>.checkCancellation()();
  if (v1)
  {
    (*(*(v0[3] - 8) + 8))(v0[2]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_264FEB834()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in timeout<A>(after:throwing:work:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in timeout<A>(after:throwing:work:)(a1, v4, v5, v7, v8, v6);
}

uint64_t closure #2 in timeout<A>(after:throwing:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for ContinuousClock();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in timeout<A>(after:throwing:work:), 0, 0);
}

uint64_t closure #2 in timeout<A>(after:throwing:work:)()
{
  v1 = v0[8];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = closure #2 in timeout<A>(after:throwing:work:);
  v3 = v0[8];
  v5 = v0[2];
  v4 = v0[3];

  return specialized Clock.sleep(for:tolerance:)(v5, v4, 0, 0, 1);
}

{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = closure #2 in timeout<A>(after:throwing:work:);
  }

  else
  {
    v6 = closure #2 in timeout<A>(after:throwing:work:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x266754760](v3, v2, v4, MEMORY[0x277D84950]);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_264FEBD34()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #2 in timeout<A>(after:throwing:work:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in timeout<A>(after:throwing:work:)(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t timeout<A, B>(after:throwing:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](timeout<A, B>(after:throwing:task:), 0, 0);
}

uint64_t timeout<A, B>(after:throwing:task:)()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = *(v0 + 7);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = timeout<A, B>(after:throwing:task:);
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return timeout<A>(after:throwing:work:)(v8, v9, v6, v7, &async function pointer to partial apply for closure #1 in timeout<A, B>(after:throwing:task:), v3, v5);
}

{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](MLS.GroupLoader.atomically<A>(with:do:), 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t closure #1 in timeout<A, B>(after:throwing:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D857C8] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MEMORY[0x282200430](a1, a2, a3, a4, a5);
}

uint64_t sub_264FEC174()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in timeout<A, B>(after:throwing:task:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in timeout<A, B>(after:throwing:task:)(a1, v6, v4, v5, v7);
}

uint64_t MLS.OutgoingEventType.storageIdentifier.getter(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v126 = a1[2];
  v2 = v126;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v6 = type metadata accessor for MLS.OutgoingErrorOccurred();
  v123 = *(v6 - 8);
  v124 = v6;
  v7 = *(v123 + 64);
  MEMORY[0x28223BE20](v6);
  v122 = &v81 - v8;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v9 = type metadata accessor for MLS.OutgoingGroupRepaired();
  v120 = *(v9 - 8);
  v121 = v9;
  v10 = *(v120 + 64);
  MEMORY[0x28223BE20](v9);
  v119 = &v81 - v11;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v12 = type metadata accessor for MLS.OutgoingProposalCommitted();
  v117 = *(v12 - 8);
  v118 = v12;
  v13 = *(v117 + 64);
  MEMORY[0x28223BE20](v12);
  v116 = &v81 - v14;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v15 = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials();
  v114 = *(v15 - 8);
  v115 = v15;
  v16 = *(v114 + 64);
  MEMORY[0x28223BE20](v15);
  v113 = &v81 - v17;
  v18 = type metadata accessor for MLS.OutgoingGroupNameChange();
  v111 = *(v18 - 8);
  v112 = v18;
  v19 = *(v111 + 64);
  MEMORY[0x28223BE20](v18);
  v110 = &v81 - v20;
  v109 = type metadata accessor for MLS.OutgoingDowngrade();
  v108 = *(v109 - 8);
  v21 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v107 = &v81 - v22;
  v106 = type metadata accessor for MLS.OutgoingApplicationSend();
  v105 = *(v106 - 8);
  v23 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v104 = &v81 - v24;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v103 = type metadata accessor for MLS.OutgoingRecreateGroup();
  v102 = *(v103 - 8);
  v25 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = &v81 - v26;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v100 = type metadata accessor for MLS.OutgoingResurrectGroup();
  v99 = *(v100 - 8);
  v27 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v81 - v28;
  v97 = type metadata accessor for MLS.OutgoingFailureToDecrypt();
  v96 = *(v97 - 8);
  v29 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v81 - v30;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v94 = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2();
  v93 = *(v94 - 8);
  v31 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v81 - v32;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v91 = type metadata accessor for MLS.OutgoingResync();
  v90 = *(v91 - 8);
  v33 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v81 - v34;
  v88 = type metadata accessor for MLS.OutgoingKeyUpdate();
  v87 = *(v88 - 8);
  v35 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v81 - v36;
  v85 = type metadata accessor for MLS.OutgoingRemoveSelf();
  v84 = *(v85 - 8);
  v37 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v39 = &v81 - v38;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v40 = type metadata accessor for MLS.OutgoingKickMember();
  v83 = *(v40 - 8);
  v41 = *(v83 + 64);
  MEMORY[0x28223BE20](v40);
  v43 = &v81 - v42;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v44 = type metadata accessor for MLS.OutgoingAddMember();
  v82 = *(v44 - 8);
  v45 = *(v82 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v81 - v46;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  Group = type metadata accessor for MLS.OutgoingCreateGroup();
  v49 = *(Group - 8);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](Group);
  v53 = &v81 - v52;
  v54 = *(*(a1 - 1) + 64);
  MEMORY[0x28223BE20](v51);
  v56 = &v81 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v56, v125, a1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v75 = v82;
      (*(v82 + 32))(v47, v56, v44);
      v58 = *(v47 + 2);
      v76 = *(v47 + 3);
      v77 = *(v75 + 8);

      v77(v47, v44);
      return v58;
    case 2u:
      v68 = v83;
      (*(v83 + 32))(v43, v56, v40);
      v58 = *(v43 + 2);
      v69 = *(v43 + 3);
      v70 = *(v68 + 8);

      v70(v43, v40);
      return v58;
    case 3u:
      v71 = v84;
      v72 = v85;
      (*(v84 + 32))(v39, v56, v85);
      v58 = *(v39 + 2);
      v73 = *(v39 + 3);
      v74 = *(v71 + 8);

      v74(v39, v72);
      return v58;
    case 4u:
      v61 = v87;
      v64 = *(v87 + 32);
      v62 = v86;
      v65 = v86;
      v66 = v56;
      v67 = &v120;
      goto LABEL_19;
    case 5u:
      v61 = v90;
      v64 = *(v90 + 32);
      v62 = v89;
      v65 = v89;
      v66 = v56;
      v67 = &v123;
      goto LABEL_19;
    case 6u:
      v61 = v93;
      v64 = *(v93 + 32);
      v62 = v92;
      v65 = v92;
      v66 = v56;
      v67 = &v126;
      goto LABEL_19;
    case 7u:
      v61 = v96;
      v64 = *(v96 + 32);
      v62 = v95;
      v65 = v95;
      v66 = v56;
      v67 = &v129;
      goto LABEL_19;
    case 8u:
      v61 = v99;
      v64 = *(v99 + 32);
      v62 = v98;
      v65 = v98;
      v66 = v56;
      v67 = &v130;
      goto LABEL_19;
    case 9u:
      v61 = v102;
      v64 = *(v102 + 32);
      v62 = v101;
      v65 = v101;
      v66 = v56;
      v67 = &v131;
      goto LABEL_19;
    case 0xAu:
      v61 = v105;
      v64 = *(v105 + 32);
      v62 = v104;
      v65 = v104;
      v66 = v56;
      v67 = &v132;
LABEL_19:
      v63 = *(v67 - 32);
      v64(v65, v66, v63);
      goto LABEL_20;
    case 0xBu:
      v61 = v108;
      v62 = v107;
      v63 = v109;
      (*(v108 + 32))(v107, v56, v109);
      goto LABEL_20;
    case 0xCu:
      v62 = v110;
      v61 = v111;
      v63 = v112;
      (*(v111 + 32))(v110, v56, v112);
      goto LABEL_20;
    case 0xDu:
      v62 = v113;
      v61 = v114;
      v63 = v115;
      (*(v114 + 32))(v113, v56, v115);
      goto LABEL_20;
    case 0xEu:
      v62 = v116;
      v61 = v117;
      v63 = v118;
      (*(v117 + 32))(v116, v56, v118);
      goto LABEL_20;
    case 0xFu:
      v62 = v119;
      v61 = v120;
      v63 = v121;
      (*(v120 + 32))(v119, v56, v121);
      goto LABEL_20;
    case 0x10u:
      v62 = v122;
      v61 = v123;
      v63 = v124;
      (*(v123 + 32))(v122, v56, v124);
LABEL_20:
      v58 = *(v62 + 2);
      v78 = *(v62 + 3);
      v79 = *(v61 + 8);

      v79(v62, v63);
      break;
    default:
      (*(v49 + 32))(v53, v56, Group);
      v58 = *(v53 + 2);
      v59 = *(v53 + 3);
      v60 = *(v49 + 8);

      v60(v53, Group);
      break;
  }

  return v58;
}

uint64_t MLS.OutgoingErrorOccurred.init(identifier:storageIdentifier:trigger:clientContext:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v11 = *a7;
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for MLS.OutgoingErrorOccurred();
  v13 = v12[14];
  v14 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger();
  (*(*(v14 - 8) + 32))(&a8[v13], a5, v14);
  v15 = v12[15];
  v16 = type metadata accessor for Optional();
  result = (*(*(v16 - 8) + 32))(&a8[v15], a6, v16);
  *&a8[v12[16]] = v11;
  return result;
}

__n128 MLS.OutgoingGroupNameChange.init(identifier:storageIdentifier:clientContext:metricCollector:commit:encryptedGroupNameKey:encryptedGroupName:epochAuthenticator:ratchetTree:groupInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *a6;
  v33 = *a7;
  v22 = a7[1].n128_u64[0];
  v21 = a7[1].n128_u64[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v23 = type metadata accessor for MLS.OutgoingGroupNameChange();
  v24 = v23[10];
  v25 = type metadata accessor for Optional();
  (*(*(v25 - 8) + 32))(&a9[v24], a5, v25);
  *&a9[v23[11]] = v20;
  v26 = &a9[v23[12]];
  result = v33;
  *v26 = v33;
  v26[1].n128_u64[0] = v22;
  v26[1].n128_u64[1] = v21;
  v28 = &a9[v23[13]];
  *v28 = a8;
  *(v28 + 1) = a10;
  v29 = &a9[v23[14]];
  *v29 = a11;
  *(v29 + 1) = a12;
  v30 = &a9[v23[15]];
  *v30 = a13;
  *(v30 + 1) = a14;
  v31 = &a9[v23[16]];
  *v31 = a15;
  *(v31 + 1) = a16;
  v32 = &a9[v23[17]];
  *v32 = a17;
  *(v32 + 1) = a18;
  return result;
}

uint64_t MLS.OutgoingEventType.identifier.getter(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v126 = a1[2];
  v2 = v126;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v6 = type metadata accessor for MLS.OutgoingErrorOccurred();
  v123 = *(v6 - 8);
  v124 = v6;
  v7 = *(v123 + 64);
  MEMORY[0x28223BE20](v6);
  v122 = &v81 - v8;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v9 = type metadata accessor for MLS.OutgoingGroupRepaired();
  v120 = *(v9 - 8);
  v121 = v9;
  v10 = *(v120 + 64);
  MEMORY[0x28223BE20](v9);
  v119 = &v81 - v11;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v12 = type metadata accessor for MLS.OutgoingProposalCommitted();
  v117 = *(v12 - 8);
  v118 = v12;
  v13 = *(v117 + 64);
  MEMORY[0x28223BE20](v12);
  v116 = &v81 - v14;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v15 = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials();
  v114 = *(v15 - 8);
  v115 = v15;
  v16 = *(v114 + 64);
  MEMORY[0x28223BE20](v15);
  v113 = &v81 - v17;
  v18 = type metadata accessor for MLS.OutgoingGroupNameChange();
  v111 = *(v18 - 8);
  v112 = v18;
  v19 = *(v111 + 64);
  MEMORY[0x28223BE20](v18);
  v110 = &v81 - v20;
  v109 = type metadata accessor for MLS.OutgoingDowngrade();
  v108 = *(v109 - 8);
  v21 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v107 = &v81 - v22;
  v106 = type metadata accessor for MLS.OutgoingApplicationSend();
  v105 = *(v106 - 8);
  v23 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v104 = &v81 - v24;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v103 = type metadata accessor for MLS.OutgoingRecreateGroup();
  v102 = *(v103 - 8);
  v25 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = &v81 - v26;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v100 = type metadata accessor for MLS.OutgoingResurrectGroup();
  v99 = *(v100 - 8);
  v27 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v81 - v28;
  v97 = type metadata accessor for MLS.OutgoingFailureToDecrypt();
  v96 = *(v97 - 8);
  v29 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v81 - v30;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v94 = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2();
  v93 = *(v94 - 8);
  v31 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v81 - v32;
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v91 = type metadata accessor for MLS.OutgoingResync();
  v90 = *(v91 - 8);
  v33 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v81 - v34;
  v88 = type metadata accessor for MLS.OutgoingKeyUpdate();
  v87 = *(v88 - 8);
  v35 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v81 - v36;
  v85 = type metadata accessor for MLS.OutgoingRemoveSelf();
  v84 = *(v85 - 8);
  v37 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v39 = (&v81 - v38);
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v40 = type metadata accessor for MLS.OutgoingKickMember();
  v83 = *(v40 - 8);
  v41 = *(v83 + 64);
  MEMORY[0x28223BE20](v40);
  v43 = (&v81 - v42);
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  v44 = type metadata accessor for MLS.OutgoingAddMember();
  v82 = *(v44 - 8);
  v45 = *(v82 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = (&v81 - v46);
  v126 = v2;
  v127 = v3;
  v128 = v4;
  v129 = v5;
  Group = type metadata accessor for MLS.OutgoingCreateGroup();
  v49 = *(Group - 8);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](Group);
  v53 = (&v81 - v52);
  v54 = *(*(a1 - 1) + 64);
  MEMORY[0x28223BE20](v51);
  v56 = &v81 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v56, v125, a1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v75 = v82;
      (*(v82 + 32))(v47, v56, v44);
      v58 = *v47;
      v76 = v47[1];
      v77 = *(v75 + 8);

      v77(v47, v44);
      return v58;
    case 2u:
      v68 = v83;
      (*(v83 + 32))(v43, v56, v40);
      v58 = *v43;
      v69 = v43[1];
      v70 = *(v68 + 8);

      v70(v43, v40);
      return v58;
    case 3u:
      v71 = v84;
      v72 = v85;
      (*(v84 + 32))(v39, v56, v85);
      v58 = *v39;
      v73 = v39[1];
      v74 = *(v71 + 8);

      v74(v39, v72);
      return v58;
    case 4u:
      v61 = v87;
      v64 = *(v87 + 32);
      v62 = v86;
      v65 = v86;
      v66 = v56;
      v67 = &v120;
      goto LABEL_19;
    case 5u:
      v61 = v90;
      v64 = *(v90 + 32);
      v62 = v89;
      v65 = v89;
      v66 = v56;
      v67 = &v123;
      goto LABEL_19;
    case 6u:
      v61 = v93;
      v64 = *(v93 + 32);
      v62 = v92;
      v65 = v92;
      v66 = v56;
      v67 = &v126;
      goto LABEL_19;
    case 7u:
      v61 = v96;
      v64 = *(v96 + 32);
      v62 = v95;
      v65 = v95;
      v66 = v56;
      v67 = &v129;
      goto LABEL_19;
    case 8u:
      v61 = v99;
      v64 = *(v99 + 32);
      v62 = v98;
      v65 = v98;
      v66 = v56;
      v67 = &v130;
      goto LABEL_19;
    case 9u:
      v61 = v102;
      v64 = *(v102 + 32);
      v62 = v101;
      v65 = v101;
      v66 = v56;
      v67 = &v131;
      goto LABEL_19;
    case 0xAu:
      v61 = v105;
      v64 = *(v105 + 32);
      v62 = v104;
      v65 = v104;
      v66 = v56;
      v67 = &v132;
LABEL_19:
      v63 = *(v67 - 32);
      v64(v65, v66, v63);
      goto LABEL_20;
    case 0xBu:
      v61 = v108;
      v62 = v107;
      v63 = v109;
      (*(v108 + 32))(v107, v56, v109);
      goto LABEL_20;
    case 0xCu:
      v62 = v110;
      v61 = v111;
      v63 = v112;
      (*(v111 + 32))(v110, v56, v112);
      goto LABEL_20;
    case 0xDu:
      v62 = v113;
      v61 = v114;
      v63 = v115;
      (*(v114 + 32))(v113, v56, v115);
      goto LABEL_20;
    case 0xEu:
      v62 = v116;
      v61 = v117;
      v63 = v118;
      (*(v117 + 32))(v116, v56, v118);
      goto LABEL_20;
    case 0xFu:
      v62 = v119;
      v61 = v120;
      v63 = v121;
      (*(v120 + 32))(v119, v56, v121);
      goto LABEL_20;
    case 0x10u:
      v62 = v122;
      v61 = v123;
      v63 = v124;
      (*(v123 + 32))(v122, v56, v124);
LABEL_20:
      v58 = *v62;
      v78 = *(v62 + 1);
      v79 = *(v61 + 8);

      v79(v62, v63);
      break;
    default:
      (*(v49 + 32))(v53, v56, Group);
      v58 = *v53;
      v59 = v53[1];
      v60 = *(v49 + 8);

      v60(v53, Group);
      break;
  }

  return v58;
}

__n128 MLS.OutgoingApplicationSend.init(identifier:storageIdentifier:clientContext:metricCollector:message:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t (*a11)(void, uint64_t, uint64_t))
{
  v13 = *a6;
  v21 = *a7;
  v14 = a7[1].n128_u64[0];
  v15 = a7[1].n128_u64[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v16 = a11(0, a8, a10);
  v17 = v16[10];
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 32))(&a9[v17], a5, v18);
  *&a9[v16[11]] = v13;
  v19 = &a9[v16[12]];
  result = v21;
  *v19 = v21;
  v19[1].n128_u64[0] = v14;
  v19[1].n128_u64[1] = v15;
  return result;
}

Swift::Int MLS.OutgoingEventType.MatchableType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.OutgoingEventType<A, B>.MatchableType()
{
  Hasher.init(_seed:)();
  MLS.OutgoingEventType.MatchableType.hash(into:)();
  return Hasher._finalize()();
}

BOOL MLS.OutgoingEventType.matches(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v6;
  (*(v4 + 16))(v8, v2, a2);
  v10 = v9 == swift_getEnumCaseMultiPayload();
  (*(v4 + 8))(v8, a2);
  return v10;
}

uint64_t MLS.OutgoingEventType.commit.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v113 = a2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v114 = a1[2];
  v3 = v114;
  v115 = v4;
  v116 = v5;
  v117 = v6;
  v7 = type metadata accessor for MLS.OutgoingProposalCommitted();
  v110 = *(v7 - 8);
  v111 = v7;
  v8 = *(v110 + 64);
  MEMORY[0x28223BE20](v7);
  v109 = &v85 - v9;
  v115 = v4;
  v116 = v5;
  v117 = v6;
  v10 = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials();
  v107 = *(v10 - 8);
  v108 = v10;
  v11 = *(v107 + 64);
  MEMORY[0x28223BE20](v10);
  v106 = &v85 - v12;
  v13 = type metadata accessor for MLS.OutgoingGroupNameChange();
  v104 = *(v13 - 8);
  v105 = v13;
  v14 = *(v104 + 64);
  MEMORY[0x28223BE20](v13);
  v103 = &v85 - v15;
  v16 = type metadata accessor for MLS.OutgoingDowngrade();
  v101 = *(v16 - 8);
  v102 = v16;
  v17 = *(v101 + 64);
  MEMORY[0x28223BE20](v16);
  v100 = &v85 - v18;
  v114 = v3;
  v115 = v4;
  v116 = v5;
  v117 = v6;
  v19 = type metadata accessor for MLS.OutgoingRecreateGroup();
  v98 = *(v19 - 8);
  v99 = v19;
  v20 = *(v98 + 64);
  MEMORY[0x28223BE20](v19);
  v97 = &v85 - v21;
  v114 = v3;
  v115 = v4;
  v116 = v5;
  v117 = v6;
  v96 = type metadata accessor for MLS.OutgoingResurrectGroup();
  v95 = *(v96 - 8);
  v22 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v85 - v23;
  v114 = v3;
  v115 = v4;
  v116 = v5;
  v117 = v6;
  v93 = type metadata accessor for MLS.OutgoingResync();
  v92 = *(v93 - 8);
  v24 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v85 - v25;
  v90 = type metadata accessor for MLS.OutgoingKeyUpdate();
  v89 = *(v90 - 8);
  v26 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = &v85 - v27;
  v114 = v3;
  v115 = v4;
  v116 = v5;
  v117 = v6;
  v28 = type metadata accessor for MLS.OutgoingKickMember();
  v87 = *(v28 - 8);
  v29 = *(v87 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v85 - v30;
  v114 = v3;
  v115 = v4;
  v116 = v5;
  v117 = v6;
  v32 = type metadata accessor for MLS.OutgoingAddMember();
  v86 = *(v32 - 8);
  v33 = *(v86 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v85 - v34;
  v114 = v3;
  v115 = v4;
  v116 = v5;
  v117 = v6;
  Group = type metadata accessor for MLS.OutgoingCreateGroup();
  v37 = *(Group - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](Group);
  v41 = &v85 - v40;
  v42 = *(a1 - 1);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  v45 = &v85 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v45, v112, a1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v78 = v86;
      (*(v86 + 32))(v35, v45, v32);
      v79 = &v35[*(v32 + 64)];
      v59 = *v79;
      v58 = *(v79 + 1);
      v60 = *(v79 + 2);
      v61 = *(v79 + 3);

      outlined copy of Data._Representation(v60, v61);
      result = (*(v78 + 8))(v35, v32);
      goto LABEL_19;
    case 2u:
      v56 = v87;
      (*(v87 + 32))(v31, v45, v28);
      v57 = &v31[*(v28 + 64)];
      v59 = *v57;
      v58 = *(v57 + 1);
      v60 = *(v57 + 2);
      v61 = *(v57 + 3);

      outlined copy of Data._Representation(v60, v61);
      result = (*(v56 + 8))(v31, v28);
      goto LABEL_19;
    case 3u:
    case 6u:
    case 7u:
    case 0xAu:
    case 0xFu:
    case 0x10u:
      v46 = v113;
      *v113 = 0u;
      v46[1] = 0u;
      return (*(v42 + 8))(v45, a1);
    case 4u:
      v62 = v89;
      v63 = v88;
      v64 = v90;
      (*(v89 + 32))(v88, v45, v90);
      v65 = &v63[*(v64 + 48)];
      v66 = *v65;
      v67 = *(v65 + 1);
      v68 = *(v65 + 2);
      v69 = *(v65 + 3);

      outlined copy of Data._Representation(v68, v69);
      result = (*(v62 + 8))(v63, v64);
      v70 = v113;
      *v113 = v66;
      v70[1] = v67;
      v70[2] = v68;
      v70[3] = v69;
      return result;
    case 5u:
      v48 = v92;
      v49 = *(v92 + 32);
      v50 = v91;
      v51 = v91;
      v52 = v45;
      v53 = &v118;
      goto LABEL_11;
    case 8u:
      v48 = v95;
      v49 = *(v95 + 32);
      v50 = v94;
      v51 = v94;
      v52 = v45;
      v53 = &v119;
LABEL_11:
      v55 = *(v53 - 32);
      goto LABEL_14;
    case 9u:
      v50 = v97;
      v48 = v98;
      v80 = v45;
      v55 = v99;
      (*(v98 + 32))(v97, v80, v99);
      goto LABEL_15;
    case 0xBu:
      v50 = v100;
      v48 = v101;
      v71 = v45;
      v55 = v102;
      (*(v101 + 32))(v100, v71, v102);
      goto LABEL_17;
    case 0xCu:
      v50 = v103;
      v48 = v104;
      v82 = v45;
      v55 = v105;
      (*(v104 + 32))(v103, v82, v105);
LABEL_17:
      v81 = *(v55 + 48);
      goto LABEL_18;
    case 0xDu:
      v50 = v106;
      v48 = v107;
      v54 = v45;
      v55 = v108;
      (*(v107 + 32))(v106, v54, v108);
      goto LABEL_15;
    case 0xEu:
      v50 = v109;
      v48 = v110;
      v49 = *(v110 + 32);
      v51 = v109;
      v52 = v45;
      v55 = v111;
LABEL_14:
      v49(v51, v52, v55);
LABEL_15:
      v81 = *(v55 + 64);
LABEL_18:
      v83 = &v50[v81];
      v59 = *v83;
      v58 = *(v83 + 1);
      v60 = *(v83 + 2);
      v61 = *(v83 + 3);

      outlined copy of Data._Representation(v60, v61);
      result = (*(v48 + 8))(v50, v55);
LABEL_19:
      v84 = v113;
      *v113 = v59;
      v84[1] = v58;
      v84[2] = v60;
      v84[3] = v61;
      break;
    default:
      (*(v37 + 32))(v41, v45, Group);
      v72 = &v41[*(Group + 64)];
      v74 = *v72;
      v73 = *(v72 + 1);
      v75 = *(v72 + 2);
      v76 = *(v72 + 3);

      outlined copy of Data._Representation(v75, v76);
      result = (*(v37 + 8))(v41, Group);
      v77 = v113;
      *v113 = v74;
      v77[1] = v73;
      v77[2] = v75;
      v77[3] = v76;
      break;
  }

  return result;
}

uint64_t MLS.OutgoingEventType.welcome.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v63 = a1[2];
  v3 = v63;
  v64 = v4;
  v65 = v5;
  v66 = v6;
  v7 = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = &v53 - v9;
  v64 = v4;
  v65 = v5;
  v66 = v6;
  v10 = type metadata accessor for MLS.OutgoingRecreateGroup();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  v55 = &v53 - v12;
  v63 = v3;
  v64 = v4;
  v65 = v5;
  v66 = v6;
  v13 = type metadata accessor for MLS.OutgoingResurrectGroup();
  v54 = *(v13 - 8);
  v14 = *(v54 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  v63 = v3;
  v64 = v4;
  v65 = v5;
  v66 = v6;
  v17 = type metadata accessor for MLS.OutgoingAddMember();
  v53 = *(v17 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - v19;
  v63 = v3;
  v64 = v4;
  v65 = v5;
  v66 = v6;
  Group = type metadata accessor for MLS.OutgoingCreateGroup();
  v22 = *(Group - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](Group);
  v26 = &v53 - v25;
  v27 = *(a1 - 1);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v30, v61, a1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = v53;
      (*(v53 + 32))(v20, v30, v17);
      v47 = &v20[*(v17 + 68)];
      v49 = *v47;
      v48 = *(v47 + 1);
      v50 = *(v47 + 2);
      v51 = *(v47 + 3);

      outlined copy of Data._Representation(v50, v51);
      result = (*(v46 + 8))(v20, v17);
      v52 = v62;
      *v62 = v49;
      v52[1] = v48;
      v52[2] = v50;
      v52[3] = v51;
      return result;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
      v31 = v62;
      *v62 = 0u;
      *(v31 + 1) = 0u;
      return (*(v27 + 8))(v30, a1);
    case 8u:
      v36 = v54;
      (*(v54 + 32))(v16, v30, v13);
      v37 = &v16[*(v13 + 68)];
      v39 = *v37;
      v38 = *(v37 + 1);
      v40 = *(v37 + 2);
      v41 = *(v37 + 3);

      outlined copy of Data._Representation(v40, v41);
      result = (*(v36 + 8))(v16, v13);
      goto LABEL_7;
    case 9u:
      v34 = v55;
      v33 = v56;
      v35 = v57;
      (*(v56 + 32))(v55, v30, v57);
      goto LABEL_6;
    case 0xDu:
      v34 = v58;
      v33 = v59;
      v35 = v60;
      (*(v59 + 32))(v58, v30, v60);
LABEL_6:
      v42 = &v34[*(v35 + 68)];
      v39 = *v42;
      v38 = *(v42 + 1);
      v40 = *(v42 + 2);
      v41 = *(v42 + 3);

      outlined copy of Data._Representation(v40, v41);
      result = (*(v33 + 8))(v34, v35);
LABEL_7:
      v43 = v62;
      *v62 = v39;
      break;
    default:
      (*(v22 + 32))(v26, v30, Group);
      v44 = &v26[*(Group + 68)];
      v45 = *v44;
      v38 = *(v44 + 1);
      v40 = *(v44 + 2);
      v41 = *(v44 + 3);

      outlined copy of Data._Representation(v40, v41);
      result = (*(v22 + 8))(v26, Group);
      v43 = v62;
      *v62 = v45;
      break;
  }

  v43[1] = v38;
  v43[2] = v40;
  v43[3] = v41;
  return result;
}

uint64_t MLS.OutgoingEventType.message.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  v12 = *(v8 + 40);
  v13 = type metadata accessor for MLS.OutgoingApplicationSend();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  (*(v6 + 16))(v10, v3, a1);
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    (*(v14 + 32))(v17, v10, v13);
    v18 = &v17[*(v13 + 48)];
    v20 = *v18;
    v19 = *(v18 + 1);
    v21 = *(v18 + 2);
    v22 = *(v18 + 3);

    outlined copy of Data._Representation(v21, v22);
    result = (*(v14 + 8))(v17, v13);
  }

  else
  {
    result = (*(v6 + 8))(v10, a1);
    v20 = 0;
    v19 = 0;
    v21 = 0;
    v22 = 0;
  }

  *a2 = v20;
  a2[1] = v19;
  a2[2] = v21;
  a2[3] = v22;
  return result;
}

uint64_t MLS.OutgoingEventType.proposal.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  v12 = *(v8 + 40);
  v13 = type metadata accessor for MLS.OutgoingRemoveSelf();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  (*(v6 + 16))(v10, v3, a1);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    (*(v14 + 32))(v17, v10, v13);
    v18 = &v17[*(v13 + 48)];
    v20 = *v18;
    v19 = *(v18 + 1);
    v21 = *(v18 + 2);
    v22 = *(v18 + 3);

    outlined copy of Data._Representation(v21, v22);
    result = (*(v14 + 8))(v17, v13);
  }

  else
  {
    result = (*(v6 + 8))(v10, a1);
    v20 = 0;
    v19 = 0;
    v21 = 0;
    v22 = 0;
  }

  *a2 = v20;
  a2[1] = v19;
  a2[2] = v21;
  a2[3] = v22;
  return result;
}

uint64_t MLS.OutgoingEventType.innerEvent.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = *(a1 + 32);
      v34 = *(a1 + 16);
      v35 = v25;
      Group = type metadata accessor for MLS.OutgoingAddMember();
      break;
    case 2u:
      v19 = *(a1 + 32);
      v34 = *(a1 + 16);
      v35 = v19;
      Group = type metadata accessor for MLS.OutgoingKickMember();
      break;
    case 3u:
      v21 = *(a1 + 24);
      v22 = *(a1 + 40);
      Group = type metadata accessor for MLS.OutgoingRemoveSelf();
      break;
    case 4u:
      v14 = *(a1 + 24);
      v15 = *(a1 + 40);
      Group = type metadata accessor for MLS.OutgoingKeyUpdate();
      break;
    case 5u:
      v26 = *(a1 + 32);
      v34 = *(a1 + 16);
      v35 = v26;
      Group = type metadata accessor for MLS.OutgoingResync();
      break;
    case 6u:
      v28 = *(a1 + 32);
      v34 = *(a1 + 16);
      v35 = v28;
      Group = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2();
      break;
    case 7u:
      v23 = *(a1 + 24);
      v24 = *(a1 + 40);
      Group = type metadata accessor for MLS.OutgoingFailureToDecrypt();
      break;
    case 8u:
      v31 = *(a1 + 32);
      v34 = *(a1 + 16);
      v35 = v31;
      Group = type metadata accessor for MLS.OutgoingResurrectGroup();
      break;
    case 9u:
      v18 = *(a1 + 32);
      v34 = *(a1 + 16);
      v35 = v18;
      Group = type metadata accessor for MLS.OutgoingRecreateGroup();
      break;
    case 0xAu:
      v29 = *(a1 + 24);
      v30 = *(a1 + 40);
      Group = type metadata accessor for MLS.OutgoingApplicationSend();
      break;
    case 0xBu:
      v12 = *(a1 + 24);
      v13 = *(a1 + 40);
      Group = type metadata accessor for MLS.OutgoingDowngrade();
      break;
    case 0xCu:
      v16 = *(a1 + 24);
      v17 = *(a1 + 40);
      Group = type metadata accessor for MLS.OutgoingGroupNameChange();
      break;
    case 0xDu:
      v27 = *(a1 + 32);
      v34 = *(a1 + 16);
      v35 = v27;
      Group = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials();
      break;
    case 0xEu:
      v11 = *(a1 + 32);
      v34 = *(a1 + 16);
      v35 = v11;
      Group = type metadata accessor for MLS.OutgoingProposalCommitted();
      break;
    case 0xFu:
      v20 = *(a1 + 32);
      v34 = *(a1 + 16);
      v35 = v20;
      Group = type metadata accessor for MLS.OutgoingGroupRepaired();
      break;
    case 0x10u:
      v10 = *(a1 + 32);
      v34 = *(a1 + 16);
      v35 = v10;
      Group = type metadata accessor for MLS.OutgoingErrorOccurred();
      break;
    default:
      v8 = *(a1 + 32);
      v34 = *(a1 + 16);
      v35 = v8;
      Group = type metadata accessor for MLS.OutgoingCreateGroup();
      break;
  }

  a2[3] = Group;
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(Group - 8) + 32))(boxed_opaque_existential_1, v6, Group);
}

uint64_t MLS.OutgoingEventType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7247657461657263 && a2 == 0xEB0000000070756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65626D654D646461 && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x626D654D6B63696BLL && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x655365766F6D6572 && a2 == 0xEA0000000000666CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746164705579656BLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E79736572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002651E98D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002651E98F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6365727275736572 && a2 == 0xEE0070756F724774 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6574616572636572 && a2 == 0xED000070756F7247 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEF646E65536E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x646172676E776F64 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xEF65676E61684365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002651E9910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x70655270756F7267 && a2 == 0xED00006465726961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x63634F726F727265 && a2 == 0xED00006465727275)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

unint64_t MLS.OutgoingEventType.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7247657461657263;
  switch(a1)
  {
    case 1:
      result = 0x65626D654D646461;
      break;
    case 2:
      result = 0x626D654D6B63696BLL;
      break;
    case 3:
      result = 0x655365766F6D6572;
      break;
    case 4:
      result = 0x746164705579656BLL;
      break;
    case 5:
      result = 0x636E79736572;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6365727275736572;
      break;
    case 9:
      result = 0x6574616572636572;
      break;
    case 10:
      result = 0x746163696C707061;
      break;
    case 11:
      result = 0x646172676E776F64;
      break;
    case 12:
      result = 0x6D614E70756F7267;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x70655270756F7267;
      break;
    case 16:
      result = 0x63634F726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.AddMemberCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.AddMemberCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.ApplicationSendCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.ApplicationSendCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.CreateGroupCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.CreateGroupCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.DowngradeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.DowngradeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.ErrorOccurredCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.ErrorOccurredCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.FailureToDecryptCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.FailureToDecryptCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.FailureToDecrypt_v2CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.FailureToDecrypt_v2CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.GroupNameChangeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.GroupNameChangeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.GroupRepairedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.GroupRepairedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.KeyUpdateCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.KeyUpdateCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.KickMemberCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.KickMemberCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.ProposalCommittedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.ProposalCommittedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.RecreateGroupCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.RecreateGroupCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.RemoveSelfCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.RemoveSelfCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.ReplaceExpiredCertsCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.ReplaceExpiredCertsCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.ResurrectGroupCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.ResurrectGroupCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventType<A, B>.ResyncCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventType<A, B>.ResyncCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingEventType.encode(to:)(void *a1, void *a2)
{
  v273 = a1;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v276 = a2[2];
  v3 = v276;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v268 = type metadata accessor for MLS.OutgoingEventType.ErrorOccurredCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v270 = *(v7 - 8);
  v271 = v7;
  v8 = *(v270 + 64);
  MEMORY[0x28223BE20](v7);
  v267 = v138 - v9;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v269 = type metadata accessor for MLS.OutgoingErrorOccurred();
  v266 = *(v269 - 8);
  v10 = *(v266 + 64);
  MEMORY[0x28223BE20](v269);
  v264 = v138 - v11;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v12 = type metadata accessor for MLS.OutgoingEventType.GroupRepairedCodingKeys();
  v13 = swift_getWitnessTable();
  v259 = v12;
  v257 = v13;
  v14 = type metadata accessor for KeyedEncodingContainer();
  v262 = *(v14 - 8);
  v263 = v14;
  v15 = *(v262 + 64);
  MEMORY[0x28223BE20](v14);
  v260 = v138 - v16;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v261 = type metadata accessor for MLS.OutgoingGroupRepaired();
  v258 = *(v261 - 8);
  v17 = *(v258 + 64);
  MEMORY[0x28223BE20](v261);
  v256 = v138 - v18;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v19 = type metadata accessor for MLS.OutgoingEventType.ProposalCommittedCodingKeys();
  v20 = swift_getWitnessTable();
  v251 = v19;
  v249 = v20;
  v255 = type metadata accessor for KeyedEncodingContainer();
  v254 = *(v255 - 8);
  v21 = *(v254 + 64);
  MEMORY[0x28223BE20](v255);
  v252 = v138 - v22;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v253 = type metadata accessor for MLS.OutgoingProposalCommitted();
  v250 = *(v253 - 8);
  v23 = *(v250 + 64);
  MEMORY[0x28223BE20](v253);
  v248 = v138 - v24;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v25 = type metadata accessor for MLS.OutgoingEventType.ReplaceExpiredCertsCodingKeys();
  v26 = swift_getWitnessTable();
  v243 = v25;
  v241 = v26;
  v247 = type metadata accessor for KeyedEncodingContainer();
  v246 = *(v247 - 8);
  v27 = *(v246 + 64);
  MEMORY[0x28223BE20](v247);
  v244 = v138 - v28;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v245 = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials();
  v242 = *(v245 - 8);
  v29 = *(v242 + 64);
  MEMORY[0x28223BE20](v245);
  v240 = v138 - v30;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v31 = type metadata accessor for MLS.OutgoingEventType.GroupNameChangeCodingKeys();
  v32 = swift_getWitnessTable();
  v234 = v31;
  v233 = v32;
  v239 = type metadata accessor for KeyedEncodingContainer();
  v238 = *(v239 - 8);
  v33 = *(v238 + 64);
  MEMORY[0x28223BE20](v239);
  v235 = v138 - v34;
  v237 = type metadata accessor for MLS.OutgoingGroupNameChange();
  v236 = *(v237 - 8);
  v35 = *(v236 + 64);
  MEMORY[0x28223BE20](v237);
  v232 = v138 - v36;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v37 = type metadata accessor for MLS.OutgoingEventType.DowngradeCodingKeys();
  v38 = swift_getWitnessTable();
  v226 = v37;
  v225 = v38;
  v231 = type metadata accessor for KeyedEncodingContainer();
  v230 = *(v231 - 8);
  v39 = *(v230 + 64);
  MEMORY[0x28223BE20](v231);
  v227 = v138 - v40;
  v229 = type metadata accessor for MLS.OutgoingDowngrade();
  v228 = *(v229 - 8);
  v41 = *(v228 + 64);
  MEMORY[0x28223BE20](v229);
  v224 = v138 - v42;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v43 = type metadata accessor for MLS.OutgoingEventType.ApplicationSendCodingKeys();
  v44 = swift_getWitnessTable();
  v218 = v43;
  v217 = v44;
  v223 = type metadata accessor for KeyedEncodingContainer();
  v222 = *(v223 - 8);
  v45 = *(v222 + 64);
  MEMORY[0x28223BE20](v223);
  v219 = v138 - v46;
  v221 = type metadata accessor for MLS.OutgoingApplicationSend();
  v220 = *(v221 - 8);
  v47 = *(v220 + 64);
  MEMORY[0x28223BE20](v221);
  v216 = v138 - v48;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v49 = type metadata accessor for MLS.OutgoingEventType.RecreateGroupCodingKeys();
  v50 = swift_getWitnessTable();
  v211 = v49;
  v209 = v50;
  v215 = type metadata accessor for KeyedEncodingContainer();
  v214 = *(v215 - 8);
  v51 = *(v214 + 64);
  MEMORY[0x28223BE20](v215);
  v212 = v138 - v52;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v213 = type metadata accessor for MLS.OutgoingRecreateGroup();
  v210 = *(v213 - 8);
  v53 = *(v210 + 64);
  MEMORY[0x28223BE20](v213);
  v208 = v138 - v54;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v55 = type metadata accessor for MLS.OutgoingEventType.ResurrectGroupCodingKeys();
  v56 = swift_getWitnessTable();
  v203 = v55;
  v201 = v56;
  v207 = type metadata accessor for KeyedEncodingContainer();
  v206 = *(v207 - 8);
  v57 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v204 = v138 - v58;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v205 = type metadata accessor for MLS.OutgoingResurrectGroup();
  v202 = *(v205 - 8);
  v59 = *(v202 + 64);
  MEMORY[0x28223BE20](v205);
  v200 = v138 - v60;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v61 = type metadata accessor for MLS.OutgoingEventType.FailureToDecryptCodingKeys();
  v62 = swift_getWitnessTable();
  v194 = v61;
  v193 = v62;
  v199 = type metadata accessor for KeyedEncodingContainer();
  v198 = *(v199 - 8);
  v63 = *(v198 + 64);
  MEMORY[0x28223BE20](v199);
  v195 = v138 - v64;
  v197 = type metadata accessor for MLS.OutgoingFailureToDecrypt();
  v196 = *(v197 - 8);
  v65 = *(v196 + 64);
  MEMORY[0x28223BE20](v197);
  v192 = v138 - v66;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v67 = type metadata accessor for MLS.OutgoingEventType.FailureToDecrypt_v2CodingKeys();
  v68 = swift_getWitnessTable();
  v187 = v67;
  v185 = v68;
  v191 = type metadata accessor for KeyedEncodingContainer();
  v190 = *(v191 - 8);
  v69 = *(v190 + 64);
  MEMORY[0x28223BE20](v191);
  v188 = v138 - v70;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v189 = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2();
  v186 = *(v189 - 8);
  v71 = *(v186 + 64);
  MEMORY[0x28223BE20](v189);
  v184 = v138 - v72;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v73 = type metadata accessor for MLS.OutgoingEventType.ResyncCodingKeys();
  v74 = swift_getWitnessTable();
  v179 = v73;
  v177 = v74;
  v183 = type metadata accessor for KeyedEncodingContainer();
  v182 = *(v183 - 8);
  v75 = *(v182 + 64);
  MEMORY[0x28223BE20](v183);
  v180 = v138 - v76;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v181 = type metadata accessor for MLS.OutgoingResync();
  v178 = *(v181 - 8);
  v77 = *(v178 + 64);
  MEMORY[0x28223BE20](v181);
  v176 = v138 - v78;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  updated = type metadata accessor for MLS.OutgoingEventType.KeyUpdateCodingKeys();
  v80 = swift_getWitnessTable();
  v170 = updated;
  v169 = v80;
  v175 = type metadata accessor for KeyedEncodingContainer();
  v174 = *(v175 - 8);
  v81 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v171 = v138 - v82;
  v173 = type metadata accessor for MLS.OutgoingKeyUpdate();
  v172 = *(v173 - 8);
  v83 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v168 = v138 - v84;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v85 = type metadata accessor for MLS.OutgoingEventType.RemoveSelfCodingKeys();
  v86 = swift_getWitnessTable();
  v162 = v85;
  v161 = v86;
  v167 = type metadata accessor for KeyedEncodingContainer();
  v166 = *(v167 - 8);
  v87 = *(v166 + 64);
  MEMORY[0x28223BE20](v167);
  v163 = v138 - v88;
  v165 = type metadata accessor for MLS.OutgoingRemoveSelf();
  v164 = *(v165 - 8);
  v89 = *(v164 + 64);
  MEMORY[0x28223BE20](v165);
  v160 = v138 - v90;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v91 = type metadata accessor for MLS.OutgoingEventType.KickMemberCodingKeys();
  v92 = swift_getWitnessTable();
  v155 = v91;
  v153 = v92;
  v159 = type metadata accessor for KeyedEncodingContainer();
  v158 = *(v159 - 8);
  v93 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v156 = v138 - v94;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v157 = type metadata accessor for MLS.OutgoingKickMember();
  v154 = *(v157 - 8);
  v95 = *(v154 + 64);
  MEMORY[0x28223BE20](v157);
  v152 = v138 - v96;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v97 = type metadata accessor for MLS.OutgoingEventType.AddMemberCodingKeys();
  v98 = swift_getWitnessTable();
  v147 = v97;
  v145 = v98;
  v151 = type metadata accessor for KeyedEncodingContainer();
  v150 = *(v151 - 8);
  v99 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v148 = v138 - v100;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  v149 = type metadata accessor for MLS.OutgoingAddMember();
  v146 = *(v149 - 8);
  v101 = *(v146 + 64);
  MEMORY[0x28223BE20](v149);
  v144 = v138 - v102;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  type metadata accessor for MLS.OutgoingEventType.CreateGroupCodingKeys();
  v138[1] = swift_getWitnessTable();
  v143 = type metadata accessor for KeyedEncodingContainer();
  v142 = *(v143 - 8);
  v103 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v140 = v138 - v104;
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  Group = type metadata accessor for MLS.OutgoingCreateGroup();
  v139 = *(Group - 8);
  v105 = *(v139 + 64);
  v106 = MEMORY[0x28223BE20](Group);
  v138[0] = v138 - v107;
  v108 = *(a2 - 1);
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v106);
  v111 = v138 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = v3;
  v277 = v4;
  v278 = v5;
  v279 = v6;
  type metadata accessor for MLS.OutgoingEventType.CodingKeys();
  swift_getWitnessTable();
  v112 = type metadata accessor for KeyedEncodingContainer();
  v274 = *(v112 - 8);
  v275 = v112;
  v113 = *(v274 + 64);
  MEMORY[0x28223BE20](v112);
  v115 = (v138 - v114);
  v116 = v273[4];
  __swift_project_boxed_opaque_existential_1(v273, v273[3]);
  v273 = v115;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v108 + 16))(v111, v272, a2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v124 = v146;
      v125 = v144;
      v126 = v149;
      (*(v146 + 32))(v144, v111, v149);
      LOBYTE(v276) = 1;
      v127 = v148;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v128 = v151;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v130 = &v182;
      goto LABEL_20;
    case 2u:
      v124 = v154;
      v125 = v152;
      v126 = v157;
      (*(v154 + 32))(v152, v111, v157);
      LOBYTE(v276) = 2;
      v127 = v156;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v128 = v159;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v130 = &v190;
      goto LABEL_20;
    case 3u:
      v131 = v164;
      v132 = v160;
      v133 = v165;
      (*(v164 + 32))(v160, v111, v165);
      LOBYTE(v276) = 3;
      v134 = v163;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v135 = v167;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v136 = &v198;
      goto LABEL_18;
    case 4u:
      v131 = v172;
      v132 = v168;
      v133 = v173;
      (*(v172 + 32))(v168, v111, v173);
      LOBYTE(v276) = 4;
      v134 = v171;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v135 = v175;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v136 = &v206;
      goto LABEL_18;
    case 5u:
      v124 = v178;
      v125 = v176;
      v126 = v181;
      (*(v178 + 32))(v176, v111, v181);
      LOBYTE(v276) = 5;
      v127 = v180;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v128 = v183;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v130 = &v214;
      goto LABEL_20;
    case 6u:
      v124 = v186;
      v125 = v184;
      v126 = v189;
      (*(v186 + 32))(v184, v111, v189);
      LOBYTE(v276) = 6;
      v127 = v188;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v128 = v191;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v130 = &v222;
      goto LABEL_20;
    case 7u:
      v131 = v196;
      v132 = v192;
      v133 = v197;
      (*(v196 + 32))(v192, v111, v197);
      LOBYTE(v276) = 7;
      v134 = v195;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v135 = v199;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v136 = &v230;
      goto LABEL_18;
    case 8u:
      v124 = v202;
      v125 = v200;
      v126 = v205;
      (*(v202 + 32))(v200, v111, v205);
      LOBYTE(v276) = 8;
      v127 = v204;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v128 = v207;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v130 = &v238;
      goto LABEL_20;
    case 9u:
      v124 = v210;
      v125 = v208;
      v126 = v213;
      (*(v210 + 32))(v208, v111, v213);
      LOBYTE(v276) = 9;
      v127 = v212;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v128 = v215;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v130 = &v246;
      goto LABEL_20;
    case 0xAu:
      v131 = v220;
      v132 = v216;
      v133 = v221;
      (*(v220 + 32))(v216, v111, v221);
      LOBYTE(v276) = 10;
      v134 = v219;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v135 = v223;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v136 = &v254;
      goto LABEL_18;
    case 0xBu:
      v131 = v228;
      v132 = v224;
      v133 = v229;
      (*(v228 + 32))(v224, v111, v229);
      LOBYTE(v276) = 11;
      v134 = v227;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v135 = v231;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v136 = &v262;
      goto LABEL_18;
    case 0xCu:
      v131 = v236;
      v132 = v232;
      v133 = v237;
      (*(v236 + 32))(v232, v111, v237);
      LOBYTE(v276) = 12;
      v134 = v235;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v135 = v239;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v136 = &v270;
LABEL_18:
      (*(*(v136 - 32) + 8))(v134, v135);
      (*(v131 + 8))(v132, v133);
      return (*(v274 + 8))(v122, v121);
    case 0xDu:
      v124 = v242;
      v125 = v240;
      v126 = v245;
      (*(v242 + 32))(v240, v111, v245);
      LOBYTE(v276) = 13;
      v127 = v244;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v128 = v247;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v130 = &v278;
      goto LABEL_20;
    case 0xEu:
      v124 = v250;
      v125 = v248;
      v126 = v253;
      (*(v250 + 32))(v248, v111, v253);
      LOBYTE(v276) = 14;
      v127 = v252;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v128 = v255;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v130 = &v280;
LABEL_20:
      v129 = *(v130 - 32);
      goto LABEL_21;
    case 0xFu:
      v124 = v258;
      v125 = v256;
      v126 = v261;
      (*(v258 + 32))(v256, v111, v261);
      LOBYTE(v276) = 15;
      v127 = v260;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v128 = v263;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v129 = v262;
      goto LABEL_21;
    case 0x10u:
      v124 = v266;
      v125 = v264;
      v126 = v269;
      (*(v266 + 32))(v264, v111, v269);
      LOBYTE(v276) = 16;
      v127 = v267;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v128 = v271;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v129 = v270;
LABEL_21:
      (*(v129 + 8))(v127, v128);
      (*(v124 + 8))(v125, v126);
      break;
    default:
      v117 = v139;
      v118 = v138[0];
      v119 = Group;
      (*(v139 + 32))(v138[0], v111, Group);
      LOBYTE(v276) = 0;
      v120 = v140;
      v121 = v275;
      v122 = v273;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v123 = v143;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v142 + 8))(v120, v123);
      (*(v117 + 8))(v118, v119);
      break;
  }

  return (*(v274 + 8))(v122, v121);
}

uint64_t MLS.OutgoingEventType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v310 = a6;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v302 = type metadata accessor for MLS.OutgoingEventType.ErrorOccurredCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v249 = type metadata accessor for KeyedDecodingContainer();
  v220 = *(v249 - 8);
  v11 = *(v220 + 64);
  MEMORY[0x28223BE20](v249);
  v283 = &v198 - v12;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v13 = type metadata accessor for MLS.OutgoingEventType.GroupRepairedCodingKeys();
  v14 = swift_getWitnessTable();
  v300 = v13;
  v299 = v14;
  v248 = type metadata accessor for KeyedDecodingContainer();
  v219 = *(v248 - 8);
  v15 = *(v219 + 64);
  MEMORY[0x28223BE20](v248);
  v282 = &v198 - v16;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v17 = type metadata accessor for MLS.OutgoingEventType.ProposalCommittedCodingKeys();
  v18 = swift_getWitnessTable();
  v298 = v17;
  v297 = v18;
  v247 = type metadata accessor for KeyedDecodingContainer();
  v218 = *(v247 - 8);
  v19 = *(v218 + 64);
  MEMORY[0x28223BE20](v247);
  v281 = &v198 - v20;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v21 = type metadata accessor for MLS.OutgoingEventType.ReplaceExpiredCertsCodingKeys();
  v22 = swift_getWitnessTable();
  v296 = v21;
  v295 = v22;
  v246 = type metadata accessor for KeyedDecodingContainer();
  v217 = *(v246 - 8);
  v23 = *(v217 + 64);
  MEMORY[0x28223BE20](v246);
  v280 = &v198 - v24;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v25 = type metadata accessor for MLS.OutgoingEventType.GroupNameChangeCodingKeys();
  v26 = swift_getWitnessTable();
  v294 = v25;
  v293 = v26;
  v245 = type metadata accessor for KeyedDecodingContainer();
  v216 = *(v245 - 8);
  v27 = *(v216 + 64);
  MEMORY[0x28223BE20](v245);
  v279 = &v198 - v28;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v29 = type metadata accessor for MLS.OutgoingEventType.DowngradeCodingKeys();
  v30 = swift_getWitnessTable();
  v292 = v29;
  v291 = v30;
  v244 = type metadata accessor for KeyedDecodingContainer();
  v215 = *(v244 - 8);
  v31 = *(v215 + 64);
  MEMORY[0x28223BE20](v244);
  v278 = &v198 - v32;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v33 = type metadata accessor for MLS.OutgoingEventType.ApplicationSendCodingKeys();
  v34 = swift_getWitnessTable();
  v290 = v33;
  v289 = v34;
  v243 = type metadata accessor for KeyedDecodingContainer();
  v214 = *(v243 - 8);
  v35 = *(v214 + 64);
  MEMORY[0x28223BE20](v243);
  v277 = &v198 - v36;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v37 = type metadata accessor for MLS.OutgoingEventType.RecreateGroupCodingKeys();
  v38 = swift_getWitnessTable();
  v288 = v37;
  v287 = v38;
  v242 = type metadata accessor for KeyedDecodingContainer();
  v213 = *(v242 - 8);
  v39 = *(v213 + 64);
  MEMORY[0x28223BE20](v242);
  v276 = &v198 - v40;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v41 = type metadata accessor for MLS.OutgoingEventType.ResurrectGroupCodingKeys();
  v42 = swift_getWitnessTable();
  v286 = v41;
  v274 = v42;
  v241 = type metadata accessor for KeyedDecodingContainer();
  v212 = *(v241 - 8);
  v43 = *(v212 + 64);
  MEMORY[0x28223BE20](v241);
  v275 = &v198 - v44;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v45 = type metadata accessor for MLS.OutgoingEventType.FailureToDecryptCodingKeys();
  v46 = swift_getWitnessTable();
  v272 = v45;
  v271 = v46;
  v240 = type metadata accessor for KeyedDecodingContainer();
  v211 = *(v240 - 8);
  v47 = *(v211 + 64);
  MEMORY[0x28223BE20](v240);
  v273 = &v198 - v48;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v49 = type metadata accessor for MLS.OutgoingEventType.FailureToDecrypt_v2CodingKeys();
  v50 = swift_getWitnessTable();
  v269 = v49;
  v268 = v50;
  v239 = type metadata accessor for KeyedDecodingContainer();
  v210 = *(v239 - 8);
  v51 = *(v210 + 64);
  MEMORY[0x28223BE20](v239);
  v270 = &v198 - v52;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v53 = type metadata accessor for MLS.OutgoingEventType.ResyncCodingKeys();
  v54 = swift_getWitnessTable();
  v266 = v53;
  v265 = v54;
  v238 = type metadata accessor for KeyedDecodingContainer();
  v209 = *(v238 - 8);
  v55 = *(v209 + 64);
  MEMORY[0x28223BE20](v238);
  v267 = &v198 - v56;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  updated = type metadata accessor for MLS.OutgoingEventType.KeyUpdateCodingKeys();
  v58 = swift_getWitnessTable();
  v263 = updated;
  v262 = v58;
  v237 = type metadata accessor for KeyedDecodingContainer();
  v208 = *(v237 - 8);
  v59 = *(v208 + 64);
  MEMORY[0x28223BE20](v237);
  v264 = &v198 - v60;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v61 = type metadata accessor for MLS.OutgoingEventType.RemoveSelfCodingKeys();
  v62 = swift_getWitnessTable();
  v260 = v61;
  v259 = v62;
  v236 = type metadata accessor for KeyedDecodingContainer();
  v207 = *(v236 - 8);
  v63 = *(v207 + 64);
  MEMORY[0x28223BE20](v236);
  v261 = &v198 - v64;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v65 = type metadata accessor for MLS.OutgoingEventType.KickMemberCodingKeys();
  v66 = swift_getWitnessTable();
  v257 = v65;
  v256 = v66;
  v235 = type metadata accessor for KeyedDecodingContainer();
  v206 = *(v235 - 8);
  v67 = *(v206 + 64);
  MEMORY[0x28223BE20](v235);
  v258 = &v198 - v68;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v69 = type metadata accessor for MLS.OutgoingEventType.AddMemberCodingKeys();
  v70 = swift_getWitnessTable();
  v254 = v69;
  v253 = v70;
  v234 = type metadata accessor for KeyedDecodingContainer();
  v205 = *(v234 - 8);
  v71 = *(v205 + 64);
  MEMORY[0x28223BE20](v234);
  v255 = &v198 - v72;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  GroupCodingKeys = type metadata accessor for MLS.OutgoingEventType.CreateGroupCodingKeys();
  v74 = swift_getWitnessTable();
  v251 = GroupCodingKeys;
  v250 = v74;
  v233 = type metadata accessor for KeyedDecodingContainer();
  v204 = *(v233 - 8);
  v75 = *(v204 + 64);
  MEMORY[0x28223BE20](v233);
  v252 = &v198 - v76;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v77 = type metadata accessor for MLS.OutgoingEventType.CodingKeys();
  v312 = swift_getWitnessTable();
  v78 = type metadata accessor for KeyedDecodingContainer();
  v304 = *(v78 - 8);
  v305 = v78;
  v79 = *(v304 + 64);
  MEMORY[0x28223BE20](v78);
  v318 = &v198 - v80;
  v285 = a2;
  *&v316 = a2;
  *(&v316 + 1) = a3;
  v307 = a3;
  v308 = a4;
  *&v317 = a4;
  *(&v317 + 1) = a5;
  v309 = a5;
  v303 = type metadata accessor for MLS.OutgoingEventType();
  v284 = *(v303 - 8);
  v81 = *(v284 + 64);
  v82 = MEMORY[0x28223BE20](v303);
  v232 = &v198 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x28223BE20](v82);
  v231 = &v198 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v230 = &v198 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v229 = &v198 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v228 = &v198 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v227 = &v198 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v226 = &v198 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v225 = &v198 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v224 = &v198 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v223 = &v198 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v222 = &v198 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v221 = &v198 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v108 = &v198 - v107;
  v109 = MEMORY[0x28223BE20](v106);
  v111 = &v198 - v110;
  v112 = MEMORY[0x28223BE20](v109);
  v114 = &v198 - v113;
  v115 = MEMORY[0x28223BE20](v112);
  v117 = &v198 - v116;
  v118 = MEMORY[0x28223BE20](v115);
  v120 = &v198 - v119;
  MEMORY[0x28223BE20](v118);
  v122 = &v198 - v121;
  v123 = a1;
  v125 = a1[3];
  v124 = a1[4];
  v311 = v123;
  __swift_project_boxed_opaque_existential_1(v123, v125);
  *&v306 = v77;
  v126 = v313;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v126)
  {
LABEL_41:
    v192 = v311;
    return __swift_destroy_boxed_opaque_existential_1Tm(v192);
  }

  v199 = v117;
  v200 = v114;
  v201 = v111;
  v202 = v108;
  v203 = v120;
  v128 = v307;
  v127 = v308;
  v130 = v309;
  v129 = v310;
  v312 = v122;
  v313 = 0;
  v131 = v305;
  *&v314 = KeyedDecodingContainer.allKeys.getter();
  type metadata accessor for Array();
  swift_getWitnessTable();
  *&v316 = ArraySlice.init<A>(_:)();
  *(&v316 + 1) = v132;
  *&v317 = v133;
  *(&v317 + 1) = v134;
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  Collection<>.popFirst()();
  v135 = v131;
  if (v314 == 17 || (v306 = v316, v314 = v316, v315 = v317, (Collection.isEmpty.getter() & 1) == 0))
  {
    v143 = v131;
    v144 = type metadata accessor for DecodingError();
    swift_allocError();
    v146 = v145;
    v147 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v146 = v303;
    v148 = v318;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v144 - 8) + 104))(v146, *MEMORY[0x277D84160], v144);
    swift_willThrow();
    (*(v304 + 8))(v148, v143);
LABEL_40:
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v136 = v313;
  v137 = v318;
  v138 = v130;
  switch(&v315)
  {
    case 1u:
      LOBYTE(v314) = 1;
      v179 = v255;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      *&v314 = v285;
      *(&v314 + 1) = v128;
      *&v315 = v127;
      *(&v315 + 1) = v138;
      type metadata accessor for MLS.OutgoingAddMember();
      swift_getWitnessTable();
      v140 = v199;
      v180 = v234;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v205 + 8))(v179, v180);
      (*(v304 + 8))(v318, v135);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 2u:
      LOBYTE(v314) = 2;
      v167 = v258;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      *&v314 = v285;
      *(&v314 + 1) = v128;
      *&v315 = v127;
      *(&v315 + 1) = v138;
      type metadata accessor for MLS.OutgoingKickMember();
      swift_getWitnessTable();
      v140 = v200;
      v168 = v235;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v206 + 8))(v167, v168);
      (*(v304 + 8))(v318, v135);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 3u:
      LOBYTE(v314) = 3;
      v171 = v261;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      v172 = v135;
      type metadata accessor for MLS.OutgoingRemoveSelf();
      swift_getWitnessTable();
      v140 = v201;
      v173 = v236;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v174 = v304;
      (*(v207 + 8))(v171, v173);
      (*(v174 + 8))(v318, v172);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 4u:
      LOBYTE(v314) = 4;
      v157 = v264;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      v158 = v135;
      type metadata accessor for MLS.OutgoingKeyUpdate();
      swift_getWitnessTable();
      v140 = v202;
      v159 = v237;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v160 = v304;
      (*(v208 + 8))(v157, v159);
      (*(v160 + 8))(v318, v158);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 5u:
      LOBYTE(v314) = 5;
      v181 = v267;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      *&v314 = v285;
      *(&v314 + 1) = v128;
      *&v315 = v127;
      *(&v315 + 1) = v138;
      type metadata accessor for MLS.OutgoingResync();
      swift_getWitnessTable();
      v140 = v221;
      v182 = v238;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v209 + 8))(v181, v182);
      (*(v304 + 8))(v318, v135);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 6u:
      LOBYTE(v314) = 6;
      v185 = v270;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      *&v314 = v285;
      *(&v314 + 1) = v128;
      *&v315 = v127;
      *(&v315 + 1) = v138;
      type metadata accessor for MLS.OutgoingFailureToDecrypt_v2();
      swift_getWitnessTable();
      v140 = v222;
      v186 = v239;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v210 + 8))(v185, v186);
      (*(v304 + 8))(v318, v135);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 7u:
      LOBYTE(v314) = 7;
      v175 = v273;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      v176 = v135;
      type metadata accessor for MLS.OutgoingFailureToDecrypt();
      swift_getWitnessTable();
      v140 = v223;
      v177 = v240;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v178 = v304;
      (*(v211 + 8))(v175, v177);
      (*(v178 + 8))(v318, v176);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 8u:
      LOBYTE(v314) = 8;
      v191 = v275;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      *&v314 = v285;
      *(&v314 + 1) = v128;
      *&v315 = v127;
      *(&v315 + 1) = v138;
      type metadata accessor for MLS.OutgoingResurrectGroup();
      swift_getWitnessTable();
      v140 = v224;
      v194 = v241;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v212 + 8))(v191, v194);
      (*(v304 + 8))(v318, v135);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 9u:
      LOBYTE(v314) = 9;
      v165 = v276;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      *&v314 = v285;
      *(&v314 + 1) = v128;
      *&v315 = v127;
      *(&v315 + 1) = v138;
      type metadata accessor for MLS.OutgoingRecreateGroup();
      swift_getWitnessTable();
      v140 = v225;
      v166 = v242;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v213 + 8))(v165, v166);
      (*(v304 + 8))(v318, v135);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 0xAu:
      LOBYTE(v314) = 10;
      v187 = v277;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      v188 = v135;
      type metadata accessor for MLS.OutgoingApplicationSend();
      swift_getWitnessTable();
      v140 = v226;
      v189 = v243;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v190 = v304;
      (*(v214 + 8))(v187, v189);
      (*(v190 + 8))(v318, v188);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 0xBu:
      LOBYTE(v314) = 11;
      v153 = v278;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      v154 = v135;
      type metadata accessor for MLS.OutgoingDowngrade();
      swift_getWitnessTable();
      v140 = v227;
      v155 = v244;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v156 = v304;
      (*(v215 + 8))(v153, v155);
      (*(v156 + 8))(v318, v154);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 0xCu:
      LOBYTE(v314) = 12;
      v161 = v279;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      v162 = v135;
      type metadata accessor for MLS.OutgoingGroupNameChange();
      swift_getWitnessTable();
      v140 = v228;
      v163 = v245;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v164 = v304;
      (*(v216 + 8))(v161, v163);
      (*(v164 + 8))(v318, v162);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 0xDu:
      LOBYTE(v314) = 13;
      v183 = v280;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      *&v314 = v285;
      *(&v314 + 1) = v128;
      *&v315 = v127;
      *(&v315 + 1) = v138;
      type metadata accessor for MLS.OutgoingReplaceExpiredCredentials();
      swift_getWitnessTable();
      v140 = v229;
      v184 = v246;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v217 + 8))(v183, v184);
      (*(v304 + 8))(v318, v135);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 0xEu:
      LOBYTE(v314) = 14;
      v151 = v281;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      *&v314 = v285;
      *(&v314 + 1) = v128;
      *&v315 = v127;
      *(&v315 + 1) = v138;
      type metadata accessor for MLS.OutgoingProposalCommitted();
      swift_getWitnessTable();
      v140 = v230;
      v152 = v247;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v218 + 8))(v151, v152);
      (*(v304 + 8))(v318, v135);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 0xFu:
      LOBYTE(v314) = 15;
      v169 = v282;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      *&v314 = v285;
      *(&v314 + 1) = v128;
      *&v315 = v127;
      *(&v315 + 1) = v138;
      type metadata accessor for MLS.OutgoingGroupRepaired();
      swift_getWitnessTable();
      v140 = v231;
      v170 = v248;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v219 + 8))(v169, v170);
      (*(v304 + 8))(v318, v135);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    case 0x10u:
      LOBYTE(v314) = 16;
      v149 = v283;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
        goto LABEL_39;
      }

      *&v314 = v285;
      *(&v314 + 1) = v128;
      *&v315 = v127;
      *(&v315 + 1) = v138;
      type metadata accessor for MLS.OutgoingErrorOccurred();
      swift_getWitnessTable();
      v140 = v232;
      v150 = v249;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v220 + 8))(v149, v150);
      (*(v304 + 8))(v318, v135);
      swift_unknownObjectRelease();
      v142 = v303;
      goto LABEL_44;
    default:
      LOBYTE(v314) = 0;
      v139 = v252;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v136)
      {
LABEL_39:
        (*(v304 + 8))(v137, v135);
        goto LABEL_40;
      }

      *&v314 = v285;
      *(&v314 + 1) = v128;
      *&v315 = v127;
      *(&v315 + 1) = v138;
      type metadata accessor for MLS.OutgoingCreateGroup();
      swift_getWitnessTable();
      v140 = v203;
      v141 = v233;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v204 + 8))(v139, v141);
      (*(v304 + 8))(v318, v135);
      swift_unknownObjectRelease();
      v142 = v303;
LABEL_44:
      swift_storeEnumTagMultiPayload();
      v195 = v311;
      v196 = v312;
      v197 = *(v284 + 32);
      v197(v312, v140, v142);
      v197(v129, v196, v142);
      v192 = v195;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v192);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingReplaceExpiredCredentials<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingCreateGroup<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingCreateGroup<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingAddMember<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingAddMember<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingKickMember.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696D6D6F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x666E4970756F7267 && a2 == 0xE90000000000006FLL)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}
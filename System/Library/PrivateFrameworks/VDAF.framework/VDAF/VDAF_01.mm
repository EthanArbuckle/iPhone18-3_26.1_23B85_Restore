void specialized VDAFEncodable.encodedData.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if ((v2 & 1) == 0)
  {
    if (v3)
    {
      v4 = (v3 * 5) >> 64;
      v3 *= 5;
      if (v4 != v3 >> 63)
      {
        goto LABEL_19;
      }
    }
  }

  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v5 + 16);
  if ((v6 & 1) == 0)
  {
    if (v7)
    {
      v8 = (v7 * 5) >> 64;
      v7 *= 5;
      if (v8 != v7 >> 63)
      {
        goto LABEL_20;
      }
    }
  }

  v9 = __OFADD__(v3, v7);
  v10 = v3 + v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 32);
    v12 = *(v11 + 16);
    v9 = __OFADD__(v10, v12);
    v13 = v10 + v12;
    if (!v9)
    {
      v14 = *(v0 + 40);
      v15 = *(v14 + 16);
      if (!__OFADD__(v13, v15))
      {
        v27[0] = specialized Data._Representation.init(capacity:)(v13 + v15);
        v27[1] = v16;
        if (v2)
        {
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
          v26 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
          v24[0] = v1;
          v17 = *(*__swift_project_boxed_opaque_existential_1(v24, v25) + 16);

          Data._Representation.append(contentsOf:)();
          __swift_destroy_boxed_opaque_existential_1(v24);
          if ((v6 & 1) == 0)
          {
LABEL_12:
            specialized Collection<>.encode<A>(into:)(v27, v5);
LABEL_15:
            v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
            v25 = v20;
            v21 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
            v26 = v21;
            v24[0] = v11;
            v22 = *(*__swift_project_boxed_opaque_existential_1(v24, v20) + 16);

            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_1(v24);
            v25 = v20;
            v26 = v21;
            v24[0] = v14;
            v23 = *(*__swift_project_boxed_opaque_existential_1(v24, v20) + 16);

            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_1(v24);
            return;
          }
        }

        else
        {
          specialized Collection<>.encode<A>(into:)(v27, v1);
          if ((v6 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
        v25 = v18;
        v26 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
        v24[0] = v5;
        v19 = *(*__swift_project_boxed_opaque_existential_1(v24, v18) + 16);

        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_1(v24);
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if ((v2 & 1) == 0 && v3)
  {
    if (v3 >> 61)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v3 *= 4;
  }

  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v4 + 16);
  if ((v5 & 1) != 0 || !v6)
  {
LABEL_9:
    v7 = __OFADD__(v3, v6);
    v8 = v3 + v6;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v0 + 32);
      v10 = *(v9 + 16);
      v7 = __OFADD__(v8, v10);
      v11 = v8 + v10;
      if (!v7)
      {
        v12 = *(v0 + 40);
        v13 = *(v12 + 16);
        if (!__OFADD__(v11, v13))
        {
          v25[0] = specialized Data._Representation.init(capacity:)(v11 + v13);
          v25[1] = v14;
          if (v2)
          {
            v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
            v24 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
            v22[0] = v1;
            v15 = *(*__swift_project_boxed_opaque_existential_1(v22, v23) + 16);

            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_1(v22);
            if ((v5 & 1) == 0)
            {
LABEL_14:
              specialized Collection<>.encode<A>(into:)(v25, v4);
LABEL_17:
              v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
              v23 = v18;
              v19 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
              v24 = v19;
              v22[0] = v9;
              v20 = *(*__swift_project_boxed_opaque_existential_1(v22, v18) + 16);

              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_1(v22);
              v23 = v18;
              v24 = v19;
              v22[0] = v12;
              v21 = *(*__swift_project_boxed_opaque_existential_1(v22, v18) + 16);

              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_1(v22);
              return;
            }
          }

          else
          {
            specialized Collection<>.encode<A>(into:)(v25, v1);
            if ((v5 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
          v23 = v16;
          v24 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
          v22[0] = v4;
          v17 = *(*__swift_project_boxed_opaque_existential_1(v22, v16) + 16);

          Data._Representation.append(contentsOf:)();
          __swift_destroy_boxed_opaque_existential_1(v22);
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!(v6 >> 61))
  {
    v6 *= 4;
    goto LABEL_9;
  }

LABEL_22:
  __break(1u);
}

{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if ((v2 & 1) == 0 && v3)
  {
    if (v3 >> 60)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v3 *= 8;
  }

  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v4 + 16);
  if ((v5 & 1) == 0 && v6)
  {
    if (v6 >> 60)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v6 *= 8;
  }

  v7 = __OFADD__(v3, v6);
  v8 = v3 + v6;
  if (v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = *(v0 + 32);
  if (v9)
  {
    v10 = *(v9 + 16);
    v11 = v8 + v10;
    if (!__OFADD__(v8, v10))
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_22;
  }

  v11 = v8;
LABEL_12:
  v21[0] = specialized Data._Representation.init(capacity:)(v11);
  v21[1] = v12;
  if (v2)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v20 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v18[0] = v1;
    v13 = *(*__swift_project_boxed_opaque_existential_1(v18, v19) + 16);

    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_1(v18);
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v19 = v14;
    v20 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    v18[0] = v4;
    v15 = *(*__swift_project_boxed_opaque_existential_1(v18, v14) + 16);

    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_1(v18);
    if (!v9)
    {
      return;
    }

    goto LABEL_18;
  }

  specialized Collection<>.encode<A>(into:)(v21, v1);
  if (v5)
  {
    goto LABEL_17;
  }

LABEL_14:
  specialized Collection<>.encode<A>(into:)(v21, v4);
  if (!v9)
  {
    return;
  }

LABEL_18:
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v19 = v16;
  v20 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v18[0] = v9;
  v17 = *(*__swift_project_boxed_opaque_existential_1(v18, v16) + 16);

  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_1(v18);
}

{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if ((v2 & 1) == 0 && v3)
  {
    if (v3 >> 60)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v3 *= 8;
  }

  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v4 + 16);
  if ((v5 & 1) != 0 || !v6)
  {
LABEL_9:
    v7 = __OFADD__(v3, v6);
    v8 = v3 + v6;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v0 + 32);
      v10 = *(v9 + 16);
      v7 = __OFADD__(v8, v10);
      v11 = v8 + v10;
      if (!v7)
      {
        v12 = *(v0 + 40);
        v13 = *(v12 + 16);
        if (!__OFADD__(v11, v13))
        {
          v25[0] = specialized Data._Representation.init(capacity:)(v11 + v13);
          v25[1] = v14;
          if (v2)
          {
            v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
            v24 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
            v22[0] = v1;
            v15 = *(*__swift_project_boxed_opaque_existential_1(v22, v23) + 16);

            Data._Representation.append(contentsOf:)();
            __swift_destroy_boxed_opaque_existential_1(v22);
            if ((v5 & 1) == 0)
            {
LABEL_14:
              specialized Collection<>.encode<A>(into:)(v25, v4);
LABEL_17:
              v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
              v23 = v18;
              v19 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
              v24 = v19;
              v22[0] = v9;
              v20 = *(*__swift_project_boxed_opaque_existential_1(v22, v18) + 16);

              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_1(v22);
              v23 = v18;
              v24 = v19;
              v22[0] = v12;
              v21 = *(*__swift_project_boxed_opaque_existential_1(v22, v18) + 16);

              Data._Representation.append(contentsOf:)();
              __swift_destroy_boxed_opaque_existential_1(v22);
              return;
            }
          }

          else
          {
            specialized Collection<>.encode<A>(into:)(v25, v1);
            if ((v5 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
          v23 = v16;
          v24 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
          v22[0] = v4;
          v17 = *(*__swift_project_boxed_opaque_existential_1(v22, v16) + 16);

          Data._Representation.append(contentsOf:)();
          __swift_destroy_boxed_opaque_existential_1(v22);
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!(v6 >> 60))
  {
    v6 *= 8;
    goto LABEL_9;
  }

LABEL_22:
  __break(1u);
}

uint64_t specialized VDAFEncodable.encodedData.getter(uint64_t a1)
{
  result = specialized Prio3PublicShare.encodedLength.getter(a1);
  if (result)
  {
    if (result <= 14)
    {
      result = 0;
      v16 = 0;
      v17 = 0;
      if (!a1)
      {
        return result;
      }
    }

    else
    {
      v3 = result;
      v4 = type metadata accessor for __DataStorage();
      v5 = *(v4 + 48);
      v6 = *(v4 + 52);
      swift_allocObject();
      v7 = __DataStorage.init(capacity:)();
      if (v3 > 0x7FFFFFFE)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
        v16 = result;
        v17 = v7 | 0x8000000000000000;
        if (!a1)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        v16 = 0;
        v17 = v7 | 0x4000000000000000;
        if (!a1)
        {
          return result;
        }
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = 0xC000000000000000;
    if (!a1)
    {
      return result;
    }
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    do
    {
      v11 = *v9++;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v15 = v10;
      v13[0] = v11;
      v12 = *(*__swift_project_boxed_opaque_existential_1(v13, v14) + 16);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(v13);
      --v8;
    }

    while (v8);
    return v16;
  }

  return result;
}

{
  v2 = specialized Collection<>.encodedLength.getter(a1);
  result = specialized Data._Representation.init(capacity:)(v2);
  v9[0] = result;
  v9[1] = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      specialized Collection<>.encode<A>(into:)(v9, v8);
      specialized Collection<>.encode<A>(into:)(v9, v7);

      v6 += 2;
      --v5;
    }

    while (v5);
    return v9[0];
  }

  return result;
}

uint64_t PINE<>.shardAndEncodeIntoBytes(_:nonce:seedBytes:)(float *a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = v7;
  memcpy(__dst, v6, sizeof(__dst));
  outlined copy of Data._Representation(a3, a4);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v16 = specialized PINE.shard<A>(_:nonce:seedBytes:)(&v47, a1, a2, v15, a5, a6);

  if (v7)
  {
    return v8;
  }

  v17 = v47;
  v18 = v48;
  v19 = specialized PINEPublicShare.encodedLength.getter(v47, v48);
  v20 = MEMORY[0x277D84F90];
  v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0, MEMORY[0x277D84F90]);
  specialized PINEPublicShare.encode<A>(into:)(&v47, v17, v18);

  v8 = v47;
  v21 = *(v16 + 16);
  if (!v21)
  {

    return v8;
  }

  v46 = v47;
  v47 = v20;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  v23 = v47;
  for (i = (v16 + 72); ; i += 6)
  {
    v25 = *(i - 5);
    v26 = *(i - 32);
    v27 = *(i - 3);
    v28 = *(i - 16);
    v30 = *(i - 1);
    v29 = *i;
    v31 = *(v25 + 16);
    if ((v26 & 1) == 0)
    {
      if (v31)
      {
        v32 = (v31 * 5) >> 64;
        v31 *= 5;
        if (v32 != v31 >> 63)
        {
          break;
        }
      }
    }

    v33 = *(v27 + 16);
    if ((*(i - 2) & 1) == 0)
    {
      if (v33)
      {
        v34 = (v33 * 5) >> 64;
        v33 *= 5;
        if (v34 != v33 >> 63)
        {
          goto LABEL_23;
        }
      }
    }

    v35 = __OFADD__(v31, v33);
    v36 = v31 + v33;
    if (v35)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      break;
    }

    v37 = *(v30 + 16);
    v35 = __OFADD__(v36, v37);
    v38 = v36 + v37;
    if (v35)
    {
      goto LABEL_20;
    }

    v39 = *(v29 + 16);
    v35 = __OFADD__(v38, v39);
    v40 = v38 + v39;
    if (v35)
    {
      goto LABEL_21;
    }

    v41 = v40 & ~(v40 >> 63);
    v42 = *(i - 5);

    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0, MEMORY[0x277D84F90]);

    specialized Share.encode<A>(into:)(&v50, v25, v26);
    specialized Share.encode<A>(into:)(&v50, v27, v28);
    specialized Array.append<A>(contentsOf:)(v30);
    specialized Array.append<A>(contentsOf:)(v29);

    v43 = v50;
    v47 = v23;
    v45 = *(v23 + 2);
    v44 = *(v23 + 3);
    if (v45 >= v44 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
      v23 = v47;
    }

    *(v23 + 2) = v45 + 1;
    *&v23[8 * v45 + 32] = v43;
    if (!--v21)
    {

      return v46;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

{
  memcpy(__dst, v6, 0x148uLL);
  outlined copy of Data._Representation(a3, a4);
  v14 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v15 = __dst;
  v16 = specialized PINE.shard<A>(_:nonce:seedBytes:)(&v47, a1, a2, v14, a5, a6);

  if (v7)
  {
    return v15;
  }

  v17 = v47;
  v18 = v48;
  v19 = specialized PINEPublicShare.encodedLength.getter(v47, v48);
  v20 = MEMORY[0x277D84F90];
  v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0, MEMORY[0x277D84F90]);
  specialized PINEPublicShare.encode<A>(into:)(&v47, v17, v18);

  v15 = v47;
  v21 = *(v16 + 16);
  if (!v21)
  {

    return v15;
  }

  v46 = v47;
  v47 = v20;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  v23 = v47;
  for (i = v16 + 72; ; i += 48)
  {
    v25 = *(i - 40);
    v26 = *(i - 32);
    v27 = *(i - 24);
    v28 = *(i - 16);
    v29 = *(v25 + 16);
    if ((v26 & 1) == 0 && v29)
    {
      if (v29 >> 61)
      {
        goto LABEL_29;
      }

      v29 *= 4;
    }

    v30 = *(v27 + 16);
    if ((*(i - 16) & 1) == 0 && v30)
    {
      if (v30 >> 61)
      {
        goto LABEL_30;
      }

      v30 *= 4;
    }

    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      break;
    }

    v33 = *(*(i - 8) + 16);
    v31 = __OFADD__(v32, v33);
    v34 = v32 + v33;
    if (v31)
    {
      goto LABEL_27;
    }

    v35 = *(*i + 16);
    v31 = __OFADD__(v34, v35);
    v36 = v34 + v35;
    if (v31)
    {
      goto LABEL_28;
    }

    v37 = v36 & ~(v36 >> 63);
    v38 = *(i - 40);

    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0, MEMORY[0x277D84F90]);
    if (v26)
    {

      specialized Array.append<A>(contentsOf:)(v39);
      if (v28)
      {
        goto LABEL_19;
      }
    }

    else
    {
      specialized Collection<>.encode<A>(into:)(&v50, v25);
      if (v28)
      {
LABEL_19:

        specialized Array.append<A>(contentsOf:)(v40);
        goto LABEL_20;
      }
    }

    specialized Collection<>.encode<A>(into:)(&v50, v27);
LABEL_20:

    specialized Array.append<A>(contentsOf:)(v41);

    specialized Array.append<A>(contentsOf:)(v42);

    v43 = v50;
    v47 = v23;
    v45 = *(v23 + 2);
    v44 = *(v23 + 3);
    if (v45 >= v44 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
      v23 = v47;
    }

    *(v23 + 2) = v45 + 1;
    *&v23[8 * v45 + 32] = v43;
    if (!--v21)
    {

      return v46;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

char *specialized VDAFEncodable.encodedBytes.getter(char *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 2);
  v4 = (v3 * 5) >> 64;
  v5 = 5 * v3;
  if (v4 != v5 >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *(a2 + 16);
  v8 = __OFADD__(v5, v7);
  v9 = v5 + v7;
  if (v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = *(a3 + 16);
  v8 = __OFADD__(v9, v11);
  v12 = v9 + v11;
  if (!v8)
  {
    v13 = result;
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0, MEMORY[0x277D84F90]);

    specialized AggregateShare.encode<A>(into:)(&v14, v13);
    specialized Array.append<A>(contentsOf:)(a2);
    specialized Array.append<A>(contentsOf:)(a3);
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v3 = *(result + 2);
  if (v3 >> 61)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(a2 + 16);
  v6 = __OFADD__(v5, 4 * v3);
  v7 = v5 + 4 * v3;
  if (v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = *(a3 + 16);
  v6 = __OFADD__(v7, v9);
  v10 = v7 + v9;
  if (!v6)
  {
    v11 = result;
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0, MEMORY[0x277D84F90]);

    specialized Collection<>.encode<A>(into:)(&v12, v11);
    specialized Array.append<A>(contentsOf:)(a2);
    specialized Array.append<A>(contentsOf:)(a3);
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v3 = *(result + 2);
  if (v3 >> 60)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(a2 + 16);
  v6 = __OFADD__(v5, 8 * v3);
  v7 = v5 + 8 * v3;
  if (v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = *(a3 + 16);
  v6 = __OFADD__(v7, v9);
  v10 = v7 + v9;
  if (!v6)
  {
    v11 = result;
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0, MEMORY[0x277D84F90]);

    specialized AggregateShare.encode<A>(into:)(&v12, v11);
    specialized Array.append<A>(contentsOf:)(a2);
    specialized Array.append<A>(contentsOf:)(a3);
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

char *specialized VDAFEncodable.encodedBytes.getter(uint64_t a1)
{
  if (a1)
  {
    if (*(MEMORY[0x277D84F90] + 16) <= *(a1 + 16))
    {
      v2 = *(a1 + 16);
    }

    else
    {
      v2 = *(MEMORY[0x277D84F90] + 16);
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, MEMORY[0x277D84F90]);

    specialized Array.append<A>(contentsOf:)(v3);
    return v7;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v6 = *(MEMORY[0x277D84F90] + 16);

    return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, v5);
  }
}

{
  v2 = specialized Collection<>.encodedLength.getter(a1);
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0, MEMORY[0x277D84F90]);
  v28 = result;
  v25 = *(a1 + 16);
  if (v25)
  {
    v4 = 0;
    v24 = a1 + 32;
    while (1)
    {
      v5 = (v24 + 16 * v4);
      v6 = v5[1];
      v7 = *(*v5 + 16);
      v27 = *v5;

      v26 = v6;

      if (v7)
      {
        break;
      }

LABEL_3:
      ++v4;
      specialized Collection<>.encode<A>(into:)(&v28, v26);

      if (v4 == v25)
      {
        return v28;
      }
    }

    v8 = (v27 + 41);
    while (1)
    {
      v9 = *(v8 - 9);
      v10 = *(v9 + 16);
      if (!v10)
      {
        break;
      }

      v11 = v28;
      v12 = *(v28 + 2);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_26;
      }

      v14 = *(v8 - 1);
      v15 = *v8;
      v16 = *(v8 - 9);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v13 > *(v11 + 3) >> 1)
      {
        if (v12 <= v13)
        {
          v17 = v12 + v10;
        }

        else
        {
          v17 = v12;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v17, 1, v11);
        v11 = result;
      }

      if (!*(v9 + 16))
      {
        goto LABEL_29;
      }

      v18 = *(v11 + 2);
      if ((*(v11 + 3) >> 1) - v18 < v10)
      {
        goto LABEL_27;
      }

      result = memcpy(&v11[v18 + 32], (v9 + 32), v10);
      v19 = *(v11 + 2);
      v20 = v19 + v10;
      if (__OFADD__(v19, v10))
      {
        goto LABEL_28;
      }

      *(v11 + 2) = v20;
      v21 = *(v11 + 3);
      v22 = v20 + 1;
      if (v20 >= v21 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1, v11);
      }

      *(v11 + 2) = v22;
      v11[v20 + 32] = v14;
      v23 = *(v11 + 3);
      if ((v20 + 2) > (v23 >> 1))
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v20 + 2, 1, v11);
      }

      *(v11 + 2) = v20 + 2;
      v11[v22 + 32] = v15;
      v28 = v11;
      v8 += 16;
      if (!--v7)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t specialized VDAFEncodable.encodedBytes.getter(uint64_t a1)
{
  v2 = specialized Prio3PublicShare.encodedLength.getter(a1);
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0, MEMORY[0x277D84F90]);
  v4 = result;
  if (!a1)
  {
    return v4;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return v4;
  }

  for (i = a1 + 32; ; i += 8)
  {
    v7 = *i;
    v8 = *(*i + 16);
    v9 = *(v4 + 16);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    v11 = *(v4 + 24);
    v12 = *i;

    if (v10 > (v11 >> 1))
    {
      if (v9 <= v10)
      {
        v16 = v9 + v8;
      }

      else
      {
        v16 = v9;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v16, 1, v4);
      v4 = result;
      v9 = *(result + 16);
      if (*(v7 + 16))
      {
LABEL_9:
        if (((*(v4 + 24) >> 1) - v9) < v8)
        {
          goto LABEL_21;
        }

        memcpy((v4 + v9 + 32), (v7 + 32), v8);

        if (v8)
        {
          v13 = *(v4 + 16);
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_22;
          }

          *(v4 + 16) = v15;
        }

        goto LABEL_5;
      }
    }

    else if (v8)
    {
      goto LABEL_9;
    }

    if (v8)
    {
      goto LABEL_20;
    }

LABEL_5:
    if (!--v5)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void specialized VDAFEncodable.encodedBytes.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if ((v2 & 1) == 0 && v3)
  {
    if (v3 >> 60)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v3 *= 8;
  }

  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = __OFADD__(v3, v5);
    v3 += v5;
    if (v6)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0, MEMORY[0x277D84F90]);
  specialized Share.encode<A>(into:)(&v8, v1, v2);
  if (v4)
  {

    specialized Array.append<A>(contentsOf:)(v7);
  }
}

{
  v1 = *(*(v0 + 16) + 16);
  v2 = *(*(v0 + 24) + 16);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v3 = __OFADD__(v4, 7);
    v5 = v4 + 7;
    if (!v3)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v5 / 8) & ~((v5 + (v5 < 0 ? 7uLL : 0)) >> 63), 0, MEMORY[0x277D84F90]);
      specialized BitMasks.encode<A>(into:)();
      return;
    }
  }

  __break(1u);
}

char *specialized VDAFEncodable.encodedBytes.getter(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2)
  {
    if (v2 >> 61)
    {
      __break(1u);
      return result;
    }

    v2 *= 4;
  }

  if (*(MEMORY[0x277D84F90] + 16) <= v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(MEMORY[0x277D84F90] + 16);
  }

  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0, MEMORY[0x277D84F90]);
  specialized Collection<>.encode<A>(into:)(&v4, v1);
  return v4;
}

uint64_t specialized VDAFEncodable.encodedBytes.getter(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(*(result + 32) + 16);
  }

  else
  {
    v3 = 0;
  }

  if ((v3 * v2) >> 64 != (v3 * v2) >> 63)
  {
    goto LABEL_26;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v3 * v2) & ~((v3 * v2) >> 63), 0, MEMORY[0x277D84F90]);
  v4 = result;
  if (!v2)
  {
    return v4;
  }

  for (i = v1 + 32; ; i += 8)
  {
    v6 = *i;
    v7 = *(*i + 16);
    v8 = *(v4 + 16);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    v10 = *(v4 + 24);
    v11 = *i;

    if (v9 > (v10 >> 1))
    {
      if (v8 <= v9)
      {
        v15 = v8 + v7;
      }

      else
      {
        v15 = v8;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v15, 1, v4);
      v4 = result;
      v8 = *(result + 16);
      if (*(v6 + 16))
      {
LABEL_12:
        if (((*(v4 + 24) >> 1) - v8) < v7)
        {
          goto LABEL_24;
        }

        memcpy((v4 + v8 + 32), (v6 + 32), v7);

        if (v7)
        {
          v12 = *(v4 + 16);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_25;
          }

          *(v4 + 16) = v14;
        }

        goto LABEL_8;
      }
    }

    else if (v7)
    {
      goto LABEL_12;
    }

    if (v7)
    {
      goto LABEL_23;
    }

LABEL_8:
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *specialized VDAFEncodable.encodedBytes.getter(uint64_t a1, __int16 a2)
{
  v4 = *(a1 + 16);
  if (__OFADD__(v4, 2))
  {
    __break(1u);
  }

  else
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v4 + 2), 0, MEMORY[0x277D84F90]);
    if (v4)
    {

      specialized Array.append<A>(contentsOf:)(v5);
      v4 = v11;
      v2 = a2 & 1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
LABEL_4:
  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v6 = *(v4 + 3);
    v8 = v6 >> 1;
  }

  *(v4 + 2) = v9;
  v4[v7 + 32] = v2;
  if (v8 < (v7 + 2))
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 2, 1, v4);
  }

  *(v4 + 2) = v7 + 2;
  v4[v9 + 32] = HIBYTE(a2) & 1;
  return v4;
}

unint64_t PINE<>.prepareInitAndEncodeIntoBytes(verifyKey:aggregatorID:nonce:encodedPublicShare:encodedInputShare:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  v11 = v9;
  memcpy(__dst, v11, 0x148uLL);
  outlined copy of Data._Representation(a1, a2);
  v20 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
  outlined copy of Data._Representation(a4, a5);
  v21 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a4, a5);
  _s4VDAF15PINEPublicShareV4from9parameterACyxGqd___SiSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5(a6, a7, __dst[0], 0, v35);
  if (v10)
  {
  }

  else
  {
    v22 = v35[0];
    v23 = v35[1];
    outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(__dst, v29, &_s4VDAF4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGMR);
    _s4VDAF14PINEInputShareV18DecodableParameterV4vdaf12aggregatorIDAEyxq__GAA4PINEVyxqd__q_G_SitKcSlRd__SB7ElementRpd__lufCAA7Field40V_AA19XofHmacSha256Aes128CSRySfGTt2B5Tm(__dst, a3, &_s4VDAF4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGMR, &v30);
    _s4VDAF14PINEInputShareV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_AA19XofHmacSha256Aes128CSWTt2B5(a8, a9, v30, v31, v32, v33, v34);
    v38[0] = v34[0];
    v38[1] = v34[1];
    v38[2] = v34[2];
    _s4VDAF4PINEV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA16PINEPrepareStateVyxq0_G_AA0nK0Vyxq0_GtSays5UInt8VG_SiAsA010PINEPublicK0Vyq0_GAA09PINEInputK0Vyxq0_GAA11VoidCodableVtKFAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt6B5(v37, v36, v20, a3, v21, v22, v23, v38);

    outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMR);
    v25 = v36[0];
    v26 = v36[1];
    v27 = v36[2];
    v21 = specialized VDAFEncodable.encodedBytes.getter(v37[0], v37[1], v37[2]);

    v28 = specialized PINEPrepareShare.encodedLength.getter(v25, v26, v27);
    v29[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0, MEMORY[0x277D84F90]);

    specialized AggregateShare.encode<A>(into:)(v29, v25);
    specialized Array.append<A>(contentsOf:)(v26);
    specialized Array.append<A>(contentsOf:)(v27);
  }

  return v21;
}

unint64_t _s4VDAF4PINEV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA16PINEPrepareStateVyxq0_G_AA0nK0Vyxq0_GtSays5UInt8VG_SiAsA010PINEPublicK0Vyq0_GAA09PINEInputK0Vyxq0_GAA11VoidCodableVtKFAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt6B5(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, int64_t a7, void *a8)
{
  v10 = v9;
  v176 = a8;
  v173 = a6;
  v247 = a4;
  v169 = a2;
  v170 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v175 = *(v14 - 8);
  v15 = *(v175 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v149 - v17;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v174 = *(v172 - 8);
  v19 = *(v174 + 64);
  MEMORY[0x28223BE20](v172, v20);
  v22 = &v149 - v21;
  memcpy(v182, v8, sizeof(v182));
  v171 = a3;
  v23 = *(a3 + 16);
  if (v23 != 32)
  {
    v179 = 0;
    v180 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v179 = 0xD000000000000034;
    v180 = 0x8000000270C51C00;
    v43 = 32;
LABEL_15:
    v178[0] = v43;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v44);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v178[0] = v23;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v45);

    v46 = v179;
    v47 = v180;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v48 = v46;
    *(v48 + 8) = v47;
    *(v48 + 16) = 1;
    return swift_willThrow();
  }

  v23 = *(a5 + 16);
  if (v23 != 16)
  {
    v179 = 0;
    v180 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v179 = 0xD000000000000030;
    v180 = 0x8000000270C51C40;
    v43 = 16;
    goto LABEL_15;
  }

  v24 = *v8;
  if ((*v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v24 <= v247)
  {
    v179 = v247;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v52 = v49;
    *(v52 + 8) = v51;
    *(v52 + 16) = 0;
    return swift_willThrow();
  }

  if (v247 > 0xFF)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v164 = a5;
  v25 = v8[17];
  v26 = v8[10];
  if (__OFSUB__(v26, v25))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v27 = v176;
  result = _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AQTt2g5Tm(*v176, *(v176 + 8), v247, v26 - v25, 101777407, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
  if (v9)
  {
    return result;
  }

  v168 = 0;
  v160 = a7;
  v163 = v24;
  v241 = *(v8 + 13);
  v242 = *(v8 + 15);
  v243 = *(v8 + 17);
  v239[2] = *(v8 + 5);
  v239[3] = *(v8 + 7);
  v239[4] = *(v8 + 9);
  v240 = *(v8 + 11);
  v239[0] = *(v8 + 1);
  v239[1] = *(v8 + 3);
  v29 = *(v8 + 17);
  v245[6] = *(v8 + 16);
  v245[7] = v29;
  v245[8] = *(v8 + 18);
  v30 = *(v8 + 13);
  v245[2] = *(v8 + 12);
  v245[3] = v30;
  v31 = *(v8 + 15);
  v245[4] = *(v8 + 14);
  v245[5] = v31;
  v32 = *(v8 + 11);
  v245[0] = *(v8 + 10);
  a7 = v8[39];
  v10 = v8[40];
  v167 = v27[2];
  v33 = *(v27 + 24);
  v162 = result;
  v181 = result;
  v244 = v8[19];
  v246 = v8[38];
  v245[1] = v32;
  v8 = v245;
  v34 = specialized FullyLinearProof.proofLength.getter();
  v24 = v10 * v34;
  v165 = v10;
  if ((v10 * v34) >> 64 != (v10 * v34) >> 63)
  {
    goto LABEL_55;
  }

  v8 = v239;
  v35 = specialized FullyLinearProof.proofLength.getter();
  v161 = a7;
  if ((a7 * v35) >> 64 != (a7 * v35) >> 63)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v37 = v168;
  if (__OFADD__(v24, a7 * v35))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v8 = &v149;
  MEMORY[0x28223BE20](v35, v36);
  v24 = v247;
  v147 = v182;
  v148 = v247;
  v39 = _s4VDAF12VDAFProtocolPAAE16decodeProofShare_12aggregatorID5count7makeXOFs10ArraySliceVyqd__GAA0E0Oyqd__G_s5UInt8VSi0J0QzAA4SeedVXEtKAA12FieldElementRd__lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AXTt3g5Tf4ndnn_nTm(v167, v33, v38, partial apply for specialized closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:), (&v149 - 4), specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
  v10 = v37;
  if (v37)
  {
  }

  v157 = v39;
  v184 = v176[4];
  if ((v240 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  v166 = v42;
  v167 = v41;
  v168 = v40;
  v53 = v162;
  if (*(v162 + 2) < v240)
  {
    goto LABEL_60;
  }

  v54 = (2 * v240) | 1;
  v159 = v184;

  outlined init with copy of Seed(&v184, &v179);
  v156 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 101777407);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v55 = swift_allocObject();
  v153 = xmmword_270C44540;
  *(v55 + 16) = xmmword_270C44540;
  *(v55 + 32) = v24;
  v179 = v55;

  specialized Array.append<A>(contentsOf:)(v56);
  v57 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v159, v156, v179);
  v159 = specialized VDAFEncodable.encodedBytes.getter(v53 + 32, 0, v54);
  v58 = off_2880A7738[0];
  v152 = type metadata accessor for XofHmacSha256Aes128(0);
  v59 = v57;
  v154 = v58;
  v58();

  v159 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v57 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    goto LABEL_76;
  }

  v60 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v61 = v175;
  v62 = v59;
  v63 = v175 + 16;
  v151 = *(v175 + 16);
  v151(v18, v62 + v60, v14);
  HMAC.finalize()();
  v64 = *(v61 + 8);
  v175 = v61 + 8;
  v150 = v64;
  v64(v18, v14);
  v65 = v172;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  v155 = 0;
  v66 = *(v174 + 8);
  v174 += 8;
  v149 = v66;
  v66(v22, v65);
  v156 = v62;
  v67 = *(v62 + v159);
  if (v67)
  {
    v68 = *(v62 + v159);

    a7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(a7 + 16) = 32;
    *(a7 + 48) = 0u;
    *(a7 + 32) = 0u;
    v159 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v69 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    v70 = v155;
    specialized static AES.CTR.encryptInPlace(_:using:updating:)((a7 + 32), a7 + 64, v67 + v159, v67 + v69);
    v24 = v70;
    if (!v70)
    {
      v159 = a7;
      v155 = v63;
      swift_endAccess();

      v8 = v173;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v247;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_61;
      }

      while (1)
      {
        v72 = v176;
        v176 = v24;

        v183 = *(v72 + 5);
        if (v8[2] <= v10)
        {
          break;
        }

        v73 = &v8[v10];
        v74 = v73[4];
        v73[4] = v159;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
        swift_allocObject();
        v24 = v10;
        v159 = specialized WraparoundJointRandomness.init(parts:)(v8, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field40, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field40> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 101777407);
        v75 = v162;
        v173 = ((2 * *(v162 + 2)) | 1);
        v76 = v183;

        outlined init with copy of Seed(&v183, v178);
        v77 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 101777407);
        v78 = swift_allocObject();
        *(v78 + 16) = v153;
        *(v78 + 32) = v24;
        v178[0] = v78;

        specialized Array.append<A>(contentsOf:)(v79);
        v80 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v76, v77, v178[0]);
        specialized VDAFEncodable.encodedBytes.getter(v75 + 32, 0, v173);
        v154();

        v81 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*(v80 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_78;
        }

        v82 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v151(v18, v80 + v82, v14);
        HMAC.finalize()();
        v150(v18, v14);
        v83 = v172;
        v84 = v176;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v14 = v84;
        v149(v22, v83);
        v85 = *(v80 + v81);
        if (!v85)
        {
          goto LABEL_79;
        }

        v86 = *(v80 + v81);

        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = 32;
        *(v8 + 3) = 0u;
        *(v8 + 2) = 0u;
        v87 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v88 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)(v8 + 2, (v8 + 8), v85 + v87, v85 + v88);
        if (v84)
        {
          goto LABEL_80;
        }

        swift_endAccess();

        a7 = v160;
        v72 = v185;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_63;
        }

LABEL_30:
        v22 = v157;
        v89 = v162;

        if (*(a7 + 16) <= v24)
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v90 = a7 + 8 * v24;
        v91 = *(v90 + 32);
        *(v90 + 32) = v8;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
        v24 = swift_allocObject();
        *(v24 + 32) = 0;
        *(v24 + 40) = 3;
        *(v24 + 48) = v161;
        *(v24 + 16) = a7;
        *(v24 + 24) = 0;
        v72[82] = *&v182[104];
        v72[83] = *&v182[120];
        v72[84] = *&v182[136];
        v238 = *&v182[152];
        v72[78] = *&v182[40];
        v72[79] = *&v182[56];
        v72[80] = *&v182[72];
        v72[81] = *&v182[88];
        v72[76] = *&v182[8];
        v72[77] = *&v182[24];
        v92 = specialized PINECircuit.truncate(measurement:)(v89, specialized _copyCollectionToContiguousArray<A>(_:));
        v10 = v14;
        if (v14)
        {

          swift_unknownObjectRelease();

          swift_setDeallocating();
          swift_deallocClassInstance();
        }

        if ((v237 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        v157 = v92;
        v93 = v165;
        if (*(v89 + 16) < v237)
        {
          goto LABEL_66;
        }

        v233 = *&v182[104];
        v94 = (2 * v237) | 1;
        v234 = *&v182[120];
        v235 = *&v182[136];
        v236 = *&v182[152];
        v229 = *&v182[40];
        v230 = *&v182[56];
        v231 = *&v182[72];
        v232 = *&v182[88];
        v227 = *&v182[8];
        v228 = *&v182[24];

        v96 = specialized PINECircuit.wraparoundDotProducts<A>(_:random:)(v95, v89 + 32, 0, v94, v159, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:));

        specialized Array.append<A>(contentsOf:)(v96, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
        v97 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(4u, 101777407);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_270C44550;
        if ((v93 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }

        v18 = v161;
        if (v93 > 0xFF)
        {
          goto LABEL_68;
        }

        *(v98 + 32) = v93;
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        if (v18 > 0xFF)
        {
          goto LABEL_70;
        }

        *(v98 + 33) = v18;
        v177[0] = v98;

        specialized Array.append<A>(contentsOf:)(v99);
        v173 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v171, v97, v177[0]);

        v215[6] = *&v182[104];
        v215[7] = *&v182[120];
        v215[8] = *&v182[136];
        v216 = *&v182[152];
        v215[2] = *&v182[40];
        v215[3] = *&v182[56];
        v215[4] = *&v182[72];
        v215[5] = *&v182[88];
        v215[0] = *&v182[8];
        v215[1] = *&v182[24];
        v223 = *&v182[256];
        v224 = *&v182[272];
        v225 = *&v182[288];
        v226 = *&v182[304];
        v219 = *&v182[192];
        v220 = *&v182[208];
        v221 = *&v182[224];
        v222 = *&v182[240];
        v217 = *&v182[160];
        v218 = *&v182[176];
        v100 = specialized FullyLinearProof.verifierLength.getter();
        v14 = v93 * v100;
        if ((v93 * v100) >> 64 != (v93 * v100) >> 63)
        {
          goto LABEL_71;
        }

        v8 = v215;
        v101 = specialized FullyLinearProof.verifierLength.getter();
        v102 = v18 * v101;
        if ((v18 * v101) >> 64 != (v18 * v101) >> 63)
        {
          goto LABEL_72;
        }

        v103 = __OFADD__(v14, v102);
        v104 = v14 + v102;
        if (v103)
        {
          goto LABEL_73;
        }

        v162 = v24;
        v177[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104 & ~(v104 >> 63), 0, MEMORY[0x277D84F90]);
        if (v93)
        {
          v160 = a7;
          do
          {
            v165 = v93;
            v105 = v22;
            a7 = v185;
            v211 = *&v182[256];
            v212 = *&v182[272];
            v213 = *&v182[288];
            v214 = *&v182[304];
            v207 = *&v182[192];
            v208 = *&v182[208];
            v209 = *&v182[224];
            v210 = *&v182[240];
            v205 = *&v182[160];
            v206 = *&v182[176];
            v106 = specialized FullyLinearProof.proofLength.getter();
            v107 = v22;
            v109 = v167;
            v108 = v168;
            v110 = v166;
            v111 = specialized Collection.prefix(_:)(v106, v107, v168, v167, v166);
            v175 = v113;
            v176 = v112;
            v174 = v114;
            v115 = v109;
            v24 = v182;
            v22 = specialized Collection.dropFirst(_:)(v106, v105, v108, v115, v110);
            v167 = v117;
            v168 = v116;
            v166 = v118;
            v202 = *&v182[168];
            v203 = *&v182[184];
            v204 = *&v182[200];
            specialized Gadget.wirePolynomialLength.getter();
            specialized Gadget.gadgetPolynomialLength.getter();
            swift_unknownObjectRetain();
            v14 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(1uLL, v173, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
            v18 = v181;
            v200[6] = *&v182[256];
            v200[7] = *&v182[272];
            v200[8] = *&v182[288];
            v201 = *&v182[304];
            v200[2] = *&v182[192];
            v200[3] = *&v182[208];
            v200[4] = *&v182[224];
            v200[5] = *&v182[240];
            v200[0] = *&v182[160];
            v200[1] = *&v182[176];
            v8 = v200;
            specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(v177, v181, v111, v176, v175, v174, v14, MEMORY[0x277D84F90], v163);
            swift_unknownObjectRelease();

            v93 = v165 - 1;
          }

          while (v165 != 1);
        }

        if (!v161)
        {
LABEL_49:
          v133 = v159;
          v134 = *(v159 + 24);

          v135 = v162;
          v136 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field40, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field40> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
          v137 = v170;
          *v170 = v157;
          v137[1] = v134;
          v137[2] = v136;
          v138 = v247;
          *(v137 + 24) = v247;
          v139 = *(v133 + 16);
          if (*(v139 + 16) > v138)
          {
            v140 = *(v135 + 2);
            if (*(v140 + 16) > v138)
            {
              v141 = v177[0];
              v142 = *(v139 + 8 * v138 + 32);
              v143 = *(v140 + 8 * v138 + 32);

              swift_unknownObjectRelease();
              swift_setDeallocating();
              v144 = *(v135 + 3);

              v145 = *(v135 + 4);

              swift_deallocClassInstance();
              v146 = v169;
              *v169 = v141;
              v146[1] = v142;
              v146[2] = v143;
            }

LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v119 = 0;
        while (1)
        {
          v164 = v119 + 1;
          v165 = v119;
          if (__OFADD__(v119, 1))
          {
            break;
          }

          v176 = specialized VerificationJointRandomness.next()();
          v24 = v182;
          v197 = *&v182[120];
          v198 = *&v182[136];
          v199 = *&v182[152];
          v193 = *&v182[56];
          v194 = *&v182[72];
          v195 = *&v182[88];
          v196 = *&v182[104];
          v191 = *&v182[24];
          v192 = *&v182[40];
          v187 = *&v182[16];
          v188 = *&v182[32];
          v189 = *&v182[48];
          v190 = *&v182[8];
          v120 = specialized FullyLinearProof.proofLength.getter();
          v121 = v22;
          v123 = v167;
          v122 = v168;
          v124 = v22;
          v125 = v166;
          v171 = specialized Collection.prefix(_:)(v120, v121, v168, v167, v166);
          v172 = v126;
          v174 = v128;
          v175 = v127;
          v22 = specialized Collection.dropFirst(_:)(v120, v124, v122, v123, v125);
          v167 = v130;
          v168 = v129;
          v166 = v131;
          specialized Gadget.wirePolynomialLength.getter();
          specialized Gadget.gadgetPolynomialLength.getter();
          v132 = v171;
          swift_unknownObjectRetain();
          v14 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(1uLL, v173, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
          a7 = v181;
          v185[6] = *&v182[104];
          v185[7] = *&v182[120];
          v185[8] = *&v182[136];
          v186 = *&v182[152];
          v185[2] = *&v182[40];
          v185[3] = *&v182[56];
          v185[4] = *&v182[72];
          v185[5] = *&v182[88];
          v185[0] = *&v182[8];
          v185[1] = *&v182[24];
          v8 = v185;
          specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(v177, v181, v132, v175, v174, v172, v14, v176, v163);
          swift_unknownObjectRelease();

          v119 = v165 + 1;
          v18 = v22;
          if (v164 == v161)
          {
            goto LABEL_49;
          }
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      __break(1u);
LABEL_63:
      a7 = specialized _ArrayBuffer._consumeAndCreateNew()(a7);
      goto LABEL_30;
    }
  }

  else
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
  }

LABEL_80:
  swift_endAccess();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

int64_t _s4VDAF4PINEV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA16PINEPrepareStateVyxq0_G_AA0nK0Vyxq0_GtSays5UInt8VG_SiAsA010PINEPublicK0Vyq0_GAA09PINEInputK0Vyxq0_GAA11VoidCodableVtKFAA7Field32V_SRySfGAA19XofHmacSha256Aes128CTt6B5(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int64_t a7, unint64_t a8)
{
  v10 = v9;
  v175 = a8;
  v172 = a6;
  v270 = a4;
  v168 = a2;
  v169 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v174 = *(v14 - 8);
  v15 = *(v174 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v147 - v17;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v173 = *(v171 - 8);
  v19 = *(v173 + 64);
  MEMORY[0x28223BE20](v171, v20);
  v22 = &v147 - v21;
  memcpy(v181, v8, sizeof(v181));
  v170 = a3;
  v23 = *(a3 + 16);
  if (v23 != 32)
  {
    v178 = 0;
    v179 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v178 = 0xD000000000000034;
    v179 = 0x8000000270C51C00;
    v43 = 32;
LABEL_15:
    v177[0] = v43;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v44);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v177[0] = v23;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v45);

    v46 = v178;
    v47 = v179;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v48 = v46;
    *(v48 + 8) = v47;
    *(v48 + 16) = 1;
    return swift_willThrow();
  }

  v23 = *(a5 + 16);
  if (v23 != 16)
  {
    v178 = 0;
    v179 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v178 = 0xD000000000000030;
    v179 = 0x8000000270C51C40;
    v43 = 16;
    goto LABEL_15;
  }

  v24 = *v8;
  if ((*v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v24 <= v270)
  {
    v178 = v270;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v52 = v49;
    *(v52 + 8) = v51;
    *(v52 + 16) = 0;
    return swift_willThrow();
  }

  if (v270 > 0xFF)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v163 = a5;
  v25 = v8[17];
  v26 = v8[10];
  if (__OFSUB__(v26, v25))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v27 = v175;
  result = _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CG_AQTt2g5(*v175, v175[8], v270, v26 - v25);
  if (v9)
  {
    return result;
  }

  v167 = 0;
  v159 = a7;
  v162 = v24;
  v264 = *(v8 + 13);
  v265 = *(v8 + 15);
  v266 = *(v8 + 17);
  v262[2] = *(v8 + 5);
  v262[3] = *(v8 + 7);
  v262[4] = *(v8 + 9);
  v263 = *(v8 + 11);
  v262[0] = *(v8 + 1);
  v262[1] = *(v8 + 3);
  v29 = *(v8 + 17);
  v268[6] = *(v8 + 16);
  v268[7] = v29;
  v268[8] = *(v8 + 18);
  v30 = *(v8 + 13);
  v268[2] = *(v8 + 12);
  v268[3] = v30;
  v31 = *(v8 + 15);
  v268[4] = *(v8 + 14);
  v268[5] = v31;
  v32 = *(v8 + 11);
  v268[0] = *(v8 + 10);
  a7 = v8[39];
  v10 = v8[40];
  v166 = *(v27 + 16);
  v33 = *(v27 + 24);
  v161 = result;
  v180 = result;
  v267 = *(v8 + 38);
  v269 = *(v8 + 76);
  v268[1] = v32;
  v8 = v268;
  v34 = specialized FullyLinearProof.proofLength.getter();
  v24 = v10 * v34;
  v164 = v10;
  if ((v10 * v34) >> 64 != (v10 * v34) >> 63)
  {
    goto LABEL_56;
  }

  v8 = v262;
  v35 = specialized FullyLinearProof.proofLength.getter();
  v160 = a7;
  if ((a7 * v35) >> 64 != (a7 * v35) >> 63)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v37 = v167;
  if (__OFADD__(v24, a7 * v35))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v8 = &v147;
  MEMORY[0x28223BE20](v35, v36);
  v24 = v270;
  v39 = _s4VDAF12VDAFProtocolPAAE16decodeProofShare_12aggregatorID5count7makeXOFs10ArraySliceVyqd__GAA0E0Oyqd__G_s5UInt8VSi0J0QzAA4SeedVXEtKAA12FieldElementRd__lFZAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CG_AXTt3g5Tf4ndnn_n(v166, v33, v38, partial apply for specialized closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:));
  v10 = v37;
  if (v37)
  {
  }

  v148 = v39;
  v183 = *(v175 + 4);
  if ((v263 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  v165 = v42;
  v166 = v41;
  v167 = v40;
  v53 = v161;
  if (v161[2] < v263)
  {
    goto LABEL_61;
  }

  v54 = (2 * v263) | 1;
  v158 = v183;

  outlined init with copy of Seed(&v183, &v178);
  v156 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 85000191);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v55 = swift_allocObject();
  v153 = xmmword_270C44540;
  *(v55 + 16) = xmmword_270C44540;
  *(v55 + 32) = v24;
  v178 = v55;

  specialized Array.append<A>(contentsOf:)(v56);
  v57 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v158, v156, v178);
  v158 = specialized VDAFEncodable.encodedBytes.getter(v53 + 32, 0, v54);
  v58 = off_2880A7738[0];
  v152 = type metadata accessor for XofHmacSha256Aes128(0);
  v59 = v57;
  v154 = v58;
  v58();

  v158 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v57 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    goto LABEL_77;
  }

  v60 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v61 = v174;
  v62 = v59;
  v63 = v174 + 16;
  v151 = *(v174 + 16);
  v151(v18, v62 + v60, v14);
  HMAC.finalize()();
  v64 = *(v61 + 8);
  v174 = v61 + 8;
  v150 = v64;
  v64(v18, v14);
  v65 = v171;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  v155 = 0;
  v66 = *(v173 + 8);
  v173 += 8;
  v149 = v66;
  v66(v22, v65);
  v156 = v62;
  v67 = *(v62 + v158);
  if (v67)
  {
    v68 = *(v62 + v158);

    a7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(a7 + 16) = 32;
    *(a7 + 48) = 0u;
    *(a7 + 32) = 0u;
    v158 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v69 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    v70 = v155;
    specialized static AES.CTR.encryptInPlace(_:using:updating:)((a7 + 32), a7 + 64, v67 + v158, v67 + v69);
    v24 = v70;
    if (!v70)
    {
      v158 = a7;
      v155 = v63;
      swift_endAccess();

      v8 = v172;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v270;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v72 = v175;
        v175 = v24;

        v182 = *(v72 + 40);
        if (v8[2] <= v10)
        {
          break;
        }

        v73 = &v8[v10];
        v74 = v73[4];
        v73[4] = v158;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
        swift_allocObject();
        v24 = v10;
        v158 = specialized WraparoundJointRandomness.init(parts:)(v8, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field32, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field32> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 85000191);
        v75 = v161;
        v172 = ((2 * v161[2]) | 1);
        v76 = v182;

        outlined init with copy of Seed(&v182, v177);
        v77 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 85000191);
        v78 = swift_allocObject();
        *(v78 + 16) = v153;
        *(v78 + 32) = v24;
        v177[0] = v78;

        specialized Array.append<A>(contentsOf:)(v79);
        v80 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v76, v77, v177[0]);
        specialized VDAFEncodable.encodedBytes.getter(v75 + 32, 0, v172);
        v154();

        v81 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*(v80 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_79;
        }

        v82 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v151(v18, v80 + v82, v14);
        HMAC.finalize()();
        v150(v18, v14);
        v83 = v171;
        v84 = v175;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v14 = v84;
        v149(v22, v83);
        v85 = *(v80 + v81);
        if (!v85)
        {
          goto LABEL_80;
        }

        v86 = *(v80 + v81);

        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = 32;
        *(v8 + 3) = 0u;
        *(v8 + 2) = 0u;
        v87 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v88 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)(v8 + 2, (v8 + 8), v85 + v87, v85 + v88);
        if (v84)
        {
          goto LABEL_81;
        }

        swift_endAccess();

        v10 = v159;
        v89 = swift_isUniquelyReferenced_nonNull_native();
        a7 = v161;
        if ((v89 & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_30:

        if (*(v10 + 16) <= v24)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v90 = v10 + 8 * v24;
        v91 = *(v90 + 32);
        *(v90 + 32) = v8;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
        v24 = swift_allocObject();
        *(v24 + 32) = 0;
        *(v24 + 40) = 3;
        *(v24 + 48) = v160;
        *(v24 + 16) = v10;
        *(v24 + 24) = 0;
        v258 = *&v181[104];
        v259 = *&v181[120];
        v260 = *&v181[136];
        v261 = *&v181[152];
        v254 = *&v181[40];
        v255 = *&v181[56];
        v256 = *&v181[72];
        v257 = *&v181[88];
        v252 = *&v181[8];
        v253 = *&v181[24];
        specialized PINECircuit.truncate(measurement:)(a7);
        v93 = v10;
        v10 = v14;
        if (v14)
        {

          swift_unknownObjectRelease();

          swift_setDeallocating();
          swift_deallocClassInstance();
        }

        v159 = v93;
        if ((v258 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        v156 = v92;
        v94 = v161;
        a7 = v164;
        if (v161[2] < v258)
        {
          goto LABEL_67;
        }

        v248 = *&v181[104];
        v95 = (2 * v258) | 1;
        v249 = *&v181[120];
        v250 = *&v181[136];
        v251 = *&v181[152];
        v244 = *&v181[40];
        v245 = *&v181[56];
        v246 = *&v181[72];
        v247 = *&v181[88];
        v242 = *&v181[8];
        v243 = *&v181[24];

        specialized PINECircuit.wraparoundDotProducts<A>(_:random:)(v96, (v94 + 4), 0, v95, v158);
        v98 = v97;

        specialized Array.append<A>(contentsOf:)(v98);
        v99 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(4u, 85000191);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_270C44550;
        if (a7 < 0)
        {
          goto LABEL_68;
        }

        v101 = v160;
        if (a7 > 0xFF)
        {
          goto LABEL_69;
        }

        *(v100 + 32) = a7;
        if ((v101 & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        if (v101 > 0xFF)
        {
          goto LABEL_71;
        }

        v22 = &v181[160];
        *(v100 + 33) = v101;
        v176[0] = v100;
        v18 = v101;

        specialized Array.append<A>(contentsOf:)(v102);
        v171 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v170, v99, v176[0]);

        v228 = *&v181[104];
        v229 = *&v181[120];
        v230 = *&v181[136];
        v231 = *&v181[152];
        v224 = *&v181[40];
        v225 = *&v181[56];
        v226 = *&v181[72];
        v227 = *&v181[88];
        v222 = *&v181[8];
        v223 = *&v181[24];
        v238 = *&v181[256];
        v239 = *&v181[272];
        v240 = *&v181[288];
        v241 = *&v181[304];
        v234 = *&v181[192];
        v235 = *&v181[208];
        v236 = *&v181[224];
        v237 = *&v181[240];
        v232 = *&v181[160];
        v233 = *&v181[176];
        v103 = specialized FullyLinearProof.verifierLength.getter();
        v14 = a7 * v103;
        if ((a7 * v103) >> 64 != (a7 * v103) >> 63)
        {
          goto LABEL_72;
        }

        v104 = specialized FullyLinearProof.verifierLength.getter();
        v105 = v18 * v104;
        if ((v18 * v104) >> 64 != (v18 * v104) >> 63)
        {
          goto LABEL_73;
        }

        v106 = __OFADD__(v14, v105);
        v107 = v14 + v105;
        v108 = v148;
        if (v106)
        {
          goto LABEL_74;
        }

        v161 = v24;
        v176[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107 & ~(v107 >> 63), 0, MEMORY[0x277D84F90]);
        if (a7)
        {
          do
          {
            v164 = a7;
            v109 = v108;
            v218 = *&v181[256];
            v219 = *&v181[272];
            v220 = *&v181[288];
            v221 = *&v181[304];
            v214 = *&v181[192];
            v215 = *&v181[208];
            v216 = *&v181[224];
            v217 = *&v181[240];
            v212 = *&v181[160];
            v213 = *&v181[176];
            v110 = specialized FullyLinearProof.proofLength.getter();
            v111 = v108;
            v24 = v166;
            v112 = v167;
            v113 = v165;
            v172 = specialized Collection.prefix(_:)(v110, v111, v167, v166, v165);
            v173 = v114;
            v174 = v116;
            v175 = v115;
            v108 = specialized Collection.dropFirst(_:)(v110, v109, v112, v24, v113);
            v166 = v118;
            v167 = v117;
            v165 = v119;
            v209 = *&v181[168];
            v210 = *&v181[184];
            v211 = *&v181[200];
            specialized Gadget.wirePolynomialLength.getter();
            specialized Gadget.gadgetPolynomialLength.getter();
            swift_unknownObjectRetain();
            v14 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(1, v171);
            v18 = v180;
            v205 = *&v181[256];
            v206 = *&v181[272];
            v207 = *&v181[288];
            v208 = *&v181[304];
            v201 = *&v181[192];
            v202 = *&v181[208];
            v203 = *&v181[224];
            v204 = *&v181[240];
            v199 = *&v181[160];
            v200 = *&v181[176];
            specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(v176, v180, v172, v175, v174, v173, v14, MEMORY[0x277D84F90], v162);
            swift_unknownObjectRelease();

            a7 = v164 - 1;
          }

          while (v164 != 1);
        }

        if (!v160)
        {
          v8 = v161;
LABEL_50:
          v134 = v158;
          v135 = *(v158 + 24);

          v136 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field32, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field32> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
          v137 = v169;
          *v169 = v156;
          v137[1] = v135;
          v137[2] = v136;
          v138 = v270;
          *(v137 + 24) = v270;
          v139 = *(v134 + 16);
          if (*(v139 + 16) > v138)
          {
            v140 = v8[2];
            if (*(v140 + 16) > v138)
            {
              v141 = v176[0];
              v142 = *(v139 + 8 * v138 + 32);
              v143 = *(v140 + 8 * v138 + 32);

              swift_unknownObjectRelease();
              swift_setDeallocating();
              v144 = v8[3];

              v145 = v8[4];

              swift_deallocClassInstance();
              v146 = v168;
              *v168 = v141;
              v146[1] = v142;
              v146[2] = v143;
            }

LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v120 = 0;
        v8 = v161;
        while (1)
        {
          v163 = v120 + 1;
          v164 = v120;
          if (__OFADD__(v120, 1))
          {
            break;
          }

          v175 = specialized VerificationJointRandomness.next()();
          v24 = v184;
          v196 = *&v181[120];
          v197 = *&v181[136];
          v198 = *&v181[152];
          v192 = *&v181[56];
          v193 = *&v181[72];
          v194 = *&v181[88];
          v195 = *&v181[104];
          v190 = *&v181[24];
          v191 = *&v181[40];
          v186 = *&v181[16];
          v187 = *&v181[32];
          v188 = *&v181[48];
          v189 = *&v181[8];
          v121 = specialized FullyLinearProof.proofLength.getter();
          v122 = v108;
          v124 = v166;
          v123 = v167;
          v125 = v108;
          v126 = v165;
          v170 = specialized Collection.prefix(_:)(v121, v122, v167, v166, v165);
          v173 = v128;
          v174 = v127;
          v172 = v129;
          v108 = specialized Collection.dropFirst(_:)(v121, v125, v123, v124, v126);
          v166 = v131;
          v167 = v130;
          v165 = v132;
          specialized Gadget.wirePolynomialLength.getter();
          specialized Gadget.gadgetPolynomialLength.getter();
          v133 = v170;
          swift_unknownObjectRetain();
          v14 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(1, v171);
          a7 = v180;
          v184[6] = *&v181[104];
          v184[7] = *&v181[120];
          v184[8] = *&v181[136];
          v185 = *&v181[152];
          v184[2] = *&v181[40];
          v184[3] = *&v181[56];
          v184[4] = *&v181[72];
          v184[5] = *&v181[88];
          v22 = v175;
          v184[0] = *&v181[8];
          v184[1] = *&v181[24];
          specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(v176, v180, v133, v174, v173, v172, v14, v175, v162);
          swift_unknownObjectRelease();

          v120 = v164 + 1;
          v18 = v108;
          v8 = v161;
          if (v163 == v160)
          {
            goto LABEL_50;
          }
        }

LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      __break(1u);
LABEL_64:
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      goto LABEL_30;
    }
  }

  else
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

LABEL_81:
  swift_endAccess();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t _s4VDAF4PINEV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA16PINEPrepareStateVyxq0_G_AA0nK0Vyxq0_GtSays5UInt8VG_SiAsA010PINEPublicK0Vyq0_GAA09PINEInputK0Vyxq0_GAA11VoidCodableVtKFAA7Field64V_SRySfGAA19XofHmacSha256Aes128CTt6B5(uint64_t *a1, uint64_t *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7, void *a8)
{
  v10 = v9;
  v178 = a8;
  v175 = a6;
  v281 = a4;
  v171 = a2;
  v172 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v177 = *(v14 - 1);
  v15 = *(v177 + 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = (&v151 - v17);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v176 = *(v174 - 8);
  v19 = *(v176 + 8);
  MEMORY[0x28223BE20](v174, v20);
  v22 = (&v151 - v21);
  memcpy(v184, v8, sizeof(v184));
  v173 = a3;
  v23 = *(a3 + 16);
  if (v23 != 32)
  {
    v181 = 0;
    v182 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v181 = 0xD000000000000034;
    v182 = 0x8000000270C51C00;
    v44 = 32;
LABEL_15:
    v180[0] = v44;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v45);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v180[0] = v23;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v46);

    v47 = v181;
    v48 = v182;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v49 = v47;
    *(v49 + 8) = v48;
    *(v49 + 16) = 1;
    return swift_willThrow();
  }

  v23 = *(a5 + 16);
  if (v23 != 16)
  {
    v181 = 0;
    v182 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v181 = 0xD000000000000030;
    v182 = 0x8000000270C51C40;
    v44 = 16;
    goto LABEL_15;
  }

  v24 = *v8;
  if ((*v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v24 <= v281)
  {
    v181 = v281;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v53 = v50;
    *(v53 + 8) = v52;
    *(v53 + 16) = 0;
    return swift_willThrow();
  }

  if (v281 > 0xFF)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v166 = a5;
  v25 = v8[17];
  v26 = v8[10];
  if (__OFSUB__(v26, v25))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v27 = v178;
  result = _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AQTt2g5Tm(*v178, *(v178 + 8), v281, v26 - v25, 68222975, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
  if (v9)
  {
    return result;
  }

  v170 = 0;
  v162 = a7;
  v165 = v24;
  v275 = *(v8 + 13);
  v276 = *(v8 + 15);
  v277 = *(v8 + 17);
  v273[2] = *(v8 + 5);
  v273[3] = *(v8 + 7);
  v273[4] = *(v8 + 9);
  v274 = *(v8 + 11);
  v273[0] = *(v8 + 1);
  v273[1] = *(v8 + 3);
  v29 = *(v8 + 17);
  v279[6] = *(v8 + 16);
  v279[7] = v29;
  v279[8] = *(v8 + 18);
  v30 = *(v8 + 13);
  v279[2] = *(v8 + 12);
  v279[3] = v30;
  v31 = *(v8 + 15);
  v279[4] = *(v8 + 14);
  v279[5] = v31;
  v32 = *(v8 + 11);
  v279[0] = *(v8 + 10);
  v33 = v8[39];
  v10 = v8[40];
  v169 = v27[2];
  v34 = *(v27 + 24);
  v164 = result;
  v183 = result;
  v278 = v8[19];
  v280 = v8[38];
  v279[1] = v32;
  v8 = v279;
  v35 = specialized FullyLinearProof.proofLength.getter();
  v24 = v10 * v35;
  v167 = v10;
  if ((v10 * v35) >> 64 != (v10 * v35) >> 63)
  {
    goto LABEL_56;
  }

  v8 = v273;
  v36 = specialized FullyLinearProof.proofLength.getter();
  v163 = v33;
  if ((v33 * v36) >> 64 != (v33 * v36) >> 63)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v38 = v170;
  if (__OFADD__(v24, v33 * v36))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v8 = &v151;
  MEMORY[0x28223BE20](v36, v37);
  v24 = v281;
  v149 = v184;
  v150 = v281;
  v40 = _s4VDAF12VDAFProtocolPAAE16decodeProofShare_12aggregatorID5count7makeXOFs10ArraySliceVyqd__GAA0E0Oyqd__G_s5UInt8VSi0J0QzAA4SeedVXEtKAA12FieldElementRd__lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AXTt3g5Tf4ndnn_nTm(v169, v34, v39, partial apply for specialized closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:), (&v151 - 4), specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
  v10 = v38;
  if (v38)
  {
  }

  v159 = v40;
  v186 = v178[4];
  if ((v274 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  v168 = v43;
  v169 = v42;
  v170 = v41;
  v54 = v164;
  if (*(v164 + 2) < v274)
  {
    goto LABEL_61;
  }

  v55 = (2 * v274) | 1;
  v160 = v186;

  outlined init with copy of Seed(&v186, &v181);
  v158 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 68222975);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v56 = swift_allocObject();
  v155 = xmmword_270C44540;
  *(v56 + 16) = xmmword_270C44540;
  *(v56 + 32) = v24;
  v181 = v56;

  specialized Array.append<A>(contentsOf:)(v57);
  v58 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v160, v158, v181);
  v160 = specialized VDAFEncodable.encodedBytes.getter(v54 + 32, 0, v55);
  v59 = off_2880A7738[0];
  v154 = type metadata accessor for XofHmacSha256Aes128(0);
  v60 = v58;
  v156 = v59;
  v59();

  v160 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v58 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    goto LABEL_77;
  }

  v61 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v62 = v177;
  v63 = v60;
  v64 = v177 + 16;
  v153 = *(v177 + 2);
  v153(v18, v63 + v61, v14);
  HMAC.finalize()();
  v65 = *(v62 + 1);
  v177 = (v62 + 8);
  v152 = v65;
  v65(v18, v14);
  v66 = v174;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  v157 = 0;
  v67 = *(v176 + 1);
  v176 = (v176 + 8);
  v151 = v67;
  v67(v22, v66);
  v158 = v63;
  v68 = *(v63 + v160);
  if (v68)
  {
    v69 = *(v63 + v160);

    v70 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v70 + 16) = 32;
    *(v70 + 48) = 0u;
    *(v70 + 32) = 0u;
    v160 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v71 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    v72 = v157;
    specialized static AES.CTR.encryptInPlace(_:using:updating:)((v70 + 32), v70 + 64, v68 + v160, v68 + v71);
    v24 = v72;
    if (!v72)
    {
      v160 = v70;
      v157 = v64;
      swift_endAccess();

      v8 = v175;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v281;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v74 = v178;
        v178 = v24;

        v185 = *(v74 + 5);
        if (v8[2] <= v10)
        {
          break;
        }

        v75 = &v8[v10];
        v76 = v75[4];
        v75[4] = v160;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
        swift_allocObject();
        v24 = v10;
        v160 = specialized WraparoundJointRandomness.init(parts:)(v8, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 68222975);
        v77 = v164;
        v175 = ((2 * *(v164 + 2)) | 1);
        v78 = v185;

        outlined init with copy of Seed(&v185, v180);
        v79 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 68222975);
        v80 = swift_allocObject();
        *(v80 + 16) = v155;
        *(v80 + 32) = v24;
        v180[0] = v80;

        specialized Array.append<A>(contentsOf:)(v81);
        v82 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v78, v79, v180[0]);
        specialized VDAFEncodable.encodedBytes.getter(v77 + 32, 0, v175);
        v156();

        v83 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*(v82 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_79;
        }

        v84 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v153(v18, v82 + v84, v14);
        HMAC.finalize()();
        v152(v18, v14);
        v85 = v174;
        v86 = v178;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v14 = v86;
        v151(v22, v85);
        v87 = *(v82 + v83);
        if (!v87)
        {
          goto LABEL_80;
        }

        v88 = *(v82 + v83);

        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = 32;
        *(v8 + 3) = 0u;
        *(v8 + 2) = 0u;
        v89 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v90 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)(v8 + 2, (v8 + 8), v87 + v89, v87 + v90);
        if (v86)
        {
          goto LABEL_81;
        }

        swift_endAccess();

        v74 = v162;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_30:
        v91 = v159;
        v92 = v164;

        if (*(v74 + 2) <= v24)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v93 = &v74[8 * v24];
        v94 = *(v93 + 4);
        *(v93 + 4) = v8;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
        v18 = swift_allocObject();
        v18[4] = 0;
        v18[5] = 3;
        v24 = v163;
        v18[6] = v163;
        v18[2] = v74;
        v18[3] = 0;
        v269 = *&v184[104];
        v270 = *&v184[120];
        v271 = *&v184[136];
        v272 = *&v184[152];
        v265 = *&v184[40];
        v266 = *&v184[56];
        v267 = *&v184[72];
        v268 = *&v184[88];
        v263 = *&v184[8];
        v264 = *&v184[24];
        v95 = specialized PINECircuit.truncate(measurement:)(v92, specialized _copyCollectionToContiguousArray<A>(_:));
        v10 = v14;
        if (v14)
        {

          swift_unknownObjectRelease();

          swift_setDeallocating();
          swift_deallocClassInstance();
        }

        v162 = v74;
        if ((v269 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        v159 = v95;
        v22 = v164;
        v96 = v167;
        if (*(v164 + 2) < v269)
        {
          goto LABEL_67;
        }

        v259 = *&v184[104];
        v97 = (2 * v269) | 1;
        v260 = *&v184[120];
        v261 = *&v184[136];
        v262 = *&v184[152];
        v255 = *&v184[40];
        v256 = *&v184[56];
        v257 = *&v184[72];
        v258 = *&v184[88];
        v253 = *&v184[8];
        v254 = *&v184[24];

        v99 = specialized PINECircuit.wraparoundDotProducts<A>(_:random:)(v98, (v22 + 4), 0, v97, v160, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:));

        specialized Array.append<A>(contentsOf:)(v99, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
        v100 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(4u, 68222975);
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_270C44550;
        if ((v96 & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        if (v96 > 0xFF)
        {
          goto LABEL_69;
        }

        *(v101 + 32) = v96;
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        if (v24 > 0xFF)
        {
          goto LABEL_71;
        }

        *(v101 + 33) = v24;
        v179[0] = v101;

        specialized Array.append<A>(contentsOf:)(v102);
        v174 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v173, v100, v179[0]);

        v239 = *&v184[104];
        v240 = *&v184[120];
        v241 = *&v184[136];
        v242 = *&v184[152];
        v235 = *&v184[40];
        v236 = *&v184[56];
        v237 = *&v184[72];
        v238 = *&v184[88];
        v233 = *&v184[8];
        v234 = *&v184[24];
        v249 = *&v184[256];
        v250 = *&v184[272];
        v251 = *&v184[288];
        v252 = *&v184[304];
        v245 = *&v184[192];
        v246 = *&v184[208];
        v247 = *&v184[224];
        v248 = *&v184[240];
        v243 = *&v184[160];
        v244 = *&v184[176];
        v103 = specialized FullyLinearProof.verifierLength.getter();
        v104 = v96 * v103;
        if ((v96 * v103) >> 64 != (v96 * v103) >> 63)
        {
          goto LABEL_72;
        }

        v105 = specialized FullyLinearProof.verifierLength.getter();
        v106 = v24 * v105;
        if ((v24 * v105) >> 64 != (v24 * v105) >> 63)
        {
          goto LABEL_73;
        }

        v107 = __OFADD__(v104, v106);
        v108 = v104 + v106;
        if (v107)
        {
          goto LABEL_74;
        }

        v161 = v18;
        v179[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v108 & ~(v108 >> 63), 0, MEMORY[0x277D84F90]);
        if (v96)
        {
          do
          {
            v167 = v96;
            v109 = v91;
            v229 = *&v184[256];
            v230 = *&v184[272];
            v231 = *&v184[288];
            v232 = *&v184[304];
            v225 = *&v184[192];
            v226 = *&v184[208];
            v227 = *&v184[224];
            v228 = *&v184[240];
            v223 = *&v184[160];
            v224 = *&v184[176];
            v110 = specialized FullyLinearProof.proofLength.getter();
            v111 = v91;
            v24 = v169;
            v112 = v170;
            v113 = v168;
            v175 = specialized Collection.prefix(_:)(v110, v111, v170, v169, v168);
            v176 = v114;
            v177 = v116;
            v178 = v115;
            v91 = specialized Collection.dropFirst(_:)(v110, v109, v112, v24, v113);
            v169 = v118;
            v170 = v117;
            v168 = v119;
            v220 = *&v184[168];
            v221 = *&v184[184];
            v222 = *&v184[200];
            specialized Gadget.wirePolynomialLength.getter();
            specialized Gadget.gadgetPolynomialLength.getter();
            swift_unknownObjectRetain();
            v120 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(1uLL, v174, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
            v18 = v183;
            v216 = *&v184[256];
            v217 = *&v184[272];
            v218 = *&v184[288];
            v219 = *&v184[304];
            v212 = *&v184[192];
            v213 = *&v184[208];
            v214 = *&v184[224];
            v215 = *&v184[240];
            v210 = *&v184[160];
            v211 = *&v184[176];
            v22 = v175;
            specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(v179, v183, v175, v178, v177, v176, v120, MEMORY[0x277D84F90], v165);
            swift_unknownObjectRelease();

            v96 = v167 - 1;
          }

          while (v167 != 1);
        }

        if (!v163)
        {
          v8 = v161;
LABEL_50:
          v136 = v160;
          v137 = *(v160 + 24);

          v138 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
          v139 = v172;
          *v172 = v159;
          v139[1] = v137;
          v139[2] = v138;
          v140 = v281;
          *(v139 + 24) = v281;
          v141 = *(v136 + 16);
          if (*(v141 + 16) > v140)
          {
            v142 = v8[2];
            if (*(v142 + 16) > v140)
            {
              v143 = v179[0];
              v144 = *(v141 + 8 * v140 + 32);
              v145 = *(v142 + 8 * v140 + 32);

              swift_unknownObjectRelease();
              swift_setDeallocating();
              v146 = v8[3];

              v147 = v8[4];

              swift_deallocClassInstance();
              v148 = v171;
              *v171 = v143;
              v148[1] = v144;
              v148[2] = v145;
            }

LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v121 = 0;
        v8 = v161;
        v14 = v184;
        while (1)
        {
          v166 = v121;
          v164 = (v121 + 1);
          if (__OFADD__(v121, 1))
          {
            break;
          }

          v122 = specialized VerificationJointRandomness.xof.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 68222975);
          v177 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:);
          v176 = _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5;
          v178 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(3uLL, v122, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);

          v207 = *&v184[120];
          v208 = *&v184[136];
          v209 = *&v184[152];
          v203 = *&v184[56];
          v204 = *&v184[72];
          v205 = *&v184[88];
          v206 = *&v184[104];
          v201 = *&v184[24];
          v202 = *&v184[40];
          v197 = *&v184[16];
          v198 = *&v184[32];
          v199 = *&v184[48];
          v200 = *&v184[8];
          v123 = specialized FullyLinearProof.proofLength.getter();
          v124 = v91;
          v126 = v169;
          v125 = v170;
          v127 = v91;
          v128 = v168;
          v22 = specialized Collection.prefix(_:)(v123, v124, v170, v169, v168);
          v175 = v129;
          v173 = v130;
          v167 = v131;
          v91 = specialized Collection.dropFirst(_:)(v123, v127, v125, v126, v128);
          v169 = v133;
          v170 = v132;
          v168 = v134;
          specialized Gadget.wirePolynomialLength.getter();
          specialized Gadget.gadgetPolynomialLength.getter();
          v14 = v184;
          swift_unknownObjectRetain();
          v135 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(1uLL, v174, v177, v176);
          v193 = *&v184[104];
          v194 = *&v184[120];
          v195 = *&v184[136];
          v196 = *&v184[152];
          v189 = *&v184[40];
          v190 = *&v184[56];
          v191 = *&v184[72];
          v192 = *&v184[88];
          v187 = *&v184[8];
          v188 = *&v184[24];
          v24 = v178;
          specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(v179, v183, v22, v175, v173, v167, v135, v178, v165);
          swift_unknownObjectRelease();

          v121 = v166 + 1;
          v18 = v91;
          v8 = v161;
          if (v164 == v163)
          {
            goto LABEL_50;
          }
        }

LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      __break(1u);
LABEL_64:
      v74 = specialized _ArrayBuffer._consumeAndCreateNew()(v74);
      goto LABEL_30;
    }
  }

  else
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

LABEL_81:
  swift_endAccess();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void PINE<>.encodedPrepareMessageFrom(_:)(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  _s4VDAF4PINEV18prepareMessageFrom_9parameterAA011PINEPrepareD0Vyq0_GSayAA0G5ShareVyxq0_GG_AA11VoidCodableVtKFAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt1B5(a1, &v13);
  if (!v2)
  {
    v4 = v13;
    v5 = v14;
    v6 = *(v13 + 16);
    v7 = *(v14 + 16);
    if (__OFADD__(v6, v7))
    {
      __break(1u);
    }

    else
    {
      v17 = specialized Data._Representation.init(capacity:)(v6 + v7);
      v18 = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v15 = v9;
      v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v16 = v10;
      v13 = v4;
      v11 = *(*__swift_project_boxed_opaque_existential_1(&v13, v9) + 16);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(&v13);
      v15 = v9;
      v16 = v10;
      v13 = v5;
      v12 = *(*__swift_project_boxed_opaque_existential_1(&v13, v9) + 16);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(&v13);
    }
  }
}

{
  memcpy(__dst, v1, sizeof(__dst));
  _s4VDAF4PINEV18prepareMessageFrom_9parameterAA011PINEPrepareD0Vyq0_GSayAA0G5ShareVyxq0_GG_AA11VoidCodableVtKFAA7Field32V_SRySfGAA19XofHmacSha256Aes128CTt1B5(a1, &v13);
  if (!v2)
  {
    v4 = v13;
    v5 = v14;
    v6 = *(v13 + 16);
    v7 = *(v14 + 16);
    if (__OFADD__(v6, v7))
    {
      __break(1u);
    }

    else
    {
      v17 = specialized Data._Representation.init(capacity:)(v6 + v7);
      v18 = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v15 = v9;
      v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
      v16 = v10;
      v13 = v4;
      v11 = *(*__swift_project_boxed_opaque_existential_1(&v13, v9) + 16);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(&v13);
      v15 = v9;
      v16 = v10;
      v13 = v5;
      v12 = *(*__swift_project_boxed_opaque_existential_1(&v13, v9) + 16);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(&v13);
    }
  }
}

{
  memcpy(__dst, v1, sizeof(__dst));
  _s4VDAF4PINEV18prepareMessageFrom_9parameterAA011PINEPrepareD0Vyq0_GSayAA0G5ShareVyxq0_GG_AA11VoidCodableVtKFAA7Field64V_SRySfGAA19XofHmacSha256Aes128CTt1B5(a1, &v13);
  if (!v2)
  {
    v4 = v13;
    v5 = v14;
    v6 = *(v13 + 16);
    v7 = *(v14 + 16);
    if (__OFADD__(v6, v7))
    {
      __break(1u);
    }

    else
    {
      v17 = specialized Data._Representation.init(capacity:)(v6 + v7);
      v18 = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v15 = v9;
      v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
      v16 = v10;
      v13 = v4;
      v11 = *(*__swift_project_boxed_opaque_existential_1(&v13, v9) + 16);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(&v13);
      v15 = v9;
      v16 = v10;
      v13 = v5;
      v12 = *(*__swift_project_boxed_opaque_existential_1(&v13, v9) + 16);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(&v13);
    }
  }
}

void _s4VDAF4PINEV18prepareMessageFrom_9parameterAA011PINEPrepareD0Vyq0_GSayAA0G5ShareVyxq0_GG_AA11VoidCodableVtKFAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt1B5(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 != *v2)
  {
    _StringGuts.grow(_:)(53);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    MEMORY[0x2743B25F0](0xD00000000000002CLL, 0x8000000270C51BB0);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v27);

    MEMORY[0x2743B25F0](15649, 0xE200000000000000);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v29 = 0;
    *(v29 + 8) = 0xE000000000000000;
    *(v29 + 16) = 1;
    swift_willThrow();
    return;
  }

  v5 = v3;
  v7 = *(v2 + 320);
  v88 = *(v2 + 256);
  v89 = *(v2 + 272);
  v90 = *(v2 + 288);
  v91 = *(v2 + 304);
  v84 = *(v2 + 192);
  v85 = *(v2 + 208);
  v86 = *(v2 + 224);
  v87 = *(v2 + 240);
  v82 = *(v2 + 160);
  v83 = *(v2 + 176);
  v8 = specialized FullyLinearProof.verifierLength.getter();
  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    goto LABEL_93;
  }

  v10 = *(v2 + 312);
  v78 = *(v2 + 104);
  v79 = *(v2 + 120);
  v80 = *(v2 + 136);
  v81 = *(v2 + 152);
  v74 = *(v2 + 40);
  v75 = *(v2 + 56);
  v76 = *(v2 + 72);
  v77 = *(v2 + 88);
  v72 = *(v2 + 8);
  v73 = *(v2 + 24);
  v11 = specialized FullyLinearProof.verifierLength.getter();
  v12 = v10 * v11;
  v92 = v10;
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v13 = v9 + v12;
  if (__OFADD__(v9, v12))
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v14 + 16) = v13;
      bzero((v14 + 32), 8 * v13);
    }

    v69 = v14;
    if (v4)
    {
      v68 = a1;
      v15 = (a1 + 48);
      v16 = v4;
      do
      {
        v17 = *(v15 - 2);
        v18 = *(v15 - 1);
        v19 = *v15;

        specialized Array<A>.elementwiseAdd(_:)(v17);
        if (v3)
        {

          return;
        }

        v15 += 3;
        --v16;
      }

      while (v16);
      v65 = v7;
      v66 = v69;
      v20 = *(v69 + 16);
      v70 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v21 = v70;
      v22 = (v68 + 40);
      v23 = v4;
      do
      {
        v24 = *v22;
        v26 = *(v70 + 16);
        v25 = *(v70 + 24);

        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        }

        *(v70 + 16) = v26 + 1;
        *(v70 + 8 * v26 + 32) = v24;
        v22 += 3;
        --v23;
      }

      while (v23);
      v71 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v41 = v71;
      v42 = (v68 + 48);
      do
      {
        v43 = *v42;
        v45 = *(v71 + 16);
        v44 = *(v71 + 24);

        if (v45 >= v44 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        }

        *(v71 + 16) = v45 + 1;
        *(v71 + 8 * v45 + 32) = v43;
        v42 += 3;
        --v4;
      }

      while (v4);
      v30 = v66;
      v5 = 0;
      v7 = v65;
      if (v65 < 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v20 = *(v14 + 16);
      v41 = MEMORY[0x277D84F90];
      v21 = MEMORY[0x277D84F90];
      v30 = v14;
      if (v7 < 0)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    if (v7)
    {
      v31 = v7;
      v32 = 0;
      while (1)
      {
        v33 = specialized FullyLinearProof.verifierLength.getter();
        if ((v33 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v33)
        {
          v34 = v20 - v32 >= v33;
        }

        else
        {
          v34 = 1;
        }

        v35 = !v34;
        v36 = v20;
        if (v34)
        {
          v36 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_88;
          }
        }

        if (v36 < v32)
        {
          goto LABEL_78;
        }

        if (v20 < v32)
        {
          goto LABEL_79;
        }

        if (v20 < v36)
        {
          goto LABEL_80;
        }

        v37 = v20;
        if ((v35 & 1) == 0)
        {
          v37 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_89;
          }

          if (v20 < v37)
          {
            goto LABEL_82;
          }
        }

        if (v37 < v32)
        {
          goto LABEL_81;
        }

        v38 = (2 * v36) | 1;
        v39 = swift_unknownObjectRetain();
        v40 = specialized FullyLinearProof.decide<A>(verifier:)(v39, v30 + 32, v32, v38, specialized _copyCollectionToContiguousArray<A>(_:), specialized Collection.prefix(_:), specialized Collection.dropFirst(_:), specialized ParallelSum.evaluate<A>(at:));
        if (v5)
        {

LABEL_76:
          swift_unknownObjectRelease_n();
          return;
        }

        if ((v40 & 1) == 0)
        {
LABEL_75:

          lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
          swift_allocError();
          *v64 = 0;
          *(v64 + 8) = 0;
          *(v64 + 16) = 4;
          swift_willThrow();
          goto LABEL_76;
        }

        swift_unknownObjectRelease();
        v32 = v37;
        if (!--v31)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_48:
    v37 = 0;
LABEL_49:
    v46 = v92;
    if (v92 < 0)
    {
      goto LABEL_97;
    }

    v47 = v30;
    if (!v92)
    {
LABEL_71:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      swift_initStackObject();
      v57 = specialized WraparoundJointRandomness.init(parts:)(v21, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field40, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field40> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 101777407);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      inited = swift_initStackObject();
      inited[4] = 0;
      inited[5] = 3;
      inited[6] = v92;
      inited[2] = v41;
      inited[3] = 0;
      v59 = *(v57 + 24);

      v60 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field40, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field40> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      swift_unknownObjectRelease();

      swift_setDeallocating();
      v61 = inited[2];

      v62 = inited[3];

      v63 = inited[4];

      *a2 = v59;
      a2[1] = v60;
      return;
    }

    while (1)
    {
      v48 = specialized FullyLinearProof.verifierLength.getter();
      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      if (v48)
      {
        v49 = v20 - v37 >= v48;
      }

      else
      {
        v49 = 1;
      }

      v50 = !v49;
      v51 = v20;
      if (v49)
      {
        v51 = v37 + v48;
        if (__OFADD__(v37, v48))
        {
          goto LABEL_91;
        }
      }

      if (v51 < v37)
      {
        goto LABEL_84;
      }

      if (v20 < v37)
      {
        goto LABEL_85;
      }

      if (v20 < v51)
      {
        goto LABEL_86;
      }

      v52 = v5;
      v53 = v20;
      if ((v50 & 1) == 0)
      {
        v53 = v37 + v48;
        if (__OFADD__(v37, v48))
        {
          goto LABEL_92;
        }

        if (v20 < v53)
        {
          goto LABEL_90;
        }
      }

      if (v53 < v37)
      {
        goto LABEL_87;
      }

      v54 = (2 * v51) | 1;
      v55 = swift_unknownObjectRetain();
      v56 = specialized FullyLinearProof.decide<A>(verifier:)(v55, v47 + 32, v37, v54, specialized _copyCollectionToContiguousArray<A>(_:), specialized Collection.prefix(_:), specialized Collection.dropFirst(_:), specialized ParallelSum.evaluate<A>(at:));
      if (v52)
      {

        swift_unknownObjectRelease_n();
        return;
      }

      if ((v56 & 1) == 0)
      {
        goto LABEL_75;
      }

      swift_unknownObjectRelease();
      v37 = v53;
      --v46;
      v5 = 0;
      if (!v46)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

void _s4VDAF4PINEV18prepareMessageFrom_9parameterAA011PINEPrepareD0Vyq0_GSayAA0G5ShareVyxq0_GG_AA11VoidCodableVtKFAA7Field32V_SRySfGAA19XofHmacSha256Aes128CTt1B5(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 != *v2)
  {
    _StringGuts.grow(_:)(53);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    MEMORY[0x2743B25F0](0xD00000000000002CLL, 0x8000000270C51BB0);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v27);

    MEMORY[0x2743B25F0](15649, 0xE200000000000000);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v29 = 0;
    *(v29 + 8) = 0xE000000000000000;
    *(v29 + 16) = 1;
    swift_willThrow();
    return;
  }

  v5 = v3;
  v7 = *(v2 + 320);
  v88 = *(v2 + 256);
  v89 = *(v2 + 272);
  v90 = *(v2 + 288);
  v91 = *(v2 + 304);
  v84 = *(v2 + 192);
  v85 = *(v2 + 208);
  v86 = *(v2 + 224);
  v87 = *(v2 + 240);
  v82 = *(v2 + 160);
  v83 = *(v2 + 176);
  v8 = specialized FullyLinearProof.verifierLength.getter();
  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    goto LABEL_93;
  }

  v10 = *(v2 + 312);
  v78 = *(v2 + 104);
  v79 = *(v2 + 120);
  v80 = *(v2 + 136);
  v81 = *(v2 + 152);
  v74 = *(v2 + 40);
  v75 = *(v2 + 56);
  v76 = *(v2 + 72);
  v77 = *(v2 + 88);
  v72 = *(v2 + 8);
  v73 = *(v2 + 24);
  v11 = specialized FullyLinearProof.verifierLength.getter();
  v12 = v10 * v11;
  v92 = v10;
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v13 = v9 + v12;
  if (__OFADD__(v9, v12))
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v14 + 16) = v13;
      bzero((v14 + 32), 4 * v13);
    }

    v69 = v14;
    if (v4)
    {
      v68 = a1;
      v15 = (a1 + 48);
      v16 = v4;
      do
      {
        v17 = *(v15 - 2);
        v18 = *(v15 - 1);
        v19 = *v15;

        specialized Array<A>.elementwiseAdd(_:)(v17);
        if (v3)
        {

          return;
        }

        v15 += 3;
        --v16;
      }

      while (v16);
      v65 = v7;
      v66 = v69;
      v20 = *(v69 + 16);
      v70 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v21 = v70;
      v22 = (v68 + 40);
      v23 = v4;
      do
      {
        v24 = *v22;
        v26 = *(v70 + 16);
        v25 = *(v70 + 24);

        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        }

        *(v70 + 16) = v26 + 1;
        *(v70 + 8 * v26 + 32) = v24;
        v22 += 3;
        --v23;
      }

      while (v23);
      v71 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v41 = v71;
      v42 = (v68 + 48);
      do
      {
        v43 = *v42;
        v45 = *(v71 + 16);
        v44 = *(v71 + 24);

        if (v45 >= v44 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        }

        *(v71 + 16) = v45 + 1;
        *(v71 + 8 * v45 + 32) = v43;
        v42 += 3;
        --v4;
      }

      while (v4);
      v30 = v66;
      v5 = 0;
      v7 = v65;
      if (v65 < 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v20 = *(v14 + 16);
      v41 = MEMORY[0x277D84F90];
      v21 = MEMORY[0x277D84F90];
      v30 = v14;
      if (v7 < 0)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    if (v7)
    {
      v31 = v7;
      v32 = 0;
      while (1)
      {
        v33 = specialized FullyLinearProof.verifierLength.getter();
        if ((v33 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v33)
        {
          v34 = v20 - v32 >= v33;
        }

        else
        {
          v34 = 1;
        }

        v35 = !v34;
        v36 = v20;
        if (v34)
        {
          v36 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_88;
          }
        }

        if (v36 < v32)
        {
          goto LABEL_78;
        }

        if (v20 < v32)
        {
          goto LABEL_79;
        }

        if (v20 < v36)
        {
          goto LABEL_80;
        }

        v37 = v20;
        if ((v35 & 1) == 0)
        {
          v37 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_89;
          }

          if (v20 < v37)
          {
            goto LABEL_82;
          }
        }

        if (v37 < v32)
        {
          goto LABEL_81;
        }

        v38 = (2 * v36) | 1;
        v39 = swift_unknownObjectRetain();
        v40 = specialized FullyLinearProof.decide<A>(verifier:)(v39, v30 + 32, v32, v38);
        if (v5)
        {

LABEL_76:
          swift_unknownObjectRelease_n();
          return;
        }

        if ((v40 & 1) == 0)
        {
LABEL_75:

          lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
          swift_allocError();
          *v64 = 0;
          *(v64 + 8) = 0;
          *(v64 + 16) = 4;
          swift_willThrow();
          goto LABEL_76;
        }

        swift_unknownObjectRelease();
        v32 = v37;
        if (!--v31)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_48:
    v37 = 0;
LABEL_49:
    v46 = v92;
    if (v92 < 0)
    {
      goto LABEL_97;
    }

    v47 = v30;
    if (!v92)
    {
LABEL_71:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      swift_initStackObject();
      v57 = specialized WraparoundJointRandomness.init(parts:)(v21, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field32, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field32> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 85000191);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      inited = swift_initStackObject();
      inited[4] = 0;
      inited[5] = 3;
      inited[6] = v92;
      inited[2] = v41;
      inited[3] = 0;
      v59 = *(v57 + 24);

      v60 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field32, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field32> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      swift_unknownObjectRelease();

      swift_setDeallocating();
      v61 = inited[2];

      v62 = inited[3];

      v63 = inited[4];

      *a2 = v59;
      a2[1] = v60;
      return;
    }

    while (1)
    {
      v48 = specialized FullyLinearProof.verifierLength.getter();
      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      if (v48)
      {
        v49 = v20 - v37 >= v48;
      }

      else
      {
        v49 = 1;
      }

      v50 = !v49;
      v51 = v20;
      if (v49)
      {
        v51 = v37 + v48;
        if (__OFADD__(v37, v48))
        {
          goto LABEL_91;
        }
      }

      if (v51 < v37)
      {
        goto LABEL_84;
      }

      if (v20 < v37)
      {
        goto LABEL_85;
      }

      if (v20 < v51)
      {
        goto LABEL_86;
      }

      v52 = v5;
      v53 = v20;
      if ((v50 & 1) == 0)
      {
        v53 = v37 + v48;
        if (__OFADD__(v37, v48))
        {
          goto LABEL_92;
        }

        if (v20 < v53)
        {
          goto LABEL_90;
        }
      }

      if (v53 < v37)
      {
        goto LABEL_87;
      }

      v54 = (2 * v51) | 1;
      v55 = swift_unknownObjectRetain();
      v56 = specialized FullyLinearProof.decide<A>(verifier:)(v55, v47 + 32, v37, v54);
      if (v52)
      {

        swift_unknownObjectRelease_n();
        return;
      }

      if ((v56 & 1) == 0)
      {
        goto LABEL_75;
      }

      swift_unknownObjectRelease();
      v37 = v53;
      --v46;
      v5 = 0;
      if (!v46)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

void _s4VDAF4PINEV18prepareMessageFrom_9parameterAA011PINEPrepareD0Vyq0_GSayAA0G5ShareVyxq0_GG_AA11VoidCodableVtKFAA7Field64V_SRySfGAA19XofHmacSha256Aes128CTt1B5(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 != *v2)
  {
    _StringGuts.grow(_:)(53);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    MEMORY[0x2743B25F0](0xD00000000000002CLL, 0x8000000270C51BB0);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v27);

    MEMORY[0x2743B25F0](15649, 0xE200000000000000);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v29 = 0;
    *(v29 + 8) = 0xE000000000000000;
    *(v29 + 16) = 1;
    swift_willThrow();
    return;
  }

  v5 = v3;
  v7 = *(v2 + 320);
  v88 = *(v2 + 256);
  v89 = *(v2 + 272);
  v90 = *(v2 + 288);
  v91 = *(v2 + 304);
  v84 = *(v2 + 192);
  v85 = *(v2 + 208);
  v86 = *(v2 + 224);
  v87 = *(v2 + 240);
  v82 = *(v2 + 160);
  v83 = *(v2 + 176);
  v8 = specialized FullyLinearProof.verifierLength.getter();
  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    goto LABEL_93;
  }

  v10 = *(v2 + 312);
  v78 = *(v2 + 104);
  v79 = *(v2 + 120);
  v80 = *(v2 + 136);
  v81 = *(v2 + 152);
  v74 = *(v2 + 40);
  v75 = *(v2 + 56);
  v76 = *(v2 + 72);
  v77 = *(v2 + 88);
  v72 = *(v2 + 8);
  v73 = *(v2 + 24);
  v11 = specialized FullyLinearProof.verifierLength.getter();
  v12 = v10 * v11;
  v92 = v10;
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v13 = v9 + v12;
  if (__OFADD__(v9, v12))
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v14 + 16) = v13;
      bzero((v14 + 32), 8 * v13);
    }

    v69 = v14;
    if (v4)
    {
      v68 = a1;
      v15 = (a1 + 48);
      v16 = v4;
      do
      {
        v17 = *(v15 - 2);
        v18 = *(v15 - 1);
        v19 = *v15;

        specialized Array<A>.elementwiseAdd(_:)(v17);
        if (v3)
        {

          return;
        }

        v15 += 3;
        --v16;
      }

      while (v16);
      v65 = v7;
      v66 = v69;
      v20 = *(v69 + 16);
      v70 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v21 = v70;
      v22 = (v68 + 40);
      v23 = v4;
      do
      {
        v24 = *v22;
        v26 = *(v70 + 16);
        v25 = *(v70 + 24);

        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        }

        *(v70 + 16) = v26 + 1;
        *(v70 + 8 * v26 + 32) = v24;
        v22 += 3;
        --v23;
      }

      while (v23);
      v71 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v41 = v71;
      v42 = (v68 + 48);
      do
      {
        v43 = *v42;
        v45 = *(v71 + 16);
        v44 = *(v71 + 24);

        if (v45 >= v44 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        }

        *(v71 + 16) = v45 + 1;
        *(v71 + 8 * v45 + 32) = v43;
        v42 += 3;
        --v4;
      }

      while (v4);
      v30 = v66;
      v5 = 0;
      v7 = v65;
      if (v65 < 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v20 = *(v14 + 16);
      v41 = MEMORY[0x277D84F90];
      v21 = MEMORY[0x277D84F90];
      v30 = v14;
      if (v7 < 0)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    if (v7)
    {
      v31 = v7;
      v32 = 0;
      while (1)
      {
        v33 = specialized FullyLinearProof.verifierLength.getter();
        if ((v33 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v33)
        {
          v34 = v20 - v32 >= v33;
        }

        else
        {
          v34 = 1;
        }

        v35 = !v34;
        v36 = v20;
        if (v34)
        {
          v36 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_88;
          }
        }

        if (v36 < v32)
        {
          goto LABEL_78;
        }

        if (v20 < v32)
        {
          goto LABEL_79;
        }

        if (v20 < v36)
        {
          goto LABEL_80;
        }

        v37 = v20;
        if ((v35 & 1) == 0)
        {
          v37 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_89;
          }

          if (v20 < v37)
          {
            goto LABEL_82;
          }
        }

        if (v37 < v32)
        {
          goto LABEL_81;
        }

        v38 = (2 * v36) | 1;
        v39 = swift_unknownObjectRetain();
        v40 = specialized FullyLinearProof.decide<A>(verifier:)(v39, v30 + 32, v32, v38, specialized _copyCollectionToContiguousArray<A>(_:), specialized Collection.prefix(_:), specialized Collection.dropFirst(_:), specialized ParallelSum.evaluate<A>(at:));
        if (v5)
        {

LABEL_76:
          swift_unknownObjectRelease_n();
          return;
        }

        if ((v40 & 1) == 0)
        {
LABEL_75:

          lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
          swift_allocError();
          *v64 = 0;
          *(v64 + 8) = 0;
          *(v64 + 16) = 4;
          swift_willThrow();
          goto LABEL_76;
        }

        swift_unknownObjectRelease();
        v32 = v37;
        if (!--v31)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_48:
    v37 = 0;
LABEL_49:
    v46 = v92;
    if (v92 < 0)
    {
      goto LABEL_97;
    }

    v47 = v30;
    if (!v92)
    {
LABEL_71:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      swift_initStackObject();
      v57 = specialized WraparoundJointRandomness.init(parts:)(v21, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 68222975);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      inited = swift_initStackObject();
      inited[4] = 0;
      inited[5] = 3;
      inited[6] = v92;
      inited[2] = v41;
      inited[3] = 0;
      v59 = *(v57 + 24);

      v60 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
      swift_unknownObjectRelease();

      swift_setDeallocating();
      v61 = inited[2];

      v62 = inited[3];

      v63 = inited[4];

      *a2 = v59;
      a2[1] = v60;
      return;
    }

    while (1)
    {
      v48 = specialized FullyLinearProof.verifierLength.getter();
      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      if (v48)
      {
        v49 = v20 - v37 >= v48;
      }

      else
      {
        v49 = 1;
      }

      v50 = !v49;
      v51 = v20;
      if (v49)
      {
        v51 = v37 + v48;
        if (__OFADD__(v37, v48))
        {
          goto LABEL_91;
        }
      }

      if (v51 < v37)
      {
        goto LABEL_84;
      }

      if (v20 < v37)
      {
        goto LABEL_85;
      }

      if (v20 < v51)
      {
        goto LABEL_86;
      }

      v52 = v5;
      v53 = v20;
      if ((v50 & 1) == 0)
      {
        v53 = v37 + v48;
        if (__OFADD__(v37, v48))
        {
          goto LABEL_92;
        }

        if (v20 < v53)
        {
          goto LABEL_90;
        }
      }

      if (v53 < v37)
      {
        goto LABEL_87;
      }

      v54 = (2 * v51) | 1;
      v55 = swift_unknownObjectRetain();
      v56 = specialized FullyLinearProof.decide<A>(verifier:)(v55, v47 + 32, v37, v54, specialized _copyCollectionToContiguousArray<A>(_:), specialized Collection.prefix(_:), specialized Collection.dropFirst(_:), specialized ParallelSum.evaluate<A>(at:));
      if (v52)
      {

        swift_unknownObjectRelease_n();
        return;
      }

      if ((v56 & 1) == 0)
      {
        goto LABEL_75;
      }

      swift_unknownObjectRelease();
      v37 = v53;
      --v46;
      v5 = 0;
      if (!v46)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

uint64_t PINE<>.prepareNextAndEncodeIntoBytes(aggregatorID:encodedState:encodedMessage:)(unint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  v7 = v5;
  memcpy(__dst, v7, sizeof(__dst));
  result = _s4VDAF16PINEPrepareStateV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_AA19XofHmacSha256Aes128CSWTt2B5(a2, a3, a1, 64, __dst[13], 0, &v21);
  if (!v6)
  {
    v14 = v21;
    v15 = v22;
    _s4VDAF18PINEPrepareMessageV4from9parameterACyxGqd___ytSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5(a4, a5, &v21);
    specialized PINE.prepareNext(state:message:)(v14, *(&v14 + 1), v15, v21, *(&v21 + 1), &v21);

    *&v20[9] = *&v23[9];
    v19[0] = v21;
    v19[1] = v22;
    *v20 = *v23;
    if (v23[24])
    {
      v16 = *(*&v19[0] + 16);
      if ((v16 * 5) >> 64 == (5 * v16) >> 63)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 5 * v16, 0, MEMORY[0x277D84F90]);
        specialized AggregateShare.encode<A>(into:)(&v18, *&v19[0]);
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v19, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGGMd, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGGMR);
        return v18;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v19, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGGMd, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGGMR);
      lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
      swift_allocError();
      *v17 = 0xD000000000000018;
      *(v17 + 8) = 0x8000000270C519B0;
      *(v17 + 16) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

{
  v7 = v5;
  memcpy(__dst, v7, sizeof(__dst));
  result = _s4VDAF16PINEPrepareStateV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_AA19XofHmacSha256Aes128CSWTt2B5(a2, a3, a1, 64, __dst[13], 0, &v21);
  if (!v6)
  {
    v14 = v21;
    v15 = v22;
    _s4VDAF18PINEPrepareMessageV4from9parameterACyxGqd___ytSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5(a4, a5, &v21);
    specialized PINE.prepareNext(state:message:)(v14, *(&v14 + 1), v15, v21, *(&v21 + 1), &v21);

    *&v20[9] = *&v23[9];
    v19[0] = v21;
    v19[1] = v22;
    *v20 = *v23;
    if (v23[24])
    {
      v16 = *(*&v19[0] + 16);
      if (v16 >> 61)
      {
        __break(1u);
      }

      else
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v16, 0, MEMORY[0x277D84F90]);
        specialized Collection<>.encode<A>(into:)(&v18, *&v19[0]);
        return v18;
      }
    }

    else
    {
      lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
      swift_allocError();
      *v17 = 0xD000000000000018;
      *(v17 + 8) = 0x8000000270C519B0;
      *(v17 + 16) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

{
  v7 = v5;
  memcpy(__dst, v7, sizeof(__dst));
  result = _s4VDAF16PINEPrepareStateV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_AA19XofHmacSha256Aes128CSWTt2B5(a2, a3, a1, 64, __dst[13], 0, &v21);
  if (!v6)
  {
    v14 = v21;
    v15 = v22;
    _s4VDAF18PINEPrepareMessageV4from9parameterACyxGqd___ytSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5(a4, a5, &v21);
    specialized PINE.prepareNext(state:message:)(v14, *(&v14 + 1), v15, v21, *(&v21 + 1), &v21);

    *&v20[9] = *&v23[9];
    v19[0] = v21;
    v19[1] = v22;
    *v20 = *v23;
    if (v23[24])
    {
      v16 = *(*&v19[0] + 16);
      if (v16 >> 60)
      {
        __break(1u);
      }

      else
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8 * v16, 0, MEMORY[0x277D84F90]);
        specialized AggregateShare.encode<A>(into:)(&v18, *&v19[0]);
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v19, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGGMd, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGGMR);
        return v18;
      }
    }

    else
    {
      outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v19, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGGMd, &_s4VDAF17PrepareTransitionOyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGGMR);
      lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
      swift_allocError();
      *v17 = 0xD000000000000018;
      *(v17 + 8) = 0x8000000270C519B0;
      *(v17 + 16) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t specialized PINE.prepareNext(state:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if ((specialized static Seed.== infix(_:_:)(a3, a5) & 1) == 0)
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    v12 = "ize mismatched: ";
    v13 = 43;
LABEL_7:
    MEMORY[0x2743B25F0](v13 | 0xD000000000000010, v12 | 0x8000000000000000);

    v14 = String.init<A>(describing:)();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51A80);

    v15 = String.init<A>(describing:)();
    goto LABEL_8;
  }

  if ((specialized static Seed.== infix(_:_:)(a2, a4) & 1) == 0)
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    MEMORY[0x2743B25F0](0x4E49502F46414456, 0xEF74666977732E45);
    v12 = "),\nin message: (";
    v13 = 41;
    goto LABEL_7;
  }

  if (*(a1 + 16) == *(v6 + 104))
  {
    *a6 = a1;
    *(a6 + 56) = 1;
  }

  _StringGuts.grow(_:)(49);

  v18 = 0xD000000000000033;
  v19 = 0x8000000270C51AE0;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v17);

  MEMORY[0x2743B25F0](0x203A746F670A2CLL, 0xE700000000000000);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_8:
  MEMORY[0x2743B25F0](v15);

  lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
  swift_allocError();
  *v16 = v18;
  *(v16 + 8) = v19;
  *(v16 + 16) = 1;
  return swift_willThrow();
}

{
  return sub_270B603F8(a1, a2, a3, a4, a5, a6);
}

_BYTE *PINE<>.outputShare(from:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_SWTt0g5(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_SWTt0g5(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t *PINE<>.encodedAggregateShare(_:)(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if ((v2 * 5) >> 64 == (5 * v2) >> 63)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 5 * v2, 0, MEMORY[0x277D84F90]);
    specialized AggregateShare.encode<A>(into:)(&v3, v1);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 >> 61)
  {
    __break(1u);
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v2, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(&v3, v1);
    return v3;
  }

  return result;
}

{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 >> 60)
  {
    __break(1u);
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8 * v2, 0, MEMORY[0x277D84F90]);
    specialized AggregateShare.encode<A>(into:)(&v3, v1);
    return v3;
  }

  return result;
}

void PINE<>.unshard(_:numOfMeasurements:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, v3, sizeof(__dst));
  _s4VDAF4PINEV7unshard_17numOfMeasurements4into9parameteryqd___Siqd_0_zAA11VoidCodableVtKSkRd__SMRd_0_7ElementQyd_0_AJRt_AA14AggregateShareVyxGAJRtd__r0_lFAA7Field40V_SRySfGAA19XofHmacSha256Aes128CSayANyARGGSrySfGTt2B5Tf4ndnn_nTm(a1, a3, &type metadata for Field40, specialized Array<A>.elementwiseAdd(_:), specialized PINECircuit.decode<A>(data:numOfMeasurements:into:));
}

{
  memcpy(__dst, v3, sizeof(__dst));
  _s4VDAF4PINEV7unshard_17numOfMeasurements4into9parameteryqd___Siqd_0_zAA11VoidCodableVtKSkRd__SMRd_0_7ElementQyd_0_AJRt_AA14AggregateShareVyxGAJRtd__r0_lFAA7Field64V_SRySfGAA19XofHmacSha256Aes128CSayANyARGGSrySfGTt2B5Tf4ndnn_n(a1, a3);
}

uint64_t specialized Array<A>.elementwiseAdd(_:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 != *(result + 16))
  {
LABEL_17:
    _StringGuts.grow(_:)(28);

    v15 = *(v2 + 16);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v14 = 0xD000000000000020;
    *(v14 + 8) = 0x8000000270C52260;
    *(v14 + 16) = 1;
    return swift_willThrow();
  }

  if (v3)
  {
    v4 = result;
    v5 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      if (v3 > *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      for (i = 32; ; i += 8)
      {
        v8 = *(v4 + i);
        v7 = *(v2 + i);
        if (!v8)
        {
          goto LABEL_7;
        }

        v9 = v8 <= 0xFFFEB00001;
        v10 = 0xFFFEB00001 - v8;
        if (!v9)
        {
          break;
        }

        if (v7 >= v10)
        {
          v7 -= v10;
        }

        else
        {
          v9 = v10 <= 0xFFFEB00001;
          v11 = 0xFFFEB00001 - v10;
          if (!v9)
          {
            goto LABEL_20;
          }

          v9 = __CFADD__(v7, v11);
          v7 += v11;
          if (v9)
          {
            __break(1u);
            goto LABEL_17;
          }
        }

LABEL_7:
        *(v2 + i) = v7;
        if (!--v3)
        {
          *v1 = v2;
          return result;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 != *(result + 16))
  {
LABEL_17:
    _StringGuts.grow(_:)(28);

    v15 = *(v2 + 16);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v14 = 0xD000000000000020;
    *(v14 + 8) = 0x8000000270C521B0;
    *(v14 + 16) = 1;
    return swift_willThrow();
  }

  if (v3)
  {
    v4 = result;
    v5 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      if (v3 > *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      for (i = 32; ; i += 4)
      {
        v8 = *(v4 + i);
        v7 = *(v2 + i);
        if (!v8)
        {
          goto LABEL_7;
        }

        v9 = v8 <= 0xFFF00001;
        v10 = -1048575 - v8;
        if (!v9)
        {
          break;
        }

        if (v7 >= v10)
        {
          v7 -= v10;
        }

        else
        {
          v9 = v10 <= 0xFFF00001;
          v11 = -1048575 - v10;
          if (!v9)
          {
            goto LABEL_20;
          }

          v9 = __CFADD__(v7, v11);
          v7 += v11;
          if (v9)
          {
            __break(1u);
            goto LABEL_17;
          }
        }

LABEL_7:
        *(v2 + i) = v7;
        if (!--v3)
        {
          *v1 = v2;
          return result;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 != *(result + 16))
  {
LABEL_17:
    _StringGuts.grow(_:)(28);

    v15 = *(v2 + 16);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v14 = 0xD000000000000020;
    *(v14 + 8) = 0x8000000270C51A10;
    *(v14 + 16) = 1;
    return swift_willThrow();
  }

  if (v3)
  {
    v4 = result;
    v5 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      if (v3 > *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      for (i = 32; ; i += 8)
      {
        v8 = *(v4 + i);
        v7 = *(v2 + i);
        if (!v8)
        {
          goto LABEL_7;
        }

        v9 = v8 <= 0xFFFFFFFF00000001;
        v10 = 0xFFFFFFFF00000001 - v8;
        if (!v9)
        {
          break;
        }

        if (v7 >= v10)
        {
          v7 -= v10;
        }

        else
        {
          v9 = v10 <= 0xFFFFFFFF00000001;
          v11 = 0xFFFFFFFF00000001 - v10;
          if (!v9)
          {
            goto LABEL_20;
          }

          v9 = __CFADD__(v7, v11);
          v7 += v11;
          if (v9)
          {
            __break(1u);
            goto LABEL_17;
          }
        }

LABEL_7:
        *(v2 + i) = v7;
        if (!--v3)
        {
          *v1 = v2;
          return result;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }
  }

  return result;
}

void *_sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_s10ArraySliceVyAFGTt0g5(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else if (v4 == 5 * (v4 / 5))
  {
    return _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_s10ArraySliceVyANGTt1g5(result, a2, a3, a4, 1, v4 / 5, 5, 0);
  }

  else
  {
    _StringGuts.grow(_:)(69);
    MEMORY[0x2743B25F0](0x69463C7961727241, 0xEE003E3034646C65);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
    swift_unknownObjectRelease();
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v6);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0xE000000000000000;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

_BYTE *_sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_SWTt0g5(_BYTE *a1, _BYTE *a2)
{
  if (a1)
  {
    v2 = (a2 - a1) / 5;
    if (a2 - a1 != 5 * v2)
    {
      _StringGuts.grow(_:)(69);
      MEMORY[0x2743B25F0](0x69463C7961727241, 0xEE003E3034646C65);
      MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v3);

      MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v4);

      MEMORY[0x2743B25F0](41, 0xE100000000000000);
      lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
      swift_allocError();
      *v5 = 0;
      *(v5 + 8) = 0xE000000000000000;
      *(v5 + 16) = 0;
      return swift_willThrow();
    }
  }

  else
  {
    v2 = 0;
  }

  return _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_SWTt1g5(a1, a2, 1, v2, 5, 0);
}

char *_sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_s10ArraySliceVyAFGTt0g5(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else if ((v4 & 3) != 0)
  {
    _StringGuts.grow(_:)(69);
    MEMORY[0x2743B25F0](0x69463C7961727241, 0xEE003E3233646C65);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
    swift_unknownObjectRelease();
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v6);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0xE000000000000000;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    return _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyANGTt1g5(result, a2, a3, a4, 1, v4 >> 2, 4, 0);
  }

  return result;
}

char *_sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_SWTt0g5(char *a1, _BYTE *a2)
{
  if (a1)
  {
    if (((a2 - a1) & 3) != 0)
    {
      _StringGuts.grow(_:)(69);
      MEMORY[0x2743B25F0](0x69463C7961727241, 0xEE003E3233646C65);
      MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v2);

      MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v3);

      MEMORY[0x2743B25F0](41, 0xE100000000000000);
      lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
      swift_allocError();
      *v4 = 0;
      *(v4 + 8) = 0xE000000000000000;
      *(v4 + 16) = 0;
      return swift_willThrow();
    }

    v6 = (a2 - a1) >> 2;
  }

  else
  {
    v6 = 0;
  }

  return _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_SWTt1g5(a1, a2, 1, v6, 4, 0);
}

void *_sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_s10ArraySliceVyAFGTt0g5(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else if ((v4 & 7) != 0)
  {
    _StringGuts.grow(_:)(69);
    MEMORY[0x2743B25F0](0x69463C7961727241, 0xEE003E3436646C65);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
    swift_unknownObjectRelease();
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v6);

    MEMORY[0x2743B25F0](41, 0xE100000000000000);
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0xE000000000000000;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    return _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyANGTt1g5(result, a2, a3, a4, 1, v4 >> 3, 8, 0);
  }

  return result;
}

_BYTE *_sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_SWTt0g5(_BYTE *a1, _BYTE *a2)
{
  if (a1)
  {
    if (((a2 - a1) & 7) != 0)
    {
      _StringGuts.grow(_:)(69);
      MEMORY[0x2743B25F0](0x69463C7961727241, 0xEE003E3436646C65);
      MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v2);

      MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v3);

      MEMORY[0x2743B25F0](41, 0xE100000000000000);
      lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
      swift_allocError();
      *v4 = 0;
      *(v4 + 8) = 0xE000000000000000;
      *(v4 + 16) = 0;
      return swift_willThrow();
    }

    v6 = (a2 - a1) >> 3;
  }

  else
  {
    v6 = 0;
  }

  return _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_SWTt1g5(a1, a2, 1, v6, 8, 0);
}

uint64_t specialized Collection<>.encode<A>(into:)(uint64_t result, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = (a2 + 41);
    do
    {
      v5 = *(v4 - 9);
      if (!*(v5 + 16))
      {
        __break(1u);
      }

      v6 = *v4;
      v7 = *(v4 - 1);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v18 = v8;
      v19 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v17[0] = v5;
      v9 = *(*__swift_project_boxed_opaque_existential_1(v17, v8) + 16);
      swift_bridgeObjectRetain_n();
      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(v17);
      if (v3[1] >> 62 == 2)
      {
        v10 = *(*v3 + 24);
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVys5UInt8VGMd, &_ss15CollectionOfOneVys5UInt8VGMR);
      v18 = v11;
      v12 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance <A> CollectionOfOne<A>, &_ss15CollectionOfOneVys5UInt8VGMd, &_ss15CollectionOfOneVys5UInt8VGMR);
      v19 = v12;
      LOBYTE(v17[0]) = v7;
      v16 = *__swift_project_boxed_opaque_existential_1(v17, v11);
      Data._Representation.replaceSubrange(_:with:count:)();
      __swift_destroy_boxed_opaque_existential_1(v17);
      if (v3[1] >> 62 == 2)
      {
        v13 = *(*v3 + 24);
      }

      v18 = v11;
      v19 = v12;
      LOBYTE(v17[0]) = v6;
      v15 = *__swift_project_boxed_opaque_existential_1(v17, v11);
      Data._Representation.replaceSubrange(_:with:count:)();

      result = __swift_destroy_boxed_opaque_existential_1(v17);
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void specialized Collection<>.encode<A>(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    v4 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    do
    {
      v5 = *v3++;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v9 = v4;
      v7[0] = v5;
      v6 = *(*__swift_project_boxed_opaque_existential_1(v7, v8) + 16);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(v7);
      --v2;
    }

    while (v2);
  }
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(size_t a1, size_t a2, size_t a3, size_t a4)
{
  result = specialized RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, a4);
  v10 = *v4;
  v11 = *(*v4 + 2);
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  v14 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v16 = *(v10 + 3) >> 1, v16 < v12))
  {
    if (v11 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v11;
    }

    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17, 1, v10);
    v16 = *(v10 + 3) >> 1;
  }

  v18 = *(v10 + 2);
  v19 = v16 - v18;
  result = specialized Slice._copyContents(initializing:)(&v35, &v10[v18 + 32], v16 - v18, a1, a2, a3, a4);
  if (result < v13)
  {
    goto LABEL_15;
  }

  if (result >= 1)
  {
    v21 = *(v10 + 2);
    v22 = __OFADD__(v21, result);
    v23 = v21 + result;
    if (v22)
    {
      __break(1u);
      goto LABEL_39;
    }

    *(v10 + 2) = v23;
  }

  if (result != v19)
  {
LABEL_13:
    *v4 = v10;
    return result;
  }

LABEL_16:
  v24 = v36;
  if (v39 == v36)
  {
    goto LABEL_13;
  }

  if (v39 >= v36 || (v25 = v35, v39 < v35))
  {
LABEL_42:
    __break(1u);
  }

  else
  {
    v26 = v37;
    if (v37)
    {
      v27 = v38 - v37;
    }

    else
    {
      v27 = 0;
    }

    if ((v39 & 0x8000000000000000) == 0 && v39 < v27)
    {
      v13 = *(v10 + 2);
      v28 = *(v37 + v39);
      v29 = v39 + 1;
      while (1)
      {
LABEL_26:
        v30 = *(v10 + 3);
        v31 = v30 >> 1;
        if ((v30 >> 1) < v13 + 1)
        {
          v33 = v10;
          v34 = v28;
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v13 + 1, 1, v33);
          v28 = v34;
          v10 = result;
          v31 = *(result + 24) >> 1;
          v32 = v13 - v31;
          if (v13 < v31)
          {
LABEL_28:
            v20 = 0;
            while (1)
            {
              v10[v13 + 32 + v20] = v28;
              if (v24 - v29 == v20)
              {
                break;
              }

              if (v29 < v25 || v29 + v20 >= v24)
              {
                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

              if (v29 < 0 || v29 + v20 >= v27)
              {
                goto LABEL_41;
              }

              v28 = *(v26 + v29 + v20++);
              if (!(v32 + v20))
              {
                v29 += v20;
                v13 = v31;
                *(v10 + 2) = v31;
                goto LABEL_26;
              }
            }

LABEL_39:
            *(v10 + 2) = v13 + v20 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v32 = v13 - v31;
          if (v13 < v31)
          {
            goto LABEL_28;
          }
        }

        *(v10 + 2) = v13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Data.Iterator();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5, v8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v13 = 0;
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_36;
  }

  v13 = HIDWORD(a1) - a1;
LABEL_10:
  v16 = *v2;
  v17 = *(*v2 + 2);
  v18 = v17 + v13;
  if (__OFADD__(v17, v13))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v28 = v2;
    v29 = *(v16 + 2);
    lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator();
    dispatch thunk of IteratorProtocol.next()();
    if (v34)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v30 = *(v16 + 3);
      v31 = v30 >> 1;
      if ((v30 >> 1) >= v29 + 1)
      {
        break;
      }

      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v29 + 1, 1, v16);
      v32 = v34;
      v31 = *(v16 + 3) >> 1;
      if ((v34 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_27:
      *(v16 + 2) = v29;
      v2 = v28;
      if (v32)
      {
        goto LABEL_22;
      }
    }

    v32 = 0;
    do
    {
LABEL_30:
      if (v29 >= v31)
      {
        break;
      }

      v16[v29++ + 32] = v33[14];
      dispatch thunk of IteratorProtocol.next()();
      v32 = v34;
    }

    while ((v34 & 1) == 0);
    goto LABEL_27;
  }

  v19 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v21 = *(v16 + 3) >> 1, v21 < v18))
  {
    if (v17 <= v18)
    {
      v22 = v17 + v13;
    }

    else
    {
      v22 = v17;
    }

    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v22, 1, v16);
    v21 = *(v16 + 3) >> 1;
  }

  v23 = v21 - *(v16 + 2);
  v24 = Data._copyContents(initializing:)();
  result = outlined consume of Data._Representation(a1, a2);
  if (v24 < v13)
  {
    goto LABEL_24;
  }

  if (v24 < 1)
  {
    goto LABEL_21;
  }

  v25 = *(v16 + 2);
  v26 = __OFADD__(v25, v24);
  v27 = v25 + v24;
  if (!v26)
  {
    *(v16 + 2) = v27;
LABEL_21:
    if (v24 != v23)
    {
LABEL_22:
      result = (*(v6 + 8))(v11, v5);
      *v2 = v16;
      return result;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 4 * v16 + 32), (a2 + 4 * a3), 4 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v9 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v9 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + 8 * v9 + 32), (v7 + 32), 8 * v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v10 = *(v4 + 16);
  v11 = __OFADD__(v10, v3);
  v12 = v10 + v3;
  if (!v11)
  {
    *(v4 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *v5;
  v9 = *(*v5 + 16);
  if (__OFADD__(v9, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = *v5;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_8;
  }

  v14 = *(v8 + 24) >> 1;
  if (v14 < v9 + v7)
  {
    goto LABEL_8;
  }

  if (v6 == a3)
  {
    while (v7 > 0)
    {
      __break(1u);
LABEL_8:
      v8 = a5();
      v14 = *(v8 + 24) >> 1;
      if (v6 != a3)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_13;
  }

LABEL_9:
  v15 = *(v8 + 16);
  if (v14 - v15 < v7)
  {
    goto LABEL_16;
  }

  memcpy((v8 + 8 * v15 + 32), (a2 + 8 * a3), 8 * v7);
  if (v7 <= 0)
  {
LABEL_13:
    swift_unknownObjectRelease();
    *v5 = v8;
    return;
  }

  v16 = *(v8 + 16);
  v17 = __OFADD__(v16, v7);
  v18 = v16 + v7;
  if (!v17)
  {
    *(v8 + 16) = v18;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

uint64_t specialized VerificationJointRandomness.seed.getter(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  if (v3[3])
  {
    v5 = v3[3];
  }

  else
  {
    v6 = *v3;
    v7 = v4[2];
    v8 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](a1, a2, a3);
    v5 = static JointRandomness.jointRandSeed(parts:)(v7, v6, v8);
    v9 = v4[3];
    v4[3] = v5;
  }

  return v5;
}

uint64_t specialized VerificationJointRandomness.xof.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = specialized closure #1 in VerificationJointRandomness.xof.getter(v0);
    v2 = *(v0 + 32);
    *(v0 + 32) = v1;
  }

  return v1;
}

{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
LABEL_6:

    return v1;
  }

  v2 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<Prio3<SumVectorType<Field64, UnsafeRawBufferPointer>, XofHmacSha256Aes128>, Field64> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMd, &_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMR);
  v3 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(2u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_270C44540;
  v5 = *(v0 + 48);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 <= 0xFF)
  {
    *(result + 32) = v5;
    v1 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v2, v3, result);

    swift_setDeallocating();
    v6 = *(v0 + 32);
    *(v0 + 32) = v1;

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t specialized VerificationJointRandomness.xof.getter(unint64_t *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  if (*(v4 + 32))
  {
    v5 = *(v4 + 32);
LABEL_6:

    return v5;
  }

  v7 = specialized VerificationJointRandomness.seed.getter(a1, a2, a3);
  v8 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(2u, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_270C44540;
  v10 = *(v4 + 48);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 <= 0xFF)
  {
    *(result + 32) = v10;
    v5 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v7, v8, result);

    swift_setDeallocating();
    v11 = *(v4 + 32);
    *(v4 + 32) = v5;

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12, v15);
  v18 = &v21 - v17;
  if (*(a1 + 16) == 32)
  {

    result = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a1, a2, a3);
    if (!*(result + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
    {
      v19 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      v20 = result;
      swift_beginAccess();
      (*(v7 + 16))(v11, v20 + v19, v6);
      HMAC.finalize()();
      (*(v7 + 8))(v11, v6);
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      (*(v13 + 8))(v18, v12);
      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized VerificationJointRandomness.next()()
{
  v1 = *(v0 + 40);
  result = specialized VerificationJointRandomness.xof.getter();
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (v1)
    {
      v9 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
      v4 = v9;
      do
      {
        _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5(v3, &v8);
        v5 = v8;
        v9 = v4;
        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v4 = v9;
        }

        *(v4 + 16) = v7 + 1;
        *(v4 + 8 * v7 + 32) = v5;
        --v1;
      }

      while (v1);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

{
  v1 = *(v0 + 40);
  result = specialized VerificationJointRandomness.xof.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field32, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field32> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 85000191);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (v1)
    {
      v9 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
      v4 = v9;
      do
      {
        _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v3, &v8);
        v5 = v8;
        v9 = v4;
        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v4 = v9;
        }

        *(v4 + 16) = v7 + 1;
        *(v4 + 4 * v7 + 32) = v5;
        --v1;
      }

      while (v1);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

int64_t _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = MEMORY[0x277D84F90];
    if (result)
    {
      v9 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v3 = v9;
      do
      {
        _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(a2, &v8);
        v5 = v8;
        v9 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v9;
        }

        *(v3 + 16) = v7 + 1;
        *(v3 + 4 * v7 + 32) = v5;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  return result;
}

unint64_t _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(unint64_t result, uint64_t a2, void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = MEMORY[0x277D84F90];
    if (result)
    {
      v13 = MEMORY[0x277D84F90];
      a3(0, result, 0);
      v5 = v13;
      do
      {
        a4(&v12, a2);
        v9 = v12;
        v13 = v5;
        v11 = *(v5 + 16);
        v10 = *(v5 + 24);
        if (v11 >= v10 >> 1)
        {
          a3(v10 > 1, v11 + 1, 1);
          v5 = v13;
        }

        *(v5 + 16) = v11 + 1;
        *(v5 + 8 * v11 + 32) = v9;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  return result;
}

uint64_t _s4VDAF16PINEPrepareStateV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    return swift_willThrow();
  }

  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  v15 = 5 * a5;
  if ((a5 * 5) >> 64 != (5 * a5) >> 63)
  {
    __break(1u);
    goto LABEL_59;
  }

  v9 = v15 + a4;
  if (__OFADD__(v15, a4))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v14 != v9)
  {
    _StringGuts.grow(_:)(24);

    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v29);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v30 = 0xD000000000000039;
    v30[1] = 0x8000000270C522D0;
    return swift_willThrow();
  }

  v43 = a7;
  v44 = a3;
  v46 = v8;
  v16 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v17 = (2 * v16[2]) | 1;
  v18 = specialized Collection.prefix(_:)(v15, v16, v16 + 4, 0, v17);
  v12 = v19;
  v9 = v20;
  v22 = v21;
  v7 = specialized Collection.dropFirst(_:)(v15, v16, v16 + 4, 0, v17);
  v45 = v23;
  v14 = v24;
  v10 = v25;

  v26 = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_s10ArraySliceVyAFGTt0g5(v18, v12, v9, v22);
  if (v8)
  {
    return swift_unknownObjectRelease();
  }

  v11 = v10 >> 1;
  v31 = (v10 >> 1) - v14;
  if (__OFSUB__(v10 >> 1, v14))
  {
    goto LABEL_60;
  }

  v32 = v10;
  v12 = v10 >> 1;
  v33 = v7;
  if (v31 >= 0x20)
  {
    v12 = v14 + 32;
    if (__OFADD__(v14, 32))
    {
      goto LABEL_75;
    }
  }

  if (v12 < v14)
  {
    goto LABEL_61;
  }

  if (v11 < v14)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v11 < v12)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v12 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v10 >>= 1;
  if (v31 >= 0x20)
  {
    v10 = v14 + 32;
    if (__OFADD__(v14, 32))
    {
      goto LABEL_76;
    }

    if (v11 < v10)
    {
      goto LABEL_65;
    }
  }

  if (v10 < v14)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v46 = v26;
  v9 = v32 & 1;
  if (v32)
  {
    v42 = v32;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
      swift_unknownObjectRelease();
      v36 = MEMORY[0x277D84F90];
    }

    v37 = *(v36 + 16);

    if (__OFSUB__(v12, v14))
    {
      goto LABEL_77;
    }

    if (v37 != v12 - v14)
    {
      goto LABEL_78;
    }

    v33 = v7;
    v14 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v12 = v45;
    if (v14)
    {
      goto LABEL_34;
    }

    v14 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    v34 = v32 & 1 | (2 * v12);
    v12 = v45;
    specialized _copyCollectionToContiguousArray<A>(_:)(v33, v45, v14, v34);
    v14 = v35;
LABEL_33:
    swift_unknownObjectRelease();
LABEL_34:
    v38 = v11 - v10;
    if (__OFSUB__(v11, v10))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v7 = v11;
    if (v38 >= 0x20)
    {
      v7 = v10 + 32;
      if (__OFADD__(v10, 32))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        swift_unknownObjectRelease_n();
LABEL_47:
        specialized _copyCollectionToContiguousArray<A>(_:)(v33, v12, v10, v9 | (2 * v7));
        v9 = v39;
        goto LABEL_54;
      }
    }

    if (v7 < v10)
    {
      goto LABEL_68;
    }

    if (v11 < v7)
    {
      goto LABEL_69;
    }

    if (v7 < 0)
    {
      goto LABEL_70;
    }

    if (v38 >= 0x20)
    {
      if (__OFADD__(v10, 32))
      {
        goto LABEL_80;
      }

      if (v11 < (v10 + 32))
      {
        goto LABEL_71;
      }

      v11 = v10 + 32;
    }

    if (v11 < v10)
    {
      goto LABEL_72;
    }

    if (!v9)
    {
      swift_unknownObjectRetain();
      goto LABEL_47;
    }

    v11 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      swift_unknownObjectRelease();
      v40 = MEMORY[0x277D84F90];
    }

    v41 = *(v40 + 16);

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_81;
    }

    if (v41 != v7 - v10)
    {
      goto LABEL_82;
    }

    v9 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v9)
    {
      goto LABEL_55;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_54:
    swift_unknownObjectRelease();
LABEL_55:
    result = swift_unknownObjectRelease();
    if ((v44 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

    if (v44 <= 0xFF)
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v33 = v7;
    swift_unknownObjectRelease_n();
    v32 = v42;
  }

  *v43 = v46;
  *(v43 + 8) = v14;
  *(v43 + 16) = v9;
  *(v43 + 24) = v44;
  return result;
}

uint64_t _s4VDAF16PINEPrepareStateV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    return swift_willThrow();
  }

  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  if ((a5 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_59;
  }

  v15 = 4 * a5;
  v9 = 4 * a5 + a4;
  if (__OFADD__(4 * a5, a4))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v14 != v9)
  {
    _StringGuts.grow(_:)(24);

    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v29);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v30 = 0xD000000000000039;
    v30[1] = 0x8000000270C521E0;
    return swift_willThrow();
  }

  v43 = a7;
  v44 = a3;
  v46 = v8;
  v16 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v17 = (2 * v16[2]) | 1;
  v18 = specialized Collection.prefix(_:)(v15, v16, v16 + 4, 0, v17);
  v12 = v19;
  v9 = v20;
  v22 = v21;
  v7 = specialized Collection.dropFirst(_:)(v15, v16, v16 + 4, 0, v17);
  v45 = v23;
  v14 = v24;
  v10 = v25;

  v26 = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_s10ArraySliceVyAFGTt0g5(v18, v12, v9, v22);
  if (v8)
  {
    return swift_unknownObjectRelease();
  }

  v11 = v10 >> 1;
  v31 = (v10 >> 1) - v14;
  if (__OFSUB__(v10 >> 1, v14))
  {
    goto LABEL_60;
  }

  v32 = v10;
  v12 = v10 >> 1;
  v33 = v7;
  if (v31 >= 0x20)
  {
    v12 = v14 + 32;
    if (__OFADD__(v14, 32))
    {
      goto LABEL_75;
    }
  }

  if (v12 < v14)
  {
    goto LABEL_61;
  }

  if (v11 < v14)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v11 < v12)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v12 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v10 >>= 1;
  if (v31 >= 0x20)
  {
    v10 = v14 + 32;
    if (__OFADD__(v14, 32))
    {
      goto LABEL_76;
    }

    if (v11 < v10)
    {
      goto LABEL_65;
    }
  }

  if (v10 < v14)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v46 = v26;
  v9 = v32 & 1;
  if (v32)
  {
    v42 = v32;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
      swift_unknownObjectRelease();
      v36 = MEMORY[0x277D84F90];
    }

    v37 = *(v36 + 16);

    if (__OFSUB__(v12, v14))
    {
      goto LABEL_77;
    }

    if (v37 != v12 - v14)
    {
      goto LABEL_78;
    }

    v33 = v7;
    v14 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v12 = v45;
    if (v14)
    {
      goto LABEL_34;
    }

    v14 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    v34 = v32 & 1 | (2 * v12);
    v12 = v45;
    specialized _copyCollectionToContiguousArray<A>(_:)(v33, v45, v14, v34);
    v14 = v35;
LABEL_33:
    swift_unknownObjectRelease();
LABEL_34:
    v38 = v11 - v10;
    if (__OFSUB__(v11, v10))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v7 = v11;
    if (v38 >= 0x20)
    {
      v7 = v10 + 32;
      if (__OFADD__(v10, 32))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        swift_unknownObjectRelease_n();
LABEL_47:
        specialized _copyCollectionToContiguousArray<A>(_:)(v33, v12, v10, v9 | (2 * v7));
        v9 = v39;
        goto LABEL_54;
      }
    }

    if (v7 < v10)
    {
      goto LABEL_68;
    }

    if (v11 < v7)
    {
      goto LABEL_69;
    }

    if (v7 < 0)
    {
      goto LABEL_70;
    }

    if (v38 >= 0x20)
    {
      if (__OFADD__(v10, 32))
      {
        goto LABEL_80;
      }

      if (v11 < (v10 + 32))
      {
        goto LABEL_71;
      }

      v11 = v10 + 32;
    }

    if (v11 < v10)
    {
      goto LABEL_72;
    }

    if (!v9)
    {
      swift_unknownObjectRetain();
      goto LABEL_47;
    }

    v11 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      swift_unknownObjectRelease();
      v40 = MEMORY[0x277D84F90];
    }

    v41 = *(v40 + 16);

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_81;
    }

    if (v41 != v7 - v10)
    {
      goto LABEL_82;
    }

    v9 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v9)
    {
      goto LABEL_55;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_54:
    swift_unknownObjectRelease();
LABEL_55:
    result = swift_unknownObjectRelease();
    if ((v44 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

    if (v44 <= 0xFF)
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v33 = v7;
    swift_unknownObjectRelease_n();
    v32 = v42;
  }

  *v43 = v46;
  *(v43 + 8) = v14;
  *(v43 + 16) = v9;
  *(v43 + 24) = v44;
  return result;
}

uint64_t _s4VDAF16PINEPrepareStateV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    return swift_willThrow();
  }

  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  if ((a5 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_59;
  }

  v15 = 8 * a5;
  v9 = 8 * a5 + a4;
  if (__OFADD__(8 * a5, a4))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v14 != v9)
  {
    _StringGuts.grow(_:)(24);

    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v29);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v30 = 0xD000000000000039;
    v30[1] = 0x8000000270C51B20;
    return swift_willThrow();
  }

  v43 = a7;
  v44 = a3;
  v46 = v8;
  v16 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v17 = (2 * v16[2]) | 1;
  v18 = specialized Collection.prefix(_:)(v15, v16, v16 + 4, 0, v17);
  v12 = v19;
  v9 = v20;
  v22 = v21;
  v7 = specialized Collection.dropFirst(_:)(v15, v16, v16 + 4, 0, v17);
  v45 = v23;
  v14 = v24;
  v10 = v25;

  v26 = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_s10ArraySliceVyAFGTt0g5(v18, v12, v9, v22);
  if (v8)
  {
    return swift_unknownObjectRelease();
  }

  v11 = v10 >> 1;
  v31 = (v10 >> 1) - v14;
  if (__OFSUB__(v10 >> 1, v14))
  {
    goto LABEL_60;
  }

  v32 = v10;
  v12 = v10 >> 1;
  v33 = v7;
  if (v31 >= 0x20)
  {
    v12 = v14 + 32;
    if (__OFADD__(v14, 32))
    {
      goto LABEL_75;
    }
  }

  if (v12 < v14)
  {
    goto LABEL_61;
  }

  if (v11 < v14)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v11 < v12)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v12 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v10 >>= 1;
  if (v31 >= 0x20)
  {
    v10 = v14 + 32;
    if (__OFADD__(v14, 32))
    {
      goto LABEL_76;
    }

    if (v11 < v10)
    {
      goto LABEL_65;
    }
  }

  if (v10 < v14)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v46 = v26;
  v9 = v32 & 1;
  if (v32)
  {
    v42 = v32;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
      swift_unknownObjectRelease();
      v36 = MEMORY[0x277D84F90];
    }

    v37 = *(v36 + 16);

    if (__OFSUB__(v12, v14))
    {
      goto LABEL_77;
    }

    if (v37 != v12 - v14)
    {
      goto LABEL_78;
    }

    v33 = v7;
    v14 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v12 = v45;
    if (v14)
    {
      goto LABEL_34;
    }

    v14 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    v34 = v32 & 1 | (2 * v12);
    v12 = v45;
    specialized _copyCollectionToContiguousArray<A>(_:)(v33, v45, v14, v34);
    v14 = v35;
LABEL_33:
    swift_unknownObjectRelease();
LABEL_34:
    v38 = v11 - v10;
    if (__OFSUB__(v11, v10))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v7 = v11;
    if (v38 >= 0x20)
    {
      v7 = v10 + 32;
      if (__OFADD__(v10, 32))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        swift_unknownObjectRelease_n();
LABEL_47:
        specialized _copyCollectionToContiguousArray<A>(_:)(v33, v12, v10, v9 | (2 * v7));
        v9 = v39;
        goto LABEL_54;
      }
    }

    if (v7 < v10)
    {
      goto LABEL_68;
    }

    if (v11 < v7)
    {
      goto LABEL_69;
    }

    if (v7 < 0)
    {
      goto LABEL_70;
    }

    if (v38 >= 0x20)
    {
      if (__OFADD__(v10, 32))
      {
        goto LABEL_80;
      }

      if (v11 < (v10 + 32))
      {
        goto LABEL_71;
      }

      v11 = v10 + 32;
    }

    if (v11 < v10)
    {
      goto LABEL_72;
    }

    if (!v9)
    {
      swift_unknownObjectRetain();
      goto LABEL_47;
    }

    v11 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      swift_unknownObjectRelease();
      v40 = MEMORY[0x277D84F90];
    }

    v41 = *(v40 + 16);

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_81;
    }

    if (v41 != v7 - v10)
    {
      goto LABEL_82;
    }

    v9 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v9)
    {
      goto LABEL_55;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_54:
    swift_unknownObjectRelease();
LABEL_55:
    result = swift_unknownObjectRelease();
    if ((v44 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

    if (v44 <= 0xFF)
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v33 = v7;
    swift_unknownObjectRelease_n();
    v32 = v42;
  }

  *v43 = v46;
  *(v43 + 8) = v14;
  *(v43 + 16) = v9;
  *(v43 + 24) = v44;
  return result;
}

uint64_t specialized AggregateShare.encode<A>(into:)(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    do
    {
      v4 = *v3++;
      v5 = (0xCFFE47FFFEAFFFFFLL * v4 * 0xFFFEB00001uLL) >> 64;
      if (__CFADD__(-v4, v4))
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = v5;
      }

      if (v6 >= 0xFFFEB00001)
      {
        v6 = 0;
      }

      v9 = v6;
      result = specialized Array.append<A>(contentsOf:)(0, 5uLL, &v9, &v10);
      --v2;
    }

    while (v2);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v4 = (0xFFFFFFFEFFFFFFFFLL * v6 * 0xFFFFFFFF00000001) >> 64;
      if (__CFADD__(-v6, v6))
      {
        if (v4 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          ++v4;
        }

        else
        {
          v4 += 0x100000000;
        }
      }

      v8 = v4;
      result = specialized Array.append<A>(contentsOf:)(0, 8uLL, &v8, &v9);
      --v2;
    }

    while (v2);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return specialized Collection<>.encode<A>(into:)(a1, a2);
}

uint64_t specialized WraparoundJointRandomness.init(parts:)(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v7 = v5;
  v8 = *v5;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 16) = a1;
  v9 = v8;
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](a2, a3, a4);

  v12 = static JointRandomness.jointRandSeed(parts:)(v11, v9, v10);

  *(v7 + 24) = v12;

  v13 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(7u, a5);
  v14 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v12, v13, MEMORY[0x277D84F90]);

  *(v7 + 32) = v14;
  return v7;
}

void *_s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_s10ArraySliceVyALGTt1g5(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a6 == -1)
  {
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    v11 = swift_allocError();
    *v15 = 0;
    v15[1] = 0;
LABEL_19:
    swift_willThrow();
    return v11;
  }

  v11 = a5;
  v12 = (a4 >> 1) - a3;
  v13 = __OFSUB__(a4 >> 1, a3);
  if (a6)
  {
    if (!v13)
    {
      if (v12 == a5)
      {
        if ((a4 & 1) == 0)
        {
LABEL_9:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v11 = v14;
LABEL_26:
          swift_unknownObjectRelease();
          return v11;
        }

        v8 = a2;
        v9 = a3;
        v10 = a4;
        v21 = a1;
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v6 = v21;
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = MEMORY[0x277D84F90];
        }

        v23 = *(v22 + 16);

        if (v23 == v11)
        {
          v11 = swift_dynamicCastClass();
          if (!v11)
          {
            swift_unknownObjectRelease();
            v11 = MEMORY[0x277D84F90];
          }

          goto LABEL_26;
        }

LABEL_31:
        swift_unknownObjectRelease();
        a1 = v6;
        a4 = v10;
        a3 = v9;
        a2 = v8;
        goto LABEL_9;
      }

      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EC0);
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((a5 * 5) >> 64 != (5 * a5) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v12 != 5 * a5)
  {
    _StringGuts.grow(_:)(56);
    MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EF0);
    swift_unknownObjectRelease();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
LABEL_18:
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](0x65707865203D2120, 0xED00003D64657463);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    v11 = swift_allocError();
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    goto LABEL_19;
  }

  v16 = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_s10ArraySliceVyAFGTt0g5(a1, a2, a3, a4);
  if (!v7)
  {
    return v16;
  }

  return v11;
}

char *_s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyALGTt1g5(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a6 == -1)
  {
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    v11 = swift_allocError();
    *v15 = 0;
    v15[1] = 0;
LABEL_19:
    swift_willThrow();
    return v11;
  }

  v11 = a5;
  v12 = (a4 >> 1) - a3;
  v13 = __OFSUB__(a4 >> 1, a3);
  if (a6)
  {
    if (!v13)
    {
      if (v12 == a5)
      {
        if ((a4 & 1) == 0)
        {
LABEL_9:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v11 = v14;
LABEL_26:
          swift_unknownObjectRelease();
          return v11;
        }

        v8 = a2;
        v9 = a3;
        v10 = a4;
        v21 = a1;
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v6 = v21;
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = MEMORY[0x277D84F90];
        }

        v23 = *(v22 + 16);

        if (v23 == v11)
        {
          v11 = swift_dynamicCastClass();
          if (!v11)
          {
            swift_unknownObjectRelease();
            v11 = MEMORY[0x277D84F90];
          }

          goto LABEL_26;
        }

LABEL_31:
        swift_unknownObjectRelease();
        a1 = v6;
        a4 = v10;
        a3 = v9;
        a2 = v8;
        goto LABEL_9;
      }

      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EC0);
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((a5 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v12 != 4 * a5)
  {
    _StringGuts.grow(_:)(56);
    MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EF0);
    swift_unknownObjectRelease();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
LABEL_18:
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](0x65707865203D2120, 0xED00003D64657463);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    v11 = swift_allocError();
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    goto LABEL_19;
  }

  v16 = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_s10ArraySliceVyAFGTt0g5(a1, a2, a3, a4);
  if (!v7)
  {
    return v16;
  }

  return v11;
}

void *_s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyALGTt1g5(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a6 == -1)
  {
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    v11 = swift_allocError();
    *v15 = 0;
    v15[1] = 0;
LABEL_19:
    swift_willThrow();
    return v11;
  }

  v11 = a5;
  v12 = (a4 >> 1) - a3;
  v13 = __OFSUB__(a4 >> 1, a3);
  if (a6)
  {
    if (!v13)
    {
      if (v12 == a5)
      {
        if ((a4 & 1) == 0)
        {
LABEL_9:
          specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
          v11 = v14;
LABEL_26:
          swift_unknownObjectRelease();
          return v11;
        }

        v8 = a2;
        v9 = a3;
        v10 = a4;
        v21 = a1;
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v6 = v21;
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = MEMORY[0x277D84F90];
        }

        v23 = *(v22 + 16);

        if (v23 == v11)
        {
          v11 = swift_dynamicCastClass();
          if (!v11)
          {
            swift_unknownObjectRelease();
            v11 = MEMORY[0x277D84F90];
          }

          goto LABEL_26;
        }

LABEL_31:
        swift_unknownObjectRelease();
        a1 = v6;
        a4 = v10;
        a3 = v9;
        a2 = v8;
        goto LABEL_9;
      }

      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EC0);
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((a5 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v12 != 8 * a5)
  {
    _StringGuts.grow(_:)(56);
    MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EF0);
    swift_unknownObjectRelease();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
LABEL_18:
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](0x65707865203D2120, 0xED00003D64657463);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    v11 = swift_allocError();
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    goto LABEL_19;
  }

  v16 = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_s10ArraySliceVyAFGTt0g5(a1, a2, a3, a4);
  if (!v7)
  {
    return v16;
  }

  return v11;
}

void specialized Share.encode<A>(into:)(uint64_t a1, uint64_t a2, char a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {

    specialized Array.append<A>(contentsOf:)(v3);
  }

  else
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = (a2 + 32);
      do
      {
        v6 = *v5++;
        v7 = (0xCFFE47FFFEAFFFFFLL * v6 * 0xFFFEB00001uLL) >> 64;
        if (__CFADD__(-v6, v6))
        {
          v8 = v7 + 1;
        }

        else
        {
          v8 = v7;
        }

        if (v8 >= 0xFFFEB00001)
        {
          v8 = 0;
        }

        v10 = v8;
        specialized Array.append<A>(contentsOf:)(0, 5uLL, &v10, &v11);
        --v4;
      }

      while (v4);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

{
  v10 = *MEMORY[0x277D85DE8];
  if (a3)
  {

    specialized Array.append<A>(contentsOf:)(v3);
  }

  else
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = (a2 + 32);
      do
      {
        v7 = *v5++;
        v6 = (0xFFFFFFFEFFFFFFFFLL * v7 * 0xFFFFFFFF00000001) >> 64;
        if (__CFADD__(-v7, v7))
        {
          if (v6 <= 0xFFFFFFFEFFFFFFFFLL)
          {
            ++v6;
          }

          else
          {
            v6 += 0x100000000;
          }
        }

        v9 = v6;
        specialized Array.append<A>(contentsOf:)(0, 8uLL, &v9, &v10);
        --v4;
      }

      while (v4);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t _s4VDAF14PINEInputShareV18DecodableParameterV4vdaf12aggregatorIDAEyxq__GAA4PINEVyxqd__q_G_SitKcSlRd__SB7ElementRpd__lufCAA7Field32V_AA19XofHmacSha256Aes128CSRySfGTt2B5@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  if (*result <= a2)
  {
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    *(v11 + 16) = 0;
    swift_willThrow();
    return outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v5, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMR);
  }

  if (a2)
  {
    result = outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(result, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMR);
    v6 = 32;
    v7 = 32;
LABEL_10:
    *a3 = v7;
    *(a3 + 8) = a2 != 0;
    *(a3 + 16) = v6;
    *(a3 + 24) = a2 != 0;
    return result;
  }

  v34 = *(result + 104);
  v35 = *(result + 120);
  v36 = *(result + 136);
  v37 = *(result + 152);
  v30 = *(result + 40);
  v31 = *(result + 56);
  v32 = *(result + 72);
  v33 = *(result + 88);
  v12 = *(result + 8);
  v29 = *(result + 24);
  v7 = *(&v32 + 1) - v36;
  if (__OFSUB__(*(&v32 + 1), v36))
  {
    goto LABEL_12;
  }

  v13 = *(result + 320);
  v25 = *(result + 256);
  v26 = *(result + 272);
  v27 = *(result + 288);
  v28 = *(result + 304);
  v21 = *(result + 192);
  v22 = *(result + 208);
  v23 = *(result + 224);
  v24 = *(result + 240);
  v19 = *(result + 160);
  v20 = *(result + 176);
  result = specialized FullyLinearProof.proofLength.getter();
  v14 = v13 * result;
  if ((v13 * result) >> 64 != (v13 * result) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = *(v5 + 312);
  v16 = specialized FullyLinearProof.proofLength.getter();
  result = outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v5, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMd, &_s4VDAF4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGMR);
  v17 = v15 * v16;
  if ((v15 * v16) >> 64 != (v15 * v16) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = __OFADD__(v14, v17);
  v6 = v14 + v17;
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s4VDAF14PINEInputShareV18DecodableParameterV4vdaf12aggregatorIDAEyxq__GAA4PINEVyxqd__q_G_SitKcSlRd__SB7ElementRpd__lufCAA7Field40V_AA19XofHmacSha256Aes128CSRySfGTt2B5Tm@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  if (*result <= a2)
  {
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    swift_willThrow();
    return outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v9, a3, a4);
  }

  if (a2)
  {
    result = outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(result, a3, a4);
    v10 = 32;
    v11 = 32;
LABEL_10:
    *a5 = v11;
    *(a5 + 8) = a2 != 0;
    *(a5 + 16) = v10;
    *(a5 + 24) = a2 != 0;
    return result;
  }

  v38 = *(result + 104);
  v39 = *(result + 120);
  v40 = *(result + 136);
  v41 = *(result + 152);
  v34 = *(result + 40);
  v35 = *(result + 56);
  v36 = *(result + 72);
  v37 = *(result + 88);
  v16 = *(result + 8);
  v33 = *(result + 24);
  if (__OFSUB__(*(&v36 + 1), v40))
  {
    goto LABEL_12;
  }

  v17 = *(result + 320);
  v29 = *(result + 256);
  v30 = *(result + 272);
  v31 = *(result + 288);
  v32 = *(result + 304);
  v25 = *(result + 192);
  v26 = *(result + 208);
  v27 = *(result + 224);
  v28 = *(result + 240);
  v23 = *(result + 160);
  v24 = *(result + 176);
  result = specialized FullyLinearProof.proofLength.getter();
  v18 = v17 * result;
  if ((v17 * result) >> 64 != (v17 * result) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(v9 + 312);
  v20 = specialized FullyLinearProof.proofLength.getter();
  result = outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v9, a3, a4);
  v21 = v19 * v20;
  if ((v19 * v20) >> 64 != (v19 * v20) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = __OFADD__(v18, v21);
  v10 = v18 + v21;
  v11 = *(&v36 + 1) - v40;
  if (!v22)
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s4VDAF14PINEInputShareV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = a4;
  if (a4 == 0xFF)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    return swift_willThrow();
  }

  v14 = a5;
  v15 = a3;
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = a3;
  if ((a4 & 1) == 0)
  {
    v17 = 5 * a3;
    if ((a3 * 5) >> 64 != (5 * a3) >> 63)
    {
      goto LABEL_72;
    }
  }

  v18 = a5;
  if ((a6 & 1) == 0)
  {
    v18 = 5 * a5;
    if ((a5 * 5) >> 64 != (5 * a5) >> 63)
    {
      goto LABEL_73;
    }
  }

  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_71;
  }

  v19 = __OFADD__(v20, 64);
  v21 = v20 + 64;
  if (v19)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v16 != v21)
  {
    v9 = a6;
    v77 = 0;
    v78 = 0xE000000000000000;
    v7 = &v77;
    _StringGuts.grow(_:)(24);

    v77 = 0xD000000000000037;
    v78 = 0x8000000270C52310;
    if ((v12 & 1) == 0)
    {
      v37 = (v15 * 5) >> 64;
      v15 *= 5;
      if (v37 != v15 >> 63)
      {
        goto LABEL_77;
      }
    }

    if ((v9 & 1) == 0)
    {
      v38 = (v14 * 5) >> 64;
      v14 *= 5;
      if (v38 != v14 >> 63)
      {
        goto LABEL_78;
      }
    }

    v39 = v15 + v14;
    if (!__OFADD__(v15, v14))
    {
      v19 = __OFADD__(v39, 64);
      v40 = v39 + 64;
      if (!v19)
      {
        v79 = v40;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v41);

        MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
        v79 = v16;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v42);

        v43 = v77;
        v44 = v78;
        lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
        swift_allocError();
        *v45 = v43;
        v45[1] = v44;
        return swift_willThrow();
      }

      goto LABEL_75;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  LODWORD(v73) = a6;
  v75 = v8;
  v70 = a7;
  v22 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v9 = v22;
  v10 = v15;
  if ((v12 & 1) == 0)
  {
    v10 = 5 * v15;
    if ((v15 * 5) >> 64 != (5 * v15) >> 63)
    {
      goto LABEL_76;
    }
  }

  v23 = (2 * v22[2]) | 1;
  v24 = specialized Collection.prefix(_:)(v10, v22, v22 + 4, 0, v23);
  v26 = v25;
  v28 = v27;
  v74 = v29;
  v10 = specialized Collection.dropFirst(_:)(v10, v9, v9 + 32, 0, v23);
  v71 = v31;
  v72 = v30;
  v33 = v32;

  v34 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_s10ArraySliceVyALGTt1g5(v24, v26, v28, v74, v15, v12 & 1);
  if (v8)
  {
    return swift_unknownObjectRelease();
  }

  v9 = v33;
  v7 = v71;
  v11 = v72;
  v68 = v35;
  v69 = v34;
  v12 = v14;
  if ((v73 & 1) == 0)
  {
    v12 = 5 * v14;
    if ((v14 * 5) >> 64 != (5 * v14) >> 63)
    {
      goto LABEL_79;
    }
  }

  v46 = specialized Collection.prefix(_:)(v12, v10, v72, v71, v9);
  v74 = v48;
  v76 = v47;
  v50 = v49;
  v11 = specialized Collection.dropFirst(_:)(v12, v10, v72, v71, v9);
  v9 = v51;
  v7 = v52;
  v12 = v53;
  swift_unknownObjectRetain();
  v54 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field40V_s10ArraySliceVyALGTt1g5(v46, v76, v74, v50, v14, v73 & 1);
  v75 = v9;
  v10 = v12 >> 1;
  v56 = (v12 >> 1) - v7;
  if (__OFSUB__(v12 >> 1, v7))
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v57 = v7;
  v58 = v12;
  v7 = v12 >> 1;
  v12 = v11;
  if (v56 >= 0x20)
  {
    v7 = v57 + 32;
    if (__OFADD__(v57, 32))
    {
      goto LABEL_93;
    }
  }

  if (v7 < v57)
  {
    goto LABEL_81;
  }

  if (v10 < v57)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v10 < v7)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v7 < 0)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v14 = v10;
  if (v56 >= 0x20)
  {
    v14 = v57 + 32;
    if (__OFADD__(v57, 32))
    {
      goto LABEL_94;
    }

    if (v10 < v14)
    {
      goto LABEL_85;
    }
  }

  if (v14 < v57)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  LOBYTE(v74) = v55;
  v73 = v54;
  v9 = v58 & 1;
  if (v58)
  {
    LOBYTE(v72) = v58;
    v11 = v57;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v61 = swift_dynamicCastClass();
    if (!v61)
    {
      swift_unknownObjectRelease();
      v61 = MEMORY[0x277D84F90];
    }

    v62 = *(v61 + 16);

    if (__OFSUB__(v7, v57))
    {
      goto LABEL_95;
    }

    if (v62 != v7 - v57)
    {
      goto LABEL_96;
    }

    v60 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v60)
    {
      goto LABEL_48;
    }

    v60 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v12, v75, v57, v58 & 1 | (2 * v7));
    v60 = v59;
LABEL_47:
    swift_unknownObjectRelease();
LABEL_48:
    v63 = v10 - v14;
    if (__OFSUB__(v10, v14))
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v7 = v10;
    if (v63 >= 0x20)
    {
      v7 = v14 + 32;
      if (__OFADD__(v14, 32))
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        swift_unknownObjectRelease_n();
LABEL_61:
        specialized _copyCollectionToContiguousArray<A>(_:)(v12, v75, v14, v9 | (2 * v7));
        v65 = v64;
        goto LABEL_68;
      }
    }

    if (v7 < v14)
    {
      goto LABEL_88;
    }

    if (v10 < v7)
    {
      goto LABEL_89;
    }

    if (v7 < 0)
    {
      goto LABEL_90;
    }

    if (v63 >= 0x20)
    {
      if (__OFADD__(v14, 32))
      {
        goto LABEL_98;
      }

      if (v10 < v14 + 32)
      {
        goto LABEL_91;
      }

      v10 = v14 + 32;
    }

    if (v10 >= v14)
    {
      break;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    swift_unknownObjectRelease_n();
    v57 = v11;
    v58 = v72;
  }

  if (!v9)
  {
    swift_unknownObjectRetain();
    goto LABEL_61;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v66 = swift_dynamicCastClass();
  if (!v66)
  {
    swift_unknownObjectRelease();
    v66 = MEMORY[0x277D84F90];
  }

  v67 = *(v66 + 16);

  if (__OFSUB__(v7, v14))
  {
    goto LABEL_99;
  }

  if (v67 != v7 - v14)
  {
    goto LABEL_100;
  }

  v65 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v65)
  {
    goto LABEL_69;
  }

  v65 = MEMORY[0x277D84F90];
LABEL_68:
  swift_unknownObjectRelease();
LABEL_69:
  result = swift_unknownObjectRelease();
  *v70 = v69;
  *(v70 + 8) = v68 & 1;
  *(v70 + 16) = v73;
  *(v70 + 24) = v74 & 1;
  *(v70 + 32) = v60;
  *(v70 + 40) = v65;
  return result;
}

uint64_t _s4VDAF14PINEInputShareV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a4;
  if (a4 == 0xFF)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v12 = 0;
    v12[1] = 0;
    return swift_willThrow();
  }

  v13 = a6;
  v14 = a5;
  v15 = a3;
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = a3;
  if ((a4 & 1) == 0)
  {
    if ((a3 - 0x2000000000000000) >> 62 != 3)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v17 = 4 * a3;
  }

  v18 = a5;
  if ((a6 & 1) == 0)
  {
    if ((a5 - 0x2000000000000000) >> 62 != 3)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v18 = 4 * a5;
  }

  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_77;
  }

  v19 = __OFADD__(v20, 64);
  v21 = v20 + 64;
  if (v19)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v16 != v21)
  {
    v9 = 0xE000000000000000;
    v74 = 0;
    v75 = 0xE000000000000000;
    v7 = &v74;
    _StringGuts.grow(_:)(24);

    v74 = 0xD000000000000037;
    v75 = 0x8000000270C52220;
    if ((v11 & 1) == 0)
    {
      if ((v15 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v15 *= 4;
    }

    if ((v13 & 1) == 0)
    {
      if ((v14 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v14 *= 4;
    }

    v36 = v15 + v14;
    if (!__OFADD__(v15, v14))
    {
      v19 = __OFADD__(v36, 64);
      v37 = v36 + 64;
      if (!v19)
      {
        v76 = v37;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v38);

        MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
        v76 = v16;
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v39);

        v40 = v74;
        v41 = v75;
        lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
        swift_allocError();
        *v42 = v40;
        v42[1] = v41;
        return swift_willThrow();
      }

      goto LABEL_81;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v72 = v8;
  v67 = a7;
  v22 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v9 = v22;
  v10 = v15;
  if (v11)
  {
    goto LABEL_18;
  }

  if ((v15 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_82;
  }

  v10 = 4 * v15;
LABEL_18:
  LODWORD(v70) = v13;
  v23 = (2 * v22[2]) | 1;
  v24 = specialized Collection.prefix(_:)(v10, v22, v22 + 4, 0, v23);
  v26 = v25;
  v28 = v27;
  v71 = v29;
  v10 = specialized Collection.dropFirst(_:)(v10, v9, v9 + 32, 0, v23);
  v68 = v31;
  v69 = v30;
  v13 = v32;

  v33 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyALGTt1g5(v24, v26, v28, v71, v15, v11 & 1);
  if (v8)
  {
    return swift_unknownObjectRelease();
  }

  v11 = v14;
  v7 = v68;
  v9 = v13;
  if ((v70 & 1) == 0)
  {
    if ((v14 - 0x2000000000000000) >> 62 == 3)
    {
      v11 = 4 * v14;
      goto LABEL_33;
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

LABEL_33:
  v65 = v34;
  v66 = v33;
  v43 = specialized Collection.prefix(_:)(v11, v10, v69, v68, v13);
  v71 = v45;
  v73 = v44;
  v47 = v46;
  v13 = specialized Collection.dropFirst(_:)(v11, v10, v69, v68, v13);
  v9 = v48;
  v7 = v49;
  v11 = v50;
  swift_unknownObjectRetain();
  v51 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyALGTt1g5(v43, v73, v71, v47, v14, v70 & 1);
  v72 = v9;
  v10 = v11 >> 1;
  v53 = (v11 >> 1) - v7;
  if (__OFSUB__(v11 >> 1, v7))
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v54 = v7;
  v55 = v11;
  v7 = v11 >> 1;
  v11 = v13;
  if (v53 >= 0x20)
  {
    v7 = v54 + 32;
    if (__OFADD__(v54, 32))
    {
      goto LABEL_99;
    }
  }

  if (v7 < v54)
  {
    goto LABEL_87;
  }

  if (v10 < v54)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v10 < v7)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v7 < 0)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v14 = v10;
  if (v53 >= 0x20)
  {
    v14 = v54 + 32;
    if (__OFADD__(v54, 32))
    {
      goto LABEL_100;
    }

    if (v10 < v14)
    {
      goto LABEL_91;
    }
  }

  if (v14 < v54)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  LOBYTE(v71) = v52;
  v70 = v51;
  v9 = v55 & 1;
  if (v55)
  {
    LOBYTE(v69) = v55;
    v13 = v54;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v58 = swift_dynamicCastClass();
    if (!v58)
    {
      swift_unknownObjectRelease();
      v58 = MEMORY[0x277D84F90];
    }

    v59 = *(v58 + 16);

    if (__OFSUB__(v7, v54))
    {
      goto LABEL_101;
    }

    if (v59 != v7 - v54)
    {
      goto LABEL_102;
    }

    v57 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v57)
    {
      goto LABEL_54;
    }

    v57 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v11, v72, v54, v55 & 1 | (2 * v7));
    v57 = v56;
LABEL_53:
    swift_unknownObjectRelease();
LABEL_54:
    v60 = v10 - v14;
    if (__OFSUB__(v10, v14))
    {
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v7 = v10;
    if (v60 >= 0x20)
    {
      v7 = v14 + 32;
      if (__OFADD__(v14, 32))
      {
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        swift_unknownObjectRelease_n();
LABEL_67:
        specialized _copyCollectionToContiguousArray<A>(_:)(v11, v72, v14, v9 | (2 * v7));
        v62 = v61;
        goto LABEL_74;
      }
    }

    if (v7 < v14)
    {
      goto LABEL_94;
    }

    if (v10 < v7)
    {
      goto LABEL_95;
    }

    if (v7 < 0)
    {
      goto LABEL_96;
    }

    if (v60 >= 0x20)
    {
      if (__OFADD__(v14, 32))
      {
        goto LABEL_104;
      }

      if (v10 < v14 + 32)
      {
        goto LABEL_97;
      }

      v10 = v14 + 32;
    }

    if (v10 >= v14)
    {
      break;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    swift_unknownObjectRelease_n();
    v54 = v13;
    v55 = v69;
  }

  if (!v9)
  {
    swift_unknownObjectRetain();
    goto LABEL_67;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v63 = swift_dynamicCastClass();
  if (!v63)
  {
    swift_unknownObjectRelease();
    v63 = MEMORY[0x277D84F90];
  }

  v64 = *(v63 + 16);

  if (__OFSUB__(v7, v14))
  {
    goto LABEL_105;
  }

  if (v64 != v7 - v14)
  {
    goto LABEL_106;
  }

  v62 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v62)
  {
    goto LABEL_75;
  }

  v62 = MEMORY[0x277D84F90];
LABEL_74:
  swift_unknownObjectRelease();
LABEL_75:
  result = swift_unknownObjectRelease();
  *v67 = v66;
  *(v67 + 8) = v65 & 1;
  *(v67 + 16) = v70;
  *(v67 + 24) = v71 & 1;
  *(v67 + 32) = v57;
  *(v67 + 40) = v62;
  return result;
}

uint64_t _s4VDAF14PINEInputShareV4from9parameterACyxq_Gqd___AC18DecodableParameterVyxq__GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a4;
  if (a4 == 0xFF)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v12 = 0;
    v12[1] = 0;
    return swift_willThrow();
  }

  v13 = a6;
  v14 = a5;
  v15 = a3;
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = a3;
  if ((a4 & 1) == 0)
  {
    if ((a3 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v17 = 8 * a3;
  }

  v18 = a5;
  if ((a6 & 1) == 0)
  {
    if ((a5 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v18 = 8 * a5;
  }

  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_77;
  }

  v19 = __OFADD__(v20, 64);
  v21 = v20 + 64;
  if (v19)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v16 != v21)
  {
    v74 = 0;
    v75 = 0xE000000000000000;
    v7 = &v74;
    _StringGuts.grow(_:)(24);

    v74 = 0xD000000000000037;
    v75 = 0x8000000270C51E80;
    if ((v11 & 1) == 0)
    {
      if ((v15 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v15 *= 8;
    }

    if ((v13 & 1) == 0)
    {
      if ((v14 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v14 *= 8;
    }

    v36 = v15 + v14;
    if (!__OFADD__(v15, v14))
    {
      v19 = __OFADD__(v36, 64);
      v37 = v36 + 64;
      if (!v19)
      {
        v76 = v37;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v38);

        MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
        v76 = v16;
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v39);

        v40 = v74;
        v41 = v75;
        lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
        swift_allocError();
        *v42 = v40;
        v42[1] = v41;
        return swift_willThrow();
      }

      goto LABEL_81;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v72 = v8;
  v67 = a7;
  v22 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v9 = v22;
  v10 = v15;
  if (v11)
  {
    goto LABEL_18;
  }

  if ((v15 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_82;
  }

  v10 = 8 * v15;
LABEL_18:
  LODWORD(v70) = v13;
  v23 = (2 * v22[2]) | 1;
  v24 = specialized Collection.prefix(_:)(v10, v22, v22 + 4, 0, v23);
  v26 = v25;
  v28 = v27;
  v71 = v29;
  v10 = specialized Collection.dropFirst(_:)(v10, v9, v9 + 32, 0, v23);
  v68 = v31;
  v69 = v30;
  v13 = v32;

  v33 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyALGTt1g5(v24, v26, v28, v71, v15, v11 & 1);
  if (v8)
  {
    return swift_unknownObjectRelease();
  }

  v11 = v14;
  v7 = v68;
  v9 = v13;
  if ((v70 & 1) == 0)
  {
    if ((v14 - 0x1000000000000000) >> 61 == 7)
    {
      v11 = 8 * v14;
      goto LABEL_33;
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

LABEL_33:
  v65 = v34;
  v66 = v33;
  v43 = specialized Collection.prefix(_:)(v11, v10, v69, v68, v13);
  v71 = v45;
  v73 = v44;
  v47 = v46;
  v13 = specialized Collection.dropFirst(_:)(v11, v10, v69, v68, v13);
  v9 = v48;
  v7 = v49;
  v11 = v50;
  swift_unknownObjectRetain();
  v51 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyALGTt1g5(v43, v73, v71, v47, v14, v70 & 1);
  v72 = v9;
  v10 = v11 >> 1;
  v53 = (v11 >> 1) - v7;
  if (__OFSUB__(v11 >> 1, v7))
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v54 = v7;
  v55 = v11;
  v7 = v11 >> 1;
  v11 = v13;
  if (v53 >= 0x20)
  {
    v7 = v54 + 32;
    if (__OFADD__(v54, 32))
    {
      goto LABEL_99;
    }
  }

  if (v7 < v54)
  {
    goto LABEL_87;
  }

  if (v10 < v54)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v10 < v7)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v7 < 0)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v14 = v10;
  if (v53 >= 0x20)
  {
    v14 = v54 + 32;
    if (__OFADD__(v54, 32))
    {
      goto LABEL_100;
    }

    if (v10 < v14)
    {
      goto LABEL_91;
    }
  }

  if (v14 < v54)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  LOBYTE(v71) = v52;
  v70 = v51;
  v9 = v55 & 1;
  if (v55)
  {
    LOBYTE(v69) = v55;
    v13 = v54;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v58 = swift_dynamicCastClass();
    if (!v58)
    {
      swift_unknownObjectRelease();
      v58 = MEMORY[0x277D84F90];
    }

    v59 = *(v58 + 16);

    if (__OFSUB__(v7, v54))
    {
      goto LABEL_101;
    }

    if (v59 != v7 - v54)
    {
      goto LABEL_102;
    }

    v57 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v57)
    {
      goto LABEL_54;
    }

    v57 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v11, v72, v54, v55 & 1 | (2 * v7));
    v57 = v56;
LABEL_53:
    swift_unknownObjectRelease();
LABEL_54:
    v60 = v10 - v14;
    if (__OFSUB__(v10, v14))
    {
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v7 = v10;
    if (v60 >= 0x20)
    {
      v7 = v14 + 32;
      if (__OFADD__(v14, 32))
      {
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        swift_unknownObjectRelease_n();
LABEL_67:
        specialized _copyCollectionToContiguousArray<A>(_:)(v11, v72, v14, v9 | (2 * v7));
        v62 = v61;
        goto LABEL_74;
      }
    }

    if (v7 < v14)
    {
      goto LABEL_94;
    }

    if (v10 < v7)
    {
      goto LABEL_95;
    }

    if (v7 < 0)
    {
      goto LABEL_96;
    }

    if (v60 >= 0x20)
    {
      if (__OFADD__(v14, 32))
      {
        goto LABEL_104;
      }

      if (v10 < v14 + 32)
      {
        goto LABEL_97;
      }

      v10 = v14 + 32;
    }

    if (v10 >= v14)
    {
      break;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    swift_unknownObjectRelease_n();
    v54 = v13;
    v55 = v69;
  }

  if (!v9)
  {
    swift_unknownObjectRetain();
    goto LABEL_67;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v63 = swift_dynamicCastClass();
  if (!v63)
  {
    swift_unknownObjectRelease();
    v63 = MEMORY[0x277D84F90];
  }

  v64 = *(v63 + 16);

  if (__OFSUB__(v7, v14))
  {
    goto LABEL_105;
  }

  if (v64 != v7 - v14)
  {
    goto LABEL_106;
  }

  v62 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v62)
  {
    goto LABEL_75;
  }

  v62 = MEMORY[0x277D84F90];
LABEL_74:
  swift_unknownObjectRelease();
LABEL_75:
  result = swift_unknownObjectRelease();
  *v67 = v66;
  *(v67 + 8) = v65 & 1;
  *(v67 + 16) = v70;
  *(v67 + 24) = v71 & 1;
  *(v67 + 32) = v57;
  *(v67 + 40) = v62;
  return result;
}
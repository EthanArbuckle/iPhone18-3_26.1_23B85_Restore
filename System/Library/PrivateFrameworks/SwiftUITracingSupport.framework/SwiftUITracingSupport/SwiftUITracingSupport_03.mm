uint64_t specialized UnsafeLongestCommonSubsequence.indexedSubsequence(_:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = result;
  v8 = HIDWORD(a2);
  v9 = *(a5 + 16);
  v10 = *(a6 + 16);
  v11 = a5 + 32;
  v12 = MEMORY[0x277D84F90];
  v13 = v9;
  v14 = v10;
LABEL_2:
  if (v10 < 1)
  {
    goto LABEL_26;
  }

  do
  {
    v15 = v10--;
    do
    {
      if (v13 <= 0)
      {
        goto LABEL_26;
      }

      v16 = v13 * a4;
      if ((v13 * a4) >> 64 != (v13 * a4) >> 63)
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      v17 = v16 + v15;
      if (__OFADD__(v16, v15))
      {
        goto LABEL_28;
      }

      if (v17 >= v8)
      {
        goto LABEL_29;
      }

      if (!v7)
      {
        goto LABEL_36;
      }

      v18 = __OFADD__(v16, v10);
      v19 = v16 + v10;
      if (v18)
      {
        goto LABEL_30;
      }

      if (v19 >= v8)
      {
        goto LABEL_31;
      }

      v20 = *(v7 + 8 * v17);
      if (v20 == *(v7 + 8 * v19))
      {
        v18 = __OFSUB__(v14--, 1);
        if (!v18)
        {
          goto LABEL_2;
        }

        __break(1u);
        goto LABEL_26;
      }

      v21 = --v13 * a4;
      if ((v13 * a4) >> 64 != (v13 * a4) >> 63)
      {
        goto LABEL_32;
      }

      v18 = __OFADD__(v21, v15);
      v22 = v21 + v15;
      if (v18)
      {
        goto LABEL_33;
      }

      if (v22 >= v8)
      {
        goto LABEL_34;
      }
    }

    while (v20 == *(v7 + 8 * v22));
    if (v13 + 1 > v9)
    {
      goto LABEL_35;
    }

    v26 = *(v11 + 4 * v13);
    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = v11;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
      v12 = result;
    }

    v24 = *(v12 + 16);
    v23 = *(v12 + 24);
    if (v24 >= v23 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 16) = v24 + 1;
    v25 = v12 + 24 * v24;
    *(v25 + 32) = v13;
    *(v25 + 40) = v26;
    *(v25 + 48) = v14;
    v11 = v27;
  }

  while (v10 >= 1);
LABEL_26:
  specialized MutableCollection<>.reverse()();
  return v12;
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      v4 = *v0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_14:
        v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      }

      v5 = v1 + 48;
      v6 = &v1[24 * v2 + 24];
      v7 = 1;
      do
      {
        if (v7 - 1 != v3)
        {
          v9 = *(v1 + 2);
          if (v7 - 1 >= v9)
          {
            __break(1u);
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }

          if (v3 >= v9)
          {
            goto LABEL_13;
          }

          v10 = *v5;
          v11 = *(v5 - 2);
          v12 = *(v5 - 2);
          v13 = *(v6 - 2);
          v14 = *v6;
          *(v5 - 2) = *(v6 - 2);
          *(v5 - 2) = v13;
          *v5 = v14;
          *(v6 - 2) = v12;
          *(v6 - 2) = v11;
          *v6 = v10;
        }

        --v3;
        v6 -= 24;
        v5 += 3;
      }

      while (v7++ < v3);
      *v0 = v1;
    }
  }
}

char *specialized static UnsafeLongestCommonSubsequence<>.inputData(from:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_slowAlloc();
  *v3 = MEMORY[0x277D84F90];
  v4 = *(a1 + 24);
  if (!*(v4 + 116))
  {
    goto LABEL_61;
  }

  v5 = *(v4 + 104);
  if (!v5)
  {
LABEL_67:
    __break(1u);
    while (1)
    {
LABEL_68:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_69:
      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v57 = v52;
      MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
      v52 = xmmword_26C32DAD0;
      v53 = 1;
      v54 = 0;
      v55 = 0;
      v56 = 512;
      v46 = Event.describe(state:)(&v52);
      MEMORY[0x26D69CDB0](v46);
    }
  }

  v6 = v3;
  v7 = *v5;
  os_unfair_lock_assert_owner(*v5);
  v8 = *&v7[2]._os_unfair_lock_opaque;
  v9 = *(v8 + 44);
  if (!v9)
  {
    v47 = MEMORY[0x277D84F90];
    goto LABEL_55;
  }

  v10 = 0;
  v11 = *(v8 + 32);
  v47 = MEMORY[0x277D84F90];
  v48 = *(v8 + 44);
  v49 = v11;
  do
  {
    if (v10 >= v9)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (!v11)
    {
      goto LABEL_62;
    }

    v12 = (v11 + (v10 << 7));
    v13 = v12[5];
    v61 = v12[4];
    v62 = v13;
    v14 = v12[7];
    v63 = v12[6];
    v64 = v14;
    v15 = v12[1];
    v58 = *v12;
    *v59 = v15;
    v16 = v12[3];
    *&v59[16] = v12[2];
    v60 = v16;
    v17 = __OFADD__(v10, 1);
    v18 = v10 + 1;
    if (v17)
    {
      goto LABEL_58;
    }

    v51 = v18;
    LOBYTE(v52) = v59[8];
    v19 = 256;
    if (!v59[9])
    {
      v19 = 0;
    }

    v20 = v19 | (*&v59[12] << 32);
    updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5(*(&v58 + 1), *v59, v20 | v59[8], *&v59[16]);
    if (*&v59[12] == updated)
    {
      LOBYTE(v52) = v59[8];
      v22 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5(*(&v58 + 1), *v59, v20 | v59[8], *&v59[16]);
      if (*&v59[12] == v22)
      {
        goto LABEL_69;
      }

      if (HIDWORD(v22) >= *&v59[16])
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if (v59[8])
      {
        goto LABEL_63;
      }

      if (!*(&v58 + 1))
      {
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v23 = *(*(&v58 + 1) + v22 + 8);
      v24 = v23;
    }

    else
    {
      if (HIDWORD(updated) >= *&v59[16])
      {
        goto LABEL_59;
      }

      if (v59[8])
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (!*(&v58 + 1))
      {
        goto LABEL_65;
      }

      v25 = *(&v58 + 1) + updated;
      v23 = *(v25 + 8);
      v24 = *(v25 + 16);
    }

    v26 = *(a2 + 16);
    for (i = (a2 + 40); v26; --v26)
    {
      v34 = *(i - 1);
      if (v34 < v24)
      {
        v35 = *i;
        if (v34 >= v23)
        {
          if (v35 >= v24)
          {
            v35 = v24;
LABEL_44:
            v36 = *v6;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v6 = v36;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
              *v6 = v36;
            }

            v39 = *(v36 + 2);
            v38 = *(v36 + 3);
            if (v39 >= v38 >> 1)
            {
              v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
              *v6 = v36;
            }

            *(v36 + 2) = v39 + 1;
            v40 = &v36[16 * v39];
            *(v40 + 4) = v34;
            *(v40 + 5) = v35;
            goto LABEL_32;
          }

          if (v35 >= v23)
          {
            goto LABEL_44;
          }
        }

        if (v23 < v34)
        {
          if (v23 < v35)
          {
            goto LABEL_68;
          }

          goto LABEL_32;
        }

        if (v35 >= v23)
        {
          v34 = v23;
          if (v24 >= v35)
          {
            goto LABEL_44;
          }

          v34 = v23;
          v32 = v23 >= v35;
          v35 = v24;
          if (!v32)
          {
            goto LABEL_44;
          }
        }
      }

LABEL_32:
      i += 2;
    }

    v28 = *(*v6 + 16);
    v11 = v49;
    if (!v28)
    {
      goto LABEL_28;
    }

    v29 = 0;
    v30 = (*v6 + 40);
    do
    {
      v31 = *(v30 - 1);
      v32 = *v30 >= v31;
      v33 = *v30 - v31;
      if (!v32)
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v32 = __CFADD__(v29, v33);
      v29 += v33;
      if (v32)
      {
        goto LABEL_56;
      }

      v30 += 2;
      --v28;
    }

    while (v28);
    if (v29)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
      }

      v42 = *(v47 + 2);
      v41 = *(v47 + 3);
      v10 = v51;
      if (v42 >= v41 >> 1)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v47);
        v10 = v51;
        v47 = v44;
      }

      v43 = v58;
      *(v47 + 2) = v42 + 1;
      *&v47[4 * v42 + 32] = v43;
      v9 = v48;
    }

    else
    {
LABEL_28:
      v9 = v48;
      v10 = v51;
    }
  }

  while (v10 != v9);
LABEL_55:
  outlined destroy of IntervalSet(v6);
  MEMORY[0x26D69EAB0](v6, -1, -1);
  return v47;
}

uint64_t specialized UnsafeLongestCommonSubsequence.subsequence.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized UnsafeLongestCommonSubsequence.count.getter(a1, a2, a3);
  v7 = *(a3 + 32);
  if (v7 == 255)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    while (1)
    {
      result = *a3;
      if (v7)
      {
        break;
      }

      v8 = specialized UnsafeLongestCommonSubsequence.indexedSubsequence(_:)(result, *(a3 + 8), *(a3 + 16), *(a3 + 24), a1, a2);
      v10 = *a3;
      v9 = *(a3 + 8);
      v11 = *(a3 + 16);
      v12 = *(a3 + 24);
      *a3 = v8;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v13 = *(a3 + 32);
      *(a3 + 32) = 1;
      outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work?(v10, v9, v11, v12, v13);
      result = specialized UnsafeLongestCommonSubsequence.count.getter(a1, a2, a3);
      v7 = *(a3 + 32);
      if (v7 == 255)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t specialized static DiffBox.lock<A>(baseline:candidate:comparison:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 24);
  v11 = *(v10 + 104);
  v12 = *(v10 + 116);
  v13 = *(a6 + 40);
  result = v13(a4, a6);
  if (v12 <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = *(v11 + 8 * result);
  result = os_unfair_lock_lock_with_options();
  if (a2 == a1)
  {
    return result;
  }

  v16 = *(a2 + 24);
  v17 = *(v16 + 104);
  v18 = *(v16 + 116);
  result = v13(a4, a6);
  if (v18 <= result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!v17)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v19 = *(v17 + 8 * result);
  return os_unfair_lock_lock_with_options();
}

void specialized static DiffBox.unlock<A>(baseline:candidate:comparison:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 24);
  v11 = *(v10 + 104);
  v12 = *(v10 + 116);
  v13 = *(a6 + 40);
  v14 = v13(a4, a6);
  if (v12 <= v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  os_unfair_lock_unlock(*(v11 + 8 * v14));
  if (a2 == a1)
  {
    return;
  }

  v15 = *(a2 + 24);
  v16 = *(v15 + 104);
  v17 = *(v15 + 116);
  v18 = v13(a4, a6);
  if (v17 <= v18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v16)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v19 = *(v16 + 8 * v18);

  os_unfair_lock_unlock(v19);
}

void specialized DiffBox.init(baseline:candidate:comparison:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a2;
  v30 = a4;
  v31 = a1;
  v32 = a3;
  v26 = *v4;
  v6 = *(v26 + 80);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](a1);
  v27 = &v26 - v8;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for OS_dispatch_queue();
  v33 = "omparison";
  v34 = v17;
  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v35 + 104))(v12, *MEMORY[0x277D85260], v36);
  v4[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = swift_slowAlloc();
  *v18 = 0;
  *(v18 + 4) = 0;
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(v18);
  if (*(v18 + 5))
  {
    __break(1u);
  }

  else
  {
    *(v18 + 5) = 1;
    os_unfair_lock_unlock(v18);
    v5[3] = v18;
    v19 = *(v26 + 88);
    v20 = v31;

    v21 = v29;

    v22 = v32;

    v23 = v30;

    specialized static DiffBox.lock<A>(baseline:candidate:comparison:)(v20, v22, v6, v6, v19, v19);

    v24 = v27;
    Comparison.init(baseTraceComparable:candidateTraceComparable:)(v20, v21, v22, v23, v6, v19, v27);
    v25 = specialized Atomic.init(initializedTo:)(v24);
    (*(v28 + 8))(v24, v6);
    v5[7] = v22;
    v5[8] = v23;
    v5[4] = v25;
    v5[5] = v20;
    v5[6] = v21;

    specialized static DiffBox.unlock<A>(baseline:candidate:comparison:)(v20, v22, v6, v6, v19, v19);
  }
}

uint64_t sub_26C18EC00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in DiffBox.run(completion:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return DiffBox._run(_:)(v1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C18EC84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = DiffBox.comparison.getter();
  *a2 = result;
  return result;
}

__n128 sub_26C18ECE4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26C18ECF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = DiffBox.baseline.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_26C18ED54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = DiffBox.candidate.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t TracepointAssertionPair.init(mode:idx:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t TracepointAssertionPair.hash(into:)()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  return MEMORY[0x26D69DBC0](v1);
}

Swift::Int TracepointAssertionPair.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  MEMORY[0x26D69DBC0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TracepointAssertionPair()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  MEMORY[0x26D69DBC0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TracepointAssertionPair()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  return MEMORY[0x26D69DBC0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TracepointAssertionPair()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  MEMORY[0x26D69DBC0](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TracepointAssertionPair and conformance TracepointAssertionPair()
{
  result = *&tracepointAssertion.is_nil;
  if (!*&tracepointAssertion.is_nil)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &tracepointAssertion.is_nil);
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t static Evolution.evolutionPair.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 8))(&v8);
  v6 = v8;
  result = (*(a2 + 24))(a1, a2);
  *a3 = v6;
  *(a3 + 4) = result;
  return result;
}

uint64_t static Evolution.code.getter()
{
  return 0xFFFFFFFFLL;
}

{
  return 0xFFFFFFFFLL;
}

unint64_t static Evolution.valueSize.getter(uint64_t a1)
{
  result = *(*(a1 - 8) + 64);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >> 16)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized static Evolution.abi(for:)()
{
  return v0;
}

{
  return v0;
}

{
  return v0;
}

{
  return v0;
}

{
  return v0;
}

{
  return v0;
}

{
  return v0;
}

{
  return v0;
}

{
  return v0;
}

{
  return v0;
}

{
  return v0;
}

{
  return v0;
}

uint64_t specialized static Evolution.abi(for:)(char a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  if (a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

{
  v3 = swift_conformsToProtocol2();
  result = 0;
  if (v3 && v1)
  {
    (*(v3 + 16))(&v9, v1, v3);
    v5 = a1 & 1;
    if (v9 == 1 && v5 == 0)
    {
      return 0;
    }

    else
    {
      v7 = v5 + 1;
      if (BYTE1(v9))
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      if (v8 < v7)
      {
        return 0;
      }

      else
      {
        return v1;
      }
    }
  }

  return result;
}

uint64_t static Evolution.abi(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = swift_conformsToProtocol2();
  result = 0;
  if (v3 && v1)
  {
    (*(v3 + 16))(&v5, v1, v3);
    if ((v2 & 1) != 0 || !v5)
    {
      if (v2 & ~BYTE1(v5))
      {
        return 0;
      }

      else
      {
        return v1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

Swift::Int Evolution_Kind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  return Hasher._finalize()();
}

void Evolution_Pair.hash(into:)()
{
  v1 = *(v0 + 1);
  MEMORY[0x26D69DBC0](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int Evolution_Pair.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Evolution_Pair()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Evolution_Pair()
{
  v1 = *(v0 + 1);
  MEMORY[0x26D69DBC0](*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Evolution_Pair()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t Evolution_Types.available(version:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v7 = *v2;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = *(v7 + 16);
  swift_bridgeObjectRetain_n();

  if (v9)
  {
    v10 = 0;
    v11 = v7 + 32;
    v12 = MEMORY[0x277D84F98];
    v36 = a2;
    while (1)
    {
      v13 = v10;
      while (1)
      {
        if (v13 >= *(v7 + 16))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v3 = *(v11 + 16 * v13 + 8);
        v37 = *(v11 + 16 * v13);
        v4 = *(v11 + 16 * v13);
        (*(v3 + 48))(v41, v4, v3);
        if (((v6 ^ 1) & v41[0]) != 1 && (v6 & ~BYTE1(v41[0]) & 1) == 0)
        {
          break;
        }

        if (v9 == ++v13)
        {
          a2 = v36;
          goto LABEL_24;
        }
      }

      v33 = *(v3 + 16);
      v33(v41, v4, v3);
      v35 = v12;
      if (v12[2])
      {
        specialized __RawDictionaryStorage.find<A>(_:)(LOBYTE(v41[0]) | (HIDWORD(v41[0]) << 32));
        if (v14)
        {
          break;
        }
      }

      v33(v41, v4, v3);
      v3 = LOBYTE(v41[0]);
      v15 = HIDWORD(v41[0]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v39 = v35;
      v33 = v15;
      v34 = v3;
      v4 = v3 | (v15 << 32);
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
      v19 = v35[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_26;
      }

      v3 = v18;
      if (v35[3] < v22)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
        if ((v3 & 1) != (v23 & 1))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = v39;
        if (v3)
        {
          goto LABEL_16;
        }

LABEL_18:
        v12[(v17 >> 6) + 8] |= 1 << v17;
        v24 = v12[6] + 8 * v17;
        *v24 = v34;
        *(v24 + 4) = v33;
        *(v12[7] + 16 * v17) = v37;
        v25 = v12[2];
        v21 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (!v21)
        {
          v12[2] = v26;
          goto LABEL_20;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v4 = v17;
      specialized _NativeDictionary.copy()();
      v17 = v4;
      v12 = v39;
      if ((v3 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_16:
      *(v12[7] + 16 * v17) = v37;
LABEL_20:
      v10 = v13 + 1;
      v27 = v9 - 1 == v13;
      a2 = v36;
      if (v27)
      {
        goto LABEL_24;
      }
    }

    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    MEMORY[0x26D69CDB0](0xD000000000000011, 0x800000026C33B670);
    v29 = _typeName(_:qualified:)();
    MEMORY[0x26D69CDB0](v29);

    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v33(&v39, v4, v3);
    LOBYTE(v40) = v39;
    HIDWORD(v40) = DWORD1(v39);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](8250, 0xE200000000000000);
    v33(&v40, v4, v3);
    v38 = 0u;
    if (v35[2])
    {
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v40 | (HIDWORD(v40) << 32));
      if (v31)
      {
        v38 = *(v35[7] + 16 * v30);
      }
    }

    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport9Evolution_pXpSgMd, &_s21SwiftUITracingSupport9Evolution_pXpSgMR);
    v32 = String.init<A>(describing:)();
    MEMORY[0x26D69CDB0](v32);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_24:

    *a2 = v7;
    a2[1] = partial apply for closure #1 in Evolution_Types.available(version:);
    a2[2] = v8;
  }

  return result;
}

uint64_t Evolution_Types.tracepoints(version:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  *&v21 = *v2;
  v22 = v4;
  result = Evolution_Types.available(version:)(&v22, v23);
  v6 = v23[0];
  v7 = *(v23[0] + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v23[1];
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v6 + 32 + 16 * v11);
        v21 = v19;
        result = v9(&v21);
        if (result)
        {
          v12 = v19;
          result = swift_conformsToProtocol2();
          if (result && v19 != 0)
          {
            break;
          }
        }

        if (v7 == ++v11)
        {
          goto LABEL_18;
        }
      }

      v20 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = a2;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = v20;
      if (v15 >= v14 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
        v10 = result;
        v16 = v20;
      }

      v8 = v11 + 1;
      *(v10 + 16) = v15 + 1;
      v17 = v10 + 16 * v15;
      *(v17 + 32) = v12;
      *(v17 + 40) = v16;
      a2 = v18;
    }

    while (v7 - 1 != v11);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_18:

  *a2 = v10;
  return result;
}

uint64_t Evolution_Types.attachments(version:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  *&v21 = *v2;
  v22 = v4;
  result = Evolution_Types.available(version:)(&v22, v23);
  v6 = v23[0];
  v7 = *(v23[0] + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v23[1];
    v10 = MEMORY[0x277D84F90];
    do
    {
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v6 + 32 + 16 * v11);
        v21 = v19;
        result = v9(&v21);
        if (result)
        {
          v12 = v19;
          result = swift_conformsToProtocol2();
          if (result && v19 != 0)
          {
            break;
          }
        }

        if (v7 == ++v11)
        {
          goto LABEL_18;
        }
      }

      v20 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = a2;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = v20;
      if (v15 >= v14 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
        v10 = result;
        v16 = v20;
      }

      v8 = v11 + 1;
      *(v10 + 16) = v15 + 1;
      v17 = v10 + 16 * v15;
      *(v17 + 32) = v12;
      *(v17 + 40) = v16;
      a2 = v18;
    }

    while (v7 - 1 != v11);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_18:

  *a2 = v10;
  return result;
}

uint64_t Evolution_Entry.evolutionName.getter(uint64_t a1, uint64_t a2)
{
  v2 = specialized Evolution_Entry.evolutionName.getter(a1, a2);

  return v2;
}

uint64_t Attachment_Entry.init(name:version:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_slowAlloc();
  *v4 = a1;
  v4[1] = a2;
  return 0;
}

uint64_t Attachment_Entry.type.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t Attachment_Entry.attachmentType.getter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (swift_conformsToProtocol2())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Attachment_Entry.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = a4[1];

  MEMORY[0x26D69CDB0](v5, v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (a2)
  {
    swift_getMetatypeMetadata();
    v7 = String.init<A>(describing:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x26D69CDB0](v7, v9);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v10);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 40;
}

Swift::Void __swiftcall Attachment_Entry.deallocate()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    outlined destroy of String(*(v0 + 16));
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 16) = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t protocol witness for Evolution_Entry.type.getter in conformance Attachment_Entry()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t protocol witness for Evolution_Entry.type.setter in conformance Attachment_Entry(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

void *protocol witness for Evolution_Entry.init(name:version:) in conformance Attachment_Entry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_slowAlloc();
  *result = a1;
  result[1] = a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = result;
  *(a3 + 24) = -1;
  return result;
}

double Tracepoint_Entry.init(name:version:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_slowAlloc();
  *v6 = a1;
  v6[1] = a2;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 256;
  *(a3 + 40) = v6;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0xE000000000000000;
  *(a3 + 64) = -1;
  return result;
}

uint64_t Tracepoint_Entry.type.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t Tracepoint_Entry.type.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  if (result)
  {
    v3 = result;
    result = swift_conformsToProtocol2();
    if (result)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v2[2] = v4;
  v2[3] = result;
  return result;
}

uint64_t **Tracepoint_Entry.type.modify(uint64_t **result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    v3 = **result;
    if (v3)
    {
      v4 = **result;
      result = swift_conformsToProtocol2();
      if (result)
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
      result = 0;
    }

    v2[2] = v5;
    v2[3] = result;
  }

  return result;
}

uint64_t Tracepoint_Entry.tracepointType.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t Tracepoint_Entry.tracepointType.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

unint64_t Tracepoint_Entry.describe(state:)()
{
  _StringGuts.grow(_:)(39);

  v1 = v0[5];
  v2 = *v1;
  v3 = v1[1];

  MEMORY[0x26D69CDB0](v2, v3);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  MEMORY[0x26D69CDB0](v0[6], v0[7]);
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v14 = *(v0 + 32);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (*v0)
  {
    v15 = *v0;
    swift_getMetatypeMetadata();
    v5 = String.init<A>(describing:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xEB00000000726564;
    v5 = 0x6C6F686563616C70;
  }

  MEMORY[0x26D69CDB0](v5, v7);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v8 = *(v0 + 32);
  if (v8)
  {
    v9 = 0x6D617473656D6974;
  }

  else
  {
    v9 = 0;
  }

  if (v0[4])
  {
    v10 = 0xE900000000000070;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v9, v10);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if ((v8 & 2) != 0)
  {
    v11 = 0x636172746B636162;
  }

  else
  {
    v11 = 0;
  }

  if ((v8 & 2) != 0)
  {
    v12 = 0xE900000000000065;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v11, v12);

  MEMORY[0x26D69CDB0](2105385, 0xE300000000000000);
  return 0xD000000000000013;
}

Swift::Void __swiftcall Tracepoint_Entry.deallocate()()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    outlined destroy of String(*(v0 + 40));
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 40) = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySSGMd, &_s21SwiftUITracingSupport6UniqueVySSGMR);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t protocol witness for Evolution_Entry.type.setter in conformance Tracepoint_Entry(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  if (result)
  {
    v3 = result;
    result = swift_conformsToProtocol2();
    if (result)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v2[2] = v4;
  v2[3] = result;
  return result;
}

double protocol witness for Evolution_Entry.init(name:version:) in conformance Tracepoint_Entry@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_slowAlloc();
  *v6 = a1;
  v6[1] = a2;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 256;
  *(a3 + 40) = v6;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0xE000000000000000;
  *(a3 + 64) = -1;
  return result;
}

Swift::Void __swiftcall EvolutionTable.Entry.deallocate()()
{
  v1 = *(v0 + 16);
  type metadata accessor for Strong();

  Strong.deallocate()();
}

uint64_t EvolutionTable.Entry.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v30 = a3;
  v31 = a4;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v10;
  v14 = *(v10 + 16);
  v15 = *(v10 + 24);
  v16 = *(v10 + 32);
  v17 = *(v10 + 40);
  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v38 = 8232;
  v39 = 0xE200000000000000;
  v32 = v13;
  v33 = 0x7FFFFFFFFFFFFFFFLL;
  v34 = v14;
  v35 = v15;
  v36 = v16;
  v37 = v17;
  (*(v8 + 16))(v12, a2, a5);
  v18 = InspectionState.describe<A>(_:)(v12, a5, *(v29 + 16));
  v20 = v19;
  (*(v8 + 8))(v12, a5);
  MEMORY[0x26D69CDB0](v18, v20);

  v21 = 0xE100000000000000;
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if ((v30 & 0x100000000) != 0)
  {
    v22 = 45;
  }

  else
  {
    LODWORD(v32) = v30;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v23;
  }

  MEMORY[0x26D69CDB0](v22, v21);

  MEMORY[0x26D69CDB0](0x20723E2D6C20, 0xE600000000000000);
  if ((v31 & 0x100000000) != 0)
  {
    v26 = 0xE100000000000000;
    v24 = 45;
  }

  else
  {
    LODWORD(v32) = v31;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
  }

  MEMORY[0x26D69CDB0](v24, v26);

  MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
  return v38;
}

uint64_t EvolutionTable.Entry.local.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t EvolutionTable.Entry.remote.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t EvolutionTable.describe(state:)(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v27 = *a1;
  *v28 = v4;
  *&v28[10] = *(a1 + 26);
  v5 = *v2;
  v6 = v2[6];
  v7 = *(v2 + 56);
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  v25 = 0;
  v26 = 0xE000000000000000;
  MEMORY[0x26D69CDB0](0x20656C62617428, 0xE700000000000000);
  v20 = *(a2 + 16);
  v8 = v20;
  swift_getMetatypeMetadata();
  v9 = String.init<A>(describing:)();
  v10 = v2[1];
  MEMORY[0x26D69CDB0](v9);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  v20 = v27;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v22 = v28[0];
  v23 = *&v28[8];
  v24 = *&v28[24];
  v19[0] = v5;
  v19[1] = v10;
  v11 = *(a2 + 24);
  type metadata accessor for EvolutionTable.Entry();
  v12 = type metadata accessor for UnsafeArray();
  v13 = InspectionState.describe<A>(_:)(v19, v12, &protocol witness table for UnsafeArray<A>);
  MEMORY[0x26D69CDB0](v13);

  MEMORY[0x26D69CDB0](0x617028202020200ALL, 0xED000020746E6572);
  v19[0] = v6;
  v18[2] = v8;
  v18[3] = v11;
  v18[4] = &v27;
  type metadata accessor for UnsafeMutablePointer();
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in EvolutionTable.describe(state:), v18, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v14, &v20);
  if (v21)
  {
    v15 = v20;
  }

  else
  {
    v15 = 1953460082;
  }

  if (v21)
  {
    v16 = v21;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x26D69CDB0](v15, v16);

  MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
  return v25;
}

uint64_t closure #1 in EvolutionTable.describe(state:)@<X0>(__int128 **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  v13 = *a2;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = v5;
  v16 = *(a2 + 3);
  v17 = v6;
  v7 = v4[1];
  v18 = *v4;
  v19 = v7;
  v20[0] = v4[2];
  *(v20 + 9) = *(v4 + 41);
  v11[0] = v18;
  v11[1] = v7;
  v12[0] = v20[0];
  *(v12 + 9) = *(v20 + 9);
  v8 = type metadata accessor for EvolutionTable();
  result = InspectionState.describe<A>(_:)(v11, v8, &protocol witness table for EvolutionTable<A>);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t EvolutionTable.entries.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t EvolutionTable.entries.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t EvolutionTable.localMap.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t EvolutionTable.localMap.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t EvolutionTable.remoteMap.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t EvolutionTable.remoteMap.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

void *EvolutionTable.init(version:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for EvolutionTable.Entry();
  v5 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v5, v4);
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x277D84F90];
  v11 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v13 = v12;
  v14 = HIDWORD(v12);
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCs6UInt32VSg_SayAIGTt0g5Tf4g_n(v10);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 28) = v14;
  *(a2 + 32) = result;
  *(a2 + 40) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = 0;
  *(a2 + 56) = v3;
  return result;
}

uint64_t EvolutionTable._address(of:in:)(void *a1, char a2, uint64_t a3)
{
  v6 = v3[1];
  __dst[0] = *v3;
  __dst[1] = v6;
  *v22 = v3[2];
  *&v22[9] = *(v3 + 41);
  v7 = a1;
  v17 = 8 * a1;
  while (1)
  {
    v8 = (a2 & 1) != 0 ? 24 : 40;
    if (*(__dst + v8 + 4) > v7)
    {
      v9 = 2;
      if (a2)
      {
        v9 = 1;
      }

      v10 = *&__dst[v9] + v17;
      v11 = *v10;
      LOBYTE(v10) = *(v10 + 4);
      v18 = v11;
      v19 = v10;
      MEMORY[0x28223BE20](a1);
      v12 = *(a3 + 24);
      v16[2] = *(a3 + 16);
      v16[3] = v12;
      v16[4] = __dst;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
      type metadata accessor for EvolutionTable.Entry();
      v13 = type metadata accessor for UnsafeMutablePointer();
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in EvolutionTable._address(of:in:), v16, MEMORY[0x277D84A98], v13, v14, &v20);
      result = v20;
      if (v20)
      {
        break;
      }
    }

    if (!*&v22[16])
    {
      return 0;
    }

    a1 = memmove(__dst, *&v22[16], 0x39uLL);
  }

  return result;
}

uint64_t EvolutionTable.address(of:in:)(void *a1, char a2, uint64_t a3)
{
  v6 = v3[1];
  v28[0] = *v3;
  v28[1] = v6;
  v8 = *v3;
  v7 = v3[1];
  v29[0] = v3[2];
  *(v29 + 9) = *(v3 + 41);
  __dst[0] = v8;
  __dst[1] = v7;
  v9 = a1;
  v21 = a1;
  v22 = 8 * a1;
  *v27 = v3[2];
  *&v27[9] = *(v3 + 41);
  while (1)
  {
    v10 = (a2 & 1) != 0 ? 24 : 40;
    if (*(__dst + v10 + 4) > v9)
    {
      v11 = 2;
      if (a2)
      {
        v11 = 1;
      }

      v12 = *&__dst[v11] + v22;
      v13 = *v12;
      LOBYTE(v12) = *(v12 + 4);
      v23 = v13;
      v24 = v12;
      MEMORY[0x28223BE20](a1);
      v14 = *(a3 + 24);
      v20[2] = *(a3 + 16);
      v20[3] = v14;
      v20[4] = __dst;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
      type metadata accessor for EvolutionTable.Entry();
      v15 = type metadata accessor for UnsafeMutablePointer();
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in EvolutionTable._address(of:in:)partial apply, v20, MEMORY[0x277D84A98], v15, v16, &v25);
      result = v25;
      if (v25)
      {
        break;
      }
    }

    if (!*&v27[16])
    {
      v18 = *(a3 + 16);
      v19 = *(a3 + 24);
      error #1 <A>() in EvolutionTable.address(of:in:)(v21, a2 & 1, v28);
    }

    a1 = memmove(__dst, *&v27[16], 0x39uLL);
  }

  return result;
}

void error #1 <A>() in EvolutionTable.address(of:in:)(unsigned int a1, char a2, __int128 *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26C328DC0;
  *(&v22 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  strcpy(v25, "cannot find ");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  *&v22 = a1;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](2108704, 0xE300000000000000);
  if (a2)
  {
    v8 = 0x6C61636F6C206E69;
  }

  else
  {
    v8 = 0xD000000000000050;
  }

  if (a2)
  {
    v9 = 0xEF2E656C62617420;
  }

  else
  {
    v9 = 0x800000026C33B690;
  }

  MEMORY[0x26D69CDB0](v8, v9);

  MEMORY[0x26D69CDB0](2105376, 0xE300000000000000);
  v11 = v25[0];
  v10 = v25[1];
  v12 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = v11;
  *(v6 + 40) = v10;

  print(_:separator:terminator:)();

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26C328DC0;
  v14 = a3[1];
  v22 = *a3;
  v23 = v14;
  v24[0] = a3[2];
  *(v24 + 9) = *(a3 + 41);
  v15 = type metadata accessor for EvolutionTable();
  v16 = protocol witness for static Evolution.valueSize.getter in conformance KeypathID();
  v21 = 1;
  v19 = 0;
  v20 = 512;
  v17 = Inspectable.description(depth:mode:context:)(v16, &v21, &v19, v15, &protocol witness table for EvolutionTable<A>);
  *(v13 + 56) = v12;
  *(v13 + 32) = v17;
  *(v13 + 40) = v18;
  print(_:separator:terminator:)();

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t EvolutionTable.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return EvolutionTable.subscript.getter(a1, a2, 0, a3);
}

{
  return EvolutionTable.subscript.getter(a1, a2, 1, a3);
}

uint64_t (*EvolutionTable.subscript.read(uint64_t *a1, void *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *EvolutionTable.address(of:in:)(a2, 0, a3);
  v9 = *(a3 + 16);
  *(v7 + 32) = Strong.subscript.read();
  return UnsafeTree.subjectsMap.readspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *EvolutionTable.address(of:in:)(a2, 1, a3);
  v9 = *(a3 + 16);
  *(v7 + 32) = Strong.subscript.read();
  return UnsafeTree.subjectsMap.read;
}

uint64_t (*EvolutionTable.subscript.modify(uint64_t *a1, void *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *EvolutionTable.address(of:in:)(a2, 0, a3);
  v9 = *(a3 + 16);
  *(v7 + 32) = Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *EvolutionTable.address(of:in:)(a2, 1, a3);
  v9 = *(a3 + 16);
  *(v7 + 32) = Strong.subscript.modify();
  return UnsafeTree.subjectsMap.modify;
}

uint64_t EvolutionTable.subscript.setter(uint64_t a1, void *a2, uint64_t a3)
{
  return EvolutionTable.subscript.setter(a1, a2, a3, 0);
}

{
  return EvolutionTable.subscript.setter(a1, a2, a3, 1);
}

uint64_t EvolutionTable.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *EvolutionTable.address(of:in:)(a1, a3, a2);
  v7 = *(*(*(a2 + 16) - 8) + 16);

  return v7(a4, v6);
}

uint64_t key path getter for EvolutionTable.subscript(remote:) : <A>EvolutionTable<A>A@<X0>(unsigned int *a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + a2 - 16);
  v6 = *(a1 + a2 - 8);
  v8 = *a1;
  v9 = type metadata accessor for EvolutionTable();
  v10 = *EvolutionTable.address(of:in:)(v8, a3, v9);
  v11 = *(*(v7 - 8) + 16);

  return v11(a4, v10, v7);
}

uint64_t key path setter for EvolutionTable.subscript(remote:) : <A>EvolutionTable<A>A(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, char a5)
{
  v8 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v9 = *a3;
  v10 = type metadata accessor for EvolutionTable();
  v11 = *EvolutionTable.address(of:in:)(v9, a5, v10);
  v12 = *(*(v8 - 8) + 24);

  return v12(v11, a1, v8);
}

uint64_t EvolutionTable.subscript.setter(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v6 = *EvolutionTable.address(of:in:)(a2, a4, a3);
  v7 = *(*(*(a3 + 16) - 8) + 40);

  return v7(v6, a1);
}

uint64_t EvolutionTable.subscript.getter@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  if (*(v4 + 28) <= a1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v27 = result;
  v28 = a3;
  v26 = v12;
  v15 = *(v4 + 16);
  if (!v15)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v16 = (v15 + 8 * a1);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 4);
  LODWORD(v29) = v17;
  BYTE4(v29) = v16;
  MEMORY[0x28223BE20](result);
  v18 = *(a2 + 24);
  *(&v25 - 4) = v8;
  *(&v25 - 3) = v18;
  *(&v25 - 2) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in EvolutionTable.subscript.getter, (&v25 - 6), MEMORY[0x277D84A98], v8, v19, v14);
  v20 = *(v8 - 8);
  v21 = *(v20 + 48);
  v22 = v21(v14, 1, v8);
  if (v22 == 1)
  {
    v25 = &v25;
    v29 = *(v4 + 48);
    MEMORY[0x28223BE20](v22);
    *(&v25 - 4) = v8;
    *(&v25 - 3) = v18;
    *(&v25 - 4) = a1;
    type metadata accessor for UnsafeMutablePointer();
    type metadata accessor for Optional();
    _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in implicit closure #1 in EvolutionTable.subscript.getter, (&v25 - 6), MEMORY[0x277D84A98], v8, v23, v28);
    result = v21(v14, 1, v8);
    if (result != 1)
    {
      return (*(v26 + 8))(v14, v27);
    }
  }

  else
  {
    v24 = v28;
    (*(v20 + 32))(v28, v14, v8);
    return (*(v20 + 56))(v24, 0, 1, v8);
  }

  return result;
}

uint64_t key path getter for EvolutionTable.subscript(local:) : <A>EvolutionTable<A>A@<X0>(_OWORD *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + a3 - 16);
  v8 = *(a2 + a3 - 8);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - v12;
  v14 = a1[1];
  v30[0] = *a1;
  v30[1] = v14;
  v31[0] = a1[2];
  *(v31 + 9) = *(a1 + 41);
  v15 = *a2;
  v16 = type metadata accessor for EvolutionTable();
  result = EvolutionTable.localMap.getter();
  if (v15 >= HIDWORD(v18))
  {
    __break(1u);
    goto LABEL_9;
  }

  v27 = v10;
  v28 = v16;
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v19 = result + 8 * v15;
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 4);
  LODWORD(v29) = v20;
  BYTE4(v29) = v19;
  MEMORY[0x28223BE20](result);
  v26[-4] = v7;
  v26[-3] = v8;
  v26[-2] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in EvolutionTable.subscript.getterpartial apply, &v26[-6], MEMORY[0x277D84A98], v7, v21, v13);
  v22 = *(v7 - 8);
  v23 = *(v22 + 48);
  if (v23(v13, 1, v7) == 1)
  {
    v26[0] = v9;
    v24 = EvolutionTable.unsafeParent.getter();
    v26[1] = v26;
    v29 = v24;
    MEMORY[0x28223BE20](v24);
    v26[-4] = v7;
    v26[-3] = v8;
    LODWORD(v26[-2]) = v15;
    type metadata accessor for UnsafeMutablePointer();
    type metadata accessor for Optional();
    _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #2 in implicit closure #1 in EvolutionTable.subscript.getterpartial apply, &v26[-6], MEMORY[0x277D84A98], v7, v25, a4);
    result = v23(v13, 1, v7);
    if (result != 1)
    {
      return (*(v27 + 8))(v13, v26[0]);
    }
  }

  else
  {
    (*(v22 + 32))(a4, v13, v7);
    return (*(v22 + 56))(a4, 0, 1, v7);
  }

  return result;
}

uint64_t key path setter for EvolutionTable.subscript(local:) : <A>EvolutionTable<A>A(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = *a3;
  v16 = *(v8 + 16);
  v16(&v24 - v13, a1, v7);
  result = EvolutionTable.localMap.getter();
  if (v15 >= HIDWORD(v18))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = (result + 8 * v15);
  if (v19[1])
  {
    return (*(v8 + 8))(v14, v7);
  }

  v20 = *v19;
  result = EvolutionTable.entries.getter();
  if (v20 >= HIDWORD(v21))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = *(result + 24 * v20);
  v16(v12, v14, v7);
  v23 = *(v6 - 8);
  result = (*(v23 + 48))(v12, 1, v6);
  if (result != 1)
  {
    (*(v23 + 40))(v22, v12, v6);
    return (*(v8 + 8))(v14, v7);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t EvolutionTable.subscript.setter(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v20 - v11;
  if (*(v3 + 28) <= a2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = *(v3 + 16);
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = (v13 + 8 * a2);
  if ((v14[1] & 1) == 0)
  {
    v16 = *v14;
    if (*(v3 + 12) > v16)
    {
      if (*v3)
      {
        v17 = *(*v3 + 24 * v16);
        v18 = *(v10 + 16);
        v21 = v10;
        v18(v12, a1, v7);
        v19 = *(v6 - 8);
        result = (*(v19 + 48))(v12, 1, v6);
        if (result != 1)
        {
          (*(v19 + 40))(v17, v12, v6);
          return (*(v21 + 8))(a1, v7);
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    goto LABEL_12;
  }

  v15 = *(v10 + 8);

  return v15(a1, v7);
}

unsigned int *closure #1 in EvolutionTable.subscript.getter@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  if (*(a2 + 12) <= v5)
  {
    __break(1u);
  }

  else if (*a2)
  {
    v7 = *(a3 - 8);
    (*(v7 + 16))(a4, *(*a2 + 24 * v5));
    return (*(v7 + 56))(a4, 0, 1, a3);
  }

  __break(1u);
  return result;
}

uint64_t _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t closure #2 in implicit closure #1 in EvolutionTable.subscript.getter@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = *a1;
  result = type metadata accessor for EvolutionTable();
  v17 = *(v15 + 28);
  v31 = a2;
  if (v17 <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v29 = v10;
  v30 = result;
  v32 = a5;
  v28 = v11;
  v18 = *(v15 + 16);
  if (!v18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v19 = (v18 + 8 * a2);
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 4);
  v35 = v20;
  v36 = v19;
  MEMORY[0x28223BE20](result);
  *(&v27 - 4) = a3;
  *(&v27 - 3) = a4;
  *(&v27 - 2) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in EvolutionTable.subscript.getterpartial apply, (&v27 - 6), MEMORY[0x277D84A98], a3, v21, v14);
  v22 = *(a3 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v14, 1, a3);
  if (v24 == 1)
  {
    v33 = &v27;
    v34 = *(v15 + 48);
    MEMORY[0x28223BE20](v24);
    *(&v27 - 4) = a3;
    *(&v27 - 3) = a4;
    *(&v27 - 4) = v31;
    type metadata accessor for UnsafeMutablePointer();
    type metadata accessor for Optional();
    _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #2 in implicit closure #1 in EvolutionTable.subscript.getterpartial apply, (&v27 - 6), MEMORY[0x277D84A98], a3, v25, v32);
    result = v23(v14, 1, a3);
    if (result != 1)
    {
      return (*(v28 + 8))(v14, v29);
    }
  }

  else
  {
    v26 = v32;
    (*(v22 + 32))(v32, v14, a3);
    return (*(v22 + 56))(v26, 0, 1, a3);
  }

  return result;
}

void (*EvolutionTable.subscript.modify(uint64_t *a1, unsigned int a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x78uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = v3;
  *(v9 + 112) = a2;
  v11 = *(a3 + 16);
  *(v9 + 16) = v11;
  v12 = type metadata accessor for Optional();
  *(v10 + 24) = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  *(v10 + 32) = v13;
  v15 = *(v13 + 64);
  if (v8)
  {
    *(v10 + 40) = swift_coroFrameAlloc();
    *(v10 + 48) = swift_coroFrameAlloc();
    *(v10 + 56) = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
    *(v10 + 64) = v16;
    result = swift_coroFrameAlloc();
  }

  else
  {
    *(v10 + 40) = malloc(*(v13 + 64));
    *(v10 + 48) = malloc(v15);
    *(v10 + 56) = malloc(v15);
    v16 = malloc(v15);
    *(v10 + 64) = v16;
    result = malloc(v15);
  }

  *(v10 + 72) = result;
  if (*(v4 + 28) <= a2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v36 = result;
  v37 = a1;
  v35 = a2;
  v33 = v14;
  v34 = v12;
  v18 = *(v4 + 16);
  if (!v18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v19 = (v18 + 8 * a2);
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 4);
  *(v10 + 104) = v20;
  *(v10 + 108) = v19;
  MEMORY[0x28223BE20](result);
  v21 = *(a3 + 24);
  v29 = v11;
  v30 = v21;
  v31 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in EvolutionTable.subscript.getterpartial apply, v28, MEMORY[0x277D84A98], v11, v22, v16);
  v23 = *(v11 - 8);
  *(v10 + 80) = v23;
  v24 = *(v23 + 48);
  *(v10 + 88) = v24;
  *(v10 + 96) = (v23 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v25 = v24(v16, 1, v11);
  if (v25 == 1)
  {
    v32[1] = v32;
    *v10 = *(v4 + 48);
    MEMORY[0x28223BE20](v25);
    v29 = v11;
    v30 = v21;
    LODWORD(v31) = v35;
    type metadata accessor for UnsafeMutablePointer();
    type metadata accessor for Optional();
    _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #2 in implicit closure #1 in EvolutionTable.subscript.getterpartial apply, v28, MEMORY[0x277D84A98], v11, v26, v36);
    if (v24(v16, 1, v11) != 1)
    {
      (*(v33 + 8))(v16, v34);
    }
  }

  else
  {
    v27 = v36;
    (*(v23 + 32))(v36, v16, v11);
    (*(v23 + 56))(v27, 0, 1, v11);
  }

  return EvolutionTable.subscript.modify;
}

void EvolutionTable.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v23 = *(v2 + 8);
    v24 = *(v2 + 112);
    if (*(v23 + 7) > v24)
    {
      v25 = v23[2];
      if (!v25)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v26 = (v25 + 8 * v24);
      if ((v26[1] & 1) == 0)
      {
        v27 = *v26;
        if (*(v23 + 3) <= v27)
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v28 = *v23;
        if (!v28)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v30 = *(v2 + 88);
        v29 = *(v2 + 96);
        v31 = *(v2 + 56);
        v32 = *(v2 + 16);
        v33 = *(v28 + 24 * v27);
        (*(*(v2 + 32) + 16))(v31, *(v2 + 72), *(v2 + 24));
        if (v30(v31, 1, v32) == 1)
        {
LABEL_30:
          __break(1u);
          return;
        }

        (*(*(v2 + 80) + 40))(v33, *(v2 + 56), *(v2 + 16));
      }

      v17 = *(v2 + 64);
      v16 = *(v2 + 72);
      v19 = *(v2 + 48);
      v18 = *(v2 + 56);
      v20 = *(v2 + 40);
      (*(*(v2 + 32) + 8))(v16, *(v2 + 24));
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v3 = *(v2 + 8);
  v4 = *(v2 + 112);
  v5 = *(*(v2 + 32) + 16);
  v5(*(v2 + 48), *(v2 + 72), *(v2 + 24));
  if (*(v3 + 28) <= v4)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = *(v3 + 16);
  if (!v6)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = (v6 + 8 * *(v2 + 112));
  if ((v7[1] & 1) == 0)
  {
    v8 = *(v2 + 8);
    v9 = *v7;
    if (*(v8 + 3) > v9)
    {
      v10 = *v8;
      if (v10)
      {
        v12 = *(v2 + 88);
        v11 = *(v2 + 96);
        v13 = *(v2 + 40);
        v14 = *(v2 + 16);
        v15 = *(v10 + 24 * v9);
        v5(v13, *(v2 + 48), *(v2 + 24));
        if (v12(v13, 1, v14) != 1)
        {
          (*(*(v2 + 80) + 40))(v15, *(v2 + 40), *(v2 + 16));
          goto LABEL_9;
        }

        goto LABEL_29;
      }

      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_9:
  v17 = *(v2 + 64);
  v16 = *(v2 + 72);
  v19 = *(v2 + 48);
  v18 = *(v2 + 56);
  v20 = *(v2 + 40);
  v21 = *(v2 + 24);
  v22 = *(*(v2 + 32) + 8);
  v22(v19, v21);
  v22(v16, v21);
LABEL_18:
  free(v16);
  free(v17);
  free(v18);
  free(v19);
  free(v20);

  free(v2);
}

Swift::Void __swiftcall EvolutionTable.deallocate()()
{
  v2 = *(v0 + 24);
  v7[2] = *(v0 + 16);
  v7[3] = v2;
  type metadata accessor for EvolutionTable.Entry();
  v3 = type metadata accessor for UnsafeArray();
  WitnessTable = swift_getWitnessTable();
  ArrayLike.mutEach(_:)(partial apply for closure #1 in EvolutionTable.deallocate(), v7, v3, WitnessTable);
  UnsafeArray.deallocate()();
  v5 = *(v1 + 16);
  if (v5)
  {
    MEMORY[0x26D69EAB0](v5, -1, -1);
    *(v1 + 16) = 0;
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    MEMORY[0x26D69EAB0](v6, -1, -1);
    *(v1 + 32) = 0;
  }
}

void closure #1 in EvolutionTable.deallocate()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*(a3 + 8) + 8))(a2);
  type metadata accessor for Strong();
  Strong.deallocate()();
}

Swift::Void __swiftcall EvolutionTable.copy()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  type metadata accessor for EvolutionTable.Entry();
  type metadata accessor for UnsafeArray();
  UnsafeArray.copy()();
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = *(v1 + 24);
    v6 = *(v1 + 28);
    v7 = swift_slowAlloc();
    *(v1 + 16) = v7;
    memcpy(v7, v4, 8 * v6);
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    v9 = *(v1 + 40);
    v10 = *(v1 + 44);
    v11 = swift_slowAlloc();
    *(v1 + 32) = v11;

    memcpy(v11, v8, 8 * v10);
  }
}

uint64_t specialized EvolutionTable.add(_:impl:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {

    v11 = a2;
    v12 = *(a4 + 12);
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_5:
    v14 = 0;
    v15 = *a4;
    v16 = *a4;
    while (v15)
    {
      v17 = *(*v16 + 40);
      if (*v17 == v11 && v17[1] == a3)
      {
        goto LABEL_14;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_14;
      }

      ++v14;
      v16 += 24;
      if (v12 == v14)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_36;
  }

  result = (*(a2 + 32))(a1 & 0x7FFFFFFFFFFFFFFFLL, a2);
  v11 = result;
  a3 = v13;
  v12 = *(a4 + 12);
  if (v12)
  {
    goto LABEL_5;
  }

LABEL_13:
  specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(a4, v11, a3);
  v14 = v19;
LABEL_14:

  if ((v8 & 0x8000000000000000) == 0)
  {
    result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(a4 + 32, v8, v14);
    v20 = *(a4 + 12);
    if (v14 >= v20)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v21 = *a4;
    if (!*a4)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v22 = v21 + 24 * v14;
    goto LABEL_28;
  }

  v23 = v8 & 0x7FFFFFFFFFFFFFFFLL;
  LODWORD(v8) = (*(a2 + 72))(v8 & 0x7FFFFFFFFFFFFFFFLL, a2);
  result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(a4 + 16, v8, v14);
  v20 = *(a4 + 12);
  if (v14 >= v20)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = *a4;
  if (!*a4)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v22 = v21 + 24 * v14;
  v24 = *v22;
  *v24 = v23;
  v24[1] = a2;
  v25 = swift_conformsToProtocol2();
  if (v25)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v24[2] = v26;
  v24[3] = v27;
  *(v22 + 8) = v8;
  *(v22 + 12) = 0;
  v28 = *(a4 + 56);
  result = (*(a2 + 64))(&v28, v23, a2);
  if (result)
  {
    result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(a4 + 32, v8, v14);
LABEL_28:
    *(v22 + 16) = v8;
    *(v22 + 20) = 0;
  }

  if (v14 >= v20)
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((a5 & 0x10000) == 0)
  {
    *(*(v21 + 24 * v14) + 64) = a5;
  }

  return result;
}

{
  v8 = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {

    v11 = a2;
    v12 = *(a4 + 12);
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_5:
    v14 = 0;
    v15 = *a4;
    v16 = *a4;
    while (v15)
    {
      v17 = *(*v16 + 16);
      if (*v17 == v11 && v17[1] == a3)
      {
        goto LABEL_14;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_14;
      }

      ++v14;
      v16 += 24;
      if (v12 == v14)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_30;
  }

  result = (*(a2 + 32))(a1 & 0x7FFFFFFFFFFFFFFFLL, a2);
  v11 = result;
  a3 = v13;
  v12 = *(a4 + 12);
  if (v12)
  {
    goto LABEL_5;
  }

LABEL_13:
  v14 = specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(a4, v11, a3);
LABEL_14:

  if ((v8 & 0x8000000000000000) == 0)
  {
    result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(a4 + 32, v8, v14);
    v19 = *(a4 + 12);
    if (v14 >= v19)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v20 = *a4;
    if (!*a4)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v21 = v20 + 24 * v14;
    goto LABEL_22;
  }

  v22 = v8 & 0x7FFFFFFFFFFFFFFFLL;
  LODWORD(v8) = (*(a2 + 72))(v8 & 0x7FFFFFFFFFFFFFFFLL, a2);
  result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(a4 + 16, v8, v14);
  v19 = *(a4 + 12);
  if (v14 >= v19)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v20 = *a4;
  if (!*a4)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v21 = v20 + 24 * v14;
  v23 = *v21;
  *v23 = v22;
  v23[1] = a2;
  *(v21 + 8) = v8;
  *(v21 + 12) = 0;
  v24 = *(a4 + 56);
  result = (*(a2 + 64))(&v24, v22, a2);
  if (result)
  {
    result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(a4 + 32, v8, v14);
LABEL_22:
    *(v21 + 16) = v8;
    *(v21 + 20) = 0;
  }

  if (v14 >= v19)
  {
    __break(1u);
    goto LABEL_28;
  }

  if ((a5 & 0x10000) == 0)
  {
    *(*(v20 + 24 * v14) + 24) = a5;
  }

  return result;
}

uint64_t mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(uint64_t result, unsigned int a2, unint64_t a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (v6 <= a2)
  {
    v7 = 2 * v6;
    v8 = (8 * v6) | 4;
    while (1)
    {
      v9 = *(v5 + 8);
      if (v6 == v9)
      {
        if (v9)
        {
          v10 = v7;
        }

        else
        {
          v10 = 1;
        }

        if (HIDWORD(v10))
        {
          goto LABEL_23;
        }

        v11 = *v5;
        *(v5 + 8) = v10;
        if (v11)
        {
          result = realloc(v11, 8 * v10);
          if (!result)
          {
            goto LABEL_28;
          }

          *v5 = result;
        }

        else
        {
          result = swift_slowAlloc();
          *v5 = result;
          if (!result)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        result = *v5;
        if (!*v5)
        {
          goto LABEL_27;
        }
      }

      *(result + 4 * v7) = 0;
      *(result + v8) = 1;
      if (v6 == 0xFFFFFFFFLL)
      {
        break;
      }

      ++v6;
      v7 += 2;
      v8 += 8;
      if (v6 > a2)
      {
        *(v5 + 12) = v6;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_17:
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(a3))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v6 <= a2)
  {
    goto LABEL_26;
  }

  if (*v5)
  {
    v12 = *v5 + 8 * a2;
    *v12 = a3;
    *(v12 + 4) = 0;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized Evolution_Entry.evolutionName.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 48))();
  v3 = v2[1];
  return *v2;
}

uint64_t partial apply for closure #1 in EvolutionTable.describe(state:)@<X0>(__int128 **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in EvolutionTable.describe(state:)(a1, *(v2 + 32), a2);
}

unsigned int *partial apply for closure #1 in EvolutionTable._address(of:in:)@<X0>(unsigned int *result@<X0>, void *a2@<X8>)
{
  v3 = **(v2 + 32);
  if (v3)
  {
    *a2 = v3 + 24 * *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Evolution_Kind and conformance Evolution_Kind()
{
  result = lazy protocol witness table cache variable for type Evolution_Kind and conformance Evolution_Kind;
  if (!lazy protocol witness table cache variable for type Evolution_Kind and conformance Evolution_Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Evolution_Kind and conformance Evolution_Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Evolution_Pair and conformance Evolution_Pair()
{
  result = lazy protocol witness table cache variable for type Evolution_Pair and conformance Evolution_Pair;
  if (!lazy protocol witness table cache variable for type Evolution_Pair and conformance Evolution_Pair)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Evolution_Pair and conformance Evolution_Pair);
  }

  return result;
}

__n128 sub_26C195670@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26C19567C(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  *a2 = *a1;
  v4 = v3;
  if (v3)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    result = 0;
  }

  *(a2 + 16) = v6;
  *(a2 + 24) = result;
  return result;
}

__n128 sub_26C195724(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t getEnumTagSinglePayload for Evolution_Pair(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[8])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Evolution_Pair(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Evolution_Types(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Evolution_Types(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Attachment_Entry(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Attachment_Entry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Tracepoint_Entry(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Tracepoint_Entry(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for EvolutionTable()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EvolutionTable(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EvolutionTable(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for EvolutionTable.Entry()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EvolutionTable.Entry(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 21))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for EvolutionTable.Entry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in Evolution_Types.available(version:)(void *a1)
{
  v2 = *(v1 + 16);
  (*(a1[1] + 48))(&v4, *a1);
  return (v2 | ~v4) & (BYTE1(v4) | ~v2) & 1;
}

uint64_t specialized EvolutionTable.add(_:impl:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {

    v11 = a2;
    v12 = *(a4 + 12);
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_5:
    v14 = 0;
    v15 = *a4;
    v16 = *a4;
    while (v15)
    {
      v17 = **v16;
      if (*v17 == v11 && v17[1] == a3)
      {
        goto LABEL_14;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_14;
      }

      ++v14;
      v16 += 3;
      if (v12 == v14)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_28;
  }

  result = (*(a2 + 32))(a1 & 0x7FFFFFFFFFFFFFFFLL, a2);
  v11 = result;
  a3 = v13;
  v12 = *(a4 + 12);
  if (v12)
  {
    goto LABEL_5;
  }

LABEL_13:
  specialized closure #2 in implicit closure #1 in EvolutionTable.add(_:impl:)(a4, v11, a3);
  v14 = v19;
LABEL_14:

  if ((v8 & 0x8000000000000000) == 0)
  {
    result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(a4 + 32, v8, v14);
    v20 = *(a4 + 12);
    if (v14 >= v20)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v21 = *a4;
    if (!*a4)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v22 = &v21[3 * v14];
    goto LABEL_22;
  }

  v23 = v8 & 0x7FFFFFFFFFFFFFFFLL;
  LODWORD(v8) = (*(a2 + 72))(v8 & 0x7FFFFFFFFFFFFFFFLL, a2);
  result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(a4 + 16, v8, v14);
  v20 = *(a4 + 12);
  if (v14 >= v20)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = *a4;
  if (*a4)
  {
    v22 = &v21[3 * v14];
    v24 = *v22;
    *(v24 + 8) = v23;
    *(v24 + 16) = a2;
    *(v22 + 2) = v8;
    *(v22 + 12) = 0;
    v27 = *(a4 + 56);
    result = (*(a2 + 64))(&v27, v23, a2);
    if (!result)
    {
LABEL_23:
      if (v14 < v20)
      {
        v25 = v21[3 * v14];
        v26 = *(a4 + 56);
        return closure #1 in closure #1 in Interpreter.add(handle:)(v25, &v26, a5);
      }

      __break(1u);
      goto LABEL_26;
    }

    result = mutMap #1 <A>(map:_:_:) in EvolutionTable.add(_:impl:)(a4 + 32, v8, v14);
LABEL_22:
    *(v22 + 4) = v8;
    *(v22 + 20) = 0;
    goto LABEL_23;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t specialized UnsafeTree.Node.describe(state:)()
{
  LODWORD(v10[0]) = *(v0 + 16);
  WORD2(v10[0]) = *(v0 + 20);
  v10[3] = &type metadata for Subforest2.Item;
  v10[4] = &protocol witness table for Subforest2.Item;
  v1 = __swift_project_boxed_opaque_existential_1(v10, &type metadata for Subforest2.Item);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[4];
  v5 = v1[5];
  v6 = specialized InspectionState.describe<A>(_:_:)(1852141679, 0xE400000000000000, v1[2] | (v1[3] << 8));
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v7 = specialized InspectionState.describe<A>(_:_:)(0x7365686374616DLL, 0xE700000000000000, v2 | (v3 << 8));
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v8 = specialized InspectionState.describe<A>(_:_:)(0x7465657263736964, 0xE800000000000000, v4 | (v5 << 8));
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](40, 0xE100000000000000);

  __swift_destroy_boxed_opaque_existential_1(v10);
  return 0x2065646F4E28;
}

void *_s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(uint64_t a1)
{
  result = swift_slowAlloc();
  *result = a1;
  return result;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5EventV14AttributeValueV12ChangedFieldV_Tt0B5(uint64_t a1)
{
  v2 = swift_slowAlloc();
  v3 = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = v3;
  *(v2 + 60) = *(a1 + 60);
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = result;
  return result;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA4TreeV5CacheV_Tt0B5(uint64_t a1)
{
  v2 = swift_slowAlloc();
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA8SnapshotV4KindO_Tt0B5(uint64_t a1)
{
  v2 = swift_slowAlloc();
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA8SnapshotV7StorageV_Tt0g5(uint64_t a1)
{
  v2 = swift_slowAlloc();
  v3 = *(a1 + 176);
  v2[10] = *(a1 + 160);
  v2[11] = v3;
  v4 = *(a1 + 208);
  v2[12] = *(a1 + 192);
  v2[13] = v4;
  v5 = *(a1 + 112);
  v2[6] = *(a1 + 96);
  v2[7] = v5;
  v6 = *(a1 + 144);
  v2[8] = *(a1 + 128);
  v2[9] = v6;
  v7 = *(a1 + 48);
  v2[2] = *(a1 + 32);
  v2[3] = v7;
  v8 = *(a1 + 80);
  v2[4] = *(a1 + 64);
  v2[5] = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v10;
  return result;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA10UnsafeTreeV7StorageVyAA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0jF5StatsVG_G_Tt0g5_0(uint64_t a1)
{
  v2 = swift_slowAlloc();
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v3;
  result = *(a1 + 32);
  *(v2 + 32) = result;
  return result;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC8IteratorV4ModeV_Tt0B5(uint64_t a1)
{
  v2 = swift_slowAlloc();
  v3 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v3;
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = *(a1 + 144);
  v4 = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  return result;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC7ContextV_Tt0B5(uint64_t a1)
{
  v2 = swift_slowAlloc();
  v3 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v3;
  *(v2 + 185) = *(a1 + 185);
  v4 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v4;
  v5 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v5;
  v6 = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = v6;
  v7 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v7;
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = result;
  return result;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC7ControlV6EventsV_Tt0g5(uint64_t a1)
{
  v2 = swift_slowAlloc();
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

uint64_t _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA10TraceChunkV_Tt0g5(uint64_t a1)
{
  v2 = *(type metadata accessor for TraceChunk(0) - 8);
  *(v2 + 80);
  v3 = *(v2 + 72);
  v4 = swift_slowAlloc();
  outlined init with take of TraceChunk(a1, v4);
  return v4;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC7StorageV5TypesV_Tt0B5(uint64_t a1)
{
  v2 = swift_slowAlloc();
  v3 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v3;
  *(v2 + 96) = *(a1 + 96);
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  result = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = result;
  return result;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC7StorageV_Tt0B5(uint64_t a1)
{
  v2 = swift_slowAlloc();
  v3 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v3;
  v4 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  v6 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v6;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v9;
  return result;
}

uint64_t _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA16Attachment_EntryV_Tt0g5(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  result = swift_slowAlloc();
  *result = a1;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  return result;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA16Tracepoint_EntryV_Tt0g5(uint64_t a1)
{
  v2 = swift_slowAlloc();
  v3 = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = v3;
  *(v2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = result;
  return result;
}

void *_s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5StatsV_Tt0B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_slowAlloc();
  *result = a1;
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA20Trace_Handle_StorageV10IndirectedV_Tt0B5(uint64_t a1)
{
  v2 = swift_slowAlloc();
  v3 = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = v3;
  *(v2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = result;
  return result;
}

__n128 _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5TraceV0A2UIV_Tt0B5(uint64_t a1)
{
  v2 = swift_slowAlloc();
  v3 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v3;
  *(v2 + 192) = *(a1 + 192);
  v4 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v4;
  v5 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v5;
  v6 = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = v6;
  v7 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v7;
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = result;
  return result;
}

uint64_t (*Interpreter.subscript.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = specialized Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

uint64_t (*Interpreter.Storage.subscript.modify(uint64_t (**a1)(), unsigned __int8 a2, char a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  if (*(v3 + 116) <= a2)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 104);
    if (v8)
    {
      *(result + 4) = specialized Atomic.subscript.modify(result, a3 & 1, *(v8 + 8 * a2));
      return UnsafeTree.storage.modify;
    }
  }

  __break(1u);
  return result;
}

uint64_t IntervalSet.intersection(_:ret:)(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    v7 = result;
    v8 = (a4 + 40);
    do
    {
      v9 = *(v8 - 1);
      if (v9 < a2)
      {
        v10 = *v8;
        if (v9 >= v7)
        {
          if (v10 >= a2)
          {
            v10 = a2;
LABEL_17:
            v12 = *a3;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
              v12 = result;
            }

            v14 = *(v12 + 16);
            v13 = *(v12 + 24);
            if (v14 >= v13 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
              v12 = result;
            }

            *(v12 + 16) = v14 + 1;
            v15 = v12 + 16 * v14;
            *(v15 + 32) = v9;
            *(v15 + 40) = v10;
            *a3 = v12;
            goto LABEL_4;
          }

          if (v10 >= v7)
          {
            goto LABEL_17;
          }
        }

        if (v9 > v7)
        {
          if (v10 > v7)
          {
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }
        }

        else if (v10 >= v7)
        {
          v9 = v7;
          if (v10 <= a2)
          {
            goto LABEL_17;
          }

          v9 = v7;
          v11 = v10 > v7;
          v10 = a2;
          if (v11)
          {
            goto LABEL_17;
          }
        }
      }

LABEL_4:
      v8 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t IntervalSet.duration.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v5 = *(i - 1);
    v6 = *i >= v5;
    v7 = *i - v5;
    if (!v6)
    {
      break;
    }

    v6 = __CFADD__(result, v7);
    result += v7;
    if (v6)
    {
      goto LABEL_9;
    }

    if (!--v1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t (*Interpreter.subscript.read(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = specialized Strong.subscript.read();
  return UnsafeTree.subjectsMap.readspecialized ;
}

uint64_t Interpreter.Storage.lock(index:)(uint64_t result)
{
  if (*(v1 + 116) <= result)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 104);
    if (v2)
    {
      v3 = *(v2 + 8 * result);
      return os_unfair_lock_lock_with_options();
    }
  }

  __break(1u);
  return result;
}

void Interpreter.Storage.unlock(index:)(unsigned __int8 a1)
{
  if (*(v1 + 116) <= a1)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 104);
    if (v2)
    {
      os_unfair_lock_unlock(*(v2 + 8 * a1));
      return;
    }
  }

  __break(1u);
}

uint64_t specialized EvolutionTable.Entry.describe(state:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v28[0] = 0;
  *(&v28[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = *(a1 + 3);
  v12 = *(a1 + 40);
  v13 = *(a1 + 41);
  v14 = *(a2 + 96);
  v15 = *(a2 + 128);
  v28[7] = *(a2 + 112);
  v28[8] = v15;
  v29 = *(a2 + 144);
  v16 = *(a2 + 48);
  v28[2] = *(a2 + 32);
  v28[3] = v16;
  v17 = *(a2 + 80);
  v28[4] = *(a2 + 64);
  v28[5] = v17;
  v28[6] = v14;
  v18 = *(a2 + 16);
  v28[0] = *a2;
  v28[1] = v18;
  v19 = __OFSUB__(v9, 1);
  v20 = v9 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v30 = v20;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = v10;
    v33 = v11;
    v34 = v12;
    v35 = v13;
    v21 = specialized InspectionState.wrapDescription<A>(_:)(v28);
    MEMORY[0x26D69CDB0](v21);

    v22 = 0xE100000000000000;
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    if ((a3 & 0x100000000) != 0)
    {
      v23 = 45;
    }

    else
    {
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v24;
    }

    MEMORY[0x26D69CDB0](v23, v22);

    MEMORY[0x26D69CDB0](0x20723E2D6C20, 0xE600000000000000);
    if ((a4 & 0x100000000) != 0)
    {
      v27 = 0xE100000000000000;
      v25 = 45;
    }

    else
    {
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
    }

    MEMORY[0x26D69CDB0](v25, v27);

    MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
    return 8232;
  }

  return result;
}

uint64_t specialized EvolutionTable.Entry.describe(state:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(17);

  v25 = a2[9];
  v26 = a2[10];
  *v27 = a2[11];
  *&v27[9] = *(a2 + 185);
  v23 = a2[7];
  v24 = a2[8];
  v18 = a2[2];
  v19 = a2[3];
  v21 = a2[5];
  v22 = a2[6];
  v20 = a2[4];
  v16 = *a2;
  v17 = a2[1];
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v28 = *a1 - 1;
    v29 = *(a1 + 16);
    v30 = *(a1 + 24);
    v31 = *(a1 + 40);
    v32 = *(a1 + 41);
    v9 = specialized InspectionState.wrapDescription<A>(_:)();
    MEMORY[0x26D69CDB0](v9);

    v10 = 0xE100000000000000;
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    if ((a3 & 0x100000000) != 0)
    {
      v11 = 45;
    }

    else
    {
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v12;
    }

    MEMORY[0x26D69CDB0](v11, v10);

    MEMORY[0x26D69CDB0](0x20723E2D6C20, 0xE600000000000000);
    if ((a4 & 0x100000000) != 0)
    {
      v15 = 0xE100000000000000;
      v13 = 45;
    }

    else
    {
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
    }

    MEMORY[0x26D69CDB0](v13, v15);

    MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
    return 8232;
  }

  return result;
}

uint64_t specialized EvolutionTable.Entry.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(17);

  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = *a1 - 1;
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    v20 = *(a1 + 40);
    v9 = *(a2 + 24);
    v10 = specialized InspectionState.wrapDescription<A>(_:)(*a2, *(a2 + 8), *(a2 + 16));
    MEMORY[0x26D69CDB0](v10);

    v11 = 0xE100000000000000;
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    if ((a3 & 0x100000000) != 0)
    {
      v12 = 45;
    }

    else
    {
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v13;
    }

    MEMORY[0x26D69CDB0](v12, v11);

    MEMORY[0x26D69CDB0](0x20723E2D6C20, 0xE600000000000000);
    if ((a4 & 0x100000000) != 0)
    {
      v16 = 0xE100000000000000;
      v14 = 45;
    }

    else
    {
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
    }

    MEMORY[0x26D69CDB0](v14, v16);

    MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
    return 8232;
  }

  return result;
}

uint64_t specialized EvolutionTable.Entry.describe(state:)(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *&v30[0] = 0;
  *(&v30[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v28 = 8232;
  v29 = 0xE200000000000000;
  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = *(a1 + 3);
  v12 = *(a1 + 40);
  v13 = *(a1 + 41);
  v14 = a2[2];
  v30[3] = a2[3];
  v31 = *(a2 + 32);
  v15 = *a2;
  v30[1] = a2[1];
  v30[2] = v14;
  v30[0] = v15;
  v16 = __OFSUB__(v9, 1);
  v17 = v9 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v32 = v17;
    v33 = 0x7FFFFFFFFFFFFFFFLL;
    v34 = v10;
    v35 = v11;
    v36 = v12;
    v37 = v13;
    outlined init with copy of Tracepoint_Entry(v30, v27);
    v18 = specialized InspectionState.wrapDescription<A>(_:)();
    v20 = v19;
    outlined destroy of Tracepoint_Entry(v30);
    MEMORY[0x26D69CDB0](v18, v20);

    v21 = 0xE100000000000000;
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    if ((a3 & 0x100000000) != 0)
    {
      v22 = 45;
    }

    else
    {
      v27[0] = a3;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v23;
    }

    MEMORY[0x26D69CDB0](v22, v21);

    MEMORY[0x26D69CDB0](0x20723E2D6C20, 0xE600000000000000);
    if ((a4 & 0x100000000) != 0)
    {
      v26 = 0xE100000000000000;
      v24 = 45;
    }

    else
    {
      v27[0] = a4;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
    }

    MEMORY[0x26D69CDB0](v24, v26);

    MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
    return v28;
  }

  return result;
}

uint64_t (*specialized UnsafeArray.subscript.modify(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4))()
{
  if (a2 >= HIDWORD(a4))
  {
    __break(1u);
  }

  else if (a3)
  {
    return EventTreeStats.count.modify;
  }

  __break(1u);
  return result;
}

{
  if (a2 >= HIDWORD(a4))
  {
    __break(1u);
  }

  else if (a3)
  {
    return EventTreeStats.count.modify;
  }

  __break(1u);
  return result;
}

{
  if (a2 >= HIDWORD(a4))
  {
    __break(1u);
  }

  else if (a3)
  {
    return EventTreeStats.count.modify;
  }

  __break(1u);
  return result;
}

{
  if (a2 >= HIDWORD(a4))
  {
    __break(1u);
  }

  else if (a3)
  {
    return EventTreeStats.count.modify;
  }

  __break(1u);
  return result;
}

{
  if (a2 >= HIDWORD(a4))
  {
    __break(1u);
  }

  else if (a3)
  {
    return EventTreeStats.count.modify;
  }

  __break(1u);
  return result;
}

{
  if (a2 >= HIDWORD(a4))
  {
    __break(1u);
  }

  else if (a3)
  {
    return EventTreeStats.count.modify;
  }

  __break(1u);
  return result;
}

{
  if (a2 >= HIDWORD(a4))
  {
    __break(1u);
  }

  else if (a3)
  {
    return EventTreeStats.count.modify;
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for readingDebugLog()
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  result = OS_os_log.init(subsystem:category:)();
  readingDebugLog = result;
  return result;
}

id readingDebugLog.getter()
{
  if (one-time initialization token for readingDebugLog != -1)
  {
    swift_once();
  }

  v1 = readingDebugLog;

  return v1;
}

uint64_t IntervalSet.intervals.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t Interval.duration.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2 >= a1;
  result = a2 - a1;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t IntervalSet.last.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 > 4)
  {
    v5 = *(a1 + 16) & 3;
    if ((v1 & 3) == 0)
    {
      v5 = 4;
    }

    v2 = v1 - v5;
    v6 = (a1 + 72);
    v7 = 0uLL;
    v8 = v2;
    v9 = 0uLL;
    do
    {
      v10 = v6 - 4;
      v11 = vld2q_f64(v10);
      v12 = vld2q_f64(v6);
      v7 = vbslq_s8(vcgtq_u64(v11, v7), v11, v7);
      v9 = vbslq_s8(vcgtq_u64(v12, v9), v12, v9);
      v6 += 8;
      v8 -= 4;
    }

    while (v8);
    v13 = vbslq_s8(vcgtq_u64(v7, v9), v7, v9);
    v14 = vextq_s8(v13, v13, 8uLL).u64[0];
    v3 = vbsl_s8(vcgtd_u64(v13.u64[0], v14), *v13.i8, v14);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v15 = v1 - v2;
  v16 = (a1 + 16 * v2 + 40);
  do
  {
    v18 = *v16;
    v16 += 2;
    v17 = v18;
    if (*&v18 > *&v3)
    {
      v3 = v17;
    }

    --v15;
  }

  while (v15);
  return v3;
}

unint64_t IntervalSet.span.getter(unint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = result + 32;
  result = *(result + 32);
  if (*(v2 + 16 * v1 - 8) < result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t Interval.init(begin:end:)(unint64_t result, unint64_t a2)
{
  if (a2 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t Interval.intersection(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a3 >= a2)
  {
    return 0;
  }

  if (a3 >= a1)
  {
    if (a4 >= a2)
    {
      return a3;
    }

    if (a4 >= a1)
    {
      return a3;
    }
  }

  if (a1 >= a3)
  {
    if (a1 < a4)
    {
      v5 = a1;
    }

    else
    {
      v5 = 0;
    }

    if (a2 >= a4)
    {
      v5 = a1;
    }

    if (a4 >= a1)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a1 >= a4)
    {
      return 0;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t IntervalSet.intersects(_:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    if (a2 >= a1)
    {
      v4 = a1;
    }

    else
    {
      v4 = a2;
    }

    v5 = (a3 + 40);
    do
    {
      v6 = *(v5 - 1);
      if (v6 < a2)
      {
        v7 = *v5;
        if (v6 >= a1 && v7 >= v4)
        {
          return 1;
        }

        if (v6 > a1)
        {
          if (v7 > a1)
          {
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }
        }

        else if (v7 >= a1)
        {
          v9 = 1;
          if (v7 <= a2 || v7 > a1)
          {
            return v9;
          }
        }
      }

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return 0;
}

Swift::Bool __swiftcall IntervalSet.contains(_:)(Swift::UInt64 a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (v1 + 40);
    do
    {
      v5 = v3;
      v6 = *(v4 - 1) <= a1 && *v4 >= a1;
      LOBYTE(v2) = v6;
      if (v6)
      {
        break;
      }

      --v3;
      v4 += 2;
    }

    while (v5);
  }

  return v2;
}

uint64_t IntervalSet.describe(state:)(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = *result - 1;
    v3 = *(result + 8);
    v4 = *(result + 16);
    v5 = *(result + 24);
    v6 = *(result + 40);
    return specialized InspectionState.wrapDescription<A>(_:)(a2, specialized ArrayLike.describe(state:));
  }

  return result;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance IntervalSet(uint64_t result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = *result - 1;
    v3 = *(result + 8);
    v4 = *(result + 16);
    v5 = *(result + 24);
    v6 = *(result + 40);
    return specialized InspectionState.wrapDescription<A>(_:)(*v1, specialized ArrayLike.describe(state:));
  }

  return result;
}

uint64_t Interval.interval.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

unint64_t Interval.begin.setter(unint64_t result)
{
  if (v1[1] < result)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

unint64_t *(*Interval.begin.modify(void *a1))(unint64_t *result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return Interval.begin.modify;
}

unint64_t *Interval.begin.modify(unint64_t *result, char a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = v2[1];
  v5 = v4 >= *result;
  if (a2)
  {
    if (v4 >= *result)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  if (!v5)
  {
    __break(1u);
    return result;
  }

LABEL_6:
  *v2 = v3;
  return result;
}

unint64_t Interval.end.setter(unint64_t result)
{
  if (*v1 > result)
  {
    __break(1u);
  }

  else
  {
    v1[1] = result;
  }

  return result;
}

uint64_t *(*Interval.end.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = *(v1 + 8);
  a1[1] = v1;
  return Interval.end.modify;
}

uint64_t *Interval.end.modify(uint64_t *result, char a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = *result >= *v2;
  if (a2)
  {
    if (*result >= *v2)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  if (!v4)
  {
    __break(1u);
    return result;
  }

LABEL_6:
  v2[1] = v3;
  return result;
}

unint64_t Interval.mid.getter(unint64_t result, unint64_t a2)
{
  v2 = a2 - result;
  if (a2 < result)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = __CFADD__(result, v2 >> 1);
  result += v2 >> 1;
  if (v3)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Interval.init(begin:duration:)(uint64_t result, uint64_t a2)
{
  if (__CFADD__(result, a2))
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *Interval.overlappingSelection(within:)(unsigned __int8 *result, unint64_t a2, unint64_t a3)
{
  if (a3 < a2)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v5 = result[48];
  v6 = *(result + 22);
  v7 = *(v6 + 104);
  if (a3 != a2)
  {
    if (result[48])
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_20:
    v15 = *result;
    if (v15 < *(v6 + 116))
    {
      if (v7)
      {
        v16 = *(*(*(v7 + 8 * v15) + 8) + 8);
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (*(v16 + 32))
        {
          v21 = *v16;
        }

        else
        {
          v21 = *(v16 + 8);
        }

        v22 = *(v6 + 144);
        v23 = *v16;
        v24 = *(v16 + 8);
        v25 = *(v16 + 16);
        v26 = *(v16 + 24);
        v27 = *(v16 + 32);
        outlined copy of Snapshot.Kind();
        IntervalSet.intersection(_:ret:)(a2, a3, v22, v21);
        outlined consume of Snapshot.Kind();
        v28 = *(v6 + 144);
        result = *v28;
        v29 = *(*v28 + 2);
        if (v29)
        {
          v30 = 0;
          v31 = (result + 40);
          do
          {
            v32 = *(v31 - 1);
            v13 = *v31 >= v32;
            v33 = *v31 - v32;
            if (!v13)
            {
              __break(1u);
LABEL_36:
              __break(1u);
              __break(1u);
              goto LABEL_37;
            }

            v13 = __CFADD__(v30, v33);
            v30 += v33;
            if (v13)
            {
              goto LABEL_36;
            }

            v31 += 2;
            --v29;
          }

          while (v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v30 = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
LABEL_34:
            *v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport8IntervalV_Tt1g5Tm(0, *(*v28 + 3) >> 1, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8IntervalVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport8IntervalVGMR);

            return v30;
          }
        }

        specialized Array.replaceSubrange<A>(_:with:)(0, *(*v28 + 2), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
        return v30;
      }

      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (result[48])
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v8 = *result;
  if (v8 >= *(v6 + 116))
  {
    goto LABEL_39;
  }

  if (v7)
  {
    v9 = *(*(*(v7 + 8 * v8) + 8) + 8);
    if (!v9[32])
    {
      v9 += 8;
    }

    v10 = *v9;
    v11 = *(*v9 + 16);
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        v13 = *(v12 - 1) <= a3 && *v12 >= a3;
        v14 = v13;
        if (!--v11)
        {
          break;
        }

        v12 += 2;
      }

      while ((v14 & 1) == 0);
    }

    goto LABEL_20;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t Interval.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 2659770925;
  if (a2 == -1)
  {
    v5 = 0xA300000000000000;
    v6 = 10389730;
  }

  else if (a2)
  {
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v5 = v7;
  }

  else
  {
    v5 = 0xA400000000000000;
    v6 = 2659770925;
  }

  MEMORY[0x26D69CDB0](v6, v5);

  MEMORY[0x26D69CDB0](2108704, 0xE300000000000000);
  if (a3 == -1)
  {
    v8 = 0xA300000000000000;
    v4 = 10389730;
  }

  else if (a3)
  {
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v9;
  }

  else
  {
    v8 = 0xA400000000000000;
  }

  MEMORY[0x26D69CDB0](v4, v8);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 40;
}

unint64_t Interval.state(_:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  if (a3 >= a2)
  {
    *a5 = 0;
    return result;
  }

  if (a3 >= result)
  {
    if (a4 >= a2)
    {
      *a5 = 1;
      return result;
    }

    if (a4 >= result)
    {
      *a5 = 5;
      return result;
    }
  }

  if (result >= a3)
  {
    if (result >= a4)
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    if (a2 >= a4)
    {
      v6 = 3;
    }

    else
    {
      v6 = v5;
    }

    if (a4 >= result)
    {
      v7 = v6;
    }

    else
    {
      v7 = 4;
    }

    *a5 = v7;
  }

  else if (result < a4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a5 = 4;
  }

  return result;
}

uint64_t one-time initialization function for resourceSetDidChange()
{
  result = MEMORY[0x26D69CC20](0xD000000000000034, 0x800000026C33B840);
  static NSNotificationName.resourceSetDidChange = result;
  return result;
}

id static NSNotificationName.resourceSetDidChange.getter()
{
  if (one-time initialization token for resourceSetDidChange != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static NSNotificationName.resourceSetDidChange;

  return v0;
}

void static NSNotificationName.resourceSetDidChange.setter(uint64_t a1)
{
  if (one-time initialization token for resourceSetDidChange != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static NSNotificationName.resourceSetDidChange;
  static NSNotificationName.resourceSetDidChange = a1;
}

uint64_t (*static NSNotificationName.resourceSetDidChange.modify())()
{
  if (one-time initialization token for resourceSetDidChange != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return AggregateContainer.config.modify;
}

uint64_t ResourceSet.data.setter(uint64_t a1, uint64_t a2)
{
  specialized ResourceSet.data.setter(a1, a2);
  v4 = *(*(*(a2 + 24) - 8) + 8);

  return v4(a1);
}

Swift::Void __swiftcall ResourceSet.post()()
{
  v0 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for resourceSetDidChange != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static NSNotificationName.resourceSetDidChange;
  [v0 postNotificationName:v1 object:_bridgeAnythingToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
}

void (*ResourceSet.data.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  result = ResourceSet.data.modify;
  v4 = v2 + *(a2 + 40);
  return result;
}

void ResourceSet.data.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *a1;
    v3 = a1[1];
    ResourceSet.post()();
  }
}

uint64_t ResourceSet.init(object:data:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for Unowned();
  v12 = Array.init()();
  v8 = type metadata accessor for Array();
  v9 = static UnsafeMutablePointer.allocate(capacity:)();
  _sSpsRi_zrlE10initialize2toyxn_tF(&v12, v9, v8);
  *a4 = v9;
  outlined init with take of Any(a1, (a4 + 8));
  v10 = type metadata accessor for ResourceSet();
  return (*(*(a3 - 8) + 32))(a4 + *(v10 + 40), a2, a3);
}

uint64_t ResourceSet.all.getter(uint64_t a1)
{
  v5 = **v1;
  v4 = *(a1 + 16);
  type metadata accessor for Unowned();
  type metadata accessor for Array();

  swift_getWitnessTable();
  v2 = Sequence.compactMap<A>(_:)();

  return v2;
}

uint64_t specialized ResourceSet.remove(instance:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = **v1;
  v6 = *(v5 + 16);

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if (v7 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v9 = *(v5 + 8 * v7++ + 32);
    if (v9 != a1)
    {
      v16 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1);
        v8 = v16;
      }

      v11 = v8[2];
      v10 = v8[3];
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v8 = v16;
      }

      v8[2] = v11 + 1;
      v8[v11 + 4] = v9;
    }
  }

  v12 = *v4;
  *v4 = v8;

  v8 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for resourceSetDidChange == -1)
  {
    goto LABEL_11;
  }

LABEL_13:
  swift_once();
LABEL_11:
  swift_beginAccess();
  v13 = static NSNotificationName.resourceSetDidChange;
  outlined init with copy of ResourceSet<Interpreter, ()>(v2, &v16, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMd, &_s21SwiftUITracingSupport11ResourceSetVyAA11InterpreterCytGMR);
  [v8 postNotificationName:v14 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  return swift_unknownObjectRelease();
}

void ResourceSet.remove(instance:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v7 = **v2;
  v6 = *(a2 + 16);
  type metadata accessor for Unowned();
  type metadata accessor for Array();

  swift_getWitnessTable();
  v4 = _ArrayProtocol.filter(_:)();
  v5 = *v3;
  *v3 = v4;

  ResourceSet.post()();
}

void ResourceSet.add(instance:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  type metadata accessor for Unowned();
  type metadata accessor for Array();
  Array.append(_:)();
  ResourceSet.post()();
}

void one-time initialization function for shared()
{
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12InterpretersVmMd, &_s21SwiftUITracingSupport12InterpretersVmMR);
  v2[1] = &type metadata for Interpreters;
  v0 = swift_slowAlloc();
  *v0 = MEMORY[0x277D84F90];
  v2[0] = v0;
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v1 + 4) = 0;
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(v1);
  if (*(v1 + 5))
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of Interpreters(v2, v1 + 8);
    *(v1 + 5) = 1;
    os_unfair_lock_unlock(v1);
    outlined destroy of Interpreters(v2);
    static Interpreters.shared = v1;
  }
}

uint64_t static Interpreters.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return static Interpreters.shared;
}

uint64_t (*Interpreters.subscript.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Interpreters.set.modify();
  return UnsafeTree.storage.modify;
}

uint64_t static Interpreter_Handle.types.getter()
{
  return static Interpreter_Handle.types.getter();
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t static Interpreter_Handle.evolutionName.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(*(AssociatedConformanceWitness + 16) + 32))(AssociatedTypeWitness);
}

uint64_t static Interpreter_Handle.code.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(*(AssociatedConformanceWitness + 16) + 24))(AssociatedTypeWitness);
}

uint64_t one-time initialization function for selectionDidChange()
{
  result = MEMORY[0x26D69CC20](0xD000000000000019, 0x800000026C33B820);
  static Interpreter.selectionDidChange = result;
  return result;
}

id static Interpreter.selectionDidChange.getter()
{
  if (one-time initialization token for selectionDidChange != -1)
  {
    swift_once();
  }

  v1 = static Interpreter.selectionDidChange;

  return v1;
}

void (*Interpreter.Control.events.read(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 32);
  *(v3 + 72) = specialized Strong.subscript.read();
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  *v4 = *v6;
  *(v4 + 16) = v8;
  *(v4 + 32) = v7;
  return Interpreter.Control.events.read;
}

void Interpreter.Control.events.read(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 72))();

  free(v1);
}

Swift::Void __swiftcall Interpreter.Control.deallocate()()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    outlined destroy of Interpreter.Control.Events(*(v0 + 32));
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 32) = 0;
    v2 = *(v0 + 48);
    if (v2)
    {
      MEMORY[0x26D69EAB0](v2, -1, -1);
      *(v0 + 48) = 0;
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

double protocol witness for Interpreter_Handle.init() in conformance Interpreter.Control@<D0>(uint64_t a1@<X8>)
{
  v10[0] = 0;
  v2 = MEMORY[0x277D84F90];
  v10[1] = MEMORY[0x277D84F90];
  v10[2] = MEMORY[0x277D84F98];
  v10[3] = 0;
  v10[4] = 0;
  v3 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA11InterpreterC7ControlV6EventsV_Tt0g5(v10);
  v5 = v4;
  v6 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_n(v2, v3);
  *a1 = 0;
  *(a1 + 8) = &outlined read-only object #0 of protocol witness for Interpreter_Handle.init() in conformance Interpreter.Control;
  result = 0.0;
  *(a1 + 16) = xmmword_26C32E060;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = v6;
  *(a1 + 56) = v8;
  *(a1 + 60) = v9;
  return result;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance Interpreter.Control()
{
  v1 = *v0;
  v2 = v0[40];
  MEMORY[0x26D69CDB0](0x6C6F72746E6F4328, 0xE900000000000020);
  if (v2)
  {
    v3 = 0x6C65636E6163;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v3, v4);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall Interpreter.SwiftUI.deallocate()()
{
  v1 = *v0;
  if (!*v0)
  {
    goto LABEL_13;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](*v0, &_sSDys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AC0E3RefV9referencetGMd, &_sSDys6UInt64V21SwiftUITracingSupport10SubgraphIDV4name_AC0E3RefV9referencetGMR);
  MEMORY[0x26D69EAB0](v1, -1, -1);
  *v0 = 0;
  v2 = v0[1];
  if (!v2)
  {
    goto LABEL_13;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[1], &_sSDys6UInt64V21SwiftUITracingSupport11GraphCtxtIDV4name_AC0E3RefV9referencetGMd, &_sSDys6UInt64V21SwiftUITracingSupport11GraphCtxtIDV4name_AC0E3RefV9referencetGMR);
  MEMORY[0x26D69EAB0](v2, -1, -1);
  v0[1] = 0;
  v3 = v0[2];
  if (!v3)
  {
    goto LABEL_13;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[2], &_sSDys6UInt32V21SwiftUITracingSupport11AttributeIDV4name_AC0E3RefV9referencetGMd, &_sSDys6UInt32V21SwiftUITracingSupport11AttributeIDV4name_AC0E3RefV9referencetGMR);
  MEMORY[0x26D69EAB0](v3, -1, -1);
  v0[2] = 0;
  v4 = v0[4];
  if (!v4)
  {
    goto LABEL_13;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[4], &_sSDy21SwiftUITracingSupport8GraphRefVSayAA05EventE0VGGMd, &_sSDy21SwiftUITracingSupport8GraphRefVSayAA05EventE0VGGMR);
  MEMORY[0x26D69EAB0](v4, -1, -1);
  v0[4] = 0;
  v5 = v0[5];
  if (!v5)
  {
    goto LABEL_13;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[5], &_sSDy21SwiftUITracingSupport13TransactionIDVSayAA8EventRefVGGMd, &_sSDy21SwiftUITracingSupport13TransactionIDVSayAA8EventRefVGGMR);
  MEMORY[0x26D69EAB0](v5, -1, -1);
  v0[5] = 0;
  v6 = v0[7];
  if (!v6)
  {
    goto LABEL_13;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[7], &_sSDy21SwiftUITracingSupport11AnimationIDVAA8EventRefVGMd, &_sSDy21SwiftUITracingSupport11AnimationIDVAA8EventRefVGMR);
  MEMORY[0x26D69EAB0](v6, -1, -1);
  v0[7] = 0;
  v7 = v0[9];
  if (!v7)
  {
    goto LABEL_13;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[9], &_sSDy21SwiftUITracingSupport11SubgraphRefVAA05EventE0VGMd, &_sSDy21SwiftUITracingSupport11SubgraphRefVAA05EventE0VGMR);
  MEMORY[0x26D69EAB0](v7, -1, -1);
  v0[9] = 0;
  v8 = v0[10];
  if (!v8)
  {
    goto LABEL_13;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[10], &_sSDy21SwiftUITracingSupport12AttributeRefVAA05EventE0VGMd, &_sSDy21SwiftUITracingSupport12AttributeRefVAA05EventE0VGMR);
  MEMORY[0x26D69EAB0](v8, -1, -1);
  v0[10] = 0;
  v9 = v0[11];
  if (!v9)
  {
    goto LABEL_13;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[11], &_sSDy21SwiftUITracingSupport5EventV2IdVAA11InterpreterC0D16AbstractionCacheVGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVAA11InterpreterC0D16AbstractionCacheVGMR);
  MEMORY[0x26D69EAB0](v9, -1, -1);
  v0[11] = 0;
  v10 = v0[12];
  if (!v10)
  {
    goto LABEL_13;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[12], &_sSDy21SwiftUITracingSupport4TreeV8CacheKeyOAA11InterpreterC0d11AbstractionE0VGMd, &_sSDy21SwiftUITracingSupport4TreeV8CacheKeyOAA11InterpreterC0d11AbstractionE0VGMR);
  MEMORY[0x26D69EAB0](v10, -1, -1);
  v0[12] = 0;
  v11 = v0[6];
  if (v11)
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v0[6], &_sSDy21SwiftUITracingSupport8ActionIDVSayAA8EventRefVGGMd, &_sSDy21SwiftUITracingSupport8ActionIDVSayAA8EventRefVGGMR);
    MEMORY[0x26D69EAB0](v11, -1, -1);
    v0[6] = 0;
  }

  else
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t Interpreter.SwiftUI.recentlyInvalidatedAttribute.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

void *Interpreter.SwiftUI.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F98];
  v13 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(MEMORY[0x277D84F98]);
  v12 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v2);
  v11 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v2);
  v3 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v2);
  v4 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v2);
  v5 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v2);
  v6 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v2);
  v7 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v2);
  v8 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v2);
  v9 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v2);
  result = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5_0(v2);
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = v11;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
  *(a1 + 72) = v7;
  *(a1 + 80) = v8;
  *(a1 + 88) = v9;
  *(a1 + 96) = result;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 124) = 1;
  return result;
}

uint64_t Interpreter.Storage.debugName.getter()
{
  v1 = type metadata accessor for TraceChunk(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 136);
  v20 = 91;
  v21 = 0xE100000000000000;
  v8 = *(v7 + 40);
  v10 = *(v7 + 48);
  v9 = *(v7 + 56);
  v11 = *(v7 + 72);
  v12 = *(v7 + 88);

  v13 = v10(v8);
  v15 = v14;

  MEMORY[0x26D69CDB0](v13, v15);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (v6)
  {
    specialized T_Header.init()(v22);
  }

  else
  {
    outlined init with copy of TraceChunk(v5, v4);
    v16 = *(*v4 + 32);
    outlined destroy of TraceChunk(v4);
    specialized T_Header.init(loadedFrom:)(v16, v22);
  }

  v19[1] = v23;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v17);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v20;
}

double Interpreter.Storage.Mode.header.getter@<D0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TraceChunk(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v14 - v9;
  if (a2)
  {
    specialized T_Header.init()(v15);
  }

  else
  {
    outlined init with copy of TraceChunk(a1, &v14 - v9);
    v11 = *(*v10 + 32);
    outlined destroy of TraceChunk(v10);
    specialized T_Header.init(loadedFrom:)(v11, v15);
  }

  v12 = v15[1];
  *a3 = v15[0];
  *(a3 + 16) = v12;
  result = *&v16;
  *(a3 + 32) = v16;
  *(a3 + 48) = v17;
  return result;
}

uint64_t Interpreter.Storage.Mode.chunk.getter@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    a3[3] = type metadata accessor for TraceChunk(0);
    a3[4] = &protocol witness table for TraceChunk;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);

    return outlined init with copy of TraceChunk(a1, boxed_opaque_existential_1Tm);
  }

  return result;
}

Swift::Void __swiftcall Interpreter.Storage.Mode.deallocate()()
{
  if ((v0[3] & 1) == 0)
  {
    v1 = v0[2];
    if (v1)
    {
      v2 = *v0;
      v3 = v0[1];
      outlined destroy of TraceChunk(v0[2]);
      MEMORY[0x26D69EAB0](v1, -1, -1);
      *v0 = v2;
      v0[1] = v3;
      v0[2] = 0;
      *(v0 + 24) = 0;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance Interpreter.Storage.Mode()
{
  if ((v0[3] & 1) == 0)
  {
    v1 = v0[2];
    if (v1)
    {
      v2 = *v0;
      v3 = v0[1];
      outlined destroy of TraceChunk(v0[2]);
      result = MEMORY[0x26D69EAB0](v1, -1, -1);
      *v0 = v2;
      v0[1] = v3;
      v0[2] = 0;
      *(v0 + 24) = 0;
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t Interpreter.Storage.mode.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  return result;
}

uint64_t Interpreter.Storage.mode.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 8) = result;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4 & 1;
  return result;
}

__n128 Interpreter.Storage.handles.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 72);
  result = *(v1 + 81);
  *(a1 + 41) = result;
  return result;
}

__n128 Interpreter.Storage.handles.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v2;
  *(v1 + 72) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 81) = result;
  return result;
}

uint64_t Interpreter.Storage.snapshots.getter()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t Interpreter.Storage.snapshots.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2;
  return result;
}

uint64_t Interpreter.Storage.seeds.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t Interpreter.Storage.seeds.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2;
  return result;
}

uint64_t Interpreter.Storage.types.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v4 = v2[1];
  v3 = v2[2];
  v15[0] = *v2;
  v15[1] = v4;
  v15[2] = v3;
  v5 = v2[6];
  v7 = v2[3];
  v6 = v2[4];
  v15[5] = v2[5];
  v15[6] = v5;
  v15[3] = v7;
  v15[4] = v6;
  v8 = v2[1];
  *a1 = *v2;
  a1[1] = v8;
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[6];
  a1[5] = v2[5];
  a1[6] = v11;
  v12 = v2[4];
  a1[3] = v10;
  a1[4] = v12;
  a1[2] = v9;
  return outlined init with copy of Interpreter.Storage.Types(v15, &v14);
}

uint64_t (*Interpreter.Storage.types.read(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 136);
  *(v3 + 32) = specialized Strong.subscript.read();
  return UnsafeTree.subjectsMap.read;
}

uint64_t (*Interpreter.Storage.types.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 136);
  *(v3 + 32) = specialized Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

uint64_t Interpreter.Storage.types.setter(__int128 *a1)
{
  v3 = *(v1 + 136);
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  v5 = a1[6];
  v26 = a1[5];
  v27 = v5;
  v6 = a1[4];
  v24 = a1[3];
  v25 = v6;
  v23 = a1[2];
  v7 = *v3;
  v8 = v3[2];
  v28[1] = v3[1];
  v28[2] = v8;
  v28[0] = v7;
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[6];
  v28[5] = v3[5];
  v28[6] = v11;
  v28[3] = v9;
  v28[4] = v10;
  outlined init with copy of Interpreter.Storage.Types(&v21, v29);
  outlined destroy of Interpreter.Storage.Types(v28);
  v13 = v22;
  v12 = v23;
  *v3 = v21;
  v3[1] = v13;
  v3[2] = v12;
  v14 = v27;
  v16 = v24;
  v15 = v25;
  v3[5] = v26;
  v3[6] = v14;
  v3[3] = v16;
  v3[4] = v15;
  v17 = a1[5];
  v29[4] = a1[4];
  v29[5] = v17;
  v29[6] = a1[6];
  v18 = a1[1];
  v29[0] = *a1;
  v29[1] = v18;
  v19 = a1[3];
  v29[2] = a1[2];
  v29[3] = v19;
  return outlined destroy of Interpreter.Storage.Types(v29);
}

uint64_t Interpreter.Storage.Types.Keypath.description.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16) | (*(v0 + 20) << 32);
  return result;
}

uint64_t Interpreter.Storage.Types.Keypath.description.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  *(v2 + 20) = HIDWORD(a2);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Interpreter.Storage.Types.TypeMatchKey()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Interpreter.Storage.Types.TypeMatchKey()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Interpreter.Storage.Types.TypeMatchKey()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t Interpreter.Storage.Types.types.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t Interpreter.Storage.Types.types.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t Interpreter.Storage.Types.keypaths.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Interpreter.Storage.Types.typeIDIndexMap.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Interpreter.Storage.Types.symbols.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 88);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  v4 = *(v1 + 72);
  *(a1 + 16) = *(v1 + 56);
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

__n128 Interpreter.Storage.Types.symbols.setter(int *a1)
{
  v3 = *a1;
  v4 = *(v1 + 56);
  v5 = *(v1 + 72);
  v6 = *(v1 + 88);

  *(v1 + 40) = v3;
  v7 = *(a1 + 6);
  *(v1 + 48) = *(a1 + 2);
  *(v1 + 64) = v7;
  result = *(a1 + 10);
  *(v1 + 80) = result;
  return result;
}

uint64_t Interpreter.Storage.Types.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = -1;
  return outlined init with copy of Interpreter.Storage.Types(v10, &v9);
}

uint64_t Interpreter.Storage.Types.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = v2 + 1;
  do
  {
    v4 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_12;
    }

    *(v1 + 112) = v4;
    if (v3 < 0 || (v5 = *(v1 + 32), v4 >= *(v5 + 16)))
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 255;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 102) = 0u;
      return result;
    }

    v6 = *(v5 + 4 * v4 + 32);
    ++v2;
  }

  while (v6 == -1);
  if (v6 >= *(v1 + 12))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*v1)
  {
    v7 = *v1 + 120 * v6;
    v8 = *v7;
    v9 = *(v7 + 16);
    v10 = *(v7 + 48);
    v22[2] = *(v7 + 32);
    v22[3] = v10;
    v22[1] = v9;
    v22[0] = v8;
    v11 = *(v7 + 64);
    v12 = *(v7 + 80);
    v13 = *(v7 + 96);
    *(v23 + 14) = *(v7 + 110);
    v22[5] = v12;
    v23[0] = v13;
    v22[4] = v11;
    v14 = *v7;
    v15 = *(v7 + 16);
    v16 = *(v7 + 48);
    *(a1 + 32) = *(v7 + 32);
    *(a1 + 48) = v16;
    *a1 = v14;
    *(a1 + 16) = v15;
    v17 = *(v7 + 64);
    v18 = *(v7 + 80);
    v19 = *(v7 + 96);
    *(a1 + 110) = *(v7 + 110);
    *(a1 + 80) = v18;
    *(a1 + 96) = v19;
    *(a1 + 64) = v17;
    return outlined init with copy of PType(v22, v21);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t Interpreter.Storage.Types.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  if (*(v3 + 16) <= result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(v3 + 4 * result + 32);
  if (v4 >= *(v2 + 12))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*v2)
  {
    v5 = *v2 + 120 * v4;
    v6 = *v5;
    v7 = *(v5 + 16);
    v8 = *(v5 + 48);
    v19[2] = *(v5 + 32);
    v19[3] = v8;
    v19[1] = v7;
    v19[0] = v6;
    v9 = *(v5 + 64);
    v10 = *(v5 + 80);
    v11 = *(v5 + 96);
    *(v20 + 14) = *(v5 + 110);
    v19[5] = v10;
    v20[0] = v11;
    v19[4] = v9;
    v12 = *v5;
    v13 = *(v5 + 16);
    v14 = *(v5 + 48);
    *(a2 + 32) = *(v5 + 32);
    *(a2 + 48) = v14;
    *a2 = v12;
    *(a2 + 16) = v13;
    v15 = *(v5 + 64);
    v16 = *(v5 + 80);
    v17 = *(v5 + 96);
    *(a2 + 110) = *(v5 + 110);
    *(a2 + 80) = v16;
    *(a2 + 96) = v17;
    *(a2 + 64) = v15;
    return outlined init with copy of PType(v19, v18);
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v3 = *(v2 + 16);
  if (*(v3 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    v4 = v3 + 24 * result;
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    *a2 = *(v4 + 32);
    *(a2 + 16) = v5;
    *(a2 + 20) = v6;
  }

  return result;
}

uint64_t key path getter for Interpreter.Storage.Types.subscript(type:) : Interpreter.Storage.Types@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(result + 32);
  v6 = *a2;
  if (*(v5 + 16) <= v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *(v5 + 4 * v6 + 32);
  if (v7 >= *(result + 12))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *result;
  if (*result)
  {
    v25 = v3;
    v26 = v4;
    v9 = (v8 + 120 * v7);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[3];
    v23[2] = v9[2];
    v23[3] = v12;
    v23[1] = v11;
    v23[0] = v10;
    v13 = v9[4];
    v14 = v9[5];
    v15 = v9[6];
    *(v24 + 14) = *(v9 + 110);
    v23[5] = v14;
    v24[0] = v15;
    v23[4] = v13;
    v16 = *v9;
    v17 = v9[1];
    v18 = v9[3];
    *(a3 + 32) = v9[2];
    *(a3 + 48) = v18;
    *a3 = v16;
    *(a3 + 16) = v17;
    v19 = v9[4];
    v20 = v9[5];
    v21 = v9[6];
    *(a3 + 110) = *(v9 + 110);
    *(a3 + 80) = v20;
    *(a3 + 96) = v21;
    *(a3 + 64) = v19;
    return outlined init with copy of PType(v23, v22);
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*Interpreter.Storage.Types.subscript.read(void (**a1)(void **a1), unsigned int a2))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x166uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *(v2 + 32);
  if (*(v7 + 16) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(v7 + 4 * a2 + 32);
  if (v8 >= *(v2 + 12))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*v2)
  {
    v9 = (*v2 + 120 * v8);
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = *(v9 + 2);
    *(result + 168) = *(v9 + 3);
    *(result + 152) = v12;
    *(result + 136) = v11;
    *(result + 120) = v10;
    v13 = *(v9 + 4);
    v14 = *(v9 + 5);
    v15 = *(v9 + 6);
    *(result + 230) = *(v9 + 110);
    *(result + 216) = v15;
    *(result + 200) = v14;
    *(result + 184) = v13;
    memmove(result, v9, 0x76uLL);
    outlined init with copy of PType(v6 + 120, v6 + 240);
    return Interpreter.Storage.Types.subscript.read;
  }

LABEL_10:
  __break(1u);
  return result;
}

void Interpreter.Storage.Types.subscript.read(void **a1)
{
  v1 = *a1;
  v2 = *a1 + 240;
  v3 = *(v1 + 5);
  *(v1 + 19) = *(v1 + 4);
  *(v1 + 20) = v3;
  *(v1 + 21) = *(v1 + 6);
  *(v2 + 110) = *(v1 + 110);
  v4 = *(v1 + 1);
  *(v1 + 15) = *v1;
  *(v1 + 16) = v4;
  v5 = *(v1 + 3);
  *(v1 + 17) = *(v1 + 2);
  *(v1 + 18) = v5;
  outlined destroy of PType(v2);

  free(v1);
}

uint64_t key path setter for Interpreter.Storage.Types.subscript(type:) : Interpreter.Storage.Types(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = *(result + 48);
  v22[2] = *(result + 32);
  v22[3] = v4;
  *(v23 + 14) = *(result + 110);
  v5 = *(result + 96);
  v22[5] = *(result + 80);
  v23[0] = v5;
  v22[4] = *(result + 64);
  v6 = *(result + 16);
  v22[0] = *result;
  v22[1] = v6;
  v7 = *(a2 + 32);
  if (*(v7 + 16) <= v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = *(v7 + 4 * v3 + 32);
  if (v8 >= *(a2 + 12))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a2)
  {
    v9 = *a2 + 120 * v8;
    v10 = *v9;
    v11 = *(v9 + 16);
    v12 = *(v9 + 48);
    v20[2] = *(v9 + 32);
    v20[3] = v12;
    v20[1] = v11;
    v20[0] = v10;
    v13 = *(v9 + 64);
    v14 = *(v9 + 80);
    v15 = *(v9 + 96);
    *(v21 + 14) = *(v9 + 110);
    v20[5] = v14;
    v21[0] = v15;
    v20[4] = v13;
    v16 = *(result + 80);
    *(v9 + 64) = *(result + 64);
    *(v9 + 80) = v16;
    *(v9 + 96) = *(result + 96);
    *(v9 + 110) = *(result + 110);
    v17 = *(result + 16);
    *v9 = *result;
    *(v9 + 16) = v17;
    v18 = *(result + 48);
    *(v9 + 32) = *(result + 32);
    *(v9 + 48) = v18;
    outlined init with copy of PType(v22, v19);
    return outlined destroy of PType(v20);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*Interpreter.Storage.Types.subscript.modify(uint64_t (**a1)(), unsigned int a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  v6 = v2[4];
  if (*(v6 + 16) <= a2)
  {
    __break(1u);
  }

  else
  {
    *(result + 4) = specialized UnsafeArray.subscript.modify(result, *(v6 + 4 * a2 + 32), *v2, v2[1]);
    return UnsafeTree.subjectsMap.modify;
  }

  return result;
}

uint64_t Interpreter.Storage.Types.subscript.setter(uint64_t result, unsigned int a2)
{
  v3 = *(v2 + 32);
  if (*(v3 + 16) <= a2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(v3 + 4 * a2 + 32);
  if (v4 >= *(v2 + 12))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*v2)
  {
    v5 = result;
    v6 = *v2 + 120 * v4;
    v7 = *v6;
    v8 = *(v6 + 16);
    v9 = *(v6 + 48);
    v16[2] = *(v6 + 32);
    v16[3] = v9;
    v16[0] = v7;
    v16[1] = v8;
    v10 = *(v6 + 64);
    v11 = *(v6 + 80);
    v12 = *(v6 + 96);
    *&v17[14] = *(v6 + 110);
    v16[5] = v11;
    *v17 = v12;
    v16[4] = v10;
    result = outlined destroy of PType(v16);
    v13 = *(v5 + 80);
    *(v6 + 64) = *(v5 + 64);
    *(v6 + 80) = v13;
    *(v6 + 96) = *(v5 + 96);
    *(v6 + 110) = *(v5 + 110);
    v14 = *(v5 + 16);
    *v6 = *v5;
    *(v6 + 16) = v14;
    v15 = *(v5 + 48);
    *(v6 + 32) = *(v5 + 32);
    *(v6 + 48) = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t key path getter for Interpreter.Storage.Types.subscript(_:) : Interpreter.Storage.Types@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  v4 = *a2;
  if (*(v3 + 16) <= v4)
  {
    __break(1u);
  }

  else
  {
    v5 = v3 + 24 * v4;
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    *a3 = *(v5 + 32);
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
  }

  return result;
}

uint64_t (*Interpreter.Storage.Types.subscript.read(uint64_t (*result)(), unsigned int a2))()
{
  v3 = *(v2 + 16);
  if (*(v3 + 16) <= a2)
  {
    __break(1u);
  }

  else
  {
    v4 = v3 + 24 * a2;
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    *result = *(v4 + 32);
    *(result + 16) = v5;
    *(result + 5) = v6;
    return EventTreeStats.count.modify;
  }

  return result;
}

uint64_t key path setter for Interpreter.Storage.Types.subscript(_:) : Interpreter.Storage.Types(__int128 *a1, uint64_t a2, unsigned int *a3)
{
  v4 = *a3;
  v10 = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 5);
  v7 = *(a2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
  }

  if (*(v7 + 16) <= v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v7 + 24 * v4;
    *(v9 + 32) = v10;
    *(v9 + 48) = v5;
    *(v9 + 52) = v6;
    *(a2 + 16) = v7;
  }

  return result;
}

void (*Interpreter.Storage.Types.subscript.modify(uint64_t *a1, unsigned int a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = Interpreter.Storage.Types.keypaths.modify();
  *(v5 + 72) = specialized Array.subscript.modify((v5 + 32), a2);
  return Interpreter.Storage.Types.subscript.modify;
}

void Interpreter.Storage.Types.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t specialized Array.subscript.modify(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF21SwiftUITracingSupport4TreeV_Tgq5_0(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Interpreter.Storage.Types.subscript.setter(uint64_t a1, unsigned int a2)
{
  v5 = *(v2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  if (*(v5 + 16) <= a2)
  {
    __break(1u);
  }

  else
  {
    v7 = v5 + 24 * a2;
    v8 = *(a1 + 16);
    v9 = *(a1 + 20);
    *(v7 + 32) = *a1;
    *(v7 + 48) = v8;
    *(v7 + 52) = v9;
    *(v2 + 16) = v5;
  }

  return result;
}

uint64_t Interpreter.Storage.Types.subscript.getter(uint64_t result)
{
  if (result == -1)
  {
    return 0x206E776F6E6B6E55;
  }

  v2 = v1;
  v3 = v1[4];
  if (*(v3 + 16) <= result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v1 + 3);
  v5 = *(v3 + 4 * result + 32);
  if (v5 >= v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *v1;
  if (*v1)
  {
    v7 = *(v1 + 2);
    v8 = (v6 + 120 * v5);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[3];
    v47[2] = v8[2];
    v47[3] = v11;
    v47[0] = v9;
    v47[1] = v10;
    v12 = v8[4];
    v13 = v8[5];
    v14 = v8[6];
    *(v48 + 14) = *(v8 + 110);
    v47[5] = v13;
    v48[0] = v14;
    v47[4] = v12;
    v56 = v8[4];
    v57 = v8[5];
    v58[0] = v8[6];
    *(v58 + 14) = *(v8 + 110);
    v52 = *v8;
    v53 = v8[1];
    v54 = v8[2];
    v55 = v8[3];
    outlined init with copy of PType(v47, &v49);

    v16 = specialized Sequence.reversed()(v15);
    *&v49 = v6;
    *(&v49 + 1) = __PAIR64__(v4, v7);
    v50 = *(v1 + 1);
    *&v51[24] = *(v1 + 7);
    *&v51[40] = *(v1 + 9);
    *&v51[56] = *(v1 + 11);
    v17 = v1[13];
    *v51 = v3;
    *&v51[72] = v17;
    *&v51[8] = *(v1 + 5);
    v18 = PType.genericParam(_:within:)(v16, &v49);

    result = outlined destroy of PType(v47);
    if (v18 < v4)
    {
      v19 = (v6 + 120 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[3];
      *v51 = v19[2];
      *&v51[16] = v22;
      v49 = v20;
      v50 = v21;
      v23 = v19[4];
      v24 = v19[5];
      v25 = v19[6];
      *&v51[78] = *(v19 + 110);
      *&v51[48] = v24;
      *&v51[64] = v25;
      *&v51[32] = v23;
      v26 = v19[5];
      v44 = v19[4];
      v45 = v26;
      v46[0] = v19[6];
      *(v46 + 14) = *(v19 + 110);
      v27 = v19[1];
      v40 = *v19;
      v41 = v27;
      v28 = v19[3];
      v42 = v19[2];
      v43 = v28;
      v30 = v6;
      v31 = v7;
      v32 = v4;
      v33 = *(v2 + 1);
      v34 = v3;
      v36 = *(v2 + 7);
      v37 = *(v2 + 9);
      v38 = *(v2 + 11);
      v39 = v2[13];
      v35 = *(v2 + 5);
      outlined init with copy of PType(&v49, &v52);
      v29 = PType.limitedName(within:limit:module:)(&v30, 0x7FFFFFFFFFFFFFFFLL, 0);
      v56 = v44;
      v57 = v45;
      v58[0] = v46[0];
      *(v58 + 14) = *(v46 + 14);
      v52 = v40;
      v53 = v41;
      v54 = v42;
      v55 = v43;
      outlined destroy of PType(&v52);
      return v29;
    }

    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  if (result == -1)
  {
    return 0x206E776F6E6B6E55;
  }

  v2 = v1[4];
  if (*(v2 + 16) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 3);
  v4 = *(v2 + 4 * result + 32);
  if (v4 >= v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *v1;
  if (*v1)
  {
    v6 = *(v1 + 2);
    v7 = (v5 + 120 * v4);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    v35[2] = v7[2];
    v35[3] = v10;
    v35[0] = v8;
    v35[1] = v9;
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[6];
    *(v36 + 14) = *(v7 + 110);
    v35[5] = v12;
    v36[0] = v13;
    v35[4] = v11;
    v14 = v7[5];
    v32 = v7[4];
    v33 = v14;
    v34[0] = v7[6];
    *(v34 + 14) = *(v7 + 110);
    v15 = v7[1];
    v28 = *v7;
    v29 = v15;
    v16 = v7[3];
    v30 = v7[2];
    v31 = v16;
    v18 = v5;
    v19 = v6;
    v20 = v3;
    v21 = *(v1 + 1);
    v22 = v2;
    v24 = *(v1 + 7);
    v25 = *(v1 + 9);
    v26 = *(v1 + 11);
    v27 = v1[13];
    v23 = *(v1 + 5);
    outlined init with copy of PType(v35, v37);
    v17 = PType.limitedName(within:limit:module:)(&v18, 2, 0);
    v37[4] = v32;
    v37[5] = v33;
    v38[0] = v34[0];
    *(v38 + 14) = *(v34 + 14);
    v37[0] = v28;
    v37[1] = v29;
    v37[2] = v30;
    v37[3] = v31;
    outlined destroy of PType(v37);
    return v17;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Sequence.reversed()(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 16 * v2;
  v7 = 40;
  while (1)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 16);
    if (v3 >= v10)
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_12;
    }

    v11 = *(v1 + v7 - 8);
    v12 = *(v1 + v7);
    v13 = *(v1 + v6 + 16);
    v14 = *(v1 + v6 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    v8 = (v1 + v7);
    *(v8 - 1) = v13;
    *v8 = v14;
    v9 = v1 + v6;
    *(v9 + 16) = v11;
    *(v9 + 24) = v12;
LABEL_5:
    ++v3;
    v7 += 16;
    --v5;
    v6 -= 16;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized Sequence.reversed()(uint64_t result, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v5 = result;
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport5PTypeV5FieldV_Tt1g5Tm(HIDWORD(a2), 0, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport5PTypeV5FieldVGMR);
    result = specialized Sequence._copyContents(initializing:)(v26, (v3 + 4), v2, v5, a2);
    if (result != v2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3[2];
  if (v6 < 2)
  {
    return v3;
  }

  v7 = 0;
  v8 = v6 >> 1;
  v9 = v6 - 1;
  v10 = 4 * v6;
  v11 = 4;
  v22 = v6 >> 1;
  while (1)
  {
    if (v7 == v9)
    {
      goto LABEL_8;
    }

    v14 = v3[2];
    if (v7 >= v14)
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_15;
    }

    v15 = v3[v11];
    v24 = HIDWORD(v3[v11 + 1]);
    v25 = v3[v11 + 1];
    v23 = v3[v11 + 2];
    v16 = v3[v11 + 3];
    v17 = v3[v10];
    v18 = v3[v10 + 1];
    v19 = HIDWORD(v3[v10 + 1]);
    v20 = v3[v10 + 2];
    v21 = v3[v10 + 3];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
    }

    v12 = &v3[v11];
    *v12 = v17;
    *(v12 + 8) = v18;
    *(v12 + 3) = v19;
    v12[2] = v20;
    *(v12 + 6) = v21;
    v13 = &v3[v10];
    *v13 = v15;
    *(v13 + 8) = v25;
    *(v13 + 3) = v24;
    v8 = v22;
    v13[2] = v23;
    *(v13 + 6) = v16;
LABEL_8:
    ++v7;
    v11 += 4;
    --v9;
    v10 -= 4;
    if (v8 == v7)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

{
  v2 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v5 = result;
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AF10ChangelistC2IdOAF10Subforest2V4ItemVG_Tt1g5Tm(HIDWORD(a2), 0, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMR);
    result = specialized Sequence._copyContents(initializing:)(v13, (v3 + 4), v2, v5, a2);
    if (result != v2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3[2];
  if (v6 < 2)
  {
    return v3;
  }

  v7 = v6 >> 1;
  v8 = v6 + 7;
  for (i = 8; ; ++i)
  {
    if (i == v8)
    {
      goto LABEL_8;
    }

    v10 = v3[2];
    if (i - 8 >= v10)
    {
      break;
    }

    if (v8 - 8 >= v10)
    {
      goto LABEL_15;
    }

    v11 = *(v3 + i);
    v12 = *(v3 + v8);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
    }

    *(v3 + i) = v12;
    *(v3 + v8) = v11;
LABEL_8:
    --v8;
    if (!--v7)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void Interpreter.Storage.Types.init(symbols:)(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v8 = *(a1 + 6);
  v9 = *(a1 + 2);
  v7 = *(a1 + 10);
  *a2 = swift_slowAlloc();
  *(a2 + 8) = 1000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11InterpreterC0C0V5TypesV7KeypathVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11InterpreterC0C0V5TypesV7KeypathVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C328DC0;
  *(v4 + 32) = xmmword_26C32E070;
  *(v4 + 48) = 1;
  *(v4 + 52) = -1;
  v5 = MEMORY[0x277D84F98];
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = MEMORY[0x277D84F90];
  *(a2 + 96) = 0;
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v6 + 4) = 0;
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(v6);
  if (*(v6 + 5))
  {
    __break(1u);
  }

  else
  {
    *(v6 + 8) = v5;
    *(v6 + 5) = 1;
    os_unfair_lock_unlock(v6);
    *(a2 + 104) = v6;
    *(a2 + 40) = v3;
    *(a2 + 48) = v9;
    *(a2 + 64) = v8;
    *(a2 + 80) = v7;
  }
}

Swift::Void __swiftcall Interpreter.Storage.Types.deallocate()()
{
  v1 = v0[13];
  if (!v1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (*(v1 + 5) == 1)
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v1 + 8, &_sSDy21SwiftUITracingSupport11InterpreterC7StorageV5TypesV12TypeMatchKeyVSbGMd, &_sSDy21SwiftUITracingSupport11InterpreterC7StorageV5TypesV12TypeMatchKeyVSbGMR);
  }

  MEMORY[0x26D69EAB0](v1, -1, -1);
  v0[13] = 0;
  v2 = *v0;
  if (*(v0 + 3))
  {
    v3 = (v2 + 72);
    v4 = *(v0 + 3);
    while (v2)
    {
      if (*v3)
      {
        MEMORY[0x26D69EAB0](*v3, -1, -1);
        *v3 = 0;
      }

      v3 += 15;
      if (!--v4)
      {
        v2 = *v0;
        goto LABEL_11;
      }
    }

    goto LABEL_15;
  }

LABEL_11:
  if (v2)
  {
    swift_arrayDestroy();
    MEMORY[0x26D69EAB0](v2, -1, -1);
    *v0 = 0;
  }
}

uint64_t protocol witness for Sequence.makeIterator() in conformance Interpreter.Storage.Types@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v4 = v2;
  v15[0] = *v1;
  v3 = v15[0];
  v15[1] = v2;
  v5 = v1[3];
  v7 = v5;
  v16 = v1[2];
  v6 = v16;
  v8 = v16;
  v17 = v5;
  *a1 = v15[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v8;
  *(a1 + 48) = v5;
  v9 = v1[5];
  v11 = v9;
  v18 = v1[4];
  v10 = v18;
  v19 = v9;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v20 = v1[6];
  *(a1 + 96) = v20;
  *(a1 + 112) = -1;
  v12 = v1[6];
  v21[5] = v11;
  v21[6] = v12;
  v21[3] = v7;
  v21[4] = v10;
  v21[1] = v4;
  v21[2] = v6;
  v21[0] = v3;
  outlined init with copy of Interpreter.Storage.Types(v15, &v14);
  return outlined destroy of Interpreter.Storage.Types(v21);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Interpreter.Storage.Types()
{
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v6[6] = v0[6];
  v2 = v0[1];
  v6[0] = *v0;
  v6[1] = v2;
  v3 = v0[3];
  v6[2] = v0[2];
  v6[3] = v3;
  v4 = specialized _copySequenceToContiguousArray<A>(_:)(v6);
  outlined destroy of Interpreter.Storage.Types(v6);
  return v4;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance Interpreter.Storage.Types(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  return specialized Sequence._copyContents(initializing:)(a1, a2, a3);
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = v3[5];
  v37 = v3[4];
  v38 = v5;
  v39 = v3[6];
  v6 = v3[1];
  v33 = *v3;
  v34 = v6;
  v7 = v3[3];
  v35 = v3[2];
  v36 = v7;
  v40 = -1;
  if (!a2)
  {
    v8 = 0;
    *(result + 112) = v40;
    v18 = v38;
    *(result + 64) = v37;
    *(result + 80) = v18;
    *(result + 96) = v39;
    goto LABEL_12;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_10:
    v17 = v38;
    *(v4 + 64) = v37;
    *(v4 + 80) = v17;
    *(v4 + 96) = v39;
    *(v4 + 112) = v40;
LABEL_12:
    v19 = v34;
    *v4 = v33;
    *(v4 + 16) = v19;
    v20 = v35;
    v21 = v36;
LABEL_13:
    *(v4 + 32) = v20;
    *(v4 + 48) = v21;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      Interpreter.Storage.Types.Iterator.next()(&v26);
      if (v28 == 0xFF)
      {
        break;
      }

      v11 = v31;
      v12 = *v32;
      v13 = v29;
      *(v9 + 64) = v30;
      *(v9 + 80) = v11;
      *(v9 + 96) = v12;
      v14 = v27;
      v15 = v28;
      *v9 = v26;
      *(v9 + 16) = v14;
      *(v9 + 110) = *&v32[14];
      *(v9 + 32) = v15;
      *(v9 + 48) = v13;
      if (v8 == v10)
      {
        goto LABEL_10;
      }

      v9 += 120;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v24[4] = v30;
    v24[5] = v31;
    *v25 = *v32;
    v24[0] = v26;
    v24[1] = v27;
    *&v25[14] = *&v32[14];
    v24[2] = v28;
    v24[3] = v29;
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v24, &_s21SwiftUITracingSupport5PTypeVSgMd, &_s21SwiftUITracingSupport5PTypeVSgMR);
    v22 = v38;
    *(v4 + 64) = v37;
    *(v4 + 80) = v22;
    *(v4 + 96) = v39;
    *(v4 + 112) = v40;
    v23 = v34;
    *v4 = v33;
    *(v4 + 16) = v23;
    v20 = v35;
    v21 = v36;
    v8 = v10 - 1;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = HIDWORD(a5);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *result = a4;
    result[1] = a5;
    result[2] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v6 = 0;
      v7 = 1;
      while (a4)
      {
        v8 = a2 + v6;
        v9 = *(a4 + v6 + 8);
        v10 = *(a4 + v6 + 12);
        v11 = *(a4 + v6 + 16);
        v12 = *(a4 + v6 + 24);
        *v8 = *(a4 + v6);
        *(v8 + 8) = v9;
        *(v8 + 12) = v10;
        *(v8 + 16) = v11;
        *(v8 + 24) = v12;
        if (a3 == v7)
        {
          goto LABEL_11;
        }

        ++v7;
        v6 += 32;
        if (32 * v5 == v6)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_13;
    }

LABEL_9:
    a3 = HIDWORD(a5);
    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

{
  v5 = HIDWORD(a5);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *result = a4;
    result[1] = a5;
    result[2] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v6 = 0;
      while (a4)
      {
        *(a2 + 4 * v6) = *(a4 + 4 * v6);
        if (a3 - 1 == v6)
        {
          goto LABEL_11;
        }

        if (v5 == ++v6)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_13;
    }

LABEL_9:
    a3 = HIDWORD(a5);
    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

{
  v5 = HIDWORD(a5);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *result = a4;
    result[1] = a5;
    result[2] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v6 = 0;
      while (a4)
      {
        *(a2 + 8 * v6) = *(a4 + 8 * v6);
        if (a3 - 1 == v6)
        {
          goto LABEL_11;
        }

        if (v5 == ++v6)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_13;
    }

LABEL_9:
    a3 = HIDWORD(a5);
    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Interpreter.Storage.deallocate()()
{
  v1 = v0;
  if ((*(v0 + 32) & 1) == 0)
  {
    v2 = *(v0 + 24);
    if (!v2)
    {
LABEL_25:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    outlined destroy of TraceChunk(*(v1 + 24));
    MEMORY[0x26D69EAB0](v2, -1, -1);
    *(v1 + 8) = v3;
    *(v1 + 16) = v4;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 136);
  Interpreter.Storage.Types.deallocate()();
  outlined destroy of Interpreter.Storage.Types(v5);
  MEMORY[0x26D69EAB0](v5, -1, -1);
  *(v1 + 136) = 0;
  specialized EvolutionTable.deallocate()();
  v6 = *(v1 + 116);
  if (v6)
  {
    v7 = *(v1 + 104);
    v8 = v7;
    while (v7)
    {
      v9 = *v8;
      os_unfair_lock_lock_with_options();
      v10 = *(v9 + 5);
      os_unfair_lock_unlock(v9);
      if (v10 == 1)
      {
        os_unfair_lock_lock_with_options();
        Snapshot.deallocate()();
        os_unfair_lock_unlock(v9);
      }

      MEMORY[0x26D69EAB0](v9, -1, -1);
      *v8++ = 0;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_10:
  v11 = *(v1 + 104);
  if (v11)
  {
    MEMORY[0x26D69EAB0](v11, -1, -1);
    *(v1 + 104) = 0;
  }

  v12 = *(v1 + 144);
  if (!v12)
  {
    goto LABEL_25;
  }

  outlined destroy of IntervalSet(*(v1 + 144));
  MEMORY[0x26D69EAB0](v12, -1, -1);
  *(v1 + 144) = 0;
  v13 = *(v1 + 176);
  if (*v13)
  {
    MEMORY[0x26D69EAB0](*v13, -1, -1);
    *v13 = 0;
  }

  MEMORY[0x26D69EAB0](v13, -1, -1);
  *(v1 + 176) = 0;
  v14 = *(v1 + 184);
  if (!v14)
  {
    goto LABEL_25;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](*(v1 + 184), &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMd, &_s21SwiftUITracingSupport8DepthMapVyAA8EventRefVGMR);
  MEMORY[0x26D69EAB0](v14, -1, -1);
  *(v1 + 184) = 0;
  v15 = *(v1 + 120);
  v16 = *(v1 + 132);
  if (v16)
  {
    if (!v15)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v17 = *(v1 + 120);
    do
    {
      v18 = *v17++;
      MEMORY[0x26D69EAB0](v18, -1, -1);
      --v16;
    }

    while (v16);
  }

  if (v15)
  {
    MEMORY[0x26D69EAB0](v15, -1, -1);
    *(v1 + 120) = 0;
  }
}

uint64_t (*Interpreter.Storage.subscript.modify(uint64_t (**a1)(), unsigned __int8 a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  if (*(v2 + 116) <= a2)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 104);
    if (v6)
    {
      *(result + 4) = specialized Atomic.subscript.modify(result, 1, *(v6 + 8 * a2));
      return UnsafeTree.storage.modify;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*Interpreter.Storage.subscript.read(uint64_t a1, unsigned __int8 a2))(void)
{
  if (*(v2 + 116) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 104);
    if (v3)
    {
      v4 = *(v3 + 8 * a2);
      os_unfair_lock_lock_with_options();
      v5 = *(v4 + 8);
      os_unfair_lock_unlock(v4);
      return EventTreeStats.count.modify;
    }
  }

  __break(1u);
  return result;
}

void Interpreter.Storage.subscript.setter(uint64_t a1, unsigned __int8 a2)
{
  if (*(v2 + 116) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v2 + 104);
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = *(v3 + 8 * a2);
  os_unfair_lock_lock_with_options();
  *(v5 + 8) = a1;

  os_unfair_lock_unlock(v5);
}

uint64_t Interpreter.Storage.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v11 = a2 & 1;
  v12 = HIDWORD(a2);
  return _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in Interpreter.Storage.subscript.getter, v10, &type metadata for Interpreter.Storage, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], a8);
}

uint64_t closure #1 in Interpreter.Storage.subscript.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = HIDWORD(a3);
  v6 = (a1 + 40);
  v7 = *(a1 + 56);
  v90[0] = *(a1 + 40);
  v90[1] = v7;
  v91[0] = *(a1 + 72);
  v8 = (a1 + 72);
  v9 = (a1 + 84);
  v10 = (a1 + 88);
  v11 = a2;
  v12 = 8 * a2;
  *(v91 + 9) = *(a1 + 81);
  v13 = (a1 + 40);
  v14 = (a1 + 72);
  v15 = (a1 + 84);
  v16 = (a1 + 88);
  v92 = a2;
  while (1)
  {
    v17 = *v16;
    if (a2 < *v15)
    {
      v18 = (*v14 + v12);
      if ((v18[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v17)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(a2, 0, v90);
    }

    v14 = (v17 + 32);
    v15 = (v17 + 44);
    v16 = (v17 + 48);
    v13 = v17;
  }

  v19 = *v13;
  if (!v19)
  {
    goto LABEL_56;
  }

  v20 = (v19 + 24 * *v18);
  v21 = *v20;
  v22 = *(*v20 + 196);
  v23 = 0uLL;
  if (!v22)
  {
LABEL_38:
    v38 = 0;
    v39 = 0;
    v27 = v92;
    goto LABEL_39;
  }

  v24 = *(v21 + 184);
  if (!v24)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v25 = v22 - 1;
  if (v5 <= *(v24 + 32 * (v22 - 1)))
  {
    v30 = v22 >> 1;
    v31 = *(v24 + 32 * (v22 >> 1));
    if (v22 != 1 && v31 != v5)
    {
      v56 = *(v21 + 184);
      if (v5 >= v31)
      {
        v34 = v30 + 1;
        v33 = v5;
        v30 = v22;
      }

      else
      {
        v33 = v5;
        v34 = 0;
      }

      v40 = specialized Collection<>.binarySearch(for:)(v33, v34, v30, v24, *(v21 + 192) | (v22 << 32));
      if (v41)
      {
        v30 = v22 - 1;
      }

      else
      {
        v30 = v40;
      }

      v23 = 0uLL;
      v24 = v56;
    }

    v42 = (v24 + 32 * v30);
    v25 = v30;
    while (v30 < v22)
    {
      if (*v42 <= v5)
      {
        goto LABEL_11;
      }

      if (!v25)
      {
        goto LABEL_38;
      }

      --v25;
      v42 -= 8;
      if (v25 > v22)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_11:
  v26 = v6[1];
  v88[0] = *v6;
  v88[1] = v26;
  v89[0] = v6[2];
  *(v89 + 9) = *(v6 + 41);
  v27 = v92;
  while (1)
  {
    v28 = *v10;
    if (v11 < *v9)
    {
      v29 = (*v8 + v12);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v92, 0, v88);
    }

    v8 = (v28 + 32);
    v9 = (v28 + 44);
    v10 = (v28 + 48);
    v6 = v28;
  }

  if (!*v6)
  {
    goto LABEL_58;
  }

  v35 = *v6 + 24 * *v29;
  if (v25 >= *(*v35 + 196))
  {
    goto LABEL_51;
  }

  v36 = *(*v35 + 184);
  if (!v36)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v37 = (v36 + 32 * v25);
  v38 = *v37;
  v39 = *(v37 + 1);
  v23 = *(v37 + 1);
LABEL_39:
  v80 = a3 & 1;
  *&v60 = v27;
  *(&v60 + 1) = a3 & 0xFFFFFFFF00000001;
  *&v61 = v38;
  *(&v61 + 1) = v39;
  v62 = v23;
  LOBYTE(v63) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(a1, &v60, 0, 0, v73);
  if (Interpreter.Iterator.read()())
  {
    v86[0] = *&v74[8];
    v86[1] = *&v74[24];
    v87[0] = *&v74[40];
    *(v87 + 9) = *&v74[49];
    v43 = *&v74[8];
    v44 = *&v74[40];
    v45 = *&v74[56];
    if (*&v74[68] >= *&v74[52])
    {
      goto LABEL_42;
    }

    while (1)
    {
      v46 = (v44 + 8 * *&v74[68]);
      if ((v46[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_42:
        if (!v45)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(*&v74[68], 0, v86);
        }

        v43 = *v45;
        v44 = v45[4];
        v47 = *(v45 + 11);
        v45 = v45[6];
      }

      while (*&v74[68] >= v47);
    }

    if (!v43)
    {
      goto LABEL_57;
    }

    v48 = (v43 + 24 * *v46);
    v49 = *v48;
    v50 = *(*v48 + 96);
    if (v50 != 2)
    {
      v51 = *(v49 + 104);
      v52 = *(v49 + 88);
      v81 = *(v49 + 72);
      v82 = v52;
      v83 = v50 & 0x101;
      v84 = HIDWORD(v50);
      v85 = v51 & 1;
      v53 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
      if ((v54 & 1) == 0)
      {
        v70 = v77;
        v71 = v78;
        v72 = v79;
        v66 = *&v74[48];
        v67 = *&v74[64];
        v68 = v75;
        v69 = v76;
        v62 = v73[2];
        v63 = *v74;
        v64 = *&v74[16];
        v65 = *&v74[32];
        v60 = v73[0];
        v61 = v73[1];
        (*(a5 + 16))(v53);
        return specialized EvolutionTable.deallocate()();
      }

      goto LABEL_53;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_59:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t (*Interpreter.Storage.subscript.modify(uint64_t *a1, unsigned __int8 a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *(v5 + 32) = specialized UnsafeArray.subscript.modify(v5, a2, *(v2 + 104), *(v2 + 112));
  return UnsafeTree.storage.modify;
}

uint64_t (*Interpreter.Storage.subscript.read(uint64_t a1, unsigned __int8 a2))()
{
  if (*(v2 + 116) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 104);
    if (v3)
    {
      v4 = *(v3 + 8 * a2);
      return EventTreeStats.count.modify;
    }
  }

  __break(1u);
  return result;
}

uint64_t Interpreter.Storage.subscript.setter(uint64_t result, unsigned __int8 a2)
{
  if (*(v2 + 116) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 104);
    if (v3)
    {
      *(v3 + 8 * a2) = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*Interpreter.Storage.subscript.read(uint64_t a1, unsigned __int8 a2, char a3))(void)
{
  if (*(v3 + 116) <= a2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v3 + 104);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 8 * a2);
  if (a3)
  {
    os_unfair_lock_lock_with_options();
    v6 = *(v5 + 8);
    os_unfair_lock_unlock(v5);
  }

  else
  {
    os_unfair_lock_assert_owner(*(v4 + 8 * a2));
    v7 = *(v5 + 8);
  }

  return EventTreeStats.count.modify;
}

void Interpreter.Storage.subscript.setter(uint64_t a1, unsigned __int8 a2, char a3)
{
  if (*(v3 + 116) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(v3 + 104);
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = *(v4 + 8 * a2);
  if (a3)
  {
    os_unfair_lock_lock_with_options();
    *(v6 + 8) = a1;

    os_unfair_lock_unlock(v6);
  }

  else
  {
    os_unfair_lock_assert_owner(*(v4 + 8 * a2));
    *(v6 + 8) = a1;
  }
}

uint64_t (*Interpreter.Storage.subscript.read(uint64_t *a1, unsigned __int8 a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x48uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  if (v5)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(*(v8 - 8) + 64));
  }

  v11 = v10;
  v7[7] = v10;
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  if (v5)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(*(v12 - 8) + 64));
  }

  v7[8] = result;
  if (*(v2 + 116) <= a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = *(v2 + 104);
  if (!v15)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v16 = *(v15 + 8 * a2);
  if ((*(v16 + 4) & 1) == 0)
  {
    v20 = result;
    os_unfair_lock_lock_with_options();
    *(v16 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v22 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v7[4] = partial apply for specialized closure #1 in Atomic.subscript.read;
    v7[5] = v17;
    *v7 = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v7[3] = &block_descriptor_1;
    v21 = _Block_copy(v7);
    v18 = v7[5];

    static DispatchQoS.unspecified.getter();
    v7[6] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v20, v11, v21);
    _Block_release(v21);

    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v20, v12);
  }

  v19 = *(v16 + 8);
  return Interpreter.Storage.subscript.read;
}

uint64_t *Interpreter.Storage.subscript.modify(uint64_t **a1, unsigned __int8 a2)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  if (*(v2 + 116) <= a2)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 104);
    if (v6)
    {
      result[4] = specialized Atomic.subscript.modify(result, 1, *(v6 + 8 * a2));
      return UnsafeTree.storage.modify;
    }
  }

  __break(1u);
  return result;
}
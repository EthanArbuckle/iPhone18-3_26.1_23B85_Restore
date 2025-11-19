void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1[2];

  if (!v7 || !a2[2])
  {
    goto LABEL_25;
  }

  v8 = a1[4];
  v9 = a1[5];
  v54 = a2;
  v55 = a1;
  v10 = a2[4];
  v11 = a2[5];
  v12 = *a4;

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v13;
  if (v12[3] >= v17)
  {
    if (a3)
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v22 = swift_allocError();
    swift_willThrow();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_32;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
  v19 = *a4;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_31:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_32:
    _StringGuts.grow(_:)(30);
    MEMORY[0x26670F080](0xD00000000000001BLL, 0x8000000261994A30);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26670F080](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v14 = v20;
  if (v18)
  {
    goto LABEL_10;
  }

LABEL_13:
  v24 = *a4;
  *(*a4 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v25 = (v24[6] + 16 * v14);
  *v25 = v8;
  v25[1] = v9;
  v26 = (v24[7] + 16 * v14);
  *v26 = v10;
  v26[1] = v11;
  v27 = v24[2];
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24[2] = v29;
  v30 = v54;
  v31 = v55[2];
  if (v31 != 1)
  {
    v32 = v55 + 7;
    v33 = v54 + 7;
    v34 = 1;
    while (v34 < v31)
    {
      v35 = v30[2];
      if (v34 == v35)
      {
        goto LABEL_25;
      }

      if (v34 >= v35)
      {
        goto LABEL_30;
      }

      v37 = *(v32 - 1);
      v36 = *v32;
      v38 = *(v33 - 1);
      v39 = *v33;
      v40 = *a4;

      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v36);
      v43 = v40[2];
      v44 = (v42 & 1) == 0;
      v28 = __OFADD__(v43, v44);
      v45 = v43 + v44;
      if (v28)
      {
        goto LABEL_27;
      }

      v46 = v42;
      if (v40[3] < v45)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, 1);
        v47 = *a4;
        v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v36);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_31;
        }
      }

      if (v46)
      {
        goto LABEL_10;
      }

      v49 = *a4;
      *(*a4 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      v50 = (v49[6] + 16 * v41);
      *v50 = v37;
      v50[1] = v36;
      v51 = (v49[7] + 16 * v41);
      *v51 = v38;
      v51[1] = v39;
      v52 = v49[2];
      v28 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v28)
      {
        goto LABEL_28;
      }

      ++v34;
      v49[2] = v53;
      v30 = v54;
      v31 = v55[2];
      v32 += 2;
      v33 += 2;
      if (v34 == v31)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_29;
  }

LABEL_25:

  swift_bridgeObjectRelease_n();
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMd, &_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v24 = *a4;
    v4 = (*a4 + 16 * a3);
    v5 = result - a3;
LABEL_5:
    v22 = v4;
    v23 = a3;
    v6 = (v24 + 16 * a3);
    v8 = *v6;
    v7 = v6[1];
    v21 = v5;
    while (1)
    {
      v9 = *(v4 - 2);
      v27 = *(v4 - 1);

      AnimationResource.definition.getter();
      __swift_project_boxed_opaque_existential_1(v25, v26);
      dispatch thunk of AnimationDefinition.duration.getter();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_0(v25);
      AnimationResource.definition.getter();
      __swift_project_boxed_opaque_existential_1(v25, v26);
      dispatch thunk of AnimationDefinition.duration.getter();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0(v25);
      if (v11 >= v13)
      {
        if (v11 != v13)
        {

LABEL_4:
          a3 = v23 + 1;
          v4 = v22 + 2;
          v5 = v21 - 1;
          if (v23 + 1 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }

        AnimationResource.definition.getter();
        __swift_project_boxed_opaque_existential_1(v25, v26);
        dispatch thunk of AnimationDefinition.delay.getter();
        v15 = v14;
        __swift_destroy_boxed_opaque_existential_0(v25);
        AnimationResource.definition.getter();
        __swift_project_boxed_opaque_existential_1(v25, v26);
        dispatch thunk of AnimationDefinition.delay.getter();
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_0(v25);

        if (v15 >= v17 && (v15 != v17 || v7 >= v27))
        {
          goto LABEL_4;
        }
      }

      else
      {
      }

      if (!v24)
      {
        break;
      }

      v18 = *v4;
      v7 = v4[1];
      *v4 = *(v4 - 1);
      *(v4 - 1) = v7;
      *(v4 - 2) = v18;
      v4 -= 2;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v110 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_106:
    v18 = *v110;
    if (!*v110)
    {
      goto LABEL_147;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_109:
      v124 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*v7)
        {
          v102 = *(result + 16 * v4);
          v103 = result;
          v104 = *(result + 16 * (v4 - 1) + 40);
          specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v102), (*v7 + 16 * *(result + 16 * (v4 - 1) + 32)), (*v7 + 16 * v104), v18);
          if (v6)
          {
          }

          if (v104 < v102)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = specialized _ArrayBuffer._consumeAndCreateNew()(v103);
          }

          if (v4 - 2 >= *(v103 + 2))
          {
            goto LABEL_135;
          }

          v105 = &v103[16 * v4];
          *v105 = v102;
          *(v105 + 1) = v104;
          v124 = v103;
          specialized Array.remove(at:)(v4 - 1);
          result = v124;
          v4 = *(v124 + 16);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_145;
      }
    }

LABEL_141:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    goto LABEL_109;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      v18 = v9 + 1;
    }

    else
    {
      v108 = v10;
      v12 = *v7;
      v13 = (*v7 + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
      v122[0] = v15;
      v122[1] = v14;
      v4 = v12 + 16 * v9;
      v16 = *(v4 + 8);
      v121[0] = *v4;
      v121[1] = v16;

      v17 = v6;
      v119 = closure #4 in closure #1 in TimelineBuilder.run(inputs:)(v122, v121);
      if (v6)
      {
      }

      v18 = v9 + 2;
      if (v9 + 2 < v8)
      {
        v4 += 24;
        v115 = v8;
        v117 = 2 - v8;
        while (1)
        {
          v20 = *(v4 + 8);
          v19 = *(v4 + 16);
          v22 = *(v4 - 8);
          v21 = *v4;

          AnimationResource.definition.getter();
          __swift_project_boxed_opaque_existential_1(v122, v123);
          dispatch thunk of AnimationDefinition.duration.getter();
          v24 = v23;
          __swift_destroy_boxed_opaque_existential_0(v122);
          AnimationResource.definition.getter();
          __swift_project_boxed_opaque_existential_1(v122, v123);
          dispatch thunk of AnimationDefinition.duration.getter();
          v26 = v25;
          __swift_destroy_boxed_opaque_existential_0(v122);
          if (v24 < v26)
          {
          }

          else
          {
            if (v24 != v26)
            {

LABEL_17:
              v7 = a3;
              if (v119)
              {
                v18 = v11 + 1;
                v6 = v17;
                v10 = v108;
                goto LABEL_22;
              }

              goto LABEL_10;
            }

            AnimationResource.definition.getter();
            __swift_project_boxed_opaque_existential_1(v122, v123);
            dispatch thunk of AnimationDefinition.delay.getter();
            v28 = v27;
            __swift_destroy_boxed_opaque_existential_0(v122);
            AnimationResource.definition.getter();
            __swift_project_boxed_opaque_existential_1(v122, v123);
            dispatch thunk of AnimationDefinition.delay.getter();
            v30 = v29;
            __swift_destroy_boxed_opaque_existential_0(v122);

            if (v28 >= v30 && (v28 != v30 || v19 >= v21))
            {
              goto LABEL_17;
            }
          }

          v7 = a3;
          if (!v119)
          {
            v18 = v11 + 1;
            v6 = v17;
            v10 = v108;
            goto LABEL_30;
          }

LABEL_10:
          ++v11;
          v4 += 16;
          if (v117 + v11 == 1)
          {
            v18 = v115;
            v6 = v17;
            break;
          }
        }
      }

      v10 = v108;
      if (v119)
      {
LABEL_22:
        if (v18 < v9)
        {
          goto LABEL_140;
        }

        if (v9 <= v11)
        {
          v31 = 0;
          v32 = 16 * v18;
          v33 = 16 * v9;
          v34 = v9;
          do
          {
            if (v34 != v18 + v31 - 1)
            {
              v35 = *v7;
              if (!*v7)
              {
                goto LABEL_144;
              }

              v36 = (v35 + v33);
              v37 = v35 + v32;
              v38 = *v36;
              v39 = v36[1];
              *v36 = *(v37 - 16);
              *(v37 - 16) = v38;
              *(v37 - 8) = v39;
            }

            ++v34;
            --v31;
            v32 -= 16;
            v33 += 16;
          }

          while (v34 < v18 + v31);
        }
      }
    }

LABEL_30:
    v40 = v7[1];
    if (v18 < v40)
    {
      if (__OFSUB__(v18, v9))
      {
        goto LABEL_137;
      }

      if (v18 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v18 < v9)
    {
      goto LABEL_136;
    }

    v56 = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v10 = v56;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 16) + 1, 1, v56);
      v10 = result;
    }

    v4 = *(v10 + 16);
    v57 = *(v10 + 24);
    v58 = v4 + 1;
    if (v4 >= v57 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v4 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v58;
    v59 = v10 + 16 * v4;
    *(v59 + 32) = v9;
    *(v59 + 40) = v18;
    v60 = *v110;
    if (!*v110)
    {
      goto LABEL_146;
    }

    v9 = v18;
    if (v4)
    {
      while (1)
      {
        v61 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v10 + 32);
          v63 = *(v10 + 40);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_73:
          if (v65)
          {
            goto LABEL_125;
          }

          v78 = (v10 + 16 * v58);
          v80 = *v78;
          v79 = v78[1];
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_128;
          }

          v84 = (v10 + 32 + 16 * v61);
          v86 = *v84;
          v85 = v84[1];
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_132;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v58 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v88 = (v10 + 16 * v58);
        v90 = *v88;
        v89 = v88[1];
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_87:
        if (v83)
        {
          goto LABEL_127;
        }

        v91 = v10 + 16 * v61;
        v93 = *(v91 + 32);
        v92 = *(v91 + 40);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_130;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_94:
        v4 = v61 - 1;
        if (v61 - 1 >= v58)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v7)
        {
          goto LABEL_143;
        }

        v18 = v10;
        v99 = *(v10 + 32 + 16 * v4);
        v100 = *(v10 + 32 + 16 * v61 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v99), (*v7 + 16 * *(v10 + 32 + 16 * v61)), (*v7 + 16 * v100), v60);
        if (v6)
        {
        }

        if (v100 < v99)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
        }

        if (v4 >= *(v18 + 16))
        {
          goto LABEL_122;
        }

        v101 = v18 + 16 * v4;
        *(v101 + 32) = v99;
        *(v101 + 40) = v100;
        v124 = v18;
        result = specialized Array.remove(at:)(v61);
        v10 = v124;
        v58 = *(v124 + 16);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = v10 + 32 + 16 * v58;
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_123;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_124;
      }

      v73 = (v10 + 16 * v58);
      v75 = *v73;
      v74 = v73[1];
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_126;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_129;
      }

      if (v77 >= v69)
      {
        v95 = (v10 + 32 + 16 * v61);
        v97 = *v95;
        v96 = v95[1];
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_133;
        }

        if (v64 < v98)
        {
          v61 = v58 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v8 = v7[1];
    if (v9 >= v8)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_138;
  }

  if (v9 + a4 < v40)
  {
    v40 = v9 + a4;
  }

  if (v40 < v9)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v18 == v40)
  {
    goto LABEL_53;
  }

  v109 = v10;
  v106 = v6;
  v118 = *v7;
  v4 = *v7 + 16 * v18;
  v41 = v9 - v18;
  v111 = v40;
LABEL_40:
  v114 = v4;
  v116 = v18;
  v42 = (v118 + 16 * v18);
  v44 = *v42;
  v43 = v42[1];
  v113 = v41;
  while (1)
  {
    v45 = *(v4 - 16);
    v120 = *(v4 - 8);

    AnimationResource.definition.getter();
    __swift_project_boxed_opaque_existential_1(v122, v123);
    dispatch thunk of AnimationDefinition.duration.getter();
    v47 = v46;
    __swift_destroy_boxed_opaque_existential_0(v122);
    AnimationResource.definition.getter();
    __swift_project_boxed_opaque_existential_1(v122, v123);
    dispatch thunk of AnimationDefinition.duration.getter();
    v49 = v48;
    __swift_destroy_boxed_opaque_existential_0(v122);
    if (v47 >= v49)
    {
      if (v47 != v49)
      {

LABEL_39:
        ++v18;
        v4 = v114 + 16;
        v41 = v113 - 1;
        if (v116 + 1 == v111)
        {
          v18 = v111;
          v6 = v106;
          v7 = a3;
          v10 = v109;
          goto LABEL_53;
        }

        goto LABEL_40;
      }

      AnimationResource.definition.getter();
      __swift_project_boxed_opaque_existential_1(v122, v123);
      dispatch thunk of AnimationDefinition.delay.getter();
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_0(v122);
      AnimationResource.definition.getter();
      __swift_project_boxed_opaque_existential_1(v122, v123);
      dispatch thunk of AnimationDefinition.delay.getter();
      v53 = v52;
      __swift_destroy_boxed_opaque_existential_0(v122);

      if (v51 >= v53 && (v51 != v53 || v43 >= v120))
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    if (!v118)
    {
      break;
    }

    v54 = *v4;
    v43 = *(v4 + 8);
    *v4 = *(v4 - 16);
    *(v4 - 8) = v43;
    *(v4 - 16) = v54;
    v4 -= 16;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __dst - __src;
  v8 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v12] <= a4)
    {
      memmove(a4, __dst, 16 * v12);
    }

    v49 = &v4[16 * v12];
    if (v10 >= 16 && v6 > __src)
    {
LABEL_30:
      v42 = v6 - 16;
      v5 -= 16;
      v28 = v49;
      do
      {
        v30 = *(v28 - 2);
        v29 = *(v28 - 1);
        v28 -= 16;
        v46 = v29;
        v32 = *(v6 - 2);
        v31 = *(v6 - 1);

        AnimationResource.definition.getter();
        __swift_project_boxed_opaque_existential_1(v47, v48);
        dispatch thunk of AnimationDefinition.duration.getter();
        v34 = v33;
        __swift_destroy_boxed_opaque_existential_0(v47);
        AnimationResource.definition.getter();
        __swift_project_boxed_opaque_existential_1(v47, v48);
        dispatch thunk of AnimationDefinition.duration.getter();
        v36 = v35;
        __swift_destroy_boxed_opaque_existential_0(v47);
        if (v34 < v36)
        {

LABEL_41:
          if (v5 + 16 != v6)
          {
            *v5 = *v42;
          }

          if (v49 <= v4 || (v6 -= 16, v42 <= __src))
          {
            v6 = v42;
            goto LABEL_49;
          }

          goto LABEL_30;
        }

        if (v34 == v36)
        {
          AnimationResource.definition.getter();
          __swift_project_boxed_opaque_existential_1(v47, v48);
          dispatch thunk of AnimationDefinition.delay.getter();
          v38 = v37;
          __swift_destroy_boxed_opaque_existential_0(v47);
          AnimationResource.definition.getter();
          __swift_project_boxed_opaque_existential_1(v47, v48);
          dispatch thunk of AnimationDefinition.delay.getter();
          v40 = v39;
          __swift_destroy_boxed_opaque_existential_0(v47);

          if (v38 < v40 || v38 == v40 && v46 < v31)
          {
            goto LABEL_41;
          }
        }

        else
        {
        }

        if (v5 + 16 != v49)
        {
          *v5 = *v28;
        }

        v5 -= 16;
        v49 = v28;
      }

      while (v28 > v4);
      v49 = v28;
    }
  }

  else
  {
    v13 = __src;
    if (a4 != __src || &__src[16 * v9] <= a4)
    {
      memmove(a4, __src, 16 * v9);
    }

    v49 = &v4[16 * v9];
    if (v7 >= 16 && v6 < v5)
    {
      while (1)
      {
        v14 = v5;
        v15 = *v6;
        v16 = *v4;
        v17 = v4;
        v44 = *(v4 + 1);
        v45 = *(v6 + 1);

        AnimationResource.definition.getter();
        __swift_project_boxed_opaque_existential_1(v47, v48);
        dispatch thunk of AnimationDefinition.duration.getter();
        v19 = v18;
        __swift_destroy_boxed_opaque_existential_0(v47);
        AnimationResource.definition.getter();
        __swift_project_boxed_opaque_existential_1(v47, v48);
        dispatch thunk of AnimationDefinition.duration.getter();
        v21 = v20;
        __swift_destroy_boxed_opaque_existential_0(v47);
        if (v19 < v21)
        {
          break;
        }

        if (v19 == v21)
        {
          AnimationResource.definition.getter();
          __swift_project_boxed_opaque_existential_1(v47, v48);
          dispatch thunk of AnimationDefinition.delay.getter();
          v23 = v22;
          __swift_destroy_boxed_opaque_existential_0(v47);
          AnimationResource.definition.getter();
          __swift_project_boxed_opaque_existential_1(v47, v48);
          dispatch thunk of AnimationDefinition.delay.getter();
          v25 = v24;
          __swift_destroy_boxed_opaque_existential_0(v47);

          if (v23 < v25 || v23 == v25 && v45 < v44)
          {
            goto LABEL_18;
          }
        }

        else
        {
        }

        v26 = v4;
        v4 += 16;
        if (v13 != v17)
        {
          goto LABEL_19;
        }

LABEL_20:
        v13 += 16;
        if (v4 < v49)
        {
          v5 = v14;
          if (v6 < v14)
          {
            continue;
          }
        }

        goto LABEL_46;
      }

LABEL_18:
      v26 = v6;
      v27 = v13 == v6;
      v6 += 16;
      if (v27)
      {
        goto LABEL_20;
      }

LABEL_19:
      *v13 = *v26;
      goto LABEL_20;
    }

LABEL_46:
    v6 = v13;
  }

LABEL_49:
  if (v6 != v4 || v6 >= &v4[(v49 - v4 + (v49 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v49 - v4) / 16));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized TimelineTrackAndActionBuilder.stageSubscription.getter()
{
  v0 = closure #1 in TimelineTrackAndActionBuilder.stageSubscription.getter();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  return v1;
}

uint64_t specialized TimelineBuilder.stageSubscription.getter()
{
  if (one-time initialization token for primType != -1)
  {
    swift_once();
  }

  v10 = static TimelineConstants.Timeline.primType;
  v0 = static TimelineConstants.Timeline.primType;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v10 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  v5 = v10;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v6 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v5, 0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26198A640;
  *(v7 + 32) = v6;
  v10 = v3;

  specialized Sequence.forEach(_:)(v7);

  swift_setDeallocating();
  v8 = *(v7 + 16);
  swift_arrayDestroy();
  return v10;
}

uint64_t specialized TimelineBuilder.inputDescriptors()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO15InputDescriptorOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198AB50;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v2 = static EntityBuilder.OutputName;
  v1 = qword_27FEBC3A0;
  v3 = one-time initialization token for OutputIdentifier;

  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static EntityBuilder.OutputIdentifier;
  v4 = *algn_27FEC8E68;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 80) = 112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26198AB50;
  v7 = one-time initialization token for primType;
  swift_bridgeObjectRetain_n();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = static TimelineConstants.Track.primType;
  *(v6 + 32) = static TimelineConstants.Track.primType;
  v9 = one-time initialization token for primType;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static TimelineConstants.Action.primType;
  *(v6 + 40) = static TimelineConstants.Action.primType;
  v12 = one-time initialization token for realityKitStruct;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = static ToolsFoundations.Token.realityKitStruct;
  *(v6 + 48) = static ToolsFoundations.Token.realityKitStruct;
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x8000000261994940;
  *(inited + 104) = 0xD000000000000027;
  *(inited + 112) = 0x8000000261994210;
  *(inited + 120) = v6;
  *(inited + 128) = 1;
  *(inited + 136) = 64;
  *(inited + 144) = 0xD000000000000010;
  *(inited + 152) = 0x8000000261994960;
  *(inited + 160) = v5;
  *(inited + 168) = v4;
  *(inited + 176) = closure #1 in TimelineBuilder.inputDescriptors();
  *(inited + 184) = 0;
  *(inited + 192) = -127;
  v15 = v14;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO15InputDescriptorO_Tt0g5Tf4g_n(inited);
  v17 = v16;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v17;
}

double specialized TimelineBuilder.startTimeAndDuration(for:)()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v1 = v0;
  v2 = COERCE_DOUBLE(_s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5());
  v4 = v3;

  if (String.count.getter() < 1)
  {
    v5 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v5 = RIOPxrTfTokenCreateWithCString();
  }

  v6 = v5;
  if (v4)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5();

  return v7;
}

uint64_t specialized TimelineBuilder.handleLooping(action:for:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, double), uint64_t a4)
{
  v7 = type metadata accessor for AnimationFillMode();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AnimationRepeatMode();
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v31);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v28 - v18;
  v20 = a3(0, v17);
  v33 = v20;
  v34 = a4;
  v28[2] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  v22 = *(*(v20 - 8) + 16);
  v28[1] = boxed_opaque_existential_1;
  v22(boxed_opaque_existential_1, a1, v20);
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  if (String.count.getter() < 1)
  {
    v23 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v23 = RIOPxrTfTokenCreateWithCString();
  }

  v24 = v23;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSd_Tt1B5();

  __swift_project_boxed_opaque_existential_1(v32, v33);
  type metadata accessor for AnimationResource();
  v25 = type metadata accessor for BindTarget();
  (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  (*(v11 + 104))(v14, *MEMORY[0x277CDB420], v31);
  default argument 6 of static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
  v26 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
  (*(v29 + 8))(v10, v30);
  (*(v11 + 8))(v14, v31);
  outlined destroy of Any?(v19, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v26;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_9;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
    }
  }

  if (v1 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSs12Zip2SequenceVySaySSGAGGTt0g5Tf4g_n(void *a1, void *a2)
{
  if (a2[2] >= a1[2])
  {
    v4 = a1[2];
  }

  else
  {
    v4 = a2[2];
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v7 = v5;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, 1, &v7);
  return v7;
}

uint64_t specialized TimelineBuilder.createNotificationAction(for:inputs:)(unint64_t a1)
{
  v2 = type metadata accessor for AnimationFillMode();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AnimationRepeatMode();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v62 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v50 - v13;
  v61 = type metadata accessor for NotificationAction();
  v58 = *(v61 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for targetPathAttributeName != -1)
  {
    goto LABEL_46;
  }

LABEL_2:
  v63 = a1;
  v16 = *(a1 + 16);
  v17 = static ToolsFoundations.Token.targetPathAttributeName;
  if (!RIOPxrUsdPrimHasRelationship())
  {

    v64 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v64);
    return 0;
  }

  v18 = RIOPxrUsdPrimCopyRelationship();

  type metadata accessor for Relationship();
  v19 = swift_allocObject();
  v19[2] = v18;
  Relationship.targets.getter();

  outlined consume of Result<AnyAttribute, Object.Error>(v19, 0);
  if (String.count.getter() <= 0)
  {
    v20 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v20 = RIOPxrTfTokenCreateWithCString();
  }

  v22 = v20;
  v55 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5();
  v24 = v23;

  v54 = v24;
  if (!v24)
  {
    return 0;
  }

  v56 = v8;
  v57 = v7;
  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v26 = Prim.children.getter();
  v7 = v26;
  v51 = v3;
  v52 = v2;
  v50 = v6;
  v53 = v25;
  if (v26 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    if (!v8)
    {
LABEL_48:

      v35 = v57;
      goto LABEL_49;
    }
  }

  else
  {
    v8 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_48;
    }
  }

  a1 = 0;
  v3 = v7 & 0xC000000000000001;
  v6 = (v7 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v3)
    {
      v27 = MEMORY[0x26670F670](a1, v7);
      v28 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
LABEL_22:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (a1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_46:
        swift_once();
        goto LABEL_2;
      }

      v27 = *(v7 + 8 * a1 + 32);

      v28 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_22;
      }
    }

    v29 = *(v27 + 16);
    v2 = RIOPxrUsdPrimCopyTypeName();
    v30 = String.count.getter() < 1 ? RIOPxrTfTokenEmpty() : RIOPxrTfTokenCreateWithCString();
    v31 = v30;
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef);
    v32 = static _CFObject.== infix(_:_:)();

    if (v32)
    {
      break;
    }

    ++a1;
    if (v28 == v8)
    {
      goto LABEL_48;
    }
  }

  if (String.count.getter() < 1)
  {
    v33 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v33 = RIOPxrTfTokenCreateWithCString();
  }

  v34 = v33;
  v35 = v57;
  v36 = *(v27 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {

    goto LABEL_49;
  }

  v37 = RIOPxrUsdPrimCopyAttribute();
  v38 = RIOPxrUsdAttributeCopyValue();
  if (!v38)
  {

LABEL_34:

    goto LABEL_49;
  }

  v39 = v38;
  v40 = RIOPxrVtValueRef.asStringArray.getter();

  if (!v40)
  {

    goto LABEL_49;
  }

  if (String.count.getter() <= 0)
  {
    v41 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v41 = RIOPxrTfTokenCreateWithCString();
  }

  v34 = v41;
  v42 = *(v27 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {

    goto LABEL_49;
  }

  v37 = RIOPxrUsdPrimCopyAttribute();
  v43 = RIOPxrUsdAttributeCopyValue();
  if (!v43)
  {

    goto LABEL_34;
  }

  v44 = v43;
  v45 = RIOPxrVtValueRef.asStringArray.getter();

  if (v45)
  {

    v53 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSs12Zip2SequenceVySaySSGAGGTt0g5Tf4g_n(v40, v45);
  }

  else
  {
  }

LABEL_49:
  NotificationAction.init(name:customArguments:)();
  specialized TimelineBuilder.startTimeAndDuration(for:)();
  type metadata accessor for AnimationResource();
  v46 = type metadata accessor for BindTarget();
  (*(*(v46 - 8) + 56))(v60, 1, 1, v46);
  (*(v56 + 104))(v62, *MEMORY[0x277CDB418], v35);
  v64 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(&lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode, MEMORY[0x277CDB3E8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
  lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
  v47 = v50;
  v48 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v49 = static AnimationResource.makeActionAnimation<A>(for:duration:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
  (*(v51 + 8))(v47, v48);
  (*(v56 + 8))(v62, v57);
  outlined destroy of Any?(v60, &_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  (*(v58 + 8))(v59, v61);
  return v49;
}

__n128 specialized TimelineBuilder.transform(for:)()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v1 = v0;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5();

  if (String.count.getter() < 1)
  {
    v2 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v2 = RIOPxrTfTokenCreateWithCString();
  }

  v3 = v2;
  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSo10simd_quatfa_Tt1B5();

  if (String.count.getter() < 1)
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v4 = RIOPxrTfTokenCreateWithCString();
  }

  v5 = v4;
  v6 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5();
  v8 = v7;
  v10 = v9;

  v11.i64[0] = v6;
  v11.i64[1] = v8;
  if (v10)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v14 = vbslq_s8(vdupq_n_s32(v12), xmmword_26198AAA0, v11);
  static simd_quatf.identity.getter();
  return v14;
}

uint64_t specialized TimelineBuilder.printDebug(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13AnimationViewVSgMd, &_s17RealityFoundation13AnimationViewVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v47 - v6);
  v8 = type metadata accessor for AnimationView();
  *&v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationGroupVSgMd, &_s17RealityFoundation14AnimationGroupVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v47 - v14;
  v16 = type metadata accessor for AnimationGroup();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16);
  v57 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.debug.getter();
  if (one-time initialization token for timeline != -1)
  {
LABEL_16:
    swift_once();
  }

  v20 = static OS_os_log.timeline;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v21 = swift_allocObject();
  v49 = xmmword_2619891C0;
  *(v21 + 16) = xmmword_2619891C0;
  *(v21 + 56) = MEMORY[0x277D837D0];
  v59 = lazy protocol witness table accessor for type String and conformance String();
  *(v21 + 64) = v59;
  *(v21 + 32) = v61;
  *(v21 + 40) = a3;

  os_log(_:dso:log:_:_:)();

  AnimationResource.definition.getter();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pMd, &_s17RealityFoundation19AnimationDefinition_pMR);
  v22 = swift_dynamicCast();
  v23 = v17[7];
  if (v22)
  {
    v52 = v11;
    v23(v15, 0, 1, v16);
    v47 = v17;
    v24 = v17[4];
    v48 = v16;
    v24(v57, v15, v16);
    v25 = *(AnimationGroup.group.getter() + 16);

    v56 = v25;
    if (v25)
    {
      v17 = 0;
      v11 = (v53 + 56);
      v51 = (v53 + 32);
      v50 = (v53 + 8);
      v16 = 32;
      v53 = xmmword_26198AB70;
      v55 = v20;
      v54 = v11;
      v26 = MEMORY[0x277D837D0];
      do
      {
        v30 = AnimationGroup.group.getter();
        if (v17 >= *(v30 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        v62 = v16;
        outlined init with copy of AnimationDefinition(v30 + v16, v66);

        LODWORD(v61) = static os_log_type_t.debug.getter();
        v15 = swift_allocObject();
        *(v15 + 1) = v53;
        v65[0] = v17;
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v59;
        *(v15 + 7) = v26;
        *(v15 + 8) = v32;
        *(v15 + 4) = v31;
        *(v15 + 5) = v33;
        outlined init with copy of AnimationDefinition(v66, v65);
        v34 = String.init<A>(describing:)();
        *(v15 + 12) = v26;
        *(v15 + 13) = v32;
        *(v15 + 9) = v34;
        *(v15 + 10) = v35;
        a3 = v8;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        dispatch thunk of AnimationDefinition.delay.getter();
        v36 = Double.description.getter();
        *(v15 + 17) = v26;
        *(v15 + 18) = v32;
        *(v15 + 14) = v36;
        *(v15 + 15) = v37;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        dispatch thunk of AnimationDefinition.duration.getter();
        v38 = Double.description.getter();
        *(v15 + 22) = v26;
        *(v15 + 23) = v32;
        *(v15 + 19) = v38;
        *(v15 + 20) = v39;
        os_log(_:dso:log:_:_:)();

        outlined init with copy of AnimationDefinition(v66, v65);
        v11 = v54;
        v40 = swift_dynamicCast();
        v41 = *v11;
        if (v40)
        {
          v41(v7, 0, 1, v8);
          v15 = v52;
          (*v51)(v52, v7, v8);
          AnimationView.source.getter();
          if (v64)
          {
            outlined init with take of AnimationDefinition(&v63, v65);
            static os_log_type_t.debug.getter();
            v42 = swift_allocObject();
            *(v42 + 16) = v49;
            outlined init with copy of AnimationDefinition(v65, &v63);
            v43 = String.init<A>(describing:)();
            v44 = v59;
            *(v42 + 56) = MEMORY[0x277D837D0];
            *(v42 + 64) = v44;
            *(v42 + 32) = v43;
            *(v42 + 40) = v45;
            os_log(_:dso:log:_:_:)();

            __swift_destroy_boxed_opaque_existential_0(v65);
            (*v50)(v15, v8);
            goto LABEL_7;
          }

          (*v50)(v15, v8);
          v27 = &v63;
          v28 = &_s17RealityFoundation19AnimationDefinition_pSgMd;
          v29 = &_s17RealityFoundation19AnimationDefinition_pSgMR;
        }

        else
        {
          v41(v7, 1, 1, v8);
          v27 = v7;
          v28 = &_s17RealityFoundation13AnimationViewVSgMd;
          v29 = &_s17RealityFoundation13AnimationViewVSgMR;
        }

        outlined destroy of Any?(v27, v28, v29);
LABEL_7:
        v17 = (v17 + 1);
        __swift_destroy_boxed_opaque_existential_0(v66);
        v16 = v62 + 40;
      }

      while (v56 != v17);
    }

    return (v47[1])(v57, v48);
  }

  else
  {
    v23(v15, 1, 1, v16);
    outlined destroy of Any?(v15, &_s17RealityFoundation14AnimationGroupVSgMd, &_s17RealityFoundation14AnimationGroupVSgMR);
    static os_log_type_t.debug.getter();
    return os_log(_:dso:log:_:_:)();
  }
}

uint64_t specialized TimelineBuilder.clear(inputs:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25AnimationLibraryComponentVSgMd, &_s17RealityFoundation25AnimationLibraryComponentVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v27 - v2;
  v4 = type metadata accessor for Entity.ComponentSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for AnimationLibraryComponent();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v33);
  if (!v34)
  {
    return outlined destroy of Any?(&v33, &_sypSgMd, &_sypSgMR);
  }

  type metadata accessor for EntityProxy();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v32;
    v31 = Inputs.prim.getter();
    type metadata accessor for Entity();
    v30 = v18;
    static Entity.__fromCore(_:)();
    dispatch thunk of Entity.components.getter();
    Entity.ComponentSet.subscript.getter();
    v19 = *(v5 + 8);
    v19(v11, v4);
    if ((*(v13 + 48))(v3, 1, v12) == 1)
    {

      return outlined destroy of Any?(v3, &_s17RealityFoundation25AnimationLibraryComponentVSgMd, &_s17RealityFoundation25AnimationLibraryComponentVSgMR);
    }

    else
    {
      (*(v13 + 32))(v16, v3, v12);
      v20 = *(v31 + 16);
      v21 = RIOPxrUsdObjectCopyPath();
      v29 = v19;
      v22 = v21;
      v23 = RIOPxrSdfPathCopyString();
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v25;

      v26 = AnimationLibraryComponent.animations.modify();
      MEMORY[0x26670ECE0](0, v24, v28);
      v26(&v33, 0);
      dispatch thunk of Entity.components.getter();
      Entity.ComponentSet.set<A>(_:)();

      v29(v8, v4);
      return (*(v13 + 8))(v16, v12);
    }
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of AnimationDefinition(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
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

uint64_t outlined init with copy of AnimationDefinition(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t type metadata accessor for TimelineBuilder.BindPathWrapper()
{
  result = type metadata singleton initialization cache for TimelineBuilder.BindPathWrapper;
  if (!type metadata singleton initialization cache for TimelineBuilder.BindPathWrapper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of TimelineBuilder.BindPathWrapper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TimelineBuilder.BindPathWrapper(uint64_t a1)
{
  v2 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double partial apply for closure #1 in TimelineBuilder.createReplaceBehaviorAction(for:inputs:)@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  closure #1 in TimelineBuilder.createReplaceBehaviorAction(for:inputs:)(a1, v2[2], a2);
  return result;
}

uint64_t outlined init with take of TimelineBuilder.BindPathWrapper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineBuilder.BindPathWrapper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TimelineBuilder.Error and conformance TimelineBuilder.Error()
{
  result = lazy protocol witness table cache variable for type TimelineBuilder.Error and conformance TimelineBuilder.Error;
  if (!lazy protocol witness table cache variable for type TimelineBuilder.Error and conformance TimelineBuilder.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineBuilder.Error and conformance TimelineBuilder.Error);
  }

  return result;
}

uint64_t outlined init with copy of BindTarget.EntityPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetO10EntityPathVSgMd, &_s17RealityFoundation10BindTargetO10EntityPathVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of BindTarget.EntityPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetO10EntityPathVSgMd, &_s17RealityFoundation10BindTargetO10EntityPathVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [AnimationFillMode] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for TimelineBuilder.Error(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimelineBuilder.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for TimelineBuilder.Error(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for TimelineBuilder.Error(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t type metadata completion function for TimelineBuilder.BindPathWrapper()
{
  v0 = type metadata accessor for BindTarget.EntityPath();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t SceneDescriptionFoundations.ValueTypeName.description.getter()
{
  v1 = *v0;
  v2 = RIOPxrSdfValueTypeNameCopyToken();
  v3 = RIOPxrTfTokenCopyString();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t SceneDescriptionFoundations.ValueTypeName.token.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrSdfValueTypeNameCopyToken();
  *a1 = result;
  return result;
}

unint64_t SceneDescriptionFoundations.ValueTypeName.debugDescription.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(19);

  v2 = RIOPxrSdfValueTypeNameCopyToken();
  v3 = RIOPxrTfTokenCopyString();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x26670F080](v4, v6);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef();
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t SceneDescriptionFoundations.ValueTypeName.hash(into:)()
{
  v1 = *v0;
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef();
  return _CFObject.hash(into:)();
}

uint64_t SceneDescriptionFoundations.ValueTypeName.hashValue.getter()
{
  v2 = *v0;
  lazy protocol witness table accessor for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName();
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SceneDescriptionFoundations.ValueTypeName(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef();
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SceneDescriptionFoundations.ValueTypeName()
{
  v1 = *v0;
  v2 = RIOPxrSdfValueTypeNameCopyToken();
  v3 = RIOPxrTfTokenCopyString();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

unint64_t lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef()
{
  result = lazy protocol witness table cache variable for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef;
  if (!lazy protocol witness table cache variable for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef)
  {
    type metadata accessor for RIOPxrSdfValueTypeNameRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName()
{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.ValueTypeName and conformance SceneDescriptionFoundations.ValueTypeName);
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SceneDescriptionFoundations.ValueTypeName()
{
  v1 = *v0;
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SceneDescriptionFoundations.ValueTypeName()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

void RIOPxrSdfValueTypeNameRef.type.getter()
{
  Bool = RIOPxrSdfValueTypeNameCreateBool();
  type metadata accessor for RIOPxrSdfValueTypeNameRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfValueTypeNameRef and conformance RIOPxrSdfValueTypeNameRef();
  v1 = static _CFObject.== infix(_:_:)();

  if (v1)
  {
    return;
  }

  Int32 = RIOPxrSdfValueTypeNameCreateInt32();
  v3 = static _CFObject.== infix(_:_:)();

  if (v3)
  {
    return;
  }

  Int64 = RIOPxrSdfValueTypeNameCreateInt64();
  v5 = static _CFObject.== infix(_:_:)();

  if (v5)
  {
    return;
  }

  UInt8 = RIOPxrSdfValueTypeNameCreateUInt8();
  v7 = static _CFObject.== infix(_:_:)();

  if (v7)
  {
    return;
  }

  UInt32 = RIOPxrSdfValueTypeNameCreateUInt32();
  v9 = static _CFObject.== infix(_:_:)();

  if (v9)
  {
    return;
  }

  UInt64 = RIOPxrSdfValueTypeNameCreateUInt64();
  v11 = static _CFObject.== infix(_:_:)();

  if (v11)
  {
    return;
  }

  Int2 = RIOPxrSdfValueTypeNameCreateInt2();
  v13 = static _CFObject.== infix(_:_:)();

  if (v13)
  {
    v14 = &_ss5SIMD2Vys5Int32VGMd;
    v15 = &_ss5SIMD2Vys5Int32VGMR;
LABEL_14:

    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    return;
  }

  Int3 = RIOPxrSdfValueTypeNameCreateInt3();
  v17 = static _CFObject.== infix(_:_:)();

  if (v17)
  {
    v14 = &_ss5SIMD3Vys5Int32VGMd;
    v15 = &_ss5SIMD3Vys5Int32VGMR;
    goto LABEL_14;
  }

  Int4 = RIOPxrSdfValueTypeNameCreateInt4();
  v19 = static _CFObject.== infix(_:_:)();

  if (v19)
  {
    v14 = &_ss5SIMD4Vys5Int32VGMd;
    v15 = &_ss5SIMD4Vys5Int32VGMR;
    goto LABEL_14;
  }

  Half = RIOPxrSdfValueTypeNameCreateHalf();
  v21 = static _CFObject.== infix(_:_:)();

  if (v21)
  {
    return;
  }

  Half2 = RIOPxrSdfValueTypeNameCreateHalf2();
  v23 = static _CFObject.== infix(_:_:)();

  if (v23)
  {
    v14 = &_ss5SIMD2Vy9RealityIO4HalfVGMd;
    v15 = &_ss5SIMD2Vy9RealityIO4HalfVGMR;
    goto LABEL_14;
  }

  Half3 = RIOPxrSdfValueTypeNameCreateHalf3();
  v25 = static _CFObject.== infix(_:_:)();

  if (v25)
  {
    v14 = &_ss5SIMD3Vy9RealityIO4HalfVGMd;
    v15 = &_ss5SIMD3Vy9RealityIO4HalfVGMR;
    goto LABEL_14;
  }

  Half4 = RIOPxrSdfValueTypeNameCreateHalf4();
  v27 = static _CFObject.== infix(_:_:)();

  if (v27)
  {
    v14 = &_ss5SIMD4Vy9RealityIO4HalfVGMd;
    v15 = &_ss5SIMD4Vy9RealityIO4HalfVGMR;
    goto LABEL_14;
  }

  Float = RIOPxrSdfValueTypeNameCreateFloat();
  v29 = static _CFObject.== infix(_:_:)();

  if (v29)
  {
    return;
  }

  Float2 = RIOPxrSdfValueTypeNameCreateFloat2();
  v31 = static _CFObject.== infix(_:_:)();

  if (v31)
  {
    v14 = &_ss5SIMD2VySfGMd;
    v15 = &_ss5SIMD2VySfGMR;
    goto LABEL_14;
  }

  Float3 = RIOPxrSdfValueTypeNameCreateFloat3();
  v33 = static _CFObject.== infix(_:_:)();

  if (v33)
  {
    v14 = &_ss5SIMD3VySfGMd;
    v15 = &_ss5SIMD3VySfGMR;
    goto LABEL_14;
  }

  Float4 = RIOPxrSdfValueTypeNameCreateFloat4();
  v35 = static _CFObject.== infix(_:_:)();

  if (v35)
  {
    v14 = &_ss5SIMD4VySfGMd;
    v15 = &_ss5SIMD4VySfGMR;
    goto LABEL_14;
  }

  Double = RIOPxrSdfValueTypeNameCreateDouble();
  v37 = static _CFObject.== infix(_:_:)();

  if (v37)
  {
    return;
  }

  Double2 = RIOPxrSdfValueTypeNameCreateDouble2();
  v39 = static _CFObject.== infix(_:_:)();

  if (v39)
  {
    v14 = &_ss5SIMD2VySdGMd;
    v15 = &_ss5SIMD2VySdGMR;
    goto LABEL_14;
  }

  Double3 = RIOPxrSdfValueTypeNameCreateDouble3();
  v41 = static _CFObject.== infix(_:_:)();

  if (v41)
  {
    v14 = &_ss5SIMD3VySdGMd;
    v15 = &_ss5SIMD3VySdGMR;
    goto LABEL_14;
  }

  Double4 = RIOPxrSdfValueTypeNameCreateDouble4();
  v43 = static _CFObject.== infix(_:_:)();

  if (v43)
  {
    v14 = &_ss5SIMD4VySdGMd;
    v15 = &_ss5SIMD4VySdGMR;
    goto LABEL_14;
  }

  Color3h = RIOPxrSdfValueTypeNameCreateColor3h();
  v45 = static _CFObject.== infix(_:_:)();

  if (v45)
  {
    v14 = &_s9RealityIO6Color3VyAA4HalfVGMd;
    v15 = &_s9RealityIO6Color3VyAA4HalfVGMR;
    goto LABEL_14;
  }

  Color3f = RIOPxrSdfValueTypeNameCreateColor3f();
  v47 = static _CFObject.== infix(_:_:)();

  if (v47)
  {
    v14 = &_s9RealityIO6Color3VySfGMd;
    v15 = &_s9RealityIO6Color3VySfGMR;
    goto LABEL_14;
  }

  Color3d = RIOPxrSdfValueTypeNameCreateColor3d();
  v49 = static _CFObject.== infix(_:_:)();

  if (v49)
  {
    v14 = &_s9RealityIO6Color3VySdGMd;
    v15 = &_s9RealityIO6Color3VySdGMR;
    goto LABEL_14;
  }

  Point3h = RIOPxrSdfValueTypeNameCreatePoint3h();
  v51 = static _CFObject.== infix(_:_:)();

  if (v51)
  {
    v14 = &_s9RealityIO6Point3VyAA4HalfVGMd;
    v15 = &_s9RealityIO6Point3VyAA4HalfVGMR;
    goto LABEL_14;
  }

  Point3f = RIOPxrSdfValueTypeNameCreatePoint3f();
  v53 = static _CFObject.== infix(_:_:)();

  if (v53)
  {
    v14 = &_s9RealityIO6Point3VySfGMd;
    v15 = &_s9RealityIO6Point3VySfGMR;
    goto LABEL_14;
  }

  Point3d = RIOPxrSdfValueTypeNameCreatePoint3d();
  v55 = static _CFObject.== infix(_:_:)();

  if (v55)
  {
    v14 = &_s9RealityIO6Point3VySdGMd;
    v15 = &_s9RealityIO6Point3VySdGMR;
    goto LABEL_14;
  }

  Normal3h = RIOPxrSdfValueTypeNameCreateNormal3h();
  v57 = static _CFObject.== infix(_:_:)();

  if (v57)
  {
    v14 = &_s9RealityIO7Normal3VyAA4HalfVGMd;
    v15 = &_s9RealityIO7Normal3VyAA4HalfVGMR;
    goto LABEL_14;
  }

  Normal3f = RIOPxrSdfValueTypeNameCreateNormal3f();
  v59 = static _CFObject.== infix(_:_:)();

  if (v59)
  {
    v14 = &_s9RealityIO7Normal3VySfGMd;
    v15 = &_s9RealityIO7Normal3VySfGMR;
    goto LABEL_14;
  }

  Normal3d = RIOPxrSdfValueTypeNameCreateNormal3d();
  v61 = static _CFObject.== infix(_:_:)();

  if (v61)
  {
    v14 = &_s9RealityIO7Normal3VySdGMd;
    v15 = &_s9RealityIO7Normal3VySdGMR;
    goto LABEL_14;
  }

  Vector3h = RIOPxrSdfValueTypeNameCreateVector3h();
  v63 = static _CFObject.== infix(_:_:)();

  if (v63)
  {
    v14 = &_s9RealityIO7Vector3VyAA4HalfVGMd;
    v15 = &_s9RealityIO7Vector3VyAA4HalfVGMR;
    goto LABEL_14;
  }

  Vector3f = RIOPxrSdfValueTypeNameCreateVector3f();
  v65 = static _CFObject.== infix(_:_:)();

  if (v65)
  {
    v14 = &_s9RealityIO7Vector3VySfGMd;
    v15 = &_s9RealityIO7Vector3VySfGMR;
    goto LABEL_14;
  }

  Vector3d = RIOPxrSdfValueTypeNameCreateVector3d();
  v67 = static _CFObject.== infix(_:_:)();

  if (v67)
  {
    v14 = &_s9RealityIO7Vector3VySdGMd;
    v15 = &_s9RealityIO7Vector3VySdGMR;
    goto LABEL_14;
  }

  Color4h = RIOPxrSdfValueTypeNameCreateColor4h();
  v69 = static _CFObject.== infix(_:_:)();

  if (v69)
  {
    v14 = &_s9RealityIO6Color4VyAA4HalfVGMd;
    v15 = &_s9RealityIO6Color4VyAA4HalfVGMR;
    goto LABEL_14;
  }

  Color4f = RIOPxrSdfValueTypeNameCreateColor4f();
  v71 = static _CFObject.== infix(_:_:)();

  if (v71)
  {
    v14 = &_s9RealityIO6Color4VySfGMd;
    v15 = &_s9RealityIO6Color4VySfGMR;
    goto LABEL_14;
  }

  Color4d = RIOPxrSdfValueTypeNameCreateColor4d();
  v73 = static _CFObject.== infix(_:_:)();

  if (v73)
  {
    v14 = &_s9RealityIO6Color4VySdGMd;
    v15 = &_s9RealityIO6Color4VySdGMR;
    goto LABEL_14;
  }

  Quath = RIOPxrSdfValueTypeNameCreateQuath();
  v75 = static _CFObject.== infix(_:_:)();

  if (v75 & 1) != 0 || (Quatf = RIOPxrSdfValueTypeNameCreateQuatf(), v77 = static _CFObject.== infix(_:_:)(), Quatf, (v77))
  {
    type metadata accessor for simd_quatf(0);
    return;
  }

  Quatd = RIOPxrSdfValueTypeNameCreateQuatd();
  v79 = static _CFObject.== infix(_:_:)();

  if (v79)
  {
    type metadata accessor for simd_quatd(0);
    return;
  }

  Matrix2d = RIOPxrSdfValueTypeNameCreateMatrix2d();
  v81 = static _CFObject.== infix(_:_:)();

  if (v81)
  {
    type metadata accessor for simd_double2x2(0);
    return;
  }

  Matrix3d = RIOPxrSdfValueTypeNameCreateMatrix3d();
  v83 = static _CFObject.== infix(_:_:)();

  if (v83)
  {
    type metadata accessor for simd_double3x3(0);
    return;
  }

  Matrix4d = RIOPxrSdfValueTypeNameCreateMatrix4d();
  v85 = static _CFObject.== infix(_:_:)();

  if (v85)
  {
    type metadata accessor for simd_double4x4(0);
    return;
  }

  Frame4d = RIOPxrSdfValueTypeNameCreateFrame4d();
  v87 = static _CFObject.== infix(_:_:)();

  if ((v87 & 1) == 0)
  {
    String = RIOPxrSdfValueTypeNameCreateString();
    v89 = static _CFObject.== infix(_:_:)();

    if ((v89 & 1) == 0)
    {
      TexCoord2h = RIOPxrSdfValueTypeNameCreateTexCoord2h();
      v91 = static _CFObject.== infix(_:_:)();

      if (v91)
      {
        v14 = &_s9RealityIO9TexCoord2VyAA4HalfVGMd;
        v15 = &_s9RealityIO9TexCoord2VyAA4HalfVGMR;
      }

      else
      {
        TexCoord2f = RIOPxrSdfValueTypeNameCreateTexCoord2f();
        v93 = static _CFObject.== infix(_:_:)();

        if (v93)
        {
          v14 = &_s9RealityIO9TexCoord2VySfGMd;
          v15 = &_s9RealityIO9TexCoord2VySfGMR;
        }

        else
        {
          TexCoord2d = RIOPxrSdfValueTypeNameCreateTexCoord2d();
          v95 = static _CFObject.== infix(_:_:)();

          if (v95)
          {
            v14 = &_s9RealityIO9TexCoord2VySdGMd;
            v15 = &_s9RealityIO9TexCoord2VySdGMR;
          }

          else
          {
            TexCoord3h = RIOPxrSdfValueTypeNameCreateTexCoord3h();
            v97 = static _CFObject.== infix(_:_:)();

            if (v97)
            {
              v14 = &_s9RealityIO9TexCoord3VyAA4HalfVGMd;
              v15 = &_s9RealityIO9TexCoord3VyAA4HalfVGMR;
            }

            else
            {
              TexCoord3f = RIOPxrSdfValueTypeNameCreateTexCoord3f();
              v99 = static _CFObject.== infix(_:_:)();

              if (v99)
              {
                v14 = &_s9RealityIO9TexCoord3VySfGMd;
                v15 = &_s9RealityIO9TexCoord3VySfGMR;
              }

              else
              {
                TexCoord3d = RIOPxrSdfValueTypeNameCreateTexCoord3d();
                v101 = static _CFObject.== infix(_:_:)();

                if (v101)
                {
                  v14 = &_s9RealityIO9TexCoord3VySdGMd;
                  v15 = &_s9RealityIO9TexCoord3VySdGMR;
                }

                else
                {
                  AssetPath = RIOPxrSdfValueTypeNameCreateAssetPath();
                  v103 = static _CFObject.== infix(_:_:)();

                  if (v103)
                  {
                    return;
                  }

                  Token = RIOPxrSdfValueTypeNameCreateToken();
                  v105 = static _CFObject.== infix(_:_:)();

                  if (v105)
                  {
                    return;
                  }

                  BoolArray = RIOPxrSdfValueTypeNameCreateBoolArray();
                  v107 = static _CFObject.== infix(_:_:)();

                  if (v107)
                  {
                    v14 = &_sSaySbGMd;
                    v15 = &_sSaySbGMR;
                  }

                  else
                  {
                    Int32Array = RIOPxrSdfValueTypeNameCreateInt32Array();
                    v109 = static _CFObject.== infix(_:_:)();

                    if (v109)
                    {
                      v14 = &_sSays5Int32VGMd;
                      v15 = &_sSays5Int32VGMR;
                    }

                    else
                    {
                      UInt8Array = RIOPxrSdfValueTypeNameCreateUInt8Array();
                      v111 = static _CFObject.== infix(_:_:)();

                      if (v111)
                      {
                        v14 = &_sSays5UInt8VGMd;
                        v15 = &_sSays5UInt8VGMR;
                      }

                      else
                      {
                        UInt32Array = RIOPxrSdfValueTypeNameCreateUInt32Array();
                        v113 = static _CFObject.== infix(_:_:)();

                        if (v113)
                        {
                          v14 = &_sSays6UInt32VGMd;
                          v15 = &_sSays6UInt32VGMR;
                        }

                        else
                        {
                          Int64Array = RIOPxrSdfValueTypeNameCreateInt64Array();
                          v115 = static _CFObject.== infix(_:_:)();

                          if (v115)
                          {
                            v14 = &_sSays5Int64VGMd;
                            v15 = &_sSays5Int64VGMR;
                          }

                          else
                          {
                            UInt64Array = RIOPxrSdfValueTypeNameCreateUInt64Array();
                            v117 = static _CFObject.== infix(_:_:)();

                            if (v117)
                            {
                              v14 = &_sSays6UInt64VGMd;
                              v15 = &_sSays6UInt64VGMR;
                            }

                            else
                            {
                              Int2Array = RIOPxrSdfValueTypeNameCreateInt2Array();
                              v119 = static _CFObject.== infix(_:_:)();

                              if (v119)
                              {
                                v14 = &_sSays5SIMD2Vys5Int32VGGMd;
                                v15 = &_sSays5SIMD2Vys5Int32VGGMR;
                              }

                              else
                              {
                                Int3Array = RIOPxrSdfValueTypeNameCreateInt3Array();
                                v121 = static _CFObject.== infix(_:_:)();

                                if (v121)
                                {
                                  v14 = &_sSays5SIMD3Vys5Int32VGGMd;
                                  v15 = &_sSays5SIMD3Vys5Int32VGGMR;
                                }

                                else
                                {
                                  Int4Array = RIOPxrSdfValueTypeNameCreateInt4Array();
                                  v123 = static _CFObject.== infix(_:_:)();

                                  if (v123)
                                  {
                                    v14 = &_sSays5SIMD4Vys5Int32VGGMd;
                                    v15 = &_sSays5SIMD4Vys5Int32VGGMR;
                                  }

                                  else
                                  {
                                    HalfArray = RIOPxrSdfValueTypeNameCreateHalfArray();
                                    v125 = static _CFObject.== infix(_:_:)();

                                    if (v125)
                                    {
                                      v14 = &_sSay9RealityIO4HalfVGMd;
                                      v15 = &_sSay9RealityIO4HalfVGMR;
                                    }

                                    else
                                    {
                                      Half2Array = RIOPxrSdfValueTypeNameCreateHalf2Array();
                                      v127 = static _CFObject.== infix(_:_:)();

                                      if (v127)
                                      {
                                        v14 = &_sSays5SIMD2Vy9RealityIO4HalfVGGMd;
                                        v15 = &_sSays5SIMD2Vy9RealityIO4HalfVGGMR;
                                      }

                                      else
                                      {
                                        Half3Array = RIOPxrSdfValueTypeNameCreateHalf3Array();
                                        v129 = static _CFObject.== infix(_:_:)();

                                        if (v129)
                                        {
                                          v14 = &_sSays5SIMD3Vy9RealityIO4HalfVGGMd;
                                          v15 = &_sSays5SIMD3Vy9RealityIO4HalfVGGMR;
                                        }

                                        else
                                        {
                                          Half4Array = RIOPxrSdfValueTypeNameCreateHalf4Array();
                                          v131 = static _CFObject.== infix(_:_:)();

                                          if (v131)
                                          {
                                            v14 = &_sSays5SIMD4Vy9RealityIO4HalfVGGMd;
                                            v15 = &_sSays5SIMD4Vy9RealityIO4HalfVGGMR;
                                          }

                                          else
                                          {
                                            FloatArray = RIOPxrSdfValueTypeNameCreateFloatArray();
                                            v133 = static _CFObject.== infix(_:_:)();

                                            if (v133)
                                            {
                                              v14 = &_sSaySfGMd;
                                              v15 = &_sSaySfGMR;
                                            }

                                            else
                                            {
                                              Float2Array = RIOPxrSdfValueTypeNameCreateFloat2Array();
                                              v135 = static _CFObject.== infix(_:_:)();

                                              if (v135)
                                              {
                                                v14 = &_sSays5SIMD2VySfGGMd;
                                                v15 = &_sSays5SIMD2VySfGGMR;
                                              }

                                              else
                                              {
                                                Float3Array = RIOPxrSdfValueTypeNameCreateFloat3Array();
                                                v137 = static _CFObject.== infix(_:_:)();

                                                if (v137)
                                                {
                                                  v14 = &_sSays5SIMD3VySfGGMd;
                                                  v15 = &_sSays5SIMD3VySfGGMR;
                                                }

                                                else
                                                {
                                                  Float4Array = RIOPxrSdfValueTypeNameCreateFloat4Array();
                                                  v139 = static _CFObject.== infix(_:_:)();

                                                  if (v139)
                                                  {
                                                    v14 = &_sSays5SIMD4VySfGGMd;
                                                    v15 = &_sSays5SIMD4VySfGGMR;
                                                  }

                                                  else
                                                  {
                                                    DoubleArray = RIOPxrSdfValueTypeNameCreateDoubleArray();
                                                    v141 = static _CFObject.== infix(_:_:)();

                                                    if (v141)
                                                    {
                                                      v14 = &_sSaySdGMd;
                                                      v15 = &_sSaySdGMR;
                                                    }

                                                    else
                                                    {
                                                      Double2Array = RIOPxrSdfValueTypeNameCreateDouble2Array();
                                                      v143 = static _CFObject.== infix(_:_:)();

                                                      if (v143)
                                                      {
                                                        v14 = &_sSays5SIMD2VySdGGMd;
                                                        v15 = &_sSays5SIMD2VySdGGMR;
                                                      }

                                                      else
                                                      {
                                                        Double3Array = RIOPxrSdfValueTypeNameCreateDouble3Array();
                                                        v145 = static _CFObject.== infix(_:_:)();

                                                        if (v145)
                                                        {
                                                          v14 = &_sSays5SIMD3VySdGGMd;
                                                          v15 = &_sSays5SIMD3VySdGGMR;
                                                        }

                                                        else
                                                        {
                                                          Double4Array = RIOPxrSdfValueTypeNameCreateDouble4Array();
                                                          v147 = static _CFObject.== infix(_:_:)();

                                                          if (v147)
                                                          {
                                                            v14 = &_sSays5SIMD4VySdGGMd;
                                                            v15 = &_sSays5SIMD4VySdGGMR;
                                                          }

                                                          else
                                                          {
                                                            Vector3hArray = RIOPxrSdfValueTypeNameCreateVector3hArray();
                                                            v149 = static _CFObject.== infix(_:_:)();

                                                            if (v149)
                                                            {
                                                              v14 = &_sSay9RealityIO7Vector3VyAA4HalfVGGMd;
                                                              v15 = &_sSay9RealityIO7Vector3VyAA4HalfVGGMR;
                                                            }

                                                            else
                                                            {
                                                              Vector3fArray = RIOPxrSdfValueTypeNameCreateVector3fArray();
                                                              v151 = static _CFObject.== infix(_:_:)();

                                                              if (v151)
                                                              {
                                                                v14 = &_sSay9RealityIO7Vector3VySfGGMd;
                                                                v15 = &_sSay9RealityIO7Vector3VySfGGMR;
                                                              }

                                                              else
                                                              {
                                                                Vector3dArray = RIOPxrSdfValueTypeNameCreateVector3dArray();
                                                                v153 = static _CFObject.== infix(_:_:)();

                                                                if (v153)
                                                                {
                                                                  v14 = &_sSay9RealityIO7Vector3VySdGGMd;
                                                                  v15 = &_sSay9RealityIO7Vector3VySdGGMR;
                                                                }

                                                                else
                                                                {
                                                                  TexCoord2hArray = RIOPxrSdfValueTypeNameCreateTexCoord2hArray();
                                                                  v155 = static _CFObject.== infix(_:_:)();

                                                                  if (v155)
                                                                  {
                                                                    v14 = &_sSay9RealityIO9TexCoord2VyAA4HalfVGGMd;
                                                                    v15 = &_sSay9RealityIO9TexCoord2VyAA4HalfVGGMR;
                                                                  }

                                                                  else
                                                                  {
                                                                    TexCoord2fArray = RIOPxrSdfValueTypeNameCreateTexCoord2fArray();
                                                                    v157 = static _CFObject.== infix(_:_:)();

                                                                    if (v157)
                                                                    {
                                                                      v14 = &_sSay9RealityIO9TexCoord2VySfGGMd;
                                                                      v15 = &_sSay9RealityIO9TexCoord2VySfGGMR;
                                                                    }

                                                                    else
                                                                    {
                                                                      TexCoord2dArray = RIOPxrSdfValueTypeNameCreateTexCoord2dArray();
                                                                      v159 = static _CFObject.== infix(_:_:)();

                                                                      if (v159)
                                                                      {
                                                                        v14 = &_sSay9RealityIO9TexCoord2VySdGGMd;
                                                                        v15 = &_sSay9RealityIO9TexCoord2VySdGGMR;
                                                                      }

                                                                      else
                                                                      {
                                                                        TexCoord3hArray = RIOPxrSdfValueTypeNameCreateTexCoord3hArray();
                                                                        v161 = static _CFObject.== infix(_:_:)();

                                                                        if (v161)
                                                                        {
                                                                          v14 = &_sSay9RealityIO9TexCoord3VyAA4HalfVGGMd;
                                                                          v15 = &_sSay9RealityIO9TexCoord3VyAA4HalfVGGMR;
                                                                        }

                                                                        else
                                                                        {
                                                                          TexCoord3fArray = RIOPxrSdfValueTypeNameCreateTexCoord3fArray();
                                                                          v163 = static _CFObject.== infix(_:_:)();

                                                                          if (v163)
                                                                          {
                                                                            v14 = &_sSay9RealityIO9TexCoord3VySfGGMd;
                                                                            v15 = &_sSay9RealityIO9TexCoord3VySfGGMR;
                                                                          }

                                                                          else
                                                                          {
                                                                            TexCoord3dArray = RIOPxrSdfValueTypeNameCreateTexCoord3dArray();
                                                                            v165 = static _CFObject.== infix(_:_:)();

                                                                            if (v165)
                                                                            {
                                                                              v14 = &_sSay9RealityIO9TexCoord3VySdGGMd;
                                                                              v15 = &_sSay9RealityIO9TexCoord3VySdGGMR;
                                                                            }

                                                                            else
                                                                            {
                                                                              Normal3hArray = RIOPxrSdfValueTypeNameCreateNormal3hArray();
                                                                              v167 = static _CFObject.== infix(_:_:)();

                                                                              if (v167)
                                                                              {
                                                                                v14 = &_sSay9RealityIO7Normal3VyAA4HalfVGGMd;
                                                                                v15 = &_sSay9RealityIO7Normal3VyAA4HalfVGGMR;
                                                                              }

                                                                              else
                                                                              {
                                                                                Normal3fArray = RIOPxrSdfValueTypeNameCreateNormal3fArray();
                                                                                v169 = static _CFObject.== infix(_:_:)();

                                                                                if (v169)
                                                                                {
                                                                                  v14 = &_sSay9RealityIO7Normal3VySfGGMd;
                                                                                  v15 = &_sSay9RealityIO7Normal3VySfGGMR;
                                                                                }

                                                                                else
                                                                                {
                                                                                  Normal3dArray = RIOPxrSdfValueTypeNameCreateNormal3dArray();
                                                                                  v171 = static _CFObject.== infix(_:_:)();

                                                                                  if (v171)
                                                                                  {
                                                                                    v14 = &_sSay9RealityIO7Normal3VySdGGMd;
                                                                                    v15 = &_sSay9RealityIO7Normal3VySdGGMR;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    Point3hArray = RIOPxrSdfValueTypeNameCreatePoint3hArray();
                                                                                    v173 = static _CFObject.== infix(_:_:)();

                                                                                    if (v173)
                                                                                    {
                                                                                      v14 = &_sSay9RealityIO6Point3VyAA4HalfVGGMd;
                                                                                      v15 = &_sSay9RealityIO6Point3VyAA4HalfVGGMR;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      Point3fArray = RIOPxrSdfValueTypeNameCreatePoint3fArray();
                                                                                      v175 = static _CFObject.== infix(_:_:)();

                                                                                      if (v175)
                                                                                      {
                                                                                        v14 = &_sSay9RealityIO6Point3VySfGGMd;
                                                                                        v15 = &_sSay9RealityIO6Point3VySfGGMR;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        Point3dArray = RIOPxrSdfValueTypeNameCreatePoint3dArray();
                                                                                        v177 = static _CFObject.== infix(_:_:)();

                                                                                        if (v177)
                                                                                        {
                                                                                          v14 = &_sSay9RealityIO6Point3VySdGGMd;
                                                                                          v15 = &_sSay9RealityIO6Point3VySdGGMR;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          Color3hArray = RIOPxrSdfValueTypeNameCreateColor3hArray();
                                                                                          v179 = static _CFObject.== infix(_:_:)();

                                                                                          if (v179)
                                                                                          {
                                                                                            v14 = &_sSay9RealityIO6Color3VyAA4HalfVGGMd;
                                                                                            v15 = &_sSay9RealityIO6Color3VyAA4HalfVGGMR;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            Color3fArray = RIOPxrSdfValueTypeNameCreateColor3fArray();
                                                                                            v181 = static _CFObject.== infix(_:_:)();

                                                                                            if (v181)
                                                                                            {
                                                                                              v14 = &_sSay9RealityIO6Color3VySfGGMd;
                                                                                              v15 = &_sSay9RealityIO6Color3VySfGGMR;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              Color3dArray = RIOPxrSdfValueTypeNameCreateColor3dArray();
                                                                                              v183 = static _CFObject.== infix(_:_:)();

                                                                                              if (v183)
                                                                                              {
                                                                                                v14 = &_sSay9RealityIO6Color3VySdGGMd;
                                                                                                v15 = &_sSay9RealityIO6Color3VySdGGMR;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                Color4hArray = RIOPxrSdfValueTypeNameCreateColor4hArray();
                                                                                                v185 = static _CFObject.== infix(_:_:)();

                                                                                                if (v185)
                                                                                                {
                                                                                                  v14 = &_sSay9RealityIO6Color4VyAA4HalfVGGMd;
                                                                                                  v15 = &_sSay9RealityIO6Color4VyAA4HalfVGGMR;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  Color4fArray = RIOPxrSdfValueTypeNameCreateColor4fArray();
                                                                                                  v187 = static _CFObject.== infix(_:_:)();

                                                                                                  if (v187)
                                                                                                  {
                                                                                                    v14 = &_sSay9RealityIO6Color4VySfGGMd;
                                                                                                    v15 = &_sSay9RealityIO6Color4VySfGGMR;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    Color4dArray = RIOPxrSdfValueTypeNameCreateColor4dArray();
                                                                                                    v189 = static _CFObject.== infix(_:_:)();

                                                                                                    if (v189)
                                                                                                    {
                                                                                                      v14 = &_sSay9RealityIO6Color4VySdGGMd;
                                                                                                      v15 = &_sSay9RealityIO6Color4VySdGGMR;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      QuathArray = RIOPxrSdfValueTypeNameCreateQuathArray();
                                                                                                      v191 = static _CFObject.== infix(_:_:)();

                                                                                                      if (v191 & 1) != 0 || (QuatfArray = RIOPxrSdfValueTypeNameCreateQuatfArray(), v193 = static _CFObject.== infix(_:_:)(), QuatfArray, (v193))
                                                                                                      {
                                                                                                        v14 = &_sSaySo10simd_quatfaGMd;
                                                                                                        v15 = &_sSaySo10simd_quatfaGMR;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        QuatdArray = RIOPxrSdfValueTypeNameCreateQuatdArray();
                                                                                                        v195 = static _CFObject.== infix(_:_:)();

                                                                                                        if (v195)
                                                                                                        {
                                                                                                          v14 = &_sSaySo10simd_quatdaGMd;
                                                                                                          v15 = &_sSaySo10simd_quatdaGMR;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          Matrix2dArray = RIOPxrSdfValueTypeNameCreateMatrix2dArray();
                                                                                                          v197 = static _CFObject.== infix(_:_:)();

                                                                                                          if (v197)
                                                                                                          {
                                                                                                            v14 = &_sSaySo14simd_double2x2aGMd;
                                                                                                            v15 = &_sSaySo14simd_double2x2aGMR;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            Matrix3dArray = RIOPxrSdfValueTypeNameCreateMatrix3dArray();
                                                                                                            v199 = static _CFObject.== infix(_:_:)();

                                                                                                            if (v199)
                                                                                                            {
                                                                                                              v14 = &_sSaySo14simd_double3x3aGMd;
                                                                                                              v15 = &_sSaySo14simd_double3x3aGMR;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              Matrix4dArray = RIOPxrSdfValueTypeNameCreateMatrix4dArray();
                                                                                                              v201 = static _CFObject.== infix(_:_:)();

                                                                                                              if (v201)
                                                                                                              {
                                                                                                                v14 = &_sSaySo14simd_double4x4aGMd;
                                                                                                                v15 = &_sSaySo14simd_double4x4aGMR;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                Frame4dArray = RIOPxrSdfValueTypeNameCreateFrame4dArray();
                                                                                                                v203 = static _CFObject.== infix(_:_:)();

                                                                                                                if (v203)
                                                                                                                {
                                                                                                                  v14 = &_sSay9RealityIO7Frame4DVGMd;
                                                                                                                  v15 = &_sSay9RealityIO7Frame4DVGMR;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  StringArray = RIOPxrSdfValueTypeNameCreateStringArray();
                                                                                                                  v205 = static _CFObject.== infix(_:_:)();

                                                                                                                  if (v205)
                                                                                                                  {
                                                                                                                    v14 = &_sSaySSGMd;
                                                                                                                    v15 = &_sSaySSGMR;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    TokenArray = RIOPxrSdfValueTypeNameCreateTokenArray();
                                                                                                                    v207 = static _CFObject.== infix(_:_:)();

                                                                                                                    if (v207)
                                                                                                                    {
                                                                                                                      v14 = &_sSay9RealityIO16ToolsFoundationsO5TokenVGMd;
                                                                                                                      v15 = &_sSay9RealityIO16ToolsFoundationsO5TokenVGMR;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      AssetPathArray = RIOPxrSdfValueTypeNameCreateAssetPathArray();
                                                                                                                      v209 = static _CFObject.== infix(_:_:)();

                                                                                                                      if ((v209 & 1) == 0)
                                                                                                                      {
                                                                                                                        return;
                                                                                                                      }

                                                                                                                      v14 = &_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMd;
                                                                                                                      v15 = &_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMR;
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_14;
    }
  }
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Bool.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateBool();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt32();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int64.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt64();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.UInt.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt32();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.UInt8.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt8();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.UInt64.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt64();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int2.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt2();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int3.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt3();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int4.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt4();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half2.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf2();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half3.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf3();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half4.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf4();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float2.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat2();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float3.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat3();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float4.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat4();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double2.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble2();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double3.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble3();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double4.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble4();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Point3h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreatePoint3h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Point3f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreatePoint3f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Point3d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreatePoint3d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Vector3h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateVector3h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Vector3f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateVector3f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Vector3d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateVector3d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord2h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord2h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord2f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord2f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord2d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord2d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord3h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord3h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord3f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord3f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord3d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord3d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color3h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor3h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color3f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor3f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color3d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor3d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Normal3h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateNormal3h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Normal3f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateNormal3f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Normal3d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateNormal3d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color4h.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor4h();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color4f.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor4f();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color4d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor4d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Quath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuath();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Quatf.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatf();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Quatd.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatd();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Matrix2d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix2d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Matrix3d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix3d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Matrix4d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix4d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Frame4d.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFrame4d();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.String.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateString();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Token.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateToken();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.AssetPath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateAssetPath();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.BoolArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateBoolArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int32Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt32Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int64Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt64Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.UInt32Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt32Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.UInt8Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt8Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.UInt64Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt64Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int2Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt2Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int3Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt3Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Int4Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt4Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.HalfArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalfArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half2Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf2Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half3Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf3Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Half4Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf4Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.FloatArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloatArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float2Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat2Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float3Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat3Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Float4Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat4Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.DoubleArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDoubleArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double2Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble2Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double3Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble3Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Double4Array.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble4Array();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color3hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor3hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color3fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor3fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color3dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor3dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color4hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor4hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color4fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor4fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Color4dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateColor4dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Point3hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreatePoint3hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Point3fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreatePoint3fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Point3dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreatePoint3dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Vector3hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateVector3hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Vector3fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateVector3fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Vector3dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateVector3dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord2hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord2hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord2fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord2fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord2dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord2dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord3hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord3hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord3fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord3fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TexCoord3dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTexCoord3dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Normal3hArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateNormal3hArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Normal3fArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateNormal3fArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Normal3dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateNormal3dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.QuathArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuathArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.QuatfArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatfArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.QuatdArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatdArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Matrix2dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix2dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Matrix3dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix3dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Matrix4dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix4dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.Frame4dArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFrame4dArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.StringArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateStringArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.TokenArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTokenArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.ValueTypeName.AssetPathArray.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateAssetPathArray();
  *a1 = result;
  return result;
}

uint64_t specialized closure #3 in TriggerBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2)
{
  v12 = *a2;
  v2 = closure #2 in ActionBuilder.inputDescriptors()(a1, &v12);
  if (!v2)
  {
    return MEMORY[0x277D84FA0];
  }

  v5 = v2;
  v6 = v3;
  v7 = v4;
  if (one-time initialization token for actionTypesUsingAffectedObjects != -1)
  {
    swift_once();
  }

  v8 = static TriggerBuilder.actionTypesUsingAffectedObjects;

  v9 = specialized Set.contains(_:)(v6, v7, v8);

  if (v9)
  {
    v10 = closure #1 in ActionBuilder.inputDescriptors()(0x6465746365666661, 0xEF737463656A624FLL, v5);
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t specialized closure #4 in TriggerBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2)
{
  v9 = *a2;
  v2 = closure #2 in ActionBuilder.inputDescriptors()(a1, &v9);
  if (v2)
  {
    v5 = v2;
    if (v3 == 0x6564696C6C6F43 && v4 == 0xE700000000000000)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        v6 = MEMORY[0x277D84FA0];
        goto LABEL_9;
      }
    }

    v6 = closure #1 in ActionBuilder.inputDescriptors()(0x726564696C6C6F63, 0xE900000000000073, v5);
LABEL_9:

    return v6;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized closure #5 in TriggerBuilder.inputDescriptors()(uint64_t a1, uint64_t *a2)
{
  v9 = *a2;
  v2 = closure #2 in ActionBuilder.inputDescriptors()(a1, &v9);
  if (v2)
  {
    v5 = v2;
    if (v3 == 0x7574736547706154 && v4 == 0xEA00000000006572)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        v6 = MEMORY[0x277D84FA0];
        goto LABEL_9;
      }
    }

    v6 = closure #1 in ActionBuilder.inputDescriptors()(0x6465746365666661, 0xEF737463656A624FLL, v5);
LABEL_9:

    return v6;
  }

  return MEMORY[0x277D84FA0];
}

uint64_t TriggerBuilder.run(inputs:)(uint64_t a1)
{
  v2 = v1;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(v20);
  v5 = v20[0];
  v6 = RIOPxrTfTokenCopyString();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (one-time initialization token for triggerTypeToTriggerSpecificationsGenerator != -1)
  {
    swift_once();
  }

  v10 = static TriggerBuilder.triggerTypeToTriggerSpecificationsGenerator;
  if (*(static TriggerBuilder.triggerTypeToTriggerSpecificationsGenerator + 2))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
    v13 = v12;

    if (v13)
    {
      v14 = v10[7] + 16 * v11;
      v16 = *v14;
      v15 = *(v14 + 8);
      v20[0] = a1;

      v16(v19, v20);

      v17 = *&v19[0];
      swift_beginAccess();
      v18 = objc_getAssociatedObject(v2, &static BuilderAssociatedKeys.OutputsReference);
      result = swift_endAccess();
      if (v18)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined init with take of Any(v19, v20);
        type metadata accessor for Outputs();
        swift_dynamicCast();
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit30__RKEntityTriggerSpecificationOGMd, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMR);
        v20[0] = v17;
        Outputs.subscript.setter(v20, 0x7372656767697254, 0xE800000000000000);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else
  {
  }

  return specialized TriggerBuilder.clear(inputs:)();
}

uint64_t one-time initialization function for triggerTypeToTriggerSpecificationsGenerator()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say10RealityKit30__RKEntityTriggerSpecificationOG0C2IO6InputsCcTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for triggerTypeToTriggerSpecificationsGenerator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yyctMd, &_sSS_yyctMR);
  result = swift_arrayDestroy();
  static TriggerBuilder.triggerTypeToTriggerSpecificationsGenerator = v0;
  return result;
}

Swift::Int protocol witness for Builder.outputDescriptors() in conformance TriggerBuilder()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16OutputDescriptorO_Tt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance TriggerBuilder);
  outlined destroy of OutputDescriptor(&unk_2874107E0);
  return v0;
}

uint64_t specialized TriggerBuilder.stageSubscription.getter()
{
  if (String.count.getter() < 1)
  {
    v0 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v0 = RIOPxrTfTokenCreateWithCString();
  }

  v24[0] = v0;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v24[0] = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  v5 = v24[0];
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v6 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v5, 0);

  if (String.count.getter() < 1)
  {
    v7 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v7 = RIOPxrTfTokenCreateWithCString();
  }

  v8 = v7;
  type metadata accessor for NamedPropertyDirtyState();
  v9 = swift_allocObject();
  v9[4] = v8;
  v10 = v8;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v9[2] = v3;
  v9[3] = v12;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26198A640;
  *(v13 + 32) = v9;
  v24[0] = v3;

  specialized Sequence.forEach(_:)(v13);

  swift_setDeallocating();
  v14 = *(v13 + 16);
  swift_arrayDestroy();
  v15 = v24[0];
  type metadata accessor for PrimDirtyState();
  swift_allocObject();
  v16 = PrimDirtyState.init(primMetadataContainsAnyOf:propertiesContainAnyOf:core:)(v3, v15, 0);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_26198A640;
  *(v17 + 32) = v16;
  v24[0] = v3;

  specialized Sequence.forEach(_:)(v17);

  swift_setDeallocating();
  v18 = *(v17 + 16);
  swift_arrayDestroy();
  v19 = v24[0];
  swift_allocObject();
  v20 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v19, 0);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_26198A9D0;
  *(v21 + 32) = v6;
  *(v21 + 40) = v20;
  v24[0] = v3;

  specialized Sequence.forEach(_:)(v21);

  swift_setDeallocating();
  v22 = *(v21 + 16);
  swift_arrayDestroy();
  return v24[0];
}

uint64_t specialized TriggerBuilder.inputDescriptors()()
{
  v8 = MEMORY[0x277D84FA0];
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v1 = static EntityBuilder.OutputName;
  v0 = qword_27FEBC3A0;
  v2 = one-time initialization token for OutputIdentifier;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static EntityBuilder.OutputIdentifier;
  v3 = *algn_27FEC8E68;
  v22[0] = v1;
  v22[1] = v0;
  v22[2] = static EntityBuilder.OutputIdentifier;
  v22[3] = *algn_27FEC8E68;
  v22[4] = specialized closure #3 in TriggerBuilder.inputDescriptors();
  v22[5] = 0;
  v23 = -127;
  swift_bridgeObjectRetain_n();
  specialized Set._Variant.insert(_:)(&v16, v22);
  outlined consume of InputDescriptor(v16, *(&v16 + 1), v17, v18, v19, v20, v21);
  v16 = xmmword_26198AF90;
  v17 = v4;
  v18 = v3;
  v19 = specialized closure #4 in TriggerBuilder.inputDescriptors();
  v20 = 0;
  v21 = -127;
  specialized Set._Variant.insert(_:)(&v9, &v16);
  outlined consume of InputDescriptor(v9, v10, v11, v12, v13, v14, v15);
  v9 = 0xD00000000000001ALL;
  v10 = 0x8000000261994F30;
  v11 = 0xD00000000000001ALL;
  v12 = 0x8000000261994F30;
  v13 = specialized closure #5 in TriggerBuilder.inputDescriptors();
  v14 = 0;
  v15 = -127;
  specialized Set._Variant.insert(_:)(v6, &v9);
  outlined consume of InputDescriptor(v6[0], v6[1], v6[2], v6[3], v6[4], v6[5], v7);
  return v8;
}

uint64_t specialized TriggerBuilder.clear(inputs:)()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v3, v4);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    memset(v4, 0, sizeof(v4));
    Outputs.subscript.setter(v4, 0x7372656767697254, 0xE800000000000000);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AttributeMetadata.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AttributeMetadata.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static AttributeMetadata.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t AttributeMetadata.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int AttributeMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributeMetadata<A>()
{
  Hasher.init(_seed:)();
  AttributeMetadata.hash(into:)();
  return Hasher._finalize()();
}

uint64_t RelationshipMetadata.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static RelationshipMetadata.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t RelationshipMetadata.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int RelationshipMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RelationshipMetadata(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RelationshipMetadata()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RelationshipMetadata()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RelationshipMetadata()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type RelationshipMetadata and conformance RelationshipMetadata()
{
  result = lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata;
  if (!lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata;
  if (!lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata;
  if (!lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RelationshipMetadata and conformance RelationshipMetadata);
  }

  return result;
}

uint64_t type metadata instantiation function for AttributeMetadata()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for AttributeMetadata(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AttributeMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static PrimDirtyStateBuilder.buildBlock(_:)(unint64_t a1)
{
  v2 = MEMORY[0x277D84FA0];
  specialized Sequence.forEach(_:)(a1);
  return v2;
}

void *StageDirtyState.__allocating_init(primsContainAnyOf:)(uint64_t (*a1)(void))
{
  v1 = a1();
  type metadata accessor for StageDirtyState();
  v2 = swift_allocObject();
  v2[2] = MEMORY[0x277D84FA0];
  v2[3] = v1;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO14PrimDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d9IO15Stagegh122C26stageMetadataContainsAnyOf012primsContainiJ04coreACShyAA16ToolsFoundationsO5TokenVG_ShyAA04PrimdE0CGSo010RIOBuilderdC13J73RefaSgtcfcSo0rdqsT0aAMcfu_32f3b6550bcda465057a28ab83a1317178AmSTf3nnnpk_nTf1cn_n(v3);

  type metadata accessor for RIOBuilderDirtyPrimDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v5 = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOBuilderDirtyStageDescriptorCreateWithPrimDescriptorsAndMetadataDescriptors();

  v2[4] = v6;
  return v2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO14PrimDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d9IO15Stagegh122C26stageMetadataContainsAnyOf012primsContainiJ04coreACShyAA16ToolsFoundationsO5TokenVG_ShyAA04PrimdE0CGSo010RIOBuilderdC13J73RefaSgtcfcSo0rdqsT0aAMcfu_32f3b6550bcda465057a28ab83a1317178AmSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(a1 + 36);
  v26 = result;
  v27 = v6;
  v28 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v26;
    v10 = v27;
    v12 = v28;
    v13 = *(specialized Set.subscript.getter(v26, v27, v28, a1) + 32);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v14 = *(v29 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v24)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy9RealityIO14PrimDirtyStateC_GMd, &_sSh5IndexVy9RealityIO14PrimDirtyStateC_GMR);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v25, 0);
      if (v7 == v2)
      {
LABEL_28:
        outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v11 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v11 >> 6;
      v17 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v17 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v11 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v11, v10, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v11, v10, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v10;
      v28 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 64;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 48) + 8 * v6);
      RIOBuilderDirtyMetadataDescriptorCreateWithMetadata();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = *(v23 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v21;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26670F670](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:

        specialized Set._Variant.insert(_:)(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = __CocoaSet.count.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26670F670](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:

        specialized Set._Variant.insert(_:)(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = __CocoaSet.count.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26670F670](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:

        specialized Set._Variant.insert(_:)(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = __CocoaSet.count.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

void *StageDirtyState.__allocating_init(stageMetadataContainsAnyOf:)(uint64_t a1)
{
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v2 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO14PrimDirtyStateC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  type metadata accessor for StageDirtyState();
  v3 = swift_allocObject();
  v3[2] = a1;
  v3[3] = v2;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO14PrimDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d9IO15Stagegh122C26stageMetadataContainsAnyOf012primsContainiJ04coreACShyAA16ToolsFoundationsO5TokenVG_ShyAA04PrimdE0CGSo010RIOBuilderdC13J73RefaSgtcfcSo0rdqsT0aAMcfu_32f3b6550bcda465057a28ab83a1317178AmSTf3nnnpk_nTf1cn_n(v2);

  type metadata accessor for RIOBuilderDirtyPrimDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a1);

  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v5 = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOBuilderDirtyStageDescriptorCreateWithPrimDescriptorsAndMetadataDescriptors();

  v3[4] = v6;
  return v3;
}

void *StageDirtyState.__allocating_init(stageMetadataContainsAnyOf:primsContainAnyOf:)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  type metadata accessor for StageDirtyState();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v3;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO14PrimDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d9IO15Stagegh122C26stageMetadataContainsAnyOf012primsContainiJ04coreACShyAA16ToolsFoundationsO5TokenVG_ShyAA04PrimdE0CGSo010RIOBuilderdC13J73RefaSgtcfcSo0rdqsT0aAMcfu_32f3b6550bcda465057a28ab83a1317178AmSTf3nnnpk_nTf1cn_n(v3);

  type metadata accessor for RIOBuilderDirtyPrimDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a1);

  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v6 = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOBuilderDirtyStageDescriptorCreateWithPrimDescriptorsAndMetadataDescriptors();

  v4[4] = v7;
  return v4;
}

void StageDirtyState.hash(into:)(__int128 *a1)
{
  specialized Set.hash(into:)(a1, *(v1 + 24));
  v3 = *(v1 + 16);

  specialized Set.hash(into:)(a1, v3);
}

uint64_t static StageDirtyState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO14PrimDirtyStateC_Tt1g5(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v4, v5);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v23 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      v25 = v13;
      v14 = *(a2 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for RIOPxrTfTokenRef(0);
      lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef);
      v15 = v13;
      _CFObject.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
      while (1)
      {
        v24 = *(*(a2 + 48) + 8 * v18);
        v20 = v24;
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v21)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = v22;
      v7 = v23;
      if (!v23)
      {
        goto LABEL_8;
      }
    }

LABEL_21:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v23 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9RealityIO18PropertyDirtyStateC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v3)
    {
      v4 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v4 = a2;
      }

      v5 = specialized _NativeSet.isEqual(to:)(v4, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v5 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v6 = 0;
        v7 = a1 + 56;
        v8 = 1 << *(a1 + 32);
        if (v8 < 64)
        {
          v9 = ~(-1 << v8);
        }

        else
        {
          v9 = -1;
        }

        v10 = v9 & *(a1 + 56);
        v11 = (v8 + 63) >> 6;
        v12 = a2 + 56;
        v25 = v11;
        v26 = a1;
        if (!v10)
        {
LABEL_24:
          v14 = v6;
          while (1)
          {
            v6 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v6 >= v11)
            {
              goto LABEL_36;
            }

            v15 = *(v7 + 8 * v6);
            ++v14;
            if (v15)
            {
              v13 = __clz(__rbit64(v15));
              v27 = (v15 - 1) & v15;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](a1, a2);
        }

        while (1)
        {
          v13 = __clz(__rbit64(v10));
          v27 = (v10 - 1) & v10;
LABEL_29:
          v16 = *(*(a1 + 48) + 8 * (v13 | (v6 << 6)));
          v17 = *(v2 + 40);
          Hasher.init(_seed:)();
          v18 = *(*v16 + 120);

          v18(v28);
          v19 = Hasher._finalize()();
          v20 = -1 << *(v2 + 32);
          v21 = v19 & ~v20;
          if (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          while (1)
          {
            v23 = *(**(*(v2 + 48) + 8 * v21) + 128);

            LOBYTE(v23) = v23(v16);

            if (v23)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v11 = v25;
          a1 = v26;
          v10 = v27;
          if (!v27)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v5 = 0;
    }

    return v5 & 1;
  }

  if (a1 < 0)
  {
    a2 = a1;
  }

  else
  {
    a2 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v3)
  {
    v5 = specialized _NativeSet.isEqual(to:)(a2, v2);
    return v5 & 1;
  }

  if (v2 < 0)
  {
    a1 = v2;
  }

  else
  {
    a1 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](a1, a2);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9RealityIO6InputsC13PropertyDeltaV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v35 = result + 56;
  v36 = result;
  v34 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v37 = (v7 - 1) & v7;
LABEL_13:
    v38 = v3;
    v13 = (*(result + 48) + 24 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = *(v2 + 40);
    Hasher.init(_seed:)();

    v18 = v14;
    v39 = v16;
    specialized Set.hash(into:)(v41, v15);
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef);
    v40 = v18;
    _CFObject.hash(into:)();
    v19 = Hasher._finalize()();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_22:

      return 0;
    }

    v22 = ~v20;
    while (1)
    {
      v23 = (*(v2 + 48) + 24 * v21);
      v25 = *v23;
      v24 = v23[1];
      v26 = v23[2];

      v27 = v24;
      v28 = v26;
      if (_sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v25, v15))
      {
        break;
      }

LABEL_16:
      v21 = (v21 + 1) & v22;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v29 = v9;
    v30 = v2;
    v31 = v27;
    v32 = v40;
    v33 = static _CFObject.== infix(_:_:)();

    v2 = v30;
    v9 = v29;

    if ((v33 & 1) == 0)
    {
      goto LABEL_16;
    }

    v4 = v35;
    result = v36;
    v8 = v34;
    v7 = v37;
    v3 = v38;
  }

  while (v37);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9RealityIO14PrimDirtyStateC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v3)
    {
      v4 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v4 = a2;
      }

      v5 = specialized _NativeSet.isEqual(to:)(v4, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v5 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v6 = 0;
        v7 = a1 + 56;
        v8 = 1 << *(a1 + 32);
        if (v8 < 64)
        {
          v9 = ~(-1 << v8);
        }

        else
        {
          v9 = -1;
        }

        v10 = v9 & *(a1 + 56);
        v11 = (v8 + 63) >> 6;
        v12 = a2 + 56;
        v25 = v11;
        v26 = a1;
        if (!v10)
        {
LABEL_24:
          v14 = v6;
          while (1)
          {
            v6 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v6 >= v11)
            {
              goto LABEL_36;
            }

            v15 = *(v7 + 8 * v6);
            ++v14;
            if (v15)
            {
              v13 = __clz(__rbit64(v15));
              v27 = (v15 - 1) & v15;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](a1, a2);
        }

        while (1)
        {
          v13 = __clz(__rbit64(v10));
          v27 = (v10 - 1) & v10;
LABEL_29:
          v16 = *(*(a1 + 48) + 8 * (v13 | (v6 << 6)));
          v17 = *(v2 + 40);
          Hasher.init(_seed:)();
          v18 = *(*v16 + 128);

          v18(v28);
          v19 = Hasher._finalize()();
          v20 = -1 << *(v2 + 32);
          v21 = v19 & ~v20;
          if (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          while (1)
          {
            v23 = *(**(*(v2 + 48) + 8 * v21) + 136);

            LOBYTE(v23) = v23(v16);

            if (v23)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v12 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v11 = v25;
          a1 = v26;
          v10 = v27;
          if (!v27)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v5 = 0;
    }

    return v5 & 1;
  }

  if (a1 < 0)
  {
    a2 = a1;
  }

  else
  {
    a2 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v3)
  {
    v5 = specialized _NativeSet.isEqual(to:)(a2, v2);
    return v5 & 1;
  }

  if (v2 < 0)
  {
    a1 = v2;
  }

  else
  {
    a1 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](a1, a2);
}

uint64_t StageDirtyState.description.getter()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO15StageDirtyStateCmMd, &_s9RealityIO15StageDirtyStateCmMR);
  v3 = String.init<A>(describing:)();
  _StringGuts.grow(_:)(24);

  v4 = v0[3];
  type metadata accessor for PrimDirtyState();
  lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type PrimDirtyState and conformance PrimDirtyState, 255, type metadata accessor for PrimDirtyState);
  v5 = Set.description.getter();
  MEMORY[0x26670F080](v5);

  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0xD000000000000014, 0x8000000261994F70);

  _StringGuts.grow(_:)(31);

  v6 = v1[2];
  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v7 = Set.description.getter();
  MEMORY[0x26670F080](v7);

  MEMORY[0x26670F080](41, 0xE100000000000000);

  MEMORY[0x26670F080](0xD00000000000001CLL, 0x8000000261994F90);

  return v3;
}

void *StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  if (!a3)
  {

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO14PrimDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d9IO15Stagegh122C26stageMetadataContainsAnyOf012primsContainiJ04coreACShyAA16ToolsFoundationsO5TokenVG_ShyAA04PrimdE0CGSo010RIOBuilderdC13J73RefaSgtcfcSo0rdqsT0aAMcfu_32f3b6550bcda465057a28ab83a1317178AmSTf3nnnpk_nTf1cn_n(a2);

    type metadata accessor for RIOBuilderDirtyPrimDescriptorRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a1);

    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    v7 = Array._bridgeToObjectiveC()().super.isa;

    v8 = RIOBuilderDirtyStageDescriptorCreateWithPrimDescriptorsAndMetadataDescriptors();

    a3 = v8;
  }

  v3[4] = a3;
  return v3;
}

uint64_t StageDirtyState.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t StageDirtyState.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Int StageDirtyState.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v2, *(v0 + 24));
  specialized Set.hash(into:)(v2, *(v0 + 16));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StageDirtyState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, *(v1 + 24));
  specialized Set.hash(into:)(v3, *(v1 + 16));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance StageDirtyState(__int128 *a1)
{
  v3 = *v1;
  specialized Set.hash(into:)(a1, *(v3 + 24));
  v4 = *(v3 + 16);

  specialized Set.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StageDirtyState()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  specialized Set.hash(into:)(v4, *(*v0 + 24));
  v2 = *(v1 + 16);

  specialized Set.hash(into:)(v4, v2);

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StageDirtyState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO14PrimDirtyStateC_Tt1g5(*(*a1 + 24), *(*a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  v5 = *(v3 + 16);

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v4, v5);
}

uint64_t specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = __CocoaSet.contains(_:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v16 = a1[2];
  v17 = a1[3];
  v18 = *(a1 + 8);
  v14 = *a1;
  v15 = a1[1];
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v13)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    Hasher.init(_seed:)();
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef);
    v12 = v11;
    _CFObject.hash(into:)();
    v13 = Hasher._finalize()();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x26670FA20](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t specialized Set.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v21[13] = *(a1 + 32);
  *&v21[15] = v3;
  v21[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v21[9] = *a1;
  *&v21[11] = v4;
  Hasher._finalize()();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= v20)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(a2 + 48) + 24 * (v13 | (v12 << 6)));
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    Hasher.init(_seed:)();

    v18 = v15;
    v19 = v17;
    specialized Set.hash(into:)(v21, v16);
    type metadata accessor for RIOPxrTfTokenRef(0);
    lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef);
    _CFObject.hash(into:)();
    v20 = Hasher._finalize()();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x26670FA20](v10);
    }

    v7 = *(a2 + 56 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v25 = a1[2];
  v26 = v3;
  v27 = *(a1 + 8);
  v4 = a1[1];
  v23 = *a1;
  v24 = v4;
  Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for PrimDirtyState();
    lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type PrimDirtyState and conformance PrimDirtyState, 255, type metadata accessor for PrimDirtyState);
    result = Set.Iterator.init(_cocoa:)();
    a2 = v28;
    v6 = v29;
    v7 = v30;
    v8 = v31;
    v9 = v32;
  }

  else
  {
    v10 = -1 << *(a2 + 32);
    v6 = a2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a2 + 56);

    v8 = 0;
  }

  v13 = 0;
  v14 = (v7 + 64) >> 6;
  while (a2 < 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20)
    {
LABEL_20:
      outlined consume of Set<PropertyDirtyState>.Iterator._Variant();
      return MEMORY[0x26670FA20](v13);
    }

    v21[0] = v20;
    type metadata accessor for PrimDirtyState();
    swift_dynamicCast();
    v17 = v22;
LABEL_10:
    Hasher.init(_seed:)();
    (*(*v17 + 128))(v21);
    v18 = Hasher._finalize()();

    v13 ^= v18;
  }

  if (v9)
  {
    v15 = v8;
LABEL_9:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = *(*(a2 + 48) + ((v15 << 9) | (8 * v16)));
    v22 = v17;

    goto LABEL_10;
  }

  v19 = v8;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      goto LABEL_20;
    }

    v9 = *(v6 + 8 * v15);
    ++v19;
    if (v9)
    {
      v8 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

{
  v3 = a1[3];
  v25 = a1[2];
  v26 = v3;
  v27 = *(a1 + 8);
  v4 = a1[1];
  v23 = *a1;
  v24 = v4;
  Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for PropertyDirtyState();
    lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(&lazy protocol witness table cache variable for type PropertyDirtyState and conformance PropertyDirtyState, 255, type metadata accessor for PropertyDirtyState);
    result = Set.Iterator.init(_cocoa:)();
    a2 = v28;
    v6 = v29;
    v7 = v30;
    v8 = v31;
    v9 = v32;
  }

  else
  {
    v10 = -1 << *(a2 + 32);
    v6 = a2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a2 + 56);

    v8 = 0;
  }

  v13 = 0;
  v14 = (v7 + 64) >> 6;
  while (a2 < 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20)
    {
LABEL_20:
      outlined consume of Set<PropertyDirtyState>.Iterator._Variant();
      return MEMORY[0x26670FA20](v13);
    }

    v21[0] = v20;
    type metadata accessor for PropertyDirtyState();
    swift_dynamicCast();
    v17 = v22;
LABEL_10:
    Hasher.init(_seed:)();
    (*(*v17 + 120))(v21);
    v18 = Hasher._finalize()();

    v13 ^= v18;
  }

  if (v9)
  {
    v15 = v8;
LABEL_9:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = *(*(a2 + 48) + ((v15 << 9) | (8 * v16)));
    v22 = v17;

    goto LABEL_10;
  }

  v19 = v8;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      goto LABEL_20;
    }

    v9 = *(v6 + 8 * v15);
    ++v19;
    if (v9)
    {
      v8 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *specialized StageDirtyState.__allocating_init(core:)(uint64_t a1)
{
  v2 = RIOBuilderDirtyStageDescriptorCopyPrimDescriptors();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOBuilderDirtyPrimDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }

LABEL_15:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_16:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v5 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_15;
  }

LABEL_3:
  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26670F670](v8, v5);
    }

    else
    {
      v10 = *(v5 + 8 * v8 + 32);
    }

    v11 = v10;
    if (RIOBuilderDirtyPrimDescriptorCopyType() == 2)
    {
      specialized TypeNamePrimDirtyState.__allocating_init(core:)(v11);
    }

    else
    {
      type metadata accessor for PrimDirtyState();
      PrimDirtyState.__allocating_init(core:)(v11);
    }

    ++v8;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v9 = *(v4 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v6 != v8);

  v12 = v4;
LABEL_17:
  v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO14PrimDirtyStateC_SayAFGTt0g5Tf4g_n(v12);

  v14 = RIOBuilderDirtyStageDescriptorCopyMetadataDescriptors();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v15 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_19;
    }
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_19:
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_20;
      }

LABEL_29:

      v17 = MEMORY[0x277D84F90];
LABEL_35:
      v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v17);

      type metadata accessor for StageDirtyState();
      result = swift_allocObject();
      result[2] = v28;
      result[3] = v13;
      result[4] = a1;
      return result;
    }
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_29;
  }

LABEL_20:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = v4;
    if ((v15 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v16; ++i)
      {
        MEMORY[0x26670F670](i, v15);
        v19 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        swift_unknownObjectRelease();
        v21 = *(v4 + 16);
        v20 = *(v4 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        }

        *(v4 + 16) = v21 + 1;
        *(v4 + 8 * v21 + 32) = v19;
      }
    }

    else
    {
      v22 = 32;
      do
      {
        v23 = *(v15 + v22);
        v24 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        v26 = *(v17 + 16);
        v25 = *(v17 + 24);
        if (v26 >= v25 >> 1)
        {
          v27 = v24;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v24 = v27;
        }

        *(v17 + 16) = v26 + 1;
        *(v17 + 8 * v26 + 32) = v24;
        v22 += 8;
        --v16;
      }

      while (v16);
    }

    goto LABEL_35;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type PrimDirtyState and conformance PrimDirtyState(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Set<ToolsFoundations.Token>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

size_t static ActionBuilder.generateGroupActionSpecifications(inputs:)()
{
  v0 = type metadata accessor for __RKEntityActionSpecification();
  v59 = *(v0 - 8);
  v1 = *(v59 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKEntityGroupActionOrderOSgMd, &_s10RealityKit26__RKEntityGroupActionOrderOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v52 - v9;
  v11 = type metadata accessor for __RKEntityGroupActionOrder();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v52 - v17;
  v19 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSb_Tt1g5Tf4ndn_n();
  v53 = v4;
  v54 = v11;
  v58 = v16;
  v60 = v18;
  v61 = v12;
  v52[1] = v19;
  v52[0] = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFs6UInt32V_Tt1g5Tf4ndn_n();

  __RKEntityGroupActionOrder.init(inputs:)(v10);
  v20 = v61;
  v21 = v54;
  (*(v61 + 56))(v10, 0, 1, v54);
  (*(v20 + 32))(v60, v10, v21);
  v22 = Inputs.accumulatedValues(forKey:)(0x736E6F69746361, 0xE700000000000000);
  v23 = specialized _arrayConditionalCast<A, B>(_:)(v22);

  if (!v23)
  {
LABEL_23:
    (*(v20 + 8))(v60, v21);
    return MEMORY[0x277D84F90];
  }

  result = v23;
  v57 = *(v23 + 16);
  if (!v57)
  {
    v26 = MEMORY[0x277D84F90];
    v27 = v59;
    v31 = v60;
    v30 = v58;
    v28 = v0;
    v29 = v53;
LABEL_20:
    v47 = v26;

    if (v47[2])
    {
      v48 = v54;
      (*(v20 + 16))(v30, v31, v54);
      __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
      (*(v27 + 104))(v6, *MEMORY[0x277CDAFA0], v28);
      static ActionBuilder.collapseAndReturnGroupActionSpecification(_:)(v6, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v49 = *(v27 + 72);
      v50 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_2619891C0;
      (*(v27 + 32))(v51 + v50, v29, v28);
      (*(v27 + 8))(v6, v28);
      (*(v20 + 8))(v31, v48);
      return v51;
    }

    v21 = v54;
    goto LABEL_23;
  }

  v25 = 0;
  v56 = v23 + 32;
  v26 = MEMORY[0x277D84F90];
  v27 = v59;
  v28 = v0;
  v29 = v53;
  v55 = result;
  while (v25 < *(result + 16))
  {
    v32 = v6;
    v33 = v29;
    v34 = v27;
    v35 = *(v56 + 8 * v25);
    v36 = *(v35 + 16);
    v37 = v26[2];
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      goto LABEL_25;
    }

    v39 = *(v56 + 8 * v25);
    v40 = v26;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v38 > v40[3] >> 1)
    {
      if (v37 <= v38)
      {
        v41 = v37 + v36;
      }

      else
      {
        v41 = v37;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v41, 1, v40);
      v40 = result;
    }

    v27 = v34;
    if (*(v35 + 16))
    {
      if ((v40[3] >> 1) - v40[2] < v36)
      {
        goto LABEL_27;
      }

      v42 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v43 = *(v34 + 72);
      swift_arrayInitWithCopy();

      v26 = v40;
      v29 = v33;
      v6 = v32;
      v20 = v61;
      v30 = v58;
      result = v55;
      if (v36)
      {
        v44 = v40[2];
        v45 = __OFADD__(v44, v36);
        v46 = v44 + v36;
        if (v45)
        {
          goto LABEL_28;
        }

        v40[2] = v46;
      }
    }

    else
    {

      v26 = v40;
      v29 = v33;
      v6 = v32;
      v20 = v61;
      v30 = v58;
      result = v55;
      if (v36)
      {
        goto LABEL_26;
      }
    }

    ++v25;
    v31 = v60;
    if (v57 == v25)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t static ActionBuilder.collapseAndReturnGroupActionSpecification(_:)@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v112 = a2;
  started = type metadata accessor for __RKEntityStartAnimateActionArguments();
  v102 = *(started - 8);
  v103 = started;
  v4 = *(v102 + 64);
  MEMORY[0x28223BE20](started);
  v101 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v99 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __RKAudioSpatialModeSelection();
  type metadata accessor for __RKEntityAudioActionType();
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v100 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for __RKEntityAudioActionArguments();
  v107 = *(v12 - 8);
  v108 = v12;
  v13 = *(v107 + 64);
  MEMORY[0x28223BE20](v12);
  v106 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for __RKEntityOrbitEntityActionArguments();
  v105 = *(v98 - 8);
  v15 = *(v105 + 64);
  v16 = MEMORY[0x28223BE20](v98);
  v97 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v104 = &v83 - v18;
  type metadata accessor for __RKEntityGroupActionOrder();
  v94 = type metadata accessor for __RKEntitySpinActionArguments();
  v96 = *(v94 - 8);
  v19 = *(v96 + 64);
  v20 = MEMORY[0x28223BE20](v94);
  v93 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v95 = &v83 - v22;
  v23 = type metadata accessor for __RKEntityActionSpecification();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v91 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v110 = &v83 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v111 = &v83 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v83 - v32;
  v34 = type metadata accessor for __RKEntityActionGroupArguments();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v24 + 16);
  v39(v33, a1, v23);
  v109 = *(v24 + 88);
  if (v109(v33, v23) != *MEMORY[0x277CDAFA0])
  {
    (*(v24 + 8))(v33, v23);
    return (v39)(v112, a1, v23);
  }

  v92 = v39;
  v90 = a1;
  v89 = v24;
  v40 = *(v24 + 96);
  v40(v33, v23);
  (*(v35 + 32))(v38, v33, v34);
  v41 = *(__RKEntityActionGroupArguments.actions.getter() + 16);

  v42 = v41 == 1;
  v43 = v23;
  if (!v42)
  {
    (*(v35 + 8))(v38, v34);
    return (v92)(v112, v90, v43);
  }

  v87 = v35;
  v88 = __RKEntityActionGroupArguments.loopCount.getter();
  if (v44)
  {
    v88 = 1;
    v45 = v110;
    v46 = v111;
  }

  else
  {
    v45 = v110;
    v46 = v111;
    if (v88 < 1)
    {
      (*(v87 + 8))(v38, v34);
      return (v92)(v112, v90, v43);
    }
  }

  v85 = v34;
  v86 = v38;
  result = __RKEntityActionGroupArguments.actions.getter();
  if (!*(result + 16))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v48 = v89;
  v84 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v49 = v92;
  v92(v46, result + v84, v43);

  v49(v45, v46, v43);
  v50 = v109(v45, v43);
  if (v50 == *MEMORY[0x277CDAF90])
  {
    v40(v45, v43);
    v52 = v106;
    v51 = v107;
    v53 = v108;
    (*(v107 + 32))(v106, v45, v108);
    (*(v51 + 8))(v52, v53);
    (*(v48 + 8))(v46, v43);
    (*(v87 + 8))(v86, v85);
    return (v49)(v112, v90, v43);
  }

  if (v50 == *MEMORY[0x277CDAF68])
  {
    LODWORD(v110) = v50;
    v40(v45, v43);
    v54 = v101;
    v55 = v102;
    v56 = v88;
    v57 = v103;
    v58 = (*(v102 + 32))(v101, v45, v103);
    MEMORY[0x26670E5D0](v58);
    result = __RKEntityStartAnimateActionArguments.loopCount.getter();
    if ((result * v56) >> 64 == (result * v56) >> 63)
    {
      v59 = v43;
      __RKEntityStartAnimateActionArguments.multiplePerformBehavior.getter();
      __RKEntityStartAnimateActionArguments.clipStart.getter();
      __RKEntityStartAnimateActionArguments.clipDuration.getter();
      __RKEntityStartAnimateActionArguments.clipReversed.getter();
      __RKEntityStartAnimateActionArguments.animationSpeed.getter();
      __RKEntityStartAnimateActionArguments.clipReverses.getter();
      v60 = v112;
      __RKEntityStartAnimateActionArguments.init(target:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:)();
      (*(v55 + 8))(v54, v57);
      (*(v48 + 8))(v111, v59);
      (*(v87 + 8))(v86, v85);
      return (*(v48 + 104))(v60, v110, v59);
    }

    goto LABEL_28;
  }

  if (v50 == *MEMORY[0x277CDAF50])
  {
    LODWORD(v110) = v50;
    v109 = v43;
    v40(v45, v43);
    v61 = v98;
    v108 = *(v105 + 32);
    v108(v104, v45, v98);
    v62 = __RKEntityOrbitEntityActionArguments.duration.getter();
    v63 = __RKEntityOrbitEntityActionArguments.rotations.getter();
    specialized static ActionBuilder.calculateMaximumMultiplier(lhs:rhs:)(v62 | ((HIDWORD(v62) & 1) << 32), v63 | ((HIDWORD(v63) & 1) << 32));
    v64 = v112;
    v65 = v87;
    v66 = v85;
    v67 = v86;
    v70 = v97;
    v71 = v104;
    static ActionBuilder.copyOrbitActionArguments(_:multiplier:)(v97);
    v72 = v105;
LABEL_24:
    (*(v72 + 8))(v71, v61);
    v81 = v109;
    (*(v48 + 8))(v111, v109);
    (*(v65 + 8))(v67, v66);
    v108(v64, v70, v61);
    return (*(v48 + 104))(v64, v110, v81);
  }

  if (v50 == *MEMORY[0x277CDAF80])
  {
    LODWORD(v110) = v50;
    v109 = v43;
    v40(v45, v43);
    v61 = v94;
    v108 = *(v96 + 32);
    v108(v95, v45, v94);
    v68 = __RKEntitySpinActionArguments.duration.getter();
    v69 = __RKEntitySpinActionArguments.iterations.getter();
    specialized static ActionBuilder.calculateMaximumMultiplier(lhs:rhs:)(v68 | ((HIDWORD(v68) & 1) << 32), v69 | ((HIDWORD(v69) & 1) << 32));
    v64 = v112;
    v65 = v87;
    v66 = v85;
    v67 = v86;
    v70 = v93;
    v71 = v95;
    static ActionBuilder.copySpinActionArguments(_:multiplier:)(v93);
    v72 = v96;
    goto LABEL_24;
  }

  v73 = v112;
  v74 = v90;
  v75 = v92;
  if (v88 == 1)
  {
    v76 = *(__RKEntityActionGroupArguments.actions.getter() + 16);

    if (v76 == 1)
    {
      v77 = v86;
      v78 = __RKEntityActionGroupArguments.actions.getter();
      if (*(v78 + 16))
      {
        v79 = v91;
        v75(v91, v78 + v84, v43);

        v80 = *(v48 + 8);
        v80(v46, v43);
        (*(v87 + 8))(v77, v85);
        (*(v48 + 32))(v73, v79, v43);
        return v80(v110, v43);
      }
    }
  }

  v82 = *(v48 + 8);
  v82(v46, v43);
  (*(v87 + 8))(v86, v85);
  v75(v73, v74, v43);
  return v82(v110, v43);
}

uint64_t static ActionBuilder.copySpinActionArguments(_:multiplier:)@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for __RKEntitySpinDirectionType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x26670E0D0](v12);
  __RKEntitySpinActionArguments.duration.getter();
  __RKEntitySpinActionArguments.iterations.getter();
  __RKEntitySpinActionArguments.direction.getter();
  v13 = *(v6 + 48);
  if (v13(v4, 1, v5) == 1)
  {
    (*(v6 + 104))(v9, *MEMORY[0x277CDAF28], v5);
    if (v13(v4, 1, v5) != 1)
    {
      outlined destroy of Any?(v4, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
  }

  __RKEntitySpinActionArguments.axis.getter();
  return __RKEntitySpinActionArguments.init(target:duration:iterations:direction:axis:)();
}

uint64_t static ActionBuilder.copyOrbitActionArguments(_:multiplier:)@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v18 - v3;
  v5 = type metadata accessor for __RKEntitySpinDirectionType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x26670E4C0](v13);
  __RKEntityOrbitEntityActionArguments.pivotTarget.getter();
  __RKEntityOrbitEntityActionArguments.duration.getter();
  __RKEntityOrbitEntityActionArguments.rotations.getter();
  v18[0] = __RKEntityOrbitEntityActionArguments.orbitalAxis.getter();
  v18[1] = v14;
  v19 = v15;
  v20 = __RKEntityOrbitEntityActionArguments.orientToPath.getter();
  __RKEntityOrbitEntityActionArguments.spinDirection.getter();
  v16 = *(v6 + 48);
  if (v16(v4, 1, v5) == 1)
  {
    (*(v6 + 104))(v9, *MEMORY[0x277CDAF28], v5);
    if (v16(v4, 1, v5) != 1)
    {
      outlined destroy of Any?(v4, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
  }

  return __RKEntityOrbitEntityActionArguments.init(target:pivotTarget:duration:rotations:orbitalAxis:orientToPath:spinDirection:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:)();
}

float specialized static ActionBuilder.calculateMaximumMultiplier(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  v2 = *&a1;
  v3 = 1.0;
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 1.0;
  }

  if ((a2 & 0x100000000) == 0)
  {
    v3 = *&a2;
  }

  if (v2 <= v3)
  {
    if ((LODWORD(v3) & 0x7FFFFF) == 0)
    {
      v2 = v3;
    }

    if ((~LODWORD(v3) & 0x7F800000) != 0)
    {
      v2 = v3;
    }
  }

  return roundf(3.4028e38 / v2);
}

uint64_t one-time initialization function for lightComponent()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.lightComponent = result;
  return result;
}

id one-time initialization function for attenuationRadiusAttributeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static SpotLightComponentBuilder.attenuationRadiusAttributeName = result;
  return result;
}

id one-time initialization function for attenuationFalloffExponentAttributeName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static SpotLightComponentBuilder.attenuationFalloffExponentAttributeName = result;
  return result;
}

uint64_t closure #1 in SpotLightComponentBuilder.run(inputs:)(uint64_t a1, _BYTE *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18SpotLightComponentV6ShadowVSgMd, &_s10RealityKit18SpotLightComponentV6ShadowVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v138 = v124 - v5;
  v6 = type metadata accessor for SpotLightComponent.Shadow();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v132 = v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for SpotLightComponent.Shadow.ShadowClippingPlane();
  v134 = *(v135 - 8);
  v10 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v131 = v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v129 = (v124 - v13);
  MEMORY[0x28223BE20](v14);
  v133 = v124 - v15;
  MEMORY[0x28223BE20](v16);
  v128 = (v124 - v17);
  MEMORY[0x28223BE20](v18);
  v137 = v124 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v130 = v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v136 = v124 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18SpotLightComponentVSgMd, &_s10RealityKit18SpotLightComponentVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v141 = v124 - v27;
  v28 = type metadata accessor for SpotLightComponent();
  v143 = *(v28 - 8);
  v144 = v28;
  v29 = *(v143 + 64);
  MEMORY[0x28223BE20](v28);
  v142 = v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for __EntityRef();
  v139 = *(v31 - 8);
  v140 = v31;
  v32 = v139[8];
  MEMORY[0x28223BE20](v31);
  v34 = v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = Inputs.prim.getter();
  v36 = *(v35 + 16);
  v37 = RIOPxrUsdObjectCopyName();
  v38 = RIOPxrTfTokenCopyString();
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  v145 = v35;
  v42 = *(v35 + 16);
  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_50;
  }

  v43 = RIOPxrUsdPrimCopyAttribute();
  v44 = RIOPxrUsdAttributeCopyValue();
  if (!v44)
  {

LABEL_51:
    SpotLightComponentBuilder.clear(inputs:)();
  }

  v126 = v7;
  v127 = a2;
  v45 = v44;
  v46 = RIOPxrVtValueCopyToken();

  if (!v46)
  {
LABEL_50:

    goto LABEL_51;
  }

  v125 = v6;
  v47 = RIOPxrTfTokenCopyString();
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  if (v48 != 0xD000000000000014 || 0x8000000261995070 != v50)
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v51 = v127;
    v52 = v145;
    if (v53)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

  v51 = v127;
  v52 = v145;
LABEL_13:
  if (one-time initialization token for OutputName != -1)
  {
LABEL_76:
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, &v147);
  if (v148)
  {
    type metadata accessor for EntityProxy();
    if (swift_dynamicCast())
    {

      v54 = v146;
      v55 = *(v52 + 16);
      if ((RIOPxrUsdPrimIsActive() & 1) == 0)
      {
        SpotLightComponentBuilder.clear(inputs:)();
      }

      Inputs.prim.getter();
      if (one-time initialization token for colorAttributeName != -1)
      {
        swift_once();
      }

      v56 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5SIMD3VySfG_Tt1B5();
      v58 = v57;
      v60 = v59;

      v61.i64[0] = v56;
      v61.i64[1] = v58;
      if (v60)
      {
        v62 = -1;
      }

      else
      {
        v62 = 0;
      }

      v147 = vbslq_s8(vdupq_n_s32(v62), xmmword_26198AAA0, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      lazy protocol witness table accessor for type Float and conformance Float();
      v63 = SIMD3<>.cgColor.getter();
      Inputs.prim.getter();
      if (one-time initialization token for intensityAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();

      Inputs.prim.getter();
      if (one-time initialization token for innerAngleAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();

      Inputs.prim.getter();
      if (one-time initialization token for outerAngleAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();

      Inputs.prim.getter();
      if (one-time initialization token for attenuationRadiusAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();

      Inputs.prim.getter();
      if (one-time initialization token for attenuationFalloffExponentAttributeName != -1)
      {
        swift_once();
      }

      _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();

      v51[17] = 1;
      type metadata accessor for Entity();
      v64 = MEMORY[0x277D841D8];
      v124[1] = v54;
      __AssetRef.__as<A>(_:)();
      v148 = v64;
      static __AssetRef.__fromCore(_:)();
      __swift_destroy_boxed_opaque_existential_0(v147.i64);
      v65 = static Entity.__fromCore(_:)();
      (v139[1])(v34, v140);
      v66 = v63;
      v67 = v142;
      v139 = v66;
      SpotLightComponent.init(cgColor:intensity:innerAngleInDegrees:outerAngleInDegrees:attenuationRadius:attenuationFalloffExponent:)();
      v69 = v143;
      v68 = v144;
      v39 = v141;
      (*(v143 + 16))(v141, v67, v144);
      (*(v69 + 56))(v39, 0, 1, v68);
      v140 = v65;
      v70 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v70(&v147, 0);
      specialized Builder.addComponent<A>(component:)(v67);
      v71 = Prim.children.getter();
      v72 = v71;
      if (v71 >> 62)
      {
        v34 = __CocoaSet.count.getter();
        if (v34)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v34 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
LABEL_34:
          v41 = 0;
          v141 = (v72 & 0xC000000000000001);
          v52 = v72 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v141)
            {
              v74 = MEMORY[0x26670F670](v41, v72);
              v39 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                goto LABEL_74;
              }
            }

            else
            {
              if (v41 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_75;
              }

              v73 = *(v72 + 8 * v41 + 32);

              v39 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
                goto LABEL_76;
              }
            }

            v75 = v74;
            v76 = *(v74 + 16);
            v51 = RIOPxrUsdObjectCopyName();
            if (one-time initialization token for shadowStructName != -1)
            {
              swift_once();
            }

            v77 = static SpotLightComponentBuilder.shadowStructName;
            type metadata accessor for RIOPxrTfTokenRef(0);
            lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
            v78 = v77;
            v79 = static _CFObject.== infix(_:_:)();

            if (v79)
            {
              break;
            }

            ++v41;
            if (v39 == v34)
            {
              goto LABEL_111;
            }
          }

          v82 = v75;
          if (one-time initialization token for shadowEnabledAttributeName != -1)
          {
            swift_once();
          }

          v83 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSb_Tt1B5();
          v84 = v125;
          v85 = v126;
          if (v83 == 2 || (v83 & 1) == 0)
          {

            goto LABEL_112;
          }

          if (one-time initialization token for shadowDepthBiasAttributeName != -1)
          {
            swift_once();
          }

          _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();
          if (one-time initialization token for shadowCullModeAttributeName != -1)
          {
            swift_once();
          }

          v86 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5();
          if (v87)
          {
            v88 = v86;
            v89 = v87;
            if (v86 == 1801675074 && v87 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v90 = MEMORY[0x277CDB488];
LABEL_68:
              v91 = *v90;
              v92 = type metadata accessor for MaterialParameterTypes.FaceCulling();
              v93 = *(v92 - 8);
              v94 = v136;
              (*(v93 + 104))(v136, v91, v92);
              (*(v93 + 56))(v94, 0, 1, v92);
              goto LABEL_83;
            }

            if (v88 == 0x746E6F7246 && v89 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v90 = MEMORY[0x277CDB498];
              goto LABEL_68;
            }

            if (v88 == 1701736270 && v89 == 0xE400000000000000)
            {

LABEL_81:
              v90 = MEMORY[0x277CDB490];
              goto LABEL_68;
            }

            v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v95)
            {
              goto LABEL_81;
            }
          }

          v96 = type metadata accessor for MaterialParameterTypes.FaceCulling();
          (*(*(v96 - 8) + 56))(v136, 1, 1, v96);
LABEL_83:
          if (one-time initialization token for shadowZNearAttributeName != -1)
          {
            swift_once();
          }

          v97 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5();
          v99 = MEMORY[0x277CDADE8];
          if (v98)
          {
            if (v97 == 0x6465786946 && v98 == 0xE500000000000000)
            {

LABEL_90:
              if (one-time initialization token for shadowZNearValueAttributeName != -1)
              {
                swift_once();
              }

              v101 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();
              v102 = *&v101;
              if ((v101 & 0x100000000) != 0)
              {
                v102 = 0.01;
              }

              v103 = v128;
              *v128 = v102;
              v104 = v134;
              v105 = *(v134 + 104);
              v106 = v135;
              v105(v103, *MEMORY[0x277CDADE0], v135);
              (*(v104 + 32))(v137, v103, v106);
LABEL_96:
              if (one-time initialization token for shadowZFarAttributeName != -1)
              {
                swift_once();
              }

              v107 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSS_Tt1B5();
              v124[0] = v82;
              if (v108)
              {
                if (v107 == 0x6465786946 && v108 == 0xE500000000000000)
                {

LABEL_103:
                  if (one-time initialization token for shadowZFarValueAttributeName != -1)
                  {
                    swift_once();
                  }

                  v110 = _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFSf_Tt1B5();
                  v111 = *&v110;
                  if ((v110 & 0x100000000) != 0)
                  {
                    v111 = 10.0;
                  }

                  v112 = v129;
                  *v129 = v111;
                  v113 = v134;
                  v114 = v135;
                  v105(v112, *MEMORY[0x277CDADE0], v135);
                  v115 = v133;
                  (*(v113 + 32))(v133, v112, v114);
                  goto LABEL_109;
                }

                v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v109)
                {
                  goto LABEL_103;
                }
              }

              v113 = v134;
              v115 = v133;
              v114 = v135;
              v105(v133, *v99, v135);
LABEL_109:
              v116 = v132;
              SpotLightComponent.Shadow.init()();
              SpotLightComponent.Shadow.depthBias.setter();
              outlined init with copy of MaterialParameterTypes.FaceCulling?(v136, v130);
              SpotLightComponent.Shadow.cullModeOverride.setter();
              v117 = *(v113 + 16);
              v118 = v131;
              v117(v131, v137, v114);
              SpotLightComponent.Shadow.zNear.setter();
              v117(v118, v115, v114);
              SpotLightComponent.Shadow.zFar.setter();
              v119 = v138;
              v120 = v125;
              (*(v85 + 16))(v138, v116, v125);
              (*(v85 + 56))(v119, 0, 1, v120);
              v121 = dispatch thunk of Entity.components.modify();
              Entity.ComponentSet.subscript.setter();
              v121(&v147, 0);
              specialized Builder.addComponent<A>(component:)(v116);

              (*(v85 + 8))(v116, v120);
              v122 = *(v113 + 8);
              v122(v133, v114);
              v122(v137, v114);
              outlined destroy of Any?(v136, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMd, &_s17RealityFoundation22MaterialParameterTypesV11FaceCullingOSgMR);
              return (*(v143 + 8))(v142, v144);
            }

            v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v100)
            {
              goto LABEL_90;
            }
          }

          v105 = *(v134 + 104);
          v105(v137, *v99, v135);
          goto LABEL_96;
        }
      }

LABEL_111:

      v84 = v125;
      v85 = v126;
LABEL_112:
      (*(v85 + 56))(v138, 1, 1, v84);
      v123 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v123(&v147, 0);

      return (*(v143 + 8))(v142, v144);
    }
  }

  else
  {
    outlined destroy of Any?(&v147, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for lightComponent != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_2619891C0;
  *(v80 + 56) = MEMORY[0x277D837D0];
  *(v80 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v80 + 32) = v39;
  *(v80 + 40) = v41;
  os_log(_:dso:log:type:_:)();
}

uint64_t SpotLightComponentBuilder.clear(inputs:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18SpotLightComponentV6ShadowVSgMd, &_s10RealityKit18SpotLightComponentV6ShadowVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18SpotLightComponentVSgMd, &_s10RealityKit18SpotLightComponentVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for __EntityRef();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(static EntityBuilder.OutputName, qword_27FEBC3A0, v21);
  if (!v22)
  {
    return outlined destroy of Any?(v21, &_sypSgMd, &_sypSgMR);
  }

  type metadata accessor for EntityProxy();
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v0 + 17) == 1)
    {
      type metadata accessor for Entity();
      v15 = MEMORY[0x277D841D8];
      __AssetRef.__as<A>(_:)();
      v22 = v15;
      static __AssetRef.__fromCore(_:)();
      __swift_destroy_boxed_opaque_existential_0(v21);
      static Entity.__fromCore(_:)();
      (*(v10 + 8))(v13, v9);
      v16 = type metadata accessor for SpotLightComponent();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      v17 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v17(v21, 0);
      v18 = type metadata accessor for SpotLightComponent.Shadow();
      (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
      v19 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v19(v21, 0);

      *(v0 + 17) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance SpotLightComponentBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = *(a1 + 56);
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in SpotLightComponentBuilder.run(inputs:);
  *(v4 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_3;
  v5 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized SpotLightComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v10 = static SpotLightComponentBuilder.realityKitComponentTypeName;
  v0 = static SpotLightComponentBuilder.realityKitComponentTypeName;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v10 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  v4 = *(inited + 16);
  swift_arrayDestroy();
  v5 = v10;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v6 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v5, 0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26198A640;
  *(v7 + 32) = v6;
  v10 = v3;

  specialized Sequence.forEach(_:)(v7);

  swift_setDeallocating();
  v8 = *(v7 + 16);
  swift_arrayDestroy();
  return v10;
}

id SafeSceneUUIDTable.lookup(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  [v7 lock];
  swift_beginAccess();
  v8 = *(v3 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = type metadata accessor for UUID();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a3, v12 + *(v14 + 72) * v11, v13);
    (*(v14 + 56))(a3, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  swift_endAccess();
  return [v7 unlock];
}

uint64_t SafeSceneUUIDTable.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t SceneAssetKeepAlive.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized static ActionBuilder.findSceneRoot(from:)(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (RIOPxrUsdObjectIsValid())
  {

    v3 = 0;
    while (1)
    {
      v4 = v1;
      v5 = Object.authoredMetadata()();
      if (String.count.getter() < 1)
      {
        v6 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v6 = RIOPxrTfTokenCreateWithCString();
      }

      v7 = v6;
      if (*(v5 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v9 & 1) != 0))
      {
        v10 = *(*(v5 + 56) + 8 * v8);

        v11 = RIOPxrVtValueCopyString();
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          if (v13 == 0x62694C656E656373 && v15 == 0xEC00000079726172)
          {

            return v3;
          }

          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {

            return v3;
          }
        }

        else
        {
        }
      }

      else
      {
      }

      v18 = *(v4 + 16);
      v19 = RIOPxrUsdObjectCopyName();
      if (String.count.getter() < 1)
      {
        v20 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v20 = RIOPxrTfTokenCreateWithCString();
      }

      v21 = v20;
      type metadata accessor for RIOPxrTfTokenRef(0);
      lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
      v22 = static _CFObject.== infix(_:_:)();

      if ((v22 & 1) == 0)
      {
        v23 = RIOPxrUsdPrimCopyParent();
        if (v23)
        {
          v24 = v23;
          type metadata accessor for Prim();
          v1 = swift_allocObject();
          *(v1 + 16) = v24;

          v25 = *(v1 + 16);
          v3 = v4;
          if (RIOPxrUsdObjectIsValid())
          {
            continue;
          }
        }
      }

      return 0;
    }
  }

  return 0;
}

void specialized static ActionBuilder.generateChangeSceneActionSpecifications(inputs:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v68 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v77 = &v68 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v68 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v68 - v20;
  v22 = Inputs.prim.getter();
  if (String.count.getter() < 1)
  {
    v23 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v23 = RIOPxrTfTokenCreateWithCString();
  }

  v24 = v23;
  v25 = *(v22 + 16);
  if (!RIOPxrUsdPrimHasRelationship())
  {

    v78 = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v78);
    return;
  }

  v74 = v6;
  v72 = v14;
  v26 = *(v22 + 16);
  v27 = RIOPxrUsdPrimCopyRelationship();

  type metadata accessor for Relationship();
  v28 = swift_allocObject();
  v28[2] = v27;
  v29 = Relationship.targets.getter();
  if (*(v29 + 16))
  {
    EmptyPath = *(v29 + 32);
  }

  else
  {

    EmptyPath = RIOPxrSdfPathCreateEmptyPath();
  }

  outlined consume of Result<AnyAttribute, Object.Error>(v28, 0);
  v31 = Inputs.prim.getter();
  v32 = specialized static ActionBuilder.findSceneRoot(from:)(v31);

  if (!v32)
  {

    return;
  }

  v76 = EmptyPath;
  v33 = *(a1 + 56);
  v34 = RIOBuilderInputsGetImportSession();
  if (!v34)
  {
    __break(1u);
    goto LABEL_22;
  }

  v35 = v34;
  v75 = v32;
  v71 = v19;
  v73 = v21;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v37 = *(SwiftObject + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable);

  v38 = v76;
  v39 = RIOPxrSdfPathCopyString();
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v78 = 10867;
  v79 = 0xE200000000000000;
  MEMORY[0x26670F080](v40, v42);

  SafeSceneUUIDTable.lookup(_:)(v78, v79, v8);

  v43 = v10;
  v44 = *(v10 + 48);
  if (v44(v8, 1, v9) == 1)
  {

    v45 = v8;
LABEL_19:
    outlined destroy of UUID?(v45);
    return;
  }

  v70 = v43;
  v46 = *(v43 + 32);
  v46(v73, v8, v9);
  v47 = RIOBuilderInputsGetImportSession();
  v48 = v75;
  if (!v47)
  {
    goto LABEL_23;
  }

  v49 = v47;
  v69 = v46;
  v50 = RIOImportSessionGetSwiftObject();

  v51 = v74;
  if (!v50)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v52 = *(v50 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneTable);
  v53 = *(v48 + 16);

  v54 = RIOPxrUsdObjectCopyPath();
  v55 = RIOPxrSdfPathCopyString();
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  SafeSceneUUIDTable.lookup(_:)(v56, v58, v51);

  if (v44(v51, 1, v9) == 1)
  {
    (*(v70 + 8))(v73, v9);

    v45 = v51;
    goto LABEL_19;
  }

  v59 = v71;
  v69(v71, v51, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
  v74 = type metadata accessor for __RKEntityActionSpecification();
  v60 = *(v74 - 8);
  v61 = *(v60 + 72);
  v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_2619891C0;
  v64 = v70;
  v65 = *(v70 + 16);
  v65(v77, v59, v9);
  v66 = v73;
  v65(v72, v73, v9);
  __RKChangeSceneActionArguments.init(sceneRoot:targetSceneIdentifier:)();
  (*(v60 + 104))(v63 + v62, *MEMORY[0x277CDAF48], v74);

  v67 = *(v64 + 8);
  v67(v71, v9);
  v67(v66, v9);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 64;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 48) + 8 * v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = *(v23 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v21;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(a1 + 36);
  v26 = result;
  v27 = v6;
  v28 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v26;
    v10 = v27;
    v12 = v28;
    v13 = *(specialized Set.subscript.getter(v26, v27, v28, a1) + 24);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v14 = *(v29 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v24)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy9RealityIO18PropertyDirtyStateC_GMd, &_sSh5IndexVy9RealityIO18PropertyDirtyStateC_GMR);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v25, 0);
      if (v7 == v2)
      {
LABEL_28:
        outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v11 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v11 >> 6;
      v17 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v17 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v11 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v11, v10, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v11, v10, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v10;
      v28 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

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

uint64_t static PropertyDirtyStateBuilder.buildBlock(_:)(unint64_t a1)
{
  v2 = MEMORY[0x277D84FA0];
  specialized Sequence.forEach(_:)(a1);
  return v2;
}

void *TypeNamePrimDirtyState.__allocating_init(typeName:primMetadataContainsAnyOf:propertiesContainAnyOf:)(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v5;
  v7 = inited + 32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v9 = v8;
  swift_setDeallocating();
  v10 = outlined destroy of ToolsFoundations.Token(v7);
  v11 = a3(v10);
  type metadata accessor for TypeNamePrimDirtyState();
  v12 = swift_allocObject();
  v12[5] = v9;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v13);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v11);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v15 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a2);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v16 = Array._bridgeToObjectiveC()().super.isa;

  v17 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v12[2] = a2;
  v12[3] = v11;
  v12[4] = v17;
  return v12;
}

uint64_t PrimDirtyState.__allocating_init(propertiesContainAnyOf:)(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 152);
  v4 = MEMORY[0x277D84FA0];

  return v3(v4, v2, 0);
}

uint64_t PrimDirtyState.__allocating_init(metadata:propertiesContainAnyOf:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2();
  v5 = *(v2 + 152);

  return v5(a1, v4, 0);
}

void PrimDirtyState.hash(into:)(__int128 *a1)
{
  specialized Set.hash(into:)(a1, *(v1 + 24));
  v3 = *(v1 + 16);

  specialized Set.hash(into:)(a1, v3);
}

uint64_t PrimDirtyState.isEqual(to:)(uint64_t a1)
{
  if ((_sSh2eeoiySbShyxG_ABtFZ9RealityIO18PropertyDirtyStateC_Tt1g5(*(v1 + 24), *(a1 + 24)) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  v4 = *(a1 + 16);

  return _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v3, v4);
}

uint64_t PrimDirtyState.description.getter()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO14PrimDirtyStateCmMd, &_s9RealityIO14PrimDirtyStateCmMR);
  v3 = String.init<A>(describing:)();
  _StringGuts.grow(_:)(29);

  v4 = v0[3];
  type metadata accessor for PropertyDirtyState();
  lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(&lazy protocol witness table cache variable for type PropertyDirtyState and conformance PropertyDirtyState, 255, type metadata accessor for PropertyDirtyState);
  v5 = Set.description.getter();
  MEMORY[0x26670F080](v5);

  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0xD000000000000019, 0x8000000261995180);

  _StringGuts.grow(_:)(30);

  v6 = v1[2];
  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v7 = Set.description.getter();
  MEMORY[0x26670F080](v7);

  MEMORY[0x26670F080](41, 0xE100000000000000);

  MEMORY[0x26670F080](0xD00000000000001BLL, 0x80000002619951A0);

  return v3;
}

void *PrimDirtyState.__allocating_init(primMetadataContainsAnyOf:propertiesContainAnyOf:core:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  if (!a3)
  {
    v7 = result;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a1);

    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(a2);

    type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
    v9 = Array._bridgeToObjectiveC()().super.isa;

    a3 = RIOBuilderDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

    result = v7;
  }

  result[4] = a3;
  return result;
}

void *PrimDirtyState.init(primMetadataContainsAnyOf:propertiesContainAnyOf:core:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  if (!a3)
  {

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a1);

    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(a2);

    type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
    v7 = Array._bridgeToObjectiveC()().super.isa;

    v8 = RIOBuilderDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

    a3 = v8;
  }

  v3[4] = a3;
  return v3;
}

uint64_t PrimDirtyState.__allocating_init(core:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x266710650]();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v7 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = v6;
  if ((v7 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v8; ++i)
    {
      MEMORY[0x26670F670](i, v7);
      v12 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
      swift_unknownObjectRelease();
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v10 + 16) = v14 + 1;
      *(v10 + 8 * v14 + 32) = v12;
    }

    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = 32;
    do
    {
      v16 = *(v7 + v15);
      v17 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        v20 = v17;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v17 = v20;
        v6 = MEMORY[0x277D84F90];
      }

      *(v10 + 16) = v19 + 1;
      *(v10 + 8 * v19 + 32) = v17;
      v15 += 8;
      --v8;
    }

    while (v8);
  }

LABEL_19:
  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v10);

  v22 = MEMORY[0x266710660](a1);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v23 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_21;
    }
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_21:
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }
  }

  v24 = __CocoaSet.count.getter();
  if (v24)
  {
LABEL_22:
    v33 = v6;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v24 & 0x8000000000000000) == 0)
    {
      v25 = 0;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x26670F670](v25, v23);
        }

        else
        {
          v27 = *(v23 + 8 * v25 + 32);
        }

        v28 = v27;
        v29 = RIOBuilderDirtyPropertyDescriptorCopyType();
        if (v29 == 3)
        {
          specialized NamespacedPropertyDirtyState.__allocating_init(core:)(v28);
        }

        else if (v29 == 2)
        {
          specialized NamedPropertyDirtyState.__allocating_init(core:)(v28);
        }

        else
        {
          type metadata accessor for PropertyDirtyState();
          PropertyDirtyState.__allocating_init(core:)(v28);
        }

        ++v25;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v26 = *(v33 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v24 != v25);

      v30 = v33;
      goto LABEL_37;
    }

LABEL_41:
    __break(1u);
    return result;
  }

LABEL_36:

  v30 = MEMORY[0x277D84F90];
LABEL_37:
  v31 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO18PropertyDirtyStateC_SayAFGTt0g5Tf4g_n(v30);

  v32 = *(v2 + 152);

  return v32(v21, v31, a1);
}

uint64_t PrimDirtyState.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t PrimDirtyState.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

Swift::Int PrimDirtyState.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 128))(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PrimDirtyState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 128))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PrimDirtyState()
{
  Hasher.init(_seed:)();
  (*(**v0 + 128))(v2);
  return Hasher._finalize()();
}

void *TypeNamePrimDirtyState.__allocating_init(typeName:propertiesContainAnyOf:)(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v3;
  v5 = inited + 32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v7 = v6;
  swift_setDeallocating();
  v8 = outlined destroy of ToolsFoundations.Token(v5);
  v9 = a2(v8);
  type metadata accessor for TypeNamePrimDirtyState();
  v10 = swift_allocObject();
  v10[5] = v7;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v11);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v9);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v13 = Array._bridgeToObjectiveC()().super.isa;

  v14 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v15 = Array._bridgeToObjectiveC()().super.isa;

  v16 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v10[2] = v14;
  v10[3] = v9;
  v10[4] = v16;
  return v10;
}

void *TypeNamePrimDirtyState.__allocating_init(typeName:primMetadataContainsAnyOf:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v3;
  v5 = inited + 32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v7 = v6;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(v5);
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v8 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO18PropertyDirtyStateC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  type metadata accessor for TypeNamePrimDirtyState();
  v9 = swift_allocObject();
  v9[5] = v7;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v10);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v8);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a2);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v13 = Array._bridgeToObjectiveC()().super.isa;

  v14 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v9[2] = a2;
  v9[3] = v8;
  v9[4] = v14;
  return v9;
}

void *TypeNamePrimDirtyState.__allocating_init(typeNameIsAnyOf:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84FA0];
  v3 = MEMORY[0x277D84FA0];
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO18PropertyDirtyStateC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v3 = MEMORY[0x277D84FA0];
    }
  }

  type metadata accessor for TypeNamePrimDirtyState();
  v4 = swift_allocObject();
  v4[5] = a1;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v5);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v3);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v7 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(v2);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v9;
  return v4;
}

void *TypeNamePrimDirtyState.__allocating_init(typeNameIsAnyOf:primMetadataContainsAnyOf:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO18PropertyDirtyStateC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  type metadata accessor for TypeNamePrimDirtyState();
  v5 = swift_allocObject();
  v5[5] = a1;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v6);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v4);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a2);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v5[2] = a2;
  v5[3] = v4;
  v5[4] = v10;
  return v5;
}

void *TypeNamePrimDirtyState.__allocating_init(typeNameIsAnyOf:primMetadataContainsAnyOf:propertiesContainAnyOf:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  type metadata accessor for TypeNamePrimDirtyState();
  v6 = swift_allocObject();
  v6[5] = a1;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v7);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_nTm(v5);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a2);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v6[2] = a2;
  v6[3] = v5;
  v6[4] = v11;
  return v6;
}

void TypeNamePrimDirtyState.hash(into:)(__int128 *a1)
{
  specialized Set.hash(into:)(a1, v1[5]);
  specialized Set.hash(into:)(a1, v1[3]);
  v3 = v1[2];

  specialized Set.hash(into:)(a1, v3);
}

uint64_t TypeNamePrimDirtyState.isEqual(to:)()
{
  v1 = *v0;
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = v0[5];
    v5 = *(v2 + 40);

    LOBYTE(v4) = _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v4, v5);

    if (v4 & 1) != 0 && (v6 = v0[3], v7 = *(v3 + 24), , LOBYTE(v6) = _sSh2eeoiySbShyxG_ABtFZ9RealityIO18PropertyDirtyStateC_Tt1g5(v6, v7), , (v6))
    {
      v8 = v0[2];
      v9 = *(v3 + 16);

      v10 = _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v8, v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t TypeNamePrimDirtyState.description.getter()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO22TypeNamePrimDirtyStateCmMd, &_s9RealityIO22TypeNamePrimDirtyStateCmMR);
  v3 = String.init<A>(describing:)();
  _StringGuts.grow(_:)(22);

  v4 = v0[5];
  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v5 = Set.description.getter();
  MEMORY[0x26670F080](v5);

  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0xD000000000000012, 0x80000002619951C0);

  _StringGuts.grow(_:)(28);

  v6 = v1[3];
  type metadata accessor for PropertyDirtyState();
  lazy protocol witness table accessor for type PropertyDirtyState and conformance PropertyDirtyState(&lazy protocol witness table cache variable for type PropertyDirtyState and conformance PropertyDirtyState, 255, type metadata accessor for PropertyDirtyState);
  v7 = Set.description.getter();
  MEMORY[0x26670F080](v7);

  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0xD000000000000018, 0x80000002619951E0);

  _StringGuts.grow(_:)(30);

  v8 = v1[2];
  v9 = Set.description.getter();
  MEMORY[0x26670F080](v9);

  MEMORY[0x26670F080](41, 0xE100000000000000);

  MEMORY[0x26670F080](0xD00000000000001BLL, 0x80000002619951A0);

  return v3;
}

uint64_t TypeNamePrimDirtyState.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t TypeNamePrimDirtyState.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t specialized Set.subscript.getter(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      result = __CocoaSet.Index.age.getter();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      v15 = __CocoaSet.Index.element.getter();
      type metadata accessor for PrimDirtyState();
      swift_dynamicCast();
      v7 = v14[0];
      v8 = *(a4 + 40);
      Hasher.init(_seed:)();
      (*(*v14[0] + 128))(v14);
      v9 = Hasher._finalize()();
      v10 = -1 << *(a4 + 32);
      v5 = v9 & ~v10;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v11 = ~v10;
        do
        {
          v12 = *(**(*(a4 + 48) + 8 * v5) + 136);

          LOBYTE(v12) = v12(v7);

          if (v12)
          {
            goto LABEL_19;
          }

          v5 = (v5 + 1) & v11;
        }

        while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
      }

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_20:
          v13 = *(*(a4 + 48) + 8 * v5);
        }

        __break(1u);
LABEL_19:

        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x26670F570](result, a2, v6);
  type metadata accessor for PrimDirtyState();
  swift_dynamicCast();
  return v14[0];
}

{
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      result = __CocoaSet.Index.age.getter();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      v15 = __CocoaSet.Index.element.getter();
      type metadata accessor for PropertyDirtyState();
      swift_dynamicCast();
      v7 = v14[0];
      v8 = *(a4 + 40);
      Hasher.init(_seed:)();
      (*(*v14[0] + 120))(v14);
      v9 = Hasher._finalize()();
      v10 = -1 << *(a4 + 32);
      v5 = v9 & ~v10;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v11 = ~v10;
        do
        {
          v12 = *(**(*(a4 + 48) + 8 * v5) + 128);

          LOBYTE(v12) = v12(v7);

          if (v12)
          {
            goto LABEL_19;
          }

          v5 = (v5 + 1) & v11;
        }

        while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
      }

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_20:
          v13 = *(*(a4 + 48) + 8 * v5);
        }

        __break(1u);
LABEL_19:

        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x26670F570](result, a2, v6);
  type metadata accessor for PropertyDirtyState();
  swift_dynamicCast();
  return v14[0];
}

{
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      if (__CocoaSet.Index.age.getter() == *(a4 + 36))
      {
        v18 = __CocoaSet.Index.element.getter();
        type metadata accessor for StageDirtyState();
        swift_dynamicCast();
        v7 = *&v17[0];
        v8 = *(a4 + 40);
        Hasher.init(_seed:)();
        specialized Set.hash(into:)(v17, *(*&v17[0] + 24));
        specialized Set.hash(into:)(v17, *(v7 + 16));
        v9 = Hasher._finalize()();
        v10 = -1 << *(a4 + 32);
        v5 = v9 & ~v10;
        if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          v11 = ~v10;
          while (1)
          {
            v12 = *(*(a4 + 48) + 8 * v5);
            v13 = *(v12 + 24);
            v14 = *(v7 + 24);

            if (_sSh2eeoiySbShyxG_ABtFZ9RealityIO14PrimDirtyStateC_Tt1g5(v13, v14))
            {
              v15 = _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(*(v12 + 16), *(v7 + 16));

              if (v15)
              {

                goto LABEL_20;
              }
            }

            else
            {
            }

            v5 = (v5 + 1) & v11;
            if (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        goto LABEL_26;
      }

      __break(1u);
    }

    else if ((result & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > result)
    {
      if ((*(a4 + 8 * (result >> 6) + 56) >> result))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_20:
          v16 = *(*(a4 + 48) + 8 * v5);
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:

      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  v18 = MEMORY[0x26670F570](result, a2, v6);
  type metadata accessor for StageDirtyState();
  swift_dynamicCast();
  return *&v17[0];
}

uint64_t specialized Set.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss11_SetStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = v3 + 56;
    v21 = a1 + 32;
    lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
    v5 = 0;
    while (1)
    {
      v23 = *(v21 + 8 * v5);
      v6 = *(v3 + 40);
      v7 = v23;
      v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v4 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) != 0)
      {
        v14 = v1;
        v15 = ~v9;
        lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
        do
        {
          v22 = *(*(v3 + 48) + 8 * v10);
          v16 = v22;
          v17 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v17)
          {

            v1 = v14;
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v15;
          v11 = v10 >> 6;
          v12 = *(v4 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while (((1 << v10) & v12) != 0);
        v1 = v14;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v23;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v20;
LABEL_4:
      if (++v5 == v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO18PropertyDirtyStateC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9RealityIO18PropertyDirtyStateCGMd, &_ss11_SetStorageCy9RealityIO18PropertyDirtyStateCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = __CocoaSet.count.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1;
  v23 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v5;
  while (v23)
  {
    result = MEMORY[0x26670F670](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_24;
    }

LABEL_17:
    v10 = *(v3 + 40);
    Hasher.init(_seed:)();
    (*(*v8 + 120))(v24);
    result = Hasher._finalize()();
    v11 = ~(-1 << *(v3 + 32));
    v12 = result & v11;
    v13 = (result & v11) >> 6;
    v14 = *(v7 + 8 * v13);
    v15 = 1 << (result & v11);
    if ((v15 & v14) != 0)
    {
      while (1)
      {
        v16 = *(**(*(v3 + 48) + 8 * v12) + 128);

        LOBYTE(v16) = v16(v8);

        if (v16)
        {
          break;
        }

        v12 = (v12 + 1) & v11;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          v5 = v21;
          v1 = v22;
          goto LABEL_21;
        }
      }

      v5 = v21;
      v1 = v22;
      if (v6 == v21)
      {
        return v3;
      }
    }

    else
    {
LABEL_21:
      *(v7 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v8;
      v17 = *(v3 + 16);
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_25;
      }

      *(v3 + 16) = v18;
      if (v6 == v5)
      {
        return v3;
      }
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_26;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}
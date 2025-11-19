uint64_t sub_1DD4BD3CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4533457273417369 && a2 == 0xEE0064656C62616ELL;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001DD66C4C0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001DD66C420 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001DD66C440 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001DD66C460 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000001DD66C480 == a2;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD00000000000001ALL && 0x80000001DD66C4A0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD640CD8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD4BD608(char a1)
{
  result = 0x4533457273417369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4BD6EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD948, &qword_1DD6526A8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v23[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4BDCB8();
  sub_1DD640EF8();
  v14 = *v3;
  v23[15] = 0;
  OUTLINED_FUNCTION_10();
  sub_1DD640C28();
  if (!v2)
  {
    v15 = *(v3 + 1);
    v16 = *(v3 + 2);
    v23[14] = 1;
    sub_1DD640C18();
    v17 = *(v3 + 3);
    v23[13] = 2;
    OUTLINED_FUNCTION_10();
    sub_1DD640C78();
    v18 = *(v3 + 4);
    v23[12] = 3;
    OUTLINED_FUNCTION_10();
    sub_1DD640C78();
    v19 = *(v3 + 5);
    v23[11] = 4;
    sub_1DD640C38();
    v20 = *(v3 + 6);
    v23[10] = 5;
    sub_1DD640C38();
    v21 = v3[56];
    v23[9] = 6;
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DD4BD8EC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD938, &qword_1DD6526A0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4BDCB8();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29[0] = 0;
  v10 = sub_1DD640B38();
  OUTLINED_FUNCTION_0_81(1);
  v11 = sub_1DD640B28();
  v13 = v12;
  v25 = v11;
  OUTLINED_FUNCTION_0_81(2);
  v24 = sub_1DD640B88();
  OUTLINED_FUNCTION_0_81(3);
  v23 = sub_1DD640B88();
  OUTLINED_FUNCTION_0_81(4);
  sub_1DD640B48();
  v15 = v14;
  OUTLINED_FUNCTION_0_81(5);
  sub_1DD640B48();
  v17 = v16;
  v37 = 6;
  v18 = sub_1DD640B38();
  v10 &= 1u;
  v19 = OUTLINED_FUNCTION_1_60();
  v20(v19);
  v18 &= 1u;
  LOBYTE(v26) = v10;
  *(&v26 + 1) = v25;
  *&v27 = v13;
  *(&v27 + 1) = v24;
  *v28 = v23;
  *&v28[8] = v15;
  *&v28[16] = v17;
  v28[24] = v18;
  sub_1DD3FAD78(&v26, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v10;
  v30 = v25;
  v31 = v13;
  v32 = v24;
  v33 = v23;
  v34 = v15;
  v35 = v17;
  v36 = v18;
  result = sub_1DD44FFD8(v29);
  v22 = v27;
  *a2 = v26;
  a2[1] = v22;
  a2[2] = *v28;
  *(a2 + 41) = *&v28[9];
  return result;
}

uint64_t sub_1DD4BDBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4BD3CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4BDBD8(uint64_t a1)
{
  v2 = sub_1DD4BDCB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4BDC14(uint64_t a1)
{
  v2 = sub_1DD4BDCB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD4BDC50@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DD4BD8EC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_1DD4BDCB8()
{
  result = qword_1ECCDD940;
  if (!qword_1ECCDD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD940);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for E3TrialFactors.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4BDDEC()
{
  result = qword_1ECCDD950;
  if (!qword_1ECCDD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD950);
  }

  return result;
}

unint64_t sub_1DD4BDE44()
{
  result = qword_1ECCDD958;
  if (!qword_1ECCDD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD958);
  }

  return result;
}

unint64_t sub_1DD4BDE9C()
{
  result = qword_1ECCDD960;
  if (!qword_1ECCDD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD960);
  }

  return result;
}

uint64_t type metadata accessor for EmojiQueryExpander()
{
  result = qword_1EE1623D0;
  if (!qword_1EE1623D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD4BDF64()
{
  result = sub_1DD63D168();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StringTokenizer();
    if (v2 <= 0x3F)
    {
      result = sub_1DD39638C(319, &qword_1EE1601D8, 0x1E699BAD0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id sub_1DD4BE010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DD63D168();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  Expander = type metadata accessor for EmojiQueryExpander();
  sub_1DD4BE2A4(a2, a3 + *(Expander + 20));
  sub_1DD39638C(0, &qword_1EE1601D8, 0x1E699BAD0);
  v9 = sub_1DD63D118();
  result = sub_1DD4BE624(v9, v10);
  if (result)
  {
    v12 = result;
    sub_1DD4BF460(a2);
    result = (*(v7 + 8))(a1, v6);
    *(a3 + *(Expander + 24)) = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD4BE138(void *__src)
{
  v2 = v1;
  memcpy(v12, __src, sizeof(v12));
  v3 = *(type metadata accessor for EmojiQueryExpander() + 20);
  v11[3] = type metadata accessor for StringTokenizer();
  v11[4] = &off_1F58C2FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_1DD4BE2A4(v2 + v3, boxed_opaque_existential_1);
  sub_1DD41E258();
  sub_1DD582E38();
  v6 = v5;

  __swift_destroy_boxed_opaque_existential_1(v11);
  if (*(v6 + 16))
  {
    sub_1DD4BE694(v6);

    MEMORY[0x1EEE9AC00](v7);
    sub_1DD604D3C();
    v9 = v8;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t sub_1DD4BE2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringTokenizer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4BE308(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  if (sub_1DD4F9BB8() & 1) != 0 || (sub_1DD63D118(), sub_1DD3B52B8(), sub_1DD3B530C(), v5 = OUTLINED_FUNCTION_1_61(), , (v5))
  {
    v6 = 0;
  }

  else
  {
    sub_1DD63D118();
    v7 = OUTLINED_FUNCTION_1_61();

    v6 = v7 ^ 1;
  }

  Expander = type metadata accessor for EmojiQueryExpander();
  v9 = v6 & 1;
  v10 = v2 + *(Expander + 20);
  v11 = StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(v3, v4, v9, 1);
  if (*(v11 + 16) && (v12 = sub_1DD4BE694(v11), , (v13 = *(v12 + 16)) != 0))
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1DD42BA28();
    v14 = v22;
    v15 = (v12 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v18 = *(v22 + 16);
      v19 = *(v22 + 24);

      if (v18 >= v19 >> 1)
      {
        sub_1DD42BA28();
      }

      *(v22 + 16) = v18 + 1;
      v20 = v22 + 16 * v18;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v14;
}

unint64_t sub_1DD4BE4F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1DD4BE578(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = *(a4(0) - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_1DD4BE624(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1DD63FDA8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() emojiLocaleDataWithLocaleIdentifier_];

  return v3;
}

int64_t sub_1DD4BE694(uint64_t a1)
{
  v108 = MEMORY[0x1E69E7CD0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v94 = a1 + 32;
    v101 = MEMORY[0x1E69E7CC0];
    v99 = (2 * v2) | 1;
    v91 = *(a1 + 16);
    do
    {
      v5 = v4;
      v93 = (v4 + 1);
      v97 = v4;
      v1 = v99;
      do
      {
        if (v2 <= v5)
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD968, &qword_1DD6527F0);
        sub_1DD4BF308();
        v100 = OUTLINED_FUNCTION_0_82();
        v7 = v6;
        v8 = OUTLINED_FUNCTION_0_82();
        v10 = v9;
        aBlock = a1;
        v103 = v94;
        v104 = v2;
        v105 = v99;
        v11 = OUTLINED_FUNCTION_0_82();
        v13 = v12;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v14 = v101;
        }

        else
        {
          v17 = *(v101 + 16);
          sub_1DD3BF844();
          v14 = v18;
        }

        v15 = *(v14 + 16);
        if (v15 >= *(v14 + 24) >> 1)
        {
          sub_1DD3BF844();
          v14 = v19;
        }

        *(v14 + 16) = v15 + 1;
        v101 = v14;
        v16 = (v14 + 48 * v15);
        v16[4] = v100;
        v16[5] = v7;
        v16[6] = v8;
        v16[7] = v10;
        v16[8] = v11;
        v16[9] = v13;
        v1 -= 2;
        v2 = (v2 - 1);
        v5 = v97;
      }

      while (v2);
      v2 = v91;
      v4 = v93;
    }

    while (v93 != v91);
  }

  else
  {
    v101 = MEMORY[0x1E69E7CC0];
  }

  v79 = *(v101 + 16);
  if (!v79)
  {
    goto LABEL_47;
  }

  Expander = type metadata accessor for EmojiQueryExpander();
  v21 = v101;
  v22 = 0;
  v78 = *(v90 + *(Expander + 24));
  v23 = MEMORY[0x1E69E6158];
  while (2)
  {
    if (v22 < *(v21 + 16))
    {
      v24 = (v101 + 32 + 48 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = v24[2];
      v28 = v24[3];
      v29 = v24[4];
      v30 = v24[5];
      v87 = v29;
      v88 = *v24;
      v80 = v22 + 1;
      v31 = swift_allocObject();
      *(v31 + 16) = MEMORY[0x1E69E7CC8];
      swift_bridgeObjectRetain_n();

      v32 = sub_1DD63FF08();
      v33 = swift_allocObject();
      v33[2] = v26;
      v33[3] = v25;
      v33[4] = v27;
      v33[5] = v28;
      v33[6] = v29;
      v33[7] = v30;
      v33[8] = v31;
      v106 = sub_1DD4BF410;
      v107 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v103 = 1107296256;
      v104 = sub_1DD4BF0E0;
      v105 = &block_descriptor_6;
      v34 = _Block_copy(&aBlock);

      v35 = v32;
      v36 = v27;
      sub_1DD4BF36C(v27, v28, 0, v35, 0, 1, v34, v78);
      _Block_release(v34);
      swift_beginAccess();
      v37 = *(v31 + 16);
      v38 = v37 + 64;
      v39 = 1 << *(v37 + 32);
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      else
      {
        v40 = -1;
      }

      v41 = v40 & *(*(v31 + 16) + 64);
      v42 = HIBYTE(v25) & 0xF;
      v85 = v30;
      v86 = v25;
      v43 = (v25 & 0x2000000000000000) == 0;
      v1 = (v39 + 63) >> 6;
      if (v43)
      {
        v44 = v88 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      v45 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v45 = v87 & 0xFFFFFFFFFFFFLL;
      }

      v82 = v45;
      v83 = v44;

      v46 = 0;
      v84 = v1;
      v92 = v37;
      v81 = v37 + 64;
      while (v41)
      {
        v47 = v46;
LABEL_32:
        v48 = __clz(__rbit64(v41)) | (v47 << 6);
        v49 = *(v37 + 56);
        v50 = (*(v37 + 48) + 16 * v48);
        v51 = *v50;
        v52 = v50[1];
        v53 = *(v49 + 8 * v48);
        aBlock = v36;
        v103 = v28;
        sub_1DD3B7F10();

        if (sub_1DD6406D8())
        {
          v89 = v47;
          if (v83)
          {
            aBlock = v88;
            v103 = v86;

            MEMORY[0x1E12B2260](32, 0xE100000000000000);
            v54 = aBlock;
            v55 = v103;
          }

          else
          {
            v55 = v86;

            v54 = v88;
          }

          v37 = v92;
          v96 = v54;
          if (v82)
          {
            aBlock = 32;
            v103 = 0xE100000000000000;
            MEMORY[0x1E12B2260](v87, v85);
            v57 = aBlock;
            v56 = v103;
          }

          else
          {

            v57 = v87;
          }

          v58 = *(v53 + 16);
          if (v58)
          {
            v59 = (v53 + 40);
            v98 = v56;
            v95 = v57;
            do
            {
              v60 = *(v59 - 1);
              v61 = *v59;
              aBlock = v36;
              v103 = v28;
              v62 = v28;
              v63 = sub_1DD640678();
              v64 = v36;
              v65 = v23;
              v67 = v66;
              aBlock = v96;
              v103 = v55;

              v68 = v63;
              v28 = v62;
              MEMORY[0x1E12B2260](v68, v67);

              MEMORY[0x1E12B2260](v95, v98);
              v23 = v65;
              v36 = v64;

              sub_1DD56CE00(&aBlock, aBlock, v103);

              v59 += 2;
              --v58;
            }

            while (v58);

            v46 = v89;
            v37 = v92;
            v38 = v81;
          }

          else
          {

            v46 = v89;
          }

          v1 = v84;
          v41 &= v41 - 1;
        }

        else
        {

          v46 = v47;
          v37 = v92;
          v41 &= v41 - 1;
        }
      }

      while (1)
      {
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          __break(1u);
          goto LABEL_52;
        }

        if (v47 >= v1)
        {
          break;
        }

        v41 = *(v38 + 8 * v47);
        ++v46;
        if (v41)
        {
          goto LABEL_32;
        }
      }

      v22 = v80;
      v21 = v101;
      if (v80 != v79)
      {
        continue;
      }

LABEL_47:

      v1 = sub_1DD594058(v108);
      if (qword_1EE165FB0 == -1)
      {
        goto LABEL_48;
      }

      goto LABEL_53;
    }

    break;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  swift_once();
LABEL_48:
  v69 = sub_1DD63F9F8();
  __swift_project_value_buffer(v69, qword_1EE16F068);

  v70 = sub_1DD63F9D8();
  v71 = sub_1DD640368();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock = v73;
    *v72 = 136315138;
    v74 = MEMORY[0x1E12B2430](v1, MEMORY[0x1E69E6158]);
    v76 = sub_1DD39565C(v74, v75, &aBlock);

    *(v72 + 4) = v76;
    _os_log_impl(&dword_1DD38D000, v70, v71, "Expansions generated by the EmojiResolver: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x1E12B3DA0](v73, -1, -1);
    MEMORY[0x1E12B3DA0](v72, -1, -1);
  }

  return v1;
}

void sub_1DD4BEEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 + 16);
  v9 = *(a5 + 24);
  sub_1DD640318();
  if ((v10 & 1) == 0)
  {
    v11 = sub_1DD640058();
    MEMORY[0x1E12B2190](v11);

    v12 = MEMORY[0x1E69E7CC0];
    if (a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = sub_1DD3CC020(v13);
    if (v14)
    {
      v15 = v14;

      sub_1DD42A2D4();
      if ((v15 & 0x8000000000000000) == 0)
      {
        v28 = a6;
        v16 = 0;
        v17 = v12;
        while (1)
        {
          v18 = (v13 & 0xC000000000000001) != 0 ? MEMORY[0x1E12B2C10](v16, v13) : *(v13 + 8 * v16 + 32);
          v19 = v18;
          v20 = [v19 string];
          if (v20)
          {
            v21 = v20;
            v22 = sub_1DD63FDD8();
            v24 = v23;
          }

          else
          {
            v22 = 0;
            v24 = 0;
          }

          if (!v24)
          {
            break;
          }

          v25 = *(v17 + 16);
          if (v25 >= *(v17 + 24) >> 1)
          {
            sub_1DD42A2D4();
          }

          ++v16;
          *(v17 + 16) = v25 + 1;
          v26 = v17 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v24;
          if (v15 == v16)
          {

            a6 = v28;
            goto LABEL_20;
          }
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {

LABEL_20:
      swift_beginAccess();
      v27 = *(a6 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v29 = *(a6 + 16);
      sub_1DD4001C0();
      *(a6 + 16) = v29;

      swift_endAccess();
    }
  }
}

uint64_t sub_1DD4BF0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_1DD39638C(0, &qword_1ECCDD978, 0x1E699BAF8);
    v8 = sub_1DD640118();
  }

  v10(v8, a3, a4, a5);
}

uint64_t sub_1DD4BF18C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_1DD4BF298(a2, a3);
  v6 = a3[4];

  a3[3] = v5;
  a3[4] = v4;
  v7 = a3[6];

  a3[5] = 0;
  a3[6] = 0xE000000000000000;
  v8 = a3[8];

  a3[7] = 0;
  a3[8] = 0xE000000000000000;
  v9 = a3[10];

  a3[9] = 0;
  a3[10] = 0xE000000000000000;
  v10 = a3[12];

  a3[11] = 0;
  a3[12] = 0xE000000000000000;
  v11 = a3[14];

  a3[13] = 0;
  a3[14] = 0xE000000000000000;
  v12 = a3[16];

  a3[15] = 0;
  a3[16] = 0xE000000000000000;
  v13 = a3[18];

  a3[17] = 0;
  a3[18] = 0xE000000000000000;
  v14 = a3[20];

  a3[19] = 0;
  a3[20] = 0xE000000000000000;
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) + 36);
  result = type metadata accessor for ContactResolver.SignalSet(0);
  v15[*(result + 156)] = 1;
  return result;
}

uint64_t sub_1DD4BF298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD4BF308()
{
  result = qword_1ECCDD970;
  if (!qword_1ECCDD970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDD968, &qword_1DD6527F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD970);
  }

  return result;
}

void sub_1DD4BF36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_1DD63FDA8();

  [a8 enumerateSearchResultsInText:v14 range:a3 options:a4 searchType:a5 usingBlock:{a6, a7}];
}

void sub_1DD4BF410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 48);
  v7 = *(v4 + 56);
  v8[0] = *(v4 + 16);
  v8[1] = v5;
  v9 = v6;
  v10 = v7;
  sub_1DD4BEEB8(a1, a2, a3, a4, v8, *(v4 + 64));
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD4BF460(uint64_t a1)
{
  v2 = type metadata accessor for StringTokenizer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateTime.Date.Holiday.Emotion.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD4BF4E8()
{
  result = qword_1ECCDD980;
  if (!qword_1ECCDD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD980);
  }

  return result;
}

uint64_t sub_1DD4BF544@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.Holiday.Emotion.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s7EmotionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4BF6F8()
{
  result = qword_1ECCDD988;
  if (!qword_1ECCDD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD988);
  }

  return result;
}

uint64_t sub_1DD4BF74C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v17 = 6;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDayOfWeek:)(&v17);
  v17 = 0;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  OUTLINED_FUNCTION_0_83();
  DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(0, 0, 0, 0, 0, 0, v1, v2, v13, v15);
  type metadata accessor for DateTime();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_1_62();
  DateTime.init(withDate:time:)(v3, v4);
  v17 = 5;
  v5 = swift_allocObject();
  v6 = DateTime.Date.init(withDayOfWeek:)(&v17);
  v17 = 1;
  swift_allocObject();
  OUTLINED_FUNCTION_0_83();
  DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(11, 0, 59, 0, 59, 0, v7, v8, v14, v16);
  OUTLINED_FUNCTION_1_11();
  v9 = DateTime.init(withDate:time:)(v6, v5);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_1_62();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v10, v11);
  OUTLINED_FUNCTION_1_11();
  *(inited + 56) = DateTime.init(occurringIn:)(v9);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD4BF938(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD4BF978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_1DD4BF9D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      OUTLINED_FUNCTION_0_84();
      sub_1DD6408D8();

      OUTLINED_FUNCTION_26_1();
      v13 = 0xD000000000000010;
      v11 = OUTLINED_FUNCTION_1_63();
      MEMORY[0x1E12B2260](v11);
      MEMORY[0x1E12B2260](0x6C6F63206E692060, 0xED000020736E6D75);
      v12 = MEMORY[0x1E12B2430](a3, MEMORY[0x1E69E6158]);
      MEMORY[0x1E12B2260](v12);

      return v13;
    case 2:
      OUTLINED_FUNCTION_0_84();
      sub_1DD6408D8();

      OUTLINED_FUNCTION_26_1();
      v13 = 0xD000000000000012;
      v7 = OUTLINED_FUNCTION_1_63();
      MEMORY[0x1E12B2260](v7);
      MEMORY[0x1E12B2260](0xD000000000000018, 0x80000001DD66DEC0);
      v8 = MEMORY[0x1E12B2430](a3, MEMORY[0x1E69E6158]);
      MEMORY[0x1E12B2260](v8);

      v5 = 41;
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_0_84();
      sub_1DD6408D8();

      OUTLINED_FUNCTION_26_1();
      v13 = 0xD000000000000022;
      v9 = OUTLINED_FUNCTION_1_63();
      MEMORY[0x1E12B2260](v9);
      v5 = 96;
LABEL_7:
      v6 = 0xE100000000000000;
      goto LABEL_8;
    case 4:
      OUTLINED_FUNCTION_0_84();
      sub_1DD6408D8();

      OUTLINED_FUNCTION_26_1();
      v13 = 0xD00000000000001ALL;
      goto LABEL_4;
    default:
      OUTLINED_FUNCTION_0_84();
      sub_1DD6408D8();

      v13 = 0x2068637573206F4ELL;
LABEL_4:
      v5 = OUTLINED_FUNCTION_1_63();
LABEL_8:
      MEMORY[0x1E12B2260](v5, v6);
      return v13;
  }
}

uint64_t sub_1DD4BFC18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD652A50;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v42 = 1;
  v41 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_0_85();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v1, v2, v3, v4, 10, 0, 0, v5);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_3();
  v6 = OUTLINED_FUNCTION_0_85();
  *(inited + 88) = OUTLINED_FUNCTION_2_6(v6, v7, v8, v9, v10, v11, v12, v13);
  *(inited + 96) = xmmword_1DD652A60;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_1_3();
  *(inited + 120) = OUTLINED_FUNCTION_2_6(7, 0, 0, &v42, v14, v15, v16, &v41);
  *(inited + 128) = xmmword_1DD643600;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_1_3();
  v17 = OUTLINED_FUNCTION_0_85();
  *(inited + 152) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v17, v18, v19, v20, 8, 59, 59, v21);
  *(inited + 160) = xmmword_1DD643620;
  *(inited + 176) = 0;
  OUTLINED_FUNCTION_1_3();
  v22 = OUTLINED_FUNCTION_0_85();
  *(inited + 184) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v22, v23, v24, v25, 10, 0, 0, v26);
  *(inited + 192) = xmmword_1DD643630;
  *(inited + 208) = 0;
  OUTLINED_FUNCTION_1_3();
  v27 = OUTLINED_FUNCTION_0_85();
  *(inited + 216) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v27, v28, v29, v30, 7, 0, 0, v31);
  *(inited + 224) = xmmword_1DD643640;
  *(inited + 240) = 0;
  OUTLINED_FUNCTION_1_3();
  *(inited + 248) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(2, 0, 0, &v42, 6, 59, 59, &v41);
  *(inited + 256) = xmmword_1DD643650;
  *(inited + 272) = 0;
  OUTLINED_FUNCTION_1_3();
  v32 = OUTLINED_FUNCTION_0_85();
  *(inited + 280) = OUTLINED_FUNCTION_2_6(v32, v33, v34, v35, v36, v37, v38, v39);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

void *sub_1DD4BFE14(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1DD63D798();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v2[4] = sub_1DD63D788();
  return v2;
}

void sub_1DD4BFE5C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = 0;
  v4 = *(a1 + 24);
  v5 = *(v4 + 16);
  v6 = (v4 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v3)
    {
      v15 = *a1;
      if (*a1)
      {
        v16 = v15;
        v17 = sub_1DD640558();

        if ((v17 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v18 = *(a1 + *(type metadata accessor for CommsAppResolutionFeature(0) + 44));
        if (v18 == 2 || (v18 & 1) == 0)
        {
LABEL_15:
          CommsAppResolutionFeature.isMessage.getter();
          if ((v21 & 1) == 0)
          {
            v24 = 0;
            goto LABEL_24;
          }

          if (v15)
          {
            v22 = v15;
            v23 = sub_1DD640548();

            if ((v23 & 1) == 0)
            {
LABEL_23:
              v24 = 0;
LABEL_24:
              v26 = *(v35 + 32);
              v27 = sub_1DD63D778();
              v29 = v28;
              if (v28)
              {
                v30 = v27;
                MEMORY[0x1EEE9AC00](v27);
                v31 = sub_1DD450388();

                if (!v31)
                {
                  if (sub_1DD63FE58() == 0xD000000000000012 && 0x80000001DD66A260 == v32)
                  {
                  }

                  else
                  {
                    v34 = sub_1DD640CD8();

                    if (((v24 | v34) & 1) == 0)
                    {

                      v30 = 0;
                      v29 = 0;
LABEL_33:
                      v20 = 3;
LABEL_36:
                      v19 = a2;
                      *a2 = v30;
                      a2[1] = v29;
                      goto LABEL_37;
                    }
                  }
                }

                v20 = 0;
                goto LABEL_36;
              }

              v30 = 0;
              goto LABEL_33;
            }
          }

          else
          {
            v25 = *(a1 + *(type metadata accessor for CommsAppResolutionFeature(0) + 48));
            if (v25 == 2 || (v25 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v24 = 1;
          goto LABEL_24;
        }
      }

      v19 = a2;
      *a2 = 0;
      a2[1] = 0;
      v20 = 3;
LABEL_37:
      *(v19 + 16) = v20;
      return;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v6 - 1);
    v8 = *v6;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = *(v7 + 16);
      sub_1DD3BE2A4();
      v7 = v13;
    }

    v10 = *(v7 + 16);
    if (v10 >= *(v7 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v7 = v14;
    }

    *(v7 + 16) = v10 + 1;
    v11 = v7 + 16 * v10;
    *(v11 + 32) = v9;
    *(v11 + 40) = v8;
    v6 += 3;
    ++v3;
  }

  __break(1u);
}

void *FallbackAppProvider.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t FallbackAppProvider.__deallocating_deinit()
{
  FallbackAppProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4C01D8()
{
  v19[3] = &type metadata for ContactFeatures;
  v19[4] = sub_1DD3E6184();
  LOBYTE(v19[0]) = 0;
  v0 = sub_1DD63DA48();
  OUTLINED_FUNCTION_5_48(v19);
  v1 = OUTLINED_FUNCTION_3_45();
  OUTLINED_FUNCTION_5_48(v19);
  v2 = OUTLINED_FUNCTION_3_45();
  OUTLINED_FUNCTION_5_48(v19);
  v3 = OUTLINED_FUNCTION_3_45();
  OUTLINED_FUNCTION_5_48(v19);
  v4 = OUTLINED_FUNCTION_3_45();
  OUTLINED_FUNCTION_5_48(v19);
  v5 = OUTLINED_FUNCTION_3_45();
  OUTLINED_FUNCTION_5_48(v19);
  v6 = OUTLINED_FUNCTION_3_45();
  OUTLINED_FUNCTION_5_48(v19);
  v7 = OUTLINED_FUNCTION_3_45();
  OUTLINED_FUNCTION_5_48(v19);
  OUTLINED_FUNCTION_3_45();
  __swift_destroy_boxed_opaque_existential_1(v19);
  v8 = 256;
  if ((v1 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFFFELL | v0 & 1;
  v10 = 0x10000;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = v9 | v10 | v11;
  v13 = 0x100000000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x10000000000;
  if ((v5 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = 0x1000000000000;
  if ((v6 & 1) == 0)
  {
    v15 = 0;
  }

  v16 = v13 | v14;
  v17 = 0x100000000000000;
  if ((v7 & 1) == 0)
  {
    v17 = 0;
  }

  return v12 | v16 | v15 | v17;
}

uint64_t FeatureFlagsKey<>.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  LOBYTE(v3) = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3 & 1;
}

uint64_t ContactFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

unint64_t sub_1DD4C062C()
{
  result = qword_1ECCDD990;
  if (!qword_1ECCDD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD990);
  }

  return result;
}

unint64_t sub_1DD4C0684()
{
  result = qword_1ECCDD998;
  if (!qword_1ECCDD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD998);
  }

  return result;
}

unint64_t sub_1DD4C06DC()
{
  result = qword_1ECCDD9A0;
  if (!qword_1ECCDD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD9A0);
  }

  return result;
}

unint64_t sub_1DD4C0734()
{
  result = qword_1ECCDD9A8;
  if (!qword_1ECCDD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD9A8);
  }

  return result;
}

_BYTE *sub_1DD4C07C4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DD4C096C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[9])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD4C09B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_45()
{

  return sub_1DD63DA48();
}

char *sub_1DD4C0A54(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v58 = a4;
  v54 = a1;
  v55 = a3;
  v57 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v52 - v21;
  v56 = sub_1DD63CBB8();
  v23 = OUTLINED_FUNCTION_0(v56);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v29 = v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v52 - v31;
  v33 = OBJC_IVAR____TtC13SiriInference11FirstAdvent_calendar;
  v34 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_7(v34);
  v36 = *(v35 + 16);
  v52[2] = v33;
  v53 = v4;
  v36(v22, v4 + v33, v34);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v34);
  v37 = sub_1DD63D328();
  OUTLINED_FUNCTION_7(v37);
  (*(v38 + 16))(v16, v58, v37);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v37);
  sub_1DD63CB68();
  v55 = v32;
  sub_1DD63CA68();
  v39 = sub_1DD63D078();
  if (__swift_getEnumTagSinglePayload(v10, 1, v39) == 1)
  {
    sub_1DD4AF0C8(v10);
    sub_1DD4C1590();
    OUTLINED_FUNCTION_4_42();
    *v40 = v57;
    *(v40 + 8) = 0;
    swift_willThrow();
    (*(v25 + 8))(v55, v56);
  }

  else
  {
    v41 = *(v39 - 8);
    v42 = v54;
    (*(v41 + 32))(v54, v10, v39);
    sub_1DD63D1E8();
    v43 = sub_1DD63CAB8();
    v45 = v44;
    v46 = *(v25 + 8);
    v47 = v56;
    v46(v29, v56);
    if (v45)
    {
      sub_1DD4C1590();
      OUTLINED_FUNCTION_4_42();
      *v48 = 0;
      v49 = 2;
    }

    else
    {
      v50 = sub_1DD4C61E4(v43);
      if (v50 != 12)
      {
        v29 = v50;
        v46(v55, v47);
        return v29;
      }

      sub_1DD4C1590();
      OUTLINED_FUNCTION_4_42();
      *v48 = v43;
      v49 = 1;
    }

    *(v48 + 8) = v49;
    swift_willThrow();
    (*(v41 + 8))(v42, v39);
    v46(v55, v47);
  }

  return v29;
}

char *sub_1DD4C0F1C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v58 = sub_1DD63D2B8();
  v6 = OUTLINED_FUNCTION_0(v58);
  v56 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v17 = sub_1DD63D078();
  v18 = OUTLINED_FUNCTION_0(v17);
  v57 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v49 - v28;
  v30 = a1;
  v31 = a1;
  v32 = a2;
  v33 = v59;
  result = sub_1DD4C0A54(&v49 - v28, 5, v31, a2);
  if (!v33)
  {
    v49 = v23;
    v50 = v16;
    v36 = v57;
    v35 = v58;
    v52 = v17;
    v53 = v3;
    v51 = v32;
    if (result == 10)
    {
      v59 = 0;
      v37 = v29;
    }

    else
    {
      sub_1DD4C0A54(v26, 4, v30, v51);
      v38 = v52;
      v37 = v29;
      v59 = 0;
      (*(v36 + 8))(v29, v52);
      (*(v36 + 32))(v29, v26, v38);
    }

    v39 = v55;
    v40 = v56;
    (*(v56 + 104))(v55, *MEMORY[0x1E6969A48], v35);
    v41 = v50;
    sub_1DD63D268();
    (*(v40 + 8))(v39, v35);
    v42 = v52;
    if (__swift_getEnumTagSinglePayload(v41, 1, v52) == 1)
    {
      sub_1DD4AF0C8(v41);
      sub_1DD4C1590();
      v43 = OUTLINED_FUNCTION_4_42();
      *v44 = 1;
      *(v44 + 8) = 2;
      v59 = v43;
      swift_willThrow();
      return (*(v36 + 8))(v37, v42);
    }

    else
    {
      v45 = v49;
      v46 = (*(v36 + 32))(v49, v41, v42);
      v47 = sub_1DD4ED3B4(v46);
      sub_1DD3D856C(v47, v54);

      v48 = *(v36 + 8);
      v48(v45, v42);
      return (v48)(v37, v42);
    }
  }

  return result;
}

uint64_t sub_1DD4C12E4()
{
  v1 = OBJC_IVAR____TtC13SiriInference11FirstAdvent_calendar;
  v2 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_7(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FirstAdvent()
{
  result = qword_1ECCDD9B0;
  if (!qword_1ECCDD9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD4C13CC()
{
  result = sub_1DD63D2D8();
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

uint64_t sub_1DD4C145C()
{
  v1 = sub_1DD63D188();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v9, *MEMORY[0x1E6969868], v1, v7);
  sub_1DD63D198();
  (*(v4 + 8))(v9, v1);
  return v0;
}

unint64_t sub_1DD4C1590()
{
  result = qword_1ECCDD9C0;
  if (!qword_1ECCDD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD9C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FirstAdventError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FirstAdventError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD4C1668(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DD4C1680(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PLUSTrialFactors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ForcePromptingStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

BOOL sub_1DD4C181C(uint64_t a1, double a2)
{
  sub_1DD4C193C(a1, 0.0, 1.0);
  v4 = v3;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD63F9F8();
  __swift_project_value_buffer(v5, qword_1EE16F068);
  v6 = sub_1DD63F9D8();
  v7 = sub_1DD640368();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240448;
    *(v8 + 4) = v4 < a2;
    *(v8 + 8) = 2050;
    *(v8 + 10) = a2;
    _os_log_impl(&dword_1DD38D000, v6, v7, "force prompt: %{BOOL,public}d [rate=%{public}f]", v8, 0x12u);
    MEMORY[0x1E12B3DA0](v8, -1, -1);
  }

  return v4 < a2;
}

uint64_t sub_1DD4C193C(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1E12B3DC0](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_1DD4C193C(v6, a2, a3);
  }

  return result;
}

uint64_t sub_1DD4C19E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 56) = OUTLINED_FUNCTION_1_65(9, v1, v2, v3, v4, v5, v6, v7);
  *(inited + 64) = xmmword_1DD652F10;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_1_12();
  *(inited + 88) = OUTLINED_FUNCTION_1_65(10, v8, v9, v10, v11, v12, v13, v14);
  *(inited + 96) = xmmword_1DD651820;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_1_12();
  *(inited + 120) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(12, 0, 0, v15, 2, 0, 0, v16);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD4C1B10()
{
  result = sub_1DD63D018();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t DateTime.Date.Holiday.Frequency.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD4C1B94()
{
  result = qword_1ECCDD9C8;
  if (!qword_1ECCDD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD9C8);
  }

  return result;
}

uint64_t sub_1DD4C1BF0@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.Holiday.Frequency.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s9FrequencyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4C1DA4()
{
  result = qword_1ECCDD9D0;
  if (!qword_1ECCDD9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD9D0);
  }

  return result;
}

uint64_t sub_1DD4C1DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v35 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v33 - v10;
  v12 = sub_1DD63D188();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DD63D2D8();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v21);
  v28 = v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v19, *MEMORY[0x1E6969868], v12, v26);
  sub_1DD63D198();
  (*(v15 + 8))(v19, v12);
  v29 = (a1 / 100 + a1 / -400 + 19 * (a1 % 19) + (a1 / 100 + (a1 / 100 + 8) / -25 + 1) / -3 + 15) % 30;
  v30 = 2 * (a1 / 100 % 4 + a1 % 100 / 4) + (4 * (a1 % 100 / 4) - a1 % 100 + 32);
  v33[1] = ((v30 - 7 * ((v30 - v29) / 7) - 7 * ((a1 % 19 + 11 * v29 + 22 * ((v30 - v29) % 7)) / 451) + 114) % 0x1Fu + 1);
  (*(v23 + 16))(v11, v28, v20);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v20);
  v31 = sub_1DD63D328();
  (*(*(v31 - 8) + 16))(v7, v34, v31);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v31);
  sub_1DD63CB68();
  return (*(v23 + 8))(v28, v20);
}

uint64_t sub_1DD4C2260()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v24 = 1;
  v23 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(4, 0, 0, &v24, 6, 0, 0, &v23);
  *(inited + 64) = xmmword_1DD6530A0;
  *(inited + 80) = 0;
  v1 = OUTLINED_FUNCTION_1_3();
  *(inited + 88) = OUTLINED_FUNCTION_0_87(v1, v2, v3, v4, v5, v6, v7, v8, v18, *v20, *&v20[4], v23, v24);
  *(inited + 96) = xmmword_1DD643620;
  *(inited + 112) = 0;
  v9 = OUTLINED_FUNCTION_1_3();
  *(inited + 120) = OUTLINED_FUNCTION_0_87(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21, v22, v23, v24);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD4C2378(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC798(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD4C3B80(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1DD4C23E4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnedDisambiguation();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - v14;
  v16 = a1[2];
  if (v16)
  {
    v32[1] = a2;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1DD42BD28();
    v17 = v37;
    v18 = *(v7 + 80);
    v32[0] = a1;
    v19 = a1 + ((v18 + 32) & ~v18);
    v33 = *(v7 + 72);
    v35 = v12;
    v36 = v4;
    v34 = v15;
    while (1)
    {
      sub_1DD4BC018(v19, v15);
      sub_1DD4BC018(v15, v12);
      v20 = v12 + v4[6];
      sub_1DD63CF48();
      v22 = round(v21);
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_13;
      }

      if (v22 >= 9.22337204e18)
      {
        goto LABEL_14;
      }

      sub_1DD4BC07C(v15);
      a1 = *(v12 + v4[8]);
      v23 = (v12 + v4[10]);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      sub_1DD4BC07C(v12);
      v37 = v17;
      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v27);
        sub_1DD42BD28();
        v17 = v37;
      }

      *(v17 + 16) = v28 + 1;
      v29 = v17 + 40 * v28;
      *(v29 + 32) = v22;
      *(v29 + 40) = a1;
      *(v29 + 48) = v24;
      *(v29 + 56) = v25;
      *(v29 + 64) = v26;
      v15 = v34;
      v19 += v33;
      --v16;
      v12 = v35;
      v4 = v36;
      if (!v16)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);

    __break(1u);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v37 = v17;

    sub_1DD4C2378(&v37);

    v30 = v37;
    sub_1DD4C2678(v37);
    return v30;
  }

  return result;
}

uint64_t sub_1DD4C2678(uint64_t a1)
{
  v2 = sub_1DD63FC88();
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = (a1 + 40);
  v5 = 1;
  while (1)
  {
    v6 = *(v4 - 1);
    v7 = *v4;
    if (v2[2])
    {
      sub_1DD3FEB74(*v4);
      if (v8)
      {
        goto LABEL_14;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_1DD3FEB74(v7);
    if (__OFADD__(v2[2], (v10 & 1) == 0))
    {
      break;
    }

    v11 = v9;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD9F0, &qword_1DD6530C8);
    if (sub_1DD640A08())
    {
      v13 = sub_1DD3FEB74(v7);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_19;
      }

      v11 = v13;
    }

    if (v12)
    {
      v15 = v2[7] + 24 * v11;
      *v15 = v7;
      *(v15 + 8) = v6;
      *(v15 + 16) = v5;
    }

    else
    {
      v2[(v11 >> 6) + 8] |= 1 << v11;
      *(v2[6] + 4 * v11) = v7;
      v16 = v2[7] + 24 * v11;
      *v16 = v7;
      *(v16 + 8) = v6;
      *(v16 + 16) = v5;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_18;
      }

      v2[2] = v19;
    }

    v18 = __OFADD__(v5++, 1);
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_14:
    v4 += 10;
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

double sub_1DD4C2830(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v4 = (a2 + 64);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(a2 + 16);
  do
  {
    if (*(v4 - 6) == a1)
    {
      v7 = *(v4 - 4);
      v14 = *(v4 - 1);
      v8 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_42();
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v9);
        sub_1DD42BD28();
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 40 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = a1;
      *(v11 + 48) = v14;
      *(v11 + 64) = v8;
    }

    v4 += 5;
    --v6;
  }

  while (v6);
  v12 = *(v5 + 16);

  *&result = v12 / v2;
  return result;
}

uint64_t sub_1DD4C2940(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return -1;
  }

  v6 = sub_1DD3FEB74(a1);
  if ((v7 & 1) == 0)
  {
    return -1;
  }

  v8 = *(*(a4 + 56) + 24 * v6 + 8);
  result = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
    __break(1u);
    return -1;
  }

  return result;
}

uint64_t sub_1DD4C2994(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return -1;
  }

  v5 = sub_1DD3FEB74(a1);
  if (v6)
  {
    return *(*(a4 + 56) + 24 * v5 + 16);
  }

  else
  {
    return -1;
  }
}

uint64_t sub_1DD4C29E8(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  for (i = (a2 + 40); ; i += 10)
  {
    if (v3 == v2)
    {
      return -1;
    }

    if (*i == result)
    {
      break;
    }

    ++v2;
  }

  v5 = 0;
  v6 = *(i - 1);
  v7 = (a2 + 40);
  while (v3 != v5)
  {
    if (*(v7 - 1) < v6 && *v7 != result)
    {
      return v5 - v2;
    }

    ++v5;
    v7 += 10;
    if (v3 == v5)
    {
      v5 = *(a2 + 16);
      return v5 - v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4C2A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D818();
  v5 = OUTLINED_FUNCTION_0(v4);
  v62 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v61 = a2;
  v69 = a1;
  v58 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    v74 = MEMORY[0x1E69E7CC0];
    sub_1DD42BCF4();
    v11 = v74;
    v12 = v74[2];
    v13 = (a2 + 40);
    do
    {
      v15 = *v13;
      v13 += 10;
      v14 = v15;
      v74 = v11;
      v16 = *(v11 + 24);
      if (v12 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v16);
        sub_1DD42BCF4();
        v11 = v74;
      }

      *(v11 + 16) = v12 + 1;
      *(v11 + 4 * v12++ + 32) = v14;
      --v10;
    }

    while (v10);
  }

  v17 = sub_1DD418E9C(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD9E0, &qword_1DD6530B8);
  v18 = sub_1DD63FC88();
  v19 = v17 + 56;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 56);
  v23 = (v20 + 63) >> 6;
  v70 = v62 + 16;
  v59 = (v62 + 8);

  v24 = 0;
  v63 = v23;
  v64 = v17 + 56;
  v60 = v17;
  if (v22)
  {
    while (1)
    {
      v68 = v18;
LABEL_14:
      v66 = v22;
      v67 = v24;
      v26 = *(*(v17 + 48) + ((v24 << 8) | (4 * __clz(__rbit64(v22)))));
      v27 = sub_1DD63D7F8();
      sub_1DD4C3B08();
      v28 = sub_1DD63FC88();
      v29 = *(v27 + 16);
      if (v29)
      {
        v30 = v61;
        v31 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v65 = v27;
        v32 = v27 + v31;
        v33 = *(v62 + 72);
        v71 = *(v62 + 16);
        v72 = v33;
        v35 = v58;
        v34 = v59;
        v73 = v26;
        do
        {
          v36 = v71(v35, v32, v4);
          MEMORY[0x1EEE9AC00](v36);
          v37 = v69;
          *(&v57 - 2) = v35;
          *(&v57 - 1) = v37;

          sub_1DD3EC0E0(sub_1DD4C3B60, (&v57 - 4), v30);
          v39 = sub_1DD4C3948(v38, v73);
          v41 = v40;
          swift_isUniquelyReferenced_nonNull_native();
          v74 = v28;
          sub_1DD40005C(v39, v41);
          v28 = v74;
          (*v34)(v35, v4);
          v32 += v72;
          --v29;
        }

        while (v29);

        v17 = v60;
        v26 = v73;
      }

      else
      {
      }

      v42 = v68;
      swift_isUniquelyReferenced_nonNull_native();
      v74 = v42;
      v43 = sub_1DD3FEB74(v26);
      if (__OFADD__(v42[2], (v44 & 1) == 0))
      {
        break;
      }

      v45 = v43;
      v46 = v4;
      v47 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD9E8, &qword_1DD6530C0);
      if (sub_1DD640A08())
      {
        v48 = sub_1DD3FEB74(v26);
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_33;
        }

        v45 = v48;
      }

      v50 = v47;
      v4 = v46;
      v18 = v74;
      if (v50)
      {
        v51 = v74[7];
        v52 = *(v51 + 8 * v45);
        *(v51 + 8 * v45) = v28;
      }

      else
      {
        v74[(v45 >> 6) + 8] |= 1 << v45;
        *(v18[6] + 4 * v45) = v26;
        *(v18[7] + 8 * v45) = v28;
        v53 = v18[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_32;
        }

        v18[2] = v55;
      }

      v24 = v67;
      v22 = (v66 - 1) & v66;
      v23 = v63;
      v19 = v64;
      if (!v22)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        return v18;
      }

      v22 = *(v19 + 8 * v25);
      ++v24;
      if (v22)
      {
        v68 = v18;
        v24 = v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD4C2F34()
{
  sub_1DD6408D8();

  v10 = *(v0 + 2);
  v1 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v1);

  MEMORY[0x1E12B2260](23389, 0xE200000000000000);
  v11 = *v0;
  v2 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v2);

  OUTLINED_FUNCTION_5_49();
  v3 = v0[2];
  v4 = OUTLINED_FUNCTION_1_66();
  MEMORY[0x1E12B2260](v4);

  OUTLINED_FUNCTION_5_49();
  v5 = v0[3];
  v6 = OUTLINED_FUNCTION_1_66();
  MEMORY[0x1E12B2260](v6);

  OUTLINED_FUNCTION_5_49();
  v7 = v0[4];
  v8 = OUTLINED_FUNCTION_1_66();
  MEMORY[0x1E12B2260](v8);

  MEMORY[0x1E12B2260](10589, 0xE200000000000000);
  return 91;
}

uint64_t sub_1DD4C3088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v55 = a2;
  v56 = a3;
  v4 = sub_1DD63D818();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD9D8, &qword_1DD6530B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_1_4();
  v54 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v53 - v21;
  v23 = *MEMORY[0x1E69D2BD0];
  v57 = *(v7 + 104);
  v57(v11, v23, v4, v20);
  v24 = sub_1DD63D828();
  v26 = v25;
  v27 = *(v7 + 8);
  v27(v11, v4);
  v58 = a1;
  sub_1DD59BA04(v24, v26, a1);

  v28 = sub_1DD63D4F8();
  OUTLINED_FUNCTION_9_33(v22);
  if (v29)
  {
    sub_1DD4C3454(v22);
LABEL_5:
    v30 = -1;
    goto LABEL_6;
  }

  v30 = sub_1DD63D4E8();
  v32 = v31;
  OUTLINED_FUNCTION_2_54();
  (*(v33 + 8))(v22, v28);
  if (v32)
  {
    goto LABEL_5;
  }

LABEL_6:
  (v57)(v11, *MEMORY[0x1E69D2BE0], v4);
  v34 = sub_1DD63D828();
  v36 = v35;
  v27(v11, v4);
  sub_1DD59BA04(v34, v36, v58);

  OUTLINED_FUNCTION_9_33(v18);
  if (v29)
  {
    sub_1DD4C3454(v18);
LABEL_10:
    v41 = v30;
    v53 = -1;
    goto LABEL_12;
  }

  v37 = sub_1DD63D4E8();
  v39 = v38;
  OUTLINED_FUNCTION_2_54();
  (*(v40 + 8))(v18, v28);
  if (v39)
  {
    goto LABEL_10;
  }

  v53 = v37;
  v41 = v30;
LABEL_12:
  (v57)(v11, *MEMORY[0x1E69D2BD8], v4);
  v42 = sub_1DD63D828();
  v44 = v43;
  v27(v11, v4);
  v45 = v54;
  sub_1DD59BA04(v42, v44, v58);

  OUTLINED_FUNCTION_9_33(v45);
  if (v29)
  {
    result = sub_1DD4C3454(v45);
LABEL_16:
    v46 = -1;
    goto LABEL_17;
  }

  v46 = sub_1DD63D4E8();
  v48 = v47;
  OUTLINED_FUNCTION_2_54();
  result = (*(v49 + 8))(v45, v28);
  if (v48)
  {
    goto LABEL_16;
  }

LABEL_17:
  v51 = v56;
  *v56 = v55;
  *(v51 + 2) = 0;
  v52 = v53;
  v51[2] = v41;
  v51[3] = v52;
  v51[4] = v46;
  return result;
}

uint64_t sub_1DD4C3454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD9D8, &qword_1DD6530B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD4C34D0(uint64_t a1)
{
  v4 = sub_1DD63D818();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v12 = v10 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  v17 = *(v7 + 16);
  v17(&v33 - v15, a1, v4, v14);
  v18 = (*(v7 + 88))(v16, v4);
  if (v18 == *MEMORY[0x1E69D2BD0])
  {
    return v1[2];
  }

  if (v18 == *MEMORY[0x1E69D2BE0])
  {
    return v1[3];
  }

  if (v18 == *MEMORY[0x1E69D2BD8])
  {
    return v1[4];
  }

  if (qword_1ECCDB0E0 != -1)
  {
    swift_once();
  }

  v20 = sub_1DD63F9F8();
  __swift_project_value_buffer(v20, qword_1ECD0DDF0);
  (v17)(v12, a1, v4);
  v21 = sub_1DD63F9D8();
  v22 = sub_1DD640378();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v34 = v23;
    v35 = swift_slowAlloc();
    v36 = v35;
    *v23 = 136315138;
    v24 = sub_1DD63D808();
    v26 = v25;
    v27 = OUTLINED_FUNCTION_4_43();
    v2(v27);
    v28 = sub_1DD39565C(v24, v26, &v36);

    v29 = v34;
    *(v34 + 1) = v28;
    v30 = v29;
    _os_log_impl(&dword_1DD38D000, v21, v22, "Unexpected granularity: %s", v29, 0xCu);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E12B3DA0](v31, -1, -1);
    MEMORY[0x1E12B3DA0](v30, -1, -1);
  }

  else
  {

    v32 = OUTLINED_FUNCTION_4_43();
    v2(v32);
  }

  (v2)(v16, v4);
  return -1;
}

BOOL sub_1DD4C37FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DD48C8E8(v5, v7);
}

BOOL sub_1DD4C3848(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DD48CBA0(v5, v7);
}

BOOL sub_1DD4C3894(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DD48CE5C(v5, v7);
}

uint64_t sub_1DD4C3948(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = (a1 + 64);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v5 - 6) == a2)
      {
        v7 = *(v5 - 4);
        v15 = *(v5 - 1);
        v8 = *v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_6_42();
        }

        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v9);
          sub_1DD42BD28();
        }

        *(v6 + 16) = v10 + 1;
        v11 = v6 + 40 * v10;
        *(v11 + 32) = v7;
        *(v11 + 40) = a2;
        *(v11 + 48) = v15;
        *(v11 + 64) = v8;
      }

      v5 += 5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v6 + 16);

  v13 = *(a1 + 16);

  return v12;
}

float sub_1DD4C3A74(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = -1.0;
  if (*(a3 + 16))
  {
    v5 = sub_1DD3FEB74(a1);
    if (v6)
    {
      v7 = *(*(a3 + 56) + 8 * v5);
      if (*(v7 + 16))
      {

        sub_1DD3FEBBC();
        if (v9)
        {
          v10 = *(v7 + 56) + 16 * v8;
          v11 = *v10;
          v3 = *(v10 + 8);
        }
      }
    }
  }

  return v3;
}

unint64_t sub_1DD4C3B08()
{
  result = qword_1ECCDC330;
  if (!qword_1ECCDC330)
  {
    sub_1DD63D818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC330);
  }

  return result;
}

uint64_t sub_1DD4C3B80(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD4C3D08(v7, v8, a1, v4);
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
    return sub_1DD4C3C74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD4C3C74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = v9 + 40;
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 + 48);
        v12 = *(v9 + 72);
        v13 = *(v9 + 56);
        v14 = *(v9 + 16);
        *v10 = *v9;
        *(v9 + 56) = v14;
        result = *(v9 + 32);
        *v9 = v7;
        *(v9 + 8) = v11;
        *(v9 + 16) = v13;
        *(v9 + 32) = v12;
        v9 -= 40;
        *(v10 + 32) = result;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD4C3D08(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v92 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 40 * v9);
        v11 = (*a3 + 40 * v7);
        v14 = *v11;
        v13 = v11 + 10;
        v12 = v14;
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v13;
          v13 += 5;
          v19 = (v12 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v12 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 40 * v6 - 8;
            v21 = 40 * v7 + 32;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v21);
                v26 = *(v24 + v21 - 32);
                v27 = (v24 + v20);
                v28 = *(v25 - 6);
                v29 = *v25;
                v30 = *(v25 - 1);
                v31 = *v27;
                v32 = *(v27 - 1);
                *(v25 - 2) = *(v27 - 2);
                *(v25 - 1) = v32;
                *v25 = v31;
                *(v27 - 4) = v26;
                *(v27 - 6) = v28;
                *(v27 - 1) = v30;
                *v27 = v29;
              }

              ++v23;
              v20 -= 40;
              v21 += 40;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v33 = *a3;
            v34 = *a3 + 40 * v9 - 40;
            v35 = v7 - v9;
            do
            {
              v36 = *(v33 + 40 * v9);
              v37 = v35;
              v38 = v34;
              do
              {
                v39 = v38 + 40;
                if (*v38 >= v36)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_111;
                }

                v40 = *(v38 + 48);
                v41 = *(v38 + 72);
                v42 = *(v38 + 56);
                v43 = *(v38 + 16);
                *v39 = *v38;
                *(v38 + 56) = v43;
                v44 = *(v38 + 32);
                *v38 = v36;
                *(v38 + 8) = v40;
                *(v38 + 16) = v42;
                *(v38 + 32) = v41;
                v38 -= 40;
                *(v39 + 32) = v44;
              }

              while (!__CFADD__(v37++, 1));
              ++v9;
              v34 += 40;
              --v35;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v94 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = v8[2];
        sub_1DD3BEB7C();
        v8 = v90;
      }

      v46 = v8[2];
      v47 = v46 + 1;
      if (v46 >= v8[3] >> 1)
      {
        sub_1DD3BEB7C();
        v8 = v91;
      }

      v8[2] = v47;
      v48 = v8 + 4;
      v49 = &v8[2 * v46 + 4];
      *v49 = v7;
      v49[1] = v94;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v46)
      {
        while (1)
        {
          v50 = v47 - 1;
          v51 = &v48[2 * v47 - 2];
          v52 = &v8[2 * v47];
          if (v47 >= 4)
          {
            break;
          }

          if (v47 == 3)
          {
            v53 = v8[4];
            v54 = v8[5];
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_56:
            if (v56)
            {
              goto LABEL_96;
            }

            v68 = *v52;
            v67 = v52[1];
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_99;
            }

            v72 = v51[1];
            v73 = v72 - *v51;
            if (__OFSUB__(v72, *v51))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v70, v73))
            {
              goto LABEL_104;
            }

            if (v70 + v73 >= v55)
            {
              if (v55 < v73)
              {
                v50 = v47 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v47 < 2)
          {
            goto LABEL_98;
          }

          v75 = *v52;
          v74 = v52[1];
          v63 = __OFSUB__(v74, v75);
          v70 = v74 - v75;
          v71 = v63;
LABEL_71:
          if (v71)
          {
            goto LABEL_101;
          }

          v77 = *v51;
          v76 = v51[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_103;
          }

          if (v78 < v70)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v50 - 1 >= v47)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
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
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v82 = &v48[2 * v50 - 2];
          v83 = *v82;
          v84 = &v48[2 * v50];
          v85 = v84[1];
          sub_1DD4C4378((*a3 + 40 * *v82), (*a3 + 40 * *v84), *a3 + 40 * v85, v95);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v85 < v83)
          {
            goto LABEL_91;
          }

          v86 = v8;
          v87 = v8[2];
          if (v50 > v87)
          {
            goto LABEL_92;
          }

          *v82 = v83;
          v82[1] = v85;
          if (v50 >= v87)
          {
            goto LABEL_93;
          }

          v47 = v87 - 1;
          memmove(&v48[2 * v50], v84 + 2, 16 * (v87 - 1 - v50));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          if (!v88)
          {
            goto LABEL_85;
          }
        }

        v57 = &v48[2 * v47];
        v58 = *(v57 - 8);
        v59 = *(v57 - 7);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_94;
        }

        v62 = *(v57 - 6);
        v61 = *(v57 - 5);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_95;
        }

        v64 = v52[1];
        v65 = v64 - *v52;
        if (__OFSUB__(v64, *v52))
        {
          goto LABEL_97;
        }

        v63 = __OFADD__(v55, v65);
        v66 = v55 + v65;
        if (v63)
        {
          goto LABEL_100;
        }

        if (v66 >= v60)
        {
          v80 = *v51;
          v79 = v51[1];
          v63 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v63)
          {
            goto LABEL_105;
          }

          if (v55 < v81)
          {
            v50 = v47 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v94;
      a4 = v92;
      if (v94 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1DD4C4240(&v97, *a1, a3);
LABEL_89:
}

uint64_t sub_1DD4C4240(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1DD4C4378((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1DD4C4378(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1DD3AA508(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 40;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 40;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 40;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    *(v7 + 4) = *(v12 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_13;
  }

  sub_1DD3AA508(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_15:
  v16 = v6 - 40;
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    if (*v16 < *(v10 - 5))
    {
      v13 = v5 + 40 == v6;
      v6 -= 40;
      if (!v13)
      {
        v20 = *v16;
        v21 = *(v16 + 1);
        *(v5 + 32) = *(v16 + 4);
        *v5 = v20;
        *(v5 + 16) = v21;
        v6 = v16;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 40))
    {
      v18 = *(v10 - 40);
      v19 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v18;
      *(v5 + 16) = v19;
    }

    v10 -= 40;
  }

LABEL_28:
  v22 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v22])
  {
    memmove(v6, v4, 40 * v22);
  }

  return 1;
}

uint64_t getEnumTagSinglePayload for LearnedDisambiguationMetaData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LearnedDisambiguationMetaData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1DD4C458C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD4C45AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t sub_1DD4C45E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD4C4604(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1DD4C4648()
{
  result = qword_1ECCDD9F8;
  if (!qword_1ECCDD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD9F8);
  }

  return result;
}

double DateTime.Date.Holiday.__allocating_init(with:name:calendarSystem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  OUTLINED_FUNCTION_8_35();
  v10 = swift_allocObject();
  v11 = *a5;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = v11;
  *&result = 117703170;
  *(v10 + 49) = 117703170;
  *(v10 + 53) = 2;
  return result;
}

uint64_t DateTime.Date.Holiday.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DateTime.Date.Holiday.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DateTime.Date.Holiday.init(with:name:calendarSystem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = *a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = v6;
  *(v5 + 49) = 117703170;
  *(v5 + 53) = 2;
  return v5;
}

BOOL static DateTime.Date.Holiday.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v5 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6 == 12)
  {
    if (v7 != 12)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(a1 + 49);
  v9 = *(a2 + 49);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else if (v9 == 2 || ((v9 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v10 = *(a1 + 50);
  v11 = *(a2 + 50);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v11 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v12 = *(a1 + 52);
  v13 = *(a2 + 52);
  if (v12 == 7)
  {
    if (v13 != 7)
    {
      return 0;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  v15 = *(a1 + 53);
  v16 = *(a2 + 53);
  result = v16 == 2 && v15 == 2;
  if (v15 != 2 && v16 != 2)
  {
    return ((v16 ^ v15) & 1) == 0;
  }

  return result;
}

uint64_t sub_1DD4C4904()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DD63FD28();
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1DD63FD28();
  v5 = *(v0 + 48);
  sub_1DD640E48();
  if (v5 != 12)
  {
    MEMORY[0x1E12B3140](v5);
  }

  v6 = *(v0 + 49);
  sub_1DD640E48();
  if (v6 != 2)
  {
    MEMORY[0x1E12B3140](v6 & 1);
  }

  v7 = *(v0 + 50);
  sub_1DD640E48();
  if (v7 != 2)
  {
    MEMORY[0x1E12B3140](v7 & 1);
  }

  v8 = *(v0 + 51);
  sub_1DD640E48();
  if (v8 != 4)
  {
    MEMORY[0x1E12B3140](v8);
  }

  v9 = *(v0 + 52);
  sub_1DD640E48();
  if (v9 != 7)
  {
    MEMORY[0x1E12B3140](v9);
  }

  v10 = *(v0 + 53);
  if (v10 == 2)
  {
    return sub_1DD640E48();
  }

  sub_1DD640E48();
  return MEMORY[0x1E12B3140](v10 & 1);
}

uint64_t sub_1DD4C4A34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DD643F80;
  MEMORY[0x1E12B2260](*(v0 + 16), *(v0 + 24));
  *(v1 + 32) = 4023401;
  *(v1 + 40) = 0xE300000000000000;
  MEMORY[0x1E12B2260](*(v0 + 32), *(v0 + 40));
  *(v1 + 48) = 0x3D656D616ELL;
  *(v1 + 56) = 0xE500000000000000;
  if (*(v0 + 48) != 12)
  {
    OUTLINED_FUNCTION_7_35();
    sub_1DD6408D8();
    MEMORY[0x1E12B2260](0x7261646E656C6163, 0xEF3D6D6574737953);
    OUTLINED_FUNCTION_9_34();
    OUTLINED_FUNCTION_0_88();
    if (v2)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v9;
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 49) != 2)
  {
    OUTLINED_FUNCTION_7_35();
    MEMORY[0x1E12B2260](0x636E657571657266, 0xEA00000000003D79);
    OUTLINED_FUNCTION_9_34();
    OUTLINED_FUNCTION_0_88();
    if (v2)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v10;
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 50) != 2)
  {
    OUTLINED_FUNCTION_7_35();
    sub_1DD6408D8();
    MEMORY[0x1E12B2260](0x6E6176726573626FLL, 0xEF3D657079546563);
    OUTLINED_FUNCTION_9_34();
    OUTLINED_FUNCTION_0_88();
    if (v2)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v11;
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 51) != 4)
  {
    OUTLINED_FUNCTION_7_35();
    MEMORY[0x1E12B2260](0x6570795465746164, 0xE90000000000003DLL);
    OUTLINED_FUNCTION_9_34();
    OUTLINED_FUNCTION_0_88();
    if (v2)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v12;
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 52) != 7)
  {
    OUTLINED_FUNCTION_7_35();
    sub_1DD6408D8();
    MEMORY[0x1E12B2260](0xD000000000000013, 0x80000001DD66E1E0);
    OUTLINED_FUNCTION_9_34();
    OUTLINED_FUNCTION_0_88();
    if (v2)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v13;
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 53) != 2)
  {
    OUTLINED_FUNCTION_7_35();
    MEMORY[0x1E12B2260](0x3D6E6F69746F6D65, 0xE800000000000000);
    OUTLINED_FUNCTION_9_34();
    v3 = *(v1 + 16);
    if (v3 >= *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v14;
    }

    *(v1 + 16) = v3 + 1;
    v4 = v1 + 16 * v3;
    *(v4 + 32) = 0x3D656D616ELL;
    *(v4 + 40) = 0xE500000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v5 = sub_1DD63FD58();
  v7 = v6;

  MEMORY[0x1E12B2260](v5, v7);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0x5B796164696C6F48;
}

uint64_t sub_1DD4C4E4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E656C6163 && a2 == 0xEE006D6574737953;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6176726573626FLL && a2 == 0xEE00657079546563;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6570795465746164 && a2 == 0xE800000000000000;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001DD66E270 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6E6F69746F6D65 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD640CD8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD4C50DC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0x636E657571657266;
      break;
    case 4:
      result = 0x6E6176726573626FLL;
      break;
    case 5:
      result = 0x6570795465746164;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6E6F69746F6D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4C51D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4C4E4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4C51FC(uint64_t a1)
{
  v2 = sub_1DD4C5A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4C5238(uint64_t a1)
{
  v2 = sub_1DD4C5A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTime.Date.Holiday.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t DateTime.Date.Holiday.__deallocating_deinit()
{
  DateTime.Date.Holiday.deinit();
  OUTLINED_FUNCTION_8_35();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4C52C8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDA00, &qword_1DD653208);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4C5A48();
  sub_1DD640EF8();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v19[15] = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v16 = *(v3 + 32);
    v17 = *(v3 + 40);
    v19[14] = 1;
    sub_1DD640C18();
    v19[13] = *(v3 + 48);
    v19[12] = 2;
    sub_1DD4C5A9C();
    OUTLINED_FUNCTION_5_50();
    v19[11] = *(v3 + 49);
    v19[10] = 3;
    sub_1DD4C5AF0();
    OUTLINED_FUNCTION_5_50();
    v19[9] = *(v3 + 50);
    v19[8] = 4;
    sub_1DD4C5B44();
    OUTLINED_FUNCTION_5_50();
    v19[7] = *(v3 + 51);
    v19[6] = 5;
    sub_1DD4C5B98();
    OUTLINED_FUNCTION_5_50();
    v19[5] = *(v3 + 52);
    v19[4] = 6;
    sub_1DD4C5BEC();
    OUTLINED_FUNCTION_5_50();
    v19[3] = *(v3 + 53);
    v19[2] = 7;
    sub_1DD4C5C40();
    OUTLINED_FUNCTION_5_50();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DD4C5558()
{
  sub_1DD640E28();
  sub_1DD4C4904();
  return sub_1DD640E78();
}

uint64_t DateTime.Date.Holiday.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_35();
  v2 = swift_allocObject();
  DateTime.Date.Holiday.init(from:)(a1);
  return v2;
}

uint64_t DateTime.Date.Holiday.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDA40, &qword_1DD653210);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4C5A48();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime.Date.Holiday();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = sub_1DD640B28();
    *(v1 + 24) = v9;
    *(v1 + 32) = sub_1DD640B28();
    *(v1 + 40) = v10;
    sub_1DD4C5CB8();
    OUTLINED_FUNCTION_2_55();
    sub_1DD640B18();
    *(v1 + 48) = v19;
    sub_1DD4C5D0C();
    OUTLINED_FUNCTION_2_55();
    sub_1DD640B18();
    *(v1 + 49) = v18;
    sub_1DD4C5D60();
    OUTLINED_FUNCTION_2_55();
    sub_1DD640B18();
    *(v1 + 50) = v17;
    sub_1DD4C5DB4();
    OUTLINED_FUNCTION_2_55();
    sub_1DD640B18();
    *(v1 + 51) = v16;
    sub_1DD4C5E08();
    OUTLINED_FUNCTION_2_55();
    sub_1DD640B18();
    *(v1 + 52) = v15;
    sub_1DD4C5E5C();
    OUTLINED_FUNCTION_2_55();
    sub_1DD640B18();
    v12 = OUTLINED_FUNCTION_0_0();
    v13(v12);
    *(v1 + 53) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DD4C5994()
{
  sub_1DD640E28();
  v1 = *v0;
  sub_1DD4C4904();
  return sub_1DD640E78();
}

uint64_t sub_1DD4C59D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.Date.Holiday.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD4C5A48()
{
  result = qword_1ECCDDA08;
  if (!qword_1ECCDDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA08);
  }

  return result;
}

unint64_t sub_1DD4C5A9C()
{
  result = qword_1ECCDDA10;
  if (!qword_1ECCDDA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA10);
  }

  return result;
}

unint64_t sub_1DD4C5AF0()
{
  result = qword_1ECCDDA18;
  if (!qword_1ECCDDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA18);
  }

  return result;
}

unint64_t sub_1DD4C5B44()
{
  result = qword_1ECCDDA20;
  if (!qword_1ECCDDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA20);
  }

  return result;
}

unint64_t sub_1DD4C5B98()
{
  result = qword_1ECCDDA28;
  if (!qword_1ECCDDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA28);
  }

  return result;
}

unint64_t sub_1DD4C5BEC()
{
  result = qword_1ECCDDA30;
  if (!qword_1ECCDDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA30);
  }

  return result;
}

unint64_t sub_1DD4C5C40()
{
  result = qword_1ECCDDA38;
  if (!qword_1ECCDDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA38);
  }

  return result;
}

unint64_t sub_1DD4C5CB8()
{
  result = qword_1ECCDDA48;
  if (!qword_1ECCDDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA48);
  }

  return result;
}

unint64_t sub_1DD4C5D0C()
{
  result = qword_1ECCDDA50;
  if (!qword_1ECCDDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA50);
  }

  return result;
}

unint64_t sub_1DD4C5D60()
{
  result = qword_1ECCDDA58;
  if (!qword_1ECCDDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA58);
  }

  return result;
}

unint64_t sub_1DD4C5DB4()
{
  result = qword_1ECCDDA60;
  if (!qword_1ECCDDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA60);
  }

  return result;
}

unint64_t sub_1DD4C5E08()
{
  result = qword_1ECCDDA68;
  if (!qword_1ECCDDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA68);
  }

  return result;
}

unint64_t sub_1DD4C5E5C()
{
  result = qword_1ECCDDA70;
  if (!qword_1ECCDDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA70);
  }

  return result;
}

unint64_t sub_1DD4C5EB4()
{
  result = qword_1ECCDDA78;
  if (!qword_1ECCDDA78)
  {
    type metadata accessor for DateTime.Date.Holiday();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA78);
  }

  return result;
}

_BYTE *_s7HolidayC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4C60E0()
{
  result = qword_1ECCDDA80;
  if (!qword_1ECCDDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA80);
  }

  return result;
}

unint64_t sub_1DD4C6138()
{
  result = qword_1ECCDDA88;
  if (!qword_1ECCDDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA88);
  }

  return result;
}

unint64_t sub_1DD4C6190()
{
  result = qword_1ECCDDA90;
  if (!qword_1ECCDDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA90);
  }

  return result;
}

uint64_t sub_1DD4C61E4(uint64_t a1)
{
  if ((a1 - 1) >= 0xC)
  {
    return 12;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_1DD4C61F8(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

uint64_t sub_1DD4C6220(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD4C6260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DD4C62E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v316 = a5;
  v262 = a4;
  v336 = a3;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC168, &unk_1DD64FFB0);
  v8 = OUTLINED_FUNCTION_7(v315);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2(&v254 - v11);
  v306 = sub_1DD63D228();
  v12 = OUTLINED_FUNCTION_0(v306);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v17);
  v304 = sub_1DD63D1D8();
  v18 = OUTLINED_FUNCTION_0(v304);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v23);
  v352 = sub_1DD63D218();
  v24 = OUTLINED_FUNCTION_0(v352);
  v288 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v28);
  v302 = &v254 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC130, &unk_1DD645260);
  v31 = OUTLINED_FUNCTION_3(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v351 = &v254 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v36 = OUTLINED_FUNCTION_3(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v254 - v41);
  v43 = _s19ConvergenceStrategyOMa();
  v44 = OUTLINED_FUNCTION_3(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v254 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v254 - v52;
  v350 = sub_1DD63D2D8();
  v54 = OUTLINED_FUNCTION_0(v350);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_1();
  v354 = v59;
  v328 = sub_1DD63CBB8();
  v60 = OUTLINED_FUNCTION_0(v328);
  v348 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_1();
  v353 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC170, &qword_1DD645270);
  v66 = OUTLINED_FUNCTION_3(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_14_2(&v254 - v69);
  v276 = type metadata accessor for HolidayResolutionContext();
  v70 = OUTLINED_FUNCTION_7(v276);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v73);
  v74 = sub_1DD63C868();
  v75 = OUTLINED_FUNCTION_0(v74);
  v267 = v76;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_18_0();
  v349 = v80;
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_14_2(&v254 - v83);
  v84 = sub_1DD63D078();
  v85 = OUTLINED_FUNCTION_0(v84);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v88);
  v337 = &v254 - v91;
  if (*(a1 + 48) != 3)
  {
    return;
  }

  v341 = v90;
  v343 = v56;
  v344 = v20;
  v345 = v14;
  v346 = a1;
  v347 = v89;
  v92 = *(a1 + 24);
  v93 = *(a1 + 32);
  v94 = *(a1 + 40);
  v265 = a6;
  v95 = *a6;
  v96 = type metadata accessor for RecurringDateInterval();
  v266 = v95;
  v264 = v96;
  v339 = MEMORY[0x1E12B2430](v95);
  v98 = v97;
  if (qword_1ECCDB0C0 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v99 = sub_1DD63F9F8();
    __swift_project_value_buffer(v99, qword_1ECD0DDC0);
    sub_1DD48FEF0(v92, v93, v94, 3);

    v100 = sub_1DD63F9D8();
    v101 = sub_1DD640368();
    v274 = v94;
    v102 = v94;
    v103 = v101;
    sub_1DD48FF14(v92, v93, v102, 3);

    v104 = os_log_type_enabled(v100, v103);
    v294 = v48;
    v322 = v53;
    v272 = v92;
    v271 = v93;
    if (v104)
    {
      v105 = swift_slowAlloc();
      v338 = v100;
      v106 = v105;
      v107 = swift_slowAlloc();
      v357 = v107;
      *v106 = 136315394;
      *(v106 + 4) = sub_1DD39565C(v92, v93, &v357);
      *(v106 + 12) = 2080;
      v53 = sub_1DD39565C(v339, v98, &v357);

      *(v106 + 14) = v53;
      v108 = v338;
      _os_log_impl(&dword_1DD38D000, v338, v103, "going to solve holidayId %s, inputs: %s", v106, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v107, -1, -1);
      MEMORY[0x1E12B3DA0](v106, -1, -1);
    }

    else
    {
    }

    v92 = v344;
    v109 = v345;
    v94 = v343;
    v93 = MEMORY[0x1E69E7CD0];
    v364 = MEMORY[0x1E69E7CD0];
    v110 = v266;
    v259 = sub_1DD3CC020(v266);
    if (!v259)
    {
      goto LABEL_116;
    }

    v111 = 0;
    v261 = v262 & 0xC000000000000001;
    v269 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language;
    v112 = v110 & 0xC000000000000001;
    v256 = v110 + 32;
    v268 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone;
    v344 = (v267 + 8);
    v345 = (v267 + 16);
    v335 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    v113 = v262 & 0xFFFFFFFFFFFFFF8;
    v263 = *(v346 + 49);
    if (v262 < 0)
    {
      v113 = v262;
    }

    v258 = v113;
    v255 = v262 + 56;
    v320 = (v341 + 16);
    v334 = (v94 + 16);
    v287 = v288 + 104;
    v286 = *MEMORY[0x1E69699A0];
    v326 = v288 + 16;
    v300 = v92 + 104;
    v299 = v109 + 13;
    v285 = *MEMORY[0x1E6969998];
    v298 = v109 + 1;
    v297 = v92 + 8;
    v284 = xmmword_1DD643F80;
    v311 = v341 + 32;
    v296 = *MEMORY[0x1E69698C0];
    v312 = v341 + 8;
    v325 = v94 + 8;
    v295 = *MEMORY[0x1E69699C8];
    v324 = v348 + 8;
    v308 = v288 + 32;
    v309 = (v288 + 8);
    v310 = v267 + 32;
    v307 = v42;
    v257 = v110 & 0xC000000000000001;
LABEL_10:
    v114 = v111;
    v98 = v112;
    sub_1DD408BFC(v111);
    if (v98)
    {
      v331 = MEMORY[0x1E12B2C10](v114, v110);
    }

    else
    {
      v331 = *(v256 + 8 * v114);
    }

    v115 = __OFADD__(v114, 1);
    v48 = v114 + 1;
    if (!v115)
    {
      break;
    }

LABEL_147:
    __break(1u);
LABEL_148:
    swift_once();
  }

  v260 = v48;
  if (!v263)
  {

    v93 = *v345;
LABEL_21:
    v118 = OUTLINED_FUNCTION_11_31(OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval);
    (v93)(v118);
    sub_1DD63C848();
    goto LABEL_22;
  }

  if (v263 == 1)
  {
    v110 = 0xE300000000000000;
  }

  else
  {
    v110 = 0xE600000000000000;
  }

  v116 = sub_1DD640CD8();

  v93 = *v345;
  if (v116)
  {
    goto LABEL_21;
  }

  v117 = OUTLINED_FUNCTION_11_31(OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval);
  (v93)(v117);
  sub_1DD63C828();
LABEL_22:
  v343 = *v344;
  v343(v110, v74);
  if (v261)
  {
    swift_unknownObjectRetain();
    sub_1DD640778();
    type metadata accessor for DateTimeConstraint();
    sub_1DD49C1EC();
    sub_1DD6402A8();
    v92 = v359;
    v53 = v360;
    v119 = v361;
    v94 = v362;
    v48 = v363;
  }

  else
  {
    v92 = v262;
    v120 = -1 << *(v262 + 32);
    v119 = ~v120;
    v121 = -v120;
    if (v121 < 64)
    {
      v122 = ~(-1 << v121);
    }

    else
    {
      v122 = -1;
    }

    v48 = (v122 & *(v262 + 56));

    v94 = 0;
    v53 = v255;
  }

  v332 = v119;
  v98 = (v119 + 64) >> 6;
  v333 = v92;
  while (1)
  {
    v341 = v94;
    if (v92 < 0)
    {
      v126 = sub_1DD6407F8();
      if (!v126)
      {
        goto LABEL_59;
      }

      v355 = v126;
      type metadata accessor for DateTimeConstraint();
      swift_dynamicCast();
      v125 = v356;
      v348 = v48;
      if (!v356)
      {
LABEL_58:
        v94 = v341;
LABEL_59:
        OUTLINED_FUNCTION_18_22();
        sub_1DD3AA5A4();
        v48 = &unk_1F58ADAC0;
        goto LABEL_60;
      }
    }

    else
    {
      v123 = v94;
      v124 = v48;
      if (!v48)
      {
        while (1)
        {
          v94 = v123 + 1;
          if (__OFADD__(v123, 1))
          {
            break;
          }

          if (v94 >= v98)
          {
            goto LABEL_58;
          }

          v124 = *(v53 + 8 * v94);
          ++v123;
          if (v124)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

LABEL_34:
      v348 = (v124 - 1) & v124;
      v125 = *(*(v92 + 48) + ((v94 << 9) | (8 * __clz(__rbit64(v124)))));

      if (!v125)
      {
        goto LABEL_58;
      }
    }

    if (*(v125 + 16) == 11)
    {
      break;
    }

LABEL_57:

    v48 = v348;
  }

  v127 = *(v125 + 49);
  v339 = v48;
  if (v127)
  {
    if (v127 == 1)
    {
      v92 = 0xE300000000000000;
      v128 = 6581861;
    }

    else
    {
      v92 = 0xE600000000000000;
      v128 = 0x746573746F6ELL;
    }
  }

  else
  {
    v92 = 0xE500000000000000;
    v128 = 0x7472617473;
  }

  if (v263)
  {
    if (v263 == 1)
    {
      v129 = 6581861;
    }

    else
    {
      v129 = 0x746573746F6ELL;
    }

    if (v263 == 1)
    {
      v53 = 0xE300000000000000;
    }

    else
    {
      v53 = 0xE600000000000000;
    }
  }

  else
  {
    v53 = 0xE500000000000000;
    v129 = 0x7472617473;
  }

  if (v128 != v129 || v92 != v53)
  {
    LODWORD(v338) = sub_1DD640CD8();

    OUTLINED_FUNCTION_12_26();
    if (v338)
    {
      goto LABEL_111;
    }

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_12_26();
LABEL_111:
  OUTLINED_FUNCTION_18_22();
  sub_1DD3AA5A4();
  v53 = *(v125 + 56);

  v48 = sub_1DD3FDDCC(v234);

LABEL_60:
  v275 = *(v48 + 2);
  v327 = OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval;
  OUTLINED_FUNCTION_16_27();
  swift_beginAccess();
  v131 = 0;
  v273 = v48 + 32;
  v323 = v93;
  v270 = v48;
LABEL_61:
  if (v131 == v275)
  {
    OUTLINED_FUNCTION_16_0(&v344);
    v233(v337, v347);

    v111 = v260;
    v110 = v266;
    v112 = v257;
    if (v260 == v259)
    {
      goto LABEL_115;
    }

    goto LABEL_10;
  }

  if (v131 >= *(v48 + 2))
  {
    goto LABEL_140;
  }

  v348 = v274 >> 8;
  v278 = v131;
  v132 = &v273[16 * v131];
  LODWORD(v341) = v132[8];
  v133 = *v132;
  v98 = v276;
  v134 = v279;
  v135 = &v279[*(v276 + 20)];
  v92 = v274;
  v319 = *v320;
  v319(v135, v337, v347);
  v136 = *(v98 + 24);
  v137 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v137);
  v139 = v336;
  (*(v138 + 16))(&v134[v136], v336 + v269);
  v140 = *(v98 + 28);
  v141 = sub_1DD63D328();
  OUTLINED_FUNCTION_7(v141);
  (*(v142 + 16))(&v134[v140], v139 + v268);
  v143 = &v134[*(v98 + 32)];
  v333 = *v334;
  v333(v143, v139 + v335, v350);
  *v134 = v92;
  v144 = &v134[*(v98 + 36)];
  *v144 = v133;
  v144[8] = v341;
  v134[*(v98 + 40)] = v348;
  v145 = *__swift_project_boxed_opaque_existential_1(v277, v277[3]);
  v146 = v280;
  v147 = sub_1DD4D1304(v272, v271, v134);
  v280 = v146;
  if (v146)
  {

    OUTLINED_FUNCTION_8_36();
    OUTLINED_FUNCTION_16_0(&v344);
    v235(v337, v347);

    return;
  }

  v148 = v346;
  v94 = v321;
  v53 = v322;
  v283 = v147;
  if (v147 >> 62)
  {
    v149 = sub_1DD6407B8();
    if (!v149)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v149 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v149)
    {
      goto LABEL_105;
    }
  }

  v98 = 0;
  LODWORD(v332) = *(v148 + 52);
  v290 = v283 & 0xC000000000000001;
  v282 = v283 & 0xFFFFFFFFFFFFFF8;
  v281 = v283 + 32;
  v289 = v149;
  while (1)
  {
    if (v290)
    {
      v341 = MEMORY[0x1E12B2C10](v98, v283);
    }

    else
    {
      if (v98 >= *(v282 + 16))
      {
        goto LABEL_114;
      }

      v341 = *(v281 + 8 * v98);
    }

    v115 = __OFADD__(v98, 1);
    v150 = v98 + 1;
    if (v115)
    {
      break;
    }

    v293 = v150;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC178, &qword_1DD645278);
    v151 = v288;
    v152 = *(v288 + 72);
    v153 = (*(v288 + 80) + 32) & ~*(v288 + 80);
    v154 = swift_allocObject();
    *(v154 + 16) = v284;
    v292 = v154;
    v155 = (v154 + v153);
    v156 = *(v151 + 104);
    v157 = v352;
    v156(v155, v286, v352);
    v339 = v152;
    v338 = v155;
    v158 = v155 + v152;
    v93 = v323;
    v156(v158, v285, v157);
    v159 = 0;
    v160 = 0;
    do
    {
      LODWORD(v348) = v159;
      v161 = v338 + v160 * v339;
      (v93)(v349, v331 + v327, v74);
      sub_1DD481178();
      OUTLINED_FUNCTION_16_27();
      v333(v354, v162 + v163, v350);
      OUTLINED_FUNCTION_16_0(v358);
      v164 = v161;
      v165 = v352;
      v166(v53, v164, v352);
      __swift_storeEnumTagSinglePayload(v53, 0, 3, v165);
      sub_1DD48FBC0(v351);
      v167 = v342;
      sub_1DD3DD8F4(v53, v342);
      switch(__swift_getEnumTagSinglePayload(v167, 3, v165))
      {
        case 1u:
          sub_1DD63D258();
          break;
        case 2u:
          v186 = v301;
          OUTLINED_FUNCTION_10_34();
          v187();
          __swift_storeEnumTagSinglePayload(v186, 0, 1, v167);
          sub_1DD3D5CFC();
          sub_1DD390754(v186, &qword_1ECCDEBC0, &qword_1DD6445A0);
          break;
        case 3u:
          OUTLINED_FUNCTION_10_34();
          v188();
          __swift_storeEnumTagSinglePayload(v94, 0, 1, v167);
          break;
        default:
          OUTLINED_FUNCTION_16_0(&v340);
          v168 = v302;
          v169 = v352;
          v170(v302, v342, v352);
          OUTLINED_FUNCTION_16_0(&v332);
          v171 = v303;
          v172 = v74;
          v173 = v169;
          v174 = v304;
          v175(v303, v296, v304);
          OUTLINED_FUNCTION_16_0(&v331);
          v176 = v305;
          v177 = v306;
          v178(v305, v295, v306);
          sub_1DD63D298();
          OUTLINED_FUNCTION_16_0(&v330);
          v179 = v177;
          v53 = v322;
          v180(v176, v179);
          OUTLINED_FUNCTION_16_0(&v329);
          v181 = v171;
          v42 = v307;
          v182 = v174;
          v93 = v323;
          v183 = v173;
          v74 = v172;
          v94 = v321;
          v184(v181, v182);
          OUTLINED_FUNCTION_16_0(&v341);
          v185(v168, v183);
          break;
      }

      v189 = v340;
      if (v332)
      {
        v190 = v329;
        v191 = v352;
        __swift_storeEnumTagSinglePayload(v329, 3, 3, v352);
        v192 = *(v315 + 48);
        v193 = v53;
        v194 = v330;
        sub_1DD3DD8F4(v193, v330);
        sub_1DD3DD8F4(v190, v194 + v192);
        switch(__swift_getEnumTagSinglePayload(v194, 3, v191))
        {
          case 1u:
            OUTLINED_FUNCTION_0_89();
            OUTLINED_FUNCTION_14_27(v204, v205);
            if (OUTLINED_FUNCTION_9_35() != 1)
            {
              goto LABEL_91;
            }

            OUTLINED_FUNCTION_0_89();
            sub_1DD4C816C(v194, v206);
            sub_1DD390754(v351, &qword_1ECCDC130, &unk_1DD645260);
            goto LABEL_89;
          case 2u:
            OUTLINED_FUNCTION_0_89();
            OUTLINED_FUNCTION_14_27(v199, v200);
            if (OUTLINED_FUNCTION_9_35() != 2)
            {
              goto LABEL_91;
            }

            goto LABEL_86;
          case 3u:
            OUTLINED_FUNCTION_0_89();
            OUTLINED_FUNCTION_14_27(v201, v202);
            if (OUTLINED_FUNCTION_9_35() != 3)
            {
              goto LABEL_91;
            }

LABEL_86:
            sub_1DD390754(v351, &qword_1ECCDC130, &unk_1DD645260);
            OUTLINED_FUNCTION_0_89();
            sub_1DD4C816C(v194, v203);
LABEL_89:
            v53 = v322;
            break;
          default:
            v194 = v330;
            v195 = v294;
            sub_1DD3DD8F4(v330, v294);
            if (__swift_getEnumTagSinglePayload(v194 + v192, 3, v352))
            {
              OUTLINED_FUNCTION_0_89();
              OUTLINED_FUNCTION_14_27(v196, v197);
              OUTLINED_FUNCTION_16_0(&v341);
              v198(v195, v352);
LABEL_91:
              sub_1DD390754(v194, &qword_1ECCDC168, &unk_1DD64FFB0);
              goto LABEL_92;
            }

            OUTLINED_FUNCTION_16_0(&v340);
            v225 = v291;
            v226 = v352;
            v227(v291, v194 + v192, v352);
            v228 = sub_1DD63D208();
            v93 = v309;
            v189 = *v309;
            (*v309)(v225, v226);
            OUTLINED_FUNCTION_0_89();
            OUTLINED_FUNCTION_14_27(v229, v230);
            v189(v195, v226);
            if ((v228 & 1) == 0)
            {
              OUTLINED_FUNCTION_0_89();
              sub_1DD4C816C(v194, v232);
              v42 = v307;
              OUTLINED_FUNCTION_15_24();
LABEL_92:
              v207 = v351;
              sub_1DD3D5CFC();
              sub_1DD390754(v94, &qword_1ECCDEBC0, &qword_1DD6445A0);
              sub_1DD390754(v207, &qword_1ECCDC130, &unk_1DD645260);
              v53 = v322;
              goto LABEL_93;
            }

            sub_1DD390754(v351, &qword_1ECCDC130, &unk_1DD645260);
            OUTLINED_FUNCTION_0_89();
            sub_1DD4C816C(v194, v231);
            v42 = v307;
            v53 = v322;
            OUTLINED_FUNCTION_15_24();
            break;
        }
      }

      else
      {
        sub_1DD390754(v351, &qword_1ECCDC130, &unk_1DD645260);
      }

      sub_1DD3D7DA0(v94, v42);
LABEL_93:
      v92 = v347;
      if (__swift_getEnumTagSinglePayload(v42, 1, v347) == 1)
      {
        OUTLINED_FUNCTION_0_89();
        sub_1DD4C816C(v53, v208);
        OUTLINED_FUNCTION_16_0(&v357);
        v209(v354, v350);
        OUTLINED_FUNCTION_16_0(&v356);
        v210(v353, v328);
        OUTLINED_FUNCTION_17_26();
        v211();
        sub_1DD390754(v42, &qword_1ECCDEBC0, &qword_1DD6445A0);
        __swift_storeEnumTagSinglePayload(v189, 1, 1, v74);
      }

      else
      {
        OUTLINED_FUNCTION_16_0(&v343);
        v212 = v42;
        v213 = v313;
        v214(v313, v212, v92);
        v215 = v354;
        sub_1DD4852E4(v213, v354, v346, v316 & 1, v189);
        OUTLINED_FUNCTION_16_0(&v344);
        v216 = v213;
        v42 = v212;
        v93 = v323;
        v217(v216, v92);
        OUTLINED_FUNCTION_0_89();
        sub_1DD4C816C(v53, v218);
        OUTLINED_FUNCTION_16_0(&v357);
        v219(v215, v350);
        OUTLINED_FUNCTION_16_0(&v356);
        v220(v353, v328);
        OUTLINED_FUNCTION_17_26();
        v221();
      }

      if (__swift_getEnumTagSinglePayload(v189, 1, v74) == 1)
      {
        sub_1DD390754(v189, &qword_1ECCDC170, &qword_1DD645270);
      }

      else
      {
        OUTLINED_FUNCTION_16_0(&v342);
        v222 = v314;
        v223(v314, v189, v74);
        (v93)(v317, v222, v74);
        v92 = v318;
        sub_1DD56D300();
        v224 = v343;
        v343(v92, v74);
        v224(v222, v74);
      }

      v159 = 1;
      v160 = 1;
    }

    while ((v348 & 1) == 0);

    swift_setDeallocating();
    sub_1DD46CB60();
    v98 = v293;
    if (v293 == v289)
    {
LABEL_105:
      v131 = v278 + 1;

      OUTLINED_FUNCTION_8_36();
      v48 = v270;
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  v93 = v364;
LABEL_116:
  v48 = *(v93 + 16);
  v42 = v265;
  if (v48)
  {
    v356 = MEMORY[0x1E69E7CC0];
    sub_1DD640988();
    v98 = sub_1DD55B198(v93);
    v238 = 0;
    v354 = v93 + 56;
    v348 = v267 + 8;
    v349 = v267 + 16;
    v346 = v236;
    v347 = v48;
    v345 = (v93 + 64);
    while (1)
    {
      if (v98 < 0 || v98 >= 1 << *(v93 + 32))
      {
        goto LABEL_141;
      }

      v53 = v98 >> 6;
      if ((*(v354 + 8 * (v98 >> 6)) & (1 << v98)) == 0)
      {
        goto LABEL_142;
      }

      if (*(v93 + 36) != v236)
      {
        goto LABEL_143;
      }

      v351 = v236;
      v352 = 1 << v98;
      v350 = v238;
      v239 = *(v93 + 48);
      v48 = v93;
      v240 = v267;
      v241 = v239 + *(v267 + 72) * v98;
      v242 = *(v267 + 16);
      v94 = v318;
      LODWORD(v353) = v237;
      v92 = v349;
      v242(v318, v241, v74);
      v243 = v317;
      v242(v317, v94, v74);
      v244 = *(v264 + 48);
      v245 = *(v264 + 52);
      swift_allocObject();
      v42 = sub_1DD57F5F8(v243, 0);
      (*(v240 + 8))(v94, v74);
      sub_1DD640958();
      v93 = *(v356 + 16);
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      if (v353)
      {
        break;
      }

      v246 = 1 << v48[32];
      if (v98 >= v246)
      {
        goto LABEL_144;
      }

      v247 = *(v354 + 8 * v53);
      if ((v247 & v352) == 0)
      {
        goto LABEL_145;
      }

      v93 = v48;
      if (*(v48 + 9) != v351)
      {
        goto LABEL_146;
      }

      v248 = v247 & (-2 << (v98 & 0x3F));
      if (v248)
      {
        v246 = __clz(__rbit64(v248)) | v98 & 0x7FFFFFFFFFFFFFC0;
        v42 = v265;
        v48 = v347;
        v249 = v350;
      }

      else
      {
        v92 = v53 << 6;
        v250 = v53 + 1;
        v251 = &v345[v53];
        v42 = v265;
        v48 = v347;
        while (v250 < (v246 + 63) >> 6)
        {
          v252 = *v251++;
          v94 = v252;
          v92 += 64;
          ++v250;
          if (v252)
          {
            sub_1DD3AA558(v98, v351, 0);
            v246 = __clz(__rbit64(v94)) + v92;
            goto LABEL_133;
          }
        }

        sub_1DD3AA558(v98, v351, 0);
LABEL_133:
        v249 = v350;
      }

      v237 = 0;
      v238 = v249 + 1;
      v98 = v246;
      v236 = v346;
      if (v238 == v48)
      {

        v253 = v356;
        goto LABEL_137;
      }
    }

    __break(1u);
  }

  else
  {

    v253 = MEMORY[0x1E69E7CC0];
LABEL_137:
    *v42 = v253;
  }
}

uint64_t sub_1DD4C816C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_10_34()
{
  v1 = *(v0 - 312);
  v2 = *(v0 - 232);
  v3 = *(v0 - 448);
  v4 = *(v0 - 456);
}

uint64_t OUTLINED_FUNCTION_11_31@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 360) + a1;
  result = *(v1 - 464);
  v4 = *(v1 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_27(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 - 376);

  return sub_1DD4C816C(v4, a2);
}

unint64_t DateTime.Date.Holiday.HolidayDateType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD4C825C()
{
  result = qword_1ECCDDA98;
  if (!qword_1ECCDDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDA98);
  }

  return result;
}

uint64_t sub_1DD4C82B8@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.Holiday.HolidayDateType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s15HolidayDateTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4C846C()
{
  result = qword_1ECCDDAA0;
  if (!qword_1ECCDDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDAA0);
  }

  return result;
}

uint64_t type metadata accessor for HolidayResolutionContext()
{
  result = qword_1ECCDDAA8;
  if (!qword_1ECCDDAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD4C8534()
{
  sub_1DD63D078();
  if (v0 <= 0x3F)
  {
    sub_1DD63D168();
    if (v1 <= 0x3F)
    {
      sub_1DD63D328();
      if (v2 <= 0x3F)
      {
        sub_1DD63D2D8();
        if (v3 <= 0x3F)
        {
          sub_1DD3EBBE4(319, &qword_1ECCDBB70);
          if (v4 <= 0x3F)
          {
            sub_1DD3EBBE4(319, &qword_1ECCDDAB8);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD4C8648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796164696C6F68 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD4C8760(char a1)
{
  if (!a1)
  {
    return 0x796164696C6F68;
  }

  if (a1 == 1)
  {
    return 0x7972746E756F63;
  }

  return 0x7261646E656C6163;
}

uint64_t sub_1DD4C87B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB98, &qword_1DD653940);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4CADB8();
  sub_1DD640EF8();
  v14 = *v3;
  v15 = v3[1];
  v19[15] = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v19[14] = 1;
    sub_1DD640C18();
    v19[13] = *(v3 + 32);
    v19[12] = 2;
    sub_1DD4CAE60();
    sub_1DD640C68();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1DD4C894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  OUTLINED_FUNCTION_93();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB80, &qword_1DD653938);
  OUTLINED_FUNCTION_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1DD4CADB8();
  sub_1DD640ED8();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    OUTLINED_FUNCTION_6_43();
    v22 = sub_1DD640B28();
    v24 = v23;
    v30 = v22;
    OUTLINED_FUNCTION_6_43();
    v28 = sub_1DD640B28();
    v29 = v25;
    sub_1DD4CAE0C();
    sub_1DD640B78();
    v26 = OUTLINED_FUNCTION_3_46();
    v27(v26, v17);
    __swift_destroy_boxed_opaque_existential_1(v14);
    *v16 = v30;
    *(v16 + 8) = v24;
    *(v16 + 16) = v28;
    *(v16 + 24) = v29;
    *(v16 + 32) = a12;
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD4C8B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4C8648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4C8BA4(uint64_t a1)
{
  v2 = sub_1DD4CADB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4C8BE0(uint64_t a1)
{
  v2 = sub_1DD4CADB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD4C8C1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1DD4C894C(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SBYTE4(v13), SBYTE5(v13));
  if (!v9)
  {
    result = *&v13;
    *a9 = v13;
    *(a9 + 16) = v14;
    *(a9 + 32) = v15;
  }

  return result;
}

uint64_t sub_1DD4C8C7C()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD4C8CCC(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0x646E6F6973726576;
      break;
    case 2:
      v3 = 0x6164696C6F68;
      goto LABEL_6;
    case 3:
      v3 = 0x72746E756F63;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
      break;
    case 4:
      result = 0x6F666E4977656ELL;
      break;
    case 5:
      result = 0x7261646E656C6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4C8DA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD4C8C7C();
  *a2 = result;
  return result;
}

uint64_t sub_1DD4C8DD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD4C8CCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD4C8E04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD4C8CC8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD4C8E38(uint64_t a1)
{
  v2 = sub_1DD4C9994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4C8E74(uint64_t a1)
{
  v2 = sub_1DD4C9994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD4C8EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_93();
  v12 = v11;
  v60 = v13;
  v14 = sub_1DD63D078();
  v61 = OUTLINED_FUNCTION_0(v14);
  v62 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_1_4();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDAC0, &qword_1DD653670);
  OUTLINED_FUNCTION_0(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v27);
  v64 = type metadata accessor for HolidaysDBUpdate();
  v28 = *(*(v64 - 1) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v65 = (&v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v12[3];
  v30 = v12[4];
  v63 = v12;
  __swift_project_boxed_opaque_existential_1(v12, v31);
  sub_1DD4C9994();
  sub_1DD640ED8();
  if (!v10)
  {
    v58 = v20;
    v59 = v23;
    OUTLINED_FUNCTION_2_56();
    *v65 = sub_1DD640B58();
    OUTLINED_FUNCTION_2_56();
    v32 = sub_1DD640B28();
    v34 = v62;
    v35 = v32;
    v36 = v33;
    v37 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v37 setFormatOptions_];
    v38 = v35;
    v39 = sub_1DD63FDA8();
    v57 = v37;
    v40 = [v37 dateFromString_];

    if (v40)
    {

      v41 = v58;
      sub_1DD63D048();

      v42 = v59;
      v43 = v41;
      v44 = v61;
      (*(v34 + 32))(v59, v43, v61);
      (*(v34 + 16))(v65 + v64[5], v42, v44);
      OUTLINED_FUNCTION_2_56();
      v45 = sub_1DD640B28();
      v49 = (v65 + v64[6]);
      *v49 = v45;
      v49[1] = v50;
      LOBYTE(a10) = 3;
      OUTLINED_FUNCTION_2_56();
      v51 = sub_1DD640AD8();
      v52 = (v65 + v64[7]);
      *v52 = v51;
      v52[1] = v53;
      v58 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDAD8, &qword_1DD653678);
      v66 = 4;
      sub_1DD4C9C0C(&qword_1ECCDDAE0, sub_1DD4C9A3C);
      OUTLINED_FUNCTION_6_43();
      sub_1DD640B78();
      *(v65 + v64[8]) = a10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDAF0, &qword_1DD653680);
      v66 = 5;
      sub_1DD4C9A90(&qword_1ECCDDAF8, sub_1DD4C9AF8);
      OUTLINED_FUNCTION_6_43();
      sub_1DD640B78();

      (*(v34 + 8))(v42, v61);
      v54 = OUTLINED_FUNCTION_1_67();
      v55(v54);
      v56 = v65;
      *(v65 + v64[9]) = a10;
      sub_1DD4C9B4C(v56, v60);
      __swift_destroy_boxed_opaque_existential_1(v63);
      sub_1DD4C9BB0(v56);
      goto LABEL_4;
    }

    sub_1DD4C99E8();
    OUTLINED_FUNCTION_4_42();
    *v46 = v38;
    v46[1] = v36;
    swift_willThrow();

    v47 = OUTLINED_FUNCTION_1_67();
    v48(v47);
  }

  __swift_destroy_boxed_opaque_existential_1(v63);

LABEL_4:
  OUTLINED_FUNCTION_86();
}

void sub_1DD4C9568()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB08, &qword_1DD653688);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DD4C9994();
  sub_1DD640EF8();
  v10 = *v2;
  OUTLINED_FUNCTION_18_2();
  sub_1DD640C48();
  if (!v1)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v13 setFormatOptions_];
    v25 = type metadata accessor for HolidaysDBUpdate();
    v14 = v2 + v25[5];
    v15 = sub_1DD63CFA8();
    v16 = [v13 stringFromDate_];

    sub_1DD63FDD8();
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C18();

    v17 = (v2 + v25[6]);
    v18 = *v17;
    v19 = v17[1];
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C18();
    v20 = (v2 + v25[7]);
    v21 = *v20;
    v22 = v20[1];
    OUTLINED_FUNCTION_18_2();
    sub_1DD640BC8();
    v23 = v13;
    v26 = *(v2 + v25[8]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDAD8, &qword_1DD653678);
    sub_1DD4C9C0C(&qword_1ECCDDB10, sub_1DD4C9C74);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();

    v24 = *(v2 + v25[9]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDAF0, &qword_1DD653680);
    sub_1DD4C9A90(&qword_1ECCDDB20, sub_1DD4C9CC8);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
  }

  v11 = OUTLINED_FUNCTION_4_44();
  v12(v11);
  OUTLINED_FUNCTION_86();
}

uint64_t type metadata accessor for HolidaysDBUpdate()
{
  result = qword_1ECCDDB48;
  if (!qword_1ECCDDB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DD4C9994()
{
  result = qword_1ECCDDAC8;
  if (!qword_1ECCDDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDAC8);
  }

  return result;
}

unint64_t sub_1DD4C99E8()
{
  result = qword_1ECCDDAD0;
  if (!qword_1ECCDDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDAD0);
  }

  return result;
}

unint64_t sub_1DD4C9A3C()
{
  result = qword_1ECCDDAE8;
  if (!qword_1ECCDDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDAE8);
  }

  return result;
}

uint64_t sub_1DD4C9A90(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDDAF0, &qword_1DD653680);
    a2();
    result = OUTLINED_FUNCTION_12_27();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD4C9AF8()
{
  result = qword_1ECCDDB00;
  if (!qword_1ECCDDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB00);
  }

  return result;
}

uint64_t sub_1DD4C9B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HolidaysDBUpdate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4C9BB0(uint64_t a1)
{
  v2 = type metadata accessor for HolidaysDBUpdate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD4C9C0C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDDAD8, &qword_1DD653678);
    a2();
    result = OUTLINED_FUNCTION_12_27();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD4C9C74()
{
  result = qword_1ECCDDB18;
  if (!qword_1ECCDDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB18);
  }

  return result;
}

unint64_t sub_1DD4C9CC8()
{
  result = qword_1ECCDDB28;
  if (!qword_1ECCDDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB28);
  }

  return result;
}

void sub_1DD4C9D1C()
{
  OUTLINED_FUNCTION_93();
  v72 = v1;
  v3 = v2;
  v71 = type metadata accessor for HolidaysDBUpdate();
  v4 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_1_4();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  v11 = sub_1DD63D078();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  v23 = v3;
  v24 = sub_1DD4CB0C8(&v65 - v21, v19, v3);
  if (!v0)
  {
    v25 = v24;
    v68 = v7;
    v69 = v10;
    v26 = v71;
    v70 = v23;
    v27 = *(v14 + 8);
    v27(v19, v11);
    v27(v22, v11);
    v28 = v72;
    v29 = *v72;
    if (v25 >= *v72)
    {
      if (qword_1EE1632D8 != -1)
      {
LABEL_40:
        OUTLINED_FUNCTION_5();
      }

      v37 = sub_1DD63F9F8();
      __swift_project_value_buffer(v37, qword_1EE16EFE0);
      v38 = v69;
      sub_1DD4C9B4C(v28, v69);
      v39 = sub_1DD63F9D8();
      v40 = sub_1DD640368();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134217984;
        v42 = *v38;
        sub_1DD4C9BB0(v38);
        *(v41 + 4) = v42;
        _os_log_impl(&dword_1DD38D000, v39, v40, "Skipping reapply for update %ld", v41, 0xCu);
        MEMORY[0x1E12B3DA0](v41, -1, -1);
      }

      else
      {
        sub_1DD4C9BB0(v38);
      }
    }

    else
    {
      v30 = v25 + 1;
      if (v29 == v25 + 1)
      {
        v31 = v26;
        v32 = v26[5];
        sub_1DD4CB510(v29);
        sub_1DD4CB7AC(*(v28 + v26[6]), *(v28 + v26[6] + 8), *(v28 + v26[7]), *(v28 + v26[7] + 8));
        v33 = 0;
        v34 = *(v28 + v26[8]);
        v35 = *(v34 + 16);
        v36 = (v34 + 32);
        while (v35 != v33)
        {
          if (v33 >= *(v34 + 16))
          {
            __break(1u);
            goto LABEL_40;
          }

          memcpy(v74, v36, 0xA3uLL);
          sub_1DD4CA79C(v74, &v73);
          sub_1DD4CBA94(v74);
          ++v33;
          sub_1DD4CA7F8(v74);
          v36 += 168;
        }

        v50 = 0;
        v51 = *(v28 + v31[9]);
        v71 = *(v51 + 16);
        v66 = 0x80000001DD668C10;
        v68 = "associatedReligion";
        v69 = v51;
        v52 = (v51 + 64);
        v67 = xmmword_1DD6444F0;
        while (v71 != v50)
        {
          v75 = v50;
          if (v50 >= v69[2])
          {
            __break(1u);
            return;
          }

          v53 = *(v52 - 4);
          v54 = *(v52 - 3);
          v55 = *(v52 - 2);
          v56 = *(v52 - 1);
          v72 = v52;
          v57 = *v52;
          v58 = sub_1DD4055B0();

          if (sqlite3_db_readonly(v58, 0) == 1)
          {
            sub_1DD4CA84C();
            OUTLINED_FUNCTION_4_42();
            *v64 = 1;
            *(v64 + 8) = 0u;
            *(v64 + 24) = 0u;
            *(v64 + 40) = 0;
            *(v64 + 48) = 2;
            swift_willThrow();

            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
          inited = swift_initStackObject();
          *(inited + 16) = v67;
          v60 = MEMORY[0x1E69E6158];
          *(inited + 56) = MEMORY[0x1E69E6158];
          *(inited + 64) = &off_1F58C4E78;
          *(inited + 72) = v55;
          *(inited + 32) = v53;
          *(inited + 40) = v54;
          *(inited + 96) = v60;
          *(inited + 104) = &off_1F58C4E78;
          v61 = 0xE800000000000000;
          v62 = 0x5453494844445542;
          *(inited + 80) = v56;
          v63 = inited;
          switch(v57)
          {
            case 1:
              v61 = 0xE700000000000000;
              v62 = 0x4553454E494843;
              break;
            case 2:
              v61 = 0xE600000000000000;
              v62 = 0x574552424548;
              break;
            case 3:
              v61 = 0xE500000000000000;
              v62 = 0x49524A4948;
              break;
            case 4:
              v61 = 0xE500000000000000;
              v62 = 0x55444E4948;
              break;
            case 5:
              v62 = 0xD000000000000010;
              v61 = v66;
              break;
            case 6:
              v61 = 0xE700000000000000;
              v62 = 0x43494D414C5349;
              break;
            case 7:
              v61 = 0xE90000000000004ELL;
              v62 = 0x4149524F47455247;
              break;
            case 8:
              v62 = 0x4553454E4150414ALL;
              break;
            case 9:
              v61 = 0xE600000000000000;
              v62 = 0x4E41494C554ALL;
              break;
            case 10:
              v61 = 0xE700000000000000;
              v62 = 0x4E414953524550;
              break;
            case 11:
              v61 = 0xE300000000000000;
              v62 = 4411218;
              break;
            default:
              break;
          }

          *(inited + 136) = MEMORY[0x1E69E6158];
          *(inited + 144) = &off_1F58C4E78;
          *(inited + 112) = v62;
          *(inited + 120) = v61;

          sub_1DD4061B8(0xD000000000000029, v68 | 0x8000000000000000, v63);

          swift_setDeallocating();
          sub_1DD46CB4C();
          v52 = (v72 + 5);
          v50 = v75 + 1;
        }
      }

      else
      {
        if (qword_1EE1632D8 != -1)
        {
          OUTLINED_FUNCTION_5();
        }

        v43 = sub_1DD63F9F8();
        __swift_project_value_buffer(v43, qword_1EE16EFE0);
        v44 = v68;
        sub_1DD4C9B4C(v28, v68);
        v45 = sub_1DD63F9D8();
        v46 = sub_1DD640378();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 134218240;
          v48 = *v44;
          sub_1DD4C9BB0(v44);
          *(v47 + 4) = v48;
          *(v47 + 12) = 2048;
          *(v47 + 14) = v30;
          _os_log_impl(&dword_1DD38D000, v45, v46, "Not applying update version %ld out of order; waiting for %ld", v47, 0x16u);
          MEMORY[0x1E12B3DA0](v47, -1, -1);
        }

        else
        {
          sub_1DD4C9BB0(v44);
        }

        sub_1DD4C99E8();
        OUTLINED_FUNCTION_4_42();
        *v49 = xmmword_1DD642F70;
        swift_willThrow();
      }
    }
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD4CA4A4(uint64_t a1)
{
  v3 = sub_1DD63CE68();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1, v7);
  v11 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  v12 = sub_1DD4CA648(v9, 1);
  if (!v1)
  {
    v13 = v12;
    v14 = sub_1DD4CA8A0(v12);
    if (v15 >> 60 == 15)
    {
      sub_1DD4C99E8();
      OUTLINED_FUNCTION_4_42();
      *v16 = 0;
      v16[1] = 0;
      swift_willThrow();
    }

    else
    {
      v17 = v14;
      v18 = v15;
      v19 = sub_1DD63CBF8();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      sub_1DD63CBE8();
      type metadata accessor for HolidaysDBUpdate();
      sub_1DD4CA904();
      sub_1DD63CBD8();

      sub_1DD3AD77C(v17, v18);
    }
  }
}

id sub_1DD4CA648(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1DD63CE08();
  v16[0] = 0;
  v7 = [v3 initWithURL:v6 options:a2 error:v16];

  v8 = v16[0];
  if (v7)
  {
    v9 = sub_1DD63CE68();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v16[0];
    sub_1DD63CD98();

    swift_willThrow();
    v13 = sub_1DD63CE68();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

unint64_t sub_1DD4CA84C()
{
  result = qword_1ECCDDB38;
  if (!qword_1ECCDDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB38);
  }

  return result;
}

uint64_t sub_1DD4CA8A0(void *a1)
{
  v1 = [a1 regularFileContents];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63CF28();

  return v3;
}

unint64_t sub_1DD4CA904()
{
  result = qword_1ECCDDB40;
  if (!qword_1ECCDDB40)
  {
    type metadata accessor for HolidaysDBUpdate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB40);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD4CA970(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD4CA9B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference21HolidaysDBUpdateErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

_BYTE *storeEnumTagSinglePayload for HolidaysDBUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_1DD4CAB30()
{
  sub_1DD63D078();
  if (v0 <= 0x3F)
  {
    sub_1DD4CAC60(319, &qword_1EE163958, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1DD4CAC60(319, &qword_1ECCDDB58, &unk_1F58B8D68, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1DD4CAC60(319, &qword_1ECCDDB60, &type metadata for HolidayCalendarInfo, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD4CAC60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DD4CACB4()
{
  result = qword_1ECCDDB68;
  if (!qword_1ECCDDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB68);
  }

  return result;
}

unint64_t sub_1DD4CAD0C()
{
  result = qword_1ECCDDB70;
  if (!qword_1ECCDDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB70);
  }

  return result;
}

unint64_t sub_1DD4CAD64()
{
  result = qword_1ECCDDB78;
  if (!qword_1ECCDDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB78);
  }

  return result;
}

unint64_t sub_1DD4CADB8()
{
  result = qword_1ECCDDB88;
  if (!qword_1ECCDDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB88);
  }

  return result;
}

unint64_t sub_1DD4CAE0C()
{
  result = qword_1ECCDDB90;
  if (!qword_1ECCDDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB90);
  }

  return result;
}

unint64_t sub_1DD4CAE60()
{
  result = qword_1ECCDDBA0;
  if (!qword_1ECCDDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HolidayCalendarInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4CAF94()
{
  result = qword_1ECCDDBA8;
  if (!qword_1ECCDDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBA8);
  }

  return result;
}

unint64_t sub_1DD4CAFEC()
{
  result = qword_1ECCDDBB0;
  if (!qword_1ECCDDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBB0);
  }

  return result;
}

unint64_t sub_1DD4CB044()
{
  result = qword_1ECCDDBB8;
  if (!qword_1ECCDDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_27()
{

  return swift_getWitnessTable();
}

uint64_t sub_1DD4CB0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DD63D078();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_25();
  v13 = sub_1DD4061B8(0xD000000000000034, 0x80000001DD66E330, MEMORY[0x1E69E7CC0]);
  if (!v3)
  {
    a3 = sub_1DD58B560(v13);
    sub_1DD5D2E58();
    if (!v14)
    {

      sub_1DD4CA84C();
      OUTLINED_FUNCTION_4_42();
      *v21 = 0u;
      *(v21 + 16) = 0u;
      *(v21 + 32) = 0u;
      *(v21 + 48) = 2;
LABEL_8:
      swift_willThrow();
      return a3;
    }

    OUTLINED_FUNCTION_13_27();
    v19 = sub_1DD4CEA5C(v15, v16, v17, v18);
    if (v20)
    {

      sub_1DD4CF1AC();
      v22 = OUTLINED_FUNCTION_4_42();
      OUTLINED_FUNCTION_9_36(xmmword_1DD653A70, v22, v23);
      goto LABEL_8;
    }

    a3 = v19;
    OUTLINED_FUNCTION_13_27();
    v29 = sub_1DD4CE934(v25, v26, v27, v28);
    if (v30)
    {
      v53 = v29;
      v54 = v30;
      OUTLINED_FUNCTION_13_27();
      v35 = sub_1DD4CE934(v31, v32, v33, v34);
      if (v36)
      {
        v50 = v35;
        v51 = v36;

        v39 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
        [v39 setFormatOptions_];
        v40 = sub_1DD63FDA8();
        v52 = v39;
        v41 = [v39 dateFromString_];

        if (v41)
        {

          sub_1DD63D048();

          (*(v10 + 32))(a1, v4, v7);
          v42 = sub_1DD63FDA8();
          v43 = [v52 dateFromString_];

          if (v43)
          {

            sub_1DD63D048();
          }

          else
          {
            sub_1DD4CA84C();
            v48 = OUTLINED_FUNCTION_4_42();
            *v49 = v50;
            v49[1] = v51;
            OUTLINED_FUNCTION_16_28(v48, v49);

            (*(v10 + 8))(a1, v7);
          }
        }

        else
        {

          sub_1DD4CA84C();
          v46 = OUTLINED_FUNCTION_4_42();
          *v47 = v53;
          v47[1] = v54;
          OUTLINED_FUNCTION_16_28(v46, v47);
        }

        return a3;
      }

      sub_1DD4CF1AC();
      v44 = OUTLINED_FUNCTION_4_42();
      OUTLINED_FUNCTION_9_36(xmmword_1DD653A50, v44, v45);
      swift_willThrow();
    }

    else
    {
      sub_1DD4CF1AC();
      v37 = OUTLINED_FUNCTION_4_42();
      OUTLINED_FUNCTION_9_36(xmmword_1DD653A60, v37, v38);
      swift_willThrow();
    }
  }

  return a3;
}

uint64_t sub_1DD4CB510(uint64_t a1)
{
  v4 = sub_1DD63D078();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_25();
  v10 = sub_1DD4055B0();
  if (sqlite3_db_readonly(v10, 0) == 1)
  {
    sub_1DD4CA84C();
    v11 = OUTLINED_FUNCTION_4_42();
    return OUTLINED_FUNCTION_2_57(v11, v12);
  }

  else
  {
    v29 = a1;
    v14 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v14 setFormatOptions_];
    v15 = sub_1DD63CFA8();
    v16 = [v14 stringFromDate_];

    v28 = sub_1DD63FDD8();
    v18 = v17;

    v19 = [objc_opt_self() now];
    sub_1DD63D048();

    v20 = sub_1DD63CFA8();
    (*(v7 + 8))(v2, v4);
    v21 = [v14 stringFromDate_];

    v22 = sub_1DD63FDD8();
    v24 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
    inited = swift_initStackObject();
    v26 = MEMORY[0x1E69E6530];
    *(inited + 16) = xmmword_1DD6444F0;
    *(inited + 56) = v26;
    *(inited + 64) = &off_1F58C4E98;
    *(inited + 32) = v29;
    v27 = MEMORY[0x1E69E6158];
    *(inited + 96) = MEMORY[0x1E69E6158];
    *(inited + 104) = &off_1F58C4E78;
    *(inited + 72) = v28;
    *(inited + 80) = v18;
    *(inited + 136) = v27;
    *(inited + 144) = &off_1F58C4E78;
    *(inited + 112) = v22;
    *(inited + 120) = v24;
    sub_1DD4061B8(0xD000000000000028, 0x80000001DD66E4C0, inited);
    if (!v1)
    {
    }

    swift_setDeallocating();
    return sub_1DD46CB4C();
  }
}

uint64_t sub_1DD4CB7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1DD4055B0();
  if (sqlite3_db_readonly(v9, 0) == 1)
  {
    sub_1DD4CA84C();
    v10 = OUTLINED_FUNCTION_4_42();
    return OUTLINED_FUNCTION_2_57(v10, v11);
  }

  if (!a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD643F90;
    v16 = MEMORY[0x1E69E6158];
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &off_1F58C4E78;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    OUTLINED_FUNCTION_20_21(0xD000000000000027, 0x80000001DD66E3E0, inited);
    if (!v4)
    {

      swift_setDeallocating();
      sub_1DD46CB4C();
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_1DD643F90;
      *(v19 + 56) = v16;
      *(v19 + 64) = &off_1F58C4E78;
      *(v19 + 32) = a1;
      *(v19 + 40) = a2;

      OUTLINED_FUNCTION_20_21(0xD000000000000028, 0x80000001DD66E410, v19);
    }

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1DD643F80;
  v14 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = &off_1F58C4E78;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 96) = v14;
  *(v13 + 104) = &off_1F58C4E78;
  *(v13 + 72) = a3;
  *(v13 + 80) = a4;
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_20_21(0xD000000000000038, 0x80000001DD66E440, v13);
  if (!v4)
  {

    swift_setDeallocating();
    sub_1DD46CB4C();
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1DD643F80;
    v18 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = &off_1F58C4E78;
    *(v17 + 72) = a3;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    *(v17 + 96) = v18;
    *(v17 + 104) = &off_1F58C4E78;
    *(v17 + 80) = a4;

    OUTLINED_FUNCTION_20_21(0xD000000000000039, 0x80000001DD66E480, v17);

LABEL_10:
    swift_setDeallocating();
    return sub_1DD46CB4C();
  }

  swift_setDeallocating();
  return sub_1DD46CB4C();
}

uint64_t sub_1DD4CBA94(__int128 *a1)
{
  v3 = sub_1DD4055B0();
  if (sqlite3_db_readonly(v3, 0) == 1)
  {
    sub_1DD4CA84C();
    v4 = OUTLINED_FUNCTION_4_42();
    return OUTLINED_FUNCTION_2_57(v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
    inited = swift_initStackObject();
    v9 = a1[1];
    v55 = *a1;
    v8 = v55;
    *(inited + 16) = xmmword_1DD653A80;
    *(inited + 32) = v8;
    v10 = MEMORY[0x1E69E6158];
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &off_1F58C4E78;
    v54 = v9;
    *(inited + 96) = v10;
    *(inited + 104) = &off_1F58C4E78;
    *(inited + 72) = v9;
    v11 = sub_1DD4CC2EC(*(a1 + 32));
    *(inited + 136) = v10;
    *(inited + 144) = &off_1F58C4E78;
    *(inited + 112) = v11;
    *(inited + 120) = v12;
    v13 = MEMORY[0x1E69E6530];
    v14 = *(a1 + 6);
    *(inited + 152) = *(a1 + 5);
    *(inited + 176) = v13;
    *(inited + 184) = &off_1F58C4E98;
    *(inited + 216) = v13;
    *(inited + 224) = &off_1F58C4E98;
    *(inited + 192) = v14;
    v15 = 0xEC00000065746144;
    v16 = 0x6574756C6F736241;
    switch(*(a1 + 56))
    {
      case 1:
        v15 = 0xE800000000000000;
        v16 = 0x7473694C65746144;
        break;
      case 2:
        v15 = 0x80000001DD668C70;
        v16 = 0xD000000000000017;
        break;
      case 3:
        v15 = 0x80000001DD668C90;
        v16 = 0xD000000000000014;
        break;
      default:
        break;
    }

    *(inited + 256) = v10;
    *(inited + 264) = &off_1F58C4E78;
    *(inited + 232) = v16;
    *(inited + 240) = v15;
    if (*(a1 + 72))
    {
      OUTLINED_FUNCTION_3_47();
      *(inited + 280) = 0;
      *(inited + 288) = 0;
    }

    else
    {
      v17 = *(a1 + 8);
      v18 = &off_1F58C4E98;
      v19 = MEMORY[0x1E69E6530];
    }

    *(inited + 272) = v17;
    *(inited + 296) = v19;
    *(inited + 304) = v18;
    if (*(a1 + 88))
    {
      OUTLINED_FUNCTION_3_47();
      *(inited + 320) = 0;
      *(inited + 328) = 0;
    }

    else
    {
      v20 = *(a1 + 10);
      v21 = &off_1F58C4E98;
      v22 = MEMORY[0x1E69E6530];
    }

    *(inited + 312) = v20;
    *(inited + 336) = v22;
    *(inited + 344) = v21;
    v23 = *(a1 + 89);
    if (v23 == 7)
    {
      OUTLINED_FUNCTION_3_47();
      *(inited + 360) = 0;
      *(inited + 368) = 0;
    }

    else
    {
      v24 = v23 + 1;
      v25 = &off_1F58C4E98;
      v26 = MEMORY[0x1E69E6530];
    }

    *(inited + 352) = v24;
    *(inited + 376) = v26;
    *(inited + 384) = v25;
    if (*(a1 + 104))
    {
      OUTLINED_FUNCTION_3_47();
      *(inited + 400) = 0;
      *(inited + 408) = 0;
    }

    else
    {
      v27 = *(a1 + 12);
      v28 = &off_1F58C4E98;
      v29 = MEMORY[0x1E69E6530];
    }

    *(inited + 392) = v27;
    *(inited + 416) = v29;
    *(inited + 424) = v28;
    if (*(a1 + 120))
    {
      OUTLINED_FUNCTION_3_47();
      *(inited + 440) = 0;
      *(inited + 448) = 0;
    }

    else
    {
      v30 = *(a1 + 14);
      v31 = &off_1F58C4E98;
      v32 = MEMORY[0x1E69E6530];
    }

    *(inited + 432) = v30;
    *(inited + 456) = v32;
    *(inited + 464) = v31;
    if (*(a1 + 136))
    {
      OUTLINED_FUNCTION_3_47();
      *(inited + 480) = 0;
      *(inited + 488) = 0;
    }

    else
    {
      v33 = *(a1 + 16);
      v34 = &off_1F58C4E98;
      v35 = MEMORY[0x1E69E6530];
    }

    *(inited + 472) = v33;
    *(inited + 496) = v35;
    *(inited + 504) = v34;
    v53 = a1[9];
    v36 = *(&v53 + 1);
    if (*(&v53 + 1))
    {
      v37 = &off_1F58C4E78;
      v38 = MEMORY[0x1E69E6158];
      v39 = v53;
    }

    else
    {
      v39 = 0;
      v38 = 0;
      v37 = 0;
      *(inited + 528) = 0;
    }

    *(inited + 512) = v39;
    *(inited + 520) = v36;
    *(inited + 536) = v38;
    *(inited + 544) = v37;
    v40 = *(a1 + 160);
    if (v40 == 12)
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      *(inited + 568) = 0;
    }

    else
    {
      v41 = sub_1DD4CC2EC(v40);
      v44 = &off_1F58C4E78;
      v43 = MEMORY[0x1E69E6158];
    }

    *(inited + 552) = v41;
    *(inited + 560) = v42;
    *(inited + 576) = v43;
    *(inited + 584) = v44;
    v45 = *(a1 + 161);
    if (v45 == 2)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      *(inited + 608) = 0;
    }

    else
    {
      v47 = 0x80000001DD668CC0;
      v50 = (v45 & 1) == 0;
      v46 = 0x697375427478656ELL;
      if (v50)
      {
        v47 = 0xEF7961447373656ELL;
      }

      else
      {
        v46 = 0xD000000000000012;
      }

      v49 = &off_1F58C4E78;
      v48 = MEMORY[0x1E69E6158];
    }

    *(inited + 592) = v46;
    *(inited + 600) = v47;
    *(inited + 616) = v48;
    *(inited + 624) = v49;
    v51 = *(a1 + 162);
    if (v51 == 2 || (v51 & 1) == 0)
    {
      *(inited + 664) = 0;
      *(inited + 632) = 0u;
      *(inited + 648) = 0u;
    }

    else
    {
      *(inited + 656) = v10;
      *(inited + 664) = &off_1F58C4E78;
      *(inited + 632) = 0x676E696E657665;
      *(inited + 640) = 0xE700000000000000;
    }

    sub_1DD406EC4(&v55, v52);
    sub_1DD406EC4(&v54, v52);
    sub_1DD3CDD14(&v53, v52, &unk_1ECCDFDF0, &unk_1DD644950);
    sub_1DD4061B8(0xD000000000000063, 0x80000001DD66E370, inited);
    if (!v1)
    {
    }

    swift_setDeallocating();
    return sub_1DD46CB4C();
  }
}

uint64_t sub_1DD4CBF1C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x697375427478656ELL;
  }
}

uint64_t sub_1DD4CBF64()
{
  v0 = sub_1DD640AA8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD4CBFB8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x697375427478656ELL;
  }

  if (v2)
  {
    v4 = 0xEF7961447373656ELL;
  }

  else
  {
    v4 = 0x80000001DD668CC0;
  }

  if (a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x697375427478656ELL;
  }

  if (a2)
  {
    v6 = 0x80000001DD668CC0;
  }

  else
  {
    v6 = 0xEF7961447373656ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1DD640CD8();
  }

  return v8 & 1;
}

uint64_t sub_1DD4CC08C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD4CBF64();
  *a2 = result;
  return result;
}

uint64_t sub_1DD4CC0BC()
{
  v1 = OUTLINED_FUNCTION_19_22();
  result = sub_1DD4CBF1C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1DD4CC1A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1DD48CA6C();
}

uint64_t sub_1DD4CC1B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1DD48CFCC();
}

uint64_t sub_1DD4CC1E8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD4C61F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD4CC214()
{
  v1 = OUTLINED_FUNCTION_19_22();
  result = sub_1DD4CC1C4(v1);
  *v0 = result;
  return result;
}

unint64_t sub_1DD4CC2EC(char a1)
{
  result = 0x5453494844445542;
  switch(a1)
  {
    case 1:
      result = 0x4553454E494843;
      break;
    case 2:
      result = 0x574552424548;
      break;
    case 3:
      result = 0x49524A4948;
      break;
    case 4:
      result = 0x55444E4948;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x43494D414C5349;
      break;
    case 7:
      result = 0x4149524F47455247;
      break;
    case 8:
      result = 0x4553454E4150414ALL;
      break;
    case 9:
      result = 0x4E41494C554ALL;
      break;
    case 10:
      result = 0x4E414953524550;
      break;
    case 11:
      result = 4411218;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4CC41C()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD4CC468(unsigned __int8 a1, char a2)
{
  v2 = 0x5453494844445542;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x5453494844445542;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x4553454E494843;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x574552424548;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x49524A4948;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x55444E4948;
      break;
    case 5:
      v5 = 0xD000000000000010;
      v3 = 0x80000001DD668C10;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x43494D414C5349;
      break;
    case 7:
      v5 = 0x4149524F47455247;
      v3 = 0xE90000000000004ELL;
      break;
    case 8:
      v5 = 0x4553454E4150414ALL;
      break;
    case 9:
      v3 = 0xE600000000000000;
      v5 = 0x4E41494C554ALL;
      break;
    case 10:
      v3 = 0xE700000000000000;
      v5 = 0x4E414953524550;
      break;
    case 11:
      v3 = 0xE300000000000000;
      v5 = 4411218;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x4553454E494843;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x574552424548;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x49524A4948;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x55444E4948;
      break;
    case 5:
      v2 = 0xD000000000000010;
      v6 = 0x80000001DD668C10;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x43494D414C5349;
      break;
    case 7:
      v2 = 0x4149524F47455247;
      v6 = 0xE90000000000004ELL;
      break;
    case 8:
      v2 = 0x4553454E4150414ALL;
      break;
    case 9:
      v6 = 0xE600000000000000;
      v2 = 0x4E41494C554ALL;
      break;
    case 10:
      v6 = 0xE700000000000000;
      v2 = 0x4E414953524550;
      break;
    case 11:
      v6 = 0xE300000000000000;
      v2 = 4411218;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1DD640CD8();
  }

  return v8 & 1;
}

uint64_t sub_1DD4CC728@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD4CC41C();
  *a2 = result;
  return result;
}

unint64_t sub_1DD4CC758()
{
  v1 = OUTLINED_FUNCTION_19_22();
  result = sub_1DD4CC2EC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1DD4CC83C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD48C8FC();
}

uint64_t sub_1DD4CC848(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD48CBB4();
}

uint64_t sub_1DD4CC854(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD48CE70();
}

unint64_t sub_1DD4CC860(char a1)
{
  result = 0x6574756C6F736241;
  switch(a1)
  {
    case 1:
      result = 0x7473694C65746144;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4CC8F8()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD4CC944(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000065746144;
  v3 = 0x6574756C6F736241;
  v4 = a1;
  v5 = 0x6574756C6F736241;
  v6 = 0xEC00000065746144;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x7473694C65746144;
      break;
    case 2:
      v6 = 0x80000001DD668C70;
      v5 = 0xD000000000000017;
      break;
    case 3:
      v5 = 0xD000000000000014;
      v6 = 0x80000001DD668C90;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x7473694C65746144;
      break;
    case 2:
      v2 = 0x80000001DD668C70;
      v3 = 0xD000000000000017;
      break;
    case 3:
      v3 = 0xD000000000000014;
      v2 = 0x80000001DD668C90;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1DD640CD8();
  }

  return v8 & 1;
}

uint64_t sub_1DD4CCAC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD4CC8F8();
  *a2 = result;
  return result;
}

unint64_t sub_1DD4CCAF4()
{
  v1 = OUTLINED_FUNCTION_19_22();
  result = sub_1DD4CC860(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1DD4CCBFC(uint64_t a1, uint64_t a2)
{
  v5 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v5 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 32);
  OUTLINED_FUNCTION_21_19(*(a1 + 32));
  if (v5 && v2 == v8)
  {
  }

  else
  {
    v10 = OUTLINED_FUNCTION_17_27();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || (sub_1DD3B0AD8(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    v11 = *(a2 + 64);
    v12 = *(a1 + 64);
    OUTLINED_FUNCTION_26_14();
    if (v13)
    {
      return 0;
    }
  }

  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    v14 = *(a2 + 80);
    v15 = *(a1 + 80);
    OUTLINED_FUNCTION_26_14();
    if (v16)
    {
      return 0;
    }
  }

  v17 = *(a1 + 89);
  v18 = *(a2 + 89);
  if (v17 == 7)
  {
    if (v18 != 7)
    {
      return 0;
    }
  }

  else if (v17 != v18)
  {
    return 0;
  }

  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    v19 = *(a2 + 96);
    v20 = *(a1 + 96);
    OUTLINED_FUNCTION_26_14();
    if (v21)
    {
      return 0;
    }
  }

  if (*(a1 + 120))
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    v22 = *(a2 + 112);
    v23 = *(a1 + 112);
    OUTLINED_FUNCTION_26_14();
    if (v24)
    {
      return 0;
    }
  }

  if (*(a1 + 136))
  {
    if (!*(a2 + 136))
    {
      return 0;
    }
  }

  else
  {
    v25 = *(a2 + 128);
    v26 = *(a1 + 128);
    OUTLINED_FUNCTION_26_14();
    if (v27)
    {
      return 0;
    }
  }

  v28 = *(a1 + 152);
  v29 = *(a2 + 152);
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    v30 = *(a1 + 144) == *(a2 + 144) && v28 == v29;
    if (!v30 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v31 = *(a1 + 160);
  v32 = *(a2 + 160);
  if (v31 == 12)
  {
    if (v32 != 12)
    {
      return 0;
    }

LABEL_65:
    v36 = *(a1 + 161);
    v37 = *(a2 + 161);
    if (v36 == 2)
    {
      if (v37 != 2)
      {
        return 0;
      }
    }

    else if (v37 == 2 || (sub_1DD3B0CFC(v36 & 1, v37 & 1) & 1) == 0)
    {
      return 0;
    }

    v38 = *(a1 + 162);
    v39 = *(a2 + 162);
    if (v38 == 2)
    {
      if (v39 != 2)
      {
        return 0;
      }
    }

    else if (v39 == 2 || ((v39 ^ v38) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v32 != 12)
  {
    OUTLINED_FUNCTION_21_19(v31);
    if (v5 && v2 == v33)
    {
    }

    else
    {
      v35 = OUTLINED_FUNCTION_17_27();

      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_65;
  }

  return 0;
}

uint64_t sub_1DD4CCEC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796164696C6F68 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1918985593 && a2 == 0xE400000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6572727563636FLL && a2 == 0xEA00000000006563;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701869940 && a2 == 0xE400000000000000;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 7954788 && a2 == 0xE300000000000000;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656577666F796164 && a2 == 0xE90000000000006BLL;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6964726F796164 && a2 == 0xEA00000000006C61;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x65766974616C6572 && a2 == 0xEA00000000006F74;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x80000001DD66E310 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x646576726573626FLL && a2 == 0xE800000000000000;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x676E696E657665 && a2 == 0xE700000000000000)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1DD640CD8();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

unint64_t sub_1DD4CD38C(char a1)
{
  result = 0x796164696C6F68;
  switch(a1)
  {
    case 1:
      result = 0x7972746E756F63;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 1918985593;
      break;
    case 4:
      result = 0x6E6572727563636FLL;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 0x68746E6F6DLL;
      break;
    case 7:
      result = 7954788;
      break;
    case 8:
      result = 0x656577666F796164;
      break;
    case 9:
      result = 0x6E6964726F796164;
      break;
    case 10:
      result = 0x74657366666FLL;
      break;
    case 11:
      result = 0x6E6F697461727564;
      break;
    case 12:
      result = 0x65766974616C6572;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x646576726573626FLL;
      break;
    case 15:
      result = 0x676E696E657665;
      break;
    default:
      return result;
  }

  return result;
}
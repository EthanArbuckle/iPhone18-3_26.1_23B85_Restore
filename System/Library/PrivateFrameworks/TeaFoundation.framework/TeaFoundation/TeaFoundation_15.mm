uint64_t sub_1BF122F28(__int128 *a1, __int128 *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  v23 = v3;
  sub_1BF12302C(&v24);
  v20 = v24;
  v6 = JSONPointer.rawValue.getter();
  v8 = v7;

  v9 = a2[1];
  v17 = *a2;
  v18 = v9;
  v19 = v4;
  sub_1BF12302C(&v16);
  v10 = JSONPointer.rawValue.getter();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1BF17B86C();
  }

  return v14 & 1;
}

uint64_t sub_1BF12302C@<X0>(uint64_t *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  switch(*(v1 + 32))
  {
    case 2:
    case 3:
      *a1 = v3;
      swift_bridgeObjectRetain_n();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF071B6C();
      v7 = *(*a1 + 16);
      sub_1BF071DA8(v7);
      v8 = *a1;
      *(v8 + 16) = v7 + 1;
      v9 = v8 + 16 * v7;
      *(v9 + 32) = v5;
      *(v9 + 40) = v4;

      break;
    case 4:
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_10;
    case 5:
LABEL_10:
      if (v5 < 0)
      {
        __break(1u);
      }

      else
      {
LABEL_11:
        v10 = sub_1BF17B6FC();
        v12 = v11;
        *a1 = v3;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF071B6C();
        v13 = *(*a1 + 16);
        sub_1BF071DA8(v13);
        v14 = *a1;
        *(v14 + 16) = v13 + 1;
        v15 = v14 + 16 * v13;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;

        *a1 = v14;
      }

      break;
    default:
      *a1 = result;

      result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      break;
  }

  return result;
}

uint64_t JSONDifference.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v11 = *(a3 + 8);
  v12 = sub_1BF17A67C();
  result = (*(v8 + 8))(a1, a2);
  *a4 = v12;
  return result;
}

uint64_t static JSONDifference.Change.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v91[0] = *a1;
  v91[1] = v5;
  v91[2] = v6;
  v91[3] = v7;
  v92 = v8;
  v93 = v10;
  v94 = v9;
  v95 = v11;
  v96 = v12;
  v97 = v13;
  switch(v8)
  {
    case 1:
      if (v13 != 1)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, 1);
      v14 = OUTLINED_FUNCTION_0_70();
      v18 = 1;
      goto LABEL_19;
    case 2:
      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v88 = v10;
      v90 = v4;
      OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, 2);
      v24 = OUTLINED_FUNCTION_0_70();
      v28 = 2;
      goto LABEL_10;
    case 3:
      if (v13 != 3)
      {
        goto LABEL_34;
      }

      v88 = v10;
      v90 = v4;
      OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, 3);
      v24 = OUTLINED_FUNCTION_0_70();
      v28 = 3;
LABEL_10:
      v29 = sub_1BF0CB03C(v24, v25, v26, v27, v28);
      if ((OUTLINED_FUNCTION_13_20(v29, v30, v31, v32, v33, v34, v35, v36, v88, v90) & 1) == 0)
      {
        goto LABEL_35;
      }

      v37 = OUTLINED_FUNCTION_14_22();
      v39 = v38;
      if (v37 == JSONPointer.rawValue.getter() && v39 == v40)
      {
      }

      else
      {
        v42 = sub_1BF17B86C();

        if ((v42 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      if (v6 != v11 || v7 != v12)
      {
        v86 = sub_1BF17B86C();
        sub_1BF12364C(v91);
        return v86 & 1;
      }

      sub_1BF12364C(v91);
      v75 = 1;
      return v75 & 1;
    case 4:
      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v87 = v10;
      v89 = v4;
      OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, 4);
      v19 = OUTLINED_FUNCTION_0_70();
      v23 = 4;
      goto LABEL_27;
    case 5:
      if (v13 != 5)
      {
        goto LABEL_34;
      }

      v87 = v10;
      v89 = v4;
      OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, 5);
      v19 = OUTLINED_FUNCTION_0_70();
      v23 = 5;
LABEL_27:
      sub_1BF0CB03C(v19, v20, v21, v22, v23);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v57 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if ((OUTLINED_FUNCTION_13_20(v57, v58, v59, v60, v61, v62, v63, v64, v87, v89) & 1) == 0)
      {

        goto LABEL_35;
      }

      v65 = OUTLINED_FUNCTION_14_22();
      v67 = v66;
      if (v65 == JSONPointer.rawValue.getter() && v67 == v68)
      {

        sub_1BF12364C(v91);
      }

      else
      {
        v70 = OUTLINED_FUNCTION_8_29();

        sub_1BF12364C(v91);

        if ((v70 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v75 = v6 == v11;
      return v75 & 1;
    default:
      if (v13)
      {
LABEL_34:
        OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, v13);
        v71 = OUTLINED_FUNCTION_0_70();
        sub_1BF0CB03C(v71, v72, v73, v74, v8);
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_3_40(a1, a2, a3, a4, 0);
      v14 = OUTLINED_FUNCTION_0_70();
      v18 = 0;
LABEL_19:
      sub_1BF0CB03C(v14, v15, v16, v17, v18);
      sub_1BF01716C(v6);
      sub_1BF01716C(v11);
      v43 = JSONPointer.rawValue.getter();
      v45 = v44;
      if (v43 == JSONPointer.rawValue.getter() && v45 == v46)
      {
      }

      else
      {
        v48 = OUTLINED_FUNCTION_8_29();

        if ((v48 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v77 = OUTLINED_FUNCTION_13_20(v49, v50, v51, v52, v53, v54, v55, v56, v9, v5);
      if (v77)
      {
        v75 = OUTLINED_FUNCTION_13_20(v77, v78, v79, v80, v81, v82, v83, v84, v11, v6);
        sub_1BF12364C(v91);
        sub_1BF017214(v11);
        sub_1BF017214(v6);
        return v75 & 1;
      }

LABEL_43:
      sub_1BF017214(v11);
      sub_1BF017214(v6);
LABEL_35:
      sub_1BF12364C(v91);
LABEL_36:
      v75 = 0;
      return v75 & 1;
  }
}

uint64_t sub_1BF12364C(uint64_t a1)
{
  sub_1BF1236A8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF1236A8()
{
  if (!qword_1EBDCC338)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBDCC338);
    }
  }
}

uint64_t JSONDifference.description.getter()
{
  v3 = *v0;
  sub_1BF123C74();
  sub_1BF123D38();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v1 = sub_1BF179F7C();

  return v1;
}

uint64_t JSONDifference.Change.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  switch(*(v0 + 32))
  {
    case 1:
      if (*(v2 + 16))
      {
        OUTLINED_FUNCTION_2_55();
        v16 = OUTLINED_FUNCTION_14_22();
        MEMORY[0x1BFB52000](v16);

        MEMORY[0x1BFB52000](2618, 0xE200000000000000);
        OUTLINED_FUNCTION_5_33();
        sub_1BF0736D4(0);
        MEMORY[0x1BFB52000]();
      }

      else
      {
        v32 = v0[1];
        sub_1BF0736D4(0);
        v31 = v25;
      }

      OUTLINED_FUNCTION_12_21();
      goto LABEL_32;
    case 2:
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_1_55();
        sub_1BF17B1EC();

        OUTLINED_FUNCTION_2_55();
        OUTLINED_FUNCTION_5_33();
        v13 = JSONPointer.rawValue.getter();
        MEMORY[0x1BFB52000](v13);

        v14 = OUTLINED_FUNCTION_11_21();
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();

      v24 = 0x747265736E49;
      goto LABEL_25;
    case 3:
      if (*(v1 + 16))
      {
        OUTLINED_FUNCTION_1_55();
        sub_1BF17B1EC();

        OUTLINED_FUNCTION_2_55();
        OUTLINED_FUNCTION_5_33();
        v15 = JSONPointer.rawValue.getter();
        MEMORY[0x1BFB52000](v15);

        v14 = OUTLINED_FUNCTION_10_27();
LABEL_13:
        MEMORY[0x1BFB52000](v14, 0xEA0000000000220ALL);
      }

      else
      {
        OUTLINED_FUNCTION_1_55();
        sub_1BF17B1EC();

        v24 = 0x65766F6D6552;
LABEL_25:
        v31 = v24 & 0xFFFFFFFFFFFFLL | 0xA3A000000000000;
      }

      OUTLINED_FUNCTION_7_29();
      v12 = 2112034;
      v23 = 0xE300000000000000;
      goto LABEL_27;
    case 4:
      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();

      OUTLINED_FUNCTION_2_55();
      if (v3 < 0)
      {
        __break(1u);
LABEL_35:
        __break(1u);
      }

      else
      {
        v3 = sub_1BF17B6FC();
        v0 = v8;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_6;
        }
      }

      OUTLINED_FUNCTION_6_36();
      v1 = v27;
LABEL_6:
      v9 = *(v1 + 16);
      v10 = v9 + 1;
      if (v9 >= *(v1 + 24) >> 1)
      {
        OUTLINED_FUNCTION_4_32();
        v9 = v1;
        v1 = v28;
      }

      *(v1 + 16) = v10;
      v11 = v1 + 16 * v9;
      *(v11 + 32) = v3;
      *(v11 + 40) = v0;
      OUTLINED_FUNCTION_5_33();
      JSONPointer.rawValue.getter();

      OUTLINED_FUNCTION_7_29();

      v12 = OUTLINED_FUNCTION_11_21();
LABEL_22:
      v23 = 0xE90000000000000ALL;
LABEL_27:
      MEMORY[0x1BFB52000](v12, v23);
LABEL_32:
      sub_1BF0736D4(0);
      MEMORY[0x1BFB52000]();

      return v31;
    case 5:
      OUTLINED_FUNCTION_1_55();
      sub_1BF17B1EC();

      OUTLINED_FUNCTION_2_55();
      if (v3 < 0)
      {
        goto LABEL_35;
      }

      v17 = sub_1BF17B6FC();
      v19 = v18;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_36();
        v1 = v29;
      }

      v20 = *(v1 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v1 + 24) >> 1)
      {
        OUTLINED_FUNCTION_4_32();
        v20 = v1;
        v1 = v30;
      }

      *(v1 + 16) = v21;
      v22 = v1 + 16 * v20;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      OUTLINED_FUNCTION_5_33();
      JSONPointer.rawValue.getter();

      OUTLINED_FUNCTION_7_29();

      v12 = OUTLINED_FUNCTION_10_27();
      goto LABEL_22;
    default:
      if (*(v2 + 16))
      {
        OUTLINED_FUNCTION_1_55();
        sub_1BF17B1EC();
        MEMORY[0x1BFB52000](2126913, 0xE300000000000000);
        v5 = OUTLINED_FUNCTION_14_22();
        MEMORY[0x1BFB52000](v5);

        v6 = 0x80000001BF18F500;
        v7 = 0xD000000000000010;
      }

      else
      {
        OUTLINED_FUNCTION_1_55();
        sub_1BF17B1EC();
        v7 = 0x73696D2065707954;
        v6 = 0xEF0A3A686374616DLL;
      }

      MEMORY[0x1BFB52000](v7, v6);
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_12_21();
      OUTLINED_FUNCTION_9_26();
      return v31;
  }
}

uint64_t sub_1BF123C30@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 32);
  result = JSONDifference.Change.description.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1BF123C74()
{
  if (!qword_1EBDCC340)
  {
    sub_1BF126628(255, &qword_1EBDCC348, &type metadata for JSONDifference.Change, MEMORY[0x1E69E62F8]);
    sub_1BF123DDC(&qword_1EBDCC350, &qword_1EBDCC348, &type metadata for JSONDifference.Change);
    v0 = sub_1BF17B3FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCC340);
    }
  }
}

unint64_t sub_1BF123D38()
{
  result = qword_1EBDCC358;
  if (!qword_1EBDCC358)
  {
    sub_1BF123C74();
    sub_1BF123DDC(&qword_1EBDCC360, &qword_1EBDCC348, &type metadata for JSONDifference.Change);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC358);
  }

  return result;
}

uint64_t sub_1BF123DDC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BF126628(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int __swiftcall JSONDifference.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t JSONDifference.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = *v2 + 40 * result;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    v8 = *(v3 + 64);
    *(a2 + 32) = v8;
    return sub_1BF0CB03C(v4, v5, v6, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF123EA0@<X0>(uint64_t *a1@<X8>)
{
  result = JSONDifference.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_1BF123EC8(void *a1, unint64_t *a2))(unint64_t **a1)
{
  v4 = __swift_coroFrameAllocStub(0x21uLL);
  *a1 = v4;
  JSONDifference.subscript.getter(*a2, v4);
  return sub_1BF123F30;
}

void sub_1BF123F30(unint64_t **a1)
{
  v1 = *a1;
  sub_1BF0CB11C(**a1, v1[1], v1[2], v1[3], *(v1 + 32));

  free(v1);
}

uint64_t sub_1BF123F94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  result = sub_1BF12218C(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF123FC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  result = sub_1BF1221B4(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v8 & 1;
  return result;
}

Swift::Int sub_1BF124050@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = JSONDifference.index(after:)(*a1);
  *a2 = result;
  return result;
}

void *sub_1BF12407C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

unint64_t sub_1BF1240B4()
{
  result = qword_1EBDCC368;
  if (!qword_1EBDCC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC368);
  }

  return result;
}

uint64_t sub_1BF124158(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BF124290(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF12419C()
{
  result = qword_1EBDCC380;
  if (!qword_1EBDCC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC380);
  }

  return result;
}

void sub_1BF124290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF12419C();
    v7 = a3(a1, &type metadata for JSONDifference, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF124310(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
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

uint64_t sub_1BF124350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

int64_t sub_1BF1243A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF17B6DC();
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
        v6 = sub_1BF17A57C();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1BF1248AC(v7, v8, a1, v4);
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
    return sub_1BF124594(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF12449C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF17B6DC();
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
        sub_1BF070F64();
        v6 = sub_1BF17A57C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF12595C(v7, v8, a1, v4);
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
    return sub_1BF1247D4(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1BF124594(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v34 = *a4;
    v4 = *a4 + 40 * a3 - 40;
    v5 = result - a3;
    while (2)
    {
      v32 = v4;
      v33 = a3;
      v31 = v5;
      v6 = v5;
      while (1)
      {
        v35 = v6;
        v7 = v4 + 40;
        v8 = *(v4 + 48);
        v9 = *(v4 + 56);
        v10 = *(v4 + 64);
        v11 = *(v4 + 72);
        v12 = *v4;
        v13 = *(v4 + 8);
        v14 = *(v4 + 16);
        v15 = *(v4 + 24);
        v37 = v14;
        v16 = *(v4 + 32);
        v36 = v16;
        v47 = *(v4 + 40);
        v48 = v8;
        v49 = v9;
        v50 = v10;
        v51 = v11;
        v42 = v8;
        v43 = v47;
        v40 = v10;
        v41 = v9;
        v39 = v11;
        sub_1BF0CB03C(v47, v8, v9, v10, v11);
        sub_1BF0CB03C(v12, v13, v14, v15, v16);
        sub_1BF12302C(&v52);
        v46 = v52;
        v17 = JSONPointer.rawValue.getter();
        v19 = v18;

        v38 = v12;
        v44[1] = v12;
        v44[2] = v13;
        v44[3] = v14;
        v44[4] = v15;
        v45 = v36;
        sub_1BF12302C(v44);
        v20 = JSONPointer.rawValue.getter();
        v22 = v21;

        if (v17 == v20 && v19 == v22)
        {
          break;
        }

        v24 = sub_1BF17B86C();

        sub_1BF0CB11C(v38, v13, v37, v15, v36);
        result = sub_1BF0CB11C(v43, v42, v41, v40, v39);
        if (v24)
        {
          if (!v34)
          {
            __break(1u);
            return result;
          }

          v25 = *(v4 + 72);
          v26 = *(v4 + 56);
          v27 = *v4;
          v28 = *(v4 + 16);
          v29 = *(v4 + 32);
          *v4 = *(v4 + 40);
          *(v4 + 16) = v26;
          *(v4 + 32) = v25;
          v4 -= 40;
          *v7 = v27;
          *(v7 + 16) = v28;
          *(v7 + 32) = v29;
          v6 = v35 + 1;
          if (v35 != -1)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      sub_1BF0CB11C(v12, v13, v37, v15, v36);
      result = sub_1BF0CB11C(v43, v42, v41, v40, v39);
LABEL_13:
      a3 = v33 + 1;
      v4 = v32 + 40;
      v5 = v31 - 1;
      if (v33 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1BF1247D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = sub_1BF17B86C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        result = v12[3];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF1248AC(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  v6 = MEMORY[0x1E69E7CC0];
  if (v5 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_158:
    v241 = *a1;
    if (!*a1)
    {
      goto LABEL_204;
    }

    v4 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_198:
      v4 = sub_1BF1751AC(v4);
    }

    v201 = (v4 + 16);
    for (i = *(v4 + 2); i >= 2; *v201 = i)
    {
      if (!*a3)
      {
        goto LABEL_201;
      }

      v203 = &v4[16 * i];
      v204 = *v203;
      v205 = &v201[2 * i];
      v206 = *(v205 + 1);
      sub_1BF125FE4((*a3 + 40 * *v203), (*a3 + 40 * *v205), *a3 + 40 * v206, v241);
      if (v213)
      {
        break;
      }

      if (v206 < v204)
      {
        goto LABEL_189;
      }

      if (i - 2 >= *v201)
      {
        goto LABEL_190;
      }

      *v203 = v204;
      *(v203 + 1) = v206;
      v207 = *v201 - i;
      if (*v201 < i)
      {
        goto LABEL_191;
      }

      i = *v201 - 1;
      sub_1BF1751C0(v205 + 16, v207, v205);
    }

LABEL_168:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v210 = v8;
    v9 = v7;
    v10 = v7 + 1;
    v217 = v7;
    if (v7 + 1 >= v5)
    {
      goto LABEL_29;
    }

    v11 = *a3;
    v12 = v7 + 1;
    v13 = *a3 + 40 * v10;
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    *&v246 = *v13;
    *(&v246 + 1) = v14;
    v247 = v15;
    v248 = v16;
    v249 = v17;
    v18 = v11 + 40 * v9;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = v9;
    v24 = *(v18 + 32);
    *&v242 = *v18;
    v19 = v242;
    *(&v242 + 1) = v20;
    v243 = v21;
    v244 = v22;
    v245 = v24;
    sub_1BF0CB03C(v246, v14, v15, v16, v17);
    sub_1BF0CB03C(v19, v20, v21, v22, v24);
    v225 = sub_1BF122F28(&v246, &v242);
    if (v213)
    {
      sub_1BF0CB11C(v242, *(&v242 + 1), v243, v244, v245);
      sub_1BF0CB11C(v246, *(&v246 + 1), v247, v248, v249);
      goto LABEL_168;
    }

    sub_1BF0CB11C(v242, *(&v242 + 1), v243, v244, v245);
    sub_1BF0CB11C(v246, *(&v246 + 1), v247, v248, v249);
    v222 = 40 * v23;
    v224 = v5;
    v25 = v11 + 40 * v23 + 56;
    v26 = (v23 + 2);
    v10 = v12;
    while (1)
    {
      v4 = v26;
      v214 = v10;
      if (v10 + 1 >= v5)
      {
        break;
      }

      v27 = *(v25 + 32);
      v28 = *(v25 + 40);
      v29 = *(v25 + 48);
      v30 = *(v25 + 56);
      v32 = *(v25 - 16);
      v31 = *(v25 - 8);
      v33 = *v25;
      v34 = *(v25 + 8);
      v35 = *(v25 + 16);
      *&v246 = *(v25 + 24);
      *(&v246 + 1) = v27;
      v247 = v28;
      v248 = v29;
      v249 = v30;
      v239 = v246;
      v241 = v26;
      v236 = v28;
      v237 = v27;
      v234 = v29;
      v232 = v30;
      sub_1BF0CB03C(v246, v27, v28, v29, v30);
      sub_1BF0CB03C(v32, v31, v33, v34, v35);
      sub_1BF12302C(&v252);
      v250 = v252;
      v36 = JSONPointer.rawValue.getter();
      v227 = v37;

      *&v242 = v32;
      *(&v242 + 1) = v31;
      v243 = v33;
      v244 = v34;
      v245 = v35;
      sub_1BF12302C(&v254);
      v38 = JSONPointer.rawValue.getter();
      v40 = v39;

      if (v36 == v38 && v227 == v40)
      {
        v42 = 0;
      }

      else
      {
        v42 = sub_1BF17B86C();
      }

      v4 = v241;

      sub_1BF0CB11C(v32, v31, v33, v34, v35);
      sub_1BF0CB11C(v239, v237, v236, v234, v232);
      v25 += 40;
      v10 = v214 + 1;
      v26 = (v241 + 1);
      v5 = v224;
      if ((v225 ^ v42))
      {
        goto LABEL_16;
      }
    }

    v10 = v5;
LABEL_16:
    if (v225)
    {
      v9 = v217;
      v6 = MEMORY[0x1E69E7CC0];
      if (v10 < v217)
      {
        goto LABEL_197;
      }

      if (v217 < v10)
      {
        if (v5 >= v4)
        {
          v43 = v4;
        }

        else
        {
          v43 = v5;
        }

        v44 = 40 * v43 - 40;
        v45 = v10;
        v46 = v217;
        v47 = v222;
        do
        {
          if (v46 != --v45)
          {
            v48 = *a3;
            if (!*a3)
            {
              goto LABEL_202;
            }

            v49 = (v48 + v47);
            v50 = *(v48 + v47 + 32);
            v51 = (v48 + v44);
            v52 = *v49;
            v53 = v49[1];
            v54 = *(v51 + 4);
            v55 = v51[1];
            *v49 = *v51;
            v49[1] = v55;
            *(v49 + 4) = v54;
            *v51 = v52;
            v51[1] = v53;
            *(v51 + 32) = v50;
          }

          ++v46;
          v44 -= 40;
          v47 += 40;
        }

        while (v46 < v45);
      }
    }

    else
    {
      v9 = v217;
      v6 = MEMORY[0x1E69E7CC0];
    }

LABEL_29:
    v56 = a3[1];
    v57 = v10;
    if (v10 < v56)
    {
      break;
    }

LABEL_100:
    v59 = v57;
LABEL_101:
    if (v59 < v9)
    {
      goto LABEL_193;
    }

    v216 = v59;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v154 = v210;
    }

    else
    {
      v200 = *(v210 + 2);
      sub_1BF0A6798();
    }

    v155 = *(v154 + 2);
    v156 = v155 + 1;
    if (v155 >= *(v154 + 3) >> 1)
    {
      sub_1BF0A6798();
    }

    *(v154 + 2) = v156;
    v157 = v154 + 32;
    v158 = &v154[16 * v155 + 32];
    *v158 = v217;
    v158[1] = v216;
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_203;
    }

    v159 = v154;
    if (v155)
    {
      v160 = v154;
      while (1)
      {
        v161 = v156 - 1;
        v162 = &v157[2 * v156 - 2];
        v163 = &v160[16 * v156];
        if (v156 >= 4)
        {
          break;
        }

        if (v156 == 3)
        {
          v164 = *(v159 + 4);
          v165 = *(v159 + 5);
          v174 = __OFSUB__(v165, v164);
          v166 = v165 - v164;
          v167 = v174;
LABEL_122:
          if (v167)
          {
            goto LABEL_180;
          }

          v179 = *v163;
          v178 = *(v163 + 1);
          v180 = __OFSUB__(v178, v179);
          v181 = v178 - v179;
          v182 = v180;
          if (v180)
          {
            goto LABEL_183;
          }

          v183 = v162[1];
          v184 = v183 - *v162;
          if (__OFSUB__(v183, *v162))
          {
            goto LABEL_186;
          }

          if (__OFADD__(v181, v184))
          {
            goto LABEL_188;
          }

          if (v181 + v184 >= v166)
          {
            if (v166 < v184)
            {
              v161 = v156 - 2;
            }

            goto LABEL_144;
          }

          goto LABEL_137;
        }

        if (v156 < 2)
        {
          goto LABEL_182;
        }

        v186 = *v163;
        v185 = *(v163 + 1);
        v174 = __OFSUB__(v185, v186);
        v181 = v185 - v186;
        v182 = v174;
LABEL_137:
        if (v182)
        {
          goto LABEL_185;
        }

        v188 = *v162;
        v187 = v162[1];
        v174 = __OFSUB__(v187, v188);
        v189 = v187 - v188;
        if (v174)
        {
          goto LABEL_187;
        }

        if (v189 < v181)
        {
          goto LABEL_152;
        }

LABEL_144:
        if (v161 - 1 >= v156)
        {
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        if (!*a3)
        {
          goto LABEL_200;
        }

        v193 = &v157[2 * v161 - 2];
        v194 = *v193;
        v195 = &v157[2 * v161];
        v196 = v195[1];
        sub_1BF125FE4((*a3 + 40 * *v193), (*a3 + 40 * *v195), *a3 + 40 * v196, v4);
        if (v213)
        {
          goto LABEL_168;
        }

        if (v196 < v194)
        {
          goto LABEL_171;
        }

        v197 = *(v159 + 2);
        if (v161 > v197)
        {
          goto LABEL_172;
        }

        *v193 = v194;
        v193[1] = v196;
        if (v161 >= v197)
        {
          goto LABEL_173;
        }

        v156 = v197 - 1;
        v198 = (v195 + 2);
        v160 = v159;
        sub_1BF1751C0(v198, v197 - 1 - v161, &v157[2 * v161]);
        *(v159 + 2) = v197 - 1;
        v199 = v197 > 2;
        v6 = MEMORY[0x1E69E7CC0];
        if (!v199)
        {
          goto LABEL_153;
        }
      }

      v168 = &v157[2 * v156];
      v169 = *(v168 - 8);
      v170 = *(v168 - 7);
      v174 = __OFSUB__(v170, v169);
      v171 = v170 - v169;
      if (v174)
      {
        goto LABEL_178;
      }

      v173 = *(v168 - 6);
      v172 = *(v168 - 5);
      v174 = __OFSUB__(v172, v173);
      v166 = v172 - v173;
      v167 = v174;
      if (v174)
      {
        goto LABEL_179;
      }

      v175 = *(v163 + 1);
      v176 = v175 - *v163;
      if (__OFSUB__(v175, *v163))
      {
        goto LABEL_181;
      }

      v174 = __OFADD__(v166, v176);
      v177 = v166 + v176;
      if (v174)
      {
        goto LABEL_184;
      }

      if (v177 >= v171)
      {
        v191 = *v162;
        v190 = v162[1];
        v174 = __OFSUB__(v190, v191);
        v192 = v190 - v191;
        if (v174)
        {
          goto LABEL_192;
        }

        if (v166 < v192)
        {
          v161 = v156 - 2;
        }

        goto LABEL_144;
      }

      goto LABEL_122;
    }

LABEL_152:
    v160 = v159;
LABEL_153:
    v5 = a3[1];
    v7 = v216;
    v8 = v160;
    if (v216 >= v5)
    {
      goto LABEL_158;
    }
  }

  if (__OFSUB__(v10, v9))
  {
    goto LABEL_194;
  }

  if (v10 - v9 >= a4)
  {
    goto LABEL_37;
  }

  v58 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_195;
  }

  if (v58 >= v56)
  {
    v58 = a3[1];
  }

  if (v58 < v9)
  {
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  if (v10 == v58)
  {
LABEL_37:
    v59 = v10;
    goto LABEL_101;
  }

  v221 = *a3;
  v211 = v58;
LABEL_39:
  v215 = v10;
  v60 = v10;
  while (1)
  {
    v61 = (v221 + 40 * v60);
    v4 = *v61;
    v62 = *(v61 + 1);
    v63 = *(v61 + 2);
    v64 = *(v61 + 3);
    v65 = *(v61 - 5);
    v66 = *(v61 - 3);
    v240 = *(v61 - 2);
    v241 = *(v61 - 4);
    v67 = *(v61 - 8);
    v238 = v67;
    v219 = v61;
    v220 = v60 - 1;
    v229 = *(v61 + 32);
    v230 = *v61;
    v218 = (v61 - 40);
    switch(v229)
    {
      case 1:
        sub_1BF0CB03C(v65, v241, v66, v240, v67);
        v68 = v4;
        v69 = v62;
        v70 = v63;
        v71 = v64;
        v72 = 1;
        goto LABEL_52;
      case 2:
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF0CB03C(v65, v241, v66, v240, v67);
        v78 = v4;
        v79 = v62;
        v80 = v63;
        v81 = v64;
        v82 = 2;
        goto LABEL_46;
      case 3:
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF0CB03C(v65, v241, v66, v240, v67);
        v78 = v4;
        v79 = v62;
        v80 = v63;
        v81 = v64;
        v82 = 3;
LABEL_46:
        sub_1BF0CB03C(v78, v79, v80, v81, v82);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BF0A6578(0, *(v62 + 16) + 1, 1, v62);
          v84 = v146;
        }

        v86 = *(v84 + 16);
        v85 = *(v84 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_1BF0A6578(v85 > 1, v86 + 1, 1, v84);
          v84 = v147;
        }

        *(v84 + 16) = v86 + 1;
        v87 = v84 + 16 * v86;
        *(v87 + 32) = v63;
        *(v87 + 40) = v64;
        goto LABEL_60;
      case 4:
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_174;
        }

        *&v246 = *(v61 + 2);
        sub_1BF0CB03C(v65, v241, v66, v240, v67);
        v73 = v4;
        v74 = v62;
        v75 = v63;
        v76 = v64;
        v77 = 4;
        goto LABEL_55;
      case 5:
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        *&v246 = *(v61 + 2);
        sub_1BF0CB03C(v65, v241, v66, v240, v67);
        v73 = v4;
        v74 = v62;
        v75 = v63;
        v76 = v64;
        v77 = 5;
LABEL_55:
        sub_1BF0CB03C(v73, v74, v75, v76, v77);
        v89 = sub_1BF17B6FC();
        v91 = v90;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v84 = v62;
        if ((v92 & 1) == 0)
        {
          sub_1BF0A6578(0, *(v62 + 16) + 1, 1, v62);
          v84 = v150;
        }

        v94 = *(v84 + 16);
        v93 = *(v84 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_1BF0A6578(v93 > 1, v94 + 1, 1, v84);
          v84 = v151;
        }

        *(v84 + 16) = v94 + 1;
        v95 = v84 + 16 * v94;
        *(v95 + 32) = v89;
        *(v95 + 40) = v91;
LABEL_60:
        v88 = v84;

        break;
      default:
        sub_1BF0CB03C(v65, v241, v66, v240, v67);
        v68 = v4;
        v69 = v62;
        v70 = v63;
        v71 = v64;
        v72 = 0;
LABEL_52:
        sub_1BF0CB03C(v68, v69, v70, v71, v72);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v88 = v4;
        break;
    }

    v226 = v62;
    v96 = *(v88 + 16);
    v233 = v63;
    v235 = v65;
    v231 = v64;
    if (v96)
    {
      *&v246 = 47;
      *(&v246 + 1) = 0xE100000000000000;
      v254 = v6;
      sub_1BF00DD60();
      v4 = v254;
      sub_1BF013170();
      v97 = (v88 + 40);
      do
      {
        v98 = *v97;
        *&v242 = *(v97 - 1);
        *(&v242 + 1) = v98;
        v252 = 126;
        v253 = 0xE100000000000000;
        v250 = 12414;
        v251 = 0xE200000000000000;
        *&v242 = sub_1BF17AF5C();
        *(&v242 + 1) = v99;
        v252 = 47;
        v253 = 0xE100000000000000;
        v250 = 12670;
        v251 = 0xE200000000000000;
        v100 = sub_1BF17AF5C();
        v102 = v101;

        v254 = v4;
        v103 = *(v4 + 2);
        if (v103 >= *(v4 + 3) >> 1)
        {
          sub_1BF00DD60();
          v4 = v254;
        }

        *(v4 + 2) = v103 + 1;
        v104 = &v4[16 * v103];
        *(v104 + 4) = v100;
        *(v104 + 5) = v102;
        v97 += 2;
        --v96;
      }

      while (v96);
      v6 = MEMORY[0x1E69E7CC0];
      v63 = v233;
      v65 = v235;
    }

    else
    {
      *&v246 = 0;
      *(&v246 + 1) = 0xE000000000000000;
      v4 = v6;
    }

    *&v242 = v4;
    v105 = MEMORY[0x1E69E6158];
    sub_1BF126628(0, &qword_1ED8EE9D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1BF123DDC(&qword_1ED8EE9C0, &qword_1ED8EE9D0, v105);
    v106 = sub_1BF179F7C();
    v108 = v107;

    MEMORY[0x1BFB52000](v106, v108);

    v109 = *(&v246 + 1);
    v228 = v246;
    switch(v238)
    {
      case 2:
      case 3:
        swift_bridgeObjectRetain_n();
        v111 = v241;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF0A6578(0, *(v241 + 16) + 1, 1, v241);
          v111 = v148;
        }

        v112 = v111;
        v113 = *(v111 + 16);
        v114 = v112;
        v115 = *(v112 + 24);
        if (v113 >= v115 >> 1)
        {
          sub_1BF0A6578(v115 > 1, v113 + 1, 1, v114);
          v114 = v149;
        }

        *(v114 + 16) = v113 + 1;
        v116 = v114 + 16 * v113;
        v110 = v114;
        *(v116 + 32) = v66;
        *(v116 + 40) = v240;

        break;
      case 4:
        v117 = v66;
        if ((v66 & 0x8000000000000000) != 0)
        {
          goto LABEL_176;
        }

        goto LABEL_78;
      case 5:
        v117 = v66;
        if ((v66 & 0x8000000000000000) != 0)
        {
          goto LABEL_177;
        }

LABEL_78:
        *&v246 = v117;
        v118 = sub_1BF17B6FC();
        v120 = v119;
        v121 = v241;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BF0A6578(0, *(v241 + 16) + 1, 1, v241);
          v121 = v152;
        }

        v122 = v121;
        v123 = *(v121 + 16);
        v124 = v122;
        v125 = *(v122 + 24);
        if (v123 >= v125 >> 1)
        {
          sub_1BF0A6578(v125 > 1, v123 + 1, 1, v124);
          v124 = v153;
        }

        *(v124 + 16) = v123 + 1;
        v126 = v124 + 16 * v123;
        v110 = v124;
        *(v126 + 32) = v118;
        *(v126 + 40) = v120;

        break;
      default:
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v110 = v65;
        break;
    }

    v223 = v109;
    v127 = *(v110 + 16);
    if (v127)
    {
      *&v246 = 47;
      *(&v246 + 1) = 0xE100000000000000;
      v254 = v6;
      sub_1BF00DD60();
      v128 = v254;
      sub_1BF013170();
      v129 = (v110 + 40);
      do
      {
        v130 = *v129;
        *&v242 = *(v129 - 1);
        *(&v242 + 1) = v130;
        v252 = 126;
        v253 = 0xE100000000000000;
        v250 = 12414;
        v251 = 0xE200000000000000;
        *&v242 = sub_1BF17AF5C();
        *(&v242 + 1) = v131;
        v252 = 47;
        v253 = 0xE100000000000000;
        v250 = 12670;
        v251 = 0xE200000000000000;
        v132 = sub_1BF17AF5C();
        v134 = v133;

        v254 = v128;
        v135 = *(v128 + 16);
        if (v135 >= *(v128 + 24) >> 1)
        {
          sub_1BF00DD60();
          v128 = v254;
        }

        *(v128 + 16) = v135 + 1;
        v136 = v128 + 16 * v135;
        *(v136 + 32) = v132;
        *(v136 + 40) = v134;
        v129 += 2;
        --v127;
      }

      while (v127);
      v6 = MEMORY[0x1E69E7CC0];
      v64 = v231;
      v63 = v233;
    }

    else
    {
      *&v246 = 0;
      *(&v246 + 1) = 0xE000000000000000;
      v128 = v6;
    }

    *&v242 = v128;
    v137 = sub_1BF179F7C();
    v139 = v138;

    MEMORY[0x1BFB52000](v137, v139);

    v4 = *(&v246 + 1);
    if (v228 == v246 && v223 == *(&v246 + 1))
    {

      sub_1BF0CB11C(v235, v241, v66, v240, v238);
      sub_1BF0CB11C(v230, v226, v63, v64, v229);
      v9 = v217;
LABEL_99:
      v10 = v215 + 1;
      v57 = v211;
      if (v215 + 1 == v211)
      {
        goto LABEL_100;
      }

      goto LABEL_39;
    }

    v141 = sub_1BF17B86C();

    sub_1BF0CB11C(v235, v241, v66, v240, v238);
    sub_1BF0CB11C(v230, v226, v63, v64, v229);
    v9 = v217;
    if ((v141 & 1) == 0)
    {
      goto LABEL_99;
    }

    if (!v221)
    {
      break;
    }

    v142 = *(v219 + 32);
    v143 = *v219;
    v144 = v219[1];
    v145 = v218[1];
    *v219 = *v218;
    v219[1] = v145;
    *(v219 + 4) = *(v218 + 4);
    *v218 = v143;
    v218[1] = v144;
    *(v218 + 32) = v142;
    v60 = v220;
    if (v220 == v217)
    {
      goto LABEL_99;
    }
  }

  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
}

void sub_1BF12595C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1BF17B86C();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1BF17B86C()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = *(v25 + 2);
              v29 = *v26;
              *v25 = *(v26 - 1);
              *(v25 + 2) = v29;
              *(v26 - 1) = v27;
              *v26 = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == v39[1];
                if (v40 || (sub_1BF17B86C() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v37 = v39[4];
                v41 = v39[5];
                v42 = v39[2];
                v36 = v39[3];
                *(v39 + 3) = *v39;
                v39[5] = v42;
                *v39 = v36;
                v39[1] = v37;
                v39[2] = v41;
                v39 -= 3;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_1BF0A6798();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1BF0A6798();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v93 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1BF126460((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v93;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1BF125EAC(&v97, *a1, a3);
LABEL_103:
}

uint64_t sub_1BF125EAC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1BF1751AC(v15);
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
    sub_1BF126460((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
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

uint64_t sub_1BF125FE4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1BF0A6F2C(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    v78 = v5;
    v80 = v10;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v82 = v7;
      v84 = v4;
      v12 = *v6;
      v13 = *(v6 + 1);
      v14 = *(v6 + 2);
      v15 = *(v6 + 3);
      v86 = v6;
      v16 = v6[32];
      v17 = *v4;
      v18 = *(v4 + 1);
      v19 = *(v4 + 2);
      v20 = *(v4 + 3);
      v21 = v4[32];
      v95 = v12;
      v96 = v13;
      v97 = v14;
      v98 = v15;
      v99 = v16;
      v74 = v13;
      v76 = v12;
      v70 = v15;
      v72 = v14;
      v68 = v16;
      sub_1BF0CB03C(v12, v13, v14, v15, v16);
      sub_1BF0CB03C(v17, v18, v19, v20, v21);
      sub_1BF12302C(&v100);
      v94 = v100;
      v22 = JSONPointer.rawValue.getter();
      v24 = v23;

      v89 = v17;
      v90 = v18;
      v66 = v19;
      v91 = v19;
      v92 = v20;
      v93 = v21;
      sub_1BF12302C(&v88);
      v25 = JSONPointer.rawValue.getter();
      v27 = v26;

      if (v22 == v25 && v24 == v27)
      {

        sub_1BF0CB11C(v17, v18, v19, v20, v21);
        sub_1BF0CB11C(v76, v74, v72, v70, v68);
      }

      else
      {
        v29 = sub_1BF17B86C();

        sub_1BF0CB11C(v17, v18, v66, v20, v21);
        sub_1BF0CB11C(v76, v74, v72, v70, v68);
        if (v29)
        {
          v4 = v84;
          v30 = v86;
          v6 = v86 + 40;
          v31 = v82;
          v32 = v82 == v86;
          goto LABEL_15;
        }
      }

      v31 = v82;
      v30 = v84;
      v4 = v84 + 40;
      v32 = v82 == v84;
      v6 = v86;
LABEL_15:
      v5 = v78;
      v10 = v80;
      if (!v32)
      {
        v33 = *v30;
        v34 = *(v30 + 1);
        *(v31 + 4) = *(v30 + 4);
        *v31 = v33;
        *(v31 + 1) = v34;
      }

      v7 = v31 + 40;
    }
  }

  sub_1BF0A6F2C(a2, (a3 - a2) / 40, a4);
  v63 = &v4[40 * v9];
  v83 = v7;
  v85 = v4;
LABEL_19:
  v35 = 0;
  v62 = v6 - 40;
  v87 = v6;
  v79 = v5;
  while (1)
  {
    v10 = &v63[v35];
    if (&v63[v35] <= v4 || v6 <= v7)
    {
      break;
    }

    v81 = &v63[v35];
    v37 = *(v10 - 4);
    v38 = v10 - 40;
    v39 = *(v10 - 3);
    v40 = *(v10 - 2);
    v41 = *(v10 - 8);
    v43 = *(v6 - 5);
    v42 = *(v6 - 4);
    v44 = *(v6 - 3);
    v45 = *(v6 - 2);
    v46 = *(v6 - 8);
    v95 = *(v10 - 5);
    v96 = v37;
    v97 = v39;
    v98 = v40;
    v99 = v41;
    v75 = v95;
    v77 = v35;
    v71 = v39;
    v73 = v37;
    v69 = v40;
    v67 = v41;
    sub_1BF0CB03C(v95, v37, v39, v40, v41);
    sub_1BF0CB03C(v43, v42, v44, v45, v46);
    sub_1BF12302C(&v100);
    v94 = v100;
    v47 = JSONPointer.rawValue.getter();
    v64 = v48;

    v89 = v43;
    v90 = v42;
    v65 = v42;
    v91 = v44;
    v92 = v45;
    v93 = v46;
    sub_1BF12302C(&v88);
    v49 = JSONPointer.rawValue.getter();
    v51 = v50;

    if (v47 == v49 && v64 == v51)
    {
      v53 = 0;
    }

    else
    {
      v53 = sub_1BF17B86C();
    }

    v54 = (v79 + v77 - 40);
    sub_1BF0CB11C(v43, v65, v44, v45, v46);
    sub_1BF0CB11C(v75, v73, v71, v69, v67);
    if (v53)
    {
      v63 += v77;
      v5 = v79 + v77 - 40;
      v6 = v62;
      v7 = v83;
      v4 = v85;
      if ((v79 + v77) != v87)
      {
        v57 = *v62;
        v58 = *(v62 + 1);
        *(v79 + v77 - 8) = *(v62 + 4);
        *v54 = v57;
        *(v79 + v77 - 24) = v58;
        v6 = v62;
        v5 = v79 + v77 - 40;
      }

      goto LABEL_19;
    }

    v6 = v87;
    if (v81 != (v79 + v77))
    {
      v55 = *v38;
      v56 = *(v38 + 1);
      *(v79 + v77 - 8) = *(v38 + 4);
      *v54 = v55;
      *(v79 + v77 - 24) = v56;
    }

    v35 = v77 - 40;
    v7 = v83;
    v4 = v85;
  }

LABEL_38:
  v59 = 40 * ((v10 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v59])
  {
    memmove(v6, v4, v59);
  }

  return 1;
}

uint64_t sub_1BF126460(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1BF0A6F50(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1BF17B86C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1BF0A6F50(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1BF17B86C() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

void sub_1BF126628(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t *combine<A, B, C, D>(_:_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  swift_allocObject();
  OUTLINED_FUNCTION_116_1();
  v13[2] = *(v12 + 80);
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;

  v17 = *(v9 + 80);
  v18 = *(v10 + 80);
  v19 = *(v11 + 80);
  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v15 = OUTLINED_FUNCTION_160(TupleTypeMetadata);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_155();

  return a1;
}

uint64_t sub_1BF1267B8(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v8 = *a2;
  v27 = *a3;
  v28 = *a4;
  v29 = a2;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  v13 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a5;
  v15 = *(v8 + 80);
  v16 = v27;
  *(v14 + 3) = v15;
  v17 = *(v16 + 80);
  v18 = v28;
  *(v14 + 4) = v17;
  v19 = a4;
  v26 = a4;
  v20 = *(v18 + 80);
  *(v14 + 5) = v20;
  *(v14 + 6) = a3;
  *(v14 + 7) = v19;
  (*(v9 + 32))(&v14[v13], &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5);

  v30 = a5;
  v31 = v15;
  v32 = v17;
  v33 = v20;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v22 = sub_1BF014EDC(v15, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v24 = v23;

  return v24;
}

uint64_t sub_1BF1269EC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a1;
  v39 = a2;
  v40 = *a2;
  v41 = a3;
  v42 = *a3;
  v8 = *(a6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v15, v16);
  v17 = *(v8 + 16);
  v18 = a6;
  v36 = a6;
  v17(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v38, a6);
  v19 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v20 = (v13 + *(v8 + 80) + v19) & ~*(v8 + 80);
  v21 = swift_allocObject();
  v22 = v40;
  v23 = a5;
  *(v21 + 2) = a5;
  *(v21 + 3) = v18;
  v24 = *(v22 + 80);
  *(v21 + 4) = v24;
  v25 = v41;
  v26 = *(v42 + 80);
  *(v21 + 5) = v26;
  *(v21 + 6) = v25;
  v27 = &v21[v19];
  v28 = v23;
  (*(v12 + 32))(v27, v14);
  v29 = v36;
  (*(v8 + 32))(&v21[v20], v37, v36);

  v43 = v28;
  v44 = v29;
  v45 = v24;
  v46 = v26;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v31 = sub_1BF014EDC(v24, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v33 = v32;

  return v33;
}

uint64_t sub_1BF126C98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a7;
  v43 = a1;
  v38 = a5;
  v50 = a2;
  v45 = *a2;
  v9 = *(a7 - 8);
  v44 = *(v9 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v12;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v40 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v39 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))();
  v20 = a4;
  v21 = a6;
  (*(v14 + 16))(&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v20, a6);
  v37 = v9;
  v22 = v42;
  (*(v9 + 16))(v12, v43, v42);
  v23 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v24 = (v19 + *(v14 + 80) + v23) & ~*(v14 + 80);
  v25 = (v15 + *(v9 + 80) + v24) & ~*(v9 + 80);
  v26 = swift_allocObject();
  v28 = v38;
  v27 = v39;
  *(v26 + 2) = v38;
  *(v26 + 3) = v21;
  *(v26 + 4) = v22;
  v29 = *(v45 + 80);
  *(v26 + 5) = v29;
  v30 = &v26[v23];
  v31 = v28;
  (*(v18 + 32))(v30, v27);
  (*(v14 + 32))(&v26[v24], v40, v21);
  (*(v37 + 32))(&v26[v25], v41, v22);
  v46 = v31;
  v47 = v21;
  v48 = v22;
  v49 = v29;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v33 = sub_1BF014EDC(v29, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v35 = v34;

  return v35;
}

uint64_t sub_1BF126FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v16 = TupleTypeMetadata[12];
  v17 = TupleTypeMetadata[16];
  v18 = TupleTypeMetadata[20];
  (*(*(a5 - 8) + 16))(a9, a2, a5);
  (*(*(a6 - 8) + 16))(a9 + v16, a3, a6);
  (*(*(a7 - 8) + 16))(a9 + v17, a4, a7);
  return (*(*(a8 - 8) + 16))(a9 + v18, a1, a8);
}

void combine<A, B, C, D, E>(_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_97_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *v8;
  v10 = *v6;
  v11 = *v4;
  v12 = *v2;
  v17 = *v0;
  v13 = swift_allocObject();
  v14 = *(v9 + 80);
  v13[2] = v14;
  v13[3] = v7;
  v13[4] = v5;
  v13[5] = v3;
  v13[6] = v1;

  v18 = *(v10 + 80);
  v19 = *(v11 + 80);
  v20 = *(v12 + 80);
  v21 = *(v17 + 80);
  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v16 = sub_1BF014EDC(v14, TupleTypeMetadata);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_96();
}

uint64_t sub_1BF1272B0(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6)
{
  v10 = *a3;
  v32 = *a2;
  v33 = v10;
  v34 = *a4;
  v35 = *a5;
  v36 = a2;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v13);
  v15 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v17 = v32;
  *(v16 + 2) = a6;
  v32 = *(v17 + 80);
  v18 = v33;
  *(v16 + 3) = v32;
  v33 = *(v18 + 80);
  v19 = v34;
  *(v16 + 4) = v33;
  v20 = a4;
  v21 = *(v19 + 80);
  v22 = v35;
  *(v16 + 5) = v21;
  v23 = a5;
  v31[1] = a5;
  v24 = *(v22 + 80);
  *(v16 + 6) = v24;
  *(v16 + 7) = a3;
  *(v16 + 8) = v20;
  *(v16 + 9) = v23;
  (*(v11 + 32))(&v16[v15], v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a6);

  v25 = v32;
  v37 = a6;
  v38 = v32;
  v39 = v33;
  v40 = v21;
  v41 = v24;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v27 = sub_1BF014EDC(v25, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v29 = v28;

  return v29;
}

uint64_t sub_1BF127528(unint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a3;
  v48 = a4;
  v37 = a1;
  v38 = a2;
  v9 = *a3;
  v39 = *a2;
  v40 = v9;
  v41 = *a4;
  v10 = *(a7 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v17, v18);
  (*(v10 + 16))(&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v37, a7);
  v19 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v37 = (v15 + *(v10 + 80) + v19) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v21 = v39;
  v22 = a6;
  *(v20 + 2) = a6;
  *(v20 + 3) = a7;
  v23 = *(v21 + 80);
  *(v20 + 4) = v23;
  v24 = v42;
  v25 = *(v40 + 80);
  *(v20 + 5) = v25;
  v26 = v48;
  v27 = *(v41 + 80);
  *(v20 + 6) = v27;
  *(v20 + 7) = v24;
  *(v20 + 8) = v26;
  v28 = v16;
  v29 = v22;
  (*(v14 + 32))(&v20[v19], v28);
  (*(v10 + 32))(&v20[v37], v36, a7);

  v43 = v29;
  v44 = a7;
  v45 = v23;
  v46 = v25;
  v47 = v27;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v31 = sub_1BF014EDC(v23, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v33 = v32;

  return v33;
}

uint64_t sub_1BF127808(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a3;
  v45 = a5;
  v46 = a8;
  v56 = a2;
  v9 = *a2;
  v47 = a1;
  v48 = v9;
  v49 = *a3;
  v10 = *(a8 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))();
  v20 = a7;
  (*(v14 + 16))(&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v45, a7);
  v40 = v10;
  v21 = v46;
  (*(v10 + 16))(&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v46);
  v22 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v23 = (v19 + *(v14 + 80) + v22) & ~*(v14 + 80);
  v47 = (v15 + *(v10 + 80) + v23) & ~*(v10 + 80);
  v24 = swift_allocObject();
  v25 = v48;
  v27 = v41;
  v26 = v42;
  *(v24 + 2) = v41;
  *(v24 + 3) = v20;
  v28 = v20;
  *(v24 + 4) = v21;
  v29 = *(v25 + 80);
  *(v24 + 5) = v29;
  v30 = v50;
  v31 = *(v49 + 80);
  *(v24 + 6) = v31;
  *(v24 + 7) = v30;
  v32 = &v24[v22];
  v33 = v27;
  (*(v18 + 32))(v32, v26);
  (*(v14 + 32))(&v24[v23], v43, v28);
  (*(v40 + 32))(&v24[v47], v44, v21);

  v51 = v33;
  v52 = v28;
  v53 = v21;
  v54 = v29;
  v55 = v31;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v35 = sub_1BF014EDC(v29, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v37 = v36;

  return v37;
}

uint64_t sub_1BF127B90(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a4;
  v53 = a5;
  v65 = a2;
  v54 = a9;
  v55 = a1;
  v11 = *a2;
  v58 = *(a9 - 8);
  v56 = *(v58 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v59 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v14;
  v15 = *(v14 - 8);
  v51 = *(v15 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v18;
  v46 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v16);
  v49 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v48 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))();
  v43 = v20;
  (*(v20 + 16))(&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v52, a7);
  v45 = v15;
  (*(v15 + 16))(v18, v53, a8);
  v26 = v58;
  v27 = v54;
  (*(v58 + 16))(v59, v55, v54);
  v28 = (*(v24 + 80) + 56) & ~*(v24 + 80);
  v29 = (v25 + *(v20 + 80) + v28) & ~*(v20 + 80);
  v30 = (v21 + *(v15 + 80) + v29) & ~*(v15 + 80);
  v55 = (v51 + *(v26 + 80) + v30) & ~*(v26 + 80);
  v31 = swift_allocObject();
  v33 = v46;
  v32 = v47;
  *(v31 + 2) = v47;
  *(v31 + 3) = v33;
  v34 = v44;
  *(v31 + 4) = v44;
  *(v31 + 5) = v27;
  v35 = *(v57 + 80);
  *(v31 + 6) = v35;
  v36 = &v31[v28];
  v37 = v32;
  (*(v24 + 32))(v36, v48);
  (*(v43 + 32))(&v31[v29], v49, v33);
  (*(v45 + 32))(&v31[v30], v50, v34);
  (*(v58 + 32))(&v31[v55], v59, v27);
  v60 = v37;
  v61 = v33;
  v62 = v34;
  v63 = v27;
  v64 = v35;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v39 = sub_1BF014EDC(v35, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v41 = v40;

  return v41;
}

uint64_t sub_1BF127FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v17 = TupleTypeMetadata[12];
  v18 = TupleTypeMetadata[16];
  v20 = TupleTypeMetadata[20];
  v22 = TupleTypeMetadata[24];
  (*(*(a6 - 8) + 16))(a9, a2, a6);
  (*(*(a7 - 8) + 16))(a9 + v17, a3, a7);
  (*(*(a8 - 8) + 16))(a9 + v18, a4, a8);
  (*(*(a10 - 8) + 16))(a9 + v20, a5, a10);
  return (*(*(a11 - 8) + 16))(a9 + v22, a1, a11);
}

void combine<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_53();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = *v12;
  v14 = *v10;
  v19 = *v8;
  v20 = *v6;
  v21 = *v4;
  v22 = *v2;
  v23 = *v0;
  swift_allocObject();
  OUTLINED_FUNCTION_116_1();
  v16[2] = *(v15 + 80);
  v16[3] = v11;
  v16[4] = v9;
  v16[5] = v7;
  v16[6] = v5;
  v16[7] = v3;
  v16[8] = v1;

  v24 = *(v14 + 80);
  v25 = *(v19 + 80);
  v26 = *(v20 + 80);
  v27 = *(v21 + 80);
  v28 = *(v22 + 80);
  v29 = *(v23 + 80);
  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v18 = OUTLINED_FUNCTION_160(TupleTypeMetadata);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1BF128348(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7, uint64_t a8)
{
  v42 = a6;
  v50 = a7;
  v11 = *a2;
  v35 = *a3;
  v36 = *a4;
  v37 = v11;
  v13 = *a6;
  v38 = *a5;
  v39 = v13;
  v40 = *a7;
  v41 = a2;
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v16);
  v18 = (*(v14 + 80) + 112) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v37;
  *(v19 + 2) = a8;
  v37 = *(v20 + 80);
  v21 = v35;
  *(v19 + 3) = v37;
  v35 = *(v21 + 80);
  v22 = v36;
  *(v19 + 4) = v35;
  v36 = *(v22 + 80);
  v23 = v38;
  *(v19 + 5) = v36;
  v38 = *(v23 + 80);
  v24 = v39;
  *(v19 + 6) = v38;
  v25 = v42;
  v39 = *(v24 + 80);
  v26 = v40;
  *(v19 + 7) = v39;
  v27 = v50;
  v28 = *(v26 + 80);
  *(v19 + 8) = v28;
  *(v19 + 9) = a3;
  *(v19 + 10) = a4;
  *(v19 + 11) = a5;
  *(v19 + 12) = v25;
  *(v19 + 13) = v27;
  (*(v14 + 32))(&v19[v18], &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a8);

  v29 = v37;
  v43 = a8;
  v44 = v37;
  v45 = v35;
  v46 = v36;
  v47 = v38;
  v48 = v39;
  v49 = v28;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v31 = sub_1BF014EDC(v29, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v33 = v32;

  return v33;
}

uint64_t sub_1BF128638(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a5;
  v56 = a6;
  v38 = a1;
  v40 = *a2;
  v41 = a3;
  v42 = *a3;
  v43 = a4;
  v44 = *a4;
  v45 = a2;
  v10 = *a6;
  v46 = *a5;
  v47 = v10;
  v11 = *(a9 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v18, v19);
  (*(v11 + 16))(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v38, a9);
  v20 = (*(v15 + 80) + 104) & ~*(v15 + 80);
  v38 = (v16 + v20 + *(v11 + 80)) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v22 = v40;
  v23 = a8;
  *(v21 + 2) = a8;
  *(v21 + 3) = a9;
  v40 = *(v22 + 80);
  *(v21 + 4) = v40;
  v24 = v41;
  v42 = *(v42 + 80);
  *(v21 + 5) = v42;
  v25 = v43;
  v44 = *(v44 + 80);
  *(v21 + 6) = v44;
  v26 = v48;
  v46 = *(v46 + 80);
  *(v21 + 7) = v46;
  v27 = v56;
  v28 = *(v47 + 80);
  *(v21 + 8) = v28;
  *(v21 + 9) = v24;
  *(v21 + 10) = v25;
  *(v21 + 11) = v26;
  *(v21 + 12) = v27;
  v29 = v17;
  v30 = v23;
  (*(v15 + 32))(&v21[v20], v29);
  (*(v11 + 32))(&v21[v38], v39, a9);

  v49 = v30;
  v50 = a9;
  v31 = v40;
  v51 = v40;
  v52 = v42;
  v53 = v44;
  v54 = v46;
  v55 = v28;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v33 = sub_1BF014EDC(v31, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v35 = v34;

  return v35;
}

uint64_t sub_1BF128990(unint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a7;
  v50 = a1;
  v57 = a4;
  v58 = a5;
  v66 = a2;
  v48 = a10;
  v10 = *a3;
  v51 = *a2;
  v52 = v10;
  v53 = *a4;
  v11 = *a5;
  v55 = *(a10 - 8);
  v56 = a3;
  v12 = *(v55 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a9 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v46 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))();
  v20 = *(v14 + 16);
  v43 = a9;
  v20(&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v49, a9);
  v21 = v55;
  v22 = v48;
  (*(v55 + 16))(&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v48);
  v23 = (*(v18 + 80) + 96) & ~*(v18 + 80);
  v24 = (v19 + v23 + *(v14 + 80)) & ~*(v14 + 80);
  v50 = (v15 + *(v21 + 80) + v24) & ~*(v21 + 80);
  v25 = swift_allocObject();
  v26 = v51;
  v27 = v44;
  *(v25 + 2) = v44;
  *(v25 + 3) = a9;
  *(v25 + 4) = v22;
  v28 = *(v26 + 80);
  *(v25 + 5) = v28;
  v30 = v56;
  v29 = v57;
  v52 = *(v52 + 80);
  *(v25 + 6) = v52;
  v31 = *(v53 + 80);
  *(v25 + 7) = v31;
  v32 = v58;
  v33 = *(v54 + 80);
  *(v25 + 8) = v33;
  *(v25 + 9) = v30;
  *(v25 + 10) = v29;
  *(v25 + 11) = v32;
  v34 = &v25[v23];
  v35 = v27;
  (*(v18 + 32))(v34, v45);
  v36 = v43;
  (*(v14 + 32))(&v25[v24], v46, v43);
  (*(v55 + 32))(&v25[v50], v47, v22);

  v59 = v35;
  v60 = v36;
  v61 = v22;
  v62 = v28;
  v63 = v52;
  v64 = v31;
  v65 = v33;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v38 = sub_1BF014EDC(v28, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v40 = v39;

  return v40;
}

uint64_t sub_1BF128DA0(unint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60 = a6;
  v61 = a7;
  v70 = a3;
  v71 = a4;
  v79 = a2;
  v62 = a1;
  v69 = a11;
  v11 = *a3;
  v64 = *a2;
  v65 = v11;
  v12 = *a4;
  v68 = *(a11 - 8);
  v63 = *(v68 + 64);
  v67 = a10;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v15;
  v17 = *(v16 - 8);
  v59 = *(v17 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v20;
  v52 = a9;
  v21 = *(a9 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v18);
  v56 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v55 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))();
  v51 = v21;
  (*(v21 + 16))(&v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v60, a9);
  v53 = v17;
  v27 = v20;
  v28 = v67;
  (*(v17 + 16))(v27, v61, v67);
  v29 = v68;
  v30 = v69;
  (*(v68 + 16))(v15, v62, v69);
  v31 = (*(v25 + 80) + 88) & ~*(v25 + 80);
  v32 = (v26 + v31 + *(v21 + 80)) & ~*(v21 + 80);
  v33 = (v59 + *(v29 + 80) + ((v22 + *(v17 + 80) + v32) & ~*(v17 + 80))) & ~*(v29 + 80);
  v61 = (v22 + *(v17 + 80) + v32) & ~*(v17 + 80);
  v62 = v33;
  v34 = swift_allocObject();
  v35 = v64;
  v36 = v54;
  v37 = v52;
  *(v34 + 2) = v54;
  *(v34 + 3) = v37;
  *(v34 + 4) = v28;
  *(v34 + 5) = v30;
  v38 = *(v35 + 80);
  *(v34 + 6) = v38;
  v40 = v70;
  v39 = v71;
  v41 = *(v65 + 80);
  *(v34 + 7) = v41;
  v42 = *(v66 + 80);
  *(v34 + 8) = v42;
  *(v34 + 9) = v40;
  *(v34 + 10) = v39;
  v43 = v36;
  (*(v25 + 32))(&v34[v31], v55);
  (*(v51 + 32))(&v34[v32], v56, v37);
  v44 = v67;
  (*(v53 + 32))(&v34[v61], v57, v67);
  v45 = v69;
  (*(v68 + 32))(&v34[v62], v58, v69);

  v72 = v43;
  v73 = v37;
  v74 = v44;
  v75 = v45;
  v76 = v38;
  v77 = v41;
  v78 = v42;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v47 = sub_1BF014EDC(v38, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v49 = v48;

  return v49;
}

uint64_t sub_1BF129294(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v65 = a7;
  v63 = a6;
  v61 = a5;
  v75 = a3;
  v83 = a2;
  v66 = a1;
  v71 = a11;
  v64 = a12;
  v12 = *a3;
  v68 = *a2;
  v69 = v12;
  v73 = *(a12 - 8);
  v67 = *(v73 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v74 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(v15 - 8);
  v62 = *(v70 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v72 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a10;
  v18 = *(a10 - 8);
  v60 = *(v18 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v21;
  v55 = a9;
  v22 = *(a9 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v58 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))();
  v52 = v22;
  (*(v22 + 16))(&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v61, a9);
  v53 = v18;
  (*(v18 + 16))(v21, v63, a10);
  v29 = v70;
  v28 = v71;
  (*(v70 + 16))(v72, v65, v71);
  v30 = v73;
  v31 = v64;
  (*(v73 + 16))(v74, v66, v64);
  v32 = *(v22 + 80);
  v33 = (*(v26 + 80) + 80) & ~*(v26 + 80);
  v34 = (v27 + v33 + v32) & ~v32;
  v63 = (v23 + *(v18 + 80) + v34) & ~*(v18 + 80);
  v66 = (v60 + *(v29 + 80) + v63) & ~*(v29 + 80);
  v65 = (v62 + *(v30 + 80) + v66) & ~*(v30 + 80);
  v35 = swift_allocObject();
  v36 = v68;
  v37 = v56;
  v38 = v55;
  *(v35 + 2) = v56;
  *(v35 + 3) = v38;
  v39 = v54;
  *(v35 + 4) = v54;
  *(v35 + 5) = v28;
  *(v35 + 6) = v31;
  v40 = *(v36 + 80);
  *(v35 + 7) = v40;
  v41 = v75;
  v42 = *(v69 + 80);
  *(v35 + 8) = v42;
  *(v35 + 9) = v41;
  v43 = &v35[v33];
  v44 = v37;
  (*(v26 + 32))(v43, v57);
  (*(v52 + 32))(&v35[v34], v58, v38);
  (*(v53 + 32))(&v35[v63], v59, v39);
  v45 = v71;
  (*(v70 + 32))(&v35[v66], v72, v71);
  (*(v73 + 32))(&v35[v65], v74, v31);

  v76 = v44;
  v77 = v38;
  v78 = v39;
  v79 = v45;
  v80 = v31;
  v81 = v40;
  v82 = v42;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v47 = sub_1BF014EDC(v40, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v49 = v48;

  return v49;
}

uint64_t sub_1BF129860(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a7;
  v63 = a6;
  v61 = a5;
  v60 = a4;
  v83 = a2;
  v66 = a1;
  v64 = a13;
  v68 = *a2;
  v74 = *(a13 - 8);
  v67 = *(v74 + 64);
  v70 = a11;
  v58 = a12;
  v13 = MEMORY[0x1EEE9AC00](a1);
  v75 = &v47 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v14 - 8);
  v62 = *(v71 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v73 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v59 = *(v18 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v72 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a10;
  v21 = *(a10 - 8);
  v57 = *(v21 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v24;
  v52 = a9;
  v25 = *(a9 - 8);
  v53 = *(v25 + 64);
  v26 = MEMORY[0x1EEE9AC00](v22);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v28;
  v69 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v54 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))();
  v48 = v25;
  (*(v25 + 16))(v28, v60, a9);
  v49 = v21;
  (*(v21 + 16))(v24, v61, a10);
  v50 = v18;
  (*(v18 + 16))(v72, v63, v70);
  v32 = v71;
  v33 = v58;
  (*(v71 + 16))(v73, v65, v58);
  v34 = v74;
  v35 = v64;
  (*(v74 + 16))(v75, v66, v64);
  v60 = (*(v30 + 80) + 72) & ~*(v30 + 80);
  v61 = (v31 + v60 + *(v25 + 80)) & ~*(v25 + 80);
  v36 = (v53 + *(v21 + 80) + v61) & ~*(v21 + 80);
  v63 = (v57 + *(v18 + 80) + v36) & ~*(v18 + 80);
  v66 = (v59 + *(v32 + 80) + v63) & ~*(v32 + 80);
  v65 = (v62 + *(v34 + 80) + v66) & ~*(v34 + 80);
  v37 = swift_allocObject();
  v38 = v70;
  v39 = v52;
  *(v37 + 2) = v69;
  *(v37 + 3) = v39;
  v40 = v51;
  *(v37 + 4) = v51;
  *(v37 + 5) = v38;
  *(v37 + 6) = v33;
  *(v37 + 7) = v35;
  v41 = *(v68 + 80);
  *(v37 + 8) = v41;
  (*(v30 + 32))(&v37[v60], v54);
  (*(v48 + 32))(&v37[v61], v55, v39);
  (*(v49 + 32))(&v37[v36], v56, v40);
  (*(v50 + 32))(&v37[v63], v72, v38);
  (*(v71 + 32))(&v37[v66], v73, v33);
  (*(v74 + 32))(&v37[v65], v75, v35);
  v76 = v69;
  v77 = v39;
  v78 = v40;
  v79 = v38;
  v80 = v33;
  v81 = v35;
  v82 = v41;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v43 = sub_1BF014EDC(v41, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v45 = v44;

  return v45;
}

uint64_t sub_1BF129F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v18 = TupleTypeMetadata[12];
  v19 = TupleTypeMetadata[16];
  v22 = TupleTypeMetadata[20];
  v23 = TupleTypeMetadata[24];
  v25 = TupleTypeMetadata[28];
  v27 = TupleTypeMetadata[32];
  (*(*(a8 - 8) + 16))(a9, a2, a8);
  (*(*(a10 - 8) + 16))(a9 + v18, a3, a10);
  (*(*(a11 - 8) + 16))(a9 + v19, a4, a11);
  (*(*(a12 - 8) + 16))(a9 + v22, a5, a12);
  (*(*(a13 - 8) + 16))(a9 + v23, a6, a13);
  (*(*(a14 - 8) + 16))(a9 + v25, a7, a14);
  return (*(*(a15 - 8) + 16))(a9 + v27, a1);
}

uint64_t *combine<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = *a1;
  v22 = *a2;
  v23 = *a3;
  v24 = *a4;
  v25 = *a5;
  v26 = *a6;
  v27 = *a7;
  v28 = *a8;
  swift_allocObject();
  OUTLINED_FUNCTION_116_1();
  v18[2] = *(v17 + 80);
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = a7;
  v18[9] = a8;

  v29 = *(v22 + 80);
  v30 = *(v23 + 80);
  v31 = *(v24 + 80);
  v32 = *(v25 + 80);
  v33 = *(v26 + 80);
  v34 = *(v27 + 80);
  v35 = *(v28 + 80);
  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = OUTLINED_FUNCTION_160(TupleTypeMetadata);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_155();

  return a1;
}

uint64_t sub_1BF12A35C(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v49 = a7;
  v58 = a8;
  v11 = *a2;
  v44 = a6;
  v45 = v11;
  v12 = *a3;
  v13 = *a4;
  v40 = *a5;
  v42 = *a6;
  v43 = v12;
  v46 = *a7;
  v47 = *a8;
  v48 = a2;
  v15 = *(a9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v15 + 16))(&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v17, a9);
  v39 = (*(v15 + 80) + 128) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v19 = v45;
  *(v18 + 2) = a9;
  v45 = *(v19 + 80);
  v20 = v43;
  v21 = v44;
  *(v18 + 3) = v45;
  v43 = *(v20 + 80);
  v22 = v13;
  *(v18 + 4) = v43;
  v23 = a4;
  v41 = *(v22 + 80);
  v24 = v40;
  *(v18 + 5) = v41;
  v25 = a5;
  v40 = *(v24 + 80);
  v26 = v42;
  *(v18 + 6) = v40;
  v42 = *(v26 + 80);
  v27 = v46;
  *(v18 + 7) = v42;
  v28 = v49;
  v46 = *(v27 + 80);
  v29 = v47;
  *(v18 + 8) = v46;
  v30 = v58;
  v31 = *(v29 + 80);
  *(v18 + 9) = v31;
  *(v18 + 10) = a3;
  *(v18 + 11) = v23;
  *(v18 + 12) = v25;
  *(v18 + 13) = v21;
  *(v18 + 14) = v28;
  *(v18 + 15) = v30;
  (*(v15 + 32))(&v18[v39], &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a9);

  v32 = v45;
  v50 = a9;
  v51 = v45;
  v52 = v43;
  v53 = v41;
  v54 = v40;
  v55 = v42;
  v56 = v46;
  v57 = v31;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v34 = sub_1BF014EDC(v32, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v36 = v35;

  return v36;
}

uint64_t sub_1BF12A688(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v61 = a2;
  v42 = *a2;
  v43 = a3;
  v44 = *a3;
  v45 = a4;
  v11 = *a5;
  v46 = *a4;
  v47 = v11;
  v12 = *a7;
  v48 = *a6;
  v49 = v12;
  v13 = *(a10 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a9 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v19, a9);
  v20 = *(v13 + 16);
  v40 = a10;
  v20(&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a10);
  v21 = (*(v16 + 80) + 120) & ~*(v16 + 80);
  v22 = (v17 + *(v13 + 80) + v21) & ~*(v13 + 80);
  v23 = swift_allocObject();
  v24 = v42;
  *(v23 + 2) = a9;
  *(v23 + 3) = a10;
  v42 = *(v24 + 80);
  *(v23 + 4) = v42;
  v25 = v43;
  v44 = *(v44 + 80);
  *(v23 + 5) = v44;
  v26 = v45;
  v46 = *(v46 + 80);
  *(v23 + 6) = v46;
  v28 = v50;
  v27 = v51;
  v47 = *(v47 + 80);
  *(v23 + 7) = v47;
  v48 = *(v48 + 80);
  *(v23 + 8) = v48;
  v29 = v52;
  v30 = *(v49 + 80);
  *(v23 + 9) = v30;
  *(v23 + 10) = v25;
  *(v23 + 11) = v26;
  *(v23 + 12) = v28;
  *(v23 + 13) = v27;
  *(v23 + 14) = v29;
  (*(v16 + 32))(&v23[v21], v18);
  v31 = &v23[v22];
  v32 = v40;
  (*(v13 + 32))(v31, v41, v40);

  v53 = a9;
  v54 = v32;
  v33 = v42;
  v55 = v42;
  v56 = v44;
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v60 = v30;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v35 = sub_1BF014EDC(v33, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v37 = v36;

  return v37;
}

uint64_t sub_1BF12AA18(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v49 = a8;
  v50 = a1;
  v59 = a5;
  v60 = a6;
  v57 = a3;
  v58 = a4;
  v69 = a2;
  v56 = a11;
  v11 = *a3;
  v51 = *a2;
  v52 = v11;
  v12 = *a5;
  v53 = *a4;
  v54 = v12;
  v55 = *a6;
  v13 = *(a11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v48 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a10 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v47 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))();
  (*(v16 + 16))(&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v49, a10);
  v45 = v13;
  v22 = v56;
  (*(v13 + 16))(&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v56);
  v23 = (*(v20 + 80) + 112) & ~*(v20 + 80);
  v24 = (v21 + *(v16 + 80) + v23) & ~*(v16 + 80);
  v25 = (v17 + *(v13 + 80) + v24) & ~*(v13 + 80);
  v26 = swift_allocObject();
  v27 = v51;
  v28 = v44;
  *(v26 + 2) = v44;
  *(v26 + 3) = a10;
  *(v26 + 4) = v22;
  v29 = *(v27 + 80);
  *(v26 + 5) = v29;
  v31 = v57;
  v30 = v58;
  v52 = *(v52 + 80);
  *(v26 + 6) = v52;
  v53 = *(v53 + 80);
  *(v26 + 7) = v53;
  v32 = v59;
  v54 = *(v54 + 80);
  *(v26 + 8) = v54;
  v33 = v60;
  v34 = *(v55 + 80);
  *(v26 + 9) = v34;
  *(v26 + 10) = v31;
  *(v26 + 11) = v30;
  *(v26 + 12) = v32;
  *(v26 + 13) = v33;
  v35 = &v26[v23];
  v36 = v28;
  (*(v20 + 32))(v35, v46);
  (*(v16 + 32))(&v26[v24], v47, a10);
  v37 = v56;
  (*(v45 + 32))(&v26[v25], v48, v56);

  v61 = v36;
  v62 = a10;
  v63 = v37;
  v64 = v29;
  v65 = v52;
  v66 = v53;
  v67 = v54;
  v68 = v34;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v39 = sub_1BF014EDC(v29, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v41 = v40;

  return v41;
}

uint64_t sub_1BF12AE6C(unint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v65 = a8;
  v64 = a7;
  v76 = a4;
  v77 = a5;
  v86 = a2;
  v66 = a1;
  v74 = a12;
  v75 = a3;
  v12 = *a3;
  v68 = *a2;
  v69 = v12;
  v13 = *a5;
  v70 = *a4;
  v71 = v13;
  v14 = *(a12 - 8);
  v72 = a11;
  v73 = v14;
  v67 = *(v14 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v17;
  v19 = *(v18 - 8);
  v63 = *(v19 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v22;
  v56 = a10;
  v23 = *(a10 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v20);
  v60 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v59 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))();
  (*(v23 + 16))(&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v64, a10);
  v58 = v19;
  v29 = v22;
  v30 = v72;
  (*(v19 + 16))(v29, v65, v72);
  v32 = v73;
  v31 = v74;
  (*(v73 + 16))(v17, v66, v74);
  v33 = (*(v27 + 80) + 104) & ~*(v27 + 80);
  v34 = (v28 + *(v23 + 80) + v33) & ~*(v23 + 80);
  v65 = (v24 + *(v19 + 80) + v34) & ~*(v19 + 80);
  v66 = (v63 + *(v32 + 80) + v65) & ~*(v32 + 80);
  v35 = swift_allocObject();
  v36 = v68;
  v37 = v57;
  v38 = v56;
  *(v35 + 2) = v57;
  *(v35 + 3) = v38;
  *(v35 + 4) = v30;
  *(v35 + 5) = v31;
  v39 = *(v36 + 80);
  *(v35 + 6) = v39;
  v41 = v75;
  v40 = v76;
  v69 = *(v69 + 80);
  *(v35 + 7) = v69;
  v42 = *(v70 + 80);
  *(v35 + 8) = v42;
  v43 = v77;
  v44 = *(v71 + 80);
  *(v35 + 9) = v44;
  *(v35 + 10) = v41;
  *(v35 + 11) = v40;
  *(v35 + 12) = v43;
  v45 = &v35[v33];
  v46 = v37;
  (*(v27 + 32))(v45, v59);
  v47 = &v35[v34];
  v48 = v38;
  (*(v23 + 32))(v47, v60, v38);
  v49 = v72;
  (*(v58 + 32))(&v35[v65], v61, v72);
  v50 = v74;
  (*(v73 + 32))(&v35[v66], v62, v74);

  v78 = v46;
  v79 = v48;
  v80 = v49;
  v81 = v50;
  v82 = v39;
  v83 = v69;
  v84 = v42;
  v85 = v44;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v52 = sub_1BF014EDC(v39, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v54 = v53;

  return v54;
}

uint64_t sub_1BF12B3A8(unint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v67 = a8;
  v66 = a7;
  v64 = a6;
  v79 = a3;
  v80 = a4;
  v89 = a2;
  v68 = a1;
  v77 = a13;
  v13 = *a3;
  v70 = *a2;
  v71 = v13;
  v72 = *a4;
  v75 = *(a13 - 8);
  v69 = *(v75 + 64);
  v74 = a12;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v78 = &v55 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(v15 - 8);
  v65 = *(v73 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v76 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a11;
  v18 = *(a11 - 8);
  v63 = *(v18 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v21;
  v58 = a10;
  v22 = *(a10 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v60 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))();
  v55 = v22;
  (*(v22 + 16))(&v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v64, a10);
  v57 = v18;
  (*(v18 + 16))(v21, v66, a11);
  v28 = v73;
  v29 = v74;
  (*(v73 + 16))(v76, v67, v74);
  v30 = v75;
  v31 = v77;
  (*(v75 + 16))(v78, v68, v77);
  v32 = *(v22 + 80);
  v33 = (*(v26 + 80) + 96) & ~*(v26 + 80);
  v34 = (v27 + v32 + v33) & ~v32;
  v66 = (v23 + *(v18 + 80) + v34) & ~*(v18 + 80);
  v68 = (v63 + *(v28 + 80) + v66) & ~*(v28 + 80);
  v67 = (v65 + *(v30 + 80) + v68) & ~*(v30 + 80);
  v35 = swift_allocObject();
  v36 = v70;
  v37 = v59;
  v38 = v58;
  *(v35 + 2) = v59;
  *(v35 + 3) = v38;
  v39 = v56;
  *(v35 + 4) = v56;
  *(v35 + 5) = v29;
  *(v35 + 6) = v31;
  v40 = *(v36 + 80);
  *(v35 + 7) = v40;
  v42 = v79;
  v41 = v80;
  v43 = *(v71 + 80);
  *(v35 + 8) = v43;
  v44 = *(v72 + 80);
  *(v35 + 9) = v44;
  *(v35 + 10) = v42;
  *(v35 + 11) = v41;
  v45 = &v35[v33];
  v46 = v37;
  (*(v26 + 32))(v45, v60);
  v47 = v38;
  (*(v55 + 32))(&v35[v34], v61, v38);
  (*(v57 + 32))(&v35[v66], v62, v39);
  v48 = v74;
  (*(v73 + 32))(&v35[v68], v76, v74);
  v49 = v77;
  (*(v75 + 32))(&v35[v67], v78, v77);

  v81 = v46;
  v82 = v47;
  v83 = v39;
  v84 = v48;
  v85 = v49;
  v86 = v40;
  v87 = v43;
  v88 = v44;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v51 = sub_1BF014EDC(v40, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v53 = v52;

  return v53;
}

uint64_t sub_1BF12B9DC(unint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v69 = a8;
  v68 = a7;
  v66 = a6;
  v65 = a5;
  v83 = a3;
  v92 = a2;
  v70 = a1;
  v63 = a13;
  v81 = a14;
  v14 = *a3;
  v72 = *a2;
  v73 = v14;
  v80 = *(a14 - 8);
  v71 = *(v80 + 64);
  v76 = a12;
  v15 = MEMORY[0x1EEE9AC00](v71);
  v82 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(v16 - 8);
  v67 = *(v77 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v79 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v19 - 8);
  v64 = *(v75 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v78 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a11;
  v22 = *(a11 - 8);
  v62 = *(v22 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v25;
  v57 = a10;
  v26 = *(a10 - 8);
  v58 = *(v26 + 64);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v29;
  v74 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v59 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))();
  v54 = v26;
  (*(v26 + 16))(v29, v65, a10);
  v55 = v22;
  (*(v22 + 16))(v25, v66, a11);
  v33 = v75;
  (*(v75 + 16))(v78, v68, v76);
  v34 = v77;
  v35 = v63;
  (*(v77 + 16))(v79, v69, v63);
  v36 = v80;
  v37 = v81;
  (*(v80 + 16))(v82, v70, v81);
  v65 = (*(v31 + 80) + 88) & ~*(v31 + 80);
  v66 = (v32 + *(v26 + 80) + v65) & ~*(v26 + 80);
  v68 = (v58 + *(v22 + 80) + v66) & ~*(v22 + 80);
  v69 = (v62 + *(v33 + 80) + v68) & ~*(v33 + 80);
  v70 = (v64 + *(v34 + 80) + v69) & ~*(v34 + 80);
  v38 = (v67 + *(v36 + 80) + v70) & ~*(v36 + 80);
  v39 = swift_allocObject();
  v40 = v72;
  v41 = v57;
  *(v39 + 2) = v74;
  *(v39 + 3) = v41;
  v42 = v56;
  v43 = v76;
  *(v39 + 4) = v56;
  *(v39 + 5) = v43;
  *(v39 + 6) = v35;
  *(v39 + 7) = v37;
  v44 = *(v40 + 80);
  *(v39 + 8) = v44;
  v45 = v83;
  v46 = *(v73 + 80);
  *(v39 + 9) = v46;
  *(v39 + 10) = v45;
  (*(v31 + 32))(&v39[v65], v59);
  (*(v54 + 32))(&v39[v66], v60, v41);
  (*(v55 + 32))(&v39[v68], v61, v42);
  (*(v75 + 32))(&v39[v69], v78, v43);
  (*(v77 + 32))(&v39[v70], v79, v35);
  v47 = &v39[v38];
  v48 = v81;
  (*(v80 + 32))(v47, v82, v81);

  v84 = v74;
  v85 = v41;
  v86 = v42;
  v87 = v43;
  v88 = v35;
  v89 = v48;
  v90 = v44;
  v91 = v46;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v50 = sub_1BF014EDC(v44, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v52 = v51;

  return v52;
}

uint64_t sub_1BF12C104(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v72 = a8;
  v69 = a7;
  v68 = a6;
  v67 = a5;
  v65 = a4;
  v96 = a2;
  v73 = a1;
  v82 = a12;
  v70 = a15;
  v75 = *a2;
  v85 = *(a15 - 8);
  v74 = *(v85 + 64);
  v79 = a13;
  v83 = a14;
  v15 = MEMORY[0x1EEE9AC00](v74);
  v87 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v16 - 8);
  v71 = *(v81 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v86 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(v19 - 8);
  v66 = *(v78 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v84 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(v22 - 8);
  v64 = *(v76 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v80 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a11;
  v25 = *(a11 - 8);
  v60 = *(v25 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v28;
  v59 = a10;
  v29 = *(a10 - 8);
  v58 = *(v29 + 64);
  v30 = MEMORY[0x1EEE9AC00](v26);
  v32 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v32;
  v77 = a9;
  v33 = *(*(a9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v61 = &v54 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v34;
  v54 = v34;
  (*(v34 + 16))();
  v55 = v29;
  (*(v29 + 16))(v32, v65, a10);
  v56 = v25;
  (*(v25 + 16))(v28, v67, a11);
  v36 = v76;
  (*(v76 + 16))(v80, v68, v82);
  v37 = v78;
  (*(v78 + 16))(v84, v69, v79);
  v38 = v81;
  (*(v81 + 16))(v86, v72, v83);
  v39 = v85;
  v40 = v70;
  (*(v85 + 16))(v87, v73, v70);
  v65 = (*(v35 + 80) + 80) & ~*(v35 + 80);
  v67 = (v33 + *(v29 + 80) + v65) & ~*(v29 + 80);
  v68 = (v58 + *(v25 + 80) + v67) & ~*(v25 + 80);
  v41 = (v60 + *(v36 + 80) + v68) & ~*(v36 + 80);
  v69 = (v64 + *(v37 + 80) + v41) & ~*(v37 + 80);
  v73 = (v66 + *(v38 + 80) + v69) & ~*(v38 + 80);
  v72 = (v71 + *(v39 + 80) + v73) & ~*(v39 + 80);
  v42 = swift_allocObject();
  v43 = v59;
  *(v42 + 2) = v77;
  *(v42 + 3) = v43;
  v44 = v57;
  v45 = v82;
  v46 = v83;
  *(v42 + 4) = v57;
  *(v42 + 5) = v45;
  v47 = v79;
  *(v42 + 6) = v79;
  *(v42 + 7) = v46;
  *(v42 + 8) = v40;
  v48 = *(v75 + 80);
  *(v42 + 9) = v48;
  (*(v54 + 32))(&v42[v65], v61);
  (*(v55 + 32))(&v42[v67], v62, v43);
  (*(v56 + 32))(&v42[v68], v63, v44);
  (*(v76 + 32))(&v42[v41], v80, v45);
  (*(v78 + 32))(&v42[v69], v84, v47);
  (*(v81 + 32))(&v42[v73], v86, v46);
  (*(v85 + 32))(&v42[v72], v87, v40);
  v88 = v77;
  v89 = v43;
  v90 = v44;
  v91 = v45;
  v92 = v47;
  v93 = v46;
  v94 = v40;
  v95 = v48;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v50 = sub_1BF014EDC(v48, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v52 = v51;

  return v52;
}

uint64_t sub_1BF12C91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = TupleTypeMetadata[12];
  v20 = TupleTypeMetadata[16];
  v22 = TupleTypeMetadata[20];
  v24 = TupleTypeMetadata[24];
  v26 = TupleTypeMetadata[28];
  v28 = TupleTypeMetadata[32];
  v30 = TupleTypeMetadata[36];
  (*(*(a10 - 8) + 16))(a9, a2, a10);
  (*(*(a11 - 8) + 16))(a9 + v19, a3, a11);
  (*(*(a12 - 8) + 16))(a9 + v20, a4, a12);
  (*(*(a13 - 8) + 16))(a9 + v22, a5, a13);
  (*(*(a14 - 8) + 16))(a9 + v24, a6, a14);
  (*(*(a15 - 8) + 16))(a9 + v26, a7, a15);
  (*(*(a16 - 8) + 16))(a9 + v28, a8);
  return (*(*(a17 - 8) + 16))(a9 + v30, a1);
}

uint64_t *combine<A, B, C, D, E, F, G, H, I>(_:_:_:_:_:_:_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v21 = *a1;
  v22 = *a2;
  v23 = *a3;
  v24 = *a4;
  v25 = *a5;
  v26 = *a6;
  v27 = *a7;
  v28 = *a8;
  v29 = *a9;
  v16 = swift_allocObject();
  v17 = *(v21 + 80);
  v16[2] = v17;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a6;
  v16[8] = a7;
  v16[9] = a8;
  v16[10] = a9;

  v31 = *(v22 + 80);
  v32 = *(v23 + 80);
  v33 = *(v24 + 80);
  v34 = *(v25 + 80);
  v35 = *(v26 + 80);
  v36 = *(v27 + 80);
  v37 = *(v28 + 80);
  v38 = *(v29 + 80);
  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = sub_1BF014EDC(v17, TupleTypeMetadata);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_155();

  return a1;
}

uint64_t sub_1BF12CDE8(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10)
{
  v52 = a8;
  v62 = a9;
  v50 = *a2;
  v51 = a2;
  v14 = *a3;
  v15 = *a4;
  v45 = a7;
  v46 = v15;
  v16 = *a5;
  v42 = *a6;
  v43 = v16;
  v44 = *a7;
  v47 = *a8;
  v48 = v14;
  v49 = *a9;
  v17 = *(a10 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v19, a10);
  v41 = (*(v17 + 80) + 144) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = v50;
  *(v20 + 2) = a10;
  v50 = *(v21 + 80);
  v22 = v48;
  *(v20 + 3) = v50;
  v48 = *(v22 + 80);
  v23 = v46;
  *(v20 + 4) = v48;
  v46 = *(v23 + 80);
  v24 = v43;
  *(v20 + 5) = v46;
  v25 = a5;
  v43 = *(v24 + 80);
  v26 = v42;
  *(v20 + 6) = v43;
  v27 = a6;
  v42 = *(v26 + 80);
  v28 = v44;
  v29 = v45;
  *(v20 + 7) = v42;
  v44 = *(v28 + 80);
  v30 = v47;
  *(v20 + 8) = v44;
  v31 = v52;
  v47 = *(v30 + 80);
  v32 = v49;
  *(v20 + 9) = v47;
  v33 = v62;
  v49 = *(v32 + 80);
  *(v20 + 10) = v49;
  *(v20 + 11) = a3;
  *(v20 + 12) = a4;
  *(v20 + 13) = v25;
  *(v20 + 14) = v27;
  *(v20 + 15) = v29;
  *(v20 + 16) = v31;
  *(v20 + 17) = v33;
  (*(v17 + 32))(&v20[v41], &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a10);

  v34 = v50;
  v53 = a10;
  v54 = v50;
  v55 = v48;
  v56 = v46;
  v57 = v43;
  v58 = v42;
  v59 = v44;
  v60 = v47;
  v61 = v49;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v36 = sub_1BF014EDC(v34, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v38 = v37;

  return v38;
}

uint64_t sub_1BF12D160(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a6;
  v51 = a7;
  v52 = a8;
  v45 = a5;
  v43 = a4;
  v41 = a3;
  v62 = a2;
  v40 = *a2;
  v42 = *a3;
  v44 = *a4;
  v12 = *a6;
  v46 = *a5;
  v47 = v12;
  v13 = *a8;
  v48 = *a7;
  v49 = v13;
  v14 = *(a11 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a10 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19);
  v20 = *(v14 + 16);
  v38 = a11;
  v20(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a11);
  v21 = (*(v17 + 80) + 136) & ~*(v17 + 80);
  v22 = (v18 + *(v14 + 80) + v21) & ~*(v14 + 80);
  v23 = swift_allocObject();
  v24 = v40;
  *(v23 + 2) = a10;
  *(v23 + 3) = a11;
  v40 = *(v24 + 80);
  *(v23 + 4) = v40;
  v25 = v43;
  v26 = v41;
  v42 = *(v42 + 80);
  *(v23 + 5) = v42;
  v27 = v45;
  v44 = *(v44 + 80);
  *(v23 + 6) = v44;
  v46 = *(v46 + 80);
  *(v23 + 7) = v46;
  v29 = v50;
  v28 = v51;
  v47 = *(v47 + 80);
  *(v23 + 8) = v47;
  v48 = *(v48 + 80);
  *(v23 + 9) = v48;
  v30 = v52;
  v49 = *(v49 + 80);
  *(v23 + 10) = v49;
  *(v23 + 11) = v26;
  *(v23 + 12) = v25;
  *(v23 + 13) = v27;
  *(v23 + 14) = v29;
  *(v23 + 15) = v28;
  *(v23 + 16) = v30;
  (*(v17 + 32))(&v23[v21], v19);
  v31 = v38;
  (*(v14 + 32))(&v23[v22], v39, v38);

  v53 = a10;
  v54 = v31;
  v32 = v40;
  v55 = v40;
  v56 = v42;
  v57 = v44;
  v58 = v46;
  v59 = v47;
  v60 = v48;
  v61 = v49;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v34 = sub_1BF014EDC(v32, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v36 = v35;

  return v36;
}

uint64_t sub_1BF12D558(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v58 = a5;
  v59 = a6;
  v60 = a7;
  v53 = a4;
  v51 = a3;
  v70 = a2;
  v49 = a1;
  v48 = a12;
  v50 = *a2;
  v52 = *a3;
  v12 = *a5;
  v54 = *a4;
  v55 = v12;
  v13 = *a7;
  v56 = *a6;
  v57 = v13;
  v14 = *(a12 - 8);
  v15 = *(v14 + 64);
  v44 = a9;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v47 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a11 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v46 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))();
  (*(v17 + 16))(&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v44, a11);
  v43 = v14;
  v23 = v48;
  (*(v14 + 16))(&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v48);
  v24 = (*(v21 + 80) + 128) & ~*(v21 + 80);
  v49 = (v22 + *(v17 + 80) + v24) & ~*(v17 + 80);
  v25 = (v18 + *(v14 + 80) + v49) & ~*(v14 + 80);
  v26 = swift_allocObject();
  v27 = v50;
  v28 = v51;
  v29 = v42;
  *(v26 + 2) = v42;
  *(v26 + 3) = a11;
  *(v26 + 4) = v23;
  v50 = *(v27 + 80);
  *(v26 + 5) = v50;
  v30 = v53;
  v52 = *(v52 + 80);
  *(v26 + 6) = v52;
  v54 = *(v54 + 80);
  *(v26 + 7) = v54;
  v32 = v58;
  v31 = v59;
  v55 = *(v55 + 80);
  *(v26 + 8) = v55;
  v56 = *(v56 + 80);
  *(v26 + 9) = v56;
  v33 = v60;
  v57 = *(v57 + 80);
  *(v26 + 10) = v57;
  *(v26 + 11) = v28;
  *(v26 + 12) = v30;
  *(v26 + 13) = v32;
  *(v26 + 14) = v31;
  *(v26 + 15) = v33;
  v34 = &v26[v24];
  v35 = v29;
  (*(v21 + 32))(v34, v45);
  (*(v17 + 32))(&v26[v49], v46, a11);
  (*(v43 + 32))(&v26[v25], v47, v23);

  v61 = v35;
  v62 = a11;
  v36 = v50;
  v63 = v23;
  v64 = v50;
  v65 = v52;
  v66 = v54;
  v67 = v55;
  v68 = v56;
  v69 = v57;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v38 = sub_1BF014EDC(v36, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v40 = v39;

  return v40;
}

uint64_t sub_1BF12DA18(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v66 = a8;
  v79 = a5;
  v80 = a6;
  v77 = a3;
  v78 = a4;
  v90 = a2;
  v67 = a1;
  v65 = a9;
  v76 = a13;
  v69 = *a2;
  v13 = *a4;
  v70 = *a3;
  v71 = v13;
  v14 = *a6;
  v72 = *a5;
  v73 = v14;
  v75 = *(a13 - 8);
  v68 = *(v75 + 64);
  v74 = a12;
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v17;
  v19 = *(v18 - 8);
  v64 = *(v19 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v22;
  v57 = a11;
  v23 = *(a11 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v20);
  v61 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v60 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))();
  (*(v23 + 16))(&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v66, a11);
  v59 = v19;
  v29 = v22;
  v30 = v74;
  (*(v19 + 16))(v29, v65, v74);
  v31 = v75;
  v32 = v17;
  v33 = v76;
  (*(v75 + 16))(v32, v67, v76);
  v34 = (*(v27 + 80) + 120) & ~*(v27 + 80);
  v35 = (v28 + *(v23 + 80) + v34) & ~*(v23 + 80);
  v36 = (v24 + *(v19 + 80) + v35) & ~*(v19 + 80);
  v67 = (v64 + *(v31 + 80) + v36) & ~*(v31 + 80);
  v37 = swift_allocObject();
  v38 = v69;
  v39 = v58;
  v40 = v57;
  *(v37 + 2) = v58;
  *(v37 + 3) = v40;
  *(v37 + 4) = v30;
  *(v37 + 5) = v33;
  v41 = *(v38 + 80);
  *(v37 + 6) = v41;
  v43 = v77;
  v42 = v78;
  v70 = *(v70 + 80);
  *(v37 + 7) = v70;
  v71 = *(v71 + 80);
  *(v37 + 8) = v71;
  v44 = v79;
  v72 = *(v72 + 80);
  *(v37 + 9) = v72;
  v45 = v80;
  v46 = *(v73 + 80);
  *(v37 + 10) = v46;
  *(v37 + 11) = v43;
  *(v37 + 12) = v42;
  *(v37 + 13) = v44;
  *(v37 + 14) = v45;
  v47 = &v37[v34];
  v48 = v39;
  (*(v27 + 32))(v47, v60);
  (*(v23 + 32))(&v37[v35], v61, v40);
  v49 = v74;
  (*(v59 + 32))(&v37[v36], v62, v74);
  v50 = v76;
  (*(v75 + 32))(&v37[v67], v63, v76);

  v81 = v48;
  v82 = v40;
  v83 = v49;
  v84 = v50;
  v85 = v41;
  v86 = v70;
  v87 = v71;
  v88 = v72;
  v89 = v46;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v52 = sub_1BF014EDC(v41, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v54 = v53;

  return v54;
}

uint64_t sub_1BF12DFB8(unint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v62 = a8;
  v59 = a7;
  v75 = a4;
  v76 = a5;
  v74 = a3;
  v86 = a2;
  v63 = a1;
  v61 = a9;
  v70 = a13;
  v60 = a14;
  v65 = *a2;
  v14 = *a4;
  v66 = *a3;
  v67 = v14;
  v68 = *a5;
  v71 = *(a14 - 8);
  v64 = *(v71 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v73 = &v50 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(v16 - 8);
  v58 = *(v69 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v72 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a12;
  v19 = *(a12 - 8);
  v57 = *(v19 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v22;
  v51 = a11;
  v23 = *(a11 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v20);
  v55 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v54 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))();
  (*(v23 + 16))(&v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v59, a11);
  v52 = v19;
  (*(v19 + 16))(v22, v62, a12);
  v29 = v69;
  (*(v69 + 16))(v72, v61, v70);
  v30 = v71;
  v31 = v60;
  (*(v71 + 16))(v73, v63, v60);
  v32 = (*(v27 + 80) + 112) & ~*(v27 + 80);
  v59 = (v28 + *(v23 + 80) + v32) & ~*(v23 + 80);
  v61 = (v24 + *(v19 + 80) + v59) & ~*(v19 + 80);
  v63 = (v57 + *(v29 + 80) + v61) & ~*(v29 + 80);
  v62 = (v58 + *(v30 + 80) + v63) & ~*(v30 + 80);
  v33 = swift_allocObject();
  v34 = v65;
  v35 = v53;
  v36 = v51;
  *(v33 + 2) = v53;
  *(v33 + 3) = v36;
  v37 = v50;
  v38 = v70;
  *(v33 + 4) = v50;
  *(v33 + 5) = v38;
  *(v33 + 6) = v31;
  v39 = *(v34 + 80);
  *(v33 + 7) = v39;
  v41 = v74;
  v40 = v75;
  v66 = *(v66 + 80);
  *(v33 + 8) = v66;
  v67 = *(v67 + 80);
  *(v33 + 9) = v67;
  v42 = v76;
  v68 = *(v68 + 80);
  *(v33 + 10) = v68;
  *(v33 + 11) = v41;
  *(v33 + 12) = v40;
  *(v33 + 13) = v42;
  v43 = &v33[v32];
  v44 = v35;
  (*(v27 + 32))(v43, v54);
  (*(v23 + 32))(&v33[v59], v55, v36);
  (*(v52 + 32))(&v33[v61], v56, v37);
  (*(v69 + 32))(&v33[v63], v72, v38);
  (*(v71 + 32))(&v33[v62], v73, v31);

  v77 = v44;
  v78 = v36;
  v79 = v37;
  v80 = v38;
  v81 = v31;
  v82 = v39;
  v83 = v66;
  v84 = v67;
  v85 = v68;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v46 = sub_1BF014EDC(v39, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v48 = v47;

  return v48;
}

uint64_t sub_1BF12E64C(unint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v72 = a8;
  v69 = a7;
  v68 = a6;
  v87 = a3;
  v88 = a4;
  v98 = a2;
  v73 = a1;
  v71 = a9;
  v84 = a15;
  v75 = *a2;
  v76 = *a3;
  v77 = *a4;
  v83 = *(a15 - 8);
  v74 = *(v83 + 64);
  v79 = a13;
  v81 = a14;
  v15 = MEMORY[0x1EEE9AC00](v74);
  v86 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v16 - 8);
  v70 = *(v80 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v85 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(v19 - 8);
  v67 = *(v78 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v82 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a12;
  v22 = *(a12 - 8);
  v63 = *(v22 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v25;
  v61 = a11;
  v26 = *(a11 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v23);
  v65 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v64 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))();
  v58 = v26;
  (*(v26 + 16))(&v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v68, a11);
  v59 = v22;
  (*(v22 + 16))(v25, v69, a12);
  v32 = v78;
  (*(v78 + 16))(v82, v72, v79);
  v33 = v80;
  (*(v80 + 16))(v85, v71, v81);
  v34 = v83;
  v35 = v84;
  (*(v83 + 16))(v86, v73, v84);
  v36 = *(v26 + 80);
  v37 = (*(v30 + 80) + 104) & ~*(v30 + 80);
  v68 = (v31 + v36 + v37) & ~v36;
  v69 = (v27 + *(v22 + 80) + v68) & ~*(v22 + 80);
  v71 = (v63 + *(v32 + 80) + v69) & ~*(v32 + 80);
  v73 = (v67 + *(v33 + 80) + v71) & ~*(v33 + 80);
  v72 = (v70 + *(v34 + 80) + v73) & ~*(v34 + 80);
  v38 = swift_allocObject();
  v39 = v75;
  v40 = v62;
  v41 = v61;
  *(v38 + 2) = v62;
  *(v38 + 3) = v41;
  v42 = v60;
  v43 = v79;
  *(v38 + 4) = v60;
  *(v38 + 5) = v43;
  v44 = v81;
  *(v38 + 6) = v81;
  *(v38 + 7) = v35;
  v45 = *(v39 + 80);
  *(v38 + 8) = v45;
  v46 = v87;
  v76 = *(v76 + 80);
  *(v38 + 9) = v76;
  v47 = v88;
  v48 = *(v77 + 80);
  *(v38 + 10) = v48;
  *(v38 + 11) = v46;
  *(v38 + 12) = v47;
  v49 = &v38[v37];
  v50 = v40;
  (*(v30 + 32))(v49, v64);
  (*(v58 + 32))(&v38[v68], v65, v41);
  v51 = v42;
  (*(v59 + 32))(&v38[v69], v66, v42);
  (*(v78 + 32))(&v38[v71], v82, v43);
  (*(v80 + 32))(&v38[v73], v85, v44);
  v52 = v84;
  (*(v83 + 32))(&v38[v72], v86, v84);

  v89 = v50;
  v90 = v41;
  v91 = v51;
  v92 = v43;
  v93 = v44;
  v94 = v52;
  v95 = v45;
  v96 = v76;
  v97 = v48;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v54 = sub_1BF014EDC(v45, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v56 = v55;

  return v56;
}

uint64_t sub_1BF12EDCC(unint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v76 = a8;
  v73 = a7;
  v72 = a6;
  v70 = a5;
  v94 = a3;
  v104 = a2;
  v77 = a1;
  v75 = a9;
  v87 = a15;
  v92 = a16;
  v79 = *a2;
  v80 = *a3;
  v90 = *(a16 - 8);
  v78 = *(v90 + 64);
  v88 = a13;
  v84 = a14;
  v16 = MEMORY[0x1EEE9AC00](v78);
  v93 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(v17 - 8);
  v74 = *(v85 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v91 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(v20 - 8);
  v71 = *(v83 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v89 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v23 - 8);
  v69 = *(v81 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v86 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a12;
  v26 = *(a12 - 8);
  v65 = *(v26 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v29;
  v64 = a11;
  v30 = *(a11 - 8);
  v63 = *(v30 + 64);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v33;
  v82 = v34;
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v66 = &v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))();
  v60 = v30;
  (*(v30 + 16))(v33, v70, a11);
  v61 = v26;
  (*(v26 + 16))(v29, v72, a12);
  v37 = v81;
  (*(v81 + 16))(v86, v73, v88);
  v38 = v83;
  (*(v83 + 16))(v89, v76, v84);
  v39 = v85;
  (*(v85 + 16))(v91, v75, v87);
  v40 = v90;
  v41 = v92;
  (*(v90 + 16))(v93, v77, v92);
  v59 = (*(v35 + 80) + 96) & ~*(v35 + 80);
  v70 = (v36 + *(v30 + 80) + v59) & ~*(v30 + 80);
  v72 = (v63 + *(v26 + 80) + v70) & ~*(v26 + 80);
  v73 = (v65 + *(v37 + 80) + v72) & ~*(v37 + 80);
  v75 = (v69 + *(v38 + 80) + v73) & ~*(v38 + 80);
  v77 = (v71 + *(v39 + 80) + v75) & ~*(v39 + 80);
  v76 = (v74 + *(v40 + 80) + v77) & ~*(v40 + 80);
  v42 = swift_allocObject();
  v43 = v79;
  v44 = v64;
  *(v42 + 2) = v82;
  *(v42 + 3) = v44;
  v45 = v62;
  v46 = v87;
  v47 = v88;
  *(v42 + 4) = v62;
  *(v42 + 5) = v47;
  v48 = v84;
  *(v42 + 6) = v84;
  *(v42 + 7) = v46;
  *(v42 + 8) = v41;
  v49 = *(v43 + 80);
  *(v42 + 9) = v49;
  v50 = v94;
  v80 = *(v80 + 80);
  *(v42 + 10) = v80;
  *(v42 + 11) = v50;
  (*(v35 + 32))(&v42[v59], v66);
  (*(v60 + 32))(&v42[v70], v67, v44);
  (*(v61 + 32))(&v42[v72], v68, v45);
  (*(v81 + 32))(&v42[v73], v86, v47);
  (*(v83 + 32))(&v42[v75], v89, v48);
  v51 = v46;
  (*(v85 + 32))(&v42[v77], v91, v46);
  v52 = v92;
  (*(v90 + 32))(&v42[v76], v93, v92);

  v95 = v82;
  v96 = v44;
  v97 = v45;
  v98 = v47;
  v99 = v48;
  v100 = v51;
  v101 = v52;
  v102 = v49;
  v103 = v80;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v54 = sub_1BF014EDC(v49, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v56 = v55;

  return v56;
}

uint64_t sub_1BF12F648(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v84 = a8;
  v82 = a7;
  v81 = a6;
  v79 = a5;
  v78 = a4;
  v114 = a2;
  v86 = a1;
  v83 = a9;
  v95 = a13;
  v99 = a14;
  v101 = a17;
  v88 = *a2;
  v100 = *(a17 - 8);
  v87 = *(v100 + 64);
  v93 = a15;
  v97 = a16;
  v17 = MEMORY[0x1EEE9AC00](a13);
  v104 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(v19 - 8);
  v85 = *(v96 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v103 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(v22 - 8);
  v80 = *(v92 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v102 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 - 8);
  v77 = *(v26 + 64);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v98 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v27 - 8);
  v76 = *(v29 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v94 = &v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a12;
  v32 = *(a12 - 8);
  v72 = *(v32 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v35;
  v71 = a11;
  v91 = *(a11 - 8);
  v36 = v91;
  v70 = *(v91 + 64);
  v37 = MEMORY[0x1EEE9AC00](v33);
  v39 = &v66 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v39;
  v89 = v40;
  v90 = *(v40 - 8);
  v41 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v73 = &v66 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))();
  (*(v36 + 16))(v39, v78, a11);
  v43 = v32;
  v66 = v32;
  (*(v32 + 16))(v35, v79, a12);
  v67 = v29;
  (*(v29 + 16))(v94, v81, v95);
  v68 = v26;
  (*(v26 + 16))(v98, v82, v99);
  v44 = v92;
  (*(v92 + 16))(v102, v84, v93);
  v46 = v96;
  v45 = v97;
  (*(v96 + 16))(v103, v83, v97);
  v48 = v100;
  v47 = v101;
  (*(v100 + 16))(v104, v86, v101);
  v79 = (*(v90 + 80) + 88) & ~*(v90 + 80);
  v81 = (v41 + *(v91 + 80) + v79) & ~*(v91 + 80);
  v82 = (v70 + *(v43 + 80) + v81) & ~*(v43 + 80);
  v83 = (v72 + *(v29 + 80) + v82) & ~*(v29 + 80);
  v84 = (v76 + *(v26 + 80) + v83) & ~*(v26 + 80);
  v86 = (v77 + *(v44 + 80) + v84) & ~*(v44 + 80);
  v49 = (v80 + *(v46 + 80) + v86) & ~*(v46 + 80);
  v85 = (v85 + *(v48 + 80) + v49) & ~*(v48 + 80);
  v50 = swift_allocObject();
  v51 = v71;
  *(v50 + 2) = v89;
  *(v50 + 3) = v51;
  v52 = v69;
  v53 = v95;
  *(v50 + 4) = v69;
  *(v50 + 5) = v53;
  v54 = v99;
  v55 = v93;
  *(v50 + 6) = v99;
  *(v50 + 7) = v55;
  *(v50 + 8) = v45;
  *(v50 + 9) = v47;
  v56 = *(v88 + 80);
  *(v50 + 10) = v56;
  (*(v90 + 32))(&v50[v79], v73);
  (*(v91 + 32))(&v50[v81], v74, v51);
  (*(v66 + 32))(&v50[v82], v75, v52);
  (*(v67 + 32))(&v50[v83], v94, v53);
  v57 = v54;
  (*(v68 + 32))(&v50[v84], v98, v54);
  (*(v92 + 32))(&v50[v86], v102, v55);
  v58 = &v50[v49];
  v59 = v97;
  (*(v96 + 32))(v58, v103, v97);
  v60 = v101;
  (*(v100 + 32))(&v50[v85], v104, v101);
  v105 = v89;
  v106 = v51;
  v107 = v52;
  v108 = v53;
  v109 = v57;
  v110 = v55;
  v111 = v59;
  v112 = v60;
  v113 = v56;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v62 = sub_1BF014EDC(v56, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v64 = v63;

  return v64;
}

uint64_t sub_1BF12FF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v21 = TupleTypeMetadata[12];
  v22 = TupleTypeMetadata[16];
  v24 = TupleTypeMetadata[20];
  v26 = TupleTypeMetadata[24];
  v28 = TupleTypeMetadata[28];
  v30 = TupleTypeMetadata[32];
  v31 = TupleTypeMetadata[36];
  v33 = TupleTypeMetadata[40];
  (*(*(a11 - 8) + 16))(a9, a2, a11);
  (*(*(a12 - 8) + 16))(a9 + v21, a3, a12);
  (*(*(a13 - 8) + 16))(a9 + v22, a4, a13);
  (*(*(a14 - 8) + 16))(a9 + v24, a5, a14);
  (*(*(a15 - 8) + 16))(a9 + v26, a6, a15);
  (*(*(a16 - 8) + 16))(a9 + v28, a7, a16);
  (*(*(a17 - 8) + 16))(a9 + v30, a8);
  (*(*(a18 - 8) + 16))(a9 + v31, a10);
  return (*(*(a19 - 8) + 16))(a9 + v33, a1);
}

void combine<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t *a47, uint64_t *a48)
{
  OUTLINED_FUNCTION_175();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = *v62;
  v68 = *v60;
  v69 = *v58;
  v70 = *v56;
  v71 = *v54;
  v72 = *v52;
  v73 = *v50;
  v74 = *v48;
  v75 = *a47;
  v76 = *a48;
  v64 = swift_allocObject();
  v67 = *(v63 + 80);
  v64[2] = v67;
  v64[3] = v61;
  v64[4] = v59;
  v64[5] = v57;
  v64[6] = v55;
  v64[7] = v53;
  v64[8] = v51;
  v64[9] = v49;
  v64[10] = a47;
  v64[11] = a48;

  v77 = *(v68 + 80);
  v78 = *(v69 + 80);
  v79 = *(v70 + 80);
  v80 = *(v71 + 80);
  v81 = *(v72 + 80);
  v82 = *(v73 + 80);
  v83 = *(v74 + 80);
  v84 = *(v75 + 80);
  v85 = *(v76 + 80);
  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v66 = sub_1BF014EDC(v67, TupleTypeMetadata);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_155();

  OUTLINED_FUNCTION_173();
}

uint64_t sub_1BF1304E0(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11)
{
  v47 = a8;
  v44 = a7;
  v66 = a10;
  v55 = a9;
  v53 = *a2;
  v54 = a2;
  v13 = *a3;
  v51 = *a4;
  v52 = v13;
  v49 = *a5;
  v46 = *a6;
  v43 = *a7;
  v45 = *a8;
  v48 = *a9;
  v50 = *a10;
  v16 = *(a11 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v16 + 16))(&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v18, a11);
  v42 = (*(v16 + 80) + 160) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = v53;
  *(v19 + 2) = a11;
  v53 = *(v20 + 80);
  v21 = v52;
  *(v19 + 3) = v53;
  v52 = *(v21 + 80);
  v22 = v51;
  *(v19 + 4) = v52;
  v23 = a4;
  v51 = *(v22 + 80);
  v24 = v49;
  *(v19 + 5) = v51;
  v25 = a5;
  v49 = *(v24 + 80);
  v26 = v46;
  *(v19 + 6) = v49;
  v27 = a6;
  v46 = *(v26 + 80);
  v28 = v43;
  *(v19 + 7) = v46;
  v29 = v44;
  v43 = *(v28 + 80);
  v30 = v45;
  *(v19 + 8) = v43;
  v31 = v47;
  v45 = *(v30 + 80);
  v32 = v48;
  *(v19 + 9) = v45;
  v33 = v55;
  v48 = *(v32 + 80);
  v34 = v50;
  *(v19 + 10) = v48;
  v35 = v66;
  v50 = *(v34 + 80);
  *(v19 + 11) = v50;
  *(v19 + 12) = a3;
  *(v19 + 13) = v23;
  *(v19 + 14) = v25;
  *(v19 + 15) = v27;
  *(v19 + 16) = v29;
  *(v19 + 17) = v31;
  *(v19 + 18) = v33;
  *(v19 + 19) = v35;
  (*(v16 + 32))(&v19[v42], &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a11);

  v36 = v53;
  v56 = a11;
  v57 = v53;
  v58 = v52;
  v59 = v51;
  v60 = v49;
  v61 = v46;
  v62 = v43;
  v63 = v45;
  v64 = v48;
  v65 = v50;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v38 = sub_1BF014EDC(v36, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v40 = v39;

  return v40;
}

uint64_t sub_1BF1308D8(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v53 = a7;
  v54 = a8;
  v47 = a6;
  v45 = a5;
  v43 = a4;
  v41 = a3;
  v38 = a1;
  v65 = a9;
  v40 = *a2;
  v52 = a2;
  v42 = *a3;
  v44 = *a4;
  v46 = *a5;
  v12 = *a7;
  v48 = *a6;
  v49 = v12;
  v13 = *a9;
  v50 = *a8;
  v51 = v13;
  v37 = a12;
  v14 = *(a12 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a11 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19);
  (*(v14 + 16))(&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v38, a12);
  v20 = (*(v17 + 80) + 152) & ~*(v17 + 80);
  v38 = (v18 + *(v14 + 80) + v20) & ~*(v14 + 80);
  v21 = swift_allocObject();
  v22 = v40;
  *(v21 + 2) = a11;
  *(v21 + 3) = a12;
  v40 = *(v22 + 80);
  *(v21 + 4) = v40;
  v23 = v41;
  v42 = *(v42 + 80);
  *(v21 + 5) = v42;
  v24 = v43;
  v44 = *(v44 + 80);
  *(v21 + 6) = v44;
  v25 = v45;
  v46 = *(v46 + 80);
  *(v21 + 7) = v46;
  v26 = v47;
  v48 = *(v48 + 80);
  *(v21 + 8) = v48;
  v27 = v53;
  v49 = *(v49 + 80);
  *(v21 + 9) = v49;
  v28 = v54;
  v50 = *(v50 + 80);
  *(v21 + 10) = v50;
  v29 = v65;
  v51 = *(v51 + 80);
  *(v21 + 11) = v51;
  *(v21 + 12) = v23;
  *(v21 + 13) = v24;
  *(v21 + 14) = v25;
  *(v21 + 15) = v26;
  *(v21 + 16) = v27;
  *(v21 + 17) = v28;
  *(v21 + 18) = v29;
  (*(v17 + 32))(&v21[v20], v19);
  v30 = v37;
  (*(v14 + 32))(&v21[v38], v39, v37);

  v55 = a11;
  v56 = v30;
  v31 = v40;
  v57 = v40;
  v58 = v42;
  v59 = v44;
  v60 = v46;
  v61 = v48;
  v62 = v49;
  v63 = v50;
  v64 = v51;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v33 = sub_1BF014EDC(v31, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v35 = v34;

  return v35;
}

uint64_t sub_1BF130D58(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v62 = a5;
  v64 = a7;
  v65 = a8;
  v63 = a6;
  v56 = a4;
  v54 = a3;
  v76 = a2;
  v52 = a1;
  v51 = a10;
  v47 = a13;
  v53 = *a2;
  v55 = *a3;
  v13 = *a5;
  v57 = *a4;
  v58 = v13;
  v14 = *a7;
  v59 = *a6;
  v60 = v14;
  v61 = *a8;
  v15 = *(a13 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v50 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a12 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v49 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v48 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))();
  (*(v18 + 16))(&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v51, a12);
  v46 = v15;
  v24 = v47;
  (*(v15 + 16))(&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v52, v47);
  v25 = (*(v22 + 80) + 144) & ~*(v22 + 80);
  v26 = (v23 + *(v18 + 80) + v25) & ~*(v18 + 80);
  v52 = (v19 + *(v15 + 80) + v26) & ~*(v15 + 80);
  v27 = swift_allocObject();
  v28 = v53;
  v29 = v45;
  *(v27 + 2) = v45;
  *(v27 + 3) = a12;
  *(v27 + 4) = v24;
  v53 = *(v28 + 80);
  *(v27 + 5) = v53;
  v30 = v54;
  v55 = *(v55 + 80);
  *(v27 + 6) = v55;
  v31 = v56;
  v57 = *(v57 + 80);
  *(v27 + 7) = v57;
  v33 = v62;
  v32 = v63;
  v58 = *(v58 + 80);
  *(v27 + 8) = v58;
  v59 = *(v59 + 80);
  *(v27 + 9) = v59;
  v34 = v64;
  v60 = *(v60 + 80);
  *(v27 + 10) = v60;
  v35 = v65;
  v61 = *(v61 + 80);
  *(v27 + 11) = v61;
  *(v27 + 12) = v30;
  *(v27 + 13) = v31;
  *(v27 + 14) = v33;
  *(v27 + 15) = v32;
  *(v27 + 16) = v34;
  *(v27 + 17) = v35;
  v36 = &v27[v25];
  v37 = v29;
  (*(v22 + 32))(v36, v48);
  (*(v18 + 32))(&v27[v26], v49, a12);
  (*(v46 + 32))(&v27[v52], v50, v24);

  v66 = v37;
  v67 = a12;
  v38 = v53;
  v68 = v24;
  v69 = v53;
  v70 = v55;
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v74 = v60;
  v75 = v61;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v40 = sub_1BF014EDC(v38, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v42 = v41;

  return v42;
}

uint64_t sub_1BF131280(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v73 = a6;
  v74 = a7;
  v71 = a4;
  v72 = a5;
  v63 = a3;
  v85 = a2;
  v60 = a1;
  v59 = a10;
  v57 = a9;
  v58 = a14;
  v62 = *a2;
  v64 = *a3;
  v14 = *a5;
  v65 = *a4;
  v66 = v14;
  v15 = *a7;
  v67 = *a6;
  v68 = v15;
  v69 = *(a14 - 8);
  v61 = *(v69 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v70 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a13;
  v18 = *(a13 - 8);
  v53 = *(v18 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v21;
  v22 = *(a12 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v55 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v54 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))();
  v51 = v22;
  (*(v22 + 16))(&v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v57, a12);
  v52 = v18;
  (*(v18 + 16))(v21, v59, a13);
  v28 = v69;
  v29 = v58;
  (*(v69 + 16))(v70, v60, v58);
  v30 = (*(v26 + 80) + 136) & ~*(v26 + 80);
  v59 = (v27 + *(v22 + 80) + v30) & ~*(v22 + 80);
  v31 = (v23 + *(v18 + 80) + v59) & ~*(v18 + 80);
  v60 = (v53 + *(v28 + 80) + v31) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v33 = v62;
  v34 = v50;
  *(v32 + 2) = v50;
  *(v32 + 3) = a12;
  v35 = v49;
  *(v32 + 4) = v49;
  *(v32 + 5) = v29;
  v36 = *(v33 + 80);
  *(v32 + 6) = v36;
  v37 = v63;
  v64 = *(v64 + 80);
  *(v32 + 7) = v64;
  v39 = v71;
  v38 = v72;
  v65 = *(v65 + 80);
  *(v32 + 8) = v65;
  v66 = *(v66 + 80);
  *(v32 + 9) = v66;
  v40 = v73;
  v67 = *(v67 + 80);
  *(v32 + 10) = v67;
  v41 = v74;
  v68 = *(v68 + 80);
  *(v32 + 11) = v68;
  *(v32 + 12) = v37;
  *(v32 + 13) = v39;
  *(v32 + 14) = v38;
  *(v32 + 15) = v40;
  *(v32 + 16) = v41;
  v42 = &v32[v30];
  v43 = v34;
  (*(v26 + 32))(v42, v54);
  (*(v51 + 32))(&v32[v59], v55, a12);
  (*(v52 + 32))(&v32[v31], v56, v35);
  (*(v69 + 32))(&v32[v60], v70, v29);

  v75 = v43;
  v76 = a12;
  v77 = v35;
  v78 = v29;
  v79 = v36;
  v80 = v64;
  v81 = v65;
  v82 = v66;
  v83 = v67;
  v84 = v68;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v45 = sub_1BF014EDC(v36, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v47 = v46;

  return v47;
}

uint64_t sub_1BF131880(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v64 = a8;
  v81 = a5;
  v82 = a6;
  v79 = a3;
  v80 = a4;
  v93 = a2;
  v66 = a1;
  v65 = a10;
  v63 = a9;
  v76 = a15;
  v68 = *a2;
  v69 = *a3;
  v70 = *a4;
  v71 = *a5;
  v72 = *a6;
  v75 = *(a15 - 8);
  v67 = *(v75 + 64);
  v74 = a14;
  v15 = MEMORY[0x1EEE9AC00](a1);
  v78 = &v53 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(v16 - 8);
  v62 = *(v73 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v77 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a13;
  v19 = *(a13 - 8);
  v58 = *(v19 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v22;
  v55 = a12;
  v23 = *(a12 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v20);
  v60 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v59 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))();
  (*(v23 + 16))(&v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v64, a12);
  v56 = v19;
  (*(v19 + 16))(v22, v63, a13);
  v29 = v73;
  (*(v73 + 16))(v77, v65, v74);
  v31 = v75;
  v30 = v76;
  (*(v75 + 16))(v78, v66, v76);
  v32 = (*(v27 + 80) + 128) & ~*(v27 + 80);
  v63 = (v28 + *(v23 + 80) + v32) & ~*(v23 + 80);
  v64 = (v24 + *(v19 + 80) + v63) & ~*(v19 + 80);
  v66 = (v58 + *(v29 + 80) + v64) & ~*(v29 + 80);
  v65 = (v62 + *(v31 + 80) + v66) & ~*(v31 + 80);
  v33 = swift_allocObject();
  v34 = v68;
  v35 = v57;
  v36 = v55;
  *(v33 + 2) = v57;
  *(v33 + 3) = v36;
  v37 = v54;
  v38 = v74;
  *(v33 + 4) = v54;
  *(v33 + 5) = v38;
  *(v33 + 6) = v30;
  v39 = *(v34 + 80);
  *(v33 + 7) = v39;
  v40 = v79;
  v69 = *(v69 + 80);
  *(v33 + 8) = v69;
  v41 = v80;
  v70 = *(v70 + 80);
  *(v33 + 9) = v70;
  v42 = v81;
  v71 = *(v71 + 80);
  *(v33 + 10) = v71;
  v43 = v82;
  v72 = *(v72 + 80);
  *(v33 + 11) = v72;
  *(v33 + 12) = v40;
  *(v33 + 13) = v41;
  *(v33 + 14) = v42;
  *(v33 + 15) = v43;
  v44 = &v33[v32];
  v45 = v35;
  (*(v27 + 32))(v44, v59);
  v46 = v36;
  (*(v23 + 32))(&v33[v63], v60, v36);
  (*(v56 + 32))(&v33[v64], v61, v37);
  (*(v73 + 32))(&v33[v66], v77, v38);
  v47 = v76;
  (*(v75 + 32))(&v33[v65], v78, v76);

  v83 = v45;
  v84 = v46;
  v85 = v37;
  v86 = v38;
  v87 = v47;
  v88 = v39;
  v89 = v69;
  v90 = v70;
  v91 = v71;
  v92 = v72;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v49 = sub_1BF014EDC(v39, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v51 = v50;

  return v51;
}

uint64_t sub_1BF131F94(unint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v73 = a8;
  v70 = a7;
  v92 = a4;
  v93 = a5;
  v91 = a3;
  v104 = a2;
  v75 = a1;
  v74 = a10;
  v71 = a9;
  v85 = a15;
  v88 = a16;
  v77 = *a2;
  v78 = *a3;
  v79 = *a4;
  v80 = *a5;
  v87 = *(a16 - 8);
  v76 = *(v87 + 64);
  v83 = a14;
  v16 = MEMORY[0x1EEE9AC00](v76);
  v90 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v17 - 8);
  v72 = *(v84 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v89 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v20 - 8);
  v69 = *(v82 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v86 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a13;
  v23 = *(a13 - 8);
  v65 = *(v23 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v26;
  v63 = a12;
  v27 = *(a12 - 8);
  v64 = *(v27 + 64);
  v28 = MEMORY[0x1EEE9AC00](v24);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v30;
  v81 = a11;
  v31 = *(a11 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v66 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v31;
  (*(v31 + 16))();
  v60 = v27;
  (*(v27 + 16))(v30, v70, a12);
  v62 = v23;
  (*(v23 + 16))(v26, v73, a13);
  v33 = v82;
  (*(v82 + 16))(v86, v71, v83);
  v34 = v84;
  v35 = v85;
  (*(v84 + 16))(v89, v74, v85);
  v37 = v87;
  v36 = v88;
  (*(v87 + 16))(v90, v75, v88);
  v71 = (*(v31 + 80) + 120) & ~*(v31 + 80);
  v38 = (v32 + *(v27 + 80) + v71) & ~*(v27 + 80);
  v39 = (v64 + *(v23 + 80) + v38) & ~*(v23 + 80);
  v73 = (v65 + *(v33 + 80) + v39) & ~*(v33 + 80);
  v75 = (v69 + *(v34 + 80) + v73) & ~*(v34 + 80);
  v74 = (v72 + *(v37 + 80) + v75) & ~*(v37 + 80);
  v40 = swift_allocObject();
  v41 = v77;
  v42 = v63;
  *(v40 + 2) = v81;
  *(v40 + 3) = v42;
  v43 = v61;
  v44 = v83;
  *(v40 + 4) = v61;
  *(v40 + 5) = v44;
  *(v40 + 6) = v35;
  *(v40 + 7) = v36;
  v45 = *(v41 + 80);
  *(v40 + 8) = v45;
  v46 = v91;
  v78 = *(v78 + 80);
  *(v40 + 9) = v78;
  v47 = v92;
  v79 = *(v79 + 80);
  *(v40 + 10) = v79;
  v48 = v93;
  v49 = *(v80 + 80);
  *(v40 + 11) = v49;
  *(v40 + 12) = v46;
  *(v40 + 13) = v47;
  *(v40 + 14) = v48;
  (*(v59 + 32))(&v40[v71], v66);
  (*(v60 + 32))(&v40[v38], v67, v42);
  v50 = v43;
  (*(v62 + 32))(&v40[v39], v68, v43);
  (*(v82 + 32))(&v40[v73], v86, v44);
  v51 = v85;
  (*(v84 + 32))(&v40[v75], v89, v85);
  v52 = v88;
  (*(v87 + 32))(&v40[v74], v90, v88);

  v94 = v81;
  v95 = v42;
  v96 = v50;
  v97 = v44;
  v98 = v51;
  v99 = v52;
  v100 = v45;
  v101 = v78;
  v102 = v79;
  v103 = v49;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v54 = sub_1BF014EDC(v45, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v56 = v55;

  return v56;
}

uint64_t sub_1BF132784(unint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v85 = a8;
  v83 = a7;
  v82 = a6;
  v105 = a3;
  v106 = a4;
  v117 = a2;
  v88 = a1;
  v87 = a10;
  v84 = a9;
  v98 = a14;
  v103 = a17;
  v90 = *a2;
  v91 = *a3;
  v92 = *a4;
  v101 = *(a17 - 8);
  v89 = *(v101 + 64);
  v95 = a15;
  v99 = a16;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v104 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(v19 - 8);
  v86 = *(v97 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v102 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = *(v22 - 8);
  v81 = *(v93 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v100 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 - 8);
  v80 = *(v26 + 64);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v96 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a13;
  v29 = *(a13 - 8);
  v76 = *(v29 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v32;
  v74 = a12;
  v33 = *(a12 - 8);
  v73 = *(v33 + 64);
  v34 = MEMORY[0x1EEE9AC00](v30);
  v36 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v36;
  v75 = v37;
  v94 = *(v37 - 8);
  v38 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v77 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 16))();
  v69 = v33;
  (*(v33 + 16))(v36, v82, a12);
  v70 = v29;
  (*(v29 + 16))(v32, v83, a13);
  v71 = v26;
  (*(v26 + 16))(v96, v85, v98);
  v40 = v93;
  v41 = v95;
  (*(v93 + 16))(v100, v84, v95);
  v42 = v97;
  (*(v97 + 16))(v102, v87, v99);
  v43 = v101;
  v44 = v103;
  (*(v101 + 16))(v104, v88, v103);
  v83 = (*(v94 + 80) + 112) & ~*(v94 + 80);
  v84 = (v38 + *(v33 + 80) + v83) & ~*(v33 + 80);
  v85 = (v73 + *(v29 + 80) + v84) & ~*(v29 + 80);
  v45 = *(v40 + 80);
  v46 = (v76 + *(v26 + 80) + v85) & ~*(v26 + 80);
  v47 = (v80 + v45 + v46) & ~v45;
  v88 = (v81 + *(v42 + 80) + v47) & ~*(v42 + 80);
  v87 = (v86 + *(v43 + 80) + v88) & ~*(v43 + 80);
  v48 = swift_allocObject();
  v49 = v90;
  v50 = v75;
  v51 = v74;
  *(v48 + 2) = v75;
  *(v48 + 3) = v51;
  v52 = v72;
  v53 = v98;
  v54 = v99;
  *(v48 + 4) = v72;
  *(v48 + 5) = v53;
  *(v48 + 6) = v41;
  *(v48 + 7) = v54;
  *(v48 + 8) = v44;
  v55 = *(v49 + 80);
  *(v48 + 9) = v55;
  v56 = v105;
  v91 = *(v91 + 80);
  *(v48 + 10) = v91;
  v57 = v106;
  v92 = *(v92 + 80);
  *(v48 + 11) = v92;
  *(v48 + 12) = v56;
  *(v48 + 13) = v57;
  v58 = v50;
  (*(v94 + 32))(&v48[v83], v77);
  (*(v69 + 32))(&v48[v84], v78, v51);
  (*(v70 + 32))(&v48[v85], v79, v52);
  v59 = &v48[v46];
  v60 = v53;
  (*(v71 + 32))(v59, v96, v53);
  v61 = &v48[v47];
  v62 = v95;
  (*(v93 + 32))(v61, v100, v95);
  (*(v97 + 32))(&v48[v88], v102, v54);
  v63 = v103;
  (*(v101 + 32))(&v48[v87], v104, v103);

  v107 = v58;
  v108 = v51;
  v109 = v52;
  v110 = v60;
  v111 = v62;
  v112 = v54;
  v113 = v63;
  v114 = v55;
  v115 = v91;
  v116 = v92;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v65 = sub_1BF014EDC(v55, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v67 = v66;

  return v67;
}

uint64_t sub_1BF133064(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v87 = a8;
  v85 = a7;
  v83 = a6;
  v82 = a5;
  v111 = a3;
  v122 = a2;
  v90 = a1;
  v88 = a10;
  v86 = a9;
  v101 = a14;
  v104 = a17;
  v108 = a18;
  v92 = *a2;
  v93 = *a3;
  v107 = *(a18 - 8);
  v91 = *(v107 + 64);
  v105 = a15;
  v100 = a16;
  v18 = MEMORY[0x1EEE9AC00](a1);
  v110 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *(v20 - 8);
  v89 = *(v102 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v109 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(v23 - 8);
  v84 = *(v98 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v106 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(v26 - 8);
  v81 = *(v95 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v103 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v29 - 8);
  v80 = *(v30 + 64);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v99 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a13;
  v33 = *(a13 - 8);
  v76 = *(v33 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v36;
  v75 = a12;
  v97 = *(a12 - 8);
  v37 = v97;
  v73 = *(v97 + 64);
  v38 = MEMORY[0x1EEE9AC00](v34);
  v40 = &v70 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v40;
  v94 = v41;
  v96 = *(v41 - 8);
  v42 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v77 = &v70 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))();
  (*(v37 + 16))(v40, v82, a12);
  v44 = v33;
  v71 = v33;
  (*(v33 + 16))(v36, v83, a13);
  v72 = v30;
  (*(v30 + 16))(v99, v85, v101);
  v45 = v95;
  (*(v95 + 16))(v103, v87, v105);
  v46 = v98;
  v47 = v100;
  (*(v98 + 16))(v106, v86, v100);
  v48 = v102;
  (*(v102 + 16))(v109, v88, v104);
  v50 = v107;
  v49 = v108;
  (*(v107 + 16))(v110, v90, v108);
  v83 = (*(v96 + 80) + 104) & ~*(v96 + 80);
  v85 = (v42 + *(v97 + 80) + v83) & ~*(v97 + 80);
  v86 = (v73 + *(v44 + 80) + v85) & ~*(v44 + 80);
  v87 = (v76 + *(v30 + 80) + v86) & ~*(v30 + 80);
  v88 = (v80 + *(v45 + 80) + v87) & ~*(v45 + 80);
  v51 = (v81 + *(v46 + 80) + v88) & ~*(v46 + 80);
  v90 = (v84 + *(v48 + 80) + v51) & ~*(v48 + 80);
  v89 = (v89 + *(v50 + 80) + v90) & ~*(v50 + 80);
  v52 = swift_allocObject();
  v53 = v92;
  v54 = v75;
  *(v52 + 2) = v94;
  *(v52 + 3) = v54;
  v55 = v74;
  v56 = v101;
  *(v52 + 4) = v74;
  *(v52 + 5) = v56;
  v58 = v104;
  v57 = v105;
  *(v52 + 6) = v105;
  *(v52 + 7) = v47;
  *(v52 + 8) = v58;
  *(v52 + 9) = v49;
  v59 = *(v53 + 80);
  *(v52 + 10) = v59;
  v60 = v111;
  v93 = *(v93 + 80);
  *(v52 + 11) = v93;
  *(v52 + 12) = v60;
  (*(v96 + 32))(&v52[v83], v77);
  (*(v97 + 32))(&v52[v85], v78, v54);
  (*(v71 + 32))(&v52[v86], v79, v55);
  (*(v72 + 32))(&v52[v87], v99, v56);
  v61 = v57;
  (*(v95 + 32))(&v52[v88], v103, v57);
  v62 = &v52[v51];
  v63 = v100;
  (*(v98 + 32))(v62, v106, v100);
  (*(v102 + 32))(&v52[v90], v109, v58);
  v64 = v108;
  (*(v107 + 32))(&v52[v89], v110, v108);

  v112 = v94;
  v113 = v54;
  v114 = v55;
  v115 = v56;
  v116 = v61;
  v117 = v63;
  v118 = v58;
  v119 = v64;
  v120 = v59;
  v121 = v93;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v66 = sub_1BF014EDC(v59, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v68 = v67;

  return v68;
}

uint64_t sub_1BF133A24(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v94 = a8;
  v92 = a7;
  v90 = a6;
  v89 = a5;
  v87 = a4;
  v120 = a2;
  v97 = a1;
  v95 = a10;
  v93 = a9;
  v109 = a14;
  v112 = a15;
  v114 = a16;
  v116 = a19;
  v99 = *a2;
  v115 = *(a19 - 8);
  v98 = *(v115 + 64);
  v108 = a17;
  v131 = a18;
  v19 = MEMORY[0x1EEE9AC00](a1);
  v119 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = *(v21 - 8);
  v96 = *(v110 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v118 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(v24 - 8);
  v91 = *(v107 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v117 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *(v27 - 8);
  v88 = *(v106 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v113 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *(v30 - 8);
  v86 = *(v100 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v111 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v33 - 8);
  v85 = *(v34 + 64);
  v35 = MEMORY[0x1EEE9AC00](v31);
  v37 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v37;
  v79 = a13;
  v105 = *(a13 - 8);
  v38 = v105;
  v80 = *(v105 + 64);
  v39 = MEMORY[0x1EEE9AC00](v35);
  v41 = &v77 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v41;
  v101 = a12;
  v104 = *(a12 - 8);
  v42 = v104;
  v78 = *(v104 + 64);
  v43 = MEMORY[0x1EEE9AC00](v39);
  v45 = &v77 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v45;
  v102 = v46;
  v103 = *(v46 - 8);
  v47 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v81 = &v77 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v48 + 16))();
  (*(v42 + 16))(v45, v87, a12);
  (*(v38 + 16))(v41, v89, a13);
  v49 = v34;
  v77 = v34;
  (*(v34 + 16))(v37, v90, v109);
  v50 = v100;
  (*(v100 + 16))(v111, v92, v112);
  v51 = v106;
  (*(v106 + 16))(v113, v94, v114);
  v52 = v107;
  v53 = v108;
  (*(v107 + 16))(v117, v93, v108);
  v54 = v110;
  (*(v110 + 16))(v118, v95, v131);
  v56 = v115;
  v55 = v116;
  (*(v115 + 16))(v119, v97, v116);
  v89 = (*(v103 + 80) + 96) & ~*(v103 + 80);
  v90 = (v47 + *(v104 + 80) + v89) & ~*(v104 + 80);
  v92 = (v78 + *(v105 + 80) + v90) & ~*(v105 + 80);
  v93 = (v80 + *(v49 + 80) + v92) & ~*(v49 + 80);
  v94 = (v85 + *(v50 + 80) + v93) & ~*(v50 + 80);
  v95 = (v86 + *(v51 + 80) + v94) & ~*(v51 + 80);
  v57 = (v88 + *(v52 + 80) + v95) & ~*(v52 + 80);
  v97 = (v91 + *(v54 + 80) + v57) & ~*(v54 + 80);
  v96 = (v96 + *(v56 + 80) + v97) & ~*(v56 + 80);
  v58 = swift_allocObject();
  v59 = v101;
  *(v58 + 2) = v102;
  *(v58 + 3) = v59;
  v60 = v79;
  v61 = v109;
  *(v58 + 4) = v79;
  *(v58 + 5) = v61;
  v62 = v112;
  v63 = v114;
  *(v58 + 6) = v112;
  *(v58 + 7) = v63;
  v64 = v131;
  *(v58 + 8) = v53;
  *(v58 + 9) = v64;
  *(v58 + 10) = v55;
  v65 = *(v99 + 80);
  *(v58 + 11) = v65;
  (*(v103 + 32))(&v58[v89], v81);
  (*(v104 + 32))(&v58[v90], v82, v59);
  (*(v105 + 32))(&v58[v92], v83, v60);
  (*(v77 + 32))(&v58[v93], v84, v61);
  v66 = v62;
  (*(v100 + 32))(&v58[v94], v111, v62);
  v67 = v63;
  (*(v106 + 32))(&v58[v95], v113, v63);
  v68 = &v58[v57];
  v69 = v108;
  (*(v107 + 32))(v68, v117, v108);
  v70 = v131;
  (*(v110 + 32))(&v58[v97], v118, v131);
  v71 = v116;
  (*(v115 + 32))(&v58[v96], v119, v116);
  v121 = v102;
  v122 = v101;
  v123 = v60;
  v124 = v61;
  v125 = v66;
  v126 = v67;
  v127 = v69;
  v128 = v70;
  v129 = v71;
  v130 = v65;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v73 = sub_1BF014EDC(v65, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v75 = v74;

  return v75;
}

uint64_t sub_1BF1344C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v23 = TupleTypeMetadata[12];
  v24 = TupleTypeMetadata[16];
  v26 = TupleTypeMetadata[20];
  v28 = TupleTypeMetadata[24];
  v30 = TupleTypeMetadata[28];
  v31 = TupleTypeMetadata[32];
  v33 = TupleTypeMetadata[36];
  v35 = TupleTypeMetadata[40];
  v37 = TupleTypeMetadata[44];
  (*(*(a12 - 8) + 16))(a9, a2, a12);
  (*(*(a13 - 8) + 16))(a9 + v23, a3, a13);
  (*(*(a14 - 8) + 16))(a9 + v24, a4, a14);
  (*(*(a15 - 8) + 16))(a9 + v26, a5, a15);
  (*(*(a16 - 8) + 16))(a9 + v28, a6, a16);
  (*(*(a17 - 8) + 16))(a9 + v30, a7, a17);
  (*(*(a18 - 8) + 16))(a9 + v31, a8);
  (*(*(a19 - 8) + 16))(a9 + v33, a10);
  (*(*(a20 - 8) + 16))(a9 + v35, a11);
  return (*(*(a21 - 8) + 16))(a9 + v37, a1);
}

uint64_t *combine<A, B, C, D, E, F, G, H, I, J, K>(_:_:_:_:_:_:_:_:_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v17 = *a1;
  v24 = *a2;
  v25 = *a3;
  v26 = *a4;
  v27 = *a5;
  v28 = *a6;
  v29 = *a7;
  v30 = *a8;
  v31 = *a9;
  v32 = *a10;
  v33 = *a11;
  swift_allocObject();
  OUTLINED_FUNCTION_116_1();
  v23 = *(v18 + 80);
  v19[2] = v23;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = a6;
  v19[8] = a7;
  v19[9] = a8;
  v19[10] = a9;
  v19[11] = a10;
  v19[12] = a11;

  v36 = *(v24 + 80);
  v37 = *(v25 + 80);
  v38 = *(v26 + 80);
  v39 = *(v27 + 80);
  v40 = *(v28 + 80);
  v41 = *(v29 + 80);
  v42 = *(v30 + 80);
  v43 = *(v31 + 80);
  v44 = *(v32 + 80);
  v45 = *(v33 + 80);
  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v21 = sub_1BF014EDC(v23, TupleTypeMetadata);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_155();

  return a1;
}

uint64_t sub_1BF134AAC(uint64_t a1, void *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12)
{
  v49 = a8;
  v48 = a7;
  v74 = a11;
  v61 = a9;
  v62 = a10;
  v59 = *a2;
  v60 = a2;
  v14 = *a3;
  v57 = *a4;
  v58 = v14;
  v16 = *a5;
  v55 = *a6;
  v56 = v16;
  v53 = *a7;
  v51 = *a8;
  v50 = *a9;
  v52 = *a10;
  v54 = *a11;
  v18 = *(a12 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v18 + 16))(&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v20, a12);
  v47 = (*(v18 + 80) + 176) & ~*(v18 + 80);
  v21 = swift_allocObject();
  v22 = v59;
  *(v21 + 2) = a12;
  v59 = *(v22 + 80);
  v23 = v58;
  *(v21 + 3) = v59;
  v58 = *(v23 + 80);
  v24 = v57;
  *(v21 + 4) = v58;
  v25 = a4;
  v57 = *(v24 + 80);
  v26 = v56;
  *(v21 + 5) = v57;
  v27 = a5;
  v56 = *(v26 + 80);
  v28 = v55;
  *(v21 + 6) = v56;
  v29 = a6;
  v55 = *(v28 + 80);
  v30 = v53;
  *(v21 + 7) = v55;
  v31 = v48;
  v53 = *(v30 + 80);
  v32 = v51;
  *(v21 + 8) = v53;
  v33 = v49;
  v51 = *(v32 + 80);
  v34 = v50;
  *(v21 + 9) = v51;
  v35 = v61;
  v50 = *(v34 + 80);
  v36 = v52;
  *(v21 + 10) = v50;
  v37 = v62;
  v52 = *(v36 + 80);
  v38 = v54;
  *(v21 + 11) = v52;
  v39 = v74;
  v54 = *(v38 + 80);
  *(v21 + 12) = v54;
  *(v21 + 13) = a3;
  *(v21 + 14) = v25;
  *(v21 + 15) = v27;
  *(v21 + 16) = v29;
  *(v21 + 17) = v31;
  *(v21 + 18) = v33;
  *(v21 + 19) = v35;
  *(v21 + 20) = v37;
  *(v21 + 21) = v39;
  (*(v18 + 32))(&v21[v47], &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a12);

  v40 = v59;
  v63 = a12;
  v64 = v59;
  v65 = v58;
  v66 = v57;
  v67 = v56;
  v68 = v55;
  v69 = v53;
  v70 = v51;
  v71 = v50;
  v72 = v52;
  v73 = v54;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v42 = sub_1BF014EDC(v40, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v44 = v43;

  return v44;
}

uint64_t sub_1BF134EFC(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v58 = a8;
  v52 = a7;
  v50 = a6;
  v48 = a5;
  v46 = a4;
  v44 = a3;
  v41 = a1;
  v71 = a10;
  v59 = a9;
  v43 = *a2;
  v57 = a2;
  v45 = *a3;
  v47 = *a4;
  v49 = *a5;
  v51 = *a6;
  v13 = *a8;
  v53 = *a7;
  v54 = v13;
  v14 = *a10;
  v55 = *a9;
  v56 = v14;
  v15 = *(a13 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v42 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a12 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20);
  v21 = *(v15 + 16);
  v39 = a13;
  v21(&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v41, a13);
  v40 = (*(v18 + 80) + 168) & ~*(v18 + 80);
  v41 = (v19 + *(v15 + 80) + v40) & ~*(v15 + 80);
  v22 = swift_allocObject();
  v23 = v43;
  *(v22 + 2) = a12;
  *(v22 + 3) = a13;
  v43 = *(v23 + 80);
  *(v22 + 4) = v43;
  v24 = v44;
  v45 = *(v45 + 80);
  *(v22 + 5) = v45;
  v25 = v46;
  v47 = *(v47 + 80);
  *(v22 + 6) = v47;
  v26 = v48;
  v49 = *(v49 + 80);
  *(v22 + 7) = v49;
  v27 = v52;
  v28 = v50;
  v51 = *(v51 + 80);
  *(v22 + 8) = v51;
  v53 = *(v53 + 80);
  *(v22 + 9) = v53;
  v29 = v58;
  v30 = v59;
  v54 = *(v54 + 80);
  *(v22 + 10) = v54;
  v55 = *(v55 + 80);
  *(v22 + 11) = v55;
  v31 = v71;
  v56 = *(v56 + 80);
  *(v22 + 12) = v56;
  *(v22 + 13) = v24;
  *(v22 + 14) = v25;
  *(v22 + 15) = v26;
  *(v22 + 16) = v28;
  *(v22 + 17) = v27;
  *(v22 + 18) = v29;
  *(v22 + 19) = v30;
  *(v22 + 20) = v31;
  (*(v18 + 32))(&v22[v40], v20);
  v32 = v39;
  (*(v15 + 32))(&v22[v41], v42, v39);

  v60 = a12;
  v61 = v32;
  v33 = v43;
  v62 = v43;
  v63 = v45;
  v64 = v47;
  v65 = v49;
  v66 = v51;
  v67 = v53;
  v68 = v54;
  v69 = v55;
  v70 = v56;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v35 = sub_1BF014EDC(v33, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v37 = v36;

  return v37;
}

uint64_t sub_1BF1353E8(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v69 = a7;
  v70 = a8;
  v63 = a6;
  v61 = a5;
  v59 = a4;
  v57 = a3;
  v83 = a2;
  v55 = a1;
  v68 = a14;
  v71 = a9;
  v56 = *a2;
  v58 = *a3;
  v60 = *a4;
  v62 = *a5;
  v14 = *a7;
  v64 = *a6;
  v65 = v14;
  v15 = *a9;
  v66 = *a8;
  v67 = v15;
  v16 = *(a14 - 8);
  v17 = *(v16 + 64);
  v50 = a11;
  v18 = MEMORY[0x1EEE9AC00](a1);
  v54 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a13 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v53 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v52 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))();
  v25 = *(v19 + 16);
  v49 = a13;
  v25(&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v50, a13);
  v51 = v16;
  v26 = v68;
  (*(v16 + 16))(&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v55, v68);
  v27 = (*(v23 + 80) + 160) & ~*(v23 + 80);
  v50 = (v24 + *(v19 + 80) + v27) & ~*(v19 + 80);
  v55 = (v20 + *(v16 + 80) + v50) & ~*(v16 + 80);
  v28 = swift_allocObject();
  v29 = v56;
  v30 = v48;
  *(v28 + 2) = v48;
  *(v28 + 3) = a13;
  *(v28 + 4) = v26;
  v56 = *(v29 + 80);
  *(v28 + 5) = v56;
  v31 = v57;
  v58 = *(v58 + 80);
  *(v28 + 6) = v58;
  v32 = v59;
  v60 = *(v60 + 80);
  *(v28 + 7) = v60;
  v33 = v61;
  v62 = *(v62 + 80);
  *(v28 + 8) = v62;
  v34 = v63;
  v64 = *(v64 + 80);
  *(v28 + 9) = v64;
  v35 = v69;
  v65 = *(v65 + 80);
  *(v28 + 10) = v65;
  v36 = v70;
  v66 = *(v66 + 80);
  *(v28 + 11) = v66;
  v37 = v71;
  v67 = *(v67 + 80);
  *(v28 + 12) = v67;
  *(v28 + 13) = v31;
  *(v28 + 14) = v32;
  *(v28 + 15) = v33;
  *(v28 + 16) = v34;
  *(v28 + 17) = v35;
  *(v28 + 18) = v36;
  *(v28 + 19) = v37;
  v38 = v30;
  (*(v23 + 32))(&v28[v27], v52);
  v39 = v49;
  (*(v19 + 32))(&v28[v50], v53, v49);
  v40 = v68;
  (*(v51 + 32))(&v28[v55], v54, v68);

  v72 = v38;
  v73 = v39;
  v41 = v56;
  v74 = v40;
  v75 = v56;
  v76 = v58;
  v77 = v60;
  v78 = v62;
  v79 = v64;
  v80 = v65;
  v81 = v66;
  v82 = v67;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v43 = sub_1BF014EDC(v41, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v45 = v44;

  return v45;
}

uint64_t sub_1BF1359A4(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v79 = a7;
  v80 = a8;
  v77 = a5;
  v78 = a6;
  v69 = a4;
  v67 = a3;
  v92 = a2;
  v65 = a1;
  v61 = a10;
  v63 = a11;
  v62 = a15;
  v66 = *a2;
  v68 = *a3;
  v70 = *a4;
  v71 = *a5;
  v15 = *a7;
  v72 = *a6;
  v73 = v15;
  v74 = *a8;
  v75 = *(a15 - 8);
  v64 = *(v75 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v76 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a14 - 8);
  v57 = *(v18 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v21;
  v54 = a13;
  v22 = *(a13 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v59 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v58 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))();
  (*(v22 + 16))(&v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v61, a13);
  v56 = v18;
  v28 = *(v18 + 16);
  v53 = a14;
  v28(v21, v63, a14);
  v29 = v75;
  v30 = v62;
  (*(v75 + 16))(v76, v65, v62);
  v31 = (*(v26 + 80) + 152) & ~*(v26 + 80);
  v63 = (v27 + *(v22 + 80) + v31) & ~*(v22 + 80);
  v32 = (v23 + *(v18 + 80) + v63) & ~*(v18 + 80);
  v65 = (v57 + *(v29 + 80) + v32) & ~*(v29 + 80);
  v33 = swift_allocObject();
  v34 = v66;
  v35 = v55;
  v36 = v54;
  *(v33 + 2) = v55;
  *(v33 + 3) = v36;
  *(v33 + 4) = a14;
  *(v33 + 5) = v30;
  v66 = *(v34 + 80);
  *(v33 + 6) = v66;
  v37 = v67;
  v68 = *(v68 + 80);
  *(v33 + 7) = v68;
  v38 = v69;
  v70 = *(v70 + 80);
  *(v33 + 8) = v70;
  v39 = v77;
  v71 = *(v71 + 80);
  *(v33 + 9) = v71;
  v41 = v78;
  v40 = v79;
  v72 = *(v72 + 80);
  *(v33 + 10) = v72;
  v73 = *(v73 + 80);
  *(v33 + 11) = v73;
  v42 = v80;
  v74 = *(v74 + 80);
  *(v33 + 12) = v74;
  *(v33 + 13) = v37;
  *(v33 + 14) = v38;
  *(v33 + 15) = v39;
  *(v33 + 16) = v41;
  *(v33 + 17) = v40;
  *(v33 + 18) = v42;
  v43 = &v33[v31];
  v44 = v35;
  (*(v26 + 32))(v43, v58);
  (*(v22 + 32))(&v33[v63], v59, v36);
  v45 = v53;
  (*(v56 + 32))(&v33[v32], v60, v53);
  (*(v75 + 32))(&v33[v65], v76, v30);

  v81 = v44;
  v82 = v36;
  v83 = v45;
  v84 = v30;
  v46 = v66;
  v85 = v66;
  v86 = v68;
  v87 = v70;
  v88 = v71;
  v89 = v72;
  v90 = v73;
  v91 = v74;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v48 = sub_1BF014EDC(v46, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v50 = v49;

  return v50;
}

uint64_t sub_1BF136028(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v90 = a6;
  v91 = a7;
  v88 = a4;
  v89 = a5;
  v87 = a3;
  v103 = a2;
  v73 = a1;
  v70 = a10;
  v68 = a9;
  v71 = a11;
  v82 = a15;
  v85 = a16;
  v74 = *a2;
  v75 = *a3;
  v76 = *a4;
  v77 = *a5;
  v78 = *a6;
  v79 = *a7;
  v84 = *(a16 - 8);
  v72 = *(v84 + 64);
  v83 = a13;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v86 = &v59 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v17 - 8);
  v69 = *(v81 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v20;
  v60 = a14;
  v21 = *(a14 - 8);
  v63 = *(v21 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v24;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v22);
  v65 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v64 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))();
  v61 = v26;
  (*(v26 + 16))(&v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v68, v83);
  v62 = v21;
  (*(v21 + 16))(v24, v70, a14);
  v32 = v81;
  v33 = v20;
  v34 = v82;
  (*(v81 + 16))(v33, v71, v82);
  v36 = v84;
  v35 = v85;
  (*(v84 + 16))(v86, v73, v85);
  v71 = (*(v30 + 80) + 144) & ~*(v30 + 80);
  v37 = (v31 + *(v26 + 80) + v71) & ~*(v26 + 80);
  v38 = (v27 + *(v21 + 80) + v37) & ~*(v21 + 80);
  v39 = (v63 + *(v32 + 80) + v38) & ~*(v32 + 80);
  v73 = (v69 + *(v36 + 80) + v39) & ~*(v36 + 80);
  v40 = swift_allocObject();
  v41 = v74;
  v42 = v83;
  *(v40 + 2) = v80;
  *(v40 + 3) = v42;
  v43 = v60;
  *(v40 + 4) = v60;
  *(v40 + 5) = v34;
  *(v40 + 6) = v35;
  v44 = *(v41 + 80);
  *(v40 + 7) = v44;
  v45 = v87;
  v75 = *(v75 + 80);
  *(v40 + 8) = v75;
  v46 = v88;
  v76 = *(v76 + 80);
  *(v40 + 9) = v76;
  v47 = v89;
  v77 = *(v77 + 80);
  *(v40 + 10) = v77;
  v48 = v90;
  v78 = *(v78 + 80);
  *(v40 + 11) = v78;
  v49 = v91;
  v50 = *(v79 + 80);
  *(v40 + 12) = v50;
  *(v40 + 13) = v45;
  *(v40 + 14) = v46;
  *(v40 + 15) = v47;
  *(v40 + 16) = v48;
  *(v40 + 17) = v49;
  (*(v30 + 32))(&v40[v71], v64);
  (*(v61 + 32))(&v40[v37], v65, v42);
  (*(v62 + 32))(&v40[v38], v66, v43);
  v51 = &v40[v39];
  v52 = v82;
  (*(v81 + 32))(v51, v67, v82);
  v53 = v85;
  (*(v84 + 32))(&v40[v73], v86, v85);

  v92 = v80;
  v93 = v42;
  v94 = v43;
  v95 = v52;
  v96 = v53;
  v97 = v44;
  v98 = v75;
  v99 = v76;
  v100 = v77;
  v101 = v78;
  v102 = v50;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v55 = sub_1BF014EDC(v44, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v57 = v56;

  return v57;
}

uint64_t sub_1BF136788(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v72 = a8;
  v94 = a5;
  v95 = a6;
  v92 = a3;
  v93 = a4;
  v107 = a2;
  v76 = a1;
  v74 = a10;
  v71 = a9;
  v75 = a11;
  v89 = a17;
  v78 = *a2;
  v79 = *a3;
  v80 = *a4;
  v81 = *a5;
  v82 = *a6;
  v88 = *(a17 - 8);
  v77 = *(v88 + 64);
  v85 = a15;
  v69 = a16;
  v17 = MEMORY[0x1EEE9AC00](v77);
  v91 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(v18 - 8);
  v73 = *(v86 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v90 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v21 - 8);
  v70 = *(v84 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v87 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a14;
  v24 = *(a14 - 8);
  v65 = *(v24 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v27;
  v63 = a13;
  v28 = *(a13 - 8);
  v64 = *(v28 + 64);
  v29 = MEMORY[0x1EEE9AC00](v25);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v31;
  v83 = a12;
  v32 = *(a12 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v66 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))();
  v61 = v28;
  (*(v28 + 16))(v31, v72, a13);
  v62 = v24;
  (*(v24 + 16))(v27, v71, a14);
  v34 = v84;
  (*(v84 + 16))(v87, v74, v85);
  v35 = v86;
  v36 = v69;
  (*(v86 + 16))(v90, v75, v69);
  v37 = v88;
  v38 = v89;
  (*(v88 + 16))(v91, v76, v89);
  v71 = (*(v32 + 80) + 136) & ~*(v32 + 80);
  v39 = (v33 + *(v28 + 80) + v71) & ~*(v28 + 80);
  v72 = (v64 + *(v24 + 80) + v39) & ~*(v24 + 80);
  v74 = (v65 + *(v34 + 80) + v72) & ~*(v34 + 80);
  v76 = (v70 + *(v35 + 80) + v74) & ~*(v35 + 80);
  v75 = (v73 + *(v37 + 80) + v76) & ~*(v37 + 80);
  v40 = swift_allocObject();
  v41 = v78;
  v42 = v63;
  *(v40 + 2) = v83;
  *(v40 + 3) = v42;
  v43 = v60;
  v44 = v85;
  *(v40 + 4) = v60;
  *(v40 + 5) = v44;
  *(v40 + 6) = v36;
  *(v40 + 7) = v38;
  v45 = *(v41 + 80);
  *(v40 + 8) = v45;
  v46 = v92;
  v79 = *(v79 + 80);
  *(v40 + 9) = v79;
  v47 = v93;
  v80 = *(v80 + 80);
  *(v40 + 10) = v80;
  v48 = v94;
  v81 = *(v81 + 80);
  *(v40 + 11) = v81;
  v49 = v95;
  v50 = *(v82 + 80);
  *(v40 + 12) = v50;
  *(v40 + 13) = v46;
  *(v40 + 14) = v47;
  *(v40 + 15) = v48;
  *(v40 + 16) = v49;
  (*(v32 + 32))(&v40[v71], v66);
  v51 = v42;
  (*(v61 + 32))(&v40[v39], v67, v42);
  (*(v62 + 32))(&v40[v72], v68, v43);
  v52 = v44;
  (*(v84 + 32))(&v40[v74], v87, v44);
  (*(v86 + 32))(&v40[v76], v90, v36);
  v53 = v89;
  (*(v88 + 32))(&v40[v75], v91, v89);

  v96 = v83;
  v97 = v51;
  v98 = v43;
  v99 = v52;
  v100 = v36;
  v101 = v53;
  v102 = v45;
  v103 = v79;
  v104 = v80;
  v105 = v81;
  v106 = v50;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v55 = sub_1BF014EDC(v45, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v57 = v56;

  return v57;
}

uint64_t sub_1BF136FEC(unint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v83 = a8;
  v81 = a7;
  v105 = a4;
  v106 = a5;
  v104 = a3;
  v119 = a2;
  v87 = a1;
  v84 = a10;
  v82 = a9;
  v86 = a11;
  v97 = a17;
  v102 = a18;
  v89 = *a2;
  v90 = *a3;
  v91 = *a4;
  v92 = *a5;
  v100 = *(a18 - 8);
  v88 = *(v100 + 64);
  v99 = a15;
  v95 = a16;
  v18 = MEMORY[0x1EEE9AC00](v88);
  v107 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(v19 - 8);
  v85 = *(v96 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v103 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = *(v22 - 8);
  v80 = *(v93 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v101 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 - 8);
  v79 = *(v26 + 64);
  v27 = MEMORY[0x1EEE9AC00](v23);
  v98 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a14;
  v29 = *(a14 - 8);
  v75 = *(v29 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v32;
  v73 = a13;
  v33 = *(a13 - 8);
  v72 = *(v33 + 64);
  v34 = MEMORY[0x1EEE9AC00](v30);
  v36 = &v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v36;
  v74 = v37;
  v94 = *(v37 - 8);
  v38 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v76 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 16))();
  v68 = v33;
  (*(v33 + 16))(v36, v81, a13);
  v69 = v29;
  (*(v29 + 16))(v32, v83, a14);
  v70 = v26;
  (*(v26 + 16))(v98, v82, v99);
  v40 = v93;
  v41 = v95;
  (*(v93 + 16))(v101, v84, v95);
  v42 = v96;
  (*(v96 + 16))(v103, v86, v97);
  v43 = v100;
  v44 = v102;
  (*(v100 + 16))(v107, v87, v102);
  v81 = (*(v94 + 80) + 128) & ~*(v94 + 80);
  v82 = (v38 + *(v33 + 80) + v81) & ~*(v33 + 80);
  v83 = (v72 + *(v29 + 80) + v82) & ~*(v29 + 80);
  v84 = (v75 + *(v26 + 80) + v83) & ~*(v26 + 80);
  v45 = (v79 + *(v40 + 80) + v84) & ~*(v40 + 80);
  v87 = (v80 + *(v42 + 80) + v45) & ~*(v42 + 80);
  v86 = (v85 + *(v43 + 80) + v87) & ~*(v43 + 80);
  v46 = swift_allocObject();
  v47 = v89;
  v48 = v74;
  v49 = v73;
  *(v46 + 2) = v74;
  *(v46 + 3) = v49;
  v50 = v71;
  v51 = v99;
  *(v46 + 4) = v71;
  *(v46 + 5) = v51;
  v52 = v97;
  *(v46 + 6) = v41;
  *(v46 + 7) = v52;
  *(v46 + 8) = v44;
  v53 = *(v47 + 80);
  *(v46 + 9) = v53;
  v54 = v104;
  v90 = *(v90 + 80);
  *(v46 + 10) = v90;
  v55 = v105;
  v91 = *(v91 + 80);
  *(v46 + 11) = v91;
  v56 = v106;
  v92 = *(v92 + 80);
  *(v46 + 12) = v92;
  *(v46 + 13) = v54;
  *(v46 + 14) = v55;
  *(v46 + 15) = v56;
  v57 = v48;
  (*(v94 + 32))(&v46[v81], v76);
  (*(v68 + 32))(&v46[v82], v77, v49);
  (*(v69 + 32))(&v46[v83], v78, v50);
  v58 = v51;
  (*(v70 + 32))(&v46[v84], v98, v51);
  v59 = &v46[v45];
  v60 = v95;
  (*(v93 + 32))(v59, v101, v95);
  (*(v96 + 32))(&v46[v87], v103, v52);
  v61 = v102;
  (*(v100 + 32))(&v46[v86], v107, v102);

  v108 = v57;
  v109 = v49;
  v110 = v50;
  v111 = v58;
  v112 = v60;
  v113 = v52;
  v114 = v61;
  v115 = v53;
  v116 = v90;
  v117 = v91;
  v118 = v92;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v63 = sub_1BF014EDC(v53, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v65 = v64;

  return v65;
}

uint64_t sub_1BF137948(unint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v82 = a8;
  v80 = a7;
  v78 = a6;
  v110 = a4;
  v108 = a3;
  v122 = a2;
  v87 = a1;
  v83 = a10;
  v81 = a9;
  v85 = a11;
  v101 = a15;
  v104 = a16;
  v84 = a19;
  v89 = *a2;
  v90 = *a3;
  v91 = *a4;
  v106 = *(a19 - 8);
  v88 = *(v106 + 64);
  v98 = a17;
  v103 = a18;
  v19 = MEMORY[0x1EEE9AC00](a1);
  v109 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *(v21 - 8);
  v86 = *(v100 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v107 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(v24 - 8);
  v79 = *(v97 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v105 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *(v27 - 8);
  v77 = *(v94 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v102 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 - 8);
  v76 = *(v31 + 64);
  v32 = MEMORY[0x1EEE9AC00](v28);
  v99 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a14;
  v34 = *(a14 - 8);
  v72 = *(v34 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v37;
  v92 = a13;
  v96 = *(a13 - 8);
  v38 = v96;
  v70 = *(v96 + 64);
  v39 = MEMORY[0x1EEE9AC00](v35);
  v41 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v41;
  v93 = a12;
  v95 = *(a12 - 8);
  v42 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v73 = &v68 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))();
  (*(v38 + 16))(v41, v78, a13);
  v68 = v34;
  (*(v34 + 16))(v37, v80, a14);
  v69 = v31;
  (*(v31 + 16))(v99, v82, v101);
  v44 = v94;
  (*(v94 + 16))(v102, v81, v104);
  v45 = v97;
  v46 = v98;
  (*(v97 + 16))(v105, v83, v98);
  v47 = v100;
  (*(v100 + 16))(v107, v85, v103);
  v48 = v106;
  v49 = v84;
  (*(v106 + 16))(v109, v87, v84);
  v80 = (*(v95 + 80) + 120) & ~*(v95 + 80);
  v81 = (v42 + *(v96 + 80) + v80) & ~*(v96 + 80);
  v82 = (v70 + *(v34 + 80) + v81) & ~*(v34 + 80);
  v83 = (v72 + *(v31 + 80) + v82) & ~*(v31 + 80);
  v85 = (v76 + *(v44 + 80) + v83) & ~*(v44 + 80);
  v50 = (v77 + *(v45 + 80) + v85) & ~*(v45 + 80);
  v87 = (v79 + *(v47 + 80) + v50) & ~*(v47 + 80);
  v86 = (v86 + *(v48 + 80) + v87) & ~*(v48 + 80);
  v51 = swift_allocObject();
  v52 = v89;
  v53 = v92;
  *(v51 + 2) = v93;
  *(v51 + 3) = v53;
  v54 = v71;
  v55 = v101;
  *(v51 + 4) = v71;
  *(v51 + 5) = v55;
  v56 = v104;
  *(v51 + 6) = v104;
  *(v51 + 7) = v46;
  v57 = v103;
  *(v51 + 8) = v103;
  *(v51 + 9) = v49;
  v58 = *(v52 + 80);
  *(v51 + 10) = v58;
  v59 = v108;
  v90 = *(v90 + 80);
  *(v51 + 11) = v90;
  v60 = v110;
  v91 = *(v91 + 80);
  *(v51 + 12) = v91;
  *(v51 + 13) = v59;
  *(v51 + 14) = v60;
  (*(v95 + 32))(&v51[v80], v73);
  (*(v96 + 32))(&v51[v81], v74, v53);
  (*(v68 + 32))(&v51[v82], v75, v54);
  (*(v69 + 32))(&v51[v83], v99, v55);
  (*(v94 + 32))(&v51[v85], v102, v56);
  v61 = &v51[v50];
  v62 = v98;
  (*(v97 + 32))(v61, v105, v98);
  (*(v100 + 32))(&v51[v87], v107, v57);
  (*(v106 + 32))(&v51[v86], v109, v49);

  v111 = v93;
  v112 = v92;
  v113 = v54;
  v114 = v55;
  v115 = v56;
  v116 = v62;
  v117 = v57;
  v118 = v49;
  v119 = v58;
  v120 = v90;
  v121 = v91;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v64 = sub_1BF014EDC(v58, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v66 = v65;

  return v66;
}

uint64_t sub_1BF138380(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v92 = a8;
  v89 = a7;
  v88 = a6;
  v87 = a5;
  v120 = a3;
  v133 = a2;
  v97 = a1;
  v93 = a10;
  v91 = a9;
  v95 = a11;
  v110 = a15;
  v113 = a19;
  v114 = a16;
  v94 = a20;
  v99 = *a2;
  v100 = *a3;
  v115 = *(a20 - 8);
  v98 = *(v115 + 64);
  v117 = a17;
  v109 = a18;
  v20 = MEMORY[0x1EEE9AC00](a1);
  v121 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(v22 - 8);
  v96 = *(v111 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v119 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = *(v25 - 8);
  v90 = *(v108 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v118 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = *(v28 - 8);
  v86 = *(v104 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v116 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *(v31 - 8);
  v85 = *(v102 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v112 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v34 - 8);
  v84 = *(v35 + 64);
  v36 = MEMORY[0x1EEE9AC00](v32);
  v38 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v38;
  v78 = a14;
  v107 = *(a14 - 8);
  v39 = v107;
  v79 = *(v107 + 64);
  v40 = MEMORY[0x1EEE9AC00](v36);
  v42 = &v75 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v42;
  v101 = a13;
  v106 = *(a13 - 8);
  v43 = v106;
  v77 = *(v106 + 64);
  v44 = MEMORY[0x1EEE9AC00](v40);
  v46 = &v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v46;
  v103 = a12;
  v105 = *(a12 - 8);
  v47 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v80 = &v75 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v48 + 16))();
  (*(v43 + 16))(v46, v87, a13);
  (*(v39 + 16))(v42, v88, a14);
  v49 = v35;
  v76 = v35;
  (*(v35 + 16))(v38, v89, v110);
  v50 = v102;
  (*(v102 + 16))(v112, v92, v114);
  v51 = v104;
  (*(v104 + 16))(v116, v91, v117);
  v52 = v108;
  v53 = v109;
  (*(v108 + 16))(v118, v93, v109);
  v54 = v111;
  (*(v111 + 16))(v119, v95, v113);
  v55 = v115;
  v56 = v94;
  (*(v115 + 16))(v121, v97, v94);
  v88 = (*(v105 + 80) + 112) & ~*(v105 + 80);
  v89 = (v47 + *(v106 + 80) + v88) & ~*(v106 + 80);
  v91 = (v77 + *(v107 + 80) + v89) & ~*(v107 + 80);
  v92 = (v79 + *(v49 + 80) + v91) & ~*(v49 + 80);
  v93 = (v84 + *(v50 + 80) + v92) & ~*(v50 + 80);
  v95 = (v85 + *(v51 + 80) + v93) & ~*(v51 + 80);
  v57 = (v86 + *(v52 + 80) + v95) & ~*(v52 + 80);
  v97 = (v90 + *(v54 + 80) + v57) & ~*(v54 + 80);
  v96 = (v96 + *(v55 + 80) + v97) & ~*(v55 + 80);
  v58 = swift_allocObject();
  v59 = v99;
  v60 = v101;
  *(v58 + 2) = v103;
  *(v58 + 3) = v60;
  v61 = v78;
  v62 = v110;
  *(v58 + 4) = v78;
  *(v58 + 5) = v62;
  v63 = v114;
  v64 = v117;
  *(v58 + 6) = v114;
  *(v58 + 7) = v64;
  *(v58 + 8) = v53;
  v65 = v113;
  *(v58 + 9) = v113;
  *(v58 + 10) = v56;
  v99 = *(v59 + 80);
  *(v58 + 11) = v99;
  v66 = v120;
  v100 = *(v100 + 80);
  *(v58 + 12) = v100;
  *(v58 + 13) = v66;
  (*(v105 + 32))(&v58[v88], v80);
  (*(v106 + 32))(&v58[v89], v81, v60);
  (*(v107 + 32))(&v58[v91], v82, v61);
  (*(v76 + 32))(&v58[v92], v83, v62);
  (*(v102 + 32))(&v58[v93], v112, v63);
  (*(v104 + 32))(&v58[v95], v116, v64);
  v67 = &v58[v57];
  v68 = v109;
  (*(v108 + 32))(v67, v118, v109);
  (*(v111 + 32))(&v58[v97], v119, v65);
  (*(v115 + 32))(&v58[v96], v121, v56);

  v122 = v103;
  v123 = v101;
  v124 = v61;
  v125 = v62;
  v126 = v63;
  v127 = v64;
  v128 = v68;
  v129 = v65;
  v69 = v99;
  v130 = v56;
  v131 = v99;
  v132 = v100;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v71 = sub_1BF014EDC(v69, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v73 = v72;

  return v73;
}

uint64_t sub_1BF138E8C(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v97 = a8;
  v95 = a7;
  v94 = a6;
  v92 = a5;
  v91 = a4;
  v129 = a2;
  v102 = a1;
  v99 = a10;
  v96 = a9;
  v100 = a11;
  v114 = a15;
  v117 = a16;
  v121 = a17;
  v123 = a18;
  v126 = a21;
  v104 = *a2;
  v124 = *(a21 - 8);
  v103 = *(v124 + 64);
  v141 = a19;
  v120 = a20;
  v21 = MEMORY[0x1EEE9AC00](a1);
  v128 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = *(v23 - 8);
  v101 = *(v119 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v127 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(v26 - 8);
  v98 = *(v115 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v125 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(v29 - 8);
  v93 = *(v113 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v122 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = *(v32 - 8);
  v90 = *(v108 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v118 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = *(v35 - 8);
  v89 = *(v105 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v116 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = *(v38 - 8);
  v39 = v112;
  v88 = *(v112 + 64);
  v40 = MEMORY[0x1EEE9AC00](v36);
  v42 = &v81 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v42;
  v82 = a14;
  v111 = *(a14 - 8);
  v43 = v111;
  v83 = *(v111 + 64);
  v44 = MEMORY[0x1EEE9AC00](v40);
  v46 = &v81 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v46;
  v106 = a13;
  v110 = *(a13 - 8);
  v47 = v110;
  v81 = *(v110 + 64);
  v48 = MEMORY[0x1EEE9AC00](v44);
  v50 = &v81 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v50;
  v107 = v51;
  v109 = *(v51 - 8);
  v52 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v84 = &v81 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v53 + 16))();
  (*(v47 + 16))(v50, v91, a13);
  (*(v43 + 16))(v46, v92, a14);
  (*(v39 + 16))(v42, v94, v114);
  v54 = v105;
  (*(v105 + 16))(v116, v95, v117);
  v55 = v108;
  (*(v108 + 16))(v118, v97, v121);
  v56 = v113;
  (*(v113 + 16))(v122, v96, v123);
  v57 = v115;
  (*(v115 + 16))(v125, v99, v141);
  v58 = v119;
  v59 = v120;
  (*(v119 + 16))(v127, v100, v120);
  v60 = v124;
  v61 = v126;
  (*(v124 + 16))(v128, v102, v126);
  v91 = (*(v109 + 80) + 104) & ~*(v109 + 80);
  v92 = (v52 + *(v110 + 80) + v91) & ~*(v110 + 80);
  v94 = (v81 + *(v111 + 80) + v92) & ~*(v111 + 80);
  v95 = (v83 + *(v112 + 80) + v94) & ~*(v112 + 80);
  v96 = (v88 + *(v54 + 80) + v95) & ~*(v54 + 80);
  v97 = (v89 + *(v55 + 80) + v96) & ~*(v55 + 80);
  v99 = (v90 + *(v56 + 80) + v97) & ~*(v56 + 80);
  v100 = (v93 + *(v57 + 80) + v99) & ~*(v57 + 80);
  v102 = (v98 + *(v58 + 80) + v100) & ~*(v58 + 80);
  v101 = (v101 + *(v60 + 80) + v102) & ~*(v60 + 80);
  v62 = swift_allocObject();
  v63 = v106;
  *(v62 + 2) = v107;
  *(v62 + 3) = v63;
  v64 = v82;
  v65 = v114;
  *(v62 + 4) = v82;
  *(v62 + 5) = v65;
  v66 = v117;
  v67 = v121;
  *(v62 + 6) = v117;
  *(v62 + 7) = v67;
  v68 = v123;
  v69 = v141;
  *(v62 + 8) = v123;
  *(v62 + 9) = v69;
  *(v62 + 10) = v59;
  *(v62 + 11) = v61;
  v104 = *(v104 + 80);
  *(v62 + 12) = v104;
  (*(v109 + 32))(&v62[v91], v84);
  (*(v110 + 32))(&v62[v92], v85, v63);
  (*(v111 + 32))(&v62[v94], v86, v64);
  (*(v112 + 32))(&v62[v95], v87, v65);
  (*(v105 + 32))(&v62[v96], v116, v66);
  v70 = v67;
  (*(v108 + 32))(&v62[v97], v118, v67);
  v71 = v68;
  (*(v113 + 32))(&v62[v99], v122, v68);
  v72 = v141;
  (*(v115 + 32))(&v62[v100], v125, v141);
  v73 = v120;
  (*(v119 + 32))(&v62[v102], v127, v120);
  v74 = v126;
  (*(v124 + 32))(&v62[v101], v128, v126);
  v130 = v107;
  v131 = v106;
  v132 = v64;
  v133 = v65;
  v134 = v66;
  v135 = v70;
  v136 = v71;
  v137 = v72;
  v138 = v73;
  v139 = v74;
  v75 = v104;
  v140 = v104;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v77 = sub_1BF014EDC(v75, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v79 = v78;

  return v79;
}

uint64_t sub_1BF139A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v25 = TupleTypeMetadata[12];
  v26 = TupleTypeMetadata[16];
  v28 = TupleTypeMetadata[20];
  v29 = TupleTypeMetadata[24];
  v31 = TupleTypeMetadata[28];
  v33 = TupleTypeMetadata[32];
  v35 = TupleTypeMetadata[36];
  v37 = TupleTypeMetadata[40];
  v39 = TupleTypeMetadata[44];
  v41 = TupleTypeMetadata[48];
  (*(*(a13 - 8) + 16))(a9, a2, a13);
  (*(*(a14 - 8) + 16))(a9 + v25, a3, a14);
  (*(*(a15 - 8) + 16))(a9 + v26, a4, a15);
  (*(*(a16 - 8) + 16))(a9 + v28, a5, a16);
  (*(*(a17 - 8) + 16))(a9 + v29, a6, a17);
  (*(*(a18 - 8) + 16))(a9 + v31, a7, a18);
  (*(*(a19 - 8) + 16))(a9 + v33, a8);
  (*(*(a20 - 8) + 16))(a9 + v35, a10);
  (*(*(a21 - 8) + 16))(a9 + v37, a11);
  (*(*(a22 - 8) + 16))(a9 + v39, a12);
  return (*(*(a23 - 8) + 16))(a9 + v41, a1);
}

uint64_t *combine<A, B, C, D, E, F, G, H, I, J, K, L>(_:_:_:_:_:_:_:_:_:_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v17 = *a1;
  v24 = *a2;
  v25 = *a3;
  v26 = *a4;
  v27 = *a5;
  v28 = *a6;
  v29 = *a7;
  v30 = *a8;
  v31 = *a9;
  v32 = *a10;
  v33 = *a11;
  v34 = *a12;
  v18 = swift_allocObject();
  v23 = *(v17 + 80);
  v18[2] = v23;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = a7;
  v18[9] = a8;
  v18[10] = a9;
  v18[11] = a10;
  v18[12] = a11;
  v18[13] = a12;

  v37 = *(v24 + 80);
  v38 = *(v25 + 80);
  v39 = *(v26 + 80);
  v40 = *(v27 + 80);
  v41 = *(v28 + 80);
  v42 = *(v29 + 80);
  v43 = *(v30 + 80);
  v44 = *(v31 + 80);
  v45 = *(v32 + 80);
  v46 = *(v33 + 80);
  v47 = *(v34 + 80);
  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = sub_1BF014EDC(v23, TupleTypeMetadata);
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_155();

  return a1;
}

uint64_t sub_1BF13A114(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13)
{
  v52 = a8;
  v51 = a7;
  v81 = a12;
  v67 = a10;
  v68 = a11;
  v53 = a9;
  v65 = *a2;
  v66 = a2;
  v13 = *a3;
  v15 = *a4;
  v62 = *a5;
  v63 = v15;
  v61 = *a6;
  v60 = *a7;
  v58 = *a8;
  v56 = *a9;
  v54 = *a10;
  v57 = *a11;
  v59 = *a12;
  v19 = *(a13 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v55 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))();
  v50 = (*(v19 + 80) + 192) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = v65;
  *(v21 + 2) = a13;
  v49 = a13;
  v65 = *(v22 + 80);
  v23 = v13;
  *(v21 + 3) = v65;
  v24 = a3;
  v64 = *(v23 + 80);
  v25 = v63;
  *(v21 + 4) = v64;
  v26 = a4;
  v63 = *(v25 + 80);
  v27 = v62;
  *(v21 + 5) = v63;
  v28 = a5;
  v62 = *(v27 + 80);
  v29 = v61;
  *(v21 + 6) = v62;
  v30 = a6;
  v61 = *(v29 + 80);
  v31 = v60;
  *(v21 + 7) = v61;
  v32 = v51;
  v60 = *(v31 + 80);
  v33 = v58;
  *(v21 + 8) = v60;
  v34 = v52;
  v58 = *(v33 + 80);
  v35 = v56;
  *(v21 + 9) = v58;
  v36 = v53;
  v56 = *(v35 + 80);
  v37 = v54;
  *(v21 + 10) = v56;
  v38 = v67;
  v54 = *(v37 + 80);
  v39 = v57;
  *(v21 + 11) = v54;
  v40 = v68;
  v57 = *(v39 + 80);
  v41 = v59;
  *(v21 + 12) = v57;
  v42 = v81;
  v59 = *(v41 + 80);
  *(v21 + 13) = v59;
  *(v21 + 14) = v24;
  *(v21 + 15) = v26;
  *(v21 + 16) = v28;
  *(v21 + 17) = v30;
  *(v21 + 18) = v32;
  *(v21 + 19) = v34;
  *(v21 + 20) = v36;
  *(v21 + 21) = v38;
  *(v21 + 22) = v40;
  *(v21 + 23) = v42;
  (*(v19 + 32))(&v21[v50], v55, a13);

  v43 = v65;
  v69 = v49;
  v70 = v65;
  v71 = v64;
  v72 = v63;
  v73 = v62;
  v74 = v61;
  v75 = v60;
  v76 = v58;
  v77 = v56;
  v78 = v54;
  v79 = v57;
  v80 = v59;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v45 = sub_1BF014EDC(v43, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v47 = v46;

  return v47;
}

uint64_t sub_1BF13A5D8(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v56 = a8;
  v54 = a7;
  v52 = a6;
  v49 = a4;
  v46 = a3;
  v43 = a1;
  v76 = a11;
  v62 = a9;
  v63 = a10;
  v48 = *a2;
  v61 = a2;
  v47 = *a3;
  v50 = *a4;
  v51 = *a5;
  v53 = *a6;
  v55 = *a7;
  v15 = *a9;
  v57 = *a8;
  v58 = v15;
  v16 = *a11;
  v59 = *a10;
  v60 = v16;
  v41 = a14;
  v17 = *(a14 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](a1);
  v45 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a13 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v44 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))();
  (*(v17 + 16))(&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v43, a14);
  v42 = (*(v20 + 80) + 184) & ~*(v20 + 80);
  v43 = (v21 + *(v17 + 80) + v42) & ~*(v17 + 80);
  v22 = swift_allocObject();
  v23 = v48;
  v40 = a13;
  *(v22 + 2) = a13;
  *(v22 + 3) = a14;
  v48 = *(v23 + 80);
  *(v22 + 4) = v48;
  v24 = v46;
  v47 = *(v47 + 80);
  *(v22 + 5) = v47;
  v25 = v49;
  v50 = *(v50 + 80);
  *(v22 + 6) = v50;
  v26 = a5;
  v51 = *(v51 + 80);
  *(v22 + 7) = v51;
  v27 = v52;
  v53 = *(v53 + 80);
  *(v22 + 8) = v53;
  v28 = v54;
  v55 = *(v55 + 80);
  *(v22 + 9) = v55;
  v29 = v56;
  v57 = *(v57 + 80);
  *(v22 + 10) = v57;
  v31 = v62;
  v30 = v63;
  v58 = *(v58 + 80);
  *(v22 + 11) = v58;
  v59 = *(v59 + 80);
  *(v22 + 12) = v59;
  v32 = v76;
  v60 = *(v60 + 80);
  *(v22 + 13) = v60;
  *(v22 + 14) = v24;
  *(v22 + 15) = v25;
  *(v22 + 16) = v26;
  *(v22 + 17) = v27;
  *(v22 + 18) = v28;
  *(v22 + 19) = v29;
  *(v22 + 20) = v31;
  *(v22 + 21) = v30;
  *(v22 + 22) = v32;
  (*(v20 + 32))(&v22[v42], v44, a13);
  v33 = v41;
  (*(v17 + 32))(&v22[v43], v45, v41);

  v64 = v40;
  v65 = v33;
  v34 = v48;
  v66 = v48;
  v67 = v47;
  v68 = v50;
  v69 = v51;
  v70 = v53;
  v71 = v55;
  v72 = v57;
  v73 = v58;
  v74 = v59;
  v75 = v60;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v36 = sub_1BF014EDC(v34, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v38 = v37;

  return v38;
}

uint64_t sub_1BF13AB38()
{
  OUTLINED_FUNCTION_84_1();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_83_1();
  return sub_1BF13A5D8(v4, v5, v6, v7, v8, v9, v10, v0[20], v0[21], v0[22], v0[23], v0 + v3, v11, v12);
}

uint64_t sub_1BF13ABA4(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v65 = a7;
  v66 = a8;
  v57 = a6;
  v55 = a5;
  v53 = a4;
  v51 = a3;
  v81 = a2;
  v49 = a1;
  v45 = a12;
  v64 = a15;
  v67 = a9;
  v68 = a10;
  v50 = *a2;
  v52 = *a3;
  v54 = *a4;
  v56 = *a5;
  v58 = *a6;
  v59 = *a7;
  v60 = *a8;
  v61 = *a9;
  v62 = *a10;
  v15 = *(a15 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v48 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a14 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v47 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v46 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))();
  (*(v18 + 16))(&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v45, a14);
  v44 = v15;
  v24 = v64;
  (*(v15 + 16))(&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v64);
  v25 = (*(v22 + 80) + 176) & ~*(v22 + 80);
  v45 = (v23 + *(v18 + 80) + v25) & ~*(v18 + 80);
  v49 = (v19 + *(v15 + 80) + v45) & ~*(v15 + 80);
  v26 = swift_allocObject();
  v27 = v50;
  *(v26 + 2) = v63;
  *(v26 + 3) = a14;
  *(v26 + 4) = v24;
  v50 = *(v27 + 80);
  *(v26 + 5) = v50;
  v28 = v51;
  v52 = *(v52 + 80);
  *(v26 + 6) = v52;
  v29 = v53;
  v54 = *(v54 + 80);
  *(v26 + 7) = v54;
  v30 = v55;
  v56 = *(v56 + 80);
  *(v26 + 8) = v56;
  v31 = v57;
  v58 = *(v58 + 80);
  *(v26 + 9) = v58;
  v32 = v65;
  v59 = *(v59 + 80);
  *(v26 + 10) = v59;
  v33 = v66;
  v60 = *(v60 + 80);
  *(v26 + 11) = v60;
  v34 = v67;
  v61 = *(v61 + 80);
  *(v26 + 12) = v61;
  v35 = v68;
  v62 = *(v62 + 80);
  *(v26 + 13) = v62;
  *(v26 + 14) = v28;
  *(v26 + 15) = v29;
  *(v26 + 16) = v30;
  *(v26 + 17) = v31;
  *(v26 + 18) = v32;
  *(v26 + 19) = v33;
  *(v26 + 20) = v34;
  *(v26 + 21) = v35;
  (*(v22 + 32))(&v26[v25], v46);
  (*(v18 + 32))(&v26[v45], v47, a14);
  v36 = v64;
  (*(v44 + 32))(&v26[v49], v48, v64);

  v69 = v63;
  v70 = a14;
  v37 = v50;
  v71 = v36;
  v72 = v50;
  v73 = v52;
  v74 = v54;
  v75 = v56;
  v76 = v58;
  v77 = v59;
  v78 = v60;
  v79 = v61;
  v80 = v62;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v39 = sub_1BF014EDC(v37, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v41 = v40;

  return v41;
}

uint64_t sub_1BF13B1D0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_19_13();
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v9 = *(*(v8 - 8) + 80);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_83_1();
  v10 = v0[20];
  v11 = v0[21];
  v12 = v0[22];
  OUTLINED_FUNCTION_163();
  return sub_1BF13ABA4(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v26, v21, v22, v23, v24);
}

uint64_t sub_1BF13B288(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v77 = a7;
  v78 = a8;
  v76 = a6;
  v65 = a5;
  v75 = a4;
  v62 = a3;
  v92 = a2;
  v60 = a1;
  v58 = a12;
  v57 = a11;
  v53 = a15;
  v73 = a16;
  v79 = a9;
  v61 = *a2;
  v63 = *a3;
  v64 = *a4;
  v66 = *a5;
  v67 = *a6;
  v68 = *a7;
  v69 = *a8;
  v70 = *a9;
  v72 = *(a16 - 8);
  v59 = *(v72 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v74 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v56 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a14;
  v22 = *(a14 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v55 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v54 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))();
  (*(v22 + 16))(&v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v57, a14);
  v52 = v19;
  v28 = v53;
  (*(v19 + 16))(&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v53);
  v30 = v72;
  v29 = v73;
  (*(v72 + 16))(v74, v60, v73);
  v57 = (*(v26 + 80) + 168) & ~*(v26 + 80);
  v58 = (v27 + *(v22 + 80) + v57) & ~*(v22 + 80);
  v60 = (v23 + *(v19 + 80) + v58) & ~*(v19 + 80);
  v31 = (v20 + *(v30 + 80) + v60) & ~*(v30 + 80);
  v32 = swift_allocObject();
  v33 = v61;
  v34 = v51;
  *(v32 + 2) = v71;
  *(v32 + 3) = v34;
  *(v32 + 4) = v28;
  *(v32 + 5) = v29;
  v61 = *(v33 + 80);
  *(v32 + 6) = v61;
  v35 = v62;
  v63 = *(v63 + 80);
  *(v32 + 7) = v63;
  v36 = v75;
  v64 = *(v64 + 80);
  *(v32 + 8) = v64;
  v37 = v65;
  v66 = *(v66 + 80);
  *(v32 + 9) = v66;
  v38 = v76;
  v67 = *(v67 + 80);
  *(v32 + 10) = v67;
  v39 = v77;
  v68 = *(v68 + 80);
  *(v32 + 11) = v68;
  v40 = v78;
  v69 = *(v69 + 80);
  *(v32 + 12) = v69;
  v41 = v79;
  v70 = *(v70 + 80);
  *(v32 + 13) = v70;
  *(v32 + 14) = v35;
  *(v32 + 15) = v36;
  *(v32 + 16) = v37;
  *(v32 + 17) = v38;
  *(v32 + 18) = v39;
  *(v32 + 19) = v40;
  *(v32 + 20) = v41;
  (*(v26 + 32))(&v32[v57], v54);
  (*(v22 + 32))(&v32[v58], v55, v34);
  (*(v52 + 32))(&v32[v60], v56, v28);
  v42 = &v32[v31];
  v43 = v73;
  (*(v72 + 32))(v42, v74, v73);

  v80 = v71;
  v81 = v34;
  v82 = v28;
  v83 = v43;
  v44 = v61;
  v84 = v61;
  v85 = v63;
  v86 = v64;
  v87 = v66;
  v88 = v67;
  v89 = v68;
  v90 = v69;
  v91 = v70;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v46 = sub_1BF014EDC(v44, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v48 = v47;

  return v48;
}

uint64_t sub_1BF13B994()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_26_9();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_71_1();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_27_9();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_72_0();
  v8 = *(v7 + 64);
  v10 = *(*(v9 - 8) + 80);
  OUTLINED_FUNCTION_117_1();
  OUTLINED_FUNCTION_83_1();
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);
  OUTLINED_FUNCTION_163();
  return sub_1BF13B288(v13, v14, v15, v16, v17, v18, v19, v20, v28, v27, v26, v21, v22, v23, v24, v25);
}

uint64_t sub_1BF13BA88(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v91 = a7;
  v92 = a8;
  v88 = a5;
  v89 = a6;
  v86 = a3;
  v87 = a4;
  v105 = a2;
  v72 = a1;
  v71 = a12;
  v70 = a11;
  v68 = a10;
  v84 = a17;
  v74 = *a2;
  v75 = *a3;
  v76 = *a4;
  v77 = *a5;
  v78 = *a6;
  v79 = *a7;
  v80 = *a8;
  v83 = *(a17 - 8);
  v73 = *(v83 + 64);
  v82 = a16;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v90 = &v59 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v18 - 8);
  v69 = *(v81 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v85 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a15;
  v21 = *(a15 - 8);
  v64 = *(v21 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v24;
  v60 = a14;
  v25 = *(a14 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v22);
  v66 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v65 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))();
  v62 = v25;
  (*(v25 + 16))(&v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v68, a14);
  v63 = v21;
  (*(v21 + 16))(v24, v70, a15);
  v31 = v81;
  v32 = v82;
  (*(v81 + 16))(v85, v71, v82);
  v33 = v83;
  v34 = v84;
  (*(v83 + 16))(v90, v72, v84);
  v71 = (*(v29 + 80) + 160) & ~*(v29 + 80);
  v35 = (v30 + *(v25 + 80) + v71) & ~*(v25 + 80);
  v36 = (v26 + *(v21 + 80) + v35) & ~*(v21 + 80);
  v37 = (v64 + *(v31 + 80) + v36) & ~*(v31 + 80);
  v72 = (v69 + *(v33 + 80) + v37) & ~*(v33 + 80);
  v38 = swift_allocObject();
  v39 = v74;
  v40 = v61;
  v41 = v60;
  *(v38 + 2) = v61;
  *(v38 + 3) = v41;
  v42 = v59;
  *(v38 + 4) = v59;
  *(v38 + 5) = v32;
  *(v38 + 6) = v34;
  v43 = *(v39 + 80);
  *(v38 + 7) = v43;
  v44 = v86;
  v75 = *(v75 + 80);
  *(v38 + 8) = v75;
  v45 = v87;
  v76 = *(v76 + 80);
  *(v38 + 9) = v76;
  v46 = v88;
  v77 = *(v77 + 80);
  *(v38 + 10) = v77;
  v47 = v89;
  v78 = *(v78 + 80);
  *(v38 + 11) = v78;
  v48 = v91;
  v79 = *(v79 + 80);
  *(v38 + 12) = v79;
  v49 = v92;
  v80 = *(v80 + 80);
  *(v38 + 13) = v80;
  *(v38 + 14) = v44;
  *(v38 + 15) = v45;
  *(v38 + 16) = v46;
  *(v38 + 17) = v47;
  *(v38 + 18) = v48;
  *(v38 + 19) = v49;
  v50 = v40;
  (*(v29 + 32))(&v38[v71], v65);
  (*(v62 + 32))(&v38[v35], v66, v41);
  (*(v63 + 32))(&v38[v36], v67, v42);
  v51 = &v38[v37];
  v52 = v82;
  (*(v81 + 32))(v51, v85, v82);
  v53 = v84;
  (*(v83 + 32))(&v38[v72], v90, v84);

  v93 = v50;
  v94 = v41;
  v95 = v42;
  v96 = v52;
  v97 = v53;
  v98 = v43;
  v99 = v75;
  v100 = v76;
  v101 = v77;
  v102 = v78;
  v103 = v79;
  v104 = v80;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v55 = sub_1BF014EDC(v43, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v57 = v56;

  return v57;
}

uint64_t sub_1BF13C25C()
{
  OUTLINED_FUNCTION_78_1();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_34_5();
  v3 = (*(v2 + 80) + 168) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_15_19(v6, v7);
  v11 = (v10 + v9 + *(v8 + 80)) & ~*(v8 + 80);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_0_71();
  v17 = (v16 + v15 + *(v14 + 80)) & ~*(v14 + 80);
  v19 = *(v18 + 64);
  v21 = *(*(v20 - 8) + 80);
  OUTLINED_FUNCTION_83_1();
  return sub_1BF13BA88(v25, v26, v27, v28, v29, v30, v31, *(v0 + 160), v0 + v24, v0 + v23, v0 + v17, v0 + v22, v32, v33, v34, v35, v36);
}

uint64_t sub_1BF13C3BC(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v99 = a6;
  v100 = a7;
  v97 = a4;
  v98 = a5;
  v83 = a3;
  v113 = a2;
  v80 = a1;
  v79 = a12;
  v77 = a11;
  v75 = a10;
  v74 = a9;
  v92 = a17;
  v78 = a18;
  v82 = *a2;
  v84 = *a3;
  v85 = *a4;
  v86 = *a5;
  v87 = *a6;
  v88 = *a7;
  v94 = *(a18 - 8);
  v81 = *(v94 + 64);
  v90 = a16;
  v18 = MEMORY[0x1EEE9AC00](v81);
  v96 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(v19 - 8);
  v76 = *(v91 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v95 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *(v22 - 8);
  v73 = *(v89 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v93 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a15;
  v25 = *(a15 - 8);
  v69 = *(v25 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v28;
  v65 = a14;
  v29 = *(a14 - 8);
  v67 = *(v29 + 64);
  v30 = MEMORY[0x1EEE9AC00](v26);
  v32 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v32;
  v68 = a13;
  v33 = *(a13 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v70 = &v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v33;
  (*(v33 + 16))();
  v64 = v29;
  (*(v29 + 16))(v32, v74, a14);
  v66 = v25;
  (*(v25 + 16))(v28, v75, a15);
  v35 = v89;
  (*(v89 + 16))(v93, v77, v90);
  v36 = v91;
  v37 = v92;
  (*(v91 + 16))(v95, v79, v92);
  v38 = v94;
  v39 = v78;
  (*(v94 + 16))(v96, v80, v78);
  v74 = (*(v33 + 80) + 152) & ~*(v33 + 80);
  v40 = (v34 + *(v29 + 80) + v74) & ~*(v29 + 80);
  v75 = (v67 + *(v25 + 80) + v40) & ~*(v25 + 80);
  v77 = (v69 + *(v35 + 80) + v75) & ~*(v35 + 80);
  v80 = (v73 + *(v36 + 80) + v77) & ~*(v36 + 80);
  v79 = (v76 + *(v38 + 80) + v80) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v42 = v82;
  v43 = v68;
  v44 = v65;
  *(v41 + 2) = v68;
  *(v41 + 3) = v44;
  v45 = v62;
  v46 = v90;
  *(v41 + 4) = v62;
  *(v41 + 5) = v46;
  *(v41 + 6) = v37;
  *(v41 + 7) = v39;
  v47 = v39;
  v48 = *(v42 + 80);
  *(v41 + 8) = v48;
  v49 = v83;
  v84 = *(v84 + 80);
  *(v41 + 9) = v84;
  v50 = v97;
  v85 = *(v85 + 80);
  *(v41 + 10) = v85;
  v51 = v98;
  v86 = *(v86 + 80);
  *(v41 + 11) = v86;
  v52 = v99;
  v87 = *(v87 + 80);
  *(v41 + 12) = v87;
  v53 = v100;
  v88 = *(v88 + 80);
  *(v41 + 13) = v88;
  *(v41 + 14) = v49;
  *(v41 + 15) = v50;
  *(v41 + 16) = v51;
  *(v41 + 17) = v52;
  *(v41 + 18) = v53;
  v54 = v43;
  (*(v63 + 32))(&v41[v74], v70);
  (*(v64 + 32))(&v41[v40], v71, v44);
  (*(v66 + 32))(&v41[v75], v72, v45);
  (*(v89 + 32))(&v41[v77], v93, v46);
  v55 = v92;
  (*(v91 + 32))(&v41[v80], v95, v92);
  (*(v94 + 32))(&v41[v79], v96, v47);

  v101 = v54;
  v102 = v44;
  v103 = v45;
  v104 = v46;
  v105 = v55;
  v106 = v47;
  v107 = v48;
  v108 = v84;
  v109 = v85;
  v110 = v86;
  v111 = v87;
  v112 = v88;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v57 = sub_1BF014EDC(v48, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v59 = v58;

  return v59;
}

uint64_t sub_1BF13CC98()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  OUTLINED_FUNCTION_3_41();
  v8 = (*(v7 + 80) + 160) & ~*(v7 + 80);
  OUTLINED_FUNCTION_8_30(v10, *(v9 + 64), v11);
  v15 = (v14 + v13 + *(v12 + 80)) & ~*(v12 + 80);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_0_71();
  v21 = (v20 + v19 + *(v18 + 80)) & ~*(v18 + 80);
  OUTLINED_FUNCTION_8_30(v23, *(v22 + 64), v24);
  v27 = (v21 + v26 + *(v25 + 80)) & ~*(v25 + 80);
  v29 = *(v28 + 64);
  v31 = *(*(v30 - 8) + 80);
  OUTLINED_FUNCTION_83_1();
  return sub_1BF13C3BC(v35, v36, v37, v38, v39, v40, v41, v0 + v33, v0 + v32, v0 + v21, v0 + v27, v0 + v34, v42, v43, v44, v45, v46, v47);
}

uint64_t sub_1BF13CE40(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v79 = a8;
  v106 = a5;
  v107 = a6;
  v104 = a3;
  v105 = a4;
  v120 = a2;
  v84 = a1;
  v83 = a12;
  v81 = a11;
  v80 = a10;
  v78 = a9;
  v98 = a16;
  v102 = a19;
  v86 = *a2;
  v87 = *a3;
  v88 = *a4;
  v89 = *a5;
  v90 = *a6;
  v100 = *(a19 - 8);
  v85 = *(v100 + 64);
  v93 = a17;
  v97 = a18;
  v19 = MEMORY[0x1EEE9AC00](a1);
  v103 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(v21 - 8);
  v82 = *(v96 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v101 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(v24 - 8);
  v77 = *(v92 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v99 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v27 - 8);
  v76 = *(v28 + 64);
  v29 = MEMORY[0x1EEE9AC00](v25);
  v95 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a15;
  v31 = *(a15 - 8);
  v72 = *(v31 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v34;
  v71 = a14;
  v35 = *(a14 - 8);
  v70 = *(v35 + 64);
  v36 = MEMORY[0x1EEE9AC00](v32);
  v38 = &v66 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v38;
  v91 = a13;
  v94 = *(a13 - 8);
  v39 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v73 = &v66 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))();
  v66 = v35;
  (*(v35 + 16))(v38, v79, a14);
  v67 = v31;
  (*(v31 + 16))(v34, v78, a15);
  v69 = v28;
  (*(v28 + 16))(v95, v80, v98);
  v41 = v92;
  v42 = v93;
  (*(v92 + 16))(v99, v81, v93);
  v43 = v96;
  (*(v96 + 16))(v101, v83, v97);
  v44 = v100;
  v45 = v102;
  (*(v100 + 16))(v103, v84, v102);
  v78 = (*(v94 + 80) + 144) & ~*(v94 + 80);
  v79 = (v39 + *(v35 + 80) + v78) & ~*(v35 + 80);
  v46 = (v70 + *(v31 + 80) + v79) & ~*(v31 + 80);
  v80 = (v72 + *(v28 + 80) + v46) & ~*(v28 + 80);
  v81 = (v76 + *(v41 + 80) + v80) & ~*(v41 + 80);
  v84 = (v77 + *(v43 + 80) + v81) & ~*(v43 + 80);
  v83 = (v82 + *(v44 + 80) + v84) & ~*(v44 + 80);
  v47 = swift_allocObject();
  v48 = v86;
  v49 = v71;
  *(v47 + 2) = v91;
  *(v47 + 3) = v49;
  v50 = v68;
  v51 = v98;
  *(v47 + 4) = v68;
  *(v47 + 5) = v51;
  v52 = v97;
  *(v47 + 6) = v42;
  *(v47 + 7) = v52;
  *(v47 + 8) = v45;
  v53 = *(v48 + 80);
  *(v47 + 9) = v53;
  v54 = v104;
  v87 = *(v87 + 80);
  *(v47 + 10) = v87;
  v55 = v105;
  v88 = *(v88 + 80);
  *(v47 + 11) = v88;
  v56 = v106;
  v89 = *(v89 + 80);
  *(v47 + 12) = v89;
  v57 = v107;
  v90 = *(v90 + 80);
  *(v47 + 13) = v90;
  *(v47 + 14) = v54;
  *(v47 + 15) = v55;
  *(v47 + 16) = v56;
  *(v47 + 17) = v57;
  (*(v94 + 32))(&v47[v78], v73);
  (*(v66 + 32))(&v47[v79], v74, v49);
  (*(v67 + 32))(&v47[v46], v75, v50);
  v58 = v51;
  (*(v69 + 32))(&v47[v80], v95, v51);
  v59 = v93;
  (*(v92 + 32))(&v47[v81], v99, v93);
  (*(v96 + 32))(&v47[v84], v101, v52);
  v60 = v102;
  (*(v100 + 32))(&v47[v83], v103, v102);

  v108 = v91;
  v109 = v49;
  v110 = v50;
  v111 = v58;
  v112 = v59;
  v113 = v52;
  v114 = v60;
  v115 = v53;
  v116 = v87;
  v117 = v88;
  v118 = v89;
  v119 = v90;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v62 = sub_1BF014EDC(v53, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v64 = v63;

  return v64;
}

uint64_t sub_1BF13D800()
{
  OUTLINED_FUNCTION_78_1();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  OUTLINED_FUNCTION_3_41();
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  OUTLINED_FUNCTION_8_30(v7, *(v6 + 64), v8);
  v12 = (v11 + v10 + *(v9 + 80)) & ~*(v9 + 80);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_0_71();
  v18 = (v17 + v16 + *(v15 + 80)) & ~*(v15 + 80);
  OUTLINED_FUNCTION_8_30(v20, *(v19 + 64), v21);
  v24 = (v18 + v23 + *(v22 + 80)) & ~*(v22 + 80);
  OUTLINED_FUNCTION_8_30(v26, *(v25 + 64), v27);
  v29 = *(v28 + 80);
  return sub_1BF13CE40(v35, *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), v0 + v33, v0 + v34, v0 + v18, v0 + v24, v0 + ((v24 + v30 + v29) & ~v29), v0 + ((((v24 + v30 + v29) & ~v29) + *(v31 + 64) + *(*(v32 - 8) + 80)) & ~*(*(v32 - 8) + 80)), v37, v38, v39, v40, v41, v32, v36);
}

uint64_t sub_1BF13DA08(unint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v88 = a8;
  v85 = a7;
  v115 = a4;
  v116 = a5;
  v114 = a3;
  v130 = a2;
  v93 = a1;
  v92 = a12;
  v90 = a11;
  v89 = a10;
  v86 = a9;
  v106 = a16;
  v107 = a19;
  v111 = a20;
  v95 = *a2;
  v96 = *a3;
  v97 = *a4;
  v98 = *a5;
  v110 = *(a20 - 8);
  v94 = *(v110 + 64);
  v109 = a17;
  v83 = a18;
  v20 = MEMORY[0x1EEE9AC00](a13);
  v117 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = *(v22 - 8);
  v91 = *(v105 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v113 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = *(v25 - 8);
  v87 = *(v103 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v112 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *(v28 - 8);
  v84 = *(v100 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v108 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v31 - 8);
  v82 = *(v32 + 64);
  v33 = MEMORY[0x1EEE9AC00](v29);
  v104 = &v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a15;
  v35 = *(a15 - 8);
  v78 = *(v35 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v72 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v38;
  v77 = a14;
  v102 = *(a14 - 8);
  v39 = v102;
  v75 = *(v102 + 64);
  v40 = MEMORY[0x1EEE9AC00](v36);
  v42 = &v72 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v42;
  v99 = v40;
  v101 = *(v40 - 8);
  v43 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v79 = &v72 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))();
  (*(v39 + 16))(v42, v85, a14);
  v73 = v35;
  (*(v35 + 16))(v38, v88, a15);
  v74 = v32;
  (*(v32 + 16))(v104, v86, v106);
  v45 = v100;
  (*(v100 + 16))(v108, v89, v109);
  v46 = v103;
  v47 = v83;
  (*(v103 + 16))(v112, v90, v83);
  v48 = v105;
  (*(v105 + 16))(v113, v92, v107);
  v50 = v110;
  v49 = v111;
  (*(v110 + 16))(v117, v93, v111);
  v85 = (*(v101 + 80) + 136) & ~*(v101 + 80);
  v86 = (v43 + *(v102 + 80) + v85) & ~*(v102 + 80);
  v88 = (v75 + *(v35 + 80) + v86) & ~*(v35 + 80);
  v89 = (v78 + *(v32 + 80) + v88) & ~*(v32 + 80);
  v90 = (v82 + *(v45 + 80) + v89) & ~*(v45 + 80);
  v92 = (v84 + *(v46 + 80) + v90) & ~*(v46 + 80);
  v93 = (v87 + *(v48 + 80) + v92) & ~*(v48 + 80);
  v91 = (v91 + *(v50 + 80) + v93) & ~*(v50 + 80);
  v51 = swift_allocObject();
  v52 = v95;
  v53 = v77;
  *(v51 + 2) = v99;
  *(v51 + 3) = v53;
  v54 = v76;
  v55 = v106;
  *(v51 + 4) = v76;
  *(v51 + 5) = v55;
  v56 = v109;
  *(v51 + 6) = v109;
  *(v51 + 7) = v47;
  v57 = v107;
  *(v51 + 8) = v107;
  *(v51 + 9) = v49;
  v58 = *(v52 + 80);
  *(v51 + 10) = v58;
  v59 = v114;
  v96 = *(v96 + 80);
  *(v51 + 11) = v96;
  v60 = v115;
  v97 = *(v97 + 80);
  *(v51 + 12) = v97;
  v61 = v116;
  v98 = *(v98 + 80);
  *(v51 + 13) = v98;
  *(v51 + 14) = v59;
  *(v51 + 15) = v60;
  *(v51 + 16) = v61;
  (*(v101 + 32))(&v51[v85], v79);
  (*(v102 + 32))(&v51[v86], v80, v53);
  (*(v73 + 32))(&v51[v88], v81, v54);
  v62 = v55;
  (*(v74 + 32))(&v51[v89], v104, v55);
  v63 = v56;
  (*(v100 + 32))(&v51[v90], v108, v56);
  v64 = v47;
  (*(v103 + 32))(&v51[v92], v112, v47);
  v65 = v57;
  (*(v105 + 32))(&v51[v93], v113, v57);
  v66 = v111;
  (*(v110 + 32))(&v51[v91], v117, v111);

  v118 = v99;
  v119 = v53;
  v120 = v54;
  v121 = v62;
  v122 = v63;
  v123 = v64;
  v124 = v65;
  v125 = v66;
  v126 = v58;
  v127 = v96;
  v128 = v97;
  v129 = v98;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v68 = sub_1BF014EDC(v58, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v70 = v69;

  return v70;
}

uint64_t sub_1BF13E4AC()
{
  OUTLINED_FUNCTION_78_1();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  OUTLINED_FUNCTION_3_41();
  v6 = (*(v5 + 80) + 144) & ~*(v5 + 80);
  OUTLINED_FUNCTION_8_30(v8, *(v7 + 64), v9);
  v13 = (v12 + v11 + *(v10 + 80)) & ~*(v10 + 80);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_0_71();
  v19 = (v18 + v17 + *(v16 + 80)) & ~*(v16 + 80);
  OUTLINED_FUNCTION_8_30(v21, *(v20 + 64), v22);
  v25 = (v19 + v24 + *(v23 + 80)) & ~*(v23 + 80);
  OUTLINED_FUNCTION_8_30(v27, *(v26 + 64), v28);
  v32 = *(v31 + 64);
  v34 = *(v33 - 8);
  v35 = (v25 + v30 + *(v29 + 80)) & ~*(v29 + 80);
  OUTLINED_FUNCTION_100_0();
  v38 = (v35 + v37 + *(v36 + 80)) & ~*(v36 + 80);
  return sub_1BF13DA08(v43, *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v0 + v41, v0 + v42, v0 + v19, v0 + v25, v0 + v35, v0 + v38, v0 + ((v38 + *(v39 + 64) + *(*(v40 - 8) + 80)) & ~*(*(v40 - 8) + 80)), v45, v46, v47, v48, v49, v50, v40, v44);
}

uint64_t sub_1BF13E700(unint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v90 = a8;
  v88 = a7;
  v87 = a6;
  v120 = a3;
  v121 = a4;
  v135 = a2;
  v96 = a1;
  v94 = a12;
  v93 = a11;
  v92 = a10;
  v89 = a9;
  v109 = a16;
  v113 = a17;
  v116 = a18;
  v117 = a21;
  v98 = *a2;
  v99 = *a3;
  v100 = *a4;
  v115 = *(a21 - 8);
  v97 = *(v115 + 64);
  v85 = a19;
  v112 = a20;
  v21 = MEMORY[0x1EEE9AC00](a1);
  v122 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(v23 - 8);
  v95 = *(v111 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v119 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = *(v26 - 8);
  v91 = *(v108 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v118 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = *(v29 - 8);
  v86 = *(v104 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v114 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *(v32 - 8);
  v84 = *(v102 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v110 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v35 - 8);
  v83 = *(v36 + 64);
  v37 = MEMORY[0x1EEE9AC00](v33);
  v39 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v39;
  v77 = a15;
  v107 = *(a15 - 8);
  v40 = v107;
  v78 = *(v107 + 64);
  v41 = MEMORY[0x1EEE9AC00](v37);
  v43 = &v75 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v43;
  v101 = a14;
  v106 = *(a14 - 8);
  v44 = v106;
  v76 = *(v106 + 64);
  v45 = MEMORY[0x1EEE9AC00](v41);
  v47 = &v75 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v47;
  v103 = a13;
  v105 = *(a13 - 8);
  v48 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v79 = &v75 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v49 + 16))();
  (*(v44 + 16))(v47, v87, a14);
  (*(v40 + 16))(v43, v88, a15);
  v75 = v36;
  (*(v36 + 16))(v39, v90, v109);
  v50 = v102;
  (*(v102 + 16))(v110, v89, v113);
  v51 = v104;
  (*(v104 + 16))(v114, v92, v116);
  v52 = v108;
  v53 = v85;
  (*(v108 + 16))(v118, v93, v85);
  v54 = v111;
  (*(v111 + 16))(v119, v94, v112);
  v55 = v115;
  v56 = v117;
  (*(v115 + 16))(v122, v96, v117);
  v87 = (*(v105 + 80) + 128) & ~*(v105 + 80);
  v88 = (v48 + *(v106 + 80) + v87) & ~*(v106 + 80);
  v89 = (v76 + *(v107 + 80) + v88) & ~*(v107 + 80);
  v90 = (v78 + *(v36 + 80) + v89) & ~*(v36 + 80);
  v92 = (v83 + *(v50 + 80) + v90) & ~*(v50 + 80);
  v93 = (v84 + *(v51 + 80) + v92) & ~*(v51 + 80);
  v94 = (v86 + *(v52 + 80) + v93) & ~*(v52 + 80);
  v96 = (v91 + *(v54 + 80) + v94) & ~*(v54 + 80);
  v95 = (v95 + *(v55 + 80) + v96) & ~*(v55 + 80);
  v57 = swift_allocObject();
  v58 = v98;
  v59 = v101;
  *(v57 + 2) = v103;
  *(v57 + 3) = v59;
  v60 = v77;
  v61 = v109;
  *(v57 + 4) = v77;
  *(v57 + 5) = v61;
  v62 = v113;
  v63 = v116;
  *(v57 + 6) = v113;
  *(v57 + 7) = v63;
  v64 = v112;
  *(v57 + 8) = v53;
  *(v57 + 9) = v64;
  *(v57 + 10) = v56;
  v65 = *(v58 + 80);
  *(v57 + 11) = v65;
  v66 = v120;
  v99 = *(v99 + 80);
  *(v57 + 12) = v99;
  v67 = v121;
  v100 = *(v100 + 80);
  *(v57 + 13) = v100;
  *(v57 + 14) = v66;
  *(v57 + 15) = v67;
  (*(v105 + 32))(&v57[v87], v79);
  (*(v106 + 32))(&v57[v88], v80, v59);
  (*(v107 + 32))(&v57[v89], v81, v60);
  (*(v75 + 32))(&v57[v90], v82, v61);
  v68 = v62;
  (*(v102 + 32))(&v57[v92], v110, v62);
  (*(v104 + 32))(&v57[v93], v114, v63);
  (*(v108 + 32))(&v57[v94], v118, v53);
  (*(v111 + 32))(&v57[v96], v119, v64);
  v69 = v117;
  (*(v115 + 32))(&v57[v95], v122, v117);

  v123 = v103;
  v124 = v101;
  v125 = v60;
  v126 = v61;
  v127 = v68;
  v128 = v63;
  v129 = v53;
  v130 = v64;
  v131 = v69;
  v132 = v65;
  v133 = v99;
  v134 = v100;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v71 = sub_1BF014EDC(v65, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v73 = v72;

  return v73;
}

uint64_t sub_1BF13F27C()
{
  OUTLINED_FUNCTION_30_9();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  OUTLINED_FUNCTION_3_41();
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  OUTLINED_FUNCTION_8_30(v7, *(v6 + 64), v8);
  v12 = (v11 + v10 + *(v9 + 80)) & ~*(v9 + 80);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_0_71();
  v18 = (v17 + v16 + *(v15 + 80)) & ~*(v15 + 80);
  OUTLINED_FUNCTION_8_30(v20, *(v19 + 64), v21);
  v24 = (v18 + v23 + *(v22 + 80)) & ~*(v22 + 80);
  OUTLINED_FUNCTION_8_30(v26, *(v25 + 64), v27);
  v32 = (v24 + v29 + *(v28 + 80)) & ~*(v28 + 80);
  v33 = (v32 + *(v30 + 64) + *(*(v31 - 8) + 80)) & ~*(*(v31 - 8) + 80);
  OUTLINED_FUNCTION_8_30(v34, *(*(v31 - 8) + 64), v35);
  v38 = (v33 + v37 + *(v36 + 80)) & ~*(v36 + 80);
  return sub_1BF13E700(v43, *(v0 + 112), *(v0 + 120), *(v0 + 128), v0 + v41, v0 + v42, v0 + v18, v0 + v24, v0 + v32, v0 + v33, v0 + v38, v0 + ((v38 + *(v39 + 64) + *(*(v40 - 8) + 80)) & ~*(*(v40 - 8) + 80)), v46, v47, v48, v49, v50, v51, v44, v40, v45);
}

uint64_t sub_1BF13F52C(unint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v98 = a8;
  v96 = a7;
  v94 = a6;
  v93 = a5;
  v127 = a3;
  v129 = a2;
  v104 = a1;
  v102 = a12;
  v101 = a11;
  v99 = a10;
  v97 = a9;
  v114 = a16;
  v117 = a17;
  v123 = a18;
  v120 = a21;
  v124 = a22;
  v106 = *a2;
  v107 = *a3;
  v122 = *(a22 - 8);
  v105 = *(v122 + 64);
  v144 = a19;
  v92 = a20;
  v22 = MEMORY[0x1EEE9AC00](a1);
  v128 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = *(v24 - 8);
  v103 = *(v119 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v126 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(v27 - 8);
  v100 = *(v115 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v125 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(v30 - 8);
  v95 = *(v113 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v121 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = *(v33 - 8);
  v91 = *(v131 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v118 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = *(v36 - 8);
  v90 = *(v130 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v116 = &v80 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v39 - 8);
  v85 = *(v40 + 64);
  v41 = MEMORY[0x1EEE9AC00](v37);
  v43 = &v80 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v43;
  v83 = a15;
  v112 = *(a15 - 8);
  v44 = v112;
  v84 = *(v112 + 64);
  v45 = MEMORY[0x1EEE9AC00](v41);
  v47 = &v80 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v47;
  v108 = a14;
  v111 = *(a14 - 8);
  v48 = v111;
  v82 = *(v111 + 64);
  v49 = MEMORY[0x1EEE9AC00](v45);
  v51 = &v80 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v51;
  v109 = a13;
  v110 = *(a13 - 8);
  v52 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v86 = &v80 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v53 + 16))();
  (*(v48 + 16))(v51, v93, a14);
  (*(v44 + 16))(v47, v94, a15);
  v81 = v40;
  (*(v40 + 16))(v43, v96, v114);
  (*(v130 + 16))(v116, v98, v117);
  (*(v131 + 16))(v118, v97, v123);
  v54 = v113;
  (*(v113 + 16))(v121, v99, v144);
  v55 = v115;
  v56 = v92;
  (*(v115 + 16))(v125, v101, v92);
  v57 = v119;
  v58 = v120;
  (*(v119 + 16))(v126, v102, v120);
  v59 = v122;
  v60 = v124;
  (*(v122 + 16))(v128, v104, v124);
  v93 = (*(v110 + 80) + 120) & ~*(v110 + 80);
  v94 = (v52 + *(v111 + 80) + v93) & ~*(v111 + 80);
  v96 = (v82 + *(v112 + 80) + v94) & ~*(v112 + 80);
  v97 = (v84 + *(v40 + 80) + v96) & ~*(v40 + 80);
  v98 = (v85 + *(v130 + 80) + v97) & ~*(v130 + 80);
  v99 = (v90 + *(v131 + 80) + v98) & ~*(v131 + 80);
  v101 = (v91 + *(v54 + 80) + v99) & ~*(v54 + 80);
  v102 = (v95 + *(v55 + 80) + v101) & ~*(v55 + 80);
  v104 = (v100 + *(v57 + 80) + v102) & ~*(v57 + 80);
  v103 = (v103 + *(v59 + 80) + v104) & ~*(v59 + 80);
  v61 = swift_allocObject();
  v62 = v106;
  v63 = v108;
  *(v61 + 2) = v109;
  *(v61 + 3) = v63;
  v64 = v83;
  v65 = v114;
  *(v61 + 4) = v83;
  *(v61 + 5) = v65;
  v66 = v117;
  v67 = v123;
  *(v61 + 6) = v117;
  *(v61 + 7) = v67;
  *(v61 + 8) = v144;
  *(v61 + 9) = v56;
  *(v61 + 10) = v58;
  *(v61 + 11) = v60;
  v106 = *(v62 + 80);
  *(v61 + 12) = v106;
  v68 = v127;
  v107 = *(v107 + 80);
  *(v61 + 13) = v107;
  *(v61 + 14) = v68;
  (*(v110 + 32))(&v61[v93], v86);
  (*(v111 + 32))(&v61[v94], v87, v63);
  (*(v112 + 32))(&v61[v96], v88, v64);
  (*(v81 + 32))(&v61[v97], v89, v65);
  (*(v130 + 32))(&v61[v98], v116, v66);
  v69 = v67;
  (*(v131 + 32))(&v61[v99], v118, v67);
  v70 = v144;
  (*(v113 + 32))(&v61[v101], v121, v144);
  v71 = v56;
  (*(v115 + 32))(&v61[v102], v125, v56);
  v72 = v120;
  (*(v119 + 32))(&v61[v104], v126, v120);
  v73 = v124;
  (*(v122 + 32))(&v61[v103], v128, v124);

  v132 = v109;
  v133 = v108;
  v134 = v64;
  v135 = v65;
  v136 = v66;
  v137 = v69;
  v138 = v70;
  v139 = v71;
  v140 = v72;
  v141 = v73;
  v74 = v106;
  v142 = v106;
  v143 = v107;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v76 = sub_1BF014EDC(v74, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v78 = v77;

  return v78;
}

uint64_t sub_1BF140190()
{
  OUTLINED_FUNCTION_30_9();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  OUTLINED_FUNCTION_3_41();
  v6 = (*(v5 + 80) + 128) & ~*(v5 + 80);
  OUTLINED_FUNCTION_8_30(v8, *(v7 + 64), v9);
  v13 = (v12 + v11 + *(v10 + 80)) & ~*(v10 + 80);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_0_71();
  v19 = (v18 + v17 + *(v16 + 80)) & ~*(v16 + 80);
  OUTLINED_FUNCTION_8_30(v21, *(v20 + 64), v22);
  v25 = (v19 + v24 + *(v23 + 80)) & ~*(v23 + 80);
  OUTLINED_FUNCTION_8_30(v27, *(v26 + 64), v28);
  v33 = (((v25 + v30 + *(v29 + 80)) & ~*(v29 + 80)) + *(v31 + 64) + *(*(v32 - 8) + 80)) & ~*(*(v32 - 8) + 80);
  OUTLINED_FUNCTION_8_30(v34, *(*(v32 - 8) + 64), v35);
  v38 = (v33 + v37 + *(v36 + 80)) & ~*(v36 + 80);
  OUTLINED_FUNCTION_8_30(v40, *(v39 + 64), v41);
  v44 = (v38 + v43 + *(v42 + 80)) & ~*(v42 + 80);
  v46 = v0[14];
  v47 = v0[15];
  v76 = v48;
  v77 = v49;
  v74 = v51;
  v75 = v50;
  v72 = v52;
  v73 = v53;
  v70 = v54;
  v71 = v55;
  v68 = v56;
  v69 = v57;
  v67 = v0 + ((v44 + *(v45 + 64) + *(*(v48 - 8) + 80)) & ~*(*(v48 - 8) + 80));
  OUTLINED_FUNCTION_147_0();
  return sub_1BF13F52C(v58, v59, v60, v61, v62, v63, v64, v65, v0 + v33, v0 + v38, v0 + v44, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
}

uint64_t sub_1BF140480(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v100 = a8;
  v98 = a7;
  v97 = a6;
  v95 = a5;
  v94 = a4;
  v136 = a2;
  v107 = a1;
  v105 = a12;
  v103 = a11;
  v102 = a10;
  v99 = a9;
  v122 = a16;
  v125 = a17;
  v128 = a18;
  v130 = a19;
  v132 = a20;
  v104 = a23;
  v111 = *a2;
  v126 = *(a23 - 8);
  v110 = *(v126 + 64);
  v138 = a21;
  v151 = a22;
  v23 = MEMORY[0x1EEE9AC00](a16);
  v135 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = *(v25 - 8);
  v109 = *(v123 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v134 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *(v28 - 8);
  v108 = *(v121 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v133 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = *(v31 - 8);
  v106 = *(v112 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v131 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(v34 - 8);
  v101 = *(v115 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v129 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(v37 - 8);
  v96 = *(v113 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v127 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = *(v40 - 8);
  v93 = *(v137 + 64);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v124 = &v85 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = *(v41 - 8);
  v43 = v120;
  v92 = *(v120 + 64);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v46;
  v114 = a15;
  v47 = *(a15 - 8);
  v87 = *(v47 + 64);
  v48 = MEMORY[0x1EEE9AC00](v44);
  v50 = &v85 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v50;
  v116 = a14;
  v119 = *(a14 - 8);
  v51 = v119;
  v85 = *(v119 + 64);
  v52 = MEMORY[0x1EEE9AC00](v48);
  v54 = &v85 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v54;
  v117 = v55;
  v118 = *(v55 - 8);
  v56 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v88 = &v85 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))();
  (*(v51 + 16))(v54, v94, a14);
  v58 = v47;
  v86 = v47;
  (*(v47 + 16))(v50, v95, a15);
  (*(v43 + 16))(v46, v97, v122);
  (*(v137 + 16))(v124, v98, v125);
  v59 = v113;
  (*(v113 + 16))(v127, v100, v128);
  v60 = v115;
  (*(v115 + 16))(v129, v99, v130);
  v61 = v112;
  (*(v112 + 16))(v131, v102, v132);
  v62 = v121;
  (*(v121 + 16))(v133, v103, v138);
  v63 = v123;
  (*(v123 + 16))(v134, v105, v151);
  v64 = v126;
  v65 = v104;
  (*(v126 + 16))(v135, v107, v104);
  v105 = (*(v118 + 80) + 112) & ~*(v118 + 80);
  v107 = (v56 + *(v119 + 80) + v105) & ~*(v119 + 80);
  v97 = (v85 + *(v58 + 80) + v107) & ~*(v58 + 80);
  v98 = (v87 + *(v120 + 80) + v97) & ~*(v120 + 80);
  v99 = (v92 + *(v137 + 80) + v98) & ~*(v137 + 80);
  v100 = (v93 + *(v59 + 80) + v99) & ~*(v59 + 80);
  v102 = (v96 + *(v60 + 80) + v100) & ~*(v60 + 80);
  v103 = (v101 + *(v61 + 80) + v102) & ~*(v61 + 80);
  v106 = (v106 + *(v62 + 80) + v103) & ~*(v62 + 80);
  v108 = (v108 + *(v63 + 80) + v106) & ~*(v63 + 80);
  v109 = (v109 + *(v64 + 80) + v108) & ~*(v64 + 80);
  v66 = swift_allocObject();
  v67 = v116;
  *(v66 + 2) = v117;
  *(v66 + 3) = v67;
  v68 = v114;
  v69 = v122;
  *(v66 + 4) = v114;
  *(v66 + 5) = v69;
  v70 = v125;
  v71 = v128;
  *(v66 + 6) = v125;
  *(v66 + 7) = v71;
  v72 = v130;
  v73 = v132;
  *(v66 + 8) = v130;
  *(v66 + 9) = v73;
  v74 = v151;
  *(v66 + 10) = v138;
  *(v66 + 11) = v74;
  *(v66 + 12) = v65;
  v111 = *(v111 + 80);
  *(v66 + 13) = v111;
  (*(v118 + 32))(&v66[v105], v88);
  (*(v119 + 32))(&v66[v107], v89, v67);
  (*(v86 + 32))(&v66[v97], v90, v68);
  (*(v120 + 32))(&v66[v98], v91, v69);
  (*(v137 + 32))(&v66[v99], v124, v70);
  (*(v113 + 32))(&v66[v100], v127, v71);
  v75 = v72;
  (*(v115 + 32))(&v66[v102], v129, v72);
  v76 = v73;
  (*(v112 + 32))(&v66[v103], v131, v73);
  v77 = v138;
  (*(v121 + 32))(&v66[v106], v133, v138);
  v78 = v151;
  (*(v123 + 32))(&v66[v108], v134, v151);
  (*(v126 + 32))(&v66[v109], v135, v65);
  v139 = v117;
  v140 = v116;
  v141 = v114;
  v142 = v69;
  v143 = v70;
  v144 = v71;
  v145 = v75;
  v146 = v76;
  v147 = v77;
  v148 = v78;
  v79 = v111;
  v149 = v65;
  v150 = v111;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v81 = sub_1BF014EDC(v79, TupleTypeMetadata);
  Promise.then<A>(on:closure:)();
  v83 = v82;

  return v83;
}

uint64_t sub_1BF1411BC()
{
  OUTLINED_FUNCTION_30_9();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[12];
  OUTLINED_FUNCTION_3_41();
  v7 = (*(v6 + 80) + 120) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_150();
  v13 = (v12 + v11 + *(v10 + 80)) & ~*(v10 + 80);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_137();
  v19 = (v18 + v17 + *(v16 + 80)) & ~*(v16 + 80);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_112_0();
  v24 = (v19 + v23 + *(v22 + 80)) & ~*(v22 + 80);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_112_0();
  v31 = (((v24 + v28 + *(v27 + 80)) & ~*(v27 + 80)) + *(v29 + 64) + *(*(v30 - 8) + 80)) & ~*(*(v30 - 8) + 80);
  v32 = *(*(v30 - 8) + 64);
  OUTLINED_FUNCTION_161();
  v35 = (v31 + v34 + *(v33 + 80)) & ~*(v33 + 80);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_161();
  v40 = (v35 + v39 + *(v38 + 80)) & ~*(v38 + 80);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_161();
  v45 = (v40 + v44 + *(v43 + 80)) & ~*(v43 + 80);
  v47 = v0[14];
  v78 = v48;
  v79 = v49;
  v76 = v50;
  v77 = v51;
  v74 = v52;
  v75 = v53;
  v72 = v54;
  v73 = v55;
  v70 = v56;
  v71 = v57;
  v68 = v0 + ((v45 + *(v46 + 64) + *(*(v48 - 8) + 80)) & ~*(*(v48 - 8) + 80));
  v69 = v58;
  OUTLINED_FUNCTION_172();
  return sub_1BF140480(v59, v60, v61, v62, v63, v64, v65, v66, v0 + v35, v0 + v40, v0 + v45, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
}

uint64_t sub_1BF141508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v27 = TupleTypeMetadata[12];
  v28 = TupleTypeMetadata[16];
  v30 = TupleTypeMetadata[20];
  v31 = TupleTypeMetadata[24];
  v33 = TupleTypeMetadata[28];
  v35 = TupleTypeMetadata[32];
  v37 = TupleTypeMetadata[36];
  v39 = TupleTypeMetadata[40];
  v41 = TupleTypeMetadata[44];
  v42 = TupleTypeMetadata[48];
  v44 = TupleTypeMetadata[52];
  (*(*(a14 - 8) + 16))(a9, a2, a14);
  (*(*(a15 - 8) + 16))(a9 + v27, a3, a15);
  (*(*(a16 - 8) + 16))(a9 + v28, a4, a16);
  (*(*(a17 - 8) + 16))(a9 + v30, a5, a17);
  (*(*(a18 - 8) + 16))(a9 + v31, a6, a18);
  (*(*(a19 - 8) + 16))(a9 + v33, a7, a19);
  (*(*(a20 - 8) + 16))(a9 + v35, a8);
  (*(*(a21 - 8) + 16))(a9 + v37, a10);
  (*(*(a22 - 8) + 16))(a9 + v39, a11);
  (*(*(a23 - 8) + 16))(a9 + v41, a12);
  (*(*(a24 - 8) + 16))(a9 + v42, a13);
  return (*(*(a25 - 8) + 16))(a9 + v44, a1);
}

uint64_t sub_1BF1418E4@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_53_3();
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  OUTLINED_FUNCTION_140_0();
  v8 = (*(v7 + 80) + 112) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_139_0();
  v13 = (v12 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v16 = (v13 + *(v14 + 64) + *(*(v15 - 8) + 80)) & ~*(*(v15 - 8) + 80);
  v17 = *(*(v15 - 8) + 64);
  OUTLINED_FUNCTION_159();
  v19 = v18;
  v21 = (v16 + v17 + *(v20 + 80)) & ~*(v20 + 80);
  v25 = (v21 + *(v22 + 64) + *(*(v23 - 8) + 80)) & ~*(*(v23 - 8) + 80);
  v26 = (v25 + *(*(v23 - 8) + 64) + *(*(v24 - 8) + 80)) & ~*(*(v24 - 8) + 80);
  v28 = (v26 + *(*(v24 - 8) + 64) + *(*(v27 - 8) + 80)) & ~*(*(v27 - 8) + 80);
  v30 = (v28 + *(*(v27 - 8) + 64) + *(*(v29 - 8) + 80)) & ~*(*(v29 - 8) + 80);
  v31 = *(v18 - 8);
  v32 = (v30 + *(*(v29 - 8) + 64) + *(v31 + 80)) & ~*(v31 + 80);
  v34 = (v32 + *(v31 + 64) + *(*(v33 - 8) + 80)) & ~*(*(v33 - 8) + 80);
  return sub_1BF141508(v37, v1 + v36, v1 + v13, v1 + v16, v1 + v21, v1 + v25, v1 + v26, v1 + v28, a1, v1 + v30, v1 + v32, v1 + v34, v1 + ((v34 + *(*(v33 - 8) + 64) + *(*(v35 - 8) + 80)) & ~*(*(v35 - 8) + 80)), v39, v40, v41, v42, v23, v24, v27, v29, v19, v33, v35, v38);
}

uint64_t sub_1BF141CDC()
{
  OUTLINED_FUNCTION_84_1();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_109_0();
  return sub_1BF134EFC(v4, v5, v6, v7, v8, v9, v10, v0[19], v0[20], v0[21], v0 + v3, v11, v12);
}

uint64_t sub_1BF141D44()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_19_13();
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v9 = *(*(v8 - 8) + 80);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_109_0();
  v10 = v0[19];
  v11 = v0[20];
  OUTLINED_FUNCTION_163();
  return sub_1BF1353E8(v12, v13, v14, v15, v16, v17, v18, v19, v24, v25, v20, v21, v22, v23);
}

uint64_t sub_1BF141DF4()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_26_9();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_71_1();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_27_9();
  v8 = (v7 + v6 + *(v5 + 80)) & ~*(v5 + 80);
  v10 = *(v9 + 64);
  v12 = *(*(v11 - 8) + 80);
  OUTLINED_FUNCTION_117_1();
  OUTLINED_FUNCTION_109_0();
  v13 = *(v0 + 152);
  OUTLINED_FUNCTION_163();
  return sub_1BF1359A4(v14, v15, v16, v17, v18, v19, v20, v21, v28, v27, v22, v23, v24, v25, v26);
}

uint64_t sub_1BF141EEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  OUTLINED_FUNCTION_27_9();
  v7 = (*(v6 + 80) + 152) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_15_19(v10, v11);
  v15 = (v14 + v13 + *(v12 + 80)) & ~*(v12 + 80);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_0_71();
  v19 = *(v18 + 80);
  v21 = *(v20 + 64);
  v23 = *(*(v22 - 8) + 80);
  OUTLINED_FUNCTION_109_0();
  return sub_1BF136028(v28, v29, v30, v31, v32, v33, v34, v0 + v25, v0 + v26, v0 + v24, v0 + v27, v35, v36, v37, v38, v39);
}

uint64_t sub_1BF142040()
{
  OUTLINED_FUNCTION_78_1();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_3_41();
  v4 = (*(v3 + 80) + 144) & ~*(v3 + 80);
  OUTLINED_FUNCTION_8_30(v6, *(v5 + 64), v7);
  v11 = (v10 + v9 + *(v8 + 80)) & ~*(v8 + 80);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_0_71();
  v15 = *(v14 + 80);
  v17 = *(v16 + 64);
  v19 = *(v18 - 8);
  OUTLINED_FUNCTION_100_0();
  v23 = (v22 + v21 + *(v20 + 80)) & ~*(v20 + 80);
  return sub_1BF136788(v28, *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v0 + v26, v0 + v27, v0 + v22, v0 + v23, v0 + ((v23 + *(v24 + 64) + *(*(v25 - 8) + 80)) & ~*(*(v25 - 8) + 80)), v29, v30, v31, v32, v25, v33);
}

uint64_t sub_1BF1421F0()
{
  OUTLINED_FUNCTION_78_1();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  OUTLINED_FUNCTION_3_41();
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  OUTLINED_FUNCTION_8_30(v7, *(v6 + 64), v8);
  v12 = (v11 + v10 + *(v9 + 80)) & ~*(v9 + 80);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_0_71();
  v16 = *(v15 + 80);
  v18 = *(v17 + 64);
  v20 = *(v19 - 8);
  OUTLINED_FUNCTION_100_0();
  v24 = (v23 + v22 + *(v21 + 80)) & ~*(v21 + 80);
  OUTLINED_FUNCTION_8_30(v26, *(v25 + 64), v27);
  v30 = (v24 + v29 + *(v28 + 80)) & ~*(v28 + 80);
  return sub_1BF136FEC(v36, *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), v0 + v33, v0 + v34, v0 + v35, v0 + v24, v0 + v30, v0 + ((v30 + *(v31 + 64) + *(*(v32 - 8) + 80)) & ~*(*(v32 - 8) + 80)), v38, v39, v40, v41, v42, v32, v37);
}

uint64_t sub_1BF1423EC()
{
  OUTLINED_FUNCTION_30_9();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_3_41();
  v4 = (*(v3 + 80) + 128) & ~*(v3 + 80);
  OUTLINED_FUNCTION_8_30(v6, *(v5 + 64), v7);
  v11 = (v10 + v9 + *(v8 + 80)) & ~*(v8 + 80);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_0_71();
  v19 = (((v16 + v15 + *(v14 + 80)) & ~*(v14 + 80)) + *(v17 + 64) + *(*(v18 - 8) + 80)) & ~*(*(v18 - 8) + 80);
  OUTLINED_FUNCTION_8_30(v20, *(*(v18 - 8) + 64), v21);
  v24 = (v19 + v23 + *(v22 + 80)) & ~*(v22 + 80);
  OUTLINED_FUNCTION_8_30(v26, *(v25 + 64), v27);
  v30 = (v24 + v29 + *(v28 + 80)) & ~*(v28 + 80);
  return sub_1BF137948(v36, *(v0 + 104), *(v0 + 112), *(v0 + 120), v0 + v33, v0 + v34, v0 + v35, v0 + v19, v0 + v24, v0 + v30, v0 + ((v30 + *(v31 + 64) + *(*(v32 - 8) + 80)) & ~*(*(v32 - 8) + 80)), v38, v39, v40, v41, v42, v43, v32, v37);
}

uint64_t sub_1BF142640()
{
  OUTLINED_FUNCTION_30_9();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 80);
  OUTLINED_FUNCTION_3_41();
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  OUTLINED_FUNCTION_8_30(v7, *(v6 + 64), v8);
  v12 = (v11 + v10 + *(v9 + 80)) & ~*(v9 + 80);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_0_71();
  v20 = (((v17 + v16 + *(v15 + 80)) & ~*(v15 + 80)) + *(v18 + 64) + *(*(v19 - 8) + 80)) & ~*(*(v19 - 8) + 80);
  OUTLINED_FUNCTION_8_30(v21, *(*(v19 - 8) + 64), v22);
  v25 = (v20 + v24 + *(v23 + 80)) & ~*(v23 + 80);
  OUTLINED_FUNCTION_8_30(v27, *(v26 + 64), v28);
  v31 = (v25 + v30 + *(v29 + 80)) & ~*(v29 + 80);
  OUTLINED_FUNCTION_8_30(v33, *(v32 + 64), v34);
  v37 = (v31 + v36 + *(v35 + 80)) & ~*(v35 + 80);
  return sub_1BF138380(v43, *(v0 + 104), *(v0 + 112), v0 + v40, v0 + v41, v0 + v42, v0 + v20, v0 + v25, v0 + v31, v0 + v37, v0 + ((v37 + *(v38 + 64) + *(*(v39 - 8) + 80)) & ~*(*(v39 - 8) + 80)), v45, v46, v47, v48, v49, v50, v51, v39, v44);
}
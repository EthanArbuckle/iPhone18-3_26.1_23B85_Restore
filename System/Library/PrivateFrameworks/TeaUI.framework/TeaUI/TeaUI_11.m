void sub_1D7F05B88(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a4 + 64;
  v8 = -1 << *(a4 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 64);
  if (!a2)
  {
    v12 = 0;
LABEL_21:
    *a1 = a4;
    a1[1] = v7;
    a1[2] = ~v8;
    a1[3] = v12;
    a1[4] = v10;
    return;
  }

  if (!a3)
  {
    v12 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_6();
    v23 = v14;
    v16 = (v15 - v14) >> 6;
    while (1)
    {
      if (v13 >= a3)
      {
        goto LABEL_24;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_25;
      }

      if (!v10)
      {
        while (1)
        {
          v18 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            v10 = 0;
            goto LABEL_19;
          }

          v10 = *(v7 + 8 * v18);
          ++v12;
          if (v10)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v18 = v12;
LABEL_15:
      v19 = __clz(__rbit64(v10)) | (v18 << 6);
      v20 = (*(a4 + 48) + 16 * v19);
      v21 = v20[1];
      v22 = *(*(a4 + 56) + 8 * v19);
      v10 &= v10 - 1;
      *v4 = *v20;
      v4[1] = v21;
      v4[2] = v22;
      if (v17 == a3)
      {
        break;
      }

      v4 += 3;
      sub_1D8190DB4();

      v13 = v17;
      v12 = v18;
    }

    sub_1D8190DB4();

    v12 = v18;
LABEL_19:
    v8 = v23;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void sub_1D7F05CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 64;
  OUTLINED_FUNCTION_6_9();
  if (!v9)
  {
    v11 = 0;
LABEL_17:
    OUTLINED_FUNCTION_13_6(v11);
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_6();
    v14 = (v13 - v5) >> 6;
    while (v12 < v10)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v6)
      {
        while (1)
        {
          v16 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            goto LABEL_17;
          }

          v6 = *(v7 + 8 * v16);
          ++v11;
          if (v6)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v11;
LABEL_12:
      OUTLINED_FUNCTION_4_13();
      if (v17)
      {
        sub_1D8190DB4();
        v11 = v16;
        goto LABEL_17;
      }

      v4 += 16;
      sub_1D8190DB4();
      v12 = v15;
      v11 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1D7F05DFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();
  [a3 setDiscoverabilityTitle_];
}

uint64_t sub_1D7F05E54(void *a1)
{
  v1 = [a1 input];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190F14();

  return v3;
}

uint64_t sub_1D7F05EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_12(a1, a2, a3);
  sub_1D7E33DD8(v5, v6, v7);
  if (v4)
  {
  }

  else
  {
    v10 = OUTLINED_FUNCTION_159();
    v8 = MEMORY[0x1DA714420](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_3();
}

void sub_1D7F05FE0()
{
  if (!qword_1ECA0D918)
  {
    sub_1D7E73450(255, &qword_1ECA0D298, type metadata accessor for JSONSchemaValue, type metadata accessor for JSONSchemaValueObject.EnablableValue);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0D918);
    }
  }
}

uint64_t sub_1D7F0612C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_12(a1, a2, a3);
  sub_1D7E33DD8(v5, v6, v7);
  if (v4)
  {
  }

  else
  {
    v10 = OUTLINED_FUNCTION_159();
    v8 = MEMORY[0x1DA714420](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_3();
}

uint64_t sub_1D7F06190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_12(a1, a2, a3);
  sub_1D7E33DD8(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_9_6();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_159();
    v8 = MEMORY[0x1DA714420](v10);
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_3();
}

uint64_t sub_1D7F06214(void *a1)
{
  if ([a1 isRunningPerformanceTest])
  {
    goto LABEL_12;
  }

  sub_1D8191994();
  if (v6)
  {
    if (v5 == 0x6974616D6F747561 && v6 == 0xEA00000000006E6FLL)
    {
LABEL_11:
    }

    else
    {
      v2 = sub_1D8192634();

      if ((v2 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    v3 = 1;
    return v3 & 1;
  }

LABEL_8:
  if (qword_1EDBBE0A0 != -1)
  {
    swift_once();
  }

  sub_1D7E05918();
  sub_1D818EA44();
  switch(v5)
  {
    case 1:
      goto LABEL_11;
    default:
      v3 = sub_1D8192634();

      break;
  }

  return v3 & 1;
}

uint64_t sub_1D7F06400()
{
  sub_1D8191994();
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v4 == 1869440356 && v5 == 0xE400000000000000)
  {
LABEL_12:

    goto LABEL_13;
  }

  v1 = sub_1D8192634();

  if (v1)
  {
LABEL_13:
    v2 = 1;
    return v2 & 1;
  }

LABEL_7:
  if (qword_1EDBBE0A0 != -1)
  {
    swift_once();
  }

  sub_1D7E05918();
  sub_1D818EA44();
  switch(v4)
  {
    case 3:
      goto LABEL_12;
    default:
      v2 = sub_1D8192634();

      break;
  }

  return v2 & 1;
}

uint64_t sub_1D7F06698()
{
  sub_1D818E3C4();
  swift_allocObject();
  return sub_1D818E3B4();
}

void UIViewController.setup<A>(automation:)()
{
  OUTLINED_FUNCTION_1_17();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_14();
  if (qword_1EDBBAED8 != -1)
  {
    OUTLINED_FUNCTION_0_14();
  }

  if (byte_1EDBC6078 == 1)
  {
    v4();
    v8 = [v3 view];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1D7F06698();
      OUTLINED_FUNCTION_6_10(v10);
      if (v1)
      {

        sub_1D81919C4();
        sub_1D7E1A4D0();
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1D819FAC0;
        v12 = [v3 description];
        sub_1D8190F14();

        *(v11 + 56) = MEMORY[0x1E69E6158];
        v13 = sub_1D7E13BF4();
        OUTLINED_FUNCTION_2_20(v13);
        OUTLINED_FUNCTION_5_7();
        v14 = sub_1D8191E44();
        OUTLINED_FUNCTION_4_14();
      }

      else
      {

        v1 = sub_1D8190EE4();

        [v9 setAccessibilityIdentifier_];
      }

      (*(v6 + 8))(v2, v0);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1D7F06938()
{
  result = qword_1EDBBE130;
  if (!qword_1EDBBE130)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBE130);
  }

  return result;
}

uint64_t LayoutSwipableStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7F06A54()
{
  result = qword_1ECA0D940;
  if (!qword_1ECA0D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D940);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LayoutSwipableStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t RadarAttachment.init(diagnosticAttachment:)@<X0>(char *a1@<X0>, unint64_t *a2@<X8>)
{
  v101 = a2;
  v3 = sub_1D818F0B4();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D818F5A4();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v93 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v93 - v19;
  v21 = *(v11 + 16);
  v21(&v93 - v19, a1, v9, v18);
  v22 = OUTLINED_FUNCTION_2_21();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x1E69D6800])
  {
    (*(v11 + 8))(a1, v9);
    v25 = OUTLINED_FUNCTION_1_18();
    v26(v25);
    v27 = *(*v20 + 16);
    v28 = *(*v20 + 24);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v28;
    sub_1D8190DB4();

LABEL_24:
    v89 = v101;
    goto LABEL_25;
  }

  v99 = a1;
  if (v24 == *MEMORY[0x1E69D67E8])
  {
    v31 = OUTLINED_FUNCTION_0_15();
    v32(v31);
    v33 = OUTLINED_FUNCTION_1_18();
    v34(v33);
    v35 = *v20;
    v36 = *(*v20 + 56);
    v37 = *(*v20 + 64);
    v38 = swift_allocObject();
    sub_1D7E0E768(v35 + 16, v38 + 16);
    *(v38 + 56) = v36;
    *(v38 + 64) = v37;
    sub_1D8190DB4();

    v29 = v38 | 0x2000000000000000;
    goto LABEL_24;
  }

  if (v24 == *MEMORY[0x1E69D67F0])
  {
    v39 = OUTLINED_FUNCTION_2_21();
    v40(v39);
    sub_1D7F0738C();
    v42 = v41;
    v43 = swift_projectBox();
    v44 = (v43 + *(v42 + 48));
    v45 = v44[1];
    v100 = *v44;
    (*(v5 + 16))(v8, v43, v3);
    v46 = swift_allocObject();
    sub_1D8190DB4();
    v47 = sub_1D818F0A4();
    v49 = v48;
    (*(v11 + 8))(v99, v9);
    (*(v5 + 8))(v8, v3);
    *(v46 + 16) = v47;
    *(v46 + 24) = v49;
    *(v46 + 32) = v100;
    *(v46 + 40) = v45;

    v29 = v46 | 0x6000000000000000;
    goto LABEL_24;
  }

  if (v24 == *MEMORY[0x1E69D67D8])
  {
    v50 = OUTLINED_FUNCTION_0_15();
    v51(v50);
    v52 = OUTLINED_FUNCTION_1_18();
    v53(v52);
    v54 = *(*v20 + 16);
    v55 = *(*v20 + 24);
    v57 = *(*v20 + 32);
    v56 = *(*v20 + 40);
    v58 = swift_allocObject();
    *(v58 + 16) = v54;
    *(v58 + 24) = v55;
    *(v58 + 32) = v57;
    *(v58 + 40) = v56;
    sub_1D8190DB4();
    sub_1D8190DB4();

    v29 = v58 | 0x6000000000000000;
    goto LABEL_24;
  }

  if (v24 == *MEMORY[0x1E69D67E0])
  {
    v59 = OUTLINED_FUNCTION_0_15();
    v60(v59);
    v61 = OUTLINED_FUNCTION_1_18();
    v62(v61);
    v63 = *(*v20 + 16);
    v64 = *(*v20 + 24);
    v65 = *(*v20 + 32);
    v66 = *(*v20 + 40);
    v68 = *(*v20 + 48);
    v67 = *(*v20 + 56);
    v69 = swift_allocObject();
    *(v69 + 16) = v63;
    *(v69 + 24) = v64;
    *(v69 + 32) = v65;
    *(v69 + 40) = v66;
    *(v69 + 48) = v68;
    *(v69 + 56) = v67;
    sub_1D7F0731C(v63, v64);
    sub_1D8190DB4();
    sub_1D8190DB4();

    v29 = v69 | 0x8000000000000000;
    goto LABEL_24;
  }

  if (v24 != *MEMORY[0x1E69D67F8])
  {
    v87 = *(v11 + 8);
    v87(v99, v9);
    v88 = OUTLINED_FUNCTION_2_21();
    result = (v87)(v88);
    v29 = 0xF000000000000007;
    goto LABEL_24;
  }

  v70 = OUTLINED_FUNCTION_2_21();
  v71(v70);
  v72 = *v20;
  v73 = v72[2];
  v74 = v72[3];
  v75 = v72[4];
  v76 = *(v73 + 16);
  if (v76)
  {
    v94 = v72[3];
    v95 = v72;
    v77 = v73 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v98 = *(v11 + 72);
    v93 = v75;
    sub_1D8190DB4();
    v78 = MEMORY[0x1E69E7CC0];
    v97 = (v11 + 8);
    do
    {
      (v21)(v16, v77, v9);
      v79 = v100;
      (v21)(v100, v16, v9);
      RadarAttachment.init(diagnosticAttachment:)(&v102, v79);
      v96 = *v97;
      v96(v16, v9);
      v80 = v102;
      if ((~v102 & 0xF000000000000007) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D7EE49A8();
          v78 = v85;
        }

        v81 = v78;
        v82 = *(v78 + 16);
        v83 = v81;
        if (v82 >= *(v81 + 24) >> 1)
        {
          sub_1D7EE49A8();
          v83 = v86;
        }

        *(v83 + 16) = v82 + 1;
        v84 = v83 + 8 * v82;
        v78 = v83;
        *(v84 + 32) = v80;
      }

      else
      {
        sub_1D7F07374(v102);
      }

      v77 += v98;
      --v76;
    }

    while (v76);
    v89 = v101;
    v90 = v78;
    v74 = v94;
    v75 = v93;
    v96(v99, v9);
  }

  else
  {
    v91 = *(v11 + 8);
    sub_1D8190DB4();
    v90 = MEMORY[0x1E69E7CC0];
    v89 = v101;
    v91(v99, v9);
  }

  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v74;
  *(v92 + 32) = v75;

  v29 = v92 | 0xC000000000000000;
LABEL_25:
  *v89 = v29;
  return result;
}

uint64_t sub_1D7F0731C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D7F07374(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1D7F0738C()
{
  if (!qword_1ECA0D948)
  {
    sub_1D818F0B4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0D948);
    }
  }
}

uint64_t sub_1D7F07404(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x79)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D7F07458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

double CGFloat.macUnscaled.getter(double a1)
{
  v1 = a1 / 0.77;
  v2 = a1 == 0.0;
  result = 0.0;
  if (!v2)
  {
    return v1;
  }

  return result;
}

uint64_t sub_1D7F07590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t, void *, uint64_t, uint64_t))
{
  v12[7] = a3;
  v9 = OUTLINED_FUNCTION_0_16();
  WitnessTable = swift_getWitnessTable();
  a7(&v13, a6, v12, v9, WitnessTable);
  return v13;
}

uint64_t Array<A>.filter(identifier:)()
{
  OUTLINED_FUNCTION_0_16();
  sub_1D8190DB4();
  swift_getWitnessTable();
  return sub_1D8192264();
}

uint64_t Array<A>.removeAll(identifier:)()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1D8191924();
}

uint64_t sub_1D7F07788(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  sub_1D7F078A4();
  v6 = v5;
  if (swift_dynamicCast())
  {
    v7 = *(&v16 + 1);
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(&v15);
    if (v9 == a2 && v11 == a3)
    {

      v13 = 1;
    }

    else
    {
      v13 = sub_1D8192634();
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_1D7F07900(&v15);
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_1D7F078A4()
{
  result = qword_1EDBB7950[0];
  if (!qword_1EDBB7950[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBB7950);
  }

  return result;
}

uint64_t sub_1D7F07900(uint64_t a1)
{
  sub_1D7F0795C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7F0795C()
{
  if (!qword_1EDBB7948)
  {
    sub_1D7F078A4();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB7948);
    }
  }
}

void *sub_1D7F079E0()
{
  if (qword_1ECA0C250 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  return &unk_1ECA0D950;
}

uint64_t static OnboardingViewController.lastPresentedOnboardingViewController.getter()
{
  if (qword_1ECA0C250 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  OUTLINED_FUNCTION_1_19();
  return swift_unknownObjectWeakLoadStrong();
}

void static OnboardingViewController.lastPresentedOnboardingViewController.setter(void *a1)
{
  if (qword_1ECA0C250 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_112();
  swift_unknownObjectWeakAssign();
}

void (*static OnboardingViewController.lastPresentedOnboardingViewController.modify(uint64_t a1))(uint64_t a1, char a2)
{
  if (qword_1ECA0C250 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  OUTLINED_FUNCTION_112();
  swift_beginAccess();
  *(a1 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D7F07B58;
}

void sub_1D7F07B58(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1D7F07BE8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7F079E0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1D7F07C3C()
{
  sub_1D7F079E0();
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7F07C90@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController_onDismissal);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D7E74D6C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D7E19F24(v4);
}

uint64_t sub_1D7F07D30(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D7F08F64;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController_onDismissal);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1D7E19F24(v3);
  return sub_1D7E0E10C(v8);
}

uint64_t OnboardingViewController.onDismissal.getter()
{
  OUTLINED_FUNCTION_1_19();
  v0 = OUTLINED_FUNCTION_112();
  sub_1D7E19F24(v0);
  return OUTLINED_FUNCTION_112();
}

uint64_t OnboardingViewController.onDismissal.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController_onDismissal);
  OUTLINED_FUNCTION_3_25();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1D7E0E10C(v6);
}

uint64_t OnboardingViewController.init(configuration:onboardingStepMonitor:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = *a1;
  v6 = a1[1];
  v8 = &v4[OBJC_IVAR____TtC5TeaUI24OnboardingViewController_onboardingStepMonitor];
  *(v8 + 1) = 0;
  v22 = v8;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC5TeaUI24OnboardingViewController_onDismissal];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC5TeaUI24OnboardingViewController____lazy_storage___onboardingViewControllers] = 0;
  *&v4[OBJC_IVAR____TtC5TeaUI24OnboardingViewController_currentIndex] = -1;
  v10 = &v4[OBJC_IVAR____TtC5TeaUI24OnboardingViewController_configuration];
  *v10 = v7;
  *(v10 + 1) = v6;
  v25 = v6;
  v11 = *(v7 + 16);
  v12 = v7 + 32;
  result = sub_1D8190DB4();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 == v14)
    {
      *&v4[OBJC_IVAR____TtC5TeaUI24OnboardingViewController_stepsToBeShown] = v15;
      *(v22 + 1) = a3;
      swift_unknownObjectWeakAssign();
      v26.receiver = v4;
      v26.super_class = ObjectType;
      v21 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
      [v21 setModalPresentationStyle_];

      [v21 setModalInPresentation_];

      swift_unknownObjectRelease();
      return v21;
    }

    if (v14 >= *(v7 + 16))
    {
      break;
    }

    sub_1D7E0E768(v12, &v28);
    v16 = v29;
    v17 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    if ((*(v17 + 8))(v16, v17))
    {
      sub_1D7E05450(&v28, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7F08EF4(0, *(v15 + 16) + 1, 1);
        v15 = v31;
      }

      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D7F08EF4(v19 > 1, v20 + 1, 1);
        v15 = v31;
      }

      *(v15 + 16) = v20 + 1;
      result = sub_1D7E05450(v27, v15 + 40 * v20 + 32);
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    }

    v12 += 40;
    ++v14;
  }

  __break(1u);
  return result;
}

void sub_1D7F0818C()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController_onboardingStepMonitor + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController_onDismissal);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController____lazy_storage___onboardingViewControllers) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController_currentIndex) = -1;
  sub_1D81923A4();
  __break(1u);
}

uint64_t sub_1D7F08260()
{
  v1 = OBJC_IVAR____TtC5TeaUI24OnboardingViewController____lazy_storage___onboardingViewControllers;
  if (*(v0 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController____lazy_storage___onboardingViewControllers))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController____lazy_storage___onboardingViewControllers);
  }

  else
  {
    v2 = sub_1D7F082C8(v0);
    *(v0 + v1) = v2;
    sub_1D8190DB4();
  }

  sub_1D8190DB4();
  return v2;
}

uint64_t sub_1D7F082C8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController_stepsToBeShown);
  v3 = *(v2 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v26 = MEMORY[0x1E69E7CC0];
    v19 = a1;
    sub_1D8190DB4();
    sub_1D81922A4();
    v5 = v2 + 32;
    do
    {
      sub_1D7E0E768(v5, v23);
      v6 = v24;
      v7 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v7 + 16))(v20, v6, v7);
      v8 = v21;
      v9 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v11 = v24;
      v10 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v12 = (*(v10 + 24))(v11, v10);
      v14 = v13;
      v16 = v24;
      v15 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v17 = (*(v15 + 32))(v16, v15);
      (*(v9 + 8))(v19, &protocol witness table for OnboardingViewController, v12, v14, v17, v18, v8, v9);
      sub_1D7E0E10C(v17);
      sub_1D7E0E10C(v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
      v5 += 40;
      --v3;
    }

    while (v3);

    return v26;
  }

  return result;
}

Swift::Void __swiftcall OnboardingViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  sub_1D7F08508();
}

void sub_1D7F08508()
{
  v1 = OBJC_IVAR____TtC5TeaUI24OnboardingViewController_currentIndex;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController_currentIndex);
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1D7F085B8(v2 - 1);
  v3 = *(v0 + v1);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_7:
    __break(1u);
    return;
  }

  *(v0 + v1) = v4;

  sub_1D7F086B8(v4);
}

void sub_1D7F085B8(uint64_t a1)
{
  if (a1 >= 1)
  {
    v2 = sub_1D7F08260();
    sub_1D7E33DD8(a1, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1DA714420](a1, v2);
    }

    else
    {
      v3 = *(v2 + 8 * a1 + 32);
    }

    v6 = v3;

    [v6 willMoveToParentViewController_];
    v4 = [v6 view];
    if (v4)
    {
      v5 = v4;
      [v4 removeFromSuperview];

      [v6 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1D7F086B8(uint64_t a1)
{
  v3 = sub_1D7F08260();
  v4 = sub_1D7E36AB8(v3);

  if (v4 <= a1)
  {
    v30 = &v1[OBJC_IVAR____TtC5TeaUI24OnboardingViewController_onDismissal];
    swift_beginAccess();
    if (*v30)
    {
      v31 = *(v30 + 1);
      aBlock[4] = *v30;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7E64940;
      aBlock[3] = &block_descriptor_1;
      v32 = _Block_copy(aBlock);
    }

    else
    {
      v32 = 0;
    }

    [v1 dismissViewControllerAnimated:1 completion:v32];
    _Block_release(v32);
  }

  else
  {
    v5 = *&v1[OBJC_IVAR____TtC5TeaUI24OnboardingViewController____lazy_storage___onboardingViewControllers];
    sub_1D7E33DD8(a1, (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) != 0)
    {
      sub_1D8190DB4();
      v34 = MEMORY[0x1DA714420](a1, v5);

      v6 = v34;
    }

    else
    {
      v6 = *(v5 + 8 * a1 + 32);
    }

    [v1 addChildViewController_];
    v7 = [v1 view];
    if (!v7)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = v7;
    v9 = [v33 view];
    if (!v9)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = v9;
    [v8 addSubview_];

    [v33 didMoveToParentViewController_];
    v11 = [v33 view];
    if (!v11)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v12 = v11;
    v13 = [v1 view];
    if (!v13)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v14 = v13;
    [v13 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [v12 setFrame_];
    v23 = [v33 view];
    if (!v23)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v24 = v23;
    [v23 setAutoresizingMask_];

    [v33 preferredContentSize];
    [v1 setPreferredContentSize_];
    [v33 setModalPresentationStyle_];
    v25 = &v1[OBJC_IVAR____TtC5TeaUI24OnboardingViewController_onboardingStepMonitor];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 1);
      ObjectType = swift_getObjectType();
      if (a1 < 0)
      {
        __break(1u);
      }

      else
      {
        v28 = *&v1[OBJC_IVAR____TtC5TeaUI24OnboardingViewController_stepsToBeShown];
        if (*(v28 + 16) > a1)
        {
          v29 = ObjectType;
          sub_1D7E0E768(v28 + 40 * a1 + 32, aBlock);
          (*(v26 + 8))(aBlock, v29, v26);

          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
          return;
        }
      }

      __break(1u);
      goto LABEL_23;
    }
  }
}

id OnboardingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id OnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall OnboardingViewController.screenDidComplete(_:)(UIViewController *a1)
{
  if (!sub_1D7F08CF0())
  {
    goto LABEL_6;
  }

  v2 = v1 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController_onboardingStepMonitor;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_6;
  }

  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v1 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController_currentIndex);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC5TeaUI24OnboardingViewController_stepsToBeShown);
    if (v5 < *(v6 + 16))
    {
      v7 = ObjectType;
      sub_1D7E0E768(v6 + 40 * v5 + 32, v8);
      (*(v3 + 16))(v8, v7, v3);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
LABEL_6:
      sub_1D7F08508();
      return;
    }
  }

  __break(1u);
}

BOOL static OnboardingViewController.isCurrentlyPresenting()()
{
  if (qword_1ECA0C250 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  OUTLINED_FUNCTION_1_19();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    while (1)
    {
      v1 = [Strong viewIfLoaded];
      if (v1)
      {
        v2 = v1;
        v3 = [v1 window];

        if (v3)
        {
          v4 = [v3 isHidden];

          if ((v4 & 1) == 0)
          {
            break;
          }
        }
      }

      v5 = [Strong presentedViewController];

      Strong = v5;
      if (!v5)
      {
        return Strong != 0;
      }
    }
  }

  return Strong != 0;
}

uint64_t BlueprintManualImpressionUpdateProvider.set(visibleViewAccessor:visibleRectAccessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_visibleViewAccessor);
  v8 = *(v4 + OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_visibleViewAccessor);
  *v7 = a1;
  v7[1] = a2;
  sub_1D7E0E10C(v8);
  v9 = (v4 + OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_visibleRectAccessor);
  v10 = *(v4 + OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_visibleRectAccessor);
  *v9 = a3;
  v9[1] = a4;

  sub_1D7E0E10C(v10);
}

id sub_1D7F09294(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

Swift::Void __swiftcall BlueprintManualImpressionUpdateProvider.updateImpressions(for:with:)(UIView *a1, __C::CGRect with)
{
  height = with.size.height;
  width = with.size.width;
  y = with.origin.y;
  x = with.origin.x;
  v8 = OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_updateImpressionsBlocks;
  swift_beginAccess();
  v9 = *(v2 + v8);
  v10 = *(v9 + 16);
  sub_1D8190DB4();
  v11 = 0;
  for (i = v9 + 40; ; i += 16)
  {
    if (v10 == v11)
    {

      return;
    }

    if (v11 >= *(v9 + 16))
    {
      break;
    }

    ++v11;
    v13 = *(i - 8);
    v15 = a1;
    *v14 = x;
    *&v14[1] = y;
    *&v14[2] = width;
    *&v14[3] = height;

    v13(&v15, v14);
  }

  __break(1u);
}

Swift::Void __swiftcall BlueprintManualImpressionUpdateProvider.endImpressions()()
{
  v1 = OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_endImpressionsBlocks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  sub_1D8190DB4();
  v4 = 0;
  for (i = v2 + 40; ; i += 16)
  {
    if (v3 == v4)
    {

      return;
    }

    if (v4 >= *(v2 + 16))
    {
      break;
    }

    ++v4;
    v6 = *(i - 8);

    v6(v7);
  }

  __break(1u);
}

uint64_t sub_1D7F09548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_updateImpressionsBlocks;
  OUTLINED_FUNCTION_2_22();

  sub_1D7EE4374();
  OUTLINED_FUNCTION_1_20();
  sub_1D7EE45A0();
  OUTLINED_FUNCTION_0_18();
  *(v8 + 32) = sub_1D7F0987C;
  *(v8 + 40) = v6;
  *(v3 + v7) = v9;
  return swift_endAccess();
}

uint64_t sub_1D7F09620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_endImpressionsBlocks;
  OUTLINED_FUNCTION_2_22();

  sub_1D7EE438C();
  OUTLINED_FUNCTION_1_20();
  sub_1D7EE45B8();
  OUTLINED_FUNCTION_0_18();
  *(v8 + 32) = sub_1D7E74D6C;
  *(v8 + 40) = v6;
  *(v3 + v7) = v9;
  return swift_endAccess();
}

id BlueprintManualImpressionUpdateProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlueprintManualImpressionUpdateProvider.init()()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_updateImpressionsBlocks] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_endImpressionsBlocks] = v2;
  v3 = &v0[OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_visibleViewAccessor];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR___TSBlueprintManualImpressionUpdateProvider_visibleRectAccessor];
  *v4 = 0;
  *(v4 + 1) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id BlueprintManualImpressionUpdateProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ContextMenuOptions.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7F0991C()
{
  result = qword_1ECA0D9A8;
  if (!qword_1ECA0D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D9A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextMenuOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContextMenuOptions(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t SharingActivityImage.name.getter()
{
  v1 = *(v0 + 8);
  sub_1D8190DB4();
  return v1;
}

uint64_t SharingActivityImage.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);
  sub_1D8190DB4();
  return v1;
}

void __swiftcall SharingActivityImage.init(name:image:bundleIdentifier:)(TeaUI::SharingActivityImage *__return_ptr retstr, Swift::String name, UIImage image, Swift::String_optional bundleIdentifier)
{
  retstr->image = image;
  retstr->name = name;
  retstr->bundleIdentifier = bundleIdentifier;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double sub_1D7F09B9C@<D0>(uint64_t a1@<X8>)
{
  sub_1D7EA51C4(&v5);
  v2 = v6;
  v3 = v7;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_1D7F09BE8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v1;
  sub_1D8190DB4();
  return sub_1D7F09E88(&v3);
}

uint64_t sub_1D7F09C38(uint64_t result)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *result;
    v4 = *(result + 16);
    v5 = *(result + 24);
    v6 = &v1[qword_1EDBB8C78];
    swift_beginAccess();
    v7 = *(v6 + 1);
    if (!v7)
    {

      goto LABEL_15;
    }

    v8 = *v6;
    v9 = *(v6 + 2);
    v10 = v6[24];
    if (v3 == v8 && v2 == v7)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      v12 = sub_1D8192634();
      swift_bridgeObjectRetain_n();
      if ((v12 & 1) == 0)
      {
LABEL_14:
        swift_bridgeObjectRelease_n();
LABEL_15:
        v13 = objc_opt_self();
        v14 = swift_allocObject();
        *(v14 + 16) = v1;
        v15 = swift_allocObject();
        *(v15 + 16) = sub_1D7F0AFB0;
        *(v15 + 24) = v14;
        aBlock[4] = sub_1D7E74D6C;
        aBlock[5] = v15;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D7E74D74;
        aBlock[3] = &block_descriptor_2;
        v16 = _Block_copy(aBlock);
        v17 = v1;

        [v13 performWithoutAnimation_];
        _Block_release(v16);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        return result;
      }
    }

    if (v4 == v9)
    {
      result = swift_bridgeObjectRelease_n();
      if (((v5 ^ v10) & 1) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1D7F09E88(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = (v1 + qword_1EDBB8C78);
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 24);
  *(v6 + 24) = v5;
  v11 = v7;
  v9 = *(v6 + 1);
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v12 = v9;
  v13 = v8;
  sub_1D7F09C38(&v11);
}

void (*sub_1D7F09F20(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *(v3 + 7) = v1;
  v4 = v1 + qword_1EDBB8C78;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 8);
  *v3 = *v4;
  *(v3 + 8) = v6;
  v3[24] = v5;
  sub_1D8190DB4();
  return sub_1D7F09FC0;
}

void sub_1D7F09FC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = v2[2];
  v6 = *(v2 + 24);
  v7[0] = v4;
  v7[1] = v3;
  v7[2] = v5;
  v8 = v6;
  if (a2)
  {
    sub_1D8190DB4();
    sub_1D7F09E88(v7);
  }

  else
  {
    sub_1D7F09E88(v7);
  }

  free(v2);
}

id sub_1D7F0A084()
{
  v1 = qword_1EDBB8C80;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id CollectionReusableView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id CollectionReusableView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CollectionReusableView.init(coder:)()
{
  v1 = v0 + qword_1EDBB8C78;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  *(v1 + 24) = 0;
  v2 = qword_1EDBB8C80;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v3 = (v0 + qword_1EDBB8C90);
  *v3 = 0;
  v3[1] = 0;
  sub_1D81923A4();
  __break(1u);
}

id CollectionReusableView.__deallocating_deinit()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_14();
  return objc_msgSendSuper2(&v1, sel_dealloc);
}

uint64_t sub_1D7F0A290(uint64_t a1)
{

  v2 = *(a1 + qword_1EDBB8C90);

  return sub_1D7E0E10C(v2);
}

uint64_t CollectionReusableView.keyCommandBlocks.getter()
{
  v12 = MEMORY[0x1E69E7CC0];
  v8 = *(v0 + qword_1EDBB8C88);
  OUTLINED_FUNCTION_2_0();
  sub_1D7E0631C(0, &qword_1EDBB6760);
  v1 = v8;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v6, v9);
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v3 + 8))(v2, v3);
    sub_1D7E457BC(v4, sub_1D7E36AB8, sub_1D7E45BEC, sub_1D80B6CA0);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D7F0A44C(v6);
  }

  return v12;
}

uint64_t sub_1D7F0A44C(uint64_t a1)
{
  sub_1D7E328A8(0, &qword_1EDBB6758, &qword_1EDBB6760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7F0A52C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_19(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D80B6C10(v4, 1);
  OUTLINED_FUNCTION_4_15();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_21();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_14();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_3_26();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D7F0A5C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1D80B6C10(v7 + v6, 1);
  v9 = *v4;
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v9;
      return;
    }

    __break(1u);
  }

  if ((*(v9 + 24) >> 1) - *(v9 + 16) < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, v6);
  v12 = v10 + v6;
  if (!v11)
  {
    *(v9 + 16) = v12;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1D7F0A7D0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1D7F0A8E8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_19(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D80B6C40(v4, 1);
  OUTLINED_FUNCTION_4_15();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_21();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_3_26();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D7F0A988(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_19(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D80B6C58(v4, 1);
  OUTLINED_FUNCTION_4_15();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_21();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1D7E328A8(0, &qword_1EDBB9550, qword_1EDBB9558);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_3_26();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1D7F0AA4C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_19(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D80B6C70(v4, 1);
  OUTLINED_FUNCTION_4_15();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_21();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_14();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_3_26();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t CollectionReusableView.registerForChanges(block:)(uint64_t a1, uint64_t a2)
{

  return sub_1D7EA55A4(a1, a2);
}

uint64_t ContextMenuStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7F0B050()
{
  result = qword_1ECA0D9B0;
  if (!qword_1ECA0D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D9B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TabBarSplitViewPresentation.ModalPane(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContextMenuStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t MenuGroup.GroupType.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t MenuGroup.groupItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D7F0B324(v1, &v5);
  if (v7 > 2u)
  {

    result = sub_1D7E05450(v6, a1);
    v4 = 3;
  }

  else
  {
    sub_1D7F0B35C(&v5);
    result = sub_1D7F0B324(v1, a1);
    v4 = 2;
  }

  *(a1 + 73) = v4;
  return result;
}

uint64_t MenuGroup.init(_:remove:groups:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 72) = 0;
  return result;
}

void MenuGroup.init(title:location:type:children:)()
{
  OUTLINED_FUNCTION_120();
  v23 = v0;
  v24 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  v17 = *v5;
  v18 = *(v5 + 8);
  v19 = *v3;
  sub_1D818E784();
  v20 = sub_1D818E764();
  v22 = v21;
  (*(v12 + 8))(v16, v10);
  *v9 = v20;
  *(v9 + 8) = v22;
  *(v9 + 16) = v7;
  *(v9 + 24) = v23;
  *(v9 + 32) = v17;
  *(v9 + 40) = v18;
  *(v9 + 41) = v19;
  *(v9 + 42) = v25;
  *(v9 + 46) = v26;
  *(v9 + 48) = v24;
  *(v9 + 72) = 1;
  OUTLINED_FUNCTION_100();
}

void MenuGroup.init(title:symbolName:location:type:children:)()
{
  OUTLINED_FUNCTION_120();
  v27 = v0;
  v28 = v1;
  v3 = v2;
  v5 = v4;
  v25 = v6;
  v26 = v7;
  v9 = v8;
  v11 = v10;
  v12 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v18 = v17 - v16;
  v19 = *v5;
  v20 = *(v5 + 8);
  v21 = *v3;
  sub_1D818E784();
  v22 = sub_1D818E764();
  v24 = v23;
  (*(v14 + 8))(v18, v12);
  *v11 = v22;
  *(v11 + 8) = v24;
  *(v11 + 16) = v9;
  *(v11 + 24) = v25;
  *(v11 + 32) = v26;
  *(v11 + 40) = v27;
  *(v11 + 48) = v19;
  *(v11 + 56) = v20;
  *(v11 + 57) = v21;
  *(v11 + 58) = v29;
  *(v11 + 62) = v30;
  *(v11 + 64) = v28;
  *(v11 + 72) = 2;
  OUTLINED_FUNCTION_100();
}

uint64_t MenuGroup.init(provider:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  sub_1D818E784();
  v11 = sub_1D818E764();
  v13 = v12;
  (*(v6 + 8))(v10, v4);
  *a2 = v11;
  *(a2 + 8) = v13;
  result = sub_1D7E05450(a1, a2 + 16);
  *(a2 + 72) = 3;
  return result;
}

void MenuGroup.init<A>(command:title:symbolName:location:type:optionTitle:optionKey:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23)
{
  OUTLINED_FUNCTION_120();
  a19 = v23;
  a20 = v24;
  v58 = v25;
  v27 = v26;
  v65 = v28;
  v66 = v29;
  v63 = v30;
  v64 = v31;
  v33 = v32;
  v35 = v34;
  v36 = a23;
  v57 = a21;
  v37 = a22;
  v38 = *v32;
  v39 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  v45 = v44 - v43;
  v62 = *v27;
  v61 = *(v27 + 8);
  v46 = *v37;
  v47 = *(v37 + 8);
  sub_1D818E784();
  v60 = sub_1D818E764();
  v59 = v48;
  (*(v41 + 8))(v45, v39);
  v70 = v36;
  v49 = *(v38 + 88);
  v50 = sub_1D8191484();
  OUTLINED_FUNCTION_18();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1DA7133A0](&v71, v50, WitnessTable);

  v70 = v71;
  v68[2] = v33;
  v68[3] = v58;
  v68[4] = v57;
  v68[5] = v46;
  v69 = v47;
  v67[2] = v49;
  v67[3] = sub_1D7F0BB34;
  v67[4] = v68;
  v52 = sub_1D81923F4();
  v53 = sub_1D7F0BBEC();
  OUTLINED_FUNCTION_4_7();
  v54 = swift_getWitnessTable();
  v55 = OUTLINED_FUNCTION_2_23(v54);
  sub_1D7E6CDC0(sub_1D7F0BBC8, v67, v52, v53, MEMORY[0x1E69E73E0], v55, MEMORY[0x1E69E7410], v56);

  *v35 = v60;
  *(v35 + 8) = v59;
  *(v35 + 16) = v63;
  *(v35 + 24) = v64;
  *(v35 + 32) = v65;
  *(v35 + 40) = v66;
  *(v35 + 48) = v62;
  *(v35 + 56) = v61;
  OUTLINED_FUNCTION_5_9(&a17);
  OUTLINED_FUNCTION_100();
}

void sub_1D7F0B958(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, char a6@<W6>, uint64_t *a7@<X8>)
{
  v13 = *(*a3 + 88);
  v14 = sub_1D8191E84();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - v16;
  (*(*(v13 - 8) + 16))(&v25 - v16, a2, v13, v15);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v13);
  v18 = a4(a2);
  v20 = v19;
  if (a6)
  {
    goto LABEL_5;
  }

  if (!__OFADD__(a1, 1))
  {
    if (a1 + 1 <= 9)
    {
      v28 = a1 + 1;
      v21 = sub_1D81925B4();
LABEL_6:
      v28 = v21;
      v29 = v22;
      v30 = a5;
      v27 = 0;
      sub_1D7ED0714(&v26 + 7);
      a7[3] = &type metadata for MenuItem;
      a7[4] = &protocol witness table for MenuItem;
      *a7 = swift_allocObject();

      MenuItem.init<A>(command:context:title:symbolName:key:options:alternate:)(v23, v17, v18, v20, 0, 0xE000000000000000, &v28, &v26 + 7, &v27, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
      return;
    }

LABEL_5:
    v21 = 0;
    v22 = 0;
    a5 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D7F0BB44(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

unint64_t sub_1D7F0BBEC()
{
  result = qword_1EDBBB710;
  if (!qword_1EDBBB710)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBB710);
  }

  return result;
}

void MenuGroup.init<A, B>(command:title:location:type:optionTitle:optionKey:optionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_120();
  v24 = v23;
  v59 = v25;
  v62 = v26;
  v28 = v27;
  v30 = v29;
  v60 = v31;
  v33 = v32;
  v58 = v34;
  v63 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v61 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  v39 = v38 - v37;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  v43 = v42 - v41;
  v44 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  v45 = *v28;
  v46 = *v24;
  v47 = *(v24 + 8);
  v48 = type metadata accessor for DynamicMenuGroupOptionProvider();
  v68 = v45;
  v66 = v44;
  v67 = v30;
  v64 = v46;
  v65 = v47;
  v49 = OUTLINED_FUNCTION_6_11();
  v50(v49);

  v57 = v46;

  sub_1D802454C(v58, v59, v60, 0, 0xE000000000000000, &v68, &v66, v62, v51, &v64, v43, v57, a23);
  sub_1D818E784();
  v52 = sub_1D818E764();
  v54 = v53;
  (*(v61 + 8))(v39, v63);
  *v33 = v52;
  *(v33 + 8) = v54;
  *(v33 + 40) = v48;
  *(v33 + 48) = &off_1F52F6930;

  v55 = OUTLINED_FUNCTION_11_9();
  v56(v55);
  *(v33 + 72) = 3;
  OUTLINED_FUNCTION_100();
}

void MenuGroup.init<A, B>(command:title:symbolName:location:type:state:optionTitle:optionKey:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24)
{
  OUTLINED_FUNCTION_120();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v29 = v28;
  v68 = v30;
  v67 = v31;
  v66 = v32;
  v65 = v33;
  v35 = v34;
  v37 = v36;
  v60 = a22;
  v59 = a21;
  v57 = a24;
  v38 = a23;
  v39 = *v34;
  v58 = *v34;
  v40 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_15();
  v46 = v45 - v44;
  v64 = *v29;
  v63 = *(v29 + 8);
  LOBYTE(v29) = *v27;
  v47 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  sub_1D818E784();
  v62 = sub_1D818E764();
  v61 = v48;
  (*(v42 + 8))(v46, v40);
  v77 = v57;
  v49 = *(v39 + 136);
  v50 = sub_1D8191484();
  OUTLINED_FUNCTION_18();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1DA7133A0](&v78, v50, WitnessTable);

  v77 = v78;
  v73[2] = v35;
  v73[3] = v59;
  v73[4] = v60;
  v74 = v29;
  v75 = v47;
  v76 = v38;
  v69[2] = v49;
  v70 = *(v58 + 144);
  v71 = sub_1D7F0C434;
  v72 = v73;
  v52 = sub_1D81923F4();
  v53 = sub_1D7F0BBEC();
  OUTLINED_FUNCTION_4_7();
  v54 = swift_getWitnessTable();
  v55 = OUTLINED_FUNCTION_2_23(v54);
  sub_1D7E6CDC0(sub_1D7F0C44C, v69, v52, v53, MEMORY[0x1E69E73E0], v55, MEMORY[0x1E69E7410], v56);

  *v37 = v62;
  *(v37 + 8) = v61;
  *(v37 + 16) = v65;
  *(v37 + 24) = v66;
  *(v37 + 32) = v67;
  *(v37 + 40) = v68;
  *(v37 + 48) = v64;
  *(v37 + 56) = v63;
  OUTLINED_FUNCTION_5_9(&a13);
  OUTLINED_FUNCTION_100();
}

void sub_1D7F0C204(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, char a5@<W5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t *a8@<X8>)
{
  v25 = a6;
  v26 = a1;
  v13 = *(*a3 + 136);
  v14 = sub_1D8191E84();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - v16;
  (*(*(v13 - 8) + 16))(&v25 - v16, a2, v13, v15);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v13);
  v18 = a4(a2);
  v20 = v19;
  v36 = a5 & 1;
  if (a7)
  {
    goto LABEL_5;
  }

  if (!__OFADD__(v26, 1))
  {
    if (v26 + 1 <= 9)
    {
      v33 = (v26 + 1);
      v21 = sub_1D81925B4();
      v23 = v25;
LABEL_6:
      v33 = v21;
      v34 = v22;
      v35 = v23;
      v32 = 0;
      sub_1D80245BC();
      v27 = v30;
      LOBYTE(v28) = v31;
      a8[3] = &type metadata for MenuItem;
      a8[4] = &protocol witness table for MenuItem;
      *a8 = swift_allocObject();

      MenuItem.init<A, B>(command:context:title:symbolName:state:key:options:alternate:)(v24, v17, v18, v20, 0, 0xE000000000000000, &v36, &v33, &v27, &v32, v25, v26, v27, *(&v27 + 1), v28, v29, v30, *(&v30 + 1), v31, v32, v33, v34);
      return;
    }

LABEL_5:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void MenuGroup.init<A, B, C>(command:title:location:type:state:optionTitle:optionKey:optionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_120();
  v62 = v25;
  v63 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v61 = v32;
  v34 = v33;
  v59 = v35;
  v64 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v60 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15();
  v40 = v39 - v38;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15();
  v44 = v43 - v42;
  v45 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  LOBYTE(v29) = *v29;
  v46 = *v27;
  v47 = *a21;
  v48 = *(a21 + 8);
  v58 = type metadata accessor for DynamicMenuGroupOptionProvider();
  v70 = v46;
  v69 = v29;
  v67 = v45;
  v68 = v31;
  v65 = v47;
  v66 = v48;
  v49 = OUTLINED_FUNCTION_6_11();
  v50(v49);

  v57 = v46;

  sub_1D80245C8(v59, v61, v63, 0, 0xE000000000000000, &v70, &v69, &v67, v62, v51, &v65, v44, v57, a24);
  sub_1D818E784();
  v52 = sub_1D818E764();
  v54 = v53;
  (*(v60 + 8))(v40, v64);
  *v34 = v52;
  *(v34 + 8) = v54;
  *(v34 + 40) = v58;
  *(v34 + 48) = &off_1F52F6930;

  v55 = OUTLINED_FUNCTION_11_9();
  v56(v55);
  *(v34 + 72) = 3;
  OUTLINED_FUNCTION_100();
}

unint64_t sub_1D7F0C738()
{
  result = qword_1ECA0D9B8;
  if (!qword_1ECA0D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0D9B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI9MenuGroupO8LocationO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1D7F0C7B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 73))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 72);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7F0C7F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7F0C840(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 72) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MenuGroup.GroupType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FlowOption(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FlowOption(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1D7F0C9E0(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t KeyCommandUnownedProvider.invalidator.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*KeyCommandUnownedProvider.invalidator.modify(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F0CB10;
}

uint64_t KeyCommandUnownedProvider.__allocating_init(provider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  KeyCommandUnownedProvider.init(provider:)(a1, a2);
  return v4;
}

uint64_t KeyCommandUnownedProvider.init(provider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t KeyCommandUnownedProvider.register(in:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t KeyCommandUnownedProvider.deinit()
{
  sub_1D7E166A0(v0 + 16);
  sub_1D7E166A0(v0 + 32);
  return v0;
}

uint64_t KeyCommandUnownedProvider.__deallocating_deinit()
{
  sub_1D7E166A0(v0 + 16);
  sub_1D7E166A0(v0 + 32);

  return swift_deallocClassInstance();
}

void (*sub_1D7F0CCC4(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F0CD98;
}

uint64_t sub_1D7F0CD9C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t BlueprintViewContextMenuInteractor.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*BlueprintViewContextMenuInteractor.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1D7F0D010;
}

void sub_1D7F0D010(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id BlueprintViewContextMenuInteractor.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
    v5 = *(v4 + 56);
    v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
    v7 = v3;
    swift_unknownObjectRetain();
    v8 = v5(v6, v4);
    swift_unknownObjectRelease();
    [v8 removeInteraction_];

    v9 = *(v0 + v2);
    *(v0 + v2) = 0;
  }

  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

uint64_t sub_1D7F0D1E4(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  MEMORY[0x1DA715E30](&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x80)]);
  OUTLINED_FUNCTION_1();
  (*(*(*((v3 & v2) + 0x50) - 8) + 8))(&a1[*(v4 + 136)]);
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](&a1[*(v5 + 160)]);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  return __swift_destroy_boxed_opaque_existential_1Tm(&a1[*(v7 + 176)]);
}

UIContextMenuConfiguration_optional __swiftcall BlueprintViewContextMenuInteractor.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  isa = _.super.isa;
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v60 = *MEMORY[0x1E69E7D40] & *v2;
  v64 = *((v4 & v3) + 0x50);
  OUTLINED_FUNCTION_2();
  v61 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v60 - v7;
  OUTLINED_FUNCTION_3_27();
  sub_1D7E1ACA8(0, v8, v9);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v60 - v12;
  v14 = *(v2 + *((v4 & v3) + 0x90));
  v15 = *((v4 & v3) + 0x70);
  v16 = *(v15 + 56);
  v63 = v2;
  v17 = *((v4 & v3) + 0x58);
  v66 = v14;
  v18 = v16(v17, v15, v11);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(AssociatedConformanceWitness + 120);
  v21 = swift_checkMetadataState();
  v22 = v20(v21, AssociatedConformanceWitness);

  if (v22)
  {
    goto LABEL_8;
  }

  v24 = OUTLINED_FUNCTION_4_16();
  v25 = (v16)(v24);
  [(objc_class *)isa locationInView:v25];
  v27 = v26;
  v29 = v28;

  v30 = OUTLINED_FUNCTION_4_16();
  v31 = (v16)(v30);
  (*(AssociatedConformanceWitness + 64))(v21, AssociatedConformanceWitness, v27, v29);

  v32 = sub_1D818E994();
  LODWORD(v31) = __swift_getEnumTagSinglePayload(v13, 1, v32);
  OUTLINED_FUNCTION_3_27();
  sub_1D7E54A48(v13, v33, v34);
  if (v31 != 1)
  {
    goto LABEL_8;
  }

  v35 = MEMORY[0x1E69E7D40];
  (*(v61 + 16))(v62, v63 + *((*MEMORY[0x1E69E7D40] & *v63) + 0x88), v64);
  sub_1D7E4138C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    sub_1D7E54A48(&v68, &unk_1ECA0D9C0, sub_1D7E4138C);
LABEL_8:
    v58 = 0;
    goto LABEL_9;
  }

  sub_1D7E05450(&v68, v71);
  v36 = v72;
  v37 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  if (!(*(v37 + 8))(v36, v37))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    goto LABEL_8;
  }

  HIBYTE(v67) = 2;
  v38 = v35;
  v39 = v63;
  sub_1D7E0E768(v63 + *((*v38 & *v63) + 0xB0), &v68);
  v40 = OUTLINED_FUNCTION_4_16();
  v41 = (v16)(v40);
  memset(v74, 0, sizeof(v74));
  v75 = 1;
  OUTLINED_FUNCTION_0_8();
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  v43[2] = v64;
  v43[3] = v17;
  v44 = v60;
  v43[4] = *(v60 + 96);
  v43[5] = *(v44 + 104);
  v43[6] = v15;
  v43[7] = *(v44 + 120);
  v43[8] = v42;
  type metadata accessor for CommandExecutionSource();
  v45 = swift_allocObject();
  v46 = *(&v69 + 1);
  v47 = v70;
  __swift_mutable_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
  OUTLINED_FUNCTION_2();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v60 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v52 + 16))(v51, v49);
  sub_1D7E3B938(&v67 + 7, v51, v41, v74, 0, sub_1D7F0DC3C, v43, v45, v46, v47, v60, v61, v62, v63, v64, isa, v66, v67, v68, *(&v68 + 1), v69, *(&v69 + 1));
  v54 = v53;
  __swift_destroy_boxed_opaque_existential_1Tm(&v68);
  v55 = (v39 + *((*MEMORY[0x1E69E7D40] & *v39) + 0x98));
  v56 = ContextMenu.build(commandCenter:source:)(*v55, v55[1], v54);
  sub_1D7E0A1A8(0, &unk_1EDBAE4B0);
  OUTLINED_FUNCTION_0_8();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  v58 = sub_1D7F0DCE4(0, 0, 0, sub_1D7F0E8C8, v57);

  __swift_destroy_boxed_opaque_existential_1Tm(v71);
LABEL_9:
  v59 = v58;
  result.value.super.isa = v59;
  result.is_nil = v23;
  return result;
}

char *sub_1D7F0D968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a1;
  *&v24 = swift_getAssociatedTypeWitness();
  *(&v24 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Blueprint();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v21 = a6;
    v19 = *((*MEMORY[0x1E69E7D40] & *result) + 0x98);
    v20 = swift_allocObject();
    v23 = *&v18[v19];
    v27 = &type metadata for CommandContextProvider;
    AssociatedConformanceWitness = v20;
    sub_1D7F0E928(a2, v20 + 16);
    v24 = v23;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRetain();
      BlueprintProviderType.blueprint.getter(a4, a7);
      (*(a9 + 176))(v16, v22, &v24, v21, a9);

      swift_unknownObjectRelease();
      (*(v14 + 8))(v16, v13);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    return sub_1D7F0E984(&v24);
  }

  return result;
}

uint64_t sub_1D7F0DC70()
{
  sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
  sub_1D8190DB4();
  return sub_1D8191C44();
}

id sub_1D7F0DCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  OUTLINED_FUNCTION_2_1();
  v14 = 1107296256;
  v15 = sub_1D7F0E7E8;
  v16 = &block_descriptor_12;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  OUTLINED_FUNCTION_2_1();
  v14 = 1107296256;
  v15 = sub_1D7F0E838;
  v16 = &block_descriptor_3;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_1D7E0E10C(a4);
  sub_1D7E0E10C(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

id sub_1D7F0DE54(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v8 = BlueprintViewContextMenuInteractor.contextMenuInteraction(_:configurationForMenuAtLocation:)(v4, __PAIR128__(v7, v6));

  return v8;
}

id BlueprintViewContextMenuInteractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PreviewViewController.init(previewedViewController:triggeringViewController:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC5TeaUI21PreviewViewController_previewedViewController] = a1;
  swift_unknownObjectWeakAssign();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);

  return v7;
}

void sub_1D7F0E018()
{
  swift_unknownObjectWeakInit();
  sub_1D81923A4();
  __break(1u);
}

id sub_1D7F0E0A0()
{
  v3 = *(v0 + OBJC_IVAR____TtC5TeaUI21PreviewViewController_previewedViewController);
  [v3 willMoveToParentViewController_];
  result = [v3 view];
  if (result)
  {
    v2 = result;
    [result removeFromSuperview];

    [v3 removeFromParentViewController];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PreviewViewController.viewDidLoad()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI21PreviewViewController_previewedViewController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [(UIViewController *)v1 view];
    if (v4)
    {
      v5 = v4;
      [v3 addSubview_];

      [(UIViewController *)v1 didMoveToParentViewController:v0];
      setPreviewing(viewController:previewing:)(v1, 1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall PreviewViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setNeedsStatusBarAppearanceUpdate];
  }
}

Swift::Void __swiftcall PreviewViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  [*&v1[OBJC_IVAR____TtC5TeaUI21PreviewViewController_previewedViewController] setNeedsStatusBarAppearanceUpdate];
}

Swift::Void __swiftcall PreviewViewController.viewWillLayoutSubviews()()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewWillLayoutSubviews);
  sub_1D7F0E524(v0);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = v9;
  v11 = *&v0[OBJC_IVAR____TtC5TeaUI21PreviewViewController_previewedViewController];
  v12 = [v11 view];
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [v12 backgroundColor];

  [v10 setBackgroundColor_];
  v15 = [v11 view];
  if (v15)
  {
    v16 = v15;
    [v15 setFrame_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1D7F0E524(char *a1)
{
  previewInsets(for:)(&v15, *&a1[OBJC_IVAR____TtC5TeaUI21PreviewViewController_previewedViewController]);
  top = v15.value.top;
  left = v15.value.left;
  is_nil = v15.is_nil;
  v5 = [a1 view];
  v6 = v5;
  if (is_nil)
  {
    if (v5)
    {
      [v5 bounds];

      return;
    }

    __break(1u);
  }

  else if (v5)
  {
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    UIEdgeInsetsInsetRect(v8, v10, v12, v14, top, left);
    return;
  }

  __break(1u);
}

id PreviewViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PreviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D7F0E7E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1D7F0E838(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1D7E0A1A8(0, &qword_1EDBB3208);
  v2 = sub_1D8191314();

  v3 = v1(v2);

  return v3;
}

uint64_t PatternSectionDecorationItem.asset.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_1D7F0E9F4();
}

__n128 PatternSectionDecorationItem.position.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t PatternSectionDecorationItem.identifier.getter()
{
  v1 = *(v0 + 40);
  sub_1D8190DB4();
  return v1;
}

__n128 PatternSectionDecorationItem.init(asset:position:overscrollPinPosition:identifier:ignoresInvertColors:ordering:pinTrait:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unsigned __int8 a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __n128 *a9@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = a2[1].n128_u8[0];
  v12 = *a3;
  v13 = *a7;
  v14 = *(a7 + 8);
  v15 = *a8;
  v16 = *(a8 + 8);
  v17 = 0x80000001D81A27F0;
  v18 = 0xD00000000000001CLL;
  if (a5)
  {
    v18 = a4;
    v17 = a5;
  }

  a9->n128_u64[0] = v9;
  a9->n128_u8[8] = v10;
  result = *a2;
  a9[1] = *a2;
  a9[2].n128_u8[0] = v11;
  a9[2].n128_u8[1] = v12;
  a9[2].n128_u64[1] = v18;
  a9[3].n128_u64[0] = v17;
  a9[3].n128_u8[8] = a6;
  a9[4].n128_u64[0] = v13;
  a9[4].n128_u8[8] = v14;
  a9[5].n128_u64[0] = v15;
  a9[5].n128_u8[8] = v16;
  return result;
}

uint64_t PatternSectionDecorationItem.Direction.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t PatternSectionDecorationItem.Anchor.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t static PatternSectionDecorationItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1D8192634();
  }
}

id sub_1D7F0EC58()
{
  v1 = &v0[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_model];
  v2 = !*&v0[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_model + 48] || v1[33] == 3;
  [v0 setClipsToBounds_];
  if (*(v1 + 6))
  {
    v3 = v1[56];
  }

  else
  {
    v3 = 0;
  }

  return [v0 setAccessibilityIgnoresInvertColors_];
}

id sub_1D7F0ECE0(const void *a1)
{
  memcpy(v4, (v1 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_model), 0x59uLL);
  memcpy((v1 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_model), a1, 0x59uLL);
  sub_1D7F0FA28(v4);
  return sub_1D7F0EC58();
}

void *sub_1D7F0ED44()
{
  type metadata accessor for SharedImageCache();
  swift_allocObject();
  v0 = SharedImageCache.init()();
  type metadata accessor for ImageProcessor();
  v1 = swift_allocObject();
  type metadata accessor for ImageDownloader();
  v2 = swift_allocObject();
  type metadata accessor for ImageCache();
  v3 = swift_allocObject();
  result = sub_1D7F119AC(v0, v1, v2, v3);
  off_1EDBAFB48 = result;
  return result;
}

id PatternSectionDecorationView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *PatternSectionDecorationView.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v3 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_patternView;
  *(v1 + v9) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v10 = (v1 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_model);
  *(v10 + 73) = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  v11 = (v1 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_token);
  sub_1D818E784();
  v12 = sub_1D818E764();
  v14 = v13;
  (*(v5 + 8))(v8, v3);
  *v11 = v12;
  v11[1] = v14;
  v20[0] = v1;
  v20[1] = ObjectType;
  v15 = OUTLINED_FUNCTION_80();
  v18 = objc_msgSendSuper2(v16, v17, v15);
  [v18 addSubview_];
  return v18;
}

void sub_1D7F0EFDC()
{
  v1 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_patternView;
  *(v0 + v7) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v8 = (v0 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_model);
  *(v8 + 73) = 0u;
  v8[3] = 0u;
  v8[4] = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  v9 = (v0 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_token);
  sub_1D818E784();
  v10 = sub_1D818E764();
  v12 = v11;
  (*(v3 + 8))(v6, v1);
  *v9 = v10;
  v9[1] = v12;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall PatternSectionDecorationView.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_patternView];
  [v1 transform];
  v6 = 0x3FF0000000000000;
  v7 = 0;
  v8 = 0;
  v9 = 0x3FF0000000000000;
  v10 = 0;
  v11 = 0;
  if (sub_1D8191A34())
  {
    [v0 bounds];
    [v1 setFrame_];
    v2 = &v0[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_model];
    if (*&v0[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_model + 48])
    {
      if ((v2[4] & 1) == 0)
      {
        v4 = v2[2];
        v3 = v2[3];
        [v1 frame];
        v13 = CGRectOffset(v12, v4, v3);
        [v1 setFrame_];
      }
    }
  }
}

Swift::Void __swiftcall PatternSectionDecorationView.willMove(toSuperview:)(UIView_optional *toSuperview)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  [(UIView_optional *)&v3 willMoveToSuperview:toSuperview];
}

Swift::Void __swiftcall PatternSectionDecorationView.apply(_:)(UICollectionViewLayoutAttributes *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24.receiver = v2;
  v24.super_class = ObjectType;
  [(UICollectionViewLayoutAttributes *)&v24 applyLayoutAttributes:a1, v9];
  sub_1D818E784();
  v12 = sub_1D818E764();
  v14 = v13;
  (*(v7 + 8))(v11, v5);
  v15 = &v2[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_token];
  *v15 = v12;
  v15[1] = v14;

  memset(__src, 0, 89);
  sub_1D7F0ECE0(__src);
  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
    swift_beginAccess();
    sub_1D7F0F5CC(v17 + v18, v22);
    if (v22[3])
    {
      sub_1D7E0631C(0, qword_1EDBB44D8);
      v19 = a1;
      if (swift_dynamicCast())
      {
        memcpy(v21, __src, 0x59uLL);
        memcpy(v20, __src, 0x59uLL);
        sub_1D7F0F6E4(v20);

        sub_1D7F0F890(v21);
      }

      else
      {
      }
    }

    else
    {
      sub_1D7F0F65C(v22);
    }
  }
}

uint64_t sub_1D7F0F5CC(uint64_t a1, uint64_t a2)
{
  sub_1D7E594C0(0, &qword_1EDBB44D0, qword_1EDBB44D8, &protocol descriptor for BlueprintLayoutSectionDecorationItemType, sub_1D7E0631C);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7F0F65C(uint64_t a1)
{
  sub_1D7E594C0(0, &qword_1EDBB44D0, qword_1EDBB44D8, &protocol descriptor for BlueprintLayoutSectionDecorationItemType, sub_1D7E0631C);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D7F0F6E4(void *__src)
{
  memcpy(__dst, __src, 0x59uLL);
  v2 = __dst[0];
  v3 = SLOBYTE(__dst[1]);
  if ((v3 & 0x80000000) != 0)
  {
    v13[0] = __dst[0];

    v6 = sub_1D7F0FB48(v13);
    if (v6)
    {
      v5 = v6;
      LOBYTE(v13[0]) = v3 & 1;
      sub_1D7F0FDC0(v6, v13);
      goto LABEL_6;
    }

    v13[0] = v2;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1D7F1011C(v13, v1, v10, v3 & 1);
LABEL_9:

    goto LABEL_10;
  }

  v13[0] = __dst[0];

  v4 = sub_1D7F0FB48(v13);
  if (!v4)
  {
    v7 = [v1 traitCollection];
    v8 = [v7 userInterfaceStyle];

    v13[0] = v2;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1D7F104A4(v13, v1, v9, v8, v3);
    goto LABEL_9;
  }

  v5 = v4;
  LOBYTE(v13[0]) = v3;
  sub_1D7F108AC(v4, v13, 0);
LABEL_6:

LABEL_10:
  sub_1D7F11990();
  memcpy(v13, __dst, 0x59uLL);
  sub_1D7F0F9F0(__dst, &v12);
  return sub_1D7F0ECE0(v13);
}

Swift::Void __swiftcall PatternSectionDecorationView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, isa);
  v3 = &v1[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_model];
  memcpy(__dst, &v1[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_model], 0x59uLL);
  if (__dst[6])
  {
    v4 = *(v3 + 1);
    __src[0] = *v3;
    __src[1] = v4;
    __src[2] = *(v3 + 2);
    v7 = __dst[6];
    v8 = *(v3 + 56);
    v9 = *(v3 + 72);
    v10 = v3[88];
    memcpy(v11, v3, 0x59uLL);
    sub_1D7F0F9F0(v11, &v5);
    sub_1D7F0F6E4(__src);
    sub_1D7F0FA28(__dst);
  }
}

uint64_t sub_1D7F0FA28(uint64_t a1)
{
  sub_1D7F0FA84();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7F0FA84()
{
  if (!qword_1EDBAFB50)
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAFB50);
    }
  }
}

void *sub_1D7F0FB48(uint64_t *a1)
{
  v2 = *a1;
  switch(*a1 >> 62)
  {
    case 1uLL:
      v12 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      v13 = [v1 traitCollection];
      v12(v18);

      v14 = [v1 traitCollection];
      [v14 userInterfaceStyle];

      type metadata accessor for ProcessedImageRequest();
      swift_initStackObject();
      v15 = ProcessedImageRequest.init(assetHandle:size:imageRenderingMode:userInterfaceStyle:)(v18, 0, 0, 1, 0);
      if (qword_1EDBAFB40 != -1)
      {
        swift_once();
      }

      v3 = MemoryImageCache.image(for:)(*(v15 + 24));

      goto LABEL_8;
    case 2uLL:
      v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      v6 = [v1 traitCollection];
      v5(v18);

      v3 = sub_1D7F0FB48(v18);

LABEL_8:

      break;
    case 3uLL:
      v7 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = *(v7 + 56);
      sub_1D7E0E768(v7 + 16, v18);
      v9 = v19;
      v10 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);

      v11 = [v1 traitCollection];
      v8(v17);

      v3 = (*(v10 + 24))(v17, v9, v10);

      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      break;
    default:
      v3 = *(v2 + 16);
      v4 = v3;
      break;
  }

  return v3;
}

void sub_1D7F0FDC0(void *a1, char *a2)
{
  v4 = *a2;
  v5 = [a1 imageAsset];
  if (!v5 || (v6 = v5, v7 = [v2 traitCollection], isEscapingClosureAtFileLocation = objc_msgSend(v6, sel_imageWithTraitCollection_, v7), v6, v7, !isEscapingClosureAtFileLocation))
  {
    isEscapingClosureAtFileLocation = a1;
  }

  v9 = *&v2[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_patternView];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithPatternImage_];
  [v9 setBackgroundColor_];

  v11 = [v9 layer];
  [v11 setContents_];

  v12 = [v9 layer];
  v13 = [v2 traitCollection];
  [v13 displayScale];
  v15 = v14;

  [v12 setContentsScale_];
  if (v4)
  {
    v16 = objc_opt_self();
    v9 = swift_allocObject();
    v9[2] = v2;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1D7F11998;
    *(v17 + 24) = v9;
    v24 = sub_1D7E74D6C;
    v25 = v17;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1D7E74D74;
    v23 = &block_descriptor_4;
    v18 = _Block_copy(&v20);
    v19 = v2;

    [v16 performWithoutAnimation_];

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v20 = 0x3FF0000000000000;
  v21 = 0;
  v22 = 0;
  v23 = 0x3FF0000000000000;
  v24 = 0;
  v25 = 0;
  [v9 setTransform_];
}

void sub_1D7F100A4(void *a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3 & 1;
    sub_1D7F0FDC0(a1, &v7);
  }
}

uint64_t sub_1D7F1011C(unint64_t *a1, void *a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = a4 & 1;
  *(v8 + 24) = a4 & 1;
  v10 = *a1;

  switch(v10 >> 62)
  {
    case 1uLL:
      v24 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      v25 = [a2 traitCollection];
      v24(v33);

      v26 = [a2 traitCollection];
      [v26 userInterfaceStyle];

      type metadata accessor for ProcessedImageRequest();
      swift_allocObject();
      v27 = ProcessedImageRequest.init(assetHandle:size:imageRenderingMode:userInterfaceStyle:)(v33, 0, 0, 1, 0);
      if (qword_1EDBAFB40 != -1)
      {
        swift_once();
      }

      v28 = off_1EDBAFB48;

      sub_1D7F122D4(v27, v28, a2, a3, v9);

      goto LABEL_8;
    case 2uLL:
      v13 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      v14 = [a2 traitCollection];
      v13(v33);

      sub_1D7F1011C(v33, a2, a3, v9);

      goto LABEL_8;
    case 3uLL:
      v15 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      sub_1D7E0E768(v15 + 16, v33);
      swift_retain_n();

      v17 = [a2 traitCollection];
      v16(v30);

      v18 = v31;
      v19 = v32;
      v20 = __swift_project_boxed_opaque_existential_1(v30, v31);
      v21 = v34;
      v22 = v35;
      v23 = __swift_project_boxed_opaque_existential_1(v33, v34);
      sub_1D7F129B4(v20, v23, sub_1D7F119A0, v8, a2, v18, v21, v19, v22);

      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);

LABEL_8:

      break;
    default:
      v11 = *(v10 + 16);
      swift_retain_n();
      v12 = v11;
      sub_1D7F100A4(v12, a3, v9);

      break;
  }
}

uint64_t sub_1D7F104A4(uint64_t *a1, void *a2, uint64_t a3, id a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;
  v11 = *a1;
  v12 = *a1 >> 62;

  switch(v12)
  {
    case 1uLL:
      v28 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      v29 = [a2 traitCollection];
      v28(v37);

      v30 = [a2 traitCollection];
      [v30 userInterfaceStyle];

      type metadata accessor for ProcessedImageRequest();
      swift_allocObject();
      v31 = ProcessedImageRequest.init(assetHandle:size:imageRenderingMode:userInterfaceStyle:)(v37, 0, 0, 1, 0);
      if (qword_1EDBAFB40 != -1)
      {
        swift_once();
      }

      v32 = off_1EDBAFB48;

      sub_1D7F11BDC(v31, v32, a2, a3, a4, a5);

      break;
    case 2uLL:
      v18 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      v19 = [a2 traitCollection];
      v18(v37);

      sub_1D7F104A4(v37, a2, a3, a4, a5);

      break;
    case 3uLL:
      v20 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      sub_1D7E0E768((v11 & 0x3FFFFFFFFFFFFFFFLL) + 16, v37);
      swift_retain_n();

      v21 = [a2 traitCollection];
      v20(v34);

      v22 = v35;
      v23 = v36;
      v24 = __swift_project_boxed_opaque_existential_1(v34, v35);
      v25 = v38;
      v26 = v39;
      v27 = __swift_project_boxed_opaque_existential_1(v37, v38);
      sub_1D7F129B4(v24, v27, sub_1D7F12C58, v10, a2, v22, v25, v23, v26);

      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);

      break;
    default:
      v13 = *(v11 + 16);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {

        v15 = v13;
        v16 = [Strong traitCollection];
        v17 = [v16 userInterfaceStyle];

        if (v17 == a4)
        {
          LOBYTE(v34[0]) = a5;
          sub_1D7F108AC(v15, v34, 1);
        }
      }

      else
      {
      }

      break;
  }
}

void sub_1D7F108AC(void *a1, unsigned __int8 *a2, char a3)
{
  v4 = v3;
  v7 = *a2;
  v8 = [a1 imageAsset];
  if (!v8 || (v9 = v8, v10 = [v4 traitCollection], v34 = objc_msgSend(v9, sel_imageWithTraitCollection_, v10), v9, v10, (v11 = v34) == 0))
  {
    v11 = a1;
  }

  v35 = v11;
  v12 = *&v4[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_patternView];
  [v12 setBackgroundColor_];
  v13 = [v12 layer];
  v14 = [v35 CGImage];
  [v13 setContents_];

  v15 = [v12 layer];
  v16 = [v4 traitCollection];
  [v16 displayScale];
  v18 = v17;

  [v15 setContentsScale_];
  if (a3)
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E6979538]) init];
    [v19 setDuration_];
    [v19 setType_];
    v20 = [v4 layer];
    sub_1D80D7A40(v19, 0x6461466567616D49, 0xE900000000000065, v20);
  }

  v21 = [v12 layer];
  v22 = v21;
  switch(v7)
  {
    case 1:
      v30 = [v12 &selRef_setTyFunction_];
      v24 = [v30 contentsAreFlipped];

      v25 = MEMORY[0x1E6979E00];
      v26 = MEMORY[0x1E6979DB8];
      goto LABEL_16;
    case 2:
      v28 = MEMORY[0x1E6979DD8];
      goto LABEL_11;
    case 3:
      v28 = MEMORY[0x1E6979DF8];
LABEL_11:
      [v21 setContentsGravity_];
      goto LABEL_19;
    case 4:
      v27 = [v12 &selRef_setTyFunction_];
      v24 = [v27 contentsAreFlipped];

      v25 = MEMORY[0x1E6979DC0];
      v26 = MEMORY[0x1E6979E08];
      goto LABEL_16;
    case 5:
      v31 = [v12 &selRef_setTyFunction_];
      v24 = [v31 contentsAreFlipped];

      v25 = MEMORY[0x1E6979DC8];
      v26 = MEMORY[0x1E6979E10];
      goto LABEL_16;
    case 6:
      v32 = [v12 &selRef_setTyFunction_];
      v24 = [v32 contentsAreFlipped];

      v25 = MEMORY[0x1E6979E08];
      v26 = MEMORY[0x1E6979DC0];
      goto LABEL_16;
    case 7:
      v29 = [v12 &selRef_setTyFunction_];
      v24 = [v29 contentsAreFlipped];

      v25 = MEMORY[0x1E6979E10];
      v26 = MEMORY[0x1E6979DC8];
      goto LABEL_16;
    default:
      v23 = [v12 layer];
      v24 = [v23 contentsAreFlipped];

      v25 = MEMORY[0x1E6979DB8];
      v26 = MEMORY[0x1E6979E00];
LABEL_16:
      if (!v24)
      {
        v25 = v26;
      }

      v33 = *v25;
      [v22 setContentsGravity_];

      v22 = v33;
LABEL_19:

      return;
  }
}

void sub_1D7F10D00(void *a1, uint64_t a2, id a3, unsigned __int8 a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong traitCollection];
    v10 = [v9 userInterfaceStyle];

    if (v10 == a3)
    {
      v11 = a4;
      sub_1D7F108AC(a1, &v11, 1);
    }
  }
}

void sub_1D7F10DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v12 = sub_1D8190BD4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D8190C34();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v28 = v17;
    v29 = v18;
    sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
    v21 = a1;
    v27 = sub_1D8191AB4();
    v22 = swift_allocObject();
    v22[2] = a3;
    v22[3] = a4;
    v23 = v30;
    v22[4] = a5;
    v22[5] = v23;
    v22[6] = a7;
    v22[7] = v21;
    aBlock[4] = sub_1D7F12D34;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7E64940;
    aBlock[3] = &block_descriptor_72;
    v24 = _Block_copy(aBlock);
    v25 = v21;

    sub_1D8190DB4();

    sub_1D8190BF4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D7EBCD5C();
    sub_1D7E548CC(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D7EBCDB4();
    sub_1D8192004();
    v26 = v27;
    MEMORY[0x1DA713CE0](0, v20, v15, v24);
    _Block_release(v24);

    (*(v13 + 8))(v15, v12);
    (*(v28 + 8))(v20, v29);
  }
}

void sub_1D7F110C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_token) == a2 && *(Strong + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_token + 8) == a3;
    if (v12 || (sub_1D8192634() & 1) != 0)
    {
      a4(a6);
    }
  }
}

id sub_1D7F11174(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_patternView);
  CGAffineTransformMakeRotation(&v3, 3.14159265);
  return [v1 setTransform_];
}

id sub_1D7F111E4(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

void PatternSectionDecorationView.blueprintViewportMonitor(_:viewportScrollDataDidChange:)(uint64_t a1, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_model + 48])
  {
    if (v2[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_model + 33] != 3)
    {
      sub_1D813FEE0(*&v2[OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_patternView], v2, a2);
    }
  }
}

unint64_t sub_1D7F11320()
{
  result = qword_1ECA0DA58;
  if (!qword_1ECA0DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DA58);
  }

  return result;
}

unint64_t sub_1D7F11378()
{
  result = qword_1ECA0DA60;
  if (!qword_1ECA0DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DA60);
  }

  return result;
}

uint64_t sub_1D7F113F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1D7F11430(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7F11498(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FF && *(a1 + 9))
    {
      v2 = *a1 + 1022;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 7) | (2 * ((*a1 >> 57) & 0x18 | *a1 & 7 | (32 * ((*(a1 + 8) >> 3) & 0xF))))) ^ 0x3FF;
      if (v2 >= 0x3FE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D7F114F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FE)
  {
    *(result + 8) = 0;
    *result = a2 - 1023;
    if (a3 >= 0x3FF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FF | ((-a2 & 0x3FF) << 9);
      *result = (v3 | (v3 << 57)) & 0x3000000000000007;
      *(result + 8) = (v3 >> 2) & 0xF8;
    }
  }

  return result;
}

uint64_t sub_1D7F1156C(uint64_t result, char a2)
{
  v2 = *(result + 8) & 7 | (a2 << 7);
  *result &= 0xCFFFFFFFFFFFFFF8;
  *(result + 8) = v2;
  return result;
}

uint64_t sub_1D7F115A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D7F115F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PatternSectionDecorationItem.Direction(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PatternSectionDecorationItem.Anchor(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PatternSectionDecorationItem.Position(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 17))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for PatternSectionDecorationItem.Position(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PatternSectionDecorationItem.PositionAdjustment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7F11950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    sub_1D7F11990();
  }

  return result;
}

void *sub_1D7F119AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1D818EDE4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v17[3] = type metadata accessor for ImageProcessor();
  v17[4] = &protocol witness table for ImageProcessor;
  v17[0] = a2;
  v16[3] = type metadata accessor for ImageDownloader();
  v16[4] = &protocol witness table for ImageDownloader;
  v16[0] = a3;
  sub_1D7E548CC(0, qword_1EDBB8910, sub_1D7E1A8EC, type metadata accessor for ImageCacheFetchDeduper);
  swift_allocObject();
  sub_1D7E1CCA4();
  a4[13] = v9;
  v10 = type metadata accessor for MemoryCacheAccessMainWriter();
  swift_allocObject();
  v11 = sub_1D7E1A9A4();
  type metadata accessor for MemoryImageCache();
  v12 = swift_allocObject();
  v12[6] = v10;
  v12[7] = &protocol witness table for MemoryCacheAccessMainWriter;
  v12[3] = v11;
  sub_1D7E1D0A0();
  swift_allocObject();
  v12[2] = sub_1D818FC84();
  v13 = MEMORY[0x1E69E7CC0];
  a4[14] = v12;
  a4[15] = v13;
  sub_1D818EDD4();
  sub_1D818EE04();
  swift_allocObject();
  a4[16] = sub_1D818EDF4();
  a4[12] = a1;
  sub_1D7E0E768(v17, (a4 + 7));
  sub_1D7E0E768(v16, (a4 + 2));
  v14 = [objc_opt_self() defaultCenter];
  [v14 addObserver:a4 selector:sel_didReceiveMemoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return a4;
}

void sub_1D7F11BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned __int8 a6)
{
  v56 = a3;
  v11 = sub_1D8190BD4();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8190C34();
  v50 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  v17 = a2;
  v57 = a1;
  v19 = *(a1 + 24);
  v18 = *(a1 + 32);

  v55 = v19;
  v20._countAndFlagsBits = v19;
  v21 = v18;
  v20._object = v18;
  v22 = MemoryImageCache.image(for:)(v20);
  if (v22)
  {
    v54 = v22;
    sub_1D7F10D00(v22, a4, a5, a6);

    v23 = v54;
  }

  else
  {
    v47 = v17;
    v48 = v15;
    v49 = v13;
    v54 = a4;
    v25 = *(v56 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_token);
    v24 = *(v56 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_token + 8);
    v26 = *(v56 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_patternView);
    sub_1D8190DB4();
    [v26 setBackgroundColor_];
    v27 = [v26 layer];
    [v27 setContents_];

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v25;
    v29[4] = v24;
    v29[5] = sub_1D7F12D3C;
    v29[6] = v16;
    v63[3] = type metadata accessor for ProcessedImageRequest();
    v63[4] = &protocol witness table for ProcessedImageRequest;
    v63[0] = v57;
    swift_retain_n();
    swift_retain_n();
    sub_1D8190DB4();

    sub_1D8190DB4();
    v30 = v55;
    v31._countAndFlagsBits = v55;
    v31._object = v21;
    v32 = MemoryImageCache.image(for:)(v31);

    if (v32)
    {
      sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
      v33 = v32;
      v56 = sub_1D8191AB4();
      v34 = swift_allocObject();
      v34[2] = v28;
      v34[3] = v25;
      v34[4] = v24;
      v34[5] = sub_1D7F12D3C;
      v34[6] = v16;
      v34[7] = v33;
      v61 = sub_1D7F12D34;
      v62 = v34;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v59 = sub_1D7E64940;
      v60 = &block_descriptor_104;
      v35 = _Block_copy(&aBlock);
      sub_1D8190DB4();

      v36 = v33;

      v57 = v16;
      v37 = v48;
      sub_1D8190BF4();
      *&aBlock = MEMORY[0x1E69E7CC0];
      sub_1D7EBCD5C();
      sub_1D7E548CC(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D7EBCDB4();
      v38 = v51;
      v39 = v53;
      sub_1D8192004();
      v40 = v56;
      MEMORY[0x1DA713CE0](0, v37, v38, v35);
      _Block_release(v35);

      (*(v52 + 8))(v38, v39);
      (*(v50 + 8))(v37, v49);
    }

    else
    {
      v41 = v21;
      v42 = v30;
      v56 = v24;
      v57 = v28;
      v43 = v47;
      v53 = *(v47 + 104);
      v44 = qword_1EDBB8158;
      sub_1D8190DB4();
      if (v44 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v45 = swift_allocObject();
      *(v45 + 16) = sub_1D7F12D50;
      *(v45 + 24) = v29;
      sub_1D7E0E768(v63, &aBlock);
      v46 = swift_allocObject();
      *(v46 + 16) = v43;
      sub_1D7E05450(&aBlock, v46 + 24);
      *(v46 + 64) = 1;
      *(v46 + 72) = v42;
      *(v46 + 80) = v41;
      sub_1D8190DB4();

      sub_1D7EA7C54();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }
}

void sub_1D7F122D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v54 = a3;
  v9 = sub_1D8190BD4();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8190C34();
  v49 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5 & 1;
  v16 = a2;
  v55 = a1;
  v18 = *(a1 + 24);
  v17 = *(a1 + 32);

  v53 = v18;
  v19._countAndFlagsBits = v18;
  v19._object = v17;
  v20 = MemoryImageCache.image(for:)(v19);
  if (v20)
  {
    v52 = v20;
    sub_1D7F100A4(v20, a4, a5 & 1);

    v21 = v52;
  }

  else
  {
    v45 = v16;
    v46 = v14;
    v47 = v11;
    v52 = a4;
    v48 = v12;
    v22 = *(v54 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_token);
    v23 = *(v54 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_token + 8);
    v24 = *(v54 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_patternView);
    sub_1D8190DB4();
    [v24 setBackgroundColor_];
    v25 = [v24 layer];
    [v25 setContents_];

    v26 = v23;
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v22;
    v28[4] = v23;
    v28[5] = sub_1D7F12D40;
    v28[6] = v15;
    v61[3] = type metadata accessor for ProcessedImageRequest();
    v61[4] = &protocol witness table for ProcessedImageRequest;
    v61[0] = v55;
    swift_retain_n();
    swift_retain_n();
    sub_1D8190DB4();

    sub_1D8190DB4();
    v29 = v53;
    v30._countAndFlagsBits = v53;
    v30._object = v17;
    v31 = MemoryImageCache.image(for:)(v30);

    if (v31)
    {
      sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
      v32 = v31;
      v54 = sub_1D8191AB4();
      v33 = swift_allocObject();
      v33[2] = v27;
      v33[3] = v22;
      v33[4] = v26;
      v33[5] = sub_1D7F12D40;
      v33[6] = v15;
      v33[7] = v32;
      v59 = sub_1D7F12C54;
      v60 = v33;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v57 = sub_1D7E64940;
      v58 = &block_descriptor_65;
      v34 = _Block_copy(&aBlock);
      sub_1D8190DB4();

      v35 = v32;

      v55 = v15;
      v36 = v46;
      sub_1D8190BF4();
      *&aBlock = MEMORY[0x1E69E7CC0];
      sub_1D7EBCD5C();
      sub_1D7E548CC(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D7EBCDB4();
      v37 = v47;
      v38 = v51;
      sub_1D8192004();
      v39 = v54;
      MEMORY[0x1DA713CE0](0, v36, v37, v34);
      _Block_release(v34);

      (*(v50 + 8))(v37, v38);
      (*(v49 + 8))(v36, v48);
    }

    else
    {
      v40 = v17;
      v54 = v26;
      v55 = v27;
      v41 = v45;
      v42 = qword_1EDBB8158;
      sub_1D8190DB4();
      if (v42 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v43 = swift_allocObject();
      *(v43 + 16) = sub_1D7F12C4C;
      *(v43 + 24) = v28;
      sub_1D7E0E768(v61, &aBlock);
      v44 = swift_allocObject();
      *(v44 + 16) = v41;
      sub_1D7E05450(&aBlock, v44 + 24);
      *(v44 + 64) = 1;
      *(v44 + 72) = v29;
      *(v44 + 80) = v40;
      sub_1D8190DB4();

      sub_1D7EA7C54();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v61);
  }
}

uint64_t sub_1D7F129B4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v33[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[3] = v19;
  v33[4] = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_0, a1, a6);
  (*(v16 + 16))(v18, a2, a7);
  v22 = (*(a9 + 24))(v33, a7, a9);
  if (v22)
  {
    v23 = v22;
    a3();
  }

  else
  {
    v25 = *(a5 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_token);
    v24 = *(a5 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_token + 8);
    v26 = *(a5 + OBJC_IVAR____TtC5TeaUI28PatternSectionDecorationView_patternView);
    sub_1D8190DB4();
    [v26 setBackgroundColor_];
    v27 = [v26 layer];
    [v27 setContents_];

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v25;
    v29[4] = v24;
    v29[5] = a3;
    v29[6] = a4;
    v30 = *(a9 + 8);

    v30(v33, sub_1D7F12D50, v29, a7, a9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return (*(v16 + 8))(v18, a7);
}

uint64_t objectdestroy_52Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_58Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D7F12D58(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_15_4(a1);
  v8 = MEMORY[0x1DA713850](v3, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0]);
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_1D7F59B18(&v7, *(v1 + v5));
      v5 += 8;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_161();
  }

  return v2;
}

uint64_t sub_1D7F12DE4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_15_4(a1);
  v8 = MEMORY[0x1DA713850](v3, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_1D7F59BF8(&v7, *(v1 + v5));
      v5 += 8;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_161();
  }

  return v2;
}

uint64_t sub_1D7F12E70(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D7F14D74();
  v8 = MEMORY[0x1DA713850](v2, &type metadata for CardViewPresentationState, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_1D7F59EA4(&v7, *(a1 + v5++));
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_161();
  }

  return v2;
}

uint64_t sub_1D7F12F04()
{
  OUTLINED_FUNCTION_76_0();
  v1 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(v0 + 16);
  v11 = sub_1D7F14D1C();
  v21 = MEMORY[0x1DA713850](v10, v1, v11);
  v12 = *(v0 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v20 = v0;
    v17 = v0 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v6, v17, v1);
      sub_1D7F59F68(v9, v6);
      (*(v13 - 8))(v9, v1);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v21;
  }

  else
  {
    OUTLINED_FUNCTION_161();
  }

  return v10;
}

uint64_t sub_1D7F13080(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D7F14CC8();
  v11 = MEMORY[0x1DA713850](v2, &type metadata for FloatingTabBarAccessoryOption, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1D7F5A338(&v10, v6, v7, v8);
      --v4;
    }

    while (v4);

    return v11;
  }

  else
  {
    OUTLINED_FUNCTION_161();
  }

  return v2;
}

uint64_t sub_1D7F13114(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 120);
  v5 = *a1;
  return v4(v2, v3);
}

void (*sub_1D7F13178(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_11_10();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F131F4;
}

void sub_1D7F131F4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[5] + 3) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t PluginManager.__allocating_init()()
{
  OUTLINED_FUNCTION_10_15();
  v0 = swift_allocObject();
  PluginManager.init()();
  return v0;
}

uint64_t PluginManager.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 32) = MEMORY[0x1E69E7CC8];
  *(v0 + 40) = v1;
  *(v0 + 48) = 1;
  return v0;
}

uint64_t PluginManager.__allocating_init(enableReuseLayoutSuppression:)(char a1)
{
  OUTLINED_FUNCTION_10_15();
  v2 = swift_allocObject();
  PluginManager.init(enableReuseLayoutSuppression:)(a1);
  return v2;
}

void sub_1D7F13318(void *a1)
{
  v2 = v1;
  v4 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = (v9 - v8);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v10 = sub_1D8191AB4();
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v4);
  v11 = sub_1D8190CA4();
  v12 = (*(v6 + 8))(v10, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = (*(*v2 + 112))(v12);
  if (!v13)
  {
    sub_1D81919C4();
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    v26 = sub_1D8191E44();
    OUTLINED_FUNCTION_9_7();
    sub_1D818FD44();

    sub_1D7F137B4();
    OUTLINED_FUNCTION_121();
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 3;
    swift_willThrow();
    return;
  }

  v15 = v13;
  v16 = v14;
  v17 = a1[2];
  v18 = a1[3];
  OUTLINED_FUNCTION_6_13();
  swift_beginAccess();
  v19 = *(v2 + 32);
  sub_1D8190DB4();
  v20 = sub_1D7E886A4(v17, v18, v19);

  if (v20)
  {

    sub_1D81919C4();
    OUTLINED_FUNCTION_1_22();
    sub_1D7E135CC(0, v21, v22, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D819FAB0;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1D7E13BF4();
    *(v23 + 32) = v17;
    *(v23 + 40) = v18;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    swift_bridgeObjectRetain_n();
    v24 = sub_1D8191E44();
    sub_1D818FD44();

    sub_1D7F137B4();
    OUTLINED_FUNCTION_121();
    *v25 = v17;
    *(v25 + 8) = v18;
    *(v25 + 16) = 0;
    swift_willThrow();
LABEL_11:

    return;
  }

  OUTLINED_FUNCTION_11_10();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v2 + 32);
  sub_1D7EF6174();
  *(v2 + 32) = v35;
  swift_endAccess();
  v28 = a1[7];
  OUTLINED_FUNCTION_11_10();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v2 + 40);
  sub_1D7EF60BC();
  *(v2 + 40) = v36;
  swift_endAccess();
  if (*(v2 + 48) != 1)
  {
LABEL_9:
    ObjectType = swift_getObjectType();
    [v15 addChildViewController_];
    v32 = (*(v16 + 8))(ObjectType, v16);
    v33 = [v28 view];
    if (v33)
    {
      v34 = v33;
      [v32 addSubview_];

      [v28 didMoveToParentViewController_];
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v29 = [v28 view];
  if (v29)
  {
    v30 = v29;
    [v29 ts:1 setHiddenForReuse:?];

    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
}

unint64_t sub_1D7F137B4()
{
  result = qword_1ECA0DA68;
  if (!qword_1ECA0DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DA68);
  }

  return result;
}

id sub_1D7F13808(void *a1)
{
  v2 = v1;
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = (v6 - v5);
  v8 = sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v7 = sub_1D8191AB4();
  v9 = OUTLINED_FUNCTION_4_17();
  v10(v9);
  sub_1D8190CA4();
  v11 = OUTLINED_FUNCTION_5_10();
  result = v12(v11);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = a1[2];
  v15 = a1[3];
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v16 = *(v2 + 32);
  sub_1D8190DB4();
  v17 = sub_1D7E886A4(v14, v15, v16);

  if (!v17)
  {
    sub_1D81919C4();
    OUTLINED_FUNCTION_1_22();
    sub_1D7E135CC(0, v23, v24, MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D819FAB0;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1D7E13BF4();
    *(v25 + 32) = v14;
    *(v25 + 40) = v15;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    swift_bridgeObjectRetain_n();
    v26 = sub_1D8191E44();
    OUTLINED_FUNCTION_9_7();
    sub_1D818FD44();

    sub_1D7F137B4();
    OUTLINED_FUNCTION_121();
    *v27 = v14;
    *(v27 + 8) = v15;
    *(v27 + 16) = 1;
    return swift_willThrow();
  }

  if (*(v17 + 56) != a1[7])
  {
    sub_1D81919C4();
    OUTLINED_FUNCTION_1_22();
    sub_1D7E135CC(0, v18, v19, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D819FAB0;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1D7E13BF4();
    *(v20 + 32) = v14;
    *(v20 + 40) = v15;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    swift_bridgeObjectRetain_n();
    v21 = sub_1D8191E44();
    OUTLINED_FUNCTION_9_7();
    sub_1D818FD44();

    sub_1D7F137B4();
    OUTLINED_FUNCTION_121();
    *v22 = v14;
    *(v22 + 8) = v15;
    *(v22 + 16) = 2;
    swift_willThrow();
  }

  v28 = *(v17 + 16);
  v29 = *(v17 + 24);
  OUTLINED_FUNCTION_11_10();
  swift_beginAccess();
  sub_1D7F03C78(v28, v29, v30, v31, v32, v33, v34, v35, v46, v48);
  swift_endAccess();

  v36 = *(v17 + 56);
  OUTLINED_FUNCTION_11_10();
  swift_beginAccess();
  sub_1D7F03BF4(v36, v37, v38, v39, v40, v41, v42, v43, v47, v49);
  swift_endAccess();

  [*(v17 + 56) willMoveToParentViewController_];
  result = [*(v17 + 56) view];
  if (!result)
  {
    goto LABEL_12;
  }

  v44 = result;
  [result removeFromSuperview];

  [*(v17 + 56) removeFromParentViewController];
  if (*(v2 + 48) != 1)
  {
  }

  result = [*(v17 + 56) view];
  if (result)
  {
    v45 = result;
    [result ts:0 setHiddenForReuse:?];
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D7F13C54(uint64_t a1, char a2)
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = (v12 - v11);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v13 = sub_1D8191AB4();
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v7);
  v14 = sub_1D8190CA4();
  result = (*(v9 + 8))(v13, v7);
  if (v14)
  {
    OUTLINED_FUNCTION_6_13();
    swift_beginAccess();
    v42 = v5;
    v16 = sub_1D8190DB4();
    sub_1D7E90F5C(v16);
    v18 = sub_1D7F13FB4(a1, v17);
    v19 = MEMORY[0x1E69E7CC0];
    v43 = MEMORY[0x1E69E7CC0];
    v20 = v18 + 56;
    OUTLINED_FUNCTION_24();
    v23 = v22 & v21;
    v25 = (v24 + 63) >> 6;
    result = sub_1D8190DB4();
    v26 = 0;
    v40 = result;
    while (v23)
    {
      v27 = v23;
LABEL_9:
      v23 = (v27 - 1) & v27;
      v29 = *(v42 + 32);
      if (*(v29 + 16))
      {
        v30 = (*(v18 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v27)))));
        v31 = *v30;
        v32 = v30[1];
        sub_1D8190DB4();
        sub_1D8190DB4();
        v33 = sub_1D7E11428(v31, v32);
        if (v34)
        {
          v35 = *(*(v29 + 56) + 8 * v33);

          if ((a2 & 1) != 0 && *(v35 + 32) == 1)
          {

            v18 = v40;
          }

          else
          {
            MEMORY[0x1DA713500](v36);
            if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D81913B4();
            }

            result = sub_1D8191404();
            v19 = v43;
            v18 = v40;
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v28 >= v25)
      {
        break;
      }

      v27 = *(v20 + 8 * v28);
      ++v26;
      if (v27)
      {
        v26 = v28;
        goto LABEL_9;
      }
    }

    result = sub_1D7E341F8(v19);
    v37 = result;
    v38 = 0;
    do
    {
      if (v37 == v38)
      {
        break;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1DA714420](v38, v19);
        v39 = result;
      }

      else
      {
        if (v38 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v39 = *(v19 + 8 * v38 + 32);
      }

      if (__OFADD__(v38, 1))
      {
        goto LABEL_29;
      }

      sub_1D7F13808(v39);

      ++v38;
    }

    while (!v4);
  }

  else
  {
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7F13FB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1D7F14E00(a1);
    return a2;
  }

  else
  {

    return sub_1D808C1F4(a1, a2);
  }
}

uint64_t sub_1D7F14008()
{
  v2 = v1;
  OUTLINED_FUNCTION_76_0();
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = (v5 - v4);
  v7 = sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v6 = sub_1D8191AB4();
  v8 = OUTLINED_FUNCTION_4_17();
  v9(v8);
  sub_1D8190CA4();
  v10 = OUTLINED_FUNCTION_5_10();
  result = v11(v10);
  if (v7)
  {
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v13 = sub_1D7EDF38C(v0, *(v2 + 40));
    if (v13)
    {
    }

    return v13 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7F14138()
{
  v2 = v1;
  OUTLINED_FUNCTION_76_0();
  v3 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = (v8 - v7);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v9 = sub_1D8191AB4();
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v3);
  v10 = sub_1D8190CA4();
  result = (*(v5 + 8))(v9, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = sub_1D7F14008();
  if ((v12 & 1) == 0)
  {
    return (v12 & 1);
  }

  v13 = (*(*v2 + 112))();
  if (!v13)
  {
    return (v12 & 1);
  }

  v15 = v13;
  v16 = v14;
  if (v2[48] != 1)
  {
LABEL_7:
    ObjectType = swift_getObjectType();
    v19 = (*(v16 + 8))(ObjectType, v16);
    result = [v0 view];
    if (result)
    {
      v20 = result;
      [v19 addSubview_];

      return (v12 & 1);
    }

    goto LABEL_11;
  }

  result = [v0 view];
  if (result)
  {
    v17 = result;
    [result ts:1 setHiddenForReuse:?];

    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1D7F14348()
{
  v2 = v1;
  OUTLINED_FUNCTION_76_0();
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = (v5 - v4);
  v7 = sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v6 = sub_1D8191AB4();
  v8 = OUTLINED_FUNCTION_4_17();
  v9(v8);
  sub_1D8190CA4();
  v10 = OUTLINED_FUNCTION_5_10();
  result = v11(v10);
  if (v7)
  {
    if ((sub_1D7F14008() & 1) == 0)
    {
      return 0;
    }

    if (*(v2 + 48) != 1)
    {
LABEL_6:
      v14 = v0;
      return v0;
    }

    result = [v0 view];
    if (result)
    {
      v13 = result;
      [result ts:0 setHiddenForReuse:?];

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7F144A4()
{
  v1 = v0;
  v2 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v8 = sub_1D8191AB4();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v2);
  v9 = sub_1D8190CA4();
  (*(v4 + 8))(v8, v2);
  if (v9)
  {
    OUTLINED_FUNCTION_6_13();
    swift_beginAccess();
    v10 = *(v1 + 32);
    sub_1D7E135CC(0, &unk_1EDBB1FA8, type metadata accessor for PluginModel, MEMORY[0x1E69D6B18]);
    OUTLINED_FUNCTION_161();
    sub_1D8190DB4();
    v11 = sub_1D8190D94();
    v12 = v10 + 64;
    OUTLINED_FUNCTION_24();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    sub_1D8190DB4();
    v18 = 0;
    v34 = v17;
    if (!v15)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v19 = v18;
LABEL_7:
      v20 = *(*(v10 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v15)))));
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      swift_allocObject();

      v35 = sub_1D818FBA4();
      swift_isUniquelyReferenced_nonNull_native();
      v23 = sub_1D7E11428(v22, v21);
      if (__OFADD__(v11[2], (v24 & 1) == 0))
      {
        break;
      }

      v25 = v23;
      v26 = v24;
      sub_1D7F1494C();
      if (sub_1D8192374())
      {
        v27 = sub_1D7E11428(v22, v21);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_22;
        }

        v25 = v27;
      }

      v15 &= v15 - 1;
      if (v26)
      {
        *(v11[7] + 8 * v25) = v35;
      }

      else
      {
        v11[(v25 >> 6) + 8] |= 1 << v25;
        v29 = (v11[6] + 16 * v25);
        *v29 = v22;
        v29[1] = v21;
        *(v11[7] + 8 * v25) = v35;
        v30 = v11[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_20;
        }

        v11[2] = v32;
        sub_1D8190DB4();
      }

      v18 = v19;
      v17 = v34;
      v12 = v10 + 64;
      if (!v15)
      {
LABEL_4:
        while (1)
        {
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v19 >= v17)
          {

            return v11;
          }

          v15 = *(v12 + 8 * v19);
          ++v18;
          if (v15)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
LABEL_22:
  result = sub_1D8192714();
  __break(1u);
  return result;
}

uint64_t sub_1D7F14838(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D7F14DC8;
  *(v5 + 24) = v4;

  sub_1D7FB7A98(sub_1D7E6FA78, v5);
}

uint64_t PluginManager.deinit()
{
  sub_1D7E166A0(v0 + 16);

  return v0;
}

uint64_t PluginManager.__deallocating_deinit()
{
  PluginManager.deinit();
  OUTLINED_FUNCTION_10_15();

  return swift_deallocClassInstance();
}

void sub_1D7F1494C()
{
  if (!qword_1EDBAE380)
  {
    sub_1D7E135CC(255, &unk_1EDBB1FA8, type metadata accessor for PluginModel, MEMORY[0x1E69D6B18]);
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE380);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaUI18PluginManagerErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D7F14A00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_1D7F14A40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7F14A84(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1D7F14CC8()
{
  result = qword_1ECA0DA70;
  if (!qword_1ECA0DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DA70);
  }

  return result;
}

unint64_t sub_1D7F14D1C()
{
  result = qword_1EDBBC6C0;
  if (!qword_1EDBBC6C0)
  {
    sub_1D818E994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC6C0);
  }

  return result;
}

unint64_t sub_1D7F14D74()
{
  result = qword_1EDBB0200;
  if (!qword_1EDBB0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0200);
  }

  return result;
}

uint64_t sub_1D7F14DC8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1D7F14E00(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_1D8190DB4();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_1D8190DB4();
        sub_1D800C0EC(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

__n128 BlueprintAnimation.init(animatorType:context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D7F14FDC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D7F1501C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id UIViewPropertyAnimator.init(timingSettings:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = (*(a2 + 16))(a1, a2);
  v6 = [v4 initWithDuration:(*(a2 + 8))(a1 timingParameters:{a2), v5}];
  swift_unknownObjectRelease();
  return v6;
}

uint64_t UIViewPropertyAnimator.startAnimation(delayedBy:animationBlock:)()
{
  sub_1D7E1F150();
  swift_allocObject();
  return sub_1D818FBA4();
}

uint64_t sub_1D7F1518C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v39 = sub_1D8190BD4();
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8190C34();
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D8190C64();
  v15 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v47 = a6;
  v48 = a7;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1D7E64940;
  v46 = &block_descriptor_13;
  v22 = _Block_copy(&aBlock);

  [a5 addAnimations_];
  _Block_release(v22);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D7F159A8;
  *(v23 + 24) = v21;
  v47 = sub_1D7F159BC;
  v48 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1D7FEBC20;
  v46 = &block_descriptor_19;
  v24 = _Block_copy(&aBlock);

  [a5 addCompletion_];
  _Block_release(v24);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  v25 = sub_1D8191AB4();
  sub_1D8190C54();
  sub_1D8190C94();
  v26 = *(v15 + 8);
  v35 = v15 + 8;
  v27 = v36;
  v26(v17, v36);
  v28 = swift_allocObject();
  *(v28 + 16) = a5;
  v47 = sub_1D7F15990;
  v48 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1D7E64940;
  v46 = &block_descriptor_25;
  v29 = _Block_copy(&aBlock);
  v30 = a5;

  v31 = v37;
  sub_1D8190BF4();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D7E28784(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  sub_1D7E2885C();
  sub_1D7E28784(&qword_1EDBB3340, sub_1D7E2885C);
  v33 = v38;
  v32 = v39;
  sub_1D8192004();
  MEMORY[0x1DA713CA0](v20, v31, v33, v29);
  _Block_release(v29);

  (*(v42 + 8))(v33, v32);
  (*(v40 + 8))(v31, v41);
  return (v26)(v20, v27);
}

id sub_1D7F156D8(void *a1)
{
  result = [a1 state];
  if (result != 2)
  {

    return [a1 startAnimation];
  }

  return result;
}

uint64_t static UIViewPropertyAnimator.startAnimation(timingSettings:animationBlock:)()
{
  sub_1D7E1F150();
  swift_allocObject();
  return sub_1D818FBA4();
}

void sub_1D7F15794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(), uint64_t a8)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1D7E0A1A8(0, &qword_1ECA0DA78);

  v15 = UIViewPropertyAnimator.init(timingSettings:)(a5, a6);
  v23 = a7;
  v24 = a8;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1D7E64940;
  v22 = &block_descriptor_5;
  v16 = _Block_copy(&v19);

  [v15 addAnimations_];
  _Block_release(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D7F15988;
  *(v17 + 24) = v14;
  v23 = sub_1D7E74D44;
  v24 = v17;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1D7FEBC20;
  v22 = &block_descriptor_6;
  v18 = _Block_copy(&v19);

  [v15 addCompletion_];
  _Block_release(v18);
  [v15 startAnimation];
}

uint64_t UserActivitySerializer.webpageURL(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D818E644();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

double UserActivitySerializer.appIntent(for:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ScrollTracker.Result.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

char *sub_1D7F15C28(uint64_t a1, uint64_t a2, char a3)
{
  v6 = OBJC_IVAR____TtC5TeaUI13ScrollTracker_callbacks;
  swift_beginAccess();

  sub_1D7EE43BC();
  v7 = *(*&v11[v6] + 16);
  sub_1D7EE45E8();
  v8 = *&v11[v6];
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 24 * v7;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  *&v11[v6] = v8;
  swift_endAccess();

  return v11;
}

char *ScrollTracker.reset()()
{
  v0 = OBJC_IVAR____TtC5TeaUI13ScrollTracker_callbacks;
  swift_beginAccess();
  *&v2[v0] = MEMORY[0x1E69E7CC0];

  return v2;
}

id ScrollTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScrollTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ScrollTracker.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI13ScrollTracker_callbacks;
  swift_beginAccess();
  v17 = v3;
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  sub_1D8190DB4();
  v6 = 0;
  v7 = v4 + 48;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v7 + 24 * v6); ; i += 24)
  {
    if (v5 == v6)
    {

      *(v1 + v17) = v8;

      return;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v10 = *(i - 2);
    v11 = *(i - 1);
    v12 = *i;
    if (*i)
    {

      v10(a1);
LABEL_9:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7F08F6C();
        v8 = v19;
      }

      v14 = *(v8 + 16);
      v15 = v14 + 1;
      if (v14 >= *(v8 + 24) >> 1)
      {
        sub_1D7F08F6C();
        v15 = v14 + 1;
        v8 = v19;
      }

      ++v6;
      *(v8 + 16) = v15;
      v16 = v8 + 24 * v14;
      *(v16 + 32) = v10;
      *(v16 + 40) = v11;
      *(v16 + 48) = v12;
      v7 = v4 + 48;
      goto LABEL_2;
    }

    (v10)(&v18, a1);
    if (v18)
    {
      goto LABEL_9;
    }

    sub_1D7F15FF4();
    ++v6;
  }

  __break(1u);
}

unint64_t sub_1D7F16000()
{
  result = qword_1ECA0DA88;
  if (!qword_1ECA0DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DA88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ScrollTracker.Result(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D7F16160(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_1D7F161A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t ForwardingTouchToolbar.maxHeight.getter()
{
  v1 = v0 + OBJC_IVAR___TUForwardingTouchToolbar_maxHeight;
  swift_beginAccess();
  return *v1;
}

uint64_t ForwardingTouchToolbar.maxHeight.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___TUForwardingTouchToolbar_maxHeight;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void __swiftcall ForwardingTouchToolbar.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  v7 = OUTLINED_FUNCTION_3_28();
  v8 = sub_1D7F16BE4(v3);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1D7E36AB8(v9))
  {
    OUTLINED_FUNCTION_0_22();
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x1DA714420](v5, v9);
      }

      else
      {
        if (v5 >= *(v22 + 16))
        {
          goto LABEL_18;
        }

        v10 = *(v9 + 8 * v5 + 32);
      }

      v11 = v10;
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v13 = [v10 customView];
      if (v13)
      {
        v14 = v13;
        v15 = OUTLINED_FUNCTION_1_23();
        [v16 v17];
        v18 = [v14 hitTest:isa withEvent:?];

        if (v18)
        {

          return;
        }
      }

      else
      {
      }

      ++v5;
      if (v12 == v4)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:

    v19 = OUTLINED_FUNCTION_1_23();
    objc_msgSendSuper2(v20, v21, isa, v19);
  }
}

Swift::Bool __swiftcall ForwardingTouchToolbar.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  isa = with.value.super.isa;
  v6 = OUTLINED_FUNCTION_3_28();
  v7 = sub_1D7F16BE4(v2);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1D7E36AB8(v8))
  {
    OUTLINED_FUNCTION_0_22();
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1DA714420](v4, v8);
      }

      else
      {
        if (v4 >= *(v22 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v8 + 8 * v4 + 32);
      }

      v10 = v9;
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v12 = [v9 customView];
      if (v12)
      {
        v13 = v12;
        v14 = OUTLINED_FUNCTION_1_23();
        [v15 v16];
        v17 = [v13 pointInside:isa withEvent:?];

        if (v17)
        {

          LOBYTE(v9) = 1;
          return v9;
        }
      }

      else
      {
      }

      ++v4;
      if (v11 == v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:

    v18 = OUTLINED_FUNCTION_1_23();
    LOBYTE(v9) = objc_msgSendSuper2(v19, v20, isa, v18);
  }

  return v9;
}

uint64_t ForwardingTouchToolbar.accessibilityContainerType.getter()
{
  v1 = [v0 ts_accessibilityLeafDescendants];
  v2 = sub_1D8191314();

  LODWORD(v1) = *(v2 + 16) != 0;

  return 4 * v1;
}

CGSize __swiftcall ForwardingTouchToolbar.sizeThatFits(_:)(CGSize a1)
{
  OUTLINED_FUNCTION_3_28();
  v2 = v1 + OBJC_IVAR___TUForwardingTouchToolbar_maxHeight;
  swift_beginAccess();
  if (*(v2 + 8))
  {
    v3 = OUTLINED_FUNCTION_1_23();
    objc_msgSendSuper2(v4, v5, v3);
  }

  else
  {
    v8 = *v2;
    v9 = OUTLINED_FUNCTION_1_23();
    objc_msgSendSuper2(v10, v11, v9);
    if (v8 < v7)
    {
      v7 = v8;
    }
  }

  result.height = v7;
  result.width = v6;
  return result;
}

uint64_t ForwardingTouchToolbar.accessibilityElementsHidden.getter()
{
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 ts_accessibilitySoftwareKeyboardActive];

  if (v4)
  {
    v5 = [v2 sharedApplication];
    [v5 ts_accessibilitySoftwareKeyboardAccessibilityFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v0 accessibilityFrame];
    v21.origin.x = v14;
    v21.origin.y = v15;
    v21.size.width = v16;
    v21.size.height = v17;
    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    if (CGRectIntersectsRect(v20, v21))
    {
      return 1;
    }
  }

  v19.receiver = v0;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_accessibilityElementsHidden);
}

id ForwardingTouchToolbar.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id ForwardingTouchToolbar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ForwardingTouchToolbar.init(coder:)(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_2_24(OBJC_IVAR___TUForwardingTouchToolbar_maxHeight);
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

id ForwardingTouchToolbar.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F16BE4(void *a1)
{
  v1 = [a1 items];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D7F16C68();
  v3 = sub_1D8191314();

  return v3;
}

unint64_t sub_1D7F16C68()
{
  result = qword_1EDBB31D0;
  if (!qword_1EDBB31D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB31D0);
  }

  return result;
}

uint64_t sub_1D7F16CAC()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F16D18()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F16DAC()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F16E18()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F16ED4()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F16F90()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F17008()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F17064()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F170D0()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F1718C()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F171EC(uint64_t a1, char a2)
{
  sub_1D7E51D20(a2);
  OUTLINED_FUNCTION_2_25();
}

uint64_t sub_1D7F1722C()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F172B4()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F17338()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F1740C()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F174CC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x3FE0000000000000;
  }

  else
  {
    v2 = 0x3FE999999999999ALL;
  }

  return MEMORY[0x1DA714A20](v2);
}

uint64_t sub_1D7F17508()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F175B4()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F17680(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 8:
      OUTLINED_FUNCTION_0_23();
      break;
    default:
      break;
  }

  sub_1D8190FF4();
}

uint64_t sub_1D7F177C4()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F17824()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F178D4()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F1793C(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_0_23();
  }

  sub_1D8190FF4();
}

uint64_t sub_1D7F179B4()
{
  sub_1D8190FF4();
}

uint64_t sub_1D7F17A20(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_0_23();
  }

  sub_1D8190FF4();
}

uint64_t PluginModel.identifier.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

id PluginModel.viewController.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    type metadata accessor for FallbackPluginViewController();
    return _s5TeaUI19DebugViewControllerC7nibName6bundleACSSSg_So8NSBundleCSgtcfC_0(0, 0, 0);
  }

  return result;
}

id _s5TeaUI19DebugViewControllerC7nibName6bundleACSSSg_So8NSBundleCSgtcfC_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_1D7F17BE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 112) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 88) = a6;
  *(v7 + 96) = a7;
  sub_1D8190DB4();
  result = [a4 view];
  if (result)
  {
    v16 = result;

    [v16 safeAreaInsets];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    *(v7 + 56) = v18;
    *(v7 + 64) = v20;
    *(v7 + 72) = v22;
    *(v7 + 80) = v24;
    v25 = [a4 traitCollection];
    v26 = [v25 preferredContentSizeCategory];

    *(v7 + 40) = v26;
    v27 = [a4 traitCollection];
    v28 = [v27 legibilityWeight];

    *(v7 + 48) = v28;
    *(v7 + 112) = a5;
    swift_unknownObjectWeakAssign();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PluginModel.isSelectable.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = *(v0 + 112), v10[0] = Strong, v10[1] = v2, sub_1D7F17E44(), sub_1D7E0631C(0, qword_1EDBB7610), (swift_dynamicCast() & 1) == 0))
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    goto LABEL_6;
  }

  if (!*(&v8 + 1))
  {
LABEL_6:
    sub_1D7E9DD24(&v7, &qword_1ECA0DA98, qword_1EDBB7610);
    v5 = 0;
    return v5 & 1;
  }

  sub_1D7E05450(&v7, v10);
  v3 = v11;
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v5 = (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v5 & 1;
}

unint64_t sub_1D7F17E44()
{
  result = qword_1ECA0DAA0;
  if (!qword_1ECA0DAA0)
  {
    sub_1D7E194D0();
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0DAA0);
  }

  return result;
}

void *PluginModel.pluginLayoutTransition(layoutOptions:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x235uLL);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v2 + 112);
    ObjectType = swift_getObjectType();
    v16 = v5;
    (*(v6 + 80))(v17, ObjectType, v6);

    v8 = v18;
    if (v18)
    {
      v9 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      memcpy(v13, __dst, 0x235uLL);
      (*(v9 + 8))(__srca, v13, v8, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      memcpy(v15, __srca, sizeof(v15));
      if (sub_1D7E648D4(v15) != 1)
      {
        return memcpy(a2, v15, 0x248uLL);
      }
    }

    else
    {
      sub_1D7E9DD24(v17, &qword_1EDBAF4E0, qword_1EDBAF4E8);
    }
  }

  v11 = __dst[1];
  v12 = *(v2 + 96);
  memcpy(a2, __dst, 0x235uLL);
  a2[71] = v11;
  a2[72] = v12;
  return sub_1D7E222B8(__dst, v15);
}

uint64_t PluginModel.deinit()
{

  sub_1D7E166A0(v0 + 104);
  return v0;
}

uint64_t PluginModel.__deallocating_deinit()
{
  PluginModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t PluginModel.description.getter()
{
  sub_1D81921A4();
  MEMORY[0x1DA713260](0x286E6967756C50, 0xE700000000000000);
  MEMORY[0x1DA713260](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1DA713260](0x697369766572202CLL, 0xEB000000003D6E6FLL);
  v1 = sub_1D81925B4();
  MEMORY[0x1DA713260](v1);

  MEMORY[0x1DA713260](0x3D657A6973202CLL, 0xE700000000000000);
  type metadata accessor for CGSize();
  OUTLINED_FUNCTION_1_24();
  MEMORY[0x1DA713260](0xD000000000000016, 0x80000001D81C7400);
  type metadata accessor for UIContentSizeCategory();
  OUTLINED_FUNCTION_1_24();
  MEMORY[0x1DA713260](0xD000000000000013, 0x80000001D81C7420);
  type metadata accessor for UILegibilityWeight();
  OUTLINED_FUNCTION_1_24();
  MEMORY[0x1DA713260](41, 0xE100000000000000);
  return 0;
}

uint64_t PluginModel.hash(into:)()
{
  v1 = v0;
  sub_1D8190FF4();
  MEMORY[0x1DA714A00](*(v0 + 32));
  sub_1D7F18BF0(v1[11], v1[12]);
  v2 = v1[8] + v1[10];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1DA714A20](*&v2);
  v3 = *(v0 + 56) + *(v0 + 72);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1DA714A20](*&v3);
  sub_1D8190F14();
  sub_1D8190FF4();

  return MEMORY[0x1DA714A00](*(v0 + 48));
}

uint64_t PluginModel.hashValue.getter()
{
  sub_1D81927E4();
  PluginModel.hash(into:)();
  return sub_1D8192824();
}

uint64_t sub_1D7F183C4()
{
  sub_1D81927E4();
  PluginModel.hash(into:)();
  return sub_1D8192824();
}

BOOL static PluginModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1D8192634() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v5 = *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96);
  if (!v5 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 56), *(a2 + 56)), vceqq_f64(*(a1 + 72), *(a2 + 72))))) & 1) == 0)
  {
    return 0;
  }

  v7 = sub_1D8190F14();
  v9 = v8;
  if (v7 == sub_1D8190F14() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1D8192634();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  return *(a1 + 48) == *(a2 + 48);
}

void PluginModel.visualRankValue.getter(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v1 + 112);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 64))(ObjectType, v5);
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = 1;
}

uint64_t sub_1D7F18650(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUIP33_555B43D3A3BE92296C45DE65B67B87E428FallbackPluginViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D7F186BC()
{
  v1 = OBJC_IVAR____TtC5TeaUIP33_555B43D3A3BE92296C45DE65B67B87E428FallbackPluginViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D7F18700(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUIP33_555B43D3A3BE92296C45DE65B67B87E428FallbackPluginViewController_isBeingUsedAsPlugin;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1D7F18750(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC5TeaUIP33_555B43D3A3BE92296C45DE65B67B87E428FallbackPluginViewController_pluggableDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC5TeaUIP33_555B43D3A3BE92296C45DE65B67B87E428FallbackPluginViewController_isBeingUsedAsPlugin] = 1;
  if (a2)
  {
    v7 = sub_1D8190EE4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_1D7F18874(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUIP33_555B43D3A3BE92296C45DE65B67B87E428FallbackPluginViewController_pluggableDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5TeaUIP33_555B43D3A3BE92296C45DE65B67B87E428FallbackPluginViewController_isBeingUsedAsPlugin] = 1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void (*sub_1D7F1898C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC5TeaUIP33_555B43D3A3BE92296C45DE65B67B87E428FallbackPluginViewController_pluggableDelegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return sub_1D7F18A1C;
}

void sub_1D7F18A1C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1D7F18B7C()
{
  sub_1D8190F14();
  OUTLINED_FUNCTION_2_25();
}

uint64_t sub_1D7F18BBC(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return MEMORY[0x1DA714A20](*&a1);
}

uint64_t sub_1D7F18BF0(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1DA714A20](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1DA714A20](*&v3);
}

uint64_t sub_1D7F18C40(uint64_t a1)
{
  result = sub_1D7F18D20(&qword_1ECA0DAA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D7F18D20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PluginModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double BlueprintLayoutSizeAttributesType.frame.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v4();
  (v4)(a1, a2);
  return 0.0;
}

TeaUI::SizeLayoutAttributes __swiftcall SizeLayoutAttributes.init(size:)(TeaUI::SizeLayoutAttributes size)
{
  *v1 = size.size.width;
  v1[1] = size.size.height;
  return size;
}

uint64_t getEnumTagSinglePayload for BlueprintLayoutOptions.ViewportConstraint(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for NoneSelectionStyle(_BYTE *result, int a2, int a3)
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

uint64_t PageSheetPresentationChange.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

void sub_1D7F190A0()
{
  if (*(v0 + 32))
  {
    sub_1D7F190B0();
  }
}

void sub_1D7F190B0()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v2 = objc_opt_self();
      v3 = [v2 defaultCenter];
      if (qword_1EDBB3130 != -1)
      {
        swift_once();
      }

      v4 = qword_1EDBB3138;
      v5 = swift_unknownObjectWeakLoadStrong();
      [v3 addObserver:v0 selector:sel_presentationTransitionDidEndWithNotification_ name:v4 object:v5];

      v6 = [v2 defaultCenter];
      if (qword_1EDBB3148 != -1)
      {
        swift_once();
      }

      v7 = qword_1EDBB3150;
      v8 = swift_unknownObjectWeakLoadStrong();
      [v6 addObserver:v0 selector:sel_dismissalTransitionDidEndWithNotification_ name:v7 object:v8];
    }

    *(v0 + 24) = 1;
  }
}

uint64_t sub_1D7F19228(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1D7E19F24(a1);
  sub_1D7E0E10C(v4);
  sub_1D7F190A0();

  return sub_1D7E0E10C(a1);
}

uint64_t PageSheetPresentationObserver.__allocating_init(viewController:)(void *a1)
{
  v2 = swift_allocObject();
  PageSheetPresentationObserver.init(viewController:)(a1);
  return v2;
}

uint64_t PageSheetPresentationObserver.init(viewController:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t PageSheetPresentationObserver.observe(_:)(uint64_t a1, uint64_t a2)
{

  return sub_1D7F19228(a1, a2);
}

Swift::Void __swiftcall PageSheetPresentationObserver.endObserving()()
{
  if (*(v0 + 24) == 1)
  {
    v1 = objc_opt_self();
    v2 = [v1 defaultCenter];
    if (qword_1EDBB3130 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDBB3138;
    Strong = swift_unknownObjectWeakLoadStrong();
    [v2 removeObserver:v0 name:v3 object:Strong];

    v5 = [v1 defaultCenter];
    if (qword_1EDBB3148 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDBB3150;
    v7 = swift_unknownObjectWeakLoadStrong();
    [v5 removeObserver:v0 name:v6 object:v7];

    *(v0 + 24) = 0;
  }
}

id sub_1D7F194B4(void *a1, id a2)
{
  result = [a2 presentedViewController];
  if (result)
  {
    v4 = result;
    sub_1D7E194D0();
    v5 = a1;
    v6 = sub_1D8191CC4();

    return (v6 & 1);
  }

  return result;
}

void sub_1D7F19534(uint64_t a1, char a2)
{
  sub_1D818E434();
  if (v9)
  {
    sub_1D7E194D0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      if ([v7 modalPresentationStyle] == 1 && (sub_1D7F194B4(v7, v5) & 1) != 0)
      {
        v6 = *(v2 + 32);
        if (v6)
        {
          v8[0] = a2;

          v6(v8);

          sub_1D7E0E10C(v6);
          return;
        }
      }
    }
  }

  else
  {
    sub_1D7E7BAAC(v8);
  }
}

uint64_t sub_1D7F19648(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1D818E454();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E414();

  sub_1D7F19534(v8, a4);

  return (*(v6 + 8))(v8, v5);
}

uint64_t PageSheetPresentationObserver.deinit()
{
  MEMORY[0x1DA715E30](v0 + 16);
  sub_1D7E0E10C(*(v0 + 32));
  return v0;
}

uint64_t PageSheetPresentationObserver.__deallocating_deinit()
{
  MEMORY[0x1DA715E30](v0 + 16);
  sub_1D7E0E10C(*(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1D7F197AC()
{
  result = qword_1ECA0DAD8;
  if (!qword_1ECA0DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DAD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PageSheetPresentationChange(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PageBlueprintProvider.__allocating_init(blueprint:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PageBlueprintProvider.init(blueprint:)(a1);
  return v2;
}

uint64_t PageBlueprintProvider.init(blueprint:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageBlueprint();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  sub_1D818F194();
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_1D818F134();
  (*(v5 + 8))(a1, v4);
  *(v2 + 16) = v8;
  return v2;
}

uint64_t PageBlueprintProvider.__deallocating_deinit()
{
  PageBlueprintProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t ContainerScope.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t (*ContainerManager.carPlayContainer.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = ContainerManager.carPlayContainer.getter();
  return sub_1D7F19CAC;
}

uint64_t ContainerManager.__allocating_init(singletonPool:bundleAssemblies:assemblies:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ContainerManager.init(singletonPool:bundleAssemblies:assemblies:)(a1, a2, a3);
  return v6;
}

uint64_t ContainerManager.deinit()
{
  v1 = OBJC_IVAR____TtC5TeaUI16ContainerManager_containerEnvironment;
  v2 = sub_1D818FCC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ContainerManager.__deallocating_deinit()
{
  ContainerManager.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D7F19E38()
{
  result = qword_1ECA0DAE0;
  if (!qword_1ECA0DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DAE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContainerScope(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SidebarCommandState.hashValue.getter(char a1)
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](a1 & 1);
  return sub_1D8192824();
}

uint64_t sub_1D7F1A028()
{
  v1 = *v0;
  sub_1D81927E4();
  SidebarCommandState.hash(into:)(v3, v1);
  return sub_1D8192824();
}

uint64_t static Commands.SplitView.toggleSidebar.getter()
{
  if (qword_1EDBBC918 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1D7F1A0CC()
{
  result = qword_1ECA0DAE8;
  if (!qword_1ECA0DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DAE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SidebarCommandState(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s9SplitViewVwst(_BYTE *result, int a2, int a3)
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

void *SwappableView.currentView.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI13SwappableView_currentView;
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SwappableView.currentView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI13SwappableView_currentView;
  OUTLINED_FUNCTION_0_25();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SwappableView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SwappableView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI13SwappableView_currentView) = 0;
  sub_1D81923A4();
  __break(1u);
}

id SwappableView.init(defaultView:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI13SwappableView_currentView] = 0;
  *&v1[OBJC_IVAR____TtC5TeaUI13SwappableView_defaultView] = a1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 addSubview_];

  return v5;
}

Swift::Void __swiftcall SwappableView.present(view:)(UIView *view)
{
  [v1 bounds];
  [(UIView *)view setFrame:?];
  v2 = OBJC_IVAR____TtC5TeaUI13SwappableView_currentView;
  OUTLINED_FUNCTION_0_25();
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = *&v1[v2];
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC5TeaUI13SwappableView_defaultView];
    v3 = 0;
  }

  v5 = v3;
  [v4 removeFromSuperview];
  [v1 addSubview_];

  v6 = *&v1[v2];
  *&v1[v2] = view;

  v7 = view;
}

Swift::Void __swiftcall SwappableView.pop()()
{
  v1 = OBJC_IVAR____TtC5TeaUI13SwappableView_currentView;
  OUTLINED_FUNCTION_0_25();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5TeaUI13SwappableView_defaultView];
    v4 = v2;
    [v4 removeFromSuperview];
    [v0 addSubview_];

    v5 = *&v0[v1];
    *&v0[v1] = 0;
  }
}

id SwappableView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SwappableView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SwappableView.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC5TeaUI13SwappableView_currentView;
  OUTLINED_FUNCTION_1_0();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }

  v4 = *&v0[OBJC_IVAR____TtC5TeaUI13SwappableView_defaultView];
  [v0 bounds];
  [v4 setFrame_];
}

uint64_t PromiseViewController.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI21PromiseViewController_identifier);
  sub_1D8190DB4();
  return v1;
}

uint64_t PromiseViewController.__allocating_init(identifier:promise:initialNavigationItemStyle:indicatorLoadingCoverStyler:parentingCompleteClosure:parentingErrorClosure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_5_11();
  v18 = objc_allocWithZone(v9);
  return PromiseViewController.init(identifier:promise:initialNavigationItemStyle:indicatorLoadingCoverStyler:parentingCompleteClosure:parentingErrorClosure:)(v16, v15, v14, v13, v12, v11, v10, a8, a9);
}

uint64_t PromiseViewController.init(identifier:promise:initialNavigationItemStyle:indicatorLoadingCoverStyler:parentingCompleteClosure:parentingErrorClosure:)(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  memcpy(__dst, __src, sizeof(__dst));
  *&v9[OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController] = 0;
  v17 = OBJC_IVAR____TtC5TeaUI21PromiseViewController_coverViewManager;
  type metadata accessor for CoverViewManager();
  v18 = swift_allocObject();
  v19 = CoverViewManager.init()();
  *&v10[v17] = v19;
  v20 = &v10[OBJC_IVAR____TtC5TeaUI21PromiseViewController_identifier];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v10[OBJC_IVAR____TtC5TeaUI21PromiseViewController_promise] = a3;
  OUTLINED_FUNCTION_1_25(v19, &unk_1EDBBC510, &type metadata for NavigationItemStyle);
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_6_1();

  *&v10[OBJC_IVAR____TtC5TeaUI21PromiseViewController_navigationItemStyle] = sub_1D818F144();
  sub_1D7E0E768(a5, &v10[OBJC_IVAR____TtC5TeaUI21PromiseViewController_indicatorLoadingCoverStyler]);
  v21 = &v10[OBJC_IVAR____TtC5TeaUI21PromiseViewController_parentingCompleteClosure];
  *v21 = a6;
  *(v21 + 1) = a7;
  v22 = &v10[OBJC_IVAR____TtC5TeaUI21PromiseViewController_parentingErrorClosure];
  *v22 = a8;
  *(v22 + 1) = a9;
  v25.receiver = v10;
  v25.super_class = type metadata accessor for PromiseViewController();
  objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  OUTLINED_FUNCTION_6_1();

  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v18;
}

uint64_t PromiseViewController.__allocating_init(identifier:promise:initialNavigationItemStyle:parentingCompleteClosure:parentingErrorClosure:)(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy(__dst, __src, 0x5AuLL);
  if (qword_1EDBB6688 != -1)
  {
    OUTLINED_FUNCTION_3_29();
  }

  v15 = qword_1EDBB6690;
  v19[3] = type metadata accessor for ActivityIndicatorCoverStyler();
  v19[4] = &protocol witness table for ActivityIndicatorCoverStyler;
  v19[0] = v15;
  v16 = *(v8 + 168);

  return v16(a1, a2, a3, __dst, v19, a5, a6, a7, a8);
}

uint64_t PromiseViewController.__allocating_init(identifier:parentingCompleteClosure:parentingErrorClosure:initialNavigationItemStyle:resolver:)()
{
  OUTLINED_FUNCTION_5_11();
  sub_1D7F1D91C();
  OUTLINED_FUNCTION_8_5();
  sub_1D818FBA4();
  OUTLINED_FUNCTION_10_16();
  return PromiseViewController.__allocating_init(identifier:promise:initialNavigationItemStyle:parentingCompleteClosure:parentingErrorClosure:)(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D7F1ACB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t (*)(uint64_t a1), uint64_t, uint64_t, uint64_t))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  a5(sub_1D7F14DC8, v10, a3, a4);
}

uint64_t PromiseViewController.__allocating_init(identifier:indicatorLoadingCoverStyler:parentingCompleteClosure:parentingErrorClosure:initialNavigationItemStyle:resolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  sub_1D7F1D91C();
  OUTLINED_FUNCTION_8_5();
  sub_1D818FBA4();
  memcpy(__dst, a8, sizeof(__dst));
  sub_1D7E0E768(a3, v14);
  OUTLINED_FUNCTION_10_16();
  v12 = v11(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v12;
}

uint64_t PromiseViewController.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController] = 0;
  v10 = OBJC_IVAR____TtC5TeaUI21PromiseViewController_coverViewManager;
  type metadata accessor for CoverViewManager();
  swift_allocObject();
  *&v1[v10] = CoverViewManager.init()();
  sub_1D818E784();
  v11 = sub_1D818E764();
  v13 = v12;
  (*(v6 + 8))(v9, v4);
  v14 = &v2[OBJC_IVAR____TtC5TeaUI21PromiseViewController_identifier];
  *v14 = v11;
  v14[1] = v13;
  *&v2[OBJC_IVAR____TtC5TeaUI21PromiseViewController_promise] = a1;
  v15 = qword_1EDBB9828;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_2_26();
  }

  memcpy(__dst, &xmmword_1EDBB9830, 0x5AuLL);
  v16 = memcpy(v25, &xmmword_1EDBB9830, sizeof(v25));
  OUTLINED_FUNCTION_1_25(v16, &unk_1EDBBC510, &type metadata for NavigationItemStyle);
  OUTLINED_FUNCTION_8_5();
  sub_1D7E417E0(__dst, &v24);
  *&v2[OBJC_IVAR____TtC5TeaUI21PromiseViewController_navigationItemStyle] = sub_1D818F144();
  if (qword_1EDBB6688 != -1)
  {
    OUTLINED_FUNCTION_3_29();
  }

  v17 = qword_1EDBB6690;
  v18 = &v2[OBJC_IVAR____TtC5TeaUI21PromiseViewController_indicatorLoadingCoverStyler];
  v18[3] = type metadata accessor for ActivityIndicatorCoverStyler();
  v18[4] = &protocol witness table for ActivityIndicatorCoverStyler;
  *v18 = v17;
  v19 = &v2[OBJC_IVAR____TtC5TeaUI21PromiseViewController_parentingCompleteClosure];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v2[OBJC_IVAR____TtC5TeaUI21PromiseViewController_parentingErrorClosure];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = type metadata accessor for PromiseViewController();
  v23.receiver = v2;
  v23.super_class = v21;

  objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  OUTLINED_FUNCTION_6_1();

  return v17;
}

uint64_t PromiseViewController.__allocating_init(resolver:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E784();
  v10 = sub_1D818E764();
  v12 = v11;
  (*(v6 + 8))(v9, v4);
  v15[2] = a1;
  v15[3] = a2;
  sub_1D7F1D91C();
  OUTLINED_FUNCTION_8_5();
  v13 = sub_1D818FBA4();
  if (qword_1EDBB9828 != -1)
  {
    OUTLINED_FUNCTION_2_26();
  }

  memcpy(__dst, &xmmword_1EDBB9830, 0x5AuLL);
  memcpy(v17, &xmmword_1EDBB9830, 0x5AuLL);
  sub_1D7E417E0(__dst, &v16);
  return PromiseViewController.__allocating_init(identifier:promise:initialNavigationItemStyle:parentingCompleteClosure:parentingErrorClosure:)(v10, v12, v13, v17, 0, 0, 0, 0);
}
uint64_t sub_1C11A27EC()
{
  v1 = sub_1C1264680();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 32);
  v10 = *(v0 + 33);
  v11 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    v12 = *(v0 + 40);
    v23 = *(v0 + 40);
    if ((v10 & 1) == 0)
    {
LABEL_3:
      if (v12 == 5)
      {
        sub_1C12644F0();
        sub_1C12645B0();
        v13 = sub_1C1264670();
        goto LABEL_15;
      }

      if (v12 == 2)
      {
        sub_1C1264570();
        v13 = sub_1C1264540();
LABEL_15:
        v19 = v13;

        return v19;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v22 = *(v0 + 32);
    v14 = v10;

    sub_1C1266420();
    v15 = v2;
    v16 = v1;
    v17 = sub_1C1264410();
    sub_1C1262620();

    v1 = v16;
    v2 = v15;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v11, 0);
    (*(v6 + 8))(v8, v5);
    v18 = v14;
    v9 = v22;
    v12 = v23;
    if ((v18 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (v12 == 1)
  {
LABEL_8:
    if (v9)
    {
      sub_1C1264660();
    }

    else
    {
      sub_1C1264530();
    }

    sub_1C12645E0();
    sub_1C1264670();

    (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v1);
    v19 = sub_1C12646C0();
    goto LABEL_13;
  }

  sub_1C1264570();
  sub_1C12645E0();
  sub_1C1264670();

  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v1);
  v19 = sub_1C12646C0();
LABEL_13:

  (*(v2 + 8))(v4, v1);
  return v19;
}

uint64_t sub_1C11A2B24()
{
  v1 = sub_1C1264680();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + 33);
  v10 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    v11 = *(v0 + 40);
    v16 = *(v0 + 40);
    if ((v9 & 1) == 0)
    {
LABEL_3:
      if (v11 == 5)
      {
        sub_1C1264660();
        sub_1C1264600();
        goto LABEL_12;
      }

      if (v11 == 2)
      {
        sub_1C12646A0();
        sub_1C1264620();
LABEL_12:
        v13 = sub_1C1264670();

        return v13;
      }

      goto LABEL_8;
    }
  }

  else
  {

    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
    v11 = v16;
    if ((v9 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (v11 != 1)
  {
    sub_1C1264510();
    goto LABEL_10;
  }

LABEL_8:
  sub_1C12646D0();
LABEL_10:
  sub_1C1264620();
  sub_1C1264670();

  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v1);
  v13 = sub_1C12646C0();

  (*(v2 + 8))(v4, v1);
  return v13;
}

double sub_1C11A2DD4()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v13, (v0 + 56), 0xD1uLL);
  memcpy(v14, (v0 + 56), 0xD1uLL);
  if (sub_1C100D688(v14) == 1)
  {
    nullsub_1(v14);
    memcpy(v10, v13, 0xD1uLL);
    v5 = nullsub_1(v10);
    memcpy(v12, v5, sizeof(v12));
    memcpy(v11, v13, 0xD1uLL);
    v6 = nullsub_1(v11);
    sub_1C100D690(v6, v9);
  }

  else
  {
    nullsub_1(v14);
    memcpy(v10, v13, 0xD1uLL);
    nullsub_1(v10);
    memcpy(v11, v13, 0xD1uLL);
    nullsub_1(v11);

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(v13, &qword_1EBE91C80);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v11, v12, 0xD0uLL);
  sub_1C100C7D0(v11);
  return *&v11[5];
}

unint64_t sub_1C11A3018()
{
  result = qword_1EBE96568;
  if (!qword_1EBE96568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96568);
  }

  return result;
}

uint64_t sub_1C11A3094(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 265))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C11A30E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 265) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 265) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosReliveCollectionTitleWithSubtitleView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C11A326C()
{
  result = qword_1EBE96570;
  if (!qword_1EBE96570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96560);
    sub_1C0FDB6D4(&qword_1EBE96578, &qword_1EBE96580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96570);
  }

  return result;
}

double EdgeInsets.ensuringMinimum(top:leading:bottom:trailing:)(uint64_t a1, char a2, double result)
{
  if ((a2 & 1) == 0 && *&a1 > result)
  {
    return *&a1;
  }

  return result;
}

BOOL sub_1C11A33B4()
{
  sub_1C1262F40();
  sub_1C11A3D88();
  sub_1C12662D0();
  sub_1C1266310();
  return v2 == v1;
}

uint64_t sub_1C11A3420(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1C11A33B4();
  if ((result & 1) == 0)
  {
    v15[0] = a2 & 1;
    sub_1C11A3530(a1, a2 & 1, a3, a4 & 1, a5, v15);
    sub_1C1262F40();
    sub_1C11A3D88();
    sub_1C12662D0();
    sub_1C1266310();
    result = sub_1C1266300();
    if (result >= a7)
    {
      v14 = a7;
    }

    else
    {
      v14 = result;
    }

    if (__OFSUB__(v14, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C11A3530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a5;
  v51 = sub_1C1262E10();
  OUTLINED_FUNCTION_0();
  v45 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v6[6] & 1) == 0)
  {
    v15 = v6[4];
    v16 = *(v6 + 5);
    v17 = *(v6 + 6);
    v18 = *(v6 + 2);
    v19 = *(v6 + 2);
    v20 = *v6;
    v54[0] = a2 & 1;
    LOBYTE(v55) = a4 & 1;
    v21 = v18;
    result = sub_1C1263300();
    if (result)
    {
      a1 = *&v20;
LABEL_18:
      *a6 = a1;
      *(a6 + 8) = v19 & 1;
      *(a6 + 16) = v21;
      *(a6 + 24) = v17 & 1;
      *(a6 + 32) = v15;
      *(a6 + 40) = v16;
      return result;
    }
  }

  v52 = a2;
  v46 = a4;
  v47 = v6;
  sub_1C1262F40();
  sub_1C11A3D88();
  result = sub_1C12662E0();
  v23 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v24 = result;
    v55 = MEMORY[0x1E69E7CC0];
    sub_1C1102430(0, result & ~(result >> 63), 0);
    v23 = v55;
    result = sub_1C12662D0();
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_20;
    }

    v43 = a3;
    v44 = a6;
    v49 = (v45 + 16);
    v25 = (v45 + 8);
    do
    {
      v26 = sub_1C12663A0();
      v27 = v50;
      v28 = v51;
      (*v49)(v50);
      v26(v54, 0);
      v54[0] = v52 & 1;
      v53 = 1;
      v29 = a1;
      sub_1C1262DF0();
      v31 = v30;
      v33 = v32;
      (*v25)(v27, v28);
      v55 = v23;
      v35 = v23[2];
      v34 = v23[3];
      if (v35 >= v34 >> 1)
      {
        sub_1C1102430((v34 > 1), v35 + 1, 1);
        v23 = v55;
      }

      v23[2] = v35 + 1;
      v36 = &v23[2 * v35];
      v36[4] = v31;
      v36[5] = v33;
      result = sub_1C1266320();
      --v24;
      a1 = v29;
    }

    while (v24);
    v21 = v43;
    a6 = v44;
  }

  else
  {
    v21 = a3;
  }

  v37 = v23[2];
  v38 = v52;
  if (v37)
  {
    v15 = 0.0;
    v39 = 4;
    do
    {
      if (v15 <= *&v23[v39])
      {
        v15 = *&v23[v39];
      }

      v39 += 2;
      --v37;
    }

    while (v37);
    v16 = v23[5];

    v41 = v46;
    v40 = v47;
    v42 = v46 & 1;
    *v47 = a1;
    *(v40 + 1) = v38 & 1;
    *(v40 + 2) = v21;
    *(v40 + 3) = v42;
    v40[4] = v15;
    *(v40 + 5) = v16;
    LOBYTE(v19) = v38;
    LOBYTE(v17) = v41;
    *(v40 + 48) = 0;
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C11A3884(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12)
{
  v42 = a6;
  v19 = sub_1C1262E10();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C11A33B4();
  if ((result & 1) == 0)
  {
    v43 = a12;
    v45[0] = a2 & 1;
    v44 = a4 & 1;
    v41 = a7;
    sub_1C11A3530(a1, a2 & 1, a3, a4 & 1, a5, v45);
    v26 = v46;
    v42 = v47;
    v27 = v47;
    v48.origin.x = OUTLINED_FUNCTION_1_46();
    CGRectGetMinX(v48);
    v49.origin.x = OUTLINED_FUNCTION_1_46();
    CGRectGetMinY(v49);
    sub_1C1265B40();
    sub_1C1262F50();
    OUTLINED_FUNCTION_0_63();
    OUTLINED_FUNCTION_3_43();
    v30 = *(v21 + 8);
    v29 = v21 + 8;
    v28 = v30;
    v30(v24, v19);
    v31 = sub_1C1262F40();
    v32 = sub_1C11A3D88();
    sub_1C12662D0();
    sub_1C1266310();
    v39[6] = v32;
    v40 = v31;
    result = sub_1C1266300();
    if (result >= v41)
    {
      v33 = v41;
    }

    else
    {
      v33 = result;
    }

    if (v33 < 1)
    {
      __break(1u);
      goto LABEL_17;
    }

    v39[1] = v28;
    v39[2] = v27;
    v39[3] = v26;
    v39[4] = v29;
    v39[5] = v19;
    if (v33 != 1)
    {
      v34 = 1;
      OUTLINED_FUNCTION_2_52();
      do
      {
        v50.origin.x = OUTLINED_FUNCTION_1_46();
        CGRectGetMinX(v50);
        v51.origin.x = OUTLINED_FUNCTION_1_46();
        CGRectGetMinY(v51);
        sub_1C1265B50();
        sub_1C1262F50();
        OUTLINED_FUNCTION_0_63();
        OUTLINED_FUNCTION_3_43();
        v28(v24, v29);
        ++v34;
      }

      while (v33 != v34);
    }

    v35 = v40;
    OUTLINED_FUNCTION_42_0();
    sub_1C12662D0();
    OUTLINED_FUNCTION_42_0();
    sub_1C1266310();
    result = OUTLINED_FUNCTION_7_36();
    if (result > v41)
    {
      OUTLINED_FUNCTION_42_0();
      sub_1C12662D0();
      OUTLINED_FUNCTION_42_0();
      sub_1C1266310();
      result = OUTLINED_FUNCTION_7_36();
      if (result >= v41)
      {
        if (result == v41)
        {
          return result;
        }

        v36 = result;
        if (result > v41)
        {
          OUTLINED_FUNCTION_2_52();
          do
          {
            v38 = v37 + 1;
            sub_1C1262F50();
            OUTLINED_FUNCTION_0_63();
            OUTLINED_FUNCTION_3_43();
            result = v35(v24, v29);
            v37 = v38;
          }

          while (v36 != v38);
          return result;
        }

LABEL_18:
        __break(1u);
        return result;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }

  return result;
}

double sub_1C11A3BF8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

double sub_1C11A3C14@<D0>(uint64_t a1@<X8>)
{
  sub_1C11A3BF8(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

void (*sub_1C11A3CB8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C12627D0();
  return sub_1C10115B8;
}

unint64_t sub_1C11A3D34()
{
  result = qword_1EBE965B8;
  if (!qword_1EBE965B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE965B8);
  }

  return result;
}

unint64_t sub_1C11A3D88()
{
  result = qword_1EDE7BFC8;
  if (!qword_1EDE7BFC8)
  {
    sub_1C1262F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BFC8);
  }

  return result;
}

uint64_t sub_1C11A3DE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C11A3E00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

uint64_t PhotosObservableListCellModel.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableListCellModel.init(_:)(a1);
  return v2;
}

uint64_t PhotosObservableListCellModel.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_5();
  sub_1C10342F0(a1, v4, v1 + *(v3 + 112));
  return v1;
}

uint64_t sub_1C11A3F18(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v5 = v4;
  v6 = *(v2 + 80);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-v10];
  sub_1C10344AC(&v15[-v10]);
  v12 = *(v8 + 8);
  v12(v11, v6);
  v18 = v6;
  v19 = *(v5 + 88);
  OUTLINED_FUNCTION_20();
  v20 = *(v13 + 104);
  swift_getKeyPath();
  v16 = v1;
  v17 = a1;
  sub_1C11A4C00();

  return v12(a1, v6);
}

uint64_t sub_1C11A40C0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C11A3F18(v3);
}

uint64_t sub_1C11A4180@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C11A4B64();

  return sub_1C10344AC(a1);
}

uint64_t sub_1C11A4204(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C1034540(v3);
}

void (*sub_1C11A42D0(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  swift_getKeyPath();
  sub_1C11A4B64();

  OUTLINED_FUNCTION_10_2();
  v3[4] = v1;
  swift_getKeyPath();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosObservableListCellModel();
  OUTLINED_FUNCTION_0_64();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[6] = sub_1C10345DC();
  return sub_1C11A4440;
}

void sub_1C11A4440(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);
  sub_1C11A4494();

  free(v1);
}

uint64_t sub_1C11A4494()
{
  swift_getKeyPath();
  type metadata accessor for PhotosObservableListCellModel();
  swift_getWitnessTable();
  sub_1C1261F40();
}

uint64_t sub_1C11A45B0()
{
  OUTLINED_FUNCTION_2_16();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_26(v6, v8);
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1C11A4680()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_47(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C11A4748()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_47(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C11A4810()
{
  OUTLINED_FUNCTION_3_6();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1_28();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_47(v6, v11);
  OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_10_19();
  v9 = v8(v7);
  (*(v4 + 8))(v0, v2);
  return v9;
}

uint64_t sub_1C11A48F4()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_47(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C11A49BC()
{
  OUTLINED_FUNCTION_2_16();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_26(v6, v9);
  OUTLINED_FUNCTION_20();
  (*(*(v7 + 88) + 40))(v2);
  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1C11A4A9C()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_47(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C11A4B64()
{
  OUTLINED_FUNCTION_0_64();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C11A4C00()
{
  OUTLINED_FUNCTION_0_64();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosObservableListCellModel.deinit()
{
  OUTLINED_FUNCTION_5();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 112));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 120);
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PhotosObservableListCellModel.__deallocating_deinit()
{
  PhotosObservableListCellModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C11A4E58(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C11A42D0(v2);
  return sub_1C10115B8;
}

uint64_t PhotosObservableListCellModel<>.isContentPrivacyEnabled.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_1_28();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_47(v8, v12);
  v9 = OUTLINED_FUNCTION_10_19();
  LOBYTE(a1) = v10(v9, a1);
  (*(v6 + 8))(v1, v4);
  return a1 & 1;
}

uint64_t PhotosProcessingView.DisclosureStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C11A524C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C0FDB800(v2, &v14 - v9, &qword_1EBE904D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1263150();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PhotosProcessingView.init(visibility:localizedTitle:wantsDynamicPopoverBackground:localizedPopoverInformation:disclosureStyle:wantsLeftAlignment:isOverContent:infoActionOverride:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  v19 = *a7;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for PhotosProcessingView();
  v21 = a9 + v20[13];
  sub_1C1265410();
  *v21 = v28;
  *(v21 + 1) = *(&v28 + 1);
  v22 = a9 + v20[14];
  type metadata accessor for CGRect(0);
  sub_1C1265410();
  *v22 = v28;
  *(v22 + 1) = v29;
  *(v22 + 4) = v30;
  sub_1C11A6A78();
  result = sub_1C12628D0();
  *(a9 + v20[5]) = a1;
  v24 = (a9 + v20[6]);
  *v24 = a2;
  v24[1] = a3;
  v25 = (a9 + v20[7]);
  *v25 = a5;
  v25[1] = a6;
  *(a9 + v20[8]) = a4 & 1;
  *(a9 + v20[9]) = v19;
  *(a9 + v20[10]) = a8;
  *(a9 + v20[11]) = a10;
  v26 = (a9 + v20[12]);
  *v26 = a11;
  v26[1] = a12;
  return result;
}

uint64_t type metadata accessor for PhotosProcessingView()
{
  result = qword_1EDE7A980;
  if (!qword_1EDE7A980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C11A5660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96600);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96630);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  type metadata accessor for PhotosProcessingView();
  if (sub_1C12629A0())
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v10);
  }

  else
  {
    *v9 = sub_1C12638E0();
    *(v9 + 1) = 0x4010000000000000;
    v9[16] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96638);
    sub_1C11A59C0(a1, &v9[*(v15 + 44)]);
    sub_1C1264510();
    sub_1C1264620();
    v16 = sub_1C1264670();

    KeyPath = swift_getKeyPath();
    v18 = &v9[*(v7 + 36)];
    *v18 = KeyPath;
    v18[1] = v16;
    v19 = *MEMORY[0x1E697E728];
    v20 = sub_1C1263130();
    (*(*(v20 - 8) + 104))(v6, v19, v20);
    sub_1C1190AD4();
    result = sub_1C1265DE0();
    if (result)
    {
      sub_1C11A6FC8();
      sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
      sub_1C1264BC0();
      sub_1C0FD1A5C(v6, &qword_1EBE92FE0);
      sub_1C0FD1A5C(v9, &qword_1EBE96600);
      (*(v11 + 32))(a2, v13, v10);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C11A59C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96640);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-v6];
  v8 = type metadata accessor for PhotosProcessingView();
  v9 = (a1 + *(v8 + 24));
  v10 = v9[1];
  v38 = *v9;
  v39 = v10;
  sub_1C0FDB9AC();

  v11 = sub_1C12648F0();
  v13 = v12;
  v15 = v14;
  v36 = v8;
  if (*(a1 + *(v8 + 44)) == 1)
  {
    v16 = sub_1C1265190();
  }

  else
  {
    v17 = [objc_opt_self() secondaryLabelColor];
    v16 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  }

  v38 = v16;
  v18 = sub_1C1264850();
  v20 = v19;
  v33 = v21;
  v34 = v22;
  sub_1C0FDB8E8(v11, v13, v15 & 1);

  *v7 = sub_1C12659A0();
  v7[1] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96648);
  sub_1C11A5C94(a1, (v7 + *(v24 + 44)));
  v25 = *(a1 + *(v36 + 40));
  v26 = v37;
  sub_1C0FDB800(v7, v37, &qword_1EBE96640);
  v27 = v35;
  *v35 = v18;
  v27[1] = v20;
  v28 = v33 & 1;
  *(v27 + 16) = v33 & 1;
  v27[3] = v34;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96650);
  sub_1C0FDB800(v26, v27 + *(v29 + 48), &qword_1EBE96640);
  v30 = v27 + *(v29 + 64);
  *v30 = 0;
  v30[8] = v25;
  v30[9] = v25 ^ 1;
  sub_1C0FDB850(v18, v20, v28);

  sub_1C0FD1A5C(v7, &qword_1EBE96640);
  sub_1C0FD1A5C(v26, &qword_1EBE96640);
  sub_1C0FDB8E8(v18, v20, v28);
}

void sub_1C11A5C94(uint64_t a1@<X0>, void *a2@<X8>)
{
  v74 = a2;
  v59 = sub_1C1263070();
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhotosProcessingView();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96658);
  MEMORY[0x1EEE9AC00](v60);
  v75 = &v58 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96660);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v58 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96668);
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v58 - v14;
  if (*(a1 + v4[12]))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE965C8);
    sub_1C12628E0();
    v15 = v80;
    v16 = (a1 + v4[14]);
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = v16[4];
    v80 = *v16;
    v17 = v80;
    v81 = v18;
    v82 = v19;
    v83 = v20;
    v84 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE96690);
    sub_1C1265420();
    CGRectGetWidth(v77);
    v80 = v17;
    v81 = v18;
    v82 = v19;
    v83 = v20;
    v84 = v21;
    sub_1C1265420();
    CGRectGetHeight(v77);
    sub_1C12659A0();
    sub_1C1262C80();
    v66 = v80;
    v65 = v81;
    v64 = v82;
    v63 = v83;
    v62 = v84;
    v61 = v85;
    v70 = v15;
    v22 = v15;
  }

  else
  {
    v70 = 0;
    v66 = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    v62 = 0;
    v61 = 0;
  }

  v23 = v76;
  sub_1C11A7190(a1, v76);
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = swift_allocObject();
  v26 = sub_1C11A71F4(v23, v25 + v24);
  MEMORY[0x1EEE9AC00](v26);
  *(&v58 - 2) = a1;
  v27 = v75;
  sub_1C1265480();
  sub_1C11A7190(a1, v23);
  v28 = swift_allocObject();
  sub_1C11A71F4(v23, v28 + v24);
  v29 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96680) + 36));
  *v29 = sub_1C11A673C;
  v29[1] = 0;
  v29[2] = sub_1C11A72C0;
  v29[3] = v28;
  v30 = v27 + *(v60 + 36);
  *v30 = 0xC020000000000000;
  *(v30 + 8) = 0;
  v31 = *(a1 + v4[11]) == 1;
  v71 = v6;
  if (v31)
  {
    v32 = sub_1C1265190();
  }

  else
  {
    if (*(a1 + v4[9]) != 1)
    {
      sub_1C1263060();
      goto LABEL_11;
    }

    v33 = [objc_opt_self() secondaryLabelColor];
    v32 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  }

  *&v77.origin.x = v32;
LABEL_11:
  v34 = sub_1C1262C90();
  v35 = v68;
  sub_1C0FDB71C(v75, v68, &qword_1EBE96658);
  *(v35 + *(v67 + 36)) = v34;
  v36 = a1 + v4[13];
  v37 = *v36;
  v38 = *(v36 + 8);
  v78 = v37;
  v79 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265440();
  x = v77.origin.x;
  y = v77.origin.y;
  width_low = LOBYTE(v77.size.width);
  v42 = *(a1 + v4[8]);
  v43 = a1;
  v44 = v76;
  sub_1C11A7190(v43, v76);
  v45 = swift_allocObject();
  sub_1C11A71F4(v44, v45 + v24);
  sub_1C0FDB71C(v35, v12, &qword_1EBE96660);
  v46 = v69;
  v47 = &v12[*(v69 + 52)];
  *v47 = x;
  *(v47 + 1) = y;
  v47[16] = width_low;
  v12[v46[14]] = v42;
  v48 = &v12[v46[15]];
  *v48 = sub_1C11A74F8;
  v48[1] = v45;
  v49 = v46[16];
  *&v12[v49] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  swift_storeEnumTagMultiPayload();
  v50 = v72;
  sub_1C0FDB71C(v12, v72, &qword_1EBE96668);
  v51 = v73;
  sub_1C0FDB800(v50, v73, &qword_1EBE96668);
  v52 = v74;
  v53 = v70;
  v54 = v66;
  *v74 = v70;
  v52[1] = v54;
  v55 = v64;
  v52[2] = v65;
  v52[3] = v55;
  v56 = v62;
  v52[4] = v63;
  v52[5] = v56;
  v52[6] = v61;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96688);
  sub_1C0FDB800(v51, v52 + *(v57 + 48), &qword_1EBE96668);
  sub_1C0FD1A5C(v50, &qword_1EBE96668);
  sub_1C0FD1A5C(v51, &qword_1EBE96668);
}

uint64_t sub_1C11A6488(uint64_t a1)
{
  v2 = type metadata accessor for PhotosProcessingView();
  v3 = *(a1 + *(v2 + 48));
  if (v3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE965C8);
    sub_1C12628E0();
    v3(v5, *(a1 + *(v2 + 28)), *(a1 + *(v2 + 28) + 8));

    return sub_1C0FCF004(v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
    return sub_1C1265430();
  }
}

uint64_t sub_1C11A6584@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C1263150();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  if (*(a1 + *(type metadata accessor for PhotosProcessingView() + 36)) == 1)
  {
    sub_1C11A524C(v10);
    (*(v5 + 104))(v7, *MEMORY[0x1E697E7D8], v4);
    sub_1C1263140();
    v11 = *(v5 + 8);
    v11(v7, v4);
    v11(v10, v4);
  }

  result = sub_1C12652F0();
  *a2 = result;
  return result;
}

uint64_t sub_1C11A673C@<X0>(void *a1@<X8>)
{
  v2 = sub_1C1263CE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1263F10();
  sub_1C1262D50();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_1C11A6848()
{
  type metadata accessor for PhotosProcessingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE96690);
  return sub_1C1265430();
}

uint64_t sub_1C11A68C0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhotosProcessingView();
  sub_1C0FDB9AC();

  result = sub_1C12648F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1C11A6948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11A713C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C11A69AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11A713C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C11A6A10()
{
  sub_1C11A713C();
  sub_1C1263BD0();
  __break(1u);
}

id sub_1C11A6A3C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *a1 = result;
  return result;
}

unint64_t sub_1C11A6A78()
{
  result = qword_1EDE7B5F8;
  if (!qword_1EDE7B5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE7B5F8);
  }

  return result;
}

unint64_t sub_1C11A6AC0()
{
  result = qword_1EBE965C0;
  if (!qword_1EBE965C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE965C0);
  }

  return result;
}

void sub_1C11A6B58()
{
  sub_1C11A6CE4(319, &qword_1EDE77570, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C1007F24();
    if (v1 <= 0x3F)
    {
      sub_1C106B1CC();
      if (v2 <= 0x3F)
      {
        sub_1C11A6CE4(319, &qword_1EBE965D0, type metadata accessor for CGRect, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1C11A6CE4(319, &qword_1EBE965D8, sub_1C11A6A78, MEMORY[0x1E697DA80]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C11A6CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhotosProcessingView.DisclosureStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C11A6E24()
{
  result = qword_1EBE965E0;
  if (!qword_1EBE965E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE965E8);
    sub_1C11A6EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE965E0);
  }

  return result;
}

unint64_t sub_1C11A6EA8()
{
  result = qword_1EBE965F0;
  if (!qword_1EBE965F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE965F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
    sub_1C11A6FC8();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE965F0);
  }

  return result;
}

unint64_t sub_1C11A6FC8()
{
  result = qword_1EBE96608;
  if (!qword_1EBE96608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96600);
    sub_1C0FDB6D4(&qword_1EBE96610, &qword_1EBE96618);
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96608);
  }

  return result;
}

unint64_t sub_1C11A70C0()
{
  result = qword_1EBE96620;
  if (!qword_1EBE96620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96620);
  }

  return result;
}

unint64_t sub_1C11A7114(uint64_t a1)
{
  result = sub_1C11A713C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C11A713C()
{
  result = qword_1EBE96628;
  if (!qword_1EBE96628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96628);
  }

  return result;
}

uint64_t sub_1C11A7190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosProcessingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11A71F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosProcessingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11A7258()
{
  v1 = *(type metadata accessor for PhotosProcessingView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C11A6488(v2);
}

uint64_t sub_1C11A72C0()
{
  type metadata accessor for PhotosProcessingView();

  return sub_1C11A6848();
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for PhotosProcessingView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_3();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  if (*(v3 + *(v1 + 48)))
  {
  }

  v5 = v3 + *(v1 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96670);
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96678);

  return swift_deallocObject();
}

uint64_t sub_1C11A74F8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhotosProcessingView();

  return sub_1C11A68C0(a1);
}

uint64_t BasicViewRepresentable.init(viewCreator:viewUpdater:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t BasicViewRepresentable.updateView(_:context:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1C11A75E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11A763C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return PlatformViewRepresentable.makeUIView(context:)(a1, a2, WitnessTable);
}

uint64_t sub_1C11A769C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return PlatformViewRepresentable.updateUIView(_:context:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1C11A7708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C11A7784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1C11A7800()
{
  swift_getWitnessTable();
  sub_1C1263BD0();
  __break(1u);
}

uint64_t sub_1C11A7848()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xRlzCRi_zRi0_zlyxIsegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t EnvironmentValues.oneUpVideoScrubberPaletteShadowSpec.getter()
{
  sub_1C11A78FC();

  return sub_1C12637F0();
}

unint64_t sub_1C11A78FC()
{
  result = qword_1EDE76F68;
  if (!qword_1EDE76F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F68);
  }

  return result;
}

void (*EnvironmentValues.oneUpVideoScrubberPaletteShadowSpec.modify(void *a1))(_OWORD **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = sub_1C11A78FC();
  sub_1C12637F0();
  return sub_1C11A7A1C;
}

uint64_t EnvironmentValues.oneUpVideoScrubberTrackShadowSpec.getter()
{
  sub_1C11A7A70();

  return sub_1C12637F0();
}

unint64_t sub_1C11A7A70()
{
  result = qword_1EDE76F78;
  if (!qword_1EDE76F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F78);
  }

  return result;
}

double sub_1C11A7ADC@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1C11A7B34(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;

  return a5(v8);
}

void (*EnvironmentValues.oneUpVideoScrubberTrackShadowSpec.modify(void *a1))(_OWORD **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = sub_1C11A7A70();
  sub_1C12637F0();
  return sub_1C11A7C64;
}

void sub_1C11A7C70(_OWORD **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v2[2] = **a1;
  v2[3] = v3;
  if (a2)
  {

    OUTLINED_FUNCTION_0_66();
  }

  else
  {
    OUTLINED_FUNCTION_0_66();
  }

  free(v2);
}

unint64_t sub_1C11A7D0C()
{
  result = qword_1EBE96718;
  if (!qword_1EBE96718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96720);
    sub_1C11A7D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96718);
  }

  return result;
}

unint64_t sub_1C11A7D90()
{
  result = qword_1EBE96728;
  if (!qword_1EBE96728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96728);
  }

  return result;
}

uint64_t sub_1C11A7E18@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = a1 & 1;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v11 = a4 & 1;
  *(v10 + 40) = v11;
  KeyPath = swift_getKeyPath();
  *a5 = v9;
  *(a5 + 8) = nullsub_1;
  *(a5 + 16) = 0;
  *(a5 + 24) = sub_1C11A8108;
  *(a5 + 32) = v10;
  *(a5 + 40) = nullsub_1;
  *(a5 + 48) = 0;
  *(a5 + 56) = KeyPath;
  *(a5 + 64) = 0;
  *(a5 + 65) = v9;

  return sub_1C1058CE4(a2, a3, v11);
}

uint64_t sub_1C11A7F00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_1C12637E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    swift_unknownObjectRetain();
    if (!a1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1C1266420();
  v12 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C0FF9034(a1, a2, 0);
  (*(v9 + 8))(v11, v8);
  LOBYTE(a1) = v18[0];
  a2 = v18[1];
  if (v18[0])
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    (*(a2 + 248))(ObjectType, a2);
    v15 = v14;
    swift_unknownObjectRelease();
    v16 = swift_getObjectType();
    LOBYTE(v18[0]) = 2;
    LOBYTE(a1) = (*(v15 + 8))(v18, v16, v15);
    swift_unknownObjectRelease();
  }

LABEL_6:
  result = swift_getKeyPath();
  *a4 = a1 & 1;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  return result;
}

unint64_t sub_1C11A8120()
{
  result = qword_1EBE96730;
  if (!qword_1EBE96730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96730);
  }

  return result;
}

uint64_t sub_1C11A8184@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __src[0] = a7;
  __src[1] = a9;
  __src[2] = a10;
  __src[3] = a11;
  v18 = type metadata accessor for PhotosDraggableItemView();
  v19 = a8 + v18[18];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a8 + v18[19];
  *v20 = swift_getKeyPath();
  *(v20 + 40) = 0;
  v21 = v18[20];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a8 + v21), __src, 0xD1uLL);
  v22 = v18[21];
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v23 = OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_17_26(v23, v24);
  v25 = OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_17_26(v25, v26);
  v27 = OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_17_26(v27, v28);
  v29 = OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_17_26(v29, v30);
  v31 = a8 + v18[26];
  sub_1C11A83D8(v37);
  v32 = v37[1];
  *v31 = v37[0];
  *(v31 + 16) = v32;
  *(v31 + 32) = v38;
  sub_1C11A8444(sub_1C11A84C8, 0);
  v33 = *(a7 - 8);
  (*(v33 + 16))(a8, a1, a7);
  *(a8 + v18[13]) = a2;
  *(a8 + v18[14]) = a3;
  *(a8 + v18[15]) = a4;
  v34 = sub_1C0FDB0A8(a5, a8 + v18[16]);
  a6(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  return (*(v33 + 8))(a1, a7);
}

double sub_1C11A83D8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhotosDraggingData();
  sub_1C1266790();
  sub_1C1265410();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1C11A8444(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for PhotosDraggableItemViewModel();

  return sub_1C12628D0();
}

void *sub_1C11A84C8()
{
  type metadata accessor for PhotosDraggableItemViewModel();
  swift_allocObject();
  return sub_1C11ADAE8();
}

uint64_t sub_1C11A8500@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v324 = a1;
  v312 = a2;
  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v333 = *(a1 + 2);
  v5 = v2;
  v334 = v3;
  v6 = v4;
  type metadata accessor for PhotosDraggableItemView.DropDelegateProxy();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  v309 = v8;
  v336 = v6;
  v321 = type metadata accessor for PhotosDraggableItemView.OnDropModifier();
  OUTLINED_FUNCTION_0();
  v311 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v310 = v11;
  OUTLINED_FUNCTION_49();
  v322 = sub_1C12630A0();
  OUTLINED_FUNCTION_0();
  v308 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v307 = v14;
  OUTLINED_FUNCTION_49();
  sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v267 = v16;
  v268 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v266 = v17;
  OUTLINED_FUNCTION_49();
  v328 = sub_1C1263320();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v327 = v19;
  OUTLINED_FUNCTION_49();
  v326 = sub_1C1263420();
  OUTLINED_FUNCTION_0();
  v325 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v323 = v22;
  OUTLINED_FUNCTION_1();
  v273 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v272 = v25;
  OUTLINED_FUNCTION_49();
  v335 = v5;
  v26 = sub_1C1263900();
  OUTLINED_FUNCTION_0();
  v280 = v27;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34();
  v277 = v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96748);
  v30 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v284 = v31;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_34();
  v282 = v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BF0);
  v34 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v298 = v35;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_34();
  v320 = v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  v38 = sub_1C1263190();
  OUTLINED_FUNCTION_11_30();
  v281 = v26;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_39();
  v274 = WitnessTable;
  v355 = WitnessTable;
  v356 = sub_1C0FDB6D4(v40, &qword_1EBE96748);
  v285 = v30;
  v41 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  v275 = v41;
  v353[36] = v41;
  v354 = sub_1C0FDB6D4(v42, &qword_1EBE91BF0);
  v43 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  v353[34] = v336;
  v353[35] = sub_1C0FDB6D4(v44, qword_1EBE92178);
  v353[32] = swift_getWitnessTable();
  v353[33] = v356;
  v353[30] = swift_getWitnessTable();
  v353[31] = sub_1C11ADA7C();
  v45 = v324;
  v353[28] = swift_getWitnessTable();
  v353[29] = v354;
  v46 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v286 = v48;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_34();
  v313 = v50;
  v300 = v34;
  v288 = v38;
  v278 = v43;
  v276 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_20();
  v317 = OpaqueTypeConformance2;
  v318 = OpaqueTypeMetadata2;
  v314 = sub_1C11AE598(v52, v53);
  OUTLINED_FUNCTION_10_31();
  v54 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v290 = v55;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_34();
  v316 = v57;
  v353[0] = v333;
  v353[1] = v335;
  v58 = v332;
  v353[2] = v334;
  v353[3] = v336;
  type metadata accessor for PhotosDraggableItemView.RectTuple();
  v59 = sub_1C1266790();
  OUTLINED_FUNCTION_16_23();
  v353[27] = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v283 = v59;
  v279 = v60;
  v292 = v54;
  v287 = sub_1C1263FF0();
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v289 = v61;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_34();
  v315 = v63;
  v291 = v64;
  v65 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v293 = v66;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_34();
  v319 = v68;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93AE8);
  v295 = v65;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v296 = v69;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_34();
  v294 = v71;
  v297 = v72;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v302 = v73;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_34();
  v299 = v75;
  OUTLINED_FUNCTION_49();
  v304 = v76;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v305 = v78;
  v306 = v77;
  MEMORY[0x1EEE9AC00](v77);
  v301 = &v257[-((v79 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v80);
  v303 = &v257[-v81];
  OUTLINED_FUNCTION_1();
  v264 = v82;
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_8();
  v263 = v84;
  OUTLINED_FUNCTION_49();
  v85 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v265 = v86;
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_8();
  v269 = v88;
  OUTLINED_FUNCTION_1();
  v90 = v89;
  MEMORY[0x1EEE9AC00](v91);
  v271 = &v257[-((v92 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v93);
  v270 = &v257[-v94];
  MEMORY[0x1EEE9AC00](v95);
  v329 = &v257[-v96];
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v257[-v98];
  v330 = v100;
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v257[-v102];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v257[-v105];
  v107 = swift_getWitnessTable();
  View.photosTrace.getter(v45, v107);
  v108 = sub_1C1262680();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v106, 1, v108);
  v331 = v90;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C0FD1A5C(v106, &qword_1EBE919B0);
    v110 = v323;
    v111 = v277;
  }

  else
  {
    v261 = v108;
    v262 = v85;
    v112 = *(v90 + 16);
    v112(v103, v58, v45);
    v112(v99, v58, v45);
    sub_1C1262640();
    v113 = sub_1C1262670();
    v114 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v115 = swift_slowAlloc();
      v259 = v113;
      v258 = v114;
      v116 = v115;
      v260 = swift_slowAlloc();
      v353[0] = v260;
      *v116 = 136446466;
      v117 = View.photosChangedProperties.getter(v45, v107);
      v119 = v118;
      v120 = *(v90 + 8);
      v121 = OUTLINED_FUNCTION_34_0();
      v120(v121);
      v122 = sub_1C0FA0E80(v117, v119, v353);

      *(v116 + 4) = v122;
      *(v116 + 12) = 2080;
      (*(v264 + 16))(v263, v99, v333);
      v123 = sub_1C1265ED0();
      v125 = v124;
      (v120)(v99, v45);
      v58 = v332;
      v126 = sub_1C0FA0E80(v123, v125, v353);

      *(v116 + 14) = v126;
      v127 = sub_1C1262630();
      v128 = v259;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v259, v258, v127, "PhotosDraggableItemView", "PhotosDraggableItemView %{public}s itemID:%s", v116, 0x16u);
      v129 = v260;
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v129, -1, -1);
      MEMORY[0x1C68F1630](v116, -1, -1);

      v130 = OUTLINED_FUNCTION_21_11();
      v131(v130, v262);
    }

    else
    {

      (*(v265 + 8))(v269, v262);
      v132 = *(v90 + 8);
      (v132)(v99, v45);
      v133 = OUTLINED_FUNCTION_34_0();
      v132(v133);
    }

    v111 = v277;
    (*(*(v261 - 8) + 8))(v106);
    v110 = v323;
  }

  (*(v273 + 16))(v272, v58 + v45[17], v335);
  sub_1C1263910();
  sub_1C12633E0();
  v134 = v45[20];
  memcpy(v352, (v58 + v134), 0xD1uLL);
  memcpy(v353, (v58 + v134), 0xD1uLL);
  if (sub_1C100D688(v353) == 1)
  {
    nullsub_1(v353);
    OUTLINED_FUNCTION_26_13(&v348);
    v135 = nullsub_1(&v348);
    memcpy(v351, v135, sizeof(v351));
    OUTLINED_FUNCTION_26_13(v350);
    v136 = nullsub_1(v350);
    sub_1C100D690(v136, v337);
  }

  else
  {
    nullsub_1(v353);
    OUTLINED_FUNCTION_26_13(&v348);
    nullsub_1(&v348);
    OUTLINED_FUNCTION_26_13(v350);
    nullsub_1(v350);

    sub_1C1266420();
    v137 = sub_1C1264410();
    sub_1C1262620();

    v138 = v266;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v352, &qword_1EBE91C80);
    (*(v267 + 8))(v138, v268);
  }

  memcpy(v350, v351, 0xD0uLL);
  sub_1C100C7D0(v350);
  v139 = v350[0];
  v140 = *(v328 + 20);
  v141 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v143 = v327;
  (*(v142 + 104))(v327 + v140, v141);
  *v143 = v139;
  v143[1] = v139;
  sub_1C11AE598(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0]);
  v144 = v281;
  v145 = v282;
  sub_1C1264AD0();
  sub_1C100867C(v143);
  (*(v325 + 8))(v110, v326);
  (*(v280 + 8))(v111, v144);
  swift_getKeyPath();
  v146 = (v58 + v45[23]);
  v147 = *v146;
  v148 = *(v146 + 1);
  LOBYTE(v348) = v147;
  *(&v348 + 1) = v148;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  LOBYTE(v348) = v337[0];
  v149 = v285;
  sub_1C1264A30();

  (v284[1])(v145, v149);
  LODWORD(v285) = *(v58 + v45[13]);
  v348 = 0u;
  v349 = 0u;
  v150 = v331;
  v151 = v331 + 16;
  v152 = *(v331 + 16);
  v153 = v329;
  v152(v329, v58, v45);
  v154 = v152;
  v155 = v151;
  v156 = v45;
  v157 = v58;
  v158 = (*(v150 + 80) + 48) & ~*(v150 + 80);
  v327 = *(v150 + 80);
  v159 = swift_allocObject();
  v284 = v159;
  v160 = v335;
  v159[2] = v333;
  v159[3] = v160;
  v161 = v336;
  v159[4] = v334;
  v159[5] = v161;
  v328 = *(v150 + 32);
  (v328)(v159 + v158, v153, v156);
  v331 = v150 + 32;
  v162 = v270;
  v154(v270, v157, v156);
  v323 = v155;
  v326 = v154;
  v325 = v158;
  v163 = swift_allocObject();
  v164 = v333;
  v165 = v335;
  v163[2] = v333;
  v163[3] = v165;
  v166 = v336;
  v163[4] = v334;
  v163[5] = v166;
  v167 = v324;
  v168 = v328;
  (v328)(v163 + v158, v162, v324);
  v169 = v271;
  v154(v271, v332, v167);
  v170 = v325;
  v171 = OUTLINED_FUNCTION_25_9();
  v172 = v335;
  v171[2] = v164;
  v171[3] = v172;
  v173 = v336;
  v171[4] = v334;
  v171[5] = v173;
  v174 = v171 + v170;
  v175 = v324;
  v176 = v168(v174, v169, v324);
  MEMORY[0x1EEE9AC00](v176);
  v177 = v332;
  swift_checkMetadataState();
  v178 = v300;
  sub_1C1264EE0();

  sub_1C0FD1A5C(&v348, &qword_1EBE90620);
  v179 = OUTLINED_FUNCTION_21_11();
  v180(v179, v178);
  v181 = v329;
  v182 = v175;
  v326(v329, v177, v175);
  v183 = v325;
  v184 = OUTLINED_FUNCTION_25_9();
  v185 = v333;
  v186 = v335;
  v184[2] = v333;
  v184[3] = v186;
  v187 = v336;
  v184[4] = v334;
  v184[5] = v187;
  v188 = v184 + v183;
  v189 = v182;
  (v328)(v188, v181, v182);
  v190 = v307;
  sub_1C1263090();
  sub_1C1262A90();
  v191 = v318;
  v192 = v322;
  sub_1C1264D30();
  (*(v308 + 8))(v190, v192);
  v193 = OUTLINED_FUNCTION_21_11();
  v194(v193, v191);
  v195 = v329;
  v196 = v332;
  v326(v329, v332, v189);
  v197 = v325;
  v198 = swift_allocObject();
  v198[2] = v185;
  v198[3] = v186;
  v199 = v185;
  v200 = v334;
  v201 = v336;
  v198[4] = v334;
  v198[5] = v201;
  (v328)(v198 + v197, v195, v189);
  v326(v195, v196, v189);
  v202 = v325;
  v203 = swift_allocObject();
  v204 = v335;
  v203[2] = v199;
  v203[3] = v204;
  v203[4] = v200;
  v203[5] = v201;
  v205 = v329;
  v206 = v328;
  (v328)(v203 + v202, v329, v189);
  *&v348 = v318;
  *(&v348 + 1) = v322;
  *&v349 = v317;
  *(&v349 + 1) = v314;
  v320 = swift_getOpaqueTypeConformance2();
  v207 = v292;
  sub_1C1264C40();

  v208 = OUTLINED_FUNCTION_21_11();
  v209(v208, v207);
  v210 = v205;
  v211 = v205;
  v212 = v324;
  v213 = v326;
  v326(v211, v332, v324);
  v214 = v202;
  v215 = OUTLINED_FUNCTION_25_9();
  v216 = v335;
  *(v215 + 2) = v333;
  *(v215 + 3) = v216;
  v217 = v334;
  v218 = v336;
  *(v215 + 4) = v334;
  *(v215 + 5) = v218;
  v206(&v215[v214], v210, v212);
  v322 = MEMORY[0x1E69802E0];
  v219 = swift_getWitnessTable();
  v346 = v320;
  v347 = v219;
  v320 = MEMORY[0x1E697E858];
  v220 = v291;
  v221 = swift_getWitnessTable();
  sub_1C1264A60();

  v222 = OUTLINED_FUNCTION_21_11();
  v223(v222, v220);
  v224 = v210;
  v225 = v210;
  v226 = v212;
  v213(v225, v332, v212);
  v227 = v325;
  v228 = OUTLINED_FUNCTION_25_9();
  v229 = v335;
  v228[2] = v333;
  v228[3] = v229;
  v230 = v336;
  v228[4] = v217;
  v228[5] = v230;
  (v328)(v228 + v227, v224, v212);
  type metadata accessor for CGSize(0);
  v344 = v221;
  v345 = MEMORY[0x1E69805D0];
  v231 = v295;
  v232 = swift_getWitnessTable();
  sub_1C11AE598(&qword_1EDE7B618, type metadata accessor for CGSize);
  v233 = v294;
  sub_1C1264C40();

  v234 = OUTLINED_FUNCTION_21_11();
  v235(v234, v231);
  v236 = v332;
  v237 = sub_1C0FDB6D4(&qword_1EDE7BA88, &qword_1EBE93AE8);
  v342 = v232;
  v343 = v237;
  v238 = v297;
  v239 = swift_getWitnessTable();
  v240 = v299;
  OUTLINED_FUNCTION_34_0();
  sub_1C1264F50();
  (*(v296 + 8))(v233, v238);
  v241 = v329;
  v326(v329, v236, v226);
  v242 = v309;
  sub_1C11ABC5C(v241, v333, v335, v334, v309);
  v243 = v310;
  sub_1C11ABE5C(v242, v310);
  v340 = v239;
  v341 = MEMORY[0x1E697E5C0];
  v244 = v304;
  v245 = swift_getWitnessTable();
  v246 = v301;
  MEMORY[0x1C68EE920](v243, v244, v321, v245);
  v247 = OUTLINED_FUNCTION_34_0();
  v248(v247);
  (*(v302 + 8))(v240, v244);
  OUTLINED_FUNCTION_3_44();
  v249 = swift_getWitnessTable();
  v338 = v245;
  v339 = v249;
  v250 = v306;
  v251 = swift_getWitnessTable();
  sub_1C0FDBA4C(v246, v250, v251);
  v252 = *(v305 + 8);
  (v252)(v246, v250);
  v253 = OUTLINED_FUNCTION_34_0();
  sub_1C0FDBA4C(v253, v254, v251);
  v255 = OUTLINED_FUNCTION_34_0();
  return v252(v255);
}

uint64_t sub_1C11AA178(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for PhotosDraggableItemView() + 64));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  return (*(v4 + 32))(a1, v3, v4);
}

void sub_1C11AA1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PhotosDraggableItemView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265430();
  v8 = (a1 + *(v7 + 64));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1C1102024(a2, a2);
  v11 = *(a2 - 8);
  swift_allocObject();
  v12 = sub_1C12660D0();
  (*(v11 + 16))(v13, a1, a2);
  v14 = sub_1C10FD3D4(v12);
  if (sub_1C1266170())
  {
    v15 = sub_1C11AE1D4(v14, a2, a4);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CD0];
  }

  (*(v10 + 48))(v15, v9, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96758);
  sub_1C12628E0();
  v16 = sub_1C11ACBA0();

  [v16 draggedObjectLifted];
}

void sub_1C11AA404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a1 + *(type metadata accessor for PhotosDraggableItemView() + 64));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_1C1102024(a2, a2);
  v10 = *(a2 - 8);
  swift_allocObject();
  v11 = sub_1C12660D0();
  (*(v10 + 16))(v12, a1, a2);
  v13 = sub_1C10FD3D4(v11);
  if (sub_1C1266170())
  {
    v14 = sub_1C11AE1D4(v13, a2, a4);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  (*(v9 + 56))(v14, v16, v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96758);
  sub_1C12628E0();
  v15 = sub_1C11ACBA0();

  [v15 setReorderFeedbackEnabled_];
}

uint64_t sub_1C11AA618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v101 = a6;
  v100 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1263420();
  v97 = *(v12 - 8);
  v98 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C12629F0();
  v81 = *(v14 - 8);
  v82 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77 - v17;
  v19 = sub_1C12637E0();
  v102 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178);
  v22 = sub_1C1263190();
  v85 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v77 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96748);
  v86 = v22;
  v24 = sub_1C1263190();
  v88 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v77 - v25;
  v89 = v26;
  v27 = sub_1C1263190();
  v92 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v90 = &v77 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BF0);
  v94 = v27;
  v87 = sub_1C1263190();
  v96 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v91 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v93 = &v77 - v31;
  v115[0] = a2;
  v83 = a3;
  v115[1] = a3;
  v115[2] = a4;
  v104 = a5;
  v115[3] = a5;
  v105 = type metadata accessor for PhotosDraggableItemView();
  v32 = *(v105 + 80);
  memcpy(v114, (a1 + v32), 0xD1uLL);
  v33 = a1;
  memcpy(v115, (a1 + v32), 0xD1uLL);
  v34 = sub_1C100D688(v115);
  v79 = v21;
  v80 = v19;
  if (v34 == 1)
  {
    v35 = v102;
    nullsub_1(v115);
    memcpy(v111, v114, 0xD1uLL);
    v36 = nullsub_1(v111);
    memcpy(v113, v36, sizeof(v113));
    memcpy(v112, v114, 0xD1uLL);
    v37 = nullsub_1(v112);
    sub_1C100D690(v37, v108);
  }

  else
  {
    nullsub_1(v115);
    memcpy(v111, v114, 0xD1uLL);
    nullsub_1(v111);
    memcpy(v112, v114, 0xD1uLL);
    nullsub_1(v112);

    sub_1C1266420();
    v38 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v114, &qword_1EBE91C80);
    v39 = v21;
    v35 = v102;
    (*(v102 + 8))(v39, v19);
  }

  memcpy(v110, v113, sizeof(v110));
  v40 = LOBYTE(v110[20]);
  sub_1C0FD7494(v18);
  if (v40 != 1)
  {
    goto LABEL_9;
  }

  v41 = v110[16];
  if (!(v110[19] >> 62))
  {
    (*(v81 + 8))(v18, v82);

    goto LABEL_10;
  }

  if (v110[19] >> 62 != 1)
  {
LABEL_9:
    v41 = sub_1C1265170();
    (*(v81 + 8))(v18, v82);
    goto LABEL_10;
  }

  v42 = v110[18];
  v44 = v81;
  v43 = v82;
  v45 = v78;
  (*(v81 + 104))(v78, *MEMORY[0x1E697DBB8], v82);

  v77 = v42;

  v46 = sub_1C12629D0();
  v47 = *(v44 + 8);
  v47(v45, v43);
  v47(v18, v43);

  if ((v46 & 1) == 0)
  {
    v41 = v77;
  }

  a1 = v33;
  v35 = v102;
LABEL_10:
  sub_1C100C7D0(v110);
  v112[0] = v41;
  sub_1C100C6E8();
  sub_1C1264960();

  v48 = v95;
  sub_1C12633E0();
  memcpy(v111, (a1 + v32), 0xD1uLL);
  memcpy(v112, (a1 + v32), 0xD1uLL);
  if (sub_1C100D688(v112) == 1)
  {
    nullsub_1(v112);
    memcpy(v107, v111, 0xD1uLL);
    v49 = nullsub_1(v107);
    memcpy(v109, v49, sizeof(v109));
    memcpy(v108, v111, 0xD1uLL);
    v50 = nullsub_1(v108);
    sub_1C100D690(v50, v106);
  }

  else
  {
    nullsub_1(v112);
    memcpy(v107, v111, 0xD1uLL);
    nullsub_1(v107);
    memcpy(v108, v111, 0xD1uLL);
    nullsub_1(v108);

    sub_1C1266420();
    v51 = sub_1C1264410();
    sub_1C1262620();

    v52 = v79;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v111, &qword_1EBE91C80);
    (*(v35 + 8))(v52, v80);
  }

  memcpy(v108, v109, 0xD0uLL);
  sub_1C100C7D0(v108);
  v53 = v108[0];
  v54 = *(v100 + 20);
  v55 = *MEMORY[0x1E697F468];
  v56 = sub_1C12639D0();
  v57 = v99;
  (*(*(v56 - 8) + 104))(&v99[v54], v55, v56);
  *v57 = v53;
  v57[1] = v53;
  v58 = sub_1C0FDB6D4(&qword_1EDE7BA68, qword_1EBE92178);
  v106[32] = v104;
  v106[33] = v58;
  v59 = v86;
  WitnessTable = swift_getWitnessTable();
  sub_1C11AE598(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0]);
  v61 = v84;
  v62 = v103;
  sub_1C1264AD0();
  sub_1C100867C(v57);
  (*(v97 + 8))(v48, v98);
  (*(v85 + 8))(v62, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96758);
  sub_1C12628E0();
  v63 = sub_1C0FDB6D4(&qword_1EDE7BA38, &qword_1EBE96748);
  v106[30] = WitnessTable;
  v106[31] = v63;
  v64 = v89;
  v65 = swift_getWitnessTable();
  v66 = v90;
  MEMORY[0x1C68EE920](v107, v64, &type metadata for PhotosDraggableItemFrame, v65);

  (*(v88 + 8))(v61, v64);
  swift_getKeyPath();
  v107[0] = 1;
  v67 = sub_1C11ADA7C();
  v106[28] = v65;
  v106[29] = v67;
  v68 = v94;
  v69 = swift_getWitnessTable();
  v70 = v91;
  sub_1C1264A30();

  (*(v92 + 8))(v66, v68);
  v71 = sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0);
  v106[26] = v69;
  v106[27] = v71;
  v72 = v87;
  v73 = swift_getWitnessTable();
  v74 = v93;
  sub_1C0FDBA4C(v70, v72, v73);
  v75 = *(v96 + 8);
  v75(v70, v72);
  sub_1C0FDBA4C(v74, v72, v73);
  return (v75)(v74, v72);
}

uint64_t sub_1C11AB2B8()
{
  type metadata accessor for PhotosDraggableItemView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  return sub_1C1265430();
}

uint64_t sub_1C11AB338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a1;
  v51 = sub_1C1263D00();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C1263DB0();
  v48 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C12637E0();
  v46 = *(v18 - 8);
  v47 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v21 = type metadata accessor for PhotosDraggableItemView();
  v22 = (a2 + *(v21 + 88));
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v53) = v23;
  v54 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  if (v52)
  {
    goto LABEL_5;
  }

  v25 = *(a2 + *(v21 + 72) + 8);

  if ((v25 & 1) == 0)
  {
    sub_1C1266420();
    v26 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v46 + 8))(v20, v47);
  }

  v27 = PhotosSelection.isSelectionBandActive.getter();

  if (v27)
  {
LABEL_5:
    sub_1C1263F40();
    sub_1C1262D50();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    (*(v48 + 8))(v17, v15);
    sub_1C1263F20();
    v37 = v51;
    sub_1C1262D50();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    result = (*(v49 + 8))(v14, v37);
    LOBYTE(v53) = 0;
    *a7 = v30;
    *(a7 + 8) = v32;
    *(a7 + 16) = v34;
    *(a7 + 24) = v36;
    *(a7 + 32) = v39;
    *(a7 + 40) = v41;
    *(a7 + 48) = v43;
    *(a7 + 56) = v45;
    *(a7 + 64) = 0;
  }

  else
  {
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 1;
  }

  return result;
}

void sub_1C11AB6EC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1C12637E0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1[4] & 1) == 0)
  {
    v16 = *a1;
    v33 = a1[1];
    v34 = v16;
    v17 = a1[2];
    v31 = a1[3];
    v32 = v17;
    v43[0] = a3;
    v43[1] = a4;
    v43[2] = a5;
    v43[3] = a6;
    v18 = type metadata accessor for PhotosDraggableItemView();
    v19 = (a2 + *(v18 + 64));
    v20 = v19[3];
    v21 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v21 + 24))(&v44, a2, v20, v21);
    if (v45)
    {
      sub_1C0F9DDE4(&v44, v46);
      sub_1C0FDB0A8(v46, v41);
      v22 = *(v18 + 80);
      memcpy(v42, (a2 + v22), 0xD1uLL);
      memcpy(v43, (a2 + v22), 0xD1uLL);
      if (sub_1C100D688(v43) == 1)
      {
        nullsub_1(v43);
        memcpy(v38, v42, 0xD1uLL);
        v23 = nullsub_1(v38);
        memcpy(v40, v23, sizeof(v40));
        memcpy(v39, v42, 0xD1uLL);
        v24 = nullsub_1(v39);
        sub_1C100D690(v24, v35);
      }

      else
      {
        nullsub_1(v43);
        memcpy(v38, v42, 0xD1uLL);
        nullsub_1(v38);
        memcpy(v39, v42, 0xD1uLL);
        nullsub_1(v39);

        sub_1C1266420();
        v27 = sub_1C1264410();
        sub_1C1262620();

        sub_1C12637D0();
        swift_getAtKeyPath();
        sub_1C0FD1A5C(v42, &qword_1EBE91C80);
        (*(v13 + 8))(v15, v12);
      }

      memcpy(v39, v40, 0xD0uLL);
      sub_1C100C7D0(v39);
      v28 = v39[0];
      sub_1C0F9DDE4(v41, v38);
      *&v38[7] = v33;
      *&v38[5] = v34;
      *&v38[11] = v31;
      *&v38[9] = v32;
      v38[13] = v28;
      sub_1C0FD77D8(v35);
      v29 = v36;
      if (v36)
      {
        v30 = v37;
        __swift_project_boxed_opaque_existential_1(v35, v36);
        (*(v30 + 8))(v38, v29, v30);
        sub_1C1033D88(v38);
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        return;
      }

      sub_1C1033D88(v38);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      v25 = &qword_1EBE94050;
      v26 = v35;
    }

    else
    {
      v25 = &qword_1EBE91420;
      v26 = &v44;
    }

    sub_1C0FD1A5C(v26, v25);
  }
}

uint64_t sub_1C11ABAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v6 = (a1 + *(type metadata accessor for PhotosDraggableItemView() + 64));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 24))(&v13, a1, v7, v8);
  if (v14)
  {
    sub_1C0F9DDE4(&v13, v16);
    sub_1C0FD77D8(&v13);
    v9 = v14;
    if (v14)
    {
      v10 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, v14);
      (*(v10 + 16))(v16, v9, v10);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v13);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v12 = &qword_1EBE94050;
  }

  else
  {
    v12 = &qword_1EBE91420;
  }

  return sub_1C0FD1A5C(&v13, v12);
}

uint64_t sub_1C11ABBD8(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for PhotosDraggableItemView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96758);
  sub_1C12628E0();
  sub_1C11AC9C8(v1, v2);
}

uint64_t sub_1C11ABC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  (*(*(a2 - 8) + 16))(a5, a1, a2);
  v10 = type metadata accessor for PhotosDraggableItemView();
  v11 = *(v10 + 64);
  v17 = a4;
  v12 = type metadata accessor for PhotosDraggableItemView.DropDelegateProxy();
  sub_1C0FDB0A8(a1 + v11, a5 + v12[13]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96758);
  sub_1C12628E0();
  *(a5 + v12[14]) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265440();
  v13 = a5 + v12[15];
  *v13 = a2;
  *(v13 + 8) = a3;
  *(v13 + 16) = v17;
  sub_1C1265440();
  v14 = a5 + v12[16];
  *v14 = a2;
  *(v14 + 8) = a3;
  *(v14 + 16) = v17;
  sub_1C1265440();
  result = (*(*(v10 - 8) + 8))(a1, v10);
  v16 = a5 + v12[17];
  *v16 = a2;
  *(v16 + 8) = a3;
  *(v16 + 16) = v17;
  return result;
}

BOOL sub_1C11ABED0(CGRect *a1, CGRect *a2)
{
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    return CGRectEqualToRect(a1[1], a2[1]);
  }

  return result;
}

BOOL sub_1C11ABF20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7.origin = *a1;
  v7.size = v2;
  v3 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v3;
  v4 = *(a2 + 16);
  v10.origin = *a2;
  v10.size = v4;
  v5 = *(a2 + 48);
  v11 = *(a2 + 32);
  v12 = v5;
  return sub_1C11ABED0(&v7, &v10);
}

uint64_t sub_1C11ABF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[2] = a1;
  v23[3] = a3;
  swift_getWitnessTable();
  *&v24 = sub_1C1263DE0();
  *(&v24 + 1) = swift_getWitnessTable();
  v23[0] = *(&v24 + 1);
  v23[1] = MEMORY[0x1E697D558];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v6 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  v12 = *(a2 + 32);
  v24 = *(a2 + 16);
  v25 = v12;
  v13 = type metadata accessor for PhotosDraggableItemView.DropDelegateProxy();
  v14 = (v3 + *(v13 + 52));
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v16 + 64))(v3, v15, v16);
  *(&v25 + 1) = v13;
  WitnessTable = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v3, v13);
  v18 = swift_checkMetadataState();
  v19 = v23[0];
  sub_1C1264EF0();

  __swift_destroy_boxed_opaque_existential_0Tm(&v24);
  *&v24 = v18;
  *(&v24 + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C(v8, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v21 = *(v6 + 8);
  v21(v8, OpaqueTypeMetadata2);
  sub_1C0FDBA4C(v11, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v21)(v11, OpaqueTypeMetadata2);
}

uint64_t sub_1C11AC230(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 52));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 80))(a1, v2, v5, v6) & 1;
}

uint64_t sub_1C11AC29C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1C11ACBA0();
  [v5 setReorderFeedbackEnabled_];

  v6 = sub_1C11ACBA0();
  [v6 performFeedback];

  v7 = (v3 + *(a2 + 52));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v10 = *(v9 + 72);

  v10(v3, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  sub_1C12655F0();

  v11 = v7[3];
  v12 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v11);
  v13 = *(v12 + 88);

  v13(a1, v3, v11, v12);
  sub_1C12655F0();

  v14 = v7[3];
  v15 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v14);
  return (*(v15 + 104))(a1, v3, v14, v15);
}

uint64_t sub_1C11AC48C@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (v3 + a2[15]);
  v8 = *v7;
  v9 = v7[1];
  LOBYTE(v7) = *(v7 + 16);
  v23 = v8;
  v24 = v9;
  v25 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  MEMORY[0x1C68EEF20](&v22);
  if (v22 == 1)
  {
    v11 = (v3 + a2[13]);
    v12 = v11[3];
    v13 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v14 = sub_1C11ACA20();
    v16 = v15;
    v17 = (v3 + a2[16]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v17) = *(v17 + 16);
    v23 = v18;
    v24 = v19;
    v25 = v17;
    MEMORY[0x1C68EEF20](&v22, v10);
    return (*(v13 + 112))(a1, v3, v22, v12, v13, v14, v16);
  }

  else
  {
    v21 = sub_1C1262BB0();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v21);
  }
}

uint64_t sub_1C11AC5DC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  sub_1C12655F0();
  v5 = (v2 + *(a2 + 52));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  return (*(v7 + 120))(a1, v2, v6, v7);
}

uint64_t sub_1C11AC698(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  return (*(v4 + 128))(v1, v3, v4);
}

uint64_t sub_1C11AC6F8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  sub_1C12655F0();
  sub_1C1265A30();
  sub_1C1262EA0();

  v5 = (v2 + *(a2 + 52));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = (*(v7 + 96))(a1, v2, v6, v7) & 1;
  sub_1C12655F0();
  return v8;
}

uint64_t sub_1C11AC83C()
{
  type metadata accessor for PhotosDraggableItemView.DropDelegateProxy();
  sub_1C11ACA20();
  return sub_1C12657A0();
}

double sub_1C11AC8E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C11ACA20();
  sub_1C11ACA20();
  sub_1C12659A0();
  sub_1C1262C80();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96768) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

void sub_1C11AC9C8(double a1, double a2)
{
  if (sub_1C11ACA20() != a1 || v4 != a2)
  {

    sub_1C11ACAE8(a1, a2);
  }
}

double sub_1C11ACA20()
{
  swift_getKeyPath();
  sub_1C11AE598(&qword_1EDE79FD8, type metadata accessor for PhotosDraggableItemViewModel);
  sub_1C1261F30();

  return *(v0 + 16);
}

void sub_1C11ACAE8(double a1, double a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C11ACC0C();
  }
}

id sub_1C11ACBA0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69C44D0]) init];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1C11ACCC4()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICoreP33_E176AF03D988E435FD5966ED7E607D1628PhotosDraggableItemViewModel___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for PhotosDraggableItemViewModel()
{
  result = qword_1EDE79FC8;
  if (!qword_1EDE79FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C11ACDBC()
{
  result = sub_1C1261F70();
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

uint64_t sub_1C11ACE68()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getExtendedExistentialTypeMetadata_unique();
    v2 = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return v2;
    }

    sub_1C11AD994(319, &qword_1EDE775F8, type metadata accessor for PhotosSelection, MEMORY[0x1E697DCC0]);
    if (v4 > 0x3F)
    {
      return v2;
    }

    sub_1C11AD918();
    if (v5 > 0x3F)
    {
      return v2;
    }

    sub_1C11AEA44(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
    if (v6 > 0x3F)
    {
      return v2;
    }

    sub_1C11AD994(319, &qword_1EDE77590, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v7 > 0x3F)
    {
      return v2;
    }

    sub_1C11AEA44(319, &qword_1EDE76CA0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v8 > 0x3F)
    {
      return v2;
    }

    else
    {
      type metadata accessor for PhotosDraggingData();
      sub_1C1266790();
      v0 = sub_1C1265450();
      if (v9 <= 0x3F)
      {
        sub_1C11AD994(319, &qword_1EDE776B0, type metadata accessor for PhotosDraggableItemViewModel, MEMORY[0x1E697DA80]);
        v0 = v10;
        if (v11 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

unint64_t sub_1C11AD0E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v39 = *(a3 + 16);
  v4 = *(v39 - 8);
  v5 = *(v4 + 84);
  v37 = *(a3 + 24);
  v6 = *(v37 - 8);
  v38 = *(v6 + 84);
  if (v5 <= v38)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(sub_1C12629F0() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96740);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v4 + 64);
  v16 = *(v6 + 80);
  v17 = *(*(v10 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v18 = v10;
  v19 = *(v6 + 64) + 71;
  v20 = *(v8 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 216;
  v23 = v9 + 8;
  v24 = *(v11 + 80) & 0xF8;
  v25 = ~v24 & 0xFFFFFFFFFFFFFFF8;
  v26 = v24 + 47;
  result = a1;
  if (v14 >= a2)
  {
LABEL_34:
    if (v5 == v14)
    {
      v12 = v5;
      v18 = v39;
    }

    else
    {
      v35 = (a1 + v15 + 10) & 0xFFFFFFFFFFFFFFF8;
      if ((v13 & 0x80000000) == 0)
      {
        v36 = *(v35 + 24);
        if (v36 >= 0xFFFFFFFF)
        {
          LODWORD(v36) = -1;
        }

        return (v36 + 1);
      }

      result = (v35 + v16 + 40) & ~v16;
      if (v38 == v14)
      {
        v12 = v38;
        v18 = v37;
      }

      else
      {
        result = (v26 + ((((((((((v23 + ((v22 + ((v19 + result) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v25;
      }
    }

    return __swift_getEnumTagSinglePayload(result, v12, v18);
  }

  v28 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v26 + ((((((((((v23 + ((v22 + ((v19 + ((v16 + ((v15 + 10) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v25) + 8;
  if ((v28 & 0xFFFFFFF8) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = a2 - v14 + 1;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  switch(v31)
  {
    case 1:
      v32 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 2:
      v32 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 3:
      __break(1u);
      return result;
    case 4:
      v32 = *(a1 + v28);
      if (!v32)
      {
        goto LABEL_34;
      }

LABEL_31:
      v33 = v32 - 1;
      if ((v28 & 0xFFFFFFF8) != 0)
      {
        v33 = 0;
        v34 = *a1;
      }

      else
      {
        v34 = 0;
      }

      result = v14 + (v34 | v33) + 1;
      break;
    default:
      goto LABEL_34;
  }

  return result;
}

void sub_1C11AD4A8(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v41 = *(a4 + 16);
  v5 = *(v41 - 8);
  v6 = *(v5 + 84);
  v39 = *(a4 + 24);
  v7 = *(v39 - 8);
  v40 = *(v7 + 84);
  if (v6 <= v40)
  {
    v8 = *(v7 + 84);
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(sub_1C12629F0() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96740);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v8 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v8;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v5 + 64);
  v18 = *(v7 + 80);
  v19 = *(v7 + 64) + 71;
  v20 = *(v9 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 216;
  v23 = (((((((((v10 + 8 + ((v20 + 216 + ((v19 + ((v18 + ((v17 + 10) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v12 + 80) & 0xF8;
  v25 = ~v24 & 0xFFFFFFFFFFFFFFF8;
  v26 = ((*(*(v11 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v27 = ((v24 + 47 + v23) & v25) + v26;
  if (v16 >= a3)
  {
    v30 = 0;
  }

  else
  {
    if (v27)
    {
      v28 = 2;
    }

    else
    {
      v28 = a3 - v16 + 1;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  if (a2 > v16)
  {
    if (v27)
    {
      v31 = 1;
    }

    else
    {
      v31 = a2 - v16;
    }

    if (v27)
    {
      v32 = ~v16 + a2;
      bzero(a1, v27);
      *a1 = v32;
    }

    switch(v30)
    {
      case 1:
        *(a1 + v27) = v31;
        break;
      case 2:
        *(a1 + v27) = v31;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *(a1 + v27) = v31;
        break;
      default:
        return;
    }

    return;
  }

  switch(v30)
  {
    case 1:
      *(a1 + v27) = 0;
      if (a2)
      {
        goto LABEL_44;
      }

      return;
    case 2:
      *(a1 + v27) = 0;
      if (a2)
      {
        goto LABEL_44;
      }

      return;
    case 3:
LABEL_62:
      __break(1u);
      return;
    case 4:
      *(a1 + v27) = 0;
      goto LABEL_43;
    default:
LABEL_43:
      if (!a2)
      {
        return;
      }

LABEL_44:
      if (v6 == v16)
      {
        v33 = a1;
        v34 = a2;
        v13 = v6;
        v11 = v41;
LABEL_46:

        __swift_storeEnumTagSinglePayload(v33, v34, v13, v11);
        return;
      }

      v35 = (a1 + v17 + 10) & 0xFFFFFFFFFFFFFFF8;
      if ((v15 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *(v35 + 8) = 0u;
          *(v35 + 24) = 0u;
          *v35 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v35 + 24) = a2 - 1;
        }

        return;
      }

      v33 = (v35 + v18 + 40) & ~v18;
      if (v40 == v16)
      {
        v34 = a2;
        v13 = v40;
        v11 = v39;
        goto LABEL_46;
      }

      v36 = v24 + 47 + ((((((((((v10 + 8 + ((v22 + ((v19 + v33) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      v37 = (v36 & v25);
      if (v14 >= a2)
      {
        v33 = v36 & v25;
        v34 = a2;
        goto LABEL_46;
      }

      if (v26)
      {
        v38 = ~v14 + a2;
        bzero(v37, v26);
        *v37 = v38;
      }

      return;
  }
}

void sub_1C11AD918()
{
  if (!qword_1EDE77620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94050);
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77620);
    }
  }
}

void sub_1C11AD994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C11AD9F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C11ADA7C()
{
  result = qword_1EDE7A4E8[0];
  if (!qword_1EDE7A4E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7A4E8);
  }

  return result;
}

void *sub_1C11ADAE8()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_1C1261F60();
  return v0;
}

uint64_t sub_1C11ADB18()
{
  OUTLINED_FUNCTION_4_48();
  OUTLINED_FUNCTION_24_4();

  return sub_1C11AA178(v0);
}

uint64_t sub_1C11ADBE8()
{
  OUTLINED_FUNCTION_4_48();
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_24_4();

  return sub_1C11AB2B8();
}

uint64_t sub_1C11ADC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  OUTLINED_FUNCTION_4_48();
  OUTLINED_FUNCTION_18_27();

  return sub_1C11AB338(a1, v9, v5, v6, v7, v8, a2);
}

void sub_1C11ADD20()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_4_48();
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_24_4();

  sub_1C11AB6EC(v2, v3, v4, v5, v6, v1);
}

uint64_t sub_1C11ADDC8(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_4_48();
  OUTLINED_FUNCTION_24_4();

  return a1();
}

uint64_t objectdestroyTm_15()
{
  v1 = *(v0 + 16);
  v11 = *(v0 + 24);
  v2 = type metadata accessor for PhotosDraggableItemView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v3 + v2[16]);
  (*(*(v11 - 8) + 8))(v3 + v2[17]);

  v4 = v3 + v2[19];
  if (*(v4 + 40))
  {
    if (*(v4 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
    }
  }

  else
  {
  }

  v5 = v3 + v2[20];
  sub_1C1001C10(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120), *(v5 + 128), *(v5 + 136), *(v5 + 144), *(v5 + 152), *(v5 + 160), *(v5 + 168), *(v5 + 176), *(v5 + 184), *(v5 + 192), *(v5 + 200), *(v5 + 208));
  v6 = v2[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_24_12();
  if (*(v3 + v2[26]))
  {
  }

  v8 = v3 + v2[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96740);
  OUTLINED_FUNCTION_3();
  (*(v9 + 8))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96750);

  return swift_deallocObject();
}

uint64_t sub_1C11AE144()
{
  OUTLINED_FUNCTION_4_48();
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_24_4();

  return sub_1C11ABBD8(v0);
}

uint64_t sub_1C11AE1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  if (sub_1C1266170())
  {
    sub_1C1266920();
    v14 = sub_1C1266910();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  v36 = sub_1C1266170();
  if (v36)
  {
    v33 = v7;
    v34 = v5;
    v15 = 0;
    v41 = (v6 + 16);
    v42 = v14 + 56;
    v38 = (v6 + 32);
    v40 = v6 + 8;
    v35 = v13;
    while (1)
    {
      v16 = sub_1C1266150();
      sub_1C12660E0();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = v17(v13, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15), a2);
      }

      else
      {
        v39 = v15;
        result = sub_1C1266980();
        if (v33 != 8)
        {
          goto LABEL_23;
        }

        v44 = result;
        v17 = *v41;
        (*v41)(v13, &v44, a2);
        result = swift_unknownObjectRelease();
        v15 = v39;
      }

      v39 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v37 = *v38;
      v37(v43, v13, a2);
      v19 = sub_1C1265D20();
      v20 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = *(v42 + 8 * v22);
        v24 = 1 << (v19 & v20);
        if ((v24 & v23) == 0)
        {
          break;
        }

        v25 = v14;
        v17(v8, (*(v14 + 48) + *(v6 + 72) * v21), a2);
        v26 = a3;
        v27 = sub_1C1265DE0();
        v28 = *(v6 + 8);
        v28(v8, a2);
        if (v27)
        {
          v28(v43, a2);
          a3 = v26;
          v13 = v35;
          v14 = v25;
          v15 = v39;
          goto LABEL_16;
        }

        v19 = v21 + 1;
        a3 = v26;
        v14 = v25;
      }

      v29 = v43;
      *(v42 + 8 * v22) = v24 | v23;
      result = (v37)(*(v14 + 48) + *(v6 + 72) * v21, v29, a2);
      v30 = *(v14 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      v13 = v35;
      v15 = v39;
      if (v31)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v32;
LABEL_16:
      v5 = v34;
      if (v15 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

__n128 sub_1C11AE588()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_1C11AE598(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C11AE5E0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_getExtendedExistentialTypeMetadata_unique();
    type metadata accessor for PhotosDraggableItemViewModel();
    if (v1 <= 0x3F)
    {
      sub_1C11AEA44(319, &qword_1EDE76B80, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C11AE6D4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C11AE838(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1C11AEA44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C11AEA94()
{
  result = type metadata accessor for PhotosDraggableItemView.DropDelegateProxy();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C11AEB0C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C11AEC70(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C11AEE7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C11AEF3C()
{
  result = qword_1EBE96770;
  if (!qword_1EBE96770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96768);
    sub_1C0FDB6D4(&qword_1EBE96778, &qword_1EBE96760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96770);
  }

  return result;
}

uint64_t sub_1C11AF00C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_1C11AF080(v2, v1);
}

uint64_t sub_1C11AF048()
{
  OUTLINED_FUNCTION_0_67();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1C11AF080(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_67();
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C11AF0DC(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1C10B4638;
}

uint64_t PhotosExportManager.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PhotosExportManager.init(delegate:)(a1, a2);
  return v4;
}

uint64_t PhotosExportManager.init(delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_0_67();
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1C11AF21C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_67();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PhotosExportManager.__deallocating_deinit()
{
  sub_1C0FF4BE4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C11AF308()
{
  type metadata accessor for PhotosExportManager();
  v0 = swift_allocObject();
  result = PhotosExportManager.init(delegate:)(0, 0);
  qword_1EDE7A718 = v0;
  return result;
}

uint64_t sub_1C11AF34C@<X0>(void *a1@<X8>)
{
  if (qword_1EDE7A710 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE7A718;
}

uint64_t EnvironmentValues.photosExportManager.getter()
{
  sub_1C11AF3F4();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C11AF3F4()
{
  result = qword_1EDE7A700;
  if (!qword_1EDE7A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7A700);
  }

  return result;
}

uint64_t sub_1C11AF448@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosExportManager.getter();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.photosExportManager.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C11AF3F4();
  sub_1C12637F0();
  return sub_1C11AF53C;
}

uint64_t sub_1C11AF53C(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1C1263800();
  }

  sub_1C1263800();
}

uint64_t View.photosExportManager(_:)()
{
  swift_getKeyPath();
  sub_1C1264A30();
}

unint64_t sub_1C11AF738()
{
  result = qword_1EBE96788;
  if (!qword_1EBE96788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96788);
  }

  return result;
}

uint64_t sub_1C11AF7D8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {

    sub_1C1266420();
    v17 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FF9034(a2, a3, 0);
    (*(v11 + 8))(v13, v10);
    v14 = v23[1];
    if (v23[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  v14 = a3;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  (*(v14 + 216))(v23, ObjectType, v14);
  swift_unknownObjectRelease();
  v16 = v23[0];
LABEL_6:
  v18 = a1 & 1;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  v20 = a4 & 1;
  *(v19 + 40) = v20;
  *(v19 + 41) = v16;
  KeyPath = swift_getKeyPath();
  LOBYTE(v23[0]) = 0;
  *a5 = v18;
  *(a5 + 8) = nullsub_1;
  *(a5 + 16) = 0;
  *(a5 + 24) = sub_1C11AFC44;
  *(a5 + 32) = v19;
  *(a5 + 40) = nullsub_1;
  *(a5 + 48) = 0;
  *(a5 + 56) = KeyPath;
  *(a5 + 64) = 0;
  *(a5 + 65) = v18;
  return sub_1C1058CE4(a2, a3, v20);
}

uint64_t sub_1C11AFA20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, unsigned __int8 a4@<W4>, uint64_t a5@<X8>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    sub_1C1266420();
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FF9034(a1, a2, 0);
    (*(v11 + 8))(v13, v10);
    a2 = v20[1];
    if (v20[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  v15 = (*(a2 + 192))(ObjectType, a2);
  swift_unknownObjectRelease();
LABEL_6:
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = a4 > 1u;
  *a5 = v15;
  *(a5 + 8) = a4;
  *(a5 + 16) = KeyPath;
  *(a5 + 24) = 0;
  *(a5 + 32) = v18;
  *(a5 + 40) = sub_1C1023064;
  *(a5 + 48) = result;
  return result;
}

unint64_t sub_1C11AFC60()
{
  result = qword_1EBE96790;
  if (!qword_1EBE96790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96790);
  }

  return result;
}

uint64_t PhotosAlbumCell.TitleAndContentLayoutStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C11AFD4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 92);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    v10 = nullsub_1(v15);
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, 0xD1uLL);
    v11 = nullsub_1(v16);
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    nullsub_1(v15);
    memcpy(v16, v17, 0xD1uLL);
    nullsub_1(v16);

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E27C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C11AFF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 96), &v15 - v10, &unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C11B016C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 100), &v15 - v10, &qword_1EBE904D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C1263130();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1C11B0370(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 104);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C11B04CC(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 108);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C11B064C()
{
  sub_1C1266E90();
  PhotosAlbumCell.TitleAndContentLayoutStyle.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t PhotosAlbumCell.init(_:titleAndContentLayoutStyle:badgeConfiguration:content:accessoryContent:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v18 = *a2;
  __src[0] = a7;
  *&__src[1] = a9;
  *&__src[3] = a10;
  __src[5] = a11;
  __src[6] = a12;
  v19 = type metadata accessor for PhotosAlbumCell();
  v20 = v19[23];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a8 + v20), __src, 0xD1uLL);
  v21 = v19[24];
  *(a8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v22 = v19[25];
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  swift_storeEnumTagMultiPayload();
  v23 = a8 + v19[26];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = a8 + v19[27];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = *(a7 - 8);
  (*(v25 + 16))(a8, a1, a7);
  *(a8 + v19[19]) = v18;
  v26 = (a8 + v19[20]);
  v27 = a3[1];
  *v26 = *a3;
  v26[1] = v27;
  v28 = (a8 + v19[21]);
  *v28 = a4;
  v28[1] = a5;

  a6(v29);

  return (*(v25 + 8))(a1, a7);
}

__n128 sub_1C11B0914@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_1C11AFD4C(a1, a2);
  if (qword_1EDE82B78 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE82B80;
  v6 = *&qword_1EDE82B88;
  v4 = qword_1EDE82B98;

  a2->n128_u64[1] = v3;
  result = v6;
  a2[1] = v6;
  a2[2].n128_u64[0] = v4;
  return result;
}

uint64_t PhotosAlbumCell.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v237 = a2;
  v3 = a1[3];
  v247 = a1[7];
  v4 = v3;
  sub_1C12655A0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  OUTLINED_FUNCTION_6_0();
  v246 = v5;
  sub_1C1263190();
  v234 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A0);
  v6 = a1;
  v245 = a1[4];
  v7 = a1[2];
  v8 = v6;
  OUTLINED_FUNCTION_37();
  v238 = v9;
  v233 = type metadata accessor for PhotosCellBadgeView();
  v241 = sub_1C1266790();
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  v10 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_33_11();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_32_11();
  OUTLINED_FUNCTION_5_32();
  v240 = sub_1C12654C0();
  v248 = OUTLINED_FUNCTION_33_11();
  v236 = sub_1C1263C30();
  *&v249 = v8;
  v239 = v7;
  type metadata accessor for PhotosFavoriteBadge();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_32_11();
  OUTLINED_FUNCTION_5_32();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_11_0();
  v243 = v4;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_32_11();
  OUTLINED_FUNCTION_5_32();
  v11 = sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B8);
  v12 = sub_1C11B248C();
  v13 = sub_1C11B26B8();
  v14 = sub_1C11B2B94();
  v15 = v8[8];
  v294 = v12;
  v295 = v13;
  v296 = v14;
  v297 = v15;
  v16 = type metadata accessor for PhotosTitleAccessoryStack();
  OUTLINED_FUNCTION_13_0();
  v244 = v17;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_21();
  v292[0] = v11;
  v292[1] = v16;
  v292[2] = WitnessTable;
  v293 = swift_getWitnessTable();
  type metadata accessor for PhotosContentTitleCard();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93660);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_37();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96868);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_34_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  v242 = v10;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_34_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  v228 = sub_1C12655A0();
  sub_1C1263C30();
  v19 = sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v219 = v20;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_34();
  v218 = v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178);
  v23 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v225 = v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_34();
  v223 = v26;
  v241 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  OUTLINED_FUNCTION_37();
  sub_1C1263190();
  v231 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  v230 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v27 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v224 = v28;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_34();
  v222 = v30;
  OUTLINED_FUNCTION_1_11();
  v331 = swift_getWitnessTable();
  v332 = MEMORY[0x1E697EBF8];
  v329 = swift_getWitnessTable();
  v330 = v247;
  v31 = MEMORY[0x1E697F968];
  v32 = swift_getWitnessTable();
  OUTLINED_FUNCTION_18_28();
  v327 = swift_getWitnessTable();
  v328 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660);
  v33 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  v325 = v33;
  v326 = swift_getWitnessTable();
  *&v232 = v31;
  v323 = v32;
  v324 = swift_getWitnessTable();
  v221 = v19;
  v34 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  v212 = v34;
  v321 = v34;
  v322 = sub_1C10239B0(v35, qword_1EBE92178);
  v227 = v23;
  v214 = swift_getWitnessTable();
  v319 = v214;
  v320 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0);
  v36 = v320;
  v37 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v317 = v37;
  v318 = sub_1C10239B0(v38, &qword_1EBE91C40);
  v39 = v318;
  v40 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v229 = sub_1C10239B0(v41, &unk_1EBE92ED0);
  v315 = v40;
  v316 = v229;
  v226 = v27;
  v213 = swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  OUTLINED_FUNCTION_0();
  v216 = v42;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_34();
  v215 = v44;
  v240 = v45;
  v248 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v220 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_30();
  v217 = v48 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v236 = &v202 - v51;
  sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v210 = v53;
  v211 = v52;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_8();
  v209 = v54;
  sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v206 = v56;
  v207 = v55;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_8();
  v208 = v57;
  v205 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_30();
  v204 = (v59 - v60);
  MEMORY[0x1EEE9AC00](v61);
  v203 = &v202 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  OUTLINED_FUNCTION_15(v63);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_34();
  v228 = v65;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_32();
  sub_1C12655C0();
  sub_1C1263190();
  OUTLINED_FUNCTION_26();
  sub_1C1263190();
  OUTLINED_FUNCTION_29_10();
  sub_1C1263190();
  v313 = swift_getWitnessTable();
  v314 = v36;
  v311 = swift_getWitnessTable();
  v66 = v39;
  v312 = v39;
  v309 = swift_getWitnessTable();
  v67 = v229;
  v310 = v229;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v233 = type metadata accessor for PhotosDetailsPresentationSourceView();
  sub_1C1263190();
  OUTLINED_FUNCTION_26();
  sub_1C1263190();
  OUTLINED_FUNCTION_29_10();
  sub_1C1263190();
  v307 = v247;
  v308 = v36;
  v305 = swift_getWitnessTable();
  v306 = v66;
  v303 = swift_getWitnessTable();
  v304 = v67;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  sub_1C1263190();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655C0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_4_3();
  v68 = swift_getWitnessTable();
  v69 = swift_getWitnessTable();
  v301 = v68;
  v302 = v69;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  v70 = v249;
  v71 = v235;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_32();
  v72 = sub_1C12654C0();
  OUTLINED_FUNCTION_26();
  v73 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91190);
  v246 = v73;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v234 = v74;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v202 - v76;
  v247 = v78;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v233 = v79;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_34();
  v82 = v81;
  v84 = v83;
  v85 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v87 = v86;
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_30();
  v241 = v89 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v202 - v92;
  sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v243 = v95;
  v244 = v94;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_34();
  v242 = v97;
  v98 = sub_1C11B2F00(v70);
  v245 = v72;
  if (v98)
  {
    sub_1C11B2F40(v70, v77);
    v293 = v239;
    v294 = v238;
    __swift_allocate_boxed_opaque_existential_1(v292);
    OUTLINED_FUNCTION_15_1();
    (*(v99 + 16))();
    OUTLINED_FUNCTION_1_11();
    v258 = swift_getWitnessTable();
    v259 = MEMORY[0x1E697EBF8];
    v100 = swift_getWitnessTable();
    OUTLINED_FUNCTION_8_3();
    v103 = sub_1C10239B0(v101, v102);
    v256 = v100;
    v257 = v103;
    *&v232 = v93;
    v104 = v87;
    v105 = v247;
    v106 = swift_getWitnessTable();
    View.selectionStyle(for:)(v292, v105, v106);
    (*(v234 + 8))(v77, v105);
    __swift_destroy_boxed_opaque_existential_0Tm(v292);
    v107 = sub_1C100D614();
    v108 = v233;
    *&v249 = v107;
    v254 = v106;
    v255 = v107;
    v109 = swift_getWitnessTable();
    View.dropTargetStyle()(v84, v109);
    (*(v108 + 8))(v82, v84);
    v110 = sub_1C10A04F0();
    v252 = v109;
    v253 = v110;
    v111 = swift_getWitnessTable();
    v112 = v232;
    v113 = OUTLINED_FUNCTION_37_5();
    sub_1C0FDBA4C(v113, v114, v111);
    v115 = *(v104 + 8);
    v116 = OUTLINED_FUNCTION_37_5();
    v115(v116);
    sub_1C0FDBA4C(v112, v85, v111);
    OUTLINED_FUNCTION_4_3();
    v250 = swift_getWitnessTable();
    v251 = v249;
    swift_getWitnessTable();
    v117 = v242;
    OUTLINED_FUNCTION_37_5();
    sub_1C1112D68();
    v118 = OUTLINED_FUNCTION_37_5();
    v115(v118);
    (v115)(v232, v85);
    v119 = MEMORY[0x1E697EBF8];
  }

  else
  {
    v234 = v85;
    v241 = v84;
    v120 = swift_getWitnessTable();
    v121 = v228;
    View.photosTrace.getter(v70, v120);
    v122 = sub_1C1262680();
    v123 = v70;
    if (__swift_getEnumTagSinglePayload(v121, 1, v122) == 1)
    {
      sub_1C0F9E27C(v121, &qword_1EBE919B0);
      v124 = v223;
    }

    else
    {
      v233 = v122;
      v125 = v205;
      v126 = *(v205 + 16);
      v127 = v203;
      v126(v203, v71, v123);
      v128 = v204;
      v126(v204, v71, v123);
      v129 = v208;
      sub_1C1262640();
      v130 = sub_1C1262670();
      LODWORD(v231) = sub_1C1266520();
      *&v232 = v130;
      if (sub_1C1266730())
      {
        v131 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        v292[0] = v230;
        *v131 = 136446466;
        v132 = (*(v238 + 16))(v239);
        v134 = v133;
        v135 = *(v125 + 8);
        v135(v127, v249);
        v136 = sub_1C0FA0E80(v132, v134, v292);

        *(v131 + 4) = v136;
        *(v131 + 12) = 2082;
        v137 = View.photosChangedProperties.getter(v249, v120);
        v139 = v138;
        v135(v128, v249);
        v140 = sub_1C0FA0E80(v137, v139, v292);

        *(v131 + 14) = v140;
        v141 = v208;
        v142 = sub_1C1262630();
        v143 = v232;
        _os_signpost_emit_with_name_impl(&dword_1C0F96000, v232, v231, v142, "PhotosAlbumCell", "PhotosAlbumCell %{public}s %{public}s", v131, 0x16u);
        v144 = v230;
        swift_arrayDestroy();
        v123 = v249;
        MEMORY[0x1C68F1630](v144, -1, -1);
        v145 = v131;
        v121 = v228;
        MEMORY[0x1C68F1630](v145, -1, -1);

        (*(v206 + 8))(v141, v207);
      }

      else
      {

        (*(v206 + 8))(v129, v207);
        v146 = *(v125 + 8);
        v146(v128, v123);
        v146(v127, v123);
      }

      v124 = v223;
      OUTLINED_FUNCTION_15_1();
      (*(v147 + 8))(v121);
    }

    v148 = v209;
    v149 = OUTLINED_FUNCTION_38_8();
    sub_1C11AFD4C(v149, v150);
    v151 = v300;
    sub_1C11AFF68(v123, v148);
    v152 = sub_1C11B04CC(v123);
    if (v151 & 1) != 0 || (v152)
    {
      v291[0] = v298;
      v291[1] = v299;
      sub_1C1012620(v298, *(&v298 + 1), v299, *(&v299 + 1));
      sub_1C10C37D8();
      v153 = v154;
      sub_1C1001C84(*&v291[0], *(&v291[0] + 1), *&v291[1], *(&v291[1] + 1));
    }

    else
    {
      v153 = sub_1C1265170();
    }

    (*(v210 + 8))(v148, v211);
    sub_1C100C7D0(v292);
    v155 = v218;
    v156 = OUTLINED_FUNCTION_38_8();
    sub_1C11B3824(v156, v157);
    *&v291[0] = v153;
    v158 = v221;
    OUTLINED_FUNCTION_34_9();
    sub_1C100C6E8();
    sub_1C1264960();
    (*(v219 + 8))(v155, v158);
    v159 = OUTLINED_FUNCTION_38_8();
    sub_1C11AFD4C(v159, v160);
    memcpy(v287, v289, sizeof(v287));
    v161 = v124;
    sub_1C100D690(v288, v291);
    if (qword_1EDE82B00 != -1)
    {
      swift_once();
    }

    v162 = qword_1EDE82B08;
    v163 = qword_1EDE82B10;
    v232 = xmmword_1EDE82B18;
    v164 = qword_1EDE82B28;

    sub_1C100C7D0(v288);

    *&v291[0] = v162;
    *(&v291[0] + 1) = v163;
    v291[1] = v232;
    *&v291[2] = v164;
    memcpy(&v291[2] + 8, v287, 0xA8uLL);
    v165 = v222;
    v166 = v227;
    View.cellStyle(for:)(v291, v214, v222);
    memcpy(v290, v291, sizeof(v290));
    sub_1C100C7D0(v290);
    (*(v225 + 8))(v161, v166);
    v286 = 2;
    v285 = 2;
    v167 = OUTLINED_FUNCTION_38_8();
    sub_1C11AFD4C(v167, v168);
    v169 = v291[0];
    v249 = v291[1];
    v170 = *&v291[2];

    sub_1C100C7D0(v291);
    v282 = v169;
    v283 = v249;
    v284 = v170;
    v233 = v153;

    v171 = v215;
    v172 = v226;
    View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v286, v153, 0, v226, v215);

    (*(v224 + 8))(v165, v172);
    *(&v283 + 1) = v239;
    v284 = v238;
    __swift_allocate_boxed_opaque_existential_1(&v282);
    OUTLINED_FUNCTION_15_1();
    (*(v173 + 16))();
    OUTLINED_FUNCTION_4_3();
    v174 = v240;
    v175 = swift_getWitnessTable();
    v176 = v217;
    View.selectionStyle(for:)(&v282, v174, v175);
    (*(v216 + 8))(v171, v174);
    __swift_destroy_boxed_opaque_existential_0Tm(&v282);
    v177 = sub_1C100D614();
    v280 = v175;
    v281 = v177;
    OUTLINED_FUNCTION_9_4();
    v178 = v248;
    v179 = swift_getWitnessTable();
    v180 = v236;
    sub_1C0FDBA4C(v176, v178, v179);
    v181 = *(v220 + 8);
    v181(v176, v178);
    sub_1C0FDBA4C(v180, v178, v179);
    OUTLINED_FUNCTION_1_11();
    v278 = swift_getWitnessTable();
    v119 = MEMORY[0x1E697EBF8];
    v279 = MEMORY[0x1E697EBF8];
    v182 = swift_getWitnessTable();
    OUTLINED_FUNCTION_8_3();
    v185 = sub_1C10239B0(v183, v184);
    v276 = v182;
    v277 = v185;
    v274 = swift_getWitnessTable();
    v275 = v177;
    v186 = swift_getWitnessTable();
    v187 = sub_1C10A04F0();
    v272 = v186;
    v273 = v187;
    swift_getWitnessTable();
    v188 = v242;
    OUTLINED_FUNCTION_34_9();
    sub_1C1112E18();

    v181(v176, v178);
    v181(v236, v178);
    v117 = v188;
  }

  OUTLINED_FUNCTION_1_11();
  v270 = swift_getWitnessTable();
  v271 = v119;
  OUTLINED_FUNCTION_9_4();
  v189 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  v192 = sub_1C10239B0(v190, v191);
  v268 = v189;
  v269 = v192;
  v193 = swift_getWitnessTable();
  v194 = sub_1C100D614();
  v266 = v193;
  v267 = v194;
  v195 = swift_getWitnessTable();
  v196 = sub_1C10A04F0();
  v264 = v195;
  v265 = v196;
  v197 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_3();
  v262 = swift_getWitnessTable();
  v263 = v194;
  v198 = swift_getWitnessTable();
  v260 = v197;
  v261 = v198;
  OUTLINED_FUNCTION_19_0();
  v199 = v244;
  v200 = swift_getWitnessTable();
  sub_1C0FDBA4C(v117, v199, v200);
  return (*(v243 + 8))(v117, v199);
}

unint64_t sub_1C11B248C()
{
  result = qword_1EDE7BD38;
  if (!qword_1EDE7BD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A8);
    sub_1C11B2518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD38);
  }

  return result;
}

unint64_t sub_1C11B2518()
{
  result = qword_1EDE7BD90;
  if (!qword_1EDE7BD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967C0);
    sub_1C11B25D0();
    sub_1C10239B0(&qword_1EDE7BA60, &qword_1EBE91888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD90);
  }

  return result;
}

unint64_t sub_1C11B25D0()
{
  result = qword_1EDE7BE58;
  if (!qword_1EDE7BE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967C8);
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7B950, &unk_1EBE91DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE58);
  }

  return result;
}

unint64_t sub_1C11B26B8()
{
  result = qword_1EBE967D0;
  if (!qword_1EBE967D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967D8);
    sub_1C11B2780();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE967D0);
  }

  return result;
}

unint64_t sub_1C11B2780()
{
  result = qword_1EBE967E0;
  if (!qword_1EBE967E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967D8);
    sub_1C11B2838();
    sub_1C10239B0(&qword_1EDE7BA60, &qword_1EBE91888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE967E0);
  }

  return result;
}

unint64_t sub_1C11B2838()
{
  result = qword_1EBE967E8;
  if (!qword_1EBE967E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967F0);
    sub_1C11B28F0();
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE967E8);
  }

  return result;
}

unint64_t sub_1C11B28F0()
{
  result = qword_1EBE967F8;
  if (!qword_1EBE967F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96800);
    sub_1C11B2974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE967F8);
  }

  return result;
}

unint64_t sub_1C11B2974()
{
  result = qword_1EBE96808;
  if (!qword_1EBE96808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96810);
    sub_1C11B2A00();
    sub_1C11B2AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96808);
  }

  return result;
}

unint64_t sub_1C11B2A00()
{
  result = qword_1EBE96818;
  if (!qword_1EBE96818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96820);
    sub_1C11B2E94(&qword_1EDE7BEB8, &unk_1EBE96828);
    sub_1C10239B0(&qword_1EBE96830, &unk_1EBE96838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96818);
  }

  return result;
}

unint64_t sub_1C11B2AD8()
{
  result = qword_1EBE96840;
  if (!qword_1EBE96840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90878);
    sub_1C11BF2B8(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96840);
  }

  return result;
}

unint64_t sub_1C11B2B94()
{
  result = qword_1EDE77028;
  if (!qword_1EDE77028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B8);
    sub_1C11B2C4C();
    sub_1C10239B0(&unk_1EDE7B920, &unk_1EBE93130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77028);
  }

  return result;
}

unint64_t sub_1C11B2C4C()
{
  result = qword_1EDE77088;
  if (!qword_1EDE77088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96848);
    sub_1C11B2D04();
    sub_1C10239B0(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77088);
  }

  return result;
}

unint64_t sub_1C11B2D04()
{
  result = qword_1EDE77120;
  if (!qword_1EDE77120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96850);
    sub_1C11B2DBC();
    sub_1C10239B0(&qword_1EDE7B950, &unk_1EBE91DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77120);
  }

  return result;
}

unint64_t sub_1C11B2DBC()
{
  result = qword_1EDE77220;
  if (!qword_1EDE77220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96858);
    sub_1C11B2E94(&qword_1EDE773D8, &unk_1EBE96860);
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77220);
  }

  return result;
}

uint64_t sub_1C11B2E94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_41(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C11B2F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1C1263130();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v35 - v6;
  v38 = a1;
  v41 = *(a1 + 48);
  v42 = (a1 + 40);
  v49 = *(a1 + 16);
  type metadata accessor for PhotosCellBadgeView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8);
  sub_1C1263190();
  sub_1C1263190();
  v40 = *(&v49 + 1);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  v39 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  sub_1C1263190();
  v37 = MEMORY[0x1E6981880];
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0);
  v71 = WitnessTable;
  v72 = v8;
  v9 = swift_getWitnessTable();
  v10 = sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40);
  v69 = v9;
  v70 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_1C10239B0(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v67 = v11;
  v68 = v12;
  swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  v13 = v38;
  v40 = *(v38 + 56);
  v65 = v40;
  v66 = v8;
  v63 = swift_getWitnessTable();
  v64 = v10;
  v61 = swift_getWitnessTable();
  v62 = v12;
  swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  v14 = *(v13 + 32);
  v15 = v13;
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  sub_1C1263C30();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v59 = v16;
  v60 = v17;
  v18 = v48;
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A0);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v19 = sub_1C12654C0();
  v36 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = sub_1C1263190();
  v39 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v37 = &v35 - v23;
  sub_1C12638E0();
  *&v24 = v14;
  *(&v24 + 1) = *v42;
  v50 = v49;
  v51 = v24;
  v52 = v41;
  v53 = v40;
  v54 = *(v15 + 64);
  v55 = v18;
  *&v49 = v21;
  v25 = v15;
  sub_1C12654B0();
  v26 = v43;
  sub_1C11B016C(v15, v43);
  v27 = v44;
  v28 = v45;
  v29 = v46;
  (*(v45 + 104))(v44, *MEMORY[0x1E697E6E8], v46);
  sub_1C11BF2B8(&qword_1EDE7BF98, MEMORY[0x1E697E730]);
  LOBYTE(v15) = sub_1C1265D90();
  v30 = *(v28 + 8);
  v30(v27, v29);
  v30(v26, v29);
  if ((v15 & 1) == 0)
  {
    sub_1C11B0914(v25, v58);
    sub_1C100C7D0(v58);
  }

  v34 = swift_getWitnessTable();
  sub_1C10A0734();
  v31 = v37;
  v32 = v49;
  sub_1C1264EA0();
  (*(v36 + 8))(v32, v19);
  v56 = v34;
  v57 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1C100C6E8();
  sub_1C1264960();
  return (*(v39 + 8))(v31, v22);
}

uint64_t sub_1C11B3824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v146 = *(a1 + 24);
  sub_1C1263190();
  v143 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96868);
  v139 = *(a1 + 32);
  type metadata accessor for PhotosCellBadgeView();
  v141 = sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v3 = sub_1C12655A0();
  v130 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v129 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v128 = &v121 - v6;
  type metadata accessor for PhotosFavoriteBadge();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v7 = sub_1C12655C0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B8);
  v11 = sub_1C11B248C();
  v12 = sub_1C11B26B8();
  v13 = sub_1C11B2B94();
  v14 = *(a1 + 64);
  v186 = v8;
  v187 = v9;
  v188 = v10;
  v189 = v139;
  v190 = v11;
  v191 = v12;
  v192 = v13;
  v193 = v14;
  v15 = type metadata accessor for PhotosTitleAccessoryStack();
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v186 = v7;
  v187 = v15;
  v188 = WitnessTable;
  v189 = v17;
  v18 = type metadata accessor for PhotosContentTitleCard();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93660);
  v145 = v18;
  v19 = sub_1C1263190();
  v124 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v121 - v22;
  v142 = v23;
  v147 = v3;
  v24 = sub_1C1263C30();
  v131 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v125 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v132 = (&v121 - v27);
  v127 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v126 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v133 = &v121 - v31;
  v144 = *(a1 + 56);
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A0);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v32 = v146;
  v141 = sub_1C12654C0();
  v33 = sub_1C1263190();
  v34 = sub_1C1263C30();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v121 - v36;
  v143 = v33;
  v38 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v121 - v43;
  v134 = v45;
  v139 = v24;
  v46 = v135;
  v47 = sub_1C1263C30();
  v137 = *(v47 - 8);
  v138 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v121 - v48;
  v50 = v46[*(a1 + 76)];
  v51 = MEMORY[0x1E697EBF8];
  v136 = v49;
  if (v50)
  {
    v132 = v35;
    v52 = MEMORY[0x1E697EBF8];
    v121 = v37;
    if (v50 == 1)
    {
      v133 = v38;
      sub_1C11B4B9C(a1, v41);
      v154 = swift_getWitnessTable();
      v155 = v51;
      v131 = MEMORY[0x1E697E858];
      v53 = v143;
      v54 = swift_getWitnessTable();
      sub_1C0FDBA4C(v41, v53, v54);
      v135 = *(v133 + 1);
      v133 += 8;
      (v135)(v41, v53);
      sub_1C0FDBA4C(v44, v53, v54);
      v55 = v144;
      sub_1C1112D68();
      v152 = v54;
      v153 = v55;
      v56 = v134;
      v146 = swift_getWitnessTable();
      v57 = swift_getWitnessTable();
      v58 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660);
      v150 = v57;
      v151 = v58;
      v59 = swift_getWitnessTable();
      v60 = swift_getWitnessTable();
      v148 = v59;
      v149 = v60;
      swift_getWitnessTable();
      v61 = v136;
      v62 = v121;
      sub_1C1112D68();
      v132[1](v62, v56);
      v63 = v135;
      (v135)(v41, v53);
      (v63)(v44, v53);
    }

    else
    {
      v79 = *(a1 + 80);
      v80 = *&v46[*(a1 + 84)];
      v81 = *&v46[v79 + 8];
      v82 = *&v46[v79 + 16];
      v83 = *&v46[v79 + 24];
      v186 = *&v46[v79];
      v187 = v81;
      v188 = v82;
      v189 = v83;
      sub_1C11BF430(v186, v81, v82);
      v84 = v126;
      v80(&v186);
      sub_1C11BF3E4(v186, v187, v188);
      v85 = v133;
      v86 = v144;
      sub_1C0FDBA4C(v84, v32, v144);
      v135 = *(v127 + 8);
      (v135)(v84, v32);
      sub_1C0FDBA4C(v85, v32, v86);
      v162 = swift_getWitnessTable();
      v163 = v52;
      v87 = swift_getWitnessTable();
      sub_1C1112E18();
      v160 = v87;
      v161 = v86;
      v88 = v134;
      v131 = swift_getWitnessTable();
      v89 = swift_getWitnessTable();
      v90 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660);
      v158 = v89;
      v159 = v90;
      v91 = swift_getWitnessTable();
      v92 = swift_getWitnessTable();
      v156 = v91;
      v157 = v92;
      swift_getWitnessTable();
      v61 = v136;
      v93 = v121;
      sub_1C1112D68();
      v132[1](v93, v88);
      v94 = v146;
      v95 = v135;
      (v135)(v84, v146);
      (v95)(v133, v94);
    }

    v64 = v144;
  }

  else
  {
    v65 = v122;
    v66 = v123;
    v67 = v124;
    v68 = v128;
    v69 = v129;
    v70 = v130;
    if (sub_1C11B0688(a1))
    {
      sub_1C11B50B0(a1, v66);
      v71 = swift_getWitnessTable();
      v72 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660);
      v164 = v71;
      v165 = v72;
      v73 = v142;
      v74 = swift_getWitnessTable();
      sub_1C0FDBA4C(v66, v73, v74);
      v75 = *(v67 + 8);
      v75(v66, v73);
      sub_1C0FDBA4C(v65, v73, v74);
      swift_getWitnessTable();
      v76 = v132;
      sub_1C1112D68();
      v75(v66, v73);
      v75(v65, v73);
      v77 = v144;
      v78 = v76;
    }

    else
    {
      sub_1C11B5538(a1, v69);
      v96 = v147;
      v97 = swift_getWitnessTable();
      v98 = v68;
      sub_1C0FDBA4C(v69, v96, v97);
      v99 = *(v70 + 8);
      v99(v69, v96);
      sub_1C0FDBA4C(v68, v96, v97);
      v100 = swift_getWitnessTable();
      v101 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660);
      v184 = v100;
      v185 = v101;
      swift_getWitnessTable();
      v102 = v132;
      sub_1C1112E18();
      v99(v69, v96);
      v99(v98, v96);
      v77 = v144;
      v78 = v102;
    }

    v103 = swift_getWitnessTable();
    v104 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660);
    v182 = v103;
    v183 = v104;
    v105 = swift_getWitnessTable();
    v106 = swift_getWitnessTable();
    v180 = v105;
    v181 = v106;
    v107 = v139;
    v108 = swift_getWitnessTable();
    v109 = v125;
    sub_1C0FDBA4C(v78, v107, v108);
    v178 = swift_getWitnessTable();
    v179 = MEMORY[0x1E697EBF8];
    v176 = swift_getWitnessTable();
    v177 = v77;
    v110 = v77;
    swift_getWitnessTable();
    v61 = v136;
    sub_1C1112E18();
    v111 = *(v131 + 8);
    v111(v109, v107);
    v111(v132, v107);
    v64 = v110;
  }

  v174 = swift_getWitnessTable();
  v175 = MEMORY[0x1E697EBF8];
  v172 = swift_getWitnessTable();
  v173 = v64;
  v112 = swift_getWitnessTable();
  v113 = swift_getWitnessTable();
  v114 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660);
  v170 = v113;
  v171 = v114;
  v115 = swift_getWitnessTable();
  v116 = swift_getWitnessTable();
  v168 = v115;
  v169 = v116;
  v117 = swift_getWitnessTable();
  v166 = v112;
  v167 = v117;
  v118 = v138;
  v119 = swift_getWitnessTable();
  sub_1C0FDBA4C(v61, v118, v119);
  return (*(v137 + 8))(v61, v118);
}

uint64_t sub_1C11B4B9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1C1263130();
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v25 = &v20 - v6;
  v23 = a1[7];
  v24 = a1 + 5;
  v21 = a1[3];
  sub_1C12655A0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  v22 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A0);
  v7 = a1[4];
  v8 = a1[2];
  v20 = a1[6];
  type metadata accessor for PhotosCellBadgeView();
  sub_1C1266790();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v9 = sub_1C12654C0();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  sub_1C12638E0();
  *&v12 = v7;
  *(&v12 + 1) = *v24;
  *&v13 = v8;
  *(&v13 + 1) = v21;
  v30 = v13;
  v31 = v12;
  v32 = v20;
  v33 = v23;
  v34 = a1[8];
  v35 = v26;
  v24 = v11;
  sub_1C12654B0();
  v14 = v25;
  sub_1C11B016C(a1, v25);
  v16 = v27;
  v15 = v28;
  (*(v28 + 104))(v27, *MEMORY[0x1E697E6E8], v3);
  sub_1C11BF2B8(&qword_1EDE7BF98, MEMORY[0x1E697E730]);
  LOBYTE(v11) = sub_1C1265D90();
  v17 = *(v15 + 8);
  v17(v16, v3);
  v17(v14, v3);
  if ((v11 & 1) == 0)
  {
    sub_1C11AFD4C(a1, v36);
    sub_1C100C7D0(v36);
  }

  swift_getWitnessTable();
  sub_1C10A0734();
  v18 = v24;
  sub_1C1264EA0();
  return (*(v22 + 8))(v18, v9);
}

uint64_t sub_1C11B50B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v27 = *(a1 + 16);
  v26 = *(a1 + 40);
  type metadata accessor for PhotosFavoriteBadge();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v3 = sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B8);
  v4 = *(a1 + 32);
  v5 = sub_1C11B248C();
  v6 = sub_1C11B26B8();
  v7 = sub_1C11B2B94();
  v8 = *(a1 + 64);
  v42[4] = v5;
  v42[5] = v6;
  v42[6] = v7;
  v42[7] = v8;
  v42[0] = v3;
  v42[1] = type metadata accessor for PhotosTitleAccessoryStack();
  v42[2] = swift_getWitnessTable();
  v42[3] = swift_getWitnessTable();
  v9 = type metadata accessor for PhotosContentTitleCard();
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  *&v12 = v4;
  *(&v12 + 1) = v26;
  v35[1] = v27;
  v35[2] = v12;
  v36 = *(a1 + 48);
  v37 = v8;
  v38 = v28;
  v30 = v27;
  v31 = v12;
  v32 = v36;
  v33 = v8;
  v34 = v28;
  PhotosContentTitleCard.init(content:titleStack:)(sub_1C11BF4DC, v35, sub_1C11BF4F4);
  swift_getKeyPath();
  if (qword_1EDE82B50 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDE82B58;
  v14 = qword_1EDE82B60;
  v15 = unk_1EDE82B68;
  v16 = qword_1EDE82B70;
  v17 = qword_1EDE82B78;

  if (v17 != -1)
  {
    swift_once();
  }

  v39[0] = 0x402E000000000000;
  v39[1] = v13;
  v39[2] = v14;
  v39[3] = v15;
  v39[4] = v16;
  __asm { FMOV            V1.2D, #16.0 }

  *&v39[5] = _Q1;
  *&v39[7] = _Q1;
  __asm { FMOV            V1.2D, #10.0 }

  *&v39[9] = _Q1;
  *&v39[11] = _Q1;
  memset(&v39[14], 0, 40);
  v39[13] = 0x4052000000000000;
  v39[19] = 0x8000000000000000;
  LOWORD(v39[20]) = 1;
  HIWORD(v39[20]) = v41;
  *(&v39[20] + 2) = v40;
  v39[21] = 0;
  v39[22] = qword_1EDE82B80;
  *&v39[23] = *&qword_1EDE82B88;
  v39[25] = qword_1EDE82B98;

  swift_getWitnessTable();
  sub_1C1264A30();

  memcpy(v42, v39, 0xD0uLL);
  sub_1C100C7D0(v42);
  return (*(v25 + 8))(v11, v9);
}

uint64_t sub_1C11B5538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v18 = *(a1 + 24);
  v19 = (a1 + 40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96868);
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  type metadata accessor for PhotosCellBadgeView();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v6 = sub_1C12655A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  *&v13 = v3;
  *(&v13 + 1) = *v19;
  *&v14 = v4;
  *(&v14 + 1) = v18;
  v22 = v14;
  v23 = v13;
  v24 = v5;
  v25 = *(a1 + 56);
  v26 = v20;
  sub_1C10A7F5C();
  sub_1C1265590();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v9, v6, WitnessTable);
  v16 = *(v7 + 8);
  v16(v9, v6);
  sub_1C0FDBA4C(v12, v6, WitnessTable);
  return (v16)(v12, v6);
}

uint64_t sub_1C11B5878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v74 = a5;
  v75 = a8;
  v59 = a7;
  v71 = a4;
  v72 = a6;
  v69 = a9;
  v70 = a2;
  v73 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96868);
  type metadata accessor for PhotosCellBadgeView();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  v62 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v64 = sub_1C12654C0();
  v67 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v51 - v10;
  v66 = sub_1C1263190();
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v51 - v13;
  v14 = a3;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C1263190();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  v23 = sub_1C1263190();
  v24 = *(v23 - 8);
  v53 = v23;
  v54 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v76 = &v51 - v28;
  *&v89 = v70;
  *(&v89 + 1) = v14;
  *&v90 = v71;
  *(&v90 + 1) = v74;
  v29 = v59;
  v91 = v72;
  v92 = v59;
  v93 = v75;
  v56 = type metadata accessor for PhotosAlbumCell();
  v30 = *(v73 + *(v56 + 84));
  v89 = 0u;
  v90 = 0u;
  v30(&v89);
  v51 = v14;
  sub_1C12649E0();
  (*(v15 + 8))(v18, v14);
  v88[6] = v29;
  v88[7] = MEMORY[0x1E697F568];
  v31 = swift_getWitnessTable();
  sub_1C1264B60();
  (*(v20 + 8))(v22, v19);
  v32 = sub_1C10239B0(&qword_1EDE7BB68, &unk_1EBE93030);
  v88[4] = v31;
  v88[5] = v32;
  v33 = v53;
  v55 = swift_getWitnessTable();
  v52 = v26;
  sub_1C0FDBA4C(v26, v33, v55);
  v34 = v54;
  v57 = *(v54 + 8);
  v58 = v54 + 8;
  v35 = v26;
  v36 = v33;
  v57(v35, v33);
  v77 = v70;
  v78 = v51;
  v79 = v71;
  v80 = v74;
  v81 = v72;
  v82 = v29;
  v83 = v75;
  v84 = v73;
  sub_1C1012734();
  v37 = v60;
  sub_1C12654B0();
  sub_1C11AFD4C(v56, &v89);
  sub_1C100C7D0(&v89);
  v38 = v64;
  v39 = swift_getWitnessTable();
  v40 = v63;
  sub_1C1264FA0();
  (*(v67 + 8))(v37, v38);
  v88[2] = v39;
  v88[3] = MEMORY[0x1E697E5D8];
  v41 = v66;
  v42 = swift_getWitnessTable();
  v43 = v65;
  v44 = v40;
  sub_1C0FDBA4C(v40, v41, v42);
  v45 = v68;
  v46 = *(v68 + 8);
  v46(v44, v41);
  v47 = *(v34 + 16);
  v48 = v52;
  v47(v52, v76, v36);
  v88[0] = v48;
  (*(v45 + 16))(v44, v43, v41);
  v88[1] = v44;
  v87[0] = v36;
  v87[1] = v41;
  v85 = v55;
  v86 = v42;
  sub_1C119EE80(v88, 2, v87);
  v46(v43, v41);
  v49 = v57;
  v57(v76, v36);
  v46(v44, v41);
  return v49(v48, v36);
}

uint64_t sub_1C11B602C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a8;
  v48 = a7;
  v46 = a5;
  v49 = a9;
  type metadata accessor for PhotosCellBadgeView();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  v41 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1C12655A0();
  v45 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v39 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96868);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  *v21 = sub_1C1263AB0();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96908);
  v23 = a3;
  v24 = a3;
  v25 = a4;
  v26 = a4;
  v27 = v46;
  v28 = a6;
  v29 = a6;
  v30 = v48;
  v31 = v44;
  sub_1C11B64A4(a2, v24, v26, v46, v29, v48, v44, &v21[*(v22 + 44)]);
  v51 = a2;
  v52 = v23;
  v53 = v25;
  v54 = v27;
  v55 = v28;
  v56 = v30;
  v57 = v31;
  v58 = a1;
  sub_1C10A7F5C();
  v32 = v40;
  sub_1C1265590();
  v48 = swift_getWitnessTable();
  v33 = v43;
  sub_1C0FDBA4C(v32, v14, v48);
  v34 = v45;
  v35 = *(v45 + 8);
  v36 = v32;
  v35(v32, v14);
  v37 = v50;
  sub_1C0FE5654(v21, v50, &qword_1EBE96868);
  v63 = 0;
  v64 = 1;
  v65[0] = v37;
  v65[1] = &v63;
  (*(v34 + 16))(v36, v33, v14);
  v65[2] = v36;
  v62[0] = v47;
  v62[1] = MEMORY[0x1E6981840];
  v62[2] = v14;
  v59 = sub_1C10239B0(&qword_1EBE96910, &qword_1EBE96868);
  v60 = MEMORY[0x1E6981838];
  v61 = v48;
  sub_1C119EE80(v65, 3, v62);
  v35(v33, v14);
  sub_1C0F9E27C(v21, &qword_1EBE96868);
  v35(v36, v14);
  return sub_1C0F9E27C(v50, &qword_1EBE96868);
}

uint64_t sub_1C11B64A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v35 = a5;
  v36 = a6;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v37 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = sub_1C1263130();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967A8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v38 = a1;
  v39 = v32;
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v43 = v36;
  v44 = a7;
  v26 = type metadata accessor for PhotosAlbumCell();
  sub_1C11B016C(v26, v19);
  LOBYTE(a1) = sub_1C1263120();
  (*(v17 + 8))(v19, v16);
  if (a1)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  sub_1C11B67B4(v27, 0, 0, v26, v25);
  sub_1C11B6AA8(v26, v15);
  sub_1C0FE5654(v25, v22, &qword_1EBE967A8);
  sub_1C0FE5654(v15, v12, &qword_1EBE967B0);
  v28 = v37;
  sub_1C0FE5654(v22, v37, &qword_1EBE967A8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96918);
  sub_1C0FE5654(v12, v28 + *(v29 + 48), &qword_1EBE967B0);
  sub_1C0F9E27C(v15, &qword_1EBE967B0);
  sub_1C0F9E27C(v25, &qword_1EBE967A8);
  sub_1C0F9E27C(v12, &qword_1EBE967B0);
  return sub_1C0F9E27C(v22, &qword_1EBE967A8);
}

uint64_t sub_1C11B67B4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a3;
  v32 = a2;
  v33 = a1;
  v36 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CB0);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967C8);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967C0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  sub_1C11BC378(a4);
  sub_1C11BC428(a4);
  v16 = sub_1C1264870();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v38 = v16;
  v39 = v18;
  v23 = v20 & 1;
  v40 = v20 & 1;
  v41 = v22;
  v24 = v31;
  sub_1C1265090();
  sub_1C0FDB8E8(v16, v18, v23);

  KeyPath = swift_getKeyPath();
  (*(v34 + 32))(v11, v24, v35);
  v26 = &v11[*(v9 + 44)];
  *v26 = KeyPath;
  v26[8] = 0;
  LODWORD(KeyPath) = sub_1C1263E40();
  sub_1C0FE4040(v11, v15, &qword_1EBE967C8);
  *&v15[*(v13 + 44)] = KeyPath;
  if (v37)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = 1.0;
  }

  v28 = v15;
  v29 = v36;
  sub_1C0FE4040(v28, v36, &qword_1EBE967C0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967A8);
  *(v29 + *(result + 36)) = v27;
  return result;
}

uint64_t sub_1C11B6AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a3;
  v72 = a5;
  v70 = a9;
  v59 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PhotosCellBadgeView();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v61 = &v58 - v20;
  v21 = sub_1C1266790();
  v22 = *(v21 - 8);
  v64 = v21;
  v65 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v67 = &v58 - v26;
  v68 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v66 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v58 - v30;
  v78.n128_u64[0] = a2;
  v78.n128_u64[1] = v71;
  v79 = a4;
  v80 = v72;
  v63 = a6;
  v81 = a6;
  v82 = a7;
  v83 = a8;
  v32 = type metadata accessor for PhotosAlbumCell();
  v33 = a1 + *(v32 + 88);
  v71 = a4;
  v72 = v31;
  v69 = a8;
  sub_1C0FDBA4C(v33, a4, a8);
  v34 = (a1 + *(v32 + 80));
  v35 = *v34;
  if (*v34)
  {
    v36 = v17;
    v58 = v24;
    v37 = v34[2];
    v38 = v34[3];
    v39 = v34[1];
    v40 = v60;
    (*(v59 + 16))(v60, a1, a2);

    sub_1C0FCF1B4(v37);
    v41 = sub_1C11B06B8(v32);
    v42 = 196611;
    if (!v41)
    {
      v42 = 196613;
    }

    v76 = v42;
    LODWORD(v77) = 17367552;
    v78.n128_u64[0] = v35;
    v78.n128_u64[1] = v39;
    v79 = v37;
    v80 = v38;
    v24 = v58;
    v43 = v62;
    PhotosCellBadgeView.init(model:font:configuration:)(v40, &v76, &v78, a2, v62);
    WitnessTable = swift_getWitnessTable();
    v45 = v61;
    sub_1C0FDBA4C(v43, v16, WitnessTable);
    v46 = *(v36 + 8);
    v46(v43, v16);
    sub_1C0FDBA4C(v45, v16, WitnessTable);
    v46(v45, v16);
    (*(v36 + 32))(v24, v43, v16);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v16);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v16);
    swift_getWitnessTable();
  }

  v47 = v67;
  sub_1C1170030(v24, v67);
  v48 = v65;
  v49 = *(v65 + 8);
  v50 = v24;
  v51 = v24;
  v52 = v64;
  v49(v50, v64);
  v53 = v68;
  v54 = v66;
  v55 = v71;
  (*(v68 + 16))(v66, v72, v71);
  v78.n128_u64[0] = v54;
  (*(v48 + 16))(v51, v47, v52);
  v78.n128_u64[1] = v51;
  v76 = v55;
  v77 = v52;
  v74 = v69;
  v73 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  sub_1C119EE80(&v78, 2, &v76);
  v49(v47, v52);
  v56 = *(v53 + 8);
  v56(v72, v55);
  v49(v51, v52);
  return (v56)(v54, v55);
}

uint64_t sub_1C11B70AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v75 = a1;
  v76 = a8;
  v73 = a6;
  v74 = a5;
  v71 = a4;
  v72 = a2;
  v67 = a9;
  v68 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A0);
  type metadata accessor for PhotosCellBadgeView();
  sub_1C1266790();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  v57 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v60 = sub_1C12654C0();
  v65 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v50 - v10;
  v61 = sub_1C1263190();
  v66 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v50 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  v12 = sub_1C1263190();
  v13 = *(v12 - 8);
  v63 = v12;
  v64 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v50 - v16;
  v17 = a7;
  v18 = sub_1C12655A0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v50 - v20;
  v22 = sub_1C1263190();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v50 - v24;
  v26 = sub_1C1263190();
  v27 = *(v26 - 8);
  v69 = v26;
  v70 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v77 = &v50 - v31;
  v86 = v72;
  v87 = v68;
  v88 = v71;
  v89 = v74;
  v90 = v73;
  v91 = v17;
  v92 = v76;
  v93 = v75;
  v50 = v17;
  sub_1C10A7F5C();
  sub_1C1265590();
  v32 = swift_getWitnessTable();
  sub_1C12649E0();
  (*(v19 + 8))(v21, v18);
  v97[8] = v32;
  v97[9] = MEMORY[0x1E697F568];
  v33 = swift_getWitnessTable();
  sub_1C1264B60();
  (*(v23 + 8))(v25, v22);
  v51 = sub_1C10239B0(&qword_1EDE7BB68, &unk_1EBE93030);
  v97[6] = v33;
  v97[7] = v51;
  v34 = v69;
  v52 = swift_getWitnessTable();
  sub_1C0FDBA4C(v29, v34, v52);
  v53 = *(v70 + 8);
  v54 = v70 + 8;
  v53(v29, v34);
  v78 = v72;
  v79 = v68;
  v80 = v71;
  v81 = v74;
  v82 = v73;
  v83 = v50;
  v84 = v76;
  v85 = v75;
  sub_1C1012734();
  v35 = v55;
  sub_1C12654B0();
  sub_1C1265940();
  v48 = v60;
  v49 = swift_getWitnessTable();
  v36 = v58;
  sub_1C1264EA0();
  (*(v65 + 8))(v35, v48);
  v97[4] = v49;
  v97[5] = MEMORY[0x1E697EBF8];
  v37 = v61;
  v38 = swift_getWitnessTable();
  v39 = v59;
  sub_1C1264B60();
  (*(v66 + 8))(v36, v37);
  v97[2] = v38;
  v97[3] = v51;
  v40 = v63;
  v41 = swift_getWitnessTable();
  v42 = v62;
  sub_1C0FDBA4C(v39, v40, v41);
  v43 = v64;
  v44 = *(v64 + 8);
  v44(v39, v40);
  v45 = v69;
  (*(v70 + 16))(v29, v77, v69);
  v97[0] = v29;
  (*(v43 + 16))(v39, v42, v40);
  v97[1] = v39;
  v96[0] = v45;
  v96[1] = v40;
  v94 = v52;
  v95 = v41;
  sub_1C119EE80(v97, 2, v96);
  v44(v42, v40);
  v46 = v53;
  v53(v77, v45);
  v44(v39, v40);
  return v46(v29, v45);
}

uint64_t sub_1C11B7980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  *&v26 = v16;
  *(&v26 + 1) = v17;
  *&v27 = v18;
  *(&v27 + 1) = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v23 = *(a1 + *(type metadata accessor for PhotosAlbumCell() + 84));
  v26 = 0u;
  v27 = 0u;
  v23(&v26);
  sub_1C0FDBA4C(v12, a3, a7);
  v24 = *(v10 + 8);
  v24(v12, a3);
  sub_1C0FDBA4C(v15, a3, a7);
  return (v24)(v15, a3);
}

uint64_t sub_1C11B7AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v52 = a8;
  v51 = a7;
  v47 = a6;
  v49 = a5;
  v48 = a3;
  v55 = a9;
  type metadata accessor for PhotosCellBadgeView();
  sub_1C1266790();
  swift_getTupleTypeMetadata3();
  v44 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1C12655A0();
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v41 - v13;
  v14 = sub_1C1263190();
  v53 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v41 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967A0);
  MEMORY[0x1EEE9AC00](v54);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v41 - v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96870);
  sub_1C10239B0(&qword_1EBE96878, &qword_1EBE96870);
  *v21 = sub_1C1009330();
  v21[1] = v22;
  v56 = v21;
  v23 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96880) + 44);
  v24 = a1;
  v25 = a2;
  v26 = a2;
  v27 = v48;
  v28 = v49;
  v29 = v47;
  v30 = v51;
  v31 = v52;
  sub_1C11BAD14(v26, v48, a4, v49, v47, v51, v52, v23);
  v57 = v25;
  v58 = v27;
  v59 = a4;
  v60 = v28;
  v61 = v29;
  v62 = v30;
  v63 = v31;
  v64 = v24;
  sub_1C10A7F5C();
  v32 = v42;
  sub_1C1265590();
  v33 = swift_getWitnessTable();
  v34 = v41;
  sub_1C1264F90();
  (*(v50 + 8))(v32, v12);
  v71[3] = v33;
  v71[4] = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  v36 = v46;
  sub_1C0FDBA4C(v34, v14, v35);
  v37 = v53;
  v38 = *(v53 + 8);
  v38(v34, v14);
  v39 = v45;
  sub_1C0FE5654(v56, v45, &qword_1EBE967A0);
  v69 = 0;
  v70 = 1;
  v71[0] = v39;
  v71[1] = &v69;
  (*(v37 + 16))(v34, v36, v14);
  v71[2] = v34;
  v68[0] = v54;
  v68[1] = MEMORY[0x1E6981840];
  v68[2] = v14;
  v65 = sub_1C10239B0(&qword_1EBE96888, &qword_1EBE967A0);
  v66 = MEMORY[0x1E6981838];
  v67 = v35;
  sub_1C119EE80(v71, 3, v68);
  v38(v36, v14);
  sub_1C0F9E27C(v56, &qword_1EBE967A0);
  v38(v34, v14);
  return sub_1C0F9E27C(v39, &qword_1EBE967A0);
}

uint64_t sub_1C11B80B8@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  *v9 = sub_1C1263AB0();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968A8);
  sub_1C11BC6F0(v3, a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], &v9[*(v10 + 44)], a2[8]);
  if (a1)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  sub_1C0FE4040(v9, a3, &qword_1EBE968A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96890);
  *(a3 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_1C11B81EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v70 = a9;
  v71 = a5;
  v69 = a3;
  v58 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v59 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PhotosCellBadgeView();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v57 - v20;
  v63 = sub_1C1266790();
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v57 - v24;
  v68 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v66 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v57 - v28;
  v81.n128_u64[0] = a2;
  v81.n128_u64[1] = v69;
  v82 = a4;
  v83 = v71;
  v62 = a6;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v30 = type metadata accessor for PhotosAlbumCell();
  v31 = a1 + *(v30 + 88);
  v65 = v29;
  v71 = a4;
  v69 = a8;
  sub_1C0FDBA4C(v31, a4, a8);
  v32 = (a1 + *(v30 + 80));
  v33 = *v32;
  if (*v32)
  {
    v34 = v17;
    v57 = v22;
    v35 = v32[2];
    v36 = v32[3];
    v37 = v32[1];
    v38 = v59;
    (*(v58 + 16))(v59, a1, a2);

    sub_1C0FCF1B4(v35);
    v39 = sub_1C11B06B8(v30);
    v40 = 196611;
    if (!v39)
    {
      v40 = 196613;
    }

    v76 = v40;
    LODWORD(v77) = 17367552;
    v81.n128_u64[0] = v33;
    v81.n128_u64[1] = v37;
    v82 = v35;
    v83 = v36;
    v22 = v57;
    v41 = v61;
    PhotosCellBadgeView.init(model:font:configuration:)(v38, &v76, &v81, a2, v61);
    WitnessTable = swift_getWitnessTable();
    v43 = v60;
    sub_1C0FDBA4C(v41, v16, WitnessTable);
    v44 = *(v34 + 8);
    v44(v41, v16);
    sub_1C0FDBA4C(v43, v16, WitnessTable);
    v44(v43, v16);
    (*(v34 + 32))(v22, v41, v16);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v16);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v16);
    swift_getWitnessTable();
  }

  v45 = v67;
  sub_1C1170030(v22, v67);
  v46 = v64;
  v47 = *(v64 + 8);
  v48 = v22;
  v62 = v16;
  v49 = v22;
  v50 = v63;
  v47(v48, v63);
  v79 = 0;
  v80 = 1;
  v81.n128_u64[0] = &v79;
  v51 = v68;
  v52 = v66;
  v53 = v65;
  v54 = v71;
  (*(v68 + 16))(v66, v65, v71);
  v81.n128_u64[1] = v52;
  (*(v46 + 16))(v49, v45, v50);
  v82 = v49;
  v76 = MEMORY[0x1E6981840];
  v77 = v54;
  v78 = v50;
  v73 = MEMORY[0x1E6981838];
  v74 = v69;
  v72 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  sub_1C119EE80(&v81, 3, &v76);
  v47(v45, v50);
  v55 = *(v51 + 8);
  v55(v53, v54);
  v47(v49, v50);
  return (v55)(v52, v54);
}

uint64_t sub_1C11B8848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v58 = a5;
  v59 = a8;
  v61 = a4;
  v62 = a7;
  v55 = a2;
  v56 = a6;
  v60 = a3;
  v57 = a1;
  v52 = a9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967A0);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = (&v45 - v11);
  type metadata accessor for PhotosCellBadgeView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8);
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  v53 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  sub_1C1263190();
  v54 = MEMORY[0x1E6981880];
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0);
  v77[19] = WitnessTable;
  v77[20] = v13;
  v14 = MEMORY[0x1E697E858];
  v15 = swift_getWitnessTable();
  v16 = sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40);
  v77[17] = v15;
  v77[18] = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_1C10239B0(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v77[15] = v17;
  v77[16] = v18;
  v48 = v14;
  swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  v77[13] = v62;
  v77[14] = v13;
  v77[11] = swift_getWitnessTable();
  v77[12] = v16;
  v77[9] = swift_getWitnessTable();
  v77[10] = v18;
  swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  sub_1C1263C30();
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v77[7] = v19;
  v77[8] = v20;
  swift_getWitnessTable();
  v21 = sub_1C12655A0();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v45 - v23;
  v25 = sub_1C1263190();
  v46 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v45 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  v28 = sub_1C1263190();
  v47 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v45 = &v45 - v32;
  v63 = v55;
  v64 = v60;
  v65 = v61;
  v66 = v58;
  v67 = v56;
  v68 = v62;
  v69 = v59;
  v70 = v57;
  sub_1C10A7F5C();
  sub_1C1265590();
  v33 = swift_getWitnessTable();
  sub_1C12649E0();
  (*(v22 + 8))(v24, v21);
  v77[5] = v33;
  v77[6] = MEMORY[0x1E697F568];
  v34 = swift_getWitnessTable();
  sub_1C1264B60();
  (*(v46 + 8))(v27, v25);
  v35 = sub_1C10239B0(&qword_1EDE7BB68, &unk_1EBE93030);
  v77[3] = v34;
  v77[4] = v35;
  v46 = swift_getWitnessTable();
  v36 = v45;
  sub_1C0FDBA4C(v30, v28, v46);
  v37 = v47;
  v48 = *(v47 + 8);
  v48(v30, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96870);
  sub_1C10239B0(&qword_1EBE96878, &qword_1EBE96870);
  v38 = sub_1C1009330();
  v39 = v49;
  *v49 = v38;
  *(v39 + 8) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96880);
  sub_1C11BAD14(v55, v60, v61, v58, v56, v62, v59, v39 + *(v41 + 44));
  (*(v37 + 16))(v30, v36, v28);
  v77[0] = v30;
  v42 = v50;
  sub_1C0FE5654(v39, v50, &qword_1EBE967A0);
  v75 = 0;
  v76 = 0;
  v77[1] = v42;
  v77[2] = &v75;
  v74[0] = v28;
  v74[1] = v51;
  v74[2] = MEMORY[0x1E6981840];
  v71 = v46;
  v72 = sub_1C10239B0(&qword_1EBE96888, &qword_1EBE967A0);
  v73 = MEMORY[0x1E6981838];
  sub_1C119EE80(v77, 3, v74);
  sub_1C0F9E27C(v39, &qword_1EBE967A0);
  v43 = v48;
  v48(v36, v28);
  sub_1C0F9E27C(v42, &qword_1EBE967A0);
  return v43(v30, v28);
}

uint64_t sub_1C11B91B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v102 = a7;
  v103 = a8;
  v100 = a5;
  *&v101 = a6;
  v98 = a9;
  v99 = a4;
  v104 = a3;
  v93 = a2;
  v94 = a1;
  type metadata accessor for PhotosCellBadgeView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8);
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  v9 = sub_1C1265B00();
  v97 = MEMORY[0x1E6981F48];
  v84 = v9;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C12655C0();
  v91 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v77 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v12 = sub_1C1263190();
  v89 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v77 - v13;
  v92 = v10;
  v14 = swift_getWitnessTable();
  v15 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0);
  v81 = v14;
  v127 = v14;
  v128 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40);
  v125 = v16;
  v126 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1C10239B0(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v123 = v18;
  v124 = v19;
  v20 = swift_getWitnessTable();
  v90 = v12;
  v80 = v20;
  v21 = type metadata accessor for PhotosDetailsPresentationSourceView();
  v87 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v77 - v24;
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  v25 = v102;
  v121 = v102;
  v122 = v15;
  v119 = swift_getWitnessTable();
  v120 = v17;
  v117 = swift_getWitnessTable();
  v118 = v19;
  swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView();
  v26 = v99;
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v78 = swift_getWitnessTable();
  v27 = sub_1C12655C0();
  v79 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v77 - v31;
  v97 = v21;
  v33 = sub_1C1263C30();
  v95 = *(v33 - 8);
  v96 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v77 - v34;
  v36 = v93;
  v114[0].n128_u64[0] = v93;
  v114[0].n128_u64[1] = v104;
  v114[1] = __PAIR128__(v100, v26);
  v114[2].n128_u64[0] = v101;
  v114[2].n128_u64[1] = v25;
  v114[3].n128_u64[0] = v103;
  v37 = type metadata accessor for PhotosAlbumCell();
  v38 = v94;
  v39 = (v94 + *(v37 + 80));
  v40 = *v39;
  if (*v39)
  {
    v41 = v37;
    v78 = v35;
    v79 = v27;
    v42 = v39[1];
    v43 = v39[2];
    v44 = v39[3];

    sub_1C0FCF1B4(v43);
    v45 = sub_1C1265960();
    MEMORY[0x1EEE9AC00](v45);
    v46 = v104;
    *(&v77 - 12) = v36;
    *(&v77 - 11) = v46;
    v47 = v100;
    *(&v77 - 10) = v99;
    *(&v77 - 9) = v47;
    v49 = v102;
    v48 = v103;
    *(&v77 - 8) = v101;
    *(&v77 - 7) = v49;
    *(&v77 - 6) = v48;
    *(&v77 - 5) = v38;
    *(&v77 - 4) = v40;
    *(&v77 - 3) = v42;
    v103 = v43;
    v104 = v42;
    *(&v77 - 2) = v43;
    *(&v77 - 1) = v44;
    v102 = v44;
    v50 = v83;
    sub_1C12655B0();
    sub_1C11B0914(v41, v111);
    memcpy(v110, v112, sizeof(v110));
    sub_1C100D690(v111, v114);
    if (qword_1EDE82B00 != -1)
    {
      swift_once();
    }

    v51 = qword_1EDE82B08;
    v52 = qword_1EDE82B10;
    v101 = xmmword_1EDE82B18;
    v53 = qword_1EDE82B28;

    sub_1C100C7D0(v111);

    v114[0].n128_u64[0] = v51;
    v114[0].n128_u64[1] = v52;
    v114[1] = v101;
    v114[2].n128_u64[0] = v53;
    memcpy(&v114[2].n128_i8[8], v110, 0xA8uLL);
    v54 = v88;
    v55 = v92;
    View.cellStyle(for:)(v114, v81, v88);
    memcpy(v113, v114, sizeof(v113));
    sub_1C100C7D0(v113);
    (*(v91 + 8))(v50, v55);
    v109 = 2;
    v108 = 2;
    sub_1C11B0914(v41, v114);
    v56 = v114[0];
    v101 = v114[1];
    v57 = v114[2].n128_u64[0];

    sub_1C100C7D0(v114);
    v105 = v56;
    v106 = v101;
    v107 = v57;
    v58 = v86;
    v59 = v90;
    View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v109, 0, 0, v90, v86);

    (*(v89 + 8))(v54, v59);
    v60 = v97;
    v61 = swift_getWitnessTable();
    v62 = v85;
    sub_1C0FDBA4C(v58, v60, v61);
    v63 = *(v87 + 8);
    v63(v58, v60);
    sub_1C0FDBA4C(v62, v60, v61);
    swift_getWitnessTable();
    v64 = v78;
    sub_1C1112D68();
    sub_1C11BF3E4(v40, v104, v103);
    v63(v58, v60);
    v63(v62, v60);
  }

  else
  {
    v65 = sub_1C1265970();
    MEMORY[0x1EEE9AC00](v65);
    v66 = v104;
    *(&v77 - 8) = v36;
    *(&v77 - 7) = v66;
    v67 = v100;
    *(&v77 - 6) = v99;
    *(&v77 - 5) = v67;
    v69 = v102;
    v68 = v103;
    *(&v77 - 4) = v101;
    *(&v77 - 3) = v69;
    *(&v77 - 2) = v68;
    *(&v77 - 1) = v38;
    sub_1C12655B0();
    v70 = swift_getWitnessTable();
    sub_1C0FDBA4C(v29, v27, v70);
    v71 = *(v79 + 8);
    v71(v29, v27);
    sub_1C0FDBA4C(v32, v27, v70);
    swift_getWitnessTable();
    sub_1C1112E18();
    v71(v29, v27);
    v71(v32, v27);
    v64 = v35;
  }

  v72 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v115 = v72;
  v116 = v73;
  v74 = v96;
  v75 = swift_getWitnessTable();
  sub_1C0FDBA4C(v64, v74, v75);
  return (*(v95 + 8))(v64, v74);
}

uint64_t sub_1C11B9D6C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t (*a8)(char *, unint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v75 = a8;
  v74 = a5;
  v72 = a4;
  v71.n128_u64[1] = a3;
  v71.n128_u64[0] = a2;
  v60 = a1;
  v79 = a9;
  v69 = a13;
  v80 = a12;
  v68 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a11;
  v67 = type metadata accessor for PhotosCellBadgeView();
  v76 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v59 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8);
  v70 = sub_1C1263190();
  v77 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v59 - v17;
  v18 = sub_1C1263190();
  v78 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v59 - v22;
  v62 = *(a7 - 8);
  v23 = v62;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v66 = &v59 - v28;
  v92.n128_u64[0] = a6;
  v92.n128_u64[1] = a7;
  *&v93 = v75;
  *(&v93 + 1) = a10;
  v29 = v80;
  v94 = a11;
  v95 = v80;
  v96 = v69;
  v30 = type metadata accessor for PhotosAlbumCell();
  v31 = v60;
  v32 = *(v60 + *(v30 + 84));
  v92 = 0u;
  v93 = 0u;
  v32(&v92);
  v61 = a7;
  sub_1C0FDBA4C(v26, a7, v29);
  v33 = *(v23 + 8);
  v69 = v23 + 8;
  v75 = v33;
  v33(v26, a7);
  sub_1C1265B90();
  v35 = v34;
  v37 = v36;
  sub_1C1265B80();
  v39 = v38;
  v41 = v40;
  v42 = v64;
  (*(v68 + 16))(v64, v31, a6);
  v85 = 196614;
  LODWORD(v86) = 17367552;
  v92 = v71;
  v43 = v72;
  *&v93 = v72;
  *(&v93 + 1) = v74;
  v44 = v63;
  PhotosCellBadgeView.init(model:font:configuration:)(v42, &v85, &v92, a6, v63);

  sub_1C0FCF1B4(v43);
  v92.n128_u64[0] = sub_1C1265190();
  v45 = v67;
  WitnessTable = swift_getWitnessTable();
  v47 = v65;
  sub_1C1264BE0();

  (*(v76 + 8))(v44, v45);
  v48 = sub_1C10239B0(&qword_1EDE7BA50, &qword_1EBE904B8);
  v90 = WitnessTable;
  v91 = v48;
  v49 = v70;
  v50 = swift_getWitnessTable();
  sub_1C1264F90();
  (*(v77 + 8))(v47, v49);
  v88 = v50;
  v89 = MEMORY[0x1E697E5D8];
  v51 = swift_getWitnessTable();
  v52 = v73;
  sub_1C0FDBA4C(v20, v18, v51);
  v53 = v78;
  v54 = *(v78 + 8);
  v54(v20, v18);
  v55 = v66;
  v56 = v61;
  (*(v62 + 16))(v26, v66, v61);
  v92.n128_u64[0] = v35;
  v92.n128_u64[1] = v37;
  *&v93 = v39;
  *(&v93 + 1) = v41;
  v94 = 0x3FE6666666666666;
  LOBYTE(v95) = 0;
  v85 = v26;
  v86 = &v92;
  (*(v53 + 16))(v20, v52, v18);
  v87 = v20;
  v84[0] = v56;
  v84[1] = &type metadata for PhotosLegibilityGradient;
  v84[2] = v18;
  v81 = v80;
  v82 = sub_1C10B8F84();
  v83 = v51;
  sub_1C119EE80(&v85, 3, v84);
  v54(v52, v18);
  v57 = v75;
  v75(v55, v56);
  v54(v20, v18);
  return v57(v26, v56);
}

uint64_t sub_1C11BA534@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v70 = a8;
  v55 = a5;
  v56.n128_u64[0] = a6;
  v63 = a2;
  v67 = a9;
  v68 = sub_1C1263190();
  v64 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = v53 - v15;
  v61.n128_u64[0] = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v54 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v18 = sub_1C1263190();
  v59 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v58 = v53 - v19;
  v20 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0);
  v82 = a7;
  v83 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40);
  v80 = WitnessTable;
  v81 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C10239B0(&qword_1EDE7BC60, &unk_1EBE92ED0);
  v78 = v23;
  v79 = v24;
  v53[1] = swift_getWitnessTable();
  v62 = type metadata accessor for PhotosDetailsPresentationSourceView();
  v57 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v69 = v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v71 = v53 - v27;
  v87[0].n128_u64[0] = v63;
  v60 = a3;
  v87[0].n128_u64[1] = a3;
  v63 = a4;
  v87[1].n128_u64[0] = a4;
  v87[1].n128_u64[1] = v55;
  v87[2].n128_u64[0] = v56.n128_u64[0];
  v28 = a7;
  v87[2].n128_u64[1] = a7;
  v87[3].n128_u64[0] = v70;
  v29 = type metadata accessor for PhotosAlbumCell();
  v30 = *(a1 + *(v29 + 84));
  memset(v87, 0, 32);
  v31 = v54;
  v30(v87);
  sub_1C11B0914(v29, v84);
  memcpy(v77, v85, sizeof(v77));
  sub_1C100D690(v84, v87);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDE82B08;
  v33 = qword_1EDE82B10;
  v56 = xmmword_1EDE82B18;
  v34 = qword_1EDE82B28;

  sub_1C100C7D0(v84);

  v87[0].n128_u64[0] = v32;
  v87[0].n128_u64[1] = v33;
  v87[1] = v56;
  v87[2].n128_u64[0] = v34;
  memcpy(&v87[2].n128_i8[8], v77, 0xA8uLL);
  v35 = v58;
  v36 = v60;
  View.cellStyle(for:)(v87, v28, v58);
  memcpy(v86, v87, sizeof(v86));
  sub_1C100C7D0(v86);
  (*(v61.n128_u64[0] + 8))(v31, v36);
  LOBYTE(v74[0]) = 2;
  LOBYTE(v72) = 2;
  sub_1C11B0914(v29, v87);
  v37 = v87[0];
  v61 = v87[1];
  v38 = v87[2].n128_u64[0];

  sub_1C100C7D0(v87);
  v75[0] = v37;
  v75[1] = v61;
  v76 = v38;
  v39 = v69;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(v74, 0, 0, v18, v69);

  (*(v59 + 8))(v35, v18);
  v40 = v62;
  v59 = swift_getWitnessTable();
  sub_1C0FDBA4C(v39, v40, v59);
  v41 = v57;
  v42 = *(v57 + 8);
  v60 = v57 + 8;
  v61.n128_u64[0] = v42;
  v42(v39, v40);
  v43 = v66;
  v44 = v70;
  sub_1C1264ED0();
  v74[2] = v44;
  v74[3] = MEMORY[0x1E697E270];
  v45 = v68;
  v70 = swift_getWitnessTable();
  v46 = v65;
  sub_1C0FDBA4C(v43, v45, v70);
  v47 = v64;
  v48 = *(v64 + 8);
  v48(v43, v45);
  v49 = v69;
  (*(v41 + 16))(v69, v71, v40);
  *&v75[0] = v49;
  v50 = v49;
  (*(v47 + 16))(v43, v46, v45);
  *(&v75[0] + 1) = v43;
  v74[0] = v40;
  v74[1] = v45;
  v72 = v59;
  v73 = v70;
  sub_1C119EE80(v75, 2, v74);
  v48(v46, v45);
  v51 = v61.n128_u64[0];
  (v61.n128_u64[0])(v71, v40);
  v48(v43, v45);
  return v51(v50, v40);
}

uint64_t sub_1C11BAD14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v32 = a6;
  v33 = a7;
  v30 = a4;
  v31 = a5;
  v34 = a8;
  v11 = OUTLINED_FUNCTION_42_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v11);
  v13 = OUTLINED_FUNCTION_15(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v41 = v33;
  v26 = type metadata accessor for PhotosAlbumCell();
  sub_1C11B80B8(1, v26, v25);
  sub_1C11B80B8(0, v26, v22);
  OUTLINED_FUNCTION_41_7(v25, v19);
  OUTLINED_FUNCTION_41_7(v22, v16);
  v27 = v34;
  OUTLINED_FUNCTION_41_7(v19, v34);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96898);
  OUTLINED_FUNCTION_41_7(v16, v27 + *(v28 + 48));
  OUTLINED_FUNCTION_40_7(v22);
  OUTLINED_FUNCTION_40_7(v25);
  OUTLINED_FUNCTION_40_7(v16);
  return OUTLINED_FUNCTION_40_7(v19);
}

uint64_t sub_1C11BAED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25[0] = a8;
  v25[1] = a1;
  v25[2] = a9;
  type metadata accessor for PhotosFavoriteBadge();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v15 = sub_1C12655C0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v25 - v20;
  v25[3] = a2;
  v25[4] = a3;
  v25[5] = a4;
  v25[6] = a5;
  v25[7] = a6;
  v25[8] = a7;
  v25[9] = v25[0];
  type metadata accessor for PhotosAlbumCell();
  sub_1C11BB134();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v18, v15, WitnessTable);
  v23 = *(v16 + 8);
  v23(v18, v15);
  sub_1C0FDBA4C(v21, v15, WitnessTable);
  return (v23)(v21, v15);
}

uint64_t sub_1C11BB134()
{
  sub_1C1265960();
  type metadata accessor for PhotosFavoriteBadge();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  return sub_1C12655B0();
}

uint64_t sub_1C11BB29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v85 = a7;
  v84 = a6;
  v83 = a5;
  v86 = a2;
  v89 = a1;
  v75 = a9;
  v100 = a2;
  v101 = a3;
  v76 = a3;
  v102 = a4;
  v103 = a5;
  v104 = a6;
  v105 = a7;
  v106 = a8;
  v81 = a8;
  v64 = type metadata accessor for PhotosAlbumCell();
  v12 = *(v64 - 8);
  v82 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v88 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v63 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A8);
  v71 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B0);
  v70 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B8);
  v69 = v21;
  v22 = sub_1C11B248C();
  v68 = v22;
  v23 = sub_1C11B26B8();
  v67 = v23;
  v65 = sub_1C11B2B94();
  v100 = v19;
  v101 = v20;
  v102 = v21;
  v103 = a4;
  v24 = a4;
  v77 = a4;
  v104 = v22;
  v105 = v23;
  v106 = v65;
  v107 = a8;
  v73 = type metadata accessor for PhotosTitleAccessoryStack();
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v66 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v72 = &v63 - v28;
  LOBYTE(v100) = 0;
  v29 = v12;
  v90 = v12;
  v30 = v12 + 16;
  v31 = *(v12 + 16);
  v80 = v30;
  v32 = v18;
  v33 = v89;
  v34 = v64;
  v31(v32, v89, v64, v27);
  v35 = v31;
  v79 = *(v29 + 80);
  v36 = (v79 + 72) & ~v79;
  v37 = swift_allocObject();
  v38 = v86;
  *(v37 + 2) = v86;
  *(v37 + 3) = a3;
  v39 = v83;
  *(v37 + 4) = v24;
  *(v37 + 5) = v39;
  v40 = v84;
  v41 = v85;
  *(v37 + 6) = v84;
  *(v37 + 7) = v41;
  *(v37 + 8) = v81;
  v42 = *(v90 + 32);
  v90 += 32;
  v78 = v42;
  v42(&v37[v36], v63, v34);
  v35(v87, v33, v34);
  v43 = swift_allocObject();
  v44 = v76;
  *(v43 + 2) = v38;
  *(v43 + 3) = v44;
  v45 = v77;
  *(v43 + 4) = v77;
  *(v43 + 5) = v39;
  *(v43 + 6) = v40;
  *(v43 + 7) = v41;
  v46 = v81;
  *(v43 + 8) = v81;
  v47 = v34;
  v78(&v43[v36], v87, v34);
  v35(v88, v89, v34);
  v48 = swift_allocObject();
  v49 = v86;
  *(v48 + 2) = v86;
  *(v48 + 3) = v44;
  *(v48 + 4) = v45;
  v50 = v83;
  v51 = v84;
  *(v48 + 5) = v83;
  *(v48 + 6) = v51;
  v52 = v85;
  *(v48 + 7) = v85;
  *(v48 + 8) = v46;
  v78(&v48[v36], v88, v47);
  v92 = v49;
  v93 = v76;
  v94 = v77;
  v95 = v50;
  v96 = v51;
  v97 = v52;
  v98 = v46;
  v99 = v89;
  *(&v62 + 1) = v46;
  *&v62 = v65;
  *(&v61 + 1) = v67;
  *(&v60 + 1) = v77;
  *&v61 = v68;
  *&v60 = v69;
  *(&v59 + 1) = v70;
  *&v59 = v71;
  v53 = v66;
  PhotosTitleAccessoryStack.init(alignment:title:subtitle:combinedTitleAndSubtitle:accessory:useCombinedTitlesIfNeeded:)(&v100, sub_1C11BF50C, sub_1C11BF5E0, sub_1C11BF978, sub_1C11BF990, v66, v91, 1, v59, v60, v61, v62);
  v54 = v73;
  WitnessTable = swift_getWitnessTable();
  v56 = v72;
  sub_1C0FDBA4C(v53, v54, WitnessTable);
  v57 = *(v74 + 8);
  v57(v53, v54);
  sub_1C0FDBA4C(v56, v54, WitnessTable);
  return (v57)(v56, v54);
}

uint64_t sub_1C11BB9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v81 = sub_1C1264680();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v77 = &v65 - v5;
  v78 = sub_1C1264700();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = a1;
  v93 = sub_1C11BC378(a1);
  v94 = v8;
  sub_1C0FDB9AC();
  v9 = sub_1C12648F0();
  v11 = v10;
  v13 = v12;
  LODWORD(v93) = sub_1C1263E40();
  v14 = sub_1C1264850();
  v90 = v15;
  v91 = v14;
  v89 = v16;
  v92 = v17;
  sub_1C0FDB8E8(v9, v11, v13 & 1);

  sub_1C12639A0();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDE7E630;
  v19 = sub_1C12648D0();
  v82 = v20;
  v83 = v19;
  v22 = v21;
  v24 = v23;
  sub_1C12639A0();
  v86 = sub_1C12648D0();
  v87 = v25;
  v88 = v26;
  v85 = v27;
  v93 = sub_1C11BC3BC(v84);
  v94 = v28;
  v29 = sub_1C12648F0();
  v31 = v30;
  v33 = v32;
  LODWORD(v93) = sub_1C1263E50();
  v84 = sub_1C1264850();
  v69 = v34;
  v70 = v35;
  v71 = v36;
  sub_1C0FDB8E8(v29, v31, v33 & 1);

  sub_1C1263980();
  sub_1C1263970();
  sub_1C1263940();
  sub_1C1263970();
  v72 = v22;
  v73 = v24;
  sub_1C1263940();
  sub_1C1263970();
  sub_1C1263940();
  sub_1C1263970();
  sub_1C1263940();
  sub_1C1263970();
  sub_1C1263940();
  sub_1C1263970();
  sub_1C12639B0();
  v37 = sub_1C12648D0();
  v68 = v37;
  v39 = v38;
  v67 = v38;
  LOBYTE(v31) = v40;
  v42 = v41;
  v43 = v76;
  v44 = v75;
  v45 = v78;
  (*(v76 + 104))(v75, *MEMORY[0x1E6980EF0], v78);
  v46 = *MEMORY[0x1E6980E20];
  v47 = sub_1C1264590();
  v48 = v77;
  (*(*(v47 - 8) + 104))(v77, v46, v47);
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v47);
  LOBYTE(v31) = v31 & 1;
  sub_1C0FDB850(v37, v39, v31);
  v66 = v42;

  sub_1C1264610();
  sub_1C1264640();
  sub_1C0F9E27C(v48, &qword_1EBE96550);
  (*(v43 + 8))(v44, v45);
  v49 = v80;
  v50 = v79;
  v51 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x1E6980EA8], v81);
  v78 = sub_1C12646C0();

  sub_1C0FDB8E8(v84, v69, v70 & 1);

  sub_1C0FDB8E8(v91, v90, v89 & 1);

  sub_1C0FDB8E8(v83, v82, v72 & 1);

  sub_1C0FDB8E8(v86, v87, v88 & 1);

  v52 = v68;
  v53 = v67;
  sub_1C0FDB8E8(v68, v67, v31);

  (*(v49 + 8))(v50, v51);
  KeyPath = swift_getKeyPath();
  LOBYTE(v93) = v31;
  v55 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  LOBYTE(v93) = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967B8);
  v58 = v74;
  v59 = (v74 + *(v57 + 36));
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130) + 28);
  v61 = *MEMORY[0x1E6980FB0];
  v62 = sub_1C1264830();
  (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
  result = swift_getKeyPath();
  *v59 = result;
  *v58 = v52;
  *(v58 + 8) = v53;
  *(v58 + 16) = v31;
  *(v58 + 24) = v66;
  *(v58 + 32) = 256;
  v64 = v78;
  *(v58 + 40) = KeyPath;
  *(v58 + 48) = v64;
  *(v58 + 56) = v55;
  *(v58 + 64) = 0;
  *(v58 + 72) = v56;
  *(v58 + 80) = 2;
  *(v58 + 88) = 0;
  return result;
}

uint64_t sub_1C11BC268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = v14;
  v23[2] = v15;
  v23[3] = v16;
  v23[4] = v17;
  v23[5] = v18;
  v23[6] = v19;
  v23[7] = v20;
  v21 = type metadata accessor for PhotosAlbumCell();
  sub_1C0FDBA4C(a1 + *(v21 + 88), a4, a8);
  sub_1C0FDBA4C(v13, a4, a8);
  return (*(v11 + 8))(v13, a4);
}

uint64_t sub_1C11BC378(uint64_t a1)
{
  result = (*(*(*(a1 + 40) + 8) + 40))(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C11BC3BC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 16));
  if (v1)
  {
    return 0;
  }

  sub_1C100DC5C();
  return sub_1C12667D0();
}

uint64_t sub_1C11BC428(uint64_t a1)
{
  v2 = sub_1C1264680();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1C1264700();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C11B06B8(a1);
  v14 = MEMORY[0x1E6980F10];
  if (!v13)
  {
    v14 = MEMORY[0x1E6980EF0];
  }

  (*(v10 + 104))(v12, *v14, v9);
  v15 = *MEMORY[0x1E6980E20];
  v16 = sub_1C1264590();
  (*(*(v16 - 8) + 104))(v8, v15, v16);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
  sub_1C1264610();
  sub_1C1264640();
  sub_1C0F9E27C(v8, &qword_1EBE96550);
  (*(v10 + 8))(v12, v9);
  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
  v17 = sub_1C12646C0();

  (*(v3 + 8))(v5, v2);
  return v17;
}

uint64_t sub_1C11BC6F0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v47 = a7;
  v46 = a6;
  v45 = a5;
  v44 = a4;
  v48 = a1;
  v53 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v50 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968B0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v43 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967A8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v43 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968B8);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  v49 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v43 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v43 - v33;
  v55[0] = a3;
  v55[1] = v44;
  v55[2] = v45;
  v55[3] = v46;
  v55[4] = v47;
  v55[5] = a8;
  v55[6] = a10;
  v35 = type metadata accessor for PhotosAlbumCell();
  sub_1C11B67B4(0, 1, a2, v35, v25);
  sub_1C1265940();
  sub_1C1263390();
  sub_1C0FE4040(v25, v31, &qword_1EBE967A8);
  memcpy(&v31[*(v27 + 44)], __src, 0x70uLL);
  sub_1C0FE4040(v31, v34, &qword_1EBE968B8);
  v36 = v50;
  sub_1C11BCBD4(a2, v35, v50);
  sub_1C1265940();
  sub_1C1263390();
  sub_1C0FE4040(v36, v20, &qword_1EBE967B0);
  memcpy(&v20[*(v16 + 44)], v55, 0x70uLL);
  v37 = v51;
  sub_1C0FE4040(v20, v51, &qword_1EBE968B0);
  v38 = v49;
  sub_1C0FE5654(v34, v49, &qword_1EBE968B8);
  v39 = v52;
  sub_1C0FE5654(v37, v52, &qword_1EBE968B0);
  v40 = v53;
  sub_1C0FE5654(v38, v53, &qword_1EBE968B8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968C0);
  sub_1C0FE5654(v39, v40 + *(v41 + 48), &qword_1EBE968B0);
  sub_1C0F9E27C(v37, &qword_1EBE968B0);
  sub_1C0F9E27C(v34, &qword_1EBE968B8);
  sub_1C0F9E27C(v39, &qword_1EBE968B0);
  return sub_1C0F9E27C(v38, &qword_1EBE968B8);
}

uint64_t sub_1C11BCBD4@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967D8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968C8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  sub_1C11BD39C(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], v8, a2[8]);
  v13 = sub_1C11BDD44(a2);
  KeyPath = swift_getKeyPath();
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967F0) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  *&v8[*(v6 + 36)] = sub_1C1263E50();
  sub_1C11B2780();
  sub_1C1265090();
  sub_1C0F9E27C(v8, &qword_1EBE967D8);
  if (a1)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  (*(v10 + 32))(a3, v12, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967B0);
  *(a3 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_1C11BCDEC(uint64_t a1)
{
  v2 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C1263980();
  sub_1C1263970();
  if (qword_1EDE833C0 != -1)
  {
    swift_once();
  }

  *&v10 = 0xD000000000000014;
  *(&v10 + 1) = 0x80000001C126D380;
  v11 = 262912;
  v12 = 0;
  v13 = 65280;

  sub_1C12192C4(&v10);

  sub_1C12652F0();
  sub_1C1263950();

  sub_1C1263970();
  sub_1C11BD010(a1);
  sub_1C1263960();

  sub_1C1263970();
  sub_1C12639B0();
  v3 = sub_1C12648D0();
  v5 = v4;
  *&v10 = v3;
  *(&v10 + 1) = v4;
  v7 = v6 & 1;
  LOBYTE(v11) = v6 & 1;
  v12 = v8;
  sub_1C1264DF0();
  sub_1C0FDB8E8(v3, v5, v7);
}

uint64_t sub_1C11BD010(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 16);
  if (((*(v1 + 40))(v2, v1) & 1) == 0)
  {
    return 0;
  }

  v3 = (*(v1 + 24))(v2, v1);
  result = 0;
  if ((v5 & 1) == 0 && v3 >= 1)
  {
    sub_1C100DC5C();
    return sub_1C12667D0();
  }

  return result;
}

uint64_t sub_1C11BD0C4(uint64_t a1)
{
  v2 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C1263980();
  sub_1C1263970();
  if (qword_1EDE833C0 != -1)
  {
    swift_once();
  }

  v10 = xmmword_1C12C1500;
  v11 = 262912;
  v12 = 0;
  v13 = 65280;

  sub_1C12192C4(&v10);

  sub_1C12652F0();
  sub_1C1263950();

  sub_1C1263970();
  sub_1C11BD2E8(a1);
  sub_1C1263960();

  sub_1C1263970();
  sub_1C12639B0();
  v3 = sub_1C12648D0();
  v5 = v4;
  *&v10 = v3;
  *(&v10 + 1) = v4;
  v7 = v6 & 1;
  LOBYTE(v11) = v6 & 1;
  v12 = v8;
  sub_1C1264DF0();
  sub_1C0FDB8E8(v3, v5, v7);
}

uint64_t sub_1C11BD2E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 16);
  if (((*(v1 + 40))(v2, v1) & 1) == 0)
  {
    return 0;
  }

  v3 = (*(v1 + 32))(v2, v1);
  result = 0;
  if ((v5 & 1) == 0 && v3 >= 1)
  {
    sub_1C100DC5C();
    return sub_1C12667D0();
  }

  return result;
}

uint64_t sub_1C11BD39C@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v58 = a7;
  v61 = a4;
  v62 = a6;
  v53 = a1;
  v60 = a8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90878);
  MEMORY[0x1EEE9AC00](v59);
  v13 = v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968D0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v51 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96838);
  MEMORY[0x1EEE9AC00](v57);
  v18 = v51 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968D8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = (v51 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96820);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v56 = v51 - v22;
  if ((*(a5 + 40))(a2, a5, v21))
  {
    v51[1] = v14;
    v52 = a9;
    v51[0] = v20;
    v23 = v58;
    if ((v53 & 1) == 0)
    {
      goto LABEL_9;
    }

    v63 = a2;
    v64 = a3;
    v65 = v61;
    v66 = a5;
    v67 = v62;
    v68 = v58;
    v69 = v52;
    v24 = type metadata accessor for PhotosAlbumCell();
    v25 = sub_1C11BD010(v24);
    v27 = v26;

    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      goto LABEL_9;
    }

    v29 = sub_1C11BD2E8(v24);
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968E0);
      sub_1C10239B0(&qword_1EBE968E8, &qword_1EBE968E0);
      *v18 = sub_1C1012734();
      *(v18 + 1) = 0;
      v18[16] = 1;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968F0);
      sub_1C11BDA30(a2, a3, v61, a5, v62, v23, v52, &v18[*(v33 + 44)]);
      sub_1C0FE5654(v18, v55, &qword_1EBE96838);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96828);
      sub_1C11B2E94(&qword_1EDE7BEB8, &qword_1EBE96828);
      sub_1C10239B0(&qword_1EBE96830, &qword_1EBE96838);
      v34 = v56;
      sub_1C1263C20();
      sub_1C0F9E27C(v18, &qword_1EBE96838);
    }

    else
    {
      sub_1C12639A0();
      v46 = sub_1C12648D0();
      v47 = v55;
      *v55 = v46;
      v47[1] = v48;
      *(v47 + 16) = v49 & 1;
      v47[3] = v50;
      v47[4] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96828);
      sub_1C11B2E94(&qword_1EDE7BEB8, &qword_1EBE96828);
      sub_1C10239B0(&qword_1EBE96830, &qword_1EBE96838);
      v34 = v56;
      sub_1C1263C20();
    }

    v35 = &qword_1EBE96820;
    sub_1C0FE5654(v34, v16, &qword_1EBE96820);
    swift_storeEnumTagMultiPayload();
    sub_1C11B2A00();
    sub_1C11B2AD8();
    sub_1C1263C20();
    v36 = v34;
  }

  else
  {
    v63 = a2;
    v64 = a3;
    v65 = v61;
    v66 = a5;
    v67 = v62;
    v68 = v58;
    v69 = a9;
    v37 = type metadata accessor for PhotosAlbumCell();
    v63 = sub_1C11BC3BC(v37);
    v64 = v38;
    sub_1C0FDB9AC();
    v39 = sub_1C12648F0();
    v41 = v40;
    v63 = v39;
    v64 = v40;
    v43 = v42 & 1;
    LOBYTE(v65) = v42 & 1;
    v66 = v44;
    sub_1C1264DF0();
    sub_1C0FDB8E8(v39, v41, v43);

    v35 = &qword_1EBE90878;
    sub_1C0FE5654(v13, v16, &qword_1EBE90878);
    swift_storeEnumTagMultiPayload();
    sub_1C11B2A00();
    sub_1C11B2AD8();
    sub_1C1263C20();
    v36 = v13;
  }

  return sub_1C0F9E27C(v36, v35);
}

uint64_t sub_1C11BDA30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v43 = a5;
  v44 = a6;
  v42 = a4;
  v46 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90878);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968F8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v45 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v42 - v24;
  v47 = a1;
  v48 = a2;
  v49 = a3;
  v50 = v42;
  v51 = v43;
  v52 = v44;
  v53 = a7;
  v26 = type metadata accessor for PhotosAlbumCell();
  v27 = sub_1C11BD010(v26);
  v29 = v28;

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    sub_1C11BCDEC(v26);
    sub_1C11BF318(v14, v25);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = 1;
  v33 = v12;
  __swift_storeEnumTagSinglePayload(v25, v31, 1, v12);
  v34 = sub_1C11BD2E8(v26);
  v36 = v35;

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    sub_1C11BD0C4(v26);
    sub_1C11BF318(v14, v22);
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v32, 1, v33);
  sub_1C0FE5654(v25, v19, &qword_1EBE968F8);
  v38 = v45;
  sub_1C0FE5654(v22, v45, &qword_1EBE968F8);
  v39 = v46;
  sub_1C0FE5654(v19, v46, &qword_1EBE968F8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96900);
  sub_1C0FE5654(v38, v39 + *(v40 + 48), &qword_1EBE968F8);
  sub_1C0F9E27C(v22, &qword_1EBE968F8);
  sub_1C0F9E27C(v25, &qword_1EBE968F8);
  sub_1C0F9E27C(v38, &qword_1EBE968F8);
  return sub_1C0F9E27C(v19, &qword_1EBE968F8);
}

uint64_t sub_1C11BDD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v72 = a8;
  v73 = a6;
  v63 = a1;
  v71 = a9;
  v64 = *(*(a5 + 8) + 8);
  type metadata accessor for PhotosFavoriteBadge();
  swift_getTupleTypeMetadata2();
  v56 = sub_1C1265B00();
  v54[1] = swift_getWitnessTable();
  v14 = sub_1C12655A0();
  v58 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v55 = v54 - v15;
  v75 = v16;
  v17 = sub_1C1263190();
  v62 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v61 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v57 = v54 - v20;
  v65 = sub_1C1266790();
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v70 = v54 - v24;
  v25 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v54 - v30;
  *&v84 = a2;
  *(&v84 + 1) = a3;
  v59 = a4;
  *&v85 = a4;
  *(&v85 + 1) = a5;
  v60 = a5;
  v86 = v73;
  v87 = a7;
  v88 = v72;
  v32 = type metadata accessor for PhotosAlbumCell();
  v33 = v63;
  v34 = *(v63 + *(v32 + 84));
  v84 = 0u;
  v85 = 0u;
  v34(&v84);
  v74 = v31;
  v35 = a3;
  sub_1C0FDBA4C(v28, a3, a7);
  v66 = v25;
  v36 = *(v25 + 8);
  v69 = v25 + 8;
  v68 = v36;
  v36(v28, a3);
  v37 = (*(v64 + 8))(a2);
  if (v37)
  {
    MEMORY[0x1EEE9AC00](v37);
    v54[-8] = a2;
    v54[-7] = a3;
    v38 = v60;
    v54[-6] = v59;
    v54[-5] = v38;
    v54[-4] = v73;
    v54[-3] = a7;
    v54[0] = a7;
    v54[-2] = v72;
    v54[-1] = v33;
    sub_1C10A7F5C();
    v39 = v55;
    sub_1C1265590();
    v40 = v75;
    WitnessTable = swift_getWitnessTable();
    v42 = v61;
    sub_1C1264F90();
    (*(v58 + 8))(v39, v40);
    v76 = WitnessTable;
    v77 = MEMORY[0x1E697E5D8];
    v43 = swift_getWitnessTable();
    v44 = v57;
    sub_1C0FDBA4C(v42, v17, v43);
    v45 = v62;
    v46 = *(v62 + 8);
    v46(v42, v17);
    sub_1C0FDBA4C(v44, v17, v43);
    v46(v44, v17);
    (*(v45 + 32))(v22, v42, v17);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v17);
    v47 = v54[0];
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v17);
    v83[2] = swift_getWitnessTable();
    v83[3] = MEMORY[0x1E697E5D8];
    swift_getWitnessTable();
    v47 = a7;
  }

  v48 = v70;
  sub_1C1170030(v22, v70);
  v49 = v67;
  v50 = *(v67 + 8);
  v51 = v65;
  v50(v22, v65);
  (*(v66 + 16))(v28, v74, v35);
  *&v84 = v28;
  (*(v49 + 16))(v22, v48, v51);
  *(&v84 + 1) = v22;
  v83[0] = v35;
  v83[1] = v51;
  v81 = v47;
  v79 = swift_getWitnessTable();
  v80 = MEMORY[0x1E697E5D8];
  v78 = swift_getWitnessTable();
  v82 = swift_getWitnessTable();
  sub_1C119EE80(&v84, 2, v83);
  v50(v48, v51);
  v52 = v68;
  v68(v74, v35);
  v50(v22, v51);
  return v52(v28, v35);
}

uint64_t sub_1C11BE5A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotosFavoriteBadge();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - v13;
  (*(v4 + 16))(v6, a1, a2, v12);
  v15 = sub_1C110DB44();
  PhotosFavoriteBadge.init(_:tint:)(v15, v10);
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v10, v7, WitnessTable);
  v17 = *(v8 + 8);
  v17(v10, v7);
  v21 = 0;
  v22 = 1;
  v23[0] = &v21;
  (*(v8 + 16))(v10, v14, v7);
  v23[1] = v10;
  v20[0] = MEMORY[0x1E6981840];
  v20[1] = v7;
  v19[0] = MEMORY[0x1E6981838];
  v19[1] = WitnessTable;
  sub_1C119EE80(v23, 2, v20);
  v17(v14, v7);
  return (v17)(v10, v7);
}

unint64_t sub_1C11BE898()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v2 = type metadata accessor for PhotosAlbumCell.TitleAndContentLayoutStyle();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      type metadata accessor for PhotosCellBadgeConfiguration();
      v0 = sub_1C1266790();
      if (v4 <= 0x3F)
      {
        v0 = sub_1C1007F88();
        if (v5 <= 0x3F)
        {
          v0 = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            sub_1C100D318(319, &qword_1EDE77600);
            v0 = v7;
            if (v8 <= 0x3F)
            {
              sub_1C108B164(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
              v0 = v9;
              if (v10 <= 0x3F)
              {
                sub_1C108B164(319, &qword_1EDE77578, MEMORY[0x1E697E730]);
                v0 = v11;
                if (v12 <= 0x3F)
                {
                  sub_1C100D318(319, &qword_1EDE77640);
                  v0 = v13;
                  if (v14 <= 0x3F)
                  {
                    sub_1C100D318(319, &qword_1EDE77540);
                    v0 = v15;
                    if (v16 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return v0;
}

uint64_t sub_1C11BEAC0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v4 = *(v32 - 8);
  v5 = *(v4 + 84);
  v31 = *(a3 + 32);
  v6 = *(v31 - 8);
  v30 = *(v6 + 84);
  if (v5 <= v30)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v33 = *(sub_1C12629F0() - 8);
  v9 = *(v33 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v34 = v9;
  v10 = *(sub_1C1263130() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v4 + 64);
  v13 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v14 = v13 + 16;
  result = a1;
  if (v8 >= a2)
  {
LABEL_37:
    if (v5 == v8)
    {
      v25 = v5;
      v26 = v32;
    }

    else
    {
      v27 = (((&a1[v12] & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) == 0)
      {
        v28 = *v27;
        if (v28 >= 0xFFFFFFFF)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }

      result = (v27 + v14) & ~v13;
      v25 = v30;
      v26 = v31;
    }

    return __swift_getEnumTagSinglePayload(result, v25, v26);
  }

  v16 = *(v33 + 80) & 0xF8 | 7;
  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = ((v11 + ((v34 + v17 + ((v16 + ((*(v6 + 64) + ((v14 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v16) + 1) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 <= 3)
  {
    v19 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  switch(v21)
  {
    case 1:
      v22 = a1[v18];
      if (!a1[v18])
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    case 2:
      v22 = *&a1[v18];
      if (!*&a1[v18])
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    case 3:
      __break(1u);
      return result;
    case 4:
      v22 = *&a1[v18];
      if (!v22)
      {
        goto LABEL_37;
      }

LABEL_30:
      v23 = v18 > 3;
      if (v18 <= 3)
      {
        v24 = (v22 - 1) << (8 * v18);
      }

      else
      {
        v24 = 0;
      }

      if (v23)
      {
        v29 = *a1;
      }

      else
      {
        v29 = *a1;
      }

      result = v8 + (v29 | v24) + 1;
      break;
    default:
      goto LABEL_37;
  }

  return result;
}
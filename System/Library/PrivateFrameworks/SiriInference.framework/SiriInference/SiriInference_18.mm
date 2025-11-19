uint64_t sub_1DD4CD524(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDBE8, &qword_1DD653C98);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v34 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4CF3C4();
  sub_1DD640EF8();
  v14 = *v3;
  v15 = v3[1];
  v36 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    OUTLINED_FUNCTION_0_90(1);
    sub_1DD640C18();
    v36 = *(v3 + 32);
    v35 = 2;
    sub_1DD4CAE60();
    OUTLINED_FUNCTION_11_32();
    sub_1DD640C68();
    v18 = v3[5];
    v36 = 3;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C48();
    v19 = v3[6];
    v36 = 4;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C48();
    v36 = *(v3 + 56);
    v35 = 5;
    sub_1DD4CF514();
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C68();
    v20 = v3[8];
    v21 = *(v3 + 72);
    OUTLINED_FUNCTION_0_90(6);
    sub_1DD640BF8();
    v22 = v3[10];
    v23 = *(v3 + 88);
    OUTLINED_FUNCTION_0_90(7);
    sub_1DD640BF8();
    v36 = *(v3 + 89);
    v35 = 8;
    sub_1DD4CF568();
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C08();
    v24 = v3[12];
    v25 = *(v3 + 104);
    OUTLINED_FUNCTION_0_90(9);
    sub_1DD640BF8();
    v26 = v3[14];
    v27 = *(v3 + 120);
    OUTLINED_FUNCTION_0_90(10);
    sub_1DD640BF8();
    v28 = v3[16];
    v29 = *(v3 + 136);
    OUTLINED_FUNCTION_0_90(11);
    sub_1DD640BF8();
    v30 = v3[18];
    v31 = v3[19];
    OUTLINED_FUNCTION_0_90(12);
    sub_1DD640BC8();
    v36 = *(v3 + 160);
    v35 = 13;
    OUTLINED_FUNCTION_11_32();
    sub_1DD640C08();
    v36 = *(v3 + 161);
    v35 = 14;
    sub_1DD4CF5BC();
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C08();
    v32 = *(v3 + 162);
    v36 = 15;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640BD8();
  }

  return (*(v8 + 8))(v12, v5);
}

void *sub_1DD4CD870@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDBC0, &qword_1DD653C90);
  v5 = OUTLINED_FUNCTION_0(v83);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4CF3C4();
  sub_1DD640ED8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v36 = a2;
    OUTLINED_FUNCTION_6_44();
    v35 = sub_1DD640B28();
    v38 = v9;
    OUTLINED_FUNCTION_1_68(1);
    v34 = sub_1DD640B28();
    v37 = v10;
    sub_1DD4CAE0C();
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_6_44();
    sub_1DD640B78();
    OUTLINED_FUNCTION_1_68(3);
    v33 = sub_1DD640B58();
    OUTLINED_FUNCTION_1_68(4);
    v32 = sub_1DD640B58();
    sub_1DD4CF418();
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_6_44();
    sub_1DD640B78();
    OUTLINED_FUNCTION_1_68(6);
    v31 = sub_1DD640B08();
    v80 = v11 & 1;
    OUTLINED_FUNCTION_1_68(7);
    v30 = sub_1DD640B08();
    v78 = v12 & 1;
    sub_1DD4CF46C();
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_6_44();
    sub_1DD640B18();
    OUTLINED_FUNCTION_1_68(9);
    v13 = sub_1DD640B08();
    v75 = v14 & 1;
    OUTLINED_FUNCTION_6_44();
    v15 = sub_1DD640B08();
    v73 = v16 & 1;
    OUTLINED_FUNCTION_6_44();
    v29 = sub_1DD640B08();
    v71 = v17 & 1;
    LOBYTE(v40[0]) = 12;
    OUTLINED_FUNCTION_6_44();
    v28 = sub_1DD640AD8();
    v19 = v18;
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_6_44();
    sub_1DD640B18();
    LOBYTE(v39[0]) = 14;
    sub_1DD4CF4C0();
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_6_44();
    sub_1DD640B18();
    v69 = 15;
    OUTLINED_FUNCTION_6_44();
    v27 = sub_1DD640AE8();
    v20 = OUTLINED_FUNCTION_8_38();
    v21(v20);
    v39[0] = v35;
    v39[1] = v38;
    v39[2] = v34;
    v39[3] = v37;
    LOBYTE(v39[4]) = 0;
    v39[5] = v33;
    v39[6] = v32;
    LOBYTE(v39[7]) = 0;
    *(&v39[7] + 1) = *v81;
    HIDWORD(v39[7]) = *&v81[3];
    v39[8] = v31;
    LODWORD(v83) = v80;
    LOBYTE(v39[9]) = v80;
    *(&v39[9] + 1) = *v79;
    HIDWORD(v39[9]) = *&v79[3];
    v39[10] = v30;
    v26 = v78;
    LOWORD(v39[11]) = v78;
    *(&v39[11] + 2) = v76;
    HIWORD(v39[11]) = v77;
    v39[12] = v13;
    v25 = v75;
    LOBYTE(v39[13]) = v75;
    *(&v39[13] + 1) = *v74;
    HIDWORD(v39[13]) = *&v74[3];
    v39[14] = v15;
    v24 = v73;
    LOBYTE(v39[15]) = v73;
    HIDWORD(v39[15]) = *&v72[3];
    *(&v39[15] + 1) = *v72;
    v39[16] = v29;
    v23 = v71;
    LOBYTE(v39[17]) = v71;
    HIDWORD(v39[17]) = *&v70[3];
    *(&v39[17] + 1) = *v70;
    v39[18] = v28;
    v39[19] = v19;
    LOWORD(v39[20]) = 3084;
    BYTE2(v39[20]) = v27;
    sub_1DD4CA79C(v39, v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40[0] = v35;
    v40[1] = v38;
    v40[2] = v34;
    v40[3] = v37;
    v41 = 0;
    *v42 = v82[0];
    *&v42[3] = *(v82 + 3);
    v43 = v33;
    v44 = v32;
    v45 = 0;
    *v46 = *v81;
    *&v46[3] = *&v81[3];
    v47 = v31;
    v48 = v83;
    *&v49[3] = *&v79[3];
    *v49 = *v79;
    v50 = v30;
    v51 = v26;
    v52 = 0;
    v53 = v76;
    v54 = v77;
    v55 = v13;
    v56 = v25;
    *v57 = *v74;
    *&v57[3] = *&v74[3];
    v58 = v15;
    v59 = v24;
    *&v60[3] = *&v72[3];
    *v60 = *v72;
    v61 = v29;
    v62 = v23;
    *&v63[3] = *&v70[3];
    *v63 = *v70;
    v64 = v28;
    v65 = v19;
    v66 = 12;
    v67 = 12;
    v68 = v27;
    sub_1DD4CA7F8(v40);
    return memcpy(v36, v39, 0xA3uLL);
  }
}

uint64_t sub_1DD4CDF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4CCEC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4CDFA0(uint64_t a1)
{
  v2 = sub_1DD4CF3C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4CDFDC(uint64_t a1)
{
  v2 = sub_1DD4CF3C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DD4CE018@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DD4CD870(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xA3uLL);
  }

  return result;
}

uint64_t sub_1DD4CE080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t i)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  v11 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 96) = v11;
  *(inited + 104) = &off_1F58C4E78;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  v12 = sub_1DD4CC2EC(i);
  *(inited + 136) = v11;
  *(inited + 144) = &off_1F58C4E78;
  *(inited + 112) = v12;
  *(inited + 120) = v13;

  v14 = sub_1DD4061B8(0xD00000000000004CLL, 0x80000001DD66E2C0, inited);
  if (v25)
  {
    swift_setDeallocating();
    sub_1DD46CB4C();
  }

  else
  {
    v16 = v14;
    swift_setDeallocating();
    sub_1DD46CB4C();
    sub_1DD58B560(v16);
    for (i = MEMORY[0x1E69E7CC0]; ; memcpy((i + 168 * v20 + 32), __src, 0xA3uLL))
    {
      sub_1DD5D2E58();
      v18 = v17;
      if (!v17)
      {
        break;
      }

      sub_1DD4CE2DC(v19, v18, __src);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = *(i + 16);
        sub_1DD3C032C();
        i = v22;
      }

      v20 = *(i + 16);
      if (v20 >= *(i + 24) >> 1)
      {
        sub_1DD3C032C();
        i = v23;
      }

      *(i + 16) = v20 + 1;
    }
  }

  return i;
}

uint64_t sub_1DD4CE2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1DD4CE934(0x796164696C6F68, 0xE700000000000000, a1, a2);
  if (!v3)
  {
    v9 = v8;
    if (!v8)
    {
      sub_1DD4CF1AC();
      swift_allocError();
      v14 = xmmword_1DD653AE0;
LABEL_5:
      *v13 = v14;
      *(v13 + 16) = 0;
      *(v13 + 24) = 3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = sub_1DD4CE934(0x7972746E756F63, 0xE700000000000000, a1, a2);
    v15 = v12;
    if (!v12)
    {
      sub_1DD4CF1AC();
      swift_allocError();
      *v18 = xmmword_1DD653AD0;
      *(v18 + 16) = 0;
      *(v18 + 24) = 3;
      swift_willThrow();
    }

    v16 = v11;
    v17 = sub_1DD4CECB8(0x7261646E656C6163, 0xE800000000000000, a1, a2);
    v19 = v17;
    if (v17 == 12)
    {

      sub_1DD4CF1AC();
      swift_allocError();
      v14 = xmmword_1DD653AC0;
      goto LABEL_5;
    }

    v20 = sub_1DD4CEA5C(1918985593, 0xE400000000000000, a1, a2);
    if (v21)
    {

      sub_1DD4CF1AC();
      swift_allocError();
      v14 = xmmword_1DD653AB0;
      goto LABEL_5;
    }

    v49 = v20;
    v22 = sub_1DD4CEA5C(0x6E6572727563636FLL, 0xEA00000000006563, a1, a2);
    if (v23)
    {

      sub_1DD4CF1AC();
      swift_allocError();
      v14 = xmmword_1DD653AA0;
      goto LABEL_5;
    }

    v48 = v22;
    v50 = sub_1DD4CEF20(1701869940, 0xE400000000000000, a1, a2);
    if (v50 == 4)
    {

      sub_1DD4CF1AC();
      swift_allocError();
      v14 = xmmword_1DD653A90;
      goto LABEL_5;
    }

    v47 = sub_1DD4CEA5C(0x68746E6F6DLL, 0xE500000000000000, a1, a2);
    v46 = v24;
    v45 = sub_1DD4CEA5C(7954788, 0xE300000000000000, a1, a2);
    v44 = v25;
    v43 = sub_1DD4CEB84(0x656577666F796164, 0xE90000000000006BLL, a1, a2);
    v42 = sub_1DD4CEA5C(0x6E6964726F796164, 0xEA00000000006C61, a1, a2);
    v41 = v26;
    v40 = sub_1DD4CEA5C(0x74657366666FLL, 0xE600000000000000, a1, a2);
    v39 = v27;
    v38 = sub_1DD4CEA5C(0x6E6F697461727564, 0xE800000000000000, a1, a2);
    v37 = v28;
    v35 = sub_1DD4CE934(0x65766974616C6572, 0xEA00000000006F74, a1, a2);
    v36 = v29;
    v34 = sub_1DD4CECB8(0xD000000000000010, 0x80000001DD66E310, a1, a2);
    v33 = sub_1DD4CEDEC(0x646576726573626FLL, 0xE800000000000000, a1, a2);
    result = sub_1DD4CE934(0x676E697472617473, 0xE800000000000000, a1, a2);
    if (v30)
    {
      if (result == 0x676E696E657665 && v30 == 0xE700000000000000)
      {
        v32 = 1;
      }

      else
      {
        v32 = sub_1DD640CD8();
      }
    }

    else
    {
      v32 = 0;
    }

    *a3 = v10;
    *(a3 + 8) = v9;
    *(a3 + 16) = v16;
    *(a3 + 24) = v15;
    *(a3 + 32) = v19;
    *(a3 + 40) = v49;
    *(a3 + 48) = v48;
    *(a3 + 56) = v50;
    *(a3 + 64) = v47;
    *(a3 + 72) = v46 & 1;
    *(a3 + 80) = v45;
    *(a3 + 88) = v44 & 1;
    *(a3 + 89) = v43;
    *(a3 + 96) = v42;
    *(a3 + 104) = v41 & 1;
    *(a3 + 112) = v40;
    *(a3 + 120) = v39 & 1;
    *(a3 + 128) = v38;
    *(a3 + 136) = v37 & 1;
    *(a3 + 144) = v35;
    *(a3 + 152) = v36;
    *(a3 + 160) = v34;
    *(a3 + 161) = v33;
    *(a3 + 162) = v32 & 1;
  }

  return result;
}

unint64_t sub_1DD4CE934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v8)
  {

    v10 = sub_1DD59402C(v9);
    sub_1DD4CF1AC();
    OUTLINED_FUNCTION_4_42();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v10;
    *(v11 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(a4 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v14, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if ((swift_dynamicCast() & 1) != 0 && v13)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DD4CEA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v8)
  {

    v10 = sub_1DD59402C(v9);
    sub_1DD4CF1AC();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v10;
    *(v11 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(a4 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v13, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DD4CEB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v8)
  {

    v10 = sub_1DD59402C(v9);
    sub_1DD4CF1AC();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v10;
    *(v11 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(a4 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v13, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if (swift_dynamicCast())
  {
    result = sub_1DD4C61F8(v12);
    if (result != 7)
    {
      return result;
    }

    __break(1u);
  }

  return 7;
}

unint64_t sub_1DD4CECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v8)
  {

    v10 = sub_1DD59402C(v9);
    sub_1DD4CF1AC();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v10;
    *(v11 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(a4 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v12, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if (swift_dynamicCast())
  {
    result = sub_1DD4CC41C();
    if (result != 12)
    {
      return result;
    }

    __break(1u);
  }

  return 12;
}

unint64_t sub_1DD4CEDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v8)
  {

    v10 = sub_1DD59402C(v9);
    sub_1DD4CF1AC();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v10;
    *(v11 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(a4 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v12, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if (swift_dynamicCast())
  {
    result = sub_1DD4CBF64();
    if (result != 2)
    {
      return result;
    }

    __break(1u);
  }

  return 2;
}

unint64_t sub_1DD4CEF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v8)
  {

    v10 = sub_1DD59402C(v9);
    sub_1DD4CF1AC();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v10;
    *(v11 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(a4 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v12, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if (swift_dynamicCast())
  {
    result = sub_1DD4CC8F8();
    if (result != 4)
    {
      return result;
    }

    __break(1u);
  }

  return 4;
}

unint64_t sub_1DD4CF054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v10)
  {

    v12 = sub_1DD59402C(v11);
    sub_1DD4CF1AC();
    OUTLINED_FUNCTION_4_42();
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = v12;
    *(v13 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(a4 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v17, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if (swift_dynamicCast())
  {
    sub_1DD63D008();
    v14 = sub_1DD63D078();
    v15 = a5;
    v16 = 0;
  }

  else
  {
    v14 = sub_1DD63D078();
    v15 = a5;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
}

unint64_t sub_1DD4CF1AC()
{
  result = qword_1EE1632E0;
  if (!qword_1EE1632E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1632E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference15HolidaysDBErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DD4CF238(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 49))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_1DD4CF278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD4CF2CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1DD4CF308(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 163))
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

uint64_t sub_1DD4CF348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 162) = 0;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 163) = 1;
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

    *(result + 163) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD4CF3C4()
{
  result = qword_1ECCDDBC8;
  if (!qword_1ECCDDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBC8);
  }

  return result;
}

unint64_t sub_1DD4CF418()
{
  result = qword_1ECCDDBD0;
  if (!qword_1ECCDDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBD0);
  }

  return result;
}

unint64_t sub_1DD4CF46C()
{
  result = qword_1ECCDDBD8;
  if (!qword_1ECCDDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBD8);
  }

  return result;
}

unint64_t sub_1DD4CF4C0()
{
  result = qword_1ECCDDBE0;
  if (!qword_1ECCDDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBE0);
  }

  return result;
}

unint64_t sub_1DD4CF514()
{
  result = qword_1ECCDDBF0;
  if (!qword_1ECCDDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBF0);
  }

  return result;
}

unint64_t sub_1DD4CF568()
{
  result = qword_1ECCDDBF8;
  if (!qword_1ECCDDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBF8);
  }

  return result;
}

unint64_t sub_1DD4CF5BC()
{
  result = qword_1ECCDDC00;
  if (!qword_1ECCDDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HolidaysDBRow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD4CF6EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DD4CF7C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DD4CF89C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DD4CF974(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4CFA4C()
{
  result = qword_1ECCDDC08;
  if (!qword_1ECCDDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC08);
  }

  return result;
}

unint64_t sub_1DD4CFAAC()
{
  result = qword_1ECCDDC10;
  if (!qword_1ECCDDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC10);
  }

  return result;
}

unint64_t sub_1DD4CFB00()
{
  result = qword_1ECCDDC18;
  if (!qword_1ECCDDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC18);
  }

  return result;
}

unint64_t sub_1DD4CFB54()
{
  result = qword_1ECCDDC20;
  if (!qword_1ECCDDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC20);
  }

  return result;
}

unint64_t sub_1DD4CFBAC()
{
  result = qword_1ECCDDC28;
  if (!qword_1ECCDDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC28);
  }

  return result;
}

unint64_t sub_1DD4CFC04()
{
  result = qword_1ECCDDC30;
  if (!qword_1ECCDDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC30);
  }

  return result;
}

unint64_t sub_1DD4CFC5C()
{
  result = qword_1ECCDDC38;
  if (!qword_1ECCDDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC38);
  }

  return result;
}

unint64_t sub_1DD4CFCB0()
{
  result = qword_1ECCDDC40;
  if (!qword_1ECCDDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC40);
  }

  return result;
}

unint64_t sub_1DD4CFD04()
{
  result = qword_1ECCDDC48;
  if (!qword_1ECCDDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC48);
  }

  return result;
}

unint64_t sub_1DD4CFD58()
{
  result = qword_1ECCDDC50;
  if (!qword_1ECCDDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC50);
  }

  return result;
}

unint64_t sub_1DD4CFDAC()
{
  result = qword_1ECCDDC58;
  if (!qword_1ECCDDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC58);
  }

  return result;
}

void sub_1DD4CFE8C(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1DD58716C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_1DD4D3414(v4);
  *a1 = v2;
}

uint64_t sub_1DD4CFF04(char a1, uint64_t a2)
{
  v5 = dispatch_semaphore_create(1);
  *(v2 + 16) = a1;
  *(v2 + 24) = v5;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_1DD4CFF44()
{
  v1 = v0;
  v2 = *(v0 + 24);

  v3 = v2;
  sub_1DD6404F8();
  sub_1DD4CFFC0(v1, &v5);
  sub_1DD640508();

  return v5;
}

uint64_t sub_1DD4CFFC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1DD63CE68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v29[-v9];
  v11 = *(a1 + 32);
  if (v11)
  {
    *a2 = v11;
  }

  else
  {
    sub_1DD4D02D4(*(a1 + 16), &v29[-v9]);
    if (v2)
    {
      if (qword_1EE1632D8 != -1)
      {
        swift_once();
      }

      v16 = sub_1DD63F9F8();
      __swift_project_value_buffer(v16, qword_1EE16EFE0);
      v17 = v2;
      v18 = sub_1DD63F9D8();
      v19 = sub_1DD640378();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = v31;
        *v20 = 136315138;
        swift_getErrorValue();
        v30 = v19;
        v21 = sub_1DD640D88();
        v23 = a2;
        v24 = sub_1DD39565C(v21, v22, &v32);

        *(v20 + 4) = v24;
        a2 = v23;
        _os_log_impl(&dword_1DD38D000, v18, v30, "Caught error while trying to open holidays database: %s", v20, 0xCu);
        v25 = v31;
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1E12B3DA0](v25, -1, -1);
        MEMORY[0x1E12B3DA0](v20, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v31 = a2;
      v12 = sub_1DD63CDD8();
      v14 = v13;
      v15 = *(a1 + 16);
      type metadata accessor for Connection();
      swift_allocObject();
      v26 = sub_1DD4055EC(v12, v14, v15);
      (*(v6 + 8))(v10, v5);
      v27 = *(a1 + 32);
      *(a1 + 32) = v26;

      a2 = v31;
    }

    *a2 = *(a1 + 32);
  }
}

uint64_t sub_1DD4D02D4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v19 = sub_1DD63F9C8();
  v2 = OUTLINED_FUNCTION_0(v19);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v10 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD643F90;
  v12 = sub_1DD6408F8();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1DD392BD8();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  OUTLINED_FUNCTION_9_37();
  sub_1DD63F998();

  if (qword_1EE162910 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE162918;
  sub_1DD6404F8();
  sub_1DD4D0518(a1 & 1, a2);
  sub_1DD640508();

  sub_1DD6404C8();
  sub_1DD63F9A8();
  return (*(v4 + 8))(v9, v19);
}

uint64_t sub_1DD4D0518@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v5 = sub_1DD63CE68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  result = sub_1DD6282D8();
  if (!v2)
  {
    v17[9] = a1;
    v18 = a2;
    v14 = [objc_opt_self() defaultManager];
    sub_1DD63CE58();
    v15 = sub_1DD63FDA8();

    v16 = [v14 fileExistsAtPath_];

    if ((v16 & 1) == 0)
    {
      sub_1DD4D1138();
      sub_1DD4D0C88(v9, v12);
      (*(v6 + 8))(v9, v5);
    }

    return (*(v6 + 32))(v18, v12, v5);
  }

  return result;
}

uint64_t sub_1DD4D0964(uint64_t a1)
{
  v41 = sub_1DD63D078();
  v1 = OUTLINED_FUNCTION_0(v41);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v40 = sub_1DD63D2D8();
  v9 = OUTLINED_FUNCTION_0(v40);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v39 = sub_1DD63CBB8();
  v17 = OUTLINED_FUNCTION_0(v39);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  sub_1DD63D288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v25 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0(v25);
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DD643F90;
  (*(v27 + 104))(v31 + v30, *MEMORY[0x1E6969A00], v25);
  sub_1DD56BDEC();
  v32 = [objc_opt_self() now];
  sub_1DD63D048();

  sub_1DD63D1F8();

  (*(v3 + 8))(v8, v41);
  (*(v11 + 8))(v16, v40);
  sub_1DD63C968();
  LOBYTE(v27) = v33;
  result = (*(v19 + 8))(v24, v39);
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v35 = sub_1DD640CB8();
    v37 = v36;

    MEMORY[0x1E12B2260](v35, v37);

    return a1;
  }

  return result;
}

uint64_t sub_1DD4D0C88(uint64_t a1, void *a2)
{
  v19 = sub_1DD63F9C8();
  v2 = OUTLINED_FUNCTION_0(v19);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v10 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD643F90;
  v12 = sub_1DD6408F8();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1DD392BD8();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  OUTLINED_FUNCTION_9_37();
  sub_1DD63F998();

  sub_1DD4D0E74(v17, a1, a2);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  return (*(v4 + 8))(v9, v19);
}

void sub_1DD4D0E74(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v22 - v7;
  v9 = sub_1DD63CE68();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD4D0964(0xD000000000000011);
  sub_1DD6282D8();
  if (!v3)
  {
    sub_1DD628448();
    v22[1] = a3;
    v22[0] = objc_opt_self();
    v14 = [v22[0] defaultManager];
    v15 = sub_1DD63CE08();
    v16 = sub_1DD63CE08();
    v23[0] = 0;
    v17 = [v14 copyItemAtURL:v15 toURL:v16 error:v23];

    if (v17)
    {
      v18 = v23[0];
      v19 = [v22[0] defaultManager];
      sub_1DD640348();

      sub_1DD3ADFD0(v8, &qword_1ECCDBF78, &unk_1DD644440);
    }

    else
    {
      v20 = v23[0];
      sub_1DD63CD98();

      swift_willThrow();
    }

    (*(v10 + 8))(v13, v9);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1DD4D1138()
{
  v1 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1DD63C6B4(0x73796164696C6F68, 0xE800000000000000, 0x336574696C7173, 0xE700000000000000, v3);
  if (v4)
  {
    v5 = v4;
    sub_1DD63CE48();
  }

  else
  {
    type metadata accessor for HolidaysDBHolidayResolverError();
    sub_1DD4D33BC();
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_12_28(v6, 0x80000001DD66E5B0);
    swift_willThrow();
  }
}

dispatch_semaphore_t sub_1DD4D124C()
{
  result = dispatch_semaphore_create(1);
  qword_1EE162918 = result;
  return result;
}

uint64_t HolidaysDatabase.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t HolidaysDatabase.__deallocating_deinit()
{
  HolidaysDatabase.deinit();
  OUTLINED_FUNCTION_10_1();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4D1304(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = v3;
  v8 = sub_1DD63F9C8();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  if (sub_1DD4CFF44())
  {
    v33 = a2;
    v17 = *(type metadata accessor for HolidayResolutionContext() + 24);
    v18 = sub_1DD63D128();
    if (v19)
    {
      v20 = v19;
      v31 = v18;
      v32 = a3;
      if (qword_1EE166460 != -1)
      {
        OUTLINED_FUNCTION_4_2();
      }

      v21 = qword_1EE16F0C0;
      sub_1DD63F9B8();
      sub_1DD6404D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DD643F90;
      v23 = sub_1DD6408F8();
      v25 = v24;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1DD392BD8();
      *(v22 + 32) = v23;
      *(v22 + 40) = v25;
      OUTLINED_FUNCTION_7_37();
      sub_1DD63F998();

      sub_1DD4D166C(a1, v33, v31, v20, v32, v5, &v35);

      sub_1DD6404C8();
      OUTLINED_FUNCTION_7_37();
      sub_1DD63F9A8();

      if (v4)
      {
        return (*(v11 + 8))(v16, v8);
      }

      else
      {
        (*(v11 + 8))(v16, v8);
        return v35;
      }
    }

    else
    {
      type metadata accessor for HolidaysDBHolidayResolverError();
      sub_1DD4D33BC();
      swift_allocError();
      v29 = v28;
      v30 = sub_1DD63D168();
      (*(*(v30 - 8) + 16))(v29, &a3[v17], v30);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for HolidaysDBHolidayResolverError();
    sub_1DD4D33BC();
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_12_28(v27, 0x80000001DD66E570);
    return swift_willThrow();
  }
}

uint64_t sub_1DD4D166C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, int *a6@<X6>, uint64_t *a7@<X8>)
{
  v95 = a6;
  v97 = a1;
  v88 = a7;
  v11 = sub_1DD63CBB8();
  v12 = *(v11 - 8);
  v85 = v11;
  v86 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v87 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1632D8 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1EE16EFE0);

    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640368();

    v18 = os_log_type_enabled(v16, v17);
    v89 = a5;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v94 = a3;
      v21 = v20;
      v98[0] = v20;
      *v19 = 136315138;
      v22 = v97;
      *(v19 + 4) = sub_1DD39565C(v97, a2, v98);
      _os_log_impl(&dword_1DD38D000, v16, v17, "Resolving holiday: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      a3 = v94;
      MEMORY[0x1E12B3DA0](v21, -1, -1);
      v23 = v19;
      a5 = v89;
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    else
    {

      v22 = v97;
    }

    v24 = MEMORY[0x1E69E7CC0];
    v100 = MEMORY[0x1E69E7CC0];
    LOBYTE(v98[0]) = *a5;
    v25 = sub_1DD4CFE78(v98);
    v26 = v96;
    result = sub_1DD4CE080(v22, a2, a3, a4, v25);
    if (v26)
    {
      return result;
    }

    v83 = v24;
    v84 = 0;
    v94 = *(result + 16);
    if (!v94)
    {
      break;
    }

    v28 = 0;
    v82[1] = result;
    v93 = result + 32;
    a4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      memcpy(__dst, (v93 + 168 * v28), 0xA3uLL);
      sub_1DD4CA79C(__dst, v98);
      v29 = sub_1DD4D229C(__dst, a5);
      sub_1DD4CA7F8(__dst);
      a2 = v29 >> 62 ? sub_1DD6407B8() : *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a3 = a4 >> 62;
      v30 = a4 >> 62 ? sub_1DD6407B8() : *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v31 = v30 + a2;
      if (__OFADD__(v30, a2))
      {
        break;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (a3)
        {
          goto LABEL_20;
        }

        a3 = a4 & 0xFFFFFFFFFFFFFF8;
        if (v31 <= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (a3)
        {
LABEL_20:
          sub_1DD6407B8();
          goto LABEL_21;
        }

        a3 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      v32 = *(a3 + 16);
LABEL_21:
      a4 = sub_1DD640918();
      a3 = a4 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v96 = v28;
      v97 = a4;
      v33 = *(a3 + 16);
      a4 = (*(a3 + 24) >> 1) - v33;
      v34 = a3 + 8 * v33;
      if (v29 >> 62)
      {
        v36 = sub_1DD6407B8();
        if (v36)
        {
          v37 = v36;
          v92 = sub_1DD6407B8();
          if (a4 < v92)
          {
            goto LABEL_121;
          }

          if (v37 < 1)
          {
            goto LABEL_123;
          }

          v90 = a3;
          v91 = a2;
          a4 = v34 + 32;
          sub_1DD4D42A8(&qword_1ECCDDC70, &qword_1ECCDDC68, &unk_1DD654410);
          for (i = 0; i != v37; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDC68, &unk_1DD654410);
            v39 = sub_1DD5B5E38(v98, i, v29);
            v41 = *v40;

            v39(v98, 0);
            *(a4 + 8 * i) = v41;
          }

          a5 = v89;
          a3 = v90;
          a2 = v91;
          v35 = v92;
          goto LABEL_32;
        }
      }

      else
      {
        v35 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v35)
        {
          if (a4 < v35)
          {
            goto LABEL_122;
          }

          type metadata accessor for DateTime.Date();
          swift_arrayInitWithCopy();
LABEL_32:

          if (v35 < a2)
          {
            goto LABEL_115;
          }

          if (v35 > 0)
          {
            v42 = *(a3 + 16);
            v43 = __OFADD__(v42, v35);
            v44 = v42 + v35;
            if (v43)
            {
              goto LABEL_120;
            }

            *(a3 + 16) = v44;
          }

          goto LABEL_37;
        }
      }

      if (a2 > 0)
      {
        goto LABEL_115;
      }

LABEL_37:
      a4 = v97;
      v28 = v96 + 1;
      if (v96 + 1 == v94)
      {

        v100 = a4;
        goto LABEL_42;
      }
    }

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
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
  }

  a4 = MEMORY[0x1E69E7CC0];
LABEL_42:
  result = sub_1DD3CC020(a4);
  if (result <= 1)
  {
    *v88 = a4;
    return result;
  }

  v45 = type metadata accessor for HolidayResolutionContext();
  v97 = v45[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v46 = sub_1DD63D2B8();
  v47 = *(v46 - 8);
  v48 = *(v47 + 72);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1DD6444F0;
  v51 = v50 + v49;
  v52 = *(v47 + 104);
  a4 = v47 + 104;
  v52(v51, *MEMORY[0x1E6969A68], v46);
  v52(v51 + v48, *MEMORY[0x1E6969A78], v46);
  v52(v51 + 2 * v48, *MEMORY[0x1E6969A48], v46);
  sub_1DD56BDEC();
  v53 = v45[7];
  v95 = v45;
  v54 = v45[5];
  sub_1DD3D856C(v55, v87);

  v56 = sub_1DD63CA28();
  if (v57)
  {
    v58 = 0;
  }

  else
  {
    v58 = v56;
  }

  v59 = sub_1DD63CAB8();
  if (v60)
  {
    v61 = 0;
  }

  else
  {
    v61 = v59;
  }

  v62 = sub_1DD63CA98();
  if (v63)
  {
    v64 = 0;
  }

  else
  {
    v64 = v62;
  }

  v96 = type metadata accessor for DateTime.Date();
  swift_allocObject();
  v97 = DateTime.Date.init(withDay:month:year:)(v58, v61, v64);
  v65 = v84;
  sub_1DD4CFE8C(&v100);
  v84 = v65;
  v66 = v100;
  v98[0] = MEMORY[0x1E69E7CC0];
  v67 = sub_1DD3CC020(v100);
  a3 = 0;
  a5 = (v66 & 0xC000000000000001);
  a2 = v66 & 0xFFFFFFFFFFFFFF8;
  while (v67 != a3)
  {
    if (a5)
    {
      a4 = MEMORY[0x1E12B2C10](a3, v66);
    }

    else
    {
      if (a3 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_117;
      }

      a4 = *(v66 + 8 * a3 + 32);
    }

    if (__OFADD__(a3, 1))
    {
      goto LABEL_116;
    }

    if (static DateTime.Date.< infix(_:_:)(a4, v97))
    {
      sub_1DD640958();
      v68 = *(v98[0] + 16);
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
    }

    else
    {
    }

    ++a3;
  }

  a3 = 0;
  v94 = v98[0];
  v98[0] = MEMORY[0x1E69E7CC0];
  while (v67 != a3)
  {
    if (a5)
    {
      MEMORY[0x1E12B2C10](a3, v66);
    }

    else
    {
      if (a3 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_119;
      }

      v69 = *(v66 + 8 * a3 + 32);
    }

    if (__OFADD__(a3, 1))
    {
      goto LABEL_118;
    }

    if (static DateTime.Date.<= infix(_:_:)())
    {
    }

    else
    {
      sub_1DD640958();
      a4 = *(v98[0] + 16);
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
    }

    ++a3;
  }

  v70 = v98[0];
  v71 = v89[v95[10]];
  if (v71 != 20)
  {

    v76 = MEMORY[0x1E69E7CC0];
    if (v71 == 19)
    {

      v77 = sub_1DD43C104(v94);

      if (v77)
      {
LABEL_108:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_1DD643B80;
        *(v76 + 32) = v77;
      }
    }

    else if (v71 == 17)
    {

      if (sub_1DD3CC020(v70))
      {
        sub_1DD408BFC(0);
        if ((v70 & 0xC000000000000001) != 0)
        {
          v77 = MEMORY[0x1E12B2C10](0, v70);
        }

        else
        {
          v77 = *(v70 + 32);
        }

        goto LABEL_108;
      }
    }

    else
    {
    }

    result = (*(v86 + 8))(v87, v85);
    *v88 = v76;
    return result;
  }

  v98[0] = MEMORY[0x1E69E7CC0];
  v72 = sub_1DD43C104(v94);

  if (v72)
  {
    MEMORY[0x1E12B23F0](v73);
    if (*((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD640138();
    }

    sub_1DD640168();
    v83 = v98[0];
  }

  a3 = sub_1DD3CC020(v66);
  v74 = 0;
  do
  {
    if (a3 == v74)
    {

      v78 = v83;
      goto LABEL_99;
    }

    if (a5)
    {
      a4 = MEMORY[0x1E12B2C10](v74, v66);
    }

    else
    {
      if (v74 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_125;
      }

      a4 = *(v66 + 8 * v74 + 32);
    }

    if (__OFADD__(v74, 1))
    {
      goto LABEL_124;
    }

    v75 = static DateTime.Date.== infix(_:_:)(a4, v97);

    ++v74;
  }

  while (!v75);

  MEMORY[0x1E12B23F0](v79);
  if (*((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DD640138();
  }

  sub_1DD640168();
  v78 = v98[0];
LABEL_99:
  if (sub_1DD3CC020(v70))
  {
    sub_1DD408BFC(0);
    if ((v70 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12B2C10](0, v70);
    }

    else
    {
      v80 = *(v70 + 32);
    }

    MEMORY[0x1E12B23F0](v81);
    if (*((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD640138();
    }

    sub_1DD640168();
    v78 = v98[0];

    result = (*(v86 + 8))(v87, v85);
  }

  else
  {
    (*(v86 + 8))(v87, v85);
  }

  *v88 = v78;
  return result;
}

uint64_t sub_1DD4D229C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v107 - v6;
  v115 = sub_1DD63CBB8();
  v8 = OUTLINED_FUNCTION_0(v115);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = sub_1DD63D2B8();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  switch(*(a1 + 56))
  {
    case 1:
      v63 = a2 + *(type metadata accessor for HolidayResolutionContext() + 36);
      if ((*(v63 + 8) & 1) == 0 && *(a1 + 40) != *v63)
      {
        return MEMORY[0x1E69E7CC0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      OUTLINED_FUNCTION_10_1();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1DD643B80;
      v64 = *(a1 + 80);
      v65 = *(a1 + 88);
      v66 = *(a1 + 64);
      v67 = *(a1 + 72);
      v68 = *(a1 + 40);
      LOBYTE(v124[0]) = 7;
      OUTLINED_FUNCTION_8_39();
      LOBYTE(v120) = 7;
      v119 = 7;
      type metadata accessor for DateTime.Date();
      OUTLINED_FUNCTION_16_29();
      OUTLINED_FUNCTION_5_51();
      OUTLINED_FUNCTION_11_33();
      LOBYTE(v112) = v69;
      LOBYTE(v109) = v69;
      v107 = v70;
      v108 = 0;
      v36 = v64;
      v37 = v65;
      v38 = v66;
      v39 = v67;
      v40 = v68;
      v41 = 0;
      goto LABEL_13;
    case 2:
      v42 = *(a1 + 152);
      if (!v42)
      {
        if (qword_1EE1632D8 != -1)
        {
          goto LABEL_43;
        }

        goto LABEL_15;
      }

      v43 = *(a1 + 144);
      v44 = *(a1 + 152);

      v45 = sub_1DD5C04D8();
      if (v45 == 7)
      {
        v46 = v43;
        if (qword_1EE1632D8 != -1)
        {
          OUTLINED_FUNCTION_5();
        }

        v47 = sub_1DD63F9F8();
        __swift_project_value_buffer(v47, qword_1EE16EFE0);

        sub_1DD4CA79C(a1, v124);
        v48 = sub_1DD63F9D8();
        v49 = sub_1DD640378();

        sub_1DD4CA7F8(a1);
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v124[0] = v51;
          *v50 = 136315906;
          *(v50 + 4) = sub_1DD39565C(v46, v42, v124);
          *(v50 + 12) = 2080;
          *(v50 + 14) = sub_1DD39565C(*a1, *(a1 + 8), v124);
          *(v50 + 22) = 2080;
          *(v50 + 24) = sub_1DD39565C(*(a1 + 16), *(a1 + 24), v124);
          *(v50 + 32) = 2080;
          v52 = sub_1DD4CC2EC(*(a1 + 32));
          v54 = sub_1DD39565C(v52, v53, v124);

          *(v50 + 34) = v54;
          _os_log_impl(&dword_1DD38D000, v48, v49, "The relative holiday '%s' for %s:%s.%s is invalid.", v50, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1E12B3DA0](v51, -1, -1);
          v55 = v50;
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      sub_1DD4D2FF8(v45, *(a1 + 160), v124);
      sub_1DD3C2388(v124, v121);
      v78 = type metadata accessor for HolidayResolutionContext();
      v79 = v78;
      v80 = a2 + v78[9];
      if ((*(v80 + 8) & 1) == 0)
      {
        v105 = sub_1DD4D2D6C(*v80, *(a1 + 112), *(a1 + 120), a2 + v78[7], v121, a1);
        __swift_destroy_boxed_opaque_existential_1(v121);
        if (!v105)
        {
          __swift_destroy_boxed_opaque_existential_1(v124);
          return MEMORY[0x1E69E7CC0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
        OUTLINED_FUNCTION_10_1();
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1DD643B80;
        *(v25 + 32) = v105;
        v106 = v124;
        goto LABEL_40;
      }

      v81 = v78[8];
      (*(v19 + 104))(v24, *MEMORY[0x1E6969A68], v16);
      v113 = v79;
      v82 = v79[5];
      v83 = sub_1DD63D2C8();
      result = (*(v19 + 8))(v24, v16);
      v120 = MEMORY[0x1E69E7CC0];
      v85 = v83 - 1;
      if (__OFSUB__(v83, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (__OFADD__(v83, 1))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v114 = a2;
      if (v83 + 1 >= v85)
      {
        v86 = *(v113 + 7);
        v111 = (v10 + 32);
        v110 = (v10 + 8);
        v25 = MEMORY[0x1E69E7CC0];
        v87 = 2;
        v88 = *(a1 + 112);
        LODWORD(v113) = *(a1 + 120);
        a1 = v115;
        v109 = v88;
        v108 = v7;
        v112 = v86;
        while (1)
        {
          v89 = v122;
          v90 = v123;
          __swift_project_boxed_opaque_existential_1(v121, v122);
          sub_1DD5C0524(v85, v88, v113, v114 + v86, v89, v90, v7);
          if (__swift_getEnumTagSinglePayload(v7, 1, a1) == 1)
          {
            sub_1DD3ADFD0(v7, &qword_1ECCDC4F8, &unk_1DD646910);
          }

          else
          {
            (*v111)(v15, v7, a1);
            v91 = sub_1DD63CB48();
            if (v92)
            {
              LOBYTE(v93) = 7;
            }

            else
            {
              v93 = 0x705040302010006uLL >> (8 * sub_1DD4C61F8(v91));
            }

            v94 = sub_1DD63CA28();
            v96 = v95;
            v97 = sub_1DD63CAB8();
            v99 = v98;
            v119 = 7;
            v118 = 12;
            v117 = v93;
            v100 = sub_1DD63C9C8();
            v102 = v101;
            (*v110)(v15, v115);
            v116 = 7;
            type metadata accessor for DateTime.Date();
            OUTLINED_FUNCTION_16_29();
            DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(v94, v96 & 1, v97, v99 & 1, v85, 0, &v119, 0, &v118, 0, 1, &v117, v100, v102 & 1, &v116, 0);

            MEMORY[0x1E12B23F0](v103);
            if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1DD640138();
            }

            sub_1DD640168();

            v25 = v120;
            a1 = v115;
            v86 = v112;
            v88 = v109;
            v7 = v108;
          }

          if (!v87)
          {
            break;
          }

          --v87;
          if (__OFADD__(v85++, 1))
          {
            __break(1u);
LABEL_43:
            OUTLINED_FUNCTION_5();
LABEL_15:
            v71 = sub_1DD63F9F8();
            __swift_project_value_buffer(v71, qword_1EE16EFE0);
            sub_1DD4CA79C(a1, v124);
            v48 = sub_1DD63F9D8();
            v72 = sub_1DD640378();
            sub_1DD4CA7F8(a1);
            if (os_log_type_enabled(v48, v72))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v124[0] = v74;
              *v73 = 136315650;
              *(v73 + 4) = sub_1DD39565C(*a1, *(a1 + 8), v124);
              *(v73 + 12) = 2080;
              *(v73 + 14) = sub_1DD39565C(*(a1 + 16), *(a1 + 24), v124);
              *(v73 + 22) = 2080;
              v75 = sub_1DD4CC2EC(*(a1 + 32));
              v77 = sub_1DD39565C(v75, v76, v124);

              *(v73 + 24) = v77;
              _os_log_impl(&dword_1DD38D000, v48, v72, "The relative holiday for %s:%s.%s is missing.", v73, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1E12B3DA0](v74, -1, -1);
              v55 = v73;
LABEL_17:
              MEMORY[0x1E12B3DA0](v55, -1, -1);
            }

LABEL_18:

            return MEMORY[0x1E69E7CC0];
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v124);
        v106 = v121;
LABEL_40:
        __swift_destroy_boxed_opaque_existential_1(v106);
        return v25;
      }

LABEL_46:
      __break(1u);
      return result;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      OUTLINED_FUNCTION_10_1();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1DD643B80;
      v56 = a2 + *(type metadata accessor for HolidayResolutionContext() + 36);
      v57 = *v56;
      v58 = *(v56 + 8);
      LOBYTE(v124[0]) = 7;
      OUTLINED_FUNCTION_8_39();
      v59 = *(a1 + 64);
      v60 = *(a1 + 72);
      LOBYTE(v120) = *(a1 + 89);
      v61 = *(a1 + 96);
      v62 = *(a1 + 104);
      v119 = 7;
      type metadata accessor for DateTime.Date();
      OUTLINED_FUNCTION_16_29();
      OUTLINED_FUNCTION_5_51();
      LOBYTE(v112) = v62;
      v110 = &v120;
      v111 = v61;
      LOBYTE(v109) = 1;
      v107 = v121;
      v108 = 0;
      v36 = 0;
      v37 = 1;
      v38 = v59;
      v39 = v60;
      v40 = v57;
      v41 = v58;
      goto LABEL_13;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      OUTLINED_FUNCTION_10_1();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1DD643B80;
      v26 = *(a1 + 80);
      v27 = *(a1 + 88);
      v28 = a2;
      v29 = *(a1 + 64);
      v30 = *(a1 + 72);
      v31 = v28 + *(type metadata accessor for HolidayResolutionContext() + 36);
      v32 = *v31;
      v33 = *(v31 + 8);
      LOBYTE(v124[0]) = 7;
      OUTLINED_FUNCTION_8_39();
      LOBYTE(v120) = 7;
      v119 = 7;
      type metadata accessor for DateTime.Date();
      OUTLINED_FUNCTION_16_29();
      OUTLINED_FUNCTION_5_51();
      OUTLINED_FUNCTION_11_33();
      LOBYTE(v112) = v34;
      LOBYTE(v109) = v34;
      v107 = v35;
      v108 = 0;
      v36 = v26;
      v37 = v27;
      v38 = v29;
      v39 = v30;
      v40 = v32;
      v41 = v33;
LABEL_13:
      *(v25 + 32) = DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(v36, v37, v38, v39, v40, v41, v124, 0, v107, v108, v109, v110, v111, v112, v113, v114);
      return v25;
  }
}

uint64_t sub_1DD4D2D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - v12;
  v14 = sub_1DD63CBB8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a5[3];
  v20 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v19);
  sub_1DD5C0524(a1, *(a6 + 112), *(a6 + 120), a4, v19, v20, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1DD3ADFD0(v13, &qword_1ECCDC4F8, &unk_1DD646910);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v22 = sub_1DD63CB48();
    v23 = 7;
    if ((v24 & 1) == 0)
    {
      v25 = sub_1DD4C61F8(v22);
      v23 = sub_1DD4CFE58(v25);
    }

    v34 = sub_1DD63CA28();
    v27 = v26;
    v28 = sub_1DD63CAB8();
    v30 = v29;
    v38 = 7;
    v37 = 12;
    v36 = v23;
    v31 = sub_1DD63C9C8();
    v33 = v32;
    (*(v15 + 8))(v18, v14);
    v35 = 7;
    type metadata accessor for DateTime.Date();
    swift_allocObject();
    return DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(v34, v27 & 1, v28, v30 & 1, a1, 0, &v38, 0, &v37, 0, 1, &v36, v31, v33 & 1, &v35, 0);
  }
}

void sub_1DD4D2FF8(char a1@<W0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_1DD63D188();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  switch(a1)
  {
    case 1:
      Advent = type metadata accessor for FirstAdvent();
      v29 = *(Advent + 48);
      v30 = *(Advent + 52);
      swift_allocObject();
      v11 = sub_1DD4C145C();
      v12 = &off_1F58B84E8;
      goto LABEL_12;
    case 2:
      a3[3] = &type metadata for Thanksgiving;
      a3[4] = &off_1F58C36A8;
      return;
    case 3:
      v22 = type metadata accessor for SolsticeAndEquinox();
      v23 = OUTLINED_FUNCTION_14_28(v22, &off_1F58C0750);
      v24 = *MEMORY[0x1E6969868];
      v25 = OUTLINED_FUNCTION_3_48();
      v26(v25);
      OUTLINED_FUNCTION_15_26();
      v27 = OUTLINED_FUNCTION_4_45();
      v28(v27);
      *(v23 + *(v22 + 20)) = 0;
      return;
    case 4:
      v13 = type metadata accessor for SolsticeAndEquinox();
      v14 = OUTLINED_FUNCTION_14_28(v13, &off_1F58C0750);
      v15 = *MEMORY[0x1E6969868];
      v16 = OUTLINED_FUNCTION_3_48();
      v17(v16);
      OUTLINED_FUNCTION_15_26();
      v18 = OUTLINED_FUNCTION_4_45();
      v19(v18);
      v20 = *(v13 + 20);
      v21 = 1;
      goto LABEL_10;
    case 5:
      v31 = type metadata accessor for SolsticeAndEquinox();
      v14 = OUTLINED_FUNCTION_14_28(v31, &off_1F58C0750);
      v32 = *MEMORY[0x1E6969868];
      v33 = OUTLINED_FUNCTION_3_48();
      v34(v33);
      OUTLINED_FUNCTION_15_26();
      v35 = OUTLINED_FUNCTION_4_45();
      v36(v35);
      v20 = *(v31 + 20);
      v21 = 2;
      goto LABEL_10;
    case 6:
      v37 = type metadata accessor for SolsticeAndEquinox();
      v14 = OUTLINED_FUNCTION_14_28(v37, &off_1F58C0750);
      v38 = *MEMORY[0x1E6969868];
      v39 = OUTLINED_FUNCTION_3_48();
      v40(v39);
      OUTLINED_FUNCTION_15_26();
      v41 = OUTLINED_FUNCTION_4_45();
      v42(v41);
      v20 = *(v37 + 20);
      v21 = 3;
LABEL_10:
      *(v14 + v20) = v21;
      break;
    default:
      if (a2 == 9)
      {
        Advent = type metadata accessor for JulianEasterHoliday();
        v11 = swift_allocObject();
        v12 = &off_1F58B9A60;
      }

      else
      {
        Advent = type metadata accessor for GregorianEasterHoliday();
        v11 = swift_allocObject();
        v12 = &off_1F58B86C0;
      }

LABEL_12:
      a3[3] = Advent;
      a3[4] = v12;
      *a3 = v11;
      break;
  }
}

uint64_t sub_1DD4D3310(uint64_t result, void (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      result = sub_1DD640158();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t type metadata accessor for HolidaysDBHolidayResolverError()
{
  result = qword_1ECCDDCA8;
  if (!qword_1ECCDDCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DD4D33BC()
{
  result = qword_1ECCDDC60;
  if (!qword_1ECCDDC60)
  {
    type metadata accessor for HolidaysDBHolidayResolverError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC60);
  }

  return result;
}

void sub_1DD4D3414(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1DD640CA8();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1DD4D3310(v3 / 2, type metadata accessor for DateTime.Date);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1DD4D35C0(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1DD4D3508(0, v3, 1, a1);
  }
}

uint64_t sub_1DD4D3508(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    type metadata accessor for DateTime.Date();
    v8 = v7 + 8 * v4 - 8;
    v9 = v6 - v4;
    while (2)
    {
      result = *(v7 + 8 * v4);
      v10 = v9;
      v11 = v8;
      do
      {
        result = static DateTime.Date.< infix(_:_:)(result, *v11);
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v7)
        {
          __break(1u);
          return result;
        }

        v12 = *v11;
        result = v11[1];
        *v11 = result;
        v11[1] = v12;
        --v11;
      }

      while (!__CFADD__(v10++, 1));
      ++v4;
      v8 += 8;
      --v9;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD4D35C0(uint64_t **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v84 = (v9 + 16);
      v85 = *(v9 + 16);
      for (i = v9; v85 >= 2; v9 = i)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v86 = (v9 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v9 = *(v88 + 1);
        sub_1DD4D3B8C((*a3 + 8 * *v86), (*a3 + 8 * *v88), (*a3 + 8 * v9), v10);
        if (v5)
        {
          break;
        }

        if (v9 < v87)
        {
          goto LABEL_119;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_120;
        }

        *v86 = v87;
        v86[1] = v9;
        v89 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_121;
        }

        v85 = *v84 - 1;
        sub_1DD4EC4E4(v88 + 16, v89, v88);
        *v84 = v85;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v9 = sub_1DD4EC2B8(v9);
    goto LABEL_95;
  }

  v7 = a3;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v98 = v9;
    v12 = v8;
    v13 = v8 + 1;
    v94 = *(*v7 + 8 * v11);
    v14 = (*v7 + 8 * v8);
    v15 = 8 * v8;
    v17 = *v14;
    v16 = v14 + 2;
    v9 = type metadata accessor for DateTime.Date();
    v18 = static DateTime.Date.< infix(_:_:)(v94, v17);
    v95 = v12;
    v19 = v12 + 2;
    do
    {
      v20 = v19;
      if (v13 + 1 >= v6)
      {
        v13 = v6;
        if (v18)
        {
          goto LABEL_8;
        }

LABEL_20:
        v9 = v98;
        v11 = v13;
        v10 = v95;
        goto LABEL_22;
      }

      ++v13;
      v21 = static DateTime.Date.< infix(_:_:)(*v16, *(v16 - 1));
      ++v16;
      v19 = v20 + 1;
    }

    while (v18 == v21);
    if (!v18)
    {
      goto LABEL_20;
    }

LABEL_8:
    v11 = v13;
    v10 = v95;
    if (v11 < v95)
    {
      goto LABEL_125;
    }

    if (v95 >= v11)
    {
      v9 = v98;
    }

    else
    {
      if (v6 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v6;
      }

      v23 = 8 * v22 - 8;
      v24 = v11;
      v25 = v95;
      v9 = v98;
      do
      {
        if (v25 != --v24)
        {
          v26 = *v7;
          if (!*v7)
          {
            goto LABEL_132;
          }

          v27 = *(v26 + v15);
          *(v26 + v15) = *(v26 + v23);
          *(v26 + v23) = v27;
        }

        v25 = (v25 + 1);
        v23 -= 8;
        v15 += 8;
      }

      while (v25 < v24);
    }

LABEL_22:
    v28 = v7[1];
    if (v11 >= v28)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_124;
    }

    if (v11 - v10 >= a4)
    {
      goto LABEL_40;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_126;
    }

    if (v10 + a4 >= v28)
    {
      v29 = v7[1];
    }

    else
    {
      v29 = v10 + a4;
    }

    if (v29 < v10)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v11 == v29)
    {
      goto LABEL_39;
    }

    v30 = v10;
    v31 = *a3;
    type metadata accessor for DateTime.Date();
    v32 = v31 + 8 * v11 - 8;
    v96 = v30;
    v33 = v30 - v11;
LABEL_32:
    v34 = v11;
    v35 = *(v31 + 8 * v11);
    v36 = v33;
    v37 = v32;
LABEL_33:
    if (static DateTime.Date.< infix(_:_:)(v35, *v37))
    {
      break;
    }

LABEL_37:
    v11 = v34 + 1;
    v32 += 8;
    --v33;
    if ((v34 + 1) != v29)
    {
      goto LABEL_32;
    }

    v11 = v29;
    v10 = v96;
LABEL_39:
    v7 = a3;
LABEL_40:
    if (v11 < v10)
    {
      goto LABEL_123;
    }

    v92 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = *(v9 + 16);
      sub_1DD3BEB7C();
      v9 = v82;
    }

    v40 = *(v9 + 16);
    v41 = v40 + 1;
    if (v40 >= *(v9 + 24) >> 1)
    {
      sub_1DD3BEB7C();
      v9 = v83;
    }

    *(v9 + 16) = v41;
    v42 = v9 + 32;
    v43 = (v9 + 32 + 16 * v40);
    *v43 = v10;
    v43[1] = v92;
    v97 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v40)
    {
      v99 = v9;
      while (1)
      {
        v44 = v41 - 1;
        v45 = (v42 + 16 * (v41 - 1));
        v46 = (v9 + 16 * v41);
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v47 = *(v9 + 32);
          v48 = *(v9 + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_61:
          if (v50)
          {
            goto LABEL_110;
          }

          v62 = *v46;
          v61 = v46[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_113;
          }

          v66 = v45[1];
          v67 = v66 - *v45;
          if (__OFSUB__(v66, *v45))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v64, v67))
          {
            goto LABEL_118;
          }

          if (v64 + v67 >= v49)
          {
            if (v49 < v67)
            {
              v44 = v41 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v69 = *v46;
        v68 = v46[1];
        v57 = __OFSUB__(v68, v69);
        v64 = v68 - v69;
        v65 = v57;
LABEL_76:
        if (v65)
        {
          goto LABEL_115;
        }

        v71 = *v45;
        v70 = v45[1];
        v57 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v57)
        {
          goto LABEL_117;
        }

        if (v72 < v64)
        {
          goto LABEL_90;
        }

LABEL_83:
        if (v44 - 1 >= v41)
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v7)
        {
          goto LABEL_130;
        }

        v76 = (v42 + 16 * (v44 - 1));
        v77 = *v76;
        v10 = v44;
        v78 = v42 + 16 * v44;
        v9 = *(v78 + 8);
        sub_1DD4D3B8C((*v7 + 8 * *v76), (*v7 + 8 * *v78), (*v7 + 8 * v9), v97);
        if (v5)
        {
          goto LABEL_103;
        }

        if (v9 < v77)
        {
          goto LABEL_105;
        }

        v5 = v7;
        v79 = *(v99 + 16);
        if (v10 > v79)
        {
          goto LABEL_106;
        }

        *v76 = v77;
        v76[1] = v9;
        if (v10 >= v79)
        {
          goto LABEL_107;
        }

        v41 = v79 - 1;
        sub_1DD4EC4E4((v78 + 16), v79 - 1 - v10, v78);
        v9 = v99;
        *(v99 + 16) = v79 - 1;
        v80 = v79 > 2;
        v7 = v5;
        v5 = 0;
        if (!v80)
        {
          goto LABEL_90;
        }
      }

      v51 = v42 + 16 * v41;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_108;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_109;
      }

      v58 = v46[1];
      v59 = v58 - *v46;
      if (__OFSUB__(v58, *v46))
      {
        goto LABEL_111;
      }

      v57 = __OFADD__(v49, v59);
      v60 = v49 + v59;
      if (v57)
      {
        goto LABEL_114;
      }

      if (v60 >= v54)
      {
        v74 = *v45;
        v73 = v45[1];
        v57 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v57)
        {
          goto LABEL_122;
        }

        if (v49 < v75)
        {
          v44 = v41 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

LABEL_90:
    v6 = v7[1];
    v8 = v92;
    if (v92 >= v6)
    {
      goto LABEL_93;
    }
  }

  if (v31)
  {
    v38 = *v37;
    v35 = v37[1];
    *v37 = v35;
    v37[1] = v38;
    --v37;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

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
}

uint64_t sub_1DD4D3B8C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1DD3C2520(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      v13 = *v4;
      type metadata accessor for DateTime.Date();
      if (!static DateTime.Date.< infix(_:_:)(v12, v13))
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6++;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v14 = v4;
    v15 = v7 == v4++;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v14;
    goto LABEL_13;
  }

  sub_1DD3C2520(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_15:
  v16 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    type metadata accessor for DateTime.Date();
    v20 = static DateTime.Date.< infix(_:_:)(v18, v19);
    v21 = v5 + 1;
    if (v20)
    {
      v15 = v21 == v6--;
      if (!v15)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_15;
    }

    if (v10 != v21)
    {
      *v5 = *(v10 - 1);
    }

    --v10;
  }

LABEL_28:
  v22 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, 8 * v22);
  }

  return 1;
}

uint64_t sub_1DD4D3DA8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1DD6407B8();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1DD4D3E4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1DD6407B8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1DD3CC020(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1DD63F538();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1DD4D42A8(&qword_1ECCDDCA0, &qword_1ECCDDC98, &unk_1DD654430);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDC98, &unk_1DD654430);
          v9 = sub_1DD5B5E38(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4D3FC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1DD6407B8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1DD3CC020(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for DateTimeConstraint();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1DD4D42A8(&qword_1ECCDDC80, &qword_1ECCDDC78, &qword_1DD654420);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDC78, &qword_1DD654420);
          v9 = sub_1DD5B5E38(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4D4134(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1DD6407B8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1DD3CC020(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for DateTime.DateTimeRange();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1DD4D42A8(&qword_1ECCDDC90, &qword_1ECCDDC88, &qword_1DD654428);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDC88, &qword_1DD654428);
          v9 = sub_1DD5B5E38(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4D42A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DD4D4304()
{
  result = sub_1DD63D168();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_28@<X0>(unint64_t *a1@<X1>, unint64_t a2@<X8>)
{
  *a1 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a1[1] = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_13_28()
{

  return swift_allocError();
}

uint64_t *OUTLINED_FUNCTION_14_28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

uint64_t sub_1DD4D444C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 getLocalFileUrl];
  if (v3)
  {
    v4 = v3;
    sub_1DD63CE48();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1DD63CE68();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void sub_1DD4D44CC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    a2 = 0;
  }

  v3 = *v2;
  sub_1DD4D44F8(a1, a2);
}

void sub_1DD4D44F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1DD4D45B8;
    v4[3] = &block_descriptor_7;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 startDownload_];
  _Block_release(v3);
}

id sub_1DD4D4628()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69B1948]) init];
  [v0 setDiscretionary_];
  result = [v0 setAllowsCellularAccess_];
  qword_1EE16EF20 = v0;
  return result;
}

uint64_t sub_1DD4D468C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCB8, &qword_1DD654528);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11];
  v13 = OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___assetURL;
  swift_beginAccess();
  sub_1DD3CDD14(v2 + v13, v12, &qword_1ECCDDCB8, &qword_1DD654528);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) != 1)
  {
    return sub_1DD4D5B84(v12, a1);
  }

  sub_1DD3ADFD0(v12, &qword_1ECCDDCB8, &qword_1DD654528);
  v15 = v2[5];
  v16 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v15);
  (*(v16 + 24))(v15, v16);
  sub_1DD3CDD14(a1, v9, &qword_1ECCDBF78, &unk_1DD644440);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  swift_beginAccess();
  sub_1DD4D5B14(v9, v2 + v13);
  return swift_endAccess();
}

uint64_t sub_1DD4D4858@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD63CE68();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = v1[5];
  v19 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v18);
  if (((*(v19 + 8))(v18, v19) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    sub_1DD4D468C(v17);
    if (__swift_getEnumTagSinglePayload(v17, 1, v3))
    {
      sub_1DD3ADFD0(v17, &qword_1ECCDBF78, &unk_1DD644440);
      v20 = a1;
      v21 = 1;
    }

    else
    {
      (*(v6 + 16))(v11, v17, v3);
      sub_1DD3ADFD0(v17, &qword_1ECCDBF78, &unk_1DD644440);
      sub_1DD63CE18();
      (*(v6 + 8))(v11, v3);
      v20 = a1;
      v21 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v20, v21, 1, v3);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

void sub_1DD4D4A9C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_1DD63FDA8();
  if (qword_1EE161B58 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE16EF20;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  OUTLINED_FUNCTION_0_91();
  v9[1] = 1107296256;
  v9[2] = sub_1DD4D45B8;
  v9[3] = &block_descriptor_26;
  v8 = _Block_copy(v9);

  [v4 startCatalogDownload:v5 options:v6 then:v8];
  _Block_release(v8);
}

void sub_1DD4D4BDC(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    sub_1DD4D5C0C();
    v4 = swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 1;
    a2();
  }

  else
  {
    a2();
  }
}

void sub_1DD4D4C70(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E69B18E8]);
  v7 = sub_1DD4D5C84(0xD00000000000002BLL, 0x80000001DD66E710);
  if (v7)
  {
    v8 = v7;
    [v7 returnTypes_];
    if (qword_1EE1632D8 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v9 = sub_1DD63F9F8();
    __swift_project_value_buffer(v9, qword_1EE16EFE0);
    v10 = v8;
    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640358();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v8;
      v15 = v10;
      _os_log_impl(&dword_1DD38D000, v11, v12, "Starting MobileAsset query %@", v13, 0xCu);
      sub_1DD3ADFD0(v14, &qword_1ECCDBF90, &qword_1DD6445B0);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
      MEMORY[0x1E12B3DA0](v13, -1, -1);
    }

    v16 = swift_allocObject();
    v16[2] = v10;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a3;
    OUTLINED_FUNCTION_0_91();
    v25[1] = 1107296256;
    v25[2] = sub_1DD4D53C8;
    v25[3] = &block_descriptor_20_0;
    v17 = _Block_copy(v25);
    v18 = v10;

    [v18 queryMetaData_];
    _Block_release(v17);
  }

  else
  {
    if (qword_1EE1632D8 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1EE16EFE0);
    v20 = sub_1DD63F9D8();
    v21 = sub_1DD640378();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DD38D000, v20, v21, "MobileAsset query init failed", v22, 2u);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
    }

    sub_1DD4D5C0C();
    v23 = swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 3;
    a2(v23, 1);
  }
}

void sub_1DD4D4FB4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  if (a1)
  {
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v6 = sub_1DD63F9F8();
    __swift_project_value_buffer(v6, qword_1EE16EFE0);
    v7 = sub_1DD63F9D8();
    v8 = sub_1DD640378();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a1;
      _os_log_impl(&dword_1DD38D000, v7, v8, "Query returned error %ld", v9, 0xCu);
      MEMORY[0x1E12B3DA0](v9, -1, -1);
    }

    sub_1DD4D5C0C();
    v10 = swift_allocError();
    *v11 = a1;
    *(v11 + 8) = 0;
    a4(v10, 1);

    return;
  }

  v13 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v14 = sub_1DD4D5D60(a2);
  if (v14)
  {
    v15 = v14;
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD63F9F8();
    __swift_project_value_buffer(v16, qword_1EE16EFE0);

    v17 = sub_1DD63F9D8();
    v18 = sub_1DD640368();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      v21 = sub_1DD4D6018();
      v22 = MEMORY[0x1E12B2430](v15, v21);
      v24 = sub_1DD39565C(v22, v23, &v37);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1DD38D000, v17, v18, "Query returned results %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12B3DA0](v20, -1, -1);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
    }

    v25 = sub_1DD3CC020(v15);
    if (v25)
    {
      v26 = v25;
      if (v25 < 1)
      {
        __break(1u);
        return;
      }

      v27 = 0;
      v13 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1E12B2C10](v27, v15);
        }

        else
        {
          v28 = *(v15 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = type metadata accessor for HolidaysDBMobileAsset();
        v31 = *(v30 + 48);
        v32 = *(v30 + 52);
        v33 = swift_allocObject();
        v34 = v29;
        v35 = sub_1DD4D5DC0(v34, v33);
        if (v35)
        {
          if (*(v35 + 56) >= a3)
          {

            MEMORY[0x1E12B23F0](v36);
            if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1DD640138();
            }

            sub_1DD640168();

            v13 = v38;
            goto LABEL_27;
          }
        }

LABEL_27:
        if (v26 == ++v27)
        {
          goto LABEL_30;
        }
      }
    }

    v13 = MEMORY[0x1E69E7CC0];
LABEL_30:
  }

  a4(v13, 0);
}

uint64_t sub_1DD4D53D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1DD4D5428(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(v6 + 32);

  v8(sub_1DD4D5C7C, v7, v5, v6);
}

void sub_1DD4D54E8(uint64_t a1, void (*a2)(void))
{
  if (a1 != 10 && a1)
  {
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1EE16EFE0);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a1;
      _os_log_impl(&dword_1DD38D000, v5, v6, "Download failed with code %ld", v7, 0xCu);
      MEMORY[0x1E12B3DA0](v7, -1, -1);
    }

    sub_1DD4D5C0C();
    v8 = swift_allocError();
    *v9 = a1;
    *(v9 + 8) = 1;
    a2();
  }

  else
  {
    (a2)(0);
  }
}

uint64_t sub_1DD4D565C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HolidaysDBUpdate();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = sub_1DD63CE68();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  sub_1DD4D4858(v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1DD3ADFD0(v16, &qword_1ECCDBF78, &unk_1DD644440);
    sub_1DD4D5C0C();
    swift_allocError();
    *v26 = 1;
    *(v26 + 8) = 3;
    return swift_willThrow();
  }

  else
  {
    (*(v20 + 32))(v25, v16, v17);
    sub_1DD4CA4A4(v25);
    if (v2)
    {
      return (*(v20 + 8))(v25, v17);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v28);
      *(&v29 - 2) = a2;
      *(&v29 - 1) = v10;
      sub_1DD4064AC(0, sub_1DD4D5C60, (&v29 - 4));
      (*(v20 + 8))(v25, v17);
      return sub_1DD4C9BB0(v10);
    }
  }
}

uint64_t sub_1DD4D58C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DD3ADFD0(v0 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___assetURL, &qword_1ECCDDCB8, &qword_1DD654528);
  sub_1DD3ADFD0(v0 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___versiondate, &qword_1ECCDDCC0, &unk_1DD654530);
  sub_1DD3EB430(*(v0 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___holiday), *(v0 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___holiday + 8));
  sub_1DD3EB430(*(v0 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___country), *(v0 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___country + 8));
  return v0;
}

uint64_t sub_1DD4D594C()
{
  sub_1DD4D58C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HolidaysDBMobileAsset()
{
  result = qword_1EE161B20;
  if (!qword_1EE161B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD4D59F8()
{
  sub_1DD46CF80(319, &qword_1EE163830, &qword_1ECCDBF78, &unk_1DD644440);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1DD46CF80(319, &qword_1EE163818, &qword_1ECCDEBC0, &qword_1DD6445A0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1DD4D5B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCB8, &qword_1DD654528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4D5B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DD4D5C0C()
{
  result = qword_1EE161398;
  if (!qword_1EE161398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161398);
  }

  return result;
}

void sub_1DD4D5C60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DD4C9D1C();
}

id sub_1DD4D5C84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD63FDA8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithType_];

  return v4;
}

uint64_t sub_1DD4D5CF4(void *a1)
{
  v1 = [a1 attributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FC58();

  return v3;
}

uint64_t sub_1DD4D5D60(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DD4D6018();
  v3 = sub_1DD640118();

  return v3;
}

uint64_t sub_1DD4D5DC0(void *a1, uint64_t *a2)
{
  v16[3] = sub_1DD4D6018();
  v16[4] = &off_1F58B90B8;
  v16[0] = a1;
  v4 = OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___assetURL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  __swift_storeEnumTagSinglePayload(a2 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___versiondate;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  __swift_storeEnumTagSinglePayload(a2 + v6, 1, 1, v7);
  *(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___holiday) = xmmword_1DD642F70;
  *(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___country) = xmmword_1DD642F70;
  sub_1DD3C2388(v16, (a2 + 2));
  result = sub_1DD4D5CF4(a1);
  if (result)
  {
    v9 = result;
    strcpy(v12, "UpdateVersion");
    HIWORD(v12[1]) = -4864;
    sub_1DD640848();
    sub_1DD59BADC(v13, v9, &v14);

    sub_1DD400AF4(v13);
    if (v15)
    {
      if (swift_dynamicCast())
      {
        a2[7] = v12[0];
LABEL_7:
        __swift_destroy_boxed_opaque_existential_1(v16);
        return a2;
      }
    }

    else
    {
      sub_1DD3ADFD0(&v14, &qword_1ECCDB980, &unk_1DD643DC0);
    }

    __swift_destroy_boxed_opaque_existential_1(a2 + 2);
    sub_1DD3ADFD0(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___assetURL, &qword_1ECCDDCB8, &qword_1DD654528);
    sub_1DD3ADFD0(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___versiondate, &qword_1ECCDDCC0, &unk_1DD654530);
    sub_1DD3EB430(*(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___holiday), *(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___holiday + 8));
    sub_1DD3EB430(*(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___country), *(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___country + 8));
    type metadata accessor for HolidaysDBMobileAsset();
    v10 = *(*a2 + 48);
    v11 = *(*a2 + 52);
    swift_deallocPartialClassInstance();
    a2 = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD4D6018()
{
  result = qword_1ECCDDCC8;
  if (!qword_1ECCDDCC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDDCC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HolidaysDBMobileAssetError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for HolidaysDBMobileAssetError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1DD4D60E8(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DD4D6100(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DD4D614C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCE8, &unk_1DD654728);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v9 = *(v8 + 56);
  sub_1DD4DB480(a1, &v12 - v6);
  sub_1DD4DB480(a2, &v7[v9]);
  type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(a1)
  {
    case 1:
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 2:
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 3:
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 4:
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 5:
      if (EnumCaseMultiPayload == 5)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    case 6:
      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 7:
      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 8:
      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    default:
      if (EnumCaseMultiPayload)
      {
LABEL_17:
        sub_1DD390754(v7, &qword_1ECCDDCE8, &unk_1DD654728);
        return 0;
      }

      else
      {
LABEL_13:
        sub_1DD4DB404(&v7[v9]);
LABEL_15:
        sub_1DD4DB404(v7);
        return 1;
      }
  }
}

id sub_1DD4D62C8(uint64_t a1)
{
  if (qword_1EE166628 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE166630;

  return [v2 addOperation_];
}

void sub_1DD4D633C(uint64_t a1, uint64_t a2)
{
  v21[0] = a2;
  v3 = sub_1DD63D078();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DD6403B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HolidaysDBUpdater(0);
  v13 = sub_1DD4D65E4();
  v14 = *(v13 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_requeueFunction);
  v15 = *(v13 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_requeueFunction + 8);

  if (qword_1EE166628 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE166630;
  v21[1] = qword_1EE166630;
  (*(v4 + 16))(v7, a1, v3);
  v17 = v16;
  sub_1DD6403C8();
  v18 = swift_allocObject();
  v18[2] = v14;
  v18[3] = v15;
  v19 = v21[0];
  v18[4] = v21[0];
  type metadata accessor for BackgroundQueue();
  sub_1DD4DBEB0(&qword_1EE162D90, type metadata accessor for BackgroundQueue);

  v20 = v19;
  sub_1DD63FB38();

  (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DD4D65E4()
{
  if (qword_1EE1625B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1625B8;
  v2 = sub_1DD4B6E0C(v1, v0);

  return v2;
}

dispatch_semaphore_t sub_1DD4D6798()
{
  result = dispatch_semaphore_create(1);
  qword_1EE1625B8 = result;
  return result;
}

uint64_t sub_1DD4D67BC(uint64_t a1, char *a2)
{
  v54 = a2;
  v4 = sub_1DD63D078();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v55 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  v24 = (v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_requeueFunction);
  *v24 = sub_1DD4D62C8;
  v24[1] = 0;
  v25 = (v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_delayedRequeueFunction);
  *v25 = sub_1DD4D633C;
  v25[1] = 0;
  v26 = (v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_catalogUpdateFunction);
  *v26 = sub_1DD4D6668;
  v26[1] = 0;
  v27 = (v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_findUpdatesFunction);
  *v27 = sub_1DD4D66A8;
  v27[1] = 0;
  v28 = (v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_downloadFunction);
  *v28 = sub_1DD4D66F8;
  v28[1] = 0;
  v29 = (v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_installUpdateFunction);
  *v29 = sub_1DD4D6748;
  v29[1] = 0;
  type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_localDBVersion) = a1;
  sub_1DD63CF58();
  v52 = *(v7 + 32);
  v52(v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_lastCheck, v23, v4);
  v30 = sub_1DD4CFF04(0, 0);

  v53 = v20;
  sub_1DD63CF58();
  v31 = sub_1DD4CFF44();
  if (v31)
  {
    v37 = sub_1DD4CB0C8(v17, v14, v31);

    v38 = *(v7 + 8);
    v38(v17, v4);
    v39 = v53;
    v38(v53, v4);
    *(v30 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_localDBVersion) = v37;
    v40 = v52;
    v52(v39, v14, v4);
  }

  else
  {
    if (qword_1EE1632D8 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v32 = sub_1DD63F9F8();
    __swift_project_value_buffer(v32, qword_1EE16EFE0);
    v33 = sub_1DD63F9D8();
    v34 = sub_1DD640388();
    v35 = os_log_type_enabled(v33, v34);
    v40 = v52;
    v39 = v53;
    if (v35)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DD38D000, v33, v34, "Cannot open database.", v36, 2u);
      OUTLINED_FUNCTION_0_1();
    }
  }

  v41 = v54;
  OUTLINED_FUNCTION_1_69();
  sub_1DD4DBEB0(v42, v43);
  v44 = sub_1DD63FD78();
  v45 = *(v7 + 8);
  v46 = v55;
  if (v44)
  {
    v45(v41, v4);
    v47 = v46;
    v48 = v39;
  }

  else
  {
    v45(v39, v4);
    v47 = v46;
    v48 = v41;
  }

  v40(v47, v48, v4);
  v49 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_lastCheck;
  swift_beginAccess();
  (*(v7 + 40))(v30 + v49, v46, v4);
  swift_endAccess();

  return v30;
}

void *static HolidaysDBUpdater.xpcActivityOperation(activity:)(uint64_t a1)
{
  v2 = sub_1DD63D078();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = [objc_opt_self() now];
  sub_1DD63D048();

  v8 = objc_allocWithZone(type metadata accessor for HolidaysDBPollingOperation(0));
  swift_unknownObjectRetain();
  return sub_1DD4DB314(v6, a1);
}

uint64_t sub_1DD4D6E78(uint64_t a1)
{
  v2 = v1;
  v50 = sub_1DD63D078();
  v4 = OUTLINED_FUNCTION_0(v50);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v50 - v17;
  v19 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  v20 = OUTLINED_FUNCTION_7(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_4();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v50 - v27);
  sub_1DD4DBF5C(a1, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_1DD390754(v18, &qword_1ECCDDCF0, &qword_1DD654738);
  }

  else
  {
    sub_1DD4DBFCC(v18, v28);
    v29 = sub_1DD4D65E4();
    OUTLINED_FUNCTION_11_34(v29);
    swift_beginAccess();
    sub_1DD4DBEF8(v28, &v18[v2]);
    swift_endAccess();
  }

  v30 = sub_1DD4D65E4();
  OUTLINED_FUNCTION_11_34(v30);
  swift_beginAccess();
  sub_1DD4DB480(&v18[v2], v25);

  if (swift_getEnumCaseMultiPayload())
  {
    v31 = sub_1DD4D65E4();
    v33 = *(v31 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_requeueFunction);
    v32 = *(v31 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_requeueFunction + 8);

    v34 = [objc_allocWithZone(type metadata accessor for HolidaysDBUpdaterOperation()) init];
    v33();

    return sub_1DD4DB404(v25);
  }

  v36 = v50;
  (*(v6 + 32))(v14, v25, v50);
  if (qword_1EE1632D8 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v37 = sub_1DD63F9F8();
  __swift_project_value_buffer(v37, qword_1EE16EFE0);
  (*(v6 + 16))(v11, v14, v36);
  v38 = sub_1DD63F9D8();
  v39 = sub_1DD640368();
  if (!os_log_type_enabled(v38, v39))
  {
    v45 = OUTLINED_FUNCTION_10_35();
    v28(v45, v36);
    goto LABEL_14;
  }

  v40 = swift_slowAlloc();
  *v40 = 134217984;
  result = sub_1DD63CFF8();
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v41 < 9.22337204e18)
  {
    v42 = v41;
    v43 = OUTLINED_FUNCTION_10_35();
    v44 = v50;
    v28(v43, v50);
    *(v40 + 4) = v42;
    _os_log_impl(&dword_1DD38D000, v38, v39, "Backing off for %ld", v40, 0xCu);
    v36 = v44;
    OUTLINED_FUNCTION_0_1();
LABEL_14:

    v46 = sub_1DD4D65E4();
    v47 = *(v46 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_delayedRequeueFunction);
    v48 = *(v46 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_delayedRequeueFunction + 8);

    v49 = [objc_allocWithZone(type metadata accessor for HolidaysDBUpdaterOperation()) init];
    v47(v14, v49);

    return (v28)(v14, v36);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DD4D72F0()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  if (qword_1EE1632D8 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v10 = sub_1DD63F9F8();
  __swift_project_value_buffer(v10, qword_1EE16EFE0);

  v11 = sub_1DD63F9D8();
  v12 = sub_1DD640358();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state;
    swift_beginAccess();
    sub_1DD4DB480(v1 + v15, v9);
    v16 = sub_1DD63FE38();
    v18 = sub_1DD39565C(v16, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DD38D000, v11, v12, "HolidaysDBUpdater wakeup, state=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  v19 = sub_1DD6408F8();
  v21 = v20;

  sub_1DD636B8C(v19, v21, v1);
}

uint64_t sub_1DD4D7508(uint64_t a1)
{
  v17 = sub_1DD63F9C8();
  v1 = OUTLINED_FUNCTION_0(v17);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  v11 = sub_1DD6408F8();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DD392BD8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  OUTLINED_FUNCTION_7_38();
  sub_1DD63F998();

  sub_1DD4D774C(a1);
  if (v16)
  {

    sub_1DD6404C8();
    OUTLINED_FUNCTION_7_38();
    sub_1DD63F9A8();
    result = (*(v3 + 8))(v8, v17);
    __break(1u);
  }

  else
  {
    sub_1DD6404C8();
    OUTLINED_FUNCTION_7_38();
    sub_1DD63F9A8();
    return (*(v3 + 8))(v8, v17);
  }

  return result;
}

void sub_1DD4D774C(uint64_t a1)
{
  v2 = sub_1DD63D078();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19[-v12];
  v14 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state;
  swift_beginAccess();
  sub_1DD4DB480(a1 + v14, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD4D7F3C(*v13, *(v13 + 1));
      goto LABEL_6;
    case 2u:
      sub_1DD4D82D0(*v13, *(v13 + 1));
      goto LABEL_6;
    case 3u:
      sub_1DD4D8FE0(*v13, *(v13 + 1), v13[16]);
LABEL_6:

      break;
    case 4u:
      if (qword_1EE1632D8 != -1)
      {
        swift_once();
      }

      v15 = sub_1DD63F9F8();
      __swift_project_value_buffer(v15, qword_1EE16EFE0);
      v16 = sub_1DD63F9D8();
      v17 = sub_1DD640368();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1DD38D000, v16, v17, "Asset updates finished; not requeueing.", v18, 2u);
        MEMORY[0x1E12B3DA0](v18, -1, -1);
      }

      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1DD4DBEF8(v10, a1 + v14);
      swift_endAccess();
      break;
    case 5u:
      sub_1DD4D7C98();
      break;
    case 6u:
      sub_1DD4D7DD8();
      break;
    case 7u:
      return;
    case 8u:
      sub_1DD4D81E8();
      break;
    default:
      (*(v3 + 32))(v6, v13, v2);
      sub_1DD4D7A78();
      (*(v3 + 8))(v6, v2);
      break;
  }
}

uint64_t sub_1DD4D7A78()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_1DD63D078();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() now];
  sub_1DD63D048();

  sub_1DD4DBEB0(&qword_1EE166638, MEMORY[0x1E6969530]);
  LOBYTE(v11) = sub_1DD63FD68();
  (*(v7 + 8))(v10, v6);
  v12 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v13 = 0;
  }

  __swift_storeEnumTagSinglePayload(v5, v13, 1, v12);
  sub_1DD4D6E78(v5);
  return sub_1DD390754(v5, &qword_1ECCDDCF0, &qword_1DD654738);
}

uint64_t sub_1DD4D7C98()
{
  v1 = *v0;
  v2 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v6 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state;
  swift_beginAccess();
  sub_1DD4DBEF8(v5, v0 + v6);
  swift_endAccess();
  v8 = *(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_catalogUpdateFunction);
  v7 = *(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_catalogUpdateFunction + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;

  v8(sub_1DD4DC030, v9);
}

uint64_t sub_1DD4D7DD8()
{
  v1 = *v0;
  v2 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v6 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state;
  swift_beginAccess();
  sub_1DD4DBEF8(v5, v0 + v6);
  result = swift_endAccess();
  v8 = *(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_localDBVersion);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_findUpdatesFunction);
    v10 = *(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_findUpdatesFunction + 8);
    v12 = swift_allocObject();
    *(v12 + 16) = v1;

    v11(v9, sub_1DD4DC038, v12);
  }

  return result;
}

uint64_t sub_1DD4D7F3C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v21 - v8);
  if (sub_1DD3CC020(a1) <= a2)
  {
    v16 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
    sub_1DD4D6E78(v9);
    return sub_1DD390754(v9, &qword_1ECCDDCF0, &qword_1DD654738);
  }

  sub_1DD408BFC(a2);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1E12B2C10](a2, a1);
  }

  else
  {
    v10 = *(a1 + 8 * a2 + 32);
  }

  v11 = v10[5];
  v12 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (v13 <= 6 && ((1 << v13) & 0x4C) != 0)
  {
    *v9 = a1;
    v9[1] = a2 + 1;
    v15 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);

    sub_1DD4D6E78(v9);

    return sub_1DD390754(v9, &qword_1ECCDDCF0, &qword_1DD654738);
  }

  v19 = *(v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_downloadFunction);
  v18 = *(v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_downloadFunction + 8);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v5;

  v19(v10, sub_1DD4DC050, v20);
}

void sub_1DD4D81E8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_localDBVersion);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *v0;
    v5 = v1 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_findUpdatesFunction;
    v7 = *v5;
    v6 = *(v5 + 1);
    v8 = swift_allocObject();
    *(v8 + 16) = v4;

    v7(v3, sub_1DD4DC05C, v8);
  }
}

uint64_t sub_1DD4D82D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  v14 = sub_1DD63CE68();
  v62 = *(v14 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v63 = (&v56 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v56 - v23;
  if (sub_1DD3CC020(a1) <= a2)
  {
    *v24 = a1;
    *(v24 + 1) = 0;
    v24[16] = 0;
    v36 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v36);

    sub_1DD4D6E78(v24);
  }

  else
  {
    v60 = v6;
    sub_1DD408BFC(a2);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x1E12B2C10](a2, a1);
    }

    else
    {
      v61 = *(a1 + 8 * a2 + 32);
    }

    v25 = sub_1DD4CFF44();
    if (v25)
    {
      v58 = a1;
      v59 = v25;
      v26 = v61;
      sub_1DD4D4858(v13);
      v27 = v14;
      if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
      {
        v42 = v62;
        v43 = *(v62 + 32);
        v57 = v27;
        v43(v63, v13, v27);
        v44 = *(v3 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_installUpdateFunction);
        v45 = *(v3 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_installUpdateFunction + 8);

        v44(v26, v59);

        *(sub_1DD4D65E4() + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_localDBVersion) = v26[7];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DD643F90;
        strcpy((inited + 32), "UpdateVersion");
        *(inited + 46) = -4864;
        v64 = v26[7];
        sub_1DD640CB8();
        v47 = sub_1DD63FDA8();

        *(inited + 48) = v47;
        sub_1DD395950();
        sub_1DD63FC88();
        sub_1DD399F2C();

        v48 = v26[5];
        v49 = v26[6];
        __swift_project_boxed_opaque_existential_1(v26 + 2, v48);
        (*(v49 + 48))(v48, v49);
        *v24 = v58;
        *(v24 + 1) = a2 + 1;
        v50 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v24, 0, 1, v50);

        sub_1DD4D6E78(v24);

        sub_1DD390754(v24, &qword_1ECCDDCF0, &qword_1DD654738);
        return (*(v42 + 8))(v63, v57);
      }

      sub_1DD390754(v13, &qword_1ECCDBF78, &unk_1DD644440);
      if (qword_1EE1632D8 != -1)
      {
        swift_once();
      }

      v28 = sub_1DD63F9F8();
      __swift_project_value_buffer(v28, qword_1EE16EFE0);

      v29 = sub_1DD63F9D8();
      LODWORD(v30) = sub_1DD640388();

      v31 = os_log_type_enabled(v29, v30);
      v32 = v58;
      if (v31)
      {
        v33 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = v63;
        *v33 = 136315138;
        sub_1DD4D468C(v10);
        if (__swift_getEnumTagSinglePayload(v10, 1, v14))
        {
          sub_1DD390754(v10, &qword_1ECCDBF78, &unk_1DD644440);
          v34 = 0xE500000000000000;
          v35 = 0x296C696E28;
        }

        else
        {
          LODWORD(v57) = v30;
          v30 = v62;
          (*(v62 + 16))(v18, v10, v14);
          sub_1DD390754(v10, &qword_1ECCDBF78, &unk_1DD644440);
          v35 = sub_1DD63CDD8();
          v34 = v52;
          (*(v30 + 8))(v18, v14);
          LOBYTE(v30) = v57;
        }

        v53 = sub_1DD39565C(v35, v34, &v64);

        *(v33 + 4) = v53;
        _os_log_impl(&dword_1DD38D000, v29, v30, "Asset at %s does not conform.", v33, 0xCu);
        v54 = v63;
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1E12B3DA0](v54, -1, -1);
        MEMORY[0x1E12B3DA0](v33, -1, -1);
      }

      *v24 = v32;
      *(v24 + 1) = 0;
      v24[16] = 1;
      v55 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v55);

      sub_1DD4D6E78(v24);
    }

    else
    {
      if (qword_1EE1632D8 != -1)
      {
        swift_once();
      }

      v37 = sub_1DD63F9F8();
      __swift_project_value_buffer(v37, qword_1EE16EFE0);
      v38 = sub_1DD63F9D8();
      v39 = sub_1DD640388();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1DD38D000, v38, v39, "Can't access database", v40, 2u);
        MEMORY[0x1E12B3DA0](v40, -1, -1);
      }

      *v24 = a1;
      *(v24 + 1) = 0;
      v24[16] = 1;
      v41 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);

      sub_1DD4D6E78(v24);
    }
  }

  return sub_1DD390754(v24, &qword_1ECCDDCF0, &qword_1DD654738);
}

uint64_t sub_1DD4D8FE0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v140 = *v3;
  v8 = sub_1DD63CE68();
  v137 = *(v8 - 8);
  v138 = v8;
  v9 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v136 = &v130[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v133 = &v130[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v130[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v135 = &v130[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v130[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v130[-v22];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v130[-v25];
  v27 = sub_1DD63D078();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v130[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v139 = &v130[-v34];
  if (sub_1DD3CC020(a1) > a2)
  {
    sub_1DD408BFC(a2);
    v132 = a2;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x1E12B2C10](a2);
    }

    else
    {
      v35 = *(a1 + 8 * a2 + 32);
    }

    v37 = v35[5];
    v36 = v35[6];
    __swift_project_boxed_opaque_existential_1(v35 + 2, v37);
    v38 = (*(v36 + 8))(v37, v36);
    if ((v38 - 2) < 2)
    {
      LODWORD(v40) = a3;
      if (*(v4 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_localDBVersion) < v35[7])
      {
        sub_1DD4D4858(v23);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v138);
        sub_1DD390754(v23, &qword_1ECCDBF78, &unk_1DD644440);
        v39 = a1;
        if (EnumTagSinglePayload != 1)
        {
          if (qword_1EE1632D8 != -1)
          {
            swift_once();
          }

          v83 = sub_1DD63F9F8();
          __swift_project_value_buffer(v83, qword_1EE16EFE0);

          v84 = sub_1DD63F9D8();
          v85 = sub_1DD640368();

          v86 = os_log_type_enabled(v84, v85);
          v87 = v135;
          if (v86)
          {
            v88 = v35;
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v141 = v90;
            *v89 = 136315138;
            v134 = v88;
            sub_1DD4D468C(v87);
            v91 = v138;
            if (__swift_getEnumTagSinglePayload(v87, 1, v138))
            {
              v92 = 0x296C696E28;
              sub_1DD390754(v87, &qword_1ECCDBF78, &unk_1DD644440);
              v93 = 0xE500000000000000;
            }

            else
            {
              v125 = v137;
              v126 = *(v137 + 16);
              v131 = v40;
              v40 = v136;
              v126(v136, v87, v91);
              sub_1DD390754(v87, &qword_1ECCDBF78, &unk_1DD644440);
              v92 = sub_1DD63CDD8();
              v93 = v127;
              v128 = v40;
              LOBYTE(v40) = v131;
              (*(v125 + 8))(v128, v91);
            }

            v129 = sub_1DD39565C(v92, v93, &v141);

            *(v89 + 4) = v129;
            _os_log_impl(&dword_1DD38D000, v84, v85, "Will retry installing asset at %s", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v90);
            MEMORY[0x1E12B3DA0](v90, -1, -1);
            MEMORY[0x1E12B3DA0](v89, -1, -1);
          }

          else
          {
          }

          goto LABEL_52;
        }

        if (qword_1EE1632D8 != -1)
        {
          swift_once();
        }

        v54 = sub_1DD63F9F8();
        __swift_project_value_buffer(v54, qword_1EE16EFE0);

        v55 = v35;
        v56 = sub_1DD63F9D8();
        v57 = sub_1DD640368();

        v58 = os_log_type_enabled(v56, v57);
        v59 = v134;
        if (v58)
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v141 = v61;
          *v60 = 136315138;
          v62 = v55;
          sub_1DD4D468C(v59);
          v63 = v138;
          if (__swift_getEnumTagSinglePayload(v59, 1, v138))
          {
            v64 = 0x296C696E28;
            sub_1DD390754(v59, &qword_1ECCDBF78, &unk_1DD644440);
            v65 = 0xE500000000000000;
          }

          else
          {
            v119 = v59;
            v120 = v137;
            v121 = *(v137 + 16);
            v131 = v40;
            v40 = v136;
            v121(v136, v119, v63);
            sub_1DD390754(v119, &qword_1ECCDBF78, &unk_1DD644440);
            v64 = sub_1DD63CDD8();
            v65 = v122;
            v123 = v40;
            LOBYTE(v40) = v131;
            (*(v120 + 8))(v123, v138);
          }

          v124 = sub_1DD39565C(v64, v65, &v141);

          *(v60 + 4) = v124;
          _os_log_impl(&dword_1DD38D000, v56, v57, "Purging malformed asset %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v61);
          MEMORY[0x1E12B3DA0](v61, -1, -1);
          MEMORY[0x1E12B3DA0](v60, -1, -1);
        }

        else
        {
          v62 = v55;
        }

        v113 = v62[5];
        v114 = v62[6];
        v115 = v62 + 2;
        goto LABEL_51;
      }

      v39 = a1;
      if (qword_1EE1632D8 != -1)
      {
        swift_once();
      }

      v66 = sub_1DD63F9F8();
      __swift_project_value_buffer(v66, qword_1EE16EFE0);

      v67 = sub_1DD63F9D8();
      v68 = sub_1DD640368();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = v35;
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v141 = v71;
        *v70 = 136315138;
        v134 = v69;
        sub_1DD4D468C(v26);
        v72 = v138;
        if (__swift_getEnumTagSinglePayload(v26, 1, v138))
        {
          v73 = 0x296C696E28;
          sub_1DD390754(v26, &qword_1ECCDBF78, &unk_1DD644440);
          v74 = 0xE500000000000000;
        }

        else
        {
          v101 = v137;
          v102 = *(v137 + 16);
          v131 = v40;
          v40 = v136;
          v102(v136, v26, v72);
          sub_1DD390754(v26, &qword_1ECCDBF78, &unk_1DD644440);
          v103 = v72;
          v73 = sub_1DD63CDD8();
          v74 = v104;
          v105 = v40;
          LOBYTE(v40) = v131;
          (*(v101 + 8))(v105, v103);
        }

        v106 = sub_1DD39565C(v73, v74, &v141);

        *(v70 + 4) = v106;
        _os_log_impl(&dword_1DD38D000, v67, v68, "Purging completed update %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x1E12B3DA0](v71, -1, -1);
        v107 = v70;
        goto LABEL_49;
      }
    }

    else
    {
      v39 = a1;
      LODWORD(v40) = a3;
      if (v38 == 1)
      {
LABEL_52:
        v116 = v132 + 1;
        v51 = v139;
        *v139 = v39;
        *(v51 + 8) = v116;
        *(v51 + 16) = v40 & 1;
        v117 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v51, 0, 1, v117);

        sub_1DD4D6E78(v51);

        return sub_1DD390754(v51, &qword_1ECCDDCF0, &qword_1DD654738);
      }

      if (v38 == 4)
      {
        if (qword_1EE1632D8 != -1)
        {
          swift_once();
        }

        v41 = sub_1DD63F9F8();
        __swift_project_value_buffer(v41, qword_1EE16EFE0);

        v42 = sub_1DD63F9D8();
        v43 = sub_1DD640368();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = v35;
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v141 = v46;
          *v45 = 136315138;
          v134 = v44;
          sub_1DD4D468C(v16);
          v47 = v138;
          if (__swift_getEnumTagSinglePayload(v16, 1, v138))
          {
            v48 = 0x296C696E28;
            sub_1DD390754(v16, &qword_1ECCDBF78, &unk_1DD644440);
            v49 = 0xE500000000000000;
          }

          else
          {
            v94 = v137;
            v95 = *(v137 + 16);
            v131 = v40;
            v40 = v136;
            v95(v136, v16, v47);
            sub_1DD390754(v16, &qword_1ECCDBF78, &unk_1DD644440);
            v48 = sub_1DD63CDD8();
            v49 = v96;
            v97 = v40;
            LOBYTE(v40) = v131;
            (*(v94 + 8))(v97, v47);
          }

          v98 = sub_1DD39565C(v48, v49, &v141);

          *(v45 + 4) = v98;
          _os_log_impl(&dword_1DD38D000, v42, v43, "Purging stuck download %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          MEMORY[0x1E12B3DA0](v46, -1, -1);
          MEMORY[0x1E12B3DA0](v45, -1, -1);

          v35 = v134;
        }

        else
        {
        }

        v99 = v35[5];
        v100 = v35[6];
        __swift_project_boxed_opaque_existential_1(v35 + 2, v99);
        (*(v100 + 40))(v99, v100);
        goto LABEL_50;
      }

      if (qword_1EE1632D8 != -1)
      {
        swift_once();
      }

      v75 = sub_1DD63F9F8();
      __swift_project_value_buffer(v75, qword_1EE16EFE0);

      v67 = sub_1DD63F9D8();
      v76 = sub_1DD640368();

      if (os_log_type_enabled(v67, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v141 = v78;
        *v77 = 136315138;
        v134 = v35;
        v79 = v133;
        sub_1DD4D468C(v133);
        v80 = v138;
        if (__swift_getEnumTagSinglePayload(v79, 1, v138))
        {
          v81 = 0x296C696E28;
          sub_1DD390754(v79, &qword_1ECCDBF78, &unk_1DD644440);
          v82 = 0xE500000000000000;
        }

        else
        {
          v108 = v137;
          v109 = *(v137 + 16);
          v131 = v40;
          v40 = v136;
          v109(v136, v79, v80);
          sub_1DD390754(v79, &qword_1ECCDBF78, &unk_1DD644440);
          v81 = sub_1DD63CDD8();
          v82 = v110;
          v111 = v40;
          LOBYTE(v40) = v131;
          (*(v108 + 8))(v111, v80);
        }

        v112 = sub_1DD39565C(v81, v82, &v141);

        *(v77 + 4) = v112;
        _os_log_impl(&dword_1DD38D000, v67, v76, "Purging odd-state asset %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x1E12B3DA0](v78, -1, -1);
        v107 = v77;
LABEL_49:
        MEMORY[0x1E12B3DA0](v107, -1, -1);

        v35 = v134;
        goto LABEL_50;
      }
    }

LABEL_50:
    v113 = v35[5];
    v114 = v35[6];
    v115 = v35 + 2;
LABEL_51:
    __swift_project_boxed_opaque_existential_1(v115, v113);
    (*(v114 + 48))(v113, v114);
    goto LABEL_52;
  }

  if (a3)
  {
    v50 = [objc_opt_self() now];
    sub_1DD63D048();

    v51 = v139;
    sub_1DD63CF98();
    (*(v28 + 8))(v31, v27);
    v52 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  }

  else
  {
    v52 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
    v51 = v139;
  }

  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v52);
  sub_1DD4D6E78(v51);
  return sub_1DD390754(v51, &qword_1ECCDDCF0, &qword_1DD654738);
}

void sub_1DD4D9ED0(void *a1)
{
  v2 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  if (a1)
  {
    v10 = a1;
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD63F9F8();
    __swift_project_value_buffer(v11, qword_1EE16EFE0);
    v12 = a1;
    v13 = sub_1DD63F9D8();
    v14 = sub_1DD640378();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v15 = 136315138;
      swift_getErrorValue();
      v16 = sub_1DD640D88();
      v18 = sub_1DD39565C(v16, v17, &v26);

      *(v15 + 4) = v18;
      _os_log_impl(&dword_1DD38D000, v13, v14, "Downloading catalog failed: %s", v15, 0xCu);
      v19 = v25;
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
      MEMORY[0x1E12B3DA0](v15, -1, -1);
    }

    v20 = sub_1DD4D65E4();
    swift_storeEnumTagMultiPayload();
    v21 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state;
    swift_beginAccess();
    sub_1DD4DBEF8(v5, v20 + v21);
    swift_endAccess();

    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DD38D000, v22, v23, "setting state to .ready and returning", v24, 2u);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(&v25 - v8, 1, 1, v2);
    sub_1DD4D6E78(v9);
    sub_1DD390754(v9, &qword_1ECCDDCF0, &qword_1DD654738);
  }
}

uint64_t sub_1DD4DA218(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v35 - v8);
  v10 = sub_1DD63D078();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() now];
  sub_1DD63D048();

  v16 = sub_1DD4D65E4();
  v17 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_lastCheck;
  swift_beginAccess();
  (*(v11 + 24))(v16 + v17, v14, v10);
  swift_endAccess();

  v18 = qword_1EE1632D8;
  if (a2)
  {
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1EE16EFE0);
    v20 = a1;
    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640378();
    sub_1DD4DC044(a1, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = a3;
      v24 = v23;
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = sub_1DD640D88();
      v28 = sub_1DD39565C(v26, v27, &v36);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1DD38D000, v21, v22, "Asset query failed: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E12B3DA0](v25, -1, -1);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
    }

    sub_1DD63CF98();
  }

  else
  {

    if (v18 != -1)
    {
      swift_once();
    }

    v29 = sub_1DD63F9F8();
    __swift_project_value_buffer(v29, qword_1EE16EFE0);

    v30 = sub_1DD63F9D8();
    v31 = sub_1DD640358();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = sub_1DD3CC020(a1);
      sub_1DD4DC044(a1, 0);
      _os_log_impl(&dword_1DD38D000, v30, v31, "Found %ld new updates.", v32, 0xCu);
      MEMORY[0x1E12B3DA0](v32, -1, -1);
    }

    else
    {
      sub_1DD4DC044(a1, 0);
    }

    if (sub_1DD3CC020(a1))
    {
      *v9 = a1;
      v9[1] = 0;
    }

    else
    {
      sub_1DD4DC044(a1, 0);
    }
  }

  v33 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v33);
  sub_1DD4D6E78(v9);
  sub_1DD390754(v9, &qword_1ECCDDCF0, &qword_1DD654738);
  return (*(v11 + 8))(v14, v10);
}

void sub_1DD4DA690(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  if (a1)
  {
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD63F9F8();
    __swift_project_value_buffer(v10, qword_1EE16EFE0);
    v11 = a1;
    v12 = sub_1DD63F9D8();
    v13 = sub_1DD640378();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_1DD640D88();
      v18 = sub_1DD39565C(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1DD38D000, v12, v13, "Downloading asset failed: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E12B3DA0](v15, -1, -1);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
    }

    *v9 = a2;
    *(v9 + 1) = 0;
    v9[16] = 1;
    v19 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
    goto LABEL_9;
  }

  if (!__OFADD__(a3, 1))
  {
    *v9 = a2;
    *(v9 + 1) = a3 + 1;
    v19 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);

    sub_1DD4D6E78(v9);
    sub_1DD390754(v9, &qword_1ECCDDCF0, &qword_1DD654738);
    return;
  }

  __break(1u);
}

uint64_t sub_1DD4DA8F0(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1DD63D078();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v33 - v13);
  v15 = qword_1EE1632D8;
  if (a2)
  {
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD63F9F8();
    __swift_project_value_buffer(v16, qword_1EE16EFE0);
    v17 = a1;
    v18 = sub_1DD63F9D8();
    v19 = sub_1DD640378();
    sub_1DD4DC044(a1, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = a3;
      v21 = v20;
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = sub_1DD640D88();
      v25 = sub_1DD39565C(v23, v24, &v34);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1DD38D000, v18, v19, "Asset query failed: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
      MEMORY[0x1E12B3DA0](v21, -1, -1);
    }

    v26 = [objc_opt_self() now];
    sub_1DD63D048();

    sub_1DD63CF98();
    (*(v7 + 8))(v10, v6);
    v27 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  }

  else
  {

    if (v15 != -1)
    {
      swift_once();
    }

    v28 = sub_1DD63F9F8();
    __swift_project_value_buffer(v28, qword_1EE16EFE0);

    v29 = sub_1DD63F9D8();
    v30 = sub_1DD640358();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = sub_1DD3CC020(a1);
      sub_1DD4DC044(a1, 0);
      _os_log_impl(&dword_1DD38D000, v29, v30, "Refreshed %ld updates.", v31, 0xCu);
      MEMORY[0x1E12B3DA0](v31, -1, -1);
    }

    else
    {
      sub_1DD4DC044(a1, 0);
    }

    if (sub_1DD3CC020(a1))
    {
      *v14 = a1;
      v14[1] = 0;
    }

    else
    {
      sub_1DD4DC044(a1, 0);
    }

    v27 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  }

  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v27);
  sub_1DD4D6E78(v14);
  return sub_1DD390754(v14, &qword_1ECCDDCF0, &qword_1DD654738);
}

uint64_t sub_1DD4DAD24()
{
  sub_1DD4DB404(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state);
  v1 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_lastCheck;
  v2 = sub_1DD63D078();
  OUTLINED_FUNCTION_7(v2);
  (*(v3 + 8))(v0 + v1);
  OUTLINED_FUNCTION_6_45(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_requeueFunction);

  OUTLINED_FUNCTION_6_45(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_delayedRequeueFunction);

  OUTLINED_FUNCTION_6_45(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_catalogUpdateFunction);

  OUTLINED_FUNCTION_6_45(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_findUpdatesFunction);

  OUTLINED_FUNCTION_6_45(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_downloadFunction);

  OUTLINED_FUNCTION_6_45(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_installUpdateFunction);
}

uint64_t HolidaysDBUpdater.deinit()
{
  v0 = HolidaysDatabase.deinit();
  sub_1DD4DB404(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state);
  v1 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_lastCheck;
  v2 = sub_1DD63D078();
  OUTLINED_FUNCTION_7(v2);
  (*(v3 + 8))(v0 + v1);
  OUTLINED_FUNCTION_8_40(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_requeueFunction);
  OUTLINED_FUNCTION_8_40(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_delayedRequeueFunction);
  OUTLINED_FUNCTION_8_40(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_catalogUpdateFunction);
  OUTLINED_FUNCTION_8_40(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_findUpdatesFunction);
  OUTLINED_FUNCTION_8_40(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_downloadFunction);
  OUTLINED_FUNCTION_8_40(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_installUpdateFunction);
  return v0;
}

uint64_t HolidaysDBUpdater.__deallocating_deinit()
{
  v0 = *HolidaysDBUpdater.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4DAF00()
{
  v1 = OBJC_IVAR____TtC13SiriInference26HolidaysDBUpdaterOperation____lazy_storage___updater;
  if (*(v0 + OBJC_IVAR____TtC13SiriInference26HolidaysDBUpdaterOperation____lazy_storage___updater))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13SiriInference26HolidaysDBUpdaterOperation____lazy_storage___updater);
  }

  else
  {
    v3 = v0;
    type metadata accessor for HolidaysDBUpdater(0);
    v2 = sub_1DD4D65E4();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t HolidaysDBUpdaterOperation.isReady.getter()
{
  v0 = sub_1DD63D078();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = sub_1DD4DAF00();
  v20 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state;
  swift_beginAccess();
  sub_1DD4DB480(v19 + v20, v18);

  if (swift_getEnumCaseMultiPayload())
  {
    sub_1DD4DB404(v18);
    v21 = 1;
  }

  else
  {
    (*(v3 + 32))(v11, v18, v0);
    v22 = [objc_opt_self() now];
    sub_1DD63D048();

    OUTLINED_FUNCTION_1_69();
    sub_1DD4DBEB0(v23, v24);
    LOBYTE(v22) = sub_1DD63FD68();
    v25 = *(v3 + 8);
    v25(v8, v0);
    v25(v11, v0);
    v21 = v22 ^ 1;
  }

  return v21 & 1;
}

id sub_1DD4DB1BC()
{
  v0 = objc_allocWithZone(swift_getObjectType());

  return [v0 init];
}

Swift::Void __swiftcall HolidaysDBUpdaterOperation.main()()
{
  if (([v0 isCancelled] & 1) == 0)
  {
    sub_1DD4DAF00();
    sub_1DD4D72F0();
  }
}

id HolidaysDBUpdaterOperation.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC13SiriInference26HolidaysDBUpdaterOperation____lazy_storage___updater] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

void *sub_1DD4DB314(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC13SiriInference26HolidaysDBPollingOperation_runDate;
  v7 = sub_1DD63D078();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  if (a2)
  {
    v9 = XPCActivityOperation.init(activity:)(a2);
  }

  else
  {
    v12.receiver = v2;
    v12.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v12, sel_init);
  }

  v10 = v9;
  (*(v8 + 8))(a1, v7);
  return v10;
}

uint64_t sub_1DD4DB404(uint64_t a1)
{
  v2 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD4DB480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL HolidaysDBPollingOperation.isReady.getter()
{
  v1 = sub_1DD63D078();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_4();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = [objc_opt_self() now];
  sub_1DD63D048();

  (*(v4 + 16))(v9, v0 + OBJC_IVAR____TtC13SiriInference26HolidaysDBPollingOperation_runDate, v1);
  OUTLINED_FUNCTION_1_69();
  sub_1DD4DBEB0(v14, v15);
  v16 = sub_1DD63FD68();
  v17 = *(v4 + 8);
  v17(v9, v1);
  v17(v12, v1);
  return (v16 & 1) == 0;
}

void *sub_1DD4DB698()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1DD63D078();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  (*(v9 + 16))(v7 - v6, v0 + OBJC_IVAR____TtC13SiriInference26HolidaysDBPollingOperation_runDate);
  v10 = *(v0 + OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity);
  v11 = objc_allocWithZone(ObjectType);
  swift_unknownObjectRetain();
  return sub_1DD4DB314(v8, v10);
}

Swift::Void __swiftcall HolidaysDBPollingOperation.main()()
{
  if ((sub_1DD6395C4() & 1) == 0)
  {
    type metadata accessor for HolidaysDBUpdater(0);
    sub_1DD4D65E4();
    sub_1DD4D72F0();
  }
}

id HolidaysDBPollingOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1DD4DB8CC()
{
  v1 = OBJC_IVAR____TtC13SiriInference26HolidaysDBPollingOperation_runDate;
  v2 = sub_1DD63D078();
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

id sub_1DD4DB930()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DD4DB9F8()
{
  result = type metadata accessor for HolidaysDBUpdater.UpdaterState(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DD63D078();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DD4DBB2C()
{
  result = sub_1DD63D078();
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

void sub_1DD4DBBD4()
{
  sub_1DD63D078();
  if (v0 <= 0x3F)
  {
    sub_1DD4DBC5C();
    if (v1 <= 0x3F)
    {
      sub_1DD4DBCD0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1DD4DBC5C()
{
  if (!qword_1EE1602D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDDCD8, &qword_1DD654680);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE1602D8);
    }
  }
}

void sub_1DD4DBCD0()
{
  if (!qword_1EE1602E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDDCD8, &qword_1DD654680);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE1602E0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HolidaysDBUpdater.ShouldRetry(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4DBE2C()
{
  result = qword_1ECCDDCE0;
  if (!qword_1ECCDDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDCE0);
  }

  return result;
}

uint64_t sub_1DD4DBEB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD4DBEF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4DBF5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4DBFCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DD4DC044(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1DD4DC0A8()
{
  sub_1DD5D3268(0);
  v1 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD5D2E58();
    if (v0)
    {
      break;
    }

    if (!v2)
    {
      return v1;
    }

    v20 = v2;
    sub_1DD4DD9E4(&v20, &v15);

    v3 = *(&v15 + 1);
    if (*(&v15 + 1))
    {
      v4 = v16;
      v5 = v17;
      v6 = v18;
      v7 = v19;
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v1 + 16);
        sub_1DD3C03FC();
        v1 = v11;
      }

      v8 = *(v1 + 16);
      if (v8 >= *(v1 + 24) >> 1)
      {
        sub_1DD3C03FC();
        v1 = v12;
      }

      *(v1 + 16) = v8 + 1;
      v9 = (v1 + 48 * v8);
      v9[4] = v14;
      v9[5] = v3;
      v9[6] = v4;
      v9[7] = v5;
      v9[8] = v6;
      v9[9] = v7;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DD4DC214()
{
  v13 = MEMORY[0x1E69E7CC0];
  sub_1DD42A2D4();
  v1 = v13;
  sub_1DD5D3268(0);
  while (1)
  {
    sub_1DD5D2E58();
    if (v0)
    {
      break;
    }

    if (!v2)
    {
      return v1;
    }

    if (!*(v2 + 16))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      break;
    }

    sub_1DD4DDC08(v2 + 32, &v8, &qword_1ECCDCF98, &qword_1DD6547F0);
    if (!v9)
    {
      goto LABEL_11;
    }

    sub_1DD3AA4A8(&v8, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    swift_dynamicCast();

    v3 = v11;
    v4 = v12;
    v13 = v1;
    v5 = *(v1 + 16);
    if (v5 >= *(v1 + 24) >> 1)
    {
      sub_1DD42A2D4();
      v1 = v13;
    }

    *(v1 + 16) = v5 + 1;
    v6 = v1 + 16 * v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = v4;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1DD4DC398(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v32 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD64D850;
  *(inited + 32) = swift_getKeyPath();
  v34 = inited + 32;
  KeyPath = swift_getKeyPath();
  v7 = 0;
  result = 0;
  *(inited + 40) = KeyPath;
  v9 = inited & 0xC000000000000001;
  v38 = inited;
  v35 = inited & 0xFFFFFFFFFFFFFF8;
  *&v10 = 134218242;
  v36 = v10;
  v37 = a1;
  while (1)
  {
    v42 = v7;
    if (v9)
    {
      v11 = MEMORY[0x1E12B2C10](result, v38);
      goto LABEL_6;
    }

    if (result >= *(v35 + 16))
    {
      break;
    }

    v11 = *(v34 + 8 * result);

LABEL_6:
    v12 = sub_1DD4DC850(a1, v11);
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v13 = sub_1DD63F9F8();
    v14 = __swift_project_value_buffer(v13, qword_1EE16F068);

    v40 = v14;
    v15 = sub_1DD63F9D8();
    v16 = sub_1DD640368();

    v41 = v16;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v17 = v36;
      *(v17 + 4) = *(v12 + 16);

      *(v17 + 12) = 2080;
      v45[0] = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF8, &qword_1DD6547E8);
      v18 = sub_1DD63FE38();
      v20 = v9;
      v21 = sub_1DD39565C(v18, v19, v46);

      *(v17 + 14) = v21;
      v9 = v20;
      _os_log_impl(&dword_1DD38D000, v15, v41, "HypocorismGenerator found %ld expansions for '%s'", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v39);
      a1 = v37;
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {
    }

    if (*(v12 + 16))
    {
      swift_setDeallocating();
      sub_1DD46CABC();
      return v12;
    }

    v7 = 1;
    result = 1;
    if (v42)
    {
      swift_setDeallocating();
      sub_1DD46CABC();
      sub_1DD4DDC08(a1, v33, &qword_1ECCDBC18, &unk_1DD6459A0);
      v22 = sub_1DD63F9D8();
      v23 = sub_1DD640368();
      if (os_log_type_enabled(v22, v23))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v44 = v26;
        *v25 = 136315138;
        v27 = v33;
        memcpy(v45, v33, sizeof(v45));
        memcpy(v43, v33, sizeof(v43));
        sub_1DD3C9478(v45, v46);
        v28 = ContactQuery.description.getter();
        v30 = v29;
        memcpy(v46, v43, sizeof(v46));
        sub_1DD3C9580(v46);
        sub_1DD390754(v27, &qword_1ECCDBC18, &unk_1DD6459A0);
        v31 = sub_1DD39565C(v28, v30, &v44);

        *(v25 + 4) = v31;
        _os_log_impl(&dword_1DD38D000, v22, v23, "HypocorismGenerator found no available expansions query: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {

        sub_1DD390754(v33, &qword_1ECCDBC18, &unk_1DD6459A0);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4DC850(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v36 = __src;
  memcpy(__srca, __src, sizeof(__srca));
  sub_1DD3C9478(__dst, v41);
  swift_getAtKeyPath();
  memcpy(v41, __srca, 0x108uLL);
  sub_1DD3C9580(v41);
  v5 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v5 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v35 = a2;
    v6 = v2;
    v7 = v2 + *(type metadata accessor for HypocorismGenerator() + 20);
    v8 = StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(v37, v38, 1, 1);

    v9 = *(v8 + 16);

    v10 = 0;
    v11 = (v8 + 40);
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v9 == v10)
      {
        swift_bridgeObjectRelease_n();
        return v12;
      }

      if (v10 >= *(v8 + 16))
      {
        break;
      }

      v14 = *(v11 - 1);
      v13 = *v11;

      v15 = sub_1DD4DCC14(v10, v14, v13, v6, v36, v8, v35);

      v16 = *(v15 + 16);
      v17 = *(v12 + 16);
      if (__OFADD__(v17, v16))
      {
        goto LABEL_25;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v17 + v16 > *(v12 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v12 = v18;
      }

      if (*(v15 + 16))
      {
        v19 = (*(v12 + 24) >> 1) - *(v12 + 16);
        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
        if (v19 < v16)
        {
          goto LABEL_27;
        }

        v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v22 = *(v20 + 72);
        swift_arrayInitWithCopy();

        if (v16)
        {
          v23 = *(v12 + 16);
          v24 = __OFADD__(v23, v16);
          v25 = v23 + v16;
          if (v24)
          {
            goto LABEL_28;
          }

          *(v12 + 16) = v25;
        }
      }

      else
      {

        if (v16)
        {
          goto LABEL_26;
        }
      }

      v11 += 2;
      ++v10;
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
    goto LABEL_29;
  }

  if (qword_1EE165FB0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v26 = sub_1DD63F9F8();
  __swift_project_value_buffer(v26, qword_1EE16F068);

  v27 = sub_1DD63F9D8();
  v28 = sub_1DD640368();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    __srca[0] = v30;
    *v29 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF8, &qword_1DD6547E8);
    v31 = sub_1DD63FE38();
    v33 = sub_1DD39565C(v31, v32, __srca);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_1DD38D000, v27, v28, "HypocorismExpander skipping for '%s' since name value is blank", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E12B3DA0](v30, -1, -1);
    MEMORY[0x1E12B3DA0](v29, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD4DCC14(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1DD4DD0DC();
  v14 = qword_1EE165FB0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD63F9F8();
  __swift_project_value_buffer(v15, qword_1EE16F068);

  v16 = sub_1DD63F9D8();
  v17 = sub_1DD640368();

  if (os_log_type_enabled(v16, v17))
  {
    v32 = a7;
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = a6;
    v33 = v30;
    *v18 = 136315394;
    *(v18 + 4) = sub_1DD39565C(a2, a3, &v33);
    *(v18 + 12) = 2080;
    v19 = MEMORY[0x1E12B2430](v13, MEMORY[0x1E69E6158]);
    v29 = a2;
    v21 = v17;
    v22 = a1;
    v23 = sub_1DD39565C(v19, v20, &v33);

    *(v18 + 14) = v23;
    a1 = v22;
    _os_log_impl(&dword_1DD38D000, v16, v21, "HypocorismGenerator expanded %s to %s", v18, 0x16u);
    swift_arrayDestroy();
    a6 = v31;
    MEMORY[0x1E12B3DA0](v30, -1, -1);
    v24 = v18;
    a7 = v32;
    MEMORY[0x1E12B3DA0](v24, -1, -1);

    a2 = v29;
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v25);
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = a5;
  v28[5] = a6;
  v28[6] = a1;
  v28[7] = a7;
  v26 = sub_1DD471094(MEMORY[0x1E69E7CC0], sub_1DD4DDBE4, v28, v13);

  return v26;
}

uint64_t sub_1DD4DD0DC()
{
  v2 = *v0;
  if (sub_1DD582448())
  {
    v3 = sub_1DD63FE58();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD643F90;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &off_1F58C4E78;
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    sub_1DD4061B8(0xD0000000000000A0, 0x80000001DD66EA90, inited);
    if (v1)
    {

      swift_setDeallocating();
      v7 = inited;
      sub_1DD46CB4C();
    }

    else
    {
      swift_setDeallocating();
      sub_1DD46CB4C();
      v7 = sub_1DD4DC214();
    }
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v8 = sub_1DD63F9F8();
    __swift_project_value_buffer(v8, qword_1EE16F068);
    v9 = sub_1DD63F9D8();
    v10 = sub_1DD640378();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DD38D000, v9, v10, "HypocorismGenerator: could not open hypocorism db", v11, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

void sub_1DD4DD2C0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v31[1] = a8;
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v33 = *(v31[0] - 8);
  v15 = *(v33 + 64);
  v16 = MEMORY[0x1EEE9AC00](v31[0]);
  v32 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v31 - v18;
  v20 = *a2;
  v21 = a2[1];
  v36 = a3;
  v37 = a4;
  v34 = v20;
  v35 = v21;
  sub_1DD3B7F10();
  if (sub_1DD640698())
  {
    sub_1DD4DDC08(a5, v19, &qword_1ECCDBC18, &unk_1DD6459A0);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((a7 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1DD586AF0(a6);
      a6 = v30;
      if ((a7 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(a6 + 16) > a7)
        {
          v22 = a6 + 16 * a7;
          v23 = *(v22 + 40);
          *(v22 + 32) = v20;
          *(v22 + 40) = v21;

          v36 = a6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
          sub_1DD4477A4();
          v24 = sub_1DD63FD58();
          v26 = v25;

          v36 = v24;
          v37 = v26;
          swift_setAtWritableKeyPath();
          v19[*(v31[0] + 36) + 336] = 1;
          v27 = v32;
          sub_1DD4DDC08(v19, v32, &qword_1ECCDBC18, &unk_1DD6459A0);
          sub_1DD3BDF94();
          v28 = *(*a1 + 16);
          sub_1DD3BE158();
          sub_1DD390754(v19, &qword_1ECCDBC18, &unk_1DD6459A0);
          v29 = *a1;
          *(v29 + 16) = v28 + 1;
          sub_1DD4DDCBC(v27, v29 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, &qword_1ECCDBC18, &unk_1DD6459A0);
          *a1 = v29;
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1DD4DD570()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12[-v8];
  __swift_allocate_value_buffer(v7, qword_1EE16F050);
  v10 = __swift_project_value_buffer(v0, qword_1EE16F050);
  sub_1DD628068(0xD000000000000013, v6);
  swift_storeEnumTagMultiPayload();
  sub_1DD4DDCBC(v6, v9, &qword_1ECCDCCA0, &qword_1DD64AED0);
  return sub_1DD4DDCBC(v9, v10, &qword_1ECCDCCA0, &qword_1DD64AED0);
}

uint64_t static HypocorismDB.superSlowFetchEverything()()
{
  result = sub_1DD4409F8(&v3);
  if (!v0)
  {
    sub_1DD4061B8(0xD00000000000003CLL, 0x80000001DD66E9A0, MEMORY[0x1E69E7CC0]);

    v2 = sub_1DD4DC0A8();

    return v2;
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for RunTimeDataDB(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for RunTimeDataDB(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for HypocorismGenerator()
{
  result = qword_1EE162118;
  if (!qword_1EE162118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD4DD908()
{
  sub_1DD4DD98C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StringTokenizer();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD4DD98C()
{
  if (!qword_1EE160500)
  {
    v0 = type metadata accessor for DBLoader();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE160500);
    }
  }
}

uint64_t sub_1DD4DD9E4@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 16) != 3)
  {
    goto LABEL_17;
  }

  sub_1DD4DDC08(v3 + 32, v4, &qword_1ECCDCF98, &qword_1DD6547F0);
  if (!v5)
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_17:
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return result;
  }

  if (*(v3 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    sub_1DD4DDC08(v3 + 72, v4, &qword_1ECCDCF98, &qword_1DD6547F0);
    if (!v5)
    {
LABEL_13:

LABEL_14:
      result = sub_1DD390754(v4, &qword_1ECCDCF98, &qword_1DD6547F0);
      goto LABEL_17;
    }

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
LABEL_16:

      goto LABEL_17;
    }

    if (*(v3 + 16) >= 3uLL)
    {
      sub_1DD4DDC08(v3 + 112, v4, &qword_1ECCDCF98, &qword_1DD6547F0);
      if (v5)
      {
        if (swift_dynamicCast())
        {
        }

        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4DDC08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1DD4DDCBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

unint64_t sub_1DD4DDD28(char a1)
{
  result = 0x54494C51532E4244;
  switch(a1)
  {
    case 1:
    case 2:
    case 71:
      OUTLINED_FUNCTION_1_70();
      result = v11 - 16;
      break;
    case 3:
      result = 0xD000000000000030;
      break;
    case 4:
    case 7:
    case 33:
      OUTLINED_FUNCTION_1_70();
      result = v19 - 8;
      break;
    case 5:
      OUTLINED_FUNCTION_1_70();
      result = v16 - 9;
      break;
    case 6:
    case 17:
      OUTLINED_FUNCTION_1_70();
      result = v17 - 14;
      break;
    case 8:
    case 13:
    case 69:
      OUTLINED_FUNCTION_1_70();
      result = v9 - 7;
      break;
    case 9:
      OUTLINED_FUNCTION_1_70();
      result = v18 - 3;
      break;
    case 10:
    case 20:
    case 32:
    case 68:
      OUTLINED_FUNCTION_1_70();
      result = v34 - 2;
      break;
    case 11:
    case 18:
    case 21:
      OUTLINED_FUNCTION_1_70();
      result = v22 - 1;
      break;
    case 12:
      result = 0xD000000000000030;
      break;
    case 14:
      result = 0xD000000000000030;
      break;
    case 15:
    case 42:
      OUTLINED_FUNCTION_1_70();
      result = v7 - 11;
      break;
    case 16:
    case 28:
    case 31:
      OUTLINED_FUNCTION_1_70();
      result = v27 - 10;
      break;
    case 19:
      result = 0xD000000000000030;
      break;
    case 22:
    case 25:
      OUTLINED_FUNCTION_1_70();
      result = v29 | 1;
      break;
    case 23:
    case 26:
    case 44:
      OUTLINED_FUNCTION_1_70();
      result = v21 | 2;
      break;
    case 24:
      result = 0xD000000000000030;
      break;
    case 27:
      OUTLINED_FUNCTION_1_70();
      result = v26 | 3;
      break;
    case 29:
      OUTLINED_FUNCTION_1_70();
      result = v20 - 6;
      break;
    case 30:
      OUTLINED_FUNCTION_1_70();
      result = v12 - 5;
      break;
    case 34:
      v5 = 13;
      goto LABEL_11;
    case 35:
      OUTLINED_FUNCTION_1_70();
      result = v6 | 0xE;
      break;
    case 36:
      result = 0xD000000000000030;
      break;
    case 37:
    case 39:
      OUTLINED_FUNCTION_1_70();
      result = v28 | 6;
      break;
    case 38:
    case 45:
      OUTLINED_FUNCTION_1_70();
      result = v32 | 7;
      break;
    case 40:
      OUTLINED_FUNCTION_1_70();
      result = v13 | 8;
      break;
    case 41:
      OUTLINED_FUNCTION_1_70();
      result = v24 - 4;
      break;
    case 43:
      v5 = 11;
LABEL_11:
      result = v5 | 0xD000000000000030;
      break;
    case 46:
    case 49:
      return result;
    case 47:
      OUTLINED_FUNCTION_1_70();
      result = v4 - 30;
      break;
    case 48:
    case 56:
      OUTLINED_FUNCTION_1_70();
      result = v8 - 31;
      break;
    case 50:
    case 57:
    case 58:
      OUTLINED_FUNCTION_1_70();
      result = v23 - 21;
      break;
    case 51:
    case 65:
      OUTLINED_FUNCTION_1_70();
      result = v33 - 28;
      break;
    case 52:
      result = 0x6863746170736944;
      break;
    case 53:
    case 54:
      OUTLINED_FUNCTION_1_70();
      result = v30 - 17;
      break;
    case 55:
      OUTLINED_FUNCTION_1_70();
      result = v31 - 24;
      break;
    case 59:
      OUTLINED_FUNCTION_1_70();
      result = v25 - 22;
      break;
    case 60:
      result = 0x727245726568744FLL;
      break;
    case 61:
      OUTLINED_FUNCTION_1_70();
      result = v14 - 18;
      break;
    case 62:
    case 70:
      OUTLINED_FUNCTION_1_70();
      result = v15 - 12;
      break;
    case 63:
      OUTLINED_FUNCTION_1_70();
      result = v10 - 20;
      break;
    case 64:
      result = 0x74756F656D6954;
      break;
    case 66:
      result = 0x6570706172776E55;
      break;
    case 67:
      result = 0x656C69462E4C5255;
      break;
    default:
      OUTLINED_FUNCTION_1_70();
      result = v3 - 15;
      break;
  }

  return result;
}

uint64_t sub_1DD4DE46C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for InferenceError();
  OUTLINED_FUNCTION_4_46();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0xE000000000000000;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a4;
  *(v12 + 64) = a5;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 72) = a6;
  *(v12 + 80) = v13;
  *(v12 + 88) = 1;
  v14 = qword_1EE166510;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v15 = sub_1DD63F9F8();
  __swift_project_value_buffer(v15, qword_1EE16F0C8);
  sub_1DD4DEB78();
  sub_1DD426968();
  swift_allocError();
  *v16 = v12;
  return swift_willThrow();
}

uint64_t sub_1DD4DE56C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v39[0] = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
  type metadata accessor for InferenceError();
  if (swift_dynamicCast())
  {

    v15 = *(v36 + 16);
    v17 = *(v36 + 24);
    v16 = *(v36 + 32);
    v19 = *(v36 + 40);
    v18 = *(v36 + 48);
    v21 = *(v36 + 56);
    v20 = *(v36 + 64);
    v22 = *(v36 + 80);
    v34 = *(v36 + 72);
    v32 = *(v36 + 88);
    OUTLINED_FUNCTION_4_46();
    v23 = swift_allocObject();
    *(v23 + 89) = 0;
    *(v23 + 16) = v15;
    *(v23 + 24) = v17;
    *(v23 + 32) = v16;
    *(v23 + 40) = v19;
    *(v23 + 48) = v18;
    *(v23 + 56) = v21;
    *(v23 + 64) = v20;
    *(v23 + 72) = v34;
    *(v23 + 80) = v22;
    *(v23 + 88) = v32;
    v24 = *(v36 + 89);

    *(v23 + 89) = v24;
  }

  else
  {
    v25 = a1;
    if (swift_dynamicCast())
    {

      v39[0] = v36;
      v39[1] = v37;
      v39[2] = v38;
      v23 = sub_1DD4DE7C0(v39);
    }

    else
    {
      *&v39[0] = a1;
      v26 = a1;
      v27 = sub_1DD63FE38();
      v33 = v28;
      v35 = v27;
      v29 = [objc_opt_self() callStackSymbols];
      v30 = sub_1DD640118();

      OUTLINED_FUNCTION_4_46();
      v23 = swift_allocObject();
      *(v23 + 89) = 0;
      *(v23 + 16) = 60;
      *(v23 + 24) = v35;
      *(v23 + 32) = v33;
      *(v23 + 40) = a3;
      *(v23 + 48) = a4;
      *(v23 + 56) = a5;
      *(v23 + 64) = a6;
      *(v23 + 72) = a7;
      *(v23 + 80) = v30;
      *(v23 + 88) = a2;
    }
  }

  return v23;
}

uint64_t sub_1DD4DE7C0(unsigned __int8 *a1)
{
  v2 = *a1;
  switch(v2)
  {
    case 1:
      v5 = *(a1 + 2);
      if (v5)
      {
        v6 = *(a1 + 1) == 0xD00000000000002ALL && v5 == 0x80000001DD66EC00;
        if (v6 || (sub_1DD640CD8() & 1) != 0)
        {
          v3 = 46;
          goto LABEL_22;
        }
      }

LABEL_19:
      v3 = 46;
      v4 = 2;
      goto LABEL_23;
    case 90:
      v3 = 50;
      goto LABEL_22;
    case 13:
      v3 = 49;
      goto LABEL_22;
    case 14:
      v3 = 47;
      goto LABEL_22;
  }

  if (v2 != 23)
  {
    if (v2 == 80)
    {
      v3 = 51;
      goto LABEL_22;
    }

    if (v2 == 11)
    {
      v3 = 48;
LABEL_22:
      v4 = 1;
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v4 = 0;
  v3 = 46;
LABEL_23:
  v7 = *(a1 + 8);
  v15 = *(a1 + 24);
  v16 = v7;
  v8 = *(a1 + 5);
  sub_1DD4DF5DC(&v16, v14);
  sub_1DD4DF5DC(&v15, v14);

  v9 = sub_1DD47FA08();
  v11 = v10;
  sub_1DD4DF64C(&v16);
  sub_1DD4DF64C(&v15);

  type metadata accessor for InferenceError();
  v12 = swift_allocObject();
  *(v12 + 89) = 0;
  *(v12 + 16) = v3;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0xE000000000000000;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0xE000000000000000;
  *(v12 + 72) = 0;
  *(v12 + 80) = v8;
  *(v12 + 88) = v4;

  sub_1DD4DF64C(&v16);
  sub_1DD4DF64C(&v15);

  return v12;
}

uint64_t sub_1DD4DE96C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 89) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  *(v10 + 80) = a9;
  *(v10 + 88) = a10;
  return v10;
}

uint64_t sub_1DD4DE998()
{
  v1 = v0;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000017, 0x80000001DD66EB80);
  v6 = *(v0 + 16);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](0x3D656C696620, 0xE600000000000000);
  MEMORY[0x1E12B2260](v1[5], v1[6]);
  MEMORY[0x1E12B2260](0x6F6974636E756620, 0xEA00000000003D6ELL);
  MEMORY[0x1E12B2260](v1[7], v1[8]);
  MEMORY[0x1E12B2260](0x3D656E696C20, 0xE600000000000000);
  v7 = *(v0 + 72);
  v2 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v2);

  MEMORY[0x1E12B2260](0x3D67736D20, 0xE500000000000000);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  MEMORY[0x1E12B2260](v4, v3);

  MEMORY[0x1E12B2260](62, 0xE100000000000000);
  return 0;
}

void sub_1DD4DEB1C()
{
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F0C8);

  sub_1DD4DEB78();
}

void sub_1DD4DEB78()
{
  if ((*(v0 + 89) & 1) == 0)
  {
    *(v0 + 89) = 1;
    sub_1DD4DEBE4();
    if (*(v0 + 88))
    {
      if (*(v0 + 88) == 1)
      {

        sub_1DD4DEDE8();
      }

      else
      {
        sub_1DD4DEDE8();

        sub_1DD4DEFCC();
      }
    }
  }
}

void sub_1DD4DEBE4()
{

  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640378();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v18 = v4;
    *v3 = 136446210;
    v5 = sub_1DD4DE998();
    v7 = sub_1DD39565C(v5, v6, &v18);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1DD38D000, v1, v2, "%{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  v8 = *(v0 + 80);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      v13 = sub_1DD63F9D8();
      v14 = sub_1DD640378();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v18 = v16;
        *v15 = 136446210;
        v17 = sub_1DD39565C(v12, v11, &v18);

        *(v15 + 4) = v17;
        _os_log_impl(&dword_1DD38D000, v13, v14, "%{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

void sub_1DD4DEDE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD18, &qword_1DD6549F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = 0x6449726F727265;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_1DD4DDD28(*(v0 + 16));
  *(inited + 56) = v2;
  *(inited + 64) = 3;
  *(inited + 72) = 1701603686;
  *(inited + 80) = 0xE400000000000000;
  v3 = *(v0 + 48);
  *(inited + 88) = *(v0 + 40);
  *(inited + 96) = v3;
  *(inited + 104) = 3;
  *(inited + 112) = 0x6E6F6974636E7566;
  *(inited + 120) = 0xE800000000000000;
  v4 = *(v0 + 64);
  *(inited + 128) = *(v0 + 56);
  *(inited + 136) = v4;
  *(inited + 144) = 3;
  *(inited + 152) = 1701734764;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = *(v0 + 72);
  *(inited + 176) = 0;
  *(inited + 184) = 0;

  sub_1DD63FC88();
  MEMORY[0x1E12B2260](0x636E657265666E49, 0xEE00726F72724565);
  v5 = sub_1DD63FDA8();

  CoreAnalyticsMetric.eventPayload()();
  OUTLINED_FUNCTION_15_2();

  sub_1DD395950();
  v6 = sub_1DD63FC48();

  AnalyticsSendEvent();
}

void sub_1DD4DEFCC()
{
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v1 = sub_1DD63F9F8();
  __swift_project_value_buffer(v1, qword_1EE16F0C8);
  OUTLINED_FUNCTION_15_2();

  oslog = sub_1DD63F9D8();
  v2 = sub_1DD640388();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446210;
    v5 = sub_1DD4DE998();
    sub_1DD39565C(v5, v6, &v8);
    OUTLINED_FUNCTION_15_2();

    *(v3 + 4) = v0;
    _os_log_impl(&dword_1DD38D000, oslog, v2, "Simulating crash for InferenceError: %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }
}

uint64_t sub_1DD4DF10C()
{
  sub_1DD640D18();
  OUTLINED_FUNCTION_15_2();

  if (v0 >= 0x48)
  {
    return 72;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD4DF180@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD4DF10C();
  *a2 = result;
  return result;
}

unint64_t sub_1DD4DF1B0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD4DDD28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *InferenceError.deinit()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  return v0;
}

uint64_t InferenceError.__deallocating_deinit()
{
  InferenceError.deinit();
  OUTLINED_FUNCTION_4_46();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for InferenceError.MeasurementKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for InferenceError.ErrorId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xB9)
  {
    if (a2 + 71 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 71) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 72;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x48;
  v5 = v6 - 72;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InferenceError.ErrorId(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 71 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 71) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xB9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xB8)
  {
    v6 = ((a2 - 185) >> 8) + 1;
    *result = a2 + 71;
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
          *result = a2 + 71;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4DF530()
{
  result = qword_1ECCDDD08;
  if (!qword_1ECCDDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD08);
  }

  return result;
}

unint64_t sub_1DD4DF588()
{
  result = qword_1ECCDDD10;
  if (!qword_1ECCDDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD10);
  }

  return result;
}

uint64_t sub_1DD4DF5DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4DF64C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id INPerson.toContactQuery()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD63CD18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v9 = sub_1DD63F9F8();
  __swift_project_value_buffer(v9, qword_1EE16F068);
  v10 = sub_1DD63F9D8();
  v11 = sub_1DD640368();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DD38D000, v10, v11, "converting INPerson to ContactQuery", v12, 2u);
    MEMORY[0x1E12B3DA0](v12, -1, -1);
  }

  v83 = [v2 isMe];
  v81 = sub_1DD3CA460(v2, &selRef_contactIdentifier);
  v82 = v13;
  v14 = [v2 nameComponents];
  if (v14)
  {
    v15 = v14;
    sub_1DD63CCC8();

    v16 = sub_1DD63CC68();
    v18 = 0xE000000000000000;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v78 = v19;
    if (v17)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    v80 = v20;
    v21 = sub_1DD63CC08();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v76 = v23;
    if (v22)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    v79 = v24;
    v25 = sub_1DD63CC48();
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    v74 = v27;
    if (v26)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0;
    }

    v77 = v28;
    v29 = sub_1DD63CC28();
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    v72 = v31;
    if (v30)
    {
      v32 = v29;
    }

    else
    {
      v32 = 0;
    }

    v75 = v32;
    v33 = sub_1DD63CC88();
    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    v73 = v35;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    v71 = v36;
    v37 = sub_1DD63CCD8();
    v39 = v38;
    (*(v5 + 8))(v8, v4);
    if (v39)
    {
      v70 = 0;
      goto LABEL_41;
    }

    v70 = 0;
    v37 = 0;
  }

  else
  {
    v40 = [v2 displayName];
    v70 = sub_1DD63FDD8();
    v18 = v41;

    v79 = 0;
    v80 = 0;
    v37 = 0;
    v71 = 0xE000000000000000;
    v72 = 0xE000000000000000;
    v73 = 0;
    v74 = 0xE000000000000000;
    v75 = 0;
    v76 = 0xE000000000000000;
    v77 = 0;
    v78 = 0xE000000000000000;
  }

  v39 = 0xE000000000000000;
LABEL_41:
  v42 = [v2 relationship];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1DD4DFB58(v42);
    v68 = v45;
    v69 = v44;

    sub_1DD4178B4(0, 0, 0);
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  result = [v2 personHandle];
  v47 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v48 = result;
    sub_1DD4085DC([result type], &v84);
    v49 = v84;
    v50 = [v48 label];
    if (v50)
    {
      v51 = v50;
      v52 = sub_1DD4E0314(v51);
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0xE000000000000000;
    }

    v56 = sub_1DD3CA460(v48, &selRef_value);
    v57 = v58;

    if (!v57)
    {
      v56 = 0;
      v57 = 0xE000000000000000;
    }

    result = sub_1DD3FAA54(0, 0, 0);
    v55 = MEMORY[0x1E69E7CC0];
    v47 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v49 = 0;
    v52 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
  }

  v59 = v81;
  v60 = v82;
  if (!v82)
  {
    v59 = 0;
    v60 = 0xE000000000000000;
  }

  *a1 = v59;
  *(a1 + 8) = v60;
  *(a1 + 16) = v83;
  *(a1 + 24) = v70;
  *(a1 + 32) = v18;
  v61 = v78;
  *(a1 + 40) = v80;
  *(a1 + 48) = v61;
  v62 = v76;
  *(a1 + 56) = v79;
  *(a1 + 64) = v62;
  v63 = v74;
  *(a1 + 72) = v77;
  *(a1 + 80) = v63;
  v64 = v72;
  *(a1 + 88) = v75;
  *(a1 + 96) = v64;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  v65 = v71;
  *(a1 + 120) = v73;
  *(a1 + 128) = v65;
  *(a1 + 136) = v37;
  *(a1 + 144) = v39;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0xE000000000000000;
  v66 = v68;
  v67 = v69;
  *(a1 + 168) = 0;
  *(a1 + 176) = v67;
  *(a1 + 184) = v66;
  *(a1 + 192) = v49;
  *(a1 + 200) = v52;
  *(a1 + 208) = v54;
  *(a1 + 216) = v55;
  *(a1 + 224) = v56;
  *(a1 + 232) = v57;
  *(a1 + 240) = v47;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  return result;
}

uint64_t sub_1DD4DFB58(void *a1)
{
  v2 = *MEMORY[0x1E696E640];
  v3 = sub_1DD63FDD8();
  v5 = v4;
  if (v3 == sub_1DD63FDD8() && v5 == v6)
  {

    goto LABEL_72;
  }

  v8 = sub_1DD640CD8();

  if (v8)
  {
LABEL_72:
    v102 = MEMORY[0x1E695C720];
LABEL_73:
    v103 = *v102;
    goto LABEL_74;
  }

  v9 = *MEMORY[0x1E696E658];
  v10 = sub_1DD63FDD8();
  v12 = v11;
  if (v10 == sub_1DD63FDD8() && v12 == v13)
  {

    goto LABEL_78;
  }

  v15 = sub_1DD640CD8();

  if (v15)
  {
LABEL_78:
    v102 = MEMORY[0x1E695C870];
    goto LABEL_73;
  }

  v16 = *MEMORY[0x1E696E660];
  v17 = sub_1DD63FDD8();
  v19 = v18;
  if (v17 == sub_1DD63FDD8() && v19 == v20)
  {

    goto LABEL_80;
  }

  v22 = sub_1DD640CD8();

  if (v22)
  {
LABEL_80:
    v102 = MEMORY[0x1E695C8F8];
    goto LABEL_73;
  }

  v23 = *MEMORY[0x1E696E628];
  v24 = sub_1DD63FDD8();
  v26 = v25;
  if (v24 == sub_1DD63FDD8() && v26 == v27)
  {

    goto LABEL_82;
  }

  v29 = sub_1DD640CD8();

  if (v29)
  {
LABEL_82:
    v102 = MEMORY[0x1E695C540];
    goto LABEL_73;
  }

  v30 = *MEMORY[0x1E696E670];
  v31 = sub_1DD63FDD8();
  v33 = v32;
  if (v31 == sub_1DD63FDD8() && v33 == v34)
  {

    goto LABEL_84;
  }

  v36 = sub_1DD640CD8();

  if (v36)
  {
LABEL_84:
    v102 = MEMORY[0x1E695C970];
    goto LABEL_73;
  }

  v37 = *MEMORY[0x1E696E630];
  v38 = sub_1DD63FDD8();
  v40 = v39;
  if (v38 == sub_1DD63FDD8() && v40 == v41)
  {

    goto LABEL_86;
  }

  v43 = sub_1DD640CD8();

  if (v43)
  {
LABEL_86:
    v102 = MEMORY[0x1E695C590];
    goto LABEL_73;
  }

  v44 = *MEMORY[0x1E696E648];
  v45 = sub_1DD63FDD8();
  v47 = v46;
  if (v45 == sub_1DD63FDD8() && v47 == v48)
  {

    goto LABEL_88;
  }

  v50 = sub_1DD640CD8();

  if (v50)
  {
LABEL_88:
    v102 = MEMORY[0x1E695C760];
    goto LABEL_73;
  }

  v51 = *MEMORY[0x1E696E680];
  v52 = sub_1DD63FDD8();
  v54 = v53;
  if (v52 == sub_1DD63FDD8() && v54 == v55)
  {

    goto LABEL_90;
  }

  v57 = sub_1DD640CD8();

  if (v57)
  {
LABEL_90:
    v102 = MEMORY[0x1E695C9E0];
    goto LABEL_73;
  }

  v58 = *MEMORY[0x1E696E668];
  v59 = sub_1DD63FDD8();
  v61 = v60;
  if (v59 == sub_1DD63FDD8() && v61 == v62)
  {

    goto LABEL_92;
  }

  v64 = sub_1DD640CD8();

  if (v64)
  {
LABEL_92:
    v102 = MEMORY[0x1E695C950];
    goto LABEL_73;
  }

  v65 = *MEMORY[0x1E696E620];
  v66 = sub_1DD63FDD8();
  v68 = v67;
  if (v66 == sub_1DD63FDD8() && v68 == v69)
  {

    goto LABEL_94;
  }

  v71 = sub_1DD640CD8();

  if (v71)
  {
LABEL_94:
    v102 = MEMORY[0x1E695C4C0];
    goto LABEL_73;
  }

  v72 = *MEMORY[0x1E696E650];
  v73 = sub_1DD63FDD8();
  v75 = v74;
  if (v73 == sub_1DD63FDD8() && v75 == v76)
  {

    goto LABEL_96;
  }

  v78 = sub_1DD640CD8();

  if (v78)
  {
LABEL_96:
    v102 = MEMORY[0x1E695C868];
    goto LABEL_73;
  }

  v79 = *MEMORY[0x1E696E678];
  v80 = sub_1DD63FDD8();
  v82 = v81;
  if (v80 == sub_1DD63FDD8() && v82 == v83)
  {

    goto LABEL_98;
  }

  v85 = sub_1DD640CD8();

  if (v85)
  {
LABEL_98:
    v102 = MEMORY[0x1E695C9C0];
    goto LABEL_73;
  }

  v86 = *MEMORY[0x1E696E638];
  v87 = sub_1DD63FDD8();
  v89 = v88;
  if (v87 == sub_1DD63FDD8() && v89 == v90)
  {

    goto LABEL_100;
  }

  v92 = sub_1DD640CD8();

  if (v92)
  {
LABEL_100:
    v102 = MEMORY[0x1E695C658];
    goto LABEL_73;
  }

  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v93 = sub_1DD63F9F8();
  __swift_project_value_buffer(v93, qword_1EE16F068);
  v94 = a1;
  v95 = sub_1DD63F9D8();
  v96 = sub_1DD640378();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v105 = v98;
    *v97 = 136315138;
    v99 = sub_1DD63FDD8();
    v101 = sub_1DD39565C(v99, v100, &v105);

    *(v97 + 4) = v101;
    _os_log_impl(&dword_1DD38D000, v95, v96, "unhandled INPersonRelationship: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v98);
    MEMORY[0x1E12B3DA0](v98, -1, -1);
    MEMORY[0x1E12B3DA0](v97, -1, -1);
  }

LABEL_74:

  return sub_1DD63FDD8();
}

uint64_t sub_1DD4E0314(void *a1)
{
  v2 = *MEMORY[0x1E696E5D0];
  v3 = sub_1DD63FDD8();
  v5 = v4;
  if (v3 == sub_1DD63FDD8() && v5 == v6)
  {

    goto LABEL_57;
  }

  v8 = sub_1DD640CD8();

  if (v8)
  {
LABEL_57:
    v81 = MEMORY[0x1E695CB60];
LABEL_58:
    v82 = *v81;
    goto LABEL_59;
  }

  v9 = *MEMORY[0x1E696E608];
  v10 = sub_1DD63FDD8();
  v12 = v11;
  if (v10 == sub_1DD63FDD8() && v12 == v13)
  {

    goto LABEL_63;
  }

  v15 = sub_1DD640CD8();

  if (v15)
  {
LABEL_63:
    v81 = MEMORY[0x1E695CBD8];
    goto LABEL_58;
  }

  v16 = *MEMORY[0x1E696E618];
  v17 = sub_1DD63FDD8();
  v19 = v18;
  if (v17 == sub_1DD63FDD8() && v19 == v20)
  {

    goto LABEL_65;
  }

  v22 = sub_1DD640CD8();

  if (v22)
  {
LABEL_65:
    v81 = MEMORY[0x1E695CBC0];
    goto LABEL_58;
  }

  v23 = *MEMORY[0x1E696E5E8];
  v24 = sub_1DD63FDD8();
  v26 = v25;
  if (v24 == sub_1DD63FDD8() && v26 == v27)
  {

    goto LABEL_67;
  }

  v29 = sub_1DD640CD8();

  if (v29)
  {
LABEL_67:
    v81 = MEMORY[0x1E695CB90];
    goto LABEL_58;
  }

  v30 = *MEMORY[0x1E696E5E0];
  v31 = sub_1DD63FDD8();
  v33 = v32;
  if (v31 == sub_1DD63FDD8() && v33 == v34)
  {

    goto LABEL_69;
  }

  v36 = sub_1DD640CD8();

  if (v36)
  {
LABEL_69:
    v81 = MEMORY[0x1E695CB88];
    goto LABEL_58;
  }

  v37 = *MEMORY[0x1E696E5D8];
  v38 = sub_1DD63FDD8();
  v40 = v39;
  if (v38 == sub_1DD63FDD8() && v40 == v41)
  {

    goto LABEL_71;
  }

  v43 = sub_1DD640CD8();

  if (v43)
  {
LABEL_71:
    v81 = MEMORY[0x1E695CB78];
    goto LABEL_58;
  }

  v44 = *MEMORY[0x1E696E610];
  v45 = sub_1DD63FDD8();
  v47 = v46;
  if (v45 == sub_1DD63FDD8() && v47 == v48)
  {

    goto LABEL_73;
  }

  v50 = sub_1DD640CD8();

  if (v50)
  {
LABEL_73:
    v81 = MEMORY[0x1E695CBB8];
    goto LABEL_58;
  }

  v51 = *MEMORY[0x1E696E5F8];
  v52 = sub_1DD63FDD8();
  v54 = v53;
  if (v52 == sub_1DD63FDD8() && v54 == v55)
  {

    goto LABEL_75;
  }

  v57 = sub_1DD640CD8();

  if (v57)
  {
LABEL_75:
    v81 = MEMORY[0x1E695CBA0];
    goto LABEL_58;
  }

  v58 = *MEMORY[0x1E696E5F0];
  v59 = sub_1DD63FDD8();
  v61 = v60;
  if (v59 == sub_1DD63FDD8() && v61 == v62)
  {

    goto LABEL_77;
  }

  v64 = sub_1DD640CD8();

  if (v64)
  {
LABEL_77:
    v81 = MEMORY[0x1E695CB68];
    goto LABEL_58;
  }

  v65 = *MEMORY[0x1E696E600];
  v66 = sub_1DD63FDD8();
  v68 = v67;
  if (v66 == sub_1DD63FDD8() && v68 == v69)
  {

    goto LABEL_79;
  }

  v71 = sub_1DD640CD8();

  if (v71)
  {
LABEL_79:
    v81 = MEMORY[0x1E695CBC8];
    goto LABEL_58;
  }

  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v72 = sub_1DD63F9F8();
  __swift_project_value_buffer(v72, qword_1EE16F068);
  v73 = a1;
  v74 = sub_1DD63F9D8();
  v75 = sub_1DD640378();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v84 = v77;
    *v76 = 136315138;
    v78 = sub_1DD63FDD8();
    v80 = sub_1DD39565C(v78, v79, &v84);

    *(v76 + 4) = v80;
    _os_log_impl(&dword_1DD38D000, v74, v75, "unhandled INPersonHandleLabel: %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v77);
    MEMORY[0x1E12B3DA0](v77, -1, -1);
    MEMORY[0x1E12B3DA0](v76, -1, -1);
  }

LABEL_59:

  return sub_1DD63FDD8();
}

id sub_1DD4E099C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1DD4E0A00(a3);
  v6 = objc_allocWithZone(MEMORY[0x1E696E960]);

  return [v6 initWithInterval:v5 frequency:a1 weeklyRecurrenceDays:a2];
}
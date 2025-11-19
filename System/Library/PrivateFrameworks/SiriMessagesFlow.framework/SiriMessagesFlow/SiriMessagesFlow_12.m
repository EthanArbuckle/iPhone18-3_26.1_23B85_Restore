id sub_267C8E0F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v11 = sub_267EF8AE8();
  v12 = OUTLINED_FUNCTION_58(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v19 = v18 - v17;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = sub_267EF8A08();
  v21 = __swift_project_value_buffer(v20, qword_280240FB0);

  v60 = v21;
  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_48();
    v58 = v19;
    v25 = v24;
    v26 = OUTLINED_FUNCTION_52();
    v57 = v11;
    v27 = v3;
    v28 = v14;
    v29 = v26;
    v61[0] = v26;
    *v25 = 136315138;
    v30 = sub_267EF66B8();
    v32 = sub_267BA33E8(v30, v31, v61);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_267B93000, v22, v23, "#SiriGeneratedResponseProvider: fetchSiriGeneratedResults %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v14 = v28;
    v3 = v27;
    v11 = v57;
    OUTLINED_FUNCTION_32_0();
    v19 = v58;
    OUTLINED_FUNCTION_32_0();
  }

  sub_267B9AFEC(v3 + 16, v61);
  v33 = v62;
  v34 = v63;
  __swift_project_boxed_opaque_existential_0(v61, v62);
  sub_267EBD060(a1, v33, v34);
  v36 = v35;
  __swift_destroy_boxed_opaque_existential_0(v61);
  sub_267BBE6E0(v36, v10);

  OUTLINED_FUNCTION_8_7(v10);
  if (v37)
  {
    sub_267B9FF34(v10, &qword_2802294B0, &qword_267F001F0);

    v38 = sub_267EF89F8();
    v39 = sub_267EF95D8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_48();
      v41 = OUTLINED_FUNCTION_52();
      v61[0] = v41;
      *v40 = 136315138;
      v42 = sub_267EF66B8();
      v44 = sub_267BA33E8(v42, v43, v61);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_267B93000, v38, v39, "#SiriGeneratedResponseProvider: SRR did not return entity of type %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    return 0;
  }

  (*(v14 + 32))(v19, v10, v11);
  v45 = sub_267EF66B8();
  v47 = sub_267C8D854(v19, v59, v45, v46);

  if (!v47)
  {
    v48 = sub_267EF89F8();
    v49 = sub_267EF95D8();
    if (os_log_type_enabled(v48, v49))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v50, v51, v52, v53, v54, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    (*(v14 + 8))(v19, v11);
    return 0;
  }

  (*(v14 + 8))(v19, v11);
  return v47;
}

uint64_t sub_267C8E518(char *a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  v80 = a2;
  v81 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_17(v7, v71);
  v77 = sub_267EF2E38();
  v8 = OUTLINED_FUNCTION_58(v77);
  v75 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v74 = v13 - v12;
  v79 = sub_267EF27C8();
  v14 = OUTLINED_FUNCTION_58(v79);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v21 = v20 - v19;
  v22 = sub_267EF27D8();
  v23 = OUTLINED_FUNCTION_58(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  v30 = v29 - v28;
  v31 = sub_267EF27F8();
  v32 = OUTLINED_FUNCTION_18(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_0_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v38);
  v40 = &v71 - v39;
  v41 = sub_267EF28A8();
  v42 = OUTLINED_FUNCTION_58(v41);
  v72 = v43;
  v73 = v42;
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v42);
  v48 = &v71 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v71 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v71 - v52;
  v54 = sub_267EF2BA8();
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v54);
  (*(v25 + 104))(v30, *MEMORY[0x277CC8BB0], v22);
  (*(v16 + 104))(v21, *MEMORY[0x277CC8B98], v79);

  sub_267EF27E8();
  sub_267EF2888();
  v81 = v48;
  v56 = v72;
  v55 = v73;
  v57 = v75;
  v58 = v76;
  v59 = v74;
  v60 = v77;
  v61 = v78;
  OUTLINED_FUNCTION_8_7(v78);
  if (v65)
  {
    sub_267EF2D38();
    v62 = v57;
    v63 = v51;
    v64 = v81;
LABEL_6:
    sub_267D5D6C0(v59, v63);
    (*(v62 + 8))(v59, v60);
    sub_267BA9F38(0, &qword_28022A068, 0x277CCA898);
    (*(v56 + 16))(v64, v63, v55);
    v67 = sub_267EF9678();
    v68 = [v67 string];

    v69 = sub_267EF9028();
    v70 = *(v56 + 8);
    v70(v63, v55);
    v70(v53, v55);
    return v69;
  }

  sub_267C8EA3C(v61, v58);
  result = OUTLINED_FUNCTION_8_7(v58);
  v63 = v51;
  v64 = v81;
  if (!v65)
  {
    v62 = v57;
    (*(v57 + 32))(v59, v58, v60);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_267C8EA3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267C8EAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_120_2(a1, a2, a3);
  if (v5 && (v6 = v4, v7 = sub_267BA9948(), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_267EF6DC8();
    OUTLINED_FUNCTION_22(v11);
    (*(v12 + 16))(v3, v10 + *(v12 + 72) * v9, v11);
    v13 = OUTLINED_FUNCTION_57_0();
    v16 = v11;
  }

  else
  {
    sub_267EF6DC8();
    v13 = OUTLINED_FUNCTION_55();
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void *sub_267C8EB50(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_267C94B6C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_267C8EB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_267BA9948(), (v5 & 1) != 0))
  {
    v6 = (*(a3 + 56) + 24 * v4);
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
  }

  else
  {
    OUTLINED_FUNCTION_114();
  }

  return OUTLINED_FUNCTION_61_0();
}

void sub_267C8EC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_120_2(a1, a2, a3);
  if (v5 && (v6 = v4, sub_267BA9948(), (v7 & 1) != 0))
  {
    v8 = *(v6 + 56);
    sub_267BD6CE0();
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 1;
  }
}

uint64_t sub_267C8EC60(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_267C94C94(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_93_2(v2);
}

uint64_t sub_267C8ECAC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 41;
  }

  v3 = sub_267C94BF0(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 41;
  }
}

void *sub_267C8ECF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_267BA9948();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_267C8ED40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_267BA9948(), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_52_3(v3);
  }

  else
  {
    OUTLINED_FUNCTION_114();
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267C8ED84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_267BA9948();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_93_2(v3);
}

uint64_t sub_267C8EDD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_267C94D90(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_267EF2BA8();
    OUTLINED_FUNCTION_22(v8);
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    v10 = OUTLINED_FUNCTION_57_0();
    v13 = v8;
  }

  else
  {
    sub_267EF2BA8();
    v10 = OUTLINED_FUNCTION_55();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

double sub_267C8EE7C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_267C94BB0(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_267BA2E04(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_267C8EEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_267BA9948();
  if (v4)
  {
    return OUTLINED_FUNCTION_93_2(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267C8EF34(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_267C94E20(), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_52_3(v2);
  }

  else
  {
    OUTLINED_FUNCTION_114();
  }

  return OUTLINED_FUNCTION_61_0();
}

double sub_267C8F094@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_267BA2E04(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_267C8F0E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = a2(0);
  v6 = v5;
  if (v4)
  {
    v7 = *(*(v5 - 8) + 80);
    sub_267C96A98();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v6);
}

uint64_t sub_267C8F198(uint64_t a1)
{
  sub_267C95F70(a1);
  v2 = sub_267C95FD0(a1);
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_66();
  v11 = sub_267C96620(v7, v8, v9, v2, v4, v10);
  sub_267C96654(v2, v4, v6 & 1);
  v12 = OUTLINED_FUNCTION_66();
  if (v11)
  {
    sub_267C96654(v12, v13, v14);
    return 0;
  }

  else
  {
    sub_267C96024(v12, v13, v14, a1);
    v15 = v16;
    v17 = OUTLINED_FUNCTION_66();
    sub_267C96654(v17, v18, v19);
  }

  return v15;
}

id sub_267C8F2A4()
{
  OUTLINED_FUNCTION_53_5();
  if (v2)
  {
    result = OUTLINED_FUNCTION_63_4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_85_3();
    if (!result)
    {
      return result;
    }
  }

  v1(0, (v0 & 0xC000000000000001) == 0, v0);
  if ((v0 & 0xC000000000000001) == 0)
  {
    return *(v0 + 32);
  }

  v4 = OUTLINED_FUNCTION_118_3();
  return MEMORY[0x26D609870](v4);
}

unint64_t sub_267C8F314(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    OUTLINED_FUNCTION_89_4();
    OUTLINED_FUNCTION_92_2();
    v8 = sub_267C95728(v5, v6, v7);
    if ((v2 & 0x1000000000000000) != 0)
    {
      OUTLINED_FUNCTION_92_2();
      v12 = sub_267EF9B58();
    }

    else
    {
      v9 = v8 >> 16;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v22[0] = v3;
        v22[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        v12 = *(v22 + v9);
        if (*(v22 + v9) < 0)
        {
          OUTLINED_FUNCTION_84_2();
          switch(v15)
          {
            case 1:
LABEL_14:
              v12 = v13[1] & 0x3F | ((v12 & 0x1F) << 6);
              break;
            case 2:
LABEL_15:
              v16 = v13[1];
              v17 = v13[2];
              v18 = ((v12 & 0xF) << 12) | ((v16 & 0x3F) << 6);
              goto LABEL_17;
            case 3:
LABEL_16:
              v19 = v13[1];
              v20 = v13[2];
              v17 = v13[3];
              v18 = ((v12 & 0xF) << 18) | ((v19 & 0x3F) << 12) | ((v20 & 0x3F) << 6);
LABEL_17:
              v12 = v18 & 0xFFFFFFC0 | v17 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v10 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          OUTLINED_FUNCTION_66();
          v10 = sub_267EF9BC8();
        }

        v11 = *(v10 + v9);
        v12 = *(v10 + v9);
        if (v11 < 0)
        {
          OUTLINED_FUNCTION_84_2();
          switch(v14)
          {
            case 1:
              goto LABEL_14;
            case 2:
              goto LABEL_15;
            case 3:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  LOBYTE(v22[0]) = v4 == 0;
  return v12 | ((v4 == 0) << 32);
}

uint64_t sub_267C8F4A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_267C8F554()
{
  OUTLINED_FUNCTION_53_5();
  if (v2)
  {
    result = OUTLINED_FUNCTION_63_4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_85_3();
    if (!result)
    {
      return result;
    }
  }

  v1(0, (v0 & 0xC000000000000001) == 0, v0);
  if ((v0 & 0xC000000000000001) != 0)
  {
    v5 = OUTLINED_FUNCTION_118_3();
    return MEMORY[0x26D609870](v5);
  }

  else
  {
    v4 = *(v0 + 32);
  }
}

uint64_t sub_267C8F5C4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 1;
  }

  v1 = *(a1 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_267C8F5FC(uint64_t a1)
{
  result = sub_267BA7F5C(a1);
  if (v5)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v4)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_86_3();
  if (v7)
  {
    return 0;
  }

  sub_267C96814(v1, v6, 0, a1);
  return v8;
}

uint64_t sub_267C8F66C(uint64_t a1)
{
  result = sub_267BA7F5C(a1);
  if (v5)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v4)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_86_3();
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_267C96864(v1, v6, 0, a1);
  }
}

void sub_267C8F6D8(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3 >> 1 == a2)
  {
    OUTLINED_FUNCTION_94_1(a4);
  }

  else if ((a3 >> 1) <= a2)
  {
    __break(1u);
  }

  else
  {
    sub_267B9AFEC(a1 + 40 * a2, a4);
  }
}

uint64_t sub_267C8F714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_267EF5958();
    OUTLINED_FUNCTION_22(v6);
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    v8 = OUTLINED_FUNCTION_57_0();
    v11 = v6;
  }

  else
  {
    sub_267EF5958();
    v8 = OUTLINED_FUNCTION_55();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

double sub_267C8F7C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return OUTLINED_FUNCTION_94_1(a2);
  }

  sub_267B9AFEC(a1 + 40 * v2 - 8, a2);
  return result;
}

uint64_t sub_267C8F7F4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_267C8F89C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C8F8B0()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  type metadata accessor for MessagesSpokenDialogContext();
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  v0[1] = sub_267C96D24;
  v5 = OUTLINED_FUNCTION_2_26();

  return MEMORY[0x2822007B8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267C8F96C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C8F980()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_267BDA880;
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822007B8](v4, v5, v6, 0xD000000000000010, v7, v8, v1, v9);
}

uint64_t sub_267C8FA68(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C8FA7C()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A120, &qword_267F004B0);
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  v0[1] = sub_267C96D24;
  v5 = OUTLINED_FUNCTION_2_26();

  return MEMORY[0x2822007B8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267C8FB44(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C8FB58()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  type metadata accessor for AFSiriCarPlayAnnounceEnablementType(0);
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  v0[1] = sub_267C96D24;
  v5 = OUTLINED_FUNCTION_2_26();

  return MEMORY[0x2822007B8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267C8FC14(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C8FC28()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2C0, &qword_267F00420);
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  v0[1] = sub_267C8FCF0;
  v5 = OUTLINED_FUNCTION_2_26();

  return MEMORY[0x2822007B8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267C8FCF0()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v6 = *(v1 + 16);
  v7 = *(v4 + 8);

  return v7(v6);
}

uint64_t sub_267C8FE14(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C8FE28()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A1C0, &qword_267F00580);
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  v0[1] = sub_267C96D24;
  v5 = OUTLINED_FUNCTION_2_26();

  return MEMORY[0x2822007B8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267C8FEF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_267C8FF10, 0, 0);
}

uint64_t sub_267C8FF10()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D18, &qword_267EFF3E0);
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  v0[1] = sub_267C96D24;
  v5 = OUTLINED_FUNCTION_2_26();

  return MEMORY[0x2822007B8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267C8FFD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C8FFEC()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
  OUTLINED_FUNCTION_14_3();
  *v3 = v4;
  v3[1] = sub_267C900C4;
  v5 = OUTLINED_FUNCTION_2_26();

  return MEMORY[0x2822007B8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267C900C4()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v4 + 8);

  return v8(v6, v7);
}

uint64_t sub_267C901FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C90210()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A188, &qword_267F00510);
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  v0[1] = sub_267C96D24;
  v5 = OUTLINED_FUNCTION_2_26();

  return MEMORY[0x2822007B8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267C902D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C902EC()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A178, &qword_267F004F8);
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  v0[1] = sub_267C96D24;
  v5 = OUTLINED_FUNCTION_2_26();

  return MEMORY[0x2822007B8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_267C903B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_267C71EAC(*(a1 + 16), 0);
  OUTLINED_FUNCTION_87_0();
  sub_267C95A9C();
  v4 = v3;
  sub_267C095D8();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_267C90434(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_267C71EAC(*(a1 + 16), 0);
  OUTLINED_FUNCTION_87_0();
  v7 = sub_267C95BE8(v3, v4, v5, v6);
  sub_267C095D8();
  if (v7 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_267C904B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = *(a1 + 8 * v1 + 24);
  v3 = v2;
  return v2;
}

char *sub_267C904F0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = OUTLINED_FUNCTION_85_3();
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_267BBD0EC(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    v4 = OUTLINED_FUNCTION_66();
    return MEMORY[0x26D609870](v4);
  }

  result = OUTLINED_FUNCTION_63_4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_267C90570()
{
  OUTLINED_FUNCTION_16_9();
  v9 = v0;
  v2 = (*(*(v1 + 8) + 8))();
  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v3, v4);
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v5 = OUTLINED_FUNCTION_6_17();
  v6(v5);
  sub_267BFB6B4();
  OUTLINED_FUNCTION_43();

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v2;
}

uint64_t sub_267C90620(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_12(a1, a2);
  v3 = v2();
  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v4, v5);
  __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v6 = OUTLINED_FUNCTION_6_17();
  v7(v6);
  OUTLINED_FUNCTION_31_8();
  v8 = *(v3 + 248);

  v9 = OUTLINED_FUNCTION_61_0();
  sub_267BB7A18(v9, v10, v8);

  v11 = v24;
  __swift_destroy_boxed_opaque_existential_0(v22);
  if (v11 == 1)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    OUTLINED_FUNCTION_43();

    v14 = sub_267EF89F8();
    v15 = sub_267EF95D8();

    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_48();
      v22[0] = OUTLINED_FUNCTION_55_0();
      *v3 = 136315138;
      v16 = OUTLINED_FUNCTION_3();
      v19 = sub_267BA33E8(v16, v17, v18);

      *(v3 + 4) = v19;
      OUTLINED_FUNCTION_68_1(&dword_267B93000, v20, v21, "#ReadComponentAction processedContent is .differentLanguage(%s)");
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
    }

    return 1;
  }

  else
  {
    if (v11 != 255)
    {
      sub_267BD6C8C(&v23, &qword_280229918);
    }

    return 0;
  }
}

uint64_t sub_267C907E8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_12(a1, a2);
  v3 = v2();
  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v4, v5);
  __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  v6 = OUTLINED_FUNCTION_6_17();
  v7(v6);
  OUTLINED_FUNCTION_31_8();
  v8 = *(v3 + 248);

  v9 = OUTLINED_FUNCTION_61_0();
  sub_267BB7A18(v9, v10, v8);

  v11 = v23;
  __swift_destroy_boxed_opaque_existential_0(v21);
  if (v11 == 1)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v12 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);

    v13 = sub_267EF89F8();
    v14 = sub_267EF95D8();

    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_48();
      v21[0] = OUTLINED_FUNCTION_55_0();
      *v3 = 136315138;
      v15 = OUTLINED_FUNCTION_26_0();
      *(v3 + 4) = sub_267BA33E8(v15, v16, v17);
      OUTLINED_FUNCTION_68_1(&dword_267B93000, v18, v19, "#ReadComponentAction processedContent is .differentLanguage(%s)");
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_29_1();
    }
  }

  else if (v11 != 255)
  {
    sub_267BD6C8C(&v22, &qword_280229918);
  }

  return OUTLINED_FUNCTION_26_0();
}

uint64_t sub_267C909A4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = v4[160];
  v6 = v4[159];
  v7 = v4[158];
  v8 = *v0;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v2 + 259) = v10;

  sub_267BD6C8C(v2 + 112, &qword_28022A310);
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_267C90AE0()
{
  v50 = v0;
  v2 = *(v0 + 1256);
  v3 = *(v0 + 1128);

  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();

  if (OUTLINED_FUNCTION_116_0())
  {
    v6 = *(v0 + 259);
    v7 = *(v0 + 1256);
    v8 = *(v0 + 1248);
    v1 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v49 = v9;
    *v1 = 136315394;
    v10 = sub_267BA33E8(v8, v7, &v49);

    *(v1 + 4) = v10;
    *(v1 + 12) = 1024;
    *(v1 + 14) = v6;
    _os_log_impl(&dword_267B93000, v4, v5, "#ReadComponentAction %s isAvailable : %{BOOL}d", v1, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_18_2();
  }

  else
  {
    v11 = *(v0 + 1256);
  }

  if (*(v0 + 259))
  {
    v12 = swift_task_alloc();
    *(v0 + 1288) = v12;
    *v12 = v0;
    v12[1] = sub_267C90EA0;
    v13 = *(v0 + 960);
    v14 = *(v0 + 856);
    v15 = *(v0 + 848);
    v16 = *(v0 + 840);

    sub_267C927F4(v12, v13, v16, v15);
  }

  else
  {
    v17 = *(v0 + 1240);
    OUTLINED_FUNCTION_43_9();
    *(v0 + 792) = v17;
    v18 = sub_267BAF0DC(v17);
    if (v18)
    {
      while (!__OFSUB__(v18--, 1))
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = OUTLINED_FUNCTION_66();
          MEMORY[0x26D609870](v20);
        }

        else
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v21 = *(v17 + 32 + 8 * v18);
        }

        objc_opt_self();
        swift_dynamicCastObjCClass();
        OUTLINED_FUNCTION_98_4();
        if (v1 || !v18)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    else
    {
LABEL_17:
      v22 = *(v0 + 1232);
      v23 = swift_task_alloc();
      OUTLINED_FUNCTION_9_16(v23);
      OUTLINED_FUNCTION_119_1();

      if (v22)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          OUTLINED_FUNCTION_54_5();
          sub_267C93120();
        }
      }

      OUTLINED_FUNCTION_17_10();
      OUTLINED_FUNCTION_11_17();
      sub_267EF47F8();
      sub_267EF4858();
      v24 = OUTLINED_FUNCTION_56_4();
      v25 = *(MEMORY[0x277D47000](v24) + 88);

      if (!v25)
      {
        v26 = *(v0 + 936);
        v27 = *(v0 + 904);
        v28 = *(v0 + 416);
        __swift_project_boxed_opaque_existential_0((v0 + 384), *(v0 + 408));
        v29 = OUTLINED_FUNCTION_8_16();
        v30(v29);
        OUTLINED_FUNCTION_76();
        sub_267C904F0(v31);
        OUTLINED_FUNCTION_125_1();

        v32 = *(v0 + 448);
        v33 = *(v0 + 456);
        OUTLINED_FUNCTION_40_6();
        sub_267EF3B98();
        *(v0 + 528) = &type metadata for MessagesFeatureFlagsImpl;
        OUTLINED_FUNCTION_69_2(off_2878D1228);

        __swift_destroy_boxed_opaque_existential_0((v0 + 504));
        sub_267EF4158();
        v34 = OUTLINED_FUNCTION_3_19();
        __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
        OUTLINED_FUNCTION_107_0();
        sub_267EF4818();
      }

      OUTLINED_FUNCTION_58_3();
      v38 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v38);
      v39 = sub_267EF4188();
      v40 = OUTLINED_FUNCTION_44_9(v39);
      OUTLINED_FUNCTION_70_4(v40);

      OUTLINED_FUNCTION_51_4();
      v41 = swift_task_alloc();
      v42 = OUTLINED_FUNCTION_83_2(v41);
      *v42 = v43;
      v44 = OUTLINED_FUNCTION_3_21(v42);

      sub_267BCF3A4(v44, v45, v46, v47, v48);
    }
  }
}

uint64_t sub_267C90EA0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 1288);
  *v2 = *v0;
  *(v1 + 1296) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C90F8C()
{
  MEMORY[0x26D608F90]();
  v2 = *((v0[98] & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v0[98] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v2 >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v3 = v0[162];
    sub_267EF9368();
    v4 = v0[98];
    OUTLINED_FUNCTION_43_9();
    v0[99] = v4;
    v5 = sub_267BAF0DC(v4);
    if (!v5)
    {
      break;
    }

    while (!__OFSUB__(v5--, 1))
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = OUTLINED_FUNCTION_66();
        MEMORY[0x26D609870](v7);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        v2 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5 >= v2)
        {
          goto LABEL_22;
        }

        v8 = *(v4 + 32 + 8 * v5);
      }

      objc_opt_self();
      swift_dynamicCastObjCClass();
      OUTLINED_FUNCTION_98_4();
      if (v1 || !v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    OUTLINED_FUNCTION_8_2(v2);
    sub_267EF9328();
  }

LABEL_11:
  v9 = v0[154];
  v10 = swift_task_alloc();
  OUTLINED_FUNCTION_9_16(v10);
  OUTLINED_FUNCTION_119_1();

  if (v9)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_54_5();
      sub_267C93120();
    }
  }

  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_11_17();
  sub_267EF47F8();
  sub_267EF4858();
  v11 = OUTLINED_FUNCTION_56_4();
  v12 = *(MEMORY[0x277D47000](v11) + 88);

  if (!v12)
  {
    v13 = v0[117];
    v14 = v0[113];
    v15 = v0[52];
    __swift_project_boxed_opaque_existential_0(v0 + 48, v0[51]);
    v16 = OUTLINED_FUNCTION_8_16();
    v17(v16);
    OUTLINED_FUNCTION_76();
    sub_267C904F0(v18);
    OUTLINED_FUNCTION_125_1();

    v19 = v0[56];
    v20 = v0[57];
    OUTLINED_FUNCTION_40_6();
    sub_267EF3B98();
    v0[66] = &type metadata for MessagesFeatureFlagsImpl;
    OUTLINED_FUNCTION_69_2(off_2878D1228);

    __swift_destroy_boxed_opaque_existential_0(v0 + 63);
    sub_267EF4158();
    v21 = OUTLINED_FUNCTION_3_19();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    OUTLINED_FUNCTION_107_0();
    sub_267EF4818();
  }

  OUTLINED_FUNCTION_58_3();
  v25 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v25);
  v26 = sub_267EF4188();
  v27 = OUTLINED_FUNCTION_44_9(v26);
  OUTLINED_FUNCTION_70_4(v27);

  OUTLINED_FUNCTION_51_4();
  v28 = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_83_2(v28);
  *v29 = v30;
  v31 = OUTLINED_FUNCTION_3_21(v29);

  return sub_267BCF3A4(v31, v32, v33, v34, v35);
}

uint64_t sub_267C9121C()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = v2[165];
  *v4 = *v1;
  *(v3 + 1328) = v0;

  v6 = v2[164];
  v7 = v2[163];

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C91360()
{
  v1 = v0[149];
  v2 = v0[146];
  v3 = v0[145];

  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  v11 = v0[153];
  v4 = v0[140];
  v5 = v0[139];
  v6 = v0[137];
  v7 = v0[135];
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_100_3();

  return v8();
}

uint64_t sub_267C9149C()
{
  v1 = v0[152];
  v2 = v0[149];
  v3 = v0[146];
  v4 = v0[145];
  v5 = v0[117];
  v6 = v0[116];
  v7 = v0[115];

  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_37_1();
  v10(v9);
  v18 = v0[166];
  v11 = v0[140];
  v12 = v0[139];
  v13 = v0[137];
  v14 = v0[135];
  OUTLINED_FUNCTION_7_18();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_100_3();

  return v15();
}

uint64_t sub_267C915F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_12(a1, a2);
  v3 = v2();
  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v4, v5);
  __swift_project_boxed_opaque_existential_0(v20, v20[3]);
  v6 = OUTLINED_FUNCTION_6_17();
  v7(v6);
  OUTLINED_FUNCTION_31_8();
  v8 = *(v3 + 248);

  v9 = OUTLINED_FUNCTION_61_0();
  sub_267BB7A18(v9, v10, v8);

  if (v22 == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v20);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v11 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);

    v12 = sub_267EF89F8();
    v13 = sub_267EF95D8();

    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_48();
      v20[0] = OUTLINED_FUNCTION_55_0();
      *v3 = 136315138;
      v14 = OUTLINED_FUNCTION_26_0();
      *(v3 + 4) = sub_267BA33E8(v14, v15, v16);
      OUTLINED_FUNCTION_68_1(&dword_267B93000, v17, v18, "#ReadComponentAction processedContent is .differentLanguage(%s)");
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_29_1();
    }
  }

  else
  {
    if (v22 != 255)
    {
      sub_267BD6C8C(&v21, &qword_280229918);
    }

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return OUTLINED_FUNCTION_26_0();
}

uint64_t sub_267C917B0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  HIDWORD(v133) = a6;
  v137 = a5;
  LOBYTE(v10) = a1;
  v140 = sub_267EF2E38();
  v11 = OUTLINED_FUNCTION_58(v140);
  v134 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
LABEL_55:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v136 = a2;
  v17 = sub_267EF8A08();
  v18 = __swift_project_value_buffer(v17, qword_280240FB0);

  v19 = sub_267EF89F8();
  sub_267EF95D8();

  v20 = OUTLINED_FUNCTION_116_0();
  v135 = v18;
  if (v20)
  {
    OUTLINED_FUNCTION_48();
    v21 = OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_108_3(v21);
    *v6 = 136315138;
    v22 = v10;
    v10 = a4;
    if (a3)
    {
      v23 = v136;
    }

    else
    {
      v23 = 0xD000000000000025;
    }

    if (a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = 0x8000000267F14520;
    }

    v25 = sub_267BA33E8(v23, v24, &aBlock);

    *(v6 + 4) = v25;
    a4 = v10;
    LOBYTE(v10) = v22;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_26();
  }

  if ((v10 & 1) == 0 || !a3)
  {

    v34 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_122_1();
    v35 = OUTLINED_FUNCTION_121_1();
    v36 = v136;
    if (v35)
    {
      swift_slowAlloc();
      v37 = OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_108_3(v37);
      *v6 = 67109378;
      *(v6 + 4) = v10 & 1;
      *(v6 + 8) = 2080;
      if (a3)
      {
        v38 = a3;
      }

      else
      {
        v36 = 7104878;
        v38 = 0xE300000000000000;
      }

      v39 = sub_267BA33E8(v36, v38, &aBlock);

      *(v6 + 10) = v39;
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v40, v41, v42, v43, v44, 0x12u);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }

  v31 = objc_opt_self();
  v32 = [v31 preferredLanguages];
  if (!v32)
  {
    sub_267EF92F8();
    v32 = sub_267EF92D8();
  }

  v33 = sub_267EF92F8();
  if (a4)
  {
  }

  else
  {
    v45 = [objc_opt_self() availableLanguages];
    v46 = sub_267EF94B8();

    sub_267C903B4(v46);
    v47 = sub_267EF92D8();

    v48 = [v31 matchedLanguagesFromAvailableLanguages:v47 forPreferredLanguages:v32];

    a4 = sub_267EF92F8();
    v32 = v48;
  }

  v49 = sub_267EF89F8();
  v50 = sub_267EF95D8();

  v51 = os_log_type_enabled(v49, v50);
  v139 = a4;
  if (v51)
  {
    v52 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v52 = 136315394;
    v53 = MEMORY[0x26D608FD0](v33, MEMORY[0x277D837D0]);
    v55 = v54;

    v56 = v53;
    a4 = v139;
    sub_267BA33E8(v56, v55, &aBlock);
    OUTLINED_FUNCTION_88_0();

    *(v52 + 4) = v33;
    *(v52 + 12) = 2080;
    v57 = MEMORY[0x26D608FD0](a4, MEMORY[0x277D837D0]);
    sub_267BA33E8(v57, v58, &aBlock);
    OUTLINED_FUNCTION_88_0();

    *(v52 + 14) = v33;
    OUTLINED_FUNCTION_45();
    _os_log_impl(v59, v60, v61, v62, v52, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);

  v63 = v136;
  v64 = sub_267BFEA28(v136, a3, &selRef_initWithLocaleIdentifier_);

  v65 = sub_267EF89F8();
  a2 = sub_267EF95D8();

  v66 = OUTLINED_FUNCTION_116_0();
  v138 = v64;
  if (v66)
  {
    v67 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v67 = 136315394;
    v68 = [v64 localeIdentifier];
    v69 = sub_267EF9028();
    v71 = v70;

    a4 = v139;
    sub_267BA33E8(v69, v71, &aBlock);
    OUTLINED_FUNCTION_88_0();

    *(v67 + 4) = v69;
    *(v67 + 12) = 2080;
    *(v67 + 14) = sub_267BA33E8(v63, a3, &aBlock);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v72, v73, v74, v75, v76, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  v6 = *(a4 + 16);
  if (!v6)
  {
LABEL_35:

    return 0;
  }

  v77 = 0;
  v78 = (v134 + 8);
  v10 = (a4 + 40);
  while (1)
  {
    if (v77 >= *(a4 + 16))
    {
      __break(1u);
      goto LABEL_55;
    }

    v79 = *(v10 - 1);
    a3 = *v10;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_109();
    sub_267EF2D38();
    a2 = sub_267EF2D98();
    (*v78)(v16, v140);
    v80 = [v138 isEquivalentTo_];

    if (v80)
    {
      break;
    }

LABEL_34:
    ++v77;

    v10 += 2;
    a4 = v139;
    if (v6 == v77)
    {
      goto LABEL_35;
    }
  }

  aBlock = v79;
  v143 = a3;
  LOBYTE(v144) = 2;
  swift_bridgeObjectRetain_n();
  sub_267C5E230(&aBlock, v81, v82, v83, v84, v85, v86, v87, v132, v133, v134);
  a2 = v88;
  sub_267C5E97C(aBlock, v143, v144);
  if ((a2 & 1) == 0)
  {

    goto LABEL_34;
  }

  v90 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_122_1();
  if (OUTLINED_FUNCTION_121_1())
  {
    OUTLINED_FUNCTION_48();
    v91 = OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_108_3(v91);
    *v6 = 136315138;
    v92 = OUTLINED_FUNCTION_109();
    *(v6 + 4) = sub_267BA33E8(v92, v93, v94);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v95, v96, v97, v98, v99, 0xCu);
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_26();
  }

  sub_267EF72E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v100 = OUTLINED_FUNCTION_47_3();
  *(v100 + 16) = xmmword_267EFCA40;
  sub_267BA9F38(0, &unk_28022A2A0, 0x277D61490);
  *(v100 + 32) = sub_267EF95B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A0F0, &qword_267F00450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = 1;
  *(inited + 40) = v79;
  *(inited + 48) = a3;
  type metadata accessor for TTSAssetProperty(0);
  v102 = sub_267BBBD50(&unk_28022A2B0, 255, type metadata accessor for TTSAssetProperty);

  sub_267EF8F28();
  v103 = sub_267EF72D8();

  v104 = v103;
  v105 = sub_267EF89F8();
  v106 = sub_267EF95D8();

  v107 = &selRef_personTypes;
  if (os_log_type_enabled(v105, v106))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v141 = v103;
    aBlock = v109;
    *v108 = 136315394;
    v140 = v104;
    v110 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2C0, &qword_267F00420);
    v111 = sub_267EF9098();
    sub_267BA33E8(v111, v112, &aBlock);
    OUTLINED_FUNCTION_88_0();

    *(v108 + 4) = v102;
    *(v108 + 12) = 2080;
    if (v103)
    {
      v113 = [v110 locallyAvailable];
    }

    else
    {
      v113 = 2;
    }

    LOBYTE(v141) = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A0F8, qword_267F00458);
    v114 = sub_267EF9098();
    v116 = sub_267BA33E8(v114, v115, &aBlock);

    *(v108 + 14) = v116;
    _os_log_impl(&dword_267B93000, v105, v106, "#ReadComponentActionUtils voice %s | ttsVoice.locallyAvailable %s", v108, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();

    v104 = v140;
    v107 = &selRef_personTypes;
  }

  else
  {
  }

  if (v103 && ([v104 v107[103]] & 1) == 0 && (v133 & 0x100000000) != 0)
  {
    v117 = v104;

    v118 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_122_1();
    if (OUTLINED_FUNCTION_121_1())
    {
      OUTLINED_FUNCTION_48();
      v119 = OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_108_3(v119);
      *v107 = 136315138;
      v120 = OUTLINED_FUNCTION_109();
      v123 = sub_267BA33E8(v120, v121, v122);

      *(v107 + 4) = v123;
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v124, v125, v126, v127, v128, 0xCu);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    v146 = nullsub_1;
    v147 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v143 = 1107296256;
    v144 = sub_267C9DA10;
    v145 = &block_descriptor_7;
    v129 = _Block_copy(&aBlock);
    v130 = v117;

    v146 = nullsub_1;
    v147 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v143 = 1107296256;
    v144 = sub_267C9DA7C;
    v145 = &block_descriptor_54;
    v131 = _Block_copy(&aBlock);

    [v130 downloadWithReservation:0 useBattery:1 progress:v129 then:v131];
    _Block_release(v131);
    _Block_release(v129);

    v104 = v117;
  }

  else
  {
  }

  aBlock = v79;
  v143 = a3;
  LOBYTE(v144) = 2;
  ConversationEventStore.setDisabled(event:)();

  sub_267C5E97C(aBlock, v143, v144);
  return 1;
}

id sub_267C92460(void *a1)
{
  v2 = [a1 dialog];
  sub_267BA9F38(0, &qword_2802295A0, 0x277D052C8);
  v3 = sub_267EF92F8();

  v4 = sub_267BAF0DC(v3);
  v5 = 0;
  v41 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D609870](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v1 = (v5 + 1);
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v39 = OUTLINED_FUNCTION_118_3();
      v31 = MEMORY[0x26D609870](v39);
      goto LABEL_20;
    }

    v8 = [v6 fullSpeak];
    v9 = sub_267EF9028();
    v11 = v10;

    OUTLINED_FUNCTION_116_2();
    if (v12)
    {

LABEL_11:
      v16 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v41 + 16);
        sub_267BF4EE8();
        v16 = v21;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v17);
        sub_267BF4EE8();
        v16 = v22;
      }

      *(v16 + 16) = v18 + 1;
      v41 = v16;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v9;
      *(v19 + 40) = v11;
      v5 = v1;
    }

    else
    {

      v13 = [v7 supportingSpeak];
      v9 = sub_267EF9028();
      v11 = v14;

      OUTLINED_FUNCTION_116_2();
      if (v15)
      {
        goto LABEL_11;
      }

      ++v5;
    }
  }

  v23 = OUTLINED_FUNCTION_61_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_30_10();
  sub_267BC7A94(v25, v26, v27);
  v3 = sub_267EF8FC8();
  v4 = v28;

  v1 = a1;
  v29 = [a1 dialog];
  v30 = sub_267EF92F8();

  if (sub_267BAF0DC(v30))
  {
    sub_267BBD0EC(0, (v30 & 0xC000000000000001) == 0, v30);
    if ((v30 & 0xC000000000000001) != 0)
    {
      goto LABEL_25;
    }

    v31 = *(v30 + 32);
LABEL_20:
    v32 = v31;

    v33 = [v32 dialogId];

    v34 = sub_267EF9028();
    v36 = v35;

    goto LABEL_22;
  }

  v34 = 0;
  v36 = 0xE000000000000000;
LABEL_22:
  v37 = sub_267EF92D8();
  [v1 setDialog_];

  sub_267BA9F38(0, &qword_28022A0B0, 0x277D47B10);
  return sub_267E7E88C(v3, v4, v34, v36, 0, 0, 0);
}

uint64_t sub_267C927F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C9280C()
{
  v55 = v0;
  v0[24] = v0[30];
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v48 = *(*(v1 + 8) + 8);
  v49 = *(v1 + 8);
  v4 = v48(v2);
  sub_267B9AFEC(v4 + 432, (v0 + 14));

  v5 = __swift_project_boxed_opaque_existential_0(v0 + 14, v0[17]);
  v6 = sub_267C915F8(v2, v1);
  v7 = *v5;
  v8 = v5[1];
  v0[31] = sub_267CA0920(v6, v9);
  v0[32] = v10;

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);

  v11 = OUTLINED_FUNCTION_26_0();
  v14 = sub_267BFEA28(v11, v12, v13);
  v15 = [v14 languageCode];

  v16 = sub_267EF9028();
  v18 = v17;

  v19 = *(v3 + 72);
  v0[33] = v19;
  if (!v19)
  {

    goto LABEL_7;
  }

  v20 = v19;
  if (sub_267DEAC40() || (v21 = [v20 displayName], sub_267EF9028(), v21, OUTLINED_FUNCTION_109(), sub_267EF9118(), OUTLINED_FUNCTION_122_1(), (v21 & 1) != 0))
  {

LABEL_5:

LABEL_7:
    v22 = v0[32];
    v50 = *(v0 + 15);
    v23 = swift_task_alloc();
    v0[35] = v23;
    *(v23 + 16) = *(v0 + 14);
    *(v23 + 32) = v50;
    *(v23 + 48) = v22;
    OUTLINED_FUNCTION_10(&unk_267F00418);
    v51 = v24;
    v25 = swift_task_alloc();
    v0[36] = v25;
    *v25 = v0;
    OUTLINED_FUNCTION_32_7(v25);

    return v51(sub_267C964BC, v23);
  }

  v27 = v0[28];
  v0[25] = v0[30];
  v29 = v48;
  v28 = v49;
  v30 = (v48)(v27, v49);
  sub_267BEB520(v30 + 152, (v0 + 2));

  v52 = v16;
  v53 = v18;
  v54 = 3;
  sub_267C5E0EC(&v52, v31, v32, v33, v34, v35, v36, v37, v16, v48, v49);
  v39 = v38;
  sub_267C5E97C(v52, v53, v54);
  sub_267B9EF14((v0 + 2));
  if ((v39 & 1) == 0)
  {
    goto LABEL_5;
  }

  v40 = v0[28];
  v0[26] = v0[30];
  v41 = (v29)(v40, v28);
  sub_267B9AFEC(v41 + 432, (v0 + 19));

  v42 = __swift_project_boxed_opaque_existential_0(v0 + 19, v0[22]);
  v43 = *v42;
  v44 = v42[1];
  v45 = swift_task_alloc();
  v0[34] = v45;
  *v45 = v0;
  v45[1] = sub_267C92BAC;
  v46 = OUTLINED_FUNCTION_26_0();

  return sub_267C9DD18(v46, v47, v43, v44);
}

uint64_t sub_267C92BAC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 272);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267C92C90()
{
  OUTLINED_FUNCTION_56();

  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  v1 = *(v0 + 256);
  v6 = *(v0 + 240);
  v2 = swift_task_alloc();
  *(v0 + 280) = v2;
  *(v2 + 16) = *(v0 + 224);
  *(v2 + 32) = v6;
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_10(&unk_267F00418);
  v7 = v3;
  v4 = swift_task_alloc();
  *(v0 + 288) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_32_7(v4);

  return v7(sub_267C964BC, v2);
}

uint64_t sub_267C92D68()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 288);
  v5 = *(v3 + 280);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 296) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C92E6C()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    if ([*(v0 + 296) locallyAvailable])
    {
      v2 = *(v0 + 256);

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v3 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
      v4 = sub_267EF89F8();
      v5 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_27(v5))
      {
        v6 = OUTLINED_FUNCTION_32();
        *v6 = 0;
        OUTLINED_FUNCTION_45();
        _os_log_impl(v7, v8, v9, v10, v6, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v11 = *(v0 + 216);

      sub_267BA9F38(0, &qword_28022A0B0, 0x277D47B10);
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v14 = [v1 primaryLanguage];
      v15 = sub_267EF9028();
      v17 = v16;

      sub_267EF72C8();
      v19 = v18;
      v20 = OUTLINED_FUNCTION_63();
      v24 = sub_267E62098(v20, v21, v15, v17, v22, v19, 0xD00000000000002DLL, v23);

      goto LABEL_14;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v25 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
  v26 = sub_267EF89F8();
  v27 = sub_267EF95C8();
  if (os_log_type_enabled(v26, v27))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    OUTLINED_FUNCTION_26();
  }

  v34 = *(v0 + 248);
  v33 = *(v0 + 256);
  v35 = *(v0 + 216);

  sub_267BA9F38(0, &qword_28022A0B0, 0x277D47B10);
  v24 = sub_267E62098(*(v35 + 16), *(v35 + 24), v34, v33, 0, 0, 0xD00000000000002DLL, 0x8000000267F144A0);
  v36 = *(v0 + 256);
LABEL_14:

  v37 = *(v0 + 8);

  return v37(v24);
}

void sub_267C93120()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v4 = v3;
  v54 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  v52 = v0;
  v53 = v51 - v10;
  v51[1] = v4;
  v51[2] = v2;
  OUTLINED_FUNCTION_3();
  sub_267BD974C(v11, v12);
  v13 = v56[4];
  __swift_project_boxed_opaque_existential_0(v56, v56[3]);
  OUTLINED_FUNCTION_42_7(v13);
  v14 = OUTLINED_FUNCTION_26_0();
  v16 = v15(v14);

  v17 = sub_267BAF0DC(v16);
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (v17 != v18)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D609870](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v20 = *(v16 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v23 = sub_267D60420();
    v25 = v24;

    ++v18;
    if (v25)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = *(v19 + 16);
        sub_267BF4EE8();
        v19 = v30;
      }

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v26);
        sub_267BF4EE8();
        v19 = v31;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v18 = v22;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v56);
  if (*(v19 + 16))
  {
    sub_267BA9F38(0, &qword_28022A0C8, 0x277D47918);
    v32 = *(sub_267C90570() + 128);

    v33 = sub_267EF7C18();
    v35 = v34;

    v36 = sub_267E7E7F0(v33, v35);
    v37 = *MEMORY[0x277CEF108];
    v56[0] = sub_267EF9028();
    v56[1] = v38;
    MEMORY[0x26D608E60](3092282, 0xE300000000000000);
    v55 = v19;
    v39 = OUTLINED_FUNCTION_61_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
    OUTLINED_FUNCTION_30_10();
    sub_267BC7A94(v41, v42, v43);
    sub_267EF8FC8();

    v44 = OUTLINED_FUNCTION_26_0();
    MEMORY[0x26D608E60](v44);

    v45 = v53;
    sub_267EF2B88();

    v46 = sub_267EF2BA8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v46);
    v48 = 0;
    v49 = v54;
    if (EnumTagSinglePayload != 1)
    {
      v48 = sub_267EF2AF8();
      (*(*(v46 - 8) + 8))(v45, v46);
    }

    [v36 setIdentifier_];

    v50 = v36;
  }

  else
  {

    v50 = 0;
    v49 = v54;
  }

  [v49 setContext_];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C934C4()
{
  OUTLINED_FUNCTION_16_9();
  v24[0] = v1;
  v4 = *(v3 + 8);
  v5 = *(v4 + 8);
  v6 = v5();
  v7 = v6;
  v8 = v6[8];
  v9 = v6[11];
  v10 = v6[12];

  v11 = v8;

  [v11 attributes];
  OUTLINED_FUNCTION_75_2();

  if ((v7 & 2) == 0)
  {
    return 0;
  }

  v24[5] = v0;
  (v5)(v2, v4);
  OUTLINED_FUNCTION_10_18();
  sub_267BD974C(v12, v13);
  swift_beginAccess();
  sub_267E86600(v24);
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_0(v24);
  swift_endAccess();

  if (!*(v15 + 16))
  {

    return 0;
  }

  v16 = objc_allocWithZone(MEMORY[0x277CD40E0]);
  v17 = sub_267C94A44(v15, 1);
  OUTLINED_FUNCTION_10_18();
  v18 = *(sub_267C90570() + 128);

  sub_267EF7C18();
  v20 = v19;

  if (v20)
  {
    OUTLINED_FUNCTION_61_0();
    v21 = sub_267EF8FF8();
  }

  else
  {
    v21 = 0;
  }

  [v17 _setLaunchId_];

  sub_267BA9F38(0, &qword_28022BB80, 0x277D473D0);
  OUTLINED_FUNCTION_22_0();
  v22 = sub_267EF9768();

  return v22;
}

uint64_t sub_267C936D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v22[5] = a3;
  v15 = *(a7 + 8);
  v16 = *(v15 + 8);

  v17 = v16(a6, v15);
  sub_267B9AFEC(v17 + 432, v22);

  v18 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v19 = *v18;
  v20 = v18[1];
  sub_267C9EFEC(a4, a5, sub_267C36688, v14);

  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_267C93814()
{
  OUTLINED_FUNCTION_56();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BC4C88;
  OUTLINED_FUNCTION_3();

  return sub_267C938B0();
}

uint64_t sub_267C938B0()
{
  OUTLINED_FUNCTION_12();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = type metadata accessor for ComponentReadingRecord();
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[17] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267C9392C()
{
  v23 = v0;
  v1 = v0[16];
  v19 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  sub_267BD974C(v3, v21);
  v0[10] = v1;
  v18 = v3;
  v4 = *(*(v3 + 8) + 8);
  v5 = OUTLINED_FUNCTION_63();
  v4(v5);
  sub_267BD974C(v3, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v6);
  (*(v7 + 32))(v6, v7);
  sub_267BFB6B4();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v0[11] = v1;
  v8 = OUTLINED_FUNCTION_63();
  v9 = *((v4)(v8) + 88);

  v0[12] = v1;
  v10 = OUTLINED_FUNCTION_63();
  v11 = (v4)(v10);
  v13 = v11[5];
  v12 = v11[6];
  __swift_project_boxed_opaque_existential_0(v11 + 2, v13);
  (*(v12 + 16))(v22, v13, v12);

  sub_267C90620(v2, v18);
  sub_267C6D6D0();
  v14 = swift_task_alloc();
  v0[18] = v14;
  v14[2] = v2;
  v14[3] = v18;
  v14[4] = v1;
  v14[5] = v19;
  OUTLINED_FUNCTION_10(dword_267F00398);
  v20 = v15;
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_267C93B8C;

  return v20(sub_267C944AC, v14);
}

uint64_t sub_267C93B8C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 152);
  v5 = *(v3 + 144);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 160) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C93C90()
{
  v17 = v0;
  v1 = v0[20];
  if (v1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v2 = sub_267EF8A08();
    __swift_project_value_buffer(v2, qword_280240FB0);
    v3 = OUTLINED_FUNCTION_43();
    v4 = sub_267EF89F8();
    v5 = sub_267EF95E8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_48();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v9 = v0[7];
      v8 = v0[8];
      v10 = v0[9];
      v11 = sub_267EF9F68();
      v13 = sub_267BA33E8(v11, v12, &v16);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_267B93000, v4, v5, "#ReadComponentAction Failed to write to ComponentReadingHistory, this is non-fatal. Continuing anyways: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_18_2();
    }

    else
    {
    }
  }

  sub_267BD5F58(v0[17], type metadata accessor for ComponentReadingRecord);

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267C93E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for ComponentReadingRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = *(a6 + 8);
  v15 = *(v14 + 8);

  v16 = v15(a5, v14);
  v18 = v16[15];
  v17 = v16[16];
  v19 = v16[17];

  v20 = v19;

  sub_267C96A98();
  v21 = (v12 + ((*(v11 + 80) + 16) & ~*(v11 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_267C96464();
  v23 = (v22 + v21);
  *v23 = v18;
  v23[1] = v17;
  v23[2] = v20;
  v24 = (v22 + ((v21 + 31) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_267C96D1C;
  v24[1] = v13;

  v25 = v20;

  sub_267C6F590(sub_267C96398, v22, 900.0);
}

uint64_t sub_267C94094()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

uint64_t sub_267C940BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_267C940CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267C93814();
}

uint64_t sub_267C9418C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return j__OUTLINED_FUNCTION_5_10(a1, a2, a3, WitnessTable);
}

void (*sub_267C941F8(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v5[2] = v2;
  v5[3] = a2;
  WitnessTable = swift_getWitnessTable();
  v5[4] = WitnessTable;
  *v5 = sub_267C3698C(a2, WitnessTable);
  v5[1] = v7;
  return sub_267C94288;
}

void sub_267C94288(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v6 = v2[3];
  v5 = v2[4];
  v7 = v2[2];
  if (a2)
  {
    v8 = swift_unknownObjectRetain();
    j__OUTLINED_FUNCTION_5_10(v8, v4, v6, v5);
    v9 = *v2;
    swift_unknownObjectRelease();
  }

  else
  {
    j__OUTLINED_FUNCTION_5_10(v3, v2[1], v2[3], v2[4]);
  }

  free(v2);
}

uint64_t sub_267C9430C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_267C3698C(a1, WitnessTable);
}

uint64_t sub_267C943F0(uint64_t a1, uint64_t a2)
{
  result = sub_267BBBD50(&qword_28022A080, a2, type metadata accessor for DefaultReadComponentAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267C94448(uint64_t a1, uint64_t a2)
{
  result = sub_267BBBD50(&qword_280229258, a2, type metadata accessor for DefaultReadComponentAction);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_267C944B8()
{
  OUTLINED_FUNCTION_56();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_35_9(v2);
  *v0 = v1;
  v0[1] = sub_267BBD07C;

  return sub_267BF4878();
}

uint64_t sub_267C94554()
{
  OUTLINED_FUNCTION_56();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_35_9(v2);
  *v0 = v1;
  v0[1] = sub_267BBD07C;

  return sub_267C93814();
}

void sub_267C94620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  v31 = OUTLINED_FUNCTION_58(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v37 = &a9 - v36;
  (*(v33 + 16))(&a9 - v36, v27, v30);
  v38 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v39 = swift_allocObject();
  (*(v33 + 32))(v39 + v38, v37, v30);
  v25(v23, v39);

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C9474C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A108, &qword_267F00490);
  return sub_267EF93C8();
}

uint64_t sub_267C9479C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A128, &qword_267F004B8);
  return sub_267EF93C8();
}

uint64_t sub_267C947EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A118, &qword_267F004A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_267BD6CE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A110, &qword_267F00498);
  return sub_267EF93C8();
}

uint64_t sub_267C948F8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A1C8, &qword_267F00588);
  return sub_267EF93C8();
}

uint64_t sub_267C94948(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A088, &qword_267F003A8);
  return sub_267EF93C8();
}

uint64_t sub_267C94998()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A198, &qword_267F00538);
  return sub_267EF93C8();
}

uint64_t sub_267C949EC(void *a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  return sub_267EF93C8();
}

id sub_267C94A44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_267EF92D8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithIdentifiers:v4 attribute:a2];

  return v5;
}

uint64_t sub_267C94AB8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_12(a1, a2);
  sub_267EF9028();
  OUTLINED_FUNCTION_74_0();
  sub_267EF9FC8();
  sub_267EF9128();
  v2 = sub_267EFA018();

  return v2;
}

unint64_t sub_267C94B6C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_267EF9FB8();

  return sub_267C94F40(a1, v4);
}

unint64_t sub_267C94BB0()
{
  v1 = *(v0 + 40);
  sub_267EF9AC8();
  v2 = OUTLINED_FUNCTION_110_0();

  return sub_267C94FA0(v2, v3);
}

unint64_t sub_267C94BF0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_267EF9FC8();
  sub_267EF9FE8();
  if (a1)
  {
    sub_267EF9028();
    sub_267EF9128();
  }

  v4 = sub_267EFA018();

  return sub_267C95064(a1, v4);
}

unint64_t sub_267C94C94(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_267EF9FC8();
  MEMORY[0x26D609CA0](a1);
  v4 = sub_267EFA018();

  return sub_267C94F40(a1, v4);
}

unint64_t sub_267C94D00(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  sub_267EF9FC8();
  sub_267EF9FE8();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x26D609CA0](a1);
  }

  v6 = sub_267EFA018();

  return sub_267C95170(a1, a2 & 1, v6);
}

void sub_267C94D90()
{
  v1 = *(v0 + 40);
  sub_267EF9028();
  sub_267EF9FC8();
  sub_267EF9128();
  sub_267EFA018();

  sub_267C951F4();
}

unint64_t sub_267C94E20()
{
  v1 = *(v0 + 40);
  sub_267EF4D38();
  sub_267BBBD50(&qword_28022A138, 255, MEMORY[0x277D60220]);
  sub_267EF8F48();
  v2 = OUTLINED_FUNCTION_110_0();

  return sub_267C952DC(v2, v3);
}

unint64_t sub_267C94EB8(char a1)
{
  v3 = *(v1 + 40);
  sub_267EF9FC8();
  sub_267E8D298(a1);
  sub_267EF9128();

  v4 = sub_267EFA018();

  return sub_267C9549C(a1, v4);
}

unint64_t sub_267C94F40(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_267C94FA0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_267C96570(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D6097A0](v8, a1);
    sub_267C965CC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_267C95064(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * v4))
      {
        if (a1)
        {
          v7 = sub_267EF9028();
          v9 = v8;
          if (v7 == sub_267EF9028() && v9 == v10)
          {

            return v4;
          }

          v12 = sub_267EF9EA8();

          if (v12)
          {
            return v4;
          }
        }
      }

      else if (!a1)
      {
        return v4;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_267C95170(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_267C951F4()
{
  OUTLINED_FUNCTION_48_0();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = *(*(v0 + 48) + 8 * i);
    v5 = sub_267EF9028();
    v7 = v6;
    if (v5 == sub_267EF9028() && v7 == v8)
    {

      break;
    }

    v10 = sub_267EF9EA8();

    if (v10)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_47();
}

unint64_t sub_267C952DC(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_267EF4D38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_267BBBD50(&qword_28022A140, 255, MEMORY[0x277D60220]);
    v10 = sub_267EF8FE8();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_267C9549C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE200000000000000;
      v8 = 27954;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE300000000000000;
          v8 = 7155761;
          break;
        case 2:
          v8 = 26673;
          break;
        case 3:
          v8 = 26678;
          break;
        case 4:
          v8 = 25649;
          break;
        case 5:
          v8 = 25655;
          break;
        case 6:
          v7 = 0xE300000000000000;
          v8 = 6567986;
          break;
        case 7:
          v7 = 0xE300000000000000;
          v8 = 6712937;
          break;
        default:
          break;
      }

      v9 = 0xE200000000000000;
      v10 = 27954;
      switch(a1)
      {
        case 1:
          v9 = 0xE300000000000000;
          v10 = 7155761;
          break;
        case 2:
          v10 = 26673;
          break;
        case 3:
          v10 = 26678;
          break;
        case 4:
          v10 = 25649;
          break;
        case 5:
          v10 = 25655;
          break;
        case 6:
          v9 = 0xE300000000000000;
          v10 = 6567986;
          break;
        case 7:
          v9 = 0xE300000000000000;
          v10 = 6712937;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_267EF9EA8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id sub_267C9566C(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  sub_267BBD0EC(a1, (a2 & 0xC000000000000001) == 0, a2);
  if (v4)
  {
    return MEMORY[0x26D609870](a1, a2);
  }

  else
  {
    return *(a2 + 8 * a1 + 32);
  }
}

void *sub_267C956D0(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_267C95728(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_267C957C8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_267C95838(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_267C957C8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_267C95954(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_267C95838(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_267EF9BC8();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_267C95954(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_267EF9208();
    OUTLINED_FUNCTION_91_5(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x26D608EA0](15, a1 >> 16);
    OUTLINED_FUNCTION_91_5(v3);
    return v4 | 8;
  }
}

uint64_t sub_267C959B0()
{
  v0 = sub_267EF9028();
  v2 = v1;
  if (v0 == sub_267EF9028() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_3();
    v5 = sub_267EF9EA8();
  }

  return v5 & 1;
}

uint64_t sub_267C95A30(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_12(a1, a2);
  sub_267EF9028();
  sub_267EF9128();
}

void sub_267C95A9C()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_47();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_267C95BE8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_267C95D60(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_267EF9A28();
    sub_267BA9F38(0, a5, a6);
    sub_267C968B4(a7, a5, a6);
    result = sub_267EF94F8();
    v9 = v31;
    v13 = v32;
    v14 = v33;
    v15 = v34;
    v16 = v35;
  }

  else
  {
    v15 = 0;
    v17 = -1 << *(a4 + 32);
    v13 = a4 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a4 + 56);
  }

  v20 = a3;
  if (!a2)
  {
    v21 = 0;
LABEL_28:
    *v11 = v9;
    v11[1] = v13;
    v11[2] = v14;
    v11[3] = v15;
    v11[4] = v16;
    return v21;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v27 = a5;
    v28 = a6;
    v21 = 0;
    v26 = v14;
    v22 = (v14 + 64) >> 6;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v9 < 0)
      {
        if (!sub_267EF9A98())
        {
          goto LABEL_26;
        }

        sub_267BA9F38(0, v27, v28);
        swift_dynamicCast();
        result = v30;
        v20 = a3;
        if (!v30)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v16)
        {
          while (1)
          {
            v24 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v24 >= v22)
            {
              v16 = 0;
              goto LABEL_26;
            }

            v16 = *(v13 + 8 * v24);
            ++v15;
            if (v16)
            {
              v15 = v24;
              goto LABEL_18;
            }
          }

          __break(1u);
          break;
        }

LABEL_18:
        v25 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        result = *(*(v9 + 48) + ((v15 << 9) | (8 * v25)));
        if (!result)
        {
          goto LABEL_26;
        }
      }

      *a2++ = result;
      ++v21;
      if (v23 == v20)
      {
        v21 = v20;
LABEL_26:
        v14 = v26;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_267C95F70(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_267EF9A18();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_267EF99D8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_267C95FD0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_267EF9AB8();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

void sub_267C96024(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D609750](a1, a2, v7);
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    if (sub_267EF9A48() == *(a4 + 36))
    {
      sub_267EF9A58();
      swift_dynamicCast();
      v4 = v15;
      v8 = *(a4 + 40);
      v9 = sub_267EF9808();
      v10 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v9 & v10;
        if (((*(a4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_267EF9818();

        if (v12)
        {
          goto LABEL_18;
        }

        v9 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_267C96230@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
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
  v7 = sub_267EF8728();
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 16);
  v11 = v6 + *(v9 + 72) * v4;

  return v10(a4, v11, v8);
}

id sub_267C9632C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_267C9566C(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_267C96398()
{
  v1 = type metadata accessor for ComponentReadingRecord();
  OUTLINED_FUNCTION_30_0(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = *(v0 + v5);
  v11 = *(v0 + v5 + 8);

  sub_267C6E884();
}

uint64_t sub_267C96464()
{
  OUTLINED_FUNCTION_89_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_61_0();
  v6(v5);
  return v0;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

BOOL sub_267C96620(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x26D609700);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_267C96654(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_267C966D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A110, &qword_267F00498);
  OUTLINED_FUNCTION_18(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_18_11();

  return sub_267C947EC();
}

uint64_t sub_267C967AC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_267C94998();
}

uint64_t sub_267C96814(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 8 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_267C96864(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_267C968B4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_267BA9F38(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267C96A2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A198, &qword_267F00538);
  OUTLINED_FUNCTION_18(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_18_11();

  return sub_267C967AC(v3);
}

uint64_t sub_267C96A98()
{
  OUTLINED_FUNCTION_89_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_61_0();
  v6(v5);
  return v0;
}

uint64_t sub_267C96B88()
{
  result = sub_267EF79B8();
  if (v1 <= 0x3F)
  {
    result = sub_267BA9F38(319, &qword_280228FC0, 0x277D47438);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_267C96CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_9_12(a1, a2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 80);
  v9 = OUTLINED_FUNCTION_18_11();

  return a4(v9);
}

uint64_t sub_267C96D5C()
{
  v1 = *(v0 + 16);
  v2 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v1[10]);
  v3 = *(v2 + 368);
  v4 = OUTLINED_FUNCTION_38_0();
  v5(v4);
  if (v6)
  {
    goto LABEL_2;
  }

  v15 = *(v0 + 16);
  v16 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v1[10]);
  v17 = *(v16 + 368);
  v18 = OUTLINED_FUNCTION_38_0();
  v20 = v19(v18);
  v22 = v21;
  v23 = v15 + OBJC_IVAR____TtC16SiriMessagesFlow49UnsendMessagesUnsupportedUseCaseCheckFlowStrategy_sentMessageContext;
  v24 = *(v23 + *(type metadata accessor for TimedSentMessageContext(0) + 24));
  v25 = sub_267EF7C18();
  if (!v22)
  {
    if (!v26)
    {
      goto LABEL_3;
    }

    goto LABEL_17;
  }

  if (!v26)
  {
LABEL_17:

    goto LABEL_18;
  }

  if (v20 == v25 && v22 == v26)
  {

LABEL_2:

LABEL_3:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v7 = sub_267EF8A08();
    __swift_project_value_buffer(v7, qword_280240FB0);
    v8 = sub_267EF89F8();
    v9 = sub_267EF95D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v11, v12, "#UnsendMessagesUnsupportedUseCaseCheckFlowStrategy unsupported request");
      MEMORY[0x26D60A7B0](v10, -1, -1);
    }

    sub_267C266B0();
    v13 = swift_allocError();
    *v14 = 0xD000000000000013;
    v14[1] = 0x8000000267F145A0;
    goto LABEL_23;
  }

  v28 = sub_267EF9EA8();

  if (v28)
  {
    goto LABEL_3;
  }

LABEL_18:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v29 = sub_267EF8A08();
  __swift_project_value_buffer(v29, qword_280240FB0);
  v30 = sub_267EF89F8();
  v31 = sub_267EF95D8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v33, v34, "#UnsendMessagesUnsupportedUseCaseCheckFlowStrategy supported request");
    MEMORY[0x26D60A7B0](v32, -1, -1);
  }

  v13 = 0;
LABEL_23:
  v35 = *(v0 + 8);

  return v35(v13);
}

uint64_t sub_267C97028()
{
  OUTLINED_FUNCTION_12();
  v1[27] = v2;
  v1[28] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v4 = *(*(sub_267EF7B88() - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v5 = sub_267EF4228();
  v1[31] = v5;
  v6 = *(v5 - 8);
  v1[32] = v6;
  v7 = *(v6 + 64) + 15;
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267C97148, 0, 0);
}

uint64_t sub_267C97148()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[30];
  type metadata accessor for UnsendMessagesCATs();
  sub_267EF7B68();
  v0[34] = sub_267EF78E8();
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_267C97208;
  v3 = v0[33];

  return sub_267EBBD9C();
}

uint64_t sub_267C97208()
{
  OUTLINED_FUNCTION_12();
  v3 = *(*v1 + 280);
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v2;
  *(v2 + 288) = v0;

  if (v0)
  {
    v5 = sub_267C97678;
  }

  else
  {
    v6 = *(v2 + 272);

    v5 = sub_267C97318;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267C97318()
{
  v1 = *(v0 + 224);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_38_0();
  v5(v4);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_38_0();
  if (sub_267EF3C18())
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    v7 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    v8 = *(v7 + 8);
    v9 = OUTLINED_FUNCTION_38_0();
    v10(v9);
    v11 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_38_0();
    v12 = sub_267EF3BF8();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v13 = *(v0 + 288);
  v14 = sub_267DA0F10((*(v0 + 224) + OBJC_IVAR____TtC16SiriMessagesFlow49UnsendMessagesUnsupportedUseCaseCheckFlowStrategy_catProvider), 0xD000000000000013, 0x8000000267F10280);
  if (v13)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v15 = *(v0 + 264);
    v16 = *(v0 + 232);
    v17 = *(v0 + 240);

    OUTLINED_FUNCTION_17();
    goto LABEL_8;
  }

  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_267EFCA40;
  *(v20 + 32) = v19;
LABEL_7:
  v21 = *(v0 + 256);
  v22 = *(v0 + 264);
  v38 = *(v0 + 248);
  v39 = *(v0 + 240);
  v23 = *(v0 + 232);
  v24 = *(v0 + 216);
  v25 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v26 = *(v25 + 8);
  v27 = OUTLINED_FUNCTION_31();
  v28(v27);
  v29 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v30 = *(v29 + 8);
  v31 = OUTLINED_FUNCTION_31();
  v32(v31);
  v33 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
  OUTLINED_FUNCTION_31();
  sub_267EF3BC8();
  v34 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v34);
  v35 = sub_267EF4CC8();
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  v36 = MEMORY[0x277D5C1D8];
  v24[3] = v35;
  v24[4] = v36;
  __swift_allocate_boxed_opaque_existential_0(v24);
  sub_267EF3F98();

  sub_267B9FF34(v0 + 176, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v23, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  (*(v21 + 8))(v22, v38);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  OUTLINED_FUNCTION_17();
LABEL_8:

  return v18();
}

uint64_t sub_267C97678()
{
  v1 = v0[34];

  v2 = v0[36];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267C976FC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow49UnsendMessagesUnsupportedUseCaseCheckFlowStrategy_sentMessageContext);
  v1 = (v0 + OBJC_IVAR____TtC16SiriMessagesFlow49UnsendMessagesUnsupportedUseCaseCheckFlowStrategy_catProvider);

  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t sub_267C97744()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow49UnsendMessagesUnsupportedUseCaseCheckFlowStrategy_sentMessageContext);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow49UnsendMessagesUnsupportedUseCaseCheckFlowStrategy_catProvider));
  return v0;
}

uint64_t sub_267C9778C()
{
  sub_267C97744();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnsendMessagesUnsupportedUseCaseCheckFlowStrategy()
{
  result = qword_28022A1E0;
  if (!qword_28022A1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267C97838()
{
  result = type metadata accessor for TimedSentMessageContext(319);
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

uint64_t sub_267C978D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267C97964;

  return sub_267C96D3C();
}

uint64_t sub_267C97964()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_267C97A58()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BF1CB4;

  return sub_267C97028();
}

uint64_t sub_267C97AF4(uint64_t a1)
{
  v2 = type metadata accessor for TimedSentMessageContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_267C97B50()
{
  ConversationEventStore.setDisabled(event:)();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v0 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v0, qword_280240FB0);
  oslog = sub_267EF89F8();
  v1 = sub_267EF95D8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = OUTLINED_FUNCTION_32();
    *v2 = 0;
    _os_log_impl(&dword_267B93000, oslog, v1, "#AutoSendEnablementUtils user received hint about how to disable AutoSend, disabling the user's eligibility to receive the hint again", v2, 2u);
    OUTLINED_FUNCTION_32_0();
  }
}

uint64_t sub_267C97C34(uint64_t a1, void *a2)
{
  v3 = sub_267E28478(a1, a2);
  if ((v3 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v18 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
    v15 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_12_3();
    if (!os_log_type_enabled(v15, v19))
    {
      v13 = 0;
      goto LABEL_12;
    }

    v20 = OUTLINED_FUNCTION_32();
    *v20 = 0;
    _os_log_impl(&dword_267B93000, v15, v2, "#AutoSendEnablementUtils device not being considered for a disable autosend hint", v20, 2u);
    v13 = 0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_11(xmmword_267F00630, v3, v4, v5, v6, v7, v8, v9, v10, v11, v22);
  v13 = v12;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v14 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_13_15(v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v13 & 1;
    _os_log_impl(&dword_267B93000, v15, v16, "#AutoSendEnablementUtils user is eligible for hint on disabling AutoSend=%{BOOL}d", v17, 8u);
LABEL_10:
    OUTLINED_FUNCTION_32_0();
  }

LABEL_12:

  return v13 & 1;
}

uint64_t sub_267C97DB0()
{
  v0 = sub_267EF6F58();
  v1 = OUTLINED_FUNCTION_58(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  v9 = sub_267EF2D28();
  v10 = OUTLINED_FUNCTION_58(v9);
  v35 = v11;
  v36 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v16 = v15 - v14;
  v17 = sub_267EF6D88();
  v18 = OUTLINED_FUNCTION_58(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v33 - v26;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v28 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v28, qword_280240FB0);
  v29 = sub_267EF89F8();
  v30 = sub_267EF95D8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_32();
    v34 = v20;
    *v31 = 0;
    _os_log_impl(&dword_267B93000, v29, v30, "#AutoSendEnablementUtils recording that message was sent without modification", v31, 2u);
    v20 = v34;
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF6D78();
  sub_267EF2D18();
  sub_267EF2CE8();
  (*(v35 + 8))(v16, v36);
  sub_267EF6CF8();
  sub_267EF6D18();
  sub_267EF6CE8();
  (*(v20 + 16))(v25, v27, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD70, &qword_267F00648);
  sub_267EF8F28();
  sub_267EF6F18();
  sub_267C167B0();
  (*(v3 + 8))(v8, v0);
  return (*(v20 + 8))(v27, v17);
}

uint64_t sub_267C9810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10)
{
  OUTLINED_FUNCTION_17_11(xmmword_267EFDDC0, a1, a2, a3, a4, a5, a6, a7, a8, a10, v18);
  v12 = v11;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v13 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
  v14 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v12 & 1;
    _os_log_impl(&dword_267B93000, v14, v10, "#AutoSendEnablementUtils user is eligible for auto-enablement=%{BOOL}d", v16, 8u);
    OUTLINED_FUNCTION_32_0();
  }

  return v12 & 1;
}

uint64_t sub_267C981F4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v163 = a2;
  v169 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A1F0, &qword_267F00640);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v150 - v9;
  v166 = sub_267EF6E88();
  v11 = OUTLINED_FUNCTION_58(v166);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v161 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v150 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v170 = &v150 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v150 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v167 = &v150 - v27;
  MEMORY[0x28223BE20](v26);
  v165 = &v150 - v28;
  sub_267EF6E78();
  sub_267EF2C78();
  v30 = v7 + 13;
  v29 = v7[13];
  v156 = *MEMORY[0x277D5FF08];
  v29(v10);
  sub_267EF6E48();
  v31 = v7[1];
  v168 = v7 + 1;
  v32 = v6;
  v31(v10, v6);
  v33 = *(v13 + 8);
  v159 = v20;
  v34 = v166;
  v33(v20, v166);
  sub_267EF2CA8();
  v155 = *MEMORY[0x277D5FF20];
  v158 = v29;
  v162 = v30;
  v29(v10);
  v35 = v170;
  sub_267EF6E48();
  v160 = v32;
  v157 = v31;
  v31(v10, v32);
  v33(v35, v34);
  v36 = v167;
  sub_267EF6E18();
  v154 = v25;
  v37 = v36;
  v33(v25, v34);
  v41 = v165;
  sub_267EF6DF8();
  v38 = v37;
  v39 = v34;
  v40 = v41;
  v33(v38, v34);
  LOBYTE(v41) = 0;
  v42 = sub_267EF6E58();
  v164 = 0;
  v60 = v42;
  v150 = v10;
  v33(v40, v34);
  v61 = *(v60 + 16);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v62 = sub_267EF8A08();
  v165 = __swift_project_value_buffer(v62, qword_280240FB0);
  v63 = sub_267EF89F8();
  v64 = sub_267EF95D8();
  v65 = OUTLINED_FUNCTION_16_10(v64);
  v153 = v61;
  v152 = v13 + 8;
  v151 = v33;
  if (v65)
  {
    v41 = OUTLINED_FUNCTION_48();
    v66 = OUTLINED_FUNCTION_52();
    v172 = v66;
    *v41 = 136315138;
    v171 = v61;
    v67 = sub_267EF9E58();
    v69 = OUTLINED_FUNCTION_14_16(v67, v68);

    *(v41 + 4) = v69;
    OUTLINED_FUNCTION_5_23(&dword_267B93000, v70, v71, "#AutoSendEnablementUtils Number of INSendMessageIntents: %s");
    __swift_destroy_boxed_opaque_existential_0(v66);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  v72 = sub_267EF89F8();
  v73 = sub_267EF95D8();
  v74 = OUTLINED_FUNCTION_16_10(v73);
  v75 = v163;
  if (v74)
  {
    v41 = OUTLINED_FUNCTION_48();
    v76 = OUTLINED_FUNCTION_52();
    v172 = v76;
    *v41 = 136315138;
    v171 = v75;
    v77 = sub_267EF9E58();
    v79 = OUTLINED_FUNCTION_14_16(v77, v78);

    *(v41 + 4) = v79;
    v75 = v163;
    OUTLINED_FUNCTION_5_23(&dword_267B93000, v80, v81, "#AutoSendEnablementUtils Min num of messages needed: %s");
    __swift_destroy_boxed_opaque_existential_0(v76);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  v82 = v153;
  v83 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_12_3();
  v85 = os_log_type_enabled(v83, v84);
  if (v82 < v75)
  {
    if (!v85)
    {
      v87 = 0;
      goto LABEL_42;
    }

    v86 = OUTLINED_FUNCTION_32();
    *v86 = 0;
    _os_log_impl(&dword_267B93000, v83, v41, "#AutoSendEnablementUtils Number of sent messages less than minimum required. Will not enable AutoSend.", v86, 2u);
    v87 = 0;
    goto LABEL_33;
  }

  if (v85)
  {
    v113 = OUTLINED_FUNCTION_48();
    v114 = OUTLINED_FUNCTION_52();
    v172 = v114;
    *v113 = 136315138;
    v171 = v82;
    v115 = sub_267EF9E58();
    v117 = OUTLINED_FUNCTION_14_16(v115, v116);

    *(v113 + 4) = v117;
    _os_log_impl(&dword_267B93000, v83, v41, "#AutoSendEnablementUtils send message count: %s", v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v114);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v118 = sub_267EF89F8();
  v119 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_16_10(v119))
  {
    v120 = OUTLINED_FUNCTION_48();
    v121 = OUTLINED_FUNCTION_52();
    v172 = v121;
    *v120 = 136315138;
    v171 = v75;
    v122 = sub_267EF9E58();
    v124 = OUTLINED_FUNCTION_14_16(v122, v123);

    *(v120 + 4) = v124;
    OUTLINED_FUNCTION_5_23(&dword_267B93000, v125, v126, "#AutoSendEnablementUtils minimum number of messages needed count: %s");
    __swift_destroy_boxed_opaque_existential_0(v121);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  v127 = v160;
  v128 = v151;
  v129 = v150;
  v130 = v159;
  sub_267EF6E78();
  sub_267EF2C78();
  v131 = v158;
  (v158)(v129, v156, v127);
  v132 = v129;
  sub_267EF6E48();
  v133 = v157;
  v157(v129, v127);
  v128(v130, v39);
  sub_267EF2CA8();
  (v131)(v129, v155, v127);
  v134 = v154;
  v135 = v170;
  sub_267EF6E48();
  v133(v132, v127);
  v128(v135, v39);
  v136 = v167;
  sub_267EF6E18();
  v128(v134, v39);
  v137 = v161;
  sub_267EF6DF8();
  v128(v136, v39);
  v138 = v164;
  v139 = sub_267EF6E58();
  if (v138)
  {
    v140 = v138;
    v59 = v153;
    v128(v137, v39);
    v43 = 0x280228000uLL;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v44 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
    v45 = v138;
    v46 = sub_267EF89F8();
    v47 = sub_267EF95E8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v59;
      v49 = OUTLINED_FUNCTION_48();
      v50 = OUTLINED_FUNCTION_52();
      v172 = v50;
      *v49 = 136315138;
      swift_getErrorValue();
      v51 = sub_267EF9F68();
      v53 = OUTLINED_FUNCTION_14_16(v51, v52);

      *(v49 + 4) = v53;
      OUTLINED_FUNCTION_10_19();
      _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      OUTLINED_FUNCTION_32_0();
      v59 = v48;
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    v88 = MEMORY[0x277D84F90];
  }

  else
  {
    v88 = v139;
    v128(v137, v39);

    v142 = sub_267EF89F8();
    v143 = sub_267EF95D8();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = OUTLINED_FUNCTION_48();
      v145 = OUTLINED_FUNCTION_52();
      v172 = v145;
      *v144 = 136315138;
      v146 = *(v88 + 16);

      v171 = v146;
      v147 = sub_267EF9E58();
      v149 = OUTLINED_FUNCTION_14_16(v147, v148);

      *(v144 + 4) = v149;
      _os_log_impl(&dword_267B93000, v142, v143, "#AutoSendEnablementUtils Number of SendMsgDecisionInteractions: %s", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v145);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    v59 = v153;
    v43 = 0x280228000;
  }

  v89 = *(v88 + 16);

  if (v89)
  {
    if (*(v43 + 2072) != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v90 = v89 / v59;
    v91 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v91, qword_280240FB0);
    v92 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = OUTLINED_FUNCTION_48();
      *v94 = 134217984;
      *(v94 + 4) = v90;
      OUTLINED_FUNCTION_10_19();
      _os_log_impl(v95, v96, v97, v98, v99, 0xCu);
      OUTLINED_FUNCTION_32_0();
    }

    v100 = sub_267EF89F8();
    v101 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_13_15(v101))
    {
      v102 = OUTLINED_FUNCTION_48();
      *v102 = 134217984;
      *(v102 + 4) = a3;
      _os_log_impl(&dword_267B93000, v100, v101, "#AutoSendEnablementUtils send rate cut off is %f", v102, 0xCu);
      OUTLINED_FUNCTION_26();
    }

    if (v90 < a3)
    {
      return 0;
    }

LABEL_27:
    if (*(v43 + 2072) != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v103 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v103, qword_280240FB0);
    v104 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v104, v105))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_10_19();
      _os_log_impl(v106, v107, v108, v109, v110, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v83 = sub_267EF89F8();
    v111 = sub_267EF95D8();
    if (!os_log_type_enabled(v83, v111))
    {
      v87 = 1;
      goto LABEL_42;
    }

    v112 = OUTLINED_FUNCTION_48();
    *v112 = 134217984;
    *(v112 + 4) = a4;
    _os_log_impl(&dword_267B93000, v83, v111, "#AutoSendEnablementUtils time period is: %f", v112, 0xCu);
    v87 = 1;
LABEL_33:
    OUTLINED_FUNCTION_32_0();
LABEL_42:

    return v87;
  }

  if (a3 <= 0.0)
  {
    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_267C98ECC()
{
  v0 = sub_267EF2CC8();
  v1 = OUTLINED_FUNCTION_58(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_4_22();
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_9_17();
  v12(v11);
  OUTLINED_FUNCTION_4_22();
  v14 = *(v13 + 72);
  v15 = OUTLINED_FUNCTION_9_17();
  v16(v15);
  OUTLINED_FUNCTION_4_22();
  v18 = *(v17 + 80);
  v19 = OUTLINED_FUNCTION_9_17();
  v20(v19);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v21 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_32();
    *v24 = 0;
    _os_log_impl(&dword_267B93000, v22, v23, "#AutoSendEnablementUtils Enabled auto-send on device.", v24, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  ConversationEventStore.setDisabled(event:)();
  v26 = xmmword_267EFD5B0;
  v27 = 4;
  sub_267EF2CB8();
  sub_267C5BD60(&v26, v8);
  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_267C990A8(uint64_t a1, void *a2, uint64_t a3)
{
  if ((sub_267E28478(a1, a2) & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v21 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_13_15(v23))
    {
      goto LABEL_13;
    }

    v24 = OUTLINED_FUNCTION_32();
    *v24 = 0;
    v25 = "#AutoSendEnablementUtils device state doesn't meet requirements for receiving the AutoEnablement confirmation dialog";
    goto LABEL_12;
  }

  LOBYTE(v29) = 4;
  sub_267C5DD80(&v28, v4, v5, v6, v7, v8, v9, v10, 4, 0, v29);
  if (!v18)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v26 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_13_15(v23))
    {
      goto LABEL_13;
    }

    v24 = OUTLINED_FUNCTION_32();
    *v24 = 0;
    v25 = "#AutoSendEnablementUtils AutoEnablement never occurred. AutoSend is either off or the user enabled AutoSend manually.";
LABEL_12:
    _os_log_impl(&dword_267B93000, v22, v23, v25, v24, 2u);
    OUTLINED_FUNCTION_26();
LABEL_13:

    v20 = 0;
    return v20 & 1;
  }

  LOBYTE(v29) = 4;
  sub_267C5DD80(&v28, v11, v12, v13, v14, v15, v16, v17, 5, 0, v29);
  v20 = *(a3 + 280) | (v19 < 2);
  return v20 & 1;
}

void sub_267C99228()
{
  v16 = xmmword_267EFDDC0;
  v17 = 4;
  ConversationEventStore.setDisabled(event:)();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v0 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v0, qword_280240FB0);
  oslog = sub_267EF89F8();
  v1 = sub_267EF95D8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 67109120;
    ConversationEventStore.init()(&v16);
    v14 = xmmword_267EFDDC0;
    v15 = 4;
    sub_267C5E0EC(&v14, v3, v4, v5, v6, v7, v8, v9, 3, 0, v12);
    v11 = v10;
    sub_267B9EF14(&v16);
    *(v2 + 4) = v11 & 1;
    _os_log_impl(&dword_267B93000, oslog, v1, "#AutoSendEnablementUtils disabled eligibility for auto-enablement - %{BOOL}d", v2, 8u);
    OUTLINED_FUNCTION_26();
  }

  else
  {
  }
}

uint64_t sub_267C99378(uint64_t a1, char a2, char a3, char a4, uint64_t a5, char a6, char a7, uint64_t a8, char a9, char a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v23 = type metadata accessor for MessagesAggregatedReactionComponentDialogContext.Builder(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  sub_267C99588();
  v27 = OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_aggregatedReactionCategory;
  swift_beginAccess();
  sub_267BE855C(a1, v26 + v27);
  swift_endAccess();
  *(v26 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isAppended) = a2;
  *(v26 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isFirstComponentInConversation) = a3;
  *(v26 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isLastComponentInConversation) = a4;
  v28 = OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_type;
  swift_beginAccess();
  sub_267BE855C(a5, v26 + v28);
  swift_endAccess();
  *(v26 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isReactionOnMyMessage) = a6;
  *(v26 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isReactionOnSendersOwnMessage) = a7;
  sub_267C9968C(a8);

  *(v26 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_needsAndConnector) = a9;
  *(v26 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_needsAlsoConnector) = a10;
  *(v26 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_needsRandomConnector) = a11;
  v29 = v26 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_numberOfSenders;
  *v29 = a12;
  *(v29 + 8) = a13 & 1;
  v30 = v26 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_numberOfSendersMinusTwo;
  *v30 = a14;
  *(v30 + 8) = a15 & 1;
  v31 = type metadata accessor for MessagesAggregatedReactionComponentDialogContext(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  sub_267C99754(v26);

  sub_267BBD6F0(a5);
  sub_267BBD6F0(a1);
  return v34;
}

uint64_t sub_267C99588()
{
  v1 = OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_aggregatedReactionCategory;
  v2 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isAppended) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isFirstComponentInConversation) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isLastComponentInConversation) = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_type, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isReactionOnMyMessage) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isReactionOnSendersOwnMessage) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_referencedMessage) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_needsAndConnector) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_needsAlsoConnector) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_needsRandomConnector) = 0;
  v3 = v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_numberOfSenders;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_numberOfSendersMinusTwo;
  *v4 = 0;
  *(v4 + 8) = 1;
  return v0;
}

uint64_t sub_267C9968C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_referencedMessage);
  *(v1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_referencedMessage) = a1;
}

uint64_t sub_267C996D8()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_aggregatedReactionCategory);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_type);
  v1 = *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_referencedMessage);

  return v0;
}

uint64_t sub_267C99754(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_aggregatedReactionCategory;
  swift_beginAccess();
  sub_267C12290(a1 + v3, v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_aggregatedReactionCategory);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isAppended) = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isAppended);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isFirstComponentInConversation) = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isFirstComponentInConversation);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isLastComponentInConversation) = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isLastComponentInConversation);
  v4 = OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_type;
  swift_beginAccess();
  sub_267C12290(a1 + v4, v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_type);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isReactionOnMyMessage) = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isReactionOnMyMessage);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isReactionOnSendersOwnMessage) = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_isReactionOnSendersOwnMessage);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_referencedMessage) = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_referencedMessage);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_needsAndConnector) = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_needsAndConnector);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_needsAlsoConnector) = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_needsAlsoConnector);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_needsRandomConnector) = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_needsRandomConnector);
  v5 = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_numberOfSenders + 8);
  v6 = v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_numberOfSenders;
  *v6 = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_numberOfSenders);
  *(v6 + 8) = v5;
  v7 = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_numberOfSendersMinusTwo);
  v8 = *(a1 + OBJC_IVAR____TtCC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext7Builder_numberOfSendersMinusTwo + 8);

  v9 = v1 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_numberOfSendersMinusTwo;
  *v9 = v7;
  *(v9 + 8) = v8;
  return v1;
}

uint64_t sub_267C99920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = a1 == 0xD00000000000001ALL && 0x8000000267F10120 == a2;
  if (v14 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    sub_267C12290(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_aggregatedReactionCategory, v13);
    v15 = sub_267EF79B8();
    if (__swift_getEnumTagSinglePayload(v13, 1, v15) == 1)
    {
      v16 = v13;
LABEL_8:
      result = sub_267BBD6F0(v16);
      goto LABEL_9;
    }

    *(a3 + 24) = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(*(v15 - 8) + 32))(boxed_opaque_existential_0, v13, v15);
  }

  result = 0x646E657070417369;
  v19 = a1 == 0x646E657070417369 && a2 == 0xEA00000000006465;
  if (v19 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
  {
    v20 = OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isAppended;
    goto LABEL_18;
  }

  result = 0xD00000000000001ELL;
  v22 = a1 == 0xD00000000000001ELL && 0x8000000267F10140 == a2;
  if (v22 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
  {
    v20 = OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isFirstComponentInConversation;
    goto LABEL_18;
  }

  v23 = a1 == 0xD00000000000001DLL && 0x8000000267F10160 == a2;
  if (v23 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
  {
    v20 = OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isLastComponentInConversation;
    goto LABEL_18;
  }

  v24 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (!v24 && (OUTLINED_FUNCTION_2_6() & 1) == 0)
  {
    result = 0xD000000000000015;
    v27 = a1 == 0xD000000000000015 && 0x8000000267F10190 == a2;
    if (v27 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
    {
      v20 = OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isReactionOnMyMessage;
    }

    else
    {
      v28 = a1 == 0xD00000000000001DLL && 0x8000000267F101B0 == a2;
      if (v28 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
      {
        v20 = OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isReactionOnSendersOwnMessage;
      }

      else
      {
        v29 = a1 == 0xD000000000000011 && 0x8000000267F101D0 == a2;
        if (v29 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
        {
          v30 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_referencedMessage);
          if (!v30)
          {
            goto LABEL_9;
          }

          *(a3 + 24) = type metadata accessor for MessagesReferencedReactionMessage(0);
          *a3 = v30;
        }

        v31 = a1 == 0xD000000000000011 && 0x8000000267F101F0 == a2;
        if (v31 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
        {
          v20 = OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_needsAndConnector;
        }

        else
        {
          result = 0xD000000000000012;
          v32 = a1 == 0xD000000000000012 && 0x8000000267F10210 == a2;
          if (v32 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
          {
            v20 = OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_needsAlsoConnector;
          }

          else
          {
            result = 0xD000000000000014;
            if (a1 != 0xD000000000000014 || 0x8000000267F10230 != a2)
            {
              result = OUTLINED_FUNCTION_2_6();
              if ((result & 1) == 0)
              {
                result = OUTLINED_FUNCTION_9_18();
                v35 = a1 == result && a2 == v34;
                if (v35 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
                {
                  v36 = OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_numberOfSenders;
                }

                else
                {
                  result = 0xD000000000000017;
                  if (a1 != 0xD000000000000017 || 0x8000000267F10260 != a2)
                  {
                    result = OUTLINED_FUNCTION_2_6();
                    if ((result & 1) == 0)
                    {
                      goto LABEL_9;
                    }
                  }

                  v36 = OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_numberOfSendersMinusTwo;
                }

                v37 = (v3 + v36);
                if (v37[1])
                {
LABEL_9:
                  *a3 = 0u;
                  *(a3 + 16) = 0u;
                  return result;
                }

                v38 = *v37;
                *(a3 + 24) = MEMORY[0x277D839F8];
                *a3 = v38;
                return result;
              }
            }

            v20 = OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_needsRandomConnector;
          }
        }
      }
    }

LABEL_18:
    v21 = *(v3 + v20);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v21;
    return result;
  }

  sub_267C12290(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_type, v11);
  v25 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v25) == 1)
  {
    v16 = v11;
    goto LABEL_8;
  }

  *(a3 + 24) = v25;
  v26 = __swift_allocate_boxed_opaque_existential_0(a3);
  return (*(*(v25 - 8) + 32))(v26, v11, v25);
}

uint64_t sub_267C99DE4()
{
  v0 = sub_267EF9D38();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267C99E38(char a1)
{
  result = 0x646E657070417369;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      OUTLINED_FUNCTION_11_0();
      result = v6 + 13;
      break;
    case 3:
    case 6:
      OUTLINED_FUNCTION_11_0();
      result = v8 | 0xC;
      break;
    case 4:
      result = 1701869940;
      break;
    case 5:
      OUTLINED_FUNCTION_11_0();
      result = v7 | 4;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      OUTLINED_FUNCTION_11_0();
      result = v5 + 1;
      break;
    case 10:
      OUTLINED_FUNCTION_11_0();
      result = v9 + 3;
      break;
    case 11:
      result = OUTLINED_FUNCTION_9_18();
      break;
    case 12:
      OUTLINED_FUNCTION_11_0();
      result = v4 | 6;
      break;
    default:
      OUTLINED_FUNCTION_11_0();
      result = v3 + 9;
      break;
  }

  return result;
}

uint64_t sub_267C99FFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267C99DE4();
  *a2 = result;
  return result;
}

uint64_t sub_267C9A02C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267C99E38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267C9A074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267C99E30();
  *a1 = result;
  return result;
}

uint64_t sub_267C9A0A8(uint64_t a1)
{
  v2 = sub_267C9AE04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267C9A0E4(uint64_t a1)
{
  v2 = sub_267C9AE04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267C9A120()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_aggregatedReactionCategory);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_type);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_referencedMessage);

  return v0;
}

uint64_t sub_267C9A188(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_267C9A20C()
{
  sub_267C11A54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267C9A2D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A238, &qword_267F007B0);
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v31[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267C9AE04();
  sub_267EFA088();
  LOBYTE(v32) = 0;
  sub_267EF79B8();
  OUTLINED_FUNCTION_6_18();
  sub_267C9ADBC(v14, v15);
  OUTLINED_FUNCTION_30_7();
  sub_267EF9DF8();
  if (!v2)
  {
    v16 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isAppended);
    OUTLINED_FUNCTION_1_4(1);
    v17 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isFirstComponentInConversation);
    OUTLINED_FUNCTION_1_4(2);
    v18 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isLastComponentInConversation);
    OUTLINED_FUNCTION_1_4(3);
    LOBYTE(v32) = 4;
    OUTLINED_FUNCTION_30_7();
    sub_267EF9DF8();
    v19 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isReactionOnMyMessage);
    OUTLINED_FUNCTION_1_4(5);
    v20 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isReactionOnSendersOwnMessage);
    OUTLINED_FUNCTION_1_4(6);
    v32 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_referencedMessage);
    v31[7] = 7;
    type metadata accessor for MessagesReferencedReactionMessage(0);
    OUTLINED_FUNCTION_5_24();
    sub_267C9ADBC(v21, v22);
    OUTLINED_FUNCTION_30_7();
    sub_267EF9DF8();
    v23 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_needsAndConnector);
    OUTLINED_FUNCTION_1_4(8);
    v24 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_needsAlsoConnector);
    OUTLINED_FUNCTION_1_4(9);
    v25 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_needsRandomConnector);
    OUTLINED_FUNCTION_1_4(10);
    v26 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_numberOfSenders);
    v27 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_numberOfSenders + 8);
    LOBYTE(v32) = 11;
    OUTLINED_FUNCTION_30_7();
    sub_267EF9DD8();
    v28 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_numberOfSendersMinusTwo);
    v29 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_numberOfSendersMinusTwo + 8);
    LOBYTE(v32) = 12;
    OUTLINED_FUNCTION_30_7();
    sub_267EF9DD8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_267C9A628(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_267C9A760(a1);
  return v5;
}

void sub_267C9A6A0()
{
  sub_267C11A54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id *sub_267C9A760(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A228, &qword_267F007A8);
  v12 = OUTLINED_FUNCTION_58(v42);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v3[2] = 0;
  v16 = a1[3];
  v15 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v16);
  sub_267C9AE04();
  sub_267EFA078();
  if (v2)
  {

    type metadata accessor for MessagesAggregatedReactionComponentDialogContext(0);
    v19 = *(*v3 + 12);
    v20 = *(*v3 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_267EF79B8();
    LOBYTE(v45) = 0;
    OUTLINED_FUNCTION_6_18();
    sub_267C9ADBC(v17, v18);
    OUTLINED_FUNCTION_8_17();
    sub_267C12220(v11, v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_aggregatedReactionCategory);
    OUTLINED_FUNCTION_0_20(1);
    v22 = sub_267EF9DA8();
    OUTLINED_FUNCTION_7_19(v22, OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isAppended);
    OUTLINED_FUNCTION_0_20(2);
    v23 = sub_267EF9DA8();
    OUTLINED_FUNCTION_7_19(v23, OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isFirstComponentInConversation);
    OUTLINED_FUNCTION_0_20(3);
    v24 = sub_267EF9DA8();
    OUTLINED_FUNCTION_7_19(v24, OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isLastComponentInConversation);
    LOBYTE(v45) = 4;
    OUTLINED_FUNCTION_8_17();
    sub_267C12220(v9, v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_type);
    OUTLINED_FUNCTION_0_20(5);
    v25 = sub_267EF9DA8();
    OUTLINED_FUNCTION_7_19(v25, OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isReactionOnMyMessage);
    OUTLINED_FUNCTION_0_20(6);
    v26 = sub_267EF9DA8();
    OUTLINED_FUNCTION_7_19(v26, OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_isReactionOnSendersOwnMessage);
    type metadata accessor for MessagesReferencedReactionMessage(0);
    v44 = 7;
    OUTLINED_FUNCTION_5_24();
    sub_267C9ADBC(v27, v28);
    sub_267EF9D88();
    *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_referencedMessage) = v45;
    OUTLINED_FUNCTION_0_20(8);
    v29 = sub_267EF9DA8();
    OUTLINED_FUNCTION_7_19(v29, OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_needsAndConnector);
    OUTLINED_FUNCTION_0_20(9);
    v30 = sub_267EF9DA8();
    OUTLINED_FUNCTION_7_19(v30, OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_needsAlsoConnector);
    OUTLINED_FUNCTION_0_20(10);
    v31 = sub_267EF9DA8();
    OUTLINED_FUNCTION_7_19(v31, OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_needsRandomConnector);
    OUTLINED_FUNCTION_0_20(11);
    v32 = sub_267EF9D68();
    v33 = v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_numberOfSenders;
    *v33 = v32;
    v33[8] = v34 & 1;
    OUTLINED_FUNCTION_0_20(12);
    v35 = sub_267EF9D68();
    v37 = v36;
    v38 = OUTLINED_FUNCTION_3_22();
    v39(v38);
    v40 = v3 + OBJC_IVAR____TtC16SiriMessagesFlow48MessagesAggregatedReactionComponentDialogContext_numberOfSendersMinusTwo;
    *v40 = v35;
    v40[8] = v37 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v43);
  return v3;
}

uint64_t sub_267C9ACDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267C9A628(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267C9ADBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267C9AE04()
{
  result = qword_28022A230;
  if (!qword_28022A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A230);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagesAggregatedReactionComponentDialogContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessagesAggregatedReactionComponentDialogContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267C9AFC0()
{
  result = qword_28022A240;
  if (!qword_28022A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A240);
  }

  return result;
}

unint64_t sub_267C9B018()
{
  result = qword_28022A248;
  if (!qword_28022A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A248);
  }

  return result;
}

unint64_t sub_267C9B070()
{
  result = qword_28022A250;
  if (!qword_28022A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A250);
  }

  return result;
}

BOOL sub_267C9B0C8()
{
  OUTLINED_FUNCTION_75_3();
  v5 = *(v4 + 16);
  do
  {
    v6 = v3;
    if (v5 == v3)
    {
      break;
    }

    v7 = OUTLINED_FUNCTION_63();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_30_0(v9);
    v12 = v2(v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v6);
    if (v0)
    {
      break;
    }

    v3 = v6 + 1;
  }

  while ((v12 & 1) == 0);
  return v5 != v6;
}

BOOL sub_267C9B19C()
{
  OUTLINED_FUNCTION_60_4();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v10 = *v4;

    v7 = v1(&v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;

    ++v4;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_267C9B248()
{
  OUTLINED_FUNCTION_75_3();
  v5 = *(v4 + 16);
  do
  {
    v6 = v3;
    if (v5 == v3)
    {
      break;
    }

    v7 = sub_267EF7008();
    OUTLINED_FUNCTION_30_0(v7);
    v10 = v2(v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v9 + 72) * v6);
    if (v0)
    {
      break;
    }

    v3 = v6 + 1;
  }

  while ((v10 & 1) == 0);
  return v5 != v6;
}

void sub_267C9B304(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_267BAF0DC(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D609870](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

void sub_267C9B3F8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_23(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_267BDAEA8(v4, 1, sub_267C70E54);
  OUTLINED_FUNCTION_96_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_15_13();
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

  OUTLINED_FUNCTION_94_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_267C9B54C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_4_23(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_267BDAEA8(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_267C9B650(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_23(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_267BDAEA8(v4, 1, sub_267BF4EE8);
  OUTLINED_FUNCTION_96_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_15_13();
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

  OUTLINED_FUNCTION_94_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_267C9B7A0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  v5 = sub_267C705A8(a1);
  v6 = sub_267C705A8(*v2);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_267CA1E18(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 1)
  {
LABEL_6:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_267C9B854(unint64_t a1)
{
  v3 = sub_267C705A8(a1);
  v4 = sub_267C705A8(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_267CA1E18(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_267CA2A18(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_267C9B900(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_267BDAEA8(v7 + v6, 1, sub_267BF4EE8);
  v1 = *v2;
  v8 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  sub_267C95A9C();
  if (v9 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
LABEL_13:
      v16 = (v10 + 64) >> 6;
      while (1)
      {
        v17 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        if (v17 >= v16)
        {
          goto LABEL_7;
        }

        v18 = *(v8 + 8 * v17);
        ++v4;
        if (v18)
        {
          v14 = (v18 - 1) & v18;
          v15 = __clz(__rbit64(v18)) | (v17 << 6);
          v4 = v17;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v13;
  }

  v5 = v28;
  if (v9 != v8)
  {
LABEL_7:
    sub_267C96D30();
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v8 = v29;
  v10 = v30;
  v4 = v31;
  if (!v32)
  {
    goto LABEL_13;
  }

  v14 = (v32 - 1) & v32;
  v15 = __clz(__rbit64(v32)) | (v31 << 6);
  v16 = (v30 + 64) >> 6;
LABEL_18:
  v19 = (*(v5 + 48) + 16 * v15);
  v21 = *v19;
  v20 = v19[1];

LABEL_19:
  v27 = *(v1 + 24) >> 1;
  if (v27 < v3 + 1)
  {
    sub_267BF4EE8();
    v1 = v26;
    v27 = *(v26 + 24) >> 1;
  }

  while (1)
  {
    if (v3 >= v27)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v22 = (v1 + 32 + 16 * v3);
    *v22 = v21;
    v22[1] = v20;
    ++v3;
    if (!v14)
    {
      break;
    }

    v23 = v4;
LABEL_28:
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v25 = (*(v5 + 48) + ((v23 << 10) | (16 * v24)));
    v21 = *v25;
    v20 = v25[1];
  }

  while (1)
  {
    v23 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v14 = *(v8 + 8 * v23);
    ++v4;
    if (v14)
    {
      v4 = v23;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_267C9BB60(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_267BDAEA8(result, 1, sub_267C71CDC);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 4 * v7 + 32), (a1 + 32), 4 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_267C9BC2C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_23(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_267BDAEA8(v4, 1, sub_267C71E88);
  OUTLINED_FUNCTION_96_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_15_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A70, &qword_267EFEEF0);
  OUTLINED_FUNCTION_105_3();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_94_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_267C9BCE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C9BCFC()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_267C9BDE4;
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_267C9BDE4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[6];

    v13 = v3[2];
    v14 = v3[3];
    v15 = *(v7 + 8);

    return v15(v13, v14);
  }
}

uint64_t sub_267C9BF08()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_17();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_267C9BF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C9BF7C()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_267C9C044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C9C05C()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  sub_267EF2BA8();
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_267C9C118(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C9C12C()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  v0[1] = sub_267C9C1F8;
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_267C9C1F8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[5];

    v13 = v3[2];
    OUTLINED_FUNCTION_4_3();

    return v14();
  }
}

uint64_t sub_267C9C318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C9C330()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  sub_267EF7D48();
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_267C9C3EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_17();

    return v13();
  }
}

uint64_t sub_267C9C508()
{
  OUTLINED_FUNCTION_12();
  v0[47] = v1;
  v0[48] = v18;
  v0[45] = v2;
  v0[46] = v3;
  v0[43] = v4;
  v0[44] = v5;
  v0[41] = v6;
  v0[42] = v7;
  v0[40] = v8;
  v9 = sub_267EF2E38();
  v0[49] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v0[50] = v10;
  v12 = *(v11 + 64) + 15;
  v0[51] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267C9C5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  if (!*(v14 + 344))
  {
    goto LABEL_22;
  }

  sub_267BF6CEC(*(v14 + 360), v14 + 112, &qword_28022A310, &qword_267F00400);
  if (!*(v14 + 136))
  {
    sub_267CA5BF4(v14 + 112, &qword_28022A310, &qword_267F00400);
LABEL_22:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v48 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v48, qword_280240FB0);
    v49 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v51);
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_48_3(v52, v53, v54, v55);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_27;
  }

  v17 = *(v14 + 320);
  v16 = *(v14 + 328);
  memcpy((v14 + 16), (v14 + 112), 0x60uLL);
  *(v14 + 416) = sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);
  swift_unknownObjectRetain();

  v18 = sub_267BF952C(v17, v16);
  *(v14 + 424) = v18;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = sub_267EF8A08();
  *(v14 + 432) = __swift_project_value_buffer(v19, qword_280240FB0);
  v20 = v18;
  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_48();
    a11 = OUTLINED_FUNCTION_5_4();
    *v15 = 136315138;
    v23 = [v20 localeIdentifier];
    sub_267EF9028();

    v24 = OUTLINED_FUNCTION_65_2();
    v27 = sub_267BA33E8(v24, v25, v26);

    *(v15 + 4) = v27;
    OUTLINED_FUNCTION_30_11();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_18_2();
  }

  v33 = [v20 localeIdentifier];
  v34 = sub_267EF9028();
  v36 = v35;

  if (v34 == 26746 && v36 == 0xE200000000000000)
  {

    goto LABEL_31;
  }

  v38 = OUTLINED_FUNCTION_107_1();

  if (v38)
  {
LABEL_31:
    v67 = *(v14 + 320);
    v66 = *(v14 + 328);
    v68 = swift_task_alloc();
    *(v14 + 440) = v68;
    *(v68 + 16) = *(v14 + 376);
    *(v68 + 32) = v67;
    *(v68 + 40) = v66;
    OUTLINED_FUNCTION_10(&unk_267F00418);
    a10 = v69;
    v70 = swift_task_alloc();
    *(v14 + 448) = v70;
    *v70 = v14;
    v70[1] = sub_267C9CA94;
    goto LABEL_32;
  }

  v39 = [v20 localeIdentifier];
  v40 = sub_267EF9028();
  v42 = v41;

  if (v40 == 26984 && v42 == 0xE200000000000000)
  {
  }

  else
  {
    v44 = OUTLINED_FUNCTION_107_1();

    if ((v44 & 1) == 0)
    {
      v46 = *(v14 + 376);
      v45 = *(v14 + 384);
      if (*(v14 + 368))
      {
        v47 = *(v14 + 368);
      }

      else
      {
        v47 = MEMORY[0x277D84F90];
      }

      sub_267C9FF90(v20, v47);
      swift_unknownObjectRelease();

      sub_267B9EF14(v14 + 16);
LABEL_27:
      v56 = *(v14 + 408);

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_64_3();

      return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
    }
  }

  v71 = swift_task_alloc();
  *(v14 + 488) = v71;
  *(v71 + 16) = *(v14 + 376);
  OUTLINED_FUNCTION_10(&unk_267F00418);
  a10 = v72;
  v73 = swift_task_alloc();
  *(v14 + 496) = v73;
  *v73 = v14;
  v73[1] = sub_267C9D6BC;
LABEL_32:
  OUTLINED_FUNCTION_64_3();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267C9CA94()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 448);
  v3 = *(v1 + 440);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v7 + 456) = v6;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_267C9CBA0()
{
  v160 = v0;
  v2 = v0;
  v3 = *(v0 + 432);
  v4 = *(v0 + 456);
  v5 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    v6 = *(v0 + 456);
    OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_55_0();
    v157 = v7;
    *v1 = 136315138;
    v2[39] = v6;
    v8 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2C0, &qword_267F00420);
    v9 = sub_267EF9098();
    v11 = sub_267BA33E8(v9, v10, &v157);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  if (v2[57])
  {
    v17 = v2[54];
    v18 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_32();
      *v20 = 0;
      OUTLINED_FUNCTION_43_0();
      _os_log_impl(v21, v22, v23, v24, v20, 2u);
      OUTLINED_FUNCTION_32_0();
      v25 = v2[53];
    }

    else
    {
      v25 = v18;
      v18 = v2[53];
    }

    v39 = v2[43];

    goto LABEL_11;
  }

  v26 = v2[47];
  v27 = v2[48];
  sub_267C9FCD8();
  if (v28)
  {
    v29 = v2[54];

    v30 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v2[53];
    if (v32)
    {
      v34 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v34);
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_48_3(v35, v36, v37, v38);
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
      v4 = v30;
      v30 = v2[53];
    }

    v45 = v2[43];

    goto LABEL_18;
  }

  v152 = v2;
  v40 = objc_opt_self();
  v41 = [v40 preferredLanguages];
  if (!v41)
  {
    sub_267EF92F8();
    v41 = sub_267EF92D8();
  }

  v42 = v152[42];
  v43 = sub_267EF92F8();
  if (v42)
  {
    v44 = v152[42];
  }

  else
  {
    v50 = [objc_opt_self() availableLanguages];
    v51 = sub_267EF94B8();

    sub_267C903B4(v51);
    v52 = sub_267EF92D8();

    v53 = [v40 matchedLanguagesFromAvailableLanguages:v52 forPreferredLanguages:v41];

    v44 = sub_267EF92F8();
    v41 = v53;
  }

  v54 = v152[54];

  v55 = sub_267EF89F8();
  v56 = sub_267EF95D8();

  v150 = v4;
  if (os_log_type_enabled(v55, v56))
  {
    v57 = OUTLINED_FUNCTION_35_0();
    v157 = OUTLINED_FUNCTION_83_3();
    *v57 = 136315394;
    v58 = MEMORY[0x277D837D0];
    MEMORY[0x26D608FD0](v43, MEMORY[0x277D837D0]);

    v59 = OUTLINED_FUNCTION_65_2();
    v62 = sub_267BA33E8(v59, v60, v61);

    *(v57 + 4) = v62;
    *(v57 + 12) = 2080;
    v63 = MEMORY[0x26D608FD0](v44, v58);
    v65 = sub_267BA33E8(v63, v64, &v157);

    *(v57 + 14) = v65;
    OUTLINED_FUNCTION_64_4();
    _os_log_impl(v66, v67, v68, v69, v70, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_45_2();
  }

  else
  {
  }

  v2 = v152;
  v71 = v152[52];
  v73 = v152[40];
  v72 = v152[41];

  v74 = sub_267BF952C(v73, v72);
  v152[58] = v74;
  v75 = v44;
  v156 = *(v44 + 16);
  if (!v156)
  {
LABEL_34:
    v99 = v2[54];
    v100 = v2[41];

    sub_267BEB520((v2 + 2), (v2 + 26));

    v101 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    v103 = os_log_type_enabled(v101, v102);
    v104 = v2[41];
    if (v103)
    {
      v105 = v2[40];
      v106 = swift_slowAlloc();
      *v106 = 67109120;
      v157 = v105;
      v158 = v104;
      v159 = 1;

      sub_267C5DD80(&v157, v107, v108, v109, v110, v111, v112, v113, v149, v150, v151);
      v115 = v114;
      sub_267C5E97C(v157, v158, v159);
      sub_267B9EF14((v2 + 26));
      *(v106 + 4) = v115 == 0;

      _os_log_impl(&dword_267B93000, v101, v72, "#TTSUtil usage count for chinese notification %{BOOL}d", v106, 8u);
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
      sub_267B9EF14((v2 + 26));
    }

    v116 = v150;
    v118 = v2[40];
    v117 = v2[41];
    sub_267EF7308();
    v119 = sub_267EF72F8();
    v2[59] = v120;
    v157 = v119;
    v158 = v120;
    v159 = 1;

    sub_267C5DD80(&v157, v121, v122, v123, v124, v125, v126, v127, v149, v150, v151);
    v129 = v128;
    sub_267C5E97C(v157, v158, v159);
    v130 = v2[43];
    if (!v129)
    {
      v141 = v2[44];
      v142 = v2[43];
      swift_getObjectType();
      OUTLINED_FUNCTION_10(&unk_267F00A38);
      v143 = swift_task_alloc();
      v2[60] = v143;
      *v143 = v2;
      v143[1] = sub_267C9D52C;
      v144 = v2[47];
      v145 = v2[48];
      OUTLINED_FUNCTION_63_1();

      __asm { BR              X8 }
    }

    v131 = v2[53];
    sub_267B9EF14((v2 + 2));
    swift_unknownObjectRelease();

    goto LABEL_19;
  }

  v76 = 0;
  v155 = (v152[50] + 8);
  v77 = (v44 + 40);
  v151 = 136315394;
  while (v76 < *(v75 + 16))
  {
    v78 = v2[54];
    v79 = *(v77 - 1);
    v80 = *v77;
    swift_bridgeObjectRetain_n();
    v81 = v74;
    v82 = sub_267EF89F8();
    v83 = sub_267EF95D8();

    if (OUTLINED_FUNCTION_116_0())
    {
      v84 = OUTLINED_FUNCTION_35_0();
      v157 = OUTLINED_FUNCTION_83_3();
      *v84 = 136315394;
      *(v84 + 4) = sub_267BA33E8(v79, v80, &v157);
      *(v84 + 12) = 2080;
      v85 = [v81 languageIdentifier];
      log = v82;
      v86 = v81;
      v87 = v74;
      v88 = v85;
      v89 = sub_267EF9028();
      v153 = v83;
      v90 = v75;
      v92 = v91;

      v74 = v87;
      v81 = v86;
      v93 = sub_267BA33E8(v89, v92, &v157);
      v75 = v90;

      *(v84 + 14) = v93;
      _os_log_impl(&dword_267B93000, log, v153, "#TTSUtil locale %s | localeOfText %s", v84, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32_0();
      v2 = v152;
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    v94 = v2[51];
    v72 = v2[49];
    sub_267EF2D38();
    v95 = sub_267EF2D98();
    v96 = *v155;
    v97 = OUTLINED_FUNCTION_66();
    v98(v97);
    LODWORD(v94) = [v81 isEquivalentTo_];

    if (v94)
    {
      v132 = v2[54];

      v133 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v135);
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_48_3(v136, v137, v138, v139);
        OUTLINED_FUNCTION_32_0();
        v25 = v2[53];
        v140 = v150;
      }

      else
      {
        v25 = v133;
        v133 = v2[53];
        v140 = v81;
        v81 = v150;
      }

      v148 = v2[43];

LABEL_11:
LABEL_18:
      swift_unknownObjectRelease();
      sub_267B9EF14((v2 + 2));
LABEL_19:
      v46 = v2[51];

      v47 = v2[1];
      OUTLINED_FUNCTION_63_1();

      __asm { BRAA            X2, X16 }
    }

    ++v76;
    v77 += 2;
    if (v156 == v76)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
}

uint64_t sub_267C9D52C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 480);
  v3 = *(v1 + 472);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267C9D630()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 456);
  v2 = *(v0 + 424);
  v3 = *(v0 + 344);

  swift_unknownObjectRelease();
  sub_267B9EF14(v0 + 16);
  v4 = *(v0 + 408);

  OUTLINED_FUNCTION_4_3();

  return v5(0);
}

uint64_t sub_267C9D6BC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 496);
  v3 = *(v1 + 488);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v7 + 504) = v6;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267C9D7C8()
{
  v39 = v0;
  v3 = *(v0 + 432);
  v4 = *(v0 + 504);
  v5 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    v6 = *(v0 + 504);
    OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_55_0();
    v38 = v7;
    *v1 = 136315138;
    *(v0 + 304) = v6;
    v8 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2C0, &qword_267F00420);
    v9 = sub_267EF9098();
    sub_267BA33E8(v9, v10, &v38);
    OUTLINED_FUNCTION_79();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  if (*(v0 + 504))
  {
    v16 = [v4 primaryLanguage];
    v17 = sub_267EF9028();
    v19 = v18;

    v20 = *(v0 + 424);
    if (v17 == 0x4E492D6E65 && v19 == 0xE500000000000000)
    {

      v22 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_1_10();
      v22 = sub_267EF9EA8();
    }

    v33 = *(v0 + 344);
  }

  else
  {
    v23 = *(v0 + 432);
    v24 = sub_267EF89F8();
    v25 = sub_267EF95D8();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 424);
    if (v26)
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
      v4 = v24;
      v24 = *(v0 + 424);
    }

    v34 = *(v0 + 344);

    v22 = 0;
  }

  swift_unknownObjectRelease();
  sub_267B9EF14(v0 + 16);
  v35 = *(v0 + 408);

  OUTLINED_FUNCTION_4_3();

  return v36(v22 & 1);
}

uint64_t sub_267C9DA10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = OUTLINED_FUNCTION_66();
  v2(v3);
}

void sub_267C9DA84()
{
  if (qword_280228728 != -1)
  {
    OUTLINED_FUNCTION_35_10();
  }

  sub_267B9B050(&qword_280240950, v12);
  v0 = v13;
  v1 = v14;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  v2 = (*(v1 + 8))(v0, v1);
  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v9 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
    v8 = sub_267EF89F8();
    v10 = sub_267EF95E8();
    if (os_log_type_enabled(v8, v10))
    {
      v11 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v11);
      OUTLINED_FUNCTION_48_3(&dword_267B93000, v8, v10, "#TTSUtil output voice is not available");
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_10;
  }

  v3 = v2;
  __swift_destroy_boxed_opaque_existential_0(v12);
  sub_267CA1EB8(v3, &selRef_languageCode);
  if (v4)
  {
    v5 = objc_allocWithZone(sub_267EF7248());
    v6 = sub_267EF7218();
    objc_allocWithZone(sub_267EF7268());

    v7 = v6;
    v8 = sub_267EF7258();
    sub_267EF7288();
    sub_267EF7278();

LABEL_10:
    return;
  }

  __break(1u);
}

id sub_267C9DC74()
{
  result = [objc_allocWithZone(sub_267EF71F8()) init];
  qword_28022A260 = result;
  return result;
}

uint64_t sub_267C9DCA8()
{
  v0 = [objc_opt_self() sharedPreferences];
  result = sub_267BA9F38(0, &unk_28022A3B0, 0x277CEF368);
  qword_280240968 = result;
  unk_280240970 = &off_2878D0928;
  qword_280240950 = v0;
  return result;
}

uint64_t sub_267C9DD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a3;
  v4[29] = a4;
  v4[26] = a1;
  v4[27] = a2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267C9DD30()
{
  v2 = sub_267BD27AC(v0[26], v0[27]);
  if (v2)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = v0[27];
    v4 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);

    v5 = sub_267EF89F8();
    sub_267EF95D8();

    if (OUTLINED_FUNCTION_116_0())
    {
      v7 = v0[26];
      v6 = v0[27];
      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_5_4();
      *v1 = 136315138;
      v8 = OUTLINED_FUNCTION_1_10();
      *(v1 + 4) = sub_267BA33E8(v8, v9, v10);
      OUTLINED_FUNCTION_43_0();
      _os_log_impl(v11, v12, v13, v14, v1, 0xCu);
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_18_2();
    }

    OUTLINED_FUNCTION_17();

    return v15();
  }

  else
  {
    sub_267BA9F38(0, &qword_28022A0A8, 0x277CE2028);
    v17 = *MEMORY[0x277CEF5E0];
    v18 = sub_267EF9028();
    v20 = sub_267C944A0(v18, v19);
    v0[30] = v20;
    ConversationEventStore.init()((v0 + 2));
    OUTLINED_FUNCTION_10(&unk_267F009F0);
    v27 = v21;
    v22 = swift_task_alloc();
    v0[31] = v22;
    *v22 = v0;
    v22[1] = sub_267C9DF38;
    v23 = v0[28];
    v24 = v0[29];
    v26 = v0[26];
    v25 = v0[27];

    return v27(v26, v25, 0, v20, v0 + 2, v23, v24);
  }
}

uint64_t sub_267C9DF38()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *(v4 + 240);
  v7 = *v0;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v2 + 256) = v9;

  sub_267B9EF14(v2 + 16);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267C9E040()
{
  v45 = v0;
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = [*(v0 + 256) primaryLanguage];
    sub_267EF9028();

    sub_267EF72C8();
    v3 = objc_allocWithZone(sub_267EF7248());
    OUTLINED_FUNCTION_26_0();
    v4 = sub_267EF7218();
    if (qword_280228720 != -1)
    {
      OUTLINED_FUNCTION_8_18();
    }

    v5 = (v0 + 112);
    v6 = (v0 + 160);
    *(swift_allocObject() + 16) = v4;
    v7 = v4;
    sub_267EF71C8();

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v8 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v8, qword_280240FB0);
    v9 = v1;
    v10 = sub_267EF89F8();
    sub_267EF95D8();

    if (OUTLINED_FUNCTION_81_4())
    {
      v11 = OUTLINED_FUNCTION_48();
      v43 = OUTLINED_FUNCTION_52();
      v44 = v43;
      *v11 = 136315138;
      v12 = v9;
      v13 = [v12 description];
      v14 = v9;
      v15 = sub_267EF9028();
      v16 = v7;
      v18 = v17;

      v19 = v15;
      v9 = v14;
      v20 = sub_267BA33E8(v19, v18, &v44);
      v7 = v16;

      *(v11 + 4) = v20;
      OUTLINED_FUNCTION_34_7();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      v5 = (v0 + 112);
      OUTLINED_FUNCTION_32_0();
      v6 = (v0 + 160);
      OUTLINED_FUNCTION_32_0();
    }

    *(v0 + 144) = sub_267C9EAE4;
    *(v0 + 152) = 0;
    *(v0 + 112) = MEMORY[0x277D85DD0];
    *(v0 + 120) = 1107296256;
    *(v0 + 128) = sub_267C9DA10;
    *(v0 + 136) = &block_descriptor_8;
    v26 = _Block_copy(v5);
    *(v0 + 192) = nullsub_1;
    *(v0 + 200) = 0;
    *(v0 + 160) = MEMORY[0x277D85DD0];
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_267C9DA7C;
    *(v0 + 184) = &block_descriptor_15;
    v27 = _Block_copy(v6);
    v28 = *(v0 + 200);

    [v9 downloadWithReservation:0 useBattery:1 progress:v26 then:v27];
    _Block_release(v27);
    _Block_release(v26);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v29 = *(v0 + 216);
    v30 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v30, qword_280240FB0);

    v31 = sub_267EF89F8();
    sub_267EF95E8();

    if (OUTLINED_FUNCTION_116_0())
    {
      v33 = *(v0 + 208);
      v32 = *(v0 + 216);
      OUTLINED_FUNCTION_48();
      v44 = OUTLINED_FUNCTION_5_4();
      MEMORY[0] = 136315138;
      v34 = OUTLINED_FUNCTION_1_10();
      MEMORY[4] = sub_267BA33E8(v34, v35, v36);
      OUTLINED_FUNCTION_43_0();
      _os_log_impl(v37, v38, v39, v40, 0, 0xCu);
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_18_2();
    }
  }

  OUTLINED_FUNCTION_17();

  return v41();
}

uint64_t sub_267C9E494(unint64_t a1, void *a2)
{
  if (qword_280228818 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v4 = sub_267EF8A08();
    v5 = __swift_project_value_buffer(v4, qword_280240FB0);

    v54 = v5;
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v55 = v9;
      *v8 = 136315138;
      v10 = sub_267EF72A8();
      v11 = MEMORY[0x26D608FD0](a1, v10);
      v13 = sub_267BA33E8(v11, v12, &v55);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_267B93000, v6, v7, "#TTSUtil existingSubscriptions %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x26D60A7B0](v9, -1, -1);
      MEMORY[0x26D60A7B0](v8, -1, -1);
    }

    v14 = sub_267C705A8(a1);
    v15 = MEMORY[0x277D84F90];
    v16 = &unk_267EFC000;
    if (!v14)
    {
      break;
    }

    v17 = v14;
    v55 = MEMORY[0x277D84F90];
    sub_267EF9BF8();
    if (v17 < 0)
    {
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_22;
    }

    v19 = 0;
    v53 = a1 & 0xC000000000000001;
    v50 = a2;
    v51 = a1 & 0xFFFFFFFFFFFFFF8;
    *&v18 = 138412290;
    v52 = v18;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v53)
      {
        v21 = MEMORY[0x26D609870](v19, a1);
      }

      else
      {
        if (v19 >= *(v51 + 16))
        {
          goto LABEL_25;
        }

        v21 = *(a1 + 8 * v19 + 32);
      }

      a2 = a1;
      v22 = v21;
      v23 = sub_267EF89F8();
      v24 = sub_267EF95D8();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = v52;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&dword_267B93000, v23, v24, "#TTSUtil subscribedVoices %@", v25, 0xCu);
        sub_267CA5BF4(v26, &unk_280229E30, &unk_267EFC270);
        MEMORY[0x26D60A7B0](v26, -1, -1);
        MEMORY[0x26D60A7B0](v25, -1, -1);
      }

      v28 = sub_267EF7298();
      sub_267EF7228();

      v29 = sub_267EF7298();
      sub_267EF7208();

      v30 = objc_allocWithZone(sub_267EF7248());
      sub_267EF7218();

      sub_267EF9BD8();
      v31 = v55[2];
      sub_267EF9C08();
      sub_267EF9C18();
      v14 = sub_267EF9BE8();
      ++v19;
      a1 = a2;
      if (v20 == v17)
      {
        v15 = v55;
        a2 = v50;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_16:
  v55 = a2;
  MEMORY[0x28223BE20](v14);
  v49[2] = &v55;
  sub_267C9B304(sub_267CA59FC, v49, v15);
  if (v32)
  {
  }

  v33 = sub_267EF89F8();
  v34 = sub_267EF95D8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v55 = v36;
    *v35 = 136315138;
    v37 = sub_267EF7248();
    v38 = MEMORY[0x26D608FD0](v15, v37);
    v40 = sub_267BA33E8(v38, v39, &v55);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_267B93000, v33, v34, "#TTSUtil current subscriptions %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D60A7B0](v36, -1, -1);
    MEMORY[0x26D60A7B0](v35, -1, -1);
  }

  v16 = a2;
  v41 = sub_267EF89F8();
  v42 = sub_267EF95D8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v16;
    *v44 = v16;
    v45 = v16;
    _os_log_impl(&dword_267B93000, v41, v42, "#TTSUtil adding subscribe %@", v43, 0xCu);
    sub_267CA5BF4(v44, &unk_280229E30, &unk_267EFC270);
    MEMORY[0x26D60A7B0](v44, -1, -1);
    MEMORY[0x26D60A7B0](v43, -1, -1);
  }

  if (qword_280228720 != -1)
  {
    goto LABEL_28;
  }

LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCA40;
  *(inited + 32) = v16;
  v55 = v15;
  v47 = v16;
  sub_267C9B7A0(inited, sub_267CA242C);
  sub_267EF71E8();
}

void sub_267C9EAE4(uint64_t a1, uint64_t a2)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  oslog = sub_267EF89F8();
  v5 = sub_267EF95D8();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = ((a1 / a2) * 100.0);
    _os_log_impl(&dword_267B93000, oslog, v5, "#TTSUtil %% done : %f", v6, 0xCu);
    MEMORY[0x26D60A7B0](v6, -1, -1);
  }
}

void *sub_267C9EC04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);

  v9 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_81_4())
  {
    v10 = OUTLINED_FUNCTION_48();
    v11 = OUTLINED_FUNCTION_52();
    v46 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_267BA33E8(a1, a2, &v46);
    OUTLINED_FUNCTION_34_7();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_11_11();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_267EFCA40;
  sub_267BA9F38(0, &unk_28022A2A0, 0x277D61490);
  *(v17 + 32) = sub_267EF95B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A0F0, &qword_267F00450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  type metadata accessor for TTSAssetProperty(0);
  v20 = v19;
  OUTLINED_FUNCTION_26_11();
  sub_267BFEA98(v21, v22);

  v23 = sub_267EF8F28();
  v24 = (*(a4 + 8))(v17, v23, a3, a4);

  v25 = v24;
  v26 = sub_267EF89F8();
  v27 = sub_267EF95D8();

  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_48();
    v46 = OUTLINED_FUNCTION_5_4();
    *v20 = 136315138;
    v28 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2C0, &qword_267F00420);
    v29 = sub_267EF9098();
    v31 = sub_267BA33E8(v29, v30, &v46);

    *(v20 + 4) = v31;
    OUTLINED_FUNCTION_30_11();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_18_2();
  }

  v37 = v25;
  v38 = sub_267EF89F8();
  v39 = sub_267EF95D8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_48();
    v41 = OUTLINED_FUNCTION_52();
    v46 = v41;
    *v40 = 136315138;
    if (v24)
    {
      [v37 locallyAvailable];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A0F8, qword_267F00458);
    v42 = sub_267EF9098();
    v44 = sub_267BA33E8(v42, v43, &v46);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_267B93000, v38, v39, "#TTSUtil is locally available: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_32_0();
  }

  return v24;
}

uint64_t sub_267C9EFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v9 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);

  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_48();
    v23 = OUTLINED_FUNCTION_44();
    *v4 = 136315138;
    v12 = OUTLINED_FUNCTION_1_10();
    *(v4 + 4) = sub_267BA33E8(v12, v13, v14);
    OUTLINED_FUNCTION_64_4();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_45_2();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  if (qword_280228720 != -1)
  {
    OUTLINED_FUNCTION_8_18();
  }

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v20;
  v21[5] = a3;
  v21[6] = a4;

  sub_267EF71C8();
}

void sub_267C9F1C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);

  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();

  v11 = &unk_267EFC000;
  v89 = a1;
  v85 = a5;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v94 = v13;
    *v12 = 136315138;
    v14 = sub_267EF72A8();
    v15 = MEMORY[0x26D608FD0](a1, v14);
    v17 = sub_267BA33E8(v15, v16, &v94);

    *(v12 + 4) = v17;
    a1 = v89;
    _os_log_impl(&dword_267B93000, v9, v10, "#TTSUtil subscribedVoices: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D60A7B0](v13, -1, -1);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  v90 = sub_267BAF0DC(a1);
  if (v90)
  {
    sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);
    if (v90 >= 1)
    {
      v87 = a1 & 0xC000000000000001;
      swift_beginAccess();
      v18 = 0;
      v88 = a3;
      while (1)
      {
        if (v87)
        {
          v19 = MEMORY[0x26D609870](v18, a1);
        }

        else
        {
          v19 = *(a1 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = sub_267EF7298();
        v22 = sub_267EF7228();
        v24 = v23;

        v25 = sub_267BF952C(v22, v24);
        v26 = [v25 languageCode];

        v27 = sub_267EF9028();
        v29 = v28;

        v30 = sub_267BF952C(a2, a3);
        v31 = [v30 languageCode];

        v32 = sub_267EF9028();
        v34 = v33;

        v35 = sub_267EF89F8();
        v36 = sub_267EF95D8();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v93[0] = v38;
          *v37 = 136315138;
          *(v37 + 4) = sub_267BA33E8(v27, v29, v93);
          _os_log_impl(&dword_267B93000, v35, v36, "#TTSUtil voiceLanguage: %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x26D60A7B0](v38, -1, -1);
          MEMORY[0x26D60A7B0](v37, -1, -1);
        }

        v39 = sub_267EF89F8();
        v40 = sub_267EF95D8();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v93[0] = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_267BA33E8(v32, v34, v93);
          _os_log_impl(&dword_267B93000, v39, v40, "#TTSUtil languageOfText: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x26D60A7B0](v42, -1, -1);
          MEMORY[0x26D60A7B0](v41, -1, -1);
        }

        if (v27 == v32 && v29 == v34)
        {
          break;
        }

        v44 = sub_267EF9EA8();

        a1 = v89;
        if (v44)
        {
          goto LABEL_22;
        }

        a3 = v88;
        v11 = &unk_267EFC000;
LABEL_25:
        ++v18;

        if (v90 == v18)
        {
          goto LABEL_26;
        }
      }

      a1 = v89;
LABEL_22:
      a3 = v88;

      v45 = sub_267EF89F8();
      v46 = sub_267EF95D8();

      v11 = &unk_267EFC000;
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v93[0] = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_267BA33E8(a2, v88, v93);
        _os_log_impl(&dword_267B93000, v45, v46, "#TTSUtil found subscribed voice for %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x26D60A7B0](v48, -1, -1);
        MEMORY[0x26D60A7B0](v47, -1, -1);
      }

      v49 = *(a4 + 16);
      *(a4 + 16) = v20;
      v20 = v49;
      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    swift_beginAccess();
    v50 = *(a4 + 16);
    if (v50)
    {
      v51 = v50;
      v52 = sub_267EF89F8();
      v53 = sub_267EF95D8();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v92 = v55;
        *v54 = v11[9];
        v56 = v51;
        v57 = [v56 description];
        v58 = sub_267EF9028();
        v60 = v59;

        v61 = sub_267BA33E8(v58, v60, &v92);

        *(v54 + 4) = v61;
        _os_log_impl(&dword_267B93000, v52, v53, "#TTSUtil preferredVoice: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x26D60A7B0](v55, -1, -1);
        MEMORY[0x26D60A7B0](v54, -1, -1);
      }

      sub_267EF72E8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_267EFCA40;
      sub_267BA9F38(0, &unk_28022A2A0, 0x277D61490);
      *(v62 + 32) = sub_267EF95B8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A0F0, &qword_267F00450);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_267EFC020;
      *(inited + 32) = 0;
      v64 = sub_267EF7298();
      v65 = sub_267EF7208();
      v67 = v66;

      *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
      *(inited + 40) = v65;
      *(inited + 48) = v67;
      type metadata accessor for TTSAssetProperty(0);
      sub_267BFEA98(&unk_28022A2B0, type metadata accessor for TTSAssetProperty);
      sub_267EF8F28();
      v68 = sub_267EF72D8();

      v69 = v68;
      v70 = sub_267EF89F8();
      v71 = sub_267EF95D8();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v92 = v73;
        *v72 = 136315394;
        v74 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2C0, &qword_267F00420);
        v75 = sub_267EF9098();
        v77 = sub_267BA33E8(v75, v76, &v92);

        *(v72 + 4) = v77;
        *(v72 + 12) = 2080;
        if (v68)
        {
          [v74 locallyAvailable];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A0F8, qword_267F00458);
        v82 = sub_267EF9098();
        v84 = sub_267BA33E8(v82, v83, &v92);

        *(v72 + 14) = v84;
        _os_log_impl(&dword_267B93000, v70, v71, "#TTSUtil voice: %s, is locally available: %s", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D60A7B0](v73, -1, -1);
        MEMORY[0x26D60A7B0](v72, -1, -1);
      }

      v85(v68);
    }

    else
    {

      v78 = sub_267EF89F8();
      v79 = sub_267EF95D8();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v92 = v81;
        *v80 = v11[9];
        *(v80 + 4) = sub_267BA33E8(a2, a3, &v92);
        _os_log_impl(&dword_267B93000, v78, v79, "#TTSUtil no subscribed voice for %s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x26D60A7B0](v81, -1, -1);
        MEMORY[0x26D60A7B0](v80, -1, -1);
      }

      v85(0);
    }
  }
}

uint64_t sub_267C9FC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_267C9EFEC(a5, a6, sub_267CA5B68, v10);
}

uint64_t sub_267C9FCD8()
{
  v0 = sub_267EF2E38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A308, &qword_267F00A20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  sub_267EF2DE8();
  sub_267EF2DD8();
  (*(v1 + 8))(v4, v0);
  v9 = sub_267EF2DC8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_267CA5BF4(v8, &qword_28022A308, &qword_267F00A20);
    return 0;
  }

  v11 = sub_267EF2D58();
  v13 = v12;
  (*(*(v9 - 8) + 8))(v8, v9);
  v14 = v11 == 19272 && v13 == 0xE200000000000000;
  if (v14 || (sub_267EF9EA8() & 1) != 0)
  {

    return 19272;
  }

  else
  {
    if (v11 == 22356 && v13 == 0xE200000000000000)
    {
    }

    else
    {
      v16 = sub_267EF9EA8();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    return 22356;
  }
}

uint64_t sub_267C9FF08(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_267C9EFEC(28261, 0xE200000000000000, sub_267CA5F7C, v4);
}

uint64_t sub_267C9FF90(void *a1, uint64_t a2)
{
  v68 = sub_267EF2E38();
  v4 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v66 = v5;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v9 = sub_267EF8A08();
    v10 = __swift_project_value_buffer(v9, qword_280240FB0);
    v11 = a1;
    v67 = v10;
    v12 = sub_267EF89F8();
    v13 = sub_267EF95D8();

    v14 = os_log_type_enabled(v12, v13);
    v69 = v11;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v65 = a2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v70 = v17;
      *v16 = 136315394;
      v18 = [v11 languageCode];
      v19 = sub_267EF9028();
      v21 = v20;

      v22 = sub_267BA33E8(v19, v21, &v70);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      v23 = [sub_267EF72E8() assistantVoiceMaps];
      sub_267EF72B8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A318, &qword_267F00A40);
      v24 = sub_267EF8F08();
      v26 = v25;

      v27 = sub_267BA33E8(v24, v26, &v70);

      *(v16 + 14) = v27;
      _os_log_impl(&dword_267B93000, v12, v13, "TTSUtil#localeExistsInDeviceLanaguageMap Checking if languageLocale=%s exists in #language map %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v17, -1, -1);
      v28 = v16;
      a2 = v65;
      MEMORY[0x26D60A7B0](v28, -1, -1);
    }

    v29 = (v66 + 8);
    sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);
    v30 = (a2 + 40);
    do
    {
      v32 = *(v30 - 1);
      v31 = *v30;
      swift_bridgeObjectRetain_n();
      v33 = sub_267BF952C(v32, v31);
      v34 = [v33 languageCode];

      sub_267EF9028();
      sub_267EF2D38();
      v35 = sub_267EF2D98();
      (*v29)(v7, v68);
      LODWORD(v34) = [v69 isEquivalentTo_];

      if (v34)
      {
        v54 = v69;

        v55 = sub_267EF89F8();
        v56 = sub_267EF95D8();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v70 = v58;
          *v57 = 136315394;
          v59 = [v54 languageCode];
          v60 = sub_267EF9028();
          v62 = v61;

          v63 = sub_267BA33E8(v60, v62, &v70);

          *(v57 + 4) = v63;
          *(v57 + 12) = 2080;
          v64 = sub_267BA33E8(v32, v31, &v70);

          *(v57 + 14) = v64;
          _os_log_impl(&dword_267B93000, v55, v56, "#TTSUtil match for %s and %s", v57, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D60A7B0](v58, -1, -1);
          MEMORY[0x26D60A7B0](v57, -1, -1);
        }

        else
        {
        }

        return 1;
      }

      v30 += 2;
      --v8;
    }

    while (v8);
    v36 = v69;
    v37 = sub_267EF89F8();
    v38 = sub_267EF95D8();

    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_16;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v70 = v40;
    *v39 = 136315394;
    v41 = [v36 languageCode];
    v42 = sub_267EF9028();
    v44 = v43;

    v45 = sub_267BA33E8(v42, v44, &v70);

    *(v39 + 4) = v45;
    *(v39 + 12) = 2080;
    v46 = [sub_267EF72E8() assistantVoiceMaps];
    sub_267EF72B8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A318, &qword_267F00A40);
    v47 = sub_267EF8F08();
    v49 = v48;

    v50 = sub_267BA33E8(v47, v49, &v70);

    *(v39 + 14) = v50;
    _os_log_impl(&dword_267B93000, v37, v38, "TTSUtil#localeExistsInDeviceLanaguageMap: languageLocale=%s not found in #language map %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v40, -1, -1);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v51 = sub_267EF8A08();
    __swift_project_value_buffer(v51, qword_280240FB0);
    v37 = sub_267EF89F8();
    v52 = sub_267EF95D8();
    if (!os_log_type_enabled(v37, v52))
    {
      goto LABEL_16;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_267B93000, v37, v52, "TTSUtil#localeExistsInDeviceLanguageMap: deviceAvailableLanguages is empty", v39, 2u);
  }

  MEMORY[0x26D60A7B0](v39, -1, -1);
LABEL_16:

  return 0;
}

id sub_267CA06E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_267EF8FF8();

  v7 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v6 content:a3 trigger:a4];

  return v7;
}

void sub_267CA0764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_267EF2CC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3;
  v17 = a4;
  v18 = 1;

  sub_267EF2CB8();
  sub_267C5BD60(&v16, v10);
  (*(v7 + 8))(v10, v6);
  sub_267C5E97C(v16, v17, v18);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v11 = sub_267EF8A08();
  __swift_project_value_buffer(v11, qword_280240FB0);
  v12 = sub_267EF89F8();
  v13 = sub_267EF95D8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_267B93000, v12, v13, "#TTSUtil added notification", v14, 2u);
    MEMORY[0x26D60A7B0](v14, -1, -1);
  }
}

uint64_t sub_267CA0920(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  v4 = a1 == 26746 && a2 == 0xE200000000000000;
  if (v4 || (OUTLINED_FUNCTION_1_10(), (OUTLINED_FUNCTION_107_1() & 1) != 0))
  {
    OUTLINED_FUNCTION_66();
    v5 = sub_267C9FCD8();
    if (v6)
    {
      v7 = v5;
      v8 = v6;

      MEMORY[0x26D608E60](45, 0xE100000000000000);
      MEMORY[0x26D608E60](v7, v8);

      return a1;
    }
  }

  v9 = 0x4E492D6E65;
  if (a1 != 26984 || a2 != 0xE200000000000000)
  {
    OUTLINED_FUNCTION_1_10();
    if ((OUTLINED_FUNCTION_107_1() & 1) == 0)
    {
LABEL_9:
      sub_267EF7308();
      OUTLINED_FUNCTION_91_3();

      v9 = sub_267EF72F8();
      v11 = v10;

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v12 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);

      v13 = sub_267EF89F8();
      sub_267EF95D8();

      if (OUTLINED_FUNCTION_81_4())
      {
        v14 = OUTLINED_FUNCTION_35_0();
        v26 = OUTLINED_FUNCTION_83_3();
        *v14 = 136315394;

        v15 = OUTLINED_FUNCTION_44_0();
        v18 = sub_267BA33E8(v15, v16, v17);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_267BA33E8(v9, v11, &v26);
        OUTLINED_FUNCTION_34_7();
        _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_11_11();
      }
    }
  }

  return v9;
}

uint64_t sub_267CA0B94(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v7 = qword_280228728;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_35_10();
  }

  sub_267B9B050(&qword_280240950, v27);
  v8 = v27[4];
  __swift_project_boxed_opaque_existential_0(v27, v27[3]);
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_44_0();
  v12 = v11(v10);
  if (!v12)
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v18 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95E8();
    if (os_log_type_enabled(v19, v20))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_30_11();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_18_2();
    }

    sub_267C6CAEC(0, a3);
  }

  v13 = v12;
  __swift_destroy_boxed_opaque_existential_0(v27);
  sub_267CA1EB8(v13, &selRef_languageCode);
  if (v14)
  {
    sub_267CA1EB8(v13, &selRef_name);
    v15 = objc_allocWithZone(sub_267EF7248());
    v16 = sub_267EF7218();
    if (qword_280228720 != -1)
    {
      OUTLINED_FUNCTION_8_18();
    }

    v17 = swift_allocObject();
    *(v17 + 16) = sub_267CA5D90;
    *(v17 + 24) = v6;

    sub_267EF71D8();
  }

  __break(1u);
  return result;
}

void sub_267CA0E1C(int a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v7 = a2;
    v8 = sub_267EF89F8();
    v9 = sub_267EF95E8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_267B93000, v8, v9, "#TTSUtil error getting synthesis voice: %@", v10, 0xCu);
      sub_267CA5BF4(v11, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v11, -1, -1);
      MEMORY[0x26D60A7B0](v10, -1, -1);
    }

    (a3)(0);
  }

  else
  {
    a3();
  }
}

void sub_267CA0FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    a3 = 0;
  }

  sub_267CA0FD8(a1, a2, a3);
}

void sub_267CA0FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_267CA10A8;
    v6[3] = &block_descriptor_25;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 addNotificationRequest:a1 withCompletionHandler:v5];
  _Block_release(v5);
}

void sub_267CA10B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_267CA1148()
{
  v1 = [v0 outputVoice];

  return v1;
}

uint64_t sub_267CA1180(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    if (sub_267EF9E78())
    {
      sub_267CA5ADC(a1, a2, 1);
    }

    else
    {
      swift_allocError();
      *v7 = a1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2F0, &qword_267F00A18);
    return sub_267EF93B8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2F0, &qword_267F00A18);
    return sub_267EF93C8();
  }
}

void sub_267CA128C(uint64_t a1)
{
  sub_267BF6CEC(a1, v6, &unk_28022A480, &unk_267F029F0);
  if (v7)
  {
    v1 = v6[0];
    v5[0] = v6[0];
    v2 = v6[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    if (sub_267EF9E78())
    {
    }

    else
    {
      swift_allocError();
      *v3 = v1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A478, &unk_267F00B30);
    sub_267EF93B8();
  }

  else
  {
    sub_267B9A5E8(v6, v5);
    sub_267B9B050(v5, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A478, &unk_267F00B30);
    sub_267EF93C8();
    __swift_destroy_boxed_opaque_existential_0(v5);
  }
}

void sub_267CA13BC(uint64_t a1)
{
  v2 = sub_267EF2BA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3F8, qword_267F00AB8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - v12);
  sub_267BF6CEC(a1, &v19 - v12, &qword_28022A3F8, qword_267F00AB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v13;
    v14 = v20;
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v16 = sub_267EF9E78();
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = swift_allocError();
      *v18 = v14;
    }

    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3F0, &qword_267F00AB0);
    sub_267EF93B8();
  }

  else
  {
    (*(v3 + 32))(v9, v13, v2);
    (*(v3 + 16))(v7, v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3F0, &qword_267F00AB0);
    sub_267EF93C8();
    (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_267CA163C(id a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    if (sub_267EF9E78())
    {
      sub_267C7973C(a1, 1);
    }

    else
    {
      swift_allocError();
      *v5 = a1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A450, &qword_267F00B08);
    return sub_267EF93B8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A450, &qword_267F00B08);
    return sub_267EF93C8();
  }
}

void sub_267CA1738(uint64_t a1)
{
  v2 = sub_267EF7D48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A390, &qword_267F00A70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - v12);
  sub_267BF6CEC(a1, &v19 - v12, &qword_28022A390, &qword_267F00A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v13;
    v14 = v20;
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v16 = sub_267EF9E78();
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = swift_allocError();
      *v18 = v14;
    }

    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A388, &qword_267F00A68);
    sub_267EF93B8();
  }

  else
  {
    (*(v3 + 32))(v9, v13, v2);
    (*(v3 + 16))(v7, v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A388, &qword_267F00A68);
    sub_267EF93C8();
    (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_267CA19E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF5F28();
  v5 = OUTLINED_FUNCTION_58(v4);
  v37 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OUTLINED_FUNCTION_65_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  v14 = OUTLINED_FUNCTION_18(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3E0, &qword_267F00AA0);
  v20 = OUTLINED_FUNCTION_18(v19);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v36 - v24;
  v26 = *(v23 + 56);
  sub_267BF6CEC(a1, &v36 - v24, &qword_28022A3D8, &qword_267F08D00);
  sub_267BF6CEC(a2, &v25[v26], &qword_28022A3D8, &qword_267F08D00);
  OUTLINED_FUNCTION_2_5(v25);
  if (!v32)
  {
    v28 = OUTLINED_FUNCTION_44_0();
    sub_267BF6CEC(v28, v29, v30, v31);
    OUTLINED_FUNCTION_2_5(&v25[v26]);
    if (!v32)
    {
      v33 = v37;
      (*(v37 + 32))(v10, &v25[v26], v4);
      sub_267BFEA98(&qword_28022A3E8, MEMORY[0x277D5EA60]);
      v27 = sub_267EF8FE8();
      v34 = *(v33 + 8);
      v34(v10, v4);
      v34(v18, v4);
      sub_267CA5BF4(v25, &qword_28022A3D8, &qword_267F08D00);
      return v27 & 1;
    }

    (*(v37 + 8))(v18, v4);
LABEL_9:
    sub_267CA5BF4(v25, &qword_28022A3E0, &qword_267F00AA0);
    v27 = 0;
    return v27 & 1;
  }

  OUTLINED_FUNCTION_2_5(&v25[v26]);
  if (!v32)
  {
    goto LABEL_9;
  }

  sub_267CA5BF4(v25, &qword_28022A3D8, &qword_267F08D00);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_267CA1CB0()
{
  OUTLINED_FUNCTION_60_4();
  sub_267EF7008();
  sub_267BFEA98(&unk_28022A370, MEMORY[0x277D61CA8]);
  return sub_267EF8FE8() & 1;
}

uint64_t sub_267CA1D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 != a3 || a2 != a4)
    {
      return sub_267EF9EA8() & 1;
    }

    return 1;
  }

  return v4;
}

uint64_t sub_267CA1E18(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_267EF9A68();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_267EF9BB8();
  *v1 = result;
  return result;
}

uint64_t sub_267CA1EB8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_267EF9028();
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267CA2124(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_267EF9A68();
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
    result = sub_267C705A8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_267C7C8D0(&unk_28022A330, &qword_28022A328, &qword_267F00A48);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A328, &qword_267F00A48);
          v9 = sub_267C73FD8(v12, i, a3);
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

uint64_t sub_267CA22A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_267EF9A68();
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
    result = sub_267C705A8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_267BA9F38(0, &unk_28022BBA0, 0x277D47140);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_267C7C8D0(&qword_28022A498, &qword_28022A490, &qword_267F00B40);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A490, &qword_267F00B40);
          v9 = sub_267C73FD8(v12, i, a3);
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

uint64_t sub_267CA242C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_267EF9A68();
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
    result = sub_267C705A8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_267EF7248();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_267C7C8D0(&qword_28022A288, &qword_28022A280, &qword_267F009F8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A280, &qword_267F009F8);
          v9 = sub_267C7408C(v12, i, a3);
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
uint64_t getEnumTagSinglePayload for ConditionalPaddingModifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *(a1 + 17);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

uint64_t sub_1E3B6B77C()
{
  result = sub_1E42012F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E3B6B818()
{
  sub_1E3B6B894();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E3B6B894()
{
  if (!qword_1ECF34010)
  {
    sub_1E42012F4();
    sub_1E3AC6100();
    v0 = sub_1E4205E74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF34010);
    }
  }
}

uint64_t sub_1E3B6B8F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 50))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *(a1 + 49);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

uint64_t sub_1E3B6B940(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E3B6B9AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 114))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *(a1 + 113);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

uint64_t sub_1E3B6B9F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 113) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E3B6BA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E42012F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v9, v13, v4, v10);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      (v12)(v7, v13 + *(v5 + 72) * i, v4);
      sub_1E3AC6100();
      v16 = sub_1E4205E14();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v7, v4);
      }

      else
      {
        v17(v7, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1E3B6BCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E42012F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v9;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v9, v13, v4, v10);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      (v12)(v7, v13 + *(v5 + 72) * i, v4);
      sub_1E3AC6100();
      v16 = sub_1E4205E14();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v7, v4);
      }

      else
      {
        v17(v7, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1E3B6BEF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34008);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ConditionalDynamicTypeSizeInRangeModifier(0);
  if ((*(v0 + *(v5 + 20)) & 1) == 0)
  {
    v1 = v0 + *(v5 + 24);
  }

  sub_1E37E93E8(v1, v4, &qword_1ECF34008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34038);
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v6, &qword_1ECF34038);
  OUTLINED_FUNCTION_4_130();
  sub_1E32752B0(v7, &qword_1ECF34008);
  sub_1E4202FA4();
  return sub_1E325F6F0(v4, &qword_1ECF34008);
}

uint64_t sub_1E3B6C054()
{
  v1 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if (*(v0 + *(type metadata accessor for ConditionalDynamicTypeSizeModifier(0) + 20)) == 1)
  {
    (*(v3 + 16))(v7, v0, v1);
  }

  else
  {
    sub_1E3B02E88(v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34050);
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v8, &qword_1ECF34050);
  sub_1E4202F94();
  return (*(v3 + 8))(v7, v1);
}

__n128 sub_1E3B6C1A8@<Q0>(uint64_t a1@<X0>, char a2@<W1>, __int16 a3@<W3>, uint64_t a4@<X8>)
{
  if ((a3 & 0x100) != 0)
  {
    v6 = a2;
    if ((a3 & 1) == 0)
    {
      sub_1E4200A54();
      v7 = 0;
      *(&v9 + 1) = v8;
      v11.n128_u64[1] = v10;
      v15 = v9;
      v16 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1E4202774();
  }

  v15 = 0u;
  v16 = 0u;
  v7 = 1;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34060);
  OUTLINED_FUNCTION_2();
  (*(v12 + 16))(a4, a1);
  v13 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34068) + 36);
  *v13 = v6;
  result = v16;
  *(v13 + 24) = v15;
  *(v13 + 8) = v16;
  *(v13 + 40) = v7;
  return result;
}

double sub_1E3B6C290@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&result = sub_1E3B6C1A8(a1, *v2, v3 | v2[16], a2).n128_u64[0];
  return result;
}

uint64_t sub_1E3B6C31C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3B6C38C()
{
  result = qword_1ECF34078;
  if (!qword_1ECF34078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34020);
    sub_1E32752B0(&qword_1ECF34080, &qword_1ECF34018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34078);
  }

  return result;
}

unint64_t sub_1E3B6C444()
{
  result = qword_1ECF34088;
  if (!qword_1ECF34088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34030);
    sub_1E32752B0(&qword_1ECF34090, &qword_1ECF34028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34088);
  }

  return result;
}

unint64_t sub_1E3B6C4FC()
{
  result = qword_1ECF34098;
  if (!qword_1ECF34098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34068);
    sub_1E32752B0(&qword_1ECF340A0, &qword_1ECF34060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34098);
  }

  return result;
}

uint64_t sub_1E3B6C5B8()
{
  result = sub_1E38F1C3C(&unk_1F5D73178);
  qword_1EE2AB070 = result;
  return result;
}

void sub_1E3B6C5EC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *(v1 + 32);
  OUTLINED_FUNCTION_0_153();
  v108 = v9;
  if (sub_1E3B6CFEC(v9, 12, v10) & 1) != 0 || (OUTLINED_FUNCTION_0_153(), (sub_1E3B6CFEC(v9, 11, v11)))
  {
    sub_1E3751C10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v13 = sub_1E37FAFB0();
    v14 = v13[1];
    *(inited + 32) = *v13;
    *(inited + 40) = v14;
    *(inited + 72) = type metadata accessor for LibMenuItem();
    *(inited + 48) = v1;

    sub_1E4205CB4();
  }

  else
  {
    sub_1E3751C10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1E4297BE0;
    v16 = sub_1E37FAFB0();
    v17 = v16[1];
    *(v15 + 32) = *v16;
    *(v15 + 40) = v17;
    *(v15 + 72) = type metadata accessor for LibMenuItem();
    *(v15 + 48) = v1;

    sub_1E4205CB4();
  }

  v18 = sub_1E37FB46C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  v19 = swift_initStackObject();
  OUTLINED_FUNCTION_130(v19, xmmword_1E4297BE0);
  sub_1E3855E78();
  v19[2].n128_u64[0] = v20;
  v19[2].n128_u64[1] = v21;
  v19[4].n128_u64[1] = MEMORY[0x1E69E6370];
  v19[3].n128_u8[0] = 1;
  v22 = sub_1E4205CB4();
  v23 = *sub_1E3C8DCB4();

  sub_1E41FE614();
  v24 = sub_1E41FE5E4();
  v26 = v25;
  (*(v4 + 8))(v8, v2);
  v109 = v24;
  v110 = v26;

  MEMORY[0x1E69109E0](35, 0xE100000000000000);

  v27 = *(v1 + 72);
  v28 = *(v1 + 80);

  MEMORY[0x1E69109E0](v27, v28);

  type metadata accessor for LibViewModel();

  OUTLINED_FUNCTION_45_35();
  v107 = v18;
  v33 = sub_1E3B76C80(v29, v30, v31, v32, v23, v18, v22);
  if (v33)
  {
    type metadata accessor for Accessibility();
    sub_1E40A92E8();
    OUTLINED_FUNCTION_71_2();
    (*(v34 + 328))();
    v35 = *(*v33 + 472);

    v35(MEMORY[0x1E69E7CC0]);
  }

  v36 = 0xEB000000002F2F3ALL;
  v37 = *(v1 + 56);
  v38 = *(v1 + 64);

  if (sub_1E4206124() & 1) != 0 || (sub_1E4206124())
  {
    v39 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v39, xmmword_1E4299720);
    v39[2].n128_u64[0] = v40;
    v39[2].n128_u64[1] = v41;
    v43 = *(v1 + 40);
    v42 = *(v1 + 48);
    v44 = MEMORY[0x1E69E6158];
    v39[4].n128_u64[1] = MEMORY[0x1E69E6158];
    v39[3].n128_u64[0] = v43;
    v39[3].n128_u64[1] = v42;

    v39[5].n128_u64[0] = sub_1E3C7CCAC(0);
    v39[5].n128_u64[1] = v45;
    v39[7].n128_u64[1] = v44;
    v39[6].n128_u64[0] = v37;
  }

  else
  {
    OUTLINED_FUNCTION_0_153();
    if ((sub_1E3B6CFEC(v108, 14, v90) & 1) != 0 && (v91 = objc_opt_self(), v92 = sub_1E4205ED4(), v93 = [v91 vuiImageNamed_], v92, v93))
    {

      v39 = swift_initStackObject();
      OUTLINED_FUNCTION_117(v39, xmmword_1E4299720);
      v39[2].n128_u64[0] = v94;
      v39[2].n128_u64[1] = v95;
      v97 = *(v1 + 40);
      v96 = *(v1 + 48);
      v98 = MEMORY[0x1E69E6158];
      v39[4].n128_u64[1] = MEMORY[0x1E69E6158];
      v39[3].n128_u64[0] = v97;
      v39[3].n128_u64[1] = v96;

      v39[5].n128_u64[0] = sub_1E3C7CCAC(0);
      v39[5].n128_u64[1] = v99;
      v109 = 0x656372756F736572;
    }

    else
    {
      v100 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v100 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (!v100)
      {

        goto LABEL_16;
      }

      v36 = 0xE90000000000002FLL;
      v39 = swift_initStackObject();
      OUTLINED_FUNCTION_117(v39, xmmword_1E4299720);
      v39[2].n128_u64[0] = v101;
      v39[2].n128_u64[1] = v102;
      v104 = *(v1 + 40);
      v103 = *(v1 + 48);
      v98 = MEMORY[0x1E69E6158];
      v39[4].n128_u64[1] = MEMORY[0x1E69E6158];
      v39[3].n128_u64[0] = v104;
      v39[3].n128_u64[1] = v103;

      v39[5].n128_u64[0] = sub_1E3C7CCAC(0);
      v39[5].n128_u64[1] = v105;
      v109 = 0x2F3A6C6F626D7973;
    }

    v110 = v36;
    v44 = &v109;
    MEMORY[0x1E69109E0](v37, v38);

    v106 = v109;
    v38 = v110;
    v39[7].n128_u64[1] = v98;
    v39[6].n128_u64[0] = v106;
  }

  v39[6].n128_u64[1] = v38;
  sub_1E4205CB4();
  OUTLINED_FUNCTION_106();
  type metadata accessor for ImageViewModel();

  if (sub_1E3F5321C(39, v44, v33))
  {
    if (v33)
    {
      OUTLINED_FUNCTION_71_2();
      v47 = *(v46 + 480);

      v48 = OUTLINED_FUNCTION_67_15();
      v49 = v47(v48);
      if (*v50)
      {
        v51 = OUTLINED_FUNCTION_79_13();
        MEMORY[0x1E6910BF0](v51);
        OUTLINED_FUNCTION_2_125();
        sub_1E4206324();
      }

      v52 = OUTLINED_FUNCTION_66_20();
      v49(v52);
    }
  }

LABEL_16:
  v54 = *(v1 + 40);
  v53 = *(v1 + 48);
  v111 = MEMORY[0x1E69E6158];
  v109 = v54;
  v110 = v53;
  v55 = type metadata accessor for TextViewModel();
  swift_bridgeObjectRetain_n();

  v56 = sub_1E37BD068();
  if (sub_1E3C27638(23, &v109, v33, 0, v56))
  {
    if (v33)
    {
      OUTLINED_FUNCTION_71_2();
      v58 = *(v57 + 480);

      v59 = OUTLINED_FUNCTION_67_15();
      v60 = v58(v59);
      if (*v61)
      {

        MEMORY[0x1E6910BF0](v62);
        OUTLINED_FUNCTION_2_125();
        sub_1E4206324();
      }

      v63 = OUTLINED_FUNCTION_66_20();
      v60(v63);
    }
  }

  OUTLINED_FUNCTION_0_153();
  if (sub_1E3B6CFEC(v108, 9, v64))
  {
    v65 = *(*v1 + 224);
    if (v65() >= 1)
    {
      v109 = v65();
      v66 = sub_1E4207944();
      v111 = MEMORY[0x1E69E6158];
      v109 = v66;
      v110 = v67;

      v68 = sub_1E3C27638(15, &v109, v33, 0, 0);
      if (v68)
      {
        v55 = v68;
        if (v33)
        {
          OUTLINED_FUNCTION_71_2();
          v70 = *(v69 + 480);

          v71 = OUTLINED_FUNCTION_67_15();
          v72 = v70(v71);
          if (*v73)
          {
            v74 = OUTLINED_FUNCTION_79_13();
            MEMORY[0x1E6910BF0](v74);
            OUTLINED_FUNCTION_2_125();
            sub_1E4206324();
          }

          v75 = OUTLINED_FUNCTION_66_20();
          v72(v75);
        }
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  v76 = swift_initStackObject();
  OUTLINED_FUNCTION_117(v76, xmmword_1E4299720);
  v76[2].n128_u64[0] = v77;
  v76[2].n128_u64[1] = v78;
  v76[3].n128_u64[0] = v54;
  v76[3].n128_u64[1] = v53;
  v76[4].n128_u64[0] = sub_1E3C7CCAC(0);
  v76[4].n128_u64[1] = v79;
  OUTLINED_FUNCTION_35_38();
  v76[5].n128_u64[0] = v81;
  v76[5].n128_u64[1] = v80;
  v82 = sub_1E4205CB4();
  sub_1E3797720(v82);
  OUTLINED_FUNCTION_11_5();

  type metadata accessor for ImageViewModel();
  OUTLINED_FUNCTION_60_1();

  if (sub_1E3F5321C(31, v55, v33))
  {
    if (v33)
    {
      OUTLINED_FUNCTION_71_2();
      v84 = *(v83 + 480);

      v85 = OUTLINED_FUNCTION_67_15();
      v86 = v84(v85);
      if (*v87)
      {
        v88 = OUTLINED_FUNCTION_79_13();
        MEMORY[0x1E6910BF0](v88);
        OUTLINED_FUNCTION_2_125();
        sub_1E4206324();
      }

      v89 = OUTLINED_FUNCTION_66_20();
      v86(v89);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B6CFEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E3B6D09C()
{
  MEMORY[0x1E6910BF0]();
  sub_1E38C5A18(*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10));

  return sub_1E4206324();
}

uint64_t sub_1E3B6D0F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1E373F6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  sub_1E38537B4(9);
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  v14 = sub_1E4205CB4();
  type metadata accessor for LibCollectionViewModel();

  v15 = sub_1E3A7A31C(a3, a1, a2, v10 & 1, a5, v14);
  v16 = v15;
  if (!v15)
  {
    return v16;
  }

  sub_1E3B6D54C(v15, a4);
  v18 = v17;
  type metadata accessor for Metrics();
  OUTLINED_FUNCTION_38();

  sub_1E3BA53F4();

  v20 = sub_1E3797720(v19);

  v21 = sub_1E3BA5560(v20, 1);
  (*(*v16 + 584))(v21);
  if (v18)
  {
    v22 = *(*v16 + 1424);

    v22(v23);
  }

  MEMORY[0x1E69109E0](0x70756F72675FLL, 0xE600000000000000);
  type metadata accessor for CollectionGroupViewModel();
  swift_retain_n();

  OUTLINED_FUNCTION_69_17();
  v24 = sub_1E3960F08();
  if (v24)
  {
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v26 = OUTLINED_FUNCTION_24_3();
    *(v26 + 16) = xmmword_1E4298880;
    *(v26 + 32) = v25;
    v27 = *(*v16 + 472);

    v27(v26);

    v28 = OUTLINED_FUNCTION_24_3();
    *(v28 + 16) = xmmword_1E4298880;
    *(v28 + 32) = v25;
    v29 = *(*v16 + 1416);

    v29(v28);

    if (!v18)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v30 = *(*v18 + 632);

    v30(v16);
  }

LABEL_8:

  result = sub_1E32AE9B0(a4);
  v32 = result;
  for (i = 0; ; ++i)
  {
    if (v32 == i)
    {

      return v16;
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a4);
    }

    else
    {
      if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_8();
    v35 = *(v34 + 632);

    v35(v36);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_1E3B6D54C(uint64_t a1, unint64_t a2)
{
  v352 = a2;
  v10 = sub_1E388A954(a2);
  v326 = v10;
  if (v10 && (v3 = v10, p_vtable = type metadata accessor for LibLockupViewModel(), OUTLINED_FUNCTION_39_3(), (v11 = swift_dynamicCastClass()) != 0))
  {
    v12 = *(*v11 + 1496);

    v12(v399, v13);

    sub_1E38BC104();
    if (v14)
    {
      v15 = v14;
      isa = (*v14)[41].isa;

      (isa)(v17);
      v343 = v15;

      goto LABEL_12;
    }
  }

  else
  {
    v18 = sub_1E388A954(v352);
    if (v18)
    {
      p_vtable = v18;
      if (*(a1 + 24))
      {
        v5 = *(a1 + 16);
        v3 = *(a1 + 24);
      }

      else
      {
        v5 = 0;
        v3 = 0xE000000000000000;
      }

      v4 = type metadata accessor for LibViewModel();
      v399[0] = v5;
      v399[1] = v3;

      MEMORY[0x1E69109E0](0x79746F746F72705FLL, 0xEF6D6574695F6570);

      OUTLINED_FUNCTION_69_17();
      v26 = sub_1E3B76C80(v19, v20, v21, v22, v23, v24, v25);

      if (v26)
      {
        v343 = v26;
        if (!v326)
        {
LABEL_13:

          v30 = MEMORY[0x1E69E7CC0];
LABEL_14:
          v31 = v343;
          OUTLINED_FUNCTION_8();
          v33 = (*(v32 + 472))(v30);
          p_vtable = &(*v343)[11].vtable;
          v34 = *p_vtable;
          v35 = (*p_vtable)(v33);
          v387 = v34;
          v395 = p_vtable;
          if (v35)
          {
            sub_1E32AE9B0(v35);
            OUTLINED_FUNCTION_22_55();
            v3 = &qword_1F5D5CE68;
            while (1)
            {
              if (p_vtable == v34)
              {

                v7 = 0;
                v34 = v387;
                p_vtable = v395;
                goto LABEL_34;
              }

              if (v8)
              {
                v45 = OUTLINED_FUNCTION_11_6();
                v7 = MEMORY[0x1E6911E60](v45);
              }

              else
              {
                if (v34 >= *(v6 + 16))
                {
                  goto LABEL_430;
                }

                OUTLINED_FUNCTION_55_25();
              }

              if (__OFADD__(v34, 1))
              {
                goto LABEL_429;
              }

              LOWORD(v400) = *(v7 + 98);
              v405 = 23;
              sub_1E3742F1C();
              OUTLINED_FUNCTION_6_108();
              OUTLINED_FUNCTION_3_129();
              v36 = sub_1E4206254();
              OUTLINED_FUNCTION_17_77(v36, v37, v38, v39, v40, v41, v42, v43, v326, v330, v335, v339, v343, v348, v352, v358, v365, v371, v376, v381, v387, v395, v399[0]);
              v44 = v44 && v4 == v31;
              if (v44)
              {
                break;
              }

              OUTLINED_FUNCTION_97_0();
              OUTLINED_FUNCTION_10_65();

              if (v5)
              {
                goto LABEL_31;
              }

              v34 = (v34 + 1);
            }

LABEL_31:

            v34 = v387;
            p_vtable = v395;
            if (*v7 == _TtC8VideosUI13TextViewModel)
            {
LABEL_34:
              v377 = v7;
              v49 = v343;
              v50 = v34(v35);
              if (v50)
              {
                sub_1E32AE9B0(v50);
                OUTLINED_FUNCTION_22_55();
                v3 = &qword_1F5D5CE68;
                while (1)
                {
                  if (p_vtable == v34)
                  {

                    v7 = 0;
                    v34 = v387;
                    p_vtable = v395;
                    goto LABEL_53;
                  }

                  if (v8)
                  {
                    v60 = OUTLINED_FUNCTION_11_6();
                    v7 = MEMORY[0x1E6911E60](v60);
                  }

                  else
                  {
                    if (v34 >= *(v6 + 16))
                    {
                      goto LABEL_432;
                    }

                    OUTLINED_FUNCTION_55_25();
                  }

                  if (__OFADD__(v34, 1))
                  {
                    goto LABEL_431;
                  }

                  LOWORD(v400) = *(v7 + 98);
                  v405 = 15;
                  sub_1E3742F1C();
                  OUTLINED_FUNCTION_6_108();
                  OUTLINED_FUNCTION_3_129();
                  v51 = sub_1E4206254();
                  OUTLINED_FUNCTION_17_77(v51, v52, v53, v54, v55, v56, v57, v58, v326, v330, v335, v339, v343, v348, v352, v358, v365, v371, v377, v381, v387, v395, v399[0]);
                  if (v44 && v4 == v49)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_97_0();
                  OUTLINED_FUNCTION_10_65();

                  if (v5)
                  {
                    goto LABEL_50;
                  }

                  v34 = (v34 + 1);
                }

LABEL_50:

                v34 = v387;
                p_vtable = v395;
                if (*v7 == _TtC8VideosUI13TextViewModel)
                {
LABEL_53:
                  v372 = v7;
                  v61 = v343;
                  v62 = v34(v50);
                  if (v62)
                  {
                    sub_1E32AE9B0(v62);
                    OUTLINED_FUNCTION_22_55();
                    v3 = &qword_1F5D5CE68;
                    while (1)
                    {
                      if (p_vtable == v34)
                      {

                        v7 = 0;
                        v34 = v387;
                        p_vtable = v395;
                        goto LABEL_72;
                      }

                      if (v8)
                      {
                        v72 = OUTLINED_FUNCTION_11_6();
                        v7 = MEMORY[0x1E6911E60](v72);
                      }

                      else
                      {
                        if (v34 >= *(v6 + 16))
                        {
                          goto LABEL_434;
                        }

                        OUTLINED_FUNCTION_55_25();
                      }

                      if (__OFADD__(v34, 1))
                      {
                        goto LABEL_433;
                      }

                      LOWORD(v400) = *(v7 + 98);
                      v405 = 10;
                      sub_1E3742F1C();
                      OUTLINED_FUNCTION_6_108();
                      OUTLINED_FUNCTION_3_129();
                      v63 = sub_1E4206254();
                      OUTLINED_FUNCTION_17_77(v63, v64, v65, v66, v67, v68, v69, v70, v326, v330, v335, v339, v343, v348, v352, v358, v365, v372, v377, v381, v387, v395, v399[0]);
                      if (v44 && v4 == v61)
                      {
                        break;
                      }

                      OUTLINED_FUNCTION_97_0();
                      OUTLINED_FUNCTION_10_65();

                      if (v5)
                      {
                        goto LABEL_69;
                      }

                      v34 = (v34 + 1);
                    }

LABEL_69:

                    v34 = v387;
                    p_vtable = v395;
                    if (*v7 == _TtC8VideosUI13TextViewModel)
                    {
LABEL_72:
                      v382 = v7;
                      v73 = v343;
                      v74 = v34(v62);
                      if (v74)
                      {
                        v75 = v74;
                        p_vtable = sub_1E32AE9B0(v74);
                        v76 = 0;
                        v6 = v75 & 0xC000000000000001;
                        LOBYTE(v7) = v75 & 0xF8;
                        v3 = &qword_1F5D5CE68;
                        while (1)
                        {
                          if (p_vtable == v76)
                          {

                            goto LABEL_90;
                          }

                          if (v6)
                          {
                            v86 = OUTLINED_FUNCTION_11_6();
                            v46 = MEMORY[0x1E6911E60](v86);
                          }

                          else
                          {
                            if (v76 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
                            {
                              goto LABEL_436;
                            }

                            v46 = *(v75 + 8 * v76 + 32);
                          }

                          if (__OFADD__(v76, 1))
                          {
                            goto LABEL_435;
                          }

                          LOWORD(v400) = *(v46 + 98);
                          v405 = 233;
                          sub_1E3742F1C();
                          OUTLINED_FUNCTION_6_108();
                          OUTLINED_FUNCTION_3_129();
                          v77 = sub_1E4206254();
                          OUTLINED_FUNCTION_17_77(v77, v78, v79, v80, v81, v82, v83, v84, v326, v330, v335, v339, v343, v348, v352, v358, v365, v372, v377, v382, v387, v395, v399[0]);
                          if (v44 && v4 == v73)
                          {
                            break;
                          }

                          OUTLINED_FUNCTION_97_0();
                          OUTLINED_FUNCTION_10_65();

                          if (v5)
                          {
                            goto LABEL_88;
                          }

                          ++v76;
                        }

LABEL_88:

                        if (*v46 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
                        {
                          goto LABEL_91;
                        }
                      }

LABEL_90:
                      v46 = 0;
LABEL_91:
                      v48 = v343;
                      v47 = v382;
                      goto LABEL_92;
                    }
                  }

                  v7 = 0;
                  goto LABEL_72;
                }
              }

              v7 = 0;
              goto LABEL_53;
            }
          }

          v7 = 0;
          goto LABEL_34;
        }

LABEL_12:
        OUTLINED_FUNCTION_8();
        v28 = *(v27 + 464);

        v30 = v28(v29);

        if (v30)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }
  }

  v46 = 0;
  v47 = 0;
  v372 = 0;
  v377 = 0;
  v48 = 0;
LABEL_92:
  v331 = v46;
  v383 = v47;
  v344 = v48;
  v366 = sub_1E32AE9B0(v352);
  if (!v366)
  {
    goto LABEL_212;
  }

  p_vtable = 0;
  v358 = (v352 & 0xC000000000000001);
  v335 = v352 + 32;
  v339 = v352 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v358)
    {
      v87 = MEMORY[0x1E6911E60](p_vtable, v352);
      v88 = v87;
    }

    else
    {
      if (p_vtable >= *(v339 + 16))
      {
        goto LABEL_425;
      }

      v88 = *(v335 + 8 * p_vtable);
    }

    v89 = __OFADD__(p_vtable, 1);
    v90 = (p_vtable + 1);
    if (v89)
    {
      goto LABEL_424;
    }

    v387 = v90;
    v395 = v88;
    if (!v377)
    {
      v377 = 0;
      goto LABEL_128;
    }

    OUTLINED_FUNCTION_71_2();
    v87 = (*(v91 + 464))();
    if (!v87)
    {
      goto LABEL_128;
    }

    sub_1E32AE9B0(v87);
    OUTLINED_FUNCTION_16_82();
    while (1)
    {
      if (v6 == v3)
      {

LABEL_121:
        v88 = v395;
        goto LABEL_128;
      }

      if (v90)
      {
        OUTLINED_FUNCTION_82_8();
        v4 = v101;
      }

      else
      {
        if (v3 >= *(v46 + 16))
        {
          goto LABEL_419;
        }

        OUTLINED_FUNCTION_34_39();
      }

      if (__OFADD__(v3, 1))
      {
        goto LABEL_418;
      }

      OUTLINED_FUNCTION_76_10();
      v405 = 23;
      sub_1E3742F1C();
      OUTLINED_FUNCTION_7_125();
      OUTLINED_FUNCTION_8_93();
      v92 = OUTLINED_FUNCTION_42_41();
      OUTLINED_FUNCTION_25_57(v92, v93, v94, v95, v96, v97, v98, v99, v326, v331, v335, v339, v344, v348, v352, v358, v366, v372, v377, v383, v387, v395, v399[0]);
      if (v44)
      {
        break;
      }

      OUTLINED_FUNCTION_20_8();
      OUTLINED_FUNCTION_84_9();

      if (v7)
      {
        goto LABEL_117;
      }

      v3 = (v3 + 1);
    }

LABEL_117:

    if (*v4 != _TtC8VideosUI13TextViewModel)
    {

      goto LABEL_121;
    }

    sub_1E3C27024();
    v88 = v395;
    if (v102)
    {
      v103 = sub_1E4206024();
    }

    else
    {
      v103 = 0;
    }

    sub_1E3C27024();
    if (v104)
    {
      sub_1E4206024();
      OUTLINED_FUNCTION_73_1();
      if (v103 < v3)
      {
        goto LABEL_125;
      }

LABEL_127:
    }

    else
    {
      if ((v103 & 0x8000000000000000) == 0)
      {
        goto LABEL_127;
      }

LABEL_125:

      v377 = v4;
    }

LABEL_128:
    if (!v372)
    {
      v372 = 0;
      goto LABEL_157;
    }

    OUTLINED_FUNCTION_71_2();
    v87 = (*(v105 + 464))();
    if (!v87)
    {
      goto LABEL_157;
    }

    sub_1E32AE9B0(v87);
    OUTLINED_FUNCTION_16_82();
    while (2)
    {
      if (v6 == v3)
      {

LABEL_150:
        v88 = v395;
        goto LABEL_157;
      }

      if (v90)
      {
        OUTLINED_FUNCTION_82_8();
        v4 = v115;
      }

      else
      {
        if (v3 >= *(v46 + 16))
        {
          goto LABEL_421;
        }

        OUTLINED_FUNCTION_34_39();
      }

      if (__OFADD__(v3, 1))
      {
        goto LABEL_420;
      }

      OUTLINED_FUNCTION_76_10();
      v405 = 15;
      sub_1E3742F1C();
      OUTLINED_FUNCTION_7_125();
      OUTLINED_FUNCTION_8_93();
      v106 = OUTLINED_FUNCTION_42_41();
      OUTLINED_FUNCTION_25_57(v106, v107, v108, v109, v110, v111, v112, v113, v326, v331, v335, v339, v344, v348, v352, v358, v366, v372, v377, v383, v387, v395, v399[0]);
      if (!v44)
      {
        OUTLINED_FUNCTION_20_8();
        OUTLINED_FUNCTION_84_9();

        if (v7)
        {
          goto LABEL_146;
        }

        v3 = (v3 + 1);
        continue;
      }

      break;
    }

LABEL_146:

    if (*v4 != _TtC8VideosUI13TextViewModel)
    {

      goto LABEL_150;
    }

    sub_1E3C27024();
    v88 = v395;
    if (v116)
    {
      v117 = sub_1E4206024();
    }

    else
    {
      v117 = 0;
    }

    sub_1E3C27024();
    if (v118)
    {
      sub_1E4206024();
      OUTLINED_FUNCTION_73_1();
      if (v117 < v3)
      {
        goto LABEL_154;
      }

LABEL_156:
    }

    else
    {
      if ((v117 & 0x8000000000000000) == 0)
      {
        goto LABEL_156;
      }

LABEL_154:

      v372 = v4;
    }

LABEL_157:
    v119 = v88 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    if (!v383)
    {
      v383 = 0;
      goto LABEL_186;
    }

    OUTLINED_FUNCTION_71_2();
    v87 = (*(v120 + 464))();
    if (!v87)
    {
      goto LABEL_186;
    }

    v121 = v87;
    v348 = v88 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v6 = sub_1E32AE9B0(v87);
    v3 = 0;
    v46 = v121 & 0xC000000000000001;
    while (2)
    {
      if (v6 == v3)
      {

LABEL_179:
        v88 = v395;
        v119 = v348;
        goto LABEL_186;
      }

      if (v46)
      {
        OUTLINED_FUNCTION_82_8();
        v4 = v131;
      }

      else
      {
        if (v3 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_423;
        }

        OUTLINED_FUNCTION_34_39();
      }

      if (__OFADD__(v3, 1))
      {
        goto LABEL_422;
      }

      OUTLINED_FUNCTION_76_10();
      v405 = 10;
      sub_1E3742F1C();
      OUTLINED_FUNCTION_7_125();
      OUTLINED_FUNCTION_8_93();
      v122 = OUTLINED_FUNCTION_42_41();
      OUTLINED_FUNCTION_25_57(v122, v123, v124, v125, v126, v127, v128, v129, v326, v331, v335, v339, v344, v348, v352, v358, v366, v372, v377, v383, v387, v395, v399[0]);
      if (!v44)
      {
        OUTLINED_FUNCTION_20_8();
        OUTLINED_FUNCTION_84_9();

        if (v7)
        {
          goto LABEL_175;
        }

        v3 = (v3 + 1);
        continue;
      }

      break;
    }

LABEL_175:

    if (*v4 != _TtC8VideosUI13TextViewModel)
    {

      goto LABEL_179;
    }

    sub_1E3C27024();
    v88 = v395;
    v119 = v348;
    if (v132)
    {
      v133 = sub_1E4206024();
    }

    else
    {
      v133 = 0;
    }

    sub_1E3C27024();
    if (v134)
    {
      sub_1E4206024();
      OUTLINED_FUNCTION_73_1();
      if (v133 < v3)
      {
        goto LABEL_183;
      }

LABEL_185:
    }

    else
    {
      if ((v133 & 0x8000000000000000) == 0)
      {
        goto LABEL_185;
      }

LABEL_183:

      v383 = v4;
    }

LABEL_186:
    v135 = (*(*v88 + 464))(v87);
    if (v135)
    {
      sub_1E32AE9B0(v135);
      OUTLINED_FUNCTION_16_82();
      while (1)
      {
        if (v6 == v3)
        {

          goto LABEL_208;
        }

        if (v119)
        {
          OUTLINED_FUNCTION_82_8();
          v4 = v145;
        }

        else
        {
          if (v3 >= *(v46 + 16))
          {
            goto LABEL_417;
          }

          OUTLINED_FUNCTION_34_39();
        }

        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_417:
          __break(1u);
LABEL_418:
          __break(1u);
LABEL_419:
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          __break(1u);
LABEL_423:
          __break(1u);
LABEL_424:
          __break(1u);
LABEL_425:
          __break(1u);
LABEL_426:
          __break(1u);
LABEL_427:
          __break(1u);
LABEL_428:
          __break(1u);
LABEL_429:
          __break(1u);
LABEL_430:
          __break(1u);
LABEL_431:
          __break(1u);
LABEL_432:
          __break(1u);
LABEL_433:
          __break(1u);
LABEL_434:
          __break(1u);
LABEL_435:
          __break(1u);
LABEL_436:
          __break(1u);
LABEL_437:
          __break(1u);
LABEL_438:
          __break(1u);
LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          __break(1u);
LABEL_443:
          __break(1u);
LABEL_444:
          __break(1u);
LABEL_445:
          __break(1u);
LABEL_446:
          __break(1u);
LABEL_447:
          __break(1u);
LABEL_448:
          __break(1u);
LABEL_449:
          __break(1u);
          __break(1u);
LABEL_450:
          __break(1u);
LABEL_451:
          __break(1u);
LABEL_452:
          __break(1u);
LABEL_453:
          __break(1u);
LABEL_454:
          __break(1u);
          __break(1u);
LABEL_455:
          __break(1u);
LABEL_456:
          __break(1u);
          __break(1u);
LABEL_457:
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_458:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_459:
          __break(1u);
LABEL_460:
          __break(1u);
LABEL_461:
          __break(1u);
LABEL_462:
          __break(1u);
LABEL_463:
          __break(1u);
LABEL_464:
          __break(1u);
LABEL_465:
          __break(1u);
LABEL_466:
          __break(1u);
LABEL_467:
          __break(1u);
LABEL_468:
          __break(1u);
LABEL_469:
          __break(1u);
LABEL_470:
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_76_10();
        v405 = 233;
        sub_1E3742F1C();
        OUTLINED_FUNCTION_7_125();
        OUTLINED_FUNCTION_8_93();
        v136 = OUTLINED_FUNCTION_42_41();
        OUTLINED_FUNCTION_25_57(v136, v137, v138, v139, v140, v141, v142, v143, v326, v331, v335, v339, v344, v348, v352, v358, v366, v372, v377, v383, v387, v395, v399[0]);
        if (v44)
        {
          break;
        }

        OUTLINED_FUNCTION_20_8();
        OUTLINED_FUNCTION_84_9();

        if (v7)
        {
          goto LABEL_203;
        }

        v3 = (v3 + 1);
      }

LABEL_203:

      if (*v4 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
      {
        v146 = sub_1E4173898();

        p_vtable = v387;

        if (v146)
        {
          v331 = v4;
        }

        continue;
      }
    }

LABEL_208:
    p_vtable = v387;
  }

  while (p_vtable != v366);
LABEL_212:
  v147 = v344;
  if (!v344)
  {
    goto LABEL_326;
  }

  OUTLINED_FUNCTION_8();
  v149 = (*(v148 + 480))(v399);
  v157 = *v150;
  if (!*v150)
  {
    v164 = OUTLINED_FUNCTION_12_85(v149, v150, v151, v152, v153, v154, v155, v156, v326, v331, v335, v339, v344, v348, v352, v358, v366, v372, v377, v383, v387, v395, v399[0]);
    v165(v164);
    goto LABEL_292;
  }

  p_vtable = v150;
  v359 = v149;
  v6 = 0;
  v388 = v157 & 0xC000000000000001;
  v396 = sub_1E32AE9B0(v157);
  v367 = v157 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v396 == v6)
    {
      goto LABEL_289;
    }

    if (v388)
    {
      v158 = MEMORY[0x1E6911E60](v6, v157);
    }

    else
    {
      if (v6 >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_437;
      }

      v158 = *(v157 + 8 * v6 + 32);
    }

    v159 = *(v158 + 98);
    v405 = v159;
    v402 = 23;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_8_93();
    OUTLINED_FUNCTION_41_36();
    OUTLINED_FUNCTION_14_101();
    OUTLINED_FUNCTION_4_131();
    if (v44 && v3 == v344)
    {
      break;
    }

    v161 = OUTLINED_FUNCTION_21_59();

    if (v161)
    {
      goto LABEL_235;
    }

    v405 = v159;
    v402 = 15;
    OUTLINED_FUNCTION_8_93();
    OUTLINED_FUNCTION_41_36();
    OUTLINED_FUNCTION_14_101();
    OUTLINED_FUNCTION_4_131();
    if (v44 && v3 == v344)
    {
      break;
    }

    v163 = OUTLINED_FUNCTION_21_59();

    if (v163)
    {
      goto LABEL_236;
    }

    v89 = __OFADD__(v6++, 1);
    if (v89)
    {
      goto LABEL_448;
    }
  }

LABEL_235:

LABEL_236:
  v166 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_451;
  }

  if (v166 == sub_1E32AE9B0(*p_vtable))
  {
    goto LABEL_290;
  }

  v167 = v6 + 5;
  while (2)
  {
    OUTLINED_FUNCTION_40_39();
    if (v44)
    {
      if ((v166 & 0x8000000000000000) != 0)
      {
        goto LABEL_426;
      }

      OUTLINED_FUNCTION_39_29();
      if (v169)
      {
        goto LABEL_427;
      }

      v181 = *(v168 + 8 * v167);
    }

    else
    {
      v181 = MEMORY[0x1E6911E60](v166);
    }

    v170 = *(v181 + 98);
    v405 = v170;
    v402 = 23;
    OUTLINED_FUNCTION_8_93();
    sub_1E4206254();
    OUTLINED_FUNCTION_15_91();
    OUTLINED_FUNCTION_4_131();
    if (v44 && &qword_1F5D5CE68 == v147)
    {
      goto LABEL_277;
    }

    OUTLINED_FUNCTION_21_59();
    OUTLINED_FUNCTION_112_0();

    if (v159)
    {
LABEL_278:

      goto LABEL_279;
    }

    v405 = v170;
    v402 = 15;
    OUTLINED_FUNCTION_8_93();
    sub_1E4206254();
    OUTLINED_FUNCTION_15_91();
    OUTLINED_FUNCTION_4_131();
    if (v44 && &qword_1F5D5CE68 == v147)
    {
LABEL_277:

      goto LABEL_278;
    }

    OUTLINED_FUNCTION_21_59();
    OUTLINED_FUNCTION_112_0();

    if (v159)
    {
      goto LABEL_279;
    }

    if (v166 == v6)
    {
      goto LABEL_274;
    }

    v173 = *p_vtable;
    if ((*p_vtable & 0xC000000000000001) != 0)
    {
      v147 = MEMORY[0x1E6911E60](v6, *p_vtable);
      v173 = *p_vtable;
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_464;
      }

      OUTLINED_FUNCTION_33_39();
      if (v6 >= v174)
      {
        goto LABEL_465;
      }

      OUTLINED_FUNCTION_59_16();
    }

    if ((v173 & 0xC000000000000001) != 0)
    {
      v182 = OUTLINED_FUNCTION_114_0();
      MEMORY[0x1E6911E60](v182);
      v173 = *p_vtable;
    }

    else
    {
      if ((v166 & 0x8000000000000000) != 0)
      {
        goto LABEL_466;
      }

      OUTLINED_FUNCTION_33_39();
      if (v166 >= v175)
      {
        goto LABEL_468;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *p_vtable = v173;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v173 & 0x8000000000000000) != 0 || (v173 & 0x4000000000000000) != 0)
    {
      *p_vtable = sub_1E37EFA58(v173);
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_467;
    }

    OUTLINED_FUNCTION_38_30();
    if (v169)
    {
      goto LABEL_469;
    }

    OUTLINED_FUNCTION_58_21(v177);
    v178 = *p_vtable;
    if ((*p_vtable & 0x8000000000000000) == 0 && (v178 & 0x4000000000000000) == 0)
    {
      if ((v166 & 0x8000000000000000) != 0)
      {
        goto LABEL_288;
      }

LABEL_272:
      OUTLINED_FUNCTION_37_38();
      if (v169)
      {
        goto LABEL_470;
      }

      *(v179 + 8 * v167) = v147;

LABEL_274:
      v89 = __OFADD__(v6++, 1);
      if (v89)
      {
        goto LABEL_459;
      }

LABEL_279:
      v89 = __OFADD__(v166++, 1);
      if (v89)
      {
        goto LABEL_428;
      }

      if (*p_vtable >> 62)
      {
        v180 = OUTLINED_FUNCTION_119_1();
      }

      else
      {
        v180 = *((*p_vtable & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v167;
      if (v166 == v180)
      {
        goto LABEL_290;
      }

      continue;
    }

    break;
  }

  *p_vtable = sub_1E37EFA58(v178);
  if ((v166 & 0x8000000000000000) == 0)
  {
    goto LABEL_272;
  }

LABEL_288:
  __break(1u);
LABEL_289:
  v6 = sub_1E32AE9B0(*p_vtable);
LABEL_290:
  v183 = sub_1E32AE9B0(*p_vtable);
  if (v183 < v6)
  {
    goto LABEL_450;
  }

  v184 = OUTLINED_FUNCTION_62_15(v183);
  v192 = OUTLINED_FUNCTION_12_85(v184, v185, v186, v187, v188, v189, v190, v191, v326, v331, v335, v339, v344, v348, v352, v359, v367, v372, v377, v383, v388, v396, v399[0]);
  v358(v192);
LABEL_292:
  v147 = v344;
  if (v377)
  {
    OUTLINED_FUNCTION_8();
    v194 = *(v193 + 480);

    OUTLINED_FUNCTION_32_48();
    v194();
    OUTLINED_FUNCTION_44_35();
    if (v203)
    {

      v195 = sub_1E3B6D09C();
    }

    v204 = OUTLINED_FUNCTION_12_85(v195, v196, v197, v198, v199, v200, v201, v202, v326, v331, v335, v339, v344, v348, v352, v358, v366, v372, v377, v383, v389, v395, v399[0]);
    (v194)(v204);

    v147 = v344;
  }

  if (v372)
  {
    OUTLINED_FUNCTION_8();
    v206 = *(v205 + 480);

    OUTLINED_FUNCTION_32_48();
    v206();
    OUTLINED_FUNCTION_44_35();
    if (v215)
    {

      v207 = sub_1E3B6D09C();
    }

    v216 = OUTLINED_FUNCTION_12_85(v207, v208, v209, v210, v211, v212, v213, v214, v326, v331, v335, v339, v344, v348, v352, v358, v366, v372, v377, v383, v389, v395, v399[0]);
    (v206)(v216);

    v147 = v344;
  }

  if (!v383)
  {
    goto LABEL_326;
  }

  OUTLINED_FUNCTION_8();
  v217 += 60;
  v218 = *v217;
  v219 = v217;

  OUTLINED_FUNCTION_32_48();
  v220 = v218();
  v390 = v221;
  v228 = *v221;
  if (!*v221)
  {
    v242 = OUTLINED_FUNCTION_12_85(v220, v221, v222, v223, v224, v225, v226, v227, v326, v331, v335, v339, v344, v348, v352, v358, v366, v372, v377, v383, v221, v395, v399[0]);
    v243(v242);
    goto LABEL_323;
  }

  v353 = v220;
  v360 = v219;
  sub_1E32AE9B0(v228);
  OUTLINED_FUNCTION_46_30();
  v237 = &qword_1F5D5CE68;
  while (1)
  {
    if (v218 == v6)
    {
      v6 = OUTLINED_FUNCTION_83_7(v229, v230, v231, v232, v233, v234, v235, v236, v326, v331, v335, v339, v344, v348, v353, v360, v218, v372, v377, v383, v390);
      goto LABEL_321;
    }

    if (v395)
    {
      v238 = MEMORY[0x1E6911E60](v6, v228);
    }

    else
    {
      if (v6 >= *(p_vtable + 16))
      {
        goto LABEL_438;
      }

      v238 = *(v228 + 8 * v6 + 32);
    }

    v405 = *(v238 + 98);
    v402 = 10;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_3_129();
    sub_1E4206254();
    OUTLINED_FUNCTION_15_91();
    v239 = v401;
    if (v403 == v400 && v404 == v401)
    {
      break;
    }

    v241 = OUTLINED_FUNCTION_20_8();

    if (v241)
    {
      goto LABEL_319;
    }

    v89 = __OFADD__(v6++, 1);
    if (v89)
    {
      goto LABEL_440;
    }
  }

LABEL_319:
  v228 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_462;
  }

  if (v228 != OUTLINED_FUNCTION_83_7(v229, v230, v231, v232, v233, v234, v235, v236, v326, v331, v335, v339, v344, v348, v353, v360, v218, v372, v377, v383, v390))
  {
    v308 = v6 + 5;
    do
    {
      OUTLINED_FUNCTION_40_39();
      if (v44)
      {
        if ((v228 & 0x8000000000000000) != 0)
        {
          goto LABEL_442;
        }

        OUTLINED_FUNCTION_39_29();
        if (v169)
        {
          goto LABEL_443;
        }

        v319 = *(v309 + 8 * v308);
      }

      else
      {
        v319 = MEMORY[0x1E6911E60](v228);
      }

      v405 = *(v319 + 98);
      v402 = 10;
      OUTLINED_FUNCTION_8_93();
      OUTLINED_FUNCTION_41_36();
      OUTLINED_FUNCTION_14_101();
      OUTLINED_FUNCTION_4_131();
      if (v44 && v237 == v239)
      {
      }

      else
      {
        OUTLINED_FUNCTION_21_59();
        OUTLINED_FUNCTION_112_0();

        if (v228 != v6)
        {
          v311 = *p_vtable;
          if ((*p_vtable & 0xC000000000000001) != 0)
          {
            v239 = MEMORY[0x1E6911E60](v6, *p_vtable);
            v311 = *p_vtable;
          }

          else
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_452;
            }

            OUTLINED_FUNCTION_33_39();
            if (v6 >= v312)
            {
              goto LABEL_453;
            }

            OUTLINED_FUNCTION_59_16();
          }

          if ((v311 & 0xC000000000000001) != 0)
          {
            v320 = OUTLINED_FUNCTION_114_0();
            v237 = MEMORY[0x1E6911E60](v320);
            v311 = *p_vtable;
          }

          else
          {
            if ((v228 & 0x8000000000000000) != 0)
            {
              goto LABEL_454;
            }

            OUTLINED_FUNCTION_33_39();
            if (v228 >= v313)
            {
              goto LABEL_456;
            }

            v237 = *(v311 + 8 * v308);
          }

          v314 = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *p_vtable = v311;
          if (!v314 || (v311 & 0x8000000000000000) != 0 || (v311 & 0x4000000000000000) != 0)
          {
            *p_vtable = sub_1E37EFA58(v311);
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_455;
          }

          OUTLINED_FUNCTION_38_30();
          if (v169)
          {
            goto LABEL_457;
          }

          OUTLINED_FUNCTION_58_21(v315);
          v316 = *p_vtable;
          if ((*p_vtable & 0x8000000000000000) != 0 || (v316 & 0x4000000000000000) != 0)
          {
            *p_vtable = sub_1E37EFA58(v316);
            if ((v228 & 0x8000000000000000) != 0)
            {
LABEL_397:
              __break(1u);
              goto LABEL_398;
            }
          }

          else if ((v228 & 0x8000000000000000) != 0)
          {
            goto LABEL_397;
          }

          OUTLINED_FUNCTION_37_38();
          if (v169)
          {
            goto LABEL_458;
          }

          *(v317 + 8 * v308) = v239;
        }

        v89 = __OFADD__(v6++, 1);
        if (v89)
        {
          goto LABEL_449;
        }
      }

      v89 = __OFADD__(v228++, 1);
      if (v89)
      {
        goto LABEL_444;
      }

      if (*p_vtable >> 62)
      {
        v318 = OUTLINED_FUNCTION_119_1();
      }

      else
      {
        v318 = *((*p_vtable & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v308;
    }

    while (v228 != v318);
  }

LABEL_321:
  v244 = sub_1E32AE9B0(*p_vtable);
  if (v244 < v6)
  {
    goto LABEL_460;
  }

  v245 = OUTLINED_FUNCTION_62_15(v244);
  v253 = OUTLINED_FUNCTION_12_85(v245, v246, v247, v248, v249, v250, v251, v252, v328, v333, v337, v341, v346, v350, v355, v362, v369, v374, v379, v385, v392, v395, v399[0]);
  v354(v253);
  v218 = v368;
LABEL_323:
  OUTLINED_FUNCTION_32_48();
  v218();
  OUTLINED_FUNCTION_44_35();
  if (v262)
  {

    v254 = sub_1E3B6D09C();
  }

  v263 = OUTLINED_FUNCTION_12_85(v254, v255, v256, v257, v258, v259, v260, v261, v327, v332, v336, v340, v345, v349, v354, v361, v368, v373, v378, v384, v391, v397, v399[0]);
  (v228)(v263);

  v147 = v344;
LABEL_326:
  if (!v331)
  {
    goto LABEL_354;
  }

  if (!v147)
  {
    goto LABEL_353;
  }

  OUTLINED_FUNCTION_8();
  v264 += 60;
  v265 = *v264;
  v266 = v264;
  OUTLINED_FUNCTION_32_48();
  v267 = v265();
  v393 = v268;
  v228 = *v268;
  if (!*v268)
  {
    v286 = OUTLINED_FUNCTION_12_85(v267, v268, v269, v270, v271, v272, v273, v274, v326, v331, v335, v339, v344, v348, v352, v358, v366, v372, v377, v383, v268, v395, v399[0]);
    v287(v286);
    goto LABEL_350;
  }

  v356 = v267;
  v363 = v266;
  sub_1E32AE9B0(v228);
  OUTLINED_FUNCTION_46_30();
  v237 = &qword_1F5D5CE68;
  while (1)
  {
    if (v265 == v6)
    {
      v6 = OUTLINED_FUNCTION_83_7(v275, v276, v277, v278, v279, v280, v281, v282, v326, v331, v335, v339, v344, v348, v356, v363, v265, v372, v377, v383, v393);
      goto LABEL_348;
    }

    if (v395)
    {
      v283 = MEMORY[0x1E6911E60](v6, v228);
    }

    else
    {
      if (v6 >= *(p_vtable + 16))
      {
        goto LABEL_439;
      }

      v283 = *(v228 + 8 * v6 + 32);
    }

    v405 = *(v283 + 98);
    v402 = 233;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_3_129();
    sub_1E4206254();
    OUTLINED_FUNCTION_15_91();
    v239 = v401;
    if (v403 == v400 && v404 == v401)
    {
      break;
    }

    v285 = OUTLINED_FUNCTION_20_8();

    if (v285)
    {
      goto LABEL_346;
    }

    v89 = __OFADD__(v6++, 1);
    if (v89)
    {
      goto LABEL_441;
    }
  }

LABEL_346:
  v228 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_463;
  }

  if (v228 != OUTLINED_FUNCTION_83_7(v275, v276, v277, v278, v279, v280, v281, v282, v326, v331, v335, v339, v344, v348, v356, v363, v265, v372, v377, v383, v393))
  {
LABEL_398:
    v321 = v6 + 5;
    do
    {
      OUTLINED_FUNCTION_40_39();
      if (v44)
      {
        if ((v228 & 0x8000000000000000) != 0)
        {
          goto LABEL_445;
        }

        OUTLINED_FUNCTION_39_29();
        if (v169)
        {
          goto LABEL_446;
        }

        v325 = *(v322 + 8 * v321);
      }

      else
      {
        v325 = MEMORY[0x1E6911E60](v228);
      }

      v405 = *(v325 + 98);
      v402 = 233;
      OUTLINED_FUNCTION_8_93();
      OUTLINED_FUNCTION_41_36();
      OUTLINED_FUNCTION_14_101();
      OUTLINED_FUNCTION_4_131();
      if (v44 && v237 == v239)
      {
      }

      else
      {
        OUTLINED_FUNCTION_21_59();
        OUTLINED_FUNCTION_112_0();
      }

      v89 = __OFADD__(v228++, 1);
      if (v89)
      {
        goto LABEL_447;
      }

      if (*p_vtable >> 62)
      {
        v324 = OUTLINED_FUNCTION_119_1();
      }

      else
      {
        v324 = *((*p_vtable & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v321;
    }

    while (v228 != v324);
  }

LABEL_348:
  v288 = sub_1E32AE9B0(*p_vtable);
  if (v288 < v6)
  {
    goto LABEL_461;
  }

  v289 = OUTLINED_FUNCTION_62_15(v288);
  v297 = OUTLINED_FUNCTION_12_85(v289, v290, v291, v292, v293, v294, v295, v296, v328, v333, v337, v341, v346, v350, v355, v362, v369, v374, v379, v385, v392, v395, v399[0]);
  v357(v297);
  v265 = v370;
LABEL_350:
  OUTLINED_FUNCTION_32_48();
  v265();
  OUTLINED_FUNCTION_44_35();
  if (v306)
  {

    v298 = sub_1E3B6D09C();
  }

  v307 = OUTLINED_FUNCTION_12_85(v298, v299, v300, v301, v302, v303, v304, v305, v329, v334, v338, v342, v347, v351, v357, v364, v370, v375, v380, v386, v394, v398, v399[0]);
  (v228)(v307);
LABEL_353:

LABEL_354:
}

void sub_1E3B6F108()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *sub_1E3C8DC30();
  if (v1)
  {
    v9 = v3;
    v10 = v1;
  }

  else
  {
    v9 = *(v7 + 40);
    v10 = *(v7 + 48);
  }

  v11 = MEMORY[0x1E69E6158];
  v95 = v9;
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;

    sub_1E384EE08(23);
    *(inited + 32) = v13;
    *(inited + 40) = v14;
    *(inited + 72) = v11;
    *(inited + 48) = v9;
    *(inited + 56) = v10;

    OUTLINED_FUNCTION_71_22();
    v93 = sub_1E4205CB4();
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1E4297BE0;
    sub_1E384EE08(39);
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    v94 = v3;
    v18 = swift_initStackObject();
    v19 = OUTLINED_FUNCTION_130(v18, xmmword_1E4297BD0);
    v18[2].n128_u64[0] = sub_1E3C7CCAC(v19);
    v18[2].n128_u64[1] = v20;
    v18[4].n128_u64[1] = v11;
    OUTLINED_FUNCTION_35_38();
    v18[3].n128_u64[0] = v22;
    v18[3].n128_u64[1] = v21;
    ViewModelKeys.rawValue.getter(12);
    v18[5].n128_u64[0] = v23;
    v18[5].n128_u64[1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_1E429A240;
    *(v25 + 32) = sub_1E3D46F94(91);
    *(v25 + 40) = v26;
    *(v25 + 48) = 0x6C6C616D73;
    *(v25 + 56) = 0xE500000000000000;
    *(v25 + 64) = sub_1E3D46F94(96);
    *(v25 + 72) = v27;
    *(v25 + 80) = 0x32656C746974;
    *(v25 + 88) = 0xE600000000000000;
    *(v25 + 96) = sub_1E3D46F94(97);
    *(v25 + 104) = v28;
    *(v25 + 112) = 0x7A69736168706D65;
    *(v25 + 120) = 0xEA00000000006465;
    *(v25 + 128) = sub_1E3D46F94(21);
    *(v25 + 136) = v29;
    strcpy((v25 + 144), "secondaryText");
    *(v25 + 158) = -4864;
    *(v25 + 160) = sub_1E3D46F94(13);
    *(v25 + 168) = v30;
    *(v25 + 176) = 0x7265746E6563;
    *(v25 + 184) = 0xE600000000000000;
    v31 = sub_1E4205CB4();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
    v18[7].n128_u64[1] = v32;
    v18[6].n128_u64[0] = v31;
    ViewModelKeys.rawValue.getter(11);
    v18[8].n128_u64[0] = v33;
    v18[8].n128_u64[1] = v34;
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_1E4297BE0;
    *(v35 + 32) = sub_1E3852A98(2);
    *(v35 + 40) = v36;
    *(v35 + 48) = 41154;
    *(v35 + 56) = 0xA200000000000000;
    v37 = sub_1E4205CB4();
    v18[10].n128_u64[1] = v32;
    v18[9].n128_u64[0] = v37;
    v3 = v94;
    OUTLINED_FUNCTION_71_22();
    v38 = sub_1E4205CB4();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    *(v15 + 72) = v39;
    *(v15 + 48) = v38;
    OUTLINED_FUNCTION_71_22();
    v40 = sub_1E4205CB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1E4299720;
    *(v41 + 32) = v93;
    *(v41 + 40) = v40;
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_1E4297BE0;
    ViewModelKeys.rawValue.getter(14);
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    *(v42 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    *(v42 + 48) = v41;
    OUTLINED_FUNCTION_71_22();
    v45 = sub_1E4205CB4();
  }

  else
  {
    v99[1] = v10;

    v39 = MEMORY[0x1E69E6158];
    v45 = v9;
  }

  v99[3] = v39;
  v99[0] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_1E4297BD0;
  v47 = sub_1E37FAFB0();
  v48 = v47[1];
  *(v46 + 32) = *v47;
  *(v46 + 40) = v48;
  *(v46 + 72) = type metadata accessor for LibMenuItem();
  *(v46 + 48) = v7;

  v49 = sub_1E37FAFE0();
  v50 = v49[1];
  *(v46 + 80) = *v49;
  *(v46 + 88) = v50;
  *(v46 + 120) = v11;
  v51 = v1;
  if (!v1)
  {
    v3 = v95;
  }

  *(v46 + 96) = v3;
  *(v46 + 104) = v51;
  sub_1E3751C10();
  OUTLINED_FUNCTION_11_5();

  v52 = sub_1E37FAFEC();
  v54 = *v52;
  v53 = v52[1];
  *(v46 + 128) = v54;
  *(v46 + 136) = v53;
  v55 = MEMORY[0x1E69E6370];
  *(v46 + 168) = MEMORY[0x1E69E6370];
  *(v46 + 144) = 0;

  v56 = MEMORY[0x1E69E6158];
  sub_1E4205CB4();
  sub_1E37FB46C();
  OUTLINED_FUNCTION_106();
  type metadata accessor for LibViewModel();

  v57 = v48;
  OUTLINED_FUNCTION_45_35();
  v62 = sub_1E3B76C80(v58, v59, v60, v61, v8, v48, 0);
  if (v62)
  {
    LOBYTE(v98) = 0;
    v97 = v55;
    LOBYTE(v96[0]) = 1;
    OUTLINED_FUNCTION_30_1();
    v64 = *(v63 + 784);

    v64(&v98, v96, &unk_1F5D5E7B8, &off_1F5D5CC78);

    sub_1E329505C(v96);
  }

  v65 = MEMORY[0x1E69E7CC0];
  v98 = MEMORY[0x1E69E7CC0];
  sub_1E328438C(v99, v96);
  type metadata accessor for TextViewModel();

  sub_1E37BD068();
  OUTLINED_FUNCTION_45_35();
  if (sub_1E3C27638(v66, v67, v68, v69, v70))
  {

    MEMORY[0x1E6910BF0](v71);
    v72 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v72 >> 1)
    {
      OUTLINED_FUNCTION_35(v72);
      sub_1E42062F4();
    }

    sub_1E4206324();
    v65 = v98;
  }

  OUTLINED_FUNCTION_0_153();
  if (sub_1E3B6CFEC(v73, 6, v74))
  {
    v75 = [objc_opt_self() currentDevice];
    v76 = [v75 userInterfaceIdiom];

    v77 = [objc_opt_self() sharedInstance];
    v78 = v77;
    if (v76)
    {
      if (v77)
      {
        v79 = "ersImageViewModel";
        v80 = 0xD000000000000018;
LABEL_22:

        v81 = sub_1E3741090(v80, v79 | 0x8000000000000000, v78);
        v83 = v82;

        if (v83)
        {
          v97 = v56;
          v96[0] = v81;
          v96[1] = v83;

          sub_1E374EA2C();
          OUTLINED_FUNCTION_45_35();
          if (sub_1E3C27638(v84, v85, v86, v87, v88))
          {
            MEMORY[0x1E6910BF0]();
            OUTLINED_FUNCTION_18_63();
            if (v90)
            {
              OUTLINED_FUNCTION_35(v89);
              sub_1E42062F4();
            }

            OUTLINED_FUNCTION_74();
            sub_1E4206324();
            v65 = v98;
          }
        }

        goto LABEL_27;
      }

      __break(1u);
    }

    else if (v77)
    {
      v79 = "LIBRARY_HDR_SUBTITLE_PAD";
      v80 = 0xD00000000000001ALL;
      goto LABEL_22;
    }

    __break(1u);
    return;
  }

LABEL_27:
  if (v62)
  {
    OUTLINED_FUNCTION_30_1();
    v92 = *(v91 + 472);

    v92(v65);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B6F93C(uint64_t a1)
{
  sub_1E3751C10();
  v2 = sub_1E37FB55C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_130(inited, xmmword_1E4297BE0);
  sub_1E3855E78();
  inited[2].n128_u64[0] = v4;
  inited[2].n128_u64[1] = v5;
  inited[3].n128_u8[0] = 1;
  v6 = sub_1E4205CB4();
  type metadata accessor for ButtonLayout();
  LOBYTE(inited) = j__OUTLINED_FUNCTION_18();
  v7 = sub_1E3B050E8();
  v8 = j__OUTLINED_FUNCTION_18();
  v9 = sub_1E3BBD964(6, inited & 1, v7, v8 & 1);
  type metadata accessor for LibViewModel();

  v10 = v2;
  v11 = sub_1E38C10D0(v6);

  v12 = sub_1E3B76C80(62, 0xD000000000000017, 0x80000001E4273330, a1, v9, v2, v11);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_1E4297BD0;
    *(v13 + 32) = sub_1E4205F14();
    *(v13 + 40) = v14;
    *(v13 + 48) = sub_1E4205F14();
    *(v13 + 56) = v15;
    *(v13 + 64) = sub_1E4205F14();
    *(v13 + 72) = v16;
    *(v13 + 80) = sub_1E4205F14();
    *(v13 + 88) = v17;
    *(v13 + 96) = sub_1E4205F14();
    *(v13 + 104) = v18;
    *(v13 + 112) = sub_1E4205F14();
    *(v13 + 120) = v19;
    sub_1E4205CB4();
    v20 = *(*v12 + 576);

    if (v20(v21))
    {
      v22 = OUTLINED_FUNCTION_16_5();
      v23 = sub_1E3797720(v22);

      OUTLINED_FUNCTION_8();
      (*(v24 + 184))(v23);
    }

    else
    {
    }
  }

  else
  {
  }

  return v12;
}

void sub_1E3B6FC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  OUTLINED_FUNCTION_31_1();
  v22 = v21;
  v24 = v23;
  v128 = v25;
  v129 = v26;
  v126 = v27;
  v127 = v28;
  v30 = v29;
  v32 = v31;
  v33 = sub_1E3C8E118();
  v34 = *v33;
  v35 = *(**v33 + 1752);

  v125 = v35(v36);
  v37 = *(**v33 + 1800);

  v37(v38);
  v39 = v32;

  v40 = sub_1E414A784(v32, v30, v24, v22);
  v42 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_130(inited, xmmword_1E4297BE0);
  sub_1E3855E78();
  inited[2].n128_u64[0] = v44;
  inited[2].n128_u64[1] = v45;
  inited[3].n128_u8[0] = 1;
  v46 = sub_1E4205CB4();
  v47 = type metadata accessor for LibViewModel();
  v48 = a21;

  v49 = sub_1E38C10D0(v46);
  v50 = v40;
  v51 = v47;
  v52 = sub_1E3B76C80(194, v50, v42, 0, v34, a21, v49);
  v134 = MEMORY[0x1E69E7CC0];
  type metadata accessor for LibImageViewModel();
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_69_17();
  v60 = sub_1E37ECC00(v53, v54, v55, v56, v57, v58, v59);
  v130 = v39;
  if (v60)
  {
    OUTLINED_FUNCTION_30_1();
    v62 = *(v61 + 328);

    v51 = v60;
    v62(v130, v30);
    v39 = v130;
  }

  v63 = sub_1E41494A8(v24, v22);
  v64 = MEMORY[0x1E69E7CC8];
  v65 = MEMORY[0x1E69E7CC8];
  v66 = v125;
  if (!v63)
  {
    type metadata accessor for LibraryFamilyMembersImageViewModel();
    OUTLINED_FUNCTION_60_1();
    swift_bridgeObjectRetain_n();

    v67 = sub_1E3B6A88C(v39, v30, v39, v30, v60);
    v65 = MEMORY[0x1E69E7CC8];
    if (v67)
    {
      v68 = v67;
      OUTLINED_FUNCTION_8();
      v70 = (*(v69 + 1744))();
      (*(*v68 + 1192))(v70);
      v71 = v68[49];

      swift_isUniquelyReferenced_nonNull_native();
      v131 = v65;
      v51 = &v131;
      sub_1E37518B8(v68, v71);

      v65 = v131;
      v64 = MEMORY[0x1E69E7CC8];
    }
  }

  if ([objc_opt_self() sharedInstance])
  {
    OUTLINED_FUNCTION_38();

    v72 = sub_1E3B72FB0(v126, v127, v128, v129, v51);
    v74 = v73;

    if (v74)
    {
      v75 = v72;
    }

    else
    {
      v75 = 0;
    }

    v76 = 0xE000000000000000;
    v133 = MEMORY[0x1E69E6158];
    if (v74)
    {
      v76 = v74;
    }

    v131 = v75;
    v132 = v76;
    type metadata accessor for TextViewModel();
    swift_retain_n();

    OUTLINED_FUNCTION_45_35();
    v81 = sub_1E3C27638(v77, v78, v79, v80, v125);
    if (v81)
    {
      v82 = v81;
      v83 = *(v81 + 98);

      swift_isUniquelyReferenced_nonNull_native();
      v131 = v65;
      sub_1E37518B8(v82, v83);

      v65 = v131;
    }

    if (v60)
    {
      OUTLINED_FUNCTION_30_1();
      v85 = *(v84 + 496);
      swift_retain_n();
      v85(v65);
      v86 = *(v60 + 98);

      swift_isUniquelyReferenced_nonNull_native();
      v131 = v64;
      v87 = sub_1E37518B8(v60, v86);
      v88 = v131;
      MEMORY[0x1E6910BF0](v87);
      v89 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v89 >> 1)
      {
        OUTLINED_FUNCTION_35(v89);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v90 = v134;

      v66 = v125;
    }

    else
    {

      v88 = MEMORY[0x1E69E7CC8];
      v90 = MEMORY[0x1E69E7CC0];
    }

    v131 = v126;
    v132 = v127;

    MEMORY[0x1E69109E0](32, 0xE100000000000000);

    MEMORY[0x1E69109E0](v128, v129);

    v133 = MEMORY[0x1E69E6158];

    v91 = sub_1E3C27638(23, &v131, v52, 0, v66);
    if (v91)
    {
      v92 = *(v91 + 98);
      swift_retain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v93 = OUTLINED_FUNCTION_65_15();
      v94 = sub_1E37518B8(v93, v92);
      v88 = v131;
      MEMORY[0x1E6910BF0](v94);
      OUTLINED_FUNCTION_36_35();
      if (v96)
      {
        OUTLINED_FUNCTION_35(v95);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v90 = v134;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    v97 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v97, xmmword_1E4299720);
    v97[2].n128_u64[0] = v98;
    v97[2].n128_u64[1] = v99;
    v97[3].n128_u64[0] = v130;
    v97[3].n128_u64[1] = v30;

    v97[4].n128_u64[0] = sub_1E3C7CCAC(0);
    v97[4].n128_u64[1] = v100;
    OUTLINED_FUNCTION_35_38();
    v97[5].n128_u64[0] = v102;
    v97[5].n128_u64[1] = v101;
    v103 = sub_1E4205CB4();
    type metadata accessor for ImageViewModel();
    v104 = sub_1E3797720(v103);

    if (sub_1E3F5321C(31, v104, 0))
    {
      swift_retain_n();
      swift_isUniquelyReferenced_nonNull_native();
      v105 = OUTLINED_FUNCTION_65_15();
      v106 = sub_1E37518B8(v105, 31);
      v88 = v131;
      MEMORY[0x1E6910BF0](v106);
      OUTLINED_FUNCTION_18_63();
      if (v96)
      {
        OUTLINED_FUNCTION_35(v107);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_11_6();
      sub_1E4206324();
      v90 = v134;
    }

    if (v52)
    {
      v108 = *(*v52 + 496);

      v108(v88);

      v109 = *(*v52 + 472);

      v109(v90);
    }

    else
    {
    }

    v110 = swift_initStackObject();
    *(v110 + 16) = xmmword_1E4298AD0;
    *(v110 + 32) = sub_1E4205F14();
    *(v110 + 40) = v111;
    *(v110 + 48) = sub_1E4205F14();
    *(v110 + 56) = v112;
    *(v110 + 64) = sub_1E4205F14();
    *(v110 + 72) = v113;
    *(v110 + 80) = sub_1E4205F14();
    *(v110 + 88) = v114;
    *(v110 + 96) = sub_1E4205F14();
    *(v110 + 104) = v115;
    *(v110 + 112) = sub_1E4205F14();
    *(v110 + 120) = v116;
    *(v110 + 128) = sub_1E4205F14();
    *(v110 + 136) = v117;
    *(v110 + 144) = sub_1E4205F14();
    *(v110 + 152) = v118;
    v119 = sub_1E4205CB4();
    if (v52)
    {
      type metadata accessor for Metrics();
      OUTLINED_FUNCTION_16_5();

      v120 = sub_1E3BA54D0();
      (*(*v52 + 584))(v120);

      v121 = *(*v52 + 576);

      v121(v122);
      OUTLINED_FUNCTION_16_5();

      v123 = sub_1E3797720(v119);

      OUTLINED_FUNCTION_8();
      (*(v124 + 184))(v123);
    }

    else
    {
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3B705C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v29 = a1;
  v30 = a2;

  MEMORY[0x1E69109E0](1986096735, 0xE400000000000000);
  v9 = v29;
  v8 = v30;
  type metadata accessor for LibViewModel();
  OUTLINED_FUNCTION_16_5();

  sub_1E3C8E228();

  OUTLINED_FUNCTION_69_17();
  v17 = sub_1E3B76C80(v10, v11, v12, v13, v14, v15, v16);
  if (!a4)
  {
    v19 = MEMORY[0x1E69E7CC8];
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_9:

    goto LABEL_15;
  }

  v31 = MEMORY[0x1E69E6158];
  v29 = a3;
  v30 = a4;
  type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_38();

  v18 = sub_1E3C27638(23, &v29, v17, 0, 0);
  v19 = MEMORY[0x1E69E7CC8];
  if (v18)
  {
    v20 = v18;

    swift_isUniquelyReferenced_nonNull_native();
    v29 = v19;
    sub_1E37518B8(v20, 23);

    v19 = v29;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v29 = v9;
  v30 = v8;

  MEMORY[0x1E69109E0](0xD000000000000012, 0x80000001E4273350);

  type metadata accessor for ViewModel();

  v21 = sub_1E39C02B0();
  v22 = sub_1E3B6F93C(v21);
  if (v22)
  {
    v23 = v22;
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v24 = OUTLINED_FUNCTION_24_3();
      *(v24 + 16) = xmmword_1E4298880;
      *(v24 + 32) = v23;
      v25 = *(*v21 + 472);

      v25(v24);

LABEL_11:

      swift_isUniquelyReferenced_nonNull_native();
      v29 = v19;
      sub_1E37518B8(v21, 103);

      v19 = v29;
      goto LABEL_15;
    }
  }

  else if (v21)
  {
    goto LABEL_11;
  }

  sub_1E3740AE8(103);
  if (v26)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v29 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780);
    sub_1E4207644();
    v19 = v29;
    sub_1E37414E0();
    OUTLINED_FUNCTION_74();
    sub_1E4207664();
  }

LABEL_15:
  if (v17)
  {
    v27 = *(*v17 + 496);

    v27(v19);
  }

  else
  {
  }

  return v17;
}

void sub_1E3B70934()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E4206BA4();
  v12 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_75_11();
  sub_1E41FFBA4();

  v13 = *(v7 + 8);
  v142 = v11;
  v143 = v7 + 8;
  v144 = v5;
  v13(v11, v5);
  v14 = *(v4 + 32);
  v15 = *(v4 + 40);
  v16 = *(v4 + 48);
  v145 = v4;
  OUTLINED_FUNCTION_0_153();
  v141 = v13;
  if (sub_1E3B6CFEC(v14, 10, v17))
  {
    sub_1E3D4C080();
    OUTLINED_FUNCTION_13_95();
    if ((sub_1E3B6CFEC(v18, 0, v19) & 1) == 0)
    {
      sub_1E3D4C080();
      OUTLINED_FUNCTION_13_95();
      v22 = 1;
      goto LABEL_8;
    }

LABEL_6:
    v25 = 119;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_0_153();
  if (sub_1E3B6CFEC(v14, 13, v23))
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_0_153();
  if (sub_1E3B6CFEC(v14, 12, v24))
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_0_153();
  v20 = v14;
  v22 = 11;
LABEL_8:
  if (sub_1E3B6CFEC(v20, v22, v21))
  {
    v25 = 119;
  }

  else
  {
    v25 = 118;
  }

LABEL_11:
  v26 = type metadata accessor for TemplateViewModel();
  sub_1E410D4C8();
  i = v27;
  v29 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    strcpy(v165, "Library.id=");
    BYTE5(v165[1]) = 0;
    HIWORD(v165[1]) = -5120;

    MEMORY[0x1E69109E0](v15, v16);
    MEMORY[0x1E69109E0](34, 0xE100000000000000);
    (*(*i + 328))(v165[0], v165[1]);

    if (v29 >> 62)
    {
LABEL_98:
      type metadata accessor for ViewModel();

      v30 = sub_1E42076C4();
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
      sub_1E4207754();
    }

    v31 = v30;
    v26 = i;
    (*(*i + 472))(v31);
  }

  v146 = i;
  OUTLINED_FUNCTION_0_153();
  if ((sub_1E3B6CFEC(v14, 13, v32) & 1) == 0)
  {
    OUTLINED_FUNCTION_0_153();
    if ((sub_1E3B6CFEC(v14, 12, v40) & 1) == 0)
    {
      OUTLINED_FUNCTION_0_153();
      if ((sub_1E3B6CFEC(v14, 11, v41) & 1) == 0)
      {
        OUTLINED_FUNCTION_8();
        v123 = (*(v122 + 392))();
        v125 = v124;
        OUTLINED_FUNCTION_8();
        v127 = (*(v126 + 312))();
        if (v127)
        {
          v128 = v127;
        }

        else
        {
          v128 = v29;
        }

        v129 = *(v145 + 72);
        v130 = *(v145 + 80);
        if (v128 >> 62)
        {
          type metadata accessor for ViewModel();

          v131 = sub_1E42076C4();
        }

        else
        {

          sub_1E42079D4();
          type metadata accessor for ViewModel();
          v131 = v128;
        }

        sub_1E3B6D0F4(v129, v130, v25, v131, 0);
        OUTLINED_FUNCTION_11_5();

        if (!v25)
        {

          goto LABEL_80;
        }

        v132 = type metadata accessor for LibMenuCollectionInteractorRequest();

        v134 = sub_1E385A9C8(v133);
        v167 = v132;
        v168 = &off_1F5D5EFC0;
        v165[0] = v134;
        (*(*v25 + 1688))(v165);
        v135 = *(**sub_1E3B7B1C8() + 816);

        v136 = v135(v145);

        if ((v136 & 1) != 0 && (LOBYTE(v165[0]) = v14, LOBYTE(v162) = 1, sub_1E37DA4B8(), OUTLINED_FUNCTION_43_35(), (sub_1E4205E84() & 1) == 0))
        {
          v115 = v146;
          if (v125)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1E4297BE0;
            *(inited + 32) = 0xD000000000000011;
            *(inited + 40) = 0x80000001E426F010;
            *(inited + 72) = MEMORY[0x1E69E6158];
            *(inited + 48) = v123;
            *(inited + 56) = v125;
            v125 = sub_1E4205CB4();
          }

          (*(*v25 + 1328))(v125);
        }

        else
        {
          v115 = v146;
        }

        if (!v115)
        {
          goto LABEL_79;
        }

        goto LABEL_76;
      }
    }

    OUTLINED_FUNCTION_0_153();
    v43 = sub_1E3B6CFEC(v14, 12, v42);
    v25 = v2 + 32;
    v44 = MEMORY[0x1E69E7CC0];
    if (v43)
    {
      v45 = *(v2 + 16);
      v14 = &unk_1ECF3B640;
      for (i = 40; v45; --v45)
      {
        sub_1E327F454(v25, v165);
        v46 = OUTLINED_FUNCTION_43_35();
        sub_1E327F454(v46, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
        OUTLINED_FUNCTION_106();
        type metadata accessor for LibFamilySharingSource();
        if (OUTLINED_FUNCTION_60_18())
        {

          v48 = OUTLINED_FUNCTION_43_35();
          sub_1E37DADF4(v48, v49);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v170 = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_56_22();
            v44 = v170;
          }

          OUTLINED_FUNCTION_68_17();
          if (v52)
          {
            v53 = OUTLINED_FUNCTION_35(v51);
            sub_1E3B72E58(v53, v44, 1);
            v26 = v170;
          }

          *(v26 + 16) = v44;
          sub_1E37DADF4(&v162, v26 + 40 * v0 + 32);
          v44 = v26;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v165);
        }

        v25 += 40;
      }
    }

    else
    {
      v60 = *(v2 + 16);
      v14 = &unk_1ECF3B640;
      for (i = 40; v60; --v60)
      {
        sub_1E327F454(v25, v165);
        v61 = OUTLINED_FUNCTION_43_35();
        sub_1E327F454(v61, v62);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
        OUTLINED_FUNCTION_106();
        type metadata accessor for LibHomeSharingSource();
        if (OUTLINED_FUNCTION_60_18())
        {

          v63 = OUTLINED_FUNCTION_43_35();
          sub_1E37DADF4(v63, v64);
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v170 = v44;
          if ((v65 & 1) == 0)
          {
            OUTLINED_FUNCTION_56_22();
            v44 = v170;
          }

          OUTLINED_FUNCTION_68_17();
          if (v52)
          {
            v67 = OUTLINED_FUNCTION_35(v66);
            sub_1E3B72E58(v67, v44, 1);
            v26 = v170;
          }

          *(v26 + 16) = v44;
          sub_1E37DADF4(&v162, v26 + 40 * v0 + 32);
          v44 = v26;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v165);
        }

        v25 += 40;
      }
    }

    v2 = 0;
    v68 = v44 + 32;
    v161 = v29;
    v150 = *(v44 + 16);
    v147 = xmmword_1E4299720;
    v148 = v44;
    v140 = v44 + 32;
LABEL_55:
    v160 = v68 + 40 * v2;
    v149 = v29;
    while (1)
    {
      if (v150 == v2)
      {

        v25 = *(v145 + 72);
        v114 = *(v145 + 80);
        if (v29 >> 62)
        {
          OUTLINED_FUNCTION_77_14();

          OUTLINED_FUNCTION_32_7();
          v56 = sub_1E42076C4();
        }

        else
        {

          sub_1E42079D4();
          type metadata accessor for ViewModel();
          v56 = v29;
        }

        v57 = v25;
        v58 = v114;
        v59 = 119;
        goto LABEL_74;
      }

      if (v2 >= *(v44 + 16))
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      sub_1E327F454(v160, &v162);
      sub_1E327F454(&v162, v165);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
      OUTLINED_FUNCTION_106();
      type metadata accessor for LibFamilySharingSource();
      if (swift_dynamicCast())
      {
        v156 = *(v170 + 48);
        v157 = *(v170 + 56);
        v158 = *(v170 + 32);
        v159 = *(v170 + 64);
        v69 = *(v170 + 96);
        v155 = *(v170 + 40);
        v151 = *(v170 + 72);
        if (v69)
        {
          v153 = *(v170 + 88);

          v152 = v69;
        }

        else
        {
          v90 = v163;
          v91 = v164;
          __swift_project_boxed_opaque_existential_1(&v162, v163);
          v154 = *(v91 + 16);

          v92 = v154(v90, v91);
          v152 = v93;
          v153 = v92;
        }

        goto LABEL_67;
      }

      v70 = v164;
      __swift_project_boxed_opaque_existential_1(&v162, v163);
      v71 = OUTLINED_FUNCTION_38();
      v73 = v72(v71, v70);
      v75 = v74;
      __swift_project_boxed_opaque_existential_1(&v162, v163);
      v76 = OUTLINED_FUNCTION_9_89();
      v78 = v77(v76);
      v80 = v79;
      __swift_project_boxed_opaque_existential_1(&v162, v163);
      v81 = OUTLINED_FUNCTION_9_89();
      v165[0] = v82(v81);
      v165[1] = v83;
      v170 = 32;
      v171 = 0xE100000000000000;
      sub_1E32822E0();
      sub_1E4207194();
      OUTLINED_FUNCTION_38();

      v84 = v166;
      v159 = v78;
      v152 = v75;
      v153 = v73;
      v151 = v80;
      if (!v166)
      {
        break;
      }

      v85 = v169;
      v158 = v168;

      if (v84 == 1)
      {
        goto LABEL_66;
      }

      v165[0] = sub_1E3B718F0(1, v165);
      v165[1] = v86;
      v166 = v87;
      v167 = v88;
      v155 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340A8);
      sub_1E32752B0(&qword_1ECF340B0, &qword_1ECF340A8);
      v156 = sub_1E4205DF4();
      v157 = v89;
      swift_unknownObjectRelease();
LABEL_67:
      v160 += 40;
      sub_1E3751C10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
      v94 = swift_initStackObject();
      *(v94 + 16) = v147;
      v95 = sub_1E37FAFC8();
      v96 = *(v95 + 1);
      *(v94 + 32) = *v95;
      *(v94 + 40) = v96;
      v97 = v164;
      __swift_project_boxed_opaque_existential_1(&v162, v163);
      v98 = v2 + 1;
      v99 = *(v97 + 16);

      v100 = OUTLINED_FUNCTION_74();
      v101 = v99(v100);
      v102 = MEMORY[0x1E69E6158];
      *(v94 + 72) = MEMORY[0x1E69E6158];
      *(v94 + 48) = v101;
      *(v94 + 56) = v103;
      v104 = sub_1E37FAFD4();
      v105 = v104[1];
      *(v94 + 80) = *v104;
      *(v94 + 88) = v105;
      v106 = v163;
      v0 = v164;
      __swift_project_boxed_opaque_existential_1(&v162, v163);
      v107 = *(v0 + 16);

      v108 = v107(v106, v0);
      v2 = v98;
      *(v94 + 120) = v102;
      *(v94 + 96) = v108;
      *(v94 + 104) = v109;
      sub_1E4205CB4();
      v110 = sub_1E37FB46C();
      v25 = v157;
      i = v151;
      sub_1E3B6FC1C(v153, v152, v158, v155, v156, v157, v159, v151, v110, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, *(&v147 + 1), v148);
      v14 = v111;

      v112 = __swift_destroy_boxed_opaque_existential_1Tm(&v162);
      v44 = v148;
      v29 = v149;
      if (v14)
      {
        MEMORY[0x1E6910BF0](v112);
        OUTLINED_FUNCTION_36_35();
        if (v52)
        {
          OUTLINED_FUNCTION_35(v113);
          sub_1E42062F4();
        }

        sub_1E4206324();
        v29 = v161;
        v68 = v140;
        goto LABEL_55;
      }
    }

    v158 = 0;
    v85 = 0xE000000000000000;
LABEL_66:
    v155 = v85;

    v156 = 0;
    v157 = 0xE000000000000000;
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_8();
  v34 = (*(v33 + 288))();
  if (v34)
  {
    v14 = v34;
  }

  else
  {
    v14 = v29;
  }

  v165[0] = v29;
  v2 = sub_1E32AE9B0(v14);
  v35 = 0;
  i = v14 & 0xC000000000000001;
  while (v2 != v35)
  {
    sub_1E34AF4E4(v35, i == 0, v14);
    if (i)
    {
      MEMORY[0x1E6911E60](v35, v14);
    }

    else
    {
    }

    v0 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_97;
    }

    sub_1E3B6C5EC();
    v37 = v36;

    ++v35;
    if (v37)
    {
      MEMORY[0x1E6910BF0](v38);
      v39 = *((v165[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v165[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v39 >> 1)
      {
        OUTLINED_FUNCTION_35(v39);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v29 = v165[0];
      v35 = v0;
    }
  }

  v54 = *(v145 + 72);
  v55 = *(v145 + 80);
  if (v29 >> 62)
  {
    OUTLINED_FUNCTION_77_14();

    v56 = sub_1E42076C4();
  }

  else
  {

    sub_1E42079D4();
    type metadata accessor for ViewModel();
    v56 = v29;
  }

  v57 = v54;
  v58 = v55;
  v59 = v25;
LABEL_74:
  sub_1E3B6D0F4(v57, v58, v59, v56, 0);
  OUTLINED_FUNCTION_11_5();

  if (v25)
  {
    v115 = v146;
    if (!v146)
    {
LABEL_79:

      goto LABEL_80;
    }

LABEL_76:
    OUTLINED_FUNCTION_71_2();
    v117 = *(v116 + 480);

    v118 = v117(v165);
    if (*v119)
    {
      v120 = OUTLINED_FUNCTION_79_13();
      MEMORY[0x1E6910BF0](v120);
      sub_1E38C5A18(*((*v115 & 0xFFFFFFFFFFFFFF8) + 0x10));
      OUTLINED_FUNCTION_39_3();
      sub_1E4206324();
    }

    v118(v165, 0);

    goto LABEL_79;
  }

LABEL_80:
  sub_1E4206B94();
  v121 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_75_11();
  sub_1E41FFBA4();

  v141(v142, v144);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B718F0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1E380055C(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_1E39E8C20(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_1E3B71988()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  sub_1E4206BA4();
  v5 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_61_14();

  v79 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_39_3();
  v7(v6);
  type metadata accessor for TemplateViewModel();
  sub_1E410D4C8();
  v9 = v8;
  v10 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v11 = MEMORY[0x1E69E7CC0];
    (*(*v8 + 328))(0x7972617262694CLL, 0xE700000000000000);
    if (v11 >> 62)
    {
      type metadata accessor for ViewModel();

      v12 = sub_1E42076C4();
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
      sub_1E4207754();
    }

    (*(*v9 + 472))(v12);

    v10 = MEMORY[0x1E69E7CC0];
  }

  v80 = v9;
  v90 = v10;
  v13 = sub_1E32AE9B0(v1);
  v14 = 0;
  v86 = v1 & 0xFFFFFFFFFFFFFF8;
  v88 = v1 & 0xC000000000000001;
  v84 = v1;
  v15 = v1 + 32;
LABEL_6:
  while (v14 != v13)
  {
    if (v88)
    {
      v16 = MEMORY[0x1E6911E60](v14, v84);
    }

    else
    {
      if (v14 >= *(v86 + 16))
      {
        goto LABEL_97;
      }

      v16 = *(v15 + 8 * v14);
    }

    v17 = __OFADD__(v14++, 1);
    if (v17)
    {
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
      goto LABEL_102;
    }

    if (qword_1EE2A1FA0 != -1)
    {
      OUTLINED_FUNCTION_1_152();
      swift_once();
    }

    v18 = qword_1EE2AB070;
    LOBYTE(v93) = *(v16 + 32);
    if (*(qword_1EE2AB070 + 16))
    {
      sub_1E37DA464();
      v19 = sub_1E4205DA4();
      v20 = ~(-1 << *(v18 + 32));
      while (1)
      {
        v9 = v19 & v20;
        if (((*(v18 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        LOBYTE(v92) = *(*(v18 + 48) + v9);
        sub_1E37DA4B8();
        v21 = sub_1E4205E84();
        v19 = v9 + 1;
        if (v21)
        {
          sub_1E4207544();
          sub_1E4207584();
          sub_1E4207594();
          sub_1E4207554();
          goto LABEL_6;
        }
      }
    }
  }

  v22 = v90;
  v9 = "ory.createRootTemplateViewModel";
  v23 = MEMORY[0x1E69E7CC0];
  v90 = MEMORY[0x1E69E7CC0];
  v24 = sub_1E32AE9B0(v22);
  v25 = 0;
  v26 = v22 & 0xC000000000000001;
  while (v24 != v25)
  {
    sub_1E34AF4E4(v25, v26 == 0, v22);
    if (v26)
    {
      MEMORY[0x1E6911E60](v25, v22);
    }

    else
    {
    }

    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_98;
    }

    sub_1E3B6C5EC();
    v29 = v28;

    ++v25;
    if (v29)
    {
      MEMORY[0x1E6910BF0](v30);
      OUTLINED_FUNCTION_18_63();
      if (v32)
      {
        OUTLINED_FUNCTION_35(v31);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_74();
      sub_1E4206324();
      v23 = v90;
      v25 = v27;
    }
  }

  if (!(v23 >> 62))
  {

    sub_1E42079D4();
    type metadata accessor for ViewModel();
    v33 = v23;
    goto LABEL_32;
  }

LABEL_102:
  type metadata accessor for ViewModel();

  v33 = sub_1E42076C4();

LABEL_32:
  v34 = sub_1E3B6D0F4(0xD000000000000014, v9 | 0x8000000000000000, 120, v33, 0);

  if (v34)
  {
    if (v80)
    {
      v35 = *(*v80 + 480);

      v9 = &v90;
      v36 = v35(&v90);
      if (*v37)
      {

        MEMORY[0x1E6910BF0](v38);
        OUTLINED_FUNCTION_2_125();
        sub_1E4206324();
      }

      v36(&v90, 0);
    }
  }

  sub_1E3B7B1C8();

  v39 = sub_1E3DD2B7C();

  v40 = MEMORY[0x1E69E7CC0];
  v93 = MEMORY[0x1E69E7CC0];
  v87 = sub_1E32AE9B0(v39);
  if (v87)
  {
    v41 = 0;
    v83 = v39;
    v85 = v39 & 0xC000000000000001;
    v81 = v39 + 32;
    v42 = v40;
    while (1)
    {
      sub_1E34AF4E4(v41, v85 == 0, v39);
      if (v85)
      {
        v43 = MEMORY[0x1E6911E60](v41, v39);
      }

      else
      {
        v43 = *(v81 + 8 * v41);
      }

      v17 = __OFADD__(v41++, 1);
      if (v17)
      {
        goto LABEL_99;
      }

      OUTLINED_FUNCTION_0_153();
      if (sub_1E3B6CFEC(v44, 6, v45))
      {
        v46 = [objc_opt_self() sharedInstance];
        if (!v46)
        {
          __break(1u);
          return;
        }

        v47 = v46;
        sub_1E3741090(0xD000000000000011, 0x80000001E42733F0, v46);
      }

      sub_1E3B6F108();
      v49 = v48;

      v50 = v43[10];
      v89 = v43[9];

      v51 = *sub_1E41E2E28();
      v52 = *(*v43 + 312);
      v53 = v52();
      v54 = v53;
      if (v53)
      {
        sub_1E32AE9B0(v53);
        OUTLINED_FUNCTION_73_1();
      }

      else
      {
        v9 = 0;
      }

      v90 = v9;
      v91 = v54 == 0;
      v92 = v51;
      v9 = sub_1E414A720(&v90, &v92, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
      v55 = v52();
      if (v55)
      {
        v56 = v55;
      }

      else
      {
        v56 = MEMORY[0x1E69E7CC0];
      }

      if (v9)
      {
        if (v51 < 0)
        {
          goto LABEL_100;
        }

        sub_1E37EFABC(0, v56);
        sub_1E37EFABC(v51, v56);
        if ((v56 & 0xC000000000000001) != 0 && v51)
        {
          type metadata accessor for LibLockupViewModel();
          OUTLINED_FUNCTION_60_1();

          v57 = 0;
          do
          {
            v58 = v57 + 1;
            sub_1E42074F4();
            v57 = v58;
          }

          while (v51 != v58);
        }

        else
        {
        }

        if (v56 >> 62)
        {
          sub_1E4207704();
          v9 = v65;
          v60 = v66;
          v61 = v67;

          if ((v61 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v60 = 0;
          v9 = (v56 & 0xFFFFFFFFFFFFFF8) + 32;
          v61 = (2 * v51) | 1;
          if ((v61 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        v82 = v42;
        sub_1E42079E4();
        swift_unknownObjectRetain_n();
        v68 = swift_dynamicCastClass();
        if (!v68)
        {
          swift_unknownObjectRelease();
          v68 = MEMORY[0x1E69E7CC0];
        }

        v69 = *(v68 + 16);

        if (__OFSUB__(v61 >> 1, v60))
        {
          goto LABEL_101;
        }

        if (v69 != (v61 >> 1) - v60)
        {
          swift_unknownObjectRelease_n();
          v42 = v82;
LABEL_64:
          v62 = OUTLINED_FUNCTION_32_7();
          sub_1E3B72D7C(v62, v63, v60, v61);
          v56 = v64;
          v39 = v83;
          v59 = v89;
LABEL_72:
          swift_unknownObjectRelease();
          goto LABEL_73;
        }

        v56 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v42 = v82;
        v39 = v83;
        v59 = v89;
        if (!v56)
        {
          v56 = MEMORY[0x1E69E7CC0];
          goto LABEL_72;
        }
      }

      else
      {
        v39 = v83;
        v59 = v89;
      }

LABEL_73:
      if (v56 >> 62)
      {
        if ((v56 & 0x8000000000000000) != 0)
        {
          v70 = v56;
        }

        else
        {
          v70 = v56 & 0xFFFFFFFFFFFFFF8;
        }

        v9 = type metadata accessor for ViewModel();

        OUTLINED_FUNCTION_32_7();
        sub_1E42076C4();
        OUTLINED_FUNCTION_60_1();
      }

      else
      {

        sub_1E42079D4();
        type metadata accessor for ViewModel();
        v70 = v56;
      }

      sub_1E3B6D0F4(v59, v50, 117, v70, v49);
      OUTLINED_FUNCTION_73_1();

      if (v9)
      {

        MEMORY[0x1E6910BF0](v71);
        OUTLINED_FUNCTION_36_35();
        if (v32)
        {
          OUTLINED_FUNCTION_35(v72);
          sub_1E42062F4();
        }

        sub_1E4206324();
        v42 = v93;
      }

      if (v41 == v87)
      {
        goto LABEL_87;
      }
    }
  }

  v42 = v40;
LABEL_87:

  if (v80)
  {
    OUTLINED_FUNCTION_30_1();
    v74 = *(v73 + 480);

    v74(&v90);
    OUTLINED_FUNCTION_44_35();
    if (v75)
    {
      if (v42 >> 62)
      {
        if (v42 < 0)
        {
          v76 = v42;
        }

        else
        {
          v76 = v42 & 0xFFFFFFFFFFFFFF8;
        }

        type metadata accessor for ViewModel();

        sub_1E42076C4();
        OUTLINED_FUNCTION_16_5();
      }

      else
      {

        sub_1E42079D4();
        type metadata accessor for ViewModel();
        v76 = v42;
      }

      sub_1E379738C(v76);
      (v74)(&v90, 0);
    }

    else
    {

      (v74)(&v90, 0);
    }
  }

  else
  {
  }

  sub_1E4206B94();
  v77 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_61_14();

  v78 = OUTLINED_FUNCTION_39_3();
  v79(v78);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B72530()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v13 = OUTLINED_FUNCTION_9_89();
  v67 = v14(v13);
  if (v67)
  {
    sub_1E4206BA4();
    v15 = VUISignpostLogObject();
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    (*(v8 + 8))(v12, v6);
    type metadata accessor for TemplateViewModel();
    sub_1E410D4C8();
    v63 = v16;
    v17 = type metadata accessor for LibCollectionViewModel();
    v18 = OUTLINED_FUNCTION_114_0();
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v20 = OUTLINED_FUNCTION_50_27();
    v22 = v21(v20);
    v24 = sub_1E3A7A31C(119, v22, v23, 1, 0, 0);
    if (!v24)
    {

      OUTLINED_FUNCTION_26_52();
LABEL_38:
      sub_1E4206B94();
      v62 = VUISignpostLogObject();
      sub_1E41FFBE4();
      sub_1E41FFBA4();

      v3(v1, v6);
      goto LABEL_39;
    }

    v25 = v24;
    v26 = MEMORY[0x1E69E7CC0];
    v79 = MEMORY[0x1E69E7CC0];
    v27 = *sub_1E3C8DC30();
    v6 = v67;
    v66 = v27;
    v68 = *(v67 + 16);
    if (v68)
    {
      type metadata accessor for CollectionGroupViewModel();

      v28 = 0;
      v65 = v26;
      v64 = v25;
      while (v28 < *(v6 + 16))
      {
        v70 = v28;
        sub_1E327F454(v67 + 32 + 40 * v28, v76);
        v29 = v77;
        v30 = v78;
        __swift_project_boxed_opaque_existential_1(v76, v77);
        v31 = (*(*(v30 + 8) + 32))(v29);
        v33 = v32;

        v34 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v34 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (v34)
        {
          type metadata accessor for TextViewModel();
          __swift_project_boxed_opaque_existential_1(v76, v77);
          v35 = OUTLINED_FUNCTION_38();
          v37 = v36(v35);
          v73 = MEMORY[0x1E69E6158];
          v72[0] = v37;
          v72[1] = v38;

          v17 = sub_1E3C27638(105, v72, 0, 0, v27);
        }

        else
        {
          v17 = 0;
        }

        __swift_project_boxed_opaque_existential_1(v76, v77);
        v39 = OUTLINED_FUNCTION_114_0();
        v41 = v40(v39);
        if (v41)
        {
          v42 = v41;
          v69 = v17;
          v43 = MEMORY[0x1E69E7CC0];
          v75 = MEMORY[0x1E69E7CC0];
          v44 = *(v41 + 16);
          if (v44)
          {
            type metadata accessor for LibLockupViewModel();
            v45 = v42 + 32;
            do
            {
              sub_1E327F454(v45, v72);
              v46 = v73;
              v47 = v74;
              v48 = __swift_project_boxed_opaque_existential_1(v72, v73);
              v71[3] = v46;
              v71[4] = *(*(v47 + 8) + 8);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
              (*(*(v46 - 8) + 16))(boxed_opaque_existential_1, v48, v46);

              j__OUTLINED_FUNCTION_18();
              sub_1E38BC104();
              v51 = v50;
              v52 = __swift_destroy_boxed_opaque_existential_1Tm(v72);
              if (v51)
              {
                MEMORY[0x1E6910BF0](v52);
                v53 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18);
                if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v53 >> 1)
                {
                  OUTLINED_FUNCTION_35(v53);
                  sub_1E42062F4();
                }

                sub_1E4206324();
                v43 = v75;
              }

              v45 += 40;
              --v44;
            }

            while (v44);
          }

          v25 = v64;
          v27 = v66;
          v6 = v67;
          v17 = v69;
        }

        else
        {
          v43 = MEMORY[0x1E69E7CC0];
        }

        __swift_project_boxed_opaque_existential_1(v76, v77);
        v54 = OUTLINED_FUNCTION_50_27();
        v55(v54);
        if (v43 >> 62)
        {
          type metadata accessor for ViewModel();

          OUTLINED_FUNCTION_32_7();
          v6 = v67;
          sub_1E42076C4();
        }

        else
        {

          sub_1E42079D4();
          type metadata accessor for ViewModel();
        }

        if (sub_1E3960F08())
        {

          MEMORY[0x1E6910BF0](v56);
          OUTLINED_FUNCTION_18_63();
          if (v58)
          {
            OUTLINED_FUNCTION_35(v57);
            sub_1E42062F4();
          }

          OUTLINED_FUNCTION_11_6();
          sub_1E4206324();

          v65 = v79;
        }

        else
        {
        }

        v28 = v70 + 1;
        __swift_destroy_boxed_opaque_existential_1Tm(v76);
        if (v70 + 1 == v68)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
    }

    else
    {

      v65 = MEMORY[0x1E69E7CC0];
LABEL_33:

      v17 = v65;
      if (!(v65 >> 62))
      {

        sub_1E42079D4();
        type metadata accessor for ViewModel();
        v59 = v65;
        goto LABEL_35;
      }
    }

    type metadata accessor for ViewModel();

    v59 = sub_1E42076C4();

LABEL_35:
    OUTLINED_FUNCTION_26_52();
    (*(*v25 + 472))(v59);
    (*(*v25 + 1416))(v17);

    if (v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v60 = OUTLINED_FUNCTION_24_3();
      *(v60 + 16) = xmmword_1E4298880;
      *(v60 + 32) = v25;
      v61 = *(*v63 + 472);

      v61(v60);
    }

    else
    {
    }

    goto LABEL_38;
  }

LABEL_39:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B72D7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for LibLockupViewModel();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1E3B72E58(void *a1, int64_t a2, char a3)
{
  result = sub_1E3B72E78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3B72E78(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3B72FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1E4205ED4();
  v7 = sub_1E4205ED4();
  v8 = [a5 formatInitialsForFirstName:v6 lastName:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1E4205F14();

  return v9;
}

void *OUTLINED_FUNCTION_56_22()
{
  v2 = *(v0 + 16) + 1;

  return sub_1E3B72E58(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_58_21@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8 * v2 + 32) = v1;
}

uint64_t OUTLINED_FUNCTION_62_15(uint64_t a1)
{

  return sub_1E3882AB0(v1, a1);
}

uint64_t OUTLINED_FUNCTION_77_14()
{

  return type metadata accessor for ViewModel();
}

uint64_t OUTLINED_FUNCTION_79_13()
{
}

void OUTLINED_FUNCTION_82_8()
{

  JUMPOUT(0x1E6911E60);
}

uint64_t OUTLINED_FUNCTION_83_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t *a21)
{
  v22 = *a21;

  return sub_1E32AE9B0(v22);
}

uint64_t OUTLINED_FUNCTION_84_9()
{
}

uint64_t sub_1E3B73188()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FF044();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v1 = OUTLINED_FUNCTION_9_90();
  v2(v1);
  v3 = OUTLINED_FUNCTION_39_30();
  v5 = v4(v3);
  v6 = 0;
  if (v5 == *MEMORY[0x1E69D5850])
  {
    goto LABEL_6;
  }

  if (v5 == *MEMORY[0x1E69D5860])
  {
    v6 = 1;
LABEL_6:
    v7 = OUTLINED_FUNCTION_32_0();
    v8(v7);
    return v6;
  }

  if (v5 == *MEMORY[0x1E69D5858])
  {
    v6 = 2;
    goto LABEL_6;
  }

  result = OUTLINED_FUNCTION_11_91();
  __break(1u);
  return result;
}

unint64_t VUIUserConsentStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E3B732DC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VUIUserConsentStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

char *sub_1E3B73390(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_139();
  v7 = sub_1E41FF044();
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  sub_1E41FF014();
  *&v3[OBJC_IVAR____TtC8VideosUI19VUIUserConsentState_status] = sub_1E3B73188();
  sub_1E41FF004();
  sub_1E3889AF0(v2, &v3[OBJC_IVAR____TtC8VideosUI19VUIUserConsentState_lastModifiedDate]);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for VUIUserConsentState(0);
  objc_msgSendSuper2(&v11, sel_init);
  OUTLINED_FUNCTION_9_5();
  sub_1E41FF024();
  OUTLINED_FUNCTION_10();
  (*(v9 + 8))(a1);
  return v3;
}

id VUIUserConsentModification.__allocating_init(status:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8VideosUI26VUIUserConsentModification_status] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id VUIUserConsentModification.init(status:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI26VUIUserConsentModification_status] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VUIUserConsentModification();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1E3B73674()
{
  sub_1E41FF044();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = *(v0 + OBJC_IVAR____TtC8VideosUI26VUIUserConsentModification_status);
  if (v6 >= 3)
  {
    result = sub_1E4207A24();
    __break(1u);
  }

  else
  {
    (*(v2 + 104))(v5, **(&unk_1E8737FA8 + v6));
    return sub_1E41FEFE4();
  }

  return result;
}

id sub_1E3B737C4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1E3B73878(uint64_t a1, uint64_t a2, void (*a3)(__n128))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  a3(v6);
  v9 = sub_1E41FE5D4();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v10 = sub_1E41FE514();
    v11 = OUTLINED_FUNCTION_27_0();
    v12(v11);
  }

  return v10;
}

uint64_t sub_1E3B739A8(uint64_t a1)
{
  v3 = v1;
  v47 = sub_1E41FF104();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_139();
  v13 = sub_1E41FF134();
  v14 = *(v13 + 16);
  if (v14)
  {
    v39 = v2;
    v40 = v3;
    v41 = a1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E4207574();
    result = sub_1E3746DC4();
    v16 = result;
    v18 = v17;
    v20 = v19;
    v43 = v6 + 16;
    v44 = v13 + 56;
    v42 = v6 + 8;
    v21 = v45;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v13 + 32))
    {
      if (((*(v44 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_12;
      }

      if (*(v13 + 36) != v18)
      {
        goto LABEL_13;
      }

      v22 = *(v13 + 48) + *(v6 + 72) * v16;
      v48 = v20;
      v23 = *(v6 + 16);
      v24 = v47;
      v23(v21, v22, v47);
      v25 = v46;
      v23(v46, v21, v24);
      v26 = objc_allocWithZone(type metadata accessor for VUIFavorite());
      sub_1E3B73E58(v25);
      (*(v6 + 8))(v21, v24);
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
      v27 = OUTLINED_FUNCTION_27_0();
      result = sub_1E3B76A38(v27, v28, v29, v13);
      v16 = result;
      v18 = v30;
      v20 = v31;
      if (!--v14)
      {

        v32 = OUTLINED_FUNCTION_27_0();
        sub_1E3746E04(v32, v33, v34);
        v35 = v50;
        v3 = v40;
        a1 = v41;
        v2 = v39;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
LABEL_10:
    *&v3[OBJC_IVAR____TtC8VideosUI17VUIFavoritesState_favorites] = v35;
    sub_1E41FF124();
    sub_1E3889AF0(v2, &v3[OBJC_IVAR____TtC8VideosUI17VUIFavoritesState_lastModifiedDate]);
    v36 = type metadata accessor for VUIFavoritesState(0);
    v49.receiver = v3;
    v49.super_class = v36;
    objc_msgSendSuper2(&v49, sel_init);
    OUTLINED_FUNCTION_9_5();
    sub_1E41FF144();
    OUTLINED_FUNCTION_10();
    (*(v37 + 8))(a1);
    return v3;
  }

  return result;
}

char *sub_1E3B73E58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FF0E4();
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v6 = sub_1E41FF0D4();
  v7 = &v2[OBJC_IVAR____TtC8VideosUI11VUIFavorite_id];
  *v7 = v6;
  v7[1] = v8;
  sub_1E41FF0F4();
  *&v2[OBJC_IVAR____TtC8VideosUI11VUIFavorite_type] = sub_1E3B73F38();
  v11.receiver = v2;
  v11.super_class = type metadata accessor for VUIFavorite();
  objc_msgSendSuper2(&v11, sel_init);
  OUTLINED_FUNCTION_9_5();
  sub_1E41FF104();
  OUTLINED_FUNCTION_10();
  (*(v9 + 8))(a1);
  return v2;
}

uint64_t sub_1E3B73F38()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FF0E4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v1 = OUTLINED_FUNCTION_9_90();
  v2(v1);
  v3 = OUTLINED_FUNCTION_39_30();
  v5 = v4(v3);
  v6 = 0;
  if (v5 == *MEMORY[0x1E69D58B8])
  {
    goto LABEL_4;
  }

  if (v5 == *MEMORY[0x1E69D58C0])
  {
    v6 = 1;
LABEL_4:
    v7 = OUTLINED_FUNCTION_32_0();
    v8(v7);
    return v6;
  }

  result = OUTLINED_FUNCTION_11_91();
  __break(1u);
  return result;
}

id VUIFavorite.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t VUIFavoriteType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E3B7412C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VUIFavoriteType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1E3B74160()
{
  result = sub_1E41FF074();
  static VUISportsFavoriteService.UserConsentDidChangeNotification = result;
  return result;
}

uint64_t *VUISportsFavoriteService.UserConsentDidChangeNotification.unsafeMutableAddressor()
{
  if (qword_1ECF57B70 != -1)
  {
    OUTLINED_FUNCTION_17_78();
  }

  return &static VUISportsFavoriteService.UserConsentDidChangeNotification;
}

id static VUISportsFavoriteService.UserConsentDidChangeNotification.getter()
{
  if (qword_1ECF57B70 != -1)
  {
    OUTLINED_FUNCTION_17_78();
  }

  v1 = static VUISportsFavoriteService.UserConsentDidChangeNotification;

  return v1;
}

uint64_t static VUISportsFavoriteService.userConsent()()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FF154();
  v0[2] = v1;
  OUTLINED_FUNCTION_8_0(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_86_0();
  v3 = sub_1E41FF024();
  v0[5] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_107_1();
  v0[8] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3B74370()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FF0C4();
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 72) = v1;
  *v1 = v2;
  v1[1] = sub_1E3B7440C;
  v3 = *(v0 + 64);

  return MEMORY[0x1EEE43730](v3);
}

uint64_t sub_1E3B7440C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 80) = v0;

  v7 = OUTLINED_FUNCTION_27_0();
  v8(v7);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3B74560()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 56);
  v2 = OUTLINED_FUNCTION_9_90();
  v3(v2);
  objc_allocWithZone(type metadata accessor for VUIUserConsentState(0));
  sub_1E3B73390(v1);
  v4 = OUTLINED_FUNCTION_40_40();
  v5(v4);

  v6 = OUTLINED_FUNCTION_7_10();

  return v7(v6);
}

uint64_t sub_1E3B74624()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3B746B4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E3B74748;

  return static VUISportsFavoriteService.userConsent()();
}

uint64_t sub_1E3B74748()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_19_69();
  v4 = *v3;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = *(v2 + 16);
  if (v0)
  {
    sub_1E41FE264();

    v7 = OUTLINED_FUNCTION_4_132();
    v8(v7, 0, v1);

    _Block_release(v6);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_132();
    v10(v9, v1, 0);
    _Block_release(v6);
  }

  OUTLINED_FUNCTION_29_47();

  return v11();
}

uint64_t static VUISportsFavoriteService.modifyUserConsent(modification:)()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v2 = sub_1E41FF154();
  v0[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_86_0();
  v4 = sub_1E41FF024();
  v0[6] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[7] = v5;
  v0[8] = OUTLINED_FUNCTION_107_1();
  v0[9] = swift_task_alloc();
  v6 = sub_1E41FEFF4();
  v0[10] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[11] = v7;
  v0[12] = OUTLINED_FUNCTION_86_0();
  v8 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3B749DC()
{
  OUTLINED_FUNCTION_134();
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x60))();
  sub_1E41FF0C4();
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 104) = v1;
  *v1 = v2;
  v1[1] = sub_1E3B74B30;
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);

  return MEMORY[0x1EEE43738](v4, v3);
}

uint64_t sub_1E3B74B30()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 112) = v0;

  v7 = OUTLINED_FUNCTION_27_0();
  v8(v7);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3B74C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  v13 = v12[9];
  v15 = v12[7];
  v14 = v12[8];
  v16 = v12[6];
  (*(v15 + 16))(v14, v13, v16);
  v17 = objc_allocWithZone(type metadata accessor for VUIUserConsentState(0));
  sub_1E3B73390(v14);
  (*(v15 + 8))(v13, v16);
  v18 = OUTLINED_FUNCTION_27_0();
  v19(v18);

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_68_2();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1E3B74D78()
{
  OUTLINED_FUNCTION_27_2();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3B74E98(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  a1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E3B74F48;

  return static VUISportsFavoriteService.modifyUserConsent(modification:)();
}

uint64_t sub_1E3B74F48()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_19_69();
  v4 = *(v2 + 16);
  v5 = *v3;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v7 = *(v2 + 24);
  if (v0)
  {
    sub_1E41FE264();

    v8 = OUTLINED_FUNCTION_4_132();
    v9(v8, 0, v1);

    _Block_release(v7);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_132();
    v11(v10, v1, 0);
    _Block_release(v7);
  }

  OUTLINED_FUNCTION_29_47();
  OUTLINED_FUNCTION_62_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t static VUISportsFavoriteService.getFavorites()()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FF0A4();
  v0[3] = v1;
  OUTLINED_FUNCTION_8_0(v1);
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_86_0();
  v3 = sub_1E41FF154();
  v0[6] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[7] = v4;
  v0[8] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF144();
  v0[9] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[10] = v6;
  v0[11] = OUTLINED_FUNCTION_107_1();
  v0[12] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3B751F0()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  sub_1E41FF0C4();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1E3B7561C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340F0);
  sub_1E3B75674();
  sub_1E42072E4();
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 104) = v1;
  *v1 = v2;
  v1[1] = sub_1E3B752F4;
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE43758](v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E3B752F4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 112) = v0;

  (*(v6 + 8))(v5, v7);
  v11 = OUTLINED_FUNCTION_27_0();
  v12(v11);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1E3B754B0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = OUTLINED_FUNCTION_9_90();
  v6(v5);
  v7 = objc_allocWithZone(type metadata accessor for VUIFavoritesState(0));
  sub_1E3B739A8(v2);
  (*(v4 + 8))(v1, v3);

  v8 = OUTLINED_FUNCTION_7_10();

  return v9(v8);
}

uint64_t sub_1E3B75598()
{
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_54();

  return v0();
}

unint64_t sub_1E3B7561C()
{
  result = qword_1ECF340E8;
  if (!qword_1ECF340E8)
  {
    sub_1E41FF0A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF340E8);
  }

  return result;
}

unint64_t sub_1E3B75674()
{
  result = qword_1ECF340F8;
  if (!qword_1ECF340F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF340F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF340F8);
  }

  return result;
}

uint64_t sub_1E3B756F8(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_35_1();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  return sub_1E38364EC(a5, v8);
}

uint64_t sub_1E3B75758(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E3B76AC0;

  return static VUISportsFavoriteService.getFavorites()();
}

uint64_t static VUISportsFavoriteService.addFavorites(teams:leagues:)()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FF154();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF144();
  v0[7] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_107_1();
  v0[10] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3B758E8()
{
  OUTLINED_FUNCTION_60_7();
  v2 = v0[2];
  v3 = v0[3];
  sub_1E41FF0C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E8);
  v4 = sub_1E41FF114();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = *(v7 + 72);
  v9 = OUTLINED_FUNCTION_30_45();
  v0[11] = v9;
  *(v9 + 16) = xmmword_1E4299720;
  v10 = (v9 + v1);
  v11 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v12 = v2;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  *v10 = v12;
  v13 = *(v6 + 104);
  v13(v10, *MEMORY[0x1E69D58D8], v4);
  if (v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = v11;
  }

  *(v10 + v8) = v14;
  v13((v10 + v8), *MEMORY[0x1E69D58E0], v4);

  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[12] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_33_40(v15);
  OUTLINED_FUNCTION_68_2();

  return MEMORY[0x1EEE43750](v17, v18);
}

uint64_t sub_1E3B75A78()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 104) = v0;

  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3B75BEC()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 72);
  v2 = OUTLINED_FUNCTION_9_90();
  v3(v2);
  objc_allocWithZone(type metadata accessor for VUIFavoritesState(0));
  sub_1E3B739A8(v1);
  v4 = OUTLINED_FUNCTION_40_40();
  v5(v4);

  v6 = OUTLINED_FUNCTION_7_10();

  return v7(v6);
}

uint64_t sub_1E3B75CB0()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3B75D40(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1E42062B4();
  }

  v3[3] = a1;
  if (a2)
  {
    a2 = sub_1E42062B4();
  }

  v3[4] = a2;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1E3B75E20;

  return static VUISportsFavoriteService.addFavorites(teams:leagues:)();
}

uint64_t sub_1E3B75E20()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_19_69();
  v4 = *v3;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = *(v2 + 16);

  if (v0)
  {
    sub_1E41FE264();

    v7 = OUTLINED_FUNCTION_4_132();
    v8(v7, 0, v1);

    _Block_release(v6);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_132();
    v10(v9, v1, 0);
    _Block_release(v6);
  }

  OUTLINED_FUNCTION_29_47();
  OUTLINED_FUNCTION_62_1();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t static VUISportsFavoriteService.removeFavorites(teams:leagues:)()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FF154();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF144();
  v0[7] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_107_1();
  v0[10] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3B7609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  v14 = v12[2];
  v15 = v12[3];
  sub_1E41FF0C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E8);
  v16 = sub_1E41FF114();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  v20 = *(v19 + 72);
  v21 = OUTLINED_FUNCTION_30_45();
  v12[11] = v21;
  *(v21 + 16) = xmmword_1E4299720;
  v22 = (v21 + v13);
  v23 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v24 = v14;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  *v22 = v24;
  v25 = *(v18 + 104);
  v25(v22, *MEMORY[0x1E69D58D8], v16);
  if (v15)
  {
    v26 = v15;
  }

  else
  {
    v26 = v23;
  }

  *(v22 + v20) = v26;
  v25((v22 + v20), *MEMORY[0x1E69D58E0], v16);

  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v12[12] = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_33_40(v27);
  OUTLINED_FUNCTION_68_2();

  return MEMORY[0x1EEE43768](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1E3B7622C()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 104) = v0;

  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3B763C0(uint64_t a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_27_44();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  v12 = OUTLINED_FUNCTION_32_0();

  return sub_1E38364EC(v12, v13);
}

uint64_t sub_1E3B7643C(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1E42062B4();
  }

  v3[3] = a1;
  if (a2)
  {
    a2 = sub_1E42062B4();
  }

  v3[4] = a2;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1E3B76ADC;

  return static VUISportsFavoriteService.removeFavorites(teams:leagues:)();
}

unint64_t sub_1E3B76560()
{
  result = qword_1ECF34100;
  if (!qword_1ECF34100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34100);
  }

  return result;
}

unint64_t sub_1E3B765B8()
{
  result = qword_1ECF34108;
  if (!qword_1ECF34108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34108);
  }

  return result;
}

void sub_1E3B76644()
{
  sub_1E3273C28();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3B766E8()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_130(v1);
  OUTLINED_FUNCTION_62_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm_25()
{
  _Block_release(*(v0 + 32));
  OUTLINED_FUNCTION_27_44();

  return swift_deallocObject();
}

uint64_t sub_1E3B767BC()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_130(v1);
  OUTLINED_FUNCTION_62_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E3B76850()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;
  v3 = OUTLINED_FUNCTION_32_0();

  return v4(v3);
}

uint64_t sub_1E3B768F0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;
  v3 = OUTLINED_FUNCTION_27_0();

  return v4(v3);
}

uint64_t sub_1E3B76998()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;
  v3 = OUTLINED_FUNCTION_32_0();

  return v4(v3);
}

uint64_t sub_1E3B76A38(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return sub_1E4207314();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

id sub_1E3B76AE8()
{
  v1 = *(v0 + 248);
  v2 = v1;
  if (!v1)
  {
    v2 = sub_1E39BE41C();
  }

  v3 = v1;
  return v2;
}

uint64_t sub_1E3B76B28()
{
  v1 = *(v0 + 256);
  if (!v1)
  {
    v1 = sub_1E382EF1C();
  }

  return v1;
}

uint64_t sub_1E3B76B6C()
{
  v1 = *(v0 + 264);
  if (!v1)
  {
    v1 = sub_1E39BE330();
  }

  return v1;
}

uint64_t sub_1E3B76BE8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 272) = a1;
}

uint64_t sub_1E3B76D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  type metadata accessor for ConfirmationDialogViewModel();
  v7[32] = 0;
  v7[33] = 0;
  v7[31] = 0;
  v7[34] = sub_1E40363DC();
  v12 = v7[31];
  v8[31] = a6;
  v13 = a6;

  v8[32] = a5;

  v8[33] = a7;

  v14 = sub_1E39C0300();

  if (v14)
  {
  }

  return v14;
}

id sub_1E3B76DF0()
{
  v1 = (*v0 + 648);
  v2 = *v1;
  if (!(*v1)())
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 appController];

    if (v6)
    {
      Strong = [v6 appContext];

      return Strong;
    }

    return 0;
  }

  if (!(v2)(v3))
  {
    return 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1E3B76F00(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 80))(v29, v4, v5);
  v6 = v30;
  if (v30 == 255)
  {
    return 0;
  }

  v8 = v29[0];
  v9 = v29[1];
  v10 = v29[2];
  v28 = v29[3];
  type metadata accessor for LibImageViewModel();
  v11 = *(a1 + 3);
  v12 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 16))(v11, v12);
  v15 = v14;

  v7 = sub_1E37ECC00(39, v13, v15, a2, 0, 0, 0);
  if (v6)
  {
    if (v6 == 1)
    {
      if (v8)
      {
        type metadata accessor for LibSidebandImageViewModel();
        OUTLINED_FUNCTION_1_153();
        sub_1E37C536C(v8, v9, v10, v28, 1);
        a1(v12, v15);

        v16 = sub_1E3BFF3A0();

        sub_1E3B77264(v29);
        return v16;
      }

      goto LABEL_18;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BD0;

      *(inited + 32) = sub_1E3C7CCAC(0);
      *(inited + 40) = v21;
      v22 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v8;
      *(inited + 56) = v9;
      *(inited + 80) = sub_1E3C7CCAC(4);
      *(inited + 88) = v23;
      *(inited + 120) = v22;
      *(inited + 96) = 6778986;
      *(inited + 104) = 0xE300000000000000;
      *(inited + 128) = sub_1E3D46F94(24);
      *(inited + 136) = v24;
      *(inited + 168) = v22;
      if (v28)
      {
        v25 = v10;
      }

      else
      {
        v25 = 0;
      }

      v26 = 0xE000000000000000;
      if (v28)
      {
        v26 = v28;
      }

      *(inited + 144) = v25;
      *(inited + 152) = v26;
      v27 = sub_1E4205CB4();
      type metadata accessor for ImageViewModel();

      v19 = sub_1E3F5321C(39, v27, a2);

      sub_1E3B77264(v29);
      return v19;
    }

LABEL_18:
    sub_1E3B77264(v29);
    return v7;
  }

  if (!v8)
  {
    goto LABEL_18;
  }

  type metadata accessor for LibMPImageViewModel();
  OUTLINED_FUNCTION_1_153();

  v18 = v8;
  a1(v12, v15);

  v19 = sub_1E394D550();

  sub_1E3B77264(v29);
  if (v19)
  {
    swift_beginAccess();
    *(v19 + 352) = v28 & 1;
    return v19;
  }

  return 0;
}

uint64_t sub_1E3B77264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3B7732C()
{
}

uint64_t sub_1E3B7736C()
{
  v0 = ViewModel.deinit();

  return v0;
}

uint64_t sub_1E3B773B4()
{
  v0 = sub_1E3B7736C();

  return MEMORY[0x1EEE6BDC0](v0, 280, 7);
}

uint64_t type metadata accessor for ModalDismissButton()
{
  result = qword_1EE2A0810;
  if (!qword_1EE2A0810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3B774A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34110);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  sub_1E3B77560(v0, &v7 - v3);
  v5 = sub_1E3B77BE0();
  sub_1E40A7FF0(0x632E676F6C616964, 0xEC00000065736F6CLL, 0, v1, v5);
  return sub_1E32C843C(v4);
}

id sub_1E3B77560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v57 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428);
  OUTLINED_FUNCTION_0_10();
  v50 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v50 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34140);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v50 - v7;
  v55 = sub_1E4202054();
  OUTLINED_FUNCTION_0_10();
  v53 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ModalDismissButton();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34130);
  OUTLINED_FUNCTION_0_10();
  v51 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34148);
  OUTLINED_FUNCTION_0_10();
  v52 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - v26;
  if (sub_1E39DFFC8())
  {
    sub_1E4200A24();
    v28 = sub_1E4200A34();
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v28);
    sub_1E3B78208(v57, &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v30 = swift_allocObject();
    sub_1E3B7826C(&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
    sub_1E4203954();
    sub_1E4202044();
    v31 = sub_1E3B77DDC(&qword_1ECF34138, &qword_1ECF34130);
    v32 = sub_1E3B77D84();
    v33 = v55;
    sub_1E4202D94();
    (*(v53 + 8))(v11, v33);
    (*(v51 + 8))(v22, v18);
    v34 = v52;
    (*(v52 + 16))(v59, v27, v23);
    swift_storeEnumTagMultiPayload();
    v60 = v18;
    v61 = v33;
    v62 = v31;
    v63 = v32;
    OUTLINED_FUNCTION_1_154();
    sub_1E3B77DDC(&qword_1EE288638, &qword_1ECF2F428);
    sub_1E4201F44();
    return (*(v34 + 8))(v27, v23);
  }

  else
  {
    v52 = v18;
    v53 = v23;
    v36 = v57;
    v37 = v59;
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v38 = result;
      v39 = sub_1E3741090(1162760004, 0xE400000000000000, result);
      v41 = v40;

      if (v41)
      {
        v42 = v39;
      }

      else
      {
        v42 = 0;
      }

      v43 = 0xE000000000000000;
      if (v41)
      {
        v43 = v41;
      }

      v60 = v42;
      v61 = v43;
      sub_1E3B78208(v36, &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v44 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v45 = swift_allocObject();
      sub_1E3B7826C(&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44);
      sub_1E32822E0();
      sub_1E4203994();
      v46 = v50;
      v47 = v54;
      (*(v50 + 16))(v37, v5, v54);
      swift_storeEnumTagMultiPayload();
      v48 = sub_1E3B77DDC(&qword_1ECF34138, &qword_1ECF34130);
      v49 = sub_1E3B77D84();
      v60 = v52;
      v61 = v55;
      v62 = v48;
      v63 = v49;
      OUTLINED_FUNCTION_1_154();
      sub_1E3B77DDC(&qword_1EE288638, &qword_1ECF2F428);
      sub_1E4201F44();
      return (*(v46 + 8))(v5, v47);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1E3B77BE0()
{
  result = qword_1ECF34118;
  if (!qword_1ECF34118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34110);
    sub_1E3B77C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34118);
  }

  return result;
}

unint64_t sub_1E3B77C64()
{
  result = qword_1ECF34120;
  if (!qword_1ECF34120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34130);
    sub_1E4202054();
    sub_1E3B77DDC(&qword_1ECF34138, &qword_1ECF34130);
    sub_1E3B77D84();
    swift_getOpaqueTypeConformance2();
    sub_1E3B77DDC(&qword_1EE288638, &qword_1ECF2F428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34120);
  }

  return result;
}

unint64_t sub_1E3B77D84()
{
  result = qword_1EE2889F0;
  if (!qword_1EE2889F0)
  {
    sub_1E4202054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2889F0);
  }

  return result;
}

uint64_t sub_1E3B77DDC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E3B77E30()
{
  v1 = sub_1E4200E34();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0 + *(type metadata accessor for ModalDismissButton() + 20);
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);

    v8(v10);
    sub_1E37FAED8(v8, v9);
  }

  else
  {
    sub_1E3898B28(v6);
    sub_1E4200E24();
    (*(v3 + 8))(v6, v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v12;
  v13 = sub_1E4205F14();
  v14 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v16;
  v17 = sub_1E4205F14();
  *(inited + 120) = v14;
  *(inited + 96) = v17;
  *(inited + 104) = v18;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v19;
  v20 = sub_1E4205F14();
  *(inited + 168) = v14;
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  v22 = sub_1E4205CB4();
  v23 = [objc_opt_self() sharedInstance];
  sub_1E3744600(v22);

  v24 = sub_1E4205C44();

  [v23 recordClick_];
}

uint64_t sub_1E3B7808C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E42037C4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B780C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ModalDismissButton();
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

void sub_1E3B78184()
{
  sub_1E389B45C();
  if (v0 <= 0x3F)
  {
    sub_1E381ECE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E3B78208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalDismissButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3B7826C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalDismissButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for ModalDismissButton();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4200E34();
    OUTLINED_FUNCTION_2();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  if (*(v0 + v2 + *(v1 + 20)))
  {
  }

  return swift_deallocObject();
}

void *sub_1E3B78458()
{
  v1 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_imageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1E3B784A0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_imageView;
  OUTLINED_FUNCTION_5_0();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E3B78520;
}

void *sub_1E3B78538()
{
  v1 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_playbackView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1E3B78580(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_playbackView;
  OUTLINED_FUNCTION_5_0();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E3B78600;
}

void sub_1E3B78618(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void sub_1E3B78698()
{
  v1 = [v0 vuiLayer];
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_cornerRadius;
    OUTLINED_FUNCTION_5_0();
    [v2 setCornerRadius_];
  }

  v4 = [v0 vuiLayer];
  if (v4)
  {
    v5 = v4;
    [v4 setMasksToBounds_];
  }
}

double sub_1E3B78740()
{
  v1 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_cornerRadius;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

void sub_1E3B78774(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_cornerRadius;
  OUTLINED_FUNCTION_7_27();
  *(v1 + v3) = a1;
  sub_1E3B78698();
}

void (*sub_1E3B787B8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3B7880C;
}

void sub_1E3B7880C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3B78698();
  }
}

uint64_t sub_1E3B78840()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_focusSizeIncrease;
  OUTLINED_FUNCTION_5_0();
  return *v1;
}

uint64_t sub_1E3B78884(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_focusSizeIncrease;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

double sub_1E3B78934()
{
  v1 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_transitionAnimationDuration;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3B78968(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_transitionAnimationDuration;
  result = OUTLINED_FUNCTION_7_27();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E3B789F8()
{
  OUTLINED_FUNCTION_0_8();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_6_109();

  return [v2 v3];
}

id sub_1E3B78A4C()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_playbackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_cornerRadius) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_focusSizeIncrease;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_transitionAnimationDuration) = 0x3FE8000000000000;
  v6 = type metadata accessor for InlinePlaybackView();
  v2 = OUTLINED_FUNCTION_6_109();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

void sub_1E3B78B34()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_playbackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_cornerRadius) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_focusSizeIncrease;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI18InlinePlaybackView_transitionAnimationDuration) = 0x3FE8000000000000;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3B78BF4(char a1)
{
  v3 = type metadata accessor for InlinePlaybackView();
  v4 = OUTLINED_FUNCTION_6_109();
  objc_msgSendSuper2(v5, v6, v4);
  if (a1)
  {
    v8 = OUTLINED_FUNCTION_6_109();
    objc_msgSendSuper2(v9, v10, 1, v8, v1, v3, v1, v3);
    return v11;
  }

  else
  {
    v12 = v7;
    OUTLINED_FUNCTION_4_133();
    v14 = (*(v13 + 120))();
    if (v14)
    {
      v15 = v14;
      [v1 bounds];
      [v15 setFrame_];
    }

    OUTLINED_FUNCTION_4_133();
    v17 = (*(v16 + 144))();
    if (v17)
    {
      v18 = v17;
      [v1 bounds];
      [v18 setFrame_];
    }
  }

  return v12;
}

void sub_1E3B78D9C(char a1, void (*a2)(), uint64_t a3)
{
  v7 = [v3 window];
  if (v7)
  {

    v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xD8))();
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = a1 & 1;
    v17 = sub_1E3B791EC;
    v18 = v9;
    OUTLINED_FUNCTION_0_154();
    v14 = 1107296256;
    v15 = sub_1E378AEA4;
    v16 = &block_descriptor_68;
    v10 = _Block_copy(&v13);
    v11 = v3;

    if (a2)
    {
      v17 = a2;
      v18 = a3;
      OUTLINED_FUNCTION_0_154();
      v14 = 1107296256;
      v15 = sub_1E37EB82C;
      v16 = &block_descriptor_4;
      v12 = _Block_copy(&v13);
    }

    else
    {
      v12 = 0;
    }

    [objc_opt_self() vui:5242880 animateWithDuration:v10 delay:v12 options:v8 animations:0.0 completion:?];
    _Block_release(v12);
    _Block_release(v10);
  }

  else
  {
    sub_1E3B78F74(v3, a1 & 1);
    if (a2)
    {
      (a2)(1);
    }
  }
}

void sub_1E3B78F74(void *a1, char a2)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x78))();
  if (v3)
  {
    v4 = v3;
    v5 = 1.0;
    if (a2)
    {
      v5 = 0.0;
    }

    [v3 setVuiAlpha_];
  }

  OUTLINED_FUNCTION_4_133();
  v7 = (*(v6 + 144))();
  if (v7)
  {
    v8 = 0.0;
    if (a2)
    {
      v8 = 1.0;
    }

    v9 = v7;
    [v7 setVuiAlpha_];
  }
}

id sub_1E3B7916C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InlinePlaybackView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3B79200(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = [objc_opt_self() currentThread];
  v5 = [v4 isMainThread];

  if (v5)
  {
    return a1();
  }

  sub_1E32ADE38();
  v7 = sub_1E4206A04();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  OUTLINED_FUNCTION_0_155();
  OUTLINED_FUNCTION_27_43();
  v11[2] = v9;
  v11[3] = &block_descriptor_7;
  v10 = _Block_copy(v11);

  dispatch_sync(v7, v10);

  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3B79350()
{
  sub_1E3B793D0();
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 888))();
  v2 = OUTLINED_FUNCTION_3_24();

  return v2;
}

unint64_t sub_1E3B793D0()
{
  result = qword_1EE23B220;
  if (!qword_1EE23B220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B220);
  }

  return result;
}

uint64_t sub_1E3B79460()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 888))();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1E388ED3C(v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_1E3B79520(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 888))();
  if (!v4)
  {
    return 0;
  }

  result = sub_1E388ED3C(v4);
  if (!result)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a2)
  {
    v6 = *(result + 8 * a2 + 32);

    v7 = *(v6 + 16);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3B7962C()
{
  sub_1E3B793D0();
  OUTLINED_FUNCTION_21();
  (*(v1 + 888))();
  OUTLINED_FUNCTION_14_44();
  v5 = sub_1E3AABB6C(v2, v3, v4);

  return v5;
}

double sub_1E3B79798(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1.0;
  }

  if (a1 == 1)
  {
    return -0.5;
  }

  if (a1)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  return 2.0;
}

uint64_t sub_1E3B798CC()
{
  sub_1E3B793D0();
  OUTLINED_FUNCTION_21();
  (*(v1 + 888))();
  OUTLINED_FUNCTION_14_44();
  v5 = sub_1E3AABC1C(v2, v3, v4);

  return v5;
}

uint64_t sub_1E3B799C0(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v141 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v141 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v15 = v141 - v14;
  v16 = "ractor";
  if (!v13)
  {
    goto LABEL_185;
  }

  v17 = *(*a1 + 464);
  v152 = v13;
  v151 = v13;
  v18 = v17();
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = v18;
  v159 = sub_1E32AE9B0(v18);
  if (!v159)
  {

LABEL_9:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v30(v9);

    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_6_21();
      v34 = OUTLINED_FUNCTION_100();
      v162 = v34;
      *v33 = 136315138;
      sub_1E384EE08(*(a1 + 98));
      v37 = sub_1E3270FC8(v35, v36, &v162);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1E323F000, v31, v32, "View model of type [%s] does not have any children, this is an error.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v3 + 8))(v9, v2);
    return v152;
  }

  v20 = (*(*a1 + 392))();
  if (!v20)
  {

LABEL_14:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v38(v12);

    v39 = sub_1E41FFC94();
    v40 = sub_1E4206814();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_6_21();
      v42 = OUTLINED_FUNCTION_100();
      v162 = v42;
      *v41 = 136315138;
      sub_1E384EE08(*(a1 + 98));
      v45 = sub_1E3270FC8(v43, v44, &v162);

      *(v41 + 4) = v45;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v46, v47, "Favorite Banner Cell layout missing for view model type %s");
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v3 + 8))(v12, v2);
    return v152;
  }

  v21 = v20;
  v146 = v15;
  v147 = v2;
  type metadata accessor for SportsFavoriteBannerCellLayout();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    v2 = v147;
    goto LABEL_14;
  }

  v23 = v22;
  v145 = v21;
  v24 = (*(*v22 + 1560))();
  v25 = ((*v23)[248])(v24);
  ((*v23)[224])();
  ((*v23)[249])(v25);
  v26 = v151;
  v27 = [v151 bannerView];
  if (v27)
  {

    v28 = [v26 bannerView];
  }

  else
  {
    v28 = [objc_allocWithZone(VUIFavoriteBannerView) init];
  }

  v49 = v28;
  if (v28)
  {
    v50 = (*v23)[222];
    v51 = v28;
    v52 = v50();
    [v51 setLayout_];

    v169 = 0;
    v53 = sub_1E3B7B0EC(v51);
    if (v53)
    {
      v54 = v53;
      if (v53 >> 62)
      {
        goto LABEL_180;
      }

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1EE23AE80);
      v156 = v54;
    }

    else
    {
      v156 = 0;
    }
  }

  else
  {
    v156 = 0;
    v169 = 0;
  }

  while (1)
  {
    v168 = 0;
    if (v159 >= 1)
    {
      break;
    }

LABEL_179:
    __break(1u);
LABEL_180:
    sub_1E3280A90(0, &qword_1EE23AE80);
    v129 = sub_1E42076C4();

    v156 = v129;
  }

  v148 = 0;
  v153 = 0;
  a1 = 0;
  v155 = v49 == 0;
  v158 = (v19 & 0xC000000000000001);
  v144 = (v3 + 16);
  v143 = v3 + 8;
  v3 = v156;
  v55 = (v156 & 0xFFFFFFFFFFFFFF8);
  v154 = v156 & 0xFFFFFFFFFFFFFF8;
  if (v156 < 0)
  {
    v55 = v156;
  }

  v141[1] = v55;
  v150 = v156 & 0xC000000000000001;
  v149 = v156 + 32;
  *&v29 = *(v16 + 3704);
  v142 = v29;
  v160 = v49;
  v157 = v19;
  do
  {
    if (v158)
    {
      v2 = MEMORY[0x1E6911E60](a1, v19);
    }

    else
    {
      v2 = *(v19 + 8 * a1 + 32);
    }

    LOWORD(v164) = *(v2 + 98);
    v167 = 40;
    sub_1E3742F1C();
    sub_1E4206254();
    OUTLINED_FUNCTION_1_155();
    v16 = v163;
    v56 = v162 == v165 && v163 == v166;
    v161 = v3 >> 62;
    if (v56)
    {

LABEL_50:
      v73 = v168;
      v72 = v169;
      if (!v169)
      {
        v72 = MEMORY[0x1E69E7CC0];
      }

      if (!v168)
      {
        v73 = MEMORY[0x1E69E7CC0];
      }

      v168 = v73;
      v169 = v72;
      if (v72 >> 62)
      {
        v19 = sub_1E4207384();
        if (v3)
        {
LABEL_56:
          if (v161)
          {
            v74 = sub_1E4207384();
          }

          else
          {
            v74 = *(v154 + 16);
          }

          if (v19 >= v74)
          {
            v3 = 0;
          }

          else if (v150)
          {

            v3 = MEMORY[0x1E6911E60](v19, v3);
          }

          else
          {
            if (v19 < 0)
            {
              __break(1u);
LABEL_178:
              __break(1u);
              goto LABEL_179;
            }

            if (v19 >= *(v154 + 16))
            {
              goto LABEL_178;
            }

            v3 = *(v149 + 8 * v19);
          }
        }
      }

      else
      {
        v19 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
          goto LABEL_56;
        }
      }

      if (v49)
      {
        [v49 maxImageSize];
        v16 = v75;
      }

      else
      {
        v16 = 0;
      }

      v76 = OUTLINED_FUNCTION_10_86();
      v77(v76);

      v78 = v23;
      v79 = *(*v23[14] + 312);

      v79(v16, &qword_1F5D5CE68);

      type metadata accessor for UIFactory();
      v80 = OUTLINED_FUNCTION_5_122();
      sub_1E3280A90(v80, &qword_1EE23AE80);

      v6 = sub_1E393D92C(v81, v3, &v162, 0);

      sub_1E373C624(&v162);
      if (v6)
      {
        objc_opt_self();
        v82 = swift_dynamicCastObjCClass();
        v23 = v78;
        if (v82)
        {
          v16 = v82;
          [v82 setUserInteractionEnabled_];
          v49 = v160;
          if (v19 > 27)
          {
          }

          else
          {
            v83 = v6;
            MEMORY[0x1E6910BF0]();
            if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();

            v6 = &v168;
            MEMORY[0x1E6910BF0](v84);
            v16 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v16 >= *((v168 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();
          }

          goto LABEL_80;
        }
      }

      else
      {

        v23 = v78;
      }

      v49 = v160;
LABEL_80:
      v3 = v156;
      goto LABEL_81;
    }

    v57 = sub_1E42079A4();

    if (v57)
    {
      goto LABEL_50;
    }

    LOWORD(v164) = *(v2 + 98);
    OUTLINED_FUNCTION_6_110(23);
    OUTLINED_FUNCTION_1_155();
    v16 = v163;
    if (v162 == v165 && v163 == v166)
    {

LABEL_84:

      v85 = v153;
      if (v49)
      {
        v86 = [v49 titleLabel];
      }

      else
      {
        v86 = 0;
      }

      type metadata accessor for UIFactory();
      sub_1E3280A90(0, &qword_1EE23AE80);
      v6 = OUTLINED_FUNCTION_0_156();

      sub_1E373C624(&v162);
      v153 = v6;
      goto LABEL_81;
    }

    v59 = sub_1E42079A4();

    if (v59)
    {
      goto LABEL_84;
    }

    LOWORD(v164) = *(v2 + 98);
    OUTLINED_FUNCTION_6_110(15);
    OUTLINED_FUNCTION_1_155();
    if (v162 == v165 && v163 == v166)
    {

      v16 = v148;
    }

    else
    {
      v61 = sub_1E42079A4();

      v16 = v148;
      if ((v61 & 1) == 0)
      {
        v62 = sub_1E324FBDC();
        v63 = v147;
        (*v144)(v146, v62, v147);

        v6 = sub_1E41FFC94();
        v64 = sub_1E42067F4();

        if (os_log_type_enabled(v6, v64))
        {
          v65 = OUTLINED_FUNCTION_6_21();
          v66 = OUTLINED_FUNCTION_100();
          v162 = v66;
          *v65 = v142;
          LOWORD(v165) = *(v2 + 98);
          sub_1E37D144C();
          v141[0] = v6;
          v67 = sub_1E4207944();
          v16 = sub_1E3270FC8(v67, v68, &v162);

          *(v65 + 4) = v16;
          v6 = v141[0];
          _os_log_impl(&dword_1E323F000, v141[0], v64, "FavoriteBannerCell: unsupported child type %s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v66);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_21_0();

          v69 = OUTLINED_FUNCTION_9_91();
          v71 = v147;
        }

        else
        {

          v69 = OUTLINED_FUNCTION_9_91();
          v71 = v63;
        }

        v70(v69, v71);
        goto LABEL_80;
      }
    }

    if (v49)
    {
      v87 = [v49 subtitleLabel];
    }

    else
    {
      v87 = 0;
    }

    type metadata accessor for UIFactory();
    sub_1E3280A90(0, &qword_1EE23AE80);
    v6 = OUTLINED_FUNCTION_0_156();

    sub_1E373C624(&v162);
    v148 = v6;
LABEL_81:
    v19 = v157;
    ++a1;
  }

  while (v159 != a1);
  if (!v49)
  {

    v90 = 0;
LABEL_103:
    v91 = [objc_opt_self() currentDevice];
    v92 = [v91 userInterfaceIdiom];

    if (v92)
    {
      v3 = 28;
    }

    else
    {
      v3 = 5;
    }

    if (v90)
    {
      v93 = 0;
      while (1)
      {
        v16 = v168;
        a1 = v169;
        v94 = v169 >= 0 ? v169 & 0xFFFFFFFFFFFFFF8 : v169;
        v159 = v94;
        while (1)
        {
          do
          {
            v95 = a1 >> 62;
            if (a1)
            {
              v96 = v95 ? sub_1E4207384() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v96 >= v3)
              {
                goto LABEL_158;
              }
            }
          }

          while (!v16);
          v165 = v16;
          v162 = v93;
          LOBYTE(v163) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
          sub_1E3798394();
          v6 = &v165;
          sub_1E38D2054(&v162, &v164);
          v2 = v164;
          if (v164)
          {
            break;
          }

LABEL_120:
          v49 = v160;
        }

        type metadata accessor for ImageViewModel();
        v97 = swift_dynamicCastClass();
        if (!v97)
        {
          break;
        }

        v98 = v97;
        if (a1)
        {
          if (v95)
          {
            v99 = sub_1E4207384();
          }

          else
          {
            v99 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
          v99 = 0;
        }

        v147 = v99;
        if (v156 && (v161 ? (v100 = sub_1E4207384()) : (v100 = *(v154 + 16)), v99 < v100))
        {
          if (!v150)
          {
            if ((v99 & 0x8000000000000000) == 0)
            {
              if (v99 < *(v154 + 16))
              {
                v101 = *(v149 + 8 * v99);
                goto LABEL_135;
              }

LABEL_183:
              __break(1u);
              goto LABEL_184;
            }

LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v111 = v156;

          v101 = MEMORY[0x1E6911E60](v99, v111);
        }

        else
        {
          v101 = 0;
        }

LABEL_135:
        v158 = v101;
        if (v160)
        {
          [v160 maxImageSize];
          v159 = v102;
        }

        else
        {
          v159 = 0;
        }

        v103 = OUTLINED_FUNCTION_10_86();
        v104(v103);

        v6 = v23[14];
        v157 = (v6->isa + 312);
        v105 = *v157;

        v105(v159, v101);

        type metadata accessor for UIFactory();
        v106 = OUTLINED_FUNCTION_5_122();
        sub_1E3280A90(v106, &qword_1EE23AE80);

        v107 = v158;
        v108 = sub_1E393D92C(v98, v158, &v162, 0);

        sub_1E373C624(&v162);
        if (v108)
        {
          objc_opt_self();
          v109 = swift_dynamicCastObjCClass();
          if (!v109)
          {
            goto LABEL_145;
          }

          if (a1 && v147 < v3)
          {
            v6 = &v169;
            MEMORY[0x1E6910BF0](v108);
            if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();
LABEL_145:
          }
        }

        else
        {
          v109 = 0;
        }

        a1 = v93 + 1;
        if (__OFADD__(v93, 1))
        {
          __break(1u);
          goto LABEL_182;
        }

        if (v16 >> 62)
        {
          v110 = sub_1E4207384();
        }

        else
        {
          v110 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a1 >= v110)
        {
          v93 = 0;
        }

        else
        {
          ++v93;
        }

        v49 = v160;
      }

      goto LABEL_120;
    }

LABEL_158:

    v112 = v153;
    v113 = v148;
    if (v49)
    {
      if (v153)
      {
        objc_opt_self();
        v114 = swift_dynamicCastObjCClass();
        if (v114)
        {
          v115 = v112;
        }
      }

      else
      {
        v114 = 0;
      }

      v116 = v49;
      [v116 setTitleLabel_];

      if (v113)
      {
        objc_opt_self();
        v117 = swift_dynamicCastObjCClass();
        if (v117)
        {
          v118 = v113;
        }
      }

      else
      {
        v117 = 0;
      }

      v119 = v116;
      [v119 setSubtitleLabel_];
    }

    v120 = v49;
    v121 = [v120 backgroundView];
    if (v121)
    {

      v122 = [v120 backgroundView];
    }

    else
    {
      v122 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    }

    v123 = v122;
    [v120 setBackgroundView_];

    if (v160)
    {
      if (v169)
      {
        sub_1E3280A90(0, &qword_1EE23B360);
        v124 = v120;
        v125 = sub_1E42062A4();
      }

      else
      {
        v126 = v120;
        v125 = 0;
      }

      [v120 setBackgroundImageLogos_];
    }

    v127 = ((*v23)[222])();
    v128 = v151;
    [v151 setBannerLayout_];

    [v128 setBannerView_];

    return v152;
  }

  v88 = [v49 layout];
  if (v88)
  {
    v89 = v88;

    v90 = [v89 isPreModeBanner];

    goto LABEL_103;
  }

LABEL_184:
  __break(1u);
LABEL_185:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v130(v6);

  v131 = v6;
  v132 = sub_1E41FFC94();
  v133 = sub_1E4206814();

  if (os_log_type_enabled(v132, v133))
  {
    v134 = OUTLINED_FUNCTION_6_21();
    v135 = OUTLINED_FUNCTION_100();
    v162 = v135;
    *v134 = *(v16 + 3704);
    sub_1E384EE08(*(a1 + 98));
    v138 = sub_1E3270FC8(v136, v137, &v162);

    *(v134 + 4) = v138;
    OUTLINED_FUNCTION_7_28(&dword_1E323F000, v139, v140, "FavoriteBannerCell: Failed to get correct cell for %s");
    __swift_destroy_boxed_opaque_existential_1(v135);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v131, v2);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

id sub_1E3B7AED0()
{
  OUTLINED_FUNCTION_0_8();
  v5 = type metadata accessor for SportsFavoriteBannerCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3B7AF40(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SportsFavoriteBannerCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3B7AFD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsFavoriteBannerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1E3B7B008@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  [v6 sizeThatFits_];
  v13 = v12;
  v15 = v14;
  sub_1E41A300C(v17);
  sub_1E41A2FE8(v13, v15);
  *&v17[6] = a3;
  *&v17[7] = a4;
  *&v17[8] = a5;
  *&v17[9] = a6;
  return memcpy(a1, v17, 0x50uLL);
}

uint64_t sub_1E3B7B0EC(void *a1)
{
  v2 = [a1 backgroundImageLogos];

  if (!v2)
  {
    return 0;
  }

  sub_1E3280A90(0, &qword_1EE23B360);
  v3 = sub_1E42062B4();

  return v3;
}

id sub_1E3B7B188()
{
  type metadata accessor for LibDataSourceManager();
  v0 = swift_allocObject();
  result = sub_1E3B7D34C();
  qword_1EE2AAE28 = v0;
  return result;
}

uint64_t *sub_1E3B7B1C8()
{
  if (qword_1EE29D7D0 != -1)
  {
    OUTLINED_FUNCTION_41_37();
  }

  return &qword_1EE2AAE28;
}

uint64_t sub_1E3B7B214()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E41A3110();
  v1 = OUTLINED_FUNCTION_78_11();
  v2(v1);

  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_160();
    *v5 = 67109120;
    OUTLINED_FUNCTION_12_6();
    *(v5 + 4) = (*(v6 + 216))() & 1;

    _os_log_impl(&dword_1E323F000, v3, v4, "LibDataSourceManager:: did set isLoading to %{BOOL}d", v5, 8u);
    OUTLINED_FUNCTION_55();
  }

  else
  {
  }

  v7 = OUTLINED_FUNCTION_13_8();
  return v8(v7);
}

uint64_t sub_1E3B7B3A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3B7B420()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_82();
  sub_1E4200684();
  return sub_1E3B7B214();
}

uint64_t (*sub_1E3B7B4E0())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3B7B578()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3B7B68C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3B7B748())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3B7B7E0()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

void sub_1E3B7B8E0(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    OUTLINED_FUNCTION_131_0();
    v7 = OUTLINED_FUNCTION_34();
    v8(v7);
    a3(v5);
    v9 = OUTLINED_FUNCTION_125();
    v10(v9);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E3B7B9B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result & 1;
  return result;
}

void sub_1E3B7BA6C()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_78_11();
  v3(v2);

  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_100();
    v21 = v7;
    *v6 = 136315138;
    v8 = (*(*v0 + 408))();
    v9 = v8;
    if (v8)
    {
      v8 = type metadata accessor for LibMenuItem();
    }

    else
    {
      v20[1] = 0;
      v20[2] = 0;
    }

    v20[0] = v9;
    v20[3] = v8;
    v10 = sub_1E3294FA4(v20);
    v12 = sub_1E3270FC8(v10, v11, &v21);

    *(v6 + 4) = v12;
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();
  }

  v18 = OUTLINED_FUNCTION_13_8();
  v19(v18);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B7BC40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3B7BCB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B7BD04(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 416);

  return v2(v3);
}

uint64_t sub_1E3B7BD60()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_82();
  sub_1E4200684();
  sub_1E3B7BA6C();
}

uint64_t (*sub_1E3B7BDE0(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3B7BC40();
  return sub_1E3B7BE28;
}

uint64_t sub_1E3B7BE28(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E3B7BD60();
  }

  sub_1E3B7BD60();
}

uint64_t sub_1E3B7BE9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34188);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_8(v6, v10);
  v8(v7);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34180);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1E3B7BFA0()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34188);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34180);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3B7C0A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3B7C110@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B7C164(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 464);

  return v2(v3);
}

uint64_t sub_1E3B7C1C0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_82();
  return sub_1E4200684();
}

uint64_t (*sub_1E3B7C22C())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3B7C2B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C70);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_8(v6, v10);
  v8(v7);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1E3B7C3BC()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C70);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3B7C4D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3B7C58C())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3B7C624()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3B7C738@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 552))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3B7C7F4())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3844B3C;
}

uint64_t sub_1E3B7C880()
{
  OUTLINED_FUNCTION_11_3();
  v0 = OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_23_23();
  return swift_endAccess();
}

uint64_t sub_1E3B7C8F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_35_3();
  (*(v5 + 16))(v1, a1, v3);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_1E3B7CA0C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3B7CB0C()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_adamIDToCanonicalIDMap;
  OUTLINED_FUNCTION_5_0();
  v2 = *(v1 + 8);

  return OUTLINED_FUNCTION_57();
}

void sub_1E3B7CB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_adamIDToCanonicalIDMap);
  OUTLINED_FUNCTION_3_0();
  v8 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
}

void sub_1E3B7CC30()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
  OUTLINED_FUNCTION_5_0();
  v10 = *(v0 + v9);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v46 = v8;
  if (v11)
  {
    v43 = v9;
    v44 = v4;
    v45 = v2;
    v50 = MEMORY[0x1E69E7CC0];

    sub_1E377FD30(0, v11, 0);
    v13 = v10 + 32;
    do
    {
      sub_1E327F454(v13, v47);
      v14 = v48;
      v15 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      OUTLINED_FUNCTION_33();
      v17 = v16(v14, v15);
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1(v47);
      v50 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_35(v20);
        sub_1E377FD30(v23, v21 + 1, 1);
        v12 = v50;
      }

      *(v12 + 16) = v21 + 1;
      v22 = v12 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v13 += 40;
      --v11;
    }

    while (v11);

    v4 = v44;
    v2 = v45;
    v8 = v46;
    v9 = v43;
  }

  v24 = sub_1E41A3110();
  (*(v4 + 16))(v8, v24, v2);

  v25 = sub_1E41FFC94();
  v26 = sub_1E4206814();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_49_0();
    v47[0] = OUTLINED_FUNCTION_72_0();
    *v27 = 136315394;
    v28 = *(v1 + v9);

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    v30 = MEMORY[0x1E6910C30](v28, v29);
    v32 = v31;

    v33 = sub_1E3270FC8(v30, v32, v47);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    MEMORY[0x1E6910C30](v12, MEMORY[0x1E69E6158]);

    v34 = OUTLINED_FUNCTION_114_0();
    v37 = sub_1E3270FC8(v34, v35, v36);

    *(v27 + 14) = v37;
    OUTLINED_FUNCTION_36_4();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    (*(v4 + 8))(v46, v2);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B7CF98()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
  OUTLINED_FUNCTION_5_0();
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

LABEL_9:
      v9 = *(v1 + v2);
      v10 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
      OUTLINED_FUNCTION_3_0();
      *(v1 + v10) = v9;

      sub_1E3B7CC30();
      return;
    }

    if (i >= *(v3 + 16))
    {
      break;
    }

    sub_1E327F454(v3 + 32, v13);
    sub_1E327F454(v13, v12);
    v6 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6);
    OUTLINED_FUNCTION_247();
    type metadata accessor for LibLocalSource();
    if (OUTLINED_FUNCTION_122_4())
    {

      sub_1E37DADF4(v13, v14);
      if (OUTLINED_FUNCTION_122_4())
      {
        v7 = *&v13[0];
        OUTLINED_FUNCTION_21();
        (*(v8 + 640))();
      }

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_120_4(v13);
  }

  __break(1u);
}

uint64_t sub_1E3B7D1A0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_3_0();
  *(v3 + v6) = a1;

  return a3(v7);
}

uint64_t sub_1E3B7D1F8()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1E328FCF4(&qword_1ECF34198, &qword_1ECF34190);
  return sub_1E42006B4();
}

id sub_1E3B7D288(uint64_t a1)
{
  sub_1E327F454(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
  OUTLINED_FUNCTION_9_5();
  v1 = type metadata accessor for LibLocalSource();
  OUTLINED_FUNCTION_86(v1, v2, v3, v4, v5, v6, v7, v8, v12);
  if (!OUTLINED_FUNCTION_102_0())
  {
    return 0;
  }

  OUTLINED_FUNCTION_21();
  if (((*(v9 + 448))() & 1) == 0)
  {

    return 0;
  }

  v10 = [objc_opt_self() userHasActiveAccount];

  return v10;
}

id sub_1E3B7D34C()
{
  OUTLINED_FUNCTION_156_0();
  v118 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v117 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v5 - v4);
  v116 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v115[1] = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v9 - v8);
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v124 = v11;
  *&v125 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v123 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  OUTLINED_FUNCTION_0_10();
  v121 = v15;
  v122 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_3(v115 - v17);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34180);
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_35_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  LOBYTE(aBlock) = 0;
  OUTLINED_FUNCTION_72_17();
  sub_1E4200634();
  v24 = *(v22 + 32);
  v25 = OUTLINED_FUNCTION_11_92();
  v24(v25);
  LOBYTE(aBlock) = 0;
  OUTLINED_FUNCTION_72_17();
  sub_1E4200634();
  v26 = OUTLINED_FUNCTION_11_92();
  v24(v26);
  LOBYTE(aBlock) = [objc_opt_self() isRemoteServerConnected] ^ 1;
  OUTLINED_FUNCTION_72_17();
  sub_1E4200634();
  v27 = OUTLINED_FUNCTION_11_92();
  v24(v27);
  LOBYTE(aBlock) = 0;
  OUTLINED_FUNCTION_72_17();
  sub_1E4200634();
  v28 = OUTLINED_FUNCTION_11_92();
  v24(v28);
  v29 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__selectedMenuItem;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34178);
  sub_1E4200634();
  (*(v19 + 32))(v0 + v29, v1, v119);
  v30 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__resolvedMenuItems;
  v31 = MEMORY[0x1E69E7CC0];
  aBlock = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C60);
  v32 = v120;
  sub_1E4200634();
  (*(v121 + 32))(v0 + v30, v32, v122);
  v33 = objc_opt_self();
  v34 = [v33 isLibraryOnlyCountry];
  v35 = 0;
  if (v34)
  {
    v35 = [v33 isLibraryOnlyCountryResolved];
  }

  LOBYTE(aBlock) = v35;
  OUTLINED_FUNCTION_72_17();
  sub_1E4200634();
  v36 = OUTLINED_FUNCTION_11_92();
  v24(v36);
  LOBYTE(aBlock) = 0;
  OUTLINED_FUNCTION_72_17();
  sub_1E4200634();
  v37 = OUTLINED_FUNCTION_11_92();
  v24(v37);
  v38 = (v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_adamIDToCanonicalIDMap);
  v39 = [objc_opt_self() sharedInstance];
  v40 = [v39 libConfig];

  [v40 collectionItemLimit];
  sub_1E3CA34F0();
  *v38 = v41;
  v38[1] = v42;
  v38[2] = v43;
  *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_isMPLibraryUpdateInProgress) = 0;
  OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_needsFamilyFetch);
  *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources) = v31;
  v44 = v31;
  *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources) = v31;
  v45 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSourceChangeSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34190);
  swift_allocObject();
  *(v0 + v45) = sub_1E4200544();
  v46 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_shelvedMenuTypesNotOnPhoneRootPage;
  *(v0 + v46) = sub_1E38F1C3C(&unk_1F5D73460);
  v47 = (v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_menuDataCache);
  type metadata accessor for LibMenuItem();
  OUTLINED_FUNCTION_22_53();
  *v47 = sub_1E3CA5CB4();
  v47[1] = v48;
  *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_cancellables) = MEMORY[0x1E69E7CD0];
  v49 = sub_1E41A3110();
  v51 = v123;
  v50 = v124;
  v52 = v125;
  (*(v124 + 16))(v123, v49, v125);
  v53 = sub_1E41FFC94();
  v54 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v54))
  {
    v55 = OUTLINED_FUNCTION_125_0();
    *v55 = 0;
    _os_log_impl(&dword_1E323F000, v53, v54, "init LibDataSourceManager", v55, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v50 + 8))(v51, v52);
  v56 = type metadata accessor for LibLocalSource();
  sub_1E412DB78();
  v58 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF340B8);
  v59 = OUTLINED_FUNCTION_26_11();
  v125 = xmmword_1E4297BE0;
  *(v59 + 16) = xmmword_1E4297BE0;
  *(v59 + 56) = v56;
  v60 = sub_1E3B8B148(&qword_1EE282A78, type metadata accessor for LibLocalSource);
  *(v59 + 64) = v60;
  *(v59 + 32) = v58;
  v61 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_availableSources;
  OUTLINED_FUNCTION_3_0();
  *(v0 + v61) = v59;
  v62 = v58;

  v63 = OUTLINED_FUNCTION_26_11();
  *(v63 + 16) = v125;
  *(v63 + 56) = v56;
  *(v63 + 64) = v60;
  *(v63 + 32) = v62;
  v64 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_activeSources;
  OUTLINED_FUNCTION_3_0();
  *(v0 + v64) = v63;
  *&v125 = v62;

  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v66 = result;
    v67 = sub_1E3B7E03C();

    *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_isMPLibraryUpdateInProgress) = v67 & 1;
    sub_1E3B7E074(v67 & 1);
    v68 = sub_1E3280A90(0, &qword_1EE23B1D0);
    v69 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v70 = swift_allocObject();
    OUTLINED_FUNCTION_105_2(v70);
    swift_weakInit();
    v130 = sub_1E3B8B43C;
    v131 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v127 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v128 = v71;
    v129 = &block_descriptor_111;
    v72 = _Block_copy(&aBlock);

    v73 = v115[0];
    sub_1E4203FE4();
    aBlock = v44;
    OUTLINED_FUNCTION_3_131();
    sub_1E3B8B148(v74, v75);
    v76 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v76);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v77, v78);
    v79 = v115[2];
    OUTLINED_FUNCTION_155_4();
    MEMORY[0x1E6911380](0, v73, v79, v72);
    _Block_release(v72);

    OUTLINED_FUNCTION_15_5();
    v80(v79, &unk_1E429B000);
    OUTLINED_FUNCTION_15_5();
    v81(v73, v116);
    [objc_opt_self() beginDiscoveringMediaLibraries];
    v82 = [objc_opt_self() defaultCenter];
    OUTLINED_FUNCTION_58_22(v82, v83, v84, sel_handleHomeSharingUpdates, *MEMORY[0x1E696FBA0]);

    v85 = OUTLINED_FUNCTION_116_4();
    OUTLINED_FUNCTION_58_22(v85, v86, v87, sel_appWillEnterForeground, *MEMORY[0x1E69DDBC0]);

    v88 = OUTLINED_FUNCTION_116_4();
    OUTLINED_FUNCTION_58_22(v88, v89, v90, sel_appDidEnterBackground, *MEMORY[0x1E69DDAC8]);

    v91 = OUTLINED_FUNCTION_116_4();
    v92 = *MEMORY[0x1E696F8B8];
    v93 = [objc_opt_self() sharedCloudController];
    v94 = [objc_opt_self() mainQueue];
    OUTLINED_FUNCTION_4_0();
    v95 = swift_allocObject();
    swift_weakInit();
    v130 = sub_1E3B8B48C;
    v131 = v95;
    aBlock = MEMORY[0x1E69E9820];
    v127 = 1107296256;
    v128 = sub_1E3A5EE04;
    v129 = &block_descriptor_115;
    v96 = _Block_copy(&aBlock);

    v97 = [v91 addObserverForName:v92 object:v93 queue:v94 usingBlock:v96];
    _Block_release(v96);

    swift_unknownObjectRelease();
    v98 = OUTLINED_FUNCTION_116_4();
    [v98 addObserver:v0 selector:sel_handleAccountChanges name:*NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor() object:0];

    v99 = OUTLINED_FUNCTION_116_4();
    if (TVAppFeature.isEnabled.getter(12))
    {
      v100 = sub_1E4206AC4();
    }

    else
    {
      v100 = *MEMORY[0x1E69DF878];
    }

    v101 = v100;
    v102 = OUTLINED_FUNCTION_135_1();
    [v102 v103];

    v104 = [objc_opt_self() sharedInstance];
    v105 = [v104 launchConfig];

    LODWORD(v104) = [v105 checkRemoteServerReachability];
    if (v104)
    {
      v106 = OUTLINED_FUNCTION_116_4();
      NSNotification.remoteNetworkReachabilityDidChange.unsafeMutableAddressor();
      v107 = OUTLINED_FUNCTION_135_1();
      [v107 v108];
    }

    v109 = OUTLINED_FUNCTION_116_4();
    OUTLINED_FUNCTION_58_22(v109, v110, v111, sel_isLibraryOnlyCountryChanged_, @"VUIAuthenticationManagerIsLibraryOnlyCountryDidChangeNotification");

    sub_1E3280A90(0, &qword_1EE23AF38);
    v112 = [swift_getObjCClassFromMetadata() defaultCenter];
    OUTLINED_FUNCTION_58_22(v112, v113, v114, sel_handleFamilyChange, *MEMORY[0x1E699C038]);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E3B7E03C()
{
  result = [v0 isJaliscoInitialImport];
  if (result)
  {
    return [v0 isJaliscoUpdateInProgress];
  }

  return result;
}

uint64_t sub_1E3B7E074(char a1)
{
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 848))();
  if (result)
  {
    OUTLINED_FUNCTION_8();
    v5 = (*(v4 + 216))() & 1;
    result = a1 & 1;
    if (v5 != result)
    {

      return sub_1E3B7B420();
    }
  }

  return result;
}

void sub_1E3B7E10C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v30 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v29 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v5 - v4);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v6 = *(*v1 + 672);
  v7 = v6();
  v8 = 0;
  v9 = *(v7 + 16);
  for (i = v7 + 32; ; i += 40)
  {
    if (v9 == v8)
    {

      v14 = (v6)(v13);
      sub_1E37D9AD0(v14, &v35);

      sub_1E325F7A8(&v38, &unk_1ECF2A740);
      v38 = v35;
      v39 = v36;
      v40 = v37;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_94_9();
    if (v11)
    {
      __break(1u);
      return;
    }

    sub_1E327F454(i, &v33);
    sub_1E327F454(&v33, &v32);
    v12 = OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12);
    type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {
      break;
    }

    ++v8;
    __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  sub_1E37DADF4(&v33, &v35);
  sub_1E325F7A8(&v38, &unk_1ECF2A740);
  sub_1E37DADF4(&v35, &v38);
LABEL_8:
  sub_1E3B891D8(&v38, &v33);
  if (v34)
  {
    sub_1E37DADF4(&v33, &v35);
    OUTLINED_FUNCTION_111();
    if ((*(v15 + 848))() & 1) != 0 && (*(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_isMPLibraryUpdateInProgress))
    {
      v16 = sub_1E324FBDC();
      (*(v29 + 16))(v28, v16, v30);
      v17 = sub_1E41FFC94();
      v18 = sub_1E4206814();
      if (OUTLINED_FUNCTION_104(v18))
      {
        v19 = OUTLINED_FUNCTION_125_0();
        *v19 = 0;
        _os_log_impl(&dword_1E323F000, v17, v18, "LibDataSourceManager:: not fetching menu items since it's still loading", v19, 2u);
        OUTLINED_FUNCTION_21_0();
      }

      OUTLINED_FUNCTION_15_5();
      v20(v28, v30);
    }

    else
    {
      sub_1E3B7BA30();
      sub_1E327F454(&v35, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
      OUTLINED_FUNCTION_106();
      type metadata accessor for LibLocalSource();
      if (OUTLINED_FUNCTION_90_0())
      {
        v21 = v32;
        OUTLINED_FUNCTION_21();
        (*(v22 + 216))();
      }

      v23 = *(&v36 + 1);
      v24 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      OUTLINED_FUNCTION_4_0();
      v25 = swift_allocObject();
      swift_weakInit();
      sub_1E327F454(&v35, &v33);
      v26 = swift_allocObject();
      sub_1E37DADF4(&v33, v26 + 16);
      *(v26 + 56) = v25;
      v27 = *(v24 + 104);

      v27(sub_1E3B8B350, v26, v23, v24);
    }

    sub_1E3B848AC();
    sub_1E325F7A8(&v38, &unk_1ECF2A740);
    __swift_destroy_boxed_opaque_existential_1(&v35);
  }

  else
  {
    sub_1E325F7A8(&v38, &unk_1ECF2A740);
    sub_1E325F7A8(&v33, &unk_1ECF2A740);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B7E5C0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_needsFamilyFetch) = 0;
  v1 = objc_opt_self();
  v8 = sub_1E3B8B18C;
  v9 = v0;
  v4 = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v6 = v2;
  v7 = &block_descriptor_64;
  v3 = _Block_copy(&v4);

  [v1 checkGDPRConsentAndPerformRequests_];
  _Block_release(v3);
}

uint64_t sub_1E3B7E690()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_1E3280A90(0, &qword_1EE23AF38);
  v2 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v2 removeObserver_];

  v3 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__isLoading;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v6 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__showHomeSharingLibraryUnavailableAlert);
  (v5)(v6);
  v7 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__isOffline);
  (v5)(v7);
  v8 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__hasExecutedMenuFetchOnce);
  (v5)(v8);
  v9 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__selectedMenuItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34180);
  OUTLINED_FUNCTION_10();
  (*(v10 + 8))(v0 + v9);
  v11 = OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__resolvedMenuItems;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  OUTLINED_FUNCTION_10();
  (*(v12 + 8))(v0 + v11);
  v13 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__isLibraryOnlyCountry);
  (v5)(v13);
  v14 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI20LibDataSourceManager__isLibraryOnlyMode);
  (v5)(v14);
  v15 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_adamIDToCanonicalIDMap + 8);

  return v0;
}

uint64_t sub_1E3B7E8E0()
{
  sub_1E3B7E690();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3B7E938()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v57 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v5 = (*(*v0 + 672))();
  v6 = 0;
  v7 = *(v5 + 16);
  v8 = (v2 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
  for (i = v5 + 32; ; i += 40)
  {
    if (v7 == v6)
    {

      v65 = 0;
      v63 = 0u;
      v64 = 0u;
      goto LABEL_13;
    }

    if (v6 >= *(v5 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    sub_1E327F454(i, &v60);
    v10 = *(&v61 + 1);
    v11 = v62;
    __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
    OUTLINED_FUNCTION_33();
    if (v12(v10, v11) == *v8 && v13 == v8[1])
    {
      break;
    }

    v15 = sub_1E42079A4();

    if (v15)
    {
      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1(&v60);
    ++v6;
  }

LABEL_12:

  v16 = OUTLINED_FUNCTION_48_10();
  sub_1E37DADF4(v16, v17);
LABEL_13:
  v18 = OUTLINED_FUNCTION_127_6();
  sub_1E3B891D8(v18, v19);
  v20 = *(&v61 + 1);
  sub_1E325F7A8(&v60, &unk_1ECF2A740);
  if (!v20 && (sub_1E38BBD0C() & 1) != 0)
  {
    OUTLINED_FUNCTION_30_1();
    v23 = (*(v21 + 696))(v22);
    v24 = 0;
    v25 = *(v23 + 16);
    for (j = v23 + 32; ; j += 40)
    {
      if (v25 == v24)
      {

        v62 = 0;
        v60 = 0u;
        v61 = 0u;
        goto LABEL_22;
      }

      if (v24 >= *(v23 + 16))
      {
        goto LABEL_31;
      }

      sub_1E327F454(j, v58);
      sub_1E327F454(v58, &v60);
      v27 = OUTLINED_FUNCTION_39_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v27);
      type metadata accessor for LibLocalSource();
      if (OUTLINED_FUNCTION_125_4())
      {
        break;
      }

      ++v24;
      __swift_destroy_boxed_opaque_existential_1(v58);
    }

    sub_1E37DADF4(v58, &v60);
LABEL_22:
    v28 = OUTLINED_FUNCTION_48_10();
    sub_1E3B89248(v28, v29);
  }

  sub_1E41A3110();
  v30 = OUTLINED_FUNCTION_78_11();
  v31(v30);

  v32 = sub_1E41FFC94();
  v33 = sub_1E4206814();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_49_0();
    v35 = OUTLINED_FUNCTION_72_0();
    v59 = v35;
    *v34 = 136315394;
    v36 = (*(*v2 + 432))(v35);
    v38 = v37;
    v39 = sub_1E3270FC8(v36, v37, &v59);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    OUTLINED_FUNCTION_5_0();
    v40 = *(&v64 + 1);
    if (*(&v64 + 1))
    {
      v41 = v65;
      v42 = __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      v43 = *(v40 - 8);
      MEMORY[0x1EEE9AC00](v42);
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_42_1();
      v44 = OUTLINED_FUNCTION_101();
      v45(v44);
      v46 = (*(v41 + 24))(v40, v41);
      v48 = v47;
      (*(v43 + 8))(v38, v40);
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    *&v60 = v46;
    *(&v60 + 1) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    v51 = sub_1E4205F84();
    sub_1E3270FC8(v51, v52, &v59);
    OUTLINED_FUNCTION_50();

    *(v34 + 14) = v38;
    OUTLINED_FUNCTION_156_5(&dword_1E323F000, v53, v54, "LibDataSourceManager:: menu %s in source %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    v55 = OUTLINED_FUNCTION_34();
    v56(v55);
  }

  else
  {

    v49 = OUTLINED_FUNCTION_34();
    v50(v49);
  }

  OUTLINED_FUNCTION_127_6();
  OUTLINED_FUNCTION_5_0();
  sub_1E3B891D8(&v63, v57);
  sub_1E325F7A8(&v63, &unk_1ECF2A740);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B7EEDC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 672))();
  v4 = 0;
  v5 = *(v3 + 16);
  v26 = (v1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
  v6 = v3 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v4)
    {

      OUTLINED_FUNCTION_25_2();
      return;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    sub_1E327F454(v6, &v30);
    sub_1E327F454(&v30, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    OUTLINED_FUNCTION_106();
    type metadata accessor for LibFamilySharingSource();
    if (!OUTLINED_FUNCTION_90_0())
    {
      goto LABEL_10;
    }

    __swift_project_boxed_opaque_existential_1(&v30, v31);
    OUTLINED_FUNCTION_33();
    v8 = OUTLINED_FUNCTION_39_0();
    if (v9(v8) == *v26 && v10 == v26[1])
    {
    }

    else
    {
      v12 = sub_1E42079A4();

      if ((v12 & 1) == 0)
      {
LABEL_10:
        __swift_destroy_boxed_opaque_existential_1(&v30);
        goto LABEL_17;
      }
    }

    sub_1E37DADF4(&v30, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E3B72E58(0, *(v7 + 16) + 1, 1);
      v7 = v32;
    }

    v15 = *(v7 + 16);
    v14 = *(v7 + 24);
    if (v15 >= v14 >> 1)
    {
      v25 = OUTLINED_FUNCTION_35(v14);
      sub_1E3B72E58(v25, v15 + 1, 1);
    }

    v16 = v28;
    v17 = v29;
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_5();
    (*(v21 + 16))(v20 - v19);
    v22 = OUTLINED_FUNCTION_39_0();
    sub_1E3B8AB08(v22, v23, v24, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v7 = v32;
LABEL_17:
    v6 += 40;
    ++v4;
  }

  __break(1u);
}

uint64_t sub_1E3B7F194(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v22 = v3;
  while (1)
  {
    if (v3 == v2)
    {

      return v5;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    sub_1E327F454(v4, &v26);
    v6 = v27;
    v7 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, v27);
    v8 = (*(v7 + 16))(v6, v7);
    v10 = sub_1E3277398(&v23, v8, v9);

    if (v10)
    {
      sub_1E37DADF4(&v26, &v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3B72E58(0, *(v5 + 16) + 1, 1);
        v5 = v29;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1E3B72E58((v12 > 1), v13 + 1, 1);
      }

      v14 = v24;
      v15 = v25;
      v16 = __swift_mutable_project_boxed_opaque_existential_1(&v23, v24);
      v17 = MEMORY[0x1EEE9AC00](v16);
      v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19, v17);
      sub_1E3B8AB08(v13, v19, &v29, v14, v15);
      result = __swift_destroy_boxed_opaque_existential_1(&v23);
      v5 = v29;
      v3 = v22;
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    v4 += 40;
    ++v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3B7F3D0(unint64_t a1, unint64_t *a2)
{
  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1E32AE9B0(a1);
  v4 = 0;
  v17 = a1 & 0xC000000000000001;
  v18 = result;
  v16 = a1 & 0xFFFFFFFFFFFFFF8;
  v13 = a1;
  v14 = a1 + 32;
LABEL_2:
  if (v4 == v18)
  {

    return v20;
  }

  if (v17)
  {
    result = MEMORY[0x1E6911E60](v4, v13);
    v5 = result;
  }

  else
  {
    if (v4 >= *(v16 + 16))
    {
      goto LABEL_31;
    }

    v5 = *(v14 + 8 * v4);
  }

  if (__OFADD__(v4++, 1))
  {
    goto LABEL_30;
  }

  v7 = *a2;
  v8 = sub_1E32AE9B0(*a2);

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {

      if (!v19)
      {
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        result = sub_1E4207554();
        goto LABEL_2;
      }

      goto LABEL_27;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v9, v7);
      v10 = result;
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (*(v10 + 72) == *(v5 + 72) && *(v10 + 80) == *(v5 + 80))
    {

LABEL_23:

      if (!v19)
      {

        goto LABEL_2;
      }

LABEL_27:
    }

    v12 = sub_1E42079A4();

    ++v9;
    if (v12)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1E3B7F5DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 456))();
  result = sub_1E32AE9B0(v5);
  v7 = result;
  v8 = 0;
  v9 = v5 & 0xC000000000000001;
  v10 = v5 & 0xFFFFFFFFFFFFFF8;
  v25 = result;
  v26 = v5;
  v11 = v5 + 32;
  v23 = v10;
  v24 = v9;
  v22 = v11;
  while (1)
  {
LABEL_2:
    if (v8 == v7)
    {

      return 0;
    }

    if (v9)
    {
      result = MEMORY[0x1E6911E60](v8, v26);
      v12 = result;
    }

    else
    {
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_35;
      }

      v12 = *(v11 + 8 * v8);
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_36;
    }

    v14 = *(v12 + 16) == a1 && *(v12 + 24) == a2;
    if (v14 || (OUTLINED_FUNCTION_167_3() & 1) != 0)
    {

      return v12;
    }

    OUTLINED_FUNCTION_8();
    v16 = (*(v15 + 288))();
    if (v16)
    {
      break;
    }
  }

  v17 = v16;
  result = sub_1E32AE9B0(v16);
  v18 = result;
  for (i = 0; ; ++i)
  {
    if (v18 == i)
    {

      v9 = v24;
      v7 = v25;
      v11 = v22;
      v10 = v23;
      goto LABEL_2;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v17);
      v20 = result;
    }

    else
    {
      if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v20 = *(v17 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v21 = *(v20 + 16) == a1 && *(v20 + 24) == a2;
    if (v21 || (OUTLINED_FUNCTION_167_3() & 1) != 0)
    {

      return v20;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}
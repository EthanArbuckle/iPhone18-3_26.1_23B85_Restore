uint64_t OUTLINED_FUNCTION_42()
{

  return sub_21796560C();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return __isPlatformVersionAtLeast(2, 26, 4, 0);
}

void OUTLINED_FUNCTION_46(uint64_t *a1@<X8>)
{
  v6 = a1[1];
  v7 = *a1;
  v1 = a1[3];
  v5 = a1[2];
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
}

uint64_t OUTLINED_FUNCTION_50()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return _s15AlbumDetailViewVMa();
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_57(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, os_log_type_t a13)
{

  _os_log_impl(a1, v13, a13, a4, v14, 0x16u);
}

id OUTLINED_FUNCTION_58()
{
  *(v3 + 4) = v1;
  *(v3 + 12) = 2082;
  *(v2 + 144) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_2179692DC();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_72()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

void OUTLINED_FUNCTION_73()
{

  JUMPOUT(0x21CEA8ED0);
}

uint64_t OUTLINED_FUNCTION_74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 16);
}

uint64_t OUTLINED_FUNCTION_75()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 200);
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_217865D20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217865D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217865DCC@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A868, &qword_21796AC08);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A870, &qword_21796AC10);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  sub_2179671BC();
  KeyPath = swift_getKeyPath();
  v19 = &v12[*(v9 + 44)];
  *v19 = KeyPath;
  *(v19 + 1) = 0;
  v19[16] = 0;
  if (a1)
  {
    v20 = a3;
  }

  else
  {
    v20 = a2;
  }

  v21 = swift_getKeyPath();
  sub_217865F54(v12, v17, &qword_27CB8A868, &qword_21796AC08);
  v22 = &v17[*(v14 + 44)];
  *v22 = v21;
  v22[1] = v20;
  sub_217865F54(v17, a4, &qword_27CB8A870, &qword_21796AC10);
}

uint64_t sub_217865F54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_217865FBC()
{
  result = qword_27CB8A878;
  if (!qword_27CB8A878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A870, &qword_21796AC10);
    sub_217866060();
    sub_21786615C(&qword_27CB8A8A0, qword_27CB8A8A8, &qword_21796BDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A878);
  }

  return result;
}

unint64_t sub_217866060()
{
  result = qword_27CB8A880;
  if (!qword_27CB8A880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A868, &qword_21796AC08);
    sub_217866104();
    sub_21786615C(&qword_27CB8A890, &qword_27CB8A898, &unk_21796ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A880);
  }

  return result;
}

unint64_t sub_217866104()
{
  result = qword_27CB8A888;
  if (!qword_27CB8A888)
  {
    sub_2179671AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8A888);
  }

  return result;
}

uint64_t sub_21786615C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_2178661B0()
{
  OUTLINED_FUNCTION_81();
  v64 = v0;
  v66 = v2;
  v67 = v1;
  v4 = v3;
  v70 = v5;
  v7 = v6;
  v71 = sub_217968E3C();
  v8 = OUTLINED_FUNCTION_2(v71);
  v69 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v65 = v12;
  v68 = &v63[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  OUTLINED_FUNCTION_48(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v16);
  v18 = &v63[-v17];
  v19 = *v4;
  v21 = *(v4 + 1);
  v20 = *(v4 + 2);
  v22 = *(v4 + 3);
  OUTLINED_FUNCTION_59_0();
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  *v7 = sub_217966ACC();
  *(v7 + 8) = v23;
  *(v7 + 16) = swift_getKeyPath();
  *(v7 + 56) = 0;
  OUTLINED_FUNCTION_59_0();
  *(v7 + 88) = sub_2178665F4();
  *(v7 + 96) = v24;
  *(v7 + 104) = sub_217866640();
  *(v7 + 112) = v25;
  *(v7 + 120) = sub_217866640();
  *(v7 + 128) = v26;
  OUTLINED_FUNCTION_59_0();
  v27 = _s18PlaylistDetailViewVMa();
  v28 = v27[14];
  v29 = _s5AlertVMa(0);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v29);
  sub_2178666A4(v18);
  v30 = v7 + v27[15];
  *v30 = sub_21786675C();
  *(v30 + 8) = v31;
  *(v30 + 16) = v32 & 1;
  *(v30 + 24) = v33;
  v34 = v7 + v27[22];
  *v34 = 2000;
  *(v34 + 8) = xmmword_21796A2F0;
  *(v34 + 24) = xmmword_21796A300;
  *(v34 + 40) = 0;
  *(v7 + v27[16]) = v64;
  v35 = v7 + v27[18];
  *v35 = v19;
  *(v35 + 8) = v21;
  *(v35 + 16) = v20;
  *(v35 + 24) = v22;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A588, &unk_21796ACE0);
  v37 = swift_allocBox();
  v39 = v38;
  v40 = v38 + *(v36 + 48);
  (*(v69 + 16))(v38, v70, v71);
  v41 = *MEMORY[0x277D2A440];
  v42 = sub_21796595C();
  OUTLINED_FUNCTION_3(v42);
  (*(v43 + 104))(v39, v41);
  *v40 = v19;
  *(v40 + 8) = v21;
  *(v40 + 16) = v20;
  *(v40 + 24) = v22;
  v44 = v37 | 0x2000000000000000;
  v45 = v27[17];
  *(v7 + v45) = v37 | 0x2000000000000000;
  v46 = v7 + v27[19];
  *v46 = 0;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  *(v46 + 24) = v37 | 0x2000000000000000;
  v47 = *(v7 + v45);
  v48 = v7 + v27[20];
  *v48 = 1;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  *(v48 + 24) = v47;

  sub_217863EC4(v22);
  sub_217863EC4(v44);
  sub_217863EC4(v47);
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  OUTLINED_FUNCTION_87();
  v49 = sub_21796560C();
  v50 = (v7 + v27[21]);
  *v50 = v49;
  v50[1] = v51;
  v52 = v70;
  sub_217938214();
  v54 = v66 & 1;
  if (v67)
  {
    v54 = 2;
  }

  if (v53)
  {
    v55 = v54;
  }

  else
  {
    v55 = 2;
  }

  v56 = v68;
  v57 = v69 + 32;
  v58 = *(v69 + 32);
  v59 = v71;
  v58(v68, v52, v71);
  v60 = (*(v57 + 48) + 16) & ~*(v57 + 48);
  v61 = v60 + v65;
  v62 = swift_allocObject();
  v58((v62 + v60), v56, v59);
  *(v62 + v61) = v55;
  *(v7 + 64) = sub_217873498;
  *(v7 + 72) = v62;
  *(v7 + 80) = 0;
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178665F4()
{
  _s18PlaylistDetailViewV13LoadingReasonOMa();
  sub_21796944C();
  sub_217967C0C();
  return v1;
}

uint64_t sub_217866640()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A790, &qword_21796A968);
  sub_217967C0C();
  return v1;
}

uint64_t sub_2178666A4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_51_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v7);
  sub_2178745BC();
  sub_217967C0C();
  return sub_2178653BC(a1, &qword_27CB8A578, &qword_21796A750);
}

uint64_t sub_21786675C()
{
  _s18PlaylistDetailViewV11SearchStateVMa();
  sub_217967C0C();
  return v1;
}

void sub_2178667AC(uint64_t a1)
{
  v2 = sub_217968E3C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v6 = _s23PlaylistDetailViewModelCMa(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_217903324();
}

uint64_t sub_217866890()
{
  OUTLINED_FUNCTION_91();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A798, &qword_21796A970);
  sub_217967C1C();
  return v1;
}

uint64_t sub_2178668DC()
{
  OUTLINED_FUNCTION_91();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A798, &qword_21796A970);
  return sub_217967C2C();
}

uint64_t sub_21786692C()
{
  OUTLINED_FUNCTION_89();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A798, &qword_21796A970);
  sub_217967C1C();
  return v1;
}

uint64_t sub_217866978()
{
  OUTLINED_FUNCTION_89();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A798, &qword_21796A970);
  return sub_217967C2C();
}

uint64_t sub_2178669C8()
{
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A798, &qword_21796A970);
  sub_217967C3C();
  return v2;
}

uint64_t sub_217866A24(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_72_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_48(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v8);
  v9 = *(a2 + 56);
  sub_2178745BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  sub_217967C2C();
  v10 = OUTLINED_FUNCTION_51_0();
  return sub_2178653BC(v10, v11, &qword_21796A750);
}

uint64_t sub_217866AEC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 56);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60);
  return a2(v4);
}

uint64_t sub_217866B40(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v7 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 16);
  v10 = v2[3];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  _s18PlaylistDetailViewV11SearchStateVMa();
  sub_217967C4C();
  sub_217967C1C();
  return v6;
}

double sub_217866BB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 60));
  v12 = *v4;
  v13 = v4[1];
  v14 = *(v4 + 16);
  v15 = v4[3];
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  _s18PlaylistDetailViewV11SearchStateVMa();
  sub_217967C4C();
  sub_217967C3C();
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  return result;
}

BOOL sub_217866C34(uint64_t a1)
{
  v3 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  _s23PlaylistDetailViewModelCMa(0);
  sub_217874614(&qword_27CB8AA38, _s23PlaylistDetailViewModelCMa);
  sub_2179666FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_217874970(v6, _s23PlaylistDetailViewModelC12LoadingStateOMa);
  if (EnumCaseMultiPayload)
  {
    return 0;
  }

  v12 = *(v1 + 96);
  v17 = *(v1 + 88);
  v18 = v12;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  _s18PlaylistDetailViewV13LoadingReasonOMa();
  sub_21796944C();
  sub_217967C4C();
  sub_217967C1C();
  return v16 != 2 && (v16 & 1) == 0;
}

void sub_217866DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_81();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v139 = v24;
  v135 = sub_21796852C();
  v25 = OUTLINED_FUNCTION_2(v135);
  v132 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_0();
  v136 = v29;
  OUTLINED_FUNCTION_46_0();
  v131 = sub_2179688CC();
  v30 = OUTLINED_FUNCTION_2(v131);
  v133 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_0();
  v137 = v34;
  OUTLINED_FUNCTION_46_0();
  v142 = sub_217968D8C();
  v35 = OUTLINED_FUNCTION_2(v142);
  v138 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_0();
  v141 = v39;
  OUTLINED_FUNCTION_46_0();
  v153 = sub_217968DFC();
  v40 = OUTLINED_FUNCTION_2(v153);
  v145 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4_0();
  v152 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB20, &unk_21796B100);
  OUTLINED_FUNCTION_3(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v48);
  v50 = &v125 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB10, &unk_21796B0A0);
  OUTLINED_FUNCTION_48(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v54);
  v56 = &v125 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_2(v57);
  v59 = v58;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v62);
  v64 = &v125 - v63;
  v65 = *(v23 + 64);
  v66 = *(v23 + 72);
  v140 = v23;
  v67 = *(v23 + 80);
  _s23PlaylistDetailViewModelCMa(0);
  OUTLINED_FUNCTION_0_0();
  sub_217874614(v68, v69);
  OUTLINED_FUNCTION_72_0();
  v70 = v57;
  sub_2179666FC();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_72_0();
  sub_21796657C();

  if (__swift_getEnumTagSinglePayload(v56, 1, v57) != 1)
  {
    v71 = *(v59 + 32);
    v72 = OUTLINED_FUNCTION_47_0();
    v73(v72);
    (*(v59 + 16))(v50, v64, v57);
    v74 = *(v45 + 36);
    OUTLINED_FUNCTION_36_0();
    v78 = sub_217864B2C(v75, v76, v77);
    v151 = v74;
    v126 = v64;
    v150 = v78;
    sub_2179692AC();
    v127 = 0;
    v79 = v145++;
    v146 = (v79 + 2);
    v144 = v138 + 88;
    v143 = *MEMORY[0x277D2B410];
    v130 = v138 + 8;
    v138 += 96;
    HIDWORD(v134) = *MEMORY[0x277D2B428];
    v129 = v133 + 32;
    v128 = v133 + 8;
    v133 = v132 + 32;
    v132 += 8;
    v80 = v137;
    v82 = v141;
    v81 = v142;
    v148 = v59;
    v149 = v70;
    for (i = v50; ; v50 = i)
    {
      while (1)
      {
        sub_2179692EC();
        if (*&v50[v151] == v154)
        {
          sub_2178653BC(v50, &qword_27CB8AB20, &unk_21796B100);
          (*(v59 + 8))(v126, v70);
          goto LABEL_17;
        }

        v83 = sub_21796934C();
        v84 = v152;
        v85 = v153;
        (*v146)(v152);
        v83(&v154, 0);
        sub_2179692FC();
        sub_217968D9C();
        (*v145)(v84, v85);
        v86 = OUTLINED_FUNCTION_43_0();
        v88 = v87(v86);
        if (v88 == v143)
        {
          break;
        }

        if (v88 == HIDWORD(v134))
        {
          v107 = OUTLINED_FUNCTION_43_0();
          v108(v107);
          OUTLINED_FUNCTION_38_0(&a11);
          v109(v80, v82, v131);
          v111 = *v140;
          v110 = v140[1];
          OUTLINED_FUNCTION_97(v139);
          OUTLINED_FUNCTION_23();
          swift_getWitnessTable();
          OUTLINED_FUNCTION_95();
          OUTLINED_FUNCTION_15_0();
          v113 = sub_217874614(&qword_27CB8A830, v112);
          v114 = OUTLINED_FUNCTION_73_0();
          sub_2178E0E64(v114, v115, v113, v116, v117, v118, v119, v120, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
          OUTLINED_FUNCTION_96();
          v50 = i;
          if (v85)
          {
            OUTLINED_FUNCTION_95();
            OUTLINED_FUNCTION_73_0();
            sub_2178E1804();
            OUTLINED_FUNCTION_96();
          }

          OUTLINED_FUNCTION_38_0(&a10);
          v121 = OUTLINED_FUNCTION_73_0();
          v122(v121);
          v82 = v141;
          v81 = v142;
          v59 = v148;
          v70 = v149;
        }

        else
        {
          OUTLINED_FUNCTION_38_0(&a12);
          v124(v82, v81);
LABEL_14:
          v59 = v148;
          v70 = v149;
          v50 = i;
        }
      }

      v89 = OUTLINED_FUNCTION_43_0();
      v90(v89);
      OUTLINED_FUNCTION_38_0(&a15);
      v91 = v136;
      v92 = OUTLINED_FUNCTION_49();
      v93 = v135;
      v94(v92);
      v95 = *v140;
      v96 = v140[1];
      OUTLINED_FUNCTION_97(v139);
      OUTLINED_FUNCTION_23();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_72_0();
      sub_217966A9C();
      OUTLINED_FUNCTION_14_0();
      sub_217874614(&qword_27CB8A828, v97);
      OUTLINED_FUNCTION_59_0();
      sub_2178E0E64(v98, v99, v100, v101, v102, v103, v104, v105, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
      OUTLINED_FUNCTION_96();
      if ((v85 & 1) == 0)
      {
        OUTLINED_FUNCTION_38_0(&a14);
        v123(v91, v93);
        v80 = v137;
        v82 = v141;
        v81 = v142;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_72_0();
      sub_217966A9C();
      OUTLINED_FUNCTION_59_0();
      sub_2178E1804();
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_38_0(&a14);
      v106(v91, v93);
      v80 = v137;
      v82 = v141;
      v81 = v142;
      v59 = v148;
      v70 = v149;
    }
  }

  sub_2178653BC(v56, &qword_27CB8AB10, &unk_21796B0A0);
LABEL_17:
  OUTLINED_FUNCTION_80();
}

uint64_t sub_217867688()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  _s23PlaylistDetailViewModelCMa(0);
  OUTLINED_FUNCTION_0_0();
  sub_217874614(v4, v5);
  sub_2179666FC();
  v6 = sub_217903B40();
  LOBYTE(v2) = v7;

  if (v2)
  {
    return 0;
  }

  if (qword_27CB8A370 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D83B88];
  *(v9 + 16) = xmmword_21796A340;
  v11 = MEMORY[0x277D83C10];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = v6;

  OUTLINED_FUNCTION_47_0();
  sub_21796560C();

  OUTLINED_FUNCTION_63_0();
  sub_217968F3C();

  return sub_21796903C();
}

void sub_217867858()
{
  OUTLINED_FUNCTION_81();
  v289 = v0;
  v290 = v1;
  v2 = v1;
  v272 = v3;
  v279 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v4 = OUTLINED_FUNCTION_3(v279);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v271 = v7;
  OUTLINED_FUNCTION_46_0();
  v8 = sub_217966FEC();
  v9 = OUTLINED_FUNCTION_2(v8);
  v266 = v10;
  v267 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v265 = v13;
  OUTLINED_FUNCTION_46_0();
  v14 = sub_217966FFC();
  v15 = OUTLINED_FUNCTION_2(v14);
  v269 = v16;
  v270 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v268 = v19;
  OUTLINED_FUNCTION_46_0();
  v278 = sub_21796923C();
  v20 = OUTLINED_FUNCTION_2(v278);
  v282 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v277 = v24;
  v288 = *(v2 - 8);
  v25 = *(v288 + 64);
  MEMORY[0x28223BE20](v26);
  v286 = v27;
  v287 = &v228 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_71_0();
  v28 = sub_217968E3C();
  v29 = *(v2 + 16);
  OUTLINED_FUNCTION_3_0();
  v32 = sub_217874614(v30, v31);
  v33 = *(v2 + 24);
  *&v319 = v28;
  *(&v319 + 1) = v29;
  v292 = v29;
  *&v320 = v32;
  *(&v320 + 1) = v33;
  OUTLINED_FUNCTION_85();
  v34 = _s19ContainerHeaderCellVMa();
  OUTLINED_FUNCTION_27_0();
  WitnessTable = swift_getWitnessTable();
  *&v319 = v34;
  *(&v319 + 1) = WitnessTable;
  OUTLINED_FUNCTION_26_0();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_93();
  v36 = sub_21796732C();
  OUTLINED_FUNCTION_41();
  v284 = v36;
  sub_21796698C();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  v37 = sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  OUTLINED_FUNCTION_41();
  sub_21796698C();
  OUTLINED_FUNCTION_93();
  _s20FailureAlertModifierVMa();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  *&v324 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAD0, &unk_21796AF90);
  OUTLINED_FUNCTION_93();
  _s17PlaylistEntryCellVMa();
  v38 = sub_21796698C();
  OUTLINED_FUNCTION_23_0();
  v322 = swift_getWitnessTable();
  v323 = MEMORY[0x277CE0790];
  OUTLINED_FUNCTION_1();
  v285 = v39;
  v40 = swift_getWitnessTable();
  *&v319 = v38;
  *(&v319 + 1) = v40;
  OUTLINED_FUNCTION_85();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  v41 = sub_217967E9C();
  v42 = sub_217873B84();
  *&v319 = v37;
  *(&v319 + 1) = MEMORY[0x277D83B88];
  *&v320 = v41;
  *(&v320 + 1) = v42;
  v321 = MEMORY[0x277D83B98];
  OUTLINED_FUNCTION_85();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  *(&v324 + 1) = sub_21796944C();
  *&v325 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAF0, &qword_21796AFA8);
  v43 = sub_217968AFC();
  OUTLINED_FUNCTION_20_0();
  v46 = sub_217874614(v44, v45);
  *&v319 = v43;
  *(&v319 + 1) = v292;
  *&v320 = v46;
  *(&v320 + 1) = v33;
  OUTLINED_FUNCTION_85();
  _s14ContainerShelfVMa();
  OUTLINED_FUNCTION_8();
  *(&v325 + 1) = sub_21796944C();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_8();
  v47 = sub_217967E9C();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  OUTLINED_FUNCTION_48_0();
  sub_21796698C();
  OUTLINED_FUNCTION_93();
  v48 = sub_2179669FC();
  OUTLINED_FUNCTION_18_0();
  v317 = swift_getWitnessTable();
  v318 = MEMORY[0x277CE0880];
  v49 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17_0();
  v52 = sub_217874614(v50, v51);
  *&v319 = v47;
  *(&v319 + 1) = v48;
  *&v320 = v49;
  *(&v320 + 1) = v52;
  swift_getOpaqueTypeMetadata2();
  sub_217966F9C();
  *&v319 = v47;
  *(&v319 + 1) = v48;
  *&v320 = v49;
  *(&v320 + 1) = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v315 = MEMORY[0x277CE1410];
  v316 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_35_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v54 = sub_21796686C();
  v55 = sub_21796698C();
  OUTLINED_FUNCTION_2(v55);
  v283 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_45_0();
  v234 = v60;
  OUTLINED_FUNCTION_71_0();
  v291 = v33;
  _s18NavigationBarStyleVMa();
  v61 = sub_21796698C();
  OUTLINED_FUNCTION_2(v61);
  v240 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_45_0();
  v239 = v66;
  OUTLINED_FUNCTION_19();
  v281 = v54;
  v67 = swift_getWitnessTable();
  OUTLINED_FUNCTION_32_0();
  v70 = sub_217874614(v68, v69);
  v228 = v67;
  v313 = v67;
  v314 = v70;
  v284 = v55;
  v71 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17();
  v72 = swift_getWitnessTable();
  v229 = v71;
  v311 = v71;
  v312 = v72;
  v73 = swift_getWitnessTable();
  *&v319 = v61;
  *(&v319 + 1) = v73;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(OpaqueTypeMetadata2);
  v237 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_45_0();
  v236 = v79;
  OUTLINED_FUNCTION_71_0();
  done = _s15DoneToolbarItemVMa();
  OUTLINED_FUNCTION_16();
  v81 = swift_getWitnessTable();
  *&v319 = done;
  *(&v319 + 1) = v81;
  OUTLINED_FUNCTION_29_0();
  v82 = swift_getOpaqueTypeMetadata2();
  v235 = v61;
  *&v319 = v61;
  *(&v319 + 1) = v73;
  v233 = v73;
  v83 = OUTLINED_FUNCTION_56_0();
  *&v319 = done;
  *(&v319 + 1) = v81;
  v84 = swift_getOpaqueTypeConformance2();
  *&v319 = OpaqueTypeMetadata2;
  *(&v319 + 1) = v82;
  *&v320 = v83;
  *(&v320 + 1) = v84;
  v85 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(v85);
  v245 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_45_0();
  v280 = v90;
  v238 = OpaqueTypeMetadata2;
  *&v319 = OpaqueTypeMetadata2;
  *(&v319 + 1) = v82;
  v231 = v82;
  v232 = v83;
  *&v320 = v83;
  *(&v320 + 1) = v84;
  v230 = v84;
  v91 = OUTLINED_FUNCTION_56_0();
  v92 = sub_217873C34();
  v93 = MEMORY[0x277D837D0];
  *&v319 = v85;
  *(&v319 + 1) = MEMORY[0x277D837D0];
  *&v320 = v91;
  *(&v320 + 1) = v92;
  v94 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(v94);
  v248 = v95;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_45_0();
  v274 = v99;
  OUTLINED_FUNCTION_71_0();
  v100 = _s18PlaylistDetailViewV11SearchStateVMa();
  OUTLINED_FUNCTION_28_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v273 = v100;
  v244 = v101;
  sub_217966DDC();
  v249 = v94;
  v102 = sub_21796698C();
  OUTLINED_FUNCTION_2(v102);
  v254 = v103;
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_45_0();
  v275 = v107;
  v246 = v85;
  *&v319 = v85;
  *(&v319 + 1) = v93;
  v243 = v91;
  *&v320 = v91;
  *(&v320 + 1) = v92;
  v241 = v92;
  v108 = OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_25_0();
  v109 = swift_getWitnessTable();
  v242 = v108;
  v309 = v108;
  v310 = v109;
  v110 = swift_getWitnessTable();
  OUTLINED_FUNCTION_24_0();
  v113 = sub_217874614(v111, v112);
  v114 = v279;
  *&v319 = v102;
  *(&v319 + 1) = v279;
  *&v320 = v110;
  *(&v320 + 1) = v113;
  v115 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(v115);
  v261 = v116;
  v118 = *(v117 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_45_0();
  v276 = v120;
  OUTLINED_FUNCTION_48_0();
  v121 = sub_21796919C();
  v257 = v102;
  *&v319 = v102;
  *(&v319 + 1) = v114;
  v250 = v110;
  *&v320 = v110;
  *(&v320 + 1) = v113;
  v247 = v113;
  v122 = OUTLINED_FUNCTION_56_0();
  v308 = *(*(v291 + 16) + 8);
  OUTLINED_FUNCTION_21_0();
  v123 = swift_getWitnessTable();
  v264 = v115;
  *&v319 = v115;
  *(&v319 + 1) = v121;
  v251 = v121;
  v252 = v123;
  v259 = v122;
  *&v320 = v122;
  *(&v320 + 1) = v123;
  v124 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(v124);
  v258 = v125;
  v127 = *(v126 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_45_0();
  v253 = v129;
  v260 = v130;
  v131 = sub_21796698C();
  v132 = OUTLINED_FUNCTION_2(v131);
  v262 = v133;
  v263 = v132;
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_88();
  v255 = v136;
  MEMORY[0x28223BE20](v137);
  v256 = &v228 - v138;
  sub_2178690C4(v290, &v319);
  v324 = v319;
  if (qword_27CB8A390 != -1)
  {
    swift_once();
  }

  v305 = xmmword_27CB978C0;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0xD000000000000012, 0x800000021796AD50);

  v139 = v234;
  OUTLINED_FUNCTION_59_0();
  sub_2178ED854(v140, v141, v142);

  v143 = v284;
  v144 = v292;
  v145 = v229;
  v146 = j__OUTLINED_FUNCTION_59();
  v147 = v239;
  v148 = v144;
  sub_21792D7FC(v146 & 1, v144, v143, v144, v145);
  (*(v283 + 8))(v139, v143);
  v149 = v287;
  v150 = v288;
  v284 = *(v288 + 16);
  v281 = v288 + 16;
  v151 = v290;
  v284(v287, v289, v290);
  sub_21796920C();
  v152 = sub_2179691FC();
  v283 = *(v150 + 80);
  v153 = (v283 + 48) & ~v283;
  v154 = swift_allocObject();
  v155 = MEMORY[0x277D85700];
  v154[2] = v152;
  v154[3] = v155;
  v154[4] = v148;
  v154[5] = v291;
  v156 = *(v150 + 32);
  v288 = v150 + 32;
  v285 = v156;
  v157 = v154 + v153;
  v158 = v151;
  v156(v157, v149, v151);
  v159 = v277;
  v160 = v235;
  v161 = v233;
  sub_21785BFCC();
  v162 = v236;
  sub_21785C01C(0, 0, v159, 0xD000000000000038, 0x8000000217973F80, 127, &unk_21796AFB8, v154, v160, v161);
  v163 = *(v282 + 8);
  v282 += 8;
  v234 = v163;
  v163(v159, v278);
  v164 = (*(v240 + 8))(v147, v160);
  MEMORY[0x28223BE20](v164);
  swift_checkMetadataState();
  v165 = v238;
  sub_217967A1C();
  (*(v237 + 8))(v162, v165);
  v166 = v289;
  sub_217866BB0(v158, &v324);
  MEMORY[0x28223BE20](v167);
  swift_getKeyPath();
  v305 = v324;
  v306 = v325;
  v307 = v326;
  v168 = v273;
  sub_217967D5C();
  OUTLINED_FUNCTION_51_0();
  sub_217967D2C();

  v238 = v302;
  v239 = v301;
  v240 = v303;
  v237 = v304;
  v332[0] = v324;
  sub_217873D74(v332);

  v330 = v325;
  v331 = v326;
  v169 = v168;
  OUTLINED_FUNCTION_10(v168);
  v171 = *(v170 + 8);
  v171(&v330, v169);
  sub_217866BB0(v290, &v319);
  MEMORY[0x28223BE20](v172);
  swift_getKeyPath();
  v298 = v319;
  v299 = v320;
  v300 = v321;
  sub_217967D2C();

  LODWORD(v236) = v297;
  v329 = v319;
  sub_217873D74(&v329);

  v327 = v320;
  v328 = v321;
  v171(&v327, v169);
  v173 = v265;
  sub_217966FDC();
  v174 = v268;
  sub_217966FBC();
  (*(v266 + 8))(v173, v267);
  v175 = (v166 + *(v290 + 84));
  v176 = v175[1];
  v295 = *v175;
  v296 = v176;

  v177 = v246;
  OUTLINED_FUNCTION_51_0();
  v178 = v280;
  sub_2179676CC();

  (*(v269 + 8))(v174, v270);
  (*(v245 + 8))(v178, v177);
  v179 = v289;
  v180 = v290;
  *&v305 = sub_217866B40(v290);
  *(&v305 + 1) = v181;
  LOBYTE(v306) = v182 & 1;
  v183 = v287;
  v284(v287, v179, v180);
  v280 = (v283 + 32) & ~v283;
  v184 = swift_allocObject();
  v185 = OUTLINED_FUNCTION_82(v184);
  v285(v185, v183, v180);
  v186 = v277;
  sub_21796921C();
  sub_21796797C();

  v234(v186, v278);

  v187 = *(v248 + 8);
  v188 = OUTLINED_FUNCTION_57_0();
  v189(v188);
  v190 = v289;
  v191 = *(v289 + 64);
  v192 = *(v289 + 72);
  v193 = *(v289 + 80);
  _s23PlaylistDetailViewModelCMa(0);
  OUTLINED_FUNCTION_0_0();
  sub_217874614(v194, v195);
  OUTLINED_FUNCTION_47_0();
  sub_2179666FC();
  swift_getKeyPath();
  swift_getKeyPath();
  v196 = v271;
  OUTLINED_FUNCTION_47_0();
  sub_21796657C();

  v197 = v287;
  v284(v287, v190, v180);
  v198 = v280;
  v199 = swift_allocObject();
  v201 = v291;
  v200 = v292;
  *(v199 + 16) = v292;
  *(v199 + 24) = v201;
  v285(v199 + v198, v197, v180);
  v202 = v257;
  sub_217862E84();
  v203 = v275;
  sub_217967A6C();

  OUTLINED_FUNCTION_34_0();
  sub_217874970(v196, v204);
  (*(v254 + 8))(v203, v202);
  v205 = v190;
  v206 = *v190;
  v207 = v190[1];
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_47_0();
  sub_217966A9C();
  sub_2178D759C();
  v209 = v208;

  *&v305 = v209;
  v210 = v287;
  v284(v287, v205, v290);
  v211 = swift_allocObject();
  *(v211 + 16) = v200;
  *(v211 + 24) = v201;
  OUTLINED_FUNCTION_92();
  v212();
  v213 = swift_checkMetadataState();
  v214 = v264;
  v215 = v259;
  v216 = v252;
  sub_217862E84();
  v217 = v253;
  v218 = v276;
  sub_217967A6C();

  (*(v261 + 8))(v218, v214);
  v284(v210, v289, v290);
  v219 = swift_allocObject();
  OUTLINED_FUNCTION_82(v219);
  OUTLINED_FUNCTION_92();
  v220();
  *&v305 = v214;
  *(&v305 + 1) = v213;
  *&v306 = v215;
  *(&v306 + 1) = v216;
  v221 = swift_getOpaqueTypeConformance2();
  v222 = v255;
  v223 = v260;
  sub_2178D0790(sub_217873EC4, v209, v260, v221);

  (*(v258 + 8))(v217, v223);
  v224 = sub_217864644();
  v293 = v221;
  v294 = v224;
  OUTLINED_FUNCTION_1();
  v225 = v263;
  swift_getWitnessTable();
  v226 = v256;
  sub_2179560E4(v222, v225);
  v227 = *(v262 + 8);
  v227(v222, v225);
  sub_2179560E4(v226, v225);
  v227(v226, v225);
  OUTLINED_FUNCTION_80();
}

uint64_t sub_2178690C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v28[1] = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  (*(v3 + 32))(v6 + v5, v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = sub_217968E3C();
  v10 = sub_217874614(&qword_27CB8AAC8, MEMORY[0x277CD8608]);
  v34 = v9;
  v35 = v7;
  v36 = v10;
  v37 = v8;
  v11 = _s19ContainerHeaderCellVMa();
  WitnessTable = swift_getWitnessTable();
  v34 = v11;
  v35 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  sub_21796698C();
  _s20FailureAlertModifierVMa();
  sub_21796698C();
  v41 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAD0, &unk_21796AF90);
  _s17PlaylistEntryCellVMa();
  v14 = sub_21796698C();
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x277CE0790];
  v15 = swift_getWitnessTable();
  v34 = v14;
  v35 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  swift_getTupleTypeMetadata2();
  v16 = sub_217967E9C();
  v17 = sub_217873B84();
  v34 = v13;
  v35 = MEMORY[0x277D83B88];
  v36 = v16;
  v37 = v17;
  v38 = MEMORY[0x277D83B98];
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v42 = sub_21796944C();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAF0, &qword_21796AFA8);
  v18 = sub_217968AFC();
  v19 = sub_217874614(&qword_27CB8AAF8, MEMORY[0x277CD8428]);
  v34 = v18;
  v35 = v7;
  v36 = v19;
  v37 = v8;
  _s14ContainerShelfVMa();
  v44 = sub_21796944C();
  swift_getTupleTypeMetadata();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_21796665C();
  v20 = sub_21796698C();
  v21 = sub_2179669FC();
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x277CE0880];
  v22 = swift_getWitnessTable();
  v23 = sub_217874614(&qword_27CB8A708, MEMORY[0x277CDDB18]);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  swift_getOpaqueTypeMetadata2();
  sub_217966F9C();
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x277CE1410];
  v31 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  sub_21796666C();
  swift_getWitnessTable();
  result = sub_21796685C();
  v26 = v29;
  *v29 = result;
  v26[1] = v27;
  return result;
}

uint64_t sub_217869728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a3;
  v4 = sub_217968E3C();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = _s18PlaylistDetailViewVMa();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  sub_21796920C();
  v3[15] = sub_2179691FC();
  v11 = sub_2179691BC();
  v3[16] = v11;
  v3[17] = v10;

  return MEMORY[0x2822009F8](sub_217869888, v11, v10);
}

uint64_t sub_217869888()
{
  OUTLINED_FUNCTION_84();
  v1 = v0[8];
  v3 = *(v1 + 64);
  v2 = *(v1 + 72);
  v4 = *(v1 + 80);
  v0[18] = _s23PlaylistDetailViewModelCMa(0);
  OUTLINED_FUNCTION_0_0();
  v0[19] = sub_217874614(v5, v6);
  v0[20] = sub_2179666FC();
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_21786997C;

  return sub_217903C38();
}

uint64_t sub_21786997C()
{
  OUTLINED_FUNCTION_62();
  v3 = *(*v1 + 168);
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v2;
  v2[22] = v0;

  if (v0)
  {
    v5 = v2[16];
    v6 = v2[17];
    v7 = sub_217869B98;
  }

  else
  {
    v8 = v2[20];

    v5 = v2[16];
    v6 = v2[17];
    v7 = sub_217869A8C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_217869A8C()
{
  v1 = v0[15];
  v2 = v0[8];

  sub_217956100();
  if (v0[5])
  {
    v3 = v0[12];
    v4 = v0[8];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v11 = *(v4 + *(v3 + 68));
    v6 = *(v5 + 8);
    sub_217863EC4(v11);
    OUTLINED_FUNCTION_45();
    v6();
    sub_2178643E0(v11);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    sub_2178653BC((v0 + 2), &qword_27CB8A630, qword_21796A7B0);
  }

  v7 = v0[14];
  v8 = v0[11];

  OUTLINED_FUNCTION_39();

  return v9();
}

uint64_t sub_217869B98()
{
  v55 = v0;
  v1 = v0[20];
  v2 = v0[15];

  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31();
  }

  v3 = v0[22];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[8];
  v8 = sub_21796653C();
  __swift_project_value_buffer(v8, qword_27CB97B00);
  v9 = *(v5 + 16);
  v10 = OUTLINED_FUNCTION_57_0();
  v11(v10);
  v12 = v3;
  v13 = sub_21796651C();
  v14 = sub_21796937C();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[22];
  if (v15)
  {
    v17 = v0[18];
    v18 = v0[19];
    v19 = v0[13];
    v20 = v0[14];
    v50 = v0[22];
    v53 = v14;
    v22 = v0[10];
    v21 = v0[11];
    v48 = v0[12];
    v49 = v0[9];
    v23 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v54 = v51;
    OUTLINED_FUNCTION_77(4.8752e-34);
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_74_0();

    (*(v19 + 8))(v20, v48);
    OUTLINED_FUNCTION_3_0();
    sub_217874614(v24, v25);
    v26 = v49;
    sub_21796966C();
    v27 = *(v22 + 8);
    v28 = OUTLINED_FUNCTION_47_0();
    v29(v28);
    v30 = OUTLINED_FUNCTION_90();
    sub_217957F4C(v30, v31, v32);

    OUTLINED_FUNCTION_83();
    v0[7] = v49;
    v33 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v34 = sub_217968F8C();
    v36 = sub_217957F4C(v34, v35, &v54);

    *(v23 + 14) = v36;
    OUTLINED_FUNCTION_75_0(&dword_217846000, v37, v38, "Failed to load additional content for %{public}s. Error = %{public}s", v39, v40, v41, v42, v47, v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
  }

  v43 = v0[14];
  v44 = v0[11];

  OUTLINED_FUNCTION_39();

  return v45();
}

uint64_t sub_217869E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_217968E3C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = _s18PlaylistDetailViewVMa();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  sub_21796920C();
  v3[14] = sub_2179691FC();
  v11 = sub_2179691BC();
  v3[15] = v11;
  v3[16] = v10;

  return MEMORY[0x2822009F8](sub_217869FEC, v11, v10);
}

uint64_t sub_217869FEC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  sub_217866B40(v1);
  v4 = v3;
  sub_217866B40(v1);
  LOBYTE(v2) = v5;

  if (v2)
  {
    v6 = *(v0 + 40);
    v7 = *(v6 + 96);
    *(v0 + 16) = *(v6 + 88);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    *(v0 + 24) = v7;
    *(v0 + 184) = 1;
    _s18PlaylistDetailViewV13LoadingReasonOMa();
    OUTLINED_FUNCTION_8();
    sub_21796944C();
    sub_217967C4C();
    sub_217967C2C();
    v10 = *(v6 + 64);
    v11 = *(v6 + 72);
    v12 = *(v6 + 80);
    _s23PlaylistDetailViewModelCMa(0);
    OUTLINED_FUNCTION_0_0();
    sub_217874614(v13, v14);
    OUTLINED_FUNCTION_57_0();
    sub_2179666FC();
    sub_21790615C();
  }

  else
  {

    v4 = 0xE000000000000000;
  }

  *(v0 + 136) = v4;
  v15 = *(v0 + 40);
  v16 = *(v15 + 64);
  v17 = *(v15 + 72);
  v18 = *(v15 + 80);
  *(v0 + 144) = _s23PlaylistDetailViewModelCMa(0);
  OUTLINED_FUNCTION_0_0();
  *(v0 + 152) = sub_217874614(v19, v20);
  OUTLINED_FUNCTION_57_0();
  *(v0 + 160) = sub_2179666FC();
  v21 = swift_task_alloc();
  *(v0 + 168) = v21;
  *v21 = v0;
  v21[1] = sub_21786A1E4;

  return sub_217907424();
}

uint64_t sub_21786A1E4()
{
  OUTLINED_FUNCTION_62();
  v3 = *(*v1 + 168);
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v2;
  v2[22] = v0;

  if (v0)
  {
    v5 = v2[15];
    v6 = v2[16];
    v7 = sub_21786A37C;
  }

  else
  {
    v8 = v2[20];
    v9 = v2[17];

    v5 = v2[15];
    v6 = v2[16];
    v7 = sub_21786A300;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21786A300()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[5];

  sub_21786A678(v2);
  v4 = v0[13];
  v5 = v0[10];

  OUTLINED_FUNCTION_39();

  return v6();
}

uint64_t sub_21786A37C()
{
  v56 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];

  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31();
  }

  v4 = v0[22];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v8 = v0[5];
  v9 = sub_21796653C();
  __swift_project_value_buffer(v9, qword_27CB97B00);
  v10 = *(v6 + 16);
  v11 = OUTLINED_FUNCTION_57_0();
  v12(v11);
  v13 = v4;
  v14 = sub_21796651C();
  v15 = sub_21796937C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[22];
  if (v16)
  {
    v18 = v0[18];
    v19 = v0[19];
    v20 = v0[12];
    v21 = v0[13];
    v51 = v0[22];
    v54 = v15;
    v23 = v0[9];
    v22 = v0[10];
    v49 = v0[11];
    v50 = v0[8];
    v24 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    OUTLINED_FUNCTION_77(4.8752e-34);
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_74_0();

    (*(v20 + 8))(v21, v49);
    OUTLINED_FUNCTION_3_0();
    sub_217874614(v25, v26);
    v27 = v50;
    sub_21796966C();
    v28 = *(v23 + 8);
    v29 = OUTLINED_FUNCTION_47_0();
    v30(v29);
    v31 = OUTLINED_FUNCTION_90();
    sub_217957F4C(v31, v32, v33);

    OUTLINED_FUNCTION_83();
    v0[4] = v50;
    v34 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v35 = sub_217968F8C();
    v37 = sub_217957F4C(v35, v36, &v55);

    *(v24 + 14) = v37;
    OUTLINED_FUNCTION_75_0(&dword_217846000, v38, v39, "Failed to load filter playlist entries for %{public}s. Error = %{public}s", v40, v41, v42, v43, v48, v49, v50, v51, v52, v53, v54);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
  }

  v44 = v0[13];
  v45 = v0[10];

  OUTLINED_FUNCTION_39();

  return v46();
}

uint64_t sub_21786AA30(uint64_t a1)
{
  v2 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  _s23PlaylistDetailViewModelCMa(0);
  sub_217874614(&qword_27CB8AA38, _s23PlaylistDetailViewModelCMa);
  sub_2179666FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v5;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0) + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
    (*(*(v11 - 8) + 8))(&v5[v10], v11);
    if (v9 == 2)
    {
      v12 = *(a1 + 96);
      v20 = *(a1 + 88);
      v21 = v12;
      _s18PlaylistDetailViewV13LoadingReasonOMa();
      sub_21796944C();
      sub_217967C4C();
      sub_217967C1C();
      if (v19 != 2 && (v19 & 1) == 0)
      {
        v13 = sub_217866890();
        if (v13 != 4)
        {
          v14 = v13;
          v15 = _s18PlaylistDetailViewVMa();
          sub_21786ACC8(v14 == 0, v15);
          sub_2178668DC();
        }
      }
    }
  }

  else
  {
    sub_217874970(v5, _s23PlaylistDetailViewModelC12LoadingStateOMa);
  }

  v16 = _s18PlaylistDetailViewVMa();
  return sub_21786A678(v16);
}

uint64_t sub_21786ACC8(int a1, uint64_t a2)
{
  v92 = a2;
  v91 = a1;
  v89 = sub_21796852C();
  v77 = *(v89 - 8);
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2179688CC();
  v86 = *(v84 - 8);
  v5 = *(v86 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217968D8C();
  v85 = *(v7 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x28223BE20](v7);
  v95 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_217968DFC();
  v82 = *(v102 - 8);
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB20, &unk_21796B100);
  v12 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v14 = &v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB10, &unk_21796B0A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v90 = (&v76 - v17);
  v96 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v18 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  v79 = *(v21 - 8);
  v22 = *(v79 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v87 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v80 = &v76 - v26;
  MEMORY[0x28223BE20](v25);
  v78 = &v76 - v27;
  v28 = *(v2 + 64);
  v29 = *(v2 + 72);
  v94 = v2;
  v30 = *(v2 + 80);
  v31 = _s23PlaylistDetailViewModelCMa(0);
  v32 = sub_217874614(&qword_27CB8AA38, _s23PlaylistDetailViewModelCMa);
  v98 = v29;
  v99 = v31;
  v97 = v32;
  sub_2179666FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v93 = v7;
  if (EnumCaseMultiPayload != 1)
  {
    sub_217874970(v20, _s23PlaylistDetailViewModelC12LoadingStateOMa);
LABEL_7:
    v41 = v95;
LABEL_8:
    v45 = *(sub_2179666FC() + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel_source);

    if (v45 == 2)
    {
      return result;
    }

    v47 = v87;
    sub_2179666FC();
    swift_getKeyPath();
    swift_getKeyPath();
    v48 = v90;
    sub_21796657C();

    if (__swift_getEnumTagSinglePayload(v48, 1, v21) == 1)
    {
      sub_2179680AC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v21);
      v42 = v78;
      v44 = v79;
      if (EnumTagSinglePayload != 1)
      {
        sub_2178653BC(v48, &qword_27CB8AB10, &unk_21796B0A0);
      }
    }

    else
    {
      v44 = v79;
      (*(v79 + 32))(v47, v48, v21);
      v42 = v78;
    }

    (*(v44 + 32))(v42, v47, v21);
    v43 = v93;
    goto LABEL_14;
  }

  v34 = *v20;
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0) + 48);
  if (v34 != 2)
  {
    (*(v79 + 8))(&v20[v35], v21);
    goto LABEL_7;
  }

  v36 = v79;
  v37 = *(v79 + 32);
  v38 = v80;
  v37(v80, &v20[v35], v21);
  v39 = v21;
  v40 = *(sub_2179666FC() + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel_source);

  v41 = v95;
  if (v40 != 2)
  {
    (*(v36 + 8))(v38, v39);
    v21 = v39;
    goto LABEL_8;
  }

  v42 = v78;
  v37(v78, v38, v39);
  v43 = v93;
  v21 = v39;
  v44 = v36;
LABEL_14:
  if (sub_21786692C() == 4)
  {
    return (*(v44 + 8))(v42, v21);
  }

  v50 = v77;
  (*(v44 + 16))(v14, v42, v21);
  v51 = *(v81 + 36);
  sub_217864B2C(&qword_27CB8AB28, &qword_27CB8AAE8, &qword_21796AFA0);
  sub_2179692AC();
  v98 = (v82 + 8);
  v99 = (v82 + 16);
  v97 = (v85 + 88);
  LODWORD(v96) = *MEMORY[0x277D2B410];
  v82 = v85 + 8;
  v90 = (v85 + 96);
  v81 = v86 + 32;
  LODWORD(v87) = *MEMORY[0x277D2B428];
  v80 = v86 + 8;
  v86 = v50 + 32;
  v85 = v50 + 8;
  for (i = v14; ; v14 = i)
  {
    sub_2179692EC();
    if (*&v14[v51] == v103[0])
    {
      break;
    }

    v52 = sub_21796934C();
    v53 = v101;
    v54 = v102;
    (*v99)(v101);
    v52(v103, 0);
    v55 = v21;
    sub_2179692FC();
    sub_217968D9C();
    (*v98)(v53, v54);
    v56 = (*v97)(v41, v43);
    if (v56 == v96)
    {
      (*v90)(v41, v43);
      v58 = v88;
      v57 = v89;
      (*v86)(v88, v41, v89);
      v59 = *v94;
      v60 = v94[1];
      v61 = *(v92 + 16);
      v62 = *(v92 + 24);
      _s9ViewModelCMa();
      swift_getWitnessTable();
      v41 = v95;
      sub_217966A9C();
      v63 = sub_217874614(&qword_27CB8A828, MEMORY[0x277CD7E58]);
      sub_2178E1B6C(v58, 11, (v91 & 1) == 0, v57, v63, v64, v65, v66, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);

      v67 = &v105;
LABEL_22:
      v43 = v93;
      (**(v67 - 32))(v58, v57);
      goto LABEL_24;
    }

    if (v56 == v87)
    {
      (*v90)(v41, v43);
      v58 = v83;
      v57 = v84;
      (*v81)(v83, v41, v84);
      v68 = *v94;
      v69 = v94[1];
      v70 = *(v92 + 16);
      v71 = *(v92 + 24);
      _s9ViewModelCMa();
      swift_getWitnessTable();
      v41 = v95;
      sub_217966A9C();
      v72 = sub_217874614(&qword_27CB8A830, MEMORY[0x277CD8238]);
      sub_2178E1B6C(v58, 11, (v91 & 1) == 0, v57, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);

      v67 = &v104;
      goto LABEL_22;
    }

    (*v82)(v41, v43);
LABEL_24:
    v21 = v55;
  }

  sub_2178653BC(v14, &qword_27CB8AB20, &unk_21796B100);
  return (*(v79 + 8))(v78, v21);
}

uint64_t sub_21786B92C(uint64_t *a1)
{
  v2 = sub_21796595C();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217968E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = _s18PlaylistDetailViewVMa();
  if (*(a1 + *(v31 + 64)) == 1)
  {
    v11 = *a1;
    v12 = a1[1];
    _s9ViewModelCMa();
    swift_getWitnessTable();
    sub_217966A9C();
    v13 = a1[8];
    v14 = a1[9];
    v15 = *(a1 + 80);
    _s23PlaylistDetailViewModelCMa(0);
    sub_217874614(&qword_27CB8AA38, _s23PlaylistDetailViewModelCMa);
    sub_2179666FC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21796657C();

    sub_217874614(&qword_27CB8AAC8, MEMORY[0x277CD8608]);
    sub_2178D1C94();

    (*(v7 + 8))(v10, v6);
  }

  sub_217956100();
  v16 = v40;
  if (!v40)
  {
    return sub_2178653BC(v39, &qword_27CB8A630, qword_21796A7B0);
  }

  v17 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v18 = a1[8];
  v19 = a1[9];
  v20 = *(a1 + 80);
  _s23PlaylistDetailViewModelCMa(0);
  sub_217874614(&qword_27CB8AA38, _s23PlaylistDetailViewModelCMa);
  sub_2179666FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  v22 = v32;
  v21 = v33;
  (*(v32 + 104))(v5, *MEMORY[0x277D2A440], v33);
  v38 = 4;
  v23 = a1 + *(v31 + 72);
  v25 = *(v23 + 1);
  v24 = *(v23 + 2);
  v26 = *(v23 + 3);
  v34[0] = *v23;
  v35 = v25;
  v36 = v24;
  v37 = v26;
  v27 = *(v17 + 24);

  sub_217863EC4(v26);
  v27(v5, &v38, v34, v16, v17);
  v28 = v37;

  sub_2178643E0(v28);
  (*(v22 + 8))(v5, v21);
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_21786BD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a2;
  v24 = a1;
  v25 = a5;
  sub_217968E3C();
  sub_217874614(&qword_27CB8AAC8, MEMORY[0x277CD8608]);
  _s19ContainerHeaderCellVMa();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  sub_21796698C();
  _s20FailureAlertModifierVMa();
  sub_21796698C();
  v41 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAD0, &unk_21796AF90);
  _s17PlaylistEntryCellVMa();
  sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v40 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_217873B84();
  v38 = MEMORY[0x277D83B98];
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v42 = sub_21796944C();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAF0, &qword_21796AFA8);
  sub_217968AFC();
  sub_217874614(&qword_27CB8AAF8, MEMORY[0x277CD8428]);
  _s14ContainerShelfVMa();
  v44 = sub_21796944C();
  swift_getTupleTypeMetadata();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_21796665C();
  v7 = sub_21796698C();
  v8 = sub_2179669FC();
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x277CE0880];
  v9 = swift_getWitnessTable();
  v10 = sub_217874614(&qword_27CB8A708, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeMetadata2();
  sub_217966F9C();
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x277CE1410];
  v31 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v12 = sub_21796666C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  sub_2179673DC();
  v26 = a3;
  v27 = a4;
  v28 = v23;
  v29 = v24;
  sub_21789AA60();
  swift_getWitnessTable();
  sub_2179560E4(v17, v12);
  v20 = *(v13 + 8);
  v20(v17, v12);
  sub_2179560E4(v19, v12);
  return (v20)(v19, v12);
}

uint64_t sub_21786C448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a2;
  v92 = a5;
  v93 = a1;
  v95 = sub_2179669FC();
  v86 = *(v95 - 8);
  v7 = *(v86 + 64);
  MEMORY[0x28223BE20](v95);
  v85 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21796708C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_217968E3C();
  v13 = sub_217874614(&qword_27CB8AAC8, MEMORY[0x277CD8608]);
  v100 = v12;
  v101 = a3;
  v102 = v13;
  v103 = a4;
  v14 = _s19ContainerHeaderCellVMa();
  WitnessTable = swift_getWitnessTable();
  v100 = v14;
  v101 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  sub_21796698C();
  _s20FailureAlertModifierVMa();
  sub_21796698C();
  v107 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAD0, &unk_21796AF90);
  _s17PlaylistEntryCellVMa();
  v17 = sub_21796698C();
  v105 = swift_getWitnessTable();
  v106 = MEMORY[0x277CE0790];
  v18 = swift_getWitnessTable();
  v100 = v17;
  v101 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  swift_getTupleTypeMetadata2();
  v19 = sub_217967E9C();
  v20 = sub_217873B84();
  v100 = v16;
  v101 = MEMORY[0x277D83B88];
  v102 = v19;
  v103 = v20;
  v104 = MEMORY[0x277D83B98];
  sub_217967D9C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v108 = sub_21796944C();
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAF0, &qword_21796AFA8);
  v21 = sub_217968AFC();
  v22 = sub_217874614(&qword_27CB8AAF8, MEMORY[0x277CD8428]);
  v100 = v21;
  v101 = a3;
  v82 = a3;
  v102 = v22;
  v103 = a4;
  v83 = a4;
  _s14ContainerShelfVMa();
  v110 = sub_21796944C();
  swift_getTupleTypeMetadata();
  v23 = sub_217967E9C();
  swift_getWitnessTable();
  v77 = v23;
  v24 = sub_21796665C();
  v78 = *(v24 - 8);
  v25 = *(v78 + 64);
  MEMORY[0x28223BE20](v24);
  v75 = &v72 - v26;
  v27 = sub_21796698C();
  v79 = *(v27 - 8);
  v28 = *(v79 + 64);
  MEMORY[0x28223BE20](v27);
  v76 = &v72 - v29;
  v80 = v24;
  v72 = swift_getWitnessTable();
  v98 = v72;
  v99 = MEMORY[0x277CE0880];
  v30 = swift_getWitnessTable();
  v31 = sub_217874614(&qword_27CB8A708, MEMORY[0x277CDDB18]);
  v94 = v27;
  v100 = v27;
  v101 = v95;
  v90 = v31;
  v91 = v30;
  v102 = v30;
  v103 = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  v33 = *(v74 + 64);
  v34 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v73 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v72 - v36;
  v38 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v72 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = &v72 - v43;
  v89 = sub_217966F9C();
  v88 = *(v89 - 8);
  v45 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v72 - v46;
  v47 = *(v93 + 64);
  v48 = *(v93 + 72);
  v49 = *(v93 + 80);
  _s23PlaylistDetailViewModelCMa(0);
  sub_217874614(&qword_27CB8AA38, _s23PlaylistDetailViewModelCMa);
  sub_2179666FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  swift_storeEnumTagMultiPayload();
  sub_217902F00();
  LOBYTE(v30) = v50;
  sub_217874970(v42, _s23PlaylistDetailViewModelC12LoadingStateOMa);
  sub_217874970(v44, _s23PlaylistDetailViewModelC12LoadingStateOMa);
  v51 = MEMORY[0x277CE1410];
  if (v30)
  {
    v52 = v95;
    v100 = v94;
    v101 = v95;
    v54 = v90;
    v53 = v91;
    v102 = v91;
    v103 = v90;
    swift_getOpaqueTypeConformance2();
    v55 = v87;
    sub_217952EE8();
  }

  else
  {
    sub_217966E6C();
    v56 = v82;
    v57 = v83;
    v58 = _s18PlaylistDetailViewVMa();
    v59 = *(v93 + *(v58 + 88) + 40);
    MEMORY[0x28223BE20](v58);
    *(&v72 - 4) = v56;
    *(&v72 - 3) = v57;
    v60 = v84;
    *(&v72 - 2) = v61;
    *(&v72 - 1) = v60;
    sub_21789A9E0();
    v62 = v75;
    sub_21796664C();
    sub_2179669BC();
    v63 = v80;
    sub_2178B950C();
    v64 = v76;
    sub_2179677DC();
    (*(v78 + 8))(v62, v63);
    v65 = v85;
    sub_2179669EC();
    v66 = v73;
    v67 = v94;
    v52 = v95;
    v54 = v90;
    v53 = v91;
    sub_2179676FC();
    (*(v86 + 8))(v65, v52);
    (*(v79 + 8))(v64, v67);
    v100 = v67;
    v101 = v52;
    v102 = v53;
    v103 = v54;
    swift_getOpaqueTypeConformance2();
    sub_2179560E4(v66, OpaqueTypeMetadata2);
    v68 = *(v74 + 8);
    v68(v66, OpaqueTypeMetadata2);
    sub_2179560E4(v37, OpaqueTypeMetadata2);
    v55 = v87;
    sub_217952FA4();
    v68(v66, OpaqueTypeMetadata2);
    v68(v37, OpaqueTypeMetadata2);
    v51 = MEMORY[0x277CE1410];
  }

  v100 = v94;
  v101 = v52;
  v102 = v53;
  v103 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = v51;
  v97 = OpaqueTypeConformance2;
  v70 = v89;
  swift_getWitnessTable();
  sub_2179560E4(v55, v70);
  return (*(v88 + 8))(v55, v70);
}

uint64_t sub_21786D11C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v352 = a2;
  v409 = a1;
  v380 = a5;
  v354 = sub_217968AFC();
  v461 = v354;
  v462 = a3;
  v351 = sub_217874614(&qword_27CB8AAF8, MEMORY[0x277CD8428]);
  v463 = v351;
  v464 = a4;
  v407 = a4;
  v7 = _s14ContainerShelfVMa();
  v356 = *(v7 - 8);
  v8 = *(v356 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v355 = &v301 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v353 = &v301 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB38, &unk_21796B110);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v373 = &v301 - v14;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB40, &qword_21796BEC0);
  v350 = *(v374 - 8);
  v15 = *(v350 + 64);
  v16 = MEMORY[0x28223BE20](v374);
  v348 = &v301 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v349 = &v301 - v18;
  v379 = v7;
  v378 = sub_21796944C();
  v376 = *(v378 - 8);
  v19 = *(v376 + 64);
  v20 = MEMORY[0x28223BE20](v378);
  v401 = &v301 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v377 = &v301 - v22;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB48, &qword_21796B120);
  v23 = *(*(v372 - 8) + 64);
  MEMORY[0x28223BE20](v372);
  v312 = (&v301 - v24);
  v371 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v25 = *(*(v371 - 8) + 64);
  MEMORY[0x28223BE20](v371);
  v370 = &v301 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAF0, &qword_21796AFA8);
  v27 = *(*(v375 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v375);
  v400 = &v301 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v408 = &v301 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAD0, &unk_21796AF90);
  _s17PlaylistEntryCellVMa();
  v33 = sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v467 = MEMORY[0x277CE0790];
  v34 = swift_getWitnessTable();
  v461 = v33;
  v462 = v34;
  swift_getOpaqueTypeMetadata2();
  v403 = sub_21796732C();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6F0, &qword_21796A8F0);
  swift_getTupleTypeMetadata2();
  v35 = sub_217967E9C();
  v36 = sub_217873B84();
  v461 = v32;
  v462 = MEMORY[0x277D83B88];
  v336 = v36;
  v337 = v35;
  v463 = v35;
  v464 = v36;
  v465 = MEMORY[0x277D83B98];
  v37 = sub_217967D9C();
  v404 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  v38 = sub_21796698C();
  swift_getTupleTypeMetadata2();
  v39 = sub_217967E9C();
  v345 = *(v39 - 8);
  v40 = *(v345 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v343 = v32;
  v344 = &v301 - v42;
  v43 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = MEMORY[0x28223BE20](v41);
  v366 = &v301 - v45;
  v341 = v37;
  v335 = *(v37 - 8);
  v46 = *(v335 + 64);
  v47 = MEMORY[0x28223BE20](v44);
  v334 = &v301 - v48;
  v346 = v38;
  v338 = *(v38 - 8);
  v49 = *(v338 + 64);
  v50 = MEMORY[0x28223BE20](v47);
  v342 = &v301 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v340 = &v301 - v52;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  v53 = *(*(v333 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v333);
  v331 = &v301 - v55;
  v347 = v31;
  v56 = *(*(v31 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v54);
  v339 = &v301 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v385 = (&v301 - v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB10, &unk_21796B0A0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8);
  KeyPath = &v301 - v62;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  v383 = *(v384 - 8);
  v63 = *(v383 + 64);
  v64 = MEMORY[0x28223BE20](v384);
  v332 = &v301 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = v65;
  MEMORY[0x28223BE20](v64);
  v367 = &v301 - v66;
  v398 = v39;
  v397 = sub_21796944C();
  v410 = *(v397 - 8);
  v67 = v410[8];
  v68 = MEMORY[0x28223BE20](v397);
  v406 = &v301 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v405 = &v301 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v362 = (&v301 - v73);
  v74 = sub_21796722C();
  v326 = *(v74 - 8);
  v327 = v74;
  v75 = *(v326 + 64);
  MEMORY[0x28223BE20](v74);
  v325 = &v301 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v407;
  v78 = _s18PlaylistDetailViewVMa();
  v382 = *(v78 - 8);
  v364 = *(v382 + 64);
  MEMORY[0x28223BE20](v78);
  v381 = &v301 - v79;
  v80 = sub_217968E3C();
  v369 = *(v80 - 8);
  v81 = *(v369 + 64);
  v82 = MEMORY[0x28223BE20](v80);
  v368 = &v301 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v363 = &v301 - v84;
  v85 = sub_217874614(&qword_27CB8AAC8, MEMORY[0x277CD8608]);
  v386 = v80;
  v461 = v80;
  v462 = a3;
  v399 = a3;
  v314 = v85;
  v463 = v85;
  v464 = v77;
  v86 = _s19ContainerHeaderCellVMa();
  v316 = *(v86 - 8);
  v87 = *(v316 + 64);
  MEMORY[0x28223BE20](v86);
  v315 = &v301 - v88;
  v89 = swift_getWitnessTable();
  v461 = v86;
  v462 = v89;
  v394 = v89;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v317 = *(OpaqueTypeMetadata2 - 8);
  v91 = *(v317 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v313 = &v301 - v92;
  v318 = v93;
  v94 = sub_21796698C();
  v321 = *(v94 - 8);
  v95 = *(v321 + 64);
  MEMORY[0x28223BE20](v94);
  v319 = &v301 - v96;
  v402 = sub_21796698C();
  v323 = *(v402 - 8);
  v97 = *(v323 + 64);
  MEMORY[0x28223BE20](v402);
  v320 = &v301 - v98;
  v99 = sub_21796698C();
  v324 = *(v99 - 8);
  v100 = *(v324 + 64);
  MEMORY[0x28223BE20](v99);
  v322 = &v301 - v101;
  v102 = sub_21796698C();
  v329 = *(v102 - 8);
  v103 = *(v329 + 8);
  MEMORY[0x28223BE20](v102);
  v328 = &v301 - v104;
  v105 = sub_21796698C();
  v358 = *(v105 - 8);
  v106 = *(v358 + 64);
  MEMORY[0x28223BE20](v105);
  v357 = &v301 - v107;
  _s20FailureAlertModifierVMa();
  v108 = sub_21796698C();
  v361 = *(v108 - 8);
  v109 = *(v361 + 64);
  v110 = MEMORY[0x28223BE20](v108);
  v360 = &v301 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v110);
  v359 = &v301 - v112;
  v396 = sub_21796944C();
  v391 = *(v396 - 8);
  v113 = *(v391 + 64);
  v114 = MEMORY[0x28223BE20](v396);
  v116 = &v301 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v114);
  v404 = &v301 - v117;
  v392 = v78;
  sub_217866B40(v78);
  LOBYTE(v78) = v118;

  v390 = v86;
  v395 = v94;
  v389 = v99;
  v388 = v102;
  v393 = v105;
  v403 = v116;
  v387 = v108;
  if (v78)
  {
    v119 = MEMORY[0x277CDF918];
    __swift_storeEnumTagSinglePayload(v116, 1, 1, v108);
    v461 = v86;
    v462 = v394;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v121 = sub_217874614(&qword_27CB8A710, MEMORY[0x277CDE470]);
    v421 = OpaqueTypeConformance2;
    v422 = v121;
    v419 = swift_getWitnessTable();
    v420 = v119;
    v417 = swift_getWitnessTable();
    v418 = v119;
    v415 = swift_getWitnessTable();
    v416 = v119;
    v122 = swift_getWitnessTable();
    v123 = sub_217864B2C(&qword_27CB8A7A0, &qword_27CB8A6D8, &unk_21796AF80);
    v413 = v122;
    v414 = v123;
    v124 = swift_getWitnessTable();
    v125 = sub_217874614(&qword_27CB8A7A8, _s20FailureAlertModifierVMa);
    v411 = v124;
    v412 = v125;
    swift_getWitnessTable();
    v126 = v409;
  }

  else
  {
    v127 = v409;
    v129 = v409[8];
    v128 = v409[9];
    v130 = *(v409 + 80);
    _s23PlaylistDetailViewModelCMa(0);
    v131 = v127;
    sub_217874614(&qword_27CB8AA38, _s23PlaylistDetailViewModelCMa);
    sub_2179666FC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21796657C();

    v132 = v392;
    v133 = v127 + v392[19];
    v135 = *(v133 + 8);
    v134 = *(v133 + 16);
    v136 = *(v133 + 24);
    LOBYTE(v461) = *v133;
    v462 = v135;
    v463 = v134;
    v464 = v136;

    sub_217863EC4(v136);
    v137 = sub_217867688();
    v303 = v138;
    v304 = v137;
    v302 = sub_2178669C8();
    v140 = v139;
    LOBYTE(v136) = v141;
    v142 = v382;
    v143 = v381;
    v309 = *(v382 + 16);
    v310 = v382 + 16;
    v309(v381, v131, v132);
    v144 = *(v142 + 80);
    v145 = (v144 + 32) & ~v144;
    v307 = v145 + v364;
    v308 = v144;
    v146 = swift_allocObject();
    v147 = v399;
    v148 = v407;
    *(v146 + 16) = v399;
    *(v146 + 24) = v148;
    v149 = *(v142 + 32);
    v311 = v145;
    v305 = v149;
    v306 = v142 + 32;
    v149(v146 + v145, v143, v132);
    v300 = v140;
    v150 = v390;
    v151 = v315;
    sub_217890BD0(v363, &v461, 0, 0, 0, 0, v304, v303, v315, v302, v300, v136, v147, sub_217873F8C, v146, v386, v147, v314);
    v152 = v325;
    sub_21796720C();
    v153 = v313;
    v154 = v394;
    sub_2179678AC();
    (*(v326 + 8))(v152, v327);
    (*(v316 + 8))(v151, v150);
    v155 = v132;
    if (qword_27CB8A3F8 != -1)
    {
      swift_once();
    }

    v156 = qword_27CB979F8;
    v157 = unk_27CB97A00;
    v158 = qword_27CB97A08;
    v461 = v150;
    v462 = v154;
    v159 = swift_getOpaqueTypeConformance2();
    v160 = v319;
    v161 = v157;
    v162 = v318;
    sub_2178ED854(v156, v161, v158);
    (*(v317 + 8))(v153, v162);
    sub_21796742C();
    v163 = v409 + v155[22];
    v164 = *(v163 + 1);
    v165 = sub_217874614(&qword_27CB8A710, MEMORY[0x277CDE470]);
    v459 = v159;
    v460 = v165;
    v166 = v395;
    v167 = swift_getWitnessTable();
    v168 = v320;
    sub_217967A0C();
    (*(v321 + 8))(v160, v166);
    sub_21796743C();
    v169 = *(v163 + 2);
    v457 = v167;
    v170 = MEMORY[0x277CDF918];
    v458 = MEMORY[0x277CDF918];
    v171 = v402;
    v172 = swift_getWitnessTable();
    v173 = v322;
    sub_217967A0C();
    v174 = v171;
    v175 = v170;
    (*(v323 + 8))(v168, v174);
    sub_21796744C();
    v455 = v172;
    v456 = v170;
    v176 = v389;
    v177 = swift_getWitnessTable();
    v178 = v328;
    sub_217967A0C();
    (*(v324 + 8))(v173, v176);
    v179 = v409;
    v180 = v388;
    if (qword_27CB8A340 != -1)
    {
      swift_once();
    }

    v461 = qword_27CB977B8;
    v453 = v177;
    v454 = v175;

    v181 = swift_getWitnessTable();
    sub_217952FA0();
    v182 = v357;
    sub_21796768C();

    (*(v329 + 1))(v178, v180);
    v183 = v362;
    v184 = v392;
    sub_217866AEC(v392, MEMORY[0x277CE10A8]);
    v185 = v381;
    v309(v381, v179, v184);
    v186 = swift_allocObject();
    v187 = v407;
    *(v186 + 16) = v399;
    *(v186 + 24) = v187;
    v305(v186 + v311, v185, v184);
    v188 = sub_217864B2C(&qword_27CB8A7A0, &qword_27CB8A6D8, &unk_21796AF80);
    v451 = v181;
    v452 = v188;
    v189 = v393;
    v190 = swift_getWitnessTable();
    v191 = v360;
    sub_21792EC54(v183, sub_2178741A8, v186, v189, v190);

    sub_2178653BC(v183, &qword_27CB8A788, &qword_21796A960);
    (*(v358 + 8))(v182, v189);
    v192 = sub_217874614(&qword_27CB8A7A8, _s20FailureAlertModifierVMa);
    v449 = v190;
    v450 = v192;
    v193 = v387;
    swift_getWitnessTable();
    v194 = v359;
    sub_2179560E4(v191, v193);
    v195 = v361;
    v196 = *(v361 + 8);
    v196(v191, v193);
    sub_2179560E4(v194, v193);
    v196(v194, v193);
    v116 = v403;
    (*(v195 + 32))(v403, v191, v193);
    __swift_storeEnumTagSinglePayload(v116, 0, 1, v193);
    v126 = v179;
  }

  sub_2178AEE20(v116, v404);
  v362 = *(v391 + 8);
  v363 = v391 + 8;
  v362(v116, v396);
  v197 = v126[8];
  v198 = v126[9];
  v199 = *(v126 + 80);
  v200 = _s23PlaylistDetailViewModelCMa(0);
  v201 = sub_217874614(&qword_27CB8AA38, _s23PlaylistDetailViewModelCMa);
  v360 = v198;
  v361 = v197;
  LODWORD(v359) = v199;
  v357 = v201;
  v358 = v200;
  sub_2179666FC();
  swift_getKeyPath();
  swift_getKeyPath();
  v202 = KeyPath;
  sub_21796657C();

  v203 = v384;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v202, 1, v384);
  v205 = v383;
  v206 = v382;
  if (EnumTagSinglePayload == 1)
  {
    sub_2178653BC(v202, &qword_27CB8AB10, &unk_21796B0A0);
    v207 = v406;
    v208 = v406;
    v209 = 1;
    v210 = v398;
  }

  else
  {
    v211 = *(v383 + 32);
    v328 = (v383 + 32);
    v329 = v211;
    v212 = v367;
    v211(v367, v202, v203);
    v213 = v331;
    sub_217967D6C();
    v214 = v203;
    v215 = sub_21796742C();
    v216 = v392;
    v217 = *(v126 + v392[22] + 8);
    sub_21796660C();
    v218 = v333;
    v219 = &v213[*(v333 + 36)];
    *v219 = v215;
    *(v219 + 1) = v220;
    *(v219 + 2) = v221;
    *(v219 + 3) = v222;
    *(v219 + 4) = v223;
    v219[40] = 0;
    v224 = v385;
    sub_217874564();
    __swift_storeEnumTagSinglePayload(v224, 0, 1, v218);
    v225 = *(v205 + 16);
    v225(v366, v212, v214);
    KeyPath = swift_getKeyPath();
    v226 = v381;
    (*(v206 + 16))(v381, v126, v216);
    v227 = v332;
    v225(v332, v212, v214);
    v228 = (*(v206 + 80) + 32) & ~*(v206 + 80);
    v229 = (v364 + v228 + *(v205 + 80)) & ~*(v205 + 80);
    v230 = swift_allocObject();
    v231 = v399;
    v232 = v407;
    *(v230 + 16) = v399;
    *(v230 + 24) = v232;
    v233 = v230 + v228;
    v234 = v231;
    (*(v206 + 32))(v233, v226, v216);
    v329(v230 + v229, v227, v214);
    v235 = swift_allocObject();
    v235[2] = v234;
    v235[3] = v232;
    v235[4] = sub_217874374;
    v235[5] = v230;
    v236 = swift_getWitnessTable();
    v237 = v334;
    sub_217967D7C();
    if (qword_27CB8A340 != -1)
    {
      swift_once();
    }

    v461 = qword_27CB977B8;
    v425 = v236;

    v238 = v341;
    v239 = swift_getWitnessTable();
    sub_217952FA0();
    v240 = v342;
    sub_21796768C();

    (*(v335 + 8))(v237, v238);
    v241 = sub_217864B2C(&qword_27CB8A7A0, &qword_27CB8A6D8, &unk_21796AF80);
    v423 = v239;
    v424 = v241;
    v242 = v346;
    v243 = swift_getWitnessTable();
    v244 = v340;
    sub_2179560E4(v240, v242);
    v245 = v338;
    v246 = *(v338 + 8);
    v246(v240, v242);
    v247 = v339;
    sub_2178745BC();
    v461 = v247;
    (*(v245 + 16))(v240, v244, v242);
    v462 = v240;
    v445 = v347;
    v446 = v242;
    v441 = sub_217874240(&qword_27CB8A7B8, &qword_27CB8A6E0, &qword_21796A8E0, sub_217864C64);
    v442 = v243;
    v248 = v344;
    sub_2178B9390(&v461, 2, &v445);
    v246(v244, v242);
    sub_2178653BC(v385, &qword_27CB8A6E0, &qword_21796A8E0);
    (*(v383 + 8))(v367, v384);
    v246(v240, v242);
    sub_2178653BC(v247, &qword_27CB8A6E0, &qword_21796A8E0);
    v207 = v406;
    v210 = v398;
    (*(v345 + 32))(v406, v248, v398);
    v208 = v207;
    v209 = 0;
  }

  __swift_storeEnumTagSinglePayload(v208, v209, 1, v210);
  swift_getWitnessTable();
  sub_2178AEE20(v207, v405);
  v385 = v410[1];
  (v385)(v207, v397);
  sub_2179666FC();
  swift_getKeyPath();
  swift_getKeyPath();
  v249 = v370;
  sub_21796657C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_217874970(v249, _s23PlaylistDetailViewModelC12LoadingStateOMa);
  v251 = 1;
  v252 = v372;
  if (!EnumCaseMultiPayload)
  {
    v253 = sub_217966D1C();
    v254 = v312;
    *v312 = v253;
    v254[1] = 0;
    *(v254 + 16) = 1;
    v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB70, &qword_21796B130);
    sub_21787237C((v254 + *(v255 + 44)));
    v256 = sub_21796744C();
    v257 = v254 + *(v252 + 36);
    *v257 = v256;
    *(v257 + 8) = 0u;
    *(v257 + 24) = 0u;
    v257[40] = 1;
    sub_2178491C0();
    v251 = 0;
  }

  __swift_storeEnumTagSinglePayload(v408, v251, 1, v252);
  sub_2179666FC();
  swift_getKeyPath();
  swift_getKeyPath();
  v258 = v368;
  sub_21796657C();

  v259 = v373;
  sub_217968D6C();
  (*(v369 + 8))(v258, v386);
  v260 = v374;
  if (__swift_getEnumTagSinglePayload(v259, 1, v374) == 1)
  {
    sub_2178653BC(v259, &qword_27CB8AB38, &unk_21796B110);
    v261 = v401;
    __swift_storeEnumTagSinglePayload(v401, 1, 1, v379);
    swift_getWitnessTable();
  }

  else
  {
    v262 = v349;
    v263 = v350;
    (*(v350 + 32))(v349, v259, v260);
    v264 = v409;
    v386 = sub_2178726CC();
    v384 = v265;
    v266 = v348;
    (*(v263 + 16))(v348, v262, v260);
    v461 = *(v264 + v392[17]);
    sub_217863EC4(v461);
    sub_21796680C();
    v268 = v267;
    v269 = v354;
    v270 = v399;
    v271 = v351;
    LOBYTE(v264) = sub_217862E84();
    v272 = j__OUTLINED_FUNCTION_59();
    v273 = v355;
    sub_2178B0304(v386, v384, v266, &v461, 11, v264 & 1, v272 & 1, v355, v268, v269, v270, v271);
    (*(v263 + 8))(v262, v260);
    v274 = v379;
    swift_getWitnessTable();
    v275 = v353;
    sub_2179560E4(v273, v274);
    v276 = v356;
    v277 = *(v356 + 8);
    v277(v273, v274);
    sub_2179560E4(v275, v274);
    v277(v275, v274);
    v261 = v401;
    (*(v276 + 32))(v401, v273, v274);
    __swift_storeEnumTagSinglePayload(v261, 0, 1, v274);
  }

  v278 = v377;
  sub_2178AEE20(v261, v377);
  v279 = v376;
  v280 = *(v376 + 8);
  v407 = v376 + 8;
  v409 = v280;
  v281 = v378;
  (v280)(v261, v378);
  v282 = v403;
  v283 = v396;
  (*(v391 + 16))(v403, v404);
  v461 = v282;
  v284 = v410[2];
  v410 += 2;
  v285 = v406;
  v286 = v397;
  v284(v406, v405);
  v462 = v285;
  v287 = v400;
  sub_217849100();
  v463 = v287;
  (*(v279 + 16))(v261, v278, v281);
  v464 = v261;
  v445 = v283;
  v446 = v286;
  v447 = v375;
  v448 = v281;
  v441 = v390;
  v442 = v394;
  v288 = swift_getOpaqueTypeConformance2();
  v289 = sub_217874614(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v439 = v288;
  v440 = v289;
  v437 = swift_getWitnessTable();
  v290 = MEMORY[0x277CDF918];
  v438 = MEMORY[0x277CDF918];
  v435 = swift_getWitnessTable();
  v436 = v290;
  v433 = swift_getWitnessTable();
  v434 = v290;
  v291 = swift_getWitnessTable();
  v292 = sub_217864B2C(&qword_27CB8A7A0, &qword_27CB8A6D8, &unk_21796AF80);
  v431 = v291;
  v432 = v292;
  v293 = swift_getWitnessTable();
  v294 = sub_217874614(&qword_27CB8A7A8, _s20FailureAlertModifierVMa);
  v429 = v293;
  v430 = v294;
  v428 = swift_getWitnessTable();
  v295 = v283;
  v441 = swift_getWitnessTable();
  v427 = swift_getWitnessTable();
  v442 = swift_getWitnessTable();
  v443 = sub_217874240(&qword_27CB8AB50, &qword_27CB8AAF0, &qword_21796AFA8, sub_2178742BC);
  v426 = swift_getWitnessTable();
  v444 = swift_getWitnessTable();
  sub_2178B9390(&v461, 4, &v445);
  v296 = v409;
  (v409)(v278, v281);
  sub_217849160(v408);
  v297 = v385;
  (v385)(v405, v286);
  v298 = v362;
  v362(v404, v295);
  v296(v401, v281);
  sub_217849160(v400);
  v297(v406, v286);
  return v298(v403, v295);
}

uint64_t sub_21786FA70(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB10, &unk_21796B0A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = &v83 - v6;
  v95 = _s23PlaylistDetailViewModelC12LoadingStateOMa(0);
  v7 = *(*(v95 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v95);
  v91 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = &v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  v92 = *(v11 - 8);
  v93 = v11;
  v12 = *(v92 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v88 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = &v83 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v94 = (&v83 - v18);
  v19 = sub_217968E3C();
  v20 = *(v19 - 8);
  v96 = v19;
  v97 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a2;
  v98 = _s18PlaylistDetailViewVMa();
  sub_21786692C();
  sub_2178668DC();
  v24 = a1[12];
  HIDWORD(v87) = *(a1 + 88);
  v104 = BYTE4(v87);
  v86 = v24;
  v105 = v24;
  v103 = 0;
  _s18PlaylistDetailViewV13LoadingReasonOMa();
  sub_21796944C();
  v85 = sub_217967C4C();
  sub_217967C2C();
  v25 = a1[8];
  v26 = a1[9];
  v27 = *(a1 + 80);
  v28 = _s23PlaylistDetailViewModelCMa(0);
  v29 = sub_217874614(&qword_27CB8AA38, _s23PlaylistDetailViewModelCMa);
  sub_2179666FC();
  sub_21790615C();

  v30 = *a1;
  v31 = a1[1];
  _s9ViewModelCMa();
  swift_getWitnessTable();
  sub_217966A9C();
  v102 = v25;
  v101 = v27;
  v99 = v28;
  v100 = v29;
  sub_2179666FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21796657C();

  sub_217874614(&qword_27CB8AAC8, MEMORY[0x277CD8608]);
  v32 = v96;
  sub_2178E2AD0();
  v34 = v33;

  (*(v97 + 8))(v23, v32);
  if ((v34 & 1) == 0)
  {
    sub_217866DFC(v98, v35, v36, v37, v38, v39, v40, v41, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
    v48 = v92;
    v47 = v93;
    v49 = v91;
    if (v50 >= 1)
    {
      sub_2179666FC();
      swift_getKeyPath();
      swift_getKeyPath();
      v51 = v89;
      sub_21796657C();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v52 = *v51;
        v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0) + 48);
        if (v52 == 2)
        {
          v54 = v84;
          (*(v48 + 32))(v84, &v51[v53], v47);
          v104 = BYTE4(v87);
          v105 = v86;
          sub_217967C1C();
          if (v103 != 2 && (v103 & 1) == 0)
          {
            goto LABEL_26;
          }

          (*(v48 + 8))(v54, v47);
        }

        else
        {
          (*(v48 + 8))(&v51[v53], v47);
        }
      }

      else
      {
        sub_217874970(v51, _s23PlaylistDetailViewModelC12LoadingStateOMa);
      }
    }

    sub_2179666FC();
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v90;
    sub_21796657C();

    if (__swift_getEnumTagSinglePayload(v62, 1, v47) == 1)
    {
      sub_2178653BC(v62, &qword_27CB8AB10, &unk_21796B0A0);
      goto LABEL_18;
    }

    v54 = v88;
    (*(v48 + 32))(v88, v62, v47);
    sub_217866DFC(v98, v63, v64, v65, v66, v67, v68, v69, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
    if (v70 < 1 || (v71 = *(sub_2179666FC() + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel_source), , v71 == 2))
    {
      (*(v48 + 8))(v54, v47);
LABEL_18:
      sub_2179666FC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21796657C();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v72 = *v49;
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB18, &unk_21796FEE0);
        (*(v48 + 8))(&v49[*(v73 + 48)], v47);
        if (v72 == 2)
        {
          v104 = BYTE4(v87);
          v105 = v86;
          sub_217967C1C();
          if (v103 != 2 && (v103 & 1) == 0)
          {
LABEL_25:
            v75 = sub_21786692C() == 0;
            v76 = v98;
            sub_21786ACC8(v75, v98);
            return sub_21786A678(v76);
          }
        }
      }

      else
      {
        sub_217874970(v49, _s23PlaylistDetailViewModelC12LoadingStateOMa);
      }

      v74 = *(sub_2179666FC() + OBJC_IVAR____TtCV25_MusicKitInternal_SwiftUI11MusicPicker23PlaylistDetailViewModel_source);

      if (v74 == 2)
      {
        return result;
      }

      goto LABEL_25;
    }

LABEL_26:
    v77 = v98;
    sub_217866DFC(v98, v55, v56, v57, v58, v59, v60, v61, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
    v79 = v78;
    sub_217864B2C(&qword_27CB8AB28, &qword_27CB8AAE8, &qword_21796AFA0);
    sub_2179692AC();
    sub_2179692EC();
    v80 = sub_2179692DC();
    v81 = v94;
    sub_21791E5A8(v79, v80, v94);
    v82 = _s5AlertVMa(0);
    __swift_storeEnumTagSinglePayload(v81, 0, 1, v82);
    sub_217866A24(v81, v77);
    return (*(v48 + 8))(v54, v47);
  }

  v42 = v98;
  if (qword_27CB8A430 != -1)
  {
    swift_once();
  }

  v43 = _s5AlertVMa(0);
  v44 = __swift_project_value_buffer(v43, qword_27CB97AA8);
  v45 = v94;
  sub_217864EC8(v44, v94);
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v43);
  return sub_217866A24(v45, v42);
}

uint64_t sub_217870454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v48 = a3;
  v4 = _s18PlaylistDetailViewVMa();
  v46 = *(v4 - 8);
  v44 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v42 - v8;
  v9 = _s5AlertVMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A818, &qword_21796F490);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v42 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v42 - v25;
  v49 = v4;
  sub_217866AEC(v4, MEMORY[0x277CE10A0]);
  if (qword_27CB8A430 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v9, qword_27CB97AA8);
  sub_217864EC8(v27, v24);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v9);
  v28 = *(v13 + 48);
  sub_2178745BC();
  sub_2178745BC();
  if (__swift_getEnumTagSinglePayload(v16, 1, v9) != 1)
  {
    sub_2178745BC();
    if (__swift_getEnumTagSinglePayload(&v16[v28], 1, v9) != 1)
    {
      sub_217865358(&v16[v28], v12);
      sub_21791EA90();
      v32 = v31;
      sub_217874970(v12, _s5AlertVMa);
      sub_2178653BC(v24, &qword_27CB8A578, &qword_21796A750);
      sub_2178653BC(v26, &qword_27CB8A578, &qword_21796A750);
      sub_217874970(v21, _s5AlertVMa);
      sub_2178653BC(v16, &qword_27CB8A578, &qword_21796A750);
      if (v32)
      {
        goto LABEL_11;
      }

LABEL_9:
      v29 = sub_21786692C() == 0;
      return sub_21786ACC8(v29, v49);
    }

    sub_2178653BC(v24, &qword_27CB8A578, &qword_21796A750);
    sub_2178653BC(v26, &qword_27CB8A578, &qword_21796A750);
    sub_217874970(v21, _s5AlertVMa);
LABEL_8:
    sub_2178653BC(v16, &qword_27CB8A818, &qword_21796F490);
    goto LABEL_9;
  }

  sub_2178653BC(v24, &qword_27CB8A578, &qword_21796A750);
  sub_2178653BC(v26, &qword_27CB8A578, &qword_21796A750);
  if (__swift_getEnumTagSinglePayload(&v16[v28], 1, v9) != 1)
  {
    goto LABEL_8;
  }

  sub_2178653BC(v16, &qword_27CB8A578, &qword_21796A750);
LABEL_11:
  v33 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v33);
  v35 = v45;
  v34 = v46;
  v36 = v49;
  (*(v46 + 16))(v45, a1, v49);
  sub_21796920C();
  v37 = sub_2179691FC();
  v38 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D85700];
  *(v39 + 2) = v37;
  *(v39 + 3) = v40;
  v41 = v48;
  *(v39 + 4) = v47;
  *(v39 + 5) = v41;
  (*(v34 + 32))(&v39[v38], v35, v36);
  sub_2178D2328();
}

uint64_t sub_2178709E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_21796920C();
  v6[6] = sub_2179691FC();
  v8 = sub_2179691BC();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x2822009F8](sub_217870A84, v8, v7);
}

uint64_t sub_217870A84()
{
  OUTLINED_FUNCTION_84();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v5 = *v3;
  v4 = v3[1];
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_45();
  v0[9] = sub_217966A9C();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_217870B50;

  return sub_2178E2CD0();
}

uint64_t sub_217870B50()
{
  OUTLINED_FUNCTION_84();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = v2[10];
  *v4 = *v1;
  v3[11] = v0;

  v6 = v2[9];
  if (v0)
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_2178655CC;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_217861D38;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_217870C8C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v213 = a4;
  v212 = a3;
  v214 = a2;
  v193 = a1;
  v206 = a7;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB80, &qword_21796B160);
  v9 = *(*(v198 - 8) + 64);
  MEMORY[0x28223BE20](v198);
  v199 = &v160 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB88, &qword_21796B168);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v163 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v197 = &v160 - v16;
  MEMORY[0x28223BE20](v15);
  v196 = &v160 - v17;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  v18 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v208 = &v160 - v19;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E0, &unk_21796B170);
  v20 = *(*(v203 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v203);
  v201 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v200 = &v160 - v23;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6F0, &qword_21796A8F0);
  v24 = *(*(v202 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v202);
  v205 = &v160 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v204 = &v160 - v27;
  v183 = sub_21796722C();
  v181 = *(v183 - 8);
  v28 = *(v181 + 64);
  MEMORY[0x28223BE20](v183);
  v180 = &v160 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = a6;
  v30 = _s18PlaylistDetailViewVMa();
  v174 = *(v30 - 8);
  v179 = *(v174 + 64);
  MEMORY[0x28223BE20](v30);
  v178 = &v160 - v31;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  v32 = *(v168 - 8);
  v175 = *(v32 + 64);
  MEMORY[0x28223BE20](v168);
  v34 = &v160 - v33;
  v35 = sub_217968DFC();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _s17PlaylistEntryCellVMa();
  v177 = *(v40 - 8);
  v41 = *(v177 + 64);
  MEMORY[0x28223BE20](v40);
  v43 = &v160 - v42;
  v165 = &v160 - v42;
  v172 = v40;
  v44 = sub_21796698C();
  v176 = *(v44 - 8);
  v45 = *(v176 + 64);
  MEMORY[0x28223BE20](v44);
  v173 = &v160 - v46;
  WitnessTable = swift_getWitnessTable();
  v222 = WitnessTable;
  v223 = MEMORY[0x277CE0790];
  v169 = v44;
  v167 = swift_getWitnessTable();
  v218 = v44;
  v219 = v167;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v182 = *(OpaqueTypeMetadata2 - 8);
  v48 = *(v182 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v166 = &v160 - v49;
  sub_21796732C();
  v184 = OpaqueTypeMetadata2;
  v50 = sub_21796698C();
  v187 = *(v50 - 8);
  v51 = *(v187 + 64);
  MEMORY[0x28223BE20](v50);
  v185 = &v160 - v52;
  v188 = v53;
  v54 = sub_21796698C();
  v189 = *(v54 - 8);
  v55 = *(v189 + 64);
  MEMORY[0x28223BE20](v54);
  v186 = &v160 - v56;
  v190 = v57;
  v207 = sub_21796698C();
  v209 = *(v207 - 8);
  v58 = *(v209 + 64);
  v59 = MEMORY[0x28223BE20](v207);
  v211 = &v160 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v210 = &v160 - v61;
  v162 = v36;
  v62 = *(v36 + 16);
  v194 = v35;
  v192 = v36 + 16;
  v191 = v62;
  v62(v39, v214, v35);
  v63 = v30;
  v64 = *(v30 + 80);
  v65 = v212;
  v66 = v212 + v64;
  v68 = *(v66 + 8);
  v67 = *(v66 + 16);
  v69 = *(v66 + 24);
  LOBYTE(v218) = *v66;
  v219 = v68;
  v220 = v67;
  v221 = v69;

  sub_217863EC4(v69);
  v70 = v65;
  v71 = sub_217866C34(v63);
  v161 = v39;
  v164 = a5;
  v72 = v170;
  v73 = sub_2178CD764(v39, &v218, v71, v43);
  v74 = v34;
  v75 = v34;
  v76 = v168;
  (*(v32 + 16))(v75, v213, v168, v73);
  v77 = v174;
  v78 = v178;
  (*(v174 + 16))(v178, v70, v63);
  v79 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v80 = (v175 + *(v77 + 80) + v79) & ~*(v77 + 80);
  v81 = swift_allocObject();
  *(v81 + 2) = v164;
  *(v81 + 3) = v72;
  v82 = v167;
  *(v81 + 4) = v193;
  (*(v32 + 32))(&v81[v79], v74, v76);
  v83 = &v81[v80];
  v84 = v166;
  v85 = v169;
  v86 = v63;
  (*(v77 + 32))(v83, v78, v63);
  v87 = v173;
  v88 = v172;
  v89 = v165;
  sub_217967A4C();

  (*(v177 + 8))(v89, v88);
  v90 = v180;
  sub_21796720C();
  sub_2179678AC();
  (*(v181 + 8))(v90, v183);
  (*(v176 + 8))(v87, v85);
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v92 = qword_27CB979C8;
  v91 = unk_27CB979D0;
  v93 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796A340;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;

  v95 = sub_217968DDC();
  *(inited + 72) = MEMORY[0x277CD7E90];
  *(inited + 48) = v95;
  *(inited + 56) = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v97 = sub_217968EAC();
  v218 = v92;
  v219 = v91;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0x7473696C79616C70, 0xED00007972746E45);

  sub_2178ED924(v97, v218, v219, v93);
  v99 = v98;
  v101 = v100;
  v103 = v102;

  v218 = v85;
  v219 = v82;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = v185;
  v106 = v99;
  v107 = v184;
  sub_2178ED854(v106, v101, v103);

  (*(v182 + 8))(v84, v107);
  sub_21796742C();
  v108 = v212 + *(v86 + 88);
  v109 = *(v108 + 24);
  v110 = sub_217874614(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v217[6] = OpaqueTypeConformance2;
  v217[7] = v110;
  v111 = v188;
  v112 = swift_getWitnessTable();
  v113 = v186;
  sub_217967A0C();
  (*(v187 + 8))(v105, v111);
  sub_21796743C();
  v114 = *(v108 + 32);
  v115 = MEMORY[0x277CDF918];
  v217[4] = v112;
  v217[5] = MEMORY[0x277CDF918];
  v116 = v190;
  v117 = swift_getWitnessTable();
  v118 = v211;
  sub_217967A0C();
  (*(v189 + 8))(v113, v116);
  v217[2] = v117;
  v217[3] = v115;
  v119 = v207;
  v190 = swift_getWitnessTable();
  sub_2179560E4(v118, v119);
  v193 = *(v209 + 8);
  v193(v118, v119);
  v120 = v208;
  sub_217967D6C();
  LOBYTE(v114) = sub_21796742C();
  v121 = v214;
  sub_217872280();
  sub_21796660C();
  v122 = &v120[*(v195 + 36)];
  *v122 = v114;
  *(v122 + 1) = v123;
  *(v122 + 2) = v124;
  *(v122 + 3) = v125;
  *(v122 + 4) = v126;
  v122[40] = 0;
  v127 = v196;
  v128 = v194;
  v191(v196, v121, v194);
  v129 = __swift_storeEnumTagSinglePayload(v127, 0, 1, v128);
  v130 = v197;
  sub_2178D2780(v129, v131, v132, v133, v134, v135, v136, v137, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, WitnessTable, v172, v173);
  v138 = *(v198 + 48);
  v139 = v199;
  sub_2178745BC();
  sub_2178745BC();
  v140 = __swift_getEnumTagSinglePayload(v139, 1, v128) == 1;
  v141 = v128;
  v142 = v119;
  if (v140)
  {
    sub_2178653BC(v130, &qword_27CB8AB88, &qword_21796B168);
    sub_2178653BC(v127, &qword_27CB8AB88, &qword_21796B168);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v139 + v138, 1, v141);
    v144 = v210;
    if (EnumTagSinglePayload == 1)
    {
      sub_2178653BC(v139, &qword_27CB8AB88, &qword_21796B168);
      v145 = 0.0;
LABEL_10:
      v148 = v211;
      v149 = v209;
      goto LABEL_15;
    }

LABEL_9:
    sub_2178653BC(v139, &qword_27CB8AB80, &qword_21796B160);
    v145 = 1.0;
    goto LABEL_10;
  }

  v146 = v163;
  sub_2178745BC();
  v147 = __swift_getEnumTagSinglePayload(v139 + v138, 1, v141);
  if (v147 == 1)
  {
    sub_2178653BC(v130, &qword_27CB8AB88, &qword_21796B168);
    sub_2178653BC(v127, &qword_27CB8AB88, &qword_21796B168);
    (*(v162 + 8))(v146, v141);
    v144 = v210;
    goto LABEL_9;
  }

  v150 = v162;
  v151 = v161;
  (*(v162 + 32))(v161, v139 + v138, v141);
  sub_217874614(&qword_27CB8AB90, MEMORY[0x277CD8590]);
  LODWORD(v214) = sub_217968F1C();
  v152 = v127;
  v153 = *(v150 + 8);
  v153(v151, v141);
  sub_2178653BC(v130, &qword_27CB8AB88, &qword_21796B168);
  sub_2178653BC(v152, &qword_27CB8AB88, &qword_21796B168);
  v153(v146, v141);
  v142 = v207;
  sub_2178653BC(v139, &qword_27CB8AB88, &qword_21796B168);
  if (v214)
  {
    v145 = 0.0;
  }

  else
  {
    v145 = 1.0;
  }

  v148 = v211;
  v144 = v210;
  v149 = v209;
LABEL_15:
  v154 = v201;
  sub_217874564();
  v155 = v203;
  *&v154[*(v203 + 36)] = v145;
  sub_217874564();
  v156 = v204;
  sub_217874564();
  __swift_storeEnumTagSinglePayload(v156, 0, 1, v155);
  (*(v149 + 16))(v148, v144, v142);
  v218 = v148;
  v157 = v205;
  sub_2178745BC();
  v219 = v157;
  v217[0] = v142;
  v217[1] = v202;
  v215 = v190;
  v216 = sub_217874240(&qword_27CB8A7F8, &qword_27CB8A6F0, &qword_21796A8F0, sub_217864E3C);
  sub_2178B9390(&v218, 2, v217);
  sub_2178653BC(v156, &qword_27CB8A6F0, &qword_21796A8F0);
  v158 = v193;
  v193(v144, v142);
  sub_2178653BC(v157, &qword_27CB8A6F0, &qword_21796A8F0);
  return v158(v148, v142);
}

uint64_t sub_21787213C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  sub_217864B2C(&qword_27CB8AB28, &qword_27CB8AAE8, &qword_21796AFA0);
  sub_2179692AC();
  sub_2179692EC();
  result = sub_2179692DC();
  if (__OFSUB__(result, 30))
  {
    __break(1u);
  }

  else if (result - 30 < a1)
  {
    v6 = *(a3 + 64);
    v7 = *(a3 + 72);
    v8 = *(a3 + 80);
    _s23PlaylistDetailViewModelCMa(0);
    sub_217874614(&qword_27CB8AA38, _s23PlaylistDetailViewModelCMa);
    sub_2179666FC();
    sub_217904E24();
  }

  return result;
}

double sub_217872280()
{
  sub_2178767B4(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 104))(v0, v1) * 48.0;
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 + 32.0;
}

uint64_t sub_217872310(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB78, &qword_21796B158);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_21787237C@<X0>(void *a1@<X8>)
{
  v26 = a1;
  v1 = sub_2179671EC();
  v25 = *(v1 - 8);
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB98, &qword_21796BD70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ABA0, &qword_21796B190);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_21796677C();
  sub_2179671DC();
  sub_217864B2C(&qword_27CB8ABA8, &qword_27CB8AB98, &qword_21796BD70);
  sub_217874614(&qword_27CB8ABB0, MEMORY[0x277CDE330]);
  sub_21796766C();
  (*(v25 + 8))(v4, v1);
  (*(v6 + 8))(v9, v5);
  v18 = v11[2];
  v18(v15, v17, v10);
  v19 = v26;
  *v26 = 0;
  *(v19 + 8) = 1;
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ABB8, &qword_21796B198);
  v18(&v20[*(v21 + 48)], v15, v10);
  v22 = &v20[*(v21 + 64)];
  *v22 = 0;
  v22[8] = 1;
  v23 = v11[1];
  v23(v17, v10);
  return (v23)(v15, v10);
}

uint64_t sub_2178726CC()
{
  v1 = sub_217968E3C();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB38, &unk_21796B110);
  OUTLINED_FUNCTION_48(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = *(v0 + 64);
  v17 = *(v0 + 72);
  v18 = *(v0 + 80);
  _s23PlaylistDetailViewModelCMa(0);
  OUTLINED_FUNCTION_0_0();
  sub_217874614(v19, v20);
  sub_2179666FC();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57_0();
  sub_21796657C();

  sub_217968D6C();
  (*(v4 + 8))(v9, v1);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB40, &qword_21796BEC0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v21) == 1)
  {
    sub_2178653BC(v15, &qword_27CB8AB38, &unk_21796B110);
  }

  else
  {
    sub_2179680DC();
    v23 = v22;
    OUTLINED_FUNCTION_10(v21);
    v25 = *(v24 + 8);
    v26 = OUTLINED_FUNCTION_73_0();
    v27(v26);
    if (v23)
    {
      return OUTLINED_FUNCTION_47_0();
    }
  }

  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  OUTLINED_FUNCTION_87();
  sub_21796560C();
  return OUTLINED_FUNCTION_47_0();
}

void sub_217872970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_81();
  a19 = v21;
  a20 = v22;
  v106 = v23;
  v107 = v20;
  v99 = sub_21796852C();
  v24 = OUTLINED_FUNCTION_2(v99);
  v105 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_0();
  v98 = v28;
  OUTLINED_FUNCTION_46_0();
  v94 = sub_2179688CC();
  v29 = OUTLINED_FUNCTION_2(v94);
  v104 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_0();
  v93 = v33;
  OUTLINED_FUNCTION_46_0();
  v34 = sub_217968D8C();
  v35 = OUTLINED_FUNCTION_2(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14();
  v42 = v41 - v40;
  v113 = sub_217968DFC();
  v43 = OUTLINED_FUNCTION_2(v113);
  v110 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4_0();
  v112 = v47;
  v48 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB20, &unk_21796B100) - 8);
  v49 = *(*v48 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v50);
  v52 = &v89 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_3(v53);
  v55 = *(v54 + 16);
  v56 = OUTLINED_FUNCTION_63_0();
  v57(v56);
  v58 = v48[11];
  OUTLINED_FUNCTION_36_0();
  v60 = sub_217864B2C(v59, &qword_27CB8AAE8, &qword_21796AFA0);
  sub_2179692AC();
  v61 = v110++;
  v111 = (v61 + 2);
  v109 = v37 + 88;
  v108 = *MEMORY[0x277D2B410];
  v90 = v37;
  v100 = v37 + 96;
  v92 = v104 + 32;
  v97 = *MEMORY[0x277D2B428];
  v91 = v104 + 8;
  v96 = v105 + 32;
  v95 = v105 + 8;
  v104 = v42;
  v105 = v34;
  v102 = v58;
  v103 = v53;
  v101 = v60;
  do
  {
    sub_2179692EC();
    if (*&v52[v58] == v114)
    {
      break;
    }

    v62 = sub_21796934C();
    v63 = v112;
    v64 = v113;
    (*v111)(v112);
    v62(&v114, 0);
    sub_2179692FC();
    sub_217968D9C();
    (*v110)(v63, v64);
    v65 = OUTLINED_FUNCTION_65_0();
    v67 = v66(v65);
    if (v67 == v108)
    {
      v68 = OUTLINED_FUNCTION_65_0();
      v69(v68);
      OUTLINED_FUNCTION_38_0(&a18);
      v70(v98, v42, v99);
      v71 = *v107;
      v72 = v107[1];
      OUTLINED_FUNCTION_97(v106);
      OUTLINED_FUNCTION_23();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_51_0();
      sub_217966A9C();
      OUTLINED_FUNCTION_14_0();
      sub_217874614(&qword_27CB8A828, v73);
      OUTLINED_FUNCTION_49();
      sub_2178E0BC8();
      v75 = v74;

      OUTLINED_FUNCTION_51_0();
      sub_217966A9C();
      OUTLINED_FUNCTION_49();
      sub_2178E1804();
      v77 = v76;

      v78 = &a17;
    }

    else
    {
      if (v67 != v97)
      {
        (*(v90 + 8))(v42, v34);
        break;
      }

      v79 = OUTLINED_FUNCTION_65_0();
      v80(v79);
      OUTLINED_FUNCTION_38_0(&a14);
      v81(v93, v42, v94);
      v82 = *v107;
      v83 = v107[1];
      OUTLINED_FUNCTION_97(v106);
      OUTLINED_FUNCTION_23();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_90();
      sub_217966A9C();
      OUTLINED_FUNCTION_15_0();
      sub_217874614(&qword_27CB8A830, v84);
      OUTLINED_FUNCTION_49();
      sub_2178E0BC8();
      v75 = v85;

      OUTLINED_FUNCTION_90();
      sub_217966A9C();
      OUTLINED_FUNCTION_49();
      sub_2178E1804();
      v77 = v86;

      v78 = &a13;
    }

    OUTLINED_FUNCTION_38_0(v78);
    v87 = OUTLINED_FUNCTION_49();
    v88(v87);
    v42 = v104;
    v34 = v105;
    v58 = v102;
  }

  while ((v75 & 1) != 0 && (v77 & 1) != 0);
  sub_2178653BC(v52, &qword_27CB8AB20, &unk_21796B100);
  OUTLINED_FUNCTION_80();
}

uint64_t sub_217872FEC(char a1)
{
  sub_21796973C();
  MEMORY[0x21CEA86B0](a1 & 1);
  return sub_21796977C();
}

uint64_t sub_217873050()
{
  sub_21796973C();
  sub_217872FC4(v2, *v0);
  return sub_21796977C();
}

uint64_t sub_2178730FC()
{
  MEMORY[0x21CEA86B0](*v0);
  v1 = *(v0 + 8);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = *(v0 + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  v3 = *(v0 + 24);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = *(v0 + 32);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v4);
  v5 = *(v0 + 40);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v5);
}

uint64_t sub_217873198()
{
  sub_21796973C();
  sub_2178730FC();
  return sub_21796977C();
}

uint64_t sub_2178731E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (v8 || (v9 = sub_21796969C(), v10 = 0, (v9 & 1) != 0))
  {
    v10 = a3 ^ a6 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_217873264()
{
  sub_21796973C();
  sub_217873234();
  return sub_21796977C();
}

BOOL sub_2178732DC(_OWORD *a1, __int128 *a2, uint64_t a3)
{
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = *a2;
  v5 = a2[1];
  v10[2] = a1[2];
  v11[0] = v4;
  v6 = a2[2];
  v11[1] = v5;
  v11[2] = v6;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  return sub_217873090(v10, v11);
}

uint64_t sub_21787332C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_217873198();
}

uint64_t sub_217873368()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_2178730FC();
}

uint64_t sub_2178733A4()
{
  sub_21796973C();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_2178730FC();
  return sub_21796977C();
}

uint64_t sub_2178733FC(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  return sub_217873264();
}

uint64_t sub_217873410(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  return sub_217873234();
}

uint64_t sub_217873424(uint64_t a1, uint64_t a2)
{
  sub_21796973C();
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_217873234();
  return sub_21796977C();
}

uint64_t sub_217873470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return sub_2178731E0(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16));
}

void sub_217873498()
{
  v1 = sub_217968E3C();
  OUTLINED_FUNCTION_64_0(v1);
  v4 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v5 = *(v4 + *(v3 + 64));

  sub_2178667AC(v4);
}

uint64_t _s14PreviewControlV5StyleOwet(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2178735DC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2178736B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_217873708(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_217873748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_217873790(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  _s9ViewModelCMa();
  swift_getWitnessTable();
  sub_217966ADC();
  if (v3 <= 0x3F)
  {
    sub_2178641FC(319, &qword_27CB8A628, &qword_27CB8A630, qword_21796A7B0, MEMORY[0x277CDF468]);
    if (v4 <= 0x3F)
    {
      sub_217873A04();
      if (v5 <= 0x3F)
      {
        _s18PlaylistDetailViewV13LoadingReasonOMa();
        sub_21796944C();
        sub_217967C4C();
        if (v6 <= 0x3F)
        {
          sub_2178641FC(319, qword_27CB8AA40, &qword_27CB8A790, &qword_21796A968, MEMORY[0x277CE10B8]);
          if (v7 <= 0x3F)
          {
            sub_2178641FC(319, &qword_27CB8A638, &qword_27CB8A578, &qword_21796A750, MEMORY[0x277CE10B8]);
            if (v8 <= 0x3F)
            {
              _s18PlaylistDetailViewV11SearchStateVMa();
              sub_217967C4C();
              if (v9 <= 0x3F)
              {
                _s18PlaylistDetailViewV9ConstantsVMa();
                if (v10 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_217873A04()
{
  if (!qword_27CB8AA30)
  {
    _s23PlaylistDetailViewModelCMa(255);
    sub_217874614(&qword_27CB8AA38, _s23PlaylistDetailViewModelCMa);
    v0 = sub_21796670C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8AA30);
    }
  }
}

uint64_t sub_217873AB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_217873B84()
{
  result = qword_27CB8AAD8;
  if (!qword_27CB8AAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAD0, &unk_21796AF90);
    sub_217864B2C(&qword_27CB8AAE0, &qword_27CB8AAE8, &qword_21796AFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AAD8);
  }

  return result;
}

unint64_t sub_217873C34()
{
  result = qword_27CB8AB00;
  if (!qword_27CB8AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AB00);
  }

  return result;
}

uint64_t sub_217873C90()
{
  v2 = v0[4];
  v3 = v0[5];
  OUTLINED_FUNCTION_10_0();
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2178655D0;

  return sub_217869728(v6, v7, v0 + v5);
}

uint64_t sub_217873DC8()
{
  OUTLINED_FUNCTION_84();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_10_0();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_217864540;
  OUTLINED_FUNCTION_45();

  return sub_217869E88(v7, v8, v9);
}

uint64_t sub_217873EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = _s18PlaylistDetailViewVMa();
  OUTLINED_FUNCTION_48(v7);
  v9 = v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_21786BD9C(a1, v9, v5, v6, a2);
}

uint64_t objectdestroy_29Tm()
{
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = _s18PlaylistDetailViewVMa();
  OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  v11 = (v0 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
  v12 = *v11;

  if (v11[7])
  {
    if (v11[5])
    {
      __swift_destroy_boxed_opaque_existential_1(v11 + 2);
    }
  }

  else
  {
    v13 = v11[2];
  }

  OUTLINED_FUNCTION_62_0();
  v14 = v11[14];

  v15 = v11[16];

  v16 = OUTLINED_FUNCTION_79();
  if (!OUTLINED_FUNCTION_52_0(v16))
  {
    v17 = *(v1 + 8);

    v18 = *(v1 + 24);

    v19 = OUTLINED_FUNCTION_78();
    if (!OUTLINED_FUNCTION_55_0(v19))
    {
      v20 = *(v4 + 8);

      v21 = *(v3 + 20);
      v22 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_68_0(v22))
      {
        OUTLINED_FUNCTION_10(v21);
        (*(v23 + 8))(v4 + v31, v21);
      }
    }

    if (!OUTLINED_FUNCTION_44_0())
    {
      v24 = *(v2 + 8);

      v25 = *(v3 + 20);
      v26 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_54_0(v26))
      {
        OUTLINED_FUNCTION_10(v3);
        (*(v27 + 8))(v2 + v25, v3);
      }
    }
  }

  v28 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60) + 28));

  OUTLINED_FUNCTION_76_0();
  v29 = *(v1 + 24);

  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_66_0();
  sub_2178643E0(*(v1 + 24));
  OUTLINED_FUNCTION_58_0();

  return swift_deallocObject();
}

uint64_t sub_2178741C0(uint64_t (*a1)(void))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_10_0();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_45();

  return a1();
}

uint64_t sub_217874240(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2178742BC()
{
  result = qword_27CB8AB58;
  if (!qword_27CB8AB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AB48, &qword_21796B120);
    sub_217864B2C(&qword_27CB8AB60, &qword_27CB8AB68, &qword_21796B128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8AB58);
  }

  return result;
}

uint64_t sub_217874374@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = _s18PlaylistDetailViewVMa();
  OUTLINED_FUNCTION_64_0(v9);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = *(v12 + 64);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_48(v14);
  v16 = v3 + ((v11 + v13 + *(v15 + 80)) & ~*(v15 + 80));

  return sub_217870C8C(a1, a2, v3 + v11, v16, v7, v8, a3);
}

uint64_t sub_21787447C(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_217872310(a1, *(v1 + 32));
}

uint64_t sub_217874488()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_64_0(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  OUTLINED_FUNCTION_10_0();
  v9 = v0[4];
  v10 = v0 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_21787213C(v9, v0 + v5, v10);
}

uint64_t sub_217874564()
{
  OUTLINED_FUNCTION_86();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_63_0();
  v7(v6);
  return v0;
}

uint64_t sub_2178745BC()
{
  OUTLINED_FUNCTION_86();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_63_0();
  v7(v6);
  return v0;
}

uint64_t sub_217874614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_23Tm()
{
  v5 = v0[4];
  v6 = v0[5];
  v7 = _s18PlaylistDetailViewVMa();
  OUTLINED_FUNCTION_13(v7);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = v0[2];
  swift_unknownObjectRelease();
  v13 = (v0 + v9);
  v14 = *(v0 + v9);

  if (*(v0 + v9 + 56))
  {
    if (v13[5])
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 2);
    }
  }

  else
  {
    v15 = v13[2];
  }

  OUTLINED_FUNCTION_62_0();
  v16 = v13[14];

  v17 = v13[16];

  v18 = OUTLINED_FUNCTION_79();
  if (!OUTLINED_FUNCTION_52_0(v18))
  {
    v19 = *(v1 + 8);

    v20 = *(v1 + 24);

    v21 = OUTLINED_FUNCTION_78();
    if (!OUTLINED_FUNCTION_55_0(v21))
    {
      v22 = *(v4 + 8);

      v23 = *(v3 + 20);
      v24 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_68_0(v24))
      {
        OUTLINED_FUNCTION_10(v23);
        (*(v25 + 8))(v4 + v33, v23);
      }
    }

    if (!OUTLINED_FUNCTION_44_0())
    {
      v26 = *(v2 + 8);

      v27 = *(v3 + 20);
      v28 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_54_0(v28))
      {
        OUTLINED_FUNCTION_10(v3);
        (*(v29 + 8))(v2 + v27, v3);
      }
    }
  }

  v30 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8A598, &unk_21796AD60) + 28));

  OUTLINED_FUNCTION_76_0();
  v31 = *(v1 + 24);

  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_66_0();
  sub_2178643E0(*(v1 + 24));
  OUTLINED_FUNCTION_58_0();

  return swift_deallocObject();
}

uint64_t sub_217874868(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = _s18PlaylistDetailViewVMa();
  OUTLINED_FUNCTION_48(v6);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2178655D0;

  return sub_2178709E8(a1, v9, v10, v1 + v8, v4, v5);
}

uint64_t sub_217874970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_0()
{
  v0 = _s18PlaylistDetailViewVMa();
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44_0()
{
  v4 = v0 + *(v1 + 28);

  return __swift_getEnumTagSinglePayload(v4, 1, v2);
}

uint64_t OUTLINED_FUNCTION_50_0()
{
  sub_2178643E0(*(v1 + *(v0 + 68)));
  v2 = *(v1 + *(v0 + 72) + 16);
}

uint64_t OUTLINED_FUNCTION_52_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_2179666FC();
}

uint64_t OUTLINED_FUNCTION_54_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_56_0()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  v3 = *(v1 + *(v0 + 84) + 8);
}

uint64_t OUTLINED_FUNCTION_62_0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  sub_217873C88();
  v4 = *(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_66_0()
{
  sub_2178643E0(*(v1 + 24));
  v3 = *(v2 + *(v0 + 80) + 16);
}

uint64_t OUTLINED_FUNCTION_67_0()
{
  sub_2178643E0(*(v1 + 24));
  v3 = *(v2 + *(v0 + 76) + 16);
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return sub_21796657C();
}

void OUTLINED_FUNCTION_75_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, os_log_type_t a15)
{

  _os_log_impl(a1, v15, a15, a4, v16, 0x16u);
}

uint64_t OUTLINED_FUNCTION_76_0()
{
  v3 = *(v1 + *(v0 + 60) + 8);
}

uint64_t OUTLINED_FUNCTION_77(float a1)
{
  *v1 = a1;
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);

  return sub_2179666FC();
}

uint64_t OUTLINED_FUNCTION_78()
{
  v3 = v0 + *(v1 + 24);

  return _s5AlertV7ControlVMa(0);
}

uint64_t OUTLINED_FUNCTION_79()
{
  v3 = v1 + *(v0 + 56);

  return _s5AlertVMa(0);
}

uint64_t OUTLINED_FUNCTION_82(uint64_t a1)
{
  v3 = *(v1 + 504);
  *(a1 + 16) = *(v1 + 512);
  *(a1 + 24) = v3;
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_94()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_217966A9C();
}

uint64_t OUTLINED_FUNCTION_96()
{
}

uint64_t OUTLINED_FUNCTION_97@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return _s9ViewModelCMa();
}

unint64_t sub_2178750E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_217875494();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_217875170(uint64_t result, unsigned int a2, uint64_t a3)
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
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2178752AC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
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
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_217875494()
{
  result = qword_2811AD2E0;
  if (!qword_2811AD2E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2811AD2E0);
  }

  return result;
}

uint64_t sub_217875520(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  (*(v5 + 168))(a1, *(v2 + *(a2 + 36)), *(v2 + *(a2 + 36) + 8), v6, v5);
  swift_getAssociatedConformanceWitness();
  sub_2179560E4(v15, AssociatedTypeWitness);
  v18 = *(v9 + 8);
  v18(v15, AssociatedTypeWitness);
  sub_2179560E4(v17, AssociatedTypeWitness);
  return (v18)(v17, AssociatedTypeWitness);
}

uint64_t sub_2178756C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = _s38IndividualItemBasedAccessibilityActionVMa();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_217875778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a6;
  v27 = a7;
  v28 = a4;
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s38IndividualItemBasedAccessibilityActionVMa();
  OUTLINED_FUNCTION_0_1();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v25 = &v27 - v24;
  (*(v12 + 16))(v17, a1, a5);
  sub_2178756C0(v17, a2, a3, a5, v25);

  MEMORY[0x21CEA69A0](v25, v28, v18, v29);
  return (*(v20 + 8))(v25, v18);
}

uint64_t MusicLibraryPlaylistEditViewModel.coverArtworkRecipes.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v36 - v3;
  v5 = sub_21796809C();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  v14 = sub_217968DFC();
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB88, &qword_21796B168);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v36 - v25;
  v27 = sub_217965CEC();
  if (v27)
  {
    return v27;
  }

  v29 = v8;
  result = sub_217965D1C();
  v31 = result;
  v39 = *(result + 16);
  if (!v39)
  {

    v35 = 1;
LABEL_11:
    __swift_storeEnumTagSinglePayload(v26, v35, 1, v14);
    v28 = sub_217917224(v26);

    sub_217965CFC();
    sub_217875F0C(v26, &qword_27CB8AB88, &qword_21796B168);
    return v28;
  }

  v36[0] = v26;
  v36[1] = v0;
  v32 = 0;
  v37 = result + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v38 = v5;
  v36[2] = v17 + 16;
  while (v32 < *(v31 + 16))
  {
    (*(v17 + 16))(v22, v37 + *(v17 + 72) * v32, v14);
    sub_2179684BC();
    sub_21796808C();
    (*(v29 + 8))(v13, v38);
    v33 = sub_21796862C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v33);
    sub_217875F0C(v4, &qword_27CB8AC40, &qword_21796B248);
    if (EnumTagSinglePayload != 1)
    {

      v26 = v36[0];
      (*(v17 + 32))(v36[0], v22, v14);
      v35 = 0;
      goto LABEL_11;
    }

    ++v32;
    result = (*(v17 + 8))(v22, v14);
    if (v39 == v32)
    {

      v35 = 1;
      v26 = v36[0];
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t MusicLibraryPlaylistEditViewModel.artwork(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a1;
  v3 = sub_21796877C();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v29 - v16;
  v18 = sub_217968E3C();
  v19 = OUTLINED_FUNCTION_2(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14();
  v26 = v25 - v24;
  sub_217965D2C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_217875F0C(v17, qword_27CB8AC48, &unk_21796FF10);
    v27 = sub_217968C2C();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v27);
  }

  else
  {
    (*(v21 + 32))(v26, v17, v18);
    sub_21796604C();
    (*(v6 + 16))(v11, v13, v3);
    sub_217968D7C();
    sub_217968B3C();
    (*(v6 + 8))(v13, v3);
    return (*(v21 + 8))(v26, v18);
  }
}

uint64_t sub_217875F0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t MusicLibraryPlaylistEditViewModel.select(_:)()
{
  v0 = sub_21796877C();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  sub_21796604C();
  sub_21796876C();
  (*(v3 + 8))(v8, v0);
  return sub_217965CDC();
}

void sub_217876050(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  sub_21796810C();
  if (v3 <= 0x3F)
  {
    sub_217876140();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_217876140()
{
  if (!qword_27CB8ACD0)
  {
    v0 = sub_21796944C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8ACD0);
    }
  }
}

uint64_t sub_217876190(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1 == *a2 && a1[1] == a2[1];
  if (!v7 && (sub_21796969C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v8 = _s31AdditionalContentViewPropertiesVMa();
  v9 = v8[9];
  v10 = *(a4 + 8);
  v11 = *(*(a4 + 32) + 8);
  if ((sub_2179680FC() & 1) == 0)
  {
    goto LABEL_20;
  }

  v12 = v8[10];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13 == 11)
  {
    if (v14 != 11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v14 == 11)
    {
      goto LABEL_20;
    }

    v15 = sub_217947F10(v13);
    v17 = v16;
    if (v15 == sub_217947F10(v14) && v17 == v18)
    {
    }

    else
    {
      v20 = sub_21796969C();

      if ((v20 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  v21 = v8[11];
  v23 = *(a1 + v21 + 8);
  v22 = *(a1 + v21 + 16);
  v24 = *(a1 + v21 + 24);
  LOBYTE(v35[0]) = *(a1 + v21);
  v35[1] = v23;
  v35[2] = v22;
  v36 = v24;
  v25 = a2 + v21;
  v26 = *(v25 + 1);
  v27 = *(v25 + 2);
  v28 = *(v25 + 3);
  LOBYTE(v33[0]) = *v25;
  v33[1] = v26;
  v33[2] = v27;
  v34 = v28;

  sub_217863EC4(v24);

  sub_217863EC4(v28);
  LOBYTE(v24) = static MusicPicker.Click.SourceContext.== infix(_:_:)(v35, v33);
  v29 = v34;

  sub_2178643E0(v29);
  v30 = v36;

  sub_2178643E0(v30);
  if ((v24 & 1) != 0 && *(a1 + v8[12]) == *(a2 + v8[12]))
  {
    v31 = *(a1 + v8[13]) ^ *(a2 + v8[13]) ^ 1;
    return v31 & 1;
  }

LABEL_20:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_217876380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v2[1];
  sub_217968FCC();
  v8 = *(a2 + 36);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(v10 + 8);
  sub_21796810C();
  v20 = *(v10 + 32);
  swift_getWitnessTable();
  sub_217968ECC();
  v12 = *(v3 + *(a2 + 40));
  sub_21796975C();
  if (v12 != 11)
  {
    sub_217947F10(v12);
    sub_217968FCC();
  }

  v13 = (v3 + *(a2 + 44));
  v14 = v13[1];
  v15 = v13[2];
  v16 = v13[3];
  MEMORY[0x21CEA86B0](*v13);
  sub_21796975C();
  if (v15)
  {
    sub_217968FCC();
  }

  MusicPicker.PageID.hash(into:)(a1);
  v17 = *(v3 + *(a2 + 48));
  sub_21796975C();
  v18 = *(v3 + *(a2 + 52));
  return sub_21796975C();
}

uint64_t sub_2178764F0(uint64_t a1)
{
  sub_21796973C();
  sub_217876380(v3, a1);
  return sub_21796977C();
}

__n128 sub_217876538@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, char *a8@<X8>, uint64_t a9)
{
  v13 = *a5;
  v21 = *(a5 + 8);
  v14 = *(a5 + 3);
  *a8 = a1;
  *(a8 + 1) = a2;
  v15 = _s31AdditionalContentViewPropertiesVMa();
  v16 = v15[9];
  v17 = *(a9 + 8);
  v18 = sub_21796810C();
  (*(*(v18 - 8) + 32))(&a8[v16], a3, v18);
  a8[v15[10]] = a4;
  v19 = &a8[v15[11]];
  *v19 = v13;
  result = v21;
  *(v19 + 8) = v21;
  *(v19 + 3) = v14;
  a8[v15[12]] = a6;
  a8[v15[13]] = a7;
  return result;
}

uint64_t sub_21787666C(uint64_t a1, uint64_t a2)
{
  sub_21796973C();
  sub_217876380(v4, a2);
  return sub_21796977C();
}

uint64_t sub_2178766B0()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  v0 = qword_27CB978B8;
  result = sub_217967B5C();
  qword_27CB977B8 = result;
  return result;
}

uint64_t sub_217876720()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  v0 = qword_27CB978B8;
  result = sub_217967B5C();
  qword_27CB977C0 = result;
  return result;
}

uint64_t sub_217876790()
{
  result = sub_217967ABC();
  qword_27CB977C8 = result;
  return result;
}

uint64_t sub_2178767B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_217968DFC();
  v13 = v3;
  OUTLINED_FUNCTION_30_0();
  v14 = sub_21788D650(v4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  v6 = *(*(v3 - 8) + 16);
  v6(boxed_opaque_existential_1, v1, v3);
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if (swift_dynamicCast())
  {
    sub_21784A7D4(v10, a1);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_21788D4D0(v10, &qword_27CB8B088);
    __swift_destroy_boxed_opaque_existential_1(v12);
    a1[3] = v3;
    OUTLINED_FUNCTION_30_0();
    a1[4] = sub_21788D650(v8);
    v9 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (v6)(v9, v1, v3);
  }
}

uint64_t sub_217876960@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_217968AFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *(v4 + 16);
  v7(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B068, &unk_21796B720);
  if (swift_dynamicCast())
  {
    sub_21784A7D4(v12, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_217967F0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
    if (swift_dynamicCast())
    {
      sub_21784A7D4(v10, a1);
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }

    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_21788D4D0(v10, &qword_27CB8B088);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_21788D4D0(v12, &qword_27CB8B070);
  }

  a1[3] = v3;
  a1[4] = sub_21788D650(&qword_27CB8AAF8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (v7)(boxed_opaque_existential_1, v1, v3);
}

unint64_t sub_217876BA4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v46 = *a2;
  v45 = *(a2 + 1);
  v47 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = _s16ArtistDetailViewVMa();
  v7 = (a4 + v6[11]);
  _s9ViewModelCMa();
  swift_getWitnessTable();
  *v7 = sub_217966ACC();
  v7[1] = v8;
  v9 = a4 + v6[12];
  *v9 = swift_getKeyPath();
  *(v9 + 40) = 0;
  v10 = a4 + v6[13];
  *v10 = sub_21785853C() & 1;
  *(v10 + 8) = v11;
  v12 = a4 + v6[18];
  *v12 = xmmword_21796B300;
  *(v12 + 16) = xmmword_21796B310;
  *(v12 + 32) = xmmword_21796B320;
  *(v12 + 48) = 0x4022000000000000;
  v13 = v6[19];
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  v14 = (a4 + v13);
  OUTLINED_FUNCTION_65_1();
  v15 = sub_21796560C();
  v40 = v16;
  v41 = v15;
  *v14 = v15;
  v14[1] = v16;
  v17 = (a4 + v6[20]);

  OUTLINED_FUNCTION_65_1();
  v18 = sub_21796560C();
  v38 = v19;
  v39 = v18;
  *v17 = v18;
  v17[1] = v19;
  v20 = sub_217968AFC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a4, a1, v20);
  *(a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ACD8, &qword_21796B3A8) + 28)) = 0;
  v22 = a4 + v6[9];
  *v22 = v46;
  *(v22 + 8) = v45;
  *(v22 + 16) = v47;
  *(v22 + 24) = v5;
  *(a4 + v6[10]) = a3 & 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A588, &unk_21796ACE0);
  v43 = swift_allocBox();
  v25 = v24;
  v37 = v5;
  v26 = v24 + *(v23 + 48);
  (*(v21 + 32))(v24, a1, v20);
  v27 = *MEMORY[0x277D2A418];
  v28 = sub_21796595C();
  OUTLINED_FUNCTION_3(v28);
  (*(v29 + 104))(v25, v27);
  *v26 = v46;
  *(v26 + 8) = v45;
  *(v26 + 16) = v47;
  *(v26 + 24) = v37;
  v30 = v6[14];
  *(a4 + v30) = v43 | 0x2000000000000000;
  v31 = a4 + v6[15];
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 0;
  *(v31 + 24) = v43 | 0x2000000000000000;
  v32 = *(a4 + v30);
  v33 = a4 + v6[16];
  *v33 = 3;
  *(v33 + 8) = v41;
  *(v33 + 16) = v40;
  *(v33 + 24) = v32;
  v34 = *(a4 + v30);
  v35 = a4 + v6[17];
  *v35 = 3;
  *(v35 + 8) = v39;
  *(v35 + 16) = v38;
  *(v35 + 24) = v34;

  sub_217863EC4(v37);
  sub_217863EC4(v43 | 0x2000000000000000);
  sub_217863EC4(v32);

  return sub_217863EC4(v34);
}

uint64_t sub_217876FA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ACD8, &qword_21796B3A8);

  return sub_217967C1C();
}

uint64_t sub_217876FE8(uint64_t a1)
{
  v2 = sub_217968AFC();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  v8 = *(v5 + 16);
  OUTLINED_FUNCTION_45();
  v9();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8ACD8, &qword_21796B3A8);
  sub_217967C2C();
  return (*(v5 + 8))(a1, v2);
}

uint64_t sub_2178770D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_217968AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217876FA0();
  sub_2179381F4();
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  if (v10)
  {
    v11 = (v2 + *(a1 + 44));
    v12 = *v11;
    v13 = v11[1];
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    _s9ViewModelCMa();
    swift_getWitnessTable();
    sub_217966A9C();
    sub_2178D83B0();
    v17 = v16;

    v18 = v17 ^ 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_217877224(uint64_t a1)
{
  v37 = a1;
  v34 = sub_217967DCC();
  v1 = *(v34 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21796613C();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v39);
  v36 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = v29 - v8;
  v9 = sub_217967DBC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AF18, &qword_21796B630);
  v14 = *(v1 + 72);
  v33 = v1;
  v15 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21796B330;
  v31 = v15;
  v40 = xmmword_21796B340;
  *v13 = xmmword_21796B340;
  v17 = *MEMORY[0x277CDF108];
  v18 = *(v10 + 104);
  v18(v13, v17, v9);
  v19 = *(v38 + *(v37 + 72) + 32);
  sub_217967DDC();
  *v13 = v40;
  LODWORD(v37) = v17;
  v38 = v9;
  v20 = v9;
  v21 = v14;
  v30 = v18;
  v18(v13, v17, v20);
  v29[1] = v19;
  sub_217967DDC();
  v22 = v35;
  sub_21796612C();
  v23 = v36;
  v24 = v39;
  (*(v4 + 104))(v36, *MEMORY[0x277D2AC70], v39);
  v25 = sub_21796611C();
  v26 = *(v4 + 8);
  v26(v23, v24);
  v26(v22, v24);
  if (v25)
  {
    *v13 = v40;
    v30(v13, v37, v38);
    v27 = v32;
    sub_217967DDC();
    v16 = sub_2178E7F04(1uLL, 3, 1, v16);
    *(v16 + 16) = 3;
    (*(v33 + 32))(v16 + v31 + 2 * v21, v27, v34);
  }

  return v16;
}

uint64_t sub_21787762C()
{
  v0 = sub_217968AFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0B0, &unk_21796BF60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  sub_217876FA0();
  sub_217968A5C();
  (*(v1 + 8))(v4, v0);
  v9 = sub_2179689AC();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21788D4D0(v8, &qword_27CB8B0B0);
  }

  else
  {
    v10 = sub_2179688DC();
    (*(*(v9 - 8) + 8))(v8, v9);
    if (v10 != 2 && (v10 & 1) != 0)
    {
      if (qword_27CB8A380 == -1)
      {
        return sub_21796560C();
      }

      goto LABEL_9;
    }
  }

  if (qword_27CB8A380 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_2178778EC()
{
  v0 = sub_217968AFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A770, &qword_21796A948);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  sub_217876FA0();
  sub_217968A6C();
  (*(v1 + 8))(v4, v0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A778, &unk_21796A950);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21788D4D0(v8, &qword_27CB8A770);
  }

  else
  {
    v10 = sub_2179680DC();
    v12 = v11;
    (*(*(v9 - 8) + 8))(v8, v9);
    if (v12)
    {
      return v10;
    }
  }

  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217877B30()
{
  v0 = sub_217968AFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  sub_217876FA0();
  sub_217968ADC();
  (*(v1 + 8))(v4, v0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21788D4D0(v8, &qword_27CB8B0A0);
  }

  else
  {
    v10 = sub_2179680DC();
    v12 = v11;
    (*(*(v9 - 8) + 8))(v8, v9);
    if (v12)
    {
      return v10;
    }
  }

  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217877D78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_217968AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A770, &qword_21796A948);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  sub_217876FA0();
  sub_217968AAC();
  (*(v5 + 8))(v8, v4);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A778, &unk_21796A950);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_21788D4D0(v12, &qword_27CB8A770);
LABEL_4:
    v17 = (v2 + *(a1 + 76));
    v14 = *v17;
    v18 = v17[1];

    return v14;
  }

  v14 = sub_2179680DC();
  v16 = v15;
  (*(*(v13 - 8) + 8))(v12, v13);
  if (!v16)
  {
    goto LABEL_4;
  }

  return v14;
}

uint64_t sub_217877F58()
{
  v0 = sub_217968AFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B090, &qword_21796B748);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  sub_217876FA0();
  sub_217968AEC();
  (*(v1 + 8))(v4, v0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B098, &qword_21796B750);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21788D4D0(v8, &qword_27CB8B090);
  }

  else
  {
    v10 = sub_2179680DC();
    v12 = v11;
    (*(*(v9 - 8) + 8))(v8, v9);
    if (v12)
    {
      return v10;
    }
  }

  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_2178781A4()
{
  v0 = sub_217968AFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A770, &qword_21796A948);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  sub_217876FA0();
  sub_217968ABC();
  (*(v1 + 8))(v4, v0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A778, &unk_21796A950);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21788D4D0(v8, &qword_27CB8A770);
  }

  else
  {
    v10 = sub_2179680DC();
    v12 = v11;
    (*(*(v9 - 8) + 8))(v8, v9);
    if (v12)
    {
      return v10;
    }
  }

  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_2178783F4()
{
  v0 = sub_217968AFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A770, &qword_21796A948);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  sub_217876FA0();
  sub_217968A8C();
  (*(v1 + 8))(v4, v0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A778, &unk_21796A950);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21788D4D0(v8, &qword_27CB8A770);
  }

  else
  {
    v10 = sub_2179680DC();
    v12 = v11;
    (*(*(v9 - 8) + 8))(v8, v9);
    if (v12)
    {
      return v10;
    }
  }

  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217878640()
{
  v0 = sub_217968AFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A770, &qword_21796A948);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  sub_217876FA0();
  sub_217968A7C();
  (*(v1 + 8))(v4, v0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A778, &unk_21796A950);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_21788D4D0(v8, &qword_27CB8A770);
  }

  else
  {
    v10 = sub_2179680DC();
    v12 = v11;
    (*(*(v9 - 8) + 8))(v8, v9);
    if (v12)
    {
      return v10;
    }
  }

  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

BOOL sub_217878888(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_21796809C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_217968AFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217876FA0();
  sub_2179684BC();
  (*(v14 + 8))(v17, v13);
  sub_21796808C();
  (*(v9 + 8))(v12, v8);
  v18 = sub_21796862C();
  v19 = 1;
  LODWORD(v8) = __swift_getEnumTagSinglePayload(v7, 1, v18);
  sub_21788D4D0(v7, &qword_27CB8AC40);
  if (v8 != 1)
  {
    v20 = (v2 + *(a1 + 44));
    v21 = *v20;
    v22 = v20[1];
    v23 = *(a1 + 16);
    v24 = *(a1 + 24);
    _s9ViewModelCMa();
    swift_getWitnessTable();
    sub_217966A9C();
    sub_2178D8634();
    v26 = v25;

    v27 = *(v26 + 16);
    v28 = (v26 + 32);
    do
    {
      v19 = v27 == 0;
      if (!v27)
      {
        break;
      }

      if ((*v28 & 1) == 0)
      {

        break;
      }

      v29 = sub_21796969C();

      ++v28;
      --v27;
    }

    while ((v29 & 1) == 0);
  }

  return v19;
}

void sub_217878B90()
{
  OUTLINED_FUNCTION_81();
  v121 = v0;
  v122 = v1;
  v126 = v2;
  v3 = v1;
  v124 = *(v1 - 8);
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v1);
  v123 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  v5 = sub_2179689AC();
  v113 = v5;
  v131 = *(v3 + 16);
  v6 = v131;
  OUTLINED_FUNCTION_23_1();
  v112 = sub_21788D650(v7);
  v130 = *(v3 + 24);
  v165 = v5;
  v166 = v6;
  v167 = v112;
  v168 = v130;
  OUTLINED_FUNCTION_11_0();
  _s19ContainerHeaderCellVMa();
  v8 = OUTLINED_FUNCTION_36_1();
  v165 = v6;
  v166 = MEMORY[0x277D84A98];
  v167 = v8;
  v168 = MEMORY[0x277CE1538];
  OUTLINED_FUNCTION_11_0();
  sub_21796688C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  OUTLINED_FUNCTION_9();
  v9 = sub_21796698C();
  v10 = sub_2179669FC();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_20_1();
  v12 = sub_21788D5B8(v11);
  OUTLINED_FUNCTION_12_0(v12);
  v132 = v13;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_18_1();
  v16 = sub_21788D650(v15);
  v165 = v9;
  v166 = v10;
  v167 = WitnessTable;
  v168 = v16;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_50_1();
  v129 = sub_21796732C();
  OUTLINED_FUNCTION_42_0();
  sub_21796698C();
  OUTLINED_FUNCTION_50_1();
  v17 = sub_217966FAC();
  v165 = v9;
  v166 = v10;
  v167 = WitnessTable;
  v168 = v16;
  v18 = OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_1_0();
  v120 = sub_21788D650(v19);
  v163 = v18;
  v164 = v120;
  v20 = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_0();
  v22 = sub_21788D650(v21);
  v165 = &qword_27CB8ADF0;
  v166 = v17;
  v167 = v20;
  v168 = v22;
  OUTLINED_FUNCTION_11_0();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_19_0();
  v127 = v23;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  v165 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  v25 = v112;
  v26 = v113;
  v28 = v130;
  v27 = v131;
  v158 = v113;
  v159 = v131;
  v160 = v112;
  v161 = v130;
  OUTLINED_FUNCTION_39_1();
  _s13ItemShelfCellVMa();
  OUTLINED_FUNCTION_8();
  v29 = sub_21796698C();
  OUTLINED_FUNCTION_24();
  v119 = v30;
  v32 = sub_21788D5B8(v31);
  v114 = v32;
  v128 = sub_21786438C();
  v158 = v24;
  v159 = MEMORY[0x277CD7E90];
  v160 = v29;
  v161 = v32;
  v162 = v128;
  OUTLINED_FUNCTION_39_1();
  sub_217967D9C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  v166 = sub_21796944C();
  v33 = sub_2179688CC();
  OUTLINED_FUNCTION_29_1();
  v35 = sub_21788D650(v34);
  v158 = v33;
  v159 = v27;
  v160 = v35;
  v161 = v28;
  OUTLINED_FUNCTION_39_1();
  _s9ItemShelfVMa();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  v167 = sub_21796944C();
  v158 = v26;
  v159 = v27;
  v160 = v25;
  v161 = v28;
  OUTLINED_FUNCTION_39_1();
  _s14ContainerShelfVMa();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  v168 = sub_21796944C();
  v36 = sub_217968E3C();
  OUTLINED_FUNCTION_27_1();
  v38 = sub_21788D650(v37);
  v158 = v36;
  v159 = v27;
  v160 = v38;
  v161 = v28;
  OUTLINED_FUNCTION_39_1();
  _s14ContainerShelfVMa();
  OUTLINED_FUNCTION_8();
  v169 = sub_21796944C();
  v170 = sub_21796944C();
  v171 = v170;
  v172 = v170;
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  sub_217966F9C();
  OUTLINED_FUNCTION_18_0();
  v39 = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_0(v39, MEMORY[0x277CE1410]);
  v118 = v40;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v117 = sub_21796666C();
  v116 = sub_21796698C();
  v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE18, &qword_21796B518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  v165 = v26;
  v166 = v27;
  v167 = v25;
  v168 = v28;
  v42 = v28;
  OUTLINED_FUNCTION_11_0();
  _s9VItemCellVMa();
  v43 = sub_21796698C();
  v165 = v41;
  v166 = MEMORY[0x277CD7E90];
  v167 = v43;
  v168 = v114;
  v169 = v128;
  OUTLINED_FUNCTION_11_0();
  sub_217967D9C();
  OUTLINED_FUNCTION_22_0();
  v44 = swift_getWitnessTable();
  v45 = v120;
  v156 = v44;
  v157 = v120;
  v155 = swift_getWitnessTable();
  v113 = MEMORY[0x277CE1290];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967E8C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_8();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  v114 = sub_21796944C();
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE20, &qword_21796B520);
  v48 = sub_21796852C();
  OUTLINED_FUNCTION_21_1();
  v50 = sub_21788D650(v49);
  v165 = v48;
  v166 = v27;
  v167 = v50;
  v168 = v42;
  OUTLINED_FUNCTION_11_0();
  _s13ItemShelfCellVMa();
  v51 = sub_21796698C();
  v52 = sub_21788D5B8(&unk_27CB8AE28);
  v165 = v47;
  v166 = MEMORY[0x277CD7E90];
  v167 = v51;
  v168 = v52;
  v169 = v128;
  OUTLINED_FUNCTION_11_0();
  sub_217967D9C();
  OUTLINED_FUNCTION_42_0();
  sub_21796698C();
  OUTLINED_FUNCTION_19_1();
  v153 = swift_getWitnessTable();
  v154 = v45;
  v152 = swift_getWitnessTable();
  v150 = swift_getWitnessTable();
  v151 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  OUTLINED_FUNCTION_8();
  sub_21796944C();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_60_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE30, &unk_21796B528);
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8();
  sub_217967E9C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_93();
  sub_21796698C();
  OUTLINED_FUNCTION_17_1();
  v148 = swift_getWitnessTable();
  v149 = v45;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_217967CDC();
  OUTLINED_FUNCTION_93();
  sub_217966F9C();
  v146 = swift_getWitnessTable();
  v147 = v45;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_1();
  v129 = v53;
  v54 = swift_getWitnessTable();
  v144 = v46;
  v145 = v54;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  v55 = sub_21796686C();
  OUTLINED_FUNCTION_19();
  v56 = swift_getWitnessTable();
  v57 = sub_217873C34();
  v58 = MEMORY[0x277D837D0];
  v165 = v55;
  v166 = MEMORY[0x277D837D0];
  v167 = v56;
  v168 = v57;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v165 = v55;
  v166 = v58;
  v167 = v56;
  v168 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v165 = OpaqueTypeMetadata2;
  v166 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_93();
  v61 = v130;
  _s18NavigationBarStyleVMa();
  sub_21796698C();
  v62 = OUTLINED_FUNCTION_56_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v62, v63);
  OUTLINED_FUNCTION_9();
  v64 = sub_21796698C();
  v165 = OpaqueTypeMetadata2;
  v166 = OpaqueTypeConformance2;
  v65 = OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_17();
  v66 = swift_getWitnessTable();
  v142 = v65;
  v143 = v66;
  v67 = swift_getWitnessTable();
  v68 = OUTLINED_FUNCTION_37_0(&qword_27CB8A890);
  v140 = v67;
  v141 = v68;
  v69 = swift_getWitnessTable();
  v165 = v64;
  v166 = v69;
  v120 = swift_getOpaqueTypeMetadata2();
  v165 = v64;
  v166 = v69;
  v119 = swift_getOpaqueTypeConformance2();
  v70 = sub_217967CDC();
  OUTLINED_FUNCTION_2(v70);
  v128 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v74);
  v76 = &v111 - v75;
  v77 = v131;
  done = _s15DoneToolbarItemVMa();
  OUTLINED_FUNCTION_16();
  v79 = swift_getWitnessTable();
  v165 = done;
  v166 = v79;
  v80 = swift_getOpaqueTypeMetadata2();
  v113 = swift_getWitnessTable();
  v165 = done;
  v166 = v79;
  v112 = swift_getOpaqueTypeConformance2();
  v165 = v70;
  v166 = v80;
  OUTLINED_FUNCTION_26_1(v112);
  v117 = v81;
  v115 = swift_getOpaqueTypeMetadata2();
  v127 = *(v115 - 8);
  v82 = *(v127 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v83);
  v111 = &v111 - v84;
  v118 = sub_21796698C();
  v85 = OUTLINED_FUNCTION_2(v118);
  v129 = v86;
  v88 = *(v87 + 64);
  v89 = MEMORY[0x28223BE20](v85);
  v114 = &v111 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89);
  v116 = &v111 - v91;
  sub_217966E6C();
  v135 = v77;
  v136 = v61;
  v92 = v121;
  v137 = v121;
  sub_217967CCC();
  v133 = v77;
  v134 = v61;
  v93 = swift_checkMetadataState();
  v94 = v70;
  v95 = v112;
  v96 = v113;
  sub_217967A1C();
  (*(v128 + 8))(v76, v94);
  v98 = v123;
  v97 = v124;
  v99 = v122;
  (*(v124 + 16))(v123, v92, v122);
  v100 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v101 = swift_allocObject();
  v102 = v130;
  *(v101 + 16) = v131;
  *(v101 + 24) = v102;
  (*(v97 + 32))(v101 + v100, v98, v99);
  v165 = v94;
  v166 = v93;
  v167 = v96;
  v168 = v95;
  v103 = swift_getOpaqueTypeConformance2();
  v105 = v114;
  v104 = v115;
  v106 = v111;
  sub_2178D0790(sub_21788C3C4, v101, v115, v103);

  (*(v127 + 8))(v106, v104);
  v107 = sub_217864644();
  v138 = v103;
  v139 = v107;
  v108 = v118;
  swift_getWitnessTable();
  v109 = v116;
  sub_2179560E4(v105, v108);
  v110 = *(v129 + 8);
  v110(v105, v108);
  sub_2179560E4(v109, v108);
  v110(v109, v108);
  OUTLINED_FUNCTION_80();
}

uint64_t sub_217879AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v151 = a1;
  v147 = a4;
  v6 = sub_21796923C();
  v145 = *(v6 - 8);
  v146 = v6;
  v7 = *(v145 + 64);
  MEMORY[0x28223BE20](v6);
  v144 = v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2;
  v10 = a3;
  v153 = a3;
  v150 = _s16ArtistDetailViewVMa();
  v142 = *(v150 - 8);
  v143 = *(v142 + 64);
  MEMORY[0x28223BE20](v150);
  v141 = v119 - v11;
  v12 = sub_217966CEC();
  v139 = *(v12 - 8);
  v140 = v12;
  v13 = *(v139 + 64);
  MEMORY[0x28223BE20](v12);
  v138 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_217968AFC();
  v136 = *(v15 - 8);
  v137 = v15;
  v16 = *(v136 + 64);
  MEMORY[0x28223BE20](v15);
  v135 = v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  v18 = sub_2179689AC();
  v126 = v18;
  v125 = sub_21788D650(&qword_27CB8A6D0);
  v186 = v18;
  v187 = v9;
  v19 = v9;
  v188 = v125;
  v189 = v10;
  v20 = _s19ContainerHeaderCellVMa();
  WitnessTable = swift_getWitnessTable();
  v186 = v20;
  v187 = MEMORY[0x277D84A98];
  v188 = WitnessTable;
  v189 = MEMORY[0x277CE1538];
  sub_21796688C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  v22 = sub_21796698C();
  v23 = sub_2179669FC();
  v24 = swift_getWitnessTable();
  v25 = sub_21788D5B8(&qword_27CB8ADF8);
  v184 = v24;
  v185 = v25;
  v154 = MEMORY[0x277CDFAD8];
  v26 = swift_getWitnessTable();
  v27 = sub_21788D650(&qword_27CB8A708);
  v186 = v22;
  v187 = v23;
  v188 = v26;
  v189 = v27;
  swift_getOpaqueTypeMetadata2();
  v152 = sub_21796732C();
  v28 = sub_21796698C();
  v29 = sub_217966FAC();
  v186 = v22;
  v187 = v23;
  v188 = v26;
  v189 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v134 = sub_21788D650(&qword_27CB8A710);
  v182 = OpaqueTypeConformance2;
  v183 = v134;
  v31 = swift_getWitnessTable();
  v32 = sub_21788D650(&qword_27CB8AE00);
  v186 = v28;
  v187 = v29;
  v188 = v31;
  v189 = v32;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v148 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_217967CDC();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  v186 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  v35 = v125;
  v34 = v126;
  v177 = v126;
  v178 = v19;
  v36 = v19;
  v37 = v153;
  v179 = v125;
  v180 = v153;
  _s13ItemShelfCellVMa();
  v38 = sub_21796698C();
  v133 = MEMORY[0x277CD7CB0];
  v39 = sub_21788D5B8(&unk_27CB8AE10);
  v128 = v39;
  v127 = sub_21786438C();
  v177 = v33;
  v178 = MEMORY[0x277CD7E90];
  v179 = v38;
  v180 = v39;
  v181 = v127;
  sub_217967D9C();
  sub_21796698C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v187 = sub_21796944C();
  v40 = sub_2179688CC();
  v41 = sub_21788D650(&qword_27CB8A830);
  v177 = v40;
  v178 = v36;
  v179 = v41;
  v180 = v37;
  _s9ItemShelfVMa();
  sub_21796698C();
  sub_21796698C();
  v188 = sub_21796944C();
  v177 = v34;
  v178 = v36;
  v179 = v35;
  v180 = v37;
  _s14ContainerShelfVMa();
  sub_21796698C();
  v189 = sub_21796944C();
  v42 = sub_217968E3C();
  v43 = sub_21788D650(&qword_27CB8AAC8);
  v177 = v42;
  v178 = v36;
  v179 = v43;
  v180 = v37;
  _s14ContainerShelfVMa();
  v190 = sub_21796944C();
  v191 = sub_21796944C();
  v192 = v191;
  v193 = v191;
  swift_getTupleTypeMetadata();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_21796665C();
  sub_217966F9C();
  v44 = swift_getWitnessTable();
  v175 = MEMORY[0x277CE1410];
  v176 = v44;
  v132 = MEMORY[0x277CE0340];
  swift_getWitnessTable();
  v131 = sub_21796666C();
  v130 = sub_21796698C();
  v129 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE18, &qword_21796B518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  v186 = v34;
  v187 = v36;
  v46 = v36;
  v149 = v36;
  v188 = v35;
  v189 = v37;
  v47 = v37;
  _s9VItemCellVMa();
  v48 = sub_21796698C();
  v186 = v45;
  v187 = MEMORY[0x277CD7E90];
  v188 = v48;
  v49 = v127;
  v189 = v128;
  v190 = v127;
  sub_217967D9C();
  v50 = swift_getWitnessTable();
  v51 = v134;
  v173 = v50;
  v174 = v134;
  v172 = swift_getWitnessTable();
  v126 = MEMORY[0x277CE1290];
  swift_getWitnessTable();
  sub_217967E8C();
  sub_21796698C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v128 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE20, &qword_21796B520);
  v53 = sub_21796852C();
  v54 = sub_21788D650(&qword_27CB8A828);
  v186 = v53;
  v187 = v46;
  v188 = v54;
  v189 = v47;
  _s13ItemShelfCellVMa();
  v55 = sub_21796698C();
  v56 = sub_21788D5B8(&unk_27CB8AE28);
  v186 = v52;
  v187 = MEMORY[0x277CD7E90];
  v188 = v55;
  v189 = v56;
  v190 = v49;
  sub_217967D9C();
  sub_21796698C();
  v170 = swift_getWitnessTable();
  v171 = v51;
  v169 = swift_getWitnessTable();
  v167 = swift_getWitnessTable();
  v168 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_21796665C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_217967CDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE30, &unk_21796B528);
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_21796666C();
  sub_21796698C();
  v165 = swift_getWitnessTable();
  v166 = v51;
  swift_getWitnessTable();
  sub_217967CDC();
  sub_217966F9C();
  v163 = swift_getWitnessTable();
  v164 = v51;
  v57 = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  v161 = v57;
  v162 = v58;
  swift_getWitnessTable();
  v59 = sub_21796686C();
  v60 = swift_getWitnessTable();
  v61 = sub_217873C34();
  v186 = v59;
  v187 = MEMORY[0x277D837D0];
  v62 = MEMORY[0x277D837D0];
  v188 = v60;
  v189 = v61;
  v128 = v61;
  v129 = v60;
  v63 = v61;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v148 = *(OpaqueTypeMetadata2 - 8);
  v65 = *(v148 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v130 = v119 - v66;
  v186 = v59;
  v187 = v62;
  v188 = v60;
  v189 = v63;
  v67 = swift_getOpaqueTypeConformance2();
  v186 = OpaqueTypeMetadata2;
  v187 = v67;
  v68 = OpaqueTypeMetadata2;
  v119[0] = OpaqueTypeMetadata2;
  v119[1] = v67;
  v69 = v67;
  v127 = swift_getOpaqueTypeMetadata2();
  v134 = *(v127 - 8);
  v70 = *(v134 + 64);
  MEMORY[0x28223BE20](v127);
  v125 = v119 - v71;
  _s18NavigationBarStyleVMa();
  v72 = sub_21796698C();
  v133 = *(v72 - 8);
  v73 = *(v133 + 64);
  MEMORY[0x28223BE20](v72);
  v124 = v119 - v74;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A898, &unk_21796ACA0);
  v75 = sub_21796698C();
  v123 = v75;
  v152 = *(v75 - 8);
  v76 = *(v152 + 64);
  MEMORY[0x28223BE20](v75);
  v121 = v119 - v77;
  v186 = v68;
  v187 = v69;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = swift_getWitnessTable();
  v159 = v78;
  v160 = v79;
  v80 = swift_getWitnessTable();
  v119[2] = v80;
  v81 = sub_21788D5B8(&qword_27CB8A890);
  v157 = v80;
  v158 = v81;
  v122 = swift_getWitnessTable();
  v186 = v75;
  v187 = v122;
  v131 = &unk_2179772D0;
  v132 = swift_getOpaqueTypeMetadata2();
  v154 = *(v132 - 8);
  v82 = *(v154 + 64);
  v83 = MEMORY[0x28223BE20](v132);
  v120 = v119 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v126 = v119 - v85;
  sub_21787B01C(v150, &v186);
  v177 = v186;
  v178 = v187;
  v86 = v135;
  sub_217876FA0();
  v87 = sub_217968A9C();
  v89 = v88;
  (*(v136 + 8))(v86, v137);
  v155 = v87;
  v156 = v89;
  swift_checkMetadataState();
  v90 = v130;
  sub_2179677EC();

  v92 = v138;
  v91 = v139;
  v93 = v140;
  (*(v139 + 104))(v138, *MEMORY[0x277CDDDC0], v140);
  v94 = v125;
  v95 = v119[0];
  sub_21796794C();
  (*(v91 + 8))(v92, v93);
  (*(v148 + 8))(v90, v95);
  v96 = v127;
  v97 = v149;
  v98 = v153;
  v99 = j__OUTLINED_FUNCTION_59();
  v100 = v124;
  v101 = v78;
  v102 = v98;
  sub_21792D7FC(v99 & 1, v97, v96, v97, v101);
  (*(v134 + 8))(v94, v96);
  v103 = v121;
  sub_217967AAC();
  (*(v133 + 8))(v100, v72);
  v148 = " page in music picker.";
  v104 = v141;
  v105 = v142;
  v106 = v150;
  (*(v142 + 16))(v141, v151, v150);
  sub_21796920C();
  v107 = sub_2179691FC();
  v108 = (*(v105 + 80) + 48) & ~*(v105 + 80);
  v109 = swift_allocObject();
  v110 = MEMORY[0x277D85700];
  *(v109 + 2) = v107;
  *(v109 + 3) = v110;
  *(v109 + 4) = v97;
  *(v109 + 5) = v102;
  (*(v105 + 32))(&v109[v108], v104, v106);
  v111 = v144;
  v113 = v122;
  v112 = v123;
  sub_21785BFCC();
  v114 = v120;
  sub_21785C01C(0, 0, v111, 0xD000000000000036, v148 | 0x8000000000000000, 196, &unk_21796B540, v109, v112, v113);
  (*(v145 + 8))(v111, v146);
  (*(v152 + 8))(v103, v112);
  v186 = v112;
  v187 = v113;
  swift_getOpaqueTypeConformance2();
  v115 = v126;
  v116 = v132;
  sub_2179560E4(v114, v132);
  v117 = *(v154 + 8);
  v117(v114, v116);
  sub_2179560E4(v115, v116);
  return (v117)(v115, v116);
}

uint64_t sub_21787B01C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v62 = v7;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  v10 = v8;
  v64 = v8;
  v65 = v9;
  v11 = v9;
  (*(v3 + 32))(v7 + v6, v5, a1);
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  v12 = sub_2179689AC();
  v54 = v12;
  v53 = sub_21788D650(&qword_27CB8A6D0);
  v94 = v12;
  v95 = v10;
  v96 = v53;
  v97 = v11;
  v13 = _s19ContainerHeaderCellVMa();
  WitnessTable = swift_getWitnessTable();
  v94 = v13;
  v95 = MEMORY[0x277D84A98];
  v96 = WitnessTable;
  v97 = MEMORY[0x277CE1538];
  sub_21796688C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  v15 = sub_21796698C();
  v16 = sub_2179669FC();
  v17 = swift_getWitnessTable();
  v18 = sub_21788D5B8(&qword_27CB8ADF8);
  v92 = v17;
  v93 = v18;
  v67 = MEMORY[0x277CDFAD8];
  v19 = swift_getWitnessTable();
  v20 = sub_21788D650(&qword_27CB8A708);
  v94 = v15;
  v95 = v16;
  v96 = v19;
  v97 = v20;
  swift_getOpaqueTypeMetadata2();
  v68 = sub_21796732C();
  v21 = sub_21796698C();
  v22 = sub_217966FAC();
  v94 = v15;
  v95 = v16;
  v96 = v19;
  v97 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = sub_21788D650(&qword_27CB8A710);
  v90 = OpaqueTypeConformance2;
  v91 = v61;
  v24 = swift_getWitnessTable();
  v25 = sub_21788D650(&qword_27CB8AE00);
  v94 = v21;
  v95 = v22;
  v96 = v24;
  v97 = v25;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v66 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_217967CDC();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  v94 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  v28 = v53;
  v27 = v54;
  v29 = v64;
  v30 = v65;
  v85 = v54;
  v86 = v64;
  v87 = v53;
  v88 = v65;
  _s13ItemShelfCellVMa();
  v31 = sub_21796698C();
  v60 = MEMORY[0x277CD7CB0];
  v32 = sub_21788D5B8(&unk_27CB8AE10);
  v55 = sub_21786438C();
  v85 = v26;
  v86 = MEMORY[0x277CD7E90];
  v87 = v31;
  v88 = v32;
  v89 = v55;
  sub_217967D9C();
  sub_21796698C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v95 = sub_21796944C();
  v33 = sub_2179688CC();
  v34 = sub_21788D650(&qword_27CB8A830);
  v85 = v33;
  v86 = v29;
  v87 = v34;
  v88 = v30;
  _s9ItemShelfVMa();
  sub_21796698C();
  sub_21796698C();
  v96 = sub_21796944C();
  v85 = v27;
  v86 = v29;
  v87 = v28;
  v88 = v30;
  _s14ContainerShelfVMa();
  sub_21796698C();
  v97 = sub_21796944C();
  v35 = sub_217968E3C();
  v36 = sub_21788D650(&qword_27CB8AAC8);
  v85 = v35;
  v86 = v29;
  v87 = v36;
  v88 = v30;
  _s14ContainerShelfVMa();
  v98 = sub_21796944C();
  v99 = sub_21796944C();
  v100 = v99;
  v101 = v99;
  swift_getTupleTypeMetadata();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_21796665C();
  sub_217966F9C();
  v37 = swift_getWitnessTable();
  v83 = MEMORY[0x277CE1410];
  v84 = v37;
  v59 = MEMORY[0x277CE0340];
  swift_getWitnessTable();
  v58 = sub_21796666C();
  v57 = sub_21796698C();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE18, &qword_21796B518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  v94 = v27;
  v95 = v29;
  v96 = v28;
  v97 = v30;
  _s9VItemCellVMa();
  v39 = sub_21796698C();
  v94 = v38;
  v95 = MEMORY[0x277CD7E90];
  v96 = v39;
  v97 = v32;
  v40 = v55;
  v98 = v55;
  sub_217967D9C();
  v41 = swift_getWitnessTable();
  v42 = v61;
  v81 = v41;
  v82 = v61;
  v80 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_217967E8C();
  sub_21796698C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v54 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE20, &qword_21796B520);
  v44 = sub_21796852C();
  v45 = sub_21788D650(&qword_27CB8A828);
  v94 = v44;
  v95 = v64;
  v96 = v45;
  v97 = v65;
  _s13ItemShelfCellVMa();
  v46 = sub_21796698C();
  v47 = sub_21788D5B8(&unk_27CB8AE28);
  v94 = v43;
  v95 = MEMORY[0x277CD7E90];
  v96 = v46;
  v97 = v47;
  v98 = v40;
  sub_217967D9C();
  sub_21796698C();
  v78 = swift_getWitnessTable();
  v79 = v42;
  v77 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_21796665C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_217967CDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE30, &unk_21796B528);
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_21796666C();
  sub_21796698C();
  v73 = swift_getWitnessTable();
  v74 = v42;
  swift_getWitnessTable();
  sub_217967CDC();
  sub_217966F9C();
  v71 = swift_getWitnessTable();
  v72 = v42;
  v48 = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  v69 = v48;
  v70 = v49;
  swift_getWitnessTable();
  result = sub_21796685C();
  v51 = v63;
  *v63 = result;
  v51[1] = v52;
  return result;
}

uint64_t sub_21787BCA4()
{
  v0[2] = sub_21796920C();
  v0[3] = sub_2179691FC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = _s16ArtistDetailViewVMa();
  *v1 = v0;
  v1[1] = sub_21787BD74;

  return sub_21787BF04(v2);
}

uint64_t sub_21787BD74()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v7 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_21787BEA8, v7, v6);
}

uint64_t sub_21787BEA8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_39();

  return v2();
}

uint64_t sub_21787BF04(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(a1 - 8);
  v2[14] = v3;
  v4 = *(v3 + 64) + 15;
  v2[15] = swift_task_alloc();
  v5 = sub_21796822C();
  v2[16] = v5;
  v6 = *(v5 - 8);
  v2[17] = v6;
  v7 = *(v6 + 64) + 15;
  v2[18] = swift_task_alloc();
  v8 = sub_217968AFC();
  v2[19] = v8;
  v9 = *(v8 - 8);
  v2[20] = v9;
  v10 = *(v9 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_21796920C();
  v2[27] = sub_2179691FC();
  v12 = sub_2179691BC();
  v2[28] = v12;
  v2[29] = v11;

  return MEMORY[0x2822009F8](sub_21787C0E0, v12, v11);
}

uint64_t sub_21787C0E0()
{
  v1 = v0[13];
  if (sub_2178770D4(v0[12]))
  {
    v2 = v0[24];
    v3 = v0[13];
    sub_217876FA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A728, &qword_21796B550);
    v4 = swift_allocObject();
    v0[30] = v4;
    *(v4 + 16) = xmmword_21796A330;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AE38, &qword_21796B558);
    *(v4 + 32) = sub_217967FBC();
    *(v4 + 40) = sub_217967F6C();
    v5 = *(MEMORY[0x277CD7D08] + 4);
    v6 = swift_task_alloc();
    v0[31] = v6;
    *v6 = v0;
    v6[1] = sub_21787C388;
    v8 = v0[24];
    v7 = v0[25];
    v9 = v0[19];
    v10 = MEMORY[0x277CD8400];

    return MEMORY[0x2821246D8](v7, v4, v9, v10);
  }

  else
  {
    v11 = v0[22];
    v13 = v0[17];
    v12 = v0[18];
    v14 = v0[16];
    v15 = v0[13];
    sub_217876FA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A728, &qword_21796B550);
    v16 = swift_allocObject();
    v0[34] = v16;
    *(v16 + 16) = xmmword_21796B350;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AE38, &qword_21796B558);
    *(v16 + 32) = sub_217967F7C();
    *(v16 + 40) = sub_217967FDC();
    *(v16 + 48) = sub_217967F5C();
    *(v16 + 56) = sub_217967FEC();
    *(v16 + 64) = sub_217967FCC();
    *(v16 + 72) = sub_217967FAC();
    *(v16 + 80) = sub_217967F8C();
    *(v16 + 88) = sub_217967F9C();
    (*(v13 + 104))(v12, *MEMORY[0x277CD7CF8], v14);
    v17 = *(MEMORY[0x277CD7DE8] + 4);
    v18 = swift_task_alloc();
    v0[35] = v18;
    OUTLINED_FUNCTION_2_0();
    v20 = sub_21788D650(v19);
    *v18 = v0;
    v18[1] = sub_21787C9B0;
    v22 = v0[22];
    v21 = v0[23];
    v23 = v0[18];
    v24 = v0[19];
    v25 = MEMORY[0x277CD8418];
    v26 = MEMORY[0x277CD8400];

    return MEMORY[0x282124808](v21, v16, v23, v24, v25, v26, v20);
  }
}

uint64_t sub_21787C388()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = v2[31];
  v6 = v2[30];
  v7 = v2[24];
  v8 = v2[20];
  v9 = v2[19];
  *v4 = *v1;
  v3[32] = v0;

  v10 = *(v8 + 8);
  v3[33] = v10;
  v10(v7, v9);

  OUTLINED_FUNCTION_66();
  v12 = *(v11 + 232);
  v13 = v2[28];
  if (v0)
  {
    v14 = sub_21787C708;
  }

  else
  {
    v14 = sub_21787C53C;
  }

  return MEMORY[0x2822009F8](v14, v13, v12);
}

uint64_t sub_21787C53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[33];
  v27 = v22[26];
  v26 = v22[27];
  v28 = v22[25];
  v30 = v22[20];
  v29 = v22[21];
  v31 = v22[19];
  v33 = v22[12];
  v32 = v22[13];

  v34 = *(v30 + 32);
  v35 = OUTLINED_FUNCTION_63_0();
  v36(v35);
  v37 = OUTLINED_FUNCTION_63();
  v38(v37);
  sub_217876FE8(v29);
  OUTLINED_FUNCTION_40_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  OUTLINED_FUNCTION_51_1();
  sub_217967C2C();
  v39 = v32 + *(v33 + 48);
  sub_217956100();
  v40 = *(v29 - 32);
  v41 = v22[26];
  v42 = v22[19];
  v43 = v22[20];
  if (v40)
  {
    a10 = v25;
    v44 = v22[12];
    v45 = v22[13];
    v46 = v22[6];
    __swift_project_boxed_opaque_existential_1(v27, v40);
    a11 = *(v45 + *(v44 + 56));
    v47 = *(v46 + 8);
    sub_217863EC4(a11);
    v47(&a11, v40, v46);
    sub_2178643E0(a11);
    v48 = OUTLINED_FUNCTION_45_1();
    a10(v48);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v49 = OUTLINED_FUNCTION_45_1();
    v25(v49);
    sub_21788D4D0(v27, &qword_27CB8A630);
  }

  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_78_0();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21787C708()
{
  v41 = v0;
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[27];
  v5 = v0[12];
  v4 = v0[13];

  OUTLINED_FUNCTION_38_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  OUTLINED_FUNCTION_51_1();
  sub_217967C2C();
  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31();
  }

  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = sub_21796653C();
  __swift_project_value_buffer(v10, qword_27CB97B00);
  v11 = OUTLINED_FUNCTION_53();
  v12(v11);
  v13 = v1;
  v14 = sub_21796651C();
  LOBYTE(v6) = sub_21796937C();

  if (os_log_type_enabled(v14, v6))
  {
    v15 = OUTLINED_FUNCTION_47_1();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v15 = 136446466;
    sub_217876FA0();
    v16 = *(v9 + 8);
    v17 = OUTLINED_FUNCTION_64();
    v18(v17);
    OUTLINED_FUNCTION_2_0();
    sub_21788D650(v19);
    sub_21796966C();
    v20 = OUTLINED_FUNCTION_44();
    v21(v20);
    v22 = OUTLINED_FUNCTION_64();
    sub_217957F4C(v22, v23, v24);

    OUTLINED_FUNCTION_68_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v25 = sub_217968F8C();
    v27 = sub_217957F4C(v25, v26, &v40);

    *(v15 + 14) = v27;
    OUTLINED_FUNCTION_57(&dword_217846000, v28, v29, "Failed to load additional content for %{public}s. Error = %{public}s", v30, v31, v32, v33, v36, v37, v38, *v39, v39[4]);
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[12]);
  }

  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_39();

  return v34();
}

uint64_t sub_21787C9B0()
{
  OUTLINED_FUNCTION_79_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = v2[35];
  v6 = v2[34];
  v28 = v2[22];
  OUTLINED_FUNCTION_66();
  v8 = *(v7 + 160);
  v27 = v2[19];
  OUTLINED_FUNCTION_66();
  v10 = *(v9 + 144);
  v11 = v2[17];
  v12 = v2[16];
  v13 = *v1;
  OUTLINED_FUNCTION_6();
  *v14 = v13;
  v3[36] = v0;

  v15 = *(v11 + 8);
  v16 = OUTLINED_FUNCTION_56_1();
  v17(v16);
  v18 = *(v8 + 8);
  v3[37] = v18;
  v18(v28, v27);
  OUTLINED_FUNCTION_66();
  v20 = *(v19 + 232);
  v21 = v2[28];
  OUTLINED_FUNCTION_78_0();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_21787CB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[37];
  v26 = v22[23];
  v28 = v22[26];
  v27 = v22[27];
  v30 = v22[20];
  v29 = v22[21];
  v31 = v22[19];
  v33 = v22[12];
  v32 = v22[13];

  v34 = *(v30 + 32);
  v35 = OUTLINED_FUNCTION_63_0();
  v36(v35);
  v37 = OUTLINED_FUNCTION_63();
  v38(v37);
  sub_217876FE8(v29);
  OUTLINED_FUNCTION_40_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  OUTLINED_FUNCTION_51_1();
  sub_217967C2C();
  v39 = v32 + *(v33 + 48);
  sub_217956100();
  v40 = *(v29 - 32);
  v41 = v22[26];
  v42 = v22[19];
  v43 = v22[20];
  if (v40)
  {
    a10 = v25;
    v44 = v22[12];
    v45 = v22[13];
    v46 = v22[6];
    __swift_project_boxed_opaque_existential_1(v28, v40);
    a11 = *(v45 + *(v44 + 56));
    v47 = *(v46 + 8);
    sub_217863EC4(a11);
    v47(&a11, v40, v46);
    sub_2178643E0(a11);
    v48 = OUTLINED_FUNCTION_45_1();
    a10(v48);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v49 = OUTLINED_FUNCTION_45_1();
    v25(v49);
    sub_21788D4D0(v28, &qword_27CB8A630);
  }

  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_78_0();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21787CD68()
{
  v41 = v0;
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[27];
  v5 = v0[12];
  v4 = v0[13];

  OUTLINED_FUNCTION_38_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  OUTLINED_FUNCTION_51_1();
  sub_217967C2C();
  if (qword_27CB8A480 != -1)
  {
    OUTLINED_FUNCTION_31();
  }

  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = sub_21796653C();
  __swift_project_value_buffer(v10, qword_27CB97B00);
  v11 = OUTLINED_FUNCTION_53();
  v12(v11);
  v13 = v1;
  v14 = sub_21796651C();
  LOBYTE(v6) = sub_21796937C();

  if (os_log_type_enabled(v14, v6))
  {
    v15 = OUTLINED_FUNCTION_47_1();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v15 = 136446466;
    sub_217876FA0();
    v16 = *(v9 + 8);
    v17 = OUTLINED_FUNCTION_64();
    v18(v17);
    OUTLINED_FUNCTION_2_0();
    sub_21788D650(v19);
    sub_21796966C();
    v20 = OUTLINED_FUNCTION_44();
    v21(v20);
    v22 = OUTLINED_FUNCTION_64();
    sub_217957F4C(v22, v23, v24);

    OUTLINED_FUNCTION_68_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v25 = sub_217968F8C();
    v27 = sub_217957F4C(v25, v26, &v40);

    *(v15 + 14) = v27;
    OUTLINED_FUNCTION_57(&dword_217846000, v28, v29, "Failed to load additional content for %{public}s. Error = %{public}s", v30, v31, v32, v33, v36, v37, v38, *v39, v39[4]);
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[12]);
  }

  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_39();

  return v34();
}

uint64_t sub_21787D010(uint64_t a1)
{
  v2 = sub_21796595C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217968AFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s16ArtistDetailViewVMa();
  v13 = v12;
  if (*(a1 + *(v12 + 40)) == 1)
  {
    v14 = (a1 + *(v12 + 44));
    v28 = v6;
    v29 = v3;
    v15 = v2;
    v16 = *v14;
    v17 = v14[1];
    _s9ViewModelCMa();
    swift_getWitnessTable();
    v2 = v15;
    v6 = v28;
    v3 = v29;
    sub_217966A9C();
    sub_217876FA0();
    sub_21788D650(&qword_27CB8AAF8);
    sub_2178D1C94();

    (*(v8 + 8))(v11, v7);
  }

  v18 = a1 + *(v13 + 48);
  sub_217956100();
  v19 = v36;
  if (!v36)
  {
    return sub_21788D4D0(v35, &qword_27CB8A630);
  }

  v20 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  sub_217876FA0();
  (*(v3 + 104))(v6, *MEMORY[0x277D2A418], v2);
  v34 = 4;
  v21 = (a1 + *(v13 + 36));
  v23 = *(v21 + 1);
  v22 = *(v21 + 2);
  v24 = *(v21 + 3);
  v30[0] = *v21;
  v31 = v23;
  v32 = v22;
  v33 = v24;
  v25 = *(v20 + 24);

  sub_217863EC4(v24);
  v25(v6, &v34, v30, v19, v20);
  v26 = v33;

  sub_2178643E0(v26);
  (*(v3 + 8))(v6, v2);
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_21787D358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v94 = a4;
  v86 = a2;
  v89 = a1;
  v90 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE18, &qword_21796B518);
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  v91 = sub_2179689AC();
  v92 = sub_21788D650(&qword_27CB8A6D0);
  _s9VItemCellVMa();
  v95 = sub_21796732C();
  sub_21796698C();
  v87 = sub_21788D5B8(&unk_27CB8AE10);
  v84 = sub_21786438C();
  sub_217967D9C();
  WitnessTable = swift_getWitnessTable();
  v96 = sub_21788D650(&qword_27CB8A710);
  v131 = WitnessTable;
  v132 = v96;
  v80 = MEMORY[0x277CDFAD8];
  v130 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_217967E8C();
  sub_21796698C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v79 = sub_21796944C();
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE20, &qword_21796B520);
  sub_21796852C();
  sub_21788D650(&qword_27CB8A828);
  v81 = a3;
  _s13ItemShelfCellVMa();
  v8 = sub_21796698C();
  v9 = sub_21788D5B8(&unk_27CB8AE28);
  *&v116 = v7;
  *(&v116 + 1) = MEMORY[0x277CD7E90];
  v117 = v8;
  v118 = v9;
  v119 = v84;
  sub_217967D9C();
  sub_21796698C();
  v128 = swift_getWitnessTable();
  v129 = v96;
  v127 = swift_getWitnessTable();
  v125 = swift_getWitnessTable();
  v126 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_21796665C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  sub_21796944C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v82 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_217967CDC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE30, &unk_21796B528);
  swift_getTupleTypeMetadata3();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_21796666C();
  v10 = sub_21796698C();
  v123 = swift_getWitnessTable();
  v124 = v96;
  v76[0] = swift_getWitnessTable();
  v76[1] = v10;
  v93 = sub_217967CDC();
  v79 = *(v93 - 8);
  v11 = *(v79 + 64);
  v12 = MEMORY[0x28223BE20](v93);
  v78 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = v76 - v14;
  *&v116 = v91;
  *(&v116 + 1) = a3;
  v117 = v92;
  v118 = v94;
  v15 = _s19ContainerHeaderCellVMa();
  v16 = swift_getWitnessTable();
  *&v116 = v15;
  *(&v116 + 1) = MEMORY[0x277D84A98];
  v117 = v16;
  v118 = MEMORY[0x277CE1538];
  sub_21796688C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  v17 = sub_21796698C();
  v18 = sub_2179669FC();
  v19 = swift_getWitnessTable();
  v20 = sub_21788D5B8(&qword_27CB8ADF8);
  v114 = v19;
  v115 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_21788D650(&qword_27CB8A708);
  *&v116 = v17;
  *(&v116 + 1) = v18;
  v117 = v21;
  v118 = v22;
  swift_getOpaqueTypeMetadata2();
  v23 = sub_21796698C();
  v24 = sub_217966FAC();
  *&v116 = v17;
  *(&v116 + 1) = v18;
  v117 = v21;
  v118 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v113 = v96;
  v25 = swift_getWitnessTable();
  v26 = sub_21788D650(&qword_27CB8AE00);
  *&v116 = v23;
  *(&v116 + 1) = v24;
  v117 = v25;
  v118 = v26;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_217967CDC();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  *&v116 = sub_21796944C();
  v27 = v91;
  v28 = v92;
  v29 = v81;
  v107 = v91;
  v108 = v81;
  v30 = v94;
  v109 = v92;
  v110 = v94;
  _s13ItemShelfCellVMa();
  v31 = sub_21796698C();
  v107 = v88;
  v108 = MEMORY[0x277CD7E90];
  v109 = v31;
  v110 = v87;
  v111 = v84;
  sub_217967D9C();
  sub_21796698C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  *(&v116 + 1) = sub_21796944C();
  v32 = sub_2179688CC();
  v33 = sub_21788D650(&qword_27CB8A830);
  v107 = v32;
  v108 = v29;
  v109 = v33;
  v110 = v30;
  _s9ItemShelfVMa();
  sub_21796698C();
  sub_21796698C();
  v117 = sub_21796944C();
  v107 = v27;
  v108 = v29;
  v109 = v28;
  v110 = v30;
  _s14ContainerShelfVMa();
  sub_21796698C();
  v118 = sub_21796944C();
  v34 = sub_217968E3C();
  v35 = sub_21788D650(&qword_27CB8AAC8);
  v107 = v34;
  v108 = v29;
  v109 = v35;
  v110 = v30;
  _s14ContainerShelfVMa();
  v119 = sub_21796944C();
  v120 = sub_21796944C();
  v121 = v120;
  v122 = v120;
  swift_getTupleTypeMetadata();
  sub_217967E9C();
  swift_getWitnessTable();
  sub_21796665C();
  sub_217966F9C();
  v36 = swift_getWitnessTable();
  v105 = MEMORY[0x277CE1410];
  v106 = v36;
  swift_getWitnessTable();
  v37 = sub_21796666C();
  v85 = *(v37 - 8);
  v38 = *(v85 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = v76 - v39;
  v92 = v41;
  v42 = sub_21796698C();
  v88 = *(v42 - 8);
  v43 = *(v88 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v84 = v76 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v87 = v76 - v46;
  v95 = sub_217966F9C();
  v91 = *(v95 - 8);
  v47 = *(v91 + 64);
  MEMORY[0x28223BE20](v95);
  v49 = v76 - v48;
  v50 = _s16ArtistDetailViewVMa();
  v51 = v86;
  if (sub_2178770D4(v50))
  {
    v52 = sub_217966E6C();
    MEMORY[0x28223BE20](v52);
    v76[-4] = v29;
    v76[-3] = v30;
    v53 = v89;
    v76[-2] = v51;
    v76[-1] = v53;
    v54 = v78;
    sub_217967CCC();
    v55 = v93;
    swift_getWitnessTable();
    v56 = v77;
    sub_2179560E4(v54, v55);
    v57 = *(v79 + 8);
    v57(v54, v55);
    sub_2179560E4(v56, v55);
    v58 = swift_getWitnessTable();
    v59 = v96;
    v97 = v58;
    v98 = v96;
    swift_getWitnessTable();
    sub_217952FA4();
    v57(v54, v55);
    v57(v56, v55);
    v60 = v59;
  }

  else
  {
    v83 = v49;
    v61 = sub_2179673DC();
    MEMORY[0x28223BE20](v61);
    v76[-4] = v29;
    v76[-3] = v30;
    v62 = v89;
    v76[-2] = v51;
    v76[-1] = v62;
    sub_21789AA60();
    v63 = v40;
    if (qword_27CB8A390 != -1)
    {
      swift_once();
    }

    v64 = qword_27CB978D0;
    v116 = xmmword_27CB978C0;

    MEMORY[0x21CEA7F50](46, 0xE100000000000000);

    MEMORY[0x21CEA7F50](0xD000000000000018, 0x8000000217974100);

    v66 = *(&v116 + 1);
    v65 = v116;
    v67 = v92;
    v68 = swift_getWitnessTable();
    v69 = v84;
    sub_2178ED854(v65, v66, v64);

    (*(v85 + 8))(v63, v67);
    v103 = v68;
    v104 = v96;
    swift_getWitnessTable();
    v70 = v87;
    sub_2179560E4(v69, v42);
    v71 = *(v88 + 8);
    v71(v69, v42);
    sub_2179560E4(v70, v42);
    swift_getWitnessTable();
    v49 = v83;
    v60 = v96;
    sub_217952EE8();
    v71(v69, v42);
    v71(v70, v42);
  }

  v101 = swift_getWitnessTable();
  v102 = v60;
  v72 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v99 = v72;
  v100 = v73;
  v74 = v95;
  swift_getWitnessTable();
  sub_2179560E4(v49, v74);
  return (*(v91 + 8))(v49, v74);
}

uint64_t sub_21787E4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v60 = a2;
  v65 = a1;
  v66 = a5;
  v7 = sub_21796708C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59[2] = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  v10 = sub_2179689AC();
  v64 = v10;
  v63 = sub_21788D650(&qword_27CB8A6D0);
  v78 = v10;
  v79 = a3;
  v80 = v63;
  v81 = a4;
  v11 = _s19ContainerHeaderCellVMa();
  WitnessTable = swift_getWitnessTable();
  v78 = v11;
  v79 = MEMORY[0x277D84A98];
  v80 = WitnessTable;
  v81 = MEMORY[0x277CE1538];
  sub_21796688C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  v13 = sub_21796698C();
  v14 = sub_2179669FC();
  v15 = swift_getWitnessTable();
  v16 = sub_21788D5B8(&qword_27CB8ADF8);
  v76 = v15;
  v77 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_21788D650(&qword_27CB8A708);
  v78 = v13;
  v79 = v14;
  v80 = v17;
  v81 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  v19 = sub_21796698C();
  v20 = sub_217966FAC();
  v78 = v13;
  v79 = v14;
  v80 = v17;
  v81 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_21788D650(&qword_27CB8A710);
  v74 = OpaqueTypeConformance2;
  v75 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_21788D650(&qword_27CB8AE00);
  v78 = v19;
  v79 = v20;
  v80 = v23;
  v81 = v24;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v61 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_217967CDC();
  sub_21796698C();
  sub_21796698C();
  sub_21796698C();
  v78 = sub_21796944C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  v26 = v64;
  v69 = v64;
  v70 = a3;
  v27 = v63;
  v28 = v62;
  v71 = v63;
  v72 = v62;
  _s13ItemShelfCellVMa();
  v29 = sub_21796698C();
  v30 = sub_21788D5B8(&unk_27CB8AE10);
  v31 = sub_21786438C();
  v69 = v25;
  v70 = MEMORY[0x277CD7E90];
  v71 = v29;
  v72 = v30;
  v73 = v31;
  sub_217967D9C();
  sub_21796698C();
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  sub_217967E9C();
  v79 = sub_21796944C();
  v32 = sub_2179688CC();
  v33 = sub_21788D650(&qword_27CB8A830);
  v69 = v32;
  v70 = a3;
  v71 = v33;
  v72 = v28;
  _s9ItemShelfVMa();
  sub_21796698C();
  sub_21796698C();
  v80 = sub_21796944C();
  v69 = v26;
  v70 = a3;
  v71 = v27;
  v72 = v28;
  v34 = v28;
  _s14ContainerShelfVMa();
  sub_21796698C();
  v81 = sub_21796944C();
  v35 = sub_217968E3C();
  v36 = sub_21788D650(&qword_27CB8AAC8);
  v69 = v35;
  v70 = a3;
  v71 = v36;
  v72 = v28;
  _s14ContainerShelfVMa();
  v82 = sub_21796944C();
  v83 = sub_21796944C();
  v84 = v83;
  v85 = v83;
  swift_getTupleTypeMetadata();
  sub_217967E9C();
  v59[1] = swift_getWitnessTable();
  v37 = sub_21796665C();
  v63 = *(v37 - 8);
  v38 = *(v63 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = v59 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v61 = v59 - v42;
  v43 = sub_217966F9C();
  v64 = *(v43 - 8);
  v44 = *(v64 + 64);
  MEMORY[0x28223BE20](v43);
  v46 = v59 - v45;
  v47 = _s16ArtistDetailViewVMa();
  v48 = v65;
  v49 = (v65 + *(v47 + 52));
  v50 = *v49;
  v51 = *(v49 + 1);
  LOBYTE(v78) = v50;
  v79 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  sub_217967C1C();
  v52 = MEMORY[0x277CE1410];
  if (v69 == 1)
  {
    swift_getWitnessTable();
    sub_217952EE8();
  }

  else
  {
    v53 = sub_217966E6C();
    v59[0] = v59;
    MEMORY[0x28223BE20](v53);
    v59[-4] = a3;
    v59[-3] = v34;
    v54 = v60;
    v59[-2] = v48;
    v59[-1] = v54;
    sub_21789A9E0();
    sub_21796664C();
    swift_getWitnessTable();
    v55 = v61;
    sub_2179560E4(v41, v37);
    v56 = *(v63 + 8);
    v56(v41, v37);
    sub_2179560E4(v55, v37);
    v52 = MEMORY[0x277CE1410];
    sub_217952FA4();
    v56(v41, v37);
    v56(v55, v37);
  }

  v57 = swift_getWitnessTable();
  v67 = v52;
  v68 = v57;
  swift_getWitnessTable();
  sub_2179560E4(v46, v43);
  return (*(v64 + 8))(v46, v43);
}

uint64_t sub_21787EF64@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v586 = a2;
  v641 = a1;
  v583 = a5;
  v7 = sub_2179689AC();
  v618 = sub_21788D650(&qword_27CB8A6D0);
  v658[0] = v7;
  v8 = v7;
  v633 = v7;
  v658[1] = a3;
  v9 = a3;
  v658[2] = v618;
  v658[3] = a4;
  v10 = _s14ContainerShelfVMa();
  v628 = sub_21796944C();
  v602 = *(v628 - 8);
  v11 = v602[8];
  v12 = MEMORY[0x28223BE20](v628);
  v605 = &v504 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v604 = &v504 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v627 = &v504 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v626 = &v504 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v629 = &v504 - v21;
  MEMORY[0x28223BE20](v20);
  v625 = &v504 - v22;
  v23 = sub_217968E3C();
  v24 = sub_21788D650(&qword_27CB8AAC8);
  v544 = v23;
  v658[0] = v23;
  v658[1] = v9;
  v542 = v24;
  v658[2] = v24;
  v658[3] = a4;
  v25 = _s14ContainerShelfVMa();
  v546 = *(v25 - 8);
  v26 = *(v546 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v545 = &v504 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v543 = &v504 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B090, &qword_21796B748);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v588 = &v504 - v32;
  v610 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B098, &qword_21796B750);
  v561 = *(v610 - 1);
  v33 = *(v561 + 64);
  v34 = MEMORY[0x28223BE20](v610);
  v541 = &v504 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v562 = &v504 - v36;
  v607 = v25;
  v637 = sub_21796944C();
  v600 = *(v637 - 8);
  v37 = *(v600 + 64);
  v38 = MEMORY[0x28223BE20](v637);
  v624 = &v504 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v623 = &v504 - v41;
  v582 = *(v10 - 8);
  v42 = *(v582 + 64);
  v43 = MEMORY[0x28223BE20](v40);
  v563 = &v504 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v581 = &v504 - v45;
  v603 = v10;
  v46 = sub_21796698C();
  v540 = *(v46 - 8);
  v47 = *(v540 + 64);
  v48 = MEMORY[0x28223BE20](v46);
  v539 = &v504 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v538 = &v504 - v50;
  v601 = v51;
  v622 = sub_21796944C();
  v597 = *(v622 - 8);
  v52 = *(v597 + 64);
  v53 = MEMORY[0x28223BE20](v622);
  v636 = &v504 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v621 = &v504 - v55;
  v56 = sub_2179688CC();
  v57 = sub_21788D650(&qword_27CB8A830);
  v531 = v56;
  v658[0] = v56;
  v658[1] = v9;
  v58 = v9;
  v529 = v57;
  v658[2] = v57;
  v59 = a4;
  v658[3] = a4;
  v60 = _s9ItemShelfVMa();
  v532 = *(v60 - 8);
  v61 = *(v532 + 64);
  MEMORY[0x28223BE20](v60);
  v530 = &v504 - v62;
  v599 = v63;
  v64 = sub_21796698C();
  v534 = *(v64 - 8);
  v65 = *(v534 + 64);
  MEMORY[0x28223BE20](v64);
  v533 = &v504 - v66;
  v598 = v67;
  v68 = sub_21796698C();
  v537 = *(v68 - 8);
  v69 = *(v537 + 64);
  v70 = MEMORY[0x28223BE20](v68);
  v536 = &v504 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v535 = &v504 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  v574 = (&v504 - v75);
  v589 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v575 = *(v589 - 8);
  v76 = v575[8];
  v77 = MEMORY[0x28223BE20](v589);
  v528 = &v504 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v590 = &v504 - v79;
  v606 = v68;
  v620 = sub_21796944C();
  v595 = *(v620 - 8);
  v80 = *(v595 + 64);
  v81 = MEMORY[0x28223BE20](v620);
  v619 = &v504 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v617 = &v504 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AE08, &unk_21796B508);
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A778, &unk_21796A950);
  v658[0] = v8;
  v658[1] = v58;
  v631 = v58;
  v658[2] = v618;
  v658[3] = a4;
  v608 = a4;
  v86 = _s13ItemShelfCellVMa();
  v640 = sub_21796732C();
  v514 = v86;
  v87 = sub_21796698C();
  v88 = sub_21788D5B8(&unk_27CB8AE10);
  v89 = sub_21786438C();
  v658[0] = v85;
  v658[1] = MEMORY[0x277CD7E90];
  v519 = v87;
  v658[2] = v87;
  v516 = v88;
  v658[3] = v88;
  v658[4] = v89;
  v90 = sub_217967D9C();
  v91 = sub_21796698C();
  v92 = sub_21796698C();
  swift_getTupleTypeMetadata2();
  v93 = sub_217967E9C();
  v525 = *(v93 - 8);
  v94 = *(v525 + 64);
  v95 = MEMORY[0x28223BE20](v93);
  v524 = &v504 - v96;
  v520 = v90;
  v512 = *(v90 - 8);
  v97 = *(v512 + 64);
  v98 = MEMORY[0x28223BE20](v95);
  v511 = &v504 - v99;
  v522 = v91;
  v515 = *(v91 - 8);
  v100 = *(v515 + 64);
  v101 = MEMORY[0x28223BE20](v98);
  v513 = &v504 - v102;
  v526 = v92;
  v518 = *(v92 - 8);
  v103 = *(v518 + 64);
  v104 = MEMORY[0x28223BE20](v101);
  v523 = &v504 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104);
  v521 = &v504 - v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEC0, &qword_21796B610);
  v108 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107 - 8);
  v508 = &v504 - v109;
  v509 = sub_21796757C();
  v507 = *(v509 - 8);
  v110 = *(v507 + 64);
  v111 = MEMORY[0x28223BE20](v509);
  v506 = &v504 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v527 = v84;
  v113 = *(*(v84 - 8) + 64);
  v114 = MEMORY[0x28223BE20](v111);
  v517 = &v504 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v114);
  v558 = &v504 - v116;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A770, &qword_21796A948);
  v118 = *(*(v117 - 8) + 64);
  v119 = MEMORY[0x28223BE20](v117 - 8);
  v579 = &v504 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = MEMORY[0x28223BE20](v119);
  v584 = &v504 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v578 = &v504 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v573 = (&v504 - v126);
  v127 = MEMORY[0x28223BE20](v125);
  v567 = &v504 - v128;
  v632 = v85;
  v630 = *(v85 - 8);
  v129 = *(v630 + 64);
  v130 = MEMORY[0x28223BE20](v127);
  v580 = &v504 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = MEMORY[0x28223BE20](v130);
  v609 = &v504 - v133;
  v134 = MEMORY[0x28223BE20](v132);
  v560 = &v504 - v135;
  v136 = MEMORY[0x28223BE20](v134);
  v559 = &v504 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v585 = &v504 - v139;
  MEMORY[0x28223BE20](v138);
  v569 = &v504 - v140;
  v596 = v93;
  v635 = sub_21796944C();
  v638 = *(v635 - 8);
  v141 = *(v638 + 64);
  v142 = MEMORY[0x28223BE20](v635);
  v616 = &v504 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v142);
  v615 = &v504 - v144;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADE8, &qword_21796BE90);
  v658[0] = v633;
  v658[1] = v58;
  v658[2] = v618;
  v658[3] = v59;
  v145 = _s19ContainerHeaderCellVMa();
  WitnessTable = swift_getWitnessTable();
  v658[0] = v145;
  v658[1] = MEMORY[0x277D84A98];
  v658[2] = WitnessTable;
  v658[3] = MEMORY[0x277CE1538];
  sub_21796688C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ADF0, &qword_21796B500);
  v147 = sub_21796698C();
  v148 = sub_2179669FC();
  v149 = swift_getWitnessTable();
  v150 = sub_21788D5B8(&qword_27CB8ADF8);
  v711 = v149;
  v712 = v150;
  v151 = swift_getWitnessTable();
  v152 = sub_21788D650(&qword_27CB8A708);
  v658[0] = v147;
  v658[1] = v148;
  v658[2] = v151;
  v658[3] = v152;
  swift_getOpaqueTypeMetadata2();
  v153 = sub_21796698C();
  v154 = sub_217966FAC();
  v658[0] = v147;
  v658[1] = v148;
  v658[2] = v151;
  v658[3] = v152;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v156 = sub_21788D650(&qword_27CB8A710);
  v709 = OpaqueTypeConformance2;
  v710 = v156;
  v510 = v156;
  v157 = swift_getWitnessTable();
  v158 = sub_21788D650(&qword_27CB8AE00);
  v658[0] = v153;
  v658[1] = v154;
  v658[2] = v157;
  v658[3] = v158;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v159 = sub_217967E9C();
  v160 = swift_getWitnessTable();
  v549 = v159;
  v547 = v160;
  v161 = sub_217967CDC();
  v551 = *(v161 - 8);
  v162 = *(v551 + 64);
  MEMORY[0x28223BE20](v161);
  v548 = &v504 - v163;
  v594 = v164;
  v165 = sub_21796698C();
  v553 = *(v165 - 8);
  v166 = *(v553 + 64);
  MEMORY[0x28223BE20](v165);
  v550 = &v504 - v167;
  v593 = v168;
  v169 = sub_21796698C();
  v555 = *(v169 - 8);
  v170 = *(v555 + 64);
  MEMORY[0x28223BE20](v169);
  v552 = &v504 - v171;
  v592 = v172;
  v173 = sub_21796698C();
  v557 = *(v173 - 8);
  v174 = *(v557 + 64);
  v175 = MEMORY[0x28223BE20](v173);
  v556 = &v504 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v175);
  v554 = &v504 - v177;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0B0, &unk_21796BF60);
  v179 = *(*(v178 - 8) + 64);
  v180 = MEMORY[0x28223BE20](v178 - 8);
  v505 = &v504 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v180);
  v183 = &v504 - v182;
  v184 = sub_217968AFC();
  v185 = *(v184 - 8);
  v186 = *(v185 + 64);
  v187 = MEMORY[0x28223BE20](v184);
  v577 = &v504 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = MEMORY[0x28223BE20](v187);
  v576 = &v504 - v190;
  v191 = MEMORY[0x28223BE20](v189);
  v572 = &v504 - v192;
  v193 = MEMORY[0x28223BE20](v191);
  v571 = &v504 - v194;
  v195 = MEMORY[0x28223BE20](v193);
  v570 = &v504 - v196;
  v197 = MEMORY[0x28223BE20](v195);
  v568 = &v504 - v198;
  v199 = MEMORY[0x28223BE20](v197);
  v504 = &v504 - v200;
  v201 = MEMORY[0x28223BE20](v199);
  v566 = &v504 - v202;
  v203 = MEMORY[0x28223BE20](v201);
  v205 = &v504 - v204;
  v206 = v633;
  v565 = *(v633 - 8);
  v207 = *(v565 + 64);
  MEMORY[0x28223BE20](v203);
  v564 = &v504 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0);
  v591 = v173;
  v634 = sub_21796944C();
  v614 = *(v634 - 8);
  v209 = *(v614 + 64);
  v210 = MEMORY[0x28223BE20](v634);
  v613 = &v504 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v210);
  v612 = &v504 - v212;
  v213 = _s16ArtistDetailViewVMa();
  sub_217876FA0();
  sub_217968A5C();
  v214 = *(v185 + 8);
  v611 = v184;
  v640 = v185 + 8;
  v639 = v214;
  v214(v205, v184);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v183, 1, v206);
  v216 = MEMORY[0x277CDF918];
  v587 = v213;
  if (EnumTagSinglePayload == 1)
  {
    sub_21788D4D0(v183, &qword_27CB8B0B0);
    v217 = v613;
    __swift_storeEnumTagSinglePayload(v613, 1, 1, v591);
    v707 = swift_getWitnessTable();
    v708 = v216;
    v705 = swift_getWitnessTable();
    v706 = v216;
    v703 = swift_getWitnessTable();
    v704 = v216;
    swift_getWitnessTable();
    sub_2178AEE20(v217, v612);
    (*(v614 + 8))(v217, v634);
  }

  else
  {
    v218 = v213;
    v219 = MEMORY[0x277CDF918];
    (*(v565 + 32))();
    v220 = sub_217966E6C();
    MEMORY[0x28223BE20](v220);
    v221 = v641;
    v222 = v548;
    sub_217967CCC();
    sub_21796744C();
    v223 = v594;
    v224 = swift_getWitnessTable();
    v225 = v550;
    sub_217967A0C();
    (*(v551 + 8))(v222, v223);
    sub_21796742C();
    v646 = v224;
    v226 = v219;
    v647 = v219;
    v227 = v593;
    v228 = swift_getWitnessTable();
    v229 = v552;
    sub_217967A0C();
    (*(v553 + 8))(v225, v227);
    sub_21796743C();
    v230 = *&v221[*(v218 + 72) + 8];
    v644 = v228;
    v645 = v226;
    v231 = v226;
    v232 = v592;
    v233 = swift_getWitnessTable();
    v234 = v556;
    sub_217967A0C();
    (*(v555 + 8))(v229, v232);
    v642 = v233;
    v643 = v231;
    v235 = v591;
    swift_getWitnessTable();
    v236 = v554;
    sub_2179560E4(v234, v235);
    v237 = v557;
    v238 = *(v557 + 8);
    v238(v234, v235);
    sub_2179560E4(v236, v235);
    v238(v236, v235);
    v239 = v613;
    (*(v237 + 32))(v613, v234, v235);
    __swift_storeEnumTagSinglePayload(v239, 0, 1, v235);
    sub_2178AEE20(v239, v612);
    (*(v614 + 8))(v239, v634);
    (*(v565 + 8))(v564, v633);
  }

  v240 = v566;
  sub_217876FA0();
  v241 = v567;
  sub_217968A6C();
  v242 = v611;
  v639(v240, v611);
  v243 = v632;
  v244 = __swift_getEnumTagSinglePayload(v241, 1, v632);
  v245 = v636;
  v246 = v606;
  v247 = v630;
  if (v244 == 1)
  {
    sub_21788D4D0(v241, &qword_27CB8A770);
LABEL_8:
    v249 = v589;
    v250 = v575;
    v251 = v590;
    v252 = v616;
    __swift_storeEnumTagSinglePayload(v616, 1, 1, v596);
    swift_getWitnessTable();
    sub_2178AEE20(v252, v615);
    (*(v638 + 8))(v252, v635);
    goto LABEL_14;
  }

  v248 = v569;
  (*(v630 + 32))(v569, v241, v243);
  if (sub_2178D2AE4())
  {
    (*(v247 + 8))(v248, v243);
    goto LABEL_8;
  }

  v253 = v587;
  v254 = v641;
  v565 = sub_2178778EC();
  v566 = v255;
  v567 = *&v254[*(v253 + 56)];
  sub_217863EC4(v567);
  v658[0] = sub_2178778EC();
  v658[1] = v256;
  sub_217873C34();
  v257 = sub_21796763C();
  v555 = v259;
  v556 = v258;
  v261 = v260;
  v263 = v506;
  v262 = v507;
  v264 = v509;
  (*(v507 + 104))(v506, *MEMORY[0x277CE0A80], v509);
  v265 = sub_2179674BC();
  v266 = v508;
  __swift_storeEnumTagSinglePayload(v508, 1, 1, v265);
  sub_2179674CC();
  sub_21796752C();
  sub_21788D4D0(v266, &qword_27CB8AEC0);
  (*(v262 + 8))(v263, v264);
  v267 = v556;
  v268 = sub_2179675DC();
  v564 = v269;
  v271 = v270;
  v557 = v272;

  v273 = v267;
  v274 = v254;
  sub_21788C9B8(v257, v273, v261 & 1);

  v275 = sub_21796740C();
  v276 = v504;
  sub_217876FA0();
  v277 = v505;
  sub_217968A5C();
  v639(v276, v611);
  LODWORD(v254) = __swift_getEnumTagSinglePayload(v277, 1, v633);
  sub_21788D4D0(v277, &qword_27CB8B0B0);
  if (v254 == 1)
  {
    v278 = *&v274[*(v253 + 72) + 32];
  }

  sub_21796660C();
  v280 = v279;
  v282 = v281;
  v284 = v283;
  v286 = v285;
  v660 = v271 & 1;
  v659 = 0;
  v287 = sub_21796741C();
  v288 = &v274[*(v253 + 72)];
  v289 = *(v288 + 3);
  sub_21796660C();
  v291 = v290;
  v293 = v292;
  v295 = v294;
  v297 = v296;
  v661 = 0;
  v298 = sub_21796742C();
  v662 = 1;
  v658[0] = v268;
  v658[1] = v564;
  LOBYTE(v658[2]) = v271 & 1;
  v658[3] = v557;
  LOBYTE(v658[4]) = v275;
  v658[5] = v280;
  v658[6] = v282;
  v658[7] = v284;
  v658[8] = v286;
  LOBYTE(v658[9]) = 0;
  LOBYTE(v658[10]) = v287;
  v658[11] = v291;
  v658[12] = v293;
  v658[13] = v295;
  v658[14] = v297;
  LOBYTE(v658[15]) = 0;
  HIDWORD(v658[15]) = *&v664[3];
  *(&v658[15] + 1) = *v664;
  LOBYTE(v658[16]) = v298;
  *(&v658[16] + 1) = *v663;
  HIDWORD(v658[16]) = *&v663[3];
  memset(&v658[17], 0, 32);
  LOBYTE(v658[21]) = 1;
  if (qword_27CB8A3E0 != -1)
  {
    swift_once();
  }

  v299 = qword_27CB979B0;
  v300 = *algn_27CB979B8;
  v301 = qword_27CB979C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  v302 = swift_allocObject();
  *(v302 + 16) = xmmword_21796A340;
  *(v302 + 32) = 0x4449746E65726170;
  *(v302 + 40) = 0xE800000000000000;
  *(v302 + 72) = MEMORY[0x277D837D0];
  *(v302 + 48) = 0x6465727574616566;
  *(v302 + 56) = 0xEF736D75626C612DLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v303 = sub_217968EAC();
  sub_2178ED924(v303, v299, v300, v301);
  v305 = v304;
  v307 = v306;
  v309 = v308;

  memcpy(v657, v658, 0xA9uLL);
  sub_2178EE0A8(v305, v307, v309);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AEC8, &qword_21796B618);
  sub_21788CA2C();
  sub_21796790C();
  sub_21788D4D0(v658, &qword_27CB8AEC8);

  (*(v630 + 16))(v585, v569, v632);
  v310 = swift_allocObject();
  v311 = v608;
  *(v310 + 16) = v631;
  *(v310 + 24) = v311;
  *(v310 + 32) = 3;
  *(v310 + 40) = v565;
  v312 = v567;
  *(v310 + 48) = v566;
  *(v310 + 56) = v312;

  sub_217863EC4(v312);
  v655 = swift_getWitnessTable();
  v656 = v510;
  v313 = swift_getWitnessTable();
  sub_21788D650(&unk_27CB8AF10);
  v314 = v511;
  sub_217967D8C();
  sub_21796742C();
  v654 = v313;
  v315 = v520;
  v316 = swift_getWitnessTable();
  v317 = v513;
  sub_217967A0C();
  (*(v512 + 8))(v314, v315);
  sub_21796743C();
  v318 = *(v288 + 1);
  v652 = v316;
  v319 = MEMORY[0x277CDF918];
  v653 = MEMORY[0x277CDF918];
  v320 = v522;
  v321 = swift_getWitnessTable();
  v322 = v523;
  sub_217967A0C();
  (*(v515 + 8))(v317, v320);
  v650 = v321;
  v651 = v319;
  v323 = v526;
  v324 = swift_getWitnessTable();
  v325 = v521;
  sub_2179560E4(v322, v323);
  v326 = v518;
  v327 = *(v518 + 8);
  v327(v322, v323);
  v328 = v558;
  v329 = v517;
  sub_21788D484(v558, v517, &qword_27CB8AE08, &unk_21796B508);
  v657[0] = v329;
  (*(v326 + 16))(v322, v325, v323);
  v657[1] = v322;
  v689 = v527;
  v690 = v323;
  v648 = sub_21788CB7C(&unk_27CB8AEF8);
  v649 = v324;
  v330 = v524;
  sub_2178B9390(v657, 2, &v689);

  sub_2178643E0(v567);
  v327(v325, v323);
  sub_21788D4D0(v328, &qword_27CB8AE08);
  (*(v630 + 8))(v569, v632);
  v327(v322, v323);
  sub_21788D4D0(v329, &qword_27CB8AE08);
  v331 = v616;
  v332 = v596;
  (*(v525 + 32))(v616, v330, v596);
  __swift_storeEnumTagSinglePayload(v331, 0, 1, v332);
  swift_getWitnessTable();
  sub_2178AEE20(v331, v615);
  (*(v638 + 8))(v331, v635);
  v245 = v636;
  v246 = v606;
  v242 = v611;
  v249 = v589;
  v250 = v575;
  v251 = v590;
LABEL_14:
  v333 = v568;
  sub_217876FA0();
  v334 = v574;
  sub_217968ADC();
  v639(v333, v242);
  if (__swift_getEnumTagSinglePayload(v334, 1, v249) == 1)
  {
    sub_21788D4D0(v334, &qword_27CB8B0A0);
LABEL_18:
    v335 = v573;
    v336 = v619;
    __swift_storeEnumTagSinglePayload(v619, 1, 1, v246);
    v701 = swift_getWitnessTable();
    v337 = MEMORY[0x277CDF918];
    v702 = MEMORY[0x277CDF918];
    v699 = swift_getWitnessTable();
    v700 = v337;
    swift_getWitnessTable();
    v338 = v632;
    v339 = v603;
    goto LABEL_20;
  }

  (v250[4])(v251, v334, v249);
  if (sub_2178D2B80())
  {
    (v250[1])(v251, v249);
    goto LABEL_18;
  }

  v340 = v587;
  v341 = v641;
  v589 = sub_217877B30();
  v343 = v342;
  v344 = v528;
  (v250[2])(v528, v251, v249);
  v658[0] = *&v341[*(v340 + 56)];
  sub_217863EC4(v658[0]);
  sub_21796680C();
  v346 = v345;
  sub_21796753C();
  v347 = sub_21796748C();

  v348 = v530;
  sub_217921248(v589, v343, v344, v658, v347, 5, 1, 1, v530, v346, v631, v531, v631, v529);
  sub_21796742C();
  v349 = v599;
  v350 = swift_getWitnessTable();
  v351 = v250;
  v352 = v533;
  sub_217967A0C();
  (*(v532 + 8))(v348, v349);
  sub_21796741C();
  v353 = *&v641[*(v340 + 72) + 16];
  v667 = v350;
  v354 = MEMORY[0x277CDF918];
  v668 = MEMORY[0x277CDF918];
  v589 = MEMORY[0x277CDFAD8];
  v355 = v598;
  v356 = swift_getWitnessTable();
  v357 = v536;
  sub_217967A0C();
  v358 = v355;
  v359 = v606;
  (*(v534 + 8))(v352, v358);
  (v351[1])(v590, v249);
  v665 = v356;
  v339 = v603;
  v666 = v354;
  swift_getWitnessTable();
  v360 = v535;
  sub_2179560E4(v357, v359);
  v361 = v537;
  v362 = *(v537 + 8);
  v362(v357, v359);
  sub_2179560E4(v360, v359);
  v362(v360, v359);
  v242 = v611;
  v336 = v619;
  v363 = v357;
  v245 = v636;
  (*(v361 + 32))(v619, v363, v359);
  __swift_storeEnumTagSinglePayload(v336, 0, 1, v359);
  v335 = v573;
  v338 = v632;
LABEL_20:
  v364 = v607;
  sub_2178AEE20(v336, v617);
  v365 = *(v595 + 8);
  v590 = (v595 + 8);
  v575 = v365;
  (v365)(v336, v620);
  v366 = v570;
  sub_217876FA0();
  sub_217968A3C();
  v639(v366, v242);
  if (__swift_getEnumTagSinglePayload(v335, 1, v338) == 1)
  {
    sub_21788D4D0(v335, &qword_27CB8A770);
    v367 = v610;
LABEL_24:
    __swift_storeEnumTagSinglePayload(v245, 1, 1, v601);
    v697 = swift_getWitnessTable();
    v698 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    goto LABEL_26;
  }

  v368 = v630;
  v369 = v559;
  (*(v630 + 32))(v559, v335, v338);
  if (sub_2178D2AE4())
  {
    (*(v368 + 8))(v369, v338);
    v367 = v610;
    v245 = v636;
    goto LABEL_24;
  }

  v370 = v587;
  v371 = v641;
  v589 = sub_217877D78(v587);
  v373 = v372;
  v374 = v585;
  (*(v368 + 16))(v585, v369, v338);
  v658[0] = *&v371[*(v370 + 56)];
  sub_217863EC4(v658[0]);
  sub_21796680C();
  v376 = v375;
  v377 = v633;
  v378 = v631;
  v379 = v618;
  v380 = j__OUTLINED_FUNCTION_59();
  v501 = v379;
  v499 = v377;
  v338 = v632;
  v381 = v581;
  sub_2178B0304(v589, v373, v374, v658, 6, 1, v380 & 1, v581, v376, v499, v378, v501);
  sub_21796740C();
  v382 = swift_getWitnessTable();
  v383 = v539;
  sub_217967A0C();
  (*(v582 + 8))(v381, v339);
  (*(v368 + 8))(v369, v338);
  v669 = v382;
  v670 = MEMORY[0x277CDF918];
  v384 = v601;
  swift_getWitnessTable();
  v385 = v538;
  sub_2179560E4(v383, v384);
  v386 = v540;
  v387 = *(v540 + 8);
  v387(v383, v384);
  sub_2179560E4(v385, v384);
  v387(v385, v384);
  v388 = v384;
  v242 = v611;
  v245 = v636;
  v389 = v383;
  v364 = v607;
  (*(v386 + 32))(v636, v389, v388);
  __swift_storeEnumTagSinglePayload(v245, 0, 1, v388);
  v367 = v610;
LABEL_26:
  sub_2178AEE20(v245, v621);
  v390 = *(v597 + 8);
  v589 = v597 + 8;
  v574 = v390;
  v390(v245, v622);
  v391 = v571;
  sub_217876FA0();
  v392 = v588;
  sub_217968AEC();
  v639(v391, v242);
  if (__swift_getEnumTagSinglePayload(v392, 1, v367) == 1)
  {
    sub_21788D4D0(v392, &qword_27CB8B090);
    v393 = v584;
LABEL_30:
    v396 = v624;
    __swift_storeEnumTagSinglePayload(v624, 1, 1, v364);
    swift_getWitnessTable();
    v397 = v609;
    goto LABEL_32;
  }

  v394 = v561;
  v395 = v562;
  (*(v561 + 32))(v562, v392, v367);
  if (sub_2178D2B9C())
  {
    (*(v394 + 8))(v395, v367);
    v393 = v584;
    v242 = v611;
    goto LABEL_30;
  }

  v398 = v587;
  v399 = v641;
  v588 = sub_217877F58();
  v573 = v400;
  v401 = v541;
  (*(v394 + 16))(v541, v395, v367);
  v658[0] = *&v399[*(v398 + 56)];
  sub_217863EC4(v658[0]);
  sub_21796680C();
  v403 = v402;
  v404 = v544;
  v405 = v631;
  v406 = v542;
  LOBYTE(v399) = sub_217862E84();
  v407 = j__OUTLINED_FUNCTION_59();
  v502 = v406;
  v408 = v545;
  v409 = v401;
  v410 = v607;
  sub_2178B0304(v588, v573, v409, v658, 7, v399 & 1, v407 & 1, v545, v403, v404, v405, v502);
  (*(v394 + 8))(v562, v610);
  swift_getWitnessTable();
  v411 = v543;
  sub_2179560E4(v408, v410);
  v412 = v546;
  v413 = *(v546 + 8);
  v413(v408, v410);
  sub_2179560E4(v411, v410);
  v413(v411, v410);
  v396 = v624;
  (*(v412 + 32))(v624, v408, v410);
  __swift_storeEnumTagSinglePayload(v396, 0, 1, v410);
  v397 = v609;
  v393 = v584;
  v242 = v611;
LABEL_32:
  sub_2178AEE20(v396, v623);
  v414 = *(v600 + 8);
  v588 = v600 + 8;
  v573 = v414;
  (v414)(v396, v637);
  v415 = v572;
  sub_217876FA0();
  v416 = v578;
  sub_217968ABC();
  v417 = v416;
  v639(v415, v242);
  if (__swift_getEnumTagSinglePayload(v416, 1, v338) == 1)
  {
    sub_21788D4D0(v416, &qword_27CB8A770);
    v418 = v631;
    v419 = v629;
LABEL_36:
    __swift_storeEnumTagSinglePayload(v419, 1, 1, v339);
    swift_getWitnessTable();
    goto LABEL_38;
  }

  v420 = v630;
  v421 = v560;
  (*(v630 + 32))(v560, v417, v338);
  v422 = sub_2178D2AE4();
  v423 = v631;
  v419 = v629;
  if (v422)
  {
    (*(v420 + 8))(v421, v338);
    v418 = v423;
    goto LABEL_36;
  }

  v424 = v587;
  v425 = v641;
  v610 = sub_2178781A4();
  v427 = v426;
  v428 = v585;
  (*(v420 + 16))(v585, v421, v338);
  v658[0] = *&v425[*(v424 + 56)];
  sub_217863EC4(v658[0]);
  sub_21796680C();
  v429 = v563;
  v430 = v428;
  v393 = v584;
  sub_2178B0304(v610, v427, v430, v658, 8, 1, 0, v563, v431, v633, v631, v618);
  (*(v420 + 8))(v421, v632);
  swift_getWitnessTable();
  v432 = v581;
  sub_2179560E4(v429, v339);
  v433 = v582;
  v434 = *(v582 + 8);
  v434(v429, v339);
  sub_2179560E4(v432, v339);
  v435 = v432;
  v397 = v609;
  v434(v435, v339);
  v242 = v611;
  v436 = v429;
  v338 = v632;
  (*(v433 + 32))(v419, v436, v339);
  __swift_storeEnumTagSinglePayload(v419, 0, 1, v339);
  v418 = v631;
LABEL_38:
  sub_2178AEE20(v419, v625);
  v437 = v602[1];
  v610 = v602 + 1;
  v609 = v437;
  (v437)(v419, v628);
  v438 = v576;
  sub_217876FA0();
  sub_217968A8C();
  v639(v438, v242);
  if (__swift_getEnumTagSinglePayload(v393, 1, v338) == 1)
  {
    sub_21788D4D0(v393, &qword_27CB8A770);
LABEL_42:
    __swift_storeEnumTagSinglePayload(v419, 1, 1, v339);
    swift_getWitnessTable();
    goto LABEL_44;
  }

  v439 = v630;
  (*(v630 + 32))(v397, v393, v338);
  if (sub_2178D2AE4())
  {
    (*(v439 + 8))(v397, v338);
    goto LABEL_42;
  }

  v440 = v587;
  v441 = v641;
  v584 = sub_2178783F4();
  v578 = v442;
  v443 = v585;
  (*(v439 + 16))(v585, v397, v338);
  v658[0] = *&v441[*(v440 + 56)];
  sub_217863EC4(v658[0]);
  sub_21796680C();
  v445 = v444;
  v446 = v633;
  v447 = v618;
  v448 = j__OUTLINED_FUNCTION_59();
  v503 = v447;
  v419 = v629;
  v500 = v446;
  v449 = v397;
  v450 = v563;
  sub_2178B0304(v584, v578, v443, v658, 9, 1, v448 & 1, v563, v445, v500, v418, v503);
  (*(v439 + 8))(v449, v338);
  swift_getWitnessTable();
  v451 = v581;
  sub_2179560E4(v450, v339);
  v452 = v582;
  v453 = *(v582 + 8);
  v453(v450, v339);
  sub_2179560E4(v451, v339);
  v453(v451, v339);
  v242 = v611;
  v454 = v452;
  v338 = v632;
  (*(v454 + 32))(v419, v450, v339);
  __swift_storeEnumTagSinglePayload(v419, 0, 1, v339);
LABEL_44:
  v455 = v580;
  sub_2178AEE20(v419, v626);
  (v609)(v419, v628);
  v456 = v577;
  sub_217876FA0();
  v457 = v579;
  sub_217968A7C();
  v639(v456, v242);
  if (__swift_getEnumTagSinglePayload(v457, 1, v338) == 1)
  {
    sub_21788D4D0(v457, &qword_27CB8A770);
  }

  else
  {
    v458 = v630;
    (*(v630 + 32))(v455, v457, v338);
    if (!sub_2178D2AE4())
    {
      v464 = v587;
      v465 = v641;
      v640 = sub_217878640();
      v639 = v466;
      (*(v458 + 16))(v585, v455, v338);
      v658[0] = *&v465[*(v464 + 56)];
      sub_217863EC4(v658[0]);
      sub_21796680C();
      v468 = v467;
      v469 = v633;
      v470 = v618;
      LOBYTE(v465) = sub_217862E84();
      v471 = j__OUTLINED_FUNCTION_59();
      v472 = v563;
      sub_2178B0304(v640, v639, v585, v658, 10, v465 & 1, v471 & 1, v563, v468, v469, v418, v470);
      (*(v458 + 8))(v455, v632);
      swift_getWitnessTable();
      v473 = v581;
      sub_2179560E4(v472, v339);
      v474 = v582;
      v475 = *(v582 + 8);
      v475(v472, v339);
      sub_2179560E4(v473, v339);
      v475(v473, v339);
      v463 = v629;
      (*(v474 + 32))(v629, v472, v339);
      __swift_storeEnumTagSinglePayload(v463, 0, 1, v339);
      v459 = v634;
      v460 = v614;
      v461 = v613;
      v462 = v636;
      goto LABEL_50;
    }

    (*(v458 + 8))(v455, v338);
  }

  v459 = v634;
  v460 = v614;
  v461 = v613;
  v462 = v636;
  v463 = v629;
  __swift_storeEnumTagSinglePayload(v629, 1, 1, v339);
  swift_getWitnessTable();
LABEL_50:
  sub_2178AEE20(v463, v627);
  v476 = v628;
  (v609)(v463, v628);
  (*(v460 + 16))(v461, v612, v459);
  v658[0] = v461;
  v477 = v616;
  v478 = v635;
  (*(v638 + 16))(v616, v615);
  v658[1] = v477;
  v479 = v619;
  v480 = v620;
  (*(v595 + 16))(v619, v617, v620);
  v658[2] = v479;
  v481 = v622;
  (*(v597 + 16))(v462, v621, v622);
  v658[3] = v462;
  v482 = v624;
  v483 = v637;
  (*(v600 + 16))();
  v658[4] = v482;
  v484 = v602[2];
  v484(v463, v625, v476);
  v658[5] = v463;
  v485 = v604;
  v484(v604, v626, v476);
  v658[6] = v485;
  v486 = v605;
  v484(v605, v627, v476);
  v658[7] = v486;
  v657[0] = v634;
  v657[1] = v478;
  v657[2] = v480;
  v487 = v480;
  v657[3] = v481;
  v657[4] = v483;
  v657[5] = v476;
  v657[6] = v476;
  v657[7] = v476;
  v687 = swift_getWitnessTable();
  v488 = MEMORY[0x277CDF918];
  v688 = MEMORY[0x277CDF918];
  v685 = swift_getWitnessTable();
  v686 = v488;
  v683 = swift_getWitnessTable();
  v684 = v488;
  v682 = swift_getWitnessTable();
  v689 = swift_getWitnessTable();
  v681 = swift_getWitnessTable();
  v690 = swift_getWitnessTable();
  v679 = swift_getWitnessTable();
  v680 = v488;
  v677 = swift_getWitnessTable();
  v678 = v488;
  v676 = swift_getWitnessTable();
  v691 = swift_getWitnessTable();
  v489 = swift_getWitnessTable();
  v674 = v489;
  v675 = v488;
  v673 = swift_getWitnessTable();
  v692 = swift_getWitnessTable();
  v672 = swift_getWitnessTable();
  v490 = v637;
  v693 = swift_getWitnessTable();
  v671 = v489;
  v694 = swift_getWitnessTable();
  v695 = v694;
  v696 = v694;
  sub_2178B9390(v658, 8, v657);
  v491 = v609;
  (v609)(v627, v476);
  v491(v626, v476);
  v491(v625, v476);
  v492 = v573;
  (v573)(v623, v490);
  v493 = v574;
  v574(v621, v481);
  v494 = v575;
  (v575)(v617, v487);
  v495 = *(v638 + 8);
  v638 += 8;
  v641 = v495;
  (v495)(v615, v635);
  v496 = *(v614 + 8);
  v497 = v634;
  v496(v612, v634);
  v491(v605, v476);
  v491(v604, v476);
  v491(v629, v476);
  v492(v624, v637);
  v493(v636, v622);
  v494(v619, v620);
  (v641)(v616, v635);
  return (v496)(v613, v497);
}
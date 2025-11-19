uint64_t sub_268033404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v87 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242310);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v81 - v5;
  v7 = sub_26804DD4C();
  v106 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v104 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CarPlayCapsuleButtonLabelStyle(0);
  v91 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v92 = v10;
  v93 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_26804D67C();
  v95 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244148);
  v97 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = &v81 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244150);
  v13 = MEMORY[0x28223BE20](v102);
  v105 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v103 = &v81 - v15;
  v84 = sub_26804D48C();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26804DECC();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244158);
  MEMORY[0x28223BE20](v88);
  v85 = &v81 - v20;
  v21 = sub_26804D3AC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244160);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v90 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v89 = &v81 - v28;
  v86 = v9;
  v29 = *(v9 + 24);
  v101 = a1;
  v30 = a1 + v29;
  v31 = *v30;
  if (*(v30 + 8) != 1)
  {

    sub_26804E8AC();
    v36 = sub_26804D77C();
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();
    sub_267FEB7B0(v31, 0);
    (*(v22 + 8))(v24, v21);
    if (v114 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v37 = v83;
    v38 = *(v83 + 104);
    v39 = v84;
    v38(v19, *MEMORY[0x277CE0118], v84);
    v40 = sub_26804D64C();
    sub_26804CF6C();
    v41 = v85;
    sub_2680348FC(v19, v85, MEMORY[0x277CE1260]);
    v42 = v82;
    v38(v82, *MEMORY[0x277CE0128], v39);
    v43 = sub_26804D47C();
    (*(v37 + 8))(v42, v39);
    v44 = v109;
    v45 = v111;
    v46 = COERCE_UNSIGNED_INT64(v109 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v43 & 1) == 0);
    v47 = v112;
    v48 = v113;
    v49 = sub_26804DFAC();
    v51 = v50;
    v52 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244178) + 68);
    *v52 = v46;
    v53 = v110;
    *(v52 + 8) = v44;
    *(v52 + 16) = v53;
    *(v52 + 24) = v45;
    *(v52 + 32) = v47;
    *(v52 + 40) = v48;
    *(v52 + 48) = v40;
    *(v52 + 52) = 256;
    *(v52 + 56) = v49;
    *(v52 + 64) = v51;
    sub_268034A2C(v19, MEMORY[0x277CE1260]);
    v33 = v101;
    v54 = (v101 + *(v86 + 32));
    v56 = v54[1];
    v57 = v54[2];
    *&v114 = *v54;
    v55 = v114;
    *(&v114 + 1) = v56;
    *&v115 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244180);
    sub_26804DDEC();
    *&v114 = v55;
    *(&v114 + 1) = v56;
    *&v115 = v57;
    sub_26804DDEC();
    sub_26804DFAC();
    sub_26804CFBC();
    v35 = v88;
    v58 = (v41 + *(v88 + 36));
    v59 = v115;
    *v58 = v114;
    v58[1] = v59;
    v58[2] = v116;
    v60 = v41;
    v34 = v89;
    sub_267FDBADC(v60, v89, &qword_280244158);
    v32 = 0;
    goto LABEL_6;
  }

  if (v31)
  {
    goto LABEL_5;
  }

LABEL_3:
  v32 = 1;
  v33 = v101;
  v34 = v89;
  v35 = v88;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v34, v32, 1, v35);
  v61 = v94;
  sub_26804D68C();
  v62 = v93;
  sub_2680348FC(v33, v93, type metadata accessor for CarPlayCapsuleButtonLabelStyle);
  v63 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v64 = swift_allocObject();
  sub_268034958(v62, v64 + v63, type metadata accessor for CarPlayCapsuleButtonLabelStyle);
  v65 = sub_268034210(&qword_280244168, MEMORY[0x277CDE220]);
  v66 = v96;
  v67 = v99;
  sub_26804DA4C();

  (*(v95 + 8))(v61, v67);
  v68 = v106;
  v69 = v104;
  (*(v106 + 104))(v104, *MEMORY[0x277CE1020], v7);
  v107 = v67;
  v108 = v65;
  swift_getOpaqueTypeConformance2();
  v70 = v103;
  v71 = v100;
  sub_26804DA1C();
  (*(v68 + 8))(v69, v7);
  (*(v97 + 8))(v66, v71);
  v72 = sub_26804D81C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v72);
  v73 = sub_26804D85C();
  sub_267FB05B4(v6, &qword_280242310);
  KeyPath = swift_getKeyPath();
  v75 = (v70 + *(v102 + 36));
  *v75 = KeyPath;
  v75[1] = v73;
  v76 = v90;
  sub_267FDC224(v34, v90, &qword_280244160);
  v77 = v105;
  sub_267FDC224(v70, v105, &qword_280244150);
  v78 = v87;
  sub_267FDC224(v76, v87, &qword_280244160);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244170);
  sub_267FDC224(v77, v78 + *(v79 + 48), &qword_280244150);
  sub_267FB05B4(v70, &qword_280244150);
  sub_267FB05B4(v34, &qword_280244160);
  sub_267FB05B4(v77, &qword_280244150);
  return sub_267FB05B4(v76, &qword_280244160);
}

uint64_t sub_268033FE4()
{
  type metadata accessor for CarPlayCapsuleButtonLabelStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244180);
  return sub_26804DDFC();
}

uint64_t sub_268034094()
{
  result = sub_26804C12C();
  if (v1 <= 0x3F)
  {
    result = sub_26804BF7C();
    if (v2 <= 0x3F)
    {
      result = sub_26804E22C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_268034154()
{
  v1 = *(type metadata accessor for UnreadMessagesCarPlayButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26803156C(v2);
}

unint64_t sub_2680341BC()
{
  result = qword_280244038;
  if (!qword_280244038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244038);
  }

  return result;
}

uint64_t sub_268034210(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_268034268()
{
  result = qword_280244048;
  if (!qword_280244048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244040);
    sub_267FD1D04();
    sub_267FC126C(&qword_280244050, &qword_280244058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244048);
  }

  return result;
}

uint64_t sub_268034320(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_268034374(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_268034444()
{
  sub_2680345FC(319, &qword_280242178, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_267FFFA34();
    if (v1 <= 0x3F)
    {
      sub_2680345A8(319, &qword_2802427A0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2680345A8(319, &qword_280242C48, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_2680345FC(319, &qword_2802440A8, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2680345A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2680345FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_268034660()
{
  result = qword_2802440B0;
  if (!qword_2802440B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244088);
    sub_268034718();
    sub_267FC126C(&qword_2802440C8, &qword_2802440D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802440B0);
  }

  return result;
}

unint64_t sub_268034718()
{
  result = qword_2802440B8;
  if (!qword_2802440B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244080);
    sub_2680347A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802440B8);
  }

  return result;
}

unint64_t sub_2680347A4()
{
  result = qword_2802440C0;
  if (!qword_2802440C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244078);
    sub_26804D6AC();
    type metadata accessor for CarPlayCapsuleButtonLabelStyle(255);
    sub_268034210(&qword_280242110, MEMORY[0x277CDE278]);
    sub_268034210(&qword_280244090, type metadata accessor for CarPlayCapsuleButtonLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802440C0);
  }

  return result;
}

uint64_t sub_2680348FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  return a2;
}

uint64_t sub_268034958(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  return a2;
}

uint64_t sub_2680349B4()
{
  type metadata accessor for CarPlayCapsuleButtonLabelStyle(0);

  return sub_268033FE4();
}

uint64_t sub_268034A2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_268034A80()
{
  result = qword_280244188;
  if (!qword_280244188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802440E0);
    sub_267FC126C(&qword_280244190, &qword_280244198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244188);
  }

  return result;
}

uint64_t sub_268034B38()
{
  v0 = sub_26804CD4C();
  __swift_allocate_value_buffer(v0, qword_2802487E0);
  __swift_project_value_buffer(v0, qword_2802487E0);
  if (qword_280241138 != -1)
  {
    swift_once();
  }

  v1 = qword_2802487F8;
  return sub_26804CD5C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_268034C28()
{
  sub_268034C94();
  result = sub_26804EA5C();
  qword_2802487F8 = result;
  return result;
}

unint64_t sub_268034C94()
{
  result = qword_2802441A0;
  if (!qword_2802441A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802441A0);
  }

  return result;
}

uint64_t sub_268034CD8()
{
  v0 = sub_26804DC3C();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_26804DCDC();
  qword_280248800 = result;
  return result;
}

uint64_t sub_268034DB8(uint64_t a1, uint64_t *a2)
{
  v27 = a2;
  v4 = type metadata accessor for ContactResult(0);
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v24[1] = v2;
  v28 = MEMORY[0x277D84F90];
  sub_267FCB1AC();
  v10 = v28;
  v11 = (a1 + 40);
  do
  {
    v12 = *(v11 - 1);
    v13 = *v11;
    v14 = v27;
    swift_beginAccess();
    v15 = *v14;
    v16 = *(v15 + 16);
    swift_bridgeObjectRetain_n();
    if (v16 && (v17 = sub_268007544(v12, v13), (v18 & 1) != 0))
    {
      v19 = *(*(v15 + 56) + 8 * v17);
    }

    else
    {
      v19 = v9;
    }

    swift_endAccess();
    sub_26804BE3C();

    v20 = v25;
    v21 = &v7[*(v25 + 20)];
    *v21 = v12;
    v21[1] = v13;
    *&v7[*(v20 + 24)] = v19;
    *&v7[*(v20 + 28)] = v9;
    v28 = v10;
    v22 = *(v10 + 16);
    if (v22 >= *(v10 + 24) >> 1)
    {
      sub_267FCB1AC();
      v10 = v28;
    }

    *(v10 + 16) = v22 + 1;
    sub_268037E9C(v7, v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22);
    v11 += 2;
    --v8;
  }

  while (v8);
  return v10;
}

uint64_t sub_268034FC4(uint64_t a1, uint64_t *a2)
{
  v26 = a2;
  v4 = type metadata accessor for ContactResult(0);
  v5 = *(v4 - 8);
  v24 = v4;
  v25 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v23 = v2;
  v27 = MEMORY[0x277D84F90];
  sub_267FCB1AC();
  v10 = v27;
  v11 = (a1 + 40);
  do
  {
    v12 = *(v11 - 1);
    v13 = *v11;
    v14 = *v26;
    v15 = *(*v26 + 16);
    swift_bridgeObjectRetain_n();
    if (v15 && (v16 = sub_268007544(v12, v13), (v17 & 1) != 0))
    {
      v18 = *(*(v14 + 56) + 8 * v16);
    }

    else
    {
      v18 = v9;
    }

    sub_26804BE3C();

    v19 = v24;
    v20 = &v7[*(v24 + 20)];
    *v20 = v12;
    v20[1] = v13;
    *&v7[*(v19 + 24)] = v9;
    *&v7[*(v19 + 28)] = v18;
    v27 = v10;
    v21 = *(v10 + 16);
    if (v21 >= *(v10 + 24) >> 1)
    {
      sub_267FCB1AC();
      v10 = v27;
    }

    *(v10 + 16) = v21 + 1;
    sub_268037E9C(v7, v10 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21);
    v11 += 2;
    --v8;
  }

  while (v8);
  return v10;
}

uint64_t sub_2680351B4(uint64_t a1)
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

  sub_268038244(result, 1, sub_268006DF0);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for ContactResult(0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_2680352C8(unint64_t a1)
{
  v3 = sub_267FDA00C(a1);
  v4 = sub_267FDA00C(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2680381A4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26803885C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

void sub_268035374(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_5_10(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268038244(v4, 1, sub_267FAFA9C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_7();
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
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_26803542C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_5_10(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268038244(v4, 1, sub_2680070F4);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_7();
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
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2680354E4(uint64_t a1, void *a2, uint64_t *a3)
{
  v7 = sub_267FDA00C(a1);
  for (i = 0; v7 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D60D7C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v11 = v9;
    sub_268037BF8(&v11, a2, a3);

    if (v3)
    {
      return;
    }
  }
}

uint64_t sub_2680355BC()
{
  OUTLINED_FUNCTION_13();
  v0[191] = v1;
  v0[185] = v2;
  v0[179] = v3;
  v4 = type metadata accessor for ContactResult(0);
  v0[197] = v4;
  v0[198] = *(v4 - 8);
  v0[199] = swift_task_alloc();
  v0[200] = swift_task_alloc();
  v0[201] = swift_task_alloc();
  v0[202] = swift_task_alloc();
  v0[203] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2680356A8()
{
  v18 = v0;
  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v1 = sub_26804CD4C();
  v0[204] = __swift_project_value_buffer(v1, qword_2802487E0);

  v2 = sub_26804CD3C();
  v3 = sub_26804E88C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[185];
    v5 = v0[179];
    v6 = OUTLINED_FUNCTION_12_3();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_267FAE0C4(v5, v4, &v17);
    _os_log_impl(&dword_267FA7000, v2, v3, "#AggregatedContactSearcher searching for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1_1();
  }

  v8 = v0[191];
  v9 = v0[185];
  v10 = v0[179];
  v11 = swift_task_alloc();
  v0[205] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802441B0);
  swift_asyncLet_begin();
  v12 = swift_task_alloc();
  v0[206] = v12;
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = v9;
  swift_asyncLet_begin();
  v13 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x282200928](v13, v14, v15, v0 + 162);
}

uint64_t sub_2680358C8()
{
  v1 = v0[167];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[198];
    v5 = v0[197];
    v16 = MEMORY[0x277D84F90];

    sub_267FCB224(0, v2, 0);
    v3 = v16;
    OUTLINED_FUNCTION_4_12();
    v6 = *(v4 + 72);
    do
    {
      v7 = v0[203];
      sub_268037E38(v1, v7);
      v8 = (v7 + *(v5 + 20));
      v10 = *v8;
      v9 = v8[1];

      sub_267FCB710(v7);
      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        v14 = OUTLINED_FUNCTION_14_5(v11);
        sub_267FCB224(v14, v12 + 1, 1);
      }

      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v1 += v6;
      --v2;
    }

    while (v2);
  }

  v0[207] = sub_267FF4D38(v3);

  return MEMORY[0x282200928](v0 + 82, v0 + 173, sub_268035A20, v0 + 168);
}

uint64_t sub_268035A34()
{
  v1 = v0[173];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[198];
    v19 = v0[197];
    v20 = MEMORY[0x277D84F90];

    sub_267FCB204(0, v2, 0);
    v3 = v20;
    OUTLINED_FUNCTION_4_12();
    v18 = *(v4 + 72);
    do
    {
      v5 = v0[203];
      sub_268037E38(v1, v5);
      v6 = (v5 + *(v19 + 20));
      v7 = *v6;
      v8 = v6[1];
      v9 = *(v5 + *(v19 + 28));

      sub_267FCB710(v5);
      v11 = *(v20 + 16);
      v10 = *(v20 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = OUTLINED_FUNCTION_14_5(v10);
        sub_267FCB204(v13, v11 + 1, 1);
      }

      *(v20 + 16) = v11 + 1;
      v12 = (v20 + 24 * v11);
      v12[4] = v7;
      v12[5] = v8;
      v12[6] = v9;
      v1 += v18;
      --v2;
    }

    while (v2);
  }

  v0[208] = sub_2680370BC(v3);
  v14 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x282200928](v14, v15, v16, v0 + 174);
}

uint64_t sub_268035BC4()
{
  v1 = v0[167];
  v2 = *(v1 + 16);
  v27 = v0[208];
  if (v2)
  {
    v3 = v0[198];
    v4 = v0[197];
    v28 = MEMORY[0x277D84F90];

    sub_267FCB1AC();
    v5 = v28;
    v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v24 = v6;
    v7 = v1 + v6;
    v26 = *(v3 + 72);
    do
    {
      v8 = v0[201];
      sub_268037E38(v7, v8);
      if (*(v27 + 16) && (v9 = (v8 + v4[5]), v10 = *v9, v11 = v9[1], v12 = sub_268007544(*v9, v11), (v13 & 1) != 0))
      {
        v14 = v0[202];
        v15 = v4;
        v16 = v0[201];
        v25 = *(*(v27 + 56) + 8 * v12);
        v17 = *(v16 + v15[6]);

        sub_26804BE3C();
        v18 = v16;
        v4 = v15;
        v6 = v24;
        sub_267FCB710(v18);
        v19 = (v14 + v4[5]);
        *v19 = v10;
        v19[1] = v11;
        *(v14 + v4[6]) = v17;
        *(v14 + v4[7]) = v25;
      }

      else
      {
        sub_268037E9C(v0[201], v0[202]);
      }

      v21 = *(v28 + 16);
      v20 = *(v28 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_14_5(v20);
        sub_267FCB1AC();
      }

      v22 = v0[202];
      *(v28 + 16) = v21 + 1;
      sub_268037E9C(v22, v28 + v6 + v21 * v26);
      v7 += v26;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v0[209] = v5;

  return MEMORY[0x282200928](v0 + 82, v0 + 173, sub_268035DE8, v0 + 180);
}

uint64_t sub_268035DFC()
{
  v1 = v0;
  v2 = v0[207];
  v36 = v0[197];
  v37 = v0[198];
  v3 = v0[173];
  v38 = *(v3 + 16);

  v5 = 0;
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = v5;
LABEL_3:
    if (v6 == v38)
    {
      break;
    }

    if (v6 >= *(v3 + 16))
    {
      __break(1u);
      return MEMORY[0x282200920](v4);
    }

    v7 = v1;
    v8 = v1[200];
    v9 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v10 = *(v37 + 72);
    v39 = v6 + 1;
    v11 = v3;
    sub_268037E38(v3 + v9 + v10 * v6, v8);
    if (*(v2 + 16))
    {
      v12 = (v8 + *(v36 + 20));
      v13 = *v12;
      v14 = v12[1];
      sub_26804ED7C();
      sub_26804E71C();
      v15 = sub_26804ED9C();
      v16 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v17 = v15 & v16;
        if (((*(v2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        v18 = (*(v2 + 48) + 16 * v17);
        if (*v18 != v13 || v18[1] != v14)
        {
          v20 = sub_26804EC9C();
          v15 = v17 + 1;
          if ((v20 & 1) == 0)
          {
            continue;
          }
        }

        v1 = v7;
        v4 = sub_267FCB710(v7[200]);
        v6 = v39;
        v3 = v11;
        goto LABEL_3;
      }
    }

    v1 = v7;
    sub_268037E9C(v7[200], v7[199]);
    v21 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267FCB1AC();
      v21 = v35;
    }

    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    if (v23 >= v22 >> 1)
    {
      OUTLINED_FUNCTION_14_5(v22);
      sub_267FCB1AC();
      v21 = v35;
    }

    v24 = v7[199];
    *(v21 + 16) = v23 + 1;
    v35 = v21;
    v4 = sub_268037E9C(v24, v21 + v9 + v23 * v10);
    v3 = v11;
    v5 = v39;
  }

  v25 = v1[209];

  sub_2680351B4(v35);
  v26 = v25;
  v1[210] = v25;

  v27 = sub_26804CD3C();
  v28 = sub_26804E88C();
  if (OUTLINED_FUNCTION_7_8(v28))
  {
    v29 = OUTLINED_FUNCTION_12_3();
    *v29 = 134217984;
    *(v29 + 4) = *(v26 + 16);

    OUTLINED_FUNCTION_13_7();
    _os_log_impl(v30, v31, v32, v33, v29, 0xCu);
    OUTLINED_FUNCTION_1_1();
  }

  else
  {
  }

  v4 = (v1 + 82);

  return MEMORY[0x282200920](v4);
}

uint64_t sub_268036118()
{
  OUTLINED_FUNCTION_13();

  v0 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x282200920](v0);
}

uint64_t sub_26803618C()
{

  OUTLINED_FUNCTION_11_5();
  v2 = *(v0 + 1680);

  return v1(v2);
}

uint64_t sub_268036238(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2680362D8;

  return sub_2680363E8();
}

uint64_t sub_2680362D8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_8_8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2680363E8()
{
  OUTLINED_FUNCTION_13();
  *(v0 + 392) = v1;
  *(v0 + 400) = v2;

  return MEMORY[0x2822009F8](sub_268036474, 0, 0);
}

uint64_t sub_268036474()
{
  v68 = v0;
  v67[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FE8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2680551A0;
  *(v1 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2680551B0;
  v3 = *MEMORY[0x277CBD078];
  v4 = *MEMORY[0x277CBD070];
  *(inited + 32) = *MEMORY[0x277CBD078];
  *(inited + 40) = v4;
  v5 = *MEMORY[0x277CBCFC8];
  *(inited + 48) = *MEMORY[0x277CBCFC8];
  v6 = v3;
  v7 = v4;
  v8 = v5;
  sub_2680352C8(inited);
  sub_267FCAB20(0, &qword_280244200);

  v9 = sub_26803756C();
  v10 = objc_opt_self();
  v11 = sub_26804E6BC();
  v12 = [v10 predicateForContactsMatchingFullTextSearch:v11 containerIdentifiers:0 groupIdentifiers:0];

  [v9 setPredicate_];
  [v9 setUnifyResults_];
  v13 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802441D0);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2680531B0;
  *(v14 + 32) = sub_26804E6CC();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_26804E6CC();
  *(v14 + 56) = v16;
  *(v14 + 64) = sub_26804E6CC();
  *(v14 + 72) = v17;
  *(v14 + 80) = sub_26804E6CC();
  *(v14 + 88) = v18;
  *(v14 + 96) = sub_26804E6CC();
  *(v14 + 104) = v19;
  *(v14 + 112) = sub_26804E6CC();
  *(v14 + 120) = v20;
  *(v14 + 128) = sub_26804E6CC();
  *(v14 + 136) = v21;
  *(v14 + 144) = sub_26804E6CC();
  *(v14 + 152) = v22;
  *(v14 + 160) = sub_26804E6CC();
  *(v14 + 168) = v23;
  *(v14 + 176) = sub_26804E6CC();
  *(v14 + 184) = v24;
  *(v14 + 192) = sub_26804E6CC();
  *(v14 + 200) = v25;
  v26 = sub_267FF4D38(v14);
  v27 = swift_allocObject();
  *(v27 + 16) = MEMORY[0x277D84F90];
  v28 = swift_allocObject();
  *(v28 + 16) = MEMORY[0x277D84F98];
  if (qword_280241148 != -1)
  {
    swift_once();
  }

  v29 = qword_280248808;
  v30 = swift_allocObject();
  v30[2] = v26;
  v30[3] = v13;
  v30[4] = v28;
  v30[5] = v27;
  v0[39] = sub_2680387CC;
  v0[40] = v30;
  v0[35] = MEMORY[0x277D85DD0];
  v0[36] = 1107296256;
  v0[37] = sub_268037B30;
  v0[38] = &block_descriptor_4;
  v31 = _Block_copy(v0 + 35);
  aBlock = v13;

  v0[47] = 0;
  v32 = [v29 enumerateContactsAndMatchInfoWithFetchRequest:v9 error:v0 + 47 usingBlock:v31];
  _Block_release(v31);
  v33 = v0[47];
  v34 = v9;
  if (v32)
  {
    v35 = qword_280241130;
    v36 = v33;
    if (v35 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v37 = sub_26804CD4C();
    __swift_project_value_buffer(v37, qword_2802487E0);

    v38 = sub_26804CD3C();
    v39 = sub_26804E88C();
    if (OUTLINED_FUNCTION_7_8(v39))
    {
      v40 = OUTLINED_FUNCTION_12_3();
      *v40 = 134217984;
      swift_beginAccess();
      *(v40 + 4) = *(*(v28 + 16) + 16);

      OUTLINED_FUNCTION_13_7();
      _os_log_impl(v41, v42, v43, v44, v40, 0xCu);
      OUTLINED_FUNCTION_1_1();
    }

    else
    {
    }

    swift_beginAccess();

    v62 = sub_268034DB8(v61, (v28 + 16));
  }

  else
  {
    v45 = v33;

    v46 = sub_26804BD0C();

    swift_willThrow();
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v47 = sub_26804CD4C();
    __swift_project_value_buffer(v47, qword_2802487E0);
    v48 = v46;
    v49 = sub_26804CD3C();
    v50 = sub_26804E89C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_12_3();
      v66 = v34;
      v52 = swift_slowAlloc();
      v67[0] = v52;
      *v51 = 136315138;
      v0[48] = v46;
      v53 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242738);
      v54 = sub_26804E6EC();
      v56 = sub_267FAE0C4(v54, v55, v67);

      *(v51 + 4) = v56;
      OUTLINED_FUNCTION_13_7();
      _os_log_impl(v57, v58, v59, v60, v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_1_1();
    }

    else
    {
    }

    v62 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_11_5();

  return v63(v62);
}

uint64_t sub_268036BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_268036C68;

  return sub_268036D54(a3, a4, a2);
}

uint64_t sub_268036C68()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_8_8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_268036D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_8(sub_268036D70);
}

uint64_t sub_268036D70()
{
  v24 = v0;
  v22 = MEMORY[0x277D84F90];
  v23[0] = MEMORY[0x277D84F98];
  if (qword_280241150 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = qword_280248810;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802441D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_268050170;
  v23[1] = v2;
  v23[2] = v1;

  MEMORY[0x26D60D390](37, 0xE100000000000000);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = sub_26804E77C();

  v6 = sub_26804E85C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2680551A0;
  *(inited + 32) = SEMAppCustomVocabularyTypeToNumber();
  if (sub_267FDA00C(inited))
  {
    sub_2680385A0(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_26800D63C();
  }

  sub_267FCAB20(0, &qword_2802441E0);
  sub_268038764();
  v8 = sub_26804E85C();

  v9 = [v3 searchAppCustomVocabularyFTSWithWildcardPatterns:v5 appIds:v6 types:v8];

  sub_267FCAB20(0, &qword_2802441F0);
  v10 = sub_26804E78C();

  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v11 = sub_26804CD4C();
  __swift_project_value_buffer(v11, qword_2802487E0);

  v12 = sub_26804CD3C();
  v13 = sub_26804E88C();
  if (OUTLINED_FUNCTION_7_8(v13))
  {
    v14 = OUTLINED_FUNCTION_12_3();
    *v14 = 134217984;
    *(v14 + 4) = sub_267FDA00C(v10);

    OUTLINED_FUNCTION_13_7();
    _os_log_impl(v15, v16, v17, v18, v14, 0xCu);
    OUTLINED_FUNCTION_1_1();
  }

  else
  {
  }

  sub_2680354E4(v10, v23, &v22);

  v19 = sub_268034FC4(v22, v23);

  OUTLINED_FUNCTION_11_5();

  return v20(v19);
}

uint64_t sub_2680370BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802441B8);
    v1 = sub_26804EC4C();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_2680382BC(v2, 1, &v4);

  return v4;
}

uint64_t sub_268037170()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26803721C;

  return sub_2680355BC();
}

uint64_t sub_26803721C()
{
  OUTLINED_FUNCTION_13();
  v2 = v1;
  OUTLINED_FUNCTION_23();
  v3 = *v0;
  OUTLINED_FUNCTION_13_5();
  *v4 = v3;

  OUTLINED_FUNCTION_11_5();

  return v5(v2);
}

uint64_t sub_268037308()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_15_5(v1);

  return sub_268036238(v2);
}

uint64_t sub_2680373A8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  v1 = *v0;
  OUTLINED_FUNCTION_13_5();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_268037490()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_15_5(v4);

  return sub_268036BB8(v5, v6, v2, v3);
}

id sub_268037538()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  qword_280248808 = result;
  return result;
}

id sub_26803756C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244208);
  v1 = sub_26804E77C();

  v2 = [v0 initWithKeysToFetch_];

  return v2;
}

void sub_2680375F0(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_268037844(a2, a4);
  if (v11)
  {
    v12 = [a5 stringFromContact_];
    if (v12)
    {
      v13 = v12;
      v14 = sub_26804E6CC();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    swift_beginAccess();
    v17 = sub_268007A34(v14, v16, *(a6 + 16));
    if (v17)
    {
      v28 = v17;
      swift_endAccess();
      v18 = a1;
      MEMORY[0x26D60D3C0]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26804E79C();
      }

      sub_26804E7BC();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(a6 + 16);
      sub_268016B9C(v28, v14, v16, isUniquelyReferenced_nonNull_native);
      v20 = v27;
    }

    else
    {
      swift_endAccess();
      swift_beginAccess();

      sub_268006D64();
      v21 = *(*(a7 + 16) + 16);
      sub_268006DB0(v21);
      v22 = *(a7 + 16);
      *(v22 + 16) = v21 + 1;
      v23 = v22 + 16 * v21;
      *(v23 + 32) = v14;
      *(v23 + 40) = v16;
      *(a7 + 16) = v22;
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FE8);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_2680551A0;
      *(v24 + 32) = a1;
      swift_beginAccess();
      v25 = a1;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(a6 + 16);
      sub_268016B9C(v24, v14, v16, v26);
      v20 = v29;
    }

    *(a6 + 16) = v20;

    swift_endAccess();
  }
}

void sub_268037844(void *a1, uint64_t a2)
{
  if (([a1 matchedNameProperty] & 1) == 0)
  {
    v4 = sub_2680387F0(a1);
    if (v4)
    {
      v5 = v4;
      v6 = v4 + 64;
      v7 = 1 << *(v4 + 32);
      v8 = -1;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      v9 = v8 & *(v4 + 64);
      v10 = (v7 + 63) >> 6;

      v11 = 0;
      v12 = MEMORY[0x277D84F90];
      while (v9)
      {
LABEL_11:
        v14 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        sub_268007984(*(v5 + 48) + 40 * (v14 | (v11 << 6)), v37);
        v39 = v37[0];
        v40 = v37[1];
        v41 = v38;
        if (swift_dynamicCast())
        {
          v15 = v43;
          if (v43)
          {
            v36 = v42;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_267FAFA9C();
              v12 = v19;
            }

            v16 = *(v12 + 16);
            v17 = v16 + 1;
            if (v16 >= *(v12 + 24) >> 1)
            {
              v35 = v16 + 1;
              v20 = *(v12 + 16);
              sub_267FAFA9C();
              v17 = v35;
              v16 = v20;
              v12 = v21;
            }

            *(v12 + 16) = v17;
            v18 = v12 + 16 * v16;
            *(v18 + 32) = v36;
            *(v18 + 40) = v15;
          }
        }
      }

      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v13 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v13);
        ++v11;
        if (v9)
        {
          v11 = v13;
          goto LABEL_11;
        }
      }

      v22 = 0;
      v23 = *(v12 + 16);
      v24 = v12 + 32;
LABEL_19:
      while (v22 != v23)
      {
        v25 = v22;
        if (v22 >= *(v12 + 16))
        {
          goto LABEL_35;
        }

        ++v22;
        if (*(a2 + 16))
        {
          v26 = (v24 + 16 * v25);
          v28 = *v26;
          v27 = v26[1];
          sub_26804ED7C();

          sub_26804E71C();
          v29 = sub_26804ED9C();
          v30 = ~(-1 << *(a2 + 32));
          do
          {
            v31 = v29 & v30;
            if (((*(a2 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
            {

              v24 = v12 + 32;
              goto LABEL_19;
            }

            v32 = (*(a2 + 48) + 16 * v31);
            if (*v32 == v28 && v32[1] == v27)
            {
              break;
            }

            v34 = sub_26804EC9C();
            v29 = v31 + 1;
          }

          while ((v34 & 1) == 0);

          break;
        }
      }
    }

    else
    {
LABEL_36:
      __break(1u);
    }
  }
}

void sub_268037B30(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a3;
  v7(v9, v8, a4);
}

id sub_268037BC4()
{
  result = [objc_allocWithZone(MEMORY[0x277D55D00]) init];
  qword_280248810 = result;
  return result;
}

uint64_t sub_268037BF8(id *a1, void *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = [*a1 vocabularyString];
  v7 = sub_26804E6CC();
  v9 = v8;

  v10 = sub_268007A34(v7, v9, *a2);

  if (v10)
  {
    v11 = v5;
    MEMORY[0x26D60D3C0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26804E79C();
    }

    sub_26804E7BC();
    v12 = [v11 vocabularyString];
    v13 = sub_26804E6CC();
    v15 = v14;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *a2;
    sub_268016BB0(v10, v13, v15, isUniquelyReferenced_nonNull_native);
    v17 = v33;
  }

  else
  {
    v18 = [v5 vocabularyString];
    v19 = sub_26804E6CC();
    v21 = v20;

    sub_268006D64();
    v22 = *(*a3 + 16);
    sub_268006DB0(v22);
    v23 = *a3;
    *(v23 + 16) = v22 + 1;
    v24 = v23 + 16 * v22;
    *(v24 + 32) = v19;
    *(v24 + 40) = v21;
    v25 = [v5 vocabularyString];
    v26 = sub_26804E6CC();
    v28 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FE8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2680551A0;
    *(v29 + 32) = v5;
    v30 = v5;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *a2;
    sub_268016BB0(v29, v26, v28, v31);
    v17 = v34;
  }

  *a2 = v17;
}

uint64_t sub_268037E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268037E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268037F00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802441B8);
  v34 = a2;
  result = sub_26804EC3C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_267FFD918(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_26804ED7C();
    sub_26804E71C();
    result = sub_26804ED9C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2680381A4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_26804EC1C();
LABEL_9:
  result = sub_26804EB7C();
  *v1 = result;
  return result;
}

uint64_t sub_268038244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_2680382BC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_26804ECEC();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_268007544(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802441C0);
      sub_26804EBEC();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_268037F00(v14, a2 & 1);
  v16 = sub_268007544(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242738);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_26804EB4C();
  MEMORY[0x26D60D390](0xD00000000000001BLL, 0x80000002680570B0);
  sub_26804EBCC();
  MEMORY[0x26D60D390](39, 0xE100000000000000);
  sub_26804EC0C();
  __break(1u);
}

uint64_t sub_2680385A0(uint64_t a1)
{
  v1 = a1;
  if (sub_267FDA00C(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802441F8);
    v2 = sub_26804EB2C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v20 = sub_267FDA00C(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_267FDA010(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x26D60D7C0](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_26804EA0C();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_267FCAB20(0, &qword_2802441E0);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_26804EA1C();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_268038764()
{
  result = qword_2802441E8;
  if (!qword_2802441E8)
  {
    sub_267FCAB20(255, &qword_2802441E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802441E8);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2680387F0(void *a1)
{
  v1 = [a1 matchedProperties];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26804E64C();

  return v3;
}

uint64_t sub_26803885C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_26804EC1C();
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
    result = sub_267FDA00C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244208);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268038A60();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244210);
          v9 = sub_2680389CC(v12, i, a3);
          v11 = *v10;
          swift_unknownObjectRetain();
          (v9)(v12, 0);
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

uint64_t (*sub_2680389CC(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_268037E2C(a3);
  sub_267FDA010(a2, v6, a3);
  if (v6)
  {
    v7 = swift_unknownObjectRetain();
  }

  else
  {
    v7 = MEMORY[0x26D60D7C0](a2, a3);
  }

  *a1 = v7;
  return sub_268038A58;
}

unint64_t sub_268038A60()
{
  result = qword_280244218;
  if (!qword_280244218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244218);
  }

  return result;
}

id sub_268038AF0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CDAA58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244310);
  sub_26804D76C();
  [v1 setDataSource_];

  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v2 = sub_26804CD4C();
  __swift_project_value_buffer(v2, qword_2802487E0);
  sub_268039724(v0, v10);
  v3 = sub_26804CD3C();
  v4 = sub_26804E88C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    OUTLINED_FUNCTION_0_9();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244318);
    MEMORY[0x26D60CAE0](&v9, v6);
    *(v5 + 4) = v9;
    sub_26803975C(v0);
    _os_log_impl(&dword_267FA7000, v3, v4, "#PhotoQuickLookController currentIndex: %ld", v5, 0xCu);
    MEMORY[0x26D60E1E0](v5, -1, -1);
  }

  else
  {
    sub_26803975C(v0);
  }

  OUTLINED_FUNCTION_0_9();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244318);
  MEMORY[0x26D60CAE0](&v9, v7);
  [v1 setCurrentPreviewItemIndex_];
  return v1;
}

uint64_t sub_268038CC8()
{
  type metadata accessor for PhotoQuickLookController.Coordinator();
  v1 = swift_allocObject();
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  sub_268039724(v0, v4);
  return v1;
}

id sub_268038D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtCV14SiriMessagesUI24PhotoQuickLookController16PhotoPreviewItem_title];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = OBJC_IVAR____TtCV14SiriMessagesUI24PhotoQuickLookController16PhotoPreviewItem_url;
  v7 = sub_26804BD7C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a3, v7);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for PhotoQuickLookController.PhotoPreviewItem();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a3, v7);
  return v9;
}

uint64_t sub_268038E60()
{
  v1 = *(v0 + OBJC_IVAR____TtCV14SiriMessagesUI24PhotoQuickLookController16PhotoPreviewItem_title);

  return v1;
}

uint64_t sub_268038F94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV14SiriMessagesUI24PhotoQuickLookController16PhotoPreviewItem_url;
  v4 = sub_26804BD7C();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

id sub_268039064()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoQuickLookController.PhotoPreviewItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PhotoQuickLookController.PhotoPreviewItem()
{
  result = qword_280244290;
  if (!qword_280244290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268039170()
{
  result = sub_26804BD7C();
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

id sub_26803923C(uint64_t a1, unint64_t a2)
{
  v4 = sub_26804BD7C();
  result = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v2 + 16);
    if (*(v9 + 16) > a2)
    {
      (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a2);
      v10 = objc_allocWithZone(type metadata accessor for PhotoQuickLookController.PhotoPreviewItem());
      return sub_268038D28(0, 0xE000000000000000, v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268039448()
{

  return MEMORY[0x2821FE8D8](v0, 65, 7);
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

uint64_t sub_268039500(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_268039540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2680395E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268038CC8();
  *a1 = result;
  return result;
}

uint64_t sub_268039630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26803978C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_268039694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26803978C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2680396F8()
{
  sub_26803978C();
  sub_26804D74C();
  __break(1u);
}

unint64_t sub_26803978C()
{
  result = qword_280244320;
  if (!qword_280244320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244320);
  }

  return result;
}

uint64_t type metadata accessor for ButtonView()
{
  result = qword_280244328;
  if (!qword_280244328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268039854()
{
  sub_267FEFF54();
  if (v0 <= 0x3F)
  {
    sub_26804E22C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2680398F4@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for ButtonView();
  v21 = *(v2 - 8);
  v20[1] = *(v21 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244338);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  sub_268039C78(v20 - v10);
  sub_26803AA20();
  v12 = sub_26804D97C();
  sub_267FC16BC(v11, &qword_280244338);
  v28 = MEMORY[0x277CE11C8];
  v29 = MEMORY[0x277D63A60];
  v27 = v12;
  v20[0] = v1;
  sub_26803AE88(v1, v4, type metadata accessor for ButtonView);
  v13 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v14 = swift_allocObject();
  sub_26803AC04(v4, v14 + v13);
  v23 = v1;
  sub_26804DE2C();
  sub_267FC126C(&qword_280241B08, &qword_280241B10);
  v15 = sub_26804D97C();
  (*(v6 + 8))(v8, v5);
  v26 = MEMORY[0x277D63A60];
  v25 = MEMORY[0x277CE11C8];
  v24 = v15;
  v16 = v22;
  sub_26804E2EC();
  sub_26803AE88(v20[0], v4, type metadata accessor for ButtonView);
  v17 = swift_allocObject();
  sub_26803AC04(v4, v17 + v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244360);
  v19 = (v16 + *(result + 36));
  *v19 = 0;
  v19[1] = 0;
  v19[2] = sub_26803ACB0;
  v19[3] = v17;
  return result;
}

uint64_t sub_268039C78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_26804E1EC();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ButtonView();
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B10);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244358);
  MEMORY[0x28223BE20](v44);
  v42 = &v35 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244368);
  MEMORY[0x28223BE20](v43);
  v12 = &v35 - v11;
  v13 = type metadata accessor for AutoSendButtonView();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  v16 = sub_2680413DC();

  if (v16 & 1) != 0 || (sub_26804DF1C(), v17 = sub_26803FDA4(), , (v17))
  {
    sub_26804DF1C();
    v18 = &v15[*(v13 + 20)];
    sub_26804E62C();
    sub_26803B000(&qword_2802412E0, MEMORY[0x277D63F60]);
    *v18 = sub_26804D17C();
    v18[1] = v19;
    sub_26804E21C();
    v20 = &v15[*(v13 + 28)];
    v46 = 0;
    sub_26804DDDC();
    v21 = v48;
    *v20 = v47;
    *(v20 + 1) = v21;
    type metadata accessor for MessageDraftSnippetViewModel();
    sub_26803B000(&qword_280241DA0, type metadata accessor for MessageDraftSnippetViewModel);
    sub_26804DF3C();
    sub_26803AE88(v15, v12, type metadata accessor for AutoSendButtonView);
    swift_storeEnumTagMultiPayload();
    sub_26803B000(&qword_280244348, type metadata accessor for AutoSendButtonView);
    sub_26803AADC();
    sub_26804D5AC();
    return sub_26803AEE8(v15);
  }

  else
  {
    sub_26803AE88(v1, &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ButtonView);
    v23 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v24 = swift_allocObject();
    v25 = sub_26803AC04(&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    MEMORY[0x28223BE20](v25);
    *(&v35 - 2) = v2;
    sub_26804DE2C();
    v27 = v39;
    v26 = v40;
    v28 = v41;
    (*(v40 + 104))(v39, *MEMORY[0x277D63A90], v41);
    sub_267FC126C(&qword_280241B08, &qword_280241B10);
    v29 = v38;
    sub_26804D98C();
    (*(v26 + 8))(v27, v28);
    (*(v37 + 8))(v9, v29);
    sub_26804DF1C();
    LOBYTE(v28) = sub_26804046C();

    KeyPath = swift_getKeyPath();
    v31 = swift_allocObject();
    *(v31 + 16) = (v28 & 1) == 0;
    v32 = v42;
    v33 = &v42[*(v44 + 36)];
    *v33 = KeyPath;
    v33[1] = sub_267FCC05C;
    v33[2] = v31;
    v34 = v32;
    sub_267FB9E5C(v32, v12);
    swift_storeEnumTagMultiPayload();
    sub_26803B000(&qword_280244348, type metadata accessor for AutoSendButtonView);
    sub_26803AADC();
    sub_26804D5AC();
    return sub_267FC16BC(v34, &qword_280244358);
  }
}

uint64_t sub_26803A38C()
{
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v0 = sub_26804CD4C();
  __swift_project_value_buffer(v0, qword_2802487E0);
  v1 = sub_26804CD3C();
  v2 = sub_26804E88C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_267FA7000, v1, v2, "#ButtonView disappearing", v3, 2u);
    MEMORY[0x26D60E1E0](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  v4 = sub_2680413DC();

  if (v4)
  {
    sub_26804DF1C();
    sub_268041AD4();
  }

  return result;
}

uint64_t sub_26803A4D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v3 = sub_26804CD4C();
  __swift_project_value_buffer(v3, qword_2802487E0);
  v4 = sub_26804CD3C();
  v5 = sub_26804E88C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_267FA7000, v4, v5, "#ButtonView send button tapped", v6, 2u);
    MEMORY[0x26D60E1E0](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  type metadata accessor for ButtonView();
  sub_26804E20C();
  sub_268040828();

  return sub_26802D2F0(v2);
}

uint64_t sub_26803A664()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_26804C30C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v7 = sub_26804CD4C();
  __swift_project_value_buffer(v7, qword_2802487E0);
  v8 = sub_26804CD3C();
  v9 = sub_26804E88C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_267FA7000, v8, v9, "#ButtonView cancel button tapped", v10, 2u);
    MEMORY[0x26D60E1E0](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  (*(v4 + 104))(v6, *MEMORY[0x277D5D4D8], v3);
  type metadata accessor for ButtonView();
  sub_26804E20C();
  sub_26803CCA8(v6, v2);

  sub_26802D2F0(v2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26803A8B8@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_26804C41C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  (*(v5 + 16))(v7, v16[0] + OBJC_IVAR____TtC14SiriMessagesUI23MessageSnippetViewModel_labels, v4);

  v9 = a1(v8);
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v16[0] = v9;
  v16[1] = v11;
  sub_267FB0C1C();
  result = sub_26804D95C();
  *a2 = result;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v15;
  return result;
}

unint64_t sub_26803AA20()
{
  result = qword_280244340;
  if (!qword_280244340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244338);
    sub_26803B000(&qword_280244348, type metadata accessor for AutoSendButtonView);
    sub_26803AADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244340);
  }

  return result;
}

unint64_t sub_26803AADC()
{
  result = qword_280244350;
  if (!qword_280244350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241B10);
    sub_267FC126C(&qword_280241B08, &qword_280241B10);
    swift_getOpaqueTypeConformance2();
    sub_267FC126C(&qword_280241B48, &qword_280241B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244350);
  }

  return result;
}

uint64_t sub_26803AC04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_20()
{
  v1 = (type metadata accessor for ButtonView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(v0 + v3);
  v6 = v1[7];
  sub_26804E22C();
  OUTLINED_FUNCTION_4();
  (*(v7 + 8))(v0 + v3 + v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26803AE88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26803AEE8(uint64_t a1)
{
  v2 = type metadata accessor for AutoSendButtonView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26803AF44()
{
  result = qword_280244370;
  if (!qword_280244370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244360);
    sub_26803B000(&qword_2802438E0, MEMORY[0x277D63C38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244370);
  }

  return result;
}

uint64_t sub_26803B000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26803B048@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v7 = v1;
  OUTLINED_FUNCTION_0_10();
  sub_26803C35C(v3, v4);
  sub_26804C03C();

  v5 = OBJC_IVAR____TtC14SiriMessagesUI30TapbackCarPlaySnippetViewModel__selectedTapback;
  swift_beginAccess();
  return sub_267FB035C(v7 + v5, a1, &qword_280241FD8);
}

uint64_t sub_26803B110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_267FB035C(a1, &v6 - v3, &qword_280241FD8);
  return sub_26803B1BC(v4);
}

uint64_t sub_26803B1BC(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_13();
  v6 = OBJC_IVAR____TtC14SiriMessagesUI30TapbackCarPlaySnippetViewModel__selectedTapback;
  swift_beginAccess();
  sub_267FB035C(v1 + v6, v2, &qword_280241FD8);
  v7 = sub_26803BCF8(v2, a1);
  sub_267FC16BC(v2, &qword_280241FD8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26803BC50();
  }

  else
  {
    sub_267FB035C(a1, v2, &qword_280241FD8);
    swift_beginAccess();
    sub_26803C260(v2, v1 + v6);
    swift_endAccess();
  }

  return sub_267FC16BC(a1, &qword_280241FD8);
}

uint64_t sub_26803B354(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14SiriMessagesUI30TapbackCarPlaySnippetViewModel__selectedTapback;
  swift_beginAccess();
  sub_26803C2EC(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_26803B410(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_10();
  sub_26803C35C(v4, v5);
  sub_26804C03C();

  return *(v2 + *a2);
}

uint64_t sub_26803B4C8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26803BC50();
  }

  return result;
}

uint64_t sub_26803B56C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC14SiriMessagesUI30TapbackCarPlaySnippetViewModel__selectedTapback;
  v9 = sub_26804C24C();
  __swift_storeEnumTagSinglePayload(v2 + v8, 1, 1, v9);
  *(v2 + OBJC_IVAR____TtC14SiriMessagesUI30TapbackCarPlaySnippetViewModel__canSendRequest) = 1;
  *(v2 + OBJC_IVAR____TtC14SiriMessagesUI30TapbackCarPlaySnippetViewModel__dismissalTimerEnabled) = 1;
  sub_26804C06C();
  sub_26804CAFC();
  sub_26803B1BC(v7);
  sub_26804CB2C();
  OUTLINED_FUNCTION_4();
  (*(v10 + 8))(a1);
  return v2;
}

uint64_t sub_26803B684(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_13();
  v5 = sub_26804C24C();
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(v1, a1, v5);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v5);
  return sub_26803B1BC(v1);
}

uint64_t sub_26803B740(uint64_t a1)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241810);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  v36 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241818);
  OUTLINED_FUNCTION_15(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v35 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  OUTLINED_FUNCTION_15(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_13();
  v10 = sub_26804C85C();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26804BF7C();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v22 = sub_26804CD4C();
  __swift_project_value_buffer(v22, qword_2802487E0);
  v23 = sub_26804CD3C();
  v24 = sub_26804E87C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_267FA7000, v23, v24, "#TapbackCarPlaySnippetViewModel sending a direct invocation to dismiss this snippet", v25, 2u);
    MEMORY[0x26D60E1E0](v25, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241828);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_268050170;
  (*(v12 + 104))(v15, *MEMORY[0x277D5D708], v10);
  sub_26804C84C();
  (*(v12 + 8))(v15, v10);
  sub_26804E65C();
  v27 = sub_26804BFFC();
  v28 = MEMORY[0x277D63778];
  *(v26 + 56) = v27;
  *(v26 + 64) = v28;
  __swift_allocate_boxed_opaque_existential_1((v26 + 32));
  sub_26804BFEC();

  sub_26804BF8C();
  sub_267FB035C(v37, v1, &qword_280241820);
  v29 = sub_26804E40C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v29) == 1)
  {
    (*(v18 + 8))(v21, v16);
    return sub_267FC16BC(v1, &qword_280241820);
  }

  else
  {
    v31 = v35;
    (*(v18 + 16))(v35, v21, v16);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v16);
    v32 = sub_26804E2DC();
    v33 = v36;
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v32);
    sub_26804E3FC();
    sub_267FC16BC(v33, &qword_280241810);
    sub_267FC16BC(v31, &qword_280241818);
    (*(v18 + 8))(v21, v16);
    return (*(*(v29 - 8) + 8))(v1, v29);
  }
}

uint64_t sub_26803BC50()
{
  OUTLINED_FUNCTION_0_10();
  sub_26803C35C(v0, v1);
  return sub_26804C02C();
}

uint64_t sub_26803BCF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26804C24C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_267FB035C(a1, &v20 - v13, &qword_280241FD8);
  sub_267FB035C(a2, &v14[v15], &qword_280241FD8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    sub_267FB035C(v14, v10, &qword_280241FD8);
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_26803C35C(&qword_280241FE0, MEMORY[0x277D5D3D8]);
      v17 = sub_26804E6AC();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_267FC16BC(v14, &qword_280241FD8);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_267FC16BC(v14, &qword_280241FD0);
    v16 = 1;
    return v16 & 1;
  }

  sub_267FC16BC(v14, &qword_280241FD8);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_26803BFF8()
{
  sub_267FC16BC(v0 + OBJC_IVAR____TtC14SiriMessagesUI30TapbackCarPlaySnippetViewModel__selectedTapback, &qword_280241FD8);
  v1 = OBJC_IVAR____TtC14SiriMessagesUI30TapbackCarPlaySnippetViewModel___observationRegistrar;
  sub_26804C07C();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for TapbackCarPlaySnippetViewModel()
{
  result = qword_280244398;
  if (!qword_280244398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26803C100()
{
  sub_26803C1D8();
  if (v0 <= 0x3F)
  {
    sub_26804C07C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26803C1D8()
{
  if (!qword_2802443A8)
  {
    sub_26804C24C();
    v0 = sub_26804EA6C();
    if (!v1)
    {
      atomic_store(v0, &qword_2802443A8);
    }
  }
}

uint64_t sub_26803C260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26803C2EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26803C35C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26803C3A4()
{
  v0 = sub_26803C850();
  v1 = sub_26804E9FC();

  return v1;
}

uint64_t sub_26803C3D8()
{

  v1 = OBJC_IVAR____TtC14SiriMessagesUI23MessageSnippetViewModel_labels;
  sub_26804C41C();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC14SiriMessagesUI23MessageSnippetViewModel___observationRegistrar;
  sub_26804C07C();
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

void *sub_26803C498()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_26803E4C0(v1, v2);
  OUTLINED_FUNCTION_2_3();

  v3 = *(v0 + 16);
  v4 = v3;
  return v3;
}

void sub_26803C520(void *a1)
{
  v3 = *(v1 + 16);
  v4 = v3;
  LOBYTE(v3) = sub_26803DA18(v3, a1);

  if (v3)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_6();
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_3_0();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_12_8();

    OUTLINED_FUNCTION_14_6();
  }

  else
  {
    v7 = *(v1 + 16);
    *(v1 + 16) = a1;
  }
}

uint64_t sub_26803C5F8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_26803E4C0(v1, v2);
  OUTLINED_FUNCTION_2_3();

  return *(v0 + 24);
}

uint64_t sub_26803C67C(uint64_t result, char a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 24) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 24) = result;
    *(v2 + 32) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_13();
  *(v5 - 16) = a2 & 1;
  OUTLINED_FUNCTION_12_8();
}

uint64_t sub_26803C738()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_26803E4C0(v1, v2);
  OUTLINED_FUNCTION_2_3();

  return *(v0 + 33);
}

uint64_t sub_26803C7B8(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_0();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_12_8();
  }

  return result;
}

id sub_26803C850()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_26803E4C0(v1, v2);
  OUTLINED_FUNCTION_2_3();

  v3 = *(v0 + 40);

  return v3;
}

void sub_26803C8E0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  sub_267FCAB20(0, &qword_280244468);
  v5 = v4;
  v6 = sub_26804EA1C();

  if (v6)
  {
    v7 = *(v2 + 40);
    *(v2 + 40) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_6();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_3_0();
    *(v9 - 16) = v2;
    *(v9 - 8) = a1;
    sub_26803D970();

    OUTLINED_FUNCTION_14_6();
  }
}

uint64_t sub_26803C9E0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_26803E4C0(v1, v2);
  OUTLINED_FUNCTION_2_3();

  v3 = *(v0 + 48);

  return v3;
}

void sub_26803CA70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (OUTLINED_FUNCTION_16_4() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_6();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_6_13();
    *(v7 - 16) = a2;
    OUTLINED_FUNCTION_12_8();

    OUTLINED_FUNCTION_14_6();
  }
}

uint64_t sub_26803CB44()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_11();
  sub_26803E4C0(v1, v2);
  OUTLINED_FUNCTION_2_3();

  v3 = *(v0 + 64);

  return v3;
}

void sub_26803CBD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (OUTLINED_FUNCTION_16_4() & 1) != 0)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_6();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_6_13();
    *(v7 - 16) = a2;
    OUTLINED_FUNCTION_12_8();

    OUTLINED_FUNCTION_14_6();
  }
}

void sub_26803CCA8(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241810);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = sub_26804C85C();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_10();
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_26804EB4C();
  sub_26804C2FC();
  v11 = sub_26804E6FC();
  v13 = v12;

  v29 = v11;
  v30 = v13;
  MEMORY[0x26D60D390](0x5F4E4F545455425FLL, 0xEE00444550504154);
  v15 = v29;
  v14 = v30;
  (*(v9 + 104))(v2, *MEMORY[0x277D5D6F8], v7);
  v16 = sub_26804C84C();
  v18 = v17;
  (*(v9 + 8))(v2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268050170;
  strcpy((inited + 32), "buttonPressed");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_26804C2FC();
  *(inited + 56) = v20;
  v21 = sub_26804E65C();
  v22 = *MEMORY[0x277D63BE0];
  v23 = sub_26804E2DC();
  OUTLINED_FUNCTION_4();
  (*(v24 + 104))(v6, v22, v23);
  OUTLINED_FUNCTION_15_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
  sub_26803CF6C(v16, v18, v21, v15, v14, v6, v28);

  sub_267FC16BC(v6, &qword_280241810);
  OUTLINED_FUNCTION_23_0();
}

void sub_26803CF6C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  v51 = a4;
  v52 = a5;
  v50 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241818);
  OUTLINED_FUNCTION_15(v13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  v16 = v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  OUTLINED_FUNCTION_15(v17);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  v20 = v47 - v19;
  v21 = sub_26804BF7C();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_10();
  if ((sub_26803C738() & 1) == 0)
  {
    v48 = a7;
    v29 = sub_26803C7B8(1);
    (*(*v7 + 480))(v29);
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v49 = v23;
    v30 = sub_26804CD4C();
    __swift_project_value_buffer(v30, qword_2802487E0);

    v31 = sub_26804CD3C();
    v32 = sub_26804E88C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v47[1] = a6;
      v35 = a1;
      v36 = v34;
      v53 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_267FAE0C4(v35, a2, &v53);
      _os_log_impl(&dword_267FA7000, v31, v32, "#MessageSnippetViewModel sending direct invocation: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_1_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241828);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_268050170;
    sub_26803DF54(v50);
    v38 = sub_26804BFFC();
    v39 = MEMORY[0x277D63778];
    *(v37 + 56) = v38;
    *(v37 + 64) = v39;
    __swift_allocate_boxed_opaque_existential_1((v37 + 32));
    sub_26804BFEC();

    sub_26804BF8C();
    sub_26803E430(v48, v20);
    v40 = sub_26804E40C();
    if (__swift_getEnumTagSinglePayload(v20, 1, v40) == 1)
    {
      (*(v49 + 8))(v8, v21);
      sub_267FC16BC(v20, &qword_280241820);
    }

    else
    {
      v43 = v49;
      (*(v49 + 16))(v16, v8, v21);
      OUTLINED_FUNCTION_15_0();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v21);
      sub_26804E3FC();
      sub_267FC16BC(v16, &qword_280241818);
      (*(v43 + 8))(v8, v21);
      (*(*(v40 - 8) + 8))(v20, v40);
    }

    goto LABEL_16;
  }

  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v25 = sub_26804CD4C();
  __swift_project_value_buffer(v25, qword_2802487E0);

  v52 = sub_26804CD3C();
  v26 = sub_26804E88C();

  if (os_log_type_enabled(v52, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v53 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_267FAE0C4(a1, a2, &v53);
    _os_log_impl(&dword_267FA7000, v52, v26, "#MessageSnippetViewModel a request was already sent, not sending %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1_1();

LABEL_16:
    OUTLINED_FUNCTION_23_0();
    return;
  }

  OUTLINED_FUNCTION_23_0();
}

void sub_26803D4A8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241810);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241818);
  OUTLINED_FUNCTION_15(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  OUTLINED_FUNCTION_15(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = sub_26804BE4C();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v22 = sub_26804CD4C();
  __swift_project_value_buffer(v22, qword_2802487E0);
  v23 = sub_26804CD3C();
  v24 = sub_26804E88C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v47 = v2;
    *v25 = 0;
    _os_log_impl(&dword_267FA7000, v23, v24, "#MessageSnippetViewModel punching out to app", v25, 2u);
    v2 = v47;
    OUTLINED_FUNCTION_1_1();
  }

  sub_267FCAB20(0, &qword_280244458);
  (*(*v2 + 488))();
  v26 = sub_26804E96C();
  sub_26804BE3C();
  v27 = sub_26804BE0C();
  v29 = v28;
  (*(v18 + 8))(v21, v16);
  sub_268043E6C(v27, v29, v26);

  sub_26803E430(a1, v15);
  v30 = sub_26804E40C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v30) == 1)
  {

    sub_267FC16BC(v15, &qword_280241820);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241828);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_268050170;
    v32 = sub_26804BFFC();
    v33 = MEMORY[0x277D63778];
    *(v31 + 56) = v32;
    *(v31 + 64) = v33;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v31 + 32));
    *boxed_opaque_existential_1 = v26;
    *(boxed_opaque_existential_1 + 8) = 0;
    (*(*(v32 - 8) + 104))();
    v35 = v26;
    sub_26804BFAC();
    sub_26804BF7C();
    OUTLINED_FUNCTION_15_0();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    v40 = *MEMORY[0x277D63BF8];
    v41 = sub_26804E2DC();
    OUTLINED_FUNCTION_4();
    (*(v42 + 104))(v7, v40, v41);
    OUTLINED_FUNCTION_15_0();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v41);
    sub_26804E3FC();

    sub_267FC16BC(v7, &qword_280241810);
    sub_267FC16BC(v11, &qword_280241818);
    (*(*(v30 - 8) + 8))(v15, v30);
  }

  OUTLINED_FUNCTION_23_0();
}

uint64_t sub_26803D970()
{
  OUTLINED_FUNCTION_0_11();
  sub_26803E4C0(v0, v1);
  return sub_26804C02C();
}

BOOL sub_26803DA18(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_26804E62C();
    v5 = a1;
    v6 = a2;
    v2 = sub_26804EA1C();
  }

  return (v2 & 1) == 0;
}

id sub_26803DA94()
{
  v1 = *v0;
  if (*v0)
  {

    return v1;
  }

  else
  {
    sub_26804E62C();
    sub_26803E4C0(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_26803DB20()
{
  v2 = sub_26804D3AC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_10();
  v11 = *(v0 + 24);
  v6 = *(v0 + 16);
  v10 = v6;
  if ((v11 & 1) == 0)
  {

    sub_26804E8AC();
    v7 = sub_26804D77C();
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();
    sub_267FC16BC(&v10, &qword_280241D30);
    (*(v4 + 8))(v1, v2);
    return v9;
  }

  return v6;
}

uint64_t sub_26803DC60()
{
  sub_26804DE1C();
  sub_26804DDEC();
  return v1;
}

uint64_t sub_26803DCA8()
{
  v0 = sub_26803DC60();
  v1 = sub_26803DA94();
  (*(*v0 + 184))(v1);

  v2 = sub_26803DC60();
  v3 = sub_26803DB20();
  (*(*v2 + 232))(v3, 0);
}

void sub_26803DD9C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_26803C520(v1);
}

void sub_26803DDCC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v3 = a2;
}

void sub_26803DE60(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = a2;
  v3 = a2;
}

uint64_t sub_26803DE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

uint64_t sub_26803DED0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_26803DF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
}

uint64_t sub_26803DF54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244460);
    v2 = sub_26804EC4C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_267FD9070(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_267FD9070(v29, v30);
    result = sub_26804EADC();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_267FD9070(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_26803E218()
{
  sub_26803C3D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MessageSnippetViewModel()
{
  result = qword_2802443C8;
  if (!qword_2802443C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26803E2C4()
{
  result = sub_26804C41C();
  if (v1 <= 0x3F)
  {
    result = sub_26804C07C();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_26803E3D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26803E430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26803E4C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26803E554()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
}

id sub_26803E590@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 interactionPerformed];
  *a2 = result;
  return result;
}

id sub_26803E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = &v5[OBJC_IVAR____TtC14SiriMessagesUI29OnSnippetInteractionPerformed_actionName];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = OBJC_IVAR____TtC14SiriMessagesUI29OnSnippetInteractionPerformed_interactionType;
  v11 = sub_26804E2DC();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v5[v10], a3, v11);
  v13 = &v5[OBJC_IVAR____TtC14SiriMessagesUI29OnSnippetInteractionPerformed_componentName];
  *v13 = a4;
  *(v13 + 1) = a5;
  v16.receiver = v5;
  v16.super_class = type metadata accessor for OnSnippetInteractionPerformed();
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v12 + 8))(a3, v11);
  return v14;
}

void sub_26803E6E0()
{
  v9 = sub_26803EBC0();
  swift_getKeyPath();
  v0 = sub_26804E98C();

  if (v0)
  {
    v1 = [objc_opt_self() sharedAnalytics];
    v2 = [v1 defaultMessageStream];

    OUTLINED_FUNCTION_2_21(v3, sel_emitMessage_);
  }

  else
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v4 = sub_26804CD4C();
    __swift_project_value_buffer(v4, qword_2802487E0);
    v2 = sub_26804CD3C();
    v5 = sub_26804E89C();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      OUTLINED_FUNCTION_29(&dword_267FA7000, v7, v8, "#OnSnippetInteractionPerformed RF client event is nil");
      MEMORY[0x26D60E1E0](v6, -1, -1);
    }
  }
}

void sub_26803E920()
{
  v9 = sub_26803EBC0();
  swift_getKeyPath();
  v0 = sub_26804E97C();

  if (v0)
  {
    v1 = [objc_opt_self() sharedAnalytics];
    v2 = [v1 defaultMessageStream];

    OUTLINED_FUNCTION_2_21(v3, sel_emitMessage_);
  }

  else
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v4 = sub_26804CD4C();
    __swift_project_value_buffer(v4, qword_2802487E0);
    v2 = sub_26804CD3C();
    v5 = sub_26804E89C();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      OUTLINED_FUNCTION_29(&dword_267FA7000, v7, v8, "#OnSnippetInteractionPerformed RF client event is nil");
      MEMORY[0x26D60E1E0](v6, -1, -1);
    }
  }
}

void *sub_26803EBC0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D5A368]) init];
  v3 = v2;
  if (v2)
  {
    if (*(v0 + OBJC_IVAR____TtC14SiriMessagesUI29OnSnippetInteractionPerformed_actionName + 8))
    {
      v2 = sub_26804E6BC();
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    OUTLINED_FUNCTION_2_21(v2, sel_setActionName_);

    v5 = [v3 setUserInteraction_];
    if (*(v1 + OBJC_IVAR____TtC14SiriMessagesUI29OnSnippetInteractionPerformed_componentName + 8))
    {
      v5 = sub_26804E6BC();
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    OUTLINED_FUNCTION_2_21(v5, sel_setComponentName_);

    [v3 setCommandType_];
  }

  return v3;
}

uint64_t sub_26803ECB4()
{
  v1 = v0;
  v2 = sub_26804E2DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D63C00])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x277D63BE0])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x277D63BF0])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x277D63BF8])
  {
    return 5;
  }

  if (v6 == *MEMORY[0x277D63C08])
  {
    return 6;
  }

  if (v6 != *MEMORY[0x277D63C10])
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return 7;
}

id sub_26803EE94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnSnippetInteractionPerformed();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for OnSnippetInteractionPerformed()
{
  result = qword_280244478;
  if (!qword_280244478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26803EFB4()
{
  result = sub_26804E2DC();
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

void sub_26803F050(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_26803F0C8()
{
  OUTLINED_FUNCTION_7_9();
  result = sub_26803F360();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26803F0F0()
{

  v0 = OUTLINED_FUNCTION_40_0();
  return sub_26803F3F8(v0, v1);
}

uint64_t sub_26803F19C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A90);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__selectedContact;
  swift_beginAccess();
  sub_267FDC224(v1 + v7, v6, &qword_280241A90);
  v8 = sub_268043584(v6, a1);
  sub_267FC16BC(v6, &qword_280241A90);
  if (v8)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_6();
    MEMORY[0x28223BE20](v9);
    OUTLINED_FUNCTION_3_0();
    *(v10 - 16) = v1;
    *(v10 - 8) = a1;
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_40_0();
    sub_267FDC224(v11, v12, v13);
    swift_beginAccess();
    sub_2680441F0(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_267FC16BC(a1, &qword_280241A90);
}

uint64_t sub_26803F360()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  sub_26804402C(v0, v1);
  OUTLINED_FUNCTION_2_3();

  return OUTLINED_FUNCTION_12_0();
}

uint64_t sub_26803F3F8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__payload);
  v6 = *(v2 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__payload) == a1 && *(v2 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__payload + 8) == a2;
  if (v6 || (sub_26804EC9C() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_6();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_42_0();
  }
}

uint64_t sub_26803F4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__payload);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_26803F544(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  sub_26804402C(v4, v5);
  OUTLINED_FUNCTION_41_0();

  return *(v2 + *a2);
}

uint64_t sub_26803F5EC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  sub_26804402C(v0, v1);
  OUTLINED_FUNCTION_2_3();

  return OUTLINED_FUNCTION_12_0();
}

uint64_t sub_26803F684(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_26803F6C4(v1, v2);
}

uint64_t sub_26803F6C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__errorMessage);
  if (sub_268043530(*(v2 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__errorMessage), *(v2 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__errorMessage + 8), a1, a2))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_6();
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
    *v5 = a1;
    v5[1] = a2;
  }
}

uint64_t sub_26803F7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__errorMessage);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_26803F810@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v11 = v3;
  OUTLINED_FUNCTION_1_15();
  sub_26804402C(v7, v8);
  sub_26804C03C();

  v9 = *a1;
  swift_beginAccess();
  return sub_267FDC224(v11 + v9, a3, a2);
}

uint64_t sub_26803F8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_15(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_32_0();
  sub_267FDC224(a1, v7, a5);
  return a7(v7);
}

uint64_t sub_26803F9B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_268044294(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_26803FA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  sub_268043488();

  return sub_267FC16BC(a1, a4);
}

uint64_t sub_26803FBEC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  sub_26804402C(v0, v1);
  OUTLINED_FUNCTION_41_0();
}

uint64_t sub_26803FCBC()
{
  swift_getKeyPath();
  sub_268043488();
}

uint64_t sub_26803FD28(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + *a3) = a2;
}

uint64_t sub_26803FDE0(uint64_t result, void *a2)
{
  v3 = result & 1;
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = v3;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_6();
    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_3_0();
    *(v5 - 16) = v2;
    *(v5 - 8) = v3;
    sub_268043488();
  }

  return result;
}

uint64_t sub_26803FE78()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_15();
  sub_26804402C(v1, v2);
  OUTLINED_FUNCTION_2_3();

  return *(v0 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__updateCount);
}

uint64_t sub_26803FF00(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__updateCount) != result)
  {
    v2 = result;
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_6();
    MEMORY[0x28223BE20](v3);
    OUTLINED_FUNCTION_3_0();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_42_0();
  }

  return result;
}

void sub_26803FFA0()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  sub_26804CABC();
  OUTLINED_FUNCTION_1();
  v82 = v5;
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_2();
  v80 = v6 - v7;
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13, v14, v15, v16, v76);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242AE0);
  OUTLINED_FUNCTION_15(v17);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  v79 = &v76 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244540);
  v21 = OUTLINED_FUNCTION_15(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_2();
  v78 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v77 = &v76 - v25;
  v26 = sub_26804BE4C();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v32 = v31 - v30;
  v33 = type metadata accessor for ContactResult(0);
  OUTLINED_FUNCTION_25_3();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  OUTLINED_FUNCTION_25_3();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
  v40 = (v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__appName);
  *v40 = 0;
  v40[1] = 0;
  v41 = (v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__errorMessage);
  *v41 = 0;
  v41[1] = 0;
  v42 = OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__autoSendInfo;
  v43 = sub_26804C2EC();
  OUTLINED_FUNCTION_25_3();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
  OUTLINED_FUNCTION_25_3();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v43);
  v50 = OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__correctionInfo;
  sub_26804C44C();
  OUTLINED_FUNCTION_25_3();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  v55 = OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__photoSharingInfo;
  *(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__photoSharingInfo) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__showPhotoPicker) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__isEditing) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__timer) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__isAutoSendCancelled) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__updateCount) = 0;
  sub_26804C06C();
  sub_26804CA6C();
  (*(v28 + 32))(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel_id, v32, v26);
  *(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__isAuthenticated) = sub_26804CA3C() & 1;
  v56 = sub_26804CAAC();
  if (!v57)
  {
    v58 = sub_26804CA7C();
    if (!v58 || (v56 = sub_268043FC0(v58, &selRef_content), !v57))
    {

      v56 = 0;
      v57 = 0xE000000000000000;
    }
  }

  v59 = (v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__payload);
  *v59 = v56;
  v59[1] = v57;
  v60 = sub_26804CA9C();
  v62 = v61;

  *v40 = v60;
  v40[1] = v62;
  *(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__shouldUpdateWithASRText) = sub_26804CA5C() & 1;
  v63 = v77;
  sub_26804CA1C();
  sub_267FC16BC(v1 + v42, &unk_280244540);
  sub_267FDBADC(v63, v1 + v42, &unk_280244540);
  v64 = v78;
  sub_26804CA1C();
  OUTLINED_FUNCTION_45(v64, 1, v43);
  if (v65)
  {
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  sub_267FC16BC(v64, &unk_280244540);
  *(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__canResumeTimer) = v66;
  v67 = v79;
  sub_26804CA2C();
  sub_267FC16BC(v1 + v50, &qword_280242AE0);
  sub_267FDBADC(v67, v1 + v50, &qword_280242AE0);
  v68 = sub_26804CA4C();

  *(v1 + v55) = v68;
  v70 = v81;
  v69 = v82;
  v71 = *(v82 + 16);
  v72 = v83;
  v71(v81, v3, v83);
  v73 = v80;
  v74 = OUTLINED_FUNCTION_34_0();
  (v71)(v74);
  sub_2680442E0(v73, v1);
  v75 = *(v69 + 8);
  v75(v3, v72);
  v75(v70, v72);
  OUTLINED_FUNCTION_23_0();
}

uint64_t sub_26804046C()
{
  v0 = sub_26803F360();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    v4 = sub_26803C850();
    v5 = sub_268043DF4(v4);
    v6 = v5 ? v5 : MEMORY[0x277D84F90];
    v7 = sub_267FDA00C(v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_26803F5EC();
  if (v8)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_268040504()
{
  result = sub_26803FB00();
  if (result)
  {
    v1 = sub_26804C6AC();

    v2 = *(v1 + 16);

    return v2 != 0;
  }

  return result;
}

void sub_268040550()
{
  if (sub_26803FB9C())
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v0 = sub_26804CD4C();
    OUTLINED_FUNCTION_2_0(v0, qword_2802487E0);
    v24 = sub_26804CD3C();
    v1 = sub_26804E88C();
    if (OUTLINED_FUNCTION_35_0(v1, v2, v3, v4, v5, v6, v7, v8, v22, v24))
    {
      *OUTLINED_FUNCTION_7_5() = 0;
      OUTLINED_FUNCTION_16_5(&dword_267FA7000, v9, v10, "#MessageDraftSnippetViewModel already editing, ignore request to begin editing", v11, v12, v13, v14, v23, v25);
      OUTLINED_FUNCTION_1_1();
    }

    goto LABEL_14;
  }

  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v15 = sub_26804CD4C();
  OUTLINED_FUNCTION_2_0(v15, qword_2802487E0);
  v16 = sub_26804CD3C();
  v17 = sub_26804E88C();
  if (OUTLINED_FUNCTION_20_4(v17))
  {
    v18 = OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5(v18);
    OUTLINED_FUNCTION_8_6(&dword_267FA7000, v19, v20, "#MessageDraftSnippetViewModel editing will begin");
    OUTLINED_FUNCTION_1_1();
  }

  sub_268042250();
  if (sub_26803FBD8())
  {
    sub_267FCE6DC();
  }

  sub_26803FBB0(1);
  v21 = sub_26803C498();
  if (v21)
  {
    v25 = v21;
    sub_26804E57C();
LABEL_14:
  }
}

void sub_2680406CC()
{
  if ((sub_26803FB9C() & 1) == 0)
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v7 = sub_26804CD4C();
    OUTLINED_FUNCTION_2_0(v7, qword_2802487E0);
    v25 = sub_26804CD3C();
    v8 = sub_26804E88C();
    if (OUTLINED_FUNCTION_35_0(v8, v9, v10, v11, v12, v13, v14, v15, v22, v25))
    {
      *OUTLINED_FUNCTION_7_5() = 0;
      OUTLINED_FUNCTION_16_5(&dword_267FA7000, v16, v17, "#MessageDraftSnippetViewModel not editing, ignore request to end editing", v18, v19, v20, v21, v23, v24);
      OUTLINED_FUNCTION_1_1();
    }

    goto LABEL_12;
  }

  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v0 = sub_26804CD4C();
  OUTLINED_FUNCTION_2_0(v0, qword_2802487E0);
  v1 = sub_26804CD3C();
  v2 = sub_26804E88C();
  if (OUTLINED_FUNCTION_20_4(v2))
  {
    v3 = OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5(v3);
    OUTLINED_FUNCTION_8_6(&dword_267FA7000, v4, v5, "#MessageDraftSnippetViewModel editing ended");
    OUTLINED_FUNCTION_1_1();
  }

  sub_26803FBB0(0);
  v6 = sub_26803C498();
  if (v6)
  {
    v24 = v6;
    sub_26804E55C();
LABEL_12:
  }
}

void sub_268040828()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241810);
  OUTLINED_FUNCTION_15(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2680518B0;
  *(inited + 32) = sub_26804E6CC();
  *(inited + 40) = v8;
  *(inited + 48) = sub_26803F360();
  *(inited + 56) = v9;
  OUTLINED_FUNCTION_11_7();
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  *(inited + 80) = sub_268041288();
  *(inited + 88) = v12;
  v13 = sub_26804E65C();
  v14 = sub_26804E6CC();
  v16 = v15;
  v17 = (v2 & 1) == 0;
  if (v2)
  {
    v18 = 0xEB00000000444544;
  }

  else
  {
    v18 = 0x8000000268057540;
  }

  if (v17)
  {
    v19 = 0xD000000000000012;
  }

  else
  {
    v19 = 0x4E455F52454D4954;
  }

  v20 = MEMORY[0x277D63C00];
  if (v17)
  {
    v20 = MEMORY[0x277D63BE0];
  }

  v21 = *v20;
  v22 = sub_26804E2DC();
  OUTLINED_FUNCTION_4();
  (*(v23 + 104))(v0, v21, v22);
  OUTLINED_FUNCTION_15_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v22);
  sub_26803CF6C(v14, v16, v13, v19, v18, v0, v4);

  sub_267FC16BC(v0, &qword_280241810);
  OUTLINED_FUNCTION_23_0();
}

uint64_t sub_268040A20()
{
  if (sub_26803FBD8())
  {
    sub_267FCE610();
  }

  return sub_26803FD7C(0);
}

uint64_t sub_268040A6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241810);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21_4();
  v5 = sub_26803F360();
  v7 = v6;

  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = sub_26803F360();
    v12 = v11;
    v13 = sub_26803C850();
    v14 = sub_268043FC0(v13, &selRef_content);
    if (!v15)
    {

LABEL_12:
      if (qword_280241130 != -1)
      {
        OUTLINED_FUNCTION_10_0();
      }

      v18 = sub_26804CD4C();
      OUTLINED_FUNCTION_2_0(v18, qword_2802487E0);
      v19 = sub_26804CD3C();
      v20 = sub_26804E88C();
      if (OUTLINED_FUNCTION_20_4(v20))
      {
        *OUTLINED_FUNCTION_7_5() = 0;
        OUTLINED_FUNCTION_36_0(&dword_267FA7000, v21, v20, "#MessageDraftSnippetViewModel payload updated");
        OUTLINED_FUNCTION_1_1();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244570);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2680518B0;
      *(inited + 32) = sub_26804E6CC();
      *(inited + 40) = v23;
      *(inited + 48) = sub_26803F360();
      *(inited + 56) = v24;
      OUTLINED_FUNCTION_11_7();
      *(inited + 64) = v25;
      *(inited + 72) = v26;
      *(inited + 80) = sub_268041288();
      *(inited + 88) = v27;
      v28 = sub_26804E65C();
      v29 = sub_26804E6CC();
      v31 = v30;
      v32 = *MEMORY[0x277D63C00];
      v33 = sub_26804E2DC();
      OUTLINED_FUNCTION_4();
      (*(v34 + 104))(v1, v32, v33);
      OUTLINED_FUNCTION_15_0();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
      sub_26803CF6C(v29, v31, v28, 0x5F44414F4C594150, 0xEF44455441445055, v1, a1);

      return sub_267FC16BC(v1, &qword_280241810);
    }

    if (v10 != v14 || v15 != v12)
    {
      v17 = sub_26804EC9C();

      if (v17)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  return result;
}

void sub_268040D88()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242AE0);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  v72 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244540);
  v8 = OUTLINED_FUNCTION_15(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_2();
  v11 = v9 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_38_0(v13, v14, v15, v16, v17, v18, v19, v20, v68);
  v21 = sub_26804CBCC();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v28 = sub_26804CD4C();
  OUTLINED_FUNCTION_2_0(v28, qword_2802487E0);
  (*(v23 + 16))(v27, v3, v21);
  v29 = sub_26804CD3C();
  v30 = sub_26804E87C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_12_3();
    v70 = v11;
    v32 = v31;
    v69 = OUTLINED_FUNCTION_43();
    v73 = v69;
    *v32 = 136315138;
    sub_26804402C(&qword_280244590, MEMORY[0x277D5D8A8]);
    v33 = sub_26804EC7C();
    v35 = v34;
    v36 = OUTLINED_FUNCTION_34_0();
    v37(v36);
    v38 = sub_267FAE0C4(v33, v35, &v73);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_267FA7000, v29, v30, "#MessageDraftSnippetViewModel processing update command: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    OUTLINED_FUNCTION_1_1();
    v11 = v70;
    OUTLINED_FUNCTION_1_1();
  }

  else
  {

    v39 = OUTLINED_FUNCTION_34_0();
    v40(v39);
  }

  v41 = sub_26804CBAC();
  if (v41)
  {
    v42 = v41;
    sub_26803C8E0(v42);
    v43 = v42;
    v44 = sub_26804E9EC();
    v46 = v45;

    if (v46)
    {
      v47 = v44;
    }

    else
    {
      v47 = 0;
    }

    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0xE000000000000000;
    }

    sub_26803CBD4(v47, v48);
  }

  v49 = sub_26804CB5C();
  if (v50)
  {
    sub_26803CA70(v49, v50);
  }

  v51 = sub_26804CB8C();
  sub_26803F338(v51 & 1);
  v52 = sub_26804CB3C();
  sub_26803F6C4(v52, v53);
  v54 = sub_26804CBBC();
  if (!v55)
  {
    v56 = sub_26803C850();
    v54 = sub_268043FC0(v56, &selRef_content);
    if (!v55)
    {
      v54 = 0;
      v55 = 0xE000000000000000;
    }
  }

  sub_26803F3F8(v54, v55);
  v57 = v71;
  sub_26804CB6C();
  sub_26803F980(v57);
  v58 = v72;
  sub_26804CB7C();
  sub_26803FA54(v58);
  sub_26804CB6C();
  v59 = sub_26804C2EC();
  OUTLINED_FUNCTION_45(v11, 1, v59);
  if (v60)
  {
    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  sub_267FC16BC(v11, &unk_280244540);
  sub_26803FD7C(v61);
  sub_26803FDB8(0);
  v62 = sub_26804CB4C();
  sub_26803F5C4(v62 & 1);
  sub_26803C7B8(0);
  sub_26803FC9C();
  sub_26804CB9C();
  sub_26803FB40();
  swift_getKeyPath();
  v73 = v1;
  OUTLINED_FUNCTION_1_15();
  sub_26804402C(v63, v64);
  sub_26804C03C();

  v73 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_0();
  sub_26804C05C();

  v65 = *(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__updateCount);
  v66 = __OFADD__(v65, 1);
  v67 = v65 + 1;
  if (v66)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__updateCount) = v67;
    v73 = v1;
    swift_getKeyPath();
    OUTLINED_FUNCTION_30_0();
    sub_26804C04C();

    OUTLINED_FUNCTION_23_0();
  }
}

uint64_t sub_268041288()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 textInputMode];

  if (!v1 || (result = sub_268043FC0(v1, &selRef_primaryLanguage), !v3))
  {

    return 0;
  }

  return result;
}

void *sub_26804130C()
{
  v0 = sub_26803C850();
  v1 = sub_26804E9FC();

  sub_26803F360();
  v2 = sub_26804E6BC();

  v3 = sub_26804E6BC();
  [v1 setValue:v2 forKey:v3];

  return v1;
}

void sub_2680413A4(uint64_t a1)
{
  sub_268042250();

  sub_26803D4A8(a1);
}

uint64_t sub_2680413DC()
{
  v1 = OUTLINED_FUNCTION_40_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21_4();
  sub_26803F7EC(v0);
  v4 = sub_26804C2EC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v4);
  sub_267FC16BC(v0, &unk_280244540);
  if (EnumTagSinglePayload == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_26803FDA4() ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_2680414A0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244540);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_28_2();
  v4 = sub_26804C2EC();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_4();
  sub_26803F7EC(v1);
  OUTLINED_FUNCTION_45(v1, 1, v4);
  if (v8)
  {
    return sub_267FC16BC(v1, &unk_280244540);
  }

  (*(v6 + 32))(v0, v1, v4);
  if (sub_26803FBD8())
  {
  }

  else if (sub_26803C738() & 1) == 0 && (sub_26803FD68())
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v10 = sub_26804CD4C();
    OUTLINED_FUNCTION_2_0(v10, qword_2802487E0);
    v11 = sub_26804CD3C();
    v12 = sub_26804E88C();
    if (OUTLINED_FUNCTION_20_4(v12))
    {
      *OUTLINED_FUNCTION_7_5() = 0;
      OUTLINED_FUNCTION_36_0(&dword_267FA7000, v13, v12, "#MessageDraftSnippetViewModel starting auto send timer");
      OUTLINED_FUNCTION_1_1();
    }

    sub_26804C2BC();
    v15 = v14;
    type metadata accessor for ViewTimer();
    swift_allocObject();
    sub_267FCE500(v15);
    sub_26803FC9C();
    if (sub_26803FBD8())
    {
      sub_267FCE540();
    }

    sub_26804268C(0);
  }

  return (*(v6 + 8))(v0, v4);
}

void sub_2680416F0()
{
  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v0 = sub_26804CD4C();
  OUTLINED_FUNCTION_2_0(v0, qword_2802487E0);
  v1 = sub_26804CD3C();
  v2 = sub_26804E88C();
  if (OUTLINED_FUNCTION_20_4(v2))
  {
    *OUTLINED_FUNCTION_7_5() = 0;
    OUTLINED_FUNCTION_1_3(&dword_267FA7000, v3, v4, "#MessageDraftSnippetViewModel auto send timer expired, sending request");
    OUTLINED_FUNCTION_1_1();
  }

  sub_26804268C(3);

  sub_268040828();
}

uint64_t sub_2680417C0()
{
  result = sub_26803FBD8();
  if (result)
  {
    v1 = sub_267FCE244();
    if (v1)
    {

      if (qword_280241130 != -1)
      {
        OUTLINED_FUNCTION_10_0();
      }

      v2 = sub_26804CD4C();
      OUTLINED_FUNCTION_2_0(v2, qword_2802487E0);
      v3 = sub_26804CD3C();
      v4 = sub_26804E88C();
      if (OUTLINED_FUNCTION_20_4(v4))
      {
        *OUTLINED_FUNCTION_7_5() = 0;
        OUTLINED_FUNCTION_1_3(&dword_267FA7000, v5, v6, "#MessageDraftSnippetViewModel pausing auto send timer");
        OUTLINED_FUNCTION_1_1();
      }

      sub_267FCE610();
      sub_26804268C(1);
    }
  }

  return result;
}

void sub_2680418C0()
{
  if (sub_26803FBD8())
  {
    v0 = sub_267FCE244();
    if (v0)
    {
      v6 = v0;
    }

    else
    {
      if (sub_26803FD68())
      {
        if (qword_280241130 != -1)
        {
          OUTLINED_FUNCTION_10_0();
        }

        v1 = sub_26804CD4C();
        OUTLINED_FUNCTION_2_0(v1, qword_2802487E0);
        v2 = sub_26804CD3C();
        v3 = sub_26804E88C();
        if (OUTLINED_FUNCTION_20_4(v3))
        {
          *OUTLINED_FUNCTION_7_5() = 0;
          OUTLINED_FUNCTION_1_3(&dword_267FA7000, v4, v5, "#MessageDraftSnippetViewModel resuming auto send timer");
          OUTLINED_FUNCTION_1_1();
        }

        sub_267FCE540();
        sub_26804268C(2);
      }
    }
  }
}

uint64_t sub_268041A0C()
{
  result = sub_26803FD68();
  if (result)
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v1 = sub_26804CD4C();
    OUTLINED_FUNCTION_2_0(v1, qword_2802487E0);
    v2 = sub_26804CD3C();
    v3 = sub_26804E88C();
    if (OUTLINED_FUNCTION_20_4(v3))
    {
      v4 = OUTLINED_FUNCTION_7_5();
      OUTLINED_FUNCTION_5(v4);
      OUTLINED_FUNCTION_8_6(&dword_267FA7000, v5, v6, "#MessageDraftSnippetViewModel disabling auto send timer resume");
      OUTLINED_FUNCTION_1_1();
    }

    return sub_26803FD7C(0);
  }

  return result;
}

uint64_t sub_268041AD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244540);
  OUTLINED_FUNCTION_15(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_28_2();
  v3 = sub_26804C2EC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  sub_26803F7EC(v0);
  OUTLINED_FUNCTION_45(v0, 1, v3);
  if (v10)
  {
    return sub_267FC16BC(v0, &unk_280244540);
  }

  (*(v5 + 32))(v9, v0, v3);
  v12 = sub_26803C738();
  if ((v12 & 1) == 0)
  {
    sub_268042250();
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v13 = sub_26804CD4C();
    __swift_project_value_buffer(v13, qword_2802487E0);
    v14 = sub_26804CD3C();
    v15 = sub_26804E88C();
    if (OUTLINED_FUNCTION_20_4(v15))
    {
      v16 = OUTLINED_FUNCTION_7_5();
      *v16 = 0;
      _os_log_impl(&dword_267FA7000, v14, v15, "#MessageDraftSnippetViewModel sending handle intent command", v16, 2u);
      OUTLINED_FUNCTION_1_1();
    }

    v17 = [objc_allocWithZone(MEMORY[0x277CEF1D8]) init];
    sub_267FCAB20(0, &unk_280244580);
    sub_26803C850();
    v18 = sub_26804E94C();
    [v17 handleCommand:v18 commandHandler:0 completion:0];
    sub_26804C2CC();
    if (v19)
    {

      sub_268041DBC();
    }

    else
    {
      v20 = sub_26804CD3C();
      v21 = sub_26804E88C();
      if (!OUTLINED_FUNCTION_20_4(v21))
      {

        return (*(v5 + 8))(v9, v3);
      }

      *OUTLINED_FUNCTION_7_5() = 0;
      OUTLINED_FUNCTION_36_0(&dword_267FA7000, v22, v21, "#MessageDraftSnippetViewModel display only mode, skipping tone");
      OUTLINED_FUNCTION_1_1();
    }
  }

  return (*(v5 + 8))(v9, v3);
}

void sub_268041DBC()
{
  if (sub_26803CB44() != 0xD000000000000013 || 0x80000002680565E0 != v0)
  {
    sub_26804EC9C();
  }

  sub_26803C5F8();
  v2 = sub_26804C6FC();
  if (v2)
  {
    v3 = v2;
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v4 = sub_26804CD4C();
    OUTLINED_FUNCTION_2_0(v4, qword_2802487E0);
    v5 = sub_26804CD3C();
    v6 = sub_26804E88C();
    if (OUTLINED_FUNCTION_20_4(v6))
    {
      v7 = OUTLINED_FUNCTION_7_5();
      OUTLINED_FUNCTION_5(v7);
      OUTLINED_FUNCTION_8_6(&dword_267FA7000, v8, v9, "#MessageDraftSnippetViewModel playing tone");
      OUTLINED_FUNCTION_1_1();
    }

    aBlock[4] = sub_268041FEC;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26803F050;
    aBlock[3] = &block_descriptor_5;
    v10 = _Block_copy(aBlock);
    [v3 playWithCompletionHandler_];
    _Block_release(v10);
  }

  else
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v11 = sub_26804CD4C();
    OUTLINED_FUNCTION_2_0(v11, qword_2802487E0);
    v28 = sub_26804CD3C();
    v12 = sub_26804E89C();
    if (OUTLINED_FUNCTION_35_0(v12, v13, v14, v15, v16, v17, v18, v19, v26, v28))
    {
      *OUTLINED_FUNCTION_7_5() = 0;
      OUTLINED_FUNCTION_16_5(&dword_267FA7000, v20, v21, "#MessageDraftSnippetViewModel tone is not available", v22, v23, v24, v25, v27, v29);
      OUTLINED_FUNCTION_1_1();
    }
  }
}

void sub_268041FEC(uint64_t a1, NSObject *a2)
{
  if (!a2)
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v12 = sub_26804CD4C();
    __swift_project_value_buffer(v12, qword_2802487E0);
    oslog = sub_26804CD3C();
    v13 = sub_26804E88C();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a1;
      _os_log_impl(&dword_267FA7000, oslog, v13, "#MessageDraftSnippetViewModel finished playing tone, completionType: %ld", v14, 0xCu);
      MEMORY[0x26D60E1E0](v14, -1, -1);
    }

    goto LABEL_10;
  }

  v3 = a2;
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v4 = sub_26804CD4C();
  __swift_project_value_buffer(v4, qword_2802487E0);
  v5 = a2;
  oslog = sub_26804CD3C();
  v6 = sub_26804E89C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_267FA7000, oslog, v6, "#MessageDraftSnippetViewModel failed to play tone: %@", v7, 0xCu);
    sub_267FC16BC(v8, &qword_2802413B8);
    MEMORY[0x26D60E1E0](v8, -1, -1);
    MEMORY[0x26D60E1E0](v7, -1, -1);

LABEL_10:
    v15 = oslog;

    goto LABEL_12;
  }

  v15 = a2;

LABEL_12:
}

void sub_268042250()
{
  OUTLINED_FUNCTION_24();
  v2 = sub_26804BE4C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244540);
  v7 = OUTLINED_FUNCTION_15(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_2();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v46 - v12;
  v14 = sub_26804C2EC();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_4();
  sub_26803F7EC(v13);
  OUTLINED_FUNCTION_45(v13, 1, v14);
  if (v18)
  {
    sub_267FC16BC(v13, &unk_280244540);
  }

  else
  {
    (*(v16 + 32))(v0, v13, v14);
    v19 = sub_26803FDA4();
    if ((v19 & 1) == 0)
    {
      v47 = v2;
      if (qword_280241130 != -1)
      {
        OUTLINED_FUNCTION_10_0();
      }

      v20 = sub_26804CD4C();
      v46[1] = __swift_project_value_buffer(v20, qword_2802487E0);
      v21 = sub_26804CD3C();
      v22 = sub_26804E88C();
      if (OUTLINED_FUNCTION_20_4(v22))
      {
        v23 = OUTLINED_FUNCTION_7_5();
        *v23 = 0;
        _os_log_impl(&dword_267FA7000, v21, v22, "#MessageDraftSnippetViewModel cancelling auto send", v23, 2u);
        OUTLINED_FUNCTION_1_1();
      }

      if (sub_26803FBD8())
      {
        sub_267FCE610();
      }

      OUTLINED_FUNCTION_25_3();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v14);
      sub_26803F980(v10);
      sub_26803FD7C(0);
      sub_26803FDB8(1);
      v27 = sub_26804C2DC();
      if (v28)
      {
        v29 = v27;
        v30 = v28;
        v31 = [objc_allocWithZone(MEMORY[0x277D47A48]) init];
        sub_26804BE3C();
        v32 = sub_26804BE0C();
        v33 = v4;
        v35 = v34;
        (*(v33 + 8))(v1, v47);
        sub_268043E6C(v32, v35, v31);

        v36 = v29;
        sub_268043ED0(v29, v30, v31);

        v37 = sub_26804CD3C();
        v38 = sub_26804E88C();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = OUTLINED_FUNCTION_12_3();
          v40 = OUTLINED_FUNCTION_43();
          v47 = v31;
          v48 = v40;
          v41 = v40;
          *v39 = 136315138;
          v42 = sub_267FAE0C4(v36, v30, &v48);

          *(v39 + 4) = v42;
          _os_log_impl(&dword_267FA7000, v37, v38, "#MessageDraftSnippetViewModel sending delayed action cancel command for %s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
          v31 = v47;
          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_1_1();
        }

        else
        {
        }

        v43 = sub_26803C498();
        if (v43)
        {
          v44 = v43;
          v45 = v31;
          sub_26804E5FC();
        }
      }
    }

    (*(v16 + 8))(v0, v14);
  }

  OUTLINED_FUNCTION_23_0();
}

void sub_26804268C(char a1)
{
  v2 = sub_26803C498();
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(type metadata accessor for DelayedSendTimerEvent());
    v5 = sub_267FBFE28(a1, 0, 0);
    sub_26804E5BC();
  }
}

BOOL sub_268042720()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242AE0);
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - v2;
  sub_26803FA30(&v8 - v2);
  v4 = sub_26804C44C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = sub_26804C43C();
  }

  sub_267FC16BC(v3, &qword_280242AE0);
  v6 = *(v5 + 16);

  return v6 > 1;
}

uint64_t sub_2680427EC()
{
  v1 = OUTLINED_FUNCTION_40_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21_4();
  sub_26803FA30(v0);
  v4 = sub_26804C44C();
  OUTLINED_FUNCTION_45(v0, 1, v4);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  sub_267FC16BC(v0, &qword_280242AE0);
  return v6;
}

void sub_268042890()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241810);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - v5;
  v7 = sub_26804C85C();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32_0();
  v11 = sub_26803C850();
  v12 = sub_26804E9EC();
  v14 = v13;

  v15 = sub_26803CB44();
  if (!v14)
  {

    goto LABEL_9;
  }

  if (v12 != v15 || v14 != v16)
  {
    OUTLINED_FUNCTION_34_0();
    v18 = sub_26804EC9C();

    if (v18)
    {
LABEL_14:
      OUTLINED_FUNCTION_23_0();
      return;
    }

LABEL_9:
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v19 = sub_26804CD4C();
    OUTLINED_FUNCTION_2_0(v19, qword_2802487E0);

    v20 = sub_26804CD3C();
    v21 = sub_26804E88C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_12_3();
      v45 = v2;
      v23 = v22;
      v24 = OUTLINED_FUNCTION_43();
      v44 = v6;
      v25 = v24;
      v46 = v24;
      *v23 = 136315138;
      v26 = sub_26803CB44();
      v28 = sub_267FAE0C4(v26, v27, &v46);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_267FA7000, v20, v21, "#MessageDraftSnippetViewModel app changed to %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v6 = v44;
      OUTLINED_FUNCTION_1_1();
      v2 = v45;
      OUTLINED_FUNCTION_1_1();
    }

    (*(v9 + 104))(v0, *MEMORY[0x277D5D758], v7);
    sub_26804C84C();
    (*(v9 + 8))(v0, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244570);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268050170;
    *(inited + 32) = 0x6C646E7542707061;
    *(inited + 40) = 0xEB00000000644965;
    *(inited + 48) = sub_26803CB44();
    *(inited + 56) = v30;
    v31 = sub_26804E65C();
    v32 = *MEMORY[0x277D63BE0];
    v33 = sub_26804E2DC();
    OUTLINED_FUNCTION_4();
    (*(v34 + 104))(v6, v32, v33);
    OUTLINED_FUNCTION_15_0();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
    v38 = OUTLINED_FUNCTION_34_0();
    sub_26803CF6C(v38, v39, v31, v40, v41, v6, v2);

    sub_267FC16BC(v6, &qword_280241810);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_23_0();
}

void sub_268042C84()
{
  OUTLINED_FUNCTION_24();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241810);
  OUTLINED_FUNCTION_15(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_32_0();
  v7 = sub_26804C85C();
  OUTLINED_FUNCTION_1();
  v59 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A90);
  OUTLINED_FUNCTION_15(v13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v17 = type metadata accessor for ContactResult(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11_2();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  sub_26803F178(v16);
  OUTLINED_FUNCTION_45(v16, 1, v17);
  if (v25)
  {
    sub_267FC16BC(v16, &qword_280241A90);
  }

  else
  {
    v55 = v7;
    sub_268037E9C(v16, v24);
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v26 = sub_26804CD4C();
    OUTLINED_FUNCTION_2_0(v26, qword_2802487E0);
    sub_268037E38(v24, v21);
    v27 = sub_26804CD3C();
    v28 = sub_26804E88C();
    v29 = OUTLINED_FUNCTION_20_4(v28);
    v57 = v4;
    v58 = v2;
    v56 = v1;
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_12_3();
      v31 = OUTLINED_FUNCTION_43();
      v60 = v31;
      *v30 = 136315138;
      v32 = (v21 + v17[5]);
      v34 = *v32;
      v33 = v32[1];

      sub_267FCB710(v21);
      v35 = sub_267FAE0C4(v34, v33, &v60);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_267FA7000, v27, v28, "#MessageDraftSnippetViewModel recipient changed to %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_1_1();
    }

    else
    {

      sub_267FCB710(v21);
    }

    v36 = 0xD000000000000012;
    v37 = &v24[v17[5]];
    v39 = *v37;
    v38 = v37[1];
    swift_bridgeObjectRetain_n();
    sub_26803CA70(v39, v38);
    if (sub_267FDA00C(*&v24[v17[6]]) || sub_267FDA00C(*&v24[v17[7]]))
    {
      v40 = "tadata8@NSError16";
      v36 = 0xD000000000000015;
    }

    else
    {
      v40 = "RECIPIENT_NAME_TAPPED";
    }

    v41 = v59;
    v42 = v55;
    (*(v59 + 104))(v12, *MEMORY[0x277D5D788], v55);
    v43 = sub_26804C84C();
    v45 = v44;
    (*(v41 + 8))(v12, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244570);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268050170;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v39;
    *(inited + 56) = v38;
    v47 = sub_26804E65C();
    v48 = *MEMORY[0x277D63BE0];
    v49 = sub_26804E2DC();
    OUTLINED_FUNCTION_4();
    v51 = v56;
    (*(v50 + 104))(v56, v48, v49);
    OUTLINED_FUNCTION_15_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v49);
    sub_26803CF6C(v43, v45, v47, v36, (v40 | 0x8000000000000000), v51, v57);

    sub_267FC16BC(v51, &qword_280241810);
    sub_267FCB710(v24);
  }

  OUTLINED_FUNCTION_23_0();
}

void sub_26804312C()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_26804C85C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_32_0();
  v5 = sub_26804BE4C();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = [objc_allocWithZone(MEMORY[0x277D47B40]) init];
  sub_26804BE3C();
  v13 = sub_26804BE0C();
  v15 = v14;
  (*(v7 + 8))(v11, v5);
  sub_268043E6C(v13, v15, v12);

  v16 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  [v16 setEyesFree_];
  sub_267FCAB20(0, &qword_280244550);
  (*(v3 + 104))(v0, *MEMORY[0x277D5D778], v1);
  sub_26804C84C();
  (*(v3 + 8))(v0, v1);
  v17 = sub_2680166BC();
  v18 = objc_opt_self();
  v19 = [v18 runSiriKitExecutorCommandWithContext:v16 payload:v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FE8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2680551A0;
  *(v20 + 32) = [v18 wrapCommandInStartLocalRequest_];
  sub_268043F28(v20, v12);
  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v21 = sub_26804CD4C();
  OUTLINED_FUNCTION_2_0(v21, qword_2802487E0);
  v22 = sub_26804CD3C();
  v23 = sub_26804E88C();
  if (OUTLINED_FUNCTION_20_4(v23))
  {
    v24 = OUTLINED_FUNCTION_7_5();
    *v24 = 0;
    _os_log_impl(&dword_267FA7000, v22, v23, "#MessageDraftSnippetViewModel sending command to request device unlock", v24, 2u);
    OUTLINED_FUNCTION_1_1();
  }

  v25 = sub_26803C498();
  if (v25)
  {
    v26 = v25;
    v27 = v12;
    sub_26804E5FC();

    v16 = v17;
    v17 = v19;
    v19 = v27;
  }

  OUTLINED_FUNCTION_23_0();
}

uint64_t sub_268043488()
{
  OUTLINED_FUNCTION_1_15();
  sub_26804402C(v0, v1);
  return sub_26804C02C();
}

BOOL sub_268043530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_26804EC9C();
    }
  }

  return (v5 & 1) == 0;
}

uint64_t sub_268043584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResult(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802445A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  v14 = *(v11 + 56);
  sub_267FDC224(a1, &v22 - v12, &qword_280241A90);
  sub_267FDC224(a2, &v13[v14], &qword_280241A90);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v13[v14], 1, v4) == 1)
    {
      sub_267FC16BC(v13, &qword_280241A90);
      v15 = 0;
      return v15 & 1;
    }

LABEL_6:
    sub_267FC16BC(v13, &unk_2802445A0);
    v15 = 1;
    return v15 & 1;
  }

  sub_267FDC224(v13, v9, &qword_280241A90);
  if (__swift_getEnumTagSinglePayload(&v13[v14], 1, v4) == 1)
  {
    sub_267FCB710(v9);
    goto LABEL_6;
  }

  sub_268037E9C(&v13[v14], v6);
  if (sub_26804BE1C() & 1) != 0 && ((v16 = v4[5], v17 = *&v9[v16], v18 = *&v9[v16 + 8], v19 = &v6[v16], v17 == *v19) ? (v20 = v18 == *(v19 + 1)) : (v20 = 0), (v20 || (sub_26804EC9C()) && (sub_267FCADCC(*&v9[v4[6]], *&v6[v4[6]])))
  {
    v15 = sub_267FCADE0(*&v9[v4[7]], *&v6[v4[7]]) ^ 1;
  }

  else
  {
    v15 = 1;
  }

  sub_267FCB710(v6);
  sub_267FCB710(v9);
  sub_267FC16BC(v13, &qword_280241A90);
  return v15 & 1;
}

uint64_t sub_268043834()
{
  v1 = OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel_id;
  sub_26804BE4C();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);
  sub_267FC16BC(v0 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__selectedContact, &qword_280241A90);

  sub_267FC16BC(v0 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__autoSendInfo, &unk_280244540);
  sub_267FC16BC(v0 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__correctionInfo, &qword_280242AE0);

  v3 = OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel___observationRegistrar;
  sub_26804C07C();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 8);

  return v5(v0 + v3);
}

uint64_t sub_268043988()
{
  v0 = sub_26803C3D8();
  v1 = OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel_id;
  sub_26804BE4C();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);
  sub_267FC16BC(v0 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__selectedContact, &qword_280241A90);

  sub_267FC16BC(v0 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__autoSendInfo, &unk_280244540);
  sub_267FC16BC(v0 + OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel__correctionInfo, &qword_280242AE0);

  v3 = OBJC_IVAR____TtC14SiriMessagesUI28MessageDraftSnippetViewModel___observationRegistrar;
  sub_26804C07C();
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_268043ADC()
{
  v0 = sub_268043988();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MessageDraftSnippetViewModel()
{
  result = qword_280244518;
  if (!qword_280244518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268043B84()
{
  sub_26804BE4C();
  if (v0 <= 0x3F)
  {
    sub_268043D94(319, &qword_280244528, type metadata accessor for ContactResult);
    if (v1 <= 0x3F)
    {
      sub_268043D94(319, &qword_280244530, MEMORY[0x277D5D440]);
      if (v2 <= 0x3F)
      {
        sub_268043D94(319, &qword_280244538, MEMORY[0x277D5D5B8]);
        if (v3 <= 0x3F)
        {
          sub_26804C07C();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_268043D94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26804EA6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_268043DF4(void *a1)
{
  v2 = [a1 attachments];

  if (!v2)
  {
    return 0;
  }

  sub_267FCAB20(0, &qword_280244598);
  v3 = sub_26804E78C();

  return v3;
}

void sub_268043E6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26804E6BC();

  [a3 setAceId_];
}

void sub_268043ED0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26804E6BC();
  [a3 setDelayedActionAceId_];
}

void sub_268043F28(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244560);
  v3 = sub_26804E77C();

  [a2 setSuccessCommands_];
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268043FC0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_26804E6CC();

  return v4;
}

uint64_t sub_26804402C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2680441F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_268044294(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_12_1(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  return v3;
}

uint64_t sub_2680442E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26804C41C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26804CABC();
  v21 = v8;
  v22 = &off_2878EDAB8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v8 - 8) + 32))(boxed_opaque_existential_1, a1, v8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v10 = OBJC_IVAR____TtC14SiriMessagesUI23MessageSnippetViewModel_appInfoProvider;
  sub_26804C54C();
  *(a2 + v10) = sub_26804C53C();
  sub_26804C06C();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v11 = sub_26804CA7C();
  if (!v11)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CD4078]) init];
  }

  *(a2 + 40) = v11;
  *(a2 + 48) = sub_26804CA0C();
  *(a2 + 56) = v12;
  v13 = sub_26804CA7C();
  if (!v13 || (v14 = v13, v15 = sub_26804E9EC(), v17 = v16, v14, !v17))
  {

    v15 = 0;
    v17 = 0xE000000000000000;
  }

  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  sub_26804CA8C();
  (*(v5 + 32))(a2 + OBJC_IVAR____TtC14SiriMessagesUI23MessageSnippetViewModel_labels, v7, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return a2;
}

uint64_t sub_2680444E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_26804C41C();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_4();
  v9 = sub_26804C95C();
  v21 = v9;
  v22 = &off_2878EDAD8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v9 - 8) + 32))(boxed_opaque_existential_1, a1, v9);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v11 = OBJC_IVAR____TtC14SiriMessagesUI23MessageSnippetViewModel_appInfoProvider;
  sub_26804C54C();
  *(a2 + v11) = sub_26804C53C();
  sub_26804C06C();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v12 = sub_26804C93C();
  if (!v12)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CD4078]) init];
  }

  *(a2 + 40) = v12;
  *(a2 + 48) = sub_26804C8FC();
  *(a2 + 56) = v13;
  v14 = sub_26804C93C();
  if (!v14 || (v15 = v14, v16 = sub_26804E9EC(), v18 = v17, v15, !v18))
  {

    v16 = 0;
    v18 = 0xE000000000000000;
  }

  *(a2 + 64) = v16;
  *(a2 + 72) = v18;
  sub_26804C94C();
  (*(v7 + 32))(a2 + OBJC_IVAR____TtC14SiriMessagesUI23MessageSnippetViewModel_labels, v2, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return a2;
}

BOOL OUTLINED_FUNCTION_20_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_36_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return sub_26804C03C();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return sub_268043488();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_slowAlloc();
}

uint64_t sub_268044820@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26804C99C();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1);
  return sub_2680448E8(v5, a1);
}

uint64_t sub_2680448E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TimerState();
  OUTLINED_FUNCTION_4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for AutoSendableBinaryButtonView(0);
  v11 = (a2 + v10[5]);
  v27 = 0;
  sub_26804DDDC();
  v12 = v29;
  *v11 = v28;
  v11[1] = v12;
  v13 = a2 + v10[6];
  LOBYTE(v27) = 0;
  sub_26804DDDC();
  v14 = v29;
  *v13 = v28;
  *(v13 + 8) = v14;
  swift_storeEnumTagMultiPayload();
  sub_268049304(v9, v7, type metadata accessor for TimerState);
  sub_26804DDDC();
  sub_267FC12B4(v9);
  v15 = a2 + v10[8];
  LOBYTE(v27) = 0;
  sub_26804DDDC();
  v16 = v29;
  *v15 = v28;
  *(v15 + 8) = v16;
  v17 = (a2 + v10[9]);
  sub_26804E62C();
  OUTLINED_FUNCTION_1_16();
  sub_26804878C(v18, v19);
  OUTLINED_FUNCTION_8_9();
  *v17 = sub_26804D17C();
  v17[1] = v20;
  v21 = (a2 + v10[10]);
  sub_26804E4FC();
  sub_26804878C(&qword_2802412F0, MEMORY[0x277D63F18]);
  OUTLINED_FUNCTION_8_9();
  *v21 = sub_26804D17C();
  v21[1] = v22;
  v23 = a2 + v10[11];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  sub_26804C99C();
  OUTLINED_FUNCTION_4();
  return (*(v24 + 32))(a2, a1);
}

uint64_t sub_268044B60@<X0>(uint64_t a1@<X8>)
{
  v5 = v1;
  v62 = a1;
  v6 = type metadata accessor for AutoSendableBinaryButtonView(0);
  v7 = v6 - 8;
  v55 = *(v6 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802445C0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802445C8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802445D0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802445D8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  v60 = &v55 - v22;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802445E0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  v59 = &v55 - v24;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802445E8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  v57 = &v55 - v26;
  *v12 = sub_26804D3DC();
  *(v12 + 1) = 0x4030000000000000;
  v12[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802445F0);
  sub_2680452A4(v5, &v12[*(v27 + 44)]);
  v28 = *(v5 + *(v7 + 44));
  if (v28)
  {
    v29 = v28;
    sub_26804E53C();

    sub_268049304(v5, &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AutoSendableBinaryButtonView);
    v30 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v31 = swift_allocObject();
    sub_2680487F0(v9, v31 + v30);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_268048854;
    *(v32 + 24) = v31;
    sub_267FDBADC(v12, v16, &qword_2802445C0);
    v33 = &v16[*(v13 + 56)];
    *v33 = sub_267FC1310;
    *(v33 + 1) = v32;
    v34 = v29;
    LOBYTE(v32) = sub_26804E50C();

    if (v32)
    {
      v35 = 8.0;
    }

    else
    {
      v35 = 16.0;
    }

    v36 = sub_26804D7AC();
    sub_26804CE1C();
    OUTLINED_FUNCTION_25_1();
    sub_267FDBADC(v16, v20, &qword_2802445C8);
    v37 = &v20[*(v17 + 36)];
    *v37 = v36;
    *(v37 + 1) = v35;
    *(v37 + 2) = v2;
    *(v37 + 3) = v3;
    *(v37 + 4) = v4;
    v37[40] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242708);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2680518C0;
    v39 = sub_26804D7BC();
    *(inited + 32) = v39;
    v40 = sub_26804D7FC();
    *(inited + 33) = v40;
    v41 = sub_26804D7DC();
    *(inited + 34) = v41;
    v42 = sub_26804D7EC();
    sub_26804D7EC();
    if (sub_26804D7EC() != v39)
    {
      v42 = sub_26804D7EC();
    }

    sub_26804D7EC();
    if (sub_26804D7EC() != v40)
    {
      v42 = sub_26804D7EC();
    }

    v43 = v60;

    sub_26804D7EC();
    if (sub_26804D7EC() != v41)
    {
      v42 = sub_26804D7EC();
    }

    v44 = v34;
    v45 = sub_26804E50C();

    if (v45)
    {
      v46 = v44;
      sub_26804E51C();
      v35 = v47;
    }

    sub_26804CE1C();
    OUTLINED_FUNCTION_25_1();
    sub_267FDBADC(v20, v43, &qword_2802445D0);
    v48 = v43 + *(v56 + 36);
    *v48 = v42;
    *(v48 + 8) = v35;
    *(v48 + 16) = v2;
    *(v48 + 24) = v3;
    *(v48 + 32) = v4;
    *(v48 + 40) = 0;
    v49 = v44;
    sub_26804E54C();

    sub_26804DFAC();
    sub_26804D13C();
    v50 = v59;
    sub_267FDBADC(v43, v59, &qword_2802445D8);
    memcpy((v50 + *(v58 + 36)), __src, 0x70uLL);
    v51 = v57;
    sub_267FDBADC(v50, v57, &qword_2802445E0);
    *(v51 + *(v61 + 36)) = 256;
    sub_2680488A8();
    sub_26804D9AC();
    return sub_267FC16BC(v51, &qword_2802445E8);
  }

  else
  {
    sub_26804E62C();
    OUTLINED_FUNCTION_1_16();
    sub_26804878C(v53, v54);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2680452A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280241200);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243FE8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244620);
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = type metadata accessor for AutoSendableBinaryButtonView(0);
  v14 = *(v13 - 8);
  v51 = v13 - 8;
  MEMORY[0x28223BE20](v13 - 8);
  v49 = v15;
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244628);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v52 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v45 = &v45 - v21;
  v46 = a1;
  v50 = type metadata accessor for AutoSendableBinaryButtonView;
  sub_268049304(a1, v16, type metadata accessor for AutoSendableBinaryButtonView);
  v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v23 = swift_allocObject();
  sub_2680487F0(v16, v23 + v22);
  v57 = sub_26804C98C();
  v58 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244630);
  sub_267FC126C(&qword_280244638, &qword_280244630);
  sub_26804DE2C();

  v25 = sub_267FC126C(&qword_280244640, &qword_280244620);
  v26 = v45;
  v27 = v47;
  MEMORY[0x26D60C630](v47, v25);

  (*(v48 + 8))(v12, v27);
  v28 = *(v18 + 44);
  v29 = *MEMORY[0x277D62850];
  v30 = sub_26804BE8C();
  (*(*(v30 - 8) + 104))(v26 + v28, v29, v30);
  v31 = sub_26804C99C();
  v59[3] = v31;
  v59[4] = sub_26804878C(&qword_280244648, MEMORY[0x277D5D818]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  v33 = v46;
  (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, v46, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  v34 = v53;
  sub_26804DE0C();
  v35 = v50;
  sub_268049304(v33, v16, v50);
  v36 = swift_allocObject();
  sub_2680487F0(v16, v36 + v22);
  sub_268049304(v33, v16, v35);
  v37 = swift_allocObject();
  sub_2680487F0(v16, v37 + v22);
  sub_268049304(v33, v16, v35);
  v38 = swift_allocObject();
  sub_2680487F0(v16, v38 + v22);
  v39 = v54;
  sub_26802DFEC(v59, v34, sub_268048C94, v36, sub_268048D00, v37, sub_268048D18, v38, v54);
  v40 = v52;
  sub_267FDC224(v26, v52, &qword_280244628);
  v41 = v55;
  sub_267FDC224(v39, v55, &qword_280243FE8);
  v42 = v56;
  sub_267FDC224(v40, v56, &qword_280244628);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244650);
  sub_267FDC224(v41, v42 + *(v43 + 48), &qword_280243FE8);
  sub_267FC16BC(v39, &qword_280243FE8);
  sub_267FC16BC(v26, &qword_280244628);
  sub_267FC16BC(v41, &qword_280243FE8);
  return sub_267FC16BC(v40, &qword_280244628);
}

void sub_268045970()
{
  v1 = *(v0 + *(type metadata accessor for AutoSendableBinaryButtonView(0) + 36));
  if (v1)
  {
    v2 = v1;
    v3 = sub_26801635C();

    if ((v3 & 1) == 0)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v4 = sub_26804CD4C();
      __swift_project_value_buffer(v4, qword_2802487E0);
      v5 = sub_26804CD3C();
      v6 = sub_26804E88C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_267FA7000, v5, v6, "#AutoSendableBinaryButtonView cancel button tapped", v7, 2u);
        MEMORY[0x26D60E1E0](v7, -1, -1);
      }

      v8 = v2;
      sub_268015CD8(0);

      sub_268047820();
    }
  }

  else
  {
    sub_26804E62C();
    sub_26804878C(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

void sub_268045B1C()
{
  v1 = v0;
  v2 = sub_26804D3AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_26804E2DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26804BFFC();
  MEMORY[0x28223BE20](v13 - 8);
  sub_26804E65C();
  sub_26804BFEC();

  (*(v10 + 104))(v12, *MEMORY[0x277D63BE0], v9);
  sub_26804E23C();
  v14 = sub_26804E24C();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  v15 = v1 + *(type metadata accessor for AutoSendableBinaryButtonView(0) + 44);
  v16 = *v15;
  v17 = *(v15 + 8);
  if (*(v15 + 16) == 1)
  {
  }

  else
  {

    sub_26804E8AC();
    v18 = sub_26804D77C();
    v23 = v2;
    v19 = v18;
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();
    sub_267FC1318(v16, v17, 0);
    (*(v3 + 8))(v5, v23);
  }

  v20 = objc_allocWithZone(sub_26804E45C());
  v21 = sub_26804E44C();
  sub_268047DB0(v21);
}

void sub_268045EA4()
{
  v1 = v0;
  v2 = sub_26804D3AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_26804E2DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26804BFFC();
  MEMORY[0x28223BE20](v13 - 8);
  sub_26804E65C();
  sub_26804BFEC();

  (*(v10 + 104))(v12, *MEMORY[0x277D63BE0], v9);
  sub_26804E23C();
  v14 = sub_26804E24C();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  v15 = v1 + *(type metadata accessor for AutoSendableBinaryButtonView(0) + 44);
  v16 = *v15;
  v17 = *(v15 + 8);
  if (*(v15 + 16) == 1)
  {
  }

  else
  {

    sub_26804E8AC();
    v18 = sub_26804D77C();
    v23 = v2;
    v19 = v18;
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();
    sub_267FC1318(v16, v17, 0);
    (*(v3 + 8))(v5, v23);
  }

  v20 = objc_allocWithZone(sub_26804E45C());
  v21 = sub_26804E44C();
  sub_268047DB0(v21);
}

uint64_t sub_268046228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v36 = a4;
  v6 = type metadata accessor for TimerState();
  MEMORY[0x28223BE20](v6 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244620);
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v10 = &v31 - v9;
  v32 = type metadata accessor for AutoSendableBinaryButtonView(0);
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244628);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  sub_268049304(a3, &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AutoSendableBinaryButtonView);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  sub_2680487F0(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = (v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v34;
  v18[1] = a2;

  v37 = sub_26804C97C();
  v38 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244630);
  sub_267FC126C(&qword_280244638, &qword_280244630);
  sub_26804DE2C();

  v20 = sub_267FC126C(&qword_280244640, &qword_280244620);
  v21 = v35;
  MEMORY[0x26D60C630](v35, v20);

  (*(v8 + 8))(v10, v21);
  v22 = *(v13 + 36);
  v23 = *MEMORY[0x277D62858];
  v24 = sub_26804BE8C();
  (*(*(v24 - 8) + 104))(&v15[v22], v23, v24);
  v25 = sub_26804C96C();
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
    v26 = v33;
    sub_26804DDEC();
    sub_26800DB4C();
    v25 = sub_267FC12B4(v26);
  }

  v27 = MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244660);
  sub_268048E40();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244678);
  v29 = sub_268048F8C();
  v39 = v28;
  v40 = v29;
  swift_getOpaqueTypeConformance2();
  sub_268049044();
  sub_26804DA3C();
  return sub_267FC16BC(v15, &qword_280244628);
}

void sub_26804678C(void (*a1)(void))
{
  v3 = *(v1 + *(type metadata accessor for AutoSendableBinaryButtonView(0) + 36));
  if (v3)
  {
    v4 = v3;
    v5 = sub_26801635C();

    if ((v5 & 1) == 0)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v6 = sub_26804CD4C();
      __swift_project_value_buffer(v6, qword_2802487E0);
      v7 = sub_26804CD3C();
      v8 = sub_26804E88C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_267FA7000, v7, v8, "#AutoSendableBinaryButtonView send button tapped", v9, 2u);
        MEMORY[0x26D60E1E0](v9, -1, -1);
      }

      a1();
    }
  }

  else
  {
    sub_26804E62C();
    sub_26804878C(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

uint64_t sub_26804690C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v29 = a2;
  v30 = a1;
  v34 = a3;
  v6 = type metadata accessor for AutoSendableBinaryButtonView(0);
  v33 = *(v6 - 8);
  v32 = *(v33 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v31 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244678);
  MEMORY[0x28223BE20](v36);
  v28 = &v25[-v8];
  v35 = sub_26804DFBC();
  v10 = v9;
  v11 = sub_26804D3DC();
  LOBYTE(v38[0]) = 0;
  sub_268046C04(a2, &v39);
  v12 = v39;
  v13 = v40;
  v14 = v41;
  v15 = v42;
  v16 = v43;
  v17 = v44;
  v18 = v45;
  LOBYTE(v39) = v40;
  v37[0] = v42;
  v26 = v42;
  v19 = v38[0];
  v27 = sub_26804DFEC();
  v38[0] = v35;
  v38[1] = v10;
  v38[2] = v11;
  v38[3] = 0;
  LOBYTE(v38[4]) = v19;
  v38[5] = v12;
  LOBYTE(v38[6]) = v13;
  v38[7] = v14;
  LOBYTE(v38[8]) = v15;
  v38[9] = v16;
  v38[10] = v17;
  v38[11] = v18;
  v38[12] = v27;
  *&v38[13] = a4;
  v20 = v28;
  sub_267FDC224(v30, v28, &qword_280244628);
  memcpy(&v20[*(v36 + 36)], v38, 0x70uLL);
  v39 = v35;
  v40 = v10;
  v41 = v11;
  v42 = 0;
  LOBYTE(v43) = v19;
  v44 = v12;
  LOBYTE(v45) = v13;
  v46 = v14;
  v47 = v26;
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v51 = v27;
  v52 = a4;
  sub_268049170(v38, v37);
  sub_267FC16BC(&v39, &qword_280244690);
  v21 = v31;
  sub_268049304(v29, v31, type metadata accessor for AutoSendableBinaryButtonView);
  v22 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v23 = swift_allocObject();
  sub_2680487F0(v21, v23 + v22);
  sub_268048F8C();
  sub_26804DA4C();

  return sub_267FC16BC(v20, &qword_280244678);
}

double sub_268046C04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AutoSendableBinaryButtonView(0) + 20));
  v5 = *v3;
  v6 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243B88);
  sub_26804DDEC();
  sub_26804DFAC();
  sub_26804CFBC();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  result = *&v9;
  *(a2 + 32) = v9;
  *(a2 + 48) = 0x3FD3333333333333;
  return result;
}

uint64_t sub_268046CE0()
{
  type metadata accessor for AutoSendableBinaryButtonView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243B88);
  return sub_26804DDFC();
}

uint64_t sub_268046D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26804E4DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for AutoSendableBinaryButtonView(0);
  if (*(a2 + *(v10 + 40)))
  {
    v11 = v10;

    sub_26804E4EC();

    v12 = sub_26804E4CC();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v14 = (a2 + *(v11 + 32));
      v15 = *v14;
      v16 = *(v14 + 1);
      v21[16] = v15;
      v22 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
      sub_26804DDEC();
      v13 = v21[15];
    }

    KeyPath = swift_getKeyPath();
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    sub_267FDC224(a1, a3, &qword_280244628);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244660);
    v20 = (a3 + *(result + 36));
    *v20 = KeyPath;
    v20[1] = sub_268049160;
    v20[2] = v18;
  }

  else
  {
    sub_26804E4FC();
    sub_26804878C(&qword_2802412F0, MEMORY[0x277D63F18]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_268046F90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242D50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v36 - v2;
  v4 = sub_26804C89C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = MEMORY[0x277D5D7A0];
  sub_26804878C(&qword_280242D58, MEMORY[0x277D5D7A0]);
  sub_26804878C(&qword_280242D60, v14);

  sub_26804C83C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_267FC16BC(v3, &qword_280242D50);
  }

  v37 = v0;
  (*(v5 + 32))(v13, v3, v4);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v16 = sub_26804CD4C();
  __swift_project_value_buffer(v16, qword_2802487E0);
  v17 = *(v5 + 16);
  v17(v11, v13, v4);
  v18 = sub_26804CD3C();
  v19 = sub_26804E88C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39[0] = v36;
    *v20 = 136315138;
    v17(v8, v11, v4);
    v21 = sub_26804E6EC();
    v23 = v22;
    v24 = *(v5 + 8);
    v24(v11, v4);
    v25 = sub_267FAE0C4(v21, v23, v39);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_267FA7000, v18, v19, "#AutoSendableBinaryButtonView received %s", v20, 0xCu);
    v26 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x26D60E1E0](v26, -1, -1);
    MEMORY[0x26D60E1E0](v20, -1, -1);
  }

  else
  {

    v24 = *(v5 + 8);
    v24(v11, v4);
  }

  v27 = type metadata accessor for AutoSendableBinaryButtonView(0);
  v28 = v37;
  v29 = *(v37 + *(v27 + 36));
  if (v29)
  {
    v30 = v27;
    v31 = v29;
    sub_268016368(0);

    v32 = sub_26804C87C();
    v33 = (v28 + *(v30 + 32));
    v34 = *v33;
    v35 = *(v33 + 1);
    LOBYTE(v39[0]) = v34;
    v39[1] = v35;
    v38 = v32 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
    sub_26804DDFC();
    return (v24)(v13, v4);
  }

  else
  {
    sub_26804E62C();
    sub_26804878C(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_268047478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802446A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802446A8);
  swift_getOpaqueTypeConformance2();
  sub_268049250();
  return sub_26804DD6C();
}

uint64_t sub_268047548@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419B8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_26804BF4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_268050170;
  v12 = sub_26804BE9C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  v13 = sub_26804BFDC();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v13);
  v14 = sub_26804BEAC();
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v15 = MEMORY[0x277D62918];
  *(v11 + 56) = v14;
  *(v11 + 64) = v15;
  __swift_allocate_boxed_opaque_existential_1((v11 + 32));

  sub_26804BEBC();
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_26804BF6C();
  sub_26804BF2C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2680477D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26804E3AC();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

void sub_268047820()
{
  v1 = v0;
  v2 = sub_26804D3AC();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_26804E2DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26804BFFC();
  MEMORY[0x28223BE20](v12 - 8);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v13 = sub_26804CD4C();
  __swift_project_value_buffer(v13, qword_2802487E0);
  v14 = sub_26804CD3C();
  v15 = sub_26804E88C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_267FA7000, v14, v15, "#AutoSendableBinaryButtonView submitting direct invocation for cancel", v16, 2u);
    MEMORY[0x26D60E1E0](v16, -1, -1);
  }

  sub_26804E65C();
  sub_26804BFEC();

  v17 = *MEMORY[0x277D63BE0];
  v18 = *(v9 + 104);
  v36 = v11;
  v18(v11, v17, v8);
  sub_26804E23C();
  v19 = sub_26804E24C();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v19);
  v20 = type metadata accessor for AutoSendableBinaryButtonView(0);
  v21 = v1 + *(v20 + 44);
  v22 = *v21;
  v23 = *(v21 + 8);
  if (*(v21 + 16) == 1)
  {
  }

  else
  {

    sub_26804E8AC();
    v24 = sub_26804D77C();
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();
    sub_267FC1318(v22, v23, 0);
    (*(v34 + 8))(v4, v35);
  }

  v25 = objc_allocWithZone(sub_26804E45C());
  v26 = sub_26804E44C();
  v27 = *(v1 + *(v20 + 36));
  if (v27)
  {
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_268050170;
    strcpy(v37, "buttonPressed");
    v37[7] = -4864;
    v30 = v27;
    v31 = MEMORY[0x277D837D0];
    sub_26804EAFC();
    *(inited + 96) = v31;
    *(inited + 72) = 0x6C65636E6143;
    *(inited + 80) = 0xE600000000000000;
    v32 = sub_26804E65C();
    v33 = v28;
    sub_268016080(0xD000000000000034, 0x8000000268056DE0, v32, v28);
  }

  else
  {
    sub_26804E62C();
    sub_26804878C(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

void sub_268047DB0(void *a1)
{
  v2 = v1;
  v4 = sub_26804E4DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26804E65C();
  v8 = sub_26804E6CC();
  v10 = v9;
  v11 = type metadata accessor for AutoSendableBinaryButtonView(0);
  if (!*(v1 + *(v11 + 40)))
  {
    sub_26804E4FC();
    v32 = &qword_2802412F0;
    v33 = MEMORY[0x277D63F18];
LABEL_18:
    sub_26804878C(v32, v33);
    sub_26804D15C();
    __break(1u);
    return;
  }

  v12 = v11;

  sub_26804E4EC();

  if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D63F08])
  {
    (*(v5 + 96))(v7, v4);
    v13 = *v7;

    *&v36 = sub_26804E6CC();
    *(&v36 + 1) = v14;
    v15 = MEMORY[0x277D837D0];
    sub_26804EAFC();
    sub_268004388(v38, v13, &v36);
    sub_2680079E0(v38);
    v16 = v37;
    sub_267FC16BC(&v36, &qword_280241FC8);
    if (!v16)
    {
      *&v36 = sub_26804E6CC();
      *(&v36 + 1) = v17;
      sub_26804EAFC();
      v37 = v15;
      *&v36 = 0;
      *(&v36 + 1) = 0xE000000000000000;
      sub_267FD9070(&v36, v35);
      swift_isUniquelyReferenced_nonNull_native();
      v34 = v13;
      sub_268016A68(v35, v38);
      v13 = v34;
      sub_2680079E0(v38);
    }

    strcpy(&v36, "keyboardLocale");
    HIBYTE(v36) = -18;
    v18 = sub_26804EAFC();
    v19 = sub_268016EC8(v18);
    v37 = v15;
    *&v36 = v19;
    *(&v36 + 1) = v20;
    sub_267FD9070(&v36, v35);
    swift_isUniquelyReferenced_nonNull_native();
    v34 = v13;
    sub_268016A68(v35, v38);
    v21 = v34;
    sub_2680079E0(v38);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v22 = sub_26804CD4C();
    __swift_project_value_buffer(v22, qword_2802487E0);
    v23 = sub_26804CD3C();
    v24 = sub_26804E88C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_267FA7000, v23, v24, "#AutoSendableBinaryButtonView submitting direct invocation for send", v25, 2u);
      MEMORY[0x26D60E1E0](v25, -1, -1);
    }

    v26 = *(v2 + *(v12 + 36));
    if (v26)
    {
      v27 = v26;
      sub_268016080(v8, v10, v21, a1);

      return;
    }

    sub_26804E62C();
    v32 = &qword_2802412E0;
    v33 = MEMORY[0x277D63F60];
    goto LABEL_18;
  }

  (*(v5 + 8))(v7, v4);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v28 = sub_26804CD4C();
  __swift_project_value_buffer(v28, qword_2802487E0);
  v29 = sub_26804CD3C();
  v30 = sub_26804E88C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_267FA7000, v29, v30, "#AutoSendableBinaryButtonView content is not valid, ignoring", v31, 2u);
    MEMORY[0x26D60E1E0](v31, -1, -1);
  }
}

uint64_t sub_268048310()
{
  v0 = sub_26804E1FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268048488();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802446D0);
  sub_267FC126C(&qword_2802446D8, &qword_2802446D0);
  sub_26804878C(&qword_2802446E0, MEMORY[0x277D63AA8]);
  sub_26804DACC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_268048488()
{
  v1 = v0;
  v2 = sub_26804BE8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D62850])
  {
    return sub_26804CEEC();
  }

  if (v6 == *MEMORY[0x277D62858])
  {
    return sub_26804CEFC();
  }

  if (v6 == *MEMORY[0x277D62848])
  {
    return sub_26804CEDC();
  }

  sub_26804CEEC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_268048648()
{
  v0 = sub_26804C99C();
  if (v1 <= 0x3F)
  {
    sub_267FFCF74(319, &qword_280243AE8);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_267FFCF74(319, &qword_280242BB0);
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_267FC6444();
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          sub_267FC1004();
          v0 = v8;
          if (v9 <= 0x3F)
          {
            sub_267FC1098();
            v0 = v10;
            if (v11 <= 0x3F)
            {
              sub_267FEFFAC();
              v0 = v12;
              if (v13 <= 0x3F)
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

  return v0;
}

uint64_t sub_26804878C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2680487F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoSendableBinaryButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268048854()
{
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_10_7();
  return sub_268046F90();
}

unint64_t sub_2680488A8()
{
  result = qword_2802445F8;
  if (!qword_2802445F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802445E8);
    sub_268048934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802445F8);
  }

  return result;
}

unint64_t sub_268048934()
{
  result = qword_280244600;
  if (!qword_280244600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802445E0);
    sub_2680489C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244600);
  }

  return result;
}

unint64_t sub_2680489C0()
{
  result = qword_280244608;
  if (!qword_280244608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802445D8);
    sub_268048A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244608);
  }

  return result;
}

unint64_t sub_268048A4C()
{
  result = qword_280244610;
  if (!qword_280244610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802445D0);
    sub_267FC126C(&qword_280244618, &qword_2802445C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244610);
  }

  return result;
}

uint64_t objectdestroyTm_21()
{
  type metadata accessor for AutoSendableBinaryButtonView(0);
  OUTLINED_FUNCTION_22_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_26804C99C();
  OUTLINED_FUNCTION_4();
  (*(v7 + 8))(v1 + v4);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_16();
  v8 = v1 + v4 + *(v0 + 28);
  type metadata accessor for TimerState();
  OUTLINED_FUNCTION_8_9();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_26804BDFC();
    OUTLINED_FUNCTION_4();
    (*(v9 + 8))(v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);

  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_12_9();

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_268048CAC(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_10_7();
  return a1();
}

uint64_t sub_268048D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_10_7();

  return sub_268046228(a1, a2, v3 + v7, a3);
}

unint64_t sub_268048E40()
{
  result = qword_280244668;
  if (!qword_280244668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244620);
    sub_267FC126C(&qword_280244640, &qword_280244620);
    swift_getOpaqueTypeConformance2();
    sub_26804878C(&qword_280244670, type metadata accessor for ButtonStyleSelectorModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244668);
  }

  return result;
}

unint64_t sub_268048F8C()
{
  result = qword_280244680;
  if (!qword_280244680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244678);
    sub_268048E40();
    sub_267FC126C(&qword_280244688, &qword_280244690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244680);
  }

  return result;
}

unint64_t sub_268049044()
{
  result = qword_280244698;
  if (!qword_280244698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244660);
    sub_268048E40();
    sub_267FC126C(&qword_280241B48, &qword_280241B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244698);
  }

  return result;
}

uint64_t sub_2680490FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26804D32C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_268049170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680491E0()
{
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_10_7();

  return sub_268046CE0();
}

unint64_t sub_268049250()
{
  result = qword_2802446B0;
  if (!qword_2802446B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802446A8);
    sub_26804878C(&qword_2802446B8, MEMORY[0x277D63D18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802446B0);
  }

  return result;
}

uint64_t sub_268049304(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  return a2;
}

uint64_t sub_268049388()
{
  result = sub_26804BE8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26804945C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_26804BD7C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_268049504@<X0>(uint64_t a1@<X8>)
{
  sub_26804C61C();
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(a1, v1);
  v4 = *(type metadata accessor for VideoAttachmentView() + 20);
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2680495A4@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37[1] = a2;
  v37[5] = a3;
  v37[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802447F8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  v7 = v37 - v6;
  v37[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244800);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_17();
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244808);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244810);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v37 - v17;
  sub_26804C47C();
  sub_26804BC1C(&qword_280242BC0, MEMORY[0x277D5D5D0]);
  v19 = sub_26804C73C();
  a1();
  KeyPath = swift_getKeyPath();
  v21 = &v18[*(v13 + 44)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BF0);
  sub_267FF1DFC(v21 + *(v22 + 28));
  *v21 = KeyPath;
  sub_267FD9D8C(v18, v16, &qword_280244810);
  if (v19)
  {
    OUTLINED_FUNCTION_9_5(v16, v11);
    v23 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280244830) + 48)];
    *v23 = 0;
    v23[8] = 1;
    OUTLINED_FUNCTION_21_1();
    sub_267FC16BC(v24, v25);
    OUTLINED_FUNCTION_9_5(v11, v3);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_17();
    sub_267FC126C(v26, &qword_280244808);
    sub_267FC126C(&qword_280244828, &qword_2802447F8);
  }

  else
  {
    *v7 = 0;
    v7[8] = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244818);
    OUTLINED_FUNCTION_9_5(v16, &v7[*(v27 + 48)]);
    OUTLINED_FUNCTION_21_1();
    sub_267FC16BC(v28, v29);
    OUTLINED_FUNCTION_9_5(v7, v3);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_17();
    sub_267FC126C(v30, v31);
    OUTLINED_FUNCTION_21_1();
    sub_267FC126C(v32, v33);
  }

  OUTLINED_FUNCTION_5_11();
  OUTLINED_FUNCTION_21_1();
  sub_267FC16BC(v34, v35);
  return sub_267FC16BC(v18, &qword_280244810);
}

uint64_t sub_2680499A4@<X0>(void (*a1)(void *__return_ptr)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26[1] = a2;
  v27 = a1;
  v31 = a3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802447B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  v5 = v26 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802447B8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802447C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802447C8);
  OUTLINED_FUNCTION_4();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v26 - v17;
  sub_26804C59C();
  sub_26804BC1C(&qword_280243188, MEMORY[0x277D5D640]);
  if (sub_26804C73C())
  {
    v27(v33);
    KeyPath = swift_getKeyPath();
    v20 = &v18[*(v12 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BF0);
    sub_2680044CC();
    OUTLINED_FUNCTION_8_10(v34);
    *v20 = KeyPath;
    memcpy(v18, v33, 0x72uLL);
    OUTLINED_FUNCTION_8_10(v35);
    sub_267FD9D8C(v34, v32, &qword_2802447D0);
    sub_267FC16BC(v35, &qword_2802447D0);
    sub_267FD9D8C(v18, v16, &qword_2802447C8);
    sub_267FD9D8C(v16, v11, &qword_2802447C8);
    v21 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802447F0) + 48)];
    *v21 = 0;
    v21[8] = 1;
    sub_267FC16BC(v16, &qword_2802447C8);
    sub_267FD9D8C(v11, v8, &qword_2802447C0);
    swift_storeEnumTagMultiPayload();
    sub_267FC126C(&qword_2802447E0, &qword_2802447C0);
    sub_267FC126C(&qword_2802447E8, &qword_2802447B0);
    OUTLINED_FUNCTION_4_15();
    sub_267FC16BC(v11, &qword_2802447C0);
  }

  else
  {
    v27(v33);
    v22 = swift_getKeyPath();
    v23 = &v18[*(v12 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BF0);
    sub_2680044CC();
    OUTLINED_FUNCTION_8_10(v34);
    *v23 = v22;
    memcpy(v18, v33, 0x72uLL);
    OUTLINED_FUNCTION_8_10(v35);
    sub_267FD9D8C(v34, v32, &qword_2802447D0);
    sub_267FC16BC(v35, &qword_2802447D0);
    sub_267FD9D8C(v18, v16, &qword_2802447C8);
    *v5 = 0;
    v5[8] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802447D8);
    sub_267FD9D8C(v16, &v5[*(v24 + 48)], &qword_2802447C8);
    sub_267FC16BC(v16, &qword_2802447C8);
    sub_267FD9D8C(v5, v8, &qword_2802447B0);
    swift_storeEnumTagMultiPayload();
    sub_267FC126C(&qword_2802447E0, &qword_2802447C0);
    sub_267FC126C(&qword_2802447E8, &qword_2802447B0);
    OUTLINED_FUNCTION_4_15();
    sub_267FC16BC(v5, &qword_2802447B0);
  }

  return sub_267FC16BC(v18, &qword_2802447C8);
}

uint64_t sub_268049F04@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26[1] = a2;
  v30 = a3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244738);
  MEMORY[0x28223BE20](v29);
  v5 = v26 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244740);
  MEMORY[0x28223BE20](v27);
  v7 = v26 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244748);
  MEMORY[0x28223BE20](v28);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244750);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - v15;
  sub_26804C61C();
  sub_26804BC1C(&qword_2802446F8, MEMORY[0x277D5D670]);
  v17 = sub_26804C73C();
  a1();
  KeyPath = swift_getKeyPath();
  v19 = &v16[*(v11 + 44)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BF0);
  sub_26804A3A8(v19 + *(v20 + 28));
  *v19 = KeyPath;
  sub_267FD9D8C(v16, v14, &qword_280244750);
  if (v17)
  {
    sub_267FD9D8C(v14, v9, &qword_280244750);
    v21 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244770) + 48)];
    *v21 = 0;
    v21[8] = 1;
    sub_267FC16BC(v14, &qword_280244750);
    v22 = &qword_280244748;
    sub_267FD9D8C(v9, v7, &qword_280244748);
    swift_storeEnumTagMultiPayload();
    sub_267FC126C(&qword_280244760, &qword_280244748);
    sub_267FC126C(&qword_280244768, &qword_280244738);
    sub_26804D5AC();
    v23 = v9;
  }

  else
  {
    *v5 = 0;
    v5[8] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244758);
    sub_267FD9D8C(v14, &v5[*(v24 + 48)], &qword_280244750);
    sub_267FC16BC(v14, &qword_280244750);
    v22 = &qword_280244738;
    sub_267FD9D8C(v5, v7, &qword_280244738);
    swift_storeEnumTagMultiPayload();
    sub_267FC126C(&qword_280244760, &qword_280244748);
    sub_267FC126C(&qword_280244768, &qword_280244738);
    sub_26804D5AC();
    v23 = v5;
  }

  sub_267FC16BC(v23, v22);
  return sub_267FC16BC(v16, &qword_280244750);
}

uint64_t sub_26804A3A8@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_26804D3AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_17();
  v9 = type metadata accessor for VideoAttachmentView();
  sub_267FD9D8C(v1 + *(v9 + 20), v2, &qword_280241F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804D0CC();
    OUTLINED_FUNCTION_4();
    return (*(v10 + 32))(a1, v2);
  }

  else
  {
    sub_26804E8AC();
    v12 = sub_26804D77C();
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_26804A594@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v34[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244700);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  v6 = v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244708);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244710);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_17();
  v36 = v3;
  *v6 = sub_26804D3DC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244718);
  sub_268049F04(sub_26804BA08, v35, &v6[*(v13 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2680518C0;
  v15 = sub_26804D7DC();
  *(inited + 32) = v15;
  v16 = sub_26804D7FC();
  *(inited + 33) = v16;
  v17 = sub_26804D7CC();
  *(inited + 34) = v17;
  v18 = sub_26804D7EC();
  sub_26804D7EC();
  if (sub_26804D7EC() != v15)
  {
    v18 = sub_26804D7EC();
  }

  sub_26804D7EC();
  if (sub_26804D7EC() != v16)
  {
    v18 = sub_26804D7EC();
  }

  sub_26804D7EC();
  if (sub_26804D7EC() != v17)
  {
    v18 = sub_26804D7EC();
  }

  sub_26804CE1C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_267FD9D3C(v6, v10, &qword_280244700);
  v27 = &v10[*(v7 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  KeyPath = swift_getKeyPath();
  v29 = (v2 + *(v11 + 36));
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BF0) + 28);
  v31 = *MEMORY[0x277CDFA88];
  sub_26804D0CC();
  OUTLINED_FUNCTION_4();
  (*(v32 + 104))(v29 + v30, v31);
  *v29 = KeyPath;
  sub_267FD9D3C(v10, v2, &qword_280244708);
  sub_26804BA10();
  sub_26804D9AC();
  return sub_267FC16BC(v2, &qword_280244710);
}

uint64_t sub_26804A8F8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_26804DF9C();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244778);
  return sub_26804A948(a1 + *(v3 + 44));
}

uint64_t sub_26804A948@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244780);
  MEMORY[0x28223BE20](v2);
  v73 = &v63 - v3;
  v4 = sub_26804DD2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244788);
  v9 = MEMORY[0x28223BE20](v8);
  v75 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v63 - v12;
  MEMORY[0x28223BE20](v11);
  v74 = &v63 - v14;
  v15 = sub_26804B020();
  if (v15)
  {
    v16 = *MEMORY[0x277CE0FE0];
    v17 = *(v5 + 104);
    v71 = v15;
    v17(v7, v16, v4);
    v18 = sub_26804DD5C();
    v72 = a1;
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244790);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2680518B0;
    sub_26804DC7C();
    v21 = sub_26804DCAC();

    *(v20 + 32) = v21;
    sub_26804DC7C();
    v22 = sub_26804DCAC();

    *(v20 + 40) = v22;
    sub_26804E02C();
    MEMORY[0x26D60CBC0](v20);
    sub_26804D03C();
    v23 = v99;
    LOBYTE(v20) = sub_26804D7AC();
    v70 = v2;
    v97 = 1;
    sub_26804DFAC();
    sub_26804D13C();
    memcpy(&v98[6], __src, 0x70uLL);
    v24 = &v13[*(v8 + 36)];
    v25 = *(sub_26804D11C() + 20);
    v26 = *MEMORY[0x277CE0118];
    v27 = sub_26804D48C();
    v28 = *(*(v27 - 8) + 104);
    v68 = v101;
    v69 = v100;
    v28(&v24[v25], v26, v27);
    __asm { FMOV            V0.2D, #16.0 }

    *v24 = _Q0;
    *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241990) + 36)] = 256;
    *v13 = v19;
    *(v13 + 1) = v23;
    v34 = v68;
    *(v13 + 1) = v69;
    *(v13 + 2) = v34;
    v13[48] = v20;
    *(v13 + 7) = 0;
    *(v13 + 32) = 1;
    memcpy(v13 + 66, v98, 0x76uLL);
    v35 = v74;
    sub_267FD9D3C(v13, v74, &qword_280244788);
    v80 = sub_26804B3EC();
    v81 = v36;
    sub_267FB0C1C();
    v37 = sub_26804D95C();
    v39 = v38;
    v41 = v40;
    *&v69 = v42;
    *&v68 = sub_26804DC8C();
    v66 = sub_26804D7AC();
    v67 = sub_26804DC9C();
    KeyPath = swift_getKeyPath();
    LOBYTE(v19) = v41 & 1;
    LOBYTE(v80) = v41 & 1;
    v65 = v41 & 1;
    v44 = sub_26804D7AC();
    sub_26804CE1C();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = v35;
    v54 = v75;
    sub_267FD9D8C(v53, v75, &qword_280244788);
    v55 = v73;
    sub_267FD9D8C(v54, v73, &qword_280244788);
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280244798) + 48);
    v56 = v37;
    v79[0] = v37;
    v79[1] = v39;
    LOBYTE(v79[2]) = v19;
    *(&v79[2] + 1) = *v77;
    HIDWORD(v79[2]) = *&v77[3];
    v57 = v69;
    v59 = v67;
    v58 = v68;
    v79[3] = v69;
    v79[4] = v68;
    v60 = v66;
    LOBYTE(v79[5]) = v66;
    *(&v79[5] + 1) = *v76;
    HIDWORD(v79[5]) = *&v76[3];
    v79[6] = KeyPath;
    v79[7] = v67;
    LOBYTE(v79[8]) = v44;
    HIDWORD(v79[8]) = *&v78[3];
    *(&v79[8] + 1) = *v78;
    v79[9] = v46;
    v79[10] = v48;
    v79[11] = v50;
    v79[12] = v52;
    LOBYTE(v79[13]) = 0;
    sub_267FD9D8C(v79, &v80, &qword_2802447A0);

    memcpy((v55 + v64), v79, 0x69uLL);
    sub_267FC16BC(v74, &qword_280244788);
    v80 = v56;
    v81 = v39;
    v82 = v65;
    *v83 = *v77;
    *&v83[3] = *&v77[3];
    v84 = v57;
    v85 = v58;
    v86 = v60;
    *v87 = *v76;
    *&v87[3] = *&v76[3];
    v88 = KeyPath;
    v89 = v59;
    v90 = v44;
    *&v91[3] = *&v78[3];
    *v91 = *v78;
    v92 = v46;
    v93 = v48;
    v94 = v50;
    v95 = v52;
    v96 = 0;
    sub_267FC16BC(&v80, &qword_2802447A0);
    sub_267FC16BC(v75, &qword_280244788);
    v61 = v72;
    sub_267FD9D3C(v55, v72, &qword_280244780);
    return __swift_storeEnumTagSinglePayload(v61, 0, 1, v70);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

uint64_t sub_26804B020()
{
  v30 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v3 = sub_26804BD7C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = sub_26804C60C();
  sub_26804945C(v10, v2);

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_267FC16BC(v2, &qword_280242C60);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v11 = sub_26804CD4C();
    __swift_project_value_buffer(v11, qword_2802487E0);
    v12 = sub_26804CD3C();
    v13 = sub_26804E89C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_267FA7000, v12, v13, "#VideoAttachmentView thumbnailImage no url!", v14, 2u);
      MEMORY[0x26D60E1E0](v14, -1, -1);
    }

    return 0;
  }

  (*(v4 + 32))(v9, v2, v3);
  sub_26804BBD8();
  (*(v4 + 16))(v7, v9, v3);
  v15 = sub_26804B800(v7);
  v16 = [objc_allocWithZone(MEMORY[0x277CE6408]) initWithAsset_];
  [v16 setAppliesPreferredTrackTransform_];
  CMTimeMake(&v29, 0, 1);
  v28 = 0;
  v17 = [v16 copyCGImageAtTime:&v29 actualTime:0 error:&v28];
  v18 = v28;
  v19 = (v4 + 8);
  if (!v17)
  {
    v24 = v28;
    v25 = sub_26804BD0C();

    swift_willThrow();
    (*v19)(v9, v3);

    return 0;
  }

  v20 = v17;
  v21 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v22 = v18;
  [v21 initWithCGImage_];
  v23 = sub_26804DD0C();

  (*v19)(v9, v3);
  return v23;
}

uint64_t sub_26804B3EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v29 - v1;
  v3 = sub_26804BD7C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = sub_26804C60C();
  sub_26804945C(v10, v2);

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_267FC16BC(v2, &qword_280242C60);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v11 = sub_26804CD4C();
    __swift_project_value_buffer(v11, qword_2802487E0);
    v12 = sub_26804CD3C();
    v13 = sub_26804E89C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_267FA7000, v12, v13, "#VideoAttachmentView videoDurationString no url!", v14, 2u);
      MEMORY[0x26D60E1E0](v14, -1, -1);
    }

    return 0;
  }

  (*(v4 + 32))(v9, v2, v3);
  sub_26804BBD8();
  (*(v4 + 16))(v7, v9, v3);
  v16 = sub_26804B800(v7);
  [v16 duration];
  result = sub_26804E99C();
  v19 = rint(v18);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v19 < 9.22337204e18)
  {
    v20 = v19 % 60;
    v21 = v19 / 60 % 60;
    if (v19 < 3600)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242530);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_2680518B0;
      v27 = MEMORY[0x277D83B88];
      v28 = MEMORY[0x277D83C10];
      *(v26 + 56) = MEMORY[0x277D83B88];
      *(v26 + 64) = v28;
      *(v26 + 32) = v21;
      *(v26 + 96) = v27;
      *(v26 + 104) = v28;
      *(v26 + 72) = v20;
    }

    else
    {
      v22 = v19 / 0xE10uLL;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242530);
      v23 = swift_allocObject();
      v24 = MEMORY[0x277D83B88];
      *(v23 + 16) = xmmword_2680518C0;
      v25 = MEMORY[0x277D83C10];
      *(v23 + 56) = v24;
      *(v23 + 64) = v25;
      *(v23 + 32) = v22;
      *(v23 + 96) = v24;
      *(v23 + 104) = v25;
      *(v23 + 72) = v21;
      *(v23 + 136) = v24;
      *(v23 + 144) = v25;
      *(v23 + 112) = v20;
    }

    v15 = sub_26804E6DC();

    (*(v4 + 8))(v9, v3);
    return v15;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_26804B800(uint64_t a1)
{
  v2 = sub_26804BD2C();
  v3 = [swift_getObjCClassFromMetadata() assetWithURL_];

  v4 = sub_26804BD7C();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

void sub_26804B8C8()
{
  sub_26804C61C();
  if (v0 <= 0x3F)
  {
    sub_267FF40E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26804B994(uint64_t a1)
{
  result = sub_26804BC1C(&qword_280241F20, type metadata accessor for VideoAttachmentView);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26804BA10()
{
  result = qword_280244720;
  if (!qword_280244720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244710);
    sub_26804BAC8();
    sub_267FC126C(&unk_280242C10, &qword_280242BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244720);
  }

  return result;
}

unint64_t sub_26804BAC8()
{
  result = qword_280244728;
  if (!qword_280244728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280244708);
    sub_267FC126C(&qword_280244730, &qword_280244700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280244728);
  }

  return result;
}

uint64_t sub_26804BB80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26804D2AC();
  *a1 = result;
  return result;
}

unint64_t sub_26804BBD8()
{
  result = qword_2802447A8;
  if (!qword_2802447A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802447A8);
  }

  return result;
}

uint64_t sub_26804BC1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_11()
{

  return sub_26804D5AC();
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

MKCoordinateRegion MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters)
{
  MEMORY[0x282123648](centerCoordinate, *&centerCoordinate.longitude, latitudinalMeters, longitudinalMeters);
  result.span.longitudeDelta = v6;
  result.span.latitudeDelta = v5;
  result.center.longitude = v4;
  result.center.latitude = v3;
  return result;
}
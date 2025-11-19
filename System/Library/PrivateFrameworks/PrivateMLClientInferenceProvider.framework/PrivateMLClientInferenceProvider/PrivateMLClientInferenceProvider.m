uint64_t sub_21D045BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE53EE8, &qword_21D095930);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21D045CB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE53EE8, &qword_21D095930);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21D045D78()
{
  v1 = *(type metadata accessor for PrivateMLClientAlertService() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_21D094230();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v4 + 8);

  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v2 | 7);
}

uint64_t sub_21D045E88()
{
  v1 = *(type metadata accessor for PrivateMLClientAlertService() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21D094230();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21D045F54()
{
  v1 = *(type metadata accessor for PrivateMLClientAlertService() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_21D094230();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21D046030()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21D046068(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D094230();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D0460D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D094230();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D046150(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21D094230();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_21D092FC0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_21D093470();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_21D094730();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_21D046310(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21D094230();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_21D092FC0();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_21D093470();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_21D094730();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_21D0464D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21D094230();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_21D092FC0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_21D094730();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_21D0942C0();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54240, &qword_21D095C90);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v19 = sub_21D093440();
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[10];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_21D04672C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21D094230();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_21D092FC0();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_21D094730();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_21D0942C0();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54240, &qword_21D095C90);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v19 = sub_21D093440();
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[10];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_21D046988()
{
  v1 = *(v0 + 8);
  if (v1 <= 1)
  {
    if (*(v0 + 8))
    {
      return 6;
    }

    else
    {
      return 1;
    }
  }

  else if (v1 == 2)
  {
    return 10;
  }

  else if (v1 == 3)
  {
    return 15;
  }

  else
  {
    return qword_21D096598[*v0];
  }
}

uint64_t sub_21D0469E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_21D094070();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 2);
  swift_unknownObjectRelease();
  v14 = *(v0 + 4);

  v15 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);
  (*(v7 + 8))(&v0[v9], v6);
  sub_21D04FE3C(*&v0[v11], *&v0[v11 + 8]);
  v16 = *&v0[v12];

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v10 | 7);
}

uint64_t sub_21D046B74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v21 = (v3 + 48) & ~v3;
  v22 = v1;
  v4 = *(v2 + 64);
  v5 = sub_21D094070();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v21 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_21D093EB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v3 | v7 | v12;
  v15 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v0 + 2);
  swift_unknownObjectRelease();
  v17 = *(v0 + 4);

  v18 = *(v0 + 5);

  (*(v2 + 8))(&v0[v21], v22);
  (*(v6 + 8))(&v0[v8], v5);
  (*(v11 + 8))(&v0[v13], v10);
  v19 = *&v0[v15];

  return MEMORY[0x2821FE8E8](v0, v15 + 8, v14 | 7);
}

uint64_t sub_21D046D78(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21D046D90()
{
  result = os_variant_has_internal_content();
  byte_281221490 = result;
  return result;
}

uint64_t (*static OSVariant.isInternalBuild.modify())()
{
  if (qword_281221488 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_21D046E88()
{
  if (qword_281221488 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_27CE53EA8 = (byte_281221490 & 1) == 0;
  return result;
}

uint64_t sub_21D046F30(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *a2;
}

uint64_t sub_21D046FAC(char a1, void *a2, _BYTE *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = a1 & 1;
  return result;
}

uint64_t (*static OSVariant.isCustomerBuild.modify())()
{
  if (qword_27CE53E90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21D04709C@<X0>(void *a1@<X3>, _BYTE *a2@<X4>, _BYTE *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = *a2;
  return result;
}

uint64_t sub_21D047100(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v7 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a6 = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for OSVariant(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for OSVariant(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_21D047268@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EB0, &qword_21D094F80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_21D092EA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D092E90();
  sub_21D092E80();
  MEMORY[0x223D3AF40](7824750, 0xE300000000000000);
  sub_21D0474B8();
  sub_21D092E50();
  sub_21D092E60();
  v11 = sub_21D092F50();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_21D04D27C(v5, &qword_27CE53EB0, &qword_21D094F80);
    sub_21D04D0C0();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }
}

char *sub_21D0474B8()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EC0, &qword_21D094F88) - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v399 = &v363 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v398 = &v363 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v397 = &v363 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v394 = &v363 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v391 = &v363 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v388 = &v363 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v387 = &v363 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v363 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v363 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v363 - v23;
  v25 = sub_21D092E20();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v366 = &v363 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v365 = &v363 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v382 = &v363 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v381 = &v363 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v418 = &v363 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v380 = &v363 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v417 = &v363 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v416 = &v363 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v379 = &v363 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v415 = &v363 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v396 = &v363 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v395 = &v363 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v414 = &v363 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v378 = &v363 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v413 = &v363 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v412 = &v363 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v377 = &v363 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v411 = &v363 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v410 = &v363 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v376 = &v363 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v409 = &v363 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v408 = &v363 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v375 = &v363 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v407 = &v363 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v393 = &v363 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v392 = &v363 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v419 = &v363 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v374 = &v363 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v406 = &v363 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v405 = &v363 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v373 = &v363 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v404 = &v363 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v403 = &v363 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v372 = &v363 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v402 = &v363 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v390 = &v363 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v389 = &v363 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v401 = &v363 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v371 = &v363 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v400 = &v363 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v370 = &v363 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v369 = &v363 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v368 = &v363 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v367 = &v363 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v386 = &v363 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v385 = &v363 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v384 = &v363 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v383 = &v363 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v126 = &v363 - v125;
  MEMORY[0x28223BE20](v124);
  v128 = &v363 - v127;
  v423 = v26;
  v424 = MEMORY[0x277D84F90];
  v129 = v1[3];
  v420 = v1;
  if (!v129)
  {
    v421 = *(v26 + 56);
    v421(v24, 1, 1, v25);
LABEL_5:
    sub_21D04D27C(v24, &qword_27CE53EC0, &qword_21D094F88);
    v133 = v1[6];
    if (!v133)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v130 = v1[1];
  v131 = v1[2];
  v132 = *v1;

  v26 = v423;
  sub_21D092E10();
  v421 = *(v26 + 56);
  v421(v24, 0, 1, v25);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v1 = v420;
    goto LABEL_5;
  }

  v422 = *(v26 + 32);
  v422(v128, v24, v25);
  (*(v26 + 16))(v126, v128, v25);
  v166 = sub_21D0550DC(0, 1, 1, MEMORY[0x277D84F90]);
  v168 = v166[2];
  v167 = v166[3];
  v364 = v19;
  if (v168 >= v167 >> 1)
  {
    v166 = sub_21D0550DC(v167 > 1, v168 + 1, 1, v166);
  }

  v169 = v423;
  v170 = v423 + 8;
  (*(v423 + 8))(v128, v25);
  v166[2] = v168 + 1;
  v171 = v166 + ((*(v170 + 72) + 32) & ~*(v170 + 72)) + *(v170 + 64) * v168;
  v26 = v169;
  v422(v171, v126, v25);
  v424 = v166;
  v1 = v420;
  v19 = v364;
  v133 = v420[6];
  if (v133)
  {
LABEL_6:
    v135 = v1[7];
    v134 = v1[8];
    v425 = *(v1 + 2);
    v426 = v133;
    v427 = v135;
    v428 = v134;
    v136 = sub_21D04A0EC();
    sub_21D04C8A0(v136);
  }

LABEL_7:
  v137 = v1[9];
  v138 = v1[10];
  v139 = *(v1 + 88);

  sub_21D04C298(v139, v22);

  v422 = *(v26 + 48);
  if (v422(v22, 1, v25) == 1)
  {
    sub_21D04D27C(v22, &qword_27CE53EC0, &qword_21D094F88);
  }

  else
  {
    v140 = *(v26 + 32);
    v141 = v383;
    v140(v383, v22, v25);
    (*(v26 + 16))(v384, v141, v25);
    v142 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = sub_21D0550DC(0, *(v142 + 2) + 1, 1, v142);
    }

    v144 = *(v142 + 2);
    v143 = *(v142 + 3);
    if (v144 >= v143 >> 1)
    {
      v142 = sub_21D0550DC(v143 > 1, v144 + 1, 1, v142);
    }

    (*(v26 + 8))(v383, v25);
    *(v142 + 2) = v144 + 1;
    v140(&v142[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v144], v384, v25);
    v424 = v142;
    v1 = v420;
  }

  v145 = v1[12];
  v146 = v1[13];
  v147 = *(v1 + 112);

  sub_21D04C48C(v147, v19);

  if (v422(v19, 1, v25) == 1)
  {
    sub_21D04D27C(v19, &qword_27CE53EC0, &qword_21D094F88);
    if (v1[18])
    {
      goto LABEL_16;
    }

LABEL_28:
    v151 = v387;
    v421(v387, 1, 1, v25);
    goto LABEL_29;
  }

  v158 = *(v26 + 32);
  v159 = v385;
  v158(v385, v19, v25);
  (*(v26 + 16))(v386, v159, v25);
  v160 = v424;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_21D0550DC(0, *(v160 + 2) + 1, 1, v160);
  }

  v162 = *(v160 + 2);
  v161 = *(v160 + 3);
  if (v162 >= v161 >> 1)
  {
    v160 = sub_21D0550DC(v161 > 1, v162 + 1, 1, v160);
  }

  (*(v26 + 8))(v385, v25);
  *(v160 + 2) = v162 + 1;
  v158(&v160[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v162], v386, v25);
  v424 = v160;
  if (!v1[18])
  {
    goto LABEL_28;
  }

LABEL_16:
  v149 = v1[16];
  v148 = v1[17];
  v150 = v1[15];

  v151 = v387;
  sub_21D092E10();
  v421(v151, 0, 1, v25);

  if (v422(v151, 1, v25) != 1)
  {
    v152 = *(v26 + 32);
    v153 = v367;
    v152(v367, v151, v25);
    (*(v26 + 16))(v368, v153, v25);
    v154 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v154 = sub_21D0550DC(0, *(v154 + 2) + 1, 1, v154);
    }

    v156 = *(v154 + 2);
    v155 = *(v154 + 3);
    if (v156 >= v155 >> 1)
    {
      v154 = sub_21D0550DC(v155 > 1, v156 + 1, 1, v154);
    }

    (*(v26 + 8))(v367, v25);
    *(v154 + 2) = v156 + 1;
    v152(&v154[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v156], v368, v25);
    v424 = v154;
    if (!v1[22])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_21D04D27C(v151, &qword_27CE53EC0, &qword_21D094F88);
  if (!v1[22])
  {
LABEL_22:
    v157 = v388;
    v421(v388, 1, 1, v25);
LABEL_31:
    sub_21D04D27C(v157, &qword_27CE53EC0, &qword_21D094F88);
    goto LABEL_41;
  }

LABEL_30:
  v164 = v1[20];
  v163 = v1[21];
  v165 = v1[19];

  v157 = v388;
  sub_21D092E10();
  v421(v157, 0, 1, v25);

  if (v422(v157, 1, v25) == 1)
  {
    goto LABEL_31;
  }

  v172 = *(v26 + 32);
  v173 = v369;
  v172(v369, v157, v25);
  (*(v26 + 16))(v370, v173, v25);
  v174 = v424;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v174 = sub_21D0550DC(0, *(v174 + 2) + 1, 1, v174);
  }

  v176 = *(v174 + 2);
  v175 = *(v174 + 3);
  if (v176 >= v175 >> 1)
  {
    v174 = sub_21D0550DC(v175 > 1, v176 + 1, 1, v174);
  }

  (*(v26 + 8))(v369, v25);
  *(v174 + 2) = v176 + 1;
  v172(&v174[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v176], v370, v25);
  v424 = v174;
LABEL_41:
  v178 = v1[23];
  v177 = v1[24];
  v179 = v1[25];

  sub_21D04CEE8(v180);
  if (v181)
  {
    v182 = v371;
    sub_21D092E10();

    v183 = *(v26 + 32);
    v184 = v400;
    v183(v400, v182, v25);
    (*(v26 + 16))(v401, v184, v25);
    v185 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v185 = sub_21D0550DC(0, *(v185 + 2) + 1, 1, v185);
    }

    v187 = *(v185 + 2);
    v186 = *(v185 + 3);
    if (v187 >= v186 >> 1)
    {
      v185 = sub_21D0550DC(v186 > 1, v187 + 1, 1, v185);
    }

    (*(v26 + 8))(v400, v25);
    *(v185 + 2) = v187 + 1;
    v183(&v185[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v187], v401, v25);
    v424 = v185;
  }

  else
  {
  }

  v188 = type metadata accessor for TapToRadarDraft();
  v189 = v1 + v188[11];
  v190 = v391;
  sub_21D04C5E4(v391);
  if (v422(v190, 1, v25) == 1)
  {
    sub_21D04D27C(v190, &qword_27CE53EC0, &qword_21D094F88);
  }

  else
  {
    v191 = *(v26 + 32);
    v192 = v389;
    v191(v389, v190, v25);
    (*(v26 + 16))(v390, v192, v25);
    v193 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v193 = sub_21D0550DC(0, *(v193 + 2) + 1, 1, v193);
    }

    v195 = *(v193 + 2);
    v194 = *(v193 + 3);
    if (v195 >= v194 >> 1)
    {
      v193 = sub_21D0550DC(v194 > 1, v195 + 1, 1, v193);
    }

    (*(v26 + 8))(v389, v25);
    *(v193 + 2) = v195 + 1;
    v191(&v193[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v195], v390, v25);
    v424 = v193;
    v1 = v420;
  }

  v196 = (v1 + v188[12]);
  v198 = *v196;
  v197 = v196[1];
  v199 = v196[2];

  sub_21D04CCD4(v200);
  if (v201)
  {
    v202 = v372;
    sub_21D092E10();

    v203 = *(v26 + 32);
    v204 = v402;
    v203(v402, v202, v25);
    (*(v26 + 16))(v403, v204, v25);
    v205 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_21D0550DC(0, *(v205 + 2) + 1, 1, v205);
    }

    v207 = *(v205 + 2);
    v206 = *(v205 + 3);
    if (v207 >= v206 >> 1)
    {
      v205 = sub_21D0550DC(v206 > 1, v207 + 1, 1, v205);
    }

    (*(v26 + 8))(v402, v25);
    *(v205 + 2) = v207 + 1;
    v203(&v205[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v207], v403, v25);
    v424 = v205;
    v1 = v420;
  }

  else
  {
  }

  v208 = (v1 + v188[13]);
  v210 = *v208;
  v209 = v208[1];
  v211 = v208[2];

  sub_21D04CCD4(v212);
  if (v213)
  {
    v214 = v373;
    sub_21D092E10();

    v215 = *(v26 + 32);
    v216 = v404;
    v215(v404, v214, v25);
    (*(v26 + 16))(v405, v216, v25);
    v217 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v217 = sub_21D0550DC(0, *(v217 + 2) + 1, 1, v217);
    }

    v219 = *(v217 + 2);
    v218 = *(v217 + 3);
    if (v219 >= v218 >> 1)
    {
      v217 = sub_21D0550DC(v218 > 1, v219 + 1, 1, v217);
    }

    (*(v26 + 8))(v404, v25);
    *(v217 + 2) = v219 + 1;
    v215(&v217[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v219], v405, v25);
    v424 = v217;
    v1 = v420;
  }

  else
  {
  }

  v220 = (v1 + v188[14]);
  v222 = *v220;
  v221 = v220[1];
  v223 = v220[2];

  sub_21D04CBA4(v224);
  if (v225)
  {
    v226 = v374;
    sub_21D092E10();

    v227 = *(v26 + 32);
    v228 = v406;
    v227(v406, v226, v25);
    (*(v26 + 16))(v419, v228, v25);
    v229 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v229 = sub_21D0550DC(0, *(v229 + 2) + 1, 1, v229);
    }

    v231 = *(v229 + 2);
    v230 = *(v229 + 3);
    if (v231 >= v230 >> 1)
    {
      v229 = sub_21D0550DC(v230 > 1, v231 + 1, 1, v229);
    }

    (*(v26 + 8))(v406, v25);
    *(v229 + 2) = v231 + 1;
    v227(&v229[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v231], v419, v25);
    v424 = v229;
    v1 = v420;
  }

  else
  {
  }

  v232 = (v1 + v188[15]);
  v233 = *v232;
  v234 = v232[1];
  *(v232 + 16);

  v235 = v394;
  sub_21D092E10();

  v419 = (v26 + 56);
  v421(v235, 0, 1, v25);

  if (v422(v235, 1, v25) == 1)
  {
    sub_21D04D27C(v235, &qword_27CE53EC0, &qword_21D094F88);
  }

  else
  {
    v236 = *(v26 + 32);
    v237 = v392;
    v236(v392, v235, v25);
    (*(v26 + 16))(v393, v237, v25);
    v238 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v238 = sub_21D0550DC(0, *(v238 + 2) + 1, 1, v238);
    }

    v240 = *(v238 + 2);
    v239 = *(v238 + 3);
    if (v240 >= v239 >> 1)
    {
      v238 = sub_21D0550DC(v239 > 1, v240 + 1, 1, v238);
    }

    v241 = v423 + 8;
    (*(v423 + 8))(v392, v25);
    *(v238 + 2) = v240 + 1;
    v236(&v238[((*(v241 + 72) + 32) & ~*(v241 + 72)) + *(v241 + 64) * v240], v393, v25);
    v424 = v238;
  }

  v242 = (v1 + v188[16]);
  v244 = *v242;
  v243 = v242[1];
  v245 = v242[2];

  sub_21D04CBA4(v246);
  if (v247)
  {
    v248 = v375;
    sub_21D092E10();

    v249 = v423;
    v250 = *(v423 + 32);
    v251 = v407;
    v250(v407, v248, v25);
    (*(v249 + 16))(v408, v251, v25);
    v252 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v252 = sub_21D0550DC(0, *(v252 + 2) + 1, 1, v252);
    }

    v254 = *(v252 + 2);
    v253 = *(v252 + 3);
    if (v254 >= v253 >> 1)
    {
      v252 = sub_21D0550DC(v253 > 1, v254 + 1, 1, v252);
    }

    v255 = v423 + 8;
    (*(v423 + 8))(v407, v25);
    *(v252 + 2) = v254 + 1;
    v250(&v252[((*(v255 + 72) + 32) & ~*(v255 + 72)) + *(v255 + 64) * v254], v408, v25);
    v424 = v252;
  }

  else
  {
  }

  v256 = (v1 + v188[17]);
  v258 = *v256;
  v257 = v256[1];
  v259 = v256[2];

  sub_21D04C9CC(v260);
  if (v261)
  {
    v262 = v376;
    sub_21D092E10();

    v263 = v423;
    v264 = *(v423 + 32);
    v265 = v409;
    v264(v409, v262, v25);
    (*(v263 + 16))(v410, v265, v25);
    v266 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v266 = sub_21D0550DC(0, *(v266 + 2) + 1, 1, v266);
    }

    v268 = *(v266 + 2);
    v267 = *(v266 + 3);
    if (v268 >= v267 >> 1)
    {
      v266 = sub_21D0550DC(v267 > 1, v268 + 1, 1, v266);
    }

    v269 = v423 + 8;
    (*(v423 + 8))(v409, v25);
    *(v266 + 2) = v268 + 1;
    v264(&v266[((*(v269 + 72) + 32) & ~*(v269 + 72)) + *(v269 + 64) * v268], v410, v25);
    v424 = v266;
  }

  else
  {
  }

  v270 = (v1 + v188[18]);
  v272 = *v270;
  v271 = v270[1];
  v273 = v270[2];

  sub_21D04CBA4(v274);
  if (v275)
  {
    v276 = v377;
    sub_21D092E10();

    v277 = v423;
    v278 = *(v423 + 32);
    v279 = v411;
    v278(v411, v276, v25);
    (*(v277 + 16))(v412, v279, v25);
    v280 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v280 = sub_21D0550DC(0, *(v280 + 2) + 1, 1, v280);
    }

    v282 = *(v280 + 2);
    v281 = *(v280 + 3);
    if (v282 >= v281 >> 1)
    {
      v280 = sub_21D0550DC(v281 > 1, v282 + 1, 1, v280);
    }

    v283 = v423 + 8;
    (*(v423 + 8))(v411, v25);
    *(v280 + 2) = v282 + 1;
    v278(&v280[((*(v283 + 72) + 32) & ~*(v283 + 72)) + *(v283 + 64) * v282], v412, v25);
    v424 = v280;
  }

  else
  {
  }

  v284 = (v1 + v188[19]);
  v286 = *v284;
  v285 = v284[1];
  v287 = v284[2];

  sub_21D04B614(v287);
  if (v288)
  {
    v289 = v378;
    sub_21D092E10();

    v290 = v423;
    v291 = *(v423 + 32);
    v292 = v413;
    v291(v413, v289, v25);
    (*(v290 + 16))(v414, v292, v25);
    v293 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v293 = sub_21D0550DC(0, *(v293 + 2) + 1, 1, v293);
    }

    v295 = *(v293 + 2);
    v294 = *(v293 + 3);
    if (v295 >= v294 >> 1)
    {
      v293 = sub_21D0550DC(v294 > 1, v295 + 1, 1, v293);
    }

    v296 = v423 + 8;
    (*(v423 + 8))(v413, v25);
    *(v293 + 2) = v295 + 1;
    v291(&v293[((*(v296 + 72) + 32) & ~*(v296 + 72)) + *(v296 + 64) * v295], v414, v25);
    v424 = v293;
  }

  else
  {
  }

  v297 = (v1 + v188[20]);
  v298 = *v297;
  v299 = v297[1];
  *(v297 + 16);

  v300 = v397;
  sub_21D092E10();

  v421(v300, 0, 1, v25);
  v301 = v300;

  if (v422(v300, 1, v25) == 1)
  {
    sub_21D04D27C(v300, &qword_27CE53EC0, &qword_21D094F88);
  }

  else
  {
    v302 = v423;
    v303 = *(v423 + 32);
    v304 = v395;
    v303(v395, v301, v25);
    (*(v302 + 16))(v396, v304, v25);
    v305 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v305 = sub_21D0550DC(0, *(v305 + 2) + 1, 1, v305);
    }

    v307 = *(v305 + 2);
    v306 = *(v305 + 3);
    if (v307 >= v306 >> 1)
    {
      v305 = sub_21D0550DC(v306 > 1, v307 + 1, 1, v305);
    }

    v308 = v423 + 8;
    (*(v423 + 8))(v395, v25);
    *(v305 + 2) = v307 + 1;
    v303(&v305[((*(v308 + 72) + 32) & ~*(v308 + 72)) + *(v308 + 64) * v307], v396, v25);
    v424 = v305;
  }

  v309 = (v1 + v188[21]);
  v311 = *v309;
  v310 = v309[1];
  v312 = *(v309 + 16);

  sub_21D04BD84(v312);
  if (v313)
  {
    v314 = v379;
    sub_21D092E10();

    v315 = v423;
    v316 = *(v423 + 32);
    v317 = v415;
    v316(v415, v314, v25);
    (*(v315 + 16))(v416, v317, v25);
    v318 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v318 = sub_21D0550DC(0, *(v318 + 2) + 1, 1, v318);
    }

    v320 = *(v318 + 2);
    v319 = *(v318 + 3);
    if (v320 >= v319 >> 1)
    {
      v318 = sub_21D0550DC(v319 > 1, v320 + 1, 1, v318);
    }

    v321 = v423 + 8;
    (*(v423 + 8))(v415, v25);
    *(v318 + 2) = v320 + 1;
    v316(&v318[((*(v321 + 72) + 32) & ~*(v321 + 72)) + *(v321 + 64) * v320], v416, v25);
    v424 = v318;
  }

  else
  {
  }

  v322 = (v1 + v188[22]);
  v324 = *v322;
  v323 = v322[1];
  v325 = v322[2];

  sub_21D04CBA4(v326);
  if (v327)
  {
    v328 = v380;
    sub_21D092E10();

    v329 = v423;
    v330 = *(v423 + 32);
    v331 = v417;
    v330(v417, v328, v25);
    (*(v329 + 16))(v418, v331, v25);
    v332 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v332 = sub_21D0550DC(0, *(v332 + 2) + 1, 1, v332);
    }

    v334 = *(v332 + 2);
    v333 = *(v332 + 3);
    if (v334 >= v333 >> 1)
    {
      v332 = sub_21D0550DC(v333 > 1, v334 + 1, 1, v332);
    }

    v335 = v423 + 8;
    (*(v423 + 8))(v417, v25);
    *(v332 + 2) = v334 + 1;
    v330(&v332[((*(v335 + 72) + 32) & ~*(v335 + 72)) + *(v335 + 64) * v334], v418, v25);
    v424 = v332;
  }

  else
  {
  }

  v336 = (v1 + v188[23]);
  if (!v336[3])
  {
    v341 = v398;
    v421(v398, 1, 1, v25);
    v343 = v423;
    goto LABEL_140;
  }

  v338 = v336[1];
  v337 = v336[2];
  v339 = *v336;
  v340 = v336[3];

  v341 = v398;
  sub_21D092E10();
  v421(v341, 0, 1, v25);

  v342 = v422(v341, 1, v25);
  v343 = v423;
  if (v342 == 1)
  {
LABEL_140:
    sub_21D04D27C(v341, &qword_27CE53EC0, &qword_21D094F88);
    goto LABEL_141;
  }

  v344 = *(v423 + 32);
  v345 = v381;
  v344(v381, v341, v25);
  (*(v343 + 16))(v382, v345, v25);
  v346 = v424;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v346 = sub_21D0550DC(0, *(v346 + 2) + 1, 1, v346);
  }

  v348 = *(v346 + 2);
  v347 = *(v346 + 3);
  if (v348 >= v347 >> 1)
  {
    v346 = sub_21D0550DC(v347 > 1, v348 + 1, 1, v346);
  }

  v343 = v423;
  v349 = v423 + 8;
  (*(v423 + 8))(v381, v25);
  *(v346 + 2) = v348 + 1;
  v344(&v346[((*(v349 + 72) + 32) & ~*(v349 + 72)) + *(v349 + 64) * v348], v382, v25);
  v424 = v346;
LABEL_141:
  v350 = (v420 + v188[24]);
  if (!v350[3])
  {
    v355 = v399;
    v421(v399, 1, 1, v25);
    goto LABEL_149;
  }

  v352 = v350[1];
  v351 = v350[2];
  v353 = *v350;
  v354 = v350[3];

  v355 = v399;
  sub_21D092E10();
  v421(v355, 0, 1, v25);

  if (v422(v355, 1, v25) == 1)
  {
LABEL_149:
    sub_21D04D27C(v355, &qword_27CE53EC0, &qword_21D094F88);
    return v424;
  }

  v356 = *(v343 + 32);
  v357 = v365;
  v356(v365, v355, v25);
  v358 = v366;
  (*(v343 + 16))(v366, v357, v25);
  v359 = v424;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v359 = sub_21D0550DC(0, *(v359 + 2) + 1, 1, v359);
  }

  v361 = *(v359 + 2);
  v360 = *(v359 + 3);
  if (v361 >= v360 >> 1)
  {
    v359 = sub_21D0550DC(v360 > 1, v361 + 1, 1, v359);
  }

  (*(v343 + 8))(v357, v25);
  *(v359 + 2) = v361 + 1;
  v356(&v359[((*(v343 + 80) + 32) & ~*(v343 + 80)) + *(v343 + 72) * v361], v358, v25);
  return v359;
}

uint64_t sub_21D049ED4()
{
  v1[2] = v0;
  v2 = sub_21D092F50();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D049F94, 0, 0);
}

uint64_t sub_21D049F94()
{
  v1 = v0[2];
  sub_21D047268(v0[5]);
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v0[5];
    v4 = v2;
    v5 = sub_21D092F30();
    sub_21D08FD64(MEMORY[0x277D84F90]);
    v6 = sub_21D0943B0();

    [v4 openSensitiveURL:v5 withOptions:v6];
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21D04A0EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EC8, &qword_21D094F90);
  v1 = *(sub_21D092E20() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D094E80;
  v10 = *v0;
  sub_21D094790();
  sub_21D092E10();

  v5 = v0[1];
  v6 = v0[2];
  sub_21D092E10();
  v7 = v0[3];
  v8 = v0[4];
  sub_21D092E10();
  return v4;
}

uint64_t sub_21D04A268()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_21D094850();
  MEMORY[0x223D3C930](v1);
  sub_21D094450();
  sub_21D094450();
  return sub_21D094870();
}

uint64_t sub_21D04A2E8()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x223D3C930](*v0);
  sub_21D094450();

  return sub_21D094450();
}

uint64_t sub_21D04A358()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_21D094850();
  MEMORY[0x223D3C930](v1);
  sub_21D094450();
  sub_21D094450();
  return sub_21D094870();
}

uint64_t sub_21D04A3D4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_21D0947D0() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_21D0947D0();
}

unint64_t sub_21D04A488(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21D04A5EC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21D04A488(*a1);
  v5 = v4;
  if (v3 == sub_21D04A488(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21D0947D0();
  }

  return v8 & 1;
}

uint64_t sub_21D04A674(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_21D0947D0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_21D04A878(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000021D096820;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000021D096840;
    }

    v5 = 0x800000021D0967E0;
    if (a1 != 3)
    {
      v5 = 0x800000021D096800;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_21D0947D0();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000021D096820;
    }

    else
    {
      v10 = 0x800000021D096840;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000021D0967E0;
    }

    else
    {
      v10 = 0x800000021D096800;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_21D04AA50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_21D0947D0();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_21D04AC48()
{
  v1 = *v0;
  sub_21D094850();
  sub_21D04A488(v1);
  sub_21D094450();

  return sub_21D094870();
}

uint64_t sub_21D04ACAC()
{
  sub_21D094850();
  sub_21D094450();

  return sub_21D094870();
}

uint64_t sub_21D04ADC0()
{
  sub_21D04A488(*v0);
  sub_21D094450();
}

uint64_t sub_21D04AE14()
{
  v1 = *v0;
  sub_21D094850();
  sub_21D04A488(v1);
  sub_21D094450();

  return sub_21D094870();
}

uint64_t sub_21D04AE74()
{
  sub_21D094850();
  sub_21D094450();

  return sub_21D094870();
}

uint64_t sub_21D04AF7C()
{
  sub_21D094850();
  sub_21D094450();

  return sub_21D094870();
}

uint64_t sub_21D04B08C()
{
  sub_21D094850();
  sub_21D094450();

  return sub_21D094870();
}

uint64_t sub_21D04B19C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21D04E950();
  *a2 = result;
  return result;
}

unint64_t sub_21D04B1CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21D04A488(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21D04B20C()
{
  *v0;
  *v0;
  *v0;
  sub_21D094450();
}

uint64_t sub_21D04B310@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21D04E99C();
  *a2 = result;
  return result;
}

void sub_21D04B340(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_21D04B424()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_21D094450();
}

uint64_t sub_21D04B520@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21D04E9E8();
  *a2 = result;
  return result;
}

void sub_21D04B550(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_21D04B614(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_21D054FD0(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_21D054FD0((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_21D054FD0((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_21D054FD0((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_21D054FD0((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_21D054FD0((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53ED0, &qword_21D094F98);
            sub_21D04D160();
            v1 = sub_21D0943C0();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_21D054FD0((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x800000021D096950;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_21D054FD0((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21D054FD0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_21D054FD0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_21D04BAE4()
{
  v1 = *v0;
  sub_21D094850();
  MEMORY[0x223D3C930](v1);
  return sub_21D094870();
}

uint64_t sub_21D04BB58()
{
  v1 = *v0;
  sub_21D094850();
  MEMORY[0x223D3C930](v1);
  return sub_21D094870();
}

BOOL sub_21D04BBE0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21D04BC10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21D04BC3C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_21D04BD14@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21D04BD44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21D04D040(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21D04BD84(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_21D0947D0();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21D04BF54()
{
  *v0;
  sub_21D094450();
}

uint64_t sub_21D04C058@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21D04EA34();
  *a2 = result;
  return result;
}

void sub_21D04C088(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000021D096820;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000021D096840;
    }

    v5 = 0x800000021D0967E0;
    if (v2 != 3)
    {
      v5 = 0x800000021D096800;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

uint64_t sub_21D04C16C()
{
  v1 = *v0;
  sub_21D094850();
  MEMORY[0x223D3C930](v1);
  return sub_21D094870();
}

uint64_t sub_21D04C1E0()
{
  v1 = *v0;
  sub_21D094850();
  MEMORY[0x223D3C930](v1);
  return sub_21D094870();
}

unint64_t sub_21D04C224()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t sub_21D04C298@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_21D092E10();

    v3 = 0;
  }

  v4 = sub_21D092E20();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_21D04C48C@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_21D092E10();

    v3 = 0;
  }

  v4 = sub_21D092E20();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_21D04C5E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EE0, &unk_21D094FA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v22 - v5;
  v7 = sub_21D092F90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE53EE8, &qword_21D095930);
  sub_21D04D20C(v2 + *(v12 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21D04D27C(v6, &qword_27CE53EE0, &unk_21D094FA0);
    v13 = 1;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v15 = sub_21D0943E0();
    [v14 setDateFormat_];

    [v14 setDoesRelativeDateFormatting_];
    v16 = sub_21D092F70();
    v17 = [v14 stringFromDate_];

    sub_21D0943F0();
    (*(v8 + 8))(v11, v7);
    v18 = *v2;
    v19 = v2[1];
    sub_21D092E10();

    v13 = 0;
  }

  v20 = sub_21D092E20();
  return (*(*(v20 - 8) + 56))(a1, v13, 1, v20);
}

uint64_t sub_21D04C8A0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_21D0550DC(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_21D092E20();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D04C9CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21D054FD0(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_21D054FD0((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53ED0, &qword_21D094F98);
  sub_21D04D160();
  v17 = sub_21D0943C0();

  return v17;
}

uint64_t sub_21D04CBA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21D054FD0(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_21D054FD0((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53ED0, &qword_21D094F98);
  sub_21D04D160();
  v9 = sub_21D0943C0();

  return v9;
}

uint64_t sub_21D04CCD4(uint64_t a1)
{
  v24 = sub_21D092F50();
  v2 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v3 + 16);
  v7 = v3 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v22 = *(v7 + 56);
  v23 = v8;
  v10 = (v7 - 8);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v24;
    v13 = v7;
    v23(v5, v9, v24);
    v14 = sub_21D092F40();
    v16 = v15;
    (*v10)(v5, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_21D054FD0(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_21D054FD0((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v9 += v22;
    --v6;
    v7 = v13;
  }

  while (v6);
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53ED0, &qword_21D094F98);
  sub_21D04D160();
  v20 = sub_21D0943C0();

  return v20;
}

uint64_t sub_21D04CEE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *v2++;
    v5 = sub_21D094790();
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21D054FD0(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_21D054FD0((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v7;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53ED0, &qword_21D094F98);
  sub_21D04D160();
  v11 = sub_21D0943C0();

  return v11;
}

uint64_t sub_21D04D040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_21D04D0C0()
{
  result = qword_27CE53EB8;
  if (!qword_27CE53EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53EB8);
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_27CE53F70;
  if (!qword_27CE53F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D04D160()
{
  result = qword_27CE53ED8;
  if (!qword_27CE53ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53ED0, &qword_21D094F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53ED8);
  }

  return result;
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

uint64_t sub_21D04D20C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EE0, &unk_21D094FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D04D27C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21D04D440(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21D04D4C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21D04D644(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_21D04D8D4()
{
  sub_21D04DCF8(319, &qword_27CE53F80, &qword_27CE53F88, &qword_21D094FF0, sub_21D04DC2C);
  if (v0 <= 0x3F)
  {
    sub_21D04DCA8();
    if (v1 <= 0x3F)
    {
      sub_21D04DCF8(319, &qword_27CE53FA0, &qword_27CE53FA8, &qword_21D094FF8, sub_21D04DD68);
      if (v2 <= 0x3F)
      {
        sub_21D04DCF8(319, &qword_27CE53FB8, &qword_27CE53FC0, &qword_21D095000, sub_21D04DDE4);
        if (v3 <= 0x3F)
        {
          sub_21D04DCF8(319, &qword_27CE53FD0, &qword_27CE53FD8, &qword_21D095008, sub_21D04DE60);
          if (v4 <= 0x3F)
          {
            sub_21D04DCF8(319, &qword_27CE53FE8, &qword_27CE53EE0, &unk_21D094FA0, sub_21D04DEDC);
            if (v5 <= 0x3F)
            {
              sub_21D04DCF8(319, &qword_27CE53FF8, &qword_27CE54000, &qword_21D095010, sub_21D04DF58);
              if (v6 <= 0x3F)
              {
                sub_21D04DCF8(319, &qword_27CE54010, &qword_27CE53ED0, &qword_21D094F98, sub_21D04DFD4);
                if (v7 <= 0x3F)
                {
                  sub_21D04E0CC(319, &qword_27CE54020);
                  if (v8 <= 0x3F)
                  {
                    sub_21D04DCF8(319, &qword_27CE54028, &qword_27CE54030, &qword_21D095018, sub_21D04E050);
                    if (v9 <= 0x3F)
                    {
                      sub_21D04E0CC(319, &qword_27CE54040);
                      if (v10 <= 0x3F)
                      {
                        sub_21D04E0CC(319, &qword_27CE54048);
                        if (v11 <= 0x3F)
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
      }
    }
  }
}

unint64_t sub_21D04DC2C()
{
  result = qword_27CE53F90;
  if (!qword_27CE53F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53F88, &qword_21D094FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53F90);
  }

  return result;
}

void sub_21D04DCA8()
{
  if (!qword_27CE53F98)
  {
    v0 = sub_21D094690();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE53F98);
    }
  }
}

void sub_21D04DCF8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21D04DD68()
{
  result = qword_27CE53FB0;
  if (!qword_27CE53FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53FA8, &qword_21D094FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53FB0);
  }

  return result;
}

unint64_t sub_21D04DDE4()
{
  result = qword_27CE53FC8;
  if (!qword_27CE53FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53FC0, &qword_21D095000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53FC8);
  }

  return result;
}

unint64_t sub_21D04DE60()
{
  result = qword_27CE53FE0;
  if (!qword_27CE53FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53FD8, &qword_21D095008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53FE0);
  }

  return result;
}

unint64_t sub_21D04DEDC()
{
  result = qword_27CE53FF0;
  if (!qword_27CE53FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53EE0, &unk_21D094FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE53FF0);
  }

  return result;
}

unint64_t sub_21D04DF58()
{
  result = qword_27CE54008;
  if (!qword_27CE54008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE54000, &qword_21D095010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54008);
  }

  return result;
}

unint64_t sub_21D04DFD4()
{
  result = qword_27CE54018;
  if (!qword_27CE54018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE53ED0, &qword_21D094F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54018);
  }

  return result;
}

unint64_t sub_21D04E050()
{
  result = qword_27CE54038;
  if (!qword_27CE54038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE54030, &qword_21D095018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54038);
  }

  return result;
}

void sub_21D04E0CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ErrorCodeDifferentiator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ErrorCodeDifferentiator(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

uint64_t sub_21D04E540(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21D04E588(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_21D04E5E4()
{
  result = qword_27CE54050;
  if (!qword_27CE54050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54050);
  }

  return result;
}

unint64_t sub_21D04E63C()
{
  result = qword_27CE54058;
  if (!qword_27CE54058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54058);
  }

  return result;
}

unint64_t sub_21D04E694()
{
  result = qword_27CE54060;
  if (!qword_27CE54060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54060);
  }

  return result;
}

unint64_t sub_21D04E6EC()
{
  result = qword_27CE54068;
  if (!qword_27CE54068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54068);
  }

  return result;
}

unint64_t sub_21D04E740()
{
  result = qword_27CE54070;
  if (!qword_27CE54070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54070);
  }

  return result;
}

unint64_t sub_21D04E798()
{
  result = qword_27CE54078;
  if (!qword_27CE54078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54078);
  }

  return result;
}

unint64_t sub_21D04E7F0()
{
  result = qword_27CE54080;
  if (!qword_27CE54080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54080);
  }

  return result;
}

unint64_t sub_21D04E848()
{
  result = qword_27CE54088;
  if (!qword_27CE54088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54088);
  }

  return result;
}

unint64_t sub_21D04E8A0()
{
  result = qword_27CE54090;
  if (!qword_27CE54090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54090);
  }

  return result;
}

unint64_t sub_21D04E8FC()
{
  result = qword_27CE54098;
  if (!qword_27CE54098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54098);
  }

  return result;
}

uint64_t sub_21D04E950()
{
  v0 = sub_21D094780();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21D04E99C()
{
  v0 = sub_21D094780();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21D04E9E8()
{
  v0 = sub_21D094780();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21D04EA34()
{
  v0 = sub_21D094780();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21D04EAD4(uint64_t a1)
{
  v2 = sub_21D04FFB4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21D04EB10(uint64_t a1)
{
  v2 = sub_21D04FFB4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21D04EB4C()
{
  v2 = *v0;
  v3 = v0[1];
  sub_21D050110();
  return sub_21D093540();
}

uint64_t sub_21D04EB9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDED0];
  v3 = sub_21D094080();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_21D04EC38(uint64_t a1)
{
  v2 = sub_21D0500BC();

  return MEMORY[0x2821401D0](a1, v2);
}

void sub_21D04EC74()
{
  sub_21D0500BC();

  JUMPOUT(0x223D3C1B0);
}

void sub_21D04ECB4()
{
  sub_21D0500BC();

  JUMPOUT(0x223D3C1E0);
}

uint64_t Constraints.toTMLConstraints(logger:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a1;
  v150 = a2;
  v128 = sub_21D0934F0();
  v127 = *(v128 - 8);
  v2 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v126 = (&v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = sub_21D093500();
  v133 = *(v134 - 8);
  v4 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v132 = (&v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_21D0934E0();
  v137 = *(v6 - 8);
  v138 = v6;
  v7 = *(v137 + 64);
  MEMORY[0x28223BE20](v6);
  v136 = (&v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = sub_21D093510();
  v130 = *(v131 - 8);
  v9 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v129 = (&v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_21D094420();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v135 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21D093E40();
  v145 = *(v14 - 8);
  v146 = v14;
  v15 = *(v145 + 64);
  MEMORY[0x28223BE20](v14);
  v143 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_21D094140();
  v142 = *(v144 - 8);
  v17 = *(v142 + 64);
  v18 = MEMORY[0x28223BE20](v144);
  v140 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v141 = &v125 - v20;
  v21 = sub_21D094120();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v139 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v125 - v26;
  v28 = sub_21D0934C0();
  v148 = *(v28 - 8);
  v149 = v28;
  v29 = *(v148 + 64);
  MEMORY[0x28223BE20](v28);
  v147 = (&v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_21D0937A0();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = (&v125 - v37);
  v39 = *(v32 + 16);
  v39(&v125 - v37, v153, v31);
  v40 = (*(v32 + 88))(v38, v31);
  if (v40 == *MEMORY[0x277D71B30])
  {
    (*(v32 + 96))(v38, v31);
    v41 = v22;
    (*(v22 + 32))(v27, v38, v21);
    v42 = sub_21D094210();
    v43 = sub_21D094580();
    v44 = os_log_type_enabled(v42, v43);
    v153 = v21;
    v45 = v41;
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_21D044000, v42, v43, "toTMLConstraints schema", v46, 2u);
      MEMORY[0x223D3CDF0](v46, -1, -1);
    }

    sub_21D04FDF0();
    v47 = sub_21D094640();
    v48 = v150;
    if (v47)
    {
      if (qword_281221778 != -1)
      {
        swift_once();
      }

      v49 = sub_21D094230();
      __swift_project_value_buffer(v49, qword_2812217C8);
      v50 = sub_21D094210();
      v51 = sub_21D094550();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_21D044000, v50, v51, "Converting schema into grammar", v52, 2u);
        MEMORY[0x223D3CDF0](v52, -1, -1);
      }

      (*(v41 + 16))(v139, v27, v153);
      v53 = v141;
      sub_21D094130();
      v152 = v27;
      v54 = v142;
      v55 = v144;
      (*(v142 + 16))(v140, v53, v144);
      v56 = v143;
      sub_21D093E30();
      sub_21D04FEC8(&qword_27CE540B0, MEMORY[0x277D71F00]);
      v57 = v146;
      v58 = sub_21D094790();
      v60 = v59;
      (*(v145 + 8))(v56, v57);
      (*(v54 + 8))(v53, v55);
      (*(v45 + 8))(v152, v153);
      v61 = v147;
      *v147 = v58;
      v61[1] = v60;
      v63 = v148;
      v62 = v149;
      (*(v148 + 104))(v61, *MEMORY[0x277D41520], v149);
      (*(v63 + 32))(v48, v61, v62);
LABEL_14:
      v72 = MEMORY[0x277D41528];
LABEL_15:
      v73 = *v72;
      v74 = sub_21D0934D0();
      v75 = *(v74 - 8);
      (*(v75 + 104))(v48, v73, v74);
      return (*(v75 + 56))(v48, 0, 1, v74);
    }

    v77 = sub_21D092E00();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    sub_21D092DF0();
    sub_21D04FEC8(&qword_281221780, MEMORY[0x277D0DC78]);
    v80 = v151;
    v81 = sub_21D092DE0();
    if (v80)
    {

      v83 = v80;
    }

    else
    {
      v103 = v81;
      v104 = v82;

      sub_21D094410();
      v105 = sub_21D094400();
      if (v106)
      {
        v107 = v105;
        v108 = v106;
        (*(v45 + 8))(v27, v153);
        sub_21D04FE3C(v103, v104);
        v109 = v129;
        *v129 = v107;
        v109[1] = v108;
        v110 = v130;
        v111 = v131;
        (*(v130 + 104))(v109, *MEMORY[0x277D41568], v131);
        (*(v110 + 32))(v48, v109, v111);
        v72 = MEMORY[0x277D41548];
        goto LABEL_15;
      }

      sub_21D04FD50();
      v83 = swift_allocError();
      *v120 = 0xD00000000000002BLL;
      v120[1] = 0x800000021D096A70;
      swift_willThrow();
      sub_21D04FE3C(v103, v104);
    }

    v154 = 0;
    v155 = 0xE000000000000000;
    sub_21D0946E0();
    MEMORY[0x223D3C530](0xD00000000000002ELL, 0x800000021D096A40);
    v156 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
    sub_21D094740();
    v84 = v154;
    v85 = v155;
    sub_21D04FD50();
    swift_allocError();
    *v86 = v84;
    v86[1] = v85;
    swift_willThrow();

    return (*(v45 + 8))(v27, v153);
  }

  else
  {
    if (v40 == *MEMORY[0x277D71B38])
    {
      (*(v32 + 96))(v38, v31);
      v64 = *v38;
      v65 = v38[1];
      v66 = sub_21D094210();
      v67 = sub_21D094580();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_21D044000, v66, v67, "toTMLConstraints grammar", v68, 2u);
        MEMORY[0x223D3CDF0](v68, -1, -1);
      }

      v70 = v147;
      v69 = v148;
      *v147 = v64;
      v70[1] = v65;
      v71 = v149;
      (*(v69 + 104))(v70, *MEMORY[0x277D41520], v149);
      v48 = v150;
      (*(v69 + 32))(v150, v70, v71);
      goto LABEL_14;
    }

    if (v40 == *MEMORY[0x277D71B18])
    {
      (*(v32 + 96))(v38, v31);
      v87 = *v38;
      v88 = v38[1];
      v89 = sub_21D094210();
      v90 = sub_21D094580();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_21D044000, v89, v90, "toTMLConstraints partialGrammar", v91, 2u);
        MEMORY[0x223D3CDF0](v91, -1, -1);
      }

      v93 = v136;
      v92 = v137;
      *v136 = v87;
      v93[1] = v88;
      v94 = v138;
      (*(v92 + 104))(v93, *MEMORY[0x277D41550], v138);
      v48 = v150;
      (*(v92 + 32))(v150, v93, v94);
      v72 = MEMORY[0x277D41530];
      goto LABEL_15;
    }

    if (v40 == *MEMORY[0x277D71B28])
    {
      (*(v32 + 96))(v38, v31);
      v95 = *v38;
      v96 = v38[1];
      v97 = sub_21D094210();
      v98 = sub_21D094580();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_21D044000, v97, v98, "toTMLConstraints grammarIdentifier", v99, 2u);
        MEMORY[0x223D3CDF0](v99, -1, -1);
      }

      v100 = v132;
      *v132 = v95;
      v100[1] = v96;
      v101 = v133;
      v102 = v134;
      (*(v133 + 104))(v100, *MEMORY[0x277D41560], v134);
      v48 = v150;
      (*(v101 + 32))(v150, v100, v102);
      v72 = MEMORY[0x277D41540];
      goto LABEL_15;
    }

    if (v40 == *MEMORY[0x277D71B20])
    {
      (*(v32 + 96))(v38, v31);
      v112 = *v38;
      v113 = v38[1];
      v114 = sub_21D094210();
      v115 = sub_21D094580();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_21D044000, v114, v115, "toTMLConstraints schemaIdentifier", v116, 2u);
        MEMORY[0x223D3CDF0](v116, -1, -1);
      }

      v117 = v126;
      *v126 = v112;
      v117[1] = v113;
      v118 = v127;
      v119 = v128;
      (*(v127 + 104))(v117, *MEMORY[0x277D41558], v128);
      v48 = v150;
      (*(v118 + 32))(v150, v117, v119);
      v72 = MEMORY[0x277D41538];
      goto LABEL_15;
    }

    v154 = 0;
    v155 = 0xE000000000000000;
    sub_21D0946E0();

    v154 = 0xD00000000000002FLL;
    v155 = 0x800000021D096A10;
    v39(v36, v153, v31);
    v121 = sub_21D094430();
    MEMORY[0x223D3C530](v121);

    MEMORY[0x223D3C530](46, 0xE100000000000000);
    v122 = v154;
    v123 = v155;
    sub_21D04FD50();
    swift_allocError();
    *v124 = v122;
    v124[1] = v123;
    swift_willThrow();
    return (*(v32 + 8))(v38, v31);
  }
}

unint64_t sub_21D04FD50()
{
  result = qword_27CE540A0;
  if (!qword_27CE540A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE540A0);
  }

  return result;
}

uint64_t sub_21D04FDA4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_21D04FDF0()
{
  result = qword_281221468;
  if (!qword_281221468)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281221468);
  }

  return result;
}

uint64_t sub_21D04FE3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21D04FEC8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21D04FF1C(uint64_t a1, int a2)
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

uint64_t sub_21D04FF64(uint64_t result, int a2, int a3)
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

unint64_t sub_21D04FFB4()
{
  result = qword_27CE540B8;
  if (!qword_27CE540B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE540B8);
  }

  return result;
}

unint64_t sub_21D05000C()
{
  result = qword_27CE540C0;
  if (!qword_27CE540C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE540C0);
  }

  return result;
}

unint64_t sub_21D050064()
{
  result = qword_27CE540C8;
  if (!qword_27CE540C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE540C8);
  }

  return result;
}

unint64_t sub_21D0500BC()
{
  result = qword_27CE540D0;
  if (!qword_27CE540D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE540D0);
  }

  return result;
}

unint64_t sub_21D050110()
{
  result = qword_27CE540D8;
  if (!qword_27CE540D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE540D8);
  }

  return result;
}

void sub_21D050168(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v69 = a5;
  v11 = type metadata accessor for PrivateMLClientAlertService();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  if (qword_281221488 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_281221490 == 1)
  {
    v68 = a1;

    v14 = sub_21D094210();
    v15 = sub_21D094560();

    v66 = v12;
    v67 = a2;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v70 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_21D05550C(v68, a2, &v70);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_21D05550C(a3, a4, &v70);
      _os_log_impl(&dword_21D044000, v14, v15, "displayPrivateMLClientFailedDialogIfInternal: %s RequestID:%s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v17, -1, -1);
      MEMORY[0x223D3CDF0](v16, -1, -1);
    }

    v18 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v19 = sub_21D0943E0();
    v20 = [v18 initWithSuiteName_];

    if (v20)
    {
      v21 = sub_21D0943E0();
      v22 = sub_21D0943E0();
      [v20 setObject:v21 forKey:v22];

      sub_21D04FDF0();
      if (sub_21D0945B0())
      {
        v23 = sub_21D094210();
        v24 = sub_21D094550();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_21D044000, v23, v24, "Ignore tap to radar per user default settings", v25, 2u);
          MEMORY[0x223D3CDF0](v25, -1, -1);
        }
      }

      else
      {
        v65 = v20;
        v29 = type metadata accessor for PrivateMLClientAlert();
        v30 = *(v29 + 48);
        v31 = *(v29 + 52);
        v64 = a3;
        v32 = swift_allocObject();
        sub_21D094220();
        *(v32 + 16) = 0xD00000000000001DLL;
        *(v32 + 24) = 0x800000021D096AF0;
        *(v32 + 32) = 0xD00000000000002DLL;
        *(v32 + 40) = 0x800000021D096B10;
        strcpy((v32 + 48), "File a Radar");
        *(v32 + 61) = 0;
        *(v32 + 62) = -5120;
        *(v32 + 64) = 0x7373696D736944;
        *(v32 + 72) = 0xE700000000000000;
        v63 = type metadata accessor for PrivateMLClientAlertService;
        sub_21D052140(v6, &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrivateMLClientAlertService);
        v33 = (*(v66 + 80) + 16) & ~*(v66 + 80);
        v66 = v6;
        v34 = (v33 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
        v35 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
        v37 = swift_allocObject();
        sub_21D0518D0(v35, v37 + v33);
        v38 = (v37 + v34);
        v39 = v66;
        v40 = v67;
        *v38 = v68;
        v38[1] = v40;
        v41 = (v37 + v36);
        v42 = v63;
        *v41 = v64;
        v41[1] = a4;
        *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = v69;
        sub_21D052140(v39, v35, v42);
        v43 = swift_allocObject();
        sub_21D0518D0(v35, v43 + v33);

        v44 = sub_21D094210();
        v45 = sub_21D094560();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = v37;
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_21D044000, v44, v45, "Display Alert Box started", v47, 2u);
          v48 = v47;
          v37 = v46;
          MEMORY[0x223D3CDF0](v48, -1, -1);
        }

        sub_21D058308(sub_21D051934, v37, sub_21D0519F0);

        v49 = sub_21D094210();
        v50 = sub_21D094560();
        v51 = os_log_type_enabled(v49, v50);
        v52 = v65;
        if (v51)
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_21D044000, v49, v50, "Display Alert Box finished", v53, 2u);
          MEMORY[0x223D3CDF0](v53, -1, -1);

          swift_setDeallocating();
          v54 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20PrivateMLClientAlert_logger;
          v55 = sub_21D094230();
          (*(*(v55 - 8) + 8))(v32 + v54, v55);
          v56 = *(*v32 + 48);
          v57 = *(*v32 + 52);
          swift_deallocClassInstance();
        }

        else
        {

          swift_setDeallocating();
          v58 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20PrivateMLClientAlert_logger;
          v59 = sub_21D094230();
          (*(*(v59 - 8) + 8))(v32 + v58, v59);
          v60 = *(*v32 + 48);
          v61 = *(*v32 + 52);
          swift_deallocClassInstance();
        }
      }
    }

    else
    {
      v26 = sub_21D094210();
      v27 = sub_21D094570();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_21D044000, v26, v27, "Failed to write requestID to userdefaults", v28, 2u);
        MEMORY[0x223D3CDF0](v28, -1, -1);
      }
    }
  }
}

uint64_t type metadata accessor for PrivateMLClientAlertService()
{
  result = qword_281221518;
  if (!qword_281221518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D050998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v67 = a7;
  v64 = a4;
  v65 = a5;
  v63 = a3;
  v72 = a2;
  v7 = type metadata accessor for PrivateMLClientAlertService();
  v8 = v7 - 8;
  v69 = *(v7 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v7);
  v70 = v10;
  v71 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540E0, &unk_21D095920);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EE0, &unk_21D094FA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v61 - v16;
  v18 = type metadata accessor for TapToRadarDraft();
  v73 = swift_allocBox();
  v20 = v19;
  *v19 = 0x4449656C646E7542;
  *(v19 + 8) = 0xE800000000000000;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  strcpy((v19 + 72), "Classification");
  *(v19 + 87) = -18;
  *(v19 + 88) = 10;
  *(v19 + 96) = 0x6375646F72706552;
  *(v19 + 104) = 0xEF7974696C696269;
  *(v19 + 112) = 6;
  *(v19 + 120) = 0x656C746954;
  *(v19 + 128) = 0xE500000000000000;
  *(v19 + 136) = 0;
  *(v19 + 144) = 0;
  *(v19 + 152) = 0x7470697263736544;
  *(v19 + 160) = 0xEB000000006E6F69;
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;
  *(v19 + 184) = 0x7364726F7779654BLL;
  *(v19 + 192) = 0xE800000000000000;
  v21 = MEMORY[0x277D84F90];
  *(v19 + 200) = MEMORY[0x277D84F90];
  v22 = (v19 + v18[11]);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE53EE8, &qword_21D095930) + 36);
  v62 = v23;
  v24 = sub_21D092F90();
  v25 = *(v24 - 8);
  v61[0] = *(v25 + 56);
  v61[1] = v25 + 56;
  (v61[0])(v22 + v23, 1, 1, v24);
  *v22 = 0x7349664F656D6954;
  v22[1] = 0xEB00000000657573;
  v26 = (v20 + v18[12]);
  *v26 = 0x656D686361747441;
  v26[1] = 0xEB0000000073746ELL;
  v26[2] = v21;
  v27 = (v20 + v18[13]);
  *v27 = 0xD000000000000011;
  v27[1] = 0x800000021D096B40;
  v27[2] = v21;
  v28 = (v20 + v18[14]);
  *v28 = 0xD000000000000014;
  v28[1] = 0x800000021D096B60;
  v28[2] = v21;
  v29 = (v20 + v18[15]);
  strcpy(v29, "DeleteOnAttach");
  v29[15] = -18;
  v29[16] = 0;
  v30 = (v20 + v18[16]);
  *v30 = 0x4449656369766544;
  v30[1] = 0xE900000000000073;
  v30[2] = v21;
  v31 = v20 + v18[17];
  strcpy(v31, "DeviceClasses");
  *(v31 + 14) = -4864;
  *(v31 + 16) = v21;
  v32 = v20 + v18[18];
  strcpy(v32, "DeviceModels");
  *(v32 + 13) = 0;
  *(v32 + 14) = -5120;
  *(v32 + 16) = v21;
  v33 = (v20 + v18[19]);
  *v33 = 0xD000000000000016;
  v33[1] = 0x800000021D096B80;
  v33[2] = 0;
  v34 = v20 + v18[20];
  *v34 = 0xD00000000000001ALL;
  *(v34 + 8) = 0x800000021D096BA0;
  *(v34 + 16) = 0;
  v35 = v20 + v18[21];
  *v35 = 0x676169446F747541;
  *(v35 + 8) = 0xEF73636974736F6ELL;
  *(v35 + 16) = 0;
  v36 = (v20 + v18[22]);
  *v36 = 0xD00000000000001BLL;
  v36[1] = 0x800000021D096BC0;
  v36[2] = v21;
  v37 = (v20 + v18[23]);
  *v37 = 0xD000000000000018;
  v37[1] = 0x800000021D096BE0;
  v37[2] = 0;
  v37[3] = 0;
  v38 = (v20 + v18[24]);
  *v38 = 0xD000000000000012;
  v38[1] = 0x800000021D096C00;
  v38[2] = 0;
  v38[3] = 0;
  *(v20 + 32) = *(v72 + *(v8 + 28));
  *(v20 + 40) = xmmword_21D095900;
  *(v20 + 56) = xmmword_21D095910;
  *(v20 + 88) = 6;
  *(v20 + 112) = 5;
  v40 = v63;
  v39 = v64;
  *(v20 + 136) = v63;
  *(v20 + 144) = v39;
  v74 = 0;
  v75 = 0xE000000000000000;

  sub_21D0946E0();
  MEMORY[0x223D3C530](0xD000000000000084, 0x800000021D096C20);
  MEMORY[0x223D3C530](v65, v66);
  MEMORY[0x223D3C530](0xD000000000000020, 0x800000021D096CB0);
  MEMORY[0x223D3C530](v40, v39);
  MEMORY[0x223D3C530](10, 0xE100000000000000);
  v41 = v75;
  v42 = *(v20 + 176);
  *(v20 + 168) = v74;
  *(v20 + 176) = v41;

  sub_21D092F80();
  (v61[0])(v17, 0, 1, v24);
  sub_21D051C50(v17, v22 + v62);
  v43 = v28[2];
  if (*(v67 + 16))
  {
    v28[2] = v67;
  }

  else
  {
    v28[2] = &unk_282E96880;
  }

  v44 = v72;
  v45 = sub_21D094210();
  v46 = sub_21D094560();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v76 = v48;
    *v47 = 136315138;
    swift_beginAccess();
    v49 = *(v20 + v18[14] + 16);

    v51 = MEMORY[0x223D3C570](v50, MEMORY[0x277D837D0]);
    v53 = v52;

    v54 = sub_21D05550C(v51, v53, &v76);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_21D044000, v45, v46, "Using DiagnosticExtension: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x223D3CDF0](v48, -1, -1);
    MEMORY[0x223D3CDF0](v47, -1, -1);
  }

  v55 = sub_21D0944D0();
  v56 = v68;
  (*(*(v55 - 8) + 56))(v68, 1, 1, v55);
  v57 = v71;
  sub_21D052140(v44, v71, type metadata accessor for PrivateMLClientAlertService);
  v58 = (*(v69 + 80) + 40) & ~*(v69 + 80);
  v59 = swift_allocObject();
  v59[2] = 0;
  v59[3] = 0;
  v59[4] = v73;
  sub_21D0518D0(v57, v59 + v58);

  sub_21D05156C(0, 0, v56, &unk_21D095940, v59);
}

uint64_t sub_21D0511C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a5;
  v6 = *(*(type metadata accessor for TapToRadarDraft() - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_21D051260, 0, 0);
}

uint64_t sub_21D051260()
{
  v1 = v0[6];
  v2 = v0[7];
  swift_beginAccess();
  sub_21D052140(v2, v1, type metadata accessor for TapToRadarDraft);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_21D051328;
  v4 = v0[6];

  return sub_21D049ED4();
}

uint64_t sub_21D051328()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[9] = v0;

  sub_21D0521A8(v3);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21D05148C, 0, 0);
  }

  else
  {
    v5 = v4[6];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_21D05148C()
{
  v1 = *(v0 + 40);
  v2 = sub_21D094210();
  v3 = sub_21D094560();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D044000, v2, v3, "PrivateMLClient failure -- failed to open Tap To Radar3", v4, 2u);
    MEMORY[0x223D3CDF0](v4, -1, -1);
  }

  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21D05156C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540E0, &unk_21D095920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21D051EF8(a3, v27 - v11);
  v13 = sub_21D0944D0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21D051F68(v12);
  }

  else
  {
    sub_21D0944C0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21D0944B0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21D094440() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_21D051F68(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21D051F68(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_21D05182C()
{
  oslog = sub_21D094210();
  v0 = sub_21D094560();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_21D044000, oslog, v0, "Dismiss user notification for Tap-To-Radar", v1, 2u);
    MEMORY[0x223D3CDF0](v1, -1, -1);
  }
}

uint64_t sub_21D0518D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClientAlertService();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D051934(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLClientAlertService() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D050998(a1, v1 + v4, v8, v9, v10, v11, v12);
}

void sub_21D0519F0()
{
  v0 = *(*(type metadata accessor for PrivateMLClientAlertService() - 8) + 80);

  sub_21D05182C();
}

uint64_t sub_21D051A60(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D051B58;

  return v7(a1);
}

uint64_t sub_21D051B58()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21D051C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE53EE0, &unk_21D094FA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D051CC0(uint64_t a1)
{
  v4 = *(type metadata accessor for PrivateMLClientAlertService() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21D051DB8;

  return sub_21D0511C0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21D051DB8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_21D051EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540E0, &unk_21D095920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D051F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540E0, &unk_21D095920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D051FD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21D0522A0;

  return sub_21D051A60(a1, v5);
}

uint64_t sub_21D052088(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21D051DB8;

  return sub_21D051A60(a1, v5);
}

uint64_t sub_21D052140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D0521A8(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D05222C()
{
  result = sub_21D094230();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21D0522A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541F8, &qword_21D095B48);
  v0 = sub_21D093130();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0959B0;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x277D41458], v0);
  qword_27CE540E8 = v4;
  return result;
}

uint64_t sub_21D052388()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541F0, &qword_21D095B40);
  v0 = sub_21D093150();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D094E80;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D41468], v0);
  v6(v5 + v2, *MEMORY[0x277D41478], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x277D41470], v0);
  qword_27CE540F0 = v4;
  return result;
}

uint64_t sub_21D0524C8()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_metadata;
  v3 = sub_21D093230();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21D05256C(char *a1)
{
  if (*(v1 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming) == 1)
  {
    type metadata accessor for MediaProcessor.InternalError(0);
    sub_21D054028();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    result = sub_21D0525F4(a1);
    if (!v2)
    {
    }
  }

  return result;
}

uint64_t sub_21D0525F4(char *a1)
{
  v216 = a1;
  v200 = sub_21D0937B0();
  v198 = *(v200 - 8);
  v1 = *(v198 + 64);
  MEMORY[0x28223BE20](v200);
  v199 = &v193 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_21D093B20();
  v201 = *(v196 - 8);
  v3 = *(v201 + 64);
  MEMORY[0x28223BE20](v196);
  v210 = &v193 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_21D093750();
  v208 = *(v209 - 1);
  v5 = *(v208 + 64);
  v6 = MEMORY[0x28223BE20](v209);
  v207 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v197 = &v193 - v8;
  v206 = sub_21D093730();
  v205 = *(v206 - 1);
  v9 = *(v205 + 64);
  v10 = MEMORY[0x28223BE20](v206);
  v204 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v195 = &v193 - v12;
  v202 = type metadata accessor for MediaProcessor.TokenGenerationPromptCompletionEventCandidate(0);
  v13 = *(*(v202 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v202);
  v203 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v211 = &v193 - v16;
  v223 = sub_21D093150();
  v225 = *(v223 - 8);
  v17 = *(v225 + 64);
  v18 = MEMORY[0x28223BE20](v223);
  v222 = (&v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v221 = &v193 - v20;
  v215 = sub_21D093220();
  v214 = *(v215 - 8);
  v21 = *(v214 + 64);
  MEMORY[0x28223BE20](v215);
  v227 = &v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_21D093130();
  v23 = *(v220 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v220);
  v219 = &v193 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v218 = &v193 - v27;
  v28 = sub_21D093200();
  v213 = *(v28 - 8);
  v29 = *(v213 + 64);
  MEMORY[0x28223BE20](v28);
  v226 = &v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21D093230();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v224 = &v193 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v212 = &v193 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v193 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v193 - v41;
  v43 = sub_21D0933E0();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v193 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))(v47, v216, v43);
  v48 = (*(v44 + 88))(v47, v43);
  if (v48 != *MEMORY[0x277D414D8])
  {
    if (v48 == *MEMORY[0x277D414D0])
    {
      (*(v44 + 96))(v47, v43);
      v50 = *v47;
      v64 = *(v47 + 1);
      v65 = *(v47 + 2);
      v58 = *(v47 + 3);
      v66 = *(v47 + 8);
      v49 = v47[36];
      v67 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata;
      v68 = v217;
      swift_beginAccess();
      v53 = *&v68[v67];
      if (*(v53 + 16))
      {

        v69 = sub_21D055BA8(v50, v64);
        if (v70)
        {
          v227 = v50;
          v71 = *(*(v53 + 56) + 8 * v69);

          v60 = OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_chunkIndex;
          v72 = *(v71 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_chunkIndex);
          v73 = __OFADD__(v72, 1);
          v74 = v72 + 1;
          if (v73)
          {
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          *(v71 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_chunkIndex) = v74;
          v225 = v71;
          v226 = v65;
          v223 = v58;
          if (v49)
          {
            LODWORD(v222) = v66;

            v75 = v217;

            v76 = sub_21D094210();
            v77 = sub_21D094550();

            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              *&v228 = v79;
              *v78 = 136380931;
              *(v78 + 4) = sub_21D05550C(v227, v64, &v228);
              *(v78 + 12) = 1026;
              *(v78 + 14) = v75[OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming];

              _os_log_impl(&dword_21D044000, v76, v77, "Received last media chunk, returning media. media_id=%{private}s isStreaming=%{BOOL,public}d", v78, 0x12u);
              __swift_destroy_boxed_opaque_existential_0(v79);
              v80 = v79;
              v65 = v226;
              MEMORY[0x223D3CDF0](v80, -1, -1);
              v81 = v78;
              v71 = v225;
              MEMORY[0x223D3CDF0](v81, -1, -1);
            }

            else
            {
            }

            *(v71 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_complete) = 1;
            v58 = v223;
            v66 = v222;
          }

          v50 = v217;

          sub_21D055C20(v65, v58);
          v129 = sub_21D094210();
          v130 = sub_21D094560();

          v131 = os_log_type_enabled(v129, v130);
          v224 = v64;
          if (!v131)
          {

            sub_21D04FE3C(v65, v58);

            v136 = &qword_27CE54000;
            goto LABEL_48;
          }

          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          *&v228 = v133;
          *v132 = 134284291;
          v134 = v58 >> 62;
          if ((v58 >> 62) > 1)
          {
            if (v134 != 2)
            {
              v135 = 0;
              goto LABEL_47;
            }

            v138 = *(v226 + 16);
            v137 = *(v226 + 24);
            v73 = __OFSUB__(v137, v138);
            v135 = v137 - v138;
            if (!v73)
            {
              goto LABEL_47;
            }

            __break(1u);
          }

          else if (!v134)
          {
            v135 = BYTE6(v58);
LABEL_47:
            *(v132 + 4) = v135;
            v65 = v226;
            sub_21D04FE3C(v226, v58);
            *(v132 + 12) = 1026;
            *(v132 + 14) = v66;
            *(v132 + 18) = 2081;
            *(v132 + 20) = sub_21D05550C(v227, v224, &v228);
            *(v132 + 28) = 1026;
            v136 = &qword_27CE54000;
            v50 = v217;
            *(v132 + 30) = v217[OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming];

            _os_log_impl(&dword_21D044000, v129, v130, "Received media chunk. bytes=%{private}ld index=%{public}d media_id=%{private}s isStreaming=%{BOOL,public}d", v132, 0x22u);
            __swift_destroy_boxed_opaque_existential_0(v133);
            MEMORY[0x223D3CDF0](v133, -1, -1);
            MEMORY[0x223D3CDF0](v132, -1, -1);

            v71 = v225;
LABEL_48:
            if (v50[v136[31]] == 1)
            {
              v139 = v211;
              sub_21D054A00(v71, v65, v58);
              v140 = v139;
              v141 = v203;
              sub_21D057BFC(v140, v203);
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                v172 = v205;
                v173 = v195;
                v174 = v141;
                v175 = v206;
                (*(v205 + 32))(v195, v174, v206);
                v176 = *(v172 + 16);
                (v176)(v204, v173, v175);
                v49 = sub_21D055104(0, 1, 1, MEMORY[0x277D84F90]);
                v58 = *(v49 + 16);
                v177 = *(v49 + 24);
                v221 = (v58 + 1);
                v222 = v176;
                if (v58 >= v177 >> 1)
                {
                  v49 = sub_21D055104((v177 > 1), v58 + 1, 1, v49);
                }

                v146 = *(v205 + 8);
                v178 = v173;
                v148 = v206;
                v146(v178, v206);
                v229 = v148;
                v230 = MEMORY[0x277D719D0];
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v228);
                v150 = &v233;
                goto LABEL_58;
              }

              v142 = v208;
              v53 = v197;
              v143 = v141;
              v144 = v209;
              (*(v208 + 32))(v197, v143, v209);
              v145 = *(v142 + 16);
              (v145)(v207, v53, v144);
              v49 = sub_21D055104(0, 1, 1, MEMORY[0x277D84F90]);
              v58 = *(v49 + 16);
              v60 = *(v49 + 24);
              v57 = v58 + 1;
              v221 = (v58 + 1);
              v222 = v145;
              if (v58 < v60 >> 1)
              {
LABEL_51:
                v146 = *(v208 + 8);
                v147 = v53;
                v148 = v209;
                v146(v147, v209);
                v229 = v148;
                v230 = MEMORY[0x277D719D8];
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v228);
                v150 = &v234;
LABEL_58:
                v179 = *(v150 - 32);
                (v222)(boxed_opaque_existential_1, v179, v148);
                *(v49 + 16) = v221;
                sub_21D046D78(&v228, v49 + 40 * v58 + 32);
                v146(v179, v148);
                v180 = v226;
                v181 = v223;
                v182 = v224;
                if (*(v225 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_complete) == 1)
                {
                  v183 = *&v50[OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID];
                  v184 = *&v50[OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID + 8];
                  (*(v198 + 104))(v199, *MEMORY[0x277D71B50], v200);

                  sub_21D093B10();
                  v186 = *(v49 + 16);
                  v185 = *(v49 + 24);
                  if (v186 >= v185 >> 1)
                  {
                    v49 = sub_21D055104((v185 > 1), v186 + 1, 1, v49);
                  }

                  v187 = v196;
                  v229 = v196;
                  v230 = MEMORY[0x277D71D68];
                  v188 = __swift_allocate_boxed_opaque_existential_1(&v228);
                  v189 = v201;
                  v190 = v210;
                  (*(v201 + 16))(v188, v210, v187);
                  *(v49 + 16) = v186 + 1;
                  sub_21D046D78(&v228, v49 + 40 * v186 + 32);
                  (*(v189 + 8))(v190, v187);
                  sub_21D054868(v227, v182);

                  sub_21D04FE3C(v226, v223);
                  sub_21D057CC4(v211);
                }

                else
                {
                  sub_21D057CC4(v211);

                  sub_21D04FE3C(v180, v181);
                }

                return v49;
              }

LABEL_69:
              v49 = sub_21D055104((v60 > 1), v57, 1, v49);
              goto LABEL_51;
            }

            v151 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_chunks;
            swift_beginAccess();
            v152 = *&v50[v151];
            if (*(v152 + 16))
            {
              v153 = *&v50[v151];

              v154 = v224;
              v155 = sub_21D055BA8(v227, v224);
              if (v156)
              {
                v157 = *(v152 + 56) + 16 * v155;
                v158 = *(v157 + 8);
                v222 = *v157;
                v159 = v222;
                v160 = v158;
                sub_21D055C20(v222, v158);

                v231 = v159;
                v232 = v160;
                v161 = v160;
                v229 = MEMORY[0x277CC9318];
                v230 = MEMORY[0x277CC9300];
                *&v228 = v65;
                *(&v228 + 1) = v58;
                v162 = __swift_project_boxed_opaque_existential_1(&v228, MEMORY[0x277CC9318]);
                v163 = *v162;
                v164 = v162[1];
                sub_21D055C20(v226, v58);
                v165 = v222;
                sub_21D055C20(v222, v161);
                sub_21D057AC4(v163, v164);
                __swift_destroy_boxed_opaque_existential_0(&v228);
                v166 = v231;
                v167 = v232;
                swift_beginAccess();
                sub_21D055C20(v166, v167);
                v168 = *&v50[v151];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v235 = *&v50[v151];
                *&v50[v151] = 0x8000000000000000;
                sub_21D056DBC(v166, v167, v227, v154, isUniquelyReferenced_nonNull_native);

                *&v50[v151] = v235;
                swift_endAccess();
                sub_21D04FE3C(v165, v161);
                v170 = v166;
                v65 = v226;
                v171 = v167;
                v58 = v223;
                sub_21D04FE3C(v170, v171);
LABEL_65:

                sub_21D04FE3C(v65, v58);
                return MEMORY[0x277D84F90];
              }
            }

            swift_beginAccess();
            sub_21D055C20(v65, v58);
            v191 = *&v50[v151];
            v192 = swift_isUniquelyReferenced_nonNull_native();
            v231 = *&v50[v151];
            *&v50[v151] = 0x8000000000000000;
            sub_21D056DBC(v65, v58, v227, v224, v192);

            *&v50[v151] = v231;
            swift_endAccess();
            goto LABEL_65;
          }

          LODWORD(v135) = HIDWORD(v226) - v226;
          if (__OFSUB__(HIDWORD(v226), v226))
          {
            __break(1u);
            goto LABEL_71;
          }

          v135 = v135;
          goto LABEL_47;
        }
      }

      v49 = type metadata accessor for MediaProcessor.InternalError(0);
      sub_21D054028();
      swift_allocError();
      *v127 = v50;
      v127[1] = v64;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_21D04FE3C(v65, v58);
    }

    else
    {
      type metadata accessor for MediaProcessor.InternalError(0);
      sub_21D054028();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v107 = *(v44 + 8);
      v49 = v44 + 8;
      v107(v47, v43);
    }

    return v49;
  }

  (*(v44 + 96))(v47, v43);
  v49 = *v47;
  v211 = *(v47 + 1);
  v50 = (v32 + 32);
  v51 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54138, &qword_21D0959E0) + 80)];
  v206 = *(v32 + 32);
  (v206)(v42, v51, v31);
  v53 = v32 + 16;
  v52 = *(v32 + 16);
  v216 = v42;
  v209 = v52;
  (v52)(v40, v42, v31);
  v54 = (*(v32 + 88))(v40, v31);
  v55 = v54 == *MEMORY[0x277D414A8];
  v194 = v31;
  v208 = v49;
  v193 = v32;
  v207 = (v32 + 32);
  v210 = (v32 + 16);
  if (v55)
  {
    (*(v32 + 96))(v40, v31);
    v56 = *(v213 + 32);
    v223 = v28;
    v56(v226, v40, v28);
    v58 = 0;
    v59 = *&v217[OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedAudioFormats];
    v227 = *(v59 + 16);
    v225 = v23 + 16;
    do
    {
      if (v227 == v58)
      {
        v49 = type metadata accessor for MediaProcessor.InternalError(0);
        sub_21D054028();
        swift_allocError();
        v109 = v108;
        v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54160, &qword_21D0959F0) + 48);
        v111 = v211;
        *v109 = v208;
        v109[1] = v111;
        v112 = v226;
        sub_21D0931F0();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v213 + 8))(v112, v223);
        goto LABEL_27;
      }

      v60 = *(v59 + 16);
      if (v58 >= v60)
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v50 = v218;
      v61 = v220;
      (*(v23 + 16))(v218, v59 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v58++, v220);
      v62 = v219;
      sub_21D0931F0();
      v49 = sub_21D093120();
      v53 = *(v23 + 8);
      (v53)(v62, v61);
      (v53)(v50, v61);
    }

    while ((v49 & 1) == 0);
    (*(v213 + 8))(v226, v223);
    v63 = v224;
LABEL_22:
    v88 = v212;
    v89 = v216;
    v90 = v194;
    (v209)(v212, v216, v194);
    v91 = v211;

    v92 = v217;
    v93 = sub_21D094210();
    v94 = sub_21D094560();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      LODWORD(v225) = v94;
      v96 = v95;
      v97 = swift_slowAlloc();
      *&v228 = v97;
      *v96 = 136380931;
      (v209)(v63, v88, v90);
      v98 = sub_21D094430();
      v99 = v88;
      v100 = v98;
      v102 = v101;
      v103 = *(v193 + 8);
      v226 = (v193 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v227 = v103;
      (v103)(v99, v90);
      v104 = sub_21D05550C(v100, v102, &v228);
      v91 = v211;

      *(v96 + 4) = v104;
      v89 = v216;
      *(v96 + 12) = 2081;
      v105 = v208;
      *(v96 + 14) = sub_21D05550C(v208, v91, &v228);
      _os_log_impl(&dword_21D044000, v93, v225, "Received media header. header=%{private}s media_id=%{private}s", v96, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v97, -1, -1);
      MEMORY[0x223D3CDF0](v96, -1, -1);

      v106 = v90;
    }

    else
    {

      v118 = *(v193 + 8);
      v226 = (v193 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v227 = v118;
      (v118)(v88, v90);
      v106 = v90;
      v105 = v208;
    }

    v119 = v89;
    (v209)(v63, v89, v106);
    v120 = type metadata accessor for MediaProcessor.MediaStream(0);
    v121 = *(v120 + 48);
    v122 = *(v120 + 52);
    v123 = swift_allocObject();
    *(v123 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_chunkIndex) = 1;
    *(v123 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_complete) = 0;
    *(v123 + 16) = v105;
    *(v123 + 24) = v91;
    (v206)(v123 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_metadata, v63, v106);
    v124 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata;
    swift_beginAccess();

    v125 = *&v92[v124];
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v234 = *&v92[v124];
    *&v92[v124] = 0x8000000000000000;
    sub_21D056C40(v123, v105, v91, v126);

    *&v92[v124] = v234;
    swift_endAccess();
    (v227)(v119, v106);
    return MEMORY[0x277D84F90];
  }

  v53 = v217;
  if (v54 == *MEMORY[0x277D414B0])
  {
    v82 = *(v32 + 96);
    v58 = v32 + 96;
    v82(v40, v31);
    (*(v214 + 32))(v227, v40, v215);
    v49 = 0;
    v83 = *(v53 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedImageFormats);
    v84 = *(v83 + 16);
    v226 = v225 + 16;
    while (v84 != v49)
    {
      v60 = *(v83 + 16);
      if (v49 >= v60)
      {
        goto LABEL_67;
      }

      v85 = v225;
      v50 = v221;
      v58 = v223;
      (*(v225 + 16))(v221, v83 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v49++, v223);
      v86 = v222;
      sub_21D093210();
      v53 = sub_21D093140();
      v87 = *(v85 + 8);
      v87(v86, v58);
      v87(v50, v58);
      v63 = v224;
      if (v53)
      {
        (*(v214 + 8))(v227, v215);
        goto LABEL_22;
      }
    }

    v49 = type metadata accessor for MediaProcessor.InternalError(0);
    sub_21D054028();
    swift_allocError();
    v114 = v113;
    v115 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54150, &qword_21D0959E8) + 48);
    v116 = v211;
    *v114 = v208;
    v114[1] = v116;
    v117 = v227;
    sub_21D093210();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v214 + 8))(v117, v215);
LABEL_27:
    (*(v193 + 8))(v216, v194);
    return v49;
  }

LABEL_71:
  result = sub_21D0947C0();
  __break(1u);
  return result;
}

unint64_t sub_21D054028()
{
  result = qword_27CE54100;
  if (!qword_27CE54100)
  {
    type metadata accessor for MediaProcessor.InternalError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54100);
  }

  return result;
}

uint64_t sub_21D054080()
{
  v2 = sub_21D0937B0();
  v3 = *(v2 - 8);
  v78 = v2;
  v79 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v77 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_21D0938B0();
  v6 = *(v76 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_21D0938F0();
  v9 = *(v73 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v73);
  v74 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_21D093230();
  v12 = *(v81 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming))
  {
    type metadata accessor for MediaProcessor.InternalError(0);
    sub_21D054028();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return MEMORY[0x277D84F90];
  }

  else
  {
    v57[1] = v1;
    v15 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata;
    swift_beginAccess();
    v16 = *(v0 + v15);
    v17 = v16 + 64;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 64);
    v21 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_chunks;
    v72 = v16;

    v70 = v21;
    v71 = v0;
    swift_beginAccess();
    v22 = 0;
    v23 = (v18 + 63) >> 6;
    v68 = (v12 + 88);
    v69 = (v12 + 16);
    v67 = *MEMORY[0x277D414A8];
    v60 = *MEMORY[0x277D414B0];
    v59 = *MEMORY[0x277D71C20];
    v66 = (v6 + 104);
    v65 = *MEMORY[0x277D71B50];
    v64 = (v79 + 104);
    v63 = (v9 + 8);
    v62 = (v12 + 8);
    v58 = *MEMORY[0x277D71C18];
    v61 = xmmword_21D0959B0;
    while (v20)
    {
LABEL_14:
      v32 = __clz(__rbit64(v20)) | (v22 << 6);
      v33 = (*(v72 + 48) + 16 * v32);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(*(v72 + 56) + 8 * v32);
      v37 = v80;
      v38 = v81;
      (*v69)(v80, v36 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_metadata, v81);
      v39 = (*v68)(v37, v38);
      v79 = v36;
      if (v39 == v67)
      {
        v40 = *(v71 + v70);
        v41 = *(v40 + 16);

        if (v41)
        {

          v42 = sub_21D055BA8(v35, v34);
          v44 = v43;

          if (v44)
          {
            v45 = (*(v40 + 56) + 16 * v42);
            v24 = *v45;
            v25 = v45[1];
            sub_21D055C20(*v45, v25);
          }

          else
          {
            v24 = 0;
            v25 = 0xC000000000000000;
          }
        }

        else
        {
          v24 = 0;
          v25 = 0xC000000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54168, qword_21D0959F8);
        v26 = *(sub_21D0938D0() - 8);
        v27 = *(v26 + 72);
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        *(swift_allocObject() + 16) = v61;
        sub_21D055C20(v24, v25);
        v29 = v75;
        sub_21D093860();
        (*v66)(v29, v58, v76);
      }

      else
      {
        if (v39 != v60)
        {
          goto LABEL_31;
        }

        v46 = *(v71 + v70);
        v47 = *(v46 + 16);

        if (v47)
        {

          v48 = sub_21D055BA8(v35, v34);
          v50 = v49;

          if (v50)
          {
            v51 = (*(v46 + 56) + 16 * v48);
            v24 = *v51;
            v25 = v51[1];
            sub_21D055C20(*v51, v25);
          }

          else
          {
            v24 = 0;
            v25 = 0xC000000000000000;
          }
        }

        else
        {
          v24 = 0;
          v25 = 0xC000000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54168, qword_21D0959F8);
        v52 = *(sub_21D0938D0() - 8);
        v53 = *(v52 + 72);
        v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        *(swift_allocObject() + 16) = v61;
        sub_21D055C20(v24, v25);
        v55 = v75;
        sub_21D093860();
        (*v66)(v55, v59, v76);
      }

      sub_21D0938C0();
      (*v64)(v77, v65, v78);
      v30 = v74;
      sub_21D0938E0();

      sub_21D04FE3C(v24, v25);
      v20 &= v20 - 1;
      (*v63)(v30, v73);
      (*v62)(v80, v81);
    }

    while (1)
    {
      v31 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v31 >= v23)
      {

        return MEMORY[0x277D84F90];
      }

      v20 = *(v17 + 8 * v31);
      ++v22;
      if (v20)
      {
        v22 = v31;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:

    result = sub_21D0947C0();
    __break(1u);
  }

  return result;
}

void sub_21D054868(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  sub_21D08F388(a1, a2);
  swift_endAccess();

  swift_beginAccess();
  sub_21D08F2D8(a1, a2, &v9);
  v4 = v9;
  swift_endAccess();
  sub_21D058258(v4, *(&v4 + 1));

  v5 = sub_21D094210();
  v6 = sub_21D094560();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136380675;
    *(v7 + 4) = sub_21D05550C(a1, a2, &v10);
    _os_log_impl(&dword_21D044000, v5, v6, "Media stream complete. media_id=%{private}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D3CDF0](v8, -1, -1);
    MEMORY[0x223D3CDF0](v7, -1, -1);
  }
}

uint64_t sub_21D054A00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_21D093890();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = sub_21D093870();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = sub_21D093230();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_metadata, v19);
  v24 = *(v20 + 88);
  v47 = v19;
  v25 = v24(v23, v19);
  if (v25 == *MEMORY[0x277D414A8])
  {
    sub_21D055C20(a2, a3);
    sub_21D093860();
    v26 = *(v46 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID);
    v27 = *(v46 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID + 8);
    v28 = *(a1 + 24);
    v45 = *(a1 + 16);
    v46 = v26;
    v29 = *(a1 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_chunkIndex);
    v31 = v41;
    v30 = v42;
    (*(v41 + 16))(v16, v18, v42);

    sub_21D093720();
    (*(v31 + 8))(v18, v30);
LABEL_5:
    type metadata accessor for MediaProcessor.TokenGenerationPromptCompletionEventCandidate(0);
    swift_storeEnumTagMultiPayload();
    return (*(v20 + 8))(v23, v47);
  }

  v32 = a3;
  v33 = v46;
  if (v25 == *MEMORY[0x277D414B0])
  {
    sub_21D055C20(a2, v32);
    sub_21D093860();
    v34 = *(v33 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID + 8);
    v46 = *(v33 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID);
    v35 = *(a1 + 24);
    v42 = *(a1 + 16);
    v36 = *(a1 + OBJC_IVAR____TtCC32PrivateMLClientInferenceProvider14MediaProcessorP33_6FBF4AEB487F9A1DD1BA1F88191891F111MediaStream_chunkIndex);
    v37 = v44;
    v38 = v45;
    (*(v44 + 16))(v43, v11, v45);

    sub_21D093720();
    (*(v37 + 8))(v11, v38);
    goto LABEL_5;
  }

  result = sub_21D0947C0();
  __break(1u);
  return result;
}

uint64_t MediaProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_logger;
  v2 = sub_21D094230();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata);

  v4 = *(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_chunks);

  v5 = *(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID + 8);

  v6 = *(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedAudioFormats);

  v7 = *(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedImageFormats);

  return v0;
}

uint64_t MediaProcessor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_logger;
  v2 = sub_21D094230();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata);

  v4 = *(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_chunks);

  v5 = *(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID + 8);

  v6 = *(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedAudioFormats);

  v7 = *(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedImageFormats);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_21D054FD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541D0, &qword_21D095B20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21D055104(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54220, &qword_21D095B70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54228, &qword_21D095B78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21D05529C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

_BYTE **sub_21D0554A0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_21D0554B0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_21D05550C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_21D05550C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21D0555D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21D0581FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21D0555D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21D0556E4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21D0946F0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21D0556E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_21D055730(a1, a2);
  sub_21D055860(&unk_282E96858);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21D055730(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21D05594C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21D0946F0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21D094480();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21D05594C(v10, 0);
        result = sub_21D0946D0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21D055860(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_21D0559C0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21D05594C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54210, &unk_21D095B60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21D0559C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54210, &unk_21D095B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_21D055AB4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_21D055AD4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_21D055B58@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_21D055BA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21D094850();
  sub_21D094450();
  v6 = sub_21D094870();

  return sub_21D0571B8(a1, a2, v6);
}

uint64_t sub_21D055C20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21D055C74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541C8, &unk_21D095B10);
  v40 = a2;
  result = sub_21D094760();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_21D094850();
      sub_21D094450();
      result = sub_21D094870();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21D055F34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54218, &qword_21D0964D0);
  v36 = a2;
  result = sub_21D094760();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_21D055C20(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_21D094850();
      sub_21D094450();
      result = sub_21D094870();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21D0561F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54208, &qword_21D095B58);
  v38 = a2;
  result = sub_21D094760();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_21D094850();
      sub_21D094450();
      result = sub_21D094870();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21D056498(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541E8, &qword_21D095B38);
  v38 = a2;
  result = sub_21D094760();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_21D094850();
      sub_21D094450();
      result = sub_21D094870();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21D056738(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_21D0931D0();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541D8, &qword_21D095B28);
  v46 = a2;
  result = sub_21D094760();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_21D094850();
      sub_21D094450();
      result = sub_21D094870();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_21D056AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21D055BA8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21D055C74(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_21D055BA8(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_21D0947E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21D057270();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_21D056C40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21D055BA8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21D0561F0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_21D055BA8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_21D0947E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21D05756C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_21D056DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21D055BA8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21D055F34(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_21D055BA8(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_21D0947E0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21D0573E8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_21D04FE3C(v26, v27);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21D056F88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_21D055BA8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_21D057844();
      goto LABEL_7;
    }

    sub_21D056738(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_21D055BA8(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_21D0947E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_21D0931D0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_21D057108(v12, a2, a3, a1, v18);
}

uint64_t sub_21D057108(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_21D0931D0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_21D0571B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21D0947D0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_21D057270()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541C8, &unk_21D095B10);
  v2 = *v0;
  v3 = sub_21D094750();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21D0573E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54218, &qword_21D0964D0);
  v2 = *v0;
  v3 = sub_21D094750();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_21D055C20(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21D05756C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54208, &qword_21D095B58);
  v2 = *v0;
  v3 = sub_21D094750();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21D0576DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541E8, &qword_21D095B38);
  v2 = *v0;
  v3 = sub_21D094750();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_21D057844()
{
  v1 = v0;
  v36 = sub_21D0931D0();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541D8, &qword_21D095B28);
  v4 = *v0;
  v5 = sub_21D094750();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_21D057AC4(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_21D092F60();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_21D05826C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21D057BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaProcessor.TokenGenerationPromptCompletionEventCandidate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_21D057CC4(uint64_t a1)
{
  v2 = type metadata accessor for MediaProcessor.TokenGenerationPromptCompletionEventCandidate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D057D68(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D057DA0()
{
  result = sub_21D094230();
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

uint64_t sub_21D057F20()
{
  result = sub_21D093230();
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

uint64_t sub_21D057FD4()
{
  result = sub_21D093730();
  if (v1 <= 0x3F)
  {
    result = sub_21D093750();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21D058098()
{
  sub_21D058160();
  if (v0 <= 0x3F)
  {
    sub_21D058190(319, &qword_27CE541B8, MEMORY[0x277D41460]);
    if (v1 <= 0x3F)
    {
      sub_21D058190(319, &qword_27CE541C0, MEMORY[0x277D41480]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_21D058160()
{
  result = qword_27CE541B0;
  if (!qword_27CE541B0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27CE541B0);
  }

  return result;
}

void sub_21D058190(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21D0581FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21D058258(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21D04FE3C(a1, a2);
  }

  return a1;
}

uint64_t sub_21D05826C(uint64_t a1, uint64_t a2)
{
  result = sub_21D092EB0();
  if (!result || (result = sub_21D092ED0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_21D092EC0();
      return sub_21D092F60();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21D058308(void (*a1)(__CFUserNotification *), uint64_t a2, void (*a3)(__CFUserNotification *))
{
  v4 = v3;
  v55 = *MEMORY[0x277D85DE8];
  v7 = sub_21D094210();
  v8 = sub_21D094560();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21D044000, v7, v8, "Displaying alert", v9, 2u);
    MEMORY[0x223D3CDF0](v9, -1, -1);
  }

  error = 0;
  sub_21D04FDF0();
  sub_21D094610();
  v11 = v10;
  v12 = sub_21D094210();
  v13 = sub_21D094560();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v11;
    _os_log_impl(&dword_21D044000, v12, v13, "Setting tap-to-radar timeout to %f seconds", v14, 0xCu);
    MEMORY[0x223D3CDF0](v14, -1, -1);
  }

  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = sub_21D0943F0();
  v17 = v16;
  v18 = v4[2];
  v19 = v4[3];

  v20 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  responseFlags = v20;
  sub_21D056AB8(v18, v19, v15, v17, isUniquelyReferenced_nonNull_native);

  if (!*MEMORY[0x277CBF198])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v22 = sub_21D0943F0();
  v24 = v23;
  v25 = v4[4];
  v26 = v4[5];

  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_21D056AB8(v25, v26, v22, v24, v27);

  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  v28 = sub_21D0943F0();
  v30 = v29;
  v31 = v4[6];
  v32 = v4[7];

  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_21D056AB8(v31, v32, v28, v30, v33);

  if (!*MEMORY[0x277CBF1C0])
  {
    goto LABEL_27;
  }

  v34 = sub_21D0943F0();
  v36 = v35;
  v37 = v4[8];
  v38 = v4[9];

  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_21D056AB8(v37, v38, v34, v36, v39);

  v40 = *MEMORY[0x277CBECE8];
  v41 = sub_21D0943B0();

  v42 = CFUserNotificationCreate(v40, v11, 0, &error, v41);

  v43 = sub_21D094210();
  v44 = sub_21D094560();
  v45 = os_log_type_enabled(v43, v44);
  if (v42)
  {
    if (v45)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_21D044000, v43, v44, "Wait for user response", v46, 2u);
      MEMORY[0x223D3CDF0](v46, -1, -1);
    }

    responseFlags = 0;
    v47 = CFUserNotificationReceiveResponse(v42, v11, &responseFlags);
    v48 = sub_21D094210();
    v49 = sub_21D094560();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 67109120;
      *(v50 + 4) = v47;
      _os_log_impl(&dword_21D044000, v48, v49, "User response received: %d", v50, 8u);
      MEMORY[0x223D3CDF0](v50, -1, -1);
    }

    if (v47)
    {
      goto LABEL_15;
    }

    if (!responseFlags)
    {
      a3 = a1;
    }

    if (!a3)
    {
LABEL_15:
    }

    else
    {

      a3(v42);

      sub_21D0589D0(a3);
    }
  }

  else
  {
    if (v45)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_21D044000, v43, v44, "Failed to create User notification for PrivateMLClient", v51, 2u);
      MEMORY[0x223D3CDF0](v51, -1, -1);
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}
uint64_t sub_232DB68C8(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v16 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_232E019C0())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x238395D50](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = v7;
      a1(&v14, &v15);
      if (v3)
      {

        return v11;
      }

      if (v14)
      {
        MEMORY[0x2383959E0]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_232E015F0();
        }

        sub_232E01610();
        v11 = v16;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_232DB6A74(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_232E012A0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for UserGuideIndexHelper.UserGuideAttributes(0);
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = sub_232E00BE0();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DB6C14, 0, 0);
}

uint64_t sub_232DB6C14()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[3];
  v5 = sub_232E013A0();
  v7 = v6;
  v0[16] = v5;
  v0[17] = v6;
  sub_232DB7470(v3);
  v8 = *(v2 + 48);
  v0[18] = v8;
  v0[19] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v3, 1, v1) == 1)
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    sub_232DAB434(v0[11], &qword_27DDD7300, &qword_232E06830);
    sub_232E01270();
    sub_232E018F0();

    MEMORY[0x238395970](v5, v7);
    sub_232E01380();

    (*(v10 + 8))(v9, v11);
    sub_232DBD398();
    swift_allocError();
    *v12 = v5;
    *(v12 + 8) = v7;
    *(v12 + 16) = 2;
    swift_willThrow();
    v14 = v0[14];
    v13 = v0[15];
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[9];
    v18 = v0[7];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[15];
    v22 = v0[12];
    v23 = v0[13];
    v24 = v0[11];
    v25 = *(v23 + 32);
    v0[20] = v25;
    v0[21] = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v21, v24, v22);
    v26 = swift_task_alloc();
    v0[22] = v26;
    *v26 = v0;
    v26[1] = sub_232DB6E94;
    v27 = v0[15];
    v28 = v0[9];
    v29 = v0[4];

    return sub_232DB7594(v28, v27);
  }
}

uint64_t sub_232DB6E94()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);

    v5 = sub_232DB73B0;
  }

  else
  {
    v5 = sub_232DB6FB0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_232DB6FB0()
{
  v1 = v0[9];
  v2 = *(v1 + 24);
  if (!v2)
  {
    v18 = v0[17];
    v19 = v0[15];
    v20 = v0[12];
    v21 = v0[13];
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];

    sub_232E01270();
    sub_232E01380();
    (*(v23 + 8))(v22, v24);
    sub_232DBD398();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 4;
    swift_willThrow();
    sub_232DBD4B4(v1, type metadata accessor for UserGuideIndexHelper.UserGuideAttributes);
    (*(v21 + 8))(v19, v20);
    goto LABEL_5;
  }

  v3 = *(v1 + 16);
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[12];
  v7 = v0[10];
  sub_232DAB3CC(v1 + *(v0[8] + 28), v7, &qword_27DDD7300, &qword_232E06830);
  if (v5(v7, 1, v6) == 1)
  {
    v8 = v0[17];
    v9 = v0[15];
    v10 = v0[12];
    v11 = v0[13];
    v13 = v0[9];
    v12 = v0[10];
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    sub_232DAB434(v12, &qword_27DDD7300, &qword_232E06830);
    sub_232E01270();
    sub_232E01380();
    (*(v15 + 8))(v14, v16);
    sub_232DBD398();
    swift_allocError();
    *v17 = xmmword_232E06780;
    *(v17 + 16) = 4;
    swift_willThrow();
    sub_232DBD4B4(v13, type metadata accessor for UserGuideIndexHelper.UserGuideAttributes);
    (*(v11 + 8))(v9, v10);
LABEL_5:
    v27 = v0[14];
    v26 = v0[15];
    v29 = v0[10];
    v28 = v0[11];
    v30 = v0[9];
    v31 = v0[7];

    v32 = v0[1];
    goto LABEL_7;
  }

  v53 = v0[21];
  v54 = v0[20];
  v56 = v0[16];
  v57 = v0[17];
  v52 = v0[15];
  v58 = v3;
  v33 = v0[13];
  v34 = v0[14];
  v35 = v0[12];
  v60 = v0[11];
  v36 = v0[9];
  v59 = v0[10];
  v61 = v0[7];
  v38 = v0[2];
  v37 = v0[3];
  v54(v34);
  v39 = v36[1];
  v55 = *v36;

  v40 = sub_232E013B0();
  v50 = v41;
  v51 = v40;
  v42 = v36[5];
  v49 = v36[4];

  v43 = sub_232E013E0();
  v47 = v44;
  v48 = v43;
  sub_232DBD4B4(v36, type metadata accessor for UserGuideIndexHelper.UserGuideAttributes);
  (*(v33 + 8))(v52, v35);
  v45 = type metadata accessor for UserGuideIndexItem(0);
  (v54)(v38 + *(v45 + 40), v34, v35);
  *v38 = v56;
  v38[1] = v57;
  v38[2] = v55;
  v38[3] = v39;
  v38[4] = v58;
  v38[5] = v2;
  v38[6] = v51;
  v38[7] = v50;
  v38[8] = v49;
  v38[9] = v42;
  v38[10] = v48;
  v38[11] = v47;

  v32 = v0[1];
LABEL_7:

  return v32();
}

uint64_t sub_232DB73B0()
{
  (*(v0[13] + 8))(v0[15], v0[12]);
  v1 = v0[23];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_232DB7470@<X0>(uint64_t a1@<X8>)
{
  sub_232E013A0();
  v2 = sub_232E014C0();

  sub_232E013E0();
  if (v3)
  {
    v4 = sub_232E014C0();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_self();
  v6 = [v5 userGuideURLForIdentifier:v2 version:v4 platformIndependent:sub_232E013D0() & 1 subPath:0];

  if (v6)
  {
    sub_232E00BB0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_232E00BE0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_232DB7594(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse(0);
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = sub_232E012A0();
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DB7690, 0, 0);
}

uint64_t sub_232DB7690()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[4];
  sub_232E01270();
  v5 = sub_232E00B40();
  MEMORY[0x238395970](v5);

  sub_232E01370();

  v6 = *(v3 + 8);
  v0[11] = v6;
  v0[12] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_232DB77BC;
  v8 = v0[4];

  return sub_232DBB868(v8, 0);
}

uint64_t sub_232DB77BC(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 104);
  v5 = *v3;
  v5[14] = a1;
  v5[15] = a2;
  v5[16] = v2;

  if (v2)
  {
    v7 = v5[9];
    v6 = v5[10];
    v8 = v5[6];

    v9 = v5[1];

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DB791C, 0, 0);
  }
}

uint64_t sub_232DB791C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  sub_232E01270();
  sub_232E018F0();

  v4 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v6 = *(*(v0 + 112) + 16);
    v7 = *(*(v0 + 112) + 24);
    v8 = __OFSUB__(v7, v6);
    v5 = v7 - v6;
    if (!v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = *(v0 + 126);
    goto LABEL_10;
  }

  v9 = *(v0 + 112);
  v10 = *(v0 + 116);
  v8 = __OFSUB__(v10, v9);
  LODWORD(v5) = v10 - v9;
  if (v8)
  {
    __break(1u);
    return result;
  }

  v5 = v5;
LABEL_10:
  v40 = *(v0 + 120);
  v42 = *(v0 + 128);
  v11 = *(v0 + 112);
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v14 = *(v0 + 72);
  v15 = *(v0 + 48);
  v16 = *(v0 + 56);
  v17 = *(v0 + 40);
  *(v0 + 16) = v5;
  v18 = sub_232E01AB0();
  MEMORY[0x238395970](v18);

  sub_232E01370();

  v13(v14, v16);
  v19 = sub_232E00990();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_232E00980();
  sub_232DBD42C(qword_2814E7EA0, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse);
  sub_232E00970();
  v23 = *(v0 + 112);
  v22 = *(v0 + 120);
  if (v42)
  {

    sub_232DB091C(v23, v22);
    v25 = *(v0 + 72);
    v24 = *(v0 + 80);
    v26 = *(v0 + 48);
  }

  else
  {
    v41 = *(v0 + 80);
    v43 = *(v0 + 72);
    v28 = *(v0 + 48);
    v29 = *(v0 + 24);
    v30 = v28[1];
    v39 = *v28;
    v31 = (v28 + *(type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(0) + 24));
    v32 = v31[1];
    v38 = *v31;

    v33 = sub_232DB82F0();
    v37 = v34;

    sub_232DB091C(v23, v22);
    v35 = *(type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(0) + 20);
    v36 = type metadata accessor for UserGuideIndexHelper.UserGuideAttributes(0);
    sub_232DAB3CC(v31 + v35, v29 + *(v36 + 28), &qword_27DDD7300, &qword_232E06830);
    sub_232DBD4B4(v28, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse);
    *v29 = v39;
    v29[1] = v30;
    v29[2] = v38;
    v29[3] = v32;
    v29[4] = v33;
    v29[5] = v37;
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_232DB7C30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_232E012A0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_232E00BE0();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DB7D50, 0, 0);
}

uint64_t sub_232DB7D50()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v21 = v0[6];
  v22 = v0[5];
  v5 = v0[3];
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = type metadata accessor for UserGuideIndexItem(0);
  (*(v1 + 16))(v2, &v5[*(v10 + 40)], v4);
  v12 = *(v5 + 10);
  v11 = *(v5 + 11);
  v13 = *(v5 + 8);
  v14 = *(v5 + 9);
  v20 = v13;

  sub_232E01270();
  sub_232E018F0();
  MEMORY[0x238395970](0xD000000000000028, 0x8000000232E0CCB0);
  MEMORY[0x238395970](v6, v7);
  MEMORY[0x238395970](0x64496B6F6F62202CLL, 0xEA0000000000203ALL);
  MEMORY[0x238395970](v8, v9);
  MEMORY[0x238395970](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  if (v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (!v11)
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x238395970](v15, v11);

  MEMORY[0x238395970](0x6175676E616C202CLL, 0xEC000000203A6567);
  MEMORY[0x238395970](v20, v14);
  MEMORY[0x238395970](0x557865646E69202CLL, 0xEC000000203A4C52);
  sub_232DBD42C(&qword_2814E8498, MEMORY[0x277CC9260]);
  v16 = sub_232E01AB0();
  MEMORY[0x238395970](v16);

  sub_232E01370();

  (*(v21 + 8))(v3, v22);
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_232DB8008;
  v18 = v0[3];

  return sub_232DBBB98(v18);
}

uint64_t sub_232DB8008(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_232DB8268;
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = sub_232DB8130;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_232DB8130()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  v12 = *(v0 + 24);
  v8[1] = vextq_s8(v12, v12, 8uLL);
  v9 = sub_232DB68C8(sub_232DBCD10, v8, v2);

  (*(v4 + 8))(v3, v6);
  sub_232DBDBE4(v12.i64[0], v7, type metadata accessor for UserGuideIndexItem);
  *(v7 + *(type metadata accessor for UserGuideIndexRequest(0) + 20)) = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_232DB8268()
{
  v1 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_232DB82F0()
{
  v1 = sub_232E00D40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232E00D60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74F0, &qword_232E06850);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);

  sub_232E00CF0();
  sub_232E00D50();
  (*(v7 + 8))(v10, v6);
  sub_232E00D30();
  (*(v2 + 8))(v5, v1);
  v17 = sub_232E00D10();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {
    sub_232DAB434(v14, &qword_27DDD74F0, &qword_232E06850);
    v19 = [objc_opt_self() tps_userLanguageCode];
    v20 = sub_232E014D0();
  }

  else
  {
    v20 = sub_232E00D00();
    (*(v18 + 8))(v14, v17);
  }

  return v20;
}

void sub_232DB85AC()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = sub_232E012A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E01270();
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_232E018F0();

  v16 = 0xD00000000000001FLL;
  v17 = 0x8000000232E0CDD0;
  v5 = sub_232E00B40();
  MEMORY[0x238395970](v5);

  sub_232E01370();

  (*(v1 + 8))(v4, v0);
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_232E00B70();
  v16 = 0;
  v8 = [v6 removeItemAtURL:v7 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = *MEMORY[0x277D85DE8];

    v11 = v9;
  }

  else
  {
    v15[1] = v16;
    v12 = v16;
    v13 = sub_232E00AE0();

    swift_willThrow();
    v14 = *MEMORY[0x277D85DE8];
  }
}

id sub_232DB87E0(uint64_t a1, SEL *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_232E00B70();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_232E00BE0();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_232E00AE0();

    swift_willThrow();
    v11 = sub_232E00BE0();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_232DB89B4()
{
  sub_232DB8A54();
  if (v0 <= 0x3F)
  {
    sub_232E00BE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232DB8A54()
{
  if (!qword_2814E7C40)
  {
    v0 = sub_232E01840();
    if (!v1)
    {
      atomic_store(v0, &qword_2814E7C40);
    }
  }
}

void sub_232DB8AA4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v40 = a6;
  v38 = a4;
  v39 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74E0, &qword_232E06828);
  v10 = *(v9 - 8);
  v41 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = sub_232E00BE0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_232E00960();
  v43 = *(v18 - 8);
  v44 = v18;
  v19 = *(v43 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v22 = *a2;
  (*(v14 + 16))(v17, a3, v13);
  v42 = v22;
  sub_232E00950();
  sub_232DB3688(0, &qword_2814E7BE8, 0x277D716A0);
  v23 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (v23)
  {
    v24 = v23;
    v25 = sub_232E00940();
    v26 = sub_232E014C0();
    v27 = MEMORY[0x277D71818];
    if ((v40 & 1) == 0)
    {
      v27 = MEMORY[0x277D71830];
    }

    v28 = *v27;
    sub_232E014D0();
    v29 = sub_232E014C0();

    v30 = *MEMORY[0x277CCA790];
    (*(v10 + 16))(v12, a1, v9);
    v31 = v9;
    v32 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v33 = swift_allocObject();
    (*(v10 + 32))(v33 + v32, v12, v31);
    aBlock[4] = sub_232DBD334;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232DDD99C;
    aBlock[3] = &block_descriptor_1;
    v34 = _Block_copy(aBlock);

    LODWORD(v35) = v30;
    v36 = [v24 formattedDataForRequest:v25 identifier:v26 attributionIdentifier:0 requestType:v29 priority:v34 completionHandler:v35];
    _Block_release(v34);

    (*(v43 + 8))(v21, v44);
    v37 = *v45;
    *v45 = v36;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_232DB8EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v27 - v12;
  v14 = sub_232E00BE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v27 - v20;
  sub_232DAB3CC(a3, v27, &qword_27DDD74C0, &qword_232E07DF0);
  if (v27[3])
  {
    v22 = swift_dynamicCast();
    (*(v15 + 56))(v13, v22 ^ 1u, 1, v14);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v21, v13, v14);
      (*(v15 + 16))(v19, v21, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74E0, &qword_232E06828);
      sub_232E01650();
      return (*(v15 + 8))(v21, v14);
    }
  }

  else
  {
    sub_232DAB434(v27, &qword_27DDD74C0, &qword_232E07DF0);
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  sub_232DAB434(v13, &qword_27DDD7300, &qword_232E06830);
  if (a9)
  {
    v24 = a9;
  }

  else
  {
    sub_232DBD398();
    v24 = swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 1;
  }

  v27[0] = v24;
  v26 = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74E0, &qword_232E06828);
  return sub_232E01640();
}

void sub_232DB9188(uint64_t a1, void **a2, uint64_t a3, int a4)
{
  v38 = a4;
  v40 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74F8, &qword_232E06858);
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v37 - v8;
  v10 = sub_232E00BE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_232E00960();
  v42 = *(v15 - 8);
  v43 = v15;
  v16 = *(v42 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a2;
  v19 = *a2;
  (*(v11 + 16))(v14, a3, v10);
  v41 = v19;
  sub_232E00950();
  sub_232E00B50();
  v20 = [objc_opt_self() sharedInstance];
  if (v20)
  {
    v21 = v20;
    v37 = sub_232E00940();
    v22 = sub_232E014C0();

    v23 = MEMORY[0x277D71818];
    if ((v38 & 1) == 0)
    {
      v23 = MEMORY[0x277D71830];
    }

    v24 = *v23;
    sub_232E014D0();
    v25 = sub_232E014C0();

    v26 = *MEMORY[0x277CCA790];
    v27 = v9;
    v28 = v9;
    v29 = v39;
    (*(v6 + 16))(v28, v40, v39);
    v30 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v31 = swift_allocObject();
    (*(v6 + 32))(v31 + v30, v27, v29);
    aBlock[4] = sub_232DBD5A4;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232DDD99C;
    aBlock[3] = &block_descriptor_18;
    v32 = _Block_copy(aBlock);

    v33 = v37;
    LODWORD(v34) = v26;
    v35 = [v21 formattedDataForRequest:v37 identifier:v22 attributionIdentifier:0 requestType:v25 priority:v32 completionHandler:v34];
    _Block_release(v32);

    (*(v42 + 8))(v18, v43);
    v36 = *v44;
    *v44 = v35;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_232DB958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_232DAB3CC(a3, &v14, &qword_27DDD74C0, &qword_232E07DF0);
  if (v15)
  {
    if (swift_dynamicCast())
    {
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74F8, &qword_232E06858);
      return sub_232E01650();
    }

    if (!a9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_232DAB434(&v14, &qword_27DDD74C0, &qword_232E07DF0);
    if (!a9)
    {
LABEL_7:
      sub_232DBD398();
      v10 = swift_allocError();
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 1;
      goto LABEL_8;
    }
  }

  v10 = a9;
LABEL_8:
  *&v14 = v10;
  v12 = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74F8, &qword_232E06858);
  return sub_232E01640();
}

uint64_t sub_232DB96A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7528, &qword_232E06A18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBDCA0();
  sub_232E01C10();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_232E01A70();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    sub_232E01A70();
    v16 = *(type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(0) + 24);
    v17[13] = 2;
    type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(0);
    sub_232DBD42C(&qword_27DDD7530, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes);
    sub_232E01A80();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_232DB98C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(0);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7520, &qword_232E06A10);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBDCA0();
  sub_232E01C00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a1;
  v16 = v27;
  v17 = v28;
  v31 = 0;
  *v14 = sub_232E01A20();
  v14[1] = v18;
  v30 = 1;
  v14[2] = sub_232E01A20();
  v14[3] = v19;
  v29 = 2;
  sub_232DBD42C(&qword_2814E80A0, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes);
  v23 = v14;
  sub_232E01A30();
  (*(v16 + 8))(v10, v17);
  v20 = *(v11 + 24);
  v21 = v23;
  sub_232DBDB24(v6, v23 + v20, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes);
  sub_232DBDBE4(v21, v25, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_232DBD4B4(v21, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book);
}

uint64_t sub_232DB9C50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C61636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x727474416373696DLL;
    v4 = 0xEE00736574756269;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x64496B6F6F62;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x656C61636F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x727474416373696DLL;
    v3 = 0xEE00736574756269;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64496B6F6F62;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_232E01AD0();
  }

  return v11 & 1;
}

uint64_t sub_232DB9D5C()
{
  v1 = *v0;
  sub_232E01BB0();
  sub_232E01530();

  return sub_232E01BE0();
}

uint64_t sub_232DB9E04()
{
  *v0;
  *v0;
  sub_232E01530();
}

uint64_t sub_232DB9E98()
{
  v1 = *v0;
  sub_232E01BB0();
  sub_232E01530();

  return sub_232E01BE0();
}

uint64_t sub_232DB9F3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_232DBE134();
  *a2 = result;
  return result;
}

void sub_232DB9F6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C61636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x727474416373696DLL;
    v4 = 0xEE00736574756269;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64496B6F6F62;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_232DB9FD0()
{
  v1 = 0x656C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x727474416373696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496B6F6F62;
  }
}

uint64_t sub_232DBA030@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232DBE134();
  *a1 = result;
  return result;
}

uint64_t sub_232DBA064(uint64_t a1)
{
  v2 = sub_232DBDCA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DBA0A0(uint64_t a1)
{
  v2 = sub_232DBDCA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DBA10C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_232DBA118@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributesWrapper(0);
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232E01500();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = *(v10 + 28);
  v14 = sub_232E00BE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v38 = v13;
  v16(&v12[v13], 1, 1, v14);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v46;
  sub_232E01BF0();
  if (!v18)
  {
    v36 = v15 + 56;
    v37 = v16;
    v46 = v14;
    v19 = v44;
    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    sub_232E01AE0();
    v20 = v40;
    sub_232E014F0();
    v21 = sub_232E014E0();
    v23 = v22;

    v24 = v20;
    v25 = v23;
    (*(v41 + 8))(v24, v42);
    if (v23 >> 60 == 15)
    {
      v26 = v43;
    }

    else
    {
      v27 = sub_232E00990();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      sub_232E00980();
      sub_232DBD42C(&qword_2814E7FF0, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributesWrapper);
      v30 = v39;
      sub_232E00970();

      sub_232DB0E28(v21, v25);
      v26 = v43;
      v31 = v30[1];
      *v12 = *v30;
      *(v12 + 1) = v31;
      v32 = v38;
      sub_232DAB434(&v12[v38], &qword_27DDD7300, &qword_232E06830);
      v33 = v30 + *(v19 + 20);
      v34 = v46;
      (*(v15 + 32))(&v12[v32], v33, v46);
      v37(&v12[v32], 0, 1, v34);
    }

    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_232DBDBE4(v12, v26, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_232DBD4B4(v12, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes);
}

uint64_t sub_232DBA508(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7508, &qword_232E06A08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBDC4C();
  sub_232E01C10();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_232E01A50();
  if (!v2)
  {
    v13 = *(type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(0) + 20);
    v15[14] = 1;
    sub_232E00BE0();
    sub_232DBD42C(&qword_27DDD7518, MEMORY[0x277CC9260]);
    sub_232E01A60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_232DBA6C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7578, &qword_232E06E38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBE0E0();
  sub_232E01C10();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_232E01A70();
  if (!v2)
  {
    v13 = *(type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributesWrapper(0) + 20);
    v15[14] = 1;
    sub_232E00BE0();
    sub_232DBD42C(&qword_27DDD7518, MEMORY[0x277CC9260]);
    sub_232E01A80();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_232DBA878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_232E00BE0();
  v21 = *(v24 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7570, &qword_232E06E30);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = v19 - v8;
  v10 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributesWrapper(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBE0E0();
  sub_232E01C00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v10;
  v16 = v23;
  v15 = v24;
  v27 = 0;
  *v13 = sub_232E01A20();
  v13[1] = v17;
  v19[1] = v17;
  v26 = 1;
  sub_232DBD42C(&unk_2814E84A0, MEMORY[0x277CC9260]);
  sub_232E01A30();
  (*(v16 + 8))(v9, v25);
  (*(v21 + 32))(v13 + *(v20 + 20), v6, v15);
  sub_232DBDBE4(v13, v22, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributesWrapper);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_232DBD4B4(v13, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributesWrapper);
}

uint64_t sub_232DBABBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7500, &qword_232E06A00);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBDAD0();
  sub_232E01C00();
  if (!v2)
  {
    v16 = v19;
    sub_232DBD42C(&qword_2814E7F40, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book);
    v17 = v21;
    sub_232E01A30();
    (*(v20 + 8))(v10, v7);
    sub_232DBDB24(v17, v14, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book);
    sub_232DBDB24(v14, v16, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_232DBAE30()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x6449646C697562;
  }

  *v0;
  return result;
}

uint64_t sub_232DBAE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449646C697562 && a2 == 0xE700000000000000;
  if (v6 || (sub_232E01AD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000232E0CEA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_232E01AD0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_232DBAF54(uint64_t a1)
{
  v2 = sub_232DBDC4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DBAF90(uint64_t a1)
{
  v2 = sub_232DBDC4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DBAFFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x6449646C697562;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x8000000232E0C750;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x6449646C697562;
  }

  if (*a2)
  {
    v7 = 0x8000000232E0C750;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_232E01AD0();
  }

  return v9 & 1;
}

uint64_t sub_232DBB0A8()
{
  v1 = *v0;
  sub_232E01BB0();
  sub_232E01530();

  return sub_232E01BE0();
}

uint64_t sub_232DBB130()
{
  *v0;
  sub_232E01530();
}

uint64_t sub_232DBB1A4()
{
  v1 = *v0;
  sub_232E01BB0();
  sub_232E01530();

  return sub_232E01BE0();
}

uint64_t sub_232DBB228@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_232E01A10();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_232DBB288(unint64_t *a1@<X8>)
{
  v2 = 0x8000000232E0C750;
  v3 = 0x6449646C697562;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_232DBB2CC()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x6449646C697562;
  }

  *v0;
  return result;
}

uint64_t sub_232DBB30C@<X0>(char *a1@<X8>)
{
  v2 = sub_232E01A10();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_232DBB370(uint64_t a1)
{
  v2 = sub_232DBE0E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DBB3AC(uint64_t a1)
{
  v2 = sub_232DBE0E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DBB418()
{
  sub_232E01BB0();
  sub_232E01530();
  return sub_232E01BE0();
}

uint64_t sub_232DBB494()
{
  sub_232E01BB0();
  sub_232E01530();
  return sub_232E01BE0();
}

uint64_t sub_232DBB4EC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_232E01A10();

  *a2 = v5 != 0;
  return result;
}

void sub_232DBB540(uint64_t a1@<X8>)
{
  strcpy(a1, "bookResponse");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_232DBB584@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_232E01A10();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_232DBB5E8(uint64_t a1)
{
  v2 = sub_232DBDAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DBB624(uint64_t a1)
{
  v2 = sub_232DBDAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DBB678(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7538, &qword_232E06A20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DBDAD0();
  sub_232E01C10();
  type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(0);
  sub_232DBD42C(&qword_27DDD7540, type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book);
  sub_232E01A80();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_232DBB7F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7310, &qword_232E06810);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27DDD74D0;
    v3 = &unk_232E06818;
  }

  else
  {
    v2 = &unk_27DDD74D8;
    v3 = &unk_232E06820;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_232DBB868(uint64_t a1, char a2)
{
  *(v2 + 72) = a2;
  *(v2 + 40) = a1;
  return MEMORY[0x2822009F8](sub_232DBB88C, 0, 0);
}

uint64_t sub_232DBB88C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  *(v0 + 32) = 0;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v0 + 32;
  *(v3 + 24) = v2;
  *(v3 + 32) = v1 & 1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_232DBB9A0;
  v6 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000017, 0x8000000232E0CE80, sub_232DBD514, v3, v6);
}

uint64_t sub_232DBB9A0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_232DBBB2C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_232DBBABC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_232DBBABC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_232DBBB2C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_232DBBB98(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1[46] = a1;
  v2 = sub_232E00BE0();
  v1[47] = v2;
  v3 = *(v2 - 8);
  v1[48] = v3;
  v4 = *(v3 + 64) + 15;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v5 = sub_232E012A0();
  v1[53] = v5;
  v6 = *(v5 - 8);
  v1[54] = v6;
  v7 = *(v6 + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232DBBD1C, 0, 0);
}

uint64_t sub_232DBBD1C()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[57];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[46];
  v5 = v4 + *(type metadata accessor for UserGuideIndexItem(0) + 40);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  sub_232E01270();
  sub_232E018F0();

  v8 = sub_232E00B40();
  MEMORY[0x238395970](v8);

  sub_232E01370();

  v9 = *(v3 + 8);
  v0[58] = v9;
  v0[59] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  v0[38] = 0;
  v10 = swift_task_alloc();
  v0[60] = v10;
  *(v10 + 16) = v0 + 38;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = 1;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  v0[61] = v12;
  *v12 = v0;
  v12[1] = sub_232DBBF20;
  v13 = v0[52];
  v14 = v0[47];
  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008A0](v13, 0, 0, 0xD000000000000023, 0x8000000232E0CD00, sub_232DBD2D0, v10, v14);
}

uint64_t sub_232DBBF20()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 488);
  v9 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = sub_232DBCC1C;
  }

  else
  {
    v5 = *(v2 + 480);

    v4 = sub_232DBC070;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_232DBC070()
{
  v105 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v4 = *(v0 + 416);
  v5 = *(v0 + 424);
  v6 = *(v0 + 408);

  sub_232E01270();
  sub_232E018F0();

  v7 = sub_232E00B40();
  MEMORY[0x238395970](v7);

  sub_232E01370();

  v2(v3, v5);
  sub_232E00B90();
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  sub_232E00BC0();
  v10 = sub_232E014C0();

  v11 = [v9 fileExistsAtPath_];

  if (v11)
  {
    v12 = *(v0 + 408);
    v13 = [v8 defaultManager];
    v14 = sub_232E00B70();
    *(v0 + 360) = 0;
    v15 = [v13 removeItemAtURL:v14 error:v0 + 360];

    v16 = *(v0 + 360);
    if (v15)
    {
      v17 = *(v0 + 496);
      v18 = v16;
    }

    else
    {
      v19 = v16;
      v20 = sub_232E00AE0();

      swift_willThrow();
      v17 = 0;
    }
  }

  else
  {
    v17 = *(v0 + 496);
  }

  v21 = *(v0 + 408);
  v22 = *(v0 + 416);
  v23 = *(v0 + 400);
  v24 = *(v0 + 376);
  v25 = *(v0 + 384);
  v26 = [v8 defaultManager];
  sub_232E00BC0();
  v27 = sub_232E014C0();

  [v26 createFileAtPath:v27 contents:0 attributes:0];

  sub_232DB3688(0, &qword_2814E7C20, 0x277CCA9F8);
  v28 = *(v25 + 16);
  v28(v23, v22, v24);
  v29 = sub_232DB87E0(v23, &selRef_fileHandleForReadingFromURL_error_);
  v30 = *(v0 + 376);
  if (v17)
  {
    v31 = *(v0 + 408);
    v32 = *(v0 + 416);
    v33 = *(v0 + 384);
    sub_232DB85AC();
    v34 = *(v33 + 8);
    v34(v31, v30);
    v34(v32, v30);
LABEL_9:
    v38 = *(v0 + 448);
    v37 = *(v0 + 456);
    v39 = *(v0 + 440);
    v41 = *(v0 + 408);
    v40 = *(v0 + 416);
    v43 = *(v0 + 392);
    v42 = *(v0 + 400);

    v44 = *(v0 + 8);
    v45 = *MEMORY[0x277D85DE8];

    return v44();
  }

  v35 = v29;
  v36 = *(v0 + 392);
  v28(v36, *(v0 + 408), *(v0 + 376));
  v47 = sub_232DB87E0(v36, &selRef_fileHandleForWritingToURL_error_);
  sub_232DBE468(v35, v47);
  v48 = *(v0 + 408);
  v49 = sub_232E00C00();
  v51 = v50;
  v52 = *(v0 + 448);
  sub_232E01270();
  sub_232E018F0();

  v53 = v51 >> 62;
  v103 = v49;
  if ((v51 >> 62) > 1)
  {
    v54 = 0;
    if (v53 != 2)
    {
      goto LABEL_21;
    }

    v56 = *(v49 + 16);
    v55 = *(v49 + 24);
    v57 = __OFSUB__(v55, v56);
    v54 = v55 - v56;
    if (!v57)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  else if (!v53)
  {
    v54 = BYTE6(v51);
    goto LABEL_21;
  }

  LODWORD(v54) = HIDWORD(v49) - v49;
  if (__OFSUB__(HIDWORD(v49), v49))
  {
    __break(1u);
LABEL_40:
    v83 = sub_232E019C0();
    goto LABEL_34;
  }

  v54 = v54;
LABEL_21:
  v100 = v47;
  v59 = *(v0 + 464);
  v58 = *(v0 + 472);
  v60 = *(v0 + 448);
  v61 = *(v0 + 424);
  *(v0 + 320) = v54;
  v62 = sub_232E01AB0();
  MEMORY[0x238395970](v62);

  sub_232E01370();

  v59(v60, v61);
  sub_232DBB7F0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232E06790;
  *(inited + 32) = sub_232DB3688(0, &qword_2814E7C28, 0x277CBEAC0);
  *(inited + 40) = sub_232DB3688(0, &qword_2814E7BC0, 0x277CBEA60);
  *(inited + 48) = sub_232DB3688(0, &qword_2814E7BB0, 0x277CCACA8);
  *(inited + 56) = sub_232DB3688(0, &qword_2814E7BD8, 0x277CBEA90);
  *(inited + 64) = sub_232DB3688(0, &qword_2814E7BB8, 0x277CCABB0);
  *(inited + 72) = sub_232DB3688(0, &qword_2814E7C10, 0x277CC34B0);
  sub_232DAA714(inited);
  swift_setDeallocating();
  v64 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v65 = sub_232E015C0();

  v66 = [v64 initWithArray_];

  sub_232E016F0();
  v67 = objc_opt_self();
  v68 = sub_232E016E0();

  v69 = sub_232E00C50();
  *(v0 + 328) = 0;
  v70 = [v67 unarchivedObjectOfClasses:v68 fromData:v69 error:v0 + 328];

  v71 = *(v0 + 328);
  if (!v70)
  {
    v76 = *(v0 + 408);
    v102 = *(v0 + 416);
    v78 = *(v0 + 376);
    v77 = *(v0 + 384);
    v79 = v71;
    sub_232E00AE0();

    swift_willThrow();
    sub_232DB091C(v103, v51);

    sub_232DB85AC();
    v80 = *(v77 + 8);
    v80(v76, v78);
    v80(v102, v78);
    goto LABEL_9;
  }

  v72 = v71;
  sub_232E01850();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD72F0, &unk_232E06800);
  if (!swift_dynamicCast())
  {
    goto LABEL_35;
  }

  v73 = *(v0 + 336);
  *(v0 + 288) = 0xD000000000000012;
  *(v0 + 296) = 0x8000000232E0CD90;
  sub_232E018B0();
  if (*(v73 + 16) && (v74 = sub_232DD56AC(v0 + 96), (v75 & 1) != 0))
  {
    sub_232DAB730(*(v73 + 56) + 32 * v74, v0 + 200);
  }

  else
  {
    *(v0 + 216) = 0u;
    *(v0 + 200) = 0u;
  }

  *(v0 + 248) = *(v0 + 216);
  *(v0 + 232) = *(v0 + 200);
  if (*(v0 + 256))
  {

    sub_232DBD2E0(v0 + 96);
    sub_232D734CC((v0 + 232), (v0 + 168));
  }

  else
  {
    *(v0 + 192) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73D8, &qword_232E06268);
    *(v0 + 168) = MEMORY[0x277D84F90];

    sub_232DBD2E0(v0 + 96);
    sub_232DAB434(v0 + 232, &qword_27DDD74C0, &qword_232E07DF0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73D8, &qword_232E06268);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:

    sub_232DB091C(v103, v51);
    v101 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v81 = *(v0 + 440);
  v82 = *(v0 + 344);
  sub_232E01270();
  sub_232E018F0();

  v101 = v82;
  if (v82 >> 62)
  {
    goto LABEL_40;
  }

  v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_34:
  v85 = *(v0 + 464);
  v84 = *(v0 + 472);
  v86 = *(v0 + 440);
  v87 = *(v0 + 424);
  *(v0 + 352) = v83;
  v88 = sub_232E01AB0();
  MEMORY[0x238395970](v88);

  sub_232E01370();

  sub_232DB091C(v103, v51);
  v85(v86, v87);
LABEL_36:
  v89 = *(v0 + 448);
  v90 = *(v0 + 456);
  v91 = *(v0 + 440);
  v93 = *(v0 + 408);
  v92 = *(v0 + 416);
  v94 = *(v0 + 400);
  v104 = *(v0 + 392);
  v96 = *(v0 + 376);
  v95 = *(v0 + 384);
  sub_232DB85AC();
  v97 = *(v95 + 8);
  v97(v93, v96);
  v97(v92, v96);

  v98 = *(v0 + 8);
  v99 = *MEMORY[0x277D85DE8];

  return v98(v101);
}

uint64_t sub_232DBCC1C()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 480);

  v2 = *(v0 + 496);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 440);
  v7 = *(v0 + 408);
  v6 = *(v0 + 416);
  v9 = *(v0 + 392);
  v8 = *(v0 + 400);

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

id sub_232DBCD10@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_232DBCD68(*a1, *(v2 + 24));
  *a2 = result;
  return result;
}

id sub_232DBCD68(void *a1, uint64_t *a2)
{
  v4 = sub_232E00CE0();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232E00BE0();
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[11];
  v43 = a2[10];
  v44 = v14;

  v42 = a1;
  v15 = [a1 attributeSet];
  sub_232E013F0();
  sub_232E013C0();
  v16 = sub_232E014C0();

  v17 = [v15 attributeForKey_];

  if (v17)
  {
    sub_232E01850();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (!*(&v47 + 1))
  {

LABEL_14:
    sub_232DAB434(&v48, &qword_27DDD74C0, &qword_232E07DF0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v18 = v45;
  if (![v15 attributeForKey_] || (v38 = v18, sub_232E01850(), swift_unknownObjectRelease(), sub_232DAB434(&v48, &qword_27DDD74C0, &qword_232E07DF0), !objc_msgSend(v15, sel_attributeForKey_, *MEMORY[0x277CC2750])))
  {

    v48 = 0u;
    v49 = 0u;
    goto LABEL_14;
  }

  sub_232E01850();
  swift_unknownObjectRelease();
  sub_232DAB434(&v48, &qword_27DDD74C0, &qword_232E07DF0);
  v19 = objc_allocWithZone(sub_232E012E0());

  v20 = sub_232E012C0();
  v21 = sub_232E012D0();
  if (!v22)
  {

    return 0;
  }

  v37 = v21;
  v38 = v22;
  *&v48 = 0x6469754772657375;
  *(&v48 + 1) = 0xEA00000000002E65;
  MEMORY[0x238395970](v12, v13);
  v23 = [v20 supportSiteURL];
  if (v23)
  {
    v24 = v23;
    sub_232E00BB0();

    v25 = sub_232E00B70();
    (*(v39 + 8))(v11, v8);
  }

  else
  {
    v25 = 0;
  }

  [v15 setContentURL_];

  v27 = sub_232E014C0();
  [v15 setDomainIdentifier_];

  if (v44)
  {
    v28 = sub_232E014C0();
  }

  else
  {
    v28 = 0;
  }

  [v15 setVersion_];

  v29 = a2[6];
  v30 = a2[7];
  v31 = sub_232E014C0();
  [v15 setKind_];

  v32 = sub_232E014C0();

  v33 = v42;
  [v42 setUniqueIdentifier_];

  v34 = sub_232E014C0();

  [v33 setDomainIdentifier_];

  [v33 setAttributeSet_];
  sub_232E00C80();
  v35 = sub_232E00CA0();
  (*(v40 + 8))(v7, v41);
  [v33 setExpirationDate_];

  v36 = v33;
  return v33;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_232DBD398()
{
  result = qword_27DDD74E8;
  if (!qword_27DDD74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD74E8);
  }

  return result;
}

uint64_t sub_232DBD42C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232DBD4B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_232DBD5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a10, a11) - 8);
  v24 = v12 + ((*(v21 + 80) + 16) & ~*(v21 + 80));

  return a12(a1, a2, a3, a4, a5, a6, a7, a8, a9, v24);
}

void sub_232DBD72C()
{
  if (!qword_2814E8490)
  {
    sub_232E00BE0();
    v0 = sub_232E01840();
    if (!v1)
    {
      atomic_store(v0, &qword_2814E8490);
    }
  }
}

uint64_t sub_232DBD7AC()
{
  result = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_232DBD850()
{
  result = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_232DBD8E4()
{
  sub_232DB8A54();
  if (v0 <= 0x3F)
  {
    sub_232DBD72C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_232DBD9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_232DBDA5C()
{
  if (!qword_2814E7C38)
  {
    sub_232DB3688(255, &qword_2814E7C10, 0x277CC34B0);
    v0 = sub_232E01620();
    if (!v1)
    {
      atomic_store(v0, &qword_2814E7C38);
    }
  }
}

unint64_t sub_232DBDAD0()
{
  result = qword_2814E80B8[0];
  if (!qword_2814E80B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E80B8);
  }

  return result;
}

uint64_t sub_232DBDB24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_232DBDBAC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232DBDBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_232DBDC4C()
{
  result = qword_27DDD7510;
  if (!qword_27DDD7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7510);
  }

  return result;
}

unint64_t sub_232DBDCA0()
{
  result = qword_2814E7F58[0];
  if (!qword_2814E7F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E7F58);
  }

  return result;
}

uint64_t sub_232DBDD3C()
{
  result = sub_232E00BE0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_232DBDDCC()
{
  result = qword_27DDD7548;
  if (!qword_27DDD7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7548);
  }

  return result;
}

unint64_t sub_232DBDE24()
{
  result = qword_27DDD7550;
  if (!qword_27DDD7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7550);
  }

  return result;
}

unint64_t sub_232DBDE7C()
{
  result = qword_27DDD7558;
  if (!qword_27DDD7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7558);
  }

  return result;
}

unint64_t sub_232DBDED4()
{
  result = qword_2814E7F48;
  if (!qword_2814E7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7F48);
  }

  return result;
}

unint64_t sub_232DBDF2C()
{
  result = qword_2814E7F50;
  if (!qword_2814E7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7F50);
  }

  return result;
}

unint64_t sub_232DBDF84()
{
  result = qword_27DDD7560;
  if (!qword_27DDD7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7560);
  }

  return result;
}

unint64_t sub_232DBDFDC()
{
  result = qword_27DDD7568;
  if (!qword_27DDD7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7568);
  }

  return result;
}

unint64_t sub_232DBE034()
{
  result = qword_2814E80A8;
  if (!qword_2814E80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E80A8);
  }

  return result;
}

unint64_t sub_232DBE08C()
{
  result = qword_2814E80B0;
  if (!qword_2814E80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E80B0);
  }

  return result;
}

unint64_t sub_232DBE0E0()
{
  result = qword_2814E8008[0];
  if (!qword_2814E8008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E8008);
  }

  return result;
}

uint64_t sub_232DBE134()
{
  v0 = sub_232E01A10();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_232DBE194()
{
  result = qword_27DDD7580;
  if (!qword_27DDD7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7580);
  }

  return result;
}

unint64_t sub_232DBE1EC()
{
  result = qword_2814E7FF8;
  if (!qword_2814E7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7FF8);
  }

  return result;
}

unint64_t sub_232DBE244()
{
  result = qword_2814E8000;
  if (!qword_2814E8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8000);
  }

  return result;
}

void sub_232DBE2B4(void *a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  if ([a1 closeAndReturnError_])
  {
    v3 = v13[0];
  }

  else
  {
    v4 = v13[0];
    v5 = sub_232E00AE0();

    swift_willThrow();
  }

  v13[0] = 0;
  v6 = [a2 closeAndReturnError_];
  v7 = v13[0];
  if (v6)
  {
    v8 = *MEMORY[0x277D85DE8];

    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    v11 = sub_232E00AE0();

    swift_willThrow();
    v12 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_232DBE3E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    v2 = result;
    sub_232DB0970(result, a2);
    sub_232DBE888();
    sub_232E01730();
    return sub_232DB0E28(v2, a2);
  }

  return result;
}

uint64_t sub_232DBE468(void *a1, void *a2)
{
  v45 = a2;
  v3 = sub_232E00E00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = sub_232E00DF0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  (*(v12 + 104))(&v40 - v17, *MEMORY[0x277D832C0], v11);
  (*(v4 + 104))(v10, *MEMORY[0x277D832D0], v3);
  v40 = v12;
  v41 = v18;
  v19 = *(v12 + 16);
  v20 = v18;
  v21 = v4;
  v43 = v11;
  v19(v16, v20, v11);
  v22 = *(v4 + 16);
  v42 = v10;
  v44 = v3;
  v22(v8, v10, v3);
  v23 = swift_allocObject();
  v24 = v45;
  *(v23 + 16) = v45;
  v25 = sub_232E00DD0();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = v24;
  v29 = v48;
  sub_232E00DE0();
  if (!v29)
  {
    v48 = v28;
    while (1)
    {
      v30 = sub_232E01720();
      v32 = v31;
      if (v31 >> 60 == 15)
      {
        goto LABEL_14;
      }

      v33 = v30;
      v46 = v30;
      v47 = v31;
      sub_232DB0970(v30, v31);
      sub_232DBE888();
      sub_232E00DB0();
      sub_232DB0E28(v46, v47);
      if ((v32 >> 62) > 1)
      {
        if (v32 >> 62 != 2)
        {
LABEL_13:
          sub_232DB0E28(v33, v32);
LABEL_14:
          sub_232E00DC0();

          v38 = a1;
          v39 = v48;
          goto LABEL_16;
        }

        v37 = *(v33 + 16);
        v36 = *(v33 + 24);
        sub_232DB0E28(v33, v32);
        v35 = v36 - v37;
        if (__OFSUB__(v36, v37))
        {
          __break(1u);
          sub_232DB0E28(v46, v47);
          sub_232DB0E28(v33, v32);

          v28 = v48;
          break;
        }
      }

      else
      {
        if (v32 >> 62 != 1)
        {
          goto LABEL_13;
        }

        result = sub_232DB0E28(v33, v32);
        LODWORD(v35) = HIDWORD(v33) - v33;
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          __break(1u);
          return result;
        }

        v35 = v35;
      }

      if (v35 < 0x8000)
      {
        goto LABEL_14;
      }
    }
  }

  v38 = a1;
  v39 = v28;
LABEL_16:
  sub_232DBE2B4(v38, v39);
  (*(v21 + 8))(v42, v44);
  return (*(v40 + 8))(v41, v43);
}

unint64_t sub_232DBE888()
{
  result = qword_2814E8478;
  if (!qword_2814E8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8478);
  }

  return result;
}

uint64_t sub_232DBE8DC()
{
  v10 = sub_232E01760();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232E01750();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_232E011C0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_232DB3688(0, &qword_2814E7C00, 0x277D85C78);
  sub_232E011B0();
  v11 = MEMORY[0x277D84F90];
  sub_232DC0A30(&qword_2814E7C08, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7460, &unk_232E06530);
  sub_232DC0A78(&qword_2814E7C30, &qword_27DDD7460, &unk_232E06530);
  sub_232E01860();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_232E01790();
  qword_27DDD7588 = result;
  return result;
}

Swift::Void __swiftcall SupportFlowSessionProcessor.processAnalytics()()
{
  v1 = sub_232E01190();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_232E011C0();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DDD7248 != -1)
  {
    swift_once();
  }

  v13[1] = qword_27DDD7588;
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_232DBEE24;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232DBF518;
  aBlock[3] = &block_descriptor_2;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_232E011A0();
  v15 = MEMORY[0x277D84F90];
  sub_232DC0A30(&qword_27DDD7590, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7598, &unk_232E06F80);
  sub_232DC0A78(&qword_27DDD75A0, &qword_27DDD7598, &unk_232E06F80);
  sub_232E01860();
  MEMORY[0x238395BB0](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

uint64_t sub_232DBEE24()
{
  v1 = *(v0 + 16);
  sub_232E00ED0();
  return sub_232DBEE4C();
}

uint64_t sub_232DBEE4C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_232E012A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232E00CE0();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = sub_232DC06AC();
  if (v14)
  {
    v41 = v14;
    sub_232E00CD0();
    sub_232E01210();
    v40 = v6;
    v15 = COERCE_DOUBLE(sub_232E01200());
    if (v16)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = v15;
    }

    sub_232E00C90();
    sub_232E01280();
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000015, 0x8000000232E0CEF0);
    sub_232E016D0();
    v38 = ObjectType;
    sub_232E01370();

    v39 = v13;
    v18 = *(v2 + 8);
    v18(v5, v1);
    sub_232E01280();
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000013, 0x8000000232E0CF10);
    sub_232E016D0();
    MEMORY[0x238395970](2629747, 0xE300000000000000);
    sub_232E01C30();
    v19 = sub_232E01C20();
    MEMORY[0x238395970](v19);

    MEMORY[0x238395970](0x73646E6F63657320, 0xE900000000000029);
    sub_232E01370();

    v18(v5, v1);
    sub_232E01280();
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CF30);
    sub_232E016D0();
    MEMORY[0x238395970](2629747, 0xE300000000000000);
    sub_232E01C30();
    v20 = sub_232E01C20();
    MEMORY[0x238395970](v20);

    MEMORY[0x238395970](0x73646E6F63657320, 0xE900000000000029);
    sub_232E01370();

    v18(v5, v1);
    sub_232E01280();
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000013, 0x8000000232E0CF50);
    sub_232E016D0();
    MEMORY[0x238395970](2629747, 0xE300000000000000);
    sub_232E01C30();
    v21 = sub_232E01C20();
    MEMORY[0x238395970](v21);

    MEMORY[0x238395970](0x73646E6F63657320, 0xE900000000000029);
    sub_232E01370();

    v18(v5, v1);
    sub_232E01280();
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_232E018F0();

    v44 = 0xD000000000000026;
    v45 = 0x8000000232E0CF70;
    v22 = sub_232E00CC0();
    MEMORY[0x238395970](v22);

    sub_232E01370();

    v18(v5, v1);
    v24 = v42;
    v23 = v43;
    v25 = *(v43 + 16);
    v26 = v11;
    v37 = v11;
    v27 = v40;
    v25(v42, v26, v40);
    v28 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v29 = (v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    (*(v23 + 32))(v33 + v28, v24, v27);
    *(v33 + v29) = v17 * 3600.0;
    *(v33 + v30) = v17 * 86400.0;
    *(v33 + v31) = v17 * 604800.0;
    *(v33 + v32) = v41;
    *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;
    sub_232E00EB0();

    v34 = *(v23 + 8);
    v34(v37, v27);
    return (v34)(v39, v27);
  }

  else
  {
    sub_232E01280();
    sub_232E01380();
    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_232DBF518(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232DBF5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75A8, &qword_232E06FC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = v82 - v8;
  v101 = sub_232E00A00();
  v112 = *(v101 - 8);
  v9 = *(v112 + 8);
  v10 = MEMORY[0x28223BE20](v101);
  v107 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v111 = v82 - v13;
  MEMORY[0x28223BE20](v12);
  v106 = v82 - v14;
  v105 = sub_232E00CE0();
  v15 = *(v105 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v105);
  v100 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v99 = v82 - v20;
  MEMORY[0x28223BE20](v19);
  v104 = v82 - v21;
  v22 = sub_232E00EF0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v103 = v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_232E012A0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a2;

  v31 = sub_232DC0230(sub_232DC09A8, v114, a1);
  v32 = *(v31 + 16);
  if (v32)
  {
    if (v32 >= 0x64)
    {
      v33 = 100;
    }

    else
    {
      v33 = *(v31 + 16);
    }

    v34 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v82[1] = v31;
    v35 = v31 + v34;
    v36 = sub_232E01240();
    v37 = v35;
    v93 = v36;
    v92 = "cess lookback events: ";
    v39 = *(v23 + 16);
    v38 = v23 + 16;
    v91 = v39;
    v90 = *(v38 + 56);
    v89 = (v15 + 16);
    v110 = (v15 + 8);
    v85 = *MEMORY[0x277D6A870];
    v84 = *MEMORY[0x277D6A878];
    v102 = (v27 + 8);
    v88 = (v112 + 8);
    v83 = *MEMORY[0x277D6A868];
    v94 = v38;
    v87 = (v38 - 8);
    v82[0] = v33;
    v40 = a3;
    v41 = v33;
    v98 = v40;
    v42 = v104;
    v43 = v105;
    v44 = v103;
    v97 = v26;
    v96 = v30;
    v95 = v22;
    do
    {
      v108 = v41;
      v109 = v37;
      v91(v44);
      sub_232E00EE0();
      v52 = *v89;
      v53 = v99;
      (*v89)(v99, v42, v43);
      v54 = v100;
      sub_232E00C90();
      sub_232E009E0();
      v52(v53, v42, v43);
      sub_232E00C90();
      sub_232E009E0();
      v52(v53, v42, v43);
      sub_232E00C90();
      sub_232E009E0();
      sub_232E009F0();
      sub_232E009D0();
      v55 = objc_allocWithZone(MEMORY[0x277CCA970]);
      v56 = sub_232E00CA0();
      v57 = sub_232E00CA0();
      v58 = [v55 initWithStartDate:v56 endDate:v57];

      v59 = *v110;
      v112 = v59;
      (v59)(v54, v43);
      (v59)(v53, v43);
      v60 = sub_232E01230();

      if (v60)
      {
        v61 = 1;
        LODWORD(v45) = v85;
        v62 = 1;
        v63 = v103;
      }

      else
      {
        v86 = 0;
        sub_232E009F0();
        sub_232E009D0();
        v64 = objc_allocWithZone(MEMORY[0x277CCA970]);
        v65 = sub_232E00CA0();
        v66 = sub_232E00CA0();
        v67 = [v64 initWithStartDate:v65 endDate:v66];

        v68 = v112;
        v68(v54, v43);
        v68(v53, v43);
        v69 = sub_232E01230();

        if (v69)
        {
          v61 = 1;
          LODWORD(v45) = v83;
          v62 = 1;
        }

        else
        {
          sub_232E009F0();
          sub_232E009D0();
          v70 = objc_allocWithZone(MEMORY[0x277CCA970]);
          v71 = v68;
          v72 = sub_232E00CA0();
          v73 = sub_232E00CA0();
          v45 = [v70 initWithStartDate:v72 endDate:v73];

          v71(v54, v43);
          v71(v53, v43);
          v74 = sub_232E01230();

          v62 = 0;
          v61 = v74 != 0;
          LODWORD(v45) = v83;
        }

        v63 = v103;
        v60 = v86;
      }

      v75 = sub_232E00E60();
      v76 = *(v75 - 8);
      v77 = *(v76 + 56);
      v77(v113, 1, 1, v75);
      if (v60)
      {
        v78 = 1;
      }

      else
      {
        v78 = v62;
      }

      v79 = v108;
      if ((v78 & 1) != 0 || v61)
      {
        if (v78)
        {
          v45 = v45;
        }

        else
        {
          v45 = v84;
        }

        v46 = v113;
        sub_232DC09C8(v113);
        (*(v76 + 104))(v46, v45, v75);
        v77(v46, 0, 1, v75);
      }

      v47 = v113;
      sub_232E00EC0();
      v48 = v96;
      sub_232E01280();
      sub_232E01370();
      v49 = v97;
      v86 = *v102;
      v86(v48, v97);
      sub_232DC09C8(v47);
      v50 = *v88;
      v51 = v101;
      (*v88)(v107, v101);
      v50();
      (v50)(v106, v51);
      v42 = v104;
      v43 = v105;
      (v112)(v104, v105);
      v44 = v63;
      (*v87)(v63, v95);
      v37 = v109 + v90;
      v41 = v79 - 1;
    }

    while (v41);

    sub_232E01280();
    v117 = 0;
    v118 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000017, 0x8000000232E0CFD0);
    v116 = v82[0];
    v80 = sub_232E01AB0();
    MEMORY[0x238395970](v80);

    MEMORY[0x238395970](0xD00000000000001FLL, 0x8000000232E0CFF0);
    sub_232E01360();

    return (v86)(v48, v49);
  }

  else
  {

    sub_232E01280();
    sub_232E01360();
    return (*(v27 + 8))(v30, v26);
  }
}

BOOL sub_232DC0100()
{
  v0 = sub_232E00CE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E00EE0();
  sub_232DC0A30(&qword_27DDD75B0, MEMORY[0x277CC9578]);
  v5 = sub_232E01490();
  (*(v1 + 8))(v4, v0);
  return (v5 & 1) == 0;
}

uint64_t sub_232DC0230(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a1;
  v48 = a2;
  v6 = sub_232E00EF0();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v41 - v11;
  result = MEMORY[0x28223BE20](v10);
  v51 = a3;
  v52 = &v41 - v14;
  v15 = 0;
  v18 = *(a3 + 64);
  v17 = a3 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v49 = v13;
  v50 = v13 + 32;
  v44 = (v13 + 8);
  v45 = v13 + 16;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v15;
    if (!v21)
    {
      break;
    }

    v24 = v4;
LABEL_10:
    v25 = *(v51 + 56);
    v26 = v49;
    v43 = *(v49 + 72);
    v27 = v46;
    (*(v49 + 16))(v46, v25 + v43 * (__clz(__rbit64(v21)) | (v15 << 6)), v6);
    v28 = *(v26 + 32);
    v29 = v6;
    v30 = v52;
    v31 = v29;
    v28(v52, v27);
    v32 = v47(v30);
    v4 = v24;
    if (v24)
    {
      (*v44)(v52, v31);
      v40 = v42;

      return v40;
    }

    v21 &= v21 - 1;
    if (v32)
    {
      v6 = v31;
      (v28)(v41, v52, v31);
      v33 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_232DF8FB0(0, *(v33 + 16) + 1, 1);
        v6 = v31;
        v33 = v53;
      }

      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v39 = v36 + 1;
        v42 = v36;
        sub_232DF8FB0(v35 > 1, v36 + 1, 1);
        v37 = v39;
        v36 = v42;
        v6 = v31;
        v33 = v53;
      }

      *(v33 + 16) = v37;
      v38 = *(v49 + 80);
      v42 = v33;
      result = (v28)(v33 + ((v38 + 32) & ~v38) + v36 * v43, v41, v6);
    }

    else
    {
      v6 = v31;
      result = (*v44)(v52, v31);
    }
  }

  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v22)
    {

      return v42;
    }

    v21 = *(v17 + 8 * v15);
    ++v23;
    if (v21)
    {
      v24 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id SupportFlowSessionProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SupportFlowSessionProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SupportFlowSessionProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DC06AC()
{
  v0 = sub_232E012A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232DB3688(0, &qword_27DDD75B8, 0x277CCA8D8);
  v5 = sub_232E01800();
  if (!v5)
  {
    v5 = [objc_opt_self() mainBundle];
  }

  v6 = v5;
  v7 = sub_232E014C0();
  v8 = sub_232E014C0();
  v9 = [v6 pathForResource:v7 ofType:v8];

  if (v9 && (v10 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) initWithContentsOfFile_], v9, v10))
  {
    v11 = [v10 allKeys];
    v12 = sub_232E015D0();

    v13 = sub_232DAA4D0(v12);

    return v13;
  }

  else
  {
    sub_232E01280();
    sub_232E01380();
    (*(v1 + 8))(v4, v0);
    return 0;
  }
}

uint64_t sub_232DC08DC(uint64_t a1)
{
  v3 = *(sub_232E00CE0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_232DBF5BC(a1, v1 + v4, v12);
}

uint64_t sub_232DC09C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75A8, &qword_232E06FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232DC0A30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232DC0A78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_232DC0C54(uint64_t a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_232DC0D04;

  return sub_232DC4850(a1);
}

uint64_t sub_232DC0D04(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v8 = *v1;
  *(v3 + 40) = a1;

  v5 = *(MEMORY[0x277D71598] + 4);
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  *v6 = v8;
  v6[1] = sub_232DC0E3C;

  return MEMORY[0x2821D93D8](a1);
}

uint64_t sub_232DC0E3C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_232DC0FD8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_232DC0F58;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_232DC0F58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  (*(v2 + 16))(v2, 1, 0);
  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_232DC0FD8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  swift_unknownObjectRelease();
  v5 = sub_232E00AD0();

  (*(v3 + 16))(v3, 0, v5);
  _Block_release(*(v0 + 24));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_232DC1088(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    v9 = *(*(v5 + 64) + 40);
    swift_unknownObjectRetain();
    sub_232D734CC(&v11, v9);
    return swift_continuation_throwingResume();
  }
}

id DeviceProfileExporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceProfileExporter.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeviceProfileExporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DC127C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_232DA72F4;

  return sub_232DC0C54(v2, v3);
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_232DC1370(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_232DA7C78;

  return sub_232DF3E24(a1, v4, v5, v7);
}

double sub_232DC143C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_232DD5634(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_232DC2C88(&qword_27DDD7470, &qword_232E06578, sub_232DB3718);
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_232D734CC((*(v12 + 56) + 32 * v9), a3);
    sub_232DC2480(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_232DC1518(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7480, &qword_232E06588);
  v40 = a2;
  result = sub_232E019F0();
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
      sub_232E01BB0();
      sub_232E01530();
      result = sub_232E01BE0();
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

uint64_t sub_232DC17EC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_232E019F0();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_232E01BB0();
      sub_232E01530();
      result = sub_232E01BE0();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_232DC1A88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7488, &unk_232E06590);
  v36 = a2;
  result = sub_232E019F0();
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

        sub_232DB0970(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_232E01BB0();
      sub_232E01530();
      result = sub_232E01BE0();
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

uint64_t sub_232DC1D6C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_232E019F0();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 32 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        sub_232DAB730(v28, v41);
      }

      v29 = *(v11 + 40);
      sub_232E01BB0();
      sub_232E01530();
      result = sub_232E01BE0();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_232DC2030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75E0, &qword_232E07088);
  v38 = a2;
  result = sub_232E019F0();
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
      sub_232E01BB0();
      sub_232E01530();
      result = sub_232E01BE0();
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

uint64_t sub_232DC22D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_232E01880() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_232E01BB0();

      sub_232E01530();
      v13 = sub_232E01BE0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_232DC2480(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_232E01880() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_232E01BB0();

      sub_232E01530();
      v14 = sub_232E01BE0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_232DC2630(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_232E01880() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_232E01BB0();

      sub_232E01530();
      v13 = sub_232E01BE0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_232DC27F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7480, &qword_232E06588);
  v2 = *v0;
  v3 = sub_232E019E0();
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

id sub_232DC2980(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_232E019E0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_232DC2ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7488, &unk_232E06590);
  v2 = *v0;
  v3 = sub_232E019E0();
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

        result = sub_232DB0970(v22, *(&v22 + 1));
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

void *sub_232DC2C88(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_232E019E0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_232DAB730(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_232DC2E28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75E0, &qword_232E07088);
  v2 = *v0;
  v3 = sub_232E019E0();
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
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

uint64_t sub_232DC2F90(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_232DADB5C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_232DC3084(uint64_t result)
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

  v3 = sub_232DADD9C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  result = sub_232E00EA0();
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

_OWORD *sub_232DC31B0(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_232DD5634(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_232D734CC(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_232DC2C88(&qword_27DDD7470, &qword_232E06578, sub_232DB3718);
    goto LABEL_7;
  }

  sub_232DC1D6C(v14, a4 & 1, &qword_27DDD7470, &qword_232E06578, sub_232DB3718);
  v20 = *a5;
  v21 = sub_232DD5634(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_232E01B40();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v24, MEMORY[0x277D839B0]);
  sub_232DC3A8C(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v24);
}

_OWORD *sub_232DC3350(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = MEMORY[0x277D83B88];
  v9 = *a5;
  v11 = sub_232DD5634(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return sub_232D734CC(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_232DC2C88(&qword_27DDD7470, &qword_232E06578, sub_232DB3718);
    goto LABEL_7;
  }

  sub_232DC1D6C(v14, a4 & 1, &qword_27DDD7470, &qword_232E06578, sub_232DB3718);
  v20 = *a5;
  v21 = sub_232DD5634(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_232E01B40();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v24, MEMORY[0x277D83B88]);
  sub_232DC3A08(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_1(&v24);
}

_OWORD *sub_232DC34F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837D0];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v11 = *a6;
  v13 = sub_232DD5634(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return sub_232D734CC(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_232DC2C88(&qword_27DDD7470, &qword_232E06578, sub_232DB3718);
    goto LABEL_7;
  }

  sub_232DC1D6C(v16, a5 & 1, &qword_27DDD7470, &qword_232E06578, sub_232DB3718);
  v22 = *a6;
  v23 = sub_232DD5634(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_232E01B40();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_232DC3984(v13, a3, a4, *v28, v28[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

_OWORD *sub_232DC371C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v34 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v13 = *a5;
  v15 = sub_232DD5634(a2, a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a4 & 1) != 0)
  {
LABEL_7:
    v21 = *a5;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_232D734CC(&v33, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a4 & 1) == 0)
  {
    sub_232DC2C88(&qword_27DDD7470, &qword_232E06578, sub_232DB3718);
    goto LABEL_7;
  }

  sub_232DC1D6C(v18, a4 & 1, &qword_27DDD7470, &qword_232E06578, sub_232DB3718);
  v24 = *a5;
  v25 = sub_232DD5634(a2, a3);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_232E01B40();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *a5;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v27 = v34;
  v28 = __swift_mutable_project_boxed_opaque_existential_0(&v33, v34);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31);
  sub_232DC3B10(v15, a2, a3, v31, v21, a6);

  return __swift_destroy_boxed_opaque_existential_1(&v33);
}

_OWORD *sub_232DC3984(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_232D734CC(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_232DC3A08(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_232D734CC(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_232DC3A8C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_232D734CC(&v11, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_232DC3B10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_232D734CC(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_232DC3BE4()
{
  v1 = sub_232E012A0();
  v0[79] = v1;
  v2 = *(v1 - 8);
  v0[80] = v2;
  v3 = *(v2 + 64) + 15;
  v0[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DC3CA0, 0, 0);
}

uint64_t sub_232DC3CA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7388, &qword_232E06210);
  inited = swift_initStackObject();
  v0[82] = inited;
  *(inited + 16) = xmmword_232E06FD0;
  *(inited + 32) = sub_232E014D0();
  *(inited + 40) = v2;
  *(inited + 48) = sub_232E014D0();
  *(inited + 56) = v3;
  *(inited + 64) = sub_232E014D0();
  *(inited + 72) = v4;
  *(inited + 80) = sub_232E014D0();
  *(inited + 88) = v5;
  *(inited + 96) = sub_232E014D0();
  *(inited + 104) = v6;
  *(inited + 112) = sub_232E014D0();
  *(inited + 120) = v7;
  *(inited + 128) = sub_232E014D0();
  *(inited + 136) = v8;
  *(inited + 144) = sub_232E014D0();
  *(inited + 152) = v9;
  *(inited + 160) = sub_232E014D0();
  *(inited + 168) = v10;
  *(inited + 176) = sub_232E014D0();
  *(inited + 184) = v11;
  *(inited + 192) = sub_232E014D0();
  *(inited + 200) = v12;
  *(inited + 208) = sub_232E014D0();
  *(inited + 216) = v13;
  *(inited + 224) = sub_232E014D0();
  *(inited + 232) = v14;
  *(inited + 240) = sub_232E014D0();
  *(inited + 248) = v15;
  *(inited + 256) = sub_232E014D0();
  *(inited + 264) = v16;
  *(inited + 272) = sub_232E014D0();
  *(inited + 280) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_232E06FE0;
  *(v18 + 32) = sub_232E014D0();
  *(v18 + 40) = v19;
  sub_232DC2F90(v18);
  v0[83] = inited;
  v0[84] = [objc_allocWithZone(MEMORY[0x277CBEB38]) initWithCapacity_];
  v20 = *(inited + 16);
  v0[85] = v20;
  if (v20)
  {
    v21 = objc_opt_self();
    v0[86] = v21;
    v0[87] = 0;
    v22 = v0[83];
    v0[88] = *(v22 + 32);
    v0[89] = *(v22 + 40);
    v23 = objc_allocWithZone(TPSDeviceCapability);

    v24 = [v23 init];
    v0[90] = v24;
    [v24 setType_];
    v25 = v24;
    v26 = sub_232E014C0();
    [v25 setKey_];

    v27 = [v21 targetValidationForCapability_];
    v0[91] = v27;
    v0[2] = v0;
    v0[7] = v0 + 64;
    v0[3] = sub_232DC40D4;
    v28 = swift_continuation_init();
    v0[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75D8, &qword_232E07078);
    v0[46] = MEMORY[0x277D85DD0];
    v0[47] = 1107296256;
    v0[48] = sub_232DC1088;
    v0[49] = &block_descriptor_3;
    v0[50] = v28;
    [v27 getCurrentStateWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v29 = v0[83];
    v30 = v0[81];

    v31 = v0[1];
    v32 = v0[84];

    return v31(v32);
  }
}

uint64_t sub_232DC40D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 736) = v2;
  if (v2)
  {
    v3 = sub_232DC4528;
  }

  else
  {
    v3 = sub_232DC41E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DC41E4()
{
  sub_232D734CC((v0 + 512), (v0 + 480));
  sub_232DAB730(v0 + 480, v0 + 544);
  sub_232DC5444();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 728);
    v2 = *(v0 + 720);
    v3 = *(v0 + 712);

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = *(v0 + 728);
    v5 = *(v0 + 720);
    v6 = *(v0 + 712);
    v7 = *(v0 + 704);
    v8 = *(v0 + 672);
    __swift_project_boxed_opaque_existential_1((v0 + 480), *(v0 + 504));
    v9 = sub_232E01AC0();
    *(v0 + 608) = v7;
    *(v0 + 616) = v6;
    [v8 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 480));
  v10 = *(v0 + 696) + 1;
  if (v10 == *(v0 + 680))
  {
    v11 = *(v0 + 664);
    v12 = *(v0 + 648);

    v13 = *(v0 + 8);
    v14 = *(v0 + 672);

    return v13(v14);
  }

  else
  {
    *(v0 + 696) = v10;
    v16 = *(v0 + 688);
    v17 = *(v0 + 664) + 16 * v10;
    *(v0 + 704) = *(v17 + 32);
    *(v0 + 712) = *(v17 + 40);
    v18 = objc_allocWithZone(TPSDeviceCapability);

    v19 = [v18 init];
    *(v0 + 720) = v19;
    [v19 setType_];
    v20 = v19;
    v21 = sub_232E014C0();
    [v20 setKey_];

    v22 = [v16 targetValidationForCapability_];
    *(v0 + 728) = v22;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 512;
    *(v0 + 24) = sub_232DC40D4;
    v23 = swift_continuation_init();
    *(v0 + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75D8, &qword_232E07078);
    *(v0 + 368) = MEMORY[0x277D85DD0];
    *(v0 + 376) = 1107296256;
    *(v0 + 384) = sub_232DC1088;
    *(v0 + 392) = &block_descriptor_3;
    *(v0 + 400) = v23;
    [v22 getCurrentStateWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_232DC4528()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[81];
  v6 = v0[80];
  v24 = v0[90];
  v25 = v0[79];
  swift_willThrow();
  sub_232E01250();
  v0[74] = 0;
  v0[75] = 0xE000000000000000;
  sub_232E018F0();
  v7 = v0[75];

  v0[72] = 0xD00000000000001DLL;
  v0[73] = 0x8000000232E0D1E0;
  MEMORY[0x238395970](v4, v3);

  v8 = v0[72];
  v9 = v0[73];
  sub_232E01380();

  swift_unknownObjectRelease();
  (*(v6 + 8))(v5, v25);
  v10 = v0[87] + 1;
  if (v10 == v0[85])
  {
    v11 = v0[83];
    v12 = v0[81];

    v13 = v0[1];
    v14 = v0[84];

    return v13(v14);
  }

  else
  {
    v0[87] = v10;
    v16 = v0[86];
    v17 = v0[83] + 16 * v10;
    v0[88] = *(v17 + 32);
    v0[89] = *(v17 + 40);
    v18 = objc_allocWithZone(TPSDeviceCapability);

    v19 = [v18 init];
    v0[90] = v19;
    [v19 setType_];
    v20 = v19;
    v21 = sub_232E014C0();
    [v20 setKey_];

    v22 = [v16 targetValidationForCapability_];
    v0[91] = v22;
    v0[2] = v0;
    v0[7] = v0 + 64;
    v0[3] = sub_232DC40D4;
    v23 = swift_continuation_init();
    v0[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75D8, &qword_232E07078);
    v0[46] = MEMORY[0x277D85DD0];
    v0[47] = 1107296256;
    v0[48] = sub_232DC1088;
    v0[49] = &block_descriptor_3;
    v0[50] = v23;
    [v22 getCurrentStateWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_232DC4850(uint64_t a1)
{
  v1[62] = a1;
  v2 = sub_232E012A0();
  v1[63] = v2;
  v3 = *(v2 - 8);
  v1[64] = v3;
  v4 = *(v3 + 64) + 15;
  v1[65] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75C0, &qword_232E07050) - 8) + 64) + 15;
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DC4954, 0, 0);
}

id sub_232DC4954()
{
  v46 = v0;
  v1 = sub_232DB3558(MEMORY[0x277D84F90]);
  *(v0 + 480) = v1;
  v2 = objc_opt_self();
  *(v0 + 16) = [v2 isSeniorUser];
  *(v0 + 40) = MEMORY[0x277D839B0];
  sub_232D734CC((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v1;
  v4 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 48, *(v0 + 72));
  sub_232DC31B0(*v4, 3487349, 0xE300000000000000, isUniquelyReferenced_nonNull_native, &v45);
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v5 = v45;
  result = [v2 sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  v8 = *(v0 + 496);
  v9 = [result userType];

  v10 = MEMORY[0x277D83B88];
  *(v0 + 104) = MEMORY[0x277D83B88];
  *(v0 + 80) = v9;
  sub_232D734CC((v0 + 80), (v0 + 112));
  LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
  v45 = v5;
  v11 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 112, *(v0 + 136));
  sub_232DC3350(*v11, 0x6570795472657375, 0xE800000000000000, v7, &v45);
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v12 = v45;
  v13 = [v8 experiment];
  v14 = [v13 camp];

  *(v0 + 144) = v14;
  *(v0 + 168) = v10;
  sub_232D734CC((v0 + 144), (v0 + 176));
  LOBYTE(v14) = swift_isUniquelyReferenced_nonNull_native();
  v45 = v12;
  v15 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 176, *(v0 + 200));
  sub_232DC3350(*v15, 0x656D697265707865, 0xEE00706D6143746ELL, v14, &v45);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  *(v0 + 480) = v45;
  result = [v2 sharedInstance];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = [result lastMajorVersionUpdateDate];

  if (v17)
  {
    v18 = *(v0 + 528);
    sub_232E00CB0();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v0 + 536);
  v21 = *(v0 + 528);
  v22 = sub_232E00CE0();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v21, v19, 1, v22);
  sub_232DC53A8(v21, v20);
  v24 = (*(v23 + 48))(v20, 1, v22);
  v25 = *(v0 + 536);
  if (v24 == 1)
  {
    sub_232DAB434(*(v0 + 536), &qword_27DDD75C0, &qword_232E07050);
    sub_232DC143C(0xD00000000000001CLL, 0x8000000232E0D130, (v0 + 240));
    sub_232DAB434(v0 + 240, &qword_27DDD75C8, &qword_232E07058);
    v26 = *(v0 + 480);
  }

  else
  {
    *(v0 + 232) = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 208));
    (*(v23 + 32))(boxed_opaque_existential_1, v25, v22);
    sub_232D734CC((v0 + 208), (v0 + 432));
    v28 = *(v0 + 480);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v28;
    v30 = *(v0 + 456);
    v31 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 432, v30);
    v32 = *(v30 - 8);
    v33 = *(v32 + 64) + 15;
    v34 = swift_task_alloc();
    (*(v32 + 16))(v34, v31, v30);
    sub_232DC371C(v34, 0xD00000000000001CLL, 0x8000000232E0D130, v29, &v45, v22);
    __swift_destroy_boxed_opaque_existential_1((v0 + 432));

    v26 = v45;
  }

  v35 = [objc_opt_self() tps_userLanguageCode];
  v36 = sub_232E014D0();
  v38 = v37;

  *(v0 + 296) = MEMORY[0x277D837D0];
  *(v0 + 272) = v36;
  *(v0 + 280) = v38;
  sub_232D734CC((v0 + 272), (v0 + 304));
  LOBYTE(v35) = swift_isUniquelyReferenced_nonNull_native();
  v45 = v26;
  v39 = *(v0 + 328);
  v40 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 304, v39);
  v41 = *(v39 - 8);
  v42 = *(v41 + 64) + 15;
  v43 = swift_task_alloc();
  (*(v41 + 16))(v43, v40, v39);
  sub_232DC34F0(*v43, v43[1], 0xD00000000000001ALL, 0x8000000232E0D150, v35, &v45);
  __swift_destroy_boxed_opaque_existential_1((v0 + 304));

  *(v0 + 480) = v45;
  v44 = swift_task_alloc();
  *(v0 + 544) = v44;
  *v44 = v0;
  v44[1] = sub_232DC4F60;

  return sub_232DC3BE4();
}

uint64_t sub_232DC4F60(uint64_t a1)
{
  v2 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = a1;

  return MEMORY[0x2822009F8](sub_232DC5060, 0, 0);
}

uint64_t sub_232DC5060()
{
  v17 = v0;
  v1 = *(v0 + 552);
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75D0, &qword_232E07068);
  sub_232E01460();
  sub_232DC143C(0xD000000000000012, 0x8000000232E0D170, (v0 + 368));
  sub_232DAB434(v0 + 368, &qword_27DDD75C8, &qword_232E07058);
  v2 = *(v0 + 480);
  v3 = *(v0 + 552);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  sub_232E01250();
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_232E018F0();
  v9 = v16;
  *(v0 + 464) = v15;
  *(v0 + 472) = v9;
  MEMORY[0x238395970](0xD000000000000025, 0x8000000232E0D190);
  v10 = sub_232E01450();
  *(v0 + 488) = v10;
  sub_232E019A0();

  v11 = *(v0 + 464);
  v12 = *(v0 + 472);
  sub_232E01370();

  (*(v8 + 8))(v6, v7);

  v13 = *(v0 + 8);

  return v13(v2);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_232DC53A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75C0, &qword_232E07050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_232DC5444()
{
  result = qword_2814E7BD0;
  if (!qword_2814E7BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814E7BD0);
  }

  return result;
}

unint64_t sub_232DC5498()
{
  result = qword_27DDD75E8;
  if (!qword_27DDD75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD75E8);
  }

  return result;
}

unint64_t sub_232DC54F0()
{
  result = qword_27DDD75F0;
  if (!qword_27DDD75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD75F0);
  }

  return result;
}

unint64_t sub_232DC5544()
{
  result = qword_2814E7CC8;
  if (!qword_2814E7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CC8);
  }

  return result;
}

uint64_t sub_232DC5598@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7628, &qword_232E074A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v36 - v4;
  v43 = sub_232E00B10();
  v38 = *(v43 - 8);
  v5 = *(v38 + 64);
  v6 = MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v36 - v8;
  v9 = sub_232E01320();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_232E01300();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v22 = *(v1 + 24);
  v21 = *(v1 + 32);
  v23 = objc_opt_self();

  [v23 isPhoneUI];
  sub_232E012F0();
  v37 = v14;
  v24 = *(v14 + 16);
  v39 = v13;
  v24(v18, v20, v13);
  v25 = *(v1 + 40);

  v26 = v12;
  sub_232E01310();
  v27 = [*(v1 + 16) displayName];
  if (v27)
  {
    v28 = v27;
    sub_232E014D0();
  }

  v29 = v41;
  sub_232E00AF0();
  v30 = v9;
  v46[3] = v9;
  v46[4] = sub_232DC6854(&qword_2814E7C80);
  v46[5] = sub_232DC6854(&qword_2814E7C88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  v32 = v40;
  (*(v40 + 16))(boxed_opaque_existential_1, v26, v9);
  v33 = v38;
  v34 = v43;
  (*(v38 + 16))(v42, v29, v43);
  (*(v33 + 56))(v44, 1, 1, v34);
  sub_232E00890();
  (*(v33 + 8))(v29, v34);
  (*(v32 + 8))(v26, v30);
  return (*(v37 + 8))(v20, v39);
}

uint64_t sub_232DC5A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_232DC5B30;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_232DC5B30(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_232DC5C34()
{
  result = qword_27DDD75F8;
  if (!qword_27DDD75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD75F8);
  }

  return result;
}

unint64_t sub_232DC5C88()
{
  result = qword_2814E7CC0;
  if (!qword_2814E7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CC0);
  }

  return result;
}

unint64_t sub_232DC5CE0()
{
  result = qword_27DDD7600;
  if (!qword_27DDD7600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD7608, qword_232E07138);
    sub_232DC5C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7600);
  }

  return result;
}

uint64_t sub_232DC5D64(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_232DC62C4();
  *v6 = v2;
  v6[1] = sub_232DA72F4;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_232DC5E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_232DA72F4;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_232DC5ED0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7628, &qword_232E074A8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_232E00B00();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232E00D60();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_232E014B0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_232E00B10();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_232E008F0();
  __swift_allocate_value_buffer(v15, qword_2814E9B20);
  __swift_project_value_buffer(v15, qword_2814E9B20);
  sub_232E014A0();
  sub_232E00D20();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_232E00B20();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_232E008E0();
}

unint64_t sub_232DC61BC()
{
  result = qword_2814E7CD8;
  if (!qword_2814E7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CD8);
  }

  return result;
}

unint64_t sub_232DC6214()
{
  result = qword_2814E7CB8;
  if (!qword_2814E7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CB8);
  }

  return result;
}

unint64_t sub_232DC626C()
{
  result = qword_2814E7C90;
  if (!qword_2814E7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7C90);
  }

  return result;
}

unint64_t sub_232DC62C4()
{
  result = qword_27DDD7610;
  if (!qword_27DDD7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7610);
  }

  return result;
}

unint64_t sub_232DC6328()
{
  result = qword_2814E7CB0;
  if (!qword_2814E7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CB0);
  }

  return result;
}

unint64_t sub_232DC637C()
{
  result = qword_2814E7CA8;
  if (!qword_2814E7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CA8);
  }

  return result;
}

unint64_t sub_232DC63D4()
{
  result = qword_2814E7CA0;
  if (!qword_2814E7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CA0);
  }

  return result;
}

uint64_t sub_232DC6428@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814E7CE0 != -1)
  {
    swift_once();
  }

  v2 = sub_232E008F0();
  v3 = __swift_project_value_buffer(v2, qword_2814E9B20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_232DC64D4()
{
  result = qword_27DDD7618;
  if (!qword_27DDD7618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD7620, &qword_232E07378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7618);
  }

  return result;
}

uint64_t sub_232DC6538(uint64_t a1)
{
  v2 = sub_232DC5544();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_232DC6588()
{
  result = qword_2814E7C98;
  if (!qword_2814E7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7C98);
  }

  return result;
}

uint64_t sub_232DC65E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_232DA7C78;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_232DC66A4(uint64_t a1)
{
  v2 = sub_232DC63D4();

  return MEMORY[0x28210C4B8](a1, v2);
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

uint64_t sub_232DC6714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_232DC675C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_232DC6854(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_232E01320();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232DC68A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  v4 = sub_232E012A0();
  v3[41] = v4;
  v5 = *(v4 - 8);
  v3[42] = v5;
  v6 = *(v5 + 64) + 15;
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DC696C, 0, 0);
}

uint64_t sub_232DC696C()
{
  [*(v0 + 320) beginIndexBatch];
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_232DC6A10;
  v2 = *(v0 + 320);

  return sub_232DCD814(v2);
}

uint64_t sub_232DC6A10()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_232DC6D64;
  }

  else
  {
    v3 = sub_232DC6B24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DC6B24()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  v4 = sub_232E00C50();
  v0[46] = v4;
  v0[10] = v0;
  v0[11] = sub_232DC6C54;
  v5 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_232DCA134;
  v0[29] = &block_descriptor_12;
  v0[30] = v5;
  [v2 endIndexBatchWithClientState:v4 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_232DC6C54()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_232DC70D0;
  }

  else
  {
    v3 = sub_232DC7060;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DC6D64()
{
  v1 = v0[45];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v5 = v0[41];
  sub_232E01270();
  sub_232E018F0();

  swift_getErrorValue();
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[36];
  v9 = sub_232E01B50();
  MEMORY[0x238395970](v9);

  sub_232E01380();

  (*(v3 + 8))(v2, v5);
  v10 = sub_232E00C50();
  v0[48] = v10;
  v0[2] = v0;
  v0[3] = sub_232DC6F50;
  v11 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_232DCA134;
  v0[21] = &block_descriptor_8;
  v0[22] = v11;
  [v4 endIndexBatchWithClientState:v10 completionHandler:{v0 + 18, 0xD000000000000018, 0x8000000232E0D340}];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DC6F50()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_232DC71C4;
  }

  else
  {
    v3 = sub_232DC7148;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DC7060()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_232DC70D0()
{
  v1 = v0[46];
  v2 = v0[47];
  swift_willThrow();

  v3 = v0[47];
  v4 = v0[43];

  v5 = v0[1];

  return v5();
}

uint64_t sub_232DC7148()
{
  v1 = *(v0 + 360);

  swift_willThrow();
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_232DC71C4()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[45];
  swift_willThrow();

  v4 = v0[49];
  v5 = v0[43];

  v6 = v0[1];

  return v6();
}

uint64_t sub_232DC7248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  v4 = sub_232E012A0();
  v3[41] = v4;
  v5 = *(v4 - 8);
  v3[42] = v5;
  v6 = *(v5 + 64) + 15;
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DC730C, 0, 0);
}

uint64_t sub_232DC730C()
{
  [*(v0 + 320) beginIndexBatch];
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_232DC73B0;
  v2 = *(v0 + 320);

  return sub_232DDA814(v2);
}

uint64_t sub_232DC73B0()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_232DC7704;
  }

  else
  {
    v3 = sub_232DC74C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DC74C4()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  v4 = sub_232E00C50();
  v0[46] = v4;
  v0[10] = v0;
  v0[11] = sub_232DC75F4;
  v5 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_232DCA134;
  v0[29] = &block_descriptor_20;
  v0[30] = v5;
  [v2 endIndexBatchWithClientState:v4 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_232DC75F4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_232DC8980;
  }

  else
  {
    v3 = sub_232DC895C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DC7704()
{
  v1 = v0[45];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v5 = v0[41];
  sub_232E01270();
  sub_232E018F0();

  swift_getErrorValue();
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[36];
  v9 = sub_232E01B50();
  MEMORY[0x238395970](v9);

  sub_232E01380();

  (*(v3 + 8))(v2, v5);
  v10 = sub_232E00C50();
  v0[48] = v10;
  v0[2] = v0;
  v0[3] = sub_232DC78F0;
  v11 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_232DCA134;
  v0[21] = &block_descriptor_16;
  v0[22] = v11;
  [v4 endIndexBatchWithClientState:v10 completionHandler:{v0 + 18, 0xD000000000000018, 0x8000000232E0D340}];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DC78F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_232DC897C;
  }

  else
  {
    v3 = sub_232DC8984;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DC7A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  v4 = sub_232E012A0();
  v3[41] = v4;
  v5 = *(v4 - 8);
  v3[42] = v5;
  v6 = *(v5 + 64) + 15;
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DC7AC4, 0, 0);
}

uint64_t sub_232DC7AC4()
{
  [*(v0 + 320) beginIndexBatch];
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_232DC7B68;
  v2 = *(v0 + 320);

  return sub_232DEBDC0(v2);
}

uint64_t sub_232DC7B68()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_232DC7DAC;
  }

  else
  {
    v3 = sub_232DC7C7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DC7C7C()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  v4 = sub_232E00C50();
  v0[46] = v4;
  v0[10] = v0;
  v0[11] = sub_232DC75F4;
  v5 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_232DCA134;
  v0[29] = &block_descriptor_28;
  v0[30] = v5;
  [v2 endIndexBatchWithClientState:v4 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_232DC7DAC()
{
  v1 = v0[45];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v5 = v0[41];
  sub_232E01270();
  sub_232E018F0();

  swift_getErrorValue();
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[36];
  v9 = sub_232E01B50();
  MEMORY[0x238395970](v9);

  sub_232E01380();

  (*(v3 + 8))(v2, v5);
  v10 = sub_232E00C50();
  v0[48] = v10;
  v0[2] = v0;
  v0[3] = sub_232DC78F0;
  v11 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_232DCA134;
  v0[21] = &block_descriptor_24;
  v0[22] = v11;
  [v4 endIndexBatchWithClientState:v10 completionHandler:{v0 + 18, 0xD000000000000018, 0x8000000232E0D340}];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DC7F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[41] = a4;
  v5[42] = v4;
  v5[39] = a2;
  v5[40] = a3;
  v5[38] = a1;
  v6 = sub_232E012A0();
  v5[43] = v6;
  v7 = *(v6 - 8);
  v5[44] = v7;
  v8 = *(v7 + 64) + 15;
  v5[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DC8060, 0, 0);
}

uint64_t sub_232DC8060()
{
  v1 = *(v0 + 320);
  [*(v0 + 336) beginIndexBatch];
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 368) = v3;
  *v3 = v0;
  v3[1] = sub_232DC8160;
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);

  return v7(v4);
}

uint64_t sub_232DC8160()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_232DC84B4;
  }

  else
  {
    v3 = sub_232DC8274;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DC8274()
{
  v1 = v0[42];
  v2 = v0[38];
  v3 = v0[39];
  v4 = sub_232E00C50();
  v0[48] = v4;
  v0[10] = v0;
  v0[11] = sub_232DC83A4;
  v5 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_232DCA134;
  v0[29] = &block_descriptor_4;
  v0[30] = v5;
  [v1 endIndexBatchWithClientState:v4 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_232DC83A4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_232DC88B0;
  }

  else
  {
    v3 = sub_232D71BA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DC84B4()
{
  v1 = v0[47];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[42];
  v5 = v0[43];
  sub_232E01270();
  sub_232E018F0();

  swift_getErrorValue();
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[36];
  v9 = sub_232E01B50();
  MEMORY[0x238395970](v9);

  sub_232E01380();

  (*(v3 + 8))(v2, v5);
  v10 = sub_232E00C50();
  v0[50] = v10;
  v0[2] = v0;
  v0[3] = sub_232DC86A0;
  v11 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_232DCA134;
  v0[21] = &block_descriptor_4;
  v0[22] = v11;
  [v4 endIndexBatchWithClientState:v10 completionHandler:{v0 + 18, 0xD000000000000018, 0x8000000232E0D340}];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DC86A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  if (v2)
  {
    v3 = sub_232DC882C;
  }

  else
  {
    v3 = sub_232DC87B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DC87B0()
{
  v1 = *(v0 + 376);

  swift_willThrow();
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_232DC882C()
{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[47];
  swift_willThrow();

  v4 = v0[51];
  v5 = v0[45];

  v6 = v0[1];

  return v6();
}

uint64_t sub_232DC88B0()
{
  v1 = v0[48];
  v2 = v0[49];
  swift_willThrow();

  v3 = v0[49];
  v4 = v0[45];

  v5 = v0[1];

  return v5();
}

uint64_t sub_232DC8988(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7650, &unk_232E07500);
    v2 = sub_232E01A00();
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
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_232D734CC(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_232D734CC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_232E01890();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_232D734CC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_232DC8C48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7650, &unk_232E07500);
    v2 = sub_232E01A00();
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
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_232DAB730(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_232D734CC(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_232D734CC(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_232D734CC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_232E01890();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_232D734CC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_232DC90BC(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___TPSContextualEventBuilder_eventType];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v2[OBJC_IVAR___TPSContextualEventBuilder_stream];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR___TPSContextualEventBuilder_dictionary] = a1;
  v6 = objc_opt_self();

  v7 = sub_232E01450();
  v8 = [v6 typeFromEventDictionary_];

  *v4 = v8;
  v4[8] = 0;
  if (*(a1 + 16) && (v9 = sub_232DD5634(0x6D6165727473, 0xE600000000000000), (v10 & 1) != 0))
  {
    sub_232DAB730(*(a1 + 56) + 32 * v9, v19);

    v11 = swift_dynamicCast();
    v12 = v16;
    v13 = v17;
    if (!v11)
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {

    v12 = 0;
    v13 = 0;
  }

  v14 = *(v5 + 1);
  *v5 = v12;
  *(v5 + 1) = v13;

  v18.receiver = v2;
  v18.super_class = type metadata accessor for TipsContextualEventBuilder();
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_232DC927C()
{
  if (*(v0 + OBJC_IVAR___TPSContextualEventBuilder_eventType + 8))
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR___TPSContextualEventBuilder_eventType);
  if (!v2)
  {
    if (sub_232DC9458())
    {
      v12 = objc_opt_self();
      v13 = *(v0 + OBJC_IVAR___TPSContextualEventBuilder_dictionary);

      sub_232DC8C48(v14);

      v9 = sub_232E01450();

      v10 = [v12 contextualBiomeEventFromDuetEventDictionary_];
      goto LABEL_9;
    }

    return 0;
  }

  if (v2 == 3)
  {
    v6 = *(v0 + OBJC_IVAR___TPSContextualEventBuilder_dictionary);

    sub_232DC8C48(v7);

    v5 = MEMORY[0x277D71710];
    goto LABEL_8;
  }

  if (v2 != 2)
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR___TPSContextualEventBuilder_dictionary);

  sub_232DC8C48(v4);

  v5 = MEMORY[0x277D71728];
LABEL_8:
  v8 = objc_allocWithZone(v5);
  v9 = sub_232E01450();

  v10 = [v8 initWithDictionary_];
LABEL_9:
  v11 = v10;

  return v11;
}

uint64_t sub_232DC9458()
{
  if ((*(v0 + OBJC_IVAR___TPSContextualEventBuilder_eventType + 8) & 1) != 0 || *(v0 + OBJC_IVAR___TPSContextualEventBuilder_eventType))
  {
    v1 = 0;
  }

  else
  {
    v3 = v0 + OBJC_IVAR___TPSContextualEventBuilder_stream;
    v4 = *(v0 + OBJC_IVAR___TPSContextualEventBuilder_stream);
    v5 = *(v3 + 8);
    v6 = *MEMORY[0x277D71958];
    v7 = sub_232E014D0();
    if (v5)
    {
      if (v4 == v7 && v5 == v8)
      {
        v1 = 1;
      }

      else
      {
        v1 = sub_232E01AD0();
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

id TipsContextualEventBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipsContextualEventBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsContextualEventBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DC9690(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v9 = sub_232E012A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() standardUserDefaults];
  *&v27 = 0xD00000000000001ELL;
  *(&v27 + 1) = 0x8000000232E0D510;
  MEMORY[0x238395970](a1, a2);

  v15 = sub_232E014C0();

  v16 = [v14 objectForKey_];

  if (v16)
  {
    sub_232E01850();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v18 = v25;
      v17 = v26;
      v19 = v26 >> 62;
      if ((v26 >> 62) > 1)
      {
        if (v19 != 2 || *(v25 + 16) == *(v25 + 24))
        {
          goto LABEL_15;
        }
      }

      else if (v19)
      {
        if (v25 == v25 >> 32)
        {
LABEL_15:
          sub_232DB091C(v25, v26);
          goto LABEL_16;
        }
      }

      else if ((v26 & 0xFF000000000000) == 0)
      {
        goto LABEL_15;
      }

      v20 = sub_232E00990();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      sub_232E00980();
      a3();
      sub_232E00970();
      sub_232DB091C(v18, v17);

      return LOWORD(v29[0]);
    }
  }

  else
  {
    sub_232DAB434(v29, &qword_27DDD74C0, &qword_232E07DF0);
  }

LABEL_16:
  sub_232E01270();
  sub_232E01360();
  (*(v10 + 8))(v13, v9);
  return 0;
}

uint64_t sub_232DC9B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v19 = sub_232E012A0();
  v8 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v9 = sub_232E009C0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_232E009B0();
  a5();
  v12 = sub_232E009A0();
  v14 = v13;

  v15 = [objc_opt_self() standardUserDefaults];
  v16 = sub_232E00C50();
  MEMORY[0x238395970](a1, a2);
  v17 = sub_232E014C0();

  [v15 setObject:v16 forKey:v17];

  return sub_232DB091C(v12, v14);
}

uint64_t sub_232DC9E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(*(sub_232E012A0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = a3(a1, a2);
  v9 = v8;
  v10 = sub_232E009C0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_232E009B0();
  sub_232DD1FF8();
  v13 = sub_232E009A0();

  sub_232DB091C(v7, v9);
  return v13;
}

uint64_t sub_232DCA018(uint64_t a1)
{
  result = MEMORY[0x238395B40](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_232DD0290(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232DCA134(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_232DCA1E0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_232E012A0();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DCA2B0, v2, 0);
}

uint64_t sub_232DCA2B0()
{
  v1 = v0[16];
  v2 = v0[10];
  sub_232E01270();
  sub_232E018F0();

  if (v2 >> 62)
  {
    v40 = v0[10];
    if (v2 < 0)
    {
      v41 = v0[10];
    }

    v3 = sub_232E019C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v42 = MEMORY[0x277D84F90];
    result = sub_232DF8F90(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v6 = v42;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        MEMORY[0x238395D50](v7, v0[10]);
        v8 = sub_232E013A0();
        v10 = v9;
        swift_unknownObjectRelease();
        v12 = *(v42 + 16);
        v11 = *(v42 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_232DF8F90((v11 > 1), v12 + 1, 1);
        }

        ++v7;
        *(v42 + 16) = v12 + 1;
        v13 = v42 + 16 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
      }

      while (v3 != v7);
    }

    else
    {
      v14 = (v0[10] + 32);
      do
      {
        v15 = *v14;
        v16 = sub_232E013A0();
        v18 = v17;

        v20 = *(v42 + 16);
        v19 = *(v42 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_232DF8F90((v19 > 1), v20 + 1, 1);
        }

        *(v42 + 16) = v20 + 1;
        v21 = v42 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        ++v14;
        --v3;
      }

      while (v3);
    }

    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v22 = v0[16];
  v23 = v0[13];
  v24 = v0[14];
  v25 = MEMORY[0x238395A10](v6, MEMORY[0x277D837D0]);
  v27 = v26;

  MEMORY[0x238395970](v25, v27);

  sub_232E01370();

  v28 = *(v24 + 8);
  v0[17] = v28;
  v0[18] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v22, v23);
  if (v2 >> 62)
  {
    v31 = v0[10];
    if (v2 < 0)
    {
      v32 = v0[10];
    }

    result = sub_232E019C0();
    v0[19] = result;
    if (result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[19] = result;
    if (result)
    {
LABEL_19:
      v29 = v0[10];
      v0[20] = v4;
      if ((v29 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x238395D50](0);
LABEL_29:
        v36 = v30;
        v0[21] = v30;
        v0[22] = 1;
        v37 = swift_task_alloc();
        v0[23] = v37;
        *v37 = v0;
        v37[1] = sub_232DCA688;
        v38 = v0[11];
        v39 = v0[12];

        return sub_232DCB1B0(v36, 1, v38);
      }

      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v29 + 32);
        goto LABEL_29;
      }

LABEL_36:
      __break(1u);
      return result;
    }
  }

  v0[25] = v4;
  v33 = swift_task_alloc();
  v0[26] = v33;
  *v33 = v0;
  v33[1] = sub_232DCA934;
  v34 = v0[12];
  v35 = v0[10];

  return sub_232DCCB68(v35);
}

uint64_t sub_232DCA688()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_232DCAB40;
  }

  else
  {
    v6 = sub_232DCA7B4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_232DCA7B4()
{
  v1 = *(v0 + 176);
  if (v1 == *(v0 + 152))
  {
    *(v0 + 200) = *(v0 + 160);
    v2 = swift_task_alloc();
    *(v0 + 208) = v2;
    *v2 = v0;
    v2[1] = sub_232DCA934;
    v3 = *(v0 + 96);
    v4 = *(v0 + 80);

    sub_232DCCB68(v4);
    return;
  }

  v5 = *(v0 + 80);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x238395D50](*(v0 + 176));
  }

  else
  {
    if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v6 = *(v5 + 8 * v1 + 32);
  }

  v7 = v6;
  *(v0 + 168) = v6;
  *(v0 + 176) = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_232DCA688;
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);

  sub_232DCB1B0(v7, 1, v9);
}

uint64_t sub_232DCA934()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_232DCAF08;
  }

  else
  {
    v6 = sub_232DCAA60;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_232DCAA60()
{
  v1 = v0[25];
  if (*(v1 + 16))
  {
    sub_232DBD398();
    swift_allocError();
    *v2 = v1;
    *(v2 + 8) = 0;
    *(v2 + 16) = 3;
    swift_willThrow();
    v4 = v0[15];
    v3 = v0[16];
  }

  else
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[25];
  }

  v5 = v0[1];

  return v5();
}

void sub_232DCAB40()
{
  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 168);
    v35 = *(v0 + 144);
    v36 = *(v0 + 160);
    v34 = *(v0 + 136);
    v4 = *(v0 + 120);
    v5 = *(v0 + 104);

    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    sub_232E01270();
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xE000000000000000;
    sub_232E018F0();
    v9 = *(v0 + 64);

    *(v0 + 40) = 0xD000000000000010;
    *(v0 + 48) = 0x8000000232E0D470;
    v10 = sub_232E013A0();
    MEMORY[0x238395970](v10);

    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    sub_232E01380();

    v34(v4, v5);
    sub_232DBD398();
    v13 = swift_allocError();
    *v14 = v6;
    *(v14 + 8) = v7;
    *(v14 + 16) = v8;
    sub_232DD0238(v6, v7, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v0 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_232DADC68(0, v16[2] + 1, 1, *(v0 + 160));
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_232DADC68((v17 > 1), v18 + 1, 1, v16);
    }

    sub_232DD0264(v6, v7, v8);
    v16[2] = v18 + 1;
    v16[v18 + 4] = v13;

    v19 = *(v0 + 176);
    if (v19 == *(v0 + 152))
    {
      *(v0 + 200) = v16;
      v20 = swift_task_alloc();
      *(v0 + 208) = v20;
      *v20 = v0;
      v20[1] = sub_232DCA934;
      v21 = *(v0 + 96);
      v22 = *(v0 + 80);

      sub_232DCCB68(v22);
      return;
    }

    *(v0 + 160) = v16;
    v28 = *(v0 + 80);
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x238395D50](v19);
    }

    else
    {
      if (v19 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v29 = *(v28 + 8 * v19 + 32);
    }

    v30 = v29;
    *(v0 + 168) = v29;
    *(v0 + 176) = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      v31 = swift_task_alloc();
      *(v0 + 184) = v31;
      *v31 = v0;
      v31[1] = sub_232DCA688;
      v32 = *(v0 + 88);
      v33 = *(v0 + 96);

      sub_232DCB1B0(v30, 1, v32);
      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v23 = *(v0 + 160);

  v24 = *(v0 + 192);
  v26 = *(v0 + 120);
  v25 = *(v0 + 128);

  v27 = *(v0 + 8);

  v27();
}

uint64_t sub_232DCAF08()
{
  v1 = v0[27];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[13];
  sub_232E01270();
  sub_232E01380();

  v3(v4, v5);
  v6 = v0[25];
  if (*(v6 + 16))
  {
    sub_232DBD398();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0;
    *(v7 + 16) = 3;
    swift_willThrow();
    v9 = v0[15];
    v8 = v0[16];
  }

  else
  {
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[25];
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_232DCB03C(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_232E019C0())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
    sub_232E01970();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x238395D50](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_232E01950();
      v12 = *(v16 + 16);
      sub_232E01980();
      sub_232E01990();
      sub_232E01960();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_232DCB1B0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 312) = a3;
  *(v4 + 320) = v3;
  *(v4 + 505) = a2;
  *(v4 + 304) = a1;
  v5 = *(*(type metadata accessor for UserGuideIndexItem(0) - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  v6 = sub_232E012A0();
  *(v4 + 336) = v6;
  v7 = *(v6 - 8);
  *(v4 + 344) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 352) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DCB2A4, v3, 0);
}

uint64_t sub_232DCB2A4()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[38];
  sub_232E01270();
  sub_232E018F0();

  v5 = sub_232E013A0();
  MEMORY[0x238395970](v5);

  sub_232E01360();

  v6 = *(v2 + 8);
  v0[45] = v6;
  v0[46] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  type metadata accessor for UserGuideIndexHelper();
  v7 = swift_task_alloc();
  v0[47] = v7;
  *v7 = v0;
  v7[1] = sub_232DCB3FC;
  v8 = v0[41];
  v9 = v0[38];

  return sub_232DB6A74(v8, v9);
}

uint64_t sub_232DCB3FC()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = sub_232DCC858;
  }

  else
  {
    v6 = sub_232DCB528;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_232DCB528(uint64_t a1)
{
  v2 = *(v1 + 312);
  v3 = *(v1 + 505);
  if (v2 <= 1)
  {
    v2 = 1;
  }

  *(v1 + 392) = v2;
  if (v3 == 1)
  {
    v4 = v1 + 80;
    v5 = *(v1 + 320);
    v6 = sub_232DE833C(a1);
    *(v1 + 400) = v6;
    *(v1 + 80) = v1;
    *(v1 + 120) = v1 + 288;
    *(v1 + 88) = sub_232DCBC18;
    v7 = swift_continuation_init();
    *(v1 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7668, &qword_232E07568);
    *(v1 + 208) = MEMORY[0x277D85DD0];
    *(v1 + 216) = 1107296256;
    *(v1 + 224) = sub_232DCDB54;
    *(v1 + 232) = &block_descriptor_18_0;
    *(v1 + 240) = v7;
    [v6 fetchLastClientStateWithCompletionHandler_];
LABEL_5:

    return MEMORY[0x282200938](v4);
  }

  *(v1 + 416) = xmmword_232E06160;
  v8 = *(v1 + 320);
  v10 = *(v8 + 112);
  v9 = *(v8 + 120);

  v11 = sub_232DC9690(v10, v9, sub_232DB1128, &type metadata for UserGuideClientState, &unk_27DDD7658, &unk_232E07538);
  *(v1 + 432) = v12;
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v11;
  v14 = v12;
  *(v1 + 440) = v11;
  if ((sub_232DAC334(0, 0xC000000000000000, v11, v12) & 1) == 0)
  {

LABEL_16:
    v33 = swift_task_alloc();
    *(v1 + 488) = v33;
    *v33 = v1;
    v33[1] = sub_232DCC694;
    v34 = *(v1 + 392);
    v36 = *(v1 + 320);
    v35 = *(v1 + 328);

    return sub_232DCDC3C(v35, v34);
  }

  v16 = *(v1 + 360);
  v15 = *(v1 + 368);
  v17 = *(v1 + 352);
  v18 = *(v1 + 328);
  v19 = *(v1 + 336);
  v20 = sub_232DACA5C(v18, v13, v14);
  sub_232E01270();
  sub_232E018F0();
  *(v1 + 272) = 0;
  *(v1 + 280) = 0xE000000000000000;
  MEMORY[0x238395970](0xD000000000000010, 0x8000000232E0D600);
  v21 = *v18;
  v22 = v18[1];
  MEMORY[0x238395970](v21, v22);
  MEMORY[0x238395970](2108704, 0xE300000000000000);
  *(v1 + 504) = v20;
  sub_232E019A0();
  v23 = *(v1 + 272);
  v24 = *(v1 + 280);
  sub_232E01360();

  v16(v17, v19);
  if (v20 == 2)
  {
    v4 = v1 + 16;
    v37 = *(v1 + 360);
    v38 = *(v1 + 368);
    v39 = *(v1 + 352);
    v40 = *(v1 + 336);
    v55 = *(v1 + 320);
    v41 = *(v1 + 304);
    sub_232E01270();
    sub_232E018F0();

    MEMORY[0x238395970](v21, v22);
    sub_232E01360();

    v37(v39, v40);
    v42 = sub_232E013A0();
    MEMORY[0x238395970](v42);

    v44 = sub_232DE833C(v43);
    *(v1 + 448) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7388, &qword_232E06210);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_232E06FE0;
    *(v45 + 32) = 0x6469754772657375;
    *(v45 + 40) = 0xEA00000000002E65;
    v46 = sub_232E015C0();
    *(v1 + 456) = v46;

    *(v1 + 16) = v1;
    *(v1 + 24) = sub_232DCC348;
    v47 = swift_continuation_init();
    *(v1 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
    *(v1 + 144) = MEMORY[0x277D85DD0];
    *(v1 + 152) = 1107296256;
    *(v1 + 160) = sub_232DCA134;
    *(v1 + 168) = &block_descriptor_15;
    *(v1 + 176) = v47;
    [v44 deleteSearchableItemsWithDomainIdentifiers:v46 completionHandler:?];
    goto LABEL_5;
  }

  if (v20 == 1)
  {
    v26 = *(v1 + 360);
    v25 = *(v1 + 368);
    v27 = *(v1 + 352);
    v28 = *(v1 + 328);
    v29 = *(v1 + 336);

    sub_232E01270();
    sub_232E018F0();

    MEMORY[0x238395970](v21, v22);
    MEMORY[0x238395970](0xD000000000000016, 0x8000000232E0D670);
    sub_232E01360();

    sub_232DB091C(0, 0xC000000000000000);
    v26(v27, v29);
    sub_232DD22B4(v28, type metadata accessor for UserGuideIndexItem);
    v30 = *(v1 + 352);
    v31 = *(v1 + 328);

    v32 = *(v1 + 8);

    return v32();
  }

  else
  {
    v48 = *(v1 + 432);
    v49 = *(v1 + 440);
    v50 = swift_task_alloc();
    *(v1 + 472) = v50;
    *v50 = v1;
    v50[1] = sub_232DCC52C;
    v51 = *(v1 + 392);
    v53 = *(v1 + 320);
    v52 = *(v1 + 328);

    return sub_232DCE270(v52, v51, v49, v48);
  }
}

uint64_t sub_232DCBC18()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 408) = v3;
  v4 = *(v1 + 320);
  if (v3)
  {
    v5 = sub_232DCC8C8;
  }

  else
  {
    v5 = sub_232DCBD38;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232DCBD38()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  *(v0 + 416) = v1;
  *(v0 + 424) = v2;
  v3 = *(v0 + 320);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);

  v6 = sub_232DC9690(v4, v5, sub_232DB1128, &type metadata for UserGuideClientState, &unk_27DDD7658, &unk_232E07538);
  *(v0 + 432) = v7;
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    *(v0 + 440) = v6;
    if (sub_232DAC334(v1, v2, v6, v7))
    {
      v10 = *(v0 + 360);
      v50 = *(v0 + 368);
      v11 = *(v0 + 352);
      v12 = *(v0 + 328);
      v13 = *(v0 + 336);
      v14 = sub_232DACA5C(v12, v8, v9);
      sub_232E01270();
      sub_232E018F0();
      *(v0 + 272) = 0;
      *(v0 + 280) = 0xE000000000000000;
      MEMORY[0x238395970](0xD000000000000010, 0x8000000232E0D600);
      v15 = *v12;
      v16 = v12[1];
      v49 = v15;
      MEMORY[0x238395970]();
      MEMORY[0x238395970](2108704, 0xE300000000000000);
      *(v0 + 504) = v14;
      sub_232E019A0();
      v17 = *(v0 + 272);
      v18 = *(v0 + 280);
      sub_232E01360();

      v10(v11, v13);
      if (v14 == 2)
      {
        v31 = *(v0 + 360);
        v32 = *(v0 + 368);
        v33 = *(v0 + 352);
        v34 = *(v0 + 336);
        v35 = *(v0 + 320);
        v36 = *(v0 + 304);
        sub_232E01270();
        sub_232E018F0();

        MEMORY[0x238395970](v49, v16);
        sub_232E01360();

        v31(v33, v34);
        v37 = sub_232E013A0();
        MEMORY[0x238395970](v37);

        v39 = sub_232DE833C(v38);
        *(v0 + 448) = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7388, &qword_232E06210);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_232E06FE0;
        *(v40 + 32) = 0x6469754772657375;
        *(v40 + 40) = 0xEA00000000002E65;
        v41 = sub_232E015C0();
        *(v0 + 456) = v41;

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_232DCC348;
        v42 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
        *(v0 + 144) = MEMORY[0x277D85DD0];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_232DCA134;
        *(v0 + 168) = &block_descriptor_15;
        *(v0 + 176) = v42;
        [v39 deleteSearchableItemsWithDomainIdentifiers:v41 completionHandler:?];

        return MEMORY[0x282200938](v0 + 16);
      }

      else if (v14 == 1)
      {
        v20 = *(v0 + 360);
        v19 = *(v0 + 368);
        v21 = *(v0 + 352);
        v22 = *(v0 + 336);
        v51 = *(v0 + 328);

        sub_232E01270();
        sub_232E018F0();

        MEMORY[0x238395970](v49, v16);
        MEMORY[0x238395970](0xD000000000000016, 0x8000000232E0D670);
        sub_232E01360();

        sub_232DB091C(v1, v2);
        v20(v21, v22);
        sub_232DD22B4(v51, type metadata accessor for UserGuideIndexItem);
        v23 = *(v0 + 352);
        v24 = *(v0 + 328);

        v25 = *(v0 + 8);

        return v25();
      }

      else
      {
        v43 = *(v0 + 432);
        v44 = *(v0 + 440);
        v45 = swift_task_alloc();
        *(v0 + 472) = v45;
        *v45 = v0;
        v45[1] = sub_232DCC52C;
        v46 = *(v0 + 392);
        v48 = *(v0 + 320);
        v47 = *(v0 + 328);

        return sub_232DCE270(v47, v46, v44, v43);
      }
    }
  }

  v27 = swift_task_alloc();
  *(v0 + 488) = v27;
  *v27 = v0;
  v27[1] = sub_232DCC694;
  v28 = *(v0 + 392);
  v30 = *(v0 + 320);
  v29 = *(v0 + 328);

  return sub_232DCDC3C(v29, v28);
}

uint64_t sub_232DCC348()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 464) = v3;
  if (v3)
  {
    v4 = *(v1 + 432);
    v5 = *(v1 + 320);

    v6 = sub_232DCCA04;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 320);
    v6 = sub_232DCC470;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_232DCC470()
{
  v1 = *(v0 + 456);

  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = swift_task_alloc();
  *(v0 + 472) = v4;
  *v4 = v0;
  v4[1] = sub_232DCC52C;
  v5 = *(v0 + 392);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);

  return sub_232DCE270(v6, v5, v3, v2);
}

uint64_t sub_232DCC52C()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 432);
  v6 = *(v2 + 320);

  if (v0)
  {
    v7 = sub_232DCCAD0;
  }

  else
  {

    v7 = sub_232DD263C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_232DCC694()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = sub_232DCC96C;
  }

  else
  {
    v6 = sub_232DCC7C0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_232DCC7C0()
{
  v1 = v0[41];
  sub_232DB091C(v0[52], v0[53]);
  sub_232DD22B4(v1, type metadata accessor for UserGuideIndexItem);
  v2 = v0[44];
  v3 = v0[41];

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DCC858()
{
  v1 = v0[48];
  v2 = v0[44];
  v3 = v0[41];

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DCC8C8()
{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[41];
  swift_willThrow();
  sub_232DD22B4(v3, type metadata accessor for UserGuideIndexItem);

  v4 = v0[51];
  v5 = v0[44];
  v6 = v0[41];

  v7 = v0[1];

  return v7();
}

uint64_t sub_232DCC96C()
{
  v1 = v0[41];
  sub_232DB091C(v0[52], v0[53]);
  sub_232DD22B4(v1, type metadata accessor for UserGuideIndexItem);
  v2 = v0[62];
  v3 = v0[44];
  v4 = v0[41];

  v5 = v0[1];

  return v5();
}

uint64_t sub_232DCCA04()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];
  v4 = v0[52];
  v5 = v0[53];
  v6 = v0[41];
  swift_willThrow();
  sub_232DB091C(v4, v5);
  sub_232DD22B4(v6, type metadata accessor for UserGuideIndexItem);

  v7 = v0[58];
  v8 = v0[44];
  v9 = v0[41];

  v10 = v0[1];

  return v10();
}

uint64_t sub_232DCCAD0()
{
  v1 = v0[41];
  sub_232DB091C(v0[52], v0[53]);
  sub_232DD22B4(v1, type metadata accessor for UserGuideIndexItem);
  v2 = v0[60];
  v3 = v0[44];
  v4 = v0[41];

  v5 = v0[1];

  return v5();
}

uint64_t sub_232DCCB68(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = sub_232E012A0();
  v2[36] = v3;
  v4 = *(v3 - 8);
  v2[37] = v4;
  v5 = *(v4 + 64) + 15;
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DCCC28, v1, 0);
}

uint64_t sub_232DCCC28()
{
  v61 = v0;
  v1 = v0[35];
  v2 = *(v1 + 112);
  v0[39] = v2;
  v3 = *(v1 + 120);
  v0[40] = v3;

  sub_232DC9690(v2, v3, sub_232DB1128, &type metadata for UserGuideClientState, &unk_27DDD7658, &unk_232E07538);
  if (!v4)
  {
    goto LABEL_32;
  }

  v5 = v4;
  v6 = v0[34];
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v56 = v0[34];
    }

    v7 = sub_232E019C0();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v58 = MEMORY[0x277D84F90];
    v9 = sub_232DF8F90(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v8 = v58;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        MEMORY[0x238395D50](v10, v0[34]);
        v11 = sub_232E013A0();
        v13 = v12;
        swift_unknownObjectRelease();
        v58 = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_232DF8F90((v14 > 1), v15 + 1, 1);
          v8 = v58;
        }

        ++v10;
        *(v8 + 16) = v15 + 1;
        v16 = v8 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
      }

      while (v7 != v10);
    }

    else
    {
      v17 = (v0[34] + 32);
      do
      {
        v18 = *v17;
        v19 = sub_232E013A0();
        v21 = v20;

        v58 = v8;
        v23 = *(v8 + 16);
        v22 = *(v8 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_232DF8F90((v22 > 1), v23 + 1, 1);
          v8 = v58;
        }

        *(v8 + 16) = v23 + 1;
        v24 = v8 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        ++v17;
        --v7;
      }

      while (v7);
    }
  }

  v25 = *(v5 + 16);
  if (!v25)
  {
    v26 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v26 = sub_232DAE004(*(v5 + 16), 0);
  v57 = sub_232DAFFD8(&v58, v26 + 4, v25, v5);

  v9 = sub_232D734F4();
  if (v57 != v25)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_20:
  v27 = sub_232DD1C40(v26);

  v28 = sub_232DD03E0(v8, v27);
  *(swift_task_alloc() + 16) = v8;
  v0[41] = sub_232DD1E60(v5, sub_232DD1CD8);

  v29 = MEMORY[0x277D84F90];
  sub_232DB300C(MEMORY[0x277D84F90]);

  v30 = *(v28 + 16);
  if (!v30)
  {

    v31 = MEMORY[0x277D84F90];
    v33 = *(MEMORY[0x277D84F90] + 16);
    if (v33)
    {
LABEL_23:
      v60 = v29;
      sub_232DF8F90(0, v33, 0);
      v34 = v60;
      v35 = v31 + 5;
      do
      {
        v36 = *(v35 - 1);
        v37 = *v35;
        v58 = 0x6469754772657375;
        v59 = 0xEA00000000002E65;

        MEMORY[0x238395970](v36, v37);

        v39 = v58;
        v38 = v59;
        v60 = v34;
        v41 = *(v34 + 16);
        v40 = *(v34 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_232DF8F90((v40 > 1), v41 + 1, 1);
          v34 = v60;
        }

        *(v34 + 16) = v41 + 1;
        v42 = v34 + 16 * v41;
        *(v42 + 32) = v39;
        *(v42 + 40) = v38;
        v35 += 2;
        --v33;
      }

      while (v33);
      v43 = v0[37];
      v44 = v0[38];
      v45 = v0[35];
      v46 = v0[36];

      sub_232E01270();
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_232E018F0();

      v58 = 0xD000000000000029;
      v59 = 0x8000000232E0D4C0;
      v47 = MEMORY[0x238395A10](v34, MEMORY[0x277D837D0]);
      MEMORY[0x238395970](v47);

      sub_232E01360();

      v48 = (*(v43 + 8))(v44, v46);
      v49 = sub_232DE833C(v48);
      v0[42] = v49;
      v50 = sub_232E015C0();
      v0[43] = v50;

      v0[2] = v0;
      v0[3] = sub_232DCD270;
      v51 = swift_continuation_init();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
      v0[44] = v52;
      v0[25] = v52;
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_232DCA134;
      v0[21] = &block_descriptor_5;
      v0[22] = v51;
      [v49 deleteSearchableItemsWithDomainIdentifiers:v50 completionHandler:?];
      v9 = (v0 + 2);

      return MEMORY[0x282200938](v9);
    }

    goto LABEL_31;
  }

  v31 = sub_232DAE004(*(v28 + 16), 0);
  v32 = sub_232DAFE80(&v58, v31 + 4, v30, v28);
  v9 = sub_232D734F4();
  if (v32 != v30)
  {
LABEL_40:
    __break(1u);
    return MEMORY[0x282200938](v9);
  }

  v33 = v31[2];
  if (v33)
  {
    goto LABEL_23;
  }

LABEL_31:

LABEL_32:
  v53 = v0[38];

  v54 = v0[1];

  return v54();
}

uint64_t sub_232DCD270()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 360) = v3;
  if (v3)
  {
    v4 = *(v1 + 328);
    v5 = *(v1 + 280);

    v6 = sub_232DCD70C;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 280);
    v6 = sub_232DCD398;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_232DCD398()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 280);

  v6 = sub_232DE833C(v5);
  [v6 beginIndexBatch];

  v8 = sub_232DE833C(v7);
  *(v0 + 368) = v8;
  v9 = sub_232DC9E04(2, v3, sub_232DAC6CC);
  v11 = v10;
  v12 = sub_232E00C50();
  *(v0 + 376) = v12;
  sub_232DB091C(v9, v11);
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_232DCD51C;
  v13 = swift_continuation_init();
  *(v0 + 264) = v2;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_232DCA134;
  *(v0 + 232) = &block_descriptor_7;
  *(v0 + 240) = v13;
  [v8 endIndexBatchWithClientState:v12 completionHandler:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_232DCD51C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 384) = v3;
  if (v3)
  {
    v4 = *(v1 + 328);
    v5 = *(v1 + 280);

    v6 = sub_232DCD790;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 280);
    v6 = sub_232DCD644;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_232DCD644()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 312);

  sub_232DC9B24(v4, v2, 2, v3, sub_232DB117C);

  v5 = *(v0 + 304);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_232DCD70C()
{
  v1 = *(v0 + 360);
  swift_willThrow();
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 304);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_232DCD790()
{
  v1 = *(v0 + 384);
  swift_willThrow();
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 304);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_232DCD834()
{
  v1 = v0[18];
  v2 = sub_232E015C0();
  v0[19] = v2;
  v0[2] = v0;
  v0[3] = sub_232DCD970;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_35;
  v0[14] = v3;
  [v1 deleteSearchableItemsWithDomainIdentifiers:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DCD970()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_232DCDAE4;
  }

  else
  {
    v3 = sub_232DCDA80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DCDA80()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DCDAE4()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_232DCDB54(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_232E00C60();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_232DCDC3C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_232E012A0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DCDD00, v2, 0);
}

uint64_t sub_232DCDD00()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_232E01270();
  sub_232E01360();
  v5 = *(v2 + 8);
  v5(v1, v3);
  sub_232E01270();
  sub_232E01360();
  v6 = (v5)(v1, v3);
  v7 = sub_232DE833C(v6);
  v0[8] = v7;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_232DCDE54;

  return (sub_232DC68A8)(0, 0xC000000000000000, v7);
}

uint64_t sub_232DCDE54()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_232DCE198;
  }

  else
  {
    v6 = *(v2 + 32);

    v5 = sub_232DCDF7C;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232DCDF7C()
{
  v1 = sub_232DB300C(MEMORY[0x277D84F90]);
  v0[11] = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_232DCE030;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_232DCE270(v5, v3, 2, v1);
}

uint64_t sub_232DCE030()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_232DCE204, v4, 0);
  }

  else
  {
    v5 = v3[11];
    v6 = v3[7];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_232DCE198()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_232DCE204()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DCE270(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 216) = a3;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v7 = *(type metadata accessor for UserGuideIndexItem(0) - 8);
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 + 64);
  *(v5 + 96) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v9 = type metadata accessor for UserGuideIndexRequest(0);
  *(v5 + 120) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v11 = swift_task_alloc();
  *(v5 + 128) = v11;
  type metadata accessor for UserGuideIndexHelper();
  v12 = swift_task_alloc();
  *(v5 + 136) = v12;
  *v12 = v5;
  v12[1] = sub_232DCE408;

  return sub_232DB7C30(v11, a1);
}
uint64_t sub_2149249A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 376);
  v15 = *v3;
  *(*v3 + 384) = v2;

  if (v2)
  {
    v8 = v6[46];

    v9 = v6[28];
    v10 = v6[29];
    v11 = sub_214924BC4;
  }

  else
  {
    v12 = v6[46];
    v13 = v6[32];

    v6[49] = a2;
    v6[50] = a1;
    v9 = v6[28];
    v10 = v6[29];
    v11 = sub_214924AE4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_214924AE4()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[20];
  v9 = v0[21];

  sub_21489B8F0(v2, v3);

  v11 = v0[1];
  v13 = v0[49];
  v12 = v0[50];

  return v11(v12, v13);
}

uint64_t sub_214924BC4()
{
  v61 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 216);

  *(v0 + 112) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 352);
    v5 = *(v0 + 336);
    v6 = *(v0 + 344);
    v7 = *(v0 + 108);
    v8 = *(v0 + 328);
    v49 = *(v0 + 360);
    v51 = *(v0 + 320);
    v9 = *(v0 + 256);
    v10 = *(v0 + 168);

    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v58 = *(v0 + 80);
    v56 = *(v0 + 88);
    v55 = *(v0 + 96);
    v54 = *(v0 + 104);
    v13 = swift_allocObject();
    v59 = v11;
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    *v10 = v13;
    v5(v10, v7, v8);
    v4(v10, 0, 1, v8);

    sub_21498E8E0();
  }

  else
  {
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v16 = *(v0 + 256);
    v17 = *(v0 + 264);
    v18 = *(v0 + 192);
    v19 = *(v0 + 176);
    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    v60[0] = 2777980912;
    v60[1] = 0xA400000000000000;
    MEMORY[0x2160589C0](0xD000000000000015, 0x80000002149A0E50);
    MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
    v59 = sub_21498E0A0();
    v52 = v22;

    v15(v18, v17, v19);

    v23 = sub_21498E670();
    v24 = sub_21498FBB0();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 288);
    v27 = *(v0 + 256);
    if (v25)
    {
      v28 = *(v0 + 248);
      v29 = *(v0 + 184);
      v57 = *(v0 + 192);
      v30 = *(v0 + 176);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v60[0] = v32;
      *v31 = 136315394;
      v33 = sub_2149079F4(v28, v27, v60);

      *(v31 + 4) = v33;
      *(v31 + 12) = 2048;
      v58 = -1;
      *(v31 + 14) = -1;
      _os_log_impl(&dword_21488E000, v23, v24, "LiftUI Response for %s: [%ld] Invalid error response", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x216059AC0](v32, -1, -1);
      MEMORY[0x216059AC0](v31, -1, -1);

      v26(v57, v30);
      v56 = 0;
      v55 = 0;
      v54 = 1;
    }

    else
    {
      v34 = *(v0 + 184);
      v35 = *(v0 + 192);
      v36 = *(v0 + 176);
      v37 = *(v0 + 256);

      v26(v35, v36);
      v56 = 0;
      v55 = 0;
      v54 = 1;
      v58 = -1;
    }

    v12 = v52;
  }

  v38 = *(v0 + 384);
  v40 = *(v0 + 304);
  v39 = *(v0 + 312);
  v41 = *(v0 + 296);
  v42 = *(v0 + 240);
  v44 = *(v0 + 200);
  v43 = *(v0 + 208);
  v48 = *(v0 + 192);
  v50 = *(v0 + 168);
  v53 = *(v0 + 160);
  sub_2148A2800();
  swift_allocError();
  *v45 = v59;
  *(v45 + 8) = v12;
  *(v45 + 16) = v58;
  *(v45 + 24) = v56;
  *(v45 + 32) = v55;
  *(v45 + 40) = v54;
  swift_willThrow();

  sub_21489B8F0(v40, v41);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_214925060(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 96) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return MEMORY[0x2822009F8](sub_214925088, 0, 0);
}

uint64_t sub_214925088()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 96);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = sub_21498DEB0();
  v8 = v7;
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = objc_allocWithZone(type metadata accessor for GenericRequestAPIRequest());
  v12 = &v11[qword_27CA1BEE0];
  *v12 = v5;
  v12[1] = v4;
  v11[qword_27CA1BEE8] = v3;
  v13 = v10;

  v14 = v9;
  v15 = sub_214925E04(v9, v13, v6, v8, &qword_27CA1C358, &qword_21499A698, &qword_27CA1C340, &qword_21499A678);
  *(v0 + 64) = v15;
  sub_21489B8F0(v6, v8);

  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *(v16 + 16) = v15;
  v17 = *(MEMORY[0x277D85A40] + 4);
  v18 = swift_task_alloc();
  *(v0 + 80) = v18;
  *v18 = v0;
  v18[1] = sub_214925240;
  v19 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000025, 0x80000002149A26A0, sub_214925C18, v16, v19);
}

uint64_t sub_214925240()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_2149253CC;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_21492535C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21492535C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_2149253CC()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_214925434()
{
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_source, &qword_27CA1A328, &unk_2149933A0);
  v1 = *(v0 + OBJC_IVAR____TtC19iCloudMailAssistant18MALiftUIDataSource_stateStore);

  v2 = *(*v0 + 12);
  v3 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void sub_2149254F0()
{
  sub_2149255A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2149255A8()
{
  if (!qword_27CA1BFC0)
  {
    type metadata accessor for MALiftUISource(255);
    v0 = sub_21498FCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1BFC0);
    }
  }
}

void sub_214925620()
{
  sub_2149256A8();
  if (v0 <= 0x3F)
  {
    sub_21492572C();
    if (v1 <= 0x3F)
    {
      sub_21492575C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2149256A8()
{
  if (!qword_27CA1C320)
  {
    sub_21498E1B0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AB18, &unk_21499A610);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CA1C320);
    }
  }
}

uint64_t sub_21492572C()
{
  result = qword_27CA1C328;
  if (!qword_27CA1C328)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27CA1C328);
  }

  return result;
}

uint64_t sub_21492575C()
{
  result = qword_27CA1C330;
  if (!qword_27CA1C330)
  {
    result = MEMORY[0x277CC9318];
    atomic_store(MEMORY[0x277CC9318], &qword_27CA1C330);
  }

  return result;
}

uint64_t sub_2149257A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214925838;

  return sub_2149241E8(a1);
}

uint64_t sub_214925838(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_214925948()
{
  v2 = *(sub_21498DEE0() - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_21490976C;

  return sub_214925060(v4, v5, v7, v0 + v3, v6);
}

void sub_214925A64(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_214925B00(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_214925B38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_214925B68(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x216059AE0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x216059AE0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_214925C20(uint64_t a1, uint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C338, &qword_21499A670) - 8) + 80);

  return sub_214923348(a1, a2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_214925D14()
{
  result = qword_281190D90;
  if (!qword_281190D90)
  {
    sub_21498F510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D90);
  }

  return result;
}

unint64_t sub_214925D6C()
{
  result = qword_281190D00;
  if (!qword_281190D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C348, &qword_21499A980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D00);
  }

  return result;
}

uint64_t sub_214925DD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    return sub_21489B70C(a1, a2);
  }
}

id sub_214925E04(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v36 = a7;
  v37 = a8;
  v32 = a5;
  v33 = a6;
  v9 = v8;
  v34 = a2;
  v35 = a4;
  v31 = a3;
  v11 = sub_21498E350();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_281190E68;
  *&v9[qword_281190E68] = 0;
  v17 = &v9[qword_281190E48];
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 40) = -1;
  *&v9[qword_281190E58] = 5;
  *&v9[qword_281190E30] = 0x3FF0000000000000;
  *&v9[qword_281190E38] = 0x403E000000000000;
  *&v9[qword_281190E50] = 0;
  v18 = &v9[qword_281190E40];
  sub_21498E340();
  v19 = sub_21498E330();
  v21 = v20;
  (*(v12 + 8))(v15, v11);
  *v18 = v19;
  v18[1] = v21;
  v22 = v34;
  v23 = *&v9[v16];
  *&v9[v16] = a1;
  v24 = a1;

  v25 = v35;
  *&v9[qword_281190E60] = v22;
  if (v25 >> 60 == 15)
  {
    v26 = v22;
  }

  else
  {
    v27 = v31;
    v38[0] = v31;
    v38[1] = v25;
    v39 = 1;
    swift_beginAccess();
    v28 = v22;
    sub_21489B6F8(v27, v25);
    sub_21492635C(v38, v17, v32, v33);
    swift_endAccess();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  v40.receiver = v9;
  v40.super_class = v29;
  return objc_msgSendSuper2(&v40, sel_init);
}

uint64_t sub_214926040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2149260B0(uint64_t a1)
{
  v2 = type metadata accessor for MALiftUISource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21492610C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_214990080() & 1;
  }
}

uint64_t sub_21492617C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, unint64_t, void, void, void, void))
{
  v9 = *(sub_21498E320() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  return a4(a1, a2, a3, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 16), *(v4 + (((v11 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_21492635C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_21498E320();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214926978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_214927B30(a3, v27 - v11);
  v13 = sub_21498FAE0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_214927BA0(v12);
  }

  else
  {
    sub_21498FAD0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21498FA50();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21498F8F0() + 32;
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

      sub_214927BA0(a3);

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

  sub_214927BA0(a3);
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

uint64_t sub_214926C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_214927B30(a3, v27 - v11);
  v13 = sub_21498FAE0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_214927BA0(v12);
  }

  else
  {
    sub_21498FAD0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21498FA50();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21498F8F0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3F8, &qword_21499A7A8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_214927BA0(a3);

      return v24;
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

  sub_214927BA0(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C3F8, &qword_21499A7A8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t MailAssistantProvider.__allocating_init(accountStore:appleAccount:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  MailAssistantProvider.init(accountStore:appleAccount:)(a1, a2);
  return v4;
}

void *MailAssistantProvider.init(accountStore:appleAccount:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_21498E350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a2;
  v3[3] = a1;
  v11 = type metadata accessor for MARepositoryDefault();
  v12 = swift_allocObject();
  v13 = a2;
  v14 = a1;
  sub_21498E340();
  v15 = sub_21498E330();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  v12[2] = v15;
  v12[3] = v17;
  v12[4] = v14;
  v12[5] = v13;
  v3[7] = v11;
  v3[8] = &off_2826CB168;
  v3[4] = v12;
  return v3;
}

uint64_t sub_21492709C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = v3;

  return sub_214899D78(v4, v5, a1);
}

uint64_t sub_2149270F0@<X0>(void *a1@<X8>)
{
  v3 = sub_21498E350();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v21 = 0x80000002149A2720;
  a1[5] = v8;
  a1[6] = v9;
  v10 = type metadata accessor for MARepositoryDefault();
  v11 = swift_allocObject();
  v12 = v8;
  v13 = v9;
  v14 = v12;
  v15 = v13;
  sub_21498E340();
  v16 = sub_21498E330();
  v18 = v17;
  result = (*(v4 + 8))(v7, v3);
  v11[2] = v16;
  v11[3] = v18;
  v11[4] = v15;
  v11[5] = v14;
  a1[3] = v10;
  a1[4] = &off_2826CB168;
  *a1 = v11;
  a1[7] = 0xD00000000000003BLL;
  a1[8] = v21;
  return result;
}

uint64_t sub_214927264(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_21498FAE0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_214926978(0, 0, v8, &unk_21499A730, v10);
}

uint64_t sub_214927388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_21498E350();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21492744C, 0, 0);
}

uint64_t sub_21492744C()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v0[17] = v2;
  v3 = *(v1 + 24);
  v0[18] = v3;
  sub_21498FAB0();
  v4 = v2;
  v5 = v3;
  v0[19] = sub_21498FAA0();
  v7 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_214927504, v7, v6);
}

uint64_t sub_214927504()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];

  v0[7] = v4;
  v0[8] = v2;
  v7 = type metadata accessor for MARepositoryDefault();
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v2;
  sub_21498E340();
  v11 = sub_21498E330();
  v13 = v12;
  (*(v6 + 8))(v3, v5);
  v8[2] = v11;
  v8[3] = v13;
  v8[4] = v10;
  v8[5] = v9;
  v0[2] = v8;
  v0[5] = v7;
  v0[6] = &off_2826CB168;
  v0[9] = 0xD00000000000003BLL;
  v0[10] = 0x80000002149A2720;
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_214927660;

  return sub_21497928C();
}

uint64_t sub_214927660(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    sub_214928038(v4 + 16);
    v7 = sub_21492780C;
  }

  else
  {
    *(v4 + 176) = a1 & 1;
    sub_214928038(v4 + 16);
    v7 = sub_21492779C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21492779C()
{
  v1 = *(v0 + 104);
  (*(v0 + 96))(*(v0 + 176));
  v2 = *(v0 + 128);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21492780C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 104);
  (*(v0 + 96))(0);

  v3 = *(v0 + 128);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_214927888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899138;

  return sub_214927388(a1, v4, v5, v6, v7, v8);
}

uint64_t MailAssistantProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_214927A84()
{
  result = qword_27CA1C3E8;
  if (!qword_27CA1C3E8)
  {
    type metadata accessor for MASettingsRemoteView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C3E8);
  }

  return result;
}

unint64_t sub_214927ADC()
{
  result = qword_27CA1C3F0;
  if (!qword_27CA1C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C3F0);
  }

  return result;
}

uint64_t sub_214927B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214927BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214927C08(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_214927CFC;

  return v6(v2 + 32);
}

uint64_t sub_214927CFC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_214927E10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_214899964;

  return sub_214927C08(a1, v5);
}

uint64_t sub_214927EC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_214899138;

  return sub_214927C08(a1, v5);
}

uint64_t sub_214927F80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_214899964;

  return sub_2148BB5C8(a1, v5);
}

uint64_t sub_21492808C()
{
  v1[26] = v0;
  v2 = sub_21498E690();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21492814C, 0, 0);
}

uint64_t sub_21492814C()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "updateUnsubscribeInlineTip()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[27];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_2149282DC;
  v12 = v0[26];

  return sub_21493A124((v0 + 2));
}

uint64_t sub_2149282DC()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2149288B4;
  }

  else
  {
    v3 = sub_2149283F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2149283F0()
{
  if (v0[3] != 1)
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[5];
      v3 = v0[7];
      v4 = v0[6];

      sub_21492BB98((v0 + 2));
      if (v2 == 0x6465747065636341 && v1 == 0xE800000000000000)
      {

LABEL_14:
        v10 = v0[26];
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);
        v0[18] = &type metadata for MAUpdateConsentAPIRequestBody;
        v0[19] = sub_21492BBEC();
        v0[15] = 0x64656E696C636544;
        v0[16] = 0xE800000000000000;
        v0[17] = v3;
        v13 = objc_allocWithZone(type metadata accessor for MAUpdateConsentAPIRequest());
        sub_21492BC40((v0 + 15), (v0 + 20));
        v14 = v11;
        v15 = v12;
        v16 = sub_21493B958(v11, v15, (v0 + 20));
        v0[32] = v16;

        sub_21489DFCC((v0 + 15), &qword_27CA1C410, &unk_21499B410);
        v17 = swift_task_alloc();
        v0[33] = v17;
        *(v17 + 16) = v16;
        v18 = *(MEMORY[0x277D85A40] + 4);
        v19 = swift_task_alloc();
        v0[34] = v19;
        *v19 = v0;
        v19[1] = sub_214928658;

        return MEMORY[0x2822008A0](v19, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21492BCB0, v17, &type metadata for MAUpdateConsentAPIResponse);
      }

      v6 = sub_214990080();

      if (v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_21492BB98((v0 + 2));
    }
  }

  v7 = v0[29];

  v8 = v0[1];

  return v8();
}

uint64_t sub_214928658()
{
  v2 = *(*v1 + 272);
  v3 = *v1;
  *(v3 + 280) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2149287A8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 264);

    v5 = *(v3 + 232);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_2149287A8()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 280);
  *(v0 + 200) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast() & 1) == 0 || (v4 = *(v0 + 80), v5 = *(v0 + 88), v6 = *(v0 + 96), , (v6) || (v5 - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v9 = *(v0 + 232);
    swift_willThrow();

    v8 = *(v0 + 8);
  }

  else
  {

    v7 = *(v0 + 232);

    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_2149288B4()
{
  v1 = *(v0 + 248);
  *(v0 + 200) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast() & 1) == 0 || (v3 = *(v0 + 80), v4 = *(v0 + 88), v5 = *(v0 + 96), , (v5) || (v4 - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v8 = *(v0 + 232);
    swift_willThrow();

    v7 = *(v0 + 8);
  }

  else
  {

    v6 = *(v0 + 232);

    v7 = *(v0 + 8);
  }

  return v7();
}

uint64_t sub_2149289B0()
{
  v1[2] = v0;
  v2 = sub_21498E690();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214928A70, 0, 0);
}

uint64_t sub_214928A70()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "resetInlineTips()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_214928BFC;
  v12 = v0[2];

  return sub_214938630(0);
}

uint64_t sub_214928BFC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[5];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[7] = v8;
    *v8 = v4;
    v8[1] = sub_214928D78;
    v9 = v2[2];

    return sub_21493809C(0);
  }
}

uint64_t sub_214928D78()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 40);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_214928E90()
{
  v1[2] = v0;
  v2 = sub_21498E690();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214928F5C, 0, 0);
}

uint64_t sub_214928F5C()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  v0[7] = v4;
  v5 = *(v3 + 16);
  v0[8] = v5;
  v0[9] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBD0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "resetUnifiedRules()", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];

  v12 = *(v11 + 8);
  v0[10] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_214929104;
  v14 = v0[2];

  return sub_214933DA0(&unk_2826C56A0);
}

uint64_t sub_214929104(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {
    v7 = *(v3 + 40);
    v6 = *(v3 + 48);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21492925C, 0, 0);
  }
}

uint64_t sub_21492925C()
{
  result = *(v0 + 96);
  v2 = *(result + 16);
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      *(v0 + 112) = v3;
      v4 = *(v0 + 96);
      if (v3 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v5 = v4 + 112 * v3;
      v6 = *(v5 + 40);
      *(v0 + 120) = v6;
      if (v6)
      {
        break;
      }

      v7 = *(v0 + 72);
      (*(v0 + 64))(*(v0 + 40), *(v0 + 56), *(v0 + 24));
      v8 = sub_21498E670();
      v9 = sub_21498FBD0();
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 80);
      v12 = *(v0 + 32);
      v13 = *(v0 + 40);
      v14 = *(v0 + 24);
      if (v10)
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_21488E000, v8, v9, "resetUnifiedRules - ruleId not found", v15, 2u);
        MEMORY[0x216059AC0](v15, -1, -1);
      }

      result = v11(v13, v14);
      v3 = *(v0 + 112) + 1;
      if (v3 == *(v0 + 104))
      {
        v19 = *(v0 + 96);
        goto LABEL_12;
      }
    }

    v16 = *(v5 + 32);

    v17 = swift_task_alloc();
    *(v0 + 128) = v17;
    *v17 = v0;
    v17[1] = sub_214929488;
    v18 = *(v0 + 16);

    return sub_214934144(v16, v6);
  }

  else
  {
LABEL_12:
    v20 = *(v0 + 40);
    v21 = *(v0 + 48);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_214929488()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = v2[15];
  if (v0)
  {
    v7 = v3[12];

    v9 = v3[5];
    v8 = v3[6];

    v10 = *(v5 + 8);

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_214929604, 0, 0);
  }
}

void sub_214929604()
{
  v1 = *(v0 + 112) + 1;
  if (v1 == *(v0 + 104))
  {
LABEL_2:
    v2 = *(v0 + 96);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);

    v5 = *(v0 + 8);

    v5();
  }

  else
  {
    while (1)
    {
      *(v0 + 112) = v1;
      v6 = *(v0 + 96);
      if (v1 >= *(v6 + 16))
      {
        __break(1u);
        return;
      }

      v7 = v6 + 112 * v1;
      v8 = *(v7 + 40);
      *(v0 + 120) = v8;
      if (v8)
      {
        break;
      }

      v9 = *(v0 + 72);
      (*(v0 + 64))(*(v0 + 40), *(v0 + 56), *(v0 + 24));
      v10 = sub_21498E670();
      v11 = sub_21498FBD0();
      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 80);
      v14 = *(v0 + 32);
      v15 = *(v0 + 40);
      v16 = *(v0 + 24);
      if (v12)
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_21488E000, v10, v11, "resetUnifiedRules - ruleId not found", v17, 2u);
        MEMORY[0x216059AC0](v17, -1, -1);
      }

      v13(v15, v16);
      v1 = *(v0 + 112) + 1;
      if (v1 == *(v0 + 104))
      {
        goto LABEL_2;
      }
    }

    v18 = *(v7 + 32);

    v19 = swift_task_alloc();
    *(v0 + 128) = v19;
    *v19 = v0;
    v19[1] = sub_214929488;
    v20 = *(v0 + 16);

    sub_214934144(v18, v8);
  }
}

uint64_t sub_21492982C()
{
  v1[2] = v0;
  v2 = sub_21498E690();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2149298EC, 0, 0);
}

uint64_t sub_2149298EC()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "resetRecommendations()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_214929A74;
  v12 = v0[2];

  return sub_214938FE0();
}

uint64_t sub_214929A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 48);
  v7 = *v4;
  v5[7] = a2;
  v5[8] = a3;

  if (v3)
  {
    v8 = v5[5];

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_214929BC4, 0, 0);
  }
}

void *sub_214929BC4()
{
  v1 = *(v0[7] + 16);
  v0[9] = v1;

  if (v1)
  {
    v0[10] = 0;
    if (result[2])
    {
      v3 = result[5];
      v0[11] = v3;
      v4 = result[4];

      v5 = swift_task_alloc();
      v0[12] = v5;
      *v5 = v0;
      v5[1] = sub_214929DC8;
      v6 = v0[2];

      return sub_214939D7C(v4, v3, 0x4C414954494E49, 0xE700000000000000);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = v0[8];
  swift_bridgeObjectRelease_n();
  v8 = *(v7 + 16);
  v0[13] = v8;
  result = v0[8];
  if (v8)
  {
    v0[14] = 0;
    if (!result[2])
    {
      goto LABEL_15;
    }

    v9 = result[5];
    v0[15] = v9;
    v10 = result[4];

    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = sub_21492A15C;
    v12 = v0[2];

    return sub_214939884(v10, v9, 0x4C414954494E49, 0xE700000000000000);
  }

  else
  {
    v13 = v0[5];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_214929DC8()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 96);
  v5 = *v1;

  v6 = v2[11];
  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];

    v9 = v3[7];

    v10 = v3[5];

    v11 = *(v5 + 8);

    return v11();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_214929F4C, 0, 0);
  }
}

void sub_214929F4C()
{
  v1 = v0[10] + 1;
  if (v1 == v0[9])
  {
    v2 = v0[7];
    v3 = v0[8];
    swift_bridgeObjectRelease_n();
    v4 = *(v3 + 16);
    v0[13] = v4;
    v5 = v0[8];
    if (v4)
    {
      v0[14] = 0;
      if (v5[2])
      {
        v6 = v5[5];
        v0[15] = v6;
        v7 = v5[4];

        v8 = swift_task_alloc();
        v0[16] = v8;
        *v8 = v0;
        v8[1] = sub_21492A15C;
        v9 = v0[2];

        sub_214939884(v7, v6, 0x4C414954494E49, 0xE700000000000000);
        return;
      }

LABEL_15:
      __break(1u);
      return;
    }

    v16 = v0[5];

    v17 = v0[1];

    v17();
  }

  else
  {
    v0[10] = v1;
    v10 = v0[7];
    if (v1 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v11 = v10 + 104 * v1;
    v12 = *(v11 + 40);
    v0[11] = v12;
    v13 = *(v11 + 32);

    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    v14[1] = sub_214929DC8;
    v15 = v0[2];

    sub_214939D7C(v13, v12, 0x4C414954494E49, 0xE700000000000000);
  }
}

uint64_t sub_21492A15C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = *(v2 + 120);

  if (v0)
  {
    v7 = *(v3 + 64);

    v8 = *(v3 + 40);

    v9 = *(v5 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21492A2C4, 0, 0);
  }
}

void sub_21492A2C4()
{
  v1 = v0[14] + 1;
  if (v1 == v0[13])
  {
    v2 = v0[8];
    v3 = v0[5];

    v4 = v0[1];

    v4();
  }

  else
  {
    v0[14] = v1;
    v5 = v0[8];
    if (v1 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = v5 + 104 * v1;
      v7 = *(v6 + 40);
      v0[15] = v7;
      v8 = *(v6 + 32);

      v9 = swift_task_alloc();
      v0[16] = v9;
      *v9 = v0;
      v9[1] = sub_21492A15C;
      v10 = v0[2];

      sub_214939884(v8, v7, 0x4C414954494E49, 0xE700000000000000);
    }
  }
}

uint64_t sub_21492A40C()
{
  v1[3] = v0;
  v2 = sub_21498E690();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21492A4CC, 0, 0);
}

uint64_t sub_21492A4CC()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "resetMailCleanup()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  (*(v9 + 8))(v8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  v12 = *(MEMORY[0x277D858E8] + 4);
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_21492A6AC;
  v14 = v0[3];
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D837D0];

  return MEMORY[0x282200600](v0 + 2, v15, v11, 0, 0, &unk_21499A7E0, v14, v16);
}

uint64_t sub_21492A6AC()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21492A7A8, 0, 0);
}

uint64_t sub_21492A7A8()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_21492A810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C400, &qword_21499A7E8);
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21492A918, 0, 0);
}

uint64_t sub_21492A918()
{
  v1 = v0[10];
  v16 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = sub_21498FAE0();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  sub_2148B8CE8(v1, &unk_21499A7F8, v6);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;

  sub_2148B8CE8(v1, &unk_21499A808, v7);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);
  v5(v1, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;

  sub_2148B8CE8(v1, &unk_21499A818, v8);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;

  sub_2148B8CE8(v1, &unk_21499A828, v9);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);
  v10 = *v2;
  sub_21498FA80();
  v0[11] = MEMORY[0x277D84F90];
  v11 = *(MEMORY[0x277D856B0] + 4);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_21492AC14;
  v13 = v0[9];
  v14 = v0[7];

  return MEMORY[0x2822002E8](v0 + 2, 0, 0, v14);
}

uint64_t sub_21492AC14()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21492AD10, 0, 0);
}

uint64_t sub_21492AD10()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[11];
  if (v2)
  {
    v4 = v0[11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2148A90C8(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_2148A90C8((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v1;
    *(v9 + 5) = v2;
    v0[11] = v6;
    v10 = *(MEMORY[0x277D856B0] + 4);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_21492AC14;
    v12 = v0[9];
    v13 = v0[7];

    return MEMORY[0x2822002E8](v0 + 2, 0, 0, v13);
  }

  else
  {
    v14 = v0[10];
    v15 = v0[4];
    (*(v0[8] + 8))(v0[9], v0[7]);
    *v15 = v3;

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_21492AEAC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21492AF40;

  return sub_21492808C();
}

uint64_t sub_21492AF40()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_21492B088;
  }

  else
  {
    v3 = sub_21492B054;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21492B054()
{
  v1 = *(v0 + 16);
  *v1 = 0x1000000000000017;
  v1[1] = 0x80000002149A2890;
  return (*(v0 + 8))();
}

uint64_t sub_21492B088()
{
  v1 = *(v0 + 16);
  *v1 = 0x1000000000000018;
  v1[1] = 0x80000002149A2870;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21492B108(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21492B19C;

  return sub_2149289B0();
}

uint64_t sub_21492B19C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_21492B2E4;
  }

  else
  {
    v3 = sub_21492B2B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21492B2B0()
{
  v1 = *(v0 + 16);
  *v1 = 0x100000000000001ALL;
  v1[1] = 0x80000002149A2850;
  return (*(v0 + 8))();
}

uint64_t sub_21492B2E4()
{
  v1 = *(v0 + 16);
  *v1 = 0x100000000000001BLL;
  v1[1] = 0x80000002149A2830;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21492B364(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21492B3F8;

  return sub_214928E90();
}

uint64_t sub_21492B3F8()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_21492B540;
  }

  else
  {
    v3 = sub_21492B50C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21492B50C()
{
  v1 = *(v0 + 16);
  *v1 = 0x100000000000001CLL;
  v1[1] = 0x80000002149A2810;
  return (*(v0 + 8))();
}

uint64_t sub_21492B540()
{
  v1 = *(v0 + 16);
  *v1 = 0x100000000000001DLL;
  v1[1] = 0x80000002149A27F0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21492B5C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21492B654;

  return sub_21492982C();
}

uint64_t sub_21492B654()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_21492B79C;
  }

  else
  {
    v3 = sub_21492B768;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21492B768()
{
  v1 = *(v0 + 16);
  *v1 = 0x100000000000001FLL;
  v1[1] = 0x80000002149A27D0;
  return (*(v0 + 8))();
}

uint64_t sub_21492B79C()
{
  v1 = *(v0 + 16);
  *v1 = 0x1000000000000020;
  v1[1] = 0x80000002149A27A0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21492B81C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_214899964;

  return sub_21492A810(a1, a2, v2);
}

uint64_t sub_21492B8C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_21492AEAC(a1);
}

uint64_t sub_21492B97C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899138;

  return sub_21492B108(a1);
}

uint64_t sub_21492BA30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_21492B364(a1);
}

uint64_t sub_21492BAE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_21492B5C0(a1);
}

unint64_t sub_21492BBEC()
{
  result = qword_27CA1C408;
  if (!qword_27CA1C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C408);
  }

  return result;
}

uint64_t sub_21492BC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C410, &unk_21499B410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21492BCB8()
{
  result = sub_21498F840();
  qword_281194E10 = result;
  return result;
}

uint64_t sub_21492BCF0()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_21492BD54()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_21492BDA0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21498FEF0();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_21492BE20@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21498FEF0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21492BE78(uint64_t a1)
{
  v2 = sub_21492CE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21492BEB4(uint64_t a1)
{
  v2 = sub_21492CE64();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21492BEF0()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_281190CB8 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_281194E10 object:0];
}

uint64_t sub_21492BF90(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C428, &unk_21499A988);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  *(v1 + 16) = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492CE64();
  sub_2149901B0();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
    sub_21492CEB8();
    sub_21498FF40();
    (*(v5 + 8))(v8, v4);
    v10 = *(v1 + 16);
    *(v1 + 16) = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_21492C150()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21492C1AC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214899138;

  return sub_21492C4B8();
}

uint64_t sub_21492C378@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_21492BF90(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_21492C460(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_214990080() & 1;
  }
}

uint64_t sub_21492C4B8()
{
  v1[19] = v0;
  v2 = sub_21498F510();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = sub_21498F540();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v8 = sub_21498E320();
  v1[26] = v8;
  v9 = *(v8 - 8);
  v1[27] = v9;
  v10 = *(v9 + 64) + 15;
  v1[28] = swift_task_alloc();
  v11 = sub_21498E690();
  v1[29] = v11;
  v12 = *(v11 - 8);
  v1[30] = v12;
  v13 = *(v12 + 64) + 15;
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21492C68C, 0, 0);
}

uint64_t sub_21492C68C()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FB90();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "[MAInvalidateCacheAction] invalidateMailCleanupCacheNotification", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v8 = v0 + 12;
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];
  v12 = v0[19];

  (*(v10 + 8))(v9, v11);
  if (*(v12 + 16))
  {
    v13 = *(v12 + 16);
  }

  else
  {
    v13 = &unk_2826C3CE0;
  }

  v0[8] = 0x746E65736E6F63;
  v0[9] = 0xE700000000000000;
  v14 = swift_task_alloc();
  *(v14 + 16) = v0 + 8;

  v15 = sub_214923544(sub_21492CDE8, v14, v13);

  if (v15)
  {
    v17 = v0[27];
    v16 = v0[28];
    v18 = v0[26];
    _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
    v20 = v19;
    sub_21498E310();
    v21 = sub_21498E2B0();
    v22 = *&v20[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey];
    v23 = *&v20[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey + 8];
    v24 = sub_21498F840();
    [v20 setValue:v21 forKey:v24];

    (*(v17 + 8))(v16, v18);
    v8 = v0 + 12;
  }

  v0[10] = 0x6E65726566657270;
  v0[11] = 0xEA00000000006563;
  v25 = swift_task_alloc();
  *(v25 + 16) = v0 + 10;
  v26 = sub_214923544(sub_21492D04C, v25, v13);

  if (v26)
  {
    v28 = v0[27];
    v27 = v0[28];
    v29 = v0[26];
    _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
    v31 = v30;
    sub_21498E310();
    v32 = sub_21498E2B0();
    v33 = *&v31[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey];
    v34 = *&v31[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey + 8];
    v35 = sub_21498F840();
    [v31 setValue:v32 forKey:v35];

    (*(v28 + 8))(v27, v29);
  }

  v0[12] = 7367028;
  v0[13] = 0xE300000000000000;
  v36 = swift_task_alloc();
  *(v36 + 16) = v8;
  v37 = sub_214923544(sub_21492D04C, v36, v13);

  if (v37)
  {
    v39 = v0[27];
    v38 = v0[28];
    v40 = v0[26];
    _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
    v42 = v41;
    sub_21498E310();
    v43 = sub_21498E2B0();
    v44 = *&v42[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey];
    v45 = *&v42[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey + 8];
    v46 = sub_21498F840();
    [v42 setValue:v43 forKey:v46];

    (*(v39 + 8))(v38, v40);
  }

  v0[14] = 1701606770;
  v0[15] = 0xE400000000000000;
  v47 = swift_task_alloc();
  *(v47 + 16) = v0 + 14;
  v48 = sub_214923544(sub_21492D04C, v47, v13);

  if (v48)
  {
    v50 = v0[27];
    v49 = v0[28];
    v51 = v0[26];
    _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
    v53 = v52;
    sub_21498E310();
    v54 = sub_21498E2B0();
    v55 = *&v53[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey];
    v56 = *&v53[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey + 8];
    v57 = sub_21498F840();
    [v53 setValue:v54 forKey:v57];

    (*(v50 + 8))(v49, v51);
  }

  v0[16] = 0x72616F6268736164;
  v0[17] = 0xE900000000000064;
  v58 = swift_task_alloc();
  *(v58 + 16) = v0 + 16;
  v59 = sub_214923544(sub_21492D04C, v58, v13);

  if (v59)
  {
    v61 = v0[27];
    v60 = v0[28];
    v62 = v0[26];
    _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
    v64 = v63;
    sub_21498E310();
    v65 = sub_21498E2B0();
    v66 = *&v64[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_dashboardEntryPointInfoStaleSinceKey];
    v67 = *&v64[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_dashboardEntryPointInfoStaleSinceKey + 8];
    v68 = sub_21498F840();
    [v64 setValue:v65 forKey:v68];

    (*(v61 + 8))(v60, v62);
  }

  v79 = v0[31];
  v80 = v0[28];
  v70 = v0[24];
  v69 = v0[25];
  v71 = v0[22];
  v78 = v0[23];
  v72 = v0[20];
  v73 = v0[21];
  sub_2148FFDCC();
  v77 = sub_21498FC20();
  v0[6] = sub_21492BEF0;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2148A457C;
  v0[5] = &block_descriptor_4;
  v74 = _Block_copy(v0 + 2);
  sub_21498F530();
  v0[18] = MEMORY[0x277D84F90];
  sub_21492CE1C(&qword_281190D90, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_214925D6C();
  sub_21498FD60();
  MEMORY[0x216058CD0](0, v69, v71, v74);
  _Block_release(v74);

  (*(v73 + 8))(v71, v72);
  (*(v70 + 8))(v69, v78);

  v75 = v0[1];

  return v75();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21492CE1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21492CE64()
{
  result = qword_27CA1C430;
  if (!qword_27CA1C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C430);
  }

  return result;
}

unint64_t sub_21492CEB8()
{
  result = qword_281190CE8;
  if (!qword_281190CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A378, &qword_214993B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190CE8);
  }

  return result;
}

unint64_t sub_21492CF48()
{
  result = qword_27CA1C438;
  if (!qword_27CA1C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C438);
  }

  return result;
}

unint64_t sub_21492CFA0()
{
  result = qword_27CA1C440;
  if (!qword_27CA1C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C440);
  }

  return result;
}

unint64_t sub_21492CFF8()
{
  result = qword_27CA1C448;
  if (!qword_27CA1C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C448);
  }

  return result;
}

uint64_t sub_21492D068()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_21492D0B0()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MAUIWisperUnsubscribeRequest(0);
  v24.receiver = v0;
  v24.super_class = v6;
  v7 = objc_msgSendSuper2(&v24, sel_urlString);
  v8 = sub_21498F870();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v12 = v8;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v13, v1);
    v14 = v0;
    v15 = sub_21498E670();
    v16 = sub_21498FBD0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2149079F4(0xD000000000000032, 0x80000002149A2AF0, v23);
      *(v17 + 12) = 2080;

      v19 = sub_2149079F4(v12, v10, v23);

      *(v17 + 14) = v19;
      _os_log_impl(&dword_21488E000, v15, v16, "Using fallback url for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v18, -1, -1);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v20 = (*(v2 + 8))(v5, v1);
    v23[0] = sub_21498DE14(v20);
    v23[1] = v21;

    MEMORY[0x2160589C0](0xD000000000000036, 0x80000002149A2B30);

    return v23[0];
  }

  return v8;
}

uint64_t sub_21492D400(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[1] = a3;
  v16[2] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C4B8, &qword_21499AFD0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F4C4();
  sub_2149901C0();
  v18 = a2;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_2148F6A8C(&qword_281190CF8);
  sub_214990040();
  if (!v5)
  {
    LOBYTE(v18) = 1;
    sub_21498FFC0();
    v18 = a5;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C4C8, &qword_21499AFD8);
    sub_21492F56C(&qword_27CA1C4D0, sub_21492F518);
    sub_21498FFE0();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_21492D67C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C4A8, &unk_21499AFC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F470();
  sub_2149901C0();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_2148F6A8C(&qword_281190CF8);
  sub_214990040();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21492D7FC()
{
  v1 = 0x696F507972746E65;
  if (*v0 != 1)
  {
    v1 = 0x636974796C616E61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737265646E6573;
  }
}

uint64_t sub_21492D860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21492E824(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21492D888(uint64_t a1)
{
  v2 = sub_21492F4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21492D8C4(uint64_t a1)
{
  v2 = sub_21492F4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21492D900@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21492E94C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_21492D968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265646E6573 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_214990080();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21492D9F0(uint64_t a1)
{
  v2 = sub_21492F470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21492DA2C(uint64_t a1)
{
  v2 = sub_21492F470();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21492DA68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_21492EC24(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21492DABC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21492DAEC(uint64_t a1)
{
  v2 = sub_21492F19C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21492DB28(uint64_t a1)
{
  v2 = sub_21492F19C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21492DB64(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C480, &qword_21499ACB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F19C();
  sub_2149901C0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21492DC78()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_21492DCC0()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MAUIWisperRemoveUnsubscribeRequest(0);
  v24.receiver = v0;
  v24.super_class = v6;
  v7 = objc_msgSendSuper2(&v24, sel_urlString);
  v8 = sub_21498F870();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v12 = v8;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v13, v1);
    v14 = v0;
    v15 = sub_21498E670();
    v16 = sub_21498FBD0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2149079F4(0xD000000000000032, 0x80000002149A2A70, v23);
      *(v17 + 12) = 2080;

      v19 = sub_2149079F4(v12, v10, v23);

      *(v17 + 14) = v19;
      _os_log_impl(&dword_21488E000, v15, v16, "Using fallback url for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v18, -1, -1);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v20 = (*(v2 + 8))(v5, v1);
    v23[0] = sub_21498DE14(v20);
    v23[1] = v21;

    MEMORY[0x2160589C0](0xD000000000000036, 0x80000002149A2AB0);

    return v23[0];
  }

  return v8;
}

id sub_21492DFE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21492E050()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_21492E098()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DashboardEntryPointRequest = type metadata accessor for MAUIWisperGetDashboardEntryPointRequest(0);
  v24.receiver = v0;
  v24.super_class = DashboardEntryPointRequest;
  v7 = objc_msgSendSuper2(&v24, sel_urlString);
  v8 = sub_21498F870();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v12 = v8;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v13, v1);
    v14 = v0;
    v15 = sub_21498E670();
    v16 = sub_21498FBD0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_2149079F4(0xD000000000000037, 0x80000002149A29F0, v23);
      *(v17 + 12) = 2080;

      v19 = sub_2149079F4(v12, v10, v23);

      *(v17 + 14) = v19;
      _os_log_impl(&dword_21488E000, v15, v16, "Using fallback url for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v18, -1, -1);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v20 = (*(v2 + 8))(v5, v1);
    v23[0] = sub_21498DE14(v20);
    v23[1] = v21;

    MEMORY[0x2160589C0](0xD00000000000003ALL, 0x80000002149A2A30);

    return v23[0];
  }

  return v8;
}

id sub_21492E3A8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21498F840();

  return v5;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21492E46C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21492E4B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21492E518(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C478, &qword_21499ACA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F148();
  sub_2149901C0();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_214990000();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v17[14] = 1;
  sub_214990000();
  v16 = *(v3 + 32);
  v17[13] = 2;
  sub_214990010();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21492E6B8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D657449756E656DLL;
  }
}

uint64_t sub_21492E724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21492EDCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21492E74C(uint64_t a1)
{
  v2 = sub_21492F148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21492E788(uint64_t a1)
{
  v2 = sub_21492F148();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21492E7C4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21492EEF8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_21492E824(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737265646E6573 && a2 == 0xE700000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696F507972746E65 && a2 == 0xEA0000000000746ELL || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21492E94C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C4E0, &qword_21499AFE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F4C4();
  sub_2149901B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  v11 = 0;
  sub_2148F6A8C(&qword_281190CE8);
  sub_21498FFA0();
  v9 = v12;
  LOBYTE(v12) = 1;
  sub_21498FF20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C4C8, &qword_21499AFD8);
  v11 = 2;
  sub_21492F56C(&qword_27CA1C4E8, sub_21492F5E4);
  v10 = 0;
  sub_21498FF40();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_21492EC24(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C4F8, &qword_21499AFE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F470();
  sub_2149901B0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
    sub_2148F6A8C(&qword_281190CE8);
    sub_21498FFA0();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_21492EDCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D657449756E656DLL && a2 == 0xED0000656C746954;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002149A0A90 == a2 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002149A0AB0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21492EEF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C470, &qword_21499ACA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21492F148();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v11 = sub_21498FF60();
  v13 = v12;
  v22 = a2;
  v23 = v11;
  v25 = 1;
  v14 = sub_21498FF60();
  v21 = v15;
  v24 = 2;
  v16 = sub_21498FF70();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v18 = v22;
  *v22 = v23;
  v18[1] = v13;
  v19 = v21;
  v18[2] = v14;
  v18[3] = v19;
  *(v18 + 32) = v16 & 1;
  return result;
}

unint64_t sub_21492F148()
{
  result = qword_281190FE8[0];
  if (!qword_281190FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281190FE8);
  }

  return result;
}

unint64_t sub_21492F19C()
{
  result = qword_27CA1C488;
  if (!qword_27CA1C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C488);
  }

  return result;
}

uint64_t sub_21492F1F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21492F238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21492F2BC()
{
  result = qword_27CA1C490;
  if (!qword_27CA1C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C490);
  }

  return result;
}

unint64_t sub_21492F314()
{
  result = qword_27CA1C498;
  if (!qword_27CA1C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C498);
  }

  return result;
}

unint64_t sub_21492F36C()
{
  result = qword_27CA1C4A0;
  if (!qword_27CA1C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C4A0);
  }

  return result;
}

unint64_t sub_21492F3C4()
{
  result = qword_281190FD8;
  if (!qword_281190FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FD8);
  }

  return result;
}

unint64_t sub_21492F41C()
{
  result = qword_281190FE0;
  if (!qword_281190FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FE0);
  }

  return result;
}

unint64_t sub_21492F470()
{
  result = qword_27CA1C4B0;
  if (!qword_27CA1C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C4B0);
  }

  return result;
}

unint64_t sub_21492F4C4()
{
  result = qword_27CA1C4C0;
  if (!qword_27CA1C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C4C0);
  }

  return result;
}

unint64_t sub_21492F518()
{
  result = qword_27CA1C4D8;
  if (!qword_27CA1C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C4D8);
  }

  return result;
}

uint64_t sub_21492F56C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C4C8, &qword_21499AFD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21492F5E4()
{
  result = qword_27CA1C4F0;
  if (!qword_27CA1C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C4F0);
  }

  return result;
}

unint64_t sub_21492F65C()
{
  result = qword_27CA1C500;
  if (!qword_27CA1C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C500);
  }

  return result;
}

unint64_t sub_21492F6B4()
{
  result = qword_27CA1C508;
  if (!qword_27CA1C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C508);
  }

  return result;
}

unint64_t sub_21492F70C()
{
  result = qword_27CA1C510;
  if (!qword_27CA1C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C510);
  }

  return result;
}

unint64_t sub_21492F764()
{
  result = qword_27CA1C518;
  if (!qword_27CA1C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C518);
  }

  return result;
}

unint64_t sub_21492F7BC()
{
  result = qword_27CA1C520;
  if (!qword_27CA1C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C520);
  }

  return result;
}

unint64_t sub_21492F814()
{
  result = qword_27CA1C528;
  if (!qword_27CA1C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C528);
  }

  return result;
}

uint64_t sub_21492F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 24);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_214899964;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_21492FA14(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return v9(a1, a2);
}

uint64_t sub_21492FB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_214899964;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_21492FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_214899964;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_21492FDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_214899964;

  return v11(a1, a2, a3);
}

uint64_t sub_21492FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 64);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_21490976C;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_214930028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_214899964;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_21493015C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 80);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_21493029C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_21493029C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_2149303B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2149304D8;

  return v11(a1, a2, a3);
}

uint64_t sub_2149304D8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2149305D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_214899964;

  return v11(a1, a2, a3);
}

uint64_t sub_2149306FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 104);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_214899964;

  return v11(a1, a2, a3);
}

uint64_t sub_214930824(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 112);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21493093C;

  return v9(a1, a2);
}

uint64_t sub_21493093C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_214930A38(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 120);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21493ECB0;

  return v9(a1, a2);
}

uint64_t sub_214930BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 168);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_214899138;

  return v11(a1, a2, a3);
}

uint64_t sub_214930CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 176);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_214899138;

  return v11(a1, a2, a3);
}

uint64_t sub_214930E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 184);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_214899964;

  return v11(a1, a2, a3);
}

uint64_t sub_214930F30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C660, &qword_21499B530);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C668, &qword_21499B538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C670, &qword_21499B540);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_21498E9E0();
  sub_2148FFDCC();
  v14 = sub_21498FC20();
  v18[0] = v14;
  v15 = sub_21498FC00();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_2148B4C20(&qword_27CA1C678, &qword_27CA1C670, &qword_21499B540);
  sub_21493E950(&qword_281190CC8, sub_2148FFDCC);
  sub_21498EA60();
  sub_21489DFCC(v4, &qword_27CA1C660, &qword_21499B530);

  sub_2148B4C20(&qword_27CA1C680, &qword_27CA1C668, &qword_21499B538);
  v16 = sub_21498EA40();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_21493121C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_21491E990(sub_21493E8D8, v4, 1, 0);
}

uint64_t sub_2149312A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  if (a2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C688, &qword_21499B548), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5 + *((*MEMORY[0x277D85000] & *v5) + 0x60);
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
    v10 = *(v6 + 3);
    v11 = *(v6 + 4);
    v12 = v6[40];
    if (v6[41])
    {
      v14 = *v6;
      *&v15 = v8;
      *(&v15 + 1) = v9;
      *&v16 = v10 & 1;
      *(&v16 + 1) = v11;
      LOBYTE(v17) = v12 & 1;
      HIBYTE(v17) = 1;
      sub_21493EAE8(v7, v8, v9, v10, v11, v12, 1);
      a4(&v14);
      return sub_21493E8EC(v7, v8, v9, v10, v11, v12, 1);
    }

    else
    {
      sub_21493EAE8(v7, v8, v9, v10, v11, v12, 0);
      sub_21489B4F8(v8, v9);
      v14 = v7;
      v15 = 0u;
      v16 = 0u;
      v17 = 0;

      a4(&v14);
      return swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v14 = qword_27CA30F98;
    v15 = xmmword_27CA30FA0;
    LOBYTE(v16) = byte_27CA30FB0;
    *(&v16 + 1) = qword_27CA30FB8;
    LOBYTE(v17) = byte_27CA30FC0;
    HIBYTE(v17) = 1;

    a4(&v14);
    return sub_21493E8E0();
  }
}

uint64_t sub_2149314BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C600, &qword_21499B4D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_214919710(sub_21493E640, v8, 1, 0);
}

uint64_t sub_21493160C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C588, &qword_21499B460);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_21491A4D0(sub_21493BB48, v8, 1, 0);
}

uint64_t sub_21493175C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C530, &qword_21499B3F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_21491ABB0(sub_21493B984, v8, 1, 0);
}

uint64_t sub_2149318AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C6B8, &qword_21499B5A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_21491B290(sub_21493EA20, v8, 1, 0);
}

uint64_t sub_2149319FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5D8, &qword_21499B4B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_21491B970(sub_21493E5BC, v8, 1, 0);
}

uint64_t sub_214931B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C6D0, &qword_21499B5C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_21491C050(sub_21493EBD0, v8, 1, 0);
}

uint64_t sub_214931C9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5A0, &qword_21499B470);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_21491C730(sub_21493BC38, v8, 1, 0);
}

uint64_t sub_214931DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5C0, &qword_21499B490);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_21491CE10(sub_21493BCB8, v8, 1, 0);
}

uint64_t sub_214931F3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C6A0, &qword_21499B580);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_21491D4F0(sub_21493E9F4, v8, 1, 0);
}

uint64_t sub_21493208C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C550, &qword_21499B420);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_21491DBD0(sub_21493BA08, v8, 1, 0);
}

uint64_t sub_2149321DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C570, &qword_21499B440);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_21491E2B0(sub_21493BAC8, v8, 1, 0);
}

uint64_t sub_21493232C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C628, &qword_21499B4F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_21491F070(sub_21493E728, v8, 1, 0);
}

uint64_t sub_21493247C(uint64_t a1, uint64_t a2)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C608, &unk_21499B4E0), (v2 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v11 = qword_27CA30F98;
    v12 = xmmword_27CA30FA0;
    v13 = byte_27CA30FB0;
    v14 = qword_27CA30FB8;
    v15 = byte_27CA30FC0;
    sub_2148A2800();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v12;
    *(v16 + 24) = v13;
    *(v16 + 32) = v14;
    *(v16 + 40) = v15;

    goto LABEL_8;
  }

  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v5 = *v3;
  v4 = *(v3 + 1);
  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = v3[40];
  if (v3[41])
  {
    sub_2148A2800();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v4;
    *(v10 + 16) = v7;
    *(v10 + 24) = v6 & 1;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9 & 1;
    sub_214925DD0(v5, v4, v7, v6, v8, v9, 1);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C600, &qword_21499B4D8);
    return sub_21498FA60();
  }

  sub_214925DD0(v5, v4, v7, v6, v8, v9, 0);
  sub_214925DD0(v5, v4, v7, v6, v8, v9, 0);
  sub_21489B4F8(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C600, &qword_21499B4D8);
  sub_21498FA70();

  return sub_21493E668(v5, v4, v7, v6, v8, v9, 0);
}

uint64_t sub_2149326E0(uint64_t a1, uint64_t a2)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C590, &qword_21499B468), (v2 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v16 = qword_27CA30F98;
    v17 = xmmword_27CA30FA0;
    v18 = byte_27CA30FB0;
    v19 = qword_27CA30FB8;
    v20 = byte_27CA30FC0;
    sub_2148A2800();
    swift_allocError();
    *v21 = v16;
    *(v21 + 8) = v17;
    *(v21 + 24) = v18;
    *(v21 + 32) = v19;
    *(v21 + 40) = v20;

    goto LABEL_8;
  }

  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v4 = *v3;
  v6 = *v3;
  v5 = *(v3 + 1);
  v7 = *(v3 + 2);
  v8 = *(v3 + 3);
  v9 = *(v3 + 4);
  v10 = v3[40];
  if (v3[41])
  {
    v12 = *(v3 + 1);
    v11 = v3 + 1;
    v13 = *(v11 + 2);
    v14 = v11[6];
    sub_2148A2800();
    swift_allocError();
    *v15 = v4;
    *(v15 + 7) = v14;
    *(v15 + 5) = v13;
    *(v15 + 1) = v12;
    *(v15 + 8) = v5;
    *(v15 + 16) = v7;
    *(v15 + 24) = v8 & 1;
    *(v15 + 32) = v9;
    *(v15 + 40) = v10 & 1;
    sub_21493BB70(v6, v5, v7, v8, v9, v10, 1);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C588, &qword_21499B460);
    return sub_21498FA60();
  }

  sub_21493BB70(*v3, *(v3 + 1), *(v3 + 2), *(v3 + 3), *(v3 + 4), v3[40], 0);
  sub_21489B4F8(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C588, &qword_21499B460);
  return sub_21498FA70();
}

uint64_t sub_21493291C(uint64_t a1, uint64_t a2)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C538, &qword_21499B400), (v2 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v14 = qword_27CA30F98;
    v15 = xmmword_27CA30FA0;
    v16 = byte_27CA30FB0;
    v17 = qword_27CA30FB8;
    v18 = byte_27CA30FC0;
    sub_2148A2800();
    v19 = swift_allocError();
    *v20 = v14;
    *(v20 + 8) = v15;
    *(v20 + 24) = v16;
    *(v20 + 32) = v17;
    *(v20 + 40) = v18;
    *&v32 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C530, &qword_21499B3F8);
    return sub_21498FA60();
  }

  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60));
  v32 = *v3;
  v5 = v3[2];
  v4 = v3[3];
  v6 = *(v3 + 57);
  v33 = v3[1];
  v34 = v5;
  *&v35[9] = v6;
  *v35 = v4;
  v7 = v32;
  v8 = *(&v33 + 1);
  v9 = v33;
  v10 = *(&v5 + 1);
  v11 = v5;
  if (HIBYTE(v6))
  {
    sub_2148A2800();
    v12 = swift_allocError();
    *v13 = v32;
    *(v13 + 16) = v9;
    *(v13 + 24) = v8 & 1;
    *(v13 + 32) = v11;
    *(v13 + 40) = v10 & 1;
    v31 = v12;
    sub_2148AA824(&v32, &v25, &qword_27CA1C540, &qword_21499B408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C530, &qword_21499B3F8);
    return sub_21498FA60();
  }

  v23 = *&v35[8];
  v22 = *&v35[16];
  v24 = v35[0];
  sub_2148AA824(&v32, &v25, &qword_27CA1C540, &qword_21499B408);
  sub_21489B4F8(v23, v22);
  v25 = v7;
  v26 = v9;
  v27 = v8;
  v28 = v11;
  v29 = v10;
  v30 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C530, &qword_21499B3F8);
  return sub_21498FA70();
}

uint64_t sub_214932B74(uint64_t a1, uint64_t a2)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C6C0, &qword_21499B5A8), (v2 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v11 = qword_27CA30F98;
    v12 = xmmword_27CA30FA0;
    v13 = byte_27CA30FB0;
    v14 = qword_27CA30FB8;
    v15 = byte_27CA30FC0;
    sub_2148A2800();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v12;
    *(v16 + 24) = v13;
    *(v16 + 32) = v14;
    *(v16 + 40) = v15;

    goto LABEL_8;
  }

  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = v3[40];
  if (v3[41])
  {
    sub_2148A2800();
    swift_allocError();
    *v10 = v4;
    *(v10 + 8) = v5;
    *(v10 + 16) = v6;
    *(v10 + 24) = v7 & 1;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9 & 1;
    sub_21493EAE8(v4, v5, v6, v7, v8, v9, 1);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C6B8, &qword_21499B5A0);
    return sub_21498FA60();
  }

  sub_21493EAE8(v4, v5, v6, v7, v8, v9, 0);
  sub_21489B4F8(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C6B8, &qword_21499B5A0);
  return sub_21498FA70();
}

uint64_t sub_214932D7C(uint64_t a1, uint64_t a2)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5E0, &qword_21499B4B8), (v2 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v14 = qword_27CA30F98;
    v15 = xmmword_27CA30FA0;
    v16 = byte_27CA30FB0;
    v17 = qword_27CA30FB8;
    v18 = byte_27CA30FC0;
    sub_2148A2800();
    v19 = swift_allocError();
    *v20 = v14;
    *(v20 + 8) = v15;
    *(v20 + 24) = v16;
    *(v20 + 32) = v17;
    *(v20 + 40) = v18;
    *&v29 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5D8, &qword_21499B4B0);
    return sub_21498FA60();
  }

  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v29 = *v3;
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = v3[64];
  v30 = *(v3 + 1);
  v31 = v5;
  v33 = v6;
  v32 = v4;
  v7 = v29;
  v8 = *(&v30 + 1);
  v9 = v30;
  v10 = v5;
  v11 = BYTE8(v5);
  if (v6)
  {
    sub_2148A2800();
    v12 = swift_allocError();
    *v13 = v29;
    *(v13 + 16) = v9;
    *(v13 + 24) = v8 & 1;
    *(v13 + 32) = v10;
    *(v13 + 40) = v11 & 1;
    v28 = v12;
    sub_2148AA824(&v29, &v23, &qword_27CA1C5E8, &unk_21499B4C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5D8, &qword_21499B4B0);
    return sub_21498FA60();
  }

  v22 = v32;
  sub_2148AA824(&v29, &v23, &qword_27CA1C5E8, &unk_21499B4C0);
  sub_21489B4F8(v22, *(&v22 + 1));
  v23 = v7;
  v24 = v9;
  v25 = v8;
  v26 = v10;
  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C5D8, &qword_21499B4B0);
  return sub_21498FA70();
}

uint64_t sub_214932FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (!a2 || (__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6), (v10 = swift_dynamicCastClass()) == 0))
  {
    if (qword_27CA19F80 != -1)
    {
      swift_once();
    }

    v19 = qword_27CA30F98;
    v20 = xmmword_27CA30FA0;
    v21 = byte_27CA30FB0;
    v22 = qword_27CA30FB8;
    v23 = byte_27CA30FC0;
    sub_2148A2800();
    swift_allocError();
    *v24 = v19;
    *(v24 + 8) = v20;
    *(v24 + 24) = v21;
    *(v24 + 32) = v22;
    *(v24 + 40) = v23;

    goto LABEL_8;
  }

  v11 = v10 + *((*MEMORY[0x277D85000] & *v10) + 0x60);
  v13 = *v11;
  v12 = *(v11 + 1);
  v15 = *(v11 + 2);
  v14 = *(v11 + 3);
  v16 = *(v11 + 4);
  v17 = v11[40];
  if (v11[41])
  {
    sub_2148A2800();
    swift_allocError();
    *v18 = v13;
    *(v18 + 8) = v12;
    *(v18 + 16) = v15;
    *(v18 + 24) = v14 & 1;
    *(v18 + 32) = v16;
    *(v18 + 40) = v17 & 1;
    sub_214925DD0(v13, v12, v15, v14, v16, v17, 1);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    return sub_21498FA60();
  }

  sub_214925DD0(v13, v12, v15, v14, v16, v17, 0);
  sub_21489B4F8(v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  return sub_21498FA70();
}

uint64_t sub_2149331C4()
{
  result = sub_2149331E8();
  byte_281194E48 = result & 1;
  return result;
}

uint64_t sub_2149331E8()
{
  v0 = sub_21498E690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v59 = &v59 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v59 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v59 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - v14;
  v16 = sub_21498E4D0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, *MEMORY[0x277D24578], v16);
  v21 = sub_21498E4C0();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v0, qword_281194E18);
    (*(v1 + 16))(v15, v35, v0);
    v36 = sub_21498E670();
    v37 = sub_21498FBA0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21488E000, v36, v37, "isMailCleanupFeatureAvailable - feature not enabled", v38, 2u);
      MEMORY[0x216059AC0](v38, -1, -1);
    }

    (*(v1 + 8))(v15, v0);
    goto LABEL_42;
  }

  v22 = [objc_opt_self() defaultStore];
  if (!v22)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v0, qword_281194E18);
    (*(v1 + 16))(v13, v39, v0);
    v40 = sub_21498E670();
    v41 = sub_21498FBA0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_21488E000, v40, v41, "isMailCleanupFeatureAvailable - no account store", v42, 2u);
      MEMORY[0x216059AC0](v42, -1, -1);
    }

    (*(v1 + 8))(v13, v0);
    goto LABEL_42;
  }

  v23 = v22;
  v24 = [v22 aa_primaryAppleAccount];
  v25 = v1;
  v26 = v0;
  if (!v24)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v0, qword_281194E18);
    (*(v1 + 16))(v10, v43, v0);
    v44 = sub_21498E670();
    v45 = sub_21498FBA0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_21488E000, v44, v45, "isMailCleanupFeatureAvailable - no appleAccount", v46, 2u);
      MEMORY[0x216059AC0](v46, -1, -1);
    }

    (*(v1 + 8))(v10, v0);
    goto LABEL_42;
  }

  v27 = v24;
  v28 = *MEMORY[0x277CB89C8];
  if (([v24 isEnabledForDataclass_] & 1) == 0)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v0, qword_281194E18);
    (*(v1 + 16))(v5, v47, v0);
    v48 = sub_21498E670();
    v49 = sub_21498FBA0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_21488E000, v48, v49, "isMailCleanupFeatureAvailable - apple account does not have mail data class", v50, 2u);
      MEMORY[0x216059AC0](v50, -1, -1);
    }

    (*(v1 + 8))(v5, v26);
    goto LABEL_42;
  }

  v29 = [v27 propertiesForDataclass_];
  if (!v29)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v0, qword_281194E18);
    v54 = v59;
    (*(v1 + 16))(v59, v53, v26);
    v55 = sub_21498E670();
    v56 = sub_21498FBA0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_21488E000, v55, v56, "isMailCleanupFeatureAvailable - apple account has no properties for mail data class", v57, 2u);
      MEMORY[0x216059AC0](v57, -1, -1);
    }

    (*(v25 + 8))(v54, v26);
LABEL_42:
    v34 = 0;
    return v34 & 1;
  }

  v30 = v29;
  v31 = sub_21498F7E0();

  v60 = 0xD00000000000003ELL;
  v61 = 0x80000002149A2C70;
  sub_21498FDB0();
  if (!*(v31 + 16) || (v32 = sub_214908014(v62), (v33 & 1) == 0))
  {
    sub_21489E5C0(v62);
    goto LABEL_33;
  }

  sub_21489E614(*(v31 + 56) + 32 * v32, v63);
  sub_21489E5C0(v62);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v60 = 0xD00000000000003ELL;
    v61 = 0x80000002149A2C70;
    sub_21498FDB0();
    if (*(v31 + 16) && (v51 = sub_214908014(v62), (v52 & 1) != 0))
    {
      sub_21489E614(*(v31 + 56) + 32 * v51, v63);

      sub_21489E5C0(v62);

      if (swift_dynamicCast())
      {
        v34 = v60;
        return v34 & 1;
      }
    }

    else
    {

      sub_21489E5C0(v62);
    }

    v34 = 1;
    return v34 & 1;
  }

  if (v60 == 1702195828 && v61 == 0xE400000000000000)
  {

    v34 = 1;
  }

  else
  {
    v34 = sub_214990080();
  }

  return v34 & 1;
}

uint64_t sub_214933ACC()
{
  sub_21498E590();
  result = sub_21498E560();
  qword_27CA31038 = result;
  return result;
}

unint64_t sub_214933B00(void *a1)
{
  v2 = sub_21498E690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 propertiesForDataclass_];
  if (v7)
  {
    v8 = v7;
    v9 = sub_21498F7E0();

    v18 = 0xD000000000000020;
    v19 = 0x80000002149A0D20;
    sub_21498FDB0();
    if (*(v9 + 16) && (v10 = sub_214908014(v20), (v11 & 1) != 0))
    {
      sub_21489E614(*(v9 + 56) + 32 * v10, v21);
      sub_21489E5C0(v20);

      if (swift_dynamicCast())
      {
        return v18;
      }
    }

    else
    {

      sub_21489E5C0(v20);
    }
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_281194E18);
  (*(v3 + 16))(v6, v13, v2);
  v14 = sub_21498E670();
  v15 = sub_21498FB90();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21488E000, v14, v15, "[MARepository] getAPIGatewayUrlFromAccountBag - url is empty", v16, 2u);
    MEMORY[0x216059AC0](v16, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_214933DA0(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_214933DC0, 0, 0);
}

uint64_t sub_214933DC0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = type metadata accessor for UnifiedRulesAPIRequest();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6 = objc_allocWithZone(v5);
  *&v6[qword_281191540] = v2;
  sub_2148AA824(v0 + 16, v0 + 56, &qword_27CA1C410, &unk_21499B410);

  v7 = v3;
  v8 = v4;
  v9 = sub_21493B6E4(v3, v8, v0 + 56, &qword_27CA1C6C8, &qword_21499B5B8, &qword_27CA1C3D8, &qword_21499B5B0);
  *(v0 + 120) = v9;

  sub_21489DFCC(v0 + 16, &qword_27CA1C410, &unk_21499B410);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *(v10 + 16) = v9;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = sub_214933F8C;

  return MEMORY[0x2822008A0](v0 + 96, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493EA18, v10, &type metadata for UnifiedRulesAPIResponse);
}

uint64_t sub_214933F8C()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  *(v3 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2149340D8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 128);

    v5 = *(v3 + 96);
    v6 = *(v3 + 8);

    return v6(v5);
  }
}

uint64_t sub_2149340D8()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);
  v3 = *(v0 + 144);

  return v2();
}

uint64_t sub_214934144(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_21498E690();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214934208, 0, 0);
}

uint64_t sub_214934208()
{
  v29 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v5 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_21498E670();
  v7 = sub_21498FBD0();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];
  if (v8)
  {
    v13 = v0[12];
    v12 = v0[13];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2149079F4(v13, v12, &v28);
    _os_log_impl(&dword_21488E000, v6, v7, "deleteUnifiedRule(%s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x216059AC0](v15, -1, -1);
    MEMORY[0x216059AC0](v14, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  v19 = *(v16 + 32);
  v20 = *(v16 + 40);
  v0[5] = &type metadata for DeleteUnifiedRuleAPIRequest.DeleteUnifiedRuleAPIRequestPayload;
  v0[6] = sub_21493E998();
  v0[2] = v18;
  v0[3] = v17;
  objc_allocWithZone(type metadata accessor for DeleteUnifiedRuleAPIRequest());
  sub_2148AA824((v0 + 2), (v0 + 7), &qword_27CA1C410, &unk_21499B410);

  v21 = v19;
  v22 = v20;
  v23 = sub_21493B6E4(v19, v22, (v0 + 7), &qword_27CA1C6B0, &qword_21499B598, &qword_27CA1C3D0, &unk_21499A710);
  v0[18] = v23;

  sub_21489DFCC((v0 + 2), &qword_27CA1C410, &unk_21499B410);
  v24 = swift_task_alloc();
  v0[19] = v24;
  *(v24 + 16) = v23;
  v25 = *(MEMORY[0x277D85A40] + 4);
  v26 = swift_task_alloc();
  v0[20] = v26;
  *v26 = v0;
  v26[1] = sub_214934528;

  return MEMORY[0x2822008A0](v26, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493E9EC, v24, &type metadata for DeleteUnifiedRuleAPIResponse);
}

uint64_t sub_214934528()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  *(v3 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21493467C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 152);
    v5 = *(v3 + 136);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_21493467C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);

  v3 = *(v0 + 8);
  v4 = *(v0 + 168);

  return v3();
}

uint64_t sub_2149346F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 720) = v6;
  *(v7 + 712) = a6;
  *(v7 + 704) = a5;
  *(v7 + 696) = a4;
  *(v7 + 688) = a3;
  *(v7 + 944) = a2;
  v9 = sub_21498E690();
  *(v7 + 728) = v9;
  v10 = *(v9 - 8);
  *(v7 + 736) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 744) = swift_task_alloc();
  *(v7 + 752) = swift_task_alloc();
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v7 + 760) = *(a1 + 8);
  *(v7 + 776) = v12;
  *(v7 + 792) = v13;
  *(v7 + 808) = *(a1 + 64);

  return MEMORY[0x2822009F8](sub_2149347FC, 0, 0);
}

uint64_t sub_2149347FC()
{
  v44 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 808);
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v8 = *(v0 + 736);
  v9 = *(v0 + 728);
  v10 = __swift_project_value_buffer(v9, qword_281194E18);
  *(v0 + 816) = v10;
  v11 = *(v8 + 16);
  *(v0 + 824) = v11;
  *(v0 + 832) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v7, v10, v9);

  sub_2148F20B8(v4, v3);
  v12 = sub_21498E670();
  v13 = sub_21498FBD0();

  sub_2148AF724(v4, v3);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 768);
    v15 = *(v0 + 752);
    v16 = *(v0 + 736);
    v17 = *(v0 + 728);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43 = v19;
    *v18 = 136315138;
    v20 = MEMORY[0x216058A90](v14, MEMORY[0x277D837D0]);
    v22 = sub_2149079F4(v20, v21, &v43);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_21488E000, v12, v13, "unsubscribeFromOneSender(%s)", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x216059AC0](v19, -1, -1);
    MEMORY[0x216059AC0](v18, -1, -1);

    v23 = *(v16 + 8);
    v24 = v23(v15, v17);
  }

  else
  {
    v25 = *(v0 + 752);
    v26 = *(v0 + 736);
    v27 = *(v0 + 728);

    v23 = *(v26 + 8);
    v24 = v23(v25, v27);
  }

  *(v0 + 840) = v23;
  if (*(v0 + 944) == 1)
  {
    v28 = *(v0 + 688);
    if (v28)
    {
      if (is_mul_ok(v28, 0xF4240uLL))
      {
        v29 = 1000000 * v28;
        v30 = *(MEMORY[0x277D857E8] + 4);
        v31 = swift_task_alloc();
        *(v0 + 848) = v31;
        *v31 = v0;
        v31[1] = sub_214934C08;
        v24 = v29;

        return MEMORY[0x282200480](v24);
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return MEMORY[0x282200480](v24);
    }
  }

  v32 = *(v0 + 768);
  v33 = v32[2];
  *(v0 + 856) = v33;
  if (v33)
  {
    *(v0 + 864) = 0;
    if (!v32[2])
    {
      goto LABEL_21;
    }

    v34 = v32[4];
    *(v0 + 872) = v34;
    v35 = v32[5];
    *(v0 + 880) = v35;

    v36 = swift_task_alloc();
    *(v0 + 888) = v36;
    *v36 = v0;
    v36[1] = sub_214934E48;
    v37 = *(v0 + 720);

    return sub_214935B10(v34, v35);
  }

  else
  {
    v39 = *(v0 + 752);
    v40 = *(v0 + 744);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_214934C08()
{
  v2 = *(*v1 + 848);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_21493ECAC;
  }

  else
  {
    v3 = sub_214934D20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_214934D20()
{
  v1 = v0[96];
  v2 = v1[2];
  v0[107] = v2;
  if (v2)
  {
    v0[108] = 0;
    if (v1[2])
    {
      v3 = v1[4];
      v0[109] = v3;
      v4 = v1[5];
      v0[110] = v4;

      v5 = swift_task_alloc();
      v0[111] = v5;
      *v5 = v0;
      v5[1] = sub_214934E48;
      v6 = v0[90];

      sub_214935B10(v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v7 = v0[94];
    v8 = v0[93];

    v9 = v0[1];

    v9();
  }
}

uint64_t sub_214934E48(uint64_t a1)
{
  v3 = *(*v2 + 888);
  v4 = *v2;
  v4[112] = a1;

  if (v1)
  {
    v5 = v4[110];
    v6 = v4[94];
    v7 = v4[93];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_214934FA8, 0, 0);
  }
}

uint64_t sub_214934FA8()
{
  v44 = v0;
  v1 = *(*(v0 + 896) + 16);
  *(v0 + 904) = v1;
  v2 = *(v0 + 880);
  if (v1)
  {
    v3 = *(v0 + 880);

    *(v0 + 912) = 0;
    v5 = *(v0 + 896);
    if (*(v5 + 2))
    {
      v6 = v5[3];
      *(v0 + 112) = v5[2];
      *(v0 + 128) = v6;
      v7 = v5[4];
      v8 = v5[5];
      v9 = v5[7];
      *(v0 + 176) = v5[6];
      *(v0 + 192) = v9;
      *(v0 + 144) = v7;
      *(v0 + 160) = v8;
      memmove((v0 + 16), v5 + 2, 0x60uLL);
      sub_2148AFFDC(v0 + 112, v0 + 592);
      v10 = swift_task_alloc();
      *(v0 + 936) = v10;
      *v10 = v0;
      v10[1] = sub_214935618;
      v11 = *(v0 + 712);

      return sub_21493D94C(v0 + 16, v11);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v12 = *(v0 + 832);
  (*(v0 + 824))(*(v0 + 744), *(v0 + 816), *(v0 + 728));

  v13 = sub_21498E670();
  v14 = sub_21498FBD0();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 880);
  if (v15)
  {
    v17 = *(v0 + 872);
    v42 = *(v0 + 840);
    v18 = *(v0 + 744);
    v19 = *(v0 + 728);
    v20 = *(v0 + 736) + 8;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = v22;
    *v21 = 136315138;
    v23 = sub_2149079F4(v17, v16, &v43);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_21488E000, v13, v14, "- No unsubscribe links found for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x216059AC0](v22, -1, -1);
    MEMORY[0x216059AC0](v21, -1, -1);

    v42(v18, v19);
  }

  else
  {
    v24 = *(v0 + 840);
    v25 = *(v0 + 744);
    v26 = *(v0 + 736);
    v27 = *(v0 + 728);
    v28 = *(v0 + 880);

    v24(v25, v27);
  }

  v29 = *(v0 + 896);
  v30 = *(v0 + 864);
  v31 = *(v0 + 856);

  if (v30 + 1 == v31)
  {
    v32 = *(v0 + 752);
    v33 = *(v0 + 744);

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v35 = *(v0 + 864) + 1;
    *(v0 + 864) = v35;
    v36 = *(v0 + 768);
    if (v35 >= *(v36 + 16))
    {
      goto LABEL_18;
    }

    v37 = v36 + 16 * v35;
    v38 = *(v37 + 32);
    *(v0 + 872) = v38;
    v39 = *(v37 + 40);
    *(v0 + 880) = v39;

    v40 = swift_task_alloc();
    *(v0 + 888) = v40;
    *v40 = v0;
    v40[1] = sub_214934E48;
    v41 = *(v0 + 720);

    return sub_214935B10(v38, v39);
  }
}

uint64_t sub_214935368()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = swift_task_alloc();
  *(v2 + 936) = v5;
  *v5 = v4;
  v5[1] = sub_214935618;
  v6 = *(v2 + 712);

  return sub_21493D94C(v2 + 16, v6);
}

uint64_t sub_2149354C0()
{
  v2 = *v1;
  v3 = *(*v1 + 928);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = swift_task_alloc();
  *(v2 + 936) = v5;
  *v5 = v4;
  v5[1] = sub_214935618;
  v6 = *(v2 + 712);

  return sub_21493D94C(v2 + 16, v6);
}

uint64_t sub_214935618()
{
  v1 = *v0;
  v2 = *(*v0 + 936);
  v4 = *v0;

  sub_2148B0014(v1 + 16);

  return MEMORY[0x2822009F8](sub_21493571C, 0, 0);
}

uint64_t sub_21493571C(uint64_t a1)
{
  v2 = *(v1 + 912) + 1;
  if (v2 == *(v1 + 904))
  {
    v3 = *(v1 + 896);
    v4 = *(v1 + 864);
    v5 = *(v1 + 856);

    if (v4 + 1 == v5)
    {
      v6 = *(v1 + 752);
      v7 = *(v1 + 744);

      v8 = *(v1 + 8);

      return v8();
    }

    v19 = *(v1 + 864) + 1;
    *(v1 + 864) = v19;
    v20 = *(v1 + 768);
    if (v19 < *(v20 + 16))
    {
      v21 = v20 + 16 * v19;
      v22 = *(v21 + 32);
      *(v1 + 872) = v22;
      v23 = *(v21 + 40);
      *(v1 + 880) = v23;

      v24 = swift_task_alloc();
      *(v1 + 888) = v24;
      *v24 = v1;
      v24[1] = sub_214934E48;
      v25 = *(v1 + 720);

      return sub_214935B10(v22, v23);
    }

    goto LABEL_36;
  }

  *(v1 + 912) = v2;
  v10 = *(v1 + 896);
  if (v2 >= *(v10 + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v11 = (v10 + 96 * v2);
  v12 = v11[3];
  *(v1 + 112) = v11[2];
  *(v1 + 128) = v12;
  v13 = v11[4];
  v14 = v11[5];
  v15 = v11[7];
  *(v1 + 176) = v11[6];
  *(v1 + 192) = v15;
  *(v1 + 144) = v13;
  *(v1 + 160) = v14;
  a1 = memmove((v1 + 16), v11 + 2, 0x60uLL);
  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  v18 = *(v1 + 696);
  if (v17 != 1953722224 || v16 != 0xE400000000000000)
  {
    v26 = *(v1 + 16);
    v27 = *(v1 + 24);
    a1 = sub_214990080();
    if ((a1 & 1) == 0 || !v18)
    {
      if (v17 == 0x6F746C69616DLL && v16 == 0xE600000000000000)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v18 = *(v1 + 696);
    goto LABEL_18;
  }

  if (v18)
  {
LABEL_18:
    if (is_mul_ok(v18, 0xF4240uLL))
    {
      v28 = 1000000 * v18;
      sub_2148AFFDC(v1 + 112, v1 + 496);
      v29 = *(MEMORY[0x277D857E8] + 4);
      v30 = swift_task_alloc();
      *(v1 + 920) = v30;
      *v30 = v1;
      v31 = sub_214935368;
      goto LABEL_26;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_22:
  a1 = sub_214990080();
  if ((a1 & 1) == 0)
  {
    v34 = v1 + 208;
    goto LABEL_31;
  }

LABEL_23:
  v32 = *(v1 + 704);
  if (v32)
  {
    if (!is_mul_ok(v32, 0xF4240uLL))
    {
LABEL_37:
      __break(1u);
      return MEMORY[0x282200480](a1);
    }

    v28 = 1000000 * v32;
    sub_2148AFFDC(v1 + 112, v1 + 400);
    v33 = *(MEMORY[0x277D857E8] + 4);
    v30 = swift_task_alloc();
    *(v1 + 928) = v30;
    *v30 = v1;
    v31 = sub_2149354C0;
LABEL_26:
    v30[1] = v31;
    a1 = v28;

    return MEMORY[0x282200480](a1);
  }

  v34 = v1 + 304;
LABEL_31:
  sub_2148AFFDC(v1 + 112, v34);
  v35 = swift_task_alloc();
  *(v1 + 936) = v35;
  *v35 = v1;
  v35[1] = sub_214935618;
  v36 = *(v1 + 712);

  return sub_21493D94C(v1 + 16, v36);
}

uint64_t sub_214935B10(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_21498E690();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214935BD4, 0, 0);
}

uint64_t sub_214935BD4()
{
  v24 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_21498E670();
  v7 = sub_21498FBD0();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v13 = v0[3];
    v12 = v0[4];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2149079F4(v13, v12, &v23);
    _os_log_impl(&dword_21488E000, v6, v7, "getUnsubscribeLinks(%s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x216059AC0](v15, -1, -1);
    MEMORY[0x216059AC0](v14, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v16 = v0[3];
  v17 = swift_task_alloc();
  v0[9] = v17;
  v18 = *(v0 + 2);
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  v19 = *(MEMORY[0x277D85A40] + 4);
  v20 = swift_task_alloc();
  v0[10] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6E8, &qword_214992A18);
  *v20 = v0;
  v20[1] = sub_214935E4C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x80000002149A2C00, sub_21493E74C, v17, v21);
}

uint64_t sub_214935E4C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_214935FD4;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_214935F68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_214935F68()
{
  v1 = v0[8];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_214935FD4()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_214936040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C640, &qword_21499B520);
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v29 - v10;
  v12 = swift_allocObject();
  v34 = v12;
  *(v12 + 16) = 0;
  v36 = (v12 + 16);
  v14 = *(a4 + 32);
  v13 = *(a4 + 40);
  v38[3] = &type metadata for UnsubscribeLinkRequestBody;
  v38[4] = sub_21493E758();
  v38[0] = a2;
  v38[1] = a3;
  objc_allocWithZone(type metadata accessor for UnsubscribeLinksAPIRequest());
  sub_2148AA824(v38, v37, &qword_27CA1C410, &unk_21499B410);
  v15 = v14;
  v16 = v13;

  v17 = sub_21493B6E4(v14, v16, v37, &qword_27CA1C690, &qword_21499B558, &qword_27CA1C3C8, &qword_21499B550);

  sub_21489DFCC(v38, &qword_27CA1C410, &unk_21499B410);
  v18 = sub_214930F30();
  v33 = v18;

  v38[0] = v18;
  v30 = *(v8 + 16);
  v19 = a1;
  v20 = v35;
  v30(v11, v19, v35);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v32 = v21 + v9;
  v22 = swift_allocObject();
  v23 = *(v8 + 32);
  v23(v22 + v21, v11, v20);
  *(v22 + ((v21 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v30(v11, v31, v20);
  v24 = swift_allocObject();
  v23(v24 + v21, v11, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C650, &qword_21499B528);
  sub_2148B4C20(&qword_27CA1C658, &qword_27CA1C650, &qword_21499B528);
  v25 = sub_21498EA50();

  v26 = v36;
  swift_beginAccess();
  v27 = *v26;
  *v26 = v25;
}

uint64_t sub_2149363B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = a1[4];
    v7 = *(a1 + 6);
    v8 = a1[2];
    v9 = *a1;
    sub_2148A2800();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v4;
    *(v10 + 16) = v8;
    *(v10 + 24) = v7 & 1;
    *(v10 + 32) = v6;
    *(v10 + 40) = v5 & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C640, &qword_21499B520);
    sub_21498FA60();
  }

  result = swift_beginAccess();
  if (*(a3 + 16))
  {
    v12 = *(a3 + 16);

    sub_21498E9B0();
  }

  return result;
}

uint64_t sub_2149364A8(uint64_t *a1)
{
  v2 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C640, &qword_21499B520);
  return sub_21498FA70();
}

uint64_t sub_2149364FC()
{
  v1[12] = v0;
  v2 = sub_21498E690();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2149365C8, 0, 0);
}

uint64_t sub_2149365C8()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  *(v0 + 136) = v4;
  v5 = *(v3 + 16);
  *(v0 + 144) = v5;
  *(v0 + 152) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBD0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "initializeBlockRulesEnabled", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v12 = *(v0 + 96);

  v13 = *(v11 + 8);
  *(v0 + 160) = v13;
  v13(v9, v10);
  v14 = *(v12 + 32);
  v15 = *(v12 + 40);
  *(v0 + 40) = &type metadata for SharedPreferencesAPIRequest.SharedPreferencesAPIRequestPayload;
  *(v0 + 48) = sub_21493E6CC();
  *(v0 + 16) = 1;
  v16 = objc_allocWithZone(type metadata accessor for SharedPreferencesAPIRequest());
  sub_2148AA824(v0 + 16, v0 + 56, &qword_27CA1C410, &unk_21499B410);
  v17 = v14;
  v18 = v15;
  v19 = sub_21493B6E4(v14, v18, v0 + 56, &qword_27CA1C638, &unk_21499B510, &qword_27CA1C3C0, &unk_21499A700);
  *(v0 + 168) = v19;

  sub_21489DFCC(v0 + 16, &qword_27CA1C410, &unk_21499B410);
  v20 = swift_task_alloc();
  *(v0 + 176) = v20;
  *(v20 + 16) = v19;
  v21 = *(MEMORY[0x277D85A40] + 4);
  v22 = swift_task_alloc();
  *(v0 + 184) = v22;
  *v22 = v0;
  v22[1] = sub_214936888;

  return MEMORY[0x2822008A0](v22, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493E720, v20, &type metadata for SharedPreferencesAPIResponse);
}

uint64_t sub_214936888()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  *(v3 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2149369DC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 176);

    v6 = *(v3 + 120);
    v5 = *(v3 + 128);

    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_2149369DC()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);

  v3(v5, v4, v6);
  v7 = sub_21498E670();
  v8 = sub_21498FBB0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 192);
  v11 = *(v0 + 160);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v14 = *(v0 + 104);
  if (v9)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21488E000, v7, v8, "ERROR: Failed to initialize blockRulesEnabled flag", v15, 2u);
    MEMORY[0x216059AC0](v15, -1, -1);
  }

  v11(v12, v14);
  v17 = *(v0 + 120);
  v16 = *(v0 + 128);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_214936B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = sub_21498E690();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214936BF4, 0, 0);
}

uint64_t sub_214936BF4()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "saveUnsubscribeRule", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[21];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[20];

  (*(v9 + 8))(v8, v10);
  v16 = *(v11 + 32);
  v17 = *(v11 + 40);
  v0[11] = &type metadata for MAUIWisperUnsubscribeRequestBody;
  v0[12] = sub_21493E678();
  v18 = swift_allocObject();
  v0[8] = v18;
  v18[2] = v14;
  v18[3] = v15;
  v18[4] = v12;
  v18[5] = v13;
  v19 = objc_allocWithZone(type metadata accessor for MAUIWisperUnsubscribeRequest(0));
  sub_2148AA824((v0 + 8), (v0 + 13), &qword_27CA1C410, &unk_21499B410);

  v20 = v16;
  v21 = v17;

  v22 = sub_21493B6E4(v16, v21, (v0 + 13), &qword_27CA1C610, &qword_21499B4F0, &qword_27CA1C3B8, &qword_21499A6F8);
  v0[27] = v22;

  sub_21489DFCC((v0 + 8), &qword_27CA1C410, &unk_21499B410);
  v23 = swift_task_alloc();
  v0[28] = v23;
  *(v23 + 16) = v22;
  v24 = *(MEMORY[0x277D85A40] + 4);
  v25 = swift_task_alloc();
  v0[29] = v25;
  *v25 = v0;
  v25[1] = sub_214936EDC;

  return MEMORY[0x2822008A0](v25, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493ECB4, v23, &type metadata for MAUIWisperUnsubscribeResponse);
}

uint64_t sub_214936EDC()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  *(v3 + 240) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21493702C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 224);

    v5 = *(v3 + 208);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_21493702C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);

  *(v0 + 144) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast() & 1) == 0 || (v4 = *(v0 + 24), v5 = *(v0 + 32), v6 = *(v0 + 40), , (v6) || (v5 - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 208);
    swift_willThrow();

    v8 = *(v0 + 8);
    v11 = *(v0 + 240);
  }

  else
  {

    v7 = *(v0 + 208);

    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_21493713C(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_21498E690();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214937200, 0, 0);
}

uint64_t sub_214937200()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "removeUnsubscribeRule", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[23];
  v8 = v0[24];
  v11 = v0[21];
  v10 = v0[22];
  v13 = v0[19];
  v12 = v0[20];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_214991720;
  *(v14 + 32) = v13;
  *(v14 + 40) = v12;
  v15 = *(v11 + 32);
  v16 = *(v11 + 40);
  v0[11] = &type metadata for MAUIWisperRemoveUnsubscribeRequestBody;
  v0[12] = sub_21493E5E4();
  v0[8] = v14;
  v17 = objc_allocWithZone(type metadata accessor for MAUIWisperRemoveUnsubscribeRequest(0));
  sub_2148AA824((v0 + 8), (v0 + 13), &qword_27CA1C410, &unk_21499B410);

  v18 = v15;
  v19 = v16;
  v20 = sub_21493B6E4(v15, v19, (v0 + 13), &qword_27CA1C610, &qword_21499B4F0, &qword_27CA1C3B8, &qword_21499A6F8);
  v0[25] = v20;

  sub_21489DFCC((v0 + 8), &qword_27CA1C410, &unk_21499B410);
  v21 = swift_task_alloc();
  v0[26] = v21;
  *(v21 + 16) = v20;
  v22 = *(MEMORY[0x277D85A40] + 4);
  v23 = swift_task_alloc();
  v0[27] = v23;
  *v23 = v0;
  v23[1] = sub_2149374E4;

  return MEMORY[0x2822008A0](v23, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493E638, v21, &type metadata for MAUIWisperUnsubscribeResponse);
}

uint64_t sub_2149374E4()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  *(v3 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214937634, 0, 0);
  }

  else
  {
    v4 = *(v3 + 208);

    v5 = *(v3 + 192);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_214937634()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  *(v0 + 144) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast() & 1) == 0 || (v4 = *(v0 + 24), v5 = *(v0 + 32), v6 = *(v0 + 40), , (v6) || (v5 - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v9 = *(v0 + 224);
    v10 = *(v0 + 192);
    swift_willThrow();

    v8 = *(v0 + 8);
    v11 = *(v0 + 224);
  }

  else
  {

    v7 = *(v0 + 192);

    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_214937744(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = v5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a4;
  *(v6 + 104) = a3;
  *(v6 + 32) = a1;
  return MEMORY[0x2822009F8](sub_214937770, 0, 0);
}

uint64_t sub_214937770()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 104);
  v6 = *(v0 + 32);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = objc_allocWithZone(type metadata accessor for GenericRequestAPIRequest());
  v10 = &v9[qword_27CA1BEE0];
  *v10 = v6;
  v10[1] = v3;
  v9[qword_27CA1BEE8] = v5;
  v11 = v8;

  v12 = v7;
  sub_21489B6F8(v4, v2);
  v13 = sub_214925BF4(v7, v11, v4, v2);
  *(v0 + 72) = v13;
  sub_21489B8F0(v4, v2);

  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *(v14 + 16) = v13;
  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  *(v0 + 88) = v16;
  *v16 = v0;
  v16[1] = sub_21493790C;
  v17 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000025, 0x80000002149A26A0, sub_214925C18, v14, v17);
}

uint64_t sub_21493790C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_214937A98;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_214937A28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_214937A28()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_214937A98()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_214937B00(uint64_t a1, char a2)
{
  *(v3 + 57) = a2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  v4 = sub_21498E690();
  *(v3 + 160) = v4;
  v5 = *(v4 - 8);
  *(v3 + 168) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214937BC4, 0, 0);
}

uint64_t sub_214937BC4()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "getInlineTips()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = *(v0 + 57);

  (*(v9 + 8))(v8, v10);
  v13 = sub_21493E404();
  LOBYTE(v9) = v14;
  v15 = *(v11 + 32);
  v16 = *(v11 + 40);
  *(v0 + 88) = &type metadata for MATipAPIAPIRequestBody;
  *(v0 + 96) = sub_21493E560();
  *(v0 + 64) = v12;
  *(v0 + 72) = v13;
  *(v0 + 80) = v9 & 1;
  v17 = objc_allocWithZone(type metadata accessor for MATipAPIRequest(0));
  sub_2148AA824(v0 + 64, v0 + 104, &qword_27CA1C410, &unk_21499B410);
  v18 = v16;
  v19 = v15;
  v20 = sub_21493B6E4(v15, v18, v0 + 104, &qword_27CA1C5F0, &qword_21499B4D0, &qword_27CA1C3B0, &qword_21499A6F0);
  *(v0 + 184) = v20;

  sub_21489DFCC(v0 + 64, &qword_27CA1C410, &unk_21499B410);
  v21 = swift_task_alloc();
  *(v0 + 192) = v21;
  *(v21 + 16) = v20;
  v22 = *(MEMORY[0x277D85A40] + 4);
  v23 = swift_task_alloc();
  *(v0 + 200) = v23;
  *v23 = v0;
  v23[1] = sub_214937E8C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493E5B4, v21, &type metadata for MATipAPIResponse);
}

uint64_t sub_214937E8C()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  *(v3 + 208) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214938024, 0, 0);
  }

  else
  {
    v4 = *(v3 + 192);
    v5 = *(v3 + 176);
    v6 = *(v3 + 144);

    v7 = *(v3 + 16);
    v8 = *(v3 + 56);
    v11 = *(v3 + 40);
    v12 = *(v3 + 24);

    *v6 = v7;
    *(v6 + 24) = v11;
    *(v6 + 8) = v12;
    *(v6 + 40) = v8;
    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_214938024()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);
  v4 = *(v0 + 208);

  return v3();
}

uint64_t sub_21493809C(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 57) = a1;
  v3 = sub_21498E690();
  *(v2 + 80) = v3;
  v4 = *(v3 - 8);
  *(v2 + 88) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214938160, 0, 0);
}

uint64_t sub_214938160()
{
  v26 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "updateAutomationInlineTip()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 57);

  (*(v9 + 8))(v8, v10);
  v13 = *(v11 + 32);
  v14 = *(v11 + 40);
  v15 = objc_allocWithZone(type metadata accessor for MAUpdateAutomationTipAPIRequest(0));
  v24 = &type metadata for MAUpdateAutomationTipAPIRequestBody;
  v25 = sub_21493BC5C();
  v23[0] = v12;
  v16 = v14;
  v17 = v13;
  v18 = sub_21493B6E4(v13, v16, v23, &qword_27CA1C5D0, &qword_21499B4A8, &qword_27CA1C3A8, &qword_21499B4A0);
  *(v0 + 104) = v18;

  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  *(v19 + 16) = v18;
  v20 = *(MEMORY[0x277D85A40] + 4);
  v21 = swift_task_alloc();
  *(v0 + 120) = v21;
  *v21 = v0;
  v21[1] = sub_2149383D0;

  return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493BCB0, v19, &type metadata for MAUpdateAutomationTipAPIResponse);
}

uint64_t sub_2149383D0()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214938520, 0, 0);
  }

  else
  {
    v4 = *(v3 + 112);

    v5 = *(v3 + 96);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_214938520()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  *(v0 + 64) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast() & 1) == 0 || (v4 = *(v0 + 24), v5 = *(v0 + 32), v6 = *(v0 + 40), , (v6) || (v5 - 300) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 96);
    swift_willThrow();

    v8 = *(v0 + 8);
    v11 = *(v0 + 128);
  }

  else
  {

    v7 = *(v0 + 96);

    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_214938630(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 57) = a1;
  v3 = sub_21498E690();
  *(v2 + 80) = v3;
  v4 = *(v3 - 8);
  *(v2 + 88) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2149386F4, 0, 0);
}

uint64_t sub_2149386F4()
{
  v26 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "updateUnsubscribeInlineTip()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 57);

  (*(v9 + 8))(v8, v10);
  v13 = *(v11 + 32);
  v14 = *(v11 + 40);
  v15 = objc_allocWithZone(type metadata accessor for MAUpdateUnsubscribeTipAPIRequest(0));
  v24 = &type metadata for MAUpdateUnsubscribeTipAPIRequestBody;
  v25 = sub_21493BBDC();
  v23[0] = v12;
  v16 = v14;
  v17 = v13;
  v18 = sub_21493B6E4(v13, v16, v23, &qword_27CA1C5B0, &qword_21499B488, &qword_27CA1C3A0, &unk_21499A6E0);
  *(v0 + 104) = v18;

  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  *(v19 + 16) = v18;
  v20 = *(MEMORY[0x277D85A40] + 4);
  v21 = swift_task_alloc();
  *(v0 + 120) = v21;
  *v21 = v0;
  v21[1] = sub_214938964;

  return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493BC30, v19, &type metadata for MAUpdateUnsubscribeTipAPIResponse);
}

uint64_t sub_214938964()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21493ECA4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 112);

    v5 = *(v3 + 96);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_214938AB4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 120) = a3;
  *(v4 + 40) = a1;
  v5 = sub_21498E690();
  *(v4 + 64) = v5;
  v6 = *(v5 - 8);
  *(v4 + 72) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214938B7C, 0, 0);
}

uint64_t sub_214938B7C()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "getRecommendations()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 120);
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);

  (*(v9 + 8))(v8, v10);
  v15 = *(v11 + 32);
  v16 = *(v11 + 40);
  v17 = objc_allocWithZone(type metadata accessor for GetRecommendationsAPIRequest());
  v18 = &v17[qword_27CA1CA58];
  *v18 = v14;
  v18[1] = v13;
  v17[qword_27CA1CA60] = v12;

  v19 = v15;
  v20 = v16;
  v21 = sub_214925DE0(v15, v20, 0, 0xF000000000000000);
  *(v0 + 88) = v21;

  v22 = swift_task_alloc();
  *(v0 + 96) = v22;
  *(v22 + 16) = v21;
  v23 = *(MEMORY[0x277D85A40] + 4);
  v24 = swift_task_alloc();
  *(v0 + 104) = v24;
  *v24 = v0;
  v24[1] = sub_214938DF0;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493BB40, v22, &type metadata for GetRecommendationsAPIResponse);
}

uint64_t sub_214938DF0()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214938F64, 0, 0);
  }

  else
  {
    v4 = *(v3 + 96);
    v5 = *(v3 + 80);

    v6 = *(v3 + 16);
    v8 = *(v3 + 24);
    v7 = *(v3 + 32);

    v9 = *(v3 + 8);

    return v9(v6, v8, v7);
  }
}

uint64_t sub_214938F64()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);
  v4 = *(v0 + 112);

  return v3(0);
}

uint64_t sub_214938FE0()
{
  v1[61] = v0;
  v2 = sub_21498E690();
  v1[62] = v2;
  v3 = *(v2 - 8);
  v1[63] = v3;
  v4 = *(v3 + 64) + 15;
  v1[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2149390A0, 0, 0);
}

uint64_t sub_2149390A0()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "getRecommendationsToReset()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[62];

  (*(v9 + 8))(v8, v10);
  v11 = MEMORY[0x277D84F90];
  v0[59] = MEMORY[0x277D84F90];
  v0[60] = v11;
  v0[65] = 0;
  v12 = *aInitial;
  v13 = unk_2826C56F0;
  v0[66] = unk_2826C56F0;

  v14 = swift_task_alloc();
  v0[67] = v14;
  *v14 = v0;
  v14[1] = sub_214939260;
  v15 = v0[61];

  return sub_214938AB4(v12, v13, 2);
}

uint64_t sub_214939260(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *v4;
  *(v8 + 456) = a3;
  *(v8 + 464) = v3;
  *(v8 + 448) = a2;
  *(v8 + 440) = a1;
  *(v8 + 432) = v4;
  v9 = *(v7 + 536);
  v16 = *v4;
  *(v8 + 544) = v3;

  if (v3)
  {
    v10 = *(v8 + 528);
    swift_arrayDestroy();

    v11 = *(v8 + 480);

    v12 = *(v8 + 472);

    v13 = sub_21493981C;
  }

  else
  {
    v14 = *(v8 + 528);

    *(v8 + 552) = a3;
    *(v8 + 560) = a2;
    v13 = sub_2149393D8;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_2149393D8()
{
  v48 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 520);

  sub_2148A8B48(v4);

  sub_2148A8C40(v5);

  if (v3 == 3)
  {
    v46 = MEMORY[0x277D84FA0];
    v6 = *(v0 + 472);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      v45 = MEMORY[0x277D84F90];
      while (1)
      {
        v9 = v6 + 32 + 104 * v8;
        v10 = *v9;
        v11 = *(v9 + 32);
        *(v0 + 32) = *(v9 + 16);
        *(v0 + 48) = v11;
        *(v0 + 16) = v10;
        v12 = *(v9 + 48);
        v13 = *(v9 + 64);
        v14 = *(v9 + 80);
        *(v0 + 112) = *(v9 + 96);
        *(v0 + 80) = v13;
        *(v0 + 96) = v14;
        *(v0 + 64) = v12;
        v16 = *(v0 + 16);
        v15 = *(v0 + 24);
        if (*(v46 + 16))
        {
          v17 = *(v46 + 40);
          sub_214990160();
          sub_2148D93C8(v0 + 16, v0 + 120);

          sub_21498F900();
          v18 = sub_214990190();
          v19 = -1 << *(v46 + 32);
          v20 = v18 & ~v19;
          if ((*(v46 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            while (1)
            {
              v22 = (*(v46 + 48) + 16 * v20);
              v23 = *v22 == v16 && v22[1] == v15;
              if (v23 || (sub_214990080() & 1) != 0)
              {
                break;
              }

              v20 = (v20 + 1) & v21;
              if (((*(v46 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
              {
                goto LABEL_13;
              }
            }

LABEL_24:
            result = sub_21493BAEC(v0 + 16);
            goto LABEL_25;
          }

LABEL_13:
        }

        else
        {
          sub_2148D93C8(v0 + 16, v0 + 328);
        }

        if (*(v0 + 96) == 0x4C414954494E49 && *(v0 + 104) == 0xE700000000000000 || (sub_214990080() & 1) != 0)
        {
          goto LABEL_24;
        }

        sub_2148D93C8(v0 + 16, v0 + 224);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_2148A962C(0, *(v45 + 2) + 1, 1, v45);
        }

        v25 = *(v45 + 2);
        v24 = *(v45 + 3);
        if (v25 >= v24 >> 1)
        {
          v45 = sub_2148A962C((v24 > 1), v25 + 1, 1, v45);
        }

        *(v45 + 2) = v25 + 1;
        v26 = &v45[104 * v25];
        v27 = *(v0 + 16);
        v28 = *(v0 + 48);
        *(v26 + 3) = *(v0 + 32);
        *(v26 + 4) = v28;
        *(v26 + 2) = v27;
        v29 = *(v0 + 64);
        v30 = *(v0 + 80);
        v31 = *(v0 + 96);
        v26[128] = *(v0 + 112);
        *(v26 + 6) = v30;
        *(v26 + 7) = v31;
        *(v26 + 5) = v29;

        sub_21493BAEC(v0 + 16);
        sub_214974494(&v47, v16, v15);

LABEL_25:
        if (++v8 == v7)
        {

          v39 = v45;
          goto LABEL_33;
        }

        if (v8 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }
      }
    }

    v40 = *(v0 + 472);

    v39 = MEMORY[0x277D84F90];
LABEL_33:
    v41 = *(v0 + 440);
    v42 = *(v0 + 512);

    v43 = *(v0 + 480);

    v44 = *(v0 + 8);

    return v44(v41, v39, v43);
  }

  else
  {
    v33 = *(v0 + 520) + 1;
    *(v0 + 520) = v33;
    v34 = &unk_2826C56C8 + 16 * v33;
    v35 = *(v34 + 5);
    *(v0 + 528) = v35;
    v36 = *(v34 + 4);

    v37 = swift_task_alloc();
    *(v0 + 536) = v37;
    *v37 = v0;
    v37[1] = sub_214939260;
    v38 = *(v0 + 488);

    return sub_214938AB4(v36, v35, 2);
  }
}

uint64_t sub_21493981C()
{
  v1 = v0[64];

  v2 = v0[1];
  v3 = v0[68];

  return v2(0);
}

uint64_t sub_214939884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = sub_21498E690();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21493994C, 0, 0);
}

uint64_t sub_21493994C()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "updateUnsubscribeRecommendation()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v13 = v0[21];
  v12 = v0[22];
  v15 = v0[19];
  v14 = v0[20];

  (*(v9 + 8))(v8, v10);
  v16 = *(v11 + 32);
  v17 = *(v11 + 40);
  v0[11] = &type metadata for UpdateUnsubscribeRecommendationAPIRequestBody;
  v0[12] = sub_21493BA2C();
  v18 = swift_allocObject();
  v0[8] = v18;
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = v13;
  v18[5] = v12;
  v19 = objc_allocWithZone(type metadata accessor for UpdateUnsubscribeRecommendationAPIRequest(0));
  sub_2148AA824((v0 + 8), (v0 + 13), &qword_27CA1C410, &unk_21499B410);
  v20 = v16;
  v21 = v17;

  v22 = sub_21493B6E4(v16, v21, (v0 + 13), &qword_27CA1C580, &qword_21499B458, &qword_27CA1C388, &qword_21499B450);
  v0[27] = v22;

  sub_21489DFCC((v0 + 8), &qword_27CA1C410, &unk_21499B410);
  v23 = swift_task_alloc();
  v0[28] = v23;
  *(v23 + 16) = v22;
  v24 = *(MEMORY[0x277D85A40] + 4);
  v25 = swift_task_alloc();
  v0[29] = v25;
  *v25 = v0;
  v25[1] = sub_214939C2C;

  return MEMORY[0x2822008A0](v25, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493BAC0, v23, &type metadata for UpdateUnsubscribeRecommendationAPIResponse);
}

uint64_t sub_214939C2C()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  *(v3 + 240) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21493ECA8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 224);

    v5 = *(v3 + 208);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_214939D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = sub_21498E690();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214939E44, 0, 0);
}

uint64_t sub_214939E44()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "updateAutomationRecommendation()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v13 = v0[21];
  v12 = v0[22];
  v15 = v0[19];
  v14 = v0[20];

  (*(v9 + 8))(v8, v10);
  v16 = *(v11 + 32);
  v17 = *(v11 + 40);
  v0[11] = &type metadata for UpdateAutomationRecommendationAPIRequestBody;
  v0[12] = sub_21493B9AC();
  v18 = swift_allocObject();
  v0[8] = v18;
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = v13;
  v18[5] = v12;
  v19 = objc_allocWithZone(type metadata accessor for UpdateAutomationRecommendationAPIRequest(0));
  sub_2148AA824((v0 + 8), (v0 + 13), &qword_27CA1C410, &unk_21499B410);
  v20 = v16;
  v21 = v17;

  v22 = sub_21493B6E4(v16, v21, (v0 + 13), &qword_27CA1C560, &qword_21499B438, &qword_27CA1C380, &unk_21499A6C0);
  v0[27] = v22;

  sub_21489DFCC((v0 + 8), &qword_27CA1C410, &unk_21499B410);
  v23 = swift_task_alloc();
  v0[28] = v23;
  *(v23 + 16) = v22;
  v24 = *(MEMORY[0x277D85A40] + 4);
  v25 = swift_task_alloc();
  v0[29] = v25;
  *v25 = v0;
  v25[1] = sub_214939C2C;

  return MEMORY[0x2822008A0](v25, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493BA00, v23, &type metadata for UpdateAutomationRecommendationAPIResponse);
}

uint64_t sub_21493A124(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_21493A144, 0, 0);
}

uint64_t sub_21493A144()
{
  v1 = v0[10];
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = objc_allocWithZone(type metadata accessor for GetPreferencesAPIRequest());
  v5 = v2;
  v6 = v3;
  v7 = sub_21492601C(v2, v6, 0, 0xF000000000000000);
  v0[11] = v7;

  v8 = swift_task_alloc();
  v0[12] = v8;
  *(v8 + 16) = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_21493A288;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000015, 0x80000002149A28B0, sub_21493B97C, v8, &type metadata for GetPreferencesAPIResponse);
}

uint64_t sub_21493A288()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_21493A3E0;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_21493A3AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21493A3AC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_21493A3E0()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = *(v0 + 112);

  return v2();
}

uint64_t sub_21493A44C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  v4 = sub_21498E690();
  *(v2 + 96) = v4;
  v5 = *(v4 - 8);
  *(v2 + 104) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = *(a1 + 176);

  return MEMORY[0x2822009F8](sub_21493A518, 0, 0);
}

uint64_t sub_21493A518()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 120);
    *(v0 + 24) = v1;
    v4 = v2[13];
    v3 = v2[14];
    *(v0 + 32) = v2[12];
    *(v0 + 48) = v4;
    *(v0 + 64) = v3;
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = sub_21493A718;
    v6 = *(v0 + 88);

    return sub_21493A828((v0 + 16));
  }

  else
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 96);
    v11 = __swift_project_value_buffer(v10, qword_281194E18);
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_21498E670();
    v13 = sub_21498FBB0();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v17 = *(v0 + 96);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21488E000, v12, v13, "dismissTip - cancelAction is missing", v18, 2u);
      MEMORY[0x216059AC0](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);
    v19 = *(v0 + 112);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_21493A718()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 112);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_21493A828(_OWORD *a1)
{
  *(v2 + 16) = v1;
  v4 = sub_21498E690();
  *(v2 + 24) = v4;
  v5 = *(v4 - 8);
  *(v2 + 32) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  v7 = sub_21498F8C0();
  *(v2 + 56) = v7;
  v8 = *(v7 - 8);
  *(v2 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v10 = a1[2];
  *(v2 + 80) = a1[1];
  *(v2 + 96) = v10;
  *(v2 + 112) = a1[3];

  return MEMORY[0x2822009F8](sub_21493A964, 0, 0);
}

uint64_t sub_21493A964()
{
  v1 = v0[11];
  if (v1)
  {
    if (v0[13])
    {
      v2 = v0[12];
      v3 = v0[13];

      v4 = sub_21491F750();
      if (v4 == 4)
      {
        v5 = 1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v0[15];
      if (v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = 1;
      v6 = v0[15];
      if (v6)
      {
LABEL_7:
        v7 = v0[14];
        v8 = v0[8];
        v9 = v0[9];
        v10 = v0[7];
        sub_21498F8B0();
        v6 = sub_21498F880();
        v12 = v11;
        (*(v8 + 8))(v9, v10);
LABEL_17:
        v0[16] = v6;
        v0[17] = v12;
        v29 = swift_task_alloc();
        v0[18] = v29;
        *v29 = v0;
        v29[1] = sub_21493AC08;
        v30 = v0[10];
        v31 = v0[2];

        return sub_214937744(v30, v1, v5, v6, v12);
      }
    }

    v12 = 0xF000000000000000;
    goto LABEL_17;
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v13 = v0[6];
  v14 = v0[3];
  v15 = v0[4];
  v16 = __swift_project_value_buffer(v14, qword_281194E18);
  (*(v15 + 16))(v13, v16, v14);
  v17 = sub_21498E670();
  v18 = sub_21498FBB0();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[6];
  v21 = v0[3];
  v22 = v0[4];
  if (v19)
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_21488E000, v17, v18, "performTipAction - url missing", v23, 2u);
    MEMORY[0x216059AC0](v23, -1, -1);
  }

  (*(v22 + 8))(v20, v21);
  v24 = v0[9];
  v25 = v0[5];
  v26 = v0[6];

  v27 = v0[1];

  return v27();
}

uint64_t sub_21493AC08(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 144);
  v9 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v7 = sub_21493ADB4;
  }

  else
  {
    sub_21489B4F8(a1, a2);
    v7 = sub_21493AD38;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21493AD38()
{
  sub_21489B8F0(v0[16], v0[17]);
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21493ADB4()
{
  v33 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[11];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = __swift_project_value_buffer(v5, qword_281194E18);
  (*(v4 + 16))(v3, v6, v5);

  v7 = v1;
  v8 = sub_21498E670();
  v9 = sub_21498FBB0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[19];
  v12 = v0[16];
  if (v10)
  {
    v13 = v0[10];
    v14 = v0[11];
    v28 = v0[17];
    v29 = v0[4];
    v30 = v0[3];
    v31 = v0[5];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_2149079F4(v13, v14, &v32);
    *(v15 + 12) = 2112;
    v18 = v11;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&dword_21488E000, v8, v9, "performTipAction - url: %s - error: %@", v15, 0x16u);
    sub_21489DFCC(v16, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x216059AC0](v17, -1, -1);
    MEMORY[0x216059AC0](v15, -1, -1);
    sub_21489B8F0(v12, v28);

    (*(v29 + 8))(v31, v30);
  }

  else
  {
    v21 = v0[4];
    v20 = v0[5];
    v22 = v0[3];
    sub_21489B8F0(v0[16], v0[17]);

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[9];
  v24 = v0[5];
  v25 = v0[6];

  v26 = v0[1];

  return v26();
}

double sub_21493B060(uint64_t a1, unint64_t a2)
{
  v58 = a1;
  v4 = sub_21498E690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  v14 = *MEMORY[0x277CB89C8];
  v15 = [*(v2 + 40) propertiesForDataclass_];
  v16 = 0x281190000;
  if (v15)
  {
    v17 = v15;
    v18 = sub_21498F7E0();

    v19 = sub_21498F840();
    v20 = [v19 key];

    v21 = sub_21498F870();
    v23 = v22;

    v59 = *&v21;
    v60 = v23;
    sub_21498FDB0();
    if (*(v18 + 16) && (v24 = sub_214908014(v61), (v25 & 1) != 0))
    {
      sub_21489E614(*(v18 + 56) + 32 * v24, v62);
      sub_21489E5C0(v61);

      v16 = 0x281190000;
      if (swift_dynamicCast())
      {
        v26 = v59;
        goto LABEL_12;
      }
    }

    else
    {

      sub_21489E5C0(v61);
      v16 = 0x281190000uLL;
    }
  }

  if (*(v16 + 3488) != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v5 + 16))(v13, v27, v4);

  v28 = v14;
  v29 = sub_21498E670();
  v30 = sub_21498FB90();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v56 = v11;
    v32 = v16;
    v33 = v31;
    v34 = swift_slowAlloc();
    v61[0] = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_2149079F4(v58, a2, v61);
    *(v33 + 12) = 2080;
    v35 = sub_21498F870();
    v37 = sub_2149079F4(v35, v36, v61);

    *(v33 + 14) = v37;
    _os_log_impl(&dword_21488E000, v29, v30, "Account bag has no value for key: %s in %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v34, -1, -1);
    v38 = v33;
    v16 = v32;
    v11 = v56;
    MEMORY[0x216059AC0](v38, -1, -1);
  }

  (*(v5 + 8))(v13, v4);
  v26 = 1800.0;
LABEL_12:
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v40 = v39;
  v41 = &v39[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_mailCleanupIsCacheDisabledKey];
  v42 = *&v39[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_mailCleanupIsCacheDisabledKey];
  v43 = *(v41 + 1);
  v44 = sub_21498F840();
  v45 = [v40 BOOLForKey_];

  if (v45)
  {
    if (*(v16 + 3488) != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v4, qword_281194E18);
    (*(v5 + 16))(v11, v46, v4);
    v47 = sub_21498E670();
    v48 = sub_21498FB90();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_21488E000, v47, v48, "Cache is disabled for Mail Cleanup (via UserDefaults). Forcing TTL to 0.", v49, 2u);
      MEMORY[0x216059AC0](v49, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    v26 = 0.0;
  }

  if (*(v16 + 3488) != -1)
  {
    swift_once();
  }

  v50 = __swift_project_value_buffer(v4, qword_281194E18);
  v51 = v57;
  (*(v5 + 16))(v57, v50, v4);
  v52 = sub_21498E670();
  v53 = sub_21498FB90();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = v26;
    _os_log_impl(&dword_21488E000, v52, v53, "getTimeToLive: %f", v54, 0xCu);
    MEMORY[0x216059AC0](v54, -1, -1);
  }

  (*(v5 + 8))(v51, v4);
  return v26;
}

uint64_t sub_21493B678()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_21493B6E4(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v35 = a6;
  v36 = a7;
  v32 = a5;
  v31 = a4;
  v8 = v7;
  v33 = a3;
  v34 = a2;
  v10 = sub_21498E350();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_281190E68;
  *&v8[qword_281190E68] = 0;
  v16 = &v8[qword_281190E48];
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 40) = -1;
  *&v8[qword_281190E58] = 5;
  *&v8[qword_281190E30] = 0x3FF0000000000000;
  *&v8[qword_281190E38] = 0x403E000000000000;
  *&v8[qword_281190E50] = 0;
  v17 = &v8[qword_281190E40];
  sub_21498E340();
  v18 = sub_21498E330();
  v20 = v19;
  (*(v11 + 8))(v14, v10);
  *v17 = v18;
  v17[1] = v20;
  v21 = *&v8[v15];
  *&v8[v15] = a1;
  v22 = v33;
  v23 = a1;

  v24 = v34;
  *&v8[qword_281190E60] = v34;
  sub_2148AA824(v22, &v37, &qword_27CA1C410, &unk_21499B410);
  if (v38)
  {
    sub_2148970B8(&v37, v41);
    sub_2148970B8(v41, &v37);
    v39 = 0;
    swift_beginAccess();
    v25 = v24;
    sub_21492635C(&v37, v16, v31, v32);
    swift_endAccess();
  }

  else
  {
    v26 = v24;
    sub_21489DFCC(&v37, &qword_27CA1C410, &unk_21499B410);
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  v40.receiver = v8;
  v40.super_class = v27;
  v28 = objc_msgSendSuper2(&v40, sel_init);
  sub_21489DFCC(v22, &qword_27CA1C410, &unk_21499B410);
  return v28;
}

unint64_t sub_21493B9AC()
{
  result = qword_27CA1C548;
  if (!qword_27CA1C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C548);
  }

  return result;
}

unint64_t sub_21493BA2C()
{
  result = qword_27CA1C568;
  if (!qword_27CA1C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C568);
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21493BB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_21489B70C(a4, a5);
  }
}

unint64_t sub_21493BBDC()
{
  result = qword_27CA1C598;
  if (!qword_27CA1C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C598);
  }

  return result;
}

unint64_t sub_21493BC5C()
{
  result = qword_27CA1C5B8;
  if (!qword_27CA1C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C5B8);
  }

  return result;
}

uint64_t sub_21493BCDC(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_21498F8C0();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_21498DEE0();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v8 = sub_21498E1B0();
  v1[13] = v8;
  v9 = *(v8 - 8);
  v1[14] = v9;
  v10 = *(v9 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v11 = sub_21498E690();
  v1[18] = v11;
  v12 = *(v11 - 8);
  v1[19] = v12;
  v13 = *(v12 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21493BEF8, 0, 0);
}

uint64_t sub_21493BEF8()
{
  v66 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[6];
  v7 = __swift_project_value_buffer(v0[18], qword_281194E18);
  v0[25] = v7;
  v8 = *(v2 + 16);
  v0[26] = v8;
  v0[27] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v62 = v7;
  v61 = v8;
  (v8)(v1);
  v60 = *(v4 + 16);
  v60(v3, v6, v5);
  v9 = sub_21498E670();
  v10 = sub_21498FBA0();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[24];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];
  v17 = v0[13];
  v16 = v0[14];
  if (v11)
  {
    v57 = v0[18];
    v18 = swift_slowAlloc();
    v53 = v10;
    v19 = swift_slowAlloc();
    v65 = v19;
    *v18 = 136315138;
    sub_21493E950(&unk_281192700, MEMORY[0x277CC9260]);
    v20 = sub_214990050();
    v55 = v12;
    v22 = v21;
    v59 = *(v16 + 8);
    v59(v15, v17);
    v23 = sub_2149079F4(v20, v22, &v65);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_21488E000, v9, v53, "\t- performPostUnsubscribe(url: %s)", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x216059AC0](v19, -1, -1);
    MEMORY[0x216059AC0](v18, -1, -1);

    v24 = *(v13 + 8);
    v24(v55, v57);
  }

  else
  {

    v59 = *(v16 + 8);
    v59(v15, v17);
    v24 = *(v13 + 8);
    v24(v12, v14);
  }

  v0[28] = v24;
  v25 = v0[23];
  v52 = v25;
  v54 = v0[18];
  v56 = v0[15];
  v58 = v24;
  v26 = v0[13];
  v27 = v0[8];
  v28 = v0[9];
  v29 = v0[6];
  v51 = v0[7];
  v60(v0[16], v29, v26);
  sub_21498DE90();
  sub_21498DE60();
  sub_21498DED0();
  sub_21498F8B0();
  sub_21498F880();
  (*(v27 + 8))(v28, v51);
  sub_21498DEC0();
  v61(v52, v62, v54);
  v60(v56, v29, v26);
  v30 = sub_21498E670();
  v31 = sub_21498FBA0();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[23];
  v34 = v0[18];
  v35 = v0[19];
  v37 = v0[14];
  v36 = v0[15];
  v38 = v0[13];
  if (v32)
  {
    v64 = v0[18];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v65 = v40;
    *v39 = 136315138;
    sub_21493E950(&unk_281192700, MEMORY[0x277CC9260]);
    v41 = sub_214990050();
    v63 = v33;
    v43 = v42;
    v59(v36, v38);
    v44 = sub_2149079F4(v41, v43, &v65);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_21488E000, v30, v31, "\t\t- sending POST request to %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x216059AC0](v40, -1, -1);
    MEMORY[0x216059AC0](v39, -1, -1);

    v45 = v63;
    v46 = v64;
  }

  else
  {

    v59(v36, v38);
    v45 = v33;
    v46 = v34;
  }

  v58(v45, v46);
  v0[29] = [objc_opt_self() sharedSession];
  v47 = *(MEMORY[0x277CC9D18] + 4);
  v48 = swift_task_alloc();
  v0[30] = v48;
  *v48 = v0;
  v48[1] = sub_21493C4D4;
  v49 = v0[12];

  return MEMORY[0x28211ECF8](v49, 0);
}

uint64_t sub_21493C4D4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 240);
  v11 = *v4;
  *(v7 + 248) = a3;
  *(v7 + 256) = v3;

  if (v3)
  {
    v9 = sub_21493C95C;
  }

  else
  {

    sub_21489B4F8(a1, a2);
    v9 = sub_21493C60C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_21493C60C()
{
  v1 = *(v0 + 248);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v42 = v2;
    v3 = *(v0 + 248);
    v4 = *(v0 + 216);
    (*(v0 + 208))(*(v0 + 176), *(v0 + 200), *(v0 + 144));
    v5 = v3;
    v6 = sub_21498E670();
    v7 = sub_21498FBD0();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 248);
    v44 = *(v0 + 224);
    v10 = *(v0 + 176);
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);
    if (v8)
    {
      v41 = *(v0 + 96);
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = [v42 statusCode];

      _os_log_impl(&dword_21488E000, v6, v7, "\t\t- Response Code(%ld)", v16, 0xCu);
      MEMORY[0x216059AC0](v16, -1, -1);

      v44(v10, v11);
      (*(v14 + 8))(v41, v15);
    }

    else
    {

      v44(v10, v11);
      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v17 = *(v0 + 216);
    (*(v0 + 208))(*(v0 + 168), *(v0 + 200), *(v0 + 144));
    v18 = sub_21498E670();
    v19 = sub_21498FBB0();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 248);
    v22 = *(v0 + 224);
    v23 = *(v0 + 168);
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v27 = *(v0 + 88);
    v26 = *(v0 + 96);
    v45 = *(v0 + 80);
    if (v20)
    {
      v43 = *(v0 + 96);
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_21488E000, v18, v19, "\t\t- error: Bad Server response", v28, 2u);
      MEMORY[0x216059AC0](v28, -1, -1);

      v22(v23, v25);
      (*(v27 + 8))(v43, v45);
    }

    else
    {

      v22(v23, v25);
      (*(v27 + 8))(v26, v45);
    }
  }

  v30 = *(v0 + 184);
  v29 = *(v0 + 192);
  v32 = *(v0 + 168);
  v31 = *(v0 + 176);
  v33 = *(v0 + 160);
  v35 = *(v0 + 128);
  v34 = *(v0 + 136);
  v36 = *(v0 + 120);
  v37 = *(v0 + 96);
  v38 = *(v0 + 72);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_21493C95C()
{
  v47 = v0;
  v1 = *(v0 + 256);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);

  v3(v5, v4, v6);
  v7 = v1;
  v8 = sub_21498E670();
  v9 = sub_21498FBB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 256);
    v11 = *(v0 + 152);
    v41 = *(v0 + 144);
    v42 = *(v0 + 160);
    v12 = *(v0 + 88);
    v44 = *(v0 + 224);
    v45 = *(v0 + 96);
    v43 = *(v0 + 80);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    v17 = *(v0 + 32);
    v18 = sub_214990100();
    v20 = sub_2149079F4(v18, v19, &v46);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_21488E000, v8, v9, "\t\t- ERROR: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x216059AC0](v14, -1, -1);
    MEMORY[0x216059AC0](v13, -1, -1);

    v44(v42, v41);
    (*(v12 + 8))(v45, v43);
  }

  else
  {
    v21 = *(v0 + 256);
    v22 = *(v0 + 224);
    v24 = *(v0 + 152);
    v23 = *(v0 + 160);
    v25 = *(v0 + 144);
    v27 = *(v0 + 88);
    v26 = *(v0 + 96);
    v28 = *(v0 + 80);

    v22(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  v30 = *(v0 + 184);
  v29 = *(v0 + 192);
  v32 = *(v0 + 168);
  v31 = *(v0 + 176);
  v33 = *(v0 + 160);
  v35 = *(v0 + 128);
  v34 = *(v0 + 136);
  v36 = *(v0 + 120);
  v37 = *(v0 + 96);
  v38 = *(v0 + 72);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_21493CC08(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2[15] = a1;
  v2[16] = a2;
  v3 = sub_21498E1B0();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  v6 = sub_21498E690();
  v2[20] = v6;
  v7 = *(v6 - 8);
  v2[21] = v7;
  v8 = *(v7 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21493CD8C, 0, 0);
}

void sub_21493CD8C()
{
  v139 = v0;
  v138[1] = *MEMORY[0x277D85DE8];
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v0[20], qword_281194E18);
  v5 = *(v2 + 16);
  v136 = v4;
  v5(v1);
  sub_2148B015C(v3, (v0 + 2));
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();
  sub_2148B0194(v3);
  v134 = v5;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v138[0] = v10;
    *v9 = 136315906;
    v11 = v0[15];
    if (*(v8 + 56))
    {
      v12 = *(v11 + 48);
      v13 = *(v8 + 56);
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    v17 = sub_2149079F4(v12, v13, v138);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    v18 = *(v11 + 40);
    v19 = v0[15];
    if (v18)
    {
      v20 = *(v19 + 32);
      v21 = v18;
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    v22 = sub_2149079F4(v20, v21, v138);

    *(v9 + 14) = v22;
    *(v9 + 22) = 2080;
    v23 = v0[15];
    if (*(v19 + 8))
    {
      v24 = *v23;
      v25 = *(v19 + 8);
    }

    else
    {
      v24 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = sub_2149079F4(v24, v25, v138);

    *(v9 + 24) = v26;
    *(v9 + 32) = 2080;
    if (v23[3])
    {
      v27 = *(v0[15] + 16);
      v28 = v23[3];
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    v29 = v0[27];
    v31 = v0[20];
    v30 = v0[21];

    v32 = sub_2149079F4(v27, v28, v138);

    *(v9 + 34) = v32;
    _os_log_impl(&dword_21488E000, v6, v7, "\t- performMailtoUnsubscribe(emailParams: { from: %s, to: %s, subject: %s, body: %s })", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v10, -1, -1);
    MEMORY[0x216059AC0](v9, -1, -1);

    v135 = *(v30 + 8);
    v135(v29, v31);
    v5 = v134;
  }

  else
  {
    v14 = v0[27];
    v16 = v0[20];
    v15 = v0[21];

    v135 = *(v15 + 8);
    v135(v14, v16);
  }

  v33 = v0[15];
  v34 = v33[5];
  if (!v34)
  {
    v44 = v0 + 23;
    (v5)(v0[23], v136, v0[20]);
    v45 = sub_21498E670();
    v46 = sub_21498FBB0();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_43;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "\t\t- Missing To address in Mailto Unsubscribe";
LABEL_26:
    _os_log_impl(&dword_21488E000, v45, v46, v48, v47, 2u);
    MEMORY[0x216059AC0](v47, -1, -1);
    goto LABEL_43;
  }

  if (!v33[7])
  {
    v44 = v0 + 24;
    (v5)(v0[24], v136, v0[20]);
    v45 = sub_21498E670();
    v46 = sub_21498FBB0();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_43;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "\t\t- Missing From address in Mailto Unsubscribe";
    goto LABEL_26;
  }

  v35 = v33[4];
  v36 = v33[6];
  v37 = [objc_allocWithZone(MEMORY[0x277D25850]) init];
  [v37 setType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_214991720;
  v131 = v35;
  *(v38 + 32) = v35;
  *(v38 + 40) = v34;

  v39 = sub_21498F9E0();

  [v37 setTo_];

  v40 = sub_21498F840();
  [v37 setSender_];

  v41 = v33[1];
  v42 = v0[15];
  if (v41)
  {
    v43 = *v42;
  }

  v49 = sub_21498F840();

  [v37 setSubject_];

  if (v42[3])
  {
    v50 = *(v0[15] + 16);
    v51 = v42[3];
  }

  v52 = v134;
  v53 = v0[26];
  v54 = v0[20];

  v55 = sub_21498F840();

  [v37 setBody_];

  (v134)(v53, v136, v54);
  v56 = v37;

  v57 = v56;
  v58 = sub_21498E670();
  v59 = sub_21498FBA0();

  if (!os_log_type_enabled(v58, v59))
  {
    v82 = v0[26];
    v83 = v0[20];
    v84 = v0[21];

    v135(v82, v83);
    goto LABEL_35;
  }

  v60 = v57;
  v61 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v138[0] = v62;
  *v61 = 136315906;
  *(v61 + 4) = sub_2149079F4(v131, v34, v138);
  *(v61 + 12) = 2080;
  v63 = [v60 sender];
  if (!v63)
  {

    __break(1u);
    goto LABEL_49;
  }

  v64 = v63;
  v129 = v62;
  v65 = sub_21498F870();
  v67 = v66;

  v68 = sub_2149079F4(v65, v67, v138);

  *(v61 + 14) = v68;
  *(v61 + 22) = 2080;
  v69 = [v60 subject];

  if (!v69)
  {
LABEL_49:

    __break(1u);
    goto LABEL_50;
  }

  v70 = sub_21498F870();
  v72 = v71;

  v73 = sub_2149079F4(v70, v72, v138);

  *(v61 + 24) = v73;
  *(v61 + 32) = 2080;
  v74 = [v60 body];
  v132 = v60;

  if (!v74)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v75 = v0[26];
  v77 = v0[20];
  v76 = v0[21];
  v78 = sub_21498F870();
  v80 = v79;

  v81 = sub_2149079F4(v78, v80, v138);

  *(v61 + 34) = v81;
  _os_log_impl(&dword_21488E000, v58, v59, "\t\t- MSSendEmail- Start To: %s From: %s Subject: %s Body: %s", v61, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x216059AC0](v129, -1, -1);
  MEMORY[0x216059AC0](v61, -1, -1);

  v135(v75, v77);
  v52 = v134;
  v57 = v132;
LABEL_35:
  v85 = v0[16];
  v86 = objc_opt_self();
  v0[13] = 0;
  v87 = [v86 sendEmail:v57 playSound:1 timeout:v0 + 13 error:v85 / 1000.0];
  v88 = v0[13];
  if (v87)
  {
    v90 = v0[18];
    v89 = v0[19];
    v91 = v0[17];
    v92 = v87;
    sub_21498E160();
    v93 = v88;

    (*(v90 + 8))(v89, v91);
  }

  else
  {
    v133 = v57;
    v94 = v0[22];
    v95 = v0[20];
    v96 = v88;
    v97 = sub_21498E100();

    swift_willThrow();
    v52(v94, v136, v95);
    v98 = v97;
    v99 = sub_21498E670();
    v100 = sub_21498FBB0();

    v101 = os_log_type_enabled(v99, v100);
    v103 = v0[21];
    v102 = v0[22];
    v104 = v0[20];
    if (v101)
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v138[0] = v106;
      *v105 = 136315138;
      swift_getErrorValue();
      v130 = v104;
      v108 = v0[10];
      v107 = v0[11];
      v109 = v0[12];
      v110 = sub_214990100();
      v112 = sub_2149079F4(v110, v111, v138);

      *(v105 + 4) = v112;
      _os_log_impl(&dword_21488E000, v99, v100, "\t\t- ERROR: %s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v106);
      MEMORY[0x216059AC0](v106, -1, -1);
      MEMORY[0x216059AC0](v105, -1, -1);

      v113 = v102;
      v114 = v130;
    }

    else
    {

      v113 = v102;
      v114 = v104;
    }

    v135(v113, v114);
    v52 = v134;
    v57 = v133;
  }

  v44 = v0 + 25;
  v52(v0[25], v136, v0[20]);
  v45 = sub_21498E670();
  v115 = sub_21498FBA0();
  if (!os_log_type_enabled(v45, v115))
  {

    v117 = v57;
    goto LABEL_44;
  }

  v116 = swift_slowAlloc();
  *v116 = 0;
  _os_log_impl(&dword_21488E000, v45, v115, "\t\t- MSSendEmail - End", v116, 2u);
  MEMORY[0x216059AC0](v116, -1, -1);

LABEL_43:
  v117 = v45;
LABEL_44:
  v118 = *v44;
  v120 = v0[26];
  v119 = v0[27];
  v122 = v0[24];
  v121 = v0[25];
  v124 = v0[22];
  v123 = v0[23];
  v126 = v0[20];
  v125 = v0[21];
  v137 = v0[19];

  v135(v118, v126);

  v127 = v0[1];
  v128 = *MEMORY[0x277D85DE8];

  v127();
}

uint64_t sub_21493D94C(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_21498E690();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v7 = sub_21498E1B0();
  v2[19] = v7;
  v8 = *(v7 - 8);
  v2[20] = v8;
  v9 = *(v8 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21493DAC4, 0, 0);
}

uint64_t sub_21493DAC4()
{
  v1 = *(v0 + 80);
  v3 = *v1;
  v2 = v1[1];
  if (*v1 == 1953722224 && v2 == 0xE400000000000000)
  {
    goto LABEL_7;
  }

  v5 = *v1;
  v6 = v1[1];
  if (sub_214990080())
  {
    v1 = *(v0 + 80);
LABEL_7:
    if (!v1[3])
    {
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 128);
      v24 = *(v0 + 96);
      v25 = *(v0 + 104);
      v26 = __swift_project_value_buffer(v24, qword_281194E18);
      (*(v25 + 16))(v23, v26, v24);
      v15 = sub_21498E670();
      v16 = sub_21498FBB0();
      v27 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 128);
      v19 = *(v0 + 96);
      v20 = *(v0 + 104);
      if (!v27)
      {
        goto LABEL_38;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "ERROR: Missing url in post unsubscribe";
      goto LABEL_37;
    }

    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v9 = *(v0 + 144);
    v10 = v1[2];
    sub_21498E1A0();
    if ((*(v8 + 48))(v9, 1, v7) == 1)
    {
      sub_21489DFCC(*(v0 + 144), &qword_27CA1A348, &qword_214991700);
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 136);
      v12 = *(v0 + 96);
      v13 = *(v0 + 104);
      v14 = __swift_project_value_buffer(v12, qword_281194E18);
      (*(v13 + 16))(v11, v14, v12);
      v15 = sub_21498E670();
      v16 = sub_21498FBB0();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 136);
      v19 = *(v0 + 96);
      v20 = *(v0 + 104);
      if (!v17)
      {
        goto LABEL_38;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "ERROR: Unsable to parse url for post unsubscribe";
LABEL_37:
      _os_log_impl(&dword_21488E000, v15, v16, v22, v21, 2u);
      MEMORY[0x216059AC0](v21, -1, -1);
LABEL_38:

      (*(v20 + 8))(v18, v19);
      v49 = *(v0 + 168);
      v50 = *(v0 + 136);
      v51 = *(v0 + 144);
      v53 = *(v0 + 120);
      v52 = *(v0 + 128);
      v54 = *(v0 + 112);

      v55 = *(v0 + 8);

      return v55();
    }

    (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
    v36 = swift_task_alloc();
    *(v0 + 176) = v36;
    *v36 = v0;
    v36[1] = sub_21493E0A0;
    v37 = *(v0 + 168);

    return (sub_21493BCDC)(v37);
  }

  v28 = v3 == 0x6F746C69616DLL && v2 == 0xE600000000000000;
  if (!v28 && (sub_214990080() & 1) == 0)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 104);
    v44 = *(v0 + 112);
    v46 = *(v0 + 96);
    v47 = __swift_project_value_buffer(v46, qword_281194E18);
    (*(v45 + 16))(v44, v47, v46);
    v15 = sub_21498E670();
    v16 = sub_21498FBB0();
    v48 = os_log_type_enabled(v15, v16);
    v20 = *(v0 + 104);
    v18 = *(v0 + 112);
    v19 = *(v0 + 96);
    if (!v48)
    {
      goto LABEL_38;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "ERROR: Unsupported unsubscribe link";
    goto LABEL_37;
  }

  v29 = *(v0 + 80);
  v30 = *(v29 + 40);
  if (v30 == 1)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 120);
    v32 = *(v0 + 96);
    v33 = *(v0 + 104);
    v34 = __swift_project_value_buffer(v32, qword_281194E18);
    (*(v33 + 16))(v31, v34, v32);
    v15 = sub_21498E670();
    v16 = sub_21498FBB0();
    v35 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 120);
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    if (!v35)
    {
      goto LABEL_38;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "ERROR: Email Params Hash is missing for mailto unsubscribe";
    goto LABEL_37;
  }

  v39 = *(v29 + 32);
  v40 = *(v29 + 48);
  v41 = *(v29 + 80);
  *(v0 + 48) = *(v29 + 64);
  *(v0 + 64) = v41;
  *(v0 + 32) = v40;
  *(v0 + 16) = v39;
  *(v0 + 24) = v30;
  v42 = swift_task_alloc();
  *(v0 + 184) = v42;
  *v42 = v0;
  v42[1] = sub_21493E258;
  v43 = *(v0 + 88);

  return (sub_21493CC08)(v0 + 16, v43);
}

uint64_t sub_21493E0A0()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21493E19C, 0, 0);
}

uint64_t sub_21493E19C()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_21493E258()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v11 = *v0;

  v3 = v1[21];
  v4 = v1[18];
  v5 = v1[17];
  v6 = v1[16];
  v7 = v1[15];
  v8 = v1[14];

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_21493E404()
{
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v1 = v0;
  v2 = sub_21498F840();
  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_21498FD40();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = 0;
      v5 = v14;
      goto LABEL_9;
    }
  }

  else
  {
    sub_21489DFCC(v17, &qword_27CA1B878, qword_214996678);
  }

  v5 = 0;
  v4 = 1;
LABEL_9:
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v7 = v6;
  v8 = &v6[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_turnOffMailCleanupTipDismissedKey];
  v9 = *&v6[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_turnOffMailCleanupTipDismissedKey];
  v10 = *(v8 + 1);
  v11 = sub_21498F840();
  v12 = [v7 BOOLForKey_];

  if ((v4 | v12))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

unint64_t sub_21493E560()
{
  result = qword_281191548;
  if (!qword_281191548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191548);
  }

  return result;
}

unint64_t sub_21493E5E4()
{
  result = qword_27CA1C5F8;
  if (!qword_27CA1C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C5F8);
  }

  return result;
}

uint64_t sub_21493E668(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    return sub_21489B4F8(a1, a2);
  }
}

unint64_t sub_21493E678()
{
  result = qword_27CA1C618;
  if (!qword_27CA1C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C618);
  }

  return result;
}

unint64_t sub_21493E6CC()
{
  result = qword_27CA1C620;
  if (!qword_27CA1C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C620);
  }

  return result;
}

unint64_t sub_21493E758()
{
  result = qword_27CA1C648;
  if (!qword_27CA1C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C648);
  }

  return result;
}

uint64_t sub_21493E7AC(uint64_t *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C640, &qword_21499B520) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2149363B4(a1, v1 + v4, v5);
}

uint64_t sub_21493E854(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C640, &qword_21499B520) - 8) + 80);

  return sub_2149364A8(a1);
}

uint64_t sub_21493E8EC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_21489B4F8(a2, a3);
  }
}

uint64_t sub_21493E950(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21493E998()
{
  result = qword_27CA1C698;
  if (!qword_27CA1C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C698);
  }

  return result;
}

uint64_t sub_21493EA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t sub_21493EAE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_21489B70C(a2, a3);
  }
}

uint64_t objectdestroyTm_3(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_21493ECD0()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_21493EDEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214941CCC();
  *a2 = result;
  return result;
}

void sub_21493EE1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  v5 = 0xEC0000006E6F6974;
  v6 = 0x656C706D6F436E6FLL;
  if (v2 != 5)
  {
    v6 = 2036625250;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE900000000000073;
  v8 = 0x7365636375536E6FLL;
  if (v2 != 3)
  {
    v8 = 0x726F7272456E6FLL;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x646F6874656DLL;
  if (v2 != 1)
  {
    v10 = 0x6D6F437469617761;
    v9 = 0xEF6E6F6974656C70;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_21493EF00()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0x656C706D6F436E6FLL;
  if (v1 != 5)
  {
    v3 = 2036625250;
  }

  v4 = 0x7365636375536E6FLL;
  if (v1 != 3)
  {
    v4 = 0x726F7272456E6FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x646F6874656DLL;
  if (v1 != 1)
  {
    v5 = 0x6D6F437469617761;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21493EFE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214941CCC();
  *a1 = result;
  return result;
}

uint64_t sub_21493F008(uint64_t a1)
{
  v2 = sub_214941AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21493F044(uint64_t a1)
{
  v2 = sub_214941AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21493F080(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21498E690();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = sub_21498E1B0();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v3[12] = *(v10 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21493F224, 0, 0);
}

uint64_t sub_21493F224()
{
  v57 = v0;
  v1 = v0[2];
  v2 = v0[4] + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_urlReference;
  v3 = sub_21498E8F0();
  v4 = v0[9];
  v6 = v5;
  v8 = v0[10];
  v7 = v0[11];
  v55 = v3;
  sub_21498E1A0();
  if ((*(v7 + 48))(v4, 1, v8) == 1)
  {
    sub_21489DFCC(v0[9], &qword_27CA1A348, &qword_214991700);
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = __swift_project_value_buffer(v11, qword_281194E18);
    (*(v10 + 16))(v9, v12, v11);

    v13 = sub_21498E670();
    v14 = sub_21498FBB0();

    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v56 = v20;
      *v19 = 136315138;
      v21 = sub_2149079F4(v55, v6, &v56);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_21488E000, v13, v14, "HTTP Request Action: not url: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x216059AC0](v20, -1, -1);
      MEMORY[0x216059AC0](v19, -1, -1);
    }

    else
    {
    }

    (*(v17 + 8))(v16, v18);
    v36 = v0[3];
    v37 = v0[4];
    v38 = v0[2];
    v39 = *(v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onErrorActions);
    sub_21498FA20();
    v40 = *(v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onCompletionActions);
    sub_21498FA20();
  }

  else
  {
    v23 = v0[13];
    v22 = v0[14];
    v25 = v0[11];
    v24 = v0[12];
    v26 = v0[10];
    v27 = v0[8];
    v28 = v0[4];
    v51 = v28;
    v52 = v27;
    v53 = v22;
    v54 = v0[3];
    v50 = v0[2];
    v48 = v23;
    v49 = *(v25 + 32);
    v49(v22, v0[9], v26);
    v29 = sub_21498FAE0();
    (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
    (*(v25 + 16))(v23, v22, v26);
    v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v31 = (v24 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    v49(v34 + v30, v48, v26);
    *(v34 + v31) = v51;
    *(v34 + v32) = v50;
    v35 = (v34 + v33);
    *v35 = v55;
    v35[1] = v6;
    *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v54;

    sub_214926978(0, 0, v52, &unk_21499B728, v34);

    (*(v25 + 8))(v53, v26);
  }

  v42 = v0[13];
  v41 = v0[14];
  v44 = v0[8];
  v43 = v0[9];
  v45 = v0[7];

  v46 = v0[1];

  return v46();
}

uint64_t sub_21493F6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v22;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v9 = sub_21498EDC0();
  v8[19] = v9;
  v10 = *(v9 - 8);
  v8[20] = v10;
  v11 = *(v10 + 64) + 15;
  v8[21] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730) - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100) - 8) + 64) + 15;
  v8[23] = swift_task_alloc();
  v14 = sub_21498E1B0();
  v8[24] = v14;
  v15 = *(v14 - 8);
  v8[25] = v15;
  v16 = *(v15 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v17 = sub_21498E690();
  v8[28] = v17;
  v18 = *(v17 - 8);
  v8[29] = v18;
  v19 = *(v18 + 64) + 15;
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21493F8B0, 0, 0);
}

uint64_t sub_21493F8B0()
{
  v61 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[13];
  v8 = __swift_project_value_buffer(v2, qword_281194E18);
  v0[32] = v8;
  v9 = *(v3 + 16);
  v0[33] = v9;
  v0[34] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v2);
  v10 = *(v6 + 16);
  v0[35] = v10;
  v0[36] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4, v7, v5);
  v11 = sub_21498E670();
  v12 = sub_21498FBD0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[31];
  v16 = v0[28];
  v15 = v0[29];
  v17 = v0[27];
  v19 = v0[24];
  v18 = v0[25];
  if (v13)
  {
    v59 = v0[28];
    v20 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v60 = v58;
    *v20 = 136315138;
    sub_214941B6C(&unk_281192700, MEMORY[0x277CC9260]);
    v21 = sub_214990050();
    v57 = v14;
    v23 = v22;
    v56 = v12;
    v24 = *(v18 + 8);
    v24(v17, v19);
    v25 = sub_2149079F4(v21, v23, &v60);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_21488E000, v11, v56, "HTTP Request Action: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x216059AC0](v58, -1, -1);
    MEMORY[0x216059AC0](v20, -1, -1);

    v26 = *(v15 + 8);
    v26(v57, v59);
  }

  else
  {

    v24 = *(v18 + 8);
    v24(v17, v19);
    v26 = *(v15 + 8);
    v26(v14, v16);
  }

  v0[37] = v26;
  v0[38] = v24;
  v27 = v0[23];
  sub_2148AA824(v0[14] + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_method, v27, &qword_27CA1A800, &unk_214993100);
  v28 = sub_21498E900();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_21489DFCC(v0[23], &qword_27CA1A800, &unk_214993100);
    v30 = 1;
  }

  else
  {
    v31 = v0[15];
    sub_21498E8F0();
    (*(v29 + 8))(v0[23], v28);
    v32 = sub_21491F750();
    if (v32 == 4)
    {
      v30 = 1;
    }

    else
    {
      v30 = v32;
    }
  }

  v33 = v0[22];
  sub_2148AA824(v0[14] + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_jsonBody, v33, &qword_27CA1A808, &unk_21499B730);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_21489DFCC(v0[22], &qword_27CA1A808, &unk_21499B730);
    v36 = 0;
    v37 = 0xF000000000000000;
  }

  else
  {
    v50 = v0[15];
    sub_2148B4A4C();
    sub_21498E750();
    (*(v35 + 8))(v0[22], v34);
    v51 = v0[9];
    v52 = sub_21498DF70();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    sub_21498DF60();
    v0[12] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6D0, &qword_2149933D0);
    sub_2148B4AC8();
    v36 = sub_21498DF50();
    v37 = v55;
  }

  v0[39] = v36;
  v0[40] = v37;
  v38 = v0[14];
  v39 = *(v38 + 16);
  v40 = *(v38 + 24);

  if ((v40 & 1) == 0)
  {
    v41 = v0[20];
    v42 = v0[21];
    v43 = v0[19];

    sub_21498FBC0();
    v44 = sub_21498EFC0();
    sub_21498E5A0();

    sub_21498EDB0();
    swift_getAtKeyPath();

    (*(v41 + 8))(v42, v43);

    v39 = v0[10];
  }

  sub_2148994D0(v39 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository, (v0 + 2));

  v45 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v46 = swift_task_alloc();
  v0[41] = v46;
  *v46 = v0;
  v46[1] = sub_214940244;
  v48 = v0[16];
  v47 = v0[17];

  return sub_214937744(v48, v47, v30, v36, v37);
}

uint64_t sub_214940244(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 328);
  v9 = *v3;
  *(*v3 + 336) = v2;

  if (v2)
  {
    v7 = sub_214940470;
  }

  else
  {
    sub_21489B4F8(a1, a2);
    v7 = sub_214940374;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_214940374()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = *(v5 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onSuccessActions);
  sub_21498FA20();
  v7 = *(v5 + OBJC_IVAR____TtC19iCloudMailAssistant19MAHttpRequestAction_onCompletionActions);
  sub_21498FA20();
  sub_21489B8F0(v1, v2);
  v9 = v0[30];
  v8 = v0[31];
  v11 = v0[26];
  v10 = v0[27];
  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[21];

  v15 = v0[1];

  return v15();
}
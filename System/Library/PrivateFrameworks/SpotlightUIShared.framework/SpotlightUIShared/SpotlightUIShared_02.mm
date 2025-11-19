unint64_t sub_26B922070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426368, &qword_26B9B0D48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426318, &qword_26B9B0CE0);
    v8 = sub_26B9ACD84();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_26B9AAAE4();
    while (1)
    {
      sub_26B9236E8(v10, v6, &qword_280426368, &qword_26B9B0D48);
      v12 = *v6;
      v13 = v6[1];
      result = sub_26B9201A8(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_26B9ABE84();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26B92225C()
{
  result = qword_280426260;
  if (!qword_280426260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426260);
  }

  return result;
}

uint64_t sub_26B9222B0(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_26B9AC114() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26B8EC52C;

  return sub_26B90EADC(a1, a2, v2 + v7);
}

uint64_t sub_26B922394(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26B9223E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26B92243C(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(sub_26B9ABD04() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0) - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EC52C;

  return sub_26B91D82C(a1, a2, v2 + v8, v2 + v11);
}

uint64_t sub_26B922594(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_26B9AB984() - 8);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));
  v8 = *(v7 + *(v6 + 64));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26B8EB6C8;

  return sub_26B9153E4(a1, a2, v7, v8);
}

uint64_t sub_26B9226D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D686750](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26B920EE0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26B92276C(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_26B9AB984() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26B8EC52C;

  return sub_26B917498(a1, a2, v2 + v7);
}

uint64_t sub_26B922850(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_26B9AB984() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26B8EC52C;

  return sub_26B91B6A4(a1, a2, v2 + v7);
}

uint64_t objectdestroy_5Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_26B9229C4()
{
  v0 = sub_26B9ABF04();
  v39 = *(v0 - 8);
  v40 = v0;
  v1 = *(v39 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - v4;
  v6 = sub_26B9ABEB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262C8, &qword_26B9B3CE0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v37 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v37 - v20;
  MEMORY[0x26D685FA0](v19);
  v22 = sub_26B9ABEA4();
  (*(v7 + 8))(v10, v6);
  sub_26B9184D4(v22, v21);

  sub_26B9236E8(v21, v18, &qword_2804262C8, &qword_26B9B3CE0);
  v23 = sub_26B9ABF24();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v18, 1, v23) == 1)
  {
    sub_26B8EACD8(v18, &qword_2804262C8, &qword_26B9B3CE0);
  }

  else
  {
    if ((*(v24 + 88))(v18, v23) == *MEMORY[0x277D72D50])
    {
      sub_26B8EACD8(v21, &qword_2804262C8, &qword_26B9B3CE0);
      (*(v24 + 96))(v18, v23);
      v26 = *v18;
      v27 = swift_projectBox();
      v29 = v39;
      v28 = v40;
      (*(v39 + 16))(v5, v27, v40);

      v30 = v38;
      (*(v29 + 32))(v38, v5, v28);
      v31 = (*(v29 + 88))(v30, v28);
      v32 = 1;
      if (v31 == *MEMORY[0x277D72CB0] || v31 == *MEMORY[0x277D72CA0] || v31 == *MEMORY[0x277D72CD0] || v31 == *MEMORY[0x277D72CE8] || v31 == *MEMORY[0x277D72CE0] || v31 == *MEMORY[0x277D72CB8] || v31 == *MEMORY[0x277D72C70] || v31 == *MEMORY[0x277D72CA8] || v31 == *MEMORY[0x277D72C88] || v31 == *MEMORY[0x277D72C58])
      {
        return v32 & 1;
      }

      (*(v29 + 8))(v30, v28);
LABEL_25:
      v32 = 0;
      return v32 & 1;
    }

    (*(v24 + 8))(v18, v23);
  }

  sub_26B9236E8(v21, v15, &qword_2804262C8, &qword_26B9B3CE0);
  if (v25(v15, 1, v23) == 1)
  {
    sub_26B8EACD8(v21, &qword_2804262C8, &qword_26B9B3CE0);
    sub_26B8EACD8(v15, &qword_2804262C8, &qword_26B9B3CE0);
    v32 = 0;
    return v32 & 1;
  }

  if ((*(v24 + 88))(v15, v23) != *MEMORY[0x277D72D28])
  {
    sub_26B8EACD8(v21, &qword_2804262C8, &qword_26B9B3CE0);
    (*(v24 + 8))(v15, v23);
    goto LABEL_25;
  }

  (*(v24 + 96))(v15, v23);
  v34 = *(*v15 + 32);
  v33 = *(*v15 + 40);

  if (v34 == 0xD000000000000027 && 0x800000026B9B7DB0 == v33)
  {
    v32 = 1;
  }

  else
  {
    v32 = sub_26B9ACEB4();
  }

  sub_26B8EACD8(v21, &qword_2804262C8, &qword_26B9B3CE0);
  return v32 & 1;
}

uint64_t sub_26B922FC8(uint64_t a1)
{
  v2 = sub_26B9ABF24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426300, &unk_26B9B3AA0);
    v10 = sub_26B9ACBA4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_26B92349C(&qword_2804262F0, MEMORY[0x277D72D58]);
      v18 = sub_26B9AC454();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_26B92349C(&qword_2804262F8, MEMORY[0x277D72D58]);
          v25 = sub_26B9AC494();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_26B9232EC()
{
  result = qword_2804262E0;
  if (!qword_2804262E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804262E0);
  }

  return result;
}

unint64_t sub_26B923344()
{
  result = qword_2804262E8;
  if (!qword_2804262E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804262E8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B923400(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26B92344C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26B92349C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_16Tm()
{
  v1 = sub_26B9ABD04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_26B9ABEB4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_26B923680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26B9236E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26B923750(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B9237C4()
{
  type metadata accessor for FeedbackActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_28042ABC8 = v0;
  return result;
}

uint64_t sub_26B923800()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static FeedbackActor.shared.getter()
{
  if (qword_28042ABC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B9AAAE4();
}

uint64_t static FeedbackActor.shared.setter(uint64_t a1)
{
  if (qword_28042ABC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_28042ABC8 = a1;
}

uint64_t (*static FeedbackActor.shared.modify())()
{
  if (qword_28042ABC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B9239B8@<X0>(void *a1@<X8>)
{
  if (qword_28042ABC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_28042ABC8;
  return sub_26B9AAAE4();
}

uint64_t sub_26B923A38(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_28042ABC0;
  sub_26B9AAAE4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_28042ABC8 = v1;
}

uint64_t FeedbackActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_26B923B2C()
{
  result = qword_280426378;
  if (!qword_280426378)
  {
    type metadata accessor for FeedbackActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426378);
  }

  return result;
}

uint64_t sub_26B923BA4()
{
  if (qword_28042ABC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B9AAAE4();
}

uint64_t sub_26B923C1C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FeedbackActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_26B923CBC()
{
  qword_28042ACF0 = &type metadata for BaseFeedbackHelper;
  unk_28042ACF8 = &off_287C5DC60;
  KeyPath = swift_getKeyPath();

  return Dependency.init(_:)(KeyPath, qword_28042ACD8);
}

uint64_t sub_26B923D14@<X0>(uint64_t a1@<X8>)
{
  if (qword_28042ACD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B907F08(qword_28042ACD8, a1);
}

uint64_t sub_26B923D94(uint64_t *a1)
{
  if (qword_28042ACD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(qword_28042ACD8, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_26B923E24())()
{
  if (qword_28042ACD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B923EDC(uint64_t a1)
{
  sub_26B907F08(a1, v3);
  sub_26B907F08(v3, v2);
  static Dependencies.subscript.setter(v2, &type metadata for FeedbackHelperKey, &type metadata for FeedbackHelperKey, &off_281FF6F40);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t Dependencies.feedbackHelper.setter(uint64_t *a1)
{
  sub_26B907F08(a1, v3);
  static Dependencies.subscript.setter(v3, &type metadata for FeedbackHelperKey, &type metadata for FeedbackHelperKey, &off_281FF6F40);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*Dependencies.feedbackHelper.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x78uLL);
  }

  *a1 = v2;
  static Dependencies.subscript.getter(&type metadata for FeedbackHelperKey, &type metadata for FeedbackHelperKey, &off_281FF6F40);
  return sub_26B924004;
}

void sub_26B924004(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26B907F08(*a1, (v2 + 5));
    sub_26B907F08((v2 + 5), (v2 + 10));
    static Dependencies.subscript.setter((v2 + 10), &type metadata for FeedbackHelperKey, &type metadata for FeedbackHelperKey, &off_281FF6F40);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_26B907F08(*a1, (v2 + 5));
    static Dependencies.subscript.setter((v2 + 5), &type metadata for FeedbackHelperKey, &type metadata for FeedbackHelperKey, &off_281FF6F40);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_26B9AAAE4();
  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_26B9AAAE4();

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for BaseFeedbackHelper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for BaseFeedbackHelper(uint64_t result, int a2, int a3)
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

uint64_t QueryHistoryEvent.hashValue.getter()
{
  v1 = *v0;
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](v1);
  return sub_26B9ACFF4();
}

uint64_t sub_26B92428C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    type metadata accessor for Debouncer();
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = v2;
    v4 = v0;
    v1 = Debouncer.__allocating_init(delay:action:)(sub_26B925234, v3, 2.0);
    v5 = *(v0 + 64);
    *(v4 + 64) = v1;
    sub_26B9AAAE4();
  }

  sub_26B9AAAE4();
  return v1;
}

uint64_t sub_26B924338()
{
  v0 = swift_allocObject();
  sub_26B924370();
  return v0;
}

uint64_t sub_26B924370()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_26B924438();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  v2 = [ObjCClassFromMetadata defaultCenter];
  sub_26B9AAAE4();
  v3 = sub_26B9AC4C4();
  [v2 addObserver:v0 selector:sel_resetHistory name:v3 object:0];

  return v0;
}

unint64_t sub_26B924438()
{
  result = qword_280426380;
  if (!qword_280426380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280426380);
  }

  return result;
}

uint64_t BaseQueryHistoryManager.deinit()
{
  sub_26B924438();
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 16);

  sub_26B8EACD8(v0 + 24, &qword_280426388, &qword_26B9B0EC0);
  v3 = *(v0 + 64);

  return v0;
}

uint64_t BaseQueryHistoryManager.__deallocating_deinit()
{
  sub_26B924438();
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 16);

  sub_26B8EACD8(v0 + 24, &qword_280426388, &qword_26B9B0EC0);
  v3 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_26B92459C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  sub_26B907F08(a1, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426398, &qword_26B9B0ED0);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_26B8EACD8(&v18, &qword_280426388, &qword_26B9B0EC0);
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    swift_beginAccess();
    sub_26B924860(&v24, v2 + 24);
    return swift_endAccess();
  }

  sub_26B8ECB70(&v18, &v24);
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (!*(v4 + 16))
  {
    goto LABEL_7;
  }

  v5 = v2;
  sub_26B907F08(v4 + 32, &v21);
  v6 = *(&v22 + 1);
  v7 = v23;
  __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  (*(*(v7 + 8) + 16))(&v18, v6);
  v14 = v18;
  v8 = *(&v25 + 1);
  v9 = v26;
  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  (*(*(v9 + 8) + 16))(v17, v8);
  v15 = v17[0];
  v16 = v17[1];
  LOBYTE(v8) = static QueryRepresentation.== infix(_:_:)(&v14, &v15);
  v10 = v16;

  v11 = *(&v14 + 1);

  if ((v8 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v21);
    v2 = v5;
LABEL_7:
    if (v3)
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      swift_beginAccess();
      sub_26B924860(&v21, v2 + 24);
      swift_endAccess();
      sub_26B924A60(&v24);
    }

    else
    {
      sub_26B907F08(&v24, &v21);
      swift_beginAccess();
      sub_26B924860(&v21, v2 + 24);
      swift_endAccess();
      v13 = sub_26B92428C();
      (*(*v13 + 144))(v13);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  swift_beginAccess();
  sub_26B924860(&v18, v5 + 24);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&v21);
  return __swift_destroy_boxed_opaque_existential_1(&v24);
}

uint64_t sub_26B924860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426388, &qword_26B9B0EC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9248D0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  v3 = sub_26B924928(v2);

  return v3;
}

uint64_t sub_26B924928(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_26B9250CC(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_26B907F08(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426398, &qword_26B9B0ED0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_26B9250CC((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_26B8ECB70(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26B924A60(uint64_t a1)
{
  swift_beginAccess();
  swift_beginAccess();
  sub_26B907F08(a1, v3);
  sub_26B92535C(0, 0, v3);
  return swift_endAccess();
}

uint64_t sub_26B924BB0()
{
  HistoryManager = type metadata accessor for BaseQueryHistoryManager();
  v1 = swift_allocObject();
  result = sub_26B924370();
  qword_28042AD30 = HistoryManager;
  unk_28042AD38 = &protocol witness table for BaseQueryHistoryManager;
  qword_28042AD18 = v1;
  return result;
}

uint64_t sub_26B924C00@<X0>(uint64_t a1@<X8>)
{
  if (qword_28042AD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B907F08(&qword_28042AD18, a1);
}

uint64_t sub_26B924C80(uint64_t *a1)
{
  if (qword_28042AD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_28042AD18, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_26B924D10())()
{
  if (qword_28042AD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B924DC8(uint64_t a1)
{
  sub_26B907F08(a1, v3);
  sub_26B907F08(v3, v2);
  static Dependencies.subscript.setter(v2, &type metadata for QueryHistoryManagerKey, &type metadata for QueryHistoryManagerKey, &off_281FF7080);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t Dependencies.queryHistory.setter(uint64_t *a1)
{
  sub_26B907F08(a1, v3);
  static Dependencies.subscript.setter(v3, &type metadata for QueryHistoryManagerKey, &type metadata for QueryHistoryManagerKey, &off_281FF7080);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*Dependencies.queryHistory.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x78uLL);
  }

  *a1 = v2;
  static Dependencies.subscript.getter(&type metadata for QueryHistoryManagerKey, &type metadata for QueryHistoryManagerKey, &off_281FF7080);
  return sub_26B924EF0;
}

void sub_26B924EF0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26B907F08(*a1, (v2 + 5));
    sub_26B907F08((v2 + 5), (v2 + 10));
    static Dependencies.subscript.setter((v2 + 10), &type metadata for QueryHistoryManagerKey, &type metadata for QueryHistoryManagerKey, &off_281FF7080);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_26B907F08(*a1, (v2 + 5));
    static Dependencies.subscript.setter((v2 + 5), &type metadata for QueryHistoryManagerKey, &type metadata for QueryHistoryManagerKey, &off_281FF7080);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

unint64_t sub_26B924F9C()
{
  result = qword_2804263A0;
  if (!qword_2804263A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804263A0);
  }

  return result;
}

void *sub_26B9250CC(void *a1, int64_t a2, char a3)
{
  result = sub_26B9250EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26B9250EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263A8, &qword_26B9B1018);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B925234()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    sub_26B9252EC(v1 + 24, &v2);
    if (v3)
    {
      sub_26B8ECB70(&v2, v4);
      sub_26B924A60(v4);

      return __swift_destroy_boxed_opaque_existential_1(v4);
    }

    else
    {

      return sub_26B8EACD8(&v2, &qword_280426388, &qword_26B9B0EC0);
    }
  }

  return result;
}

uint64_t sub_26B9252EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426388, &qword_26B9B0EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26B92535C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_26B92554C(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_26B925430(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_26B925430(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426398, &qword_26B9B0ED0);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_26B8EACD8(a4, &qword_2804263B0, &qword_26B9B1020);
  }

  result = sub_26B907F08(a4, v10);
  if (a3 == 1)
  {
    return sub_26B8EACD8(a4, &qword_2804263B0, &qword_26B9B1020);
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_26B92554C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263B8, &qword_26B9B1028);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426398, &qword_26B9B0ED0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t static Query.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a4 + 16);
  v6(v15, a3, a4);
  v13 = v15[0];
  v14 = v15[1];
  v6(v12, a3, v4);
  v10 = v12[0];
  v11 = v12[1];
  LOBYTE(v4) = static QueryRepresentation.== infix(_:_:)(&v13, &v10);
  v7 = v11;

  v8 = v14;

  return v4 & 1;
}

uint64_t TypedQuery.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = v6;
  *(v7 + 88) = a4;
  *(v7 + 96) = a5;
  *(v7 + 72) = a1;
  *(v7 + 80) = a3;
  swift_getAssociatedTypeWitness();
  *(v7 + 120) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 128) = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  *(v7 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v12 = swift_checkMetadataState();
  *(v7 + 152) = v12;
  v13 = *(v12 - 8);
  *(v7 + 160) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = *a2;
  *(v7 + 224) = *(a2 + 8);
  *(v7 + 225) = *(a2 + 9);
  *(v7 + 184) = *(a2 + 16);
  v15 = sub_26B92A538();
  swift_beginAccess();
  v16 = *v15;
  *(v7 + 200) = v16;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B925970, v16, 0);
}

uint64_t sub_26B925970()
{
  v1 = v0[9];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 40);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_26B925AA8;
  v6 = v0[21];
  v7 = v0[19];
  v8 = v0[15];

  return v10(v6);
}

uint64_t sub_26B925AA8()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B925BB8, v2, 0);
}

uint64_t sub_26B925BB8()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 225);
  v4 = *(v0 + 224);
  v5 = *(v0 + 176);
  v6 = *(v0 + 144);
  v7 = *(v0 + 112);
  v19 = *(v0 + 120);
  (*(*(v0 + 104) + 32))(*(v0 + 96));
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 25) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v8 = *(v19 + 32);
  v18 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 216) = v10;
  *v10 = v0;
  v10[1] = sub_26B925D38;
  v11 = *(v0 + 168);
  v13 = *(v0 + 144);
  v12 = *(v0 + 152);
  v14 = *(v0 + 120);
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);

  return v18(v13, v0 + 16, v15, v16, v12, v14);
}

uint64_t sub_26B925D38()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 128);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_26B925EA4, v2, 0);
}

uint64_t sub_26B925EA4()
{
  v1 = v0[25];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t TypedQuery.stop(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = swift_getAssociatedTypeWitness();
  v4 = sub_26B9ACA34();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = sub_26B92A538();
  swift_beginAccess();
  v8 = *v7;
  v3[13] = v8;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B926060, v8, 0);
}

uint64_t sub_26B926060()
{
  v1 = v0[12];
  v2 = v0[10];
  v22 = v0[11];
  v23 = v0[9];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v8);
  v21 = *(v7 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21(v4, v4, AssociatedConformanceWitness, v8, v7);
  (*(v2 + 16))(v22, v1, v23);
  v10 = *(v4 - 8);
  v0[14] = v10;
  if ((*(v10 + 48))(v22, 1, v4) == 1)
  {
    v11 = v0[13];
    v12 = *(v0[10] + 8);
    v12(v0[12], v0[9]);

    v13 = v0[12];
    v12(v0[11], v0[9]);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = *(AssociatedConformanceWitness + 40);
    v24 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_26B926300;
    v19 = v0[11];
    v20 = v0[8];

    return v24(v20, AssociatedConformanceWitness);
  }
}

uint64_t sub_26B926300()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 64);
  v7 = *v0;

  (*(v2 + 8))(v4, v5);

  return MEMORY[0x2822009F8](sub_26B92646C, v3, 0);
}

uint64_t sub_26B92646C()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[11];
  (*(v2 + 8))(v0[12], v0[9]);

  v4 = v0[1];

  return v4();
}

Swift::OpaquePointer_optional __swiftcall ViewOptionConfigurableQuery.searchBarButtonItems()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

__n128 BrowsingQuery.platterBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26B92CDA0();
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = v2[2];
  *(a1 + 32) = result;
  return result;
}

uint64_t StaticQuery.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a5;
  v7[10] = a6;
  v7[7] = a3;
  v7[8] = a4;
  v8 = *(a2 + 24);
  v7[11] = v6;
  v7[12] = v8;
  return MEMORY[0x2822009F8](sub_26B9265B8, 0, 0);
}

uint64_t sub_26B9265B8()
{
  v25 = v0;
  v1 = *(v0 + 88);
  v2 = *(*(v0 + 80) + 16);
  v3 = v2(*(v0 + 72));
  if (v3 >> 62)
  {
    v4 = sub_26B9ACB44();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *(v0 + 96);
  if (v4)
  {
    v6 = *(v0 + 88);
    v7 = (v2)(*(v0 + 72), *(v0 + 80));
    v8 = sub_26B906128();
    SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v7, v5, 1, 1, 0, v8 & 1, v20);
  }

  else
  {
    static SearchResults.empty(queryID:)(*(v0 + 96), v20);
  }

  v9 = v20[1];
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v13 = v24;
  v14 = *(v0 + 56);
  *(v0 + 16) = v20[0];
  *(v0 + 24) = v9;
  *(v0 + 32) = v10;
  *(v0 + 33) = v11;
  *(v0 + 40) = v12;
  *(v0 + 48) = v13;
  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 104) = v16;
  *v16 = v0;
  v16[1] = sub_26B926790;
  v17 = *(v0 + 64);

  return v19(v0 + 16);
}

uint64_t sub_26B926790()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v7 = *v0;

  v3 = *(v1 + 16);
  v4 = *(v1 + 40);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t dispatch thunk of Query.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_26B8EC52C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of Query.stop(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26B8EC52C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ViewOptionConfigurableQuery.updateLayout(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_26B8EB6C8;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t QueryContext.init(scale:authenticationStatus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = 2;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_26B926D9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26B926DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for SSQueryDeviceAuthenticationState()
{
  if (!qword_2804263C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2804263C0);
    }
  }
}

uint64_t QueryRepresentation.fields.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t QueryRepresentation.debugDescription.getter()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *v0 + 32;
    do
    {
      sub_26B926FB0(v2, v7);
      v3 = QueryToken.debugDescription.getter();
      v5 = v4;

      MEMORY[0x26D686470](v3, v5);

      sub_26B92700C(v7);
      v2 += 48;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t QueryRepresentation.rawQuery.getter()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *v0 + 32;
    do
    {
      sub_26B926FB0(v2, v9);
      sub_26B926FB0(v9, v7);
      if (v8)
      {
        sub_26B92700C(v9);
        v3 = v7;
      }

      else
      {
        v4 = v7[0];
        v5 = v7[1];

        MEMORY[0x26D686470](v4, v5);

        v3 = v9;
      }

      sub_26B92700C(v3);
      v2 += 48;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t QueryRepresentation.tokenProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = 0;
    v6 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      sub_26B926FB0(v6, v8);
      if (v9 == 1)
      {
        sub_26B9271FC(a1);
        return sub_26B8ECB70(v8, a1);
      }

      ++v5;
      result = sub_26B92700C(v8);
      v6 += 48;
      if (v3 == v5)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B9271FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263C8, &qword_26B9B11A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *QueryRepresentation.tokenProviders.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *v0 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    sub_26B926FB0(v2, v7);
    if (v8)
    {
      sub_26B8ECB70(v7, v9);
      sub_26B907F08(v9, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_26B927580(0, v3[2] + 1, 1, v3);
      }

      v5 = v3[2];
      v4 = v3[3];
      if (v5 >= v4 >> 1)
      {
        v3 = sub_26B927580((v4 > 1), v5 + 1, 1, v3);
      }

      __swift_destroy_boxed_opaque_existential_1(v9);
      v3[2] = v5 + 1;
      sub_26B8ECB70(v7, &v3[5 * v5 + 4]);
    }

    else
    {
      sub_26B92700C(v7);
    }

    v2 += 48;
    --v1;
  }

  while (v1);
  return v3;
}

void *QueryRepresentation.browseFilter.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_26B9273F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_26B926FB0(v3, v8);
        sub_26B926FB0(v4, v7);
        sub_26B9277AC();
        v5 = sub_26B9AC494();
        sub_26B92700C(v7);
        sub_26B92700C(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v4 += 48;
        v3 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t QueryRepresentation.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t static QueryRepresentation.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_28042AE40 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_28042AE50;
  *a1 = qword_28042AE48;
  a1[1] = v1;
  v2 = v1;
}

uint64_t sub_26B927578@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

void *sub_26B927580(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263E0, &qword_26B9B1278);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263E8, &unk_26B9B1280);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s17SpotlightUIShared19QueryRepresentationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_26B9273F8(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {
        sub_26B927760();
        v4 = v3;
        v5 = v2;
        v6 = sub_26B9AC9C4();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_26B927760()
{
  result = qword_2804263D0;
  if (!qword_2804263D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804263D0);
  }

  return result;
}

unint64_t sub_26B9277AC()
{
  result = qword_2804263D8;
  if (!qword_2804263D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804263D8);
  }

  return result;
}

uint64_t SearchResults.sections.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SearchResults.filters.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

void static SearchResults.empty(queryID:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62) || (v3 = a1, v18 = a2, v4 = sub_26B9ACB44(), a2 = v18, v5 = v4, a1 = v3, (v17 = v5) == 0))
  {
LABEL_2:
    *a2 = v2;
    *(a2 + 8) = a1;
    *(a2 + 16) = 256;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    return;
  }

  v6 = 0;
  while (1)
  {
    v7 = MEMORY[0x26D686B00](v6, MEMORY[0x277D84F90]);
    if (__OFADD__(v6++, 1))
    {
      break;
    }

    v9 = v7;
    v10 = [v7 results];
    if (v10)
    {
      v11 = v10;
      sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
      v12 = sub_26B9AC6F4();
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    if (v12 >> 62)
    {
      v13 = sub_26B9ACB44();
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    if (v13 < 1)
    {
      goto LABEL_21;
    }

    for (i = 0; i != v13; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x26D686B00](i, v12);
      }

      else
      {
        v15 = *(v12 + 8 * i + 32);
      }

      v16 = v15;
      [v15 setQueryId_];
    }

LABEL_5:

    a2 = v18;
    a1 = v3;
    if (v6 == v17)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, unint64_t a7@<X8>)
{
  if (result >> 62)
  {
    goto LABEL_27;
  }

  v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v9)
  {
    v23 = a4;
    v24 = a3;
    v25 = a6;
    v26 = a7;
    v27 = a5;
    v30 = result;
    v31 = result & 0xC000000000000001;
    v28 = result + 32;
    v29 = result & 0xFFFFFFFFFFFFFF8;

    v10 = 0;
    while (1)
    {
      if (v31)
      {
        result = MEMORY[0x26D686B00](v10, v30);
      }

      else
      {
        if (v10 >= *(v29 + 16))
        {
          goto LABEL_26;
        }

        result = *(v28 + 8 * v10);
      }

      v11 = result;
      if (__OFADD__(v10++, 1))
      {
        break;
      }

      result = [result results];
      if (result)
      {
        a7 = result;
        sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
        v13 = sub_26B9AC6F4();

        if (!(v13 >> 62))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
LABEL_12:
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v14)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }

      result = sub_26B9ACB44();
      v14 = result;
      if (!result)
      {
        goto LABEL_4;
      }

LABEL_13:
      if (v14 < 1)
      {
        goto LABEL_25;
      }

      a7 = 0;
      do
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26D686B00](a7, v13);
        }

        else
        {
          v15 = *(v13 + 8 * a7 + 32);
        }

        v16 = v15;
        ++a7;
        [v15 setQueryId_];
      }

      while (v14 != a7);
LABEL_4:

      if (v10 == v9)
      {

        result = v30;
        a7 = v26;
        a5 = v27;
        a3 = v24;
        a6 = v25;
        a4 = v23;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v17 = result;
    v18 = a5;
    v19 = a6;
    v20 = a3;
    v21 = a4;
    v22 = sub_26B9ACB44();
    a4 = v21;
    a3 = v20;
    a6 = v19;
    a5 = v18;
    v9 = v22;
    result = v17;
  }

LABEL_23:
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 17) = a4 & 1;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6 & 1;
  return result;
}

uint64_t sub_26B927D74(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_26B9294B8(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x26D686B00](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x26D686B00](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_26B9AC9C4();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_26B9AC9C4();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_26B9ACB44();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_26B9ACB44();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t QueryResponse.results.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 57);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

void QueryResponse.aboveFilterBarResponse()(uint64_t a1@<X8>)
{
  if (*(v1 + 72) != 1)
  {
    goto LABEL_41;
  }

  v8 = *(v1 + 40);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v30 = *(v1 + 40);
    }

    if (!sub_26B9ACB44())
    {
      goto LABEL_41;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:
    sub_26B907F08(v1, a1);
    static SearchResults.empty(queryID:)(*(v1 + 48), v40);
    v31 = v40[1];
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v35 = v44;
    *(a1 + 40) = v40[0];
    *(a1 + 48) = v31;
    *(a1 + 56) = v32;
    *(a1 + 57) = v33;
    *(a1 + 64) = v34;
    *(a1 + 72) = v35;
    return;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D686B00](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_39;
    }

    v9 = *(v8 + 32);
  }

  v2 = v9;
  v6 = &selRef_setObject_forKey_;
  v10 = [v9 results];
  if (!v10)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v11 = v10;
  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v3 = sub_26B9AC6F4();

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!sub_26B9ACB44())
  {
LABEL_40:

    goto LABEL_41;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x26D686B00](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_44;
    }

    v12 = *(v3 + 32);
  }

  v5 = v12;

  v4 = v2;
  v13 = [v4 v6[131]];
  if (v13)
  {
    v14 = v13;
    v15 = sub_26B9AC6F4();

    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_44:
    v16 = sub_26B9ACB44();
LABEL_16:

    v17 = v4;
    if (v16 >= 2)
    {
      v17 = [objc_allocWithZone(MEMORY[0x277D65848]) initWithSection_];
      [v17 clearResults];
      [v17 addResults_];
    }

    v39 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26B9B1290;
    *(v18 + 32) = v17;
    v19 = *(v1 + 48);
    v20 = *(v1 + 56);
    v38 = *(v1 + 57);
    v21 = v17;

    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x26D686B00](0, v18);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v22 = v21;
    }

    v36 = v22;
    v23 = [v22 v6[131]];
    if (v23)
    {
      v24 = v23;
      v25 = sub_26B9AC6F4();
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v37 = v21;
    if (v25 >> 62)
    {
      v26 = sub_26B9ACB44();
      if (v26)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
LABEL_27:
        if (v26 >= 1)
        {
          for (i = 0; i != v26; ++i)
          {
            if ((v25 & 0xC000000000000001) != 0)
            {
              v28 = MEMORY[0x26D686B00](i, v25);
            }

            else
            {
              v28 = *(v25 + 8 * i + 32);
            }

            v29 = v28;
            [v28 setQueryId_];
          }

          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_48;
      }
    }

LABEL_46:

    sub_26B907F08(v1, a1);
    *(a1 + 40) = v18;
    *(a1 + 48) = v19;
    *(a1 + 56) = v20;
    *(a1 + 57) = v38;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    return;
  }

LABEL_50:
  __break(1u);
}

uint64_t sub_26B928460@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = a2[3];
  v9 = *(a2 + 32);
  result = sub_26B925694(a1, a3);
  *(a3 + 40) = v4;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  *(a3 + 57) = v7;
  *(a3 + 64) = v8;
  *(a3 + 72) = v9;
  return result;
}

id QueryResponse.belowFilterBarResponse()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 72) != 1)
  {
    goto LABEL_73;
  }

  v6 = *(v46 + 40);
  v7 = (v6 >> 62);
  if (v6 >> 62)
  {
    goto LABEL_67;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_73:

    return sub_26B92929C(v46, a1);
  }

LABEL_4:
  v8 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D686B00](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_71;
    }

    v9 = *(v6 + 32);
  }

  v4 = v9;
  result = [v9 results];
  if (!result)
  {
    __break(1u);
LABEL_88:
    __break(1u);
    return result;
  }

  v11 = result;
  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v2 = sub_26B9AC6F4();

  if (!(v2 >> 62))
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_72;
    }

    goto LABEL_10;
  }

LABEL_71:
  if (!sub_26B9ACB44())
  {
LABEL_72:

    goto LABEL_73;
  }

LABEL_10:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x26D686B00](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }

    v12 = *(v2 + 32);
  }

  v3 = v12;

  if (v7)
  {
    if (sub_26B9ACB44() < 2)
    {
LABEL_26:
      v1 = MEMORY[0x277D84F90];
      goto LABEL_37;
    }

    v14 = sub_26B9ACB44();
    if (v14 >= 1)
    {
      v13 = v14;
      if (sub_26B9ACB44() < 1)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (sub_26B9ACB44() >= v13)
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_84;
  }

  v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 <= 1)
  {
    goto LABEL_26;
  }

LABEL_20:
  if (!v8 || v13 == 1)
  {

    if (!v7)
    {
LABEL_25:
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      v17 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v2 = 1;
      v6 = (2 * v13) | 1;
      goto LABEL_30;
    }
  }

  else
  {
    sub_26B9294B8(0, &qword_280426400, 0x277D4C588);

    v15 = 1;
    do
    {
      v16 = v15 + 1;
      sub_26B9ACC14();
      v15 = v16;
    }

    while (v13 != v16);
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  v8 = sub_26B9ACD54();
  v2 = v18;
  v6 = v19;
  if ((v19 & 1) == 0)
  {
LABEL_29:
    sub_26B9290B4(v8, v17, v2, v6);
    v1 = v20;
    goto LABEL_36;
  }

LABEL_30:
  v1 = v17;
  sub_26B9ACED4();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x277D84F90];
  }

  v7 = *(v21 + 16);

  if (__OFSUB__(v6 >> 1, v2))
  {
    goto LABEL_85;
  }

  if (v7 != ((v6 >> 1) - v2))
  {
LABEL_86:
    swift_unknownObjectRelease();
    v17 = v1;
    goto LABEL_29;
  }

  v1 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v1)
  {
    goto LABEL_37;
  }

  v1 = MEMORY[0x277D84F90];
LABEL_36:
  swift_unknownObjectRelease();
LABEL_37:
  result = [v4 results];
  if (!result)
  {
    goto LABEL_88;
  }

  v22 = result;
  v2 = sub_26B9AC6F4();

  if (!(v2 >> 62))
  {
    v23 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_40;
  }

LABEL_78:
  v2 = v1;
  v23 = sub_26B9ACB44();
LABEL_40:

  if (v23 >= 2)
  {
    v24 = [objc_allocWithZone(MEMORY[0x277D65848]) initWithSection_];
    [v24 removeResults_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_26B9B1290;
    *(v25 + 32) = v24;
    v48 = v25;
    sub_26B928D0C(v1);
    v1 = v48;
  }

  v42 = v3;
  v26 = *(v46 + 48);
  v40 = *(v46 + 57);
  v41 = *(v46 + 56);
  v27 = *(v46 + 64);
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_80;
    }

    goto LABEL_44;
  }

  v36 = *(v46 + 64);
  v3 = sub_26B9ACB44();
  v27 = v36;
  if (v3)
  {
LABEL_44:
    v38 = v4;
    v39 = a1;
    v47 = v1 & 0xC000000000000001;
    v43 = v1 + 32;
    v44 = v1 & 0xFFFFFFFFFFFFFF8;
    v37 = v27;

    v45 = v1;

    v4 = 0;
    v1 = &off_279D10000;
    while (1)
    {
      if (v47)
      {
        v28 = MEMORY[0x26D686B00](v4, v45);
      }

      else
      {
        if (v4 >= *(v44 + 16))
        {
          goto LABEL_66;
        }

        v28 = *(v43 + 8 * v4);
      }

      v29 = v28;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        if (!sub_26B9ACB44())
        {
          goto LABEL_73;
        }

        goto LABEL_4;
      }

      v31 = [v28 results];
      if (v31)
      {
        v32 = v31;
        v2 = sub_26B9AC6F4();

        if (!(v2 >> 62))
        {
          goto LABEL_53;
        }
      }

      else
      {
        v2 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
LABEL_53:
          a1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a1)
          {
            goto LABEL_45;
          }

          goto LABEL_54;
        }
      }

      a1 = sub_26B9ACB44();
      if (!a1)
      {
        goto LABEL_45;
      }

LABEL_54:
      if (a1 < 1)
      {
        goto LABEL_65;
      }

      v33 = 0;
      v6 = v2 & 0xC000000000000001;
      do
      {
        if (v6)
        {
          v34 = MEMORY[0x26D686B00](v33, v2);
        }

        else
        {
          v34 = *(v2 + 8 * v33 + 32);
        }

        v7 = v34;
        ++v33;
        [v34 setQueryId_];
      }

      while (a1 != v33);
LABEL_45:

      if (v4 == v3)
      {

        v1 = v45;

        a1 = v39;
        v35 = v37;
        goto LABEL_81;
      }
    }
  }

LABEL_80:
  v35 = v27;

LABEL_81:
  result = sub_26B907F08(v46, a1);
  *(a1 + 40) = v1;
  *(a1 + 48) = v26;
  *(a1 + 56) = v41;
  *(a1 + 57) = v40;
  *(a1 + 64) = v35;
  *(a1 + 72) = 0;
  return result;
}

void static QueryResponse.empty.getter(uint64_t a1@<X8>)
{
  v16 = &type metadata for EmptyQuery;
  v17 = sub_26B903C04();
  EmptyQuery.init()();
  v2 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62) || (v14 = sub_26B9ACB44()) == 0)
  {
LABEL_2:
    sub_26B925694(&v15, a1);
    *(a1 + 40) = v2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 257;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    return;
  }

  v3 = 0;
  while (1)
  {
    v4 = MEMORY[0x26D686B00](v3, MEMORY[0x277D84F90]);
    if (__OFADD__(v3++, 1))
    {
      break;
    }

    v6 = v4;
    v7 = [v4 results];
    if (v7)
    {
      v8 = v7;
      sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
      v9 = sub_26B9AC6F4();
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    if (v9 >> 62)
    {
      v10 = sub_26B9ACB44();
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    if (v10 < 1)
    {
      goto LABEL_21;
    }

    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D686B00](i, v9);
      }

      else
      {
        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      [v12 setQueryId_];
    }

LABEL_5:

    if (v3 == v14)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_26B928D0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26B9ACB44();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_26B9ACB44();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_26B928DFC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26B928F24(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26B928DFC(uint64_t a1)
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
    sub_26B9ACB44();
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
  result = sub_26B9ACC44();
  *v1 = result;
  return result;
}

void (*sub_26B928E9C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D686B00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26B928F1C;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B928F24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26B9ACB44();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26B9ACB44();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26B929454();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426408, &unk_26B9B1370);
            v9 = sub_26B928E9C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_26B9290B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t _s17SpotlightUIShared13SearchResultsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = sub_26B927D74(*a1, *a2, &qword_280426400, 0x277D4C588);
  result = 0;
  if ((v12 & 1) != 0 && v2 == v7 && ((v3 ^ v8) & 1) == 0 && ((v4 ^ v9) & 1) == 0)
  {
    if (v5)
    {
      if (v10)
      {

        v14 = sub_26B927D74(v5, v10, &qword_2804263D0, 0x277D65918);

        if (v14)
        {
          return v6 ^ v11 ^ 1u;
        }
      }
    }

    else if (!v10)
    {
      return v6 ^ v11 ^ 1u;
    }

    return 0;
  }

  return result;
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

uint64_t sub_26B9292E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_26B929330(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26B9293A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B9293F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26B929454()
{
  result = qword_280426410;
  if (!qword_280426410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426408, &unk_26B9B1370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426410);
  }

  return result;
}

uint64_t sub_26B9294B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t QueryToken.debugDescription.getter()
{
  sub_26B926FB0(v0, v10);
  if (v11)
  {
    sub_26B8ECB70(v10, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(v2 + 24))(v1, v2);
    MEMORY[0x26D686470](v3);

    v5 = 0x2979636167656C28;
    v4 = 0xE800000000000000;
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    v7[0] = 0x2977617228;
    v7[1] = 0xE500000000000000;
    MEMORY[0x26D686470](*&v10[0], *(&v10[0] + 1));

    v5 = 0x2977617228;
    v4 = 0xE500000000000000;
  }

  *&v10[0] = 91;
  *(&v10[0] + 1) = 0xE100000000000000;
  MEMORY[0x26D686470](v5, v4);

  MEMORY[0x26D686470](93, 0xE100000000000000);
  return *&v10[0];
}

uint64_t _s17SpotlightUIShared10QueryTokenO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_26B926FB0(a1, v10);
  sub_26B926FB0(a2, v11);
  if ((v10[40] & 1) == 0)
  {
    sub_26B926FB0(v10, v9);
    if ((v12 & 1) == 0)
    {
      if (*&v9[0] == *&v11[0] && *(&v9[0] + 1) == *(&v11[0] + 1))
      {
        v3 = 1;
      }

      else
      {
        v3 = sub_26B9ACEB4();
      }

      goto LABEL_15;
    }

    goto LABEL_9;
  }

  sub_26B926FB0(v10, v9);
  if (v12 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
LABEL_9:
    sub_26B929910(v10);
LABEL_18:
    v3 = 0;
    return v3 & 1;
  }

  sub_26B8ECB70(v9, v8);
  sub_26B8ECB70(v11, v7);
  sub_26B907F08(v8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263E8, &unk_26B9B1280);
  sub_26B9294B8(0, &qword_280426420, 0x277D4C2A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    __swift_destroy_boxed_opaque_existential_1(v7);
    __swift_destroy_boxed_opaque_existential_1(v8);
    sub_26B92700C(v10);
    goto LABEL_18;
  }

  sub_26B907F08(v7, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_26B9294B8(0, &qword_280426F60, 0x277D82BB8);
  v3 = sub_26B9AC9C4();

  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
LABEL_15:
  sub_26B92700C(v10);
  return v3 & 1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B929850(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B92988C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B9298D8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_26B929910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426418, &qword_26B9B1468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SFPerformEntityQueryCommand.tokenQueryString.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 fromSuggestion];
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() searchEntityWithCommand:v0 fromSuggestion:v2];
  if (!v3 || (v4 = v3, v5 = [v3 searchString], v4, !v5))
  {
    v6 = [v0 searchString];
    if (!v6)
    {
      return 0;
    }

    v5 = v6;
  }

  v7 = sub_26B9AC504();

  return v7;
}

uint64_t SFPerformEntityQueryCommand.uiTokenString.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 fromSuggestion];
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() searchEntityWithCommand:v0 fromSuggestion:v2];
  if (!v3 || (v4 = v3, v5 = [v3 tokenText], v4, !v5))
  {
    v6 = [v0 tokenString];
    if (!v6)
    {
      return 0;
    }

    v5 = v6;
  }

  v7 = sub_26B9AC504();

  return v7;
}

id SFPerformEntityQueryCommand.uiTokenImage.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 fromSuggestion];
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() searchEntityWithCommand:v0 fromSuggestion:v2];
  v4 = [v3 tokenImage];
  if (!v4)
  {
    v4 = [v0 tokenImage];
  }

  return v4;
}

id SFPerformEntityQueryCommand.sfBackgroundColor.getter()
{
  v1 = [v0 entityBackgroundColor];

  return v1;
}

id sub_26B929C54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entityBackgroundColor];
  *a2 = result;
  return result;
}

void SFPerformEntityQueryCommand.sfBackgroundColor.setter(void *a1)
{
  [v1 setEntityBackgroundColor_];
}

void (*SFPerformEntityQueryCommand.sfBackgroundColor.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 entityBackgroundColor];
  return sub_26B929D48;
}

void sub_26B929D48(id *a1)
{
  v1 = *a1;
  [a1[1] setEntityBackgroundColor_];
}

id SFPerformEntityQueryCommand.useClearToken.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 fromSuggestion];
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() searchEntityWithCommand:v0 fromSuggestion:v2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 isServerEntitySearch];

  return v5;
}

id sub_26B929E88()
{
  v1 = *v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 fromSuggestion];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() searchEntityWithCommand:v1 fromSuggestion:v3];
  v5 = [v4 tokenImage];
  if (!v5)
  {
    v5 = [v1 tokenImage];
  }

  return v5;
}

id sub_26B929F4C()
{
  v1 = [*v0 entityBackgroundColor];

  return v1;
}

void sub_26B929F84(void *a1)
{
  [*v1 setEntityBackgroundColor_];
}

void (*sub_26B929FCC(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 entityBackgroundColor];
  return sub_26B929D48;
}

id sub_26B92A028()
{
  v1 = *v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 fromSuggestion];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() searchEntityWithCommand:v1 fromSuggestion:v3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 isServerEntitySearch];

  return v6;
}

id SFShowSFCardCommand.uiTokenString.getter()
{
  result = [v0 card];
  if (result)
  {
    v2 = result;
    v3 = [result title];

    if (v3)
    {
      v4 = sub_26B9AC504();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_26B92A184(SEL *a1)
{
  v3 = [v1 card];
  v4 = [v3 *a1];

  return v4;
}

void sub_26B92A1DC(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 card];
  v4 = [v3 backgroundColor];

  *a2 = v4;
}

void (*SFShowSFCardCommand.sfBackgroundColor.modify(void *a1))(id *)
{
  v3 = [v1 card];
  v4 = [v3 backgroundColor];

  *a1 = v4;
  return sub_26B92A4F8;
}

id sub_26B92A2D8()
{
  result = [*v0 card];
  if (result)
  {
    v2 = result;
    v3 = [result title];

    if (v3)
    {
      v4 = sub_26B9AC504();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_26B92A37C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 card];
  v6 = [v5 *a3];

  return v6;
}

void (*sub_26B92A3D8(void *a1))(id *a1)
{
  v3 = [*v1 card];
  v4 = [v3 backgroundColor];

  *a1 = v4;
  return sub_26B928F1C;
}

uint64_t sub_26B92A4FC()
{
  type metadata accessor for QueryActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_28042B168 = v0;
  return result;
}

uint64_t *sub_26B92A538()
{
  if (qword_28042B160 != -1)
  {
    swift_once();
  }

  return &qword_28042B168;
}

uint64_t static QueryActor.shared.getter()
{
  if (qword_28042B160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B9AAAE4();
}

uint64_t static QueryActor.shared.setter(uint64_t a1)
{
  if (qword_28042B160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_28042B168 = a1;
}

uint64_t (*static QueryActor.shared.modify())()
{
  if (qword_28042B160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B92A708@<X0>(void *a1@<X8>)
{
  if (qword_28042B160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_28042B168;
  return sub_26B9AAAE4();
}

uint64_t sub_26B92A788(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_28042B160;
  sub_26B9AAAE4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_28042B168 = v1;
}

uint64_t QueryActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_26B92A870()
{
  result = qword_280426FB0;
  if (!qword_280426FB0)
  {
    type metadata accessor for QueryActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426FB0);
  }

  return result;
}

uint64_t sub_26B92A8E8()
{
  if (qword_28042B160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B9AAAE4();
}

uint64_t sub_26B92A960(uint64_t a1, uint64_t a2)
{
  Actor = type metadata accessor for QueryActor();

  return MEMORY[0x2822005F8](Actor, a2);
}

uint64_t sub_26B92A9E4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_26B92AA24()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_26B92AA4C()
{
  result = swift_beginAccess();
  v2 = v0[2];
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v0[2] = v4;
    return (*(*v0 + 88))(result);
  }

  return result;
}

uint64_t sub_26B92AB4C()
{
  IDIssuer = type metadata accessor for SearchQueryIDIssuer();
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_28042B290 = IDIssuer;
  unk_28042B298 = &off_287C5E178;
  qword_28042B278 = result;
  return result;
}

uint64_t sub_26B92AB98@<X0>(uint64_t a1@<X8>)
{
  if (qword_28042B270 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26B907F08(&qword_28042B278, a1);
}

uint64_t sub_26B92AC18(uint64_t *a1)
{
  if (qword_28042B270 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_28042B278, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_26B92ACA8())()
{
  if (qword_28042B270 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B92AD60(uint64_t a1)
{
  sub_26B907F08(a1, v3);
  sub_26B907F08(v3, v2);
  static Dependencies.subscript.setter(v2, &type metadata for QueryIDIssuerKey, &type metadata for QueryIDIssuerKey, &off_281FF7208);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t Dependencies.idIssuer.setter(uint64_t *a1)
{
  sub_26B907F08(a1, v3);
  static Dependencies.subscript.setter(v3, &type metadata for QueryIDIssuerKey, &type metadata for QueryIDIssuerKey, &off_281FF7208);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*Dependencies.idIssuer.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x78uLL);
  }

  *a1 = v2;
  static Dependencies.subscript.getter(&type metadata for QueryIDIssuerKey, &type metadata for QueryIDIssuerKey, &off_281FF7208);
  return sub_26B92AE88;
}

void sub_26B92AE88(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_26B907F08(*a1, (v2 + 5));
    sub_26B907F08((v2 + 5), (v2 + 10));
    static Dependencies.subscript.setter((v2 + 10), &type metadata for QueryIDIssuerKey, &type metadata for QueryIDIssuerKey, &off_281FF7208);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_26B907F08(*a1, (v2 + 5));
    static Dependencies.subscript.setter((v2 + 5), &type metadata for QueryIDIssuerKey, &type metadata for QueryIDIssuerKey, &off_281FF7208);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

void *static QueryRepresentationParser.parse(representation:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for TopLevelFiltersQuery;
  *(a1 + 32) = sub_26B92C01C();

  return TopLevelFiltersQuery.init()().sections._rawValue;
}

uint64_t static QueryRepresentationParser.checkForFilterSearch(with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = sub_26B9AAE74();
  v74 = *(v75 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v65[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v76 = &v65[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426430, &qword_26B9B15E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v65[-v15];
  v79 = a1;
  v80 = a2;
  v77 = 47;
  v78 = 0xE100000000000000;
  v17 = sub_26B9AB224();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_26B92C070();
  sub_26B9ACAA4();
  v19 = v18;
  v21 = v20;
  result = sub_26B8EACD8(v16, &qword_280426430, &qword_26B9B15E8);
  if (v21)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v71 = a3;
  v23 = sub_26B9AC624();
  v24 = MEMORY[0x26D686430](v23);
  v26 = v25;

  v27 = sub_26B92B630(v19, a1, a2);
  v28 = MEMORY[0x26D686430](v27);
  v30 = v29;

  v70 = v24;
  v69 = v26;
  sub_26B92B67C(v24, v26);
  if (v31)
  {
    v32 = sub_26B9AC474();
  }

  else
  {
    v32 = 1;
  }

  v68 = v28;
  sub_26B92B6FC(v28, v30);
  v67 = v30;
  if (v33)
  {
    v34 = sub_26B9AC474();

    v32 &= v34 ^ 1;
  }

  v66 = v32;
  v35 = v76;
  sub_26B9AB0E4();
  v36 = sub_26B9AB104();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v39 = 1;
  if (v38(v35, 1, v36) != 1)
  {
    v40 = v72;
    sub_26B9236E8(v76, v72, &qword_280426308, &qword_26B9B0CD0);
    if (v38(v40, 1, v36) == 1)
    {
      sub_26B8EACD8(v40, &qword_280426308, &qword_26B9B0CD0);
    }

    else
    {
      sub_26B9AB0D4();
      v42 = v41;
      (*(v37 + 8))(v40, v36);
      if (v42)
      {

        v39 = 0;
      }
    }
  }

  v79 = a1;
  v80 = a2;
  v43 = v73;
  sub_26B9AAE44();
  sub_26B9ACA64();
  (*(v74 + 8))(v43, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426438, &qword_26B9B15F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B9AFBD0;
  v45 = *MEMORY[0x277CF70C0];
  *(inited + 32) = *MEMORY[0x277CF70C0];
  v46 = MEMORY[0x277D839B0];
  v47 = MEMORY[0x277CF70B8];
  *(inited + 40) = 1;
  v48 = *v47;
  *(inited + 64) = v46;
  *(inited + 72) = v48;
  v49 = MEMORY[0x277CF70D8];
  *(inited + 80) = 1;
  v50 = *v49;
  *(inited + 104) = v46;
  *(inited + 112) = v50;
  *(inited + 144) = v46;
  *(inited + 120) = 1;
  v51 = v45;
  v52 = v48;
  v53 = v50;
  sub_26B92C0C4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426440, &qword_26B9B15F8);
  swift_arrayDestroy();
  v54 = sub_26B9AC3A4();

  if (v54)
  {

    v55 = 0;
    v56 = v71;
    v57 = v68;
    v58 = v67;
    v59 = v66;
  }

  else
  {
    v56 = v71;
    v57 = v68;
    v58 = v67;
    v59 = v66;
    if (v39)
    {
      v60 = v66 & 1 | 0x100;
      if (v66)
      {
        v61 = 0x1000000;
      }

      else
      {
        v61 = 0;
      }

      v55 = 0x10000;
      goto LABEL_25;
    }

    v55 = 0x10000;
  }

  v61 = 0;
  if (v39)
  {
    v62 = 256;
  }

  else
  {
    v62 = 0;
  }

  v60 = v62 & 0xFFFFFFFE | v59 & 1;
LABEL_25:
  v63 = v55 | v61 | v60;
  v64 = v69;
  *v56 = v70;
  *(v56 + 8) = v64;
  *(v56 + 16) = v57;
  *(v56 + 24) = v58;
  *(v56 + 32) = v63;
  return sub_26B8EACD8(v76, &qword_280426308, &qword_26B9B0CD0);
}

unint64_t sub_26B92B630(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_26B9AC624();
  }

  __break(1u);
  return result;
}

uint64_t sub_26B92B67C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_26B9AC594();
  return sub_26B9AC604();
}

uint64_t sub_26B92B6FC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_26B9AC604();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B92B74C(uint64_t a1, id *a2)
{
  result = sub_26B9AC4E4();
  *a2 = 0;
  return result;
}

uint64_t sub_26B92B7C4(uint64_t a1, id *a2)
{
  v3 = sub_26B9AC4F4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26B92B844@<X0>(uint64_t *a1@<X8>)
{
  sub_26B9AC504();
  v2 = sub_26B9AC4C4();

  *a1 = v2;
  return result;
}

uint64_t sub_26B92B888()
{
  v1 = *v0;
  v2 = sub_26B9AC504();
  v3 = MEMORY[0x26D6864C0](v2);

  return v3;
}

uint64_t sub_26B92B8C4()
{
  v1 = *v0;
  sub_26B9AC504();
  sub_26B9AC574();
}

uint64_t sub_26B92B918()
{
  v1 = *v0;
  sub_26B9AC504();
  sub_26B9ACFB4();
  sub_26B9AC574();
  v2 = sub_26B9ACFF4();

  return v2;
}

uint64_t sub_26B92B98C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26B9AC504();
  v6 = v5;
  if (v4 == sub_26B9AC504() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26B9ACEB4();
  }

  return v9 & 1;
}

uint64_t sub_26B92BA14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26B9AC4C4();

  *a2 = v5;
  return result;
}

uint64_t sub_26B92BA5C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26B9AC504();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_26B92BA88(uint64_t a1)
{
  v2 = sub_26B92C438(&qword_280426468);
  v3 = sub_26B92C438(&qword_280426470);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

char *sub_26B92BB20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B92BC3C(char *a1, int64_t a2, char a3)
{
  result = sub_26B92BC5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B92BC5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_26B92BD78(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26B9AC504();
  sub_26B9ACFB4();
  sub_26B9AC574();
  v4 = sub_26B9ACFF4();

  return sub_26B92BE0C(a1, v4);
}

unint64_t sub_26B92BE0C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26B9AC504();
      v9 = v8;
      if (v7 == sub_26B9AC504() && v9 == v10)
      {
        break;
      }

      v12 = sub_26B9ACEB4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

uint64_t _s17SpotlightUIShared22SearchFilterQueryCheckV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 34);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 34);
  v14 = *(a2 + 35);
  v15 = *(a1 + 35);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_26B9ACEB4() & 1) != 0)
  {
    v12 = v6 ^ v11;
    if (v2 == v7 && v3 == v8)
    {
      if (((v4 ^ v9 | v5 ^ v10 | v12) & 1) == 0)
      {
        return v15 ^ v14 ^ 1u;
      }
    }

    else if (!((v4 ^ v9) & 1 | ((sub_26B9ACEB4() & 1) == 0) | ((v5 ^ v10) | v12) & 1))
    {
      return v15 ^ v14 ^ 1u;
    }
  }

  return 0;
}

unint64_t sub_26B92C01C()
{
  result = qword_280426428;
  if (!qword_280426428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426428);
  }

  return result;
}

unint64_t sub_26B92C070()
{
  result = qword_280427090;
  if (!qword_280427090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280427090);
  }

  return result;
}

unint64_t sub_26B92C0C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426478, &qword_26B9B1898);
    v3 = sub_26B9ACD84();
    v4 = a1 + 32;
    sub_26B9AAAE4();
    while (1)
    {
      sub_26B9236E8(v4, &v11, &qword_280426440, &qword_26B9B15F8);
      v5 = v11;
      result = sub_26B92BD78(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26B92C47C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B92C200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_26B92C248(uint64_t result, int a2, int a3)
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
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B92C2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B92C2F4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void type metadata accessor for CalculateKey()
{
  if (!qword_280426448)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280426448);
    }
  }
}

uint64_t sub_26B92C438(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalculateKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_26B92C47C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

const char *QuerySignpostInterval.staticString()()
{
  v1 = *v0;
  v2 = "v2_QueryStart";
  v3 = "v2_QueryTopHitAvailable";
  v4 = "v2_QueryCompletion";
  if (v1 != 3)
  {
    v4 = "v2_WindowExpansion";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "v2_QueryFirstResponse";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t QuerySignpostInterval.hashValue.getter()
{
  v1 = *v0;
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](v1);
  return sub_26B9ACFF4();
}

unint64_t sub_26B92C59C()
{
  result = qword_280426488;
  if (!qword_280426488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426488);
  }

  return result;
}

const char *sub_26B92C5F0()
{
  v1 = *v0;
  v2 = "v2_QueryStart";
  v3 = "v2_QueryTopHitAvailable";
  v4 = "v2_QueryCompletion";
  if (v1 != 3)
  {
    v4 = "v2_WindowExpansion";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "v2_QueryFirstResponse";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26B92C668(uint64_t a1)
{
  *(a1 + 8) = sub_26B92C698();
  result = sub_26B92C6EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26B92C698()
{
  result = qword_280426490;
  if (!qword_280426490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426490);
  }

  return result;
}

unint64_t sub_26B92C6EC()
{
  result = qword_280426498;
  if (!qword_280426498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426498);
  }

  return result;
}

unint64_t sub_26B92C744()
{
  result = qword_2804264A0;
  if (!qword_2804264A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804264A8, &qword_26B9B1938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804264A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuerySignpostInterval(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QuerySignpostInterval(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ResultPlatterBehavior.preferredHeight.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t static ResultPlatterBehavior.fixed(height:animated:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = a3;
  *(a2 + 32) = 256;
  *(a2 + 34) = 0;
  *(a2 + 35) = result;
  *(a2 + 40) = 0x4084000000000000;
  return result;
}

uint64_t static ResultPlatterBehavior.userAdjustable(range:preferredHeight:canPersist:includeFilterBarHeight:animated:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = a6;
  *(a5 + 8) = result;
  *(a5 + 16) = a2 & 1;
  *(a5 + 24) = a7;
  *(a5 + 32) = a3;
  *(a5 + 33) = 1;
  *(a5 + 35) = a4;
  *(a5 + 40) = 0x4084000000000000;
  return result;
}

double sub_26B92CA4C()
{
  xmmword_28042B8A8 = 0uLL;
  byte_28042B8B8 = 1;
  qword_28042B8C0 = 0;
  result = 7.29290211e-304;
  LODWORD(xmmword_28042B8C8) = 16777472;
  *(&xmmword_28042B8C8 + 1) = 0x4084000000000000;
  return result;
}

__int128 *sub_26B92CA84()
{
  if (qword_28042B8A0 != -1)
  {
    swift_once();
  }

  return &xmmword_28042B8A8;
}

double static ResultPlatterBehavior.collapsed.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_28042B8A0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&byte_28042B8B8;
  *a1 = xmmword_28042B8A8;
  a1[1] = v1;
  result = *&xmmword_28042B8C8;
  a1[2] = xmmword_28042B8C8;
  return result;
}

double sub_26B92CB44()
{
  *&xmmword_28042B8E0 = 0;
  *(&xmmword_28042B8E0 + 1) = 0x4079A00000000000;
  byte_28042B8F0 = 0;
  qword_28042B8F8 = 0x40B3880000000000;
  *&result = 16777473;
  LODWORD(xmmword_28042B900) = 16777473;
  *(&xmmword_28042B900 + 1) = 0x4084000000000000;
  return result;
}

__int128 *sub_26B92CB8C()
{
  if (qword_28042B8D8 != -1)
  {
    swift_once();
  }

  return &xmmword_28042B8E0;
}

double static ResultPlatterBehavior.standard.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_28042B8D8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&byte_28042B8F0;
  *a1 = xmmword_28042B8E0;
  a1[1] = v1;
  result = *&xmmword_28042B900;
  a1[2] = xmmword_28042B900;
  return result;
}

double sub_26B92CC4C()
{
  xmmword_28042B918 = 0x4079A00000000000uLL;
  byte_28042B928 = 1;
  qword_28042B930 = 0x40B3880000000000;
  *&result = 16777473;
  LODWORD(xmmword_28042B938) = 16777473;
  *(&xmmword_28042B938 + 1) = 0x4084000000000000;
  return result;
}

__int128 *sub_26B92CC98()
{
  if (qword_28042B910 != -1)
  {
    swift_once();
  }

  return &xmmword_28042B918;
}

double static ResultPlatterBehavior.entity.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_28042B910 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&byte_28042B928;
  *a1 = xmmword_28042B918;
  a1[1] = v1;
  result = *&xmmword_28042B938;
  a1[2] = xmmword_28042B938;
  return result;
}

double sub_26B92CD58()
{
  xmmword_28042B950 = 0x407EA00000000000uLL;
  byte_28042B960 = 1;
  qword_28042B968 = 0x40B3880000000000;
  result = 7.29290211e-304;
  LODWORD(xmmword_28042B970) = 16777472;
  *(&xmmword_28042B970 + 1) = 0x4084000000000000;
  return result;
}

__int128 *sub_26B92CDA0()
{
  if (qword_28042B948 != -1)
  {
    swift_once();
  }

  return &xmmword_28042B950;
}

double static ResultPlatterBehavior.browse.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_28042B948 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&byte_28042B960;
  *a1 = xmmword_28042B950;
  a1[1] = v1;
  result = *&xmmword_28042B970;
  a1[2] = xmmword_28042B970;
  return result;
}

double static ResultPlatterBehavior.gridBrowse.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x4080400000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0x40B3880000000000;
  result = 7.29290211e-304;
  *(a1 + 32) = 16777472;
  *(a1 + 40) = 0x408A600000000000;
  return result;
}

double sub_26B92CEA0()
{
  *&xmmword_28042B988 = 0;
  *(&xmmword_28042B988 + 1) = 0x4079A00000000000;
  byte_28042B998 = 0;
  qword_28042B9A0 = 0x40B3880000000000;
  *&result = 16777473;
  LODWORD(xmmword_28042B9A8) = 16777473;
  *(&xmmword_28042B9A8 + 1) = 0x4084000000000000;
  return result;
}

__int128 *sub_26B92CEE8()
{
  if (qword_28042B980 != -1)
  {
    swift_once();
  }

  return &xmmword_28042B988;
}

double static ResultPlatterBehavior.dynamic.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_28042B980 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&byte_28042B998;
  *a1 = xmmword_28042B988;
  a1[1] = v1;
  result = *&xmmword_28042B9A8;
  a1[2] = xmmword_28042B9A8;
  return result;
}

uint64_t static ResultPlatterBehavior.platterBehavior(for:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26B92D188(a1, &v9);
  if (*(&v10 + 1))
  {
    sub_26B8ECB70(&v9, v18);
    sub_26B907F08(v18, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426390, &qword_26B9B0EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804264B8, &qword_26B9B19D0);
    if (swift_dynamicCast())
    {
      sub_26B8ECB70(v12, v15);
      v3 = v16;
      v4 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v4 + 16))(v3, v4);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    memset(v12, 0, sizeof(v12));
    v13 = 0;
    sub_26B8EACD8(v12, &qword_2804264C0, &qword_26B9B19D8);
    if (qword_28042B8D8 != -1)
    {
      swift_once();
    }

    v9 = xmmword_28042B8E0;
    v10 = *&byte_28042B8F0;
    v11 = xmmword_28042B900;
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    v8 = v10;
    *a2 = v9;
    a2[1] = v8;
    v7 = v11;
  }

  else
  {
    result = sub_26B8EACD8(&v9, &qword_2804264B0, &unk_26B9B19C0);
    if (qword_28042B8A0 != -1)
    {
      result = swift_once();
    }

    v6 = *&byte_28042B8B8;
    *a2 = xmmword_28042B8A8;
    a2[1] = v6;
    v7 = xmmword_28042B8C8;
  }

  a2[2] = v7;
  return result;
}

uint64_t sub_26B92D188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804264B0, &unk_26B9B19C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s17SpotlightUIShared21ResultPlatterBehaviorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = *(a1 + 34);
  v6 = *(a1 + 35);
  v7 = *(a1 + 40);
  if (*(a1 + 16))
  {
    result = 0;
    if (!*(a2 + 16))
    {
      return result;
    }

    goto LABEL_8;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 8) != *(a2 + 8))
  {
    return result;
  }

LABEL_8:
  if (v2 == *(a2 + 24) && ((v3 ^ *(a2 + 32)) & 1) == 0 && ((v4 ^ *(a2 + 33)) & 1) == 0 && ((v5 ^ *(a2 + 34)) & 1) == 0 && ((v6 ^ *(a2 + 35)) & 1) == 0)
  {
    return v7 == *(a2 + 40);
  }

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

uint64_t sub_26B92D2F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26B92D348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t ActionsZKWQuery.representation.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  v3 = v2;
}

void ActionsZKWQuery.representation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v5 = v1[1];

  *v1 = v2;
  v1[1] = v3;
}

void *ActionsZKWQuery.init(representation:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_26B92D458(uint64_t a1)
{
  result = sub_26B92D480();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B92D480()
{
  result = qword_2804264C8;
  if (!qword_2804264C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804264C8);
  }

  return result;
}

unint64_t sub_26B92D4D4(uint64_t a1)
{
  result = sub_26B92D4FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B92D4FC()
{
  result = qword_2804264D0;
  if (!qword_2804264D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804264D0);
  }

  return result;
}

uint64_t sub_26B92D550@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  v3 = v2;
}

uint64_t sub_26B92D58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B92D89C();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B92D668(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B92D89C();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

unint64_t sub_26B92D71C(uint64_t a1)
{
  result = sub_26B92D744();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B92D744()
{
  result = qword_2804264D8;
  if (!qword_2804264D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804264D8);
  }

  return result;
}

double sub_26B92D798@<D0>(uint64_t a1@<X8>)
{
  sub_26B92D848();

  *&result = BrowsingQuery.platterBehavior.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_26B92D7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B92D480();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_26B92D848()
{
  result = qword_2804264E0;
  if (!qword_2804264E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804264E0);
  }

  return result;
}

unint64_t sub_26B92D89C()
{
  result = qword_2804264E8;
  if (!qword_2804264E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804264E8);
  }

  return result;
}

uint64_t sub_26B92D90C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a3;
  *(v5 + 88) = a4;
  v6 = *a1;
  v7 = a1[1];
  *(v5 + 96) = v4;
  *(v5 + 104) = v6;
  *(v5 + 112) = v7;
  *(v5 + 120) = *a2;
  *(v5 + 168) = *(a2 + 8);
  *(v5 + 169) = *(a2 + 9);
  *(v5 + 128) = *(a2 + 16);
  v8 = sub_26B92A538();
  swift_beginAccess();
  v9 = *v8;
  *(v5 + 144) = v9;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B92D9C8, v9, 0);
}

uint64_t sub_26B92D9C8()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 169);
  v4 = *(v0 + 168);
  v5 = *(v0 + 120);
  v6 = *(v0 + 112);
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 25) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  v8 = *(v0 + 96);
  *(v0 + 72) = *(v0 + 96);
  *(v7 + 16) = v8;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *(v7 + 48) = v4;
  *(v7 + 49) = v3;
  *(v7 + 56) = v2;
  *(v7 + 64) = v1;
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  type metadata accessor for ActionsZKWQueryDataSource();
  *v9 = v0;
  v9[1] = sub_26B92DB10;
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);

  return QueryDataSource.wrapWithFeedback(context:spotlightBrowsingSearchScope:resultHandler:fetchResults:)(v0 + 16, 3, v10, v11, &unk_26B9B1BC0);
}

uint64_t sub_26B92DB10()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_26B92DC3C, v3, 0);
}

uint64_t sub_26B92DC3C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B92DC9C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a2;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  v12 = sub_26B92A538();
  swift_beginAccess();
  *(v8 + 88) = *v12;
  sub_26B9AAAE4();
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  v14 = swift_task_alloc();
  *(v8 + 96) = v14;
  *v14 = v8;
  v14[1] = sub_26B92DD90;

  return sub_26B92E01C(a1, v13, v8 + 16);
}

uint64_t sub_26B92DD90()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26B92DEA0, v2, 0);
}

uint64_t sub_26B92DEA0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B92DF00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 49);
  v11 = *(v1 + 56);
  v10 = *(v1 + 64);
  if (v9)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_26B8EB6C8;

  return sub_26B92DC9C(a1, v7, v4, v5, v6, v12 | v8, v11, v10);
}

uint64_t sub_26B92E01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[199] = v3;
  v4[193] = a1;
  v6 = sub_26B9AB584();
  v4[205] = v6;
  v7 = *(v6 - 8);
  v4[211] = v7;
  v8 = *(v7 + 64) + 15;
  v4[212] = swift_task_alloc();
  v4[213] = *(a3 + 24);
  v9 = sub_26B92A538();
  swift_beginAccess();
  v10 = *v9;
  v4[214] = v10;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B92E118, v10, 0);
}

uint64_t sub_26B92E118()
{
  v1 = v0[199];
  v2 = [objc_allocWithZone(MEMORY[0x277CEB300]) initWithLimit:5 scope:0 spotlightRecentTopics:0];
  v0[215] = v2;
  v3 = swift_allocObject();
  v0[216] = v3;
  *(v3 + 16) = v2;
  v4 = v2;
  sub_26B9294B8(0, &qword_280426520, 0x277CEB870);
  swift_asyncLet_begin();
  sub_26B9AAAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426408, &unk_26B9B1370);
  swift_asyncLet_begin();
  v0[187] = MEMORY[0x277D84F90];

  return MEMORY[0x282200930](v0 + 2, v0 + 175, sub_26B92E270, v0 + 162);
}

uint64_t sub_26B92E270()
{
  *(v1 + 1736) = v0;
  if (v0)
  {
    v2 = sub_26B92E660;
  }

  else
  {
    v2 = sub_26B92E2A4;
  }

  return MEMORY[0x2822009F8](v2, *(v1 + 1712), 0);
}

uint64_t sub_26B92E2A4()
{
  v1 = [*(v0 + 1400) sections];
  sub_26B9294B8(0, &qword_280426400, 0x277D4C588);
  v2 = sub_26B9AC6F4();

  if (v2 >> 62)
  {
    v6 = sub_26B9ACB44();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x26D686B00](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x282200930](v6, v3, v4, v5);
    }

    v7 = *(v2 + 32);
  }

  v8 = v7;
  v9 = (v0 + 1496);

  v10 = v8;
  MEMORY[0x26D6865A0]();
  if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v12 = *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_26B9AC734();
  }

  sub_26B9AC774();

  v11 = *v9;
LABEL_11:
  *(v0 + 1744) = v11;
  v4 = sub_26B92E42C;
  v6 = v0 + 656;
  v3 = v0 + 1448;
  v5 = v0 + 1456;

  return MEMORY[0x282200930](v6, v3, v4, v5);
}

uint64_t sub_26B92E42C()
{
  v1[219] = v0;
  if (v0)
  {
    v2 = v1[218];
    v3 = v1[214];

    v4 = sub_26B92E880;
    v5 = v3;
  }

  else
  {
    v5 = v1[214];
    v4 = sub_26B92E4B8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_26B92E4B8()
{
  v1 = v0[213];
  v2 = v0[193];
  v3 = v0[181];

  sub_26B92F070(v4, sub_26B928F24);
  v5 = v0[187];
  v6 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v5, v1, 1, 1, 0, v6 & 1, v2);

  return MEMORY[0x282200920](v0 + 82, v0 + 181, sub_26B92E578, v0 + 200);
}

uint64_t sub_26B92E5D0()
{
  v1 = v0[216];
  v2 = v0[215];
  v3 = v0[214];
  v4 = v0[199];

  v5 = v0[212];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26B92E6D8()
{
  v21 = v0[217];
  v1 = v0[214];
  v2 = v0[212];
  v3 = v0[211];
  v4 = v0[205];

  v5 = sub_26B9A7568();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_26B9AB564();
  v7 = sub_26B9AC934();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26B8E8000, v6, v7, "Unable to retrieve suggested actions for ZKW from ATXSpotlightClient", v8, 2u);
    MEMORY[0x26D6879F0](v8, -1, -1);
  }

  v9 = v0[216];
  v10 = v0[215];
  v11 = v0[213];
  v12 = v0[212];
  v13 = v0[211];
  v14 = v0[205];
  v15 = v0[199];
  v16 = v0[193];

  (*(v13 + 8))(v12, v14);
  v17 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(MEMORY[0x277D84F90], v11, 1, 1, 0, v17 & 1, v16);

  v18 = v0[212];

  v19 = v0[1];

  return v19();
}

uint64_t sub_26B92E8F8()
{
  v21 = v0[219];
  v1 = v0[214];
  v2 = v0[212];
  v3 = v0[211];
  v4 = v0[205];

  v5 = sub_26B9A7568();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_26B9AB564();
  v7 = sub_26B9AC934();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26B8E8000, v6, v7, "Unable to retrieve suggested actions for ZKW from ATXSpotlightClient", v8, 2u);
    MEMORY[0x26D6879F0](v8, -1, -1);
  }

  v9 = v0[216];
  v10 = v0[215];
  v11 = v0[213];
  v12 = v0[212];
  v13 = v0[211];
  v14 = v0[205];
  v15 = v0[199];
  v16 = v0[193];

  (*(v13 + 8))(v12, v14);
  v17 = sub_26B906128();
  SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(MEMORY[0x277D84F90], v11, 1, 1, 0, v17 & 1, v16);

  v18 = v0[212];

  v19 = v0[1];

  return v19();
}

uint64_t sub_26B92EAA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_26B92EAC0, 0, 0);
}

uint64_t sub_26B92EAC0()
{
  v1 = v0[20];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26B92EBF8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426528, &qword_26B9B1C98);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26B92ED94;
  v0[13] = &block_descriptor_31;
  v0[14] = v3;
  [v2 predictionsForRequest:v1 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26B92EBF8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_26B92ED28;
  }

  else
  {
    v3 = sub_26B92ED08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26B92ED28()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_26B92ED94(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426530, &unk_26B9B1CA0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_26B92EE6C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26B92EF00;

  return sub_26B92F168();
}

uint64_t sub_26B92EF00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_26B92F04C, 0, 0);
  }
}

uint64_t sub_26B92F070(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_26B9ACB44();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_26B9ACB44();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_26B928DFC(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26B92F168()
{
  v1[9] = *v0;
  v2 = sub_26B92A538();
  v1[10] = v2;
  swift_beginAccess();
  v3 = *v2;
  v1[11] = v3;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B92F220, v3, 0);
}

uint64_t sub_26B92F220()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[12] = v1;
  v2 = rankingPrefetchedAttributesArray();
  if (v2)
  {
    v10 = v2;
    v12 = v0[9];
    v11 = v0[10];
    [v1 setFetchAttributes_];

    [v1 setDisableSemanticSearch_];
    swift_beginAccess();
    v13 = *v11;
    v0[13] = *v11;
    v14 = sub_26B92A870();
    v15 = swift_task_alloc();
    v0[14] = v15;
    *(v15 + 16) = v1;
    *(v15 + 24) = v12;
    v16 = *(MEMORY[0x277D85A40] + 4);
    sub_26B9AAAE4();
    v17 = swift_task_alloc();
    v0[15] = v17;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804264F0, &qword_26B9B1C58);
    *v17 = v0;
    v17[1] = sub_26B92F3C4;
    v7 = sub_26B933210;
    v2 = v0 + 8;
    v6 = 0x800000026B9B8010;
    v3 = v13;
    v4 = v14;
    v5 = 0xD000000000000011;
    v8 = v15;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26B92F3C4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = sub_26B92FCAC;
  }

  else
  {
    v6 = v2[13];
    v7 = v2[14];
    v8 = v2[11];

    v5 = sub_26B92F4F4;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

void sub_26B92F4F4()
{
  v80 = v0;
  v1 = *(v0 + 88);

  v71 = v0;
  v2 = *(v0 + 64);
  v3 = sub_26B933218(MEMORY[0x277D84F90]);
  v4 = v2;
  v5 = v3;
  if (v2 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v4 = v34)
  {
    if (i < 1)
    {
      goto LABEL_73;
    }

    v7 = 0;
    v74 = v4;
    v76 = v4 & 0xC000000000000001;
    v72 = i;
    while (1)
    {
      v10 = v76 ? MEMORY[0x26D686B00](v7) : *(v4 + 8 * v7 + 32);
      v11 = v10;
      v12 = [v10 attributeSet];
      v13 = [v12 relatedAppBundleIdentifier];

      if (v13)
      {
        v14 = sub_26B9AC504();
        v16 = v15;

        if (!*(v5 + 16))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v14 = 0xD000000000000013;
        v16 = 0x800000026B9B8030;
        if (!*(v5 + 16))
        {
          goto LABEL_16;
        }
      }

      v17 = sub_26B9201A8(v14, v16);
      if (v18)
      {
        v19 = *(*(v5 + 56) + 8 * v17);

        goto LABEL_17;
      }

LABEL_16:
      v20 = MEMORY[0x277D84F90];
LABEL_17:
      v77 = v20;
      v21 = v11;
      MEMORY[0x26D6865A0]();
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_26B9AC734();
      }

      sub_26B9AC774();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v5;
      v23 = sub_26B9201A8(v14, v16);
      v24 = *(v5 + 16);
      v25 = (v4 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v4;
      if (*(v5 + 24) >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v4)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_26B932DE4();
          v5 = v79[0];
          if (v27)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_26B932B3C(v26, isUniquelyReferenced_nonNull_native);
        v5 = v79[0];
        v28 = sub_26B9201A8(v14, v16);
        if ((v27 & 1) != (v4 & 1))
        {

          sub_26B9ACF24();
          return;
        }

        v23 = v28;
        if (v27)
        {
LABEL_5:
          v8 = *(v5 + 56);
          v9 = *(v8 + 8 * v23);
          *(v8 + 8 * v23) = v77;

          goto LABEL_6;
        }
      }

      *(v5 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v29 = (*(v5 + 48) + 16 * v23);
      *v29 = v14;
      v29[1] = v16;
      *(*(v5 + 56) + 8 * v23) = v77;
      v30 = *(v5 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_34;
      }

      *(v5 + 16) = v32;
LABEL_6:
      ++v7;

      v4 = v74;
      if (v72 == v7)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v34 = v4;
    i = sub_26B9ACB44();
  }

LABEL_36:

  v78 = MEMORY[0x277D84F90];
  v35 = v5 + 64;
  v36 = -1;
  v37 = -1 << *(v5 + 32);
  if (-v37 < 64)
  {
    v36 = ~(-1 << -v37);
  }

  v38 = v36 & *(v5 + 64);
  v39 = (63 - v37) >> 6;
  v73 = *(v71 + 128);

  v40 = 0;
  for (j = v39; ; v39 = j)
  {
    v41 = v40;
    if (!v38)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v40 = v41;
LABEL_44:
      v42 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v43 = v42 | (v40 << 6);
      v44 = (*(v5 + 48) + 16 * v43);
      v46 = *v44;
      v45 = v44[1];
      v47 = *(*(v5 + 56) + 8 * v43);
      v48 = objc_allocWithZone(MEMORY[0x277D65848]);

      v49 = [v48 init];
      v50 = sub_26B9AC4C4();
      v51 = SSAppNameForBundleId();

      if (v51)
      {
        break;
      }

      v41 = v40;
      v39 = j;
      v35 = v5 + 64;
      if (!v38)
      {
        while (1)
        {
LABEL_41:
          v40 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            __break(1u);
            goto LABEL_71;
          }

          if (v40 >= v39)
          {
            break;
          }

          v38 = *(v35 + 8 * v40);
          ++v41;
          if (v38)
          {
            goto LABEL_44;
          }
        }

        v79[0] = sub_26B932F54(v67, sub_26B928F24);
        v55 = v73;
        sub_26B930A18(v79);
        if (v73)
        {
          goto LABEL_66;
        }

        v68 = v79[0];
        v69 = *(v71 + 8);

        v69(v68);
        return;
      }
    }

    v52 = v49;
    [v52 setTitle_];

    v53 = sub_26B9AC4C4();

    [v52 setIdentifier_];

    v79[0] = sub_26B932F54(v54, sub_26B932FF0);
    v55 = v73;
    sub_26B930ACC(v79);
    if (v73)
    {
LABEL_66:

      return;
    }

    v70 = 0;

    v56 = v79[0];
    v79[0] = MEMORY[0x277D84F90];

    v57 = *(v56 + 16);
    if (v57)
    {
      goto LABEL_51;
    }

LABEL_62:

    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v65 = sub_26B9AC6E4();

    [v52 setResults_];

    MEMORY[0x26D6865A0]();
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v66 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v73 = 0;
    v35 = v5 + 64;
  }

  v57 = sub_26B9ACB44();
  if (!v57)
  {
    goto LABEL_62;
  }

LABEL_51:
  v58 = 0;
  while ((v56 & 0xC000000000000001) != 0)
  {
    v59 = MEMORY[0x26D686B00](v58, v56);
LABEL_55:
    v60 = v59;
    v61 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      goto LABEL_72;
    }

    v62 = [objc_opt_self() resultBuilderForItem_];
    v63 = [v62 buildResult];

    MEMORY[0x26D6865A0]();
    if (*((v79[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v64 = *((v79[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    sub_26B9AC774();
    ++v58;
    if (v61 == v57)
    {
      goto LABEL_62;
    }
  }

  if (v58 < *(v56 + 16))
  {
    v59 = *(v56 + 8 * v58 + 32);
    goto LABEL_55;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t sub_26B92FCAC()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_26B92FD30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426518, &qword_26B9B1C70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock - v7;
  v9 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v10 = sub_26B9AC4C4();
  v11 = [v9 initWithQueryString:v10 queryContext:a2];

  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F90];
  v22 = sub_26B933370;
  v23 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_26B930024;
  v21 = &block_descriptor_0;
  v13 = _Block_copy(&aBlock);
  sub_26B9AAAE4();

  [v11 setFoundItemsHandler_];
  _Block_release(v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  v22 = sub_26B9333F0;
  v23 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_26B9300A8;
  v21 = &block_descriptor_13;
  v16 = _Block_copy(&aBlock);
  sub_26B9AAAE4();

  [v11 setCompletionHandler_];
  _Block_release(v16);
  [v11 start];
}

uint64_t sub_26B930024(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_26B9294B8(0, &qword_280426508, 0x277CC34B0);
  v3 = sub_26B9AC6F4();
  sub_26B9AAAE4();
  v2(v3);
}

void sub_26B9300A8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_26B9AAAE4();
  v5 = a2;
  v4(a2);
}

uint64_t sub_26B930130@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t sub_26B930168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 88);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EB6C8;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_26B9302AC(uint64_t a1, uint64_t a2)
{
  v3[6] = a1;
  v3[7] = a2;
  v3[5] = v2;
  v4 = sub_26B92A538();
  swift_beginAccess();
  v5 = *v4;

  return MEMORY[0x2822009F8](sub_26B93032C, v5, 0);
}

uint64_t sub_26B93032C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  QueryDataSource.stop()();
  v4 = v0[1];

  return v4();
}

uint64_t sub_26B930390(uint64_t a1, uint64_t a2)
{
  v3[6] = a1;
  v3[7] = a2;
  v3[5] = v2;
  v4 = sub_26B92A538();
  swift_beginAccess();
  v5 = *v4;

  return MEMORY[0x2822009F8](sub_26B930410, v5, 0);
}

uint64_t sub_26B930410()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  QueryDataSource.preheat()();
  v4 = v0[1];

  return v4();
}

uint64_t sub_26B930474(uint64_t a1, uint64_t a2)
{
  v3[6] = a1;
  v3[7] = a2;
  v3[5] = v2;
  v4 = sub_26B92A538();
  swift_beginAccess();
  v5 = *v4;

  return MEMORY[0x2822009F8](sub_26B9304F4, v5, 0);
}

uint64_t sub_26B9304F4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  QueryDataSource.activate()();
  v4 = v0[1];

  return v4();
}

uint64_t sub_26B930558(uint64_t a1, uint64_t a2)
{
  v3[6] = a1;
  v3[7] = a2;
  v3[5] = v2;
  v4 = sub_26B92A538();
  swift_beginAccess();
  v5 = *v4;

  return MEMORY[0x2822009F8](sub_26B9305D8, v5, 0);
}

uint64_t sub_26B9305D8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  QueryDataSource.deactivate()();
  v4 = v0[1];

  return v4();
}

uint64_t sub_26B93063C(uint64_t a1, uint64_t a2)
{
  v3[6] = a1;
  v3[7] = a2;
  v3[5] = v2;
  v4 = sub_26B92A538();
  swift_beginAccess();
  v5 = *v4;

  return MEMORY[0x2822009F8](sub_26B9306BC, v5, 0);
}

uint64_t sub_26B9306BC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  QueryDataSource.reset()();
  v4 = v0[1];

  return v4();
}

uint64_t dispatch thunk of ActionsZKWQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 88);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26B8EC52C;

  return v14(a1, a2, a3, a4);
}

char *sub_26B93088C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426500, &qword_26B9B2810);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_26B930990(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_26B930A18(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26B8ECBD0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_26B930B80(v6, &qword_280426400, 0x277D4C588, sub_26B93101C, sub_26B930CAC);
  return sub_26B9ACC74();
}

uint64_t sub_26B930ACC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26B8ECBD0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_26B930B80(v6, &qword_280426508, 0x277CC34B0, sub_26B931894, sub_26B930E44);
  return sub_26B9ACC74();
}

uint64_t sub_26B930B80(uint64_t a1, unint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_26B9ACE64();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26B9294B8(0, a2, a3);
        v14 = sub_26B9AC754();
        *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFF8;
      v16[0] = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v16[1] = v13;
      a4(v16, v17, a1, v12);
      *(v15 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_26B930CAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_5:
    v20 = a3;
    v6 = *(v21 + 8 * a3);
    v18 = v5;
    v19 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 title];
      if (v10)
      {
        v11 = v10;
        sub_26B9AC504();
      }

      v12 = [v9 title];
      if (v12)
      {
        v13 = v12;
        sub_26B9AC504();
      }

      sub_26B92C070();
      v14 = sub_26B9ACA94();

      if (v14 != -1)
      {
LABEL_4:
        a3 = v20 + 1;
        v4 = v19 + 8;
        v5 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v21)
      {
        break;
      }

      v15 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v15;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B930E44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_5:
    v20 = a3;
    v6 = *(v21 + 8 * a3);
    v18 = v5;
    v19 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 attributeSet];
      v11 = [v10 displayName];

      if (v11)
      {
        sub_26B9AC504();
      }

      v12 = [v9 attributeSet];
      v13 = [v12 displayName];

      if (v13)
      {
        sub_26B9AC504();
      }

      sub_26B92C070();
      v14 = sub_26B9ACA94();

      if (v14 != -1)
      {
LABEL_4:
        a3 = v20 + 1;
        v4 = v19 + 8;
        v5 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v21)
      {
        break;
      }

      v15 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v15;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_26B93101C(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = (v8 + 1);
      v117 = v9;
      v110 = v8;
      if (v8 + 1 >= v7)
      {
        goto LABEL_31;
      }

      v113 = v7;
      v11 = *v6;
      v12 = *(v11 + 8 * v8);
      v13 = *(v11 + 8 * v10);
      v14 = v12;
      v15 = [v13 title];
      if (v15)
      {
        v16 = v15;
        sub_26B9AC504();
      }

      v17 = [v14 title];
      if (v17)
      {
        v18 = v17;
        sub_26B9AC504();
      }

      sub_26B92C070();
      v115 = sub_26B9ACA94();

      if (v5)
      {

        return;
      }

      v19 = (v11 + 8 * v110 + 16);
      v111 = 8 * v110;
      v20 = 8 * v110 + 8;
      v9 = v117;
      do
      {
        v23 = v10;
        v24 = v20;
        v10 = (v10 + 1);
        if (v10 >= v113)
        {
          break;
        }

        v25 = *(v19 - 1);
        v26 = *v19;
        v27 = v25;
        v28 = [v26 title];
        v118 = v10;
        if (v28)
        {
          v29 = v28;
          sub_26B9AC504();
        }

        v30 = [v27 title];
        if (v30)
        {
          v21 = v30;
          sub_26B9AC504();
        }

        v22 = sub_26B9ACA94();

        ++v19;
        v20 = v24 + 8;
        v9 = v117;
        v10 = v118;
      }

      while ((v115 == -1) != (v22 != -1));
      if (v115 == -1)
      {
        v6 = a3;
        v8 = v110;
        if (v10 < v110)
        {
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          return;
        }

        if (v110 >= v10)
        {
          v5 = 0;
          goto LABEL_31;
        }

        v31 = v110;
        do
        {
          if (v31 != v23)
          {
            v34 = *a3;
            if (!*a3)
            {
              goto LABEL_141;
            }

            v32 = *(v34 + v111);
            *(v34 + v111) = *(v34 + v24);
            *(v34 + v24) = v32;
          }

          v31 = (v31 + 1);
          v24 -= 8;
          v111 += 8;
          v33 = v31 < v23;
          v23 = (v23 - 1);
        }

        while (v33);
        v5 = 0;
      }

      else
      {
        v5 = 0;
        v6 = a3;
      }

      v8 = v110;
LABEL_31:
      v35 = *(v6 + 8);
      if (v10 >= v35)
      {
        goto LABEL_53;
      }

      if (__OFSUB__(v10, v8))
      {
        goto LABEL_133;
      }

      if (v10 - v8 >= a4)
      {
        goto LABEL_52;
      }

      v8 = v110;
      v36 = (v110 + a4);
      if (__OFADD__(v110, a4))
      {
        goto LABEL_134;
      }

      if (v36 >= v35)
      {
        v36 = *(v6 + 8);
      }

      if (v36 < v110)
      {
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      if (v10 != v36)
      {
        v107 = v5;
        v37 = *v6;
        v38 = *v6 + 8 * v10 - 8;
        v39 = v110 - v10;
        v112 = v36;
        do
        {
          v119 = v10;
          v40 = v38;
          v41 = *(v37 + 8 * v10);
          v114 = v39;
          v116 = v40;
          v42 = v40;
          do
          {
            v43 = *v42;
            v44 = v41;
            v45 = v43;
            v46 = [v44 title];
            if (v46)
            {
              v47 = v46;
              sub_26B9AC504();
            }

            v48 = [v45 title];
            if (v48)
            {
              v49 = v48;
              sub_26B9AC504();
            }

            sub_26B92C070();
            v50 = sub_26B9ACA94();

            if (v50 != -1)
            {
              break;
            }

            if (!v37)
            {
              goto LABEL_138;
            }

            v51 = *v42;
            v41 = *(v42 + 8);
            *v42 = v41;
            *(v42 + 8) = v51;
            v42 -= 8;
          }

          while (!__CFADD__(v39++, 1));
          v10 = (v119 + 1);
          v38 = v116 + 8;
          v39 = v114 - 1;
        }

        while ((v119 + 1) != v112);
        v10 = v112;
        v5 = v107;
        v6 = a3;
        v9 = v117;
LABEL_52:
        v8 = v110;
      }

LABEL_53:
      if (v10 < v8)
      {
        goto LABEL_132;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_26B93088C(0, *(v9 + 2) + 1, 1, v9);
      }

      v54 = *(v9 + 2);
      v53 = *(v9 + 3);
      v55 = v54 + 1;
      v56 = v110;
      if (v54 >= v53 >> 1)
      {
        v101 = sub_26B93088C((v53 > 1), v54 + 1, 1, v9);
        v56 = v110;
        v9 = v101;
      }

      *(v9 + 2) = v55;
      v57 = &v9[16 * v54];
      *(v57 + 4) = v56;
      *(v57 + 5) = v10;
      v58 = *a1;
      if (!*a1)
      {
        goto LABEL_142;
      }

      v8 = v10;
      if (v54)
      {
        while (1)
        {
          v59 = v55 - 1;
          if (v55 >= 4)
          {
            break;
          }

          if (v55 == 3)
          {
            v60 = *(v9 + 4);
            v61 = *(v9 + 5);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
LABEL_73:
            if (v63)
            {
              goto LABEL_121;
            }

            v76 = &v9[16 * v55];
            v78 = *v76;
            v77 = *(v76 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_124;
            }

            v82 = &v9[16 * v59 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v70 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v70)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v80, v85))
            {
              goto LABEL_128;
            }

            if (v80 + v85 >= v62)
            {
              if (v62 < v85)
              {
                v59 = v55 - 2;
              }

              goto LABEL_94;
            }

            goto LABEL_87;
          }

          v86 = &v9[16 * v55];
          v88 = *v86;
          v87 = *(v86 + 1);
          v70 = __OFSUB__(v87, v88);
          v80 = v87 - v88;
          v81 = v70;
LABEL_87:
          if (v81)
          {
            goto LABEL_123;
          }

          v89 = &v9[16 * v59];
          v91 = *(v89 + 4);
          v90 = *(v89 + 5);
          v70 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v70)
          {
            goto LABEL_126;
          }

          if (v92 < v80)
          {
            goto LABEL_3;
          }

LABEL_94:
          v97 = v59 - 1;
          if (v59 - 1 >= v55)
          {
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
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
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
            goto LABEL_135;
          }

          if (!*v6)
          {
            goto LABEL_139;
          }

          v98 = *&v9[16 * v97 + 32];
          v99 = *&v9[16 * v59 + 40];
          sub_26B9321CC((*v6 + 8 * v98), (*v6 + 8 * *&v9[16 * v59 + 32]), (*v6 + 8 * v99), v58);
          if (v5)
          {
            goto LABEL_114;
          }

          if (v99 < v98)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_26B932B28(v9);
          }

          if (v97 >= *(v9 + 2))
          {
            goto LABEL_118;
          }

          v100 = &v9[16 * v97];
          *(v100 + 4) = v98;
          *(v100 + 5) = v99;
          sub_26B932A9C(v59);
          v55 = *(v9 + 2);
          if (v55 <= 1)
          {
            goto LABEL_3;
          }
        }

        v64 = &v9[16 * v55 + 32];
        v65 = *(v64 - 64);
        v66 = *(v64 - 56);
        v70 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        if (v70)
        {
          goto LABEL_119;
        }

        v69 = *(v64 - 48);
        v68 = *(v64 - 40);
        v70 = __OFSUB__(v68, v69);
        v62 = v68 - v69;
        v63 = v70;
        if (v70)
        {
          goto LABEL_120;
        }

        v71 = &v9[16 * v55];
        v73 = *v71;
        v72 = *(v71 + 1);
        v70 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v70)
        {
          goto LABEL_122;
        }

        v70 = __OFADD__(v62, v74);
        v75 = v62 + v74;
        if (v70)
        {
          goto LABEL_125;
        }

        if (v75 >= v67)
        {
          v93 = &v9[16 * v59 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v70 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v70)
          {
            goto LABEL_129;
          }

          if (v62 < v96)
          {
            v59 = v55 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_73;
      }

LABEL_3:
      v7 = *(v6 + 8);
      if (v8 >= v7)
      {
        goto LABEL_104;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_104:
  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_143;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_136:
    v9 = sub_26B932B28(v9);
  }

  v102 = *(v9 + 2);
  if (v102 >= 2)
  {
    do
    {
      v103 = *v6;
      if (!*v6)
      {
        goto LABEL_140;
      }

      v104 = *&v9[16 * v102];
      v6 = *&v9[16 * v102 + 24];
      sub_26B9321CC((v103 + 8 * v104), (v103 + 8 * *&v9[16 * v102 + 16]), (v103 + 8 * v6), v8);
      if (v5)
      {
        break;
      }

      if (v6 < v104)
      {
        goto LABEL_130;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_26B932B28(v9);
      }

      if (v102 - 2 >= *(v9 + 2))
      {
        goto LABEL_131;
      }

      v105 = &v9[16 * v102];
      *v105 = v104;
      *(v105 + 1) = v6;
      sub_26B932A9C(v102 - 1);
      v102 = *(v9 + 2);
      v6 = a3;
    }

    while (v102 > 1);
  }

LABEL_114:
}

void sub_26B931894(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = (v8 + 1);
      v117 = v9;
      v110 = v8;
      if (v8 + 1 >= v7)
      {
        goto LABEL_31;
      }

      v113 = v7;
      v11 = *v6;
      v12 = *(v11 + 8 * v8);
      v13 = *(v11 + 8 * v10);
      v14 = v12;
      v15 = [v13 attributeSet];
      v16 = [v15 displayName];

      if (v16)
      {
        sub_26B9AC504();
      }

      v17 = [v14 attributeSet];
      v18 = [v17 displayName];

      if (v18)
      {
        sub_26B9AC504();
      }

      sub_26B92C070();
      v115 = sub_26B9ACA94();

      if (v5)
      {

        return;
      }

      v19 = (v11 + 8 * v110 + 16);
      v111 = 8 * v110;
      v20 = 8 * v110 + 8;
      v9 = v117;
      do
      {
        v22 = v10;
        v23 = v20;
        v10 = (v10 + 1);
        if (v10 >= v113)
        {
          break;
        }

        v24 = *(v19 - 1);
        v25 = *v19;
        v26 = v24;
        v27 = [v25 attributeSet];
        v28 = [v27 displayName];

        v118 = v10;
        if (v28)
        {
          sub_26B9AC504();
        }

        v29 = [v26 attributeSet];
        v30 = [v29 displayName];

        if (v30)
        {
          sub_26B9AC504();
        }

        v21 = sub_26B9ACA94();

        ++v19;
        v20 = v23 + 8;
        v9 = v117;
        v10 = v118;
      }

      while ((v115 == -1) != (v21 != -1));
      if (v115 == -1)
      {
        v6 = a3;
        v8 = v110;
        if (v10 < v110)
        {
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          return;
        }

        if (v110 >= v10)
        {
          v5 = 0;
          goto LABEL_31;
        }

        v31 = v110;
        do
        {
          if (v31 != v22)
          {
            v34 = *a3;
            if (!*a3)
            {
              goto LABEL_141;
            }

            v32 = *(v34 + v111);
            *(v34 + v111) = *(v34 + v23);
            *(v34 + v23) = v32;
          }

          v31 = (v31 + 1);
          v23 -= 8;
          v111 += 8;
          v33 = v31 < v22;
          v22 = (v22 - 1);
        }

        while (v33);
        v5 = 0;
      }

      else
      {
        v5 = 0;
        v6 = a3;
      }

      v8 = v110;
LABEL_31:
      v35 = *(v6 + 8);
      if (v10 >= v35)
      {
        goto LABEL_53;
      }

      if (__OFSUB__(v10, v8))
      {
        goto LABEL_133;
      }

      if (v10 - v8 >= a4)
      {
        goto LABEL_52;
      }

      v8 = v110;
      v36 = (v110 + a4);
      if (__OFADD__(v110, a4))
      {
        goto LABEL_134;
      }

      if (v36 >= v35)
      {
        v36 = *(v6 + 8);
      }

      if (v36 < v110)
      {
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      if (v10 != v36)
      {
        v107 = v5;
        v37 = *v6;
        v38 = *v6 + 8 * v10 - 8;
        v39 = v110 - v10;
        v112 = v36;
        do
        {
          v119 = v10;
          v40 = v38;
          v41 = *(v37 + 8 * v10);
          v114 = v39;
          v116 = v40;
          v42 = v40;
          do
          {
            v43 = *v42;
            v44 = v41;
            v45 = v43;
            v46 = [v44 attributeSet];
            v47 = [v46 displayName];

            if (v47)
            {
              sub_26B9AC504();
            }

            v48 = [v45 attributeSet];
            v49 = [v48 displayName];

            if (v49)
            {
              sub_26B9AC504();
            }

            sub_26B92C070();
            v50 = sub_26B9ACA94();

            if (v50 != -1)
            {
              break;
            }

            if (!v37)
            {
              goto LABEL_138;
            }

            v51 = *v42;
            v41 = *(v42 + 8);
            *v42 = v41;
            *(v42 + 8) = v51;
            v42 -= 8;
          }

          while (!__CFADD__(v39++, 1));
          v10 = (v119 + 1);
          v38 = v116 + 8;
          v39 = v114 - 1;
        }

        while ((v119 + 1) != v112);
        v10 = v112;
        v5 = v107;
        v6 = a3;
        v9 = v117;
LABEL_52:
        v8 = v110;
      }

LABEL_53:
      if (v10 < v8)
      {
        goto LABEL_132;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_26B93088C(0, *(v9 + 2) + 1, 1, v9);
      }

      v54 = *(v9 + 2);
      v53 = *(v9 + 3);
      v55 = v54 + 1;
      v56 = v110;
      if (v54 >= v53 >> 1)
      {
        v101 = sub_26B93088C((v53 > 1), v54 + 1, 1, v9);
        v56 = v110;
        v9 = v101;
      }

      *(v9 + 2) = v55;
      v57 = &v9[16 * v54];
      *(v57 + 4) = v56;
      *(v57 + 5) = v10;
      v58 = *a1;
      if (!*a1)
      {
        goto LABEL_142;
      }

      v8 = v10;
      if (v54)
      {
        while (1)
        {
          v59 = v55 - 1;
          if (v55 >= 4)
          {
            break;
          }

          if (v55 == 3)
          {
            v60 = *(v9 + 4);
            v61 = *(v9 + 5);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
LABEL_73:
            if (v63)
            {
              goto LABEL_121;
            }

            v76 = &v9[16 * v55];
            v78 = *v76;
            v77 = *(v76 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_124;
            }

            v82 = &v9[16 * v59 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v70 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v70)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v80, v85))
            {
              goto LABEL_128;
            }

            if (v80 + v85 >= v62)
            {
              if (v62 < v85)
              {
                v59 = v55 - 2;
              }

              goto LABEL_94;
            }

            goto LABEL_87;
          }

          v86 = &v9[16 * v55];
          v88 = *v86;
          v87 = *(v86 + 1);
          v70 = __OFSUB__(v87, v88);
          v80 = v87 - v88;
          v81 = v70;
LABEL_87:
          if (v81)
          {
            goto LABEL_123;
          }

          v89 = &v9[16 * v59];
          v91 = *(v89 + 4);
          v90 = *(v89 + 5);
          v70 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v70)
          {
            goto LABEL_126;
          }

          if (v92 < v80)
          {
            goto LABEL_3;
          }

LABEL_94:
          v97 = v59 - 1;
          if (v59 - 1 >= v55)
          {
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
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
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
            goto LABEL_135;
          }

          if (!*v6)
          {
            goto LABEL_139;
          }

          v98 = *&v9[16 * v97 + 32];
          v99 = *&v9[16 * v59 + 40];
          sub_26B9325F4((*v6 + 8 * v98), (*v6 + 8 * *&v9[16 * v59 + 32]), (*v6 + 8 * v99), v58);
          if (v5)
          {
            goto LABEL_114;
          }

          if (v99 < v98)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_26B932B28(v9);
          }

          if (v97 >= *(v9 + 2))
          {
            goto LABEL_118;
          }

          v100 = &v9[16 * v97];
          *(v100 + 4) = v98;
          *(v100 + 5) = v99;
          sub_26B932A9C(v59);
          v55 = *(v9 + 2);
          if (v55 <= 1)
          {
            goto LABEL_3;
          }
        }

        v64 = &v9[16 * v55 + 32];
        v65 = *(v64 - 64);
        v66 = *(v64 - 56);
        v70 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        if (v70)
        {
          goto LABEL_119;
        }

        v69 = *(v64 - 48);
        v68 = *(v64 - 40);
        v70 = __OFSUB__(v68, v69);
        v62 = v68 - v69;
        v63 = v70;
        if (v70)
        {
          goto LABEL_120;
        }

        v71 = &v9[16 * v55];
        v73 = *v71;
        v72 = *(v71 + 1);
        v70 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v70)
        {
          goto LABEL_122;
        }

        v70 = __OFADD__(v62, v74);
        v75 = v62 + v74;
        if (v70)
        {
          goto LABEL_125;
        }

        if (v75 >= v67)
        {
          v93 = &v9[16 * v59 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v70 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v70)
          {
            goto LABEL_129;
          }

          if (v62 < v96)
          {
            v59 = v55 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_73;
      }

LABEL_3:
      v7 = *(v6 + 8);
      if (v8 >= v7)
      {
        goto LABEL_104;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_104:
  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_143;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_136:
    v9 = sub_26B932B28(v9);
  }

  v102 = *(v9 + 2);
  if (v102 >= 2)
  {
    do
    {
      v103 = *v6;
      if (!*v6)
      {
        goto LABEL_140;
      }

      v104 = *&v9[16 * v102];
      v6 = *&v9[16 * v102 + 24];
      sub_26B9325F4((v103 + 8 * v104), (v103 + 8 * *&v9[16 * v102 + 16]), (v103 + 8 * v6), v8);
      if (v5)
      {
        break;
      }

      if (v6 < v104)
      {
        goto LABEL_130;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_26B932B28(v9);
      }

      if (v102 - 2 >= *(v9 + 2))
      {
        goto LABEL_131;
      }

      v105 = &v9[16 * v102];
      *v105 = v104;
      *(v105 + 1) = v6;
      sub_26B932A9C(v102 - 1);
      v102 = *(v9 + 2);
      v6 = a3;
    }

    while (v102 > 1);
  }

LABEL_114:
}

uint64_t sub_26B9321CC(void **__src, id *a2, id *a3, void **__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = __dst;
    if (__dst != a2 || &a2[v12] <= __dst)
    {
      memmove(__dst, a2, 8 * v12);
      v5 = a2;
    }

    v46 = &v15[v12];
    if (v10 < 8 || v5 <= v6)
    {
      v40 = v5;
    }

    else
    {
      __srca = v15;
      do
      {
        v45 = v5;
        v28 = v5 - 1;
        --v4;
        v29 = v46;
        v42 = v28;
        while (1)
        {
          v30 = *--v29;
          v31 = *v28;
          v32 = v30;
          v33 = v31;
          v34 = [v32 title];
          if (v34)
          {
            v35 = v34;
            sub_26B9AC504();
          }

          v36 = [v33 title];
          if (v36)
          {
            v37 = v36;
            sub_26B9AC504();
          }

          sub_26B92C070();
          v38 = sub_26B9ACA94();

          v39 = (v4 + 1);
          if (v38 == -1)
          {
            break;
          }

          if (v39 != v46)
          {
            *v4 = *v29;
          }

          --v4;
          v46 = v29;
          v28 = v42;
          if (v29 <= __srca)
          {
            v46 = v29;
            v15 = __srca;
            v40 = v45;
            goto LABEL_47;
          }
        }

        v40 = v42;
        if (v39 != v45)
        {
          *v4 = *v42;
        }

        v15 = __srca;
        if (v46 <= __srca)
        {
          break;
        }

        v5 = v42;
      }

      while (v42 > v6);
    }
  }

  else
  {
    if (__dst != __src || &__src[v9] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 8 * v9);
      v5 = a2;
      __dst = v13;
    }

    v46 = &__dst[v9];
    v15 = __dst;
    if (v7 >= 8 && v5 < v4)
    {
      v16 = &selRef_setObject_forKey_;
      while (1)
      {
        v44 = v5;
        v17 = *v15;
        v18 = *v5;
        v19 = v17;
        v20 = [v18 v16[192]];
        if (v20)
        {
          v21 = v20;
          sub_26B9AC504();
        }

        v22 = [v19 v16[192]];
        if (v22)
        {
          v23 = v22;
          sub_26B9AC504();
        }

        sub_26B92C070();
        v24 = sub_26B9ACA94();

        if (v24 != -1)
        {
          break;
        }

        v25 = v44;
        v5 = v44 + 1;
        v16 = &selRef_setObject_forKey_;
        if (v6 != v44)
        {
          goto LABEL_18;
        }

LABEL_19:
        ++v6;
        if (v15 >= v46 || v5 >= v4)
        {
          goto LABEL_44;
        }
      }

      v25 = v15;
      v26 = v6 == v15++;
      v5 = v44;
      v16 = &selRef_setObject_forKey_;
      if (v26)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v6 = *v25;
      goto LABEL_19;
    }

LABEL_44:
    v40 = v6;
  }

LABEL_47:
  if (v40 != v15 || v40 >= (v15 + ((v46 - v15 + (v46 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v40, v15, 8 * ((v46 - v15) / 8));
  }

  return 1;
}

uint64_t sub_26B9325F4(void **__src, id *a2, id *a3, void **__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = __dst;
    if (__dst != a2 || &a2[v12] <= __dst)
    {
      memmove(__dst, a2, 8 * v12);
      v5 = a2;
    }

    v49 = &v15[v12];
    if (v10 < 8 || v5 <= v6)
    {
      v42 = v5;
    }

    else
    {
      v28 = &selRef_setObject_forKey_;
      v44 = v6;
      __srca = v15;
      do
      {
        v48 = v5;
        v29 = v5 - 1;
        --v4;
        v30 = v49;
        v45 = v29;
        while (1)
        {
          v31 = *--v30;
          v32 = *v29;
          v33 = v31;
          v34 = v32;
          v35 = [v33 v28[21]];
          v36 = [v35 displayName];

          if (v36)
          {
            sub_26B9AC504();
          }

          v37 = v28;
          v38 = [v34 v28[21]];
          v39 = [v38 displayName];

          if (v39)
          {
            sub_26B9AC504();
          }

          sub_26B92C070();
          v40 = sub_26B9ACA94();

          v28 = v37;
          v41 = (v4 + 1);
          if (v40 == -1)
          {
            break;
          }

          v29 = v45;
          if (v41 != v49)
          {
            *v4 = *v30;
          }

          --v4;
          v49 = v30;
          if (v30 <= __srca)
          {
            v49 = v30;
            v15 = __srca;
            v42 = v48;
            goto LABEL_47;
          }
        }

        v42 = v45;
        if (v41 != v48)
        {
          *v4 = *v45;
        }

        v15 = __srca;
        if (v49 <= __srca)
        {
          break;
        }

        v5 = v45;
      }

      while (v45 > v44);
    }
  }

  else
  {
    if (__dst != __src || &__src[v9] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 8 * v9);
      v5 = a2;
      __dst = v13;
    }

    v49 = &__dst[v9];
    v15 = __dst;
    if (v7 >= 8 && v5 < v4)
    {
      v16 = &selRef_setObject_forKey_;
      while (1)
      {
        v47 = v5;
        v17 = *v15;
        v18 = *v5;
        v19 = v17;
        v20 = [v18 v16[21]];
        v21 = [v20 displayName];

        if (v21)
        {
          sub_26B9AC504();
        }

        v22 = [v19 v16[21]];
        v23 = [v22 displayName];

        if (v23)
        {
          sub_26B9AC504();
        }

        sub_26B92C070();
        v24 = sub_26B9ACA94();

        if (v24 != -1)
        {
          break;
        }

        v25 = v47;
        v5 = v47 + 1;
        v16 = &selRef_setObject_forKey_;
        if (v6 != v47)
        {
          goto LABEL_18;
        }

LABEL_19:
        ++v6;
        if (v15 >= v49 || v5 >= v4)
        {
          goto LABEL_44;
        }
      }

      v25 = v15;
      v26 = v6 == v15++;
      v5 = v47;
      v16 = &selRef_setObject_forKey_;
      if (v26)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v6 = *v25;
      goto LABEL_19;
    }

LABEL_44:
    v42 = v6;
  }

LABEL_47:
  if (v42 != v15 || v42 >= (v15 + ((v49 - v15 + (v49 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v42, v15, 8 * ((v49 - v15) / 8));
  }

  return 1;
}

uint64_t sub_26B932A9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26B932B28(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26B932B3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804264F8, &unk_26B9B1C60);
  v38 = a2;
  result = sub_26B9ACD74();
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
      sub_26B9ACFB4();
      sub_26B9AC574();
      result = sub_26B9ACFF4();
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

void *sub_26B932DE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804264F8, &unk_26B9B1C60);
  v2 = *v0;
  v3 = sub_26B9ACD64();
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
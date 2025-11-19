void sub_26B59DB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SRSSPhoneticChecker;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<CMDPPhonomap>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v5 = (v2 + 3);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    MEMORY[0x26D67A4F0](v2, 0x60C40A6BFD4EDLL);
  }

  return a1;
}

void sub_26B5A0728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a28, 8);

  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose((v69 - 232), 8);
  _Block_object_dispose((v69 - 200), 8);
  _Block_object_dispose((v69 - 168), 8);
  _Block_object_dispose((v69 - 136), 8);

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279CF7360, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

_TtC30SpeechRecognitionSharedSupport36SRSSSpeechRecognitionPhoneticChecker *SRSSPhoneticCheckerCreate(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v6 = [[_TtC30SpeechRecognitionSharedSupport36SRSSSpeechRecognitionPhoneticChecker alloc] initWithLocaleIdentifier:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [SRSSPhoneticChecker alloc];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v8 = [(SRSSPhoneticChecker *)v9 initWithLocaleIdentifier:v10 modelPath:v11];
  }

  return v8;
}

uint64_t SRSSPhoneticCheckerCopyGuesses(void *a1, uint64_t a2, int a3, double a4, double a5)
{
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v10 = [a1 guessesForString:v9 maxResults:a3 phoneticWeight:a4 priorWeight:a5];

  return v10;
}

id SRSSSpeechRecognitionPhoneticChecker.init(localeIdentifier:)()
{
  v1 = v0;
  v2 = sub_26B5B5A68();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  (MEMORY[0x28223BE20])();
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B5B5A58();
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26B5B5A08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = OBJC_IVAR____TtC30SpeechRecognitionSharedSupport36SRSSSpeechRecognitionPhoneticChecker_logger;
  sub_26B5B5A28();
  sub_26B5B59F8();
  v18 = sub_26B5B5AA8();
  v19 = sub_26B5B5A78();
  v20 = sub_26B5A1834(v16, v19);

  if (v20)
  {
    (*(v10 + 16))(v14, v16, v9);
    (*(v30 + 104))(v8, *MEMORY[0x277CDCC88], v31);
    (*(v32 + 104))(v34, *MEMORY[0x277CDCC90], v33);
    v21 = *(v18 + 48);
    v22 = *(v18 + 52);
    swift_allocObject();
    v23 = sub_26B5B5A88();
    (*(v10 + 8))(v16, v9);
    *(v1 + OBJC_IVAR____TtC30SpeechRecognitionSharedSupport36SRSSSpeechRecognitionPhoneticChecker_phoneticEmbedder) = v23;
    v24 = type metadata accessor for SRSSSpeechRecognitionPhoneticChecker();
    v35.receiver = v1;
    v35.super_class = v24;
    return objc_msgSendSuper2(&v35, sel_init);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v26 = sub_26B5B5A48();
    (*(*(v26 - 8) + 8))(v1 + v17, v26);
    type metadata accessor for SRSSSpeechRecognitionPhoneticChecker();
    v27 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
    v28 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

BOOL sub_26B5A1834(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_26B5B5A08() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_26B5A2E88();
  }

  while ((sub_26B5B5AD8() & 1) == 0);
  return v4 != v5;
}

uint64_t type metadata accessor for SRSSSpeechRecognitionPhoneticChecker()
{
  result = qword_280407598;
  if (!qword_280407598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B5A1984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407590, &qword_26B5B6880);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  v10 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = dispatch_semaphore_create(0);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = sub_26B5B5C08();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v16 = v31;
  v15[4] = v3;
  v15[5] = v16;
  v15[6] = a1;
  v15[7] = a2;
  v15[8] = sub_26B5A23DC;
  v15[9] = v13;
  v31 = v11;

  v17 = v12;
  v18 = v3;

  sub_26B5A2074(0, 0, v9, &unk_26B5B6890, v15);

  sub_26B5B5C28();
  result = swift_beginAccess();
  v20 = *(v11 + 16);
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_15:

    return MEMORY[0x277D84F90];
  }

  if (v20 < 0)
  {
    v29 = *(v11 + 16);
  }

  result = sub_26B5B5C98();
  v21 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v21 >= 1)
  {
    v30 = v17;

    v22 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D67A1D0](v22, v20);
      }

      else
      {
        v23 = *(v20 + 8 * v22 + 32);
      }

      v24 = [objc_allocWithZone(SRSSPhoneticCheckerResult) init];
      sub_26B5B5AB8();
      v25 = sub_26B5B5AE8();

      [v24 setText_];

      sub_26B5B5AC8();
      [v24 setPhoneticSimilarity_];
      v26 = v24;
      MEMORY[0x26D67A0F0]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_26B5B5BB8();
      }

      ++v22;
      sub_26B5B5BD8();
    }

    while (v21 != v22);
    v28 = v32;

    return v28;
  }

  __break(1u);
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

uint64_t sub_26B5A1D24()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B5A1D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_26B5A1D8C, 0, 0);
}

uint64_t sub_26B5A1D8C()
{
  v0[8] = *(v0[2] + OBJC_IVAR____TtC30SpeechRecognitionSharedSupport36SRSSSpeechRecognitionPhoneticChecker_phoneticEmbedder);
  v1 = *(MEMORY[0x277CDCCA8] + 4);

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_26B5A1E48;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return MEMORY[0x28212C020](v5, v3, v4);
}

uint64_t sub_26B5A1E48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_26B5A1FEC;
  }

  else
  {
    v8 = *(v4 + 64);

    *(v4 + 88) = a1;
    v7 = sub_26B5A1F78;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26B5A1F78()
{
  v1 = *(v0 + 56);
  (*(v0 + 48))(*(v0 + 88));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B5A1FEC()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v4(MEMORY[0x277D84F90]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26B5A2074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407590, &qword_26B5B6880);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26B5A2A18(a3, v27 - v11);
  v13 = sub_26B5B5C08();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26B5A2A88(v12);
  }

  else
  {
    sub_26B5B5BF8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26B5B5BE8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26B5B5B08() + 32;
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

      sub_26B5A2A88(a3);

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

  sub_26B5A2A88(a3);
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

uint64_t sub_26B5A2334(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return sub_26B5B5C38();
}

uint64_t sub_26B5A239C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B5A23E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26B5A2434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_26B5A2520;

  return sub_26B5A1D5C(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_26B5A2520()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id SRSSSpeechRecognitionPhoneticChecker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SRSSSpeechRecognitionPhoneticChecker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRSSSpeechRecognitionPhoneticChecker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26B5A2898()
{
  result = sub_26B5B5A48();
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

unint64_t sub_26B5A29CC()
{
  result = qword_2804075A8;
  if (!qword_2804075A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804075A8);
  }

  return result;
}

uint64_t sub_26B5A2A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407590, &qword_26B5B6880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B5A2A88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280407590, &qword_26B5B6880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B5A2AF0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B5A2BE8;

  return v7(a1);
}

uint64_t sub_26B5A2BE8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26B5A2CE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B5A2D18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26B5A2EE4;

  return sub_26B5A2AF0(a1, v5);
}

uint64_t sub_26B5A2DD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26B5A2520;

  return sub_26B5A2AF0(a1, v5);
}

unint64_t sub_26B5A2E88()
{
  result = qword_2804075B0;
  if (!qword_2804075B0)
  {
    sub_26B5B5A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804075B0);
  }

  return result;
}

uint64_t sub_26B5A2EE8()
{
  v0 = sub_26B5B5A48();
  __swift_allocate_value_buffer(v0, qword_2804077D0);
  __swift_project_value_buffer(v0, qword_2804077D0);
  return sub_26B5B5A38();
}

uint64_t sub_26B5A2F38()
{

  v0 = sub_26B5B5B68();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_26B5B5B68();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_26B5B5CC8();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_26B5B5B68();
      v3 = v5;
    }

    while (v5);
  }

  sub_26B5B5B68();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_26B5A3094(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      if ((v1[1] & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      result = sub_26B5B5B48();
      if ((v2 & 1) == 0)
      {
        v5 = result;
        result = 15;
        v2 = v5;

        return MEMORY[0x2821FBD18](result, v2);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v2);
  }

  return result;
}

id SRSSPhoneticVocabularyIPAMappingHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SRSSPhoneticVocabularyIPAMappingHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRSSPhoneticVocabularyIPAMappingHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SRSSPhoneticVocabularyIPAMappingHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRSSPhoneticVocabularyIPAMappingHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_26B5A3298(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075C8, &qword_26B5B6960);
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

void *sub_26B5A339C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075D0, &qword_26B5B6968);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_26B5A3420(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26B5A34EC(v11, 0, 0, 1, a1, a2);
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
    sub_26B5A6760(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26B5A34EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26B5A35F8(a5, a6);
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
    result = sub_26B5B5C88();
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

uint64_t sub_26B5A35F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_26B5A3644(a1, a2);
  sub_26B5A3774(&unk_287C17730);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26B5A3644(uint64_t a1, unint64_t a2)
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

  v6 = sub_26B5A3860(v5, 0);
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

  result = sub_26B5B5C88();
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
        v10 = sub_26B5B5B78();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26B5A3860(v10, 0);
        result = sub_26B5B5C68();
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

uint64_t sub_26B5A3774(uint64_t result)
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

  result = sub_26B5A38D4(result, v12, 1, v3);
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

void *sub_26B5A3860(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075E0, &qword_26B5B6978);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26B5A38D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075E0, &qword_26B5B6978);
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

uint64_t sub_26B5A39C8(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_26B5A4CE8(v13, v7, v5, a3);
  result = MEMORY[0x26D67AAA0](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26B5A3B38(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B5A51C4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_26B5A3BEC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26B5A3BA4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_26B5B5B88();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B5A3BEC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B5B5CB8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075C0, &qword_26B5B6958);
        v5 = sub_26B5B5BC8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26B5A3E30(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26B5A3CF4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B5A3CF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 32;
    v6 = result - a3;
LABEL_5:
    v25 = a3;
    v7 = (v4 + 32 * a3);
    v9 = v7[1];
    v8 = v7[2];
    v10 = v7[3];
    v23 = v6;
    v24 = v5;
    while (1)
    {
      v11 = *(v5 + 8);
      v12 = *(v5 + 16);
      v13 = *(v5 + 24);

      v14 = sub_26B5B5B38();
      v15 = sub_26B5B5B38();

      if (v15 >= v14)
      {
LABEL_4:
        a3 = v25 + 1;
        v5 = v24 + 32;
        v6 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v16 = *(v5 + 32);
      v17 = *(v5 + 40);
      v18 = *(v5 + 48);
      v19 = *(v5 + 56);
      v20 = *(v5 + 16);
      *(v5 + 32) = *v5;
      *(v5 + 48) = v20;
      *v5 = v16;
      *(v5 + 8) = v17;
      *(v5 + 16) = v18;
      *(v5 + 24) = v19;
      v5 -= 32;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B5A3E30(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v120 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = v10;
    v10 = *v120;
    if (!*v120)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_26B5A4934(v5);
      v5 = result;
    }

    v108 = *(v5 + 2);
    if (v108 >= 2)
    {
      while (1)
      {
        v109 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v108 - 1);
        v110 = *&v5[16 * v108];
        v111 = *&v5[16 * v108 + 24];
        sub_26B5A4574((v109 + 32 * v110), (v109 + 32 * *&v5[16 * v108 + 16]), (v109 + 32 * v111), v10);
        if (v6)
        {
        }

        if (v111 < v110)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_26B5A4934(v5);
        }

        if (v108 - 2 >= *(v5 + 2))
        {
          goto LABEL_115;
        }

        v112 = &v5[16 * v108];
        *v112 = v110;
        *(v112 + 1) = v111;
        result = sub_26B5A48A8(v108 - 1);
        v108 = *(v5 + 2);
        v7 = a3;
        if (v108 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v22 = v12;
    }

    else
    {
      v129 = v8;
      v116 = v10;
      v118 = v6;
      v13 = (*v7 + 32 * v12);
      v15 = v13[1];
      v14 = v13[2];
      v16 = v13[3];
      v122 = 32 * v11;
      v17 = (*v7 + 32 * v11);
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];

      v127 = sub_26B5B5B38();
      v125 = sub_26B5B5B38();

      v114 = v11;
      v21 = v11 + 2;
      v5 = (v17 + 11);
      while (1)
      {
        v22 = v129;
        if (v129 == v21)
        {
          break;
        }

        v24 = *(v5 - 2);
        v23 = *(v5 - 1);
        v25 = *v5;
        v26 = *(v5 - 6);
        v27 = *(v5 - 5);
        v28 = *(v5 - 4);

        v29 = sub_26B5B5B38();
        v30 = sub_26B5B5B38();

        ++v21;
        v5 += 32;
        if (v125 < v127 == v30 >= v29)
        {
          v22 = v21 - 1;
          break;
        }
      }

      v10 = v116;
      v6 = v118;
      v7 = a3;
      v11 = v114;
      if (v125 < v127)
      {
        if (v22 < v114)
        {
          goto LABEL_118;
        }

        if (v114 < v22)
        {
          v31 = 32 * v22 - 16;
          v32 = v122 + 24;
          v33 = v22;
          v34 = v114;
          do
          {
            if (v34 != --v33)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v35 = (v41 + v32);
              v36 = (v41 + v31);
              v37 = *(v35 - 3);
              v38 = *(v35 - 1);
              v39 = *v35;
              v40 = *v36;
              *(v35 - 3) = *(v36 - 1);
              *(v35 - 1) = v40;
              *(v36 - 1) = v37;
              *v36 = v38;
              *(v36 + 1) = v39;
            }

            ++v34;
            v31 -= 32;
            v32 += 32;
          }

          while (v34 < v33);
        }
      }
    }

    v42 = v7[1];
    if (v22 < v42)
    {
      if (__OFSUB__(v22, v11))
      {
        goto LABEL_117;
      }

      if (v22 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v11 + a4 >= v42)
        {
          v43 = v7[1];
        }

        else
        {
          v43 = v11 + a4;
        }

        if (v43 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v22 != v43)
        {
          break;
        }
      }
    }

    v44 = v22;
    if (v22 < v11)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26B5A3298(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v46 = *(v10 + 2);
    v45 = *(v10 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_26B5A3298((v45 > 1), v46 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v47;
    v48 = &v10[16 * v46];
    *(v48 + 4) = v11;
    *(v48 + 5) = v44;
    v5 = *v120;
    if (!*v120)
    {
      goto LABEL_126;
    }

    v123 = v44;
    if (v46)
    {
      while (1)
      {
        v49 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v50 = *(v10 + 4);
          v51 = *(v10 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_48:
          if (v53)
          {
            goto LABEL_105;
          }

          v66 = &v10[16 * v47];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_108;
          }

          v72 = &v10[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_112;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v47 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v76 = &v10[16 * v47];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_62:
        if (v71)
        {
          goto LABEL_107;
        }

        v79 = &v10[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_69:
        v87 = v49 - 1;
        if (v49 - 1 >= v47)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v88 = *&v10[16 * v87 + 32];
        v89 = *&v10[16 * v49 + 40];
        sub_26B5A4574((*v7 + 32 * v88), (*v7 + 32 * *&v10[16 * v49 + 32]), (*v7 + 32 * v89), v5);
        if (v6)
        {
        }

        if (v89 < v88)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26B5A4934(v10);
        }

        if (v87 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v90 = &v10[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        result = sub_26B5A48A8(v49);
        v47 = *(v10 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v10[16 * v47 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_103;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_104;
      }

      v61 = &v10[16 * v47];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_106;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_109;
      }

      if (v65 >= v57)
      {
        v83 = &v10[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v47 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v123;
    if (v123 >= v8)
    {
      goto LABEL_89;
    }
  }

  v117 = v10;
  v119 = v6;
  v91 = *v7;
  v92 = *v7 + 32 * v22 - 32;
  v115 = v11;
  v93 = v11 - v22;
  v124 = v43;
LABEL_80:
  v128 = v92;
  v130 = v22;
  v94 = (v91 + 32 * v22);
  v5 = v94[1];
  v95 = v94[2];
  v96 = v94[3];
  v126 = v93;
  v97 = v93;
  while (1)
  {
    v98 = *(v92 + 8);
    v99 = *(v92 + 16);
    v100 = *(v92 + 24);

    v101 = sub_26B5B5B38();
    v102 = sub_26B5B5B38();

    if (v102 >= v101)
    {
LABEL_79:
      v22 = v130 + 1;
      v92 = v128 + 32;
      v44 = v124;
      v93 = v126 - 1;
      if (v130 + 1 != v124)
      {
        goto LABEL_80;
      }

      v10 = v117;
      v6 = v119;
      v7 = a3;
      v11 = v115;
      if (v124 < v115)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v91)
    {
      break;
    }

    v103 = *(v92 + 32);
    v5 = *(v92 + 40);
    v104 = *(v92 + 48);
    v105 = *(v92 + 56);
    v106 = *(v92 + 16);
    *(v92 + 32) = *v92;
    *(v92 + 48) = v106;
    *v92 = v103;
    *(v92 + 8) = v5;
    *(v92 + 16) = v104;
    *(v92 + 24) = v105;
    v92 -= 32;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_79;
    }
  }

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
  return result;
}

uint64_t sub_26B5A4574(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 5;
  v10 = a3 - __src;
  v11 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 5;
  if (v9 >= v11 >> 5)
  {
    v15 = a4;
    if (a4 != __src || &__src[32 * v12] <= a4)
    {
      memmove(a4, __src, 32 * v12);
    }

    v14 = &v15[32 * v12];
    if (v10 >= 32 && v5 > v6)
    {
      v48 = v6;
      v44 = v15;
LABEL_27:
      v46 = v5;
      v28 = v4 - 32;
      do
      {
        v29 = v28;
        v30 = v28 + 32;
        v31 = *(v14 - 3);
        v32 = *(v14 - 2);
        v33 = *(v14 - 1);
        v34 = *(v46 - 3);
        v35 = *(v46 - 2);
        v36 = *(v46 - 1);

        v37 = sub_26B5B5B38();
        v38 = sub_26B5B5B38();

        if (v38 < v37)
        {
          v41 = v46 - 32;
          v4 = v29;
          if (v30 != v46)
          {
            v42 = *(v46 - 1);
            *v29 = *v41;
            *(v29 + 1) = v42;
          }

          v15 = v44;
          if (v14 <= v44 || (v5 = v46 - 32, v41 <= v48))
          {
            v5 = v46 - 32;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        v39 = v14 - 32;
        if (v30 != v14)
        {
          v40 = *(v14 - 1);
          *v29 = *v39;
          *(v29 + 1) = v40;
        }

        v28 = v29 - 32;
        v14 -= 32;
        v15 = v44;
      }

      while (v39 > v44);
      v14 = v39;
      v5 = v46;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[32 * v9] <= a4)
    {
      v13 = a4;
      memmove(a4, __dst, 32 * v9);
      a4 = v13;
    }

    v14 = &a4[32 * v9];
    v15 = a4;
    if (v7 >= 32 && v5 < v4)
    {
      v45 = v4;
      while (1)
      {
        v47 = v6;
        v17 = *(v5 + 1);
        v16 = *(v5 + 2);
        v18 = *(v5 + 3);
        v19 = *(v15 + 1);
        v20 = *(v15 + 2);
        v21 = *(v15 + 3);

        v22 = sub_26B5B5B38();
        v23 = sub_26B5B5B38();

        if (v23 >= v22)
        {
          break;
        }

        v24 = v5;
        v25 = v47;
        v26 = v47 == v5;
        v5 += 32;
        if (!v26)
        {
          goto LABEL_17;
        }

LABEL_18:
        v6 = v25 + 32;
        if (v15 >= v14 || v5 >= v45)
        {
          goto LABEL_20;
        }
      }

      v24 = v15;
      v25 = v47;
      v26 = v47 == v15;
      v15 += 32;
      if (v26)
      {
        goto LABEL_18;
      }

LABEL_17:
      v27 = *(v24 + 1);
      *v25 = *v24;
      *(v25 + 1) = v27;
      goto LABEL_18;
    }

LABEL_20:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v15 || v5 >= &v15[(v14 - v15 + (v14 - v15 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v5, v15, 32 * ((v14 - v15) / 32));
  }

  return 1;
}

uint64_t sub_26B5A48A8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26B5A4934(v3);
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

unint64_t sub_26B5A4948(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26B5B5CC8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26B5A4A00(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 16 * v13 + 8);
    v15 = (*(a3 + 56) + 16 * v13);
    v16 = *v15;
    v17 = v15[1];

    v18 = sub_26B5A2F38();

    if ((v18 & 1) == 0)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_26B5A4D70(v21, a2, v22, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_26B5A4D70(v21, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B5A4B74(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 16 * v13 + 8);
    v15 = (*(a3 + 56) + 16 * v13);
    v16 = *v15;
    v17 = v15[1];

    v18 = sub_26B5A2F38();

    if (v18)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_26B5A4D70(v21, a2, v22, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_26B5A4D70(v21, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_26B5A4CE8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_26B5A4D70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075D8, &qword_26B5B6970);
  result = sub_26B5B5CA8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v37 = *v21;
    v23 = *(v9 + 40);
    sub_26B5B5CD8();

    sub_26B5B5B28();
    result = sub_26B5B5CE8();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v9 + 48) + v32);
    *v33 = v19;
    v33[1] = v20;
    v34 = (*(v9 + 56) + v32);
    *v34 = v37;
    v34[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_26B5A4FC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26B5B5CD8();
  sub_26B5B5B28();
  v6 = sub_26B5B5CE8();

  return sub_26B5A4948(a1, a2, v6);
}

void *sub_26B5A5040(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_26B5A51D8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075D0, &qword_26B5B6968);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075C0, &qword_26B5B6958);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_26B5A530C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075D8, &qword_26B5B6970);
    v3 = sub_26B5B5CA8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26B5A4FC8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_26B5A5420(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0x53555F6E65 && a2 == 0xE500000000000000;
  if (v2 || ((v5 = sub_26B5B5CC8(), a1 == 0x41435F6E65) ? (v6 = a2 == 0xE500000000000000) : (v6 = 0), !v6 ? (v7 = 0) : (v7 = 1), (v5 & 1) != 0 || (v7 & 1) != 0 || ((v8 = sub_26B5B5CC8(), a1 == 0x4E495F6E65) ? (v9 = a2 == 0xE500000000000000) : (v9 = 0), !v9 ? (v10 = 0) : (v10 = 1), (v8 & 1) != 0 || (v10 & 1) != 0 || (sub_26B5B5CC8() & 1) != 0)))
  {
    v11 = &unk_287C102B0;
LABEL_23:
    v12 = sub_26B5A530C(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075E8, &unk_26B5B6980);
    goto LABEL_24;
  }

  if (a1 == 0x4E435F687ALL && a2 == 0xE500000000000000 || (sub_26B5B5CC8() & 1) != 0)
  {
    v11 = &unk_287C10910;
    goto LABEL_23;
  }

  if (a1 == 0x55415F6E65 && a2 == 0xE500000000000000 || (sub_26B5B5CC8() & 1) != 0)
  {
    v11 = &unk_287C11CD0;
    goto LABEL_23;
  }

  if (a1 == 0x42475F6E65 && a2 == 0xE500000000000000 || (sub_26B5B5CC8() & 1) != 0)
  {
    v11 = &unk_287C12330;
    goto LABEL_23;
  }

  if (a1 == 0x53455F7365 && a2 == 0xE500000000000000 || (sub_26B5B5CC8() & 1) != 0)
  {
    v11 = &unk_287C12990;
    goto LABEL_23;
  }

  if (a1 == 0x53555F7365 && a2 == 0xE500000000000000 || (sub_26B5B5CC8() & 1) != 0)
  {
    v11 = &unk_287C12E10;
    goto LABEL_23;
  }

  if (a1 == 0x41435F7266 && a2 == 0xE500000000000000 || (sub_26B5B5CC8() & 1) != 0)
  {
    v11 = &unk_287C13290;
    goto LABEL_23;
  }

  if (a1 == 0x52465F7266 && a2 == 0xE500000000000000 || (sub_26B5B5CC8() & 1) != 0)
  {
    v11 = &unk_287C13770;
    goto LABEL_23;
  }

  if (a1 == 0x54495F7469 && a2 == 0xE500000000000000 || (sub_26B5B5CC8() & 1) != 0)
  {
    v11 = &unk_287C13C50;
    goto LABEL_23;
  }

  if (a1 == 0x504A2D616ALL && a2 == 0xE500000000000000 || (sub_26B5B5CC8() & 1) != 0)
  {
    v12 = sub_26B5A530C(&unk_287C14130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075E8, &unk_26B5B6980);
    goto LABEL_24;
  }

  if (a1 == 0x524B5F6F6BLL && a2 == 0xE500000000000000 || (sub_26B5B5CC8() & 1) != 0)
  {
    v12 = sub_26B5A530C(&unk_287C14830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075E8, &unk_26B5B6980);
    goto LABEL_24;
  }

  if (a1 == 0x4B485F687ALL && a2 == 0xE500000000000000 || (sub_26B5B5CC8() & 1) != 0)
  {
    v12 = sub_26B5A530C(&unk_287C14BF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075E8, &unk_26B5B6980);
    goto LABEL_24;
  }

  if (a1 == 0x57545F687ALL && a2 == 0xE500000000000000 || (sub_26B5B5CC8() & 1) != 0)
  {
    v11 = &unk_287C15D50;
    goto LABEL_23;
  }

  if ((a1 != 0x45445F6564 || a2 != 0xE500000000000000) && (sub_26B5B5CC8() & 1) == 0)
  {
    return 0;
  }

  v12 = sub_26B5A530C(&unk_287C17110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804075E8, &unk_26B5B6980);
LABEL_24:
  swift_arrayDestroy();
  return v12;
}

uint64_t _s30SpeechRecognitionSharedSupport38SRSSPhoneticVocabularyIPAMappingHelperC5nvASR7fromIPA6locale9separatorS2S_S2StFZ_0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = sub_26B5B59E8();
  v67 = *(v68 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26B5A5420(a3, a4);
  if (!v10)
  {
    if (qword_280407580 != -1)
    {
      goto LABEL_69;
    }

    goto LABEL_6;
  }

  v84 = a1;
  v85 = a2;
  v90 = 32;
  v91 = 0xE100000000000000;
  v88 = 0;
  v89 = 0xE000000000000000;
  v11 = v10;
  v12 = sub_26B5A6700();
  v78 = sub_26B5B5C58();
  v79 = v13;
  v90 = v78;
  v91 = v13;

  a3 = 0;
  a4 = sub_26B5A39C8(v14, sub_26B5A4B74, sub_26B5A4B74);
  v69 = v11;

  v15 = *(a4 + 16);
  if (v15)
  {
    v16 = sub_26B5A339C(*(a4 + 16), 0);
    v17 = sub_26B5A5040(&v84, v16 + 4, v15, a4);
    a3 = v86;
    v77 = v87;

    sub_26B5A6754();
    if (v17 != v15)
    {
      goto LABEL_67;
    }

    a3 = 0;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v84 = v16;
  sub_26B5A3B38(&v84);

  v77 = v84;

  a4 = sub_26B5A39C8(v24, sub_26B5A4A00, sub_26B5A4A00);

  v25 = *(a4 + 16);
  if (v25)
  {
    v26 = sub_26B5A339C(*(a4 + 16), 0);
    v27 = sub_26B5A5040(&v84, v26 + 4, v25, a4);
    a3 = v85;
    v76 = v87;

    sub_26B5A6754();
    if (v27 != v25)
    {
      goto LABEL_68;
    }

    a3 = 0;
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v84 = v26;
  sub_26B5A3B38(&v84);

  v29 = v84;
  v84 = 0;
  v85 = 0xE000000000000000;
  v30 = HIBYTE(v79) & 0xF;
  if ((v79 & 0x2000000000000000) == 0)
  {
    v30 = v78 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
LABEL_62:

    v88 = v84;
    v89 = v85;
    v63 = v66;
    sub_26B5B59D8();
    v64 = sub_26B5B5C48();
    (*(v67 + 8))(v63, v68);

    return v64;
  }

  v72 = 0;
  v71 = v77 + 7;
  v70 = v29 + 7;
  *&v28 = 136315138;
  v65 = v28;
  v75 = v12;
  v73 = v29;
  while (1)
  {
    v76 = v77[2];
    if (v76)
    {
      v32 = 0;
      v33 = 35019;
      if ((v72 & 1) == 0)
      {
        v33 = 0;
      }

      v74 = v33;
      if (v72)
      {
        v34 = 0xA200000000000000;
      }

      else
      {
        v34 = 0xE000000000000000;
      }

      v35 = v71;
      while (1)
      {
        if (v32 >= v77[2])
        {
          __break(1u);
          goto LABEL_64;
        }

        v36 = *(v35 - 3);
        a4 = *(v35 - 2);
        v38 = *(v35 - 1);
        v37 = *v35;
        v88 = v74;
        v89 = v34;

        MEMORY[0x26D67A0B0](v78, v79);

        v88 = v38;
        v89 = v37;
        v82 = 32;
        v83 = 0xE100000000000000;
        v80 = 0;
        v81 = 0xE000000000000000;
        sub_26B5B5C58();
        a3 = sub_26B5A2F38();

        if (a3)
        {
          break;
        }

        v32 = (v32 + 1);
        v35 += 4;
        if (v76 == v32)
        {
          goto LABEL_32;
        }
      }

      v88 = v38;
      v89 = v37;
      v82 = 32;
      v83 = 0xE100000000000000;
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_26B5B5C58();
      a3 = v54;

      v55 = sub_26B5B5B38();

      if (__OFSUB__(v55, v72 & 1))
      {
        goto LABEL_66;
      }

      sub_26B5A3094(v55 - (v72 & 1));
      v88 = v36;
      v89 = a4;

      MEMORY[0x26D67A0B0](46, 0xE100000000000000);

      a4 = v89;
      MEMORY[0x26D67A0B0](v88, v89);

      v72 = 0;
      goto LABEL_19;
    }

LABEL_32:
    v39 = v73[2];
    if (v39)
    {
      break;
    }

LABEL_37:
    if (v76)
    {
      v45 = 0;
      v46 = v71;
      while (v45 < v77[2])
      {
        v47 = *(v46 - 3);
        a4 = *(v46 - 2);
        v48 = *v46;
        v88 = *(v46 - 1);
        v89 = v48;
        v82 = 35019;
        v83 = 0xA200000000000000;
        v80 = 0;
        v81 = 0xE000000000000000;

        v49 = sub_26B5B5C58();
        a3 = v50;
        v88 = v49;
        v89 = v50;
        v81 = 0xE000000000000000;
        v82 = 32;
        v83 = 0xE100000000000000;
        v80 = 0;
        sub_26B5B5C58();

        if (sub_26B5A2F38())
        {
          a3 = sub_26B5B5B38();

          sub_26B5A3094(a3);
          v88 = v47;
          goto LABEL_54;
        }

        v45 = (v45 + 1);
        v46 += 4;
        if (v76 == v45)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_65;
    }

LABEL_42:
    v51 = sub_26B5A3BA4(v78, v79);
    if (!v52)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v53 = v51;
    a4 = v52;
    sub_26B5A3094(1);
    if (v53 == 35019 && a4 == 0xA200000000000000 || (sub_26B5B5CC8() & 1) != 0)
    {

      v72 = 1;
    }

    else
    {
      if (v53 == 46 && a4 == 0xE100000000000000 || (sub_26B5B5CC8() & 1) != 0)
      {
      }

      else
      {
        if (qword_280407580 != -1)
        {
          swift_once();
        }

        v58 = sub_26B5B5A48();
        __swift_project_value_buffer(v58, qword_2804077D0);

        v59 = sub_26B5B5A18();
        v60 = sub_26B5B5C18();

        if (os_log_type_enabled(v59, v60))
        {
          a3 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v88 = v61;
          *a3 = v65;
          v62 = sub_26B5A3420(v53, a4, &v88);

          *(a3 + 4) = v62;
          _os_log_impl(&dword_26B59C000, v59, v60, "SRSSPhoneticVocabularyIPAMappingHelper Warning: unrecognized character: %s", a3, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v61);
          MEMORY[0x26D67AAA0](v61, -1, -1);
          MEMORY[0x26D67AAA0](a3, -1, -1);
        }

        else
        {
        }
      }

      v72 = 0;
    }

LABEL_19:
    v31 = HIBYTE(v91) & 0xF;
    v78 = v90;
    v79 = v91;
    if ((v91 & 0x2000000000000000) == 0)
    {
      v31 = v90 & 0xFFFFFFFFFFFFLL;
    }

    if (!v31)
    {
      goto LABEL_62;
    }
  }

  v40 = 0;
  v41 = v70;
  while (v40 < v39)
  {
    v42 = *(v41 - 3);
    a4 = *(v41 - 2);
    v44 = *(v41 - 1);
    v43 = *v41;
    v88 = v44;
    v89 = v43;
    v82 = 32;
    v83 = 0xE100000000000000;
    v80 = 0;
    v81 = 0xE000000000000000;

    sub_26B5B5C58();
    a3 = sub_26B5A2F38();

    if (a3)
    {
      v88 = v44;
      v89 = v43;
      v82 = 32;
      v83 = 0xE100000000000000;
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_26B5B5C58();
      a3 = v56;

      v57 = sub_26B5B5B38();

      sub_26B5A3094(v57);
      v88 = v42;
LABEL_54:
      v89 = a4;

      MEMORY[0x26D67A0B0](46, 0xE100000000000000);

      a4 = v89;
      MEMORY[0x26D67A0B0](v88, v89);

      goto LABEL_19;
    }

    ++v40;
    v39 = v73[2];
    v41 += 4;
    if (v40 == v39)
    {
      goto LABEL_37;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  swift_once();
LABEL_6:
  v18 = sub_26B5B5A48();
  __swift_project_value_buffer(v18, qword_2804077D0);

  v19 = sub_26B5B5A18();
  v20 = sub_26B5B5C18();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v84 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_26B5A3420(a3, a4, &v84);
    _os_log_impl(&dword_26B59C000, v19, v20, "SRSSPhoneticVocabularyIPAMappingHelper unsupportedLocale: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x26D67AAA0](v22, -1, -1);
    MEMORY[0x26D67AAA0](v21, -1, -1);
  }

  return 0;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_26B5A6700()
{
  result = qword_2804075B8;
  if (!qword_2804075B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804075B8);
  }

  return result;
}

uint64_t sub_26B5A6760(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

uint64_t *CMDPPhonomap::CMDPPhonomap(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[3] = 0;
  v3 = (a1 + 3);
  a1[4] = 0;
  a1[5] = 0;
  v4 = fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Read(a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v4 = *a1;
  }

  a1[2] = (*(*v4 + 96))(v4);
  v6 = (*(**a1 + 104))();
  a1[1] = v6;
  __p = 0;
  v22 = 0;
  v23 = 0;
  v7 = (*(*v6 + 120))(v6);
  std::vector<float>::resize(&__p, v7);
  v8 = (*(*a1[2] + 120))(a1[2]);
  std::vector<std::vector<float>>::resize(v3, v8, &__p);
  v9 = *(*(*a1 + 8) + 56);
  v10 = *(*(*a1 + 8) + 64) - v9;
  if ((v10 >> 3) >= 1)
  {
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      v13 = *(v9 + 8 * v11);
      v14 = *(v13 + 24);
      v15 = *(v13 + 32);
      if (v14 == v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = v14;
      }

      if (v14 != v15)
      {
        v17 = (v15 - v14) >> 4;
        v18 = *v3;
        if (v17 <= 1)
        {
          v17 = 1;
        }

        v19 = (v16 + 8);
        do
        {
          *(*(v18 + 24 * *(v19 - 2)) + 4 * *(v19 - 1)) = *v19;
          v19 += 4;
          --v17;
        }

        while (v17);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_26B5A69F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v13 = *v11;
  *v11 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Read(uint64_t a1)
{
  if (fst::ImplToExpandedFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Read(a1))
  {
    operator new();
  }

  return 0;
}

void sub_26B5A6AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x26D67A4F0](v10, v11);
  _Unwind_Resume(a1);
}

void std::vector<float>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v2);
  }
}

void std::vector<std::vector<float>>::resize(size_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<std::vector<float>>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v4 - 16) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

uint64_t fst::ImplToExpandedFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Read(uint64_t a1)
{
  v14[19] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "standard input");
    fst::FstReadOptions::FstReadOptions(v12, __p, 0, 0, 0);
    fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Read();
  }

  std::ifstream::basic_ifstream(v12, a1);
  if ((v13[*(v12[0] - 3) + 16] & 5) == 0)
  {
    fst::FstReadOptions::FstReadOptions(__p, a1, 0, 0, 0);
    fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::Read();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  LogMessage::LogMessage(&v11, __p);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "ExpandedFst::Read: Can't open file: ", 36);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v12[0] = *MEMORY[0x277D82808];
  *(v12 + *(v12[0] - 3)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x26D67A340](v13);
  std::istream::~istream();
  MEMORY[0x26D67A4B0](v14);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_26B5A6E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a24, MEMORY[0x277D82808]);
  MEMORY[0x26D67A4B0](&a72);
  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x26D67A330](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_26B5A7078(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x26D67A4B0](v1);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_26B5A7528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a23);
  (*(*v23 + 8))(v23);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x26D67A3C0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x26D67A3D0](v13);
  return a1;
}

void sub_26B5A7710(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x26D67A3D0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x26B5A76F0);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_26B5A7944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

BOOL *LogMessage::LogMessage(BOOL *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    if (*(a2 + 8) != 5)
    {
LABEL_12:
      v8 = 0;
      goto LABEL_13;
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (v3 != 5)
    {
      goto LABEL_12;
    }
  }

  v5 = *v4;
  v6 = *(v4 + 4);
  v8 = v5 == 1096040774 && v6 == 76;
LABEL_13:
  *a1 = v8;
  v9 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v10 = v9;
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], a2, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
  return a1;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279CF7368, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void LogMessage::~LogMessage(LogMessage *this)
{
  std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
  v2 = std::locale::use_facet(&v3, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v3);
  std::ostream::put();
  std::ostream::flush();
  if (*this == 1)
  {
    exit(1);
  }
}

uint64_t fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ReadHeader(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = *(a3 + 24);
  if (v10)
  {
    *a5 = *v10;
    std::string::operator=((a5 + 8), (v10 + 8));
    std::string::operator=((a5 + 32), (v10 + 32));
    v11 = *(v10 + 88);
    v12 = *(v10 + 72);
    *(a5 + 56) = *(v10 + 56);
    *(a5 + 72) = v12;
    *(a5 + 88) = v11;
  }

  else
  {
    v13 = fst::FstHeader::Read(a5, a2, a3, 0);
    result = 0;
    if (!v13)
    {
      return result;
    }
  }

  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    LogMessage::LogMessage(&v85, __p);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "FstImpl::ReadHeader: source: ", 29);
    v16 = *(a3 + 23);
    v17 = v16 >= 0 ? a3 : *a3;
    v18 = v16 >= 0 ? *(a3 + 23) : *(a3 + 8);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", fst_type: ", 12);
    v21 = *(a5 + 31);
    v22 = v21 >= 0 ? a5 + 8 : *(a5 + 8);
    v23 = v21 >= 0 ? *(a5 + 31) : *(a5 + 16);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", arc_type: ", 12);
    v26 = fst::ArcTpl<fst::TropicalWeightTpl<float>>::Type();
    v27 = *(v26 + 23);
    v28 = v27 >= 0 ? v26 : *v26;
    v29 = v27 >= 0 ? *(v26 + 23) : *(v26 + 8);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v28, v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", version: ", 11);
    v32 = MEMORY[0x26D67A3F0](v31, *(a5 + 56));
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ", flags: ", 9);
    MEMORY[0x26D67A3F0](v33, *(a5 + 60));
    LogMessage::~LogMessage(&v85);
    if (v84 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v34 = (a1 + 16);
  v35 = *(a5 + 31);
  if (v35 >= 0)
  {
    v36 = *(a5 + 31);
  }

  else
  {
    v36 = *(a5 + 16);
  }

  v37 = *(a1 + 39);
  v38 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v37 = *(a1 + 24);
  }

  if (v36 != v37 || (v35 >= 0 ? (v39 = (a5 + 8)) : (v39 = *(a5 + 8)), (v40 = *v34, v38 >= 0) ? (v41 = (a1 + 16)) : (v41 = *v34), memcmp(v39, v41, v36)))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v85, __p);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "FstImpl::ReadHeader: FST not of type ", 37);
    v43 = *(a1 + 39);
    if (v43 >= 0)
    {
      v44 = a1 + 16;
    }

    else
    {
      v44 = *(a1 + 16);
    }

    if (v43 >= 0)
    {
      v45 = *(a1 + 39);
    }

    else
    {
      v45 = *(a1 + 24);
    }

    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v44, v45);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ": ", 2);
    v48 = *(a3 + 23);
    if (v48 >= 0)
    {
      v49 = a3;
    }

    else
    {
      v49 = *a3;
    }

    if (v48 >= 0)
    {
      v50 = *(a3 + 23);
    }

    else
    {
      v50 = *(a3 + 8);
    }

LABEL_50:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v49, v50);
    LogMessage::~LogMessage(&v85);
    if (v84 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v51 = fst::ArcTpl<fst::TropicalWeightTpl<float>>::Type();
  v52 = *(a5 + 55);
  if (v52 >= 0)
  {
    v53 = *(a5 + 55);
  }

  else
  {
    v53 = *(a5 + 40);
  }

  v54 = *(v51 + 23);
  v55 = v54;
  if ((v54 & 0x80u) != 0)
  {
    v54 = *(v51 + 8);
  }

  if (v53 != v54 || (v52 >= 0 ? (v56 = (a5 + 32)) : (v56 = *(a5 + 32)), v55 >= 0 ? (v57 = v51) : (v57 = *v51), memcmp(v56, v57, v53)))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v85, __p);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "FstImpl::ReadHeader: Arc not of type ", 37);
    v59 = fst::ArcTpl<fst::TropicalWeightTpl<float>>::Type();
    v60 = *(v59 + 23);
    if (v60 >= 0)
    {
      v61 = v59;
    }

    else
    {
      v61 = *v59;
    }

    if (v60 >= 0)
    {
      v62 = *(v59 + 23);
    }

    else
    {
      v62 = *(v59 + 8);
    }

    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v61, v62);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, ": ", 2);
    v64 = *(a3 + 23);
    if (v64 >= 0)
    {
      v49 = a3;
    }

    else
    {
      v49 = *a3;
    }

    if (v64 >= 0)
    {
      v50 = *(a3 + 23);
    }

    else
    {
      v50 = *(a3 + 8);
    }

    goto LABEL_50;
  }

  if (*(a5 + 56) < a4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v85, __p);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "FstImpl::ReadHeader: Obsolete ", 30);
    v66 = *(a1 + 39);
    if (v66 >= 0)
    {
      v67 = a1 + 16;
    }

    else
    {
      v67 = *(a1 + 16);
    }

    if (v66 >= 0)
    {
      v68 = *(a1 + 39);
    }

    else
    {
      v68 = *(a1 + 24);
    }

    v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v67, v68);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " FST version: ", 14);
    v70 = *(a3 + 23);
    if (v70 >= 0)
    {
      v49 = a3;
    }

    else
    {
      v49 = *a3;
    }

    if (v70 >= 0)
    {
      v50 = *(a3 + 23);
    }

    else
    {
      v50 = *(a3 + 8);
    }

    goto LABEL_50;
  }

  *(a1 + 8) = *(a5 + 64);
  if (*(a5 + 60))
  {
    v71 = fst::SymbolTable::Read(a2, a3);
    v72 = *(a1 + 40);
    *(a1 + 40) = v71;
    if (v72)
    {
      (*(*v72 + 8))(v72);
    }
  }

  if ((*(a3 + 52) & 1) == 0)
  {
    v73 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v73)
    {
      (*(*v73 + 8))(v73);
    }
  }

  if ((*(a5 + 60) & 2) != 0)
  {
    v74 = fst::SymbolTable::Read(a2, a3);
    v75 = *(a1 + 48);
    *(a1 + 48) = v74;
    if (v75)
    {
      (*(*v75 + 8))(v75);
    }
  }

  if ((*(a3 + 53) & 1) == 0)
  {
    v76 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v76)
    {
      (*(*v76 + 8))(v76);
    }
  }

  v77 = *(a3 + 32);
  if (v77)
  {
    v78 = (*(*v77 + 16))(v77);
    v79 = *(a1 + 40);
    *(a1 + 40) = v78;
    if (v79)
    {
      (*(*v79 + 8))(v79);
    }
  }

  v80 = *(a3 + 40);
  if (v80)
  {
    v81 = (*(*v80 + 16))(v80);
    v82 = *(a1 + 48);
    *(a1 + 48) = v81;
    if (v82)
    {
      (*(*v82 + 8))(v82);
    }
  }

  return 1;
}

void sub_26B5A824C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::FstHeader::~FstHeader(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_287C178D0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = -1;
  *a1 = &unk_287C17830;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x956A5A950003;
  return a1;
}

void sub_26B5A84B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

uint64_t fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(void *a1)
{
  *a1 = &unk_287C178A0;
  v3 = a1 + 7;
  v2 = a1[7];
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(v2[v4++]);
      v2 = a1[7];
    }

    while (v4 < (a1[8] - v2) >> 3);
  }

  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(a1);
}

void fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstImpl(void *a1)
{
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x26D67A4F0);
}

void fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(void *a1)
{
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(a1);

  JUMPOUT(0x26D67A4F0);
}

void fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(uint64_t a1)
{
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(a1);

  JUMPOUT(0x26D67A4F0);
}

uint64_t fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~FstImpl(uint64_t a1)
{
  *a1 = &unk_287C178D0;
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(void *__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      __p[4] = v2;
      operator delete(v2);
    }

    operator delete(__p);
  }
}

uint64_t fst::ArcTpl<fst::TropicalWeightTpl<float>>::Type()
{
  {
    operator new();
  }

  return fst::ArcTpl<fst::TropicalWeightTpl<float>>::Type(void)::type;
}

uint64_t fst::SymbolTable::Read(void *a1, const std::string *a2)
{
  *__p = 0u;
  v6 = 0u;
  std::string::operator=(&__p[1], a2);
  v3 = fst::SymbolTable::Read(a1);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  return v3;
}

uint64_t fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (*(*a2 + 16))(a2);
  }

  else
  {
    v3 = 0;
  }

  result = *(a1 + 40);
  *(a1 + 40) = v3;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

uint64_t fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (*(*a2 + 16))(a2);
  }

  else
  {
    v3 = 0;
  }

  result = *(a1 + 48);
  *(a1 + 48) = v3;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

uint64_t fst::TropicalWeightTpl<float>::Type()
{
  {
    operator new();
  }

  return fst::TropicalWeightTpl<float>::Type(void)::type;
}

void sub_26B5A8AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x26D67A4F0](v15, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t fst::SymbolTable::Read(void *a1)
{
  if (fst::internal::SymbolTableImpl::Read(a1))
  {
    operator new();
  }

  return 0;
}

void std::shared_ptr<fst::internal::SymbolTableImpl>::shared_ptr[abi:ne200100]<fst::internal::SymbolTableImpl,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_26B5A8CC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<fst::internal::SymbolTableImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

fst::internal::SymbolTableImpl **std::unique_ptr<fst::internal::SymbolTableImpl>::~unique_ptr[abi:ne200100](fst::internal::SymbolTableImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    fst::internal::SymbolTableImpl::~SymbolTableImpl(v2);
    MEMORY[0x26D67A4F0]();
  }

  return a1;
}

void std::__shared_ptr_pointer<fst::internal::SymbolTableImpl *,std::shared_ptr<fst::internal::SymbolTableImpl>::__shared_ptr_default_delete<fst::internal::SymbolTableImpl,fst::internal::SymbolTableImpl>,std::allocator<fst::internal::SymbolTableImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D67A4F0);
}

fst::internal::SymbolTableImpl *std::__shared_ptr_pointer<fst::internal::SymbolTableImpl *,std::shared_ptr<fst::internal::SymbolTableImpl>::__shared_ptr_default_delete<fst::internal::SymbolTableImpl,fst::internal::SymbolTableImpl>,std::allocator<fst::internal::SymbolTableImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    fst::internal::SymbolTableImpl::~SymbolTableImpl(result);

    JUMPOUT(0x26D67A4F0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::internal::SymbolTableImpl *,std::shared_ptr<fst::internal::SymbolTableImpl>::__shared_ptr_default_delete<fst::internal::SymbolTableImpl,fst::internal::SymbolTableImpl>,std::allocator<fst::internal::SymbolTableImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void fst::internal::SymbolTableImpl::~SymbolTableImpl(fst::internal::SymbolTableImpl *this)
{
  std::mutex::~mutex((this + 216));
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(this + 136, *(this + 18));
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = (this + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void fst::SymbolTableReadOptions::~SymbolTableReadOptions(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void *std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(result, a2);
    }

    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

int *fst::TropicalWeightTpl<float>::Zero()
{
  {
    fst::TropicalWeightTpl<float>::Zero();
  }

  return &fst::TropicalWeightTpl<float>::Zero(void)::zero;
}

void *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(result, a2);
    }

    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26B5A91E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 12) = *(v2 + 12);
      v2 += 16;
      v5 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[1];
  }

  if (!a2[1])
  {
    ++a1[2];
  }

  return std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](a1 + 3, a2);
}

uint64_t std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::ArcTpl<fst::TropicalWeightTpl<float>> const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 12) = *(a2 + 12);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__emplace_back_slow_path<fst::ArcTpl<fst::TropicalWeightTpl<float>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, v7);
  }

  v8 = 16 * v2;
  __p = 0;
  v12 = v8;
  v14 = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 12) = *(a2 + 12);
  v13 = 16 * v2 + 16;
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_26B5A946C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x26D67A340](a1 + 2);

  return std::istream::~istream();
}

void sub_26B5A95D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::shared_ptr[abi:ne200100]<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::shared_ptr<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__shared_ptr_default_delete<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D67A4F0);
}

uint64_t std::__shared_ptr_pointer<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::shared_ptr<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__shared_ptr_default_delete<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>> *,std::shared_ptr<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__shared_ptr_default_delete<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFst(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ImplToMutableFst(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_287C179F0;
  return a1;
}

void sub_26B5A9710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ImplToMutableFst(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[1] = v4;
  a1[2] = v3;
  *a1 = &unk_287C17CE0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_287C17BB8;
  return a1;
}

void *fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFst(void *a1)
{
  *a1 = &unk_287C17E08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFst(void *a1)
{
  *a1 = &unk_287C17E08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26D67A4F0);
}

float fst::ImplToFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Final@<S0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 56) + 8 * a2);
  result = *v3;
  *a3 = *v3;
  return result;
}

uint64_t fst::ImplToFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 24);

    return v7();
  }
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 64) - *(v2 + 56)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 56) + 8 * a2) + 24);
  v4 = *v5;
  v6 = (v5[1] - *v5) >> 4;
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    std::allocate_shared[abi:ne200100]<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&,0>();
  }

  return result;
}

unint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 80) = a2;
  result = (*(*v4 + 16))(v4);
  *(v4 + 8) = result & 0xCCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

float fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v8 = *a3;
  return fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFinal(v6, a2, &v8);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 24))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddState(uint64_t a1)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState();
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 16))(v4);
  v4[1] = v4[1] & 4 | result & 0x806A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteStates(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || *(v1 + 8))
  {
    v2 = *(a1 + 8);
    v4 = *(v2 + 40);
    v3 = *(v2 + 48);
    _ZNSt3__115allocate_sharedB8ne200100IN3fst8internal13VectorFstImplINS1_11VectorStateINS1_6ArcTplINS1_17TropicalWeightTplIfEEEENS_9allocatorIS8_EEEEEENS9_ISC_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v5 = *(a1 + 8);
  fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(v5);
  result = (*(*v5 + 16))(v5);
  v5[1] = (*(v5 + 2) | result) & 4 | 0x956A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(*(v6[7] + 8 * a2), a3);
  result = (*(*v6 + 16))(v6);
  v6[1] = v6[1] & 4 | result & 0x8A6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[7] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 16))(v4);
  v4[1] = v4[1] & 4 | result & 0x8A6A5A950007;
  return result;
}

void *fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 56);

  return std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(v4, a2);
}

void *fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 56) + 8 * a2) + 24);

  return std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(v6, a3);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  LogMessage::LogMessage(&v11, __p);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write: No write stream method for ", 39);
  v3 = (*(*a1 + 64))(a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " FST type", 9);
  LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  LogMessage::LogMessage(&v11, __p);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write: No write filename method for ", 41);
  v3 = (*(*a1 + 64))(a1);
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " FST type", 9);
  LogMessage::~LogMessage(&v11);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_26B5AA2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26B5AA3C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (FLAGS_fst_verify_properties == 1)
  {
    v6 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
    v7 = fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, a3, 0);
    if (!fst::CompatProperties(v6, v7))
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      LogMessage::LogMessage(&v12, __p);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "TestProperties: stored FST properties incorrect", 47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " (stored: props1, computed: props2)", 35);
      LogMessage::~LogMessage(&v12);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return v7;
  }

  else
  {

    return fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1, a2, a3, 1);
  }
}

void sub_26B5AA580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::ComputeProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0007, 0);
  v9 = v8;
  if (a4)
  {
    v10 = v8 & 0xFFFFFFFF0000 | (2 * v8) & 0xAAAAAAAA0000 | (v8 >> 1) & 0x555555550000 | 7;
    if ((a2 & ~v10) == 0)
    {
      if (a3)
      {
        *a3 = v10;
      }

      return v9;
    }
  }

  v9 = v8 & 7;
  v45 = 0;
  v46 = v9;
  v43 = 0;
  v44 = 0;
  v11 = a2 & 0xCF3C00000000;
  if ((a2 & 0xCF3C00000000) != 0)
  {
    v38 = &v43;
    *&v39 = 0;
    *(&v39 + 1) = &v46;
    v41 = 0u;
    v42 = 0u;
    fst::DfsVisit<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>,fst::AnyArcFilter<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>(a1, &v38);
  }

  if ((a2 & 0xFFFFF0C3FFFFFFF8) == 0)
  {
    goto LABEL_92;
  }

  v33 = 0;
  v12 = 0x10425A810000;
  if ((a2 & 0xC0000) != 0)
  {
    v12 = 0x10425A850000;
  }

  v13 = v9 | v12;
  if ((a2 & 0x300000) != 0)
  {
    v13 |= 0x100000uLL;
  }

  v46 = v13;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  (*(*a1 + 112))(a1, &v33);
  v14 = 0;
LABEL_13:
  if (!v33)
  {
    if (v35 >= v34)
    {
      goto LABEL_84;
    }

    goto LABEL_18;
  }

  if (!(*(*v33 + 16))(v33))
  {
    if (v33)
    {
      v15 = (*(*v33 + 24))();
LABEL_19:
      if ((a2 & 0xC0000) != 0)
      {
        operator new();
      }

      if ((a2 & 0x300000) != 0)
      {
        operator new();
      }

      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      (*(*a1 + 120))(a1, v15, &v38);
      v16 = 1;
      while (v38)
      {
        if ((*(*v38 + 16))(v38))
        {
          if (v38)
          {
            (*(*v38 + 8))();
            goto LABEL_71;
          }

LABEL_69:
          if (*(&v39 + 1))
          {
            --**(&v39 + 1);
          }

LABEL_71:
          if (v14 > 0)
          {
            v46 = v46 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
          }

          (*(*a1 + 24))(&v47, a1, v15);
          v27 = fst::TropicalWeightTpl<float>::Zero();
          LODWORD(v38) = v47;
          HIDWORD(v47) = *v27;
          if (*&v47 == *(&v47 + 1))
          {
            if ((*(*a1 + 32))(a1, v15, *&v47) != 1)
            {
              v46 = v46 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
            }
          }

          else
          {
            v28 = fst::TropicalWeightTpl<float>::One();
            LODWORD(v38) = v47;
            HIDWORD(v47) = *v28;
            v29.n128_u32[0] = v47;
            if (*&v47 != *(&v47 + 1))
            {
              v46 = v46 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
            }

            ++v14;
          }

          if (v33)
          {
            (*(*v33 + 32))(v33, v29);
          }

          else
          {
            ++v35;
          }

          goto LABEL_13;
        }

        if (!v38)
        {
          goto LABEL_29;
        }

        v17 = (*(*v38 + 24))();
LABEL_30:
        if (v37 && std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v37, v17))
        {
          v46 = v46 & 0xFFFFFFFFFFF3FFFFLL | 0x80000;
        }

        if (v36 && std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v36, v17 + 1))
        {
          v46 = v46 & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
        }

        v18 = *v17;
        v19 = *v17;
        if (*v17 != v17[1])
        {
          v46 = v46 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
          v19 = v17[1];
        }

        if (v18 | v19)
        {
          if (v18)
          {
            if (!v19)
            {
              goto LABEL_46;
            }

            goto LABEL_42;
          }

          v20 = v46;
        }

        else
        {
          v20 = v46 & 0xFFFFFFFFFF3FFFFFLL | 0x400000;
        }

        v46 = v20 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
        if (!v19)
        {
LABEL_46:
          v46 = v46 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
          if (v16)
          {
            goto LABEL_51;
          }

          goto LABEL_47;
        }

LABEL_42:
        if (v16)
        {
          goto LABEL_51;
        }

LABEL_47:
        if (v18 < v11)
        {
          v46 = v46 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
        }

        if (v19 < SHIDWORD(v11))
        {
          v46 = v46 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
        }

LABEL_51:
        v21 = fst::TropicalWeightTpl<float>::One();
        HIDWORD(v47) = v17[2];
        LODWORD(v47) = *v21;
        v22.n128_u32[0] = HIDWORD(v47);
        if (*(&v47 + 1) != *&v47)
        {
          v23 = fst::TropicalWeightTpl<float>::Zero();
          HIDWORD(v47) = v17[2];
          LODWORD(v47) = *v23;
          v22.n128_u32[0] = HIDWORD(v47);
          if (*(&v47 + 1) != *&v47)
          {
            v24 = v46;
            v25 = v46 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
            v46 = v25;
            if ((v24 & 0x800000000000) != 0 && v43[v15] == v43[v17[3]])
            {
              v46 = v25 & 0xFFFF3FFDFFFFFFFFLL | 0x400000000000;
            }
          }
        }

        v26 = v17[3];
        if (v26 <= v15)
        {
          v46 = v46 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
        }

        if (v26 != v15 + 1)
        {
          v46 = v46 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
        }

        v11 = *v17;
        if (v37)
        {
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v37, v17);
        }

        if (v36)
        {
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v36, v17 + 1);
        }

        if (v38)
        {
          (*(*v38 + 32))(v38, v22);
          v16 = 0;
        }

        else
        {
          v16 = 0;
          ++v40;
        }
      }

      if (v40 >= v39)
      {
        goto LABEL_69;
      }

LABEL_29:
      v17 = (*(&v38 + 1) + 16 * v40);
      goto LABEL_30;
    }

LABEL_18:
    v15 = v35;
    goto LABEL_19;
  }

  if (v33)
  {
    (*(*v33 + 8))();
  }

LABEL_84:
  if ((*(*a1 + 16))(a1) != -1 && (*(*a1 + 16))(a1))
  {
    v46 = v46 & 0xFFFFCFFFFFFFFFFFLL | 0x200000000000;
  }

  if (v36)
  {
    v30 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v36);
    MEMORY[0x26D67A4F0](v30, 0x10A0C408EF24B1CLL);
  }

  if (v37)
  {
    v31 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v37);
    MEMORY[0x26D67A4F0](v31, 0x10A0C408EF24B1CLL);
  }

  v9 = v46;
LABEL_92:
  if (a3)
  {
    *a3 = v9 & 0xFFFFFFFF0000 | (2 * v9) & 0xAAAAAAAA0000 | (v9 >> 1) & 0x555555550000 | 7;
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v9;
}

void sub_26B5AAE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  std::unique_ptr<std::unordered_set<int>>::reset[abi:ne200100](va, 0);
  std::unique_ptr<std::unordered_set<int>>::reset[abi:ne200100](va1, 0);
  v9 = *(v7 - 128);
  if (v9)
  {
    *(v7 - 120) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

BOOL fst::CompatProperties(unint64_t this, unint64_t a2)
{
  v2 = (((2 * a2) & 0xAAAAAAAA0000 | a2 & 0xFFFFFFFF0000 | (a2 >> 1) & 0x555555550000) & ((this >> 1) & 0x555555550000 | (2 * this) & 0xAAAAAAAA0000 | this) | 7) & (a2 ^ this);
  if (v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      if ((v6 & v2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        LogMessage::LogMessage(&v20, __p);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "CompatProperties: Mismatch: ", 28);
        v8 = strlen(fst::PropertyNames[v5]);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, fst::PropertyNames[v5], v8);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ": props1 = ", 11);
        if ((v6 & this) != 0)
        {
          v11 = "true";
        }

        else
        {
          v11 = "false";
        }

        if ((v6 & this) != 0)
        {
          v12 = 4;
        }

        else
        {
          v12 = 5;
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", props2 = ", 11);
        if ((v6 & a2) != 0)
        {
          v15 = "true";
        }

        else
        {
          v15 = "false";
        }

        if ((v6 & a2) != 0)
        {
          v16 = 4;
        }

        else
        {
          v16 = 5;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
        LogMessage::~LogMessage(&v20);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 *= 2;
      ++v5;
    }

    while (v5 != 64);
  }

  return v2 == 0;
}

void sub_26B5AB07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::unordered_set<int>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(result);

    JUMPOUT(0x26D67A4F0);
  }

  return result;
}

int *fst::TropicalWeightTpl<float>::One()
{
  {
    fst::TropicalWeightTpl<float>::One();
  }

  return &fst::TropicalWeightTpl<float>::One(void)::one;
}

void sub_26B5AB9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  std::__list_imp<std::unique_ptr<char []>>::clear(&a23);
  std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::InitVisit(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    *(*a1 + 8) = **a1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(v3 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(v4 + 8) = 0;
    *(a1 + 52) = 0;
    **(a1 + 24) = **(a1 + 24) & 0xFFFFF0C3FFFFFFFFLL | 0x52800000000;
    *(a1 + 32) = a2;
    v5 = (*(*a2 + 16))(a2);
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = v5;
    operator new();
  }

  operator new();
}

void fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::FinishVisit(uint64_t a1)
{
  if (*a1)
  {
    v2 = **a1;
    v3 = *(*a1 + 8) - v2;
    if (v3)
    {
      v4 = v3 >> 2;
      if (v4 <= 1)
      {
        v4 = 1;
      }

      do
      {
        *v2 = *(a1 + 48) + ~*v2;
        ++v2;
        --v4;
      }

      while (v4);
    }
  }

  if (*(a1 + 52) == 1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      if (*v5)
      {
        operator delete(*v5);
      }

      MEMORY[0x26D67A4F0](v5, 0x1010C40113C0ABBLL);
    }
  }

  v6 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v6)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](a1 + 56, v6);
  }

  v7 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v7)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](a1 + 64, v7);
  }

  v8 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v8)
  {
    std::default_delete<std::vector<BOOL>>::operator()[abi:ne200100](a1 + 72, v8);
  }

  v11 = *(a1 + 80);
  v10 = (a1 + 80);
  v9 = v11;
  *v10 = 0;
  if (v11)
  {

    std::default_delete<std::vector<int>>::operator()[abi:ne200100](v10, v9);
  }
}

uint64_t fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(uint64_t a1)
{
  if ((*(*a1 + 56))(a1, 1, 0))
  {
    v2 = *(*a1 + 136);

    return v2(a1);
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  (*(*a1 + 112))(a1, &v5);
  v4 = 0;
  while (1)
  {
    while (!v5)
    {
      if (v7 >= v6)
      {
        return v4;
      }

      v4 = (v4 + 1);
LABEL_12:
      ++v7;
    }

    if ((*(*v5 + 16))(v5))
    {
      break;
    }

    v4 = (v4 + 1);
    if (!v5)
    {
      goto LABEL_12;
    }

    (*(*v5 + 32))();
  }

  if (v5)
  {
    (*(*v5 + 8))();
  }

  return v4;
}

{
  return (*(*a1 + 8))(a1);
}

void sub_26B5ABEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::InitState(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 80);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  if (v8 >= v7)
  {
    v10 = *v6;
    v11 = v8 - *v6;
    v12 = v11 >> 2;
    v13 = (v11 >> 2) + 1;
    if (v13 >> 62)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 1 > v13)
    {
      v13 = v14 >> 1;
    }

    v15 = v14 >= 0x7FFFFFFFFFFFFFFCLL;
    v16 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v16 = v13;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(*(a1 + 80), v16);
    }

    *(4 * v12) = a2;
    v9 = 4 * v12 + 4;
    memcpy(0, v10, v11);
    v17 = *v6;
    *v6 = 0;
    *(v6 + 8) = v9;
    *(v6 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = a2;
    v9 = (v8 + 1);
  }

  *(v6 + 8) = v9;
  for (i = **(a1 + 56); a2 >= ((*(*(a1 + 56) + 8) - i) >> 2); i = **(a1 + 56))
  {
    v19 = *a1;
    if (*a1)
    {
      v36 = -1;
      std::vector<int>::push_back[abi:ne200100](v19, &v36);
    }

    v20 = *(a1 + 8);
    if (v20)
    {
      v35 = 0;
      std::vector<BOOL>::push_back(v20, &v35);
    }

    v21 = *(a1 + 16);
    v34 = 0;
    std::vector<BOOL>::push_back(v21, &v34);
    v22 = *(a1 + 56);
    v33 = -1;
    std::vector<int>::push_back[abi:ne200100](v22, &v33);
    v23 = *(a1 + 64);
    v32 = -1;
    std::vector<int>::push_back[abi:ne200100](v23, &v32);
    v24 = *(a1 + 72);
    v31 = 0;
    std::vector<BOOL>::push_back(v24, &v31);
  }

  v25 = *(a1 + 44);
  *(i + 4 * a2) = v25;
  v26 = *(a1 + 72);
  *(**(a1 + 64) + 4 * a2) = v25;
  v27 = a2 >> 6;
  v28 = 1 << a2;
  *(*v26 + 8 * v27) |= 1 << a2;
  v29 = *(a1 + 8);
  if (*(a1 + 40) == a3)
  {
    if (v29)
    {
      *(*v29 + 8 * v27) |= v28;
    }
  }

  else
  {
    if (v29)
    {
      *(*v29 + 8 * v27) &= ~v28;
    }

    **(a1 + 24) = **(a1 + 24) & 0xFFFFFCFFFFFFFFFFLL | 0x20000000000;
  }

  ++*(a1 + 44);
  return 1;
}

unint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::FinishState(uint64_t a1, int a2, int a3)
{
  (*(**(a1 + 32) + 24))(&v20);
  result = fst::TropicalWeightTpl<float>::Zero();
  v21 = v20;
  HIDWORD(v20) = *result;
  if (*&v20 != *(&v20 + 1))
  {
    *(**(a1 + 16) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = **(a1 + 64);
  if (*(**(a1 + 56) + 4 * a2) != *(v7 + 4 * a2))
  {
    goto LABEL_16;
  }

  v8 = 0;
  v9 = *(a1 + 80);
  v10 = **(a1 + 16);
  v11 = (*(v9 + 8) - 4);
  v12 = v11;
  do
  {
    v13 = *v12--;
    v8 |= *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
  }

  while (v13 != a2);
  v14 = *a1;
  v15 = **(a1 + 72);
  while (1)
  {
    v16 = *v11;
    if (v14)
    {
      *(*v14 + 4 * v16) = *(a1 + 48);
    }

    result = v16 >> 6;
    v17 = 1 << v16;
    if ((v8 & 1) == 0)
    {
      break;
    }

    *(v10 + 8 * result) |= v17;
    *(v15 + 8 * result) &= ~v17;
    if (v16 == a2)
    {
      *(v9 + 8) = v11;
      goto LABEL_15;
    }

LABEL_13:
    --v11;
  }

  *(v15 + 8 * result) &= ~v17;
  if (v16 != a2)
  {
    goto LABEL_13;
  }

  *(v9 + 8) = v11;
  **(a1 + 24) = **(a1 + 24) & 0xFFFFF3FFFFFFFFFFLL | 0x80000000000;
LABEL_15:
  ++*(a1 + 48);
LABEL_16:
  if (a3 != -1)
  {
    v18 = **(a1 + 16);
    if ((*(v18 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
    {
      *(v18 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    }

    v19 = *(v7 + 4 * a2);
    if (v19 < *(v7 + 4 * a3))
    {
      *(v7 + 4 * a3) = v19;
    }
  }

  return result;
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::BackArc(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = *(**(a1 + 56) + 4 * v3);
  v5 = **(a1 + 64);
  if (v4 < *(v5 + 4 * a2))
  {
    *(v5 + 4 * a2) = v4;
  }

  v6 = **(a1 + 16);
  if ((*(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
  {
    *(v6 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  v7 = *(a1 + 24);
  v8 = *v7 & 0xFFFFFFF3FFFFFFFFLL | 0x400000000;
  *v7 = v8;
  if (v3 == *(a1 + 40))
  {
    *v7 = v8 & 0xFFFFFFC7FFFFFFFFLL | 0x1000000000;
  }

  return 1;
}

uint64_t fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::ForwardOrCrossArc(void **a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = *a1[7];
  v5 = *(v4 + 4 * v3);
  if (v5 >= *(v4 + 4 * a2))
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
  }

  else
  {
    v6 = v3 >> 6;
    v7 = 1 << v3;
    if ((*(*a1[9] + 8 * v6) & v7) != 0)
    {
      v8 = *a1[8];
      if (v5 < *(v8 + 4 * a2))
      {
        *(v8 + 4 * a2) = v5;
      }
    }
  }

  v9 = *a1[2];
  if ((*(v9 + 8 * v6) & v7) != 0)
  {
    *(v9 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  }

  return 1;
}

void *fst::MemoryPool<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C17F98;
  a1[1] = &unk_287C17FC0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void std::default_delete<std::vector<int>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x26D67A4F0);
  }
}

void std::default_delete<std::vector<BOOL>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (a2)
  {
    if (*a2)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x26D67A4F0);
  }
}

void fst::MemoryPool<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~MemoryPool(void *a1)
{
  *a1 = &unk_287C17F98;
  a1[1] = &unk_287C17FC0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D67A4F0);
}

void *fst::internal::MemoryPoolImpl<48ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C17F98;
  a1[1] = &unk_287C17FC0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);
  return a1;
}

void fst::internal::MemoryPoolImpl<48ul>::~MemoryPoolImpl(void *a1)
{
  *a1 = &unk_287C17F98;
  a1[1] = &unk_287C17FC0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 4);

  JUMPOUT(0x26D67A4F0);
}

void fst::internal::MemoryArenaImpl<56ul>::MemoryArenaImpl(void *a1, uint64_t a2)
{
  *a1 = &unk_287C17FC0;
  a1[1] = 56 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void *fst::internal::MemoryArenaImpl<56ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C17FC0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);
  return a1;
}

void fst::internal::MemoryArenaImpl<56ul>::~MemoryArenaImpl(void *a1)
{
  *a1 = &unk_287C17FC0;
  std::__list_imp<std::unique_ptr<char []>>::clear(a1 + 3);

  JUMPOUT(0x26D67A4F0);
}

void std::__list_imp<std::unique_ptr<char []>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      std::__list_imp<std::unique_ptr<char []>>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<std::unique_ptr<char []>>::__delete_node[abi:ne200100](int a1, void *__p)
{
  v3 = __p[2];
  __p[2] = 0;
  if (v3)
  {
    MEMORY[0x26D67A4D0](v3, 0x1000C8077774924);
  }

  operator delete(__p);
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void *std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::emplace_back<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **&>(a1, &v10);
}

void sub_26B5ACC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::emplace_back<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::emplace_front<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **> &>::emplace_back<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **> &>::emplace_front<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::internal::MemoryArenaImpl<56ul>::Allocate(void *a1, uint64_t a2)
{
  v3 = 56 * a2;
  v4 = a1[1];
  if (224 * a2 > v4)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_26B5AD4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::deque<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **,std::allocator<fst::internal::DfsState<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> **>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *fst::SccVisitor<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::~SccVisitor(void *a1)
{
  v4 = a1[10];
  v2 = a1 + 10;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100](v2, v3);
  }

  v5 = a1[9];
  a1[9] = 0;
  if (v5)
  {
    std::default_delete<std::vector<BOOL>>::operator()[abi:ne200100]((a1 + 9), v5);
  }

  v6 = a1[8];
  a1[8] = 0;
  if (v6)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100]((a1 + 8), v6);
  }

  v7 = a1[7];
  a1[7] = 0;
  if (v7)
  {
    std::default_delete<std::vector<int>>::operator()[abi:ne200100]((a1 + 7), v7);
  }

  return a1;
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::WriteFst<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(void *a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  *v28 = 0u;
  *v29 = 0u;
  v6 = -1;
  v33 = 0;
  v34 = 0;
  v32 = -1;
  v32 = (*(*a1 + 16))(a1);
  v33 = -1;
  if (*(*a1 + 56))(a1, 1, 0) || (*(a3 + 28))
  {
    v6 = 0;
LABEL_4:
    v7 = 0;
    v33 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1);
    goto LABEL_5;
  }

  v26 = a2 + *(*a2 - 24);
  if ((v26[32] & 5) == 0)
  {
    (*(**(v26 + 5) + 32))(__p);
    v6 = v36;
    if (v36 != -1)
    {
      goto LABEL_4;
    }
  }

  v7 = 1;
LABEL_5:
  v8 = (*(*a1 + 56))(a1, 0xFFFFFFFF0004, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::WriteFstHeader(a1, a2, a3, 2, __p, v8 | 3, &v27 + 4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v9 = *(a1[1] + 64) - *(a1[1] + 56);
  if ((v9 >> 3) < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (v9 >> 3) & 0x7FFFFFFF;
    do
    {
      (*(*a1 + 24))(&v27, a1, v10);
      LODWORD(__p[0].__r_.__value_.__l.__data_) = v27;
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 32))(a1, v10);
      std::ostream::write();
      v12 = *(*(a1[1] + 56) + 8 * v10);
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      if (v13 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(v12 + 24);
      }

      if (v13 != v14)
      {
        v16 = (v14 - v13) >> 4;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = (v15 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v18 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v18;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v18[1];
          std::ostream::write();
          v18 += 4;
          --v17;
        }

        while (v17);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v27, __p);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "VectorFst::Write: Write failed: ", 32);
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
LABEL_29:
    LogMessage::~LogMessage(&v27);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_32;
  }

  if (!v7)
  {
    if (v33 == v11)
    {
      updated = 1;
      goto LABEL_32;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v27, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Inconsistent number of states observed during write", 51);
    goto LABEL_29;
  }

  v33 = v11;
  std::string::basic_string[abi:ne200100]<0>(__p, "vector");
  updated = fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v8 | 3, &v27 + 4, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  if (SHIBYTE(v29[0]) < 0)
  {
    operator delete(v28[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
  return updated;
}

uint64_t fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ArcTpl<fst::TropicalWeightTpl<float>>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 96))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 104))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    fst::FstHeader::Write(a7);
  }

  if ((*(*a1 + 96))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 96))(a1);
    (*(*v17 + 144))(v17, a2);
  }

  result = (*(*a1 + 104))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 104))(a1) + 144);

    return v19();
  }

  return result;
}

uint64_t fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x277D85DE8];
  MEMORY[0x26D67A3C0](v27);
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    __p = 0u;
    v30 = 0u;
    v37 = a8;
    (*(*v17 + 40))(v28);
    if (v28[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  MEMORY[0x26D67A3D0](v27);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    LogMessage::LogMessage(v28, &__p);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::UpdateFstHeader: Write failed: ", 36);
    v19 = *(a3 + 23);
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = *(a3 + 8);
    }
  }

  else
  {
    fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      LogMessage::LogMessage(v28, &__p);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::UpdateFstHeader: Write failed: ", 36);
      v22 = *(a3 + 23);
      if (v22 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v22 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = *(a3 + 8);
      }
    }

    else
    {
      MEMORY[0x26D67A3C0](v28, a2);
      v23 = a2 + *(*a2 - 24);
      if ((v23[32] & 5) == 0)
      {
        (*(**(v23 + 5) + 32))(&__p);
        if (v37 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      MEMORY[0x26D67A3D0](v28);
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        result = 1;
        goto LABEL_31;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      LogMessage::LogMessage(v28, &__p);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::UpdateFstHeader: Write failed: ", 36);
      v24 = *(a3 + 23);
      if (v24 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      if (v24 >= 0)
      {
        v21 = *(a3 + 23);
      }

      else
      {
        v21 = *(a3 + 8);
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  LogMessage::~LogMessage(v28);
  if (SBYTE7(v30) < 0)
  {
    operator delete(__p);
  }

  result = 0;
LABEL_31:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::WriteFile(uint64_t a1, uint64_t a2)
{
  v29[19] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    std::ofstream::basic_ofstream(&v23, a2);
    if ((v28[*(v23.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
      LogMessage::LogMessage(&v22, &__p);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write: Can't open file: ", 29);
      v6 = *(a2 + 23);
      if (v6 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      if (v6 >= 0)
      {
        v8 = *(a2 + 23);
      }

      else
      {
        v8 = *(a2 + 8);
      }

      goto LABEL_31;
    }

    v10 = FLAGS_fst_align;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    v18 = 257;
    v19 = 1;
    v20 = v10;
    v21 = 0;
    v12 = (*(*a1 + 80))(a1, &v23, &__p);
    v13 = v12;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v13)
      {
        goto LABEL_23;
      }
    }

    else if (v12)
    {
LABEL_23:
      v11 = 1;
LABEL_34:
      v23.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82810];
      *(v23.__r_.__value_.__r.__words + *(v23.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82810] + 24);
      MEMORY[0x26D67A340](&v23.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x26D67A4B0](v29);
      goto LABEL_35;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    LogMessage::LogMessage(&v22, &__p);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Fst::Write failed: ", 19);
    v14 = *(a2 + 23);
    if (v14 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v14 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

LABEL_31:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    LogMessage::~LogMessage(&v22);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 = 0;
    goto LABEL_34;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
  v9 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v23 = __p;
  }

  v24 = 257;
  v25 = 1;
  v26 = v9;
  v27 = 0;
  v11 = (*(*a1 + 80))(a1, MEMORY[0x277D82678], &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_35:
  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_26B5AED88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ofstream::~ofstream(&a21, MEMORY[0x277D82810]);
  MEMORY[0x26D67A4B0](&a72);
  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x26D67A330](a1 + 1);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_26B5AEFB8(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26D67A4B0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x26D67A340](a1 + 1);

  return std::ostream::~ostream();
}

void *std::__shared_ptr_emplace<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>> const&,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C18010;
  fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFstImpl((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287C18010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D67A4F0);
}

uint64_t fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFstImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287C178D0;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *a1 = &unk_287C17830;
  std::string::basic_string[abi:ne200100]<0>(&__p, "vector");
  std::string::operator=((a1 + 16), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = (*(*a2 + 96))(a2);
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(a1, v4);
  v5 = (*(*a2 + 104))(a2);
  fst::internal::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(a1, v5);
  *(a1 + 80) = (*(*a2 + 16))(a2);
  if ((*(*a2 + 56))(a2, 1, 0))
  {
    v6 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a2);
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve((a1 + 56), v6);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  (*(*a2 + 112))(a2, &v9);
  if (v9)
  {
    if (!(*(*v9 + 16))(v9))
    {
      if (v9)
      {
        (*(*v9 + 24))();
      }

LABEL_10:
      fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddState();
    }

    if (v9)
    {
      (*(*v9 + 8))();
    }
  }

  else if (v11 < v10)
  {
    goto LABEL_10;
  }

  *(a1 + 8) = (*(*a2 + 56))(a2, 0xFFFFFFFF0004, 0) | *(a1 + 8) & 4 | 3;
  return a1;
}

uint64_t fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1 || *(v1 + 8))
  {
    std::allocate_shared[abi:ne200100]<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &,0>();
  }

  return result;
}

void *std::__shared_ptr_emplace<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::ImplToMutableFst<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> &,std::allocator<fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C18010;
  fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFstImpl((a1 + 3), a2);
  return a1;
}

float fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFinal(void *a1, int a2, float *a3)
{
  v9 = **(a1[7] + 8 * a2);
  v6 = (*(*a1 + 16))(a1);
  v7 = fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(v6, &v9, a3);
  result = *a3;
  **(a1[7] + 8 * a2) = *a3;
  a1[1] = a1[1] & 4 | v7;
  return result;
}

uint64_t fst::SetFinalProperties<fst::TropicalWeightTpl<float>>(unint64_t a1, float *a2, float *a3)
{
  if (*a2 != *fst::TropicalWeightTpl<float>::Zero() && *a2 != *fst::TropicalWeightTpl<float>::One())
  {
    a1 &= ~0x100000000uLL;
  }

  if (*a3 != *fst::TropicalWeightTpl<float>::Zero() && *a3 != *fst::TropicalWeightTpl<float>::One())
  {
    a1 = a1 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  return a1 & 0xC3FFFFFF0007;
}

uint64_t fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(void *a1, int a2, float *a3)
{
  v6 = *(*(a1[7] + 8 * a2) + 32);
  if (v6 == *(*(a1[7] + 8 * a2) + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 16);
  }

  v8 = (*(*a1 + 16))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(v8, a2, a3, v7);
  v9 = *(a1[7] + 8 * a2);

  return fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(unint64_t a1, int a2, float *a3, _DWORD *a4)
{
  v7 = *a3;
  v6 = *(a3 + 1);
  v8 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v6)
  {
    v8 = a1;
  }

  v9 = v8 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v6)
  {
    v9 = v8 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (v7 == 0.0)
  {
    v8 = v9;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 <= SLODWORD(v7))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v6)
    {
      v10 = v11 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }

    else
    {
      v10 = v11;
    }
  }

  if (a3[2] != *fst::TropicalWeightTpl<float>::Zero() && a3[2] != *fst::TropicalWeightTpl<float>::One())
  {
    v10 = v10 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  }

  if (*(a3 + 3) <= a2)
  {
    v12 = v10 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  else
  {
    v12 = v10;
  }

  if ((v12 & 0x4000000000) != 0)
  {
    return v12 & 0x45D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v12 & 0x45D7FFEB0007;
  }
}

void fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v4 = (a1 + 56);
  std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 64) - *(a1 + 56)) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = __p[0];
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v5;
      v5 += 4;
      v8[v9] = -1;
      --v7;
    }

    while (v7);
  }

  v10 = *(a1 + 56);
  if (*(a1 + 64) == v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(__p[0] + v11) == -1)
      {
        fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(v10 + 8 * v11));
      }

      else
      {
        *(__p[0] + v11) = v12;
        if (v11 != v12)
        {
          *(v10 + 8 * v12) = *(v10 + 8 * v11);
        }

        ++v12;
      }

      ++v11;
      v10 = *(a1 + 56);
    }

    while (v11 < (*(a1 + 64) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::resize(v4, v13);
  v14 = *(a1 + 56);
  if (*(a1 + 64) != v14)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 8 * v15);
      v17 = *(v16 + 24);
      v18 = *(v16 + 32);
      v19 = *(v16 + 8);
      v21 = v18 - v17;
      v20 = v18 == v17;
      if (v18 == v17)
      {
        v22 = 0;
      }

      else
      {
        v22 = *(v16 + 24);
      }

      if (v20)
      {
        v24 = 0;
        v31 = v21 >> 4;
        v32 = *(v16 + 16);
        v33 = *(v16 + 8);
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = (v22 + 12);
        do
        {
          v26 = *(__p[0] + *v25);
          if (v26 == -1)
          {
            v28 = *(v25 - 3);
            v29.i64[0] = v28;
            v29.i64[1] = HIDWORD(v28);
            v19 = vaddq_s64(v19, vceqzq_s64(v29));
          }

          else
          {
            *v25 = v26;
            if (v23 != v24)
            {
              v27 = v22 + 16 * v24;
              *v27 = *(v25 - 3);
              *(v27 + 8) = *(v25 - 1);
              *(v27 + 12) = v26;
              v14 = *v4;
            }

            ++v24;
          }

          v16 = *(v14 + 8 * v15);
          ++v23;
          v30 = *(v16 + 32) - *(v16 + 24);
          v25 += 4;
        }

        while (v23 < v30 >> 4);
        v31 = v30 >> 4;
        v32 = v19.i64[1];
        v33 = v19.i64[0];
      }

      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(v16, v31 - v24);
      v14 = *(a1 + 56);
      v34 = *(a1 + 64);
      v35 = *(v14 + 8 * v15);
      *(v35 + 8) = v33;
      *(v35 + 16) = v32;
      ++v15;
    }

    while (v15 < (v34 - v14) >> 3);
  }

  v36 = *(a1 + 80);
  if (v36 == -1)
  {
    v37 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v37 = __p[0];
    *(a1 + 80) = *(__p[0] + v36);
  }

  __p[1] = v37;
  operator delete(v37);
}

void sub_26B5AFE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__append(a1, a2 - v2);
  }
}

void *fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    v3 = -16 * a2;
    v4 = (v2 - 16);
    v5 = (v2 - 16);
    do
    {
      v6 = *v5;
      v5 -= 4;
      if (!v6)
      {
        --result[1];
      }

      if (!v4[1])
      {
        --result[2];
      }

      v4 = v5;
      --a2;
    }

    while (a2);
    result[4] = v2 + v3;
  }

  return result;
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B5AFFEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
}

void std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void *_ZNSt3__120__shared_ptr_emplaceIN3fst8internal13VectorFstImplINS1_11VectorStateINS1_6ArcTplINS1_17TropicalWeightTplIfEEEENS_9allocatorIS8_EEEEEENS9_ISC_EEEC2B8ne200100IJESD_Li0EEESD_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287C18010;
  fst::internal::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFstImpl((a1 + 3));
  return a1;
}

void fst::internal::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 64) != v2)
  {
    v3 = 0;
    do
    {
      fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(v2 + 8 * v3++));
      v2 = *(a1 + 56);
    }

    while (v3 < (*(a1 + 64) - v2) >> 3);
  }

  *(a1 + 64) = v2;
  *(a1 + 80) = -1;
}

int *fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>::SetValue(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 24) + 16 * *(a1 + 24);
  v5 = *v4;
  v6 = *(v4 + 4);
  if (*v4 != v6)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v5)
  {
    if (!v6)
    {
      v7 = *(a1 + 16);
      v8 = *v7;
LABEL_8:
      *v7 = v8 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v9 = *v7;
    *v7 &= ~0x1000000uLL;
    if (!v6)
    {
      v8 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      *v7 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      goto LABEL_8;
    }
  }

  if (*(v4 + 8) != *fst::TropicalWeightTpl<float>::Zero() && *(v4 + 8) != *fst::TropicalWeightTpl<float>::One())
  {
    **(a1 + 16) &= ~0x100000000uLL;
  }

  fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArc(*(a1 + 8), a2, *(a1 + 24));
  v10 = *a2;
  v11 = *(a2 + 4);
  if (*a2 != v11)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v10)
  {
    if (!v11)
    {
      v12 = *(a1 + 16);
      v13 = *v12;
LABEL_19:
      *v12 = v13 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
    }
  }

  else
  {
    v12 = *(a1 + 16);
    v14 = *v12 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v12 = v14;
    if (!v11)
    {
      v13 = v14 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v12 = v13;
      goto LABEL_19;
    }
  }

  result = fst::TropicalWeightTpl<float>::Zero();
  if (*(a2 + 8) != *result)
  {
    result = fst::TropicalWeightTpl<float>::One();
    if (*(a2 + 8) != *result)
    {
      **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  **(a1 + 16) &= 0x30FC30007uLL;
  return result;
}

float fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetArc(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3] + 16 * a3;
  if (!*v3)
  {
    --a1[1];
  }

  if (!*(v3 + 4))
  {
    --a1[2];
  }

  if (!*a2)
  {
    ++a1[1];
  }

  if (!*(a2 + 4))
  {
    ++a1[2];
  }

  *v3 = *a2;
  result = *(a2 + 8);
  *(v3 + 8) = result;
  *(v3 + 12) = *(a2 + 12);
  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

size_t *std::vector<std::vector<float>>::__append(size_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v7, *a3, a3[1], (a3[1] - *a3) >> 2);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    std::__split_buffer<std::vector<float>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1] - *v5;
    v15 = v19 - v14;
    memcpy((v19 - v14), *v5, v14);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<std::vector<float>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_26B5B0854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<float>>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B5B0958(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void fst::TropicalWeightTpl<float>::Zero()
{
  {
    fst::TropicalWeightTpl<float>::Zero(void)::zero = 2139095040;
  }
}

void fst::TropicalWeightTpl<float>::One()
{
  {
    fst::TropicalWeightTpl<float>::One(void)::one = 0;
  }
}

fst::internal::DenseSymbolMap *fst::internal::DenseSymbolMap::DenseSymbolMap(fst::internal::DenseSymbolMap *this)
{
  *this = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<long long>::vector[abi:ne200100](this + 5, 0x10uLL);
  v3 = *(this + 5);
  v2 = *(this + 6);
  *(this + 8) = ((v2 - v3) >> 3) - 1;
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v5 = 0;
    v6 = *this;
    v7 = (v4 - 8) >> 3;
    v8 = vdupq_n_s64(v7);
    v9 = (v3 + 8);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v5), xmmword_26B5B69A0)));
      if (v10.i8[0])
      {
        *(v9 - 1) = v6;
      }

      if (v10.i8[4])
      {
        *v9 = v6;
      }

      v5 += 2;
      v9 += 2;
    }

    while (((v7 + 2) & 0x3FFFFFFFFFFFFFFELL) != v5);
  }

  return this;
}

void sub_26B5B0C24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

fst::internal::DenseSymbolMap *fst::internal::DenseSymbolMap::DenseSymbolMap(fst::internal::DenseSymbolMap *this, const fst::internal::DenseSymbolMap *a2)
{
  *this = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 8, *(a2 + 1), *(a2 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this + 40, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
  *(this + 8) = *(a2 + 8);
  return this;
}

void sub_26B5B0CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t fst::internal::DenseSymbolMap::InsertOrFind(fst::internal::DenseSymbolMap *this, uint64_t a2)
{
  v23 = this + 8;
  v4 = *(this + 6) - *(this + 5);
  if (((v4 >> 3) * 0.75) <= (0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 3)))
  {
    fst::internal::DenseSymbolMap::Rehash(this, v4 >> 2);
  }

  v5 = std::__string_hash<char>::operator()[abi:ne200100](this + 32, a2);
  v6 = *(this + 8);
  v7 = *(this + 5);
  v8 = v5 & v6;
  v9 = *(v7 + 8 * (v5 & v6));
  v10 = *this;
  v11 = *(this + 1);
  if (v9 == *this)
  {
LABEL_18:
    v20 = *(this + 2);
    v19 = *(this + 3);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v11) >> 3);
    *(v7 + 8 * v8) = v9;
    if (v20 >= v19)
    {
      v21 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v23, a2);
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v23, a2);
      v21 = v20 + 1;
    }

    *(this + 2) = v21;
  }

  else
  {
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    if (v12 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    while (1)
    {
      v15 = v11 + 24 * v9;
      v16 = *(v15 + 23);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v15 + 8);
      }

      if (v16 == v13)
      {
        v18 = v17 >= 0 ? (v11 + 24 * v9) : *v15;
        if (!memcmp(v18, v14, v13))
        {
          break;
        }
      }

      v8 = (v8 + 1) & v6;
      v9 = *(v7 + 8 * v8);
      if (v9 == v10)
      {
        goto LABEL_18;
      }
    }
  }

  return v9;
}

void fst::internal::DenseSymbolMap::Rehash(fst::internal::DenseSymbolMap *this, unint64_t a2)
{
  std::vector<long long>::resize(this + 5, a2);
  v4 = *(this + 5);
  v3 = *(this + 6);
  *(this + 8) = ((v3 - v4) >> 3) - 1;
  v5 = v3 - v4;
  if (v3 != v4)
  {
    v6 = 0;
    v7 = *this;
    v8 = (v5 - 8) >> 3;
    v9 = vdupq_n_s64(v8);
    v10 = (v4 + 8);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v6), xmmword_26B5B69A0)));
      if (v11.i8[0])
      {
        *(v10 - 1) = v7;
      }

      if (v11.i8[4])
      {
        *v10 = v7;
      }

      v6 += 2;
      v10 += 2;
    }

    while (((v8 + 2) & 0x3FFFFFFFFFFFFFFELL) != v6);
  }

  v12 = *(this + 1);
  if (*(this + 2) != v12)
  {
    v13 = 0;
    do
    {
      v14 = (v12 + 24 * v13);
      if (*(v14 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v14, *(v14 + 1));
      }

      else
      {
        v15 = *v14;
        __p.__r_.__value_.__r.__words[2] = *(v14 + 2);
        *&__p.__r_.__value_.__l.__data_ = v15;
      }

      v16 = std::__string_hash<char>::operator()[abi:ne200100](this + 32, &__p);
      v17 = *(this + 8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v18 = v17 & v16;
      v19 = *(this + 5);
      if (*(v19 + 8 * (v17 & v16)) != *this)
      {
        do
        {
          v18 = *(this + 8) & (v18 + 1);
        }

        while (*(v19 + 8 * v18) != *this);
      }

      *(v19 + 8 * v18) = v13++;
      v12 = *(this + 1);
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - v12) >> 3));
  }
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

uint64_t fst::internal::DenseSymbolMap::Find(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a1 + 4), a2);
  v5 = a1[8];
  v6 = a1[5];
  v7 = *a1;
  v8 = v4 & v5;
  v9 = *(v6 + 8 * (v4 & v5));
  if (v9 == *a1)
  {
    return v7;
  }

  v10 = a1[1];
  v11 = v2[23];
  if (v11 >= 0)
  {
    v12 = v2[23];
  }

  else
  {
    v12 = *(v2 + 1);
  }

  if (v11 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v13 = v10 + 24 * v9;
    v14 = *(v13 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v13 + 8);
    }

    if (v14 == v12)
    {
      v16 = v15 >= 0 ? (v10 + 24 * v9) : *v13;
      if (!memcmp(v16, v2, v12))
      {
        break;
      }
    }

    v8 = (v8 + 1) & v5;
    v9 = *(v6 + 8 * v8);
    if (v9 == v7)
    {
      return v7;
    }
  }

  return v9;
}

void std::vector<long long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<long long>::__append(a1, a2 - v2);
  }
}

void fst::internal::DenseSymbolMap::RemoveSymbol(fst::internal::DenseSymbolMap *this, uint64_t a2)
{
  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v7, (*(this + 1) + 24 * a2 + 24), *(this + 2), *(this + 1) + 24 * a2);
  v4 = v3;
  v5 = *(this + 2);
  if (v5 != v3)
  {
    do
    {
      v6 = *(v5 - 1);
      v5 -= 3;
      if (v6 < 0)
      {
        operator delete(*v5);
      }
    }

    while (v5 != v4);
  }

  *(this + 2) = v4;
  fst::internal::DenseSymbolMap::Rehash(this, (*(this + 6) - *(this + 5)) >> 3);
}

uint64_t fst::internal::SymbolTableImpl::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  if (a3 == -1)
  {
    return -1;
  }

  v6 = fst::internal::DenseSymbolMap::InsertOrFind((a1 + 40), a2);
  if (v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 3) - 1 == a3 && *(a1 + 32) == a3)
    {
      *(a1 + 32) = a3 + 1;
      v8 = a3;
    }

    else
    {
      v11 = *(a1 + 120);
      v10 = *(a1 + 128);
      if (v11 >= v10)
      {
        v22 = *(a1 + 112);
        v23 = v11 - v22;
        v24 = (v11 - v22) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
          std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
        }

        v26 = v10 - v22;
        if (v26 >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        v27 = v26 >= 0x7FFFFFFFFFFFFFF8;
        v28 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v27)
        {
          v28 = v25;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1 + 112, v28);
        }

        v29 = (v11 - v22) >> 3;
        v30 = (8 * v24);
        v31 = (8 * v24 - 8 * v29);
        *v30 = a3;
        v12 = v30 + 1;
        memcpy(v31, v22, v23);
        v32 = *(a1 + 112);
        *(a1 + 112) = v31;
        *(a1 + 120) = v12;
        *(a1 + 128) = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v11 = a3;
        v12 = v11 + 1;
      }

      *(a1 + 120) = v12;
      v33 = -1 - 0x5555555555555555 * ((*(a1 + 56) - *(a1 + 48)) >> 3);
      __p[0] = &v37;
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 136, &v37)[5] = v33;
      v8 = v37;
    }

    if (v8 >= *(a1 + 24))
    {
      *(a1 + 24) = v8 + 1;
    }

    *(a1 + 160) = 0;
  }

  else
  {
    NthKey = fst::internal::SymbolTableImpl::GetNthKey(a1, v6);
    if (NthKey == a3)
    {
      return a3;
    }

    else
    {
      v8 = NthKey;
      if (FLAGS_v >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
        LogMessage::LogMessage(&v38, __p);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SymbolTable::AddSymbol: symbol = ", 33);
        v14 = *(a2 + 23);
        v15 = v14 >= 0 ? a2 : *a2;
        v16 = v14 >= 0 ? *(a2 + 23) : *(a2 + 8);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " already in symbol_map_ with key = ", 35);
        v19 = MEMORY[0x26D67A400](v18, v8);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " but supplied new key = ", 24);
        v21 = MEMORY[0x26D67A400](v20, a3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " (ignoring new key)", 19);
        LogMessage::~LogMessage(&v38);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v8;
}

void sub_26B5B1450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::internal::SymbolTableImpl::MaybeRecomputeCheckSum(fst::internal::SymbolTableImpl *this)
{
  std::mutex::lock((this + 216));
  v2 = *(this + 160);
  std::mutex::unlock((this + 216));
  if ((v2 & 1) == 0)
  {
    std::mutex::lock((this + 216));
    if ((*(this + 160) & 1) == 0)
    {
      fst::CheckSummer::CheckSummer(&v68);
      v4 = *(this + 6);
      v3 = *(this + 7);
      if (v3 != v4)
      {
        v5 = 0;
        do
        {
          v6 = (v4 + 24 * v5);
          v7 = v6[23];
          if (v7 < 0)
          {
            v6 = *v6;
            v7 = *(v4 + 24 * v5 + 8);
          }

          if (v7 >= 1)
          {
            v8 = v7 & 0x7FFFFFFF;
            do
            {
              v10 = *v6++;
              v9 = v10;
              v11 = v68++;
              v12 = -v11 < 0;
              v13 = -v11 & 0x1F;
              v14 = v11 & 0x1F;
              if (!v12)
              {
                v14 = -v13;
              }

              if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v15 = &v69;
              }

              else
              {
                v15 = v69.__r_.__value_.__r.__words[0];
              }

              v15->__r_.__value_.__s.__data_[v14] ^= v9;
              --v8;
            }

            while (v8);
            v4 = *(this + 6);
            v3 = *(this + 7);
          }

          ++v68;
          ++v5;
        }

        while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3));
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
      }

      else
      {
        v62 = v69;
      }

      if (*(this + 191) < 0)
      {
        operator delete(*(this + 21));
      }

      *(this + 7) = v62;
      fst::CheckSummer::CheckSummer(&v66);
      if (*(this + 4) >= 1)
      {
        v16 = 0;
        v17 = *MEMORY[0x277D82828];
        v18 = *(MEMORY[0x277D82828] + 24);
        do
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v62);
          v19 = *(this + 6) + 24 * v16;
          v20 = *(v19 + 23);
          if (v20 >= 0)
          {
            v21 = *(this + 6) + 24 * v16;
          }

          else
          {
            v21 = *v19;
          }

          if (v20 >= 0)
          {
            v22 = *(v19 + 23);
          }

          else
          {
            v22 = *(v19 + 8);
          }

          v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v62, v21, v22);
          LOBYTE(v60[0]) = 9;
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v60, 1);
          MEMORY[0x26D67A400](v24, v16);
          std::stringbuf::str();
          if (v61 >= 0)
          {
            v25 = v60;
          }

          else
          {
            v25 = v60[0];
          }

          std::stringbuf::str();
          v26 = v59;
          v27 = v59;
          if ((v59 & 0x80u) != 0)
          {
            v26 = v58;
          }

          if (v26 >= 1)
          {
            v28 = v26 & 0x7FFFFFFF;
            do
            {
              v30 = *v25;
              v25 = (v25 + 1);
              v29 = v30;
              v31 = v66++;
              v12 = -v31 < 0;
              v32 = -v31 & 0x1F;
              v33 = v31 & 0x1F;
              if (!v12)
              {
                v33 = -v32;
              }

              if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v34 = &v67;
              }

              else
              {
                v34 = v67.__r_.__value_.__r.__words[0];
              }

              v34->__r_.__value_.__s.__data_[v33] ^= v29;
              --v28;
            }

            while (v28);
            v27 = v59;
          }

          if ((v27 & 0x80) != 0)
          {
            operator delete(__p);
          }

          if (v61 < 0)
          {
            operator delete(v60[0]);
          }

          v62.__r_.__value_.__r.__words[0] = v17;
          *(v62.__r_.__value_.__r.__words + *(v17 - 24)) = v18;
          v62.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
          if (v64 < 0)
          {
            operator delete(v63);
          }

          v62.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v62.__r_.__value_.__r.__words[2]);
          std::ostream::~ostream();
          MEMORY[0x26D67A4B0](v65);
          ++v16;
        }

        while (v16 < *(this + 4));
      }

      v35 = *(this + 17);
      if (v35 != (this + 144))
      {
        v36 = *MEMORY[0x277D82828];
        v37 = *(MEMORY[0x277D82828] + 24);
        do
        {
          if (*(v35 + 4) >= *(this + 4))
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v62);
            v38 = *(this + 6) + 24 * *(v35 + 5);
            v39 = *(v38 + 23);
            if (v39 >= 0)
            {
              v40 = *(this + 6) + 24 * *(v35 + 5);
            }

            else
            {
              v40 = *v38;
            }

            if (v39 >= 0)
            {
              v41 = *(v38 + 23);
            }

            else
            {
              v41 = *(v38 + 8);
            }

            v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v62, v40, v41);
            LOBYTE(v60[0]) = 9;
            v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v60, 1);
            MEMORY[0x26D67A400](v43, *(v35 + 4));
            std::stringbuf::str();
            if (v61 >= 0)
            {
              v44 = v60;
            }

            else
            {
              v44 = v60[0];
            }

            std::stringbuf::str();
            v45 = v59;
            v46 = v59;
            if ((v59 & 0x80u) != 0)
            {
              v45 = v58;
            }

            if (v45 >= 1)
            {
              v47 = v45 & 0x7FFFFFFF;
              do
              {
                v49 = *v44;
                v44 = (v44 + 1);
                v48 = v49;
                v50 = v66++;
                v12 = -v50 < 0;
                v51 = -v50 & 0x1F;
                v52 = v50 & 0x1F;
                if (!v12)
                {
                  v52 = -v51;
                }

                if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v53 = &v67;
                }

                else
                {
                  v53 = v67.__r_.__value_.__r.__words[0];
                }

                v53->__r_.__value_.__s.__data_[v52] ^= v48;
                --v47;
              }

              while (v47);
              v46 = v59;
            }

            if ((v46 & 0x80) != 0)
            {
              operator delete(__p);
            }

            if (v61 < 0)
            {
              operator delete(v60[0]);
            }

            v62.__r_.__value_.__r.__words[0] = v36;
            *(v62.__r_.__value_.__r.__words + *(v36 - 24)) = v37;
            v62.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
            if (v64 < 0)
            {
              operator delete(v63);
            }

            v62.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
            std::locale::~locale(&v62.__r_.__value_.__r.__words[2]);
            std::ostream::~ostream();
            MEMORY[0x26D67A4B0](v65);
          }

          v54 = *(v35 + 1);
          if (v54)
          {
            do
            {
              v55 = v54;
              v54 = *v54;
            }

            while (v54);
          }

          else
          {
            do
            {
              v55 = *(v35 + 2);
              v56 = *v55 == v35;
              v35 = v55;
            }

            while (!v56);
          }

          v35 = v55;
        }

        while (v55 != (this + 144));
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
      }

      else
      {
        v62 = v67;
      }

      if (*(this + 215) < 0)
      {
        operator delete(*(this + 24));
      }

      *(this + 8) = v62;
      *(this + 160) = 1;
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }
    }

    std::mutex::unlock((this + 216));
  }
}
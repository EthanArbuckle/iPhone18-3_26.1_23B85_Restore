void sub_1E3DBC168()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1E41FFC94();
    v8 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v8))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    v14 = qword_1EE237E50;
    v15 = *(v6 + qword_1EE237E50);
    v16 = *(v15 + 16);
    if (v16)
    {
      v22 = qword_1EE237E50;
      v19 = *(v3 + 16);
      v17 = v3 + 16;
      v18 = v19;
      v20 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v21 = *(v17 + 56);

      do
      {
        v18(v0, v20, v1);
        sub_1E42063D4();
        (*(v17 - 8))(v0, v1);
        v20 += v21;
        --v16;
      }

      while (v16);

      v14 = v22;
    }

    *(v6 + v14) = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DBC328()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38A28);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_26_2();
  swift_getKeyPath();
  sub_1E41FE2F4();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_31_3();
  sub_1E32752B0(&qword_1EE23AD80, &qword_1ECF38A28);
  sub_1E4200844();

  v1 = OUTLINED_FUNCTION_74();
  v2(v1);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3DBC4B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectedAudioOption];
  *a2 = result;
  return result;
}

uint64_t sub_1E3DBC524()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v2 + 16))(v6, Strong + qword_1EE296050, v0);

    v8 = sub_1E41FFC94();
    v9 = sub_1E4206814();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_125_0();
      *v10 = 0;
      _os_log_impl(&dword_1E323F000, v8, v9, "Player time did jump", v10, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    (*(v2 + 8))(v6, v0);
  }

  OUTLINED_FUNCTION_5_0();
  if (swift_weakLoadStrong())
  {
    sub_1E41FEEF4();
  }

  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E41FEF14();
  }

  return result;
}

uint64_t sub_1E3DBC6F4()
{
  v0 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_3_183();
  sub_1E3DBE174(v8, v9);
  sub_1E4200844();

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();
}

uint64_t sub_1E3DBC884()
{
  v1 = qword_1EE237E40;
  OUTLINED_FUNCTION_5_0();
  sub_1E3294F34(v0 + v1, &aBlock);
  v2 = *(&v9 + 1);
  result = sub_1E325F6F0(&aBlock, &unk_1ECF296E0);
  if (!v2)
  {
    v4 = *(v0 + _MergedGlobals_81);
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    swift_weakInit();
    v10 = sub_1E3DBDE24;
    v11 = v5;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v9 = sub_1E3C55E60;
    *(&v9 + 1) = &block_descriptor_12_2;
    v6 = _Block_copy(&aBlock);

    v7 = [v4 addElapsedTimeObserver_];
    _Block_release(v6);
    if (v7)
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v9 = 0u;
    }

    OUTLINED_FUNCTION_11_3();
    sub_1E37EB5D0(&aBlock, v0 + v1);
    return swift_endAccess();
  }

  return result;
}

void sub_1E3DBC9FC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = qword_1EE237E38;
  OUTLINED_FUNCTION_5_0();
  sub_1E3294F34(v1 + v8, &v21);
  if (*(&v22 + 1))
  {
    sub_1E329504C(&v21, &v23);
    v9 = *(v1 + _MergedGlobals_81);
    __swift_project_boxed_opaque_existential_1(&v23, v24);
    [v9 removeBoundaryTimeObserverWithToken_];
    swift_unknownObjectRelease();
    v21 = 0u;
    v22 = 0u;
    OUTLINED_FUNCTION_11_3();
    sub_1E37EB5D0(&v21, v1 + v8);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  else
  {
    sub_1E325F6F0(&v21, &unk_1ECF296E0);
  }

  v10 = v1 + qword_1EE237E58;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = qword_1EE237E50;
  v12 = *(v1 + qword_1EE237E50);
  v13 = *(v12 + 16);
  if (v13)
  {
    v20 = qword_1EE237E50;
    v16 = *(v4 + 16);
    v14 = v4 + 16;
    v15 = v16;
    v17 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);

    do
    {
      v15(v7, v17, v2);
      sub_1E42063D4();
      (*(v14 - 8))(v7, v2);
      v17 += v18;
      --v13;
    }

    while (v13);

    v11 = v20;
  }

  *(v1 + v11) = MEMORY[0x1E69E7CC0];

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DBCC24()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v1[3] = sub_1E4206434();
  v1[4] = sub_1E4206424();
  v3 = sub_1E42063B4();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3DBCCBC, v3, v2);
}

uint64_t sub_1E3DBCCBC()
{
  v1 = *(*(v0 + 16) + _MergedGlobals_81);
  if ([v1 currentMediaItem])
  {
    ObjectType = swift_getObjectType();
    v3 = *MEMORY[0x1E69D5BE8];
    v4 = MEMORY[0x1E69E6370];
    sub_1E4123588(ObjectType, MEMORY[0x1E69E6370]);
    sub_1E4123590(v3, v4, v0 + 72);
    swift_unknownObjectRelease();
    v5 = *(v0 + 72);
  }

  else
  {
    v5 = 0;
  }

  if ([v1 currentMediaItem] && (v6 = swift_getObjectType(), v7 = MEMORY[0x1E69E6370], sub_1E4123588(v6, MEMORY[0x1E69E6370]), sub_1E4123590(@"VUIMediaItemMetadataKeyIsEligibleForTimedMetadata", v7, v0 + 73), swift_unknownObjectRelease(), v8 = *(v0 + 73), v8 != 2) && (v5 & v8 & 1) != 0)
  {

    v9 = sub_1E41FFC94();
    v10 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v10))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_3_12(&dword_1E323F000, v11, v12, "Metadata required for fetching timed metadata is loaded");
      OUTLINED_FUNCTION_6_0();
    }

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_125_0();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "Waiting until metadata required for fetching timed metadata is loaded", v17, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v18 = sub_1E4206424();
    *(v0 + 56) = v18;
    v19 = swift_task_alloc();
    *(v0 + 64) = v19;
    *v19 = v0;
    v19[1] = sub_1E3DBCFA8;
    v20 = *(v0 + 16);
    v21 = MEMORY[0x1E69E85E0];
    v22 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v19, v18, v21, 0xD000000000000020, 0x80000001E4283110, sub_1E3DBDD68, v20, v22);
  }
}

uint64_t sub_1E3DBCFA8()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1E3DBD0E4, v5, v4);
}

uint64_t sub_1E3DBD0E4()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E3DBD170(uint64_t a1, uint64_t a2)
{

  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_100();
    v18 = v7;
    *v6 = 136315138;
    if (a2)
    {
      v8 = MEMORY[0x1E69E6158];
      v9 = a1;
      v10 = a2;
    }

    else
    {
      OUTLINED_FUNCTION_26_87();
    }

    v17[0] = v9;
    v17[1] = v10;
    v17[3] = v8;

    v11 = sub_1E3294FA4(v17);
    v13 = sub_1E3270FC8(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_1E323F000, v4, v5, "Saved Songs playlist was fetched. Playlist ID: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();
  }

  if (a2)
  {
    v14 = sub_1E328740C();
    v15 = *((*MEMORY[0x1E69E7D40] & **v14) + 0xF0);
    v16 = *v14;
    v15(a1, a2);
  }
}

uint64_t sub_1E3DBD324()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  v0[2] = sub_1E4206424();
  v2 = sub_1E42063B4();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1E3DBD3B4, v2, v1);
}

uint64_t sub_1E3DBD3B4()
{
  v1 = sub_1E328740C();
  v2 = *v1;
  *(v0 + 40) = *v1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x100);
  v2;
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1E3DBD4F8;

  return v6();
}

uint64_t sub_1E3DBD4F8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  v4 = *(v2 + 32);
  v5 = *(v2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1E3DBD640, v5, v4);
}

uint64_t sub_1E3DBD640()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1E3DBD6A4()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3DBD72C;

  return sub_1E3DBD324();
}

uint64_t sub_1E3DBD72C()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

size_t sub_1E3DBD81C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3DBD8A8(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

size_t sub_1E3DBD868(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E3DBD8A8(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

size_t sub_1E3DBD8A8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E3DBD9A0(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3DBDAA8(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1E3DBD9A0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38A20);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3DBDAA8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E3DBDB94(void *a1)
{
  v2 = [a1 languageCodeBCP47];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t type metadata accessor for PlayerBasedMetadataVendor()
{
  result = qword_1EE296040;
  if (!qword_1EE296040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3DBDC50()
{
  OUTLINED_FUNCTION_7_4();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E41FEF14();
  }

  return result;
}

uint64_t sub_1E3DBDC94()
{
  result = sub_1E41FFCB4();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3DBDD68(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EE237E50;
  sub_1E3DBD81C();
  v5 = *(*(v1 + v4) + 16);
  sub_1E3DBD868(v5);
  v6 = *(v1 + v4);
  *(v6 + 16) = v5 + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8);
  OUTLINED_FUNCTION_2();
  result = (*(v7 + 16))(v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, a1);
  *(v2 + v4) = v6;
  return result;
}

uint64_t sub_1E3DBDE24(double a1)
{
  OUTLINED_FUNCTION_7_4();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [*(result + _MergedGlobals_81) state];
    v5 = [objc_opt_self() playing];
    v6 = v5;
    if (v4)
    {

      if (v6)
      {

        if (v4 == v6)
        {
LABEL_8:
          v7 = (v3 + qword_1EE237E58);
          if ((*(v3 + qword_1EE237E58 + 8) & 1) == 0)
          {
            v8 = *v7;
            if (*v7 < a1)
            {
              v9 = sub_1E41FFC94();
              v10 = sub_1E4206814();
              if (OUTLINED_FUNCTION_104(v10))
              {
                v11 = swift_slowAlloc();
                *v11 = 134218240;
                *(v11 + 4) = a1;
                *(v11 + 12) = 2048;
                *(v11 + 14) = v8;
                _os_log_impl(&dword_1E323F000, v9, v10, "Elapsed time %f has passed boundary time %f without boundary timer firing.  Manually notifying listeners.", v11, 0x16u);
                OUTLINED_FUNCTION_6_0();
              }

              sub_1E41FEF14();
            }
          }
        }
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1E3DBDF90()
{
  OUTLINED_FUNCTION_7_4();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E41FEF04();
    sub_1E3DBC9FC();
  }

  return result;
}

uint64_t sub_1E3DBDFEC()
{
  OUTLINED_FUNCTION_7_4();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = [*(result + _MergedGlobals_81) selectedAudioOption];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 languageCodeBCP47];

      if (v3)
      {
        sub_1E4205F14();

        v4 = sub_1E41FFC94();
        v5 = sub_1E4206814();

        if (os_log_type_enabled(v4, v5))
        {
          v6 = OUTLINED_FUNCTION_6_21();
          v16 = OUTLINED_FUNCTION_100();
          *v6 = 136315138;
          v7 = OUTLINED_FUNCTION_74();
          v10 = sub_1E3270FC8(v7, v8, v9);

          *(v6 + 4) = v10;
          OUTLINED_FUNCTION_35_8();
          _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v16);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_21_0();
        }

        else
        {
        }

        sub_1E41FEF14();
      }
    }
  }

  return result;
}

uint64_t sub_1E3DBE174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3DBE1E0()
{
  swift_allocObject();
  v0 = sub_1E3BBB754();

  sub_1E3DBE22C();

  return v0;
}

void sub_1E3DBE22C()
{
  v0 = sub_1E37BD068();
  (*(*v0 + 1792))(10);

  v1 = *sub_1E37BD068();
  (*(v1 + 1696))(17);

  v2 = sub_1E37BD068();
  v3 = objc_opt_self();
  (*(*v2 + 680))([v3 whiteColor]);

  v4 = sub_1E37BD068();
  (*(*v4 + 896))([v3 blackColor]);

  v5 = sub_1E37BD068();
  v10[0] = sub_1E3952C28(12.0);
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  v11 = 0;
  (*(*v5 + 184))(v10);

  sub_1E3C2CE80();
  sub_1E3C2D200();
  sub_1E3C2CDD0();
  sub_1E3C2D150();
  sub_1E3BBAB68();
  v9 = [v3 clearColor];

  sub_1E3C2DE50();
}

uint64_t sub_1E3DBE474(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_allocObject();
  v8 = sub_1E3BBD9C4(a1, a2 & 1, a3, a4 & 1);

  sub_1E3DBE22C();

  return v8;
}

double sub_1E3DBE514(char a1, double a2, double a3)
{
  v16.receiver = v3;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a2 == 0.0 && a3 == 0.0)
  {
    return 0.0;
  }

  v7 = OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_bannerContentView;
  swift_beginAccess();
  v8 = *&v3[v7];
  if (v8)
  {
    type metadata accessor for LayoutGrid();
    v9 = v8;
    sub_1E3A258E4(a2);
    v11 = v10;
    v13 = a2 - v10 - v12;
    sub_1E3A286D4();
    sub_1E41DA724();
    [v9 sizeThatFits_];
    if ((a1 & 1) == 0)
    {
      [v9 setFrame_];
    }
  }

  return a2;
}

id sub_1E3DBE6AC()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_bannerContentView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_viewModel) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3DBE738(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_bannerContentView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_viewModel] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1E3DBE884()
{
  type metadata accessor for AlertTemplateLayout();
  v1 = sub_1E3E29D6C();
  OUTLINED_FUNCTION_0_239(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);

  *(v0 + 104) = v12;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3DBE8E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for TemplateViewModel();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      if (*(v4 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType) == 11)
      {
        type metadata accessor for OfferSelectionTemplateLayout();

        return sub_1E3DB4EF0();
      }

      if (!*(v4 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType))
      {
        v5 = *(*v2 + 1696);

        v7 = v5(v6);

        return v7;
      }
    }
  }

  return sub_1E3C35CA4(a1);
}

id sub_1E3DBEA00(void *a1, void *a2)
{
  if ([a1 length])
  {
    if ([a1 attribute:*MEMORY[0x1E69DB688] atIndex:0 effectiveRange:0])
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      sub_1E3BF79D4();
      if (swift_dynamicCast())
      {
        a2 = v10;
        v4 = v10;
LABEL_13:
        v5 = a2;
        type metadata accessor for LanguageAwareString();
        v6 = sub_1E3D36A44();
        v7 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(a1, a2, v6 & 1);
        v8 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0xE8))();

        return v8;
      }
    }

    else
    {
      sub_1E329505C(v13);
    }

    v4 = 0;
    goto LABEL_13;
  }

  return a1;
}

uint64_t sub_1E3DBEBF8(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    type metadata accessor for LanguageAwareString();

    v5 = sub_1E3D36A48();
    v6 = sub_1E3D36A44();
    v7 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(v3, a2, 0, v5 & 1, v6 & 1);
    v3 = *&v7[OBJC_IVAR___AMPLanguageAwareString_string];
  }

  else
  {
  }

  return v3;
}

id sub_1E3DBED38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareStringHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3DBED70@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v4 = *(sub_1E4201534() + 20);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E4201C44();
  result = (*(*(v6 - 8) + 104))(a1 + v4, v5, v6);
  *a1 = a2;
  a1[1] = a2;
  return result;
}

uint64_t sub_1E3DBEDFC()
{
  v10 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E4206974();
  OUTLINED_FUNCTION_6_161();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v8 = sub_1E4203FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_5();
  sub_1E32ADE38();
  sub_1E4203FE4();
  sub_1E3CA3434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326B0);
  sub_1E3CA348C();
  sub_1E42072E4();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v10);
  *(v0 + 16) = sub_1E4206A44();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return v0;
}

uint64_t sub_1E3DBEFE8()
{
  type metadata accessor for NaturalLanguageSearchDataManager();
  OUTLINED_FUNCTION_27_10();
  v0 = swift_allocObject();
  result = sub_1E3DBEDFC();
  qword_1EE2AA8F0 = v0;
  return result;
}

uint64_t *sub_1E3DBF020()
{
  if (qword_1EE292338 != -1)
  {
    OUTLINED_FUNCTION_3_184();
  }

  return &qword_1EE2AA8F0;
}

uint64_t sub_1E3DBF060@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v4 = *(v1 + 16);
  OUTLINED_FUNCTION_2_4();
  v5 = swift_allocObject();
  *(v5 + 16) = &v14;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_2_4();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E3DBF1D4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1E379E500;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_67();
  aBlock[2] = v7;
  aBlock[3] = &block_descriptor_113;
  v8 = _Block_copy(aBlock);

  dispatch_sync(v4, v8);
  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v16;
    v11 = v15;
    v12 = v14;

    *a1 = v12;
    *(a1 + 16) = v11;
    *(a1 + 32) = v10;
  }

  return result;
}

uint64_t sub_1E3DBF1D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[4] = v7;
  sub_1E3DBFC00(v3, v4, v5, v6);

  return sub_1E3DBFA40(v8, v9, v10, v11);
}

uint64_t sub_1E3DBF250(uint64_t a1)
{
  if (![objc_opt_self() isSearchEnabled])
  {
    v12 = 1;
    return v12 & 1;
  }

  swift_beginAccess();
  v3 = *(a1 + 72);
  v19 = *(a1 + 56);
  v20 = v3;
  v21 = *(a1 + 88);
  v4 = *(v1 + 16);
  OUTLINED_FUNCTION_27_10();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = *(a1 + 56);
  *(v5 + 40) = *(a1 + 72);
  *(v5 + 56) = *(a1 + 88);
  OUTLINED_FUNCTION_2_4();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E3DBFAA8;
  *(v6 + 24) = v5;
  v17 = sub_1E37D1918;
  v18 = v6;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  OUTLINED_FUNCTION_67();
  v15 = v7;
  v16 = &block_descriptor_24_3;
  v8 = _Block_copy(&aBlock);
  sub_1E3DBFB28(&v19, v13);
  sub_1E3DBFB28(&v19, v13);

  dispatch_sync(v4, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    sub_1E3DBF724(a1);
    if (*(&v20 + 1))
    {
      v11 = v21;
      v12 = BYTE8(v19);
      aBlock = v20;
      sub_1E3782C70(&aBlock);
      v13[0] = v11;
      sub_1E3DBFB98(v13);
    }

    else
    {
      v12 = 1;
    }

    return v12 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3DBF454()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_2_4();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E3DBF6A4;
  *(v9 + 24) = v0;
  aBlock[4] = sub_1E37D1918;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_67();
  aBlock[2] = v10;
  aBlock[3] = &block_descriptor_10_4;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v13 = *sub_1E3D54C24();
    sub_1E3D5AA30();

    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v14(v7);
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067E4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "NaturalLanguageSearchDataManager:: Cleared NLS data cache and lastNLSQueryDate", v17, 2u);
      MEMORY[0x1E69143B0](v17, -1, -1);
    }

    (*(v3 + 8))(v7, v1);
  }

  return result;
}

uint64_t sub_1E3DBF6A4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  *(v0 + 3) = 0u;
  *(v0 + 5) = 0u;
  v0[7] = 0;
  return sub_1E3DBFA40(v1, v2, v3, v4);
}

uint64_t sub_1E3DBF6F4()
{
  sub_1E3DBF6C4();
  OUTLINED_FUNCTION_27_10();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3DBF724(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  swift_beginAccess();
  if (*(a1 + 48) == 1)
  {
    v11 = *sub_1E3D54C24();
    sub_1E3D59FB8();

    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v12(v10);
    v13 = sub_1E41FFC94();
    v14 = sub_1E42067E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1E323F000, v13, v14, "NaturalLanguageSearchDataManager:: Updated didPerformNaturalLanguageSearch in UM Signal Provider", v15, 2u);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    (*(v4 + 8))(v10, v2);
  }

  v16 = [objc_opt_self() sharedInstance];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 overrideLastNLSQueryDate];

    v29 = v18;
    sub_1E41499CC(MEMORY[0x1E69E7360], &v27);
    if (v28 == 1)
    {
      swift_beginAccess();
    }

    v19 = *sub_1E3D54C24();
    sub_1E3D5A2C8();
    v21 = v20;

    if (v21)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_51_4();
      v22(v7);
      v23 = sub_1E41FFC94();
      v24 = sub_1E42067E4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1E323F000, v23, v24, "NaturalLanguageSearchDataManager:: Updated lastNLSQueryDate in UM Signal Provider", v25, 2u);
        MEMORY[0x1E69143B0](v25, -1, -1);
      }

      (*(v4 + 8))(v7, v2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3DBFA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1E3DBFAA8()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  *(v1 + 3) = *(v0 + 24);
  *(v1 + 5) = v7;
  v1[7] = v6;
  sub_1E3DBFB28(v0 + 24, v9);
  return sub_1E3DBFA40(v2, v3, v4, v5);
}

uint64_t sub_1E3DBFB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DBFB98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3DBFC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1E3DBFC54()
{
  OUTLINED_FUNCTION_29_7();
  swift_allocObject();
  return sub_1E3DBFC84();
}

uint64_t sub_1E3DBFC84()
{
  v0 = sub_1E3C2F9A0();

  sub_1E3952C10(6.0, 6.0);
  OUTLINED_FUNCTION_18_8();
  v1 = sub_1E3952C10(8.0, 8.0);
  OUTLINED_FUNCTION_7_11(v1, v2, v3, v4);
  type metadata accessor for UIEdgeInsets();
  v6 = v5;
  sub_1E3C3DE00(v5);
  OUTLINED_FUNCTION_7_171();
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_189();
  OUTLINED_FUNCTION_32_17(v7, v8, v9, v10, v11, v12, v13, v14, v66);
  v15 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_17_8(v15, v16, v17, v18, v19, v20, v21, v22, v67);
  sub_1E3C2FDFC();
  sub_1E3952C10(20.0, 20.0);
  OUTLINED_FUNCTION_18_8();
  v23 = sub_1E3952C10(20.0, 20.0);
  OUTLINED_FUNCTION_7_11(v23, v24, v25, v26);
  sub_1E3C3DE00(v6);
  OUTLINED_FUNCTION_7_171();
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_189();
  OUTLINED_FUNCTION_32_17(v27, v28, v29, v30, v31, v32, v33, v34, v68);
  v35 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_17_8(v35, v36, v37, v38, v39, v40, v41, v42, v69);
  sub_1E3C2FDFC();
  v43.n128_u64[0] = 4.0;
  j__OUTLINED_FUNCTION_7_78(v43);
  OUTLINED_FUNCTION_18_8();
  v44.n128_u64[0] = 6.0;
  v45 = j__OUTLINED_FUNCTION_7_78(v44);
  OUTLINED_FUNCTION_7_11(v45, v46, v47, v48);
  sub_1E3C3DE00(v6);
  OUTLINED_FUNCTION_7_171();
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_189();
  OUTLINED_FUNCTION_32_17(v49, v50, v51, v52, v53, v54, v55, v56, v70);
  v57 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_17_8(v57, v58, v59, v60, v61, v62, v63, v64, v71);
  sub_1E3C2FDFC();

  return v0;
}

uint64_t sub_1E3DBFDD0()
{
  sub_1E3C36C6C();
  OUTLINED_FUNCTION_29_7();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1E3DBFE64(uint64_t a1, const void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = v2 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageContext;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  *(v6 + 80) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageViews) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_gradientView;
  type metadata accessor for GradientView();
  OUTLINED_FUNCTION_5_8();
  *(v2 + v7) = sub_1E3890DAC();
  v8 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_viewModel;
  *(v2 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_viewModel) = 0;
  v9 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_layout;
  type metadata accessor for CompositeImageViewLayout();
  OUTLINED_FUNCTION_29_7();
  swift_allocObject();
  *(v2 + v9) = sub_1E3DBFC84();
  *(v2 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_fourUpStyle) = 1;
  *(v2 + v8) = a1;

  v10 = OUTLINED_FUNCTION_5_8();
  v13 = objc_msgSendSuper2(v11, v12, v10, v2, ObjectType);
  sub_1E3DBFF9C(a1, a2);
  sub_1E3DC050C(a2);

  return v13;
}

void sub_1E3DBFF9C(uint64_t a1, const void *a2)
{
  v3 = v2;
  memcpy(__dst, &v3[OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageContext], 0x52uLL);
  memcpy(&v3[OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageContext], a2, 0x52uLL);
  v37 = a2;
  sub_1E38F1B60(a2, v38);
  sub_1E3DC050C(__dst);
  v6 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  v8 = sub_1E32AE9B0(v7);

  for (i = 0; v8 != i; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E6911E60](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    [v10 vui_removeFromSuperView];
  }

  v12 = MEMORY[0x1E69E7CC0];
  *&v3[v6] = MEMORY[0x1E69E7CC0];

  v14 = (*(*a1 + 464))(v13);
  if (v14)
  {
    v15 = v14;
    v36 = *&v12;
    *&v38[0] = v12;
    v16 = sub_1E32AE9B0(v14);
    v17 = 0;
    while (v16 != v17)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }
      }

      if (__OFADD__(v17, 1))
      {
        goto LABEL_44;
      }

      type metadata accessor for ImageViewModel();
      if (swift_dynamicCastClass())
      {
        MEMORY[0x1E6910BF0]();
        if (*((*&v38[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v38[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v36 = v38[0];
        ++v17;
      }

      else
      {

        ++v17;
      }
    }

    v12 = *&v36;
  }

  v18 = sub_1E32AE9B0(v12);
  v19 = 0;
  v35 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_layout;
  while (v18 != v19)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1E6911E60](v19, v12);
    }

    else
    {
      if (v19 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v20 = *(v12 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      goto LABEL_46;
    }

    v21 = sub_1E3DF9F2C(v20, 0, v37, 0);
    if (!v21)
    {

      return;
    }

    v22 = v21;
    [v21 setVuiContentMode_];
    v23 = [v22 vuiLayer];
    if (v23)
    {
      v24 = v23;
      sub_1E3C2D7B8();
      v25 = 0.0;
      if ((v39 & 1) == 0)
      {
        v25 = sub_1E3952BE8(v38[0], v38[1], v38[2], v38[3]);
      }

      [v24 setCornerRadius_];
    }

    [v22 setVuiClipsToBounds_];
    v26 = v22;
    [v3 vui:v26 addSubview:0 oldView:?];
    v27 = swift_beginAccess();
    MEMORY[0x1E6910BF0](v27);
    if (*((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();
    swift_endAccess();

    ++v19;
  }

  v28 = *&v3[OBJC_IVAR____TtC8VideosUI18CompositeImageView_gradientView];
  v29 = [v28 superview];
  if (v29)
  {
  }

  else
  {
    [v3 vui:v28 addSubview:0 oldView:?];
    type metadata accessor for ViewGradientLayout();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1E429DCC0;
    v31 = objc_opt_self();
    v32 = [v31 blackColor];
    v33 = [v32 colorWithAlphaComponent_];

    *(v30 + 32) = v33;
    *(v30 + 40) = [v31 clearColor];
    v34 = sub_1E40C2E40();
    sub_1E396030C(v34);
  }
}

uint64_t sub_1E3DC050C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3DC0574(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageContext);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *(v4 + 8) = 0;
  *(v4 + 9) = 1;
  *(v4 + 40) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageViews) = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_gradientView;
  type metadata accessor for GradientView();
  OUTLINED_FUNCTION_5_8();
  *(v1 + v5) = sub_1E3890DAC();
  *(v1 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_viewModel) = 0;
  v6 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_layout;
  type metadata accessor for CompositeImageViewLayout();
  OUTLINED_FUNCTION_29_7();
  swift_allocObject();
  v7 = sub_1E3DBFC84();

  *(v2 + v6) = v7;
  *(v2 + OBJC_IVAR____TtC8VideosUI18CompositeImageView_fourUpStyle) = 1;
  memcpy(__dst, v4, 0x52uLL);
  sub_1E3DC050C(__dst);

  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E3DC06D4(char a1, double a2, double a3)
{
  if ((a1 & 1) == 0)
  {
    [v3 bounds];
    v7 = OUTLINED_FUNCTION_18_97();
    [v7 v8];
    v9 = OBJC_IVAR____TtC8VideosUI18CompositeImageView_imageViews;
    swift_beginAccess();
    v10 = sub_1E32AE9B0(*&v3[v9]);
    if (v10 != 4)
    {
      if (v10 != 3)
      {
        if (v10 != 2)
        {
          return;
        }

        OUTLINED_FUNCTION_8_144();
        swift_beginAccess();
        v11 = *&v3[v9];
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E6911E60](0, v11);
          v15 = MEMORY[0x1E6911E60](1, v11);
          goto LABEL_9;
        }

        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
          v13 = *(v11 + 32);
          if (v12 != 1)
          {
            v14 = v13;
            v15 = *(v11 + 40);
LABEL_9:
            v16 = v15;
            v228 = a3;
            swift_endAccess();
            v17 = sub_1E3C2AF20();
            if (v237)
            {
              v222 = *(MEMORY[0x1E69DDCE0] + 8);
            }

            else
            {
              OUTLINED_FUNCTION_16_113(v17, v18, v19, v20, v21, v22, v23, v24, v212, v213, v215, v217, v219, v220, v221, a3, v229, v230, v231, v232, v233, v234);
            }

            v63 = sub_1E3C2CC44();
            v71 = a2 - OUTLINED_FUNCTION_10_124(v63, v64, v65, v66, v67, v68, v69, v70, v212, v213, v215, v217, v219, v220, v222);
            OUTLINED_FUNCTION_1_221();
            v76 = (v71 - sub_1E3952BE0(v72, v73, v74, v75)) * 0.5;
            v77 = OUTLINED_FUNCTION_0_241();
            v81 = (a2 - (sub_1E3952BE0(v77, v78, v79, v80) + v76 + v76)) * 0.5;
            v82 = (v228 - v76 * 0.5625) * 0.5;
            OUTLINED_FUNCTION_22_75(v14, sel_setFrame_, v81, v82);
            [v14 frame];
            CGRectGetMaxX(v243);
            OUTLINED_FUNCTION_1_221();
            sub_1E3952BE0(v83, v84, v85, v86);
            v87 = OUTLINED_FUNCTION_18_97();
            OUTLINED_FUNCTION_22_75(v87, v88, v89, v82);
            goto LABEL_48;
          }

          goto LABEL_55;
        }

        goto LABEL_53;
      }

      OUTLINED_FUNCTION_8_144();
      swift_beginAccess();
      v25 = *&v3[v9];
      if ((v25 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](0, *&v3[v9]);
        v14 = MEMORY[0x1E6911E60](1, v25);
        v28 = MEMORY[0x1E6911E60](2, v25);
      }

      else
      {
        v4 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v26 = *(v25 + 32);
        if (v4 == 1)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v16 = v26;
        v27 = *(v25 + 40);
        if (v4 <= 2)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v14 = v27;
        v28 = *(v25 + 48);
      }

      v29 = v28;
      swift_endAccess();
      v30 = sub_1E3C2AF20();
      if (v237)
      {
        v223 = *(MEMORY[0x1E69DDCE0] + 8);
      }

      else
      {
        OUTLINED_FUNCTION_16_113(v30, v31, v32, v33, v34, v35, v36, v37, v212, v213, v215, v217, v219, v220, v221, a3, v229, v230, v231, v232, v233, v234);
      }

      v90 = sub_1E3C2CC44();
      v98 = a2 - OUTLINED_FUNCTION_10_124(v90, v91, v92, v93, v94, v95, v96, v97, v212, v213, v215, v217, v219, v220, v223);
      v99 = OUTLINED_FUNCTION_0_241();
      v103 = (v98 - sub_1E3952BE0(v99, v100, v101, v102)) * 0.666666667 * 0.5625;
      v104 = OUTLINED_FUNCTION_0_241();
      v225 = (v103 - sub_1E3952BD8(v104, v105, v106)) * 0.5;
      v107 = OUTLINED_FUNCTION_0_241();
      sub_1E3952BE0(v107, v108, v109, v110);
      v111 = OUTLINED_FUNCTION_18_97();
      OUTLINED_FUNCTION_22_75(v111, v112, v113, v114);
      [v16 frame];
      MaxX = CGRectGetMaxX(v244);
      v116 = OUTLINED_FUNCTION_0_241();
      sub_1E3952BE0(v116, v117, v118, v119);
      OUTLINED_FUNCTION_9_132();
      [v16 v120];
      [v14 setFrame_];
      [v16 frame];
      v121 = CGRectGetMaxX(v246);
      OUTLINED_FUNCTION_1_221();
      sub_1E3952BE0(v122, v123, v124, v125);
      OUTLINED_FUNCTION_9_132();
      [v14 v126];
      CGRectGetMaxY(v247);
      OUTLINED_FUNCTION_1_221();
      sub_1E3952BD8(v127, v128, v129);
      OUTLINED_FUNCTION_17_111();
      [v29 v130];
      goto LABEL_47;
    }

    v227 = a3;
    v229 = a2;
    OUTLINED_FUNCTION_8_144();
    if (v38)
    {
      swift_beginAccess();
      v4 = *&v3[v9];
      if ((v4 & 0xC000000000000001) != 0)
      {
LABEL_57:
        v29 = MEMORY[0x1E6911E60](0, v4);
        v16 = MEMORY[0x1E6911E60](1, v4);
        v14 = MEMORY[0x1E6911E60](2, v4);
        v43 = MEMORY[0x1E6911E60](3, v4);
        goto LABEL_25;
      }

      v39 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        v40 = *(v4 + 32);
        if (v39 != 1)
        {
          v29 = v40;
          v41 = *(v4 + 40);
          if (v39 > 2)
          {
            v16 = v41;
            v42 = *(v4 + 48);
            if (v39 != 3)
            {
              v14 = v42;
              v43 = *(v4 + 56);
LABEL_25:
              v44 = v43;
              swift_endAccess();
              v45 = sub_1E3C2AF20();
              if (v237)
              {
                v224 = *(MEMORY[0x1E69DDCE0] + 8);
              }

              else
              {
                OUTLINED_FUNCTION_16_113(v45, v46, v47, v48, v49, v50, v51, v52, v212, v213, v215, v217, v219, v220, v221, v227, v229, v230, v231, v232, v233, v234);
              }

              v131 = sub_1E3C2CC44();
              v144 = v229 - OUTLINED_FUNCTION_10_124(v131, v137, v138, v139, v140, v141, v142, v143, v212, v213, v215, v217, v219, v220, v224);
              v145 = OUTLINED_FUNCTION_0_241();
              v149 = (v144 - sub_1E3952BE0(v145, v146, v147, v148)) * 0.75;
              v150 = OUTLINED_FUNCTION_0_241();
              v153 = sub_1E3952BD8(v150, v151, v152);
              v226 = (v149 * 0.5625 - (v153 + v153)) / 3.0;
              v154 = OUTLINED_FUNCTION_0_241();
              v158 = sub_1E3952BE0(v154, v155, v156, v157);
              OUTLINED_FUNCTION_22_75(v29, sel_setFrame_, (v229 - (v158 + v149 + v226 / 0.5625)) * 0.5, (v227 - v149 * 0.5625) * 0.5);
              OUTLINED_FUNCTION_11_131();
              v159 = CGRectGetMaxX(v248);
              v160 = OUTLINED_FUNCTION_0_241();
              sub_1E3952BE0(v160, v161, v162, v163);
              OUTLINED_FUNCTION_9_132();
              [v29 v164];
              CGRectGetMinY(v249);
              v165 = OUTLINED_FUNCTION_18_97();
              [v165 v166];
              OUTLINED_FUNCTION_11_131();
              v167 = CGRectGetMaxX(v250);
              v168 = OUTLINED_FUNCTION_0_241();
              sub_1E3952BE0(v168, v169, v170, v171);
              OUTLINED_FUNCTION_9_132();
              [v16 v172];
              CGRectGetMaxY(v251);
              v173 = OUTLINED_FUNCTION_0_241();
              sub_1E3952BD8(v173, v174, v175);
              OUTLINED_FUNCTION_17_111();
              [v14 v176];
              OUTLINED_FUNCTION_11_131();
              v177 = CGRectGetMaxX(v252);
              v178 = OUTLINED_FUNCTION_0_241();
              sub_1E3952BE0(v178, v179, v180, v181);
              OUTLINED_FUNCTION_9_132();
              [v14 v182];
              CGRectGetMaxY(v253);
              v183 = OUTLINED_FUNCTION_0_241();
              sub_1E3952BD8(v183, v184, v185);
              OUTLINED_FUNCTION_17_111();
              v187 = v44;
              v188 = v177;
LABEL_46:
              [v187 v186];

LABEL_47:
LABEL_48:

              return;
            }

            goto LABEL_65;
          }

          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    swift_beginAccess();
    v53 = *&v3[v9];
    if ((v53 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1E6911E60](0, *&v3[v9]);
      v16 = MEMORY[0x1E6911E60](1, v53);
      v14 = MEMORY[0x1E6911E60](2, v53);
      v58 = MEMORY[0x1E6911E60](3, v53);
    }

    else
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v54)
      {
        goto LABEL_60;
      }

      v55 = *(v53 + 32);
      if (v54 == 1)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v29 = v55;
      v56 = *(v53 + 40);
      if (v54 <= 2)
      {
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v16 = v56;
      v57 = *(v53 + 48);
      if (v54 == 3)
      {
LABEL_66:
        __break(1u);
        return;
      }

      v14 = v57;
      v58 = *(v53 + 56);
    }

    v44 = v58;
    swift_endAccess();
    v59 = &v233;
    sub_1E3C2AF20();
    if (v237)
    {
      v59 = MEMORY[0x1E69DDCE0];
      v60 = *(MEMORY[0x1E69DDCE0] + 8);
      v61 = *(MEMORY[0x1E69DDCE0] + 16);
      v62 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v60 = v234;
      v61 = v235;
      v62 = v236;
    }

    v132 = *v59;
    v133 = &v238;
    sub_1E3C2CC44();
    if (v242)
    {
      v133 = MEMORY[0x1E69DDCE0];
      v134 = *(MEMORY[0x1E69DDCE0] + 8);
      v135 = *(MEMORY[0x1E69DDCE0] + 16);
      v136 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v134 = v239;
      v135 = v240;
      v136 = v241;
    }

    v189 = *v133;
    v190 = sub_1E3952BE0(v132, v60, v61, v62);
    v214 = (v229 - (v190 + v190) - sub_1E3952BE0(v189, v134, v135, v136)) * 0.5;
    v191 = v135;
    v192 = v189;
    v193 = v189;
    v218 = v189;
    v194 = v134;
    v195 = v134;
    v196 = v191;
    v197 = sub_1E3952BE0(v192, v194, v191, v136) + v214 + v214;
    [v29 setFrame_];
    OUTLINED_FUNCTION_11_131();
    v198 = CGRectGetMaxX(v254);
    sub_1E3952BE0(v218, v195, v196, v136);
    OUTLINED_FUNCTION_9_132();
    [v29 v199];
    CGRectGetMinY(v255);
    v200 = OUTLINED_FUNCTION_18_97();
    [v200 v201];
    OUTLINED_FUNCTION_11_131();
    MinX = CGRectGetMinX(v256);
    OUTLINED_FUNCTION_11_131();
    CGRectGetMaxY(v257);
    sub_1E3952BD8(v218, v195, v196);
    OUTLINED_FUNCTION_17_111();
    [v14 v202];
    OUTLINED_FUNCTION_11_131();
    v203 = CGRectGetMaxX(v258);
    v204 = OUTLINED_FUNCTION_21_89();
    sub_1E3952BE0(v204, v205, v206, v207);
    OUTLINED_FUNCTION_9_132();
    [v29 v208];
    CGRectGetMaxY(v259);
    v209 = OUTLINED_FUNCTION_21_89();
    sub_1E3952BD8(v209, v210, v211);
    OUTLINED_FUNCTION_17_111();
    v187 = v44;
    v188 = v203;
    goto LABEL_46;
  }
}

id sub_1E3DC124C()
{
  v1 = *v0;
  memcpy(__dst, v0 + 1, 0x52uLL);
  v2 = objc_allocWithZone(type metadata accessor for CompositeImageView());

  sub_1E38F1B60(__dst, &v4);
  return sub_1E3DBFE64(v1, __dst);
}

uint64_t sub_1E3DC12C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3DC1750();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E3DC1310()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3DC1750();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E3DC13E4()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3DC156C();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E3DC1438()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3DC156C();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3DC148C()
{
  sub_1E3DC156C();
  sub_1E4201F04();
  __break(1u);
}

uint64_t sub_1E3DC14B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = a10;
  if (a10 != 1)
  {
  }

  return result;
}

unint64_t sub_1E3DC14F0()
{
  result = qword_1ECF38AB8;
  if (!qword_1ECF38AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38AB8);
  }

  return result;
}

unint64_t sub_1E3DC1544(uint64_t a1)
{
  result = sub_1E3DC156C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3DC156C()
{
  result = qword_1ECF38AC0;
  if (!qword_1ECF38AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38AC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompositeImageView.FourUpStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3DC16A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_1E3DC16E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3DC1750()
{
  result = qword_1ECF38AC8;
  if (!qword_1ECF38AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38AC8);
  }

  return result;
}

id sub_1E3DC17A4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 activePlayer];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 avPlayer];

  return v2;
}

uint64_t sub_1E3DC1830()
{
  v0 = sub_1E3DC1908();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 state];
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() playing];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_1E3280A90(0, &qword_1EE23B280);
      v5 = sub_1E4206F64();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

id sub_1E3DC1908()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 activePlayer];

  return v1;
}

uint64_t sub_1E3DC1968(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1E3DC19A8(a1);
  return v2;
}

uint64_t sub_1E3DC19A8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CD0];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;

  sub_1E3DC19E8();

  return v1;
}

void sub_1E3DC19E8()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E3DC3A24(&qword_1EE23B130, 255, MEMORY[0x1E6969F20]);
  sub_1E4200844();

  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_74();
  v5(v6);
  OUTLINED_FUNCTION_17_112();
  sub_1E42004C4();
  swift_endAccess();

  v7 = [v3 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E4200844();

  v8 = OUTLINED_FUNCTION_74();
  v5(v8);
  OUTLINED_FUNCTION_17_112();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DC1C38(SEL *a1)
{
  v2 = sub_1E3DC1908();
  if (v2)
  {
    v3 = v2;
    [v2 *a1];
  }
}

id sub_1E3DC1C98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B88);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_41();
  result = sub_1E3DC1908();
  if (result)
  {
    v2 = result;
    swift_getKeyPath();
    sub_1E41FE2F4();

    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_weakInit();
    sub_1E32752B0(&qword_1ECF38B90, &qword_1ECF38B88);
    sub_1E4200844();

    v3 = OUTLINED_FUNCTION_74();
    v4(v3);
    swift_beginAccess();
    sub_1E42004C4();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E3DC1E54()
{
  type metadata accessor for ClarityPlayerViewModel();
  v0 = swift_allocObject();

  sub_1E3DC19A8(v1);
  return v0;
}

void sub_1E3DC1E98()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38AD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_35_3();
  sub_1E3DC1FC8();
  type metadata accessor for ClarityPlayerViewModel();
  OUTLINED_FUNCTION_0_242();
  sub_1E3DC3A24(v2, v3, v4);
  v5 = *(sub_1E4200BC4() + 16);

  sub_1E3DC2304();
  sub_1E418FB74(v5);

  sub_1E325F6F0(v0, &qword_1ECF38AD0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DC1FC8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  type metadata accessor for ClarityPlayerViewModel();
  OUTLINED_FUNCTION_0_242();
  sub_1E3DC3A24(v14, v15, v16);
  v17 = v1 & 1;
  OUTLINED_FUNCTION_53();
  sub_1E4200BC4();
  v18 = sub_1E3DC17A4();

  if (v18)
  {
    *v10 = sub_1E4201D44();
    *(v10 + 1) = 0;
    v10[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B38);
    sub_1E3DC24C4();
    sub_1E37E93E8(v10, v13, &qword_1ECF38B00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B10);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v19, &qword_1ECF38B00);
    sub_1E3DC2440();
    sub_1E4201F44();

    sub_1E325F6F0(v10, &qword_1ECF38B00);
  }

  else
  {
    sub_1E4201C14();
    v20 = sub_1E4202C24();
    v22 = v21;
    v24 = v23;
    v30[1] = v7;
    v26 = v25;
    OUTLINED_FUNCTION_325();
    v27 = swift_allocObject();
    *(v27 + 16) = v5;
    *(v27 + 24) = v3;
    *(v27 + 32) = v17;
    v31 = v24 & 1;
    *v13 = v20;
    *(v13 + 1) = v22;
    v13[16] = v24 & 1;
    *(v13 + 3) = v26;
    *(v13 + 4) = sub_1E3DC34FC;
    *(v13 + 5) = v27;
    *(v13 + 6) = 0;
    *(v13 + 7) = 0;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    sub_1E380E99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B10);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v28, v29);
    sub_1E3DC2440();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3DC2304()
{
  result = qword_1ECF38AE0;
  if (!qword_1ECF38AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38AD0);
    sub_1E3DC2388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38AE0);
  }

  return result;
}

unint64_t sub_1E3DC2388()
{
  result = qword_1ECF38AE8;
  if (!qword_1ECF38AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38AF0);
    sub_1E32752B0(&qword_1ECF38AF8, &qword_1ECF38B00);
    sub_1E3DC2440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38AE8);
  }

  return result;
}

unint64_t sub_1E3DC2440()
{
  result = qword_1ECF38B08;
  if (!qword_1ECF38B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38B08);
  }

  return result;
}

void sub_1E3DC24C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v33 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B48);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v22 = v7;
  sub_1E41FF294();
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  v25 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B50) + 36)];
  *v25 = KeyPath;
  v25[1] = sub_1E37E09AC;
  v25[2] = v24;
  OUTLINED_FUNCTION_325();
  v26 = swift_allocObject();
  *(v26 + 16) = v5;
  *(v26 + 24) = v3;
  v1 &= 1u;
  *(v26 + 32) = v1;
  v27 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B58) + 36)];
  *v27 = sub_1E3DC35A0;
  v27[1] = v26;
  v27[2] = 0;
  v27[3] = 0;
  OUTLINED_FUNCTION_325();
  v28 = swift_allocObject();
  *(v28 + 16) = v5;
  *(v28 + 24) = v3;
  *(v28 + 32) = v1;
  v29 = &v21[*(v16 + 44)];
  *v29 = 0;
  *(v29 + 1) = 0;
  *(v29 + 2) = sub_1E3DC35AC;
  *(v29 + 3) = v28;
  OUTLINED_FUNCTION_7_172();
  sub_1E380E99C();
  OUTLINED_FUNCTION_7_172();
  sub_1E380E99C();
  *v14 = sub_1E4201D44();
  *(v14 + 1) = 0;
  v14[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B60);
  OUTLINED_FUNCTION_7_172();
  sub_1E3DC27F0();
  sub_1E3DC364C(v21, v18);
  sub_1E37E93E8(v14, v11, &qword_1ECF38B40);
  v30 = v33;
  sub_1E3DC364C(v18, v33);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B68);
  sub_1E37E93E8(v11, v30 + *(v31 + 48), &qword_1ECF38B40);
  sub_1E325F6F0(v14, &qword_1ECF38B40);
  sub_1E325F6F0(v21, &qword_1ECF38B48);
  sub_1E325F6F0(v11, &qword_1ECF38B40);
  sub_1E325F6F0(v18, &qword_1ECF38B48);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DC27F0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v21[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B70);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B78);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_325();
  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  *(v17 + 24) = v4;
  *(v17 + 32) = v2 & 1;
  v21[4] = v6;
  v21[5] = v4;
  v22 = v2 & 1;
  sub_1E380E99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F488);
  sub_1E32752B0(&qword_1ECF2F5B0, &qword_1ECF2F488);
  sub_1E4203964();
  v18 = sub_1E32752B0(&qword_1ECF38B80, &qword_1ECF38B70);
  v19 = sub_1E3DC3788();
  sub_1E4202DA4();
  (*(v10 + 8))(v13, v8);
  v23 = v8;
  v24 = &type metadata for BackButtonStyle;
  v25 = v18;
  v26 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v21[0];
  sub_1E4202F14();
  (*(v15 + 8))(v0, v20);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DC2A94(uint64_t a1)
{
  (*(*a1 + 1496))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
  if (swift_dynamicCast())
  {
    sub_1E37DADF4(v5, v8);
    sub_1E3280A90(0, &qword_1EE23B350);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE98);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E4297BE0;
    sub_1E327F454(v8, v1 + 32);
    sub_1E4039C00(3, v1);
    v3 = v2;
    [objc_opt_self() playMediaInfo:v2 watchType:0 isRentAndWatchNow:0];

    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    return sub_1E325F6F0(v5, &qword_1ECF2CE78);
  }
}

uint64_t sub_1E3DC2C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E4201B14();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E4202384();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  (*(v14 + 16))(v13 - v12, a1);
  if (!a2)
  {
    sub_1E4203664();
  }

  if (!a3)
  {
    sub_1E4203704();
  }

  (*(v9 + 104))(v3, *MEMORY[0x1E697C450], v7);

  return sub_1E4202194();
}

double sub_1E3DC2DC8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32[-v9];
  v11 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E395FB64(v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1E325F6F0(v10, &qword_1ECF2ED18);
    if (a2)
    {
      return 10.0;
    }

    else
    {
      return *&a1;
    }
  }

  else
  {
    (*(v13 + 32))(v4, v10, v11);
    v32[8] = a2 & 1;
    v32[0] = a4 & 1;
    sub_1E4200EF4();
    v17 = v16;
    v18 = [objc_opt_self() currentDevice];
    v19 = [v18 userInterfaceIdiom];

    if (v19 == 1)
    {
      v20 = [objc_opt_self() mainScreen];
      [v20 bounds];
      v22 = v21;

      if (a2)
      {
        v15 = v22;
      }

      else
      {
        v15 = *&a1;
      }

      sub_1E4201444();
      v24 = v23;
      v25 = OUTLINED_FUNCTION_53();
      v26(v25);
      if (v15 >= v22 * v24)
      {
        return v22 * v24;
      }
    }

    else
    {
      sub_1E4201424();
      v28 = v27;
      v29 = OUTLINED_FUNCTION_53();
      v30(v29);
      return v17 - (v28 + v28);
    }
  }

  return v15;
}

uint64_t sub_1E3DC305C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11[-v2];
  v4 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E395FB64(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_1E325F6F0(v3, &qword_1ECF2ED18);
  }

  v9 = OUTLINED_FUNCTION_74();
  v10(v9);
  sub_1E4203F04();
  v11[8] = 0;
  v11[0] = 0;
  sub_1E4200F04();
  return (*(v6 + 8))(v0, v4);
}

void (*sub_1E3DC3224(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3DC3298()
{
  v0 = sub_1E4201B14();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E4202384();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v8 = OUTLINED_FUNCTION_53();
  v9(v8);
  sub_1E4203694();
  sub_1E4203704();
  (*(v2 + 104))(v6, *MEMORY[0x1E697C450], v0);
  return sub_1E4202194();
}

unint64_t sub_1E3DC3444()
{
  result = qword_1ECF38B18;
  if (!qword_1ECF38B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38B18);
  }

  return result;
}

uint64_t sub_1E3DC34FC()
{
  type metadata accessor for ClarityPlayerViewModel();
  OUTLINED_FUNCTION_0_242();
  sub_1E3DC3A24(v0, v1, v2);
  v3 = *(sub_1E4200BC4() + 16);

  sub_1E3DC2A94(v3);
}

uint64_t sub_1E3DC35B8(SEL *a1)
{
  type metadata accessor for ClarityPlayerViewModel();
  OUTLINED_FUNCTION_0_242();
  sub_1E3DC3A24(v2, v3, v4);
  OUTLINED_FUNCTION_8_145();
  sub_1E4200BC4();
  sub_1E3DC1C38(a1);
}

uint64_t sub_1E3DC364C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_41()
{
  sub_1E3264CE0();
  OUTLINED_FUNCTION_325();

  return swift_deallocObject();
}

unint64_t sub_1E3DC3788()
{
  result = qword_1EE2A4548[0];
  if (!qword_1EE2A4548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A4548);
  }

  return result;
}

void sub_1E3DC37DC(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for ClarityPlayerViewModel();
    OUTLINED_FUNCTION_0_242();
    sub_1E3DC3A24(v4, v5, v6);
    OUTLINED_FUNCTION_8_145();
    sub_1E4200BC4();
    sub_1E3DC1830();

    v7 = sub_1E4205ED4();

    v8 = [v3 localizedStringForKey_];

    if (v8)
    {
      sub_1E4205F14();

      sub_1E32822E0();
      *a1 = sub_1E4202C44();
      *(a1 + 8) = v9;
      *(a1 + 16) = v10 & 1;
      *(a1 + 24) = v11;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3DC3954@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ClarityPlayerViewModel();
  OUTLINED_FUNCTION_0_242();
  sub_1E3DC3A24(v2, v3, v4);
  OUTLINED_FUNCTION_8_145();
  sub_1E4200BC4();
  sub_1E3DC1830();

  result = sub_1E42037C4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3DC3A24(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1E3DC3A6C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isPlaybackUIBeingShown];

  if (v1)
  {
    OUTLINED_FUNCTION_7_4();
    if (swift_weakLoadStrong())
    {
      sub_1E3DC1C98();
    }
  }
}

uint64_t sub_1E3DC3AF4()
{
  OUTLINED_FUNCTION_7_4();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for ClarityPlayerViewModel();
    OUTLINED_FUNCTION_0_242();
    sub_1E3DC3A24(v1, v2, v3);
    sub_1E4200514();

    sub_1E4200594();
  }

  return result;
}

uint64_t sub_1E3DC3B84(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_12_121(v1 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  sub_1E3DC5E88(v3, v5, v6, v7, v8, v9);
  *(v1 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_viewModel) = a1;

  type metadata accessor for SidebarItemViewInteractor(0);
  OUTLINED_FUNCTION_0_243();
  sub_1E3DC5124(v10, v11);
  sub_1E4200514();
  sub_1E4200594();
}

uint64_t sub_1E3DC3C44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel);
  v5 = *(v2 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel + 40);
  if (v5)
  {
    v6 = v4[3];
    v7 = v4[4];
    v8 = v4[1];
    v9 = v4[2];
    v10 = *v4;

LABEL_49:
    *a2 = v10;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v6;
    a2[4] = v7;
    a2[5] = v5;
    return result;
  }

  v64 = a1;
  v59 = (v2 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel);
  type metadata accessor for ImageLayout();
  v5 = sub_1E3BD61D8();
  v12 = *(v2 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_viewModel);
  if (!v12 || (v13 = *(*v12 + 464), v14 = , v15 = v13(v14), , !v15))
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  result = sub_1E32AE9B0(v15);
  v60 = a2;
  if (!result)
  {

    v7 = 0;
    v9 = 0;
    v8 = 0;
    v10 = 0;
LABEL_48:
    v52 = *v59;
    v67 = v59[1];
    v53 = v59[2];
    v54 = v59[3];
    v55 = v59[4];
    v56 = v59[5];
    *v59 = v10;
    v59[1] = v8;
    v59[2] = v9;
    v59[3] = 0;
    v59[4] = v7;
    v59[5] = v5;

    result = sub_1E3DC5E88(v52, v67, v53, v54, v55, v56);
    v6 = 0;
    a2 = v60;
    goto LABEL_49;
  }

  if (result >= 1)
  {
    v58 = 0;
    v61 = 0;
    v62 = 0;
    v10 = 0;
    v16 = 0;
    v65 = v15 & 0xC000000000000001;
    v66 = v15;
    while (1)
    {
      v17 = result;
      if (v65)
      {
        v18 = MEMORY[0x1E6911E60](v16, v15);
      }

      else
      {
        v18 = *(v15 + 8 * v16 + 32);
      }

      v19 = *(v18 + 98);
      v72 = v19;
      sub_1E3742F1C();
      OUTLINED_FUNCTION_13_132();
      v20 = OUTLINED_FUNCTION_5_173();
      OUTLINED_FUNCTION_10_125(v20, v21, v22, v23, v24, v25, v26, v27, v57, v58, v59, v60, v61, v62, v64, v65, v66, v68, v69, v70);
      v28 = v28 && &qword_1F5D5CE68 == &v72;
      if (v28)
      {
        break;
      }

      v29 = OUTLINED_FUNCTION_20_8();

      if (v29)
      {
        goto LABEL_34;
      }

      v72 = v19;
      OUTLINED_FUNCTION_11_132(23);
      OUTLINED_FUNCTION_13_132();
      v30 = OUTLINED_FUNCTION_5_173();
      OUTLINED_FUNCTION_10_125(v30, v31, v32, v33, v34, v35, v36, v37, v57, v58, v59, v60, v61, v62, v64, v65, v66, v68, v69, v70);
      if (v28 && &qword_1F5D5CE68 == &v72)
      {

LABEL_38:

        if (*v18 == _TtC8VideosUI13TextViewModel)
        {
          v62 = v18;
        }

        else
        {

          v62 = 0;
        }

        goto LABEL_35;
      }

      v39 = OUTLINED_FUNCTION_20_8();

      if (v39)
      {
        goto LABEL_38;
      }

      v72 = v19;
      OUTLINED_FUNCTION_11_132(15);
      OUTLINED_FUNCTION_13_132();
      v40 = OUTLINED_FUNCTION_5_173();
      OUTLINED_FUNCTION_10_125(v40, v41, v42, v43, v44, v45, v46, v47, v57, v58, v59, v60, v61, v63, v64, v65, v66, v68, v69, v70);
      if (v28 && &qword_1F5D5CE68 == &v72)
      {

LABEL_42:

        if (*v18 == _TtC8VideosUI13TextViewModel)
        {
          v61 = v18;
        }

        else
        {

          v61 = 0;
        }

        goto LABEL_35;
      }

      v49 = OUTLINED_FUNCTION_20_8();

      if (v49)
      {
        goto LABEL_42;
      }

      v72 = v19;
      OUTLINED_FUNCTION_11_132(31);
      OUTLINED_FUNCTION_13_132();
      OUTLINED_FUNCTION_5_173();
      if (v70 == v68 && v71 == v69)
      {

LABEL_46:

        v58 = v18;
        goto LABEL_35;
      }

      v51 = sub_1E42079A4();

      if (v51)
      {
        goto LABEL_46;
      }

LABEL_35:
      v15 = v66;
      result = v17;
      if (v17 == ++v16)
      {

        v7 = v58;
        v9 = v61;
        v8 = v62;
        goto LABEL_48;
      }
    }

LABEL_34:

    sub_1E37DAE10();
    (*(*v5 + 1648))();

    v10 = v18;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3DC4144()
{
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_viewModel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel);
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = 0u;
  return sub_1E3B500B4();
}

uint64_t sub_1E3DC416C()
{

  v1 = OUTLINED_FUNCTION_12_121(v0 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel);

  return sub_1E3DC5E88(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1E3DC41B8()
{
  v0 = sub_1E3B4FF80();

  v1 = OUTLINED_FUNCTION_12_121(v0 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_menuItemViewModel);
  sub_1E3DC5E88(v1, v2, v3, v4, v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v7, v8);
}

uint64_t sub_1E3DC4260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v4 = *(type metadata accessor for LibSidebarItemViewVisionOS(0) + 32);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  OUTLINED_FUNCTION_10_5();
  *a2 = a1;

  *(a2 + 16) = *sub_1E3C8DCB4();
  v5 = OUTLINED_FUNCTION_20_93();

  v6 = v5;
  sub_1E3DC4144();
  OUTLINED_FUNCTION_38();
  sub_1E3B6C5EC();
  v8 = v7;

  if (v8)
  {
    *(a2 + 8) = v8;
    *(v6 + OBJC_IVAR____TtC8VideosUIP33_CA14F8BAE69EE8EA75B98CDED023906025SidebarItemViewInteractor_viewModel) = v8;
  }

  *(a2 + 24) = sub_1E3A7697C;
  *(a2 + 32) = v6;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E3DC4368@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for LibSidebarItemViewVisionOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38B98);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  type metadata accessor for SidebarItemViewInteractor(0);
  OUTLINED_FUNCTION_0_243();
  sub_1E3DC5124(v13, v14);
  sub_1E4200BC4();
  sub_1E3DC3C44(v1[2], v29);

  *v9 = sub_1E4201B84();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BB0);
  sub_1E3DC4734(v29, v1, &v9[*(v15 + 44)]);
  v16 = sub_1E325F6F0(v29, &qword_1ECF38BB8);
  v17 = *v1;
  if (v17)
  {
    (*(*v17 + 248))(v16);
    v18 = sub_1E3B501F8();
  }

  else
  {
    v18 = sub_1E3B4F980();
  }

  sub_1E3DC5F0C();
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_1E3DC4C64(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_1E32D4A8C();
  v21 = v26;
  *&v12[*(v26 + 52)] = v18;
  v22 = &v12[*(v21 + 56)];
  *v22 = sub_1E3DC4CC8;
  v22[1] = v20;
  v28 = v2[1];
  sub_1E3DC5F0C();
  v23 = swift_allocObject();
  sub_1E3DC4C64(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28);
  sub_1E3DC500C();
  sub_1E3DC5070();
  sub_1E4203524();

  return sub_1E325F6F0(v12, &qword_1ECF38BA0);
}

uint64_t sub_1E3DC4734@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v47 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v48 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v50 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v53 = &v45 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BD8);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v49 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v45 - v29;
  *v30 = sub_1E4201B84();
  *(v30 + 1) = 0;
  v31 = 1;
  v30[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BE0);
  sub_1E3DC516C(a1, a2, &v30[*(v32 + 44)]);
  v33 = a1[5];
  if (v33 && a1[2])
  {

    sub_1E374EB64();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v16 + 32))(v53, v19, v14);
    v31 = 0;
  }

  v34 = 1;
  __swift_storeEnumTagSinglePayload(v53, v31, 1, v14);
  if (v33)
  {
    v35 = a1[4];
    v36 = v51;
    if (v35)
    {

      sub_1E3EB9BB4(v54);
      v37 = sub_1E38A86A4();
      v38 = OUTLINED_FUNCTION_18();
      v39 = v46;
      sub_1E37E8BE8(v35, v54, v37, v38 & 1, 0, 0, v46);

      sub_1E375C31C(v54);
      (*(v47 + 32))(v13, v39, v36);
      v34 = 0;
    }
  }

  else
  {
    v36 = v51;
  }

  __swift_storeEnumTagSinglePayload(v13, v34, 1, v36);
  v40 = v49;
  sub_1E378249C();
  v41 = v53;
  v42 = v50;
  sub_1E378249C();
  v43 = v48;
  sub_1E378249C();
  sub_1E378249C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BE8);
  sub_1E378249C();
  sub_1E378249C();
  sub_1E325F6F0(v13, &qword_1ECF29938);
  sub_1E325F6F0(v41, &qword_1ECF29210);
  sub_1E325F6F0(v30, &qword_1ECF38BD8);
  sub_1E325F6F0(v43, &qword_1ECF29938);
  sub_1E325F6F0(v42, &qword_1ECF29210);
  return sub_1E325F6F0(v40, &qword_1ECF38BD8);
}

uint64_t sub_1E3DC4C64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibSidebarItemViewVisionOS(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DC4CC8()
{
  v1 = type metadata accessor for LibSidebarItemViewVisionOS(0);
  result = OUTLINED_FUNCTION_17_2(v1);
  if (*(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80))))
  {

    if (sub_1E38BBD0C())
    {
      sub_1E3B6C5EC();
      if (v4)
      {
        type metadata accessor for SidebarItemViewInteractor(0);
        OUTLINED_FUNCTION_0_243();
        sub_1E3DC5124(v5, v6);
        sub_1E4200BC4();
        OUTLINED_FUNCTION_38();

        sub_1E3DC3B84(v7);
      }
    }
  }

  return result;
}

uint64_t objectdestroyTm_42()
{
  v1 = (type metadata accessor for LibSidebarItemViewVisionOS(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1E3264CE0();
  v3 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3DC4F30(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for LibSidebarItemViewVisionOS(0);
  OUTLINED_FUNCTION_17_2(v3);
  v4 = *a2;
  type metadata accessor for SidebarItemViewInteractor(0);
  OUTLINED_FUNCTION_0_243();
  sub_1E3DC5124(v5, v6);
  sub_1E4200BC4();
  sub_1E3DC3B84(v4);
}

unint64_t sub_1E3DC500C()
{
  result = qword_1ECF38BC0;
  if (!qword_1ECF38BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38BC0);
  }

  return result;
}

unint64_t sub_1E3DC5070()
{
  result = qword_1EE23B6C0;
  if (!qword_1EE23B6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BB28);
    sub_1E3DC5124(&qword_1EE23BA60, type metadata accessor for ViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B6C0);
  }

  return result;
}

uint64_t sub_1E3DC5124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3DC516C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v5 = a1[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v60 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v59 = v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v65 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v64 = v55 - v14;
  v15 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LibMenuIconContainerView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v55 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BF8);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v62 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  v66 = v55 - v32;
  v33 = 1;
  v61 = a1;
  if (v5)
  {
    v58 = v27;
    v34 = v17;
    v35 = v15;
    v36 = *a1;
    if (*a1)
    {
      v37 = type metadata accessor for LibSidebarItemViewVisionOS(0);
      v57 = a3;
      v55[2] = *(v37 + 32);

      v56 = v6;
      v38 = v63;
      sub_1E3746E10(v20);
      v55[1] = *(v38 + 16);
      v39 = sub_1E3DA2B98();
      (*(*v5 + 256))(COERCE_DOUBLE(*&v39), 0);
      (*(*v5 + 360))(COERCE_DOUBLE(*&v39), 0);
      v40 = *(v34 + 8);
      v40(v20, v35);
      v41 = *(v21 + 24);
      *(v24 + v41) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
      OUTLINED_FUNCTION_10_5();
      *v24 = v36;
      v24[1] = v5;

      sub_1E3746E10(v20);
      v42 = sub_1E3DA2B98();
      v40(v20, v35);
      *v55 = v42;
      a3 = v57;
      sub_1E3746E10(v20);
      sub_1E3DA2B98();
      v40(v20, v35);
      sub_1E4203DA4();
      v6 = v56;
      sub_1E4200D94();
      v43 = v58;
      sub_1E3DC5F0C();
      v44 = (v43 + *(v67 + 36));
      v45 = v69;
      *v44 = v68;
      v44[1] = v45;
      v44[2] = v70;
      sub_1E3DC5F64(v24);
      sub_1E3DC5FC0(v43, v66);
      v33 = 0;
    }
  }

  v46 = v66;
  __swift_storeEnumTagSinglePayload(v66, v33, 1, v67);
  if (v5)
  {
    v47 = 1;
    v48 = v64;
    if (v61[1])
    {

      sub_1E37BD068();
      OUTLINED_FUNCTION_18();
      v49 = v59;
      OUTLINED_FUNCTION_32_0();
      sub_1E3F23370();

      (*(v60 + 32))(v48, v49, v6);
      v47 = 0;
    }
  }

  else
  {
    v47 = 1;
    v48 = v64;
  }

  __swift_storeEnumTagSinglePayload(v48, v47, 1, v6);
  v50 = v62;
  sub_1E378249C();
  v51 = v65;
  sub_1E378249C();
  sub_1E378249C();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C00);
  sub_1E378249C();
  v53 = a3 + *(v52 + 64);
  *v53 = 0;
  *(v53 + 8) = 1;
  sub_1E325F6F0(v48, &qword_1ECF29210);
  sub_1E325F6F0(v46, &qword_1ECF38BF8);
  sub_1E325F6F0(v51, &qword_1ECF29210);
  return sub_1E325F6F0(v50, &qword_1ECF38BF8);
}

double sub_1E3DC5800@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1E3EB9BB4(v9);
  v4 = v1[1];
  v5 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v3, v9, v4, v5 & 1, 0, 0, a1);
  sub_1E375C31C(v9);
  sub_1E4203DA4();
  sub_1E4200D94();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1A8) + 36));
  v7 = v11;
  *v6 = v10;
  v6[1] = v7;
  result = *&v12;
  v6[2] = v12;
  return result;
}

uint64_t sub_1E3DC58C0(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    type metadata accessor for LibMenuItem();
    sub_1E3DC5124(&qword_1EE286128, type metadata accessor for LibMenuItem);

    v5 = sub_1E4205E84();

    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
LABEL_9:
    v7 = 0;
    return v7 & 1;
  }

  v6 = a2[1];
  if (!a1[1])
  {
    v7 = v6 == 0;
    return v7 & 1;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  type metadata accessor for ViewModel();
  sub_1E3DC5124(&qword_1EE23BA60, type metadata accessor for ViewModel);

  v7 = sub_1E4205E84();

  return v7 & 1;
}

void sub_1E3DC5AE0()
{
  sub_1E3DC5DD4(319, &qword_1ECF38BC8, type metadata accessor for LibMenuItem, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E3DC5DD4(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LibListLockupViewLayout();
      if (v2 <= 0x3F)
      {
        sub_1E3DC5C2C();
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_4_191();
          sub_1E3DC5DD4(319, v4, v5, MEMORY[0x1E697DCC0]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3DC5C2C()
{
  if (!qword_1ECF38BD0)
  {
    type metadata accessor for SidebarItemViewInteractor(255);
    sub_1E3DC5124(&qword_1ECF38BA8, type metadata accessor for SidebarItemViewInteractor);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF38BD0);
    }
  }
}

void sub_1E3DC5CE8()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E3DC5DD4(319, qword_1EE286130, type metadata accessor for ImageLayout, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_4_191();
      sub_1E3DC5DD4(319, v2, v3, MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3DC5DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3DC5E38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1E3DC5E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t sub_1E3DC5F0C()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E3DC5F64(uint64_t a1)
{
  v2 = type metadata accessor for LibMenuIconContainerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3DC5FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DC6030(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 256) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3DC6084(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 256);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E37BB578;
}

uint64_t sub_1E3DC6188(__int16 a1, uint64_t a2, uint64_t a3)
{
  v3[32] = 0;
  swift_unknownObjectWeakInit();
  v3[33] = 0;
  v3[34] = 0;
  v3[35] = 0;

  v7 = sub_1E39BEDCC(a1, a2, a3);
  if (v7)
  {
    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 488);

    v11 = v9(v10);
    if (v11)
    {
      v12 = sub_1E373E010(117, v11);

      if (v12)
      {
        type metadata accessor for CollectionViewModel();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = 0;
LABEL_9:
    OUTLINED_FUNCTION_14_0();
    *(v7 + 264) = v13;
  }

  return v7;
}

uint64_t sub_1E3DC62E4()
{
  sub_1E32AF6F8(v0 + 248);
}

uint64_t sub_1E3DC6324()
{
  v0 = ViewModel.deinit();
  sub_1E32AF6F8(v0 + 248);

  return v0;
}

uint64_t sub_1E3DC636C()
{
  v0 = sub_1E3DC6324();

  return MEMORY[0x1EEE6BDC0](v0, 288, 7);
}

uint64_t sub_1E3DC639C()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 888))();
  if (result)
  {
    v2 = sub_1E40B8524();

    return v2;
  }

  return result;
}

uint64_t sub_1E3DC6420()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 888))();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    v3 = (*(v2 + 1488))();

    return v3 & 1;
  }

  return result;
}

uint64_t sub_1E3DC64A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v70 = a5;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  if ((sub_1E37D01CC() & 1) != 0 && (*(*v5 + 888))())
  {
    OUTLINED_FUNCTION_30();
    v22 = (*(v21 + 1504))(a1, a2, a3 & 1, a4, v70);

    return v22 & 1;
  }

  if (sub_1E37D01CC())
  {
    v24 = (*v5 + 888);
    v69 = *v24;
    if (v69())
    {
      OUTLINED_FUNCTION_30();
      v68 = (*(v25 + 1112))();
      v27 = v26;

      if (v27)
      {
        if ((*(*v5 + 648))(v28))
        {
          v67 = v24;
          OUTLINED_FUNCTION_5_0();
          Strong = swift_unknownObjectWeakLoadStrong();

          v66 = Strong;
          if (Strong)
          {
            v30 = v27;
            if (v5[34])
            {
              v31 = sub_1E324FBDC();
              (*(v13 + 16))(v20, v31, v11);
              v32 = sub_1E41FFC94();
              v33 = sub_1E42067E4();
              v65 = v32;
              if (os_log_type_enabled(v32, v33))
              {
                v34 = OUTLINED_FUNCTION_6_21();
                HIDWORD(v63) = v33;
                v35 = v34;
                v71 = OUTLINED_FUNCTION_100();
                v64 = v30;
                v36 = v71;
                *v35 = 136315138;
                v37 = ViewModelRequestType.rawValue.getter(a1);
                v39 = sub_1E3270FC8(v37, v38, &v71);

                *(v35 + 4) = v39;
                v40 = v65;
                _os_log_impl(&dword_1E323F000, v65, BYTE4(v63), "EpicInlineViewModel: Cancelling to handle new request of type [%s]", v35, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v36);
                v30 = v64;
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_6_0();
              }

              else
              {
              }

              (*(v13 + 8))(v20, v11);
              if (v6[34])
              {
                OUTLINED_FUNCTION_8();
                v46 = *(v45 + 376);

                v46(v47);
              }

              v6[34] = 0;
            }

            type metadata accessor for CollectionServiceRequestContext();
            v48 = v66;
            v49 = v66;
            v50 = sub_1E3E3D284(a1, v68, v30, v48);
            v51 = v69;
            v52 = v69();
            if (v52)
            {
              v53 = (*(*v52 + 1136))();
            }

            else
            {
              v53 = 0;
            }

            v54 = (*(*v50 + 232))(v53);
            if ((v51)(v54))
            {
              v55 = sub_1E39C1AA0();
            }

            else
            {
              v55 = 0;
            }

            (*(*v50 + 280))(v55);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A2A8);
            v56 = sub_1E37B2890();
            v6[34] = v56;

            v58 = (*(*v56 + 352))(v57);

            if (v58)
            {
              v59 = swift_allocObject();
              swift_weakInit();
              v60 = swift_allocObject();
              *(v60 + 16) = v59;
              *(v60 + 24) = a1;
              v61 = v70;
              *(v60 + 32) = a4;
              *(v60 + 40) = v61;
              sub_1E34AF604(a4);
              v62 = sub_1E41EC148(sub_1E3DC7BB8, v60);
            }

            else
            {

              v62 = 0;
            }

            v6[35] = v62;

            return 0;
          }
        }
      }
    }

    v41 = sub_1E324FBDC();
    (*(v13 + 16))(v17, v41, v11);
    v42 = sub_1E41FFC94();
    v43 = sub_1E42067E4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_125_0();
      *v44 = 0;
      _os_log_impl(&dword_1E323F000, v42, v43, "EpicInlineViewModel: Cannot make request because of missing app context", v44, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v13 + 8))(v17, v11);
  }

  return 0;
}

uint64_t sub_1E3DC6B70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v55 = a4;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v21 = *a1;
  if (*(a1 + 17))
  {
    v22 = *(a1 + 16);
    v54 = a5;
    if (v22 == 2)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_12_7();
      v23(v14);
      v24 = OUTLINED_FUNCTION_39_0();
      sub_1E3781F8C(v24, v25, 2u);
      v26 = sub_1E41FFC94();
      v27 = sub_1E42067F4();
      v28 = OUTLINED_FUNCTION_39_0();
      sub_1E37D172C(v28, v29, 2u, 1);
      if (os_log_type_enabled(v26, v27))
      {
        v30 = OUTLINED_FUNCTION_6_21();
        v31 = OUTLINED_FUNCTION_100();
        v58[0] = v31;
        *v30 = 136315138;
        v32 = OUTLINED_FUNCTION_39_0();
        *(v30 + 4) = sub_1E3270FC8(v32, v33, v34);
        _os_log_impl(&dword_1E323F000, v26, v27, "EpicInlineViewModel: Received empty items from fragment request: [%s]", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v10 + 8))(v14, v8);
    }

    else
    {
      v40 = OUTLINED_FUNCTION_39_0();
      v56 = sub_1E3F6FB3C(v40, v41, v42);
      v57 = v43;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
      sub_1E4148C68(sub_1E37BCD7C, v44, v58);

      v46 = v58[0];
      v45 = v58[1];
      sub_1E324FBDC();
      OUTLINED_FUNCTION_12_7();
      v47(v17);

      v48 = sub_1E41FFC94();
      v49 = sub_1E42067F4();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = OUTLINED_FUNCTION_6_21();
        v51 = OUTLINED_FUNCTION_100();
        v58[0] = v51;
        *v50 = 136315138;
        v52 = sub_1E3270FC8(v46, v45, v58);

        *(v50 + 4) = v52;
        _os_log_impl(&dword_1E323F000, v48, v49, "EpicInlineViewModel: Received error [%s]", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_13_4();
      }

      else
      {
      }

      (*(v10 + 8))(v17, v8);
    }

    OUTLINED_FUNCTION_5_0();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 272) = 0;
    }

    OUTLINED_FUNCTION_5_0();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + 280) = 0;
    }

    if (v55)
    {
      return (v55)(0);
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v35(v20);
    v36 = sub_1E41FFC94();
    v37 = sub_1E42067E4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_125_0();
      *v38 = 0;
      _os_log_impl(&dword_1E323F000, v36, v37, "EpicInlineViewModel: Received success response", v38, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v10 + 8))(v20, v8);
    OUTLINED_FUNCTION_5_0();
    if (swift_weakLoadStrong())
    {
      sub_1E3DC7014(v21, a3, v55, a5);
    }

    OUTLINED_FUNCTION_5_0();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + 272) = 0;
    }
  }

  return result;
}

uint64_t sub_1E3DC7014(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v81 - v19;
  if ((sub_1E37D01CC() & 1) == 0)
  {
    v61 = 0;
    if (!a3)
    {
    }

    goto LABEL_44;
  }

  OUTLINED_FUNCTION_5_0();
  v20 = *(a1 + 40);
  if (!v20)
  {
    goto LABEL_40;
  }

  ViewModelKeys.rawValue.getter(3);
  sub_1E3277E60(v21, v22, v20, &v106);

  if (!*(&v107 + 1))
  {
    v62 = &v106;
LABEL_39:
    sub_1E329505C(v62);
    goto LABEL_40;
  }

  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  *(&v107 + 1) = &type metadata for ViewModelKeys;
  *&v108 = &off_1F5D7BCA8;
  LOBYTE(v106) = 13;
  sub_1E3F9F164(&v106);

  if (!*(&v104 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v106);
    v62 = &v103;
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v106);
    goto LABEL_40;
  }

  v23 = v101;
  __swift_destroy_boxed_opaque_existential_1(&v106);
  if (!*(v23 + 16))
  {

    goto LABEL_40;
  }

  v83 = v17;
  v89 = v4;
  v81 = v14;
  v84 = a4;
  v85 = a3;
  v24 = *(v23 + 32);

  v86 = 0;
  v88 = 0;
  v27 = 0;
  v29 = v24 + 64;
  v28 = *(v24 + 64);
  v93 = v24;
  v30 = 1 << *(v24 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v28;
  a3 = ((v30 + 63) >> 6);
  v91 = v10 + 16;
  v82 = v10;
  v92 = (v10 + 8);
  *&v26 = 136315138;
  v87 = v26;
  v33 = v96;
  v94 = v24 + 64;
  if ((v31 & v28) != 0)
  {
    do
    {
      v34 = v27;
LABEL_16:
      v35 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v36 = v35 | (v34 << 6);
      v37 = (*(v93 + 48) + 16 * v36);
      v39 = *v37;
      v38 = v37[1];
      sub_1E328438C(*(v93 + 56) + 32 * v36, &v101);
      *&v103 = v39;
      *(&v103 + 1) = v38;
      sub_1E329504C(&v101, &v104);

LABEL_17:
      v106 = v103;
      v107 = v104;
      v108 = v105;
      v40 = *(&v103 + 1);
      if (!*(&v103 + 1))
      {

        if (v86)
        {
          sub_1E324FBDC();
          OUTLINED_FUNCTION_11_133();
          v70(v83);
          v71 = sub_1E41FFC94();
          v72 = sub_1E42067E4();
          os_log_type_enabled(v71, v72);
          OUTLINED_FUNCTION_12_122();
          v73 = v88;
          if (v74)
          {
            *OUTLINED_FUNCTION_125_0() = 0;
            OUTLINED_FUNCTION_13_133(&dword_1E323F000, v75, v76, "Replaced from fragment successfully");
            OUTLINED_FUNCTION_13_4();
          }

          v77 = (*v92)(v83, v8);
          if ((*(*v89 + 864))(v77))
          {
            v79 = v78;
            ObjectType = swift_getObjectType();
            v61 = (*(v79 + 8))(v73, ObjectType, v79);
            swift_unknownObjectRelease();
            if (!a3)
            {
            }

LABEL_44:
            a3(v61 & 1);
          }

LABEL_43:
          v61 = 0;
          if (!a3)
          {
          }

          goto LABEL_44;
        }

        OUTLINED_FUNCTION_12_122();
        v10 = v82;
        v14 = v81;
LABEL_40:
        v63 = sub_1E324FBDC();
        (*(v10 + 16))(v14, v63, v8);
        v64 = sub_1E41FFC94();
        v65 = sub_1E42067F4();
        if (os_log_type_enabled(v64, v65))
        {
          *OUTLINED_FUNCTION_125_0() = 0;
          OUTLINED_FUNCTION_13_133(&dword_1E323F000, v66, v67, "Received invalid fragment for .replace");
          OUTLINED_FUNCTION_13_4();
        }

        v68 = OUTLINED_FUNCTION_39_0();
        v69(v68);
        goto LABEL_43;
      }

      v41 = v106;
      sub_1E329504C(&v107, &v103);

      v42 = sub_1E38506C8();
      if (v42 == 263)
      {
        goto LABEL_26;
      }

      v43 = v42;
      sub_1E328438C(&v103, &v101);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_26;
      }

      v90 = v97;
      v100 = v89[49];
      v99 = v43;
      sub_1E3742F1C();
      sub_1E4206254();
      sub_1E4206254();
      if (v101 == v97 && *(&v101 + 1) == v98)
      {
      }

      else
      {
        v45 = sub_1E42079A4();

        if ((v45 & 1) == 0)
        {

LABEL_26:
          sub_1E324FBDC();
          OUTLINED_FUNCTION_11_133();
          v46(v33);

          v47 = sub_1E41FFC94();
          v48 = sub_1E4206814();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = OUTLINED_FUNCTION_6_21();
            v50 = v8;
            v51 = OUTLINED_FUNCTION_100();
            *&v101 = v51;
            *v49 = v87;
            v52 = sub_1E3270FC8(v41, v40, &v101);

            *(v49 + 4) = v52;
            _os_log_impl(&dword_1E323F000, v47, v48, "Invalid model type in fragment <%s>", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v51);
            v8 = v50;
            v33 = v96;
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_13_4();
          }

          else
          {
          }

          v53 = OUTLINED_FUNCTION_39_0();
          v54(v53);
          result = __swift_destroy_boxed_opaque_existential_1(&v103);
          goto LABEL_30;
        }
      }

      v55 = v89;
      OUTLINED_FUNCTION_8();
      v57 = (*(v56 + 680))(v90);
      v58 = (*(*v55 + 672))(v57);
      v102 = v95;
      *&v101 = v58;
      v59 = (*(*v55 + 624))();
      v60 = sub_1E3A7CD30(v41, v40, &v101, v59);

      __swift_destroy_boxed_opaque_existential_1(&v103);
      result = __swift_destroy_boxed_opaque_existential_1(&v101);
      v86 = 1;
      v88 = v60;
LABEL_30:
      v29 = v94;
    }

    while (v32);
  }

  while (1)
  {
    v34 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v34 >= a3)
    {
      v32 = 0;
      v104 = 0u;
      v105 = 0u;
      v103 = 0u;
      goto LABEL_17;
    }

    v32 = *(v29 + 8 * v34);
    ++v27;
    if (v32)
    {
      v27 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3DC794C()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 888))();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    (*(v2 + 1528))();
  }

  return result;
}

uint64_t sub_1E3DC79DC()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 888))();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    (*(v2 + 1536))();
  }

  return result;
}

uint64_t sub_1E3DC7A6C()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 888))();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    (*(v2 + 1544))();
  }

  return result;
}

uint64_t sub_1E3DC7BEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity + 24);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity), v1);
  OUTLINED_FUNCTION_33();
  result = v3(v1, v2);
  if (v5)
  {
    return 1;
  }

  return result;
}

void *sub_1E3DC7C4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_seasons);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v1 + 32;

    v5 = v3;
    while (1)
    {
      sub_1E327F454(v4, v18);
      v6 = v19;
      v7 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      OUTLINED_FUNCTION_33();
      result = v8(v6, v7);
      v10 = result ? result : v3;
      v11 = v10[2];
      v12 = v5[2];
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v13 > v5[3] >> 1)
      {
        if (v12 <= v13)
        {
          v14 = v12 + v11;
        }

        else
        {
          v14 = v12;
        }

        result = sub_1E3AF90C0(result, v14, 1, v5);
        v5 = result;
      }

      if (v10[2])
      {
        if ((v5[3] >> 1) - v5[2] < v11)
        {
          goto LABEL_25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v15 = v5[2];
          v16 = __OFADD__(v15, v11);
          v17 = v15 + v11;
          if (v16)
          {
            goto LABEL_26;
          }

          v5[2] = v17;
        }
      }

      else
      {

        if (v11)
        {
          goto LABEL_24;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
      v4 += 40;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E3DC7DF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3DC7E68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3DC7DF4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3DC7EC0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3DC7F30()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3DC7FF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0;
  v12 = OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel__textViewModel;
  v21[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088);
  sub_1E4200634();
  (*(v8 + 32))(v3 + v12, v11, v6);
  v13 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_cancellables) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_seasons) = v13;
  sub_1E327F454(a1, v3 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity);
  v14 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  OUTLINED_FUNCTION_33();
  v16 = v15(v14);
  v18 = v17;

  v19 = sub_1E3B76D04(15, v16, v18, a2, 0, 0, 0);
  if (v19)
  {

    sub_1E3DC81C8();
    sub_1E3DC831C();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v19;
}

uint64_t sub_1E3DC81C8()
{
  v1 = sub_1E3B7B1C8();
  v2 = OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity;
  v3 = *(**v1 + 896);

  v3(&v9, v0 + v2);

  if (!v10)
  {
    return sub_1E325F7A8(&v9, &unk_1ECF2A740);
  }

  sub_1E37DADF4(&v9, v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v5 + 120);

  v7(v0 + v2, 1, sub_1E3DC90F4, v6, v4, v5);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1E3DC831C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v25 - v1;
  v27 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326E0);
  OUTLINED_FUNCTION_0_10();
  v28 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v20 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  sub_1E3B7B208();
  sub_1E4207074();
  v21 = [objc_opt_self() mainRunLoop];
  v29 = v21;
  v22 = sub_1E4207054();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_1E3280A90(0, &qword_1EE23AD08);
  sub_1E38DF10C();
  sub_1E3782CC4();
  sub_1E42007F4();
  sub_1E325F7A8(v2, &unk_1ECF3DB30);

  (*(v4 + 8))(v8, v27);
  (*(v11 + 8))(v15, v9);
  swift_allocObject();
  swift_weakInit();
  sub_1E32752B0(&unk_1EE28A2C0, &unk_1ECF326E0);
  v23 = v26;
  sub_1E4200844();

  (*(v28 + 8))(v19, v23);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580);
  sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580);
  sub_1E42004D4();
  swift_endAccess();
}

uint64_t sub_1E3DC8748()
{
  v1 = OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel__textViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity);
}

uint64_t sub_1E3DC87E4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = sub_1E3B7736C();
  v3 = OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel__textViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C08);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v2 + v3);
  __swift_destroy_boxed_opaque_existential_1(v2 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity);

  return v2;
}

uint64_t sub_1E3DC88B8()
{
  v0 = sub_1E3DC87E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3DC890C()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v62 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v61 = v6 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity + 24);
  v8 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_showEntity), v7);
  OUTLINED_FUNCTION_33();
  v9(v7, v8);
  if (v10)
  {
    return;
  }

  v11 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_seasons);
  v65 = *(v11 + 16);
  if (v65)
  {
    v59 = v0;
    v60 = v2;
    v64 = v11 + 32;

    v68 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v63 = v11;
    while (v15 < *(v11 + 16))
    {
      v67 = v15;
      sub_1E327F454(v64 + 40 * v15, v72);
      v16 = v73;
      v17 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      OUTLINED_FUNCTION_33();
      v19 = v18(v16, v17);
      __swift_destroy_boxed_opaque_existential_1(v72);
      v20 = MEMORY[0x1E69E7CC0];
      if (v19)
      {
        v20 = v19;
      }

      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = v20;
        sub_1E3280A90(0, &qword_1EE23AFA0);
        v23 = 0;
        v24 = v22 + 32;
        v66 = v13 + v21;
        v25 = v13 ^ 0x7FFFFFFFFFFFFFFFLL;
        while (1)
        {
          v26 = (v24 + 40 * v23);
          v28 = v26[3];
          v27 = v26[4];
          v29 = __swift_project_boxed_opaque_existential_1(v26, v28);
          v71[3] = v28;
          v71[4] = *(*(v27 + 8) + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
          (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v29, v28);
          v70 = 0;
          memset(v69, 0, sizeof(v69));
          v31 = sub_1E3BFF560(v71, v69);
          if (v31)
          {
            v32 = v31;
            v33 = [v31 downloadState];

            v34 = 0;
            while (v34 != 24)
            {
              v35 = *(&unk_1F5D85B50 + v34 + 32);
              v34 += 8;
              if (v35 == v33)
              {
                if (__OFADD__(v14++, 1))
                {
                  goto LABEL_35;
                }

                v68 = v14;
                break;
              }
            }
          }

          if (v23 == v25)
          {
            break;
          }

          if (++v23 == v21)
          {

            v12 = v66;
            v13 = v66;
            v11 = v63;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
        break;
      }

LABEL_19:
      v15 = v67 + 1;
      if (v67 + 1 == v65)
      {

        v2 = v60;
        v1 = v59;
        v37 = v68;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v37 = 0;
  v12 = 0;
LABEL_22:
  OUTLINED_FUNCTION_3_0();
  *(v1 + 288) = v12;
  v38 = [objc_opt_self() sharedInstance];
  v39 = v38;
  v40 = v37;
  if (v37)
  {
    if (!v38)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    sub_1E3741090(0xD000000000000024, 0x80000001E4283510, v38);
    v42 = v41;

    if (!v42)
    {
      goto LABEL_30;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v43 = swift_allocObject();
    v44 = MEMORY[0x1E69E6530];
    *(v43 + 16) = xmmword_1E4297BE0;
    v45 = MEMORY[0x1E69E65A8];
    *(v43 + 56) = v44;
    *(v43 + 64) = v45;
    *(v43 + 32) = v40;
  }

  else
  {
    if (!v38)
    {
LABEL_38:
      __break(1u);
      return;
    }

    sub_1E3741090(0xD000000000000012, 0x80000001E42834F0, v38);
    v47 = v46;

    if (!v47)
    {
      goto LABEL_30;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v48 = swift_allocObject();
    v49 = MEMORY[0x1E69E6530];
    *(v48 + 16) = xmmword_1E4297BE0;
    v50 = MEMORY[0x1E69E65A8];
    *(v48 + 56) = v49;
    *(v48 + 64) = v50;
    *(v48 + 32) = v12;
  }

  v51 = sub_1E4205EE4();
  v53 = v52;

  type metadata accessor for TextViewModel();
  v73 = MEMORY[0x1E69E6158];
  v72[0] = v51;
  v72[1] = v53;
  v54 = sub_1E39BE928();
  sub_1E3C27638(15, v72, v54, 0, 0);
LABEL_30:
  sub_1E3DC7EC0();
  v55 = sub_1E324FBDC();
  (*(v62 + 16))(v61, v55, v2);
  v56 = sub_1E41FFC94();
  v57 = sub_1E4206814();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134217984;
    *(v58 + 4) = v40;
    _os_log_impl(&dword_1E323F000, v56, v57, "LibDownloadingEpisodesViewModel:: update with numberOfDownloading %ld", v58, 0xCu);
    MEMORY[0x1E69143B0](v58, -1, -1);
  }

  (*(v62 + 8))(v61, v2);
}

uint64_t type metadata accessor for LibDownloadingEpisodesViewModel()
{
  result = qword_1EE292870;
  if (!qword_1EE292870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3DC8F84()
{
  sub_1E3DC9044();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3DC9044()
{
  if (!qword_1EE28A068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29088);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A068);
    }
  }
}

uint64_t sub_1E3DC90A8()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3DC81C8();
  }

  return result;
}

uint64_t sub_1E3DC90F4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8VideosUI31LibDownloadingEpisodesViewModel_seasons) = a1;
  }

  OUTLINED_FUNCTION_5_0();
  v3 = swift_weakLoadStrong();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_3_0();
    *(v4 + 280) = 1;
  }

  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3DC890C();
  }

  return result;
}

uint64_t sub_1E3DC91FC()
{
  type metadata accessor for ImageLayout();
  *(v0 + 104) = sub_1E3BD61D8();
  v1 = sub_1E3C2F9A0();

  sub_1E3DC9250();

  return v1;
}

void sub_1E3DC9250()
{
  OUTLINED_FUNCTION_31_1();
  LOBYTE(v150[0]) = 11;
  sub_1E3C3DE00(&unk_1F5D999E0);
  sub_1E3C2FC98();
  LOBYTE(v167) = v170;
  sub_1E3C3DE00(&unk_1F5D999E0);
  LOBYTE(v161) = v164;
  v0 = sub_1E3C3DE00(&unk_1F5D999E0);
  LOBYTE(v155) = v158;
  OUTLINED_FUNCTION_3_185(v0, v1, v2, v3, v4, v5, v6, v7, v119, v128, *v138, *&v138[8], *&v138[16], *&v138[24], *&v138[32], *&v138[40], *&v138[48], *&v138[56], *&v138[64], *&v138[72], *&v138[80], *&v138[88], v139, v140, v141, v142, v143, v144, v145, v146, v138[0]);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = __src[1];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v9 = *(v8 + 1600);
  (v9)(__dst, 26, v10 & 1, &unk_1F5D999E0);
  __dst[0] = xmmword_1E42B8830;
  __dst[1] = xmmword_1E42B8830;
  LOBYTE(__dst[2]) = 0;
  *&v150[0] = sub_1E3952C40();
  *(&v150[0] + 1) = v11;
  *&v150[1] = v12;
  *(&v150[1] + 1) = v13;
  LOBYTE(v150[2]) = 0;
  type metadata accessor for UIEdgeInsets();
  v15 = v14;
  sub_1E3C3DE00(v14);
  *(&v147 + 1) = *&v138[8];
  v148 = *&v138[16];
  LOBYTE(v149) = v138[32];
  sub_1E3C2FC98();
  v167 = v170;
  v168 = v171;
  v169 = v172;
  sub_1E3C3DE00(v15);
  v161 = v164;
  v162 = v165;
  v163 = v166;
  v16 = sub_1E3C3DE00(v15);
  v155 = v158;
  v156 = v159;
  v157 = v160;
  OUTLINED_FUNCTION_3_185(v16, v17, v18, v19, v20, v21, v22, v23, v120, v129, *v138, *&v138[8], *&v138[16], *&v138[24], *&v138[32], *&v138[40], *&v138[48], *&v138[56], *&v138[64], *&v138[72], *&v138[80], *&v138[88], v139, v140, v141, v142, v143, v144, v145, v146, v138[0]);
  memcpy(__dst, __src, 0xE9uLL);
  v24 = OUTLINED_FUNCTION_18();
  (v9)(__dst, 0, v24 & 1, v15);
  v25 = sub_1E39DFFC8();
  v26.n128_u64[0] = 6.0;
  if (v25)
  {
    v26.n128_f64[0] = 14.0;
  }

  *&__dst[0] = j__OUTLINED_FUNCTION_7_78(v26);
  *(&__dst[0] + 1) = v27;
  *&__dst[1] = v28;
  *(&__dst[1] + 1) = v29;
  LOBYTE(__dst[2]) = 0;
  sub_1E3C3DE00(v15);
  *v138 = v150[0];
  *&v138[16] = v150[1];
  v138[32] = v150[2];
  sub_1E3C2FC98();
  v170 = v147;
  v171 = v148;
  v172 = v149;
  sub_1E3C3DE00(v15);
  v164 = v167;
  v165 = v168;
  v166 = v169;
  sub_1E3C3DE00(v15);
  v158 = v161;
  v159 = v162;
  v160 = v163;
  sub_1E3C3DE00(v15);
  v151 = v155;
  v152 = v156;
  v153 = v157;
  sub_1E3C2FCB8(v138, __src);
  memcpy(__dst, __src, 0xE9uLL);
  v30 = OUTLINED_FUNCTION_18();
  (v9)(__dst, 17, v30 & 1, v15);
  *&v150[0] = 0x4054000000000000;
  BYTE8(v150[0]) = 0;
  *v138 = 0x403C000000000000;
  v138[8] = 0;
  v31 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  *&v170 = v147;
  BYTE8(v170) = BYTE8(v147);
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_9_133();
  OUTLINED_FUNCTION_15_67();
  OUTLINED_FUNCTION_13_134();
  sub_1E3C2FCB8(&v170, v32);
  memcpy(v150, __dst, 0x59uLL);
  v33 = OUTLINED_FUNCTION_18();
  (v9)(v150, 2, v33 & 1, v31);
  *&v170 = 0x4054000000000000;
  BYTE8(v170) = 0;
  v34 = sub_1E39DFFC8();
  v35 = 0x4050000000000000;
  if (v34)
  {
    v35 = 0x404A000000000000;
  }

  *&v150[0] = v35;
  BYTE8(v150[0]) = 0;
  sub_1E3C3DE00(v31);
  *&v147 = *v138;
  BYTE8(v147) = v138[8];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_9_133();
  OUTLINED_FUNCTION_15_67();
  OUTLINED_FUNCTION_13_134();
  sub_1E3C2FCB8(&v147, v36);
  memcpy(v150, __dst, 0x59uLL);
  v37 = OUTLINED_FUNCTION_18();
  (v9)(v150, 6, v37 & 1, v31);
  v38 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  v121 = objc_opt_self();
  v39 = [v121 blackColor];
  v40 = [v39 colorWithAlphaComponent_];

  [v38 setShadowColor_];
  [v38 setShadowOffset_];
  [v38 setShadowBlurRadius_];
  *v138 = v38;
  v41 = sub_1E3280A90(0, &unk_1EE23AD60);
  v130 = v38;
  sub_1E3C3DE00(v41);
  *&v167 = v147;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_5_174();
  sub_1E3C3DE00(v41);
  OUTLINED_FUNCTION_6_162();
  sub_1E3C3DE00(v41);
  v144 = v151;
  sub_1E3C3DE00(v41);
  v140 = v142;
  sub_1E3C2FCB8(&v167, v150);
  v42 = v150[0];
  v43 = v150[1];
  v44 = v150[2];
  *v138 = v150[0];
  *&v138[16] = v150[1];
  *&v138[32] = v150[2];
  v45 = OUTLINED_FUNCTION_18();
  v53 = OUTLINED_FUNCTION_12_2(v45, v46, v47, v48, v49, v50, v51, v52, v121, v130, v138[0]);
  v9(v53, 19);

  v146 = sub_1E4202A34();
  v54 = sub_1E39DFFC8();
  v55 = 0;
  if (v54)
  {
    v55 = sub_1E42027C4();
  }

  *&v150[0] = v55;
  v56 = MEMORY[0x1E6980F50];
  sub_1E3C3DE00(MEMORY[0x1E6980F50]);
  *&v167 = *v138;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_5_174();
  sub_1E3C3DE00(v56);
  OUTLINED_FUNCTION_6_162();
  sub_1E3C3DE00(v56);
  v144 = v151;
  sub_1E3C2FCB8(&v167, &v147);
  v150[0] = v147;
  v150[1] = v148;
  v150[2] = v149;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v58 = *(v57 + 1600);
  (v58)(v150, 95, v59 & 1, v56);

  v138[0] = 5;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v164) = v167;
  sub_1E3C2FC98();
  LOBYTE(v158) = v161;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v151) = v155;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v142) = v144;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  HIBYTE(v145) = v140;
  sub_1E3C2FCB8(&v164, v150);
  *v138 = v150[0];
  *&v138[4] = WORD2(v150[0]);
  v60 = OUTLINED_FUNCTION_18();
  v68 = OUTLINED_FUNCTION_12_2(v60, v61, v62, v63, v64, v65, v66, v67, v122, v131, v138[0]);
  v58(v68, 97);
  *v138 = [v123 whiteColor];
  v69 = *sub_1E3E5FDEC();
  *&v167 = v69;
  v70 = sub_1E3280A90(0, &qword_1EE23AE20);
  v71 = v69;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_5_174();
  sub_1E3C3DE00(v70);
  OUTLINED_FUNCTION_6_162();
  sub_1E3C3DE00(v70);
  v144 = v151;
  sub_1E3C3DE00(v70);
  v140 = v142;
  sub_1E3C2FCB8(v138, v150);
  v72 = v150[0];
  v73 = v150[1];
  v74 = v150[2];
  *v138 = v150[0];
  *&v138[16] = v150[1];
  *&v138[32] = v150[2];
  v75 = OUTLINED_FUNCTION_18();
  v83 = OUTLINED_FUNCTION_12_2(v75, v76, v77, v78, v79, v80, v81, v82, v123, v132, v138[0]);
  v58(v83, 21);

  *v138 = 0x4024000000000000;
  v138[8] = 0;
  *&v167 = 0x4030000000000000;
  BYTE8(v167) = 0;
  v84 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_8_146();
  OUTLINED_FUNCTION_11_134();
  v85 = OUTLINED_FUNCTION_10_126();
  OUTLINED_FUNCTION_2_190(v85, v86, v87, v88, v89, v90, v91, v92, v124, v133, *v138, *&v138[8], *&v138[16], *&v138[24], *&v138[32], *&v138[40], *&v138[48], *&v138[56], *&v138[64], *&v138[72], *&v138[80], *&v138[88], v139, v140, v141, v142, v143, v144, v145, v146, v147, *(&v147 + 1), v148, *(&v148 + 1), v149, *(&v149 + 1), v150[0]);
  memcpy(v138, v150, 0x59uLL);
  v93 = OUTLINED_FUNCTION_18();
  v101 = OUTLINED_FUNCTION_12_2(v93, v94, v95, v96, v97, v98, v99, v100, v125, v134, v138[0]);
  v58(v101, 2);
  *v138 = 0x4038000000000000;
  v138[8] = 0;
  *&v167 = 0x4041000000000000;
  BYTE8(v167) = 0;
  sub_1E3C3DE00(v84);
  OUTLINED_FUNCTION_8_146();
  OUTLINED_FUNCTION_11_134();
  v102 = OUTLINED_FUNCTION_10_126();
  OUTLINED_FUNCTION_2_190(v102, v103, v104, v105, v106, v107, v108, v109, v126, v135, *v138, *&v138[8], *&v138[16], *&v138[24], *&v138[32], *&v138[40], *&v138[48], *&v138[56], *&v138[64], *&v138[72], *&v138[80], *&v138[88], v139, v140, v141, v142, v143, v144, v145, v146, v147, *(&v147 + 1), v148, *(&v148 + 1), v149, *(&v149 + 1), v150[0]);
  memcpy(v138, v150, 0x59uLL);
  v110 = OUTLINED_FUNCTION_18();
  v118 = OUTLINED_FUNCTION_12_2(v110, v111, v112, v113, v114, v115, v116, v117, v127, v136, v138[0]);
  v58(v118, 6);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DC9BF0()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3DC9C3C(char a1)
{
  result = 1952867692;
  switch(a1)
  {
    case 1:
      result = 0x7468676972;
      break;
    case 2:
      result = 28789;
      break;
    case 3:
      result = 1853321060;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3DC9CA8(unsigned __int8 a1, char a2)
{
  v2 = 1952867692;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1952867692;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x7468676972;
      break;
    case 2:
      v3 = 0xE200000000000000;
      v5 = 28789;
      break;
    case 3:
      v5 = 1853321060;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x7468676972;
      break;
    case 2:
      v6 = 0xE200000000000000;
      v2 = 28789;
      break;
    case 3:
      v2 = 1853321060;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3DC9DC0()
{
  sub_1E4207B44();
  sub_1E3DC9E10();
  return sub_1E4207BA4();
}

uint64_t sub_1E3DC9E10()
{
  sub_1E4206014();
}

uint64_t sub_1E3DC9EAC()
{
  sub_1E4207B44();
  sub_1E3DC9E10();
  return sub_1E4207BA4();
}

uint64_t sub_1E3DC9EF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3DC9BF0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3DC9F20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3DC9C3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1E3DC9F70()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22[-v10];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v5;
  *(v12 + 32) = v3;
  *(v12 + 40) = v1;
  v22[16] = v7;
  v23 = v5;
  v24 = v3;
  v25 = v1;
  sub_1E37FAED4(v5, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C18);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38C20);
  v14 = sub_1E3DCA484();
  *&v29 = v13;
  *(&v29 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  sub_1E4203964();
  OUTLINED_FUNCTION_8();
  (*(v15 + 200))();
  OUTLINED_FUNCTION_36();
  (*(v16 + 304))();
  sub_1E4203DA4();
  sub_1E4200D94();
  v17 = &v11[*(v8 + 36)];
  v18 = v30;
  *v17 = v29;
  v17[1] = v18;
  v17[2] = v31;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0xD000000000000011, 0x80000001E4283560);
  v26 = v7;
  sub_1E4207614();
  v19 = v27;
  v20 = v28;
  v21 = sub_1E3DCA53C();
  sub_1E40A7FF0(v19, v20, 0, v8, v21);

  sub_1E325F6F0(v11, &qword_1ECF38C10);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DCA228()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1E3DCA258()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v18 - v6);
  *v7 = sub_1E4203DA4();
  v7[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C40);
  sub_1E3DCA668();
  OUTLINED_FUNCTION_8();
  (*(v9 + 200))();
  OUTLINED_FUNCTION_36();
  (*(v10 + 304))();
  sub_1E4203DA4();
  v11 = sub_1E4200D94();
  v12 = (v7 + *(v4 + 36));
  v13 = v18[1];
  *v12 = v18[0];
  v12[1] = v13;
  v12[2] = v18[2];
  v14 = (*(*v1 + 600))(v11);
  v15 = [objc_opt_self() blackColor];
  v16 = [v15 colorWithAlphaComponent_];

  v17 = sub_1E3DCA484();
  sub_1E3C42EB4(v14, v16, v4, v17, v3);

  sub_1E325F6F0(v7, &qword_1ECF38C20);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3DCA484()
{
  result = qword_1EE289758;
  if (!qword_1EE289758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38C20);
    sub_1E32752B0(&qword_1EE288438, &qword_1ECF38C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289758);
  }

  return result;
}

unint64_t sub_1E3DCA53C()
{
  result = qword_1EE2897F0;
  if (!qword_1EE2897F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38C10);
    sub_1E32752B0(&qword_1EE288628, &qword_1ECF38C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897F0);
  }

  return result;
}

unint64_t sub_1E3DCA5F8()
{
  result = qword_1ECF38C38;
  if (!qword_1ECF38C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38C38);
  }

  return result;
}

void sub_1E3DCA668()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v39 = v4;
  v5 = 1952867692;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C48);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v46 = sub_1E42036E4();
  v12 = (*(*v1 + 792))();
  (*(*v1 + 552))(v44);
  sub_1E3A6929C(v12, 0, 0, 1, v44, MEMORY[0x1E69815C0], MEMORY[0x1E6981580]);

  v13 = *(v7 + 44);
  v38 = v11;
  v14 = &v11[v13];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
  v16 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v17 + 104))(v14 + v15, v16);
  *v14 = swift_getKeyPath();
  if ([objc_opt_self() isTV])
  {
    v46 = 0x2E6E6F7276656863;
    v47 = 0xE800000000000000;
    v18 = 0xE400000000000000;
    switch(v3)
    {
      case 1:
        goto LABEL_4;
      case 2:
        v18 = 0xE200000000000000;
        v5 = 28789;
        break;
      case 3:
        v5 = 1853321060;
        break;
      default:
        break;
    }
  }

  else
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1E42074B4();

    v46 = 0xD000000000000010;
    v47 = 0x80000001E42835B0;
    v18 = 0xE400000000000000;
    switch(v3)
    {
      case 1:
LABEL_4:
        OUTLINED_FUNCTION_14_129();
        break;
      case 2:
        v18 = 0xE200000000000000;
        v5 = 28789;
        break;
      case 3:
        v5 = 1853321060;
        break;
      default:
        break;
    }
  }

  MEMORY[0x1E69109E0](v5, v18);

  v37 = sub_1E42037C4();
  OUTLINED_FUNCTION_8();
  if ((*(v19 + 2112))())
  {
    OUTLINED_FUNCTION_8();
    v21 = (*(v20 + 2160))();
    if (v21 == 11 || (sub_1E3E3B50C(v21), (v22 & 1) != 0))
    {
      sub_1E4202964();
    }

    v36 = sub_1E4202A04();
  }

  else
  {
    v36 = 0;
  }

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  if ((*(v24 + 672))())
  {
    v25 = sub_1E4203644();
  }

  else
  {
    v25 = 0;
  }

  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v27 + 200))();
  OUTLINED_FUNCTION_36();
  (*(v28 + 304))();
  sub_1E4203DA4();
  sub_1E4200D94();
  v29 = v38;
  v30 = v40;
  sub_1E32D4F70(v38, v40);
  v31 = v39;
  sub_1E32D4F70(v30, v39);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38C50) + 48);
  v34 = v36;
  v33 = v37;
  v45[0] = v37;
  v45[1] = KeyPath;
  v45[2] = v36;
  v45[3] = v26;
  v45[4] = v25;
  *&v45[5] = v41;
  *&v45[7] = v42;
  *&v45[9] = v43;
  memcpy((v31 + v32), v45, 0x58uLL);
  sub_1E3DCACD0(v45, &v46);
  sub_1E325F6F0(v29, &qword_1ECF38C48);
  v46 = v33;
  v47 = KeyPath;
  v48 = v34;
  v49 = v26;
  v50 = v25;
  v51 = v41;
  v52 = v42;
  v53 = v43;
  sub_1E3DCAD40(&v46);
  sub_1E325F6F0(v30, &qword_1ECF38C48);
  OUTLINED_FUNCTION_25_2();
}

_BYTE *storeEnumTagSinglePayload for ChevronIndicator.Direction(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3DCACD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DCAD40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3DCADD4()
{
  v0[6].i64[1] = 0;
  v0[7] = vdupq_n_s64(0x4041000000000000uLL);
  v1 = sub_1E3C2F9A0();

  sub_1E374E9C4();
  OUTLINED_FUNCTION_30();
  (*(v2 + 208))(0x403E000000000000, 0);

  v3 = *(v1 + 104);

  v4 = *sub_1E418A4F4();
  (*(*v3 + 440))(v4, 0);

  v5 = *(v1 + 104);
  v6 = objc_opt_self();

  v7 = [v6 isPad];
  v8.n128_u64[0] = 7.0;
  if (v7)
  {
    v8.n128_f64[0] = 15.0;
  }

  v13[0] = j__OUTLINED_FUNCTION_7_78(v8);
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  v14 = 0;
  (*(*v5 + 560))(v13);

  return v1;
}

id sub_1E3DCAF6C()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_8();
  v2 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_layout;
  type metadata accessor for SideBarCollectionViewListCellLayout();
  OUTLINED_FUNCTION_19_108();
  *(v0 + v2) = sub_1E3DCADD4();
  v3 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageLoader;
  v4 = sub_1E3CE4D98();
  v5 = *v4;
  *(v1 + v3) = *v4;
  OUTLINED_FUNCTION_3_186();
  type metadata accessor for SideBarCollectionViewListCell();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_2_0();
  v10 = objc_msgSendSuper2(v8, v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E4297BE0;
  v12 = sub_1E42001D4();
  v13 = MEMORY[0x1E69DC2B0];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0);
  sub_1E4206EC4();
  swift_unknownObjectRelease();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E4297BE0;
  v16 = sub_1E41FFDE4();
  v17 = MEMORY[0x1E69DC0A0];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E4206EC4();
  swift_unknownObjectRelease();

  return v14;
}

void sub_1E3DCB1CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_1E3DCB244()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_layout;
  type metadata accessor for SideBarCollectionViewListCellLayout();
  OUTLINED_FUNCTION_19_108();
  *(v0 + v2) = sub_1E3DCADD4();
  v3 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageLoader;
  *(v1 + v3) = *sub_1E3CE4D98();
  OUTLINED_FUNCTION_3_186();
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3DCB304(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38C68);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  sub_1E41FFD94();
  OUTLINED_FUNCTION_0_10();
  v32 = v10;
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E41FFD44();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = *(a1 + 32);
  v1[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isHeader] = v21;
  v22 = a1[3];
  v23 = &v1[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_title];
  *v23 = a1[2];
  *(v23 + 1) = v22;

  sub_1E373AFD8((a1 + 5), &v35);
  v24 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_sidebarItem;
  swift_beginAccess();
  sub_1E3DCB6DC(&v35, v2 + v24);
  swift_endAccess();
  sub_1E3DCBB3C();
  sub_1E3DCB87C();
  if (v21 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38C78);
    sub_1E41FFDA4();
    *(swift_allocObject() + 16) = xmmword_1E4297BE0;
    (*(v16 + 104))(v20, *MEMORY[0x1E69DBF28], v14);
    v25 = sub_1E41FFD74();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v25);
    v26 = sub_1E41FFD54();
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v26);
    sub_1E41FFD84();
    OUTLINED_FUNCTION_25();
    sub_1E41FFD64();
    (*(v32 + 8))(v13, v33);
    (*(v16 + 8))(v20, v14);
  }

  sub_1E4206D54();
  v27 = sub_1E4205F14();
  v29 = *a1;
  v28 = a1[1];
  v35 = v27;
  v36 = v30;

  MEMORY[0x1E69109E0](v29, v28);

  sub_1E3839D34(v35, v36, v2);
}

uint64_t sub_1E3DCB6DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DCB74C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SideBarCollectionViewListCell();
  objc_msgSendSuper2(&v7, sel_prepareForReuse);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v1 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_sidebarItem;
  swift_beginAccess();
  sub_1E3DCB6DC(v5, &v0[v1]);
  swift_endAccess();
  v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isHeader] = 0;
  v2 = &v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_title];
  *v2 = 0;
  *(v2 + 1) = 0;

  v3 = *&v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image];
  *&v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image] = 0;

  v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isBoldImage] = 0;
  v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageType] = 5;
  *&v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_preferredLayout] = 0;

  v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingBoldImage] = 0;
  v0[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingNormalImage] = 0;
  return sub_1E3DCBFF8();
}

uint64_t sub_1E3DCB87C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_sidebarItem;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E373AFD8(v1 + v2, &v13);
  if (!v14)
  {
    return sub_1E3DCC8B0(&v13);
  }

  sub_1E3251BE8(&v13, v15);
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v4 = v16;
  v5 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v6 = (*(v5 + 120))(v4, v5);
  if (v6)
  {

    if (IsBoldTextEnabled)
    {
      if (*(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingBoldImage) != 1)
      {
        IsBoldTextEnabled = 1;
        *(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingBoldImage) = 1;
LABEL_14:
        v8 = v6 != 0;
        v9 = *(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageLoader);
        OUTLINED_FUNCTION_4_0();
        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v8;
        v12 = *((*MEMORY[0x1E69E7D40] & *v9) + 0xE0);

        v12(v15, IsBoldTextEnabled, 0, 1, sub_1E3DCC918, v11);

        return __swift_destroy_boxed_opaque_existential_1(v15);
      }

      return __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  else if (IsBoldTextEnabled)
  {
    if (*(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image))
    {
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    goto LABEL_12;
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image) && *(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isBoldImage) != 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

LABEL_12:
  if (*(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingNormalImage) != 1)
  {
    *(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingNormalImage) = 1;
    goto LABEL_14;
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1E3DCBA8C(uint64_t a1, uint64_t a2, void (*a3)(void))
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

uint64_t sub_1E3DCBB3C()
{
  v1 = v0;
  v2 = sub_1E41FFF54();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  MEMORY[0x1E69116C0]();
  v9 = *(v0 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_title + 8);

  sub_1E41FFF34();
  if (*(v0 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isHeader))
  {
    OUTLINED_FUNCTION_11_135();
    OUTLINED_FUNCTION_9_134();
  }

  else
  {
    if (!*(v0 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image))
    {
      v10 = [objc_opt_self() clearColor];
      v11 = [objc_opt_self() imageWithColor_];

      sub_1E41FFF44();
    }

    v9 = OUTLINED_FUNCTION_11_135();
  }

  sub_1E41FFEE4();
  v12 = OUTLINED_FUNCTION_15_119();
  v9(v12);
  v13 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image))
  {
    sub_1E3DCC310();
    v14 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_preferredLayout;
    v15 = *(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_preferredLayout);
    v43 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageType;
    v16 = *(v1 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageType);

    sub_1E3DCC1B8(v16, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      VUIRoundValue();
      VUIRoundValue();
      v19 = sub_1E41FFEF4();
      sub_1E41FFEC4();
      v20 = OUTLINED_FUNCTION_15_119();
      v19(v20);
    }

    v21 = *(v1 + v14);
    if (v21)
    {
      v22 = *(*v21 + 744);
      v23 = swift_retain_n();
      v24 = v22(v23);
      if (v24)
      {

        (*(*v21 + 552))(v45);

        if (v46)
        {
          sub_1E374E9C4();
          OUTLINED_FUNCTION_30();
          (*(v25 + 552))(v47);
          v26 = *v47;
          v27 = *&v47[1];
          v28 = *&v47[2];
          v29 = *&v47[3];

          if ((v48 & 1) == 0)
          {
            sub_1E3952BE8(v26, v27, v28, v29);
          }
        }

        VUIFloorValue();
        v30 = OUTLINED_FUNCTION_11_135();
        sub_1E41FFED4();
        v31 = OUTLINED_FUNCTION_15_119();
        v30(v31);
      }

      else
      {
      }
    }

    v32 = *(v1 + v43);
    if (v32 != 5 && (sub_1E3CE4DD8(v32) & 1) != 0)
    {
      v33 = *(v1 + v14);
      if (v33)
      {
        v34 = *(*v33 + 1944);

        v36 = v34(v35);

        if (v36)
        {
          v37 = v36;
          v38 = sub_1E41FFEF4();
          sub_1E41FFEB4();
          v39 = OUTLINED_FUNCTION_15_119();
          v38(v39);
        }
      }
    }

    v40 = *(v1 + v13);
    sub_1E41FFF44();
  }

  v44[3] = v2;
  v44[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(v4 + 16))(boxed_opaque_existential_1, v8, v2);
  MEMORY[0x1E6911580](v44);
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1E3DCBFF8()
{
  v1 = sub_1E41FFF54();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  MEMORY[0x1E69116C0]();
  sub_1E41FFF34();
  sub_1E41FFF44();
  sub_1E41FFEF4();
  OUTLINED_FUNCTION_9_134();
  sub_1E41FFEE4();
  v8 = OUTLINED_FUNCTION_17_113();
  v0(v8);
  sub_1E41FFEF4();
  OUTLINED_FUNCTION_9_134();
  sub_1E41FFEC4();
  v9 = OUTLINED_FUNCTION_17_113();
  v0(v9);
  v10 = sub_1E41FFEF4();
  sub_1E41FFED4();
  v11 = OUTLINED_FUNCTION_17_113();
  v10(v11);
  v12 = sub_1E41FFEF4();
  sub_1E41FFEB4();
  v13 = OUTLINED_FUNCTION_17_113();
  v12(v13);
  v16[3] = v1;
  v16[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(v3 + 16))(boxed_opaque_existential_1, v7, v1);
  MEMORY[0x1E6911580](v16);
  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_1E3DCC1B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 5 || (sub_1E3CE4DD8(a1) & 1) != 0)
  {
    v5 = 0.0;
  }

  else
  {
    v7 = sub_1E3DCBA8C(a1, 4, sub_1E38D1D28);
    v8 = *(v2 + OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_layout);
    if (v7)
    {
      OUTLINED_FUNCTION_25();
      v9 = swift_beginAccess();
      v5 = *(v8 + 112);
      if (!a2)
      {
        return *&v5;
      }
    }

    else
    {
      sub_1E374E9C4();
      OUTLINED_FUNCTION_30();
      v11 = (*(v10 + 2288))();

      v5 = v11;
      if (!a2)
      {
        return *&v5;
      }
    }

    v12 = (*(*a2 + 2288))(v9);
    if (v12 != 0.0 || v13 != 0.0)
    {
      v5 = v12;
    }
  }

  return *&v5;
}

double sub_1E3DCC310()
{
  v3 = [v0 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  v6 = v6 && v1 == v5;
  if (v6)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {
LABEL_6:

    return 1.0;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v7)
  {

    return 0.7;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 0.7;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v10)
  {

    return 0.8;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 0.8;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v12)
  {

    return 0.9;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 0.9;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v14)
  {
LABEL_42:

    return 1.0;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {
    goto LABEL_6;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v16)
  {

    return 1.1;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.1;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v18)
  {

    return 1.2;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.2;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v20)
  {

    return 1.3;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.3;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v22)
  {

    return 1.25;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.25;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v24)
  {

    return 1.35;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.35;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v26)
  {

    return 1.45;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.45;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v28)
  {

    return 1.55;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.55;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v30)
  {

    return 1.65;
  }

  else
  {
    v32 = OUTLINED_FUNCTION_0_68();

    result = 1.65;
    if ((v32 & 1) == 0)
    {
      return 1.0;
    }
  }

  return result;
}

id sub_1E3DCC7FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SideBarCollectionViewListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3DCC8B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3DCC918(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_sidebarItem;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E373AFD8(&v13[v14], &v33);
    if (!v34)
    {

      return sub_1E3DCC8B0(&v33);
    }

    sub_1E3251BE8(&v33, v35);
    v16 = v36;
    v15 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    if ((*(*(v15 + 8) + 16))(v16) == a4 && v17 == a5)
    {
    }

    else
    {
      v19 = sub_1E42079A4();

      if ((v19 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v20 = sub_1E3DCBA8C(a3, 1, sub_1E3CE8A10);
    if (v20)
    {
      v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingBoldImage] = 0;
      if (!UIAccessibilityIsBoldTextEnabled())
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isLoadingNormalImage] = 0;
      if ((UIAccessibilityIsBoldTextEnabled() & v11) == 1)
      {
LABEL_27:

        return __swift_destroy_boxed_opaque_existential_1(v35);
      }
    }

    v21 = *&v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image];
    *&v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_image] = a2;
    v22 = a2;

    v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_isBoldImage] = v20 & 1;
    v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_imageType] = a1;
    v23 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v24 = OUTLINED_FUNCTION_38();
    v26 = v25(v24, v23);
    if (v26)
    {
      (*(*v26 + 392))();
      OUTLINED_FUNCTION_38();

      type metadata accessor for ImageLayout();
      v26 = swift_dynamicCastClass();
      if (!v26)
      {

        v26 = 0;
      }
    }

    v27 = OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_preferredLayout;
    *&v13[OBJC_IVAR____TtC8VideosUI29SideBarCollectionViewListCell_preferredLayout] = v26;

    if (v20)
    {
      v28 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v29 = OUTLINED_FUNCTION_38();
      v31 = v30(v29, v28);
      if (v31)
      {
        (*(*v31 + 392))();
        OUTLINED_FUNCTION_38();

        type metadata accessor for ImageLayout();
        v32 = swift_dynamicCastClass();
        if (v32)
        {
          *&v13[v27] = v32;
        }
      }
    }

    sub_1E3DCBB3C();
    goto LABEL_27;
  }

  return result;
}

id sub_1E3DCCC98(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_setIsAccessibilityElement_, a1 & 1);
}

uint64_t sub_1E3DCCCE0(__int16 *a1, void *a2, void *a3)
{
  v6 = sub_1E41FFCB4();
  v71 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = *(*a1 + 488);
    v70 = a2;
    v10 = a2;
    v11 = v9();
    if (v11)
    {
      v12 = v11;
      v13 = (*(*a1 + 392))();
      if (v13)
      {
        v14 = v13;
        type metadata accessor for MonogramLockupCellLayout();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = v15;
          v17 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout;
          swift_beginAccess();
          *&v10[v17] = v16;
          v69 = v14;

          v19 = (*a3 == 2) | *a3 ^ 1;
          v20 = *(*(*v16 + 1800))(v18);
          v21 = (*(v20 + 1744))();

          v22 = [v10 vuiBounds];
          v24 = v23;
          (*(*a1 + 672))(v22);
          *&v82[7] = &type metadata for ViewModelKeys;
          *&v82[15] = &off_1F5D7BCA8;
          LOBYTE(__src[0]) = 11;
          OUTLINED_FUNCTION_28_68();

          if (v79[3])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
            if ((OUTLINED_FUNCTION_27_72() & 1) == 0)
            {
              goto LABEL_12;
            }

            __swift_destroy_boxed_opaque_existential_1(__src);
            *&v82[7] = &unk_1F5D5E608;
            *&v82[15] = &off_1F5D5CC28;
            OUTLINED_FUNCTION_28_68();

            if (v79[3])
            {
              if (OUTLINED_FUNCTION_27_72())
              {
                v25 = v74[0];
                __swift_destroy_boxed_opaque_existential_1(__src);
                if (v25 == 1)
                {
LABEL_14:
                  v27 = *(*v21 + 312);

                  v27(0, 0);

                  v29 = (*(*v21 + 2288))(v28);
                  v31 = v30;
                  sub_1E3DF9E68(v74);
                  v73 = 0;
                  *__src = v29;
                  __src[1] = v31;
                  v81 = 0;
                  *v82 = v75;
                  *&v82[16] = v76;
                  *v83 = v77[0];
                  *&v83[15] = *(v77 + 15);
                  v84 = v19 & 1;
                  v85 = v78;
                  sub_1E38B04A4(__src, v79);
                  v32 = type metadata accessor for UIFactory();
                  v33 = sub_1E373E010(41, v12);
                  v34 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0];
                  OUTLINED_FUNCTION_5_0();
                  v68 = v34;
                  v35 = *(v34 + v10);
                  v72[3] = &type metadata for MonogramContext;
                  v72[4] = &off_1F5D61598;
                  v72[0] = swift_allocObject();
                  memcpy((v72[0] + 16), v79, 0x52uLL);
                  sub_1E3280A90(0, &unk_1EE23B2D0);
                  v36 = v35;
                  v71 = v32;
                  sub_1E393D92C(v33, v35, v72, 0);

                  sub_1E325F748(v72, &qword_1ECF296C0);
                  v37 = OUTLINED_FUNCTION_15_18();
                  sub_1E3B1C47C(v37, OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView);
                  v38 = sub_1E373E010(23, v12);
                  if (v38)
                  {
                    if (*v38 == _TtC8VideosUI13TextViewModel)
                    {
                      if (!sub_1E3C27528() || (OUTLINED_FUNCTION_30(), v40 = (*(v39 + 936))(), , v40 == 2) || (v40 & 1) == 0)
                      {
                        v41 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel[0];
                        OUTLINED_FUNCTION_5_0();
                        OUTLINED_FUNCTION_8_147();
                        sub_1E3280A90(0, &qword_1EE23AD40);

                        v42 = v41;
                        OUTLINED_FUNCTION_3_187();

                        sub_1E325F748(v72, &qword_1ECF296C0);
                        v43 = OUTLINED_FUNCTION_15_18();
                        sub_1E3B1C47C(v43, OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel);
                      }
                    }
                  }

                  v44 = sub_1E373E010(15, v12);
                  if (v44)
                  {
                    if (*v44 == _TtC8VideosUI13TextViewModel)
                    {
                      if (!sub_1E3C27528() || (OUTLINED_FUNCTION_30(), v46 = (*(v45 + 936))(), , v46 == 2) || (v46 & 1) == 0)
                      {
                        v47 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel;
                        OUTLINED_FUNCTION_5_0();
                        OUTLINED_FUNCTION_8_147();
                        sub_1E3280A90(0, &qword_1EE23AD40);

                        v48 = v47;
                        OUTLINED_FUNCTION_3_187();

                        sub_1E325F748(v72, &qword_1ECF296C0);
                        v49 = OUTLINED_FUNCTION_15_18();
                        sub_1E3B1C47C(v49, &OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel);
                      }
                    }
                  }

                  v50 = sub_1E373E010(113, v12);

                  if (v50)
                  {
                    v51 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_separatorView;
                    OUTLINED_FUNCTION_5_0();
                    OUTLINED_FUNCTION_8_147();
                    sub_1E3280A90(0, &unk_1ECF38CB0);

                    v52 = v51;
                    OUTLINED_FUNCTION_3_187();

                    sub_1E325F748(v72, &qword_1ECF296C0);
                    v53 = OUTLINED_FUNCTION_15_18();
                    sub_1E3B1C47C(v53, &OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_separatorView);
                  }

                  v54 = *(v68 + v10);
                  if (v54)
                  {
                    v55 = v10;
                    v56 = [v54 accessibilityLabel];
                    if (v56)
                    {
LABEL_35:
                      [v10 setAccessibilityLabel_];

                      [v10 vui_setNeedsLayout];

                      return v70;
                    }
                  }

                  else
                  {
                    v57 = v10;
                  }

                  v56 = 0;
                  goto LABEL_35;
                }

LABEL_13:
                v26 = *(*v21 + 208);

                v26(v24, 0);

                goto LABEL_14;
              }

LABEL_12:
              __swift_destroy_boxed_opaque_existential_1(__src);
              goto LABEL_13;
            }
          }

          __swift_destroy_boxed_opaque_existential_1(__src);
          sub_1E325F748(v79, &unk_1ECF296E0);
          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v59 = sub_1E324FBDC();
  (*(v71 + 16))(v8, v59, v6);

  v60 = sub_1E41FFC94();
  v61 = sub_1E4206814();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    __src[0] = v63;
    *v62 = 136315138;
    sub_1E384EE08(a1[49]);
    v66 = sub_1E3270FC8(v64, v65, __src);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_1E323F000, v60, v61, "MonogramLockupCell: Failed to get correct cell for [%s]", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x1E69143B0](v63, -1, -1);
    MEMORY[0x1E69143B0](v62, -1, -1);
  }

  (*(v71 + 8))(v8, v6);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

double sub_1E3DCD750(char a1, CGFloat a2, double a3)
{
  v4 = v3;
  LOBYTE(v5) = a1;
  v8 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout;
  OUTLINED_FUNCTION_5_0();
  v9 = *(v4 + v8);
  v245 = a2;
  if (v9)
  {
    v10 = *(*v9 + 1728);

    v11 = v10();
    v12 = MEMORY[0x1E69DDCE0];
    v13 = &unk_1ECF38000;
    LOBYTE(v254) = v5;
    if ((v11 & 1) == 0)
    {
      v42 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0];
      OUTLINED_FUNCTION_5_0();
      v271 = 0.0;
      x = 0.0;
      y = 0.0;
      v45 = 0.0;
      if (*(v42 + v4))
      {
        [v4 vuiBounds];
        OUTLINED_FUNCTION_16_73();
        OUTLINED_FUNCTION_8();
        (*(v46 + 1800))();
        OUTLINED_FUNCTION_30();
        (*(v47 + 176))(&v296);

        v325.origin.x = OUTLINED_FUNCTION_1_222();
        x = v325.origin.x;
        y = v325.origin.y;
        v45 = a2;
        v325.size.width = a2;
        v325.size.height = a2;
        CGRectGetHeight(v325);
      }

      v267 = x;
      v48 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel[0];
      OUTLINED_FUNCTION_5_0();
      v49 = *(v48 + v4);
      v50 = 0.0;
      v51 = 0.0;
      v279 = y;
      v283 = 0.0;
      v275 = v45;
      if (v49)
      {
        v52 = v49;
        OUTLINED_FUNCTION_29_79();
        OUTLINED_FUNCTION_16_73();
        v53 = (*v242 + 1752);
        v54 = *v53;
        (*v53)();
        OUTLINED_FUNCTION_30();
        (*(v55 + 176))(&v301);

        v56 = OUTLINED_FUNCTION_1_222();
        v51 = v57;
        v59 = [&unk_1ECF38000 sizeThatFits_];
        v61 = v60;
        (v54)(v59);
        OUTLINED_FUNCTION_30();
        (*(v62 + 152))(&v314);

        if (v315)
        {
          v63 = 0.0;
        }

        else
        {
          v63 = v314;
        }

        v4 = &unk_1ECF38000;
        v64 = *(&unk_1ECF38000 + v42);
        v65 = OUTLINED_FUNCTION_11_5();
        sub_1E3C8B6B4(v65, v63);
        v67 = v66;

        v50 = y + v45 + v67;
        v271 = v56;
        v326.origin.x = v56;
        v326.origin.y = v50;
        v326.size.width = v51;
        v283 = v61;
        v326.size.height = v61;
        CGRectGetHeight(v326);
      }

      v68 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel;
      OUTLINED_FUNCTION_5_0();
      v69 = *(v4 + v68);
      if (v69)
      {
        v70 = v69;
        OUTLINED_FUNCTION_29_79();
        v260 = v71;
        OUTLINED_FUNCTION_16_73();
        v72 = *(*v242 + 1776);
        v72();
        OUTLINED_FUNCTION_30();
        (*(v73 + 176))(&v316);
        v74 = v316;
        v75 = v317;
        v77 = v318;
        v76 = v319;

        if (v320)
        {
          v74 = *v12;
          v75 = v12[1];
          v77 = v12[2];
          v76 = v12[3];
        }

        sub_1E3CEE8A0(v74, v75, v77, v76, v260);
        (v72)([&unk_1ECF38000 sizeThatFits_]);
        OUTLINED_FUNCTION_30();
        (*(v80 + 152))(&v321);

        v81 = v321;
        if (v324)
        {
          v81 = 0.0;
        }

        v4 = &unk_1ECF38000;
        [&unk_1ECF38000 topMarginToLabel:*(&unk_1ECF38000 + v48) withBaselineMargin:v81];
        v327.origin.x = OUTLINED_FUNCTION_20_94();
        CGRectGetHeight(v327);

        v45 = v275;
        y = v279;
      }

      if ((v254 & 1) == 0)
      {
        v82 = *(v42 + v4);
        if (v82)
        {
          [v82 setFrame_];
        }

        v83 = *(v48 + v4);
        if (v83)
        {
          [v83 setFrame_];
        }

        v84 = *(v4 + v68);
        if (v84)
        {
          v85 = v84;
          v86 = OUTLINED_FUNCTION_20_94();
          [v87 v88];
        }
      }

      goto LABEL_102;
    }

    v14 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout;
    OUTLINED_FUNCTION_5_0();
    v15 = *(v4 + v14);
    if (v15)
    {
      v218 = v14;

      v16 = [v4 vuiTraitCollection];
      HIDWORD(v233) = [v16 isAXLargeEnabled];

      v17 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0];
      v18 = OUTLINED_FUNCTION_5_0();
      v230 = v17;
      v239 = v15;
      if (*(v17 + v4))
      {
        v19 = (*v15 + 1800);
        v20 = *v19;
        (*v19)(v18);
        OUTLINED_FUNCTION_30();
        v22 = (*(v21 + 1744))();

        v24 = COERCE_DOUBLE((*(*v22 + 1696))(v23));
        v26 = v25;
        v28 = v27;

        [v4 vuiBounds];
        OUTLINED_FUNCTION_16_73();
        v20();
        OUTLINED_FUNCTION_30();
        (*(v29 + 176))(&v314);

        v31 = OUTLINED_FUNCTION_1_222();
        v32 = v30;
        if (v28)
        {
          v33 = 0.0;
        }

        else
        {
          v33 = v24;
        }

        if (v28)
        {
          v34 = 0.0;
        }

        else
        {
          v34 = v26;
        }

        v35 = v31;
        v36 = v33;
        v37 = v34;
        Height = CGRectGetHeight(*(&v30 - 1));
        v39 = *&v34;
        v40 = v32;
        v236 = v32 + Height + 10.0;
        v41 = *&v33;
        LOBYTE(v5) = v254;
        v13 = &unk_1ECF38000;
      }

      else
      {
        v236 = a3;
        v31 = 0.0;
        v40 = 0.0;
        v41 = 0;
        v39 = 0;
      }

      v89 = v31;
      v264 = v41;
      *&v268 = v40;
      v261 = v39;
      v90 = CGRectGetHeight(*(&v40 - 1));
      v206 = *(*v15 + 1800);
      v209 = *v15 + 1800;
      v206();
      OUTLINED_FUNCTION_30();
      (*(v91 + 176))(&v316);
      v92 = v316;
      v93 = v317;
      v95 = v318;
      v94 = v319;

      v96 = v93;
      if (v320)
      {
        v92 = *v12;
        v96 = v12[1];
        v95 = v12[2];
        v94 = v12[3];
      }

      v212 = *&v96;
      v97 = sub_1E3952BE0(v92, v96, v95, v94);
      v313 = MEMORY[0x1E69E7CC0];
      v98 = *(v4 + v230);
      v99 = &selRef_advisoryDisabledTimeRanges;
      if (v98)
      {
        v100 = v98;
        [v4 bounds];
        [v4 vuiIsRTL];
        OUTLINED_FUNCTION_7_173();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v100 setFrame_];
      }

      v101 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel[0];
      OUTLINED_FUNCTION_5_0();
      v102 = *(v101 + v4);
      if (v102)
      {
        v103 = v102;
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_24_83();
        if (v104)
        {
LABEL_108:
          OUTLINED_FUNCTION_13_135();
        }

        sub_1E4206324();
        v105 = v313;
      }

      else
      {
        v105 = MEMORY[0x1E69E7CC0];
      }

      v280 = v105;
      v106 = v13[403];
      OUTLINED_FUNCTION_5_0();
      v107 = *&v106[v4];
      if (v107)
      {
        v108 = v107;
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_24_83();
        if (v104)
        {
          OUTLINED_FUNCTION_13_135();
        }

        sub_1E4206324();
        v280 = v313;
      }

      v215 = *&v94;
      v227 = *&v268 + v90;
      v94 = v245 - v97;
      v109 = sub_1E3798694(v280);
      v272 = v280 & 0xFFFFFFFFFFFFFF8;
      v276 = v280 & 0xC000000000000001;
      v224 = v4;
      v251 = v4;
      v110 = 0;
      v111 = 0;
      v112 = MEMORY[0x1E69E7CC0];
      v97 = 0.0;
      v13 = &selRef_textLayout;
      v4 = &selRef_itemProviderForActivityWithAdamId_previewMetadata_existingItemProvider_;
      v284 = MEMORY[0x1E69E7CC0];
      *&v257 = v31;
      while (v109 != v110)
      {
        if (v276)
        {
          v113 = MEMORY[0x1E6911E60](v110, v280);
        }

        else
        {
          if (v110 >= *((v280 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_105;
          }

          v113 = *(v280 + 8 * v110 + 32);
        }

        v114 = v113;
        if (__OFADD__(v110, 1))
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        v99 = [v113 *v13];
        [v99 *(v4 + 2352)];
        v116 = v115;
        v118 = v117;

        v328.origin.x = OUTLINED_FUNCTION_7_173();
        v119 = 0.0;
        [v114 sizeThatFits_];
        v121 = v120;
        v123 = v122;
        VUIRoundValue();
        v90 = v124 + 0.0;
        if (v116 > 0.0)
        {
          v99 = v111;
          sub_1E3C8B6B4(v111, v116);
          v119 = v125;

          v90 = v90 + v119;
        }

        if ((v5 & 1) == 0)
        {
          v126 = v111;
          v127 = v109;
          v128 = v4;
          v129 = v13;
          v130 = [(SEL *)v251 vuiTraitCollection];
          v131 = [v130 isAXLargeEnabled];

          if (v131)
          {
            v132 = v123;
          }

          else
          {
            v132 = v90;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v284 = sub_1E3AA7150(0, *(v284 + 2) + 1, 1, v284);
          }

          v134 = *(v284 + 2);
          v133 = *(v284 + 3);
          v13 = v129;
          if (v134 >= v133 >> 1)
          {
            v137 = OUTLINED_FUNCTION_14_130(v133);
            v284 = sub_1E3AA7150(v137, v138, v139, v284);
          }

          v4 = v128;
          *(v284 + 2) = v134 + 1;
          v135 = &v284[16 * v134];
          *(v135 + 4) = v121;
          *(v135 + 5) = v132;
          v109 = v127;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v112 = sub_1E39ABC54(0, *(v112 + 2) + 1, 1, v112);
          }

          v31 = *&v257;
          v111 = v126;
          v5 = *(v112 + 2);
          v136 = *(v112 + 3);
          v99 = (v5 + 1);
          if (v5 >= v136 >> 1)
          {
            v140 = OUTLINED_FUNCTION_14_130(v136);
            v112 = sub_1E39ABC54(v140, v141, v142, v112);
          }

          *(v112 + 2) = v99;
          *&v112[8 * v5 + 32] = v119;
          LOBYTE(v5) = v254;
        }

        v97 = v97 + v90;
        ++v110;
        v111 = v114;
      }

      v143 = v251;

      *&v221 = v97;
      if ((v5 & 1) == 0)
      {
        if (HIDWORD(v233))
        {
          v144 = 0.0;
        }

        else
        {
          v144 = (v227 - v97) * 0.5;
        }

        v329.origin.x = OUTLINED_FUNCTION_7_173();
        MaxX = CGRectGetMaxX(v329);
        v248 = MaxX + *sub_1E38EF970();
        v254 = sub_1E3798694(v280);
        v146 = v251;
        v4 = 0;
        v94 = v236;
        v147 = v284;
        while (v254 != v4)
        {
          if (v276)
          {
            v148 = MEMORY[0x1E6911E60](v4, v280);
          }

          else
          {
            if (v4 >= *(v272 + 16))
            {
              goto LABEL_107;
            }

            v148 = *(v280 + 8 * v4 + 32);
          }

          v149 = v148;
          LOBYTE(v5) = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_106;
          }

          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31EA8);
          v150 = sub_1E3827828(&unk_1EE23B460, &qword_1ECF31EA8);
          v158 = OUTLINED_FUNCTION_12_123(v150, v151, v152, v153, v154, v155, v156, v157, v206, v209, v212, v215, v218, v221, v224, *&v227, v230, v233, *&v236, v239, v242, *&v245, *&v248, v251, v254, v257, v261, v264, v268, v272, v276, v280, v284, v287, v290, v293, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v147, v309, v310, v311, v4);
          sub_1E38D2054(v158, v159);
          [(SEL *)v146 bounds];
          v90 = v160;
          v97 = v161;
          [(SEL *)v146 vuiIsRTL];
          v31 = *&v258;
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          v162 = [v149 setFrame_];
          v312 = 0;
          v170 = OUTLINED_FUNCTION_12_123(v162, v163, v164, v165, v166, v167, v168, v169, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v262, v265, v269, v273, v277, v281, v285, v288, v291, v294, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v147, v309, v310, v311, v4);
          sub_1E38D2054(v170, v171);
          v172 = v322;
          if (v323)
          {
            v172 = 0.0;
          }

          v173 = v144 + v172;
          v312 = 0;
          v5 = &unk_1E42A75C0;
          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90);
          v174 = sub_1E3827828(&unk_1ECF31EB0, &unk_1ECF2FC90);
          v181 = OUTLINED_FUNCTION_12_123(v174, v175, v174, v176, v177, v178, v179, v180, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259, v263, v266, v270, v274, v278, v282, v286, v289, v292, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v112, v309, v310, v311, v4 + 1);
          sub_1E38D2054(v181, v182);
          v183 = v321;
          if (LOBYTE(v322))
          {
            v183 = 0.0;
          }

          v144 = v173 + v183;
          [v149 frame];
          v185 = v184;
          [v149 frame];
          v186 = CGRectGetHeight(v330);

          v94 = v185 + v186;
          ++v4;
        }

        v143 = v251;
        v97 = *&v221;
      }

      v187 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_separatorView;
      OUTLINED_FUNCTION_5_0();
      v188 = *(v143 + v187);
      if (v188)
      {
        v189 = v188;
        v190 = *(v206)();
        (*(v190 + 1744))();
        OUTLINED_FUNCTION_11_5();

        (*(*v99 + 212))(v191);

        sub_1E38EF970();
        if (*(v224 + v218))
        {
          OUTLINED_FUNCTION_8();
          v193 = *(v192 + 1800);

          v193(v194);
          OUTLINED_FUNCTION_11_5();

          (*(*v193 + 152))(&v321, v195);
        }

        [v189 lineHeight];
        v196 = v189;
        v143 = v251;
        [(SEL *)v251 vuiBounds];
        [(SEL *)v251 vuiIsRTL];
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v196 setFrame_];

        v31 = *&v257;
        v97 = *&v221;
      }

      if (HIDWORD(v233))
      {
        v197 = v227;
        if (v227 < v97)
        {
          v198 = *(v224 + v230);
          if (!v198)
          {
            v310 = *&v97;
            goto LABEL_97;
          }

          v199 = v198;
          v331.origin.x = OUTLINED_FUNCTION_7_173();
          v200 = v97 * 0.5 - CGRectGetHeight(v331) * 0.5;
          [v199 frame];
          [v199 setFrame_];
        }

        v201 = *(v224 + v230);
        v310 = *&v97;
        if (v201)
        {
          [v201 frame];
          MaxY = CGRectGetMaxY(v332);
LABEL_98:
          v308 = MaxY;
          LOBYTE(v309) = 0;
          v203 = *(v143 + v187);
          if (v203)
          {
            [v203 frame];
            v204 = CGRectGetMaxY(v333);
          }

          else
          {
            v204 = 0.0;
          }

          v306 = *&v204;
          LOBYTE(v307) = 0;
          sub_1E3793CAC();
          max<A>(_:_:_:)(&v310, &v308, &v306, MEMORY[0x1E69E7DE0]);

          goto LABEL_102;
        }

LABEL_97:
        MaxY = 0.0;
        goto LABEL_98;
      }
    }

LABEL_102:
  }

  return v245;
}

id sub_1E3DCE9A8(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_vui_setHighlighted_, a1 & 1);
  v3 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0];
  OUTLINED_FUNCTION_15_0();
  result = *(v3 + v1);
  if (result)
  {
    return [result vui:a1 & 1 setHighlighted:?];
  }

  return result;
}

id sub_1E3DCEA64()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout) = 0;
  *(OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0] + v0) = 0;
  *(OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel[0] + v0) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_separatorView) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3DCEB14()
{
  OUTLINED_FUNCTION_11_5();
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0]] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel[0]] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_separatorView] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, v1);

  if (v3)
  {
  }

  return v3;
}

void *sub_1E3DCEC5C@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v7 = v6;
  sub_1E41A300C(__src);
  [v6 vui:a2 sizeThatFits:0.0];
  sub_1E41A2FE8(v14, v15);
  v16 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_subtitleLabel;
  OUTLINED_FUNCTION_5_0();
  v17 = *&v7[v16];
  if (v17)
  {
    v18 = *&v7[v16];
LABEL_5:
    v21 = v18;
    [v17 bottomMarginWithBaselineMargin_];
    a5 = v22;

    goto LABEL_6;
  }

  v19 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_titleLabel[0];
  OUTLINED_FUNCTION_5_0();
  v20 = *(v19 + v7);
  if (v20)
  {
    v17 = v20;
    v18 = 0;
    goto LABEL_5;
  }

  v17 = 0;
LABEL_6:
  v23 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_lockupLayout;
  OUTLINED_FUNCTION_15_0();
  if (*&v7[v23])
  {
    OUTLINED_FUNCTION_8();
    v25 = *(v24 + 1728);

    LOBYTE(v25) = v25(v26);

    if (v25)
    {
      a5 = 0.0;
    }
  }

  else
  {
  }

  *&__src[6] = a3;
  *&__src[7] = a4;
  *&__src[8] = a5;
  *&__src[9] = a6;
  return memcpy(a1, __src, 0x50uLL);
}

void sub_1E3DCEE30(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0];
  OUTLINED_FUNCTION_15_0();
  v4 = *(v3 + v1);
  if (v4)
  {
    v5 = v4;
    sub_1E38B1D18(a1 & 1);
  }
}

uint64_t sub_1E3DCEE98(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1E39C2CD0();
  if (!v5)
  {
    return 2;
  }

  if (!a3 || (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_8:
    v21 = [objc_opt_self() favoritesSyncCompleted];
    v22 = v21;
    if (a3)
    {
      if (v21)
      {
        sub_1E3280A90(0, &qword_1EE23AFD8);
        v23 = a3;
        v24 = sub_1E4206F64();

        if (v24)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!v21)
      {
LABEL_16:
        sub_1E3CFEA54();
        OUTLINED_FUNCTION_8();
        v27 = *(v26 + 376);

        v28 = OUTLINED_FUNCTION_53();
        v29 = v27(v28);

        v32 = 0;
        v31 = MEMORY[0x1E69E6370];
        v30[0] = v29 & 1;
        (*(*a1 + 784))(&v32, v30, &unk_1F5D5D528, &off_1F5D5C858);
        sub_1E325F748(v30, &unk_1ECF296E0);
        sub_1E3DCEE30(v29 & 1);
        return 0;
      }
    }

    return 2;
  }

  v7 = v6;
  v8 = a3;
  v9 = [v7 addedEntityIDs];
  v10 = sub_1E4206624();

  v11 = OUTLINED_FUNCTION_53();
  LOBYTE(v9) = sub_1E3862230(v11, v12, v10);

  if ((v9 & 1) == 0)
  {
    v13 = [v7 removedEntityIDs];
    v14 = sub_1E4206624();

    v15 = OUTLINED_FUNCTION_53();
    LOBYTE(v13) = sub_1E3862230(v15, v16, v14);

    if ((v13 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  v17 = [v7 addedEntityIDs];
  v18 = sub_1E4206624();

  v19 = OUTLINED_FUNCTION_53();
  LOBYTE(v17) = sub_1E3862230(v19, v20, v18);

  v32 = 0;
  v31 = MEMORY[0x1E69E6370];
  v30[0] = v17 & 1;
  (*(*a1 + 784))(&v32, v30, &unk_1F5D5D528, &off_1F5D5C858);
  sub_1E325F748(v30, &unk_1ECF296E0);
  sub_1E3DCEE30(v17 & 1);

  return 0;
}

id sub_1E3DCF238()
{
  v1 = OBJC_IVAR____TtC8VideosUI18MonogramLockupCell_monogramView[0];
  OUTLINED_FUNCTION_0_12();
  v2 = *(v1 + v0);
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 imageAndShadowContainerView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 layer];
    [v5 frame];
    [v6 setCornerRadius_];
  }

  return v4;
}

uint64_t sub_1E3DCF35C()
{
  v1 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_templateControllerHosted;
  OUTLINED_FUNCTION_5_0();
  return *(v0 + v1);
}

uint64_t sub_1E3DCF398(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_templateControllerHosted;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

double sub_1E3DCF414()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 432))();
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  v3 = OUTLINED_FUNCTION_8_148();
  if (v3)
  {
    [v3 contentsHeight];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

void sub_1E3DCF638()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v3 = v2;
    v10[9] = &unk_1F5F3CDE0;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      v6 = (v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_contentsDidLoad);
      OUTLINED_FUNCTION_5_0();
      if (*v6)
      {
        v7 = v6[1];
        v10[4] = *v6;
        v10[5] = v7;
        OUTLINED_FUNCTION_3_4();
        v10[1] = 1107296256;
        OUTLINED_FUNCTION_14_1();
        v10[2] = v8;
        v10[3] = &block_descriptor_55_0;
        v9 = _Block_copy(v10);
      }

      else
      {
        v9 = 0;
      }

      [v5 setContentsDidLoad_];
      _Block_release(v9);
    }
  }
}

uint64_t (*sub_1E3DCF75C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3DCF7B0;
}

uint64_t sub_1E3DCF878(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  OUTLINED_FUNCTION_5_0();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1E3DCF9B4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t))
{
  v12 = (v6 + *a3);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = a1;
  v12[1] = a2;
  a4(a1, a2);
  v15 = a5(v13, v14);
  a6(v15);
  return a5(a1, a2);
}

void sub_1E3DCFA68()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v3 = v2;
    v10[9] = &unk_1F5F3CDE0;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      v6 = (v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_didInteract);
      OUTLINED_FUNCTION_5_0();
      if (*v6)
      {
        v7 = v6[1];
        v10[4] = *v6;
        v10[5] = v7;
        OUTLINED_FUNCTION_3_4();
        v10[1] = 1107296256;
        OUTLINED_FUNCTION_26_41();
        v10[2] = v8;
        v10[3] = &block_descriptor_52_2;
        v9 = _Block_copy(v10);
      }

      else
      {
        v9 = 0;
      }

      [v5 setDidInteract_];
      _Block_release(v9);
    }
  }
}

uint64_t (*sub_1E3DCFB8C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3DCFBE0;
}

uint64_t sub_1E3DCFBF8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_1E3DCFC70()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 432))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = OUTLINED_FUNCTION_8_148();
  if (v3)
  {
    v4 = [v3 itemCount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1E3DCFDD4()
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
  sub_1E3DCFE28();
  return swift_unknownObjectRelease();
}

void sub_1E3DCFE28()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 432))();
  if (v1)
  {
    v2 = v1;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      OUTLINED_FUNCTION_5_0();
      [v4 setDetailDelegate_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void (*sub_1E3DCFEFC(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_detailDelegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E3DCFF80;
}

void sub_1E3DCFF80(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1E3DCFE28();
  }

  free(v3);
}

id sub_1E3DD0008()
{
  OUTLINED_FUNCTION_21();
  (*(v1 + 1336))();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PlayerHUDDocumentViewController();
  return OUTLINED_FUNCTION_6_104(v9.super_class, sel_vui_viewWillAppear_, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t type metadata accessor for PlayerHUDDocumentViewController()
{
  result = qword_1EE292700;
  if (!qword_1EE292700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3DD0120()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PlayerHUDDocumentViewController();
  OUTLINED_FUNCTION_6_104(v7.super_class, sel_vui_viewWillDisappear_, v1, v2, v3, v4, v5, v6, v7);
  sub_1E3DD01B0(0);
}

void sub_1E3DD01B0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_isMultiView))
  {
    return;
  }

  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 multiviewIdentifiers];

  v5 = sub_1E42062B4();
  OUTLINED_FUNCTION_26_3();
  v6 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & v7) + 0x1B0))();
  if (!v8)
  {
    goto LABEL_10;
  }

  v12 = v8;
  type metadata accessor for PlayerHUDTemplateController();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    if (*(v5 + 16))
    {
      v10 = MEMORY[0x1EEE9AC00](v9);
      (*((*v6 & *v11) + 0x9A0))(a1 & 1, sub_1E3DD28A8, v10);

      return;
    }

LABEL_10:

    return;
  }
}

BOOL sub_1E3DD03C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v6[0] = *(a1 + 16);
    v6[1] = v1;
    MEMORY[0x1EEE9AC00](a1);
    v5[2] = v6;
    return sub_1E3849DF8(sub_1E3756228, v5, v2);
  }

  else
  {
    return 0;
  }
}

id sub_1E3DD045C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PlayerHUDDocumentViewController();
  return OUTLINED_FUNCTION_6_104(v8.super_class, sel_vui_viewDidAppear_, v1, v2, v3, v4, v5, v6, v8);
}

void sub_1E3DD04E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v29 - v3;
  v5 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - v15;
  v17 = type metadata accessor for PlayerHUDDocumentViewController();
  v30.receiver = v0;
  v30.super_class = v17;
  objc_msgSendSuper2(&v30, sel_vui_viewDidLoad);
  v18 = [v0 vuiView];
  if (!v18)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = v18;
  v20 = [objc_opt_self() clearColor];
  [v19 setVuiBackgroundColor_];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 setClipsToBounds_];

  if ((*(v1 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_isMultiView) & 1) == 0)
  {
    v23 = [objc_opt_self() defaultCenter];
    sub_1E4206C14();

    sub_1E3280A90(0, &qword_1EE23B1D0);
    v24 = sub_1E4206A04();
    v29[1] = v24;
    v25 = sub_1E42069A4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v25);
    sub_1E38DF10C();
    v29[0] = v11;
    sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F748(v4, &unk_1ECF2D2B0);

    (*(v7 + 8))(v10, v5);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E38DF1B8();
    v26 = v29[0];
    sub_1E4200844();

    (*(v13 + 8))(v16, v26);
    swift_beginAccess();
    sub_1E42004C4();
    swift_endAccess();

    OUTLINED_FUNCTION_4_0();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x2E0);

    v28(sub_1E3DD0FE8, v27);
  }
}

void sub_1E3DD094C()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_64();
  v4 = *(v3 + 432);
  v5 = v1;
  v6 = v4();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for ErrorTemplateController();
    v8 = swift_dynamicCastClass();

    if (v8)
    {
      DocumentRequestViewController.resetRequest()();
    }
  }

  sub_1E41FDF14();
  v9 = &selRef_gridStyle;
  if (v46)
  {
    sub_1E3280A90(0, &qword_1ECF38E50);
    if (OUTLINED_FUNCTION_16_114())
    {
      v10 = [v47[0] hudContentViewController];
      if (v10)
      {
        v11 = v10;
        sub_1E3280A90(0, &qword_1EE23AD70);
        if (sub_1E4206F64())
        {
          sub_1E3DD01B0(1);
          v12 = *(v5 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_tabContextData);

          v14.value._rawValue = (v4)(v13);
          if (v14.value._rawValue)
          {
            rawValue = v14.value._rawValue;
            type metadata accessor for PlayerHUDTemplateController();
            if (swift_dynamicCastClass())
            {

              OUTLINED_FUNCTION_21();
              v12 = (*(v16 + 2168))();
            }
          }

          v14.value._rawValue = v12;
          DocumentRequestViewController.updatePrefetchData(_:)(v14);

          DocumentRequestViewController.sendInitialRequestIfApplicableAndMarkDocumentInteractorAsVisible()();

          v2 = MEMORY[0x1E69E7D40];
        }

        else
        {
        }

        v9 = 0x1FCA69000;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1E325F748(v45, &unk_1ECF296E0);
  }

  v17 = sub_1E41FDF24();
  if (!v17)
  {

    *v47 = 0u;
    v48 = 0u;
LABEL_29:
    v27 = v47;
LABEL_30:
    sub_1E325F748(v27, &unk_1ECF296E0);
    return;
  }

  v18 = v17;
  sub_1E4205F14();
  sub_1E4207414();
  sub_1E375D7E8(v45, v18, v47);

  sub_1E375D84C(v45);
  if (!*(&v48 + 1))
  {

    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v19 = v9;
  v20 = v2;
  v22 = v45[0];
  v21 = v45[1];
  v23 = [objc_opt_self() sharedInstance];
  if (v22 == sub_1E4205F14() && v21 == v24)
  {
  }

  else
  {
    v26 = sub_1E42079A4();

    if ((v26 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  sub_1E41FDF14();
  if (!v46)
  {

    v27 = v45;
    goto LABEL_30;
  }

  sub_1E3280A90(0, &qword_1ECF38E50);
  if ((OUTLINED_FUNCTION_16_114() & 1) == 0)
  {
LABEL_43:

    return;
  }

  v28 = v47[0];
  v29 = [v47[0] v19 + 1264];
  if (!v29)
  {

    goto LABEL_48;
  }

  v30 = v29;
  sub_1E3280A90(0, &qword_1EE23AD70);
  if ((sub_1E4206F64() & 1) == 0 || (v28 = v28, sub_1E37AD648(v28), !v31) || (v32 = sub_1E4205ED4(), , v33 = [v23 getPageEventDataWithSelectedTab_], v32, !v33))
  {

LABEL_46:
LABEL_48:

    return;
  }

  v34 = [v33 generateMetricsDataDictionary];
  v35 = sub_1E4205C64();

  v36 = sub_1E374BD08(v35);

  if (!v36)
  {

    goto LABEL_46;
  }

  type metadata accessor for Metrics();
  v37 = sub_1E3BA5560(v36, 1);
  v38 = (*((*v20 & *v5) + 0x2F0))();

  if (v38 && (OUTLINED_FUNCTION_5_0(), v39 = *(v38 + 56), , , v39))
  {
    v40 = *(*v39 + 584);

    v40(v41);

    v42 = *sub_1E328FE4C();
    v43 = v5;
    v44 = v42;
    sub_1E3EF58B8(v43);
  }

  else
  {

    *(v5 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_pendingMetrics) = v37;
  }
}

void sub_1E3DD0FE8()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_pendingMetrics;
    v3 = *(Strong + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_pendingMetrics);
    if (v3)
    {
      v4 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x2F0);
      v5 = Strong;

      v7 = v4(v6);

      if (v7 && (OUTLINED_FUNCTION_5_0(), v8 = *(v7 + 56), , , v8))
      {
        v9 = *(*v8 + 584);

        v9(v3);

        v10 = *sub_1E328FE4C();
        v11 = v5;
        v12 = v10;
        sub_1E3EF58B8(v11);

        *(v1 + v2) = 0;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1E3DD11C8()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for PlayerHUDDocumentViewController();
  OUTLINED_FUNCTION_6_104(v10.super_class, sel_vui_viewDidDisappear_, v1, v2, v3, v4, v5, v6, v10);
  v7 = MEMORY[0x1E69E7D40];
  if (*(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_isMultiView))
  {
    OUTLINED_FUNCTION_21();
    if (!(*(v8 + 1888))())
    {
      DocumentRequestViewController.resetRequest()();
    }
  }

  if ((*((*v7 & *v0) + 0x198))())
  {
    v9 = *sub_1E328FE4C();
    sub_1E3EF5ABC(v0);
  }
}

void sub_1E3DD130C()
{
  v0 = [objc_opt_self() clearColor];
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v1) + 0x2C8))();

  DocumentViewController.showLoadingView(show:initialAlphaOfLoadingView:)();
}

void sub_1E3DD13A8(UIViewController_optional *a1)
{
  v2 = v1;
  DocumentViewController.willHostTemplateController(_:)(a1);
  if (a1)
  {
    type metadata accessor for PlayerHUDTemplateController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_21();
        v10 = *(v9 + 2200);
        swift_unknownObjectRetain();
        v11 = a1;
        v10(v7);
        v12 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_tabContextData;
        v13 = *((*v8 & *v5) + 0x880);

        v15 = v13(v14);
        v16.n128_u64[0] = *(v2 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_playerViewSize);
        v17.n128_u64[0] = *(v2 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_playerViewSize + 8);
        (*((*v8 & *v5) + 0x8B0))(v15, v16, v17);
        v18 = *(v2 + v12);
        if (!v18)
        {
          swift_unknownObjectRelease();

LABEL_12:
          swift_unknownObjectWeakAssign();
          *(v2 + v12) = 0;

          return;
        }

        sub_1E3277E60(0xD000000000000011, 0x80000001E42837D0, v18, &v21);

        swift_unknownObjectRelease();

        if (v22)
        {
          if (OUTLINED_FUNCTION_13_14())
          {
            v19 = v20;
LABEL_11:
            *(v2 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_refetchUpNext) = v19;
            goto LABEL_12;
          }
        }

        else
        {
          sub_1E325F748(&v21, &unk_1ECF296E0);
        }

        v19 = 0;
        goto LABEL_11;
      }
    }
  }
}

void sub_1E3DD15D8(UIViewController_optional *a1)
{
  DocumentViewController.didHostTemplateController(_:)(a1);
  if (a1)
  {
    v18 = &unk_1F5F3CDE0;
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (v2)
    {
      v3 = v2;
      v4 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_21();
      v6 = *(v5 + 1920);
      v7 = a1;
      [v3 setDetailDelegate_];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_26_3();
      if ((*((*v4 & v8) + 0x730))())
      {
        OUTLINED_FUNCTION_4_192();
        v15 = 1107296256;
        OUTLINED_FUNCTION_14_1();
        v16 = v9;
        v17 = &block_descriptor_4_1;
        v10 = _Block_copy(aBlock);
      }

      else
      {
        v10 = 0;
      }

      [v3 setContentsDidLoad_];
      _Block_release(v10);
      OUTLINED_FUNCTION_26_3();
      if ((*((*v4 & v11) + 0x748))())
      {
        OUTLINED_FUNCTION_4_192();
        v15 = 1107296256;
        OUTLINED_FUNCTION_26_41();
        v16 = v12;
        v17 = &block_descriptor_114;
        v13 = _Block_copy(aBlock);
      }

      else
      {
        v13 = 0;
      }

      [v3 setDidInteract_];
      _Block_release(v13);
    }
  }
}

void sub_1E3DD17CC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 432))();
  if (v4)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_8_148();
    if (v6)
    {
      v7 = v6;
      v8 = sub_1E42062A4();
      [v7 updateWithSelectedPlaybackIdentifiers:v8 reloadingData:a2 & 1];

      v5 = v8;
    }
  }
}

void sub_1E3DD18F4()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_reportPageEvent) == 1)
  {
    DocumentViewController.recordDocumentAppear()();
    OUTLINED_FUNCTION_21();
    v2 = *(v1 + 1032);

    v2(1);
  }
}

void sub_1E3DD1970()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 432))();
  if (v1)
  {
    v2 = v1;
    v3 = OUTLINED_FUNCTION_8_148();
    if (v3)
    {
      v4 = v3;
      v5 = sub_1E42062A4();
      [v4 updateVisibleCellsWithPlaybackIdentifiers_];

      v2 = v5;
    }
  }
}

void sub_1E3DD1A88()
{
  OUTLINED_FUNCTION_10_127();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_9_135();
  sub_1E3DD1AD4();
}

void sub_1E3DD1AD4()
{
  OUTLINED_FUNCTION_10_127();
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_templateControllerHosted) = 0;
  OUTLINED_FUNCTION_3_14();
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_tabContextData) = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_playerViewSize);
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_refetchUpNext) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_reportPageEvent) = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_contentsDidLoad);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_didInteract);
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_isMultiView) = 0;
  OUTLINED_FUNCTION_3_14();
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_pendingMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v1 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_focusButton;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  OUTLINED_FUNCTION_9_135();

  DocumentRequestViewController.init(_:supplementaryData:loadingConfiguration:documentOptions:viewControllerIdentifier:)();
}

id sub_1E3DD1BC0(void *a1)
{
  v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_templateControllerHosted] = 0;
  OUTLINED_FUNCTION_3_14();
  *&v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_tabContextData] = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_playerViewSize);
  v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_refetchUpNext] = 0;
  v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_reportPageEvent] = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_contentsDidLoad);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_didInteract);
  v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_isMultiView] = 0;
  OUTLINED_FUNCTION_3_14();
  *&v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_pendingMetrics] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_cancellables] = MEMORY[0x1E69E7CD0];
  v3 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_focusButton;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PlayerHUDDocumentViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1E3DD1CF4()
{
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_nowPlayingTabDelegate);

  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_contentsDidLoad));
  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_didInteract));
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_detailDelegate);

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_focusButton);
}

id sub_1E3DD1D98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerHUDDocumentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3DD1E78()
{
  v1 = OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_reportPageEvent;
  *(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_reportPageEvent) = 1;
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 1040))();
  *(v0 + v1) = 0;
  return result;
}

void sub_1E3DD1FAC()
{
  OUTLINED_FUNCTION_21();
  v4 = (*(v0 + 432))();
  if (v4)
  {
    type metadata accessor for PlayerHUDTemplateController();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_64();
      v2 = *(v1 + 2200);
      v3 = swift_unknownObjectRetain();
      v2(v3);

      return;
    }
  }

  swift_unknownObjectWeakAssign();
}

uint64_t sub_1E3DD212C()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (!v2)
  {
LABEL_6:
    if (*(v0 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_tabContextData))
    {

      v6 = sub_1E3744600(v8);

      return v6;
    }

    return 0;
  }

  v3 = v2;
  type metadata accessor for PlayerHUDTemplateController();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_64();
  v6 = v5;
  v7 = (*(v4 + 2168))();
  if (!v7)
  {

    return 0;
  }

  sub_1E3744600(v7);
  OUTLINED_FUNCTION_38();

  return v6;
}

void sub_1E3DD22B4(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v10 = (*(v4 + 432))();
  if (!v10)
  {
LABEL_7:
    v8 = sub_1E374BD08(a1);
    *(v1 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_tabContextData) = v8;

    if (v8)
    {
      sub_1E3277E60(0xD000000000000011, 0x80000001E42616E0, v8, &v12);

      if (*(&v13 + 1))
      {
        if (OUTLINED_FUNCTION_13_14())
        {
          v9 = v11;
LABEL_14:
          *(v1 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_isMultiView) = v9;
          return;
        }

LABEL_13:
        v9 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    sub_1E325F748(&v12, &unk_1ECF296E0);
    goto LABEL_13;
  }

  type metadata accessor for PlayerHUDTemplateController();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v7 = sub_1E374BD08(a1);
  (*((*v3 & *v6) + 0x880))(v7);
}

double sub_1E3DD24D8()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 432))();
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  type metadata accessor for PlayerHUDTemplateController();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_64();
    v4 = (*(v3 + 440))();
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v15.origin.x = v6;
    v15.origin.y = v8;
    v15.size.width = v10;
    v15.size.height = v12;
    Height = CGRectGetHeight(v15);
  }

  else
  {
    Height = 0.0;
  }

  return Height;
}

void sub_1E3DD2628(double a1, double a2)
{
  v3 = a2;
  v4 = a1;
  if (a1 == 0.0 && a2 == 0.0)
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 appWindow];

    if (!v6)
    {
      return;
    }

    [v6 bounds];
    v4 = v7;
    v3 = v8;
  }

  OUTLINED_FUNCTION_21();
  v12 = (*(v9 + 432))();
  if (!v12)
  {
    goto LABEL_11;
  }

  type metadata accessor for PlayerHUDTemplateController();
  if (!swift_dynamicCastClass())
  {

LABEL_11:
    v11 = (v2 + OBJC_IVAR____TtC8VideosUI31PlayerHUDDocumentViewController_playerViewSize);
    *v11 = v4;
    v11[1] = v3;
    return;
  }

  OUTLINED_FUNCTION_64();
  (*(v10 + 2224))(v4, v3);
}

uint64_t sub_1E3DD28E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = sub_1E3DD2B7C();
  result = sub_1E32AE9B0(v5);
  v7 = result;
  v8 = 0;
  v9 = v5 & 0xC000000000000001;
  while (v7 != v8)
  {
    if (v9)
    {
      result = MEMORY[0x1E6911E60](v8, v5);
      v10 = result;
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v10 = *(v5 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    (*(*v10 + 264))(1);

    ++v8;
  }

  v11 = swift_allocObject();
  result = sub_1E32AE9B0(v5);
  *(v11 + 16) = result;
  if (result < 1)
  {

    a3(v16);
  }

  else
  {
    if (v7)
    {
      if (v7 < 1)
      {
        goto LABEL_27;
      }

      for (i = 0; i != v7; ++i)
      {
        if (v9)
        {
          v13 = MEMORY[0x1E6911E60](i, v5);
        }

        else
        {
          v13 = *(v5 + 8 * i + 32);
        }

        if ((*(*v13 + 256))())
        {
          v14 = swift_allocObject();
          v14[2] = v11;
          v14[3] = a3;
          v14[4] = a4;
          v15 = *(*v13 + 472);

          v15(sub_1E3DD3DD8, v14);
        }
      }
    }
  }
}

uint64_t sub_1E3DD2B7C()
{
  v0 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v1 = *sub_1E3B6C5E0();

  sub_1E3DD2CE4(v2);

  sub_1E3DD2CE4(v3);
  v9 = v0;
  v4 = sub_1E32AE9B0(v10);
  v5 = 0;
  v6 = v10 & 0xC000000000000001;
  while (1)
  {
    if (v4 == v5)
    {

      v10 = v9;
      sub_1E3DD2EA0(&v10, v1);
      return v10;
    }

    sub_1E34AF4E4(v5, v6 == 0, v10);
    if (v6)
    {
      result = MEMORY[0x1E6911E60](v5, v10);
      v7 = result;
    }

    else
    {
      v7 = *(v10 + 8 * v5 + 32);
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (sub_1E3DD2D90(*(v7 + 32), v1))
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }

    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3DD2CE4(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E3DD3C74(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

BOOL sub_1E3DD2D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_1E37DA4B8();
  }

  while ((sub_1E4205E84() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1E3DD2E14(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    sub_1E37DA4B8();
    if (sub_1E4205E84())
    {
      break;
    }

    ++v2;
  }

  return v2;
}

uint64_t sub_1E3DD2EA0(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_1E37EFA58(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v7[1] = v5;

  sub_1E3DD2F48(v7, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E3DD2F48(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1E4207914();
  if (result < v5)
  {
    v7 = result;
    v8 = sub_1E3B88FE4(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);

    result = sub_1E3DD3198(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1E3DD3074(0, v5, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E3DD3074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 8 * a3 - 8);
    v8 = a1 - a3;
    while (2)
    {
      v24 = a3;
      v9 = *(v6 + 8 * a3);
      v22 = v8;
      v23 = v7;
      while (1)
      {
        v10 = *v7;
        v11 = *(v9 + 32);

        v12 = sub_1E3DD2E14(v11, a5);
        if (v13)
        {
          break;
        }

        v14 = v12;
        v15 = sub_1E3DD2E14(*(v10 + 32), a5);
        v17 = v16;

        if ((v17 & 1) == 0 && v14 < v15)
        {
          if (!v6)
          {
            __break(1u);
            return result;
          }

          v19 = *v7;
          v9 = v7[1];
          *v7 = v9;
          v7[1] = v19;
          --v7;
          if (!__CFADD__(v8++, 1))
          {
            continue;
          }
        }

        goto LABEL_12;
      }

LABEL_12:
      a3 = v24 + 1;
      v7 = v23 + 1;
      v8 = v22 - 1;
      if (v24 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}
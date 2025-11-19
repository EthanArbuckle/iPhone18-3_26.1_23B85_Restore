void sub_2747B0D84()
{
  OUTLINED_FUNCTION_113_2();
  v5 = v2 + 64;
  OUTLINED_FUNCTION_31_6();
  if (!v7)
  {
    v9 = 0;
LABEL_17:
    OUTLINED_FUNCTION_124_1(v9);
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_103_0();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v12);
          ++v9;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v12 = v9;
LABEL_12:
      OUTLINED_FUNCTION_107_0();
      v14 = (*(v0 + 56) + ((v12 << 12) | (v13 << 6)));
      v16 = v14[1];
      v15 = v14[2];
      v17 = *v14;
      *&v20[9] = *(v14 + 41);
      v19[1] = v16;
      *v20 = v15;
      v19[0] = v17;
      memmove(v1, v14, 0x39uLL);
      if (v11 == v8)
      {
        sub_2747B24E0(v19, v18);
        v9 = v12;
        goto LABEL_17;
      }

      v1 += 64;
      sub_2747B24E0(v19, v18);
      v10 = v11;
      v9 = v12;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_2747B0EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_151();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_113_2();
  v31 = v26 + 56;
  OUTLINED_FUNCTION_31_6();
  if (!v32)
  {
    v37 = 0;
LABEL_16:
    *v24 = v25;
    v24[1] = v31;
    v24[2] = ~v27;
    v24[3] = v37;
    v24[4] = v28;
    OUTLINED_FUNCTION_150();
    return;
  }

  v34 = v33;
  if (!v33)
  {
    v37 = 0;
    goto LABEL_16;
  }

  if ((v33 & 0x8000000000000000) == 0)
  {
    v35 = v32;
    v36 = 0;
    v37 = 0;
    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (!v28)
      {
        while (1)
        {
          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v39 >= ((63 - v27) >> 6))
          {
            v28 = 0;
            goto LABEL_16;
          }

          v28 = *(v31 + 8 * v39);
          ++v37;
          if (v28)
          {
            v37 = v39;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      OUTLINED_FUNCTION_107_0();
      sub_274799038(*(v25 + 48) + 40 * (v40 | (v37 << 6)), &a10);
      v41 = a12;
      v42 = a11;
      *v35 = a10;
      *(v35 + 16) = v42;
      *(v35 + 32) = v41;
      v35 += 40;
      v36 = v38;
      if (v38 == v34)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2747B1010(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_2749FD7F4();
  }

  OUTLINED_FUNCTION_36_1();
  return sub_2749FD7C4();
}

uint64_t sub_2747B106C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_2749FD894();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_2747B10C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x277C5F5C0](a1, a2, v7);
      type metadata accessor for WFGridViewCell();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for WFGridViewCell();
    if (sub_2749FD824() == *(a4 + 36))
    {
      sub_2749FD834();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_2749FD5F4();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_2749FD604();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
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

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

void sub_2747B12AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x277C5F5C0](a1, a2, v7);
      sub_27471CF08(0, &qword_28159E490);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_27471CF08(0, &qword_28159E490);
    if (sub_2749FD824() == *(a4 + 36))
    {
      sub_2749FD834();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_2749FD5F4();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_2749FD604();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
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

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

BOOL sub_2747B14B8(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x277C5F570);
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

uint64_t sub_2747B14EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_2749FDD04();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2747B15F0()
{
  result = qword_280968860;
  if (!qword_280968860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968860);
  }

  return result;
}

uint64_t dispatch thunk of LibraryDataSource.libraryItem(for:)()
{
  return (*(*v0 + 584))();
}

{
  return (*(*v0 + 592))();
}

uint64_t getEnumTagSinglePayload for LibraryDataSource.SortType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LibraryDataSource.SortType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2747B2418()
{
  result = qword_2809688B0;
  if (!qword_2809688B0)
  {
    sub_27471CF08(255, &qword_28096EE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809688B0);
  }

  return result;
}

void sub_2747B2480()
{
  v1 = type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  OUTLINED_FUNCTION_34(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_2747AD4A8(v3, v4);
}

id sub_2747B25A8(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = sub_2749F9164();
  (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
  v10 = *(*(a5 + 56) + 8 * a2);

  return v10;
}

unint64_t sub_2747B26B0()
{
  result = qword_280968910;
  if (!qword_280968910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968910);
  }

  return result;
}

uint64_t objectdestroy_130Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_131_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_133_1()
{

  return sub_2749FCD54();
}

void OUTLINED_FUNCTION_134_1()
{

  sub_2747361A4();
}

uint64_t OUTLINED_FUNCTION_152(uint64_t a1)
{
  *v1 = a1;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_153(char a1)
{
  if (v1 <= v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v1;
  }

  sub_274763A40(a1, v5, 1, v3);
}

id OUTLINED_FUNCTION_155()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_156()
{

  return sub_2749F9154();
}

uint64_t sub_2747B296C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  if (*(v0 + OBJC_IVAR____TtCV10WorkflowUI24AutoShortcutsSettingView5Model_didPerformInitialLoad) == 1)
  {
    v5 = sub_2749FD0E4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    sub_2748828E4(0, 0, v4, &unk_274A13360, v7);

    return sub_2747359D0(v4, &unk_28096C960);
  }

  return result;
}

uint64_t sub_2747B2A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_2749FA4E4();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2747B2B80, 0, 0);
}

uint64_t sub_2747B2B80()
{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtCV10WorkflowUI24AutoShortcutsSettingView5Model_database);
    v3 = sub_2747B2E64();
    sub_2749F94D4();
    v4 = sub_2749FCD64();

    v0[5] = 0;
    LODWORD(v2) = [v2 setSiriAutoShortcutsEnablement:v3 & 1 forBundleIdentifier:v4 source:2 error:v0 + 5];

    v5 = v0[5];
    if (v2)
    {
      v6 = v5;
    }

    else
    {
      v7 = v5;
      v8 = sub_2749F8FE4();

      swift_willThrow();
      sub_2749FA3D4();
      v9 = v8;
      v10 = sub_2749FA4D4();
      v11 = sub_2749FD2C4();

      v12 = os_log_type_enabled(v10, v11);
      v14 = v0[9];
      v13 = v0[10];
      v15 = v0[8];
      if (v12)
      {
        v25 = v0[8];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v26[0] = v17;
        *v16 = 136315138;
        v0[6] = v8;
        v18 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18);
        v19 = sub_2749FCDC4();
        v24 = v13;
        v21 = sub_2747AF460(v19, v20, v26);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_274719000, v10, v11, "Unable to set Siri auto shortcuts setting: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x277C61040](v17, -1, -1);
        MEMORY[0x277C61040](v16, -1, -1);

        (*(v14 + 8))(v24, v25);
      }

      else
      {

        (*(v14 + 8))(v13, v15);
      }
    }
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_2747B2E64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2747B2ED8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2749FA914();
  return sub_2747B296C();
}

uint64_t AutoShortcutsSettingView.Model.__allocating_init(app:database:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  AutoShortcutsSettingView.Model.init(app:database:)(a1, a2);
  return v4;
}

uint64_t AutoShortcutsSettingView.Model.init(app:database:)(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_43();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  v11 = OBJC_IVAR____TtCV10WorkflowUI24AutoShortcutsSettingView5Model__isSiriEnabled;
  v17[15] = 0;
  sub_2749FA8C4();
  (*(v7 + 32))(v2 + v11, v10, v5);
  *(v2 + OBJC_IVAR____TtCV10WorkflowUI24AutoShortcutsSettingView5Model_didPerformInitialLoad) = 0;
  v12 = OBJC_IVAR____TtCV10WorkflowUI24AutoShortcutsSettingView5Model_app;
  v13 = sub_2749F9514();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a1, v13);
  *(v2 + OBJC_IVAR____TtCV10WorkflowUI24AutoShortcutsSettingView5Model_database) = a2;
  v15 = a2;
  sub_2747B3130();

  (*(v14 + 8))(a1, v13);
  return v2;
}

uint64_t sub_2747B3130()
{
  v0 = sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v24 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v22 = v7;
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_2749FCA84();
  OUTLINED_FUNCTION_43();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  sub_27471CF08(0, &qword_28159E4E0);
  (*(v13 + 104))(v17, *MEMORY[0x277D851B8], v11);
  v18 = sub_2749FD434();
  (*(v13 + 8))(v17, v11);
  v19 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2747B55C4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_6;
  v20 = _Block_copy(aBlock);

  sub_2749FCA94();
  sub_2747B511C(&qword_28159E580, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27472AB6C(&qword_28159E530, &unk_28096DB60);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v10, v5, v20);
  _Block_release(v20);

  (*(v24 + 8))(v5, v0);
  (*(v22 + 8))(v10, v23);
}

uint64_t sub_2747B34B8()
{
  aBlock[10] = *MEMORY[0x277D85DE8];
  v0 = sub_2749FCA74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FCAA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v23 = v5;
    v25 = v1;
    v26 = v0;
    v10 = *(result + OBJC_IVAR____TtCV10WorkflowUI24AutoShortcutsSettingView5Model_database);
    sub_2749F94D4();
    v11 = sub_2749FCD64();

    aBlock[0] = 0;
    v12 = [v10 autoShortcutsPreferencesForBundleIdentifier:v11 error:aBlock];

    v13 = aBlock[0];
    v24 = v4;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v15 = v13;
      v16 = sub_2749F8FE4();

      swift_willThrow();
      v14 = 0;
    }

    sub_27471CF08(0, &qword_28159E4E0);
    v17 = sub_2749FD404();
    v18 = swift_allocObject();
    v18[2] = v9;
    v18[3] = v14;
    aBlock[4] = sub_2747B55D4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274760264;
    aBlock[3] = &block_descriptor_33;
    v19 = _Block_copy(aBlock);

    v20 = v12;

    sub_2749FCA94();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2747B511C(&qword_28159E580, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
    sub_27472AB6C(&qword_28159E530, &unk_28096DB60);
    v21 = v26;
    sub_2749FD7B4();
    MEMORY[0x277C5F170](0, v7, v3, v19);
    _Block_release(v19);

    (*(v25 + 8))(v3, v21);
    return (*(v23 + 8))(v7, v24);
  }

  return result;
}

uint64_t sub_2747B38B8(uint64_t a1, id a2)
{
  if (a2)
  {
    [a2 isSiriEnabled];
  }

  result = sub_2747B2ED8();
  *(a1 + OBJC_IVAR____TtCV10WorkflowUI24AutoShortcutsSettingView5Model_didPerformInitialLoad) = 1;
  return result;
}

uint64_t AutoShortcutsSettingView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCV10WorkflowUI24AutoShortcutsSettingView5Model__isSiriEnabled;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCV10WorkflowUI24AutoShortcutsSettingView5Model_app;
  sub_2749F9514();
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t AutoShortcutsSettingView.Model.__deallocating_deinit()
{
  AutoShortcutsSettingView.Model.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2747B3A08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for AutoShortcutsSettingView(0);
  sub_2747959C4(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_274795A34(v9, a1);
  }

  sub_2749FD2D4();
  v12 = sub_2749FBC14();
  sub_2749FA424();

  sub_2749FB4B4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2747B3BC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AutoShortcutsSettingView.Model(0);
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t AutoShortcutsSettingView.init(model:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for AutoShortcutsSettingView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AutoShortcutsSettingView.Model(0);
  sub_2747B511C(&qword_280968948, type metadata accessor for AutoShortcutsSettingView.Model);
  result = sub_2749FAD84();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AutoShortcutsSettingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  sub_2749FB9A4();
  OUTLINED_FUNCTION_43();
  v28 = v2;
  v29 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968950);
  OUTLINED_FUNCTION_43();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v31 = v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968958);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968960);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968968);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968970);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968978);
  v17 = sub_27472AB6C(&qword_280968980, &qword_280968970);
  v18 = sub_2747B5034();
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v19 = OUTLINED_FUNCTION_5_11();
  v20 = sub_27475D0D0();
  v32 = v14;
  v33 = MEMORY[0x277D837D0];
  v34 = v19;
  v35 = v20;
  v21 = OUTLINED_FUNCTION_5_11();
  v32 = v13;
  v33 = v21;
  OUTLINED_FUNCTION_5_11();
  sub_2749FAD74();
  sub_2749FB994();
  OUTLINED_FUNCTION_3_18();
  sub_27472AB6C(v22, &qword_280968950);
  OUTLINED_FUNCTION_2_14();
  sub_2747B511C(v23, v24);
  v25 = v28;
  sub_2749FBF54();
  (*(v29 + 8))(v6, v25);
  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_2747B3FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = sub_2749FB4F4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2749F9514();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968970);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968968);
  v43 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v12 = &v39 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968960);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v39 - v13;
  v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096ED20);
  sub_27472AB6C(&qword_2809689C0, &unk_28096ED20);
  sub_2749FBE34();
  v45 = a1;
  v53 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968978);
  v15 = sub_27472AB6C(&qword_280968980, &qword_280968970);
  v16 = sub_2747B5034();
  v41 = v14;
  v40 = v15;
  v39 = v16;
  sub_2749FC2D4();
  (*(v8 + 8))(v10, v7);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v17 = qword_28159E448;
  v18 = sub_2749FCD64();
  v19 = sub_2749FCD64();

  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_274A0EF10;
  v22 = v42;
  (*(v4 + 16))(v6, *(v45 + 8) + OBJC_IVAR____TtCV10WorkflowUI24AutoShortcutsSettingView5Model_app, v42);
  v23 = sub_2749F94B4();
  v25 = v24;
  (*(v4 + 8))(v6, v22);
  v26 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = sub_27475C4F4();
  *(v21 + 32) = v23;
  *(v21 + 40) = v25;
  v27 = sub_2749FCDB4();
  v29 = v28;

  v59 = v27;
  v60 = v29;
  v55 = v7;
  v56 = v41;
  v57 = v40;
  v58 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_27475D0D0();
  v32 = v44;
  v33 = v47;
  sub_2749FC0A4();

  (*(v43 + 8))(v12, v33);
  v35 = v49;
  v34 = v50;
  v36 = v52;
  (*(v50 + 104))(v49, *MEMORY[0x277CDDDC0], v52);
  v55 = v33;
  v56 = v26;
  v57 = OpaqueTypeConformance2;
  v58 = v31;
  swift_getOpaqueTypeConformance2();
  v37 = v48;
  sub_2749FC224();
  (*(v34 + 8))(v35, v36);
  return (*(v46 + 8))(v32, v37);
}

uint64_t sub_2747B46B4()
{
  type metadata accessor for AutoShortcutsSettingView.Model(0);
  sub_2747B511C(&qword_280968948, type metadata accessor for AutoShortcutsSettingView.Model);
  sub_2749FAD94();
  swift_getKeyPath();
  sub_2749FADA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809689C8);
  sub_27472AB6C(&qword_28096EC60, &qword_2809689C8);
  return sub_2749FC674();
}

uint64_t sub_2747B4808()
{
  sub_2749FA304();
  sub_2747B511C(&qword_28159E800, MEMORY[0x277D7D6E0]);

  return sub_2749FC584();
}

uint64_t sub_2747B48C4@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_2747B49E4()
{
  v0 = sub_2749FA2F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FA2C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27471CF08(0, &qword_28096BB10);
  sub_274903E28();
  (*(v5 + 104))(v7, *MEMORY[0x277D7D6A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D7D6D0], v0);
  return sub_2749FA314();
}

uint64_t sub_2747B4BB4(uint64_t a1)
{
  v2 = type metadata accessor for AutoShortcutsSettingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2749FA9C4();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DFF0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  sub_2749FA994();
  sub_2747B549C(a1, v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_2747B5500(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  MEMORY[0x277C5E390](v7, sub_2747B5564, v13);
  sub_2749FCE14();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v14 = qword_28159E448;
  v15 = sub_2749FCD64();

  v16 = sub_2749FCD64();

  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v20 = v19;

  v22[0] = v18;
  v22[1] = v20;
  sub_27472AB6C(&qword_280968460, &unk_28096DFF0);
  sub_27475D0D0();
  sub_2749FC0F4();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2747B4EF4()
{
  v0 = sub_2749FAF84();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  sub_2747B3A08(&v5 - v2);
  MEMORY[0x277C5E410](v1);
  sub_2749FAF74();
  sub_2749FC6C4();
  return sub_2747359D0(v3, &qword_28096B2A0);
}

unint64_t sub_2747B5034()
{
  result = qword_280968988;
  if (!qword_280968988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968978);
    sub_27472AB6C(&qword_280968460, &unk_28096DFF0);
    sub_2747B511C(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968988);
  }

  return result;
}

uint64_t sub_2747B511C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2747B51A8()
{
  sub_2747B522C();
  if (v0 <= 0x3F)
  {
    sub_274795830();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2747B522C()
{
  if (!qword_2809689A8)
  {
    type metadata accessor for AutoShortcutsSettingView.Model(255);
    sub_2747B511C(&qword_280968948, type metadata accessor for AutoShortcutsSettingView.Model);
    v0 = sub_2749FADB4();
    if (!v1)
    {
      atomic_store(v0, &qword_2809689A8);
    }
  }
}

void sub_2747B52C8()
{
  sub_27475F2D0();
  if (v0 <= 0x3F)
  {
    sub_2749F9514();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2747B53D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27475F680;

  return sub_2747B2A94(a1, v4, v5, v6);
}

uint64_t sub_2747B549C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoShortcutsSettingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747B5500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoShortcutsSettingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747B5564()
{
  type metadata accessor for AutoShortcutsSettingView(0);

  return sub_2747B4EF4();
}

char *sub_2747B55E4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_colorViewDimension] = 0x4047800000000000;
  v9 = OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_gradientLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v10 = OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_baseColorView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v4[OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_borderLayer] = 0;
  v11 = OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_gestureRecognizer;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  v23.receiver = v4;
  v23.super_class = type metadata accessor for WFIconPickerColorCell();
  v12 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_baseColorView;
  v14 = *&v12[OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_baseColorView];
  v15 = v12;
  v16 = [v14 layer];
  [v16 setCornerRadius_];

  v17 = *&v12[v13];
  v18 = v15;
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_gradientLayer;
  [*&v18[OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_gradientLayer] setCornerRadius_];
  v20 = [v18 layer];
  [v20 addSublayer_];

  v21 = OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_gestureRecognizer;
  [v18 addGestureRecognizer_];
  [*&v18[v21] setMinimumPressDuration_];
  [*&v18[v21] addTarget:v18 action:sel_handleTap_];
  [*&v18[v21] setDelegate_];
  [v18 setIsAccessibilityElement_];

  return v18;
}

void sub_2747B5834(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_2747B6908(a1);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
  }

  else
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v12 = qword_28159E448;
    v13 = sub_2749FCD64();
    v14 = sub_2749FCD64();

    v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

    v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v11 = v16;
  }

  sub_2749789F8(v10, v11, v4);
  v17 = *MEMORY[0x277D76598];
  if ((a2 & 1) == 0)
  {
    v17 = 0;
  }

  [v4 setAccessibilityTraits_];
  v28 = [a1 paletteGradient];
  sub_2747B5BA0(v28);
  v18 = *&v4[OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_baseColorView];
  if (a3)
  {
    v19 = [a1 platformColor];
  }

  else
  {
    v20 = [v4 traitCollection];
    v21 = sub_2747B5CD0(v20);

    v19 = [v21 platformColor];
  }

  [v18 setBackgroundColor_];

  if (a2)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    [v22 setFrame_];
    [v22 setCornerRadius_];
    v23 = [objc_opt_self() systemBlueColor];
    v24 = [v23 CGColor];

    [v22 setBorderColor_];
    [v22 setBorderWidth_];
    v25 = *&v4[OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_borderLayer];
    *&v4[OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_borderLayer] = v22;
    v26 = v22;

    v27 = [v4 layer];
    [v27 addSublayer_];
  }

  else
  {
    v27 = *&v4[OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_borderLayer];
    [v27 removeFromSuperlayer];
  }
}

void sub_2747B5BA0(void *a1)
{
  [v1 setStartPoint_];
  [v1 setEndPoint_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_274A0F620;
  v4 = [a1 startColor];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [a1 endColor];
  v9 = [v8 CGColor];

  *(v3 + 88) = v7;
  *(v3 + 64) = v9;

  sub_274835758(v3, v1);
}

id sub_2747B5CD0(void *a1)
{
  v3 = [a1 userInterfaceStyle];
  v4 = [a1 accessibilityContrast];
  v5 = &selRef_baseColor;
  v6 = &selRef_darkBaseColor;
  if (v4)
  {
    v6 = &selRef_baseColor;
  }

  if (v4 == 1)
  {
    v6 = &selRef_darkAccessibilityBaseColor;
  }

  v7 = &selRef_accessibilityBaseColor;
  if (v4 != 1)
  {
    v7 = &selRef_baseColor;
  }

  if (v3 == 1)
  {
    v5 = v7;
  }

  if (v3 == 2)
  {
    v5 = v6;
  }

  v8 = [v1 *v5];

  return v8;
}

void sub_2747B5D7C(uint64_t a1, char a2)
{
  v4 = sub_2749F9EB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D7D378])
  {
    (*(v5 + 96))(v7, v4);
    v9 = *v7;
    sub_2747B5834(*v7, a2 & 1, 0);
LABEL_5:

    return;
  }

  if (v8 == *MEMORY[0x277D7D380])
  {
    (*(v5 + 96))(v7, v4);
    v10 = *v7;
    v11 = *(v7 + 1);

    v9 = [v11 baseColor];
    sub_2747B5834(v9, a2 & 1, 1);

    goto LABEL_5;
  }

  sub_2749FDCB4();
  __break(1u);
}

void sub_2747B5F20(void *a1)
{
  if ([a1 state] == 1)
  {
    v3 = objc_opt_self();
    *(swift_allocObject() + 16) = v1;
    OUTLINED_FUNCTION_0_12();
    OUTLINED_FUNCTION_1_13();
    v24 = v4;
    v25 = &block_descriptor_12;
    v5 = _Block_copy(v23);
    v6 = v1;

    v26 = CGSizeMake;
    v27 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_2_15();
    v24 = v7;
    v25 = &block_descriptor_15;
    v8 = _Block_copy(v23);
    [v3 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
LABEL_6:
    _Block_release(v8);
    _Block_release(v5);
    return;
  }

  if ([a1 state] == 3 || (objc_msgSend(v1, sel_frame), v10 = v9, v12 = v11, v14 = v13, v16 = v15, objc_msgSend(a1, sel_locationInView_, v1), v28.x = v17, v28.y = v18, v29.origin.x = v10, v29.origin.y = v12, v29.size.width = v14, v29.size.height = v16, !CGRectContainsPoint(v29, v28)))
  {
    v19 = objc_opt_self();
    *(swift_allocObject() + 16) = v1;
    OUTLINED_FUNCTION_0_12();
    OUTLINED_FUNCTION_1_13();
    v24 = v20;
    v25 = &block_descriptor_7;
    v5 = _Block_copy(v23);
    v21 = v1;

    v26 = CGSizeMake;
    v27 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_2_15();
    v24 = v22;
    v25 = &block_descriptor_6;
    v8 = _Block_copy(v23);
    [v19 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    goto LABEL_6;
  }
}

uint64_t sub_2747B61B0(void *a1)
{
  v2 = objc_opt_self();
  sub_2749FD314();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2747B68DC;
  *(v10 + 24) = v9;
  v17[4] = sub_27475D1DC;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_274963064;
  v17[3] = &block_descriptor_24;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2747B6360(void *a1)
{
  v2 = objc_opt_self();
  sub_2749FD314();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2747B68F4;
  *(v10 + 24) = v9;
  v17[4] = sub_2747B6980;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_274963064;
  v17[3] = &block_descriptor_34;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

id sub_2747B6580()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFIconPickerColorCell();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  OUTLINED_FUNCTION_3_19(*&v0[OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_baseColorView], sel_setFrame_);
  return OUTLINED_FUNCTION_3_19(*&v0[OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_gradientLayer], sel_setFrame_);
}

void sub_2747B6650()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_borderLayer;
  [*(v0 + OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_borderLayer) removeFromSuperlayer];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_2747B669C()
{
  *(v0 + OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_colorViewDimension) = 0x4047800000000000;
  v1 = OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_gradientLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v2 = OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_baseColorView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_borderLayer) = 0;
  v3 = OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_gestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  sub_2749FDAE4();
  __break(1u);
}

void sub_2747B67A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI21WFIconPickerColorCell_gestureRecognizer);
}

id sub_2747B6800()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFIconPickerColorCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2747B6908(void *a1)
{
  v1 = [a1 localizedPaletteName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

uint64_t sub_2747B69D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2747B9984();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_2747B6A3C()
{
  sub_2747B9800();

  return sub_2749FB4D4();
}

uint64_t sub_2747B6A84(void *__src)
{
  memcpy(v2, __src, sizeof(v2));
  sub_2747B9800();
  return sub_2749FB4E4();
}

uint64_t sub_2747B6ACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
  __swift_allocate_value_buffer(v0, qword_280968A10);
  v1 = __swift_project_value_buffer(v0, qword_280968A10);
  v2 = sub_2749FA0F4();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_2747B6B48@<X0>(uint64_t a1@<X8>)
{
  if (qword_280966BC8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
  v3 = __swift_project_value_buffer(v2, qword_280968A10);
  return sub_2747B97A0(v3, a1, &qword_280968A30);
}

uint64_t EnvironmentValues.smartShortcutEntryColorSchemeOverride.getter()
{
  sub_2747B6C24();

  return sub_2749FB4D4();
}

unint64_t sub_2747B6C24()
{
  result = qword_280968A28;
  if (!qword_280968A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968A28);
  }

  return result;
}

uint64_t EnvironmentValues.smartShortcutEntryColorSchemeOverride.setter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_66_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_64_1();
  sub_2747B97A0(a1, v1, &qword_280968A30);
  sub_2747B6C24();
  sub_2749FB4E4();
  return sub_27472ECBC(a1, &qword_280968A30);
}

void (*EnvironmentValues.smartShortcutEntryColorSchemeOverride.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30) - 8) + 64);
  v3[1] = __swift_coroFrameAllocStub(v4);
  v3[2] = __swift_coroFrameAllocStub(v4);
  v3[3] = __swift_coroFrameAllocStub(v4);
  v3[4] = sub_2747B6C24();
  sub_2749FB4D4();
  return sub_2747B6E0C;
}

void sub_2747B6E0C(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_2747B97A0((*a1)[3], (*a1)[2], &qword_280968A30);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_2747B97A0(v3[2], v3[1], &qword_280968A30);
    sub_2749FB4E4();
    sub_27472ECBC(v6, &qword_280968A30);
  }

  else
  {
    sub_2749FB4E4();
  }

  sub_27472ECBC(v4, &qword_280968A30);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t type metadata accessor for AutomationEntryView()
{
  result = qword_280968A40;
  if (!qword_280968A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2747B6F90()
{
  sub_2747B70E4(319, &qword_280968A50, &qword_280968A58);
  if (v0 <= 0x3F)
  {
    sub_2747B708C();
    if (v1 <= 0x3F)
    {
      sub_2747B70E4(319, &qword_280968A68, &qword_280968A30);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SmartShortcutPickerEntry();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2747B708C()
{
  if (!qword_280968A60)
  {
    sub_2749FAA94();
    v0 = sub_2749FAAB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280968A60);
    }
  }
}

void sub_2747B70E4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_2749FAAB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AutomationEntryView.SelectionIndicatorStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2747B7228()
{
  result = qword_280968A70;
  if (!qword_280968A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968A70);
  }

  return result;
}

void sub_2747B727C()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_1();
  memcpy(v21, v1, 0xBAuLL);
  memcpy(v22, v1, 0xBAuLL);
  if (sub_2747B973C(v22) == 1)
  {
    CGSizeMake(v22);
    OUTLINED_FUNCTION_24_5(v18);
    v5 = CGSizeMake(v18);
    memcpy(v20, v5, sizeof(v20));
    OUTLINED_FUNCTION_24_5(v19);
    v6 = CGSizeMake(v19);
    sub_2747B97A0(v6, v17, &qword_280968A58);
  }

  else
  {
    CGSizeMake(v22);
    OUTLINED_FUNCTION_24_5(v18);
    CGSizeMake(v18);
    OUTLINED_FUNCTION_24_5(v19);
    CGSizeMake(v19);

    sub_2749FD2D4();
    v7 = sub_2749FBC14();
    OUTLINED_FUNCTION_17_4();

    sub_2749FB4B4();
    OUTLINED_FUNCTION_42();
    swift_getAtKeyPath();
    sub_27472ECBC(v21, &qword_280968A90);
    v8 = OUTLINED_FUNCTION_63();
    v9(v8);
  }

  memcpy(v18, v20, 0xB9uLL);
  memcpy(v19, v20, 0xB9uLL);
  if (sub_2747B9744(v19) == 1 || (memcpy(v15, v19, sizeof(v15)), v10 = *(type metadata accessor for AutomationEntryView() + 28), memcpy(v16, &v1[v10], 0xB9uLL), memcpy(v14, &v1[v10], sizeof(v14)), sub_274772ADC(v16, &v13), v11 = static SmartShortcutPickerEntry.Identifier.== infix(_:_:)(), memcpy(v17, v14, 0xB9uLL), sub_274772BE8(v17), sub_27472ECBC(v18, &qword_280968A58), (v11 & 1) == 0))
  {
    v12 = 6;
  }

  else
  {
    v12 = 4;
  }

  *v3 = v12;
  OUTLINED_FUNCTION_46();
}

void sub_2747B7518()
{
  OUTLINED_FUNCTION_48();
  sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_1();
  v2 = type metadata accessor for AutomationEntryView();
  v3 = v2;
  if (v0[*(v2 + 36)])
  {
    v4 = &v0[*(v2 + 32)];
    v5 = *(v4 + 1);
    v37 = *v4;
    v38 = v5;
    v6 = *(v4 + 3);
    v39 = *(v4 + 2);
    v40 = v6;
    memcpy(v41, v0, 0xBAuLL);
    memcpy(v42, v0, 0xBAuLL);
    if (sub_2747B973C(v42) == 1)
    {
      CGSizeMake(v42);
      OUTLINED_FUNCTION_23_6(v29);
      v7 = CGSizeMake(v29);
      memcpy(v36, v7, sizeof(v36));
      OUTLINED_FUNCTION_23_6(v31);
      v8 = CGSizeMake(v31);
      sub_2747B97A0(v8, v35, &qword_280968A58);
    }

    else
    {
      CGSizeMake(v42);
      OUTLINED_FUNCTION_23_6(v29);
      CGSizeMake(v29);
      OUTLINED_FUNCTION_23_6(v31);
      CGSizeMake(v31);

      sub_2749FD2D4();
      v20 = sub_2749FBC14();
      OUTLINED_FUNCTION_17_4();

      sub_2749FB4B4();
      OUTLINED_FUNCTION_42();
      swift_getAtKeyPath();
      sub_27472ECBC(v41, &qword_280968A90);
      v21 = OUTLINED_FUNCTION_63();
      v22(v21);
    }

    memcpy(v32, v36, sizeof(v32));
    v23 = *(v3 + 28);
    memcpy(v33, &v0[v23], 0xB9uLL);
    memcpy(v34, &v0[v23], 0xB9uLL);
    CGSizeMake(v34);
    OUTLINED_FUNCTION_15_6(v31);
    memcpy(&v31[12], v34, 0xB9uLL);
    OUTLINED_FUNCTION_15_6(v35);
    if (sub_2747B9744(v35) == 1)
    {
      memcpy(v29, &v31[12], 0xB9uLL);
      if (sub_2747B9744(v29) == 1)
      {
        OUTLINED_FUNCTION_15_6(v30);
        sub_274772ADC(v33, v28);
        sub_27472ECBC(v30, &qword_280968A58);
LABEL_14:
        *&v31[0] = 6;
        type metadata accessor for ShortcutChiclet.Model(0);
        swift_allocObject();
        v24 = v31;
        OUTLINED_FUNCTION_12_9();
        goto LABEL_15;
      }

      sub_274772ADC(v33, v30);
    }

    else
    {
      OUTLINED_FUNCTION_15_6(v30);
      OUTLINED_FUNCTION_15_6(v28);
      memcpy(v29, &v31[12], 0xB9uLL);
      if (sub_2747B9744(v29) != 1)
      {
        memcpy(v27, &v31[12], 0xB9uLL);
        sub_274772ADC(v33, v26);
        sub_2747B97A0(v30, v26, &qword_280968A58);
        static SmartShortcutPickerEntry.Identifier.== infix(_:_:)();
        memcpy(v25, v27, 0xB9uLL);
        sub_274772BE8(v25);
        memcpy(v26, v28, 0xB9uLL);
        sub_274772BE8(v26);
        OUTLINED_FUNCTION_15_6(v27);
        sub_27472ECBC(v27, &qword_280968A58);
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_15_6(v27);
      sub_274772ADC(v33, v26);
      sub_2747B97A0(v30, v26, &qword_280968A58);
      sub_274772BE8(v27);
    }

    memcpy(v29, v31, 0x179uLL);
    sub_27472ECBC(v29, &qword_280968A98);
    goto LABEL_14;
  }

  v9 = &v0[*(v2 + 32)];
  v10 = *(v9 + 1);
  v31[0] = *v9;
  v31[1] = v10;
  v11 = *(v9 + 3);
  v31[2] = *(v9 + 2);
  v31[3] = v11;
  sub_2747B727C();
  type metadata accessor for ShortcutChiclet.Model(0);
  swift_allocObject();
  v24 = v29;
  OUTLINED_FUNCTION_12_9();
LABEL_15:
  ShortcutChiclet.Model.init(metrics:isSelected:isHovered:isEditing:isGallery:isGalleryDetail:isAddedToLibrary:isDownloading:buttonType:buttonAction:)(v12, v13, v14, v15, v16, v17, v18, v19, v24, 0, 0);
  OUTLINED_FUNCTION_46();
}

void sub_2747B79C4()
{
  OUTLINED_FUNCTION_48();
  v65 = v2;
  v3 = type metadata accessor for ShortcutChiclet(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_1();
  MEMORY[0x28223BE20](v5);
  v64 = &v60 - v6;
  v7 = (v0 + *(type metadata accessor for AutomationEntryView() + 28));
  memcpy(v69, v7, 0xB9uLL);
  memcpy(v70, v7, 0xB9uLL);
  switch(sub_274772AD0(v70))
  {
    case 1u:
      sub_274721C98(v70);
      sub_2749FCE14();
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v24 = qword_28159E448;
      v25 = sub_2749FCD64();
      v26 = sub_2749FCD64();

      v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

      v28 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v62 = v29;
      v63 = v28;

      break;
    case 2u:
      v10 = *sub_274721C98(v70);
      OUTLINED_FUNCTION_16_6();
      v11 = *sub_274721C98(v68);
      v12 = [v10 name];
      v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v62 = v14;
      v63 = v13;

      sub_274772BE8(v69);
      break;
    case 3u:
      v15 = sub_274721C98(v70);
      v16 = *v15;
      v17 = *(v15 + 8);
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      v20 = *(v15 + 32);
      v62 = *(v15 + 40);
      v63 = v20;
      HIDWORD(v61) = *(v15 + 48);
      OUTLINED_FUNCTION_16_6();
      v21 = sub_274721C98(v68);
      sub_2747B97A0(v21, v67, &unk_280970630);
      sub_27477CABC(v16, v17, v19, v18, v63, v62, SBYTE4(v61));
      memcpy(v67, (v15 + 56), 0x81uLL);
      v22 = SmartShortcutPickerActionConfiguration.displayString.getter();
      v62 = v23;
      v63 = v22;
      sub_274772B94(v15 + 56);
      break;
    default:
      v8 = sub_274721C98(v70);
      v9 = *(v8 + 16);
      v62 = *(v8 + 24);
      v63 = v9;
      OUTLINED_FUNCTION_16_6();
      sub_274721C98(v68);

      break;
  }

  v30 = *&v7[*(type metadata accessor for SmartShortcutPickerEntry() + 24)];
  v31 = type metadata accessor for CustomShortcutChicletIcon(0);
  v68[3] = v31;
  v68[4] = &protocol witness table for CustomShortcutChicletIcon;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  v33 = v31[5];
  v34 = v30;
  sub_2747B7F8C(boxed_opaque_existential_1 + v33);
  v35 = sub_2747B8234();
  sub_2747B860C();
  *boxed_opaque_existential_1 = v34;
  *(boxed_opaque_existential_1 + v31[6]) = v35;
  *(boxed_opaque_existential_1 + v31[7]) = v36;
  sub_2747B7518();
  *(v1 + 128) = swift_getKeyPath();
  *(v1 + 136) = 0;
  *(v1 + 144) = swift_getKeyPath();
  *(v1 + 152) = 0;
  v37 = v3[15];
  *(v1 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  v38 = v3[16];
  *(v1 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  swift_storeEnumTagMultiPayload();
  HIBYTE(v66) = 0;
  sub_2749FC5B4();
  OUTLINED_FUNCTION_18_8();
  HIBYTE(v66) = 0;
  sub_2749FC5B4();
  OUTLINED_FUNCTION_18_8();
  v39 = (v1 + v3[19]);
  v40 = (v1 + v3[20]);
  v41 = (v1 + v3[21]);
  v42 = v62;
  *v1 = v63;
  *(v1 + 8) = v42;
  sub_2747B960C(v68, v1 + 16);
  *(v1 + 89) = 1;
  *(v1 + 56) = v35;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  type metadata accessor for ShortcutChiclet.Model(0);
  sub_27473AAC4(&qword_2815A0440, type metadata accessor for ShortcutChiclet.Model);
  v43 = v35;

  *(v1 + 96) = sub_2749FAD84();
  *(v1 + 104) = v44;
  type metadata accessor for ShortcutChiclet.Progress(0);
  swift_allocObject();
  ShortcutChiclet.Progress.init()();
  sub_27473AAC4(&qword_2815A0130, type metadata accessor for ShortcutChiclet.Progress);
  v45 = sub_2749FAD84();
  v47 = v46;

  *(v1 + 112) = v45;
  *(v1 + 120) = v47;
  *v39 = 0;
  v39[1] = 0;
  *v40 = 0;
  v40[1] = 0;
  *v41 = 0;
  v41[1] = 0;
  *(v1 + 88) = 0;
  v48 = v64;
  sub_27473D654(v1, v64);
  __swift_destroy_boxed_opaque_existential_0(v68);
  sub_2747B9670(v1);
  KeyPath = swift_getKeyPath();
  sub_2747B8C08(KeyPath, v50, v51, v52, v53, v54, v55, v56, v60, v61, v62, v63, v64, v65, v66, v67[0], v67[1], v67[2], v67[3], v67[4]);
  LOBYTE(v45) = v57;
  v58 = v65;
  sub_27473D980(v48, v65);
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A78) + 36);
  *v59 = KeyPath;
  *(v59 + 8) = v45 & 1;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747B7F8C@<X0>(uint64_t a1@<X8>)
{
  sub_2749FA0F4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_91_1();
  sub_2747B8FAC();
  v4 = OUTLINED_FUNCTION_66_2();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D7D5E8])
  {
    v7 = [objc_opt_self() whiteColor];
LABEL_3:
    *a1 = v7;
    *(a1 + 8) = 0;
    v8 = *MEMORY[0x277D7D6C0];
    sub_2749FA2F4();
    OUTLINED_FUNCTION_9();
    return (*(v9 + 104))(a1, v8);
  }

  if (v6 == *MEMORY[0x277D7D5E0])
  {
    v11 = OUTLINED_FUNCTION_66_2();
    v12(v11);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809706A0);
    v14 = *(v13 + 48);

    sub_2749FA2F4();
    OUTLINED_FUNCTION_9();
    return (*(v15 + 32))(a1, v1 + v14);
  }

  else if (v6 == *MEMORY[0x277D7D608])
  {
    v16 = OUTLINED_FUNCTION_66_2();
    v17(v16);
    *a1 = sub_2747B8234();
    *(a1 + 8) = 0;
    v18 = *MEMORY[0x277D7D6C0];
    sub_2749FA2F4();
    OUTLINED_FUNCTION_9();
    (*(v19 + 104))(a1, v18);
    sub_2749FA0E4();
    OUTLINED_FUNCTION_9();
    return (*(v20 + 8))(v1);
  }

  else
  {
    if (v6 == *MEMORY[0x277D7D610])
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
      goto LABEL_3;
    }

    result = sub_2749FDCB4();
    __break(1u);
  }

  return result;
}

id sub_2747B8234()
{
  v1 = sub_2749FA0E4();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  sub_2749FA0F4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_1();
  sub_2747B8FAC();
  v11 = OUTLINED_FUNCTION_42();
  v13 = v12(v11);
  if (v13 != *MEMORY[0x277D7D5E8])
  {
    if (v13 == *MEMORY[0x277D7D5E0])
    {
      v16 = OUTLINED_FUNCTION_42();
      v17(v16);
      v18 = *v0;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809706A0);
      v20 = *(v19 + 48);

      sub_2749FA2F4();
      OUTLINED_FUNCTION_9();
      (*(v21 + 8))(v0 + v20);
      return v18;
    }

    if (v13 == *MEMORY[0x277D7D608])
    {
      v22 = OUTLINED_FUNCTION_42();
      v23(v22);
      (*(v3 + 32))(v9, v0, v1);
      v24 = OUTLINED_FUNCTION_66_2();
      v25(v24);
      v26 = OUTLINED_FUNCTION_45();
      v28 = v27(v26);
      if (v28 == *MEMORY[0x277D7D5F8])
      {
        v29 = OUTLINED_FUNCTION_21_6();
        v30(v29);
        v31 = OUTLINED_FUNCTION_45();
        v32(v31);
        return *v7;
      }

      if (v28 == *MEMORY[0x277D7D600])
      {
        v33 = *(v3 + 8);
        v34 = OUTLINED_FUNCTION_45();
        v33(v34);
        v18 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
        (v33)(v9, v1);
        return v18;
      }

      if (v28 == *MEMORY[0x277D7D5F0])
      {
        v35 = OUTLINED_FUNCTION_21_6();
        v36(v35);
        v37 = OUTLINED_FUNCTION_45();
        v38(v37);
        v18 = *v7;

        return v18;
      }
    }

    else if (v13 == *MEMORY[0x277D7D610])
    {
      return [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
    }

    result = sub_2749FDCB4();
    __break(1u);
    return result;
  }

  v14 = [objc_opt_self() whiteColor];

  return v14;
}

void sub_2747B860C()
{
  OUTLINED_FUNCTION_48();
  v1 = sub_2749FA0E4();
  OUTLINED_FUNCTION_43();
  v64 = v2;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v64 - v7;
  v9 = sub_2749FAA94();
  OUTLINED_FUNCTION_43();
  v65 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  MEMORY[0x28223BE20](v12);
  v13 = sub_2749FA0F4();
  OUTLINED_FUNCTION_43();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  sub_2747B8FAC();
  v20 = (*(v15 + 88))(v19, v13);
  if (v20 == *MEMORY[0x277D7D5E8])
  {
    v21 = OUTLINED_FUNCTION_13_9();
    v22(v21);
    v23 = [objc_opt_self() colorWithPaletteColor_];
    [v23 paletteGradient];

LABEL_16:
    OUTLINED_FUNCTION_46();
    return;
  }

  if (v20 == *MEMORY[0x277D7D5E0])
  {
    v24 = OUTLINED_FUNCTION_13_9();
    v25(v24);

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809706A0);
    v27 = *(v26 + 48);
    v28 = *(v19 + *(v26 + 64));
    sub_2747B975C();
    v29 = v28;
    sub_2747B931C(v29, v29);
    sub_2749FA2F4();
    OUTLINED_FUNCTION_9();
    (*(v30 + 8))(v19 + v27);
    goto LABEL_16;
  }

  if (v20 == *MEMORY[0x277D7D608])
  {
    v31 = OUTLINED_FUNCTION_13_9();
    v32(v31);
    v33 = v64;
    (*(v64 + 32))(v8, v19, v1);
    (*(v33 + 16))(v6, v8, v1);
    v34 = OUTLINED_FUNCTION_22_4();
    v36 = v35(v34);
    if (v36 == *MEMORY[0x277D7D5F8])
    {
      v37 = *(v33 + 8);
      v38 = OUTLINED_FUNCTION_22_4();
      v37(v38);
      type metadata accessor for AutomationEntryView();
      OUTLINED_FUNCTION_1_14();
      sub_27473AEE0();
      v39 = v65;
      (*(v65 + 104))(v0, *MEMORY[0x277CDF3C0], v9);
      OUTLINED_FUNCTION_42();
      v40 = sub_2749FAA84();
      v41 = *(v39 + 8);
      v41(v0, v9);
      v42 = OUTLINED_FUNCTION_63();
      (v41)(v42);
      v43 = objc_allocWithZone(MEMORY[0x277D79E20]);
      if (v40)
      {
        v44 = 17;
      }

      else
      {
        v44 = 21;
      }

      v45 = [v43 initWithSystemColor_];
      sub_2747B975C();
      v46 = v45;
      sub_2747B931C(v46, v46);
      v47 = OUTLINED_FUNCTION_45();
      v37(v47);
      goto LABEL_16;
    }

    if (v36 == *MEMORY[0x277D7D600])
    {
      v56 = OUTLINED_FUNCTION_45();
      v57(v56);
      v58 = OUTLINED_FUNCTION_22_4();
      v59(v58);
      goto LABEL_16;
    }

    if (v36 == *MEMORY[0x277D7D5F0])
    {
      v60 = OUTLINED_FUNCTION_45();
      v61(v60);
      v62 = OUTLINED_FUNCTION_22_4();
      v63(v62);

      goto LABEL_16;
    }
  }

  else if (v20 == *MEMORY[0x277D7D610])
  {
    type metadata accessor for AutomationEntryView();
    OUTLINED_FUNCTION_1_14();
    sub_27473AEE0();
    v48 = v65;
    (*(v65 + 104))(v0, *MEMORY[0x277CDF3C0], v9);
    OUTLINED_FUNCTION_42();
    v49 = sub_2749FAA84();
    v50 = *(v48 + 8);
    v50(v0, v9);
    v51 = OUTLINED_FUNCTION_63();
    (v50)(v51);
    v52 = objc_allocWithZone(MEMORY[0x277D79E20]);
    if (v49)
    {
      v53 = 17;
    }

    else
    {
      v53 = 21;
    }

    v54 = [v52 initWithSystemColor_];
    sub_2747B975C();
    v55 = v54;
    sub_2747B931C(v55, v55);
    goto LABEL_16;
  }

  sub_2749FDCB4();
  __break(1u);
}

void sub_2747B8C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  a19 = v21;
  a20 = v22;
  v23 = sub_2749FA0F4();
  OUTLINED_FUNCTION_43();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = (v28 - v27);
  v30 = sub_2749FAA94();
  OUTLINED_FUNCTION_43();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12_1();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  type metadata accessor for AutomationEntryView();
  OUTLINED_FUNCTION_1_14();
  sub_27473AEE0();
  (*(v32 + 104))(v20, *MEMORY[0x277CDF3C0], v30);
  sub_27473AAC4(&qword_280968A80, MEMORY[0x277CDF3E0]);
  v37 = sub_2749FCD54();
  v38 = *(v32 + 8);
  v38(v20, v30);
  v38(v36, v30);
  if (v37)
  {
    sub_2747B8FAC();
    v39 = (*(v25 + 88))(v29, v23);
    if (v39 != *MEMORY[0x277D7D5E8])
    {
      if (v39 == *MEMORY[0x277D7D5E0])
      {
        (*(v25 + 96))(v29, v23);

        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809706A0);
        v41 = (v29 + *(v40 + 48));

        v42 = sub_2749FA2F4();
        v29 = v41;
      }

      else
      {
        if (v39 == *MEMORY[0x277D7D608])
        {
          (*(v25 + 96))(v29, v23);
          sub_2747B860C();
          v44 = v43;
          v45 = [v43 startColor];

          LOBYTE(v44) = sub_2747B9264(v45);
          if (v44)
          {
            sub_2747B860C();
            v47 = v46;
            v48 = [v46 endColor];

            sub_2747B9264(v48);
          }
        }

        else
        {
          if (v39 == *MEMORY[0x277D7D610])
          {
            goto LABEL_3;
          }

          sub_2749FDCB4();
          __break(1u);
        }

        v42 = sub_2749FA0E4();
      }

      (*(*(v42 - 8) + 8))(v29);
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_46();
}

void sub_2747B8FAC()
{
  OUTLINED_FUNCTION_48();
  v16 = v2;
  sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A88);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_91_1();
  v8 = type metadata accessor for AutomationEntryView();
  sub_2747B97A0(v0 + *(v8 + 24), v6, &qword_280968A88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2747B96CC(v6, v1);
  }

  else
  {
    sub_2749FD2D4();
    v9 = sub_2749FBC14();
    OUTLINED_FUNCTION_17_4();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    v10 = OUTLINED_FUNCTION_63();
    v11(v10);
  }

  v12 = sub_2749FA0F4();
  if (__swift_getEnumTagSinglePayload(v1, 1, v12) == 1)
  {
    v13 = v0 + *(v8 + 28);
    v14 = type metadata accessor for SmartShortcutPickerEntry();
    (*(*(v12 - 8) + 16))(v16, v13 + *(v14 + 20), v12);
    if (__swift_getEnumTagSinglePayload(v1, 1, v12) != 1)
    {
      sub_27472ECBC(v1, &qword_280968A30);
    }
  }

  else
  {
    (*(*(v12 - 8) + 32))(v16, v1, v12);
  }

  OUTLINED_FUNCTION_46();
}

BOOL sub_2747B9264(void *a1)
{
  [a1 red];
  if (fabs(v2 * 255.0 + -28.0) >= 5.0)
  {
    return 0;
  }

  [a1 green];
  if (fabs(v3 * 255.0 + -28.0) >= 5.0)
  {
    return 0;
  }

  [a1 blue];
  return fabs(v4 * 255.0 + -30.0) < 5.0;
}

id sub_2747B931C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStartColor:a1 endColor:a2];

  return v4;
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
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_2747B9434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_91_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A88);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - v26;
  v28 = OUTLINED_FUNCTION_63();
  sub_2747B97A0(v28, v29, &qword_280968A88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2747B96CC(v27, v23);
  }

  else
  {
    sub_2749FD2D4();
    v30 = sub_2749FBC14();
    OUTLINED_FUNCTION_17_4();

    sub_2749FB4B4();
    OUTLINED_FUNCTION_66_2();
    swift_getAtKeyPath();

    v31 = OUTLINED_FUNCTION_45();
    v32(v31);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747B960C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2747B9670(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutChiclet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2747B96CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747B9744(uint64_t a1)
{
  if ((*(a1 + 48) >> 1) > 0x80000000)
  {
    return -(*(a1 + 48) >> 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2747B975C()
{
  result = qword_280968AA0;
  if (!qword_280968AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280968AA0);
  }

  return result;
}

uint64_t sub_2747B97A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2747B9800()
{
  result = qword_280968AB0;
  if (!qword_280968AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968AB0);
  }

  return result;
}

unint64_t sub_2747B9864()
{
  result = qword_280968AB8;
  if (!qword_280968AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968A78);
    sub_27473AAC4(&qword_28096E8B0, type metadata accessor for ShortcutChiclet);
    sub_2747B9920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968AB8);
  }

  return result;
}

unint64_t sub_2747B9920()
{
  result = qword_280968AC0;
  if (!qword_280968AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096E8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968AC0);
  }

  return result;
}

unint64_t sub_2747B9984()
{
  result = qword_280968AC8;
  if (!qword_280968AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968A58);
    sub_2747B9A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968AC8);
  }

  return result;
}

unint64_t sub_2747B9A08()
{
  result = qword_280970660;
  if (!qword_280970660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970660);
  }

  return result;
}

void sub_2747B9A5C(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0x1FFFFFFFELL;
  bzero((a1 + 56), 0x81uLL);
}

void OUTLINED_FUNCTION_18_8()
{
  v2 = *(v0 + 64);
  *v1 = *(v0 + 56);
  *(v1 + 8) = v2;
}

uint64_t sub_2747B9A90(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 == v4)
    {

      return v6;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    v7 = *(v3 + 2 * v4++ + 32);
    result = sub_274765094(&v11, v7);
    if (result)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v12 = v6;
      v10 = v2;
      if ((result & 1) == 0)
      {
        result = sub_27476D4E0(0, *(v6 + 16) + 1, 1);
        v6 = v12;
      }

      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        result = sub_27476D4E0((v8 > 1), v9 + 1, 1);
        v6 = v12;
      }

      *(v6 + 16) = v9 + 1;
      *(v6 + 2 * v9 + 32) = v7;
      v2 = v10;
    }
  }

  __break(1u);
  return result;
}

void sub_2747B9BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFGlyphCategory();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = GlyphRegistry.categories.getter();
  v41 = *(v9 + 16);
  if (v41)
  {
    v10 = 0;
    v11 = *(v4 + 24);
    v39 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v40 = v11;
    v12 = MEMORY[0x277D84F90];
    v37 = v9;
    v38 = v6;
    while (v10 < *(v9 + 16))
    {
      v45 = v12;
      v13 = *(v6 + 72);
      v43 = v10;
      v14 = v42;
      sub_2747BC1C0(v39 + v13 * v10, v42);
      v15 = *(v14 + v40);

      sub_2747BC224(v14);
      v16 = *(v15 + 16);
      v44 = v15;
      if (v16)
      {
        v17 = (v15 + 32);
        v18 = MEMORY[0x277D84F90];
        do
        {
          v20 = *v17++;
          v19 = v20;
          v21 = WFNameForGlyphCharacter();
          if (!v21 || (v22 = v21, v23 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0(), v25 = v24, v22, v48 = v23, v49 = v25, v46 = a1, v47 = a2, sub_27475D0D0(), LOBYTE(v22) = sub_2749FD744(), , (v22 & 1) != 0))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v50 = v18;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_27476D4E0(0, v18[2] + 1, 1);
              v18 = v50;
            }

            v28 = v18[2];
            v27 = v18[3];
            if (v28 >= v27 >> 1)
            {
              sub_27476D4E0((v27 > 1), v28 + 1, 1);
              v18 = v50;
            }

            v18[2] = v28 + 1;
            *(v18 + v28 + 16) = v19;
          }

          --v16;
        }

        while (v16);
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      v29 = v18[2];
      v12 = v45;
      v30 = *(v45 + 16);
      if (__OFADD__(v30, v29))
      {
        goto LABEL_31;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v30 + v29 > *(v12 + 24) >> 1)
      {
        sub_274763930();
        v12 = v31;
      }

      if (v18[2])
      {
        v32 = *(v12 + 16);
        if ((*(v12 + 24) >> 1) - v32 < v29)
        {
          goto LABEL_33;
        }

        memcpy((v12 + 2 * v32 + 32), v18 + 4, 2 * v29);

        v6 = v38;
        if (v29)
        {
          v33 = *(v12 + 16);
          v34 = __OFADD__(v33, v29);
          v35 = v33 + v29;
          if (v34)
          {
            goto LABEL_34;
          }

          *(v12 + 16) = v35;
        }
      }

      else
      {

        v6 = v38;
        if (v29)
        {
          goto LABEL_32;
        }
      }

      v10 = v43 + 1;
      v9 = v37;
      if (v43 + 1 == v41)
      {

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
LABEL_29:
    v48 = MEMORY[0x277D84FA0];
    sub_2747B9A90(v12);
  }
}

uint64_t GlyphRegistry.$categories.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D88);
  sub_2749FA8D4();
  return swift_endAccess();
}

uint64_t sub_2747B9F74()
{
  type metadata accessor for GlyphRegistry();
  v0 = swift_allocObject();
  result = GlyphRegistry.init(useSystemGlyphsOnly:useOutlineGlyphsOnly:hiddenCategories:)(1, 1, &unk_28838F7F8);
  qword_2815A0A48 = v0;
  return result;
}

uint64_t GlyphRegistry.__allocating_init(useSystemGlyphsOnly:useOutlineGlyphsOnly:hiddenCategories:)(char a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  GlyphRegistry.init(useSystemGlyphsOnly:useOutlineGlyphsOnly:hiddenCategories:)(a1, a2, a3);
  return v6;
}

uint64_t static GlyphRegistry.shared.getter()
{
  if (qword_2815A0A40 != -1)
  {
    swift_once();
  }
}

uint64_t GlyphRegistry.categories.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2747BA0EC@<X0>(uint64_t *a1@<X8>)
{
  result = GlyphRegistry.categories.getter();
  *a1 = result;
  return result;
}

uint64_t GlyphRegistry.categories.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

void (*GlyphRegistry.categories.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_2749FA8F4();
  return sub_2747AA744;
}

uint64_t sub_2747BA244(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D78);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return GlyphRegistry.$categories.setter(v4);
}

uint64_t GlyphRegistry.$categories.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D78);
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D88);
  sub_2749FA8E4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*GlyphRegistry.$categories.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D78);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D88);
  sub_2749FA8D4();
  swift_endAccess();
  return sub_2747BA568;
}

void sub_2747BA568(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    GlyphRegistry.$categories.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    GlyphRegistry.$categories.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t GlyphRegistry.init(useSystemGlyphsOnly:useOutlineGlyphsOnly:hiddenCategories:)(char a1, char a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D88);
  OUTLINED_FUNCTION_43();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  v16 = OBJC_IVAR____TtC10WorkflowUI13GlyphRegistry__categories;
  v20[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AD0);
  sub_2749FA8C4();
  (*(v12 + 32))(v3 + v16, v15, v10);
  sub_2749FD0C4();
  v17 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = a1;
  *(v18 + 33) = a2;
  *(v18 + 40) = a3;
  *(v18 + 48) = v3;

  sub_27479930C();

  return v3;
}

uint64_t sub_2747BA81C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a6;
  *(v7 + 24) = a7;
  *(v7 + 41) = a5;
  *(v7 + 40) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  *(v7 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2747BA8C0, 0, 0);
}

uint64_t sub_2747BA8C0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_2747BAA90(*(v0 + 40), *(v0 + 41), *(v0 + 16));
  v4 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  sub_2749FD0A4();

  v5 = sub_2749FD094();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v2;
  v6[5] = v3;
  sub_27479930C();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2747BA9C8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 33);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_1_15(v6);

  return sub_2747BA81C(v7, v8, v9, v2, v3, v5, v4);
}

uint64_t sub_2747BAA90(int a1, int a2, uint64_t a3)
{
  v181 = a3;
  v160 = a2;
  v172 = a1;
  v184 = 0;
  v162 = type metadata accessor for WFGlyphCategory();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v158 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AD8);
  v159 = *(v196 - 8);
  MEMORY[0x28223BE20](v196 - 8);
  v5 = &v157 - v4;
  v190 = sub_2749FCBB4();
  v6 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v189 = (&v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = sub_2749FCBE4();
  v194 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v179 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2749FCB74();
  v193 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v178 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v157 - v12;
  v183 = sub_2749FCB94();
  v14 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v16 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2749FCC24();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BB0);
  v195 = sub_2749FCCB4();
  sub_2749FCC14();
  v21 = sub_2749FCC04();
  v22 = *(v18 + 8);
  v169 = v20;
  v171 = v17;
  v170 = v18 + 8;
  v168 = v22;
  v22(v20, v17);
  v23 = *(v21 + 16);
  v197 = v5;
  v180 = v23;
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    v177 = v21 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v176 = v14 + 16;
    v26 = (v193 + 8);
    v187 = v6 + 8;
    v188 = v6 + 16;
    v163 = (v194 + 8);
    v173 = (v14 + 8);
    v186 = v6;
    v166 = v9;
    v165 = v13;
    v175 = v14;
    v185 = v16;
    v174 = v21;
    v164 = (v193 + 8);
    while (1)
    {
      if (v25 >= *(v21 + 16))
      {
        goto LABEL_120;
      }

      v27 = *(v14 + 72);
      v182 = v25;
      (*(v14 + 16))(v16, v177 + v27 * v25, v183);
      v28 = v26;
      sub_2749FCB84();
      v29 = sub_2749FCB64();
      v31 = v30;
      v194 = *v28;
      v32 = (v194)(v13, v9);
      v33 = v9;
      v198[0] = v29;
      v198[1] = v31;
      MEMORY[0x28223BE20](v32);
      *(&v157 - 2) = v198;
      v34 = v184;
      LOBYTE(v29) = sub_274947DC8();
      v184 = v34;

      if (v29)
      {
        v9 = v33;
        v26 = v28;
        v5 = v197;
      }

      else
      {
        sub_2749FCB84();
        sub_2749FCB64();
        v35 = v194;
        (v194)(v13, v33);
        sub_2749FCB54();
        sub_2749FCBD4();
        sub_2749FCBC4();
        v36 = v169;
        sub_2749FCC14();
        v37 = sub_2749FCBF4();
        v168(v36, v171);
        v193 = *(v37 + 16);
        if (v193)
        {
          v38 = 0;
          v39 = *(v6 + 80);
          v191 = v37;
          v192 = v37 + ((v39 + 32) & ~v39);
          while (v38 < *(v37 + 16))
          {
            v40 = v189;
            v41 = v190;
            (*(v6 + 16))(v189, v192 + *(v6 + 72) * v38, v190);
            v42 = sub_2749FCBA4();
            v44 = v43;
            (*(v6 + 8))(v40, v41);
            v45 = sub_2749FCB44();
            v194 = v46;
            sub_27471F8A4(v24);
            v47 = v195;
            swift_isUniquelyReferenced_nonNull_native();
            v198[0] = v47;
            v48 = sub_274797CC0(v42, v44);
            if (__OFADD__(*(v47 + 16), (v49 & 1) == 0))
            {
              goto LABEL_112;
            }

            v50 = v48;
            v51 = v49;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AE0);
            if (sub_2749FDA84())
            {
              v52 = sub_274797CC0(v42, v44);
              v5 = v197;
              if ((v51 & 1) != (v53 & 1))
              {
                goto LABEL_122;
              }

              v50 = v52;
            }

            else
            {
              v5 = v197;
            }

            v54 = v198[0];
            if (v51)
            {
            }

            else
            {
              *(v198[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
              v55 = (v54[6] + 16 * v50);
              *v55 = v42;
              v55[1] = v44;
              *(v54[7] + 8 * v50) = MEMORY[0x277D84F90];
              v56 = v54[2];
              v57 = __OFADD__(v56, 1);
              v58 = v56 + 1;
              if (v57)
              {
                goto LABEL_119;
              }

              v54[2] = v58;
            }

            v59 = v54[7];
            v60 = *(v59 + 8 * v50);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v59 + 8 * v50) = v60;
            v195 = v54;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_274763850();
              v60 = v65;
              *(v59 + 8 * v50) = v65;
            }

            v62 = *(v60 + 16);
            if (v62 >= *(v60 + 24) >> 1)
            {
              sub_274763850();
              v60 = v66;
              *(v59 + 8 * v50) = v66;
            }

            v37 = v191;
            ++v38;
            *(v60 + 16) = v62 + 1;
            v63 = v60 + 16 * v62;
            v64 = v194;
            *(v63 + 32) = v45;
            *(v63 + 40) = v64;
            v24 = sub_2747BC280;
            v16 = v185;
            v6 = v186;
            if (v193 == v38)
            {
              goto LABEL_25;
            }
          }

          goto LABEL_111;
        }

        v5 = v197;
LABEL_25:

        (*v163)(v179, v167);
        v9 = v166;
        v26 = v164;
        (v35)(v178, v166);
        v13 = v165;
      }

      v67 = v182 + 1;
      (*v173)(v16, v183);
      v25 = v67;
      v14 = v175;
      v21 = v174;
      if (v67 == v180)
      {
        v189 = v24;

        goto LABEL_29;
      }
    }
  }

  v189 = 0;
LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AE8);
  sub_2749F9544();
  v68 = 0;
  do
  {
    v69 = *(&unk_28838FD20 + v68 + 4);
    v190 = v68;
    v192 = v69;
    if ((v172 & 1) == 0)
    {
      v81 = WFGlyphCharactersInSection();
      sub_2747BC360();
      v82 = sub_2749FCF84();

      v83 = sub_27472D918(v82);
      v84 = 0;
      v74 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v83 == v84)
        {
          goto LABEL_71;
        }

        if ((v82 & 0xC000000000000001) != 0)
        {
          v85 = MEMORY[0x277C5F6D0](v84, v82);
        }

        else
        {
          if (v84 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_109;
          }

          v85 = *(v82 + 8 * v84 + 32);
        }

        v86 = v85;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_108;
        }

        v87 = [v85 unsignedIntegerValue];

        if (v87 >> 16)
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274763930();
          v74 = v89;
        }

        v88 = *(v74 + 16);
        if (v88 >= *(v74 + 24) >> 1)
        {
          sub_274763930();
          v74 = v90;
        }

        *(v74 + 16) = v88 + 1;
        *(v74 + 2 * v88 + 32) = v87;
        ++v84;
      }

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
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    if (v160)
    {
      v70 = WFSystemOutlineGlyphCharactersInSection();
      sub_2747BC360();
      v71 = sub_2749FCF84();

      v72 = sub_27472D918(v71);
      v73 = 0;
      v74 = MEMORY[0x277D84F90];
      while (v72 != v73)
      {
        if ((v71 & 0xC000000000000001) != 0)
        {
          v75 = MEMORY[0x277C5F6D0](v73, v71);
        }

        else
        {
          if (v73 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_116;
          }

          v75 = *(v71 + 8 * v73 + 32);
        }

        v76 = v75;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_113;
        }

        v77 = [v75 unsignedIntegerValue];

        if (v77 >> 16)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274763930();
          v74 = v79;
        }

        v78 = *(v74 + 16);
        if (v78 >= *(v74 + 24) >> 1)
        {
          sub_274763930();
          v74 = v80;
        }

        *(v74 + 16) = v78 + 1;
        *(v74 + 2 * v78 + 32) = v77;
        ++v73;
      }
    }

    else
    {
      v91 = WFSystemGlyphCharactersInSection();
      sub_2747BC360();
      v92 = sub_2749FCF84();

      v93 = sub_27472D918(v92);
      v94 = 0;
      v74 = MEMORY[0x277D84F90];
      while (v93 != v94)
      {
        if ((v92 & 0xC000000000000001) != 0)
        {
          v95 = MEMORY[0x277C5F6D0](v94, v92);
        }

        else
        {
          if (v94 >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_115;
          }

          v95 = *(v92 + 8 * v94 + 32);
        }

        v96 = v95;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_114;
        }

        v97 = [v95 unsignedIntegerValue];

        if (v97 >> 16)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274763930();
          v74 = v99;
        }

        v98 = *(v74 + 16);
        if (v98 >= *(v74 + 24) >> 1)
        {
          sub_274763930();
          v74 = v100;
        }

        *(v74 + 16) = v98 + 1;
        *(v74 + 2 * v98 + 32) = v97;
        ++v94;
      }
    }

LABEL_71:

    v101 = v196;
    v194 = *(v74 + 16);
    if (v194)
    {
      v102 = 0;
      v193 = v74 + 32;
      while (1)
      {
        if (v102 >= *(v74 + 16))
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v103 = *(v193 + 2 * v102);
        v104 = WFSystemImageNameForGlyphCharacter();
        if (!v104)
        {
          goto LABEL_91;
        }

        v105 = v104;
        v106 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v108 = v107;

        v109 = sub_2749FCB34();
        if (*(v109 + 16) && (v110 = sub_274797CC0(v106, v108), (v111 & 1) != 0) || (, v109 = sub_2749FCC34(), *(v109 + 16)) && (v110 = sub_274797CC0(v106, v108), (v112 & 1) != 0))
        {
          v113 = (*(v109 + 56) + 16 * v110);
          v106 = *v113;
          v114 = v113[1];

          v108 = v114;
        }

        if (!*(v195 + 16))
        {
          break;
        }

        v115 = sub_274797CC0(v106, v108);
        v117 = v116;

        if ((v117 & 1) == 0)
        {
          goto LABEL_91;
        }

        v118 = *(*(*(v195 + 56) + 8 * v115) + 16);
        if (v118)
        {

          v119 = (v191 + 40);
          do
          {
            v120 = *v119;
            v200 = *(v119 - 1);
            v201 = v120;
            v199 = MEMORY[0x277D84F90];

            v121 = sub_2749F95B4();
            v123 = v122;
            v124 = *v122;
            v125 = swift_isUniquelyReferenced_nonNull_native();
            *v123 = v124;
            if ((v125 & 1) == 0)
            {
              sub_274763930();
              v124 = v127;
              *v123 = v127;
            }

            v126 = *(v124 + 16);
            if (v126 >= *(v124 + 24) >> 1)
            {
              sub_274763930();
              v124 = v128;
              *v123 = v128;
            }

            *(v124 + 16) = v126 + 1;
            *(v124 + 2 * v126 + 32) = v103;
            v121(v198, 0);

            v119 += 2;
            --v118;
            v101 = v196;
          }

          while (v118);

          v5 = v197;
        }

LABEL_96:
        if (++v102 == v194)
        {
          goto LABEL_97;
        }
      }

LABEL_91:
      v129 = WFNameForGlyphSection();
      v130 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v132 = v131;

      v200 = v130;
      v201 = v132;
      v199 = MEMORY[0x277D84F90];
      v133 = sub_2749F95B4();
      v135 = v134;
      v136 = *v134;
      v137 = swift_isUniquelyReferenced_nonNull_native();
      *v135 = v136;
      if ((v137 & 1) == 0)
      {
        sub_274763930();
        v136 = v139;
        *v135 = v139;
      }

      v138 = *(v136 + 16);
      if (v138 >= *(v136 + 24) >> 1)
      {
        sub_274763930();
        v136 = v140;
        *v135 = v140;
      }

      *(v136 + 16) = v138 + 1;
      *(v136 + 2 * v138 + 32) = v103;
      v133(v198, 0);

      goto LABEL_96;
    }

LABEL_97:

    v68 = v190 + 1;
  }

  while (v190 != 2);
  sub_2747BC3A4();
  v141 = sub_2749FD1B4();
  if (!v141)
  {
    (*(v159 + 8))(v5, v101);

    sub_27471F8A4(v189);
    return MEMORY[0x277D84F90];
  }

  v142 = v141;
  v200 = MEMORY[0x277D84F90];
  sub_27476D680();
  v143 = v200;
  sub_2749FD1A4();
  if ((v142 & 0x8000000000000000) == 0)
  {
    v144 = v158;
    do
    {
      v145 = sub_2749FD1F4();
      v148 = *v146;
      v147 = v146[1];

      v145(v198, 0);
      v198[0] = MEMORY[0x277D84FA0];

      v150 = v184;
      v151 = sub_2747B9A90(v149);
      v184 = v150;

      sub_2749F9154();

      v152 = v162;
      v153 = (v144 + *(v162 + 20));
      *v153 = v148;
      v153[1] = v147;
      *(v144 + *(v152 + 24)) = v151;
      v200 = v143;
      v154 = *(v143 + 16);
      if (v154 >= *(v143 + 24) >> 1)
      {
        sub_27476D680();
        v144 = v158;
        v143 = v200;
      }

      *(v143 + 16) = v154 + 1;
      sub_2747BC408(v144, v143 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v154);
      v155 = v197;
      sub_2749FD1C4();
      --v142;
    }

    while (v142);
    (*(v159 + 8))(v155, v101);

    sub_27471F8A4(v189);
    return v143;
  }

LABEL_121:
  __break(1u);
LABEL_122:
  result = sub_2749FDD54();
  __break(1u);
  return result;
}

uint64_t sub_2747BBDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2749FD0A4();
  v5[4] = sub_2749FD094();
  v7 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2747BBE90, v7, v6);
}

uint64_t sub_2747BBE90()
{

  GlyphRegistry.categories.setter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t GlyphRegistry.deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI13GlyphRegistry__categories;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D88);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t GlyphRegistry.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI13GlyphRegistry__categories;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D88);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2747BBFFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for GlyphRegistry()
{
  result = qword_2815A0A30;
  if (!qword_2815A0A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2747BC0A0()
{
  sub_2747BC15C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2747BC15C()
{
  if (!qword_28159E758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968AD0);
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_28159E758);
    }
  }
}

uint64_t sub_2747BC1C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFGlyphCategory();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747BC224(uint64_t a1)
{
  v2 = type metadata accessor for WFGlyphCategory();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2747BC290()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_1_15(v4);

  return sub_2747BBDF8(v5, v6, v7, v3, v2);
}

unint64_t sub_2747BC360()
{
  result = qword_28159E398;
  if (!qword_28159E398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28159E398);
  }

  return result;
}

unint64_t sub_2747BC3A4()
{
  result = qword_280968AF0;
  if (!qword_280968AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968AF0);
  }

  return result;
}

uint64_t sub_2747BC408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFGlyphCategory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747BC46C()
{
  v2 = sub_2747BCF58(v0, &selRef_colorScheme);
  if (v3 >> 60 == 15)
  {
    sub_2749FA0F4();
    v4 = OUTLINED_FUNCTION_0_13();
    return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    v9 = v2;
    v10 = v3;
    sub_2749F8F24();
    swift_allocObject();
    sub_2749F8F14();
    v11 = sub_2749FA0F4();
    sub_2747BD084();
    sub_2749F8F04();
    if (!v1)
    {
      v12 = OUTLINED_FUNCTION_1_16();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    }

    return sub_2747BD018(v9, v10);
  }
}

void WFConfiguredSystemWorkflowAction.smartPickerSelectionIdentifier()(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_2_16();
  if (!v2)
  {
    v6 = [objc_opt_self() defaultDatabase];
    v7 = [v1 workflowIdentifier];
    if (!v7)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v7 = sub_2749FCD64();
    }

    v8 = [v6 referenceForWorkflowID_];

    if (v8)
    {
      sub_2747BCB90(v22);
      memcpy(v20, v22, 0xA9uLL);
      memcpy(v21, v22, 0xA9uLL);
      if (sub_2747BC7C8(v21) != 1)
      {
        v19[0] = v8;
        sub_27477D3E8(v19);
        v13 = v21[19];
        v14 = v21[20];
        v15 = v21[21];
        v16 = v8;
        sub_27477D408(v13, v14, v15);
        v17 = [v1 previewIcon];
        sub_2747BC7EC(v20, &qword_280968AF8);

        v18 = type metadata accessor for SmartShortcutPickerSelectedEntry();
        OUTLINED_FUNCTION_3_20(v18);
        memcpy(a1, v19, 0xB9uLL);
        *(a1 + 192) = v13;
        *(a1 + 200) = v14;
        *(a1 + 208) = v15;
        *(a1 + 216) = v17;
        v9 = OUTLINED_FUNCTION_1_16();
        v12 = v18;
        goto LABEL_10;
      }

      sub_2747BC7EC(v3, &qword_280968A30);
    }

    else
    {
      sub_2747BC7EC(v3, &qword_280968A30);
    }

    type metadata accessor for SmartShortcutPickerSelectedEntry();
    v9 = OUTLINED_FUNCTION_0_13();
LABEL_10:
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_2747BC7C8(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2747BC7EC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WFConfiguredSystemContextualAction.smartPickerSelectionIdentifier()@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
  MEMORY[0x28223BE20](v5 - 8);
  result = OUTLINED_FUNCTION_2_16();
  if (!v2)
  {
    sub_2747BCB90(v37);
    memcpy(v35, v37, 0xA9uLL);
    memcpy(v36, v37, 0xA9uLL);
    if (sub_2747BC7C8(v36) == 1)
    {
      sub_2747BC7EC(v3, &qword_280968A30);
      type metadata accessor for SmartShortcutPickerSelectedEntry();
      v7 = OUTLINED_FUNCTION_0_13();
    }

    else
    {
      v11 = [v1 appShortcutIdentifier];
      if (v11)
      {
        v28 = 0;
        v29 = 0;
        v30 = v36[17];
        v31 = 0;
        v12 = v11;
        v13 = v36[18];
      }

      else
      {
        v14 = [v1 contextualAction];
        v15 = [v14 actionIdentifier];

        v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v30 = v17;

        v12 = v16;
        v13 = sub_27473CEF0([v1 contextualAction]);
        v31 = v36[17];
        v28 = v36[18];
        v29 = v18;
      }

      v38 = v11 != 0;

      v37[192] = v11 != 0;
      memcpy(&v33[7], v36, 0x81uLL);
      v34[0] = v12;
      v34[1] = v30;
      v27 = v13;
      v34[2] = v13;
      v34[3] = v29;
      v34[4] = v31;
      v34[5] = v28;
      LOBYTE(v34[6]) = v11 != 0;
      memcpy(&v34[6] + 1, v33, 0x88uLL);
      sub_274754670(v34);
      v19 = v36[19];
      v20 = v36[20];
      v21 = v12;
      v26 = v12;
      v22 = v36[21];
      v23 = v38;
      sub_27477C094(v21, v30, v27, v29, v31, v28, v38);
      sub_274772B38(v36, &v32);
      sub_27477D408(v19, v20, v22);
      v24 = [v1 previewIcon];
      sub_2747BC7EC(v35, &qword_280968AF8);
      sub_27477CABC(v26, v30, v27, v29, v31, v28, v23);
      v25 = type metadata accessor for SmartShortcutPickerSelectedEntry();
      OUTLINED_FUNCTION_3_20(v25);
      memcpy(a1, v34, 0xB9uLL);
      *(a1 + 192) = v19;
      *(a1 + 200) = v20;
      *(a1 + 208) = v22;
      *(a1 + 216) = v24;
      v7 = OUTLINED_FUNCTION_1_16();
      v10 = v25;
    }

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  return result;
}

void *sub_2747BCB90@<X0>(void *a1@<X8>)
{
  v4 = sub_2747BCF58(v1, &selRef_shortcutsMetadata);
  if (v5 >> 60 == 15)
  {
    sub_2747BCFE0(__src);
    v6 = __src;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    sub_2749F8F24();
    swift_allocObject();
    sub_2749F8F14();
    sub_27477CE84();
    sub_2749F8F04();
    if (v2)
    {

      return sub_2747BD018(v7, v8);
    }

    sub_2747BD018(v7, v8);
    memcpy(v10, __src, 0xA9uLL);
    CGSizeMake(v10);
    v6 = v10;
  }

  return memcpy(a1, v6, 0xA9uLL);
}

void WFConfiguredSystemIntentAction.smartPickerSelectionIdentifier()(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_2_16();
  if (!v2)
  {
    v6 = [v1 appShortcutIdentifier];
    if (v6)
    {
      v7 = v6;
      sub_2747BCB90(v24);
      memcpy(v22, v24, 0xA9uLL);
      memcpy(v23, v24, 0xA9uLL);
      if (sub_2747BC7C8(v23) != 1)
      {
        v18 = v23[18];
        v24[192] = 1;
        memcpy(&v20[7], v23, 0x81uLL);
        v21[0] = v7;
        v21[1] = v23[17];
        v21[2] = v23[18];
        memset(&v21[3], 0, 24);
        LOBYTE(v21[6]) = 1;
        memcpy(&v21[6] + 1, v20, 0x88uLL);
        sub_274754670(v21);
        v12 = v23[19];
        v13 = v23[20];
        v14 = v23[21];

        v15 = v7;
        sub_274772B38(v23, &v19);
        sub_27477D408(v12, v13, v14);
        v16 = [v1 previewIcon];
        sub_2747BC7EC(v22, &qword_280968AF8);

        v17 = type metadata accessor for SmartShortcutPickerSelectedEntry();
        OUTLINED_FUNCTION_3_20(v17);
        memcpy(a1, v21, 0xB9uLL);
        *(a1 + 192) = v12;
        *(a1 + 200) = v13;
        *(a1 + 208) = v14;
        *(a1 + 216) = v16;
        v8 = OUTLINED_FUNCTION_1_16();
        v11 = v17;
        goto LABEL_8;
      }

      sub_2747BC7EC(v3, &qword_280968A30);
    }

    else
    {
      sub_2747BC7EC(v3, &qword_280968A30);
    }

    type metadata accessor for SmartShortcutPickerSelectedEntry();
    v8 = OUTLINED_FUNCTION_0_13();
LABEL_8:
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_2747BCF58(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2749F9094();

  return v4;
}

void sub_2747BCFE0(uint64_t a1)
{
  bzero(a1, 0x90uLL);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 1;
  *(a1 + 168) = 0;
}

uint64_t sub_2747BD018(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2747BD02C(a1, a2);
  }

  return a1;
}

uint64_t sub_2747BD02C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2747BD084()
{
  result = qword_280968B00;
  if (!qword_280968B00)
  {
    sub_2749FA0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968B00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI18WFFolderConfigItemO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2747BD0F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WFFolderConfigSection(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2747BD200()
{
  result = qword_280968B08;
  if (!qword_280968B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968B08);
  }

  return result;
}

uint64_t sub_2747BD254(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      if (a1 != a4 || a2 != a5)
      {
        return sub_2749FDCC4();
      }

      return 1;
    }

    return 0;
  }

  if (a3 == 1)
  {
    if (a6 == 1)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a1 | a2)
  {
    v8 = a6 == 2 && a4 == 1;
    return v8 && !a5;
  }

  return a6 == 2 && !(a5 | a4);
}

double sub_2747BD2E8(char a1)
{
  result = 0.0;
  if (a1)
  {
    return 12.0;
  }

  return result;
}

uint64_t sub_2747BD2FC(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = qword_28159E448;
  v2 = sub_2749FCD64();
  v3 = sub_2749FCD64();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v5;
}

uint64_t sub_2747BD3E4(char a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 0x4034000000000000;
  }
}

uint64_t sub_2747BD3F4()
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v0 = qword_28159E448;
  v1 = sub_2749FCD64();
  v2 = sub_2749FCD64();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v4;
}

uint64_t sub_2747BD52C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x277C5FB60](3);
      return sub_2749FDE24();
    }

    else
    {
      return MEMORY[0x277C5FB60]((a2 | a3) != 0);
    }
  }

  else
  {
    MEMORY[0x277C5FB60](2);

    return sub_2749FCE24();
  }
}

uint64_t sub_2747BD5CC(uint64_t a1, uint64_t a2, char a3)
{
  sub_2749FDDF4();
  sub_2747BD52C(v7, a1, a2, a3);
  return sub_2749FDE44();
}

uint64_t sub_2747BD654()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2749FDDF4();
  sub_2747BD52C(v5, v1, v2, v3);
  return sub_2749FDE44();
}

unint64_t sub_2747BD6CC()
{
  result = qword_280968B10;
  if (!qword_280968B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968B10);
  }

  return result;
}

unint64_t sub_2747BD720(uint64_t a1)
{
  result = sub_274772930();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2747BD748(uint64_t a1)
{
  result = sub_274772E4C();
  *(a1 + 8) = result;
  return result;
}

char *sub_2747BD774(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v67 - v4;
  v5 = type metadata accessor for HomeScreenPreviewIcon();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = OBJC_IVAR____TtC10WorkflowUI21HomeScreenPreviewCell_backgroundImageView;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v1[OBJC_IVAR____TtC10WorkflowUI21HomeScreenPreviewCell_iconState] = a1;
  v7 = type metadata accessor for HomeScreenPreviewCell();
  v71.receiver = v1;
  v71.super_class = v7;

  v8 = objc_msgSendSuper2(&v71, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC10WorkflowUI21HomeScreenPreviewCell_backgroundImageView;
  v10 = *&v8[OBJC_IVAR____TtC10WorkflowUI21HomeScreenPreviewCell_backgroundImageView];
  v11 = v8;
  [v10 setContentMode_];
  [*&v8[v9] setClipsToBounds_];
  v12 = *&v8[v9];
  v13 = v11;
  [v13 addSubview_];
  v14 = [objc_opt_self() effectWithStyle_];
  v15 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v16 = v15;
  v17 = [v16 layer];
  [v17 setCornerRadius_];

  v18 = [v16 layer];
  [v18 setCornerCurve_];

  v19 = [v16 layer];
  [v19 setMasksToBounds_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 addSubview_];
  v20 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v20 setAxis_];
  [v20 setAlignment_];
  [v20 setSpacing_];
  v21 = v20;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 addSubview_];
  type metadata accessor for HomeScreenIconState();
  sub_2747BF0D0();

  sub_2749FC804();
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968B40));
  v69 = sub_2749FADF4();
  [v21 addArrangedSubview_];
  v23 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  v24 = sub_27487F448();
  sub_2748205A0(v24, v25, v23);
  v26 = [objc_opt_self() whiteColor];
  [v23 setTextColor_];

  v27 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v23 setFont_];

  [v23 setTextAlignment_];
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v28 = qword_28159E448;
  v29 = sub_2749FCD64();
  v30 = sub_2749FCD64();

  v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

  v32 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v34 = v33;

  sub_274885CE8(v32, v34, v23);
  [v23 addTarget:v13 action:sel_textDidChange_ forControlEvents:0x20000];

  v35 = v23;
  [v21 addArrangedSubview_];
  v68 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_274A13A40;
  v37 = [v21 centerXAnchor];
  v38 = [v13 centerXAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  *(v36 + 32) = v39;
  v40 = [v21 centerYAnchor];

  v41 = [v13 centerYAnchor];
  v42 = OUTLINED_FUNCTION_1_17(v41, sel_constraintEqualToAnchor_constant_);

  *(v36 + 40) = v42;
  v43 = [v35 widthAnchor];

  v44 = [v43 constraintLessThanOrEqualToConstant_];
  *(v36 + 48) = v44;
  v45 = [v16 leadingAnchor];
  v46 = [v35 leadingAnchor];

  v48 = OUTLINED_FUNCTION_1_17(v47, sel_constraintEqualToAnchor_constant_);
  *(v36 + 56) = v48;
  v49 = [v16 trailingAnchor];
  v50 = [v35 trailingAnchor];

  v52 = OUTLINED_FUNCTION_1_17(v51, sel_constraintEqualToAnchor_constant_);
  *(v36 + 64) = v52;
  v53 = [v16 topAnchor];
  v54 = [v35 topAnchor];

  v56 = OUTLINED_FUNCTION_1_17(v55, sel_constraintEqualToAnchor_constant_);
  *(v36 + 72) = v56;
  v57 = [v16 bottomAnchor];

  v58 = [v35 bottomAnchor];
  v60 = OUTLINED_FUNCTION_1_17(v59, sel_constraintEqualToAnchor_constant_);

  *(v36 + 80) = v60;
  sub_27471CF08(0, &qword_280968040);
  v61 = sub_2749FCF74();

  [v68 activateConstraints_];

  v62 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v62);
  sub_2749FD0A4();
  v63 = sub_2749FD094();
  v64 = swift_allocObject();
  v65 = MEMORY[0x277D85700];
  v64[2] = v63;
  v64[3] = v65;
  v64[4] = v13;
  sub_27479930C();

  return v13;
}

uint64_t sub_2747BE098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2749FD0A4();
  v4[4] = sub_2749FD094();
  v6 = sub_2749FD044();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_2747BE134, v6, v5);
}

uint64_t sub_2747BE134()
{
  OUTLINED_FUNCTION_79();
  v1 = [*(v0 + 16) traitCollection];
  [v1 userInterfaceStyle];

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2747BE1F0;

  return sub_2747BE68C();
}

uint64_t sub_2747BE1F0()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_59_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_59_1();
  *v5 = v4;
  *(v7 + 64) = v6;

  v8 = *(v1 + 48);
  v9 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2747BE30C, v9, v8);
}

uint64_t sub_2747BE30C()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 64);
  if (v1 && (v2 = [*(v0 + 64) platformImage], *(v0 + 72) = v2, v1, v2))
  {

    return MEMORY[0x2822009F8](sub_2747BE3D0, 0, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_2747BE3D0()
{
  OUTLINED_FUNCTION_79();
  *(v0 + 80) = sub_2749FD094();
  v2 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2747BE458, v2, v1);
}

uint64_t sub_2747BE458()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[9];
  v2 = v0[2];

  [*(v2 + OBJC_IVAR____TtC10WorkflowUI21HomeScreenPreviewCell_backgroundImageView) setImage_];
  v3 = v0[5];
  v4 = v0[6];

  return MEMORY[0x2822009F8](sub_2747BE4D8, v3, v4);
}

uint64_t sub_2747BE4D8()
{
  OUTLINED_FUNCTION_79();

  v1 = *(v0 + 8);

  return v1();
}

id sub_2747BE540()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HomeScreenPreviewCell();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUI21HomeScreenPreviewCell_backgroundImageView];
  [v0 bounds];
  return [v1 setFrame_];
}

uint64_t sub_2747BE5F0(void *a1)
{
  result = sub_2749760F0(a1);
  if (v2)
  {
    return sub_27487F4E0(result, v2);
  }

  return result;
}

uint64_t sub_2747BE68C()
{
  OUTLINED_FUNCTION_79();
  v0[19] = v1;
  v2 = sub_2749FA4E4();
  v0[20] = v2;
  v0[21] = *(v2 - 8);
  v0[22] = swift_task_alloc();
  sub_2749FD0A4();
  v0[23] = sub_2749FD094();
  v4 = sub_2749FD044();
  v0[24] = v4;
  v0[25] = v3;

  return MEMORY[0x2822009F8](sub_2747BE77C, v4, v3);
}

uint64_t sub_2747BE77C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v1[19];
  v4 = [objc_allocWithZone(MEMORY[0x277D3EA00]) init];
  v1[26] = v4;
  if (v3 == 2)
  {
    v5 = 21;
  }

  else
  {
    v5 = 37;
  }

  v6 = objc_allocWithZone(MEMORY[0x277D3E948]);
  v7 = sub_274885934(1.0, 0, 0, 1, 1, v5, 1);
  v1[27] = v7;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_2747BE910;
  v8 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968B28);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_274882C00;
  v1[13] = &block_descriptor_8;
  v1[14] = v8;
  [v4 fetchPosterFocusSnapshotsWithRequest:v7 completion:v1 + 10];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2747BE910()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_59_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 224) = v4;
  v5 = v3[25];
  v6 = v3[24];
  if (v4)
  {
    v7 = sub_2747BECF8;
  }

  else
  {
    v7 = sub_2747BEA38;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2747BEA38()
{

  v1 = *(v0 + 144);
  v2 = [v1 snapshots];
  sub_27471CF08(0, &qword_280968B30);
  v3 = sub_2749FCF84();

  if (!sub_27472D918(v3))
  {
    v20 = *(v0 + 216);

LABEL_12:

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  sub_2747B2790(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277C5F6D0](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 surface];

  if (!v6)
  {
    v20 = *(v0 + 216);
    goto LABEL_12;
  }

  v7 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v8 = v6;
  v9 = [v7 initWithIOSurface_];
  v10 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  [v9 extent];
  v11 = [v10 createCGImage:v9 fromRect:?];
  if (!v11)
  {
    v24 = *(v0 + 208);
    v23 = *(v0 + 216);

    goto LABEL_13;
  }

  v12 = v11;
  v13 = sub_2749FCD64();
  v14 = IOSurfaceCopyValue(v8, v13);

  v15 = 1.0;
  if (v14 && ([v14 respondsToSelector_] & 1) != 0)
  {
    [v14 doubleValue];
    v15 = v16;
  }

  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v19 = [objc_allocWithZone(MEMORY[0x277D79FC8]) initWithCGImage:v12 scale:1 orientation:v15];

  swift_unknownObjectRelease();
LABEL_14:

  v21 = *(v0 + 8);

  return v21(v19);
}

uint64_t sub_2747BECF8()
{
  v1 = v0[28];

  swift_willThrow();
  sub_2749FA3D4();
  v2 = v1;
  v3 = sub_2749FA4D4();
  v4 = sub_2749FD2C4();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_274719000, v3, v4, "Failed to fetch current lock screen poster snapshot with error: %@", v9, 0xCu);
    sub_274793F58(v10);
    MEMORY[0x277C61040](v10, -1, -1);
    MEMORY[0x277C61040](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[21] + 8))(v0[22], v0[20]);

  v13 = v0[1];

  return v13(0);
}

void sub_2747BEEA8()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI21HomeScreenPreviewCell_backgroundImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  sub_2749FDAE4();
  __break(1u);
}

void sub_2747BEF44()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI21HomeScreenPreviewCell_backgroundImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  sub_2749FDAE4();
  __break(1u);
}

uint64_t sub_2747BEFE4()
{
}

id sub_2747BF024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeScreenPreviewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2747BF0D0()
{
  result = qword_280968B38;
  if (!qword_280968B38)
  {
    type metadata accessor for HomeScreenIconState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968B38);
  }

  return result;
}

uint64_t sub_2747BF128(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2747BF1DC;

  return sub_2747BE098(a1, v4, v5, v6);
}

uint64_t sub_2747BF1DC()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_59_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

id sub_2747BF2D8()
{
  OUTLINED_FUNCTION_1_18();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconTypeSegmentedControlCell.SegmentedControl();
  return OUTLINED_FUNCTION_3_21(&v2, sel_initWithFrame_);
}

id sub_2747BF344(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for IconTypeSegmentedControlCell.SegmentedControl();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2747BF3D4(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2749FCF74();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for IconTypeSegmentedControlCell.SegmentedControl();
  v3 = objc_msgSendSuper2(&v5, sel_initWithItems_, v2);

  return v3;
}

uint64_t sub_2747BF4B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2747BF524()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2749FA914();
}

char *sub_2747BF594()
{
  OUTLINED_FUNCTION_1_18();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B180);
  MEMORY[0x28223BE20](v1 - 8);
  v77 = &v68 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968B80);
  OUTLINED_FUNCTION_43();
  v76 = v3;
  MEMORY[0x28223BE20](v4);
  v75 = &v68 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968B88);
  OUTLINED_FUNCTION_43();
  v80 = v6;
  MEMORY[0x28223BE20](v7);
  v79 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968B78);
  OUTLINED_FUNCTION_43();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  v15 = OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell_segmentedControl;
  type metadata accessor for IconTypeSegmentedControlCell.SegmentedControl();
  *&v0[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v0[OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell_segmentedControlCancellable] = 0;
  v16 = OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell__selectedIconType;
  LOBYTE(v82) = 1;
  sub_2749FA8C4();
  v17 = *(v11 + 32);
  v74 = v9;
  v17(&v0[v16], v14, v9);
  v18 = type metadata accessor for IconTypeSegmentedControlCell();
  v83.receiver = v0;
  v83.super_class = v18;
  v19 = OUTLINED_FUNCTION_3_21(&v83, sel_initWithFrame_);
  v20 = OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell_segmentedControl;
  v21 = *&v19[OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell_segmentedControl];
  v22 = v19;
  v23 = v21;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v24 = qword_28159E448;
  v25 = sub_2749FCD64();
  v26 = sub_2749FCD64();

  v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

  v28 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v30 = v29;

  sub_2747C05C4(v28, v30, 0, 0, v23);
  v31 = *&v19[v20];
  sub_2749FCE14();
  v32 = sub_2749FCD64();
  v33 = sub_2749FCD64();

  v34 = [v24 localizedStringForKey:v32 value:v33 table:0];

  v35 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v37 = v36;

  sub_2747C05C4(v35, v37, 1, 0, v31);
  [v22 addSubview_];
  v70 = objc_opt_self();
  v69 = *MEMORY[0x277D76968];
  v38 = [v70 preferredFontForTextStyle_];
  v71 = v22;
  v39 = v38;
  v40 = *&v19[v20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B100);
  inited = swift_initStackObject();
  v68 = xmmword_274A0EF10;
  *(inited + 16) = xmmword_274A0EF10;
  v42 = v19;
  v43 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v44 = sub_27471CF08(0, &qword_280968B90);
  *(inited + 64) = v44;
  *(inited + 40) = v39;
  _s3__C3KeyVMa_0(0);
  sub_2747C0640();
  v45 = v43;
  v46 = v40;
  v47 = v39;
  v48 = sub_2749FCCB4();
  sub_2747C0698(v48, 0, v46);

  v73 = v42;
  v72 = v20;
  v49 = *&v42[v20];
  v50 = v47;
  v51 = swift_initStackObject();
  *(v51 + 16) = v68;
  *(v51 + 32) = v45;
  v52 = *MEMORY[0x277D74410];
  v53 = v49;
  v54 = [v70 _preferredFontForTextStyle_weight_];
  *(v51 + 64) = v44;
  if (!v54)
  {
    v54 = v50;
  }

  *(v51 + 40) = v54;
  v55 = sub_2749FCCB4();
  sub_2747C0698(v55, 4, v53);

  v56 = v71;
  swift_beginAccess();
  v57 = v75;
  sub_2749FA8D4();
  swift_endAccess();
  sub_27471CF08(0, &qword_28159E4E0);
  v58 = sub_2749FD404();
  v82 = v58;
  v59 = sub_2749FD3E4();
  v60 = v77;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v59);
  sub_27472AB6C(&qword_280968B98, &qword_280968B80);
  sub_27477ACFC();
  v61 = v79;
  v62 = v78;
  sub_2749FA954();
  sub_2747C0734(v60);

  (*(v76 + 8))(v57, v62);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_27472AB6C(&qword_280968BA0, &qword_280968B88);
  v63 = v56;
  v64 = v81;
  v65 = sub_2749FA974();

  (*(v80 + 8))(v61, v64);
  *&v63[OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell_segmentedControlCancellable] = v65;

  v66 = *&v73[v72];
  [v66 addTarget:v63 action:sel_segmentedControlValueDidChanged forControlEvents:4096];

  return v63;
}

void sub_2747BFE14(_BYTE *a1)
{
  if (*a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v2 = Strong;
    v3 = 1;
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      return;
    }

    v2 = v4;
    v3 = 0;
  }

  v5 = *&v2[OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell_segmentedControl];

  [v5 setSelectedSegmentIndex_];
}

id sub_2747BFEF4()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for IconTypeSegmentedControlCell();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell_segmentedControl];
  [v0 bounds];
  return [v1 setFrame_];
}

uint64_t sub_2747BFFA8()
{
  v1 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell_segmentedControl) selectedSegmentIndex] > 1)
  {
    sub_2749FA3D4();
    v8 = sub_2749FA4D4();
    v9 = sub_2749FD2C4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_274719000, v8, v9, "Invalid segmented control selection in Add to Home Screen view.", v10, 2u);
      MEMORY[0x277C61040](v10, -1, -1);
    }

    return (*(v3 + 8))(v6, v1);
  }

  else
  {

    return sub_2747BF524();
  }
}

void sub_2747C0174()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968B78);
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell_segmentedControl;
  type metadata accessor for IconTypeSegmentedControlCell.SegmentedControl();
  *(v0 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell_segmentedControlCancellable) = 0;
  v8 = OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell__selectedIconType;
  v9[15] = 1;
  sub_2749FA8C4();
  (*(v3 + 32))(v0 + v8, v6, v1);
  sub_2749FDAE4();
  __break(1u);
}

uint64_t sub_2747C02EC()
{

  v1 = OBJC_IVAR____TtC10WorkflowUI28IconTypeSegmentedControlCell__selectedIconType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968B78);
  OUTLINED_FUNCTION_1_2();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id sub_2747C0390(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for IconTypeSegmentedControlCell()
{
  result = qword_280968B60;
  if (!qword_280968B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2747C04A8()
{
  sub_2747C0550();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2747C0550()
{
  if (!qword_280968B70)
  {
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_280968B70);
    }
  }
}

void sub_2747C05C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_2749FCD64();

  [a5 insertSegmentWithTitle:v8 atIndex:a3 animated:a4 & 1];
}

unint64_t sub_2747C0640()
{
  result = qword_28159E480;
  if (!qword_28159E480)
  {
    _s3__C3KeyVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E480);
  }

  return result;
}

void sub_2747C0698(uint64_t a1, uint64_t a2, void *a3)
{
  _s3__C3KeyVMa_0(0);
  sub_2747C0640();
  v5 = sub_2749FCC94();

  [a3 setTitleTextAttributes:v5 forState:a2];
}

uint64_t sub_2747C0734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AddToHomeScreenCollectionViewController.reuseIdentifier.getter()
{
  v0 = sub_2749FDC74();
  MEMORY[0x277C5EBC0](v0);

  return 0x6564496573756572;
}

uint64_t sub_2747C0824@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C38);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController____lazy_storage___colorSchemeBinding;
  swift_beginAccess();
  sub_2747B97A0(v2 + v10, v9, &qword_280968C38);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28);
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) != 1)
  {
    return sub_2747C7730(v9, a1);
  }

  sub_27472ECBC(v9, &qword_280968C38);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2749FD0A4();

  v13 = sub_2749FD094();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v16 = v15;
  v14[4] = v12;

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v18 = sub_2749FD094();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v16;
  v19[4] = v17;

  sub_2749F9EB4();
  sub_2749FC6F4();
  sub_2747B97A0(a1, v7, &qword_280968C28);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
  swift_beginAccess();
  sub_2747C76C0(v7, v2 + v10);
  return swift_endAccess();
}

uint64_t sub_2747C0ADC@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;

    sub_27487F7A4(v4);

    v7 = sub_2749F9EB4();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
    return (*(*(v7 - 8) + 32))(a1, v4, v7);
  }

  else
  {
    v9 = sub_2749F9EB4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
    *a1 = [objc_opt_self() clearColor];
    (*(*(v9 - 8) + 104))(a1, *MEMORY[0x277D7D378], v9);
    result = __swift_getEnumTagSinglePayload(v4, 1, v9);
    if (result != 1)
    {
      return sub_27472ECBC(v4, &qword_280968D10);
    }
  }

  return result;
}

uint64_t sub_2747C0CB0(uint64_t a1)
{
  v2 = sub_2749F9EB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;

    (*(v3 + 16))(v5, a1, v2);
    sub_27487F88C(v5);
  }

  return result;
}

void sub_2747C0DD0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = v2 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController____lazy_storage___characterBinding;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28);
  OUTLINED_FUNCTION_88_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_glyphCache;
  sub_2749F9DB4();
  OUTLINED_FUNCTION_132();
  *(v2 + v11) = OUTLINED_FUNCTION_21_7();
  v12 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_glyphRegistry;
  type metadata accessor for GlyphRegistry();
  OUTLINED_FUNCTION_132();
  *(v2 + v12) = GlyphRegistry.init(useSystemGlyphsOnly:useOutlineGlyphsOnly:hiddenCategories:)(1, 0, &unk_28838F7F8);
  *(v2 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_dataSource) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_previewCellHasAppeared) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_registryObserver) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_model) = a1;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_viewModel) = a2;
  v53 = ObjectType;

  OUTLINED_FUNCTION_24();
  v15 = objc_msgSendSuper2(v13, v14);
  v16 = sub_2747C138C();
  v17 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v16 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  [v15 setCollectionView_];
  v18 = [v15 collectionView];
  if (!v18)
  {
    __break(1u);
    goto LABEL_12;
  }

  v19 = v18;
  v20 = *&v15[OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_glyphRegistry];
  OUTLINED_FUNCTION_86();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = objc_allocWithZone(_s10DataSourceCMa(0));

  v22 = v15;

  v23 = sub_27495F5A4(v19, a1, a2, v20);
  v24 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_dataSource;
  swift_beginAccess();
  v25 = *&v22[v24];
  *&v22[v24] = v23;
  v26 = v23;

  OUTLINED_FUNCTION_86();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2749FA6E4();

  v27 = *&v22[v24];
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v27 + qword_280970C48 + 8) = &off_2820B3488;
  swift_unknownObjectWeakAssign();
  v28 = OUTLINED_FUNCTION_25_3();
  if (!v28)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v29 = v28;
  [v28 setDataSource_];

  v30 = OUTLINED_FUNCTION_25_3();
  if (!v30)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v31 = v30;
  [v30 setDelegate_];

  v32 = OUTLINED_FUNCTION_25_3();
  if (!v32)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v33 = v32;
  v34 = [objc_opt_self() secondarySystemBackgroundColor];
  [v33 setBackgroundColor_];

  v35 = OUTLINED_FUNCTION_25_3();
  if (!v35)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = v35;
  sub_27471CF08(0, &qword_280968C40);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  static AddToHomeScreenCollectionViewController.reuseIdentifier.getter();
  v38 = sub_2749FCD64();

  [v36 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v38];

  v39 = OUTLINED_FUNCTION_25_3();
  if (!v39)
  {
LABEL_17:
    __break(1u);
    return;
  }

  type metadata accessor for AddToHomeScreenCollectionViewController.CategoryTitleView();
  v40 = swift_getObjCClassFromMetadata();
  v41 = OUTLINED_FUNCTION_24_6();
  sub_2747C247C(v41, v42);
  v43 = sub_2749FCD64();

  v44 = OUTLINED_FUNCTION_18_9();
  sub_2747C247C(v44, v45);
  v46 = sub_2749FCD64();

  [v39 registerClass:v40 forSupplementaryViewOfKind:v43 withReuseIdentifier:v46];

  sub_2747C24F4();
  sub_2747C2558();
  sub_2747C271C();
  sub_2747C2780();
  sub_2747C27E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C48);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_274A0EF10;
  v48 = sub_2749FA5E4();
  v49 = MEMORY[0x277D74BF0];
  *(v47 + 32) = v48;
  *(v47 + 40) = v49;
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v53;
  sub_2749FD394();
  swift_unknownObjectRelease();

  v50 = *&v22[v24];
  if (v50)
  {
    v51 = v50;
    v52 = OUTLINED_FUNCTION_59_0();
    sub_27495E314(v52, 0);
  }
}

id sub_2747C138C()
{
  OUTLINED_FUNCTION_86();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = objc_allocWithZone(MEMORY[0x277D752B8]);
  v2 = sub_2747E2930(sub_2747C77A0, v0);
  type metadata accessor for AddToHomeScreenCollectionViewController.RoundedBackgroundView();
  swift_getObjCClassFromMetadata();
  v3 = v2;
  sub_2747C247C(0x6564496573756572, 0xEF7265696669746ELL);
  v4 = sub_2749FCD64();

  v5 = OUTLINED_FUNCTION_11_8();
  [v5 v6];

  type metadata accessor for AddToHomeScreenCollectionViewController.TopRoundedBackgroundView();
  swift_getObjCClassFromMetadata();
  OUTLINED_FUNCTION_20_7();
  v7 = sub_2749FCD64();

  v8 = OUTLINED_FUNCTION_11_8();
  [v8 v9];

  type metadata accessor for AddToHomeScreenCollectionViewController.BottomRoundedBackgroundView();
  swift_getObjCClassFromMetadata();
  OUTLINED_FUNCTION_20_7();
  v10 = sub_2749FCD64();

  v11 = OUTLINED_FUNCTION_11_8();
  [v11 v12];

  type metadata accessor for AddToHomeScreenCollectionViewController.RectangularBackgroundView();
  swift_getObjCClassFromMetadata();
  OUTLINED_FUNCTION_20_7();
  v13 = sub_2749FCD64();

  v14 = OUTLINED_FUNCTION_11_8();
  [v14 v15];

  return v3;
}

id sub_2747C1520(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  v7 = Strong;
  v8 = sub_2747C15C0(a1, a2, a3);

  return v8;
}

id sub_2747C15C0(void *a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C50);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v42 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C58);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C60);
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C68);
  v43 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = _s13RowIdentifierOMa(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AddToHomeScreenCollectionViewController.reuseIdentifier.getter();
  v16 = sub_2749FCD64();

  v17 = sub_2749F9224();
  v18 = [a1 dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:v17];

  sub_2747C71FC(v52, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BC8);
      MEMORY[0x28223BE20](v26);
      *(&v42 - 8) = v27;
      *(&v42 - 14) = v28;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C78);
      v55 = sub_27472AB6C(&qword_280968C80, &qword_280968C78);
      __swift_allocate_boxed_opaque_existential_1(v53);
      sub_2747C726C();
      sub_2749FB8F4();
      MEMORY[0x277C5F210](v53);
      sub_27472ECBC(v15, &qword_2809707E0);
      return v18;
    case 2:
      v23 = *(v51 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_model);
      v24 = type metadata accessor for PreviewConfiguration();
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      v54 = v24;
      v55 = sub_2747C75FC(&qword_280968D08, type metadata accessor for PreviewConfiguration);
      v53[0] = v25;

      goto LABEL_11;
    case 3:
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *(&v42 - 2) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968CE8);
      sub_2747C7514();
      sub_2749FB8F4();
      sub_2749FBC64();
      v54 = v10;
      v55 = sub_27472AB6C(&qword_280968D00, &qword_280968C68);
      __swift_allocate_boxed_opaque_existential_1(v53);
      sub_2749FB8E4();
      (*(v43 + 8))(v12, v10);
      goto LABEL_11;
    case 4:
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *(&v42 - 2) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C98);
      sub_2747C72C8();
      v21 = v45;
      sub_2749FB8F4();
      sub_2749FBC64();
      v22 = v48;
      v54 = v48;
      v55 = sub_27472AB6C(&qword_280968CD0, &qword_280968C58);
      __swift_allocate_boxed_opaque_existential_1(v53);
      sub_2749FB8E4();
      (*(v46 + 8))(v21, v22);
      goto LABEL_11;
    case 5:
      v29 = *(*(v51 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_viewModel) + 24);

      sub_2749FCE14();
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v30 = qword_28159E448;
      v31 = sub_2749FCD64();
      v32 = sub_2749FCD64();

      v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

      v34 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v36 = v35;

      v37 = type metadata accessor for GlyphSearchConfiguration();
      v38 = swift_allocObject();
      v38[2] = v29;
      v38[3] = v34;
      v38[4] = v36;
      v54 = v37;
      v55 = sub_2747C75FC(&qword_280968C90, type metadata accessor for GlyphSearchConfiguration);
      v53[0] = v38;
      goto LABEL_11;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F68);
      sub_27478081C();
      v39 = v47;
      sub_2749FB8F4();
      sub_2749FBC64();
      v40 = v50;
      v54 = v50;
      v55 = sub_27472AB6C(&qword_280968C70, &qword_280968C50);
      __swift_allocate_boxed_opaque_existential_1(v53);
      sub_2749FB8E4();
      (*(v49 + 8))(v39, v40);
LABEL_11:
      MEMORY[0x277C5F210](v53);
      break;
    default:
      v20 = *v15;
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *(&v42 - 16) = v20;
      *(&v42 - 1) = v18;
      sub_2747C74B0();
      sub_2749FB8F4();
      sub_2749FBC64();
      v54 = v7;
      v55 = sub_27472AB6C(&qword_280968CE0, &qword_280968C60);
      __swift_allocate_boxed_opaque_existential_1(v53);
      sub_2749FB8E4();
      (*(v44 + 8))(v9, v7);
      MEMORY[0x277C5F210](v53);
      *(swift_allocObject() + 16) = v20;
      sub_2749FD4D4();
      break;
  }

  return v18;
}

uint64_t sub_2747C1F88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = sub_2747C2020(a1, a2, a3, a4);

  return v10;
}

uint64_t sub_2747C2020(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v7 = sub_2749FA4E4();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BB8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v35 = type metadata accessor for WFGlyphCategory();
  MEMORY[0x28223BE20](v35);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AddToHomeScreenCollectionViewController.CategoryTitleView();
  sub_2747C247C(0x4B746E656D656C65, 0xEB00000000646E69);
  v13 = sub_2749FCD64();

  sub_2747C247C(0x6564496573756572, 0xEF7265696669746ELL);
  v14 = sub_2749FCD64();

  v39 = a4;
  v15 = sub_2749F9224();
  v16 = [a1 dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:v14 forIndexPath:v15];

  if (sub_2747C247C(0x4B746E656D656C65, 0xEB00000000646E69) == a2 && v17 == v41)
  {
  }

  else
  {
    v19 = sub_2749FDCC4();

    if ((v19 & 1) == 0)
    {

      return 0;
    }
  }

  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    return v16;
  }

  v21 = v20;
  v22 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_dataSource;
  v23 = v40;
  result = swift_beginAccess();
  v25 = *(v23 + v22);
  if (v25)
  {
    v16 = v16;
    v26 = v25;
    sub_2749F9274();
    sub_2749FA714();

    v27 = _s11SectionTypeOMa(0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v27) == 1)
    {
      sub_27472ECBC(v11, &qword_280968BB8);
    }

    else
    {
      if (!__swift_getEnumTagSinglePayload(v11, 5, v35))
      {

        v32 = v34;
        sub_2747C71A0(v11, v34);
        sub_2747C3314();
        sub_2747C7650(v32, type metadata accessor for WFGlyphCategory);
        return v21;
      }

      sub_2747C7650(v11, _s11SectionTypeOMa);
    }

    v28 = v36;
    sub_2749FA3D4();
    v29 = sub_2749FA4D4();
    v30 = sub_2749FD2D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_274719000, v29, v30, "Unable to get category", v31, 2u);
      MEMORY[0x277C61040](v31, -1, -1);
    }

    (*(v37 + 8))(v28, v38);
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2747C247C(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v5 = sub_2749FCDC4();

  MEMORY[0x277C5EBC0](a1, a2);

  return v5;
}

uint64_t sub_2747C2558()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D78);
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967D88);
  sub_2749FA8D4();
  swift_endAccess();

  OUTLINED_FUNCTION_86();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_27472AB6C(&qword_280967D90, &qword_280967D78);
  v8 = sub_2749FA974();

  (*(v4 + 8))(v7, v2);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_registryObserver) = v8;
}

void sub_2747C2848(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_dataSource;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3)
  {
    v4 = v3;
    sub_27495E314(0, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_2747C28B0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_dataSource;
    swift_beginAccess();
    v5 = *&v3[v4];
    if (v5)
    {
      v6 = v5;

      v3 = v6;
      sub_27495E314(v1, 0);
    }
  }
}

__n128 sub_2747C294C@<Q0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ModePickerView();
  type metadata accessor for HomeScreenIconState();
  sub_2747C75FC(&qword_280968B38, type metadata accessor for HomeScreenIconState);

  sub_2749FC804();
  v2 = [objc_opt_self() systemBackgroundColor];
  v3 = sub_2749FC3E4();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968CE8) + 36));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968CC8);
  v6 = (v4 + *(v5 + 52));
  v7 = *(sub_2749FAFC4() + 20);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_2749FB584();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = result;
  *v4 = v3;
  *(v4 + *(v5 + 56)) = 256;
  return result;
}

uint64_t sub_2747C2AF4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  v10[16] = a3;
  v11 = a2;
  sub_2747C74B0();
  sub_2749FB8F4();
  sub_2749FBC64();
  v12[3] = v5;
  v12[4] = sub_27472AB6C(&qword_280968CE0, &qword_280968C60);
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_2749FB8E4();
  (*(v6 + 8))(v8, v5);
  return MEMORY[0x277C5F210](v12);
}

uint64_t sub_2747C2C74@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  result = sub_2749FA554();
  *a2 = a1;
  a2[1] = result & 1;
  return result;
}

__n128 sub_2747C2CB4@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IconColorSchemePickerView(0);
  MEMORY[0x28223BE20](v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2747C0824(v4);
  *&v4[v2[5]] = sub_27487FA9C();
  *&v4[v2[6]] = 0x4030000000000000;
  *&v4[v2[7]] = 6;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v5 = qword_28159E448;
  v6 = sub_2749FCD64();
  v7 = sub_2749FCD64();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v11 = v10;

  v25[0] = v9;
  v25[1] = v11;
  sub_2747C75FC(&qword_280968CB8, type metadata accessor for IconColorSchemePickerView);
  sub_27475D0D0();
  sub_2749FC0F4();

  sub_2747C7650(v4, type metadata accessor for IconColorSchemePickerView);
  v12 = [objc_opt_self() systemBackgroundColor];
  v13 = sub_2749FC3E4();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C98) + 36));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968CC8);
  v16 = (v14 + *(v15 + 52));
  v17 = *(sub_2749FAFC4() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_2749FB584();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  __asm { FMOV            V0.2D, #16.0 }

  *v16 = result;
  *v14 = v13;
  *(v14 + *(v15 + 56)) = 256;
  return result;
}

double sub_2747C2F90@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35[-v3];
  v5 = sub_2749FBE14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v9 = qword_28159E448;
  v10 = sub_2749FCD64();
  v11 = sub_2749FCD64();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v15 = v14;

  v36 = v13;
  v37 = v15;
  sub_27475D0D0();
  v16 = sub_2749FBEE4();
  v18 = v17;
  LOBYTE(v10) = v19;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0A68], v5);
  v20 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v20);
  sub_2749FBD44();
  sub_2749FBD74();
  sub_27472ECBC(v4, &unk_28096C0A0);
  (*(v6 + 8))(v8, v5);
  v21 = sub_2749FBEC4();
  v23 = v22;
  v25 = v24;

  sub_27477656C(v16, v18, v10 & 1);

  v26 = [objc_opt_self() tertiaryLabelColor];
  v36 = sub_2749FC3E4();
  v27 = sub_2749FBE94();
  v29 = v28;
  LOBYTE(v10) = v30;
  v32 = v31;
  sub_27477656C(v21, v23, v25 & 1);

  v33 = sub_2749FBCC4();
  *a1 = v27;
  *(a1 + 8) = v29;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v33;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  return result;
}

void sub_2747C3314()
{
  v1 = *(v0 + OBJC_IVAR____TtCC10WorkflowUI39AddToHomeScreenCollectionViewController17CategoryTitleView_labelView);
  type metadata accessor for WFGlyphCategory();
  v2 = sub_2749FCD64();
  [v1 setText_];
}

uint64_t (*sub_2747C33B8())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_2747C6FF0;
}

uint64_t sub_2747C3414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_2749FD0A4();
  *(v4 + 72) = sub_2749FD094();
  v6 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2747C34AC, v6, v5);
}

uint64_t sub_2747C34AC()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_dataSource;
    OUTLINED_FUNCTION_24();
    swift_beginAccess();
    v3 = *&v2[v1];
    if (v3)
    {
      v4 = v3;
      v5 = OUTLINED_FUNCTION_59_0();
      sub_27495E314(v5, 0);
    }

    sub_2747C24F4();
  }

  OUTLINED_FUNCTION_48_0();

  return v6();
}

uint64_t sub_2747C3564()
{

  sub_274795BF8();
}

uint64_t (*sub_2747C35BC())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_2747C6F14;
}

uint64_t sub_2747C3618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_2749FD0A4();
  *(v4 + 72) = sub_2749FD094();
  v6 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2747C36B0, v6, v5);
}

uint64_t sub_2747C36B0()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_dataSource;
    OUTLINED_FUNCTION_24();
    swift_beginAccess();
    v3 = *&v2[v1];
    if (v3)
    {
      v4 = v3;
      v5 = OUTLINED_FUNCTION_59_0();
      sub_27495E314(v5, 0);
    }

    sub_2747C271C();
  }

  OUTLINED_FUNCTION_48_0();

  return v6();
}

uint64_t sub_2747C3768()
{

  sub_274795AA4();
}

uint64_t (*sub_2747C37B4())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_2747C6E40;
}

uint64_t sub_2747C3810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_2749FD0A4();
  *(v4 + 72) = sub_2749FD094();
  v6 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2747C38A8, v6, v5);
}

uint64_t sub_2747C38A8()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_dataSource;
    OUTLINED_FUNCTION_24();
    swift_beginAccess();
    v3 = *&v2[v1];
    if (v3)
    {
      v4 = v3;
      v5 = OUTLINED_FUNCTION_59_0();
      sub_27495E314(v5, 1);
    }

    sub_2747C2780();
  }

  OUTLINED_FUNCTION_48_0();

  return v6();
}

uint64_t sub_2747C3960()
{
  v0 = sub_27487F5DC();
  v3 = v2 & 1;

  return sub_2747C6E20(v0, v1, v3);
}

uint64_t (*sub_2747C39A0())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_2747C6D5C;
}

uint64_t sub_2747C39FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  v1 = OUTLINED_FUNCTION_34(v0);
  MEMORY[0x28223BE20](v1);
  sub_2749FD0E4();
  OUTLINED_FUNCTION_88_2();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_86();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_2749FD0A4();

  v8 = sub_2749FD094();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;

  sub_27479930C();
}

uint64_t sub_2747C3B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_2749FD0A4();
  *(v4 + 72) = sub_2749FD094();
  v6 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2747C3BD8, v6, v5);
}

uint64_t sub_2747C3BD8()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_dataSource;
    OUTLINED_FUNCTION_24();
    swift_beginAccess();
    v3 = *&v2[v1];
    if (v3)
    {
      v4 = v3;
      v5 = OUTLINED_FUNCTION_59_0();
      sub_27495E314(v5, 0);
    }

    sub_2747C27E4();
  }

  OUTLINED_FUNCTION_48_0();

  return v6();
}

void sub_2747C3C90()
{
  v1 = v0 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController____lazy_storage___characterBinding;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28);
  OUTLINED_FUNCTION_88_2();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_glyphCache;
  sub_2749F9DB4();
  OUTLINED_FUNCTION_132();
  *(v0 + v6) = OUTLINED_FUNCTION_21_7();
  v7 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_glyphRegistry;
  type metadata accessor for GlyphRegistry();
  OUTLINED_FUNCTION_132();
  *(v0 + v7) = GlyphRegistry.init(useSystemGlyphsOnly:useOutlineGlyphsOnly:hiddenCategories:)(1, 0, &unk_28838F7F8);
  *(v0 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_dataSource) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_previewCellHasAppeared) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_registryObserver) = 0;
  OUTLINED_FUNCTION_2_17();
  __break(1u);
}

id AddToHomeScreenCollectionViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_registryObserver])
  {

    sub_2749FA844();
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id AddToHomeScreenCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id AddToHomeScreenCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_2747C408C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2749FA4E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v11 = _s11SectionTypeOMa(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v62 - v16;
  MEMORY[0x28223BE20](v15);
  v64 = &v62 - v18;
  v19 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_dataSource;
  swift_beginAccess();
  v20 = *&v2[v19];
  if (v20)
  {
    v21 = v20;
    v22 = a1;
    v23 = v21;
    v63 = v22;
    sub_2749FA714();

    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      v24 = v10;
      v25 = v64;
      sub_2747C71A0(v24, v64);
      sub_2747C71FC(v25, v17);
      v26 = type metadata accessor for WFGlyphCategory();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 5, v26);
      if (EnumTagSinglePayload != 4)
      {
        if (EnumTagSinglePayload == 1)
        {
          v32 = [objc_opt_self() fixedSpacing_];
          v28 = sub_2747C4B58(v32);

          goto LABEL_14;
        }

        if (EnumTagSinglePayload)
        {
          v28 = sub_2747C4B58(0);
          sub_2747C7650(v17, _s11SectionTypeOMa);
          goto LABEL_14;
        }

        sub_2747C7650(v17, _s11SectionTypeOMa);
      }

      v28 = sub_2747C4D6C();
LABEL_14:
      sub_2747C71FC(v25, v14);
      switch(__swift_getEnumTagSinglePayload(v14, 5, v26))
      {
        case 1u:
          [v28 setContentInsets_];
          goto LABEL_25;
        case 2u:
          [v28 setContentInsets_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_274A11F70;
          v51 = objc_opt_self();
          type metadata accessor for AddToHomeScreenCollectionViewController.RoundedBackgroundView();
          sub_2747C247C(0x6564496573756572, 0xEF7265696669746ELL);
          v52 = sub_2749FCD64();

          v53 = [v51 backgroundDecorationItemWithElementKind_];
          goto LABEL_24;
        case 3u:
          [v28 setContentInsets_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_274A11F70;
          v54 = objc_opt_self();
          type metadata accessor for AddToHomeScreenCollectionViewController.TopRoundedBackgroundView();
          sub_2747C247C(0x6564496573756572, 0xEF7265696669746ELL);
          v52 = sub_2749FCD64();

          v53 = [v54 backgroundDecorationItemWithElementKind_];
          goto LABEL_24;
        case 4u:
        case 5u:
          [v28 setContentInsets_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_274A11F70;
          v55 = objc_opt_self();
          type metadata accessor for AddToHomeScreenCollectionViewController.BottomRoundedBackgroundView();
          sub_2747C247C(0x6564496573756572, 0xEF7265696669746ELL);
          v52 = sub_2749FCD64();

          v53 = [v55 backgroundDecorationItemWithElementKind_];
LABEL_24:
          v56 = v53;

          *(v50 + 32) = v56;
          sub_27471CF08(0, &qword_280968D18);
          v57 = sub_2749FCF74();

          [v28 setDecorationItems_];

LABEL_25:
          v58 = v25;
          goto LABEL_26;
        default:
          [v28 setContentInsets_];
          v33 = objc_opt_self();
          v34 = [v33 fractionalWidthDimension_];
          v35 = [v33 estimatedDimension_];
          v36 = [objc_opt_self() sizeWithWidthDimension:v34 heightDimension:v35];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
          v37 = swift_allocObject();
          v62 = xmmword_274A11F70;
          *(v37 + 16) = xmmword_274A11F70;
          sub_27471CF08(0, &qword_280968D20);
          type metadata accessor for AddToHomeScreenCollectionViewController.CategoryTitleView();
          v38 = v36;
          v39 = sub_2747C247C(0x4B746E656D656C65, 0xEB00000000646E69);
          *(v37 + 32) = sub_2747F5B24(v38, v39, v40, 2);
          v41 = sub_2749FCF74();

          [v28 setBoundarySupplementaryItems_];

          v42 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            __break(1u);
          }

          else
          {
            v43 = *&v2[v19];
            if (!v43)
            {
              goto LABEL_27;
            }

            v44 = v43;
            v45 = [v2 collectionView];
            if (v45)
            {
              v46 = v45;
              v47 = sub_2749FA704();

              if (v42 == v47)
              {
                v48 = swift_allocObject();
                *(v48 + 16) = v62;
                v49 = objc_opt_self();
                type metadata accessor for AddToHomeScreenCollectionViewController.BottomRoundedBackgroundView();
                goto LABEL_28;
              }

LABEL_27:
              v48 = swift_allocObject();
              *(v48 + 16) = v62;
              v49 = objc_opt_self();
              type metadata accessor for AddToHomeScreenCollectionViewController.RectangularBackgroundView();
LABEL_28:
              sub_2747C247C(0x6564496573756572, 0xEF7265696669746ELL);
              v59 = sub_2749FCD64();

              v60 = [v49 backgroundDecorationItemWithElementKind_];

              *(v48 + 32) = v60;
              sub_27471CF08(0, &qword_280968D18);
              v61 = sub_2749FCF74();

              [v28 setDecorationItems_];

              sub_2747C7650(v64, _s11SectionTypeOMa);
              v58 = v14;
LABEL_26:
              sub_2747C7650(v58, _s11SectionTypeOMa);
              return;
            }
          }

          __break(1u);
          return;
      }
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  }

  sub_27472ECBC(v10, &qword_280968BB8);
  sub_2749FA3D4();
  v29 = sub_2749FA4D4();
  v30 = sub_2749FD2D4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_274719000, v29, v30, "Count not get section identifier", v31, 2u);
    MEMORY[0x277C61040](v31, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2747C4B58(0);
}

id sub_2747C4B58(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension_];
  v4 = [v2 estimatedDimension_];
  v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

  v6 = [objc_opt_self() itemWithLayoutSize_];
  sub_27471CF08(0, &unk_280968D30);
  v7 = a1;
  v8 = sub_2747C5014(0, a1, 0, a1);
  [v6 setEdgeSpacing_];

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_274A11F70;
  *(v10 + 32) = v6;
  sub_27471CF08(0, &qword_280968D28);
  v11 = v6;
  v12 = sub_2749FCF74();

  v13 = [v9 verticalGroupWithLayoutSize:v5 subitems:v12];

  v14 = [objc_opt_self() sectionWithGroup_];
  return v14;
}

id sub_2747C4D6C()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension_];
  v2 = [v0 fractionalHeightDimension_];
  v3 = objc_opt_self();
  v4 = [v3 sizeWithWidthDimension:v1 heightDimension:v2];

  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 idiom];

  v7 = 40.0;
  if (v6 != 1)
  {
    v7 = 0.166666667;
  }

  v8 = &selRef_absoluteDimension_;
  if (v6 != 1)
  {
    v8 = &selRef_fractionalWidthDimension_;
  }

  v9 = [v0 *v8];
  v10 = [v0 fractionalWidthDimension_];
  v11 = [v3 sizeWithWidthDimension:v10 heightDimension:v9];

  v12 = [objc_opt_self() itemWithLayoutSize_];
  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_274A11F70;
  *(v14 + 32) = v12;
  sub_27471CF08(0, &qword_280968D28);
  v15 = v12;
  v16 = sub_2749FCF74();

  v17 = [v13 horizontalGroupWithLayoutSize:v11 subitems:v16];

  [v17 setContentInsets_];
  v18 = [objc_opt_self() sectionWithGroup_];

  return v18;
}

id sub_2747C5014(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [swift_getObjCClassFromMetadata() spacingForLeading:a1 top:a2 trailing:a3 bottom:a4];

  return v8;
}

uint64_t sub_2747C5094(uint64_t a1)
{
  v2 = sub_2749FA794();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2749FA7E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_2747C408C(a1);
    v13 = v12;
  }

  else
  {
    sub_27471CF08(0, &unk_280969880);
    (*(v3 + 104))(v5, *MEMORY[0x277D74D50], v2);
    sub_2749FA7A4();
    v13 = sub_2749FD524();
    (*(v7 + 8))(v9, v6);
  }

  return v13;
}

unint64_t AddToHomeScreenCollectionViewController.collectionView(_:didSelectItemAt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BB0);
  v6 = OUTLINED_FUNCTION_34(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_39();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - v11;
  v78 = _s13RowIdentifierOMa(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BB8);
  v21 = OUTLINED_FUNCTION_34(v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v24 = _s11SectionTypeOMa(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39();
  v77 = v26 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v73 - v29;
  v31 = OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_dataSource;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v32 = *(v3 + v31);
  if (v32)
  {
    v74 = v9;
    v75 = v19;
    v33 = v32;
    v76 = a2;
    sub_2749F9274();
    sub_2749FA714();

    if (__swift_getEnumTagSinglePayload(v23, 1, v24) != 1)
    {
      v34 = v30;
      sub_2747C71A0(v23, v30);
      OUTLINED_FUNCTION_28_4();
      v35 = *(v3 + v31);
      if (!v35)
      {
        OUTLINED_FUNCTION_0_14();
        sub_2747C7650(v30, v44);
        swift_endAccess();
        OUTLINED_FUNCTION_88_2();
        __swift_storeEnumTagSinglePayload(v45, v46, v47, v78);
        goto LABEL_9;
      }

      swift_endAccess();
      v36 = v35;
      sub_2749FA6F4();

      v37 = v78;
      if (__swift_getEnumTagSinglePayload(v12, 1, v78) == 1)
      {
        OUTLINED_FUNCTION_0_14();
        sub_2747C7650(v34, v38);
LABEL_9:
        v42 = &qword_280968BB0;
        v43 = v12;
        return sub_27472ECBC(v43, v42);
      }

      v49 = v75;
      sub_2747C71A0(v12, v75);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v49) = sub_27495E5B0(v49, v16);
      OUTLINED_FUNCTION_1_19();
      sub_2747C7650(v16, v50);
      if ((v49 & 1) == 0)
      {
        sub_2747C580C();
      }

      v51 = v77;
      sub_2747C71FC(v34, v77);
      v52 = type metadata accessor for WFGlyphCategory();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 5, v52);
      if (EnumTagSinglePayload)
      {
        if (EnumTagSinglePayload != 4)
        {
          if (EnumTagSinglePayload == 2)
          {
            result = sub_2749F9244();
            if (result > 2)
            {
              __break(1u);
              return result;
            }

            sub_274795FB8(byte_28838FBC8[result + 32]);
            goto LABEL_28;
          }

          OUTLINED_FUNCTION_1_19();
          sub_2747C7650(v75, v60);
          v61 = _s11SectionTypeOMa;
          v62 = v34;
          v63 = _s11SectionTypeOMa;
          goto LABEL_30;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_14();
        sub_2747C7650(v51, v54);
      }

      OUTLINED_FUNCTION_28_4();
      v55 = *(v3 + v31);
      if (v55)
      {
        swift_endAccess();
        v56 = v55;
        v57 = v74;
        sub_2749FA6F4();

        v51 = v57;
        if (__swift_getEnumTagSinglePayload(v57, 1, v37) != 1)
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v69 = *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968BC8) + 64));
            sub_27472ECBC(v51, &qword_2809707E0);
            sub_27487F680(v69, 0, 1);
LABEL_28:
            OUTLINED_FUNCTION_1_19();
            sub_2747C7650(v75, v70);
            OUTLINED_FUNCTION_0_14();
            v72 = v34;
            return sub_2747C7650(v72, v71);
          }

          v61 = _s13RowIdentifierOMa;
          sub_2747C7650(v75, _s13RowIdentifierOMa);
          OUTLINED_FUNCTION_0_14();
          v62 = v34;
LABEL_30:
          sub_2747C7650(v62, v63);
          v72 = v51;
          v71 = v61;
          return sub_2747C7650(v72, v71);
        }

        OUTLINED_FUNCTION_1_19();
        sub_2747C7650(v75, v58);
        OUTLINED_FUNCTION_0_14();
        sub_2747C7650(v34, v59);
      }

      else
      {
        OUTLINED_FUNCTION_1_19();
        sub_2747C7650(v75, v64);
        OUTLINED_FUNCTION_0_14();
        sub_2747C7650(v34, v65);
        swift_endAccess();
        v51 = v74;
        OUTLINED_FUNCTION_88_2();
        __swift_storeEnumTagSinglePayload(v66, v67, v68, v37);
      }

      v42 = &qword_280968BB0;
      v43 = v51;
      return sub_27472ECBC(v43, v42);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88_2();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v24);
  }

  v42 = &qword_280968BB8;
  v43 = v23;
  return sub_27472ECBC(v43, v42);
}

void sub_2747C580C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong resignFirstResponder];
  }
}

void AddToHomeScreenCollectionViewController.collectionView(_:willDisplay:forItemAt:)(int a1, id a2)
{
  v5 = [a2 contentView];
  type metadata accessor for PreviewConfiguration.ContentView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectWeakAssign();
    if ((*(v2 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_previewCellHasAppeared) & 1) == 0)
    {
      *(v2 + OBJC_IVAR____TtC10WorkflowUI39AddToHomeScreenCollectionViewController_previewCellHasAppeared) = 1;
      [*(v4 + OBJC_IVAR____TtCC10WorkflowUI20PreviewConfiguration11ContentView_titleField) becomeFirstResponder];
    }
  }
}

Swift::Void __swiftcall AddToHomeScreenCollectionViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  if ([(UIScrollView *)a1 isTracking]|| [(UIScrollView *)a1 isDragging])
  {

    sub_2747C580C();
  }
}

void sub_2747C5BF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_59_0();
  v5 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  _s13RowIdentifierOMa(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v14 = sub_27495E5B0(a2, v13);
  OUTLINED_FUNCTION_1_19();
  sub_2747C7650(v13, v15);
  if (v14 & 1) != 0 || (swift_storeEnumTagMultiPayload(), v16 = sub_27495E5B0(a2, v13), OUTLINED_FUNCTION_1_19(), sub_2747C7650(v13, v17), (v16))
  {
    v18 = [v2 collectionView];
    if (v18)
    {
      v19 = v18;
      v20 = sub_2749F9224();
      v21 = [v19 cellForItemAtIndexPath_];

      if (v21)
      {
        v22 = [v21 layer];

        LODWORD(v23) = 1.0;
        [v22 setOpacity_];
      }

      v24 = objc_opt_self();
      (*(v7 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v5);
      v25 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = v3;
      (*(v7 + 32))(v26 + v25, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      aBlock[4] = sub_2747C6CE4;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_274760264;
      aBlock[3] = &block_descriptor_9;
      v27 = _Block_copy(aBlock);
      v28 = v3;

      [v24 animateWithDuration:v27 animations:0.05];
      _Block_release(v27);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t type metadata accessor for AddToHomeScreenCollectionViewController()
{
  result = qword_280968C10;
  if (!qword_280968C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2747C5F3C()
{
  sub_2747C6024();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2747C6024()
{
  if (!qword_280968C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968C28);
    v0 = sub_2749FD6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280968C20);
    }
  }
}

void sub_2747C6088(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2749F9224();
    v4 = [v2 cellForItemAtIndexPath_];

    if (v4)
    {
      v5 = [v4 layer];

      [v5 setOpacity_];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_2747C6168()
{
  OUTLINED_FUNCTION_1_18();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AddToHomeScreenCollectionViewController.ReusableView();
  return OUTLINED_FUNCTION_6_6(v8.super_class, sel_initWithFrame_, v1, v2, v3, v4, v5, v6, v8);
}

id sub_2747C61D0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AddToHomeScreenCollectionViewController.ReusableView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2747C6260()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddToHomeScreenCollectionViewController.ReusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2747C62B8()
{
  OUTLINED_FUNCTION_1_18();
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  v7 = OUTLINED_FUNCTION_6_6(v14.super_class, sel_initWithFrame_, v1, v2, v3, v4, v5, v6, v14);
  v8 = objc_opt_self();
  v9 = v7;
  OUTLINED_FUNCTION_22_5([v8 clearColor]);

  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  OUTLINED_FUNCTION_29_5([v8 systemBackgroundColor]);

  v11 = [v10 layer];
  [v11 setCornerRadius_];

  OUTLINED_FUNCTION_23_7([v10 setClipsToBounds_], sel_addSubview_);
  v12 = [v10 wf:v9 addConstraintsToFillSuperview:0.0 insets:{16.0, 10.0, 16.0}];

  return v9;
}

id sub_2747C6554(uint64_t a1)
{
  OUTLINED_FUNCTION_1_18();
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  v9 = OUTLINED_FUNCTION_6_6(v21.super_class, sel_initWithFrame_, v3, v4, v5, v6, v7, v8, v21);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  OUTLINED_FUNCTION_23_7(v12, sel_setBackgroundColor_);

  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v14 = [v10 systemBackgroundColor];
  [v13 setBackgroundColor_];

  v15 = [v13 layer];
  [v15 setMaskedCorners_];

  v16 = [v13 layer];
  [v16 setCornerRadius_];

  v17 = [v13 layer];
  [v17 setCornerCurve_];

  v18 = OUTLINED_FUNCTION_23_7([v13 setClipsToBounds_], sel_addSubview_);
  v19 = OUTLINED_FUNCTION_15_7(v18, sel_wf_addConstraintsToFillSuperview_insets_);

  return v11;
}

id sub_2747C67C8()
{
  OUTLINED_FUNCTION_1_18();
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  v7 = OUTLINED_FUNCTION_6_6(v15.super_class, sel_initWithFrame_, v1, v2, v3, v4, v5, v6, v15);
  v8 = objc_opt_self();
  v9 = v7;
  OUTLINED_FUNCTION_22_5([v8 clearColor]);

  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  OUTLINED_FUNCTION_29_5([v8 systemBackgroundColor]);

  v12 = OUTLINED_FUNCTION_23_7(v11, sel_addSubview_);
  v13 = OUTLINED_FUNCTION_15_7(v12, sel_wf_addConstraintsToFillSuperview_insets_);

  return v9;
}

char *sub_2747C696C()
{
  OUTLINED_FUNCTION_1_18();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtCC10WorkflowUI39AddToHomeScreenCollectionViewController17CategoryTitleView_labelView;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v0[v2] = v3;
  v24.receiver = v0;
  v24.super_class = ObjectType;
  v10 = OUTLINED_FUNCTION_6_6(v3, sel_initWithFrame_, v4, v5, v6, v7, v8, v9, v24);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor_];

  v14 = OBJC_IVAR____TtCC10WorkflowUI39AddToHomeScreenCollectionViewController17CategoryTitleView_labelView;
  v15 = *&v12[OBJC_IVAR____TtCC10WorkflowUI39AddToHomeScreenCollectionViewController17CategoryTitleView_labelView];
  v16 = [v11 systemBackgroundColor];
  [v15 setBackgroundColor_];

  v17 = *&v12[v14];
  v18 = objc_opt_self();
  v19 = *MEMORY[0x277D76988];
  v20 = v17;
  v21 = [v18 preferredFontForTextStyle_];
  [v20 setFont_];

  [*&v12[v14] setAccessibilityTraits_];
  [v12 addSubview_];
  v22 = [*&v12[v14] wf:v12 addConstraintsToFillSuperview:0.0 insets:{19.0, 0.0, 16.0}];

  return v12;
}

void sub_2747C6B84()
{
  v1 = OBJC_IVAR____TtCC10WorkflowUI39AddToHomeScreenCollectionViewController17CategoryTitleView_labelView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  OUTLINED_FUNCTION_2_17();
  __break(1u);
}

id sub_2747C6C1C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2747C6C88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_2747C6CE4()
{
  v1 = sub_2749F9284();
  OUTLINED_FUNCTION_34(v1);
  v2 = *(v0 + 16);

  sub_2747C6088(v2);
}

uint64_t sub_2747C6D94()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_8_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_7(v1);

  return sub_2747C3B40(v3, v4, v5, v6);
}

uint64_t sub_2747C6E20(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2747C6E78()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_8_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_7(v1);

  return sub_2747C3810(v3, v4, v5, v6);
}

uint64_t sub_2747C6F4C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_8_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_7(v1);

  return sub_2747C3618(v3, v4, v5, v6);
}

uint64_t sub_2747C7028()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_8_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_7(v1);

  return sub_2747C3414(v3, v4, v5, v6);
}

uint64_t sub_2747C70B4()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_2747C71A0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_59_0();
  v5(v4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2747C71FC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_59_0();
  v5(v4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 16))(a2, v2);
  return a2;
}

void sub_2747C7258(uint64_t a1@<X8>)
{
  v2 = *(v1 + 18);
  *a1 = *(v1 + 16);
  *(a1 + 2) = v2;
}

unint64_t sub_2747C726C()
{
  result = qword_280968C88;
  if (!qword_280968C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968C88);
  }

  return result;
}

unint64_t sub_2747C72C8()
{
  result = qword_280968CA0;
  if (!qword_280968CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968C98);
    sub_2747C7380();
    sub_27472AB6C(&qword_280968CC0, &qword_280968CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968CA0);
  }

  return result;
}

unint64_t sub_2747C7380()
{
  result = qword_280968CA8;
  if (!qword_280968CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968CB0);
    sub_2747C75FC(&qword_280968CB8, type metadata accessor for IconColorSchemePickerView);
    sub_2747C75FC(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968CA8);
  }

  return result;
}

id sub_2747C746C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = [*(v1 + 24) isHighlighted];
  *a1 = v3;
  a1[1] = result;
  return result;
}

unint64_t sub_2747C74B0()
{
  result = qword_280968CD8;
  if (!qword_280968CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968CD8);
  }

  return result;
}

unint64_t sub_2747C7514()
{
  result = qword_280968CF0;
  if (!qword_280968CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968CE8);
    sub_2747C75FC(&qword_280968CF8, type metadata accessor for ModePickerView);
    sub_27472AB6C(&qword_280968CC0, &qword_280968CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968CF0);
  }

  return result;
}

uint64_t sub_2747C75FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2747C7650(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2747C76C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747C7730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2747C77D4(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_2749FCF74();

  v5 = [v3 initWithDocumentTypes:v4 inMode:a2];

  return v5;
}

uint64_t HomeScreenIconType.hashValue.getter()
{
  v1 = *v0;
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](v1);
  return sub_2749FDE44();
}

id sub_2747C793C()
{
  v1 = OBJC_IVAR___WFAddToHomeScreenViewController____lazy_storage___dataSource;
  v2 = *(v0 + OBJC_IVAR___WFAddToHomeScreenViewController____lazy_storage___dataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WFAddToHomeScreenViewController____lazy_storage___dataSource);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR___WFAddToHomeScreenViewController_gridView);
    objc_allocWithZone(type metadata accessor for AddToHomeScreenGridViewDataSource());
    v6 = v5;

    sub_27480AF18();
    v7 = *(v0 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id WFAddToHomeScreenViewController.init(aggregatedEntry:activity:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_2749F9494();
  OUTLINED_FUNCTION_43();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = OBJC_IVAR___WFAddToHomeScreenViewController_gridView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968D48);
  *(v3 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v3 + OBJC_IVAR___WFAddToHomeScreenViewController____lazy_storage___dataSource) = 0;
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(v13, a1, v7);
  type metadata accessor for HomeScreenIconState();
  swift_allocObject();
  *(v3 + OBJC_IVAR___WFAddToHomeScreenViewController_iconState) = sub_274880C08(v13);
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_24();
  v17 = objc_msgSendSuper2(v15, v16, v3, ObjectType);
  sub_2747C7BA0();

  (*(v9 + 8))(a1, v7);
  return v17;
}

Swift::Void __swiftcall WFAddToHomeScreenViewController.viewDidLoad()()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(MEMORY[0x277D75348]);
    v5 = sub_2747CA0C4(sub_2747C7F00, 0);
    [v3 setBackgroundColor_];

    v6 = *&v1[OBJC_IVAR___WFAddToHomeScreenViewController_gridView];
    [v6 setClipsToBounds_];
    [v6 setAutoresizingMask_];
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubview_];

      v9 = sub_2747C793C();
      sub_2747CA5EC(&qword_280968D68, 255, type metadata accessor for AddToHomeScreenGridViewDataSource);
      OUTLINED_FUNCTION_2_18();
      *&v6[*(v10 + 160) + 8] = v11;
      swift_unknownObjectWeakAssign();

      sub_2747CA5EC(&unk_280968D70, v12, type metadata accessor for WFAddToHomeScreenViewController);
      OUTLINED_FUNCTION_2_18();
      *&v6[*(v13 + 168) + 8] = v14;
      swift_unknownObjectWeakAssign();
      OUTLINED_FUNCTION_2_18();
      *&v6[*(v15 + 176) + 8] = &off_288393380;
      swift_unknownObjectWeakAssign();
      OUTLINED_FUNCTION_2_18();
      v6[*(v16 + 216)] = 1;
      type metadata accessor for IconTypeSegmentedControlCell();
      OUTLINED_FUNCTION_6_7();
      sub_274793884(v17, v18, v19);
      type metadata accessor for WFIconPickerHeaderView();
      OUTLINED_FUNCTION_6_7();
      sub_274793884(v20, v21, v22);
      type metadata accessor for WFIconPickerSymbolCell();
      OUTLINED_FUNCTION_6_7();
      sub_274793884(v23, v24, v25);
      v26 = type metadata accessor for WFIconPickerColorCell();
      sub_274793884(v26, 0x6C6543726F6C6F43, 0xE90000000000006CLL);
      v27 = type metadata accessor for WFIconPickerContentUnavailableView();
      sub_274793884(v27, 0xD000000000000016, 0x8000000274A2B070);
      v28 = type metadata accessor for ImagePickerTypeCell();
      sub_274793884(v28, 0xD000000000000013, 0x8000000274A2D040);
      sub_274796618();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_2747C7F00(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = [objc_opt_self() systemGroupedBackgroundColor];

    return v1;
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v3 initWithRed:0.98 green:0.98 blue:0.99 alpha:1.0];
  }
}

Swift::Void __swiftcall WFAddToHomeScreenViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v19.receiver = v1;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewIsAppearing_, a1);
  v3 = *&v1[OBJC_IVAR___WFAddToHomeScreenViewController_gridView];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 safeAreaInsets];
    v7 = v6;

    if (v7 == 0.0)
    {
      v8 = 16.0;
    }

    else
    {
      v8 = 0.0;
    }

    [v3 setContentInset_];
    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [v3 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_2747C8188())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_2747CA7DC;
}

uint64_t sub_2747C81E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_2749FD0A4();

  v6 = sub_2749FD094();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;

  sub_27479930C();
}

uint64_t sub_2747C833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_2749FD0A4();
  *(v4 + 48) = sub_2749FD094();
  v6 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2747C83D4, v6, v5);
}

uint64_t sub_2747C83D4()
{

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationItem];
    v4 = [v3 rightBarButtonItem];

    if (v4)
    {

      v5 = sub_27487E89C();

      [v4 setEnabled_];
    }

    sub_2747C7BA0();
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_2747C84E8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [v0 dismissViewControllerAnimated:1 completion:0];
  if (Strong)
  {
  }
}

void sub_2747C859C()
{
  sub_27487E8DC();

  sub_2747C84E8();
}

id WFAddToHomeScreenViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void WFAddToHomeScreenViewController.init(coder:)()
{
  v1 = OBJC_IVAR___WFAddToHomeScreenViewController_gridView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968D48);
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR___WFAddToHomeScreenViewController____lazy_storage___dataSource) = 0;
  swift_unknownObjectWeakInit();
  sub_2749FDAE4();
  __break(1u);
}

id WFAddToHomeScreenViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WFAddToHomeScreenViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2747C88B0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 endEditing_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2747C8928(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, uint64_t, uint64_t))
{
  v110 = a1;
  v111 = a3;
  v4 = sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0);
  v15 = OUTLINED_FUNCTION_34(v14);
  MEMORY[0x28223BE20](v15);
  v108 = &v92 - v16;
  v112 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v107 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  v106 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  v105 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v24 = OUTLINED_FUNCTION_34(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_39();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15();
  v109 = v29;
  type metadata accessor for WFAddToHomeScreenItem();
  OUTLINED_FUNCTION_43();
  v99 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_5();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v92 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = (&v92 - v36);
  v100 = a2;
  sub_2747CA634(a2, &v92 - v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2747CA698(v37);
      break;
    case 2u:
      (*(v6 + 32))(v13, v37, v4);
      (*(v6 + 16))(v10, v13, v4);
      sub_27487F88C(v10);
      v89 = sub_27486C8C8(v111);
      if (v89)
      {
        v90 = v89;
        type metadata accessor for WFIconPickerColorCell();
        if (swift_dynamicCastClass())
        {
          sub_2747B5D7C(v13, 1);
        }
      }

      (*(v6 + 8))(v13, v4);
      break;
    case 3u:
      v91 = sub_2749F9244();
      if (v91 > 2)
      {
        goto LABEL_43;
      }

      sub_2747C91E0(*(&unk_28838F880 + v91 + 32));
      break;
    case 4u:
    case 5u:
    case 6u:
      return;
    default:
      v38 = *v37;
      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      if (v39)
      {
        v40 = v39;
        v41 = v38;
        sub_27487F680([v40 glyph], 0, 1);
      }

      v42 = sub_27486C8C8(v111);
      if (v42)
      {
        v43 = v42;
        type metadata accessor for WFIconPickerSymbolCell();
        v44 = swift_dynamicCastClass();
        if (v44)
        {
          v45 = v44;
          sub_2749775FC(v38, 0);
          *(v45 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 1;
          sub_274977DCC();
        }
      }

      v93 = v38;
      v46 = v110;
      OUTLINED_FUNCTION_11_9();
      v48 = *(v47 + 112);
      OUTLINED_FUNCTION_24();
      swift_beginAccess();
      v49 = *(v46 + v48);
      v50 = v49 + 64;
      v51 = 1 << *(v49 + 32);
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(v49 + 64);
      OUTLINED_FUNCTION_11_9();
      v55 = *(v54 + 152);
      v101 = v56;

      v104 = v55;
      OUTLINED_FUNCTION_24();
      swift_beginAccess();
      v57 = 0;
      v58 = (v51 + 63) >> 6;
      v96 = v107 + 16;
      v111 = (v107 + 32);
      v102 = v107 + 8;
      v59 = v112;
      v60 = v106;
      v97 = v27;
      v94 = v35;
      v95 = v50;
      v103 = v58;
      while (v53)
      {
        v61 = v57;
LABEL_17:
        v62 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
        v63 = v62 | (v61 << 6);
        v64 = v101;
        v65 = v107;
        (*(v107 + 16))(v105, *(v101 + 48) + *(v107 + 72) * v63, v59);
        v66 = *(*(v64 + 56) + 8 * v63);
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
        v68 = *(v67 + 48);
        v27 = v97;
        (*(v65 + 32))();
        *(v27 + v68) = v66;
        __swift_storeEnumTagSinglePayload(v27, 0, 1, v67);
        v69 = v66;
        v60 = v106;
        v50 = v95;
LABEL_18:
        v70 = v109;
        sub_274793E0C(v27, v109);
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
        if (__swift_getEnumTagSinglePayload(v70, 1, v71) == 1)
        {

          return;
        }

        v72 = *(v70 + *(v71 + 48));
        v73 = v112;
        (*v111)(v60, v70, v112);
        v74 = v108;
        sub_2747CA6F4(v110 + v104, v108, &unk_280968DC0);
        v113 = 3;
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0);
        sub_2749F95D4();
        (*(*(v75 - 8) + 8))(v74, v75);
        v76 = v114;
        if (v114)
        {
          v77 = sub_2749F9264();
          if ((v77 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          if (v77 >= *(v76 + 16))
          {
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_12_10();
          v81 = v98;
          sub_2747CA634(v76 + v78 + *(v79 + 72) * v80, v98);

          v82 = v94;
          sub_27477BDA4(v81, v94);
          if (sub_2749571B4(v82, v100))
          {
            type metadata accessor for WFIconPickerSymbolCell();
            v83 = swift_dynamicCastClass();
            v59 = v112;
            if (v83)
            {
              *(v83 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 1;
              sub_274977DCC();
            }

            sub_2747CA698(v82);
            v84 = OUTLINED_FUNCTION_8_8();
          }

          else
          {

            sub_2747CA698(v82);
            v84 = OUTLINED_FUNCTION_8_8();
            v59 = v112;
          }

          v85(v84, v59);
          v58 = v103;
        }

        else
        {
          v86 = OUTLINED_FUNCTION_8_8();
          v87(v86, v73);

          v59 = v73;
          v58 = v103;
        }
      }

      while (1)
      {
        v61 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        if (v61 >= v58)
        {
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
          __swift_storeEnumTagSinglePayload(v27, 1, 1, v88);
          v53 = 0;
          goto LABEL_18;
        }

        v53 = *(v50 + 8 * v61);
        ++v57;
        if (v53)
        {
          v57 = v61;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      break;
  }
}

void sub_2747C91E0(char a1)
{
  v2 = v1;
  v4 = sub_2749FA414();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  if (a1)
  {
    if (a1 == 1)
    {
      v11 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
      [v11 setAllowsEditing_];
      [v11 setDelegate_];
      [v11 setSourceType_];
    }

    else
    {
      sub_27471CF08(0, &qword_2809686A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_280968DF0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_274A0EF10;
      sub_2749FA404();
      v13 = sub_2749FA3E4();
      v15 = v14;
      (*(v6 + 8))(v10, v4);
      *(v12 + 32) = v13;
      *(v12 + 40) = v15;
      v11 = sub_2747C77D4(v12, 0);
      [v11 setDelegate_];
      [v11 setModalPresentationStyle_];
    }
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
    [v11 setAllowsEditing_];
    [v11 setDelegate_];
    [v11 setSourceType_];
  }

  [v2 presentViewController:v11 animated:1 completion:0];
}

unint64_t sub_2747C9410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v122 = a3;
  v118 = a1;
  v6 = sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v120 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DC0);
  v13 = OUTLINED_FUNCTION_34(v12);
  MEMORY[0x28223BE20](v13);
  v116 = &v100 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E10);
  v16 = OUTLINED_FUNCTION_34(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v100 - v21;
  v117 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v115 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_39();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15();
  v114 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v31 = OUTLINED_FUNCTION_34(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_39();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15();
  v121 = v36;
  v37 = type metadata accessor for WFAddToHomeScreenItem();
  OUTLINED_FUNCTION_43();
  v106 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_5();
  MEMORY[0x28223BE20](v40);
  v42 = (&v100 - v41);
  result = [v4 view];
  if (result)
  {
    v44 = result;
    [result endEditing_];

    sub_2747CA634(a2, v42);
    result = swift_getEnumCaseMultiPayload();
    switch(result)
    {
      case 1:
        return sub_2747CA698(v42);
      case 2:
        v45 = v120;
        (*(v8 + 32))(v120, v42, v6);
        v46 = sub_27486C8C8(v122);
        if (v46)
        {
          v47 = v46;
          type metadata accessor for WFIconPickerColorCell();
          if (swift_dynamicCastClass())
          {
            sub_2747B5D7C(v45, 0);
          }
        }

        return (*(v8 + 8))(v45, v6);
      case 3:
      case 4:
      case 5:
      case 6:
        return result;
      default:
        v48 = *v42;
        v49 = sub_27486C8C8(v122);
        if (v49)
        {
          v50 = v49;
          type metadata accessor for WFIconPickerSymbolCell();
          v51 = swift_dynamicCastClass();
          if (v51)
          {
            v52 = v51;
            sub_2749775FC(v48, 0);
            *(v52 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 0;
            sub_274977DCC();
          }
        }

        v101 = v48;
        v120 = v37;
        v122 = v22;
        v102 = a2;
        v53 = v118;
        OUTLINED_FUNCTION_11_9();
        v55 = *(v54 + 112);
        OUTLINED_FUNCTION_24();
        swift_beginAccess();
        v56 = *(v53 + v55);
        v57 = *(v56 + 64);
        v113 = v56 + 64;
        v58 = 1 << *(v56 + 32);
        v59 = -1;
        if (v58 < 64)
        {
          v59 = ~(-1 << v58);
        }

        v60 = v59 & v57;
        OUTLINED_FUNCTION_11_9();
        v62 = *(v61 + 152);
        v107 = v63;

        v112 = v62;
        OUTLINED_FUNCTION_24();
        result = swift_beginAccess();
        v64 = 0;
        v65 = (v58 + 63) >> 6;
        v103 = v115 + 16;
        v119 = (v115 + 32);
        v109 = v115 + 8;
        v111 = v19;
        v66 = v117;
        v105 = v27;
        v104 = v34;
        v67 = v121;
        v110 = v65;
        break;
    }

    while (1)
    {
      if (v60)
      {
        v68 = v64;
        goto LABEL_23;
      }

      do
      {
        v68 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        if (v68 >= v65)
        {
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
          __swift_storeEnumTagSinglePayload(v34, 1, 1, v97);
          v60 = 0;
          goto LABEL_24;
        }

        v60 = *(v113 + 8 * v68);
        ++v64;
      }

      while (!v60);
      v64 = v68;
LABEL_23:
      v69 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v70 = v69 | (v68 << 6);
      v71 = v107;
      v72 = v115;
      (*(v115 + 16))(v114, *(v107 + 48) + *(v115 + 72) * v70, v66);
      v73 = *(*(v71 + 56) + 8 * v70);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
      v75 = *(v74 + 48);
      v34 = v104;
      (*(v72 + 32))();
      *(v34 + v75) = v73;
      __swift_storeEnumTagSinglePayload(v34, 0, 1, v74);
      v76 = v73;
      v27 = v105;
      v67 = v121;
LABEL_24:
      sub_274793E0C(v34, v67);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
      if (__swift_getEnumTagSinglePayload(v67, 1, v77) == 1)
      {
      }

      v78 = *(v67 + *(v77 + 48));
      (*v119)(v27, v67, v66);
      v79 = v116;
      sub_2747CA6F4(v118 + v112, v116, &unk_280968DC0);
      v123 = 3;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DE0);
      sub_2749F95D4();
      (*(*(v80 - 8) + 8))(v79, v80);
      v81 = v124;
      if (v124)
      {
        result = sub_2749F9264();
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *(v81 + 16))
          {
            OUTLINED_FUNCTION_12_10();
            v85 = v122;
            sub_2747CA634(v81 + v82 + *(v83 + 72) * v84, v122);

            v86 = v85;
            v87 = 0;
            goto LABEL_30;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v86 = v122;
      v87 = 1;
LABEL_30:
      __swift_storeEnumTagSinglePayload(v86, v87, 1, v120);
      type metadata accessor for WFIconPickerSymbolCell();
      v88 = swift_dynamicCastClass();
      v89 = v111;
      if (v88)
      {
        v90 = v78;
      }

      v91 = v122;
      sub_2747CA6F4(v122, v89, &qword_280967E10);
      if (__swift_getEnumTagSinglePayload(v89, 1, v120) == 1)
      {
        break;
      }

      v94 = v108;
      sub_27477BDA4(v89, v108);
      if ((sub_2749571B4(v94, v102) & 1) == 0)
      {

        sub_2747CA698(v94);
        sub_2747CA75C(v122);
        v95 = OUTLINED_FUNCTION_3_22();
        v66 = v117;
        result = v96(v95, v117);
        goto LABEL_38;
      }

      v66 = v117;
      v67 = v121;
      if (v88)
      {
        *(v88 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 0;
        sub_274977DCC();
      }

      else
      {
      }

      sub_2747CA698(v108);
      sub_2747CA75C(v122);
      v98 = OUTLINED_FUNCTION_3_22();
      result = v99(v98, v66);
LABEL_42:
      v65 = v110;
    }

    sub_2747CA75C(v91);
    v92 = OUTLINED_FUNCTION_3_22();
    v66 = v117;
    v93(v92, v117);
    result = sub_2747CA75C(v89);
LABEL_38:
    v67 = v121;
    goto LABEL_42;
  }

LABEL_47:
  __break(1u);
  return result;
}

Swift::Void __swiftcall WFAddToHomeScreenViewController.imagePickerController(_:didFinishPickingMediaWithInfo:)(UIImagePickerController *_, Swift::OpaquePointer didFinishPickingMediaWithInfo)
{
  if (*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    v3 = v2;
    v5 = sub_274797F40(*MEMORY[0x277D76A50]);
    if (v6)
    {
      sub_274797FD4(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v5, v13);
      sub_27471CF08(0, &qword_280968030);
      if (swift_dynamicCast())
      {
        v7 = UIImagePNGRepresentation(image);
        if (v7)
        {
          v8 = v7;
          v9 = sub_2749F9094();
          v11 = v10;
        }

        else
        {
          v9 = 0;
          v11 = 0xF000000000000000;
        }

        sub_27487F32C(v9, v11);
        [v3 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

Swift::Void __swiftcall WFAddToHomeScreenViewController.documentPicker(_:didPickDocumentsAt:)(UIDocumentPickerViewController *_, Swift::OpaquePointer didPickDocumentsAt)
{
  if (*(didPickDocumentsAt._rawValue + 2))
  {
    v2 = sub_2749F9064();
    OUTLINED_FUNCTION_34(v2);
    v3 = objc_opt_self();
    v4 = sub_2749F9024();
    v9 = [v3 fileWithURL:v4 options:3 ofType:0];

    if (v9)
    {
      v5 = [v9 data];
      v6 = sub_2749F9094();
      v8 = v7;

      sub_27487F32C(v6, v8);
    }
  }
}

id sub_2747CA0C4(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2747CA168;
  v6[3] = &block_descriptor_10;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

id sub_2747CA168(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

unint64_t sub_2747CA1F8()
{
  result = qword_280968D80;
  if (!qword_280968D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968D80);
  }

  return result;
}

unint64_t sub_2747CA29C()
{
  result = qword_280968D90;
  if (!qword_280968D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968D90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HomeScreenIconType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WFAddToHomeScreenViewController.ImagePickerType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2747CA4D8()
{
  result = qword_280968D98;
  if (!qword_280968D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968D98);
  }

  return result;
}

unint64_t sub_2747CA540()
{
  result = qword_280968DA8;
  if (!qword_280968DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968DA8);
  }

  return result;
}

unint64_t sub_2747CA598()
{
  result = qword_280968DB0;
  if (!qword_280968DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968DB0);
  }

  return result;
}

uint64_t sub_2747CA5EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2747CA634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFAddToHomeScreenItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747CA698(uint64_t a1)
{
  v2 = type metadata accessor for WFAddToHomeScreenItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2747CA6F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2747CA75C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2747CA7E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27475F680;

  return sub_2747C833C(a1, v4, v5, v6);
}

uint64_t sub_2747CA898()
{
  sub_2749FD014();
  result = sub_2749F95A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2747CA960()
{
  sub_2749FD014();

  return sub_2749F9594();
}

id AddToHomeScreenActivity.init(reference:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC10WorkflowUI23AddToHomeScreenActivity_viewController] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUI23AddToHomeScreenActivity_reference] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t AddToHomeScreenActivity.activityTitle.getter()
{
  sub_2749FCE14();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v0 = qword_28159E448;
  v1 = sub_2749FCD64();

  v2 = sub_2749FCD64();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v4;
}

Swift::String_optional __swiftcall AddToHomeScreenActivity._systemImageName()()
{
  v0 = 0x7070612E73756C70;
  v1 = 0xE800000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

id AddToHomeScreenActivity.activityViewController.getter()
{
  v1 = v0;
  v2 = sub_2749F9494();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2749FA3C4();
  OUTLINED_FUNCTION_43();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC10WorkflowUI23AddToHomeScreenActivity_viewController;
  v15 = *&v1[OBJC_IVAR____TtC10WorkflowUI23AddToHomeScreenActivity_viewController];
  v16 = v15;
  if (!v15)
  {
    (*(v10 + 104))(v13, *MEMORY[0x277D79BB8], v8);
    v17 = sub_2749FA3B4();
    (*(v10 + 8))(v13, v8);
    v18 = *&v1[OBJC_IVAR____TtC10WorkflowUI23AddToHomeScreenActivity_reference];
    *v7 = v18;
    (*(v4 + 104))(v7, *MEMORY[0x277D7BE70], v2);
    if (v17)
    {
      v19 = objc_allocWithZone(type metadata accessor for WFAddToHomeScreenViewController());
      v20 = v18;
      v21 = v1;
      v22 = WFAddToHomeScreenViewController.init(aggregatedEntry:activity:)(v7, v1);
    }

    else
    {
      v23 = objc_allocWithZone(type metadata accessor for AddToHomeScreenViewController());
      v24 = v1;
      v25 = v18;
      AddToHomeScreenViewController.init(aggregatedEntry:activity:)(v7, v1);
    }

    v26 = v22;
    v16 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

    v27 = *&v1[v14];
    *&v1[v14] = v16;
    v28 = v16;
  }

  v29 = v15;
  return v16;
}

Swift::Void __swiftcall AddToHomeScreenActivity.activityDidFinish(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_activityDidFinish_, a1);
  v3 = *&v1[OBJC_IVAR____TtC10WorkflowUI23AddToHomeScreenActivity_viewController];
  *&v1[OBJC_IVAR____TtC10WorkflowUI23AddToHomeScreenActivity_viewController] = 0;
}

id AddToHomeScreenActivity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AddToHomeScreenActivity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2747CB1E0()
{
  sub_2749FCE24();
}

uint64_t sub_2747CB248()
{
  sub_2749FCE24();
}

uint64_t static SmartShortcutPickerCollectionViewDataSource.SectionLayoutKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3 < 0)
  {
    if (v6 < 0)
    {
      v44 = OUTLINED_FUNCTION_8_9();
      sub_2747CB3A4(v44, v45, v46);
      v47 = OUTLINED_FUNCTION_9_6();
      sub_2747CB3A4(v47, v48, v49);
      sub_274783E54();
      v19 = v50;
      v51 = OUTLINED_FUNCTION_8_9();
      sub_2747CB3B0(v51, v52, v53);
      v29 = OUTLINED_FUNCTION_9_6();
      goto LABEL_7;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    v57[0] = *a1;
    v57[1] = v2;
    v58 = v3;
    v55[0] = v5;
    v55[1] = v4;
    v56 = v6;
    v7 = OUTLINED_FUNCTION_9_6();
    sub_2747CB3A4(v7, v8, v9);
    v10 = OUTLINED_FUNCTION_8_9();
    sub_2747CB3A4(v10, v11, v12);
    v13 = OUTLINED_FUNCTION_8_9();
    sub_2747CB3A4(v13, v14, v15);
    v16 = OUTLINED_FUNCTION_9_6();
    sub_2747CB3A4(v16, v17, v18);
    v19 = static SmartShortcutPickerSection.ID.== infix(_:_:)(v57, v55);
    v20 = OUTLINED_FUNCTION_8_9();
    sub_2747CB3B0(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_9_6();
    sub_2747CB3B0(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_9_6();
    sub_2747CB3B0(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_8_9();
LABEL_7:
    sub_2747CB3B0(v29, v30, v31);
    return v19 & 1;
  }

  v32 = OUTLINED_FUNCTION_8_9();
  sub_2747CB3A4(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_9_6();
  sub_2747CB3A4(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_8_9();
  sub_2747CB3B0(v38, v39, v40);
  v41 = OUTLINED_FUNCTION_9_6();
  sub_2747CB3B0(v41, v42, v43);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_2747CB3A4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 & 0x80) != 0)
  {
  }

  else
  {
    return sub_27477D408(a1, a2, a3);
  }
}

uint64_t sub_2747CB3B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 & 0x80) != 0)
  {
  }

  else
  {
    return sub_27478C4DC(a1, a2, a3);
  }
}

void SmartShortcutPickerCollectionViewDataSource.SectionLayoutKind.hash(into:)()
{
  v1 = *v0;
  if (v0[2] < 0)
  {
    MEMORY[0x277C5FB60](1);

    sub_27478A068();
  }

  else
  {
    v2 = v0[1];
    v3 = *(v0 + 16);
    MEMORY[0x277C5FB60](0);
    switch(v3)
    {
      case 1:
        v5 = 1;
        goto LABEL_11;
      case 2:
        v5 = 3;
LABEL_11:
        MEMORY[0x277C5FB60](v5);

        sub_2749FCE24();
        return;
      case 3:
        if (v1 | v2)
        {
          v4 = 4;
        }

        else
        {
          v4 = 2;
        }

        goto LABEL_15;
      default:
        MEMORY[0x277C5FB60](0);
        v4 = 0;
LABEL_15:
        MEMORY[0x277C5FB60](v4);
        break;
    }
  }
}

uint64_t SmartShortcutPickerCollectionViewDataSource.SectionLayoutKind.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2749FDDF4();
  if (v3 < 0)
  {
    MEMORY[0x277C5FB60](1);
    sub_27478A068();
  }

  else
  {
    MEMORY[0x277C5FB60](0);
    switch(v3)
    {
      case 1:
        v5 = 1;
        goto LABEL_9;
      case 2:
        v5 = 3;
LABEL_9:
        MEMORY[0x277C5FB60](v5);
        sub_2749FCE24();
        return sub_2749FDE44();
      case 3:
        if (v1 | v2)
        {
          v4 = 4;
        }

        else
        {
          v4 = 2;
        }

        goto LABEL_11;
      default:
        MEMORY[0x277C5FB60](0);
        v4 = 0;
LABEL_11:
        MEMORY[0x277C5FB60](v4);
        break;
    }
  }

  return sub_2749FDE44();
}
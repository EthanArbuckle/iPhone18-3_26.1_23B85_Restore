uint64_t sub_1E38BAA20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38BAA90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E38BAAFC()
{
  result = qword_1ECF2CE38;
  if (!qword_1ECF2CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CE38);
  }

  return result;
}

unint64_t sub_1E38BAB54()
{
  result = qword_1ECF2CE40;
  if (!qword_1ECF2CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CE40);
  }

  return result;
}

uint64_t _s15LocalizationKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC9)
  {
    if (a2 + 55 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 55) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 56;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x38;
  v5 = v6 - 56;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s15LocalizationKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 55 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 55) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC8)
  {
    v6 = ((a2 - 201) >> 8) + 1;
    *result = a2 + 55;
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
          *result = a2 + 55;
        }

        break;
    }
  }

  return result;
}

uint64_t _s17LocalizationTokenOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s17LocalizationTokenOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

double sub_1E38BAE74@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1;
  *(a1 + 41) = 2;
  return result;
}

uint64_t sub_1E38BAEA8@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>)
{
  *a8 = result;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 8) = a9;
  *(a8 + 16) = a10;
  *(a8 + 24) = a11;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5 & 1;
  *(a8 + 41) = a6;
  *(a8 + 42) = a7;
  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E38BAEF4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[43])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1E38BAF40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E38BAFB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E38BB024@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1136))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E38BB0A4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_82();
  return sub_1E4200684();
}

uint64_t sub_1E38BB110()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E38BB178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_77();
  v6();
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1E38BB2D4(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_38_13();
  v2 = OUTLINED_FUNCTION_114_0();
  sub_1E32752B0(v2, v3);
  return sub_1E42006B4();
}

uint64_t *sub_1E38BB350()
{
  OUTLINED_FUNCTION_8();
  v5 = (*(v0 + 1520))();
  v1 = OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_82();
  sub_1E32752B0(v2, v3);
  sub_1E42006B4();
  OUTLINED_FUNCTION_50();

  return &v5;
}

void *sub_1E38BB3F8()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 1656))();
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__routerDataSource);
  v3 = v2;
  return v2;
}

uint64_t sub_1E38BB460()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1496))(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_50();
  sub_1E4207944();
  OUTLINED_FUNCTION_60_0();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E38BB4DC()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1496))(v4);
  OUTLINED_FUNCTION_70(v4);
  v1 = OUTLINED_FUNCTION_26_1();
  v2(v1);
  OUTLINED_FUNCTION_60_0();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E38BB564()
{
  type metadata accessor for LibLockupViewModel();
  if (!swift_dynamicCastClass())
  {
    v19 = 0;
    return v19 & 1;
  }

  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 464);

  v4 = v2(v3);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_15:
    OUTLINED_FUNCTION_12_6();
    v12 = *(v11 + 464);

    v14 = v12(v13);

    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v33[0] = MEMORY[0x1E69E7CC0];
      result = sub_1E32AE9B0(v14);
      v16 = result;
      for (i = 0; v16 != i; ++i)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1E6911E60](i, v14);
          v18 = result;
        }

        else
        {
          if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v18 = *(v14 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_41;
        }

        LOWORD(v32[0]) = *(v18 + 98);
        v34 = 67;
        sub_1E3741534();
        if (sub_1E4205E84())
        {
        }

        else
        {
          sub_1E4207544();
          sub_1E4207584();
          sub_1E4207594();
          result = sub_1E4207554();
        }
      }

      v15 = v33[0];
    }

    OUTLINED_FUNCTION_12_6();
    (*(v20 + 1496))(v33);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    OUTLINED_FUNCTION_27_18();
    v21 = OUTLINED_FUNCTION_75();
    v23 = v22(v21);
    v25 = v24;
    (*(*v0 + 1496))(v32);
    v26 = v32[4];
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    OUTLINED_FUNCTION_66_4();
    v27 = OUTLINED_FUNCTION_38();
    if (v23 == v28(v27, v26) && v25 == v29)
    {

      __swift_destroy_boxed_opaque_existential_1(v32);
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      v31 = OUTLINED_FUNCTION_97_0();

      __swift_destroy_boxed_opaque_existential_1(v32);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v19 = 0;
      if ((v31 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v19 = sub_1E38BBA04(v5, v15);
LABEL_37:

    return v19 & 1;
  }

  v6 = v4;
  v33[0] = MEMORY[0x1E69E7CC0];
  result = sub_1E32AE9B0(v4);
  v8 = result;
  for (j = 0; ; ++j)
  {
    if (v8 == j)
    {

      v5 = v33[0];
      goto LABEL_15;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](j, v6);
      v10 = result;
    }

    else
    {
      if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v10 = *(v6 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    LOWORD(v32[0]) = *(v10 + 98);
    v34 = 67;
    sub_1E3741534();
    if (sub_1E4205E84())
    {
    }

    else
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      result = sub_1E4207554();
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for LibLockupViewModel()
{
  result = qword_1EE2A0940;
  if (!qword_1EE2A0940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38BBA04(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v14 = 0;
      return v14 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v14 = 1;
      return v14 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for ViewModel();
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }
      }

      sub_1E38C7288(&qword_1EE23BA60, type metadata accessor for ViewModel);
      v14 = sub_1E4205E84();

      if (v14)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v14 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E38BBC10()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1664))();
}

uint64_t sub_1E38BBC68()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1496))(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58);
  OUTLINED_FUNCTION_44_22(v1, v2, v3, v4, v5, v6, v7, v8, v11[0]);
  v9 = OUTLINED_FUNCTION_102_0();
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
    LOBYTE(v9) = sub_1E38BBD0C();
  }

  return v9 & 1;
}

uint64_t sub_1E38BBD0C()
{
  sub_1E37D4BA4();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

uint64_t sub_1E38BBDBC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E38BBE00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_contextMenuPreviewItem;
  OUTLINED_FUNCTION_57_2();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E38BBEAC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_mediaEntity;
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E38C6028(v1 + v3, a1);
}

uint64_t sub_1E38BBEFC(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_mediaEntity;
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_11_3();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_1E3251BE8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E38BBF58()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E38BBF9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_imageLoadedSubject;
  OUTLINED_FUNCTION_57_2();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E38BBFF0()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1496))(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
  OUTLINED_FUNCTION_44_22(v1, v2, v3, v4, v5, v6, v7, v8, *&v17[0]);
  if (OUTLINED_FUNCTION_90_0())
  {
    sub_1E3251BE8(v17, v19);
    v9 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v10 = OUTLINED_FUNCTION_38();
    v11(v10, v9);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
    sub_1E325F7FC(v17, &qword_1ECF2CE78);
    sub_1E41FE5D4();
    OUTLINED_FUNCTION_32_2();
    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }
}

void sub_1E38BC104()
{
  swift_allocObject();
  OUTLINED_FUNCTION_35_0();
  sub_1E38BC16C();
}

void sub_1E38BC16C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v53 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__isDownloadInProgress;
  LOBYTE(v57[0]) = 0;
  sub_1E4200634();
  (*(v13 + 32))(v1 + v17, v16, v11);
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_contextMenuPreviewItem) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_isViewModelConstructed) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__routerDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__contextMenuItemViewModels) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__attributes) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_playbackUIBeingShownDidChangeObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadStateObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_episodeDownloadingStatusStateObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_didQueryDownloadInfo) = 0;
  v18 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_childrenUpdatedSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  swift_allocObject();
  *(v1 + v18) = sub_1E4200544();
  v19 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_imageLoadedSubject;
  swift_allocObject();
  *(v1 + v19) = sub_1E4200544();
  v20 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_contextMenuUpdateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE48);
  swift_allocObject();
  *(v1 + v20) = sub_1E4200544();
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_1E38C6028(v10, v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_mediaEntity);
  *(v1 + 328) = v8;
  *(v1 + 312) = v6;
  *(v1 + 320) = v4;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v25 = OUTLINED_FUNCTION_25_27();
  v27 = v26(v25);
  v29 = v28;
  *(v1 + 296) = v27;
  *(v1 + 304) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E4299720;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;

  sub_1E3A8ADF4(v8);
  *(v30 + 48) = v31;
  *(v30 + 56) = v32;
  v57[0] = v30;
  v33 = &unk_1E429CDD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  OUTLINED_FUNCTION_68_3();
  sub_1E32752B0(v34, v35);
  v36 = v57;
  sub_1E4205DF4();
  OUTLINED_FUNCTION_134_2();

  v54 = v57;
  v55 = &unk_1E429CDD0;
  if (v53)
  {
    MEMORY[0x1E69109E0](0x79746F746F72702ELL, 0xEA00000000006570);
    v36 = v54;
    v33 = v55;
  }

  *(v1 + 280) = v36;
  *(v1 + 288) = v33;

  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_21_7();
  v42 = sub_1E3B76D04(v37, v38, v39, v40, v41, 0, 0);
  if (v42)
  {
    type metadata accessor for Accessibility();
    OUTLINED_FUNCTION_38();

    v43 = sub_1E40A92F0();
    (*(*v42 + 328))(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    sub_1E3853DA8(21);
    *(inited + 32) = v45;
    *(inited + 40) = v46;
    *(inited + 48) = sub_1E38C1020() & 1;
    v47 = sub_1E4205CB4();
    sub_1E3855E78();
    swift_isUniquelyReferenced_nonNull_native();
    v56 = v47;
    OUTLINED_FUNCTION_90();
    sub_1E38C5B64(v48, v49, v50);

    v51 = sub_1E38C10D0(v56);

    *(v42 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__attributes) = v51;

    sub_1E38BC5F4();
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38BC5F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEC0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v50 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v48 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEC8);
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  OUTLINED_FUNCTION_5_7();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v43 - v26;
  (*(*v0 + 1496))(&v52, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
  if (OUTLINED_FUNCTION_90_0())
  {
    __swift_destroy_boxed_opaque_existential_1(&v51);
    if (sub_1E38BBD0C() & 1) != 0 || (sub_1E38BBD0C())
    {
      v46 = v23;
      v47 = v21;
      v45 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_playbackUIBeingShownDidChangeObserver;
      if (*(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_playbackUIBeingShownDidChangeObserver))
      {

        sub_1E42004E4();
      }

      v28 = [objc_opt_self() defaultCenter];
      v29 = VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0];
      v30 = objc_opt_self();
      v31 = v29;
      v32 = [v30 sharedInstance];
      sub_1E4206C14();

      sub_1E4207074();
      OUTLINED_FUNCTION_32_2();
      v44 = v9;
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v9);
      v36 = [objc_opt_self() mainRunLoop];
      v52 = v36;
      sub_1E4207054();
      v37 = v49;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
      sub_1E3280A90(0, &qword_1EE23AD08);
      sub_1E38C7288(&qword_1EE23B130, MEMORY[0x1E6969F20]);
      sub_1E3782CC4();
      sub_1E4200784();
      sub_1E325F7FC(v37, &unk_1ECF3DB30);

      sub_1E325F7FC(v8, &qword_1ECF2CEC0);
      (*(v50 + 8))(v14, v44);
      (*(v48 + 8))(v20, v15);
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      swift_weakInit();
      sub_1E32752B0(&qword_1ECF2CED0, &qword_1ECF2CEC8);
      v42 = v47;
      sub_1E4200844();
      OUTLINED_FUNCTION_38();

      (*(v46 + 8))(v27, v42);
      *(v1 + v45) = v27;
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38BCB54()
{

  v1 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__isDownloadInProgress;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_37_1();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_mediaEntity);

  return sub_1E325F7FC(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__lastKnownDownloadExpirationDate, &unk_1ECF28E20);
}

uint64_t sub_1E38BCC94()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadStateObserver))
  {

    sub_1E42004E4();
  }

  if (*(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_episodeDownloadingStatusStateObserver))
  {

    sub_1E42004E4();
  }

  if (*(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_playbackUIBeingShownDidChangeObserver))
  {

    sub_1E42004E4();
  }

  v1 = sub_1E3B7736C();

  v2 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__isDownloadInProgress;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_37_1();
  (*(v3 + 8))(v1 + v2);

  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_mediaEntity);

  sub_1E325F7FC(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__lastKnownDownloadExpirationDate, &unk_1ECF28E20);
  return v1;
}

uint64_t sub_1E38BCE54()
{
  v0 = sub_1E38BCC94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E38BCEE4(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_8();
  v5 += 187;
  v6 = *v5;
  (*v5)(v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  OUTLINED_FUNCTION_106();
  type metadata accessor for LibMPBaseMediaEntity();
  if (OUTLINED_FUNCTION_90_0())
  {
    OUTLINED_FUNCTION_8();
    v8 = (*(v7 + 464))();

    if (v8)
    {
      *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_didQueryDownloadInfo) = 1;
      return;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_didQueryDownloadInfo))
  {
    return;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_didQueryDownloadInfo) = 1;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (*(a1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadStateObserver))
  {

    sub_1E42004E4();
  }

  v9 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel;
  v10 = *(a1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
LABEL_10:
    sub_1E3280A90(0, &qword_1EE23AFA0);
    v6(v112);
    v111 = 0;
    v109 = 0u;
    v110 = 0u;
    v10 = sub_1E3BFF560(v112, &v109);
    v9 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel;
  }

  v12 = *(v3 + v9);
  *(v3 + v9) = v10;

  v13 = sub_1E38BD704();
  (v6)(v112, v13);
  v14 = *(v3 + v9);
  v15 = *v3 + 1632;
  v16 = *v15;
  v17 = v14;
  v18 = v16(v112, v14);

  __swift_destroy_boxed_opaque_existential_1(v112);
  if (!v18)
  {
LABEL_94:
    *(v3 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__contextMenuItemViewModels) = 0;

    v92 = *(*v3 + 1216);

    v94 = v92(v93);
    if (v94)
    {
      v95 = v94;
    }

    else
    {
      v95 = MEMORY[0x1E69E7CC0];
    }

    v112[0] = v95;
    sub_1E4200524();

    return;
  }

  if ((sub_1E373F6E0() & 1) == 0 || (v97 = v18, OUTLINED_FUNCTION_111(), (v20 = (*(v19 + 464))()) == 0))
  {
LABEL_93:

    goto LABEL_94;
  }

  v21 = v20;
  v108 = v20;
  v22 = 0;
  v102 = v20 & 0xC000000000000001;
  v103 = sub_1E32AE9B0(v20);
  v101 = v21 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v103 == v22)
    {
LABEL_85:
      v100 = sub_1E32AE9B0(v21);
      goto LABEL_86;
    }

    if (v102)
    {
      v24 = v22;
      v46 = OUTLINED_FUNCTION_75();
      v25 = MEMORY[0x1E6911E60](v46);
    }

    else
    {
      v23 = *(v101 + 16);
      if (v22 >= v23)
      {
        goto LABEL_102;
      }

      v24 = v22;
      v25 = *(v21 + 8 * v22 + 32);
    }

    v26 = *(v25 + 98);
    HIWORD(v107) = v26;
    WORD2(v107) = 63;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_125();
    sub_1E4206254();
    OUTLINED_FUNCTION_128_3();
    OUTLINED_FUNCTION_125();
    v27 = sub_1E4206254();
    OUTLINED_FUNCTION_46_13(v27, v28, v29, v30, v31, v32, v33, v34, v96, v97, v98, v101, v102, v103, v107, v108, v109, *(&v109 + 1), v110, *(&v110 + 1), v111, v112[0]);
    v35 = v35 && v2 == &v107 + 6;
    if (v35)
    {
      break;
    }

    OUTLINED_FUNCTION_71_11();
    OUTLINED_FUNCTION_158_2();

    if (v15)
    {
      goto LABEL_36;
    }

    HIWORD(v107) = v26;
    OUTLINED_FUNCTION_92_4();
    OUTLINED_FUNCTION_125();
    sub_1E4206254();
    OUTLINED_FUNCTION_128_3();
    OUTLINED_FUNCTION_125();
    v36 = sub_1E4206254();
    OUTLINED_FUNCTION_46_13(v36, v37, v38, v39, v40, v41, v42, v43, v96, v97, v99, v101, v102, v104, v107, v108, v109, *(&v109 + 1), v110, *(&v110 + 1), v111, v112[0]);
    if (v35 && v2 == &v107 + 6)
    {
      break;
    }

    OUTLINED_FUNCTION_71_11();
    OUTLINED_FUNCTION_158_2();

    v45 = v24;
    if (v15)
    {
      goto LABEL_37;
    }

    v22 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_103;
    }
  }

LABEL_36:

  v45 = v24;
LABEL_37:
  v47 = v45 + 1;
  if (!__OFADD__(v45, 1))
  {
    v100 = v45;
    if (v47 != sub_1E32AE9B0(v21))
    {
      v48 = v45 + 5;
      while (1)
      {
        v49 = v48 - 4;
        if ((v21 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x1E6911E60](v48 - 4, v21);
        }

        else
        {
          if ((v49 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_131_4();
          if (v49 >= v23)
          {
            goto LABEL_100;
          }

          v50 = *(v21 + 8 * v48);
        }

        v51 = *(v50 + 98);
        HIWORD(v107) = v51;
        OUTLINED_FUNCTION_92_4();
        OUTLINED_FUNCTION_58_1();
        sub_1E4206254();
        OUTLINED_FUNCTION_128_3();
        OUTLINED_FUNCTION_58_1();
        v52 = sub_1E4206254();
        OUTLINED_FUNCTION_46_13(v52, v53, v54, v55, v56, v57, v58, v59, v96, v97, v100, v101, v102, v21 & 0xC000000000000001, v107, v108, v109, *(&v109 + 1), v110, *(&v110 + 1), v111, v112[0]);
        if (v35 && v2 == v47)
        {
          break;
        }

        OUTLINED_FUNCTION_71_11();
        OUTLINED_FUNCTION_158_2();

        if (&qword_1F5D5CE68)
        {
          goto LABEL_58;
        }

        HIWORD(v107) = v51;
        OUTLINED_FUNCTION_92_4();
        OUTLINED_FUNCTION_58_1();
        sub_1E4206254();
        OUTLINED_FUNCTION_128_3();
        OUTLINED_FUNCTION_58_1();
        v61 = sub_1E4206254();
        OUTLINED_FUNCTION_46_13(v61, v62, v63, v64, v65, v66, v67, v68, v96, v97, v100, v101, v102, v105, v107, v108, v109, *(&v109 + 1), v110, *(&v110 + 1), v111, v112[0]);
        if (v35 && v2 == v47)
        {
          break;
        }

        OUTLINED_FUNCTION_71_11();
        OUTLINED_FUNCTION_158_2();

        if ((&qword_1F5D5CE68 & 1) == 0)
        {
          if (v49 != v100)
          {
            if (v106)
            {
              MEMORY[0x1E6911E60](v100, v21);
              v70 = OUTLINED_FUNCTION_76();
              v71 = MEMORY[0x1E6911E60](v70, v21);
            }

            else
            {
              if (v100 < 0)
              {
                goto LABEL_113;
              }

              OUTLINED_FUNCTION_131_4();
              if (v74 >= v73)
              {
                goto LABEL_114;
              }

              if (v49 >= v73)
              {
                goto LABEL_115;
              }

              v47 = *(v21 + 8 * v100 + 32);
              v71 = *(v21 + 8 * v48);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
            {
              v21 = sub_1E37EFA58(v21);
              v75 = (v21 >> 62) & 1;
            }

            else
            {
              LODWORD(v75) = 0;
            }

            v76 = v21 & 0xFFFFFFFFFFFFFF8;
            *((v21 & 0xFFFFFFFFFFFFFF8) + 8 * v100 + 0x20) = v71;

            if ((v21 & 0x8000000000000000) != 0 || v75)
            {
              v21 = sub_1E37EFA58(v21);
              v76 = v21 & 0xFFFFFFFFFFFFFF8;
              if ((v49 & 0x8000000000000000) != 0)
              {
LABEL_84:
                __break(1u);
                goto LABEL_85;
              }
            }

            else if ((v49 & 0x8000000000000000) != 0)
            {
              goto LABEL_84;
            }

            if (v49 >= *(v76 + 16))
            {
              goto LABEL_112;
            }

            *(v76 + 8 * v48) = v47;

            v108 = v21;
          }

          v77 = __OFADD__(v100, 1);
          v23 = ++v100;
          if (v77)
          {
            goto LABEL_111;
          }
        }

LABEL_59:
        v47 = v48 - 3;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_101;
        }

        if (v21 >> 62)
        {
          v72 = sub_1E4207384();
        }

        else
        {
          v23 = v21 & 0xFFFFFFFFFFFFFF8;
          v72 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v48;
        if (v47 == v72)
        {
          goto LABEL_86;
        }
      }

LABEL_58:

      goto LABEL_59;
    }

LABEL_86:
    v78 = sub_1E32AE9B0(v21);
    v79 = v78 - v100;
    if (v78 < v100)
    {
      goto LABEL_104;
    }

    if (v100 < 0)
    {
LABEL_105:
      __break(1u);
    }

    else if (sub_1E32AE9B0(v21) >= v78)
    {
      v77 = __OFSUB__(0, v79);
      v80 = -v79;
      if (!v77)
      {
        v81 = sub_1E32AE9B0(v21);
        v77 = __OFADD__(v81, v80);
        v82 = v81 + v80;
        if (!v77)
        {
          sub_1E3797CDC(v82);
          v83 = OUTLINED_FUNCTION_58_1();
          sub_1E3882B54(v83, v84, 0);

          MEMORY[0x1E6910BF0](v85);
          OUTLINED_FUNCTION_104_1();
          v87 = *(v86 + 16);
          v23 = *(v86 + 24);
          if (v87 < v23 >> 1)
          {
LABEL_92:
            OUTLINED_FUNCTION_125();
            sub_1E4206324();
            OUTLINED_FUNCTION_111();
            (*(v88 + 472))();

            v89 = OUTLINED_FUNCTION_34();
            __swift_instantiateConcreteTypeFromMangledNameV2(v89);
            OUTLINED_FUNCTION_3_59();
            OUTLINED_FUNCTION_55_0();
            sub_1E32752B0(v90, v91);
            OUTLINED_FUNCTION_138_1();
            sub_1E4200624();

            goto LABEL_93;
          }

LABEL_109:
          OUTLINED_FUNCTION_35(v23);
          OUTLINED_FUNCTION_154_2();
          goto LABEL_92;
        }

LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    __break(1u);
    goto LABEL_107;
  }

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
}

uint64_t sub_1E38BD704()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E40A0988();

    v9 = v4;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEB8);
    OUTLINED_FUNCTION_68_3();
    sub_1E32752B0(v5, v6);
    v7 = &v9;
    sub_1E4200844();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v7 = 0;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadStateObserver) = v7;
}

uint64_t sub_1E38BD81C(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_8();
  v4 += 187;
  v5 = *v4;
  (*v4)(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  OUTLINED_FUNCTION_144_0();
  v6 = type metadata accessor for LibMPBaseMediaEntity();
  OUTLINED_FUNCTION_44_22(v6, v7, v8, v9, v10, v11, v12, v13, v40[0]);
  if (OUTLINED_FUNCTION_99_5())
  {
    OUTLINED_FUNCTION_8();
    v15 = (*(v14 + 464))();

    if (v15)
    {
      *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_didQueryDownloadInfo) = 1;
      v16 = *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel);
      *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel) = 0;

      return 0;
    }
  }

  if ((OUTLINED_FUNCTION_157_2() & 1) == 0)
  {
    sub_1E38C6028(a1, v41);
    v17 = type metadata accessor for LibMPPlayableMediaEntity();
    OUTLINED_FUNCTION_44_22(v17, v18, v19, v20, v21, v22, v23, v24, v40[0]);
    if (!OUTLINED_FUNCTION_99_5())
    {
      return 0;
    }
  }

  sub_1E3280A90(0, &qword_1EE23AFA0);
  v5(v41);
  OUTLINED_FUNCTION_28_0();
  v25 = sub_1E3BFF560(v41, v40);
  v26 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel;
  v27 = *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel);
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel) = v25;

  v28 = sub_1E38BD704();
  *(v1 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_didQueryDownloadInfo) = 1;
  (v5)(v41, v28);
  v29 = *(v1 + v26);
  v30 = *(*v2 + 1632);
  v31 = v29;
  v32 = v30(v41, v29);

  __swift_destroy_boxed_opaque_existential_1(v41);
  if (!v32)
  {
    return 0;
  }

  type metadata accessor for LibDownloadButtonViewModel();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {

    return 0;
  }

  v34 = *(v33 + 280);
  if (v2[3])
  {
    v35 = v2[2];
    v36 = v2[3];
  }

  else
  {
    v36 = 0x80000001E4266310;
    v35 = 0xD000000000000012;
  }

  type metadata accessor for DownloadStateIndicatorViewModel();
  sub_1E38C6028(a1, v41);

  v38 = v34;
  OUTLINED_FUNCTION_87_0();

  v37 = sub_1E4173E90(233, a1, v35, v36, v2, v41);

  return v37;
}

void sub_1E38BDAE8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  if (v4)
  {
    type metadata accessor for LibDownloadButtonViewModel();
    OUTLINED_FUNCTION_111();
    v7 = *(v6 + 1496);
    v4;
    OUTLINED_FUNCTION_121_4();
    v7();
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v8 = OUTLINED_FUNCTION_24_4();
    v9(v8);
    OUTLINED_FUNCTION_134_2();

    OUTLINED_FUNCTION_68_3();
    sub_1E38F5CC8(v10, v11, v12, v2);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v31);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_111();
  v14 = *(v13 + 1496);
  OUTLINED_FUNCTION_121_4();
  v14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
  if (OUTLINED_FUNCTION_90_0())
  {
    __swift_destroy_boxed_opaque_existential_1(&v30);
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_121_4();
    v14();
    __swift_project_boxed_opaque_existential_1(v31, v32);
    OUTLINED_FUNCTION_27_18();
    v15 = OUTLINED_FUNCTION_75();
    v16(v15);

    sub_1E39C02B0();
    goto LABEL_5;
  }

  sub_1E41A3110();
  OUTLINED_FUNCTION_4_32();
  v17(v1);

  v18 = sub_1E41FFC94();
  v19 = sub_1E42067F4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_6_21();
    v29 = OUTLINED_FUNCTION_100();
    v30 = v29;
    *v20 = 136315138;
    OUTLINED_FUNCTION_121_4();
    v14();
    __swift_project_boxed_opaque_existential_1(v31, v32);
    OUTLINED_FUNCTION_50();
    sub_1E4207944();
    OUTLINED_FUNCTION_60_0();
    __swift_destroy_boxed_opaque_existential_1(v31);
    v21 = OUTLINED_FUNCTION_32_0();
    v24 = sub_1E3270FC8(v21, v22, v23);

    *(v20 + 4) = v24;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v25, v26, "ONLY have movies and shows in Downloaded Menu. This entity %s should not be here");
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();
  }

  v27 = OUTLINED_FUNCTION_74();
  v28(v27);
LABEL_6:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38BDE10()
{
  OUTLINED_FUNCTION_31_1();
  p_isa = v0;
  v3 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE60);
  OUTLINED_FUNCTION_0_10();
  *&v260 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v259 = sub_1E41FE4A4();
  OUTLINED_FUNCTION_0_10();
  v258 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  isUniquelyReferenced_nonNull_native = v13 - v12;
  v15 = sub_1E41FE4C4();
  OUTLINED_FUNCTION_0_10();
  v257 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v21);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v252 - v23;
  if (*(p_isa + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_isViewModelConstructed))
  {
LABEL_148:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v252 = v7;
  v253 = v5;
  v254 = v3;
  v255 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_isViewModelConstructed;
  v25 = MEMORY[0x1E69E7CC0];
  v269 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11_13();
  v265 = *(v26 + 1496);
  v266 = v26 + 1496;
  (v265)(&v274);
  v27 = sub_1E38BD81C(&v274);
  v28 = __swift_destroy_boxed_opaque_existential_1(&v274);
  if (v27)
  {
    MEMORY[0x1E6910BF0](v28);
    OUTLINED_FUNCTION_1_82();
    if (v29)
    {
LABEL_152:
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    OUTLINED_FUNCTION_14_49();
  }

  else
  {
    v263 = v25;
  }

  OUTLINED_FUNCTION_9_45();
  v30();
  v264 = p_isa;
  v31 = sub_1E38BFABC(&v274);
  __swift_destroy_boxed_opaque_existential_1(&v274);
  v32 = MEMORY[0x1E69E7CC8];
  if (v31)
  {
    if ([objc_opt_self() isTV] && (sub_1E39DFFC0() & 1) != 0)
    {

      swift_isUniquelyReferenced_nonNull_native();
      v274 = v32;
      sub_1E37518B8(v31, 39);

      v32 = v274;
    }

    else
    {
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_5_62();
      OUTLINED_FUNCTION_129_2();
      if (v29)
      {
        OUTLINED_FUNCTION_35(v33);
        OUTLINED_FUNCTION_156_3();
      }

      sub_1E4206324();
      v32 = MEMORY[0x1E69E7CC8];
      OUTLINED_FUNCTION_14_49();
    }
  }

  v261 = v32;
  v34 = sub_1E39DFFC0();
  v256 = v1;
  if (v34)
  {
    v35 = v264;
    (v265)(&v271);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
    OUTLINED_FUNCTION_91_4();
    if (OUTLINED_FUNCTION_102_0())
    {
      v37 = OUTLINED_FUNCTION_127_3();
      sub_1E3251BE8(v37, v38);
      sub_1E38BFF5C(&v274);
      if (v39)
      {
        OUTLINED_FUNCTION_60_0();
        type metadata accessor for TextViewModel();
        v273 = MEMORY[0x1E69E6158];
        v271 = v36;
        v272 = v35;

        OUTLINED_FUNCTION_21_7();
        if (sub_1E3C27638(v40, v41, v42, v43, v44))
        {
          OUTLINED_FUNCTION_118_2();
          OUTLINED_FUNCTION_1_82();
          if (v29)
          {
            OUTLINED_FUNCTION_7_14();
          }

          OUTLINED_FUNCTION_13_8();
          sub_1E4206324();
          OUTLINED_FUNCTION_14_49();
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v274);
    }

    else
    {
      OUTLINED_FUNCTION_4_3();
      sub_1E325F7FC(&v267, &qword_1ECF2CE78);
    }
  }

  v45 = type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_75_4();
  p_isa = *(v46 - 256);
  OUTLINED_FUNCTION_9_45();
  v47();
  OUTLINED_FUNCTION_70(&v274);
  v48 = OUTLINED_FUNCTION_26_1();
  v50 = v49(v48);
  v273 = MEMORY[0x1E69E6158];
  v271 = v50;
  v272 = v51;

  OUTLINED_FUNCTION_12_40();
  *(v52 - 256) = v45;
  v58 = sub_1E3C27638(v53, v54, v55, v56, v57);
  v59 = __swift_destroy_boxed_opaque_existential_1(&v274);
  if (v58)
  {
    MEMORY[0x1E6910BF0](v59);
    OUTLINED_FUNCTION_1_82();
    if (v29)
    {
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    OUTLINED_FUNCTION_14_49();
  }

  if ((sub_1E39DFFC0() & 1) == 0)
  {
    goto LABEL_28;
  }

  LOBYTE(v274) = *(v264 + 328);
  LOBYTE(v271) = 10;
  sub_1E37DA4B8();
  if (sub_1E4205E84())
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_75_4();
  v67 = v265;
  p_isa = v266;
  (v265)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
  OUTLINED_FUNCTION_43_14();
  if (OUTLINED_FUNCTION_102_0())
  {
    __swift_destroy_boxed_opaque_existential_1(&v271);
  }

  else
  {
    v67(&v274);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
    OUTLINED_FUNCTION_43_14();
    if (OUTLINED_FUNCTION_102_0())
    {
      __swift_destroy_boxed_opaque_existential_1(&v271);
LABEL_28:
      OUTLINED_FUNCTION_13_51();
      v20 = v265;
      (v265)();
      v60 = sub_1E38C011C(&v274, p_isa);
      __swift_destroy_boxed_opaque_existential_1(&v274);
      v24 = v263;
      if (!v60)
      {
        goto LABEL_48;
      }

      MEMORY[0x1E6910BF0](v61);
      OUTLINED_FUNCTION_5_62();
      OUTLINED_FUNCTION_129_2();
      if (v29)
      {
        OUTLINED_FUNCTION_35(v62);
        OUTLINED_FUNCTION_156_3();
      }

      OUTLINED_FUNCTION_114_0();
      sub_1E4206324();
      v24 = v269;
      if (*v60 == _TtC8VideosUI31LibDownloadingEpisodesViewModel)
      {
        v63 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_episodeDownloadingStatusStateObserver;
        if (*(v264 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_episodeDownloadingStatusStateObserver))
        {

          sub_1E42004E4();
        }

        sub_1E3DC7F30();
        OUTLINED_FUNCTION_4_0();
        swift_allocObject();
        OUTLINED_FUNCTION_106_5();
        swift_weakInit();
        sub_1E32752B0(&qword_1ECF2CE80, &qword_1ECF2CE60);
        v64 = sub_1E4200844();

        OUTLINED_FUNCTION_15_5();
        v65 = OUTLINED_FUNCTION_105_3();
        v66(v65);
        *(p_isa + v63) = v64;

        goto LABEL_48;
      }

LABEL_36:
      OUTLINED_FUNCTION_106_5();
      goto LABEL_48;
    }
  }

  OUTLINED_FUNCTION_75_4();
  p_isa = *(v68 - 256);
  OUTLINED_FUNCTION_9_45();
  v69();
  v70 = v276;
  __swift_project_boxed_opaque_existential_1(&v274, v276);
  v71 = OUTLINED_FUNCTION_26_1();
  v72(v71);
  v73 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_21_2(v24);
  if (v74)
  {
    __swift_destroy_boxed_opaque_existential_1(&v274);
    sub_1E325F7FC(v24, &unk_1ECF28E20);
    OUTLINED_FUNCTION_72_10();
    goto LABEL_48;
  }

  sub_1E41FE4B4();
  sub_1E41FE494();
  sub_1E41FE5B4();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_15_5();
  v75(isUniquelyReferenced_nonNull_native, v259);
  OUTLINED_FUNCTION_15_5();
  v76(v20, v15);
  OUTLINED_FUNCTION_37_1();
  (*(v77 + 8))(v24, v73);
  __swift_destroy_boxed_opaque_existential_1(&v274);
  v276 = MEMORY[0x1E69E6158];
  v274 = v70;
  v275 = v24;

  OUTLINED_FUNCTION_12_40();
  sub_1E3C27638(v78, v79, v80, v81, v82);
  OUTLINED_FUNCTION_72_10();
  if (v83)
  {
    OUTLINED_FUNCTION_118_2();
    OUTLINED_FUNCTION_1_82();
    if (v29)
    {
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    OUTLINED_FUNCTION_54_8();
    goto LABEL_36;
  }

LABEL_48:
  OUTLINED_FUNCTION_53_16();
  v20();
  sub_1E38C0444();
  v85 = v84;
  __swift_destroy_boxed_opaque_existential_1(&v274);
  if (v85)
  {
    v86 = [objc_opt_self() isTV];
    v87 = MEMORY[0x1E69E7CC0];
    if (v86 && (sub_1E39DFFC0() & 1) != 0)
    {

      v88 = v261;
      swift_isUniquelyReferenced_nonNull_native();
      v274 = v88;
      sub_1E37518B8(v85, 57);

      v261 = v274;
    }

    else
    {
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_5_62();
      OUTLINED_FUNCTION_129_2();
      if (v29)
      {
        OUTLINED_FUNCTION_35(v89);
        OUTLINED_FUNCTION_156_3();
      }

      OUTLINED_FUNCTION_114_0();
      sub_1E4206324();
      OUTLINED_FUNCTION_54_8();
    }
  }

  else
  {
    v87 = MEMORY[0x1E69E7CC0];
  }

  if ((sub_1E39DFFC0() & 1) == 0)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_75_4();
  v91 = *(v90 - 256);
  v20();
  v92 = v276;
  OUTLINED_FUNCTION_70(&v274);
  v93 = OUTLINED_FUNCTION_26_1();
  v94(v93);
  if (!v95)
  {
    __swift_destroy_boxed_opaque_existential_1(&v274);
LABEL_63:
    v102 = v256;
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_60_0();
  __swift_destroy_boxed_opaque_existential_1(&v274);
  v276 = MEMORY[0x1E69E6158];
  v274 = v92;
  v275 = v91;

  OUTLINED_FUNCTION_12_40();
  v101 = sub_1E3C27638(v96, v97, v98, v99, v100);
  v102 = v256;
  if (v101)
  {
    OUTLINED_FUNCTION_118_2();
    OUTLINED_FUNCTION_1_82();
    if (v29)
    {
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    OUTLINED_FUNCTION_54_8();
  }

LABEL_64:
  v103 = &unk_1E4299000;
  if (sub_1E39DFFC0())
  {
    OUTLINED_FUNCTION_13_51();
    v20();
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
    OUTLINED_FUNCTION_127_3();
    if (OUTLINED_FUNCTION_103_4())
    {
      v105 = v102;
      sub_1E3251BE8(&v267, &v271);
      v270 = v87;
      type metadata accessor for ViewModel();

      v106 = sub_1E39C02B0();
      v107 = v87;
      if (sub_1E38BBD0C())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_117(inited, xmmword_1E4299720);
        inited[2].n128_u64[0] = v109;
        inited[2].n128_u64[1] = v110;
        inited[3].n128_u64[0] = 25705;
        inited[3].n128_u64[1] = 0xE200000000000000;
        inited[4].n128_u64[0] = sub_1E3C7CCAC(0);
        inited[4].n128_u64[1] = v111;
        OUTLINED_FUNCTION_51_13();
        inited[5].n128_u64[0] = v112 + 2;
        inited[5].n128_u64[1] = v113;
        sub_1E4205CB4();
        type metadata accessor for ImageViewModel();
        v114 = OUTLINED_FUNCTION_50();
        sub_1E3797720(v114);
        OUTLINED_FUNCTION_87_0();

        if (sub_1E3F5321C(39, v104, 0))
        {
          MEMORY[0x1E6910BF0]();
          OUTLINED_FUNCTION_2_61();
          if (v29)
          {
            OUTLINED_FUNCTION_7_14();
          }

          OUTLINED_FUNCTION_13_8();
          sub_1E4206324();
          v107 = v270;
        }

        else
        {
          v107 = MEMORY[0x1E69E7CC0];
        }
      }

      OUTLINED_FUNCTION_70(&v271);
      v127 = OUTLINED_FUNCTION_26_1();
      v129 = v128(v127);
      sub_1E38C4D2C(v129);
      v268 = MEMORY[0x1E69E6158];
      *&v267 = v130;
      *(&v267 + 1) = v131;

      OUTLINED_FUNCTION_12_40();
      sub_1E3C27638(v132, v133, v134, v135, v136);
      OUTLINED_FUNCTION_106_5();
      if (v137)
      {
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_2_61();
        if (v29)
        {
          OUTLINED_FUNCTION_7_14();
        }

        OUTLINED_FUNCTION_13_8();
        sub_1E4206324();
        v107 = v270;
      }

      if (v106)
      {
        OUTLINED_FUNCTION_12_6();
        v139 = *(v138 + 472);

        v139(v107);

        MEMORY[0x1E6910BF0](v140);
        OUTLINED_FUNCTION_5_62();
        OUTLINED_FUNCTION_129_2();
        if (v29)
        {
          OUTLINED_FUNCTION_35(v141);
          OUTLINED_FUNCTION_156_3();
        }

        OUTLINED_FUNCTION_114_0();
        sub_1E4206324();
        OUTLINED_FUNCTION_54_8();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(&v271);
      v102 = v105;
      v103 = &unk_1E4299000;
    }

    else
    {
      OUTLINED_FUNCTION_4_3();
      v115 = sub_1E325F7FC(&v267, &qword_1ECF2CE78);
      (v20)(&v271, v115);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
      OUTLINED_FUNCTION_91_4();
      if (OUTLINED_FUNCTION_103_4())
      {
        v116 = OUTLINED_FUNCTION_127_3();
        sub_1E3251BE8(v116, v117);
        if (sub_1E38C4838(&v274) || (v118 = v276, v119 = v277, OUTLINED_FUNCTION_34_7(&v274, v276), v120 = OUTLINED_FUNCTION_50(), v121(v120), OUTLINED_FUNCTION_60_0(), v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960), v271 = v118, v272 = v119, (*(*p_isa + 624))(), OUTLINED_FUNCTION_12_40(), sub_1E3C27638(v122, v123, v124, v125, v126)))
        {
          OUTLINED_FUNCTION_118_2();
          OUTLINED_FUNCTION_1_82();
          if (v29)
          {
            OUTLINED_FUNCTION_7_14();
          }

          OUTLINED_FUNCTION_13_8();
          sub_1E4206324();
          OUTLINED_FUNCTION_54_8();
        }

        __swift_destroy_boxed_opaque_existential_1(&v274);
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        sub_1E325F7FC(&v267, &qword_1ECF2A778);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_106_5();
  }

  if (sub_1E38C1020())
  {
    type metadata accessor for LibViewModel();
    sub_1E41FE614();
    sub_1E41FE5E4();
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_15_5();
    v142(v102, v254);

    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_45_16();
    if (sub_1E3B76C80(v143, v144, v145, v146, v147, v148, v149))
    {
      OUTLINED_FUNCTION_118_2();
      OUTLINED_FUNCTION_1_82();
      if (v29)
      {
        OUTLINED_FUNCTION_7_14();
      }

      OUTLINED_FUNCTION_13_8();
      sub_1E4206324();
      OUTLINED_FUNCTION_54_8();
    }
  }

  if (sub_1E38BBD0C())
  {
    OUTLINED_FUNCTION_53_16();
    v20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
    OUTLINED_FUNCTION_43_14();
    if (OUTLINED_FUNCTION_99_5())
    {
      __swift_destroy_boxed_opaque_existential_1(&v271);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
      v150 = swift_allocObject();
      OUTLINED_FUNCTION_117(v150, v103[114]);
      v150[2].n128_u64[0] = v151;
      v150[2].n128_u64[1] = v152;
      OUTLINED_FUNCTION_53_16();
      v20();
      v153 = v277;
      __swift_project_boxed_opaque_existential_1(&v274, v276);
      OUTLINED_FUNCTION_66_4();
      v154 = OUTLINED_FUNCTION_50();
      v150[3].n128_u64[0] = v155(v154, v153);
      v150[3].n128_u64[1] = v156;
      v150[4].n128_u64[0] = sub_1E3C7CCAC(0);
      v150[4].n128_u64[1] = v157;
      OUTLINED_FUNCTION_51_13();
      v150[5].n128_u64[0] = v158 + 8;
      v150[5].n128_u64[1] = v159;
      __swift_destroy_boxed_opaque_existential_1(&v274);
      sub_1E4205CB4();
      type metadata accessor for ImageViewModel();
      v160 = OUTLINED_FUNCTION_50();
      sub_1E3797720(v160);
      OUTLINED_FUNCTION_87_0();

      if (sub_1E3F5321C(31, v150, p_isa))
      {
        OUTLINED_FUNCTION_118_2();
        OUTLINED_FUNCTION_1_82();
        if (v29)
        {
          OUTLINED_FUNCTION_7_14();
        }

        OUTLINED_FUNCTION_13_8();
        sub_1E4206324();
        OUTLINED_FUNCTION_54_8();
      }
    }

    (v20)(&v271);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58);
    OUTLINED_FUNCTION_91_4();
    if (OUTLINED_FUNCTION_99_5())
    {
      v161 = OUTLINED_FUNCTION_127_3();
      sub_1E3251BE8(v161, v162);
      sub_1E38C130C();
      if (v163)
      {
        OUTLINED_FUNCTION_118_2();
        OUTLINED_FUNCTION_1_82();
        if (v29)
        {
          OUTLINED_FUNCTION_7_14();
        }

        OUTLINED_FUNCTION_13_8();
        sub_1E4206324();
        OUTLINED_FUNCTION_54_8();
      }

      __swift_destroy_boxed_opaque_existential_1(&v274);
    }

    else
    {
      OUTLINED_FUNCTION_4_3();
      sub_1E325F7FC(&v267, &qword_1ECF2CE70);
    }
  }

  v164 = [objc_opt_self() isTV];
  v165 = v261;
  if (v164 && (sub_1E39DFFC0() & 1) != 0)
  {

    OUTLINED_FUNCTION_11_13();
    (*(v166 + 496))(v165);
  }

  else
  {

    OUTLINED_FUNCTION_11_13();
    (*(v167 + 472))(v24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  v168 = swift_allocObject();
  v260 = xmmword_1E4297BD0;
  *(v168 + 16) = xmmword_1E4297BD0;
  v259 = @"targetId";
  *(v168 + 32) = sub_1E4205F14();
  *(v168 + 40) = v169;
  *(v168 + 48) = sub_1E4205F14();
  *(v168 + 56) = v170;
  v258 = @"targetType";
  *(v168 + 64) = sub_1E4205F14();
  *(v168 + 72) = v171;
  v261 = @"lockup";
  *(v168 + 80) = sub_1E4205F14();
  *(v168 + 88) = v172;
  v257 = @"contentType";
  *(v168 + 96) = sub_1E4205F14();
  *(v168 + 104) = v173;
  v256 = @"library";
  *(v168 + 112) = sub_1E4205F14();
  *(v168 + 120) = v174;
  v20 = MEMORY[0x1E69E6158];
  v175 = sub_1E4205CB4();
  v176 = sub_1E4205F14();
  v178 = v177;
  OUTLINED_FUNCTION_9_45();
  v179();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
  OUTLINED_FUNCTION_43_14();
  if (OUTLINED_FUNCTION_102_0())
  {
    __swift_destroy_boxed_opaque_existential_1(&v271);
  }

  v180 = sub_1E4205F14();
  v182 = v181;
  swift_isUniquelyReferenced_nonNull_native();
  v274 = v175;
  sub_1E38C5C90(v180, v182, v176, v178);

  type metadata accessor for Metrics();
  v183 = sub_1E3BA54D0();
  v184 = (*(*p_isa + 584))(v183);
  if ((*(*p_isa + 576))(v184))
  {
    v185 = OUTLINED_FUNCTION_50();
    sub_1E3797720(v185);
    OUTLINED_FUNCTION_87_0();

    OUTLINED_FUNCTION_8();
    (*(v186 + 184))(v182);
  }

  v274 = 0;
  v275 = 0xE000000000000000;
  sub_1E42074B4();

  OUTLINED_FUNCTION_51_13();
  v274 = (v188 + 7);
  v275 = v187;
  MEMORY[0x1E69109E0](p_isa[37], p_isa[38]);
  v24 = v274;
  isUniquelyReferenced_nonNull_native = v275;
  type metadata accessor for LibViewModel();

  v189 = *sub_1E3C8E1A4();
  v190 = *(*p_isa + 544);

  v190(v191);
  OUTLINED_FUNCTION_10_23();

  v253 = v24;
  v254 = isUniquelyReferenced_nonNull_native;
  v1 = sub_1E3B76C80(230, v24, isUniquelyReferenced_nonNull_native, p_isa, v189, p_isa, 0);
  *&v267 = v87;
  v192 = *p_isa + 1496;
  OUTLINED_FUNCTION_53_16();
  v263 = v193;
  v193();

  v194 = sub_1E38BFABC(&v274);

  v195 = __swift_destroy_boxed_opaque_existential_1(&v274);
  if (v194)
  {
    MEMORY[0x1E6910BF0](v195);
    OUTLINED_FUNCTION_2_61();
    if (v29)
    {
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    v87 = v267;
  }

  OUTLINED_FUNCTION_53_16();
  OUTLINED_FUNCTION_132_2();
  v196();
  OUTLINED_FUNCTION_70(&v274);
  v197 = OUTLINED_FUNCTION_26_1();
  v199 = v198(v197);
  v273 = v20;
  v271 = v199;
  v272 = v200;

  OUTLINED_FUNCTION_12_40();
  v206 = sub_1E3C27638(v201, v202, v203, v204, v205);
  v207 = __swift_destroy_boxed_opaque_existential_1(&v274);
  if (v206)
  {
    MEMORY[0x1E6910BF0](v207);
    OUTLINED_FUNCTION_2_61();
    if (v29)
    {
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    v87 = v267;
  }

  OUTLINED_FUNCTION_53_16();
  OUTLINED_FUNCTION_132_2();
  v208();

  v209 = sub_1E38C011C(&v274, v1);

  v210 = __swift_destroy_boxed_opaque_existential_1(&v274);
  if (v209)
  {
    MEMORY[0x1E6910BF0](v210);
    OUTLINED_FUNCTION_2_61();
    if (v29)
    {
      OUTLINED_FUNCTION_7_14();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();
    v87 = v267;
  }

  if (!v1)
  {

    v228 = 0;
LABEL_144:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    v229 = swift_initStackObject();
    *(v229 + 16) = v260;
    *(v229 + 32) = sub_1E4205F14();
    *(v229 + 40) = v230;
    v231 = v254;
    *(v229 + 48) = v253;
    *(v229 + 56) = v231;
    *(v229 + 64) = sub_1E4205F14();
    *(v229 + 72) = v232;
    *(v229 + 80) = sub_1E4205F14();
    *(v229 + 88) = v233;
    *(v229 + 96) = sub_1E4205F14();
    *(v229 + 104) = v234;
    *(v229 + 112) = sub_1E4205F14();
    *(v229 + 120) = v235;

    v236 = sub_1E4205CB4();
    v237 = sub_1E4205F14();
    v239 = v238;
    OUTLINED_FUNCTION_132_2();
    v240();
    __swift_project_boxed_opaque_existential_1(&v271, v273);
    OUTLINED_FUNCTION_33_24();
    v241 = OUTLINED_FUNCTION_24_4();
    v242(v241);
    swift_isUniquelyReferenced_nonNull_native();
    v270 = v236;
    v243 = OUTLINED_FUNCTION_24_4();
    sub_1E38C5C90(v243, v244, v237, v239);

    v245 = v270;
    __swift_destroy_boxed_opaque_existential_1(&v271);
    if (v228)
    {
      v246 = *(*v228 + 576);

      v246(v247);
      OUTLINED_FUNCTION_55_12();

      sub_1E3797720(v245);
      OUTLINED_FUNCTION_87_0();

      OUTLINED_FUNCTION_8();
      (*(v248 + 184))(v246);

      type metadata accessor for Accessibility();
      OUTLINED_FUNCTION_55_12();

      sub_1E40A7DC8();
      OUTLINED_FUNCTION_60_0();

      v249 = OUTLINED_FUNCTION_32_0();
      v250(v249);
    }

    else
    {
    }

    OUTLINED_FUNCTION_11_13();
    (*(v251 + 1240))(v228);
    *(p_isa + v255) = 1;
    goto LABEL_148;
  }

  v252 = v192;
  OUTLINED_FUNCTION_12_6();
  v212 = *(v211 + 472);

  v212(v213);

  v266 = sub_1E32AE9B0(v87);
  v265 = v87 & 0xFFFFFFFFFFFFFF8;
  v262 = v1;

  v15 = 0;
  p_isa = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v266 == v15)
    {

      v228 = v262;
      (*(*v262 + 496))(p_isa);

      OUTLINED_FUNCTION_106_5();
      goto LABEL_144;
    }

    if (v15 >= *(v265 + 16))
    {
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v20 = v87;
    v1 = *(v87 + 8 * v15 + 32);
    v214 = *(v1 + 98);
    swift_retain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v274 = p_isa;
    v215 = sub_1E3740AE8(v214);
    v217 = p_isa[2];
    v218 = (v216 & 1) == 0;
    v24 = (v217 + v218);
    if (__OFADD__(v217, v218))
    {
      goto LABEL_150;
    }

    v219 = v215;
    v220 = v216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780);
    v221 = sub_1E4207644();
    v222 = v274;
    if (v221)
    {
      break;
    }

LABEL_137:
    if (v220)
    {
      *(v222[1].length + 8 * v219) = v1;
    }

    else
    {
      *(&v222[2].isa + (v219 >> 6)) |= 1 << v219;
      *&v222[1].data[2 * v219] = v214;
      *(v222[1].length + 8 * v219) = v1;

      data = v222->data;
      v226 = __OFADD__(data, 1);
      v227 = data + 1;
      if (v226)
      {
        goto LABEL_151;
      }

      v222->data = v227;
    }

    ++v15;
    p_isa = &v222->isa;
    v87 = v20;
  }

  v223 = sub_1E3740AE8(v214);
  if ((v220 & 1) == (v224 & 1))
  {
    v219 = v223;
    goto LABEL_137;
  }

  sub_1E4207A74();
  __break(1u);
}

uint64_t sub_1E38BFABC(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_50();
  v4(v3, v2);
  if (v64 == 255)
  {
    return 0;
  }

  v6 = v60;
  v56 = v61;
  v8 = v62;
  v7 = v63;
  type metadata accessor for LibImageViewModel();
  v9 = a1[4];
  v10 = OUTLINED_FUNCTION_105_3();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v12 = OUTLINED_FUNCTION_35_0();
  v13(v12, v9);

  OUTLINED_FUNCTION_45_16();
  v5 = sub_1E37ECC00(v14, v15, v16, v17, v18, v19, v20);
  v21 = 0;
  v22 = 0;
  if (sub_1E39DFFC0())
  {
    v23 = a1[3];
    v24 = a1[4];
    v25 = OUTLINED_FUNCTION_105_3();
    __swift_project_boxed_opaque_existential_1(v25, v26);
    OUTLINED_FUNCTION_33_24();
    v21 = v27(v23, v24);
    v22 = v28;
  }

  if (v64)
  {
    if (v64 == 1)
    {
      if (v60)
      {
        v53 = type metadata accessor for LibSidebandImageViewModel();
        v29 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v30 = *(v29 + 16);
        sub_1E37C536C(v60, v61, v62, v63, 1);
        v31 = OUTLINED_FUNCTION_53();
        v30(v31);
        OUTLINED_FUNCTION_94_2();

        sub_1E3BFF3A0();
        OUTLINED_FUNCTION_50();

        sub_1E325F7FC(&v60, &qword_1ECF2A450);
        return v53;
      }

      goto LABEL_21;
    }

    if (v61)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4299720;

      *(inited + 32) = sub_1E3C7CCAC(0);
      *(inited + 40) = v39;
      v40 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v6;
      *(inited + 56) = v56;
      *(inited + 80) = sub_1E3C7CCAC(4);
      *(inited + 88) = v41;
      *(inited + 120) = v40;
      *(inited + 96) = 6778986;
      *(inited + 104) = 0xE300000000000000;
      sub_1E4205CB4();
      if (v22)
      {
        sub_1E3C7CCAC(7);
        v59 = v40;
        *&v58 = v21;
        *(&v58 + 1) = v22;
        sub_1E329504C(&v58, v57);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_90();
        sub_1E32A87C0(v42, v43, v44);
      }

      if (v7)
      {
        v45 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v45 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (v45)
        {
          sub_1E3D46F94(24);
          v59 = v40;
          *&v58 = v8;
          *(&v58 + 1) = v7;
          sub_1E329504C(&v58, v57);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_90();
          sub_1E32A87C0(v46, v47, v48);
        }
      }

      v49 = type metadata accessor for ImageViewModel();

      OUTLINED_FUNCTION_82();
      v37 = v49;
      sub_1E3F5321C(v50, v51, v52);
      OUTLINED_FUNCTION_50();

      sub_1E325F7FC(&v60, &qword_1ECF2A450);
      return v37;
    }

LABEL_21:

    sub_1E325F7FC(&v60, &qword_1ECF2A450);
    return v5;
  }

  if (!v60)
  {
    goto LABEL_21;
  }

  v55 = v63;
  v54 = type metadata accessor for LibMPImageViewModel();
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = *(v33 + 16);

  v35 = v60;
  v36 = OUTLINED_FUNCTION_75();
  v34(v36);
  OUTLINED_FUNCTION_94_2();

  v37 = v54;
  sub_1E394D550();
  OUTLINED_FUNCTION_50();

  sub_1E325F7FC(&v60, &qword_1ECF2A450);
  if (v54)
  {
    swift_beginAccess();
    *(v54 + 352) = v55 & 1;
    return v37;
  }

  return 0;
}

id sub_1E38BFF5C(uint64_t a1)
{
  sub_1E38C6028(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58);
  if ((OUTLINED_FUNCTION_102_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_96_0();
    sub_1E325F7FC(v9, &qword_1ECF2CE70);
    return OUTLINED_FUNCTION_57();
  }

  sub_1E3251BE8(v9, v11);
  OUTLINED_FUNCTION_70(v11);
  v1 = OUTLINED_FUNCTION_26_1();
  v2(v1);
  if (v3)
  {
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v11);
    return OUTLINED_FUNCTION_57();
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = sub_1E3741090(0x5F45444F53495045, 0xEA00000000004025, result);
    v8 = v7;

    if (v8)
    {
      v10[0] = v6;
      v10[1] = v8;
      *&v9[0] = 16421;
      *(&v9[0] + 1) = 0xE200000000000000;
      sub_1E4207944();
      sub_1E32822E0();
      OUTLINED_FUNCTION_21_7();
      sub_1E42071F4();
      OUTLINED_FUNCTION_145();

      __swift_destroy_boxed_opaque_existential_1(v11);
      return OUTLINED_FUNCTION_57();
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E38C011C(uint64_t a1, uint64_t a2)
{
  sub_1E38C6028(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
  if (OUTLINED_FUNCTION_19_31())
  {
    sub_1E3251BE8(v20, v22);
    v4 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v5 = OUTLINED_FUNCTION_35_0();
    if (v6(v5, v4) & 1) != 0 && ((sub_1E38BBD0C() & 1) != 0 || (sub_1E38BBD0C()))
    {
      sub_1E38C3DB4();
LABEL_18:
      v8 = v7;
LABEL_19:
      __swift_destroy_boxed_opaque_existential_1(v22);
      return v8;
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
    sub_1E325F7FC(v20, &qword_1ECF2CEA0);
  }

  sub_1E38C6028(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
  if (OUTLINED_FUNCTION_19_31())
  {
    sub_1E3251BE8(v20, v22);
    if (sub_1E38BBD0C())
    {
      __swift_project_boxed_opaque_existential_1(v22, v23);
      OUTLINED_FUNCTION_77();
      sub_1E38C6088();
    }

    else
    {
      sub_1E38C45EC();
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_28_0();
  sub_1E325F7FC(v20, &qword_1ECF2CE78);
  sub_1E38C6028(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
  if (OUTLINED_FUNCTION_19_31())
  {
    sub_1E3251BE8(v20, v22);
    if (sub_1E38BBD0C())
    {
      type metadata accessor for LibDownloadingEpisodesViewModel();
      sub_1E38C6028(v22, v21);

      v7 = sub_1E3DC7FA4(v21, a2);
      goto LABEL_18;
    }

    v7 = sub_1E38C4838(v22);
    if (v7)
    {
      goto LABEL_18;
    }

    sub_1E38C6028(a1, v21);
    type metadata accessor for LibFamilySharingShowMediaEntity();
    if (OUTLINED_FUNCTION_19_31())
    {
      v10 = *&v20[0];
      v11 = *(**&v20[0] + 408);

      v8 = v10;
      v11(v12);
      OUTLINED_FUNCTION_94_2();

      v21[3] = MEMORY[0x1E69E6158];
      if (v11)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0;
      }

      v14 = 0xE000000000000000;
      if (v11)
      {
        v14 = v11;
      }

      v21[0] = v13;
      v21[1] = v14;
      type metadata accessor for TextViewModel();
      OUTLINED_FUNCTION_50();

      OUTLINED_FUNCTION_21_7();
      sub_1E3C27638(v15, v16, v17, v18, v19);
      OUTLINED_FUNCTION_38();

      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
    sub_1E325F7FC(v20, &qword_1ECF2A778);
  }

  return 0;
}

void sub_1E38C0444()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v153 = v2;
  OUTLINED_FUNCTION_106();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v152 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v147 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v147 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v147 - v21;
  if (sub_1E39DFFC0())
  {
    sub_1E38C6028(v0, &v156);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
    if (OUTLINED_FUNCTION_90_0())
    {
      sub_1E3251BE8(v154, v159);
      v23 = *(v0 + 328);
      if ((sub_1E38BBD0C() & 1) == 0 && (sub_1E38BBD0C() & 1) == 0)
      {
        goto LABEL_29;
      }

      v150 = v23;
      v151 = v3;
      v25 = v160;
      v24 = v161;
      __swift_project_boxed_opaque_existential_1(v159, v160);
      if ((*(v24 + 24))(v25, v24))
      {
        v26 = v161;
        __swift_project_boxed_opaque_existential_1(v159, v160);
        v27 = OUTLINED_FUNCTION_38();
        v29 = v28(v27, v26);
        if (v30)
        {
          sub_1E41A3110();
          v32 = v151;
          v31 = v152;
          OUTLINED_FUNCTION_107_0();
          v33(v11);
          sub_1E38C6028(v159, &v156);
          v34 = sub_1E41FFC94();
          v35 = sub_1E42067F4();
          if (OUTLINED_FUNCTION_62_9(v35))
          {
            OUTLINED_FUNCTION_6_21();
            *&v154[0] = OUTLINED_FUNCTION_36_6();
            *v26 = 136315138;
            v36 = v158;
            OUTLINED_FUNCTION_110_3(&v156);
            OUTLINED_FUNCTION_38();
            sub_1E4207944();
            OUTLINED_FUNCTION_145();
            __swift_destroy_boxed_opaque_existential_1(&v156);
            v37 = OUTLINED_FUNCTION_57();
            sub_1E3270FC8(v37, v38, v39);
            OUTLINED_FUNCTION_38();

            *(v26 + 4) = v36;
            OUTLINED_FUNCTION_26_23(&dword_1E323F000, v40, v41, "Rental movie %s should have rental ID");
            OUTLINED_FUNCTION_24_18();
            OUTLINED_FUNCTION_65_0();

            (*(v31 + 8))(v11, v32);
LABEL_29:
            __swift_destroy_boxed_opaque_existential_1(v159);
            goto LABEL_30;
          }

          (*(v31 + 8))(v11, v32);
          goto LABEL_28;
        }

        v45 = v29;
        v46 = v160;
        v47 = v161;
        __swift_project_boxed_opaque_existential_1(v159, v160);
        v48 = OUTLINED_FUNCTION_38();
        v49(v48, v47);
        v50 = sub_1E41FE5D4();
        OUTLINED_FUNCTION_52(v22, 1, v50);
        if (v43)
        {
          sub_1E325F7FC(v22, &unk_1ECF28E20);
          sub_1E41A3110();
          v52 = v151;
          v51 = v152;
          OUTLINED_FUNCTION_107_0();
          v53(v14);
          sub_1E38C6028(v159, &v156);
          v54 = sub_1E41FFC94();
          v55 = sub_1E42067F4();
          if (OUTLINED_FUNCTION_62_9(v55))
          {
            OUTLINED_FUNCTION_6_21();
            v56 = OUTLINED_FUNCTION_36_6();
            *&v154[0] = v56;
            *v50 = 136315138;
            v57 = v158;
            OUTLINED_FUNCTION_110_3(&v156);
            OUTLINED_FUNCTION_38();
            sub_1E4207944();
            OUTLINED_FUNCTION_145();
            __swift_destroy_boxed_opaque_existential_1(&v156);
            v58 = OUTLINED_FUNCTION_57();
            sub_1E3270FC8(v58, v59, v60);
            OUTLINED_FUNCTION_38();

            *(v50 + 4) = v57;
            OUTLINED_FUNCTION_26_23(&dword_1E323F000, v61, v62, "Rental movie %s without having rental expiration date");
            __swift_destroy_boxed_opaque_existential_1(v56);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_65_0();

            (*(v51 + 8))(v14, v52);
            goto LABEL_29;
          }

          (*(v51 + 8))(v14, v52);
LABEL_28:
          __swift_destroy_boxed_opaque_existential_1(&v156);
          goto LABEL_29;
        }

        sub_1E41FE574();
        v64 = v88;
        OUTLINED_FUNCTION_37_1();
        (*(v89 + 8))(v22, v50);
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
        inited = swift_allocObject();
        OUTLINED_FUNCTION_117(inited, xmmword_1E4297BD0);
        inited[2].n128_u64[0] = v91;
        inited[2].n128_u64[1] = v92;
        v156 = v45;
        sub_1E4207944();
        OUTLINED_FUNCTION_145();
        v156 = 0;
        v157 = 0xE000000000000000;
        sub_1E4206594();
        v71 = v157;
        v156 = &v156;
        v157 = v46;

        v93 = OUTLINED_FUNCTION_24_4();
        MEMORY[0x1E69109E0](v93);

        OUTLINED_FUNCTION_152_1(v156);
        inited[5].n128_u64[0] = v94;
        inited[5].n128_u64[1] = v95;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
        v76 = OUTLINED_FUNCTION_155_2();
        *(v76 + 16) = xmmword_1E4299720;
        sub_1E384EE08(39);
        *(v76 + 32) = v96;
        *(v76 + 40) = v97;
        v98 = OUTLINED_FUNCTION_155_2();
        v149 = xmmword_1E4297BE0;
        v99 = OUTLINED_FUNCTION_130(v98, xmmword_1E4297BE0);
        v98[2].n128_u64[0] = sub_1E3C7CCAC(v99);
        v98[2].n128_u64[1] = v100;
        OUTLINED_FUNCTION_67_9("symbol://clock.time.1009.fill");
        *(v76 + 48) = sub_1E4205CB4();
        sub_1E384EE08(17);
        *(v76 + 56) = v101;
        *(v76 + 64) = v102;
        v148 = v90;
        v103 = OUTLINED_FUNCTION_155_2();
        OUTLINED_FUNCTION_151_4(v103);
        v71[4] = v104;
        v71[5] = v105;
        v87 = swift_allocObject();
      }

      else
      {
        sub_1E38BBFF0();
        v42 = sub_1E41FE5D4();
        OUTLINED_FUNCTION_52(v19, 1, v42);
        if (v43)
        {
          sub_1E325F7FC(v19, &unk_1ECF28E20);
          v44 = MEMORY[0x1E69E7CC8];
          goto LABEL_19;
        }

        sub_1E41FE574();
        v64 = v63;
        OUTLINED_FUNCTION_37_1();
        (*(v65 + 8))(v19, v42);
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_117(inited, xmmword_1E4297BD0);
        inited[2].n128_u64[0] = v68;
        inited[2].n128_u64[1] = v69;
        v71 = *(v1 + 296);
        v70 = *(v1 + 304);
        v156 = 0;
        v157 = 0xE000000000000000;
        sub_1E4206594();
        v72 = v156;
        v73 = v157;
        v156 = v71;
        v157 = v70;

        MEMORY[0x1E69109E0](v72, v73);

        OUTLINED_FUNCTION_152_1(v156);
        inited[5].n128_u64[0] = v74;
        inited[5].n128_u64[1] = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
        v76 = swift_initStackObject();
        *(v76 + 16) = xmmword_1E4299720;
        sub_1E384EE08(39);
        *(v76 + 32) = v77;
        *(v76 + 40) = v78;
        v79 = swift_initStackObject();
        v149 = xmmword_1E4297BE0;
        v80 = OUTLINED_FUNCTION_130(v79, xmmword_1E4297BE0);
        v79[2].n128_u64[0] = sub_1E3C7CCAC(v80);
        v79[2].n128_u64[1] = v81;
        OUTLINED_FUNCTION_67_9("symbol://clock.time.1009.fill");
        *(v76 + 48) = sub_1E4205CB4();
        sub_1E384EE08(17);
        *(v76 + 56) = v82;
        *(v76 + 64) = v83;
        v148 = v66;
        v84 = swift_initStackObject();
        OUTLINED_FUNCTION_151_4(v84);
        v71[4] = v85;
        v71[5] = v86;
        v87 = swift_initStackObject();
      }

      v106 = v87;
      *(v87 + 16) = xmmword_1E4298AD0;
      sub_1E3854630(1);
      *(v106 + 32) = v107;
      *(v106 + 40) = v108;
      *(v106 + 72) = MEMORY[0x1E69E63B0];
      *(v106 + 48) = v64;
      sub_1E3854630(0);
      *(v106 + 80) = v109;
      *(v106 + 88) = v110;
      v111 = sub_1E39DFFC0();
      v112 = MEMORY[0x1E69E6370];
      *(v106 + 120) = MEMORY[0x1E69E6370];
      *(v106 + 96) = (v111 & 1) == 0;
      sub_1E3854630(2);
      *(v106 + 128) = v113;
      *(v106 + 136) = v114;
      v115 = sub_1E39DFFC0();
      *(v106 + 168) = v112;
      *(v106 + 144) = (v115 & 1) == 0;
      sub_1E3854630(3);
      *(v106 + 176) = v116;
      *(v106 + 184) = v117;
      v118 = sub_1E38BBD0C();
      *(v106 + 216) = v112;
      *(v106 + 192) = v118 & 1;
      v119 = MEMORY[0x1E69E6158];
      v120 = sub_1E4205CB4();
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      v71[9] = v121;
      v71[6] = v120;
      *(v76 + 72) = sub_1E4205CB4();
      v122 = sub_1E4205CB4();
      inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0);
      inited[6].n128_u64[0] = v122;
      ViewModelKeys.rawValue.getter(11);
      inited[8].n128_u64[0] = v123;
      inited[8].n128_u64[1] = v124;
      v125 = OUTLINED_FUNCTION_155_2();
      v126 = OUTLINED_FUNCTION_130(v125, v149);
      v125[2].n128_u64[0] = sub_1E3853154(v126);
      v125[2].n128_u64[1] = v127;
      v128 = sub_1E3831114();
      v125[4].n128_u64[1] = v119;
      v125[3].n128_u64[0] = v128;
      v125[3].n128_u64[1] = v129;
      v130 = sub_1E4205CB4();
      inited[10].n128_u64[1] = v121;
      inited[9].n128_u64[0] = v130;
      v44 = sub_1E4205CB4();
LABEL_19:
      type metadata accessor for ViewModel();
      v131 = v153;

      if (sub_1E39BED80(57, v44, v131))
      {
        OUTLINED_FUNCTION_26_0();
        if ((*(v132 + 392))())
        {
          OUTLINED_FUNCTION_26_0();
          (*(v133 + 872))(0);

          goto LABEL_29;
        }
      }

      else
      {
        sub_1E41A3110();
        v134 = v152;
        v135 = OUTLINED_FUNCTION_148_2();
        v136(v135);
        v137 = sub_1E41FFC94();
        v138 = sub_1E42067F4();
        if (os_log_type_enabled(v137, v138))
        {
          OUTLINED_FUNCTION_6_21();
          v139 = OUTLINED_FUNCTION_36_6();
          v156 = v139;
          *v131 = 136315138;

          v140 = sub_1E4205C74();
          v142 = v141;

          v143 = sub_1E3270FC8(v140, v142, &v156);

          *(v131 + 4) = v143;
          _os_log_impl(&dword_1E323F000, v137, v138, "Can not create a rental badge view model from json dictionary %s", v131, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v139);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_65_0();

          (*(v134 + 8))(v8, v151);
        }

        else
        {

          v144 = OUTLINED_FUNCTION_74();
          v146(v144, v145);
        }
      }

      goto LABEL_29;
    }

    v155 = 0;
    memset(v154, 0, sizeof(v154));
    sub_1E325F7FC(v154, &qword_1ECF2CEA0);
  }

LABEL_30:
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E38C1020()
{
  if ((sub_1E38BBD0C() & 1) == 0)
  {
    return 1;
  }

  OUTLINED_FUNCTION_8();
  (*(v0 + 1496))(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
  OUTLINED_FUNCTION_44_22(v1, v2, v3, v4, v5, v6, v7, v8, v10[0]);
  if (!OUTLINED_FUNCTION_102_0())
  {
    return 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  return 0;
}

unint64_t sub_1E38C10D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B470);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_1E329504C(&v22, v24);
    sub_1E329504C(v24, v25);
    sub_1E329504C(v25, &v23);
    result = sub_1E327D33C(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_1E329504C(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_1E329504C(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1E38C130C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_144_0();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v117 = v6 - v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v105 - v9;
  v121 = 0;
  v122 = 0xE000000000000000;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v15 = type metadata accessor for LibViewModel();
  v114 = v12;

  v115 = v13;
  v16 = OUTLINED_FUNCTION_105_3();
  MEMORY[0x1E69109E0](v16);
  v116 = v14;

  MEMORY[0x1E69109E0](0x79616C7265766F2DLL, 0xE800000000000000);

  OUTLINED_FUNCTION_45_16();
  v24 = sub_1E3B76C80(v17, v18, v19, v20, v21, v22, v23);
  if (!v24)
  {
    goto LABEL_37;
  }

  v113 = v15;
  sub_1E41A3110();
  OUTLINED_FUNCTION_4_32();
  v109 = v25;
  v110 = v26;
  v108 = v27;
  (v27)(v10);
  sub_1E38C6028(v1, &v121);
  sub_1E38C6028(v1, v120);
  v112 = v1;
  sub_1E38C6028(v1, v119);
  v28 = sub_1E41FFC94();
  v29 = sub_1E4206814();
  v30 = os_log_type_enabled(v28, v29);
  v111 = v4;
  v31 = v2;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = OUTLINED_FUNCTION_100();
    v118 = v33;
    *v32 = 136315650;
    v106 = v2;
    v34 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, v123);
    OUTLINED_FUNCTION_33_24();
    v36 = v35(v34);
    v38 = v37;
    __swift_destroy_boxed_opaque_existential_1(&v121);
    sub_1E3270FC8(v36, v38, &v118);
    OUTLINED_FUNCTION_55_12();

    *(v32 + 4) = v36;
    *(v32 + 12) = 2048;
    OUTLINED_FUNCTION_34_7(v120, v120[3]);
    v39 = OUTLINED_FUNCTION_55_12();
    v41 = v40(v39);
    __swift_destroy_boxed_opaque_existential_1(v120);
    *(v32 + 14) = v41;
    *(v32 + 22) = 1024;
    OUTLINED_FUNCTION_34_7(v119, v119[3]);
    v42 = OUTLINED_FUNCTION_55_12();
    v31 = v106;
    LODWORD(v36) = v43(v42) & 1;
    __swift_destroy_boxed_opaque_existential_1(v119);
    *(v32 + 24) = v36;
    _os_log_impl(&dword_1E323F000, v28, v29, "LibLockupViewModel:: %s-bookmarktime %f-fullyWatched %{BOOL}d", v32, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v107 = *(v111 + 8);
    v107(v10, v31);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v119);

    v107 = *(v4 + 8);
    v107(v10, v2);
    __swift_destroy_boxed_opaque_existential_1(&v121);
    __swift_destroy_boxed_opaque_existential_1(v120);
  }

  v44 = v112;
  OUTLINED_FUNCTION_34_7(v112, v112[3]);
  v45 = OUTLINED_FUNCTION_38();
  v47 = v46(v45);
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  if (v47 > 0.0)
  {
    v48 = OUTLINED_FUNCTION_38();
    v50 = v49(v48);
    OUTLINED_FUNCTION_34_7(v44, v44[3]);
    v51 = OUTLINED_FUNCTION_38();
    v53 = v52(v51);
    v121 = 0;
    v122 = 0xE000000000000000;
    v54 = v50 / v53;
    sub_1E42074B4();

    MEMORY[0x1E69109E0](v115, v116);

    MEMORY[0x1E69109E0](0xD000000000000016, 0x80000001E42662B0);
    v55 = sub_1E4206584();
    MEMORY[0x1E69109E0](v55);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    swift_retain_n();
    *(inited + 32) = j__OUTLINED_FUNCTION_53_12();
    *(inited + 40) = v57;
    *(inited + 72) = MEMORY[0x1E69E7DE0];
    *(inited + 48) = v54;
    sub_1E4205CB4();
    OUTLINED_FUNCTION_82();
    v62 = sub_1E3B76C80(v58, v59, v60, v24, 0, 0, v61);
    if (!v62)
    {
LABEL_14:

      goto LABEL_18;
    }

LABEL_13:
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1E4298880;
    *(v64 + 32) = v63;
    v65 = *(*v24 + 472);

    v65(v64);

    goto LABEL_14;
  }

  v66 = OUTLINED_FUNCTION_38();
  if (v67(v66))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    v68 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v68, xmmword_1E4299720);
    v68[2].n128_u64[0] = v69;
    v68[2].n128_u64[1] = v70;
    v71 = MEMORY[0x1E69E6158];
    v68[4].n128_u64[1] = MEMORY[0x1E69E6158];
    v68[3].n128_u64[0] = 0xD00000000000001BLL;
    v68[3].n128_u64[1] = 0x80000001E4266270;
    v68[5].n128_u64[0] = sub_1E3C7CCAC(0);
    v68[5].n128_u64[1] = v72;
    v68[7].n128_u64[1] = v71;
    v68[6].n128_u64[0] = 0xD00000000000001ELL;
    v68[6].n128_u64[1] = 0x80000001E4266290;
    OUTLINED_FUNCTION_57();
    sub_1E4205CB4();
    OUTLINED_FUNCTION_106();
    type metadata accessor for ImageViewModel();
    swift_retain_n();
    v62 = sub_1E3F5321C(39, v68, v24);
    if (!v62)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_18:
  v73 = *(*v24 + 464);

  v121 = v73(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
  sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790);
  v76 = sub_1E4149048(v75);

  if (v76)
  {

LABEL_37:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v108(v117, v109, v31);
  sub_1E38C6028(v44, &v121);

  v77 = sub_1E41FFC94();
  v78 = sub_1E4206814();

  if (!os_log_type_enabled(v77, v78))
  {

    v98 = OUTLINED_FUNCTION_112_5();
    v99(v98);
    __swift_destroy_boxed_opaque_existential_1(&v121);
    goto LABEL_37;
  }

  LODWORD(v116) = v78;
  v79 = swift_slowAlloc();
  v115 = swift_slowAlloc();
  v120[0] = v115;
  *v79 = 136315394;
  v80 = v124;
  OUTLINED_FUNCTION_110_3(&v121);
  v81 = OUTLINED_FUNCTION_38();
  v82(v81);
  OUTLINED_FUNCTION_145();
  __swift_destroy_boxed_opaque_existential_1(&v121);
  v83 = OUTLINED_FUNCTION_57();
  sub_1E3270FC8(v83, v84, v85);
  OUTLINED_FUNCTION_38();

  *(v79 + 4) = v80;
  *(v79 + 12) = 2080;
  v87 = v73(v86);
  v88 = MEMORY[0x1E69E7CC0];
  if (v87)
  {
    v89 = v87;
  }

  else
  {
    v89 = MEMORY[0x1E69E7CC0];
  }

  v90 = sub_1E32AE9B0(v89);
  if (!v90)
  {

LABEL_36:
    v100 = MEMORY[0x1E6910C30](v88, &qword_1F5D5CE68);
    v102 = v101;

    sub_1E3270FC8(v100, v102, v120);
    OUTLINED_FUNCTION_76();

    *(v79 + 14) = v88;
    _os_log_impl(&dword_1E323F000, v77, v116, "LibLockupViewModel:: %s, overlay vm %s", v79, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    v103 = OUTLINED_FUNCTION_112_5();
    v104(v103);
    goto LABEL_37;
  }

  v91 = v90;
  v113 = v79;
  v114 = v77;
  v106 = v31;
  v119[0] = v88;
  sub_1E38C5A44(0, v90 & ~(v90 >> 63), 0);
  if ((v91 & 0x8000000000000000) == 0)
  {
    v92 = 0;
    v88 = v119[0];
    do
    {
      if ((v89 & 0xC000000000000001) != 0)
      {
        v93 = OUTLINED_FUNCTION_84_5();
        v94 = *(MEMORY[0x1E6911E60](v93) + 98);
        swift_unknownObjectRelease();
      }

      else
      {
        v94 = *(*(v89 + 8 * v92 + 32) + 98);
      }

      v119[0] = v88;
      v96 = *(v88 + 16);
      v95 = *(v88 + 24);
      if (v96 >= v95 >> 1)
      {
        v97 = OUTLINED_FUNCTION_35(v95);
        sub_1E38C5A44(v97, v96 + 1, 1);
        v88 = v119[0];
      }

      ++v92;
      *(v88 + 16) = v96 + 1;
      *(v88 + 2 * v96 + 32) = v94;
    }

    while (v91 != v92);

    v79 = v113;
    v77 = v114;
    goto LABEL_36;
  }

  __break(1u);
}

uint64_t sub_1E38C1CF8()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1496))(v36);
  v1 = sub_1E38BFABC(v36);
  result = __swift_destroy_boxed_opaque_existential_1(v36);
  if (!v1)
  {
    return result;
  }

  if ((sub_1E39DFFC0() & 1) == 0)
  {
  }

  OUTLINED_FUNCTION_8();
  v3 += 60;
  v4 = *v3;
  v5 = (*v3)(v36);
  v31 = v6;
  v7 = *v6;
  if (!*v6)
  {
    v5(v36, 0);
LABEL_25:
    v15 = v4(v36);
    if (*v14)
    {
      v16 = v14;

      MEMORY[0x1E6910BF0](v17);
      sub_1E38C5A18(*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1E4206324();
    }

    v15(v36, 0);
  }

  v29 = v5;
  v30 = v4;
  result = sub_1E32AE9B0(v7);
  v8 = result;
  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      v13 = v31;
      v9 = sub_1E32AE9B0(*v31);
      goto LABEL_23;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }
    }

    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v34 == v32 && v35 == v33)
    {
      break;
    }

    v11 = OUTLINED_FUNCTION_97_0();

    if (v11)
    {
      goto LABEL_21;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      goto LABEL_75;
    }
  }

LABEL_21:
  if (__OFADD__(v9, 1))
  {
    goto LABEL_88;
  }

  v13 = v31;
  result = sub_1E32AE9B0(*v31);
  if (v9 + 1 == result)
  {
LABEL_23:
    result = sub_1E32AE9B0(*v13);
    if (result < v9)
    {
      goto LABEL_87;
    }

    sub_1E3882AB0(v9, result);
    v29(v36, 0);
    v4 = v30;
    goto LABEL_25;
  }

  v18 = v9 + 5;
  v19 = &qword_1F5D5CE68;
  while (1)
  {
    v20 = v18 - 4;
    if ((*v31 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v18 - 4);
    }

    else
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v20 >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }
    }

    sub_1E4206254();
    sub_1E4206254();
    if (v34 == v32 && v35 == v33)
    {

      goto LABEL_63;
    }

    v22 = v19;
    v23 = OUTLINED_FUNCTION_97_0();

    if ((v23 & 1) == 0)
    {
      break;
    }

    v19 = v22;
LABEL_63:
    v27 = v18 - 3;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_78;
    }

    if (*v31 >> 62)
    {
      result = OUTLINED_FUNCTION_119_1();
    }

    else
    {
      result = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v18;
    if (v27 == result)
    {
      goto LABEL_23;
    }
  }

  v19 = v22;
  if (v20 == v9)
  {
    goto LABEL_62;
  }

  v24 = *v31;
  if ((*v31 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1E6911E60](v9, *v31);
    v25 = result;
    v24 = *v31;
  }

  else
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (v9 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_81;
    }

    v25 = *(v24 + 8 * v9 + 32);
  }

  if ((v24 & 0xC000000000000001) != 0)
  {
    v28 = OUTLINED_FUNCTION_114_1();
    v26 = MEMORY[0x1E6911E60](v28);
    v24 = *v31;
  }

  else
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    if (v20 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

    v26 = *(v24 + 8 * v18);
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v31 = v24;
  if (!result || (v24 & 0x8000000000000000) != 0 || (v24 & 0x4000000000000000) != 0)
  {
    result = sub_1E37EFA58(v24);
    v24 = result;
    *v31 = result;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_83;
  }

  if (v9 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_85;
  }

  *((v24 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v26;

  result = *v31;
  if ((*v31 & 0x8000000000000000) == 0 && (result & 0x4000000000000000) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_60:
    if (v20 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    *((result & 0xFFFFFFFFFFFFFF8) + 8 * v18) = v25;

LABEL_62:
    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      goto LABEL_79;
    }

    goto LABEL_63;
  }

  result = sub_1E37EFA58(result);
  *v31 = result;
  if ((v20 & 0x8000000000000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

void sub_1E38C225C()
{
  v1 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__routerDataSource;
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__routerDataSource))
  {
    v2 = v0;
    OUTLINED_FUNCTION_8();
    v3 += 187;
    v4 = *v3;
    (*v3)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
    if (OUTLINED_FUNCTION_20_35())
    {
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_65_10();
      v4();
      type metadata accessor for LibFamilySharingPlayableMediaEntity();
      if (OUTLINED_FUNCTION_20_35())
      {

        v5 = [objc_opt_self() isMac];
      }

      else
      {
        v5 = 0;
      }

      OUTLINED_FUNCTION_65_10();
      v4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
      if (OUTLINED_FUNCTION_20_35() & 1) == 0 || (__swift_destroy_boxed_opaque_existential_1(v34), LOBYTE(v35[0]) = *(v0 + 328), v34[0] = 10, sub_1E37DA4B8(), ((sub_1E4205E84() | v5)))
      {
        sub_1E3280A90(0, &qword_1EE23B140);
        OUTLINED_FUNCTION_65_10();
        v4();
        v32 = sub_1E37FAFF8();
        goto LABEL_14;
      }
    }

    else
    {
      OUTLINED_FUNCTION_65_10();
      v4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
      if (!OUTLINED_FUNCTION_20_35())
      {
        v32 = 0;
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_1(v34);
      v6 = *(v0 + 328);
      if (sub_1E38BBD0C())
      {
        v7 = sub_1E38BBD0C();
        sub_1E3280A90(0, &qword_1EE23B140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        v9 = sub_1E37FAF8C();
        v10 = v9[1];
        *(inited + 32) = *v9;
        *(inited + 40) = v10;
        v11 = swift_initStackObject();
        *(v11 + 16) = xmmword_1E4298AD0;

        v12 = sub_1E37FAF98();
        v14 = *v12;
        v13 = v12[1];
        *(v11 + 32) = v14;
        *(v11 + 40) = v13;

        OUTLINED_FUNCTION_65_10();
        v4();
        v15 = v36;
        __swift_project_boxed_opaque_existential_1(v35, v36);
        *(v11 + 72) = v15;
        __swift_allocate_boxed_opaque_existential_1((v11 + 48));
        OUTLINED_FUNCTION_37_1();
        (*(v16 + 16))();
        v17 = sub_1E37FAFA4();
        v19 = *v17;
        v18 = v17[1];
        *(v11 + 80) = v19;
        *(v11 + 88) = v18;
        *(v11 + 120) = MEMORY[0x1E69E6370];
        *(v11 + 96) = v7 & 1;

        v20 = sub_1E37FAFC8();
        v22 = *v20;
        v21 = *(v20 + 1);
        *(v11 + 128) = v22;
        *(v11 + 136) = v21;
        v23 = *(v2 + 312);
        v24 = *(v2 + 320);
        v25 = MEMORY[0x1E69E6158];
        *(v11 + 168) = MEMORY[0x1E69E6158];
        *(v11 + 144) = v23;
        *(v11 + 152) = v24;

        v26 = sub_1E37FAFBC();
        v28 = *v26;
        v27 = v26[1];
        *(v11 + 176) = v28;
        *(v11 + 184) = v27;

        sub_1E3A8ADF4(v6);
        *(v11 + 216) = v25;
        *(v11 + 192) = v29;
        *(v11 + 200) = v30;
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_149_1();
        v31 = sub_1E4205CB4();
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        *(inited + 48) = v31;
        OUTLINED_FUNCTION_149_1();
        sub_1E4205CB4();
        v32 = sub_1E37FB46C();
LABEL_14:
        v33 = *(v2 + v1);
        *(v2 + v1) = v32;

        goto LABEL_15;
      }
    }

    v32 = sub_1E38C2640();
    goto LABEL_14;
  }

LABEL_15:
  OUTLINED_FUNCTION_150_2();
}

id sub_1E38C2640()
{
  sub_1E3280A90(0, &qword_1EE23B140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  v2 = sub_1E37FAF8C();
  v4 = *v2;
  v3 = v2[1];
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  v5 = *(*v0 + 1496);

  v5(v18, v6);
  v7 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  *(inited + 72) = v7;
  __swift_allocate_boxed_opaque_existential_1((inited + 48));
  OUTLINED_FUNCTION_37_1();
  (*(v8 + 16))();
  v9 = sub_1E37FAFC8();
  v10 = *(v9 + 1);
  *(inited + 80) = *v9;
  *(inited + 88) = v10;
  v11 = v0[39];
  v12 = v0[40];
  v13 = MEMORY[0x1E69E6158];
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = v11;
  *(inited + 104) = v12;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v14;
  v15 = v0[35];
  v16 = v0[36];
  *(inited + 168) = v13;
  *(inited + 144) = v15;
  *(inited + 152) = v16;

  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_58_1();
  sub_1E4205CB4();
  return sub_1E37FB46C();
}

void sub_1E38C27E8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__contextMenuItemViewModels;
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__contextMenuItemViewModels))
  {
    if (sub_1E38C1020())
    {
      v2 = MEMORY[0x1E69E7CC0];
      v29 = MEMORY[0x1E69E7CC0];
      type metadata accessor for LibContextMenuViewModel();
      v3 = *(*v0 + 1496);
      v3(v28);
      v4 = sub_1E3C61178(v28);
      v5 = __swift_destroy_boxed_opaque_existential_1(v28);
      if (v4)
      {
        MEMORY[0x1E6910BF0](v5);
        OUTLINED_FUNCTION_104_1();
        v8 = *(v6 + 16);
        v7 = *(v6 + 24);
        if (v8 >= v7 >> 1)
        {
          OUTLINED_FUNCTION_35(v7);
          OUTLINED_FUNCTION_154_2();
        }

        OUTLINED_FUNCTION_53();
        v5 = sub_1E4206324();
        v2 = v29;
      }

      (v3)(v28, v5);
      v9 = sub_1E3C612E0(v28);
      v10 = __swift_destroy_boxed_opaque_existential_1(v28);
      if (v9)
      {
        MEMORY[0x1E6910BF0](v10);
        OUTLINED_FUNCTION_104_1();
        v13 = *(v11 + 16);
        v12 = *(v11 + 24);
        if (v13 >= v12 >> 1)
        {
          OUTLINED_FUNCTION_35(v12);
          OUTLINED_FUNCTION_154_2();
        }

        OUTLINED_FUNCTION_74();
        sub_1E4206324();
        v2 = v29;
      }

      v14 = *(v0 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel);
      if (!v14)
      {
        goto LABEL_32;
      }

      type metadata accessor for DownloadMenuItemViewModel();
      v15 = v14;
      OUTLINED_FUNCTION_87_0();

      v16 = OUTLINED_FUNCTION_13_8();
      v17 = sub_1E4001D80(v16);
      if (!v17)
      {
        goto LABEL_31;
      }

      v18 = v17;
      if ([objc_opt_self() isStoreOrPressDemoMode])
      {

LABEL_32:
        *(v0 + v1) = v2;

        return;
      }

      v3(v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
      OUTLINED_FUNCTION_106();
      type metadata accessor for LibMPBaseMediaEntity();
      if (OUTLINED_FUNCTION_90_0())
      {
        if ((*(*v27 + 464))())
        {
          v19 = [*(v18 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadViewModel) assetController];
          if (v19)
          {
            v20 = [v19 supportsStartingDownload];
            swift_unknownObjectRelease();
            if (v20)
            {

              MEMORY[0x1E6910BF0](v21);
              OUTLINED_FUNCTION_104_1();
              if (*(v22 + 16) >= *(v22 + 24) >> 1)
              {
                sub_1E42062F4();
              }

              sub_1E4206324();
              v2 = v29;
            }
          }

LABEL_30:

LABEL_31:

          goto LABEL_32;
        }
      }

      MEMORY[0x1E6910BF0](v23);
      OUTLINED_FUNCTION_104_1();
      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_35(v25);
        OUTLINED_FUNCTION_154_2();
      }

      OUTLINED_FUNCTION_53();
      sub_1E4206324();
      v2 = v29;
      goto LABEL_30;
    }

    *(v0 + v1) = MEMORY[0x1E69E7CC0];
  }
}

void sub_1E38C2B94()
{
  v1 = v0;
  OUTLINED_FUNCTION_26_0();
  if ((*(v2 + 904))())
  {
    if ((OUTLINED_FUNCTION_157_2() & 1) == 0)
    {
      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_150_2();

      __asm { BRAA            X4, X16 }
    }

    OUTLINED_FUNCTION_111();
    v3 += 187;
    v4 = *v3;
    (*v3)(v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
    if (OUTLINED_FUNCTION_103_4())
    {
      sub_1E3251BE8(v64, v60);
      v5 = v0[328];
      v6 = sub_1E38BBD0C();
      sub_1E3280A90(0, &qword_1EE23B140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      v8 = sub_1E37FAF8C();
      v9 = v8[1];
      *(inited + 32) = *v8;
      *(inited + 40) = v9;
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_1E4298AD0;

      v11 = sub_1E37FAF98();
      v13 = *v11;
      v12 = v11[1];
      *(v10 + 32) = v13;
      *(v10 + 40) = v12;
      v14 = *(*v0 + 1496);

      v14(&v61, v15);
      v16 = v62;
      __swift_project_boxed_opaque_existential_1(&v61, v62);
      *(v10 + 72) = v16;
      __swift_allocate_boxed_opaque_existential_1((v10 + 48));
      OUTLINED_FUNCTION_37_1();
      (*(v17 + 16))();
      v18 = sub_1E37FAFA4();
      v20 = *v18;
      v19 = v18[1];
      *(v10 + 80) = v20;
      *(v10 + 88) = v19;
      *(v10 + 120) = MEMORY[0x1E69E6370];
      *(v10 + 96) = v6 & 1;

      v21 = sub_1E37FAFC8();
      v23 = *v21;
      v22 = *(v21 + 1);
      *(v10 + 128) = v23;
      *(v10 + 136) = v22;
      v24 = *(v1 + 39);
      v25 = *(v1 + 40);
      v26 = MEMORY[0x1E69E6158];
      *(v10 + 168) = MEMORY[0x1E69E6158];
      *(v10 + 144) = v24;
      *(v10 + 152) = v25;

      v27 = sub_1E37FAFBC();
      v29 = *v27;
      v28 = v27[1];
      *(v10 + 176) = v29;
      *(v10 + 184) = v28;

      sub_1E3A8ADF4(v5);
      *(v10 + 216) = v26;
      *(v10 + 192) = v30;
      *(v10 + 200) = v31;
      __swift_destroy_boxed_opaque_existential_1(&v61);
      v32 = sub_1E4205CB4();
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      *(inited + 48) = v32;
      sub_1E4205CB4();
      v33 = sub_1E37FB46C();
      v34 = [v33 selectEventDataSource];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 documentDataSource];

        if (v36)
        {
          v37 = sub_1E37D5144(v36);
          if (v37)
          {
            v38 = v37;
            v39 = [objc_opt_self() currentNavigationController];
            if (v39)
            {
              v40 = v39;
              [v39 pushViewController:v38 animated:1];
            }
          }
        }
      }

      v41 = v60;
      goto LABEL_15;
    }

    v65 = 0;
    memset(v64, 0, sizeof(v64));
    v49 = sub_1E325F7FC(v64, &qword_1ECF2A778);
    v4(v64, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
    if (OUTLINED_FUNCTION_103_4())
    {
      sub_1E3251BE8(&v61, v63);
      v50 = sub_1E38C2640();
      if (v50)
      {
        v51 = v50;
        v52 = [v50 selectEventDataSource];
        if (v52 && (v53 = v52, v54 = [v52 documentDataSource], v53, v54))
        {
          type metadata accessor for LibTransitionDetailsViewController();
          v55 = v54;
          v56 = sub_1E4023030();
          if (v56)
          {
            v57 = v56;
            v58 = [objc_opt_self() currentNavigationController];
            if (v58)
            {
              v59 = v58;
              [v58 pushViewController:v57 animated:1];

              v51 = v55;
              v55 = v57;
              v57 = v59;
            }

            v51 = v55;
            v55 = v57;
          }
        }

        else
        {
          v55 = v51;
        }
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_96_0();
    v48 = &qword_1ECF2CEA0;
LABEL_20:
    sub_1E325F7FC(&v61, v48);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_111();
  (*(v42 + 1496))(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
  if (!OUTLINED_FUNCTION_102_0())
  {
    OUTLINED_FUNCTION_96_0();
    v48 = &qword_1ECF2CE78;
    goto LABEL_20;
  }

  sub_1E3251BE8(&v61, v63);
  sub_1E3280A90(0, &qword_1EE23B350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE98);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1E4297BE0;
  sub_1E38C6028(v63, v43 + 32);
  sub_1E4039C00(3, v43);
  v45 = v44;
  [objc_opt_self() playMediaInfo:v44 watchType:0 isRentAndWatchNow:0];

LABEL_14:
  v41 = v63;
LABEL_15:
  __swift_destroy_boxed_opaque_existential_1(v41);
LABEL_21:
  OUTLINED_FUNCTION_150_2();
}

uint64_t sub_1E38C3370@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LibLockupViewModel();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

void sub_1E38C33B0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE90);
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v50 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_140_2();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  if (sub_1E38BBD0C())
  {
    v49 = v6;
    OUTLINED_FUNCTION_8();
    v26 = (*(v25 + 1136))();
    sub_1E38BBFF0();
    OUTLINED_FUNCTION_21_2(v14);
    if (v41)
    {
      OUTLINED_FUNCTION_90();
      sub_1E325F7FC(v27, v28);
      v29 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__lastKnownDownloadExpirationDate;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      sub_1E329E324(v0 + v29, v2);
      OUTLINED_FUNCTION_21_2(v2);
      OUTLINED_FUNCTION_90();
      sub_1E325F7FC(v30, v31);
    }

    else
    {
      v48 = *(v17 + 32);
      v48(v24, v14, v15);
      if ((v26 & 1) == 0)
      {
        v34 = OUTLINED_FUNCTION_24_4();
        v35(v34);
        __swift_storeEnumTagSinglePayload(v1, 0, 1, v15);
        v36 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__lastKnownDownloadExpirationDate;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v37 = *(v3 + 48);
        v38 = v49;
        sub_1E329E324(v1, v49);
        sub_1E329E324(v0 + v36, v38 + v37);
        OUTLINED_FUNCTION_21_2(v38);
        if (v41)
        {
          sub_1E325F7FC(v1, &unk_1ECF28E20);
          v39 = OUTLINED_FUNCTION_8_6();
          v40(v39);
          OUTLINED_FUNCTION_21_2(v38 + v37);
          if (v41)
          {
            sub_1E325F7FC(v38, &unk_1ECF28E20);
            goto LABEL_17;
          }
        }

        else
        {
          sub_1E329E324(v38, v50);
          OUTLINED_FUNCTION_21_2(v38 + v37);
          if (!v41)
          {
            v48(v21, (v38 + v37), v15);
            sub_1E38C7288(&qword_1EE28A458, MEMORY[0x1E6969530]);
            sub_1E4205E84();
            v45 = *(v17 + 8);
            v45(v21, v15);
            sub_1E325F7FC(v1, &unk_1ECF28E20);
            v46 = OUTLINED_FUNCTION_8_6();
            (v45)(v46);
            v47 = OUTLINED_FUNCTION_84_5();
            (v45)(v47);
            sub_1E325F7FC(v38, &unk_1ECF28E20);
            goto LABEL_17;
          }

          sub_1E325F7FC(v1, &unk_1ECF28E20);
          v42 = *(v17 + 8);
          v43 = OUTLINED_FUNCTION_8_6();
          v42(v43);
          v44 = OUTLINED_FUNCTION_84_5();
          v42(v44);
        }

        sub_1E325F7FC(v38, &qword_1ECF2CE90);
        goto LABEL_17;
      }

      v32 = OUTLINED_FUNCTION_8_6();
      v33(v32);
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38C3854()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v35 = *(v2 + 480);
  v3 = v35(v37);
  v5 = *v4;
  if (!*v4)
  {
    v14 = v3(v37, 0);
LABEL_24:
    (*(*v1 + 1496))(v37, v14);
    v17 = sub_1E38C011C(v37, v1);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    if (v17)
    {
      v19 = v35(v37);
      if (*v18)
      {
        v20 = v18;

        MEMORY[0x1E6910BF0](v21);
        sub_1E38C5A18(*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10));
        OUTLINED_FUNCTION_74();
        sub_1E4206324();
      }

      v19(v37, 0);
    }

    return result;
  }

  v6 = v4;
  v34 = v3;
  result = sub_1E32AE9B0(v5);
  v8 = result;
  v9 = 0;
  v36 = v6;
  while (1)
  {
    if (v8 == v9)
    {
      v9 = sub_1E32AE9B0(*v6);
      goto LABEL_21;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E6911E60](v9, v5);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }

      v10 = *(v5 + 8 * v9 + 32);
    }

    v43 = *(v10 + 98);
    v42 = 15;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v40 == v38 && v41 == v39)
    {
      break;
    }

    v12 = OUTLINED_FUNCTION_97_0();

    if (v12)
    {
      goto LABEL_19;
    }

    v13 = __OFADD__(v9++, 1);
    v6 = v36;
    if (v13)
    {
      goto LABEL_75;
    }
  }

LABEL_19:
  v6 = v36;
  if (__OFADD__(v9, 1))
  {
    goto LABEL_88;
  }

  result = sub_1E32AE9B0(*v36);
  if (v9 + 1 == result)
  {
LABEL_21:
    v1 = v0;
LABEL_22:
    result = sub_1E32AE9B0(*v6);
    if (result < v9)
    {
      goto LABEL_87;
    }

    v15 = OUTLINED_FUNCTION_138_1();
    sub_1E3882AB0(v15, v16);
    v14 = v34(v37, 0);
    goto LABEL_24;
  }

  v22 = v9 + 5;
  v1 = v0;
  while (1)
  {
    v23 = v22 - 4;
    v24 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1E6911E60](v22 - 4);
    }

    else
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v23 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v25 = *(v24 + 8 * v22);
    }

    v43 = *(v25 + 98);
    v42 = 15;
    sub_1E4206254();
    sub_1E4206254();
    if (v40 == v38 && v41 == v39)
    {

      goto LABEL_63;
    }

    v27 = OUTLINED_FUNCTION_97_0();

    if ((v27 & 1) == 0)
    {
      break;
    }

LABEL_63:
    v31 = v22 - 3;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_78;
    }

    if (*v6 >> 62)
    {
      result = OUTLINED_FUNCTION_119_1();
    }

    else
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v22;
    if (v31 == result)
    {
      goto LABEL_22;
    }
  }

  if (v23 == v9)
  {
    goto LABEL_59;
  }

  v28 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1E6911E60](v9, *v6);
    v29 = result;
    v28 = *v6;
  }

  else
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (v9 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_81;
    }

    v29 = *(v28 + 8 * v9 + 32);
  }

  if ((v28 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x1E6911E60](v22 - 4, v28);
    v33 = v6;
    v30 = v32;
    v28 = *v33;
  }

  else
  {
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    if (v23 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

    v30 = *(v28 + 8 * v22);
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v36 = v28;
  if (!result || (v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
  {
    result = sub_1E37EFA58(v28);
    v28 = result;
    *v36 = result;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_83;
  }

  if (v9 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_85;
  }

  *((v28 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v30;

  v6 = v36;
  result = *v36;
  if ((*v36 & 0x8000000000000000) == 0 && (result & 0x4000000000000000) == 0)
  {
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_57:
    if (v23 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    *((result & 0xFFFFFFFFFFFFFF8) + 8 * v22) = v29;

LABEL_59:
    v13 = __OFADD__(v9++, 1);
    if (v13)
    {
      goto LABEL_79;
    }

    goto LABEL_63;
  }

  result = sub_1E37EFA58(result);
  *v36 = result;
  if ((v23 & 0x8000000000000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

void sub_1E38C3DB4()
{
  OUTLINED_FUNCTION_93();
  v106 = v1;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v105 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  v104 = &v102 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v102 - v14;
  v16 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v107 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v108 = v20 - v19;
  v21 = *(v3 + 32);
  v22 = OUTLINED_FUNCTION_84_5();
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v24 = OUTLINED_FUNCTION_38();
  v26 = v25(v24, v21);
  if (v27)
  {
    v28 = sub_1E41A3110();
    (*(v6 + 16))(v0, v28, v4);
    sub_1E38C6028(v3, &v110);
    v29 = sub_1E41FFC94();
    v30 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_62_9(v30))
    {
      OUTLINED_FUNCTION_6_21();
      v109 = OUTLINED_FUNCTION_36_6();
      *v4 = 136315138;
      v31 = v113;
      OUTLINED_FUNCTION_110_3(&v110);
      OUTLINED_FUNCTION_38();
      sub_1E4207944();
      OUTLINED_FUNCTION_145();
      __swift_destroy_boxed_opaque_existential_1(&v110);
      v32 = OUTLINED_FUNCTION_57();
      sub_1E3270FC8(v32, v33, v34);
      OUTLINED_FUNCTION_38();

      *(v4 + 4) = v31;
      OUTLINED_FUNCTION_26_23(&dword_1E323F000, v35, v36, "Rental movie %s should have rental ID");
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_65_0();

      v37 = OUTLINED_FUNCTION_114_1();
      v38(v37);
      goto LABEL_18;
    }

    v55 = OUTLINED_FUNCTION_114_1();
    v56(v55);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(&v110);
    goto LABEL_18;
  }

  v39 = v26;
  v103 = v6;
  v40 = *(v3 + 32);
  v41 = OUTLINED_FUNCTION_105_3();
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v43 = OUTLINED_FUNCTION_35_0();
  v44(v43, v40);
  OUTLINED_FUNCTION_52(v15, 1, v16);
  if (v45)
  {
    sub_1E325F7FC(v15, &unk_1ECF28E20);
    sub_1E41A3110();
    v46 = v103;
    OUTLINED_FUNCTION_107_0();
    v47 = v105;
    v48(v105);
    sub_1E38C6028(v3, &v110);
    v49 = sub_1E41FFC94();
    v50 = sub_1E42067F4();
    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_6_21();
      v109 = OUTLINED_FUNCTION_36_6();
      *v4 = 136315138;
      v51 = v113;
      OUTLINED_FUNCTION_110_3(&v110);
      OUTLINED_FUNCTION_38();
      sub_1E4207944();
      OUTLINED_FUNCTION_145();
      __swift_destroy_boxed_opaque_existential_1(&v110);
      v52 = OUTLINED_FUNCTION_57();
      sub_1E3270FC8(v52, v53, v54);
      OUTLINED_FUNCTION_38();

      *(v4 + 4) = v51;
      _os_log_impl(&dword_1E323F000, v49, v50, "Rental movie %s without having rental expiration date", v4, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_65_0();

      (*(v46 + 8))(v47, v4);
      goto LABEL_18;
    }

    (*(v46 + 8))(v47, v4);
    goto LABEL_14;
  }

  v57 = v16;
  v58 = v107;
  v59 = *(v107 + 32);
  v105 = v57;
  v59(v108, v15);
  sub_1E41FE574();
  v61 = v60;
  v110 = v39;
  sub_1E4207944();
  OUTLINED_FUNCTION_145();
  v110 = 0;
  v111 = 0xE000000000000000;
  sub_1E4206594();
  v62 = v110;
  v63 = v111;
  v110 = &v110;
  v111 = v39;

  MEMORY[0x1E69109E0](v62, v63);

  v64 = v110;
  v65 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_117(inited, xmmword_1E4299720);
  inited[2].n128_u64[0] = v67;
  inited[2].n128_u64[1] = v68;
  inited[4].n128_u64[1] = MEMORY[0x1E69E6158];
  inited[3].n128_u64[0] = v64;
  inited[3].n128_u64[1] = v65;
  ViewModelKeys.rawValue.getter(11);
  inited[5].n128_u64[0] = v69;
  inited[5].n128_u64[1] = v70;
  v71 = swift_initStackObject();
  *(v71 + 16) = xmmword_1E4297BD0;
  sub_1E3854630(1);
  *(v71 + 32) = v72;
  *(v71 + 40) = v73;
  *(v71 + 72) = MEMORY[0x1E69E63B0];
  *(v71 + 48) = v61;
  sub_1E3854630(0);
  *(v71 + 80) = v74;
  *(v71 + 88) = v75;
  v76 = sub_1E39DFFC0();
  v77 = MEMORY[0x1E69E6370];
  *(v71 + 120) = MEMORY[0x1E69E6370];
  *(v71 + 96) = (v76 & 1) == 0;
  sub_1E3854630(2);
  *(v71 + 128) = v78;
  *(v71 + 136) = v79;
  v80 = sub_1E39DFFC0();
  *(v71 + 168) = v77;
  *(v71 + 144) = (v80 & 1) == 0;
  v81 = sub_1E4205CB4();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  inited[7].n128_u64[1] = v82;
  inited[6].n128_u64[0] = v81;
  v83 = sub_1E4205CB4();
  type metadata accessor for TextViewModel();
  v112 = v82;
  v110 = v83;

  OUTLINED_FUNCTION_21_7();
  if (sub_1E3C27638(v84, v85, v86, v87, v88))
  {

    if (sub_1E3C27528())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v89 + 872))(0);
    }

    (*(v58 + 8))(v108, v105);
  }

  else
  {
    sub_1E41A3110();
    v90 = v103;
    v91 = v104;
    OUTLINED_FUNCTION_107_0();
    v92(v91);

    v93 = sub_1E41FFC94();
    v94 = sub_1E42067F4();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = OUTLINED_FUNCTION_6_21();
      v106 = OUTLINED_FUNCTION_100();
      v110 = v106;
      *v95 = 136315138;
      sub_1E4205C74();
      v96 = v58;
      v97 = v90;

      v98 = OUTLINED_FUNCTION_58_1();
      v101 = sub_1E3270FC8(v98, v99, v100);

      *(v95 + 4) = v101;
      _os_log_impl(&dword_1E323F000, v93, v94, "Can not create a text view model from json dictionary %s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v106);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v97 + 8))(v104, v4);
      (*(v96 + 8))(v108, v105);
    }

    else
    {

      (*(v90 + 8))(v91, v4);
      (*(v58 + 8))(v108, v105);
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E38C45EC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  OUTLINED_FUNCTION_144_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_147_2();
  v5 = sub_1E38BFF5C(v1);
  if (v6)
  {
    OUTLINED_FUNCTION_98_4(v5, v6);
    MEMORY[0x1E69109E0](v35, v36);
  }

  v7 = OUTLINED_FUNCTION_125();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v9 = OUTLINED_FUNCTION_25_27();
  v11 = v10(v9);
  sub_1E38C4D2C(v11);
  v13 = v12;
  MEMORY[0x1E69109E0]();

  OUTLINED_FUNCTION_113_3();
  if (v14)
  {
    type metadata accessor for TextViewModel();
    v37 = MEMORY[0x1E69E6158];
    v35 = v13;
    v36 = &v38;

    OUTLINED_FUNCTION_21_7();
    sub_1E3C27638(v15, v16, v17, v18, v19);
  }

  else
  {

    sub_1E41A3110();
    OUTLINED_FUNCTION_4_32();
    v20(v0);
    sub_1E38C6028(v1, &v35);
    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();
    if (OUTLINED_FUNCTION_62_9(v22))
    {
      OUTLINED_FUNCTION_6_21();
      v34 = OUTLINED_FUNCTION_36_6();
      *v3 = 136315138;
      v23 = v37;
      OUTLINED_FUNCTION_34_7(&v35, v37);
      OUTLINED_FUNCTION_33_24();
      v25 = v24(v23);
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      sub_1E3270FC8(v25, v27, &v34);
      OUTLINED_FUNCTION_76();

      *(v3 + 4) = v25;
      OUTLINED_FUNCTION_26_23(&dword_1E323F000, v28, v29, "Unexpected empty subtitle entity for %s");
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_65_0();

      v30 = OUTLINED_FUNCTION_13_8();
      v31(v30);
    }

    else
    {

      v32 = OUTLINED_FUNCTION_13_8();
      v33(v32);
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E38C4838(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_27_18();
  v3 = OUTLINED_FUNCTION_75();
  v5 = v4(v3);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = objc_opt_self();
  result = [v8 sharedInstance];
  if (result)
  {
    v10 = result;
    sub_1E3741090(0x6F736970452E5654, 0xEB00000000736564, result);
    v12 = v11;

    if (!v12)
    {
      return 0;
    }

    result = [v8 sharedInstance];
    if (result)
    {
      v13 = OUTLINED_FUNCTION_35_0();
      sub_1E3741090(v13, 0xEA00000000006564, v8);
      v15 = v14;

      if (v15)
      {
        if (v7 > 0)
        {
          sub_1E4207944();
          MEMORY[0x1E69109E0](32, 0xE100000000000000);

          v16 = OUTLINED_FUNCTION_53();
          MEMORY[0x1E69109E0](v16);

          type metadata accessor for TextViewModel();
          (*(*v2 + 624))();
          OUTLINED_FUNCTION_21_7();
          return sub_1E3C27638(v17, v18, v19, v20, v21);
        }
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E38C4A48()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  OUTLINED_FUNCTION_144_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_147_2();
  sub_1E38C6028(v1, &v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
  if (OUTLINED_FUNCTION_90_0())
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
    v5 = OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_34_7(v5, v6);
    v7 = OUTLINED_FUNCTION_35_0();
    v9 = v8(v7);
    if (v10)
    {
      goto LABEL_6;
    }

    v40[0] = v9;
    v11 = sub_1E4207944();
  }

  else
  {
    v11 = sub_1E38BFF5C(v1);
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_98_4(v11, v12);
  MEMORY[0x1E69109E0](v41, v42);

LABEL_6:
  v13 = OUTLINED_FUNCTION_125();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v15 = OUTLINED_FUNCTION_25_27();
  v17 = v16(v15);
  sub_1E38C4D2C(v17);
  v19 = v18;
  MEMORY[0x1E69109E0]();

  OUTLINED_FUNCTION_113_3();
  if (v20)
  {
    type metadata accessor for TextViewModel();
    v43 = MEMORY[0x1E69E6158];
    v41 = v19;
    v42 = &v44;

    OUTLINED_FUNCTION_21_7();
    sub_1E3C27638(v21, v22, v23, v24, v25);
  }

  else
  {

    sub_1E41A3110();
    OUTLINED_FUNCTION_4_32();
    v26(v0);
    sub_1E38C6028(v1, &v41);
    v27 = sub_1E41FFC94();
    v28 = sub_1E4206814();
    if (OUTLINED_FUNCTION_62_9(v28))
    {
      OUTLINED_FUNCTION_6_21();
      v40[0] = OUTLINED_FUNCTION_36_6();
      *v3 = 136315138;
      v29 = v43;
      OUTLINED_FUNCTION_34_7(&v41, v43);
      OUTLINED_FUNCTION_33_24();
      v31 = v30(v29);
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1(&v41);
      sub_1E3270FC8(v31, v33, v40);
      OUTLINED_FUNCTION_76();

      *(v3 + 4) = v31;
      OUTLINED_FUNCTION_26_23(&dword_1E323F000, v34, v35, "Unexpected empty subtitle entity for %s");
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_65_0();

      v36 = OUTLINED_FUNCTION_13_8();
      v37(v36);
    }

    else
    {

      v38 = OUTLINED_FUNCTION_13_8();
      v39(v38);
      __swift_destroy_boxed_opaque_existential_1(&v41);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38C4D2C(double a1)
{
  v1 = a1 / 60.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v2 = v1 / 60;
  v3 = v1 % 60;
  v24 = 0;
  v25 = 0xE000000000000000;
  if (v1 >= 60)
  {
    v4 = sub_1E39DFFC0();
    v5 = [objc_opt_self() sharedInstance];
    if (!v5)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = "ack.Duration.Minutes.Shortened";
    if (v4)
    {
      v7 = "ack.Duration.Hours";
      v8 = 0xD00000000000002CLL;
    }

    else
    {
      v8 = 0xD000000000000022;
    }

    sub_1E3741090(v8, v7 | 0x8000000000000000, v6);
    v10 = v9;

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1E4297BE0;
      v23 = v2;
      sub_1E4207944();
      OUTLINED_FUNCTION_134_2();
      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 64) = sub_1E3283528();
      *(v11 + 32) = &v23;
      *(v11 + 40) = v2;
      OUTLINED_FUNCTION_13_8();
      sub_1E4205F44();

      v12 = OUTLINED_FUNCTION_34();
      MEMORY[0x1E69109E0](v12);
    }

    if (v3 <= 0)
    {
      goto LABEL_20;
    }

    MEMORY[0x1E69109E0](32, 0xE100000000000000);
    goto LABEL_14;
  }

  if (v3 > 0)
  {
LABEL_14:
    v13 = sub_1E39DFFC0();
    v14 = [objc_opt_self() sharedInstance];
    if (v14)
    {
      v15 = v14;
      v16 = "symbol://play.fill";
      if (v13)
      {
        v16 = "ack.Duration.Minutes";
        v17 = 0xD00000000000002ELL;
      }

      else
      {
        v17 = 0xD000000000000024;
      }

      sub_1E3741090(v17, v16 | 0x8000000000000000, v15);
      v19 = v18;

      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1E4297BE0;
        v23 = v3;
        sub_1E4207944();
        OUTLINED_FUNCTION_134_2();
        *(v20 + 56) = MEMORY[0x1E69E6158];
        *(v20 + 64) = sub_1E3283528();
        *(v20 + 32) = &v23;
        *(v20 + 40) = v2;
        OUTLINED_FUNCTION_13_8();
        sub_1E4205F44();

        v21 = OUTLINED_FUNCTION_34();
        MEMORY[0x1E69109E0](v21);
      }

      goto LABEL_20;
    }

    goto LABEL_28;
  }

LABEL_20:
  v22 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v22 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
  }
}

void sub_1E38C5048()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isPlaybackUIBeingShown];

  if (v2)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_111();
  v4 = *(v3 + 1496);
  OUTLINED_FUNCTION_65_10();
  v4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
  if (!swift_dynamicCast())
  {
    v71 = 0;
    memset(v70, 0, sizeof(v70));
    sub_1E325F7FC(v70, &qword_1ECF2CE78);
LABEL_35:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  sub_1E3251BE8(v70, v65);
  sub_1E38C6028(v65, v72);
  type metadata accessor for LibMPPlayableMediaEntity();
  if (!OUTLINED_FUNCTION_42_20())
  {
    sub_1E38C6028(v65, v72);
    type metadata accessor for LibSidebandPlayableMediaEntity();
    if (!OUTLINED_FUNCTION_42_20())
    {
LABEL_34:
      __swift_destroy_boxed_opaque_existential_1(v65);
      goto LABEL_35;
    }
  }

  sub_1E38C6028(v65, v72);
  type metadata accessor for LibMPMovieMediaEntity();
  if (OUTLINED_FUNCTION_42_20())
  {
    OUTLINED_FUNCTION_8();
    v6 = (*(v5 + 1032))();
  }

  else
  {
    sub_1E41A3110();
    v7 = OUTLINED_FUNCTION_148_2();
    v8(v7);

    v9 = sub_1E41FFC94();
    v10 = sub_1E42067D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_6_21();
      v64 = OUTLINED_FUNCTION_100();
      *&v70[0] = v64;
      *v11 = 136315138;
      OUTLINED_FUNCTION_65_10();
      v4();
      v13 = v73;
      v12 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      OUTLINED_FUNCTION_10_23();
      sub_1E4207944();
      OUTLINED_FUNCTION_108_3();
      __swift_destroy_boxed_opaque_existential_1(v72);
      sub_1E3270FC8(v12, v13, v70);
      OUTLINED_FUNCTION_10_23();

      *(v11 + 4) = v12;
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v14, v15, "Not handle playback event for this entity %s");
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    v16 = OUTLINED_FUNCTION_74();
    v17(v16);
    v6 = 0;
  }

  v18 = OUTLINED_FUNCTION_157_2();
  if ((v18 & 1) == 0 || (OUTLINED_FUNCTION_157_2() & 1) == 0)
  {
LABEL_30:
    if (v6)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_111();
  (*(v19 + 1496))(v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58);
  if ((OUTLINED_FUNCTION_90_0() & 1) == 0)
  {
    v69 = 0;
    memset(v68, 0, sizeof(v68));
    sub_1E325F7FC(v68, &qword_1ECF2CE70);
    goto LABEL_30;
  }

  v62 = v18;
  sub_1E3251BE8(v68, v72);
  OUTLINED_FUNCTION_111();
  v20 += 60;
  v61 = *v20;
  v21 = (*v20)(v70);
  v23 = *v22;
  if (!*v22)
  {
    v21(v70, 0);
    goto LABEL_45;
  }

  v63 = v22;
  v60 = v6;
  v24 = sub_1E32AE9B0(v23);
  v25 = 0;
  v26 = &qword_1F5D5CE68;
  while (1)
  {
    if (v24 == v25)
    {
      v33 = OUTLINED_FUNCTION_95_4();
      v25 = sub_1E32AE9B0(v33);
      goto LABEL_43;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v25, v23);
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }
    }

    OUTLINED_FUNCTION_126();
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (*&v68[0] == v66 && *(&v68[0] + 1) == v67)
    {
      break;
    }

    OUTLINED_FUNCTION_149_1();
    v28 = sub_1E42079A4();

    if (v28)
    {
      goto LABEL_41;
    }

    v29 = __OFADD__(v25++, 1);
    if (v29)
    {
      goto LABEL_96;
    }
  }

LABEL_41:
  if (__OFADD__(v25, 1))
  {
    goto LABEL_109;
  }

  v34 = OUTLINED_FUNCTION_95_4();
  if (v25 + 1 == sub_1E32AE9B0(v34))
  {
LABEL_43:
    v35 = sub_1E32AE9B0(*v26);
    if (v35 < v25)
    {
      goto LABEL_108;
    }

    sub_1E3882AB0(v25, v35);
    OUTLINED_FUNCTION_132_2();
    v37(v36);
    v6 = v60;
LABEL_45:
    sub_1E38C130C();
    if (v38)
    {
      v40 = v61(v70);
      if (*v39)
      {
        v41 = v39;

        MEMORY[0x1E6910BF0](v42);
        sub_1E38C5A18(*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10));
        OUTLINED_FUNCTION_74();
        sub_1E4206324();
      }

      v40(v70, 0);
    }

    __swift_destroy_boxed_opaque_existential_1(v72);
    v18 = v62;
    if (v6)
    {
      goto LABEL_32;
    }

LABEL_31:
    sub_1E38C33B0();
    if ((v30 & 1) == 0)
    {
      if ((v18 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_32:
    sub_1E38C3854();
LABEL_33:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
    OUTLINED_FUNCTION_3_59();
    OUTLINED_FUNCTION_77();
    sub_1E32752B0(v31, v32);
    sub_1E4200624();

    goto LABEL_34;
  }

  v43 = v25 + 5;
  while (1)
  {
    v44 = v43 - 4;
    if ((*v26 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v43 - 4);
    }

    else
    {
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (v44 >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }
    }

    OUTLINED_FUNCTION_126();
    sub_1E4206254();
    sub_1E4206254();
    if (*&v68[0] == v66 && *(&v68[0] + 1) == v67)
    {

      goto LABEL_84;
    }

    OUTLINED_FUNCTION_149_1();
    v46 = sub_1E42079A4();

    if ((v46 & 1) == 0)
    {
      break;
    }

    v26 = v63;
LABEL_84:
    v56 = v43 - 3;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_99;
    }

    if (*v26 >> 62)
    {
      v57 = OUTLINED_FUNCTION_119_1();
    }

    else
    {
      v57 = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v43;
    if (v56 == v57)
    {
      goto LABEL_43;
    }
  }

  v26 = v63;
  if (v44 == v25)
  {
    goto LABEL_83;
  }

  v26 = *v63;
  if ((*v63 & 0xC000000000000001) != 0)
  {
    v48 = MEMORY[0x1E6911E60](v25, v26);
    OUTLINED_FUNCTION_142_3();
    v26 = *v58;
  }

  else
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_101;
    }

    OUTLINED_FUNCTION_131_4();
    if (v25 >= v47)
    {
      goto LABEL_102;
    }

    v48 = *(v26 + 8 * v25 + 32);
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x1E6911E60](v43 - 4, v26);
    OUTLINED_FUNCTION_142_3();
    v26 = *v59;
  }

  else
  {
    if ((v44 & 0x8000000000000000) != 0)
    {
      goto LABEL_103;
    }

    OUTLINED_FUNCTION_131_4();
    if (v44 >= v49)
    {
      goto LABEL_105;
    }

    v50 = *(v26 + 8 * v43);
  }

  swift_isUniquelyReferenced_nonNull_bridgeObject();
  OUTLINED_FUNCTION_142_3();
  *v51 = v26;
  if (!v52 || (v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
  {
    v26 = sub_1E37EFA58(v26);
    OUTLINED_FUNCTION_142_3();
    *v54 = v53;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    goto LABEL_104;
  }

  if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_106;
  }

  *((v26 & 0xFFFFFFFFFFFFFF8) + 8 * v25 + 0x20) = v50;

  v55 = OUTLINED_FUNCTION_95_4();
  if ((v55 & 0x8000000000000000) == 0 && (v55 & 0x4000000000000000) == 0)
  {
    if ((v44 & 0x8000000000000000) != 0)
    {
      goto LABEL_94;
    }

LABEL_81:
    if (v44 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

    *((v55 & 0xFFFFFFFFFFFFFF8) + 8 * v43) = v48;

LABEL_83:
    v29 = __OFADD__(v25++, 1);
    if (v29)
    {
      goto LABEL_100;
    }

    goto LABEL_84;
  }

  v55 = sub_1E37EFA58(v55);
  *v26 = v55;
  if ((v44 & 0x8000000000000000) == 0)
  {
    goto LABEL_81;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
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
}

uint64_t sub_1E38C5A18(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1E42062F4();
  }

  return result;
}

char *sub_1E38C5A44(char *a1, int64_t a2, char a3)
{
  result = sub_1E38C5A64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E38C5A64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_1E38C5B64(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEE0);
  result = sub_1E4207644();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + v11) = a1 & 1;
  }

  else
  {
    sub_1E38C5DE4(v11, a2, a3, a1 & 1, v15);
  }

  return result;
}

uint64_t sub_1E38C5C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E327D33C(a3, a4);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1E327D33C(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
  }

  else
  {
    sub_1E377E274(v13, a3, a4, a1, a2, v17);
  }
}

unint64_t sub_1E38C5DE4(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1E38C5E2C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v1 = OUTLINED_FUNCTION_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(v1);
    OUTLINED_FUNCTION_3_59();
    OUTLINED_FUNCTION_55_0();
    sub_1E32752B0(v2, v3);
    OUTLINED_FUNCTION_138_1();
    sub_1E4200624();
  }

  return result;
}

void sub_1E38C5EE4()
{
  sub_1E38C734C(319, &qword_1EE289F50, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1E3273C28();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E38C6028(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_37_1();
  (*v3)(a2);
  return a2;
}

void sub_1E38C6088()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v201 = v6;
  v8 = v7;
  v196 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v198 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v184 = v11 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v183 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v182 = &v176 - v16;
  v197 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v195 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v192 = v19 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v176 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v187 = v26 - v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_6();
  v186 = v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_6();
  v185 = v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  v194 = v33;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_6();
  v193 = v35;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_6();
  v191 = v37;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_6();
  v190 = v39;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_6();
  v189 = v41;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_18_6();
  v188 = v43;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_18_6();
  v200 = v45;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v176 - v47;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_6();
  v199 = v50;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_140_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v53);
  v202 = &v176 - v54;
  v212[3] = v5;
  v212[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v212);
  OUTLINED_FUNCTION_37_1();
  (*(v55 + 16))();
  sub_1E38C6028(v212, v206);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68);
  if (swift_dynamicCast())
  {
    sub_1E3251BE8(v204, v209);
    sub_1E38C6028(v209, v206);
    type metadata accessor for LibSidebandPlayableMediaEntity();
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1E38C4A48();
LABEL_56:
      __swift_destroy_boxed_opaque_existential_1(v209);
      goto LABEL_57;
    }

    v181 = v8;

    v56 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel;
    v57 = *(v201 + OBJC_IVAR____TtC8VideosUI18LibLockupViewModel_downloadButtonViewModel);
    if (v57)
    {
      v58 = [v57 assetController];
      v59 = v196;
      if (v58)
      {
        v60 = [v58 state];
        swift_unknownObjectRelease();
        v61 = [v60 status];

        v62 = *(v201 + v56);
        v179 = v61;
        v178 = 0;
        if (v62)
        {
          LODWORD(v180) = (v61 - 1) < 2;
        }

        else
        {
          LODWORD(v180) = 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_141_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_141_2();
      v59 = v196;
    }

    v63 = v210;
    v64 = v211;
    __swift_project_boxed_opaque_existential_1(v209, v210);
    (*(v64 + 96))(v63, v64);
    sub_1E38BBFF0();
    OUTLINED_FUNCTION_52(v1, 1, v59);
    if (v65)
    {
      v66 = 0;
    }

    else
    {
      v66 = sub_1E41FE514();
      (*(v198 + 8))(v1, v59);
    }

    v67 = objc_opt_self();
    v68 = [v67 shouldShowLabelForDownloadExpirationDate_];

    if (v68)
    {
      v69 = v197;
      if (v180)
      {
LABEL_17:
        sub_1E38C4A48();
        v70 = &unk_1ECF28E20;
        v71 = v202;
LABEL_55:
        sub_1E325F7FC(v71, v70);
        goto LABEL_56;
      }
    }

    else
    {
      sub_1E329E324(v202, v0);
      OUTLINED_FUNCTION_52(v0, 1, v59);
      if (v65)
      {
        v72 = 0;
      }

      else
      {
        v72 = sub_1E41FE514();
        (*(v198 + 8))(v0, v59);
      }

      v69 = v197;
      v73 = [v67 shouldShowLabelForDownloadExpirationDate_];

      if (v180 & 1 | ((v73 & 1) == 0))
      {
        goto LABEL_17;
      }
    }

    v74 = v69;
    v75 = v201;
    sub_1E38BBFF0();
    __swift_project_boxed_opaque_existential_1(v209, v210);
    v76 = OUTLINED_FUNCTION_75();
    v78 = v77(v76);
    sub_1E38BBFF0();
    v79 = OBJC_IVAR____TtC8VideosUI18LibLockupViewModel__lastKnownDownloadExpirationDate;
    OUTLINED_FUNCTION_11_3();
    v80 = v75 + v79;
    v81 = v69;
    sub_1E32ABDC0(v48, v80);
    swift_endAccess();
    v180 = v78;
    if ((v78 & 0x100000000) != 0)
    {
      sub_1E41A3110();
      v82 = v195;
      OUTLINED_FUNCTION_66_4();
      v83(v23);
      sub_1E38C6028(v209, v206);
      v84 = sub_1E41FFC94();
      v85 = sub_1E42067F4();
      if (os_log_type_enabled(v84, v85))
      {
        OUTLINED_FUNCTION_6_21();
        v86 = OUTLINED_FUNCTION_36_6();
        *&v204[0] = v86;
        *v82 = 136315138;
        __swift_project_boxed_opaque_existential_1(v206, v207);
        OUTLINED_FUNCTION_55_12();
        v87 = sub_1E4207944();
        v89 = v88;
        __swift_destroy_boxed_opaque_existential_1(v206);
        sub_1E3270FC8(v87, v89, v204);
        OUTLINED_FUNCTION_55_12();

        *(v82 + 4) = v87;
        _os_log_impl(&dword_1E323F000, v84, v85, "Downloaded movie/episode %s should have adam ID", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v86);
        v81 = v197;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();

        (*(v195 + 8))(v23, v81);
      }

      else
      {

        (*(v82 + 8))(v23, v74);
        __swift_destroy_boxed_opaque_existential_1(v206);
      }
    }

    sub_1E38C6028(v209, v204);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
    if (swift_dynamicCast())
    {
      v90 = v208;
      __swift_project_boxed_opaque_existential_1(v206, v207);
      v91 = OUTLINED_FUNCTION_38();
      v92(v91, v90);
      __swift_destroy_boxed_opaque_existential_1(v206);
    }

    else
    {
      v208 = 0;
      OUTLINED_FUNCTION_49_14();
      sub_1E325F7FC(v206, &qword_1ECF2CEA0);
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v59);
    }

    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    v176 = xmmword_1E4299720;
    v97 = OUTLINED_FUNCTION_130(inited, xmmword_1E4299720);
    sub_1E3854630(v97);
    inited[2].n128_u64[0] = v98;
    inited[2].n128_u64[1] = v99;
    v100 = MEMORY[0x1E69E6370];
    inited[4].n128_u64[1] = MEMORY[0x1E69E6370];
    inited[3].n128_u8[0] = 1;
    sub_1E3854630(2);
    inited[5].n128_u64[0] = v101;
    inited[5].n128_u64[1] = v102;
    inited[7].n128_u64[1] = v100;
    inited[6].n128_u8[0] = 1;
    v103 = sub_1E4205CB4();
    v104 = v188;
    sub_1E329E324(v199, v188);
    v105 = OUTLINED_FUNCTION_88_3();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v105, v106, v59);
    v108 = MEMORY[0x1E69E63B0];
    if (EnumTagSinglePayload == 1)
    {
      sub_1E325F7FC(v104, &unk_1ECF28E20);
    }

    else
    {
      v109 = v198;
      v110 = v182;
      (*(v198 + 32))(v182, v104, v59);
      sub_1E38547CC(0);
      OUTLINED_FUNCTION_143_2();
      sub_1E41FE574();
      v207 = v108;
      v206[0] = v111;
      OUTLINED_FUNCTION_80_5();
      OUTLINED_FUNCTION_11_42();

      v103 = v203;
      (*(v109 + 8))(v110, v59);
    }

    v112 = v189;
    sub_1E329E324(v200, v189);
    v113 = OUTLINED_FUNCTION_88_3();
    OUTLINED_FUNCTION_52(v113, v114, v59);
    v115 = v59;
    v116 = v192;
    if (v65)
    {
      sub_1E325F7FC(v112, &unk_1ECF28E20);
    }

    else
    {
      OUTLINED_FUNCTION_114_3();
      v117();
      sub_1E3854630(1);
      OUTLINED_FUNCTION_143_2();
      sub_1E41FE574();
      v207 = MEMORY[0x1E69E63B0];
      v206[0] = v118;
      OUTLINED_FUNCTION_80_5();
      OUTLINED_FUNCTION_11_42();

      v103 = v203;
      v119 = OUTLINED_FUNCTION_114_1();
      v120(v119);
    }

    v121 = v190;
    sub_1E329E324(v202, v190);
    v122 = OUTLINED_FUNCTION_88_3();
    OUTLINED_FUNCTION_52(v122, v123, v115);
    if (v65)
    {
      sub_1E325F7FC(v121, &unk_1ECF28E20);
    }

    else
    {
      OUTLINED_FUNCTION_114_3();
      v124();
      sub_1E41FE574();
      v126 = v125;
      sub_1E38547CC(1);
      OUTLINED_FUNCTION_143_2();
      v207 = MEMORY[0x1E69E63B0];
      v206[0] = v126;
      OUTLINED_FUNCTION_80_5();
      OUTLINED_FUNCTION_11_42();

      v103 = v203;
      v127 = OUTLINED_FUNCTION_114_1();
      v128(v127);
    }

    v129 = v194;
    v130 = v81;
    v131 = v179;
    if ((v178 & 1) == 0)
    {
      sub_1E38547CC(2);
      OUTLINED_FUNCTION_143_2();
      v207 = MEMORY[0x1E69E6810];
      v206[0] = v131;
      OUTLINED_FUNCTION_80_5();
      OUTLINED_FUNCTION_11_42();

      v103 = v203;
    }

    v132 = v195;
    v133 = v191;
    v134 = swift_allocObject();
    OUTLINED_FUNCTION_117(v134, v176);
    v134[2].n128_u64[0] = v135;
    v134[2].n128_u64[1] = v136;
    v134[4].n128_u64[1] = MEMORY[0x1E69E72F0];
    v137 = v180;
    if ((v180 & 0x100000000) != 0)
    {
      v137 = 0;
    }

    v134[3].n128_u32[0] = v137;
    ViewModelKeys.rawValue.getter(11);
    v134[5].n128_u64[0] = v138;
    v134[5].n128_u64[1] = v139;
    v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    v134[7].n128_u64[1] = v191;
    v134[6].n128_u64[0] = v103;
    v190 = sub_1E4205CB4();
    v140 = sub_1E41A3110();
    (*(v132 + 16))(v116, v140, v81);
    sub_1E329E324(v199, v133);
    sub_1E329E324(v202, v193);
    sub_1E329E324(v200, v129);
    v141 = v201;

    v142 = sub_1E41FFC94();
    v143 = sub_1E4206814();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = v143;
      v145 = swift_slowAlloc();
      *&v204[0] = swift_slowAlloc();
      *v145 = 136315906;
      (*(*v141 + 1496))(v206);
      __swift_project_boxed_opaque_existential_1(v206, v207);
      OUTLINED_FUNCTION_33_24();
      v146 = OUTLINED_FUNCTION_114_1();
      v147(v146);
      OUTLINED_FUNCTION_108_3();
      __swift_destroy_boxed_opaque_existential_1(v206);
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_10_23();

      *(v145 + 4) = v141;
      *(v145 + 12) = 2080;
      v148 = v185;
      sub_1E329E324(v133, v185);
      v149 = OUTLINED_FUNCTION_88_3();
      v150 = v196;
      OUTLINED_FUNCTION_52(v149, v151, v196);
      if (v65)
      {
        sub_1E325F7FC(v148, &unk_1ECF28E20);
        OUTLINED_FUNCTION_49_14();
      }

      else
      {
        v207 = v150;
        __swift_allocate_boxed_opaque_existential_1(v206);
        OUTLINED_FUNCTION_114_3();
        v158();
      }

      sub_1E3294FA4(v206);
      OUTLINED_FUNCTION_108_3();
      sub_1E325F7FC(v133, &unk_1ECF28E20);
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_10_23();

      *(v145 + 14) = v148;
      *(v145 + 22) = 2080;
      v159 = v186;
      sub_1E329E324(v193, v186);
      v160 = OUTLINED_FUNCTION_88_3();
      OUTLINED_FUNCTION_52(v160, v161, v150);
      if (v65)
      {
        sub_1E325F7FC(v159, &unk_1ECF28E20);
        OUTLINED_FUNCTION_49_14();
      }

      else
      {
        v207 = v150;
        __swift_allocate_boxed_opaque_existential_1(v206);
        OUTLINED_FUNCTION_114_3();
        v162();
      }

      sub_1E3294FA4(v206);
      OUTLINED_FUNCTION_108_3();
      sub_1E325F7FC(v193, &unk_1ECF28E20);
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_10_23();

      *(v145 + 24) = v159;
      *(v145 + 32) = 2080;
      v163 = v187;
      sub_1E329E324(v194, v187);
      v164 = OUTLINED_FUNCTION_88_3();
      OUTLINED_FUNCTION_52(v164, v165, v150);
      if (v65)
      {
        sub_1E325F7FC(v163, &unk_1ECF28E20);
        OUTLINED_FUNCTION_49_14();
      }

      else
      {
        v207 = v150;
        __swift_allocate_boxed_opaque_existential_1(v206);
        OUTLINED_FUNCTION_114_3();
        v166();
      }

      sub_1E3294FA4(v206);
      OUTLINED_FUNCTION_108_3();
      sub_1E325F7FC(v194, &unk_1ECF28E20);
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_10_23();

      *(v145 + 34) = v163;
      _os_log_impl(&dword_1E323F000, v142, v144, "LibLockupViewModel:: %s\ndownloadExpirationDate %s\navailabilityEndDate %s\nrentalExpirationDate %s", v145, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v195 + 8))(v192, v197);
    }

    else
    {

      OUTLINED_FUNCTION_68_3();
      sub_1E325F7FC(v152, v153);
      OUTLINED_FUNCTION_68_3();
      sub_1E325F7FC(v154, v155);
      OUTLINED_FUNCTION_68_3();
      sub_1E325F7FC(v156, v157);
      (*(v132 + 8))(v116, v130);
    }

    type metadata accessor for TextViewModel();
    v207 = v191;
    v206[0] = v190;

    OUTLINED_FUNCTION_21_7();
    sub_1E3C27638(v167, v168, v169, v170, v171);
    OUTLINED_FUNCTION_55_0();
    sub_1E325F7FC(v172, v173);
    OUTLINED_FUNCTION_55_0();
    sub_1E325F7FC(v174, v175);
    OUTLINED_FUNCTION_55_0();
    goto LABEL_55;
  }

  v205 = 0;
  memset(v204, 0, sizeof(v204));
  sub_1E325F7FC(v204, &qword_1ECF2CE78);
LABEL_57:
  __swift_destroy_boxed_opaque_existential_1(v212);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E38C7158()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_11_3();
    v1 = OUTLINED_FUNCTION_34();
    __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
    OUTLINED_FUNCTION_90();
    v3();
    swift_endAccess();
    sub_1E38BB0A4();
    sub_1E38C33B0();
    if (v4)
    {
      sub_1E38C3854();

      v5 = OUTLINED_FUNCTION_34();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5);
      OUTLINED_FUNCTION_3_59();
      OUTLINED_FUNCTION_55_0();
      sub_1E32752B0(v6, v7);
      OUTLINED_FUNCTION_138_1();
      sub_1E4200624();
    }
  }

  return result;
}

uint64_t sub_1E38C7288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E38C72D0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [swift_weakLoadStrong() handleIsPlaybackUIBeingShownDidChange];
}

void sub_1E38C734C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

BOOL OUTLINED_FUNCTION_62_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_80_5()
{
  sub_1E329504C((v1 - 240), (v0 + 368));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_103_4()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_141_2()
{
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 36) = 1;
}

void OUTLINED_FUNCTION_152_1(uint64_t a1@<X8>)
{
  v3[9] = v2;
  v3[6] = a1;
  v3[7] = v1;

  ViewModelKeys.rawValue.getter(13);
}

uint64_t OUTLINED_FUNCTION_154_2()
{

  return sub_1E42062F4();
}

uint64_t OUTLINED_FUNCTION_155_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_157_2()
{

  return sub_1E38BBD0C();
}

uint64_t OUTLINED_FUNCTION_158_2()
{
}

uint64_t sub_1E38C75E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E38C7694())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3844B3C;
}

void (*sub_1E38C7724())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E38C7828;
}

uint64_t sub_1E38C7854@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E38C7900())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3846A58;
}

uint64_t sub_1E38C7984()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E38C7A00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E38C7B28())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E38C7C2C;
}

void sub_1E38C7C44(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E38C7D0C()
{
  type metadata accessor for MediaShowcasingHeaderViewPresenter();
  OUTLINED_FUNCTION_0_66();
  sub_1E38CA6B8(v0, v1);
  sub_1E4200514();
  sub_1E4200594();
}

uint64_t type metadata accessor for MediaShowcasingHeaderViewPresenter()
{
  result = qword_1EE2914A0;
  if (!qword_1EE2914A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38C7DCC()
{
  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingHeaderViewPresenter__isMuteButtonVisible;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcasingHeaderViewPresenter__isMuted, v2);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1E38C7E9C()
{
  v0 = swift_allocObject();
  sub_1E38C7ED4();
  return v0;
}

uint64_t sub_1E38C7ED4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingHeaderViewPresenter__isMuteButtonVisible;
  v11[15] = 0;
  sub_1E4200634();
  v8 = *(v3 + 32);
  v8(v0 + v7, v6, v1);
  v9 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingHeaderViewPresenter__isMuted;
  v11[14] = 0;
  sub_1E4200634();
  v8(v0 + v9, v6, v1);
  return v0;
}

uint64_t sub_1E38C7FF8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MediaShowcasingHeaderViewPresenter();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t (*sub_1E38C8038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>))()
{
  if ([objc_opt_self() isPad])
  {
    v14 = &unk_1F5D62390;
  }

  else
  {
    v14 = &unk_1F5D623D0;
  }

  result = sub_1E3AF9FFC(v14);
  *a7 = a1;
  *(a7 + 8) = sub_1E38074D0;
  *(a7 + 16) = a2;
  *(a7 + 24) = 0;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  *(a7 + 64) = result;
  *(a7 + 72) = v17;
  *(a7 + 80) = v16 & 1;
  return result;
}

uint64_t sub_1E38C80FC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201B84();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEF0);
  sub_1E38C81CC();
  sub_1E4203DA4();
  sub_1E4200D94();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEF8) + 36));
  *v2 = v5;
  v2[1] = v6;
  v2[2] = v7;
  v3 = sub_1E4202774();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF00);
  *(a1 + *(result + 36)) = v3;
  return result;
}

void sub_1E38C81CC()
{
  OUTLINED_FUNCTION_93();
  v50 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF80);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v45 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF88);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v49 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF68);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v48 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF90);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF98);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v51 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v45 - v27;
  sub_1E38C86F8();
  v29 = objc_opt_self();
  v30 = [v29 mainScreen];
  [v30 bounds];

  sub_1E4203DA4();
  sub_1E4200D94();
  sub_1E379D7E4(v21, v28, &qword_1ECF2CF90);
  v31 = &v28[*(v23 + 44)];
  v32 = v53;
  *v31 = v52;
  *(v31 + 1) = v32;
  *(v31 + 2) = v54;
  sub_1E325F6F0(v21, &qword_1ECF2CF90);
  v46 = v17;
  sub_1E38C8C60(v17);
  sub_1E38C92C0();
  v33 = [v29 mainScreen];
  [v33 bounds];

  sub_1E4203DA4();
  sub_1E4200D94();
  v34 = v47;
  sub_1E379D7E4(v4, v47, &qword_1ECF2CF80);
  v35 = (v34 + *(v6 + 44));
  v36 = v56;
  *v35 = v55;
  v35[1] = v36;
  v35[2] = v57;
  sub_1E325F6F0(v4, &qword_1ECF2CF80);
  v37 = v51;
  sub_1E379D7E4(v28, v51, &qword_1ECF2CF98);
  v38 = v48;
  sub_1E379D7E4(v17, v48, &qword_1ECF2CF68);
  v39 = v49;
  sub_1E379D7E4(v34, v49, &qword_1ECF2CF88);
  v40 = v37;
  v41 = v50;
  sub_1E379D7E4(v40, v50, &qword_1ECF2CF98);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFA0);
  v43 = v41 + v42[12];
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_1E379D7E4(v38, v41 + v42[16], &qword_1ECF2CF68);
  v44 = v41 + v42[20];
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_1E379D7E4(v39, v41 + v42[24], &qword_1ECF2CF88);
  sub_1E325F6F0(v34, &qword_1ECF2CF88);
  sub_1E325F6F0(v46, &qword_1ECF2CF68);
  sub_1E325F6F0(v28, &qword_1ECF2CF98);
  sub_1E325F6F0(v39, &qword_1ECF2CF88);
  sub_1E325F6F0(v38, &qword_1ECF2CF68);
  sub_1E325F6F0(v51, &qword_1ECF2CF98);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E38C86F8()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4201F64();
  OUTLINED_FUNCTION_0_10();
  v47 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFD0);
  OUTLINED_FUNCTION_0_10();
  v48 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFE0);
  OUTLINED_FUNCTION_0_10();
  v46 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v42 - v20;
  OUTLINED_FUNCTION_14_18();
  if ((*(v21 + 392))())
  {
    type metadata accessor for PlaylistLockupLayout();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      v42 = v13;
      v43 = v3;
      if (sub_1E39DFFC8())
      {
        v24 = 20.0;
      }

      else
      {
        v24 = 16.0;
      }

      v25 = *(v23 + 104);
      v26 = swift_allocObject();
      memcpy((v26 + 16), v1, 0x51uLL);

      sub_1E37FA88C(v1, v55);
      v27 = OUTLINED_FUNCTION_18();
      sub_1E3B1F350(0x6B72616D78, 0xE500000000000000, v25, v27 & 1, sub_1E38CA688, v26, v55, v24);
      v44 = v55[3];
      OUTLINED_FUNCTION_11_43();
      v54 = v55[6];
      sub_1E4201724();
      v28 = sub_1E38CA3A4();
      v29 = sub_1E38CA6B8(&qword_1ECF2CFE8, MEMORY[0x1E697C658]);
      sub_1E4202DF4();
      (*(v47 + 8))(v8, v4);
      sub_1E3782C70(&v56);

      sub_1E38C9868(0x6C65636E6163, 0xE600000000000000);
      v50 = &type metadata for MediaShowcasingMetadataControlButton;
      v51 = v4;
      v52 = v28;
      v53 = v29;
      swift_getOpaqueTypeConformance2();
      v30 = v49;
      sub_1E4202EA4();

      (*(v48 + 8))(v12, v30);
      v31 = [objc_opt_self() sharedInstance];
      if (v31)
      {
        v32 = v31;
        sub_1E3797E30(0xD000000000000022, 0x80000001E4266430, v31);

        sub_1E38CA700();
        v33 = v45;
        sub_1E3E03528();

        sub_1E325F6F0(v16, &qword_1ECF2CFD8);
        (*(v46 + 32))(v43, v33, v17);
        v34 = OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v34, v35, v36, v17);
        OUTLINED_FUNCTION_54_0();
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  OUTLINED_FUNCTION_19_32();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
}

uint64_t sub_1E38C8C60@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v52 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v56 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF20);
  OUTLINED_FUNCTION_0_10();
  v57 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  OUTLINED_FUNCTION_14_18();
  v23 = (*(v22 + 488))();
  if (v23)
  {
    v24 = sub_1E373E010(17, v23);

    if (v24)
    {
      if (*v24 == _TtC8VideosUI13TextViewModel)
      {
        v25 = sub_1E3C27528();
        if (v25)
        {
          v26 = v25;
          type metadata accessor for TextLayout();
          v27 = swift_dynamicCastClass();
          if (v27)
          {
            v54 = v27;
            v55 = v26;
            v28 = objc_opt_self();
            if (([v28 isPad] & 1) != 0 || objc_msgSend(v28, sel_isPhone))
            {
              OUTLINED_FUNCTION_18();
              sub_1E3F23370();
              v29 = *(*v54 + 152);
              v52 = *v54 + 152;
              v53 = v29;

              v53(v65, v30);

              sub_1E38C98EC(v65);
              (*(v56 + 8))(v11, v7);
              v31 = sub_1E38C9EA8();
              v32 = OUTLINED_FUNCTION_9_46();
              sub_1E40A7FF0(v32, v33, 6, v12, v31);
              sub_1E325F6F0(v1, &qword_1ECF2CF18);
              v34 = v57;
              v35 = v59;
              (*(v57 + 16))(v60, v17, v59);
              swift_storeEnumTagMultiPayload();
              v63 = v12;
              v64 = v31;
              OUTLINED_FUNCTION_5_27();
              swift_getOpaqueTypeConformance2();
              OUTLINED_FUNCTION_69();
              sub_1E32752B0(v36, v37);
              sub_1E4201F44();

              (*(v34 + 8))(v17, v35);
            }

            else
            {
              *v4 = sub_1E4201B84();
              *(v4 + 1) = 0;
              v4[16] = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF30);
              v40 = v54;
              sub_1E38C9B30();
              v41 = *(*v40 + 1560);

              LOBYTE(v40) = v41(v42);

              v43 = sub_1E3A253B8(v40);
              v44 = v60;
              v45 = &v4[*(v61 + 52)];
              *v45 = v43;
              v45[1] = v46;
              sub_1E379D7E4(v4, v44, &qword_1ECF2CF08);
              swift_storeEnumTagMultiPayload();
              v47 = sub_1E38C9EA8();
              v65[0] = v12;
              v65[1] = v47;
              OUTLINED_FUNCTION_5_27();
              swift_getOpaqueTypeConformance2();
              OUTLINED_FUNCTION_69();
              sub_1E32752B0(v48, &qword_1ECF2CF08);
              sub_1E4201F44();

              sub_1E325F6F0(v4, &qword_1ECF2CF08);
            }

            sub_1E32B81A8(v21, v62);
            v49 = OUTLINED_FUNCTION_22_1();
            return __swift_storeEnumTagSinglePayload(v49, v50, v51, v18);
          }
        }
      }
    }
  }

  v38 = v62;

  return __swift_storeEnumTagSinglePayload(v38, 1, 1, v18);
}

void sub_1E38C92C0()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFA8);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFB8);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_14_18();
  if ((*(v16 + 392))())
  {
    v62 = v14;
    v63 = v9;
    type metadata accessor for PlaylistLockupLayout();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;
      v55 = v12;
      v56 = v1;
      v57 = v4;
      v19 = *(v0 + 8);
      v20 = *(v0 + 16);
      v21 = v2[24];
      v22 = type metadata accessor for MediaShowcasingHeaderViewPresenter();
      OUTLINED_FUNCTION_0_66();
      sub_1E38CA6B8(v23, v24);
      v61 = v19;
      v60 = v20;
      v59 = v21;
      v58 = v22;
      sub_1E4200BC4();
      OUTLINED_FUNCTION_30();
      LOBYTE(v19) = (*(v25 + 144))();

      v26 = (v19 & 1) == 0;
      if (v19)
      {
        v27 = 0xD000000000000012;
      }

      else
      {
        v27 = 0xD000000000000013;
      }

      if (v26)
      {
        v28 = "_isMuteButtonVisible";
      }

      else
      {
        v28 = ".UnmuteAcessibility";
      }

      v29 = 16.0;
      if ((sub_1E39DFFC8() & 1) == 0)
      {
        type metadata accessor for LayoutGrid();
        v30 = sub_1E3A256EC();
        if (sub_1E3A24FDC(v30))
        {
          v29 = 12.0;
        }

        else
        {
          v29 = 14.0;
        }
      }

      v31 = *(v18 + 112);
      v32 = swift_allocObject();
      memcpy((v32 + 16), v2, 0x51uLL);

      sub_1E37FA88C(v2, v66);
      v33 = OUTLINED_FUNCTION_18();
      sub_1E3B1F350(v27, v28 | 0x8000000000000000, v31, v33 & 1, sub_1E38CA2DC, v32, v66, v29);
      OUTLINED_FUNCTION_11_43();
      v65 = v66[6];
      sub_1E38C9868(1702131053, 0xE400000000000000);
      sub_1E38CA3A4();
      sub_1E4202EA4();

      sub_1E3782C70(&v67);

      sub_1E4200BC4();
      OUTLINED_FUNCTION_30();
      v35 = (*(v34 + 96))();

      if (v35)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = 0.0;
      }

      v37 = v8;
      v38 = v64;
      sub_1E38CA3F8(v37, v64);
      *(v38 + *(v63 + 36)) = v36;
      sub_1E4200BC4();
      OUTLINED_FUNCTION_30();
      v40 = (*(v39 + 144))();

      v41 = [objc_opt_self() sharedInstance];
      if (v41)
      {
        v42 = v41;
        if (v40)
        {
          v43 = ".MuteAcessibility";
        }

        else
        {
          v43 = "speaker.wave.3.fill";
        }

        if (v40)
        {
          v44 = 0xD000000000000023;
        }

        else
        {
          v44 = 0xD000000000000021;
        }

        sub_1E3797E30(v44, v43 | 0x8000000000000000, v42);

        sub_1E38CA468();
        v45 = v56;
        sub_1E3E03528();

        sub_1E38CA5B0(v38);
        v46 = v55;
        (*(v62 + 32))(v57, v45, v55);
        v47 = OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
        OUTLINED_FUNCTION_54_0();
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  OUTLINED_FUNCTION_19_32();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
}

uint64_t sub_1E38C9868(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69109E0](a1, a2);
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E38C98EC(uint64_t a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  if (*(a1 + 32))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
    OUTLINED_FUNCTION_2();
    (*(v11 + 16))(v7, v3, v10);
    swift_storeEnumTagMultiPayload();
    sub_1E38C9F4C();
    OUTLINED_FUNCTION_6_49();
    OUTLINED_FUNCTION_18_27();
    return sub_1E4201F44();
  }

  else
  {
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v16 = *a1;
    v15 = *(a1 + 8);
    v17 = sub_1E4202724();
    sub_1E3952BE0(v16, v15, v14, v13);
    sub_1E4200A54();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
    OUTLINED_FUNCTION_2();
    (*(v27 + 16))(v2, v3, v26);
    v28 = v2 + *(v8 + 36);
    *v28 = v17;
    *(v28 + 8) = v19;
    *(v28 + 16) = v21;
    *(v28 + 24) = v23;
    *(v28 + 32) = v25;
    *(v28 + 40) = 0;
    sub_1E379D7E4(v2, v7, &qword_1ECF28CC0);
    swift_storeEnumTagMultiPayload();
    sub_1E38C9F4C();
    OUTLINED_FUNCTION_6_49();
    OUTLINED_FUNCTION_18_27();
    sub_1E4201F44();
    return sub_1E325F6F0(v2, &qword_1ECF28CC0);
  }
}

void sub_1E38C9B30()
{
  OUTLINED_FUNCTION_93();
  v40 = v0;
  v37[1] = v1;
  v3 = v2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v39 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v37 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF20);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v37 - v19;
  type metadata accessor for LayoutGrid();
  v21 = sub_1E3A256EC();
  v22 = sub_1E3A25310(v21);
  if (v22 == 5 || (LOBYTE(v43[0]) = v22, v42 = 3, sub_1E37F9A28(), (sub_1E4205E84() & 1) == 0) || (v23 = [objc_opt_self() mainScreen], objc_msgSend(v23, sel_bounds), v25 = v24, v27 = v26, v23, v25 >= v27))
  {
    v29 = 0;
    v28 = 1;
  }

  else
  {
    v28 = 0;
    v29 = 1;
  }

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  (*(*v40 + 152))(v43);
  sub_1E38C98EC(v43);
  (*(v39 + 8))(v7, v41);
  sub_1E38C9EA8();
  v30 = OUTLINED_FUNCTION_9_46();
  sub_1E40A7FF0(v30, v31, 6, v38, v32);
  sub_1E325F6F0(v10, &qword_1ECF2CF18);
  v33 = *(v13 + 16);
  v33(v17, v20, v11);
  *v3 = 0;
  *(v3 + 8) = v29;
  *(v3 + 9) = v28;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CF78);
  v33(v3 + *(v34 + 48), v17, v11);
  v35 = v3 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = *(v13 + 8);
  v36(v20, v11);
  v36(v17, v11);
  OUTLINED_FUNCTION_54_0();
}

unint64_t sub_1E38C9EA8()
{
  result = qword_1ECF2CF38;
  if (!qword_1ECF2CF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CF18);
    sub_1E38C9F4C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CF38);
  }

  return result;
}

unint64_t sub_1E38C9F4C()
{
  result = qword_1EE289C88;
  if (!qword_1EE289C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C88);
  }

  return result;
}

void sub_1E38CA058()
{
  sub_1E32A995C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E38CA0F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1E38CA130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E38CA198()
{
  result = qword_1ECF2CF48;
  if (!qword_1ECF2CF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CF00);
    sub_1E38CA224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CF48);
  }

  return result;
}

unint64_t sub_1E38CA224()
{
  result = qword_1ECF2CF50;
  if (!qword_1ECF2CF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CEF8);
    sub_1E32752B0(&qword_1ECF2CF58, &qword_1ECF2CF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CF50);
  }

  return result;
}

void sub_1E38CA2DC()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    type metadata accessor for MediaShowcasingHeaderViewPresenter();
    OUTLINED_FUNCTION_0_66();
    sub_1E38CA6B8(v2, v3);
    sub_1E4200BC4();
    OUTLINED_FUNCTION_30();
    v5 = (*(v4 + 144))();

    v1((v5 & 1) == 0);
  }
}

unint64_t sub_1E38CA3A4()
{
  result = qword_1EE23DF38[0];
  if (!qword_1EE23DF38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE23DF38);
  }

  return result;
}

uint64_t sub_1E38CA3F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E38CA468()
{
  result = qword_1ECF2CFC0;
  if (!qword_1ECF2CFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CFB0);
    sub_1E38CA4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CFC0);
  }

  return result;
}

unint64_t sub_1E38CA4F4()
{
  result = qword_1ECF2CFC8;
  if (!qword_1ECF2CFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CFA8);
    sub_1E38CA3A4();
    sub_1E38CA6B8(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CFC8);
  }

  return result;
}

uint64_t sub_1E38CA5B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_12()
{

  sub_1E3264CE0();
  if (*(v0 + 48))
  {
  }

  if (*(v0 + 64))
  {
  }

  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E38CA688()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1E38CA6B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E38CA700()
{
  result = qword_1ECF2CFF0;
  if (!qword_1ECF2CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CFD8);
    sub_1E4201F64();
    sub_1E38CA3A4();
    sub_1E38CA6B8(&qword_1ECF2CFE8, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    sub_1E38CA6B8(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CFF0);
  }

  return result;
}

uint64_t variable initialization expression of ClarityUIRootView._finishedLaunching@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D000);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of ClarityUIRootView.dataSourceManager()
{
  sub_1E3B7B1C8();
}

void sub_1E38CA900()
{
  v4 = *(v1 + *(type metadata accessor for ClarityUIRootView() + 24));
  (*(*v4 + 672))();
  OUTLINED_FUNCTION_40_19();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v0 + 16))
    {
      break;
    }

    sub_1E327F454(v4, v6);
    sub_1E327F454(v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    type metadata accessor for LibLocalSource();
    if (OUTLINED_FUNCTION_47_13())
    {

      sub_1E3251BE8(v6, v7);
      OUTLINED_FUNCTION_47_13();
      return;
    }

    ++v2;
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    v4 += 40;
  }

  __break(1u);
}

uint64_t sub_1E38CAA6C(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v2 = OUTLINED_FUNCTION_40_2(a1, a2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_42_10(v3, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  sub_1E42038E4();
  return v13;
}

uint64_t sub_1E38CAAA4()
{
  v1 = type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_10_40();
  v10 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D018);
  sub_1E42038F4();
  sub_1E38CAB7C(v8);

  v9 = sub_1E38CF700(v3);
  sub_1E38CE528(&v9);

  v4 = (v0 + *(v1 + 28));
  v6 = *v4;
  v5 = v4[1];
  v9 = v6;
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D008);
  return OUTLINED_FUNCTION_37_17();
}

void *sub_1E38CAB7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1E37FEA14(*(a1 + 16), 0);
  v4 = sub_1E38D095C(&v6, v3 + 4, v2, a1);
  sub_1E34AF4DC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t variable initialization expression of ClarityUIRootView._downloadedMedia()
{
  type metadata accessor for LibLockupViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFF8);
  OUTLINED_FUNCTION_0_67();
  sub_1E38D065C(v0, v1);

  return sub_1E4205CB4();
}

void ClarityUIRootView.body.getter()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v33 = v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D028);
  OUTLINED_FUNCTION_0_10();
  v28 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v27 = v5;
  OUTLINED_FUNCTION_138();
  v6 = type metadata accessor for ClarityUIRootView();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_14();
  v31 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D030) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v30 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D008);
  sub_1E4203914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D038);
  sub_1E374AD40(&qword_1ECF2D040, &qword_1ECF2CFF8);
  OUTLINED_FUNCTION_14_11();
  sub_1E374AD40(v13, &qword_1ECF2CFF8);
  sub_1E374AD40(&qword_1ECF2D050, &qword_1ECF2CFF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D058);
  sub_1E4201DB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D060);
  type metadata accessor for LibLockupViewModel();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D068);
  OUTLINED_FUNCTION_4_61();
  sub_1E374AD40(v14, &qword_1ECF2D060);
  OUTLINED_FUNCTION_0_67();
  sub_1E38D065C(v15, v16);
  sub_1E38CE0F4();
  OUTLINED_FUNCTION_14_9();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_41();
  swift_getOpaqueTypeConformance2();
  sub_1E42013B4();
  sub_1E38CE244(v0, v31);
  v17 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v18 = swift_allocObject();
  sub_1E38CE2A8(v31, v18 + v17);
  v19 = (v30 + *(v10 + 44));
  *v19 = sub_1E38CE30C;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  sub_1E38CA900();
  if (v20 && (v21 = v20, v22 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x278))(), v21, v22))
  {
    (*(*v22 + 280))();

    v23 = sub_1E3B501F8();
  }

  else
  {
    sub_1E42005C4();
    sub_1E374AD40(&qword_1EE28A118, &qword_1ECF2D028);
    v23 = sub_1E42006B4();
    (*(v28 + 8))(v27, v29);
  }

  sub_1E38CE244(v1, v31);
  v24 = swift_allocObject();
  sub_1E38CE2A8(v31, v24 + v17);
  sub_1E32B821C(v30, v33);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D098);
  *(v33 + *(v25 + 52)) = v23;
  v26 = (v33 + *(v25 + 56));
  *v26 = sub_1E38CE324;
  v26[1] = v24;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38CB22C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v64 = v4;
  sub_1E4201D84();
  OUTLINED_FUNCTION_0_10();
  v59 = v6;
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v61 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  v58 = (&v48 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0A0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v55 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v48 - v14;
  OUTLINED_FUNCTION_138();
  sub_1E4201DB4();
  OUTLINED_FUNCTION_0_10();
  v62 = v15;
  v63 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v57 = v18 - v17;
  OUTLINED_FUNCTION_138();
  v19 = type metadata accessor for ClarityUIRootView();
  v20 = OUTLINED_FUNCTION_8_0(v19);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_28();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D060);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D058);
  OUTLINED_FUNCTION_0_10();
  v56 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_26_2();
  v52 = v1;
  v66 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0E8);
  sub_1E38D051C(&qword_1ECF2D0F0, &qword_1ECF2D0E8, &unk_1E42A8EF0, sub_1E38D03C8);
  sub_1E4202AE4();
  v26 = type metadata accessor for LibLockupViewModel();
  sub_1E38CE244(v3, v0);
  v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v28 = swift_allocObject();
  sub_1E38CE2A8(v0, v28 + v27);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D068);
  OUTLINED_FUNCTION_4_61();
  v49 = sub_1E374AD40(v29, &qword_1ECF2D060);
  OUTLINED_FUNCTION_0_67();
  v48 = sub_1E38D065C(v30, v31);
  v47 = sub_1E38CE0F4();
  v51 = v26;
  sub_1E4203284();

  v32 = OUTLINED_FUNCTION_63_0();
  v33(v32);
  v34 = *MEMORY[0x1E697C570];
  v35 = sub_1E4201D94();
  OUTLINED_FUNCTION_2();
  v37 = v53;
  (*(v36 + 104))(v53, v34, v35);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v35);
  v39 = v58;
  v38 = v59;
  *v58 = 0x3FE5555555555555;
  v40 = v60;
  (*(v38 + 104))(v39, *MEMORY[0x1E697C568], v60);
  v41 = v55;
  sub_1E37E93E8(v37, v55, &qword_1ECF2D0A0);
  v42 = v61;
  (*(v38 + 16))(v61, v39, v40);
  v43 = v57;
  OUTLINED_FUNCTION_35_19(v41, v42);
  (*(v38 + 8))(v39, v40);
  sub_1E325F69C(v37, &qword_1ECF2D0A0);
  v67 = v65;
  v68 = v51;
  v69 = v50;
  v70 = v49;
  v71 = v48;
  v72 = v47;
  OUTLINED_FUNCTION_14_9();
  swift_getOpaqueTypeConformance2();
  v44 = v62;
  sub_1E42035B4();
  (*(v63 + 8))(v43, v44);
  v45 = OUTLINED_FUNCTION_63_0();
  v46(v45);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38CB860(uint64_t a1)
{
  v3 = type metadata accessor for ClarityUIRootView();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D008);
  sub_1E42038F4();
  sub_1E38CE244(a1, v1);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_allocObject();
  sub_1E38CE2A8(v1, v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D100);
  OUTLINED_FUNCTION_14_11();
  sub_1E374AD40(v9, &qword_1ECF2CFF8);
  sub_1E38D03C8();
  OUTLINED_FUNCTION_0_67();
  sub_1E38D065C(v10, v11);
  return OUTLINED_FUNCTION_26_24();
}

void sub_1E38CBA0C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v36 = v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D120);
  OUTLINED_FUNCTION_0_10();
  v35 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D170);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D110);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = *v1;
  type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_10_40();
  v38 = v18;
  v39 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D018);
  sub_1E42038F4();
  v19 = sub_1E38CBE58(v16, v41);

  v38 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158);
  OUTLINED_FUNCTION_0_32();
  sub_1E374AD40(v21, v22);
  v23 = sub_1E4149048(v20);

  if (v23)
  {

    v38 = sub_1E3DC1E34();
    v39 = v24;
    v40 = v25 & 1;
    sub_1E38D06D4();
    sub_1E38D0728();
    sub_1E4201094();
    (*(v12 + 16))(v9, v15, v10);
    OUTLINED_FUNCTION_24_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_52();
    sub_1E374AD40(v26, v27);
    sub_1E374AD40(&qword_1ECF2D118, &qword_1ECF2D120);
    sub_1E4201F44();
    (*(v12 + 8))(v15, v10);
  }

  else
  {
    v38 = v16;
    type metadata accessor for LibLockupViewModel();
    sub_1E38D06D4();
    OUTLINED_FUNCTION_0_67();
    sub_1E38D065C(v28, v29);

    sub_1E42010A4();
    v30 = v35;
    v31 = v37;
    (*(v35 + 16))(v9, v6, v37);
    OUTLINED_FUNCTION_24_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_52();
    sub_1E374AD40(v32, v33);
    sub_1E374AD40(&qword_1ECF2D118, &qword_1ECF2D120);
    sub_1E4201F44();
    (*(v30 + 8))(v6, v31);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38CBE58(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E38CF3EC(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

void sub_1E38CBEA8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4201D84();
  OUTLINED_FUNCTION_0_10();
  v64 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v74 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v58 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0A0);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v71 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v58 - v17;
  OUTLINED_FUNCTION_138();
  v18 = sub_1E4201DB4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v73 = v23 - v22;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D088);
  OUTLINED_FUNCTION_0_10();
  v63 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D080);
  OUTLINED_FUNCTION_0_10();
  v69 = v29;
  v70 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v67 = v31;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D128);
  OUTLINED_FUNCTION_0_10();
  v66 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v65 = v34;
  v35 = *v3;
  v36 = (v1 + *(type metadata accessor for ClarityUIRootView() + 32));
  v38 = *v36;
  v37 = v36[1];
  v77 = v38;
  v78 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D018);
  sub_1E42038F4();
  v39 = sub_1E38CBE58(v35, v76);

  if (!v39)
  {
    goto LABEL_5;
  }

  v40 = sub_1E32AE9B0(v39);
  if (!v40)
  {

LABEL_5:
    v57 = 1;
    v56 = v75;
    goto LABEL_6;
  }

  v58 = &v58;
  MEMORY[0x1EEE9AC00](v40);
  *(&v58 - 2) = v39;
  *(&v58 - 1) = v1;
  v61 = v20;
  v62 = v5;
  v41 = v64;
  v60 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D130);
  v59 = v6;
  sub_1E38D051C(&qword_1ECF2D138, &qword_1ECF2D130, &unk_1E42A8F18, sub_1E38D0594);
  sub_1E4202AE4();

  OUTLINED_FUNCTION_4_61();
  v58 = sub_1E374AD40(v42, v43);
  v45 = v67;
  v44 = v68;
  sub_1E418FB74(v35);
  (*(v63 + 8))(v27, v44);
  v46 = *MEMORY[0x1E697C570];
  v47 = sub_1E4201D94();
  OUTLINED_FUNCTION_2();
  v49 = v72;
  (*(v48 + 104))(v72, v46, v47);
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v47);
  *v12 = 0x3FFC71C71C71C71CLL;
  v50 = v59;
  (*(v41 + 104))(v12, *MEMORY[0x1E697C568], v59);
  v51 = v71;
  sub_1E37E93E8(v49, v71, &qword_1ECF2D0A0);
  v52 = v74;
  (*(v41 + 16))(v74, v12, v50);
  v53 = v73;
  OUTLINED_FUNCTION_35_19(v51, v52);
  (*(v41 + 8))(v12, v50);
  sub_1E325F69C(v49, &qword_1ECF2D0A0);
  v77 = v44;
  v78 = v58;
  swift_getOpaqueTypeConformance2();
  v54 = v70;
  v55 = v60;
  sub_1E42035B4();
  (*(v61 + 8))(v53, v55);
  (*(v69 + 8))(v45, v54);
  v5 = v62;
  v56 = v75;
  (*(v66 + 32))();
  v57 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v5, v57, 1, v56);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38CC504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIRootView();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34_23();
  sub_1E38CE244(a2, v2);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = swift_allocObject();
  sub_1E38CE2A8(v2, v9 + v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D148);
  OUTLINED_FUNCTION_14_11();
  sub_1E374AD40(v10, &qword_1ECF2CFF8);
  sub_1E38D0594();
  OUTLINED_FUNCTION_0_67();
  sub_1E38D065C(v11, v12);
  return OUTLINED_FUNCTION_26_24();
}

void sub_1E38CC690()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D110);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = *v2;
  type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_10_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D018);
  sub_1E42038F4();
  sub_1E38CBE58(v9, v15);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158);
  OUTLINED_FUNCTION_0_32();
  sub_1E374AD40(v11, v12);
  v13 = sub_1E4149048(v10);

  if (v13)
  {

    sub_1E3DC1E34();
    sub_1E38D06D4();
    sub_1E38D0728();
    sub_1E4201094();
    (*(v7 + 32))(v4, v0, v5);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v14, 1, v5);
  OUTLINED_FUNCTION_95();
}

void sub_1E38CC87C()
{
  OUTLINED_FUNCTION_31_1();
  v32 = v0;
  v34 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v37 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v35 = v7;
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = type metadata accessor for ClarityUIRootView();
  v12 = OUTLINED_FUNCTION_8_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = sub_1E4204014();
  v33 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - v22;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v31 = sub_1E4206A04();
  sub_1E4204004();
  sub_1E4204074();
  v24 = *(v18 + 8);
  v24(v20, v17);
  sub_1E38CE244(v32, &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v26 = swift_allocObject();
  sub_1E38CE2A8(&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v38[4] = sub_1E38D0160;
  v38[5] = v26;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 1107296256;
  v38[2] = sub_1E378AEA4;
  v38[3] = &block_descriptor_24;
  v27 = _Block_copy(v38);

  sub_1E4203FE4();
  v38[0] = MEMORY[0x1E69E7CC0];
  sub_1E38D065C(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E374AD40(&qword_1EE23B5D0, &qword_1ECF2A730);
  v28 = v34;
  sub_1E42072E4();
  v29 = v31;
  MEMORY[0x1E69112E0](v23, v10, v5, v27);
  _Block_release(v27);

  (*(v37 + 8))(v5, v28);
  (*(v35 + 8))(v10, v36);
  v24(v23, v33);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38CCCA0()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  sub_1E4202144();
  OUTLINED_FUNCTION_0_10();
  v35 = v4;
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v34 = v6 - v5;
  OUTLINED_FUNCTION_138();
  v7 = type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_0_10();
  v29 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0D8);
  OUTLINED_FUNCTION_0_10();
  v32 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v31 = v14;
  v15 = *(v7 + 24);
  v37 = v0;
  v16 = *(v0 + v15);
  (*(*v16 + 672))();
  OUTLINED_FUNCTION_40_19();
  while (1)
  {
    if (v2 == v1)
    {

LABEL_11:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    sub_1E327F454(v16, v40);
    sub_1E327F454(v40, &v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {

      sub_1E3251BE8(v40, &v41);
      if (swift_dynamicCast())
      {
        v17 = *&v40[0];
        v18 = (*((*MEMORY[0x1E69E7D40] & **&v40[0]) + 0x278))();
        if (v18)
        {
          v19 = v18;
          v20 = (*(*v18 + 440))();
          v21 = v31;
          (*(*v19 + 336))(v20);
          v22 = v30;
          sub_1E38CE244(v37, v30);
          v23 = (*(v29 + 80) + 16) & ~*(v29 + 80);
          v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
          v25 = swift_allocObject();
          sub_1E38CE2A8(v22, v25 + v23);
          *(v25 + v24) = v19;
          *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
          sub_1E374AD40(&qword_1ECF2D0E0, &qword_1ECF2D0D8);

          v26 = v17;
          v27 = v33;
          sub_1E42006A4();

          (*(v32 + 8))(v21, v27);
          v28 = v34;
          sub_1E38CDDC0(v34);
          sub_1E4202134();

          (*(v35 + 8))(v28, v36);
        }

        else
        {
        }
      }

      goto LABEL_11;
    }

    ++v1;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v16 += 40;
  }

  __break(1u);
}

void sub_1E38CD13C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for ClarityUIRootView();
  v9 = OUTLINED_FUNCTION_8_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_28();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v16);
  sub_1E38CE244(v7, v0);
  sub_1E4206434();

  v17 = v3;
  v18 = sub_1E4206424();
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 16) = v18;
  *(v21 + 24) = v22;
  sub_1E38CE2A8(v0, v21 + v19);
  *(v21 + v20) = v5;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  sub_1E376FE58(0, 0, v1, &unk_1E42A8EE8, v21);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38CD2E8()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v5 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E38CD37C, v5, v4);
}

uint64_t sub_1E38CD37C()
{
  OUTLINED_FUNCTION_24();

  sub_1E38CD3E0();
  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E38CD3E0()
{
  OUTLINED_FUNCTION_9_5();
  v3 = type metadata accessor for ClarityUIRootView();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_1E38CE244(v1, v2);
  sub_1E4206434();
  OUTLINED_FUNCTION_50();

  v12 = sub_1E4206424();
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v12;
  v14[3] = v15;
  v14[4] = v0;
  sub_1E38CE2A8(v2, v14 + v13);
  sub_1E376FE58(0, 0, v10, &unk_1E42A8E18, v14);
}

void sub_1E38CD560()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_0_10();
  v40 = v5;
  v41 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_14();
  v39 = v8;
  sub_1E38CA900();
  v42 = v9;
  if (!v9)
  {
LABEL_21:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v10 = sub_1E32AE9B0(v3);
  if (!v10)
  {
    OUTLINED_FUNCTION_25_2();

    return;
  }

  v11 = v10;
  if (v10 < 1)
  {
    goto LABEL_27;
  }

  v12 = 0;
  v13 = v3 & 0xC000000000000001;
  v37 = v0;
  v38 = v7 + 7;
  v36 = v3;
  v35 = v10;
  v34 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v13)
    {
      v14 = MEMORY[0x1E6911E60](v12, v3);
    }

    else
    {
      v14 = *(v3 + 8 * v12 + 32);
    }

    (*(*v14 + 1496))(&v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
    if (swift_dynamicCast())
    {
      sub_1E3251BE8(v43, &v46);
      sub_1E38CE244(v1, v39);
      v15 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v16 = swift_allocObject();
      sub_1E38CE2A8(v39, v16 + v15);
      *(v16 + ((v38 + v15) & 0xFFFFFFFFFFFFFFF8)) = v14;
      v17 = *((*MEMORY[0x1E69E7D40] & *v42) + 0x260);

      v17(&v46, 1, sub_1E38CF9AC, v16);

      __swift_destroy_boxed_opaque_existential_1Tm(&v46);
      goto LABEL_19;
    }

    v44 = 0;
    memset(v43, 0, sizeof(v43));
    sub_1E325F69C(v43, &qword_1ECF2A778);
    v18 = (v1 + *(v41 + 32));
    v20 = *v18;
    v19 = v18[1];
    v46 = *v18;
    v47 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D018);
    sub_1E42038F4();
    v21 = v45;

    swift_isUniquelyReferenced_nonNull_native();
    v46 = v21;
    v22 = sub_1E38CF3EC(v14);
    if (__OFADD__(v21[2], (v23 & 1) == 0))
    {
      break;
    }

    v24 = v22;
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0A8);
    if (sub_1E4207644())
    {
      v26 = sub_1E38CF3EC(v14);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_28;
      }

      v24 = v26;
    }

    v28 = v46;
    if (v25)
    {
      *(v46[7] + 8 * v24) = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v46[(v24 >> 6) + 8] |= 1 << v24;
      *(v28[6] + 8 * v24) = v14;
      *(v28[7] + 8 * v24) = MEMORY[0x1E69E7CC0];
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v28[2] = v31;
    }

    v46 = v20;
    v47 = v19;
    v45 = v28;
    sub_1E4203904();
    v1 = v37;
    sub_1E38CAAA4();

    v3 = v36;
    v11 = v35;
    v13 = v34;
LABEL_19:
    if (v11 == ++v12)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  type metadata accessor for LibLockupViewModel();
  sub_1E4207A74();
  __break(1u);
}

uint64_t sub_1E38CD9DC()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_8_0(v3);
  v0[4] = v4;
  v0[5] = *(v5 + 64);
  v0[6] = swift_task_alloc();
  sub_1E4206434();
  v0[7] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v7 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E38CDAC4, v7, v6);
}

uint64_t sub_1E38CDAC4()
{
  v1 = v0[2];

  if ((*(*v1 + 256))(v2))
  {
    v3 = v0[6];
    v4 = v0[4];
    v5 = v0[2];
    sub_1E38CE244(v0[3], v3);
    v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v7 = swift_allocObject();
    sub_1E38CE2A8(v3, v7 + v6);
    (*(*v5 + 472))(sub_1E38D00F8, v7);
  }

  else if ((*(*v0[2] + 312))())
  {
    sub_1E38CD560();
  }

  OUTLINED_FUNCTION_54();

  return v8();
}

uint64_t ClarityUIRootView.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFF8);
  OUTLINED_FUNCTION_42_10(v3, v4, v5, v6, v7, v8, v9, v10, v34, v37);
  sub_1E42038E4();
  *a1 = v39;
  a1[1] = v40;
  v11 = type metadata accessor for ClarityUIRootView();
  v12 = v11[5];
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D000);
  swift_storeEnumTagMultiPayload();
  v13 = v11[6];
  *(a1 + v13) = *sub_1E3B7B1C8();
  v14 = (a1 + v11[7]);

  OUTLINED_FUNCTION_42_10(v15, v16, v17, v18, v19, v20, v21, v22, v35, v2);
  sub_1E42038E4();
  *v14 = v39;
  v14[1] = v40;
  v23 = (a1 + v11[8]);
  type metadata accessor for LibLockupViewModel();
  OUTLINED_FUNCTION_0_67();
  sub_1E38D065C(v24, v25);
  v38 = sub_1E4205CB4();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D010);
  OUTLINED_FUNCTION_42_10(v26, v26, v27, v28, v29, v30, v31, v32, v36, v38);
  result = sub_1E42038E4();
  *v23 = v39;
  v23[1] = v40;
  return result;
}

uint64_t sub_1E38CDDC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D000);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E37E93E8(v2, &v17 - v9, &qword_1ECF2D000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4202144();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0xD000000000000016, 0x80000001E4266460, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E38CE044(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for LibLockupViewModel();
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t type metadata accessor for ClarityUIRootView()
{
  result = qword_1ECF4EF70;
  if (!qword_1ECF4EF70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E38CE0F4()
{
  result = qword_1ECF2D078;
  if (!qword_1ECF2D078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D080);
    sub_1E4201DB4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D088);
    sub_1E374AD40(&qword_1ECF2D090, &qword_1ECF2D088);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D078);
  }

  return result;
}

uint64_t sub_1E38CE244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIRootView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38CE2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIRootView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E38CE324()
{
  v0 = type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_17_2(v0);
  sub_1E38CA900();
  if (v1)
  {
    v2 = v1;
    v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x278))();

    if (v3)
    {
      sub_1E38CA900();
      if (v4)
      {
        v5 = v4;
        if ((*(*v3 + 256))())
        {
          sub_1E38CD3E0();
        }
      }
    }
  }
}

uint64_t sub_1E38CE45C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_17_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  v2[1] = sub_1E37E1058;

  return sub_1E38CD9DC();
}

uint64_t sub_1E38CE528(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E34AF5E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E38CE5A4(v6);
  return sub_1E4207554();
}
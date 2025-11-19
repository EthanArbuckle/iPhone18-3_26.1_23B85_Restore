id sub_1E3FFBD3C(uint64_t a1)
{
  LOBYTE(v12) = 1;
  OUTLINED_FUNCTION_26_0();
  v2 += 97;
  v3 = *v2;
  (*v2)(v13, &v12, &unk_1F5D5E578, &off_1F5D5CBF8);
  if (!v14)
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_21_12() & 1) == 0)
  {
    return 0;
  }

  v4 = v12;
  LOBYTE(v12) = 2;
  v3(v13, &v12, &unk_1F5D5E578, &off_1F5D5CBF8);
  if (!v14)
  {

LABEL_8:
    sub_1E325F748(v13, &unk_1ECF296E0);
    return 0;
  }

  if ((OUTLINED_FUNCTION_21_12() & 1) == 0)
  {

    return 0;
  }

  v5 = v12;
  sub_1E3744600(v4);
  OUTLINED_FUNCTION_38();

  v6 = sub_1E3744600(v5);

  v7 = objc_allocWithZone(VUIVideosPlayable);
  result = sub_1E37448C4(a1, v6);
  if (result)
  {
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1E4298880;
    *(v10 + 32) = v9;
    v11 = objc_allocWithZone(VUIMediaInfo);
    return sub_1E376538C(8, v10, MEMORY[0x1E69E7CC0], 0);
  }

  return result;
}

void sub_1E3FFBF10(void *a1, uint64_t a2)
{
  type metadata accessor for CardCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    if (*(a2 + 24))
    {
      v3 = a1;
      v4 = [objc_opt_self() sharedInstance];
      v5 = sub_1E4205ED4();
      v6 = [v4 multiviewContainsMediaItemWithIdentifier_];

      OUTLINED_FUNCTION_15_161();
      (*(v7 + 176))(v6);
      if ((v6 & 1) == 0)
      {
        sub_1E3FF8EBC(&selRef_multiviewPlayerCount);
        sub_1E3FF8EBC(&selRef_maxMultiviewPlayerCount);
      }

      OUTLINED_FUNCTION_19_144();
      (*(v8 + 200))();
      OUTLINED_FUNCTION_19_144();
      (*(v9 + 168))();
    }

    else
    {
      OUTLINED_FUNCTION_15_161();
      v11 = *(v10 + 176);
      v12 = a1;
      v11(0);
    }

    OUTLINED_FUNCTION_19_144();
    (*(v13 + 224))(v14 & 1);
  }
}

uint64_t sub_1E3FFC0F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1E3ED6E94();
  type metadata accessor for Accessibility();
  sub_1E42074B4();

  sub_1E41FE844();
  v8 = sub_1E4207944();
  MEMORY[0x1E69109E0](v8);

  sub_1E40A7DC8();
  v10 = v9;
  v12 = v11;

  sub_1E3839D34(v10, v12, a2);
  sub_1E3FFBF10(a2, a4);
  v13 = (v5 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_contentsDidLoad);
  result = swift_beginAccess();
  v15 = *v13;
  if (*v13)
  {

    v15(v16);
    v17 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v17);
    v18 = *v13;
    *v13 = 0;
    v13[1] = 0;
    return sub_1E34AF594(v18);
  }

  return result;
}

id sub_1E3FFC24C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E378CF54(a1, a2, a3);
  v5 = v4;
  if (v4)
  {
    sub_1E3FFBF10(v4, a3);
  }

  return v5;
}

void sub_1E3FFC288(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if ((a2 & 1) == 0)
  {
    sub_1E3FFA4B4();
    if (!sub_1E41C8EFC())
    {
      return;
    }

    v20 = sub_1E3FF8FEC();
    v21 = sub_1E32AE9B0(v20);

    if (v21)
    {
      sub_1E405123C();
      v22 = sub_1E41C85FC();
      MEMORY[0x1E6909190](0, 0);
      v23 = sub_1E41FE7E4();
      (*(v7 + 8))(v11, v5);
      [v22 scrollToItemAtIndexPath:v23 atScrollPosition:8 animated:0];

      [v3 setNeedsFocusUpdate];
      [v3 updateFocusIfNeeded];

      return;
    }

    goto LABEL_14;
  }

  if (!sub_1E41C8EFC())
  {
    return;
  }

  OUTLINED_FUNCTION_26_0();
  v14 = v13;
  (*(v12 + 464))();
  OUTLINED_FUNCTION_38();

  if (!v14)
  {
    return;
  }

  if (sub_1E32AE9B0(v14))
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v15)
      {
        __break(1u);
        return;
      }
    }

    type metadata accessor for CollectionViewModel();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_23_9();
      v18 = swift_allocObject();
      *(v18 + 16) = v5;
      *(v18 + 24) = v17;
      v19 = *(*v17 + 1504);

      v19(1, 0, 1, sub_1E3FFDF20, v18);
    }

LABEL_14:

    return;
  }
}

void sub_1E3FFC5B8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v33 = Strong;
  v10 = sub_1E41C85FC();
  v11 = [v10 indexPathsForVisibleItems];

  v12 = sub_1E42062B4();
  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_21:

    v31 = sub_1E41C85FC();
    [v31 setNeedsFocusUpdate];

    v32 = sub_1E41C85FC();
    [v32 updateFocusIfNeeded];

LABEL_22:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v14 = v4 + 16;
  v15 = *(v4 + 16);
  v16 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v34 = *(v14 + 56);
  v35 = v15;
  v17 = (v14 - 8);
  while (1)
  {
    v18 = v35(v8, v16, v2);
    if (!v1)
    {
      goto LABEL_18;
    }

    v19 = (*(*v1 + 1040))(v18);
    if (!v19)
    {
      goto LABEL_18;
    }

    v20 = v19;
    v21 = v19 & 0xFFFFFFFFFFFFFF8;
    if (!(v19 >> 62))
    {
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_17;
    }

    if (sub_1E4207384())
    {
      break;
    }

LABEL_17:

LABEL_18:
    (*v17)(v8, v2);
    v16 += v34;
    if (!--v13)
    {
      goto LABEL_21;
    }
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
    v22 = v30;
    goto LABEL_11;
  }

  if (*(v21 + 16))
  {
    v22 = *(v20 + 32);

LABEL_11:

    v24 = (*(*v22 + 872))(v23);

    if (v24)
    {
      v25 = sub_1E41FE844();
      v38[1] = v24;
      v36 = v25;
      v37 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      OUTLINED_FUNCTION_0_32();
      sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790);
      sub_1E38D2054(&v36, v38);

      v26 = v38[0];
      if (v38[0])
      {
        v27 = sub_1E41C85FC();
        v28 = sub_1E41FE7E4();
        v29 = [v27 cellForItemAtIndexPath_];

        if (v29)
        {
          sub_1E3FFBF10(v29, v26);
        }

        else
        {
        }
      }
    }

    goto LABEL_18;
  }

  __break(1u);
}

void sub_1E3FFC9A4()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  if (!sub_1E41C8EFC())
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26_0();
  v9 = v8;
  (*(v7 + 464))();
  OUTLINED_FUNCTION_14_15();
  if (!v9)
  {
    goto LABEL_11;
  }

  if (!sub_1E32AE9B0(v9))
  {

LABEL_11:
    v12 = 0;
    while (1)
    {
      v13 = sub_1E41C85FC();
      v14 = [v13 indexPathsForVisibleItems];

      v15 = sub_1E42062B4();
      v16 = *(v15 + 16);
      if (!v16)
      {

        OUTLINED_FUNCTION_25_2();

        return;
      }

      v17 = *(v2 + 16);
      v2 += 16;
      v34 = v2;
      v18 = v15 + ((*(v2 + 64) + 32) & ~*(v2 + 64));
      v35 = *(v2 + 56);
      v36 = v17;
      v19 = (v2 - 8);
      while (1)
      {
        v20 = v36(v6, v18, v0);
        if (!v12)
        {
          goto LABEL_29;
        }

        v21 = (*(*v12 + 1040))(v20);
        if (!v21)
        {
          goto LABEL_29;
        }

        v22 = v21;
        v23 = v21 & 0xFFFFFFFFFFFFFF8;
        if (!(v21 >> 62))
        {
          if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          goto LABEL_28;
        }

        if (sub_1E4207384())
        {
          break;
        }

LABEL_28:

LABEL_29:
        (*v19)(v6, v0);
        v18 += v35;
        if (!--v16)
        {

          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_41_1();
        v24 = v32;
        goto LABEL_21;
      }

      if (*(v23 + 16))
      {
        v24 = *(v22 + 32);

LABEL_21:

        v26 = (*(*v24 + 872))(v25);

        if (v26)
        {
          v27 = sub_1E41FE844();
          v39[1] = v26;
          v37 = v27;
          v38 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
          OUTLINED_FUNCTION_0_32();
          sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790);
          sub_1E38D2054(&v37, v39);

          v28 = v39[0];
          if (v39[0])
          {
            v29 = sub_1E41C85FC();
            v30 = sub_1E41FE7E4();
            v31 = [v29 cellForItemAtIndexPath_];

            if (v31)
            {
              sub_1E3FFBF10(v31, v28);
            }

            else
            {
            }

            v2 = v34;
          }
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_36:
      v11 = v2;
      OUTLINED_FUNCTION_41_1();
LABEL_7:

      type metadata accessor for CollectionViewModel();
      v12 = swift_dynamicCastClass();
      if (!v12)
      {
      }

      v2 = v11;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_34_0();
  if (v10)
  {
    v11 = v2;

    goto LABEL_7;
  }

  __break(1u);
}

double sub_1E3FFCE28@<D0>(uint64_t a1@<X8>)
{
  sub_1E41CD384(v6);
  if (v6[3])
  {
    type metadata accessor for ViewModel();
    if (swift_dynamicCast())
    {
      v2 = sub_1E3FFBD3C(v5);
      if (v2)
      {
        v3 = v2;
        *(a1 + 24) = sub_1E3280A90(0, &qword_1EE23B350);

        *a1 = v3;
        return result;
      }
    }
  }

  else
  {
    sub_1E325F748(v6, &unk_1ECF296E0);
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1E3FFCF08(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_didInteract);
  result = OUTLINED_FUNCTION_5_0();
  v6 = *v3;
  if (*v3)
  {

    v6(a3 & 1);
    v7 = OUTLINED_FUNCTION_67_0();
    return sub_1E34AF594(v7);
  }

  return result;
}

void sub_1E3FFCF78(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v7 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1E3FFCF08(v9, v8, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_1E3FFCFF4()
{

  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_contentsDidLoad));
  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_didInteract));
  v1 = v0 + OBJC_IVAR____TtC8VideosUI36MultiViewPlayerHUDTemplateController_detailDelegate;

  return sub_1E3DD28C4(v1);
}

void *sub_1E3FFD118(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E218);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3FFD248(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_1E3B1DC54(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_1E3FFD2B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E218);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3FFD3E0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E3FFE320(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1E3FFD44C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E3FFD44C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E218);
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E3FFD5C0(v7, v8, a1, v4);
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
    return sub_1E3FFD550(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E3FFD550(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3FFD5C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v82 = result;
  v86 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v81 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return result;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (v32 >= *v34)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v83 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        result = sub_1E37FFF70((v37 > 1), v38 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v39;
      v40 = v8 + 32;
      v41 = (v8 + 32 + 16 * v38);
      *v41 = v7;
      v41[1] = v9;
      v84 = *v82;
      if (!*v82)
      {
        goto LABEL_114;
      }

      if (v38)
      {
        while (1)
        {
          v42 = v39 - 1;
          v43 = (v40 + 16 * (v39 - 1));
          v44 = (v8 + 16 * v39);
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v45 = *(v8 + 32);
            v46 = *(v8 + 40);
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_56:
            if (v48)
            {
              goto LABEL_96;
            }

            v60 = *v44;
            v59 = v44[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_99;
            }

            v64 = v43[1];
            v65 = v64 - *v43;
            if (__OFSUB__(v64, *v43))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v62, v65))
            {
              goto LABEL_104;
            }

            if (v62 + v65 >= v47)
            {
              if (v47 < v65)
              {
                v42 = v39 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v39 < 2)
          {
            goto LABEL_98;
          }

          v67 = *v44;
          v66 = v44[1];
          v55 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          v63 = v55;
LABEL_71:
          if (v63)
          {
            goto LABEL_101;
          }

          v69 = *v43;
          v68 = v43[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_103;
          }

          if (v70 < v62)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v42 - 1 >= v39)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v74 = (v40 + 16 * (v42 - 1));
          v75 = *v74;
          v76 = (v40 + 16 * v42);
          v77 = v76[1];
          result = sub_1E3FFDBC4((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v84);
          if (v5)
          {
          }

          if (v77 < v75)
          {
            goto LABEL_91;
          }

          v78 = v8;
          v79 = *(v8 + 16);
          if (v42 > v79)
          {
            goto LABEL_92;
          }

          *v74 = v75;
          v74[1] = v77;
          if (v42 >= v79)
          {
            goto LABEL_93;
          }

          v39 = v79 - 1;
          result = memmove((v40 + 16 * v42), v76 + 2, 16 * (v79 - 1 - v42));
          *(v78 + 16) = v79 - 1;
          v80 = v79 > 2;
          v8 = v78;
          v5 = 0;
          if (!v80)
          {
            goto LABEL_85;
          }
        }

        v49 = v40 + 16 * v39;
        v50 = *(v49 - 64);
        v51 = *(v49 - 56);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_94;
        }

        v54 = *(v49 - 48);
        v53 = *(v49 - 40);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_95;
        }

        v56 = v44[1];
        v57 = v56 - *v44;
        if (__OFSUB__(v56, *v44))
        {
          goto LABEL_97;
        }

        v55 = __OFADD__(v47, v57);
        v58 = v47 + v57;
        if (v55)
        {
          goto LABEL_100;
        }

        if (v58 >= v52)
        {
          v72 = *v43;
          v71 = v43[1];
          v55 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v55)
          {
            goto LABEL_105;
          }

          if (v47 < v73)
          {
            v42 = v39 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v83;
      a4 = v81;
      if (v83 >= v6)
      {
        v86 = v8;
        break;
      }
    }
  }

  if (!*v82)
  {
    goto LABEL_115;
  }

  sub_1E3FFDA98(&v86, *v82, a3);
}

uint64_t sub_1E3FFDA98(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1E3FFDBC4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1E3FFDBC4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 16;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 16;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 16;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_25:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v11 - 2) < *v16)
    {
      v14 = v5 + 16 == v6;
      v6 -= 16;
      if (!v14)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_38:
  v18 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v18])
  {
    memmove(v6, v4, 16 * v18);
  }

  return 1;
}

void sub_1E3FFDD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1E4205ED4();
  v10 = sub_1E4205ED4();

  v11 = sub_1E4205C44();

  [a7 post:v9 title:v10 body:a5 options:v11];
}

void sub_1E3FFDE3C()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    sub_1E404B22C();
  }
}

void sub_1E3FFDEB4(char a1)
{
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_5_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_18();
      sub_1E404B22C();
    }
  }
}

uint64_t type metadata accessor for MultiViewPlayerHUDTemplateController()
{
  result = qword_1EE290C80;
  if (!qword_1EE290C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1E3FFE000(void *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v3 = sub_1E32AE9B0(result);
  if (!v3)
  {
    v6 = v2;
LABEL_23:
    v24 = v6;

    sub_1E3FFD3E0(&v24);
    v21 = v24[2];
    if (v21)
    {
      v24 = MEMORY[0x1E69E7CC0];
      sub_1E4207574();
      v22 = 40;
      do
      {

        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
        v22 += 16;
        --v21;
      }

      while (v21);

      v23 = v24;
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    v24 = v23;
    sub_1E379738C(v2);
    return v24;
  }

  v4 = v3;
  if (v3 < 1)
  {
    goto LABEL_31;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](v5, v1);
    }

    else
    {
      v7 = *(v1 + 8 * v5 + 32);
    }

    if (*(v7 + 24))
    {
      v8 = [objc_opt_self() sharedInstance];
      v9 = sub_1E4205ED4();
      v10 = [v8 indexOfMediaItemInMultiviewWithIdentifier_];

      v11 = sub_1E41FDD54();
      if (v11 < 0 || v10 != v11)
      {
        break;
      }
    }

    MEMORY[0x1E6910BF0](v12);
    v13 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
    {
      OUTLINED_FUNCTION_35(v13);
      sub_1E42062F4();
    }

    sub_1E4206324();

    v2 = v25;
LABEL_20:
    if (v4 == ++v5)
    {
      goto LABEL_23;
    }
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = OUTLINED_FUNCTION_27();
      v6 = sub_1E3FFD118(v17, v18, v19, v6);
    }

    v15 = v6[2];
    v14 = v6[3];
    if (v15 >= v14 >> 1)
    {
      v20 = OUTLINED_FUNCTION_35(v14);
      v6 = sub_1E3FFD118(v20, v15 + 1, 1, v6);
    }

    v6[2] = v15 + 1;
    v16 = &v6[2 * v15];
    v16[4] = v10;
    v16[5] = v7;
    goto LABEL_20;
  }

  __break(1u);
LABEL_31:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1E3FFE2D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3FFE334()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E3286A7C;

  return sub_1E3FF9D7C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1E3FFE400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E4201D44();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E220);
  return sub_1E3FFE454(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1E3FFE454@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E298);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = [objc_opt_self() mainScreen];
  [v10 vui_nativeScale];
  v12 = v11;

  v13 = *(v6 + 16);
  v13(v9, a1, v4);
  v13(a2, v9, v4);
  *&a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E2A0) + 48)] = 1.0 / v12;
  return (*(v6 + 8))(v9, v4);
}

double sub_1E3FFE5B8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return *&a1;
  }

  v2 = [objc_opt_self() mainScreen];
  [v2 vui_nativeScale];
  v4 = v3;

  return 1.0 / v4;
}

uint64_t sub_1E3FFE630@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X8>)
{
  v4 = v2;
  v46[0] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E228);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v46 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E230);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v51 = OUTLINED_FUNCTION_10_161();
  v52 = v2[4];
  v47 = *(v2 + 1);
  v48 = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  v46[1] = a2;
  if (v49.n128_f64[0] != 0.0 || v49.n128_f64[1] != 0.0)
  {
    v47 = *(v2 + 1);
    v48 = v2[4];
    sub_1E42038F4();
    v17 = v49.n128_f64[0];
LABEL_7:
    type metadata accessor for LayoutGrid();
    sub_1E3A258E4(v17);
    v22 = j_nullsub_1(v18, v19, v20, v21);
    v24 = v23;
    v26 = v25;
    v28 = v27;
    *v3 = sub_1E4201D44();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    v29 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E238) + 44);
    v30 = [objc_opt_self() mainScreen];
    [v30 vui_nativeScale];
    v32 = v31;

    sub_1E4202734();
    v33 = OUTLINED_FUNCTION_11_177();
    a2(v33, v46[0], v6);
    a2(v29, v9, v6);
    v34 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E240) + 48);
    *v34 = 1.0 / v32;
    *(v34 + 8) = v30;
    *(v34 + 16) = v22;
    *(v34 + 24) = v24;
    *(v34 + 32) = v26;
    *(v34 + 40) = v28;
    v35 = OUTLINED_FUNCTION_9_178(v34);
    v36(v35);
    v49 = v51;
    v50 = v52;
    sub_1E4203914();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_33_4();
    sub_1E32752B0(v37, v38);
    v39 = OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_5_224(v39, v40, v39 & 1);

    OUTLINED_FUNCTION_33_4();
    return sub_1E325F6F0(v41, v42);
  }

  v11 = *v2;
  if (*v4)
  {
    v12 = *(*v11 + 184);

    v14 = v12(v13);
    v16 = v15;

    v17 = 0.0;
    if ((v16 & 1) == 0)
    {
      v17 = *&v14;
    }

    goto LABEL_7;
  }

  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_1_276();
  sub_1E3FFF1E4(v44, v45);
  result = OUTLINED_FUNCTION_6_46();
  __break(1u);
  return result;
}

uint64_t sub_1E3FFE9DC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X8>)
{
  v4 = v2;
  v41[0] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E250);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v41 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E258);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v46 = OUTLINED_FUNCTION_10_161();
  v47 = v2[4];
  v42 = *(v2 + 1);
  v43 = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  v41[1] = a2;
  if (v44.n128_f64[0] != 0.0 || v44.n128_f64[1] != 0.0)
  {
    v42 = *(v2 + 1);
    v43 = v2[4];
    sub_1E42038F4();
    v17 = v44.n128_f64[0];
LABEL_7:
    type metadata accessor for LayoutGrid();
    sub_1E3A258E4(v17);
    j_nullsub_1(v18, v19, v20, v21);
    v23 = v22;
    *v3 = sub_1E4201D44();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    v24 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E260) + 44);
    v25 = [objc_opt_self() mainScreen];
    [v25 vui_nativeScale];
    v27 = v26;

    sub_1E4202734();
    v28 = OUTLINED_FUNCTION_11_177();
    a2(v28, v41[0], v6);
    a2(v24, v9, v6);
    v29 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E268) + 48);
    *v29 = 1.0 / v27;
    *(v29 + 8) = v25;
    *(v29 + 16) = 0;
    *(v29 + 24) = v23;
    *(v29 + 32) = 0;
    *(v29 + 40) = 0;
    v30 = OUTLINED_FUNCTION_9_178(v29);
    v31(v30);
    v44 = v46;
    v45 = v47;
    sub_1E4203914();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_33_4();
    sub_1E32752B0(v32, v33);
    v34 = OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_5_224(v34, v35, v34 & 1);

    OUTLINED_FUNCTION_33_4();
    return sub_1E325F6F0(v36, v37);
  }

  v11 = *v2;
  if (*v4)
  {
    v12 = *(*v11 + 184);

    v14 = v12(v13);
    v16 = v15;

    v17 = 0.0;
    if ((v16 & 1) == 0)
    {
      v17 = *&v14;
    }

    goto LABEL_7;
  }

  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_1_276();
  sub_1E3FFF1E4(v39, v40);
  result = OUTLINED_FUNCTION_6_46();
  __break(1u);
  return result;
}

__n128 sub_1E3FFED70@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_1_276();
  sub_1E3FFF1E4(v2, v3);
  v4 = sub_1E4201754();
  v6 = v5;
  type metadata accessor for CGSize(0);
  sub_1E42038E4();
  result = v8;
  a1->n128_u64[0] = v4;
  a1->n128_u64[1] = v6;
  a1[1] = v8;
  a1[2].n128_u64[0] = v9;
  return result;
}

uint64_t sub_1E3FFEE18@<X0>(uint64_t a1@<X8>)
{
  sub_1E4203B04();
  sub_1E4203DA4();
  sub_1E4200D94();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E278) + 36));
  *v2 = v7;
  v2[1] = v8;
  v2[2] = v9;
  v3 = *sub_1E3E60170();
  v4 = sub_1E38F08C4(v3);

  LOBYTE(v3) = sub_1E4202734();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E280);
  v6 = a1 + *(result + 36);
  *v6 = v4;
  *(v6 + 8) = v3;
  return result;
}

uint64_t sub_1E3FFEF7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP06VideosB0E15resizableWindow10windowSize9isEnabledQrAA7BindingVySo6CGSizeVG_SbtFQOyAA6VStackVyAA05TupleC0VyAA01_C16Modifier_ContentVyAD17InsettedSeparatorVG_AA08ModifiedP0VyAD06SimpleR0VAA14_PaddingLayoutVGtGG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  OUTLINED_FUNCTION_1();
  sub_1E32752B0(a4, a2);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1E3FFF070()
{
  result = qword_1EE289530;
  if (!qword_1EE289530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E280);
    sub_1E3FFF128();
    sub_1E32752B0(&qword_1EE288898, &qword_1ECF2DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289530);
  }

  return result;
}

unint64_t sub_1E3FFF128()
{
  result = qword_1EE289750;
  if (!qword_1EE289750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E278);
    sub_1E3FFF1E4(&qword_1EE288408, MEMORY[0x1E697D6D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289750);
  }

  return result;
}

uint64_t sub_1E3FFF1E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3FFF26C()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  *(v0 + 112) = sub_1E383BCC0();
  v1 = sub_1E3C2F9A0();

  sub_1E3FFF318();

  return v1;
}

uint64_t sub_1E3FFF318()
{
  v1 = v0;
  v2 = (*v0 + 1704);
  v3 = *v2;
  v4 = (*v2)();
  (*(*v4 + 1792))(10);

  v6 = (v3)(v5);
  v7 = *sub_1E3E5FD88();
  v8 = *(*v6 + 680);
  v9 = v7;
  v8(v7);

  (v3)(v10);
  OUTLINED_FUNCTION_2_1();
  (*(v11 + 1984))(1);

  v13 = (v3)(v12);
  LOBYTE(v45[0]) = 3;
  LOBYTE(v68) = 2;
  LOBYTE(v63) = 1;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v55) = v58;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v49) = v52;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v74 = v46;
  sub_1E3C2FCB8(v45, __src);
  LODWORD(v45[0]) = __src[0];
  WORD2(v45[0]) = __src[1];
  v14 = OUTLINED_FUNCTION_18();
  (*(*v13 + 1600))(v45, 48, v14 & 1, &qword_1F5D549D8);

  v16 = *(*v1 + 1728);
  v16(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v17 + 1696))(15);

  v19 = (v16)(v18);
  v20 = *sub_1E3E5FDEC();
  v21 = *(*v19 + 680);
  v22 = v20;
  v21(v20);

  v16(v23);
  OUTLINED_FUNCTION_2_1();
  (*(v24 + 1984))(1);

  v16(v25);
  OUTLINED_FUNCTION_2_1();
  (*(v26 + 2056))(0, 0);

  v28 = (v16)(v27);
  memset(v45, 0, 32);
  LOBYTE(v45[2]) = 1;
  sub_1E3952C88();
  v68 = v29;
  v69 = v30;
  v70 = v31;
  v71 = v32;
  v72 = 0;
  sub_1E3952C88();
  v63 = v33;
  v64 = v34;
  v65 = v35;
  v66 = v36;
  v67 = 0;
  sub_1E3952C88();
  v58 = v37;
  v59 = v38;
  v60 = v39;
  v61 = v40;
  v62 = 0;
  type metadata accessor for UIEdgeInsets();
  v42 = v41;
  sub_1E3C3DE00(v41);
  v52 = v55;
  v53 = v56;
  v54 = v57;
  sub_1E3C3DE00(v42);
  v46 = v49;
  v47 = v50;
  v48 = v51;
  sub_1E3C2FCB8(v45, __src);
  memcpy(v45, __src, 0xE9uLL);
  v43 = OUTLINED_FUNCTION_18();
  (*(*v28 + 1600))(v45, 0, v43 & 1, v42);
}

double sub_1E3FFF91C()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_rectThatFits;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E3FFF964()
{
  OUTLINED_FUNCTION_0_8();
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_rectThatFits);
  result = swift_beginAccess();
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return result;
}

uint64_t sub_1E3FFFA10()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3FFFA54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_childrenViewModels;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

uint64_t sub_1E3FFFAE8(uint64_t a1, uint64_t a2)
{
  v5 = [v2 subviews];
  sub_1E373C4DC();
  v6 = sub_1E42062B4();

  result = sub_1E32AE9B0(v6);
  if (result)
  {
    v8 = result;
    if (result < 1)
    {
      goto LABEL_47;
    }

    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E6911E60](i, v6);
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      v11 = v10;
      [v10 removeFromSuperview];
    }
  }

  OUTLINED_FUNCTION_6_206();
  v13 = (*(v12 + 200))(&v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E2C8);
  sub_1E4205D14();
  v13(&v70, 0);
  OUTLINED_FUNCTION_6_206();
  v15 = *(v14 + 120);

  v15(v16);
  OUTLINED_FUNCTION_6_206();
  v18 = *(v17 + 144);

  v18(v19);
  if (a2)
  {
    v20 = *(a2 + 120);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v21 = sub_1E3BD61D8();
    v20 = v21;
  }

  v22 = (*(*a1 + 464))(v21);
  if (!v22)
  {
  }

  v23 = v22;
  result = sub_1E32AE9B0(v22);
  v24 = result;
  v25 = 0;
  v26 = v23 & 0xC000000000000001;
  v69 = v23 & 0xFFFFFFFFFFFFFF8;
  v60 = *MEMORY[0x1E69DB758];
  v59 = xmmword_1E4297BE0;
  v64 = v20;
  v67 = result;
  v68 = v23;
  v65 = a2;
  v66 = v23 & 0xC000000000000001;
  while (1)
  {
    if (v24 == v25)
    {
    }

    if (v26)
    {
      result = MEMORY[0x1E6911E60](v25, v23);
      v27 = result;
    }

    else
    {
      if (v25 >= *(v69 + 16))
      {
        goto LABEL_46;
      }

      v27 = *(v23 + 8 * v25 + 32);
    }

    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (a2 && *v27 == _TtC8VideosUI13TextViewModel)
    {
      v28 = *(a2 + 104);
      v29 = off_1EE2836C0[0];

      (v29)(&v70);
      if (*(&v71 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1E329505C(&v70);
      }

      v30 = sub_1E38893DC(v27, 0, v28);
      if (v30)
      {
        v31 = v30;
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v33 = v31;
        }

        v34 = [v32 vuiAttributedText];

        v35 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
        [v35 setLineBreakMode_];
        if (v34)
        {
          type metadata accessor for LanguageAwareString();
          v36 = v34;
          v37 = v35;
          v38 = sub_1E3D36A44();
          v39 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v36, v35, v38 & 1);
          objc_opt_self();
          v40 = swift_dynamicCastObjCClass();
          if (v40)
          {
            v41 = v40;
            OUTLINED_FUNCTION_21();
            v43 = *(v42 + 232);
            v44 = v31;
            v45 = v43();
            [v41 setVuiAttributedText_];

            v39 = v44;
            v20 = v64;
          }
        }

        if (UIAccessibilityButtonShapesEnabled())
        {
          objc_opt_self();
          v46 = swift_dynamicCastObjCClass();
          if (v46)
          {
            v47 = v46;
            v48 = v31;
            v49 = [v47 vuiAttributedText];
            if (v49)
            {
              v50 = v49;
              v61 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380);
              inited = swift_initStackObject();
              v63 = v48;
              *(inited + 16) = v59;
              *(inited + 64) = MEMORY[0x1E69E6530];
              *(inited + 32) = v60;
              *(inited + 40) = 1;
              type metadata accessor for Key(0);
              v62 = v50;
              sub_1E3B9794C(&qword_1EE23B100);
              v52 = v60;
              sub_1E4205CB4();
              v20 = v64;
              v53 = sub_1E4205C44();

              v54 = v61;
              [v54 addAttributes:v53 range:{0, objc_msgSend(v54, sel_length)}];

              [v47 setVuiAttributedText_];
              v48 = v63;
            }
          }
        }

        sub_1E4000254(v31, v27);

        a2 = v65;
      }

      v24 = v67;
      v23 = v68;
      v26 = v66;
    }

    type metadata accessor for ImageViewModel();
    v55 = swift_dynamicCastClass();
    if (v55)
    {
      v56 = v55;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v74 = 0;
      v75 = 1;
      v76 = 0;

      v57 = sub_1E3DF9F2C(v56, 0, &v70, v20);
      if (v57)
      {
        v58 = v57;
        sub_1E4000254(v57, v27);
      }
    }

    ++v25;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void sub_1E4000254(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v8 = (*(v7 + 136))();
  if (v8)
  {
    v9 = (*(*v8 + 576))();
  }

  else
  {
    v9 = 0;
  }

  (*(*a2 + 584))(v9);
  [v3 addSubview_];
  v10 = *((*v6 & *v3) + 0xC8);

  v11 = v10(v15);
  sub_1E40011A4(a2, a1);
  v11(v15, 0);
  v15[3] = type metadata accessor for AttributionTextViewUIKit();
  v15[0] = v3;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v12 = v3;
  v13 = sub_1E3814AF0(v15, sel_handleSelected_);
  v14 = (*(*a2 + 544))([a1 addGestureRecognizer_]);
}

void sub_1E4000460(void *a1)
{
  v5 = [a1 view];
  if (v5)
  {
    OUTLINED_FUNCTION_21();
    v2 = (*(v1 + 184))();
    v3 = sub_1E3E2F1CC(v5, v2);

    if (v3)
    {
      OUTLINED_FUNCTION_25();
      v4();
    }

    else
    {
    }
  }
}

id sub_1E40005E0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_viewModel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_rectThatFits);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_childrenViewModels) = MEMORY[0x1E69E7CC8];
  v6 = type metadata accessor for AttributionTextViewUIKit();
  v2 = OUTLINED_FUNCTION_5_8();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

void sub_1E400067C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_viewModel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_rectThatFits);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8VideosUI24AttributionTextViewUIKit_childrenViewModels) = MEMORY[0x1E69E7CC8];
  sub_1E42076B4();
  __break(1u);
}

double sub_1E4000730(CGFloat a1)
{
  sub_1E4000780(a1);
  OUTLINED_FUNCTION_21();
  (*(v1 + 160))();
  return v2;
}

void sub_1E4000780(CGFloat a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 112);
  v64 = 0.0;
  v5 = 0.0;
  if (v4())
  {
    OUTLINED_FUNCTION_30();
    (*(v6 + 152))(v66);

    if (v67)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = *&v66[1];
    }
  }

  if (v4())
  {
    OUTLINED_FUNCTION_30();
    (*(v7 + 152))(v68);

    v8 = v68[0];
    if (v69)
    {
      v8 = 0.0;
    }

    v64 = v8;
  }

  v56 = 0.0;
  if (v4())
  {
    OUTLINED_FUNCTION_30();
    (*(v9 + 176))(v70);
    v10 = *v70;
    v11 = *&v70[1];
    v12 = *&v70[2];
    v13 = *&v70[3];

    v56 = 0.0;
    if ((v71 & 1) == 0)
    {
      v56 = sub_1E3952BE0(v10, v11, v12, v13);
    }
  }

  if (v4())
  {
    OUTLINED_FUNCTION_30();
    (*(v14 + 152))(v72);
  }

  v61 = 12.0;
  v62 = 12.0;
  if (v4())
  {
    OUTLINED_FUNCTION_4_240();

    OUTLINED_FUNCTION_47_0();
    (*(v15 + 200))();

    v61 = OUTLINED_FUNCTION_8_189();
  }

  if (v4())
  {
    OUTLINED_FUNCTION_4_240();

    OUTLINED_FUNCTION_47_0();
    (*(v16 + 304))();

    v62 = OUTLINED_FUNCTION_8_189();
  }

  v59 = 4.0;
  v60 = 4.0;
  if (v4())
  {
    OUTLINED_FUNCTION_4_240();

    OUTLINED_FUNCTION_47_0();
    (*(v17 + 152))(v73);

    v18 = *&v73[1];
    if (v74)
    {
      v18 = 4.0;
    }

    v59 = v18;
  }

  if (v4())
  {
    OUTLINED_FUNCTION_4_240();

    OUTLINED_FUNCTION_47_0();
    (*(v19 + 152))(v75);

    v20 = *&v75[3];
    if (v76)
    {
      v20 = 4.0;
    }

    v60 = v20;
  }

  if (v4())
  {
    OUTLINED_FUNCTION_4_240();

    OUTLINED_FUNCTION_47_0();
    (*(v21 + 152))(v77);

    if (v78)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v77[0];
    }
  }

  else
  {
    v22 = 0.0;
  }

  v23 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v24 = OUTLINED_FUNCTION_5_8();
  v25 = v23(v24);
  v25.n128_f64[0] = v5;
  v26.n128_f64[0] = v64;
  nullsub_1(v25, v26);
  v57 = v28;
  v58 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [v1 subviews];
  sub_1E373C4DC();
  v34 = sub_1E42062B4();

  v63 = sub_1E32AE9B0(v34);
  v35 = 0;
  v36 = 0;
  v37 = v64 + v22;
  while (v63 != v35)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x1E6911E60](v35, v34);
    }

    else
    {
      if (v35 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v38 = *(v34 + 8 * v35 + 32);
    }

    v39 = v38;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      return;
    }

    [v38 vui:0.0 sizeThatFits:0.0];
    width = v40;
    height = v42;
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (v44)
    {
      x = v59 + v5;
    }

    else
    {
      x = v5;
    }

    if (v44)
    {
      y = v37;
    }

    else
    {
      y = v64;
    }

    if (v44)
    {
      width = v61;
      height = v62;
      v5 = v60 + v59 + v5;
    }

    v80.origin.x = OUTLINED_FUNCTION_2_239();
    if (CGRectGetWidth(v80) > a1)
    {
      v81.origin.x = OUTLINED_FUNCTION_2_239();
      v88.origin.y = v57;
      v88.origin.x = v58;
      v88.size.width = v30;
      v88.size.height = v32;
      v82 = CGRectIntersection(v81, v88);
      x = v82.origin.x;
      y = v82.origin.y;
      width = v82.size.width;
      height = v82.size.height;
    }

    v47 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0);
    v83.origin.x = v47();
    v89.origin.x = x;
    v89.origin.y = y;
    v89.size.width = width;
    v89.size.height = height;
    v84 = CGRectUnion(v83, v89);
    v48 = (v23)(v84.origin, *&v84.origin.y, v84.size, *&v84.size.height);
    v85.origin.x = (v47)(v48);
    if (CGRectGetWidth(v85) > a1)
    {
      v86.origin.x = v47();
      v90.origin.y = v57;
      v90.origin.x = v58;
      v90.size.width = v30;
      v90.size.height = v32;
      v87 = CGRectIntersection(v86, v90);
      (v23)(v87.origin, *&v87.origin.y, v87.size, *&v87.size.height);
LABEL_50:
      v49 = OUTLINED_FUNCTION_5_8();
      [v39 v50];

      v36 = 1;
      goto LABEL_52;
    }

    if (v36)
    {
      goto LABEL_50;
    }

    v51 = OUTLINED_FUNCTION_2_239();
    [v52 v53];
    [v39 frame];
    v55 = v54;

    v36 = 0;
    v5 = v5 + v56 + v55;
LABEL_52:
    ++v35;
  }
}

void sub_1E4000EC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttributionTextViewUIKit();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  [v0 bounds];
  sub_1E4000780(v1);
}

id sub_1E4000FA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttributionTextViewUIKit();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E4001030(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 && (type metadata accessor for AttributionTextViewLayout(), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5;

    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    type metadata accessor for AttributionTextViewLayout();

    v6 = sub_1E3C82468(v7);
    if (!a2)
    {
LABEL_8:
      v9 = [objc_allocWithZone(type metadata accessor for AttributionTextViewUIKit()) init];
      goto LABEL_9;
    }
  }

  type metadata accessor for AttributionTextViewUIKit();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = a2;
LABEL_9:
  OUTLINED_FUNCTION_21();
  v12 = *(v11 + 208);

  v12(a1, v6);

  v13 = v9;
  [v13 vui:1 isAccessibilityElement:?];
  type metadata accessor for Accessibility();
  sub_1E40A91FC(v9, 6, a1);

  return v13;
}

uint64_t sub_1E40011A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1E4207384();
  if (!__OFADD__(result, 1))
  {
    *v3 = sub_1E373C6D0(v7, result + 1);
LABEL_7:
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    result = sub_1E400123C(a1, a2);
    *v3 = v9;
    return result;
  }

  __break(1u);
  return result;
}

id sub_1E400123C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1E373C68C(a2);
  if (__OFADD__(v5[2], (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28858);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_1E373C68C(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    sub_1E373C4DC();
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  v12 = *v3;
  if (v9)
  {
    *(v12[7] + 8 * v8) = a1;
  }

  else
  {
    sub_1E38CF6BC(v8, a2, a1, v12);

    return a2;
  }
}

uint64_t sub_1E4001368@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - v9;
  v8();
  v11 = *(v4 + 16);
  v11(v10, v7, a1);
  v12 = *(v4 + 8);
  v12(v7, a1);
  v11(a2, v10, a1);
  return (v12)(v10, a1);
}

uint64_t sub_1E40014FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E4001578(double a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_1E40015D4(double a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_1E4001658(double a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_1E400168C()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = sub_1E3D21824();
    v1 = *v2;
    *(v0 + 152) = *v2;
    swift_retain_n();
  }

  return v1;
}

uint64_t sub_1E40016F0()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v2 = sub_1E3D21A0C();
    v1 = *v2;
    *(v0 + 160) = *v2;
    swift_retain_n();
  }

  return v1;
}

uint64_t sub_1E4001788()
{
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E40017D4();

  return v1;
}

uint64_t sub_1E40017D4()
{
  sub_1E4001968();
  sub_1E4001ACC();
  OUTLINED_FUNCTION_8();
  (*(v0 + 1808))(1.0);
  OUTLINED_FUNCTION_36();
  (*(v1 + 1832))(6.0);
  OUTLINED_FUNCTION_36();
  (*(v2 + 1760))(17.0);
  OUTLINED_FUNCTION_36();
  (*(v3 + 1784))(10.0);
  OUTLINED_FUNCTION_36();
  v5 = (*(v4 + 1848))();
  sub_1E3C37CBC(v5, 17);

  OUTLINED_FUNCTION_36();
  v7 = (*(v6 + 1896))();
  sub_1E3C37CBC(v7, 39);
}

uint64_t sub_1E4001968()
{
  OUTLINED_FUNCTION_8();
  v0 += 231;
  v1 = *v0;
  v2 = (*v0)();
  (*(*v2 + 1984))(1);

  v4 = (v1)(v3);
  v5 = *sub_1E3E5FD88();
  v6 = *(*v4 + 680);
  v7 = v5;
  v6(v5);

  v9 = *(v1)(v8);
  (*(v9 + 1696))(19);
}

uint64_t sub_1E4001ACC()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v2 += 234;
  v3 = *v2;
  v4 = (*v2)();
  [objc_opt_self() scaleContentSizeValue:0 forTraitCollection:7.0];
  (*(*v4 + 2144))(v5, 0);

  (v3)(v6);
  OUTLINED_FUNCTION_7_215();
  (*(*v1 + 312))(v7, 0);

  (v3)(v8);
  OUTLINED_FUNCTION_7_215();
  OUTLINED_FUNCTION_8();
  (*(v9 + 208))();

  v11 = (v3)(v10);
  v12 = *sub_1E3E5FD88();
  v13 = *(*v11 + 680);
  v14 = v12;
  v13(v12);
}

uint64_t sub_1E4001CA4()
{
}

uint64_t sub_1E4001CE4()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E4001D2C()
{
  v0 = sub_1E4001CE4();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

uint64_t sub_1E4001DCC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  v9 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel__optimizedId;
  v14[0] = 0xD000000000000019;
  v14[1] = 0x80000001E428D7C0;
  sub_1E4200634();
  (*(v5 + 32))(v1 + v9, v8, v3);
  *(v1 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_titleViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadStateCancellable) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadViewModel) = a1;

  v10 = a1;
  v11 = sub_1E39C0300();
  if (v11)
  {
    swift_retain_n();
    sub_1E400203C();
    sub_1E40022D8();
    v14[0] = sub_1E40A0988();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEB8);
    sub_1E4002618();
    v12 = sub_1E4200844();

    *(v11 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadStateCancellable) = v12;

    sub_1E4002B48(v10);
    sub_1E39BD568();
  }

  else
  {
  }

  return v11;
}

uint64_t sub_1E400203C()
{
  v3 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadViewModel);
  if ([v4 downloadState] > 5)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_6_207();
  if (((1 << v5) & 0x36) == 0)
  {
    if (!v5)
    {
      v1 = 0;
      v0 = 0x80000001E428D8A0;
      v2 = 0xD00000000000001ALL;
      goto LABEL_4;
    }

LABEL_16:
    v19 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel;
    OUTLINED_FUNCTION_3_0();
    *(v3 + v19) = 0;
  }

  OUTLINED_FUNCTION_0_317();
LABEL_4:
  v6 = objc_opt_self();
  if ([v6 shouldShowExpiredImageWithDownloadState:objc_msgSend(v4 isExpired:sel_downloadState) isExpiringSoon:objc_msgSend(v4 hasFailed:{sel_isExpired), objc_msgSend(v4, sel_isExpiringSoon), OUTLINED_FUNCTION_8_190()}])
  {

    if (OUTLINED_FUNCTION_8_190())
    {
      v0 = 0x80000001E428D8A0;
      v2 = 0xD00000000000001ALL;
    }

    else
    {
      OUTLINED_FUNCTION_0_317();
      OUTLINED_FUNCTION_6_207();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  v11 = *(v3 + 16);
  v10 = *(v3 + 24);
  v12 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (!v10)
  {
    v11 = 0;
  }

  v13 = 0xE000000000000000;
  if (v10)
  {
    v13 = v10;
  }

  *(inited + 48) = v11;
  *(inited + 56) = v13;

  *(inited + 80) = sub_1E3C7CCAC(0);
  *(inited + 88) = v14;
  *(inited + 120) = v12;
  *(inited + 96) = v2;
  *(inited + 104) = v0;
  v15 = sub_1E4205CB4();
  type metadata accessor for ImageViewModel();

  v16 = sub_1E3F5321C(39, v15, v3);
  v17 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel;
  OUTLINED_FUNCTION_3_0();
  *(v3 + v17) = v16;

  v22 = 14;
  v21 = MEMORY[0x1E69E6370];
  v20[0] = v1;
  sub_1E39C0CE4(&v22, v20);
  return sub_1E329505C(v20);
}

id sub_1E40022D8()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_225();
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadViewModel);
  [v2 downloadState];
  v3 = objc_opt_self();
  if ([v3 shouldShowExpiredImageWithDownloadState:objc_msgSend(v2 isExpired:sel_downloadState) isExpiringSoon:objc_msgSend(v2 hasFailed:{sel_isExpired), objc_msgSend(v2, sel_isExpiringSoon), OUTLINED_FUNCTION_8_190()}])
  {

    if (OUTLINED_FUNCTION_8_190())
    {
      [v2 downloadState];
    }

    else
    {
      OUTLINED_FUNCTION_5_225();
    }
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = sub_1E4205ED4();

    v7 = [v5 localizedStringForKey_];

    if (v7)
    {
      v8 = sub_1E4205F14();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    type metadata accessor for TextViewModel();
    v13[3] = MEMORY[0x1E69E6158];
    v13[0] = v8;
    v13[1] = v10;

    v11 = sub_1E3C27638(23, v13, v1, 0, 0);
    v12 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_titleViewModel;
    OUTLINED_FUNCTION_3_0();
    *(v1 + v12) = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4002564()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E400203C();
    sub_1E40022D8();
    type metadata accessor for DownloadMenuItemViewModel();
    sub_1E4002CD0(&qword_1ECF2F560, type metadata accessor for DownloadMenuItemViewModel);
    sub_1E4200514();
    sub_1E4200594();
  }

  return result;
}

unint64_t sub_1E4002618()
{
  result = qword_1EE28A1C0;
  if (!qword_1EE28A1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A1C0);
  }

  return result;
}

uint64_t sub_1E400267C()
{
  v1 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel__optimizedId;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
}

uint64_t sub_1E400272C()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadStateCancellable))
  {

    sub_1E42004E4();
  }

  v1 = ViewModel.deinit();
  v2 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel__optimizedId;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(v1 + v2);

  return v1;
}

uint64_t sub_1E4002808()
{
  v0 = sub_1E400272C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E400285C(__objc2_class **a1)
{
  if (*a1 != _TtC8VideosUI25DownloadMenuItemViewModel)
  {
    goto LABEL_14;
  }

  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_titleViewModel;
  OUTLINED_FUNCTION_5_0();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_titleViewModel;
  OUTLINED_FUNCTION_5_0();
  v7 = *(v2 + v6);
  if (!v5)
  {
    if (!v7)
    {

      goto LABEL_8;
    }

LABEL_14:
    v13 = 0;
    return v13 & 1;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

  type metadata accessor for TextViewModel();
  sub_1E4002CD0(&qword_1EE283758, type metadata accessor for TextViewModel);

  v8 = sub_1E4205E84();

  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v9 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel;
  OUTLINED_FUNCTION_5_0();
  v10 = *(a1 + v9);
  v11 = OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_imageViewModel;
  OUTLINED_FUNCTION_5_0();
  v12 = *(v2 + v11);
  if (!v10)
  {

    if (!v12)
    {
      v13 = 1;
      return v13 & 1;
    }

    goto LABEL_13;
  }

  if (!v12)
  {
LABEL_13:

    goto LABEL_14;
  }

  type metadata accessor for ImageViewModel();
  sub_1E4002CD0(&qword_1EE282FC0, type metadata accessor for ImageViewModel);

  v13 = sub_1E4205E84();

  return v13 & 1;
}

uint64_t sub_1E4002B48(void *a1)
{
  v1 = [a1 accessibilityIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t type metadata accessor for DownloadMenuItemViewModel()
{
  result = qword_1EE296580;
  if (!qword_1EE296580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4002C00()
{
  sub_1E38C734C(319, &qword_1EE289FC0, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E4002CD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_1E4002D18(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3ACA7D0();
  return sub_1E3DFE5C4;
}

uint64_t (*sub_1E4002D60(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3BD9EEC();
  return sub_1E4002DA8;
}

uint64_t sub_1E4002DEC()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = vdupq_n_s64(0x3FD51EB851EB851FuLL);
  v1 = sub_1E3C2F9A0();

  sub_1E4002EF8();
  sub_1E4002E44();

  return v1;
}

uint64_t sub_1E4002E44()
{
  v1 = (*(*v0 + 1720))();
  sub_1E3C37CBC(v1, 119);

  v3 = (*(*v0 + 1744))(v2);
  sub_1E3C37CBC(v3, 118);
}

uint64_t sub_1E4002EF8()
{
  v17[0] = sub_1E3952C10(10.0, 10.0);
  v17[1] = v1;
  v17[2] = v2;
  v17[3] = v3;
  LOBYTE(v17[4]) = 0;
  v40 = sub_1E3952C10(30.0, 30.0);
  v41 = v4;
  v42 = v5;
  v43 = v6;
  v44 = 0;
  v35 = sub_1E3952C10(80.0, 80.0);
  v36 = v7;
  v37 = v8;
  v38 = v9;
  v39 = 0;
  v30 = sub_1E3952C10(30.0, 0.0);
  v31 = v10;
  v32 = v11;
  v33 = v12;
  v34 = 0;
  type metadata accessor for UIEdgeInsets();
  v14 = v13;
  sub_1E3C2FC98();
  v24 = v27;
  v25 = v28;
  v26 = v29;
  sub_1E3C3DE00(v14);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  sub_1E3C2FCB8(v17, __src);
  memcpy(v17, __src, 0xE9uLL);
  v15 = OUTLINED_FUNCTION_18();
  (*(*v0 + 1600))(v17, 1, v15 & 1, v14);
  sub_1E4003058();
  return sub_1E40032CC();
}

uint64_t sub_1E4003058()
{
  v1 = (*v0 + 1720);
  v2 = *v1;
  v3 = (*v1)();
  (*(*v3 + 800))(1);

  v5 = *(v2)(v4);
  (*(v5 + 488))(2);

  v7 = *(v2)(v6);
  (*(v7 + 992))(21, 0);

  v9 = (v2)(v8);
  v13[0] = 0x4039000000000000;
  LOBYTE(v13[1]) = 0;
  v27 = 0x4054000000000000;
  v28 = 0;
  v25 = 0x4039000000000000;
  v26 = 0;
  v10 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v21 = v23;
  v22 = v24;
  sub_1E3C3DE00(v10);
  v17 = v19;
  v18 = v20;
  sub_1E3C3DE00(v10);
  v13[12] = v15;
  v14 = v16;
  sub_1E3C2FCB8(v13, __src);
  memcpy(v13, __src, 0x59uLL);
  v11 = OUTLINED_FUNCTION_18();
  (*(*v9 + 1600))(v13, 10, v11 & 1, v10);
}

uint64_t sub_1E40032CC()
{
  v1 = (*(*v0 + 1744))();
  (*(*v1 + 488))(2);
}

uint64_t sub_1E400335C()
{
  v0 = sub_1E37BD5C4();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

id sub_1E40033B0()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_widthThresholdForIpadLayout] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_viewModel] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

void sub_1E4003434()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_widthThresholdForIpadLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_viewModel) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E40034C0(char a1, double a2, double a3)
{
  v4 = v3;
  v19.receiver = v4;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v8 = a2 != 0.0;
  if (a3 != 0.0)
  {
    v8 = 1;
  }

  if (v8 && (a1 & 1) != 0)
  {
    v9 = OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_viewModel;
    swift_beginAccess();
    v10 = *&v4[v9];
    if (v10)
    {
      v11 = *(*v10 + 392);

      v13 = v11(v12);

      if (v13)
      {
        v10 = (*(*v13 + 432))(v14);
        v16 = v15;

LABEL_10:
        v17 = OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_widthThresholdForIpadLayout;
        swift_beginAccess();
        sub_1E400363C(v10, v16 & 1, a2, v18, *&v4[v17]);
        return;
      }

      v10 = 0;
    }

    v16 = 1;
    goto LABEL_10;
  }
}

double sub_1E400363C(uint64_t a1, char a2, double a3, double a4, double a5)
{
  type metadata accessor for MediaShowcaseCollectionLayout();
  if (sub_1E3FC7038(a3, a5))
  {
    sub_1E418A524();
  }

  else
  {
    sub_1E3A286D4();
    v9 = sub_1E41DA6E8();
    if (v9)
    {
      v10 = v9;
      [v9 vui_bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v20.origin.x = v12;
      v20.origin.y = v14;
      v20.size.width = v16;
      v20.size.height = v18;
      CGRectGetHeight(v20);
    }

    sub_1E3FC6C00();
    sub_1E3FC6BC0();
    if ((a2 & 1) == 0 && *&a1 > 0.0)
    {
      VUIFloorValue();
    }
  }

  return a3;
}

double sub_1E40037C8(uint64_t a1)
{
  if (!a1)
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_6;
  }

  LOBYTE(v2) = 0;
  (*(*a1 + 776))(&v3, &v2, &unk_1F5D5D9A8, &off_1F5D5C958);
  if (!*(&v4 + 1))
  {
LABEL_6:
    sub_1E329505C(&v3);
    return *sub_1E3FC6B78();
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  return *sub_1E3FC6B78();
}

uint64_t sub_1E40038E4()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 1696);

  v3 = v2();
  (*(*v3 + 208))(0x4034000000000000, 0);

  v5 = *(v2)(v4);
  (*(v5 + 312))(0x4034000000000000, 0);

  v7 = (v2)(v6);
  sub_1E3C37CBC(v7, 23);

  return v1;
}

id sub_1E4003ABC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseCollectionReusableView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  return [v0 vui:0 layoutSubviews:v1 computationOnly:v2];
}

id sub_1E4003B88()
{
  OUTLINED_FUNCTION_0_8();
  v5 = type metadata accessor for BaseCollectionReusableView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E4003BF8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BaseCollectionReusableView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E4003C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseCollectionReusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E4003CB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle);
  v2 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineWidth;
  OUTLINED_FUNCTION_15_0();
  return [v1 setLineWidth_];
}

double sub_1E4003D14()
{
  v1 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineWidth;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

id sub_1E4003D48(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineWidth;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  return sub_1E4003CB8();
}

uint64_t sub_1E4003D94(uint64_t a1)
{
  OUTLINED_FUNCTION_56_2(a1);
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E4003DF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle);
  v2 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineColor;
  OUTLINED_FUNCTION_15_0();
  v3 = [*(v0 + v2) CGColor];
  [v1 setStrokeColor_];
}

id sub_1E4003E74()
{
  v1 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineColor;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E4003EB8(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineColor;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1E4003DF8();
}

uint64_t sub_1E4003F18(uint64_t a1)
{
  OUTLINED_FUNCTION_56_2(a1);
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E4003F7C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void *sub_1E4003FC0()
{
  v1 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageTintColor;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E4004010(uint64_t a1)
{
  OUTLINED_FUNCTION_56_2(a1);
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E4004070(uint64_t a1, char a2, uint64_t *a3, SEL *a4)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E40040BC(a3, a4);
  }
}

void sub_1E40040BC(uint64_t *a1, SEL *a2)
{
  v5 = sub_1E40044CC();
  v6 = *a1;
  OUTLINED_FUNCTION_15_0();
  v7 = *(v2 + v6);
  [v5 *a2];
}

void *sub_1E4004128()
{
  v1 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageSymbolConfig;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E4004178(void *a1, uint64_t *a2, SEL *a3)
{
  v7 = *a2;
  OUTLINED_FUNCTION_3_0();
  v8 = *(v3 + v7);
  *(v3 + v7) = a1;
  v9 = a1;

  sub_1E40040BC(a2, a3);
}

uint64_t sub_1E40041EC(uint64_t a1)
{
  OUTLINED_FUNCTION_56_2(a1);
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void *sub_1E400424C()
{
  v1 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E4004288(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView;
  OUTLINED_FUNCTION_3_0();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView;
  v7 = a1;
  swift_beginAccess();
  v8 = *&v2[v6];
  if (v8)
  {
    v9 = v8;
    [v2 bounds];
    [v9 setFrame_];
    [v9 setClipsToBounds_];
    [v2 vui:v9 addSubview:v5 oldView:?];
    [v2 vui:v9 sendSubviewToBack:?];
    v10 = [v9 vuiLayer];
    if (v10)
    {
      v11 = v10;
      OUTLINED_FUNCTION_5_226();
      v13 = v12;
      OUTLINED_FUNCTION_5_226();
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      [v11 setCornerRadius_];
    }
  }
}

void (*sub_1E40043D8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E4004460;
}

void sub_1E4004460(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E4004288(v3);
  }

  else
  {
    sub_1E4004288(*(*a1 + 24));
  }

  free(v2);
}

id sub_1E40044CC()
{
  v1 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E40045FC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  OUTLINED_FUNCTION_0_8();
  v20 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageTintColor;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageTintColor) = 0;
  v21 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageSymbolConfig;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageSymbolConfig) = 0;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView) = 0;
  v22 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle;
  *(v12 + v22) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView) = 0;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_isAnimating) = 0;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_duration) = a11;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineWidth) = a12;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_lineColor) = a1;
  *(v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_image) = a2;
  OUTLINED_FUNCTION_3_0();
  v23 = *(v12 + v20);
  *(v12 + v20) = a3;
  v24 = a1;
  v25 = a2;
  v26 = a3;

  OUTLINED_FUNCTION_3_0();
  v27 = *(v12 + v21);
  *(v12 + v21) = a4;
  v28 = a4;

  v29 = (v12 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_action);
  *v29 = a5;
  v29[1] = a6;
  type metadata accessor for CountDownProgressView();

  v30 = OUTLINED_FUNCTION_2_0();
  v33 = objc_msgSendSuper2(v31, v32, v30);
  sub_1E40048F8();
  sub_1E4004B8C();

  return v33;
}

uint64_t sub_1E40047EC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageTintColor;
  *(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageTintColor) = 0;
  v4 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageSymbolConfig;
  *(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_imageSymbolConfig) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView;
  *(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_visualEffectView) = 0;
  v6 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle;
  v7 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];

  *(v1 + v6) = v7;
  v8 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView;
  *(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_isAnimating) = 0;

  type metadata accessor for CountDownProgressView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E40048F8()
{
  v1 = v0;
  Mutable = CGPathCreateMutable();
  [v0 frame];
  v20.a = 1.0;
  v20.b = 0.0;
  v20.c = 0.0;
  v20.d = 1.0;
  v20.tx = 0.0;
  v20.ty = 0.0;
  CGAffineTransformTranslate(&v19, &v20, 0.0, v3);
  CGAffineTransformRotate(&v20, &v19, -1.57079633);
  [v0 frame];
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  sub_1E4206894();
  v7 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle);
  [v7 setPath_];
  v8 = [objc_opt_self() clearColor];
  v9 = [v8 CGColor];

  [v7 setFillColor_];
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
  v12 = [v11 CGColor];

  [v7 setStrokeColor_];
  (*((*v10 & *v1) + 0xA8))();
  [v7 setLineWidth_];
  OUTLINED_FUNCTION_5_226();
  OUTLINED_FUNCTION_5_226();
  v14 = (v13 - v6) * 0.5;
  OUTLINED_FUNCTION_5_226();
  [v7 setPosition_];
  v16 = [v1 vuiLayer];
  [v16 addSublayer_];

  v17 = [v1 vuiLayer];
  if (v17)
  {
    v18 = v17;
    [v17 setMasksToBounds_];
  }
}

id sub_1E4004B8C()
{
  v1 = sub_1E40044CC();
  [v1 setVuiContentMode_];

  v2 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView____lazy_storage___imageView);
  [v0 bounds];
  [v3 setFrame_];

  [v0 vui:*(v0 + v2) addSubview:0 oldView:?];
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8);
  v6 = *(v0 + v2);
  v7 = v5();
  [v6 setVuiTintColor_];

  v8 = *((*v4 & *v0) + 0xF0);
  v9 = *(v0 + v2);
  v10 = v8();
  [v9 _setPreferredSymbolConfiguration_];

  v11 = *(v0 + v2);
  v12 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_image);

  return [v11 setImage_];
}

void sub_1E4004D04()
{
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_isAnimating) & 1) == 0)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_isAnimating) = 1;
    sub_1E4004E84();
    v2 = sub_1E4004EC8(0x6E45656B6F727473, 0xE900000000000064);
    v3 = sub_1E41FE954();
    [v2 setFromValue_];

    v4 = sub_1E41FE954();
    [v2 setToValue_];

    v5 = *(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_duration);
    v6 = v2;
    [v6 setDuration_];
    [v6 setRemovedOnCompletion_];
    [v6 setFillMode_];
    [v6 setDelegate_];

    [*(v1 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle) addAnimation:v6 forKey:0];
  }
}

unint64_t sub_1E4004E84()
{
  result = qword_1EE23B2C0;
  if (!qword_1EE23B2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B2C0);
  }

  return result;
}

id sub_1E4004EC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1E4205ED4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

id sub_1E4004F38()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_circle);
  [v1 removeAllAnimations];

  return [v1 setStrokeEnd_];
}

id sub_1E4004F90(char a1, double a2, double a3)
{
  if ((a1 & 1) == 0)
  {
    v7 = sub_1E40044CC();
    [v3 bounds];
    [v7 setFrame_];
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CountDownProgressView();
  return objc_msgSendSuper2(&v9, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
}

id sub_1E40050C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CountDownProgressView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E40051A4(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI21CountDownProgressView_isAnimating;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_isAnimating) == 1 && (a2 & 1) != 0)
  {
    result = (*(v2 + OBJC_IVAR____TtC8VideosUI21CountDownProgressView_action))();
  }

  *(v2 + v3) = 0;
  return result;
}

id sub_1E4005268(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (!(*(*a1 + 552))())
  {
    v80 = 0u;
    v81 = 0u;
    goto LABEL_7;
  }

  v78 = &unk_1F5D7BE68;
  v79 = &off_1F5D7BC48;
  LOBYTE(v76) = 6;
  sub_1E3F9F164(&v76);

  __swift_destroy_boxed_opaque_existential_1(&v76);
  if (!*(&v81 + 1))
  {
LABEL_7:
    sub_1E325F748(&v80, &unk_1ECF296E0);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v10 = sub_1E3744600(v76);
  v11 = objc_allocWithZone(VUIContentMetadata);
  v12 = sub_1E37AD294(v10);
  if (a3)
  {

    v13 = a3;
    goto LABEL_12;
  }

  result = [objc_allocWithZone(VUIMediaTagsView) initWithFrame:a2 layout:{0.0, 0.0, 0.0, 0.0}];
  if (result)
  {
    v13 = result;

LABEL_12:
    v73 = v12;
    v15 = a3;
    if (a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = sub_1E4205CB4();
    }

    v17 = *(*a1 + 488);

    v19 = v17(v18);
    if (v19)
    {
      v20 = sub_1E373E010(61, v19);

      if (v20)
      {
        v21 = v13;
        v22 = sub_1E40057DC(v13, v20);

        if (v22)
        {
          v23 = sub_1E4205F14();
          v70 = v24;
          v72 = v23;
          v25 = sub_1E3280A90(0, &qword_1EE23AE80);
          OUTLINED_FUNCTION_4_241(v25, v26, v27, v28, v29, v30, v31, v32, v68, v70, v72, v73, v74, v76, v77, v78, v79, v80);
          v33 = v22;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_3_243();
          sub_1E32A87C0(v34, v71, v69);

          v16 = v74;
        }

        else
        {
        }
      }
    }

    v35 = v17(v19);
    if (v35)
    {
      v36 = sub_1E373E010(40, v35);
    }

    else
    {
      v36 = 0;
    }

    v37 = v73;
    v38 = v13;
    v39 = sub_1E4005F14(v13, a2, v36);
    if (v39)
    {
      v40 = v39;
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {

        if (a5)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      v41 = sub_1E4205F14();
      v43 = v42;
      v44 = sub_1E3280A90(0, &qword_1EE23AE80);
      OUTLINED_FUNCTION_4_241(v44, v45, v46, v47, v48, v49, v50, v51, v68, v69, v71, v73, v74, v76, v77, v78, v79, v80);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_3_243();
      sub_1E32A87C0(v52, v41, v43);

      v16 = v75;
    }

    if (a5)
    {
LABEL_27:
      if (v37)
      {
        v53 = a5;
        v54 = v37;
      }

      else
      {
        v56 = objc_allocWithZone(VUIContentMetadata);
        v57 = a5;
        v54 = [v56 init];
      }

      v58 = v37;
      sub_1E3744600(v16);

      v59 = sub_1E4205C44();

      [a5 parseDictionaryForContentMetadata:v54 additionalMetadata:v59];

      v60 = [a5 tagsViewDictionary];
      v61 = sub_1E4205C64();

      sub_1E3821F04(v61, v38);
LABEL_36:

      return v13;
    }

LABEL_30:
    if (v37)
    {
      v55 = v37;
    }

    else
    {
      v55 = [objc_allocWithZone(VUIContentMetadata) init];
    }

    v62 = v37;
    v63 = sub_1E3744600(v16);

    v64 = objc_allocWithZone(VUIMediaTagsViewHelper);
    v65 = sub_1E4006AD0(v55, v63);
    v66 = [v65 tagsViewDictionary];
    v67 = sub_1E4205C64();

    sub_1E3821F04(v67, v38);
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E40057DC(void *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a2;
  v6 = *(*a2 + 464);
  v7 = a1;
  v8 = v6();
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  result = sub_1E32AE9B0(v8);
  v42 = v5;
  v43 = v7;
  v45 = v9;
  if (result)
  {
    v11 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_0_318();
    v12 = 0;
    v46 = v9 & 0xC000000000000001;
    v13 = 2;
    v44 = v11;
    do
    {
      if (v46)
      {
        v14 = MEMORY[0x1E6911E60](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      type metadata accessor for ImageViewModel();
      if (swift_dynamicCastClass())
      {
        sub_1E3F86AA4(v88);
        v56 = v88[1];
        v57 = v88[2];
        v58 = v88[3];
        v59 = v88[0];
        v50 = v88[5];
        v51 = v88[4];
        v49 = v89;
        v15 = v90 | ((v91 | (v92 << 16)) << 32);
        v53 = v93;
        v54 = v94;
        v55 = v95;
        v16 = v96;
        v52 = v97;
        __src[0] = v60;
        __src[1] = v4;
        __src[2] = v63;
        __src[3] = v62;
        __src[4] = v65;
        __src[5] = v66;
        LOBYTE(__src[6]) = v2;
        HIBYTE(__src[6]) = BYTE6(v5);
        *(&__src[6] + 5) = WORD2(v5);
        *(&__src[6] + 1) = v5;
        __src[7] = v64;
        __src[8] = v6;
        __src[9] = v3;
        v84 = v13;
        v85 = v69;
        sub_1E325F748(__src, &qword_1ECF299E0);
        sub_1E3DF9E68(v98);
        v4 = v98[0];
        v17 = v98[1];
        v18 = v98[2];
        v19 = v99 | ((v100 | (v101 << 16)) << 32);
        v20 = v102;
        v47 = v103;
        v48 = v104;
        v61 = v105;
        v21 = v106;
        v22 = sub_1E3FA6210();
        v24 = *v22;
        v23 = v22[1];
        LOBYTE(v82[0]) = 0;
        if (v16 == 2)
        {
          v70 = v4;
          v71 = v17;
          v72 = v18;
          v73 = v24;
          v74 = v23;
          LOBYTE(v75) = v82[0];
          *(&v75 + 1) = v19;
          HIBYTE(v75) = BYTE6(v19);
          *(&v75 + 5) = WORD2(v19);
          v76 = v20;
          v77 = v47;
          v78 = v48;
          v79 = v61;
          LOWORD(v80) = v21;
          v25 = sub_1E37CCDFC(&v70);
          v13 = 2;
          v2 = v49;
          v65 = v51;
          v66 = v50;
          v69 = v52;
          v67 = v15;
          v6 = v54;
          v3 = v55;
          v4 = v56;
          v63 = v57;
          v64 = v53;
          v62 = v58;
        }

        else
        {
          v62 = v18;
          v63 = v17;
          v65 = v24;
          v66 = v23;
          v67 = v19;
          v69 = v21;
          v2 = v82[0];
          v70 = v56;
          v71 = v57;
          v72 = v58;
          v73 = v51;
          v74 = v50;
          LOBYTE(v75) = v49;
          *(&v75 + 1) = v15;
          HIBYTE(v75) = BYTE6(v15);
          *(&v75 + 5) = WORD2(v15);
          v76 = v53;
          v77 = v54;
          v78 = v55;
          v79 = v16;
          LOWORD(v80) = v52;
          v25 = sub_1E325F748(&v70, &unk_1ECF31AB0);
          v64 = v20;
          v6 = v47;
          v3 = v48;
          v13 = v61;
        }

        v11 = v44;
        if ((*(*v14 + 392))(v25))
        {
          type metadata accessor for ImageLayout();
          v26 = swift_dynamicCastClass();
          if (v26)
          {
            v27 = v26;
            v28 = sub_1E3FA614C();
            sub_1E4006864(v27, v43, 0, 0, 1, *v28, *v28);
          }

          v9 = v45;

          v5 = v67;
        }

        else
        {
          v5 = v67;
          v9 = v45;
        }

        v60 = v59;
      }

      else
      {
      }

      ++v12;
    }

    while (v11 != v12);
  }

  else
  {
    OUTLINED_FUNCTION_0_318();
    v13 = 2;
  }

  v68 = v5;
  v30 = v13;
  result = sub_1E4006B60(v43);
  if (result)
  {
    v31 = result;

    v70 = sub_1E4205F14();
    v71 = v32;
    sub_1E4207414();
    sub_1E375D7E8(__src, v31, &v86);

    sub_1E375D84C(__src);
    if (v87)
    {
      sub_1E3280A90(0, &qword_1EE23ACF0);
      if (swift_dynamicCast())
      {
        v33 = v70;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      sub_1E325F748(&v86, &unk_1ECF296E0);
      v33 = 0;
    }

    __src[0] = v60;
    __src[1] = v4;
    __src[2] = v63;
    __src[3] = v62;
    __src[4] = v65;
    __src[5] = v66;
    LOBYTE(__src[6]) = v2;
    *(&__src[6] + 1) = v68;
    HIBYTE(__src[6]) = BYTE6(v68);
    *(&__src[6] + 5) = WORD2(v68);
    __src[7] = v64;
    __src[8] = v6;
    __src[9] = v3;
    v84 = v13;
    v85 = v69;
    if (v13 == 2)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v82[1] = 0;
      v82[2] = 0;
    }

    else
    {
      v34 = swift_allocObject();
      memcpy((v34 + 16), __src, 0x50uLL);
      *(v34 + 96) = v13;
      *(v34 + 104) = v69;
      v36 = &off_1F5D8FAD0;
      v35 = &type metadata for ButtonViewContext;
    }

    v82[0] = v34;
    v82[3] = v35;
    v82[4] = v36;
    type metadata accessor for UIFactory();
    sub_1E4006BCC(__src, &v70);
    v37 = sub_1E3280A90(0, &qword_1EE23ACF0);
    v29 = sub_1E393D92C(v42, v33, v82, 0, v37);

    sub_1E325F748(v82, &qword_1ECF296C0);
    if (v29 && (v38 = [v29 imageView]) != 0)
    {
      v39 = v38;
      if (sub_1E39C408C(39))
      {
        OUTLINED_FUNCTION_8();
        v41 = (*(v40 + 392))();
        if (v41)
        {
          type metadata accessor for ImageLayout();
          v41 = swift_dynamicCastClass();
          if (!v41)
          {
          }
        }
      }

      else
      {
        v41 = 0;
      }

      sub_1E40065F8(v39, v41);
    }

    else
    {
    }

    v70 = v60;
    v71 = v4;
    v72 = v63;
    v73 = v62;
    v74 = v65;
    v75 = v66;
    LOBYTE(v76) = v2;
    *(&v76 + 1) = v68;
    HIBYTE(v76) = BYTE6(v68);
    *(&v76 + 5) = WORD2(v68);
    v77 = v64;
    v78 = v6;
    v79 = v3;
    v80 = v30;
    v81 = v69;
    sub_1E325F748(&v70, &qword_1ECF299E0);
    return v29;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1E4005F14(void *a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  type metadata accessor for ImageViewModel();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;

  v7 = a1;
  result = sub_1E4006B60(v7);
  if (result)
  {
    v9 = result;
    *&v58 = sub_1E4205F14();
    *(&v58 + 1) = v10;
    sub_1E4207414();
    sub_1E375D7E8(__dst, v9, &v58);

    sub_1E375D84C(__dst);
    if (v60)
    {
      sub_1E3280A90(0, &qword_1EE23AE80);
      if (swift_dynamicCast())
      {
        v11 = *&__src[0];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      sub_1E325F748(&v58, &unk_1ECF296E0);
      v11 = 0;
    }

    v13 = [a2 useImageViewForEntitlementCue];
    v14 = *(*v6 + 392);

    v16 = (v14)(v15);
    if (v13)
    {
      if (v16)
      {
        type metadata accessor for ImageLayout();
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          v18 = v17;
          if (a2)
          {
            [a2 entitlementCueImageSize];
            v20 = v19;
            v22 = v21;
            v23 = [a2 entitlementCueImageBorderColor];
            [a2 entitlementCueImageBorderWidth];
            v25 = v24;
          }

          else
          {
            v50 = sub_1E3FA61C0();
            v25 = 0;
            v23 = 0;
            v20 = *v50;
            v22 = *v50;
          }

          sub_1E4006864(v18, v7, v23, v25, a2 == 0, v20, v22);
        }

        else
        {
        }
      }

      sub_1E3DF9E68(&v58);
      v51 = *sub_1E3FA6210();
      *&__src[1] = v59;
      __src[0] = v58;
      *(&__src[1] + 8) = v51;
      BYTE8(__src[2]) = 0;
      *(&__src[4] + 2) = *&v63[9];
      *(&__src[3] + 9) = *v63;
      *(&__src[2] + 9) = v62;
      memcpy(__dst, __src, 0x52uLL);
      v12 = sub_1E3DF9F2C(v6, v11, __dst, 0);
      sub_1E37CCDFC(__src);
      if (v12 && (objc_opt_self(), (v52 = swift_dynamicCastObjCClass()) != 0))
      {
        v53 = v52;
        v54 = v12;
        v55 = v14();

        if (v55)
        {
          type metadata accessor for ImageLayout();
          v56 = swift_dynamicCastClass();
          if (!v56)
          {
          }
        }

        else
        {
          v56 = 0;
        }

        sub_1E40065F8(v53, v56);
      }

      else
      {
      }
    }

    else
    {
      if (v16)
      {
        type metadata accessor for ImageLayout();
        v26 = swift_dynamicCastClass();
        if (v26)
        {
          v27 = v26;
          [a2 entitlementCueImageSize];
          v29 = v28;
          v31 = v30;
          v32 = v11;
          v33 = v7;
          v34 = *(*v27 + 208);

          v34(v31, 0);
          v7 = v33;
          v11 = v32;
          (*(*v27 + 312))(v29, 0);
          [a2 entitlementCueImageShouldScaleToSize];
          OUTLINED_FUNCTION_36();
          (*(v35 + 1712))();
          sub_1E37695C0([a2 entitlementCueImageMaxContentSizeCategory]);
          OUTLINED_FUNCTION_36();
          (*(v36 + 2096))();
          OUTLINED_FUNCTION_36();
          v38.n128_f64[0] = COERCE_DOUBLE((*(v37 + 304))()) * 0.5;
          if (v39)
          {
            v38.n128_f64[0] = 0.0;
          }

          __dst[0] = j__OUTLINED_FUNCTION_7_78(v38);
          __dst[1] = v40;
          __dst[2] = v41;
          __dst[3] = v42;
          LOBYTE(__dst[4]) = 0;
          (*(*v27 + 560))(__dst);

          v43 = [a2 entitlementCueImageBorderColor];
          OUTLINED_FUNCTION_36();
          (*(v44 + 1832))();
          [a2 entitlementCueImageBorderWidth];
          *&v58 = j__OUTLINED_FUNCTION_7_78(v45);
          *(&v58 + 1) = v46;
          v59 = v47;
          v60 = v48;
          v61 = 0;
          (*(*v27 + 1856))(&v58);
        }
      }

      if (v11 && (type metadata accessor for EntitlementHostingView(0), (v49 = swift_dynamicCastClass()) != 0))
      {
        v12 = v49;

        sub_1E4171260();
      }

      else
      {
        type metadata accessor for EntitlementHostingView(0);
        v12 = sub_1E4171188();
      }
    }

    return v12;
  }

  __break(1u);
  return result;
}

void sub_1E40065F8(void *a1, uint64_t a2)
{
  [a1 setClearsBackgroundColorOnImageLoad_];
  if (a2)
  {
    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 552);
    v6 = swift_retain_n();
    v5(v17, v6);
    v7 = *&v17[1];
    if (v18)
    {
      v7 = 0.0;
    }

    [a1 setCornerRadius_];
    OUTLINED_FUNCTION_36();
    v9 = (*(v8 + 1824))();
    [a1 setBorderColor_];

    OUTLINED_FUNCTION_36();
    (*(v10 + 1848))(v19);
    v11 = *&v19[1];
    if (v20)
    {
      v11 = 0.0;
    }

    [a1 setBorderWidth_];
    OUTLINED_FUNCTION_36();
    v13 = (*(v12 + 1704))();
    if (v13 == 2 || (v13 & 1) != 0)
    {
      [a1 setVuiContentMode_];
      v14 = 0;
    }

    else
    {
      [a1 setVuiContentMode_];
      v14 = *MEMORY[0x1E69DF868];
    }

    [a1 setOverrideLocalImageViewSizingMode_];
    OUTLINED_FUNCTION_36();
    v16 = (*(v15 + 744))();

    [a1 setVuiBackgroundColor_];
  }
}

uint64_t sub_1E4006864(uint64_t a1, void *a2, void *a3, unint64_t a4, char a5, double a6, double a7)
{
  v14 = objc_opt_self();
  v15 = [a2 vuiTraitCollection];
  [v14 scaleContentSizeValue:v15 forTraitCollection:a6];

  OUTLINED_FUNCTION_8();
  (*(v16 + 208))();
  v17 = objc_opt_self();
  v18 = [a2 vuiTraitCollection];
  [v17 scaleContentSizeValue:v18 forTraitCollection:a7];
  v20 = v19;

  (*(*a1 + 312))(v20, 0);
  v21 = objc_opt_self();
  v22 = [a2 vuiTraitCollection];
  [v21 scaleContentSizeValue:v22 forTraitCollection:a7 * 0.5];
  v24 = v23;

  v25.n128_u64[0] = v24;
  v40[0] = j__OUTLINED_FUNCTION_7_78(v25);
  v40[1] = v26;
  v40[2] = v27;
  v40[3] = v28;
  v41 = 0;
  result = (*(*a1 + 560))(v40);
  if (a3)
  {
    OUTLINED_FUNCTION_8();
    v32 = *(v31 + 1832);
    v33 = a3;
    result = v32(a3);
  }

  if ((a5 & 1) == 0)
  {
    v30.n128_u64[0] = a4;
    v38[0] = j__OUTLINED_FUNCTION_7_78(v30);
    v38[1] = v34;
    v38[2] = v35;
    v38[3] = v36;
    v39 = 0;
    OUTLINED_FUNCTION_8();
    return (*(v37 + 1856))(v38);
  }

  return result;
}

id sub_1E4006AD0(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_1E4205C44();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithContentMetadata:a1 additionalMetadata:v4];

  return v5;
}

uint64_t sub_1E4006B60(void *a1)
{
  v1 = [a1 viewsMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E4006BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall DocumentLoadingConfiguration.init(loadImmediately:labelTextOverride:withZoomTransition:prefersLargeTitle:navigationTitle:isComingFromExtras:isComingFromRoot:isRootViewController:)(VideosUI::DocumentLoadingConfiguration *__return_ptr retstr, Swift::Bool loadImmediately, Swift::String_optional labelTextOverride, Swift::Bool withZoomTransition, Swift::Bool prefersLargeTitle, Swift::String_optional navigationTitle, Swift::Bool isComingFromExtras, Swift::Bool isComingFromRoot, Swift::Bool isRootViewController)
{
  retstr->loadImmediately = loadImmediately;
  retstr->labelTextOverride = labelTextOverride;
  retstr->withZoomTransition = withZoomTransition;
  retstr->navigationTitle = navigationTitle;
  retstr->isComingFromExtras = isComingFromExtras;
  retstr->isComingFromRoot = isComingFromRoot;
  retstr->isRootViewController = isRootViewController;
  retstr->prefersLargeTitle = prefersLargeTitle;
}

void __swiftcall DocumentLoadingConfiguration.init(documentDataSource:)(VideosUI::DocumentLoadingConfiguration *__return_ptr retstr, VUIDocumentDataSource *documentDataSource)
{
  v22 = [(VUIDocumentDataSource *)documentDataSource shouldLoadPageImmediately];
  v4 = OUTLINED_FUNCTION_116_14();
  v5 = sub_1E3827728(v4, &selRef_loadingViewText);
  v20 = v6;
  v21 = v5;
  v7 = [(VUIDocumentDataSource *)documentDataSource shouldUseZoomTransition];
  v8 = OUTLINED_FUNCTION_116_14();
  v9 = [v8 prefersLargeTitle];

  v10 = OUTLINED_FUNCTION_116_14();
  v11 = sub_1E3827728(v10, &selRef_navigationTitle);
  v13 = v12;
  v14 = OUTLINED_FUNCTION_116_14();
  v15 = [v14 isComingFromExtras];

  v16 = OUTLINED_FUNCTION_116_14();
  v17 = [v16 isComingFromRoot];

  v18 = OUTLINED_FUNCTION_116_14();
  v19 = [v18 isRootViewController];

  retstr->loadImmediately = v22;
  retstr->labelTextOverride.value._countAndFlagsBits = v21;
  retstr->labelTextOverride.value._object = v20;
  retstr->withZoomTransition = v7;
  retstr->navigationTitle.value._countAndFlagsBits = v11;
  retstr->navigationTitle.value._object = v13;
  retstr->isComingFromExtras = v15;
  retstr->isComingFromRoot = v17;
  retstr->isRootViewController = v19;
  retstr->prefersLargeTitle = v9;
}

uint64_t DocumentViewController.viewWillAppearAfterTabSwitch.getter()
{
  v1 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearAfterTabSwitch;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t DocumentViewController.viewWillAppearAfterTabSwitch.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearAfterTabSwitch;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void sub_1E4006E9C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = [v0 BOOLForKey_];

  byte_1EE2AAD18 = v2;
}

char *sub_1E4006F2C()
{
  if (_MergedGlobals_265 != -1)
  {
    OUTLINED_FUNCTION_10_162();
  }

  return &byte_1EE2AAD18;
}

uint64_t DocumentViewController.reportImpressionsInViewWillDisappear.getter()
{
  v1 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_reportImpressionsInViewWillDisappear;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t DocumentViewController.reportImpressionsInViewWillDisappear.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_reportImpressionsInViewWillDisappear;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void *DocumentViewController.templateViewController.getter()
{
  v1 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DocumentViewController.templateViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1E40070C0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v170 = v7 - v6;
  v8 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v171 = v16 - v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v172 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v153 - v21;
  OUTLINED_FUNCTION_26_3();
  v24 = *((*MEMORY[0x1E69E7D40] & v23) + 0x1E0);
  v173 = v0;
  if (v24())
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_48_4();
    v25(v22);
    v26 = v173;
    v27 = sub_1E41FFC94();
    v28 = sub_1E4206814();

    v29 = v12;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = OUTLINED_FUNCTION_49_0();
      v31 = OUTLINED_FUNCTION_160();
      v178[0] = OUTLINED_FUNCTION_100();
      *v30 = 136315394;
      v32 = DocumentViewController.logPrefix.getter();
      sub_1E3270FC8(v32, v33, v178);
      v169 = v29;
      OUTLINED_FUNCTION_6_19();

      *(v30 + 4) = v29;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v26;
      *v31 = v173;
      v34 = v26;
      OUTLINED_FUNCTION_126_9();
      _os_log_impl(v35, v36, v37, v38, v39, 0x16u);
      sub_1E325F748(v31, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_65_0();

      (*(v14 + 8))(v22, v169);
    }

    else
    {

      (*(v14 + 8))(v22, v12);
    }

    goto LABEL_65;
  }

  v166 = v4;
  OUTLINED_FUNCTION_101_14();
  OUTLINED_FUNCTION_21();
  v41 = (*(v40 + 752))();
  if (!v41)
  {
    goto LABEL_65;
  }

  v42 = v41;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v43 = *(v42 + 56);

  if (!v43)
  {
    goto LABEL_65;
  }

  v158 = v2;
  v165 = v1;
  OUTLINED_FUNCTION_21();
  v45 = *(v44 + 1168);

  v47 = v45(v46);

  if (v47)
  {
    OUTLINED_FUNCTION_47_0();
    v49 = *(v48 + 208);

    v49(10, 0, 1);
  }

  sub_1E4206BA4();
  v50 = VUISignpostLogObject();
  v51 = v165;
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v52 = *(v10 + 8);
  v162 = v8;
  v161 = v10 + 8;
  v160 = v52;
  v52(v51, v8);
  OUTLINED_FUNCTION_26_3();
  v54 = (*((*MEMORY[0x1E69E7D40] & v53) + 0x470))(v43);
  v55 = v54;
  v56 = v12;
  if (!v54)
  {
    v57 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v55 = sub_1E3D9DBC0(v43);

    v54 = 0;
  }

  v159 = v54;
  if (v47)
  {
    OUTLINED_FUNCTION_47_0();
    v59 = *(v58 + 208);
    v61 = v60;

    v59(11, 0, 1);
  }

  else
  {
    v62 = v54;
  }

  v164 = v47;
  v169 = v12;
  v163 = v14;
  if (v55)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v55))
    {
      v64 = v63;
      if (v47)
      {
        v65 = &off_1F5D79C00;
      }

      else
      {
        v65 = 0;
      }

      ObjectType = swift_getObjectType();
      v67 = v43;
      v68 = *(v64 + 16);

      v69 = v55;
      v70 = ObjectType;
      v56 = v169;
      v68(v164, v65, v70, v64);
      v14 = v163;
      v43 = v67;
    }

    type metadata accessor for SearchTemplateController();
    if (swift_dynamicCastClass())
    {
      if (*&v173[OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager])
      {
        OUTLINED_FUNCTION_8();
        v72 = (*(v71 + 112))(v55);
        v56 = v169;
      }

      else
      {
        v74 = v55;
        v72 = 0;
        v73 = 0;
      }

      v178[0] = 1;
      v178[1] = v72;
      v178[2] = v73;
      memset(&v178[3], 0, 24);
      v179 = 0x1000000;
      OUTLINED_FUNCTION_12_5();
      (*(v75 + 760))(v178);
    }
  }

  OUTLINED_FUNCTION_21();
  v168 = *(v76 + 432);
  v167 = v76 + 432;
  v77 = v168();
  v78 = v172;
  if (v77)
  {
    v79 = v77;
    swift_getObjectType();
    v80 = dynamic_cast_existential_1_conditional(v79);

    if (v80)
    {
      OUTLINED_FUNCTION_38_49();
      v82 = v81();
      if (v82)
      {
        v83 = v82;
        swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v83))
        {
          v85 = v84;
          v86 = swift_getObjectType();
          (*(v85 + 16))(0, 0, v86, v85);
        }
      }
    }
  }

  if (v55)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v55))
    {
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v55))
      {
        v88 = v87;
        v89 = swift_getObjectType();
        v90 = v43;
        v91 = *(v88 + 16);
        v92 = v173;
        v93 = v173;
        v94 = v55;
        v91(v92, &off_1F5D91D48, v89, v88);
        v43 = v90;
        v14 = v163;

        v56 = v169;
      }
    }
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v156 = v95;
  v157 = v96;
  v155 = v97;
  v97(v78);
  v98 = v173;
  v99 = v14;
  v100 = v55;
  v101 = sub_1E41FFC94();
  v102 = sub_1E4206814();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = OUTLINED_FUNCTION_100();
    v153 = OUTLINED_FUNCTION_160();
    v154 = swift_slowAlloc();
    v177[0] = v154;
    *v103 = 136315650;
    v104 = DocumentViewController.logPrefix.getter();
    sub_1E3270FC8(v104, v105, v177);
    OUTLINED_FUNCTION_6_19();

    *(v103 + 4) = v56;
    *(v103 + 12) = 2080;
    if (v55)
    {
      v106 = sub_1E3280A90(0, &qword_1EE23B250);
      v107 = v100;
    }

    else
    {
      v107 = 0;
      v106 = 0;
      v174[1] = 0;
      v174[2] = 0;
    }

    v174[0] = v107;
    v175 = v106;
    v110 = v100;
    v111 = sub_1E3294FA4(v174);
    sub_1E3270FC8(v111, v112, v177);
    OUTLINED_FUNCTION_6_19();

    *(v103 + 14) = v56;
    *(v103 + 22) = 2112;
    *(v103 + 24) = v98;
    v113 = v153;
    *v153 = v173;
    v114 = v98;
    _os_log_impl(&dword_1E323F000, v101, v102, "%s Loading Template %s for %@", v103, 0x20u);
    sub_1E325F748(v113, &unk_1ECF28E30);
    OUTLINED_FUNCTION_46_1();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_65_0();

    v108 = *(v163 + 8);
    v109 = v78;
    v56 = v169;
  }

  else
  {

    v108 = *(v99 + 8);
    v109 = v78;
  }

  v172 = v108;
  v108(v109, v56);
  v115 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_27_29();
  (*(v116 + 1144))(v55);
  v117 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController;
  OUTLINED_FUNCTION_3_0();
  v118 = *&v98[v117];
  *&v98[v117] = v55;
  v119 = v100;

  v98[OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning] = 1;
  OUTLINED_FUNCTION_38_49();
  v121 = v120();
  if (v121)
  {
    v122 = v121;
    v154 = v119;
    v123 = v171;
    v155(v171, v156, v56);
    v124 = v98;
    v125 = v122;
    v126 = sub_1E41FFC94();
    v127 = sub_1E4206814();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = OUTLINED_FUNCTION_49_0();
      v156 = OUTLINED_FUNCTION_160();
      v157 = OUTLINED_FUNCTION_100();
      v174[0] = v157;
      *v128 = 136315394;
      v129 = DocumentViewController.logPrefix.getter();
      sub_1E3270FC8(v129, v130, v174);
      OUTLINED_FUNCTION_6_19();

      *(v128 + 4) = v56;
      *(v128 + 12) = 2112;
      *(v128 + 14) = v125;
      v131 = v156;
      *v156 = v122;
      v132 = v125;
      _os_log_impl(&dword_1E323F000, v126, v127, "%s Configure template [%@]", v128, 0x16u);
      sub_1E325F748(v131, &unk_1ECF28E30);
      OUTLINED_FUNCTION_46_1();
      __swift_destroy_boxed_opaque_existential_1(v157);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_51_2();

      v133 = v171;
      v134 = v169;
    }

    else
    {

      v133 = v123;
      v134 = v56;
    }

    v172(v133, v134);
    v135 = v170;
    sub_1E41FE5C4();
    sub_1E400CEDC();

    (*(v166 + 8))(v135, v158);
    v115 = MEMORY[0x1E69E7D40];
    v119 = v154;
  }

  OUTLINED_FUNCTION_38_49();
  v137 = v136();
  (*((*v115 & *v98) + 0x488))();

  sub_1E4206B94();
  v138 = VUISignpostLogObject();
  v139 = v165;
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v160(v139, v162);
  v140 = MEMORY[0x1E69DDA98];
  if (!*MEMORY[0x1E69DDA98])
  {
    __break(1u);
    goto LABEL_67;
  }

  if (![*MEMORY[0x1E69DDA98] shouldRecordExtendedLaunchTime])
  {
    goto LABEL_53;
  }

  if (!*v140)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v141 = *v140;
  sub_1E3827728(v141, &selRef__launchTestName);
  if (v142)
  {
    v143 = sub_1E4205ED4();
  }

  else
  {
    v143 = 0;
  }

  v144 = [v141 isRunningTest_];

  if ((v144 & 1) == 0)
  {
LABEL_53:
    if (_MergedGlobals_265 != -1)
    {
      OUTLINED_FUNCTION_10_162();
    }

    if (byte_1EE2AAD18 != 1)
    {
      goto LABEL_61;
    }
  }

  if (!*v140)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v145 = *v140;
  sub_1E3827728(v145, &selRef__launchTestName);
  if (v146)
  {
    v147 = sub_1E4205ED4();
  }

  else
  {
    v147 = 0;
  }

  [v145 finishedTest_];

LABEL_61:
  sub_1E4010284();
  v175 = &unk_1F5D5CF88;
  v176 = &off_1F5D5C718;
  LOBYTE(v174[0]) = 4;
  v148 = j__OUTLINED_FUNCTION_18();
  v149 = sub_1E39C29F0(v174, v148 & 1);
  __swift_destroy_boxed_opaque_existential_1(v174);
  if ((v149 & 1) == 0)
  {
LABEL_64:
    type metadata accessor for DocumentViewController();
    sub_1E40131E4(*(v43 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType));

LABEL_65:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v150 = [v98 vuiView];
  if (v150)
  {
    v151 = v150;
    v152 = [objc_opt_self() clearColor];
    [v151 setVuiBackgroundColor_];

    goto LABEL_64;
  }

LABEL_69:
  __break(1u);
}

uint64_t DocumentViewController.deferLoadingTemplateController.getter()
{
  v1 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

void DocumentViewController.deferLoadingTemplateController.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if ((*(v1 + v5) & 1) == 0 && v4)
  {
    OUTLINED_FUNCTION_21();
    v7 = (*(v6 + 432))();
    if (v7)
    {
    }

    else
    {
      sub_1E40070C0();
    }
  }
}

void (*DocumentViewController.deferLoadingTemplateController.modify())(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return sub_1E4008218;
}

void sub_1E4008218(uint64_t a1)
{
  v1 = *a1;
  DocumentViewController.deferLoadingTemplateController.setter(*(*a1 + 32));

  free(v1);
}

uint64_t DocumentViewController.alwaysShowTemplateWithAnimation.getter()
{
  v1 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_alwaysShowTemplateWithAnimation;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t DocumentViewController.alwaysShowTemplateWithAnimation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_alwaysShowTemplateWithAnimation;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DocumentViewController.isShowingLoadingView.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager))
  {
    return 0;
  }

  OUTLINED_FUNCTION_8();
  return (*(v1 + 216))() & 1;
}

uint64_t variable initialization expression of DocumentViewController.pendingDeeplinkURL()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void *DocumentViewController.bubbletipOverlayController.getter()
{
  v1 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DocumentViewController.bubbletipOverlayController.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController;
  v6 = a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v7 = *(v1 + v5);
  if (!v7)
  {
    v8 = [objc_opt_self() defaultCenter];
    [v8 removeObserver:v1 name:VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0] object:0];
    goto LABEL_5;
  }

  if (v7 != v4)
  {
    v8 = [objc_opt_self() defaultCenter];
    [v8 addObserver:v1 selector:sel_playbackUIChanged_ name:VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0] object:0];
LABEL_5:
  }
}

void (*DocumentViewController.bubbletipOverlayController.modify())(uint64_t a1, char a2)
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E4008598;
}

void sub_1E4008598(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    DocumentViewController.bubbletipOverlayController.setter(v3);
  }

  else
  {
    DocumentViewController.bubbletipOverlayController.setter(*(*a1 + 24));
  }

  free(v2);
}

uint64_t DocumentViewController.documentDelegate.getter()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t DocumentViewController.documentDelegate.setter()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  *(v1 + 8) = v0;
  OUTLINED_FUNCTION_57();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DocumentViewController.documentDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_11_3();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

uint64_t DocumentViewController.ignoreDidMoveToNilParent.getter()
{
  v1 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_ignoreDidMoveToNilParent;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t DocumentViewController.ignoreDidMoveToNilParent.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_ignoreDidMoveToNilParent;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DocumentViewController.rebaseIdentifier.getter()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return OUTLINED_FUNCTION_16_0();
}

uint64_t DocumentViewController.rebaseIdentifier.setter()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  *v1 = v2;
  v1[1] = v0;
}

void sub_1E40088D4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v116 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  v115 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v117 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v113 - v17;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v122 = v19;
  v123 = v20;
  v121 = v21;
  v21(v18);
  v22 = v0;
  v23 = sub_1E41FFC94();
  sub_1E4206814();

  v24 = OUTLINED_FUNCTION_148_9();
  v125 = v4;
  v118 = v8;
  if (v24)
  {
    OUTLINED_FUNCTION_6_21();
    v126 = OUTLINED_FUNCTION_16_15();
    *v8 = 136315138;
    v25 = DocumentViewController.logPrefix.getter();
    OUTLINED_FUNCTION_58_0(v25, v26);
    OUTLINED_FUNCTION_94_1();

    *(v8 + 4) = v4;
    v4 = v125;
    OUTLINED_FUNCTION_54_50();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_51_2();
  }

  v120 = *(v4 + 8);
  v120(v18, v2);
  v119 = v22;
  v32 = sub_1E40166A8([v22 vuiNavigationItem], &selRef_rightBarButtonItems);
  v124 = v2;
  if (!v32)
  {
    v37 = 0;
LABEL_20:
    if (![objc_opt_self() isPad])
    {
      goto LABEL_45;
    }

    v39 = [objc_opt_self() sharedInstance];
    v40 = [v39 accountConfig];

    v8 = [v40 showAccountSettingOnSidebar];
    OUTLINED_FUNCTION_26_3();
    if (((*((*MEMORY[0x1E69E7D40] & v41) + 0x290))() & 1) != 0 || !v8)
    {
      v42 = v119;
      v114 = [v119 vuiIsNavigationRoot] ^ 1;
    }

    else
    {
      v114 = 1;
      v42 = v119;
    }

    OUTLINED_FUNCTION_31_86();
    v43();
    v44 = v42;
    v45 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_148_9())
    {
      OUTLINED_FUNCTION_42_9();
      v46 = OUTLINED_FUNCTION_16_15();
      v126 = v46;
      *v8 = 136315394;
      v47 = DocumentViewController.logPrefix.getter();
      OUTLINED_FUNCTION_58_0(v47, v48);
      OUTLINED_FUNCTION_12_1();

      *(v8 + 4) = v2;
      v2 = v124;
      *(v8 + 6) = 1024;
      *(v8 + 14) = v114;
      OUTLINED_FUNCTION_54_50();
      _os_log_impl(v49, v50, v51, v52, v53, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    v120(v1, v2);
    if ((sub_1E39DFFC8() & 1) != 0 && v37)
    {
      OUTLINED_FUNCTION_31_86();
      v54();
      v55 = v44;
      v56 = v37;
      v57 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_148_9())
      {
        OUTLINED_FUNCTION_42_9();
        v58 = OUTLINED_FUNCTION_16_15();
        OUTLINED_FUNCTION_133_11(v58);
        *v8 = 136315394;
        v59 = v55;
        v60 = DocumentViewController.logPrefix.getter();
        OUTLINED_FUNCTION_58_0(v60, v61);
        OUTLINED_FUNCTION_34_3();
        OUTLINED_FUNCTION_103_14();
        OUTLINED_FUNCTION_54_50();
        _os_log_impl(v62, v63, v64, v65, v66, 0x12u);
        OUTLINED_FUNCTION_154_6();
        v2 = v124;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_51_2();

        v67 = OUTLINED_FUNCTION_33_83();
        v68(v67);
      }

      else
      {

        v87 = OUTLINED_FUNCTION_33_83();
        v88(v87);
        v59 = v114;
      }

      [v56 setHidden_];

      goto LABEL_45;
    }

    v69 = [v44 vuiNavigationItem];
    v70 = [v69 _largeTitleAccessoryView];

    v2 = v124;
    if (v70)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_22_53();
      v71 = swift_dynamicCastObjCClass();
      if (v71)
      {
        v72 = v71;
        OUTLINED_FUNCTION_31_86();
        v73();
        v74 = v44;
        v75 = sub_1E41FFC94();
        sub_1E4206814();

        if (OUTLINED_FUNCTION_148_9())
        {
          OUTLINED_FUNCTION_42_9();
          v76 = OUTLINED_FUNCTION_16_15();
          OUTLINED_FUNCTION_133_11(v76);
          *v8 = 136315394;
          v77 = v74;
          v78 = DocumentViewController.logPrefix.getter();
          OUTLINED_FUNCTION_58_0(v78, v79);
          OUTLINED_FUNCTION_34_3();
          OUTLINED_FUNCTION_103_14();
          OUTLINED_FUNCTION_54_50();
          _os_log_impl(v80, v81, v82, v83, v84, 0x12u);
          OUTLINED_FUNCTION_154_6();
          v2 = v124;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_51_2();

          v85 = OUTLINED_FUNCTION_33_83();
          v86(v85);
        }

        else
        {

          v101 = OUTLINED_FUNCTION_33_83();
          v102(v101);
          v77 = v114;
        }

        if (sub_1E39DFFC8())
        {

          goto LABEL_50;
        }

        [v72 hideAndDisable_];

LABEL_45:
        if (sub_1E39DFFC8())
        {
          if (!v37)
          {
LABEL_51:
            OUTLINED_FUNCTION_25_2();
            return;
          }

          v103 = v118;
          OUTLINED_FUNCTION_31_86();
          v104();
          v105 = v119;
          v106 = sub_1E41FFC94();
          v107 = sub_1E4206814();

          if (os_log_type_enabled(v106, v107))
          {
            OUTLINED_FUNCTION_6_21();
            v108 = OUTLINED_FUNCTION_16_15();
            OUTLINED_FUNCTION_133_11(v108);
            *v8 = 136315138;
            v109 = DocumentViewController.logPrefix.getter();
            OUTLINED_FUNCTION_58_0(v109, v110);
            OUTLINED_FUNCTION_6_19();

            *(v8 + 4) = v105;
            OUTLINED_FUNCTION_139_11(&dword_1E323F000, v111, v112, "%s handleAccountSettingsButton: update accountSettingItem prefersNoPlatter=true");
            OUTLINED_FUNCTION_154_6();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_51_2();
          }

          v120(v103, v2);
          [v37 _setPrefersNoPlatter_];
        }

LABEL_50:

        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_31_86();
    v89();
    v90 = v44;
    v91 = sub_1E41FFC94();
    v92 = sub_1E4206814();

    if (os_log_type_enabled(v91, v92))
    {
      OUTLINED_FUNCTION_6_21();
      v93 = OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_133_11(v93);
      *v8 = 136315138;
      v94 = DocumentViewController.logPrefix.getter();
      v96 = OUTLINED_FUNCTION_58_0(v94, v95);

      *(v8 + 4) = v96;
      OUTLINED_FUNCTION_139_11(&dword_1E323F000, v97, v98, "%s handleAccountSettingsButton: no account setting item found, ignore");
      OUTLINED_FUNCTION_154_6();
      v2 = v124;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    v99 = OUTLINED_FUNCTION_33_83();
    v100(v99);
    goto LABEL_45;
  }

  v33 = v32;
  v34 = sub_1E32AE9B0(v32);
  for (i = 0; ; ++i)
  {
    if (v34 == i)
    {

      v37 = 0;
      goto LABEL_19;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1E6911E60](i, v33);
    }

    else
    {
      if (i >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v36 = *(v33 + 8 * i + 32);
    }

    v37 = v36;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v38 = [v36 customView];
    if (v38)
    {
      v8 = v38;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_14;
      }

LABEL_19:
      v2 = v124;
      goto LABEL_20;
    }

    v8 = v37;
LABEL_14:
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t DocumentViewController.isInTabBarMode.getter()
{
  v1 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_isInTabBarMode;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

void DocumentViewController.isInTabBarMode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_isInTabBarMode;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  sub_1E40088D4();
}

uint64_t DocumentViewController.isInTabBarMode.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E40092A0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 432))();
  if (!v4)
  {
    return;
  }

  v19 = v4;
  type metadata accessor for StackTemplateController();
  v5 = swift_dynamicCastClass();
  if (!v5 || (v6 = v5, OUTLINED_FUNCTION_8_9(), v8 = (*(v7 + 680))(), v8 == 2))
  {

    return;
  }

  v9 = v8;
  OUTLINED_FUNCTION_8_9();
  v11 = *(v10 + 560);
  v12 = v19;
  v13 = v11();

  if (!v13)
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_13;
  }

  v20 = 24;
  OUTLINED_FUNCTION_8();
  (*(v14 + 776))(&v21, &v20, &unk_1F5D5DAC8, &off_1F5D5C998);

  if (!*(&v22 + 1))
  {
LABEL_13:
    sub_1E325F748(&v21, &unk_1ECF296E0);
    goto LABEL_14;
  }

  if (OUTLINED_FUNCTION_21_4() && (v20 & 1) != 0)
  {
    v15 = v9;
    goto LABEL_15;
  }

LABEL_14:
  v15 = 0;
LABEL_15:
  (*((*v2 & *v6) + 0x5E0))(v15 & 1);
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v16 = [v1 vuiNavigationItem];
    v17 = [v16 titleView];

    if (v17)
    {
      type metadata accessor for UberNavigationBarTitleView();
      OUTLINED_FUNCTION_22_53();
      if (!swift_dynamicCastClass())
      {

        return;
      }

      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_8_9();
      (*(v18 + 352))(v9 & 1);
    }
  }
}

uint64_t DocumentViewController.isTabBarChild.getter()
{
  v1 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTabBarChild;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

void DocumentViewController.isTabBarChild.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTabBarChild;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  sub_1E40092A0();
}

uint64_t DocumentViewController.isTabBarChild.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E4009664(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id DocumentViewController.loadingViewBackgroundColor.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager))
  {
    return 0;
  }

  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 224))();
  v3 = [v2 vuiBackgroundColor];

  return v3;
}

void DocumentViewController.loadingViewBackgroundColor.setter(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager))
  {
    OUTLINED_FUNCTION_8();
    v5 = v3;
    v4 = (*(v2 + 224))();
    [v4 setVuiBackgroundColor_];

    a1 = v5;
  }
}

void (*DocumentViewController.loadingViewBackgroundColor.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = DocumentViewController.loadingViewBackgroundColor.getter();
  return sub_1E40097EC;
}

void sub_1E40097EC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    DocumentViewController.loadingViewBackgroundColor.setter(v2);
  }

  else
  {
    DocumentViewController.loadingViewBackgroundColor.setter(*a1);
  }
}

uint64_t DocumentViewController.documentDidSetHandler.getter()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_16_0();
  sub_1E37FAED4(v0, v1);
  return OUTLINED_FUNCTION_16_0();
}

uint64_t DocumentViewController.documentDidSetHandler.setter()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  v3 = *v1;
  v4 = v1[1];
  *v1 = v2;
  v1[1] = v0;
  return sub_1E37FAED8(v3, v4);
}

uint64_t sub_1E4009940@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F0))();
  *a2 = result;
  return result;
}

uint64_t DocumentViewController.document.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_document;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;

  v4 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_document;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    OUTLINED_FUNCTION_101_14();
    OUTLINED_FUNCTION_21();
    v7 = *(v6 + 584);

    v7(v8);
    v10 = v9;
    OUTLINED_FUNCTION_3_0();
    *(v5 + 40) = v10;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_8_9();
  v12 = (*(v11 + 728))();
  if (v12)
  {
    v14 = v12;
    v15 = v13;
    v12();
    sub_1E37FAED8(v14, v15);
  }
}

void DocumentViewController.activityItemsConfiguration.getter()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v96 = v5;
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v95 = v6 - v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v86 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v86 - v13);
  v15 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - v24;
  OUTLINED_FUNCTION_26_3();
  v27 = (*((*MEMORY[0x1E69E7D40] & v26) + 0x2F0))();
  if (v27)
  {
    v93 = v21;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v28 = *(v27 + 56);

    if (v28)
    {
      v92 = v17;
      LOBYTE(v98) = 1;
      v29 = *v28 + 776;
      v30 = OUTLINED_FUNCTION_51_49();
      v94 = v31;
      v31(v30);
      if (v101)
      {
        OUTLINED_FUNCTION_123_10();
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_9:
          v34 = 0;
          goto LABEL_10;
        }

        sub_1E41FE404();

        if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
        {
          v90 = v29;
          v42 = v92;
          (*(v92 + 32))(v25, v14, v15);
          v43 = sub_1E324FBDC();
          (*(v96 + 16))(v10, v43, v97);
          (*(v42 + 16))(v1, v25, v15);
          v44 = v3;
          v45 = sub_1E41FFC94();
          v46 = sub_1E4206814();
          v91 = v44;

          LODWORD(v89) = v46;
          if (os_log_type_enabled(v45, v46))
          {
            v47 = OUTLINED_FUNCTION_49_0();
            v88 = swift_slowAlloc();
            v100[0] = v88;
            *v47 = 136315394;
            v87 = v45;
            v48 = DocumentViewController.logPrefix.getter();
            sub_1E3270FC8(v48, v49, v100);
            OUTLINED_FUNCTION_6_19();

            v86 = v47;
            *(v47 + 4) = v46;
            *(v47 + 12) = 2080;
            sub_1E40172E0(&qword_1EE28A470, MEMORY[0x1E6968FB0]);
            v50 = sub_1E4207944();
            v52 = v51;
            v53 = OUTLINED_FUNCTION_74();
            v91 = v54;
            (v54)(v53);
            sub_1E3270FC8(v50, v52, v100);
            OUTLINED_FUNCTION_16_5();

            v55 = v86;
            *(v86 + 14) = v50;
            v56 = v87;
            _os_log_impl(&dword_1E323F000, v87, v89, "%s Adding sharing URL to activity items config %s", v55, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_7_9();
            OUTLINED_FUNCTION_65_0();
          }

          else
          {

            v60 = OUTLINED_FUNCTION_74();
            v91 = v61;
            (v61)(v60);
          }

          (*(v96 + 8))(v10, v97);
          v62 = sub_1E41FE364();
          v34 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

          v91(v25, v15);
LABEL_10:
          v35 = v94;
          LOBYTE(v98) = 0;
          v36 = OUTLINED_FUNCTION_51_49();
          v35(v36);
          if (v101)
          {
            OUTLINED_FUNCTION_123_10();
            if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
            {
              goto LABEL_21;
            }

            v38 = v98;
            v37 = v99;
            LOBYTE(v98) = 1;
            v39 = OUTLINED_FUNCTION_51_49();
            v35(v39);
            if (v101)
            {
              OUTLINED_FUNCTION_123_10();
              if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
              {
                goto LABEL_24;
              }

              sub_1E41FE404();

              if (__swift_getEnumTagSinglePayload(v2, 1, v15) == 1)
              {

                v40 = &unk_1ECF363C0;
                v41 = v2;
LABEL_20:
                sub_1E325F748(v41, v40);
LABEL_21:
                if (v34)
                {
LABEL_22:
                  v57 = v34;
LABEL_23:
                  v58 = v57;
                  sub_1E3280A90(0, &qword_1ECF3E3A8);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
                  OUTLINED_FUNCTION_5_10();
                  v59 = swift_allocObject();
                  *(v59 + 16) = xmmword_1E4298880;
                  *(v59 + 32) = v58;
                  sub_1E400A6A8();

                  goto LABEL_26;
                }

LABEL_25:

                goto LABEL_26;
              }

              v91 = v38;
              v94 = v37;
              v63 = v35;
              v64 = v92;
              v65 = v93;
              (*(v92 + 32))(v93, v2, v15);
              LOBYTE(v98) = 2;
              v66 = OUTLINED_FUNCTION_51_49();
              v63(v66);
              if (v101)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
                OUTLINED_FUNCTION_123_10();
                v67 = OUTLINED_FUNCTION_21_4();
                v68 = v94;
                if (v67)
                {
                  v90 = v98;
                  v69 = sub_1E324FBDC();
                  v70 = v95;
                  v71 = v96;
                  (*(v96 + 16))(v95, v69, v97);
                  v72 = v3;

                  v73 = sub_1E41FFC94();
                  sub_1E4206814();

                  if (OUTLINED_FUNCTION_75_3())
                  {
                    v74 = OUTLINED_FUNCTION_49_0();
                    v89 = swift_slowAlloc();
                    v100[0] = v89;
                    *v74 = 136315394;
                    v75 = DocumentViewController.logPrefix.getter();
                    sub_1E3270FC8(v75, v76, v100);
                    OUTLINED_FUNCTION_112();

                    *(v74 + 4) = v72;
                    *(v74 + 12) = 2080;
                    *(v74 + 14) = sub_1E3270FC8(v91, v68, v100);
                    OUTLINED_FUNCTION_50_52();
                    _os_log_impl(v77, v78, v79, v80, v81, 0x16u);
                    swift_arrayDestroy();
                    OUTLINED_FUNCTION_7_9();
                    OUTLINED_FUNCTION_7_7();

                    (*(v96 + 8))(v70, v97);
                  }

                  else
                  {

                    (*(v71 + 8))(v70, v97);
                  }

                  sub_1E3280A90(0, &unk_1ECF3E3B0);
                  sub_1E3744600(v90);

                  v82 = sub_1E400A620();
                  v83 = *sub_1E32A9398();
                  v84 = v93;
                  sub_1E3C174E4();
                  v57 = v85;

                  (*(v92 + 8))(v84, v15);
                  goto LABEL_23;
                }

                (*(v92 + 8))(v93, v15);
LABEL_24:

                if (v34)
                {
                  goto LABEL_22;
                }

                goto LABEL_25;
              }

              (*(v64 + 8))(v65, v15);
            }
          }

          v40 = &unk_1ECF296E0;
          v41 = v100;
          goto LABEL_20;
        }

        v32 = &unk_1ECF363C0;
        v33 = v14;
      }

      else
      {
        v32 = &unk_1ECF296E0;
        v33 = v100;
      }

      sub_1E325F748(v33, v32);
      goto LABEL_9;
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_25_2();
}

uint64_t DocumentViewController.activityItemsConfiguration.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DocumentViewController();
  objc_msgSendSuper2(&v4, sel_setActivityItemsConfiguration_, a1);
  return swift_unknownObjectRelease();
}

id sub_1E400A620()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205C44();

  v2 = [v0 initWithContextData_];

  return v2;
}

id sub_1E400A6A8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1E3280A90(0, &qword_1ECF3E548);
  v1 = sub_1E42062A4();

  v2 = [v0 initWithItemProviders_];

  return v2;
}

unint64_t DocumentViewController.logPrefix.getter()
{
  v1 = v0;
  v2 = 0x6E776F6E6B6E55;
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 752))();
  if (v4 && (v5 = v4, OUTLINED_FUNCTION_25(), swift_beginAccess(), v6 = *(v5 + 56), , , v6))
  {
    OUTLINED_FUNCTION_8();
    v2 = (*(v7 + 368))();
    v9 = v8;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  sub_1E42074B4();

  v10 = sub_1E41E1364(v1);
  MEMORY[0x1E69109E0](v10);

  MEMORY[0x1E69109E0](0x616C706D6554205DLL, 0xEC0000005B3A6574);
  MEMORY[0x1E69109E0](v2, v9);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return 0xD000000000000019;
}

id DocumentViewController.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_12_1()) initWithCoder_];

  return v1;
}

void DocumentViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearAfterTabSwitch) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_reportImpressionsInViewWillDisappear) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_hasViewAppeared) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_alwaysShowTemplateWithAnimation) = 0;
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_ignoreDidMoveToNilParent) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_rebaseIdentifier);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isInTabBarMode) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTabBarChild) = 2;
  v6 = (v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDidSetHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_document) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning) = 0;
  v7 = v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarPrefersLargeTitles) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitleView) = 0;
  v8 = (v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitle);
  *v8 = 0;
  v8[1] = 0;
  v9 = v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarCachedWidth;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_needsConfigurationWhenMovesToParent) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearButNotDidAppear) = 0;
  sub_1E42076B4();
  __break(1u);
}

Swift::Void __swiftcall DocumentViewController.vuiViewDidLoad()()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for DocumentViewController();
  objc_msgSendSuper2(&v24, sel_vui_viewDidLoad);
  v1 = [v0 vuiView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  [v1 setVuiBackgroundColor_];

  v3 = [v0 vuiView];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 setVuiClipsToBounds_];

  v5 = [v0 vuiNavigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setDelegate_];
  }

  v7 = [v0 vuiNavigationController];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 navigationBar];

    [v9 setPrefersLargeTitles_];
  }

  OUTLINED_FUNCTION_21();
  if ((*(v10 + 752))())
  {

    sub_1E40070C0();
  }

  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  OUTLINED_FUNCTION_88_18(v12, v13, v14, sel_didEnterBackground_, *MEMORY[0x1E69DF7E0]);

  v15 = [v11 defaultCenter];
  OUTLINED_FUNCTION_88_18(v15, v16, v17, sel_willTerminate_, *MEMORY[0x1E69DF7F8]);

  v18 = [v11 defaultCenter];
  OUTLINED_FUNCTION_88_18(v18, v19, v20, sel_willEnterForeground_, *MEMORY[0x1E69DF7E8]);

  if ([objc_opt_self() isPad])
  {
    v21 = [v11 defaultCenter];
    OUTLINED_FUNCTION_88_18(v21, v22, v23, sel_handleFullscreenPlaybackUIDidChange_, VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0]);
  }
}

uint64_t sub_1E400ADC0()
{
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_pendingDeeplinkURL, &unk_1ECF363C0);

  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDelegate);

  sub_1E37FAED8(*(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDidSetHandler), *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDidSetHandler + 8));
}

id DocumentViewController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DocumentViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall DocumentViewController.vuiViewWillAppear(_:)(Swift::Bool a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for DocumentViewController();
  v3 = objc_msgSendSuper2(&v17, sel_vui_viewWillAppear_, a1);
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearButNotDidAppear) = 1;
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0))(v3);
  if (v4)
  {

    sub_1E400B304(0.0);
    if (sub_1E40D8D8C())
    {
      sub_1E400B680();
    }
  }

  else if ((sub_1E39E01A4() & 1) == 0)
  {
    v5 = [v1 vuiNavigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationBar];

      if (v7)
      {
        v8 = [v1 transitionCoordinator];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 viewControllerForKey_];
          OUTLINED_FUNCTION_4_0();
          v11 = swift_allocObject();
          *(v11 + 16) = v7;
          v22 = sub_1E40171B8;
          v23 = v11;
          aBlock = MEMORY[0x1E69E9820];
          v19 = 1107296256;
          v20 = sub_1E37C7850;
          v21 = &block_descriptor_121;
          v12 = _Block_copy(&aBlock);
          v13 = v7;

          OUTLINED_FUNCTION_2_4();
          v14 = swift_allocObject();
          *(v14 + 16) = v10;
          *(v14 + 24) = v9;
          v22 = sub_1E4017238;
          v23 = v14;
          aBlock = MEMORY[0x1E69E9820];
          v19 = 1107296256;
          v20 = sub_1E37C7850;
          v21 = &block_descriptor_127_1;
          v15 = _Block_copy(&aBlock);
          v16 = v10;
          OUTLINED_FUNCTION_50();
          swift_unknownObjectRetain();

          [v9 animateAlongsideTransition:v12 completion:v15];

          _Block_release(v15);
          _Block_release(v12);

          swift_unknownObjectRelease();
        }

        else
        {
          [v7 setTintColor_];
        }
      }
    }
  }
}

void sub_1E400B304(double a1)
{
  v3 = [v1 vuiNavigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    if (v5)
    {
      v6 = [v1 transitionCoordinator];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 viewControllerForKey_];
        OUTLINED_FUNCTION_2_4();
        v9 = swift_allocObject();
        *(v9 + 16) = v1;
        *(v9 + 24) = v5;
        v31 = sub_1E4017118;
        v32 = v9;
        v27 = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1E37C7850;
        v30 = &block_descriptor_109_3;
        v10 = _Block_copy(&v27);
        v11 = v1;
        v12 = v5;

        OUTLINED_FUNCTION_2_4();
        v13 = swift_allocObject();
        *(v13 + 16) = v8;
        *(v13 + 24) = v7;
        v31 = sub_1E4017390;
        v32 = v13;
        v27 = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1E37C7850;
        v30 = &block_descriptor_115_2;
        v14 = _Block_copy(&v27);
        v15 = v8;
        swift_unknownObjectRetain();

        [v7 animateAlongsideTransition:v10 completion:v14];

        _Block_release(v14);
        _Block_release(v10);
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = objc_opt_self();
        OUTLINED_FUNCTION_2_4();
        v17 = swift_allocObject();
        *(v17 + 16) = v1;
        *(v17 + 24) = v5;
        v31 = sub_1E4017118;
        v32 = v17;
        v27 = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        OUTLINED_FUNCTION_14_1();
        v29 = v18;
        v30 = &block_descriptor_103_1;
        v19 = _Block_copy(&v27);
        v20 = v1;
        v21 = v5;

        [v16 animateWithDuration:v19 animations:{a1, v27, v28}];

        _Block_release(v19);
      }
    }
  }

  v22 = v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarPrefersLargeTitles];
  if (v22 != 2)
  {
    v23 = OUTLINED_FUNCTION_151_8();
    [v23 _setSupportsTwoLineLargeTitles_];

    v24 = OUTLINED_FUNCTION_151_8();
    if (v22)
    {
      OUTLINED_FUNCTION_21();
      v26 = (*(v25 + 1192))();
    }

    else
    {
      v26 = 2;
    }

    [v24 setLargeTitleDisplayMode_];
  }
}

void sub_1E400B680()
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitleView);
    if (v1)
    {
      v2 = v1;
      v3 = OUTLINED_FUNCTION_151_8();
      [v3 setTitleView_];
    }

    if (*(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitle + 8))
    {

      v8 = OUTLINED_FUNCTION_151_8();
      v4 = OUTLINED_FUNCTION_13_8();
      sub_1E37FB7F0(v4, v5, v6, v7);
    }
  }
}

void DocumentViewController.willEnterForeground(_:)()
{
  OUTLINED_FUNCTION_12_161();
  v1 = (*(v0 + 432))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 vuiView];

    if (v3)
    {
      v4 = [v3 window];

      if (v4)
      {

        OUTLINED_FUNCTION_12_161();
        v6 = *(v5 + 1032);

        v6(1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void DocumentViewController.willTerminate(_:)()
{
  OUTLINED_FUNCTION_21();
  (*(v0 + 1048))();
  if (DocumentViewController.shouldRecordExit()())
  {
    v1 = [objc_opt_self() sharedInstance];
    [v1 recordAppWillTerminate];
  }
}

void DocumentViewController.didEnterBackground(_:)()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_161();
  (*(v1 + 1032))(0);
  OUTLINED_FUNCTION_26_3();
  v3 = (*((*v0 & v2) + 0x1B0))();
  if (!v3 || (v4 = v3, v5 = [v3 vuiView], v4, !v5) || (v6 = objc_msgSend(v5, sel_isHidden), v5, (v6 & 1) == 0))
  {
    OUTLINED_FUNCTION_12_161();
    (*(v7 + 1048))();
    if (DocumentViewController.shouldRecordExit()())
    {
      v8 = [objc_opt_self() sharedInstance];
      [v8 recordAppWillBackground];
    }
  }
}

uint64_t sub_1E400BB08()
{
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FDEE4();
  v3 = v1;
  v0();

  v4 = OUTLINED_FUNCTION_53();
  return v5(v4);
}

uint64_t DocumentViewController.shouldRecordExit()()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (!v3)
    {
      return 0;
    }

    v4 = [v0 presentingViewController];
    if (v4)
    {

      return 0;
    }

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DocumentViewController.setImpressionVisibility(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (!v2 || (v11[0] = v2, sub_1E3280A90(0, &qword_1EE23B250), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C260), (swift_dynamicCast() & 1) == 0))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_7;
  }

  if (!*(&v9 + 1))
  {
LABEL_7:
    sub_1E325F748(&v8, &qword_1ECF3C268);
    return;
  }

  sub_1E3251BE8(&v8, v11);
  v3 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v4 = OUTLINED_FUNCTION_38();
  v5(v4, v3);
  if (*(&v9 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    v6 = OUTLINED_FUNCTION_38();
    v7(v6);
    sub_1E42048D4();

    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    sub_1E325F748(&v8, &unk_1ECF296D0);
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
}

Swift::Void __swiftcall DocumentViewController.vuiViewDidAppear(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_31_1();
  v4 = v1;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v33.receiver = v4;
  v33.super_class = type metadata accessor for DocumentViewController();
  v11 = objc_msgSendSuper2(&v33, sel_vui_viewDidAppear_, v6 & 1);
  *(v4 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_hasViewAppeared) = 1;
  *(v4 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearButNotDidAppear) = 0;
  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1B0))(v11);
  if (v13)
  {

    if (sub_1E40D8DF8())
    {
      sub_1E400B680();
    }

    v14 = [v4 vuiNavigationController];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 navigationBar];

      [v16 sizeToFit];
    }

    sub_1E40D90A0();
  }

  else
  {
    v17 = sub_1E324FBDC();
    (*(v9 + 16))(v2, v17, v7);
    v18 = v4;
    v19 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_6_21();
      v32 = OUTLINED_FUNCTION_26_8();
      *v12 = 136315138;
      v20 = DocumentViewController.logPrefix.getter();
      OUTLINED_FUNCTION_49_1(v20, v21);
      OUTLINED_FUNCTION_94_1();

      *(v12 + 4) = v3;
      OUTLINED_FUNCTION_50_52();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_46_1();
      v12 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_6_0();
    }

    v27 = OUTLINED_FUNCTION_74();
    v28(v27);
    OUTLINED_FUNCTION_12_5();
    (*(v29 + 1080))(1, 1.0);
  }

  OUTLINED_FUNCTION_12_5();
  (*(v30 + 1040))();
  OUTLINED_FUNCTION_36_3();
  (*((*v12 & v31) + 0x408))(1);
  sub_1E400C120();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E400C120()
{
  v1 = [v0 vuiView];
  OUTLINED_FUNCTION_26_3();
  v3 = (*((*MEMORY[0x1E69E7D40] & v2) + 0x2F0))();
  if (v3)
  {
    OUTLINED_FUNCTION_35_10(v3);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v4 = v0[7];
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for Accessibility();
  v5 = OUTLINED_FUNCTION_50();
  sub_1E40A91FC(v5, 5, v4);
}

Swift::Void __swiftcall DocumentViewController.vuiViewWillDisappear(_:)(Swift::Bool a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for DocumentViewController();
  objc_msgSendSuper2(&v17, sel_vui_viewWillDisappear_, a1);
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v4) + 0x450))();
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v5 = [v1 transitionCoordinator];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 viewControllerForKey_];
      OUTLINED_FUNCTION_5_10();
      v8 = swift_allocObject();
      v8[2] = v7;
      v8[3] = sub_1E401517C;
      v8[4] = 0;
      aBlock[4] = sub_1E401707C;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_41_66();
      aBlock[2] = v9;
      aBlock[3] = &block_descriptor_97_0;
      v10 = _Block_copy(aBlock);
      v11 = v7;

      [v6 animateAlongsideTransition:v10 completion:0];
      _Block_release(v10);

      swift_unknownObjectRelease();
    }

    else if ((*(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearButNotDidAppear) & 1) == 0)
    {
      sub_1E401517C(v1);
    }
  }

  sub_1E40D915C();
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearButNotDidAppear) = 0;
  v12 = (*((*v3 & *v1) + 0x230))();
  if (v12)
  {
    v13 = v12;
    [v12 dismissViewControllerAnimated:1 completion:0];
    OUTLINED_FUNCTION_26_3();
    (*((*v3 & v14) + 0x238))(0);
  }

  OUTLINED_FUNCTION_101_14();
  OUTLINED_FUNCTION_21();
  if ((*(v15 + 408))())
  {
    OUTLINED_FUNCTION_101_14();
    OUTLINED_FUNCTION_21();
    (*(v16 + 1048))();
  }
}

Swift::Void __swiftcall DocumentViewController.vuiViewDidDisappear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DocumentViewController();
  objc_msgSendSuper2(&v4, sel_vui_viewDidDisappear_, a1);
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v3) + 0x408))(0);
}

Swift::Void __swiftcall DocumentViewController.vuiViewDidLayoutSubviews()()
{
  v1 = v0;
  v52.receiver = v0;
  v52.super_class = type metadata accessor for DocumentViewController();
  objc_msgSendSuper2(&v52, sel_vui_viewDidLayoutSubviews);
  OUTLINED_FUNCTION_26_3();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + 0x1B0);
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 vuiParentViewController];

    if (v6)
    {
      sub_1E3280A90(0, &qword_1EE23AD70);
      OUTLINED_FUNCTION_13_8();
      if (sub_1E4206F64())
      {
        v7 = OUTLINED_FUNCTION_67_4();
        if (!v7)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v8 = v7;
        [v7 bounds];
        v10 = v9;
        v12 = v11;

        v13 = v3();
        if (v13)
        {
          v14 = v13;
          v15 = [v13 vuiView];

          if (!v15)
          {
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          [v15 setVuiCenter_];
        }

        v16 = v3();
        if (v16)
        {
          v17 = v16;
          v18 = [v16 vuiView];

          if (!v18)
          {
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          [v18 setBounds_];
        }
      }
    }
  }

  v19 = &v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarCachedWidth];
  if ((v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarCachedWidth + 8] & 1) == 0)
  {
    v20 = OUTLINED_FUNCTION_67_4();
    if (!v20)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v21 = v20;
    [v20 bounds];
    OUTLINED_FUNCTION_3();

    v54.origin.x = OUTLINED_FUNCTION_6();
    if (CGRectGetWidth(v54) != 0.0)
    {
      v22 = *v19;
      v23 = *(v19 + 8);
      v24 = OUTLINED_FUNCTION_67_4();
      if (!v24)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v25 = v24;
      [v24 bounds];
      OUTLINED_FUNCTION_3();

      v55.origin.x = OUTLINED_FUNCTION_6();
      if (v22 == CGRectGetWidth(v55))
      {
        v26 = v23;
      }

      else
      {
        v26 = 1;
      }

      if (v26 == 1)
      {
        OUTLINED_FUNCTION_12_5();
        v28 = (*(v27 + 752))();
        if (v28)
        {
          v29 = v28;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v30 = *(v29 + 64);

          if (v30)
          {
            OUTLINED_FUNCTION_47_0();
            v31 += 49;
            v32 = *v31;
            if ((*v31)())
            {
              OUTLINED_FUNCTION_144_0();
              type metadata accessor for NavigationBarLayout();
              OUTLINED_FUNCTION_22_53();
              v33 = swift_dynamicCastClass();
              if (v33)
              {
                v34 = v33;
                v35 = OUTLINED_FUNCTION_67_4();
                if (!v35)
                {
LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

                v36 = v35;
                [v35 bounds];
                OUTLINED_FUNCTION_3();

                v56.origin.x = OUTLINED_FUNCTION_6();
                *v19 = CGRectGetWidth(v56);
                *(v19 + 8) = 0;
                v37 = OUTLINED_FUNCTION_67_4();
                if (!v37)
                {
LABEL_43:
                  __break(1u);
                  return;
                }

                v38 = v37;
                [v37 bounds];
                OUTLINED_FUNCTION_3();

                v57.origin.x = OUTLINED_FUNCTION_6();
                Width = CGRectGetWidth(v57);
                v40 = [v1 vuiTraitCollection];
                (*(*v34 + 1832))(Width);

                v41 = [v1 vuiNavigationController];
                if (v41)
                {
                  v42 = v41;
                  v43 = [v41 navigationBar];

                  if (v32())
                  {
                    OUTLINED_FUNCTION_26_0();
                    (*(v44 + 152))(&v53);
                  }

                  v45 = OUTLINED_FUNCTION_6();
                  [v46 v47];
                }
              }
            }
          }
        }
      }
    }
  }

  if (!*&v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager])
  {
    return;
  }

  v48 = OUTLINED_FUNCTION_67_4();
  if (!v48)
  {
    __break(1u);
    goto LABEL_37;
  }

  v49 = v48;
  [v48 safeAreaInsets];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_8();
  v50 = OUTLINED_FUNCTION_6();
  v51(v50);
}

Swift::Void __swiftcall DocumentViewController.vuiDidMove(toParent:)(UIViewController_optional *toParent)
{
  OUTLINED_FUNCTION_144_0();
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v22.receiver = v1;
  v22.super_class = type metadata accessor for DocumentViewController();
  v4 = [(UIViewController_optional *)&v22 vui_didMoveToParentViewController:?];
  v5 = MEMORY[0x1E69E7D40];
  if (v2)
  {
    v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0))(v4);
    if (v6)
    {
      v7 = v6;
      if (*(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_needsConfigurationWhenMovesToParent) == 1)
      {
        sub_1E41FE5C4();
        OUTLINED_FUNCTION_74();
        sub_1E400CEDC();

        v8 = OUTLINED_FUNCTION_13_8();
        v9(v8);
      }

      else
      {
      }
    }
  }

  else
  {
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x260))(v4))
    {
      (*((*v5 & *v1) + 0x268))(0);
      return;
    }

    v10 = *((*v5 & *v1) + 0x1B0);
    v11 = v10();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 vuiView];

      if (!v13)
      {
        __break(1u);
        return;
      }

      [v13 vui_removeFromSuperView];
    }

    OUTLINED_FUNCTION_21();
    (*(v14 + 1144))(0);
    OUTLINED_FUNCTION_26_3();
    v16 = (*((*v5 & v15) + 0x480))(0);
    v17 = (v10)(v16);
    [v17 vui:0 willMoveToParentViewController:?];

    v18 = v10();
    [v18 vui_removeFromParentViewController];

    OUTLINED_FUNCTION_26_3();
    (*((*v5 & v19) + 0x488))(0);
    v20 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController;
    OUTLINED_FUNCTION_3_0();
    v21 = *(v1 + v20);
    *(v1 + v20) = 0;
  }
}

void sub_1E400CEDC()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v110 = v3;
  v105 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v109 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v104 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v108 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v102[-v12];
  v14 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v107 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v102[-v21];
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v24 = [v0 vuiParentViewController];
  if (!v24)
  {
    v24 = [v0 vuiPresentingViewController];
    if (!v24)
    {
      *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning) = 0;
      *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_needsConfigurationWhenMovesToParent) = 1;
      goto LABEL_45;
    }
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_needsConfigurationWhenMovesToParent) = 0;
  v106 = [v110 vuiView];
  if (!v106)
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning) = 0;
LABEL_45:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  sub_1E41FE5C4();
  sub_1E41FE4F4();
  v26 = v25;
  v27 = OUTLINED_FUNCTION_57();
  v28(v27);
  v29 = v26 < 0.25;
  v30 = [v0 vuiNavigationController];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 viewControllers];

    sub_1E3280A90(0, &qword_1EE23B250);
    OUTLINED_FUNCTION_20_2();
    v33 = sub_1E42062B4();

    sub_1E32AE9B0(v33);
    OUTLINED_FUNCTION_50();

    v29 = v26 < 0.25 && v32 > 1;
  }

  v35 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_27_29();
  if ((*(v36 + 528))())
  {
    v103 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_27_29();
    v103 = ((*(v37 + 504))() ^ 1) & v29;
  }

  v38 = v110;
  [v2 vui:v110 addChildViewController:?];
  [v38 vui:1 beginAppearanceTransition:1 animated:?];
  v39 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_pendingDeeplinkURL;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E379539C(v2 + v39, v13, &unk_1ECF363C0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1E325F748(v13, &unk_1ECF363C0);
  }

  else
  {
    v40 = v107;
    v41 = OUTLINED_FUNCTION_53();
    v42(v41);
    (*((*v35 & *v2) + 0x498))(v22);
    (*(v40 + 8))(v22, v14);
    v43 = v108;
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v14);
    OUTLINED_FUNCTION_11_3();
    sub_1E38DAEEC(v43, v2 + v39);
    swift_endAccess();
  }

  v47 = v109;
  sub_1E379539C(v2 + v39, v1, &unk_1ECF363C0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v14) == 1)
  {
    sub_1E325F748(v1, &unk_1ECF363C0);
  }

  else
  {
    v48 = v107;
    (*(v107 + 32))(v19, v1, v14);
    (*((*v35 & *v2) + 0x498))(v19);
    (*(v48 + 8))(v19, v14);
    v49 = v108;
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v14);
    OUTLINED_FUNCTION_11_3();
    sub_1E38DAEEC(v49, v2 + v39);
    swift_endAccess();
  }

  v53 = v106;
  v54 = &selRef_textLayout;
  v55 = v110;
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v55))
  {
    v57 = v56;
    swift_getObjectType();
    v58 = *(v57 + 16);
    v59 = v55;
    v60 = OUTLINED_FUNCTION_13_8();
    v61 = v58(v60);
    v35 = MEMORY[0x1E69E7D40];
    v47 = v109;
    v62 = v61;
    [v2 vui:v61 setContentScrollView:15 forEdge:?];
  }

  v63 = [v2 vuiTabBarController];
  if (v63)
  {

    [v53 setVuiClipsToBounds_];
    v64 = [v53 vuiSubviews];
    sub_1E3280A90(0, &qword_1EE23AE80);
    OUTLINED_FUNCTION_20_2();
    v65 = sub_1E42062B4();

    if (sub_1E32AE9B0(v65))
    {
      if ((v65 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](0, v65);
      }

      else
      {
        if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_48;
        }

        v66 = *(v65 + 32);
      }

      OUTLINED_FUNCTION_50();

      [v64 setVuiClipsToBounds_];
    }

    else
    {
    }
  }

  *(v2 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning) = 0;
  v67 = [v2 vuiView];
  if (!v67)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v68 = v67;
  v69 = [v67 window];

  if (!v69 || (v69, (v103 & 1) != 0))
  {
    if (*(v2 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager))
    {
      OUTLINED_FUNCTION_8();
      (*(v70 + 240))();
    }

    v71 = [v2 vuiView];
    if (v71)
    {
      v72 = v71;
      [v71 vui:v53 addSubview:0 oldView:?];

      (*((*v35 & *v2) + 0x480))(v55);
      sub_1E4013378();

      goto LABEL_45;
    }

    goto LABEL_49;
  }

  v73 = sub_1E324FBDC();
  v74 = v104;
  v75 = v105;
  (*(v47 + 16))(v104, v73, v105);
  v76 = v2;
  v77 = sub_1E41FFC94();
  v78 = sub_1E4206814();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = v47;
    v80 = OUTLINED_FUNCTION_6_21();
    v111 = OUTLINED_FUNCTION_100();
    *v80 = 136315138;
    v81 = DocumentViewController.logPrefix.getter();
    v83 = OUTLINED_FUNCTION_89_18(v81, v82);

    *(v80 + 4) = v83;
    OUTLINED_FUNCTION_126_9();
    _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
    OUTLINED_FUNCTION_5_175();
    OUTLINED_FUNCTION_65_0();

    (*(v79 + 8))(v104, v105);
    v54 = &selRef_textLayout;
  }

  else
  {

    (*(v47 + 8))(v74, v75);
  }

  [v53 setVuiAlpha_];
  if (*(v76 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager))
  {
    OUTLINED_FUNCTION_8();
    (*(v89 + 240))();
  }

  v90 = [v76 v54[439]];
  if (v90)
  {
    v91 = v90;
    [v90 vui:v53 addSubview:0 oldView:?];

    v92 = objc_opt_self();
    OUTLINED_FUNCTION_4_0();
    v93 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_5_10();
    v94 = swift_allocObject();
    v94[2] = v53;
    v94[3] = v93;
    v94[4] = v55;
    v115 = sub_1E4016FD4;
    v116 = v94;
    v111 = MEMORY[0x1E69E9820];
    v112 = 1107296256;
    v113 = sub_1E378AEA4;
    v114 = &block_descriptor_85_1;
    v95 = _Block_copy(&v111);
    v96 = v55;
    v97 = v53;

    OUTLINED_FUNCTION_2_4();
    v98 = swift_allocObject();
    *(v98 + 16) = v76;
    *(v98 + 24) = v96;
    v115 = sub_1E4017074;
    v116 = v98;
    v111 = MEMORY[0x1E69E9820];
    v112 = 1107296256;
    v113 = sub_1E37EB82C;
    v114 = &block_descriptor_91_0;
    v99 = _Block_copy(&v111);
    v100 = v96;
    v101 = v76;

    [v92 animateWithDuration:6 delay:v95 options:v99 animations:0.5 completion:0.0];

    _Block_release(v99);
    _Block_release(v95);
    goto LABEL_45;
  }

LABEL_50:
  __break(1u);
}

id DocumentViewController.preferredStatusBarStyle.getter()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 preferredStatusBarStyle];

    return v4;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for DocumentViewController();
    return objc_msgSendSuper2(&v6, sel_preferredStatusBarStyle);
  }
}

uint64_t DocumentViewController.preferredFocusEnvironments.getter()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 parentViewController];
    if (v4)
    {

      if ((v0[OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning] & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        OUTLINED_FUNCTION_5_10();
        result = swift_allocObject();
        *(result + 16) = xmmword_1E4298880;
        *(result + 32) = v3;
        return result;
      }
    }
  }

  v5 = [v0 childViewControllers];
  sub_1E3280A90(0, &qword_1EE23B250);
  OUTLINED_FUNCTION_20_2();
  v6 = sub_1E42062B4();

  result = sub_1E32AE9B0(v6);
  if (result)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v6);
      goto LABEL_9;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v6 + 32);
LABEL_9:
      OUTLINED_FUNCTION_50();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      OUTLINED_FUNCTION_5_10();
      result = swift_allocObject();
      *(result + 16) = xmmword_1E4298880;
      *(result + 32) = v5;
      return result;
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

id DocumentViewController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 childViewControllers];
  sub_1E3280A90(0, &qword_1EE23B250);
  OUTLINED_FUNCTION_19_3();
  v2 = sub_1E42062B4();

  v3 = sub_1E37CB21C(v2);

  if (v3)
  {
    v4 = [v3 supportedInterfaceOrientations];

    return v4;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for DocumentViewController();
    return objc_msgSendSuper2(&v6, sel_supportedInterfaceOrientations);
  }
}

void *sub_1E400DF14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    return 0;
  }

  if ((a4 >> 1) > a3)
  {
    v4 = *(a2 + 8 * (a4 >> 1) - 8);
    v5 = v4;
    return v4;
  }

  __break(1u);
  return result;
}

id sub_1E400E014()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 432))();
  OUTLINED_FUNCTION_134_8();
  v4 = [v2 v3];

  return v4;
}

Swift::Void __swiftcall DocumentViewController.recordDocumentAppear()()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 752))();
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v3 = v2[7];

    if (v3)
    {
      OUTLINED_FUNCTION_8();
      (*(v4 + 576))();
      OUTLINED_FUNCTION_12_1();

      (*(*v2 + 296))(v5);
    }
  }
}

Swift::Void __swiftcall DocumentViewController.recordImpressions()()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_26_3();
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + 0x1B0);
  if (!v4() || (sub_1E3280A90(0, &qword_1EE23B250), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C260), (OUTLINED_FUNCTION_60_36() & 1) == 0))
  {
    OUTLINED_FUNCTION_12_97();
    goto LABEL_6;
  }

  if (!v55)
  {
LABEL_6:
    v7 = sub_1E325F748(v54, &qword_1ECF3C268);
    if (v4)(v7) && (sub_1E3280A90(0, &qword_1EE23B250), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E3E0), (OUTLINED_FUNCTION_60_36()))
    {
      if (v55)
      {
        OUTLINED_FUNCTION_74_22();
        v8 = OUTLINED_FUNCTION_16_5();
        v9(v8);
        v10 = v55;
        if (!v55)
        {
          sub_1E325F748(v54, &qword_1ECF2C970);
          goto LABEL_19;
        }

        goto LABEL_10;
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_97();
    }

    v13 = sub_1E325F748(v54, &unk_1ECF3E3D0);
    if (v4)(v13) && (sub_1E3280A90(0, &qword_1EE23B250), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C270), (OUTLINED_FUNCTION_60_36()))
    {
      if (v55)
      {
        OUTLINED_FUNCTION_74_22();
        v14 = OUTLINED_FUNCTION_16_5();
        v10 = v15(v14);
        goto LABEL_19;
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_97();
    }

    v16 = sub_1E325F748(v54, &qword_1ECF3C278);
    v10 = 0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_74_22();
  v5 = OUTLINED_FUNCTION_16_5();
  v6(v5);
LABEL_10:
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v11 = OUTLINED_FUNCTION_16_5();
  v10 = v12(v11);
  __swift_destroy_boxed_opaque_existential_1(v54);
LABEL_19:
  v16 = __swift_destroy_boxed_opaque_existential_1(&v56);
LABEL_20:
  v17 = (v4)(v16);
  if (v17)
  {
    v18 = v17;
    type metadata accessor for PostPlayTemplateController();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_16_5();

      OUTLINED_FUNCTION_21();
      (*(v19 + 480))(v20);

      goto LABEL_37;
    }
  }

  if (!v10)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_27_29();
  v22 = *(v21 + 752);

  v24 = (v22)(v23);
  if (!v24 || (v25 = v24, OUTLINED_FUNCTION_25(), swift_beginAccess(), v26 = v25[7], , , !v26))
  {

LABEL_32:
    OUTLINED_FUNCTION_27_29();
    v36 = (*(v34 + 752))(v35);
    if (v36)
    {
      v37 = v36;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v38 = *(v37 + 56);

      if (v38)
      {

        sub_1E3905190();
        if (sub_1E4205E84())
        {
          type metadata accessor for SearchTemplateController();
          OUTLINED_FUNCTION_16_5();
          sub_1E394BA38();
        }
      }
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_8();
  (*(v27 + 576))(v28);
  OUTLINED_FUNCTION_6_19();

  if (*(v10 + 16))
  {
    v29 = [objc_opt_self() sharedInstance];
    [v29 setShouldFlushMetrics_];

    v31 = (v22)(v30);
    if (v31)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v32 = *(v31 + 56);

      if (v32)
      {
        type metadata accessor for Metrics();
        v33 = OUTLINED_FUNCTION_38();
        v31 = sub_1E3BA7F00(v33);
      }

      else
      {
        v31 = 0;
      }
    }

    (*(*v25 + 288))(0, v10, 0, v31);

LABEL_36:

    goto LABEL_37;
  }

  v40 = (v22)(v39);
  if (!v40 || (OUTLINED_FUNCTION_35_10(v40), OUTLINED_FUNCTION_25(), swift_beginAccess(), v41 = *(v1 + 56), , , !v41) || (v43 = *(v41 + 16), v42 = *(v41 + 24), , , !v42))
  {

    v43 = 0;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v44 = OUTLINED_FUNCTION_33_14();
  v45(v44);

  v46 = sub_1E41FFC94();
  v47 = sub_1E4206814();

  if (os_log_type_enabled(v46, v47))
  {
    OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_26_8();
    *v22 = 136315138;
    v48 = OUTLINED_FUNCTION_53();
    sub_1E3270FC8(v48, v49, v50);
    OUTLINED_FUNCTION_104_17();

    *(v22 + 4) = v43;
    OUTLINED_FUNCTION_42_52(&dword_1E323F000, v51, v47, "Metrics:: no impressions returned for %s");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();
  }

  else
  {
  }

  v52 = OUTLINED_FUNCTION_13_8();
  v53(v52);
LABEL_37:
  OUTLINED_FUNCTION_25_2();
}

id DocumentViewController.__allocating_init(documentModel:loadingManager:)()
{
  OUTLINED_FUNCTION_156();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_13_8();
  return sub_1E400E9A0();
}

id sub_1E400E9A0()
{
  OUTLINED_FUNCTION_156();
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearAfterTabSwitch) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_reportImpressionsInViewWillDisappear) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_hasViewAppeared) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_deferLoadingTemplateController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_alwaysShowTemplateWithAnimation) = 0;
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_bubbletipOverlayController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_ignoreDidMoveToNilParent) = 0;
  v7 = (v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_rebaseIdentifier);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isInTabBarMode) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTabBarChild) = 2;
  v8 = (v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_documentDidSetHandler);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_document;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_document) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_isTransitioning) = 0;
  v10 = v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarPrefersLargeTitles) = 2;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitleView) = 0;
  v11 = (v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitle);
  *v11 = 0;
  v11[1] = 0;
  v12 = v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarCachedWidth;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_needsConfigurationWhenMovesToParent) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_viewWillAppearButNotDidAppear) = 0;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v9) = v2;
  *(v1 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager) = v0;
  type metadata accessor for DocumentViewController();
  OUTLINED_FUNCTION_25();
  return objc_msgSendSuper2(v13, v14);
}

void DocumentViewController.replace(_:)()
{
  OUTLINED_FUNCTION_31_1();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);

  DocumentViewController.document.setter(v8);
  if ([v0 vuiIsViewLoaded])
  {
    OUTLINED_FUNCTION_12_161();
    if ((*(v9 + 528))())
    {
      if (v0[OBJC_IVAR____TtC8VideosUI22DocumentViewController_hasViewAppeared] == 1)
      {
        OUTLINED_FUNCTION_12_161();
        (*(v10 + 1040))();
      }

      sub_1E400C120();
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v11 = OUTLINED_FUNCTION_33_14();
    v12(v11);
    v13 = v0;
    v14 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_34_9())
    {
      v15 = OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_100();
      *v15 = 136315138;
      v16 = DocumentViewController.logPrefix.getter();
      OUTLINED_FUNCTION_58_0(v16, v17);
      OUTLINED_FUNCTION_34_3();
      *(v15 + 4) = v2;
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v18, v19, "%s replace document: Remove existing template and update template");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    v20 = OUTLINED_FUNCTION_13_8();
    v21(v20);
    sub_1E400EE24();
    sub_1E40070C0();
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v22(v1);
    v23 = v0;
    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_100();
      *v26 = 136315138;
      v27 = DocumentViewController.logPrefix.getter();
      v29 = OUTLINED_FUNCTION_58_0(v27, v28);

      *(v26 + 4) = v29;
      OUTLINED_FUNCTION_126_0(&dword_1E323F000, v24, v25, "%s replace document: view hasn't loaded yet, ignore");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v5 + 8))(v1, v3);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E400EE24()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v4(v1);
  v5 = v0;
  v6 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_34_9())
  {
    v7 = OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_100();
    *v7 = 136315138;
    v8 = DocumentViewController.logPrefix.getter();
    OUTLINED_FUNCTION_49_1(v8, v9);
    OUTLINED_FUNCTION_34_3();
    *(v7 + 4) = v2;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v10, v11, "%s removeExistingTemplate");
    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_55();
  }

  v12 = OUTLINED_FUNCTION_74();
  v13(v12);
  OUTLINED_FUNCTION_12_5();
  v14 += 54;
  v15 = *v14;
  v16 = (*v14)();
  if (v16)
  {
    v17 = v16;
    [v16 vui:0 willMoveToParentViewController:?];
  }

  v18 = v15();
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  v20 = [v18 vuiView];

  if (v20)
  {
    [v20 vui_removeFromSuperView];

LABEL_8:
    v21 = v15();
    [v21 vui_removeFromParentViewController];

    v22 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_templateViewController;
    OUTLINED_FUNCTION_3_0();
    v23 = *&v5[v22];
    *&v5[v22] = 0;

    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void DocumentViewController.replaceInteractive(_:animated:reloadData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v186 = v27;
  v190 = v28;
  v29 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v177 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v177 - v43;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v187 = v45;
  v191 = v29;
  v189 = v46;
  v188 = v47;
  v47(v44);
  v48 = v20;
  v49 = sub_1E41FFC94();
  v50 = sub_1E4206814();

  v51 = os_log_type_enabled(v49, v50);
  v192 = v31;
  v183 = v41;
  v182 = v21;
  if (v51)
  {
    swift_slowAlloc();
    v52 = v22;
    v53 = OUTLINED_FUNCTION_16_2();
    v197[0] = v53;
    *v31 = 136315650;
    v54 = v48;
    v55 = DocumentViewController.logPrefix.getter();
    OUTLINED_FUNCTION_89_18(v55, v56);
    OUTLINED_FUNCTION_12_1();

    *(v31 + 4) = v26;
    v57 = v186;
    *(v31 + 12) = 1024;
    *(v31 + 14) = v57 & 1;
    *(v31 + 18) = 1024;
    *(v31 + 20) = v26 & 1;
    _os_log_impl(&dword_1E323F000, v49, v50, "%s replaceInteractive: animated: %{BOOL}d, reloadData: %{BOOL}d", v31, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v53);
    v22 = v52;
    OUTLINED_FUNCTION_6_0();
    v31 = v192;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v54 = v48;
  }

  v58 = *(v31 + 8);
  v59 = v44;
  v60 = v191;
  v58(v59, v191);
  v61 = v190;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v62 = *(v61 + 56);
  if (!v62)
  {
    OUTLINED_FUNCTION_2_240();
    v109();
    v110 = v54;
    v111 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_85_5())
    {
      OUTLINED_FUNCTION_6_21();
      v112 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_130_15(v112);
      *v31 = 136315138;
      v113 = DocumentViewController.logPrefix.getter();
      OUTLINED_FUNCTION_89_18(v113, v114);
      OUTLINED_FUNCTION_6_19();

      *(v31 + 4) = v110;
      OUTLINED_FUNCTION_18_134();
      _os_log_impl(v115, v116, v117, v118, v119, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_7_9();

      v120 = v22;
      v121 = v60;
LABEL_26:
      v58(v120, v121);
LABEL_27:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    goto LABEL_24;
  }

  v179 = v26;
  v63 = MEMORY[0x1E69E7D40];
  v64 = *((*MEMORY[0x1E69E7D40] & *v54) + 0x2F0);
  v65 = (*MEMORY[0x1E69E7D40] & *v54) + 752;

  v67 = v64(v66);
  if (!v67 || (OUTLINED_FUNCTION_35_10(v67), OUTLINED_FUNCTION_25(), swift_beginAccess(), v65 = v54[7], , , !v65))
  {
    v98 = v185;
    OUTLINED_FUNCTION_2_240();
    v99();
    v100 = v54;
    v101 = sub_1E41FFC94();
    sub_1E4206814();

    if (!OUTLINED_FUNCTION_85_5())
    {

      OUTLINED_FUNCTION_67_27();
      v120 = v98;
LABEL_25:
      v121 = v60;
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_6_21();
    v22 = v98;
    v197[0] = OUTLINED_FUNCTION_16_2();
    v102 = OUTLINED_FUNCTION_119_9(4.8149e-34);
    OUTLINED_FUNCTION_89_18(v102, v103);
    OUTLINED_FUNCTION_122();

    *(v65 + 4) = v100;
    OUTLINED_FUNCTION_18_134();
    _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
    OUTLINED_FUNCTION_5_175();
    OUTLINED_FUNCTION_7_9();

    goto LABEL_19;
  }

  v68 = v54;
  v69 = v60;
  v70 = OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType;
  v71 = v62;
  if ((sub_1E39E3C28() & 1) == 0)
  {
    OUTLINED_FUNCTION_21_114(&a13);
    OUTLINED_FUNCTION_5_227();
    v122();
    v123 = v54;

    v124 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_85_5())
    {
      v125 = OUTLINED_FUNCTION_100();
      v126 = v65;
      v178 = v65;
      v127 = v125;
      v190 = swift_slowAlloc();
      v197[0] = v190;
      *v127 = 136315650;
      v128 = DocumentViewController.logPrefix.getter();
      OUTLINED_FUNCTION_89_18(v128, v129);
      OUTLINED_FUNCTION_6_19();

      *(v127 + 4) = v123;
      *(v127 + 12) = 2080;
      LOBYTE(v194) = *(v126 + v70);
      v130 = sub_1E3A7E090();
      v131 = sub_1E4207944();
      v133 = OUTLINED_FUNCTION_89_18(v131, v132);

      *(v127 + 14) = v133;
      *(v127 + 22) = 2080;
      LOBYTE(v194) = v71[v70];
      v134 = sub_1E4207944();
      OUTLINED_FUNCTION_89_18(v134, v135);
      OUTLINED_FUNCTION_6_19();

      *(v127 + 24) = v130;
      OUTLINED_FUNCTION_18_134();
      _os_log_impl(v136, v137, v138, v139, v140, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_151_3();

      OUTLINED_FUNCTION_67_27();
      v120 = v184;
    }

    else
    {

      OUTLINED_FUNCTION_67_27();
      v120 = v54;
    }

    v121 = v191;
    goto LABEL_26;
  }

  v178 = v65;
  v185 = v62;
  v72 = (*v63 & *v54) + 432;
  v73 = *((*v63 & *v54) + 0x1B0);
  v74 = v72;
  v75 = v73();
  if (!v75)
  {
    OUTLINED_FUNCTION_21_114(&a12);
    v60 = v69;
    OUTLINED_FUNCTION_5_227();
    v141();
    v142 = v54;
    v143 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_85_5())
    {
      OUTLINED_FUNCTION_6_21();
      v197[0] = OUTLINED_FUNCTION_16_2();
      v144 = OUTLINED_FUNCTION_119_9(4.8149e-34);
      OUTLINED_FUNCTION_89_18(v144, v145);
      OUTLINED_FUNCTION_122();

      *(v74 + 4) = v142;
      OUTLINED_FUNCTION_18_134();
      _os_log_impl(v146, v147, v148, v149, v150, 0xCu);
      OUTLINED_FUNCTION_5_175();
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_151_3();
      OUTLINED_FUNCTION_112_16();
    }

    else
    {

      OUTLINED_FUNCTION_151_3();
      OUTLINED_FUNCTION_112_16();
    }

LABEL_44:
    OUTLINED_FUNCTION_67_27();
    v120 = v54;
    goto LABEL_25;
  }

  v76 = v75;
  v60 = v69;
  if (![v75 vuiIsViewLoaded])
  {
    v22 = v182;
    OUTLINED_FUNCTION_2_240();
    v151();
    v152 = v54;
    v153 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_85_5())
    {
      OUTLINED_FUNCTION_6_21();
      v154 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_130_15(v154);
      v155 = OUTLINED_FUNCTION_119_9(4.8149e-34);
      OUTLINED_FUNCTION_89_18(v155, v156);
      OUTLINED_FUNCTION_122();

      *(v74 + 4) = v152;
      OUTLINED_FUNCTION_18_134();
      _os_log_impl(v157, v158, v159, v160, v161, 0xCu);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_151_3();
      OUTLINED_FUNCTION_112_16();

      OUTLINED_FUNCTION_67_27();
      v120 = v22;
      v121 = v69;
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_112_16();

LABEL_19:
    OUTLINED_FUNCTION_67_27();
LABEL_24:
    v120 = v22;
    goto LABEL_25;
  }

  v77 = [v76 vuiView];
  if (v77)
  {
    v78 = v77;
    v79 = [v77 superview];

    v80 = v183;
    if (v79)
    {

      v81 = v73();
      if (v81 && (v193 = v81, sub_1E3280A90(0, &qword_1EE23B250), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E400), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v195 + 1))
        {
          sub_1E3251BE8(&v194, v197);
          OUTLINED_FUNCTION_2_240();
          v82();
          v83 = v54;
          v84 = sub_1E41FFC94();
          v85 = sub_1E4206814();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = v80;
            v87 = OUTLINED_FUNCTION_6_21();
            *&v194 = OUTLINED_FUNCTION_100();
            *v87 = 136315138;
            v88 = DocumentViewController.logPrefix.getter();
            v90 = sub_1E3270FC8(v88, v89, &v194);

            *(v87 + 4) = v90;
            OUTLINED_FUNCTION_126_9();
            _os_log_impl(v91, v92, v93, v94, v95, 0xCu);
            OUTLINED_FUNCTION_24_18();
            OUTLINED_FUNCTION_65_0();

            v96 = v191;
            v97 = v86;
          }

          else
          {

            OUTLINED_FUNCTION_67_27();
            v97 = v80;
            v96 = v60;
          }

          v58(v97, v96);

          DocumentViewController.document.setter(v174);
          v175 = v198;
          v176 = v199;
          __swift_project_boxed_opaque_existential_1(v197, v198);
          (*(v176 + 8))(v185, v186 & 1, v179 & 1, v175, v176);

          OUTLINED_FUNCTION_151_3();

          __swift_destroy_boxed_opaque_existential_1(v197);
          goto LABEL_27;
        }
      }

      else
      {
        v196 = 0;
        v194 = 0u;
        v195 = 0u;
      }

      sub_1E325F748(&v194, &qword_1ECF2D948);
      v54 = v181;
      OUTLINED_FUNCTION_2_240();
      v162();
      v163 = v68;
      v164 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_85_5())
      {
        goto LABEL_42;
      }
    }

    else
    {
      v54 = v180;
      OUTLINED_FUNCTION_2_240();
      v165();
      v163 = v68;
      v164 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_85_5())
      {
LABEL_42:
        OUTLINED_FUNCTION_6_21();
        v166 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_130_15(v166);
        v167 = OUTLINED_FUNCTION_119_9(4.8149e-34);
        OUTLINED_FUNCTION_89_18(v167, v168);
        OUTLINED_FUNCTION_122();

        *(v74 + 4) = v163;
        OUTLINED_FUNCTION_18_134();
        _os_log_impl(v169, v170, v171, v172, v173, 0xCu);
        OUTLINED_FUNCTION_24_18();
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_151_3();
        OUTLINED_FUNCTION_112_16();

        OUTLINED_FUNCTION_67_27();
        v120 = v54;
        v121 = v60;
        goto LABEL_26;
      }
    }

    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_112_16();

    goto LABEL_44;
  }

  __break(1u);
}

void DocumentViewController.showLoadingView(show:initialAlphaOfLoadingView:)()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v11 = sub_1E324FBDC();
  (*(v9 + 16))(v1, v11, v7);
  v12 = v0;
  v13 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_75_3())
  {
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_26_8();
    *v2 = 136315394;
    v14 = DocumentViewController.logPrefix.getter();
    OUTLINED_FUNCTION_49_1(v14, v15);
    OUTLINED_FUNCTION_94_1();

    *(v2 + 4) = v6;
    *(v2 + 12) = 1024;
    *(v2 + 14) = v6 & 1;
    OUTLINED_FUNCTION_50_52();
    _os_log_impl(v16, v17, v18, v19, v20, 0x12u);
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();

    (*(v9 + 8))(v1, v7);
  }

  else
  {

    v21 = OUTLINED_FUNCTION_53();
    v23(v21, v22);
  }

  OUTLINED_FUNCTION_12_5();
  v25 = (*(v24 + 1168))(0);
  if (v6)
  {
    sub_1E400EE24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E408);
    OUTLINED_FUNCTION_5_10();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1E4297BE0;
    *(v26 + 32) = v25;

    sub_1E383C8A8();
    v27 = sub_1E3F68814(v26);
    if (*&v12[OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager])
    {
      OUTLINED_FUNCTION_8();
      (*(v28 + 232))(v12, v27, v4);
    }
  }

  else if (*&v12[OBJC_IVAR____TtC8VideosUI22DocumentViewController_loadingViewManager])
  {
    OUTLINED_FUNCTION_8();
    (*(v29 + 240))();
  }

  OUTLINED_FUNCTION_54_0();
}

Swift::Void __swiftcall DocumentViewController.removeLoadingViewAndRestoreTemplate()()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v3();
  v4 = v0;
  v5 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_34_9())
  {
    v6 = OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_100();
    *v6 = 136315138;
    v7 = DocumentViewController.logPrefix.getter();
    OUTLINED_FUNCTION_58_0(v7, v8);
    OUTLINED_FUNCTION_34_3();
    *(v6 + 4) = v1;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v9, v10, "%s hide loading spinner when restoring template");
    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_55();
  }

  v11 = OUTLINED_FUNCTION_74();
  v12(v11);
  v13 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  (*(v14 + 1080))(0, 1.0);
  OUTLINED_FUNCTION_36_3();
  v16 = (*((*v13 & v15) + 0x1B0))();
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v16;
  [v4 vui:v16 addChildViewController:?];
  v18 = [v4 vuiView];
  if (v18)
  {
    v19 = v18;
    v20 = [v17 view];
    [v19 vui:v20 addSubview:0 oldView:?];

    [v17 vui:v4 didMoveToParentViewController:?];
LABEL_6:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall DocumentViewController.reconfigureNavigationBar()()
{
  sub_1E4010284();
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 432))();
  if (v1)
  {
    v3 = v1;
    type metadata accessor for StackTemplateController();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_64();
      (*(v2 + 2032))();
    }
  }
}

id sub_1E4010284()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1E41FE2C4();
  OUTLINED_FUNCTION_36_3();
  v2 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + 0x2F0);
  v5 = v4();
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v7 = *(v6 + 64);

    if (v7)
    {
      v9 = (*(*v7 + 488))(v8);
      if (v9)
      {
        v10 = v9;
        result = OUTLINED_FUNCTION_67_4();
        if (!result)
        {
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        OUTLINED_FUNCTION_106();
        type metadata accessor for LayoutGrid();
        [v7 bounds];
        OUTLINED_FUNCTION_3();

        v210.origin.x = OUTLINED_FUNCTION_6();
        Width = CGRectGetWidth(v210);
        v13 = sub_1E3A2579C(Width);
        v190 = *(*v7 + 392);
        v14 = (v190)(v13);
        if (v14)
        {
          v15 = v14;
          v16 = [v1 vuiTraitCollection];
          sub_1E3C2AE10();
          v18 = v17;
          (*(*v15 + 1640))();
        }

        v198 = v7;
        if (v190())
        {
          OUTLINED_FUNCTION_144_0();
          type metadata accessor for NavigationBarLayout();
          OUTLINED_FUNCTION_22_53();
          v19 = swift_dynamicCastClass();
          if (v19)
          {
            v20 = v19;
            result = OUTLINED_FUNCTION_67_4();
            if (!result)
            {
LABEL_171:
              __break(1u);
              return result;
            }

            v21 = result;
            [result bounds];
            OUTLINED_FUNCTION_3();

            v211.origin.x = OUTLINED_FUNCTION_6();
            v22 = CGRectGetWidth(v211);
            v23 = [v1 vuiTraitCollection];
            (*(*v20 + 1832))(v22);

            v7 = v198;
          }

          else
          {
          }
        }

        result = OUTLINED_FUNCTION_67_4();
        if (!result)
        {
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        v30 = result;
        [result bounds];
        OUTLINED_FUNCTION_3();

        v212.origin.x = OUTLINED_FUNCTION_6();
        v31 = CGRectGetWidth(v212);
        v32 = &v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarCachedWidth];
        *v32 = v31;
        *(v32 + 8) = 0;
        v33 = OUTLINED_FUNCTION_83_21();
        v192 = sub_1E40166A8(v33, &selRef_leftBarButtonItems);
        v34 = OUTLINED_FUNCTION_83_21();
        v197 = sub_1E40166A8(v34, &selRef_rightBarButtonItems);
        v35 = OUTLINED_FUNCTION_83_21();
        v36 = [v35 titleView];

        v199 = 0;
        v200 = v36;
        v191 = (*((*v2 & *v1) + 0x458))();
        v37 = OUTLINED_FUNCTION_83_21();
        v196 = [v37 _largeTitleAccessoryView];

        if (v7[3])
        {
          v38 = v7[2];
          v39 = v7[3];
        }

        else
        {
          v38 = 0;
          v39 = 0xE000000000000000;
        }

        strcpy(&aBlock, "barButtonItem");
        HIWORD(aBlock) = -4864;

        MEMORY[0x1E69109E0](v38, v39);

        v40 = sub_1E373E010(23, v10);
        if (v40)
        {
          if (*v40 == _TtC8VideosUI13TextViewModel)
          {
            OUTLINED_FUNCTION_18();
            v41 = sub_1E3C287F4(0);
            if (v41)
            {
              v42 = v41;
              v43 = [v41 string];

              v44 = sub_1E4205F14();
              v46 = v45;

              v2 = MEMORY[0x1E69E7D40];

              v193 = v46;
              v194 = v44;
              v199 = v46;
            }

            else
            {

              v193 = 0;
              v194 = 0;
              v199 = 0;
            }

LABEL_27:
            if (sub_1E373E010(39, v10))
            {
              type metadata accessor for ImageViewModel();
              v47 = swift_dynamicCastClass();
              if (v47 && ((v48 = v47, ![objc_opt_self() isMac]) || (sub_1E39DFFC8() & 1) != 0))
              {
                v49 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
                v50 = OUTLINED_FUNCTION_138_10(v49);
                v51 = v48;
                v52 = v50;
                sub_1E393D9C4(v51, v36, &aBlock, 0);
                OUTLINED_FUNCTION_16_5();

                v2 = MEMORY[0x1E69E7D40];
                sub_1E325F748(&aBlock, &qword_1ECF296C0);

                v200 = v52;
              }

              else
              {
              }
            }

            if (sub_1E373E010(101, v10))
            {
              OUTLINED_FUNCTION_26_0();
              if ((*(v53 + 464))())
              {
                OUTLINED_FUNCTION_134_8();
                sub_1E4013548(v54, v55, v56, v57);
                v59 = v58;

                v192 = v59;
              }

              else
              {
              }
            }

            if (sub_1E373E010(102, v10))
            {
              OUTLINED_FUNCTION_26_0();
              if ((*(v60 + 464))())
              {
                OUTLINED_FUNCTION_134_8();
                sub_1E4013548(v61, v62, v63, v64);
                OUTLINED_FUNCTION_38();

                v197 = v1;
              }

              else
              {
              }
            }

            v65 = sub_1E373E010(103, v10);

            v67 = v193;
            if (v65)
            {
              v68 = (*(*v65 + 464))(v66);
              LODWORD(v69) = v191;
              if (v68)
              {
                v70 = v68;
                result = sub_1E32AE9B0(v68);
                if (result)
                {
                  if ((v70 & 0xC000000000000001) != 0)
                  {
LABEL_167:
                    v71 = MEMORY[0x1E6911E60](0, v70);
                    goto LABEL_47;
                  }

                  if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v71 = *(v70 + 32);

LABEL_47:

                    v72 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
                    v73 = OUTLINED_FUNCTION_138_10(v72);
                    v74 = sub_1E393D9C4(v71, v196, &aBlock, 0);

                    sub_1E325F748(&aBlock, &qword_1ECF296C0);
                    v196 = v74;
                    goto LABEL_51;
                  }

                  __break(1u);
                  goto LABEL_169;
                }
              }

              else
              {
              }
            }

            else
            {
              LODWORD(v69) = v191;
            }

LABEL_51:
            v75 = OUTLINED_FUNCTION_83_21();
            v76 = v75;
            if (v67)
            {
              v75 = sub_1E4205ED4();
              v77 = v75;
            }

            else
            {
              v77 = 0;
            }

            OUTLINED_FUNCTION_19_36(v75, sel_setTitle_);

            OUTLINED_FUNCTION_36_3();
            v79 = (*((*v2 & v78) + 0x1B0))();
            if (v79)
            {
              v80 = v79;
              swift_getObjectType();
              if (dynamic_cast_existential_1_conditional(v80))
              {
                OUTLINED_FUNCTION_49_4();
                ObjectType = swift_getObjectType();
                if (v77[1](ObjectType, v77))
                {
                  if (([v1 vuiIsNavigationRoot] & 1) == 0)
                  {

                    LOBYTE(v82) = 1;
                    v83 = 1;
                    goto LABEL_64;
                  }

                  v82 = v77[2](ObjectType, v77);

                  v83 = v82;
                  if (((v82 | v69) & 1) == 0)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_64;
                }
              }
            }

            if ((v69 & 1) == 0)
            {
LABEL_63:
              LOBYTE(v82) = 0;
              v83 = [v1 vuiIsNavigationRoot] ^ 1;
              goto LABEL_64;
            }

            LOBYTE(v82) = 0;
            v83 = 0;
LABEL_64:
            if ((sub_1E39DFFC8() & 1) != 0 || (v83 & 1) == 0)
            {
              goto LABEL_81;
            }

            v84 = OUTLINED_FUNCTION_83_21();
            v85 = [v84 titleView];

            if (v85)
            {
              type metadata accessor for UberNavigationBarTitleView();
              v86 = swift_dynamicCastClass();
              if (v86)
              {
                goto LABEL_71;
              }
            }

            type metadata accessor for UberNavigationBarTitleView();
            v87 = sub_1E39DFFC8();

            v88 = sub_1E398BFB8(v1, (v87 & 1) == 0, v194, v67);
            if (!v88)
            {
              goto LABEL_81;
            }

            v86 = v88;
LABEL_71:
            OUTLINED_FUNCTION_25();
            swift_beginAccess();
            OUTLINED_FUNCTION_21();
            v90 = *(v89 + 208);
            v91 = v200;
            v90(v200);
            [v1 vuiIsNavigationRoot];
            OUTLINED_FUNCTION_26_3();
            (*((*v2 & v92) + 0x160))();
            OUTLINED_FUNCTION_3_0();
            v93 = v200;
            v200 = v86;

            v94 = v86;
            v95 = OUTLINED_FUNCTION_83_21();
            OUTLINED_FUNCTION_25();
            swift_beginAccess();
            if (v199)
            {

              v96 = sub_1E4205ED4();
            }

            else
            {
              v96 = 0;
            }

            [v95 setBackButtonTitle_];

            v67 = v193;
            LOBYTE(v69) = v191;
            if (v82)
            {
              v97 = [v1 transitionCoordinator];
              if (v97)
              {
                v98 = v97;
                OUTLINED_FUNCTION_4_0();
                v99 = swift_allocObject();
                *(v99 + 16) = v94;
                v203 = sub_1E4016F7C;
                v204 = v99;
                *&aBlock = MEMORY[0x1E69E9820];
                *(&aBlock + 1) = 1107296256;
                OUTLINED_FUNCTION_41_66();
                *&v202 = v100;
                *(&v202 + 1) = &block_descriptor_78_1;
                v101 = _Block_copy(&aBlock);
                v102 = v94;

                [v98 animateAlongsideTransition:0 completion:v101];
                _Block_release(v101);
                swift_unknownObjectRelease();
              }

              else
              {
                OUTLINED_FUNCTION_21();
                (*(v103 + 480))();
              }
            }

LABEL_81:
            v104 = OUTLINED_FUNCTION_83_21();
            OUTLINED_FUNCTION_25();
            swift_beginAccess();
            LOBYTE(v191) = v200;
            [v104 setTitleView_];

            v105 = OUTLINED_FUNCTION_83_21();
            v106 = v105;
            if (v192)
            {
              sub_1E3280A90(0, qword_1EE23B2E0);
              v107 = sub_1E42062A4();
            }

            else
            {
              v107 = 0;
            }

            v108 = v197;
            OUTLINED_FUNCTION_19_36(v105, sel_setLeftBarButtonItems_);

            v109 = OUTLINED_FUNCTION_83_21();
            v110 = v109;
            if (v197)
            {
              sub_1E3280A90(0, qword_1EE23B2E0);
              v109 = sub_1E42062A4();
              v111 = v109;
            }

            else
            {
              v111 = 0;
            }

            OUTLINED_FUNCTION_19_36(v109, sel_setRightBarButtonItems_);

            if (v69)
            {
              v112 = OUTLINED_FUNCTION_83_21();
              [v112 setLargeTitleDisplayMode_];
            }

            v113 = OUTLINED_FUNCTION_83_21();
            if (v69)
            {
              OUTLINED_FUNCTION_12_5();
              v115 = (*(v114 + 1192))();
            }

            else
            {
              v115 = 2;
            }

            [v113 setLargeTitleDisplayMode_];

            v116 = OUTLINED_FUNCTION_83_21();
            [v116 _setSupportsTwoLineLargeTitles_];

            v117 = OUTLINED_FUNCTION_83_21();
            [v117 _setLargeTitleAccessoryView_];

            if (v67)
            {
              v118 = HIBYTE(v67) & 0xF;
              if ((v67 & 0x2000000000000000) == 0)
              {
                v118 = v194 & 0xFFFFFFFFFFFFLL;
              }

              if (v118)
              {
                sub_1E3280A90(0, &qword_1EE23B1B0);

                v119 = sub_1E3763FC8();
                v120 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
                [v120 setLineBreakMode_];
                v121 = type metadata accessor for LanguageAwareString();
                v122 = v119;
                v195 = v120;
                v123 = sub_1E3D36A44();
                v124 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v122, v120, v123 & 1);
                OUTLINED_FUNCTION_64();
                v126 = (*(v125 + 232))();
                v127 = *MEMORY[0x1E69DB688];
                v128 = [v126 attribute:*MEMORY[0x1E69DB688] atIndex:0 effectiveRange:0];

                if (v128)
                {
                  sub_1E4207264();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v208 = 0u;
                  v209 = 0u;
                }

                aBlock = v208;
                v202 = v209;
                v129 = OUTLINED_FUNCTION_110_13();
                if (v129 && (v126 = OUTLINED_FUNCTION_152_8(v129), v128, (v130 = sub_1E4016610(v126, &selRef_titleTextAttributes)) != 0))
                {
                  v131 = v130;
                }

                else
                {
                  type metadata accessor for Key(0);
                  v131 = v132;
                  OUTLINED_FUNCTION_0_319();
                  sub_1E40172E0(v133, v134);
                  sub_1E4205CB4();
                  OUTLINED_FUNCTION_106();
                }

                sub_1E379539C(&aBlock, &v208, &unk_1ECF296E0);
                if (*(&v209 + 1))
                {
                  sub_1E329504C(&v208, &v206);
                  v135 = v127;
                  OUTLINED_FUNCTION_112();
                  swift_isUniquelyReferenced_nonNull_native();
                  v205 = v131;
                  sub_1E4016360(&v206, v126);
                }

                else
                {
                  v136 = v127;
                  sub_1E325F748(&v208, &unk_1ECF296E0);
                  sub_1E37C375C(v136);
                  if (v137)
                  {
                    OUTLINED_FUNCTION_112();
                    swift_isUniquelyReferenced_nonNull_native();
                    v205 = v131;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E4D8);
                    sub_1E4207644();
                    v138 = v205;

                    sub_1E329504C((*(v138 + 56) + 32 * v136), &v206);
                    type metadata accessor for Key(0);
                    v121 = v139;
                    OUTLINED_FUNCTION_0_319();
                    sub_1E40172E0(v140, v141);
                    sub_1E4207664();
                  }

                  else
                  {
                    v206 = 0u;
                    v207 = 0u;
                  }

                  sub_1E325F748(&v206, &unk_1ECF296E0);
                }

                v142 = OUTLINED_FUNCTION_110_13();
                if (v142)
                {
                  v143 = v142;
                  v121 = [v142 navigationBar];

                  type metadata accessor for Key(0);
                  OUTLINED_FUNCTION_0_319();
                  sub_1E40172E0(v144, v145);
                  v146 = sub_1E4205C44();
                  [v121 setTitleTextAttributes_];
                }

                v147 = OUTLINED_FUNCTION_110_13();
                if (v147 && (v148 = v147, v121 = [v147 navigationBar], v148, (v149 = sub_1E4016610(v121, &selRef_largeTitleTextAttributes)) != 0))
                {
                  v150 = v149;
                }

                else
                {
                  type metadata accessor for Key(0);
                  v150 = v151;
                  OUTLINED_FUNCTION_0_319();
                  sub_1E40172E0(v152, v153);
                  sub_1E4205CB4();
                  OUTLINED_FUNCTION_144_0();
                }

                sub_1E379539C(&aBlock, &v208, &unk_1ECF296E0);
                if (*(&v209 + 1))
                {
                  sub_1E329504C(&v208, &v206);
                  swift_isUniquelyReferenced_nonNull_native();
                  v205 = v150;
                  v154 = &v205;
                  sub_1E4016360(&v206, v127);

                  v150 = v205;
                  v108 = v197;
                }

                else
                {
                  sub_1E325F748(&v208, &unk_1ECF296E0);
                  v154 = v150;
                  sub_1E37C375C(v127);
                  if (v155)
                  {
                    OUTLINED_FUNCTION_104_17();
                    swift_isUniquelyReferenced_nonNull_native();
                    v205 = v150;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E4D8);
                    sub_1E4207644();
                    v150 = v205;

                    sub_1E329504C((*(v150 + 56) + 32 * v121), &v206);
                    type metadata accessor for Key(0);
                    v154 = v156;
                    OUTLINED_FUNCTION_0_319();
                    sub_1E40172E0(v157, v158);
                    OUTLINED_FUNCTION_53();
                    sub_1E4207664();
                  }

                  else
                  {
                    v206 = 0u;
                    v207 = 0u;
                  }

                  v108 = v197;

                  sub_1E325F748(&v206, &unk_1ECF296E0);
                }

                v159 = OUTLINED_FUNCTION_110_13();
                if (v159)
                {
                  v160 = OUTLINED_FUNCTION_152_8(v159);

                  sub_1E401654C(v150, v160);
                }

                else
                {
                }

                sub_1E325F748(&aBlock, &unk_1ECF296E0);
                v2 = MEMORY[0x1E69E7D40];
              }
            }

            sub_1E40088D4();
            v161 = OUTLINED_FUNCTION_110_13();
            if (v161)
            {
              v162 = v161;
              v163 = [v161 viewControllers];

              sub_1E3280A90(0, &qword_1EE23B250);
              v164 = sub_1E42062B4();

              v165 = sub_1E37CB21C(v164);

              if (v165)
              {
                v166 = [v165 vuiChildViewControllers];
                v167 = sub_1E42062B4();

                sub_1E37CB21C(v167);
                OUTLINED_FUNCTION_112();

                if (v165 == v1)
                {
                  goto LABEL_133;
                }

                if (v166)
                {
                  if (v166 != v1)
                  {

                    v168 = v200;
                    v169 = v166;
LABEL_140:
                    OUTLINED_FUNCTION_12_5();
                    v172 = *(v171 + 1128);

                    v172(v173);

                    *&v208 = v1;
                    swift_getKeyPath();
                    sub_1E41FE2D4();
                  }

LABEL_133:
                  v192 = v166;
                  v70 = v1;
                  sub_1E40D8DE0();
                  if (v170)
                  {
                    v70 = v1;
                    sub_1E40D8E58(1.0);
                  }

                  v194 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor;
                  if (!*&v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor])
                  {

                    if ((sub_1E39E01A4() & 1) == 0)
                    {
                      v174 = OUTLINED_FUNCTION_110_13();
                      if (v174)
                      {
                        v175 = OUTLINED_FUNCTION_152_8(v174);

                        [v175 setTintColor_];
                      }
                    }

                    goto LABEL_159;
                  }

                  if ((sub_1E39E01A4() & 1) == 0)
                  {
                    if (!v108)
                    {
                      goto LABEL_159;
                    }

                    v70 = sub_1E32AE9B0(v108);
                    v176 = 0;
                    v67 = v108 & 0xC000000000000001;
                    v69 = v108 & 0xFFFFFFFFFFFFFF8;
                    while (v70 != v176)
                    {
                      if (v67)
                      {
                        v177 = MEMORY[0x1E6911E60](v176, v108);
                      }

                      else
                      {
                        if (v176 >= *(v69 + 16))
                        {
                          goto LABEL_166;
                        }

                        v177 = *(v108 + 8 * v176 + 32);
                      }

                      v178 = v177;
                      if (__OFADD__(v176, 1))
                      {
                        __break(1u);
LABEL_166:
                        __break(1u);
                        goto LABEL_167;
                      }

                      v179 = [v177 customView];
                      if (v179)
                      {
                        v180 = v179;
                        objc_opt_self();
                        v181 = swift_dynamicCastObjCClass();
                        if (v181)
                        {
                          v182 = v181;
                          v183 = *&v1[v194];
                          [v182 setTintColor_];
                        }

                        else
                        {
                          v183 = v178;
                          v178 = v180;
                        }

                        v108 = v197;

                        v2 = MEMORY[0x1E69E7D40];
                      }

                      ++v176;
                    }
                  }

LABEL_159:
                  if (sub_1E39E01A4())
                  {
                    v168 = v200;
                    v169 = v192;
                  }

                  else
                  {
                    v184 = OUTLINED_FUNCTION_110_13();
                    v168 = v200;
                    v169 = v192;
                    if (v184)
                    {
                      v185 = OUTLINED_FUNCTION_152_8(v184);

                      if (v190())
                      {
                        OUTLINED_FUNCTION_26_0();
                        (*(v186 + 152))(&aBlock);
                      }

                      v187 = OUTLINED_FUNCTION_6();
                      [v188 v189];
                    }
                  }

                  goto LABEL_140;
                }
              }

              v169 = 0;
            }

            else
            {

              v169 = 0;
              v165 = 0;
            }

            v168 = v200;
            goto LABEL_140;
          }
        }

        v193 = 0;
        v194 = 0;
        goto LABEL_27;
      }
    }
  }

  v24 = OUTLINED_FUNCTION_83_21();
  [v24 setLargeTitleDisplayMode_];

  v25 = OUTLINED_FUNCTION_83_21();
  [v25 _setSupportsTwoLineLargeTitles_];

  v26 = v4();
  if (v26)
  {
    v27 = v26;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v28 = *(v27 + 64);
  }

  else
  {
    v28 = 0;
  }

  OUTLINED_FUNCTION_12_5();
  (*(v29 + 1128))(v28);

  *&v208 = v1;
  swift_getKeyPath();
  return sub_1E41FE2D4();
}